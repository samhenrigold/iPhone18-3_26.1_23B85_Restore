uint64_t FormatPrimitivePropertyDefinition.compilerFlags.getter(uint64_t a1)
{
  sub_1D6981050(a1);
}

void sub_1D6976EE8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D5B4BE9C(0, &qword_1EDF25CC0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v96 = &v74 - v9;
  v99 = type metadata accessor for FormatPropertyDefinition(0);
  v10 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v11);
  v95 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatInspectionItem(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v94 = &v74 - v20;
  sub_1D5B4BE9C(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, v2);
  v98 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v93 = &v74 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v92 = &v74 - v30;
  v101 = a1;
  sub_1D5B4BE9C(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
  sub_1D6984454();
  sub_1D5E2A690();
  v31 = sub_1D72623DC();
  sub_1D695A7A4(v31);

  sub_1D69844DC(0);
  v32 = sub_1D72626EC();

  v33 = *(v32 + 16);
  if (!v33)
  {
LABEL_54:

    return;
  }

  v101 = MEMORY[0x1E69E7CC0];
  sub_1D69993A8(0, v33, 0);
  v34 = 0;
  v75 = v32 + 32;
  v35 = v101;
  v89 = (v10 + 48);
  v90 = (v10 + 56);
  v87 = (v14 + 48);
  v88 = (v14 + 56);
  v86 = xmmword_1D72E27B0;
  v91 = v6;
  v78 = v10;
  v85 = v14;
  v77 = v32;
  v76 = v33;
  v97 = v13;
  while (v34 < *(v32 + 16))
  {
    v36 = (v75 + 16 * v34);
    v37 = *v36;
    v38 = *(v36 + 1);
    v84 = v34;
    if (v37 > 5)
    {
      if (v37 > 8)
      {
        if (v37 == 9)
        {
          v81 = 0xE500000000000000;
          v39 = 0x6F65646976;
          v40 = &v102;
        }

        else if (v37 == 10)
        {
          v81 = 0xE400000000000000;
          v39 = 1953394534;
          v40 = &v102;
        }

        else
        {
          v80 = 0x616C506F65646976;
          v39 = 0xEB00000000726579;
          v40 = &v103;
        }
      }

      else if (v37 == 6)
      {
        v81 = 0xE300000000000000;
        v39 = 7107189;
        v40 = &v102;
      }

      else
      {
        v81 = 0xE500000000000000;
        if (v37 == 7)
        {
          v39 = 0x726F6C6F63;
        }

        else
        {
          v39 = 0x6567616D69;
        }

        v40 = &v102;
      }
    }

    else if (v37 > 2)
    {
      if (v37 == 3)
      {
        v81 = 0xE500000000000000;
        v39 = 0x74616F6C66;
        v40 = &v102;
      }

      else
      {
        if (v37 == 4)
        {
          v81 = 0xE700000000000000;
          v39 = 0x72656765746E69;
        }

        else
        {
          v81 = 0xE600000000000000;
          v39 = 0x676E69727473;
        }

        v40 = &v102;
      }
    }

    else if (v37)
    {
      v81 = 0xE400000000000000;
      if (v37 == 1)
      {
        v39 = 1702125924;
      }

      else
      {
        v39 = 1836412517;
      }

      v40 = &v102;
    }

    else
    {
      v81 = 0xE700000000000000;
      v39 = 0x6E61656C6F6F62;
      v40 = &v102;
    }

    *(v40 - 32) = v39;
    v83 = v35;

    v82 = v38;
    v41 = sub_1D72626EC();
    v42 = *(v41 + 16);
    if (v42)
    {
      v100 = MEMORY[0x1E69E7CC0];
      sub_1D69972A4(0, v42, 0);
      v43 = v100;
      v44 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v79 = v41;
      v45 = v41 + v44;
      v46 = *(v10 + 72);
      do
      {
        v47 = v24;
        v48 = v95;
        sub_1D695B264(v45, v95);
        v49 = v96;
        sub_1D695B264(v48, v96);
        v50 = v99;
        (*v90)(v49, 0, 1, v99);
        sub_1D6983E84(v48, type metadata accessor for FormatPropertyDefinition);
        v51 = v91;
        sub_1D5CAD854(v49, v91, &qword_1EDF25CC0, type metadata accessor for FormatPropertyDefinition);
        v52 = (*v89)(v51, 1, v50);
        v53 = *(v13 + 24);
        if (v52 == 1)
        {
          v54 = type metadata accessor for FormatInspectionItem.Value(0);
          (*(*(v54 - 8) + 56))(&v17[v53], 1, 1, v54);
          *v17 = v86;
          *(v17 + 2) = 0;
          *(v17 + 3) = 0;
          v55 = &v17[*(v13 + 28)];
          *v55 = 0;
          *(v55 + 1) = 0;
          v55[16] = -1;
        }

        else
        {
          sub_1D695B264(v51, &v17[v53]);
          v56 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v56 - 8) + 56))(&v17[v53], 0, 1, v56);
          *v17 = v86;
          *(v17 + 2) = 0;
          *(v17 + 3) = 0;
          v57 = &v17[*(v13 + 28)];
          *v57 = 0;
          *(v57 + 1) = 0;
          v57[16] = -1;
          sub_1D6983E84(v51, type metadata accessor for FormatPropertyDefinition);
        }

        v24 = v47;
        sub_1D5CADA34(v17, v47, type metadata accessor for FormatInspectionItem);
        (*v88)(v47, 0, 1, v13);
        v100 = v43;
        v59 = *(v43 + 16);
        v58 = *(v43 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1D69972A4((v58 > 1), v59 + 1, 1);
          v43 = v100;
        }

        *(v43 + 16) = v59 + 1;
        sub_1D5CAD854(v47, v43 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v59, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem);
        v45 += v46;
        --v42;
      }

      while (v42);

      v60 = *(v43 + 16);
      if (v60)
      {
LABEL_39:
        v61 = v43 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
        v62 = *(v98 + 72);
        v63 = MEMORY[0x1E69E7CC0];
        do
        {
          v64 = v92;
          sub_1D5CDE36C(v61, v92, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem);
          v65 = v93;
          sub_1D5CAD854(v64, v93, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem);
          if ((*v87)(v65, 1, v97) == 1)
          {
            sub_1D6981AE4(v65, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem);
          }

          else
          {
            sub_1D5CADA34(v65, v94, type metadata accessor for FormatInspectionItem);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = sub_1D698BAE0(0, v63[2] + 1, 1, v63);
            }

            v67 = v63[2];
            v66 = v63[3];
            if (v67 >= v66 >> 1)
            {
              v63 = sub_1D698BAE0((v66 > 1), v67 + 1, 1, v63);
            }

            v63[2] = v67 + 1;
            sub_1D5CADA34(v94, v63 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v67, type metadata accessor for FormatInspectionItem);
          }

          v61 += v62;
          --v60;
        }

        while (v60);

        v13 = v97;
        goto LABEL_51;
      }
    }

    else
    {

      v43 = MEMORY[0x1E69E7CC0];
      v60 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v60)
      {
        goto LABEL_39;
      }
    }

    v63 = MEMORY[0x1E69E7CC0];
LABEL_51:
    v35 = v83;
    v101 = v83;
    v69 = *(v83 + 16);
    v68 = *(v83 + 24);
    v10 = v78;
    v70 = v84;
    if (v69 >= v68 >> 1)
    {
      v73 = v84;
      sub_1D69993A8((v68 > 1), v69 + 1, 1);
      v70 = v73;
      v35 = v101;
    }

    v34 = v70 + 1;
    *(v35 + 16) = v69 + 1;
    v71 = (v35 + 40 * v69);
    v72 = v81;
    v71[4] = v80;
    v71[5] = v72;
    v71[6] = 0;
    v71[7] = 0;
    v71[8] = v63;
    v32 = v77;
    if (v34 == v76)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
}

uint64_t FormatPropertyDefinition.type.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D695B264(v1, v6);
  *a1 = byte_1D730A440[swift_getEnumCaseMultiPayload()];
  return sub_1D6983E84(v6, type metadata accessor for FormatPropertyDefinition);
}

uint64_t FormatPropertyDefinition.description.getter()
{
  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v64 = &v60 - v2;
  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v63 = &v60 - v5;
  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v62 = &v60 - v8;
  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v61 = &v60 - v11;
  sub_1D5B5796C(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v60 - v18;
  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v60 - v22;
  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v60 - v26;
  v28 = type metadata accessor for FormatEnumPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5714C(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v60 - v38;
  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v60 - v42;
  v44 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v60 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D695B264(v65, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v54 = &qword_1EDF43F60;
        v49 = &type metadata for FormatVideoNodeContent;
        v56 = sub_1D5B57AA8;
        v55 = sub_1D5B57AA8;
        v57 = v47;
        v58 = v62;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v54 = &qword_1EDF43F48;
        v49 = &type metadata for FormatFont;
        v56 = sub_1D5B55668;
        v55 = sub_1D5B55668;
        v57 = v47;
        v58 = v63;
      }

      else
      {
        v54 = &qword_1EDF43F50;
        v49 = &type metadata for FormatVideoPlayerContent;
        v56 = sub_1D5B55F44;
        v55 = sub_1D5B55F44;
        v57 = v47;
        v58 = v64;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1D5CAD9A4(v47, v19);
        v50 = *(v19 + 6);

        sub_1D62B6AE8(v19);
        return v50;
      }

      if (EnumCaseMultiPayload == 7)
      {
        sub_1D5CADA34(v47, v15, sub_1D5B5796C);
        v50 = *(v15 + 6);

        sub_1D6983E84(v15, sub_1D5B5796C);
        return v50;
      }

      v54 = &qword_1EDF43F58;
      v49 = &type metadata for FormatAsyncImageContent;
      v56 = sub_1D5B57A00;
      v55 = sub_1D5B57A00;
      v57 = v47;
      v58 = v61;
    }

    sub_1D695B2C8(v57, v58, v54, v56, v49);
    v50 = *(v58 + 48);

    v51 = v58;
LABEL_25:
    v52 = v54;
    v53 = v55;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5CADA34(v47, v31, type metadata accessor for FormatEnumPropertyDefinition);
      v50 = *(v31 + 8);

      sub_1D6983E84(v31, type metadata accessor for FormatEnumPropertyDefinition);
      return v50;
    }

    if (EnumCaseMultiPayload != 4)
    {
      sub_1D62B6B70(v47, v23);
      v50 = *(v23 + 6);

      sub_1D62B6C00(v23);
      return v50;
    }

    v54 = &qword_1EDF43F68;
    v49 = MEMORY[0x1E69E7DE0];
    v55 = sub_1D5B577E4;
    sub_1D695B2C8(v47, v27, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
    v50 = *(v27 + 6);

    v51 = v27;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v49 = &type metadata for FormatColor;
      sub_1D695B2C8(v47, v39, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor);
      v50 = *(v39 + 6);

      v51 = v39;
      v52 = &qword_1EDF43F40;
      v53 = sub_1D5B5706C;
LABEL_26:
      sub_1D695B34C(v51, v52, v53, v49);
      return v50;
    }

    sub_1D5CADA34(v47, v35, sub_1D5B5714C);
    v50 = *(v35 + 6);

    sub_1D6983E84(v35, sub_1D5B5714C);
  }

  else
  {
    sub_1D5CAE630(v47, v43);
    v50 = *(v43 + 6);

    sub_1D62B6EE8(v43);
  }

  return v50;
}

uint64_t FormatPropertyDefinition.encode(to:)(void *a1)
{
  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v262 = &v240 - v4;
  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v261 = &v240 - v7;
  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v260 = &v240 - v10;
  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v259 = &v240 - v13;
  sub_1D5B5796C(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v258 = &v240 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v257 = &v240 - v19;
  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v255 = &v240 - v22;
  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v256 = &v240 - v25;
  v26 = type metadata accessor for FormatEnumPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v254 = &v240 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5714C(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v253 = &v240 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v252 = &v240 - v34;
  v35 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v251 = &v240 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v250 = &v240 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v249 = &v240 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v248 = &v240 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v246 = &v240 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v245 = &v240 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v243 = &v240 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v244 = &v240 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v242 = &v240 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v241 = &v240 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v240 = &v240 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v71 = &v240 - v70;
  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v72 - 8, v73);
  v247 = &v240 - v74;
  v75 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v240 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B57004(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v80 = *(v79 - 8);
  v267 = v79;
  v268 = v80;
  MEMORY[0x1EEE9AC00](v79, v81);
  v83 = &v240 - v82;
  v84 = a1[3];
  v266 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v84);
  sub_1D5C30408();
  v265 = v83;
  sub_1D7264B5C();
  sub_1D695B264(v263, v78);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v158 = v78;
        v108 = v260;
        sub_1D695B2C8(v158, v260, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent);
        v159 = v266;
        v160 = v266[3];
        v161 = v266[4];
        __swift_project_boxed_opaque_existential_1(v266, v160);
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v162 = sub_1D725BD1C();
        v163 = __swift_project_value_buffer(v162, qword_1EDFFCD98);
        v164 = v249;
        (*(*(v162 - 8) + 16))(v249, v163, v162);
        type metadata accessor for FormatVersionRequirement.Value(0);
        v165 = swift_storeEnumTagMultiPayload();
        MEMORY[0x1EEE9AC00](v165, v166);
        *(&v240 - 2) = v108;
        v167 = v264;
        sub_1D5D2BEC4(v164, sub_1D698106C, (&v240 - 4), v160, v161);
        sub_1D6983E84(v164, type metadata accessor for FormatVersionRequirement);
        if (v167)
        {
          (*(v268 + 8))(v265, v267);
        }

        else
        {
          v271 = 9;
          sub_1D6662C30();
          v269 = 0;
          v270 = 0;
          v217 = v267;
          v218 = v265;
          sub_1D726443C();
          sub_1D697122C(v159);
          (*(v268 + 8))(v218, v217);
        }

        v219 = &qword_1EDF43F60;
        v220 = &type metadata for FormatVideoNodeContent;
        v221 = sub_1D5B57AA8;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v118 = v78;
        v108 = v261;
        sub_1D695B2C8(v118, v261, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont);
        v119 = v266;
        v120 = v266[3];
        v121 = v266[4];
        __swift_project_boxed_opaque_existential_1(v266, v120);
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v122 = sub_1D725BD1C();
        v123 = __swift_project_value_buffer(v122, qword_1EDFFCD50);
        v124 = v250;
        (*(*(v122 - 8) + 16))(v250, v123, v122);
        type metadata accessor for FormatVersionRequirement.Value(0);
        v125 = swift_storeEnumTagMultiPayload();
        MEMORY[0x1EEE9AC00](v125, v126);
        *(&v240 - 2) = v108;
        v127 = v264;
        sub_1D5D2BEC4(v124, sub_1D6981064, (&v240 - 4), v120, v121);
        sub_1D6983E84(v124, type metadata accessor for FormatVersionRequirement);
        if (v127)
        {
          (*(v268 + 8))(v265, v267);
        }

        else
        {
          v271 = 10;
          sub_1D6662C30();
          v269 = 0;
          v270 = 0;
          v230 = v267;
          v231 = v265;
          sub_1D726443C();
          sub_1D6973104(v119);
          (*(v268 + 8))(v231, v230);
        }

        v219 = &qword_1EDF43F48;
        v220 = &type metadata for FormatFont;
        v221 = sub_1D5B55668;
      }

      else
      {
        v199 = v78;
        v108 = v262;
        sub_1D695B2C8(v199, v262, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent);
        v200 = v266;
        v201 = v266[3];
        v202 = v266[4];
        __swift_project_boxed_opaque_existential_1(v266, v201);
        if (qword_1EDF31E98 != -1)
        {
          swift_once();
        }

        v203 = sub_1D725BD1C();
        v204 = __swift_project_value_buffer(v203, qword_1EDFFCD00);
        v205 = v251;
        (*(*(v203 - 8) + 16))(v251, v204, v203);
        type metadata accessor for FormatVersionRequirement.Value(0);
        v206 = swift_storeEnumTagMultiPayload();
        MEMORY[0x1EEE9AC00](v206, v207);
        *(&v240 - 2) = v108;
        v208 = v264;
        sub_1D5D2BEC4(v205, sub_1D698105C, (&v240 - 4), v201, v202);
        sub_1D6983E84(v205, type metadata accessor for FormatVersionRequirement);
        if (v208)
        {
          (*(v268 + 8))(v265, v267);
        }

        else
        {
          v271 = 11;
          sub_1D6662C30();
          v269 = 0;
          v270 = 0;
          v238 = v267;
          v239 = v265;
          sub_1D726443C();
          sub_1D6974FDC(v200);
          (*(v268 + 8))(v239, v238);
        }

        v219 = &qword_1EDF43F50;
        v220 = &type metadata for FormatVideoPlayerContent;
        v221 = sub_1D5B55F44;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v137 = v78;
        v138 = v257;
        sub_1D5CAD9A4(v137, v257);
        v139 = v266;
        v140 = v266[3];
        v141 = v266[4];
        __swift_project_boxed_opaque_existential_1(v266, v140);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v142 = sub_1D725BD1C();
        v143 = __swift_project_value_buffer(v142, qword_1EDFFCD30);
        v144 = v245;
        (*(*(v142 - 8) + 16))(v245, v143, v142);
        type metadata accessor for FormatVersionRequirement.Value(0);
        v145 = swift_storeEnumTagMultiPayload();
        MEMORY[0x1EEE9AC00](v145, v146);
        *(&v240 - 2) = v138;
        v147 = v264;
        sub_1D5D2BEC4(v144, sub_1D6981084, (&v240 - 4), v140, v141);
        sub_1D6983E84(v144, type metadata accessor for FormatVersionRequirement);
        if (v147)
        {
          (*(v268 + 8))(v265, v267);
        }

        else
        {
          v271 = 5;
          sub_1D6662C30();
          v269 = 0;
          v270 = 0;
          v212 = v267;
          v213 = v265;
          sub_1D726443C();
          sub_1D696B2D4(v139);
          (*(v268 + 8))(v213, v212);
        }

        return sub_1D62B6AE8(v138);
      }

      if (EnumCaseMultiPayload == 7)
      {
        v96 = v78;
        v97 = v258;
        sub_1D5CADA34(v96, v258, sub_1D5B5796C);
        v98 = v266;
        v99 = v266[3];
        v100 = v266[4];
        __swift_project_boxed_opaque_existential_1(v266, v99);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v101 = sub_1D725BD1C();
        v102 = __swift_project_value_buffer(v101, qword_1EDFFCD30);
        v103 = v246;
        (*(*(v101 - 8) + 16))(v246, v102, v101);
        type metadata accessor for FormatVersionRequirement.Value(0);
        v104 = swift_storeEnumTagMultiPayload();
        MEMORY[0x1EEE9AC00](v104, v105);
        *(&v240 - 2) = v97;
        v106 = v264;
        sub_1D5D2BEC4(v103, sub_1D698107C, (&v240 - 4), v99, v100);
        sub_1D6983E84(v103, type metadata accessor for FormatVersionRequirement);
        if (v106)
        {
          (*(v268 + 8))(v265, v267);
        }

        else
        {
          v271 = 6;
          sub_1D6662C30();
          v269 = 0;
          v270 = 0;
          v226 = v267;
          v227 = v265;
          sub_1D726443C();
          sub_1D696D1F0(v98);
          (*(v268 + 8))(v227, v226);
        }

        v216 = sub_1D5B5796C;
        return sub_1D6983E84(v97, v216);
      }

      v178 = v78;
      v108 = v259;
      sub_1D695B2C8(v178, v259, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent);
      v179 = v266;
      v180 = v266[3];
      v181 = v266[4];
      __swift_project_boxed_opaque_existential_1(v266, v180);
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v182 = sub_1D725BD1C();
      v183 = __swift_project_value_buffer(v182, qword_1EDFFCD98);
      v184 = v248;
      (*(*(v182 - 8) + 16))(v248, v183, v182);
      type metadata accessor for FormatVersionRequirement.Value(0);
      v185 = swift_storeEnumTagMultiPayload();
      MEMORY[0x1EEE9AC00](v185, v186);
      *(&v240 - 2) = v108;
      v187 = v264;
      sub_1D5D2BEC4(v184, sub_1D6981074, (&v240 - 4), v180, v181);
      sub_1D6983E84(v184, type metadata accessor for FormatVersionRequirement);
      if (v187)
      {
        (*(v268 + 8))(v265, v267);
      }

      else
      {
        v271 = 8;
        sub_1D6662C30();
        v269 = 0;
        v270 = 0;
        v234 = v267;
        v235 = v265;
        sub_1D726443C();
        sub_1D696F354(v179);
        (*(v268 + 8))(v235, v234);
      }

      v219 = &qword_1EDF43F58;
      v220 = &type metadata for FormatAsyncImageContent;
      v221 = sub_1D5B57A00;
    }

LABEL_85:
    v224 = v221;
    v225 = v108;
    return sub_1D695B34C(v225, v219, v224, v220);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v148 = v78;
      v97 = v254;
      sub_1D5CADA34(v148, v254, type metadata accessor for FormatEnumPropertyDefinition);
      v149 = v266;
      v150 = v266[3];
      v151 = v266[4];
      __swift_project_boxed_opaque_existential_1(v266, v150);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v152 = sub_1D725BD1C();
      v153 = __swift_project_value_buffer(v152, qword_1EDFFCD30);
      v154 = v242;
      (*(*(v152 - 8) + 16))(v242, v153, v152);
      type metadata accessor for FormatVersionRequirement.Value(0);
      v155 = swift_storeEnumTagMultiPayload();
      MEMORY[0x1EEE9AC00](v155, v156);
      *(&v240 - 2) = v97;
      v157 = v264;
      sub_1D5D2BEC4(v154, sub_1D698109C, (&v240 - 4), v150, v151);
      sub_1D6983E84(v154, type metadata accessor for FormatVersionRequirement);
      if (v157)
      {
        (*(v268 + 8))(v265, v267);
      }

      else
      {
        v271 = 2;
        sub_1D6662C30();
        v269 = 0;
        v270 = 0;
        v214 = v267;
        v215 = v265;
        sub_1D726443C();
        FormatEnumPropertyDefinition.encode(to:)(v149);
        (*(v268 + 8))(v215, v214);
      }

      v216 = type metadata accessor for FormatEnumPropertyDefinition;
      return sub_1D6983E84(v97, v216);
    }

    if (EnumCaseMultiPayload != 4)
    {
      v188 = v78;
      v189 = v255;
      sub_1D62B6B70(v188, v255);
      v190 = v266;
      v191 = v266[3];
      v192 = v266[4];
      __swift_project_boxed_opaque_existential_1(v266, v191);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v193 = sub_1D725BD1C();
      v194 = __swift_project_value_buffer(v193, qword_1EDFFCD30);
      v195 = v243;
      (*(*(v193 - 8) + 16))(v243, v194, v193);
      type metadata accessor for FormatVersionRequirement.Value(0);
      v196 = swift_storeEnumTagMultiPayload();
      MEMORY[0x1EEE9AC00](v196, v197);
      *(&v240 - 2) = v189;
      v198 = v264;
      sub_1D5D2BEC4(v195, sub_1D698108C, (&v240 - 4), v191, v192);
      sub_1D6983E84(v195, type metadata accessor for FormatVersionRequirement);
      if (v198)
      {
        (*(v268 + 8))(v265, v267);
      }

      else
      {
        v271 = 4;
        sub_1D6662C30();
        v269 = 0;
        v270 = 0;
        v236 = v267;
        v237 = v265;
        sub_1D726443C();
        sub_1D696941C(v190);
        (*(v268 + 8))(v237, v236);
      }

      return sub_1D62B6C00(v189);
    }

    v107 = v78;
    v108 = v256;
    sub_1D695B2C8(v107, v256, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
    v109 = v266;
    v110 = v266[3];
    v111 = v266[4];
    __swift_project_boxed_opaque_existential_1(v266, v110);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v112 = sub_1D725BD1C();
    v113 = __swift_project_value_buffer(v112, qword_1EDFFCD30);
    v114 = v244;
    (*(*(v112 - 8) + 16))(v244, v113, v112);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v115 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v115, v116);
    *(&v240 - 2) = v108;
    v117 = v264;
    sub_1D5D2BEC4(v114, sub_1D6981094, (&v240 - 4), v110, v111);
    sub_1D6983E84(v114, type metadata accessor for FormatVersionRequirement);
    if (v117)
    {
      (*(v268 + 8))(v265, v267);
    }

    else
    {
      v271 = 3;
      sub_1D6662C30();
      v269 = 0;
      v270 = 0;
      v228 = v267;
      v229 = v265;
      sub_1D726443C();
      sub_1D6967550(v109);
      (*(v268 + 8))(v229, v228);
    }

    v219 = &qword_1EDF43F68;
    v220 = MEMORY[0x1E69E7DE0];
    v221 = sub_1D5B577E4;
    goto LABEL_85;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v86 = v252;
      sub_1D695B2C8(v78, v252, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor);
      v87 = v266;
      v88 = v266[3];
      v89 = v266[4];
      __swift_project_boxed_opaque_existential_1(v266, v88);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v90 = sub_1D725BD1C();
      v91 = __swift_project_value_buffer(v90, qword_1EDFFCD30);
      v92 = v240;
      (*(*(v90 - 8) + 16))(v240, v91, v90);
      type metadata accessor for FormatVersionRequirement.Value(0);
      v93 = swift_storeEnumTagMultiPayload();
      MEMORY[0x1EEE9AC00](v93, v94);
      *(&v240 - 2) = v86;
      v95 = v264;
      sub_1D5D2BEC4(v92, sub_1D69810AC, (&v240 - 4), v88, v89);
      sub_1D6983E84(v92, type metadata accessor for FormatVersionRequirement);
      if (v95)
      {
        (*(v268 + 8))(v265, v267);
      }

      else
      {
        v271 = 7;
        sub_1D6662C30();
        v269 = 0;
        v270 = 0;
        v222 = v267;
        v223 = v265;
        sub_1D726443C();
        sub_1D6963514(v87);
        (*(v268 + 8))(v223, v222);
      }

      v219 = &qword_1EDF43F40;
      v220 = &type metadata for FormatColor;
      v224 = sub_1D5B5706C;
      v225 = v86;
      return sub_1D695B34C(v225, v219, v224, v220);
    }

    v168 = v78;
    v97 = v253;
    sub_1D5CADA34(v168, v253, sub_1D5B5714C);
    v169 = v266;
    v170 = v266[3];
    v171 = v266[4];
    __swift_project_boxed_opaque_existential_1(v266, v170);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v172 = sub_1D725BD1C();
    v173 = __swift_project_value_buffer(v172, qword_1EDFFCD30);
    v174 = v241;
    (*(*(v172 - 8) + 16))(v241, v173, v172);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v175 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v175, v176);
    *(&v240 - 2) = v97;
    v177 = v264;
    sub_1D5D2BEC4(v174, sub_1D69810A4, (&v240 - 4), v170, v171);
    sub_1D6983E84(v174, type metadata accessor for FormatVersionRequirement);
    if (v177)
    {
      (*(v268 + 8))(v265, v267);
    }

    else
    {
      v271 = 1;
      sub_1D6662C30();
      v269 = 0;
      v270 = 0;
      v232 = v267;
      v233 = v265;
      sub_1D726443C();
      sub_1D69653EC(v169);
      (*(v268 + 8))(v233, v232);
    }

    v216 = sub_1D5B5714C;
    return sub_1D6983E84(v97, v216);
  }

  v128 = v247;
  sub_1D5CAE630(v78, v247);
  v129 = v266;
  v130 = v266[3];
  v131 = v266[4];
  __swift_project_boxed_opaque_existential_1(v266, v130);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v132 = sub_1D725BD1C();
  v133 = __swift_project_value_buffer(v132, qword_1EDFFCD30);
  (*(*(v132 - 8) + 16))(v71, v133, v132);
  type metadata accessor for FormatVersionRequirement.Value(0);
  v134 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v134, v135);
  *(&v240 - 2) = v128;
  v136 = v264;
  sub_1D5D2BEC4(v71, sub_1D69810B4, (&v240 - 4), v130, v131);
  sub_1D6983E84(v71, type metadata accessor for FormatVersionRequirement);
  if (v136)
  {
    (*(v268 + 8))(v265, v267);
  }

  else
  {
    v271 = 0;
    sub_1D6662C30();
    v269 = 0;
    v270 = 0;
    v209 = v267;
    v210 = v265;
    sub_1D726443C();
    sub_1D6961658(v129);
    (*(v268 + 8))(v210, v209);
  }

  return sub_1D62B6EE8(v128);
}

uint64_t sub_1D697A5A4(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000021, 0x80000001D73DCDE0);
  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D697A670(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73DCE10);
  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D697A748(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001ELL, 0x80000001D73DCE30);
  sub_1D5B5714C(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D697A7E8(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001ELL, 0x80000001D73DCE50);
  type metadata accessor for FormatEnumPropertyDefinition(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D697A888(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73DCE70);
  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D697A960(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000021, 0x80000001D73DCE90);
  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D697AA2C(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000020, 0x80000001D73DCEC0);
  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D697AAF8(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73DCEF0);
  sub_1D5B5796C(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D697AB98(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73DCF10);
  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D697AC70(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73DCF30);
  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D697AD48(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000001ELL, 0x80000001D73DCF50);
  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D697AE20(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000025, 0x80000001D73DCF70);
  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

BOOL sub_1D697AEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - v12;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v30 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v20 = *(a1 + 65);
  v21 = *(a2 + 65);
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

  if (*(a1 + 66) != *(a2 + 66) || (sub_1D5E1ED0C(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  v23 = *(v22 + 64);
  v24 = *(v15 + 48);
  v25 = MEMORY[0x1E69D6A58];
  sub_1D5CDE36C(a1 + v23, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5CDE36C(a2 + v23, &v18[v24], &qword_1EDF45AD0, v25);
  v26 = *(v5 + 48);
  if (v26(v18, 1, v4) != 1)
  {
    sub_1D5CDE36C(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v26(&v18[v24], 1, v4) == 1)
    {
      v27.n128_f64[0] = (*(v5 + 8))(v13, v4);
      goto LABEL_26;
    }

    (*(v5 + 32))(v8, &v18[v24], v4);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v28 = sub_1D7261FBC();
    v29 = *(v5 + 8);
    v29(v8, v4);
    v29(v13, v4);
    sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v28 & 1) != 0;
  }

  if (v26(&v18[v24], 1, v4) != 1)
  {
LABEL_26:
    sub_1D69810BC(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v27);
    return 0;
  }

  sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D697B3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v33 - v12;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v33 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v20 = *(a1 + 72);
  v21 = *(a2 + 72);
  if ((~v20 & 0xF000000000000007) == 0)
  {
    v34 = v5;
    sub_1D5CFCFAC(v20);
    sub_1D5CFCFAC(v21);
    if ((~v21 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v20);
      v5 = v34;
      goto LABEL_21;
    }

LABEL_19:
    sub_1D5C84FF4(v20);
    sub_1D5C84FF4(v21);
    return 0;
  }

  v36 = *(a1 + 72);
  if ((~v21 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v20);
    sub_1D5CFCFAC(v21);
    sub_1D5CFCFAC(v20);

    goto LABEL_19;
  }

  v35 = v21;
  sub_1D5CFCFAC(v20);
  sub_1D5CFCFAC(v21);
  sub_1D5CFCFAC(v20);
  v22 = static FormatColor.== infix(_:_:)(&v36, &v35);

  sub_1D5C84FF4(v20);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (*(a1 + 80) != *(a2 + 80) || (sub_1D5E1ED0C(*(a1 + 88), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  v34 = v5;
  v24 = *(v23 + 64);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5CDE36C(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v27 = a2 + v24;
  v28 = v34;
  sub_1D5CDE36C(v27, &v18[v25], &qword_1EDF45AD0, v26);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v4) != 1)
  {
    sub_1D5CDE36C(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v29(&v18[v25], 1, v4) == 1)
    {
      v30.n128_f64[0] = (*(v28 + 8))(v13, v4);
      goto LABEL_28;
    }

    (*(v28 + 32))(v8, &v18[v25], v4);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v31 = sub_1D7261FBC();
    v32 = *(v28 + 8);
    v32(v8, v4);
    v32(v13, v4);
    sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v31 & 1) != 0;
  }

  if (v29(&v18[v25], 1, v4) != 1)
  {
LABEL_28:
    sub_1D69810BC(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v30);
    return 0;
  }

  sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D697B94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v60 = &v56 - v13;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v61 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v62 = &v56 - v16;
  v17 = sub_1D725891C();
  v63 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E6969530];
  sub_1D5B4BE9C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v10);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v56 - v24;
  sub_1D6981A6C(0, &qword_1EDF18A60, &qword_1EDF45B00, v21);
  v27 = v26;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v56 - v29;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v56 = v8;
  v57 = v5;
  v58 = v4;
  sub_1D5B5714C(0);
  v59 = v32;
  v33 = *(v32 + 52);
  v34 = *(v27 + 48);
  v35 = MEMORY[0x1E6969530];
  sub_1D5CDE36C(a1 + v33, v30, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  sub_1D5CDE36C(a2 + v33, &v30[v34], &qword_1EDF45B00, v35);
  v36 = v63;
  v37 = *(v63 + 48);
  if (v37(v30, 1, v17) == 1)
  {
    if (v37(&v30[v34], 1, v17) == 1)
    {
      sub_1D6981AE4(v30, &qword_1EDF45B00, MEMORY[0x1E6969530]);
      goto LABEL_21;
    }

LABEL_19:
    sub_1D69810BC(v30, &qword_1EDF18A60, &qword_1EDF45B00, MEMORY[0x1E6969530], v38);
    return 0;
  }

  sub_1D5CDE36C(v30, v25, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  if (v37(&v30[v34], 1, v17) == 1)
  {
    v38.n128_f64[0] = (*(v36 + 8))(v25, v17);
    goto LABEL_19;
  }

  (*(v36 + 32))(v20, &v30[v34], v17);
  sub_1D5B4CDEC(&qword_1EDF45B10, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v39 = sub_1D7261FBC();
  v40 = *(v36 + 8);
  v40(v20, v17);
  v40(v25, v17);
  sub_1D6981AE4(v30, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v41 = v59;
  if (*(a1 + *(v59 + 56)) != *(a2 + *(v59 + 56)) || (sub_1D5E1ED0C(*(a1 + *(v59 + 60)), *(a2 + *(v59 + 60))) & 1) == 0)
  {
    return 0;
  }

  v42 = *(v41 + 64);
  v43 = *(v61 + 48);
  v44 = MEMORY[0x1E69D6A58];
  v45 = a1 + v42;
  v46 = v62;
  sub_1D5CDE36C(v45, v62, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5CDE36C(a2 + v42, v46 + v43, &qword_1EDF45AD0, v44);
  v48 = v57;
  v47 = v58;
  v49 = *(v57 + 48);
  if (v49(v46, 1, v58) != 1)
  {
    v51 = v60;
    sub_1D5CDE36C(v46, v60, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v49(v46 + v43, 1, v47) == 1)
    {
      v50.n128_f64[0] = (*(v48 + 8))(v51, v47);
      goto LABEL_28;
    }

    v52 = v46 + v43;
    v53 = v56;
    (*(v48 + 32))(v56, v52, v47);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v54 = sub_1D7261FBC();
    v55 = *(v48 + 8);
    v55(v53, v47);
    v55(v51, v47);
    sub_1D6981AE4(v46, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v54 & 1) != 0;
  }

  if (v49(v46 + v43, 1, v47) != 1)
  {
LABEL_28:
    sub_1D69810BC(v46, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v50);
    return 0;
  }

  sub_1D6981AE4(v46, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D697C148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v29 - v12;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v29 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v20 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (!*(a2 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (*(a1 + 81) != *(a2 + 81) || (sub_1D5E1ED0C(*(a1 + 88), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  v22 = *(v21 + 64);
  v23 = *(v15 + 48);
  v24 = MEMORY[0x1E69D6A58];
  sub_1D5CDE36C(a1 + v22, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5CDE36C(a2 + v22, &v18[v23], &qword_1EDF45AD0, v24);
  v25 = *(v5 + 48);
  if (v25(v18, 1, v4) != 1)
  {
    sub_1D5CDE36C(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v25(&v18[v23], 1, v4) == 1)
    {
      v26.n128_f64[0] = (*(v5 + 8))(v13, v4);
      goto LABEL_27;
    }

    (*(v5 + 32))(v8, &v18[v23], v4);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v27 = sub_1D7261FBC();
    v28 = *(v5 + 8);
    v28(v8, v4);
    v28(v13, v4);
    sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v27 & 1) != 0;
  }

  if (v25(&v18[v23], 1, v4) != 1)
  {
LABEL_27:
    sub_1D69810BC(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v26);
    return 0;
  }

  sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D697C618(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v29 - v12;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v29 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v20 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (!*(a2 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (*(a1 + 81) != *(a2 + 81) || (sub_1D5E1ED0C(*(a1 + 88), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  v22 = *(v21 + 64);
  v23 = *(v15 + 48);
  v24 = MEMORY[0x1E69D6A58];
  sub_1D5CDE36C(a1 + v22, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5CDE36C(a2 + v22, &v18[v23], &qword_1EDF45AD0, v24);
  v25 = *(v5 + 48);
  if (v25(v18, 1, v4) != 1)
  {
    sub_1D5CDE36C(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v25(&v18[v23], 1, v4) == 1)
    {
      v26.n128_f64[0] = (*(v5 + 8))(v13, v4);
      goto LABEL_27;
    }

    (*(v5 + 32))(v8, &v18[v23], v4);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v27 = sub_1D7261FBC();
    v28 = *(v5 + 8);
    v28(v8, v4);
    v28(v13, v4);
    sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v27 & 1) != 0;
  }

  if (v25(&v18[v23], 1, v4) != 1)
  {
LABEL_27:
    sub_1D69810BC(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v26);
    return 0;
  }

  sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D697CADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - v12;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v30 - v17;
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

  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  v23 = *(v22 + 64);
  v24 = *(v15 + 48);
  v25 = MEMORY[0x1E69D6A58];
  sub_1D5CDE36C(a1 + v23, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5CDE36C(a2 + v23, &v18[v24], &qword_1EDF45AD0, v25);
  v26 = *(v5 + 48);
  if (v26(v18, 1, v4) != 1)
  {
    sub_1D5CDE36C(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v26(&v18[v24], 1, v4) == 1)
    {
      v27.n128_f64[0] = (*(v5 + 8))(v13, v4);
      goto LABEL_28;
    }

    (*(v5 + 32))(v8, &v18[v24], v4);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v28 = sub_1D7261FBC();
    v29 = *(v5 + 8);
    v29(v8, v4);
    v29(v13, v4);
    sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v28 & 1) != 0;
  }

  if (v26(&v18[v24], 1, v4) != 1)
  {
LABEL_28:
    sub_1D69810BC(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v27);
    return 0;
  }

  sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D697CFB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v60 = &v56 - v13;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v61 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v62 = &v56 - v16;
  v17 = sub_1D72585BC();
  v63 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E6968FB0];
  sub_1D5B4BE9C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v10);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v56 - v24;
  sub_1D6981A6C(0, &qword_1EDF3C3D0, &qword_1EDF45B40, v21);
  v27 = v26;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v56 - v29;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v56 = v8;
  v57 = v5;
  v58 = v4;
  sub_1D5B5796C(0);
  v59 = v32;
  v33 = *(v32 + 52);
  v34 = *(v27 + 48);
  v35 = MEMORY[0x1E6968FB0];
  sub_1D5CDE36C(a1 + v33, v30, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CDE36C(a2 + v33, &v30[v34], &qword_1EDF45B40, v35);
  v36 = v63;
  v37 = *(v63 + 48);
  if (v37(v30, 1, v17) == 1)
  {
    if (v37(&v30[v34], 1, v17) == 1)
    {
      sub_1D6981AE4(v30, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      goto LABEL_21;
    }

LABEL_19:
    sub_1D69810BC(v30, &qword_1EDF3C3D0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v38);
    return 0;
  }

  sub_1D5CDE36C(v30, v25, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v37(&v30[v34], 1, v17) == 1)
  {
    v38.n128_f64[0] = (*(v36 + 8))(v25, v17);
    goto LABEL_19;
  }

  (*(v36 + 32))(v20, &v30[v34], v17);
  sub_1D5B4CDEC(&unk_1EDF45B60, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v39 = sub_1D7261FBC();
  v40 = *(v36 + 8);
  v40(v20, v17);
  v40(v25, v17);
  sub_1D6981AE4(v30, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v41 = v59;
  if (*(a1 + *(v59 + 56)) != *(a2 + *(v59 + 56)) || (sub_1D5E1ED0C(*(a1 + *(v59 + 60)), *(a2 + *(v59 + 60))) & 1) == 0)
  {
    return 0;
  }

  v42 = *(v41 + 64);
  v43 = *(v61 + 48);
  v44 = MEMORY[0x1E69D6A58];
  v45 = a1 + v42;
  v46 = v62;
  sub_1D5CDE36C(v45, v62, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5CDE36C(a2 + v42, v46 + v43, &qword_1EDF45AD0, v44);
  v48 = v57;
  v47 = v58;
  v49 = *(v57 + 48);
  if (v49(v46, 1, v58) != 1)
  {
    v51 = v60;
    sub_1D5CDE36C(v46, v60, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v49(v46 + v43, 1, v47) == 1)
    {
      v50.n128_f64[0] = (*(v48 + 8))(v51, v47);
      goto LABEL_28;
    }

    v52 = v46 + v43;
    v53 = v56;
    (*(v48 + 32))(v56, v52, v47);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v54 = sub_1D7261FBC();
    v55 = *(v48 + 8);
    v55(v53, v47);
    v55(v51, v47);
    sub_1D6981AE4(v46, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v54 & 1) != 0;
  }

  if (v49(v46 + v43, 1, v47) != 1)
  {
LABEL_28:
    sub_1D69810BC(v46, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v50);
    return 0;
  }

  sub_1D6981AE4(v46, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D697D7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v33 - v12;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v33 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v20 = *(a1 + 72);
  v21 = *(a2 + 72);
  if ((~v20 & 0xF000000000000007) == 0)
  {
    v34 = v5;
    sub_1D5CFCFAC(v20);
    sub_1D5CFCFAC(v21);
    if ((~v21 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v20);
      v5 = v34;
      goto LABEL_21;
    }

LABEL_19:
    sub_1D5C84FF4(v20);
    sub_1D5C84FF4(v21);
    return 0;
  }

  v36 = *(a1 + 72);
  if ((~v21 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v20);
    sub_1D5CFCFAC(v21);
    sub_1D5CFCFAC(v20);

    goto LABEL_19;
  }

  v35 = v21;
  sub_1D5CFCFAC(v20);
  sub_1D5CFCFAC(v21);
  sub_1D5CFCFAC(v20);
  v22 = static FormatAsyncImageContent.== infix(_:_:)(&v36, &v35);

  sub_1D5C84FF4(v20);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (*(a1 + 80) != *(a2 + 80) || (sub_1D5E1ED0C(*(a1 + 88), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  v34 = v5;
  v24 = *(v23 + 64);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5CDE36C(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v27 = a2 + v24;
  v28 = v34;
  sub_1D5CDE36C(v27, &v18[v25], &qword_1EDF45AD0, v26);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v4) != 1)
  {
    sub_1D5CDE36C(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v29(&v18[v25], 1, v4) == 1)
    {
      v30.n128_f64[0] = (*(v28 + 8))(v13, v4);
      goto LABEL_28;
    }

    (*(v28 + 32))(v8, &v18[v25], v4);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v31 = sub_1D7261FBC();
    v32 = *(v28 + 8);
    v32(v8, v4);
    v32(v13, v4);
    sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v31 & 1) != 0;
  }

  if (v29(&v18[v25], 1, v4) != 1)
  {
LABEL_28:
    sub_1D69810BC(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v30);
    return 0;
  }

  sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D697DD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v33 - v12;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v33 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v20 = *(a1 + 72);
  v21 = *(a2 + 72);
  if ((~v20 & 0xF000000000000007) == 0)
  {
    v34 = v5;
    sub_1D5D04BD4(v20);
    sub_1D5D04BD4(v21);
    if ((~v21 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v20);
      v5 = v34;
      goto LABEL_21;
    }

LABEL_19:
    sub_1D5C8500C(v20);
    sub_1D5C8500C(v21);
    return 0;
  }

  v36 = *(a1 + 72);
  if ((~v21 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v20);
    sub_1D5D04BD4(v21);
    sub_1D5D04BD4(v20);

    goto LABEL_19;
  }

  v35 = v21;
  sub_1D5D04BD4(v20);
  sub_1D5D04BD4(v21);
  sub_1D5D04BD4(v20);
  v22 = static FormatVideoNodeContent.== infix(_:_:)(&v36, &v35);

  sub_1D5C8500C(v20);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (*(a1 + 80) != *(a2 + 80) || (sub_1D5E1ED0C(*(a1 + 88), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  v34 = v5;
  v24 = *(v23 + 64);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5CDE36C(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v27 = a2 + v24;
  v28 = v34;
  sub_1D5CDE36C(v27, &v18[v25], &qword_1EDF45AD0, v26);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v4) != 1)
  {
    sub_1D5CDE36C(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v29(&v18[v25], 1, v4) == 1)
    {
      v30.n128_f64[0] = (*(v28 + 8))(v13, v4);
      goto LABEL_28;
    }

    (*(v28 + 32))(v8, &v18[v25], v4);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v31 = sub_1D7261FBC();
    v32 = *(v28 + 8);
    v32(v8, v4);
    v32(v13, v4);
    sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v31 & 1) != 0;
  }

  if (v29(&v18[v25], 1, v4) != 1)
  {
LABEL_28:
    sub_1D69810BC(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v30);
    return 0;
  }

  sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D697E2C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v33 - v12;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v33 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v20 = *(a1 + 72);
  v21 = *(a2 + 72);
  if ((~v20 & 0xF000000000000007) == 0)
  {
    v34 = v5;
    sub_1D5D04BD4(v20);
    sub_1D5D04BD4(v21);
    if ((~v21 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v20);
      v5 = v34;
      goto LABEL_21;
    }

LABEL_19:
    sub_1D5C8500C(v20);
    sub_1D5C8500C(v21);
    return 0;
  }

  v36 = *(a1 + 72);
  if ((~v21 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v20);
    sub_1D5D04BD4(v21);
    sub_1D5D04BD4(v20);

    goto LABEL_19;
  }

  v35 = v21;
  sub_1D5D04BD4(v20);
  sub_1D5D04BD4(v21);
  sub_1D5D04BD4(v20);
  v22 = static FormatFont.== infix(_:_:)(&v36, &v35);

  sub_1D5C8500C(v20);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (*(a1 + 80) != *(a2 + 80) || (sub_1D5E1ED0C(*(a1 + 88), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  v34 = v5;
  v24 = *(v23 + 64);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5CDE36C(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v27 = a2 + v24;
  v28 = v34;
  sub_1D5CDE36C(v27, &v18[v25], &qword_1EDF45AD0, v26);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v4) != 1)
  {
    sub_1D5CDE36C(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v29(&v18[v25], 1, v4) == 1)
    {
      v30.n128_f64[0] = (*(v28 + 8))(v13, v4);
      goto LABEL_28;
    }

    (*(v28 + 32))(v8, &v18[v25], v4);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v31 = sub_1D7261FBC();
    v32 = *(v28 + 8);
    v32(v8, v4);
    v32(v13, v4);
    sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v31 & 1) != 0;
  }

  if (v29(&v18[v25], 1, v4) != 1)
  {
LABEL_28:
    sub_1D69810BC(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v30);
    return 0;
  }

  sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL sub_1D697E848(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v33 - v12;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v33 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v20 = *(a1 + 72);
  v21 = *(a2 + 72);
  if ((~v20 & 0xF000000000000007) == 0)
  {
    v34 = v5;
    sub_1D612612C(v20);
    sub_1D612612C(v21);
    if ((~v21 & 0xF000000000000007) == 0)
    {
      sub_1D5BD9F54(v20);
      v5 = v34;
      goto LABEL_21;
    }

LABEL_19:
    sub_1D5BD9F54(v20);
    sub_1D5BD9F54(v21);
    return 0;
  }

  v36 = *(a1 + 72);
  if ((~v21 & 0xF000000000000007) == 0)
  {
    sub_1D612612C(v20);
    sub_1D612612C(v21);
    sub_1D612612C(v20);

    goto LABEL_19;
  }

  v35 = v21;
  sub_1D612612C(v20);
  sub_1D612612C(v21);
  sub_1D612612C(v20);
  v22 = static FormatVideoPlayerContent.== infix(_:_:)(&v36, &v35);

  sub_1D5BD9F54(v20);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (*(a1 + 80) != *(a2 + 80) || (sub_1D5E1ED0C(*(a1 + 88), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  v34 = v5;
  v24 = *(v23 + 64);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5CDE36C(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v27 = a2 + v24;
  v28 = v34;
  sub_1D5CDE36C(v27, &v18[v25], &qword_1EDF45AD0, v26);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v4) != 1)
  {
    sub_1D5CDE36C(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v29(&v18[v25], 1, v4) == 1)
    {
      v30.n128_f64[0] = (*(v28 + 8))(v13, v4);
      goto LABEL_28;
    }

    (*(v28 + 32))(v8, &v18[v25], v4);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v31 = sub_1D7261FBC();
    v32 = *(v28 + 8);
    v32(v8, v4);
    v32(v13, v4);
    sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v31 & 1) != 0;
  }

  if (v29(&v18[v25], 1, v4) != 1)
  {
LABEL_28:
    sub_1D69810BC(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v30);
    return 0;
  }

  sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL static FormatPrimitivePropertyDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v7 = sub_1D725B76C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69D6A58];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v64 = &v58 - v15;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v12);
  v65 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v58 - v18;
  v71 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v66 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D726393C();
  v70 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v68 = &v58 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v27);
  v29 = &v58 - v28;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v30 = *(a2 + 56);
  if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != v30) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v58 = v11;
  v59 = v19;
  v60 = v8;
  v61 = v7;
  v62 = type metadata accessor for FormatPrimitivePropertyDefinition(0, a3, v69, v30);
  v31 = v62[13];
  v32 = *(TupleTypeMetadata2 + 48);
  v33 = *(v70 + 16);
  v33(v29, a1 + v31, v23);
  v63 = v32;
  v33(&v29[v32], a2 + v31, v23);
  v34 = *(v71 + 48);
  if (v34(v29, 1, a3) == 1)
  {
    if (v34(&v29[v63], 1, a3) == 1)
    {
      (*(v70 + 8))(v29, v23);
      goto LABEL_20;
    }

LABEL_18:
    (*(v67 + 8))(v29, TupleTypeMetadata2);
    return 0;
  }

  v33(v68, v29, v23);
  v35 = v63;
  if (v34(&v29[v63], 1, a3) == 1)
  {
    (*(v71 + 8))(v68, a3);
    goto LABEL_18;
  }

  v36 = v71;
  v37 = &v29[v35];
  v38 = v66;
  (*(v71 + 32))(v66, v37, a3);
  v39 = v68;
  v40 = sub_1D7261FBC();
  v41 = *(v36 + 8);
  v41(v38, a3);
  v41(v39, a3);
  (*(v70 + 8))(v29, v23);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v42 = v62;
  if (*(a1 + v62[14]) != *(a2 + v62[14]) || (sub_1D5E1ED0C(*(a1 + v62[15]), *(a2 + v62[15])) & 1) == 0)
  {
    return 0;
  }

  v43 = v42[16];
  v44 = *(v65 + 48);
  v45 = MEMORY[0x1E69D6A58];
  v46 = a1 + v43;
  v47 = v59;
  sub_1D5CDE36C(v46, v59, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5CDE36C(a2 + v43, v47 + v44, &qword_1EDF45AD0, v45);
  v49 = v60;
  v48 = v61;
  v50 = *(v60 + 48);
  if (v50(v47, 1, v61) != 1)
  {
    v52 = v64;
    sub_1D5CDE36C(v47, v64, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v50(v47 + v44, 1, v48) == 1)
    {
      v51.n128_f64[0] = (*(v49 + 8))(v52, v48);
      goto LABEL_27;
    }

    v54 = v47 + v44;
    v55 = v58;
    (*(v49 + 32))(v58, v54, v48);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v56 = sub_1D7261FBC();
    v57 = *(v49 + 8);
    v57(v55, v48);
    v57(v52, v48);
    sub_1D6981AE4(v47, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v56 & 1) != 0;
  }

  if (v50(v47 + v44, 1, v48) != 1)
  {
LABEL_27:
    sub_1D69810BC(v47, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v51);
    return 0;
  }

  sub_1D6981AE4(v47, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

uint64_t FormatPrimitivePropertyDefinition.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatPrimitivePropertyDefinition.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatPrimitivePropertyDefinition.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatPrimitivePropertyDefinition.description.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatPrimitivePropertyDefinition.default.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1D726393C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D697F740@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for FormatPrimitivePropertyDefinition(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  *a4 = sub_1D6981050(v5);
}

void sub_1D697F78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FormatPrimitivePropertyDefinition(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);

  FormatPrimitivePropertyDefinition.compilerFlags.setter(v5, v4);
}

void FormatPrimitivePropertyDefinition.compilerFlags.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);

  *(v2 + v4) = a1;
}

uint64_t FormatEnumPropertyDefinition.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatEnumPropertyDefinition.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatEnumPropertyDefinition.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatEnumPropertyDefinition.enumName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatEnumPropertyDefinition.description.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatEnumPropertyDefinition.default.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_1D697FB0C@<X0>(uint64_t *a1@<X8>)
{
  result = FormatPropertyDefinition.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D697FB38(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  sub_1D5B4BE9C(0, &qword_1EDF01CF0, sub_1D5D29154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = a3(0);
  *(inited + 64) = sub_1D5B4CDEC(a4, a5, &unk_1D7321584);
  *(inited + 32) = v11;
  *(inited + 40) = v12;
  *(inited + 48) = v13;
  a6(v11, v12, v13);

  sub_1D5D291B8(inited);
  return a1;
}

BOOL _s8NewsFeed28FormatEnumPropertyDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6A58];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v31 - v12;
  sub_1D6981A6C(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v9);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - v17;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v19 = *(a1 + 56);
  v20 = *(a2 + 56);
  if (v19)
  {
    if (!v20 || (*(a1 + 48) != *(a2 + 48) || v19 != v20) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if ((*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_1D72646CC() & 1) == 0 || *(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  v22 = *(a1 + 96);
  v23 = *(a2 + 96);
  if (v22)
  {
    if (!v23 || (*(a1 + 88) != *(a2 + 88) || v22 != v23) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if ((sub_1D633BDBC(*(a1 + 104), *(a2 + 104)) & 1) == 0 || *(a1 + 112) != *(a2 + 112) || (sub_1D5E1ED0C(*(a1 + 120), *(a2 + 120)) & 1) == 0)
  {
    return 0;
  }

  v24 = *(type metadata accessor for FormatEnumPropertyDefinition(0) + 56);
  v25 = *(v15 + 48);
  v26 = MEMORY[0x1E69D6A58];
  sub_1D5CDE36C(a1 + v24, v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5CDE36C(a2 + v24, &v18[v25], &qword_1EDF45AD0, v26);
  v27 = *(v5 + 48);
  if (v27(v18, 1, v4) != 1)
  {
    sub_1D5CDE36C(v18, v13, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v27(&v18[v25], 1, v4) == 1)
    {
      v28.n128_f64[0] = (*(v5 + 8))(v13, v4);
      goto LABEL_36;
    }

    (*(v5 + 32))(v8, &v18[v25], v4);
    sub_1D5B4CDEC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v29 = sub_1D7261FBC();
    v30 = *(v5 + 8);
    v30(v8, v4);
    v30(v13, v4);
    sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v29 & 1) != 0;
  }

  if (v27(&v18[v25], 1, v4) != 1)
  {
LABEL_36:
    sub_1D69810BC(v18, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v28);
    return 0;
  }

  sub_1D6981AE4(v18, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

BOOL _s8NewsFeed24FormatPropertyDefinitionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v135 = a2;
  v136 = a1;
  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v128 = &v116 - v4;
  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v127 = &v116 - v7;
  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v126 = &v116 - v10;
  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v125 = &v116 - v13;
  sub_1D5B5796C(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v124 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v123 = &v116 - v19;
  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v122 = &v116 - v22;
  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v121 = &v116 - v25;
  v26 = type metadata accessor for FormatEnumPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v120 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5714C(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v119 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v118 = &v116 - v34;
  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v117 = &v116 - v37;
  v38 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v134 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v133 = &v116 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v132 = &v116 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v131 = &v116 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v130 = &v116 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v116 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v116 - v59;
  MEMORY[0x1EEE9AC00](v61, v62);
  v129 = &v116 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v67 = &v116 - v66;
  MEMORY[0x1EEE9AC00](v68, v69);
  v71 = &v116 - v70;
  MEMORY[0x1EEE9AC00](v72, v73);
  v75 = &v116 - v74;
  MEMORY[0x1EEE9AC00](v76, v77);
  v79 = &v116 - v78;
  sub_1D6981A08(0);
  MEMORY[0x1EEE9AC00](v80 - 8, v81);
  v83 = &v116 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(v84 + 56);
  sub_1D695B264(v136, v83);
  sub_1D695B264(v135, &v83[v85]);
  v86 = v83;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D695B264(v83, v79);
        if (!swift_getEnumCaseMultiPayload())
        {
          v115 = v117;
          sub_1D5CAE630(&v83[v85], v117);
          v92 = sub_1D697AEFC(v79, v115);
          sub_1D62B6EE8(v115);
          sub_1D62B6EE8(v79);
          v105 = type metadata accessor for FormatPropertyDefinition;
          goto LABEL_54;
        }

        sub_1D62B6EE8(v79);
        goto LABEL_53;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_1D695B264(v83, v75);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v88 = &qword_1EDF43F40;
          v89 = &type metadata for FormatColor;
          v90 = sub_1D5B5706C;
          v91 = v118;
          sub_1D695B2C8(v86 + v85, v118, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor);
          v92 = sub_1D697B3C4(v75, v91);
          sub_1D695B34C(v91, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor);
          v93 = v75;
LABEL_38:
          v100 = v88;
          v101 = v90;
          goto LABEL_39;
        }

        v109 = &qword_1EDF43F40;
        v110 = &type metadata for FormatColor;
        v112 = sub_1D5B5706C;
        v113 = v75;
        goto LABEL_52;
      }

      sub_1D695B264(v83, v71);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v107 = v119;
        sub_1D5CADA34(&v83[v85], v119, sub_1D5B5714C);
        v92 = sub_1D697B94C(v71, v107);
        v96 = sub_1D5B5714C;
        sub_1D6983E84(v107, sub_1D5B5714C);
        v97 = v71;
        goto LABEL_30;
      }

      sub_1D6983E84(v71, sub_1D5B5714C);
LABEL_53:
      v92 = 0;
      v105 = sub_1D6981A08;
      goto LABEL_54;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        sub_1D695B264(v83, v60);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v108 = v122;
          sub_1D62B6B70(&v83[v85], v122);
          v92 = sub_1D697C618(v60, v108);
          sub_1D62B6C00(v108);
          sub_1D62B6C00(v60);
          v105 = type metadata accessor for FormatPropertyDefinition;
          goto LABEL_54;
        }

        sub_1D62B6C00(v60);
        goto LABEL_53;
      }

      v98 = v129;
      sub_1D695B264(v83, v129);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v89 = MEMORY[0x1E69E7DE0];
        v99 = v121;
        sub_1D695B2C8(&v83[v85], v121, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
        v92 = sub_1D697C148(v98, v99);
        sub_1D695B34C(v99, &qword_1EDF43F68, sub_1D5B577E4, v89);
        v93 = v98;
        v100 = &qword_1EDF43F68;
        v101 = sub_1D5B577E4;
LABEL_39:
        sub_1D695B34C(v93, v100, v101, v89);
        v105 = type metadata accessor for FormatPropertyDefinition;
        goto LABEL_54;
      }

      v109 = &qword_1EDF43F68;
      v110 = MEMORY[0x1E69E7DE0];
      v111 = sub_1D5B577E4;
LABEL_51:
      v112 = v111;
      v113 = v98;
LABEL_52:
      sub_1D695B34C(v113, v109, v112, v110);
      goto LABEL_53;
    }

    sub_1D695B264(v83, v67);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1D6983E84(v67, type metadata accessor for FormatEnumPropertyDefinition);
      goto LABEL_53;
    }

    v106 = v120;
    sub_1D5CADA34(&v83[v85], v120, type metadata accessor for FormatEnumPropertyDefinition);
    v92 = _s8NewsFeed28FormatEnumPropertyDefinitionV2eeoiySbAC_ACtFZ_0(v67, v106);
    v96 = type metadata accessor for FormatEnumPropertyDefinition;
    sub_1D6983E84(v106, type metadata accessor for FormatEnumPropertyDefinition);
    v97 = v67;
LABEL_30:
    sub_1D6983E84(v97, v96);
    v105 = type metadata accessor for FormatPropertyDefinition;
    goto LABEL_54;
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      v98 = v132;
      sub_1D695B264(v83, v132);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v109 = &qword_1EDF43F60;
        v110 = &type metadata for FormatVideoNodeContent;
        v111 = sub_1D5B57AA8;
        goto LABEL_51;
      }

      v88 = &qword_1EDF43F60;
      v89 = &type metadata for FormatVideoNodeContent;
      v90 = sub_1D5B57AA8;
      v102 = v126;
      sub_1D695B2C8(v86 + v85, v126, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent);
      v103 = sub_1D697DD38(v98, v102);
    }

    else if (EnumCaseMultiPayload == 10)
    {
      v98 = v133;
      sub_1D695B264(v83, v133);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v109 = &qword_1EDF43F48;
        v110 = &type metadata for FormatFont;
        v111 = sub_1D5B55668;
        goto LABEL_51;
      }

      v88 = &qword_1EDF43F48;
      v89 = &type metadata for FormatFont;
      v90 = sub_1D5B55668;
      v102 = v127;
      sub_1D695B2C8(v86 + v85, v127, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont);
      v103 = sub_1D697E2C0(v98, v102);
    }

    else
    {
      v98 = v134;
      sub_1D695B264(v83, v134);
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v109 = &qword_1EDF43F50;
        v110 = &type metadata for FormatVideoPlayerContent;
        v111 = sub_1D5B55F44;
        goto LABEL_51;
      }

      v88 = &qword_1EDF43F50;
      v89 = &type metadata for FormatVideoPlayerContent;
      v90 = sub_1D5B55F44;
      v102 = v128;
      sub_1D695B2C8(v86 + v85, v128, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent);
      v103 = sub_1D697E848(v98, v102);
    }

    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v94 = v130;
      sub_1D695B264(v83, v130);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        sub_1D6983E84(v94, sub_1D5B5796C);
        goto LABEL_53;
      }

      v95 = v124;
      sub_1D5CADA34(&v83[v85], v124, sub_1D5B5796C);
      v92 = sub_1D697CFB4(v94, v95);
      v96 = sub_1D5B5796C;
      sub_1D6983E84(v95, sub_1D5B5796C);
      v97 = v94;
      goto LABEL_30;
    }

    v98 = v131;
    sub_1D695B264(v83, v131);
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      v109 = &qword_1EDF43F58;
      v110 = &type metadata for FormatAsyncImageContent;
      v111 = sub_1D5B57A00;
      goto LABEL_51;
    }

    v88 = &qword_1EDF43F58;
    v89 = &type metadata for FormatAsyncImageContent;
    v90 = sub_1D5B57A00;
    v102 = v125;
    sub_1D695B2C8(v86 + v85, v125, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent);
    v103 = sub_1D697D7B0(v98, v102);
LABEL_37:
    v92 = v103;
    sub_1D695B34C(v102, v88, v90, v89);
    v93 = v98;
    goto LABEL_38;
  }

  sub_1D695B264(v83, v56);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1D62B6AE8(v56);
    goto LABEL_53;
  }

  v104 = v123;
  sub_1D5CAD9A4(&v83[v85], v123);
  v92 = sub_1D697CADC(v56, v104);
  sub_1D62B6AE8(v104);
  sub_1D62B6AE8(v56);
  v105 = type metadata accessor for FormatPropertyDefinition;
LABEL_54:
  sub_1D6983E84(v86, v105);
  return v92;
}

uint64_t sub_1D69810BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), __n128 a5)
{
  sub_1D6981A6C(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6981118(void *a1)
{
  a1[1] = sub_1D5B4CDEC(&qword_1EDF449F0, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);
  a1[2] = sub_1D5B4CDEC(&qword_1EDF449F8, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);
  result = sub_1D5B4CDEC(&qword_1EC88E940, type metadata accessor for FormatPropertyDefinition, &protocol conformance descriptor for FormatPropertyDefinition);
  a1[3] = result;
  return result;
}

uint64_t sub_1D69811C4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6981200(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6981280(uint64_t a1)
{
  result = sub_1D5B4CDEC(&qword_1EC88E948, type metadata accessor for FormatEnumPropertyDefinition, &protocol conformance descriptor for FormatEnumPropertyDefinition);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D69812D8(void *a1)
{
  a1[1] = sub_1D5B4CDEC(&qword_1EC88E950, type metadata accessor for FormatEnumPropertyDefinition, &protocol conformance descriptor for FormatEnumPropertyDefinition);
  a1[2] = sub_1D5B4CDEC(&qword_1EC88E958, type metadata accessor for FormatEnumPropertyDefinition, &protocol conformance descriptor for FormatEnumPropertyDefinition);
  result = sub_1D5B4CDEC(&qword_1EC88E960, type metadata accessor for FormatEnumPropertyDefinition, &protocol conformance descriptor for FormatEnumPropertyDefinition);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6981384(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1D725B76C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  if (!v7)
  {
    ++v15;
  }

  v16 = *(v6 + 80);
  v17 = *(v10 + 80);
  if (v11)
  {
    v18 = *(*(v9 - 8) + 64);
  }

  else
  {
    v18 = *(*(v9 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v17 + 16;
  if (a2 <= v14)
  {
    goto LABEL_40;
  }

  v20 = v18 + ((v19 + ((((v16 + 65) & ~v16) + v15) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v23 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v23 < 2)
    {
LABEL_40:
      if ((v13 & 0x80000000) == 0)
      {
        v27 = *(a1 + 1);
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }

      v29 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v16 + 17) & ~v16;
      if (v8 == v14)
      {
        if (v7 < 2)
        {
          return 0;
        }

        v30 = (*(v6 + 48))(v29, v7, v5);
      }

      else
      {
        v30 = (*(v10 + 48))((v19 + ((v29 + v15) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
      }

      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_40;
  }

LABEL_27:
  v24 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v24 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v25 = v20;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v14 + (v26 | v24) + 1;
}

void sub_1D6981640(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(sub_1D725B76C() - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 80);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v10 <= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v10;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v9)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  if (!v13)
  {
    ++v17;
  }

  v21 = ((v16 + 16 + ((((v15 + 65) & ~v15) + v20) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + v17;
  if (a3 <= v19)
  {
    goto LABEL_29;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v19 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v11 = 4;
      if (v19 >= a2)
      {
        goto LABEL_39;
      }

      goto LABEL_30;
    }

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
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

LABEL_29:
    if (v19 >= a2)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v11 = 1;
  if (v19 >= a2)
  {
LABEL_39:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_46;
      }

      *&a1[v21] = 0;
    }

    else if (v11)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    if (!a2)
    {
      return;
    }

LABEL_46:
    if ((v18 & 0x80000000) != 0)
    {
      v27 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 17) & ~v15;
      if (v10 == v19)
      {
        if (v9 >= 2)
        {
          v28 = *(v31 + 56);

          v28(v27, a2 + 1, v9, v7);
        }
      }

      else
      {
        v29 = *(v12 + 56);
        v30 = (v16 + 16 + ((v27 + v20) & 0xFFFFFFFFFFFFFFF8)) & ~v16;

        v29(v30, a2 + 1);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

LABEL_30:
  v24 = ~v19 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v11 > 1)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_61:
    if (v11 > 1)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_61;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v11 > 1)
    {
LABEL_65:
      if (v11 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v11 > 1)
    {
      goto LABEL_65;
    }
  }

LABEL_62:
  if (v11)
  {
    a1[v21] = v25;
  }
}

void sub_1D6981A08(uint64_t a1)
{
  if (!qword_1EC88E968)
  {
    type metadata accessor for FormatPropertyDefinition(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88E968);
    }
  }
}

void sub_1D6981A6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5B4BE9C(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6981AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B4BE9C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6981B54(uint64_t a1)
{
  if (!qword_1EDF08978)
  {
    sub_1D6981BE8(255);
    v3 = v2;
    v4 = sub_1D5B4CDEC(&qword_1EDF02CD8, sub_1D6981BE8, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08978);
    }
  }
}

void sub_1D6981BE8(uint64_t a1)
{
  if (!qword_1EDF02CD0)
  {
    sub_1D5CAE35C(255);
    sub_1D5B4CDEC(&qword_1EDF24DC8, sub_1D5CAE35C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02CD0);
    }
  }
}

void sub_1D6981CF8(uint64_t a1)
{
  if (!qword_1EDF08988)
  {
    sub_1D6981D8C(255);
    v3 = v2;
    v4 = sub_1D5B4CDEC(&qword_1EDF02CF8, sub_1D6981D8C, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08988);
    }
  }
}

void sub_1D6981D8C(uint64_t a1)
{
  if (!qword_1EDF02CF0)
  {
    sub_1D6981E20(255);
    sub_1D5B4CDEC(&qword_1EDF24DE8, sub_1D6981E20, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02CF0);
    }
  }
}

void sub_1D6981E20(uint64_t a1)
{
  if (!qword_1EDF24DE0)
  {
    sub_1D5B57004(255, &qword_1EDF1E4B8, sub_1D5B5706C, &type metadata for FormatColor, _s10CodingKeysOMa_94);
    v5[0] = v2;
    v5[1] = sub_1D6981EE0();
    v5[2] = sub_1D6981F70();
    v5[3] = sub_1D6982000();
    v3 = type metadata accessor for FormatCodingKeysContainer(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDF24DE0);
    }
  }
}

unint64_t sub_1D6981EE0()
{
  result = qword_1EDF1E4C0;
  if (!qword_1EDF1E4C0)
  {
    sub_1D5B57004(255, &qword_1EDF1E4B8, sub_1D5B5706C, &type metadata for FormatColor, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E4C0);
  }

  return result;
}

unint64_t sub_1D6981F70()
{
  result = qword_1EDF1E4C8;
  if (!qword_1EDF1E4C8)
  {
    sub_1D5B57004(255, &qword_1EDF1E4B8, sub_1D5B5706C, &type metadata for FormatColor, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E4C8);
  }

  return result;
}

unint64_t sub_1D6982000()
{
  result = qword_1EDF1E4D0;
  if (!qword_1EDF1E4D0)
  {
    sub_1D5B57004(255, &qword_1EDF1E4B8, sub_1D5B5706C, &type metadata for FormatColor, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E4D0);
  }

  return result;
}

void sub_1D69820F4(uint64_t a1)
{
  if (!qword_1EC88E970)
  {
    sub_1D6982188(255);
    v3 = v2;
    v4 = sub_1D5B4CDEC(&qword_1EC88E9B0, sub_1D6982188, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC88E970);
    }
  }
}

void sub_1D6982188(uint64_t a1)
{
  if (!qword_1EC88E978)
  {
    sub_1D698221C(255);
    sub_1D5B4CDEC(&qword_1EC88E9A8, sub_1D698221C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88E978);
    }
  }
}

void sub_1D698221C(uint64_t a1)
{
  if (!qword_1EC88E980)
  {
    sub_1D6982320(255);
    v5[0] = v2;
    v5[1] = sub_1D5B4CDEC(&qword_1EC88E990, sub_1D6982320, &unk_1D72D4940);
    v5[2] = sub_1D5B4CDEC(&qword_1EC88E998, sub_1D6982320, &unk_1D72D48F0);
    v5[3] = sub_1D5B4CDEC(&qword_1EC88E9A0, sub_1D6982320, &unk_1D72D48C8);
    v3 = type metadata accessor for FormatCodingKeysContainer(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EC88E980);
    }
  }
}

void sub_1D6982320(uint64_t a1)
{
  if (!qword_1EC88E988)
  {
    v2 = sub_1D725891C();
    v3 = sub_1D5B4CDEC(&qword_1EDF45B20, MEMORY[0x1E6969530], &protocol conformance descriptor for Date);
    v5 = _s10CodingKeysOMa_94(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC88E988);
    }
  }
}

void sub_1D6982418(uint64_t a1)
{
  if (!qword_1EDF08998)
  {
    sub_1D69824AC(255);
    v3 = v2;
    v4 = sub_1D5B4CDEC(&qword_1EDF02D18, sub_1D69824AC, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08998);
    }
  }
}

void sub_1D69824AC(uint64_t a1)
{
  if (!qword_1EDF02D10)
  {
    sub_1D6982540(255);
    sub_1D5B4CDEC(&qword_1EDF24E08, sub_1D6982540, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02D10);
    }
  }
}

void sub_1D6982540(uint64_t a1)
{
  if (!qword_1EDF24E00)
  {
    sub_1D5B57004(255, &qword_1EDF1E4F8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], _s10CodingKeysOMa_94);
    v5[0] = v2;
    v5[1] = sub_1D6982600();
    v5[2] = sub_1D6982690();
    v5[3] = sub_1D6982720();
    v3 = type metadata accessor for FormatCodingKeysContainer(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDF24E00);
    }
  }
}

unint64_t sub_1D6982600()
{
  result = qword_1EDF1E500;
  if (!qword_1EDF1E500)
  {
    sub_1D5B57004(255, &qword_1EDF1E4F8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E500);
  }

  return result;
}

unint64_t sub_1D6982690()
{
  result = qword_1EDF1E508;
  if (!qword_1EDF1E508)
  {
    sub_1D5B57004(255, &qword_1EDF1E4F8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E508);
  }

  return result;
}

unint64_t sub_1D6982720()
{
  result = qword_1EDF1E510;
  if (!qword_1EDF1E510)
  {
    sub_1D5B57004(255, &qword_1EDF1E4F8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E510);
  }

  return result;
}

void sub_1D6982814(uint64_t a1)
{
  if (!qword_1EDF08970)
  {
    sub_1D69828A8(255);
    v3 = v2;
    v4 = sub_1D5B4CDEC(&qword_1EDF02CC8, sub_1D69828A8, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08970);
    }
  }
}

void sub_1D69828A8(uint64_t a1)
{
  if (!qword_1EDF02CC0)
  {
    sub_1D698293C(255);
    sub_1D5B4CDEC(&qword_1EDF0C3F0, sub_1D698293C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02CC0);
    }
  }
}

void sub_1D698293C(uint64_t a1)
{
  if (!qword_1EDF0C3E8)
  {
    sub_1D5B4B5A8(255, &qword_1EDF07D70, MEMORY[0x1E69E6530], &protocol witness table for Int, _s10CodingKeysOMa_94);
    v5[0] = v2;
    v5[1] = sub_1D69829F0();
    v5[2] = sub_1D6982A74();
    v5[3] = sub_1D6982AF8();
    v3 = type metadata accessor for FormatCodingKeysContainer(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDF0C3E8);
    }
  }
}

unint64_t sub_1D69829F0()
{
  result = qword_1EDF07D78;
  if (!qword_1EDF07D78)
  {
    sub_1D5B4B5A8(255, &qword_1EDF07D70, MEMORY[0x1E69E6530], &protocol witness table for Int, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D78);
  }

  return result;
}

unint64_t sub_1D6982A74()
{
  result = qword_1EDF07D80;
  if (!qword_1EDF07D80)
  {
    sub_1D5B4B5A8(255, &qword_1EDF07D70, MEMORY[0x1E69E6530], &protocol witness table for Int, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D80);
  }

  return result;
}

unint64_t sub_1D6982AF8()
{
  result = qword_1EDF07D88;
  if (!qword_1EDF07D88)
  {
    sub_1D5B4B5A8(255, &qword_1EDF07D70, MEMORY[0x1E69E6530], &protocol witness table for Int, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D88);
  }

  return result;
}

void sub_1D6982BE0(uint64_t a1)
{
  if (!qword_1EDF08980)
  {
    sub_1D6982C74(255);
    v3 = v2;
    v4 = sub_1D5B4CDEC(&qword_1EDF02CE8, sub_1D6982C74, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08980);
    }
  }
}

void sub_1D6982C74(uint64_t a1)
{
  if (!qword_1EDF02CE0)
  {
    sub_1D5CAD30C(255);
    sub_1D5B4CDEC(&qword_1EDF24DD8, sub_1D5CAD30C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02CE0);
    }
  }
}

void sub_1D6982D6C(uint64_t a1)
{
  if (!qword_1EDF089A0)
  {
    sub_1D6982E00(255);
    v3 = v2;
    v4 = sub_1D5B4CDEC(&qword_1EDF02D28, sub_1D6982E00, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF089A0);
    }
  }
}

void sub_1D6982E00(uint64_t a1)
{
  if (!qword_1EDF02D20)
  {
    sub_1D5CAF010(255);
    sub_1D5B4CDEC(&qword_1EDF24E18, sub_1D5CAF010, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02D20);
    }
  }
}

void sub_1D6982EF8(uint64_t a1)
{
  if (!qword_1EDF08990)
  {
    sub_1D6982F8C(255);
    v3 = v2;
    v4 = sub_1D5B4CDEC(&qword_1EDF02D08, sub_1D6982F8C, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08990);
    }
  }
}

void sub_1D6982F8C(uint64_t a1)
{
  if (!qword_1EDF02D00)
  {
    sub_1D6983020(255);
    sub_1D5B4CDEC(&qword_1EDF24DF8, sub_1D6983020, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02D00);
    }
  }
}

void sub_1D6983020(uint64_t a1)
{
  if (!qword_1EDF24DF0)
  {
    sub_1D5B57004(255, &qword_1EDF1E4D8, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, _s10CodingKeysOMa_94);
    v5[0] = v2;
    v5[1] = sub_1D69830E0();
    v5[2] = sub_1D6983170();
    v5[3] = sub_1D6983200();
    v3 = type metadata accessor for FormatCodingKeysContainer(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDF24DF0);
    }
  }
}

unint64_t sub_1D69830E0()
{
  result = qword_1EDF1E4E0;
  if (!qword_1EDF1E4E0)
  {
    sub_1D5B57004(255, &qword_1EDF1E4D8, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E4E0);
  }

  return result;
}

unint64_t sub_1D6983170()
{
  result = qword_1EDF1E4E8;
  if (!qword_1EDF1E4E8)
  {
    sub_1D5B57004(255, &qword_1EDF1E4D8, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E4E8);
  }

  return result;
}

unint64_t sub_1D6983200()
{
  result = qword_1EDF1E4F0;
  if (!qword_1EDF1E4F0)
  {
    sub_1D5B57004(255, &qword_1EDF1E4D8, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E4F0);
  }

  return result;
}

void sub_1D69832F4(uint64_t a1)
{
  if (!qword_1EC88E9B8)
  {
    sub_1D6983388(255);
    v3 = v2;
    v4 = sub_1D5B4CDEC(&qword_1EC88E9F8, sub_1D6983388, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC88E9B8);
    }
  }
}

void sub_1D6983388(uint64_t a1)
{
  if (!qword_1EC88E9C0)
  {
    sub_1D698341C(255);
    sub_1D5B4CDEC(&qword_1EC88E9F0, sub_1D698341C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88E9C0);
    }
  }
}

void sub_1D698341C(uint64_t a1)
{
  if (!qword_1EC88E9C8)
  {
    sub_1D5B57004(255, &qword_1EC88E9D0, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, _s10CodingKeysOMa_94);
    v5[0] = v2;
    v5[1] = sub_1D69834DC();
    v5[2] = sub_1D698356C();
    v5[3] = sub_1D69835FC();
    v3 = type metadata accessor for FormatCodingKeysContainer(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EC88E9C8);
    }
  }
}

unint64_t sub_1D69834DC()
{
  result = qword_1EC88E9D8;
  if (!qword_1EC88E9D8)
  {
    sub_1D5B57004(255, &qword_1EC88E9D0, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E9D8);
  }

  return result;
}

unint64_t sub_1D698356C()
{
  result = qword_1EC88E9E0;
  if (!qword_1EC88E9E0)
  {
    sub_1D5B57004(255, &qword_1EC88E9D0, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E9E0);
  }

  return result;
}

unint64_t sub_1D69835FC()
{
  result = qword_1EC88E9E8;
  if (!qword_1EC88E9E8)
  {
    sub_1D5B57004(255, &qword_1EC88E9D0, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E9E8);
  }

  return result;
}

void sub_1D69836F0(uint64_t a1)
{
  if (!qword_1EC88EA00)
  {
    sub_1D6983784(255);
    v3 = v2;
    v4 = sub_1D5B4CDEC(&qword_1EC88EA40, sub_1D6983784, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC88EA00);
    }
  }
}

void sub_1D6983784(uint64_t a1)
{
  if (!qword_1EC88EA08)
  {
    sub_1D6983818(255);
    sub_1D5B4CDEC(&qword_1EC88EA38, sub_1D6983818, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88EA08);
    }
  }
}

void sub_1D6983818(uint64_t a1)
{
  if (!qword_1EC88EA10)
  {
    sub_1D5B57004(255, &qword_1EC88EA18, sub_1D5B55668, &type metadata for FormatFont, _s10CodingKeysOMa_94);
    v5[0] = v2;
    v5[1] = sub_1D69838D8();
    v5[2] = sub_1D6983968();
    v5[3] = sub_1D69839F8();
    v3 = type metadata accessor for FormatCodingKeysContainer(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EC88EA10);
    }
  }
}

unint64_t sub_1D69838D8()
{
  result = qword_1EC88EA20;
  if (!qword_1EC88EA20)
  {
    sub_1D5B57004(255, &qword_1EC88EA18, sub_1D5B55668, &type metadata for FormatFont, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EA20);
  }

  return result;
}

unint64_t sub_1D6983968()
{
  result = qword_1EC88EA28;
  if (!qword_1EC88EA28)
  {
    sub_1D5B57004(255, &qword_1EC88EA18, sub_1D5B55668, &type metadata for FormatFont, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EA28);
  }

  return result;
}

unint64_t sub_1D69839F8()
{
  result = qword_1EC88EA30;
  if (!qword_1EC88EA30)
  {
    sub_1D5B57004(255, &qword_1EC88EA18, sub_1D5B55668, &type metadata for FormatFont, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EA30);
  }

  return result;
}

void sub_1D6983AEC(uint64_t a1)
{
  if (!qword_1EC88EA48)
  {
    sub_1D6983B80(255);
    v3 = v2;
    v4 = sub_1D5B4CDEC(&qword_1EC88EA88, sub_1D6983B80, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC88EA48);
    }
  }
}

void sub_1D6983B80(uint64_t a1)
{
  if (!qword_1EC88EA50)
  {
    sub_1D6983C14(255);
    sub_1D5B4CDEC(&qword_1EC88EA80, sub_1D6983C14, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88EA50);
    }
  }
}

void sub_1D6983C14(uint64_t a1)
{
  if (!qword_1EC88EA58)
  {
    sub_1D5B57004(255, &qword_1EC88EA60, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, _s10CodingKeysOMa_94);
    v5[0] = v2;
    v5[1] = sub_1D6983CD4();
    v5[2] = sub_1D6983D64();
    v5[3] = sub_1D6983DF4();
    v3 = type metadata accessor for FormatCodingKeysContainer(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EC88EA58);
    }
  }
}

unint64_t sub_1D6983CD4()
{
  result = qword_1EC88EA68;
  if (!qword_1EC88EA68)
  {
    sub_1D5B57004(255, &qword_1EC88EA60, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EA68);
  }

  return result;
}

unint64_t sub_1D6983D64()
{
  result = qword_1EC88EA70;
  if (!qword_1EC88EA70)
  {
    sub_1D5B57004(255, &qword_1EC88EA60, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EA70);
  }

  return result;
}

unint64_t sub_1D6983DF4()
{
  result = qword_1EC88EA78;
  if (!qword_1EC88EA78)
  {
    sub_1D5B57004(255, &qword_1EC88EA60, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EA78);
  }

  return result;
}

uint64_t sub_1D6983E84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_29Tm(void (*a1)(void, void, void, __n128))
{

  (a1)(*(v1 + 24), *(v1 + 32), *(v1 + 40));

  return swift_deallocObject();
}

void sub_1D6983FB4(uint64_t a1)
{
  if (!qword_1EDF19E00)
  {
    sub_1D6981E20(255);
    sub_1D5B4CDEC(&qword_1EDF24DE8, sub_1D6981E20, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19E00);
    }
  }
}

void sub_1D6984048(uint64_t a1)
{
  if (!qword_1EC88EA90)
  {
    sub_1D698221C(255);
    sub_1D5B4CDEC(&qword_1EC88E9A8, sub_1D698221C, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88EA90);
    }
  }
}

void sub_1D69840DC(uint64_t a1)
{
  if (!qword_1EDF19E10)
  {
    sub_1D6982540(255);
    sub_1D5B4CDEC(&qword_1EDF24E08, sub_1D6982540, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19E10);
    }
  }
}

void sub_1D6984170(uint64_t a1)
{
  if (!qword_1EDF03D08)
  {
    sub_1D698293C(255);
    sub_1D5B4CDEC(&qword_1EDF0C3F0, sub_1D698293C, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03D08);
    }
  }
}

void sub_1D6984204(uint64_t a1)
{
  if (!qword_1EDF19E08)
  {
    sub_1D6983020(255);
    sub_1D5B4CDEC(&qword_1EDF24DF8, sub_1D6983020, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19E08);
    }
  }
}

void sub_1D6984298(uint64_t a1)
{
  if (!qword_1EC88EA98)
  {
    sub_1D698341C(255);
    sub_1D5B4CDEC(&qword_1EC88E9F0, sub_1D698341C, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88EA98);
    }
  }
}

void sub_1D698432C(uint64_t a1)
{
  if (!qword_1EC88EAA0)
  {
    sub_1D6983818(255);
    sub_1D5B4CDEC(&qword_1EC88EA38, sub_1D6983818, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88EAA0);
    }
  }
}

void sub_1D69843C0(uint64_t a1)
{
  if (!qword_1EC88EAA8)
  {
    sub_1D6983C14(255);
    sub_1D5B4CDEC(&qword_1EC88EA80, sub_1D6983C14, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88EAA8);
    }
  }
}

unint64_t sub_1D6984454()
{
  result = qword_1EDF04CE8;
  if (!qword_1EDF04CE8)
  {
    sub_1D5B4BE9C(255, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04CE8);
  }

  return result;
}

void sub_1D69844DC(uint64_t a1)
{
  if (!qword_1EC88EAB0)
  {
    sub_1D5B4BE9C(255, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88EAB0);
    }
  }
}

void sub_1D69845B8(uint64_t a1)
{
  v2 = v1;
  v29 = *(a1 + 16);
  if (!v29)
  {
    return;
  }

  v3 = 0;
  v28 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = (v28 + 80 * v3);
    v6 = v5[1];
    v35[0] = *v5;
    v35[1] = v6;
    v7 = v5[4];
    *&v36[16] = v5[3];
    *&v36[32] = v7;
    *v36 = v5[2];
    v33[1] = v6;
    *&v34[8] = *&v36[8];
    *&v34[24] = *&v36[24];
    *v34 = *v36 & 0x7FFFFFFFFFFFFFFFLL;
    *&v34[40] = *(&v7 + 1);
    v32[2] = *v34;
    v32[3] = *&v34[16];
    v32[4] = *&v34[32];
    v33[0] = v35[0];
    v32[0] = v35[0];
    v32[1] = v6;
    sub_1D5CE9930(v35, v31);
    sub_1D5CE9930(v35, v31);
    sub_1D5CE9930(v35, v31);
    sub_1D5CEBCF0();
    v9 = sub_1D6D5A96C(v8);
    sub_1D5CB71DC(v33);

    sub_1D5CEC67C(v35);
    sub_1D5CEC67C(v35);
    v10 = v9 >> 62;
    if (v9 >> 62)
    {
      v11 = sub_1D7263BFC();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v4 >> 62;
    if (v4 >> 62)
    {
      v27 = sub_1D7263BFC();
      v14 = v27 + v11;
      if (__OFADD__(v27, v11))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_32;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v11;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v12)
      {
        v16 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v12)
    {
      goto LABEL_14;
    }

LABEL_15:
    v4 = sub_1D7263DDC();
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v10)
    {
      break;
    }

    v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v18 >> 1) - v17) < v37)
    {
      goto LABEL_35;
    }

    v30 = v2;
    if (v10)
    {
      if (v19 < 1)
      {
        goto LABEL_37;
      }

      sub_1D5C44878(0);
      sub_1D5B85F48(&qword_1EC88E4D0, sub_1D5C44878, MEMORY[0x1E69E6340]);
      for (i = 0; i != v19; ++i)
      {
        v21 = sub_1D6D87860(v32, i, v9);
        v23 = *v22;
        swift_unknownObjectRetain();
        (v21)(v32, 0);
        *(v16 + 8 * v17 + 32 + 8 * i) = v23;
      }
    }

    else
    {
      sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
      swift_arrayInitWithCopy();
    }

    v2 = v30;
    if (v37 >= 1)
    {
      v24 = *(v16 + 16);
      v25 = __OFADD__(v24, v37);
      v26 = v24 + v37;
      if (v25)
      {
        goto LABEL_36;
      }

      *(v16 + 16) = v26;
    }

LABEL_4:
    if (++v3 == v29)
    {
      return;
    }
  }

  v19 = sub_1D7263BFC();
  if (v19)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void FormatContent.Resolved.slotItems.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent.Resolved(0) + 36));
  v33 = *(v1 + 16);
  if (!v33)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v18 = *(v4 + 2);
    if (!v18)
    {
LABEL_38:

      return;
    }

    v19 = 0;
    v20 = v4 + 64;
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v19 >= *(v4 + 2))
      {
        goto LABEL_42;
      }

      v22 = *v20;
      v23 = *(*v20 + 16);
      v24 = v21[2];
      v25 = v24 + v23;
      if (__OFADD__(v24, v23))
      {
        goto LABEL_43;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v25 <= v21[3] >> 1)
      {
        if (!*(v22 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v24 <= v25)
        {
          v27 = v24 + v23;
        }

        else
        {
          v27 = v24;
        }

        v21 = sub_1D5BFBABC(isUniquelyReferenced_nonNull_native, v27, 1, v21, &unk_1EDF196C0, type metadata accessor for FormatContentSlotItemObject.Resolved, type metadata accessor for FormatContentSlotItemObject.Resolved);
        if (!*(v22 + 16))
        {
LABEL_22:

          if (v23)
          {
            goto LABEL_44;
          }

          goto LABEL_23;
        }
      }

      v28 = v4;
      v29 = (v21[3] >> 1) - v21[2];
      type metadata accessor for FormatContentSlotItemObject.Resolved(0);
      if (v29 < v23)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      v4 = v28;
      if (v23)
      {
        v30 = v21[2];
        v16 = __OFADD__(v30, v23);
        v31 = v30 + v23;
        if (v16)
        {
          goto LABEL_48;
        }

        v21[2] = v31;
      }

LABEL_23:
      ++v19;
      v20 += 64;
      if (v18 == v19)
      {
        goto LABEL_38;
      }
    }
  }

  v2 = 0;
  v3 = (v1 + 32);
  v4 = MEMORY[0x1E69E7CC0];
  v32 = v1;
  while (v2 < *(v1 + 16))
  {
    v35[0] = *v3;
    v6 = v3[3];
    v5 = v3[4];
    v7 = v3[2];
    v35[1] = v3[1];
    v35[2] = v7;
    v35[3] = v6;
    v35[4] = v5;
    v8 = *(&v6 + 1);
    sub_1D5CE9930(v35, v34);

    v9 = *(v8 + 16);
    v10 = *(v4 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_40;
    }

    v12 = swift_isUniquelyReferenced_nonNull_native();
    if (v12 && (v13 = *(v4 + 3) >> 1, v13 >= v11))
    {
      if (!*(v8 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v14 = v10 + v9;
      }

      else
      {
        v14 = v10;
      }

      v4 = sub_1D5CEBE6C(v12, v14, 1, v4, &qword_1EDF19898, &type metadata for FormatContentSlot.Resolved);
      v13 = *(v4 + 3) >> 1;
      if (!*(v8 + 16))
      {
LABEL_3:

        if (v9)
        {
          goto LABEL_41;
        }

        goto LABEL_4;
      }
    }

    if (v13 - *(v4 + 2) < v9)
    {
      goto LABEL_45;
    }

    swift_arrayInitWithCopy();

    if (v9)
    {
      v15 = *(v4 + 2);
      v16 = __OFADD__(v15, v9);
      v17 = v15 + v9;
      if (v16)
      {
        goto LABEL_47;
      }

      *(v4 + 2) = v17;
    }

LABEL_4:
    ++v2;
    v3 += 5;
    v1 = v32;
    if (v33 == v2)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

id FormatContent.Resolved.convertSection(_:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v43 = a1[2];
  v40 = v2;
  v41 = type metadata accessor for FormatContent.Resolved(0);
  v5 = *&v2[v41[9]];
  v6 = *(v5 + 16);
  if (v6)
  {
    v36 = v4;
    v38 = v3;
    v66 = MEMORY[0x1E69E7CC0];
    sub_1D6997448(0, v6, 0);
    v7 = v66;
    v8 = (v5 + 56);
    while (1)
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v13 = v8[1];
      v12 = v8[2];
      v14 = v8[3];
      v15 = v8[4];
      v17 = v8[5];
      v16 = v8[6];
      v51 = v9;
      v53 = *(v8 - 3);
      v47 = *v8;
      v49 = v10;
      v45 = v12;
      if (v13 < 0)
      {
        break;
      }

      if (!*(v17 + 16))
      {
        v56 = *(v8 - 3);
        v57 = v9;
        v58 = v10;
        v59 = v11;
        v60 = v13;
        goto LABEL_8;
      }

      v15 = v43;

      v13 &= 0xFFFFFFFFFFFFFF8uLL;
      v17 = MEMORY[0x1E69E7CC0];
LABEL_9:
      v66 = v7;
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D6997448((v18 > 1), v19 + 1, 1);
        v7 = v66;
      }

      v8 += 10;
      *(v7 + 16) = v19 + 1;
      v20 = (v7 + 80 * v19);
      v20[4] = v53;
      v20[5] = v51;
      v20[6] = v49;
      v20[7] = v47;
      v20[8] = v13;
      v20[9] = v45;
      v20[10] = v14;
      v20[11] = v15;
      v20[12] = v17;
      v20[13] = v16;
      if (!--v6)
      {
        v52 = v7;
        v4 = v36;
        v3 = v38;
        goto LABEL_14;
      }
    }

    v56 = *(v8 - 3);
    v57 = v9;
    v58 = v10;
    v59 = v11;
    v60 = v13 & 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:
    v61 = v12;
    v62 = v14;
    v63 = v15;
    v64 = v17;
    v65 = v16;
    sub_1D5CB7180(&v56, v55);
    goto LABEL_9;
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v21 = *(v40 + 1);
  v56 = *v40;
  v57 = v21;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v3, v4);
  v48 = v57;
  v50 = v56;
  v22 = v41;
  v23 = v41[5];
  v24 = sub_1D725891C();
  (*(*(v24 - 8) + 16))(&a2[v23], &v40[v23], v24);
  v25 = *&v40[v41[13]];
  v46 = *&v40[v41[14]];
  v26 = *&v40[v41[15]];
  sub_1D5CEB5E0(&v40[v22[16]], &a2[v22[16]], sub_1D5B5AFCC);
  v54 = *&v40[v41[17]];
  v44 = *&v40[v41[18]];
  v37 = v40[v41[19]];
  v39 = *&v40[v41[20]];
  v27 = *&v40[v41[6]];
  v28 = *&v40[v41[7]];
  v29 = *&v40[v41[8]];
  v30 = *&v40[v41[11]];
  v35 = *&v40[v41[10]];
  v31 = *&v40[v41[12]];
  sub_1D6997468(&v40[v22[21]], &a2[v22[21]], &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5B5AB24);
  *a2 = v50;
  *(a2 + 1) = v48;
  *&a2[v41[6]] = v27;
  *&a2[v41[7]] = v28;
  *&a2[v41[8]] = v29;
  *&a2[v41[9]] = v52;
  *&a2[v41[11]] = v30;
  *&a2[v41[13]] = v25;
  *&a2[v41[14]] = v46;
  *&a2[v41[15]] = v26;
  *&a2[v41[17]] = v54;
  *&a2[v41[18]] = v44;
  a2[v41[19]] = v37;
  *&a2[v41[20]] = v39;
  *&a2[v41[12]] = v31;
  *&a2[v41[10]] = v35;
  v32 = v44;

  swift_unknownObjectRetain();
  v33 = v46;
  swift_unknownObjectRetain();

  return v54;
}

void sub_1D6985160(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6985340(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D698BF70(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6985438(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D698C0DC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6985530(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D698C214(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6985798(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = *(a1 + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v8 + v6 <= *(v7 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v7 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v14 = (*(v7 + 24) >> 1) - *(v7 + 16);
  sub_1D5C28DE4(0, a3, a4, a5, type metadata accessor for FormatObject);
  if (v14 < v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_11:
    *v5 = v7;
    return;
  }

  v15 = *(v7 + 16);
  v16 = __OFADD__(v15, v6);
  v17 = v15 + v6;
  if (!v16)
  {
    *(v7 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_1D6985B00(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D698CB8C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6985C9C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  a3(0);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_1D6985DAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D698C8A0(isUniquelyReferenced_nonNull_native, v11, 1, v3, &qword_1EDF198C0, &type metadata for FormatSelector);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6985EB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D698F85C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6985FA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D698F9BC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1D5EC272C(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1D6986224(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = v3[3] >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_1D6990774(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = v3[3] >> 1;
  }

  v10 = v3[2];
  v11 = (v8 - v10);
  result = sub_1D5E25980(&v78, &v3[8 * v10 + 4], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v15 = v3[2];
    v16 = __OFADD__(v15, result);
    v17 = result + v15;
    if (v16)
    {
      __break(1u);
LABEL_20:
      while (1)
      {
        v20 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          goto LABEL_45;
        }

        if (v20 >= ((v14 + 64) >> 6))
        {
          v65 = 0;
          v66 = 0;
          v26 = 0;
          v28 = 0;
          v67 = 0;
          v30 = 0;
          v29 = 0;
          goto LABEL_43;
        }

        v19 = *(v12 + 8 * v20);
        ++v17;
        if (v19)
        {
          v60 = v13;
          goto LABEL_24;
        }
      }
    }

    v3[2] = v17;
  }

  if (result != v11)
  {
    v18 = v78;
LABEL_14:
    result = sub_1D5B87E38(v18);
    *v1 = v3;
    return result;
  }

LABEL_17:
  v13 = v3[2];
  v12 = v79;
  v59 = v78;
  v14 = v80;
  v17 = v81;
  v19 = v82;
  v56 = v80;
  v57 = v79;
  if (!v82)
  {
    goto LABEL_20;
  }

  v60 = v3[2];
  v20 = v81;
LABEL_24:
  v21 = (v19 - 1) & v19;
  v22 = __clz(__rbit64(v19)) | (v20 << 6);
  v23 = (*(v59 + 48) + 16 * v22);
  v24 = v23[1];
  v25 = (*(v59 + 56) + 48 * v22);
  v26 = v25[1];
  v65 = *v25;
  v66 = *v23;
  v28 = v25[2];
  v27 = v25[3];
  v30 = v25[4];
  v29 = v25[5];

  v67 = v27;

  if (!v24)
  {
LABEL_43:
    v70 = v66;
    v71 = 0;
    v72 = v65;
    v73 = v26;
    v74 = v28;
    v75 = v67;
    v76 = v30;
    v77 = v29;
    sub_1D5CEB140(&v70, sub_1D69A5A38);
    v18 = v59;
    goto LABEL_14;
  }

  v31 = v24;
  v64 = v20;
  v32 = v60;
LABEL_30:
  v63 = v30;
  v33 = v28;
  v34 = v3[3];
  v58 = v34 >> 1;
  v35 = v29;
  v36 = v26;
  if ((v34 >> 1) < v32 + 1)
  {
    v52 = v31;
    v53 = v3;
    v54 = v32;
    v55 = sub_1D6990774((v34 > 1), v32 + 1, 1, v53);
    v32 = v54;
    v3 = v55;
    v31 = v52;
    v58 = v55[3] >> 1;
  }

  while (1)
  {
    if (v32 >= v58)
    {
      goto LABEL_29;
    }

    v61 = v31;
    v69[0] = v66;
    v69[1] = v31;
    v69[2] = v65;
    v69[3] = v36;
    v69[4] = v33;
    v69[5] = v67;
    v69[6] = v63;
    v69[7] = v35;
    v37 = v35;
    v70 = v66;
    v71 = v31;
    v72 = v65;
    v73 = v36;
    v74 = v33;
    v75 = v67;
    v76 = v63;
    v77 = v35;
    v38 = v32;
    sub_1D69A5AB0(&v70, v68);
    result = sub_1D5CEB140(v69, sub_1D69A5A38);
    v39 = &v3[8 * v38 + 4];
    *v39 = v66;
    v39[1] = v61;
    v39[2] = v65;
    v39[3] = v36;
    v39[4] = v33;
    v39[5] = v67;
    v40 = v38 + 1;
    v39[6] = v63;
    v39[7] = v37;
    if (!v21)
    {
      break;
    }

    v62 = v40;
LABEL_40:
    v43 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v44 = v43 | (v64 << 6);
    v45 = (*(v59 + 48) + 16 * v44);
    v46 = v45[1];
    v47 = (*(v59 + 56) + 48 * v44);
    v48 = v47[1];
    v65 = *v47;
    v66 = *v45;
    v50 = v47[2];
    v49 = v47[3];
    v51 = v47[5];
    v63 = v47[4];

    v36 = v48;

    v33 = v50;

    v67 = v49;

    v35 = v51;

    v31 = v46;
    if (!v46)
    {
      v32 = v62;
LABEL_29:
      v3[2] = v32;
      v26 = v36;
      v28 = v33;
      v30 = v63;
      v29 = v35;
      if (!v31)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    v32 = v62;
  }

  v41 = v64;
  while (1)
  {
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v42 >= ((v56 + 64) >> 6))
    {
      v65 = 0;
      v66 = 0;
      v26 = 0;
      v28 = 0;
      v67 = 0;
      v30 = 0;
      v29 = 0;
      v3[2] = v40;
      goto LABEL_43;
    }

    v21 = *(v57 + 8 * v42);
    ++v41;
    if (v21)
    {
      v62 = v40;
      v64 = v42;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void *sub_1D69866F8(void *result, uint64_t (*a2)(void), uint64_t (*a3)(void **, uint64_t, uint64_t, void *))
{
  v6 = result[2];
  v7 = *v3;
  v8 = *(*v3 + 16);
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = a2;
  v10 = result;
  if (!swift_isUniquelyReferenced_nonNull_native() || (v11 = *(v7 + 24) >> 1, v11 < v8 + v6))
  {
    v7 = v4();
    v11 = *(v7 + 24) >> 1;
  }

  v12 = *(v7 + 16);
  v13 = (v11 - v12);
  result = a3(&v46, v7 + 24 * v12 + 32, v11 - v12, v10);
  if (result < v6)
  {
    goto LABEL_12;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v7 + 16);
    v18 = __OFADD__(v17, result);
    v19 = result + v17;
    if (v18)
    {
      __break(1u);
LABEL_16:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v5 + 1)
      {
        v23 = v5 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_46:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v49 = v24;
          v50 = 0;
          goto LABEL_10;
        }

        v26 = *(v14 + 8 * v25);
        ++v5;
      }

      while (!v26);
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v5 = v25;
      goto LABEL_24;
    }

    *(v7 + 16) = v19;
  }

  result = v46;
  if (v16 != v13)
  {
    goto LABEL_10;
  }

LABEL_13:
  v6 = *(v7 + 16);
  v14 = v47;
  v15 = v48;
  v5 = v49;
  v45 = v47;
  v42 = v48;
  if (!v50)
  {
    goto LABEL_16;
  }

  v20 = (v50 - 1) & v50;
  v21 = __clz(__rbit64(v50)) | (v49 << 6);
  v22 = (v48 + 64) >> 6;
LABEL_24:
  v44 = result;
  v27 = (result[6] + 16 * v21);
  v29 = *v27;
  v28 = v27[1];
  v30 = *(result[7] + 8 * v21);

  v31 = v45;
LABEL_26:
  while (1)
  {
    v32 = *(v7 + 24);
    v33 = v32 >> 1;
    if ((v32 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v33)
    {
      goto LABEL_28;
    }

LABEL_25:
    *(v7 + 16) = v6;
  }

  v40 = (v4)(v32 > 1, v6 + 1, 1, v7);
  v31 = v45;
  v7 = v40;
  v33 = *(v40 + 24) >> 1;
  if (v6 >= v33)
  {
    goto LABEL_25;
  }

LABEL_28:
  v43 = v33;
  while (1)
  {
    v34 = (v7 + 32 + 24 * v6);
    *v34 = v29;
    v34[1] = v28;
    v34[2] = v30;
    ++v6;
    if (!v20)
    {
      break;
    }

    result = v44;
LABEL_36:
    v37 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v38 = v37 | (v5 << 6);
    v39 = (result[6] + 16 * v38);
    v29 = *v39;
    v28 = v39[1];
    v30 = *(result[7] + 8 * v38);

    v31 = v45;
    if (v6 == v43)
    {
      v6 = v43;
      *(v7 + 16) = v43;
      goto LABEL_26;
    }
  }

  v35 = v5;
  result = v44;
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v36 >= v22)
    {
      break;
    }

    v20 = *(v31 + 8 * v36);
    ++v35;
    if (v20)
    {
      v5 = v36;
      goto LABEL_36;
    }
  }

  if (v22 <= v5 + 1)
  {
    v41 = v5 + 1;
  }

  else
  {
    v41 = v22;
  }

  v48 = v42;
  v49 = v41 - 1;
  v50 = 0;
  *(v7 + 16) = v6;
LABEL_10:
  result = sub_1D5B87E38(result);
  *v3 = v7;
  return result;
}

void sub_1D69869F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1D6993724(isUniquelyReferenced_nonNull_native, v12, 1, v3, &unk_1EDF02120, &type metadata for FormatItemTrait);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6986AF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D6991114(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6986E58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D698FB64(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6986F94(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D69925AC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1D6987118(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_1D698BE40(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_1D5E24B6C(v38, &v3[8 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 64) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 64) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v22 >= v19)
        {
          v40 = v21;
          v41 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  result = v38[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v38[1];
  v11 = v39;
  v16 = v40;
  if (!v41)
  {
    goto LABEL_19;
  }

  v17 = (v41 - 1) & v41;
  v18 = __clz(__rbit64(v41)) | (v40 << 6);
  v19 = (v39 + 64) >> 6;
LABEL_27:
  v24 = *(result[6] + 8 * v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v35 = v16;
  v36 = v19;
  v37 = result;
  v30 = v12;
  v31 = v3;
  v32 = v17;
  v33 = sub_1D698BE40((v25 > 1), v6 + 1, 1, v31);
  v17 = v32;
  v16 = v35;
  v19 = v36;
  v12 = v30;
  v3 = v33;
  result = v37;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v24;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(result[6] + ((v16 << 9) | (8 * v27)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v34 = v16 + 1;
  }

  else
  {
    v34 = v19;
  }

  v39 = v11;
  v40 = v34 - 1;
  v41 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_1D5B87E38(result);
  *v1 = v3;
  return result;
}

uint64_t sub_1D6987410(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v5;
  v11 = *(*v5 + 2);
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = a3;
  v7 = a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v14 = *(v4 + 3) >> 1, v14 < v12))
  {
    if (v11 <= v12)
    {
      v15 = v11 + v10;
    }

    else
    {
      v15 = v11;
    }

    result = sub_1D6992F2C(result, v15, 1, v4);
    v4 = result;
    v14 = *(result + 24) >> 1;
  }

  v16 = v14 - *(v4 + 2);
  if (v9 == v6)
  {
    if (v10 <= 0)
    {
      v10 = 0;
      v8 = v6;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v16 < v10)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v10 <= 0)
    {
LABEL_16:
      v8 = v9;
LABEL_17:
      if (v10 != v16)
      {
        result = swift_unknownObjectRelease();
LABEL_19:
        *v5 = v4;
        return result;
      }

LABEL_23:
      v41 = *(v4 + 2);
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      sub_1D6997468(&v61, &v45, &unk_1EDF15098, &type metadata for FeedJournalGroup, MEMORY[0x1E69E6720], sub_1D5B5A7F0);
      while (*(&v45 + 1))
      {
        sub_1D5CEB4C8(&v45, &unk_1EDF15098, &type metadata for FeedJournalGroup, MEMORY[0x1E69E6720], sub_1D5B5A7F0);
        v21 = *(v4 + 3);
        v22 = v21 >> 1;
        if ((v21 >> 1) < v41 + 1)
        {
          v4 = sub_1D6992F2C((v21 > 1), v41 + 1, 1, v4);
          v22 = *(v4 + 3) >> 1;
        }

        sub_1D6997468(&v61, v43, &unk_1EDF15098, &type metadata for FeedJournalGroup, MEMORY[0x1E69E6720], sub_1D5B5A7F0);
        if (*(&v43[0] + 1))
        {
          v23 = v41;
          if (v41 <= v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = v41;
          }

          v25 = &v4[248 * v41 + 32];
          while (1)
          {
            v57 = v43[12];
            v58 = v43[13];
            v59 = v43[14];
            v60 = v44;
            v53 = v43[8];
            v54 = v43[9];
            v55 = v43[10];
            v56 = v43[11];
            v49 = v43[4];
            v50 = v43[5];
            v51 = v43[6];
            v52 = v43[7];
            v45 = v43[0];
            v46 = v43[1];
            v47 = v43[2];
            v48 = v43[3];
            v26 = v24;
            if (v24 == v23)
            {
              break;
            }

            v42 = v23;
            result = sub_1D5CEB4C8(&v61, &unk_1EDF15098, &type metadata for FeedJournalGroup, MEMORY[0x1E69E6720], sub_1D5B5A7F0);
            v27 = v48;
            v29 = v45;
            v28 = v46;
            *(v25 + 32) = v47;
            *(v25 + 48) = v27;
            *v25 = v29;
            *(v25 + 16) = v28;
            v30 = v52;
            v32 = v49;
            v31 = v50;
            *(v25 + 96) = v51;
            *(v25 + 112) = v30;
            *(v25 + 64) = v32;
            *(v25 + 80) = v31;
            v33 = v56;
            v35 = v53;
            v34 = v54;
            *(v25 + 160) = v55;
            *(v25 + 176) = v33;
            *(v25 + 128) = v35;
            *(v25 + 144) = v34;
            v37 = v58;
            v36 = v59;
            v38 = v57;
            *(v25 + 240) = v60;
            *(v25 + 208) = v37;
            *(v25 + 224) = v36;
            *(v25 + 192) = v38;
            if (v8 == v9)
            {
              v76 = 0;
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              v8 = v9;
              v61 = 0u;
            }

            else
            {
              if (v8 < v6 || v8 >= v9)
              {
                goto LABEL_46;
              }

              sub_1D5C0C678(v7 + 248 * v8++, &v61);
            }

            sub_1D6997468(&v61, v43, &unk_1EDF15098, &type metadata for FeedJournalGroup, MEMORY[0x1E69E6720], sub_1D5B5A7F0);
            v25 += 248;
            v23 = v42 + 1;
            v24 = v26;
            if (!*(&v43[0] + 1))
            {
              goto LABEL_42;
            }
          }

          sub_1D60E9D6C(&v45);
          v20 = v26;
          v41 = v26;
        }

        else
        {
          v23 = v41;
LABEL_42:
          v39 = v23;
          sub_1D5CEB4C8(v43, &unk_1EDF15098, &type metadata for FeedJournalGroup, MEMORY[0x1E69E6720], sub_1D5B5A7F0);
          v41 = v39;
          v20 = v39;
        }

        *(v4 + 2) = v20;
        sub_1D6997468(&v61, &v45, &unk_1EDF15098, &type metadata for FeedJournalGroup, MEMORY[0x1E69E6720], sub_1D5B5A7F0);
      }

      v40 = MEMORY[0x1E69E6720];
      sub_1D5CEB4C8(&v61, &unk_1EDF15098, &type metadata for FeedJournalGroup, MEMORY[0x1E69E6720], sub_1D5B5A7F0);
      swift_unknownObjectRelease();
      result = sub_1D5CEB4C8(&v45, &unk_1EDF15098, &type metadata for FeedJournalGroup, v40, sub_1D5B5A7F0);
      goto LABEL_19;
    }

    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, v10);
    v19 = v17 + v10;
    if (!v18)
    {
      *(v4 + 2) = v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void sub_1D6987A04(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D69917E4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6987B44(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D698CCE4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6987C94(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v7 <= *(v5 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v15 = v6 + v4;
  }

  else
  {
    v15 = v6;
  }

  v5 = sub_1D698ED4C(isUniquelyReferenced_nonNull_native, v15, 1, v5, a2, a3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v5 + 3) >> 1) - *(v5 + 2) < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return;
  }

  v12 = *(v5 + 2);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v5 + 2) = v14;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6987DE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1D6993E34(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6987F1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D6994234(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1D5B5A7F0(0, &qword_1EDF0F198, &type metadata for FormatColorProcessor, MEMORY[0x1E69E6720]);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1D6988038(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_1D6994374(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = (v8 - v10);
  result = sub_1D5E24DD0(v39, &v3[v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v16 = *(v3 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_20:
      while (1)
      {
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_44;
        }

        if (v20 >= ((v14 + 64) >> 6))
        {
          goto LABEL_14;
        }

        v19 = *(v13 + 8 * v20);
        ++v15;
        if (v19)
        {
          goto LABEL_23;
        }
      }
    }

    *(v3 + 2) = v18;
  }

  if (result != v11)
  {
    result = v39[0];
LABEL_14:
    result = sub_1D5B87E38(result);
    *v1 = v3;
    return result;
  }

LABEL_17:
  v6 = *(v3 + 2);
  result = v39[0];
  v13 = v39[1];
  v14 = v39[2];
  v15 = v40;
  v19 = v41;
  if (!v41)
  {
    goto LABEL_20;
  }

  v20 = v40;
LABEL_23:
  v21 = (v19 - 1) & v19;
  v22 = *(result[6] + (__clz(__rbit64(v19)) | (v20 << 6)));
  if (v22 == 13)
  {
    goto LABEL_14;
  }

  v23 = (v14 + 64) >> 6;
  v24 = v20;
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      v37 = v22;
      v38 = result;
      v36 = v13;
      v31 = v14;
      v32 = v24;
      v33 = v3;
      v34 = v21;
      v35 = sub_1D6994374((v25 > 1), v6 + 1, 1, v33);
      v22 = v37;
      v21 = v34;
      v24 = v32;
      v14 = v31;
      v13 = v36;
      v3 = v35;
      result = v38;
      v26 = *(v3 + 3) >> 1;
    }

    if (v6 < v26)
    {
      break;
    }

LABEL_25:
    *(v3 + 2) = v6;
    if (v22 == 13)
    {
      goto LABEL_14;
    }
  }

  while (1)
  {
    v3[v6++ + 32] = v22;
    if (!v21)
    {
      break;
    }

    v27 = v24;
LABEL_36:
    v29 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v22 = *(result[6] + (v29 | (v27 << 6)));
    if (v22 == 13 || v6 >= v26)
    {
      goto LABEL_25;
    }
  }

  v28 = v24;
  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      *(v3 + 2) = v6;
      goto LABEL_14;
    }

    v21 = *(v13 + 8 * v27);
    ++v28;
    if (v21)
    {
      v24 = v27;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_1D69882C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D6994C7C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1D69884DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v12 = *(v5 + 24) >> 1, v12 < v9))
  {
    if (v8 <= v9)
    {
      v13 = v8 + v7;
    }

    else
    {
      v13 = v8;
    }

    result = sub_1D698F85C(result, v13, 1, v5);
    v5 = result;
    v12 = *(result + 24) >> 1;
  }

  v14 = v12 - *(v5 + 16);
  if (v6 == a3)
  {
    if (v7 <= 0)
    {
      v7 = 0;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 < v7)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v7 <= 0)
    {
      goto LABEL_16;
    }

    v15 = *(v5 + 16);
    v16 = __OFADD__(v15, v7);
    v17 = v15 + v7;
    if (!v16)
    {
      *(v5 + 16) = v17;
LABEL_16:
      if (v7 != v14)
      {
LABEL_17:
        result = swift_unknownObjectRelease();
        *v4 = v5;
        return result;
      }

LABEL_21:

      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_1D6988690(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v7 <= *(v5 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v15 = v6 + v4;
  }

  else
  {
    v15 = v6;
  }

  v5 = sub_1D698BB8C(isUniquelyReferenced_nonNull_native, v15, 1, v5, a2, a3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v5 + 3) >> 1) - *(v5 + 2) < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return;
  }

  v12 = *(v5 + 2);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v5 + 2) = v14;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D69887C4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  a3(0);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_1D6988960(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v7 <= *(v5 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v15 = v6 + v4;
  }

  else
  {
    v15 = v6;
  }

  v5 = sub_1D6991370(isUniquelyReferenced_nonNull_native, v15, 1, v5, a2, a3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v5 + 3) >> 1) - *(v5 + 2) < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return;
  }

  v12 = *(v5 + 2);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v5 + 2) = v14;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6988AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D69960CC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1D5B5A7F0(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6988C54(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v7 <= *(v5 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v15 = v6 + v4;
  }

  else
  {
    v15 = v6;
  }

  v5 = sub_1D5D55ED8(isUniquelyReferenced_nonNull_native, v15, 1, v5, a2, a3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v5 + 3) >> 1) - *(v5 + 2) < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return;
  }

  v12 = *(v5 + 2);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v5 + 2) = v14;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6988DD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D69901FC(isUniquelyReferenced_nonNull_native, v11, 1, v3, &qword_1EDF022F0, &type metadata for FeedTopicCluster);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6988EDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D6996990(isUniquelyReferenced_nonNull_native, v11, 1, v3, &qword_1EDF01E00, sub_1D68097E4, sub_1D68097E4);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1D68097E4(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D6989008(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D6996E28(isUniquelyReferenced_nonNull_native, v11, 1, v3, &unk_1EC89C790, &type metadata for DebugFormatCompilerSection);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t FormatContent.Resolved.init(identifier:publishDate:tag:issue:headline:webEmbed:recipe:subscription:subscriptionPaidAccess:affinityTagIDs:iAdKeywords:superfeedKeywords:themes:subgroups:subgroupNeighbors:options:selectors:sponsoredAdBanner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v27 = *a11;
  v30 = *a17;
  *a9 = a1;
  *(a9 + 1) = a2;
  v23 = type metadata accessor for FormatContent.Resolved(0);
  v24 = v23[5];
  v25 = sub_1D725891C();
  (*(*(v25 - 8) + 32))(&a9[v24], a3, v25);
  *&a9[v23[6]] = a13;
  *&a9[v23[7]] = a14;
  *&a9[v23[8]] = a15;
  *&a9[v23[9]] = a16;
  *&a9[v23[11]] = a18;
  *&a9[v23[13]] = a4;
  *&a9[v23[14]] = a5;
  *&a9[v23[15]] = a6;
  sub_1D5CEB3E0(a7, &a9[v23[16]], sub_1D5B5AFCC);
  *&a9[v23[17]] = a8;
  *&a9[v23[18]] = a10;
  a9[v23[19]] = v27;
  *&a9[v23[20]] = a12;
  *&a9[v23[12]] = a19;
  result = sub_1D5CEB57C(a20, &a9[v23[21]]);
  *&a9[v23[10]] = v30;
  return result;
}

void FormatContent.Resolved.scrollingTrait.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatContent.Resolved(0) + 36));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 64);
    while (1)
    {
      v7 = *v5;
      v5 += 10;
      v6 = v7;
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
        swift_beginAccess();
        v9 = *(v6 + v8);
        if (v9 != 4)
        {
          break;
        }
      }

      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    LOBYTE(v9) = 4;
  }

  *a1 = v9;
}

uint64_t FormatContent.Resolved.createPlugins2<A>(block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FormatContent.Resolved(0);
  sub_1D5B5A7F0(0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
  sub_1D69A5214();

  v3 = sub_1D726242C();

  return v3;
}

uint64_t FormatContent.Resolved.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatContent.Resolved.iAdKeywords.getter()
{
  type metadata accessor for FormatContent.Resolved(0);
}

uint64_t FormatContent.Resolved.superfeedKeywords.getter()
{
  type metadata accessor for FormatContent.Resolved(0);
}

uint64_t FormatContent.Resolved.subgroupNeighbors.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for FormatContent.Resolved(0) + 40));
}

uint64_t FormatContent.Resolved.options.getter()
{
  type metadata accessor for FormatContent.Resolved(0);
}

uint64_t FormatContent.Resolved.selectors.getter()
{
  type metadata accessor for FormatContent.Resolved(0);
}

void *FormatContent.Resolved.issue.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent.Resolved(0) + 56));
  v2 = v1;
  return v1;
}

uint64_t FormatContent.Resolved.headline.getter()
{
  type metadata accessor for FormatContent.Resolved(0);

  return swift_unknownObjectRetain();
}

void *FormatContent.Resolved.recipe.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent.Resolved(0) + 68));
  v2 = v1;
  return v1;
}

void *FormatContent.Resolved.subscription.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent.Resolved(0) + 72));
  v2 = v1;
  return v1;
}

uint64_t FormatContent.Resolved.subscriptionPaidAccess.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FormatContent.Resolved(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t FormatContent.Resolved.affinityTagIDs.getter()
{
  type metadata accessor for FormatContent.Resolved(0);
}

BOOL FormatContent.Resolved.requiresPlugin.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent.Resolved(0) + 36));
  v2 = (v1 + 64);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v2 += 10;
  }

  while ((v4 & 0x8000000000000000) == 0);
  return v3 != 0;
}

uint64_t FormatContent.Resolved.init(identifier:publishDate:tag:issue:headline:webEmbed:recipe:subscription:subscriptionPaidAccess:affinityTagIDs:iAdKeywords:superfeedKeywords:themes:subgroups:options:selectors:sponsoredAdBanner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>, void *a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v29 = *a11;
  *a9 = a1;
  *(a9 + 1) = a2;
  v23 = type metadata accessor for FormatContent.Resolved(0);
  v24 = v23[5];
  v37 = sub_1D725891C();
  v39 = *(v37 - 8);
  (*(v39 + 16))(&a9[v24], a3, v37);
  *&a9[v23[6]] = a13;
  *&a9[v23[7]] = a14;
  *&a9[v23[8]] = a15;
  *&a9[v23[9]] = a16;
  *&a9[v23[11]] = a17;
  *&a9[v23[13]] = a4;
  *&a9[v23[14]] = a5;
  *&a9[v23[15]] = a6;
  sub_1D5CEB5E0(a7, &a9[v23[16]], sub_1D5B5AFCC);
  *&a9[v23[17]] = a8;
  *&a9[v23[18]] = a10;
  a9[v23[19]] = v29;
  *&a9[v23[20]] = a12;
  *&a9[v23[12]] = a18;
  v34 = MEMORY[0x1E69B40B8];
  v33 = MEMORY[0x1E69E6720];
  sub_1D6997468(a19, &a9[v23[21]], &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5B5AB24);
  type metadata accessor for FormatContentSubgroupNeighborsResolver();
  v30 = a10;

  swift_unknownObjectRetain();
  v25 = a5;
  swift_unknownObjectRetain();
  v26 = a8;
  static FormatContentSubgroupNeighborsResolver.resolve(subgroups:)(a16, &v40);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1D5CEB4C8(a19, &qword_1EDF45AB0, v34, v33, sub_1D5B5AB24);
  sub_1D5CEB140(a7, sub_1D5B5AFCC);
  result = (*(v39 + 8))(a3, v37);
  *&a9[v23[10]] = v40;
  return result;
}

uint64_t FormatContent.Resolved.copy(identifier:publishDate:tag:issue:headline:webEmbed:recipe:subscription:subscriptionPaidAccess:affinityTagIDs:iAdKeywords:superfeedKeywords:themes:subgroups:subgroupNeighbors:options:selectors:sponsoredAdBanner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>, void *a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v118 = a8;
  v105 = a7;
  v112 = a5;
  v113 = a1;
  v114 = a4;
  v25 = MEMORY[0x1E69E6720];
  sub_1D5B5AB24(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v110 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v111 = &v93 - v31;
  sub_1D5B5AFCC(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v120 = &v93 - v38;
  sub_1D5B5AB24(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v25);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v93 - v41;
  v119 = sub_1D725891C();
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v43);
  v116 = &v93 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *a11;
  v115 = *a17;
  if (a2)
  {
    v109 = a2;
  }

  else
  {
    v45 = v20[1];
    v113 = *v20;
    v109 = v45;
  }

  sub_1D6997468(a3, v42, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B5AB24);
  v46 = v117;
  v47 = *(v117 + 48);
  v48 = v119;
  if (v47(v42, 1, v119) == 1)
  {
    v49 = type metadata accessor for FormatContent.Resolved(0);
    (*(v46 + 16))(v116, v20 + *(v49 + 20), v48);
    v50 = v47(v42, 1, v48);

    if (v50 != 1)
    {
      sub_1D5CEB4C8(v42, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B5AB24);
    }
  }

  else
  {
    (*(v46 + 32))(v116, v42, v48);
  }

  v51 = v114;
  v52 = v110;
  v53 = v112;
  if (v114)
  {
    v54 = v112;
    if (v112)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v51 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 52));
    swift_unknownObjectRetain();
    v54 = v53;
    if (v53)
    {
      goto LABEL_10;
    }
  }

  v54 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 56));
  v68 = v54;
LABEL_10:
  v107 = v54;
  v108 = v51;
  v55 = a6;
  if (!a6)
  {
    type metadata accessor for FormatContent.Resolved(0);
    v55 = swift_unknownObjectRetain();
  }

  v106 = v55;
  sub_1D5CEB5E0(v105, v35, sub_1D5B5AFCC);
  v56 = type metadata accessor for FormatWebEmbed.Resolved(0);
  v57 = *(v56 - 8);
  v58 = *(v57 + 48);
  if (v58(v35, 1, v56) == 1)
  {
    v59 = type metadata accessor for FormatContent.Resolved(0);
    sub_1D5CEB5E0(v20 + *(v59 + 64), v120, sub_1D5B5AFCC);
    v60 = v58(v35, 1, v56);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v61 = v53;
    v62 = v121;
    if (v60 != 1)
    {
      sub_1D5CEB140(v35, sub_1D5B5AFCC);
    }
  }

  else
  {
    v63 = v120;
    sub_1D5CEB3E0(v35, v120, type metadata accessor for FormatWebEmbed.Resolved);
    (*(v57 + 56))(v63, 0, 1, v56);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v64 = v53;
    v62 = v121;
  }

  v65 = v118;
  v66 = v115;
  if (v118)
  {
    v67 = a10;
    if (a10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v65 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 68));
    v69 = v65;
    v67 = a10;
    if (a10)
    {
      goto LABEL_18;
    }
  }

  v67 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 72));
  v70 = v67;
LABEL_18:
  if (v62 == 3)
  {
    v62 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 76));
  }

  if (a12)
  {
    v103 = a12;
  }

  else
  {
    v103 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 80));
  }

  v71 = a14;
  v114 = a14;
  if (a13)
  {
    v102 = a13;
  }

  else
  {
    v102 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 24));

    v71 = v114;
  }

  v72 = a15;
  v112 = a15;
  v104 = v67;
  if (v71)
  {
    v100 = v71;
    v73 = a16;
    if (a15)
    {
      goto LABEL_32;
    }

LABEL_35:
    v98 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 32));

    v105 = v65;
    if (v73)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  v100 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 28));

  v72 = v112;
  v73 = a16;
  if (!v112)
  {
    goto LABEL_35;
  }

LABEL_32:
  v98 = v72;
  v105 = v65;
  if (v73)
  {
LABEL_33:
    v95 = v73;
    goto LABEL_37;
  }

LABEL_36:
  v95 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 36));

LABEL_37:
  v101 = a10;
  if (v66)
  {
    v97 = v66;
    v74 = a19;
    v75 = a20;
    if (a18)
    {
LABEL_39:
      v93 = a18;
      goto LABEL_42;
    }
  }

  else
  {
    v97 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 40));

    v74 = a19;
    v75 = a20;
    if (a18)
    {
      goto LABEL_39;
    }
  }

  v93 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 44));

LABEL_42:
  v121 = v62;
  v99 = a12;
  v96 = a13;
  if (v74)
  {
    v94 = v74;
  }

  else
  {
    v94 = *(v20 + *(type metadata accessor for FormatContent.Resolved(0) + 48));
  }

  sub_1D6997468(v75, v52, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5B5AB24);
  v76 = sub_1D72608BC();
  v77 = v52;
  v78 = *(v76 - 8);
  v79 = *(v78 + 48);
  if (v79(v77, 1, v76) == 1)
  {
    v80 = v20 + *(type metadata accessor for FormatContent.Resolved(0) + 84);
    v81 = v111;
    sub_1D6997468(v80, v111, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5B5AB24);
    v82 = v79(v77, 1, v76);
    v83 = v81;
    LODWORD(v81) = v82;

    v84 = v118;
    v85 = v101;

    if (v81 != 1)
    {
      sub_1D5CEB4C8(v77, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5B5AB24);
    }
  }

  else
  {
    v83 = v111;
    (*(v78 + 32))(v111, v77, v76);
    (*(v78 + 56))(v83, 0, 1, v76);

    v86 = v118;
    v87 = v101;
  }

  v88 = v109;
  *a9 = v113;
  *(a9 + 1) = v88;
  v89 = type metadata accessor for FormatContent.Resolved(0);
  (*(v117 + 32))(&a9[v89[5]], v116, v119);
  *&a9[v89[6]] = v102;
  *&a9[v89[7]] = v100;
  *&a9[v89[8]] = v98;
  *&a9[v89[9]] = v95;
  *&a9[v89[11]] = v93;
  v90 = v107;
  *&a9[v89[13]] = v108;
  *&a9[v89[14]] = v90;
  *&a9[v89[15]] = v106;
  sub_1D5CEB3E0(v120, &a9[v89[16]], sub_1D5B5AFCC);
  v91 = v104;
  *&a9[v89[17]] = v105;
  *&a9[v89[18]] = v91;
  a9[v89[19]] = v121;
  *&a9[v89[20]] = v103;
  *&a9[v89[12]] = v94;
  result = sub_1D5CEB57C(v83, &a9[v89[21]]);
  *&a9[v89[10]] = v97;
  return result;
}

uint64_t sub_1D698A694(uint64_t (*a1)(uint64_t))
{
  result = type metadata accessor for FormatContent.Resolved(0);
  v4 = *(v1 + *(result + 36));
  v5 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v4 + 32);
    while (v7 < *(v4 + 16))
    {
      v18 = *v8;
      v9 = v8[3];
      v10 = v8[4];
      v11 = v8[2];
      v19 = v8[1];
      *v20 = v11;
      *&v20[16] = v9;
      *&v20[32] = v10;
      ++v7;
      v16[1] = v19;
      *&v17[8] = *&v20[8];
      *&v17[24] = *&v20[24];
      *v17 = v11 & 0x7FFFFFFFFFFFFFFFLL;
      *&v17[40] = *(&v10 + 1);
      v15[7] = *v17;
      v15[8] = *&v17[16];
      v15[9] = *&v17[32];
      v16[0] = v18;
      v15[5] = v18;
      v15[6] = v19;
      sub_1D5CE9930(&v18, v15);
      sub_1D5CE9930(&v18, v15);
      v12 = sub_1D5CE9930(&v18, v15);
      v13 = a1(v12);
      sub_1D5CB71DC(v16);
      sub_1D5CEC67C(&v18);
      sub_1D5CEC67C(&v18);
      result = sub_1D5D55274(v13);
      v8 += 5;
      if (v6 == v7)
      {
        v5 = v21;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v14 = sub_1D5B86020(v5);

    return v14;
  }

  return result;
}

uint64_t FormatContent.Resolved.layouts.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatContent.Resolved(0) + 36));
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v4 = (v1 + 32);
    for (i = v2 - 1; ; --i)
    {
      v10[0] = *v4;
      v7 = v4[3];
      v6 = v4[4];
      v8 = v4[2];
      v10[1] = v4[1];
      v10[2] = v8;
      v10[3] = v7;
      v10[4] = v6;
      sub_1D5CE9930(v10, &v9);

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      if (!i)
      {
        break;
      }

      v4 += 5;
    }

    return v11;
  }

  return result;
}

uint64_t FormatContent.Resolved.createPlugins(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for FormatContent.Resolved(0) + 36));
  v11 = v2;
  v12 = a1;
  v13 = a2;
  v6 = sub_1D5FBE378(sub_1D69A5290, &v10, v5);
  sub_1D673ECC8(0);
  v14 = v6;
  v7 = sub_1D725B92C();
  sub_1D5B5AB24(0, &qword_1EDF053A0, sub_1D673ECC8, MEMORY[0x1E69E62F8]);
  sub_1D673ECFC();
  v8 = sub_1D725BA3C();

  return v8;
}

void sub_1D698AA18(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FormatContent.Resolved(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a1 + 32);
  if (v11 < 0)
  {
    v12 = *(a1 + 72);
    v13 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v13;
    v15 = v11 & 0x7FFFFFFFFFFFFFFFLL;
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v18 = v12;
    sub_1D698AB28(v14, v9);
    v10 = a2(v9);
    sub_1D5CEB140(v9, type metadata accessor for FormatContent.Resolved);
  }

  *a3 = v10;
}

uint64_t sub_1D698AB28@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[1];
  v31 = *a1;
  v32 = v4;
  v5 = a1[3];
  *v33 = a1[2];
  *&v33[16] = v5;
  *&v33[32] = a1[4];
  v6 = v31;
  v7 = type metadata accessor for FormatContent.Resolved(0);
  v8 = v7[5];
  v9 = sub_1D725891C();
  (*(*(v9 - 8) + 16))(&a2[v8], v2 + v8, v9);
  v27 = *(v2 + v7[13]);
  v28 = *(v2 + v7[14]);
  v26 = *(v2 + v7[15]);
  sub_1D5CEB5E0(v2 + v7[16], &a2[v7[16]], sub_1D5B5AFCC);
  v24 = *(v2 + v7[17]);
  v25 = *(v2 + v7[18]);
  v22 = *(v2 + v7[19]);
  v23 = *(v2 + v7[20]);
  v10 = *(v2 + v7[6]);
  v11 = *(v2 + v7[7]);
  v21 = *(v2 + v7[8]);
  sub_1D5B5A7F0(0, &qword_1EDF197C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  v13 = *&v33[40];
  v14 = *v33 & 0xFFFFFFFFFFFFFF8;
  *(v12 + 32) = v6;
  *(v12 + 48) = v32;
  *(v12 + 64) = v14;
  *(v12 + 72) = *&v33[8];
  *(v12 + 88) = *&v33[24];
  *(v12 + 104) = v13;
  v15 = *(v2 + v7[11]);
  v20 = *(v2 + v7[10]);
  v29 = *(v2 + v7[12]);
  sub_1D6997468(v2 + v7[21], &a2[v7[21]], &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5B5AB24);
  *a2 = v6;
  *&a2[v7[6]] = v10;
  *&a2[v7[7]] = v11;
  *&a2[v7[8]] = v21;
  *&a2[v7[9]] = v12;
  *&a2[v7[11]] = v15;
  *&a2[v7[13]] = v27;
  *&a2[v7[14]] = v28;
  *&a2[v7[15]] = v26;
  *&a2[v7[17]] = v24;
  *&a2[v7[18]] = v25;
  a2[v7[19]] = v22;
  *&a2[v7[20]] = v23;
  *&a2[v7[12]] = v29;
  *&a2[v7[10]] = v20;
  v16 = v25;

  swift_unknownObjectRetain();
  v17 = v28;
  swift_unknownObjectRetain();
  v18 = v24;
  sub_1D5CB7180(&v31, v30);
}

uint64_t sub_1D698AE38@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FormatContent.Resolved(0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  if ((v13 & 0x8000000000000000) == 0)
  {
    return (*(*(a3 - 8) + 56))(a4, 1, 1, a3, v10);
  }

  v15 = *(a1 + 72);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *a1;
  v19 = v16;
  v20 = v17;
  v21 = v13 & 0x7FFFFFFFFFFFFFFFLL;
  v22 = *(a1 + 40);
  v23 = *(a1 + 56);
  v24 = v15;
  sub_1D698AB28(&v18, v12);
  a2(v12, v16, v17);
  sub_1D5CEB140(v12, type metadata accessor for FormatContent.Resolved);
  return (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
}

uint64_t sub_1D698AFD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725ABEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28CC4(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = a1;
  v13 = qword_1EDF17D30;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_1EDF17D38);
  v16 = (*(v5 + 16))(v8, v15, v4);
  MEMORY[0x1EEE9AC00](v16, v17);
  v23[-2] = sub_1D5B5A498(0, &qword_1EDF3C6C0, 0x1E69B5348);
  swift_getKeyPath();
  sub_1D725BF5C();

  sub_1D5C28C5C(0);
  v19 = v18;
  v20 = *(v18 - 8);
  if ((*(v20 + 48))(v12, 1, v18))
  {
    sub_1D5CEB140(v12, sub_1D5C28CC4);
    v21 = 1;
  }

  else
  {
    (*(v20 + 32))(a2, v12, v19);
    v21 = 0;
  }

  return (*(v20 + 56))(a2, v21, 1, v19);
}

uint64_t sub_1D698B268@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725ABEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5AB24(0, &qword_1EDF17608, sub_1D5C28BF4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v23 - v11;
  v23[1] = a1;
  v13 = qword_1EDF17CE8;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_1EDF17CF0);
  v16 = (*(v5 + 16))(v8, v15, v4);
  MEMORY[0x1EEE9AC00](v16, v17);
  v23[-2] = sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
  swift_getKeyPath();
  sub_1D725BF5C();

  sub_1D5C28BF4(0);
  v19 = v18;
  v20 = *(v18 - 8);
  if ((*(v20 + 48))(v12, 1, v18))
  {
    sub_1D5CEB4C8(v12, &qword_1EDF17608, sub_1D5C28BF4, MEMORY[0x1E69E6720], sub_1D5B5AB24);
    v21 = 1;
  }

  else
  {
    (*(v20 + 32))(a2, v12, v19);
    v21 = 0;
  }

  return (*(v20 + 56))(a2, v21, 1, v19);
}

uint64_t sub_1D698B554@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725ABEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28B8C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = a1;
  v13 = qword_1EDF17DC0;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_1EDF17DC8);
  v16 = (*(v5 + 16))(v8, v15, v4);
  MEMORY[0x1EEE9AC00](v16, v17);
  v23[-2] = sub_1D5B5A498(0, &qword_1EDF3C790, 0x1E69B5600);
  swift_getKeyPath();
  sub_1D725BF5C();

  sub_1D5C28B0C(0);
  v19 = v18;
  v20 = *(v18 - 8);
  if ((*(v20 + 48))(v12, 1, v18))
  {
    sub_1D5CEB140(v12, sub_1D5C28B8C);
    v21 = 1;
  }

  else
  {
    (*(v20 + 32))(a2, v12, v19);
    v21 = 0;
  }

  return (*(v20 + 56))(a2, v21, 1, v19);
}

uint64_t sub_1D698B7E4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D5C28F6C(*a1);
  v5 = v4;
  if (v3 == sub_1D5C28F6C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D698B86C()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5C28F6C(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D698B8D0(uint64_t a1)
{
  sub_1D5C28F6C(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D698B924(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D5C28F6C(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D698B984@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D69A55A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D698B9B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D5C28F6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D698B9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D69A55A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D698BA08(uint64_t a1)
{
  v2 = sub_1D5C28E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D698BA44(uint64_t a1)
{
  v2 = sub_1D5C28E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *sub_1D698BB8C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D698BD44(char *result, int64_t a2, char a3, char *a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1D698BE40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D5B5A7F0(0, &unk_1EDF19500, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D698BF70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D5B5A7F0(0, &qword_1EDF19A60, &type metadata for FeedScoredItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D698C0DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D5B5A7F0(0, &qword_1EDF020E0, &type metadata for FormatMergeConfig, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}
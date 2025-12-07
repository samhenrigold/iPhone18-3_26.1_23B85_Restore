float sub_1C4B10FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t), void (*a6)(void))
{
  v107 = a2;
  v108 = a6;
  v97 = a5;
  v111 = a4;
  v110 = a3(0);
  sub_1C43FCDF8();
  v105 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v96 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v95 - v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v95 - v13;
  v14 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  v103 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  v109 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v104 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  v98 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v95 - v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v95 - v26;
  v28 = 0;
  v102 = a1;
  v106 = *(a1 + 16);
  v29 = (v16 + 8);
  v100 = MEMORY[0x1E69E7CC0];
  while (v106 != v28)
  {
    sub_1C4417720();
    sub_1C44032D8();
    sub_1C44718CC(v30, v27);
    sub_1C4EFE558();
    sub_1C4400CE8();
    sub_1C4B13544(&off_1EDDFCCA8, v31, MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v115 == v113 && v116 == v114)
    {
      v36 = sub_1C4413754();
      v37(v36);

LABEL_10:
      sub_1C448566C(v27, v98);
      v38 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44032F0();
        sub_1C459DCC0();
        v38 = v117;
      }

      v40 = *(v38 + 16);
      if (v40 >= *(v38 + 24) >> 1)
      {
        sub_1C459DCC0();
        v38 = v117;
      }

      ++v28;
      *(v38 + 16) = v40 + 1;
      v100 = v38;
      sub_1C44032D8();
      sub_1C448566C(v98, v41);
    }

    else
    {
      v33 = sub_1C4F02938();
      v34 = sub_1C4413754();
      v35(v34);

      if (v33)
      {
        goto LABEL_10;
      }

      sub_1C44DBD5C(v27, type metadata accessor for EntityTriple);
      ++v28;
    }
  }

  v42 = v100;
  v43 = *(v100 + 16);
  if (v43)
  {
    v115 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v43, 0);
    v44 = v115;
    sub_1C4417720();
    v47 = v42 + (v46 & ~v45);
    v49 = *(v48 + 72);
    do
    {
      v50 = v101;
      sub_1C44718CC(v47, v101);
      v51 = (v50 + *(v109 + 32));
      v53 = *v51;
      v52 = v51[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v50, type metadata accessor for EntityTriple);
      v115 = v44;
      v55 = *(v44 + 16);
      v54 = *(v44 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1C44CD9C0(v54 > 1, v55 + 1, 1);
        v44 = v115;
      }

      *(v44 + 16) = v55 + 1;
      v56 = v44 + 16 * v55;
      *(v56 + 32) = v53;
      *(v56 + 40) = v52;
      v47 += v49;
      --v43;
    }

    while (v43);
  }

  v106 = sub_1C4499940();
  v57 = 0;
  v58 = *(v107 + 16);
  v109 = MEMORY[0x1E69E7CC0];
  while (v58 != v57)
  {
    sub_1C4417720();
    v61 = v60 & ~v59;
    v63 = *(v62 + 72);
    sub_1C44718CC(v107 + v61 + v63 * v57, v112);
    v64 = v103;
    sub_1C4EFE558();
    sub_1C4400CE8();
    sub_1C4B13544(&off_1EDDFCCA8, v65, MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v115 == v113 && v116 == v114)
    {
      v70 = sub_1C4413754();
      v71(v70);
    }

    else
    {
      v67 = sub_1C4F02938();
      v68 = v64;
      v69 = v67;
      (*v29)(v68, v14);

      if ((v69 & 1) == 0)
      {
        sub_1C44DBD5C(v112, v108);
        ++v57;
        continue;
      }
    }

    sub_1C448566C(v112, v99);
    v72 = v109;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v117 = v72;
    if ((v73 & 1) == 0)
    {
      v74 = sub_1C44032F0();
      v97(v74);
      v72 = v117;
    }

    v76 = *(v72 + 16);
    v75 = *(v72 + 24);
    if (v76 >= v75 >> 1)
    {
      (v97)(v75 > 1, v76 + 1, 1);
      v72 = v117;
    }

    ++v57;
    *(v72 + 16) = v76 + 1;
    v109 = v72;
    sub_1C448566C(v99, v72 + v61 + v76 * v63);
  }

  v77 = v109;
  v78 = *(v109 + 16);
  if (v78)
  {
    v115 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v78, 0);
    v79 = v115;
    sub_1C4417720();
    v82 = v77 + (v81 & ~v80);
    v84 = *(v83 + 72);
    v85 = v96;
    do
    {
      sub_1C44718CC(v82, v85);
      v86 = (v85 + *(v110 + 32));
      v88 = *v86;
      v87 = v86[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v85, v108);
      v115 = v79;
      v90 = *(v79 + 16);
      v89 = *(v79 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_1C44CD9C0(v89 > 1, v90 + 1, 1);
        v79 = v115;
      }

      *(v79 + 16) = v90 + 1;
      v91 = v79 + 16 * v90;
      *(v91 + 32) = v88;
      *(v91 + 40) = v87;
      v82 += v84;
      --v78;
    }

    while (v78);
  }

  v92 = sub_1C4499940();
  if (*(v106 + 16))
  {
    v93 = sub_1C4A32590(v92, v106);

    result = 1.0;
    if (v93)
    {
      return 0.0;
    }
  }

  else
  {

    return 1.0;
  }

  return result;
}

uint64_t sub_1C4B117CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v67 = a1;
  v65 = a3;
  v64 = sub_1C4EF9CD8();
  v68 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = v71;
  result = sub_1C4ACED24();
  if (!v26)
  {
    v59 = v22;
    v60 = v19;
    v61 = 0;
    v62 = v7;
    v71 = v13;
    v28 = v69;
    v29 = v25;
    v30 = v66;
    if (v66)
    {
      sub_1C44F1938(v66, v16);
      v31 = type metadata accessor for GraphTriple(0);
      v32 = v10;
      if (sub_1C44157D4(v16, 1, v31) == 1)
      {
        sub_1C4420C3C(v16, &unk_1EC0BC900, byte_1C4F142D0);
        v33 = 1;
      }

      else
      {
        (*(v28 + 16))(v25, v16, v70);
        sub_1C44DBD5C(v16, type metadata accessor for GraphTriple);
        v33 = 0;
      }

      v34 = v67;
      v35 = v68;
    }

    else
    {
      v33 = 1;
      v34 = v67;
      v35 = v68;
      v32 = v10;
    }

    sub_1C440BAA8(v29, v33, 1, v70);
    sub_1C44D0BD8(v34, v32);
    if (sub_1C44157D4(v32, 1, v11) == 1)
    {
      sub_1C4420C3C(v32, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v36 = sub_1C4F00978();
      sub_1C442B738(v36, qword_1EDE2DE10);
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CD8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C43F8000, v37, v38, "Merchant Matcher: skipping entityTriples are empty", v39, 2u);
        MEMORY[0x1C6942830](v39, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v29, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v41 = v3;
      sub_1C448566C(v32, v71);
      if (v30)
      {
        v42 = sub_1C4B10FAC(v34, v30, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, sub_1C459D7C8, type metadata accessor for GraphTriple);
      }

      else
      {
        v42 = 0.0;
      }

      v43 = v65;
      v44 = v70;
      v45 = v62;
      v46 = v59;
      v68 = type metadata accessor for ShipmentFullFillmentMatcher(0);
      v47 = *(v41 + *(v68 + 28));
      if (v42 <= v47)
      {
        sub_1C4EFF008();
        v44 = v70;
        sub_1C4420C3C(v29, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v46, 0, 1, v44);
        sub_1C44DDDBC(v46, v29);
        v42 = v47;
      }

      v70 = v41;
      v48 = v60;
      sub_1C457E858(v29, v60);
      v49 = sub_1C44157D4(v48, 1, v44);
      v67 = v29;
      if (v49 == 1)
      {
        sub_1C4420C3C(v48, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v50 = v69;
        (*(v69 + 32))(v45, v48, v44);
        sub_1C4EFD218();
        v51 = type metadata accessor for EntityMatch(0);
        v52 = v44;
        v53 = *(v50 + 16);
        v54 = v71;
        v53(v43 + v51[5], v71, v44);
        v53(v43 + v51[6], v45, v44);
        v55 = v63;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v57 = v56;
        (*(v35 + 8))(v55, v64);
        (*(v50 + 8))(v45, v52);
        sub_1C44DBD5C(v54, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v67, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v58 = *(v70 + *(v68 + 24));
        *(v43 + v51[7]) = v42;
        *(v43 + v51[8]) = v57;
        *(v43 + v51[9]) = v58;
        *(v43 + v51[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B11F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a1;
  v65 = a3;
  v67 = sub_1C4EF9CD8();
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  v26 = v72;
  result = sub_1C4ACED24();
  if (!v26)
  {
    v59 = v22;
    v60 = v19;
    v61 = 0;
    v62 = v7;
    v63 = v10;
    v28 = v68;
    v29 = v69;
    v72 = v25;
    if (v70)
    {
      v30 = v70;
      sub_1C44D0BD8(v70, v16);
      v31 = v28;
      if (sub_1C44157D4(v16, 1, v8) == 1)
      {
        sub_1C4420C3C(v16, &qword_1EC0BA590, &qword_1C4F1F430);
        v32 = 1;
      }

      else
      {
        (*(v28 + 16))(v72, v16, v29);
        sub_1C44DBD5C(v16, type metadata accessor for EntityTriple);
        v32 = 0;
      }
    }

    else
    {
      v30 = 0;
      v32 = 1;
      v31 = v68;
    }

    v33 = v71;
    sub_1C440BAA8(v72, v32, 1, v29);
    sub_1C44D0BD8(v33, v13);
    if (sub_1C44157D4(v13, 1, v8) == 1)
    {
      sub_1C4420C3C(v13, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v34 = sub_1C4F00978();
      sub_1C442B738(v34, qword_1EDE2DE10);
      v35 = sub_1C4F00968();
      v36 = sub_1C4F01CD8();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v72;
      if (v37)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C43F8000, v35, v36, "Merchant Matcher: skipping entityTriples are empty", v39, 2u);
        MEMORY[0x1C6942830](v39, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v38, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C448566C(v13, v63);
      if (v30)
      {
        v41 = sub_1C4B106D0(v33, v30);
      }

      else
      {
        v41 = 0.0;
      }

      v42 = v65;
      v43 = v62;
      v44 = v59;
      v70 = type metadata accessor for ShipmentFullFillmentMatcher(0);
      v71 = v3;
      v45 = *(v3 + *(v70 + 28));
      v46 = v72;
      if (v41 <= v45)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v46, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v44, 0, 1, v29);
        sub_1C44DDDBC(v44, v46);
        v41 = v45;
      }

      v47 = v60;
      sub_1C457E858(v46, v60);
      if (sub_1C44157D4(v47, 1, v29) == 1)
      {
        sub_1C4420C3C(v47, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v31 + 32))(v43, v47, v29);
        sub_1C4EFD218();
        v48 = v43;
        v49 = v29;
        v50 = type metadata accessor for EntityMatch(0);
        v51 = v31;
        v52 = *(v31 + 16);
        v53 = v63;
        v52(v42 + v50[5], v63, v49);
        v52(v42 + v50[6], v48, v49);
        v54 = v66;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v56 = v55;
        (*(v64 + 8))(v54, v67);
        (*(v51 + 8))(v48, v49);
        sub_1C44DBD5C(v53, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v46, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v57 = *(v71 + *(v70 + 24));
        *(v42 + v50[7]) = v41;
        *(v42 + v50[8]) = v56;
        *(v42 + v50[9]) = v57;
        *(v42 + v50[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B12694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v67 = a1;
  v65 = a3;
  v64 = sub_1C4EF9CD8();
  v68 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = v71;
  result = sub_1C4ACED24();
  if (!v26)
  {
    v59 = v22;
    v60 = v19;
    v61 = 0;
    v62 = v7;
    v71 = v13;
    v28 = v69;
    v29 = v25;
    v30 = v66;
    if (v66)
    {
      sub_1C486854C(v66, v16);
      v31 = type metadata accessor for ConstructionGraphTriple(0);
      v32 = v10;
      if (sub_1C44157D4(v16, 1, v31) == 1)
      {
        sub_1C4420C3C(v16, &unk_1EC0BCAE0, byte_1C4F142A0);
        v33 = 1;
      }

      else
      {
        (*(v28 + 16))(v25, v16, v70);
        sub_1C44DBD5C(v16, type metadata accessor for ConstructionGraphTriple);
        v33 = 0;
      }

      v34 = v67;
      v35 = v68;
    }

    else
    {
      v33 = 1;
      v34 = v67;
      v35 = v68;
      v32 = v10;
    }

    sub_1C440BAA8(v29, v33, 1, v70);
    sub_1C44D0BD8(v34, v32);
    if (sub_1C44157D4(v32, 1, v11) == 1)
    {
      sub_1C4420C3C(v32, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v36 = sub_1C4F00978();
      sub_1C442B738(v36, qword_1EDE2DE10);
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CD8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C43F8000, v37, v38, "Merchant Matcher: skipping entityTriples are empty", v39, 2u);
        MEMORY[0x1C6942830](v39, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v29, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v41 = v3;
      sub_1C448566C(v32, v71);
      if (v30)
      {
        v42 = sub_1C4B10FAC(v34, v30, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, sub_1C459DC78, type metadata accessor for ConstructionGraphTriple);
      }

      else
      {
        v42 = 0.0;
      }

      v43 = v65;
      v44 = v70;
      v45 = v62;
      v46 = v59;
      v68 = type metadata accessor for ShipmentFullFillmentMatcher(0);
      v47 = *(v41 + *(v68 + 28));
      if (v42 <= v47)
      {
        sub_1C4EFF008();
        v44 = v70;
        sub_1C4420C3C(v29, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v46, 0, 1, v44);
        sub_1C44DDDBC(v46, v29);
        v42 = v47;
      }

      v70 = v41;
      v48 = v60;
      sub_1C457E858(v29, v60);
      v49 = sub_1C44157D4(v48, 1, v44);
      v67 = v29;
      if (v49 == 1)
      {
        sub_1C4420C3C(v48, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v50 = v69;
        (*(v69 + 32))(v45, v48, v44);
        sub_1C4EFD218();
        v51 = type metadata accessor for EntityMatch(0);
        v52 = v44;
        v53 = *(v50 + 16);
        v54 = v71;
        v53(v43 + v51[5], v71, v44);
        v53(v43 + v51[6], v45, v44);
        v55 = v63;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v57 = v56;
        (*(v35 + 8))(v55, v64);
        (*(v50 + 8))(v45, v52);
        sub_1C44DBD5C(v54, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v67, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v58 = *(v70 + *(v68 + 24));
        *(v43 + v51[7]) = v42;
        *(v43 + v51[8]) = v57;
        *(v43 + v51[9]) = v58;
        *(v43 + v51[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t ShipmentFullFillmentMatcher.execute()()
{
  *(v1 + 24) = v0;
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B12ED8, 0, 0);
}

uint64_t sub_1C4B12ED8()
{
  v41 = v0;
  v2 = v0[3];
  v1 = v0[4];
  type metadata accessor for PhaseStores(0);
  v3 = type metadata accessor for ShipmentFullFillmentMatcher(0);
  v4 = *(v3 + 24);
  LOBYTE(v40[0]) = *(v2 + v4);
  v5 = *(v3 + 32);
  v6 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v8 = *(v7 + 16);
  v8(v1, v2 + v5, v6);
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v6);
  sub_1C44ABA54(v40, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v12 = *(v2 + v4);
  switch(*(v2 + v4))
  {
    case 1:
    case 3:
      v39 = v8;
      v13 = v0[3];
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      sub_1C43FD8E4();
      sub_1C44AC170(v15, v16, v17, v18, v19, v20);

      if (v13)
      {
        goto LABEL_10;
      }

      if (*(v12 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v21 = *(v2 + v4);
      v22 = swift_task_alloc();
      *(v22 + 16) = v14;
      v23 = sub_1C4B1343C;
      goto LABEL_9;
    case 2:
      v39 = v8;
      v26 = v0[3];
      v27 = swift_task_alloc();
      *(v27 + 16) = v26;
      sub_1C43FD8E4();
      sub_1C46CE408(v28, v29, v30, v31, v32, v33);

      if (v1)
      {
LABEL_10:

        v34 = v0[1];
      }

      else
      {
        if (*(v26 + *(sub_1C43FF150() + 28)) == 1)
        {
          v21 = *(v2 + v4);
          v22 = swift_task_alloc();
          *(v22 + 16) = v27;
          v23 = sub_1C4B1358C;
LABEL_9:
          sub_1C44C6BB4(v2 + v5, v21, 0, 1, v23, v22);
        }

LABEL_11:
        v35 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C464BE60();
        LOBYTE(v40[0]) = *(v2 + v4);
        v39(v35, v2 + v5, v6);
        sub_1C43FBD94();
        sub_1C440BAA8(v36, v37, v38, v6);
        sub_1C44A8814(v40, v35);
        sub_1C4420C3C(v35, &qword_1EC0B8568, &unk_1C4F319B0);

        v34 = v0[1];
      }

      result = v34();
      break;
    default:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA4E8, &qword_1C4F51560);
      v24 = sub_1C4F01198();
      MEMORY[0x1C6940010](v24);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v4));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C4B132D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3);
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C4B1334C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return ShipmentFullFillmentMatcher.execute()();
}

uint64_t sub_1C4B1346C(uint64_t a1)
{
  result = sub_1C4B13544(&qword_1EC0C34C8, type metadata accessor for ShipmentFullFillmentMatcher, &protocol conformance descriptor for ShipmentFullFillmentMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B134C4(uint64_t a1)
{
  result = sub_1C4B13544(&qword_1EC0C34D0, type metadata accessor for ShipmentFullFillmentMatcher, &protocol conformance descriptor for ShipmentFullFillmentMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B13544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4B135A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69B8A58]) init];
  v7 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
  v8 = v6;
  v9 = [v7 init];
  v10 = swift_allocObject();
  *(v10 + 72) = sub_1C4461BB8(0, &unk_1EDDF0560, 0x1E69B8A58);
  *(v10 + 80) = &off_1F43F72C0;
  *(v10 + 48) = v8;
  *(v10 + 112) = sub_1C4461BB8(0, &qword_1EDDF0450, 0x1E69B8DB8);
  *(v10 + 120) = &off_1F43F7318;
  *(v10 + 88) = v9;
  *(v10 + 16) = 1;
  *(v10 + 24) = xmmword_1C4F51620;
  *(v10 + 40) = &unk_1F43D6D60;
  *(v10 + 152) = xmmword_1C4F51630;

  *(v10 + 168) = 0x312E302E31;
  *(v10 + 176) = 0xE500000000000000;
  *(v10 + 128) = a1;
  *(v10 + 136) = a2;
  *(v10 + 144) = a3;
  return v10;
}

uint64_t sub_1C4B136E8()
{
  sub_1C43FBCD4();
  v1[52] = v2;
  v1[53] = v0;
  v1[51] = v3;
  v4 = sub_1C4EFF9F8();
  v1[54] = v4;
  sub_1C43FCF7C(v4);
  v1[55] = v5;
  v1[56] = sub_1C43FBE7C();
  v6 = sub_1C4EFE1C8();
  v1[57] = v6;
  sub_1C43FCF7C(v6);
  v1[58] = v7;
  v1[59] = *(v8 + 64);
  v1[60] = sub_1C43FE604();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v9 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FBD18(v9);
  v1[64] = sub_1C43FBE7C();
  v10 = type metadata accessor for LOIBasedSegment(0);
  v1[65] = v10;
  sub_1C43FCF7C(v10);
  v1[66] = v11;
  v1[67] = *(v12 + 64);
  v1[68] = sub_1C43FE604();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v13 = sub_1C4F00978();
  v1[72] = v13;
  sub_1C43FCF7C(v13);
  v1[73] = v14;
  v1[74] = sub_1C43FE604();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v15 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C4B13964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C44249CC();
  sub_1C4F00198();
  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CF8();
  if (sub_1C4402B64(v24))
  {
    v25 = sub_1C43FCED0();
    sub_1C43FBD24(v25);
    sub_1C4402B48();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    sub_1C43FE9D4();
  }

  v31 = *(v22 + 584);
  v32 = *(v22 + 416);

  v33 = *(v31 + 8);
  *(v22 + 672) = v33;
  v34 = sub_1C4402B58();
  v33(v34);
  sub_1C442E860(v32, v22 + 16);
  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  if (!swift_dynamicCast())
  {
    v52 = *(v22 + 512);
    v53 = *(v22 + 408);
    sub_1C44102A4(v52, v35, v36, *(v22 + 520));
    sub_1C4420C3C(v52, &qword_1EC0B9790, &unk_1C4F0F7C0);
LABEL_40:
    v113 = type metadata accessor for InferredActivitySegment(0);
    sub_1C44102A4(v53, v114, v115, v113);
    sub_1C4407A18();

    sub_1C43FBDA0();
    sub_1C440FB70();

    return v117(v116, v117, v118, v119, v120, v121, v122, v123, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  v37 = *(v22 + 568);
  v38 = *(v22 + 520);
  v39 = *(v22 + 512);
  sub_1C43FBD94();
  sub_1C440BAA8(v40, v41, v42, v38);
  sub_1C46CB668(v39, v37);
  v43 = *(v38 + 24);
  sub_1C4460050(v37 + v43, v22 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  v44 = *(v22 + 80);
  sub_1C4420C3C(v22 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!v44)
  {
    sub_1C4F00198();
    v54 = sub_1C4F00968();
    v55 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v55))
    {
      v56 = sub_1C43FCED0();
      sub_1C43FBD24(v56);
      sub_1C44057CC();
      _os_log_impl(v57, v58, v59, v60, v61, 2u);
      sub_1C43FE9D4();
    }

    goto LABEL_34;
  }

  sub_1C4460050(v37 + v43, v22 + 136, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!*(v22 + 160))
  {
    sub_1C4420C3C(v22 + 136, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    *(v22 + 96) = 0u;
    *(v22 + 112) = 0u;
    *(v22 + 128) = 0;
    goto LABEL_16;
  }

  sub_1C4409678((v22 + 136), *(v22 + 160));
  v45 = sub_1C43FBEF8();
  v46(v45);
  sub_1C46CB91C(v22 + 136);
  if (!*(v22 + 120))
  {
LABEL_16:
    sub_1C4420C3C(v22 + 96, &qword_1EC0BB380, &unk_1C4F1F2E0);
    goto LABEL_17;
  }

  sub_1C4420C3C(v22 + 96, &qword_1EC0BB380, &unk_1C4F1F2E0);
  sub_1C4460050(v37 + v43, v22 + 336, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!*(v22 + 360))
  {
    v99 = &qword_1EC0B97A0;
    v100 = &qword_1C4F0F7D0;
    v101 = v22 + 336;
LABEL_31:
    sub_1C4420C3C(v101, v99, v100);
LABEL_32:
    sub_1C4F00198();
    v54 = sub_1C4F00968();
    v102 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v102))
    {
      v103 = sub_1C43FCED0();
      sub_1C43FBD24(v103);
      sub_1C44057CC();
      _os_log_impl(v104, v105, v106, v107, v108, 2u);
      sub_1C43FE9D4();
    }

LABEL_34:
    v109 = *(v22 + 568);
    v53 = *(v22 + 408);

    v110 = sub_1C43FBEF8();
    v33(v110);
    v111 = v109;
LABEL_39:
    sub_1C46CB73C(v111);
    goto LABEL_40;
  }

  sub_1C4409678((v22 + 336), *(v22 + 360));
  v47 = sub_1C43FBEF8();
  v48(v47);
  sub_1C46CB91C(v22 + 336);
  if (!*(v22 + 320))
  {
    v99 = &qword_1EC0BB380;
    v100 = &unk_1C4F1F2E0;
    v101 = v22 + 296;
    goto LABEL_31;
  }

  sub_1C4409678((v22 + 296), *(v22 + 320));
  v49 = sub_1C43FBEF8();
  v51 = v50(v49);
  sub_1C440962C((v22 + 296));
  if (v51)
  {
    goto LABEL_32;
  }

LABEL_17:
  *(v22 + 728) = *(*(v22 + 520) + 20);
  sub_1C4EF9B78();
  if (v62 > 10800.0)
  {
    sub_1C4F00198();
    v63 = sub_1C4402B58();
    sub_1C46CB798(v63, v64);
    v65 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44024DC();
    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v22 + 560);
    if (v67)
    {
      v69 = sub_1C43FD084();
      sub_1C4402F1C(v69, 3.852e-34);
      v71 = v70;
      sub_1C46CB73C(v68);
      *(v69 + 4) = v71;
      sub_1C4416FE0(&dword_1C43F8000, v72, v73, "currSegment duration of %f is greater than maxDurationOfShoppingActivityInSeconds");
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C46CB73C(v68);
    }

    v86 = *(v22 + 640);
LABEL_37:
    v112 = *(v22 + 568);
    v53 = *(v22 + 408);
    (v33)(v86, *(v22 + 576));
LABEL_38:
    v111 = v112;
    goto LABEL_39;
  }

  sub_1C4EF9B78();
  if (v74 < 1200.0)
  {
    sub_1C4F00198();
    v75 = sub_1C4402B58();
    sub_1C46CB798(v75, v76);
    v77 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44024DC();
    v79 = os_log_type_enabled(v77, v78);
    v80 = *(v22 + 552);
    if (v79)
    {
      v81 = sub_1C43FD084();
      sub_1C4402F1C(v81, 3.852e-34);
      v83 = v82;
      sub_1C46CB73C(v80);
      *(v81 + 4) = v83;
      sub_1C4416FE0(&dword_1C43F8000, v84, v85, "currSegment duration of %f is less than minDurationOfShoppingActivityInSeconds");
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C46CB73C(v80);
    }

    v86 = *(v22 + 632);
    goto LABEL_37;
  }

  v87 = *(v22 + 544);
  v88 = *(v22 + 528);
  sub_1C46CB798(*(v22 + 568), v87);
  v89 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v90 = swift_allocObject();
  sub_1C46CB668(v87, v90 + v89);
  sub_1C4EFE1B8();
  sub_1C4460050(v37 + v43, v22 + 256, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (*(v22 + 280))
  {
    sub_1C4409678((v22 + 256), *(v22 + 280));
    v91 = sub_1C4402B58();
    v92(v91);
    sub_1C46CB91C(v22 + 256);
    if (*(v22 + 240))
    {
      sub_1C4409678((v22 + 216), *(v22 + 240));
      v93 = sub_1C4402B58();
      v94(v93);
      if (*(v22 + 200))
      {
        sub_1C4409678((v22 + 176), *(v22 + 200));
        v95 = sub_1C4402B58();
        v97 = v96(v95);
        a14 = v98;
        a15 = v97;
        sub_1C440962C((v22 + 176));
        sub_1C440962C((v22 + 216));
        goto LABEL_47;
      }

      sub_1C440962C((v22 + 216));
      v125 = &unk_1EC0BB388;
      v126 = &unk_1C4F1F2F0;
      v127 = v22 + 176;
    }

    else
    {
      v125 = &qword_1EC0BB380;
      v126 = &unk_1C4F1F2E0;
      v127 = v22 + 216;
    }
  }

  else
  {
    v125 = &qword_1EC0B97A0;
    v126 = &qword_1C4F0F7D0;
    v127 = v22 + 256;
  }

  sub_1C4420C3C(v127, v125, v126);
  a14 = 0;
  a15 = 0;
LABEL_47:
  a13 = *(v22 + 496);
  v128 = *(v22 + 488);
  a17 = *(v22 + 480);
  a18 = *(v22 + 624);
  v129 = *(v22 + 464);
  v130 = *(v22 + 448);
  v131 = *(v22 + 456);
  v132 = *(v22 + 440);
  a16 = *(v22 + 432);
  v133 = *(v22 + 424);
  (*(v129 + 16))(v128, *(v22 + 504), v131);
  v134 = (*(v129 + 80) + 40) & ~*(v129 + 80);
  v135 = swift_allocObject();
  *(v135 + 2) = v133;
  *(v135 + 3) = a15;
  *(v135 + 4) = a14;
  (*(v129 + 32))(&v135[v134], v128, v131);

  sub_1C4EFE1B8();
  sub_1C456902C(&qword_1EC0B97A8, &unk_1C4F0F7E0);
  v136 = sub_1C4EFE178();
  sub_1C43FCF7C(v136);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE1A8();
  (*(v132 + 104))(v130, *MEMORY[0x1E69A9A98], a16);
  sub_1C4F016E8();

  v137 = sub_1C44057DC();
  v138(v137);
  sub_1C4EFE188();
  v140 = v139;
  *(v22 + 680) = v139;
  sub_1C4F00198();
  v141 = sub_1C4F00968();
  v142 = sub_1C4F01CF8();
  if (sub_1C4402B64(v142))
  {
    v143 = sub_1C43FD084();
    *v143 = 134217984;
    *(v143 + 4) = v140;
    sub_1C4402B48();
    _os_log_impl(v144, v145, v146, v147, v148, 0xCu);
    sub_1C43FE9D4();
  }

  v149 = *(v22 + 584);

  *(v22 + 688) = (v149 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v150 = sub_1C4402B58();
  v33(v150);
  if (v140 < 0.6)
  {
    v112 = *(v22 + 568);
    v152 = *(v22 + 496);
    v151 = *(v22 + 504);
    v153 = *(v22 + 456);
    v53 = *(v22 + 408);
    v154 = *(*(v22 + 464) + 8);
    v154(*(v22 + 480), v153);
    v154(v152, v153);
    v154(v151, v153);
    goto LABEL_38;
  }

  *(v22 + 696) = *(*(v22 + 424) + 144);
  v155 = swift_task_alloc();
  *(v22 + 704) = v155;
  *v155 = v22;
  v155[1] = sub_1C4B1447C;
  sub_1C440FB70();

  return sub_1C4B150E4();
}

uint64_t sub_1C4B1447C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;
  *(v5 + 712) = v6;

  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4B14560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C44249CC();
  if (v22[89] >= 0.75)
  {
    v50 = swift_task_alloc();
    *(v22 + 90) = v50;
    *v50 = v22;
    v50[1] = sub_1C4B147AC;
    sub_1C440FB70();

    return sub_1C4B15D6C();
  }

  else
  {
    sub_1C4F00198();
    sub_1C4F00968();
    v27 = sub_1C4F01CF8();
    if (sub_1C4402B64(v27))
    {
      v28 = *(v22 + 89);
      v29 = sub_1C43FD084();
      *v29 = 134217984;
      *(v29 + 4) = v28;
      sub_1C4402B48();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      sub_1C43FE9D4();
    }

    v35 = *(v22 + 84);
    sub_1C4425F94();
    v36 = sub_1C4402B58();
    v35(v36);
    v37 = *(v23 + 8);
    v37(v25, v26);
    v37(v24, v26);
    v37(a16, v26);
    sub_1C46CB73C(a17);
    v38 = type metadata accessor for InferredActivitySegment(0);
    sub_1C44102A4(a18, v39, v40, v38);
    sub_1C4407A18();

    sub_1C43FBDA0();
    sub_1C440FB70();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_1C4B147AC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  *(v1 + 400) = v3;
  *(v1 + 384) = v4;
  *(v1 + 392) = v5;
  *(v1 + 376) = v0;
  v6 = *v0;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v9 + 732) = v8;

  v10 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4B1489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C44249CC();
  if (*(v22 + 732))
  {
    sub_1C4F00198();
    sub_1C4F00968();
    v27 = sub_1C4F01CF8();
    if (sub_1C4402B64(v27))
    {
      v28 = sub_1C43FCED0();
      sub_1C43FBD24(v28);
      sub_1C4402B48();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      sub_1C43FE9D4();
    }

    v34 = *(v22 + 672);
    sub_1C4425F94();
    v35 = sub_1C4402B58();
    v34(v35);
    v36 = *(v23 + 8);
    v36(v25, v26);
    v36(v24, v26);
    v36(a16, v26);
LABEL_13:
    sub_1C46CB73C(a17);
    v86 = type metadata accessor for InferredActivitySegment(0);
    sub_1C44102A4(a18, v87, v88, v86);
    goto LABEL_14;
  }

  if (*(v22 + 384) >= 1800.0 || *(v22 + 392) >= 1800.0)
  {
    sub_1C4F00198();

    v67 = sub_1C4F00968();
    v68 = sub_1C4F01CF8();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = sub_1C441BC74(v69, 3.8522e-34);
      *(v70 + 22) = v71;
      *(v70 + 24) = 0x409C200000000000;
      sub_1C4402B48();
      _os_log_impl(v72, v73, v74, v75, v76, 0x20u);
      sub_1C43FE9D4();
    }

    v77 = *(v22 + 672);
    v79 = *(v22 + 496);
    v78 = *(v22 + 504);
    v80 = *(v22 + 480);
    v81 = v67;
    v83 = *(v22 + 456);
    v82 = *(v22 + 464);
    a17 = *(v22 + 568);
    a18 = *(v22 + 408);

    v84 = sub_1C4402B58();
    v77(v84);
    v85 = *(v82 + 8);
    v85(v80, v83);
    v85(v79, v83);
    v85(v78, v83);
    goto LABEL_13;
  }

  sub_1C4F00198();
  v37 = sub_1C4F00968();
  v38 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v38))
  {
    v39 = swift_slowAlloc();
    sub_1C441BC74(v39, 3.8521e-34);
    sub_1C44057CC();
    _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
    sub_1C43FE9D4();
  }

  v45 = *(v22 + 680);
  v46 = *(v22 + 672);
  v47 = *(v22 + 600);
  v48 = *(v22 + 576);
  v49 = *(v22 + 568);
  a17 = *(v22 + 504);
  a18 = *(v22 + 728);
  a15 = *(v22 + 688);
  a16 = *(v22 + 496);
  v50 = *(v22 + 480);
  v51 = v37;
  v53 = *(v22 + 456);
  v52 = *(v22 + 464);
  v54 = *(v22 + 424);
  v55 = *(v22 + 408);

  v46(v47, v48);
  v56 = *(v52 + 8);
  v56(v50, v53);
  v56(a16, v53);
  v56(a17, v53);
  v57 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v59 = *(v58 + 16);
  v59(v55, v49, v57);
  v60 = type metadata accessor for InferredActivitySegment(0);
  v59(v55 + v60[5], v49 + a18, v57);
  sub_1C46CB73C(v49);
  v61 = *(v54 + 168);
  v62 = *(v54 + 176);
  *(v55 + v60[6]) = *(v54 + 16);
  *(v55 + v60[7]) = v45;
  v63 = (v55 + v60[8]);
  *v63 = v61;
  v63[1] = v62;
  sub_1C43FBD94();
  sub_1C440BAA8(v64, v65, v66, v60);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_14:
  sub_1C4407A18();

  sub_1C43FBDA0();
  sub_1C440FB70();

  return v90(v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

double sub_1C4B14D1C(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for LOIBasedSegment(0);
  sub_1C4460050(a1 + *(v6 + 24), v13, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (v14)
  {
    v7 = sub_1C4B70BBC();
    sub_1C46CB91C(v13);
  }

  else
  {
    sub_1C4420C3C(v13, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    v7 = 0.0;
  }

  sub_1C4F00198();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v7;
    _os_log_impl(&dword_1C43F8000, v8, v9, "storedVisitConfidence for shopping = %f", v10, 0xCu);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return v7;
}

double sub_1C4B14ED8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C4F00978();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v22[0] = v9;
  v22[1] = v10;
  v21 = v22;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C44CE068();

  v12 = 0.0;
  if (v11)
  {
    v13._countAndFlagsBits = 0x494F506F6547;
    v13._object = 0xE600000000000000;
    v14 = ConfidenceService.confidence(source:signalType:)(v13, 0);
    sub_1C4EFE188();
    v12 = v14 * v15;
  }

  sub_1C4F00198();
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v12;
    _os_log_impl(&dword_1C43F8000, v16, v17, "shoppingConfidenceDueToGeoPoi = %f", v18, 0xCu);
    MEMORY[0x1C6942830](v18, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return v12;
}

uint64_t sub_1C4B150E4()
{
  sub_1C43FBCD4();
  v0[25] = v1;
  v0[26] = v2;
  v3 = sub_1C4F00978();
  v0[27] = v3;
  sub_1C43FCF7C(v3);
  v0[28] = v4;
  v0[29] = sub_1C43FBE7C();
  v5 = sub_1C456902C(&qword_1EC0C1B98, &unk_1C4F461E0);
  sub_1C43FBD18(v5);
  v0[30] = sub_1C43FBE7C();
  v6 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
  v0[31] = v6;
  sub_1C43FBD18(v6);
  v0[32] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v0[33] = v7;
  sub_1C43FBD18(v7);
  v0[34] = sub_1C43FE604();
  v0[35] = swift_task_alloc();
  v8 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v0[36] = v8;
  sub_1C43FBD18(v8);
  v0[37] = sub_1C43FBE7C();
  v9 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4B15250()
{
  v1 = *(type metadata accessor for LOIBasedSegment(0) + 20);
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C4575ED0();
  v4 = sub_1C4410584(v3);
  if (v4)
  {
    v61 = v0[37];
    v62 = v0[36];
    v5 = v0[35];
    v6 = v0[33];
    sub_1C43FCE64();
    v8 = v7;
    v10 = *(v9 + 16);
    v10(v5);
    v11 = sub_1C440BF24();
    v10(v11);
    v12 = sub_1C44089C8();
    sub_1C4460050(v12, v13, v14, v15);
    v59 = *(v6 + 48);
    v16 = *(v8 + 32);
    v17 = sub_1C43FF584();
    v18 = v16(v17);
    v26 = sub_1C441C46C(v18, v19, v20, v21, v22, v23, v24, v25, v59);
    v1(v26);
    v27 = sub_1C44089C8();
    v29 = sub_1C44CD9E0(v27, v28, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v37 = sub_1C4435398(v29, v30, v31, v32, v33, v34, v35, v36, v60, v61, v62);
    v16(v37);
    v38 = sub_1C44057DC();
    v1(v38);
    v0[10] = sub_1C456902C(&qword_1EC0C1BB0, &qword_1C4F46228);
    v0[11] = sub_1C4B16D30();
    v39 = sub_1C4422F90(v0 + 7);
    sub_1C4422480(v39);
    v0[38] = v2;
    if (v2)
    {
      sub_1C4420C3C(v0[37], &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C47C41F8((v0 + 7));
      sub_1C44603BC();
      v40 = sub_1C4F00968();
      v41 = sub_1C4F01CF8();
      if (sub_1C4402B64(v41))
      {
        v42 = sub_1C43FCED0();
        sub_1C4405D10(v42);
        sub_1C442BEF0(&dword_1C43F8000, v43, (v8 + 32), "Unable to fetch motion state events for calculating walkingToStationaryRatio");
        sub_1C43FBE2C();
      }

      v44 = v0[38];

      v45 = sub_1C4404BCC();
      v46(v45);
      if (!v44)
      {
        sub_1C440962C(v0 + 2);
      }

      sub_1C43FC838();

      sub_1C43FBDA0();
      sub_1C440405C();

      __asm { BRAA            X1, X16 }
    }

    sub_1C4420C3C(v0[37], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C441D670((v0 + 7), (v0 + 2));
    sub_1C4409678(v0 + 2, v0[5]);
    sub_1C43FCE64();
    sub_1C43FBE7C();
    sub_1C4418A44();
    v49();
    v0[15] = sub_1C44411D4();
    v0[16] = swift_getAssociatedConformanceWitness();
    sub_1C4422F90(v0 + 12);
    sub_1C4404BCC();
    sub_1C4F019A8();

    v0[39] = 0;
    v0[40] = 0;
    sub_1C4433DB4();
    v0[43] = sub_1C43FD730(255);
    v50 = sub_1C4F01F48();
    v0[44] = v50;
    sub_1C43FCF7C(v50);
    v0[45] = v51;
    v0[46] = sub_1C43FBE7C();
    v52 = sub_1C43FD730(0);
    v0[47] = v52;
    sub_1C43FCF7C(v52);
    v0[48] = v53;
    v0[49] = *(v54 + 64);
    v0[50] = sub_1C43FBE7C();
    swift_task_alloc();
    sub_1C43FBE70();
    v0[51] = v55;
    *v55 = v56;
    sub_1C441A4A8(v55);
    sub_1C440405C();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D8D0](v4);
}

uint64_t sub_1C4B15708()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;

  if (v0)
  {
    v7 = sub_1C4B15B94;
  }

  else
  {

    v7 = sub_1C4B1580C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C4B1580C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    (*(*(v0 + 360) + 8))(v1, *(v0 + 352));

    sub_1C440962C((v0 + 96));
    v5 = 0.0;
    if (v4 != 0.0 && v3 != 0.0)
    {
      v5 = *(v0 + 320) / (*(v0 + 320) + *(v0 + 312));
    }

    sub_1C440962C((v0 + 16));
    sub_1C43FC838();

    sub_1C43FBDA0();
    v7.n128_f64[0] = v5;

    return v6(v7);
  }

  else
  {
    *(v0 + 160) = v2;
    v9 = sub_1C4422F90((v0 + 136));
    (*(*(v2 - 8) + 32))(v9, v1, v2);

    sub_1C44482AC((v0 + 136), (v0 + 168));
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 312);
      v12 = *(v0 + 320);
      v15 = *(v0 + 248);
      v14 = *(v0 + 256);
      v16 = *(v0 + 240);
      sub_1C43FBD94();
      sub_1C440BAA8(v17, v18, v19, v15);
      sub_1C44CD9E0(v16, v14, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      sub_1C4EF9AD8();
      v21 = v20;
      sub_1C4EF9AD8();
      v23 = v21 - v22;
      v24 = *(v14 + *(v15 + 32));
      v25 = sub_1C4404BCC();
      sub_1C4420C3C(v25, v26, &unk_1C4F0DF20);
      v27 = v12 + v23;
      v28 = v13 + v23;
      if (v24 != 2)
      {
        v28 = v13;
      }

      if (v24 == 4)
      {
        v28 = v13;
      }

      else
      {
        v27 = v12;
      }

      *(v0 + 312) = v28;
      *(v0 + 320) = v27;
    }

    else
    {
      v29 = *(v0 + 240);
      sub_1C44102A4(v29, v10, v11, *(v0 + 248));
      sub_1C4420C3C(v29, &qword_1EC0C1B98, &unk_1C4F461E0);
    }

    sub_1C4433DB4();
    *(v0 + 344) = sub_1C43FD730(255);
    v30 = sub_1C4F01F48();
    *(v0 + 352) = v30;
    sub_1C43FCF7C(v30);
    *(v0 + 360) = v31;
    *(v0 + 368) = sub_1C43FBE7C();
    v32 = sub_1C43FD730(0);
    *(v0 + 376) = v32;
    sub_1C43FCF7C(v32);
    *(v0 + 384) = v33;
    *(v0 + 392) = *(v34 + 64);
    *(v0 + 400) = sub_1C43FBE7C();
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 408) = v35;
    *v35 = v36;
    v37 = sub_1C441A4A8(v35);

    return MEMORY[0x1EEE6D8D0](v37);
  }
}

uint64_t sub_1C4B15B94()
{
  v3 = v1[50];
  sub_1C43FBE7C();
  sub_1C444B2A0();
  v2();
  swift_getAssociatedConformanceWitness();
  sub_1C43FF584();
  v4 = sub_1C4F028C8();
  if (v4)
  {
    v3 = v4;
    (*(v1[48] + 8))(v0, v1[47]);
  }

  else
  {
    sub_1C44057DC();
    v5 = swift_allocError();
    v7 = sub_1C444FF78(v5, v6);
    (v2)(v7);
  }

  v8 = v1[50];

  sub_1C440962C(v1 + 12);
  sub_1C44603BC();
  v9 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C44024DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_1C43FCED0();
    sub_1C4405D10(v11);
    sub_1C442BEF0(&dword_1C43F8000, v12, v8, "Unable to fetch motion state events for calculating walkingToStationaryRatio");
    sub_1C43FBE2C();
  }

  v13 = v1[38];

  v14 = sub_1C43FBEF8();
  v15(v14);
  if (!v13)
  {
    sub_1C440962C(v1 + 2);
  }

  sub_1C43FC838();

  sub_1C43FBDA0();
  v17.n128_u64[0] = 0;

  return v16(v17);
}

uint64_t sub_1C4B15D6C()
{
  sub_1C43FBCD4();
  v0[25] = v1;
  v0[26] = v2;
  v3 = sub_1C4F00978();
  v0[27] = v3;
  sub_1C43FCF7C(v3);
  v0[28] = v4;
  v0[29] = sub_1C43FE604();
  v0[30] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0C1B98, &unk_1C4F461E0);
  sub_1C43FBD18(v5);
  v0[31] = sub_1C43FBE7C();
  v6 = sub_1C456902C(&qword_1EC0B8AF0, &unk_1C4F0DF20);
  v0[32] = v6;
  sub_1C43FBD18(v6);
  v0[33] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v0[34] = v7;
  sub_1C43FBD18(v7);
  v0[35] = sub_1C43FE604();
  v0[36] = swift_task_alloc();
  v8 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v0[37] = v8;
  sub_1C43FBD18(v8);
  v0[38] = sub_1C43FBE7C();
  v9 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4B15EE4()
{
  v1 = *(type metadata accessor for LOIBasedSegment(0) + 20);
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C4575ED0();
  v4 = sub_1C4410584(v3);
  if (v4)
  {
    v61 = v0[38];
    v62 = v0[37];
    v5 = v0[36];
    v6 = v0[34];
    sub_1C43FCE64();
    v8 = v7;
    v10 = *(v9 + 16);
    v10(v5);
    v11 = sub_1C440BF24();
    v10(v11);
    v12 = sub_1C44089C8();
    sub_1C4460050(v12, v13, v14, v15);
    v59 = *(v6 + 48);
    v16 = *(v8 + 32);
    v17 = sub_1C43FF584();
    v18 = v16(v17);
    v26 = sub_1C441C46C(v18, v19, v20, v21, v22, v23, v24, v25, v59);
    v1(v26);
    v27 = sub_1C44089C8();
    v29 = sub_1C44CD9E0(v27, v28, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v37 = sub_1C4435398(v29, v30, v31, v32, v33, v34, v35, v36, v60, v61, v62);
    v16(v37);
    v38 = sub_1C44057DC();
    v1(v38);
    v0[10] = sub_1C456902C(&qword_1EC0C1BB0, &qword_1C4F46228);
    v0[11] = sub_1C4B16D30();
    v39 = sub_1C4422F90(v0 + 7);
    sub_1C4422480(v39);
    v0[39] = v2;
    if (v2)
    {
      sub_1C4420C3C(v0[38], &qword_1EC0B84B8, &unk_1C4F0D4F0);
      sub_1C47C41F8((v0 + 7));
      sub_1C44603BC();
      v40 = sub_1C4F00968();
      v41 = sub_1C4F01CF8();
      if (sub_1C4402B64(v41))
      {
        v42 = sub_1C43FCED0();
        sub_1C4405D10(v42);
        sub_1C442BEF0(&dword_1C43F8000, v43, (v8 + 32), "Unable to fetch motion state events for calculating walkingToStationaryRatio");
        sub_1C43FBE2C();
      }

      v44 = v0[39];

      v45 = sub_1C4404BCC();
      v46(v45);
      if (!v44)
      {
        sub_1C440962C(v0 + 2);
      }

      sub_1C4415C20();

      sub_1C441E670();
      sub_1C440405C();

      __asm { BRAA            X4, X16 }
    }

    sub_1C4420C3C(v0[38], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C441D670((v0 + 7), (v0 + 2));
    sub_1C4409678(v0 + 2, v0[5]);
    sub_1C43FCE64();
    sub_1C43FBE7C();
    sub_1C4418A44();
    v49();
    v0[15] = sub_1C44411D4();
    v0[16] = swift_getAssociatedConformanceWitness();
    sub_1C4422F90(v0 + 12);
    sub_1C4404BCC();
    sub_1C4F019A8();

    v0[40] = 0;
    v0[41] = 0;
    sub_1C4436644();
    v0[44] = sub_1C43FD730(255);
    v50 = sub_1C4F01F48();
    v0[45] = v50;
    sub_1C43FCF7C(v50);
    v0[46] = v51;
    v0[47] = sub_1C43FBE7C();
    v52 = sub_1C43FD730(0);
    v0[48] = v52;
    sub_1C43FCF7C(v52);
    v0[49] = v53;
    v0[50] = *(v54 + 64);
    v0[51] = sub_1C43FBE7C();
    swift_task_alloc();
    sub_1C43FBE70();
    v0[52] = v55;
    *v55 = v56;
    sub_1C441A4A8(v55);
    sub_1C440405C();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D8D0](v4);
}

uint64_t sub_1C4B163A0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;

  if (v0)
  {
    v7 = sub_1C4B16940;
  }

  else
  {

    v7 = sub_1C4B164A4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C4B164A4()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 320);
    v4 = *(v0 + 328);
    (*(*(v0 + 368) + 8))(v1, *(v0 + 360));

    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_1C440962C((v0 + 16));
    sub_1C440962C((v0 + 96));

    v5 = *(v0 + 8);

    return v5(v4, v3, 0);
  }

  else
  {
    *(v0 + 160) = v2;
    v7 = sub_1C4422F90((v0 + 136));
    (*(*(v2 - 8) + 32))(v7, v1, v2);

    sub_1C44482AC((v0 + 136), (v0 + 168));
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 256);
      v11 = *(v0 + 264);
      v12 = *(v0 + 248);
      sub_1C43FBD94();
      sub_1C440BAA8(v13, v14, v15, v10);
      sub_1C44CD9E0(v12, v11, &qword_1EC0B8AF0, &unk_1C4F0DF20);
      v16 = *(v11 + *(v10 + 32));
      if (v16 == 1)
      {
        v35 = *(v0 + 320);
        v36 = *(v0 + 264);
        sub_1C4EF9AD8();
        v38 = v37;
        sub_1C4EF9AD8();
        v40 = v39;
        sub_1C4420C3C(v36, &qword_1EC0B8AF0, &unk_1C4F0DF20);
        v41 = v38 - v40;
        if (v35 >= v38 - v40)
        {
          v41 = v35;
        }

        v23 = *(v0 + 328);
      }

      else
      {
        if (v16 == 2)
        {
          v17 = *(v0 + 328);
          v18 = *(v0 + 264);
          sub_1C4EF9AD8();
          v20 = v19;
          sub_1C4EF9AD8();
          v22 = v21;
          sub_1C4420C3C(v18, &qword_1EC0B8AF0, &unk_1C4F0DF20);
          if (v17 >= v20 - v22)
          {
            v23 = v17;
          }

          else
          {
            v23 = v20 - v22;
          }
        }

        else
        {
          sub_1C4420C3C(*(v0 + 264), &qword_1EC0B8AF0, &unk_1C4F0DF20);
          v23 = *(v0 + 328);
        }

        v41 = *(v0 + 320);
      }

      *(v0 + 320) = v41;
      *(v0 + 328) = v23;
    }

    else
    {
      v24 = *(v0 + 248);
      sub_1C44102A4(v24, v8, v9, *(v0 + 256));
      sub_1C4420C3C(v24, &qword_1EC0C1B98, &unk_1C4F461E0);
      sub_1C4F00198();
      v25 = sub_1C4F00968();
      v26 = sub_1C4F01CF8();
      if (sub_1C4402B64(v26))
      {
        v27 = sub_1C43FCED0();
        sub_1C43FBD24(v27);
        sub_1C4402B48();
        _os_log_impl(v28, v29, v30, v31, v32, 2u);
        sub_1C43FE9D4();
      }

      v33 = sub_1C4402B58();
      v34(v33);
    }

    sub_1C4436644();
    *(v0 + 352) = sub_1C43FD730(255);
    v42 = sub_1C4F01F48();
    *(v0 + 360) = v42;
    sub_1C43FCF7C(v42);
    *(v0 + 368) = v43;
    *(v0 + 376) = sub_1C43FBE7C();
    v44 = sub_1C43FD730(0);
    *(v0 + 384) = v44;
    sub_1C43FCF7C(v44);
    *(v0 + 392) = v45;
    *(v0 + 400) = *(v46 + 64);
    *(v0 + 408) = sub_1C43FBE7C();
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 416) = v47;
    *v47 = v48;
    v49 = sub_1C441A4A8(v47);

    return MEMORY[0x1EEE6D8D0](v49);
  }
}

uint64_t sub_1C4B16940()
{
  v3 = v1[51];
  sub_1C43FBE7C();
  sub_1C444B2A0();
  v2();
  swift_getAssociatedConformanceWitness();
  sub_1C43FF584();
  v4 = sub_1C4F028C8();
  if (v4)
  {
    v3 = v4;
    (*(v1[49] + 8))(v0, v1[48]);
  }

  else
  {
    sub_1C44057DC();
    v5 = swift_allocError();
    v7 = sub_1C444FF78(v5, v6);
    (v2)(v7);
  }

  v8 = v1[51];

  sub_1C440962C(v1 + 12);
  sub_1C44603BC();
  v9 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C44024DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_1C43FCED0();
    sub_1C4405D10(v11);
    sub_1C442BEF0(&dword_1C43F8000, v12, v8, "Unable to fetch motion state events for calculating walkingToStationaryRatio");
    sub_1C43FBE2C();
  }

  v13 = v1[39];

  v14 = sub_1C43FBEF8();
  v15(v14);
  if (!v13)
  {
    sub_1C440962C(v1 + 2);
  }

  sub_1C4415C20();

  v16 = sub_1C441E670();

  return v17(v16);
}

uint64_t sub_1C4B16B1C()
{

  sub_1C440962C((v0 + 48));
  sub_1C440962C((v0 + 88));

  return v0;
}

uint64_t sub_1C4B16B6C()
{
  sub_1C4B16B1C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B16BC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4B136E8();
}

double sub_1C4B16C70()
{
  v1 = type metadata accessor for LOIBasedSegment(0);
  sub_1C43FBD18(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1C4B14D1C(v3);
}

double sub_1C4B16CCC()
{
  v1 = sub_1C4EFE1C8();
  sub_1C43FBD18(v1);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];

  return sub_1C4B14ED8(v2, v3, v4);
}

unint64_t sub_1C4B16D30()
{
  result = qword_1EDDDE958;
  if (!qword_1EDDDE958)
  {
    sub_1C4572308(&qword_1EC0C1BB0, &qword_1C4F46228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE958);
  }

  return result;
}

uint64_t SimpleBlockingFunction.init(predicates:relationshipPredicates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C4B16DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C4F00978();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB5F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C442C730();
  sub_1C4EFD868();
  sub_1C46BC6FC();
  sub_1C4EFB5D8();
  if (v3)
  {
    v11 = sub_1C43FC1C0();
    return v12(v11);
  }

  else
  {
    v14 = sub_1C43FC1C0();
    v15(v14);
    sub_1C4F00178();
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CB8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = sub_1C43FCED0();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v16, v17, "SiriRemembersViewGenerator: finished database migration.", v18, 2u);
      sub_1C43FBE2C();
    }

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_1C4B16FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return sub_1C446C37C(sub_1C4B18820, v5);
}

void sub_1C4B16FF4()
{
  sub_1C43FE96C();
  v32[4] = v3;
  v32[5] = v2;
  v32[6] = v4;
  v32[7] = v5;
  v7 = v6;
  v8 = sub_1C4F00978();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v33 = (v12 - v13);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v32 - v16;
  sub_1C4F00178();
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CB8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_1C43FCED0();
    *v20 = 0;
    _os_log_impl(&dword_1C43F8000, v18, v19, "SiriRemembersViewGenerator: drop indexes.", v20, 2u);
    sub_1C43FBE2C();
  }

  v21 = *(v10 + 8);
  v21(v17, v8);
  sub_1C4B17324();
  if (!v0)
  {
    v24 = v22;
    v32[2] = v23;
    v32[3] = v7;
    sub_1C4F00178();
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = sub_1C43FCED0();
      v32[1] = v24;
      *v27 = 0;
      _os_log_impl(&dword_1C43F8000, v25, v26, "SiriRemembersViewGenerator: clear all tables.", v27, 2u);
      sub_1C43FBE2C();
    }

    v21(v1, v8);
    sub_1C448DE08();
    sub_1C46A9F14(v28);

    sub_1C4F00178();
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CB8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = sub_1C43FCED0();
      *v31 = 0;
      _os_log_impl(&dword_1C43F8000, v29, v30, "SiriRemembersViewGenerator: restore indexes.", v31, 2u);
      sub_1C43FBE2C();
    }

    v21(v33, v8);
    sub_1C4B17950();
  }

  sub_1C43FBC80();
}

void sub_1C4B17324()
{
  sub_1C43FE96C();
  v2 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v49 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4F00978();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C442C730();
  sub_1C4F00178();
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_1C43FCED0();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "SiriRemembersViewGenerator: SiriRemembersDatabaseTable: dropping indexes", v13, 2u);
    sub_1C43FBE2C();
  }

  (*(v9 + 8))(v0, v7);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000001C4FB1AD0;
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 48) = 0xD000000000000020;
  *(inited + 56) = 0x80000001C4FB1AF0;
  v15 = sub_1C46A9F90(0, 0, 0x7865646E69, 0xE500000000000000);
  if (v1)
  {
    swift_setDeallocating();
    sub_1C44DEE40();
LABEL_17:
    sub_1C43FBC80();
  }

  else
  {
    v16 = v15;
    v46 = v2;
    v47 = v6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4B18330(v16, inited);

    swift_setDeallocating();
    sub_1C44DEE40();
    sub_1C43FD030();
    sub_1C440D3F4();

    v18 = 0;
    if (v6)
    {
      while (1)
      {
        v19 = v18;
LABEL_10:
        sub_1C440B24C();
        sub_1C441772C();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4411180();
        sub_1C4EFBF58();
        sub_1C43FF594();

        v18 = v19;
      }
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);

        v40 = sub_1C4408FA0();
        v41(v40);

        goto LABEL_17;
      }

      if (v19 >= inited)
      {
        break;
      }

      ++v18;
      if (*&v17[8 * v19 + 64])
      {
        goto LABEL_10;
      }
    }

    v20 = sub_1C46A9F90(0, 0, 0x656C626174, 0xE500000000000000);
    v21 = sub_1C4B184F4(v20);

    sub_1C43FD030();
    sub_1C440D3F4();

    v22 = 0;
    v48 = v21;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= inited)
      {
        break;
      }

      ++v22;
      if (v21[v23 + 8])
      {
        while (1)
        {
          sub_1C440B24C();
          sub_1C441772C();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4411180();
          sub_1C4EFBF68();
          sub_1C43FF594();
        }
      }
    }

    v24 = sub_1C46A9F90(0, 0, 0x72656767697274, 0xE700000000000000);
    v25 = v24;
    v26 = v24 + 64;
    sub_1C43FD030();
    v29 = v28 & v27;
    v31 = (v30 + 63) >> 6;
    v49 += 8;
    v32 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v33 = 0;
    v43 = v31;
    v44 = v26;
    for (i = v32; v29; v31 = v43)
    {
      v34 = v33;
LABEL_23:
      v35 = (*(v25 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v29)))));
      v36 = *v35;
      v37 = v35[1];
      strcpy(v50, "DROP TRIGGER ");
      v51 = -4864;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v36, v37);
      sub_1C4EFB758();
      sub_1C4EFBFF8();
      v29 &= v29 - 1;

      v38 = sub_1C4408FA0();
      v39(v38);
      v33 = v34;
      v26 = v44;
      v25 = i;
    }

    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v31)
      {

        goto LABEL_17;
      }

      v29 = *(v26 + 8 * v34);
      ++v33;
      if (v29)
      {
        goto LABEL_23;
      }
    }

LABEL_28:
    __break(1u);
  }
}

void sub_1C4B18040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(char *, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v23 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  if (v20)
  {
    (*(v25 + 8))(v31, v23);
  }

  else
  {
    a10 = *(v25 + 8);
    a10(v31, v23);
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    sub_1C440FB90();
    v35();
    sub_1C4EFD898();
    sub_1C4EFB758();
    sub_1C4EFBFF8();
    sub_1C440FB90();
    v36();

    sub_1C4EFB758();
    sub_1C4EFBFF8();
    sub_1C440FB90();
    v34(v32, v33);
  }

  sub_1C43FBC80();
}

void *sub_1C4B18290(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1C4B18658(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

_BYTE *sub_1C4B18330(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C4B18290(v12, v7, v4, a2);
      MEMORY[0x1C6942830](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C4B18658(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

void *sub_1C4B184F4(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1C46BC394(v8, v4, v2);
      MEMORY[0x1C6942830](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  v6 = sub_1C46BC570(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_1C4B18900()
{
  sub_1C43FBD3C();
  v3 = v1;
  sub_1C4418BAC(v4, v5, v6, v7, v8, v9, v10, v11);
  v144 = v12;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v14);
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  sub_1C43FD2C8(v17);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C44289FC();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4B2AB38();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD230();
  sub_1C44F0CE4(v25);
  v26 = [v1 __swift_objectForKeyedSubscript_];
  sub_1C44E76F8();
  swift_unknownObjectRelease();
  if (v0)
  {
    sub_1C4B2ABF0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4475850();
  }

  sub_1C4441540();
  if (!v27)
  {
    sub_1C4420C3C(&v148, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  sub_1C4B2A2B4();
  if ((sub_1C4488A68() & 1) == 0)
  {
LABEL_11:
    sub_1C44F19E8();
    v20 = v144;
    if (!v28)
    {
      sub_1C4419274();
      swift_once();
    }

    v49 = sub_1C4F00978();
    sub_1C442B738(v49, qword_1EDE2DE10);
    v150 = *(v1 + 16);
    v148 = *(v1 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD064(&v150);
    sub_1C4485A8C(&v148);
    v50 = sub_1C4F00968();
    sub_1C4F01CD8();

    sub_1C4B2ABD8(&v150);
    sub_1C43FC2F4();
    sub_1C4420C3C(v51, v52, v53);
    if (sub_1C44020E0())
    {
      sub_1C43FECF0();
      v54 = swift_slowAlloc();
      sub_1C43FEC60();
      v55 = swift_slowAlloc();
      sub_1C4B2AACC(v55);
      sub_1C4473D9C(4.8149e-34);
      v56 = sub_1C43FD574();
      *(v54 + 4) = sub_1C441D828(v56, v57, v58);
      sub_1C43FBD74(&dword_1C43F8000, v59, v60, "Mapping error, missing submap for %s");
      sub_1C440962C(&qword_1C4F0D970);
      v61 = sub_1C4408D20();
      MEMORY[0x1C6942830](v61);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C45CF650();
    sub_1C441C114();
    v62 = swift_allocError();
    sub_1C44046C4(v62, v63);
    swift_willThrow();
    goto LABEL_16;
  }

  sub_1C4426444();
  sub_1C44F19E8();
  if (!v28)
  {
    sub_1C4419274();
    swift_once();
  }

  v29 = sub_1C4F00978();
  sub_1C442B738(v29, qword_1EDE2DE10);
  v30 = sub_1C443E3CC();
  v31(v30);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CB8();

  os_log_type_enabled(v32, v33);
  sub_1C4B2AAE4();
  if (v34)
  {
    sub_1C4480408();
    v35 = swift_slowAlloc();
    sub_1C443FD74();
    v36 = swift_slowAlloc();
    sub_1C44753A0(v36);
    *v35 = 136381187;
    v37 = sub_1C44587A0(&v151);
    *(v35 + 4) = sub_1C441D828(v37, v38, v39);
    *(v35 + 12) = 2080;
    sub_1C4407A84();
    sub_1C44CD238(v40, v41, MEMORY[0x1E69A92F8]);
    v42 = sub_1C4F02858();
    v3 = v43;
    v44 = sub_1C443E1EC();
    v45(v44);
    sub_1C441D828(v42, v3, &v148);

    sub_1C448832C();
    sub_1C4B2AB18(&dword_1C43F8000, v46, v47, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4410278(&v145);
    swift_arrayDestroy();
    v48 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v48);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v66 = sub_1C443E1EC();
    v67(v66);
  }

  sub_1C4455960();
  MEMORY[0x1C6940010](v33, v3);
  v68 = v148;
  sub_1C4F01178();
  sub_1C4B2AB98();
  v69 = sub_1C44A3AC4();
  v70(v69);
  if (v32 >> 60 != 15)
  {

    sub_1C442D2CC();
    v82 = sub_1C44CD238(v80, v81, MEMORY[0x1E6966618]);
    sub_1C4401E94(v82);
    v83 = sub_1C4409D0C();
    sub_1C44344B8(v83, v84);
    v85 = sub_1C4409D0C();
    sub_1C4498FD8(v85, v86, v2);
    v87 = sub_1C4409D0C();
    sub_1C441DFEC(v87, v88);
    sub_1C442F708();
    sub_1C4F00DA8();
    v89 = sub_1C443F33C();
    v90(v89);
    v91 = sub_1C44B8FE8();
    v92(v91);
    v93 = sub_1C440CD70();
    v94(v93);
    sub_1C440A6C4();
    sub_1C4EFF028();
    v95 = sub_1C4409D0C();
    sub_1C441DFEC(v95, v96);
    v97 = sub_1C445BB20();
    v98(v97);
    v99 = sub_1C444C02C();
    v100(v99);
    sub_1C442023C();
    v146 = v101;
    v147 = v102;
    v103 = sub_1C4F029C8();
    v104 = sub_1C440BC84(&v149);
    v106 = [v104 v105];
    sub_1C441C818();
    swift_unknownObjectRelease();
    if (v68)
    {
      sub_1C4B2ABF0();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C4475850();
    }

    sub_1C4441540();
    if (v117)
    {
      if (sub_1C44EC838())
      {

        if (v142)
        {
          v118 = sub_1C44A1F08();
          sub_1C4B1FB70(v118, v119, v120, v121, v122, v123, v124, v125, v137);
LABEL_35:
          sub_1C44A1C64();
          sub_1C44886C4();
          v129();

          goto LABEL_17;
        }

        sub_1C4B2A94C();
        v130 = sub_1C4F00968();
        sub_1C4F01CD8();
        v131 = sub_1C44016D0();
        if (os_log_type_enabled(v131, v132))
        {
          sub_1C43FD1A8();
          v133 = swift_slowAlloc();
          sub_1C43FBD24(v133);
          sub_1C440BAE8(&dword_1C43F8000, v134, v135, "Mapping error, missing identifier for nested entity");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C45CF650();
        sub_1C441C114();
        v62 = swift_allocError();
        sub_1C44060DC(v62, v136);
        swift_willThrow();

        (*(v2 + 8))();
LABEL_16:
        v64 = v20[1];
        v146 = *v20;
        v147 = v64;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](32, 0xE100000000000000);
        v65 = sub_1C43FD574();
        MEMORY[0x1C6940010](v65);
        sub_1C4B5B968(v62);

        goto LABEL_17;
      }
    }

    else
    {
      sub_1C4420C3C(&v148, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    v126 = sub_1C44000C4();
    sub_1C4466D68(v126, v127, v141, v128);
    goto LABEL_35;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B2A94C();
  v71 = sub_1C4F00968();
  v72 = sub_1C4F01CD8();

  os_log_type_enabled(v71, v72);
  sub_1C440D73C();
  if (v73)
  {
    sub_1C43FECF0();
    v74 = swift_slowAlloc();
    sub_1C43FEC60();
    v75 = swift_slowAlloc();
    *&v148 = v75;
    sub_1C4B2AB78(4.845e-34);
    sub_1C44E76F8();

    *(v74 + 4) = v68;
    sub_1C4B2AB58(&dword_1C43F8000, v76, v77, "Source: failed to encode identifier as UTF8 data: %{private}s");
    sub_1C440962C(v75);
    v78 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v78);
    v79 = sub_1C4408D20();
    MEMORY[0x1C6942830](v79);
  }

  else
  {
  }

  v150 = *(v138 + 16);
  v148 = *(v138 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44CD064(&v150);
  sub_1C4485A8C(&v148);
  v107 = sub_1C4F00968();
  sub_1C4F01CD8();

  sub_1C4B2ABD8(&v150);
  sub_1C43FC2F4();
  sub_1C4420C3C(v108, v109, v110);
  if (sub_1C44020E0())
  {
    sub_1C43FECF0();
    v111 = swift_slowAlloc();
    sub_1C43FEC60();
    v112 = swift_slowAlloc();
    sub_1C4B2AACC(v112);
    sub_1C4473D9C(4.8149e-34);
    *(v111 + 4) = sub_1C441D828(v2, v140, v113);
    sub_1C43FBD74(&dword_1C43F8000, v114, v115, "Mapping error, failed to generate EntityIdentifier for %s");
    sub_1C440962C(&qword_1C4F0D970);
    v116 = sub_1C4408D20();
    MEMORY[0x1C6942830](v116);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

LABEL_17:
  sub_1C43FE9F0();
}

void sub_1C4B193E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v27;
  a20 = v28;
  v37 = sub_1C4426DC8(v29, v30, v31, v32, v33, v34, v35, v36);
  v38 = sub_1C43FFAE0(v37, &a15);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v39);
  v40 = sub_1C4F00DC8();
  v41 = sub_1C43FFAE0(v40, &a17);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  sub_1C43FD2C8(v43);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  sub_1C44289FC();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C445BA94();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  sub_1C447E23C(v49);
  v50 = sub_1C4F029C8();
  v51 = sub_1C4B2AC08(v50, sel___swift_objectForKeyedSubscript_);
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C447F6E8();
  }

  sub_1C448E09C();
  if (!v52)
  {
    sub_1C4420C3C(v188, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v50 = sub_1C4B2A2B4();
  if ((sub_1C4462848() & 1) == 0)
  {
LABEL_11:
    sub_1C4475618();
    if (!v53)
    {
      sub_1C4419274();
      swift_once();
    }

    v73 = sub_1C4F00978();
    sub_1C442B738(v73, qword_1EDE2DE10);
    sub_1C443DFBC();
    v186(v24);
    v74 = sub_1C4F00968();
    sub_1C4F01CD8();
    v75 = sub_1C44016D0();
    if (os_log_type_enabled(v75, v76))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v77 = swift_slowAlloc();
      sub_1C43FE768(v77);
      sub_1C445CCE4(4.8149e-34);
      v78 = sub_1C4482D0C();
      v79(v78);
      v80 = sub_1C444AD80();
      sub_1C441D828(v80, v26, v81);
      sub_1C4B2AA44();
      *(&xmmword_1EDDFD000 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v82, v83, v84, v85, v86, v87);
      sub_1C440962C(v50);
      v88 = sub_1C4408D20();
      MEMORY[0x1C6942830](v88);
      v89 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v89);
    }

    else
    {
      v90 = sub_1C4482D0C();
      v91(v90);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v92 = swift_allocError();
    sub_1C44046C4(v92, v93);
    swift_willThrow();
    goto LABEL_17;
  }

  sub_1C4435C84();
  sub_1C4475618();
  if (!v53)
  {
    sub_1C4419274();
    swift_once();
  }

  v54 = sub_1C4F00978();
  sub_1C442B738(v54, qword_1EDE2DE10);
  v55 = sub_1C441BC8C();
  v56(v55);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v57 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4404CE0();

  v58 = sub_1C4B2AAD8();
  if (os_log_type_enabled(v58, v59))
  {
    sub_1C4480408();
    v175 = v25;
    v60 = swift_slowAlloc();
    sub_1C443FD74();
    v61 = swift_slowAlloc();
    sub_1C4460AE0(v61);
    *v60 = 136381187;
    v62 = sub_1C44587A0(v190);
    v65 = sub_1C441D828(v62, v63, v64);
    sub_1C4441790(v65);
    sub_1C4407A84();
    v68 = sub_1C44CD238(v66, v67, MEMORY[0x1E69A92F8]);
    sub_1C4B2A8D4(v68);
    v69 = sub_1C4422B90();
    v70(v69);
    sub_1C4507B68();
    sub_1C44E76F8();

    sub_1C4471D20();
    sub_1C44608A8(&dword_1C43F8000, v71, v72, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4410278(v187);
    swift_arrayDestroy();
    v26 = v176;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v25 = v175;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v95 = sub_1C4422B90();
    v96(v95);
  }

  sub_1C442F964();
  v97 = sub_1C4402CD0();
  v98 = MEMORY[0x1C6940010](v97);
  sub_1C4B2A988(v98);
  sub_1C44AB280();
  v99 = sub_1C440F004();
  v100(v99);
  if (v57 >> 60 != 15)
  {
    v187[0] = v23;

    sub_1C442D2CC();
    v111 = sub_1C44CD238(v109, v110, MEMORY[0x1E6966618]);
    sub_1C4418550(v111);
    v112 = sub_1C4402CD0();
    sub_1C44344B8(v112, v113);
    v114 = sub_1C4402CD0();
    sub_1C4498FD8(v114, v115, v25);
    sub_1C444C328();
    v116 = sub_1C447E338();
    v117(v116);
    v118 = sub_1C44163A0();
    v119(v118);
    v120 = sub_1C444FF8C();
    v121(v120);
    sub_1C44A1838();
    v122 = sub_1C4402CD0();
    sub_1C441DFEC(v122, v123);
    v124 = sub_1C445AB04();
    v125(v124);
    v126 = sub_1C442ECE4();
    v127(v126);
    sub_1C442023C();
    v189 = v128;
    v190[0] = v129;
    v130 = sub_1C4F029C8();
    v131 = sub_1C44D4550(v130, sel___swift_objectForKeyedSubscript_);
    sub_1C441C818();
    swift_unknownObjectRelease();
    v25 = 0;
    if (v20)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C447F6E8();
    }

    sub_1C448E09C();
    v23 = v187[0];
    if (v152)
    {
      if (sub_1C4475C50())
      {

        if (v184)
        {
          v154 = sub_1C440608C();
          sub_1C4B28D4C(v154, v155, v156, v157, v158, v159, v160, v161, v173, v174, v175, v176, v177, v178, v179, v180, 0x1EDDFD000, v181, v182, v183);
LABEL_35:
          v162 = sub_1C44024E8();
          v163(v162);

          goto LABEL_18;
        }

        v164 = sub_1C442A62C(v153);
        sub_1C4F01CD8();
        v165 = sub_1C44016D0();
        if (os_log_type_enabled(v165, v166))
        {
          sub_1C43FD1A8();
          v167 = swift_slowAlloc();
          sub_1C43FBD24(v167);
          sub_1C440BAE8(&dword_1C43F8000, v168, v169, "Mapping error, missing identifier for nested entity");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C45CF650();
        sub_1C441C114();
        v92 = swift_allocError();
        sub_1C44060DC(v92, v170);
        swift_willThrow();

        v171 = sub_1C44024E8();
        v172(v171);
LABEL_17:
        v94 = v25[1];
        *&v188[0] = *v25;
        *(&v188[0] + 1) = v94;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4482EB0();
        MEMORY[0x1C6940010](v23, v26);
        sub_1C44806E0();

        goto LABEL_18;
      }
    }

    else
    {
      sub_1C4420C3C(v188, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    sub_1C44603D4();
    goto LABEL_35;
  }

  v101 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v102 = sub_1C442A62C(v101);
  v103 = sub_1C4F01CD8();

  if (os_log_type_enabled(v102, v103))
  {
    sub_1C43FECF0();
    v104 = swift_slowAlloc();
    sub_1C43FEC60();
    v105 = swift_slowAlloc();
    sub_1C43FE768(v105);
    sub_1C447F860(4.845e-34);
    sub_1C4B2AC20();
    *(v104 + 4) = v185;
    sub_1C4508944(&dword_1C43F8000, v106, v107, "Source: failed to encode identifier as UTF8 data: %{private}s");
    sub_1C440962C(v57);
    v108 = sub_1C4408D20();
    MEMORY[0x1C6942830](v108);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v132 = sub_1C4458550();
  v133(v132);
  v134 = sub_1C4F00968();
  sub_1C4F01CD8();
  v135 = sub_1C44016D0();
  if (os_log_type_enabled(v135, v136))
  {
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C43FC858();
    v137 = swift_slowAlloc();
    sub_1C43FE768(v137);
    sub_1C445CCE4(4.8149e-34);
    v138 = sub_1C44B6784();
    v139(v138);
    v140 = sub_1C444AD80();
    sub_1C441D828(v140, v26, v141);
    sub_1C4B2AA44();
    *(v188 + 4) = v185;
    sub_1C44046B4();
    _os_log_impl(v142, v143, v144, v145, v146, v147);
    sub_1C440962C(v57);
    v148 = sub_1C4408D20();
    MEMORY[0x1C6942830](v148);
    v149 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v149);
  }

  else
  {
    v150 = sub_1C44B6784();
    v151(v150);
  }

LABEL_18:
  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4B19DB0()
{
  sub_1C43FBD3C();
  v3 = v1;
  sub_1C4418BAC(v4, v5, v6, v7, v8, v9, v10, v11);
  v152 = v12;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v14);
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  sub_1C43FD2C8(v17);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C44289FC();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4B2AB38();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD230();
  sub_1C44F0CE4(v25);
  v26 = [v1 __swift_objectForKeyedSubscript_];
  sub_1C44E76F8();
  swift_unknownObjectRelease();
  if (v0)
  {
    sub_1C4B2ABF0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4475850();
  }

  sub_1C4441540();
  if (!v27)
  {
    sub_1C4420C3C(&v156, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  sub_1C4B2A2B4();
  if ((sub_1C4488A68() & 1) == 0)
  {
LABEL_11:
    sub_1C44F19E8();
    v20 = v152;
    if (!v28)
    {
      sub_1C4419274();
      swift_once();
    }

    v49 = sub_1C4F00978();
    sub_1C442B738(v49, qword_1EDE2DE10);
    v156 = *(v1 + 16);
    v158 = *(v1 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD064(&v156);
    sub_1C4485A8C(&v158);
    v50 = sub_1C4F00968();
    sub_1C4F01CD8();

    sub_1C4B2ABD8(&v156);
    sub_1C43FC2F4();
    sub_1C4420C3C(v51, v52, v53);
    if (sub_1C44020E0())
    {
      sub_1C43FECF0();
      v54 = swift_slowAlloc();
      sub_1C43FEC60();
      v55 = swift_slowAlloc();
      sub_1C4B2AACC(v55);
      sub_1C4473D9C(4.8149e-34);
      v56 = sub_1C43FD574();
      *(v54 + 4) = sub_1C441D828(v56, v57, v58);
      sub_1C43FBD74(&dword_1C43F8000, v59, v60, "Mapping error, missing submap for %s");
      sub_1C440962C(&qword_1C4F0FF50);
      v61 = sub_1C4408D20();
      MEMORY[0x1C6942830](v61);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C45CF650();
    sub_1C441C114();
    v62 = swift_allocError();
    sub_1C44046C4(v62, v63);
    swift_willThrow();
    goto LABEL_16;
  }

  sub_1C4426444();
  sub_1C44F19E8();
  if (!v28)
  {
    sub_1C4419274();
    swift_once();
  }

  v29 = sub_1C4F00978();
  sub_1C442B738(v29, qword_1EDE2DE10);
  v30 = sub_1C443E3CC();
  v31(v30);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v143 = v1;
  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CB8();

  os_log_type_enabled(v32, v33);
  sub_1C4B2AAE4();
  if (v34)
  {
    sub_1C4480408();
    v35 = swift_slowAlloc();
    sub_1C443FD74();
    v36 = swift_slowAlloc();
    sub_1C44753A0(v36);
    *v35 = 136381187;
    v37 = sub_1C44587A0(&v159);
    *(v35 + 4) = sub_1C441D828(v37, v38, v39);
    *(v35 + 12) = 2080;
    sub_1C4407A84();
    sub_1C44CD238(v40, v41, MEMORY[0x1E69A92F8]);
    v42 = sub_1C4F02858();
    v3 = v43;
    v44 = sub_1C443E1EC();
    v45(v44);
    sub_1C441D828(v42, v3, &v156);

    sub_1C448832C();
    sub_1C4B2AB18(&dword_1C43F8000, v46, v47, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4410278(&v153);
    swift_arrayDestroy();
    v48 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v48);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v66 = sub_1C443E1EC();
    v67(v66);
  }

  sub_1C4455960();
  MEMORY[0x1C6940010](v33, v3);
  v68 = v156;
  sub_1C4F01178();
  sub_1C4B2AB98();
  v69 = sub_1C44A3AC4();
  v70(v69);
  if (v32 >> 60 != 15)
  {

    sub_1C442D2CC();
    v82 = sub_1C44CD238(v80, v81, MEMORY[0x1E6966618]);
    sub_1C4401E94(v82);
    v83 = sub_1C4409D0C();
    sub_1C44344B8(v83, v84);
    v85 = sub_1C4409D0C();
    sub_1C4498FD8(v85, v86, v2);
    v87 = sub_1C4409D0C();
    sub_1C441DFEC(v87, v88);
    sub_1C442F708();
    sub_1C4F00DA8();
    v89 = sub_1C443F33C();
    v90(v89);
    v91 = sub_1C44B8FE8();
    v92(v91);
    v93 = sub_1C440CD70();
    v94(v93);
    sub_1C440A6C4();
    sub_1C4EFF028();
    v95 = sub_1C4409D0C();
    sub_1C441DFEC(v95, v96);
    v97 = sub_1C445BB20();
    v98(v97);
    v99 = sub_1C444C02C();
    v100(v99);
    sub_1C442023C();
    v154 = v101;
    v155 = v102;
    v103 = sub_1C4F029C8();
    v104 = sub_1C440BC84(&v157);
    v106 = [v104 v105];
    sub_1C441C818();
    swift_unknownObjectRelease();
    if (v68)
    {
      sub_1C4B2ABF0();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C4475850();
    }

    sub_1C4441540();
    if (v117)
    {
      if (sub_1C44EC838())
      {

        if (v150)
        {
          v118 = sub_1C44A1F08();
          sub_1C4B275D8(v118, v119, v120, v121, v122, v123, v124, v125, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
LABEL_35:
          sub_1C44A1C64();
          sub_1C44886C4();
          v129();

          goto LABEL_17;
        }

        sub_1C4B2A94C();
        v130 = sub_1C4F00968();
        sub_1C4F01CD8();
        v131 = sub_1C44016D0();
        if (os_log_type_enabled(v131, v132))
        {
          sub_1C43FD1A8();
          v133 = swift_slowAlloc();
          sub_1C43FBD24(v133);
          sub_1C440BAE8(&dword_1C43F8000, v134, v135, "Mapping error, missing identifier for nested entity");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C45CF650();
        sub_1C441C114();
        v62 = swift_allocError();
        sub_1C44060DC(v62, v136);
        swift_willThrow();

        (*(v2 + 8))();
LABEL_16:
        v64 = v20[1];
        v154 = *v20;
        v155 = v64;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](32, 0xE100000000000000);
        v65 = sub_1C43FD574();
        MEMORY[0x1C6940010](v65);
        sub_1C4B5B968(v62);

        goto LABEL_17;
      }
    }

    else
    {
      sub_1C4420C3C(&v156, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    v126 = sub_1C44000C4();
    sub_1C4466D68(v126, v127, v148, v128);
    goto LABEL_35;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B2A94C();
  v71 = sub_1C4F00968();
  v72 = sub_1C4F01CD8();

  os_log_type_enabled(v71, v72);
  sub_1C440D73C();
  if (v73)
  {
    sub_1C43FECF0();
    v74 = swift_slowAlloc();
    sub_1C43FEC60();
    v75 = swift_slowAlloc();
    *&v156 = v75;
    sub_1C4B2AB78(4.845e-34);
    sub_1C44E76F8();

    *(v74 + 4) = v68;
    sub_1C4B2AB58(&dword_1C43F8000, v76, v77, "Source: failed to encode identifier as UTF8 data: %{private}s");
    sub_1C440962C(v75);
    v78 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v78);
    v79 = sub_1C4408D20();
    MEMORY[0x1C6942830](v79);
  }

  else
  {
  }

  v156 = *(v144 + 16);
  v158 = *(v144 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44CD064(&v156);
  sub_1C4485A8C(&v158);
  v107 = sub_1C4F00968();
  sub_1C4F01CD8();

  sub_1C4B2ABD8(&v156);
  sub_1C43FC2F4();
  sub_1C4420C3C(v108, v109, v110);
  if (sub_1C44020E0())
  {
    sub_1C43FECF0();
    v111 = swift_slowAlloc();
    sub_1C43FEC60();
    v112 = swift_slowAlloc();
    sub_1C4B2AACC(v112);
    sub_1C4473D9C(4.8149e-34);
    *(v111 + 4) = sub_1C441D828(v2, v147, v113);
    sub_1C43FBD74(&dword_1C43F8000, v114, v115, "Mapping error, failed to generate EntityIdentifier for %s");
    sub_1C440962C(&qword_1C4F0FF50);
    v116 = sub_1C4408D20();
    MEMORY[0x1C6942830](v116);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

LABEL_17:
  sub_1C43FE9F0();
}

void sub_1C4B1A874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v25;
  a20 = v26;
  v35 = sub_1C4426DC8(v27, v28, v29, v30, v31, v32, v33, v34);
  v36 = sub_1C43FFAE0(v35, &a15);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v37);
  v38 = sub_1C4F00DC8();
  v39 = sub_1C43FFAE0(v38, &a17);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  sub_1C43FD2C8(v41);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBCC4();
  sub_1C44289FC();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C445BA94();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FD230();
  v47 = *(v23 + 16);
  v48 = *(v23 + 24);
  v188 = v47;
  v189[0] = v48;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v49 = sub_1C4F029C8();
  v50 = sub_1C4B2AC08(v49, sel___swift_objectForKeyedSubscript_);
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C447F6E8();
  }

  sub_1C448E09C();
  if (!v51)
  {
    sub_1C4420C3C(v187, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v49 = sub_1C4B2A2B4();
  if ((sub_1C4462848() & 1) == 0)
  {
LABEL_11:
    sub_1C4475618();
    if (!v52)
    {
      sub_1C4419274();
      swift_once();
    }

    v72 = sub_1C4F00978();
    sub_1C442B738(v72, qword_1EDE2DE10);
    sub_1C443DFBC();
    v185(v23);
    v73 = sub_1C4F00968();
    sub_1C4F01CD8();
    v74 = sub_1C44016D0();
    if (os_log_type_enabled(v74, v75))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v76 = swift_slowAlloc();
      sub_1C43FE768(v76);
      sub_1C445CCE4(4.8149e-34);
      v77 = sub_1C4482D0C();
      v78(v77);
      v79 = sub_1C444AD80();
      sub_1C441D828(v79, v48, v80);
      sub_1C4B2AA44();
      *(&xmmword_1EDDFD000 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v81, v82, v83, v84, v85, v86);
      sub_1C440962C(v49);
      v87 = sub_1C4408D20();
      MEMORY[0x1C6942830](v87);
      v88 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v88);
    }

    else
    {
      v89 = sub_1C4482D0C();
      v90(v89);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v91 = swift_allocError();
    sub_1C44046C4(v91, v92);
    swift_willThrow();
    goto LABEL_17;
  }

  sub_1C4435C84();
  sub_1C4475618();
  if (!v52)
  {
    sub_1C4419274();
    swift_once();
  }

  v53 = sub_1C4F00978();
  sub_1C442B738(v53, qword_1EDE2DE10);
  v54 = sub_1C441BC8C();
  v55(v54);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v56 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4404CE0();

  v57 = sub_1C4B2AAD8();
  if (os_log_type_enabled(v57, v58))
  {
    sub_1C4480408();
    v174 = v24;
    v59 = swift_slowAlloc();
    sub_1C443FD74();
    v60 = swift_slowAlloc();
    sub_1C4460AE0(v60);
    *v59 = 136381187;
    v61 = sub_1C44587A0(v189);
    v64 = sub_1C441D828(v61, v62, v63);
    sub_1C4441790(v64);
    sub_1C4407A84();
    v67 = sub_1C44CD238(v65, v66, MEMORY[0x1E69A92F8]);
    sub_1C4B2A8D4(v67);
    v68 = sub_1C4422B90();
    v69(v68);
    sub_1C4507B68();
    sub_1C44E76F8();

    sub_1C4471D20();
    sub_1C44608A8(&dword_1C43F8000, v70, v71, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4410278(v186);
    swift_arrayDestroy();
    v48 = v175;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v24 = v174;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v94 = sub_1C4422B90();
    v95(v94);
  }

  sub_1C442F964();
  v96 = sub_1C4402CD0();
  v97 = MEMORY[0x1C6940010](v96);
  sub_1C4B2A988(v97);
  sub_1C44AB280();
  v98 = sub_1C440F004();
  v99(v98);
  if (v56 >> 60 != 15)
  {
    v186[0] = v47;

    sub_1C442D2CC();
    v110 = sub_1C44CD238(v108, v109, MEMORY[0x1E6966618]);
    sub_1C4418550(v110);
    v111 = sub_1C4402CD0();
    sub_1C44344B8(v111, v112);
    v113 = sub_1C4402CD0();
    sub_1C4498FD8(v113, v114, v24);
    sub_1C444C328();
    v115 = sub_1C447E338();
    v116(v115);
    v117 = sub_1C44163A0();
    v118(v117);
    v119 = sub_1C444FF8C();
    v120(v119);
    sub_1C44A1838();
    v121 = sub_1C4402CD0();
    sub_1C441DFEC(v121, v122);
    v123 = sub_1C445AB04();
    v124(v123);
    v125 = sub_1C442ECE4();
    v126(v125);
    sub_1C442023C();
    v188 = v127;
    v189[0] = v128;
    v129 = sub_1C4F029C8();
    v130 = sub_1C44D4550(v129, sel___swift_objectForKeyedSubscript_);
    sub_1C441C818();
    swift_unknownObjectRelease();
    v24 = 0;
    if (v20)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C447F6E8();
    }

    sub_1C448E09C();
    v47 = v186[0];
    if (v151)
    {
      if (sub_1C4475C50())
      {

        if (v183)
        {
          v153 = sub_1C440608C();
          sub_1C4B217B4(v153, v154, v155, v156, v157, v158, v159, v160, v172, v173, v174, v175, v176, v177, v178, v179, 0x1EDDFD000, v180, v181, v182);
LABEL_35:
          v161 = sub_1C44024E8();
          v162(v161);

          goto LABEL_18;
        }

        v163 = sub_1C442A62C(v152);
        sub_1C4F01CD8();
        v164 = sub_1C44016D0();
        if (os_log_type_enabled(v164, v165))
        {
          sub_1C43FD1A8();
          v166 = swift_slowAlloc();
          sub_1C43FBD24(v166);
          sub_1C440BAE8(&dword_1C43F8000, v167, v168, "Mapping error, missing identifier for nested entity");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C45CF650();
        sub_1C441C114();
        v91 = swift_allocError();
        sub_1C44060DC(v91, v169);
        swift_willThrow();

        v170 = sub_1C44024E8();
        v171(v170);
LABEL_17:
        v93 = v24[1];
        *&v187[0] = *v24;
        *(&v187[0] + 1) = v93;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4482EB0();
        MEMORY[0x1C6940010](v47, v48);
        sub_1C44806E0();

        goto LABEL_18;
      }
    }

    else
    {
      sub_1C4420C3C(v187, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    sub_1C44603D4();
    goto LABEL_35;
  }

  v100 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v101 = sub_1C442A62C(v100);
  v102 = sub_1C4F01CD8();

  if (os_log_type_enabled(v101, v102))
  {
    sub_1C43FECF0();
    v103 = swift_slowAlloc();
    sub_1C43FEC60();
    v104 = swift_slowAlloc();
    sub_1C43FE768(v104);
    sub_1C447F860(4.845e-34);
    sub_1C4B2AC20();
    *(v103 + 4) = v184;
    sub_1C4508944(&dword_1C43F8000, v105, v106, "Source: failed to encode identifier as UTF8 data: %{private}s");
    sub_1C440962C(v56);
    v107 = sub_1C4408D20();
    MEMORY[0x1C6942830](v107);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v131 = sub_1C4458550();
  v132(v131);
  v133 = sub_1C4F00968();
  sub_1C4F01CD8();
  v134 = sub_1C44016D0();
  if (os_log_type_enabled(v134, v135))
  {
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C43FC858();
    v136 = swift_slowAlloc();
    sub_1C43FE768(v136);
    sub_1C445CCE4(4.8149e-34);
    v137 = sub_1C44B6784();
    v138(v137);
    v139 = sub_1C444AD80();
    sub_1C441D828(v139, v48, v140);
    sub_1C4B2AA44();
    *(v187 + 4) = v184;
    sub_1C44046B4();
    _os_log_impl(v141, v142, v143, v144, v145, v146);
    sub_1C440962C(v56);
    v147 = sub_1C4408D20();
    MEMORY[0x1C6942830](v147);
    v148 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v148);
  }

  else
  {
    v149 = sub_1C44B6784();
    v150(v149);
  }

LABEL_18:
  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4B1B204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23)
{
  sub_1C43FBD3C();
  sub_1C4418BAC(v24, v25, v26, v27, v28, v29, v30, v31);
  v33 = v32;
  v35 = v34;
  v36 = a21;
  v189 = sub_1C4F00DD8();
  sub_1C43FCDF8();
  v188 = v37;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v39);
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v190 = v41;
  v191 = v40;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  sub_1C43FD2C8(v43);
  sub_1C4F01188();
  sub_1C43FCDF8();
  v194 = v45;
  v195 = v44;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v48 = v47 - v46;
  v196 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v173 - v53;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v192 = v56;
  v193 = v55;
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  v59 = v173 - v58;
  v201 = a21;
  v202 = a22;
  v198 = a22;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v60 = sub_1C4F029C8();
  v61 = sub_1C4B2AC08(v60, sel___swift_objectForKeyedSubscript_);
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4475850();
  }

  sub_1C4441540();
  if (!v62)
  {
    sub_1C4420C3C(&v203, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v63 = sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1C44F19E8();
    if (!v65)
    {
      sub_1C4419274();
      swift_once();
    }

    v89 = sub_1C4F00978();
    sub_1C442B738(v89, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v90 = sub_1C4F00968();
    v91 = sub_1C4F01CD8();

    if (os_log_type_enabled(v90, v91))
    {
      sub_1C43FECF0();
      v92 = swift_slowAlloc();
      sub_1C43FEC60();
      v93 = swift_slowAlloc();
      v203 = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_1C441D828(a21, v198, &v203);
      sub_1C4485BC0();
      _os_log_impl(v94, v95, v96, v97, v98, 0xCu);
      sub_1C440962C(v93);
      v99 = sub_1C4408D20();
      MEMORY[0x1C6942830](v99);
      v100 = sub_1C445E9A8();
      MEMORY[0x1C6942830](v100);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v101 = swift_allocError();
    sub_1C44046C4(v101, v102);
    swift_willThrow();
    goto LABEL_16;
  }

  v173[2] = v63;
  v179 = a23;
  v182 = a21;
  v181 = v199;
  v64 = *(type metadata accessor for Source(0) + 24);
  sub_1C44F19E8();
  if (!v65)
  {
    sub_1C4419274();
    swift_once();
  }

  v180 = v59;
  v66 = sub_1C4F00978();
  v67 = sub_1C442B738(v66, qword_1EDE2DE10);
  v68 = *(v50 + 16);
  v176 = v64;
  v69 = v196;
  v175 = v50 + 16;
  v174 = v68;
  v68(v54, v35 + v64, v196);
  v70 = v197;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v178 = v67;
  v71 = sub_1C4F00968();
  v72 = sub_1C4F01CB8();

  if (os_log_type_enabled(v71, v72))
  {
    sub_1C4480408();
    v73 = swift_slowAlloc();
    v177 = v35;
    v74 = v73;
    sub_1C443FD74();
    v75 = swift_slowAlloc();
    sub_1C44753A0(v75);
    *v74 = 136381187;
    v76 = sub_1C442BB94();
    v79 = sub_1C441D828(v76, v77, v78);
    sub_1C4441790(v79);
    sub_1C4407A84();
    sub_1C44CD238(v80, v81, MEMORY[0x1E69A92F8]);
    v82 = sub_1C4F02858();
    v83 = v69;
    v84 = v70;
    v86 = v85;
    (*(v50 + 8))(v54, v83);
    v87 = sub_1C441D828(v82, v86, &v203);

    *(v74 + 14) = v87;
    *(v74 + 22) = 1024;
    *(v74 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v71, v72, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v74, 0x1Cu);
    sub_1C4410278(&v200);
    swift_arrayDestroy();
    v88 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v88);
    v35 = v177;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    (*(v50 + 8))(v54, v69);
    v84 = v70;
  }

  v177 = v33;
  v203 = v33;
  v204 = v84;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v104 = sub_1C4402CD0();
  MEMORY[0x1C6940010](v104);
  v105 = v35;
  v106 = v203;
  v107 = v204;
  sub_1C4F01178();
  sub_1C4F01148();
  v109 = v108;
  (*(v194 + 8))(v48, v195);
  if (v109 >> 60 != 15)
  {

    sub_1C442D2CC();
    v118 = sub_1C44CD238(v116, v117, MEMORY[0x1E6966618]);
    v119 = v105;
    sub_1C4401E94(v118);
    v120 = sub_1C44000C4();
    sub_1C44344B8(v120, v121);
    v122 = sub_1C44000C4();
    sub_1C4498FD8(v122, v123, v33);
    v124 = sub_1C44000C4();
    sub_1C441DFEC(v124, v125);
    sub_1C442F708();
    sub_1C4F00DA8();
    v126 = sub_1C443F33C();
    v127(v126);
    v174(v187, v105 + v176, v196);
    v128 = sub_1C440CD70();
    v129(v128);
    v130 = v186;
    sub_1C440A6C4();
    sub_1C4EFF028();
    v131 = sub_1C44000C4();
    sub_1C441DFEC(v131, v132);
    v133 = sub_1C445BB20();
    v134(v133);
    v135 = v192;
    v136 = v193;
    (*(v192 + 32))(v180, v130, v193);
    sub_1C442023C();
    v201 = v137;
    v202 = v138;
    v139 = sub_1C4F029C8();
    v140 = sub_1C440BC84(&v205);
    v142 = [v140 v141];
    swift_unknownObjectRelease();
    v35 = v119;
    if (v142)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C4475850();
    }

    v36 = v182;
    v155 = v197;
    sub_1C4B2A94C();
    v156 = v179;
    sub_1C4441540();
    if (v157)
    {
      if (swift_dynamicCast())
      {

        if (v183)
        {
          v158 = v136;
          v172 = v198;
          v171 = v184;
          sub_1C440D73C();
          sub_1C4B2294C(v159, v160, v161, v136, v142, v155, v35, v185, v171, v36, v172, v156);
LABEL_33:
          (*(v135 + 8))(v136, v158);

          goto LABEL_17;
        }

        v162 = sub_1C4F00968();
        v163 = sub_1C4F01CD8();
        if (os_log_type_enabled(v162, v163))
        {
          sub_1C43FD1A8();
          *swift_slowAlloc() = 0;
          sub_1C4485BC0();
          _os_log_impl(v164, v165, v166, v167, v168, 2u);
          v169 = sub_1C445E9A8();
          MEMORY[0x1C6942830](v169);
        }

        sub_1C45CF650();
        sub_1C441C114();
        v101 = swift_allocError();
        sub_1C44060DC(v101, v170);
        swift_willThrow();

        (*(v135 + 8))(v180, v136);
LABEL_16:
        v103 = v35[1];
        v203 = *v35;
        v204 = v103;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](32, 0xE100000000000000);
        MEMORY[0x1C6940010](v36, v198);
        sub_1C4B5B968(v101);

        goto LABEL_17;
      }

      v158 = v136;
    }

    else
    {
      v158 = v136;
      sub_1C4420C3C(&v203, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    sub_1C440D73C();
    sub_1C4466D68(v136, v35, v142, v155);
    goto LABEL_33;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v110 = sub_1C4F00968();
  v111 = sub_1C4F01CD8();

  if (os_log_type_enabled(v110, v111))
  {
    sub_1C43FECF0();
    v112 = swift_slowAlloc();
    sub_1C43FEC60();
    v113 = swift_slowAlloc();
    v203 = v113;
    *v112 = 136380675;
    sub_1C441D828(v106, v107, &v203);
    sub_1C4B2AC20();
    *(v112 + 4) = v84;
    _os_log_impl(&dword_1C43F8000, v110, v111, "Source: failed to encode identifier as UTF8 data: %{private}s", v112, 0xCu);
    sub_1C440962C(v113);
    v114 = sub_1C4408D20();
    MEMORY[0x1C6942830](v114);
    v115 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v115);
  }

  else
  {
  }

  v143 = v182;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v144 = sub_1C4F00968();
  v145 = sub_1C4F01CD8();

  if (os_log_type_enabled(v144, v145))
  {
    sub_1C43FECF0();
    v146 = swift_slowAlloc();
    sub_1C43FEC60();
    v147 = swift_slowAlloc();
    v203 = v147;
    *v146 = 136315138;
    *(v146 + 4) = sub_1C441D828(v143, v198, &v203);
    sub_1C4485BC0();
    _os_log_impl(v148, v149, v150, v151, v152, 0xCu);
    sub_1C440962C(v147);
    v153 = sub_1C4408D20();
    MEMORY[0x1C6942830](v153);
    v154 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v154);
  }

LABEL_17:
  sub_1C44085C4();
  sub_1C43FE9F0();
}

void sub_1C4B1BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v27;
  a20 = v28;
  v37 = sub_1C4426DC8(v29, v30, v31, v32, v33, v34, v35, v36);
  v38 = sub_1C43FFAE0(v37, &a15);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v39);
  v40 = sub_1C4F00DC8();
  v41 = sub_1C43FFAE0(v40, &a17);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  sub_1C43FD2C8(v43);
  sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  sub_1C44289FC();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C445BA94();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  sub_1C447E23C(v49);
  v50 = sub_1C4F029C8();
  v51 = sub_1C4B2AC08(v50, sel___swift_objectForKeyedSubscript_);
  sub_1C43FBD30();
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C447F6E8();
  }

  sub_1C448E09C();
  if (!v52)
  {
    sub_1C4420C3C(v188, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v50 = sub_1C4B2A2B4();
  if ((sub_1C4462848() & 1) == 0)
  {
LABEL_11:
    sub_1C4475618();
    if (!v53)
    {
      sub_1C4419274();
      swift_once();
    }

    v73 = sub_1C4F00978();
    sub_1C442B738(v73, qword_1EDE2DE10);
    sub_1C443DFBC();
    v186(v24);
    v74 = sub_1C4F00968();
    sub_1C4F01CD8();
    v75 = sub_1C44016D0();
    if (os_log_type_enabled(v75, v76))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v77 = swift_slowAlloc();
      sub_1C43FE768(v77);
      sub_1C445CCE4(4.8149e-34);
      v78 = sub_1C4482D0C();
      v79(v78);
      v80 = sub_1C444AD80();
      sub_1C441D828(v80, v26, v81);
      sub_1C4B2AA44();
      *(&xmmword_1EDDFD000 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v82, v83, v84, v85, v86, v87);
      sub_1C440962C(v50);
      v88 = sub_1C4408D20();
      MEMORY[0x1C6942830](v88);
      v89 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v89);
    }

    else
    {
      v90 = sub_1C4482D0C();
      v91(v90);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v92 = swift_allocError();
    sub_1C44046C4(v92, v93);
    swift_willThrow();
    goto LABEL_17;
  }

  sub_1C4435C84();
  sub_1C4475618();
  if (!v53)
  {
    sub_1C4419274();
    swift_once();
  }

  v54 = sub_1C4F00978();
  sub_1C442B738(v54, qword_1EDE2DE10);
  v55 = sub_1C441BC8C();
  v56(v55);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v57 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4404CE0();

  v58 = sub_1C4B2AAD8();
  if (os_log_type_enabled(v58, v59))
  {
    sub_1C4480408();
    v175 = v25;
    v60 = swift_slowAlloc();
    sub_1C443FD74();
    v61 = swift_slowAlloc();
    sub_1C4460AE0(v61);
    *v60 = 136381187;
    v62 = sub_1C44587A0(v190);
    v65 = sub_1C441D828(v62, v63, v64);
    sub_1C4441790(v65);
    sub_1C4407A84();
    v68 = sub_1C44CD238(v66, v67, MEMORY[0x1E69A92F8]);
    sub_1C4B2A8D4(v68);
    v69 = sub_1C4422B90();
    v70(v69);
    sub_1C4507B68();
    sub_1C44E76F8();

    sub_1C4471D20();
    sub_1C44608A8(&dword_1C43F8000, v71, v72, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C4410278(v187);
    swift_arrayDestroy();
    v26 = v176;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v25 = v175;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v95 = sub_1C4422B90();
    v96(v95);
  }

  sub_1C442F964();
  v97 = sub_1C4402CD0();
  v98 = MEMORY[0x1C6940010](v97);
  sub_1C4B2A988(v98);
  sub_1C44AB280();
  v99 = sub_1C440F004();
  v100(v99);
  if (v57 >> 60 != 15)
  {
    v187[0] = v23;

    sub_1C442D2CC();
    v111 = sub_1C44CD238(v109, v110, MEMORY[0x1E6966618]);
    sub_1C4418550(v111);
    v112 = sub_1C4402CD0();
    sub_1C44344B8(v112, v113);
    v114 = sub_1C4402CD0();
    sub_1C4498FD8(v114, v115, v25);
    sub_1C444C328();
    v116 = sub_1C447E338();
    v117(v116);
    v118 = sub_1C44163A0();
    v119(v118);
    v120 = sub_1C444FF8C();
    v121(v120);
    sub_1C44A1838();
    v122 = sub_1C4402CD0();
    sub_1C441DFEC(v122, v123);
    v124 = sub_1C445AB04();
    v125(v124);
    v126 = sub_1C442ECE4();
    v127(v126);
    sub_1C442023C();
    v189 = v128;
    v190[0] = v129;
    v130 = sub_1C4F029C8();
    v131 = sub_1C44D4550(v130, sel___swift_objectForKeyedSubscript_);
    sub_1C441C818();
    swift_unknownObjectRelease();
    v25 = 0;
    if (v20)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C447F6E8();
    }

    sub_1C448E09C();
    v23 = v187[0];
    if (v152)
    {
      if (sub_1C4475C50())
      {

        if (v184)
        {
          v154 = sub_1C440608C();
          sub_1C4B24698(v154, v155, v156, v157, v158, v159, v160, v161, v173, v174, v175, v176, v177, v178, v179, v180, 0x1EDDFD000, v181, v182, v183);
LABEL_35:
          v162 = sub_1C44024E8();
          v163(v162);

          goto LABEL_18;
        }

        v164 = sub_1C442A62C(v153);
        sub_1C4F01CD8();
        v165 = sub_1C44016D0();
        if (os_log_type_enabled(v165, v166))
        {
          sub_1C43FD1A8();
          v167 = swift_slowAlloc();
          sub_1C43FBD24(v167);
          sub_1C440BAE8(&dword_1C43F8000, v168, v169, "Mapping error, missing identifier for nested entity");
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        sub_1C45CF650();
        sub_1C441C114();
        v92 = swift_allocError();
        sub_1C44060DC(v92, v170);
        swift_willThrow();

        v171 = sub_1C44024E8();
        v172(v171);
LABEL_17:
        v94 = v25[1];
        *&v188[0] = *v25;
        *(&v188[0] + 1) = v94;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4482EB0();
        MEMORY[0x1C6940010](v23, v26);
        sub_1C44806E0();

        goto LABEL_18;
      }
    }

    else
    {
      sub_1C4420C3C(v188, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    sub_1C44603D4();
    goto LABEL_35;
  }

  v101 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v102 = sub_1C442A62C(v101);
  v103 = sub_1C4F01CD8();

  if (os_log_type_enabled(v102, v103))
  {
    sub_1C43FECF0();
    v104 = swift_slowAlloc();
    sub_1C43FEC60();
    v105 = swift_slowAlloc();
    sub_1C43FE768(v105);
    sub_1C447F860(4.845e-34);
    sub_1C4B2AC20();
    *(v104 + 4) = v185;
    sub_1C4508944(&dword_1C43F8000, v106, v107, "Source: failed to encode identifier as UTF8 data: %{private}s");
    sub_1C440962C(v57);
    v108 = sub_1C4408D20();
    MEMORY[0x1C6942830](v108);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v132 = sub_1C4458550();
  v133(v132);
  v134 = sub_1C4F00968();
  sub_1C4F01CD8();
  v135 = sub_1C44016D0();
  if (os_log_type_enabled(v135, v136))
  {
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C43FC858();
    v137 = swift_slowAlloc();
    sub_1C43FE768(v137);
    sub_1C445CCE4(4.8149e-34);
    v138 = sub_1C44B6784();
    v139(v138);
    v140 = sub_1C444AD80();
    sub_1C441D828(v140, v26, v141);
    sub_1C4B2AA44();
    *(v188 + 4) = v185;
    sub_1C44046B4();
    _os_log_impl(v142, v143, v144, v145, v146, v147);
    sub_1C440962C(v57);
    v148 = sub_1C4408D20();
    MEMORY[0x1C6942830](v148);
    v149 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v149);
  }

  else
  {
    v150 = sub_1C44B6784();
    v151(v150);
  }

LABEL_18:
  sub_1C44085C4();
  sub_1C43FE9F0();
}

uint64_t sub_1C4B1C878(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, __int128 a9, uint64_t a10)
{
  v118 = a8;
  v117 = a7;
  v116 = a6;
  v119 = a5;
  v134 = a3;
  v14 = *(&a9 + 1);
  v13 = a9;
  v126 = sub_1C4F00DD8();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v123 = &v103[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1C4F00DC8();
  v127 = *(v16 - 8);
  v128 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v103[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v103[-v19];
  v20 = sub_1C4F01188();
  v132 = *(v20 - 8);
  v133 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v103[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = sub_1C4EFD548();
  v23 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v121 = &v103[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v103[-v26];
  v28 = sub_1C4EFF0C8();
  v129 = *(v28 - 8);
  v130 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v120 = &v103[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v131 = &v103[-v31];
  v137 = a9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = [a4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v32)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v137 = 0u;
    v138 = 0u;
  }

  v139 = v137;
  v140 = v138;
  if (!*(&v138 + 1))
  {
    sub_1C4420C3C(&v139, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v33 = sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v51 = sub_1C4F00978();
    sub_1C442B738(v51, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v52 = sub_1C4F00968();
    v53 = sub_1C4F01CD8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v139 = v55;
      *v54 = 136315138;

      v56 = a1;
      v57 = sub_1C441D828(a9, *(&a9 + 1), &v139);

      *(v54 + 4) = v57;
      a1 = v56;
      _os_log_impl(&dword_1C43F8000, v52, v53, "Mapping error, missing submap for %s", v54, 0xCu);
      sub_1C440962C(v55);
      MEMORY[0x1C6942830](v55, -1, -1);
      MEMORY[0x1C6942830](v54, -1, -1);
    }

    else
    {
    }

    sub_1C45CF650();
    v58 = swift_allocError();
    *v59 = 2;
    swift_willThrow();
    goto LABEL_17;
  }

  v110 = v33;
  v115 = a2;
  v112 = a10;
  v113 = v136;
  v34 = *(type metadata accessor for Source(0) + 24);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v35 = sub_1C4F00978();
  v36 = sub_1C442B738(v35, qword_1EDE2DE10);
  v37 = *(v23 + 16);
  v109 = v34;
  v38 = v135;
  v108 = v23 + 16;
  v107 = v37;
  v37(v27, a1 + v34, v135);
  v39 = v134;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v111 = v36;
  v40 = sub_1C4F00968();
  v41 = sub_1C4F01CB8();

  v42 = os_log_type_enabled(v40, v41);
  v114 = a9;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v106 = a1;
    v44 = v43;
    v105 = swift_slowAlloc();
    *&v139 = v105;
    *v44 = 136381187;
    *(v44 + 4) = sub_1C441D828(v115, v39, &v139);
    *(v44 + 12) = 2080;
    sub_1C44CD238(&qword_1EDDFA220, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92F8]);
    v104 = v41;
    v45 = sub_1C4F02858();
    v47 = v46;
    (*(v23 + 8))(v27, v38);
    v48 = sub_1C441D828(v45, v47, &v139);
    v14 = *(&a9 + 1);

    *(v44 + 14) = v48;
    *(v44 + 22) = 1024;
    *(v44 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v40, v104, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v44, 0x1Cu);
    v49 = v105;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v49, -1, -1);
    v50 = v44;
    a1 = v106;
    MEMORY[0x1C6942830](v50, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v27, v38);
  }

  v63 = *a1;
  v64 = a1[1];
  *&v139 = v115;
  *(&v139 + 1) = v39;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v63, v64);
  v65 = a1;
  v66 = v139;
  sub_1C4F01178();
  v67 = sub_1C4F01148();
  v69 = v68;
  (*(v132 + 8))(v22, v133);
  if (v69 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v70 = sub_1C4F00968();
    v71 = sub_1C4F01CD8();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v139 = v73;
      *v72 = 136380675;
      v74 = sub_1C441D828(v66, *(&v66 + 1), &v139);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_1C43F8000, v70, v71, "Source: failed to encode identifier as UTF8 data: %{private}s", v72, 0xCu);
      sub_1C440962C(v73);
      MEMORY[0x1C6942830](v73, -1, -1);
      MEMORY[0x1C6942830](v72, -1, -1);
    }

    else
    {
    }

    v88 = v114;
    v89 = v113;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v90 = sub_1C4F00968();
    v91 = sub_1C4F01CD8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v139 = v93;
      *v92 = 136315138;

      v94 = sub_1C441D828(v88, v14, &v139);

      *(v92 + 4) = v94;
      _os_log_impl(&dword_1C43F8000, v90, v91, "Mapping error, failed to generate EntityIdentifier for %s", v92, 0xCu);
      sub_1C440962C(v93);
      MEMORY[0x1C6942830](v93, -1, -1);
      MEMORY[0x1C6942830](v92, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x1E69E7CC0];
  }

  sub_1C44CD238(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  v75 = v123;
  v76 = v126;
  sub_1C4F00DB8();
  sub_1C44344B8(v67, v69);
  sub_1C4498FD8(v67, v69, v75);
  v133 = 0;
  sub_1C441DFEC(v67, v69);
  v77 = v124;
  sub_1C4F00DA8();
  (*(v125 + 8))(v75, v76);
  v78 = v65;
  v107(v121, v65 + v109, v135);
  v80 = v127;
  v79 = v128;
  (*(v127 + 16))(v122, v77, v128);
  v81 = v120;
  sub_1C4EFF028();
  sub_1C441DFEC(v67, v69);
  (*(v80 + 8))(v77, v79);
  v83 = v129;
  v82 = v130;
  v84 = v131;
  (*(v129 + 32))(v131, v81, v130);
  *&v137 = 0x657473654E444D5FLL;
  *(&v137 + 1) = 0xEF797469746E4564;
  v85 = sub_1C4F029C8();
  v86 = v113;
  v87 = [v113 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  a1 = v78;
  if (v87)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v137 = 0u;
    v138 = 0u;
  }

  v13 = v114;
  v95 = v112;
  v139 = v137;
  v140 = v138;
  if (!*(&v138 + 1))
  {
    sub_1C4420C3C(&v139, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_37;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v96 = v133;
    sub_1C4B1E304();
    goto LABEL_38;
  }

  if (v117)
  {
    v96 = v133;
    sub_1C4B25830(v116, v117, v86, v84, v115, v134, a1, v119, v118, v13, v14, v95);
LABEL_38:
    v61 = v97;
    v98 = v84;
    if (!v96)
    {
      (*(v83 + 8))(v84, v82);

      return v61;
    }

    v58 = v96;
    (*(v83 + 8))(v98, v82);

    goto LABEL_17;
  }

  v99 = sub_1C4F00968();
  v100 = sub_1C4F01CD8();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&dword_1C43F8000, v99, v100, "Mapping error, missing identifier for nested entity", v101, 2u);
    MEMORY[0x1C6942830](v101, -1, -1);
  }

  sub_1C45CF650();
  v58 = swift_allocError();
  *v102 = 1;
  swift_willThrow();

  (*(v83 + 8))(v131, v82);
LABEL_17:
  v60 = a1[1];
  *&v139 = *a1;
  *(&v139 + 1) = v60;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](32, 0xE100000000000000);
  MEMORY[0x1C6940010](v13, v14);
  sub_1C4B5B968(v58);

  return MEMORY[0x1E69E7CC0];
}

uint64_t SocialMediaProfile.mapLocation.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C4B1D8E0()
{
  if (qword_1EC0B70E8 != -1)
  {
    swift_once();
  }

  qword_1EC0C34E8 = qword_1EC0C37A8;
  *&qword_1EC0C34F0 = *&qword_1EC0C37B0;
  qword_1EC0C3500 = qword_1EC0C37C0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C4B1D960()
{
  if (qword_1EC0B70A8 != -1)
  {
    sub_1C4405300(&qword_1EC0B70A8);
  }

  return &qword_1EC0C34E8;
}

uint64_t static SocialMediaProfile.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B70A8 != -1)
  {
    sub_1C4405300(&qword_1EC0B70A8);
  }

  swift_beginAccess();
  v2 = qword_1EC0C3500;
  *a1 = qword_1EC0C34E8;
  *(a1 + 8) = *&qword_1EC0C34F0;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static SocialMediaProfile.type.setter(uint64_t a1)
{
  v1 = *a1;
  v4 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (qword_1EC0B70A8 != -1)
  {
    sub_1C4405300(&qword_1EC0B70A8);
  }

  swift_beginAccess();
  qword_1EC0C34E8 = v1;
  *&qword_1EC0C34F0 = v4;
  qword_1EC0C3500 = v2;
}

uint64_t (*static SocialMediaProfile.type.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC0B70A8 != -1)
  {
    sub_1C4405300(&qword_1EC0B70A8);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C4B1DB2C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4B1D960();
  swift_beginAccess();
  v2 = qword_1EC0C3500;
  *a1 = qword_1EC0C34E8;
  *(a1 + 8) = *&qword_1EC0C34F0;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4B1DB94(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v4 = *(a1 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B1D960();
  swift_beginAccess();
  qword_1EC0C34E8 = v1;
  *&qword_1EC0C34F0 = v4;
  qword_1EC0C3500 = v2;
}

IntelligencePlatformCore::SocialMediaProfile __swiftcall SocialMediaProfile.init(mapLocation:username:displayName:service:userIdentifier:urlString:)(Swift::String mapLocation, Swift::String username, Swift::String_optional displayName, Swift::String service, Swift::String userIdentifier, Swift::String_optional urlString)
{
  object = service._object;
  countAndFlagsBits = service._countAndFlagsBits;
  v9 = displayName.value._object;
  v10 = displayName.value._countAndFlagsBits;
  v11 = username._object;
  v12 = username._countAndFlagsBits;
  v13 = v6;
  sub_1C456902C(&qword_1EC0B8708, &qword_1C4F0D960);
  v14 = swift_allocObject();
  v17 = v14;
  *(v14 + 16) = xmmword_1C4F0C890;
  *(v14 + 32) = 0x656D616E72657375;
  *(v14 + 40) = 0xE800000000000000;
  *(v14 + 48) = v12;
  *(v14 + 56) = v11;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 64) = 0;
  *(v14 + 88) = 1;
  *(v14 + 96) = 0x65636976726573;
  *(v14 + 104) = 0xE700000000000000;
  *(v14 + 112) = countAndFlagsBits;
  *(v14 + 120) = object;
  *(v14 + 136) = 0;
  *(v14 + 144) = 0;
  *(v14 + 128) = 0;
  *(v14 + 152) = 1;
  strcpy((v14 + 160), "userIdentifier");
  *(v14 + 175) = -18;
  *(v14 + 176) = userIdentifier;
  *(v14 + 192) = 0;
  *(v14 + 200) = 0;
  *(v14 + 208) = 0;
  *(v14 + 216) = 1;
  if (v9)
  {
    v18 = 4;
    sub_1C458A900();
    v17 = v14;
    *(v14 + 16) = 4;
    *(v14 + 224) = 0x4E79616C70736964;
    *(v14 + 232) = 0xEB00000000656D61;
    *(v14 + 240) = v10;
    *(v14 + 248) = v9;
    *(v14 + 264) = 0;
    *(v14 + 272) = 0;
    *(v14 + 256) = 0;
    *(v14 + 280) = 1;
    if (!urlString.value._object)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 3;
    if (!urlString.value._object)
    {
      goto LABEL_8;
    }
  }

  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_1C458A900();
    v17 = v14;
  }

  *(v17 + 16) = v18 + 1;
  v19 = v17 + (v18 << 6);
  *(v19 + 32) = 0x6E697274536C7275;
  *(v19 + 40) = 0xE900000000000067;
  *(v19 + 48) = urlString;
  *(v19 + 72) = 0;
  *(v19 + 80) = 0;
  *(v19 + 64) = 0;
  *(v19 + 88) = 1;
LABEL_8:
  *v13 = mapLocation;
  v13[1]._countAndFlagsBits = v17;
  result.basicProperties._rawValue = v16;
  result.mapLocation._object = v15;
  result.mapLocation._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_1C4B1DE58(uint64_t a1)
{
  v2 = sub_1C4B29EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B1DE94(uint64_t a1)
{
  v2 = sub_1C4B29EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SocialMediaProfile.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0C3508, &unk_1C4F51818);
  sub_1C43FCDF8();
  v34 = v28;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v32 - v30;
  v33 = *(v23 + 16);
  sub_1C4409678(v26, v26[3]);
  sub_1C4B29EE4();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v24)
  {
    v35 = v33;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  (*(v34 + 8))(v31, v27);
  sub_1C43FBC80();
}

void SocialMediaProfile.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v25 = v24;
  v27 = v26;
  sub_1C456902C(&qword_1EC0C3518, &qword_1C4F51828);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C4409678(v25, v25[3]);
  sub_1C4B29EE4();
  sub_1C4F02BC8();
  if (v23)
  {
    sub_1C440962C(v25);
  }

  else
  {
    v29 = sub_1C4F02678();
    v31 = v30;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    v32 = sub_1C4408A58();
    v33(v32);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v34;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v25);
  }

  sub_1C43FBC80();
}

void sub_1C4B1E304()
{
  sub_1C43FE96C();
  v3 = v0;
  v274 = v4;
  v6 = v5;
  v287 = v7;
  v272 = v8;
  v273 = v9;
  v271 = v10;
  v276 = v11;
  v12 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  v290 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v247 - v18);
  sub_1C456902C(&qword_1EC0B8A60, &unk_1C4F0DE80);
  sub_1C43FCDF8();
  v284 = v21;
  v285 = v20;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  v302 = &v247 - v23;
  v24 = sub_1C43FBE44();
  type metadata accessor for EntityTriple(v24);
  sub_1C43FCDF8();
  v262 = v26;
  v263 = v25;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  v260 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD230();
  v259 = v29;
  sub_1C43FBE44();
  v265 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v258 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v261 = v32;
  sub_1C43FBE44();
  v278 = sub_1C4EFD548();
  sub_1C43FCDF8();
  *&v257 = v33;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  v253 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v252 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  v255 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  v264 = v41;
  sub_1C43FBE44();
  v275 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v256 = v42;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  v254 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  v268 = v46;
  v47 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v48 = sub_1C43FBD18(v47);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  v269 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FD230();
  v270 = v51;
  v52 = sub_1C43FBE44();
  type metadata accessor for MapPredicate(v52);
  sub_1C43FCDF8();
  v303 = v53;
  v304 = v54;
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBD08();
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  v283 = v56;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  v282 = v58;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  v280 = v60;
  v61 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v62 = sub_1C43FBD18(v61);
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBFDC();
  v251 = v63;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBF38();
  v267 = v65;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FD230();
  v279 = v67;
  v68 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v69 = sub_1C43FBD18(v68);
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBF38();
  v266 = v71;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FD230();
  v277 = v73;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C44CD238(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
  v305 = v12;
  v74 = sub_1C4F00F28();
  v75 = 0;
  v313 = v74;
  v286 = (v6 + 32);
  v288 = *(v6 + 16);
  v297 = (v14 + 32);
  v291 = (v14 + 16);
  v292 = v19;
  v281 = (v14 + 8);
  v293 = v1;
  while (v75 != v288)
  {
    v295 = v75;
    v76 = &v286[8 * v75];
    v77 = v76[1];
    v312[1] = v76[2];
    *(&v312[1] + 9) = *(v76 + 41);
    v78 = v76[1];
    v311 = *v76;
    v312[0] = v78;
    v79 = v312[1];
    v80 = v311;
    v306[0] = v311;
    v306[1] = v77;
    v306[2] = v76[2];
    v81 = *&v312[2];
    LODWORD(v296) = BYTE8(v312[2]);
    sub_1C4464B9C();
    v82 = sub_1C4B590DC(v287, v80, *(&v80 + 1), v79, *(&v79 + 1));
    if (v3)
    {
      sub_1C442A4AC();
      v310 = v81;
      sub_1C447D014();
      goto LABEL_90;
    }

    if (*(v82 + 16))
    {
      v294 = 0;
      v301 = *(v285 + 48);
      v300 = *(v285 + 64);
      v299 = (v302 + *(v285 + 80));
      sub_1C43FBF6C();
      v289 = v84;
      v86 = v84 + v85;
      *&v298 = *(v87 + 72);
      v88 = MEMORY[0x1E69E7CC0];
      v89 = v283;
      do
      {
        v314 = v83;
        v90 = v88;
        v91 = v2;
        v92 = v302;
        sub_1C44DDE2C();
        v93 = *v299;
        v94 = v299[1];
        (*v297)(&v89[*(v303 + 20)], v92, v305);
        sub_1C44CDA7C();
        v2 = v91;
        v88 = v90;
        sub_1C44CDA7C();
        *v89 = v93;
        *(v89 + 1) = v94;
        sub_1C440BF38();
        sub_1C448D088();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1C43FCEC0();
          sub_1C458AE3C(v97, v98, v99, v90);
          v88 = v100;
        }

        v96 = *(v88 + 16);
        v95 = *(v88 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_1C458AE3C(v95 > 1, v96 + 1, 1, v88);
          v88 = v101;
        }

        sub_1C4B2A2F8(v89, type metadata accessor for MapPredicate);
        *(v88 + 16) = v96 + 1;
        sub_1C43FBF6C();
        sub_1C44DD800();
        v86 += v298;
        v83 = v314 - 1;
      }

      while (v314 != 1);

      v3 = v294;
    }

    else
    {

      v88 = MEMORY[0x1E69E7CC0];
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v102 = v292;
    if (*(v88 + 16))
    {
      sub_1C440BF38();
      v103 = v282;
      sub_1C448D088();

      v104 = *v291;
      (*v291)(v102, v103 + *(v303 + 20), v305);
      sub_1C4407A9C();
      sub_1C4B2A2F8(v103, v105);
      v106 = v313;
      if (!*(v313 + 16) || (sub_1C457AB64(), (v107 & 1) == 0))
      {
        swift_isUniquelyReferenced_nonNull_native();
        *&v309[0] = v106;
        sub_1C4660468();
        v313 = *&v309[0];
      }

      v104(v290, v102, v305);
      v109 = sub_1C4B5A6C0();
      if (*v108)
      {
        v110 = v108;
        sub_1C442A4AC();
        sub_1C4588D20();
        v111 = *(*v110 + 16);
        sub_1C4589918();
        v112 = *v110;
        *(v112 + 16) = v111 + 1;
        v113 = v112 + (v111 << 6);
        *(v113 + 32) = v309[0];
        *(v113 + 48) = v309[1];
        *(v113 + 64) = v309[2];
        *(v113 + 80) = v88;
        *(v113 + 88) = v296;
      }

      else
      {
        sub_1C442A4AC();
        v310 = v88;
        sub_1C447D014();
      }

      (v109)(v307, 0);
      v114 = *v281;
      v115 = v305;
      (*v281)(v290, v305);
      v114(v292, v115);
    }

    else
    {
      sub_1C442A4AC();
      v310 = v88;
      sub_1C447D014();
    }

    v75 = v295 + 1;
  }

  v116 = v313 + 64;
  v117 = 1 << *(v313 + 32);
  v118 = -1;
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  v119 = v118 & *(v313 + 64);
  v288 = (v257 + 32);
  v282 = (v257 + 16);
  v289 = (v257 + 8);
  v290 = (v256 + 32);
  v296 = (v256 + 8);
  v297 = (v256 + 16);
  v286 = (v258 + 32);
  v284 = (v117 + 63) >> 6;
  v285 = v258 + 8;
  v281 = (v258 + 16);
  v120 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v121 = 0;
  v122 = MEMORY[0x1E69E7CC0];
  *&v123 = 136380931;
  v257 = v123;
  v124 = v265;
  v125 = v278;
  v283 = v120;
  v250 = v116;
LABEL_26:
  if (v119)
  {
    v302 = v122;
    v126 = v121;
    goto LABEL_32;
  }

  do
  {
    v126 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      goto LABEL_94;
    }

    if (v126 >= v284)
    {

      goto LABEL_91;
    }

    v119 = *(v116 + 8 * v126);
    ++v121;
  }

  while (!v119);
  v302 = v122;
LABEL_32:
  v127 = *(v120 + 56);
  v258 = v126;
  v128 = *(v127 + ((v126 << 9) | (8 * __clz(__rbit64(v119)))));
  v129 = v125;
  sub_1C440BAA8(v277, 1, 1, v125);
  sub_1C440BAA8(v279, 1, 1, v124);
  v130 = *(v128 + 16);
  v301 = v128;
  v315 = v130;
  if (!v130)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_43:
    v146 = 0;
    v119 &= v119 - 1;
    LODWORD(v287) = 1;
    v147 = 32;
    v295 = v119;
    while (1)
    {
      if (v315 == v146)
      {

        sub_1C4420C3C(v279, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C4420C3C(v277, &qword_1EC0B8568, &unk_1C4F319B0);
        v121 = v258;
        v120 = v283;
        v122 = v302;
        v116 = v250;
        v125 = v129;
        v124 = v265;
        goto LABEL_26;
      }

      if (v146 >= *(v128 + 16))
      {
        goto LABEL_93;
      }

      v148 = *(v128 + v147);
      v149 = *(v128 + v147 + 16);
      v150 = *(v128 + v147 + 32);
      *(&v312[1] + 9) = *(v128 + v147 + 41);
      v312[0] = v149;
      v312[1] = v150;
      v311 = v148;
      v151 = *&v312[2];
      v307[0] = *(v128 + v147);
      v307[1] = *(v128 + v147 + 16);
      v307[2] = *(v128 + v147 + 32);
      v308 = *(v128 + v147 + 48);
      if (!*&v312[2])
      {
        sub_1C4455428();
        sub_1C4B2AA5C(v237);
        sub_1C44E3634(v309);

        if (qword_1EDDFD028 != -1)
        {
          goto LABEL_99;
        }

        goto LABEL_85;
      }

      if (!*(*&v312[2] + 16))
      {
        sub_1C4455428();
        sub_1C4B2AA5C(v177);
        sub_1C44E3634(v309);
        goto LABEL_69;
      }

      v299 = v147;
      v300 = v146;
      sub_1C440BF38();
      sub_1C448D088();
      v152 = v270;
      v153 = v275;
      v292 = *v297;
      v292(v270, v276, v275);
      sub_1C440BAA8(v152, 0, 1, v153);
      v154 = v269;
      sub_1C44DDE2C();
      v155 = sub_1C441B908();
      if (sub_1C44157D4(v155, v156, v153) == 1)
      {
        sub_1C4464B9C();

        sub_1C4420C3C(v154, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C45CF650();
        sub_1C441C114();
        swift_allocError();
        sub_1C441B4F8(v245, 4);
        swift_willThrow();

        sub_1C4420C3C(v152, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v280, v246);
        sub_1C4420C3C(v279, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C4420C3C(v277, &qword_1EC0B8568, &unk_1C4F319B0);
        sub_1C4455428();
        sub_1C4B2ABB8();

        goto LABEL_90;
      }

      v294 = v3;
      v157 = v153;
      v158 = v154;
      v159 = *(&v312[1] + 1);
      v160 = *&v312[0];
      v298 = *(v312 + 8);
      v161 = v268;
      (*v290)(v268, v158, v157);
      sub_1C45D17A0(&v311, v306);
      v162 = sub_1C45CF6A4(v161, v271, v272, v273, v151, 0, v279, v160, v298, *(&v298 + 1), v159, v274);
      v163 = *v296;
      (*v296)(v161, v157);
      sub_1C4420C3C(v152, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C4455428();
      sub_1C4B2ABB8();
      v164 = v162[2];
      v165 = *(v302 + 16);
      v166 = v165 + v164;
      if (__OFADD__(v165, v164))
      {
        goto LABEL_95;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168 = v302;
      if (!isUniquelyReferenced_nonNull_native || v166 > *(v302 + 24) >> 1)
      {
        if (v165 <= v166)
        {
          v169 = v165 + v164;
        }

        else
        {
          v169 = v165;
        }

        sub_1C44C9240(isUniquelyReferenced_nonNull_native, v169, 1, v302);
        v168 = v170;
      }

      v172 = v266;
      v171 = v267;
      v173 = v162[2];
      v302 = v168;
      if (v173)
      {
        if ((*(v168 + 24) >> 1) - *(v168 + 16) < v164)
        {
          goto LABEL_97;
        }

        swift_arrayInitWithCopy();

        if (v164)
        {
          v174 = *(v302 + 16);
          v175 = __OFADD__(v174, v164);
          v176 = v174 + v164;
          if (v175)
          {
            goto LABEL_98;
          }

          *(v302 + 16) = v176;
        }
      }

      else
      {

        if (v164)
        {
          goto LABEL_96;
        }
      }

      sub_1C44DDE2C();
      v178 = sub_1C441B908();
      v179 = v278;
      if (sub_1C44157D4(v178, v180, v278) == 1)
      {
        break;
      }

      v184 = v264;
      (*v288)(v264, v172, v179);
      v129 = &qword_1EC0B9A10;
      sub_1C44DDE2C();
      v185 = v171;
      v186 = v171;
      v187 = v265;
      if (sub_1C44157D4(v185, 1, v265) == 1)
      {

        (*v289)(v184, v179);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v280, v188);
        v181 = v186;
        v182 = &qword_1EC0B9A10;
        v183 = &qword_1C4F107C0;
        goto LABEL_67;
      }

      v189 = v261;
      (*v286)(v261, v186, v187);
      v190 = v162[2];

      if (!v190)
      {
        (*v285)(v189, v187);
        v209 = sub_1C4486008();
        v210(v209);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v280, v211);
        v3 = v294;
        goto LABEL_68;
      }

      if ((v287 & 1) == 0)
      {
        v212 = sub_1C4B2AB04();
        v213(v212);
        v214 = sub_1C4486008();
        v215(v214);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v280, v216);
        LODWORD(v287) = 0;
        v3 = v294;
        goto LABEL_68;
      }

      v191 = v264;
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v192 = sub_1C4F00978();
      sub_1C43FCEE8(v192, qword_1EDE2DE10);
      v193 = v254;
      v194 = v275;
      (v292)(v254, v276);
      (*v282)(v255, v191, v278);
      v195 = sub_1C4F00968();
      LODWORD(v287) = sub_1C4F01CF8();
      if (os_log_type_enabled(v195, v287))
      {
        v196 = sub_1C440F274();
        v248 = v196;
        sub_1C443FD74();
        v256 = swift_slowAlloc();
        *&v306[0] = v256;
        *v196 = v257;
        sub_1C4417750();
        sub_1C44CD238(&qword_1EDDFE810, v197, MEMORY[0x1E69A9840]);
        v249 = v195;
        v198 = sub_1C4F02858();
        v200 = v199;
        v163(v193, v194);
        sub_1C441D828(v198, v200, v306);
        sub_1C43FBD30();

        v201 = v248;
        *(v248 + 1) = v198;
        *(v201 + 6) = 2080;
        v202 = sub_1C4EFD2F8();
        v204 = v203;
        v205 = sub_1C44B9210();
        v206(v205);
        sub_1C441D828(v202, v204, v306);
        sub_1C43FBD30();

        *(v201 + 14) = v202;
        v207 = v249;
        _os_log_impl(&dword_1C43F8000, v249, v287, "StandardEntityMapper: constructRows relationship: %{private}s relPred isA %s", v201, 0x16u);
        swift_arrayDestroy();
        v208 = sub_1C4425FC4();
        MEMORY[0x1C6942830](v208);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        v217 = sub_1C44B9210();
        v218(v217);
        v163(v193, v194);
      }

      v219 = v259;
      v292(v259, v276, v194);
      v220 = v263;
      (*v291)(v219 + v263[5], v280 + *(v303 + 20), v305);
      (*v281)(v219 + v220[6], v261, v265);
      sub_1C4EFEBB8();
      v221 = sub_1C4EFD2F8();
      v223 = v222;
      sub_1C44036D4();
      sub_1C448D088();
      v224 = (v219 + v220[8]);
      *v224 = v221;
      v224[1] = v223;
      v225 = (v219 + v220[10]);
      v226 = v273;
      *v225 = v272;
      v225[1] = v226;
      *(v219 + v220[11]) = 0;
      *(v219 + v220[12]) = v274;
      sub_1C448D088();
      v228 = *(v302 + 16);
      v227 = *(v302 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v3 = v294;
      v119 = v295;
      v292 = (v228 + 1);
      if (v228 >= v227 >> 1)
      {
        sub_1C4460700();
        sub_1C44C9240(v233, v234, v235, v302);
        v302 = v236;
      }

      v229 = v278;
      v128 = v301;
      v147 = v299;
      sub_1C4B2A2F8(v259, type metadata accessor for EntityTriple);
      v230 = sub_1C4B2AB04();
      v231(v230);
      v129 = v229;
      (v298)(v264, v229);
      sub_1C4407A9C();
      sub_1C4B2A2F8(v280, v232);
      *(v302 + 16) = v292;
      sub_1C43FBF6C();
      sub_1C43FDDE8();
      sub_1C44DD800();
      LODWORD(v287) = 0;
      v146 = v300;
LABEL_69:
      v147 += 64;
      ++v146;
    }

    sub_1C4B2A2F8(v280, type metadata accessor for MapPredicate);

    v181 = v172;
    v182 = &qword_1EC0B8568;
    v183 = &unk_1C4F319B0;
LABEL_67:
    sub_1C4420C3C(v181, v182, v183);
    v3 = v294;
    v129 = v179;
LABEL_68:
    v119 = v295;
    v146 = v300;
    v128 = v301;
    v147 = v299;
    goto LABEL_69;
  }

  v131 = v128 + 80;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v132 = 0;
  while (v132 < *(v128 + 16))
  {
    if (*v131 && *(*v131 + 16))
    {
      sub_1C44DDE2C();
      v133 = sub_1C441B908();
      if (sub_1C44157D4(v133, v134, v129) != 1)
      {
        v139 = v277;
        sub_1C43FC2F4();
        sub_1C4420C3C(v140, v141, v142);
        v143 = v252;
        (*v288)(v252, v293, v129);
        v295 = v119;
        v144 = *v282;
        (*v282)(v139, v143, v129);
        sub_1C440BAA8(v139, 0, 1, v129);
        v144(v253, v143, v129);
        v145 = v251;
        sub_1C4EFF838();
        (*v289)(v143, v129);
        sub_1C4420C3C(v279, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C440BAA8(v145, 0, 1, v265);
        v119 = v295;
        sub_1C44CDA7C();
        v128 = v301;
        goto LABEL_43;
      }
    }

    else
    {
      v135 = sub_1C441B908();
      sub_1C440BAA8(v135, v136, 1, v129);
    }

    ++v132;
    v137 = sub_1C440A6C4();
    sub_1C4420C3C(v137, v138, &unk_1C4F319B0);
    v131 += 64;
    v128 = v301;
    if (v315 == v132)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  sub_1C4419274();
  swift_once();
LABEL_85:
  v238 = sub_1C4F00978();
  sub_1C43FCEE8(v238, qword_1EDE2DE10);
  v239 = sub_1C4F00968();
  v240 = sub_1C4F01CD8();
  if (os_log_type_enabled(v239, v240))
  {
    sub_1C43FD1A8();
    v241 = swift_slowAlloc();
    *v241 = 0;
    _os_log_impl(&dword_1C43F8000, v239, v240, "Mapping error, missing predicates", v241, 2u);
    v242 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v242);
  }

  sub_1C45CF650();
  sub_1C441C114();
  v243 = swift_allocError();
  sub_1C44046C4(v243, v244);
  swift_willThrow();

  sub_1C4420C3C(v279, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C4420C3C(v277, &qword_1EC0B8568, &unk_1C4F319B0);
LABEL_90:

LABEL_91:
  sub_1C43FBC80();
}

void sub_1C4B1FB70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unsigned __int8 a9)
{
  v10 = v9;
  v213 = a8;
  v222 = a7;
  v218 = a5;
  v198 = a4;
  v216 = a2;
  v220 = a1;
  v210 = type metadata accessor for EntityTriple(0);
  v212 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v211 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4F00DD8();
  v204 = *(v14 - 8);
  v205 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v202 = &v185 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C4F00DC8();
  v206 = *(v16 - 8);
  v207 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v201 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v203 = &v185 - v19;
  v20 = sub_1C4F01188();
  v214 = *(v20 - 8);
  v215 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v185 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_1C4EFF0C8();
  v217 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v209 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v200 = &v185 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v226 = &v185 - v27;
  v28 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v185 - v29;
  v31 = sub_1C4EFD548();
  v223 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v199 = &v185 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v185 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v224 = &v185 - v37;
  v227.n128_u64[0] = 0x657473654E444D5FLL;
  v227.n128_u64[1] = 0xEF797469746E4564;
  v38 = sub_1C4F029C8();
  v225 = a3;
  v39 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v219 = a6;
  if (v39)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v227 = 0u;
    v228 = 0u;
  }

  v229 = v227;
  v230 = v228;
  if (!v228.n128_u64[1])
  {
    sub_1C4420C3C(&v229, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v43 = sub_1C4F00978();
    sub_1C442B738(v43, qword_1EDE2DE10);
    v44 = *v10;
    v45 = *(v10 + 8);
    v243 = *(v10 + 16);
    v242 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v46 = sub_1C4F00968();
    v47 = sub_1C4F01CD8();

    sub_1C4420C3C(&v243, &qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C4420C3C(&v242, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v229.n128_u64[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_1C441D828(v44, v45, &v229);
      _os_log_impl(&dword_1C43F8000, v46, v47, "Mapping error, nested entity missing metadata in map, %s", v48, 0xCu);
      sub_1C440962C(v49);
      MEMORY[0x1C6942830](v49, -1, -1);
      MEMORY[0x1C6942830](v48, -1, -1);
    }

    sub_1C45CF650();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();
    return;
  }

  v196 = v31;
  v40 = v232.n128_u64[0];
  v227.n128_u64[0] = 0x79747265706F7270;
  v227.n128_u64[1] = 0xEB0000000070614DLL;
  v41 = sub_1C4F029C8();
  v197 = v40;
  v42 = [v40 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v42)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v227 = 0u;
    v228 = 0u;
  }

  v229 = v227;
  v230 = v228;
  if (!v228.n128_u64[1])
  {
    sub_1C4420C3C(&v229, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v52 = sub_1C4F00978();
    sub_1C442B738(v52, qword_1EDE2DE10);
    v53 = *v10;
    v54 = *(v10 + 8);
    v241 = *(v10 + 16);
    v240 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v55 = sub_1C4F00968();
    v56 = sub_1C4F01CD8();

    sub_1C4420C3C(&v241, &qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C4420C3C(&v240, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v229.n128_u64[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_1C441D828(v53, v54, &v229);
      _os_log_impl(&dword_1C43F8000, v55, v56, "Mapping error missing property map for  %s", v57, 0xCu);
      sub_1C440962C(v58);
      MEMORY[0x1C6942830](v58, -1, -1);
      MEMORY[0x1C6942830](v57, -1, -1);
    }

    sub_1C45CF650();
    swift_allocError();
    *v59 = 1;
    swift_willThrow();
    v60 = v197;
    goto LABEL_40;
  }

  v195 = v232.n128_u64[0];
  v227.n128_u64[0] = 1701869940;
  v227.n128_u64[1] = 0xE400000000000000;
  v51 = [v197 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v51)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v227 = 0u;
    v228 = 0u;
  }

  v61 = v196;
  v229 = v227;
  v230 = v228;
  if (!v228.n128_u64[1])
  {
    sub_1C4420C3C(&v229, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v71 = sub_1C4F00978();
    sub_1C442B738(v71, qword_1EDE2DE10);
    v72 = *v10;
    v73 = *(v10 + 8);
    v239 = *(v10 + 16);
    v238 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v66 = sub_1C4F00968();
    v67 = sub_1C4F01CD8();

    sub_1C4420C3C(&v239, &qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C4420C3C(&v238, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_39;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v229.n128_u64[0] = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_1C441D828(v72, v73, &v229);
    v70 = "Mapping error missing type for  %s";
    goto LABEL_38;
  }

  v62 = v232;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFD2E8();
  if (sub_1C44157D4(v30, 1, v61) == 1)
  {

    sub_1C4420C3C(v30, &qword_1EC0B8568, &unk_1C4F319B0);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v63 = sub_1C4F00978();
    sub_1C442B738(v63, qword_1EDE2DE10);
    v64 = *v10;
    v65 = *(v10 + 8);
    v237 = *(v10 + 16);
    v236 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v66 = sub_1C4F00968();
    v67 = sub_1C4F01CD8();

    sub_1C4420C3C(&v237, &qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C4420C3C(&v236, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_39;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v229.n128_u64[0] = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_1C441D828(v64, v65, &v229);
    v70 = "Mapping error type is not recognized as an EntityClass %s";
LABEL_38:
    _os_log_impl(&dword_1C43F8000, v66, v67, v70, v68, 0xCu);
    sub_1C440962C(v69);
    MEMORY[0x1C6942830](v69, -1, -1);
    MEMORY[0x1C6942830](v68, -1, -1);
LABEL_39:

    sub_1C45CF650();
    swift_allocError();
    *v74 = 1;
    swift_willThrow();

    v60 = v195;
LABEL_40:

    return;
  }

  v194 = v62 >> 64;
  v190 = v62;
  v75 = v223;
  v76 = v224;
  (*(v223 + 32))(v224, v30, v61);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v77 = sub_1C4F00978();
  v78 = sub_1C442B738(v77, qword_1EDE2DE10);
  v188 = *(v75 + 16);
  v189 = v75 + 16;
  v188(v35, v76, v61);
  v79 = v216;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v193 = v78;
  v80 = sub_1C4F00968();
  v81 = sub_1C4F01CB8();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v187 = v81;
    v83 = v82;
    v191 = swift_slowAlloc();
    v229.n128_u64[0] = v191;
    *v83 = 136381187;
    *(v83 + 4) = sub_1C441D828(v220, v79, &v229);
    *(v83 + 12) = 2080;
    sub_1C44CD238(&qword_1EDDFA220, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92F8]);
    v186 = v80;
    v84 = sub_1C4F02858();
    v85 = v61;
    v87 = v86;
    v192 = *(v75 + 8);
    v192(v35, v85);
    v88 = sub_1C441D828(v84, v87, &v229);

    *(v83 + 14) = v88;
    v89 = v220;
    *(v83 + 22) = 1024;
    *(v83 + 24) = 0;
    v90 = v186;
    _os_log_impl(&dword_1C43F8000, v186, v187, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v83, 0x1Cu);
    v91 = v191;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v91, -1, -1);
    MEMORY[0x1C6942830](v83, -1, -1);
  }

  else
  {

    v192 = *(v75 + 8);
    v192(v35, v61);
    v89 = v220;
  }

  v92 = *v222;
  v93 = v222[1];
  v229.n128_u64[0] = v89;
  v229.n128_u64[1] = v79;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v92, v93);
  v94 = v229;
  sub_1C4F01178();
  v95 = sub_1C4F01148();
  v97 = v96;
  (*(v214 + 8))(v22, v215);
  if (v97 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v98 = sub_1C4F00968();
    v99 = sub_1C4F01CD8();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v229.n128_u64[0] = v101;
      *v100 = 136380675;
      v102 = sub_1C441D828(v94.n128_i64[0], v94.n128_u64[1], &v229);

      *(v100 + 4) = v102;
      _os_log_impl(&dword_1C43F8000, v98, v99, "Source: failed to encode identifier as UTF8 data: %{private}s", v100, 0xCu);
      sub_1C440962C(v101);
      MEMORY[0x1C6942830](v101, -1, -1);
      MEMORY[0x1C6942830](v100, -1, -1);
    }

    else
    {
    }

    v126 = *v10;
    v127 = *(v10 + 8);
    v235 = *(v10 + 16);
    v234 = *(v10 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DDE2C();
    sub_1C44DDE2C();
    v128 = sub_1C4F00968();
    v129 = sub_1C4F01CD8();

    sub_1C4420C3C(&v235, &qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C4420C3C(&v234, &qword_1EC0C2BD0, &qword_1C4F0FF50);
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v229.n128_u64[0] = v131;
      *v130 = 136315138;
      *(v130 + 4) = sub_1C441D828(v126, v127, &v229);
      _os_log_impl(&dword_1C43F8000, v128, v129, "Mapping error failed to generate EntityIdentifier for %s", v130, 0xCu);
      sub_1C440962C(v131);
      MEMORY[0x1C6942830](v131, -1, -1);
      MEMORY[0x1C6942830](v130, -1, -1);
    }

    v132 = v196;
    sub_1C45CF650();
    swift_allocError();
    *v133 = 5;
    swift_willThrow();

    v192(v224, v132);
    return;
  }

  LODWORD(v191) = a9;

  sub_1C44CD238(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  v103 = v202;
  v104 = v205;
  sub_1C4F00DB8();
  sub_1C44344B8(v95, v97);
  v105 = v208;
  sub_1C4498FD8(v95, v97, v103);
  v208 = v105;
  sub_1C441DFEC(v95, v97);
  v106 = v203;
  sub_1C4F00DA8();
  (*(v204 + 8))(v103, v104);
  v188(v199, v224, v196);
  v108 = v206;
  v107 = v207;
  (*(v206 + 16))(v201, v106, v207);
  v109 = v200;
  sub_1C4EFF028();
  sub_1C441DFEC(v95, v97);
  (*(v108 + 8))(v106, v107);
  v110 = v217;
  v111 = v226;
  v112 = v221;
  (*(v217 + 32))(v226, v109, v221);
  v113 = v209;
  v220 = *(v110 + 16);
  (v220)(v209, v111, v112);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v114 = sub_1C4F00968();
  v115 = sub_1C4F01CF8();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v229.n128_u64[0] = v117;
    *v116 = 136380931;
    sub_1C44CD238(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
    LODWORD(v216) = v115;
    v118 = sub_1C4F02858();
    v120 = v119;
    v209 = *(v110 + 8);
    (v209)(v113, v221);
    v121 = sub_1C441D828(v118, v120, &v229);

    *(v116 + 4) = v121;
    *(v116 + 12) = 2080;
    v122 = v190;
    *(v116 + 14) = sub_1C441D828(v190, v194, &v229);
    _os_log_impl(&dword_1C43F8000, v114, v216, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s", v116, 0x16u);
    swift_arrayDestroy();
    v123 = v117;
    v112 = v221;
    MEMORY[0x1C6942830](v123, -1, -1);
    MEMORY[0x1C6942830](v116, -1, -1);

    v124 = v218;
    v125 = v219;
  }

  else
  {

    v209 = *(v110 + 8);
    (v209)(v113, v112);
    v124 = v218;
    v125 = v219;
    v122 = v190;
  }

  v134 = v211;
  (v220)(v211, v226, v112);
  v135 = v210;
  sub_1C4EFEBB8();
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C448D088();
  sub_1C4EF9AE8();
  v136 = &v134[v135[8]];
  v137 = v194;
  *v136 = v122;
  v136[1] = v137;
  v138 = &v134[v135[10]];
  *v138 = v124;
  v138[1] = v125;
  *&v134[v135[11]] = v139;
  v134[v135[12]] = v191;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v141 = v140;
  v143 = *(v140 + 16);
  v142 = *(v140 + 24);
  v144 = v196;
  if (v143 >= v142 >> 1)
  {
    sub_1C44C9240(v142 > 1, v143 + 1, 1, v140);
    v141 = v184;
  }

  v145 = v225;
  *(v141 + 2) = v143 + 1;
  sub_1C44DD800();
  v211 = v141;
  v233 = v141;
  v146 = *(v213 + 16);
  if (v146)
  {
    v147 = (v213 + 32);
    v148 = MEMORY[0x1E69E7CC0];
    v220 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v149 = *(v147 + 1);
      v229 = *v147;
      v230 = v149;
      v231[0] = v147[2];
      *(v231 + 9) = *(v147 + 41);
      v150 = v229;
      v232 = v229;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45D17A0(&v229, &v227);
      v151 = [v145 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v151)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v227, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v152 = v150.n128_u64[0] == 0x696669746E656469 && v150.n128_u64[1] == 0xEA00000000007265;
        if (v152 || (sub_1C4F02938() & 1) != 0)
        {
          LODWORD(v216) = BYTE8(v231[1]);
          v154 = *(&v231[0] + 1);
          v153 = *&v231[1];
          v214 = *&v231[0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v155 = sub_1C4EFF048();
          v212 = v156;
          v213 = v155;
          v215 = v153;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(&v229);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458A900();
            v148 = v171;
          }

          v157 = *(v148 + 16);
          v158 = v148;
          if (v157 >= *(v148 + 24) >> 1)
          {
            sub_1C458A900();
            v158 = v172;
          }

          v148 = v158;
          *(v158 + 16) = v157 + 1;
          v159 = (v158 + (v157 << 6));
          v159[2] = v150;
          v160 = v212;
          v159[3].n128_u64[0] = v213;
          v159[3].n128_u64[1] = v160;
          v161 = v215;
          v159[4].n128_u64[0] = v214;
          v159[4].n128_u64[1] = v154;
          v159[5].n128_u64[0] = v161;
          v159[5].n128_u8[8] = v216;
          v144 = v196;
          v145 = v225;
          goto LABEL_82;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458A900();
          v148 = v175;
        }

        v144 = v196;
        v167 = *(v148 + 16);
        if (v167 >= *(v148 + 24) >> 1)
        {
          sub_1C458A900();
          v148 = v176;
        }

        *(v148 + 16) = v167 + 1;
        v166 = (v148 + (v167 << 6));
      }

      else
      {
        v227 = 0u;
        v228 = 0u;
        sub_1C4420C3C(&v227, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v162 = v220;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458A900();
          v162 = v173;
        }

        v144 = v196;
        v164 = *(v162 + 16);
        v163 = *(v162 + 24);
        v220 = v162;
        if (v164 >= v163 >> 1)
        {
          sub_1C458A900();
          v220 = v174;
        }

        v165 = v220;
        *(v220 + 16) = v164 + 1;
        v166 = (v165 + (v164 << 6));
      }

      v168 = v229;
      v169 = v230;
      v170 = v231[0];
      *(v166 + 73) = *(v231 + 9);
      v166[3] = v169;
      v166[4] = v170;
      v166[2] = v168;
LABEL_82:
      v147 += 4;
      if (!--v146)
      {
        goto LABEL_85;
      }
    }
  }

  v220 = MEMORY[0x1E69E7CC0];
LABEL_85:
  v177 = v226;
  v178 = v195;
  v179 = v208;
  sub_1C4B1E304();
  if (v179)
  {

    (v209)(v177, v221);
    v192(v224, v144);
  }

  else
  {
    v181 = v180;

    sub_1C49D3614(v181);
    sub_1C4B1E304();
    v183 = v182;

    sub_1C49D3614(v183);

    (v209)(v226, v221);
    v192(v224, v144);
  }
}

void sub_1C4B217B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v33 = sub_1C441EE94(v25, v26, v27, v28, v29, v30, v31, v32);
  v34 = sub_1C43FFAE0(v33, v289);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v35);
  v36 = sub_1C4F00DD8();
  v37 = sub_1C43FFAE0(v36, v287);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v38);
  v39 = sub_1C4F00DC8();
  v40 = sub_1C43FFAE0(v39, &v288);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  sub_1C43FD2C8(v42);
  v43 = sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v45 = sub_1C4B2AA0C();
  v46 = sub_1C43FFAE0(v45, &a12);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  sub_1C43FCE30(v49);
  v50 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v50);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  v52 = sub_1C447CE30();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FD230();
  sub_1C43FCE30(v56);
  sub_1C442023C();
  v285 = v57;
  v286 = v58;
  v59 = sub_1C4F029C8();
  v60 = sub_1C447E480(v59, sel___swift_objectForKeyedSubscript_);
  swift_unknownObjectRelease();
  if (v60)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v61)
  {
    sub_1C4420C3C(v287, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  v62 = sub_1C4B2A2B4();
  v63 = sub_1C44EB8EC();
  if ((sub_1C4B2A958(v63, v65, v64 + 8) & 1) == 0)
  {
LABEL_9:
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v71 = sub_1C4F00978();
    sub_1C442B738(v71, qword_1EDE2DE10);
    v72 = sub_1C440E728();
    v73(v72);
    v74 = sub_1C4F00968();
    sub_1C4F01CD8();
    v75 = sub_1C44016D0();
    if (os_log_type_enabled(v75, v76))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v77 = swift_slowAlloc();
      sub_1C44180A8(v77);
      sub_1C445BC14(4.8149e-34);
      v78 = sub_1C4462464();
      v79(v78);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v80, v81, v82, v83, v84, v85);
      sub_1C440962C(v43);
      v86 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v86);
      v87 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v87);
    }

    else
    {
      v88 = sub_1C4462464();
      v89(v88);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v90 = swift_allocError();
    sub_1C44060DC(v90, v91);
    swift_willThrow();
    goto LABEL_43;
  }

  v279 = v52;
  v66 = v289[4];
  sub_1C4414EA8();
  v285 = v67;
  v286 = v68;
  v69 = sub_1C4F029C8();
  v70 = sub_1C44AB1A0(v69, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v66)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v92)
  {
    sub_1C4420C3C(v287, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_21;
  }

  v93 = sub_1C44EB8EC();
  if ((sub_1C4B2A958(v93, v95, v94 + 8) & 1) == 0)
  {
LABEL_21:
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v98 = sub_1C4F00978();
    sub_1C442B738(v98, qword_1EDE2DE10);
    v99 = sub_1C440E728();
    v100(v99);
    v101 = sub_1C4F00968();
    sub_1C4F01CD8();
    v102 = sub_1C44016D0();
    if (os_log_type_enabled(v102, v103))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v104 = swift_slowAlloc();
      sub_1C44180A8(v104);
      sub_1C445BC14(4.8149e-34);
      v105 = sub_1C4462464();
      v106(v105);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v107, v108, v109, v110, v111, v112);
      sub_1C440962C(v43);
      v113 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v113);
      v114 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v114);
    }

    else
    {
      v115 = sub_1C4462464();
      v116(v115);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v117 = swift_allocError();
    sub_1C44060DC(v117, v118);
    swift_willThrow();
    sub_1C4485F24();
    goto LABEL_43;
  }

  sub_1C4440DBC();
  v96 = sub_1C4F029C8();
  v97 = sub_1C44D3E0C(v96, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v66)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v119)
  {
    sub_1C4420C3C(v287, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_37:
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v126 = sub_1C4F00978();
    sub_1C442B738(v126, qword_1EDE2DE10);
    v127 = sub_1C440E728();
    v128(v127);
    v123 = sub_1C4F00968();
    sub_1C4F01CD8();
    v129 = sub_1C44016D0();
    if (os_log_type_enabled(v129, v130))
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  sub_1C44EB8EC();
  if ((sub_1C445FDA0() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_1C44562D0();
  sub_1C4B2AA28();
  sub_1C4405CEC();
  if (v148)
  {

    sub_1C4420C3C(v20, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v120 = sub_1C4F00978();
    sub_1C442B738(v120, qword_1EDE2DE10);
    sub_1C443DFBC();
    v121 = sub_1C443FF6C();
    v122(v121);
    v123 = sub_1C4F00968();
    sub_1C4F01CD8();
    v124 = sub_1C44016D0();
    v62 = v278;
    if (os_log_type_enabled(v124, v125))
    {
LABEL_40:
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v131 = swift_slowAlloc();
      sub_1C44180A8(v131);
      sub_1C445BC14(4.8149e-34);
      v132 = sub_1C4462464();
      v133(v132);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v134, v135, v136, v137, v138, v139);
      sub_1C440962C(v43);
      v140 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v140);
      v141 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v141);
LABEL_42:

      sub_1C45CF650();
      sub_1C441C114();
      v144 = swift_allocError();
      sub_1C44060DC(v144, v145);
      swift_willThrow();
      sub_1C4485F24();

      goto LABEL_43;
    }

LABEL_41:
    v142 = sub_1C4462464();
    v143(v142);
    goto LABEL_42;
  }

  v146 = sub_1C441E688();
  v147(v146);
  sub_1C44606F4();
  if (!v148)
  {
    sub_1C4419274();
    swift_once();
  }

  v149 = sub_1C4F00978();
  sub_1C442B738(v149, qword_1EDE2DE10);
  v150 = sub_1C447F2A4();
  v151(v150);
  sub_1C4410278(&v290);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v152 = sub_1C4F00968();
  v153 = sub_1C4F01CB8();

  if (sub_1C441ED60())
  {
    sub_1C4480408();
    v153 = swift_slowAlloc();
    sub_1C443FD74();
    v154 = swift_slowAlloc();
    sub_1C44A3BF0(v154);
    v155 = sub_1C44249EC(4.8453e-34);
    sub_1C44587AC(v155);
    sub_1C4407A84();
    v158 = sub_1C44CD238(v156, v157, MEMORY[0x1E69A92F8]);
    sub_1C446BCDC(v158);
    v159 = sub_1C4436664();
    v160(v159);
    v161 = sub_1C43FBC98();
    sub_1C441D828(v161, v162, v163);
    sub_1C441C818();
    v152 = v280;

    sub_1C445C200();
    sub_1C442A9A8(&dword_1C43F8000, v164, v165, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C449AF00();
    v166 = sub_1C4408D20();
    MEMORY[0x1C6942830](v166);
    v167 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v167);

    sub_1C442A76C();
  }

  else
  {

    v168 = sub_1C449528C();
    v169(v168);
    sub_1C443EF60();
  }

  sub_1C4B2AA80();
  sub_1C4B2A9A4();
  v170 = v287[0];
  v171 = v287[1];
  sub_1C4F01178();
  sub_1C4405BE0();
  sub_1C4F01148();
  v172 = sub_1C441DE48();
  v173(v172);
  if (v152 >> 60 == 15)
  {

    v174 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v175 = sub_1C4B2AA9C(v174);
    v176 = sub_1C4F01CD8();

    if (os_log_type_enabled(v175, v176))
    {
      sub_1C43FECF0();
      v177 = swift_slowAlloc();
      sub_1C43FEC60();
      v178 = swift_slowAlloc();
      sub_1C44180A8(v178);
      *v177 = 136380675;
      v179 = sub_1C4404DC8();
      v182 = sub_1C441D828(v179, v180, v181);

      *(v177 + 4) = v182;
      sub_1C44AE8E0(&dword_1C43F8000, v183, v184, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v43);
      v185 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v185);
      v186 = sub_1C4408D20();
      MEMORY[0x1C6942830](v186);
    }

    else
    {
    }

    v218 = sub_1C4434234();
    v219(v218);
    v220 = sub_1C4F00968();
    sub_1C4F01CD8();
    v221 = sub_1C44016D0();
    if (os_log_type_enabled(v221, v222))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v223 = swift_slowAlloc();
      sub_1C44180A8(v223);
      *v152 = 136315138;
      v224 = *(v170 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v225 = sub_1C448056C();
      v226(v225);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v152 + 4) = v224;
      sub_1C44046B4();
      _os_log_impl(v227, v228, v229, v230, v231, v232);
      sub_1C440962C(v43);
      v233 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v233);
      v234 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v234);
    }

    else
    {
      v261 = sub_1C448056C();
      v262(v261);
    }

    sub_1C45CF650();
    sub_1C441C114();
    swift_allocError();
    sub_1C441B4F8(v263, 5);
    swift_willThrow();
    sub_1C4485F24();

    v264 = sub_1C4432980();
    v265(v264);
    goto LABEL_43;
  }

  sub_1C44D0B54();
  sub_1C442D2CC();
  v189 = sub_1C44CD238(v187, v188, MEMORY[0x1E6966618]);
  sub_1C4469240(v189);
  v190 = sub_1C4404DC8();
  sub_1C44344B8(v190, v191);
  v192 = sub_1C4404DC8();
  sub_1C447E790(v192, v193);
  sub_1C4440A4C();
  v194 = sub_1C443F33C();
  v195(v194);
  v196 = sub_1C44411F4();
  v197(v196);
  v198 = sub_1C44105A8();
  v199(v198);
  sub_1C4424D48();
  v200 = sub_1C4404DC8();
  sub_1C441DFEC(v200, v201);
  v202 = sub_1C44A14CC();
  v203(v202);
  v204 = sub_1C4415C44();
  v205(v204);
  v206 = sub_1C44224A0();
  v207(v206);
  sub_1C440BC84(&v282);
  v208 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v209 = sub_1C4B2AA9C(v208);
  sub_1C4F01CF8();
  sub_1C4404CE0();

  if (os_log_type_enabled(v209, v152))
  {
    v153 = sub_1C440F274();
    sub_1C443FD74();
    v210 = swift_slowAlloc();
    sub_1C449DB28(v210);
    *v153 = 136380931;
    sub_1C4417750();
    sub_1C44CD238(v211, v212, MEMORY[0x1E69A9840]);
    sub_1C4F02858();
    sub_1C4433DD4();
    *(v213 - 256) = v214;
    v214();
    sub_1C44805EC();
    sub_1C44D3FDC();
    *(v153 + 14) = sub_1C44513AC();
    sub_1C4416B30(&dword_1C43F8000, v215, v216, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s");
    sub_1C4457944();
    v217 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v217);
    sub_1C442A76C();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v235 = sub_1C447F5DC();
    v236(v235);
  }

  v237 = sub_1C441C480();
  v239.n128_f64[0] = v238(v237);
  sub_1C4B2A910(v239);
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C44036D4();
  sub_1C448D088();
  sub_1C4EF9AE8();
  v241 = sub_1C440C6D8(v240);
  sub_1C4401EC4(v241, v242, v243, MEMORY[0x1E69E7CC0]);
  sub_1C44290B0();
  if (v244)
  {
    sub_1C4401DCC();
    sub_1C44C9240(v274, v275, v276, v153);
    v153 = v277;
  }

  *(v153 + 16) = v209;
  sub_1C43FBF6C();
  sub_1C43FDDE8();
  sub_1C44DD800();
  sub_1C44419A8();
  if (v43)
  {
    v246 = v245 + 32;
    v283 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C443F750();
      sub_1C4464B9C();
      v247 = [v281 __swift_objectForKeyedSubscript_];
      sub_1C441D28C();
      swift_unknownObjectRelease();
      if (v152)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v285, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        sub_1C4462050();
        v249 = v279 == v248 && v209 == 0xEA00000000007265;
        if (v249 || (v250 = sub_1C442BB94(), (sub_1C441D39C(v250, v251) & 1) != 0))
        {
          sub_1C44142D8();
          v152 = v171;
          v252 = sub_1C4EFF048();
          sub_1C44A1DB0(v252);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(v287);
          v171 = v283;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C458A900();
            v171 = v255;
          }

          sub_1C441D740();
          if (v244)
          {
            sub_1C4B2A9D8();
            v283 = v256;
          }

          sub_1C442BF0C();
          goto LABEL_84;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A900();
          v283 = v259;
        }

        sub_1C445A9DC();
        if (v244)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v283 = v260;
        }

        sub_1C4488978();
      }

      else
      {
        sub_1C445543C();
        sub_1C4420C3C(&v285, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v253 = v284;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A900();
          v253 = v257;
        }

        sub_1C4475284();
        if (v244)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v253 = v258;
        }

        *(v253 + 16) = v209;
        v254 = v253;
      }

      sub_1C4416850(v254);
LABEL_84:
      v246 += 64;
      v43 = (v43 - 1);
      if (!v43)
      {
        goto LABEL_89;
      }
    }
  }

  v283 = MEMORY[0x1E69E7CC0];
LABEL_89:
  sub_1C440A050();
  if (v21)
  {
    sub_1C4485F24();

    v266 = sub_1C442F39C();
    v267(v266);
    v268 = sub_1C4432980();
    v269(v268);
  }

  else
  {

    sub_1C4B2A9F4();
    sub_1C44346EC();
    sub_1C445FE78();
    sub_1C441C818();

    sub_1C4B2A9F4();
    sub_1C4485F24();
    sub_1C4B2A970();
    v270 = sub_1C441CD7C();
    v271(v270);
    v272 = sub_1C4408FB4();
    v273(v272);
  }

LABEL_43:
  sub_1C43FBC80();
}

void sub_1C4B2294C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v206 = a8;
  v213 = a7;
  v209 = a5;
  v192 = a4;
  v214 = a2;
  v211 = a1;
  v220 = a12;
  v221 = a11;
  v219 = a10;
  v203 = type metadata accessor for EntityTriple(0);
  v205 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v181[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v198 = sub_1C4F00DD8();
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v195 = &v181[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v200 = sub_1C4F00DC8();
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v194 = &v181[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v196 = &v181[-v18];
  v19 = sub_1C4F01188();
  v207 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v181[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v212 = sub_1C4EFF0C8();
  v208 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v202 = &v181[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v193 = &v181[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v217 = &v181[-v26];
  v27 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v181[-v28];
  v30 = sub_1C4EFD548();
  v216 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v181[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v181[-v34];
  MEMORY[0x1EEE9AC00](v36);
  v215 = &v181[-v37];
  *&v222 = 0x657473654E444D5FLL;
  *(&v222 + 1) = 0xEF797469746E4564;
  v38 = sub_1C4F029C8();
  v218 = a3;
  v39 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v210 = a6;
  if (v39)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v222 = 0u;
    v223 = 0u;
  }

  v224 = v222;
  v225 = v223;
  if (!*(&v223 + 1))
  {
    sub_1C4420C3C(&v224, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v43 = v221;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v44 = sub_1C4F00978();
    sub_1C442B738(v44, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v45 = sub_1C4F00968();
    v46 = sub_1C4F01CD8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v224 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_1C441D828(v219, v43, &v224);
      _os_log_impl(&dword_1C43F8000, v45, v46, "Mapping error, nested entity missing metadata in map, %s", v47, 0xCu);
      sub_1C440962C(v48);
      MEMORY[0x1C6942830](v48, -1, -1);
      MEMORY[0x1C6942830](v47, -1, -1);
    }

    sub_1C45CF650();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    return;
  }

  v190 = v30;
  v40 = v227;
  *&v222 = 0x79747265706F7270;
  *(&v222 + 1) = 0xEB0000000070614DLL;
  v41 = sub_1C4F029C8();
  v191 = v40;
  v42 = [v40 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v42)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v222 = 0u;
    v223 = 0u;
  }

  v224 = v222;
  v225 = v223;
  if (!*(&v223 + 1))
  {
    sub_1C4420C3C(&v224, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v52 = v221;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v53 = sub_1C4F00978();
    sub_1C442B738(v53, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v54 = sub_1C4F00968();
    v55 = sub_1C4F01CD8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v224 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_1C441D828(v219, v52, &v224);
      _os_log_impl(&dword_1C43F8000, v54, v55, "Mapping error missing property map for  %s", v56, 0xCu);
      sub_1C440962C(v57);
      MEMORY[0x1C6942830](v57, -1, -1);
      MEMORY[0x1C6942830](v56, -1, -1);
    }

    sub_1C45CF650();
    swift_allocError();
    *v58 = 1;
    swift_willThrow();

    return;
  }

  v50 = v227;
  *&v222 = 1701869940;
  *(&v222 + 1) = 0xE400000000000000;
  v51 = [v191 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v51)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v222 = 0u;
    v223 = 0u;
  }

  v59 = v190;
  v224 = v222;
  v225 = v223;
  if (!*(&v223 + 1))
  {
    sub_1C4420C3C(&v224, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v68 = v221;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v69 = sub_1C4F00978();
    sub_1C442B738(v69, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v63 = sub_1C4F00968();
    v64 = sub_1C4F01CD8();

    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_39;
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v224 = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_1C441D828(v219, v68, &v224);
    v67 = "Mapping error missing type for  %s";
    goto LABEL_38;
  }

  v60 = v227;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v187 = v60;
  sub_1C4EFD2E8();
  if (sub_1C44157D4(v29, 1, v59) == 1)
  {

    sub_1C4420C3C(v29, &qword_1EC0B8568, &unk_1C4F319B0);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v61 = sub_1C4F00978();
    sub_1C442B738(v61, qword_1EDE2DE10);
    v62 = v221;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v63 = sub_1C4F00968();
    v64 = sub_1C4F01CD8();

    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_39;
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v224 = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_1C441D828(v219, v62, &v224);
    v67 = "Mapping error type is not recognized as an EntityClass %s";
LABEL_38:
    _os_log_impl(&dword_1C43F8000, v63, v64, v67, v65, 0xCu);
    sub_1C440962C(v66);
    MEMORY[0x1C6942830](v66, -1, -1);
    MEMORY[0x1C6942830](v65, -1, -1);
LABEL_39:

    sub_1C45CF650();
    swift_allocError();
    *v70 = 1;
    swift_willThrow();

    return;
  }

  v188 = *(&v60 + 1);
  v189 = v50;
  v71 = v216;
  v72 = v215;
  (*(v216 + 32))(v215, v29, v59);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v73 = sub_1C4F00978();
  v74 = sub_1C442B738(v73, qword_1EDE2DE10);
  v75 = *(v71 + 16);
  v184 = v71 + 16;
  v183 = v75;
  v75(v35, v72, v59);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v185 = v74;
  v76 = sub_1C4F00968();
  v77 = sub_1C4F01CB8();

  v182 = v77;
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v224 = v79;
    *v78 = 136381187;
    *(v78 + 4) = sub_1C441D828(v211, v214, &v224);
    *(v78 + 12) = 2080;
    sub_1C44CD238(&qword_1EDDFA220, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92F8]);
    v80 = v76;
    v81 = sub_1C4F02858();
    v83 = v82;
    v186 = *(v216 + 8);
    v186(v35, v190);
    v84 = sub_1C441D828(v81, v83, &v224);
    v59 = v190;

    *(v78 + 14) = v84;
    *(v78 + 22) = 1024;
    *(v78 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v80, v182, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v78, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v79, -1, -1);
    MEMORY[0x1C6942830](v78, -1, -1);

    v85 = v211;
    v86 = v213;
    v87 = v214;
  }

  else
  {

    v186 = *(v216 + 8);
    v186(v35, v59);
    v86 = v213;
    v87 = v214;
    v85 = v211;
  }

  v89 = *v86;
  v88 = v86[1];
  *&v224 = v85;
  *(&v224 + 1) = v87;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v89, v88);
  v90 = v224;
  sub_1C4F01178();
  v91 = sub_1C4F01148();
  v93 = v92;
  (*(v207 + 8))(v21, v19);
  if (v93 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v94 = sub_1C4F00968();
    v95 = sub_1C4F01CD8();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&v224 = v97;
      *v96 = 136380675;
      v98 = sub_1C441D828(v90, *(&v90 + 1), &v224);

      *(v96 + 4) = v98;
      _os_log_impl(&dword_1C43F8000, v94, v95, "Source: failed to encode identifier as UTF8 data: %{private}s", v96, 0xCu);
      sub_1C440962C(v97);
      MEMORY[0x1C6942830](v97, -1, -1);
      MEMORY[0x1C6942830](v96, -1, -1);
    }

    else
    {
    }

    v123 = v189;
    v124 = v221;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v125 = sub_1C4F00968();
    v126 = sub_1C4F01CD8();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *&v224 = v128;
      *v127 = 136315138;
      *(v127 + 4) = sub_1C441D828(v219, v124, &v224);
      _os_log_impl(&dword_1C43F8000, v125, v126, "Mapping error failed to generate EntityIdentifier for %s", v127, 0xCu);
      sub_1C440962C(v128);
      MEMORY[0x1C6942830](v128, -1, -1);
      MEMORY[0x1C6942830](v127, -1, -1);
    }

    v129 = v190;
    v130 = v215;
    sub_1C45CF650();
    swift_allocError();
    *v131 = 5;
    swift_willThrow();

    v186(v130, v129);
    return;
  }

  LODWORD(v219) = a9;

  sub_1C44CD238(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  v99 = v195;
  v100 = v198;
  v101 = v93;
  sub_1C4F00DB8();
  sub_1C44344B8(v91, v93);
  v102 = v201;
  sub_1C4498FD8(v91, v93, v99);
  v201 = v102;
  sub_1C441DFEC(v91, v93);
  v103 = v196;
  sub_1C4F00DA8();
  (*(v197 + 8))(v99, v100);
  v183(v32, v215, v59);
  v104 = v199;
  v105 = v200;
  (*(v199 + 16))(v194, v103, v200);
  v106 = v193;
  sub_1C4EFF028();
  sub_1C441DFEC(v91, v101);
  (*(v104 + 8))(v103, v105);
  v107 = v208;
  v108 = v217;
  v109 = v212;
  (*(v208 + 32))(v217, v106, v212);
  v110 = v202;
  v221 = *(v107 + 16);
  (v221)(v202, v108, v109);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v111 = sub_1C4F00968();
  v112 = sub_1C4F01CF8();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    *&v224 = v220;
    *v113 = 136380931;
    sub_1C44CD238(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
    v114 = v112;
    v115 = sub_1C4F02858();
    v117 = v116;
    v202 = *(v107 + 8);
    (v202)(v110, v212);
    v118 = sub_1C441D828(v115, v117, &v224);
    v109 = v212;

    *(v113 + 4) = v118;
    *(v113 + 12) = 2080;
    v119 = v187;
    *(v113 + 14) = sub_1C441D828(v187, v188, &v224);
    _os_log_impl(&dword_1C43F8000, v111, v114, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s", v113, 0x16u);
    v120 = v220;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v120, -1, -1);
    v121 = v113;
    v59 = v190;
    MEMORY[0x1C6942830](v121, -1, -1);

    v122 = v209;
  }

  else
  {

    v202 = *(v107 + 8);
    (v202)(v110, v109);
    v122 = v209;
    v119 = v187;
  }

  v132 = v204;
  (v221)(v204, v108, v109);
  v133 = v203;
  sub_1C4EFEBB8();
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C448D088();
  sub_1C4EF9AE8();
  v134 = &v132[v133[8]];
  v135 = v188;
  *v134 = v119;
  v134[1] = v135;
  v136 = &v132[v133[10]];
  v137 = v210;
  *v136 = v122;
  v136[1] = v137;
  *&v132[v133[11]] = v138;
  v132[v133[12]] = v219;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v203 = v139;
  v141 = *(v139 + 16);
  v140 = *(v139 + 24);
  if (v141 >= v140 >> 1)
  {
    sub_1C44C9240(v140 > 1, v141 + 1, 1, v203);
    v203 = v180;
  }

  v142 = v189;
  v143 = v218;
  v144 = v203;
  *(v203 + 16) = v141 + 1;
  sub_1C44DD800();
  v228 = v144;
  v145 = *(v206 + 16);
  if (v145)
  {
    v146 = (v206 + 32);
    v220 = MEMORY[0x1E69E7CC0];
    v221 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v147 = v146[1];
      v224 = *v146;
      v225 = v147;
      *v226 = v146[2];
      *&v226[9] = *(v146 + 41);
      v148 = v224;
      v227 = v224;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45D17A0(&v224, &v222);
      v149 = [v143 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v149)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v222, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v150 = v148 == 0x696669746E656469 && *(&v148 + 1) == 0xEA00000000007265;
        if (v150 || (sub_1C4F02938() & 1) != 0)
        {
          LODWORD(v214) = v226[24];
          v152 = *&v226[8];
          v151 = *&v226[16];
          v211 = *v226;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v207 = sub_1C4EFF048();
          v154 = v153;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(&v224);
          v155 = v221;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458A900();
            v155 = v169;
          }

          v157 = *(v155 + 16);
          v156 = *(v155 + 24);
          v221 = v155;
          if (v157 >= v156 >> 1)
          {
            sub_1C458A900();
            v221 = v170;
          }

          v158 = v221;
          *(v221 + 16) = v157 + 1;
          v159 = v158 + (v157 << 6);
          *(v159 + 32) = v148;
          *(v159 + 48) = v207;
          *(v159 + 56) = v154;
          *(v159 + 64) = v211;
          *(v159 + 72) = v152;
          *(v159 + 80) = v151;
          *(v159 + 88) = v214;
          v142 = v189;
          v59 = v190;
          v143 = v218;
          v108 = v217;
          goto LABEL_81;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458A900();
          v221 = v173;
        }

        v59 = v190;
        v162 = *(v221 + 16);
        v163 = v162 + 1;
        if (v162 >= *(v221 + 24) >> 1)
        {
          sub_1C458A900();
          v221 = v174;
        }

        v164 = v221;
      }

      else
      {
        v222 = 0u;
        v223 = 0u;
        sub_1C4420C3C(&v222, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v160 = v220;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458A900();
          v160 = v171;
        }

        v59 = v190;
        v162 = *(v160 + 16);
        v161 = *(v160 + 24);
        v220 = v160;
        v163 = v162 + 1;
        if (v162 >= v161 >> 1)
        {
          sub_1C458A900();
          v220 = v172;
        }

        v164 = v220;
      }

      *(v164 + 16) = v163;
      v165 = (v164 + (v162 << 6));
      v166 = v224;
      v167 = v225;
      v168 = *v226;
      *(v165 + 73) = *&v226[9];
      v165[3] = v167;
      v165[4] = v168;
      v165[2] = v166;
LABEL_81:
      v146 += 4;
      if (!--v145)
      {
        goto LABEL_84;
      }
    }
  }

  v220 = MEMORY[0x1E69E7CC0];
  v221 = MEMORY[0x1E69E7CC0];
LABEL_84:
  v175 = v201;
  sub_1C4B1E304();
  if (v175)
  {

    (v202)(v108, v212);
    v186(v215, v59);
  }

  else
  {
    v177 = v176;

    sub_1C49D3614(v177);
    sub_1C4B1E304();
    v179 = v178;

    sub_1C49D3614(v179);

    (v202)(v108, v212);
    v186(v215, v190);
  }
}

void sub_1C4B24698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v33 = sub_1C441EE94(v25, v26, v27, v28, v29, v30, v31, v32);
  v34 = sub_1C43FFAE0(v33, v289);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v35);
  v36 = sub_1C4F00DD8();
  v37 = sub_1C43FFAE0(v36, v287);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v38);
  v39 = sub_1C4F00DC8();
  v40 = sub_1C43FFAE0(v39, &v288);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  sub_1C43FD2C8(v42);
  v43 = sub_1C4F01188();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v45 = sub_1C4B2AA0C();
  v46 = sub_1C43FFAE0(v45, &a12);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  sub_1C43FCE30(v49);
  v50 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v50);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  v52 = sub_1C447CE30();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBD08();
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FD230();
  sub_1C43FCE30(v56);
  sub_1C442023C();
  v285 = v57;
  v286 = v58;
  v59 = sub_1C4F029C8();
  v60 = sub_1C447E480(v59, sel___swift_objectForKeyedSubscript_);
  swift_unknownObjectRelease();
  if (v60)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v61)
  {
    sub_1C4420C3C(v287, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  v62 = sub_1C4B2A2B4();
  v63 = sub_1C44EB8EC();
  if ((sub_1C4B2A958(v63, v65, v64 + 8) & 1) == 0)
  {
LABEL_9:
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v71 = sub_1C4F00978();
    sub_1C442B738(v71, qword_1EDE2DE10);
    v72 = sub_1C440E728();
    v73(v72);
    v74 = sub_1C4F00968();
    sub_1C4F01CD8();
    v75 = sub_1C44016D0();
    if (os_log_type_enabled(v75, v76))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v77 = swift_slowAlloc();
      sub_1C44180A8(v77);
      sub_1C4488458(4.8149e-34);
      v78 = sub_1C4462464();
      v79(v78);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v80, v81, v82, v83, v84, v85);
      sub_1C440962C(v43);
      v86 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v86);
      v87 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v87);
    }

    else
    {
      v88 = sub_1C4462464();
      v89(v88);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v90 = swift_allocError();
    sub_1C44060DC(v90, v91);
    swift_willThrow();
    goto LABEL_43;
  }

  v279 = v52;
  v66 = v289[4];
  sub_1C4414EA8();
  v285 = v67;
  v286 = v68;
  v69 = sub_1C4F029C8();
  v70 = sub_1C44AB1A0(v69, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v66)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v92)
  {
    sub_1C4420C3C(v287, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_21;
  }

  v93 = sub_1C44EB8EC();
  if ((sub_1C4B2A958(v93, v95, v94 + 8) & 1) == 0)
  {
LABEL_21:
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v98 = sub_1C4F00978();
    sub_1C442B738(v98, qword_1EDE2DE10);
    v99 = sub_1C440E728();
    v100(v99);
    v101 = sub_1C4F00968();
    sub_1C4F01CD8();
    v102 = sub_1C44016D0();
    if (os_log_type_enabled(v102, v103))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v104 = swift_slowAlloc();
      sub_1C44180A8(v104);
      sub_1C4488458(4.8149e-34);
      v105 = sub_1C4462464();
      v106(v105);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v107, v108, v109, v110, v111, v112);
      sub_1C440962C(v43);
      v113 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v113);
      v114 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v114);
    }

    else
    {
      v115 = sub_1C4462464();
      v116(v115);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v117 = swift_allocError();
    sub_1C44060DC(v117, v118);
    swift_willThrow();
    sub_1C4485F24();
    goto LABEL_43;
  }

  sub_1C4440DBC();
  v96 = sub_1C4F029C8();
  v97 = sub_1C44D3E0C(v96, sel___swift_objectForKeyedSubscript_);
  sub_1C44A1C64();
  swift_unknownObjectRelease();
  if (v66)
  {
    sub_1C4B2A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v119)
  {
    sub_1C4420C3C(v287, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_37:
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v126 = sub_1C4F00978();
    sub_1C442B738(v126, qword_1EDE2DE10);
    v127 = sub_1C440E728();
    v128(v127);
    v123 = sub_1C4F00968();
    sub_1C4F01CD8();
    v129 = sub_1C44016D0();
    if (os_log_type_enabled(v129, v130))
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  sub_1C44EB8EC();
  if ((sub_1C445FDA0() & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_1C44562D0();
  sub_1C4B2AA28();
  sub_1C4405CEC();
  if (v148)
  {

    sub_1C4420C3C(v20, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C44606F4();
    if (!v148)
    {
      sub_1C4419274();
      swift_once();
    }

    v120 = sub_1C4F00978();
    sub_1C442B738(v120, qword_1EDE2DE10);
    sub_1C443DFBC();
    v121 = sub_1C443FF6C();
    v122(v121);
    v123 = sub_1C4F00968();
    sub_1C4F01CD8();
    v124 = sub_1C44016D0();
    v62 = v278;
    if (os_log_type_enabled(v124, v125))
    {
LABEL_40:
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v131 = swift_slowAlloc();
      sub_1C44180A8(v131);
      sub_1C4488458(4.8149e-34);
      v132 = sub_1C4462464();
      v133(v132);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v20 + 4) = v22;
      sub_1C44046B4();
      _os_log_impl(v134, v135, v136, v137, v138, v139);
      sub_1C440962C(v43);
      v140 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v140);
      v141 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v141);
LABEL_42:

      sub_1C45CF650();
      sub_1C441C114();
      v144 = swift_allocError();
      sub_1C44060DC(v144, v145);
      swift_willThrow();
      sub_1C4485F24();

      goto LABEL_43;
    }

LABEL_41:
    v142 = sub_1C4462464();
    v143(v142);
    goto LABEL_42;
  }

  v146 = sub_1C441E688();
  v147(v146);
  sub_1C44606F4();
  if (!v148)
  {
    sub_1C4419274();
    swift_once();
  }

  v149 = sub_1C4F00978();
  sub_1C442B738(v149, qword_1EDE2DE10);
  v150 = sub_1C447F2A4();
  v151(v150);
  sub_1C4410278(&v290);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v152 = sub_1C4F00968();
  v153 = sub_1C4F01CB8();

  if (sub_1C441ED60())
  {
    sub_1C4480408();
    v153 = swift_slowAlloc();
    sub_1C443FD74();
    v154 = swift_slowAlloc();
    sub_1C44A3BF0(v154);
    v155 = sub_1C44249EC(4.8453e-34);
    sub_1C44587AC(v155);
    sub_1C4407A84();
    v158 = sub_1C44CD238(v156, v157, MEMORY[0x1E69A92F8]);
    sub_1C446BCDC(v158);
    v159 = sub_1C4436664();
    v160(v159);
    v161 = sub_1C43FBC98();
    sub_1C441D828(v161, v162, v163);
    sub_1C441C818();
    v152 = v280;

    sub_1C445C200();
    sub_1C442A9A8(&dword_1C43F8000, v164, v165, "Source: generating identifier for: %{private}s : %s : %{BOOL}d");
    sub_1C449AF00();
    v166 = sub_1C4408D20();
    MEMORY[0x1C6942830](v166);
    v167 = sub_1C445E9A8();
    MEMORY[0x1C6942830](v167);

    sub_1C442A76C();
  }

  else
  {

    v168 = sub_1C449528C();
    v169(v168);
    sub_1C443EF60();
  }

  sub_1C4B2AA80();
  sub_1C4B2A9A4();
  v170 = v287[0];
  v171 = v287[1];
  sub_1C4F01178();
  sub_1C4405BE0();
  sub_1C4F01148();
  v172 = sub_1C441DE48();
  v173(v172);
  if (v152 >> 60 == 15)
  {

    v174 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v175 = sub_1C4B2AA9C(v174);
    v176 = sub_1C4F01CD8();

    if (os_log_type_enabled(v175, v176))
    {
      sub_1C43FECF0();
      v177 = swift_slowAlloc();
      sub_1C43FEC60();
      v178 = swift_slowAlloc();
      sub_1C44180A8(v178);
      *v177 = 136380675;
      v179 = sub_1C4404DC8();
      v182 = sub_1C441D828(v179, v180, v181);

      *(v177 + 4) = v182;
      sub_1C44AE8E0(&dword_1C43F8000, v183, v184, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v43);
      v185 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v185);
      v186 = sub_1C4408D20();
      MEMORY[0x1C6942830](v186);
    }

    else
    {
    }

    v218 = sub_1C4434234();
    v219(v218);
    v220 = sub_1C4F00968();
    sub_1C4F01CD8();
    v221 = sub_1C44016D0();
    if (os_log_type_enabled(v221, v222))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C43FC858();
      v223 = swift_slowAlloc();
      sub_1C44180A8(v223);
      *v152 = 136315138;
      v224 = *v170;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v225 = sub_1C448056C();
      v226(v225);
      sub_1C448F1C0();
      sub_1C4B2A8F8();
      *(v152 + 4) = v224;
      sub_1C44046B4();
      _os_log_impl(v227, v228, v229, v230, v231, v232);
      sub_1C440962C(v43);
      v233 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v233);
      v234 = sub_1C4425FC4();
      MEMORY[0x1C6942830](v234);
    }

    else
    {
      v261 = sub_1C448056C();
      v262(v261);
    }

    sub_1C45CF650();
    sub_1C441C114();
    swift_allocError();
    sub_1C441B4F8(v263, 5);
    swift_willThrow();
    sub_1C4485F24();

    v264 = sub_1C4432980();
    v265(v264);
    goto LABEL_43;
  }

  sub_1C44D0B54();
  sub_1C442D2CC();
  v189 = sub_1C44CD238(v187, v188, MEMORY[0x1E6966618]);
  sub_1C4469240(v189);
  v190 = sub_1C4404DC8();
  sub_1C44344B8(v190, v191);
  v192 = sub_1C4404DC8();
  sub_1C447E790(v192, v193);
  sub_1C4440A4C();
  v194 = sub_1C443F33C();
  v195(v194);
  v196 = sub_1C44411F4();
  v197(v196);
  v198 = sub_1C44105A8();
  v199(v198);
  sub_1C4424D48();
  v200 = sub_1C4404DC8();
  sub_1C441DFEC(v200, v201);
  v202 = sub_1C44A14CC();
  v203(v202);
  v204 = sub_1C4415C44();
  v205(v204);
  v206 = sub_1C44224A0();
  v207(v206);
  sub_1C440BC84(&v282);
  v208 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v209 = sub_1C4B2AA9C(v208);
  sub_1C4F01CF8();
  sub_1C4404CE0();

  if (os_log_type_enabled(v209, v152))
  {
    v153 = sub_1C440F274();
    sub_1C443FD74();
    v210 = swift_slowAlloc();
    sub_1C449DB28(v210);
    *v153 = 136380931;
    sub_1C4417750();
    sub_1C44CD238(v211, v212, MEMORY[0x1E69A9840]);
    sub_1C4F02858();
    sub_1C4433DD4();
    *(v213 - 256) = v214;
    v214();
    sub_1C44805EC();
    sub_1C44D3FDC();
    *(v153 + 14) = sub_1C44513AC();
    sub_1C4416B30(&dword_1C43F8000, v215, v216, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s");
    sub_1C4457944();
    v217 = sub_1C4425FC4();
    MEMORY[0x1C6942830](v217);
    sub_1C442A76C();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v235 = sub_1C447F5DC();
    v236(v235);
  }

  v237 = sub_1C441C480();
  v239.n128_f64[0] = v238(v237);
  sub_1C4B2A910(v239);
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C44036D4();
  sub_1C448D088();
  sub_1C4EF9AE8();
  v241 = sub_1C440C6D8(v240);
  sub_1C4401EC4(v241, v242, v243, MEMORY[0x1E69E7CC0]);
  sub_1C44290B0();
  if (v244)
  {
    sub_1C4401DCC();
    sub_1C44C9240(v274, v275, v276, v153);
    v153 = v277;
  }

  *(v153 + 16) = v209;
  sub_1C43FBF6C();
  sub_1C43FDDE8();
  sub_1C44DD800();
  sub_1C44419A8();
  if (v43)
  {
    v246 = v245 + 32;
    v283 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C443F750();
      sub_1C4464B9C();
      v247 = [v281 __swift_objectForKeyedSubscript_];
      sub_1C441D28C();
      swift_unknownObjectRelease();
      if (v152)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v285, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        sub_1C4462050();
        v249 = v279 == v248 && v209 == 0xEA00000000007265;
        if (v249 || (v250 = sub_1C442BB94(), (sub_1C441D39C(v250, v251) & 1) != 0))
        {
          sub_1C44142D8();
          v152 = v171;
          v252 = sub_1C4EFF048();
          sub_1C44A1DB0(v252);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(v287);
          v171 = v283;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C458A900();
            v171 = v255;
          }

          sub_1C441D740();
          if (v244)
          {
            sub_1C4B2A9D8();
            v283 = v256;
          }

          sub_1C442BF0C();
          goto LABEL_84;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A900();
          v283 = v259;
        }

        sub_1C445A9DC();
        if (v244)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v283 = v260;
        }

        sub_1C4488978();
      }

      else
      {
        sub_1C445543C();
        sub_1C4420C3C(&v285, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v253 = v284;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A900();
          v253 = v257;
        }

        sub_1C4475284();
        if (v244)
        {
          sub_1C4401DCC();
          sub_1C458A900();
          v253 = v258;
        }

        *(v253 + 16) = v209;
        v254 = v253;
      }

      sub_1C4416850(v254);
LABEL_84:
      v246 += 64;
      v43 = (v43 - 1);
      if (!v43)
      {
        goto LABEL_89;
      }
    }
  }

  v283 = MEMORY[0x1E69E7CC0];
LABEL_89:
  sub_1C440A050();
  if (v21)
  {
    sub_1C4485F24();

    v266 = sub_1C442F39C();
    v267(v266);
    v268 = sub_1C4432980();
    v269(v268);
  }

  else
  {

    sub_1C4B2A9F4();
    sub_1C44346EC();
    sub_1C445FE78();
    sub_1C441C818();

    sub_1C4B2A9F4();
    sub_1C4485F24();
    sub_1C4B2A970();
    v270 = sub_1C441CD7C();
    v271(v270);
    v272 = sub_1C4408FB4();
    v273(v272);
  }

LABEL_43:
  sub_1C43FBC80();
}

void sub_1C4B25830(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, char *a11, uint64_t a12)
{
  v219 = a8;
  v227 = a7;
  v223 = a5;
  v205 = a4;
  v221 = a2;
  v225 = a1;
  v233 = a12;
  v234 = a11;
  v232 = a10;
  v216 = type metadata accessor for EntityTriple(0);
  v218 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v217 = &v192[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v211 = sub_1C4F00DD8();
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v208 = &v192[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v213 = sub_1C4F00DC8();
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v207 = &v192[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v209 = &v192[-v18];
  v19 = sub_1C4F01188();
  v220 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v192[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v226 = sub_1C4EFF0C8();
  v222 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v215 = &v192[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v206 = &v192[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v231 = &v192[-v26];
  v27 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v192[-v28];
  v30 = sub_1C4EFD548();
  v228 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v192[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v192[-v34];
  MEMORY[0x1EEE9AC00](v36);
  v229 = &v192[-v37];
  *&v235 = 0x657473654E444D5FLL;
  *(&v235 + 1) = 0xEF797469746E4564;
  v38 = sub_1C4F029C8();
  v230 = a3;
  v39 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v224 = a6;
  if (v39)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v235 = 0u;
    v236 = 0u;
  }

  v237 = v235;
  v238 = v236;
  if (!*(&v236 + 1))
  {
    sub_1C4420C3C(&v237, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v43 = v234;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v44 = sub_1C4F00978();
    sub_1C442B738(v44, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v45 = sub_1C4F00968();
    v46 = sub_1C4F01CD8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v237 = v48;
      *v47 = 136315138;

      v49 = sub_1C441D828(v232, v43, &v237);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_1C43F8000, v45, v46, "Mapping error, nested entity missing metadata in map, %s", v47, 0xCu);
      sub_1C440962C(v48);
      MEMORY[0x1C6942830](v48, -1, -1);
      MEMORY[0x1C6942830](v47, -1, -1);
    }

    else
    {
    }

    sub_1C45CF650();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();
    return;
  }

  v203 = v30;
  v40 = v240;
  *&v235 = 0x79747265706F7270;
  *(&v235 + 1) = 0xEB0000000070614DLL;
  v41 = sub_1C4F029C8();
  v204 = v40;
  v42 = [v40 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v42)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v235 = 0u;
    v236 = 0u;
  }

  v237 = v235;
  v238 = v236;
  if (!*(&v236 + 1))
  {
    sub_1C4420C3C(&v237, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v53 = v234;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v54 = sub_1C4F00978();
    sub_1C442B738(v54, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v55 = sub_1C4F00968();
    v56 = sub_1C4F01CD8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v237 = v58;
      *v57 = 136315138;

      v59 = sub_1C441D828(v232, v53, &v237);

      *(v57 + 4) = v59;
      _os_log_impl(&dword_1C43F8000, v55, v56, "Mapping error missing property map for  %s", v57, 0xCu);
      sub_1C440962C(v58);
      MEMORY[0x1C6942830](v58, -1, -1);
      MEMORY[0x1C6942830](v57, -1, -1);
    }

    else
    {
    }

    sub_1C45CF650();
    swift_allocError();
    *v60 = 1;
    swift_willThrow();

    return;
  }

  v51 = v240;
  *&v235 = 1701869940;
  *(&v235 + 1) = 0xE400000000000000;
  v52 = [v204 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v52)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v235 = 0u;
    v236 = 0u;
  }

  v237 = v235;
  v238 = v236;
  if (!*(&v236 + 1))
  {
    sub_1C4420C3C(&v237, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_36:
    v71 = v234;
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v72 = sub_1C4F00978();
    sub_1C442B738(v72, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v65 = sub_1C4F00968();
    v66 = sub_1C4F01CD8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v237 = v68;
      *v67 = 136315138;

      v73 = sub_1C441D828(v232, v71, &v237);

      *(v67 + 4) = v73;
      v70 = "Mapping error missing type for  %s";
      goto LABEL_40;
    }

LABEL_41:

    goto LABEL_42;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v61 = v240;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v201 = v61;
  sub_1C4EFD2E8();
  v62 = v203;
  if (sub_1C44157D4(v29, 1, v203) == 1)
  {

    sub_1C4420C3C(v29, &qword_1EC0B8568, &unk_1C4F319B0);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v63 = sub_1C4F00978();
    sub_1C442B738(v63, qword_1EDE2DE10);
    v64 = v234;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v65 = sub_1C4F00968();
    v66 = sub_1C4F01CD8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v237 = v68;
      *v67 = 136315138;

      v69 = sub_1C441D828(v232, v64, &v237);

      *(v67 + 4) = v69;
      v70 = "Mapping error type is not recognized as an EntityClass %s";
LABEL_40:
      _os_log_impl(&dword_1C43F8000, v65, v66, v70, v67, 0xCu);
      sub_1C440962C(v68);
      MEMORY[0x1C6942830](v68, -1, -1);
      MEMORY[0x1C6942830](v67, -1, -1);

LABEL_42:
      sub_1C45CF650();
      swift_allocError();
      *v74 = 1;
      swift_willThrow();

      return;
    }

    goto LABEL_41;
  }

  v202 = *(&v61 + 1);
  v199 = v51;
  v75 = v228;
  v76 = v229;
  (*(v228 + 32))(v229, v29, v62);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v77 = sub_1C4F00978();
  v78 = sub_1C442B738(v77, qword_1EDE2DE10);
  v79 = *(v75 + 16);
  v197 = v75 + 16;
  v196 = v79;
  v79(v35, v76, v62);
  v80 = v221;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v200 = v78;
  v81 = sub_1C4F00968();
  v82 = sub_1C4F01CB8();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    *&v237 = v195;
    *v83 = 136381187;
    *(v83 + 4) = sub_1C441D828(v225, v80, &v237);
    *(v83 + 12) = 2080;
    sub_1C44CD238(&qword_1EDDFA220, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92F8]);
    v194 = v81;
    v84 = sub_1C4F02858();
    v193 = v82;
    v85 = v80;
    v86 = v84;
    v88 = v87;
    v198 = *(v228 + 8);
    v198(v35, v62);
    v89 = sub_1C441D828(v86, v88, &v237);
    v90 = v225;

    *(v83 + 14) = v89;
    *(v83 + 22) = 1024;
    *(v83 + 24) = 0;
    v91 = v83;
    v92 = v194;
    _os_log_impl(&dword_1C43F8000, v194, v193, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v91, 0x1Cu);
    v93 = v195;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v93, -1, -1);
    MEMORY[0x1C6942830](v91, -1, -1);
  }

  else
  {

    v198 = *(v75 + 8);
    v198(v35, v62);
    v85 = v80;
    v90 = v225;
  }

  v95 = *v227;
  v94 = v227[1];
  *&v237 = v90;
  *(&v237 + 1) = v85;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v95, v94);
  v96 = v237;
  sub_1C4F01178();
  v97 = sub_1C4F01148();
  v99 = v98;
  (*(v220 + 8))(v21, v19);
  if (v99 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v100 = sub_1C4F00968();
    v101 = sub_1C4F01CD8();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *&v237 = v103;
      *v102 = 136380675;
      v104 = sub_1C441D828(v96, *(&v96 + 1), &v237);

      *(v102 + 4) = v104;
      _os_log_impl(&dword_1C43F8000, v100, v101, "Source: failed to encode identifier as UTF8 data: %{private}s", v102, 0xCu);
      sub_1C440962C(v103);
      MEMORY[0x1C6942830](v103, -1, -1);
      MEMORY[0x1C6942830](v102, -1, -1);
    }

    else
    {
    }

    v135 = v199;
    v136 = v203;
    v137 = v234;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v138 = sub_1C4F00968();
    v139 = sub_1C4F01CD8();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *&v237 = v141;
      *v140 = 136315138;

      v142 = sub_1C441D828(v232, v137, &v237);

      *(v140 + 4) = v142;
      _os_log_impl(&dword_1C43F8000, v138, v139, "Mapping error failed to generate EntityIdentifier for %s", v140, 0xCu);
      sub_1C440962C(v141);
      MEMORY[0x1C6942830](v141, -1, -1);
      MEMORY[0x1C6942830](v140, -1, -1);
    }

    else
    {
    }

    v182 = v229;
    sub_1C45CF650();
    swift_allocError();
    *v183 = 5;
    swift_willThrow();

    v198(v182, v136);
    return;
  }

  sub_1C44CD238(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  v105 = v208;
  v106 = v211;
  v107 = v99;
  sub_1C4F00DB8();
  sub_1C44344B8(v97, v99);
  v108 = v214;
  sub_1C4498FD8(v97, v99, v105);
  v214 = v108;
  sub_1C441DFEC(v97, v99);
  v109 = v209;
  sub_1C4F00DA8();
  (*(v210 + 8))(v105, v106);
  v196(v32, v229, v203);
  v110 = v212;
  v111 = v213;
  (*(v212 + 16))(v207, v109, v213);
  v112 = v206;
  sub_1C4EFF028();
  sub_1C441DFEC(v97, v107);
  (*(v110 + 8))(v109, v111);
  v113 = v222;
  v114 = v231;
  v115 = v226;
  (*(v222 + 32))(v231, v112, v226);
  v116 = v215;
  v234 = *(v113 + 16);
  (v234)(v215, v114, v115);
  v117 = v202;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v118 = v117;
  v119 = sub_1C4F00968();
  v120 = sub_1C4F01CF8();

  v121 = os_log_type_enabled(v119, v120);
  LODWORD(v220) = a9;
  if (v121)
  {
    v122 = v116;
    v123 = swift_slowAlloc();
    v233 = swift_slowAlloc();
    *&v237 = v233;
    *v123 = 136380931;
    sub_1C44CD238(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
    LODWORD(v232) = v120;
    v124 = v118;
    v125 = sub_1C4F02858();
    v127 = v126;
    v128 = v220;
    v215 = *(v113 + 8);
    (v215)(v122, v226);
    v129 = sub_1C441D828(v125, v127, &v237);
    v115 = v226;

    *(v123 + 4) = v129;
    *(v123 + 12) = 2080;
    v130 = v201;
    *(v123 + 14) = sub_1C441D828(v201, v124, &v237);
    _os_log_impl(&dword_1C43F8000, v119, v232, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s", v123, 0x16u);
    v131 = v233;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v131, -1, -1);
    MEMORY[0x1C6942830](v123, -1, -1);

    v132 = v224;
    v133 = v230;
    v134 = v223;
  }

  else
  {

    v215 = *(v113 + 8);
    (v215)(v116, v115);
    v132 = v224;
    v133 = v230;
    v134 = v223;
    v128 = a9;
    v130 = v201;
  }

  v143 = v217;
  (v234)(v217, v231, v115);
  v144 = v216;
  sub_1C4EFEBB8();
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C448D088();
  sub_1C4EF9AE8();
  v145 = &v143[v144[8]];
  v146 = v202;
  *v145 = v130;
  v145[1] = v146;
  v147 = &v143[v144[10]];
  *v147 = v134;
  v147[1] = v132;
  *&v143[v144[11]] = v148;
  v143[v144[12]] = v128;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v150 = v149;
  v152 = *(v149 + 16);
  v151 = *(v149 + 24);
  if (v152 >= v151 >> 1)
  {
    sub_1C44C9240(v151 > 1, v152 + 1, 1, v149);
    v150 = v191;
  }

  *(v150 + 16) = v152 + 1;
  sub_1C44DD800();
  v241 = v150;
  v153 = *(v219 + 16);
  v216 = v150;
  if (v153)
  {
    v154 = (v219 + 32);
    v155 = MEMORY[0x1E69E7CC0];
    v233 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v234 = v155;
      v156 = v154[1];
      v237 = *v154;
      v238 = v156;
      *v239 = v154[2];
      *&v239[9] = *(v154 + 41);
      v157 = v237;
      v240 = v237;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45D17A0(&v237, &v235);
      v158 = [v133 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v158)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v235, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v159 = v157 == 0x696669746E656469 && *(&v157 + 1) == 0xEA00000000007265;
        if (v159 || (sub_1C4F02938() & 1) != 0)
        {
          LODWORD(v232) = v239[24];
          v161 = *&v239[8];
          v160 = *&v239[16];
          v225 = *v239;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v221 = sub_1C4EFF048();
          v163 = v162;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(&v237);
          v164 = v233;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458A900();
            v164 = v176;
          }

          v166 = *(v164 + 16);
          v165 = *(v164 + 24);
          v233 = v164;
          if (v166 >= v165 >> 1)
          {
            sub_1C458A900();
            v233 = v177;
          }

          v167 = v233;
          *(v233 + 16) = v166 + 1;
          v168 = v167 + (v166 << 6);
          *(v168 + 32) = v157;
          *(v168 + 48) = v221;
          *(v168 + 56) = v163;
          *(v168 + 64) = v225;
          *(v168 + 72) = v161;
          *(v168 + 80) = v160;
          *(v168 + 88) = v232;
          v133 = v230;
          v155 = v234;
          goto LABEL_83;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458A900();
          v233 = v180;
        }

        v155 = v234;
        v171 = *(v233 + 16);
        if (v171 >= *(v233 + 24) >> 1)
        {
          sub_1C458A900();
          v233 = v181;
        }

        v172 = v233;
        *(v233 + 16) = v171 + 1;
        v170 = (v172 + (v171 << 6));
      }

      else
      {
        v235 = 0u;
        v236 = 0u;
        sub_1C4420C3C(&v235, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v155 = v234;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458A900();
          v155 = v178;
        }

        v169 = *(v155 + 2);
        if (v169 >= *(v155 + 3) >> 1)
        {
          sub_1C458A900();
          v155 = v179;
        }

        *(v155 + 2) = v169 + 1;
        v170 = &v155[64 * v169];
      }

      v173 = v237;
      v174 = v238;
      v175 = *v239;
      *(v170 + 73) = *&v239[9];
      *(v170 + 3) = v174;
      *(v170 + 4) = v175;
      *(v170 + 2) = v173;
LABEL_83:
      v154 += 4;
      if (!--v153)
      {
        goto LABEL_88;
      }
    }
  }

  v233 = MEMORY[0x1E69E7CC0];
LABEL_88:
  v184 = v231;
  v185 = v199;
  v186 = v214;
  sub_1C4B1E304();
  if (v186)
  {

    (v215)(v184, v226);
    v198(v229, v203);
  }

  else
  {
    v188 = v187;

    sub_1C49D3614(v188);
    sub_1C4B1E304();
    v190 = v189;

    sub_1C49D3614(v190);

    (v215)(v231, v226);
    v198(v229, v203);
  }
}

void sub_1C4B275D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v284 = v22;
  v25 = v21;
  v289 = v26;
  v298 = v27;
  v29 = v28;
  v294 = v30;
  v274 = v31;
  v33 = v32;
  v292 = v34;
  v296 = v35;
  v286 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v288 = v36;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD2D8();
  v287 = v38;
  sub_1C43FBE44();
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v280 = v40;
  v281 = v39;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD2D8();
  v278 = v41;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v282 = v43;
  v283 = v42;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  v277 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  v279 = v46;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v290 = v48;
  v291 = v47;
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  v51 = v50 - v49;
  v297 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v293 = v52;
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBFDC();
  v285 = v54;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  v276 = v56;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FD230();
  v302 = v58;
  v59 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v59);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v60);
  v61 = sub_1C447CE30();
  sub_1C43FCDF8();
  v299 = v62;
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBFDC();
  v275 = v64;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v261 - v66;
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FD230();
  v300 = v69;
  sub_1C442023C();
  v303 = v70;
  v304 = v71;
  v72 = sub_1C4F029C8();
  v301 = v33;
  v73 = [v33 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  v295 = v29;
  if (v73)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4B2AAF8();
  }

  sub_1C4B2A930();
  if (!v74)
  {
    sub_1C4420C3C(&v305, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  sub_1C4B2A2B4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_1C448824C();
    if (!v226)
    {
      sub_1C4419274();
      swift_once();
    }

    v80 = sub_1C4F00978();
    sub_1C43FCEE8(v80, qword_1EDE2DE10);
    v318[0] = sub_1C4B2A940();
    a10 = *(v21 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443468(v318);
    sub_1C4405BE0();
    sub_1C44DDE2C();
    v81 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44036EC();
    sub_1C4400D10();
    sub_1C4420C3C(v82, v83, v84);
    sub_1C4B2AAB4(&a10);
    if (sub_1C443E1FC())
    {
      sub_1C43FECF0();
      v85 = swift_slowAlloc();
      sub_1C43FEC60();
      v86 = swift_slowAlloc();
      sub_1C4488B2C(v86);
      *(v85 + 4) = sub_1C44BBEBC(4.8149e-34);
      sub_1C4403218(&dword_1C43F8000, v87, v88, "Mapping error, nested entity missing metadata in map, %s");
      sub_1C440962C(&qword_1C4F0FF50);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C45CF650();
    sub_1C441C114();
    v89 = swift_allocError();
    sub_1C44060DC(v89, v90);
    swift_willThrow();
    goto LABEL_41;
  }

  v272 = v61;
  v75 = v308;
  sub_1C4414EA8();
  v303 = v76;
  v304 = v77;
  v78 = sub_1C4F029C8();
  v273 = v75;
  v79 = [v75 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v79)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4B2AAF8();
  }

  sub_1C4B2A930();
  if (!v91)
  {
    sub_1C4420C3C(&v305, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    sub_1C448824C();
    if (!v226)
    {
      sub_1C4419274();
      swift_once();
    }

    v93 = sub_1C4F00978();
    sub_1C43FCEE8(v93, qword_1EDE2DE10);
    v317 = sub_1C4B2A940();
    v316 = *(v21 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443468(&v317);
    sub_1C4405BE0();
    sub_1C44DDE2C();
    v94 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44036EC();
    sub_1C4400D10();
    sub_1C4420C3C(v95, v96, v97);
    sub_1C4B2AAB4(&v316);
    if (sub_1C443E1FC())
    {
      sub_1C43FECF0();
      v98 = swift_slowAlloc();
      sub_1C43FEC60();
      v99 = swift_slowAlloc();
      sub_1C4488B2C(v99);
      *(v98 + 4) = sub_1C44BBEBC(4.8149e-34);
      sub_1C4403218(&dword_1C43F8000, v100, v101, "Mapping error missing property map for  %s");
      sub_1C440962C(&qword_1C4F0FF50);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C45CF650();
    sub_1C441C114();
    v102 = swift_allocError();
    sub_1C44060DC(v102, v103);
    swift_willThrow();
    v104 = v273;
    goto LABEL_40;
  }

  v271 = v308;
  v303 = 1701869940;
  v304 = 0xE400000000000000;
  v92 = [v273 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v92)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C4B2AAF8();
  }

  v105 = v272;
  sub_1C4B2A930();
  if (!v106)
  {
    sub_1C4420C3C(&v305, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_34;
  }

  if ((sub_1C445FDA0() & 1) == 0)
  {
LABEL_34:
    sub_1C448824C();
    if (!v226)
    {
      sub_1C4419274();
      swift_once();
    }

    v118 = sub_1C4F00978();
    sub_1C43FCEE8(v118, qword_1EDE2DE10);
    v315 = sub_1C4B2A940();
    v314 = *(v21 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443468(&v315);
    sub_1C4405BE0();
    sub_1C44DDE2C();
    v109 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44036EC();
    sub_1C4400D10();
    sub_1C4420C3C(v119, v120, v121);
    sub_1C4B2AAB4(&v314);
    if (!sub_1C443E1FC())
    {
      goto LABEL_39;
    }

    sub_1C43FECF0();
    v122 = swift_slowAlloc();
    sub_1C43FEC60();
    v123 = swift_slowAlloc();
    sub_1C4488B2C(v123);
    *(v122 + 4) = sub_1C44BBEBC(4.8149e-34);
    v117 = "Mapping error missing type for  %s";
    goto LABEL_38;
  }

  v107 = v308;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFD2E8();
  if (sub_1C44157D4(v21, 1, v105) == 1)
  {

    sub_1C4420C3C(v21, &qword_1EC0B8568, &unk_1C4F319B0);
    sub_1C448824C();
    if (!v226)
    {
      sub_1C4419274();
      swift_once();
    }

    v108 = sub_1C4F00978();
    sub_1C43FCEE8(v108, qword_1EDE2DE10);
    v313 = sub_1C4B2A940();
    v312 = *(v21 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443468(&v313);
    sub_1C4405BE0();
    sub_1C44DDE2C();
    v109 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44036EC();
    sub_1C4400D10();
    sub_1C4420C3C(v110, v111, v112);
    sub_1C4B2AAB4(&v312);
    if (!sub_1C443E1FC())
    {
      goto LABEL_39;
    }

    sub_1C43FECF0();
    v113 = swift_slowAlloc();
    sub_1C43FEC60();
    v114 = swift_slowAlloc();
    sub_1C4488B2C(v114);
    *(v113 + 4) = sub_1C44BBEBC(4.8149e-34);
    v117 = "Mapping error type is not recognized as an EntityClass %s";
LABEL_38:
    sub_1C4403218(&dword_1C43F8000, v115, v116, v117);
    sub_1C440962C(&qword_1C4F0FF50);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
LABEL_39:

    sub_1C45CF650();
    sub_1C441C114();
    v124 = swift_allocError();
    sub_1C44060DC(v124, v125);
    swift_willThrow();

    v104 = v271;
LABEL_40:

    goto LABEL_41;
  }

  v270 = v107 >> 64;
  v266 = v107;
  v126 = v299;
  (*(v299 + 32))(v300, v21, v105);
  sub_1C448824C();
  if (!v226)
  {
    sub_1C4419274();
    swift_once();
  }

  v127 = sub_1C4F00978();
  sub_1C43FCEE8(v127, qword_1EDE2DE10);
  v128 = sub_1C4404DC8();
  v264 = v130;
  v265 = v129;
  (v130)(v128);
  v131 = v292;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v269 = v21;
  v132 = sub_1C4F00968();
  v133 = sub_1C4F01CB8();

  if (os_log_type_enabled(v132, v133))
  {
    sub_1C4480408();
    v134 = swift_slowAlloc();
    v263 = v133;
    v135 = v134;
    sub_1C443FD74();
    v267 = swift_slowAlloc();
    *&v305 = v267;
    *v135 = 136381187;
    *(v135 + 4) = sub_1C441D828(v296, v131, &v305);
    *(v135 + 12) = 2080;
    sub_1C4407A84();
    sub_1C44CD238(v136, v137, MEMORY[0x1E69A92F8]);
    v262 = v132;
    v138 = sub_1C4F02858();
    v139 = v105;
    v141 = v140;
    v268 = *(v126 + 8);
    v268(v67, v139);
    sub_1C441D828(v138, v141, &v305);
    sub_1C441D28C();

    *(v135 + 14) = v138;
    v142 = v296;
    *(v135 + 22) = 1024;
    *(v135 + 24) = 0;
    v143 = v262;
    _os_log_impl(&dword_1C43F8000, v262, v263, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v135, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v144 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v144);
  }

  else
  {

    v268 = *(v126 + 8);
    v268(v67, v105);
    v142 = v296;
  }

  v145 = *v298;
  v146 = v298[1];
  *&v305 = v142;
  *(&v305 + 1) = v131;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v145, v146);
  sub_1C4F01178();
  sub_1C4F01148();
  v148 = v147;
  (*(v290 + 8))(v51, v291);
  if (v148 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v149 = sub_1C4F00968();
    v150 = sub_1C4F01CD8();

    if (sub_1C441ED60())
    {
      sub_1C43FECF0();
      v151 = swift_slowAlloc();
      sub_1C43FEC60();
      v152 = swift_slowAlloc();
      *&v305 = v152;
      *v151 = 136380675;
      v153 = sub_1C43FD574();
      v156 = sub_1C441D828(v153, v154, v155);

      *(v151 + 4) = v156;
      _os_log_impl(&dword_1C43F8000, v149, v150, "Source: failed to encode identifier as UTF8 data: %{private}s", v151, 0xCu);
      sub_1C440962C(v152);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v157 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v157);
    }

    else
    {
    }

    v311 = sub_1C4B2A940();
    v310 = *(v25 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443468(&v311);
    sub_1C4405BE0();
    sub_1C44DDE2C();
    v194 = sub_1C4F00968();
    sub_1C4F01CD8();
    sub_1C44036EC();
    sub_1C4400D10();
    sub_1C4420C3C(v195, v196, v197);
    sub_1C4B2AAB4(&v310);
    if (sub_1C443E1FC())
    {
      sub_1C43FECF0();
      v198 = swift_slowAlloc();
      sub_1C43FEC60();
      v199 = swift_slowAlloc();
      sub_1C4488B2C(v199);
      *(v198 + 4) = sub_1C44BBEBC(4.8149e-34);
      sub_1C4403218(&dword_1C43F8000, v200, v201, "Mapping error failed to generate EntityIdentifier for %s");
      sub_1C440962C(&qword_1C4F0FF50);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v202 = v272;
    sub_1C45CF650();
    sub_1C441C114();
    swift_allocError();
    sub_1C441B4F8(v203, 5);
    swift_willThrow();

    v268(v300, v202);
    goto LABEL_41;
  }

  LODWORD(v267) = a21;

  sub_1C442D2CC();
  sub_1C44CD238(v158, v159, MEMORY[0x1E6966618]);
  v160 = v278;
  v161 = v281;
  sub_1C4F00DB8();
  v162 = sub_1C440A6C4();
  sub_1C44344B8(v162, v163);
  v164 = sub_1C440A6C4();
  v165 = v284;
  sub_1C4498FD8(v164, v166, v160);
  v284 = v165;
  v167 = sub_1C440A6C4();
  sub_1C441DFEC(v167, v168);
  v169 = v279;
  sub_1C4F00DA8();
  (*(v280 + 8))(v160, v161);
  v264(v275, v300, v272);
  v171 = v282;
  v170 = v283;
  (*(v282 + 16))(v277, v169, v283);
  v172 = v276;
  sub_1C4EFF028();
  v173 = sub_1C440A6C4();
  sub_1C441DFEC(v173, v174);
  (*(v171 + 8))(v169, v170);
  v175 = v293;
  v176 = v302;
  v177 = v297;
  (*(v293 + 32))(v302, v172, v297);
  v178 = v285;
  v296 = *(v175 + 16);
  (v296)(v285, v176, v177);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v179 = v269;
  v180 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C4404CE0();

  v181 = sub_1C4B2AAD8();
  if (os_log_type_enabled(v181, v182))
  {
    v183 = sub_1C440F274();
    sub_1C443FD74();
    *&v305 = swift_slowAlloc();
    *v183 = 136380931;
    sub_1C4417750();
    sub_1C44CD238(v184, v185, MEMORY[0x1E69A9840]);
    LODWORD(v292) = v179;
    v186 = sub_1C4F02858();
    v188 = v187;
    v285 = *(v175 + 8);
    v285(v178, v297);
    v189 = sub_1C441D828(v186, v188, &v305);

    *(v183 + 4) = v189;
    *(v183 + 12) = 2080;
    v190 = v266;
    *(v183 + 14) = sub_1C441D828(v266, v270, &v305);
    _os_log_impl(&dword_1C43F8000, v180, v292, "StandardEntityMapper: createNestedEntityRows: %{private}s isA %s", v183, 0x16u);
    swift_arrayDestroy();
    v177 = v297;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v191 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v191);

    v192 = v294;
    v193 = v295;
  }

  else
  {

    v285 = *(v175 + 8);
    v285(v178, v177);
    v192 = v294;
    v193 = v295;
    v190 = v266;
  }

  v204 = v287;
  (v296)(v287, v302, v177);
  v205 = v286;
  sub_1C4EFEBB8();
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C44036D4();
  sub_1C448D088();
  sub_1C4EF9AE8();
  v206 = (v204 + v205[8]);
  v207 = v270;
  *v206 = v190;
  v206[1] = v207;
  v208 = (v204 + v205[10]);
  *v208 = v192;
  v208[1] = v193;
  *(v204 + v205[11]) = v209;
  *(v204 + v205[12]) = v267;
  v210 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v210, v211, v212, MEMORY[0x1E69E7CC0]);
  v214 = v213;
  v215 = *(v213 + 16);
  v216 = v215 + 1;
  v217 = v272;
  if (v215 >= *(v213 + 24) >> 1)
  {
    sub_1C4460700();
    sub_1C44C9240(v257, v258, v259, v214);
    v214 = v260;
  }

  v218 = v301;
  *(v214 + 16) = v216;
  sub_1C43FBF6C();
  sub_1C43FDDE8();
  sub_1C44DD800();
  v287 = v214;
  v309 = v214;
  v219 = *(v289 + 16);
  if (v219)
  {
    v220 = (v289 + 32);
    v221 = MEMORY[0x1E69E7CC0];
    v296 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v222 = v220[1];
      v305 = *v220;
      v306 = v222;
      v307[0] = v220[2];
      *(v307 + 9) = *(v220 + 41);
      v223 = v305;
      v308 = v305;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45D17A0(&v305, &v303);
      v224 = [v218 __swift_objectForKeyedSubscript_];
      sub_1C441D28C();
      swift_unknownObjectRelease();
      if (v216)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v303, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        sub_1C4462050();
        v226 = v223 == v225 && *(&v223 + 1) == 0xEA00000000007265;
        if (v226 || (sub_1C441D39C(v223, *(&v223 + 1)) & 1) != 0)
        {
          LODWORD(v292) = BYTE8(v307[1]);
          v228 = *(&v307[0] + 1);
          v227 = *&v307[1];
          v290 = *&v307[0];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v229 = sub_1C4EFF048();
          v288 = v230;
          v289 = v229;
          v291 = v227;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(&v305);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C458A900();
            v221 = v244;
          }

          v216 = *(v221 + 16);
          v231 = v221;
          if (v216 >= *(v221 + 24) >> 1)
          {
            sub_1C458A900();
            v231 = v245;
          }

          v221 = v231;
          *(v231 + 16) = v216 + 1;
          v232 = v231 + (v216 << 6);
          *(v232 + 32) = v223;
          v233 = v288;
          *(v232 + 48) = v289;
          *(v232 + 56) = v233;
          v234 = v291;
          *(v232 + 64) = v290;
          *(v232 + 72) = v228;
          *(v232 + 80) = v234;
          *(v232 + 88) = v292;
          v217 = v272;
          v218 = v301;
          goto LABEL_83;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A900();
          v221 = v248;
        }

        v217 = v272;
        v240 = *(v221 + 16);
        v216 = v240 + 1;
        if (v240 >= *(v221 + 24) >> 1)
        {
          sub_1C4460700();
          sub_1C458A900();
          v221 = v249;
        }

        *(v221 + 16) = v216;
        v239 = (v221 + (v240 << 6));
      }

      else
      {
        sub_1C4B2AAF8();
        sub_1C4420C3C(&v303, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v235 = v296;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A900();
          v235 = v246;
        }

        v217 = v272;
        v237 = *(v235 + 16);
        v236 = *(v235 + 24);
        v296 = v235;
        v216 = v237 + 1;
        if (v237 >= v236 >> 1)
        {
          sub_1C4460700();
          sub_1C458A900();
          v296 = v247;
        }

        v238 = v296;
        *(v296 + 16) = v216;
        v239 = (v238 + (v237 << 6));
      }

      v241 = v305;
      v242 = v306;
      v243 = v307[0];
      *(v239 + 73) = *(v307 + 9);
      v239[3] = v242;
      v239[4] = v243;
      v239[2] = v241;
LABEL_83:
      v220 += 4;
      if (!--v219)
      {
        goto LABEL_86;
      }
    }
  }

  v296 = MEMORY[0x1E69E7CC0];
LABEL_86:
  v250 = v302;
  v251 = v271;
  v252 = v284;
  sub_1C4B1E304();
  if (v252)
  {

    v285(v250, v297);
    v268(v300, v217);
  }

  else
  {
    v254 = v253;

    sub_1C49D3614(v254);
    sub_1C4B1E304();
    v256 = v255;

    sub_1C49D3614(v256);

    v285(v302, v297);
    v268(v300, v217);
  }

LABEL_41:
  sub_1C43FBC80();
}
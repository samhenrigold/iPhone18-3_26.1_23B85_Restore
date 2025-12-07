void *sub_1D6B19314(__n128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 32);
  sub_1D6B19668(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7279960;
  v9 = a1[7];
  v48 = a1[6];
  v49 = v9;
  v50 = a1[8];
  v51 = a1[9].n128_u64[0];
  v10 = a1[3];
  v44 = a1[2];
  v45 = v10;
  v11 = a1[5];
  v46 = a1[4];
  v47 = v11;
  v12 = a1[1];
  v42 = *a1;
  v43 = v12;
  *&v58 = v3;
  *(&v58 + 1) = v4;
  *&v59 = v5;
  *(&v59 + 1) = v6;
  LOBYTE(v60) = v7;
  sub_1D5EC0280(&v42, &v58, v52);
  *(v8 + 56) = &type metadata for FormatInspectionGroup;
  *(v8 + 64) = &off_1F518B2C0;
  v13 = swift_allocObject();
  *(v8 + 32) = v13;
  v14 = v52[1];
  *(v13 + 16) = v52[0];
  *(v13 + 32) = v14;
  *(v13 + 48) = v53;
  v15 = a1[7];
  v48 = a1[6];
  v49 = v15;
  v50 = a1[8];
  v51 = a1[9].n128_u64[0];
  v16 = a1[3];
  v44 = a1[2];
  v45 = v16;
  v17 = a1[5];
  v46 = a1[4];
  v47 = v17;
  v18 = a1[1];
  v42 = *a1;
  v43 = v18;
  *&v58 = v3;
  *(&v58 + 1) = v4;
  *&v59 = v5;
  *(&v59 + 1) = v6;
  LOBYTE(v60) = v7;
  sub_1D6ACCDE4(&v42, &v58, v54);
  *(v8 + 96) = &type metadata for FormatInspectionGroup;
  *(v8 + 104) = &off_1F518B2C0;
  v19 = swift_allocObject();
  *(v8 + 72) = v19;
  v20 = v54[1];
  *(v19 + 16) = v54[0];
  *(v19 + 32) = v20;
  *(v19 + 48) = v55;
  v21 = a1[7];
  v48 = a1[6];
  v49 = v21;
  v50 = a1[8];
  v51 = a1[9].n128_u64[0];
  v22 = a1[3];
  v44 = a1[2];
  v45 = v22;
  v23 = a1[5];
  v46 = a1[4];
  v47 = v23;
  v24 = a1[1];
  v42 = *a1;
  v43 = v24;
  *&v58 = v3;
  *(&v58 + 1) = v4;
  *&v59 = v5;
  *(&v59 + 1) = v6;
  LOBYTE(v60) = v7;
  sub_1D6DFD684(&v42, &v58, v56);
  *(v8 + 136) = &type metadata for FormatInspectionGroup;
  *(v8 + 144) = &off_1F518B2C0;
  v25 = swift_allocObject();
  *(v8 + 112) = v25;
  v26 = v56[1];
  *(v25 + 16) = v56[0];
  *(v25 + 32) = v26;
  *(v25 + 48) = v57;
  v27 = a1[7];
  v48 = a1[6];
  v49 = v27;
  v50 = a1[8];
  v51 = a1[9].n128_u64[0];
  v28 = a1[3];
  v44 = a1[2];
  v45 = v28;
  v29 = a1[5];
  v46 = a1[4];
  v47 = v29;
  v30 = a1[1];
  v42 = *a1;
  v43 = v30;
  v37 = v3;
  v38 = v4;
  v39 = v5;
  v40 = v6;
  v41 = v7;
  sub_1D67D0654(&v42, &v37, &v58);
  *(v8 + 176) = &type metadata for FormatInspectionGroup;
  *(v8 + 184) = &off_1F518B2C0;
  v31 = swift_allocObject();
  *(v8 + 152) = v31;
  v32 = v59;
  *(v31 + 16) = v58;
  *(v31 + 32) = v32;
  *(v31 + 48) = v60;
  v37 = v3;
  v38 = v4;
  v39 = v5;
  v40 = v6;
  v41 = v7;
  sub_1D70B3348(&v37, &v42);
  *(v8 + 216) = &type metadata for FormatInspectionGroup;
  *(v8 + 224) = &off_1F518B2C0;
  v33 = swift_allocObject();
  *(v8 + 192) = v33;
  v34 = v43;
  *(v33 + 16) = v42;
  *(v33 + 32) = v34;
  *(v33 + 48) = v44.n128_u64[0];
  v35 = sub_1D7073500(v8);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v35;
}

void sub_1D6B19668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t FormatContentSubgroup.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B5C6F0(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - v5;
  v7 = type metadata accessor for FormatContentSubgroup(0);
  sub_1D6B24500(v1 + *(v7 + 40), v6, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  return sub_1D6B1FAA8(v6, a1, type metadata accessor for FormatMetadata);
}

uint64_t sub_1D6B197D8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v34 - v10;
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v34 - v19;
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B1FA40(v2, v24, sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5D57EEC(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
      sub_1D6B1FAA8(&v24[*(v26 + 48)], a1, type metadata accessor for FormatMetadata);
      return sub_1D6B23C38(v24, type metadata accessor for FormatPackage);
    }

    else
    {
      sub_1D725BD3C();
      v30 = *(v13 + 48);
      if (v30(v11, 1, v12) == 1)
      {
        sub_1D725BCDC();
        if (v30(v11, 1, v12) != 1)
        {
          sub_1D6B23BC8(v11, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (*(v13 + 32))(v20, v11, v12);
      }

      sub_1D725BD3C();
      if (v30(v7, 1, v12) == 1)
      {
        sub_1D725BCCC();
        if (v30(v7, 1, v12) != 1)
        {
          sub_1D6B23BC8(v7, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (*(v13 + 32))(v16, v7, v12);
      }

      v31 = type metadata accessor for FormatMetadata(0);
      sub_1D725BD3C();
      *a1 = 0;
      *(a1 + 1) = 0;
      v32 = *(v13 + 32);
      v32(&a1[v31[5]], v20, v12);
      result = (v32)(&a1[v31[6]], v16, v12);
      v33 = MEMORY[0x1E69E7CD0];
      *&a1[v31[8]] = MEMORY[0x1E69E7CD0];
      *&a1[v31[9]] = v33;
      *&a1[v31[10]] = v33;
      *&a1[v31[11]] = v33;
    }
  }

  else
  {
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    sub_1D6B1FAA8(&v24[*(v28 + 48)], a1, type metadata accessor for FormatMetadata);
    v29 = sub_1D72585BC();
    return (*(*(v29 - 8) + 8))(v24, v29);
  }

  return result;
}

uint64_t FormatContentSubgroup.contents.getter()
{
  type metadata accessor for FormatContentSubgroup(0);
}

uint64_t FormatContentSubgroup.properties.getter()
{
  type metadata accessor for FormatContentSubgroup(0);
}

uint64_t FormatContentSubgroup.selectors.getter()
{
  type metadata accessor for FormatContentSubgroup(0);
}

uint64_t FormatContentSubgroup.copy(identifier:layouts:properties:selectors:contents:sections:placeholders:metadata:filters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v68 = a8;
  v69 = a4;
  v73 = a7;
  v70 = a5;
  v71 = a6;
  v67 = a1;
  sub_1D5B5C6F0(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v61 = &v60 - v17;
  v18 = MEMORY[0x1E69E6720];
  sub_1D6B1F9DC(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v60 - v21;
  v65 = type metadata accessor for FormatMetadata(0);
  v23 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v24);
  v72 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B1F9DC(0, &qword_1EDF07090, sub_1D5B5971C, v18);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v60 - v28;
  sub_1D5B5971C(0);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v66 = a2;
  }

  else
  {
    v36 = *v11;
    v66 = v11[1];
    v67 = v36;
  }

  sub_1D6B24404(a3, v29, &qword_1EDF07090, sub_1D5B5971C);
  v37 = *(v32 + 48);
  if (v37(v29, 1, v31) == 1)
  {
    v38 = type metadata accessor for FormatContentSubgroup(0);
    sub_1D6B1FA40(v11 + *(v38 + 20), v35, sub_1D5B5971C);
    v39 = v37(v29, 1, v31);

    v40 = v39 == 1;
    v41 = v73;
    v42 = v70;
    if (!v40)
    {
      sub_1D6B23BC8(v29, &qword_1EDF07090, sub_1D5B5971C);
    }
  }

  else
  {
    sub_1D6B1FAA8(v29, v35, sub_1D5B5971C);

    v41 = v73;
    v42 = v70;
  }

  v43 = v71;
  if (v69)
  {
    v64 = v69;
    if (v42)
    {
      goto LABEL_10;
    }

LABEL_13:
    v63 = *(v11 + *(type metadata accessor for FormatContentSubgroup(0) + 28));

    v44 = v68;
    if (v43)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v64 = *(v11 + *(type metadata accessor for FormatContentSubgroup(0) + 24));

  if (!v42)
  {
    goto LABEL_13;
  }

LABEL_10:
  v63 = v42;
  v44 = v68;
  if (v43)
  {
LABEL_11:
    v62 = v43;
    goto LABEL_15;
  }

LABEL_14:
  v62 = *(v11 + *(type metadata accessor for FormatContentSubgroup(0) + 32));

LABEL_15:
  v45 = v65;
  if (v41)
  {
    if (v44)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v41 = *(v11 + *(type metadata accessor for FormatContentSubgroup(0) + 48));

    if (v44)
    {
      goto LABEL_17;
    }
  }

  v44 = *(v11 + *(type metadata accessor for FormatContentSubgroup(0) + 36));

LABEL_17:
  sub_1D6B24404(a10, v22, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  v46 = *(v23 + 48);
  v47 = v46(v22, 1, v45);
  v60 = v11;
  if (v47 == 1)
  {
    v48 = v11 + *(type metadata accessor for FormatContentSubgroup(0) + 40);
    v49 = v44;
    v50 = v41;
    v51 = v35;
    v52 = v45;
    v53 = v61;
    sub_1D6B24500(v48, v61, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
    sub_1D6B1FAA8(v53, v72, type metadata accessor for FormatMetadata);
    v54 = v52;
    v35 = v51;
    v41 = v50;
    v44 = v49;
    LODWORD(v49) = v46(v22, 1, v54);

    if (v49 != 1)
    {
      sub_1D6B23BC8(v22, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
    }

    if (a11)
    {
      goto LABEL_21;
    }

LABEL_23:
    v55 = *(v60 + *(type metadata accessor for FormatContentSubgroup(0) + 44));

    goto LABEL_24;
  }

  sub_1D6B1FAA8(v22, v72, type metadata accessor for FormatMetadata);

  if (!a11)
  {
    goto LABEL_23;
  }

LABEL_21:
  v55 = a11;
LABEL_24:
  v56 = v66;
  *a9 = v67;
  a9[1] = v56;
  v57 = type metadata accessor for FormatContentSubgroup(0);
  sub_1D6B1FAA8(v35, a9 + v57[5], sub_1D5B5971C);
  v58 = v63;
  *(a9 + v57[6]) = v64;
  *(a9 + v57[7]) = v58;
  *(a9 + v57[9]) = v44;
  *(a9 + v57[8]) = v62;
  *(a9 + v57[12]) = v41;
  sub_1D6B1FAA8(v72, a9 + v57[10], type metadata accessor for FormatMetadata);
  *(a9 + v57[11]) = v55;
}

void FormatContentSubgroup.contents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t sub_1D6B1A454(uint64_t a1, void *a2)
{
  v58 = a1;
  v59 = a2;
  v2 = type metadata accessor for FormatPackage(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v54 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v55 = (&v54 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v54 - v17);
  v19 = sub_1D72585BC();
  v57 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v54 - v29;
  sub_1D6B24574(0, &qword_1EC889AE8, sub_1D5C2AB28);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v54 - v33;
  v36 = &v54 + *(v35 + 56) - v33;
  sub_1D6B1FA40(v58, &v54 - v33, sub_1D5C2AB28);
  sub_1D6B1FA40(v59, v36, sub_1D5C2AB28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v59 = v14;
    v46 = v57;
    sub_1D6B1FA40(v34, v30, sub_1D5C2AB28);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v46 + 32))(v22, v36, v19);
      sub_1D6B1FAA8(&v30[v48], v18, type metadata accessor for FormatMetadata);
      v49 = &v36[v48];
      v50 = v59;
      sub_1D6B1FAA8(v49, v59, type metadata accessor for FormatMetadata);
      v51 = sub_1D72584CC();
      v52 = *(v46 + 8);
      v52(v30, v19);
      if (v51)
      {
        v45 = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(v18, v50);
        sub_1D6B23C38(v50, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v18, type metadata accessor for FormatMetadata);
        v52(v22, v19);
        goto LABEL_14;
      }

      sub_1D6B23C38(v50, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v18, type metadata accessor for FormatMetadata);
      v52(v22, v19);
      goto LABEL_17;
    }

    sub_1D6B23C38(&v30[v48], type metadata accessor for FormatMetadata);
    (*(v46 + 8))(v30, v19);
LABEL_11:
    sub_1D6B245D4(v34, &qword_1EC889AE8, sub_1D5C2AB28);
LABEL_18:
    v45 = 0;
    return v45 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B1FA40(v34, v26, sub_1D5C2AB28);
    sub_1D5D57EEC(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v39 = *(v38 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = v56;
      sub_1D6B1FAA8(v36, v56, type metadata accessor for FormatPackage);
      v41 = v55;
      sub_1D6B1FAA8(&v26[v39], v55, type metadata accessor for FormatMetadata);
      v42 = &v36[v39];
      v43 = v54;
      sub_1D6B1FAA8(v42, v54, type metadata accessor for FormatMetadata);
      v44 = static FormatPackage.== infix(_:_:)(v26, v40);
      sub_1D6B23C38(v26, type metadata accessor for FormatPackage);
      if (v44)
      {
        v45 = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(v41, v43);
        sub_1D6B23C38(v43, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v41, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v40, type metadata accessor for FormatPackage);
LABEL_14:
        sub_1D6B23C38(v34, sub_1D5C2AB28);
        return v45 & 1;
      }

      sub_1D6B23C38(v43, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v41, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v40, type metadata accessor for FormatPackage);
LABEL_17:
      sub_1D6B23C38(v34, sub_1D5C2AB28);
      goto LABEL_18;
    }

    sub_1D6B23C38(&v26[v39], type metadata accessor for FormatMetadata);
    sub_1D6B23C38(v26, type metadata accessor for FormatPackage);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B23C38(v34, sub_1D5C2AB28);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1D6B1AB54(uint64_t a1, char *a2)
{
  v61 = a1;
  v62 = a2;
  v2 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v55 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v56 = (&v54 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v60 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v59 = &v54 - v13;
  v14 = sub_1D72585BC();
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v54 - v24;
  sub_1D6B24484(0, &qword_1EC892040, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v54 - v28;
  v31 = &v54 + *(v30 + 56) - v28;
  sub_1D6B24500(v61, &v54 - v28, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v62, v31, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v59;
    v44 = v60;
    v46 = v57;
    v45 = v58;
    sub_1D6B24500(v29, v25, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v62 = v29;
      (*(v46 + 32))(v17, v31, v45);
      v49 = v43;
      sub_1D6B1FAA8(&v25[v48], v43, type metadata accessor for FormatMetadata);
      sub_1D6B1FAA8(&v31[v48], v44, type metadata accessor for FormatMetadata);
      v50 = sub_1D72584CC();
      v51 = *(v46 + 8);
      v51(v25, v45);
      if (v50)
      {
        v42 = static FormatMetadata.== infix(_:_:)(v49, v44);
        sub_1D6B23C38(v44, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v49, type metadata accessor for FormatMetadata);
        v51(v17, v45);
        sub_1D6B238FC(v62, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
        return v42 & 1;
      }

      sub_1D6B23C38(v44, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v49, type metadata accessor for FormatMetadata);
      v51(v17, v45);
      v52 = v62;
      goto LABEL_16;
    }

    sub_1D6B23C38(&v25[v48], type metadata accessor for FormatMetadata);
    (*(v46 + 8))(v25, v45);
LABEL_11:
    sub_1D6B24630(v29, &qword_1EC892040, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization);
LABEL_17:
    v42 = 0;
    return v42 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D6B238FC(v29, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
      v42 = 1;
      return v42 & 1;
    }

    goto LABEL_11;
  }

  sub_1D6B24500(v29, v21, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  sub_1D5EA17B4(0, &qword_1EDF2DC48, &type metadata for FormatLocalization);
  v34 = *(v33 + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D6B23C38(v21 + v34, type metadata accessor for FormatMetadata);

    goto LABEL_11;
  }

  v35 = v29;
  v36 = *(v31 + 1);
  v37 = *(v31 + 6);
  v63[0] = *v31;
  v63[1] = v36;
  v38 = *(v31 + 2);
  v64 = *(v31 + 1);
  v65 = v38;
  v66 = v37;
  v39 = v56;
  sub_1D6B1FAA8(v21 + v34, v56, type metadata accessor for FormatMetadata);
  v40 = v55;
  sub_1D6B1FAA8(&v31[v34], v55, type metadata accessor for FormatMetadata);
  v41 = _s8NewsFeed18FormatLocalizationV2eeoiySbAC_ACtFZ_0(v21, v63);

  if ((v41 & 1) == 0)
  {
    sub_1D6B23C38(v40, type metadata accessor for FormatMetadata);
    sub_1D6B23C38(v39, type metadata accessor for FormatMetadata);

    v52 = v35;
LABEL_16:
    sub_1D6B238FC(v52, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
    goto LABEL_17;
  }

  v42 = static FormatMetadata.== infix(_:_:)(v39, v40);
  sub_1D6B23C38(v40, type metadata accessor for FormatMetadata);
  sub_1D6B23C38(v39, type metadata accessor for FormatMetadata);

  sub_1D6B238FC(v35, &unk_1EDF2C880, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatFileReference);
  return v42 & 1;
}

uint64_t sub_1D6B1B3A4(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v65 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v66 = (&v63 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v64 = (&v63 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v63 - v13;
  v14 = sub_1D72585BC();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v70 = &v63 - v24;
  sub_1D6B24484(0, &qword_1EC892048, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - v27;
  v30 = (&v63 + *(v29 + 56) - v27);
  sub_1D6B24500(v71, &v63 - v27, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v72, v30, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = v68;
    v45 = v69;
    v46 = v67;
    sub_1D6B24500(v28, v70, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v53 = v17;
      v54 = v17;
      v55 = v44;
      (*(v46 + 32))(v54, v30, v44);
      v56 = v70;
      sub_1D6B1FAA8(v70 + v48, v45, type metadata accessor for FormatMetadata);
      v57 = v30 + v48;
      v58 = v53;
      v59 = v64;
      sub_1D6B1FAA8(v57, v64, type metadata accessor for FormatMetadata);
      v60 = sub_1D72584CC();
      v61 = *(v46 + 8);
      v61(v56, v55);
      if (v60)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v45, v59);
        sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
        v61(v58, v55);
        goto LABEL_14;
      }

      sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
      v61(v58, v55);
      goto LABEL_17;
    }

    v49 = v70;
    sub_1D6B23C38(v70 + v48, type metadata accessor for FormatMetadata);
    (*(v46 + 8))(v49, v44);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892048, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration);
LABEL_18:
    v43 = 0;
    return v43 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B24500(v28, v21, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
    sub_1D5EA17B4(0, &qword_1EDF30528, &type metadata for FormatDecoration);
    v33 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v30[5];
      v83 = v30[4];
      v84[0] = v34;
      *(v84 + 11) = *(v30 + 91);
      v35 = v30[1];
      v79 = *v30;
      v80 = v35;
      v36 = v30[3];
      v81 = v30[2];
      v82 = v36;
      v37 = v66;
      sub_1D6B1FAA8(v21 + v33, v66, type metadata accessor for FormatMetadata);
      v38 = v65;
      sub_1D6B1FAA8(v30 + v33, v65, type metadata accessor for FormatMetadata);
      v39 = static FormatDecoration.== infix(_:_:)(v21, &v79);
      v40 = v21[5];
      v89 = v21[4];
      v90[0] = v40;
      *(v90 + 11) = *(v21 + 91);
      v41 = v21[1];
      v85 = *v21;
      v86 = v41;
      v42 = v21[3];
      v87 = v21[2];
      v88 = v42;
      sub_1D6687720(&v85);
      if (v39)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v37, v38);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
        v77 = v83;
        v78[0] = v84[0];
        *(v78 + 11) = *(v84 + 11);
        v73 = v79;
        v74 = v80;
        v75 = v81;
        v76 = v82;
        sub_1D6687720(&v73);
LABEL_14:
        sub_1D6B238FC(v28, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
        return v43 & 1;
      }

      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
      v77 = v83;
      v78[0] = v84[0];
      *(v78 + 11) = *(v84 + 11);
      v73 = v79;
      v74 = v80;
      v75 = v81;
      v76 = v82;
      sub_1D6687720(&v73);
LABEL_17:
      sub_1D6B238FC(v28, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
      goto LABEL_18;
    }

    sub_1D6B23C38(v21 + v33, type metadata accessor for FormatMetadata);
    v50 = v21[5];
    v89 = v21[4];
    v90[0] = v50;
    *(v90 + 11) = *(v21 + 91);
    v51 = v21[1];
    v85 = *v21;
    v86 = v51;
    v52 = v21[3];
    v87 = v21[2];
    v88 = v52;
    sub_1D6687720(&v85);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B238FC(v28, &qword_1EDF2C890, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatFileReference);
  v43 = 1;
  return v43 & 1;
}

uint64_t sub_1D6B1BB98(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v65 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v66 = (&v63 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v64 = (&v63 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v63 - v13;
  v14 = sub_1D72585BC();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v70 = &v63 - v24;
  sub_1D6B24484(0, &qword_1EC892050, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - v27;
  v30 = &v63 + *(v29 + 56) - v27;
  sub_1D6B24500(v71, &v63 - v27, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v72, v30, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v68;
    v44 = v69;
    v45 = v67;
    sub_1D6B24500(v28, v70, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v47 = *(v46 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v51 = v17;
      v52 = v17;
      v53 = v43;
      (*(v45 + 32))(v52, v30, v43);
      v54 = v70;
      sub_1D6B1FAA8(v70 + v47, v44, type metadata accessor for FormatMetadata);
      v55 = &v30[v47];
      v56 = v51;
      v57 = v64;
      sub_1D6B1FAA8(v55, v64, type metadata accessor for FormatMetadata);
      v58 = sub_1D72584CC();
      v59 = *(v45 + 8);
      v60 = v54;
      v61 = v53;
      v59(v60, v53);
      if (v58)
      {
        v42 = static FormatMetadata.== infix(_:_:)(v44, v57);
        sub_1D6B23C38(v57, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v44, type metadata accessor for FormatMetadata);
        v59(v56, v61);
        goto LABEL_14;
      }

      sub_1D6B23C38(v57, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v44, type metadata accessor for FormatMetadata);
      v59(v56, v53);
      goto LABEL_17;
    }

    v48 = v70;
    sub_1D6B23C38(v70 + v47, type metadata accessor for FormatMetadata);
    (*(v45 + 8))(v48, v43);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892050, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType);
LABEL_18:
    v42 = 0;
    return v42 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B24500(v28, v21, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
    sub_1D5EA17B4(0, &qword_1EDF343F0, &type metadata for FormatType);
    v33 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = *(v30 + 3);
      v81 = *(v30 + 2);
      v82 = v34;
      v83 = *(v30 + 4);
      v84 = v30[80];
      v35 = *(v30 + 1);
      v79 = *v30;
      v80 = v35;
      v36 = v66;
      sub_1D6B1FAA8(&v21[v33], v66, type metadata accessor for FormatMetadata);
      v37 = &v30[v33];
      v38 = v65;
      sub_1D6B1FAA8(v37, v65, type metadata accessor for FormatMetadata);
      v39 = static FormatType.== infix(_:_:)();
      v40 = *(v21 + 3);
      v87 = *(v21 + 2);
      v88 = v40;
      v89 = *(v21 + 4);
      v90 = v21[80];
      v41 = *(v21 + 1);
      v85 = *v21;
      v86 = v41;
      sub_1D62B7D78(&v85);
      if (v39)
      {
        v42 = static FormatMetadata.== infix(_:_:)(v36, v38);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v36, type metadata accessor for FormatMetadata);
        v75 = v81;
        v76 = v82;
        v77 = v83;
        v78 = v84;
        v73 = v79;
        v74 = v80;
        sub_1D62B7D78(&v73);
LABEL_14:
        sub_1D6B238FC(v28, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
        return v42 & 1;
      }

      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v36, type metadata accessor for FormatMetadata);
      v75 = v81;
      v76 = v82;
      v77 = v83;
      v78 = v84;
      v73 = v79;
      v74 = v80;
      sub_1D62B7D78(&v73);
LABEL_17:
      sub_1D6B238FC(v28, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
      goto LABEL_18;
    }

    sub_1D6B23C38(&v21[v33], type metadata accessor for FormatMetadata);
    v49 = *(v21 + 3);
    v87 = *(v21 + 2);
    v88 = v49;
    v89 = *(v21 + 4);
    v90 = v21[80];
    v50 = *(v21 + 1);
    v85 = *v21;
    v86 = v50;
    sub_1D62B7D78(&v85);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B238FC(v28, &qword_1EDF2C860, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatFileReference);
  v42 = 1;
  return v42 & 1;
}

uint64_t sub_1D6B1C388(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v65 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v66 = (&v63 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v64 = (&v63 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v63 - v13;
  v14 = sub_1D72585BC();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v70 = &v63 - v24;
  sub_1D6B24484(0, &qword_1EC892058, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - v27;
  v30 = (&v63 + *(v29 + 56) - v27);
  sub_1D6B24500(v71, &v63 - v27, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v72, v30, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = v68;
    v45 = v69;
    v46 = v67;
    sub_1D6B24500(v28, v70, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v53 = v17;
      v54 = v17;
      v55 = v44;
      (*(v46 + 32))(v54, v30, v44);
      v56 = v70;
      sub_1D6B1FAA8(v70 + v48, v45, type metadata accessor for FormatMetadata);
      v57 = v30 + v48;
      v58 = v53;
      v59 = v64;
      sub_1D6B1FAA8(v57, v64, type metadata accessor for FormatMetadata);
      v60 = sub_1D72584CC();
      v61 = *(v46 + 8);
      v61(v56, v55);
      if (v60)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v45, v59);
        sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
        v61(v58, v55);
        goto LABEL_14;
      }

      sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
      v61(v58, v55);
      goto LABEL_17;
    }

    v49 = v70;
    sub_1D6B23C38(v70 + v48, type metadata accessor for FormatMetadata);
    (*(v46 + 8))(v49, v44);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892058, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary);
LABEL_18:
    v43 = 0;
    return v43 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B24500(v28, v21, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
    sub_1D5EA17B4(0, &qword_1EDF2BE08, &type metadata for FormatSupplementary);
    v33 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v30[5];
      v83 = v30[4];
      v84[0] = v34;
      *(v84 + 9) = *(v30 + 89);
      v35 = v30[1];
      v79 = *v30;
      v80 = v35;
      v36 = v30[3];
      v81 = v30[2];
      v82 = v36;
      v37 = v66;
      sub_1D6B1FAA8(v21 + v33, v66, type metadata accessor for FormatMetadata);
      v38 = v65;
      sub_1D6B1FAA8(v30 + v33, v65, type metadata accessor for FormatMetadata);
      v39 = static FormatSupplementary.== infix(_:_:)();
      v40 = v21[5];
      v89 = v21[4];
      v90[0] = v40;
      *(v90 + 9) = *(v21 + 89);
      v41 = v21[1];
      v85 = *v21;
      v86 = v41;
      v42 = v21[3];
      v87 = v21[2];
      v88 = v42;
      sub_1D62E2300(&v85);
      if (v39)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v37, v38);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
        v77 = v83;
        v78[0] = v84[0];
        *(v78 + 9) = *(v84 + 9);
        v73 = v79;
        v74 = v80;
        v75 = v81;
        v76 = v82;
        sub_1D62E2300(&v73);
LABEL_14:
        sub_1D6B238FC(v28, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
        return v43 & 1;
      }

      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
      v77 = v83;
      v78[0] = v84[0];
      *(v78 + 9) = *(v84 + 9);
      v73 = v79;
      v74 = v80;
      v75 = v81;
      v76 = v82;
      sub_1D62E2300(&v73);
LABEL_17:
      sub_1D6B238FC(v28, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
      goto LABEL_18;
    }

    sub_1D6B23C38(v21 + v33, type metadata accessor for FormatMetadata);
    v50 = v21[5];
    v89 = v21[4];
    v90[0] = v50;
    *(v90 + 9) = *(v21 + 89);
    v51 = v21[1];
    v85 = *v21;
    v86 = v51;
    v52 = v21[3];
    v87 = v21[2];
    v88 = v52;
    sub_1D62E2300(&v85);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B238FC(v28, &qword_1EDF2C878, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatFileReference);
  v43 = 1;
  return v43 & 1;
}

uint64_t sub_1D6B1CB7C(uint64_t a1, void *a2)
{
  v61 = a1;
  v62 = a2;
  v2 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v58 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v59 = (&v57 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v57 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v57 - v14;
  v16 = sub_1D72585BC();
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA1328(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v57 - v26;
  sub_1D6B24574(0, &qword_1EC892060, sub_1D5EA1328);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v57 - v30;
  v33 = (&v57 + *(v32 + 56) - v30);
  sub_1D6B1FA40(v61, &v57 - v30, sub_1D5EA1328);
  sub_1D6B1FA40(v62, v33, sub_1D5EA1328);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v19;
    v62 = v11;
    v44 = v15;
    v45 = v60;
    sub_1D6B1FA40(v31, v27, sub_1D5EA1328);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v47 = *(v46 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v48 = v45;
      v49 = *(v45 + 32);
      v50 = v16;
      v49(v43, v33, v16);
      v51 = v44;
      sub_1D6B1FAA8(&v27[v47], v44, type metadata accessor for FormatMetadata);
      v52 = v33 + v47;
      v53 = v62;
      sub_1D6B1FAA8(v52, v62, type metadata accessor for FormatMetadata);
      v54 = sub_1D72584CC();
      v55 = *(v48 + 8);
      v55(v27, v50);
      if (v54)
      {
        v42 = static FormatMetadata.== infix(_:_:)(v51, v53);
        sub_1D6B23C38(v53, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v51, type metadata accessor for FormatMetadata);
        v55(v43, v50);
        goto LABEL_14;
      }

      sub_1D6B23C38(v53, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v51, type metadata accessor for FormatMetadata);
      v55(v43, v50);
      goto LABEL_17;
    }

    sub_1D6B23C38(&v27[v47], type metadata accessor for FormatMetadata);
    (*(v45 + 8))(v27, v16);
LABEL_11:
    sub_1D6B245D4(v31, &qword_1EC892060, sub_1D5EA1328);
LABEL_18:
    v42 = 0;
    return v42 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B1FA40(v31, v23, sub_1D5EA1328);
    sub_1D5D57EEC(0, &qword_1EDF32E98, type metadata accessor for FormatSnippet);
    v36 = *(v35 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v33;
      v38 = v59;
      sub_1D6B1FAA8(v23 + v36, v59, type metadata accessor for FormatMetadata);
      v39 = v33 + v36;
      v40 = v58;
      sub_1D6B1FAA8(v39, v58, type metadata accessor for FormatMetadata);
      type metadata accessor for FormatSnippet();
      v41 = static FormatSnippet.== infix(_:_:)(*v23, v37);

      if (v41)
      {
        v42 = static FormatMetadata.== infix(_:_:)(v38, v40);

        sub_1D6B23C38(v40, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
LABEL_14:
        sub_1D6B23C38(v31, sub_1D5EA1328);
        return v42 & 1;
      }

      sub_1D6B23C38(v40, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
LABEL_17:
      sub_1D6B23C38(v31, sub_1D5EA1328);
      goto LABEL_18;
    }

    sub_1D6B23C38(v23 + v36, type metadata accessor for FormatMetadata);

    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B23C38(v31, sub_1D5EA1328);
  v42 = 1;
  return v42 & 1;
}

uint64_t sub_1D6B1D1D4(uint64_t a1, char *a2)
{
  v63 = a2;
  v62 = a1;
  v2 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v56 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v57 = (&v56 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v61 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v60 = &v56 - v13;
  v59 = sub_1D72585BC();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v56 - v23;
  sub_1D6B24484(0, &qword_1EC892068, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v56 - v27;
  v30 = &v56 + *(v29 + 56) - v27;
  sub_1D6B24500(v62, &v56 - v27, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v63, v30, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v42 = v16;
    v43 = v61;
    v44 = v60;
    v45 = v58;
    v46 = v59;
    sub_1D6B24500(v28, v24, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v63 = v28;
      (*(v45 + 32))(v42, v30, v46);
      v51 = v44;
      sub_1D6B1FAA8(&v24[v48], v44, type metadata accessor for FormatMetadata);
      sub_1D6B1FAA8(&v30[v48], v43, type metadata accessor for FormatMetadata);
      v52 = sub_1D72584CC();
      v53 = *(v45 + 8);
      v53(v24, v46);
      if (v52)
      {
        v41 = static FormatMetadata.== infix(_:_:)(v51, v43);
        sub_1D6B23C38(v43, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v51, type metadata accessor for FormatMetadata);
        v53(v42, v46);
        sub_1D6B238FC(v63, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
        return v41 & 1;
      }

      sub_1D6B23C38(v43, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v51, type metadata accessor for FormatMetadata);
      v53(v42, v46);
      v54 = v63;
      goto LABEL_16;
    }

    sub_1D6B23C38(&v24[v48], type metadata accessor for FormatMetadata);
    (*(v45 + 8))(v24, v46);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892068, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle);
LABEL_17:
    v41 = 0;
    return v41 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D6B238FC(v28, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
      v41 = 1;
      return v41 & 1;
    }

    goto LABEL_11;
  }

  sub_1D6B24500(v28, v20, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  sub_1D5EA17B4(0, &qword_1EDF34010, &type metadata for FormatStyle);
  v33 = *(v32 + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D6B23C38(&v20[v33], type metadata accessor for FormatMetadata);
    v49 = *(v20 + 3);
    v76 = *(v20 + 2);
    v77 = v49;
    v78 = *(v20 + 8);
    v50 = *(v20 + 1);
    v74 = *v20;
    v75 = v50;
    sub_1D6687624(&v74);
    goto LABEL_11;
  }

  v34 = *(v30 + 3);
  v71 = *(v30 + 2);
  v72 = v34;
  v73 = *(v30 + 8);
  v35 = *(v30 + 1);
  v69 = *v30;
  v70 = v35;
  v36 = v57;
  sub_1D6B1FAA8(&v20[v33], v57, type metadata accessor for FormatMetadata);
  v37 = v56;
  sub_1D6B1FAA8(&v30[v33], v56, type metadata accessor for FormatMetadata);
  v38 = static FormatStyle.== infix(_:_:)(v20, &v69);
  v39 = *(v20 + 3);
  v76 = *(v20 + 2);
  v77 = v39;
  v78 = *(v20 + 8);
  v40 = *(v20 + 1);
  v74 = *v20;
  v75 = v40;
  sub_1D6687624(&v74);
  if ((v38 & 1) == 0)
  {
    sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
    sub_1D6B23C38(v36, type metadata accessor for FormatMetadata);
    v66 = v71;
    v67 = v72;
    v68 = v73;
    v65 = v70;
    v64 = v69;
    sub_1D6687624(&v64);
    v54 = v28;
LABEL_16:
    sub_1D6B238FC(v54, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
    goto LABEL_17;
  }

  v41 = static FormatMetadata.== infix(_:_:)(v36, v37);
  sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
  sub_1D6B23C38(v36, type metadata accessor for FormatMetadata);
  v66 = v71;
  v67 = v72;
  v68 = v73;
  v65 = v70;
  v64 = v69;
  sub_1D6687624(&v64);
  sub_1D6B238FC(v28, &unk_1EDF2C840, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatFileReference);
  return v41 & 1;
}

uint64_t sub_1D6B1DA8C(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v65 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v66 = (&v63 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v64 = (&v63 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v63 - v13;
  v14 = sub_1D72585BC();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v70 = &v63 - v24;
  sub_1D6B24484(0, &qword_1EC892070, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - v27;
  v30 = (&v63 + *(v29 + 56) - v27);
  sub_1D6B24500(v71, &v63 - v27, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v72, v30, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = v68;
    v45 = v69;
    v46 = v67;
    sub_1D6B24500(v28, v70, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v48 = *(v47 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v53 = v17;
      v54 = v17;
      v55 = v44;
      (*(v46 + 32))(v54, v30, v44);
      v56 = v70;
      sub_1D6B1FAA8(v70 + v48, v45, type metadata accessor for FormatMetadata);
      v57 = v30 + v48;
      v58 = v53;
      v59 = v64;
      sub_1D6B1FAA8(v57, v64, type metadata accessor for FormatMetadata);
      v60 = sub_1D72584CC();
      v61 = *(v46 + 8);
      v61(v56, v55);
      if (v60)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v45, v59);
        sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
        v61(v58, v55);
        goto LABEL_14;
      }

      sub_1D6B23C38(v59, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v45, type metadata accessor for FormatMetadata);
      v61(v58, v55);
      goto LABEL_17;
    }

    v49 = v70;
    sub_1D6B23C38(v70 + v48, type metadata accessor for FormatMetadata);
    (*(v46 + 8))(v49, v44);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892070, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem);
LABEL_18:
    v43 = 0;
    return v43 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B24500(v28, v21, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
    sub_1D5EA17B4(0, &qword_1EDF34648, &type metadata for FormatItem);
    v33 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v30[5];
      v84 = v30[4];
      v85 = v34;
      v86[0] = v30[6];
      *(v86 + 9) = *(v30 + 105);
      v35 = v30[1];
      v80 = *v30;
      v81 = v35;
      v36 = v30[3];
      v82 = v30[2];
      v83 = v36;
      v37 = v66;
      sub_1D6B1FAA8(v21 + v33, v66, type metadata accessor for FormatMetadata);
      v38 = v65;
      sub_1D6B1FAA8(v30 + v33, v65, type metadata accessor for FormatMetadata);
      v39 = static FormatItem.== infix(_:_:)(v21, &v80);
      v40 = v21[5];
      v91 = v21[4];
      v92 = v40;
      v93[0] = v21[6];
      *(v93 + 9) = *(v21 + 105);
      v41 = v21[1];
      v87 = *v21;
      v88 = v41;
      v42 = v21[3];
      v89 = v21[2];
      v90 = v42;
      sub_1D66876CC(&v87);
      if (v39)
      {
        v43 = static FormatMetadata.== infix(_:_:)(v37, v38);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
        v77 = v84;
        v78 = v85;
        v79[0] = v86[0];
        *(v79 + 9) = *(v86 + 9);
        v73 = v80;
        v74 = v81;
        v75 = v82;
        v76 = v83;
        sub_1D66876CC(&v73);
LABEL_14:
        sub_1D6B238FC(v28, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
        return v43 & 1;
      }

      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v37, type metadata accessor for FormatMetadata);
      v77 = v84;
      v78 = v85;
      v79[0] = v86[0];
      *(v79 + 9) = *(v86 + 9);
      v73 = v80;
      v74 = v81;
      v75 = v82;
      v76 = v83;
      sub_1D66876CC(&v73);
LABEL_17:
      sub_1D6B238FC(v28, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
      goto LABEL_18;
    }

    sub_1D6B23C38(v21 + v33, type metadata accessor for FormatMetadata);
    v50 = v21[5];
    v91 = v21[4];
    v92 = v50;
    v93[0] = v21[6];
    *(v93 + 9) = *(v21 + 105);
    v51 = v21[1];
    v87 = *v21;
    v88 = v51;
    v52 = v21[3];
    v89 = v21[2];
    v90 = v52;
    sub_1D66876CC(&v87);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B238FC(v28, &unk_1EDF2C868, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatFileReference);
  v43 = 1;
  return v43 & 1;
}

uint64_t sub_1D6B1E2A8(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v73 = a2;
  v2 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v66 = (&v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v67 = (&v64 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v65 = (&v64 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v70 = &v64 - v13;
  v14 = sub_1D72585BC();
  v68 = *(v14 - 8);
  v69 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v71 = &v64 - v24;
  sub_1D6B24484(0, &qword_1EC892078, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v64 - v27;
  v30 = (&v64 + *(v29 + 56) - v27);
  sub_1D6B24500(v72, &v64 - v27, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  sub_1D6B24500(v73, v30, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v46 = v69;
    v47 = v70;
    v48 = v68;
    v49 = v71;
    sub_1D6B24500(v28, v71, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
    sub_1D5D57EEC(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v51 = *(v50 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v56 = v17;
      (*(v48 + 32))(v17, v30, v46);
      v57 = v49;
      sub_1D6B1FAA8(v49 + v51, v47, type metadata accessor for FormatMetadata);
      v58 = v30 + v51;
      v59 = v56;
      v60 = v65;
      sub_1D6B1FAA8(v58, v65, type metadata accessor for FormatMetadata);
      v61 = sub_1D72584CC();
      v62 = *(v48 + 8);
      v62(v57, v46);
      if (v61)
      {
        v45 = static FormatMetadata.== infix(_:_:)(v47, v60);
        sub_1D6B23C38(v60, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v47, type metadata accessor for FormatMetadata);
        v62(v59, v46);
        goto LABEL_14;
      }

      sub_1D6B23C38(v60, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v47, type metadata accessor for FormatMetadata);
      v62(v59, v46);
      goto LABEL_17;
    }

    sub_1D6B23C38(v49 + v51, type metadata accessor for FormatMetadata);
    (*(v48 + 8))(v49, v46);
LABEL_11:
    sub_1D6B24630(v28, &qword_1EC892078, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup);
LABEL_18:
    v45 = 0;
    return v45 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D6B24500(v28, v21, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
    sub_1D5EA17B4(0, &qword_1EDF341E0, &type metadata for FormatGroup);
    v33 = *(v32 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v30[7];
      v89 = v30[6];
      v90 = v34;
      v91 = v30[8];
      v35 = v30[3];
      v85 = v30[2];
      v86 = v35;
      v36 = v30[5];
      v87 = v30[4];
      v88 = v36;
      v37 = v30[1];
      v83 = *v30;
      v84 = v37;
      v38 = v67;
      sub_1D6B1FAA8(v21 + v33, v67, type metadata accessor for FormatMetadata);
      v39 = v66;
      sub_1D6B1FAA8(v30 + v33, v66, type metadata accessor for FormatMetadata);
      v40 = static FormatGroup.== infix(_:_:)(v21, &v83);
      v41 = v21[7];
      v98 = v21[6];
      v99 = v41;
      v100 = v21[8];
      v42 = v21[3];
      v94 = v21[2];
      v95 = v42;
      v43 = v21[5];
      v96 = v21[4];
      v97 = v43;
      v44 = v21[1];
      v92 = *v21;
      v93 = v44;
      sub_1D5D68304(&v92);
      if (v40)
      {
        v45 = static FormatMetadata.== infix(_:_:)(v38, v39);
        sub_1D6B23C38(v39, type metadata accessor for FormatMetadata);
        sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
        v80 = v89;
        v81 = v90;
        v82 = v91;
        v76 = v85;
        v77 = v86;
        v78 = v87;
        v79 = v88;
        v74 = v83;
        v75 = v84;
        sub_1D5D68304(&v74);
LABEL_14:
        sub_1D6B238FC(v28, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
        return v45 & 1;
      }

      sub_1D6B23C38(v39, type metadata accessor for FormatMetadata);
      sub_1D6B23C38(v38, type metadata accessor for FormatMetadata);
      v80 = v89;
      v81 = v90;
      v82 = v91;
      v76 = v85;
      v77 = v86;
      v78 = v87;
      v79 = v88;
      v74 = v83;
      v75 = v84;
      sub_1D5D68304(&v74);
LABEL_17:
      sub_1D6B238FC(v28, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
      goto LABEL_18;
    }

    sub_1D6B23C38(v21 + v33, type metadata accessor for FormatMetadata);
    v52 = v21[7];
    v98 = v21[6];
    v99 = v52;
    v100 = v21[8];
    v53 = v21[3];
    v94 = v21[2];
    v95 = v53;
    v54 = v21[5];
    v96 = v21[4];
    v97 = v54;
    v55 = v21[1];
    v92 = *v21;
    v93 = v55;
    sub_1D5D68304(&v92);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_11;
  }

  sub_1D6B238FC(v28, &unk_1EDF2C850, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatFileReference);
  v45 = 1;
  return v45 & 1;
}

uint64_t FormatContentSubgroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void sub_1D6B1EB34(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup(0) + 24);

  *(a2 + v4) = v3;
}

void FormatContentSubgroup.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup(0) + 24);

  *(v1 + v3) = a1;
}

void sub_1D6B1EC0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup(0) + 28);

  *(a2 + v4) = v3;
}

void FormatContentSubgroup.selectors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup(0) + 28);

  *(v1 + v3) = a1;
}

void sub_1D6B1ECE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup(0) + 32);

  *(a2 + v4) = v3;
}

uint64_t FormatContentSubgroup.placeholders.getter()
{
  type metadata accessor for FormatContentSubgroup(0);
}

void sub_1D6B1EDB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup(0) + 36);

  *(a2 + v4) = v3;
}

void FormatContentSubgroup.placeholders.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup(0) + 36);

  *(v1 + v3) = a1;
}

uint64_t sub_1D6B1EE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B5C6F0(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for FormatContentSubgroup(0);
  sub_1D6B24500(a1 + *(v8 + 40), v7, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  return sub_1D6B1FAA8(v7, a2, type metadata accessor for FormatMetadata);
}

uint64_t FormatContentSubgroup.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FormatContentSubgroup(0) + 40);

  return sub_1D6B1FB10(a1, v3);
}

uint64_t FormatContentSubgroup.filters.getter()
{
  type metadata accessor for FormatContentSubgroup(0);
}

void sub_1D6B1F058(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup(0) + 44);

  *(a2 + v4) = v3;
}

void FormatContentSubgroup.filters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup(0) + 44);

  *(v1 + v3) = a1;
}

uint64_t FormatContentSubgroup.sections.getter()
{
  type metadata accessor for FormatContentSubgroup(0);
}

void sub_1D6B1F164(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatContentSubgroup(0) + 48);

  *(a2 + v4) = v3;
}

void FormatContentSubgroup.sections.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatContentSubgroup(0) + 48);

  *(v1 + v3) = a1;
}

void sub_1D6B1F23C()
{
  v1 = type metadata accessor for FormatContentSlotItemObject(0);
  v72 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FormatContentSlotItem(0);
  v78 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v5);
  v7 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + *(type metadata accessor for FormatContentSubgroup(0) + 32));
  v70 = *(v8 + 16);
  if (!v70)
  {
    return;
  }

  v9 = 0;
  v71 = v8 + 32;
  v10 = MEMORY[0x1E69E7CC0];
  v73 = v7;
  v68 = v8;
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_85;
    }

    v13 = (v71 + 48 * v9);
    v14 = v13[4];
    v77 = *(v14 + 16);
    if (v77)
    {
      break;
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_58:
    v54 = *(v21 + 2);
    v55 = *(v10 + 2);
    v56 = v55 + v54;
    if (__OFADD__(v55, v54))
    {
      goto LABEL_86;
    }

    v57 = v9;
    v58 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v58;
    if (isUniquelyReferenced_nonNull_native && v56 <= *(v58 + 3) >> 1)
    {
      if (*(v21 + 2))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v55 <= v56)
      {
        v61 = v55 + v54;
      }

      else
      {
        v61 = v55;
      }

      v60 = sub_1D698C34C(isUniquelyReferenced_nonNull_native, v61, 1, v58);
      if (*(v21 + 2))
      {
LABEL_67:
        if ((*(v60 + 3) >> 1) - *(v60 + 2) < v54)
        {
          goto LABEL_88;
        }

        v62 = v60;
        swift_arrayInitWithCopy();

        v10 = v62;
        v12 = v57;
        if (v54)
        {
          v63 = *(v62 + 2);
          v38 = __OFADD__(v63, v54);
          v64 = v63 + v54;
          if (v38)
          {
            goto LABEL_89;
          }

          *(v62 + 2) = v64;
        }

        goto LABEL_4;
      }
    }

    v11 = v60;

    v10 = v11;
    v12 = v57;
    if (v54)
    {
      goto LABEL_87;
    }

LABEL_4:
    v9 = v12 + 1;
    v8 = v68;
    if (v9 == v70)
    {
      return;
    }
  }

  v66 = v10;
  v67 = v9;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  v18 = v13[5];
  v19 = &v7[*(v69 + 20)];
  v76 = v14 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
  v65[3] = v15;

  v65[2] = v16;

  v65[1] = v17;

  swift_bridgeObjectRetain_n();
  v65[0] = v18;

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v74 = v14;
  v75 = v19;
  while (1)
  {
    if (v20 >= *(v14 + 16))
    {
      goto LABEL_76;
    }

    v23 = *(v78 + 72);
    v79 = v20;
    sub_1D6B1FA40(v76 + v23 * v20, v7, type metadata accessor for FormatContentSlotItem);
    v24 = sub_1D6313180();
    v25 = *v19;
    v80 = v21;
    if (v25)
    {
      v26 = *(v19 + 1);
      v27 = *(v26 + 16);
      if (v27)
      {
        break;
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v40 = *(v30 + 2);
    v41 = *(v24 + 2);
    v42 = v41 + v40;
    if (__OFADD__(v41, v40))
    {
      goto LABEL_77;
    }

    v43 = swift_isUniquelyReferenced_nonNull_native();
    if (!v43 || v42 > *(v24 + 3) >> 1)
    {
      if (v41 <= v42)
      {
        v44 = v41 + v40;
      }

      else
      {
        v44 = v41;
      }

      v24 = sub_1D698C34C(v43, v44, 1, v24);
    }

    v21 = v80;
    if (*(v30 + 2))
    {
      if ((*(v24 + 3) >> 1) - *(v24 + 2) < v40)
      {
        goto LABEL_81;
      }

      swift_arrayInitWithCopy();

      v7 = v73;
      v19 = v75;
      if (v40)
      {
        v45 = *(v24 + 2);
        v38 = __OFADD__(v45, v40);
        v46 = v45 + v40;
        if (v38)
        {
          goto LABEL_83;
        }

        *(v24 + 2) = v46;
      }
    }

    else
    {

      v7 = v73;
      v19 = v75;
      if (v40)
      {
        goto LABEL_78;
      }
    }

    sub_1D6B23C38(v7, type metadata accessor for FormatContentSlotItem);
    v47 = *(v24 + 2);
    v48 = *(v21 + 2);
    v49 = v48 + v47;
    if (__OFADD__(v48, v47))
    {
      goto LABEL_79;
    }

    v50 = swift_isUniquelyReferenced_nonNull_native();
    if (v50 && v49 <= *(v21 + 3) >> 1)
    {
      if (*(v24 + 2))
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v48 <= v49)
      {
        v51 = v48 + v47;
      }

      else
      {
        v51 = v48;
      }

      v21 = sub_1D698C34C(v50, v51, 1, v21);
      if (*(v24 + 2))
      {
LABEL_52:
        if ((*(v21 + 3) >> 1) - *(v21 + 2) < v47)
        {
          goto LABEL_82;
        }

        swift_arrayInitWithCopy();

        v22 = v79;
        if (v47)
        {
          v52 = *(v21 + 2);
          v38 = __OFADD__(v52, v47);
          v53 = v52 + v47;
          if (v38)
          {
            goto LABEL_84;
          }

          *(v21 + 2) = v53;
        }

        goto LABEL_9;
      }
    }

    v22 = v79;
    if (v47)
    {
      goto LABEL_80;
    }

LABEL_9:
    v20 = v22 + 1;
    v14 = v74;
    if (v20 == v77)
    {

      swift_bridgeObjectRelease_n();
      v10 = v66;
      v9 = v67;
      goto LABEL_58;
    }
  }

  v28 = v26 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v29 = *(v72 + 72);
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D6B1FA40(v28, v4, type metadata accessor for FormatContentSlotItemObject);
    v31 = sub_1D6313180();
    sub_1D6B23C38(v4, type metadata accessor for FormatContentSlotItemObject);
    v32 = *(v31 + 2);
    v33 = *(v30 + 2);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      break;
    }

    v35 = swift_isUniquelyReferenced_nonNull_native();
    if (v35 && v34 <= *(v30 + 3) >> 1)
    {
      if (*(v31 + 2))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v30 = sub_1D698C34C(v35, v36, 1, v30);
      if (*(v31 + 2))
      {
LABEL_25:
        if ((*(v30 + 3) >> 1) - *(v30 + 2) < v32)
        {
          goto LABEL_74;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v37 = *(v30 + 2);
          v38 = __OFADD__(v37, v32);
          v39 = v37 + v32;
          if (v38)
          {
            goto LABEL_75;
          }

          *(v30 + 2) = v39;
        }

        goto LABEL_15;
      }
    }

    if (v32)
    {
      goto LABEL_73;
    }

LABEL_15:
    v28 += v29;
    if (!--v27)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
}

uint64_t FormatContentSubgroup.init(identifier:layouts:properties:selectors:contents:sections:placeholders:metadata:filters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for FormatContentSubgroup(0);
  sub_1D6B1FAA8(a3, a9 + v18[5], sub_1D5B5971C);
  *(a9 + v18[6]) = a4;
  *(a9 + v18[7]) = a5;
  *(a9 + v18[9]) = a8;
  *(a9 + v18[8]) = a6;
  *(a9 + v18[12]) = a7;
  result = sub_1D6B1FAA8(a10, a9 + v18[10], type metadata accessor for FormatMetadata);
  *(a9 + v18[11]) = a11;
  return result;
}

void sub_1D6B1F9DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6B1FA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B1FAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B1FB10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B1FB74@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1D6BD08A8(a1);
  *a2 = result;
  return result;
}

char *sub_1D6B1FBE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12[5] = a5;
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  result = sub_1D5FBBD68(sub_1D6B2468C, v12, v10);
  if (!v6)
  {
    *a6 = v9;
    a6[1] = v8;
    a6[2] = result;
  }

  return result;
}

__n128 sub_1D6B1FC58@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v59 = a5;
  v60 = a4;
  v58 = a3;
  v53 = a6;
  v8 = type metadata accessor for FormatSlotDefinition(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v52 - v15;
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[3];
  v54 = a1[2];
  v55 = v19;
  v20 = a1[5];
  v56 = a1[4];
  v57 = v20;
  v21 = (a2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots);
  swift_beginAccess();
  v22 = v21[1];
  v23 = *(v22 + 16);

  if (v23)
  {

    v24 = sub_1D5B69D90(v18, v17);
    if (v25)
    {
      sub_1D6B1FA40(*(v22 + 56) + *(v9 + 72) * v24, v12, type metadata accessor for FormatSlotDefinition);

      sub_1D6B1FAA8(v12, v16, type metadata accessor for FormatSlotDefinition);

      v65 = v18;
      v66 = v17;
      v67 = v54;
      v68 = v55;
      v69 = v56;
      v70 = v57;
      sub_1D5B5D048(0, &unk_1EDF19840, &type metadata for FormatSlotTransform, MEMORY[0x1E69E6F90]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1D7273AE0;
      v27 = swift_allocObject();
      type metadata accessor for FormatSlotItemCountLimit(0);
      v28 = swift_allocBox();
      sub_1D6B1FA40(v16, v29, type metadata accessor for FormatSlotDefinition);
      swift_storeEnumTagMultiPayload();
      *(v27 + 16) = v28;
      *(v26 + 32) = v27 | 0x2000000000000000;
      v61 = v26;

      sub_1D698867C(v30);
      v31 = v72;
      sub_1D6F0FE44(v58, v60, v59, v61, v62);
      sub_1D6B23C38(v16, type metadata accessor for FormatSlotDefinition);

      if (!v31)
      {
        v33 = v62[1];
        v34 = v53;
        *v53 = v62[0];
        v34[1] = v33;
        result.n128_u64[0] = v63;
        v35 = v64;
        v34[2] = v63;
        v34[3] = v35;
      }

      return result;
    }
  }

  v36 = type metadata accessor for FormatServiceOptions(0);
  v37 = v60;
  v38 = v60 + *(v36 + 40);
  v39 = type metadata accessor for FormatTransformData(0);
  if ((sub_1D6184B08(1u, *(v38 + *(v39 + 20))) & 1) != 0 && *(*v21 + 16))
  {
    v40 = *(v37 + *(v36 + 52));
    v41 = sub_1D7262EBC();
    sub_1D5C384A0(0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1D7270C10;
    v43 = MEMORY[0x1E69E6158];
    *(v42 + 56) = MEMORY[0x1E69E6158];
    v44 = sub_1D5B7E2C0();
    *(v42 + 32) = v18;
    *(v42 + 40) = v17;
    v46 = *(a2 + 16);
    v45 = *(a2 + 24);
    *(v42 + 96) = v43;
    *(v42 + 104) = v44;
    *(v42 + 64) = v44;
    *(v42 + 72) = v46;
    *(v42 + 80) = v45;

    sub_1D725C30C("Format content programmed slot %{public}@ which does not exist in the layout %{public}@ so the items will never appear in the feed", 130, 2, &dword_1D5B42000, v40, v41, v42);

    result.n128_u64[0] = 0;
    v47 = v53;
    v53[2] = 0u;
    v47[3] = 0u;
    *v47 = 0u;
    v47[1] = 0u;
  }

  else
  {

    v65 = v18;
    v66 = v17;
    v67 = v54;
    v68 = v55;
    v69 = v56;
    v70 = v57;
    v48 = v72;
    sub_1D6F0FE44(v58, v37, v59, MEMORY[0x1E69E7CC0], v71);
    if (!v48)
    {
      v49 = v71[1];
      v50 = v71[2];
      v51 = v53;
      *v53 = v71[0];
      v51[1] = v49;
      result = v71[3];
      v51[2] = v50;
      v51[3] = result;
    }
  }

  return result;
}

uint64_t sub_1D6B20130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if ((~v6 & 0xF000000000000007) != 0)
  {
    sub_1D6B1F9DC(0, &qword_1EDF19910, type metadata accessor for FormatOption, MEMORY[0x1E69E6F90]);
    v11 = (type metadata accessor for FormatOption(0) - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7273AE0;
    v13 = (v10 + v12);
    *v13 = v4;
    v13[1] = v5;
    v13[2] = v6;
    v13[3] = 1;
    v14 = v11[9];
    v15 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v15 - 8) + 56))(v10 + v12 + v14, 1, 1, v15);
  }

  else
  {
    v7 = *(a2 + 88);
    if (!*(v7 + 16) || (v8 = sub_1D5B69D90(*a1, v5), (v9 & 1) == 0))
    {
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v10 = *(*(v7 + 56) + (v8 << 6) + 48);
  }

LABEL_8:
  *a3 = v10;
  return sub_1D5CFCFAC(v6);
}

void FormatContentSubgroup.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  sub_1D5B5971C(0);
  v161 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v147 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D6B1F9DC(0, &unk_1EDF40210, sub_1D5C2AB28, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v144 = &v138 - v9;
  v10 = MEMORY[0x1E69E6F48];
  sub_1D5B5C6F0(0, &qword_1EDF3C628, sub_1D6B23854, &type metadata for FormatContentSubgroup.AltCodingKeys, MEMORY[0x1E69E6F48]);
  v146 = v11;
  v145 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v155 = &v138 - v13;
  sub_1D5C2AB28(0);
  v163 = v14;
  v154 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v142 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v143 = &v138 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v160 = (&v138 - v22);
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v6);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v152 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v151 = &v138 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v148 = &v138 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v149 = &v138 - v34;
  v162 = sub_1D725BD1C();
  v165 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162, v35);
  v153 = &v138 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v159 = &v138 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v150 = &v138 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v157 = &v138 - v45;
  sub_1D6B1F9DC(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, v6);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v166 = &v138 - v48;
  v167 = type metadata accessor for FormatMetadata(0);
  v164 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v49);
  v158 = &v138 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1D725895C();
  *&v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v51);
  v53 = &v138 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C6F0(0, &qword_1EDF3C630, sub_1D6B238A8, &type metadata for FormatContentSubgroup.CodingKeys, v10);
  v55 = v54;
  v170 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v56);
  v58 = &v138 - v57;
  v59 = type metadata accessor for FormatContentSubgroup(0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = (&v138 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = a1[3];
  v172 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v63);
  sub_1D6B238A8();
  v64 = v171;
  sub_1D7264B0C();
  if (v64)
  {
    __swift_destroy_boxed_opaque_existential_1(v172);
    return;
  }

  v65 = v53;
  v66 = v168;
  v67 = v169;
  v141 = v59;
  v171 = v62;
  LOBYTE(v173) = 0;
  v68 = sub_1D726422C();
  v70 = v55;
  if (!v69)
  {
    v71 = v65;
    sub_1D725894C();
    v72 = sub_1D725893C();
    v74 = v73;
    (*(v66 + 8))(v71, v67);
    v69 = v74;
    v68 = v72;
  }

  v75 = v171;
  *v171 = v68;
  v75[1] = v69;
  sub_1D5B5D048(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
  LOBYTE(v174) = 2;
  sub_1D6B23958();
  sub_1D726427C();
  v76 = v173;
  if (!v173)
  {
    v76 = MEMORY[0x1E69E7CC0];
  }

  v77 = v141;
  *(v75 + v141[6]) = v76;
  sub_1D5B81B04();
  LOBYTE(v174) = 3;
  sub_1D5CB5D1C(&qword_1EDF3C7D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
  sub_1D726427C();
  v78 = v173;
  if (!v173)
  {
    v78 = MEMORY[0x1E69E7CD0];
  }

  *(v75 + v77[7]) = v78;
  sub_1D5B5D048(0, &qword_1EDF3C908, &type metadata for FormatContentSlot, MEMORY[0x1E69E62F8]);
  LOBYTE(v174) = 5;
  sub_1D6B239F4();
  v169 = 0;
  sub_1D726427C();
  v79 = v173;
  v80 = MEMORY[0x1E69E7CC0];
  if (!v173)
  {
    v79 = MEMORY[0x1E69E7CC0];
  }

  *(v75 + v77[8]) = v79;
  sub_1D5B5D048(0, &unk_1EDF3C860, &type metadata for FormatContentSubgroupSection, MEMORY[0x1E69E62F8]);
  LOBYTE(v174) = 6;
  sub_1D6B23A90();
  sub_1D726427C();
  v81 = v173;
  if (!v173)
  {
    v81 = v80;
  }

  *(v75 + v77[12]) = v81;
  sub_1D5B5D048(0, &qword_1EDF3C8F8, &type metadata for FormatPlaceholder, MEMORY[0x1E69E62F8]);
  LOBYTE(v174) = 4;
  sub_1D6B23B2C();
  sub_1D726427C();
  v82 = v173;
  if (!v173)
  {
    v82 = v80;
  }

  *(v75 + v77[9]) = v82;
  LOBYTE(v173) = 7;
  sub_1D5B4A27C(&qword_1EDF415C0, type metadata accessor for FormatMetadata, &protocol conformance descriptor for FormatMetadata);
  v84 = v166;
  v83 = v167;
  sub_1D726427C();
  v86 = v164 + 48;
  v85 = *(v164 + 48);
  v87 = v85(v84, 1, v83);
  v140 = v70;
  if (v87 == 1)
  {
    *&v168 = v85;
    v164 = v86;
    v88 = v149;
    sub_1D725BD3C();
    v89 = *(v165 + 48);
    v90 = v162;
    if (v89(v88, 1, v162) == 1)
    {
      sub_1D725BCDC();
      v91 = v89(v88, 1, v90);
      v92 = v148;
      if (v91 != 1)
      {
        sub_1D6B23BC8(v88, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      (*(v165 + 32))(v157, v88, v90);
      v92 = v148;
    }

    sub_1D725BD3C();
    if (v89(v92, 1, v90) == 1)
    {
      v95 = v150;
      sub_1D725BCCC();
      v96 = v89(v92, 1, v90);
      v97 = v165;
      if (v96 != 1)
      {
        sub_1D6B23BC8(v92, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      v97 = v165;
      v95 = v150;
      (*(v165 + 32))(v150, v92, v90);
    }

    v98 = v167;
    v93 = v158;
    sub_1D725BD3C();
    *v93 = 0;
    *(v93 + 1) = 0;
    v99 = *(v97 + 32);
    v99(&v93[v98[5]], v157, v90);
    v99(&v93[v98[6]], v95, v90);
    v100 = MEMORY[0x1E69E7CD0];
    *&v93[v98[8]] = MEMORY[0x1E69E7CD0];
    *&v93[v98[9]] = v100;
    *&v93[v98[10]] = v100;
    *&v93[v98[11]] = v100;
    v101 = v166;
    v102 = (v168)(v166, 1, v98);
    v94 = v172;
    if (v102 != 1)
    {
      sub_1D6B23BC8(v101, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
    }
  }

  else
  {
    v93 = v158;
    sub_1D6B1FAA8(v84, v158, type metadata accessor for FormatMetadata);
    v90 = v162;
    v94 = v172;
  }

  sub_1D6B1FAA8(v93, v171 + v141[10], type metadata accessor for FormatMetadata);
  sub_1D5B5D048(0, &qword_1EDF3C880, &type metadata for FormatContentSubgroupFilter, MEMORY[0x1E69E62F8]);
  LOBYTE(v174) = 8;
  sub_1D5CB70E4();
  sub_1D726427C();
  v139 = v58;
  if (v173)
  {
    v103 = v173;
  }

  else
  {
    v103 = MEMORY[0x1E69E7CC0];
  }

  *(v171 + v141[11]) = v103;
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  v104 = sub_1D7264AFC();
  v105 = Dictionary<>.bindingContent.getter(v104);

  if (v105)
  {
    sub_1D688291C(v160);
    v106 = v151;
    sub_1D725BD3C();
    v107 = *(v165 + 48);
    if (v107(v106, 1, v90) == 1)
    {
      sub_1D725BCDC();
      v108 = v107(v106, 1, v90) == 1;
      v109 = v153;
      v110 = v106;
      v111 = v152;
      if (!v108)
      {
        sub_1D6B23BC8(v110, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      (*(v165 + 32))(v159, v106, v90);
      v109 = v153;
      v111 = v152;
    }

    sub_1D725BD3C();
    if (v107(v111, 1, v90) == 1)
    {
      sub_1D725BCCC();
      v112 = v107(v111, 1, v90);
      v113 = v90;
      v114 = v165;
      if (v112 != 1)
      {
        sub_1D6B23BC8(v111, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      v114 = v165;
      (*(v165 + 32))(v109, v111, v90);
      v113 = v90;
    }

    sub_1D5D57EEC(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v116 = v160;
    v117 = v160 + *(v115 + 48);
    v118 = v167;
    sub_1D725BD3C();
    *v117 = 0;
    *(v117 + 1) = 0;
    v119 = *(v114 + 32);
    v119(&v117[v118[5]], v159, v113);
    v119(&v117[v118[6]], v109, v113);
    v120 = MEMORY[0x1E69E7CD0];
    *&v117[v118[8]] = MEMORY[0x1E69E7CD0];
    *&v117[v118[9]] = v120;
    *&v117[v118[10]] = v120;
    *&v117[v118[11]] = v120;
    swift_storeEnumTagMultiPayload();
    v121 = v171;
    v122 = v171 + v141[5];
    sub_1D6B1FA40(v116, v122, sub_1D5C2AB28);
    sub_1D6B1F9DC(0, &qword_1EDF3C600, sub_1D5C2AB28, MEMORY[0x1E69E6F90]);
    v123 = (*(v154 + 80) + 32) & ~*(v154 + 80);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1D7273AE0;
    sub_1D6B1FAA8(v116, v124 + v123, sub_1D5C2AB28);
    (*(v170 + 8))(v139, v140);
    *(v122 + *(v161 + 36)) = v124;
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  sub_1D6B23854();
  sub_1D7264B0C();
  sub_1D5E4C1F0(0);
  sub_1D5B4A27C(qword_1EDF3CDD0, sub_1D5E4C1F0, &protocol conformance descriptor for FormatFileVersionURIReferenceCollection<A>);
  sub_1D726427C();
  v125 = v173;
  if (v173)
  {
    if (qword_1EDF3CA50 != -1)
    {
      swift_once();
    }

    v126 = __swift_project_value_buffer(v162, qword_1EDF3CA58);
    v127 = v144;
    sub_1D6B22D88(v126, v125, v144);

    if ((*(v154 + 48))(v127, 1, v163) != 1)
    {
      v133 = v143;
      sub_1D6B1FAA8(v144, v143, sub_1D5C2AB28);
      v134 = v142;
      sub_1D6B1FA40(v133, v142, sub_1D5C2AB28);
      v121 = v171;
      v135 = v171 + v141[5];
      sub_1D6B1FA40(v134, v135, sub_1D5C2AB28);
      sub_1D6B1F9DC(0, &qword_1EDF3C600, sub_1D5C2AB28, MEMORY[0x1E69E6F90]);
      v136 = (*(v154 + 80) + 32) & ~*(v154 + 80);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_1D7273AE0;
      sub_1D6B1FAA8(v134, v137 + v136, sub_1D5C2AB28);
      sub_1D6B23C38(v133, sub_1D5C2AB28);
      (*(v145 + 8))(v155, v146);
      (*(v170 + 8))(v139, v140);
      *(v135 + *(v161 + 36)) = v137;
      goto LABEL_48;
    }

    sub_1D6B23BC8(v144, &unk_1EDF40210, sub_1D5C2AB28);
  }

  sub_1D5E4C26C();
  v128 = swift_allocError();
  *v129 = 2;
  swift_willThrow();
  (*(v145 + 8))(v155, v146);
  v130 = v140;
  LOBYTE(v173) = 1;
  sub_1D5B4A27C(qword_1EDF3D378, sub_1D5B5971C, &protocol conformance descriptor for FormatLatestCompatibleFileReference<A>);
  v131 = v147;
  v132 = v139;
  sub_1D726431C();
  (*(v170 + 8))(v132, v130);

  v121 = v171;
  sub_1D6B1FAA8(v131, v171 + v141[5], sub_1D5B5971C);
LABEL_48:
  sub_1D6B1FA40(v121, v156, type metadata accessor for FormatContentSubgroup);
  __swift_destroy_boxed_opaque_existential_1(v172);
  sub_1D6B23C38(v121, type metadata accessor for FormatContentSubgroup);
}

uint64_t FormatContentSubgroup.encode(to:)(void *a1)
{
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v74 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v81 = &v65 - v7;
  v8 = sub_1D725BD1C();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v77 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v80 = &v65 - v13;
  sub_1D5B5C6F0(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v73 = &v65 - v16;
  v78 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v78, v17);
  v72 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v65 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v79 = (&v65 - v25);
  sub_1D5B5C6F0(0, &qword_1EDF02688, sub_1D6B238A8, &type metadata for FormatContentSubgroup.CodingKeys, MEMORY[0x1E69E6F58]);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v65 - v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B238A8();
  sub_1D7264B5C();
  LOBYTE(v85) = 0;
  v32 = v82;
  sub_1D72643FC();
  if (v32)
  {
    return (*(v28 + 8))(v31, v27);
  }

  v34 = v22;
  v70 = v27;
  v71 = v31;
  v82 = 0;
  v68 = a1;
  v69 = v28;
  v35 = type metadata accessor for FormatContentSubgroup(0);
  v66 = *(v35 + 40);
  v36 = v73;
  sub_1D6B24500(v83 + v66, v73, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D6B1FAA8(v36, v79, type metadata accessor for FormatMetadata);
  v37 = v81;
  sub_1D725BD3C();
  v38 = v75;
  v39 = v76;
  v40 = *(v75 + 48);
  if (v40(v37, 1, v76) == 1)
  {
    sub_1D725BCDC();
    v41 = v34;
    if (v40(v81, 1, v39) != 1)
    {
      sub_1D6B23BC8(v81, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    }
  }

  else
  {
    (*(v38 + 32))(v80, v81, v39);
    v41 = v34;
  }

  v42 = v74;
  sub_1D725BD3C();
  v43 = v40(v42, 1, v39);
  v67 = v35;
  if (v43 == 1)
  {
    v44 = v77;
    sub_1D725BCCC();
    v45 = v40(v42, 1, v39);
    v46 = v70;
    if (v45 != 1)
    {
      sub_1D6B23BC8(v42, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    }
  }

  else
  {
    v44 = v77;
    (*(v38 + 32))(v77, v42, v39);
    v46 = v70;
  }

  v47 = v78;
  sub_1D725BD3C();
  *v41 = 0;
  *(v41 + 1) = 0;
  v48 = *(v38 + 32);
  v48(&v41[v47[5]], v80, v39);
  v48(&v41[v47[6]], v44, v39);
  v49 = MEMORY[0x1E69E7CD0];
  *&v41[v47[8]] = MEMORY[0x1E69E7CD0];
  *&v41[v47[9]] = v49;
  *&v41[v47[10]] = v49;
  *&v41[v47[11]] = v49;
  v50 = v79;
  v51 = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(v79, v41);
  sub_1D6B23C38(v41, type metadata accessor for FormatMetadata);
  sub_1D6B23C38(v50, type metadata accessor for FormatMetadata);
  if (v51)
  {
    v52 = v71;
  }

  else
  {
    sub_1D6B24500(v83 + v66, v36, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
    v53 = v72;
    sub_1D6B1FAA8(v36, v72, type metadata accessor for FormatMetadata);
    LOBYTE(v85) = 7;
    sub_1D5B4A27C(&qword_1EDF11B70, type metadata accessor for FormatMetadata, &protocol conformance descriptor for FormatMetadata);
    v52 = v71;
    v54 = v82;
    sub_1D726443C();
    if (v54)
    {
      sub_1D6B23C38(v53, type metadata accessor for FormatMetadata);
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
    sub_1D6B23C38(v53, type metadata accessor for FormatMetadata);
  }

  v56 = v67;
  v55 = v68;
  v85 = *(v83 + v67[6]);
  v84 = 2;
  if (*(v85 + 16))
  {
    sub_1D5B5D048(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    sub_1D5E4C5D4();
    v57 = v82;
    sub_1D726443C();
    if (v57)
    {
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
  }

  v85 = *(v83 + v56[7]);
  v84 = 3;
  if (*(v85 + 16))
  {
    sub_1D5B81B04();
    sub_1D5CB5D1C(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    v58 = v82;
    sub_1D726443C();
    if (v58)
    {
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
  }

  v85 = *(v83 + v56[8]);
  v84 = 5;
  if (*(v85 + 16))
  {
    sub_1D5B5D048(0, &qword_1EDF3C908, &type metadata for FormatContentSlot, MEMORY[0x1E69E62F8]);
    sub_1D6B23DE0();
    v59 = v82;
    sub_1D726443C();
    if (v59)
    {
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
  }

  v85 = *(v83 + v56[12]);
  v84 = 6;
  if (*(v85 + 16))
  {
    sub_1D5B5D048(0, &unk_1EDF3C860, &type metadata for FormatContentSubgroupSection, MEMORY[0x1E69E62F8]);
    sub_1D6B23E7C();
    v60 = v82;
    sub_1D726443C();
    if (v60)
    {
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
  }

  v85 = *(v83 + v56[11]);
  v84 = 8;
  if (*(v85 + 16))
  {
    sub_1D5B5D048(0, &qword_1EDF3C880, &type metadata for FormatContentSubgroupFilter, MEMORY[0x1E69E62F8]);
    sub_1D6B23F18();
    v61 = v82;
    sub_1D726443C();
    if (v61)
    {
      return (*(v69 + 8))(v52, v46);
    }

    v82 = 0;
  }

  v85 = *(v83 + v56[9]);
  v84 = 4;
  if (!*(v85 + 16))
  {
    goto LABEL_34;
  }

  sub_1D5B5D048(0, &qword_1EDF3C8F8, &type metadata for FormatPlaceholder, MEMORY[0x1E69E62F8]);
  sub_1D6B23FB4();
  v62 = v82;
  sub_1D726443C();
  if (!v62)
  {
    v82 = 0;
LABEL_34:
    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    v63 = sub_1D7264B4C();
    v64 = Dictionary<>.bindingContent.getter(v63);

    if ((v64 & 1) == 0)
    {
      LOBYTE(v85) = 1;
      sub_1D5B5971C(0);
      sub_1D5B4A27C(qword_1EDF07098, sub_1D5B5971C, &protocol conformance descriptor for FormatLatestCompatibleFileReference<A>);
      sub_1D726443C();
    }
  }

  return (*(v69 + 8))(v52, v46);
}

uint64_t sub_1D6B22858(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x69747265706F7270;
    if (a1 != 2)
    {
      v6 = 0x726F7463656C6573;
    }

    if (a1)
    {
      v5 = 0x7374756F79616CLL;
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
    v1 = 0x736E6F6974636573;
    v2 = 0x617461646174656DLL;
    if (a1 != 7)
    {
      v2 = 0x737265746C6966;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C6F686563616C70;
    if (a1 != 4)
    {
      v3 = 0x73746E65746E6F63;
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

uint64_t sub_1D6B22990()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694EA54(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6B229E0(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694EA54(v4, v2);
  return sub_1D7264A5C();
}

unint64_t sub_1D6B22A24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6B24354(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6B22A54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6B22858(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D6B22A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B24354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6B22AC4(uint64_t a1)
{
  v2 = sub_1D6B238A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B22B00(uint64_t a1)
{
  v2 = sub_1D6B238A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6B22B3C()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6B22BA8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D6B22BF8(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

void sub_1D6B22C80(BOOL *a3@<X8>)
{
  v4 = sub_1D72641CC();

  *a3 = v4 != 0;
}

uint64_t sub_1D6B22CD8(uint64_t a1)
{
  v2 = sub_1D6B23854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B22D14(uint64_t a1)
{
  v2 = sub_1D6B23854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6B22D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[2] = a1;

  sub_1D62ECF64(sub_1D5EA208C, v13, a2);
  sub_1D5C2AB28(0);
  v6 = v5;
  sub_1D725BD1C();
  sub_1D5B4A27C(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
  v7 = sub_1D72626AC();

  v8 = *(v7 + 16);
  v9 = (v6 - 8);
  if (v8)
  {
    v10 = *v9;
    sub_1D6B1FA40(v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(*v9 + 72) * (v8 - 1), a3, sub_1D5C2AB28);

    v11 = 0;
  }

  else
  {

    v10 = *v9;
    v11 = 1;
  }

  return (*(v10 + 56))(a3, v11, 1, v6);
}

uint64_t sub_1D6B22F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FormatMetadata(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6B38];
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  type metadata accessor for FormatService.ThemePackage(0);
  sub_1D6B197D8(v6);
  sub_1D6B24404(&v6[*(v3 + 36)], v11, &qword_1EDF45AC0, v7);
  sub_1D6B23C38(v6, type metadata accessor for FormatMetadata);
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v11, v12);
  }

  sub_1D725BCDC();
  result = (v14)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D6B23BC8(v11, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  }

  return result;
}

uint64_t sub_1D6B23170@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FormatMetadata(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6B38];
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  sub_1D6B197D8(v6);
  sub_1D6B24404(&v6[*(v3 + 36)], v11, &qword_1EDF45AC0, v7);
  sub_1D6B23C38(v6, type metadata accessor for FormatMetadata);
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v11, v12);
  }

  sub_1D725BCDC();
  result = (v14)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D6B23BC8(v11, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  }

  return result;
}

uint64_t sub_1D6B23374(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = type metadata accessor for FormatMetadata(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6B38];
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v19 - v10;
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatService.ThemePackage(0);
  sub_1D6B197D8(v6);
  sub_1D6B24404(&v6[*(v3 + 36)], v11, &qword_1EDF45AC0, v7);
  sub_1D6B23C38(v6, type metadata accessor for FormatMetadata);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D6B23BC8(v11, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v17 = 1;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v17 = sub_1D725B9FC();
    (*(v13 + 8))(v16, v12);
  }

  return v17 & 1;
}

uint64_t sub_1D6B235EC(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = type metadata accessor for FormatMetadata(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6B38];
  sub_1D6B1F9DC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v19 - v10;
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B197D8(v6);
  sub_1D6B24404(&v6[*(v3 + 36)], v11, &qword_1EDF45AC0, v7);
  sub_1D6B23C38(v6, type metadata accessor for FormatMetadata);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D6B23BC8(v11, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v17 = 1;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v17 = sub_1D725B9FC();
    (*(v13 + 8))(v16, v12);
  }

  return v17 & 1;
}

unint64_t sub_1D6B23854()
{
  result = qword_1EDF3FDD8;
  if (!qword_1EDF3FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FDD8);
  }

  return result;
}

unint64_t sub_1D6B238A8()
{
  result = qword_1EDF3FDF0[0];
  if (!qword_1EDF3FDF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF3FDF0);
  }

  return result;
}

uint64_t sub_1D6B238FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5B5C6F0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D6B23958()
{
  result = qword_1EDF3C910;
  if (!qword_1EDF3C910)
  {
    sub_1D5B5D048(255, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    sub_1D5B59CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C910);
  }

  return result;
}

unint64_t sub_1D6B239F4()
{
  result = qword_1EDF3C900;
  if (!qword_1EDF3C900)
  {
    sub_1D5B5D048(255, &qword_1EDF3C908, &type metadata for FormatContentSlot, MEMORY[0x1E69E62F8]);
    sub_1D5B5C40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C900);
  }

  return result;
}

unint64_t sub_1D6B23A90()
{
  result = qword_1EDF3C858;
  if (!qword_1EDF3C858)
  {
    sub_1D5B5D048(255, &unk_1EDF3C860, &type metadata for FormatContentSubgroupSection, MEMORY[0x1E69E62F8]);
    sub_1D5B5C8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C858);
  }

  return result;
}

unint64_t sub_1D6B23B2C()
{
  result = qword_1EDF3C8F0;
  if (!qword_1EDF3C8F0)
  {
    sub_1D5B5D048(255, &qword_1EDF3C8F8, &type metadata for FormatPlaceholder, MEMORY[0x1E69E62F8]);
    sub_1D5B5C5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C8F0);
  }

  return result;
}

uint64_t sub_1D6B23BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6B1F9DC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6B23C38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s8NewsFeed21FormatContentSubgroupV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {
    v5 = type metadata accessor for FormatContentSubgroup(0);
    v6 = v5[5];
    v7 = a1 + v6;
    v8 = a2 + v6;
    if (sub_1D6B1A454(a1 + v6, (a2 + v6)))
    {
      sub_1D5B5971C(0);
      if (sub_1D63449AC(*&v7[*(v9 + 36)], *&v8[*(v9 + 36)]) & 1) != 0 && (sub_1D6339F3C(*(a1 + v5[6]), *(a2 + v5[6])) & 1) != 0 && (sub_1D5BFC390(*(a1 + v5[7]), *(a2 + v5[7])) & 1) != 0 && (sub_1D633BEDC(*(a1 + v5[8]), *(a2 + v5[8])) & 1) != 0 && (sub_1D63448F0(*(a1 + v5[9]), *(a2 + v5[9])) & 1) != 0 && (static FormatMetadata.== infix(_:_:)((a1 + v5[10]), (a2 + v5[10])))
      {
        sub_1D633BBE4(*(a1 + v5[11]), *(a2 + v5[11]));
        if (v10)
        {
          v11 = v5[12];
          v12 = *(a1 + v11);
          v13 = *(a2 + v11);

          sub_1D6343C34(v12, v13);
        }
      }
    }
  }
}

unint64_t sub_1D6B23DE0()
{
  result = qword_1EDF04FA0;
  if (!qword_1EDF04FA0)
  {
    sub_1D5B5D048(255, &qword_1EDF3C908, &type metadata for FormatContentSlot, MEMORY[0x1E69E62F8]);
    sub_1D5B5C460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04FA0);
  }

  return result;
}

unint64_t sub_1D6B23E7C()
{
  result = qword_1EDF04B90;
  if (!qword_1EDF04B90)
  {
    sub_1D5B5D048(255, &unk_1EDF3C860, &type metadata for FormatContentSubgroupSection, MEMORY[0x1E69E62F8]);
    sub_1D5B59FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04B90);
  }

  return result;
}

unint64_t sub_1D6B23F18()
{
  result = qword_1EDF04C40;
  if (!qword_1EDF04C40)
  {
    sub_1D5B5D048(255, &qword_1EDF3C880, &type metadata for FormatContentSubgroupFilter, MEMORY[0x1E69E62F8]);
    sub_1D5B59EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04C40);
  }

  return result;
}

unint64_t sub_1D6B23FB4()
{
  result = qword_1EDF04F88;
  if (!qword_1EDF04F88)
  {
    sub_1D5B5D048(255, &qword_1EDF3C8F8, &type metadata for FormatPlaceholder, MEMORY[0x1E69E62F8]);
    sub_1D5B5C634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04F88);
  }

  return result;
}

uint64_t sub_1D6B24050(void *a1)
{
  a1[1] = sub_1D5B4A27C(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
  a1[2] = sub_1D5B4A27C(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
  result = sub_1D5B4A27C(&qword_1EC892028, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B24148()
{
  result = qword_1EC892030;
  if (!qword_1EC892030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892030);
  }

  return result;
}

unint64_t sub_1D6B241A0()
{
  result = qword_1EC892038;
  if (!qword_1EC892038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892038);
  }

  return result;
}

unint64_t sub_1D6B241F8()
{
  result = qword_1EDF3FDE0;
  if (!qword_1EDF3FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FDE0);
  }

  return result;
}

unint64_t sub_1D6B24250()
{
  result = qword_1EDF3FDE8;
  if (!qword_1EDF3FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FDE8);
  }

  return result;
}

unint64_t sub_1D6B242A8()
{
  result = qword_1EDF3FDC8;
  if (!qword_1EDF3FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FDC8);
  }

  return result;
}

unint64_t sub_1D6B24300()
{
  result = qword_1EDF3FDD0;
  if (!qword_1EDF3FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3FDD0);
  }

  return result;
}

unint64_t sub_1D6B24354(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6B243A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatMetadata(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B24404(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6B1F9DC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6B24484(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1D5B5C6F0(255, a3, a4, a5, type metadata accessor for FormatFileReference);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6B24500(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5B5C6F0(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D6B24574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6B245D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6B24574(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6B24630(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1D6B24484(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6B246AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v1, 0);
  v2 = v28;
  v27 = v3 + 56;
  result = sub_1D7263B7C();
  v5 = result;
  v6 = 0;
  v23 = v3 + 64;
  v24 = v1;
  v25 = v3;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v27 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_38;
    }

    v26 = *(v3 + 36);
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = v9[1];
    v11 = 0xE700000000000000;
    v12 = 0x656C6369747241;
    switch(v10)
    {
      case 0uLL:
        break;
      case 1uLL:
        v11 = 0xE500000000000000;
        v12 = 0x6575737349;
        break;
      case 2uLL:
        v11 = 0xE800000000000000;
        v12 = 0x6465626D45626557;
        break;
      case 3uLL:
        v11 = 0xEA00000000006B63;
        v12 = 0x6172546F69647541;
        break;
      case 4uLL:
        v11 = 0xE300000000000000;
        v12 = 6775124;
        break;
      case 5uLL:
        v11 = 0xE500000000000000;
        v12 = 0x65726F6353;
        break;
      case 6uLL:
        v11 = 0xE800000000000000;
        v12 = 0x676E69646E617453;
        break;
      case 7uLL:
        v12 = 0x74656B63617242;
        break;
      case 8uLL:
        v11 = 0xE900000000000065;
        v12 = 0x726F635320786F42;
        break;
      case 9uLL:
        v12 = 0x6F635320656E694CLL;
        v11 = 0xEA00000000006572;
        break;
      case 0xAuLL:
        v12 = 0x52207972756A6E49;
        v11 = 0xED000074726F7065;
        break;
      case 0xBuLL:
        v11 = 0xEA00000000007265;
        v12 = 0x79616C502079654BLL;
        break;
      case 0xCuLL:
        v11 = 0xE600000000000000;
        v12 = 0x656C7A7A7550;
        break;
      case 0xDuLL:
        v12 = 0x5420656C7A7A7550;
        v11 = 0xEB00000000657079;
        break;
      case 0xEuLL:
        v12 = 0xD000000000000010;
        v11 = 0x80000001D73E6400;
        break;
      case 0xFuLL:
        v11 = 0xE600000000000000;
        v12 = 0x657069636552;
        break;
      default:
        v12 = *v9;
        v11 = v9[1];
        break;
    }

    result = sub_1D5CBA110(*v9, v10);
    v14 = *(v28 + 16);
    v13 = *(v28 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_1D5BFC364((v13 > 1), v14 + 1, 1);
    }

    *(v28 + 16) = v14 + 1;
    v15 = v28 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    v3 = v25;
    v7 = 1 << *(v25 + 32);
    if (v5 >= v7)
    {
      goto LABEL_39;
    }

    v16 = *(v27 + 8 * v8);
    if ((v16 & (1 << v5)) == 0)
    {
      goto LABEL_40;
    }

    if (v26 != *(v25 + 36))
    {
      goto LABEL_41;
    }

    v17 = v16 & (-2 << (v5 & 0x3F));
    if (v17)
    {
      v7 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v8 << 6;
      v19 = v8 + 1;
      v20 = (v23 + 8 * v8);
      while (v19 < (v7 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1D5C25E1C(v5, v26, 0);
          v7 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v5, v26, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v24)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t FormatSlotDefinitionItemSet.init(kinds:min:max:properties:auxiliary:editorProperties:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a5;
  v10 = a5[1];
  *a7 = a2;
  *(a7 + 4) = a3;
  *(a7 + 8) = a1;
  *(a7 + 16) = a4;
  sub_1D5CDE22C(0, 0);
  *(a7 + 24) = v9;
  *(a7 + 32) = v10;
  v11 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  return sub_1D5C4E9C4(a6, a7 + *(v11 + 36), sub_1D5B57CA0);
}

void sub_1D6B24B28()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
    v7 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v7)
    {
LABEL_4:
      v19[0] = v3;
      sub_1D5BFC364(0, v7, 0);
      v8 = v19[0];
      v9 = v4 + 5;
      do
      {
        v10 = 0xE700000000000000;
        v11 = 0x656C6369747241;
        switch(*v9)
        {
          case 0uLL:
            break;
          case 1uLL:
            v10 = 0xE500000000000000;
            v11 = 0x6575737349;
            break;
          case 2uLL:
            v10 = 0xE800000000000000;
            v11 = 0x6465626D45626557;
            break;
          case 3uLL:
            v10 = 0xEA00000000006B63;
            v11 = 0x6172546F69647541;
            break;
          case 4uLL:
            v10 = 0xE300000000000000;
            v11 = 6775124;
            break;
          case 5uLL:
            v10 = 0xE500000000000000;
            v11 = 0x65726F6353;
            break;
          case 6uLL:
            v10 = 0xE800000000000000;
            v11 = 0x676E69646E617453;
            break;
          case 7uLL:
            v11 = 0x74656B63617242;
            break;
          case 8uLL:
            v10 = 0xE900000000000065;
            v11 = 0x726F635320786F42;
            break;
          case 9uLL:
            v11 = 0x6F635320656E694CLL;
            v10 = 0xEA00000000006572;
            break;
          case 0xAuLL:
            v11 = 0x52207972756A6E49;
            v10 = 0xED000074726F7065;
            break;
          case 0xBuLL:
            v10 = 0xEA00000000007265;
            v11 = 0x79616C502079654BLL;
            break;
          case 0xCuLL:
            v10 = 0xE600000000000000;
            v11 = 0x656C7A7A7550;
            break;
          case 0xDuLL:
            v11 = 0x5420656C7A7A7550;
            v10 = 0xEB00000000657079;
            break;
          case 0xEuLL:
            v11 = 0xD000000000000010;
            v10 = 0x80000001D73E6400;
            break;
          case 0xFuLL:
            v10 = 0xE600000000000000;
            v11 = 0x657069636552;
            break;
          default:
            v11 = *(v9 - 1);
            v10 = *v9;
            break;
        }

        sub_1D5CBA110(*(v9 - 1), *v9);
        v19[0] = v8;
        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          sub_1D5BFC364((v12 > 1), v13 + 1, 1);
          v8 = v19[0];
        }

        v9 += 2;
        *(v8 + 2) = v13 + 1;
        v14 = &v8[16 * v13];
        *(v14 + 4) = v11;
        *(v14 + 5) = v10;
        --v7;
      }

      while (v7);

      goto LABEL_28;
    }

LABEL_27:

    v8 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v19[0] = v8;

    sub_1D5F81CCC(v19);

    sub_1D5B49DA8(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();
    v15 = sub_1D7261F3C();
    v17 = v16;

    v19[0] = sub_1D6B254E0();
    v19[1] = v18;
    MEMORY[0x1DA6F9910](543584032, 0xE400000000000000);
    MEMORY[0x1DA6F9910](v15, v17);

    return;
  }

  v4 = sub_1D5E23CB4(*(v1 + 16), 0);
  v5 = sub_1D5E24C6C(v19, v4 + 2, v2, v1);
  v6 = v19[0];

  sub_1D5B87E38(v6);
  if (v5 == v2)
  {
    v7 = v4[2];
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  __break(1u);

  __break(1u);
}

uint64_t FormatSlotDefinitionItemSet.auxiliary.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5D615EC(v2, v3);
}

uint64_t FormatSlotDefinitionItemSet.auxiliary.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1D5CDE22C(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1D6B250A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B26530(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B250D0(uint64_t a1)
{
  v2 = sub_1D5CDDEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B2510C(uint64_t a1)
{
  v2 = sub_1D5CDDEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSlotDefinitionItemSet.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5CDD744(0, &qword_1EDF025B8, sub_1D5CDDEAC, &type metadata for FormatSlotDefinitionItemSet.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CDDEAC();
  sub_1D7264B5C();
  LOBYTE(v15) = 0;
  sub_1D726444C();
  if (!v2)
  {
    v11 = *(v3 + 4);
    if (v11 != 0x7FFFFFFF)
    {
      v17 = 1;
      LODWORD(v15) = v11;
      sub_1D6B25A58();
      sub_1D72647EC();
    }

    sub_1D5E06A88(*(v3 + 8), v10, 2);
    v13 = *(v3 + 16);
    if (*(v13 + 16))
    {
      v17 = 3;
      v15 = v13;
      sub_1D6B25A58();
      sub_1D5B4BF00(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
      sub_1D5CDE114(&qword_1EDF04CF0, &qword_1EDF449F8, &protocol conformance descriptor for FormatPropertyDefinition, MEMORY[0x1E69E6300]);
      sub_1D72647EC();
    }

    v14 = *(v3 + 32);
    v15 = *(v3 + 24);
    v16 = v14;
    v17 = 4;
    sub_1D5D615EC(v15, v14);
    sub_1D6A6312C();
    sub_1D72643BC();
    sub_1D5CDE22C(v15, v16);
    type metadata accessor for FormatSlotDefinitionItemSet(0);
    LOBYTE(v15) = 5;
    sub_1D725B76C();
    sub_1D5B4C464(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6B254E0()
{
  v5 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](544175136, 0xE400000000000000);
  if (*(v0 + 4) == 0x7FFFFFFF)
  {
    v1 = 0xE300000000000000;
    v2 = 7889229;
  }

  else
  {
    v2 = sub_1D72644BC();
    v1 = v3;
  }

  MEMORY[0x1DA6F9910](v2, v1);

  return v5;
}

BOOL _s8NewsFeed27FormatSlotDefinitionItemSetV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B57CA0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5D5FB44(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 != *a2)
  {
    return 0;
  }

  v35 = v15;
  if ((sub_1D5E1EFE4(a1[1], a2[1]) & 1) == 0 || (sub_1D633C994(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v19 = a1[3];
  v18 = a1[4];
  v20 = a2[3];
  v34 = a2[4];
  if (!v19)
  {
    sub_1D5D615EC(0, v18);
    if (!v20)
    {
      sub_1D5D615EC(0, v34);
      sub_1D5CDE22C(0, v18);
      goto LABEL_17;
    }

    v23 = v34;
    sub_1D5D615EC(v20, v34);
    goto LABEL_12;
  }

  if (!v20)
  {
    sub_1D5D615EC(v19, v18);
    v23 = v34;
    sub_1D5D615EC(0, v34);
    sub_1D5D615EC(v19, v18);

LABEL_12:
    sub_1D5CDE22C(v19, v18);
    v24 = v20;
LABEL_14:
    sub_1D5CDE22C(v24, v23);
    return 0;
  }

  sub_1D5D615EC(v19, v18);
  sub_1D5D615EC(v20, v34);
  v33 = v18;
  sub_1D5D615EC(v19, v18);
  if ((sub_1D633C994(v19, v20) & 1) == 0)
  {
    sub_1D5CDE22C(v20, v34);
    v23 = v33;

    v24 = v19;
    goto LABEL_14;
  }

  v21 = v34;
  v32 = sub_1D633C940(v33, v34);
  sub_1D5CDE22C(v20, v21);
  v22 = v33;

  sub_1D5CDE22C(v19, v22);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v26 = *(type metadata accessor for FormatSlotDefinitionItemSet(0) + 36);
  v27 = *(v35 + 48);
  sub_1D5CDE3EC(a1 + v26, v17, sub_1D5B57CA0);
  sub_1D5CDE3EC(a2 + v26, &v17[v27], sub_1D5B57CA0);
  v28 = *(v5 + 48);
  if (v28(v17, 1, v4) != 1)
  {
    sub_1D5CDE3EC(v17, v12, sub_1D5B57CA0);
    if (v28(&v17[v27], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_22;
    }

    (*(v5 + 32))(v8, &v17[v27], v4);
    sub_1D5B4C464(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v29 = sub_1D7261FBC();
    v30 = *(v5 + 8);
    v30(v8, v4);
    v30(v12, v4);
    sub_1D5CDE60C(v17, sub_1D5B57CA0);
    return (v29 & 1) != 0;
  }

  if (v28(&v17[v27], 1, v4) != 1)
  {
LABEL_22:
    sub_1D5CDE60C(v17, sub_1D5D5FB44);
    return 0;
  }

  sub_1D5CDE60C(v17, sub_1D5B57CA0);
  return 1;
}

unint64_t sub_1D6B25A58()
{
  result = qword_1EDF025C0;
  if (!qword_1EDF025C0)
  {
    sub_1D5CDD744(255, &qword_1EDF025B8, sub_1D5CDDEAC, &type metadata for FormatSlotDefinitionItemSet.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF025C0);
  }

  return result;
}

uint64_t sub_1D6B25AE8(void *a1)
{
  a1[1] = sub_1D5B4C464(&qword_1EDF22058, type metadata accessor for FormatSlotDefinitionItemSet, &protocol conformance descriptor for FormatSlotDefinitionItemSet);
  a1[2] = sub_1D5B4C464(&qword_1EDF0AF38, type metadata accessor for FormatSlotDefinitionItemSet, &protocol conformance descriptor for FormatSlotDefinitionItemSet);
  result = sub_1D5B4C464(&qword_1EC892080, type metadata accessor for FormatSlotDefinitionItemSet, &protocol conformance descriptor for FormatSlotDefinitionItemSet);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B25BA8()
{
  result = qword_1EC892088;
  if (!qword_1EC892088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892088);
  }

  return result;
}

void *sub_1D6B25BFC(uint64_t a1, uint64_t a2)
{
  sub_1D5B57CA0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60747E4(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 112);
  v95 = *(a1 + 96);
  v96 = v17;
  v97 = *(a1 + 128);
  v98 = *(a1 + 144);
  v18 = *(a1 + 48);
  v91 = *(a1 + 32);
  v92 = v18;
  v19 = *(a1 + 80);
  v93 = *(a1 + 64);
  v94 = v19;
  v20 = *(a1 + 16);
  v89 = *a1;
  v90 = v20;
  sub_1D5CDE3EC(a2, v11, sub_1D60747E4);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D5CDE60C(v11, sub_1D60747E4);
    return sub_1D7073500(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v69 = v12;
    sub_1D5C4E9C4(v11, v16, type metadata accessor for FormatSlotDefinitionItemSet);
    v22 = MEMORY[0x1E69E6F90];
    sub_1D5B4BF00(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v66 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D5B4BF00(0, &qword_1EC880490, sub_1D5EA74B8, v22);
    sub_1D5EA74B8(0);
    v68 = v24;
    v25 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
    v73 = *(*(v24 - 8) + 72);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7279960;
    *&v79 = sub_1D6B246AC(*(v16 + 1));

    sub_1D5F81CCC(&v79);
    v67 = v26;

    sub_1D5B49DA8(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();
    v27 = sub_1D7261F3C();
    v29 = v28;

    sub_1D711F844(0x73646E694BLL, 0xE500000000000000, v27, v29, (v26 + v25));
    v30 = type metadata accessor for FormatInspectionItem(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v72 = v26 + v25;
    v75 = v30;
    v76 = v32;
    v74 = v31 + 56;
    (v32)(v26 + v25, 0, 1);
    LODWORD(v77) = *v16;
    *&v79 = sub_1D72644BC();
    *(&v79 + 1) = v33;
    MEMORY[0x1DA6F9910](544175136, 0xE400000000000000);
    v34 = *(v16 + 1);
    v70 = inited;
    v71 = v7;
    if (v34 == 0x7FFFFFFF)
    {
      v35 = 0xE300000000000000;
      v36 = 7889229;
    }

    else
    {
      LODWORD(v77) = v34;
      v36 = sub_1D72644BC();
      v35 = v37;
    }

    MEMORY[0x1DA6F9910](v36, v35);

    v39 = v72;
    v38 = v73;
    v40 = sub_1D711F844(0x65676E6152, 0xE500000000000000, v79, *(&v79 + 1), (v72 + v73));
    v41 = v75;
    v76(v39 + v38, 0, 1, v75, v40);
    v42 = *(v16 + 2);
    v77 = *(v42 + 16);
    *&v79 = sub_1D72644BC();
    *(&v79 + 1) = v43;
    MEMORY[0x1DA6F9910](0x747265706F725020, 0xEB00000000736569);
    v44 = v79;
    sub_1D6976EE8(v42);
    v46 = sub_1D5F64170(v45);

    v47 = sub_1D5F62BFC(v46);

    v48 = sub_1D7073500(v47);

    sub_1D711AD20(0x69747265706F7250, 0xEA00000000007365, v48, v44, *(&v44 + 1), (v39 + 2 * v38));
    (v76)(v39 + 2 * v38, 0, 1, v41);
    sub_1D5B4BF00(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
    v49 = swift_initStackObject();
    *(v49 + 16) = v66;
    v85 = v95;
    v86 = v96;
    v87 = v97;
    v88 = v98;
    v81 = v91;
    v82 = v92;
    v83 = v93;
    v84 = v94;
    v79 = v89;
    v80 = v90;
    v50 = *(v16 + 4);
    v77 = *(v16 + 3);
    v78 = v50;
    sub_1D5D615EC(v77, v50);
    v51 = sub_1D6A63270(&v79, &v77);
    sub_1D5CDE22C(v77, v78);
    *(v49 + 56) = &type metadata for FormatInspection;
    *(v49 + 64) = &off_1F51E3FD0;
    *(v49 + 32) = v51;
    v52 = sub_1D5F62BFC(v49);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v49 + 32));
    v53 = sub_1D7073500(v52);

    sub_1D711AD20(0x7261696C69787541, 0xE900000000000079, v53, 0, 0, (v39 + 3 * v38));
    (v76)(v39 + 3 * v38, 0, 1, v75);
    v54 = v71;
    sub_1D5CDE3EC(&v16[*(v69 + 36)], v71, sub_1D5B57CA0);
    v55 = sub_1D725B76C();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v54, 1, v55) == 1)
    {
      sub_1D5CDE60C(v54, sub_1D5B57CA0);
      v57 = 0;
      v58 = 0xE000000000000000;
    }

    else
    {
      v57 = sub_1D725B75C();
      v58 = v59;
      (*(v56 + 8))(v54, v55);
    }

    v60 = (v72 + 4 * v73);
    v61 = sub_1D711F844(0xD000000000000011, 0x80000001D73E6420, v57, v58, v60);
    v76(v60, 0, 1, v75, v61);
    sub_1D6795150(0x746553206D657449, 0xE800000000000000, 0, 0, v67, &v79);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v62 = v70;
    *(v70 + 56) = &type metadata for FormatInspectionGroup;
    *(v62 + 64) = &off_1F518B2C0;
    v63 = swift_allocObject();
    *(v62 + 32) = v63;
    *(v63 + 48) = v81;
    v64 = v80;
    *(v63 + 16) = v79;
    *(v63 + 32) = v64;
    v65 = sub_1D7073500(v62);
    swift_setDeallocating();
    sub_1D5CDE60C(v62 + 32, sub_1D5E4F358);
    sub_1D5CDE60C(v16, type metadata accessor for FormatSlotDefinitionItemSet);
    return v65;
  }
}

uint64_t sub_1D6B26530(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73646E696BLL && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7261696C69787561 && a2 == 0xE900000000000079 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B8F40 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6B26744()
{
  sub_1D6B26C0C(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7323CA0;
  v1 = *MEMORY[0x1E69DE0C0];
  v2 = *MEMORY[0x1E69DE100];
  *(v0 + 32) = *MEMORY[0x1E69DE0C0];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69DE0F8];
  v4 = *MEMORY[0x1E69DE230];
  *(v0 + 48) = *MEMORY[0x1E69DE0F8];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E69DE238];
  v6 = *MEMORY[0x1E69DE128];
  *(v0 + 64) = *MEMORY[0x1E69DE238];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E69DE0B0];
  v8 = *MEMORY[0x1E69DE170];
  *(v0 + 80) = *MEMORY[0x1E69DE0B0];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E69DE198];
  v79 = *MEMORY[0x1E69DE130];
  v10 = *MEMORY[0x1E69DE130];
  *(v0 + 96) = *MEMORY[0x1E69DE198];
  *(v0 + 104) = v10;
  v76 = *MEMORY[0x1E69DE180];
  v82 = *MEMORY[0x1E69DE158];
  v11 = *MEMORY[0x1E69DE158];
  *(v0 + 112) = *MEMORY[0x1E69DE180];
  *(v0 + 120) = v11;
  v12 = *MEMORY[0x1E69DE168];
  v81 = *MEMORY[0x1E69DE0D8];
  v13 = *MEMORY[0x1E69DE0D8];
  *(v0 + 128) = *MEMORY[0x1E69DE168];
  *(v0 + 136) = v13;
  v77 = *MEMORY[0x1E69DE178];
  v85 = *MEMORY[0x1E69DE0F0];
  v14 = *MEMORY[0x1E69DE0F0];
  *(v0 + 144) = *MEMORY[0x1E69DE178];
  *(v0 + 152) = v14;
  v80 = *MEMORY[0x1E69DE228];
  v88 = *MEMORY[0x1E69DE1D0];
  v15 = *MEMORY[0x1E69DE1D0];
  *(v0 + 160) = *MEMORY[0x1E69DE228];
  *(v0 + 168) = v15;
  v78 = *MEMORY[0x1E69DE108];
  v87 = *MEMORY[0x1E69DE188];
  v16 = *MEMORY[0x1E69DE188];
  *(v0 + 176) = *MEMORY[0x1E69DE108];
  *(v0 + 184) = v16;
  v83 = *MEMORY[0x1E69DE1A0];
  v91 = *MEMORY[0x1E69DE208];
  v17 = *MEMORY[0x1E69DE208];
  *(v0 + 192) = *MEMORY[0x1E69DE1A0];
  *(v0 + 200) = v17;
  v86 = *MEMORY[0x1E69DE1B8];
  v94 = *MEMORY[0x1E69DE1C8];
  v18 = *MEMORY[0x1E69DE1C8];
  *(v0 + 208) = *MEMORY[0x1E69DE1B8];
  *(v0 + 216) = v18;
  v84 = *MEMORY[0x1E69DE1C0];
  v93 = *MEMORY[0x1E69DE1E0];
  v19 = *MEMORY[0x1E69DE1E0];
  *(v0 + 224) = *MEMORY[0x1E69DE1C0];
  *(v0 + 232) = v19;
  v89 = *MEMORY[0x1E69DE1E8];
  v97 = *MEMORY[0x1E69DE1D8];
  v20 = *MEMORY[0x1E69DE1D8];
  *(v0 + 240) = *MEMORY[0x1E69DE1E8];
  *(v0 + 248) = v20;
  v92 = *MEMORY[0x1E69DE220];
  v21 = *MEMORY[0x1E69DE1B0];
  v100 = *MEMORY[0x1E69DE1B0];
  *(v0 + 256) = *MEMORY[0x1E69DE220];
  *(v0 + 264) = v21;
  v90 = *MEMORY[0x1E69DE140];
  v99 = *MEMORY[0x1E69DE138];
  v22 = *MEMORY[0x1E69DE138];
  *(v0 + 272) = *MEMORY[0x1E69DE140];
  *(v0 + 280) = v22;
  v95 = *MEMORY[0x1E69DE118];
  v23 = *MEMORY[0x1E69DE110];
  v103 = *MEMORY[0x1E69DE110];
  *(v0 + 288) = *MEMORY[0x1E69DE118];
  *(v0 + 296) = v23;
  v98 = *MEMORY[0x1E69DE200];
  v24 = *MEMORY[0x1E69DE1F8];
  v106 = *MEMORY[0x1E69DE1F8];
  *(v0 + 304) = *MEMORY[0x1E69DE200];
  *(v0 + 312) = v24;
  v96 = *MEMORY[0x1E69DE210];
  v25 = *MEMORY[0x1E69DE1F0];
  v105 = *MEMORY[0x1E69DE1F0];
  *(v0 + 320) = *MEMORY[0x1E69DE210];
  *(v0 + 328) = v25;
  v101 = *MEMORY[0x1E69DE0C8];
  v26 = *MEMORY[0x1E69DE240];
  v108 = *MEMORY[0x1E69DE240];
  *(v0 + 336) = *MEMORY[0x1E69DE0C8];
  *(v0 + 344) = v26;
  v104 = *MEMORY[0x1E69DE0B8];
  v27 = *MEMORY[0x1E69DE218];
  v110 = *MEMORY[0x1E69DE218];
  *(v0 + 352) = *MEMORY[0x1E69DE0B8];
  *(v0 + 360) = v27;
  v102 = *MEMORY[0x1E69DE1A8];
  v109 = *MEMORY[0x1E69DE120];
  *(v0 + 368) = *MEMORY[0x1E69DE1A8];
  *(v0 + 376) = v109;
  v107 = *MEMORY[0x1E69DE148];
  v28 = *MEMORY[0x1E69DE0D0];
  v111 = *MEMORY[0x1E69DE0D0];
  *(v0 + 384) = *MEMORY[0x1E69DE148];
  *(v0 + 392) = v28;
  v29 = v1;
  v30 = v2;
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  v36 = v8;
  v37 = v9;
  v38 = v79;
  v39 = v76;
  v40 = v82;
  v41 = v12;
  v42 = v81;
  v43 = v77;
  v44 = v85;
  v45 = v80;
  v46 = v88;
  v47 = v78;
  v48 = v87;
  v49 = v83;
  v50 = v91;
  v51 = v86;
  v52 = v94;
  v53 = v84;
  v54 = v93;
  v55 = v89;
  v56 = v97;
  v57 = v92;
  v58 = v100;
  v59 = v90;
  v60 = v99;
  v61 = v95;
  v62 = v103;
  v63 = v98;
  v64 = v106;
  v65 = v96;
  v66 = v105;
  v67 = v101;
  v68 = v108;
  v69 = v104;
  v70 = v110;
  v71 = v102;
  v72 = v109;
  v73 = v107;
  v74 = v111;
  return v0;
}

void sub_1D6B26C0C(uint64_t a1)
{
  if (!qword_1EDF01D10)
  {
    type metadata accessor for Identifier(255);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF01D10);
    }
  }
}

void sub_1D6B26C9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  if (v4 <= 5)
  {
    if (v4 == 4)
    {
      v7 = -63;
    }

    else
    {
      v7 = -31;
    }

    if (v4 == 3)
    {
      v8 = -32;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = -96;
    }

    else
    {
      v9 = -64;
    }

    if (*(a1 + 16))
    {
      v6 = v9;
    }

    else
    {
      v6 = 0x80;
    }

    if (*(a1 + 16) > 2u)
    {
      v6 = v8;
    }
  }

  else
  {
    v5 = *(a1 + 8);
    if (*(a1 + 16) <= 8u)
    {
      if (v4 == 6)
      {
        v18 = *(v3 + 16);
        v19 = MEMORY[0x1E69E7CC0];
        if (v18)
        {
          v45 = *(a1 + 8);
          v47 = MEMORY[0x1E69E7CC0];
          sub_1D5BFC364(0, v18, 0);
          v19 = v47;
          v20 = (v3 + 40);
          do
          {
            v22 = *(v20 - 1);
            v21 = *v20;
            v24 = *(v47 + 16);
            v23 = *(v47 + 24);

            if (v24 >= v23 >> 1)
            {
              sub_1D5BFC364((v23 > 1), v24 + 1, 1);
            }

            *(v47 + 16) = v24 + 1;
            v25 = v47 + 16 * v24;
            *(v25 + 32) = v22;
            *(v25 + 40) = v21;
            v20 += 2;
            --v18;
          }

          while (v18);
          v5 = v45;
        }

        v42 = sub_1D5B86020(v19);

        sub_1D62B7514(v3, v5, 6u);
        v6 = 64;
        v3 = v42;
      }

      else if (v4 == 7)
      {
        v10 = *(v3 + 16);
        v11 = MEMORY[0x1E69E7CC0];
        if (v10)
        {
          v44 = *(a1 + 8);
          v46 = MEMORY[0x1E69E7CC0];
          sub_1D5BFC364(0, v10, 0);
          v11 = v46;
          v12 = (v3 + 40);
          do
          {
            v14 = *(v12 - 1);
            v13 = *v12;
            v16 = *(v46 + 16);
            v15 = *(v46 + 24);

            if (v16 >= v15 >> 1)
            {
              sub_1D5BFC364((v15 > 1), v16 + 1, 1);
            }

            *(v46 + 16) = v16 + 1;
            v17 = v46 + 16 * v16;
            *(v17 + 32) = v14;
            *(v17 + 40) = v13;
            v12 += 2;
            --v10;
          }

          while (v10);
          v5 = v44;
        }

        v43 = sub_1D5B86020(v11);

        sub_1D62B7514(v3, v5, 7u);
        v6 = 96;
        v3 = v43;
      }

      else
      {
        v26 = *(v3 + 16);
        v27 = MEMORY[0x1E69E7CC0];
        if (v26)
        {
          v48 = MEMORY[0x1E69E7CC0];
          sub_1D6999E0C(0, v26, 0);
          v27 = v48;
          v28 = (v3 + 32);
          do
          {
            v29 = *v28++;
            v30 = qword_1D7323F10[v29];
            v32 = *(v48 + 16);
            v31 = *(v48 + 24);
            if (v32 >= v31 >> 1)
            {
              sub_1D6999E0C((v31 > 1), v32 + 1, 1);
            }

            *(v48 + 16) = v32 + 1;
            *(v48 + 8 * v32 + 32) = v30;
            --v26;
          }

          while (v26);
        }

        v33 = sub_1D62DCD64(v27);

        sub_1D62B7514(v3, v5, 8u);
        v6 = 0;
        v3 = v33;
      }
    }

    else if (v4 - 10 >= 3)
    {
      v34 = *(v3 + 16);
      v35 = MEMORY[0x1E69E7CC0];
      if (v34)
      {
        v49 = MEMORY[0x1E69E7CC0];
        sub_1D6999E0C(0, v34, 0);
        v35 = v49;
        v36 = (v3 + 32);
        do
        {
          v37 = *v36++;
          v38 = qword_1D7323F10[v37];
          v40 = *(v49 + 16);
          v39 = *(v49 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1D6999E0C((v39 > 1), v40 + 1, 1);
          }

          *(v49 + 16) = v40 + 1;
          *(v49 + 8 * v40 + 32) = v38;
          --v34;
        }

        while (v34);
      }

      v41 = sub_1D62DCD64(v35);

      sub_1D62B7514(v3, v5, 9u);
      v6 = 32;
      v3 = v41;
    }

    else
    {
      sub_1D62B7514(*a1, v5, v4);
      v3 = 0;
      v6 = -2;
    }
  }

  *a2 = v3;
  *(a2 + 8) = v6;
}

BOOL _s8NewsFeed22FormatGroupRequirementO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_35;
      }

      sub_1D62B7514(*a1, v2, 1u);
      sub_1D62B7514(v6, v5, 1u);
      return *&v3 == *&v6;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_35;
      }

      v8 = *a1;
      v9 = *a2;
      sub_1D62B7514(*a1, v2, 2u);
      v10 = v6;
      v11 = v5;
      v12 = 2;
      goto LABEL_26;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_35;
      }

      v8 = *a1;
      v9 = *a2;
      sub_1D62B7514(*a1, v2, 3u);
      v10 = v6;
      v11 = v5;
      v12 = 3;
      goto LABEL_26;
    case 4u:
      if (v7 != 4)
      {
        goto LABEL_35;
      }

      v8 = *a1;
      v9 = *a2;
      sub_1D62B7514(*a1, v2, 4u);
      v10 = v6;
      v11 = v5;
      v12 = 4;
      goto LABEL_26;
    case 5u:
      if (v7 != 5)
      {
        goto LABEL_35;
      }

      v8 = *a1;
      v9 = *a2;
      sub_1D62B7514(*a1, v2, 5u);
      v10 = v6;
      v11 = v5;
      v12 = 5;
      goto LABEL_26;
    case 6u:
      v23 = *a1;
      if (v7 != 6)
      {
        goto LABEL_34;
      }

      v14 = sub_1D6709340(v23, *a2);
      sub_1D66F4990(v6, v5, 6u);
      sub_1D66F4990(v3, v2, 6u);
      sub_1D62B7514(v3, v2, 6u);
      v15 = v6;
      v16 = v5;
      v17 = 6;
      goto LABEL_33;
    case 7u:
      v22 = *a1;
      if (v7 != 7)
      {
        goto LABEL_34;
      }

      v14 = sub_1D6709340(v22, *a2);
      sub_1D66F4990(v6, v5, 7u);
      sub_1D66F4990(v3, v2, 7u);
      sub_1D62B7514(v3, v2, 7u);
      v15 = v6;
      v16 = v5;
      v17 = 7;
      goto LABEL_33;
    case 8u:
      if (v7 != 8)
      {
        goto LABEL_34;
      }

      sub_1D66F4990(*a2, *(a2 + 8), 8u);
      sub_1D66F4990(v3, v2, 8u);
      sub_1D633FFDC(v3, v6);
      v14 = v25;
      sub_1D62B7514(v3, v2, 8u);
      v15 = v6;
      v16 = v5;
      v17 = 8;
      goto LABEL_33;
    case 9u:
      if (v7 != 9)
      {
        goto LABEL_34;
      }

      sub_1D66F4990(*a2, *(a2 + 8), 9u);
      sub_1D66F4990(v3, v2, 9u);
      sub_1D633FFDC(v3, v6);
      v14 = v21;
      sub_1D62B7514(v3, v2, 9u);
      v15 = v6;
      v16 = v5;
      v17 = 9;
      goto LABEL_33;
    case 0xAu:
      if (v7 != 10)
      {
        goto LABEL_34;
      }

      sub_1D66F4990(*a2, *(a2 + 8), 0xAu);
      sub_1D66F4990(v3, v2, 0xAu);
      sub_1D6340114(v3, v6);
      v14 = v24;
      sub_1D62B7514(v3, v2, 0xAu);
      v15 = v6;
      v16 = v5;
      v17 = 10;
      goto LABEL_33;
    case 0xBu:
      if (v7 != 11)
      {
        goto LABEL_34;
      }

      sub_1D66F4990(*a2, *(a2 + 8), 0xBu);
      sub_1D66F4990(v3, v2, 0xBu);
      sub_1D6340114(v3, v6);
      v14 = v13;
      sub_1D62B7514(v3, v2, 0xBu);
      v15 = v6;
      v16 = v5;
      v17 = 11;
LABEL_33:
      sub_1D62B7514(v15, v16, v17);
      return v14 & 1;
    case 0xCu:
      if (v7 == 12)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1D66F4990(v3, v2, 0xCu);
          sub_1D66F4990(v3, v2, 0xCu);
          sub_1D62B7514(v3, v2, 0xCu);
          sub_1D62B7514(v3, v2, 0xCu);
          result = 1;
        }

        else
        {
          v19 = sub_1D72646CC();
          sub_1D66F4990(v6, v5, 0xCu);
          sub_1D66F4990(v3, v2, 0xCu);
          sub_1D62B7514(v3, v2, 0xCu);
          sub_1D62B7514(v6, v5, 0xCu);
          result = (v19 & 1) != 0;
        }
      }

      else
      {
LABEL_34:

LABEL_35:
        sub_1D66F4990(v6, v5, v7);
        sub_1D62B7514(v3, v2, v4);
        sub_1D62B7514(v6, v5, v7);
        result = 0;
      }

      break;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_35;
      }

      v8 = *a1;
      v9 = *a2;
      sub_1D62B7514(*a1, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
LABEL_26:
      sub_1D62B7514(v10, v11, v12);
      result = v8 == v9;
      break;
  }

  return result;
}

unint64_t sub_1D6B27530(uint64_t a1)
{
  result = sub_1D6B27558();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B27558()
{
  result = qword_1EC892090;
  if (!qword_1EC892090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892090);
  }

  return result;
}

unint64_t sub_1D6B275AC(void *a1)
{
  a1[1] = sub_1D5C50A4C();
  a1[2] = sub_1D5C90FF0();
  result = sub_1D6B275E4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B275E4()
{
  result = qword_1EC892098;
  if (!qword_1EC892098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892098);
  }

  return result;
}

uint64_t sub_1D6B27644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 17))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6B2768C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
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

void sub_1D6B276E0(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1D6AF4E6C, v8);
}

uint64_t type metadata accessor for DebugInspectViewController(uint64_t a1)
{
  result = qword_1EC892130;
  if (!qword_1EC892130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6B27A60(uint64_t a1)
{
  result = type metadata accessor for DebugGroupLayoutKey(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DebugInspectViewResult(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1D6B27B80()
{
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  v26 = *&v0[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource];

  v2 = sub_1D726203C();

  [v1 setTitle_];

  v3 = [v0 navigationItem];
  [v3 setLeftItemsSupplementBackButton_];

  v4 = [v0 navigationItem];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D72816C0;
  v6 = sub_1D726203C();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed_];

  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v10 = v0;
  v11 = [v9 initWithImage:v8 style:0 target:v10 action:sel_doTapToRadar];

  *(v5 + 32) = v11;
  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v12 = sub_1D726265C();

  [v4 setLeftBarButtonItems_];

  v13 = [v10 navigationItem];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D72816C0;
  v15 = sub_1D726203C();
  v16 = [v7 systemImageNamed_];

  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v16 style:2 target:v10 action:sel_doDismiss];

  *(v14 + 32) = v17;
  v18 = sub_1D726265C();

  [v13 setRightBarButtonItems_];

  v19 = [v10 view];
  if (v19)
  {
    v20 = v19;
    v21 = *&v10[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView];
    [v19 addSubview_];

    [v21 setDelegate_];
    [v21 setDataSource_];
    [v21 setAlwaysBounceVertical_];
    type metadata accessor for FeedItemTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for RequirementTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for KeyValueTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for LayoutTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for LoadingTableViewCell();
    sub_1D7262DAC();
    sub_1D5B5A498(0, &qword_1EC88DCB0, 0x1E69DD028);
    sub_1D7262DAC();
    type metadata accessor for SubtitleTableViewCell();
    sub_1D7262DAC();
    v22 = *&v10[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_searchController];
    [v22 setSearchResultsUpdater_];
    [v22 setHidesNavigationBarDuringPresentation_];
    [v22 setObscuresBackgroundDuringPresentation_];
    v23 = [v22 searchBar];
    v24 = sub_1D726203C();
    [v23 setPlaceholder_];

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D6332C30(v26, v25);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1D6B280C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector;
    v5 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector);
    v6 = Strong;

    *&v6[v4] = sub_1D6C76CB4(v5, a1);

    v7 = [v6 navigationItem];
    [v7 setSearchController_];

    [*&v6[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView] reloadData];
  }
}

id sub_1D6B281F4()
{
  v1 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DebugInspectViewResult(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B33100(&v0[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_result], v8, type metadata accessor for DebugInspectViewResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6332768(0);

    v10 = 0;
LABEL_8:
    sub_1D6B33638(v8, type metadata accessor for GroupLayoutBindingContext);
    return v10;
  }

  sub_1D63327EC(0);
  v12 = &v8[*(v11 + 48)];
  v13 = *v12;
  v15 = *(v12 + 5);
  v14 = *(v12 + 6);
  v16 = *&v0[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory + 24];
  v67 = *(v12 + 8);
  v62 = *(v12 + 24);
  v17 = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory], v16);
  v64 = v4;
  v18 = v17;
  v61 = v0;
  v63 = v1;
  type metadata accessor for DebugGroupLayoutKey(0);
  sub_1D7259E8C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1D7259E9C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v65 = sub_1D7259EBC();
  v66 = *v18;
  sub_1D6B33260(0, &qword_1EC88EFC8, type metadata accessor for DebugGroupDirectionalLayoutAttributes, MEMORY[0x1E69E6F90]);
  v35 = (type metadata accessor for DebugGroupDirectionalLayoutAttributes(0) - 8);
  v36 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D7273AE0;
  v38 = v37 + v36;
  v39 = v35[7];
  v40 = sub_1D725A5BC();
  (*(*(v40 - 8) + 56))(v37 + v36 + v39, 1, 1, v40);
  *v38 = v13;
  *(v38 + 24) = v62;
  *(v38 + 8) = v67;
  *(v38 + 40) = v15;
  *(v38 + 48) = v14;
  memset(v69, 0, sizeof(v69));
  v71 = 0;
  v70 = 2;
  type metadata accessor for FormatLayoutResizingProvider();
  v41 = swift_allocObject();
  *&v68.a = MEMORY[0x1E69E7CC0];
  sub_1D5B4A2C4(&qword_1EDF3BDF0, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  v42 = MEMORY[0x1E69D6388];
  sub_1D6B33260(0, &qword_1EDF1B5D0, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1D6B332C4(&qword_1EDF1B5C0, &qword_1EDF1B5D0, v42);

  *&v67 = v14;

  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v43 = sub_1D725A7AC();
  v44 = MEMORY[0x1E69E7CC8];
  *(v41 + 16) = v43;
  *(v41 + 24) = v44;
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  v45 = v65;
  sub_1D705E828(v37, MEMORY[0x1E69E7CC0], v69, v65, v41, nullsub_1, 0, v20, v22, v24, v26, v28, v30, v32, v34);
  v47 = v46;

  swift_setDeallocating();
  sub_1D6B33638(v37 + v36, type metadata accessor for DebugGroupDirectionalLayoutAttributes);
  swift_deallocClassInstance();
  v10 = v47;
  [v10 setUserInteractionEnabled_];
  [v10 bounds];
  if (CGRectGetWidth(v72) <= 0.0)
  {

    goto LABEL_7;
  }

  result = [v61 view];
  if (result)
  {
    v49 = result;

    [v49 bounds];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v73.origin.x = v51;
    v73.origin.y = v53;
    v73.size.width = v55;
    v73.size.height = v57;
    Width = CGRectGetWidth(v73);
    [v10 bounds];
    v59 = fmin(Width / CGRectGetWidth(v74), 1.0);
    CGAffineTransformMakeScale(&v68, v59, v59);
    [v10 setTransform_];
LABEL_7:

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1D6B289C0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [v0 navigationItem];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D72816C0;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v4 sizeToFit];
  [v4 startAnimating];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

  *(v3 + 32) = v5;
  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v6 = sub_1D726265C();

  [v2 setLeftBarButtonItems_];

  sub_1D725BDCC();
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  v7 = sub_1D726308C();
  *(swift_allocObject() + 16) = v1;
  v8 = v1;
  sub_1D725BAAC();

  v9 = sub_1D726308C();
  sub_1D725BADC();
}

void sub_1D6B28C2C(_OWORD *a1, char *a2, uint64_t a3, __n128 a4)
{
  v82 = a3;
  v80 = sub_1D725D52C();
  v84 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v6);
  v71 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D725D7FC();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v78 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1D6B33260(0, &unk_1EDF3B6E0, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v83 = &v70 - v14;
  sub_1D6B33260(0, &unk_1EC88DF00, MEMORY[0x1E69D8750], v11);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v79 = &v70 - v17;
  v18 = a1[3];
  v92 = a1[2];
  v93 = v18;
  v94 = a1[4];
  v19 = a1[1];
  *v91 = *a1;
  *&v91[16] = v19;
  v20 = *&a2[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource];
  swift_beginAccess();
  v21 = v20[7];
  swift_beginAccess();
  v22 = v20[8];
  swift_beginAccess();
  v24 = v20[9];
  v23 = v20[10];
  v96 = *&v91[8];
  v95 = *v91;
  v97 = *&v91[24];
  v98 = v92;
  v99 = v21;
  v100 = v22;
  v101 = v23;
  v102 = v24;
  v103 = *(&v94 + 1);

  sub_1D6B334D8(&v95);
  v25 = [a2 navigationItem];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D72816C0;
  v27 = sub_1D726203C();
  v28 = [objc_opt_self() systemImageNamed_];

  if (!v28)
  {
    __break(1u);
    goto LABEL_14;
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v28 style:0 target:a2 action:sel_doTapToRadar];

  *(v26 + 32) = v29;
  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v30 = sub_1D726265C();

  [v25 setLeftBarButtonItems_];

  v31 = *&a2[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter];
  v73 = *&a2[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter + 8];
  v74 = v31;
  sub_1D725F82C();
  v75 = sub_1D725F7DC();
  v32 = sub_1D725D19C();
  (*(*(v32 - 8) + 56))(v83, 1, 1, v32);
  sub_1D6B33260(0, &unk_1EDF19AF0, MEMORY[0x1E69D7970], MEMORY[0x1E69E6F90]);
  v33 = v84;
  v34 = *(v84 + 72);
  v35 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v36 = swift_allocObject();
  v88 = xmmword_1D7273AE0;
  *(v36 + 16) = xmmword_1D7273AE0;
  v37 = swift_allocObject();
  ObjectType = v34;
  v38 = swift_allocObject();
  *(v38 + 16) = v88;
  v39 = swift_allocObject();
  v39[5] = &type metadata for DebugInspection;
  v39[6] = sub_1D6084C1C();
  v40 = swift_allocObject();
  v39[2] = v40;
  v41 = v93;
  v40[3] = v92;
  v40[4] = v41;
  v40[5] = v94;
  v42 = *&v91[16];
  v40[1] = *v91;
  v40[2] = v42;
  v39[7] = 0xD000000000000015;
  v39[8] = 0x80000001D73E6690;
  *(v38 + v35) = v39;
  v43 = *(v33 + 104);
  v44 = v80;
  v43((v38 + v35), *MEMORY[0x1E69D7950], v80);
  v37[2] = v38;
  v37[3] = 0xD000000000000015;
  v37[4] = 0x80000001D73E6690;
  *(v36 + v35) = v37;
  v45 = *MEMORY[0x1E69D7960];
  v72 = v36;
  v87 = v33 + 104;
  *&v88 = v35;
  v46 = v44;
  v86 = v43;
  v43((v36 + v35), v45, v44);
  v47 = v82;
  v48 = *(v82 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext);
  sub_1D6B3357C(v91, v90);
  v49 = [v48 filePathsForDebugAttachments];
  v50 = v47;
  v51 = v84;
  if (!v49)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v52 = v49;
  v53 = sub_1D726267C();

  v54 = *(v53 + 16);
  v55 = v81;
  if (v54)
  {
    v90[0] = MEMORY[0x1E69E7CC0];
    sub_1D6999E2C(0, v54, 0);
    v56 = v53;
    v57 = v90[0];
    v85 = *MEMORY[0x1E69D7968];
    v84 = v51 + 32;
    v70 = v56;
    v58 = (v56 + 40);
    v59 = v71;
    do
    {
      v61 = *(v58 - 1);
      v60 = *v58;
      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      *(v62 + 24) = v60;
      *v59 = v62;
      v86(v59, v85, v46);
      v90[0] = v57;
      v64 = *(v57 + 16);
      v63 = *(v57 + 24);

      if (v64 >= v63 >> 1)
      {
        sub_1D6999E2C((v63 > 1), v64 + 1, 1);
        v57 = v90[0];
      }

      *(v57 + 16) = v64 + 1;
      (*v84)(v57 + v88 + v64 * ObjectType, v59, v46);
      v58 += 2;
      --v54;
    }

    while (v54);

    v55 = v81;
    v50 = v82;
  }

  else
  {

    v57 = MEMORY[0x1E69E7CC0];
  }

  ObjectType = swift_getObjectType();
  v89 = v72;
  sub_1D6988494(v57);
  v65 = *(v50 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider + 24);
  v66 = *(v50 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider + 32);
  __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider), v65);
  v67 = (*(v66 + 8))(v65, v66);
  sub_1D6988494(v67);
  (*(v76 + 104))(v78, *MEMORY[0x1E69D79C8], v77);
  v68 = v79;
  sub_1D725F61C();
  v69 = sub_1D725F62C();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  sub_1D725D9CC();
  if (v55)
  {

    sub_1D6B335D8(v68, &unk_1EC88DF00, MEMORY[0x1E69D8750], MEMORY[0x1E69E6720], sub_1D6B33260);
  }

  else
  {
    sub_1D6B335D8(v68, &unk_1EC88DF00, MEMORY[0x1E69D8750], MEMORY[0x1E69E6720], sub_1D6B33260);
  }
}

void sub_1D6B295F4(uint64_t a1, void *a2, __n128 a3)
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC9BAD28;
  v4 = sub_1D7262EBC();
  sub_1D5B678C8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D5B7E2C0();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1D725C30C("Inspector tap to radar failed to generate inspections, error=%@", 63, 2, &dword_1D5B42000, v3, v4, v5);

  sub_1D7263F9C();
  v6 = sub_1D726203C();
  v7 = sub_1D726203C();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = sub_1D726203C();
  v10 = [objc_opt_self() actionWithTitle:v9 style:0 handler:0];

  [v8 addAction_];
  [a2 presentViewController:v8 animated:1 completion:0];
  v11 = [a2 navigationItem];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D72816C0;
  v13 = sub_1D726203C();
  v14 = [objc_opt_self() systemImageNamed_];

  if (v14)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v14 style:0 target:a2 action:sel_doTapToRadar];

    *(v12 + 32) = v15;
    sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
    v16 = sub_1D726265C();

    [v11 setLeftBarButtonItems_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D6B29AEC(char *a1, uint64_t a2)
{
  v487 = a1;
  sub_1D5C2AB28(0);
  v482 = *(v3 - 1);
  v483 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v466 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v479 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v478 = &v466 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1D6B33260(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v484 = &v466 - v13;
  sub_1D6B33260(0, &qword_1EC88B638, MEMORY[0x1E69D87C8], v10);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v466 - v16;
  v477 = sub_1D7261ACC();
  *&v476 = *(v477 - 8);
  MEMORY[0x1EEE9AC00](v477, v18);
  v475 = &v466 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DebugInspectViewItem(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v466 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v488 = &v466 - v27;
  v485 = v2;
  v28 = *&v2[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource];
  v29 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v486 = v28;
  v30 = *(v28 + v29);

  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_176;
  }

  if (result >= *(v30 + 16))
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v480 = v7;
  v481 = v6;
  v32 = *(v30 + 48 * result + 64);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (result < *(v32 + 16))
  {
    v33 = v488;
    sub_1D6B33100(v32 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * result, v488, type metadata accessor for DebugInspectViewItem);

    sub_1D6B33100(v33, v24, type metadata accessor for DebugInspectViewItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload != 3)
        {
          sub_1D6B32F14(0);
          v122 = &v24[*(v121 + 48)];
          v123 = v17;
          sub_1D6B32FB0(v122, v17);
          type metadata accessor for SubtitleTableViewCell();
          v105 = sub_1D7262D8C();
          v124 = [v105 textLabel];
          if (v124)
          {
            v125 = v124;
            v126 = sub_1D726203C();

            [v125 setText_];
          }

          else
          {
          }

          v174 = [v105 textLabel];
          if (v174)
          {
            v175 = v174;
            v176 = [objc_opt_self() systemFontOfSize_];
            [v175 setFont_];
          }

          v177 = [v105 detailTextLabel];
          if (v177)
          {
            v178 = v177;
            v179 = sub_1D725F88C();
            (*(*(v179 - 8) + 48))(v123, 1, v179);
            v180 = sub_1D726203C();

            [v178 setText_];
          }

          v181 = [v105 detailTextLabel];
          if (v181)
          {
            v182 = v181;
            v183 = [objc_opt_self() secondaryLabelColor];
            [v182 setTextColor_];
          }

          v184 = [v105 detailTextLabel];
          if (v184)
          {
            v185 = v184;
            v186 = [objc_opt_self() systemFontOfSize_];
            [v185 setFont_];
          }

          v187 = [v105 detailTextLabel];
          if (v187)
          {
            v188 = v187;
            [v187 setNumberOfLines_];
          }

          v189 = sub_1D725F88C();
          v190 = *(*(v189 - 8) + 48);
          if (v190(v123, 1, v189) == 1)
          {
            v191 = 0;
          }

          else
          {
            v191 = 3;
          }

          [v105 setSelectionStyle_];
          v192 = [v105 contentView];
          v193 = v190(v123, 1, v189);
          v194 = 1.0;
          if (v193 == 1)
          {
            v194 = 0.5;
          }

          [v192 setAlpha_];

          [v105 setAccessoryType_];
          sub_1D6B33638(v488, type metadata accessor for DebugInspectViewItem);
          sub_1D6B335D8(v123, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720], sub_1D6B33260);
          return v105;
        }

        v35 = *(v24 + 6);
        v483 = *(v24 + 5);
        v484 = v35;
        v36 = v24[56];
        sub_1D5B63F14(v24, &v494);
        type metadata accessor for LayoutTableViewCell();
        v37 = sub_1D7262D8C();
        v38 = [v37 textLabel];
        if (v38)
        {
          v39 = v38;
          v40 = *(&v495 + 1);
          v41 = v496;
          __swift_project_boxed_opaque_existential_1(&v494, *(&v495 + 1));
          _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0(v40, v41);
          v42 = sub_1D726203C();

          [v39 setText_];
        }

        v43 = [v37 imageView];
        if (v43)
        {
          v44 = v43;
          [v43 setImage_];
        }

        v45 = [v37 contentView];
        [v45 setAlpha_];

        v46 = &v485[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key];
        __swift_project_boxed_opaque_existential_1(&v485[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key + 16], *&v485[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key + 40]);
        v47 = sub_1D725AA4C();
        v49 = v48;
        __swift_project_boxed_opaque_existential_1(&v494, *(&v495 + 1));
        if (v47 == sub_1D725AA4C() && v49 == v50)
        {

          v51 = 3;
        }

        else
        {
          v134 = sub_1D72646CC();

          if (v134)
          {
            v51 = 3;
          }

          else
          {
            v51 = 1;
          }
        }

        [v37 setAccessoryType_];
        v135 = objc_opt_self();
        v105 = v37;
        v136 = [v135 systemBlueColor];
        [v105 setTintColor_];

        __swift_project_boxed_opaque_existential_1(v46 + 2, *(v46 + 5));
        v137 = sub_1D725AA4C();
        v139 = v138;
        __swift_project_boxed_opaque_existential_1(&v494, *(&v495 + 1));
        if (v137 == sub_1D725AA4C() && v139 == v140)
        {

          v141 = &selRef_systemBlueColor;
        }

        else
        {
          v142 = sub_1D72646CC();

          v141 = &selRef_lightGrayColor;
          if (v142)
          {
            v141 = &selRef_systemBlueColor;
          }
        }

        v143 = [v135 *v141];
        if (v36)
        {
          if (v36 == 1)
          {
            v144 = [v105 detailTextLabel];
            v145 = v486;
            v146 = v483;
            if (v144)
            {
              v147 = v144;
              *&v490 = 0;
              *(&v490 + 1) = 0xE000000000000000;
              v500[0] = v483;
              sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
              sub_1D7263F9C();
              v148 = sub_1D726203C();

              [v147 setText_];
            }

            v149 = [v105 imageView];
            if (v149)
            {
              v150 = v149;
              v151 = *(v145 + 48);
              v152 = sub_1D726366C();

              [v150 setImage_];
              v153 = v146;
              v154 = v484;
              v155 = 1;
LABEL_92:
              sub_1D6B330D8(v153, v154, v155);

LABEL_135:
              sub_1D6B33638(v488, type metadata accessor for DebugInspectViewItem);
              goto LABEL_136;
            }

            v309 = v146;
            v310 = v484;
            v311 = 1;
          }

          else
          {
            [v105 setAccessoryType_];
            [v105 setSelectionStyle_];
            v211 = [v105 contentView];
            [v211 setAlpha_];

            v212 = [v105 detailTextLabel];
            v213 = v483;
            if (v212)
            {
              v214 = v212;
              v215 = sub_1D726203C();
              [v214 setText_];
            }

            v216 = [v105 imageView];
            if (v216)
            {
              v217 = v216;
              v218 = *(v486 + 48);
              v219 = sub_1D726366C();

              [v217 setImage_];
              v153 = v213;
              v154 = v484;
              v155 = 2;
              goto LABEL_92;
            }

            v309 = v213;
            v310 = v484;
            v311 = 2;
          }

          sub_1D6B330D8(v309, v310, v311);
          goto LABEL_135;
        }

        v195 = [v105 detailTextLabel];
        if (v195)
        {
          v196 = v195;
          v197 = sub_1D726203C();
          [v196 setText_];
        }

        v198 = swift_allocObject();
        v487 = v105;
        swift_unknownObjectWeakInit();
        sub_1D5B68374(&v494, &v490);
        sub_1D5B68374(&v490, v500);
        v199 = swift_allocObject();
        *(v199 + 16) = v198;
        sub_1D5B63F14(&v490, v199 + 24);
        __swift_project_boxed_opaque_existential_1(&v494, *(&v495 + 1));

        v200 = sub_1D725AA4C();
        v202 = v201;
        v203 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_layoutImages;
        v204 = v486;
        swift_beginAccess();
        v205 = *(v204 + v203);
        if (*(v205 + 16))
        {
          v206 = sub_1D5B69D90(v200, v202);
          v208 = v207;

          if (v208)
          {
            v209 = *(*(v205 + 56) + 8 * v206);
            swift_endAccess();
            v210 = v209;
            sub_1D6B2D74C(v209, v198, v500);

            v105 = v487;
            sub_1D6B330D8(v483, v484, 0);

LABEL_132:
            sub_1D6B33638(v488, type metadata accessor for DebugInspectViewItem);
            __swift_destroy_boxed_opaque_existential_1(v500);

LABEL_136:
            __swift_destroy_boxed_opaque_existential_1(&v494);
            return v105;
          }
        }

        else
        {
        }

        swift_endAccess();
        sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
        v313 = v475;
        v312 = v476;
        v314 = v477;
        (*(v476 + 104))(v475, *MEMORY[0x1E69E7F88], v477);
        v315 = sub_1D72630CC();
        (*(v312 + 8))(v313, v314);
        sub_1D5B68374(&v494, v499);
        v316 = swift_allocObject();
        sub_1D5B63F14(v499, v316 + 16);
        type metadata accessor for DebugInspectViewDataSource(0);
        sub_1D725BDBC();

        *(swift_allocObject() + 16) = v143;
        v485 = v143;
        v317 = sub_1D725B92C();
        sub_1D5B5A498(0, &qword_1EDF1A690, 0x1E69DCAB8);
        sub_1D725BA8C();

        v318 = sub_1D726308C();
        sub_1D5B68374(&v494, v499);
        v319 = swift_allocObject();
        sub_1D5B63F14(v499, v319 + 16);
        *(v319 + 56) = sub_1D6B333C4;
        *(v319 + 64) = v199;

        sub_1D725BAAC();

        v320 = sub_1D725B92C();
        sub_1D725BACC();

        v210 = v485;
        v105 = v487;

        sub_1D6B330D8(v483, v484, 0);
        goto LABEL_132;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v473 = *v24;
        v486 = *(v24 + 2);
        type metadata accessor for SubtitleTableViewCell();
        v487 = sub_1D7262D8C();
        [v487 setAccessoryType_];
        v485 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
        sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
        v60 = v59;
        inited = swift_initStackObject();
        v476 = xmmword_1D7270C10;
        *(inited + 16) = xmmword_1D7270C10;
        v62 = *MEMORY[0x1E69DB648];
        *(inited + 32) = *MEMORY[0x1E69DB648];
        v63 = objc_opt_self();
        v472 = v62;
        v64 = [v63 systemFontOfSize_];
        v65 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
        *(inited + 40) = v64;
        v66 = *MEMORY[0x1E69DB650];
        v477 = v65;
        *(inited + 64) = v65;
        *(inited + 72) = v66;
        v67 = objc_opt_self();
        v471 = v66;
        v475 = v67;
        v68 = [v67 labelColor];
        v69 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
        *(inited + 104) = v69;
        *(inited + 80) = v68;
        sub_1D5C09CEC(inited);
        swift_setDeallocating();
        sub_1D5C09DD4(0);
        v474 = v70;
        swift_arrayDestroy();
        v71 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v72 = sub_1D726203C();

        type metadata accessor for Key(0);
        v74 = v73;
        v473 = sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
        v75 = sub_1D7261D2C();
        v76 = v60;

        v77 = [v71 initWithString:v72 attributes:v75];

        [v485 appendAttributedString_];
        v78 = v484;
        sub_1D725BD0C();
        v79 = sub_1D725B17C();
        LODWORD(v72) = (*(*(v79 - 8) + 48))(v78, 1, v79);
        sub_1D6B335D8(v78, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720], sub_1D6B33260);
        if (v72 != 1)
        {
          v80 = swift_allocObject();
          *(v80 + 16) = v476;
          v81 = v472;
          *(v80 + 32) = v472;
          v82 = *MEMORY[0x1E69DB980];
          v83 = v81;
          *(v80 + 40) = [v63 systemFontOfSize:10.0 weight:v82];
          v84 = v471;
          *(v80 + 64) = v477;
          *(v80 + 72) = v84;
          v85 = v84;
          v86 = [v475 systemPinkColor];
          *(v80 + 104) = v69;
          *(v80 + 80) = v86;
          sub_1D5C09CEC(v80);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v87 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v88 = sub_1D726203C();
          v89 = sub_1D7261D2C();

          v90 = [v87 initWithString:v88 attributes:v89];

          [v485 appendAttributedString_];
        }

        v484 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
        v91 = v74;
        v92 = v486;
        v93 = *(v486 + 24);
        *&v494 = *(v486 + 16);
        *(&v494 + 1) = v93;

        MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
        v94 = sub_1D725BC9C();
        MEMORY[0x1DA6F9910](v94);

        v470 = v76;
        v95 = swift_allocObject();
        *(v95 + 16) = v476;
        v96 = v471;
        *(v95 + 32) = v471;
        v468 = v96;
        *(v95 + 40) = [v475 secondaryLabelColor];
        v469 = v69;
        v97 = v472;
        *(v95 + 64) = v69;
        *(v95 + 72) = v97;
        v467 = v97;
        v472 = v63;
        v98 = [v63 systemFontOfSize_];
        *(v95 + 104) = v477;
        *(v95 + 80) = v98;
        sub_1D5C09CEC(v95);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v99 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v100 = sub_1D726203C();

        v471 = v91;
        v101 = sub_1D7261D2C();

        v102 = [v99 initWithString:v100 attributes:v101];

        [v484 appendAttributedString_];
        v103 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
        swift_beginAccess();
        v104 = *(v92 + v103);
        v105 = v487;
        if (*(v104 + 16))
        {
          v106 = v481;
          sub_1D6B33100(v104 + ((*(v482 + 80) + 32) & ~*(v482 + 80)), v481, sub_1D5C2AB28);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_1D6B33638(v106, sub_1D5C2AB28);
          }

          else
          {
            sub_1D5B55504(0);
            v287 = *(v286 + 48);
            v288 = v478;
            v289 = v479;
            (*(v479 + 32))(v478, v106, v480);
            sub_1D6B33638(v106 + v287, type metadata accessor for FormatMetadata);
            v290 = sub_1D72583DC();
            *&v490 = 10;
            *(&v490 + 1) = 0xE100000000000000;
            MEMORY[0x1DA6F9910](v290);

            v291 = swift_allocObject();
            *(v291 + 16) = v476;
            v292 = v468;
            *(v291 + 32) = v468;
            v293 = v292;
            *(v291 + 40) = [v475 systemBlueColor];
            v294 = v467;
            *(v291 + 64) = v469;
            *(v291 + 72) = v294;
            v295 = v294;
            v296 = [v472 systemFontOfSize_];
            *(v291 + 104) = v477;
            *(v291 + 80) = v296;
            sub_1D5C09CEC(v291);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v297 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v298 = sub_1D726203C();

            v299 = sub_1D7261D2C();

            v300 = [v297 initWithString:v298 attributes:v299];

            [v484 appendAttributedString_];
            [v105 setAccessoryType_];
            (*(v289 + 8))(v288, v480);
          }
        }

        v301 = [v105 textLabel];
        v302 = v485;
        if (v301)
        {
          v303 = v301;
          [v301 setAttributedText_];
        }

        v304 = [v105 detailTextLabel];
        v305 = v484;
        if (v304)
        {
          v306 = v304;
          [v304 setAttributedText_];
        }

        v307 = [v105 detailTextLabel];
        if (v307)
        {
          v308 = v307;
          [v307 setNumberOfLines_];
        }

        [v105 setSelectionStyle_];
      }

      else
      {
        type metadata accessor for LoadingTableViewCell();
        v127 = sub_1D7262D8C();
        v128 = OBJC_IVAR____TtC8NewsFeed20LoadingTableViewCell_activityIndicatorView;
        v129 = *(v127 + OBJC_IVAR____TtC8NewsFeed20LoadingTableViewCell_activityIndicatorView);
        v130 = objc_opt_self();
        v131 = v129;
        v132 = [v130 darkGrayColor];
        [v131 setColor_];

        v133 = *(v127 + v128);
        v105 = v127;
        [v133 startAnimating];
      }

LABEL_126:
      sub_1D6B33638(v488, type metadata accessor for DebugInspectViewItem);
      return v105;
    }

    if (!EnumCaseMultiPayload)
    {
      v107 = *(v24 + 2);
      v494 = *(v24 + 1);
      v495 = v107;
      *&v496 = *(v24 + 6);
      type metadata accessor for SubtitleTableViewCell();
      v105 = sub_1D7262D8C();
      v108 = [v105 textLabel];
      if (v108)
      {
        v109 = v108;
        v110 = sub_1D726203C();

        [v109 setText_];
      }

      else
      {
      }

      v156 = [v105 textLabel];
      if (v156)
      {
        v157 = v156;
        v158 = [objc_opt_self() systemFontOfSize_];
        [v157 setFont_];
      }

      v159 = [v105 detailTextLabel];
      if (v159)
      {
        v160 = v159;
        sub_1D5F17E90(&v494, &v490);
        if (*(&v491 + 1))
        {
          __swift_project_boxed_opaque_existential_1(&v490, *(&v491 + 1));
          sub_1D72644BC();
          __swift_destroy_boxed_opaque_existential_1(&v490);
        }

        else
        {
          sub_1D60813D8(&v490, &qword_1EC880F40, &qword_1EC884160, MEMORY[0x1E69E6F68]);
        }

        v220 = sub_1D726203C();

        [v160 setText_];
      }

      v221 = [v105 detailTextLabel];
      if (v221)
      {
        v222 = v221;
        v223 = [objc_opt_self() secondaryLabelColor];
        [v222 setTextColor_];
      }

      v224 = [v105 detailTextLabel];
      if (v224)
      {
        v225 = v224;
        v226 = [objc_opt_self() systemFontOfSize_];
        [v225 setFont_];
      }

      v227 = [v105 detailTextLabel];
      if (v227)
      {
        v228 = v227;
        [v227 setNumberOfLines_];
      }

      [v105 setSelectionStyle_];

      sub_1D60813D8(&v494, &qword_1EC880F40, &qword_1EC884160, MEMORY[0x1E69E6F68]);
      goto LABEL_126;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v52 = *(v24 + 2);
      v53 = *(v24 + 3);
      v54 = v24[32];
      type metadata accessor for RequirementTableViewCell();
      v55 = sub_1D7262D8C();
      v56 = [v55 textLabel];
      if (v56)
      {
        v57 = v56;
        v58 = sub_1D726203C();

        [v57 setText_];
      }

      else
      {
      }

      v161 = [v55 textLabel];
      if (v161)
      {
        v162 = v161;
        [v161 setNumberOfLines_];
      }

      [v55 setSelectionStyle_];
      v163 = objc_opt_self();
      v105 = v55;
      v164 = [v163 systemBlueColor];
      [v105 setTintColor_];

      if (v54)
      {
        [v105 setAccessoryType_];
        v165 = [v105 detailTextLabel];
        if (v165)
        {
          v166 = v165;
          v167 = [v163 redColor];
          [v166 setTextColor_];
        }

        v168 = [v105 detailTextLabel];
        if (!v168)
        {
          goto LABEL_125;
        }
      }

      else
      {
        [v105 setAccessoryType_];
        v169 = [v105 detailTextLabel];
        if (v169)
        {
          v170 = v169;
          v171 = [v163 secondaryLabelColor];
          [v170 setTextColor_];
        }

        v168 = [v105 detailTextLabel];
        if (!v168)
        {
          goto LABEL_125;
        }
      }

      v172 = v168;
      v173 = sub_1D726203C();
      [v172 setText_];

LABEL_125:
      sub_1D607F09C(v52, v53);
      goto LABEL_126;
    }

    sub_1D5B63F14(v24, v500);
    type metadata accessor for FeedItemTableViewCell();
    v111 = sub_1D7262D8C();
    v498 = 1;
    v112 = &v485[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key];
    v113 = &v112[*(type metadata accessor for DebugGroupLayoutKey(0) + 24)];
    v114 = *(v113 + 4);
    v115 = *(v113 + 5);
    __swift_project_boxed_opaque_existential_1(v113 + 1, v114);
    (*(v115 + 64))(&v494, v114, v115);
    v116 = *(&v495 + 1);
    v487 = v111;
    if (*(&v495 + 1))
    {
      v117 = v496;
      __swift_project_boxed_opaque_existential_1(&v494, *(&v495 + 1));
      v118 = (*(v117 + 32))(v116, v117);
      v119 = v486;
      if (v118)
      {
        v120 = *(v118 + 32);

        __swift_destroy_boxed_opaque_existential_1(&v494);
        goto LABEL_104;
      }

      __swift_destroy_boxed_opaque_existential_1(&v494);
    }

    else
    {
      sub_1D60813D8(&v494, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
      v119 = v486;
    }

    v120 = MEMORY[0x1E69E7CD0];
LABEL_104:
    swift_beginAccess();
    v229 = *(v119 + 80);
    v230 = v501;
    v231 = v502;
    __swift_project_boxed_opaque_existential_1(v500, v501);
    v232 = *(v231 + 8);
    v233 = *(v232 + 8);

    v234 = v233(v230, v232);
    LOBYTE(v230) = sub_1D5BE240C(v234, v235, v229);

    if (v230)
    {
    }

    else
    {
      v236 = v501;
      v237 = v502;
      __swift_project_boxed_opaque_existential_1(v500, v501);
      v238 = (*(*(v237 + 8) + 8))(v236);
      LOBYTE(v236) = sub_1D5BE240C(v238, v239, v120);

      if (v236)
      {
        v498 = 0;
        v484 = 2;
        goto LABEL_109;
      }
    }

    v484 = 0;
LABEL_109:
    v240 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
    v241 = *(v113 + 9);
    MEMORY[0x1EEE9AC00](v240, v242);
    *(&v466 - 2) = v500;

    sub_1D5E3EDD4(sub_1D6B33428, v241, &v490);

    v494 = v490;
    v495 = v491;
    v496 = v492;
    v497 = v493;
    v485 = v240;
    if (*(&v490 + 1))
    {
      *&v490 = v494;

      MEMORY[0x1DA6F9910](10, 0xE100000000000000);
      sub_1D6B335D8(&v494, &unk_1EC892180, &type metadata for FeedSlot, MEMORY[0x1E69E6720], sub_1D5B67034);
      sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
      v243 = swift_allocObject();
      *(v243 + 16) = xmmword_1D7270C10;
      v244 = *MEMORY[0x1E69DB648];
      *(v243 + 32) = *MEMORY[0x1E69DB648];
      v245 = objc_opt_self();
      v246 = *MEMORY[0x1E69DB978];
      v247 = v244;
      v248 = [v245 systemFontOfSize:12.0 weight:v246];
      v249 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
      *(v243 + 40) = v248;
      v250 = *MEMORY[0x1E69DB650];
      *(v243 + 64) = v249;
      *(v243 + 72) = v250;
      v251 = objc_opt_self();
      v252 = v250;
      v240 = v485;
      v253 = [v251 systemBlueColor];
      *(v243 + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
      *(v243 + 80) = v253;
      sub_1D5C09CEC(v243);
      swift_setDeallocating();
      sub_1D5C09DD4(0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v254 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v255 = sub_1D726203C();

      type metadata accessor for Key(0);
      sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
      v256 = sub_1D7261D2C();

      v257 = [v254 initWithString:v255 attributes:v256];

      [v240 appendAttributedString_];
      goto LABEL_140;
    }

    v258 = *(v113 + 4);
    v259 = *(v113 + 5);
    __swift_project_boxed_opaque_existential_1(v113 + 1, v258);
    (*(v259 + 64))(&v490, v258, v259);
    v260 = *(&v491 + 1);
    if (!*(&v491 + 1))
    {
      sub_1D60813D8(&v490, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
      goto LABEL_140;
    }

    v261 = v492;
    __swift_project_boxed_opaque_existential_1(&v490, *(&v491 + 1));
    v262 = (*(v261 + 32))(v260, v261);
    if (v262)
    {
      v263 = *(v262 + 24);

      __swift_project_boxed_opaque_existential_1(v500, v501);
      v264 = sub_1D725AA4C();
      if (*(v263 + 16))
      {
        v266 = sub_1D5B69D90(v264, v265);
        v268 = v267;

        if (v268)
        {
          v269 = *(*(v263 + 56) + 8 * v266);

          __swift_destroy_boxed_opaque_existential_1(&v490);
          v270 = *(v269 + 24);
          if (v270)
          {
            *&v490 = *(v269 + 16);
            *(&v490 + 1) = v270;
            swift_bridgeObjectRetain_n();
            MEMORY[0x1DA6F9910](10, 0xE100000000000000);

            sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
            v271 = swift_allocObject();
            *(v271 + 16) = xmmword_1D7270C10;
            v272 = *MEMORY[0x1E69DB648];
            *(v271 + 32) = *MEMORY[0x1E69DB648];
            v273 = objc_opt_self();
            v274 = *MEMORY[0x1E69DB978];
            v275 = v272;
            v276 = [v273 systemFontOfSize:12.0 weight:v274];
            v277 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
            *(v271 + 40) = v276;
            v278 = *MEMORY[0x1E69DB650];
            *(v271 + 64) = v277;
            *(v271 + 72) = v278;
            v279 = objc_opt_self();
            v280 = v278;
            v240 = v485;
            v281 = [v279 systemBlueColor];
            *(v271 + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
            *(v271 + 80) = v281;
            v119 = v486;
            sub_1D5C09CEC(v271);
            swift_setDeallocating();
            sub_1D5C09DD4(0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v282 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v283 = sub_1D726203C();

            type metadata accessor for Key(0);
            sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
            v284 = sub_1D7261D2C();

            v285 = [v282 initWithString:v283 attributes:v284];

            [v240 appendAttributedString_];
          }

          else
          {
          }

LABEL_140:
          v321 = v501;
          v322 = v502;
          __swift_project_boxed_opaque_existential_1(v500, v501);
          v323 = (*(*(v322 + 8) + 16))(v321);
          if (v324)
          {
            *&v490 = v323;
            *(&v490 + 1) = v324;

            MEMORY[0x1DA6F9910](10, 0xE100000000000000);

            v482 = *(&v490 + 1);
            v483 = v490;
            sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
            v325 = swift_allocObject();
            *(v325 + 16) = xmmword_1D7279970;
            v326 = *MEMORY[0x1E69DB648];
            *(v325 + 32) = *MEMORY[0x1E69DB648];
            v327 = objc_opt_self();
            v328 = *MEMORY[0x1E69DB980];
            v329 = v326;
            v330 = [v327 systemFontOfSize:15.0 weight:v328];
            v331 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
            *(v325 + 40) = v330;
            v332 = *MEMORY[0x1E69DB650];
            *(v325 + 64) = v331;
            *(v325 + 72) = v332;
            v333 = *(v119 + 80);
            v334 = v501;
            v335 = v502;
            __swift_project_boxed_opaque_existential_1(v500, v501);
            v336 = *(v335 + 8);
            v337 = *(v336 + 8);
            v338 = v332;
            v240 = v485;

            v339 = v334;
            v119 = v486;
            v340 = v337(v339, v336);
            LOBYTE(v335) = sub_1D5BE240C(v340, v341, v333);

            v342 = objc_opt_self();
            v343 = &selRef_systemGray2Color;
            if (v335)
            {
              v343 = &selRef_secondaryLabelColor;
            }

            v344 = [v342 *v343];
            v345 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
            *(v325 + 80) = v344;
            v346 = *MEMORY[0x1E69DB6B8];
            *(v325 + 104) = v345;
            *(v325 + 112) = v346;
            *(v325 + 144) = MEMORY[0x1E69E6530];
            *(v325 + 120) = v484;
            v347 = v346;
            sub_1D5C09CEC(v325);
            swift_setDeallocating();
            sub_1D5C09DD4(0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v348 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v349 = sub_1D726203C();

            type metadata accessor for Key(0);
            sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
            v350 = sub_1D7261D2C();

            v351 = [v348 initWithString:v349 attributes:v350];

            [v240 appendAttributedString_];
          }

          v352 = v501;
          v353 = v502;
          __swift_project_boxed_opaque_existential_1(v500, v501);
          v354 = (*(*(v353 + 8) + 24))(v352);
          if (v355)
          {
            v482 = v354;
            v483 = v355;
            sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
            v356 = swift_allocObject();
            *(v356 + 16) = xmmword_1D7279970;
            v357 = *MEMORY[0x1E69DB648];
            *(v356 + 32) = *MEMORY[0x1E69DB648];
            v358 = objc_opt_self();
            v359 = v357;
            v360 = [v358 systemFontOfSize_];
            v361 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
            *(v356 + 40) = v360;
            v362 = *MEMORY[0x1E69DB650];
            *(v356 + 64) = v361;
            *(v356 + 72) = v362;
            v363 = *(v119 + 80);
            v364 = v501;
            v365 = v502;
            __swift_project_boxed_opaque_existential_1(v500, v501);
            v366 = *(v365 + 8);
            v367 = *(v366 + 8);
            v368 = v362;
            v240 = v485;

            v369 = v367(v364, v366);
            v119 = v486;
            LOBYTE(v364) = sub_1D5BE240C(v369, v370, v363);

            v371 = objc_opt_self();
            v372 = &selRef_labelColor;
            if ((v364 & 1) == 0)
            {
              v372 = &selRef_systemGray2Color;
            }

            v373 = [v371 *v372];
            v374 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
            *(v356 + 80) = v373;
            v375 = *MEMORY[0x1E69DB6B8];
            *(v356 + 104) = v374;
            *(v356 + 112) = v375;
            v376 = v498;
            *(v356 + 144) = MEMORY[0x1E69E6530];
            v377 = v376 == 0;
            v378 = v484;
            if (!v377)
            {
              v378 = 0;
            }

            *(v356 + 120) = v378;
            v379 = v375;
            sub_1D5C09CEC(v356);
            swift_setDeallocating();
            sub_1D5C09DD4(0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v380 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v381 = sub_1D726203C();

            type metadata accessor for Key(0);
            sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
            v382 = sub_1D7261D2C();

            v383 = [v380 initWithString:v381 attributes:v382];

            [v240 appendAttributedString_];
          }

          v384 = v487;
          v385 = [v384 textLabel];
          if (v385)
          {
            v386 = v385;
            [v385 setAttributedText_];
          }

          v387 = [v384 textLabel];
          if (v387)
          {
            v388 = v387;
            [v387 setNumberOfLines_];
          }

          [v384 setAccessoryType_];
          v389 = sub_1D6B2D4B0(v500);
          v482 = v390;
          v483 = v389;
          sub_1D6B33260(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
          v391 = swift_allocObject();
          *(v391 + 16) = xmmword_1D7279970;
          v392 = *MEMORY[0x1E69DB648];
          *(v391 + 32) = *MEMORY[0x1E69DB648];
          v393 = objc_opt_self();
          v394 = v392;
          v395 = [v393 systemFontOfSize_];
          v396 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
          *(v391 + 40) = v395;
          v397 = *MEMORY[0x1E69DB650];
          *(v391 + 64) = v396;
          *(v391 + 72) = v397;
          v398 = *(v119 + 80);
          v399 = v501;
          v400 = v502;
          __swift_project_boxed_opaque_existential_1(v500, v501);
          v401 = *(v400 + 8);
          v487 = v384;
          v402 = *(v401 + 8);
          v403 = v397;

          v404 = v402(v399, v401);
          LOBYTE(v400) = sub_1D5BE240C(v404, v405, v398);

          v406 = objc_opt_self();
          v407 = &selRef_systemGray2Color;
          if (v400)
          {
            v407 = &selRef_secondaryLabelColor;
          }

          v408 = [v406 *v407];
          v409 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
          *(v391 + 80) = v408;
          v410 = *MEMORY[0x1E69DB6B8];
          *(v391 + 104) = v409;
          *(v391 + 112) = v410;
          v411 = v498;
          *(v391 + 144) = MEMORY[0x1E69E6530];
          v377 = v411 == 0;
          v412 = v484;
          if (!v377)
          {
            v412 = 0;
          }

          *(v391 + 120) = v412;
          v413 = v410;
          sub_1D5C09CEC(v391);
          swift_setDeallocating();
          sub_1D5C09DD4(0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v414 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v415 = sub_1D726203C();

          type metadata accessor for Key(0);
          sub_1D5B4A2C4(&qword_1EDF1A8E0, type metadata accessor for Key, &unk_1D72719E0);
          v416 = sub_1D7261D2C();

          v417 = [v414 initWithString:v415 attributes:v416];

          v418 = [v487 detailTextLabel];
          if (v418)
          {
            v419 = v418;
            [v418 setAttributedText_];
          }

          v484 = v417;
          v420 = v486;
          swift_beginAccess();
          v421 = *(v420 + 56);
          v422 = v501;
          v423 = v502;
          __swift_project_boxed_opaque_existential_1(v500, v501);
          v424 = *(v423 + 8);
          v425 = *(v424 + 8);

          v426 = v425(v422, v424);
          v428 = sub_1D5BE240C(v426, v427, v421);

          if (v428)
          {
            v429 = objc_opt_self();
            v430 = v487;
            v431 = v487;
            v432 = &selRef_systemGreenColor;
          }

          else
          {
            swift_beginAccess();
            v433 = *(v420 + 64);

            v434 = v425(v422, v424);
            v436 = sub_1D5BE240C(v434, v435, v433);

            v429 = objc_opt_self();
            v430 = v487;
            v437 = v487;
            if ((v436 & 1) == 0)
            {
              v439 = [v429 secondarySystemBackgroundColor];
LABEL_166:
              v440 = v486;
              [v430 setBackgroundColor_];

              v441 = [v430 imageView];
              if (v441)
              {
                v442 = v441;
                [v441 setImage_];
              }

              v443 = v501;
              v444 = v502;
              __swift_project_boxed_opaque_existential_1(v500, v501);
              v445 = (*(*(v444 + 8) + 8))(v443);
              v446 = &v430[OBJC_IVAR____TtC8NewsFeed21FeedItemTableViewCell_identifier];
              *v446 = v445;
              v446[1] = v447;

              v448 = swift_allocObject();
              swift_unknownObjectWeakInit();
              sub_1D5B68374(v500, &v490);
              sub_1D5B68374(&v490, v499);
              v449 = swift_allocObject();
              *(v449 + 16) = v448;
              sub_1D5B63F14(&v490, v449 + 24);
              __swift_project_boxed_opaque_existential_1(v500, v501);

              v450 = sub_1D725AA4C();
              v452 = v451;
              v453 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_feedItemImages;
              swift_beginAccess();
              v454 = *(v440 + v453);
              if (*(v454 + 16))
              {
                v455 = sub_1D5B69D90(v450, v452);
                v457 = v456;

                if (v457)
                {
                  v458 = *(*(v454 + 56) + 8 * v455);
                  swift_endAccess();
                  v459 = v458;
                  sub_1D6B2D5C8(v459, v448, v499);

                  v105 = v487;

                  sub_1D6B33638(v488, type metadata accessor for DebugInspectViewItem);
LABEL_173:
                  __swift_destroy_boxed_opaque_existential_1(v499);

                  __swift_destroy_boxed_opaque_existential_1(v500);
                  return v105;
                }
              }

              else
              {
              }

              swift_endAccess();
              v460 = v501;
              v461 = v502;
              __swift_project_boxed_opaque_existential_1(v500, v501);
              v462 = *(v440 + 32);
              v463 = swift_allocObject();
              swift_weakInit();
              sub_1D5B68374(v500, v489);
              v464 = swift_allocObject();
              v464[2] = v463;
              sub_1D5B63F14(v489, (v464 + 3));
              v464[8] = sub_1D6B33448;
              v464[9] = v449;
              v465 = *(v461 + 8);

              sub_1D70A59C8(v462, sub_1D6B33454, v464, v460, v465);

              v105 = v487;

              sub_1D6B33638(v488, type metadata accessor for DebugInspectViewItem);

              goto LABEL_173;
            }

            v432 = &selRef_systemRedColor;
          }

          v438 = [v429 *v432];
          v439 = [v438 colorWithAlphaComponent_];

          goto LABEL_166;
        }
      }

      else
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v490);
    goto LABEL_140;
  }

LABEL_178:
  __break(1u);
  return result;
}

uint64_t sub_1D6B2D444(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_1D725AA4C();
  LOBYTE(v2) = sub_1D5BE240C(v3, v4, v2);

  return v2 & 1;
}

uint64_t sub_1D6B2D4B0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(*(v2 + 8) + 48))(v1);
  if (!v3)
  {
    return 2960685;
  }

  v4 = v3;
  [v3 agedPersonalizationScore];

  if (qword_1EC87DD88 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC9BAF48;
  v6 = sub_1D725A62C();
  v7 = [v5 stringForObjectValue_];

  if (!v7)
  {
    return sub_1D7262A9C();
  }

  v8 = sub_1D726207C();

  return v8;
}

void sub_1D6B2D5C8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC8NewsFeed21FeedItemTableViewCell_identifier);
    v6 = *(Strong + OBJC_IVAR____TtC8NewsFeed21FeedItemTableViewCell_identifier + 8);
    v8 = Strong;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  v11 = (*(*(v10 + 8) + 8))(v9);
  if (!v6)
  {

    return;
  }

  if (v7 == v11 && v6 == v12)
  {
  }

  else
  {
    v14 = sub_1D72646CC();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 imageView];

    if (v17)
    {
      [v17 setImage_];
    }
  }
}

void sub_1D6B2D74C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_5:
    v9 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v6 = Strong;
  v7 = [Strong textLabel];

  if (v7)
  {
    v8 = [v7 text];

    if (v8)
    {
      v9 = sub_1D726207C();
      v7 = v10;

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  v13 = _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0(v11, v12);
  if (!v7)
  {

    return;
  }

  if (v9 == v13 && v7 == v14)
  {
  }

  else
  {
    v16 = sub_1D72646CC();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 imageView];

    [v19 setImage_];
  }
}

unint64_t sub_1D6B2DBA4(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D5C2AB28(0);
  v208 = *(v3 - 1);
  v209 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  *&v210 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72585BC();
  v203 = *(v6 - 8);
  v204 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v202 = &v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725F88C();
  v212 = *(v9 - 1);
  v213 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v206 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v207 = &v184 - v14;
  sub_1D6B33260(0, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v214 = &v184 - v21;
  v189 = type metadata accessor for DebugInspectViewResult(0);
  MEMORY[0x1EEE9AC00](v189, v22);
  v196 = &v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v200 = &v184 - v26;
  v27 = sub_1D7261ABC();
  v194 = *(v27 - 8);
  v195 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v192 = &v184 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1D7261B2C();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193, v30);
  v190 = &v184 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D7261ACC();
  v187 = *(v32 - 8);
  v188 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v185 = &v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for DebugGroupLayoutKey(0);
  v186 = *(v205 - 8);
  v35 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v205, v36);
  v198 = &v184 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v199 = &v184 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v197 = (&v184 - v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v211 = (&v184 - v45);
  v46 = type metadata accessor for DebugInspectViewItem(0);
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v48);
  *&v217 = &v184 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v216 = &v184 - v52;
  v53 = sub_1D7258D4C();
  [a1 deselectRowAtIndexPath:v53 animated:1];

  v215 = v1;
  v54 = *&v1[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource];
  v55 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v56 = *(v54 + v55);

  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (result >= *(v56 + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v58 = *(v56 + 48 * result + 64);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (result >= *(v58 + 16))
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v59 = v216;
  sub_1D6B33100(v58 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * result, v216, type metadata accessor for DebugInspectViewItem);

  v60 = v217;
  sub_1D6B33100(v59, v217, type metadata accessor for DebugInspectViewItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v62 = *(v60 + 40);
        v213 = *(v60 + 48);
        v214 = v62;
        v63 = *(v60 + 56);
        sub_1D5B68374(v60, v237);
        v64 = &v215[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key];
        __swift_project_boxed_opaque_existential_1(&v215[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key + 16], *&v215[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key + 40]);
        v65 = sub_1D725AA4C();
        v67 = v66;
        __swift_project_boxed_opaque_existential_1(v237, v237[3]);
        if (v65 == sub_1D725AA4C() && v67 == v68)
        {

LABEL_23:
          sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);
          sub_1D6B330D8(v214, v213, v63);
          __swift_destroy_boxed_opaque_existential_1(v237);
          return __swift_destroy_boxed_opaque_existential_1(v217);
        }

        v92 = sub_1D72646CC();

        if (v92)
        {
          goto LABEL_23;
        }

        type metadata accessor for GroupLayoutBindingContext(0);
        v212 = swift_allocBox();
        v100 = v99;
        v101 = v205;
        LOBYTE(v234[0]) = 2;
        sub_1D62EFCE4(0, v234, v99);
        v102 = v211;
        sub_1D5B68374(v237, (v211 + 2));
        sub_1D6B33100(v100, v102 + *(v101 + 24), type metadata accessor for GroupLayoutBindingContext);
        sub_1D6B33100(&v64[*(v101 + 28)], v102 + *(v101 + 28), type metadata accessor for GroupLayoutContext);
        v103 = v102[5];
        v104 = v102[6];
        __swift_project_boxed_opaque_existential_1(v102 + 2, v103);
        *v102 = _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0(v103, v104);
        v102[1] = v105;
        if (v63)
        {
          if (v63 == 1)
          {
            v106 = v215;
            v107 = *&v215[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext];
            v206 = *&v215[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_feedPersonalizer];
            v207 = v107;
            v108 = v199;
            sub_1D6B33100(v211, v199, type metadata accessor for DebugGroupLayoutKey);
            sub_1D5B68374(&v106[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory], v235);
            sub_1D6332768(0);
            v110 = *(v109 + 48);
            v111 = v200;
            sub_1D6B33100(v100, v200, type metadata accessor for GroupLayoutBindingContext);
            v112 = v214;
            *(v111 + v110) = v214;
            swift_storeEnumTagMultiPayload();
            v210 = *&v106[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter];
            sub_1D6330700(&v106[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inventory], v234);
            sub_1D5B68374(&v106[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_headlineService], v233);
            sub_1D5B68374(&v106[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_recipeService], v232);
            sub_1D5B68374(&v106[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tagService], v231);
            sub_1D5B68374(&v106[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_webEmbedDataSourceService], v230);
            sub_1D5B68374(&v106[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider], v229);
            sub_1D5B68374(&v106[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_history], v228);
            v113 = __swift_mutable_project_boxed_opaque_existential_1(v235, v235[3]);
            v209 = &v184;
            v114 = MEMORY[0x1EEE9AC00](v113, v113);
            v116 = (&v184 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v117 + 16))(v116, v114);
            v118 = *v116;
            v119 = type metadata accessor for DebugGroupLayoutViewFactory();
            v227[4] = &off_1F51E3AE8;
            v227[3] = v119;
            v227[0] = v118;
            v120 = objc_allocWithZone(ObjectType);
            v121 = __swift_mutable_project_boxed_opaque_existential_1(v227, v119);
            v208 = &v184;
            v122 = MEMORY[0x1EEE9AC00](v121, v121);
            v124 = (&v184 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v125 + 16))(v124, v122);
            v126 = *v124;
            v226[4] = &off_1F51E3AE8;
            v226[3] = v119;
            v226[0] = v126;
            v127 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView;
            v128 = objc_allocWithZone(MEMORY[0x1E69DD020]);
            v129 = v112;
            *&v120[v127] = [v128 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
            v130 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_searchController;
            *&v120[v130] = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
            v131 = v206;
            v132 = v207;
            *&v120[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext] = v207;
            *&v120[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_feedPersonalizer] = v131;
            sub_1D6B33100(v108, &v120[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key], type metadata accessor for DebugGroupLayoutKey);
            sub_1D5B68374(v226, &v120[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory]);
            sub_1D6B33100(v111, &v120[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_result], type metadata accessor for DebugInspectViewResult);
            *&v120[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter] = v210;
            v133 = v197;
            sub_1D6B33100(v108, v197, type metadata accessor for DebugGroupLayoutKey);
            v134 = v111;
            v135 = v196;
            sub_1D6B33100(v134, v196, type metadata accessor for DebugInspectViewResult);
            sub_1D6330700(v234, v225);
            sub_1D5B68374(v233, v224);
            sub_1D5B68374(v232, v223);
            type metadata accessor for DebugInspectViewDataSource(0);
            swift_allocObject();
            v136 = v132;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v137 = sub_1D632A918(v133, v135, v225, v224, v223);
            *&v210 = v120;
            *&v120[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource] = v137;
            sub_1D5B68374(v231, v225);
            sub_1D5B68374(v230, v224);
            v138 = v198;
            sub_1D6B33100(v108, v198, type metadata accessor for DebugGroupLayoutKey);
            sub_1D5B68374(v228, v223);
            type metadata accessor for DebugInspector();
            v139 = swift_allocObject();
            *(v139 + 16) = 0;
            *(v139 + 24) = v136;
            *(v139 + 32) = v131;
            sub_1D5B68374(v225, v139 + 40);
            sub_1D5B68374(v224, v139 + 128);
            v140 = (v138 + *(v205 + 24));
            v141 = v140[4];
            v142 = v140[5];
            __swift_project_boxed_opaque_existential_1(v140 + 1, v141);
            v143 = *(v142 + 16);
            v144 = v136;
            swift_unknownObjectRetain();
            *(v139 + 80) = v143(v141, v142);
            v145 = v140[4];
            v146 = v140[5];
            __swift_project_boxed_opaque_existential_1(v140 + 1, v145);
            (*(v146 + 64))(v219, v145, v146);
            sub_1D68160C0(v219, v222);
            v147 = v222[1];
            *(v139 + 96) = v222[0];
            *(v139 + 112) = v147;
            v148 = v140[4];
            v149 = v140[5];
            __swift_project_boxed_opaque_existential_1(v140 + 1, v148);
            (*(v149 + 64))(v219, v148, v149);
            v150 = v220;
            if (v220)
            {
              v151 = v221;
              __swift_project_boxed_opaque_existential_1(v219, v220);
              v152 = (*(v151 + 32))(v150, v151);
              if (v152)
              {
                v153 = *(v152 + 32);

                __swift_destroy_boxed_opaque_existential_1(v219);
                v154 = v216;
                v155 = v217;
                v156 = v213;
                v157 = v210;
LABEL_41:
                *(v139 + 88) = v153;
                sub_1D5B68374(v223, v139 + 168);
                sub_1D6C6DDB0();
                v180 = sub_1D725B92C();
                sub_1D725BB2C();

                __swift_destroy_boxed_opaque_existential_1(v223);
                __swift_destroy_boxed_opaque_existential_1(v224);
                __swift_destroy_boxed_opaque_existential_1(v225);
                sub_1D6B33638(v198, type metadata accessor for DebugGroupLayoutKey);
                *&v157[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector] = v139;
                sub_1D6330700(v234, &v157[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inventory]);
                sub_1D5B68374(v233, &v157[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_headlineService]);
                sub_1D5B68374(v232, &v157[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_recipeService]);
                sub_1D5B68374(v231, &v157[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tagService]);
                sub_1D5B68374(v230, &v157[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_webEmbedDataSourceService]);
                sub_1D5B68374(v229, &v157[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider]);
                sub_1D5B68374(v228, &v157[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_history]);
                v218.receiver = v157;
                v218.super_class = ObjectType;
                v181 = objc_msgSendSuper2(&v218, sel_initWithNibName_bundle_, 0, 0);
                __swift_destroy_boxed_opaque_existential_1(v228);
                __swift_destroy_boxed_opaque_existential_1(v229);
                __swift_destroy_boxed_opaque_existential_1(v230);
                __swift_destroy_boxed_opaque_existential_1(v231);
                __swift_destroy_boxed_opaque_existential_1(v232);
                __swift_destroy_boxed_opaque_existential_1(v233);
                sub_1D6084EA8(v234);
                sub_1D6B33638(v200, type metadata accessor for DebugInspectViewResult);
                sub_1D6B33638(v199, type metadata accessor for DebugGroupLayoutKey);
                __swift_destroy_boxed_opaque_existential_1(v226);
                __swift_destroy_boxed_opaque_existential_1(v227);
                __swift_destroy_boxed_opaque_existential_1(v235);
                v182 = [v215 navigationController];
                if (v182)
                {
                  v183 = v182;
                  [v182 pushViewController:v181 animated:1];
                }

                else
                {
                }

                sub_1D6B330D8(v214, v156, 1);
                sub_1D6B33638(v211, type metadata accessor for DebugGroupLayoutKey);
                sub_1D6B33638(v154, type metadata accessor for DebugInspectViewItem);

                goto LABEL_45;
              }

              __swift_destroy_boxed_opaque_existential_1(v219);
            }

            else
            {
              sub_1D60813D8(v219, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
            }

            v154 = v216;
            v155 = v217;
            v156 = v213;
            v157 = v210;
            v153 = MEMORY[0x1E69E7CD0];
            goto LABEL_41;
          }

          sub_1D6B330D8(v214, v213, 2);
          sub_1D6B33638(v211, type metadata accessor for DebugGroupLayoutKey);
          sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);
        }

        else
        {
          sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
          v167 = v187;
          v166 = v188;
          v168 = v185;
          (*(v187 + 104))(v185, *MEMORY[0x1E69E7F88], v188);
          *&v210 = sub_1D72630CC();
          (*(v167 + 8))(v168, v166);
          sub_1D5B68374(v237, v225);
          v169 = v197;
          sub_1D6B33100(v211, v197, type metadata accessor for DebugGroupLayoutKey);
          v170 = (*(v186 + 80) + 64) & ~*(v186 + 80);
          v171 = swift_allocObject();
          sub_1D5B63F14(v225, v171 + 16);
          *(v171 + 56) = v212;
          sub_1D6B33168(v169, v171 + v170);
          v172 = v215;
          *(v171 + ((v35 + v170 + 7) & 0xFFFFFFFFFFFFFFF8)) = v215;
          v234[4] = sub_1D6B331CC;
          v234[5] = v171;
          v234[0] = MEMORY[0x1E69E9820];
          v234[1] = 1107296256;
          v234[2] = sub_1D5B6B06C;
          v234[3] = &block_descriptor_56;
          v173 = _Block_copy(v234);

          v174 = v172;
          v175 = v190;
          sub_1D7261AEC();
          v235[0] = MEMORY[0x1E69E7CC0];
          sub_1D5B4A2C4(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          v176 = MEMORY[0x1E69E7F60];
          sub_1D6B33260(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          sub_1D6B332C4(&qword_1EDF1B560, &qword_1EDF1B570, v176);
          v177 = v192;
          v178 = v195;
          sub_1D7263B6C();
          v179 = v210;
          MEMORY[0x1DA6FA730](0, v175, v177, v173);
          _Block_release(v173);

          sub_1D6B330D8(v214, v213, 0);
          (*(v194 + 8))(v177, v178);
          (*(v191 + 8))(v175, v193);
          sub_1D6B33638(v211, type metadata accessor for DebugGroupLayoutKey);
          sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);
        }

        v155 = v217;
LABEL_45:
        __swift_destroy_boxed_opaque_existential_1(v237);
        return __swift_destroy_boxed_opaque_existential_1(v155);
      }

      sub_1D6B32F14(0);
      v87 = v214;
      sub_1D6B32FB0(v60 + *(v86 + 48), v214);
      sub_1D6B33044(v87, v18);
      v89 = v212;
      v88 = v213;
      if ((*(v212 + 48))(v18, 1, v213) == 1)
      {

        v90 = MEMORY[0x1E69D87C8];
        v91 = MEMORY[0x1E69E6720];
        sub_1D6B335D8(v87, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720], sub_1D6B33260);
        sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);
        return sub_1D6B335D8(v18, &qword_1EC88B638, v90, v91, sub_1D6B33260);
      }

      v93 = v207;
      (*(v89 + 32))(v207, v18, v88);
      (*(v89 + 16))(v206, v93, v88);
      v94 = objc_allocWithZone(sub_1D725E39C());
      v95 = sub_1D725E38C();
      v96 = [v95 navigationItem];
      v97 = sub_1D726203C();

      [v96 setTitle_];

      v98 = [v215 navigationController];
      [v98 pushViewController:v95 animated:1];

      (*(v89 + 8))(v93, v88);
      sub_1D6B335D8(v214, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720], sub_1D6B33260);
      goto LABEL_32;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v71 = *(v60 + 16);

      v72 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
      swift_beginAccess();
      v73 = *(v71 + v72);
      if (*(v73 + 16))
      {
        v74 = v210;
        sub_1D6B33100(v73 + ((*(v208 + 80) + 32) & ~*(v208 + 80)), v210, sub_1D5C2AB28);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);

          v70 = sub_1D5C2AB28;
          v69 = v74;
          return sub_1D6B33638(v69, v70);
        }

        sub_1D5B55504(0);
        v159 = *(v158 + 48);
        v161 = v202;
        v160 = v203;
        v162 = v204;
        (*(v203 + 32))(v202, v74, v204);
        sub_1D6B33638(v74 + v159, type metadata accessor for FormatMetadata);
        v163 = [objc_opt_self() sharedApplication];
        v164 = sub_1D725844C();
        sub_1D605D330(MEMORY[0x1E69E7CC0]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_1D5B4A2C4(&qword_1EC87F1F0, type metadata accessor for OpenExternalURLOptionsKey, &unk_1D7273724);
        v165 = sub_1D7261D2C();

        [v163 openURL:v164 options:v165 completionHandler:0];

        (*(v160 + 8))(v161, v162);
      }

      else
      {
      }
    }

LABEL_32:
    v70 = type metadata accessor for DebugInspectViewItem;
    v69 = v59;
    return sub_1D6B33638(v69, v70);
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);

    return sub_1D60813D8(v60 + 16, &qword_1EC880F40, &qword_1EC884160, MEMORY[0x1E69E6F68]);
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D5B63F14(v60, v234);
    v75 = v215;
    v76 = *&v215[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector];
    sub_1D5B68374(v234, v225);
    v77 = *&v75[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext];
    v217 = *&v75[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter];
    sub_1D5B68374(&v75[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider], v237);
    v78 = type metadata accessor for DebugInspectionViewController();
    v79 = objc_allocWithZone(v78);
    v80 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_tableView;
    v81 = objc_allocWithZone(MEMORY[0x1E69DD020]);

    *&v79[v80] = [v81 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
    *&v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_sections] = MEMORY[0x1E69E7CC0];
    v82 = OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_coverViewManager;
    sub_1D725D7AC();
    swift_allocObject();
    *&v79[v82] = sub_1D725D79C();
    *&v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_inspector] = v76;
    sub_1D5B68374(v225, &v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_feedItem]);
    *&v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_commandCenter] = v217;
    *&v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_cloudContext] = v77;
    sub_1D5B68374(v237, &v79[OBJC_IVAR____TtC8NewsFeed29DebugInspectionViewController_radarAttachmentProvider]);
    v236.receiver = v79;
    v236.super_class = v78;
    swift_unknownObjectRetain();
    v83 = v77;
    v84 = objc_msgSendSuper2(&v236, sel_initWithNibName_bundle_, 0, 0);
    __swift_destroy_boxed_opaque_existential_1(v237);
    __swift_destroy_boxed_opaque_existential_1(v225);
    v85 = [v75 navigationController];
    [v85 pushViewController:v84 animated:1];

    __swift_destroy_boxed_opaque_existential_1(v234);
    goto LABEL_32;
  }

  sub_1D6B33638(v59, type metadata accessor for DebugInspectViewItem);
  v69 = v60;
  v70 = type metadata accessor for DebugInspectViewItem;
  return sub_1D6B33638(v69, v70);
}

uint64_t sub_1D6B2F754(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7261ABC();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7261B2C();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DebugGroupLayoutKey(0);
  v13 = v12 - 8;
  v39 = *(v12 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v16 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroupLayoutBindingContext(0);
  v40 = a2;
  v17 = swift_projectBox();
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = *(v13 + 36);
  swift_beginAccess();
  (*(v18 + 56))(v52, v17, a3 + v20, v19, v18);
  swift_endAccess();
  v21 = v53;
  v22 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  (*(v22 + 32))(&aBlock, v21, v22);
  LOBYTE(v22) = aBlock;
  v37 = v49;
  v38 = v48;
  v24 = v50;
  v23 = v51;
  __swift_destroy_boxed_opaque_existential_1(v52);
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  v25 = sub_1D726308C();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D6B33100(a3, v16, type metadata accessor for DebugGroupLayoutKey);
  v27 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  sub_1D6B33168(v16, v29 + v27);
  *(v29 + v28) = v40;
  v30 = v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v30 = v22;
  *(v30 + 1) = v52[0];
  *(v30 + 4) = *(v52 + 3);
  *(v30 + 24) = v37;
  *(v30 + 8) = v38;
  *(v30 + 40) = v24;
  *(v30 + 48) = v23;
  *(&v49 + 1) = sub_1D6B33328;
  v50 = v29;
  aBlock = MEMORY[0x1E69E9820];
  *&v48 = 1107296256;
  *(&v48 + 1) = sub_1D5B6B06C;
  *&v49 = &block_descriptor_63_0;
  v31 = _Block_copy(&aBlock);

  v32 = v41;
  sub_1D7261AEC();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D5B4A2C4(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v33 = MEMORY[0x1E69E7F60];
  sub_1D6B33260(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D6B332C4(&qword_1EDF1B560, &qword_1EDF1B570, v33);
  v34 = v44;
  v35 = v46;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v32, v34, v31);
  _Block_release(v31);

  (*(v45 + 8))(v34, v35);
  return (*(v42 + 8))(v32, v43);
}

void sub_1D6B2FD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v7 = type metadata accessor for DebugInspectViewResult(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v92 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v83 - v12;
  v14 = type metadata accessor for DebugGroupLayoutKey(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v91 = (&v83 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v83 - v23;
  type metadata accessor for GroupLayoutBindingContext(0);
  v25 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v27 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext);
  v85 = v14;
  v86 = v27;
  v95 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_feedPersonalizer);
  v96 = v24;
  v84 = type metadata accessor for DebugGroupLayoutKey;
  v94 = v17;
  v28 = Strong;
  sub_1D6B33100(a2, v24, type metadata accessor for DebugGroupLayoutKey);
  sub_1D5B68374(v28 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory, v116);
  sub_1D63327EC(0);
  v30 = v13;
  v31 = &v13[*(v29 + 48)];
  swift_beginAccess();
  sub_1D6B33100(v25, v30, type metadata accessor for GroupLayoutBindingContext);
  v32 = *(a4 + 16);
  *v31 = *a4;
  *(v31 + 1) = v32;
  *(v31 + 2) = *(a4 + 32);
  *(v31 + 6) = *(a4 + 48);
  swift_storeEnumTagMultiPayload();
  v93 = *(v28 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter);
  sub_1D6330700(v28 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inventory, v115);
  sub_1D5B68374(v28 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_headlineService, v114);
  sub_1D5B68374(v28 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_recipeService, v113);
  sub_1D5B68374(v28 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tagService, v112);
  sub_1D5B68374(v28 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_webEmbedDataSourceService, v111);
  sub_1D5B68374(v28 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider, v110);
  v90 = v28;
  sub_1D5B68374(v28 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_history, v109);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v116, v116[3]);
  v89 = &v83;
  v34 = MEMORY[0x1EEE9AC00](v33, v33);
  v36 = (&v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36, v34);
  v38 = *v36;
  v39 = type metadata accessor for DebugGroupLayoutViewFactory();
  v107 = v39;
  v108 = &off_1F51E3AE8;
  v106[0] = v38;
  v87 = type metadata accessor for DebugInspectViewController(0);
  v40 = objc_allocWithZone(v87);
  v41 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
  v88 = &v83;
  v42 = MEMORY[0x1EEE9AC00](v41, v41);
  v44 = (&v83 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44, v42);
  v46 = *v44;
  v105[3] = v39;
  v105[4] = &off_1F51E3AE8;
  v105[0] = v46;
  v47 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView;
  v48 = objc_allocWithZone(MEMORY[0x1E69DD020]);
  v49 = v86;
  v50 = v95;
  swift_unknownObjectRetain();
  sub_1D6332BB4(a4, v104);
  v51 = v93;
  swift_unknownObjectRetain();
  *&v40[v47] = [v48 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v52 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_searchController;
  *&v40[v52] = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  *&v40[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_cloudContext] = v49;
  *&v40[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_feedPersonalizer] = v50;
  v53 = v96;
  v54 = v84;
  sub_1D6B33100(v96, &v40[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_key], v84);
  sub_1D5B68374(v105, &v40[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_factory]);
  sub_1D6B33100(v30, &v40[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_result], type metadata accessor for DebugInspectViewResult);
  *&v40[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_commandCenter] = v93;
  v55 = v91;
  sub_1D6B33100(v53, v91, v54);
  *&v93 = v30;
  v56 = v92;
  sub_1D6B33100(v30, v92, type metadata accessor for DebugInspectViewResult);
  sub_1D6330700(v115, v104);
  sub_1D5B68374(v114, v103);
  sub_1D5B68374(v113, v102);
  type metadata accessor for DebugInspectViewDataSource(0);
  swift_allocObject();
  v57 = v49;
  v58 = v50;
  swift_unknownObjectRetain();
  v86 = v51;
  swift_unknownObjectRetain();
  v59 = sub_1D632A918(v55, v56, v104, v103, v102);
  v91 = v40;
  *&v40[OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource] = v59;
  sub_1D5B68374(v112, v104);
  sub_1D5B68374(v111, v103);
  v60 = v94;
  sub_1D6B33100(v96, v94, v54);
  sub_1D5B68374(v109, v102);
  type metadata accessor for DebugInspector();
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = v57;
  *(v61 + 32) = v58;
  sub_1D5B68374(v104, v61 + 40);
  sub_1D5B68374(v103, v61 + 128);
  v62 = (v60 + *(v85 + 24));
  v63 = v62[4];
  v64 = v62[5];
  __swift_project_boxed_opaque_existential_1(v62 + 1, v63);
  v65 = *(v64 + 16);
  v66 = v57;
  swift_unknownObjectRetain_n();
  v92 = v66;
  *(v61 + 80) = v65(v63, v64);
  v67 = v62[4];
  v68 = v62[5];
  __swift_project_boxed_opaque_existential_1(v62 + 1, v67);
  (*(v68 + 64))(v98, v67, v68);
  sub_1D68160C0(v98, v101);
  v69 = v101[1];
  *(v61 + 96) = v101[0];
  *(v61 + 112) = v69;
  v70 = v62[4];
  v71 = v62[5];
  __swift_project_boxed_opaque_existential_1(v62 + 1, v70);
  (*(v71 + 64))(v98, v70, v71);
  v72 = v99;
  if (!v99)
  {
    sub_1D60813D8(v98, &unk_1EDF38310, qword_1EDF38320, &protocol descriptor for FeedGroupDebuggable);
LABEL_7:
    v76 = v90;
    v75 = MEMORY[0x1E69E7CD0];
    goto LABEL_8;
  }

  v73 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v74 = (*(v73 + 32))(v72, v73);
  if (!v74)
  {
    __swift_destroy_boxed_opaque_existential_1(v98);
    goto LABEL_7;
  }

  v75 = *(v74 + 32);

  __swift_destroy_boxed_opaque_existential_1(v98);
  v76 = v90;
LABEL_8:
  *(v61 + 88) = v75;
  sub_1D5B68374(v102, v61 + 168);
  sub_1D6C6DDB0();
  v77 = sub_1D725B92C();
  sub_1D725BB2C();
  v78 = v92;

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v103);
  __swift_destroy_boxed_opaque_existential_1(v104);
  sub_1D6B33638(v94, type metadata accessor for DebugGroupLayoutKey);
  v79 = v91;
  *(v91 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inspector) = v61;
  sub_1D6330700(v115, v79 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_inventory);
  sub_1D5B68374(v114, v79 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_headlineService);
  sub_1D5B68374(v113, v79 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_recipeService);
  sub_1D5B68374(v112, v79 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tagService);
  sub_1D5B68374(v111, v79 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_webEmbedDataSourceService);
  sub_1D5B68374(v110, v79 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_radarAttachmentProvider);
  sub_1D5B68374(v109, v79 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_history);
  v97.receiver = v79;
  v97.super_class = v87;
  v80 = objc_msgSendSuper2(&v97, sel_initWithNibName_bundle_, 0, 0);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v111);
  __swift_destroy_boxed_opaque_existential_1(v112);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(v114);
  sub_1D6084EA8(v115);
  sub_1D6B33638(v93, type metadata accessor for DebugInspectViewResult);
  sub_1D6B33638(v96, type metadata accessor for DebugGroupLayoutKey);
  __swift_destroy_boxed_opaque_existential_1(v105);
  __swift_destroy_boxed_opaque_existential_1(v106);
  __swift_destroy_boxed_opaque_existential_1(v116);
  v81 = [v76 navigationController];
  if (v81)
  {
    v82 = v81;
    [v81 pushViewController:v80 animated:1];
  }
}

void sub_1D6B3087C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView);
    v12 = sub_1D7258D4C();
    v13 = [v11 cellForRowAtIndexPath_];

    if (v13)
    {
      v14 = [objc_opt_self() secondarySystemBackgroundColor];
      [v13 setBackgroundColor_];
    }

    sub_1D5B67034(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v17 = a7[3];
    v16 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, v17);
    *(inited + 32) = (*(*(v16 + 8) + 8))(v17);
    *(inited + 40) = v18;
    swift_beginAccess();
    sub_1D716B574(inited);
    swift_endAccess();
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);
    a3(1);
  }
}

void sub_1D6B30A50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v25 = a3;
    v11 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView);
    v12 = sub_1D7258D4C();
    v13 = [v11 cellForRowAtIndexPath_];

    if (v13)
    {
      v14 = [objc_opt_self() systemRedColor];
      v15 = [v14 colorWithAlphaComponent_];

      [v13 setBackgroundColor_];
    }

    sub_1D5B67034(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v18 = a7[3];
    v17 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, v18);
    v24 = v10;
    v19 = *(v17 + 8);
    v20 = *(v19 + 8);
    *(inited + 32) = v20(v18, v19);
    *(inited + 40) = v21;
    swift_beginAccess();
    sub_1D716B574(inited);
    swift_endAccess();
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_1D7273AE0;

    *(v22 + 32) = v20(v18, v19);
    *(v22 + 40) = v23;
    swift_beginAccess();
    sub_1D5B87D50(v22);
    swift_setDeallocating();
    sub_1D5BFB68C(v22 + 32);
    swift_endAccess();

    (v25)(1);
  }
}

void sub_1D6B30D14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView);
    v12 = sub_1D7258D4C();
    v13 = [v11 cellForRowAtIndexPath_];

    if (v13)
    {
      v14 = [objc_opt_self() secondarySystemBackgroundColor];
      [v13 setBackgroundColor_];
    }

    sub_1D5B67034(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v17 = a7[3];
    v16 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, v17);
    *(inited + 32) = (*(*(v16 + 8) + 8))(v17);
    *(inited + 40) = v18;
    swift_beginAccess();
    sub_1D716B574(inited);
    swift_endAccess();
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);
    a3(1);
  }
}

void sub_1D6B30EE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v25 = a3;
    v11 = *(Strong + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_tableView);
    v12 = sub_1D7258D4C();
    v13 = [v11 cellForRowAtIndexPath_];

    if (v13)
    {
      v14 = [objc_opt_self() systemGreenColor];
      v15 = [v14 colorWithAlphaComponent_];

      [v13 setBackgroundColor_];
    }

    sub_1D5B67034(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v18 = a7[3];
    v17 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, v18);
    v24 = v10;
    v19 = *(v17 + 8);
    v20 = *(v19 + 8);

    *(inited + 32) = v20(v18, v19);
    *(inited + 40) = v21;
    swift_beginAccess();
    sub_1D5B87D50(inited);
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);
    swift_endAccess();

    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_1D7273AE0;
    *(v22 + 32) = v20(v18, v19);
    *(v22 + 40) = v23;
    swift_beginAccess();
    sub_1D716B574(v22);
    swift_endAccess();
    swift_setDeallocating();
    sub_1D5BFB68C(v22 + 32);
    v25(1);
  }
}

id sub_1D6B311AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_1D7258DBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v13 = a3;
  v14 = a1;
  v15 = a5(v12);

  (*(v9 + 8))(v12, v8);

  return v15;
}

id sub_1D6B3160C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1D726207C();
    a4 = sub_1D726203C();
  }

  v11.receiver = a1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a5, a4);

  return v9;
}

id sub_1D6B319DC(uint64_t a1)
{
  v3 = sub_1D7258DBC();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugInspectViewItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v56 - v13;
  v57 = v1;
  v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource);
  v16 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v17 = *(v15 + v16);

  v18 = sub_1D7258DAC();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v18 >= v17[2])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v56 = v3;
  v60 = v14;
  v14 = v17[6 * v18 + 8];

  v19 = sub_1D7258D9C();
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v19 >= *(v14 + 2))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v60;
  sub_1D6B33100(&v14[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19], v60, type metadata accessor for DebugInspectViewItem);

  sub_1D6B33100(v20, v10, type metadata accessor for DebugInspectViewItem);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D6B33638(v20, type metadata accessor for DebugInspectViewItem);
    sub_1D6B33638(v10, type metadata accessor for DebugInspectViewItem);
    return 0;
  }

  sub_1D5B63F14(v10, v68);
  swift_beginAccess();
  v21 = *(v15 + 64);
  v22 = v69;
  v23 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v24 = *(v23 + 8);
  v25 = *(v24 + 8);

  v26 = v25(v22, v24);
  LOBYTE(v22) = sub_1D5BE240C(v26, v27, v21);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v59;
  v30 = v58;
  v31 = a1;
  v32 = v56;
  (*(v59 + 16))(v58, v31, v56);
  v33 = v4 + 7;
  if ((v22 & 1) == 0)
  {
    sub_1D5B68374(v68, v67);
    v48 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v28;
    (*(v29 + 32))(v49 + v48, v30, v32);
    sub_1D5B63F14(v67, v49 + ((v33 + v48) & 0xFFFFFFFFFFFFFFF8));

    v50 = sub_1D726203C();
    v65 = sub_1D6B32D30;
    v66 = v49;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1D6B276E0;
    v64 = &block_descriptor_43;
    v51 = _Block_copy(&aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:0 title:v50 handler:v51];

    _Block_release(v51);

    v52 = [objc_opt_self() systemRedColor];
    [v17 setBackgroundColor_];

    v14 = v60;
    if (qword_1EDF05BA0 == -1)
    {
LABEL_10:
      [v17 setImage_];
      sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1D72816C0;
      *(v53 + 32) = v17;
      sub_1D5B5A498(0, &unk_1EC890BF0, 0x1E69DC8E8);
      v54 = v17;
      v55 = sub_1D726265C();

      v45 = [objc_opt_self() configurationWithActions_];

      v46 = v14;
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
    goto LABEL_10;
  }

  sub_1D5B68374(v68, v67);
  v34 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v28;
  (*(v29 + 32))(v35 + v34, v30, v32);
  sub_1D5B63F14(v67, v35 + ((v33 + v34) & 0xFFFFFFFFFFFFFFF8));

  v36 = sub_1D726203C();
  v65 = sub_1D6B32E20;
  v66 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1D6B276E0;
  v64 = &block_descriptor_50_0;
  v37 = _Block_copy(&aBlock);
  v38 = [objc_opt_self() contextualActionWithStyle:0 title:v36 handler:v37];

  _Block_release(v37);

  v39 = [objc_opt_self() systemGrayColor];
  [v38 setBackgroundColor_];

  v40 = sub_1D726203C();
  v41 = [objc_opt_self() systemImageNamed_];

  [v38 setImage_];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D72816C0;
  *(v42 + 32) = v38;
  sub_1D5B5A498(0, &unk_1EC890BF0, 0x1E69DC8E8);
  v43 = v38;
  v44 = sub_1D726265C();

  v45 = [objc_opt_self() configurationWithActions_];

  v46 = v60;
LABEL_11:
  sub_1D6B33638(v46, type metadata accessor for DebugInspectViewItem);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return v45;
}

id sub_1D6B322EC(uint64_t a1)
{
  v3 = sub_1D7258DBC();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugInspectViewItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v56 - v13;
  v57 = v1;
  v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed26DebugInspectViewController_dataSource);
  v16 = OBJC_IVAR____TtC8NewsFeed26DebugInspectViewDataSource_sections;
  swift_beginAccess();
  v17 = *(v15 + v16);

  v18 = sub_1D7258DAC();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v18 >= v17[2])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v56 = v3;
  v60 = v14;
  v14 = v17[6 * v18 + 8];

  v19 = sub_1D7258D9C();
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v19 >= *(v14 + 2))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v60;
  sub_1D6B33100(&v14[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19], v60, type metadata accessor for DebugInspectViewItem);

  sub_1D6B33100(v20, v10, type metadata accessor for DebugInspectViewItem);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D6B33638(v20, type metadata accessor for DebugInspectViewItem);
    sub_1D6B33638(v10, type metadata accessor for DebugInspectViewItem);
    return 0;
  }

  sub_1D5B63F14(v10, v68);
  swift_beginAccess();
  v21 = *(v15 + 56);
  v22 = v69;
  v23 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v24 = *(v23 + 8);
  v25 = *(v24 + 8);

  v26 = v25(v22, v24);
  LOBYTE(v22) = sub_1D5BE240C(v26, v27, v21);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v59;
  v30 = v58;
  v31 = a1;
  v32 = v56;
  (*(v59 + 16))(v58, v31, v56);
  v33 = v4 + 7;
  if ((v22 & 1) == 0)
  {
    sub_1D5B68374(v68, v67);
    v48 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v28;
    (*(v29 + 32))(v49 + v48, v30, v32);
    sub_1D5B63F14(v67, v49 + ((v33 + v48) & 0xFFFFFFFFFFFFFFF8));

    v50 = sub_1D726203C();
    v65 = sub_1D6B32D00;
    v66 = v49;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1D6B276E0;
    v64 = &block_descriptor_78;
    v51 = _Block_copy(&aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:0 title:v50 handler:v51];

    _Block_release(v51);

    v52 = [objc_opt_self() systemGreenColor];
    [v17 setBackgroundColor_];

    v14 = v60;
    if (qword_1EDF05B90 == -1)
    {
LABEL_10:
      [v17 setImage_];
      sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1D72816C0;
      *(v53 + 32) = v17;
      sub_1D5B5A498(0, &unk_1EC890BF0, 0x1E69DC8E8);
      v54 = v17;
      v55 = sub_1D726265C();

      v45 = [objc_opt_self() configurationWithActions_];

      v46 = v14;
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
    goto LABEL_10;
  }

  sub_1D5B68374(v68, v67);
  v34 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v28;
  (*(v29 + 32))(v35 + v34, v30, v32);
  sub_1D5B63F14(v67, v35 + ((v33 + v34) & 0xFFFFFFFFFFFFFFF8));

  v36 = sub_1D726203C();
  v65 = sub_1D6B32D18;
  v66 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1D6B276E0;
  v64 = &block_descriptor_33;
  v37 = _Block_copy(&aBlock);
  v38 = [objc_opt_self() contextualActionWithStyle:0 title:v36 handler:v37];

  _Block_release(v37);

  v39 = [objc_opt_self() systemGrayColor];
  [v38 setBackgroundColor_];

  v40 = sub_1D726203C();
  v41 = [objc_opt_self() systemImageNamed_];

  [v38 setImage_];
  sub_1D5B67034(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D72816C0;
  *(v42 + 32) = v38;
  sub_1D5B5A498(0, &unk_1EC890BF0, 0x1E69DC8E8);
  v43 = v38;
  v44 = sub_1D726265C();

  v45 = [objc_opt_self() configurationWithActions_];

  v46 = v60;
LABEL_11:
  sub_1D6B33638(v46, type metadata accessor for DebugInspectViewItem);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return v45;
}

char *sub_1D6B32BFC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed20LoadingTableViewCell_activityIndicatorView;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithFrame_];
  if (a2)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v11.receiver = v2;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, 3, v6);

  v8 = v7;
  v9 = [v8 contentView];
  [v9 addSubview_];

  return v8;
}

uint64_t objectdestroy_25Tm_0()
{
  v1 = sub_1D7258DBC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1D6B32E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *(sub_1D7258DBC() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v5 + 16);
  v13 = v5 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a5(a1, a2, a3, a4, v12, v5 + v11, v13);
}

void sub_1D6B32F14(uint64_t a1)
{
  if (!qword_1EC892160)
  {
    sub_1D6B33260(255, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC892160);
    }
  }
}

uint64_t sub_1D6B32FB0(uint64_t a1, uint64_t a2)
{
  sub_1D6B33260(0, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B33044(uint64_t a1, uint64_t a2)
{
  sub_1D6B33260(0, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6B330D8(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_1D6B33100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B33168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugGroupLayoutKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B331CC()
{
  v1 = *(type metadata accessor for DebugGroupLayoutKey(0) - 8);
  v2 = *(v0 + 56);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_1D6B2F754((v0 + 16), v2, v3);
}

void sub_1D6B33260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6B332C4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6B33260(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6B33328()
{
  v1 = *(type metadata accessor for DebugGroupLayoutKey(0) - 8);
  v3 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v4);

  sub_1D6B2FD04(v5, v0 + v3, v6, v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8), v2);
}

uint64_t sub_1D6B33464()
{

  v0 = sub_1D6C6DDB0();

  return v0;
}

uint64_t objectdestroy_77Tm(void (*a1)(void))
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  a1(*(v1 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D6B335D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6B33638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6B336CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v63 = a3;
  v5 = sub_1D725895C();
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroupLayoutContext(0);
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v61 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GroupLayoutBindingContext(0);
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B35840(0, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v9;
  v24 = *(v9 + 24);
  v25 = a2;
  v26 = a2 + v24;
  v27 = type metadata accessor for FeedLayoutSolverOptions(0);
  sub_1D6329790(v26 + *(v27 + 36), v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D6B358A4(v18);
    sub_1D6B35930();
    swift_allocError();
    *v28 = 1;
    return swift_willThrow();
  }

  sub_1D6B35984(v18, v23, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  sub_1D6C548CC(0, 0, 0, 0, 0);
  v31 = v30;
  if (v30 >> 62)
  {
    if (sub_1D7263BFC())
    {
      goto LABEL_5;
    }
  }

  else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v32 = v58;
    sub_1D5BE4078(a1, v58, type metadata accessor for GroupLayoutBindingContext);
    v55 = type metadata accessor for GroupLayoutContext;
    v33 = v25;
    v34 = v25;
    v35 = v61;
    sub_1D5BE4078(v34, v61, type metadata accessor for GroupLayoutContext);
    sub_1D725894C();
    v54 = sub_1D725893C();
    v53 = v36;
    (*(v57 + 8))(v8, v5);
    v70[3] = &type metadata for PluginGroupLayoutFactory;
    v57 = sub_1D5ECDDE0();
    v70[4] = v57;
    type metadata accessor for GroupLayoutKey(0);
    v37 = swift_allocObject();
    v68 = sub_1D7264C5C();
    v69 = v38;
    v66 = 95;
    v67 = 0xE100000000000000;
    v64 = 45;
    v65 = 0xE100000000000000;
    sub_1D5BF4D9C();
    v39 = sub_1D7263A6C();
    v41 = v40;

    *(v37 + 16) = v39;
    *(v37 + 24) = v41;
    v42 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    v43 = v53;
    *v42 = v54;
    v42[1] = v43;
    sub_1D5B68374(v70, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
    v44 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
    sub_1D6B35984(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
    (*(v59 + 56))(v37 + v44, 0, 1, v60);
    v45 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
    sub_1D6B35984(v35, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
    (*(v62 + 56))(v37 + v45, 0, 1, v56);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v46 = type metadata accessor for PluginGroupLayoutFactory.Bound(0);
    v47 = v63;
    v63[3] = v46;
    v47[4] = sub_1D5BEAA44(&qword_1EDF0CAF8, type metadata accessor for PluginGroupLayoutFactory.Bound, &unk_1D73244F0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    sub_1D5BE4078(v23, boxed_opaque_existential_1 + v46[5], type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
    sub_1D5BE4078(v33, boxed_opaque_existential_1 + v46[6], v55);
    v49 = boxed_opaque_existential_1 + v46[7];
    v50 = v57;
    *(v49 + 3) = &type metadata for PluginGroupLayoutFactory;
    *(v49 + 4) = v50;
    result = sub_1D6B35E98(v23, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
    *boxed_opaque_existential_1 = v31;
    *(boxed_opaque_existential_1 + v46[8]) = v37;
    return result;
  }

  sub_1D6B35930();
  swift_allocError();
  *v51 = 0;
  swift_willThrow();
  return sub_1D6B35E98(v23, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
}

void sub_1D6B33D94(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v26 = v2;
  sub_1D5ECC7D4(sub_1D6B35C44, v25, v9);
  v11 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7378], v4);
  v24 = v11;
  sub_1D6B35EF8(0, &qword_1EDF17FB8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v12 = sub_1D725A4CC();
  type metadata accessor for PluginGroupLayoutFactory.Bound(0);
  v23 = v12;
  sub_1D725A4DC();
  v13 = v30;
  v14 = MEMORY[0x1E69E62F8];
  sub_1D6B35840(0, &qword_1EDF05070, type metadata accessor for PluginLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D6B35840(0, &unk_1EDF049C0, type metadata accessor for CGRect, v14);
  sub_1D6B35CC8(&qword_1EDF05068, &qword_1EDF05070, type metadata accessor for PluginLayout.Context);
  v15 = sub_1D6B35CC8(&qword_1EDF049B8, &unk_1EDF049C0, type metadata accessor for CGRect);
  v21 = v29;
  v22 = v28;
  v27 = v13;
  *&v28 = v11;
  MEMORY[0x1EEE9AC00](v15, v16);

  v17 = sub_1D725C00C();

  *a1 = 0;
  v18 = v22;
  *(a1 + 24) = v21;
  *(a1 + 8) = v18;
  *&v28 = v17;
  sub_1D6B35D2C();
  sub_1D5BEAA44(&qword_1EDF1B4C0, sub_1D6B35D2C, MEMORY[0x1E69E6328]);
  sub_1D5BDEFF8();
  v19 = sub_1D72623BC();

  v20 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v19;
  *(a1 + 48) = v20;
}

double sub_1D6B34130@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = type metadata accessor for PluginGroupLayoutFactory.Bound(0);
  sub_1D5BE4078(a2 + *(v11 + 20), v9, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  type metadata accessor for PluginLayout.Context(0);
  sub_1D725CBEC();
  v12 = sub_1D725E23C();
  (*(*(v12 - 8) + 8))(v9, v12);
  *a3 = v10;

  return result;
}

uint64_t sub_1D6B34248(uint64_t a1, uint64_t a2)
{
  sub_1D6B35DE4(0, &qword_1EDF17F98, sub_1D6B35C6C, &type metadata for PluginLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v13[-v9];
  v15 = a1;
  (*(v6 + 104))(&v13[-v9], *MEMORY[0x1E69D7460], v5, v8);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D6B35EF8(0, &qword_1EDF18050, MEMORY[0x1E69D7150]);
  sub_1D6B35E54(&qword_1EDF18058, &qword_1EDF18050, v11, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v6 + 8))(v10, v5);
}

void sub_1D6B34414(uint64_t a1, uint64_t a2)
{
  sub_1D6B35DE4(0, &qword_1EDF17F98, sub_1D6B35C6C, &type metadata for PluginLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v35 - v8);
  v10 = type metadata accessor for PluginLayout.Context(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  if (v16)
  {
    v42 = *(v12 + 20);
    v17 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v41 = *(v13 + 72);
    v39 = *MEMORY[0x1E69D71F0];
    v38 = *MEMORY[0x1E69D7468];
    v36 = (v6 + 8);
    v37 = (v6 + 104);
    v43 = v5;
    v44 = a1;
    v40 = v9;
    do
    {
      v47 = v16;
      v48 = v17;
      sub_1D5BE4078(v17, v15, type metadata accessor for PluginLayout.Context);
      v49 = a1;
      KeyPath = swift_getKeyPath();
      sub_1D5EF9444(0);
      v19 = v18;
      v45 = swift_allocBox();
      v21 = v20;
      v22 = *(v19 + 48);
      v23 = swift_allocObject();
      sub_1D725E3AC();
      *(v23 + 16) = v24;
      *v21 = v23;
      v25 = sub_1D725A09C();
      v26 = *(*(v25 - 8) + 104);
      v27 = v39;
      v26(v21, v39, v25);
      v28 = swift_allocObject();
      sub_1D725E3AC();
      v30 = v29;
      sub_1D6B35E98(v15, type metadata accessor for PluginLayout.Context);
      *(v28 + 16) = v30;
      *(v21 + v22) = v28;
      v31 = v21 + v22;
      v32 = v43;
      v26(v31, v27, v25);
      v33 = v40;
      *v40 = v45;
      (*v37)(v33, v38, v32);
      v34 = MEMORY[0x1E69D6F38];
      sub_1D6B35EF8(0, &qword_1EDF18168, MEMORY[0x1E69D6F38]);
      sub_1D6B35E54(&qword_1EDF18170, &qword_1EDF18168, v34, MEMORY[0x1E69D6F40]);
      sub_1D5BEAA44(&qword_1EDF17FF0, sub_1D6862F68, MEMORY[0x1E69D71A0]);
      a1 = v44;
      sub_1D7259A7C();

      (*v36)(v33, v32);
      v17 = v48 + v41;
      v16 = v47 - 1;
    }

    while (v47 != 1);
  }
}

uint64_t sub_1D6B34834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v21 = a3[1];
  v22 = *a3;
  sub_1D6B35D7C(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  sub_1D5BE4078(a2, v12, type metadata accessor for PluginLayout.Context);
  v15 = a4 + *(type metadata accessor for PluginGroupLayoutFactory.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v17 = *(v15 + *(result + 28));
  v18 = __OFADD__(a1, v17);
  v19 = a1 + v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v20 = v13 + v14;
    *v20 = v22;
    *(v20 + 16) = v21;
    *(v20 + 32) = v19;
    *a5 = v11 | 0xA000000000000000;
  }

  return result;
}

uint64_t PluginLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D6B34A38(0, &qword_1EDF3C138, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  *a1 = sub_1D725996C();
  sub_1D6862F68(0);
  swift_allocObject();
  result = sub_1D7259F9C();
  a1[1] = result;
  return result;
}

void sub_1D6B34A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGRect(255);
    v7 = v6;
    v8 = sub_1D5BEAA44(&unk_1EDF1A748, type metadata accessor for CGRect, MEMORY[0x1E69D7510]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D6B34AE8()
{
  if (*v0)
  {
    return 0x72466E6967756C70;
  }

  else
  {
    return 0x656D617266;
  }
}

void sub_1D6B34B28(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x72466E6967756C70 && a2 == 0xEC00000073656D61)
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

uint64_t sub_1D6B34C04(uint64_t a1)
{
  v2 = sub_1D6B34EBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B34C40(uint64_t a1)
{
  v2 = sub_1D6B34EBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PluginLayout.Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6B35DE4(0, &qword_1EC892198, sub_1D6B34EBC, &type metadata for PluginLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  v15 = *(v3 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B34EBC();
  sub_1D7264B5C();
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v18 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6863748();
  sub_1D726443C();
  if (!v2)
  {
    *&v16 = v15;
    v18 = 1;
    sub_1D6B35840(0, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
    sub_1D6B35198(&qword_1EC88CFF0, sub_1D6863748, MEMORY[0x1E69E6300], v12);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6B34EBC()
{
  result = qword_1EDF12020;
  if (!qword_1EDF12020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12020);
  }

  return result;
}

uint64_t PluginLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v18 = a2;
  sub_1D6B35DE4(0, &qword_1EDF03AD0, sub_1D6B34EBC, &type metadata for PluginLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B34EBC();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v18;
    type metadata accessor for CGRect(0);
    v21 = 0;
    sub_1D6863610();
    sub_1D726431C();
    v16 = v20;
    v17 = v19;
    sub_1D6B35840(0, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
    v21 = 1;
    sub_1D6B35198(&qword_1EDF049B0, sub_1D6863610, MEMORY[0x1E69E6330], v12);
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v14 = v19;
    v15 = v16;
    *v11 = v17;
    v11[1] = v15;
    v11[2].n128_u64[0] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6B35198(unint64_t *a1, void (*a2)(void), uint64_t a3, __n128 a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6B35840(255, &unk_1EDF049C0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6B35264(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6B35A0C();

  return sub_1D725A24C();
}

uint64_t PluginLayout.Context.layoutTransition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PluginLayout.Context(0) + 20);
  v4 = sub_1D725E3BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_1D6B35370()
{
  result = qword_1EDF12000;
  if (!qword_1EDF12000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12000);
  }

  return result;
}

unint64_t sub_1D6B353C8()
{
  result = qword_1EDF11FE8;
  if (!qword_1EDF11FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FE8);
  }

  return result;
}

unint64_t sub_1D6B35420()
{
  result = qword_1EDF11FF0;
  if (!qword_1EDF11FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FF0);
  }

  return result;
}

unint64_t sub_1D6B35478()
{
  result = qword_1EDF12008;
  if (!qword_1EDF12008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12008);
  }

  return result;
}

uint64_t sub_1D6B354CC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D6B34A38(0, &qword_1EDF3C138, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  *a1 = sub_1D725996C();
  sub_1D6862F68(0);
  swift_allocObject();
  result = sub_1D7259F9C();
  a1[1] = result;
  return result;
}

uint64_t sub_1D6B355AC(uint64_t a1)
{
  result = sub_1D725CC1C();
  if (v2 <= 0x3F)
  {
    result = sub_1D725E3BC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D6B35664()
{
  result = qword_1EC8921A0;
  if (!qword_1EC8921A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8921A0);
  }

  return result;
}

unint64_t sub_1D6B356BC()
{
  result = qword_1EDF12010;
  if (!qword_1EDF12010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12010);
  }

  return result;
}

unint64_t sub_1D6B35714()
{
  result = qword_1EDF12018;
  if (!qword_1EDF12018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12018);
  }

  return result;
}
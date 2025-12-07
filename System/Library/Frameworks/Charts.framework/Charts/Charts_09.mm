uint64_t sub_1AAD5D42C(uint64_t a1)
{
  sub_1AAD5D268(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SurfacePlot.init(x:y:z:function:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(a9 + 16) = result;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3 & 1;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7 & 1;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12 & 1;
  *(a9 + 104) = a13;
  *a9 = a14;
  *(a9 + 8) = a15;
  return result;
}

uint64_t SurfacePlot.init(x:y:z:function:)@<X0>(uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = sub_1AAF8EA44();
  v33 = v17;
  v34 = v16;
  v19 = v18;
  v32 = v20;
  v21 = sub_1AAF8EA44();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = sub_1AAF8EA44();
  *a9 = a14;
  *(a9 + 8) = a15;
  *(a9 + 16) = v34;
  *(a9 + 24) = v33;
  *(a9 + 32) = v19 & 1;
  *(a9 + 40) = v32;
  *(a9 + 48) = v21;
  *(a9 + 56) = v23;
  *(a9 + 64) = v25 & 1;
  *(a9 + 72) = v27;
  *(a9 + 80) = result;
  *(a9 + 88) = v30;
  *(a9 + 96) = v29 & 1;
  *(a9 + 104) = v31;
  return result;
}

uint64_t SurfacePlot.init(x:y:z:function:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a4;
  v47 = a5;
  v45 = a3;
  v41 = a1;
  v9 = sub_1AAF8C784();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v14(v13, a1, v9, v11);
  v15 = sub_1AAF8EA54();
  v43 = v16;
  v44 = v15;
  v40 = v17;
  v42 = v18;
  (v14)(v13, a2, v9);
  v19 = sub_1AAF8EA54();
  v38 = v20;
  v39 = v19;
  v22 = v21;
  v37 = v23;
  v24 = v45;
  (v14)(v13, v45, v9);
  v25 = sub_1AAF8EA54();
  v27 = v26;
  LOBYTE(v14) = v28;
  v36 = v29;
  v30 = *(v10 + 8);
  v30(v24, v9);
  v30(a2, v9);
  result = (v30)(v41, v9);
  v32 = v40 & 1;
  *a6 = v46;
  *(a6 + 8) = v47;
  *(a6 + 16) = v44;
  *(a6 + 24) = v43;
  *(a6 + 32) = v32;
  v33 = v39;
  *(a6 + 40) = v42;
  *(a6 + 48) = v33;
  v34 = v37;
  *(a6 + 56) = v38;
  *(a6 + 64) = v22 & 1;
  *(a6 + 72) = v34;
  *(a6 + 80) = v25;
  *(a6 + 88) = v27;
  *(a6 + 96) = v14 & 1;
  *(a6 + 104) = v36;
  return result;
}

uint64_t SurfacePlot.init<A, B, C>(x:y:z:function:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = a7;
  v61 = a4;
  v62 = a5;
  v63 = a1;
  v59 = a3;
  v60 = a12;
  v15 = *(a8 - 8);
  v57 = a10;
  v58 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v23;
  v24 = *(v23 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  (*(v24 + 16))(&v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v63, v28, v26);
  v29 = sub_1AAF8EA64();
  v56 = v30;
  v57 = v29;
  v52 = v31;
  v55 = v32;
  v33 = v53;
  (*(v19 + 16))(v22, a2, v53);
  v58 = sub_1AAF8EA64();
  v50 = v35;
  v51 = v34;
  v49 = v36;
  v37 = v59;
  (*(v15 + 16))(v17, v59, a8);
  v38 = sub_1AAF8EA64();
  v60 = v39;
  v41 = v40;
  v48 = v42;
  (*(v15 + 8))(v37, a8);
  (*(v19 + 8))(a2, v33);
  result = (*(v24 + 8))(v63, v54);
  v44 = v52 & 1;
  v45 = v49 & 1;
  *a9 = v61;
  *(a9 + 8) = v62;
  *(a9 + 16) = v57;
  *(a9 + 24) = v56;
  *(a9 + 32) = v44;
  v46 = v58;
  *(a9 + 40) = v55;
  *(a9 + 48) = v46;
  v47 = v50;
  *(a9 + 56) = v51;
  *(a9 + 64) = v45;
  *(a9 + 72) = v47;
  *(a9 + 80) = v38;
  *(a9 + 88) = v60;
  *(a9 + 96) = v41 & 1;
  *(a9 + 104) = v48;
  return result;
}

uint64_t static SurfacePlot._makeChart3DContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  sub_1AAD5F5F4(0, &qword_1EB423738, &type metadata for SurfacePlot, MEMORY[0x1E697DDB8]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v33 - v10);
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v12 = sub_1AAF8F164();
  (*(v8 + 16))(v11, a1, v7);
  if (v9 != 4)
  {
    __break(1u);
  }

  v43 = *v11;
  (*(v8 + 8))(v11, v7);
  v44 = type metadata accessor for _Chart3DContentInputs(0);
  v42 = *(a2 + *(v44 + 24));
  KeyPath = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5B498;
  v49 = KeyPath;
  sub_1AACBC63C();
  v45 = a3;
  v14 = MEMORY[0x1E69E6720];
  sub_1AAD5F5F4(0, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
  v41 = a2;
  sub_1AAD5F080(0, &qword_1EB4234B8, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  sub_1AAD5F114(&qword_1EB4234C0, &qword_1EB4234B8, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);

  v40 = sub_1AAF8D194();

  v15 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5B4A0;
  v49 = v15;
  v38 = sub_1AACBC63C();
  sub_1AAD5F5F4(0, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v14);
  v37 = v16;
  sub_1AAD5F080(0, &qword_1EB4234C8, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  v36 = v17;
  v35 = sub_1AAD5F114(&qword_1EB4234D0, &qword_1EB4234C8, qword_1ED9B3D88, &type metadata for AnyPlottableValue);

  v39 = sub_1AAF8D194();

  v18 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5B53C;
  v49 = v18;
  sub_1AACBC63C();
  v19 = MEMORY[0x1E69E63B0];
  sub_1AAD5F5F4(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], v14);
  sub_1AAD5F080(0, &qword_1EB4234D8, &qword_1ED9B29E0, v19);
  sub_1AAD5F114(&qword_1EB4234E0, &qword_1EB4234D8, &qword_1ED9B29E0, v19);

  v34 = sub_1AAF8D194();

  v20 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5BB34;
  v49 = v20;

  v33 = sub_1AAF8D194();

  v21 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5B594;
  v49 = v21;
  sub_1AACBC63C();
  sub_1AAD5B59C(0);
  sub_1AAD5F208(&qword_1EB4234F0, sub_1AAD5B59C);

  LODWORD(v19) = sub_1AAF8D194();

  v22 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5F164;
  v49 = v22;
  sub_1AACBC63C();
  sub_1AAD58FE8(0);
  sub_1AAD5F1A0(0);
  sub_1AAD5F208(&qword_1EB423748, sub_1AAD5F1A0);

  v23 = sub_1AAF8D194();

  v24 = swift_getKeyPath();
  v46 = v12;
  v48 = sub_1AAD5F8F8;
  v49 = v24;

  LODWORD(v14) = sub_1AAF8D194();

  v25 = sub_1AAF8F164();
  v26 = swift_getKeyPath();
  v46 = v25;
  v48 = sub_1AAD5BB38;
  v49 = v26;

  v27 = sub_1AAF8D194();

  v46 = v43;
  v47 = v42;
  v48 = __PAIR64__(v39, v40);
  v49 = __PAIR64__(v33, v34);
  v50 = v19;
  v51 = v23;
  v53 = 0;
  v52 = v14;
  v54 = 0;
  v55 = 0;
  sub_1AACBC63C();
  sub_1AAD5F4DC(0, &qword_1EB423660, type metadata accessor for Resolved3DContentList);
  sub_1AAD5F25C();
  v28 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v28);
  *(&v33 - 4) = v29;
  sub_1AAD5F2B8();
  sub_1AAF8E494();
  v46 = v27;
  sub_1AACBC63C();
  sub_1AAD57924();
  v30 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v30);
  *(&v33 - 4) = v31;
  sub_1AAD57980();
  return sub_1AAF8E494();
}

void *sub_1AAD5E4D4@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_1AAF8E144();
  *a3 = v5;
  return result;
}

uint64_t sub_1AAD5E550(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  a5();

  return sub_1AAF8E154();
}

void sub_1AAD5E5C0()
{
  v105 = *MEMORY[0x1E69E9840];
  sub_1AAD5F4DC(0, &unk_1EB424A80, type metadata accessor for Resolved3DContentList.Item);
  v2 = *(v1 - 8);
  v74 = v1;
  v75 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v72 - v3;
  sub_1AAD5D268(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD583E0(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8DC74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  *&v77 = v17;
  v19 = Value[1];
  v18 = Value[2];
  v98 = *Value;
  v99 = v19;
  v100 = v18;
  v20 = Value[6];
  v22 = Value[3];
  v21 = Value[4];
  v103 = Value[5];
  v104 = v20;
  v101 = v22;
  v102 = v21;
  v23 = *(v0 + 4);
  v24 = *MEMORY[0x1E698D3F8];
  v80 = v13;
  if (v23 == v24)
  {
    (*(v10 + 56))(v7, 1, 1, v9);
    v25 = *(v9 + 48);
    sub_1AAD5F53C(&v98, &v92);
    sub_1AAF8DC64();
    v12[v25] = 0;
    if ((*(v10 + 48))(v7, 1, v9) != 1)
    {
      sub_1AAD5D42C(v7);
    }
  }

  else
  {
    sub_1AAD5F53C(&v98, &v92);
    v26 = AGGraphGetValue();
    v28 = v27;
    v29 = *(v9 + 48);
    (*(v14 + 16))(v7, v26, v80);
    v7[v29] = v28 & 1;
    v13 = v80;
    (*(v10 + 56))(v7, 0, 1, v9);
    sub_1AAD584A4(v7, v12);
  }

  LODWORD(v76) = v12[*(v9 + 48)];
  v78 = v14;
  (*(v14 + 32))(v79, v12, v13);
  v30 = MEMORY[0x1E69E6720];
  sub_1AAD5F5F4(0, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
  v31 = AGGraphGetValue();
  v33 = v32;
  sub_1AAD5F574(v31, v86, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  sub_1AAD5F5F4(0, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v30);
  v34 = AGGraphGetValue();
  v36 = v35;
  v87 = *v34;
  v38 = *(v34 + 32);
  v37 = *(v34 + 48);
  v39 = *(v34 + 16);
  v91 = *(v34 + 64);
  v89 = v38;
  v90 = v37;
  v88 = v39;
  sub_1AAD58FE8(0);
  sub_1AAD5F574(&v87, &v92, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  v40 = *AGGraphGetValue();

  v41 = *AGGraphGetValue();
  v42 = *(v0 + 48);
  if (v42)
  {
    if (v40)
    {

      v43 = sub_1AAD7A090(v42, v40);

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v40)
  {
LABEL_9:

    v43 = 0;
    goto LABEL_11;
  }

  v43 = 1;
LABEL_11:
  *(v0 + 48) = v40;

  if (*(v0 + 56))
  {
    if (v41)
    {

      v45 = sub_1AAD7A090(v44, v41);

      swift_bridgeObjectRelease_n();
      *(v0 + 56) = v41;
      if (((v77 | v76) & 1) == 0)
      {
        v46 = v78;
        if ((v36 | v33))
        {
          goto LABEL_37;
        }

        if (v43 & v45)
        {
          sub_1AAD5F738(&v87, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
          sub_1AAD5F820(&v98);

LABEL_42:

          sub_1AAD5F738(v86, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
          (*(v46 + 8))(v79, v80);
          return;
        }

        v45 = (v43 ^ 1) & v45;
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if (!v41)
  {
    *(v0 + 56) = 0;
    if (((v77 | v76) & 1) == 0)
    {
      if ((v36 | v33))
      {
        v45 = 1;
        goto LABEL_37;
      }

      v46 = v78;
      if (v43)
      {
        sub_1AAD5F738(&v87, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
        sub_1AAD5F820(&v98);
        goto LABEL_42;
      }

      v45 = 1;
      goto LABEL_24;
    }

    v45 = 1;
LABEL_23:
    ++*(v0 + 36);
    if ((v33 | v36))
    {
      goto LABEL_37;
    }

    goto LABEL_24;
  }

  *(v0 + 56) = v41;
  v45 = 0;
  if ((v77 | v76))
  {
    goto LABEL_23;
  }

  if ((v36 | v33))
  {
    goto LABEL_37;
  }

LABEL_24:
  sub_1AAD5F5F4(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  AGGraphGetValue();
  if (v47 & 1) != 0 || (AGGraphGetValue(), (v48) || (AGGraphGetValue(), (v49))
  {
LABEL_37:
    ++*(v0 + 40);
    if (v43 & v45)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((v43 & v45 & 1) == 0)
  {
LABEL_28:
    ++*(v0 + 40);
  }

LABEL_29:
  sub_1AAD5F574(v86, v83, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  v50 = v85;
  v72 = v41;
  v73 = v40;
  if (v85 == 255)
  {
    sub_1AAD5F738(v83, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
    v55 = *(&v88 + 1);
    if (*(&v88 + 1))
    {
      v40 = *(&v90 + 1);
      v45 = v91;
      v50 = *(&v89 + 1);
      v36 = v90;
      v53 = v89;
      *&v54 = v88;
      v77 = v54;
      v81 = 1;
      v94 = v89;
      v95 = v90;
      v96 = v91;
      v76 = v87;
      v92 = v87;
      v93 = v88;
      sub_1AAD5874C(&v92, v82);
      v52 = v76;
      *&v51 = v77;
      *(&v51 + 1) = v55;
    }

    else
    {
      v53 = 0;
      v36 = 0;
      v40 = 0;
      v45 = 0;
      v50 = 0;
      v81 = -1;
      v52 = 0uLL;
      v51 = 0uLL;
    }
  }

  else
  {
    v52 = v83[0];
    v51 = v83[1];
    v53 = v84;
    v81 = 0;
  }

  v92 = v52;
  v93 = v51;
  *&v94 = v53;
  *(&v94 + 1) = v50;
  *&v95 = v36;
  *(&v95 + 1) = v40;
  v96 = v45;
  v97 = v81;
  v56 = v78;
  (*(v78 + 16))(&v4[*(v74 + 48)], v79, v80);
  v57 = *(v0 + 36);
  sub_1AAD5F574(&v92, (v4 + 128), &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  sub_1AAD5F5F4(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  v58 = AGGraphGetValue();
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = AGGraphGetValue();
  v62 = *v61;
  v63 = *(v61 + 8);
  v64 = *AGGraphGetValue();
  v65 = v99;
  *(v4 + 1) = v98;
  *(v4 + 2) = v65;
  v66 = v104;
  *(v4 + 6) = v103;
  *(v4 + 7) = v66;
  v67 = v102;
  *(v4 + 4) = v101;
  *(v4 + 5) = v67;
  *(v4 + 3) = v100;
  v68 = v72;
  *(v4 + 26) = v73;
  *(v4 + 27) = v68;
  *(v4 + 28) = v59;
  v4[232] = v60;
  *(v4 + 30) = v62;
  v4[248] = v63;
  *(v4 + 32) = v64;
  sub_1AAD57ACC();
  sub_1AAF8DC84();
  *v4 = v82[0];
  *(v4 + 1) = v57;
  sub_1AAD5F644(0);
  v69 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1AAF92AB0;
  sub_1AAD5F6B8(v4, v70 + v69);
  v82[0] = sub_1AAD78C10(v70);
  v82[1] = v71;
  sub_1AAD5F4DC(0, &qword_1EB423660, type metadata accessor for Resolved3DContentList);
  AGGraphSetOutputValue();
  sub_1AAD5F738(&v87, qword_1ED9B3D88, &type metadata for AnyPlottableValue);
  sub_1AAD5F7A8(v4);
  sub_1AAD5F738(&v92, &qword_1EB423648, &type metadata for PartiallyResolvedForegroundStyle);
  sub_1AAD5F738(v86, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle);
  (*(v56 + 8))(v79, v80);
}

void sub_1AAD5F080(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AAF8E134();
    sub_1AAD5F5F4(255, a3, a4, MEMORY[0x1E69E6720]);
    v7 = sub_1AAF8D1D4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AAD5F114(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AAD5F080(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1AAD5F164@<X0>(void *a2@<X8>)
{
  result = swift_getAtKeyPath();
  *a2 = v5;
  return result;
}

void sub_1AAD5F1A0(uint64_t a1)
{
  if (!qword_1EB423740)
  {
    sub_1AAF8E134();
    sub_1AAD58FE8(255);
    v1 = sub_1AAF8D1D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB423740);
    }
  }
}

uint64_t sub_1AAD5F208(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_1AAD5F25C()
{
  result = qword_1EB423750;
  if (!qword_1EB423750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423750);
  }

  return result;
}

unint64_t sub_1AAD5F2B8()
{
  result = qword_1EB423758;
  if (!qword_1EB423758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423758);
  }

  return result;
}

__n128 sub_1AAD5F30C(uint64_t a1, __int128 *a2)
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

uint64_t sub_1AAD5F330(uint64_t *a1, int a2)
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

uint64_t sub_1AAD5F378(uint64_t result, int a2, int a3)
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

__n128 sub_1AAD5F3F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AAD5F408(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1AAD5F464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

void sub_1AAD5F4DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SurfacePlot, &off_1EE75C0C8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AAD5F574(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAD5F5F4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AAD5F5F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AAD5F644(uint64_t a1)
{
  if (!qword_1EB423760)
  {
    sub_1AAD5F4DC(255, &unk_1EB424A80, type metadata accessor for Resolved3DContentList.Item);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB423760);
    }
  }
}

uint64_t sub_1AAD5F6B8(uint64_t a1, uint64_t a2)
{
  sub_1AAD5F4DC(0, &unk_1EB424A80, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD5F738(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAD5F5F4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAD5F7A8(uint64_t a1)
{
  sub_1AAD5F4DC(0, &unk_1EB424A80, type metadata accessor for Resolved3DContentList.Item);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AAD5F850()
{
  result = qword_1EB423768;
  if (!qword_1EB423768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423768);
  }

  return result;
}

unint64_t sub_1AAD5F8A4()
{
  result = qword_1EB423770[0];
  if (!qword_1EB423770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB423770);
  }

  return result;
}

uint64_t sub_1AAD5F914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v37 = a4;
  v33 = a1;
  v34 = a5;
  sub_1AAD62424(0, &qword_1ED9ADA40, MEMORY[0x1E6980398], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  sub_1AAD62488();
  v38 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _Chart3DContentInputs(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1AAF8E5B4();
  v19 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8E5C4();
  sub_1AAD60190(a2, v18);
  v22 = sub_1AAF8F184();
  sub_1AAD624D8(0, v23, v24, v25);
  sub_1AAD62530(v26, v27, v28, v29);
  sub_1AAF8DCB4();
  v22(v39, 0);
  sub_1AAD5F914(v15, v18, v36, v37, v34);
  sub_1AAD602F8(v11, v8);
  v30 = sub_1AAF8E5E4();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v8, 1, v30) == 1)
  {
    sub_1AAD6038C(v11);
    (*(v13 + 8))(v15, v38);
    sub_1AAD60418(v18, type metadata accessor for _Chart3DContentInputs);
    (*(v19 + 8))(v21, v35);
    return sub_1AAD6038C(v8);
  }

  else
  {
    sub_1AAF8E5D4();
    sub_1AAD6038C(v11);
    (*(v13 + 8))(v15, v38);
    sub_1AAD60418(v18, type metadata accessor for _Chart3DContentInputs);
    (*(v19 + 8))(v21, v35);
    return (*(v31 + 8))(v8, v30);
  }
}

uint64_t static _Chart3DContentModifier._makeChart3DContent(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a4;
  v37 = a3;
  v33 = a1;
  v35 = a7;
  sub_1AAD62424(0, &qword_1ED9ADA40, MEMORY[0x1E6980398], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = sub_1AAF8D954();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v30 - v16;
  v18 = type metadata accessor for _Chart3DContentInputs(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1AAF8E5B4();
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8E5C4();
  sub_1AAD60190(a2, v20);
  v23 = sub_1AAF8F184();
  type metadata accessor for Chart3DContentModifierBodyAccessor(0, a5, a6, v24);
  swift_getWitnessTable();
  sub_1AAF8DCB4();
  v23(v40, 0);
  v25 = v32;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v17, v20, v37, v39, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1AAD602F8(v14, v25);
  v27 = sub_1AAF8E5E4();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v25, 1, v27) == 1)
  {
    sub_1AAD6038C(v14);
    (*(v36 + 8))(v17, v38);
    sub_1AAD60418(v20, type metadata accessor for _Chart3DContentInputs);
    (*(v31 + 8))(v22, v34);
    return sub_1AAD6038C(v25);
  }

  else
  {
    sub_1AAF8E5D4();
    sub_1AAD6038C(v14);
    (*(v36 + 8))(v17, v38);
    sub_1AAD60418(v20, type metadata accessor for _Chart3DContentInputs);
    (*(v31 + 8))(v22, v34);
    return (*(v28 + 8))(v25, v27);
  }
}

uint64_t sub_1AAD60190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Chart3DContentInputs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static _Chart3DContentModifier._chart3DContentCount(inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(a1, a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1AAD602F8(uint64_t a1, uint64_t a2)
{
  sub_1AAD62424(0, &qword_1ED9ADA40, MEMORY[0x1E6980398], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAD6038C(uint64_t a1)
{
  sub_1AAD62424(0, &qword_1ED9ADA40, MEMORY[0x1E6980398], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAD60418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAD60478(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for Chart3DContentModifierBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable();
    return sub_1AAF8DCA4();
  }

  return result;
}

uint64_t static ModifiedContent<>._makeChart3DContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a3;
  v24 = a5;
  v26 = a7;
  v27 = a2;
  sub_1AAF8DF74();
  v11 = sub_1AAF8D954();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v25 = sub_1AAF8D954();
  v15 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v22 - v16;
  v28 = a3;
  v29 = a4;
  v18 = v24;
  v30 = v24;
  v31 = a6;
  sub_1AAF007E4(sub_1AAD6089C, a4, &v22 - v16);
  (*(v12 + 16))(v14, a1, v11);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v23;
  *(v20 + 3) = a4;
  *(v20 + 4) = v18;
  *(v20 + 5) = a6;
  (*(v12 + 32))(&v20[v19], v14, v11);
  (*(a6 + 32))(v17, v27, sub_1AAD60A10, v20, a4, a6);

  return (*(v15 + 8))(v17, v25);
}

uint64_t sub_1AAD60804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AAF8DF74();
  v6 = *(v5 + 36);
  v10[2] = v5;
  v10[3] = a3;
  v7 = sub_1AAF8D1C4();
  sub_1AACBE580(a1 + v6, sub_1AAD62CC4, v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t sub_1AAD608A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1AAF8D954();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16[-v13];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  sub_1AAF8DF74();
  sub_1AAF8D954();
  sub_1AAF007E4(sub_1AAD62588, a3, v14);
  (*(a5 + 32))(v14, a1, a3, a5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1AAD60A10(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  sub_1AAF8DF74();
  v7 = *(sub_1AAF8D954() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1AAD608A8(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_1AAD60ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = sub_1AAF8DF74();
  v8[3] = a2;
  v5 = sub_1AAF8D1C4();
  sub_1AACBE580(a1, sub_1AAD62594, v8, a2, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t static ModifiedContent<>._chart3DContentCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = (*(a5 + 40))(a1, sub_1AAD60C14, v10, a3, a5);

  return v11;
}

uint64_t Chart3DContent.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, a2, v10);
  (*(v6 + 16))(v8, a1, a3);
  return sub_1AAF8DF24();
}

uint64_t sub_1AAD60E7C(uint64_t a1)
{
  sub_1AAF8E134();
  result = sub_1AAF90274();
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

uint64_t sub_1AAD60F18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_1AAD6109C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1AAD61304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v7 = *a1;
  *a5 = a1;
  v8 = *(v7 + *MEMORY[0x1E69E6CE8] + 8);
  v9 = type metadata accessor for _EnvironmentKeyWritingChart3DContentModifier(0, v8, a3, a4);
  v10 = *(*(v8 - 8) + 32);
  v11 = a5 + *(v9 + 28);

  return v10(v11, a2, v8);
}

uint64_t sub_1AAD613BC(unsigned int *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a3;
  v32 = *MEMORY[0x1E69E9840];
  type metadata accessor for _EnvironmentKeyWritingChart3DContentModifier(255, a5, a3, a4);
  v8 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v13 = type metadata accessor for ChildEnvironment(0, a5, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = type metadata accessor for _Chart3DContentInputs(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD60190(a2, v19);
  v20 = sub_1AACBC3B4(a1);
  LODWORD(a1) = sub_1AAF8F164();
  v23 = type metadata accessor for _EnvironmentKeyWritingChart3DContentModifier(0, a5, v21, v22);
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  sub_1AAD616C4(v20, a1, v10, a5, v16);
  v30 = v13;
  WitnessTable = swift_getWitnessTable();
  sub_1AAD62424(0, &qword_1EB423878, MEMORY[0x1E697F228], MEMORY[0x1E698D388]);
  sub_1AACBC418(v16, sub_1AAD623BC, v29, v13, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  (*(v14 + 8))(v16, v13);
  sub_1AAF8F174();
  v28(v19);
  return sub_1AAD60418(v19, type metadata accessor for _Chart3DContentInputs);
}

uint64_t sub_1AAD616C4@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v9 = *(type metadata accessor for ChildEnvironment(0, a4, a3, a4) + 32);
  type metadata accessor for _EnvironmentKeyWritingChart3DContentModifier(255, a4, v10, v11);
  v12 = sub_1AAF8FE74();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v9], a3, v12);
}

uint64_t sub_1AAD6184C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - v8;
  v12 = type metadata accessor for _EnvironmentKeyWritingChart3DContentModifier(0, v6, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v20 - v15);
  (*(v7 + 16))(v9, a2, v6, v14);
  sub_1AAD61304(a1, v9, v17, v18, v16);

  Chart3DContent.modifier<A>(_:)(v16, a3, v12);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1AAD61A20(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v2 = *(a1 + 16);
  v55 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD62B10(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _EnvironmentKeyWritingChart3DContentModifier(255, v2, v8, v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v19 = *(v18 + 48);
  Value = AGGraphGetValue();
  v22 = v21;
  v23 = *(v10 - 8);
  v24 = *(v23 + 16);
  v57 = v10;
  v24(v17, Value, v10);
  v25 = v22 & 1;
  v17[v19] = v22 & 1;
  v26 = *(v5 + 56);
  v59 = v1;
  v27 = sub_1AAF8E134();
  v28 = AGGraphGetValue();
  LOBYTE(v5) = v29;
  v30 = (*(*(v27 - 8) + 16))(v7, v28, v27);
  v56 = v7;
  v7[v26] = v5 & 1;
  if (v5 & 1) != 0 || v25 && ((MEMORY[0x1EEE9AC00](v30), *(&v49 - 2) = v2, *(&v49 - 1) = v17, sub_1AAF8FE74(), sub_1AACD90D0(sub_1AAD62B7C, (&v49 - 4), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v32, &v62), v62 == 2) || (v62) || !AGGraphGetOutputValue())
  {
    v50 = v2;
    v33 = v60;
    v34 = *(v61 + 16);
    v34(v60, v17, TupleTypeMetadata2);
    v51 = v34;
    v52 = v23;
    v35 = TupleTypeMetadata2;
    v36 = *(v23 + 8);

    v37 = v33;
    v38 = v57;
    v36(v37, v57);
    v39 = v53;
    v34(v53, v17, v35);
    v40 = *(v55 + 16);
    v41 = &v39[*(v38 + 28)];
    v55 = v27;
    v40(v54, v41, v50);
    v36(v39, v38);
    TupleTypeMetadata2 = v35;
    v42 = v56;
    swift_setAtWritableKeyPath();

    AGGraphSetOutputValue();
    sub_1AAD60418(v42, sub_1AAD62B10);
    v43 = *(v58 + 32);
    v44 = sub_1AAF8FE74();
    v45 = v59;
    (*(*(v44 - 8) + 8))(v59 + v43, v44);
    v46 = v60;
    v51(v60, v17, TupleTypeMetadata2);
    v31 = v61;
    v47 = v52;
    (*(v52 + 32))(v45 + v43, v46, v38);
    (*(v47 + 56))(v45 + v43, 0, 1, v38);
  }

  else
  {
    sub_1AAD60418(v56, sub_1AAD62B10);
    v31 = v61;
  }

  return (*(v31 + 8))(v17, TupleTypeMetadata2);
}

void sub_1AAD61FAC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v33 = a4;
  v32 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _EnvironmentKeyWritingChart3DContentModifier(255, v8, v8, v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = v27 - v14;
  v31 = a1;
  v35 = *a1;
  v16 = *(v12 + 16);
  v29 = a2;
  v16(v27 - v14, a2, TupleTypeMetadata2, v13);
  v17 = *v15;
  v18 = *(v10 - 8);
  v19 = *(v18 + 8);
  v20 = v18 + 8;

  v27[1] = v20;
  v28 = v19;
  v19(v15, v10);
  v34 = v17;
  sub_1AAF8E134();
  sub_1AAF90274();
  LOBYTE(v20) = sub_1AAF8F5F4();

  if (v20)
  {
    v21 = *(v10 + 28);
    (v16)(v15, v29, TupleTypeMetadata2);
    v22 = v32;
    v23 = v30;
    (*(v32 + 16))(v30, &v15[*(v10 + 28)], a3);
    v24 = v28(v15, v10);
    MEMORY[0x1EEE9AC00](v24);
    v27[-4] = a3;
    v27[-3] = v23;
    LODWORD(v27[-2]) = 2;
    sub_1AACBC418(v31 + v21, sub_1AAD62B9C, &v27[-6], a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v25);
    LOBYTE(v21) = v35;
    (*(v22 + 8))(v23, a3);
    v26 = v21 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  *v33 = v26 & 1;
}

uint64_t sub_1AAD622E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AAF8E134();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1AAD62360(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a4;
  v9[3] = a1;
  v10 = a3;
  return sub_1AACBC418(a2, sub_1AAD62C00, v9, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
}

void sub_1AAD62424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AAD62488()
{
  if (!qword_1EB423880)
  {
    v0 = sub_1AAF8D954();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423880);
    }
  }
}

void sub_1AAD624D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB423888)
  {
    v4 = type metadata accessor for Chart3DContentModifierBodyAccessor(0, MEMORY[0x1E69E73E0], &protocol witness table for Never, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB423888);
    }
  }
}

unint64_t sub_1AAD62530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1EB423890[0];
  if (!qword_1EB423890[0])
  {
    sub_1AAD624D8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB423890);
  }

  return result;
}

void sub_1AAD625B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _EnvironmentKeyWritingChart3DContentModifier(255, *(a1 + 16), a3, a4);
  sub_1AAF8D1A4();
  if (v4 <= 0x3F)
  {
    sub_1AAD62424(319, &qword_1EB423878, MEMORY[0x1E697F228], MEMORY[0x1E698D388]);
    if (v5 <= 0x3F)
    {
      sub_1AAF8FE74();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AAD62698(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
  v10 = 8 * v9;
  if (v9 > 3)
  {
    goto LABEL_7;
  }

  v13 = (((1 << v10) + a2 - v7) >> v10) + 1;
  if (HIWORD(v13))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_28:
    v17 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8);
    if ((v5 & 0x80000000) != 0)
    {
      v19 = (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v19 = v18 + 1;
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 > 0xFF)
  {
    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v13 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (*(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) == 2)
  {
    v16 = 0;
  }

  else
  {
    if (v9 <= 3)
    {
      v15 = *(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v16 = *a1;
      }
    }

    else if (v15 == 1)
    {
      v16 = *a1;
    }

    else
    {
      v16 = *a1;
    }
  }

  return (v16 | v14) + v7;
}

void sub_1AAD62874(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(*(a4 + 16) - 8) + 64) + ((v10 + 8) & ~(v10 | 7));
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + (v10 | 7) + 4) & ~(v10 | 7));
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

void sub_1AAD62B10(uint64_t a1)
{
  if (!qword_1EB423918)
  {
    sub_1AAF8E134();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB423918);
    }
  }
}

uint64_t sub_1AAD62B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v13 = *(v8 + 16);
  v14 = a1;
  v15 = v10;
  return sub_1AACBC418(v9, sub_1AAD62C00, &v12, v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
}

uint64_t sub_1AAD62C00@<X0>(_BYTE *a2@<X8>)
{
  result = AGCompareValues();
  *a2 = result;
  return result;
}

unint64_t sub_1AAD62C40(uint64_t a1)
{
  sub_1AAF900D4();

  v1 = sub_1AAF907B4();
  MEMORY[0x1AC5982F0](v1);

  return 0xD000000000000014;
}

uint64_t Chart3DCameraProjection.hashValue.getter()
{
  v1 = *v0;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAD62D7C()
{
  v1 = *v0;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906F4();
}

uint64_t Chart3DRenderingStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAD62E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAD64C08();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_1AAD62EDC()
{
  sub_1AAD66530();

  return sub_1AAF8E144();
}

uint64_t sub_1AAD62F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAD64C60();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_1AAD62F88()
{
  sub_1AAD664DC();

  return sub_1AAF8E144();
}

double sub_1AAD62FD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1AAD65294(v0[2]);
  sub_1AAD630F0(&v8, v1, v2, v3);
  sub_1AAF8FCB4();
  *&v5 = v4;
  *&v6 = v6;
  return COERCE_DOUBLE(__PAIR64__(LODWORD(v6), v5));
}

void __swiftcall Chart3DPose.init(azimuth:inclination:)(SPAngle azimuth, SPAngle inclination)
{
  v4 = v2;
  v5 = sub_1AAD630B8(inclination.radians);
  v6 = sub_1AAD630D4(fmin(fmax(v5, -89.9), 89.9));
  sub_1AAD630F0(&v9, 1.0, v6, azimuth.radians);
  v7 = v9;
  v8 = v11;
  *(v4 + 16) = v10;
  *(v4 + 24) = v8;
  *v4 = v7;
}

void sub_1AAD630F0(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0x3FF0000000000000;
}

__n128 static Chart3DPose.front.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_1AAD630D4(0.0);
  v3 = sub_1AAD630B8(v2);
  v4 = sub_1AAD630D4(fmin(fmax(v3, -89.9), 89.9));
  sub_1AAD630F0(&v7, 1.0, v4, v2);
  result = v7;
  v6 = v9;
  a1[1].n128_u64[0] = v8;
  a1[1].n128_u64[1] = v6;
  *a1 = result;
  return result;
}

__n128 sub_1AAD631F4@<Q0>(__n128 *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = sub_1AAD630D4(a2);
  v6 = sub_1AAD630D4(a3);
  v7 = sub_1AAD630B8(v6);
  v8 = sub_1AAD630D4(fmin(fmax(v7, -89.9), 89.9));
  sub_1AAD630F0(&v11, 1.0, v8, v5);
  result = v11;
  v10 = v13;
  a1[1].n128_u64[0] = v12;
  a1[1].n128_u64[1] = v10;
  *a1 = result;
  return result;
}

BOOL static Chart3DPose.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1 == *a2;
  if (a1[1] != a2[1])
  {
    v2 = 0;
  }

  return a1[2] == a2[2] && v2;
}

uint64_t Chart3DPose.hashValue.getter()
{
  sub_1AAF90694();
  sub_1AAF8FE14();
  return sub_1AAF906F4();
}

uint64_t sub_1AAD6331C()
{
  sub_1AAF90694();
  sub_1AAF8FE14();
  return sub_1AAF906F4();
}

uint64_t sub_1AAD63390(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAF8FE14();
  return sub_1AAF906F4();
}

BOOL sub_1AAD633F4(double *a1, double *a2)
{
  v2 = *a1 == *a2;
  if (a1[1] != a2[1])
  {
    v2 = 0;
  }

  return a1[2] == a2[2] && v2;
}

__n128 sub_1AAD63430@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_1AAD630D4(-30.0);
  v3 = sub_1AAD630D4(15.0);
  v4 = sub_1AAD630B8(v3);
  v5 = sub_1AAD630D4(fmin(fmax(v4, -89.9), 89.9));
  sub_1AAD630F0(&v8, 1.0, v5, v2);
  result = v8;
  v7 = v10;
  a1[1].n128_u64[0] = v9;
  a1[1].n128_u64[1] = v7;
  *a1 = result;
  return result;
}

uint64_t sub_1AAD634B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAD64CB8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_1AAD6351C()
{
  sub_1AAD66584();

  return sub_1AAF8E144();
}

double sub_1AAD63564@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double sub_1AAD6357C@<D0>(uint64_t a1@<X8>)
{
  sub_1AAD651C0();
  sub_1AAF8E144();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1AAD635D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAD66648(&qword_1EB423A60, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1AAD63664(uint64_t a1, uint64_t a2)
{
  sub_1AAD65B44();
  sub_1AAF8E144();
  return v3;
}

uint64_t sub_1AAD636A0@<X0>(uint64_t a1@<X1>, __int128 *a2@<X2>, uint64_t a3@<X8>)
{
  v64 = a1;
  v75 = a3;
  v77 = sub_1AAF8E3D4();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1AAF8D8E4();
  v67 = *(v66 - 8);
  v6 = MEMORY[0x1EEE9AC00](v66);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD65D1C(0, v6);
  v69 = v9;
  v70 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD65DF4(0, v10);
  v71 = v13;
  v72 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD65E88(0);
  v17 = v16;
  v65 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD65FD0(0);
  v73 = v20;
  v74 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8DA64();
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v27 = a2[1];
  v78 = *a2;
  v79 = v27;
  v80 = a2[2];
  sub_1AAD66418(0, &qword_1EB423920, &type metadata for Chart3DPose, MEMORY[0x1E6981948]);
  MEMORY[0x1AC597B70](&v81);
  v63 = v81;
  v28 = v82;
  sub_1AAD65B98(0, &qword_1EB423998, sub_1AAD64D3C, &type metadata for Chart3DPoseModifer, MEMORY[0x1E697FDE8]);
  (*(*(v29 - 8) + 16))(v19, v64, v29);
  sub_1AAD65F0C(0);
  v31 = &v19[*(v30 + 36)];
  *v31 = KeyPath;
  *(v31 + 2) = v28;
  *(v31 + 1) = v63;
  v32 = swift_getKeyPath();
  v33 = a2[7];
  v78 = a2[6];
  v79 = v33;
  v80 = a2[8];
  sub_1AAD662C0(0, &qword_1EB423A10, MEMORY[0x1E6981790]);
  sub_1AAF8EE34();
  v34 = v83;
  v35 = v81;
  v36 = v82;
  v37 = &v19[*(v17 + 36)];
  *v37 = v32;
  *(v37 + 1) = v35;
  *(v37 + 2) = v36;
  v37[48] = v34;
  sub_1AAF8E5A4();
  sub_1AAF8D8C4();
  v38 = swift_allocObject();
  v39 = a2[7];
  v38[7] = a2[6];
  v38[8] = v39;
  v38[9] = a2[8];
  v40 = a2[3];
  v38[3] = a2[2];
  v38[4] = v40;
  v41 = a2[5];
  v38[5] = a2[4];
  v38[6] = v41;
  v42 = a2[1];
  v38[1] = *a2;
  v38[2] = v42;
  sub_1AAD65CE4(a2, &v78);
  sub_1AAD66648(&qword_1EB4239A8, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  sub_1AAD66648(&qword_1EB4239B0, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  v43 = v66;
  sub_1AAF8F004();

  (*(v67 + 8))(v8, v43);
  v44 = swift_allocObject();
  v45 = a2[7];
  v44[7] = a2[6];
  v44[8] = v45;
  v44[9] = a2[8];
  v46 = a2[3];
  v44[3] = a2[2];
  v44[4] = v46;
  v47 = a2[5];
  v44[5] = a2[4];
  v44[6] = v47;
  v48 = a2[1];
  v44[1] = *a2;
  v44[2] = v48;
  sub_1AAD65CE4(a2, &v78);
  sub_1AAD66648(&qword_1EB4239C0, sub_1AAD65D1C, MEMORY[0x1E697E8D0]);
  v49 = v69;
  sub_1AAF8EFF4();

  (*(v70 + 8))(v12, v49);
  sub_1AAF8D8F4();
  v50 = sub_1AAD660A4();
  v51 = sub_1AAD66648(&qword_1EB423A08, sub_1AAD65DF4, MEMORY[0x1E697E238]);
  v52 = v68;
  v53 = v65;
  v54 = v71;
  sub_1AAF8EB84();
  (*(v72 + 8))(v15, v54);
  sub_1AAD66354(v19);
  v55 = swift_allocObject();
  v56 = a2[7];
  *(v55 + 112) = a2[6];
  *(v55 + 128) = v56;
  *(v55 + 144) = a2[8];
  v57 = a2[3];
  *(v55 + 48) = a2[2];
  *(v55 + 64) = v57;
  v58 = a2[5];
  *(v55 + 80) = a2[4];
  *(v55 + 96) = v58;
  v59 = a2[1];
  *(v55 + 16) = *a2;
  *(v55 + 32) = v59;
  *(v55 + 160) = v23;
  *(v55 + 168) = v25;
  sub_1AAD65CE4(a2, &v78);
  sub_1AAF8E5A4();
  *&v78 = v53;
  *(&v78 + 1) = v54;
  *&v79 = v50;
  *(&v79 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  v60 = v73;
  v61 = v77;
  sub_1AAF8EAF4();

  (*(v76 + 8))(v5, v61);
  return (*(v74 + 8))(v52, v60);
}

__n128 sub_1AAD63F70@<Q0>(__n128 *a5@<X8>)
{
  sub_1AAD66584();
  sub_1AAF8E144();
  result = v7;
  a5[1] = v8;
  *a5 = v7;
  return result;
}

void sub_1AAD6401C(uint64_t a1, __int128 *a2)
{
  v3 = a2[4];
  v29 = a2[3];
  v30 = v3;
  *&v31 = *(a2 + 10);
  sub_1AAD66418(0, &qword_1EB423A18, &type metadata for Chart3DPose, MEMORY[0x1E6981790]);
  sub_1AAF8EE34();
  sub_1AAF8D8D4();
  v5 = *&v27 + sub_1AAD630D4(v4);
  sub_1AAF8D8D4();
  v7 = *(&v26 + 1) + sub_1AAD630D4(v6);
  v8 = sub_1AAD630D4(45.0);
  v9 = sub_1AAD630B8(v8);
  if (v9 > 0.0)
  {
    v10 = v9;
    v11 = sub_1AAD630D4(1.5);
    v12 = sub_1AAD630B8(v5);
    v13 = v10 * round(v12 / v10);
    v14 = vabdd_f64(v12, v13);
    v15 = sub_1AAD630B8(v11);
    if (v14 <= v15)
    {
      v5 = sub_1AAD630D4(v13);
    }

    v16 = sub_1AAD630B8(v7);
    v17 = v10 * round(v16 / v10);
    if (vabdd_f64(v16, v17) <= v15)
    {
      v7 = sub_1AAD630D4(v17);
    }
  }

  v18 = sub_1AAD630B8(v7);
  v19 = sub_1AAD630D4(fmin(fmax(v18, -89.9), 89.9));
  sub_1AAD630F0(v25, *&v26, v19, v5);
  v20 = a2[1];
  v29 = *a2;
  v30 = v20;
  v22 = *a2;
  v21 = a2[1];
  v31 = a2[2];
  v26 = v22;
  v27 = v21;
  v28 = a2[2];
  v23 = MEMORY[0x1E6981948];
  sub_1AAD66468(&v29, &v24, &qword_1EB423920, MEMORY[0x1E6981948]);
  sub_1AAD66418(0, &qword_1EB423920, &type metadata for Chart3DPose, v23);
  sub_1AAF8EF64();
}

double sub_1AAD64230(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v14 = *a2;
  v15 = v3;
  v16 = a2[2];
  sub_1AAD66418(0, &qword_1EB423920, &type metadata for Chart3DPose, MEMORY[0x1E6981948]);
  MEMORY[0x1AC597B70](&v17);
  v4 = a2[4];
  v14 = a2[3];
  v15 = v4;
  *&v16 = *(a2 + 10);
  v5 = a2[4];
  v11 = a2[3];
  v12 = v5;
  v13 = *(a2 + 10);
  v9 = v18;
  v10 = v19;
  v8[3] = v17;
  v6 = MEMORY[0x1E6981790];
  sub_1AAD66468(&v14, v8, &qword_1EB423A18, MEMORY[0x1E6981790]);
  sub_1AAD66418(0, &qword_1EB423A18, &type metadata for Chart3DPose, v6);
  sub_1AAF8EE44();

  return result;
}

uint64_t sub_1AAD64338(__int128 *a1, double a2, double a3, double a4, double a5)
{
  v10 = a1[1];
  v43 = *a1;
  v44 = v10;
  v12 = *a1;
  v11 = a1[1];
  v45 = a1[2];
  v40 = v12;
  v41 = v11;
  v42 = a1[2];
  sub_1AAD66418(0, &qword_1EB423920, &type metadata for Chart3DPose, MEMORY[0x1E6981948]);
  v14 = v13;
  MEMORY[0x1AC597B70](&v35);
  v15 = v35;
  v16 = sub_1AAD65294(*v36.i64);
  sub_1AAD630F0(&v40, *v15.i64, *&v15.i64[1], v16);
  sub_1AAF8FCB4();
  v32 = v17;
  v29 = v18;
  *&v17 = v19;
  v34 = *&v17;
  v40 = v43;
  v41 = v44;
  v42 = v45;
  MEMORY[0x1AC597B70](v39, v14);
  v40 = v43;
  v41 = v44;
  v42 = v45;
  MEMORY[0x1AC597B70](v38, v14);
  v20 = a2 / a4 + a2 / a4 + -1.0;
  v31 = v20;
  v21 = 1.0 - (a3 / a5 + a3 / a5);
  v30 = v21;
  v22.f64[0] = v32;
  v22.f64[1] = v29;
  *&v22.f64[0] = vcvt_f32_f64(v22);
  v33 = v22;
  *&v22.f64[1] = LODWORD(v34);
  *v23.i64 = sub_1AAD65728(v22, 0, xmmword_1AAF93880);
  v46.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AAF93890, v23.f32[0]), xmmword_1AAF93880, *v23.f32, 1), xmmword_1AAF938A0, v23, 2), xmmword_1AAF938B0, v23, 3);
  v46.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AAF93890, v24.f32[0]), xmmword_1AAF93880, *v24.f32, 1), xmmword_1AAF938A0, v24, 2), xmmword_1AAF938B0, v24, 3);
  v46.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AAF93890, v25.f32[0]), xmmword_1AAF93880, *v25.f32, 1), xmmword_1AAF938A0, v25, 2), xmmword_1AAF938B0, v25, 3);
  v46.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AAF93890, v26.f32[0]), xmmword_1AAF93880, *v26.f32, 1), xmmword_1AAF938A0, v26, 2), xmmword_1AAF938B0, v26, 3);
  v47 = __invert_f4(v46);
  v47.columns[0] = vaddq_f32(v47.columns[3], vaddq_f32(v47.columns[2], vmlaq_n_f32(vmulq_n_f32(v47.columns[0], v31), v47.columns[1], v30)));
  v47.columns[0].i64[0] = vdivq_f32(v47.columns[0], vdupq_laneq_s32(v47.columns[0], 3)).u64[0];
  v47.columns[0].f32[2] = v47.columns[0].f32[2] / v47.columns[0].f32[3];
  v47.columns[0].i32[3] = 0;
  v47.columns[2].i32[3] = HIDWORD(v33.f64[1]);
  *v47.columns[2].f32 = vsub_f32(0, *&v33.f64[0]);
  v47.columns[2].f32[2] = 0.0 - v34;
  v47.columns[3] = vmulq_f32(v47.columns[2], v47.columns[2]);
  v47.columns[1].f32[0] = v47.columns[3].f32[2] + vaddv_f32(*v47.columns[3].f32);
  *v47.columns[3].f32 = vrsqrte_f32(v47.columns[1].u32[0]);
  *v47.columns[3].f32 = vmul_f32(*v47.columns[3].f32, vrsqrts_f32(v47.columns[1].u32[0], vmul_f32(*v47.columns[3].f32, *v47.columns[3].f32)));
  v27 = a1[7];
  v40 = a1[6];
  v41 = v27;
  v42 = a1[8];
  v35 = v47.columns[0];
  v36 = vmulq_n_f32(v47.columns[2], vmul_f32(*v47.columns[3].f32, vrsqrts_f32(v47.columns[1].u32[0], vmul_f32(*v47.columns[3].f32, *v47.columns[3].f32))).f32[0]);
  v37 = 0;
  sub_1AAD662C0(0, &qword_1EB423A10, MEMORY[0x1E6981790]);
  return sub_1AAF8EE44();
}

uint64_t sub_1AAD64620@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  sub_1AAD65B98(0, &qword_1EB423998, sub_1AAD64D3C, &type metadata for Chart3DPoseModifer, MEMORY[0x1E697FDE8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64) + 15;
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v23[-v9];
  v11 = v2[7];
  v30 = v2[6];
  v31 = v11;
  v32 = v2[8];
  v12 = v2[3];
  v26 = v2[2];
  v27 = v12;
  v13 = v2[5];
  v28 = v2[4];
  v29 = v13;
  v14 = v2[1];
  v24 = *v2;
  v25 = v14;
  (*(v7 + 16))(&v23[-v9], a1, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v10, v6);
  v17 = (v16 + ((v8 + v15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v31;
  v17[6] = v30;
  v17[7] = v18;
  v17[8] = v32;
  v19 = v27;
  v17[2] = v26;
  v17[3] = v19;
  v20 = v29;
  v17[4] = v28;
  v17[5] = v20;
  v21 = v25;
  *v17 = v24;
  v17[1] = v21;
  *a2 = sub_1AAD65C00;
  a2[1] = v16;
  return sub_1AAD65CE4(&v24, v23);
}

uint64_t View.chart3DPose(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  sub_1AAD66418(0, &qword_1EB423578, &type metadata for Chart3DRay, MEMORY[0x1E69E6720]);
  sub_1AAF8EE24();
  v31 = v34;
  v32 = v35;
  LOBYTE(v33) = v36;
  *(&v33 + 1) = *(&v36 + 1);
  *&v25 = v6;
  *(&v25 + 1) = v5;
  *&v27 = v10;
  *(&v27 + 1) = v9;
  *&v26 = v7;
  *(&v26 + 1) = v8;
  *&v34 = v6;
  *(&v34 + 1) = v5;
  *&v36 = v10;
  *(&v36 + 1) = v9;
  *&v35 = v7;
  *(&v35 + 1) = v8;
  sub_1AAD66418(0, &qword_1EB423920, &type metadata for Chart3DPose, MEMORY[0x1E6981948]);
  v12 = v11;

  MEMORY[0x1AC597B70](&v14, v12);
  v24 = v15;
  v23 = v14;
  sub_1AAF8EE24();
  v20 = v31;
  v21 = v32;
  v22 = v33;
  v16 = v27;
  v17 = v28;
  v18 = v29;
  v19 = v30;
  v14 = v25;
  v15 = v26;
  MEMORY[0x1AC597820](&v14, a2, &type metadata for Chart3DPoseModifer, a3);
  v40 = v20;
  v41 = v21;
  v42 = v22;
  v36 = v16;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v34 = v14;
  v35 = v15;
  return sub_1AAD649C4(&v34);
}

double View.chart3DPose(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1AAF8EAE4();

  return result;
}

double View.chart3DCameraProjection(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1AAF8EAE4();

  return result;
}

void *sub_1AAD64AF4@<X0>(_BYTE *a1@<X8>)
{
  sub_1AAD66530();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

double View.chart3DRenderingStyle(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1AAF8EAE4();

  return result;
}

unint64_t sub_1AAD64C08()
{
  result = qword_1EB423928;
  if (!qword_1EB423928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423928);
  }

  return result;
}

unint64_t sub_1AAD64C60()
{
  result = qword_1EB423930;
  if (!qword_1EB423930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423930);
  }

  return result;
}

unint64_t sub_1AAD64CB8()
{
  result = qword_1EB423938;
  if (!qword_1EB423938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423938);
  }

  return result;
}

unint64_t sub_1AAD64D3C()
{
  result = qword_1EB423940;
  if (!qword_1EB423940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423940);
  }

  return result;
}

uint64_t sub_1AAD64D90(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AAD66418(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAD64DF4(uint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  sub_1AAD66418(255, a2, a3, MEMORY[0x1E6980A08]);
  sub_1AAF8DF74();
  sub_1AAD64D90(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for SgAnnotation.CollisionResolution.Method(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SgAnnotation.CollisionResolution.Method(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_1AAD64FFC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1AAD65028(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1AAD65070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAD650F8()
{
  result = qword_1EB423978;
  if (!qword_1EB423978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423978);
  }

  return result;
}

unint64_t sub_1AAD65150()
{
  result = qword_1EB423980;
  if (!qword_1EB423980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423980);
  }

  return result;
}

unint64_t sub_1AAD651C0()
{
  result = qword_1EB423988;
  if (!qword_1EB423988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423988);
  }

  return result;
}

int32x4_t sub_1AAD65214@<Q0>(int32x4_t *a1@<X8>)
{
  sub_1AAD65B98(0, &qword_1EB4235F0, sub_1AAD580CC, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  result = vcgezq_f32(*AGGraphGetValue());
  *a1 = result;
  return result;
}

uint64_t sub_1AAD6529C()
{
  v36 = *MEMORY[0x1E69E9840];
  v0 = sub_1AAF8CF04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AAF8D784();
  v34.n128_u64[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AAF8CFB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AGGraphGetValue();
  if (v11)
  {
    v32.i64[0] = v1;
    v33.i64[0] = v0;
    v12 = *AGGraphGetValue();
    swift_unknownObjectRetain();
    sub_1AAF8CF44();
    swift_unknownObjectRelease();
    v13 = (v8 + 8);
    sub_1AAF8CFA4();
    if (v12)
    {
      v14 = *v13;
      (*v13)(v10, v7);
      swift_unknownObjectRetain();
      sub_1AAF8CF44();
      swift_unknownObjectRelease();
      sub_1AAF8CEF4();
      v15 = v33.i64[0];
      sub_1AAF8CF94();
      (*(v32.i64[0] + 8))(v3, v15);
    }

    else
    {
      v14 = *v13;
      (*v13)(v10, v7);
      swift_unknownObjectRetain();
      sub_1AAF8CF44();
      swift_unknownObjectRelease();
      sub_1AAF8D774();
      sub_1AAF8CF94();
      (*(v34.n128_u64[0] + 8))(v6, v4);
    }

    v14(v10, v7);
  }

  swift_unknownObjectRetain();
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v17 = *Value;
  v18 = *(Value + 8);
  v19 = sub_1AAD65294(*(Value + 16));
  sub_1AAD630F0(&v35, v17, v18, v19);
  sub_1AAF8FCB4();
  *&v20 = v20;
  *&v21 = v21;
  *&v22 = v22;
  v23.n128_u64[0] = __PAIR64__(LODWORD(v21), LODWORD(v20));
  v23.n128_u64[1] = LODWORD(v22);
  v34 = v23;
  AGGraphGetValue();
  sub_1AAF8D094();
  sub_1AAF8CC44();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1AAF8CC74();
  v33 = v25;
  v34 = v24;
  v32 = v26;
  swift_unknownObjectRelease();
  *v27.i64 = sub_1AAD65860(v32, v33, v34);
  *&v30 = sub_1AAD658CC(v27, v28, v29);
  v35 = v30;
  type metadata accessor for simd_quatf(0);
  return AGGraphSetOutputValue();
}

double sub_1AAD65728(float32x4_t a1, float32x4_t a2, int32x4_t a3)
{
  v3 = vsubq_f32(a2, a1);
  v4 = vmulq_f32(v3, v3);
  v5 = vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5));
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32)));
  v6 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL), vnegq_f32(v6)), a3, v7);
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmulq_f32(v8, v8);
  *&v11 = v10.f32[1] + (v10.f32[2] + v10.f32[0]);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v13 = vmlaq_f32(vmulq_f32(v7, vnegq_f32(v12)), v6, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  v14 = vextq_s8(a1, v13, 0xCuLL);
  v10.i64[0] = __PAIR64__(v14.u32[1], v12.u32[1]);
  v15.i64[0] = __PAIR64__(v14.u32[2], v12.u32[2]);
  v12.i32[1] = vdupq_laneq_s32(v13, 2).u32[0];
  v12.i64[1] = v6.u32[0];
  v10.i64[1] = v6.u32[1];
  v15.i64[1] = v6.u32[2];
  *&result = vaddq_f32(vmlaq_f32(vmlaq_f32(v12, 0, v10), 0, v15), 0).u64[0];
  return result;
}

double sub_1AAD65860(float32x4_t a1, float32x4_t a2, __n128 a3)
{
  v4 = sub_1AAD65A8C(a2);
  sub_1AAF8FD24();
  sub_1AAF90644();
  sub_1AAF90654();
  return v4;
}

double sub_1AAD658CC(int8x16_t a1, int8x16_t a2, __n128 a3)
{
  v3 = a3.n128_f32[2] + (*a1.i32 + *&a2.i32[1]);
  if (v3 >= 0.0)
  {
    v10 = sqrtf(v3 + 1.0);
    v11 = vrecpe_f32(COERCE_UNSIGNED_INT(v10 + v10));
    v12 = vmul_f32(v11, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v11));
    v22 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), a3.n128_u64[0]), vext_s8(a3.n128_u64[0], *&vextq_s8(a1, a1, 8uLL), 4uLL)), vmul_f32(v12, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v12)).f32[0]);
  }

  else if (*a1.i32 < *&a2.i32[1] || *a1.i32 < a3.n128_f32[2])
  {
    v5 = 1.0 - *a1.i32;
    if (*&a2.i32[1] >= a3.n128_f32[2])
    {
      v23 = sqrtf(*&a2.i32[1] + (v5 - a3.n128_f32[2]));
      *&v24 = v23 + v23;
      v25 = vrecpe_f32(v24);
      v26 = vmul_f32(v25, vrecps_f32(v24, v25));
      v27.i32[0] = vmul_f32(v26, vrecps_f32(v24, v26)).u32[0];
      v26.f32[0] = *&a1.i32[1] + *a2.i32;
      v26.i32[1] = v24;
      v27.i32[1] = 0.25;
      v22 = vmul_f32(v26, v27);
    }

    else
    {
      v6 = sqrtf(a3.n128_f32[2] + (v5 - *&a2.i32[1]));
      v7 = vrecpe_f32(COERCE_UNSIGNED_INT(v6 + v6));
      v8 = vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v7));
      v22 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL)), a3.n128_u64[0]), vmul_f32(v8, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v8)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    v13 = sqrtf(*a1.i32 + ((1.0 - *&a2.i32[1]) - a3.n128_f32[2]));
    v14.f32[0] = v13 + v13;
    v15 = vrecpe_f32(v14.u32[0]);
    v16 = vmul_f32(v15, vrecps_f32(v14.u32[0], v15));
    v17 = vmul_f32(v16, vrecps_f32(v14.u32[0], v16)).u32[0];
    v14.f32[1] = *&a1.i32[1] + *a2.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v17;
    v22 = vmul_f32(v14, _D5);
  }

  return *&v22;
}

double sub_1AAD65A8C(float32x4_t _Q0)
{
  _S3 = _Q0.i32[1];
  _S5 = _Q0.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = _Q0.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(_Q0.f32[2], _Q0, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (_Q0.f32[0] * _Q0.f32[1])) + (v10 + (_Q0.f32[0] * _Q0.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

unint64_t sub_1AAD65B44()
{
  result = qword_1EB423990;
  if (!qword_1EB423990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423990);
  }

  return result;
}

void sub_1AAD65B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AAD65C00@<X0>(uint64_t a1@<X8>)
{
  sub_1AAD65B98(0, &qword_1EB423998, sub_1AAD64D3C, &type metadata for Chart3DPoseModifer, MEMORY[0x1E697FDE8]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  return sub_1AAD636A0(v1 + v5, v6, a1);
}

void sub_1AAD65D1C(uint64_t a1, double a2)
{
  if (!qword_1EB4239A0)
  {
    sub_1AAF8D8E4();
    sub_1AAD66648(&qword_1EB4239A8, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
    sub_1AAD66648(&qword_1EB4239B0, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
    v2 = sub_1AAF8DFA4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB4239A0);
    }
  }
}

void sub_1AAD65DF4(uint64_t a1, double a2)
{
  if (!qword_1EB4239B8)
  {
    sub_1AAD65D1C(255, a2);
    sub_1AAD66648(&qword_1EB4239C0, sub_1AAD65D1C, MEMORY[0x1E697E8D0]);
    v2 = sub_1AAF8DB74();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB4239B8);
    }
  }
}

void sub_1AAD65E88(uint64_t a1)
{
  if (!qword_1EB4239C8)
  {
    sub_1AAD65F0C(255);
    sub_1AAD662C0(255, &qword_1EB4239D8, MEMORY[0x1E6980A08]);
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4239C8);
    }
  }
}

void sub_1AAD65F0C(uint64_t a1)
{
  if (!qword_1EB4239D0)
  {
    sub_1AAD65B98(255, &qword_1EB423998, sub_1AAD64D3C, &type metadata for Chart3DPoseModifer, MEMORY[0x1E697FDE8]);
    sub_1AAD66418(255, &qword_1EB423948, &type metadata for Chart3DPose, MEMORY[0x1E6980A08]);
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4239D0);
    }
  }
}

void sub_1AAD65FD0(uint64_t a1)
{
  if (!qword_1EB4239E0)
  {
    sub_1AAD65E88(255);
    sub_1AAD65DF4(255, v1);
    sub_1AAD660A4();
    sub_1AAD66648(&qword_1EB423A08, sub_1AAD65DF4, MEMORY[0x1E697E238]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB4239E0);
    }
  }
}

unint64_t sub_1AAD660A4()
{
  result = qword_1EB4239E8;
  if (!qword_1EB4239E8)
  {
    sub_1AAD65E88(255);
    sub_1AAD66124();
    sub_1AAD6624C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4239E8);
  }

  return result;
}

unint64_t sub_1AAD66124()
{
  result = qword_1EB4239F0;
  if (!qword_1EB4239F0)
  {
    sub_1AAD65F0C(255);
    sub_1AAD661BC();
    sub_1AAD64D90(&qword_1EB423950, &qword_1EB423948, &type metadata for Chart3DPose);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4239F0);
  }

  return result;
}

unint64_t sub_1AAD661BC()
{
  result = qword_1EB4239F8;
  if (!qword_1EB4239F8)
  {
    sub_1AAD65B98(255, &qword_1EB423998, sub_1AAD64D3C, &type metadata for Chart3DPoseModifer, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4239F8);
  }

  return result;
}

unint64_t sub_1AAD6624C()
{
  result = qword_1EB423A00;
  if (!qword_1EB423A00)
  {
    sub_1AAD662C0(255, &qword_1EB4239D8, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423A00);
  }

  return result;
}

void sub_1AAD662C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AAD66418(255, &qword_1EB423578, &type metadata for Chart3DRay, MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AAD66354(uint64_t a1)
{
  sub_1AAD65E88(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAD663B0(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 15);
}

void sub_1AAD66418(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAD66468(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAD66418(0, a3, &type metadata for Chart3DPose, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1AAD664DC()
{
  result = qword_1EB423A20;
  if (!qword_1EB423A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423A20);
  }

  return result;
}

unint64_t sub_1AAD66530()
{
  result = qword_1EB423A28;
  if (!qword_1EB423A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423A28);
  }

  return result;
}

unint64_t sub_1AAD66584()
{
  result = qword_1EB423A30;
  if (!qword_1EB423A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423A30);
  }

  return result;
}

uint64_t sub_1AAD66648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1AAD66690(uint64_t a1)
{
  if (!qword_1EB423A40)
  {
    sub_1AAD667D4(255);
    sub_1AAD65FD0(255);
    sub_1AAF8E3D4();
    sub_1AAD65E88(255);
    sub_1AAD65DF4(255, v1);
    sub_1AAD660A4();
    sub_1AAD66648(&qword_1EB423A08, sub_1AAD65DF4, MEMORY[0x1E697E238]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v2 = sub_1AAF8DC24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB423A40);
    }
  }
}

void sub_1AAD667D4(uint64_t a1)
{
  if (!qword_1EB423A48)
  {
    sub_1AAD65FD0(255);
    sub_1AAF8E3D4();
    sub_1AAD65E88(255);
    sub_1AAD65DF4(255, v1);
    sub_1AAD660A4();
    sub_1AAD66648(&qword_1EB423A08, sub_1AAD65DF4, MEMORY[0x1E697E238]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB423A48);
    }
  }
}

unint64_t sub_1AAD668FC()
{
  result = qword_1EB423A50;
  if (!qword_1EB423A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423A50);
  }

  return result;
}

unint64_t sub_1AAD66954()
{
  result = qword_1EB423A58;
  if (!qword_1EB423A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423A58);
  }

  return result;
}

uint64_t sub_1AAD669CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[6];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = a2[6];
  v24 = *(a1 + 9);
  v25 = v7;
  v17 = v8;
  v18 = v2;
  v19 = v3;
  v20 = v24;
  v9 = *(a1 + 2);
  v21 = *(a1 + 1);
  v22 = v9;
  v23 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v10 = *(a2 + 2);
  v15 = *(a2 + 1);
  v16 = v10;
  return _s6Charts12ContourLinesV2eeoiySbAC_ACtFZ_0(&v18, &v12) & 1;
}

uint64_t AnyContourContent.init<A>(erasing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = sub_1AACB2508(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(v6, a1, a2);
}

uint64_t static AnyContourContent._makeContourContent(_:_:)(void *a1)
{
  v1 = a1[4];
  v2 = sub_1AACBB42C(a1, a1[3]);
  return (*(v1 + 8))(v2);
}

uint64_t sub_1AAD66B60(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_1AACBB42C(a1, v1);

  return sub_1AAD66B24(v3, v1, v2);
}

uint64_t static Optional<A>._makeContourContent(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = sub_1AAF8FE74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *(a2 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8, v14);
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    result = (*(v9 + 8))(v11, v8);
    *a4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v12 + 32))(v16, v11, a2);
    (*(a3 + 8))(v16);
    return (*(v12 + 8))(v16, a2);
  }

  return result;
}

uint64_t static BuilderConditional<>._makeContourContent(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v26[0] = a5;
  v26[1] = a6;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for BuilderConditional.Storage(0, v18, v19, v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v26 - v22;
  (*(v24 + 16))(v26 - v22, a1, v20, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v23, a3);
    (*(v26[0] + 8))(v12);
    return (*(v10 + 8))(v12, a3);
  }

  else
  {
    (*(v14 + 32))(v17, v23, a2);
    (*(a4 + 8))(v17);
    return (*(v14 + 8))(v17, a2);
  }
}

void static BuilderTuple<each A>._makeContourContent(_:_:)(uint64_t TupleTypeMetadata@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v7 = a2;
  v54 = a5;
  if (a2 == 1)
  {
    v8 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v7)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v52 = v24;
  v25 = *(v24 + 16);
  v56 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v25(v22);
  v53 = v8;
  if (v7)
  {
    v27 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v28 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v29 = (v8 + 32);
    v59 = MEMORY[0x1E69E7CC0];
    v30 = v7;
    v55 = v7;
    while (1)
    {
      v57 = &v51;
      v58 = v30;
      v32 = *v27;
      v33 = *v28;
      v34 = *(*v27 - 8);
      v35.n128_f64[0] = MEMORY[0x1EEE9AC00](v26);
      v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = v7 == 1 ? 0 : *v29;
      (*(v34 + 16))(v37, &v56[v38], v32, v35);
      swift_getDynamicType();
      (*(v33 + 8))(&v60, v37);
      v39 = v60;
      v40 = *(v60 + 16);
      v41 = *(v59 + 2);
      v42 = v41 + v40;
      if (__OFADD__(v41, v40))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v59;
      if (!isUniquelyReferenced_nonNull_native || v42 > *(v59 + 3) >> 1)
      {
        if (v41 <= v42)
        {
          v45 = v41 + v40;
        }

        else
        {
          v45 = v41;
        }

        v44 = sub_1AAD67CA0(isUniquelyReferenced_nonNull_native, v45, 1, v59);
      }

      v7 = v55;
      v46 = *(v39 + 16);
      v59 = v44;
      if (v46)
      {
        if ((*(v44 + 3) >> 1) - *(v44 + 2) < v40)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        v31 = v58;
        if (v40)
        {
          v47 = *(v59 + 2);
          v48 = __OFADD__(v47, v40);
          v49 = v47 + v40;
          if (v48)
          {
            goto LABEL_36;
          }

          *(v59 + 2) = v49;
          v31 = v58;
        }
      }

      else
      {

        v31 = v58;
        if (v40)
        {
          goto LABEL_34;
        }
      }

      v26 = (*(v34 + 8))(v37, v32);
      v29 += 4;
      ++v28;
      ++v27;
      v30 = v31 - 1;
      if (!v30)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v59 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v50 = v53;
    *v54 = v59;
    (*(v52 + 8))(v56, v50);
  }
}

char *sub_1AAD674F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9AD750, &type metadata for ChartContentID.Part, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD67654(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  a5(0);
  sub_1AACD5FDC(0, a6, a7, a8, type metadata accessor for Resolved3DContentList.Item);
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v20 = swift_allocObject();
  result = j__malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v19) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_29;
  }

  v20[2] = v15;
  v20[3] = 2 * ((result - v19) / v18);
LABEL_19:
  sub_1AACD5FDC(0, a6, a7, a8, type metadata accessor for Resolved3DContentList.Item);
  v23 = *(v22 - 8);
  if (v12)
  {
    if (v20 < a4 || (v24 = (*(v23 + 80) + 32) & ~*(v23 + 80), v20 + v24 >= a4 + v24 + *(v23 + 72) * v15))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v20 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v20;
}

char *sub_1AAD67908(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD67A2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB424B10, &type metadata for Chart3DImageRenderer, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD67B50(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1AAD67CA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB423B48, &type metadata for CollectedContourContent, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for _ContourContentInputs(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for _ContourContentInputs(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ChartAxisContent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ChartAxisContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1AAD67F68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AAD67F8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1AAD67FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void sub_1AAD68058(uint64_t a1)
{
  if (!qword_1EB423650)
  {
    sub_1AACD5FDC(255, &qword_1EB423630, &type metadata for PointMark, &off_1EE75C008, type metadata accessor for Resolved3DContentList.Item);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB423650);
    }
  }
}

void *sub_1AAD680DC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1AAD6CF88(0, &qword_1EB423A90, sub_1AAD6C28C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD6C28C(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD68228(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB423A88, &type metadata for Chart3DContours.ResolvedContours, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD68364(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1AAD6CF88(0, &qword_1EB423A68, sub_1AAD684B0, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD684B0(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1AAD684B0(uint64_t a1)
{
  if (!qword_1EB423A70)
  {
    v2 = sub_1AAD68514();
    v3 = type metadata accessor for LRUCache.Element(a1, MEMORY[0x1E69815C0], &type metadata for _Chart3DResolvedSurfaceStyle, v2);
    if (!v4)
    {
      atomic_store(v3, &qword_1EB423A70);
    }
  }
}

unint64_t sub_1AAD68514()
{
  result = qword_1EB423A78;
  if (!qword_1EB423A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423A78);
  }

  return result;
}

char *sub_1AAD68568(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6C208(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1AAD68660(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9AD710, &type metadata for PrimitiveAxisLabel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 264);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[264 * v8])
    {
      memmove(v12, v13, 264 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD687A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB423AA8, &type metadata for PrimitiveAxisTick, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD688C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB423AA0, &type metadata for Transform, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_1AAD689F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB423A80, &type metadata for Chart3DContours.IdentifiableContour, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD68B38(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6CF88(0, &qword_1EB423B28, sub_1AAD6CECC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1AAD68C78(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9AD718, &type metadata for CollectedAxisMark, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 272);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[272 * v8])
    {
      memmove(v12, v13, 272 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD68E28(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9AD748, &type metadata for MeasurableView, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD68F94(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB423AB0, &type metadata for RenderableAxisTick, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD690CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6CBD4(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1AAD691C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB423B20, &type metadata for ChartContentLayoutContext.CovariantYDomain, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6931C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9B1E00, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6945C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6CCD8(0, &qword_1ED9AD670, &qword_1ED9B05F8, MEMORY[0x1E69E7428], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1AAD6958C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1AAD6CC48(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD6CCD8(0, &qword_1EB424B00, &qword_1ED9B05F8, MEMORY[0x1E69E7428], MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD696E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6CCD8(0, &qword_1EB423058, &qword_1EB423060, MEMORY[0x1E69E7450], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1AAD69810(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1AAD69968(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9B09D0, &type metadata for SgLine.Points.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD69A9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6CF88(0, &qword_1ED9AD680, sub_1AAD6C75C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_1AAD69BDC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1AAD6CF88(0, &qword_1EB423B00, sub_1AAD6CB14, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD6CB14(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD69D38(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6CD40(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1AAD69E2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9B1DC8, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD69F50(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1AAD6C93C(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD6C8B8(0, &qword_1ED9B0F20, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, &type metadata for AccessibilityDataField.LabelKey);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD6A0A8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1AAD6CF88(0, &qword_1ED9B0C08, sub_1AAD45EF4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD45EF4(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6A24C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9B1DE8, &type metadata for SgAccessibilityIndividual, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 608);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[608 * v8])
    {
      memmove(v12, v13, 608 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6A38C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9B0C18, &type metadata for AccessibilityChartDataPoint, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6A4CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9AEE90, &type metadata for AccessibilityChartDataField, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD6A604(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1AAD6C840(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD6C8B8(0, &qword_1ED9B0EF0, &qword_1ED9B0C90, &type metadata for AccessibilityChartDataPoint, &type metadata for AccessibilityChartDataPoint.SeriesKey);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6A75C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9AEEB0, &type metadata for LegendRenderingContext.Categories, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6A880(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9AEEA0, &type metadata for LegendRenderingContext.Category, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6A9E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6CF88(0, &qword_1EB423048, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1AAD6ABCC(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    sub_1AAD6CFEC(0, a5, a6, a7, a8);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v19 = v18 - 32;
    if (v18 < 32)
    {
      v19 = v18 - 17;
    }

    v17[2] = v15;
    v17[3] = 2 * (v19 >> 4);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v12)
  {
    if (v17 != a4 || v17 + 4 >= &a4[2 * v15 + 4])
    {
      memmove(v17 + 4, a4 + 4, 16 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD6D048(0, a6, a7, a8);
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1AAD6AD20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB423B58, &type metadata for ChartAccessibilityContent.LeafItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 600);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[600 * v8])
    {
      memmove(v12, v13, 600 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD6AE5C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1AAD6D0FC(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[19 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 152 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD6D1F0(0, qword_1ED9B2098, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6AFB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9AD6E8, &type metadata for ChartAccessibilityContent.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 608);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[608 * v8])
    {
      memmove(v12, v13, 608 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6B0F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9AD730, &type metadata for ChartDisplayList.ViewItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6B240(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9AD720, &type metadata for ChartDisplayLayer, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6B3A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB422FA8, &type metadata for ChartContentID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6B4C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB4230B8, &type metadata for ChartDisplayList.AreaItem.Point, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1AAD6B5E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB4230A8, &type metadata for ChartDisplayList.LineItem.Point, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD6B71C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1ED9AD6A8, MEMORY[0x1E6980F80], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD6B850(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 17;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 4);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[2 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 16 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD0D184(0, a6, MEMORY[0x1E69E6530], a7, "index node ");
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_1AAD6B998(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
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
    sub_1AAD6D1F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
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
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1AAD6BAAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6CF88(0, &qword_1ED9B0668, sub_1AAD459C8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1AAD6BBD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6C594(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1AAD6BCCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6CF88(0, &qword_1EB423AD0, sub_1AAD6C604, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1AAD6BE54(char *result, int64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    a8(0, a5, a6, a7);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[40 * v12])
    {
      memmove(v16, v17, 40 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, 40 * v12);
  }

  return v14;
}

char *sub_1AAD6BFDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6C7C4(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1AAD6C0E8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD6CF88(0, &qword_1EB423AF8, sub_1AACE9A60, MEMORY[0x1E69E6F90]);
  sub_1AACE9A60(0);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AAD6C208(uint64_t a1)
{
  if (!qword_1ED9AD690)
  {
    sub_1AACD5FDC(255, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AD690);
    }
  }
}

void sub_1AAD6C28C(uint64_t a1)
{
  if (!qword_1EB423A98)
  {
    sub_1AAF8D094();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB423A98);
    }
  }
}

void *sub_1AAD6C2F4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD6CC48(0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1AAD6C36C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD6CF88(0, &qword_1ED9B0BF8, sub_1AAD45FFC, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6BCA1AF286BCA1BLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1AAD6C428(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD6D1F0(0, &qword_1EB423080, &type metadata for ChartAccessibilityElements.GroupEntry, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6906906906906907) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 7) + (v7 >> 63));
  return result;
}

void *sub_1AAD6C4D8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD6CF88(0, &qword_1EB423108, sub_1AAD46990, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x76B981DAE6076B99) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 8) + (v7 >> 63));
  return result;
}

void sub_1AAD6C594(uint64_t a1)
{
  if (!qword_1EB423AC0)
  {
    sub_1AACC9AC0(255, &qword_1EB423AC8, &type metadata for SgSymbolSize, MEMORY[0x1E69E6530]);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB423AC0);
    }
  }
}

void sub_1AAD6C604()
{
  if (!qword_1EB423AD8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB423AD8);
    }
  }
}

void sub_1AAD6C66C(uint64_t a1)
{
  if (!qword_1EB423AE8)
  {
    MEMORY[0x1EEE9AC00](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB423AE8);
    }
  }
}

void sub_1AAD6C75C(uint64_t a1)
{
  if (!qword_1ED9AD858)
  {
    type metadata accessor for CGPoint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AD858);
    }
  }
}

void sub_1AAD6C7C4(uint64_t a1)
{
  if (!qword_1ED9B0650)
  {
    sub_1AAD6D1F0(255, qword_1ED9B06E0, MEMORY[0x1E69E7DE0], type metadata accessor for Line);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B0650);
    }
  }
}

void sub_1AAD6C840(uint64_t a1)
{
  if (!qword_1ED9B0C20)
  {
    sub_1AAD6C8B8(255, &qword_1ED9B0EF0, &qword_1ED9B0C90, &type metadata for AccessibilityChartDataPoint, &type metadata for AccessibilityChartDataPoint.SeriesKey);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B0C20);
    }
  }
}

void sub_1AAD6C8B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AAD6D1F0(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AAD6C93C(uint64_t a1)
{
  if (!qword_1ED9B0C28)
  {
    sub_1AAD6C8B8(255, &qword_1ED9B0F20, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, &type metadata for AccessibilityDataField.LabelKey);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B0C28);
    }
  }
}

void sub_1AAD6C9B4(uint64_t a1)
{
  if (!qword_1ED9B1D70)
  {
    sub_1AAD6D1F0(255, &unk_1ED9B1D78, &type metadata for AxisCompositingLayer, type metadata accessor for ParameterRef);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B1D70);
    }
  }
}

void sub_1AAD6CA50(uint64_t a1)
{
  if (!qword_1ED9ADD10)
  {
    sub_1AAD6D1F0(255, &qword_1ED9AEB58, MEMORY[0x1E69E6158], type metadata accessor for MarksDescriptor);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9ADD10);
    }
  }
}

uint64_t sub_1AAD6CACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1AAD6CB14(uint64_t a1)
{
  if (!qword_1EB423B08)
  {
    v2 = type metadata accessor for SamplingTask();
    v3 = sub_1AAD6CB80();
    v4 = type metadata accessor for LRUCache.Element(a1, &type metadata for FunctionSampler.CacheKey, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB423B08);
    }
  }
}

unint64_t sub_1AAD6CB80()
{
  result = qword_1EB423B10;
  if (!qword_1EB423B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB423B10);
  }

  return result;
}

void sub_1AAD6CBD4(uint64_t a1)
{
  if (!qword_1EB423030)
  {
    sub_1AAD0D184(255, &qword_1EB423038, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63B0], "fx dfx ");
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB423030);
    }
  }
}

void sub_1AAD6CC48(uint64_t a1)
{
  if (!qword_1EB423050)
  {
    sub_1AAD6CCD8(255, &qword_1EB424B00, &qword_1ED9B05F8, MEMORY[0x1E69E7428], MEMORY[0x1E69E62F8]);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB423050);
    }
  }
}

void sub_1AAD6CCD8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void, unint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AAD6CDBC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AAD6CD40(uint64_t a1)
{
  if (!qword_1EB423B18)
  {
    sub_1AAD6D1F0(255, &qword_1ED9B29B8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB423B18);
    }
  }
}

void sub_1AAD6CDBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AAD45974();
    v7 = a3(a1, MEMORY[0x1E69E63B0], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AAD6CE20(uint64_t a1)
{
  if (!qword_1ED9B1298)
  {
    v2 = sub_1AAF8CBA4();
    v3 = type metadata accessor for CalendarCache(255);
    v4 = sub_1AAD6CACC(&qword_1ED9B1650, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
    v5 = type metadata accessor for LRUCache.Element(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9B1298);
    }
  }
}

void sub_1AAD6CECC(uint64_t a1)
{
  if (!qword_1EB423B30)
  {
    sub_1AAD6CF3C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB423B30);
    }
  }
}

unint64_t sub_1AAD6CF3C()
{
  result = qword_1EB423B38;
  if (!qword_1EB423B38)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB423B38);
  }

  return result;
}

void sub_1AAD6CF88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AAD6CFEC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AAD6D048(255, a3, a4, a5);
    v6 = sub_1AAF90484();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AAD6D048(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    v7 = MEMORY[0x1E69E62F8];
    sub_1AAD6D1F0(255, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, MEMORY[0x1E69E62F8]);
    sub_1AAD6D1F0(255, a3, a4, v7);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AAD6D0FC(uint64_t a1)
{
  if (!qword_1ED9B1DF8)
  {
    sub_1AAD6D1F0(255, qword_1ED9B2098, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6720]);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B1DF8);
    }
  }
}

void sub_1AAD6D178(uint64_t a1)
{
  if (!qword_1EB423B78)
  {
    sub_1AAD0D184(255, &qword_1EB423B80, MEMORY[0x1E69E6530], &type metadata for ChartDisplayList.Item, "index node ");
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB423B78);
    }
  }
}

void sub_1AAD6D1F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 ContourLines.init(values:stroke:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v5;
  *(a3 + 48) = *(a2 + 32);
  return result;
}

uint64_t static ContourLines._makeContourContent(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v10[2] = *(a1 + 32);
  v11 = *(a1 + 48);
  sub_1AAD6D320();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AAF92AB0;
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v7 = *(a1 + 32);
  v12[1] = v6;
  v12[2] = v7;
  v13 = *(a1 + 48);
  sub_1AAD6D370(v12, v5 + 32);
  *a2 = v5;
  return sub_1AAD6D3CC(v10, v9);
}

void sub_1AAD6D320()
{
  if (!qword_1EB423B48)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423B48);
    }
  }
}

uint64_t sub_1AAD6D408@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v10[2] = *(a1 + 32);
  v11 = *(a1 + 48);
  sub_1AAD6D320();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AAF92AB0;
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v7 = *(a1 + 32);
  v12[1] = v6;
  v12[2] = v7;
  v13 = *(a1 + 48);
  sub_1AAD6D370(v12, v5 + 32);
  *a2 = v5;
  return sub_1AAD6D3CC(v10, v9);
}

BOOL sub_1AAD6D4B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void *static ContourLineValues.stride<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1AAD46810();
  result = sub_1AAF8F354();
  *a2 = v7[1];
  *(a2 + 8) = 0;
  return result;
}

uint64_t static ContourLineValues.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1AAD6D618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s6Charts12ContourLinesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 9);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  if (*(a1 + 9))
  {
    goto LABEL_2;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  v7 = *(a2 + 8);
  if (*(a1 + 8))
  {
LABEL_2:
    if (v7)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = 0;
  if ((*(a2 + 8) & 1) == 0 && *a1 == *a2)
  {
LABEL_3:
    if (v5)
    {
      if (v11)
      {
        v16[4] = v6;
        v17[0] = v8;
        v17[1] = v9;
        v17[2] = v10;
        v17[3] = v11;
        v17[4] = v12;
        v16[0] = v2;
        v16[1] = v3;
        v16[2] = v4;
        v16[3] = v5;

        v13 = MEMORY[0x1AC596520](v16, v17);

        if (v13)
        {
          return 1;
        }
      }
    }

    else if (!v11)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContourLineValues.Stride(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContourLineValues(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for ContourLineValues.Stride(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1AAD6D7F8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD6D814(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void *sub_1AAD6D844()
{
  sub_1AAD59504();

  return sub_1AAF8E144();
}

__n128 sub_1AAD6D88C@<Q0>(uint64_t a1@<X8>)
{
  sub_1AAD594B0();
  sub_1AAF8E144();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1AAD6D930(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1AAF8E144();
  return v3;
}

double sub_1AAD6D97C()
{
  sub_1AAD593B4();
  sub_1AAF8E144();
  return v1;
}

uint64_t sub_1AAD6D9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = *(v7 + 16);
  v15(&v20 - v16, a1, a2, v14);
  if (swift_dynamicCast())
  {
    v17 = 0;
    v18 = v21;
  }

  else
  {
    (v15)(v12, a1, a2);
    if (swift_dynamicCast())
    {
      v18 = v21;
      v17 = 1;
    }

    else
    {
      (v15)(v9, a1, a2);
      v18 = sub_1AAF8DA44();
      v17 = 2;
    }
  }

  result = (*(v7 + 8))(a1, a2);
  *a4 = v18;
  *(a4 + 40) = v17;
  return result;
}

double sub_1AAD6DB98@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = -1;
  return result;
}

double sub_1AAD6DBB0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1AAD6DBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAD6EAD8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t Chart3DContent.foregroundStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  KeyPath = swift_getKeyPath();
  (*(v8 + 16))(v10, a1, a3);
  sub_1AAD6D9B8(v10, a3, v13);
  sub_1AAD6184C(KeyPath, v13, a2);

  return sub_1AAD6E130(v13, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
}

{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  (*(v9 + 16))(v11, a1, a3);
  v15[3] = a3;
  v15[4] = a5;
  v13 = sub_1AACB2508(v15);
  (*(v9 + 32))(v13, v11, a3);
  v16 = 3;
  sub_1AAD6184C(KeyPath, v15, a2);

  return sub_1AAD6E130(v15, &qword_1EB4234B0, &type metadata for Chart3DForegroundStyle, MEMORY[0x1E69E6720]);
}

uint64_t Chart3DContent.foregroundStyle<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for PlottableValue(0, a3, a5, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v17 - v11);
  KeyPath = swift_getKeyPath();
  (*(v10 + 16))(v12, a1, v9);
  sub_1AACD6F84(v12, a3, a5, &v19);
  v17[2] = v21;
  v17[3] = v22;
  v18 = v23;
  v17[1] = v20;
  v17[0] = v19;
  sub_1AAD6184C(KeyPath, v17, a2);

  v14 = *(&v20 + 1);
  v27 = v19;
  v28 = v20;
  sub_1AAD6E0DC(&v27);
  v26 = v14;
  sub_1AAD6E130(&v26, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  v24 = v21;
  v25 = v22;
  return sub_1AAD6E18C(&v24);
}

uint64_t sub_1AAD6E130(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAD6E898(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t Chart3DContent.clipped()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1ED9B59F0 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED9C36C8;
  v6 = sub_1AAF8FCF4();
  sub_1AAD6E588(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AAF92AB0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1AAD6E644();
  *(v7 + 32) = 0xD000000000000022;
  *(v7 + 40) = 0x80000001AAFCDBF0;
  sub_1AAF8D7B4(v6, &dword_1AACA8000, v5, "%s", v10);

  v8 = *(*(a1 - 8) + 16);

  return v8(a2, v2, a1);
}

uint64_t Chart3DContent.alignsMarkStylesWithPlotArea(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_1ED9B59F0 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED9C36C8;
  v6 = sub_1AAF8FCF4();
  sub_1AAD6E588(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AAF92AB0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1AAD6E644();
  *(v7 + 32) = 0xD000000000000037;
  *(v7 + 40) = 0x80000001AAFCDC20;
  sub_1AAF8D7B4(v6, &dword_1AACA8000, v5, "%s", v10);

  v8 = *(*(a1 - 8) + 16);

  return v8(a2, v2, a1);
}

void sub_1AAD6E490(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v7 = a2;
  v8 = 0;
  sub_1AAD6184C(KeyPath, &v7, a1);
}

void Chart3DContent.opacity(_:)(uint64_t a1, double a2)
{
  KeyPath = swift_getKeyPath();
  v5 = a2;
  sub_1AAD6184C(KeyPath, &v5, a1);
}

void sub_1AAD6E588(uint64_t a1)
{
  if (!qword_1ED9AEE70)
  {
    sub_1AAD6E5E0();
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AEE70);
    }
  }
}

unint64_t sub_1AAD6E5E0()
{
  result = qword_1ED9AEE60;
  if (!qword_1ED9AEE60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED9AEE60);
  }

  return result;
}

unint64_t sub_1AAD6E644()
{
  result = qword_1ED9AEFC0;
  if (!qword_1ED9AEFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AEFC0);
  }

  return result;
}

uint64_t sub_1AAD6E6A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}
uint64_t sub_1D67345FC()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v25 = *(v0 + 32);
  v26 = *(v0 + 16);
  swift_beginAccess();
  v4 = *(v0 + 48);
  v5 = *(v0 + 72);
  v6 = *(v0 + 104);
  v36 = *(v0 + 88);
  v37 = v6;
  v38 = *(v0 + 120);
  v34 = *(v0 + 56);
  v35 = v5;
  v7 = *(v0 + 128);

  sub_1D5E3A490(&v34, &v30, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  if (v7)
  {
    v7 = sub_1D600CADC(v7);
  }

  v8 = *(v0 + 152);
  v30 = *(v0 + 136);
  v31 = v8;
  v9 = *(v0 + 200);
  v10 = *(v0 + 184);
  *v32 = *(v0 + 168);
  *&v32[16] = v10;
  *&v32[32] = v9;
  v33 = *(v0 + 216);
  v11 = v33;
  v12 = v30;
  v13 = DWORD2(v30);
  v14 = v31;
  v23 = *&v32[24];
  v24 = *&v32[8];
  v15 = *v32;
  v16 = *(&v9 + 1);
  if (v33 == 254)
  {
    v1 = HIDWORD(v30);
  }

  else
  {
    v27[11] = *v32;
    v17 = *(v0 + 184);
    v28[2] = *(v0 + 168);
    v28[3] = v17;
    v28[4] = *(v0 + 200);
    v29 = *(v0 + 216);
    v18 = *(v0 + 152);
    v28[0] = *(v0 + 136);
    v28[1] = v18;
    sub_1D62B7F58(v28, v27);

    sub_1D6E0CAE0(v27);

    sub_1D5E3AAD0(&v30, &qword_1EDF33718, &type metadata for FormatShadow);
    v15 = v27[0];
  }

  v19 = swift_allocObject();
  swift_beginAccess();
  *(v19 + 16) = v26;
  *(v19 + 24) = v2;
  *(v19 + 32) = v25;
  *(v19 + 40) = v3;
  swift_beginAccess();
  v20 = v34;
  *(v19 + 72) = v35;
  v21 = v37;
  *(v19 + 88) = v36;
  *(v19 + 104) = v21;
  *(v19 + 48) = v4;
  *(v19 + 120) = v38;
  *(v19 + 56) = v20;
  *(v19 + 128) = v7;
  *(v19 + 136) = v12;
  *(v19 + 144) = v13;
  *(v19 + 148) = v1;
  *(v19 + 152) = v14;
  *(v19 + 168) = v15;
  *(v19 + 176) = v24;
  *(v19 + 192) = v23;
  *(v19 + 208) = v16;
  *(v19 + 216) = v11;
  return v19;
}

uint64_t FormatGroupNodeMaskStyle.deinit()
{

  sub_1D6734938(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  sub_1D600ECE4(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));
  return v0;
}

void sub_1D6734938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9 != 255)
  {
    sub_1D6734950(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void sub_1D6734950(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  switch(a9)
  {
    case 2:

      sub_1D5CDE22C(a7, a8);
      break;
    case 1:

      break;
    case 0:

      sub_1D5ED34A0(a1, a2, a3);
      break;
  }
}

uint64_t FormatGroupNodeMaskStyle.__deallocating_deinit()
{

  sub_1D6734938(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  sub_1D600ECE4(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6734AA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D669202C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FormatGroupNodeMaskStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatGroupNodeMaskStyle.Selector.path.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D5E3A490(v8, v7, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
}

uint64_t FormatGroupNodeMaskStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 160);
  v10 = *(v1 + 144);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 176);
  v6 = *(v1 + 112);
  v9[0] = *(v1 + 96);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D5E3A490(v9, v8, &qword_1EDF33718, &type metadata for FormatShadow);
}

id sub_1D6734C14@<X0>(id result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v10 = *(v7 + 72);
  v35 = *(v7 + 56);
  v36 = v10;
  v11 = *(v7 + 104);
  v37 = *(v7 + 88);
  v38 = v11;
  v39 = *(v7 + 120);
  v12 = v35;
  if (v39 > 1u)
  {
    if (v39 == 2)
    {
      v28 = v36;
      v27 = v37;
      v17 = *(&v38 + 1);
      v18 = v38;
      v40 = result;
      MEMORY[0x1EEE9AC00](result, a2);
      v26[2] = &v40;
      v32 = v37;
      v33 = v38;
      v34 = v39;
      v31 = v36;
      v30 = v35;
      sub_1D619916C(&v30, v29);
      sub_1D5EC9E90(sub_1D6735AA0, v26, v12);
      if (v8)
      {
        return sub_1D5E3AAD0(&v35, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
      }

      if (v18)
      {
        sub_1D6FCAC74(v18, v17, v29);
        result = sub_1D5E3AAD0(&v35, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
        v24 = v29[0];
        v17 = v29[1];
      }

      else
      {
        result = sub_1D5E3AAD0(&v35, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
        v24 = 0;
      }

      *a3 = v12;
      v25 = v27;
      *(a3 + 16) = v28;
      *(a3 + 32) = v25;
      *(a3 + 48) = v24;
      *(a3 + 56) = v17;
      v13 = 2;
    }

    else if (v39 == 3)
    {
      result = [objc_opt_self() bezierPathWithOvalInRect_];
      *a3 = result;
      v13 = 1;
    }

    else
    {
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v13 = 3;
    }

    goto LABEL_16;
  }

  if (!v39)
  {
    *(a3 + 16) = v36;
    *a3 = v12;
    *(a3 + 64) = 0;
    v14 = *(v7 + 72);
    v15 = *(v7 + 104);
    v32 = *(v7 + 88);
    v33 = v15;
    v34 = *(v7 + 120);
    v16 = *(v7 + 56);
    v31 = v14;
    v30 = v16;
    return sub_1D619916C(&v30, v29);
  }

  v40 = v35;
  v19 = *(v7 + 72);
  v20 = *(v7 + 104);
  v32 = *(v7 + 88);
  v33 = v20;
  v34 = *(v7 + 120);
  v21 = *(v7 + 56);
  v31 = v19;
  v30 = v21;
  sub_1D619916C(&v30, v29);
  sub_1D725A7EC();
  sub_1D6BDC3FC(v29[0]);
  v23 = v22;

  result = sub_1D5E3AAD0(&v35, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  if (!v8)
  {
    *a3 = v23;
    v13 = 1;
LABEL_16:
    *(a3 + 64) = v13;
  }

  return result;
}

uint64_t _s8NewsFeed24FormatGroupNodeMaskStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  v87[2] = *(a1 + 3);
  v87[3] = v6;
  v88 = *(a1 + 80);
  v7 = *(a1 + 2);
  v87[0] = *(a1 + 1);
  v87[1] = v7;
  v8 = a1[11];
  v9 = *(a1 + 7);
  v89 = *(a1 + 6);
  v90 = v9;
  v10 = *(a1 + 8);
  v11 = *(a1 + 9);
  v12 = *(a1 + 10);
  v94 = *(a1 + 176);
  v92 = v11;
  v93 = v12;
  v91 = v10;
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a2 + 1);
  v16 = *(a2 + 2);
  v17 = *(a2 + 3);
  v18 = *(a2 + 4);
  v96 = *(a2 + 80);
  v95[2] = v17;
  v95[3] = v18;
  v95[0] = v15;
  v95[1] = v16;
  v19 = a2[11];
  v20 = *(a2 + 7);
  v97 = *(a2 + 6);
  v98 = v20;
  v21 = *(a2 + 8);
  v22 = *(a2 + 9);
  v23 = *(a2 + 10);
  v102 = *(a2 + 176);
  v100 = v22;
  v101 = v23;
  v99 = v21;
  if ((v4 != v13 || v5 != v14) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = v88;
  v25 = *(a2 + 2);
  *&v81[7] = *(a2 + 1);
  *&v81[23] = v25;
  v26 = *(a2 + 4);
  *&v81[39] = *(a2 + 3);
  *&v81[55] = v26;
  v27 = v96;
  if (v88 == 255)
  {
    if (v96 != 255)
    {
      sub_1D5E3A490(v87, &v71, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
      sub_1D5E3A490(v95, &v71, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
      goto LABEL_17;
    }

    v30 = *(a1 + 2);
    v71 = *(a1 + 1);
    v72 = v30;
    v31 = *(a1 + 4);
    v73 = *(a1 + 3);
    v74 = v31;
    v75[0] = -1;
    sub_1D5E3A490(v87, &v65, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    sub_1D5E3A490(v95, &v65, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    sub_1D5E3AAD0(&v71, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  }

  else
  {
    v28 = *(a1 + 2);
    v71 = *(a1 + 1);
    v72 = v28;
    v29 = *(a1 + 4);
    v73 = *(a1 + 3);
    v74 = v29;
    v75[0] = v88;
    LOBYTE(v69) = v88;
    v67 = v73;
    v68 = v29;
    v65 = v71;
    v66 = v28;
    if (v96 == 255)
    {
      v61 = v73;
      v62 = v74;
      LOBYTE(v63) = v75[0];
      v59 = v71;
      v60 = v72;
      sub_1D5E3A490(v87, &v53, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
      sub_1D5E3A490(v95, &v53, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
      sub_1D5E3A490(&v71, &v53, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
      sub_1D61992B0(&v59);
LABEL_17:
      v41 = *(a1 + 2);
      v71 = *(a1 + 1);
      v72 = v41;
      v42 = *(a1 + 4);
      v73 = *(a1 + 3);
      v74 = v42;
      v75[0] = v24;
      v76 = *&v81[16];
      v77 = *&v81[32];
      *v78 = *&v81[48];
      *&v78[15] = *&v81[63];
      *&v75[1] = *v81;
      v78[23] = v27;
      v43 = &unk_1EC889B20;
      v44 = &qword_1EDF273F0;
      v45 = &type metadata for FormatGroupNodeMaskPath;
LABEL_18:
      sub_1D67361F4(&v71, v43, v44, v45);
      LOBYTE(v19) = 0;
      return v19 & 1;
    }

    v32 = *(a2 + 2);
    v59 = *(a2 + 1);
    v60 = v32;
    v33 = *(a2 + 4);
    v61 = *(a2 + 3);
    v62 = v33;
    LOBYTE(v63) = v96;
    sub_1D5E3A490(v87, &v53, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    sub_1D5E3A490(v95, &v53, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    sub_1D5E3A490(&v71, &v53, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    v34 = _s8NewsFeed23FormatGroupNodeMaskPathO2eeoiySbAC_ACtFZ_0(&v65, &v59);
    v49 = v61;
    v50 = v62;
    LOBYTE(v51) = v63;
    v47 = v59;
    v48 = v60;
    sub_1D61992B0(&v47);
    v55 = v67;
    v56 = v68;
    LOBYTE(v57) = v69;
    v53 = v65;
    v54 = v66;
    sub_1D61992B0(&v53);
    v35 = *(a1 + 2);
    v59 = *(a1 + 1);
    v60 = v35;
    v36 = *(a1 + 4);
    v61 = *(a1 + 3);
    v62 = v36;
    LOBYTE(v63) = v24;
    sub_1D5E3AAD0(&v59, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    if ((v34 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (!v8)
  {
    if (!v19)
    {
LABEL_13:
      v84 = v91;
      v85 = v92;
      v86 = v93;
      v82 = v89;
      v83 = v90;
      v39 = v94;
      *&v81[39] = v99;
      *&v81[55] = v100;
      *&v81[71] = v101;
      *&v81[7] = v97;
      *&v81[23] = v98;
      v40 = v102;
      if (v94 == 254)
      {
        if (v102 == 254)
        {
          v73 = v91;
          v74 = v92;
          *v75 = v93;
          v71 = v89;
          v72 = v90;
          v75[16] = -2;
          sub_1D5E3A490(&v89, &v65, &qword_1EDF33718, &type metadata for FormatShadow);
          sub_1D5E3A490(&v97, &v65, &qword_1EDF33718, &type metadata for FormatShadow);
          sub_1D5E3AAD0(&v71, &qword_1EDF33718, &type metadata for FormatShadow);
          LOBYTE(v19) = 1;
          return v19 & 1;
        }

        sub_1D5E3A490(&v89, &v71, &qword_1EDF33718, &type metadata for FormatShadow);
        sub_1D5E3A490(&v97, &v71, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      else
      {
        v73 = v91;
        v74 = v92;
        *v75 = v93;
        v71 = v89;
        v72 = v90;
        v75[16] = v94;
        v67 = v91;
        v68 = v92;
        v69 = v93;
        v70 = v94;
        v65 = v89;
        v66 = v90;
        if (v102 != 254)
        {
          v61 = v99;
          v62 = v100;
          v63 = v101;
          v59 = v97;
          v60 = v98;
          v64 = v102;
          sub_1D5E3A490(&v89, &v53, &qword_1EDF33718, &type metadata for FormatShadow);
          sub_1D5E3A490(&v97, &v53, &qword_1EDF33718, &type metadata for FormatShadow);
          sub_1D5E3A490(&v71, &v53, &qword_1EDF33718, &type metadata for FormatShadow);
          LOBYTE(v19) = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v65, &v59);
          v49 = v61;
          v50 = v62;
          v51 = v63;
          v52 = v64;
          v47 = v59;
          v48 = v60;
          sub_1D601144C(&v47);
          v55 = v67;
          v56 = v68;
          v57 = v69;
          v58 = v70;
          v53 = v65;
          v54 = v66;
          sub_1D601144C(&v53);
          v61 = v84;
          v62 = v85;
          v63 = v86;
          v59 = v82;
          v60 = v83;
          v64 = v39;
          sub_1D5E3AAD0(&v59, &qword_1EDF33718, &type metadata for FormatShadow);
          return v19 & 1;
        }

        v61 = v73;
        v62 = v74;
        v63 = *v75;
        v64 = v75[16];
        v59 = v71;
        v60 = v72;
        sub_1D5E3A490(&v89, &v53, &qword_1EDF33718, &type metadata for FormatShadow);
        sub_1D5E3A490(&v97, &v53, &qword_1EDF33718, &type metadata for FormatShadow);
        sub_1D5E3A490(&v71, &v53, &qword_1EDF33718, &type metadata for FormatShadow);
        sub_1D601144C(&v59);
      }

      v73 = v84;
      v74 = v85;
      *v75 = v86;
      v71 = v82;
      v72 = v83;
      v75[16] = v39;
      *v78 = *&v81[32];
      *&v78[16] = *&v81[48];
      *v79 = *&v81[64];
      *&v79[15] = *&v81[79];
      v76 = *v81;
      v77 = *&v81[16];
      v80 = v40;
      v43 = &qword_1EC8822D8;
      v44 = &qword_1EDF33718;
      v45 = &type metadata for FormatShadow;
      goto LABEL_18;
    }

LABEL_20:
    LOBYTE(v19) = 0;
    return v19 & 1;
  }

  if (v19)
  {

    sub_1D633C9E8(v8, v19);
    v38 = v37;

    if (v38)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  return v19 & 1;
}

uint64_t sub_1D6735688(uint64_t a1)
{
  result = sub_1D67357E4(&qword_1EC88AA30, &protocol conformance descriptor for FormatGroupNodeMaskStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D67356F0(uint64_t a1)
{
  *(a1 + 16) = sub_1D67357E4(&qword_1EDF25FB8, &protocol conformance descriptor for FormatGroupNodeMaskStyle);
  result = sub_1D67357E4(&qword_1EDF0CF48, &protocol conformance descriptor for FormatGroupNodeMaskStyle);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D6735758(void *a1)
{
  a1[1] = sub_1D67357E4(&qword_1EDF25FB8, &protocol conformance descriptor for FormatGroupNodeMaskStyle);
  a1[2] = sub_1D67357E4(&qword_1EDF0CF48, &protocol conformance descriptor for FormatGroupNodeMaskStyle);
  result = sub_1D67357E4(&qword_1EC88AA38, &protocol conformance descriptor for FormatGroupNodeMaskStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D67357E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatGroupNodeMaskStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6735824(uint64_t a1)
{
  result = sub_1D673584C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D673584C()
{
  result = qword_1EC88AA40;
  if (!qword_1EC88AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA40);
  }

  return result;
}

unint64_t sub_1D67358A0(uint64_t a1)
{
  *(a1 + 8) = sub_1D66FD88C();
  result = sub_1D6692B80();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D67358D0(void *a1)
{
  a1[1] = sub_1D66FD88C();
  a1[2] = sub_1D6692B80();
  result = sub_1D6735908();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6735908()
{
  result = qword_1EC88AA48;
  if (!qword_1EC88AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatGroupNodeMaskPathOSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1D67359D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_1D6735A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6735AC0(uint64_t a1)
{
  if (!qword_1EDF05838)
  {
    sub_1D601014C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05838);
    }
  }
}

void sub_1D6735B24(uint64_t a1)
{
  if (!qword_1EDF0A950)
  {
    v2 = sub_1D6735B80();
    v4 = type metadata accessor for FormatNodeStyleSelectorOrder(a1, &type metadata for FormatGroupNodeMaskStyle.Selector, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF0A950);
    }
  }
}

unint64_t sub_1D6735B80()
{
  result = qword_1EDF0CF50;
  if (!qword_1EDF0CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CF50);
  }

  return result;
}

uint64_t sub_1D6735BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1D6735C3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v67 = *(a1 + 96);
  v68 = v3;
  v69 = *(a1 + 128);
  v70 = *(a1 + 144);
  v4 = *(a1 + 48);
  v63 = *(a1 + 32);
  v64 = v4;
  v5 = *(a1 + 80);
  v65 = *(a1 + 64);
  v66 = v5;
  v6 = *(a1 + 16);
  v61 = *a1;
  v62 = v6;
  v7 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7279970;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v7);
  sub_1D5EA74B8(0);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  v12 = v11 + v10;
  if (a2)
  {
    v14 = *(a2 + 32);
    v13 = *(a2 + 40);

    v15 = sub_1D67345FC();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 64) = 0x6000000000000000;
    v17 = sub_1D601118C;
  }

  else
  {
    v17 = sub_1D70DD9D8;
    v16 = 0;
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  v18 = type metadata accessor for FormatInspectionItem(0);
  v19 = (v12 + *(v18 + 24));
  *v19 = v17;
  v19[1] = v16;
  v20 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  *v12 = v14;
  *(v12 + 8) = v13;
  *(v12 + 16) = 0u;
  v21 = v12 + *(v18 + 28);
  *v21 = 0u;
  v22 = -1;
  *(v21 + 16) = -1;
  (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v11, v59);
  swift_setDeallocating();
  sub_1D6736194(v12, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v8 + 56) = &type metadata for FormatInspectionGroup;
  *(v8 + 64) = &off_1F518B2C0;
  v23 = swift_allocObject();
  *(v8 + 32) = v23;
  v24 = v59[1];
  *(v23 + 16) = v59[0];
  *(v23 + 32) = v24;
  *(v23 + 48) = v60;
  v57[6] = v67;
  v57[7] = v68;
  v57[8] = v69;
  v58 = v70;
  v57[2] = v63;
  v57[3] = v64;
  v57[4] = v65;
  v57[5] = v66;
  v57[0] = v61;
  v57[1] = v62;
  if (a2)
  {
    v25 = *(a2 + 72);
    v26 = *(a2 + 104);
    v51 = *(a2 + 88);
    v52 = v26;
    LOBYTE(v53) = *(a2 + 120);
    v49 = *(a2 + 56);
    v50 = v25;
    sub_1D5E3A490(&v49, &v43, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    v27 = v49;
    v28 = v50;
    v29 = v51;
    v30 = v52;
    v22 = v53;
  }

  else
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
  }

  v49 = v27;
  v50 = v28;
  v51 = v29;
  v52 = v30;
  LOBYTE(v53) = v22;
  v31 = sub_1D61985BC(v57, &v49);
  v55[2] = v51;
  v55[3] = v52;
  v56 = v53;
  v55[0] = v49;
  v55[1] = v50;
  sub_1D5E3AAD0(v55, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  *(v8 + 96) = &type metadata for FormatInspection;
  *(v8 + 104) = &off_1F51E3FD0;
  *(v8 + 72) = v31;
  if (a2)
  {
    v32 = *(a2 + 184);
    v51 = *(a2 + 168);
    v52 = v32;
    v53 = *(a2 + 200);
    v54 = *(a2 + 216);
    v33 = *(a2 + 152);
    v49 = *(a2 + 136);
    v50 = v33;
    sub_1D5E3A490(&v49, &v43, &qword_1EDF33718, &type metadata for FormatShadow);
    v35 = v49;
    v34 = v50;
    v36 = v51;
    v37 = v52;
    v38 = v53;
    v39 = v54;
  }

  else
  {
    v39 = -2;
    v34 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
  }

  v43 = v35;
  v44 = v34;
  v45 = v36;
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v40 = sub_1D686F740(&v61, &v43);
  v51 = v45;
  v52 = v46;
  v53 = v47;
  v54 = v48;
  v49 = v43;
  v50 = v44;
  sub_1D5E3AAD0(&v49, &qword_1EDF33718, &type metadata for FormatShadow);
  *(v8 + 136) = &type metadata for FormatInspection;
  *(v8 + 144) = &off_1F51E3FD0;
  *(v8 + 112) = v40;
  v41 = sub_1D7073500(v8);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v41;
}

uint64_t sub_1D6736194(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D67361F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D6736250(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6736250(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D5B49CBC(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D67362C8()
{
  result = qword_1EC88AA50;
  if (!qword_1EC88AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA50);
  }

  return result;
}

uint64_t sub_1D673631C(uint64_t a1)
{
  v2 = sub_1D67366F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6736358(uint64_t a1)
{
  v2 = sub_1D67366F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6736394()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6736408(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D673645C(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

uint64_t sub_1D67365B0(void *a1)
{
  sub_1D6736900(0, &qword_1EC88AA58, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67366F8();
  sub_1D7264B5C();
  sub_1D673674C();
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D67366F8()
{
  result = qword_1EDF07AB0;
  if (!qword_1EDF07AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07AB0);
  }

  return result;
}

unint64_t sub_1D673674C()
{
  result = qword_1EC88AA60;
  if (!qword_1EC88AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA60);
  }

  return result;
}

uint64_t sub_1D67367A0(void *a1)
{
  sub_1D6736900(0, &qword_1EDF038F0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67366F8();
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D6736964();
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6736900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D67366F8();
    v7 = a3(a1, &type metadata for SportsTaxonomyGraphResourceHeader.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6736964()
{
  result = qword_1EDF07A90;
  if (!qword_1EDF07A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07A90);
  }

  return result;
}

unint64_t sub_1D67369DC()
{
  result = qword_1EC88AA68;
  if (!qword_1EC88AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA68);
  }

  return result;
}

unint64_t sub_1D6736A34()
{
  result = qword_1EC88AA70;
  if (!qword_1EC88AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA70);
  }

  return result;
}

unint64_t sub_1D6736A8C()
{
  result = qword_1EDF07AA0;
  if (!qword_1EDF07AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07AA0);
  }

  return result;
}

unint64_t sub_1D6736AE4()
{
  result = qword_1EDF07AA8;
  if (!qword_1EDF07AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07AA8);
  }

  return result;
}

unint64_t sub_1D6736B38()
{
  result = qword_1EDF07A98;
  if (!qword_1EDF07A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07A98);
  }

  return result;
}

void __swiftcall AudioTrackFontBook.init(titleAttributes:publisherFont:trackDurationFont:readButtonFont:accessoryFont:)(NewsFeed::AudioTrackFontBook *__return_ptr retstr, Swift::OpaquePointer titleAttributes, UIFont publisherFont, UIFont trackDurationFont, UIFont readButtonFont, UIFont accessoryFont)
{
  retstr->titleAttributes = titleAttributes;
  retstr->publisherFont = publisherFont;
  retstr->trackDurationFont = trackDurationFont;
  retstr->readButtonFont = readButtonFont;
  retstr->accessoryFont = accessoryFont;
}

uint64_t sub_1D6736BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5D20438(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v23 - v10;
  sub_1D673D8C0(a3, v23 - v10);
  v12 = sub_1D726294C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D5D2060C(v11, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D726293C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D726285C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D726211C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1D5D2060C(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D5D2060C(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D6736ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5D20438(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v23 - v10;
  sub_1D673D8C0(a3, v23 - v10);
  v12 = sub_1D726294C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D5D2060C(v11, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D726293C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D726285C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a3;
      v19 = sub_1D726211C() + 32;
      sub_1D5D20438(0, &qword_1EDF1B440, type metadata accessor for SharedItem, MEMORY[0x1E69E62F8]);

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1D5D2060C(v23[0], &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D5D2060C(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  sub_1D5D20438(0, &qword_1EDF1B440, type metadata accessor for SharedItem, MEMORY[0x1E69E62F8]);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D6737238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_1D5D20438(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v25 - v12;
  sub_1D673D8C0(a3, v25 - v12);
  v14 = sub_1D726294C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1D5D2060C(v13, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D726293C();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D726285C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a2;
      v21 = sub_1D726211C() + 32;
      a6(0);

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1D5D2060C(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D5D2060C(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  a6(0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D6737550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5D20438(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v23 - v10;
  sub_1D673D8C0(a3, v23 - v10);
  v12 = sub_1D726294C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D5D2060C(v11, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D726293C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D726285C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a3;
      v19 = sub_1D726211C() + 32;
      sub_1D673DDA8(0, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, 1);

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1D5D2060C(v23[0], &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D5D2060C(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  sub_1D673DDA8(0, &qword_1EDF34AB8, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, 1);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D6737878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5D20438(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v23 - v10;
  sub_1D673D8C0(a3, v23 - v10);
  v12 = sub_1D726294C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D5D2060C(v11, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D726293C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D726285C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a3;
      v19 = sub_1D726211C() + 32;
      sub_1D5B58388(0, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E69E6720]);

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1D5D2060C(v23[0], &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D5D2060C(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  sub_1D5B58388(0, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E69E6720]);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

double SharedItemManager.replyContextMenuItem(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for SharedItem(0);
  v6 = sub_1D725844C();
  v7 = [v6 fc_NewsArticleID];

  if (v7)
  {
    sub_1D726207C();

    v23[0] = *(v3 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_lock);
    MEMORY[0x1EEE9AC00](v8, v9);
    sub_1D725A7BC();
    sub_1D673DDA8(0, &qword_1EC88AA80, &qword_1EC88AA88, &protocol descriptor for ShareAttributionView, 0);

    sub_1D725B7CC();

    v10 = v20[0];
    if (v20[0])
    {
      v11 = v20[1];
    }

    else
    {
      v12 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sharedItemCenter;
      swift_beginAccess();
      sub_1D5B68374(v3 + v12, v20);
      v13 = v21;
      v14 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v10 = (*(v14 + 48))(a1, v13, v14);
      v11 = v15;
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    ObjectType = swift_getObjectType();
    v17 = (*(v11 + 32))(ObjectType, v11);
    if (v17)
    {
      v18 = v17;
      *(a2 + 24) = sub_1D5B5A498(0, &qword_1EDF04350, 0x1E69DC628);
      *(a2 + 32) = sub_1D673CA30();

      *a2 = v18;
      return result;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void SharedItemManager.hideContextMenuItem(for:)(uint64_t a1@<X8>)
{
  type metadata accessor for SharedItem(0);
  v2 = sub_1D725844C();
  v3 = [v2 fc_NewsArticleID];

  if (v3)
  {
    sub_1D726207C();

    MEMORY[0x1EEE9AC00](v4, v5);
    sub_1D725A7BC();
    sub_1D673DDA8(0, &qword_1EC88AA80, &qword_1EC88AA88, &protocol descriptor for ShareAttributionView, 0);

    sub_1D725B7CC();

    if (v10)
    {
      ObjectType = swift_getObjectType();
      v7 = swift_conformsToProtocol2();
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = (*(v7 + 40))(ObjectType, v7);
      if (v8)
      {
        v9 = v8;
        *(a1 + 24) = sub_1D5B5A498(0, &qword_1EDF04350, 0x1E69DC628);
        *(a1 + 32) = sub_1D673CA30();

        *a1 = v9;
        return;
      }
    }
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

uint64_t SharedItem.articleID.getter()
{
  type metadata accessor for SharedItem(0);
  v0 = sub_1D725844C();
  v1 = [v0 fc_NewsArticleID];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1D726207C();

  return v2;
}

id static SharedItemManager.shared.getter()
{
  if (qword_1EDF2EB38 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDF2EB40;

  return v1;
}

uint64_t SharedItemManager.modificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_modificationDate;
  swift_beginAccess();
  v4 = sub_1D725891C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t SharedItemManager.modificationDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_modificationDate;
  swift_beginAccess();
  v4 = sub_1D725891C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_1D673823C(void *a1)
{
  sub_1D5D20438(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = sub_1D726294C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v8 = a1;
  sub_1D6736BD4(0, 0, v5, &unk_1D72E4B28, v7);

  return result;
}

uint64_t sub_1D6738388()
{
  v1 = sub_1D67385EC();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  sub_1D5D20438(0, &qword_1EDF1B440, type metadata accessor for SharedItem, MEMORY[0x1E69E62F8]);
  v4 = v3;
  v5 = sub_1D5B483C4(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], 1);
  *v2 = v0;
  v2[1] = sub_1D67384A4;
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 16, v1, v4, v5, v6);
}

uint64_t sub_1D67384A4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_1D67385D4;
  }

  else
  {

    v2 = sub_1D5F71DF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D67385EC()
{
  sub_1D5D20438(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager____lazy_storage___initializingTask;
  if (*&v0[OBJC_IVAR____TtC8NewsFeed17SharedItemManager____lazy_storage___initializingTask])
  {
    v6 = *&v0[OBJC_IVAR____TtC8NewsFeed17SharedItemManager____lazy_storage___initializingTask];
  }

  else
  {
    v7 = sub_1D726294C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1D726290C();
    v8 = v0;
    v9 = v0;
    v10 = sub_1D72628FC();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v8;
    v6 = sub_1D6736ED0(0, 0, v4, &unk_1D72E4B18, v11);
    *&v9[v5] = v6;
  }

  return v6;
}

uint64_t sub_1D6738774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v4[10] = sub_1D726290C();
  v4[11] = sub_1D72628FC();
  v5 = swift_task_alloc();
  v4[12] = v5;
  *v5 = v4;
  v5[1] = sub_1D6738824;

  return sub_1D6738B74();
}

uint64_t sub_1D6738824(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_1D726285C();
    v7 = v6;
    v8 = sub_1D6738A90;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_1D726285C();
    v7 = v9;
    v8 = sub_1D67389A4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1D67389A4()
{
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];

  *v3 = v1;
  v4 = v2 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sharedItemCenter;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 16);
  v8 = swift_unknownObjectRetain();
  v7(v8, &protocol witness table for SharedItemManager, v5, v6);
  swift_endAccess();
  v9 = v0[1];

  return v9();
}

uint64_t sub_1D6738A90()
{
  v1 = *(v0 + 72);

  v2 = v1 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sharedItemCenter;
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 16);
  v6 = swift_unknownObjectRetain();
  v5(v6, &protocol witness table for SharedItemManager, v3, v4);
  swift_endAccess();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D6738B74()
{
  *(v1 + 136) = v0;
  *(v1 + 144) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1D6738BE4, 0, 0);
}

uint64_t sub_1D6738BE4()
{
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sharedItemCenter;
  swift_beginAccess();
  sub_1D5B68374(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v7 = (*(v4 + 40) + **(v4 + 40));
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1D6738D34;

  return v7(v3, v4);
}

uint64_t sub_1D6738D34(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_1D67390CC;
  }

  else
  {
    v4 = sub_1D6738E48;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D6738E48()
{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (sub_1D673C464(v1))
  {
    v2 = v0[17];
    v0[16] = *(v2 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_lock);
    *(swift_task_alloc() + 16) = v2;
    sub_1D725A7BC();
    sub_1D5D20438(0, &qword_1EDF04B40, type metadata accessor for WeakSharedItemManagerObserver, MEMORY[0x1E69E62F8]);

    sub_1D725B7CC();

    v3 = v0[15];
    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
    {
      v5 = 0;
      v22 = v3 & 0xFFFFFFFFFFFFFF8;
      v23 = v3 & 0xC000000000000001;
      v20 = i;
      v21 = v3;
      while (v23)
      {
        v7 = MEMORY[0x1DA6FB460](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_14;
        }

LABEL_10:
        v9 = v0[17];
        v0[10] = v0[18];
        v0[11] = &protocol witness table for SharedItemManager;
        v0[7] = v9;
        Strong = swift_unknownObjectWeakLoadStrong();
        v11 = v0[17];
        if (Strong)
        {
          v12 = *(v7 + 24);
          ObjectType = swift_getObjectType();
          v14 = *(v12 + 8);
          v15 = v11;
          v16 = v12;
          v3 = v21;
          v14(v0 + 7, ObjectType, v16);
          i = v20;
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = v11;
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 7);
        ++v5;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      if (v5 >= *(v22 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  v17 = v0[1];
  v18 = v0[20];

  return v17(v18);
}

uint64_t sub_1D67390CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

id SharedItemManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedItemManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SharedItemManager.items.getter()
{
  sub_1D725A7BC();
  sub_1D5D20438(0, &qword_1EDF1B440, type metadata accessor for SharedItem, MEMORY[0x1E69E62F8]);

  sub_1D725B7CC();

  return v1;
}

void sub_1D67393A8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5D20438(0, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34 - v6;
  v8 = type metadata accessor for SharedItem(0);
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v13 = [*(a1 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sortedArticleIDs) array];
  v14 = MEMORY[0x1E69E7CA0];
  v15 = sub_1D726267C();

  v16 = *(v15 + 16);
  if (!v16)
  {

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v34 = v15;
  v35 = a2;
  v17 = v15 + 32;
  v18 = (v9 + 56);
  v36 = v9;
  v37 = (v9 + 48);
  v38 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_itemsByArticleID;
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D5B76B10(v17, v45);
    sub_1D5B76B10(v45, v44);
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v45);
      (*v18)(v7, 1, 1, v8);
LABEL_4:
      sub_1D5D2060C(v7, &qword_1EDF343E0, type metadata accessor for SharedItem);
      goto LABEL_5;
    }

    v20 = v18;
    v41 = v19;
    v21 = v8;
    v22 = v14;
    v23 = v42;
    v24 = v43;
    v25 = v40;
    v26 = v38;
    swift_beginAccess();
    v27 = *(v25 + v26);
    if (*(v27 + 16) && (v28 = sub_1D5B69D90(v23, v24), (v29 & 1) != 0))
    {
      sub_1D673DB70(*(v27 + 56) + *(v36 + 72) * v28, v7, type metadata accessor for SharedItem);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v8 = v21;
    v18 = v20;
    (*v20)(v7, v30, 1, v8);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(v45);
    v31 = (*v37)(v7, 1, v8);
    v14 = v22;
    v19 = v41;
    if (v31 == 1)
    {
      goto LABEL_4;
    }

    sub_1D5F2676C(v7, v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1D6993F50(0, v19[2] + 1, 1, v19);
    }

    v33 = v19[2];
    v32 = v19[3];
    if (v33 >= v32 >> 1)
    {
      v19 = sub_1D6993F50((v32 > 1), v33 + 1, 1, v19);
    }

    v19[2] = v33 + 1;
    sub_1D5F2676C(v39, v19 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v33);
LABEL_5:
    v17 += 32;
    --v16;
  }

  while (v16);

  a2 = v35;
LABEL_19:
  *a2 = v19;
}

uint64_t SharedItemManager.itemArticleIDs.getter()
{
  sub_1D725A7BC();
  sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);

  sub_1D725B7CC();

  return v1;
}

void sub_1D6739858(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = [*(a1 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sortedArticleIDs) array];
  v4 = sub_1D726267C();

  v5 = *(v4 + 16);
  if (v5)
  {
    v13 = a2;
    v6 = v4 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D5B76B10(v6, v17);
      sub_1D5B7C390(v17, &v14);
      if (swift_dynamicCast())
      {
        v9 = v16;
        if (v16)
        {
          v10 = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D5B858EC(0, *(v7 + 2) + 1, 1, v7);
          }

          v12 = *(v7 + 2);
          v11 = *(v7 + 3);
          if (v12 >= v11 >> 1)
          {
            v7 = sub_1D5B858EC((v11 > 1), v12 + 1, 1, v7);
          }

          *(v7 + 2) = v12 + 1;
          v8 = &v7[16 * v12];
          *(v8 + 4) = v10;
          *(v8 + 5) = v9;
        }
      }

      v6 += 32;
      --v5;
    }

    while (v5);

    a2 = v13;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v7;
}

double SharedItemManager.item(for:)(uint64_t a1, uint64_t a2)
{
  sub_1D725A7BC();
  sub_1D5D20438(0, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720]);

  sub_1D725B7CC();

  return result;
}

uint64_t sub_1D6739AD0()
{
  v1 = sub_1D67385EC();
  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  sub_1D5D20438(0, &qword_1EDF1B440, type metadata accessor for SharedItem, MEMORY[0x1E69E62F8]);
  v4 = v3;
  v0[8] = v3;
  v5 = sub_1D5B483C4(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], 1);
  *v2 = v0;
  v2[1] = sub_1D6739BF0;
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 2, v1, v4, v5, v6);
}

uint64_t sub_1D6739BF0()
{

  if (v0)
  {

    v1 = sub_1D673DE0C;
  }

  else
  {

    v1 = sub_1D6739D28;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D6739D28()
{
  v1 = v0[5];
  v0[4] = *(v1 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_lock);
  *(swift_task_alloc() + 16) = v1;
  sub_1D725A7BC();

  sub_1D725B7CC();

  v2 = v0[3];
  v3 = v0[1];

  return v3(v2);
}

void *SharedItemManager.createAttributionView(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sharedItemCenter;
  swift_beginAccess();
  sub_1D5B68374(v2 + v4, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = (*(v6 + 48))(a1, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v8 = *MEMORY[0x1E69DDC70];
  [v7 setMinimumContentSizeCategory_];
  [v7 setMaximumContentSizeCategory_];
  v10[0] = *(v2 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_lock);
  sub_1D725A7BC();

  sub_1D725B7CC();

  return v7;
}

void sub_1D6739F64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SharedItem(0);
  v7 = sub_1D725844C();
  v8 = [v7 fc_NewsArticleID];

  if (v8)
  {
    v9 = sub_1D726207C();
    v11 = v10;

    v12 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_viewContextsByArticleID;
    swift_beginAccess();
    v13 = *(a4 + v12);
    v14 = *(v13 + 16);
    v15 = a2;
    if (v14 && (v16 = sub_1D5B69D90(v9, v11), (v17 & 1) != 0))
    {
      v18 = *(*(v13 + 56) + 8 * v16);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v18 = MEMORY[0x1E69E7CC0];
    }

    v19 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1D6993F84(0, *(v18 + 2) + 1, 1, v18);
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = sub_1D6993F84((v20 > 1), v21 + 1, 1, v18);
    }

    *(v18 + 2) = v21 + 1;
    v22 = &v18[32 * v21];
    *(v22 + 4) = v19;
    *(v22 + 5) = a3;
    *(v22 + 6) = 0;
    *(v22 + 7) = 0;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a4 + v12);
    *(a4 + v12) = 0x8000000000000000;
    sub_1D6D7AD1C(v18, v9, v11, isUniquelyReferenced_nonNull_native);

    *(a4 + v12) = v24;
    swift_endAccess();
  }
}

double SharedItemManager.register(for:attributionView:hideHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  return result;
}

void sub_1D673A1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SharedItem(0);
  v10 = sub_1D725844C();
  v11 = [v10 fc_NewsArticleID];

  if (v11)
  {
    v12 = sub_1D726207C();
    v14 = v13;

    v15 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_viewContextsByArticleID;
    swift_beginAccess();
    v16 = *(a2 + v15);
    if (*(v16 + 16) && (v17 = sub_1D5B69D90(v12, v14), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      swift_endAccess();
      v36 = v19;
      swift_bridgeObjectRetain_n();
      v20 = *(v19 + 16);
      if (!v20)
      {
        goto LABEL_10;
      }
    }

    else
    {
      swift_endAccess();
      v19 = MEMORY[0x1E69E7CC0];
      v36 = MEMORY[0x1E69E7CC0];
      v20 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v20)
      {
LABEL_10:

        swift_bridgeObjectRelease_n();
        return;
      }
    }

    v21 = 0;
    v22 = 32;
    while (*(v19 + v22) != a3)
    {
      ++v21;
      v22 += 32;
      if (v20 == v21)
      {
        goto LABEL_10;
      }
    }

    v23 = sub_1D5EC2528(v21);
    v32 = v24;
    v33 = v25;
    v34 = v26;
    v27 = v36;
    v28 = *(v36 + 16);
    if (v28 < v21)
    {
      __break(1u);
    }

    else
    {
      v29 = v23;
      sub_1D5DEA510(a5, a6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v28 >= *(v36 + 24) >> 1)
      {
        v27 = sub_1D6993F84(isUniquelyReferenced_nonNull_native, v28 + 1, 1, v36);
      }

      sub_1D5EC37A0(v21, v21, 1, v29, v32, a5, a6);
      swift_beginAccess();
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(a2 + v15);
      *(a2 + v15) = 0x8000000000000000;
      sub_1D6D7AD1C(v27, v12, v14, v31);

      *(a2 + v15) = v35;
      swift_endAccess();

      sub_1D5B74328(v34, v33);
    }
  }
}

uint64_t SharedItemManager.report(feedback:for:)(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sharedItemCenter;
  swift_beginAccess();
  sub_1D5B68374(v2 + v5, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9 = v4;
  (*(v7 + 56))(&v9, a2, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

id sub_1D673A4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_viewContextsByArticleID;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16) || (v10 = sub_1D5B69D90(a2, a3), (v11 & 1) == 0))
  {
    result = swift_endAccess();
    goto LABEL_8;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  result = swift_endAccess();
  if (!*(v12 + 16))
  {
LABEL_8:
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  v14 = *(v12 + 32);
  *a4 = v14;

  return v14;
}

double SharedItemManager.add(observer:)(uint64_t a1, uint64_t a2)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  return result;
}

double SharedItemManager.remove(observer:)()
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  return result;
}

void sub_1D673A6E8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_observers;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    goto LABEL_71;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_3:
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6FB460](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        swift_unknownObjectRelease();
        if (v9 == v7)
        {
          break;
        }
      }

      v10 = swift_unknownObjectWeakLoadStrong();

      if (!v10)
      {
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_62;
      }

      ++v6;
      if (v11 == v5)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_78;
    }

    if (v4)
    {
      if (v12 != sub_1D7263BFC())
      {
        goto LABEL_25;
      }
    }

    else if (v12 != *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      v4 = v6 + 5;
      do
      {
        v14 = v4 - 4;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA6FB460](v4 - 4, v3);
        }

        else
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v15 = *(v3 + 8 * v4);
        }

        v16 = swift_unknownObjectWeakLoadStrong();
        if (v16 && (v17 = v16, swift_unknownObjectRelease(), v17 == v15))
        {
        }

        else
        {
          v18 = swift_unknownObjectWeakLoadStrong();

          if (v18)
          {
            swift_unknownObjectRelease();
            if (v14 != v6)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x1DA6FB460](v6, v3);
                v20 = MEMORY[0x1DA6FB460](v4 - 4, v3);
              }

              else
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  goto LABEL_75;
                }

                v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v6 >= v21)
                {
                  goto LABEL_76;
                }

                if (v14 >= v21)
                {
                  goto LABEL_77;
                }

                v19 = *(v3 + 8 * v6 + 32);
                v20 = *(v3 + 8 * v4);
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(a1 + v2) = v3;
              if (!isUniquelyReferenced_nonNull_bridgeObject || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_1D5EC4BFC();
                *(a1 + v2) = v3;
              }

              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_68;
              }

              v23 = v3 & 0xFFFFFFFFFFFFFF8;
              if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_69;
              }

              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v20;

              *(a1 + v2) = v3;
              if ((v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_1D5EC4BFC();
                *(a1 + v2) = v3;
                v23 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v14 & 0x8000000000000000) != 0)
                {
LABEL_61:
                  __break(1u);
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
LABEL_69:
                  __break(1u);
LABEL_70:
                  __break(1u);
LABEL_71:
                  v5 = sub_1D7263BFC();
                  if (!v5)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_3;
                }
              }

              else if ((v14 & 0x8000000000000000) != 0)
              {
                goto LABEL_61;
              }

              if (v14 >= *(v23 + 16))
              {
                goto LABEL_70;
              }

              *(v23 + 8 * v4) = v19;

              *(a1 + v2) = v3;
            }

            v24 = __OFADD__(v6++, 1);
            if (v24)
            {
              goto LABEL_67;
            }
          }
        }

        v24 = __OFADD__(v14, 1);
        v25 = v4 - 3;
        if (v24)
        {
          goto LABEL_65;
        }

        if (v3 >> 62)
        {
          v26 = sub_1D7263BFC();
        }

        else
        {
          v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v4;
      }

      while (v25 != v26);
    }
  }

  else
  {
LABEL_13:
    if (v4)
    {
      v6 = sub_1D7263BFC();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  if (v3 >> 62)
  {
    v13 = sub_1D7263BFC();
    if (v13 >= v6)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= v6)
    {
LABEL_24:
      sub_1D6C0410C(v6, v13);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t SharedItemManager.countOfUnreadItems(since:readArticleIDs:)(uint64_t a1, uint64_t a2)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  return v3;
}

void sub_1D673AB50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_itemsByArticleID;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v13[2] = a2;
  v13[3] = a3;

  sub_1D673D380(sub_1D673DAE4, v13, v9);
  v11 = v10;

  v12 = *(v11 + 16);

  *a4 = v12;
}

uint64_t sub_1D673AC00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D673DB04(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v24 - v17);
  v19 = *a1;
  v20 = a1[1];
  *v18 = v19;
  v18[1] = v20;
  sub_1D673DB70(v26, &v24 + *(v11 + 56) - v17, type metadata accessor for SharedItem);
  sub_1D673DB70(v18, v14, sub_1D673DB04);

  v21 = *(v11 + 56);
  (*(v6 + 16))(v9, v14 + v21, v5);
  sub_1D673DBD8(v14 + v21, type metadata accessor for SharedItem);
  LOBYTE(v14) = sub_1D725882C();
  (*(v6 + 8))(v9, v5);
  if (v14)
  {
    v22 = sub_1D5BE240C(v19, v20, v25) ^ 1;
  }

  else
  {
    v22 = 0;
  }

  sub_1D673DBD8(v18, sub_1D673DB04);
  return v22 & 1;
}

uint64_t sub_1D673AE38()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sharedItemCenter);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v5 = *(v2 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4, v4);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, v6);
  v9 = (*(v3 + 64))(v2, v3);
  (*(v5 + 8))(v8, v2);
  return v9;
}

uint64_t sub_1D673AF68()
{
  sub_1D725A7BC();
  sub_1D5D20438(0, &qword_1EDF1B440, type metadata accessor for SharedItem, MEMORY[0x1E69E62F8]);

  sub_1D725B7CC();

  return v1;
}

uint64_t sub_1D673B03C()
{
  sub_1D725A7BC();
  sub_1D5B58388(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);

  sub_1D725B7CC();

  return v1;
}

uint64_t sub_1D673B104()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D6036AEC;

  return SharedItemManager.loadItemsIfNeeded()();
}

double sub_1D673B1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  return result;
}

uint64_t sub_1D673B258(char *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *a1;
  v6 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sharedItemCenter;
  swift_beginAccess();
  sub_1D5B68374(v4 + v6, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v10 = v5;
  (*(v8 + 56))(&v10, a2, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

double sub_1D673B34C()
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  return result;
}

uint64_t sub_1D673B3E0(uint64_t a1, uint64_t a2)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  return v3;
}

uint64_t sub_1D673B480()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sharedItemCenter);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v5 = *(v2 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4, v4);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, v6);
  v9 = (*(v3 + 64))(v2, v3);
  (*(v5 + 8))(v8, v2);
  return v9;
}

double SharedItemManager.sharedItemCenterDidAddItems(_:)()
{
  sub_1D5D20438(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1D726294C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1D6736BD4(0, 0, v4, &unk_1D72E4940, v6);

  return result;
}

uint64_t sub_1D673B6DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D673B76C;

  return sub_1D6738B74();
}

uint64_t sub_1D673B76C()
{
  v2 = *v1;

  if (!v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

void SharedItemManager.sharedItemCenter(_:didRemove:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = v3;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SharedItem(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D673DB70(v13, v11, type metadata accessor for SharedItem);
      v16 = sub_1D725844C();
      v17 = [v16 fc_NewsArticleID];

      if (v17)
      {
        v18 = sub_1D726207C();
        v20 = v19;

        sub_1D673DBD8(v11, type metadata accessor for SharedItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1D5B858EC(0, *(v15 + 16) + 1, 1, v15);
          v15 = isUniquelyReferenced_nonNull_native;
        }

        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1D5B858EC((v21 > 1), v22 + 1, 1, v15);
          v15 = isUniquelyReferenced_nonNull_native;
        }

        *(v15 + 16) = v22 + 1;
        v23 = v15 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = sub_1D673DBD8(v11, type metadata accessor for SharedItem);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v24 = v44;
  v50 = *&v44[OBJC_IVAR____TtC8NewsFeed17SharedItemManager_lock];
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v8);
  *(&v39 - 2) = v15;
  *(&v39 - 1) = v24;
  sub_1D725A7BC();
  sub_1D673CFA8(0);

  sub_1D725B7CC();

  v39 = aBlock;
  v25 = aBlock;
  if (aBlock >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v27 = 0;
    v41 = v25 & 0xFFFFFFFFFFFFFF8;
    v42 = v25 & 0xC000000000000001;
    v40 = i;
    while (v42)
    {
      v34 = MEMORY[0x1DA6FB460](v27, v25);
      v35 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_24;
      }

LABEL_20:
      v47 = ObjectType;
      v48 = &protocol witness table for SharedItemManager;
      *&aBlock = v24;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = v25;
        v29 = *(v34 + 24);
        v30 = swift_getObjectType();
        v31 = *(v29 + 16);
        v32 = v44;
        v33 = v29;
        v25 = v28;
        i = v40;
        v31(&aBlock, v15, v30, v33);
        v24 = v44;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = v24;
      }

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      ++v27;
      if (v35 == i)
      {
        goto LABEL_27;
      }
    }

    if (v27 >= *(v41 + 16))
    {
      goto LABEL_25;
    }

    v34 = *(v25 + 8 * v27 + 32);

    v35 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
      goto LABEL_20;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v37 = swift_allocObject();
  *(v37 + 16) = v39;
  v48 = sub_1D673D070;
  v49 = v37;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v46 = sub_1D5B6B06C;
  v47 = &block_descriptor_41;
  v38 = _Block_copy(&aBlock);

  FCPerformBlockOnMainThread();
  _Block_release(v38);
}

void sub_1D673BCF4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D20438(0, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v65 = &v59 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v60 = v10;
    v61 = v7;
    v62 = v6;
    v63 = a3;
    v15 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_viewContextsByArticleID;
    v59 = a1;
    v16 = (a1 + 40);
    v17 = MEMORY[0x1E69E7CC0];
    v67 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_viewContextsByArticleID;
    v68 = v14;
    v18 = v14;
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      v21 = *(v16 - 1);
      v20 = *v16;
      swift_beginAccess();
      v22 = *(a2 + v15);
      v23 = *(v22 + 16);

      if (v23 && (v24 = sub_1D5B69D90(v21, v20), (v25 & 1) != 0))
      {
        v26 = *(*(v22 + 56) + 8 * v24);
      }

      else
      {
        v26 = v17;
      }

      swift_endAccess();

      v27 = *(v26 + 16);
      v28 = *(v19 + 2);
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v29 > *(v19 + 3) >> 1)
      {
        if (v28 <= v29)
        {
          v31 = v28 + v27;
        }

        else
        {
          v31 = v28;
        }

        v19 = sub_1D6993F84(isUniquelyReferenced_nonNull_native, v31, 1, v19);
      }

      v15 = v67;
      if (*(v26 + 16))
      {
        if ((*(v19 + 3) >> 1) - *(v19 + 2) < v27)
        {
          goto LABEL_37;
        }

        swift_arrayInitWithCopy();

        if (v27)
        {
          v32 = *(v19 + 2);
          v33 = __OFADD__(v32, v27);
          v34 = v32 + v27;
          if (v33)
          {
            goto LABEL_38;
          }

          *(v19 + 2) = v34;
        }
      }

      else
      {

        if (v27)
        {
          goto LABEL_36;
        }
      }

      v16 += 2;
      --v18;
    }

    while (v18);
    v35 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_itemsByArticleID;
    v66 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sortedArticleIDs;
    v36 = (v59 + 40);
    v37 = v65;
    v64 = v19;
    do
    {
      v39 = *(v36 - 1);
      v38 = *v36;
      swift_beginAccess();

      v40 = sub_1D5B69D90(v39, v38);
      if (v41)
      {
        v42 = v40;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v44 = *(a2 + v35);
        v69 = v44;
        *(a2 + v35) = 0x8000000000000000;
        if (!v43)
        {
          sub_1D6D8313C();
          v44 = v69;
        }

        v45 = *(v44 + 56);
        v46 = type metadata accessor for SharedItem(0);
        v47 = *(v46 - 8);
        v48 = v45 + *(v47 + 72) * v42;
        v37 = v65;
        sub_1D5F2676C(v48, v65);
        sub_1D6714B04(v42, v44, v49);
        *(a2 + v35) = v44;

        (*(v47 + 56))(v37, 0, 1, v46);
        v19 = v64;
        v15 = v67;
      }

      else
      {
        v50 = type metadata accessor for SharedItem(0);
        (*(*(v50 - 8) + 56))(v37, 1, 1, v50);
      }

      sub_1D5D2060C(v37, &qword_1EDF343E0, type metadata accessor for SharedItem);
      swift_endAccess();
      v51 = *(a2 + v66);
      v52 = sub_1D726203C();
      [v51 removeObject_];

      swift_beginAccess();
      sub_1D5B69D90(v39, v38);
      LOBYTE(v52) = v53;

      if (v52)
      {
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v56 = *(a2 + v15);
        v69 = v56;
        *(a2 + v15) = 0x8000000000000000;
        if (!v54)
        {
          sub_1D6D8341C(v55);
          v56 = v69;
        }

        sub_1D6716D80();
        *(a2 + v15) = v56;
      }

      swift_endAccess();
      v36 += 2;
      --v68;
    }

    while (v68);
    v6 = v62;
    a3 = v63;
    v10 = v60;
    v7 = v61;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1D725890C();
  v57 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_modificationDate;
  swift_beginAccess();
  (*(v7 + 40))(a2 + v57, v10, v6);
  swift_endAccess();
  v58 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_observers;
  swift_beginAccess();
  *a3 = *(a2 + v58);
  a3[1] = v19;
}

void sub_1D673C2B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 56);
    do
    {
      v4 = *(v3 - 1);
      if (v4)
      {
        v5 = *v3;
        v6 = *(v3 - 3);
        v7 = sub_1D5DEA510(v4, v5);
        v4(v7);

        sub_1D5B74328(v4, v5);
      }

      v3 += 4;
      --v2;
    }

    while (v2);
  }
}

double sub_1D673C33C()
{
  sub_1D5D20438(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1D726294C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1D6736BD4(0, 0, v4, &unk_1D72E4B00, v6);

  return result;
}

uint64_t sub_1D673C464(uint64_t a1)
{
  v45 = type metadata accessor for SharedItem(0);
  v2 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v42 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v44 = v10;
  v48 = MEMORY[0x1E69E7CC8];
  v12 = *(a1 + 16);
  if (!v12)
  {
LABEL_17:
    v46 = *(v42[1] + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_lock);
    MEMORY[0x1EEE9AC00](v10, v11);
    v38 = v44;
    v42[-4] = v44;
    v42[-3] = v39;
    v42[-2] = &v48;
    sub_1D725A7BC();

    sub_1D725B7CC();

    v40 = v47;

    return v40;
  }

  v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v14 = *(v2 + 72);
  v43 = v9;
  while (1)
  {
    sub_1D673DB70(v13, v9, type metadata accessor for SharedItem);
    v15 = sub_1D725844C();
    v16 = [v15 fc_NewsArticleID];

    if (!v16)
    {
      v10 = sub_1D673DBD8(v9, type metadata accessor for SharedItem);
      goto LABEL_4;
    }

    v17 = v9;
    v18 = v14;
    v19 = sub_1D726207C();
    v21 = v20;
    [v44 addObject_];

    v22 = v5;
    sub_1D673DB70(v17, v5, type metadata accessor for SharedItem);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v48;
    v46 = v48;
    v26 = sub_1D5B69D90(v19, v21);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6D8313C();
      }
    }

    else
    {
      sub_1D6D6F53C(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_1D5B69D90(v19, v21);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_20;
      }

      v26 = v31;
    }

    v5 = v22;
    v14 = v18;
    if (v30)
    {

      v33 = v46;
      sub_1D673DA80(v5, v46[7] + v26 * v18);
      v9 = v43;
      v10 = sub_1D673DBD8(v43, type metadata accessor for SharedItem);
    }

    else
    {
      v33 = v46;
      v46[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v19;
      v34[1] = v21;
      sub_1D5F2676C(v5, v33[7] + v26 * v18);
      v9 = v43;
      v10 = sub_1D673DBD8(v43, type metadata accessor for SharedItem);
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_19;
      }

      v33[2] = v37;
    }

    v48 = v33;
LABEL_4:
    v13 += v14;
    if (!--v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D673C884@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, BOOL *a4@<X8>)
{
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sortedArticleIDs;
  v14 = *(a2 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_sortedArticleIDs);
  sub_1D5B5A498(0, &unk_1EDF1A968, 0x1E695DFA0);
  v15 = v14;
  v16 = sub_1D726370C();

  v17 = *(a2 + v13);
  *(a2 + v13) = a1;
  v18 = a1;

  v19 = *a3;
  v20 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_itemsByArticleID;
  swift_beginAccess();
  *(a2 + v20) = v19;

  sub_1D725890C();
  v21 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_modificationDate;
  swift_beginAccess();
  (*(v9 + 40))(a2 + v21, v12, v8);
  result = swift_endAccess();
  *a4 = (v16 & 1) == 0;
  return result;
}

unint64_t sub_1D673CA30()
{
  result = qword_1EC88AA98;
  if (!qword_1EC88AA98)
  {
    sub_1D5B5A498(255, &qword_1EDF04350, 0x1E69DC628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AA98);
  }

  return result;
}

uint64_t sub_1D673CAEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5B64680;

  return sub_1D673B6DC();
}

uint64_t sub_1D673CBF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, _OWORD *a4@<X8>)
{
  v22 = a3;
  v25 = a2;
  v26 = a4;
  sub_1D5D20438(0, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720]);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v22 - v7;
  v23 = type metadata accessor for SharedItem(0);
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF2EB38 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDF2EB40;
  v14 = [a1 articleID];
  v15 = sub_1D726207C();
  v17 = v16;

  v27 = *(v13 + OBJC_IVAR____TtC8NewsFeed17SharedItemManager_lock);
  MEMORY[0x1EEE9AC00](v18, v19);
  *(&v22 - 4) = v13;
  *(&v22 - 3) = v15;
  *(&v22 - 2) = v17;
  sub_1D725A7BC();

  sub_1D725B7CC();

  if ((*(v9 + 48))(v8, 1, v23) == 1)
  {
    result = sub_1D5D2060C(v8, &qword_1EDF343E0, type metadata accessor for SharedItem);
    v21 = v26;
    *v26 = 0u;
    v21[1] = 0u;
    *(v21 + 4) = 0;
  }

  else
  {
    sub_1D5F2676C(v8, v12);
    v22(v12);
    return sub_1D673DBD8(v12, type metadata accessor for SharedItem);
  }

  return result;
}

id sub_1D673CED8()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_1D673CF00(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1D673D740(v4, v1, v2, v3);
}

uint64_t sub_1D673CF4C(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1D673D7FC(v6, a2, v2, v4, v5);
}

void sub_1D673CFA8(uint64_t a1)
{
  if (!qword_1EDF04B48)
  {
    sub_1D5D20438(255, &qword_1EDF04B40, type metadata accessor for WeakSharedItemManagerObserver, MEMORY[0x1E69E62F8]);
    sub_1D5B58388(255, &qword_1EDF04F80, &type metadata for SharedItemManager.ShareAttributionViewContext, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04B48);
    }
  }
}

uint64_t dispatch thunk of SharedItemManagerType.loadItemsIfNeeded()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D6036AEC;

  return v7(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D673D2F0(void *result, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1D673D500(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1D673D380(uint64_t (*a1)(void *, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 > 0xD)
  {
    v14 = 8 * (v9 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      sub_1D673D2F0(v15, v10, a3, v6);
      MEMORY[0x1DA6FD500](v15, -1, -1);
      return;
    }

    v11 = v14;
  }

  MEMORY[0x1EEE9AC00](a1, v11);
  v13 = v16 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v13, v12);
  sub_1D673D500(v13, v10, a3, v6);
  if (v4)
  {
    swift_willThrow();
  }
}

void sub_1D673D500(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v5 = type metadata accessor for SharedItem(0);
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v8 = 0;
  v36 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v16 = v33;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v37 = (v14 - 1) & v14;
LABEL_11:
    v20 = v17 | (v8 << 6);
    v21 = v36[7];
    v22 = (v36[6] + 16 * v20);
    v23 = v22[1];
    v38[0] = *v22;
    v38[1] = v23;
    v24 = *(v34 + 72);
    v32 = v20;
    sub_1D673DB70(v21 + v24 * v20, v16, type metadata accessor for SharedItem);

    v25 = v39;
    v26 = v35(v38, v16);
    sub_1D673DBD8(v16, type metadata accessor for SharedItem);

    v39 = v25;
    if (v25)
    {
      return;
    }

    v14 = v37;
    if (v26)
    {
      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1D62CF710(v30, v29, v31, v36);
        return;
      }
    }
  }

  v18 = v8;
  while (1)
  {
    v8 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v19 = v10[v8];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v37 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1D673D740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v11, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1D673D7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(v13, a2, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1D673D8C0(uint64_t a1, uint64_t a2)
{
  sub_1D5D20438(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D673D954()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5B64684;

  return sub_1D673B6DC();
}

uint64_t sub_1D673DA18@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC8NewsFeed17SharedItemManager_observers;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t sub_1D673DA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D673DB04(uint64_t a1)
{
  if (!qword_1EC88AAB0)
  {
    type metadata accessor for SharedItem(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88AAB0);
    }
  }
}

uint64_t sub_1D673DB70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D673DBD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D673DC38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6738774(a1, v4, v5, v6);
}

uint64_t sub_1D673DCF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6738368(a1, v4, v5, v6);
}

void sub_1D673DDA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_1D5B483C4(255, a3, a4, a5 & 1);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t FeedPluginManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EDF14DA0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*FeedPluginManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EDF14DA0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D5EDA9DC;
}

uint64_t FeedPluginManager.pluginContainerController.getter()
{
  sub_1D725CF8C();
  v0 = sub_1D725CF9C();

  return v0();
}

uint64_t (*FeedPluginManager.pluginContainerController.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  sub_1D725CF8C();
  v5 = sub_1D725CF9C();
  *(v4 + 40) = v5(v4);
  return sub_1D673E07C;
}

void sub_1D673E07C(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1D5C3D600();
  }

  free(v3);
}

uint64_t FeedPluginManager.__allocating_init(feed:feedDescriptor:formatPluginFactory:)(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = v7;
  v15 = v8;
  FCFeedDescriptor.feedKind.getter(&v11);
  swift_allocObject();
  v9 = sub_1D5BC5DD8(&v12, &v11, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1D673E188(void *a1)
{
  v2 = *a1 >> 62;
  if (v2)
  {
    if (v2 != 1)
    {
      v7 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      sub_1D71969D4(sub_1D673ED84, v1, v7);
      v3 = v8;

      return v3;
    }

    sub_1D5E42B34();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D72816C0;

    v5 = sub_1D673E288(v4);
  }

  else
  {
    sub_1D5E42B34();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D72816C0;

    v5 = sub_1D673E504(v6);
  }

  *(v3 + 32) = v5;

  return v3;
}

uint64_t sub_1D673E288(uint64_t a1)
{
  swift_getWitnessTable();
  swift_unknownObjectRetain();
  sub_1D725F76C();
  sub_1D725CF5C();
  v2 = *(v1 + qword_1EDF14DA8 + 16);
  sub_1D5C384A0(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  v4 = sub_1D725F73C();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D5B7E2C0();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_1D7262EDC();
  sub_1D725C30C("Created plugin, identifier=%{public}@", 37, 2, &dword_1D5B42000, v2, v7, v3);

  sub_1D673ECC8(0);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D673E504(uint64_t a1)
{
  v2 = *(v1 + qword_1EDF14DA8 + 16);
  sub_1D5C384A0(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  v4 = sub_1D725F73C();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D5B7E2C0();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_1D7262EDC();
  sub_1D725C30C("Reusing plugin, identifier=%{public}@", 37, 2, &dword_1D5B42000, v2, v7, v3);

  sub_1D673ECC8(0);
  swift_allocObject();
  return sub_1D725BBAC();
}

double sub_1D673E5F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D5B7E910;
  *(v5 + 24) = v4;

  sub_1D725F74C();

  return result;
}

double sub_1D673E6A8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D5BE643C;
  *(v5 + 24) = v4;

  sub_1D725F77C();

  return result;
}

uint64_t sub_1D673E758()
{

  return swift_deallocClassInstance();
}

double sub_1D673E868()
{
  sub_1D5B87E10(v0 + qword_1EDF14DA0);

  v1 = *(v0 + qword_1EDF14DA8 + 16);

  return result;
}

uint64_t FeedPluginManager.deinit()
{
  v0 = sub_1D725CFAC();
  sub_1D5B87E10(v0 + qword_1EDF14DA0);

  v1 = *(v0 + qword_1EDF14DA8 + 16);

  return v0;
}

uint64_t FeedPluginManager.__deallocating_deinit()
{
  FeedPluginManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t FeedPluginManager.plugin(_:didResizePluginModel:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1D725D17C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FeedPluginManager.select(_:context:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + qword_1EDF14DA0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v7 + 8) + 8))(a1, a2, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FeedPluginManager.preview(for:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + qword_1EDF14DA0;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v8 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v10 = (*(*(v8 + 8) + 16))(a1, a2, a3, ObjectType);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t FeedPluginManager.sender(_:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + qword_1EDF14DA0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v9 + 8) + 24))(a1, a2, a3, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1D673ECFC()
{
  result = qword_1EDF05398;
  if (!qword_1EDF05398)
  {
    sub_1D5D1F120(255, &qword_1EDF053A0, sub_1D673ECC8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05398);
  }

  return result;
}

uint64_t sub_1D673ED84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = sub_1D673E188(&v4);
  *a2 = result;
  return result;
}

uint64_t FormatPuzzleBinding.Image.image(from:context:imageContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = *(a1 + 56);
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = swift_allocObject();
      v9 = *(a2 + 96);
      v30 = *(a2 + 80);
      v31 = v9;
      v32 = *(a2 + 112);
      v33 = *(a2 + 128);
      v10 = *(a2 + 64);
      v28 = *(a2 + 48);
      v29 = v10;
      v11 = swift_allocObject();
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      v12 = *(a2 + 96);
      *(v8 + 88) = *(a2 + 80);
      *(v8 + 104) = v12;
      *(v8 + 120) = *(a2 + 112);
      v13 = *(a2 + 64);
      *(v8 + 56) = *(a2 + 48);
      *(v11 + 16) = v7;
      *(v8 + 48) = 1;
      *(v8 + 136) = *(a2 + 128);
      *(v8 + 72) = v13;
      v14 = sub_1D673F398;
    }

    else
    {
      v8 = swift_allocObject();
      v21 = *(a2 + 96);
      v30 = *(a2 + 80);
      v31 = v21;
      v32 = *(a2 + 112);
      v33 = *(a2 + 128);
      v22 = *(a2 + 64);
      v28 = *(a2 + 48);
      v29 = v22;
      v11 = swift_allocObject();
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      v23 = *(a2 + 96);
      *(v8 + 88) = *(a2 + 80);
      *(v8 + 104) = v23;
      *(v8 + 120) = *(a2 + 112);
      v24 = *(a2 + 64);
      *(v8 + 56) = *(a2 + 48);
      *(v11 + 16) = v7;
      *(v8 + 48) = 1;
      *(v8 + 136) = *(a2 + 128);
      *(v8 + 72) = v24;
      v14 = sub_1D673F308;
    }

    *(v8 + 144) = v14;
    *(v8 + 152) = v11;
    v20 = v8 | 0x2000000000000000;
  }

  else
  {
    v15 = *(a2 + 96);
    v30 = *(a2 + 80);
    v31 = v15;
    v32 = *(a2 + 112);
    v33 = *(a2 + 128);
    v16 = *(a2 + 64);
    v28 = *(a2 + 48);
    v29 = v16;
    v17 = swift_allocObject();
    *&v26[39] = *(a2 + 80);
    *&v26[55] = *(a2 + 96);
    *&v26[71] = *(a2 + 112);
    v18 = *(a2 + 64);
    *&v26[7] = *(a2 + 48);
    *(v17 + 16) = v7;
    v27[0] = 1;
    v26[87] = *(a2 + 128);
    *&v26[23] = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 81) = *&v26[32];
    *(v19 + 97) = *&v26[48];
    *(v19 + 113) = *&v26[64];
    *(v19 + 49) = *v26;
    *(v19 + 48) = 1;
    *(v19 + 129) = *&v26[80];
    *(v19 + 65) = *&v26[16];
    *(v19 + 144) = sub_1D673F3C4;
    *(v19 + 152) = v17;
    v20 = v19 | 0x2000000000000000;
  }

  *a3 = v20;
  sub_1D673F334(&v28, v27);
  return swift_unknownObjectRetain();
}

double sub_1D673F068@<D0>(id a1@<X2>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  if (a3 == 2)
  {
    v15 = 0;
    v6 = [a1 puzzleType];
    swift_getObjectType();
    v7 = swift_unknownObjectRetain();
    v8 = &v15;
  }

  else
  {
    v9 = [a2 userInterfaceStyle];
    if (v9 >= 2)
    {
      if (v9 == 2)
      {
        v16 = 0;
        v11 = [a1 puzzleType];
        swift_getObjectType();
        v7 = swift_unknownObjectRetain();
        v8 = &v16;
      }

      else
      {
        v18 = 1;
        v12 = [a1 puzzleType];
        swift_getObjectType();
        v7 = swift_unknownObjectRetain();
        v8 = &v18;
      }
    }

    else
    {
      v17 = 1;
      v10 = [a1 puzzleType];
      swift_getObjectType();
      v7 = swift_unknownObjectRetain();
      v8 = &v17;
    }
  }

  v13 = sub_1D6F1DD74(v7, v8);
  swift_unknownObjectRelease_n();
  if (v13)
  {
    *(a4 + 24) = sub_1D5C169F4();
    *(a4 + 32) = sub_1D5EECFF8();
    *a4 = v13;
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

id sub_1D673F20C@<X0>(id a1@<X2>, SEL *a2@<X3>, SEL *a3@<X4>, void *a4@<X8>)
{
  result = [a1 *a2];
  if (result)
  {
    v8 = result;
    v9 = sub_1D5C169F4();
    v16 = v9;
    v10 = sub_1D5EECFF8();
    v17 = v10;
    *&v15 = v8;
    v11 = [a1 *a3];
    if (!v11)
    {
      v9 = 0;
      v10 = 0;
    }

    v12 = sub_1D6723F3C();
    v13 = swift_allocObject();
    result = sub_1D5B63F14(&v15, (v13 + 2));
    v13[7] = v11;
    v13[8] = 0;
    v13[9] = 0;
    v13[10] = v9;
    v13[11] = v10;
    v14 = &type metadata for FormatAssetHandle;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  *a4 = v13;
  a4[3] = v14;
  a4[4] = v12;
  return result;
}

uint64_t sub_1D673F334(uint64_t a1, uint64_t a2)
{
  sub_1D671E290();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FormatPuzzleBinding.Image.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D673F458()
{
  result = qword_1EC88AAC8;
  if (!qword_1EC88AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AAC8);
  }

  return result;
}

unint64_t sub_1D673F4AC(uint64_t a1)
{
  result = sub_1D673F4D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D673F4D4()
{
  result = qword_1EC88AAD0;
  if (!qword_1EC88AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AAD0);
  }

  return result;
}

unint64_t sub_1D673F528(void *a1)
{
  a1[1] = sub_1D66967BC();
  a1[2] = sub_1D66FC92C();
  result = sub_1D673F458();
  a1[3] = result;
  return result;
}

Swift::Bool __swiftcall FeedServiceContextType.canReadFromNetwork()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for FeedServiceOptions.RootCursorSource(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedServiceOptions(0);
  v9 = v8 - 8;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 8))(v3, v2, v11);
  sub_1D5B96CF8(&v13[*(v9 + 28)], v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2 && EnumCaseMultiPayload != 0)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    sub_1D5C3BC7C(v7, type metadata accessor for FeedServiceOptions.RootCursorSource);
  }

  return 1;
}

id ArticleActivityItemsConfiguration.__allocating_init(headline:shareLinkProvider:shareLinkTextProvider:userHasAccess:)(void *a1, void *a2, void *a3, char a4)
{
  v8 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1D5B54790(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v52 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  if (a4)
  {
    v57 = a3;
    v58 = a2;
    v21 = a2[3];
    v22 = a2[4];
    v23 = v52 - v20;
    v52[1] = v8;
    v24 = v21;
    v53 = v21;
    v52[2] = __swift_project_boxed_opaque_existential_1(a2, v21);
    v25 = *(v22 + 8);
    v54 = v22;
    v55 = v22 + 8;
    v26 = v24;
    v27 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25(a1, v26, v22);
    v56 = v23;
    sub_1D5EB84C0(v23, v17);
    v28 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    sub_1D5EB8540(v17, v29 + v28);
    v61[0] = MEMORY[0x1E69E7CC0];
    sub_1D5BA7004();
    sub_1D5B54790(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    sub_1D5B7667C();
    swift_unknownObjectRetain();
    sub_1D7263B6C();
    sub_1D673FC74(0);
    swift_allocObject();
    v30 = sub_1D725B7AC();
    sub_1D5E42B34();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D728AF30;
    v32 = type metadata accessor for SharingArticleImageActivityItemSource();
    v33 = objc_allocWithZone(v32);
    *&v33[OBJC_IVAR____TtC8NewsFeed37SharingArticleImageActivityItemSource_headline] = a1;
    v63.receiver = v33;
    v63.super_class = v32;
    swift_unknownObjectRetain();
    *(v31 + 32) = objc_msgSendSuper2(&v63, sel_init);
    v34 = type metadata accessor for SharingArticleTextActivityItemSource();
    v35 = objc_allocWithZone(v34);
    *&v35[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline] = a1;
    v36 = swift_unknownObjectRetain_n();
    v37 = sub_1D6079EEC(v36);
    v38 = &v35[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle];
    *v38 = v37;
    *(v38 + 1) = v39;
    v62.receiver = v35;
    v62.super_class = v34;
    v40 = objc_msgSendSuper2(&v62, sel_init);
    swift_unknownObjectRelease();
    *(v31 + 40) = v40;
    v41 = swift_unknownObjectRetain();
    v42 = v57;
    v25(v41, v53, v54);
    sub_1D5B68374(v42, v61);
    v43 = type metadata accessor for SharingArticleURLActivityItemSource(0);
    v44 = objc_allocWithZone(v43);
    *&v44[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline] = a1;
    swift_unknownObjectRetain();

    v45 = [a1 sourceChannel];
    if (v45)
    {
      v46 = [v45 isPublic];
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0;
    }

    v48 = objc_allocWithZone(v59);
    sub_1D5EB84C0(v27, &v44[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL]);
    sub_1D5B68374(v61, &v44[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider]);
    v44[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_sourceChannelPublic] = v46;
    *&v44[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_linkPresentationSource] = v30;
    v60.receiver = v44;
    v60.super_class = v43;
    v49 = objc_msgSendSuper2(&v60, sel_init);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v61);
    sub_1D5E3E404(v27);
    *(v31 + 48) = v49;
    sub_1D5B5534C(0, &unk_1EC88CA50, &protocolRef_UIActivityItemSource);
    v50 = sub_1D726265C();

    v47 = [v48 initNAWithActivityItemSources_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_1D5E3E404(v56);
    a2 = v58;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a3);
    swift_unknownObjectRelease();
    v47 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v47;
}

void sub_1D673FC74(uint64_t a1)
{
  if (!qword_1EDF17AF0)
  {
    sub_1D5B5534C(255, &unk_1EDF04420, &protocolRef_NELinkPresentationSource);
    v1 = sub_1D725B7BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17AF0);
    }
  }
}

id ArticleActivityItemsConfiguration.__allocating_init(headline:userHasAccess:)(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1D5B54790(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v36 - v15;
  if (a2)
  {
    sub_1D67400D4(a1, &v36 - v15);
    sub_1D5EB84C0(v16, v12);
    v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    sub_1D5EB8540(v12, v18 + v17);
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D5BA7004();
    sub_1D5B54790(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    sub_1D5B7667C();
    swift_unknownObjectRetain();
    sub_1D7263B6C();
    sub_1D673FC74(0);
    swift_allocObject();
    v19 = sub_1D725B7AC();
    v20 = objc_allocWithZone(v3);
    sub_1D5E42B34();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D728AF30;
    v22 = type metadata accessor for SharingArticleImageActivityItemSource();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtC8NewsFeed37SharingArticleImageActivityItemSource_headline] = a1;
    v38.receiver = v23;
    v38.super_class = v22;
    swift_unknownObjectRetain();
    *(v21 + 32) = objc_msgSendSuper2(&v38, sel_init);
    v24 = type metadata accessor for SharingArticleTextActivityItemSource();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline] = a1;
    v26 = swift_unknownObjectRetain();
    v27 = sub_1D6079EEC(v26);
    v28 = &v25[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle];
    *v28 = v27;
    *(v28 + 1) = v29;
    v37.receiver = v25;
    v37.super_class = v24;
    *(v21 + 40) = objc_msgSendSuper2(&v37, sel_init);
    v30 = swift_unknownObjectRetain();
    sub_1D67400D4(v30, v12);
    type metadata accessor for MailShareLinkTextProvider();
    v31 = swift_allocObject();

    v32 = sub_1D67408C4(a1, v12, v31, v19);
    swift_unknownObjectRelease();

    *(v21 + 48) = v32;
    sub_1D5B5534C(0, &unk_1EC88CA50, &protocolRef_UIActivityItemSource);
    v33 = sub_1D726265C();

    v34 = [v20 initNAWithActivityItemSources_];
    swift_unknownObjectRelease();

    sub_1D5E3E404(v16);
    return v34;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t sub_1D67400D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B54790(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - v6;
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v13, v14).n128_u64[0];
  v17 = &v29 - v16;
  if ([a1 contentType] != 1)
  {
    v18 = [a1 articleID];
    if (!v18)
    {
      sub_1D726207C();
      v18 = sub_1D726203C();
    }

    v19 = [a1 routeURL];
    if (v19)
    {
      v20 = v19;
      sub_1D72584EC();

      v21 = sub_1D725844C();
      (*(v9 + 8))(v12, v8);
    }

    else
    {
      v21 = 0;
    }

    v22 = [objc_opt_self() nss:v18 NewsURLForArticleID:v21 routeURL:?];

    if (v22)
    {
      sub_1D72584EC();

      v23 = [a1 sourceChannel];
      if (!v23 || (v24 = [v23 isPublic], swift_unknownObjectRelease(), (v24 & 1) != 0))
      {
        (*(v9 + 32))(a2, v17, v8);
        return (*(v9 + 56))(a2, 0, 1, v8);
      }

      (*(v9 + 8))(v17, v8);
    }
  }

  v26 = [a1 contentURL];
  if (v26)
  {
    v27 = v26;
    sub_1D72584EC();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v9 + 56))(v7, v28, 1, v8);
  return sub_1D5EB8540(v7, a2);
}

void sub_1D6740410(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D5B54790(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - v8;
  sub_1D5EB84C0(a2, &v14 - v8);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_1D725844C();
    (*(v11 + 8))(v9, v10);
  }

  v13 = [objc_allocWithZone(NEArticleLinkPresentationSource) initWithHeadline:a1 articleURL:v12 selectedText:0];

  *a3 = v13;
}

id ArticleActivityItemsConfiguration.__allocating_init(headline:itemOptions:)(void *a1)
{
  v2 = sub_1D61881BC();

  return ArticleActivityItemsConfiguration.__allocating_init(headline:userHasAccess:)(a1, v2 & 1);
}

id ArticleActivityItemsConfiguration.__allocating_init(objects:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  sub_1D5B5534C(0, &qword_1EC8833B0, &protocolRef_NSItemProviderWriting);
  v3 = sub_1D726265C();

  v4 = [v2 initWithObjects_];

  return v4;
}

id ArticleActivityItemsConfiguration.init(objects:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1D5B5534C(0, &qword_1EC8833B0, &protocolRef_NSItemProviderWriting);
  v3 = sub_1D726265C();

  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithObjects_, v3);

  return v4;
}

id ArticleActivityItemsConfiguration.__allocating_init(itemProviders:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  sub_1D60A95CC();
  v3 = sub_1D726265C();

  v4 = [v2 initWithItemProviders_];

  return v4;
}

id ArticleActivityItemsConfiguration.init(itemProviders:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1D60A95CC();
  v3 = sub_1D726265C();

  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithItemProviders_, v3);

  return v4;
}

id ArticleActivityItemsConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D67408C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SharingArticleURLActivityItemSource(0);
  v9 = objc_allocWithZone(v8);
  v15[3] = type metadata accessor for MailShareLinkTextProvider();
  v15[4] = &protocol witness table for MailShareLinkTextProvider;
  v15[0] = a3;
  *&v9[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline] = a1;

  v10 = [swift_unknownObjectRetain() sourceChannel];
  if (v10)
  {
    v11 = [v10 isPublic];
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  sub_1D5EB84C0(a2, &v9[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL]);
  sub_1D5B68374(v15, &v9[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider]);
  v9[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_sourceChannelPublic] = v11;
  *&v9[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_linkPresentationSource] = a4;
  v14.receiver = v9;
  v14.super_class = v8;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_1D5E3E404(a2);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

void sub_1D6740A20(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8) == 3 && *a1 == 3;
  if (v5 || (v6 = *v2) == 0)
  {
    v7 = MEMORY[0x1E69D7A00];
    goto LABEL_10;
  }

  if (v6 == 1)
  {
    v7 = MEMORY[0x1E69D7A08];
    goto LABEL_10;
  }

  if (v6 == 2)
  {
    v7 = MEMORY[0x1E69D79F8];
LABEL_10:
    v8 = *v7;
    v9 = sub_1D725D80C();
    (*(*(v9 - 8) + 104))(a2, v8, v9);
    return;
  }

  v13 = v2[1];
  v10 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v11 = v10();
  sub_1D5E02AFC(v11, v6);

  if (!v3)
  {
    v12 = v10();
    sub_1D5E02AFC(v12, v13);

    sub_1D725EAFC();
    v7 = MEMORY[0x1E69D7A10];
    goto LABEL_10;
  }
}

BOOL _s8NewsFeed30FormatItemNodeSwipeActionStyleO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (!*a1)
  {
    if (!v5)
    {
      sub_1D62B5E24(0);
      v6 = 0;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      if (v5 == 2)
      {
        sub_1D62B5E24(2uLL);
        v6 = 2;
LABEL_10:
        sub_1D62B5E24(v6);
        return 1;
      }
    }

    else if (v5 >= 3)
    {
      sub_1D62B5DD0(*a2);
      sub_1D62B5DD0(v3);
      sub_1D62B5DD0(v5);
      sub_1D62B5DD0(v3);
      sub_1D633A310(v3, v5);
      if (v10)
      {
        sub_1D633A310(v2, v4);
        v12 = v11;
        sub_1D62B5E24(v3);
        sub_1D62B5E24(v5);
        sub_1D62B5E24(v5);
        sub_1D62B5E24(v3);
        return (v12 & 1) != 0;
      }

      sub_1D62B5E24(v3);
      sub_1D62B5E24(v5);
      sub_1D62B5E24(v5);
      v8 = v3;
LABEL_13:
      sub_1D62B5E24(v8);
      return 0;
    }

LABEL_12:
    sub_1D62B5DD0(*a2);
    sub_1D62B5DD0(v3);
    sub_1D62B5E24(v3);
    v8 = v5;
    goto LABEL_13;
  }

  if (v5 != 1)
  {
    goto LABEL_12;
  }

  v7 = 1;
  sub_1D62B5E24(1uLL);
  sub_1D62B5E24(1uLL);
  return v7;
}

unint64_t sub_1D6740DAC(uint64_t a1)
{
  result = sub_1D6740DD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6740DD4()
{
  result = qword_1EC88AAD8;
  if (!qword_1EC88AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AAD8);
  }

  return result;
}

unint64_t sub_1D6740E28(void *a1)
{
  a1[1] = sub_1D5CC6B08();
  a1[2] = sub_1D669BD70();
  result = sub_1D6740E60();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6740E60()
{
  result = qword_1EC88AAE0;
  if (!qword_1EC88AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AAE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed30FormatItemNodeSwipeActionStyleO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6740ECC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *sub_1D6740F28(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void *sub_1D6740F58(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (!v2)
    {
      v36 = MEMORY[0x1E69E6F90];
      sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v5 = inited + 32;
      sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v36);
      sub_1D5EA74B8(0);
      v38 = (*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D7273AE0;
      v9 = v8 + v38;
      v11 = 0x64656C6261736944;
      v12 = (v8 + v38);
      v10 = 0xE800000000000000;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = MEMORY[0x1E69E6F90];
      sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v5 = inited + 32;
      sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v3);
      sub_1D5EA74B8(0);
      v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D7273AE0;
      v9 = v8 + v7;
      v10 = 0xE900000000000064;
      v11 = 0x65736E65646E6F43;
      v12 = (v8 + v7);
LABEL_11:
      sub_1D711F844(0x656C797453, 0xE500000000000000, v11, v10, v12);
      v42 = type metadata accessor for FormatInspectionItem(0);
      (*(*(v42 - 8) + 56))(v9, 0, 1, v42);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v39 = MEMORY[0x1E69E6F90];
    sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v5 = inited + 32;
    sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v39);
    sub_1D5EA74B8(0);
    v41 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v9 = v8 + v41;
    v11 = 0x746C7561666544;
    v12 = (v8 + v41);
    v10 = 0xE700000000000000;
    goto LABEL_11;
  }

  if (v2 != 3)
  {
LABEL_8:
    v48 = a2[1];
    v20 = MEMORY[0x1E69E6F90];
    sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v20);
    sub_1D5EA74B8(0);
    v22 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
    v23 = *(*(v21 - 8) + 72);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    v9 = v8 + v22;
    sub_1D5B561B4(0, &qword_1EC8803C0, sub_1D5E4F38C, v20);
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_1D7273AE0;
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7270C10;
    v26 = v25 + v22;

    sub_1D711B070(0x53206E6F74747542, 0xEB00000000657A69, v2, (v25 + v22));
    v27 = type metadata accessor for FormatInspectionItem(0);
    v28 = *(*(v27 - 8) + 56);
    v28(v25 + v22, 0, 1, v27);
    v29 = v28;

    v30 = sub_1D711B070(0x657241202E6E694DLL, 0xEF68746469572061, v48, (v26 + v24));
    v31 = v27;
    v29(v26 + v24, 0, 1, v27, v30);
    sub_1D6795150(0x6F69736E656D6944, 0xE90000000000006ELL, 0, 0, v25, v49);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v47 + 56) = &type metadata for FormatInspectionGroup;
    *(v47 + 64) = &off_1F518B2C0;
    v32 = swift_allocObject();
    *(v47 + 32) = v32;
    *(v32 + 48) = v50;
    v33 = v49[1];
    *(v32 + 16) = v49[0];
    *(v32 + 32) = v33;
    v34 = sub_1D5F62BFC(v47);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v47 + 32));
    v35 = sub_1D7073500(v34);

    sub_1D711AD20(0x656C797453, 0xE500000000000000, v35, 0x6F69736E656D6944, 0xE90000000000006ELL, v9);
    v5 = inited + 32;
    (v29)(v9, 0, 1, v31);
    goto LABEL_12;
  }

  v13 = MEMORY[0x1E69E6F90];
  sub_1D5B561B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v5 = inited + 32;
  sub_1D5B561B4(0, &qword_1EC880490, sub_1D5EA74B8, v13);
  sub_1D5EA74B8(0);
  v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7273AE0;
  v9 = v8 + v15;
  v16 = type metadata accessor for FormatInspectionItem(0);
  v17 = *(v16 + 24);
  v18 = type metadata accessor for FormatInspectionItem.Value(0);
  (*(*(v18 - 8) + 56))(v9 + v17, 1, 1, v18);
  *v9 = xmmword_1D72E4DD0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v19 = v9 + *(v16 + 28);
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = -1;
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
LABEL_12:
  sub_1D6795150(0x6341206570697753, 0xEC0000006E6F6974, 0, 0, v8, v51);
  swift_setDeallocating();
  sub_1D5EF5F0C(v9, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v43 = swift_allocObject();
  *(inited + 32) = v43;
  *(v43 + 48) = v52;
  v44 = v51[1];
  *(v43 + 16) = v51[0];
  *(v43 + 32) = v44;
  v45 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5EF5F0C(v5, sub_1D5E4F358);
  return v45;
}

uint64_t sub_1D6741980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DebugFormatCompilingPackage(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (v20 - v13);

  v15 = sub_1D6E74418();
  v17 = v16;
  *v14 = a1;

  sub_1D725890C();
  sub_1D6742394(v14, v10, type metadata accessor for DebugFormatCompilingPackage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[1] = a4;
  sub_1D6D7AD38(v10, v15, v17, isUniquelyReferenced_nonNull_native);

  return a2;
}

uint64_t sub_1D6741AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DebugFormatCompilerResultEntry(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  if (v12)
  {
    v31 = a2;
    v32 = a4;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v12, 0);
    v13 = v35;
    v14 = *(v8 + 80);
    v30 = a1;
    v15 = a1 + ((v14 + 32) & ~v14);
    v16 = *(v8 + 72);
    do
    {
      sub_1D67422D4(v15, v11);
      v17 = *v11;
      v33 = 0;
      v34 = 0xE000000000000000;
      v18 = *(v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      if (v18 <= 2)
      {
        v19 = 0xE600000000000000;
        if (*(v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
        {
          if (v18 == 1)
          {
            v20 = 0x726564616548;
          }

          else
          {
            v20 = 0x7265746F6F46;
          }
        }

        else
        {
          v20 = 0x74756F79614CLL;
        }
      }

      else if (*(v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
      {
        if (v18 == 5)
        {
          v19 = 0xE700000000000000;
          v20 = 0x7972617262694CLL;
        }

        else
        {
          v19 = 0xEA0000000000646ELL;
          v20 = 0x756F72676B636142;
        }
      }

      else if (v18 == 3)
      {
        v19 = 0xE700000000000000;
        v20 = 0x6C6C6177796150;
      }

      else
      {
        v19 = 0xE500000000000000;
        v20 = 0x656D656854;
      }

      MEMORY[0x1DA6F9910](v20, v19);

      MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
      MEMORY[0x1DA6F9910](*(v17 + 16), *(v17 + 24));
      v21 = v33;
      v22 = v34;
      sub_1D6742338(v11);
      v35 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D5BFC364((v23 > 1), v24 + 1, 1);
        v13 = v35;
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v15 += v16;
      --v12;
    }

    while (v12);
    v26 = sub_1D5B86020(v13);

    v27 = sub_1D6741EC0(v26, v31, v32);

    v33 = v27;

    sub_1D6987ED4(v28);
    a2 = v33;
    sub_1D67423FC(0);
    sub_1D6742454();
    sub_1D72623DC();
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1D6741E24()
{

  v0 = sub_1D6E74418();

  return v0;
}

uint64_t type metadata accessor for DebugFormatCompilingPackage(uint64_t a1)
{
  result = qword_1EC88AAF0;
  if (!qword_1EC88AAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6741EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[1] = a3;
  v5 = type metadata accessor for DebugFormatCompilerResultEntry(0) - 8;
  MEMORY[0x1EEE9AC00](v5, v6);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (v33 - v11);
  v36 = *(a2 + 16);
  if (v36)
  {
    v13 = 0;
    v34 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v35 = a2 + v34;
    v14 = a1 + 56;
    v15 = MEMORY[0x1E69E7CC0];
    v16 = *(v10 + 72);
    do
    {
      sub_1D67422D4(v35 + v16 * v13, v12);
      v17 = *v12;
      v38 = 0;
      v39 = 0xE000000000000000;
      v18 = *(v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      if (v18 <= 2)
      {
        v19 = 0xE600000000000000;
        if (*(v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
        {
          if (v18 == 1)
          {
            v20 = 0x726564616548;
          }

          else
          {
            v20 = 0x7265746F6F46;
          }
        }

        else
        {
          v20 = 0x74756F79614CLL;
        }
      }

      else if (*(v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
      {
        if (v18 == 5)
        {
          v19 = 0xE700000000000000;
          v20 = 0x7972617262694CLL;
        }

        else
        {
          v19 = 0xEA0000000000646ELL;
          v20 = 0x756F72676B636142;
        }
      }

      else if (v18 == 3)
      {
        v19 = 0xE700000000000000;
        v20 = 0x6C6C6177796150;
      }

      else
      {
        v19 = 0xE500000000000000;
        v20 = 0x656D656854;
      }

      MEMORY[0x1DA6F9910](v20, v19);

      MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
      MEMORY[0x1DA6F9910](*(v17 + 16), *(v17 + 24));
      v21 = v39;
      if (*(a1 + 16) && (v22 = v38, sub_1D7264A0C(), sub_1D72621EC(), v23 = sub_1D7264A5C(), v24 = -1 << *(a1 + 32), v25 = v23 & ~v24, ((*(v14 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
      {
        v26 = ~v24;
        while (1)
        {
          v27 = (*(a1 + 48) + 16 * v25);
          v28 = *v27 == v22 && v27[1] == v21;
          if (v28 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v14 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        sub_1D6742338(v12);
      }

      else
      {
LABEL_27:

        sub_1D6742394(v12, v37, type metadata accessor for DebugFormatCompilerResultEntry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6998024(0, *(v15 + 16) + 1, 1);
          v15 = v40;
        }

        v31 = *(v15 + 16);
        v30 = *(v15 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D6998024((v30 > 1), v31 + 1, 1);
          v15 = v40;
        }

        *(v15 + 16) = v31 + 1;
        sub_1D6742394(v37, v15 + v34 + v31 * v16, type metadata accessor for DebugFormatCompilerResultEntry);
      }

      ++v13;
    }

    while (v13 != v36);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v38 = v15;
  sub_1D67423FC(0);
  sub_1D6742454();
  sub_1D72623DC();

  return v15;
}

uint64_t sub_1D67422D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatCompilerResultEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6742338(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatCompilerResultEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6742394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D67423FC(uint64_t a1)
{
  if (!qword_1EC88AAE8)
  {
    type metadata accessor for DebugFormatCompilerResultEntry(255);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88AAE8);
    }
  }
}

unint64_t sub_1D6742454()
{
  result = qword_1EC88DDF0;
  if (!qword_1EC88DDF0)
  {
    sub_1D67423FC(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DDF0);
  }

  return result;
}

uint64_t sub_1D67424D4(uint64_t a1)
{
  result = type metadata accessor for DebugFormatPackageInventory();
  if (v2 <= 0x3F)
  {
    result = sub_1D725891C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t FeedScoredRecipe.identifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_1D726207C();

  return v2;
}

id FeedScoredRecipe.init(recipe:scoreProfile:)@<X0>(id result@<X0>, id a2@<X1>, void *a3@<X8>)
{
  v3 = result;
  if (!a2)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    a2 = result;
  }

  *a3 = v3;
  a3[1] = a2;
  return result;
}

id FeedScoredRecipe.item.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = 0;
  swift_unknownObjectRetain();

  return v3;
}

uint64_t FeedScoredRecipe.publisherID.getter()
{
  v1 = [*v0 publisherID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

uint64_t FeedScoredRecipe.articleIDs.getter()
{
  v1 = [*v0 articleIDs];
  v2 = sub_1D726267C();

  return v2;
}

uint64_t FeedScoredRecipe.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 publishDate];
  if (v3)
  {
    v4 = v3;
    sub_1D72588BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D725891C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

BOOL static FeedScoredRecipe.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v14 = *a1;
  v5 = FeedScoredRecipe.identifier.getter();
  v7 = v6;
  if (v5 == FeedScoredRecipe.identifier.getter() && v7 == v8)
  {
  }

  else
  {
    v9 = sub_1D72646CC();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  [v2 sortingScore];
  v12 = v11;
  [v3 sortingScore];
  return v12 == v13;
}

uint64_t sub_1D67428C8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D674290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FormatResizeConstraint.Dimension.rawValue.getter()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t FormatResizeConstraint.targetIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

NewsFeed::FormatResizeConstraint::Dimension_optional __swiftcall FormatResizeConstraint.Dimension.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D6742A20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746867696568;
  }

  else
  {
    v3 = 0x6874646977;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x746867696568;
  }

  else
  {
    v5 = 0x6874646977;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6742AC0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6742B3C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6742BA4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6742C1C(uint64_t *a1@<X8>)
{
  v2 = 0x6874646977;
  if (*v1)
  {
    v2 = 0x746867696568;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s8NewsFeed22FormatResizeConstraintV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *a1 == 0;
  if (*a1)
  {
    v7 = 0x746867696568;
  }

  else
  {
    v7 = 0x6874646977;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = 0x746867696568;
  }

  else
  {
    v9 = 0x6874646977;
  }

  if (*a2)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = sub_1D72646CC();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  if (v3 == v5)
  {
    return 1;
  }

LABEL_24:

  return sub_1D72646CC();
}

unint64_t sub_1D6742DA8()
{
  result = qword_1EC88AB60;
  if (!qword_1EC88AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AB60);
  }

  return result;
}

unint64_t sub_1D6742DFC(uint64_t a1)
{
  *(a1 + 8) = sub_1D6742E2C();
  result = sub_1D5C9FD00();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6742E2C()
{
  result = qword_1EC88AB68;
  if (!qword_1EC88AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AB68);
  }

  return result;
}

unint64_t sub_1D6742E80(uint64_t a1)
{
  result = sub_1D6742EA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6742EA8()
{
  result = qword_1EC88AB70;
  if (!qword_1EC88AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AB70);
  }

  return result;
}

unint64_t sub_1D6742F3C(uint64_t a1)
{
  result = sub_1D6742F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6742F64()
{
  result = qword_1EC88AB78;
  if (!qword_1EC88AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AB78);
  }

  return result;
}

uint64_t sub_1D6742FF8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D674304C()
{
  result = qword_1EC88AB80;
  if (!qword_1EC88AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AB80);
  }

  return result;
}

double FormatSwitchNodeCase.expression.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

double sub_1D6743108(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;

  return result;
}

double FormatSwitchNodeCase.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

uint64_t FormatSwitchNodeCase.deinit()
{

  return v0;
}

uint64_t FormatSwitchNodeCase.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6743270(uint64_t a1)
{
  result = sub_1D6743340(&qword_1EC88AB88, &protocol conformance descriptor for FormatSwitchNodeCase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D67432B4(void *a1)
{
  a1[1] = sub_1D6743340(&qword_1EDF2AA38, &protocol conformance descriptor for FormatSwitchNodeCase);
  a1[2] = sub_1D6743340(&qword_1EDF0ED18, &protocol conformance descriptor for FormatSwitchNodeCase);
  result = sub_1D6743340(qword_1EC88AB90, &protocol conformance descriptor for FormatSwitchNodeCase);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6743340(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatSwitchNodeCase();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D67433C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1;
  type metadata accessor for FormatCodingEmptyArrayStrategy(0, a2, a3, a4);
  swift_getWitnessTable();
  return FormatCodingDefault.init(wrappedValue:)(&v7, a5);
}

uint64_t sub_1D6743460(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6743528(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 0x726F7463656C6573;
  }
}

uint64_t sub_1D6743570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6743460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D67435A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D67435F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatFeedConfigValue.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v19 = a2[3];
  v20 = v4;
  v18 = v5;
  type metadata accessor for FormatFeedConfigValue.CodingKeys(255, v4, v19, v5);
  swift_getWitnessTable();
  v6 = sub_1D726446C();
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - v8;
  v10 = v2[1];
  v21 = *v2;
  v17 = v2[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B5C();
  v24[0] = v21;
  v24[1] = v10;
  v25 = 0;
  sub_1D5D3E60C();
  v11 = v23;
  sub_1D72643BC();
  if (v11)
  {

    return (*(v22 + 8))(v9, v6);
  }

  else
  {
    v13 = v22;

    v24[0] = v17;
    v25 = 1;
    v14 = type metadata accessor for FormatCodingEmptyArrayStrategy(0, v20, v19, v18);

    WitnessTable = swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)(v24, &v25, v6, v14, WitnessTable);

    return (*(v13 + 8))(v9, v6);
  }
}

void FormatFeedConfigValue.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v26 = a5;
  v27 = a4;
  type metadata accessor for FormatFeedConfigValue.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v28 = sub_1D726435C();
  v25 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v9);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B0C();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = a1;
    v12 = a3;
    v14 = v26;
    v13 = v27;
    v15 = v25;
    v30 = 0;
    sub_1D5C36978();
    v16 = v28;
    sub_1D726427C();
    v22 = v29[0];
    v23 = v29[1];
    v30 = 1;
    v17 = type metadata accessor for FormatCodingEmptyArrayStrategy(0, a2, v12, v13);
    WitnessTable = swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)(v17, WitnessTable, v29);
    (*(v15 + 8))(v11, v16);
    v19 = v29[0];
    v20 = v23;
    *v14 = v22;
    v14[1] = v20;
    v14[2] = v19;

    __swift_destroy_boxed_opaque_existential_1(v24);
  }
}

uint64_t sub_1D6743B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1D6743C40()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController____lazy_storage___nextBarButtonItem;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController____lazy_storage___nextBarButtonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController____lazy_storage___nextBarButtonItem];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v18[3] = ObjectType;
    v18[0] = v0;
    v5 = v0;
    v6 = sub_1D726203C();
    if (ObjectType)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v18, ObjectType);
      v8 = *(ObjectType - 8);
      v9 = MEMORY[0x1EEE9AC00](v7, v7);
      v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = sub_1D72646AC();
      (*(v8 + 8))(v11, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      v12 = 0;
    }

    type metadata accessor for DebugFormatBarButtonItem();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = [v13 initWithTitle:v6 style:0 target:v12 action:{sel_doNext, v18[0]}];

    swift_unknownObjectRelease();
    v15 = *&v0[v1];
    *&v0[v1] = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_1D6743E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v3[v7] = v8;
  v9 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_debugFormatService;
  type metadata accessor for DebugFormatService();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v3[v9] = v10;
  v11 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_coverViewManager;
  sub_1D725D7AC();
  swift_allocObject();
  *&v3[v11] = sub_1D725D79C();
  *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_templates] = MEMORY[0x1E69E7CC0];
  v12 = &v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 6) = 0;
  v12[56] = -1;
  v13 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_tableView;
  *&v3[v13] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController____lazy_storage___nextBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_editor] = a1;
  v14 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_editorURL;
  v15 = sub_1D72585BC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v3[v14], a2, v15);
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  (*(v16 + 8))(a2, v15);
  return v17;
}

void sub_1D6744004()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D725FB0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D725FB1C();
  v7 = *(v54 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v54, v8).n128_u64[0];
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55.receiver = v0;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, sel_viewDidLoad, v9);
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = v12;
  v50 = v4;
  v51 = v3;
  v52 = ObjectType;
  v14 = objc_opt_self();
  v15 = [v14 systemBackgroundColor];
  [v13 setBackgroundColor_];

  v16 = [v1 navigationItem];
  v17 = sub_1D726203C();
  [v16 setTitle_];

  v18 = [v1 navigationItem];
  sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D72816C0;
  v20 = sub_1D726203C();
  v21 = [objc_opt_self() systemImageNamed_];

  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for DebugFormatBarButtonItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_allocWithZone(ObjCClassFromMetadata) initWithImage:v21 style:0 target:v1 action:sel_doDismissView];

  *(v19 + 32) = v23;
  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v24 = sub_1D726265C();

  [v18 setRightBarButtonItems_];

  v25 = sub_1D6743C40();
  [v25 setEnabled_];

  v26 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController____lazy_storage___nextBarButtonItem;
  v27 = *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController____lazy_storage___nextBarButtonItem];
  v28 = [v14 systemBlueColor];
  [v27 setTintColor_];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D72816D0;
  v30 = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:5 target:0 action:0];
  v31 = *&v1[v26];
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  v32 = v31;
  v33 = sub_1D726265C();

  [v1 setToolbarItems_];

  v34 = *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_tableView];
  [v34 setDataSource_];
  [v34 setDelegate_];
  [v34 setAlwaysBounceVertical_];
  v35 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v34 setTableFooterView_];

  sub_1D5B5A498(0, &qword_1EC88DCB0, 0x1E69DD028);
  sub_1D7262DAC();
  type metadata accessor for DebugFormatMarkdownHeaderFooterView();
  sub_1D7262D9C();
  v36 = [v1 view];
  if (v36)
  {
    v37 = v36;
    [v36 addSubview_];

    sub_1D725D78C();
    v38 = sub_1D725EC4C();
    v39 = sub_1D725EC3C();
    v40 = MEMORY[0x1E69D8270];
    v11[3] = v38;
    v11[4] = v40;
    *v11 = v39;
    v11[5] = 0x474E4944414F4CLL;
    v11[6] = 0xE700000000000000;
    v41 = v54;
    (*(v7 + 104))(v11, *MEMORY[0x1E69D8820], v54);
    v43 = v50;
    v42 = v51;
    v44 = v53;
    (*(v50 + 104))(v53, *MEMORY[0x1E69D8850], v51);
    sub_1D725D77C();
    (*(v43 + 8))(v44, v42);
    v45 = (*(v7 + 8))(v11, v41);
    MEMORY[0x1EEE9AC00](v45, v46);
    *(&v49 - 2) = v1;
    sub_1D67465AC(0);
    sub_1D725BDCC();
    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    v47 = sub_1D726308C();
    sub_1D725BAAC();

    v48 = sub_1D726308C();
    sub_1D725BADC();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1D6744930()
{
  v1 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v1, v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = &v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate];
  *&v19[9] = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate + 41];
  v7 = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate + 16];
  v18[0] = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate];
  v18[1] = v7;
  *v19 = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate + 32];
  if (v19[24] != 255)
  {
    v8 = *(v6 + 1);
    v15[0] = *v6;
    v15[1] = v8;
    v15[2] = *(v6 + 2);
    v16 = *(v6 + 6);
    v17 = v19[24];
    v9 = *&v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_editor];
    (*(v3 + 16))(v5, &v0[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_editorURL]);
    objc_allocWithZone(type metadata accessor for DebugFormatCreatePackageViewController(0));

    sub_1D6746508(v18, v14);
    sub_1D6821CF0(v9, v5, v15);
    v11 = v10;

    v12 = [v0 navigationController];
    if (v12)
    {
      v13 = v12;
      [v12 pushViewController:v11 animated:1];
    }
  }
}

uint64_t type metadata accessor for DebugFormatSelectPackageViewController(uint64_t a1)
{
  result = qword_1EC88ACF0;
  if (!qword_1EC88ACF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6744CA4(uint64_t a1)
{
  result = sub_1D72585BC();
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

unint64_t sub_1D6744D94(uint64_t a1, uint64_t a2)
{
  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_templates);
  if (result >= *(v5 + 16))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v41 = v2;
  v6 = v5 + (result << 6);
  v38 = a1;
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);
  v9 = *(v6 + 48);
  v10 = *(v6 + 56);
  v11 = *(v6 + 64);
  v12 = *(v6 + 72);
  v13 = *(v6 + 80);
  v14 = *(v6 + 88);
  sub_1D5B5A498(0, &qword_1EC88DCB0, 0x1E69DD028);
  v39 = v8;
  v15 = v8;
  v16 = v9;
  v17 = v7;
  v40 = v11;
  sub_1D6746430(v15, v7, v16, v10, v11, v12, v13, v14);
  v18 = sub_1D7262D8C();
  v19 = [v18 textLabel];
  if (v19)
  {
    v20 = v19;
    [v19 setNumberOfLines_];
  }

  v21 = [v18 textLabel];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() systemFontOfSize_];
    [v22 setFont_];
  }

  v24 = [v18 textLabel];
  if (v24)
  {
    v25 = v24;
    sub_1D5BF4D9C();

    sub_1D7263A0C();
    v26 = sub_1D726203C();

    [v25 setText_];
  }

  [v18 setSelectionStyle_];

  sub_1D674649C(v39, v17, v16, v10, v40, v12, v13, v14);
  v27 = (v41 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate);
  if (*(v41 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate + 56) == 255)
  {
    v29 = 0;
  }

  else if (v39 == *v27 && v17 == v27[1])
  {
    v29 = 1;
  }

  else
  {
    v29 = sub_1D72646CC();
  }

  v30 = [v18 imageView];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1D726203C();

    v33 = [objc_opt_self() systemImageNamed_];

    [v31 setImage_];
  }

  v34 = objc_opt_self();
  v35 = v18;
  v36 = &selRef_systemBlueColor;
  if ((v29 & 1) == 0)
  {
    v36 = &selRef_secondarySystemFillColor;
  }

  v37 = [v34 *v36];
  [v35 setTintColor_];

  return v35;
}

uint64_t sub_1D6745414(uint64_t a1)
{
  v19 = sub_1D72585BC();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v19, v4);
  v5 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v18 - v8;
  v10 = *(a1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_debugFormatService);
  sub_1D725849C();
  v20 = v10;
  v21 = v9;
  v22 = &unk_1F5118690;
  sub_1D725BDCC();
  *(swift_allocObject() + 16) = &unk_1F5118690;
  v11 = sub_1D725B92C();
  sub_1D67465AC(0);
  sub_1D725BA8C();

  v12 = v19;
  (*(v2 + 16))(v5, v9, v19);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 10;
  (*(v2 + 32))(v14 + v13, v5, v12);
  *(v14 + ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = &unk_1F5118690;
  v15 = sub_1D725B92C();
  type metadata accessor for DebugFormatService();
  v16 = sub_1D725BB7C();

  (*(v2 + 8))(v9, v12);
  return v16;
}

uint64_t sub_1D67456D0(void *a1, uint64_t a2)
{
  v29 = sub_1D725FB0C();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725FB1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D72626EC();
  v13 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_templates;
  *(a2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_templates) = v12;

  v14 = *(a2 + v13);
  if (*(v14 + 16))
  {
    v15 = *(v14 + 48);
    v31 = *(v14 + 32);
    v32 = v15;
    *v33 = *(v14 + 64);
    *&v33[9] = *(v14 + 73);
    v28 = v31;
    v27 = v15;
    v26 = *v33;
    v16 = *&v33[16];
    v17 = v33[24];
    sub_1D67462A0(&v31, v30);
    v18 = v26;
    v19 = v27;
    v20 = v28;
  }

  else
  {
    v16 = 0;
    v20 = 0uLL;
    v17 = -1;
    v19 = 0uLL;
    v18 = 0uLL;
  }

  v21 = a2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate;
  v22 = *(a2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate + 16);
  v31 = *(a2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate);
  v32 = v22;
  *v33 = *(a2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate + 32);
  *&v33[9] = *(a2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate + 41);
  *v21 = v20;
  *(v21 + 16) = v19;
  *(v21 + 32) = v18;
  *(v21 + 48) = v16;
  *(v21 + 56) = v17;
  sub_1D67462FC(&v31);
  v23 = sub_1D6743C40();
  [v23 setEnabled_];

  [*(a2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_tableView) reloadData];
  (*(v8 + 104))(v11, *MEMORY[0x1E69D8828], v7);
  v24 = v29;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D8848], v29);
  sub_1D725D77C();
  (*(v3 + 8))(v6, v24);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6745A00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D6745A0C(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = sub_1D725FB0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725FB1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(a1, 0, 0, 0xD000000000000019, 0x80000001D73D34C0);
  v18 = *(v18 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_coverViewManager);
  *v12 = 0xD000000000000019;
  v12[1] = 0x80000001D73D34C0;
  v13 = sub_1D725CB3C();
  v14 = MEMORY[0x1E69D75D0];
  v12[5] = v13;
  v12[6] = v14;
  __swift_allocate_boxed_opaque_existential_1(v12 + 2);
  sub_1D725CB1C();
  swift_getErrorValue();
  v12[7] = sub_1D726497C();
  v12[8] = v15;
  (*(v9 + 104))(v12, *MEMORY[0x1E69D8838], v8);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D8848], v3);
  sub_1D725D77C();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

double sub_1D6745CA8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  type metadata accessor for FormatJSONDecoder(0);
  swift_allocObject();

  sub_1D5B7BACC(v8);
  sub_1D6746614();
  sub_1D725A69C();

  if (!v3)
  {
    *a3 = v10;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = a2;

    return sub_1D5E3E824(v6, v7);
  }

  return result;
}

void sub_1D6745D74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_debugFormatService;
  type metadata accessor for DebugFormatService();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v1 + v4) = v5;
  v6 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_coverViewManager;
  sub_1D725D7AC();
  swift_allocObject();
  *(v1 + v6) = sub_1D725D79C();
  *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_templates) = MEMORY[0x1E69E7CC0];
  v7 = v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  *(v7 + 56) = -1;
  v8 = OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_tableView;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController____lazy_storage___nextBarButtonItem) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6745EC8()
{
  sub_1D674637C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72580BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22[-1] - v12;
  v14 = v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate + 56) == 255)
  {
    return 0;
  }

  v16 = *(v14 + 32);
  v15 = *(v14 + 40);
  sub_1D5B68374(*(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_editor) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_sourceTheme, v22);

  sub_1D6DBB128(v16, v15, v22, v4, 13.0);
  (*(v6 + 56))(v4, 0, 1, v5);
  (*(v6 + 32))(v13, v4, v5);
  type metadata accessor for DebugFormatMarkdownHeaderFooterView();
  v17 = sub_1D7262D7C();
  v18 = *(v17 + OBJC_IVAR____TtC8NewsFeed35DebugFormatMarkdownHeaderFooterView_label);
  sub_1D5B5A498(0, &qword_1EDF3C730, 0x1E696AAB0);
  (*(v6 + 16))(v9, v13, v5);
  v19 = sub_1D726310C();
  [v18 setAttributedText_];

  (*(v6 + 8))(v13, v5);
  return v17;
}

unint64_t sub_1D674617C(uint64_t a1)
{
  v2 = v1;
  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_templates);
    if (result < *(v4 + 16))
    {
      v5 = (v4 + (result << 6));
      v6 = v5[2];
      v7 = v5[3];
      v8 = v5[4];
      *&v18[9] = *(v5 + 73);
      v17[1] = v7;
      *v18 = v8;
      v17[0] = v6;
      v9 = v5[3];
      v19 = v5[2];
      v20 = v9;
      v21[0] = v5[4];
      *(v21 + 9) = *(v5 + 73);
      v10 = v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate;
      v11 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate + 16);
      v22[0] = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate);
      v22[1] = v11;
      v23[0] = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate + 32);
      *(v23 + 9) = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_selectedTemplate + 41);
      v12 = v19;
      v13 = v20;
      v14 = v21[0];
      *(v10 + 41) = *(v21 + 9);
      *(v10 + 16) = v13;
      *(v10 + 32) = v14;
      *v10 = v12;
      sub_1D67462A0(v17, &v16);
      sub_1D67462FC(v22);
      v15 = sub_1D6743C40();
      [v15 setEnabled_];

      return [*(v2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_tableView) reloadData];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D67462FC(uint64_t a1)
{
  sub_1D5B49E48(0, &qword_1EC88ADC0, &type metadata for DebugFormatTemplateFile, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D674637C(uint64_t a1)
{
  if (!qword_1EC87FF50)
  {
    sub_1D72580BC();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC87FF50);
    }
  }
}

uint64_t sub_1D67463D4(uint64_t a1)
{
  sub_1D674637C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6746430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 <= 2u)
  {
  }

  return result;
}

double sub_1D674649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1D6746508(uint64_t a1, uint64_t a2)
{
  sub_1D5B49E48(0, &qword_1EC88ADC0, &type metadata for DebugFormatTemplateFile, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D67465AC(uint64_t a1)
{
  if (!qword_1EC88ADC8)
  {
    v2 = sub_1D6746614();
    v3 = sub_1D6746668();
    v4 = type metadata accessor for DebugFormatServiceResult(a1, &type metadata for DebugFormatTemplatesFetchResult, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EC88ADC8);
    }
  }
}

unint64_t sub_1D6746614()
{
  result = qword_1EC88ADD0;
  if (!qword_1EC88ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88ADD0);
  }

  return result;
}

unint64_t sub_1D6746668()
{
  result = qword_1EC88ADD8;
  if (!qword_1EC88ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88ADD8);
  }

  return result;
}

uint64_t sub_1D67466F8(void *a1, uint64_t a2)
{
  v5 = *(sub_1D72585BC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_1D6D463C0(a1, a2, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1D67467A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 != 0xFF)
  {
    return sub_1D674649C(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatActivityItemsDataOSg(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 8) >> 1) & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x75)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D67467E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D6746828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Array<A>.webArchives.getter(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = v1 + 48 * v2;
  while (1)
  {
    if (v3 == v2)
    {
      return v4;
    }

    if (v2 >= v3)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 72);
    ++v2;
    v5 += 48;
    if (v7 == 17)
    {
      v9 = *(v5 - 16);
      v8 = *(v5 - 8);
      v11 = *v5;
      v10 = *(v5 + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D698C360(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1D698C360((v12 > 1), v13 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v13 + 1;
      v14 = (v4 + 32 * v13);
      v14[4] = v9;
      v14[5] = v8;
      v14[6] = v11;
      v14[7] = v10;
      v2 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t Array<A>.resources.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result - 16;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v3 + 48 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 88);
    ++v1;
    v5 += 6;
    if (v7 == 18)
    {
      v9 = *v5;
      v8 = v5[1];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D698C484(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1D698C484((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t Array<A>.tags.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 3)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.tagFeeds.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 4)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.articles.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (!v8)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.recipes.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 8)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.recipeLists.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result - 16;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v3 + 48 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 88);
    ++v1;
    v5 += 6;
    if (v7 == 9)
    {
      v9 = *v5;
      v8 = v5[1];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D698C88C(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1D698C88C((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t Array<A>.articleLists.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 1)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.issues.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 2)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.hasWebEmbedDataSource.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = (a1 + 72); ; i += 48)
  {
    if (*i == 19)
    {
      v3 = vorrq_s8(*(i - 40), *(i - 24));
      if (!(*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | *(i - 1)))
      {
        break;
      }
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Array<A>.scores.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 10)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.standings.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 11)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.brackets.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 12)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.boxScores.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 13)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.lineScores.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 14)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.injuryReports.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 15)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.keyPlayers.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 16)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.puzzles.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 5)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.puzzleTypes.getter(uint64_t a1)
{
  v2 = 0;
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  v5 = a1 - 16;
LABEL_2:
  v6 = v5 + 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v8 = *(v6 + 88);
    ++v2;
    v6 += 48;
    if (v8 == 6)
    {

      MEMORY[0x1DA6F9CE0](v9);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v10;
      v2 = v7;
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Array<A>.puzzleStatistics.getter(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = v1 + 48 * v2;
  while (1)
  {
    if (v3 == v2)
    {
      return v4;
    }

    if (v2 >= v3)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 72);
    ++v2;
    v5 += 48;
    if (v7 == 7)
    {
      v8 = *(v5 - 16);
      v15 = *(v5 - 8);
      v9 = *v5;
      v10 = *(v5 + 8);
      v11 = *(v5 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D698C624(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1D698C624((v12 > 1), v13 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v13 + 1;
      v14 = (v4 + 40 * v13);
      v14[4] = v8;
      v14[5] = v15;
      v14[6] = v9;
      v14[7] = v10;
      v14[8] = v11;
      v2 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t FormatContentRequirement.sidecarDedupeIdentifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  result = 0;
  switch(*(v0 + 40))
  {
    case 1:
      v4 = 0x4C656C6369747261;
      v8 = 0xED00003A3A747369;
      goto LABEL_22;
    case 2:
      v4 = 0x3A3A6575737369;
      v8 = 0xE700000000000000;
      goto LABEL_22;
    case 3:
      v4 = 0x3A3A676174;
      v8 = 0xE500000000000000;
      goto LABEL_22;
    case 4:
      v4 = 0x3A64656546676174;
      goto LABEL_8;
    case 5:
      v5 = 0x656C7A7A7570;
      goto LABEL_14;
    case 6:
      v4 = 0x7954656C7A7A7570;
      v8 = 0xEC0000003A3A6570;
      goto LABEL_22;
    case 7:
      v9 = *(v0 + 16);
      sub_1D7263D4C();

      v12[0] = 0xD000000000000011;
      v12[1] = 0x80000001D73D3520;
      v10 = v1[2];
      v11 = v1[3];

      MEMORY[0x1DA6F9910](v2, v9);
      MEMORY[0x1DA6F9910](v10, v11);

      return v12[0];
    case 8:
      v5 = 0x657069636572;
LABEL_14:
      v4 = v5 & 0xFFFFFFFFFFFFLL | 0x3A3A000000000000;
      v8 = 0xE800000000000000;
      goto LABEL_22;
    case 9:
      strcpy(v12, "recipeList::");
      BYTE5(v12[1]) = 0;
      HIWORD(v12[1]) = -5120;
      v6 = v1;
      v7 = v2;
      goto LABEL_23;
    case 0xA:
      strcpy(v12, "score::");
      v12[1] = 0xE700000000000000;
      v6 = v1[4];
      v7 = v1[5];
      goto LABEL_23;
    case 0xB:
      v4 = 0x676E69646E617473;
      goto LABEL_21;
    case 0xC:
      v4 = 0x3A74656B63617262;
      goto LABEL_8;
    case 0xD:
      v4 = 0x65726F6353786F62;
LABEL_21:
      v8 = 0xEA00000000003A3ALL;
      goto LABEL_22;
    case 0xE:
      v4 = 0x726F6353656E696CLL;
      v8 = 0xEB000000003A3A65;
      goto LABEL_22;
    case 0xF:
      v12[0] = 0;
      v12[1] = 0xE000000000000000;
      sub_1D7263D4C();

      v4 = 0x65527972756A6E69;
      v8 = 0xEE003A3A74726F70;
      goto LABEL_22;
    case 0x10:
      v4 = 0x6579616C5079656BLL;
      v8 = 0xEB000000003A3A72;
      goto LABEL_22;
    case 0x11:
    case 0x12:
    case 0x13:
      return result;
    default:
      v4 = 0x3A656C6369747261;
LABEL_8:
      v8 = 0xE90000000000003ALL;
LABEL_22:
      v12[0] = v4;
      v12[1] = v8;
      v6 = v1[2];
      v7 = v1[3];
LABEL_23:
      MEMORY[0x1DA6F9910](v6, v7);
      return v12[0];
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed24FormatContentRequirementO(uint64_t a1)
{
  if ((*(a1 + 40) & 0x1Fu) <= 0x12)
  {
    return *(a1 + 40) & 0x1F;
  }

  else
  {
    return (*a1 + 19);
  }
}

uint64_t sub_1D6747EF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xED && *(a1 + 41))
  {
    return (*a1 + 237);
  }

  v3 = *(a1 + 40);
  if (v3 <= 0x13)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6747F38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 237;
    if (a3 >= 0xED)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xED)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6747F88(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x13)
  {
    *result = a2 - 19;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 19;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HMultiLayoutItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 385))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 384);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HMultiLayoutItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 384) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 385) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 385) = 0;
    }

    if (a2)
    {
      *(result + 384) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B5IssueVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6748108(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 393))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 392);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6748144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 352) = 0u;
    *(result + 368) = 0u;
    *(result + 320) = 0u;
    *(result + 336) = 0u;
    *(result + 288) = 0u;
    *(result + 304) = 0u;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 377) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 393) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 393) = 0;
    }

    if (a2)
    {
      *(result + 392) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D67481C0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 384) = 0;
    *(result + 352) = 0u;
    *(result + 368) = 0u;
    *(result + 320) = 0u;
    *(result + 336) = 0u;
    *(result + 288) = 0u;
    *(result + 304) = 0u;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
  }

  *(result + 392) = a2;
  return result;
}

uint64_t sub_1D6748224(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6575737369;
  if (v2 != 1)
  {
    v4 = 0x6C656E6E616863;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6575737369;
  if (*a2 != 1)
  {
    v8 = 0x6C656E6E616863;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6748318()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D67483B0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6748434(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D67484C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6749520(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D67484F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6575737369;
  if (v2 != 1)
  {
    v5 = 0x6C656E6E616863;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D674854C()
{
  v1 = 0x6575737369;
  if (*v0 != 1)
  {
    v1 = 0x6C656E6E616863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t sub_1D674859C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6749520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D67485C4(uint64_t a1)
{
  v2 = sub_1D6749184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6748600(uint64_t a1)
{
  v2 = sub_1D6749184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D674863C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C656E6E616863;
  }

  else
  {
    v3 = 0x6575737369;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C656E6E616863;
  }

  else
  {
    v5 = 0x6575737369;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D67486E0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6748760(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D67487CC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6748848(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D67488A8(uint64_t *a1@<X8>)
{
  v2 = 0x6575737369;
  if (*v1)
  {
    v2 = 0x6C656E6E616863;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_1D6748994@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v5, 0x181uLL);
  if (sub_1D67480B8(__dst) == 1)
  {
    nullsub_1();
    sub_1D60F9A5C();
    sub_1D725A24C();
    *&__src[128] = v9[8];
    *&__src[144] = v9[9];
    *&__src[160] = v9[10];
    *&__src[176] = v9[11];
    *&__src[64] = v9[4];
    *&__src[80] = v9[5];
    *&__src[96] = v9[6];
    *&__src[112] = v9[7];
    *__src = v9[0];
    *&__src[16] = v9[1];
    *&__src[32] = v9[2];
    *&__src[48] = v9[3];
    sub_1D6749280(__src);
  }

  else
  {
    nullsub_1();
    memcpy(__src, v7, 0x180uLL);
    sub_1D5EF958C();
    sub_1D725A24C();
    memcpy(__src, v9, 0x180uLL);
    sub_1D674928C(__src);
  }

  return memcpy(a1, __src, 0x181uLL);
}

uint64_t sub_1D6748B10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  sub_1D6749294(0, &qword_1EC88ADF8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6749184();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v15;
    v20 = 0;
    sub_1D67491D8();
    sub_1D726431C();
    v11 = (v6 + 8);
    if (v21)
    {
      v19 = 2;
      sub_1D674922C();
      sub_1D726431C();
      v12 = v10;
      (*v11)(v9, v5);
      v17[8] = v16[8];
      v17[9] = v16[9];
      v17[10] = v16[10];
      v17[11] = v16[11];
      v17[4] = v16[4];
      v17[5] = v16[5];
      v17[6] = v16[6];
      v17[7] = v16[7];
      v17[0] = v16[0];
      v17[1] = v16[1];
      v17[2] = v16[2];
      v17[3] = v16[3];
      sub_1D6749280(v17);
    }

    else
    {
      v19 = 1;
      sub_1D5EF9D40();
      sub_1D726431C();
      v12 = v10;
      (*v11)(v9, v5);
      memcpy(v17, v16, 0x180uLL);
      sub_1D674928C(v17);
    }

    memcpy(v18, v17, sizeof(v18));
    memcpy(v12, v18, 0x181uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6748DD4(void *a1)
{
  v3 = v1;
  sub_1D6749294(0, &qword_1EC88AE18, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6749184();
  sub_1D7264B5C();
  memcpy(v26, v3, 0x181uLL);
  if (sub_1D67480B8(v26) == 1)
  {
    nullsub_1();
    v12 = v11;
    LOBYTE(v25[0]) = 1;
    v27 = 0;
    sub_1D67492F8();
    sub_1D726443C();
    if (!v2)
    {
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[3];
      v25[2] = v12[2];
      v25[3] = v15;
      v25[0] = v13;
      v25[1] = v14;
      v16 = v12[4];
      v17 = v12[5];
      v18 = v12[7];
      v25[6] = v12[6];
      v25[7] = v18;
      v25[4] = v16;
      v25[5] = v17;
      v19 = v12[8];
      v20 = v12[9];
      v21 = v12[11];
      v25[10] = v12[10];
      v25[11] = v21;
      v25[8] = v19;
      v25[9] = v20;
      v27 = 2;
      sub_1D674934C();
LABEL_6:
      sub_1D726443C();
    }
  }

  else
  {
    nullsub_1();
    v23 = v22;
    LOBYTE(v25[0]) = 0;
    v27 = 0;
    sub_1D67492F8();
    sub_1D726443C();
    if (!v2)
    {
      memcpy(v25, v23, sizeof(v25));
      v27 = 1;
      sub_1D5EF9E8C();
      goto LABEL_6;
    }
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6749080()
{
  result = qword_1EC88ADE0;
  if (!qword_1EC88ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88ADE0);
  }

  return result;
}

unint64_t sub_1D67490D8()
{
  result = qword_1EC88ADE8;
  if (!qword_1EC88ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88ADE8);
  }

  return result;
}

unint64_t sub_1D6749130()
{
  result = qword_1EC88ADF0;
  if (!qword_1EC88ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88ADF0);
  }

  return result;
}

unint64_t sub_1D6749184()
{
  result = qword_1EC88AE00;
  if (!qword_1EC88AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE00);
  }

  return result;
}

unint64_t sub_1D67491D8()
{
  result = qword_1EC88AE08;
  if (!qword_1EC88AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE08);
  }

  return result;
}

unint64_t sub_1D674922C()
{
  result = qword_1EC88AE10;
  if (!qword_1EC88AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE10);
  }

  return result;
}

void sub_1D6749294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6749184();
    v7 = a3(a1, &type metadata for HMultiLayoutItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D67492F8()
{
  result = qword_1EC88AE20;
  if (!qword_1EC88AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE20);
  }

  return result;
}

unint64_t sub_1D674934C()
{
  result = qword_1EC88AE28;
  if (!qword_1EC88AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE28);
  }

  return result;
}

unint64_t sub_1D67493C4()
{
  result = qword_1EC88AE30;
  if (!qword_1EC88AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE30);
  }

  return result;
}

unint64_t sub_1D674941C()
{
  result = qword_1EC88AE38;
  if (!qword_1EC88AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE38);
  }

  return result;
}

unint64_t sub_1D6749474()
{
  result = qword_1EC88AE40;
  if (!qword_1EC88AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE40);
  }

  return result;
}

unint64_t sub_1D67494CC()
{
  result = qword_1EC88AE48;
  if (!qword_1EC88AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE48);
  }

  return result;
}

unint64_t sub_1D6749520(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D674956C()
{
  result = qword_1EC88AE50;
  if (!qword_1EC88AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE50);
  }

  return result;
}

unint64_t sub_1D67495EC()
{
  result = qword_1EC88AE58;
  if (!qword_1EC88AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE58);
  }

  return result;
}

unint64_t sub_1D6749644()
{
  result = qword_1EC8902A0;
  if (!qword_1EC8902A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8902A0);
  }

  return result;
}

void sub_1D67496AC(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

unint64_t sub_1D67496C8()
{
  result = qword_1EC88AE60;
  if (!qword_1EC88AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE60);
  }

  return result;
}

void GapOfflineViewRenderer.render(for:with:in:)(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel);
  [v4 setFrame_];
  v5 = *(a1 + 112);
  v6 = __swift_project_boxed_opaque_existential_1((a1 + 88), v5);
  v9[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  v8 = sub_1D5BF9C38(v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  [v4 setAttributedText_];
}

void sub_1D6749810(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel);
  [v4 setFrame_];
  v5 = *(a1 + 112);
  v6 = __swift_project_boxed_opaque_existential_1((a1 + 88), v5);
  v9[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  v8 = sub_1D5BF9C38(v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  [v4 setAttributedText_];
}

void PuzzleColorTheme.init(puzzleType:)(void *a1@<X0>, NSObject **a2@<X8>)
{
  v4 = [a1 puzzlePrimaryColor];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 ne_color];

    v7 = [a1 darkStylePuzzlePrimaryColor];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 ne_color];
      swift_unknownObjectRelease();

      *a2 = v6;
      a2[1] = v9;
      return;
    }

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v13 = sub_1D725C42C();
    __swift_project_value_buffer(v13, qword_1EDFFCFA8);
    v14 = sub_1D725C3FC();
    v15 = sub_1D7262EBC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D5B42000, v14, v15, "PuzzleColorTheme: invalid darkStylePrimaryColor", v16, 2u);
      MEMORY[0x1DA6FD500](v16, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v10 = sub_1D725C42C();
    __swift_project_value_buffer(v10, qword_1EDFFCFA8);
    v6 = sub_1D725C3FC();
    v11 = sub_1D7262EBC();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D5B42000, v6, v11, "PuzzleColorTheme: invalid puzzlePrimaryColor", v12, 2u);
      MEMORY[0x1DA6FD500](v12, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t FormatArrangementComponentSubgroup.slots.getter()
{
  sub_1D674AAE4();
}

uint64_t FormatArrangementComponentSubgroup.properties.getter()
{
  sub_1D5B8EF68();
}

uint64_t FormatArrangementComponentSubgroup.selectors.getter()
{
  sub_1D5B8EF70();
}

uint64_t FormatArrangementComponentSubgroup.identifier.getter()
{
  v0 = sub_1D5F90834();

  return v0;
}

uint64_t sub_1D6749CFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = type metadata accessor for FormatArrangementComponentSubgroup(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  *a4 = a3(v6);
}

uint64_t static FormatArrangementComponentSubgroup.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  if (v12 || (sub_1D72646CC()) && (sub_1D6339F3C(v6, v10) & 1) != 0 && (sub_1D5BFC390(v8, v9))
  {
    v22 = v11;
    v23 = v7;
    v14 = type metadata accessor for FormatArrangementComponentSubgroupSlot(255, a3, a4, v13);

    WitnessTable = swift_getWitnessTable();
    v16 = swift_getWitnessTable();
    v17 = type metadata accessor for FormatCodingEmptyArrayStrategy(0, v14, WitnessTable, v16);
    v18 = swift_getWitnessTable();
    sub_1D72627FC();
    swift_getWitnessTable();
    v19 = swift_getWitnessTable();
    v20 = static FormatCodingDefault<>.== infix(_:_:)(&v23, &v22, v17, v18, v19);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1D6749FAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746F6C73 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D674A120(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x726F7463656C6573;
  if (a1 != 2)
  {
    v2 = 0x73746F6C73;
  }

  if (a1)
  {
    v1 = 0x69747265706F7270;
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

uint64_t sub_1D674A1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6749FAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D674A1DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D674A230(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatArrangementComponentSubgroup.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  v38 = *(a2 + 16);
  v34 = v6;
  type metadata accessor for FormatArrangementComponentSubgroup.CodingKeys(255, v38, v6, a4);
  swift_getWitnessTable();
  v7 = sub_1D726446C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v33 - v10;
  v12 = *v4;
  v39 = v4[1];
  v40 = v12;
  v13 = v4[2];
  v36 = v4[3];
  v37 = v13;
  v35 = v4[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v7;
  sub_1D7264B5C();
  LOBYTE(v43) = 0;
  v15 = v41;
  sub_1D72643FC();
  if (v15)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v18 = v35;
  v17 = v36;
  v19 = v38;
  v20 = v8;
  v43 = v37;
  v42 = 1;
  sub_1D674AB04(0);
  v22 = v21;
  v23 = sub_1D674AB6C(&qword_1EDF20940, sub_1D674AB04, &protocol conformance descriptor for FormatCodingEmptyArrayStrategy<A>);

  KeyedEncodingContainer.encode<A>(_:forKey:)(&v43, &v42, v14, v22, v23);

  v43 = v17;
  v42 = 2;
  sub_1D5B55A8C();
  v25 = v24;
  v26 = sub_1D674AB6C(&qword_1EDF21B00, sub_1D5B55A8C, &protocol conformance descriptor for FormatCodingEmptySetStrategy<A>);

  KeyedEncodingContainer.encode<A>(_:forKey:)(&v43, &v42, v14, v25, v26);

  v43 = v18;
  v42 = 3;
  v28 = type metadata accessor for FormatArrangementComponentSubgroupSlot(255, v19, v34, v27);

  WitnessTable = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v31 = type metadata accessor for FormatCodingEmptyArrayStrategy(0, v28, WitnessTable, v30);
  v32 = swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v43, &v42, v14, v31, v32);

  return (*(v20 + 8))(v11, v14);
}
void sub_1D630D878(_BYTE *a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v40 = sub_1D725A36C();
  v3 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for A18_V17.Bound(0);
  v8 = v1 + *(v7 + 24);
  v9 = type metadata accessor for GroupLayoutContext(0);
  v10 = *(v8 + *(v9 + 40));
  v11 = *(v10 + 16);
  v12 = *(v8 + *(v9 + 32));
  sub_1D5B68374(v11 + 16, v51);
  sub_1D5B68374(v11 + 56, v50);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v51, inited + 16);
  sub_1D5B63F14(v50, inited + 56);
  *(inited + 96) = v13;
  v49[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v49, v52);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  __swift_destroy_boxed_opaque_existential_1((inited + 56));
  sub_1D5B49474(0, &qword_1EDF27C08, &protocol descriptor for HeadlineViewStylerType);
  v15 = sub_1D726276C();
  *(v15 + 16) = 3;
  sub_1D5B68374(v52, v15 + 32);
  sub_1D5B68374(v52, v15 + 72);
  sub_1D5B63F14(v52, v15 + 112);
  v16 = *(v10 + 16);
  sub_1D5B68374(v16 + 16, v51);
  sub_1D5B68374(v16 + 56, v50);
  v17 = v12 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v51, v18 + 16);
  sub_1D5B63F14(v50, v18 + 56);
  *(v18 + 96) = v17;
  v49[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v49, v52);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v52, *(*(v2 + *(v7 + 28)) + 16) - 2);
  *&v52[0] = v15;
  sub_1D698609C(v19);
  v20 = *&v52[0];
  v41 = v2;
  v48[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6310820, v48);

  v23 = *(v22 + 16);
  if (v23 >= 3)
  {
    v24 = 3;
  }

  else
  {
    v24 = *(v22 + 16);
  }

  v25 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
  v26 = v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v27 = (2 * v23) | 1;
  v28 = *MEMORY[0x1E69D7130];
  v29 = sub_1D7259D1C();
  (*(*(v29 - 8) + 104))(v6, v28, v29);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v40);
  v43 = v22;
  v44 = v22;
  v45 = v26;
  v46 = v24;
  v47 = v27;
  sub_1D6310EF4(0, &qword_1EC885A08, MEMORY[0x1E69D73B8]);
  swift_allocObject();

  v40 = sub_1D725A4CC();
  sub_1D725A4DC();
  v30 = v53;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5BD48FC();
  v31 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v38 = v52[1];
  v39 = v52[0];
  *&v52[0] = v22;
  *&v51[0] = v30;
  MEMORY[0x1EEE9AC00](v31, v32);

  v33 = sub_1D725C00C();

  v34 = v42;
  *v42 = 0;
  v35 = v39;
  *(v34 + 24) = v38;
  *(v34 + 8) = v35;
  *&v52[0] = v33;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v36 = sub_1D72623BC();

  v37 = MEMORY[0x1E69E7CC0];
  *(v34 + 5) = v36;
  *(v34 + 6) = v37;
}

uint64_t sub_1D630DE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D630DF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21[-v16];
  v27 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 18;
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7490], v13);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v19 = MEMORY[0x1E69D7150];
  sub_1D6310EF4(0, &qword_1EC885A28, MEMORY[0x1E69D7150]);
  sub_1D6310EB0(&qword_1EC885A30, &qword_1EC885A28, v19, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1D630E150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v65 = a5;
  v64 = a4;
  v63 = a3;
  v76 = a2;
  v62 = sub_1D6310DD0;
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (v51 - v11);
  v83 = a1;
  v13 = sub_1D725994C();
  v71 = v13;
  v14 = swift_allocBox();
  v74 = *MEMORY[0x1E69D6F50];
  v15 = *(v13 - 8);
  v73 = *(v15 + 104);
  v75 = v15 + 104;
  v73(v16);
  *v12 = v14;
  v72 = *MEMORY[0x1E69D73C0];
  v70 = *(v9 + 104);
  v70(v12);
  v69 = v9 + 104;
  v17 = MEMORY[0x1E69D6F38];
  sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
  v67 = v18;
  v19 = sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v17, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v20 = *(v9 + 8);
  v68 = v9 + 8;
  v20(v12, v8);
  v21 = v20;
  v83 = a1;
  sub_1D5C14C4C(0, &qword_1EDF1AC88, MEMORY[0x1E69D7358]);
  v23 = v22;
  v24 = swift_allocBox();
  v26 = v25;
  v27 = *(v23 + 48);
  *v25 = 11;
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v12 = v24;
  v30 = v70;
  (v70)(v12, *MEMORY[0x1E69D73E0], v8);
  v82 = v76;
  v31 = v19;
  sub_1D72599EC();
  v53 = v21;
  v21(v12, v8);
  v32 = a1;
  v83 = a1;
  v33 = v71;
  v34 = swift_allocBox();
  (v73)(v35, v74, v33);
  *v12 = v34;
  (v30)(v12, v72, v8);
  v51[1] = v31;
  sub_1D7259A9C();
  v21(v12, v8);
  v83 = v32;
  v61 = *MEMORY[0x1E69D74A8];
  v30(v12);
  sub_1D6310F80(0);
  v60 = v36;
  sub_1D6311538(0, &qword_1EC885A50, v62, &type metadata for A18_V17.Layout, MEMORY[0x1E69D70D8]);
  v56 = v37;
  v38 = *(v37 - 8);
  v62 = *(v38 + 72);
  v59 = *(v38 + 80);
  v39 = v38;
  v40 = (v59 + 32) & ~v59;
  v52 = v40;
  v41 = swift_allocObject();
  v58 = xmmword_1D7273AE0;
  *(v41 + 16) = xmmword_1D7273AE0;
  v54 = *MEMORY[0x1E69D7098];
  v42 = *(v39 + 104);
  v55 = v39 + 104;
  v57 = v42;
  v42(v41 + v40);
  v81 = v76;
  sub_1D72599EC();

  v43 = v53;
  v53(v12, v8);
  v83 = v32;
  v44 = v71;
  v45 = swift_allocBox();
  (v73)(v46, v74, v44);
  *v12 = v45;
  v47 = v70;
  (v70)(v12, v72, v8);
  sub_1D7259A9C();
  v43(v12, v8);
  v83 = v32;
  (v47)(v12, v61, v8);
  v48 = v52;
  v49 = swift_allocObject();
  *(v49 + 16) = v58;
  v57(v49 + v48, v54, v56);
  v77 = v63;
  v78 = v64;
  v79 = v65;
  v80 = v66;
  sub_1D72599EC();

  return (v43)(v12, v8);
}

uint64_t sub_1D630E910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadlineViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v27 - v17;
  v27[1] = a1;
  swift_getKeyPath();
  result = (*(v15 + 104))(v18, *MEMORY[0x1E69D74A8], v14);
  if (*(a2 + 16))
  {
    sub_1D5BE3ED8(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for HeadlineViewLayout.Context);
    v27[0] = v14;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v23 + 56))(&v7[v20], 0, 1, v22);
    v24 = *MEMORY[0x1E69DDC70];
    *v7 = 1;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v24;
    v25 = v24;
    sub_1D61F750C(v12, v7);
    sub_1D5BE79EC(v7, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE79EC(v12, type metadata accessor for HeadlineViewLayout.Context);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
    sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v26, MEMORY[0x1E69D6F40]);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v15 + 8))(v18, v27[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D630ECEC(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 9;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
  sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 9;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D630EF90(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + *(v15 + 72) + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE79EC(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE79EC(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
  sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v36, MEMORY[0x1E69D6F40]);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D630F56C(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + 2 * *(v15 + 72), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE79EC(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE79EC(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
  sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v36, MEMORY[0x1E69D6F40]);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

void sub_1D630FB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v39 = a3;
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v30 - v13);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = a5 >> 1;
  v20 = __OFSUB__(a5 >> 1, a4);
  v21 = (a5 >> 1) - a4;
  if (v20)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v21 != 3)
  {
    return;
  }

  if (v19 <= a4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v22 = *(v17 + 72);
  v35 = *MEMORY[0x1E69D7490];
  v33 = (v11 + 8);
  v34 = (v11 + 104);
  v36 = v22;
  v37 = a2;
  v23 = v39 + v22 * a4;
  v31 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v38 = v10;
  v24 = v31;
  do
  {
    sub_1D5BE3ED8(v23, v24, type metadata accessor for HeadlineViewLayout.Context);
    v41 = a1;
    v25 = swift_allocObject();
    *(v25 + 16) = 6;
    *v14 = v25;
    v26 = (*v34)(v14, v35, v10);
    v40 = &v30;
    MEMORY[0x1EEE9AC00](v26, v27);
    *(&v30 - 6) = v24;
    *(&v30 - 5) = a2;
    *(&v30 - 4) = v39;
    *(&v30 - 3) = a4;
    v28 = MEMORY[0x1E69D6F38];
    sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
    v29 = sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v28, MEMORY[0x1E69D6F40]);
    a1 = v32;
    a2 = v37;
    v10 = v38;
    sub_1D7259A2C();
    (*v33)(v14, v10);
    sub_1D5BE79EC(v24, type metadata accessor for HeadlineViewLayout.Context);
    v23 += v36;
    --v21;
  }

  while (v21);
}

uint64_t sub_1D630FEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v57 = a2;
  v62 = a1;
  v58 = sub_1D725A36C();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v9);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D725A19C();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v11);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeadlineViewLayout.Context(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v51, v18);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6311538(0, &qword_1EC885A20, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D74B0]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v50 - v25;
  v63 = v62;
  KeyPath = swift_getKeyPath();
  v27 = *MEMORY[0x1E69D7460];
  v55 = v23;
  v28 = *(v23 + 104);
  v53 = v26;
  v62 = v22;
  v28(v26, v27, v22);
  if (a5 <= (a6 >> 1))
  {
    v29 = a6 >> 1;
  }

  else
  {
    v29 = a5;
  }

  while (a6 >> 1 != a5)
  {
    if (v29 == a5)
    {
      __break(1u);
      goto LABEL_12;
    }

    sub_1D5BE3ED8(a4 + *(v14 + 72) * a5++, v17, type metadata accessor for HeadlineViewLayout.Context);
    v30 = *&v17[*(v13 + 20) + 32];
    sub_1D5BE79EC(v17, type metadata accessor for HeadlineViewLayout.Context);
    if ((v30 & 4) == 0)
    {
      v31 = 2;
      goto LABEL_9;
    }
  }

  v31 = 0;
LABEL_9:
  v32 = v51;
  v33 = *(v51 + 20);
  v34 = *MEMORY[0x1E69D7348];
  v35 = sub_1D725A34C();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v20 + v33, v34, v35);
  (*(v36 + 56))(v20 + v33, 0, 1, v35);
  v37 = MEMORY[0x1E69DDC70];
  *v20 = v31;
  *(v20 + *(v32 + 24)) = 0;
  v38 = *v37;
  *(v20 + *(v32 + 28)) = v38;
  v39 = qword_1EDF386E8;
  v40 = v38;
  if (v39 == -1)
  {
    goto LABEL_10;
  }

LABEL_12:
  swift_once();
LABEL_10:

  v41 = v54;
  sub_1D725972C();

  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v45 = v56;
  *(&v50 - 4) = v57;
  *(&v50 - 3) = v20;
  v49 = v41;
  (*(v45 + 104))(v60, *MEMORY[0x1E69D7378], v58, v44);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v59 + 8))(v41, v61);
  sub_1D5BE79EC(v20, type metadata accessor for HeadlineViewLayout.Options);
  v46 = MEMORY[0x1E69D6F38];
  sub_1D6310EF4(0, &qword_1EC885A38, MEMORY[0x1E69D6F38]);
  sub_1D6310EB0(&qword_1EC885A40, &qword_1EC885A38, v46, MEMORY[0x1E69D6F40]);
  v49 = sub_1D5BE8850();
  v47 = v53;
  sub_1D7259A4C();

  return (*(v55 + 8))(v47, v62);
}

uint64_t sub_1D63104F0@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V17.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6310604(uint64_t a1)
{
  *(a1 + 8) = sub_1D6310634();
  result = sub_1D6310688();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6310634()
{
  result = qword_1EC8859D8;
  if (!qword_1EC8859D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859D8);
  }

  return result;
}

unint64_t sub_1D6310688()
{
  result = qword_1EC8859E0;
  if (!qword_1EC8859E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8859E0);
  }

  return result;
}

void sub_1D63106DC(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  sub_1D5C14C4C(0, &qword_1EDF1AC80, type metadata accessor for FeedHeadline);
  sub_1D614C5B4(v6, a1 + *(v7 + 48), *a2, (a2 + *(v7 + 48)));
  *a3 = v8 & 1;
}

uint64_t type metadata accessor for A18_V17.Bound(uint64_t a1)
{
  result = qword_1EC8859F0;
  if (!qword_1EC8859F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D63107C8(uint64_t a1)
{
  result = sub_1D63115A0(&qword_1EC885A00, type metadata accessor for A18_V17.Bound, &unk_1D72B80F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6310828(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4)
{
  v64 = a3;
  v65 = a4;
  v6 = type metadata accessor for HeadlineViewLayout.Context(0);
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v57 = &v54 - v12;
  v13 = type metadata accessor for FeedHeadline(0);
  v66 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v56 = &v54 - v19;
  sub_1D6311044(0);
  v62 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v59 = &v54 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v58 = &v54 - v29;
  v67 = a1;
  v30 = *(a1 + 16);
  v68 = *(a2 + 16);
  if (v68 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v68;
  }

  v69 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997C30(0, v31, 0);
  v33 = v69;
  v60 = v31;
  v61 = v30;
  v55 = a2;
  if (v31)
  {
    v34 = 0;
    v35 = a2 + 32;
    while (v30 != v34)
    {
      result = sub_1D5BE3ED8(v67 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v34, v16, type metadata accessor for FeedHeadline);
      if (v68 == v34)
      {
        goto LABEL_25;
      }

      v36 = *(v62 + 48);
      v37 = v16;
      sub_1D5BDAA3C(v16, v23, type metadata accessor for FeedHeadline);
      sub_1D5B68374(v35, &v23[v36]);
      v64(v23, &v23[v36]);
      sub_1D5BE79EC(v23, sub_1D6311044);
      v69 = v33;
      v38 = v9;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D6997C30((v39 > 1), v40 + 1, 1);
        v33 = v69;
      }

      ++v34;
      *(v33 + 16) = v40 + 1;
      result = sub_1D5BDAA3C(v38, v33 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v40, type metadata accessor for HeadlineViewLayout.Context);
      v35 += 40;
      v30 = v61;
      v9 = v38;
      v16 = v37;
      if (v60 == v34)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v41 = v68;
    if (v30 <= v68)
    {
      return v33;
    }

    v42 = v56;
    v43 = v60;
    v44 = v55 + 40 * v60 + 32;
    v45 = v57;
    while (v43 < v30)
    {
      result = sub_1D5BE3ED8(v67 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v43, v42, type metadata accessor for FeedHeadline);
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_27;
      }

      if (v41 == v43)
      {
        sub_1D5BE79EC(v42, type metadata accessor for FeedHeadline);
        return v33;
      }

      if (v43 >= v41)
      {
        goto LABEL_28;
      }

      v47 = v62;
      v48 = *(v62 + 48);
      v49 = v59;
      sub_1D5BDAA3C(v42, v59, type metadata accessor for FeedHeadline);
      sub_1D5B68374(v44, v49 + v48);
      v50 = v58;
      sub_1D5BDAA3C(v49, v58, sub_1D6311044);
      v64(v50, (v50 + *(v47 + 48)));
      sub_1D5BE79EC(v50, sub_1D6311044);
      v69 = v33;
      v52 = *(v33 + 16);
      v51 = *(v33 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1D6997C30((v51 > 1), v52 + 1, 1);
        v33 = v69;
      }

      ++v43;
      v44 += 40;
      *(v33 + 16) = v52 + 1;
      result = sub_1D5BDAA3C(v45, v33 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v52, type metadata accessor for HeadlineViewLayout.Context);
      v53 = v46 == v61;
      v30 = v61;
      v41 = v68;
      if (v53)
      {
        return v33;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1D6310DD0()
{
  result = qword_1EC885A10;
  if (!qword_1EC885A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A10);
  }

  return result;
}

unint64_t sub_1D6310E24()
{
  result = qword_1EC885A18;
  if (!qword_1EC885A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A18);
  }

  return result;
}

uint64_t sub_1D6310EB0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6310EF4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6310EF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V17.Layout;
    v8[1] = &type metadata for A18_V17.Layout.Attributes;
    v8[2] = sub_1D6310DD0();
    v8[3] = sub_1D6310E24();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6310F80(uint64_t a1)
{
  if (!qword_1EC885A48)
  {
    sub_1D6311538(255, &qword_1EC885A50, sub_1D6310DD0, &type metadata for A18_V17.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC885A48);
    }
  }
}

void sub_1D6311044(uint64_t a1)
{
  if (!qword_1EDF34AC0)
  {
    type metadata accessor for FeedHeadline(255);
    sub_1D5B49474(255, &qword_1EDF27C08, &protocol descriptor for HeadlineViewStylerType);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF34AC0);
    }
  }
}

unint64_t sub_1D63110E8()
{
  result = qword_1EC885A58;
  if (!qword_1EC885A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A58);
  }

  return result;
}

unint64_t sub_1D6311140()
{
  result = qword_1EC885A60;
  if (!qword_1EC885A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A60);
  }

  return result;
}

unint64_t sub_1D6311198()
{
  result = qword_1EC885A68;
  if (!qword_1EC885A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A68);
  }

  return result;
}

unint64_t sub_1D63111F0()
{
  result = qword_1EC885A70;
  if (!qword_1EC885A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A70);
  }

  return result;
}

uint64_t sub_1D6311244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6311538(0, &qword_1EC885A78, sub_1D63114E4, &type metadata for A18_V17.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63114E4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D63115A0(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D63114E4()
{
  result = qword_1EC885A80;
  if (!qword_1EC885A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A80);
  }

  return result;
}

void sub_1D6311538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D63115A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D63115FC()
{
  result = qword_1EC885A90;
  if (!qword_1EC885A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A90);
  }

  return result;
}

unint64_t sub_1D6311654()
{
  result = qword_1EC885A98;
  if (!qword_1EC885A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885A98);
  }

  return result;
}

unint64_t sub_1D63116AC()
{
  result = qword_1EC885AA0;
  if (!qword_1EC885AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AA0);
  }

  return result;
}

uint64_t sub_1D6311700(uint64_t a1)
{
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v11 = sub_1D72608BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v25 - v19;
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      sub_1D606BE74(a1, v10);
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        (*(v12 + 32))(v20, v10, v11);
        v21 = sub_1D726085C();
        (*(v12 + 8))(v20, v11);
        return v21 & 1;
      }

      v22 = v10;
    }

    else
    {
      sub_1D606BE74(a1, v6);
      if ((*(v12 + 48))(v6, 1, v11) != 1)
      {
        (*(v12 + 32))(v15, v6, v11);
        v23 = sub_1D726085C();
        (*(v12 + 8))(v15, v11);
        v21 = v23 ^ 1;
        return v21 & 1;
      }

      v22 = v6;
    }

    sub_1D6311B84(v22);
    v21 = 0;
  }

  else if (*v1)
  {
    v21 = (*(v12 + 48))(a1, 1, v11, v18) != 1;
  }

  else
  {
    v21 = (*(v12 + 48))(a1, 1, v11, v18) == 1;
  }

  return v21 & 1;
}

uint64_t FormatBindingSponsorshipExpressionLogic.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6311A3C()
{
  result = qword_1EC885AA8;
  if (!qword_1EC885AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AA8);
  }

  return result;
}

unint64_t sub_1D6311A90(uint64_t a1)
{
  result = sub_1D6311AB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6311AB8()
{
  result = qword_1EC885AB0;
  if (!qword_1EC885AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AB0);
  }

  return result;
}

unint64_t sub_1D6311B0C(void *a1)
{
  a1[1] = sub_1D5F2E710();
  a1[2] = sub_1D5F2E764();
  result = sub_1D6311A3C();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6311B84(uint64_t a1)
{
  sub_1D5B49800(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6311C04(void *a1)
{
  v3 = v1;
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  if (*(v3 + 56))
  {
    if (*(v3 + 56) == 1)
    {
      v11 = v3[1];
      v25 = *v3;
      v26 = v11;
      v27 = v3[2];
      v28 = *(v3 + 6);
      LOBYTE(v16) = 1;
      sub_1D6312988();
      v17 = 0uLL;
      sub_1D726443C();
      if (!v2)
      {
        v17 = v25;
        v18 = v26;
        v19 = v27;
        v12 = v28;
LABEL_9:
        v20 = v12;
        v16 = xmmword_1D7279980;
        sub_1D63129DC();
        sub_1D726443C();
      }
    }

    else
    {
      v14 = v3[1];
      v29 = *v3;
      v30 = v14;
      v31 = v3[2];
      v32 = *(v3 + 6);
      LOBYTE(v16) = 2;
      sub_1D6312988();
      v17 = 0uLL;
      sub_1D726443C();
      if (!v2)
      {
        v17 = v29;
        v18 = v30;
        v19 = v31;
        v12 = v32;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v13 = v3[1];
    v21 = *v3;
    v22 = v13;
    v23 = v3[2];
    v24 = *(v3 + 6);
    LOBYTE(v16) = 0;
    sub_1D6312988();
    v17 = 0uLL;
    sub_1D726443C();
    if (!v2)
    {
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v12 = v24;
      goto LABEL_9;
    }
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6311EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x74657070696E73;
  if (v2 != 1)
  {
    v5 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6567616B636170;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x74657070696E73;
  if (*a2 != 1)
  {
    v8 = 0x656C797473;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6567616B636170;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6311FBC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D631205C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D63120E8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6312184@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D631266C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D63121B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x74657070696E73;
  if (v2 != 1)
  {
    v5 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6567616B636170;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_1D63122C0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D63126B8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1D6312324()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D63123A8(uint64_t a1)
{
  sub_1D72621EC();
  sub_1D72621EC();

  return sub_1D72621EC();
}

uint64_t sub_1D6312414(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

BOOL sub_1D6312494(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1D6312548(v5, v7);
}

unint64_t sub_1D63124F4()
{
  result = qword_1EC885AB8;
  if (!qword_1EC885AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AB8);
  }

  return result;
}

BOOL sub_1D6312548(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = *(a1 + 56);
  v12 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v14 = a2[3];
  v17 = a2[4];
  v16 = a2[5];
  v18 = a2[6];
  v19 = *(a2 + 56);
  if (v11)
  {
    if (v11 == 1)
    {
      if (v19 != 1)
      {
        return 0;
      }
    }

    else if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  return (v4 == v12 && v5 == v13 || (sub_1D72646CC() & 1) != 0) && (v6 == v15 && v8 == v14 || (sub_1D72646CC() & 1) != 0) && (sub_1D633FE6C(v10, v18) & 1) != 0 && (v7 == v17 && v9 == v16 || (sub_1D72646CC() & 1) != 0);
}

unint64_t sub_1D631266C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D63126B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D63128E0();
  v25 = 0;
  v26 = 0;
  sub_1D726431C();
  v11 = v27;
  v18[1] = xmmword_1D7279980;
  sub_1D6312934();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v18[0] = v24;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18[0];
  *(a2 + 56) = v11;
  return result;
}

unint64_t sub_1D63128E0()
{
  result = qword_1EC885AC0;
  if (!qword_1EC885AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AC0);
  }

  return result;
}

unint64_t sub_1D6312934()
{
  result = qword_1EC885AC8;
  if (!qword_1EC885AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AC8);
  }

  return result;
}

unint64_t sub_1D6312988()
{
  result = qword_1EC885AD0;
  if (!qword_1EC885AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AD0);
  }

  return result;
}

unint64_t sub_1D63129DC()
{
  result = qword_1EC885AD8;
  if (!qword_1EC885AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AD8);
  }

  return result;
}

unint64_t sub_1D6312A44()
{
  result = qword_1EC885AE0;
  if (!qword_1EC885AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AE0);
  }

  return result;
}

unint64_t sub_1D6312A98()
{
  result = qword_1EC885AE8;
  if (!qword_1EC885AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885AE8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed24DebugFormatUploadRequestO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6312B14(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspaceGroup(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DebugFormatWorkspace(0);
  v8 = *(v7 + 36);
  v19 = *(a1 + *(v7 + 32));
  v9 = *(a1 + v8);
  v18 = MEMORY[0x1E69E7CC0];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v2 + 20);
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);

    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D63130B8(v12, v6, type metadata accessor for DebugFormatWorkspaceGroup);
      v15 = *&v6[v11];

      v16 = sub_1D6313120(v6, type metadata accessor for DebugFormatWorkspaceGroup);
      if (v15)
      {
        MEMORY[0x1DA6F9CE0](v16);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v14 = v18;
      }

      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6986E2C(v14);
  return v19;
}

unint64_t sub_1D6312CD4(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspaceGroup(0);
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  if (v25)
  {
    v7 = type metadata accessor for DebugFormatWorkspace(0);
    v8 = 0;
    v9 = *(v7 - 8);
    v24 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v23 = *(v9 + 72);
    do
    {
      v10 = v24 + v23 * v8;

      sub_1D6986E2C(v11);
      v12 = *(v10 + *(v7 + 36));
      v26 = v6;
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = *(v22 + 20);
        v15 = v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
        v16 = *(v21 + 72);
        do
        {
          sub_1D63130B8(v15, v5, type metadata accessor for DebugFormatWorkspaceGroup);
          v17 = *&v5[v14];

          v18 = sub_1D6313120(v5, type metadata accessor for DebugFormatWorkspaceGroup);
          if (v17)
          {
            MEMORY[0x1DA6F9CE0](v18);
            if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
            }

            sub_1D726278C();
            v6 = v26;
          }

          v15 += v16;
          --v13;
        }

        while (v13);
      }

      ++v8;
      sub_1D6986E2C(v6);
      v6 = MEMORY[0x1E69E7CC0];
    }

    while (v8 != v25);
    return v27;
  }

  return v6;
}

uint64_t sub_1D6312F2C(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 208);
  v14 = *(a1 + 200);
  v8 = *(v7 + 16);
  if (v8)
  {
    v13 = MEMORY[0x1E69E7CC0];

    sub_1D7263ECC();
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1D63130B8(v9, v6, type metadata accessor for DebugFormatEditorWorkspaceGroup);

      sub_1D6313120(v6, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v9 += v10;
      --v8;
    }

    while (v8);
    v11 = v13;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6986E2C(v11);
  return v14;
}

uint64_t sub_1D63130B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6313120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1D6313180()
{
  v1 = type metadata accessor for FormatWebEmbed(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatContentSlotItemObject(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D631F9C8(v0, v8, type metadata accessor for FormatContentSlotItemObject);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v29;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 1;
      return v9;
    case 2u:
      v12 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v12;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 2;
      return v9;
    case 3u:
      v18 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v18;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 3;
      return v9;
    case 4u:
      v10 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v10;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 4;
      return v9;
    case 5u:
      sub_1D631FAC8(v8, v4, type metadata accessor for FormatWebEmbed);
      v31 = &v4[v1[8]];
      v32 = *(v31 + 1);
      v33 = MEMORY[0x1E69E7CC0];
      if (v32)
      {
        v34 = *v31;
        sub_1D5B5D358(0, &unk_1EDF01FA0, &type metadata for FormatWebArchiveResource);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1D7273AE0;

        v36 = sub_1D725856C();
        *(v35 + 32) = v34;
        *(v35 + 40) = v32;
        *(v35 + 48) = v36;
        *(v35 + 56) = v37;
      }

      else
      {
        v35 = MEMORY[0x1E69E7CC0];
      }

      v52 = *(v35 + 16);
      v88 = v1;
      v89 = v4;
      if (v52)
      {
        v91 = v33;
        sub_1D6999198(0, v52, 0);
        v53 = v91;
        v87 = v35;
        v54 = (v35 + 56);
        do
        {
          v55 = *(v54 - 3);
          v56 = *(v54 - 2);
          v57 = *(v54 - 1);
          v58 = *v54;
          v91 = v53;
          v59 = *(v53 + 16);
          v60 = *(v53 + 24);

          if (v59 >= v60 >> 1)
          {
            sub_1D6999198((v60 > 1), v59 + 1, 1);
            v53 = v91;
          }

          v54 += 4;
          *(v53 + 16) = v59 + 1;
          v61 = v53 + 48 * v59;
          *(v61 + 32) = v55;
          *(v61 + 40) = v56;
          *(v61 + 48) = v57;
          *(v61 + 56) = v58;
          *(v61 + 64) = 0;
          *(v61 + 72) = 17;
          --v52;
        }

        while (v52);

        v1 = v88;
        v4 = v89;
        v33 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v53 = MEMORY[0x1E69E7CC0];
      }

      v62 = &v4[v1[9]];
      v63 = *(v62 + 1);
      if (v63)
      {
        v64 = *v62;
        sub_1D5B5D358(0, &qword_1EC88F580, &type metadata for FormatContentResource);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_1D7273AE0;
        *(v65 + 32) = v64;
        *(v65 + 40) = v63;
        v66 = 1;
      }

      else
      {
        v66 = *(v33 + 16);
        if (!v66)
        {

          v67 = MEMORY[0x1E69E7CC0];

          goto LABEL_51;
        }

        v65 = v33;
      }

      v91 = v33;

      sub_1D6999198(0, v66, 0);
      v67 = v91;
      v87 = v65;
      v68 = (v65 + 40);
      do
      {
        v69 = *(v68 - 1);
        v70 = *v68;
        v91 = v67;
        v72 = *(v67 + 16);
        v71 = *(v67 + 24);

        if (v72 >= v71 >> 1)
        {
          sub_1D6999198((v71 > 1), v72 + 1, 1);
          v67 = v91;
        }

        *(v67 + 16) = v72 + 1;
        v73 = v67 + 48 * v72;
        *(v73 + 32) = v69;
        *(v73 + 40) = v70;
        *(v73 + 56) = 0;
        *(v73 + 64) = 0;
        *(v73 + 48) = 0;
        *(v73 + 72) = 18;
        v68 += 2;
        --v66;
      }

      while (v66);

      v1 = v88;
      v4 = v89;
LABEL_51:
      v90 = v53;
      sub_1D6985628(v67);
      v20 = *&v4[v1[7]];
      if (!v20)
      {
        goto LABEL_70;
      }

      v74 = sub_1D71D8FBC();
      v5 = v74;
      if (v74 >> 62)
      {
        goto LABEL_67;
      }

      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
        goto LABEL_54;
      }

      goto LABEL_68;
    case 6u:
      v38 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v38;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 5;
      return v9;
    case 7u:
      v19 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v19;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 6;
      return v9;
    case 8u:
      v42 = *v8;
      v43 = *(v8 + 1);
      v44 = *(v8 + 4);
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v42;
      *(v9 + 40) = v43;
      *(v9 + 48) = *(v8 + 1);
      *(v9 + 64) = v44;
      *(v9 + 72) = 7;
      return v9;
    case 9u:
      v11 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v11;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 8;
      return v9;
    case 0xAu:
      v40 = *v8;
      v41 = *(v8 + 1);
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v40;
      *(v9 + 40) = v41;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = 0;
      *(v9 + 72) = 9;
      return v9;
    case 0xBu:
    case 0xCu:
      sub_1D631E0C8(v8, type metadata accessor for FormatContentSlotItemObject);
      return MEMORY[0x1E69E7CC0];
    case 0xDu:
      v30 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v30;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 10;
      return v9;
    case 0xEu:
      v46 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7270C10;
      v48 = *(v46 + 16);
      v47 = *(v46 + 24);
      type metadata accessor for FormatTag();
      v49 = swift_allocObject();
      v49[2] = v48;
      v49[3] = v47;
      swift_beginAccess();
      v49[4] = MEMORY[0x1E69E7CD0];
      swift_beginAccess();
      v49[5] = MEMORY[0x1E69E7CC0];
      *(v9 + 32) = v49;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 3;
      *(v9 + 80) = v46;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      v17 = 11;
      goto LABEL_31;
    case 0xFu:
      v13 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7270C10;
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      type metadata accessor for FormatTag();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = v14;
      swift_beginAccess();
      v16[4] = MEMORY[0x1E69E7CD0];
      swift_beginAccess();
      v16[5] = MEMORY[0x1E69E7CC0];
      *(v9 + 32) = v16;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 3;
      *(v9 + 80) = v13;
      *(v9 + 88) = 0u;
      *(v9 + 104) = 0u;
      v17 = 12;
LABEL_31:
      *(v9 + 120) = v17;

      return v9;
    case 0x10u:
      v51 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v51;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 13;
      return v9;
    case 0x11u:
      v39 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v39;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 14;
      return v9;
    case 0x12u:
      v45 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v45;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 15;
      return v9;
    case 0x13u:
      v50 = *v8;
      sub_1D5B5D358(0, &unk_1EDF19710, &type metadata for FormatContentRequirement);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 32) = v50;
      *(v9 + 40) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 16;
      return v9;
    default:
      v20 = *v8;
      v21 = sub_1D71D8FBC();
      v22 = v21;
      if (!(v21 >> 62))
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_12;
        }

LABEL_65:

        return MEMORY[0x1E69E7CC0];
      }

      v23 = sub_1D7263BFC();
      if (!v23)
      {
        goto LABEL_65;
      }

LABEL_12:
      v91 = MEMORY[0x1E69E7CC0];
      sub_1D6999198(0, v23 & ~(v23 >> 63), 0);
      if ((v23 & 0x8000000000000000) == 0)
      {
        v24 = 0;
        v9 = v91;
        do
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x1DA6FB460](v24, v22);
          }

          else
          {
            v25 = *(v22 + 8 * v24 + 32);
          }

          v91 = v9;
          v27 = *(v9 + 16);
          v26 = *(v9 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1D6999198((v26 > 1), v27 + 1, 1);
            v9 = v91;
          }

          *(v9 + 16) = v27 + 1;
          v28 = v9 + 48 * v27;
          *(v28 + 32) = v25;
          ++v24;
          *(v28 + 40) = 0u;
          *(v28 + 56) = 0u;
          *(v28 + 72) = 0;
        }

        while (v23 != v24);

        return v9;
      }

      __break(1u);
LABEL_67:
      v75 = sub_1D7263BFC();
      if (!v75)
      {
LABEL_68:

        v78 = MEMORY[0x1E69E7CC0];
        goto LABEL_69;
      }

LABEL_54:
      v87 = v20;
      v91 = MEMORY[0x1E69E7CC0];
      result = sub_1D6999198(0, v75 & ~(v75 >> 63), 0);
      if ((v75 & 0x8000000000000000) == 0)
      {
        v77 = 0;
        v78 = v91;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v79 = MEMORY[0x1DA6FB460](v77, v5);
          }

          else
          {
            v79 = *(v5 + 8 * v77 + 32);
          }

          v91 = v78;
          v81 = *(v78 + 16);
          v80 = *(v78 + 24);
          if (v81 >= v80 >> 1)
          {
            sub_1D6999198((v80 > 1), v81 + 1, 1);
            v78 = v91;
          }

          *(v78 + 16) = v81 + 1;
          v82 = v78 + 48 * v81;
          *(v82 + 32) = v79;
          ++v77;
          *(v82 + 40) = 0u;
          *(v82 + 56) = 0u;
          *(v82 + 72) = 0;
        }

        while (v75 != v77);

        v4 = v89;
LABEL_69:
        sub_1D6985628(v78);

LABEL_70:
        sub_1D725838C();
        if (v83)
        {

          v9 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D698C34C(0, *(v9 + 16) + 1, 1, v9);
          }

          v85 = *(v9 + 16);
          v84 = *(v9 + 24);
          if (v85 >= v84 >> 1)
          {
            v9 = sub_1D698C34C((v84 > 1), v85 + 1, 1, v9);
          }

          sub_1D631E0C8(v4, type metadata accessor for FormatWebEmbed);
          *(v9 + 16) = v85 + 1;
          v86 = v9 + 48 * v85;
          *(v86 + 32) = 0u;
          *(v86 + 48) = 0u;
          *(v86 + 64) = 0;
          *(v86 + 72) = 19;
        }

        else
        {
          sub_1D631E0C8(v4, type metadata accessor for FormatWebEmbed);
          return v90;
        }

        return v9;
      }

      __break(1u);
      return result;
  }
}

void sub_1D6313F08(char *a1, uint64_t *a2, uint64_t *a3)
{
  v1120 = a2;
  v1141 = a1;
  v1136 = 0;
  sub_1D5E4CF90(0);
  v1101 = v4;
  v1100 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v1099 = &v1098 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v1098 = &v1098 - v9;
  v1110 = sub_1D725895C();
  v1109 = *(v1110 - 8);
  v11 = MEMORY[0x1EEE9AC00](v1110, v10);
  v1108 = &v1098 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D631F8C0(0, v11);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v1112 = &v1098 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v1114 = &v1098 - v18;
  v1113 = type metadata accessor for FormatCustomItem.Resolved(0);
  MEMORY[0x1EEE9AC00](v1113, v19);
  v1115 = (&v1098 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1124 = type metadata accessor for FormatCustomItem(0);
  MEMORY[0x1EEE9AC00](v1124, v21);
  v1125 = &v1098 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PuzzleStatistic(0);
  v1107 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v1098 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v1111 = &v1098 - v29;
  v1129 = type metadata accessor for FormatWebEmbed.Resolved(0);
  MEMORY[0x1EEE9AC00](v1129, v30);
  v1118 = (&v1098 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v1106 = &v1098 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v1105 = &v1098 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v1104 = &v1098 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v1102 = &v1098 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v1122 = &v1098 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v1103 = &v1098 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v1128 = &v1098 - v52;
  v1139 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v1132 = *(v1139 - 8);
  MEMORY[0x1EEE9AC00](v1139, v53);
  v55 = &v1098 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56, v57);
  v1119 = &v1098 - v58;
  v1135 = sub_1D72585BC();
  v1133 = *(v1135 - 8);
  MEMORY[0x1EEE9AC00](v1135, v59);
  v1123 = &v1098 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v62);
  v1127 = (&v1098 - v63);
  MEMORY[0x1EEE9AC00](v64, v65);
  v67 = &v1098 - v66;
  sub_1D631F958(0);
  MEMORY[0x1EEE9AC00](v68 - 8, v69);
  v1117 = (&v1098 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v71, v72);
  v1131 = &v1098 - v73;
  v1134 = type metadata accessor for FormatWebEmbed(0);
  MEMORY[0x1EEE9AC00](v1134, v74);
  v1121 = (&v1098 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v76, v77);
  v1126 = (&v1098 - v78);
  MEMORY[0x1EEE9AC00](v79, v80);
  v1116 = (&v1098 - v81);
  MEMORY[0x1EEE9AC00](v82, v83);
  v1130 = (&v1098 - v84);
  v1137 = type metadata accessor for FormatContentSlotItemResolution(0);
  v1143 = *(v1137 - 8);
  MEMORY[0x1EEE9AC00](v1137, v85);
  v87 = &v1098 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88, v89);
  v91 = (&v1098 - v90);
  MEMORY[0x1EEE9AC00](v92, v93);
  v95 = (&v1098 - v94);
  MEMORY[0x1EEE9AC00](v96, v97);
  v99 = (&v1098 - v98);
  v100 = type metadata accessor for FormatContentSlotItemObject(0);
  MEMORY[0x1EEE9AC00](v100, v101);
  v103 = (&v1098 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = a3[1];
  v1140 = *a3;
  v1142 = v104;
  sub_1D631F9C8(v1138, v103, type metadata accessor for FormatContentSlotItemObject);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v166 = *v103;
      v326 = v1141[1];
      if (!*(v326 + 16))
      {
        goto LABEL_180;
      }

      v327 = *(v166 + 16);
      v328 = *(v166 + 24);

      v329 = sub_1D5B69D90(v327, v328);
      v331 = v330;

      if ((v331 & 1) == 0)
      {
        goto LABEL_180;
      }

      v332 = *(*(v326 + 56) + 8 * v329);
      if (v332 >> 62)
      {
        v333 = sub_1D7263BFC();
        if (!v333)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v333 = *((v332 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v333)
        {
          goto LABEL_180;
        }
      }

      v1141 = v166;
      *aBlock = MEMORY[0x1E69E7CC0];

      v175 = aBlock;
      sub_1D6997C80(0, v333 & ~(v333 >> 63), 0);
      if (v333 < 0)
      {
        goto LABEL_296;
      }

      v334 = 0;
      v335 = *aBlock;
      v336 = MEMORY[0x1E69E7CD0];
      v337 = v1137;
      do
      {
        if ((v332 & 0xC000000000000001) != 0)
        {
          v338 = MEMORY[0x1DA6FB460](v334, v332);
        }

        else
        {
          v338 = swift_unknownObjectRetain();
        }

        *v99 = v338;
        swift_storeEnumTagMultiPayload();
        v339 = (v99 + v337[5]);
        v340 = v1140;
        v341 = v1142;
        *v339 = v1140;
        v339[1] = v341;
        *(v99 + v337[6]) = v336;
        *(v99 + v337[7]) = MEMORY[0x1E69E7CC0];
        sub_1D5D615EC(v340, v341);
        *aBlock = v335;
        v343 = *(v335 + 16);
        v342 = *(v335 + 24);
        if (v343 >= v342 >> 1)
        {
          sub_1D6997C80((v342 > 1), v343 + 1, 1);
          v337 = v1137;
          v335 = *aBlock;
        }

        ++v334;
        *(v335 + 16) = v343 + 1;
        sub_1D631FAC8(v99, v335 + ((*(v1143 + 80) + 32) & ~*(v1143 + 80)) + v1143[9] * v343, type metadata accessor for FormatContentSlotItemResolution);
      }

      while (v333 != v334);
      goto LABEL_33;
    case 2u:
      v220 = *v103;
      v221 = v1141;
      v222 = v1141[2];
      if (!*(v222 + 16))
      {
        goto LABEL_180;
      }

      v223 = v220[2];
      v224 = v220[3];

      v225 = sub_1D5B69D90(v223, v224);
      v227 = v226;

      if ((v227 & 1) == 0)
      {
        goto LABEL_180;
      }

      v228 = *(*(v222 + 56) + 8 * v225);
      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v229 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
      v230 = swift_allocObject();
      *(v230 + 16) = xmmword_1D7273AE0;
      v208 = (v230 + v229);
      *v208 = v228;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v210 = v220[8];
      v231 = swift_beginAccess();
      v213 = v220[9];
      MEMORY[0x1EEE9AC00](v231, v232);
      v215 = &v1098 - 4;
      *(&v1098 - 2) = v221;
      v233 = v228;
      v217 = v1140;
      v218 = v1142;
      sub_1D5D615EC(v1140, v1142);
      v219 = v233;

      goto LABEL_42;
    case 3u:
      v298 = *v103;
      v299 = v1141[3];
      if (!*(v299 + 16))
      {
        goto LABEL_180;
      }

      v300 = v298[2];
      v301 = v298[3];

      v302 = sub_1D5B69D90(v300, v301);
      v304 = v303;

      if ((v304 & 1) == 0)
      {
        goto LABEL_180;
      }

      v305 = *(*(v299 + 56) + 8 * v302);
      swift_beginAccess();
      v306 = v298[5];
      swift_beginAccess();
      v307 = v298[4];
      swift_unknownObjectRetain_n();

      sub_1D5EEC8D4(v306, v307);
      v309 = v308;

      if (v309)
      {
        v310 = sub_1D726203C();
      }

      else
      {
        v310 = 0;
      }

      v638 = v1142;
      v639 = v1140;
      [v305 updateDismissingIdentifier_];
      swift_unknownObjectRelease();

      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v640 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
      v641 = swift_allocObject();
      *(v641 + 16) = xmmword_1D7273AE0;
      v642 = v641 + v640;
      *(v641 + v640) = v305;
      v643 = swift_storeEnumTagMultiPayload();
      v644 = v298[4];
      v645 = v298[5];
      MEMORY[0x1EEE9AC00](v643, v646);
      v647 = &v1098 - 4;
      *(&v1098 - 2) = v1141;
      sub_1D5D615EC(v639, v638);

      goto LABEL_172;
    case 4u:
      v166 = *v103;
      v167 = v1141[4];
      if (!*(v167 + 16))
      {
        goto LABEL_180;
      }

      v168 = *(v166 + 16);
      v169 = *(v166 + 24);

      v170 = sub_1D5B69D90(v168, v169);
      v172 = v171;

      if ((v172 & 1) == 0)
      {
        goto LABEL_180;
      }

      v173 = *(*(v167 + 56) + 8 * v170);
      if (v173 >> 62)
      {
        goto LABEL_290;
      }

      v174 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v174)
      {
        goto LABEL_25;
      }

      goto LABEL_180;
    case 5u:
      v362 = v1130;
      sub_1D631FAC8(v103, v1130, type metadata accessor for FormatWebEmbed);
      v363 = v1141;
      v1138 = sub_1D631BA64(v362, v1141);
      v365 = v364;
      v367 = v366;
      v368 = v1134[5];
      v369 = sub_1D725838C();
      v371 = v1120;
      v1125 = v365;
      v1124 = v367;
      if (!v370)
      {
        goto LABEL_137;
      }

      v372 = v363[22];
      if (!*(v372 + 16))
      {

        goto LABEL_137;
      }

      v373 = sub_1D5B69D90(v369, v370);
      v375 = v374;

      if ((v375 & 1) == 0)
      {
LABEL_137:
        v552 = type metadata accessor for GenericDataVisualization(0);
        (*(*(v552 - 8) + 56))(v1131, 1, 1, v552);
        goto LABEL_138;
      }

      v376 = (*(v372 + 56) + 24 * v373);
      v378 = *v376;
      v377 = v376[1];
      v379 = v376[2];
      v380 = v371[14];
      if (v380)
      {
        v382 = v371[15];
        v381 = v371[16];
        v383 = v1120[13];

        v384 = v383;
        v371 = v1120;
        sub_1D69F65B4(v362 + v368, v384, v380, v382, v381, v67);

        v385 = v1135;
        v386 = v1133;
      }

      else
      {
        v386 = v1133;
        v385 = v1135;
        (*(v1133 + 16))(v67, v362 + v368, v1135);
      }

      v734 = v1131;
      *v1131 = v378;
      *(v734 + 1) = v377;
      v735 = type metadata accessor for GenericDataVisualization(0);
      (*(v386 + 32))(&v734[*(v735 + 20)], v67, v385);
      *&v734[*(v735 + 24)] = v379;
      (*(*(v735 - 8) + 56))(v734, 0, 1, v735);
LABEL_138:
      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v1123 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
      v553 = swift_allocObject();
      *(v553 + 16) = xmmword_1D7273AE0;
      v554 = v371[14];
      if (v554)
      {
        v556 = v371[15];
        v555 = v371[16];
        v557 = v371[13];

        sub_1D69F65B4(v362 + v368, v557, v554, v556, v555, v1127);
      }

      else
      {
        (*(v1133 + 16))(v1127, v362 + v368, v1135);
      }

      v558 = *v362;
      v559 = v362[1];
      if (v558 == sub_1D72583DC() && v559 == v560)
      {

LABEL_145:
        v558 = 0;
        v559 = 0;
        goto LABEL_147;
      }

      v561 = sub_1D72646CC();

      if (v561)
      {
        goto LABEL_145;
      }

LABEL_147:
      v562 = v371[16];
      *aBlock = v371[13];
      *&aBlock[8] = *(v371 + 7);
      *&aBlock[24] = v562;
      v563 = v1134;
      v564 = v1134[6];

      sub_1D69F6394(v362 + v564, v1128);

      v565 = *(v362 + v563[7]);
      v566 = (v362 + v563[8]);
      v567 = v566[1];
      v1122 = *v566;
      v568 = v563[10];
      v569 = v362 + v563[9];
      v1120 = *v569;
      v570 = v362;
      v571 = *(v569 + 1);
      v1121 = *(v570 + v568);
      v572 = *(v570 + v563[11]);
      v573 = *(v570 + v563[12]);

      v1143 = v573;
      v1132 = v572;
      v1115 = sub_1D5EEC8D4(v573, v572);
      v1114 = v574;
      v575 = v1127;
      (*(v1133 + 16))(v1126 + v563[5], v1127, v1135);
      if (!v559)
      {
        v558 = sub_1D72583DC();
        v559 = v576;
      }

      v577 = v1134;
      v578 = v1126;
      v579 = (v1126 + v1134[13]);
      *v1126 = v558;
      v578[1] = v559;
      v580 = v1128;
      sub_1D631F9C8(v1128, v578 + v577[6], sub_1D5B4D3E0);
      *(v578 + v577[7]) = v565;
      v581 = (v578 + v577[8]);
      *v581 = v1122;
      v581[1] = v567;
      v582 = (v578 + v577[9]);
      *v582 = v1120;
      v582[1] = v571;
      *(v578 + v577[10]) = v1121;
      *(v578 + v577[11]) = v1132;

      sub_1D631E0C8(v580, sub_1D5B4D3E0);
      (*(v1133 + 8))(v575, v1135);
      *(v578 + v577[12]) = v1143;
      v583 = v1114;
      *v579 = v1115;
      v579[1] = v583;
      v584 = v1116;
      sub_1D631FAC8(v578, v1116, type metadata accessor for FormatWebEmbed);
      v585 = v1130;
      v586 = sub_1D6D62024(v1130);
      v587 = sub_1D6D621AC(v585);
      v588 = v1138;
      if (v1138)
      {
        swift_unknownObjectRetain();
      }

      v1135 = v553 + v1123;
      v589 = v1117;
      sub_1D631F9C8(v1131, v1117, sub_1D631F958);
      v590 = v584[1];
      v591 = v1118;
      *v1118 = *v584;
      *(v591 + 8) = v590;
      v592 = v1129;
      sub_1D631F9C8(v584, v591 + *(v1129 + 20), type metadata accessor for FormatWebEmbed);
      *(v591 + v592[6]) = v586;
      *(v591 + v592[7]) = v587;
      v593 = v592[9];

      sub_1D6B42B58(v588, v591 + v593);
      sub_1D631E0C8(v584, type metadata accessor for FormatWebEmbed);
      v594 = type metadata accessor for GenericDataVisualization(0);
      v595 = (*(*(v594 - 8) + 48))(v589, 1, v594);
      v596 = v1142;
      v597 = v1140;
      v598 = v1119;
      if (v595 == 1)
      {
        sub_1D631E0C8(v589, sub_1D631F958);
        v599 = v592[8];
        v600 = type metadata accessor for WebEmbedDataVisualization(0);
        (*(*(v600 - 8) + 56))(v591 + v599, 1, 1, v600);
      }

      else
      {
        v601 = v592[8];
        sub_1D631FAC8(v589, v591 + v601, type metadata accessor for GenericDataVisualization);
        v602 = type metadata accessor for WebEmbedDataVisualization(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v602 - 8) + 56))(v591 + v601, 0, 1, v602);
      }

      sub_1D631FAC8(v591, v598, type metadata accessor for FormatWebEmbed.Resolved);
      swift_storeEnumTagMultiPayload();
      v603 = v1138;
      if (v1138)
      {
        sub_1D5D615EC(v597, v596);
        v604 = v1125;
        v605 = v1124;
        sub_1D631FA7C(v603);
        swift_unknownObjectRelease();

        v606 = sub_1D5D6021C(v604, v1132);
        swift_unknownObjectRetain();

        swift_unknownObjectRelease();
        v607 = v605;
      }

      else
      {
        sub_1D5D615EC(v597, v596);
        v606 = sub_1D5D6021C(MEMORY[0x1E69E7CD0], v1132);
        v607 = MEMORY[0x1E69E7CC0];
      }

      *aBlock = v1143;

      sub_1D6985530(v607);
      v608 = *aBlock;
      MEMORY[0x1EEE9AC00](v609, v610);
      *(&v1098 - 2) = v1141;
      sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v608);
      v612 = v611;

      v613 = v1135;
      sub_1D631FAC8(v598, v1135, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v614 = v1137;
      v615 = (v613 + *(v1137 + 20));
      v616 = v1142;
      *v615 = v597;
      v615[1] = v616;
      *(v613 + *(v614 + 24)) = v606;
      *(v613 + *(v614 + 28)) = v612;
      sub_1D631FA30(v603);
      sub_1D631E0C8(v1131, sub_1D631F958);
      v472 = type metadata accessor for FormatWebEmbed;
      v473 = aBlock;
LABEL_158:
      sub_1D631E0C8(*(v473 - 32), v472);
      return;
    case 6u:
      v404 = *v103;
      v405 = v1141[6];
      if (!*(v405 + 16))
      {
        goto LABEL_180;
      }

      v406 = v404[2];
      v407 = v404[3];

      v408 = sub_1D5B69D90(v406, v407);
      v410 = v409;

      if ((v410 & 1) == 0)
      {
        goto LABEL_180;
      }

      v411 = *(*(v405 + 56) + 8 * v408);
      swift_beginAccess();
      v412 = v404[23];
      swift_beginAccess();
      v413 = v404[22];
      swift_unknownObjectRetain();

      sub_1D5EEC8D4(v412, v413);
      v415 = v414;

      if (v415)
      {
        v416 = sub_1D726203C();
      }

      else
      {
        v416 = 0;
      }

      v638 = v1142;
      v639 = v1140;
      [v411 updateDismissingIdentifier_];

      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v688 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
      v689 = swift_allocObject();
      *(v689 + 16) = xmmword_1D7273AE0;
      v642 = v689 + v688;
      *(v689 + v688) = v411;
      v690 = swift_storeEnumTagMultiPayload();
      v644 = v404[22];
      v645 = v404[23];
      MEMORY[0x1EEE9AC00](v690, v691);
      v647 = &v1098 - 4;
      *(&v1098 - 2) = v1141;
      sub_1D5D615EC(v639, v638);
      swift_unknownObjectRetain();

LABEL_172:
      sub_1D7195F4C(sub_1D631FB38, v647, v645);
      v656 = v692;

      v657 = v1137;
      v693 = (v642 + *(v1137 + 20));
      *v693 = v639;
      v693[1] = v638;
      goto LABEL_173;
    case 7u:
      v311 = *v103;
      v312 = v1141[7];
      if (!*(v312 + 16))
      {
        goto LABEL_180;
      }

      v313 = v311[2];
      v314 = v311[3];

      v315 = sub_1D5B69D90(v313, v314);
      v317 = v316;

      if ((v317 & 1) == 0)
      {
        goto LABEL_180;
      }

      v318 = *(*(v312 + 56) + 8 * v315);
      v319 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__properties;
      swift_beginAccess();
      v320 = *(v311 + v319);
      v321 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__selectors;
      swift_beginAccess();
      v322 = *(v311 + v321);
      swift_unknownObjectRetain();

      sub_1D5EEC8D4(v320, v322);
      v324 = v323;

      if (v324)
      {
        v325 = sub_1D726203C();
      }

      else
      {
        v325 = 0;
      }

      [v318 updateDismissingIdentifier_];

      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v648 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
      v649 = swift_allocObject();
      *(v649 + 16) = xmmword_1D7273AE0;
      v642 = v649 + v648;
      *(v649 + v648) = v318;
      v650 = swift_storeEnumTagMultiPayload();
      v644 = *(v311 + v321);
      v651 = *(v311 + v319);
      MEMORY[0x1EEE9AC00](v650, v652);
      *(&v1098 - 2) = v1141;
      v653 = v1140;
      v654 = v1142;
      sub_1D5D615EC(v1140, v1142);
      swift_unknownObjectRetain();

      sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v651);
      v656 = v655;

      v657 = v1137;
      v658 = (v642 + *(v1137 + 20));
      *v658 = v653;
      v658[1] = v654;
LABEL_173:
      *(v642 + *(v657 + 24)) = v644;
      *(v642 + *(v657 + 28)) = v656;

      swift_unknownObjectRelease();
      return;
    case 8u:
      v450 = v103[1];
      v452 = v103[2];
      v451 = v103[3];
      v453 = v103[4];
      v454 = v1141;
      v455 = v1141[8];
      v456 = *(*v103 + 24);
      *aBlock = *(*v103 + 16);
      *&aBlock[8] = v456;

      MEMORY[0x1DA6F9910](v450, v452);
      if (*(v455 + 16))
      {
        v457 = sub_1D5B69D90(*aBlock, *&aBlock[8]);
        v459 = v458;

        if (v459)
        {
          sub_1D631F9C8(*(v455 + 56) + *(v1107 + 72) * v457, v26, type metadata accessor for PuzzleStatistic);
          v460 = v1111;
          sub_1D631FAC8(v26, v1111, type metadata accessor for PuzzleStatistic);
          sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
          v461 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
          v462 = swift_allocObject();
          *(v462 + 16) = xmmword_1D7273AE0;
          v463 = v462 + v461;
          sub_1D631F9C8(v460, v463, type metadata accessor for PuzzleStatistic);
          v464 = swift_storeEnumTagMultiPayload();
          MEMORY[0x1EEE9AC00](v464, v465);
          *(&v1098 - 2) = v454;
          v466 = v1140;
          v467 = v1142;
          sub_1D5D615EC(v1140, v1142);

          sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v453);
          v469 = v468;

          v470 = v1137;
          v471 = (v463 + *(v1137 + 20));
          *v471 = v466;
          v471[1] = v467;
          *(v463 + *(v470 + 24)) = v451;
          *(v463 + *(v470 + 28)) = v469;

          v472 = type metadata accessor for PuzzleStatistic;
          v473 = &v1143;
          goto LABEL_158;
        }
      }

      else
      {
      }

      goto LABEL_180;
    case 9u:
      v197 = *v103;
      v198 = v1141;
      v199 = v1141[9];
      if (!*(v199 + 16))
      {
        goto LABEL_180;
      }

      v200 = *(v197 + 16);
      v201 = *(v197 + 24);

      v202 = sub_1D5B69D90(v200, v201);
      v204 = v203;

      if ((v204 & 1) == 0)
      {
        goto LABEL_180;
      }

      v205 = *(*(v199 + 56) + 8 * v202);
      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v206 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
      v207 = swift_allocObject();
      *(v207 + 16) = xmmword_1D7273AE0;
      v208 = (v207 + v206);
      *v208 = v205;
      swift_storeEnumTagMultiPayload();
      v209 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__selectors;
      swift_beginAccess();
      v210 = *(v197 + v209);
      v211 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__properties;
      v212 = swift_beginAccess();
      v213 = *(v197 + v211);
      MEMORY[0x1EEE9AC00](v212, v214);
      v215 = &v1098 - 4;
      *(&v1098 - 2) = v198;
      v216 = v205;
      v217 = v1140;
      v218 = v1142;
      sub_1D5D615EC(v1140, v1142);
      v219 = v216;

LABEL_42:
      sub_1D7195F4C(sub_1D631FB38, v215, v213);
      v235 = v234;

      v236 = v1137;
      v237 = (v208 + *(v1137 + 20));
      *v237 = v217;
      v237[1] = v218;
      *(v208 + *(v236 + 24)) = v210;
      *(v208 + *(v236 + 28)) = v235;

      return;
    case 0xAu:
      v435 = v1141[10];
      if (!*(v435 + 16))
      {
        goto LABEL_104;
      }

      v436 = sub_1D5B69D90(*v103, v103[1]);
      v438 = v437;

      if ((v438 & 1) == 0)
      {
        return;
      }

      v166 = *(*(v435 + 56) + 8 * v436);
      v439 = v166 >> 62 ? sub_1D7263BFC() : *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v440 = MEMORY[0x1E69E7CC0];
      if (!v439)
      {
        return;
      }

      *aBlock = MEMORY[0x1E69E7CC0];

      v175 = aBlock;
      sub_1D6997C80(0, v439 & ~(v439 >> 63), 0);
      if (v439 < 0)
      {
        goto LABEL_297;
      }

      v441 = 0;
      v442 = *aBlock;
      v443 = v1137;
      do
      {
        if ((v166 & 0xC000000000000001) != 0)
        {
          v444 = MEMORY[0x1DA6FB460](v441, v166);
        }

        else
        {
          v444 = *(v166 + 8 * v441 + 32);
        }

        *v91 = v444;
        swift_storeEnumTagMultiPayload();
        v445 = (v91 + v443[5]);
        v446 = v1140;
        v447 = v1142;
        *v445 = v1140;
        v445[1] = v447;
        *(v91 + v443[6]) = MEMORY[0x1E69E7CD0];
        *(v91 + v443[7]) = v440;
        sub_1D5D615EC(v446, v447);
        *aBlock = v442;
        v449 = *(v442 + 16);
        v448 = *(v442 + 24);
        if (v449 >= v448 >> 1)
        {
          sub_1D6997C80((v448 > 1), v449 + 1, 1);
          v443 = v1137;
          v442 = *aBlock;
        }

        ++v441;
        *(v442 + 16) = v449 + 1;
        sub_1D631FAC8(v91, v442 + ((*(v1143 + 80) + 32) & ~*(v1143 + 80)) + v1143[9] * v449, type metadata accessor for FormatContentSlotItemResolution);
      }

      while (v439 != v441);
      goto LABEL_104;
    case 0xBu:
      v158 = *v103;
      v157 = v103[1];
      if (v103[2])
      {
        sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
        v159 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
        v160 = swift_allocObject();
        *(v160 + 16) = xmmword_1D7273AE0;
        v161 = v160 + v159;
        *v161 = v158;
        *(v161 + 8) = v157;
        *(v161 + 16) = 0;
        swift_storeEnumTagMultiPayload();
        v162 = v1137;
        v163 = (v161 + *(v1137 + 20));
        v164 = v1140;
        v165 = v1142;
        *v163 = v1140;
        v163[1] = v165;
        *(v161 + *(v162 + 24)) = MEMORY[0x1E69E7CD0];
        *(v161 + *(v162 + 28)) = MEMORY[0x1E69E7CC0];
        sub_1D5D615EC(v164, v165);
        return;
      }

      v493 = v1141[11];
      if (!*(v493 + 16))
      {
LABEL_104:

        return;
      }

      v494 = sub_1D5B69D90(*v103, v103[1]);
      v173 = v495;

      if ((v173 & 1) == 0)
      {
        return;
      }

      v496 = (*(v493 + 56) + (v494 << 6));
      v497 = v496[3];
      v498 = *v496;
      v499 = v496[1];
      v1148 = v496[2];
      v1149 = v497;
      *aBlock = v498;
      *&aBlock[16] = v499;
      v500 = v499;
      v166 = *(v499 + 16);
      v26 = MEMORY[0x1E69E7CC0];
      if (!v166)
      {
        return;
      }

      v1146 = MEMORY[0x1E69E7CC0];
      sub_1D5E2A788(aBlock, &v1144);
      v1142 = v500;
      sub_1D6E76EBC(v166);
      v501 = v1142;
      v502 = 0;
      v503 = v1142 + ((*(v1132 + 80) + 32) & ~*(v1132 + 80));
      v95 = v1136;
      while (2)
      {
        if (v502 < *(v501 + 16))
        {
          sub_1D631F9C8(v503 + v1132[9] * v502, v55, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D631BBF4(v55, aBlock, v87);
          sub_1D631E0C8(v55, type metadata accessor for FormatContentSlotItemObject.Resolved);
          v26 = v1146;
          if (!v95)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D6997C80(0, *(v26 + 2) + 1, 1);
              v501 = v1142;
              v26 = v1146;
            }

            v505 = *(v26 + 2);
            v504 = *(v26 + 3);
            v173 = v505 + 1;
            if (v505 >= v504 >> 1)
            {
              sub_1D6997C80((v504 > 1), v505 + 1, 1);
              v501 = v1142;
              v26 = v1146;
            }

            ++v502;
            *(v26 + 2) = v173;
            sub_1D631FAC8(v87, &v26[((*(v1143 + 80) + 32) & ~*(v1143 + 80)) + v1143[9] * v505], type metadata accessor for FormatContentSlotItemResolution);
            if (v166 == v502)
            {
              sub_1D5ECF270(aBlock);
              return;
            }

            continue;
          }

          __break(1u);
          return;
        }

        break;
      }

      __break(1u);
LABEL_290:
      v174 = sub_1D7263BFC();
      if (!v174)
      {
LABEL_180:

        return;
      }

LABEL_25:
      v1141 = v166;
      *aBlock = MEMORY[0x1E69E7CC0];
      v55 = (v174 & ~(v174 >> 63));

      v175 = aBlock;
      sub_1D6997C80(0, v55, 0);
      if ((v174 & 0x8000000000000000) == 0)
      {
        v176 = 0;
        v177 = *aBlock;
        v178 = MEMORY[0x1E69E7CD0];
        v179 = v1137;
        do
        {
          if ((v173 & 0xC000000000000001) != 0)
          {
            v180 = MEMORY[0x1DA6FB460](v176, v173);
          }

          else
          {
            v180 = swift_unknownObjectRetain();
          }

          *v95 = v180;
          swift_storeEnumTagMultiPayload();
          v181 = (v95 + v179[5]);
          v182 = v1140;
          v183 = v1142;
          *v181 = v1140;
          v181[1] = v183;
          *(v95 + v179[6]) = v178;
          *(v95 + v179[7]) = MEMORY[0x1E69E7CC0];
          sub_1D5D615EC(v182, v183);
          *aBlock = v177;
          v185 = *(v177 + 16);
          v184 = *(v177 + 24);
          if (v185 >= v184 >> 1)
          {
            sub_1D6997C80((v184 > 1), v185 + 1, 1);
            v179 = v1137;
            v177 = *aBlock;
          }

          ++v176;
          *(v177 + 16) = v185 + 1;
          sub_1D631FAC8(v95, v177 + ((*(v1143 + 80) + 32) & ~*(v1143 + 80)) + v1143[9] * v185, type metadata accessor for FormatContentSlotItemResolution);
        }

        while (v174 != v176);
LABEL_33:

        return;
      }

      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
      goto LABEL_298;
    case 0xCu:
      v186 = v1125;
      sub_1D631FAC8(v103, v1125, type metadata accessor for FormatCustomItem);
      v187 = v186[1];
      v1138 = *v186;
      v189 = v186[2];
      v188 = v186[3];
      v190 = v1112;
      sub_1D631F9C8(v186 + *(v1124 + 24), v1112, sub_1D631F8C0);
      v191 = type metadata accessor for FormatCustomItem.Action(0);
      v192 = *(v191 - 8);
      v193 = 1;
      LODWORD(v186) = (*(v192 + 48))(v190, 1, v191);

      v194 = sub_1D631F8C0;
      if (v186 == 1)
      {
        v195 = v1140;
        v196 = v1114;
      }

      else
      {
        v196 = v1114;
        sub_1D6C92DDC(v1120, v1114);
        v193 = 0;
        v194 = type metadata accessor for FormatCustomItem.Action;
        v195 = v1140;
      }

      sub_1D631E0C8(v190, v194);
      v506 = (*(v192 + 56))(v196, v193, 1, v191);
      v507 = v1124;
      v508 = v1125;
      v509 = *&v1125[*(v1124 + 28)];
      MEMORY[0x1EEE9AC00](v506, v510);
      *(&v1098 - 2) = v1141;
      sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v509);
      v512 = v511;
      v513 = *&v508[*(v507 + 32)];
      v514 = sub_1D5EEC8D4(v509, v513);
      v516 = v515;
      v517 = v196;
      v518 = v1115;
      *v1115 = v1138;
      v518[1] = v187;
      v518[2] = v189;
      v518[3] = v188;
      v519 = v1113;
      sub_1D631FAC8(v517, v518 + *(v1113 + 24), sub_1D631F8C0);
      *(v518 + *(v519 + 28)) = v512;
      v520 = (v518 + *(v519 + 32));
      *v520 = v514;
      v520[1] = v516;
      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v521 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
      v522 = swift_allocObject();
      *(v522 + 16) = xmmword_1D7273AE0;
      v523 = v522 + v521;
      sub_1D631F9C8(v518, v523, type metadata accessor for FormatCustomItem.Resolved);
      swift_storeEnumTagMultiPayload();
      v524 = v1137;
      v525 = (v523 + *(v1137 + 20));
      v526 = v1142;
      *v525 = v195;
      v525[1] = v526;
      *(v523 + *(v524 + 24)) = v513;
      *(v523 + *(v524 + 28)) = MEMORY[0x1E69E7CC0];
      sub_1D5D615EC(v195, v526);

      sub_1D631E0C8(v518, type metadata accessor for FormatCustomItem.Resolved);
      sub_1D631E0C8(v508, type metadata accessor for FormatCustomItem);
      return;
    case 0xDu:
      v387 = *v103;
      v388 = v1141[15];
      if (!*(v388 + 16))
      {
        goto LABEL_180;
      }

      v389 = *(v387 + 4);
      v390 = *(v387 + 5);

      v391 = sub_1D5B69D90(v389, v390);
      v393 = v392;

      if ((v393 & 1) == 0)
      {
        goto LABEL_180;
      }

      v394 = *(*(v388 + 56) + 8 * v391);
      v395 = *(v394 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
      v396 = *(v394 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 8);
      v397 = *(v394 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 16);
      v398 = *(v394 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 24);
      v399 = *(v394 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 32);
      v400 = *(v394 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 40);
      v1128 = v387;
      v1127 = v394;
      v1125 = v399;
      v1124 = v400;
      if (v396)
      {

        v1119 = v395;
        v1138 = v396;
        v1132 = v397;
        v401 = v398;
        v402 = v399;
        v1131 = v400;
        v403 = v395;
        goto LABEL_263;
      }

      v679 = v1141[3];
      v680 = *(v679 + 16);
      v1118 = v395;
      v1117 = v397;
      v1116 = 0;
      v1115 = v398;
      if (v680)
      {
        v682 = *(v387 + 2);
        v681 = *(v387 + 3);

        v683 = sub_1D5B69D90(v682, v681);
        v684 = v1110;
        v685 = v1109;
        if (v686)
        {
          v687 = *(*(v679 + 56) + 8 * v683);
          swift_unknownObjectRetain();
        }

        else
        {
          v687 = 0;
        }
      }

      else
      {

        v687 = 0;
        v684 = v1110;
        v685 = v1109;
      }

      v836 = *(v394 + 64);
      v837 = v1128;
      swift_beginAccess();
      v838 = v837[6];
      v839 = swift_beginAccess();
      v840 = v837[7];
      MEMORY[0x1EEE9AC00](v839, v841);
      *(&v1098 - 2) = v1141;
      swift_unknownObjectRetain();
      v1130 = v838;

      v842 = v1136;
      sub_1D7195F4C(sub_1D631F9AC, (&v1098 - 4), v840);
      v844 = v843;
      v1136 = v842;

      swift_beginAccess();
      v845 = v837[8];
      v846 = v837[9];

      v848 = sub_1D6C2B5D8(v845, v846, v847);

      v849 = v1108;
      sub_1D725894C();
      v850 = sub_1D725893C();
      v1138 = v851;
      (*(v685 + 8))(v849, v684);
      if (v687)
      {
        v1132 = [v687 asSports];
      }

      else
      {
        v1132 = 0;
      }

      v852 = v1135;
      aBlock[0] = 0;
      v853 = sub_1D69229B4(v687, v844, aBlock);

      *aBlock = MEMORY[0x1E69E7CC0];
      if (v687)
      {
        swift_getObjectType();
        LOBYTE(v1145) = 0;
        v854 = v1103;
        sub_1D6924500(&v1145, v1103);
        sub_1D631E0C8(v854, sub_1D5B4D3E0);
        v855 = [v687 asSports];
        if (v855)
        {
          v856 = [v855 UMCCanonicalID];
          if (v856)
          {
            v1126 = v853;
            v857 = v856;
            v858 = sub_1D726207C();
            v860 = v859;

            v861 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v863 = *(v861 + 2);
            v862 = *(v861 + 3);
            if (v863 >= v862 >> 1)
            {
              v861 = sub_1D698CCE4((v862 > 1), v863 + 1, 1, v861);
            }

            swift_unknownObjectRelease();
            *(v861 + 2) = v863 + 1;
            v864 = &v861[32 * v863];
            *(v864 + 4) = 0x7463656A627573;
            *(v864 + 5) = 0xE700000000000000;
            *(v864 + 6) = v858;
            *(v864 + 7) = v860;
            *aBlock = v861;
            v853 = v1126;
LABEL_254:
            if (v836)
            {
              v956 = [swift_unknownObjectRetain() UMCCanonicalID];
              if (v956)
              {
                v957 = v956;
                v958 = sub_1D726207C();
                v960 = v959;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v861 = sub_1D698CCE4(0, *(v861 + 2) + 1, 1, v861);
                }

                v962 = *(v861 + 2);
                v961 = *(v861 + 3);
                if (v962 >= v961 >> 1)
                {
                  v861 = sub_1D698CCE4((v961 > 1), v962 + 1, 1, v861);
                }

                swift_unknownObjectRelease();
                *(v861 + 2) = v962 + 1;
                v963 = &v861[32 * v962];
                *(v963 + 4) = 0x65756761656CLL;
                *(v963 + 5) = 0xE600000000000000;
                *(v963 + 6) = v958;
                *(v963 + 7) = v960;
                *aBlock = v861;
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            sub_1D5B5D358(0, &unk_1EDF01EA8, &type metadata for SportsConfigResourceParameter);
            v964 = swift_allocObject();
            *(v964 + 16) = xmmword_1D7270C10;
            *(v964 + 32) = 0x756F724764656566;
            *(v964 + 40) = 0xE900000000000070;
            *(v964 + 48) = 0x64657461727563;
            *(v964 + 56) = 0xE700000000000000;
            *(v964 + 64) = 0xD000000000000011;
            *(v964 + 72) = 0x80000001D73CAA10;
            *(v964 + 80) = 0x746C7561666564;
            *(v964 + 88) = 0xE700000000000000;
            sub_1D6987B44(v964);
            sub_1D6987B44(v848);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v1131 = *aBlock;
            v401 = v1130;
            v402 = v853;
            v403 = v1118;
            v1119 = v850;
            v397 = v1117;
            v396 = v1116;
LABEL_263:
            v1126 = v402;
            v1130 = v401;
            v965 = v402;
            sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
            v966 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
            v967 = swift_allocObject();
            *(v967 + 16) = xmmword_1D7273AE0;
            v1120 = (v967 + v966);
            v968 = swift_allocObject();
            *aBlock = v1119;
            *&aBlock[8] = v1138;
            *&aBlock[16] = v1132;
            *&aBlock[24] = v401;
            *&v1148 = v965;
            *(&v1148 + 1) = v1131;
            sub_1D5F8B638(v403, v396, v397);
            *(v968 + 16) = SportsScoreDataVisualization.with(config:)(aBlock);
            *aBlock = v968;
            v1143 = v968;
            v969 = v1123;
            SportsDataVisualization.configuredEmbedUrl.getter(v1123);
            v1145 = v968;
            v970 = SportsDataVisualization.identifier.getter();
            v972 = v971;
            v973 = v1133;
            v1124 = *(v1133 + 56);
            v1125 = (v1133 + 56);
            v974 = v1122;
            v975 = v1135;
            (v1124)(v1122, 1, 1, v1135);
            v976 = v1134;
            v977 = v1121;
            v978 = v1121 + v1134[13];
            (*(v973 + 16))(v1121 + v1134[5], v969, v975);
            *v977 = v970;
            v977[1] = v972;
            sub_1D631F9C8(v974, v977 + v976[6], sub_1D5B4D3E0);
            *(v977 + v976[7]) = 0;
            v979 = (v977 + v976[8]);
            *v979 = 0;
            v979[1] = 0;
            v980 = (v977 + v976[9]);
            *v980 = 0;
            v980[1] = 0;
            *(v977 + v976[10]) = 0;
            *(v977 + v976[11]) = MEMORY[0x1E69E7CD0];
            sub_1D631E0C8(v974, sub_1D5B4D3E0);
            v981 = v969;
            v982 = v975;
            (*(v973 + 8))(v981, v975);
            *(v977 + v976[12]) = MEMORY[0x1E69E7CC0];
            *v978 = 0;
            *(v978 + 1) = 0;
            v983 = v1120;
            *v1120 = v970;
            *(v983 + 1) = v972;
            v984 = v1129;
            sub_1D631F9C8(v977, &v983[*(v1129 + 20)], type metadata accessor for FormatWebEmbed);
            v985 = v1124;
            (v1124)(v974, 1, 1, v982);
            sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
            swift_allocObject();

            *&v983[v984[6]] = sub_1D725BB1C();
            v985(v974, 1, 1, v1135);
            swift_allocObject();
            v986 = sub_1D725BB1C();
            sub_1D631E0C8(v977, type metadata accessor for FormatWebEmbed);
            *&v983[v984[7]] = v986;
            v987 = v984[9];
            sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
            (*(*(v988 - 8) + 56))(&v983[v987], 1, 1, v988);
            v989 = v984[8];
            *&v983[v989] = v1143;
            v990 = type metadata accessor for WebEmbedDataVisualization(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v990 - 8) + 56))(&v983[v989], 0, 1, v990);
            swift_storeEnumTagMultiPayload();
            v991 = v1128;
            swift_beginAccess();
            v992 = v991[6];
            v993 = swift_beginAccess();
            v994 = v991[7];
            MEMORY[0x1EEE9AC00](v993, v995);
            *(&v1098 - 2) = v1141;
            v996 = v1140;
            v997 = v1142;
            sub_1D5D615EC(v1140, v1142);

            sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v994);
            v999 = v998;

            v1000 = v1137;
            v1001 = &v983[*(v1137 + 20)];
            *v1001 = v996;
            v1001[1] = v997;
            *&v983[*(v1000 + 24)] = v992;
            *&v983[*(v1000 + 28)] = v999;

            goto LABEL_287;
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v865 = v1103;
        (*(v1133 + 56))(v1103, 1, 1, v852);
        sub_1D631E0C8(v865, sub_1D5B4D3E0);
      }

      v861 = MEMORY[0x1E69E7CC0];
      goto LABEL_254;
    case 0xEu:
      v132 = *v103;
      v133 = v1141;
      v134 = v1141[16];
      if (!*(v134 + 16))
      {
        goto LABEL_180;
      }

      v135 = v132[2];
      v136 = v132[3];

      v137 = sub_1D5B69D90(v135, v136);
      LOBYTE(v135) = v138;

      if ((v135 & 1) == 0)
      {
        goto LABEL_180;
      }

      v139 = v133[3];
      if (!*(v139 + 16))
      {
        goto LABEL_180;
      }

      v140 = *(*(v134 + 56) + 8 * v137);
      v141 = v132[2];
      v142 = v132[3];

      v143 = sub_1D5B69D90(v141, v142);
      v145 = v144;

      if ((v145 & 1) == 0)
      {
        goto LABEL_179;
      }

      v146 = *(*(v139 + 56) + 8 * v143);
      v147 = *(v140 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config);
      v148 = *(v140 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8);
      v150 = *(v140 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 16);
      v149 = *(v140 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 24);
      v151 = *(v140 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 32);
      v152 = *(v140 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 40);
      v1138 = v146;
      v1126 = v148;
      v1125 = v147;
      v1124 = v152;
      v1119 = v149;
      v1118 = v151;
      if (v148)
      {
        swift_unknownObjectRetain();
        v153 = v150;
        v154 = v150;
        v155 = v148;
        v1117 = v147;
        v156 = v154;
      }

      else
      {
        v790 = v140[7];
        swift_beginAccess();
        v791 = v132[6];
        v792 = swift_beginAccess();
        v1132 = &v1098;
        v793 = v132[7];
        MEMORY[0x1EEE9AC00](v792, v794);
        *(&v1098 - 2) = v1141;
        swift_unknownObjectRetain();

        swift_unknownObjectRetain_n();
        v795 = v1136;
        sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v793);
        v797 = v796;
        v1136 = v795;

        swift_beginAccess();
        v798 = v132[4];
        v799 = v132[5];

        v801 = sub_1D6C2B5D8(v798, v799, v800);

        LOBYTE(v1145) = 2;
        sub_1D69219B4(v146, v790, 0, v791, v797, v801, &v1145, aBlock);
        v1117 = *aBlock;
        v156 = v150;
        v155 = *&aBlock[8];
        v149 = *&aBlock[24];
        v153 = *&aBlock[16];
        v152 = *(&v1148 + 1);
        v151 = v1148;
      }

      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v802 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
      v803 = swift_allocObject();
      *(v803 + 16) = xmmword_1D7273AE0;
      v1120 = (v803 + v802);
      v804 = swift_allocObject();
      *aBlock = v1117;
      *&aBlock[8] = v155;
      v1131 = v155;
      v1132 = v153;
      *&aBlock[16] = v153;
      *&aBlock[24] = v149;
      v1130 = v149;
      v1128 = v151;
      *&v1148 = v151;
      *(&v1148 + 1) = v152;
      v1127 = v152;
      sub_1D5F8B638(v1125, v1126, v156);
      *(v804 + 16) = SportsStandingDataVisualization.with(config:)(aBlock);
      v1125 = (v804 | 0x2000000000000000);
      *aBlock = v804 | 0x2000000000000000;
      v805 = v1123;
      SportsDataVisualization.configuredEmbedUrl.getter(v1123);
      v1145 = v804 | 0x2000000000000000;
      v806 = SportsDataVisualization.identifier.getter();
      v808 = v807;
      v1126 = v140;
      v809 = v1133;
      v1124 = *(v1133 + 56);
      v1143 = (v1133 + 56);
      v810 = v1122;
      v811 = v1135;
      (v1124)(v1122, 1, 1, v1135);
      v812 = v1134;
      v813 = v1121;
      v1119 = v1121 + v1134[13];
      (*(v809 + 16))(v1121 + v1134[5], v805, v811);
      *v813 = v806;
      v813[1] = v808;
      sub_1D631F9C8(v810, v813 + v812[6], sub_1D5B4D3E0);
      *(v813 + v812[7]) = 0;
      v814 = (v813 + v812[8]);
      *v814 = 0;
      v814[1] = 0;
      v815 = (v813 + v812[9]);
      *v815 = 0;
      v815[1] = 0;
      *(v813 + v812[10]) = 0;
      *(v813 + v812[11]) = MEMORY[0x1E69E7CD0];
      sub_1D631E0C8(v810, sub_1D5B4D3E0);
      (*(v809 + 8))(v805, v811);
      *(v813 + v812[12]) = MEMORY[0x1E69E7CC0];
      v816 = v1119;
      *v1119 = 0;
      *(v816 + 1) = 0;
      v817 = v1120;
      *v1120 = v806;
      *(v817 + 1) = v808;
      v818 = v1129;
      sub_1D631F9C8(v813, &v817[*(v1129 + 20)], type metadata accessor for FormatWebEmbed);
      v819 = v811;
      v820 = v1124;
      (v1124)(v810, 1, 1, v819);
      sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
      swift_allocObject();

      *&v817[v818[6]] = sub_1D725BB1C();
      v820(v810, 1, 1, v1135);
      swift_allocObject();
      v821 = sub_1D725BB1C();
      sub_1D631E0C8(v813, type metadata accessor for FormatWebEmbed);
      *&v817[v818[7]] = v821;
      v822 = v818[9];
      sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
      (*(*(v823 - 8) + 56))(&v817[v822], 1, 1, v823);
      v824 = v818[8];
      *&v817[v824] = v1125;
      v825 = type metadata accessor for WebEmbedDataVisualization(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v825 - 8) + 56))(&v817[v824], 0, 1, v825);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v826 = v132[6];
      v827 = swift_beginAccess();
      v828 = v132[7];
      MEMORY[0x1EEE9AC00](v827, v829);
      *(&v1098 - 2) = v1141;
      v830 = v1140;
      v831 = v1142;
      sub_1D5D615EC(v1140, v1142);

      sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v828);
      v833 = v832;

      v834 = v1137;
      v835 = &v817[*(v1137 + 20)];
      *v835 = v830;
      v835[1] = v831;
      *&v817[*(v834 + 24)] = v826;
      *&v817[*(v834 + 28)] = v833;

      swift_unknownObjectRelease();

      goto LABEL_287;
    case 0xFu:
      v238 = *v103;
      v239 = v1141;
      v240 = v1141[17];
      if (!*(v240 + 16))
      {
        goto LABEL_180;
      }

      v241 = *(v238 + 2);
      v242 = *(v238 + 3);

      v243 = sub_1D5B69D90(v241, v242);
      LOBYTE(v241) = v244;

      if ((v241 & 1) == 0)
      {
        goto LABEL_180;
      }

      v245 = v239[3];
      if (!*(v245 + 16))
      {
        goto LABEL_180;
      }

      v246 = *(*(v240 + 56) + 8 * v243);
      v247 = *(v238 + 2);
      v248 = *(v238 + 3);

      v249 = sub_1D5B69D90(v247, v248);
      v251 = v250;

      if (v251)
      {
        v1138 = *(*(v245 + 56) + 8 * v249);
        v254 = v1138;
        MEMORY[0x1EEE9AC00](v252, v253);
        *(&v1098 - 4) = v254;
        *(&v1098 - 3) = v238;
        *(&v1098 - 2) = v239;
        type metadata accessor for SportsBracketDataVisualization(0);
        swift_unknownObjectRetain();
        v1132 = v246;
        v255 = v1098;
        v256 = v1101;
        v257 = v1136;
        sub_1D725BE7C();
        v1136 = v257;
        v258 = v1100;
        v259 = v1099;
        (*(v1100 + 16))(v1099, v255, v256);
        type metadata accessor for SportsBracketGroupDataVisualization(0);
        swift_allocObject();
        v260 = SportsBracketGroupDataVisualization.init(visualizations:)(v259);
        (*(v258 + 8))(v255, v256);
        sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
        v261 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
        v262 = swift_allocObject();
        *(v262 + 16) = xmmword_1D7273AE0;
        v1143 = (v262 + v261);
        v263 = swift_allocObject();
        v1131 = v260;
        *(v263 + 16) = v260;
        *aBlock = v263 | 0x4000000000000000;
        v264 = v263 | 0x4000000000000000;
        v1130 = (v263 | 0x4000000000000000);

        v265 = v1123;
        SportsDataVisualization.configuredEmbedUrl.getter(v1123);
        v1144 = v264;
        v266 = SportsDataVisualization.identifier.getter();
        v1126 = v267;
        v268 = v1133;
        v269 = *(v1133 + 56);
        v1127 = (v1133 + 56);
        v1128 = v269;
        v270 = v1122;
        v271 = v1135;
        (v269)(v1122, 1, 1, v1135);
        v272 = v1134;
        v273 = v1121;
        v274 = v1121 + v1134[13];
        (*(v268 + 16))(v1121 + v1134[5], v265, v271);
        v275 = v1126;
        *v273 = v266;
        v273[1] = v275;
        sub_1D631F9C8(v270, v273 + v272[6], sub_1D5B4D3E0);
        *(v273 + v272[7]) = 0;
        v276 = (v273 + v272[8]);
        *v276 = 0;
        v276[1] = 0;
        v277 = (v273 + v272[9]);
        *v277 = 0;
        v277[1] = 0;
        *(v273 + v272[10]) = 0;
        *(v273 + v272[11]) = MEMORY[0x1E69E7CD0];
        sub_1D631E0C8(v270, sub_1D5B4D3E0);
        (*(v268 + 8))(v1123, v271);
        *(v273 + v272[12]) = MEMORY[0x1E69E7CC0];
        *v274 = 0;
        *(v274 + 1) = 0;
        v278 = v1143;
        *v1143 = v266;
        v278[1] = v275;
        sub_1D631F9C8(v273, v278 + *(v1129 + 20), type metadata accessor for FormatWebEmbed);
        v279 = v1128;
        (v1128)(v270, 1, 1, v271);
        sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
        swift_allocObject();

        v280 = sub_1D725BB1C();
        v281 = v1129;
        v282 = v1143;
        *(v1143 + *(v1129 + 24)) = v280;
        v279(v270, 1, 1, v1135);
        swift_allocObject();
        v283 = sub_1D725BB1C();
        sub_1D631E0C8(v273, type metadata accessor for FormatWebEmbed);
        *(v282 + v281[7]) = v283;
        v284 = v281[9];
        sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
        (*(*(v285 - 8) + 56))(v282 + v284, 1, 1, v285);
        v286 = v281[8];
        *(v282 + v286) = v1130;
        v287 = type metadata accessor for WebEmbedDataVisualization(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v287 - 8) + 56))(v282 + v286, 0, 1, v287);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        v288 = *(v238 + 6);
        v289 = swift_beginAccess();
        v290 = *(v238 + 7);
        MEMORY[0x1EEE9AC00](v289, v291);
        *(&v1098 - 2) = v1141;
        v292 = v1140;
        v293 = v1142;
        sub_1D5D615EC(v1140, v1142);

        sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v290);
        v295 = v294;

        v296 = v1137;
        v297 = (v282 + *(v1137 + 20));
        *v297 = v292;
        v297[1] = v293;
        *(v282 + *(v296 + 24)) = v288;
        *(v282 + *(v296 + 28)) = v295;

        swift_unknownObjectRelease();

        return;
      }

LABEL_179:

      goto LABEL_180;
    case 0x10u:
      v114 = *v103;
      v115 = v1141[18];
      if (!*(v115 + 16))
      {
        goto LABEL_180;
      }

      v116 = v114[2];
      v117 = v114[3];

      v118 = sub_1D5B69D90(v116, v117);
      v120 = v119;

      if ((v120 & 1) == 0)
      {
        goto LABEL_180;
      }

      v121 = *(*(v115 + 56) + 8 * v118);
      v123 = *(v121 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config);
      v122 = *(v121 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 8);
      v125 = *(v121 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 16);
      v124 = *(v121 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 24);
      v126 = *(v121 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 32);
      v127 = *(v121 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 40);
      v1127 = v114;
      v1130 = v121;
      v1126 = v123;
      v1125 = v126;
      v1124 = v127;
      v1120 = v125;
      if (v122)
      {

        v1119 = v123;
        v128 = v122;
        v129 = v125;
        v130 = v124;
        v131 = v126;
        v1138 = v127;
        goto LABEL_240;
      }

      v1117 = v124;
      v1118 = 0;
      v617 = v1141;
      v618 = v1141[3];
      v619 = v114[4];
      v620 = v114[5];

      v621 = sub_1D5EC4C04(v619, v620, v618);
      v622 = [*(v121 + 48) eventLeagueTag];
      swift_beginAccess();
      v623 = v114[6];
      v624 = swift_beginAccess();
      v625 = v114[7];
      MEMORY[0x1EEE9AC00](v624, v626);
      *(&v1098 - 2) = v617;
      v1132 = v623;

      v627 = v1136;
      sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v625);
      v629 = v628;
      v1136 = v627;

      swift_beginAccess();
      v630 = v114[8];
      v631 = v114[9];

      v633 = sub_1D6C2B5D8(v630, v631, v632);

      v634 = v1108;
      sub_1D725894C();
      v1119 = sub_1D725893C();
      v636 = v635;
      (*(v1109 + 8))(v634, v1110);
      if (v621)
      {
        v637 = [v621 asSports];
      }

      else
      {
        v637 = 0;
      }

      aBlock[0] = 4;
      v736 = sub_1D69229B4(v621, v629, aBlock);

      *aBlock = MEMORY[0x1E69E7CC0];
      v1131 = v637;
      if (v621)
      {
        swift_getObjectType();
        LOBYTE(v1145) = 4;
        v737 = v1102;
        sub_1D6924500(&v1145, v1102);
        sub_1D631E0C8(v737, sub_1D5B4D3E0);
        v738 = [v621 asSports];
        if (v738)
        {
          v26 = v636;
          v739 = [v738 UMCCanonicalID];
          if (v739)
          {
            v1138 = v633;
            v1116 = v622;
            v1128 = v736;
            v740 = v739;
            v741 = sub_1D726207C();
            v743 = v742;

            v166 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v745 = *(v166 + 16);
            v744 = *(v166 + 24);
            if (v745 >= v744 >> 1)
            {
              v166 = sub_1D698CCE4((v744 > 1), v745 + 1, 1, v166);
            }

            swift_unknownObjectRelease();
            *(v166 + 16) = v745 + 1;
            v746 = (v166 + 32 * v745);
            v746[4] = 0x7463656A627573;
            v746[5] = 0xE700000000000000;
            v746[6] = v741;
            v746[7] = v743;
            *aBlock = v166;
            v26 = v636;
            v736 = v1128;
            v633 = v1138;
LABEL_233:
            v866 = [swift_unknownObjectRetain() UMCCanonicalID];
            if (v866)
            {
              v1138 = v633;
              v1128 = v736;
              v867 = v866;
              v175 = sub_1D726207C();
              v55 = v868;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
LABEL_298:
                v166 = sub_1D698CCE4(0, *(v166 + 16) + 1, 1, v166);
              }

              v870 = *(v166 + 16);
              v869 = *(v166 + 24);
              if (v870 >= v869 >> 1)
              {
                v166 = sub_1D698CCE4((v869 > 1), v870 + 1, 1, v166);
              }

              swift_unknownObjectRelease();
              *(v166 + 16) = v870 + 1;
              v871 = (v166 + 32 * v870);
              v871[4] = 0x65756761656CLL;
              v871[5] = 0xE600000000000000;
              v871[6] = v175;
              v871[7] = v55;
              *aBlock = v166;
              v131 = v1128;
              v633 = v1138;
            }

            else
            {
              v131 = v736;
              swift_unknownObjectRelease();
            }

            sub_1D5B5D358(0, &unk_1EDF01EA8, &type metadata for SportsConfigResourceParameter);
            v872 = swift_allocObject();
            *(v872 + 16) = xmmword_1D7270C10;
            *(v872 + 32) = 0x756F724764656566;
            *(v872 + 40) = 0xE900000000000070;
            *(v872 + 48) = 0x64657461727563;
            *(v872 + 56) = 0xE700000000000000;
            *(v872 + 64) = 0xD000000000000011;
            *(v872 + 72) = 0x80000001D73CAA10;
            *(v872 + 80) = 0x746C7561666564;
            *(v872 + 88) = 0xE700000000000000;
            sub_1D6987B44(v872);
            sub_1D6987B44(v633);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v1138 = *aBlock;
            v130 = v1132;
            v122 = v1118;
            v128 = v26;
            v129 = v1131;
LABEL_240:
            v1128 = v131;
            v1131 = v129;
            v1118 = v128;
            v1132 = v130;
            v873 = v129;
            v874 = v128;
            sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
            v875 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
            v876 = swift_allocObject();
            *(v876 + 16) = xmmword_1D7273AE0;
            v1117 = (v876 + v875);
            v877 = swift_allocObject();
            *aBlock = v1119;
            *&aBlock[8] = v874;
            *&aBlock[16] = v873;
            *&aBlock[24] = v130;
            *&v1148 = v131;
            *(&v1148 + 1) = v1138;
            sub_1D5F8B638(v1126, v122, v1120);
            *(v877 + 16) = SportsBoxScoreDataVisualization.with(config:)(aBlock);
            v878 = v877 | 0x6000000000000000;
            v1143 = (v877 | 0x6000000000000000);
            *aBlock = v877 | 0x6000000000000000;
            v879 = v1123;
            SportsDataVisualization.configuredEmbedUrl.getter(v1123);
            v1145 = v878;
            v880 = SportsDataVisualization.identifier.getter();
            v882 = v881;
            v883 = v1133;
            v1125 = *(v1133 + 56);
            v1126 = (v1133 + 56);
            v884 = v1122;
            v885 = v1135;
            (v1125)(v1122, 1, 1, v1135);
            v886 = v1134;
            v887 = v1121;
            v888 = v1121 + v1134[13];
            (*(v883 + 16))(v1121 + v1134[5], v879, v885);
            *v887 = v880;
            v887[1] = v882;
            sub_1D631F9C8(v884, v887 + v886[6], sub_1D5B4D3E0);
            *(v887 + v886[7]) = 0;
            v889 = (v887 + v886[8]);
            *v889 = 0;
            v889[1] = 0;
            v890 = (v887 + v886[9]);
            *v890 = 0;
            v890[1] = 0;
            *(v887 + v886[10]) = 0;
            *(v887 + v886[11]) = MEMORY[0x1E69E7CD0];
            sub_1D631E0C8(v884, sub_1D5B4D3E0);
            (*(v883 + 8))(v879, v885);
            *(v887 + v886[12]) = MEMORY[0x1E69E7CC0];
            *v888 = 0;
            *(v888 + 1) = 0;
            v891 = v1117;
            *v1117 = v880;
            *(v891 + 1) = v882;
            v892 = v1129;
            sub_1D631F9C8(v887, &v891[*(v1129 + 20)], type metadata accessor for FormatWebEmbed);
            v893 = v1125;
            (v1125)(v884, 1, 1, v885);
            sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
            swift_allocObject();

            *&v891[v892[6]] = sub_1D725BB1C();
            v893(v884, 1, 1, v1135);
            swift_allocObject();
            v894 = sub_1D725BB1C();
            sub_1D631E0C8(v887, type metadata accessor for FormatWebEmbed);
            *&v891[v892[7]] = v894;
            v895 = v892[9];
            sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
            (*(*(v896 - 8) + 56))(&v891[v895], 1, 1, v896);
            v897 = v892[8];
            *&v891[v897] = v1143;
            v898 = type metadata accessor for WebEmbedDataVisualization(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v898 - 8) + 56))(&v891[v897], 0, 1, v898);
            swift_storeEnumTagMultiPayload();
            v899 = v1127;
            swift_beginAccess();
            v900 = *(v899 + 48);
            v901 = swift_beginAccess();
            v902 = *(v899 + 56);
            MEMORY[0x1EEE9AC00](v901, v903);
            *(&v1098 - 2) = v1141;
            v904 = v1140;
            v905 = v1142;
            sub_1D5D615EC(v1140, v1142);

            sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v902);
            v907 = v906;

            v908 = v1137;
            v909 = &v891[*(v1137 + 20)];
            *v909 = v904;
            v909[1] = v905;
            *&v891[*(v908 + 24)] = v900;
            *&v891[*(v908 + 28)] = v907;

            goto LABEL_288;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v26 = v636;
        }
      }

      else
      {
        v26 = v636;
        v747 = v1102;
        (*(v1133 + 56))(v1102, 1, 1, v1135);
        sub_1D631E0C8(v747, sub_1D5B4D3E0);
      }

      v166 = MEMORY[0x1E69E7CC0];
      goto LABEL_233;
    case 0x11u:
      v344 = *v103;
      v345 = v1141[19];
      if (!*(v345 + 16))
      {
        goto LABEL_180;
      }

      v346 = v344[2];
      v347 = v344[3];

      v348 = sub_1D5B69D90(v346, v347);
      v350 = v349;

      if ((v350 & 1) == 0)
      {
        goto LABEL_180;
      }

      v351 = *(*(v345 + 56) + 8 * v348);
      v352 = *(v351 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
      v353 = *(v351 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8);
      v355 = *(v351 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 16);
      v354 = *(v351 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 24);
      v356 = *(v351 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 32);
      v357 = *(v351 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 40);
      v1126 = v344;
      v1127 = v351;
      v1125 = v352;
      v1124 = v356;
      v1120 = v357;
      v1119 = v354;
      if (v353)
      {

        v358 = v352;
        v359 = v353;
        v360 = v355;
        v361 = v354;
        v1132 = v356;
        v1138 = v357;
        goto LABEL_251;
      }

      v1118 = 0;
      v1116 = v355;
      v659 = v1141;
      v660 = v1141[3];
      v661 = v344[4];
      v662 = v344[5];

      v663 = sub_1D5EC4C04(v661, v662, v660);
      v664 = [*(v351 + 48) eventLeagueTag];
      swift_beginAccess();
      v665 = v344[6];
      v666 = swift_beginAccess();
      v667 = v344[7];
      MEMORY[0x1EEE9AC00](v666, v668);
      *(&v1098 - 2) = v659;
      v1131 = v665;

      v669 = v1136;
      sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v667);
      v671 = v670;
      v1136 = v669;

      swift_beginAccess();
      v672 = v344[8];
      v673 = v344[9];

      v675 = sub_1D6C2B5D8(v672, v673, v674);

      v676 = v1108;
      sub_1D725894C();
      v677 = sub_1D725893C();
      v1130 = v678;
      (*(v1109 + 8))(v676, v1110);
      v1117 = v677;
      if (v663)
      {
        v1128 = [v663 asSports];
      }

      else
      {
        v1128 = 0;
      }

      v748 = v1133;
      aBlock[0] = 5;
      v749 = sub_1D69229B4(v663, v671, aBlock);

      *aBlock = MEMORY[0x1E69E7CC0];
      if (v663)
      {
        swift_getObjectType();
        LOBYTE(v1145) = 5;
        v750 = v1104;
        sub_1D6924500(&v1145, v1104);
        sub_1D631E0C8(v750, sub_1D5B4D3E0);
        v751 = [v663 asSports];
        if (v751)
        {
          v752 = [v751 UMCCanonicalID];
          if (v752)
          {
            v753 = v752;
            v754 = sub_1D726207C();
            v1138 = v755;

            v756 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v758 = *(v756 + 2);
            v757 = *(v756 + 3);
            if (v758 >= v757 >> 1)
            {
              v756 = sub_1D698CCE4((v757 > 1), v758 + 1, 1, v756);
            }

            swift_unknownObjectRelease();
            *(v756 + 2) = v758 + 1;
            v759 = &v756[32 * v758];
            *(v759 + 4) = 0x7463656A627573;
            *(v759 + 5) = 0xE700000000000000;
            v760 = v1138;
            *(v759 + 6) = v754;
            *(v759 + 7) = v760;
            *aBlock = v756;
LABEL_243:
            v910 = [swift_unknownObjectRetain() UMCCanonicalID];
            if (v910)
            {
              v911 = v910;
              v912 = sub_1D726207C();
              v914 = v913;

              v915 = v749;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v756 = sub_1D698CCE4(0, *(v756 + 2) + 1, 1, v756);
              }

              v917 = *(v756 + 2);
              v916 = *(v756 + 3);
              if (v917 >= v916 >> 1)
              {
                v756 = sub_1D698CCE4((v916 > 1), v917 + 1, 1, v756);
              }

              swift_unknownObjectRelease();
              *(v756 + 2) = v917 + 1;
              v918 = &v756[32 * v917];
              *(v918 + 4) = 0x65756761656CLL;
              *(v918 + 5) = 0xE600000000000000;
              *(v918 + 6) = v912;
              *(v918 + 7) = v914;
              *aBlock = v756;
            }

            else
            {
              v915 = v749;
              swift_unknownObjectRelease();
            }

            v1132 = v915;
            sub_1D5B5D358(0, &unk_1EDF01EA8, &type metadata for SportsConfigResourceParameter);
            v919 = swift_allocObject();
            *(v919 + 16) = xmmword_1D7270C10;
            *(v919 + 32) = 0x756F724764656566;
            *(v919 + 40) = 0xE900000000000070;
            *(v919 + 48) = 0x64657461727563;
            *(v919 + 56) = 0xE700000000000000;
            *(v919 + 64) = 0xD000000000000011;
            *(v919 + 72) = 0x80000001D73CAA10;
            *(v919 + 80) = 0x746C7561666564;
            *(v919 + 88) = 0xE700000000000000;
            sub_1D6987B44(v919);
            sub_1D6987B44(v675);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v1138 = *aBlock;
            v361 = v1131;
            v359 = v1130;
            v360 = v1128;
            v355 = v1116;
            v353 = v1118;
            v358 = v1117;
LABEL_251:
            v1130 = v359;
            v1128 = v360;
            v1131 = v361;
            v920 = v360;
            sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
            v921 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
            v922 = swift_allocObject();
            *(v922 + 16) = xmmword_1D7273AE0;
            v1118 = (v922 + v921);
            v923 = swift_allocObject();
            *aBlock = v358;
            *&aBlock[8] = v359;
            *&aBlock[16] = v920;
            *&aBlock[24] = v361;
            *&v1148 = v1132;
            *(&v1148 + 1) = v1138;
            sub_1D5F8B638(v1125, v353, v355);
            *(v923 + 16) = SportsLineScoreDataVisualization.with(config:)(aBlock);
            v924 = v923 | 0x8000000000000000;
            v1143 = (v923 | 0x8000000000000000);
            *aBlock = v923 | 0x8000000000000000;
            v925 = v1123;
            SportsDataVisualization.configuredEmbedUrl.getter(v1123);
            v1145 = v924;
            v926 = SportsDataVisualization.identifier.getter();
            v928 = v927;
            v929 = v1133;
            v1124 = *(v1133 + 56);
            v1125 = (v1133 + 56);
            v930 = v1122;
            v931 = v1135;
            (v1124)(v1122, 1, 1, v1135);
            v932 = v1134;
            v933 = v1121;
            v934 = v1121 + v1134[13];
            (*(v929 + 16))(v1121 + v1134[5], v925, v931);
            *v933 = v926;
            v933[1] = v928;
            sub_1D631F9C8(v930, v933 + v932[6], sub_1D5B4D3E0);
            *(v933 + v932[7]) = 0;
            v935 = (v933 + v932[8]);
            *v935 = 0;
            v935[1] = 0;
            v936 = (v933 + v932[9]);
            *v936 = 0;
            v936[1] = 0;
            *(v933 + v932[10]) = 0;
            *(v933 + v932[11]) = MEMORY[0x1E69E7CD0];
            sub_1D631E0C8(v930, sub_1D5B4D3E0);
            (*(v929 + 8))(v925, v931);
            *(v933 + v932[12]) = MEMORY[0x1E69E7CC0];
            *v934 = 0;
            *(v934 + 1) = 0;
            v937 = v1118;
            *v1118 = v926;
            v937[1] = v928;
            v938 = v1129;
            sub_1D631F9C8(v933, v937 + *(v1129 + 20), type metadata accessor for FormatWebEmbed);
            v939 = v1124;
            (v1124)(v930, 1, 1, v931);
            sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
            swift_allocObject();

            *(v937 + v938[6]) = sub_1D725BB1C();
            v939(v930, 1, 1, v1135);
            swift_allocObject();
            v940 = sub_1D725BB1C();
            sub_1D631E0C8(v933, type metadata accessor for FormatWebEmbed);
            *(v937 + v938[7]) = v940;
            v941 = v938[9];
            sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
            (*(*(v942 - 8) + 56))(v937 + v941, 1, 1, v942);
            v943 = v938[8];
            *(v937 + v943) = v1143;
            v944 = type metadata accessor for WebEmbedDataVisualization(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v944 - 8) + 56))(v937 + v943, 0, 1, v944);
            swift_storeEnumTagMultiPayload();
            v945 = v1126;
            swift_beginAccess();
            v946 = v945[6];
            v947 = swift_beginAccess();
            v948 = v945[7];
            MEMORY[0x1EEE9AC00](v947, v949);
            *(&v1098 - 2) = v1141;
            v950 = v1140;
            v951 = v1142;
            sub_1D5D615EC(v1140, v1142);

            sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v948);
            v953 = v952;

            v954 = v1137;
            v955 = (v937 + *(v1137 + 20));
            *v955 = v950;
            v955[1] = v951;
            *(v937 + *(v954 + 24)) = v946;
            *(v937 + *(v954 + 28)) = v953;
LABEL_275:

LABEL_287:

LABEL_288:
            swift_unknownObjectRelease();
            return;
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v761 = v1104;
        (*(v748 + 56))(v1104, 1, 1, v1135);
        sub_1D631E0C8(v761, sub_1D5B4D3E0);
      }

      v756 = MEMORY[0x1E69E7CC0];
      goto LABEL_243;
    case 0x12u:
      v417 = *v103;
      v418 = v1141[20];
      if (!*(v418 + 16))
      {
        goto LABEL_180;
      }

      v419 = v417[2];
      v420 = v417[3];

      v421 = sub_1D5B69D90(v419, v420);
      v423 = v422;

      if ((v423 & 1) == 0)
      {
        goto LABEL_180;
      }

      v424 = *(*(v418 + 56) + 8 * v421);
      v425 = *(v424 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config);
      v426 = *(v424 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 8);
      v428 = *(v424 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 16);
      v427 = *(v424 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 24);
      v429 = *(v424 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 32);
      v430 = *(v424 + OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config + 40);
      v1126 = v417;
      v1127 = v424;
      v1125 = v425;
      v1124 = v429;
      v1120 = v430;
      v1119 = v427;
      if (v426)
      {

        v431 = v425;
        v432 = v426;
        v433 = v428;
        v434 = v427;
        v1132 = v429;
        v1138 = v430;
        goto LABEL_274;
      }

      v1118 = 0;
      v1116 = v428;
      v694 = v1141;
      v695 = v1141[3];
      v696 = v417[4];
      v697 = v417[5];

      v698 = sub_1D5EC4C04(v696, v697, v695);
      v699 = [*(v424 + 48) eventLeagueTag];
      swift_beginAccess();
      v700 = v417[6];
      v701 = swift_beginAccess();
      v702 = v417[7];
      MEMORY[0x1EEE9AC00](v701, v703);
      *(&v1098 - 2) = v694;
      v1131 = v700;

      v704 = v1136;
      sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v702);
      v706 = v705;
      v1136 = v704;

      swift_beginAccess();
      v707 = v417[8];
      v708 = v417[9];

      v710 = sub_1D6C2B5D8(v707, v708, v709);

      v711 = v1108;
      sub_1D725894C();
      v712 = sub_1D725893C();
      v1130 = v713;
      (*(v1109 + 8))(v711, v1110);
      v1117 = v712;
      if (v698)
      {
        v1128 = [v698 asSports];
      }

      else
      {
        v1128 = 0;
      }

      v762 = v1133;
      aBlock[0] = 6;
      v763 = sub_1D69229B4(v698, v706, aBlock);

      *aBlock = MEMORY[0x1E69E7CC0];
      if (v698)
      {
        swift_getObjectType();
        LOBYTE(v1145) = 6;
        v764 = v1105;
        sub_1D6924500(&v1145, v1105);
        sub_1D631E0C8(v764, sub_1D5B4D3E0);
        v765 = [v698 asSports];
        if (v765)
        {
          v766 = [v765 UMCCanonicalID];
          if (v766)
          {
            v767 = v766;
            v768 = sub_1D726207C();
            v1138 = v769;

            v770 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v772 = *(v770 + 2);
            v771 = *(v770 + 3);
            if (v772 >= v771 >> 1)
            {
              v770 = sub_1D698CCE4((v771 > 1), v772 + 1, 1, v770);
            }

            swift_unknownObjectRelease();
            *(v770 + 2) = v772 + 1;
            v773 = &v770[32 * v772];
            *(v773 + 4) = 0x7463656A627573;
            *(v773 + 5) = 0xE700000000000000;
            v774 = v1138;
            *(v773 + 6) = v768;
            *(v773 + 7) = v774;
            *aBlock = v770;
LABEL_266:
            v1002 = [swift_unknownObjectRetain() UMCCanonicalID];
            if (v1002)
            {
              v1003 = v1002;
              v1004 = sub_1D726207C();
              v1006 = v1005;

              v1007 = v763;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v770 = sub_1D698CCE4(0, *(v770 + 2) + 1, 1, v770);
              }

              v1009 = *(v770 + 2);
              v1008 = *(v770 + 3);
              if (v1009 >= v1008 >> 1)
              {
                v770 = sub_1D698CCE4((v1008 > 1), v1009 + 1, 1, v770);
              }

              swift_unknownObjectRelease();
              *(v770 + 2) = v1009 + 1;
              v1010 = &v770[32 * v1009];
              *(v1010 + 4) = 0x65756761656CLL;
              *(v1010 + 5) = 0xE600000000000000;
              *(v1010 + 6) = v1004;
              *(v1010 + 7) = v1006;
              *aBlock = v770;
            }

            else
            {
              v1007 = v763;
              swift_unknownObjectRelease();
            }

            v1132 = v1007;
            sub_1D5B5D358(0, &unk_1EDF01EA8, &type metadata for SportsConfigResourceParameter);
            v1011 = swift_allocObject();
            *(v1011 + 16) = xmmword_1D7270C10;
            *(v1011 + 32) = 0x756F724764656566;
            *(v1011 + 40) = 0xE900000000000070;
            *(v1011 + 48) = 0x64657461727563;
            *(v1011 + 56) = 0xE700000000000000;
            *(v1011 + 64) = 0xD000000000000011;
            *(v1011 + 72) = 0x80000001D73CAA10;
            *(v1011 + 80) = 0x746C7561666564;
            *(v1011 + 88) = 0xE700000000000000;
            sub_1D6987B44(v1011);
            sub_1D6987B44(v710);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v1138 = *aBlock;
            v434 = v1131;
            v432 = v1130;
            v433 = v1128;
            v428 = v1116;
            v426 = v1118;
            v431 = v1117;
LABEL_274:
            v1130 = v432;
            v1128 = v433;
            v1131 = v434;
            v1012 = v433;
            sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
            v1013 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
            v1014 = swift_allocObject();
            *(v1014 + 16) = xmmword_1D7273AE0;
            v1118 = (v1014 + v1013);
            v1015 = swift_allocObject();
            *aBlock = v431;
            *&aBlock[8] = v432;
            *&aBlock[16] = v1012;
            *&aBlock[24] = v434;
            *&v1148 = v1132;
            *(&v1148 + 1) = v1138;
            sub_1D5F8B638(v1125, v426, v428);
            *(v1015 + 16) = SportsInjuryReportDataVisualization.with(config:)(aBlock);
            v1016 = v1015 | 0xA000000000000000;
            v1143 = (v1015 | 0xA000000000000000);
            *aBlock = v1015 | 0xA000000000000000;
            v1017 = v1123;
            SportsDataVisualization.configuredEmbedUrl.getter(v1123);
            v1145 = v1016;
            v1018 = SportsDataVisualization.identifier.getter();
            v1020 = v1019;
            v1021 = v1133;
            v1124 = *(v1133 + 56);
            v1125 = (v1133 + 56);
            v1022 = v1122;
            v1023 = v1135;
            (v1124)(v1122, 1, 1, v1135);
            v1024 = v1134;
            v1025 = v1121;
            v1026 = v1121 + v1134[13];
            (*(v1021 + 16))(v1121 + v1134[5], v1017, v1023);
            *v1025 = v1018;
            v1025[1] = v1020;
            sub_1D631F9C8(v1022, v1025 + v1024[6], sub_1D5B4D3E0);
            *(v1025 + v1024[7]) = 0;
            v1027 = (v1025 + v1024[8]);
            *v1027 = 0;
            v1027[1] = 0;
            v1028 = (v1025 + v1024[9]);
            *v1028 = 0;
            v1028[1] = 0;
            *(v1025 + v1024[10]) = 0;
            *(v1025 + v1024[11]) = MEMORY[0x1E69E7CD0];
            sub_1D631E0C8(v1022, sub_1D5B4D3E0);
            (*(v1021 + 8))(v1017, v1023);
            *(v1025 + v1024[12]) = MEMORY[0x1E69E7CC0];
            *v1026 = 0;
            *(v1026 + 1) = 0;
            v1029 = v1118;
            *v1118 = v1018;
            v1029[1] = v1020;
            v1030 = v1129;
            sub_1D631F9C8(v1025, v1029 + *(v1129 + 20), type metadata accessor for FormatWebEmbed);
            v1031 = v1124;
            (v1124)(v1022, 1, 1, v1023);
            sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
            swift_allocObject();

            *(v1029 + v1030[6]) = sub_1D725BB1C();
            v1031(v1022, 1, 1, v1135);
            swift_allocObject();
            v1032 = sub_1D725BB1C();
            sub_1D631E0C8(v1025, type metadata accessor for FormatWebEmbed);
            *(v1029 + v1030[7]) = v1032;
            v1033 = v1030[9];
            sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
            (*(*(v1034 - 8) + 56))(v1029 + v1033, 1, 1, v1034);
            v1035 = v1030[8];
            *(v1029 + v1035) = v1143;
            v1036 = type metadata accessor for WebEmbedDataVisualization(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v1036 - 8) + 56))(v1029 + v1035, 0, 1, v1036);
            swift_storeEnumTagMultiPayload();
            v1037 = v1126;
            swift_beginAccess();
            v1038 = v1037[6];
            v1039 = swift_beginAccess();
            v1040 = v1037[7];
            MEMORY[0x1EEE9AC00](v1039, v1041);
            *(&v1098 - 2) = v1141;
            v1042 = v1140;
            v1043 = v1142;
            sub_1D5D615EC(v1140, v1142);

            sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v1040);
            v1045 = v1044;

            v1046 = v1137;
            v1047 = (v1029 + *(v1137 + 20));
            *v1047 = v1042;
            v1047[1] = v1043;
            *(v1029 + *(v1046 + 24)) = v1038;
            *(v1029 + *(v1046 + 28)) = v1045;
            goto LABEL_275;
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v775 = v1105;
        (*(v762 + 56))(v1105, 1, 1, v1135);
        sub_1D631E0C8(v775, sub_1D5B4D3E0);
      }

      v770 = MEMORY[0x1E69E7CC0];
      goto LABEL_266;
    case 0x13u:
      v474 = *v103;
      v475 = v1141[21];
      if (!*(v475 + 16))
      {
        goto LABEL_180;
      }

      v476 = v474[2];
      v477 = v474[3];

      v478 = sub_1D5B69D90(v476, v477);
      v480 = v479;

      if ((v480 & 1) == 0)
      {
        goto LABEL_180;
      }

      v481 = *(*(v475 + 56) + 8 * v478);
      v482 = *(v481 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
      v483 = *(v481 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8);
      v485 = *(v481 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 16);
      v484 = *(v481 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 24);
      v487 = *(v481 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 32);
      v486 = *(v481 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 40);
      v1127 = v474;
      v1130 = v481;
      v1126 = v482;
      v1125 = v483;
      v1124 = v487;
      v1120 = v486;
      v1119 = v485;
      if (v483)
      {

        v488 = v482;
        v489 = v483;
        v490 = v485;
        v491 = v484;
        v492 = v487;
        v1138 = v486;
        goto LABEL_286;
      }

      v1118 = v484;
      v714 = v1141;
      v715 = v1141[3];
      v716 = v474[4];
      v717 = v474[5];

      v718 = sub_1D5EC4C04(v716, v717, v715);
      [*(v481 + 48) eventLeagueTag];
      swift_beginAccess();
      v719 = v474[6];
      v720 = swift_beginAccess();
      v721 = v474[7];
      MEMORY[0x1EEE9AC00](v720, v722);
      *(&v1098 - 2) = v714;
      v1132 = v719;

      v723 = v1136;
      sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v721);
      v725 = v724;
      v1136 = v723;

      swift_beginAccess();
      v726 = v474[8];
      v727 = v474[9];

      v729 = sub_1D6C2B5D8(v726, v727, v728);

      v730 = v1108;
      sub_1D725894C();
      v731 = sub_1D725893C();
      v489 = v732;
      (*(v1109 + 8))(v730, v1110);
      v1117 = v731;
      if (v718)
      {
        v733 = [v718 asSports];
      }

      else
      {
        v733 = 0;
      }

      aBlock[0] = 7;
      v776 = sub_1D69229B4(v718, v725, aBlock);

      *aBlock = MEMORY[0x1E69E7CC0];
      if (v718)
      {
        swift_getObjectType();
        LOBYTE(v1145) = 7;
        v777 = v1106;
        sub_1D6924500(&v1145, v1106);
        sub_1D631E0C8(v777, sub_1D5B4D3E0);
        v778 = [v718 asSports];
        if (v778)
        {
          v779 = [v778 UMCCanonicalID];
          if (v779)
          {
            v1138 = v729;
            v1131 = v776;
            v780 = v489;
            v781 = v779;
            v782 = sub_1D726207C();
            v1128 = v783;

            v784 = sub_1D698CCE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v786 = *(v784 + 2);
            v785 = *(v784 + 3);
            if (v786 >= v785 >> 1)
            {
              v784 = sub_1D698CCE4((v785 > 1), v786 + 1, 1, v784);
            }

            swift_unknownObjectRelease();
            *(v784 + 2) = v786 + 1;
            v787 = &v784[32 * v786];
            *(v787 + 4) = 0x7463656A627573;
            *(v787 + 5) = 0xE700000000000000;
            v788 = v1128;
            *(v787 + 6) = v782;
            *(v787 + 7) = v788;
            *aBlock = v784;
            v489 = v780;
            v776 = v1131;
            v729 = v1138;
LABEL_278:
            v1048 = [swift_unknownObjectRetain() UMCCanonicalID];
            if (v1048)
            {
              v1138 = v729;
              v1131 = v776;
              v1128 = v733;
              v1049 = v489;
              v1050 = v1048;
              v1051 = sub_1D726207C();
              v1053 = v1052;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *aBlock = v784;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v784 = sub_1D698CCE4(0, *(v784 + 2) + 1, 1, v784);
                *aBlock = v784;
              }

              v1056 = *(v784 + 2);
              v1055 = *(v784 + 3);
              if (v1056 >= v1055 >> 1)
              {
                v784 = sub_1D698CCE4((v1055 > 1), v1056 + 1, 1, v784);
              }

              swift_unknownObjectRelease();
              *(v784 + 2) = v1056 + 1;
              v1057 = &v784[32 * v1056];
              *(v1057 + 4) = 0x65756761656CLL;
              *(v1057 + 5) = 0xE600000000000000;
              *(v1057 + 6) = v1051;
              *(v1057 + 7) = v1053;
              *aBlock = v784;
              v489 = v1049;
              v1058 = v1128;
              v776 = v1131;
              v729 = v1138;
            }

            else
            {
              v1058 = v733;
              swift_unknownObjectRelease();
            }

            sub_1D5B5D358(0, &unk_1EDF01EA8, &type metadata for SportsConfigResourceParameter);
            v1059 = swift_allocObject();
            *(v1059 + 16) = xmmword_1D7270C10;
            *(v1059 + 32) = 0x756F724764656566;
            *(v1059 + 40) = 0xE900000000000070;
            *(v1059 + 48) = 0x64657461727563;
            *(v1059 + 56) = 0xE700000000000000;
            *(v1059 + 64) = 0xD000000000000011;
            *(v1059 + 72) = 0x80000001D73CAA10;
            *(v1059 + 80) = 0x746C7561666564;
            *(v1059 + 88) = 0xE700000000000000;
            sub_1D6987B44(v1059);
            sub_1D6987B44(v729);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v1138 = *aBlock;
            v491 = v1132;
            v488 = v1117;
            v490 = v1058;
            v492 = v776;
LABEL_286:
            v1131 = v492;
            v1128 = v490;
            v1118 = v489;
            v1132 = v491;
            v1060 = v490;
            sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
            v1061 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
            v1062 = swift_allocObject();
            *(v1062 + 16) = xmmword_1D7273AE0;
            v1117 = (v1062 + v1061);
            v1063 = swift_allocObject();
            *aBlock = v488;
            *&aBlock[8] = v489;
            *&aBlock[16] = v1060;
            *&aBlock[24] = v491;
            *&v1148 = v492;
            *(&v1148 + 1) = v1138;
            sub_1D5F8B638(v1126, v1125, v1119);
            *(v1063 + 16) = SportsKeyPlayerDataVisualization.with(config:)(aBlock);
            v1064 = v1063 | 0xC000000000000000;
            v1143 = (v1063 | 0xC000000000000000);
            *aBlock = v1063 | 0xC000000000000000;
            v1065 = v1123;
            SportsDataVisualization.configuredEmbedUrl.getter(v1123);
            v1145 = v1064;
            v1066 = SportsDataVisualization.identifier.getter();
            v1068 = v1067;
            v1069 = v1133;
            v1125 = *(v1133 + 56);
            v1126 = (v1133 + 56);
            v1070 = v1122;
            v1071 = v1135;
            (v1125)(v1122, 1, 1, v1135);
            v1072 = v1134;
            v1073 = v1121;
            v1074 = v1121 + v1134[13];
            (*(v1069 + 16))(v1121 + v1134[5], v1065, v1071);
            *v1073 = v1066;
            v1073[1] = v1068;
            sub_1D631F9C8(v1070, v1073 + v1072[6], sub_1D5B4D3E0);
            *(v1073 + v1072[7]) = 0;
            v1075 = (v1073 + v1072[8]);
            *v1075 = 0;
            v1075[1] = 0;
            v1076 = (v1073 + v1072[9]);
            *v1076 = 0;
            v1076[1] = 0;
            *(v1073 + v1072[10]) = 0;
            *(v1073 + v1072[11]) = MEMORY[0x1E69E7CD0];
            sub_1D631E0C8(v1070, sub_1D5B4D3E0);
            v1077 = v1065;
            v1078 = v1071;
            (*(v1069 + 8))(v1077, v1071);
            *(v1073 + v1072[12]) = MEMORY[0x1E69E7CC0];
            *v1074 = 0;
            *(v1074 + 1) = 0;
            v1079 = v1117;
            *v1117 = v1066;
            *(v1079 + 1) = v1068;
            v1080 = v1129;
            sub_1D631F9C8(v1073, &v1079[*(v1129 + 20)], type metadata accessor for FormatWebEmbed);
            v1081 = v1125;
            (v1125)(v1070, 1, 1, v1078);
            sub_1D631F8F4(0, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
            swift_allocObject();

            *&v1079[v1080[6]] = sub_1D725BB1C();
            v1081(v1070, 1, 1, v1135);
            swift_allocObject();
            v1082 = sub_1D725BB1C();
            sub_1D631E0C8(v1073, type metadata accessor for FormatWebEmbed);
            *&v1079[v1080[7]] = v1082;
            v1083 = v1080[9];
            sub_1D631F8F4(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
            (*(*(v1084 - 8) + 56))(&v1079[v1083], 1, 1, v1084);
            v1085 = v1080[8];
            *&v1079[v1085] = v1143;
            v1086 = type metadata accessor for WebEmbedDataVisualization(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v1086 - 8) + 56))(&v1079[v1085], 0, 1, v1086);
            swift_storeEnumTagMultiPayload();
            v1087 = v1127;
            swift_beginAccess();
            v1088 = *(v1087 + 48);
            v1089 = swift_beginAccess();
            v1090 = *(v1087 + 56);
            MEMORY[0x1EEE9AC00](v1089, v1091);
            *(&v1098 - 2) = v1141;
            v1092 = v1140;
            v1093 = v1142;
            sub_1D5D615EC(v1140, v1142);

            sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v1090);
            v1095 = v1094;

            v1096 = v1137;
            v1097 = &v1079[*(v1137 + 20)];
            *v1097 = v1092;
            v1097[1] = v1093;
            *&v1079[*(v1096 + 24)] = v1088;
            *&v1079[*(v1096 + 28)] = v1095;

            goto LABEL_287;
          }

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v789 = v1106;
        (*(v1133 + 56))(v1106, 1, 1, v1135);
        sub_1D631E0C8(v789, sub_1D5B4D3E0);
      }

      v784 = MEMORY[0x1E69E7CC0];
      goto LABEL_278;
    default:
      v105 = *v103;
      v106 = *(*v103 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
      v107 = *v1141;
      swift_retain_n();
      v108 = v105;
      if (*(v107 + 16))
      {
        goto LABEL_3;
      }

LABEL_5:

      do
      {

        if (!v106)
        {

          return;
        }

        v108 = v106;
        v106 = *(v106 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
        if (!*(v107 + 16))
        {
          goto LABEL_5;
        }

LABEL_3:
        v109 = *(v108 + 16);
        v110 = *(v108 + 24);

        v111 = sub_1D5B69D90(v109, v110);
        v113 = v112;
      }

      while ((v113 & 1) == 0);
      v527 = *(*(v107 + 56) + 8 * v111);
      v528 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties;
      swift_beginAccess();
      v529 = *(v105 + v528);
      swift_unknownObjectRetain();

      v530 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__selectors;
      swift_beginAccess();
      v531 = *(v108 + v530);

      v532 = sub_1D5EEC8D4(v529, v531);
      v534 = v533;

      if (v534)
      {
        v535 = swift_allocObject();
        *(v535 + 16) = v532;
        *(v535 + 24) = v534;
        *&v1148 = sub_1D631FB30;
        *(&v1148 + 1) = v535;
        *aBlock = MEMORY[0x1E69E9820];
        *&aBlock[8] = 1107296256;
        *&aBlock[16] = sub_1D5C3BF74;
        *&aBlock[24] = &block_descriptor_35;
        v536 = _Block_copy(aBlock);

        v537 = FCMutateHeadlineWithBlock();
        _Block_release(v536);
        if (v537)
        {
          swift_unknownObjectRelease();
          v527 = v537;
        }
      }

      v1138 = v527;
      sub_1D631F8F4(0, &unk_1EDF19610, type metadata accessor for FormatContentSlotItemResolution, MEMORY[0x1E69E6F90]);
      v538 = (*(v1143 + 80) + 32) & ~*(v1143 + 80);
      v539 = swift_allocObject();
      *(v539 + 16) = xmmword_1D7273AE0;
      v540 = v539 + v538;
      *(v539 + v538) = v527;
      swift_storeEnumTagMultiPayload();
      v541 = *(v108 + v530);
      v542 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties;
      v543 = swift_beginAccess();
      v1143 = &v1098;
      v544 = *(v108 + v542);
      MEMORY[0x1EEE9AC00](v543, v545);
      *(&v1098 - 2) = v1141;
      swift_unknownObjectRetain();
      v546 = v1140;
      v547 = v1142;
      sub_1D5D615EC(v1140, v1142);

      sub_1D7195F4C(sub_1D631FB38, (&v1098 - 4), v544);
      v549 = v548;

      v550 = v1137;
      v551 = (v540 + *(v1137 + 20));
      *v551 = v546;
      v551[1] = v547;
      *(v540 + *(v550 + 24)) = v541;
      *(v540 + *(v550 + 28)) = v549;

      swift_unknownObjectRelease();

      return;
  }
}

void sub_1D631B9FC(void *a1)
{
  if (a1)
  {
    v2 = sub_1D726203C();
    [a1 setDismissingIdentifier_];
  }
}

uint64_t sub_1D631BA64(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + *(type metadata accessor for FormatWebEmbed(0) + 28));
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
    v5 = *a2;
    swift_retain_n();
    v6 = v3;
    if (!*(v5 + 16))
    {
      goto LABEL_5;
    }

LABEL_3:
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);

    v9 = sub_1D5B69D90(v7, v8);
    v11 = v10;

    if (v11)
    {

      v12 = *(*(v5 + 56) + 8 * v9);
      swift_unknownObjectRetain();

      swift_beginAccess();
      swift_beginAccess();

      return v12;
    }

    while (1)
    {

      if (!v4)
      {
        break;
      }

      v6 = v4;
      v4 = *(v4 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
      if (*(v5 + 16))
      {
        goto LABEL_3;
      }

LABEL_5:
    }
  }

  return 0;
}

int *sub_1D631BBF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D631F9C8(a1, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
  v10 = a2[5];
  v11 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (*(v10 + 16))
  {
    v13 = sub_1D5B69D90(v11, v12);
    v15 = v14;

    if (v15)
    {
      v16 = (*(v10 + 56) + 16 * v13);
      v17 = *v16;
      v18 = v16[1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = 0;
  v18 = 0;
LABEL_6:
  v19 = a2[4];
  v20 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (*(v19 + 16))
  {
    v39 = a3;
    v22 = v9;
    v23 = v18;
    v24 = v17;
    v25 = sub_1D5B69D90(v20, v21);
    v27 = v26;

    if (v27)
    {
      v28 = *(*(v19 + 56) + 8 * v25);
    }

    else
    {
      v28 = MEMORY[0x1E69E7CD0];
    }

    v17 = v24;
    v18 = v23;
    v9 = v22;
    a3 = v39;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CD0];
  }

  v29 = a2[3];
  v30 = FormatContentSlotItemObject.Resolved.identifier.getter();
  if (!*(v29 + 16))
  {

    goto LABEL_16;
  }

  v32 = sub_1D5B69D90(v30, v31);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_16:
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v35 = *(*(v29 + 56) + 8 * v32);

LABEL_17:
  sub_1D631FAC8(v9, a3, type metadata accessor for FormatContentSlotItemObject.Resolved);
  result = type metadata accessor for FormatContentSlotItemResolution(0);
  v37 = (a3 + result[5]);
  *v37 = v17;
  v37[1] = v18;
  *(a3 + result[6]) = v28;
  *(a3 + result[7]) = v35;
  return result;
}

uint64_t sub_1D631BE38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  if ((~v7 & 0xF000000000000007) != 0)
  {
    sub_1D631F8F4(0, &qword_1EDF19910, type metadata accessor for FormatOption, MEMORY[0x1E69E6F90]);
    v12 = (type metadata accessor for FormatOption(0) - 8);
    v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    v14 = (v11 + v13);
    *v14 = v5;
    v14[1] = v6;
    v14[2] = v7;
    v14[3] = 1;
    v15 = v12[9];
    v16 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v16 - 8) + 56))(v11 + v13 + v15, 1, 1, v16);
  }

  else
  {
    v8 = *(a2 + 88);
    if (!*(v8 + 16) || (v9 = sub_1D5B69D90(*a1, v6), (v10 & 1) == 0))
    {
      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v11 = *(*(v8 + 56) + (v9 << 6) + 48);
  }

LABEL_8:
  *a3 = v11;
  return sub_1D5CFCFAC(v7);
}

uint64_t FormatContentSlotItemObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = type metadata accessor for FormatCustomItem(0);
  MEMORY[0x1EEE9AC00](v58, v3);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatWebEmbed(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v53 - v12;
  v14 = type metadata accessor for FormatContentSlotItemObject(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D5C30408();
  v19 = v65;
  sub_1D7264B0C();
  if (v19)
  {
LABEL_4:
    v22 = v60;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v55 = v5;
    v20 = v57;
    v65 = v17;
    v21 = v59;
    sub_1D631D094();
    v61 = 0uLL;
    sub_1D726431C();
    v54 = 0;
    switch(v64)
    {
      case 1:
        type metadata accessor for FormatArticleList();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EDF10D38, type metadata accessor for FormatArticleList, &protocol conformance descriptor for FormatArticleList);
        v39 = v54;
        sub_1D726431C();
        if (v39)
        {
          goto LABEL_3;
        }

        goto LABEL_40;
      case 2:
        type metadata accessor for FormatIssue();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EDF12900, type metadata accessor for FormatIssue, &protocol conformance descriptor for FormatIssue);
        v35 = v54;
        sub_1D726431C();
        if (!v35)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 3:
        type metadata accessor for FormatTag();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF1BAE8, type metadata accessor for FormatTag, &protocol conformance descriptor for FormatTag);
        v37 = v54;
        sub_1D726431C();
        if (!v37)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 4:
        type metadata accessor for FormatTagFeed();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EDF15870, type metadata accessor for FormatTagFeed, &protocol conformance descriptor for FormatTagFeed);
        v28 = v54;
        sub_1D726431C();
        if (!v28)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 5:
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EDF11A78, type metadata accessor for FormatWebEmbed, &protocol conformance descriptor for FormatWebEmbed);
        v41 = v54;
        sub_1D726431C();
        if (v41)
        {
          goto LABEL_3;
        }

        (*(v56 + 8))(v13, v10);
        v34 = v65;
        sub_1D631FAC8(v8, v65, type metadata accessor for FormatWebEmbed);
        v42 = v60;
        v31 = v21;
        goto LABEL_49;
      case 6:
        type metadata accessor for FormatPuzzle();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF337C0, type metadata accessor for FormatPuzzle, &protocol conformance descriptor for FormatPuzzle);
        v44 = v54;
        sub_1D726431C();
        if (!v44)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 7:
        type metadata accessor for FormatPuzzleType(0);
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF30128, type metadata accessor for FormatPuzzleType, &protocol conformance descriptor for FormatPuzzleType);
        v38 = v54;
        sub_1D726431C();
        if (!v38)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 8:
        v64 = xmmword_1D7279980;
        sub_1D5F8B130();
        v47 = v54;
        sub_1D726431C();
        if (v47)
        {
          goto LABEL_3;
        }

        v31 = v21;
        (*(v56 + 8))(v13, v10);
        v48 = *(&v61 + 1);
        v49 = v63;
        v50 = v62;
        v34 = v65;
        *v65 = v61;
        v34[1] = v48;
        *(v34 + 1) = v50;
        v34[4] = v49;
        goto LABEL_48;
      case 9:
        v64 = xmmword_1D7279980;
        sub_1D5B5C5E0();
        v30 = v54;
        sub_1D726431C();
        if (v30)
        {
          goto LABEL_3;
        }

        v31 = v21;
        (*(v56 + 8))(v13, v10);
        v32 = *(&v61 + 1);
        v33 = v62;
        v34 = v65;
        *v65 = v61;
        v34[1] = v32;
        *(v34 + 16) = v33;
        goto LABEL_48;
      case 10:
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(qword_1EDF30680, type metadata accessor for FormatCustomItem, &protocol conformance descriptor for FormatCustomItem);
        v46 = v54;
        sub_1D726431C();
        if (v46)
        {
          (*(v56 + 8))(v13, v10);
          v22 = v60;
          return __swift_destroy_boxed_opaque_existential_1(v22);
        }

        v31 = v21;
        (*(v56 + 8))(v13, v10);
        v34 = v65;
        sub_1D631FAC8(v20, v65, type metadata accessor for FormatCustomItem);
        goto LABEL_48;
      case 11:
        type metadata accessor for FormatScoreDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF217D0, type metadata accessor for FormatScoreDataVisualization, &protocol conformance descriptor for FormatScoreDataVisualization);
        v27 = v54;
        sub_1D726431C();
        if (!v27)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 12:
        type metadata accessor for FormatStandingDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EC885B20, type metadata accessor for FormatStandingDataVisualization, &protocol conformance descriptor for FormatStandingDataVisualization);
        v29 = v54;
        sub_1D726431C();
        if (!v29)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 13:
        type metadata accessor for FormatBracketDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EC884BB8, type metadata accessor for FormatBracketDataVisualization, &protocol conformance descriptor for FormatBracketDataVisualization);
        v43 = v54;
        sub_1D726431C();
        if (!v43)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 14:
        type metadata accessor for FormatBoxScoreDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EC885B10, type metadata accessor for FormatBoxScoreDataVisualization, &protocol conformance descriptor for FormatBoxScoreDataVisualization);
        v26 = v54;
        sub_1D726431C();
        if (!v26)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 15:
        type metadata accessor for FormatLineScoreDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EC885B08, type metadata accessor for FormatLineScoreDataVisualization, &protocol conformance descriptor for FormatLineScoreDataVisualization);
        v36 = v54;
        sub_1D726431C();
        if (!v36)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 16:
        type metadata accessor for FormatInjuryReportDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EC885B00, type metadata accessor for FormatInjuryReportDataVisualization, &protocol conformance descriptor for FormatInjuryReportDataVisualization);
        v25 = v54;
        sub_1D726431C();
        if (!v25)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 17:
        type metadata accessor for FormatKeyPlayerDataVisualization();
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EC885AF8, type metadata accessor for FormatKeyPlayerDataVisualization, &protocol conformance descriptor for FormatKeyPlayerDataVisualization);
        v40 = v54;
        sub_1D726431C();
        if (!v40)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 18:
        type metadata accessor for FormatRecipe(0);
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&unk_1EDF12370, type metadata accessor for FormatRecipe, &protocol conformance descriptor for FormatRecipe);
        v45 = v54;
        sub_1D726431C();
        if (!v45)
        {
          goto LABEL_40;
        }

        goto LABEL_3;
      case 19:
        v64 = xmmword_1D7279980;
        sub_1D631D130();
        v51 = v54;
        sub_1D726431C();
        if (v51)
        {
          goto LABEL_3;
        }

        v31 = v21;
        (*(v56 + 8))(v13, v10);
        v52 = *(&v61 + 1);
        v34 = v65;
        *v65 = v61;
        v34[1] = v52;
        goto LABEL_48;
      default:
        type metadata accessor for FormatArticle(0);
        v61 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF417D0, type metadata accessor for FormatArticle, &protocol conformance descriptor for FormatArticle);
        v24 = v54;
        sub_1D726431C();
        if (v24)
        {
LABEL_3:
          (*(v56 + 8))(v13, v10);
          goto LABEL_4;
        }

LABEL_40:
        v31 = v21;
        (*(v56 + 8))(v13, v10);
        v34 = v65;
        *v65 = v64;
LABEL_48:
        v42 = v60;
LABEL_49:
        swift_storeEnumTagMultiPayload();
        sub_1D631FAC8(v34, v31, type metadata accessor for FormatContentSlotItemObject);
        result = __swift_destroy_boxed_opaque_existential_1(v42);
        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for FormatContentSlotItemObject(uint64_t a1)
{
  result = qword_1EDF3E8D0;
  if (!qword_1EDF3E8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D631D094()
{
  result = qword_1EDF3E8E0;
  if (!qword_1EDF3E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3E8E0);
  }

  return result;
}

uint64_t sub_1D631D0E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D631D130()
{
  result = qword_1EC885B28;
  if (!qword_1EC885B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885B28);
  }

  return result;
}

double FormatContentSlotItemObject.encode(to:)(void *a1)
{
  v2 = v1;
  v81 = type metadata accessor for FormatCustomItem(0);
  MEMORY[0x1EEE9AC00](v81, v4);
  v82 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatWebEmbed(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatContentSlotItemObject(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v85 = v14;
  v91 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v80 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v84 = v17;
  sub_1D7264B5C();
  sub_1D631F9C8(v2, v13, type metadata accessor for FormatContentSlotItemObject);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v53 = *v13;
      LOBYTE(v90) = 1;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v54 = v83;
      sub_1D726443C();
      if (v54)
      {
        goto LABEL_50;
      }

      *&v90 = v53;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatArticleList();
      v22 = &unk_1EDF10D48;
      v23 = type metadata accessor for FormatArticleList;
      v24 = &protocol conformance descriptor for FormatArticleList;
      break;
    case 2u:
      v45 = *v13;
      LOBYTE(v90) = 2;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v46 = v83;
      sub_1D726443C();
      if (v46)
      {
        goto LABEL_50;
      }

      *&v90 = v45;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatIssue();
      v22 = &unk_1EDF12910;
      v23 = type metadata accessor for FormatIssue;
      v24 = &protocol conformance descriptor for FormatIssue;
      break;
    case 3u:
      v49 = *v13;
      LOBYTE(v90) = 3;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v50 = v83;
      sub_1D726443C();
      if (v50)
      {
        goto LABEL_50;
      }

      *&v90 = v49;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatTag();
      v22 = qword_1EDF05948;
      v23 = type metadata accessor for FormatTag;
      v24 = &protocol conformance descriptor for FormatTag;
      break;
    case 4u:
      v35 = *v13;
      LOBYTE(v90) = 4;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v36 = v83;
      sub_1D726443C();
      if (v36)
      {
        goto LABEL_50;
      }

      *&v90 = v35;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatTagFeed();
      v22 = &unk_1EDF15880;
      v23 = type metadata accessor for FormatTagFeed;
      v24 = &protocol conformance descriptor for FormatTagFeed;
      break;
    case 5u:
      sub_1D631FAC8(v13, v9, type metadata accessor for FormatWebEmbed);
      LOBYTE(v90) = 5;
      sub_1D631E020();
      v86 = 0uLL;
      v39 = v84;
      v38 = v85;
      v57 = v83;
      sub_1D726443C();
      if (!v57)
      {
        v86 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF11A88, type metadata accessor for FormatWebEmbed, &protocol conformance descriptor for FormatWebEmbed);
        sub_1D726443C();
      }

      v41 = type metadata accessor for FormatWebEmbed;
      v42 = v9;
      goto LABEL_33;
    case 6u:
      v61 = *v13;
      LOBYTE(v90) = 6;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v62 = v83;
      sub_1D726443C();
      if (v62)
      {
        goto LABEL_50;
      }

      *&v90 = v61;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatPuzzle();
      v22 = &unk_1EDF123A0;
      v23 = type metadata accessor for FormatPuzzle;
      v24 = &protocol conformance descriptor for FormatPuzzle;
      break;
    case 7u:
      v51 = *v13;
      LOBYTE(v90) = 7;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v52 = v83;
      sub_1D726443C();
      if (v52)
      {
        goto LABEL_50;
      }

      *&v90 = v51;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatPuzzleType(0);
      v22 = &qword_1EDF111D8;
      v23 = type metadata accessor for FormatPuzzleType;
      v24 = &protocol conformance descriptor for FormatPuzzleType;
      break;
    case 8u:
      v71 = *v13;
      v70 = v13[1];
      v72 = v13[2];
      v73 = v13[3];
      v74 = v13[4];
      LOBYTE(v90) = 8;
      sub_1D631E020();
      v86 = 0uLL;
      v75 = v84;
      v76 = v85;
      v77 = v83;
      sub_1D726443C();
      if (!v77)
      {
        *&v86 = v71;
        *(&v86 + 1) = v70;
        v87 = v72;
        v88 = v73;
        v89 = v74;
        v90 = xmmword_1D7279980;
        sub_1D5F8B184();
        sub_1D726443C();
      }

      (*(v91 + 8))(v75, v76);

      goto LABEL_51;
    case 9u:
      v43 = *v13;
      LOBYTE(v90) = 18;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v44 = v83;
      sub_1D726443C();
      if (v44)
      {
        goto LABEL_50;
      }

      *&v90 = v43;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatRecipe(0);
      v22 = &qword_1EDF12380;
      v23 = type metadata accessor for FormatRecipe;
      v24 = &protocol conformance descriptor for FormatRecipe;
      break;
    case 0xAu:
      v66 = *v13;
      v65 = v13[1];
      LOBYTE(v90) = 19;
      sub_1D631E020();
      v86 = 0uLL;
      v67 = v84;
      v68 = v85;
      v69 = v83;
      sub_1D726443C();
      if (!v69)
      {
        *&v86 = v66;
        *(&v86 + 1) = v65;
        v90 = xmmword_1D7279980;
        sub_1D631E074();
        sub_1D726443C();
      }

      (*(v91 + 8))(v67, v68);
      goto LABEL_43;
    case 0xBu:
      v30 = *v13;
      v29 = v13[1];
      v31 = *(v13 + 16);
      LOBYTE(v90) = 9;
      sub_1D631E020();
      v86 = 0uLL;
      v32 = v84;
      v33 = v85;
      v34 = v83;
      sub_1D726443C();
      if (!v34)
      {
        *&v86 = v30;
        *(&v86 + 1) = v29;
        LOBYTE(v87) = v31;
        v90 = xmmword_1D7279980;
        sub_1D5B5C634();
        sub_1D726443C();
      }

      (*(v91 + 8))(v32, v33);
LABEL_43:

      return result;
    case 0xCu:
      v37 = v82;
      sub_1D631FAC8(v13, v82, type metadata accessor for FormatCustomItem);
      LOBYTE(v90) = 10;
      sub_1D631E020();
      v86 = 0uLL;
      v39 = v84;
      v38 = v85;
      v40 = v83;
      sub_1D726443C();
      if (!v40)
      {
        v86 = xmmword_1D7279980;
        sub_1D631D0E8(&qword_1EDF114B0, type metadata accessor for FormatCustomItem, &protocol conformance descriptor for FormatCustomItem);
        sub_1D726443C();
      }

      v41 = type metadata accessor for FormatCustomItem;
      v42 = v37;
LABEL_33:
      sub_1D631E0C8(v42, v41);
      (*(v91 + 8))(v39, v38);
      return result;
    case 0xDu:
      v59 = *v13;
      LOBYTE(v90) = 11;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v60 = v83;
      sub_1D726443C();
      if (v60)
      {
        goto LABEL_50;
      }

      *&v90 = v59;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatScoreDataVisualization();
      v22 = &qword_1EDF0A850;
      v23 = type metadata accessor for FormatScoreDataVisualization;
      v24 = &protocol conformance descriptor for FormatScoreDataVisualization;
      break;
    case 0xEu:
      v27 = *v13;
      LOBYTE(v90) = 12;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v28 = v83;
      sub_1D726443C();
      if (v28)
      {
        goto LABEL_50;
      }

      *&v90 = v27;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatStandingDataVisualization();
      v22 = &qword_1EC885B60;
      v23 = type metadata accessor for FormatStandingDataVisualization;
      v24 = &protocol conformance descriptor for FormatStandingDataVisualization;
      break;
    case 0xFu:
      v47 = *v13;
      LOBYTE(v90) = 13;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v48 = v83;
      sub_1D726443C();
      if (v48)
      {
        goto LABEL_50;
      }

      *&v90 = v47;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatBracketDataVisualization();
      v22 = &qword_1EC884BC0;
      v23 = type metadata accessor for FormatBracketDataVisualization;
      v24 = &protocol conformance descriptor for FormatBracketDataVisualization;
      break;
    case 0x10u:
      v25 = *v13;
      LOBYTE(v90) = 14;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v26 = v83;
      sub_1D726443C();
      if (v26)
      {
        goto LABEL_50;
      }

      *&v90 = v25;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatBoxScoreDataVisualization();
      v22 = &unk_1EC885B50;
      v23 = type metadata accessor for FormatBoxScoreDataVisualization;
      v24 = &protocol conformance descriptor for FormatBoxScoreDataVisualization;
      break;
    case 0x11u:
      v55 = *v13;
      LOBYTE(v90) = 15;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v56 = v83;
      sub_1D726443C();
      if (v56)
      {
        goto LABEL_50;
      }

      *&v90 = v55;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatLineScoreDataVisualization();
      v22 = &qword_1EC885B48;
      v23 = type metadata accessor for FormatLineScoreDataVisualization;
      v24 = &protocol conformance descriptor for FormatLineScoreDataVisualization;
      break;
    case 0x12u:
      v63 = *v13;
      LOBYTE(v90) = 16;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v64 = v83;
      sub_1D726443C();
      if (v64)
      {
        goto LABEL_50;
      }

      *&v90 = v63;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatInjuryReportDataVisualization();
      v22 = &qword_1EC885B40;
      v23 = type metadata accessor for FormatInjuryReportDataVisualization;
      v24 = &protocol conformance descriptor for FormatInjuryReportDataVisualization;
      break;
    case 0x13u:
      v78 = *v13;
      LOBYTE(v90) = 17;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v79 = v83;
      sub_1D726443C();
      if (v79)
      {
        goto LABEL_50;
      }

      *&v90 = v78;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatKeyPlayerDataVisualization();
      v22 = &qword_1EC885B38;
      v23 = type metadata accessor for FormatKeyPlayerDataVisualization;
      v24 = &protocol conformance descriptor for FormatKeyPlayerDataVisualization;
      break;
    default:
      v18 = *v13;
      LOBYTE(v90) = 0;
      sub_1D631E020();
      v86 = 0uLL;
      v19 = v84;
      v20 = v85;
      v21 = v83;
      sub_1D726443C();
      if (v21)
      {
        goto LABEL_50;
      }

      *&v90 = v18;
      v86 = xmmword_1D7279980;
      type metadata accessor for FormatArticle(0);
      v22 = &qword_1EDF11EA0;
      v23 = type metadata accessor for FormatArticle;
      v24 = &protocol conformance descriptor for FormatArticle;
      break;
  }

  sub_1D631D0E8(v22, v23, v24);
  sub_1D726443C();
LABEL_50:
  (*(v91 + 8))(v19, v20);
LABEL_51:

  return result;
}

unint64_t sub_1D631E020()
{
  result = qword_1EDF0B080;
  if (!qword_1EDF0B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B080);
  }

  return result;
}

unint64_t sub_1D631E074()
{
  result = qword_1EC885B68;
  if (!qword_1EC885B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885B68);
  }

  return result;
}

uint64_t sub_1D631E0C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D631E128(char a1)
{
  result = 0x656C6369747261;
  switch(a1)
  {
    case 1:
      result = 0x4C656C6369747261;
      break;
    case 2:
      result = 0x6575737369;
      break;
    case 3:
      result = 6775156;
      break;
    case 4:
      result = 0x64656546676174;
      break;
    case 5:
      result = 0x6465626D45626577;
      break;
    case 6:
      result = 0x656C7A7A7570;
      break;
    case 7:
      result = 0x7954656C7A7A7570;
      break;
    case 8:
      result = 0x7453656C7A7A7570;
      break;
    case 9:
      result = 0x6C6F686563616C70;
      break;
    case 10:
      result = 0x6D6F74737563;
      break;
    case 11:
      result = 0x65726F6373;
      break;
    case 12:
      result = 0x676E69646E617473;
      break;
    case 13:
      result = 0x74656B63617262;
      break;
    case 14:
      result = 0x65726F6353786F62;
      break;
    case 15:
      result = 0x726F6353656E696CLL;
      break;
    case 16:
      result = 0x65527972756A6E69;
      break;
    case 17:
      result = 0x6579616C5079656BLL;
      break;
    case 18:
      result = 0x657069636572;
      break;
    case 19:
      result = 0x694C657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D631E344(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D631E128(*a1);
  v5 = v4;
  if (v3 == sub_1D631E128(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D631E3CC()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D631E128(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D631E430(uint64_t a1)
{
  sub_1D631E128(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D631E484(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D631E128(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D631E4E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D631F808(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D631E514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D631E128(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s8NewsFeed27FormatContentSlotItemObjectO2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v159 = a1;
  v160 = a2;
  v2 = type metadata accessor for FormatCustomItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v144 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatWebEmbed(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v143 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for FormatContentSlotItemObject(0);
  MEMORY[0x1EEE9AC00](v158, v8);
  v157 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v156 = &v142 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v154 = &v142 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v153 = &v142 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v152 = &v142 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v151 = &v142 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v150 = (&v142 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v155 = &v142 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v149 = &v142 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v148 = (&v142 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v145 = (&v142 - v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v146 = (&v142 - v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = (&v142 - v45);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = (&v142 - v49);
  MEMORY[0x1EEE9AC00](v51, v52);
  v147 = &v142 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = (&v142 - v56);
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = (&v142 - v60);
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = (&v142 - v64);
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = (&v142 - v68);
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = (&v142 - v72);
  sub_1D631F85C(0);
  MEMORY[0x1EEE9AC00](v74 - 8, v75);
  v77 = &v142 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = &v77[*(v78 + 56)];
  sub_1D631F9C8(v159, v77, type metadata accessor for FormatContentSlotItemObject);
  v159 = v79;
  sub_1D631F9C8(v160, v79, type metadata accessor for FormatContentSlotItemObject);
  v160 = v77;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v80 = v160;
      sub_1D631F9C8(v160, v69, type metadata accessor for FormatContentSlotItemObject);
      v113 = *v69;
      v114 = v159;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_54;
      }

      if (*(v113 + 16) == *(*v114 + 16) && *(v113 + 24) == *(*v114 + 24))
      {

        goto LABEL_46;
      }

      v141 = sub_1D72646CC();

      goto LABEL_67;
    case 2u:
      v80 = v160;
      sub_1D631F9C8(v160, v65, type metadata accessor for FormatContentSlotItemObject);
      v105 = *v65;
      v106 = v159;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_54;
      }

      v107 = *v106;
      type metadata accessor for FormatIssue();
      v84 = static FormatIssue.== infix(_:_:)(v105, v107);
      goto LABEL_53;
    case 3u:
      v80 = v160;
      sub_1D631F9C8(v160, v61, type metadata accessor for FormatContentSlotItemObject);
      v108 = *v61;
      v109 = v159;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_54;
      }

      v84 = _s8NewsFeed9FormatTagC2eeoiySbAC_ACtFZ_0(v108, *v109);
      goto LABEL_53;
    case 4u:
      v80 = v160;
      sub_1D631F9C8(v160, v57, type metadata accessor for FormatContentSlotItemObject);
      v94 = *v57;
      v95 = v159;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_54;
      }

      v84 = _s8NewsFeed09FormatTagB0C2eeoiySbAC_ACtFZ_0(v94, *v95);
      goto LABEL_53;
    case 5u:
      v80 = v160;
      v96 = v147;
      sub_1D631F9C8(v160, v147, type metadata accessor for FormatContentSlotItemObject);
      v115 = v159;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v98 = v143;
        sub_1D631FAC8(v115, v143, type metadata accessor for FormatWebEmbed);
        LOBYTE(v99) = static FormatWebEmbed.== infix(_:_:)(v96, v98);
        v100 = type metadata accessor for FormatWebEmbed;
        goto LABEL_35;
      }

      v139 = type metadata accessor for FormatWebEmbed;
      goto LABEL_59;
    case 6u:
      v80 = v160;
      sub_1D631F9C8(v160, v50, type metadata accessor for FormatContentSlotItemObject);
      v120 = *v50;
      v121 = v159;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_54;
      }

      v122 = *v121;
      type metadata accessor for FormatPuzzle();
      v84 = static FormatPuzzle.== infix(_:_:)(v120, v122);
      goto LABEL_53;
    case 7u:
      v80 = v160;
      sub_1D631F9C8(v160, v46, type metadata accessor for FormatContentSlotItemObject);
      v110 = *v46;
      v111 = v159;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_54;
      }

      v112 = *v111;
      type metadata accessor for FormatPuzzleType(0);
      v84 = static FormatPuzzleType.== infix(_:_:)(v110, v112);
      goto LABEL_53;
    case 8u:
      v127 = v146;
      sub_1D631F9C8(v160, v146, type metadata accessor for FormatContentSlotItemObject);
      v128 = *v127;
      v129 = v127[2];
      v130 = v127[3];
      v131 = v127[4];
      v99 = v159;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v132 = v127[1];
        v134 = *v99;
        v133 = *(v99 + 1);
        v135 = *(v99 + 2);
        v136 = *(v99 + 3);
        v137 = *(v99 + 4);
        v162[0] = v128;
        v162[1] = v132;
        v162[2] = v129;
        v162[3] = v130;
        v162[4] = v131;
        v161[0] = v134;
        v161[1] = v133;
        v161[2] = v135;
        v161[3] = v136;
        v161[4] = v137;
        LOBYTE(v99) = _s8NewsFeed21FormatPuzzleStatisticV2eeoiySbAC_ACtFZ_0(v162, v161);

        v93 = type metadata accessor for FormatContentSlotItemObject;
      }

      else
      {

        LOBYTE(v99) = 0;
        v93 = sub_1D631F85C;
      }

      v80 = v160;
      goto LABEL_56;
    case 9u:
      v80 = v160;
      v101 = v145;
      sub_1D631F9C8(v160, v145, type metadata accessor for FormatContentSlotItemObject);
      v102 = *v101;
      v103 = v159;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_54;
      }

      v104 = *v103;
      type metadata accessor for FormatRecipe(0);
      v84 = static FormatRecipe.== infix(_:_:)(v102, v104);
      goto LABEL_53;
    case 0xAu:
      v80 = v160;
      v123 = v148;
      sub_1D631F9C8(v160, v148, type metadata accessor for FormatContentSlotItemObject);
      v125 = *v123;
      v124 = v123[1];
      v126 = v159;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_47;
      }

      if (v125 == *v126 && v124 == *(v126 + 1))
      {

LABEL_46:
        LOBYTE(v99) = 1;
        v93 = type metadata accessor for FormatContentSlotItemObject;
      }

      else
      {
        v141 = sub_1D72646CC();

LABEL_67:
        LODWORD(v99) = v141 << 31 >> 31;
        v93 = type metadata accessor for FormatContentSlotItemObject;
      }

      goto LABEL_56;
    case 0xBu:
      v80 = v160;
      v85 = v149;
      sub_1D631F9C8(v160, v149, type metadata accessor for FormatContentSlotItemObject);
      v87 = *v85;
      v86 = *(v85 + 8);
      v88 = *(v85 + 16);
      v89 = v159;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_47:

        goto LABEL_55;
      }

      v90 = *v89;
      v91 = *(v89 + 1);
      v92 = v89[16];
      if (v87 == v90 && v86 == v91)
      {

        v93 = type metadata accessor for FormatContentSlotItemObject;
        if (v88 == v92)
        {
LABEL_63:
          LOBYTE(v99) = 1;
          goto LABEL_56;
        }
      }

      else
      {
        v140 = sub_1D72646CC();

        v93 = type metadata accessor for FormatContentSlotItemObject;
        if ((v140 & 1) != 0 && v88 == v92)
        {
          goto LABEL_63;
        }
      }

      LOBYTE(v99) = 0;
      v93 = type metadata accessor for FormatContentSlotItemObject;
LABEL_56:
      sub_1D631E0C8(v80, v93);
      return v99 & 1;
    case 0xCu:
      v80 = v160;
      v96 = v155;
      sub_1D631F9C8(v160, v155, type metadata accessor for FormatContentSlotItemObject);
      v97 = v159;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v98 = v144;
        sub_1D631FAC8(v97, v144, type metadata accessor for FormatCustomItem);
        LOBYTE(v99) = static FormatCustomItem.== infix(_:_:)(v96, v98);
        v100 = type metadata accessor for FormatCustomItem;
LABEL_35:
        v116 = v100;
        sub_1D631E0C8(v98, v100);
        sub_1D631E0C8(v96, v116);
        v93 = type metadata accessor for FormatContentSlotItemObject;
        goto LABEL_56;
      }

      v139 = type metadata accessor for FormatCustomItem;
LABEL_59:
      sub_1D631E0C8(v96, v139);
      goto LABEL_55;
    case 0xDu:
      v80 = v160;
      v117 = v150;
      sub_1D631F9C8(v160, v150, type metadata accessor for FormatContentSlotItemObject);
      v118 = *v117;
      v119 = v159;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_54;
      }

      v84 = _s8NewsFeed28FormatScoreDataVisualizationC2eeoiySbAC_ACtFZ_0(v118, *v119);
      goto LABEL_53;
    case 0xEu:
      v80 = v160;
      sub_1D631F9C8(v160, v151, type metadata accessor for FormatContentSlotItemObject);
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_7;
      }

      goto LABEL_54;
    case 0xFu:
      v80 = v160;
      sub_1D631F9C8(v160, v152, type metadata accessor for FormatContentSlotItemObject);
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_54;
      }

LABEL_7:
      v84 = sub_1D670934C();
      goto LABEL_53;
    case 0x10u:
      v80 = v160;
      sub_1D631F9C8(v160, v153, type metadata accessor for FormatContentSlotItemObject);
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_52;
      }

      goto LABEL_54;
    case 0x11u:
      v80 = v160;
      sub_1D631F9C8(v160, v154, type metadata accessor for FormatContentSlotItemObject);
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_52;
      }

      goto LABEL_54;
    case 0x12u:
      v80 = v160;
      sub_1D631F9C8(v160, v156, type metadata accessor for FormatContentSlotItemObject);
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_52;
      }

      goto LABEL_54;
    case 0x13u:
      v80 = v160;
      sub_1D631F9C8(v160, v157, type metadata accessor for FormatContentSlotItemObject);
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_54;
      }

LABEL_52:
      v84 = sub_1D6709348();
      goto LABEL_53;
    default:
      v80 = v160;
      sub_1D631F9C8(v160, v73, type metadata accessor for FormatContentSlotItemObject);
      v81 = *v73;
      v82 = v159;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_54:

LABEL_55:
        LOBYTE(v99) = 0;
        v93 = sub_1D631F85C;
      }

      else
      {
        v83 = *v82;
        type metadata accessor for FormatArticle(0);
        v84 = static FormatArticle.== infix(_:_:)(v81, v83);
LABEL_53:
        LOBYTE(v99) = v84;

        v93 = type metadata accessor for FormatContentSlotItemObject;
      }

      goto LABEL_56;
  }
}

uint64_t sub_1D631F4E4(void *a1)
{
  a1[1] = sub_1D631D0E8(&qword_1EDF22748, type metadata accessor for FormatContentSlotItemObject, &protocol conformance descriptor for FormatContentSlotItemObject);
  a1[2] = sub_1D631D0E8(qword_1EDF22750, type metadata accessor for FormatContentSlotItemObject, &protocol conformance descriptor for FormatContentSlotItemObject);
  result = sub_1D631D0E8(&unk_1EC885B78, type metadata accessor for FormatContentSlotItemObject, &protocol conformance descriptor for FormatContentSlotItemObject);
  a1[3] = result;
  return result;
}

uint64_t sub_1D631F590(uint64_t a1)
{
  result = type metadata accessor for FormatArticle(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FormatArticleList();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FormatIssue();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for FormatTag();
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for FormatTagFeed();
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for FormatWebEmbed(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for FormatPuzzle();
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for FormatPuzzleType(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for FormatRecipe(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for FormatCustomItem(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for FormatScoreDataVisualization();
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for FormatStandingDataVisualization();
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for FormatBracketDataVisualization();
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for FormatBoxScoreDataVisualization();
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for FormatLineScoreDataVisualization();
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for FormatInjuryReportDataVisualization();
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for FormatKeyPlayerDataVisualization();
                                  if (v18 <= 0x3F)
                                  {
                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                    return 0;
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
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D631F760()
{
  result = qword_1EC885B88;
  if (!qword_1EC885B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885B88);
  }

  return result;
}

unint64_t sub_1D631F7B4()
{
  result = qword_1EDF3E8F0;
  if (!qword_1EDF3E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3E8F0);
  }

  return result;
}

unint64_t sub_1D631F808(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72648CC();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

void sub_1D631F85C(uint64_t a1)
{
  if (!qword_1EC885B98)
  {
    type metadata accessor for FormatContentSlotItemObject(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC885B98);
    }
  }
}

void sub_1D631F8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D631F9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1D631FA30(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D631FA7C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1D631FAC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D631FB64(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D631FD6C(a2, a3, v3, a1);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = v3[6];
    v10 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v9);
    v11 = [objc_msgSend(a1 puzzleType)];
    swift_unknownObjectRelease();
    v12 = sub_1D726207C();
    v14 = v13;

    v15 = (*(v10 + 8))(v7, v8, v12, v14, v9, v10);

    if (v15)
    {
      v16 = [objc_msgSend(a1 puzzleType)];
      swift_unknownObjectRelease();
      if (v16)
      {
        sub_1D632010C();
        v17 = sub_1D7261D3C();

        v18 = [v15 identifier];
        v19 = sub_1D726207C();
        v21 = v20;

        if (*(v17 + 16))
        {
          v22 = sub_1D5B69D90(v19, v21);
          v24 = v23;

          if (v24)
          {
            v25 = *(*(v17 + 56) + 8 * v22);
            swift_unknownObjectRetain();

            return v25;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D631FD6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {

    return a1;
  }

  v7 = *(a3 + 88);
  v8 = *(a3 + 96);
  __swift_project_boxed_opaque_existential_1((a3 + 64), v7);
  v10 = [a4 identifier];
  v11 = sub_1D726207C();
  v13 = v12;

  v14 = (*(*(v8 + 8) + 56))(v11, v13, v7);

  if (v14)
  {
    v15 = [v14 rankID];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D726207C();

      return v17;
    }
  }

  v18 = [objc_msgSend(*(a3 + 16) appConfiguration)];
  swift_unknownObjectRelease();
  v19 = [v18 puzzleRanksByPuzzleTypeID];

  if (v19)
  {
    sub_1D62DC978(0);
    v20 = sub_1D7261D3C();

    v21 = [objc_msgSend(a4 puzzleType)];
    swift_unknownObjectRelease();
    v22 = sub_1D726207C();
    v24 = v23;

    if (*(v20 + 16))
    {
      v25 = sub_1D5B69D90(v22, v24);
      v27 = v26;

      if (v27)
      {
        v28 = *(*(v20 + 56) + 8 * v25);

        if (v28 >> 62)
        {
          goto LABEL_26;
        }

        for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
        {
          v30 = 0;
          while (1)
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              v31 = MEMORY[0x1DA6FB460](v30, v28);
            }

            else
            {
              if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v31 = *(v28 + 8 * v30 + 32);
            }

            v32 = v31;
            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if ([v31 defaultRank])
            {

              v34 = [v32 identifier];
              v35 = sub_1D726207C();

              return v35;
            }

            ++v30;
            if (v33 == i)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          ;
        }
      }
    }

    else
    {
    }

LABEL_27:
  }

  return 0;
}

uint64_t sub_1D63200A0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

unint64_t sub_1D632010C()
{
  result = qword_1EDF043B8;
  if (!qword_1EDF043B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF043B8);
  }

  return result;
}

uint64_t GapViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  *a1 = sub_1D725996C();
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

uint64_t sub_1D632022C()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x656D617266;
  }
}

void sub_1D6320268(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D73D19B0 == a2)
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

uint64_t sub_1D6320348(uint64_t a1)
{
  v2 = sub_1D63205BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6320384(uint64_t a1)
{
  v2 = sub_1D63205BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GapViewLayout.Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5C18C08(0, &qword_1EC885BA0, sub_1D63205BC, &type metadata for GapViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  v11 = v3[2];
  v14 = v3[3];
  v15 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63205BC();
  sub_1D7264B5C();
  v12 = v3[1];
  v16 = *v3;
  v17 = v12;
  v18 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEA9B4(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    v16 = v15;
    v17 = v14;
    v18 = 1;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D63205BC()
{
  result = qword_1EDF32E90;
  if (!qword_1EDF32E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E90);
  }

  return result;
}

uint64_t GapViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  sub_1D5C18C08(0, &qword_1EDF19C60, sub_1D63205BC, &type metadata for GapViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D63205BC();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_1D5BEA9B4(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v15 = v19;
    v16 = v18;
    v20 = 1;
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v13 = v15;
    *v11 = v16;
    v11[1] = v13;
    v14 = v19;
    v11[2] = v18;
    v11[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D632085C(uint64_t a1)
{
  v2 = sub_1D6320DA4();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D63208C8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6320D50();

  return sub_1D725A24C();
}

uint64_t GapViewLayout.Context.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;

  return sub_1D5BF2DDC(v4, v5);
}

unint64_t sub_1D63209B4()
{
  result = qword_1EDF32E70;
  if (!qword_1EDF32E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E70);
  }

  return result;
}

unint64_t sub_1D6320A0C()
{
  result = qword_1EC885BA8;
  if (!qword_1EC885BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885BA8);
  }

  return result;
}

unint64_t sub_1D6320A64()
{
  result = qword_1EDF32E58;
  if (!qword_1EDF32E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E58);
  }

  return result;
}

unint64_t sub_1D6320ABC()
{
  result = qword_1EDF32E60;
  if (!qword_1EDF32E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E60);
  }

  return result;
}

unint64_t sub_1D6320B14()
{
  result = qword_1EDF32E78;
  if (!qword_1EDF32E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E78);
  }

  return result;
}

uint64_t sub_1D6320B88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D6320BD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6320C4C()
{
  result = qword_1EC885BB0;
  if (!qword_1EC885BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885BB0);
  }

  return result;
}

unint64_t sub_1D6320CA4()
{
  result = qword_1EDF32E80;
  if (!qword_1EDF32E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E80);
  }

  return result;
}

unint64_t sub_1D6320CFC()
{
  result = qword_1EDF32E88;
  if (!qword_1EDF32E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E88);
  }

  return result;
}

unint64_t sub_1D6320D50()
{
  result = qword_1EDF32E68;
  if (!qword_1EDF32E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32E68);
  }

  return result;
}

unint64_t sub_1D6320DA4()
{
  result = qword_1EC885BB8;
  if (!qword_1EC885BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885BB8);
  }

  return result;
}

void sub_1D6320DF8()
{
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView];
  v2 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale;
  *&v1[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_scale] = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale];
  [v1 setNeedsLayout];
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
  *&v3[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale] = *&v0[v2];
  [v3 setNeedsLayout];
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView];
  *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale] = *&v0[v2];
  [v4 setNeedsLayout];
  v5 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6 >> 62)
  {
    v7 = sub_1D7263BFC();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = &v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];

    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA6FB460](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = *&v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator + 16] * *&v0[v2];
      v13 = v12 - CGRectGetMinY(*v8);
      v14 = v11;
      [v0 bounds];
      [v14 setFrame_];
    }

    while (v7 != v9);
  }
}

id sub_1D6320FEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView);
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentSize);
  *&v1[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_contentSize] = *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentSize);
  [v1 setNeedsLayout];
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView);
  *&v3[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_edge] = *v2;
  [v3 setNeedsLayout];
  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView);
  *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_edge] = v2[1];

  return [v4 setNeedsLayout];
}

void sub_1D632109C()
{
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView];
  [v0 frame];
  sub_1D726328C();
  v2 = &v1[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_contentBounds];
  *v2 = v3;
  *(v2 + 1) = v4;
  *(v2 + 2) = v5;
  *(v2 + 3) = v6;
  [v1 setNeedsLayout];
  v7 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
  [v0 frame];
  sub_1D726328C();
  v8 = &v7[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
  *v8 = v9;
  *(v8 + 1) = v10;
  *(v8 + 2) = v11;
  *(v8 + 3) = v12;
  [v7 setNeedsLayout];
  v13 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView];
  [v0 frame];
  sub_1D726328C();
  v14 = &v13[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
  *v14 = v15;
  *(v14 + 1) = v16;
  *(v14 + 2) = v17;
  *(v14 + 3) = v18;
  [v13 setNeedsLayout];
  v19 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews;
  swift_beginAccess();
  v20 = *&v0[v19];
  if (v20 >> 62)
  {
    v21 = sub_1D7263BFC();
    if (!v21)
    {
      return;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      return;
    }
  }

  if (v21 < 1)
  {
    __break(1u);
  }

  else
  {
    v22 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale;

    v23 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1DA6FB460](v23, v20);
      }

      else
      {
        v24 = *(v20 + 8 * v23 + 32);
      }

      v25 = v24;
      ++v23;
      v26 = *&v24[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator + 16] * *&v0[v22];
      v27 = v26 - CGRectGetMinY(*v14);
      v28 = v25;
      [v0 bounds];
      [v28 setFrame_];
    }

    while (v21 != v23);
  }
}

id sub_1D6321348()
{
  v1 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulersHidden;
  [*&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView] setHidden_];
  [*&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView] setHidden_];
  [*&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView] setHidden_];
  [*&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer] setHidden_];

  return [v0 setNeedsLayout];
}

void sub_1D63213F4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6FB460](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_12:

  *&v1[v2] = MEMORY[0x1E69E7CC0];

  v9 = *&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separators];
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_35;
  }

  v11 = &v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectedSeparator];
  v12 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorsHidden;
  v42 = *&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
  v41 = type metadata accessor for DebugFormatRulerSeparatorView();

  v40 = v1;
  v13 = (v9 + 64);
  do
  {
    v15 = *(v13 - 4);
    v14 = *(v13 - 3);
    v16 = *(v13 - 2);
    v17 = *(v13 - 1);
    v18 = *v13;
    *&v43 = v15;
    *(&v43 + 1) = v14;
    v44 = v16;
    v45 = v17;
    v46 = v18;
    v19 = objc_allocWithZone(v41);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v20 = sub_1D7161004(&v43);
    v21 = *(v11 + 1);
    if (v21)
    {
      if (v15 == *v11 && v21 == v14)
      {

        v22 = &v20[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
        v20[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = 1;
LABEL_20:
        if (qword_1EC87DD48 != -1)
        {
          swift_once();
        }

        v24 = &qword_1EC89B790;
        goto LABEL_26;
      }

      v23 = sub_1D72646CC();

      v22 = &v20[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
      v20[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = v23 & 1;
      v1 = v40;
      if (v23)
      {
        goto LABEL_20;
      }
    }

    else
    {

      v22 = &v20[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
      v20[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = 0;
    }

    if (qword_1EC87DD50 != -1)
    {
      swift_once();
    }

    v24 = &qword_1EC89B798;
LABEL_26:
    [v20 setBackgroundColor_];
    v25 = *&v20[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
    if (*v22 == 1)
    {
      v26 = &qword_1EC89B790;
      if (qword_1EC87DD48 != -1)
      {
        v27 = *&v20[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
        swift_once();
        v25 = v27;
        v26 = &qword_1EC89B790;
      }
    }

    else
    {
      v26 = &qword_1EC89B798;
      if (qword_1EC87DD50 != -1)
      {
        v29 = *&v20[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
        swift_once();
        v25 = v29;
        v26 = &qword_1EC89B798;
      }
    }

    [v25 setBackgroundColor_];
    [v20 setHidden_];
    [v1 insertSubview:v20 belowSubview:v42];
    swift_beginAccess();
    v28 = v20;
    MEMORY[0x1DA6F9CE0]();
    if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    swift_endAccess();

    v13 += 5;
    --v10;
  }

  while (v10);

LABEL_35:
  v30 = *&v1[v2];
  if (v30 >> 62)
  {
    v31 = sub_1D7263BFC();
    if (v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_37:
      if (v31 < 1)
      {
        __break(1u);
      }

      else
      {
        v32 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale;
        v33 = (*&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView] + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds);

        v34 = 0;
        do
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x1DA6FB460](v34, v30);
          }

          else
          {
            v35 = *(v30 + 8 * v34 + 32);
          }

          v36 = v35;
          ++v34;
          v37 = *&v35[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator + 16] * *&v1[v32];
          v38 = v37 - CGRectGetMinY(*v33);
          v39 = v36;
          [v1 bounds];
          [v39 setFrame_];
        }

        while (v31 != v34);
      }
    }
  }
}

void sub_1D63219A4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectedSeparator);
  *v3 = a1;
  v3[1] = a2;

  v4 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }

    goto LABEL_3;
  }

  v6 = sub_1D7263BFC();
  if (v6)
  {
LABEL_3:
    if (v6 < 1)
    {
      __break(1u);
      return;
    }

    v7 = 0;
    while (1)
    {
      v9 = (v5 & 0xC000000000000001) != 0 ? MEMORY[0x1DA6FB460](v7, v5) : *(v5 + 8 * v7 + 32);
      v10 = v9;
      v11 = v3[1];
      if (!v11)
      {
        break;
      }

      if (*&v9[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator] == *v3 && v11 == *&v9[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator + 8])
      {
        v14 = &v9[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
        v9[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = 1;
      }

      else
      {
        v13 = sub_1D72646CC();
        v14 = &v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
        v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = v13 & 1;
        if ((v13 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (qword_1EC87DD48 != -1)
      {
        swift_once();
      }

      v15 = &qword_1EC89B790;
LABEL_26:
      [v10 setBackgroundColor_];
      v18 = *&v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
      if (*v14 == 1)
      {
        v8 = &qword_1EC89B790;
        if (qword_1EC87DD48 != -1)
        {
          v16 = *&v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
          swift_once();
          v18 = v16;
          v8 = &qword_1EC89B790;
        }
      }

      else
      {
        v8 = &qword_1EC89B798;
        if (qword_1EC87DD50 != -1)
        {
          v17 = *&v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_label];
          swift_once();
          v18 = v17;
          v8 = &qword_1EC89B798;
        }
      }

      ++v7;
      [v18 setBackgroundColor_];

      if (v6 == v7)
      {

        return;
      }
    }

    v14 = &v9[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected];
    v9[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_isSelected] = 0;
LABEL_19:
    if (qword_1EC87DD50 != -1)
    {
      swift_once();
    }

    v15 = &qword_1EC89B798;
    goto LABEL_26;
  }
}

void sub_1D6321CB4()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView];
  [v1 safeAreaInsets];
  [v2 setFrame_];
  v4 = [v1 superview];
  if (v4 && (v5 = v4, v6 = [v4 superview], v5, v6))
  {
    [v6 safeAreaInsets];
    v8 = v7;
  }

  else
  {
    [v1 safeAreaInsets];
    v8 = v9;
  }

  v10 = *&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView];
  v30 = 0x3FF0000000000000;
  v31 = 0;
  v32 = 0;
  v33 = 0x3FF0000000000000;
  v34 = 0;
  v35 = 0;
  *&v28.a = 0x3FF0000000000000uLL;
  v28.c = 0.0;
  v28.d = 1.0;
  *&v28.tx = 0uLL;
  [v10 setTransform_];
  [v1 bounds];
  [v10 setFrame_];
  v11 = [v10 layer];
  v12 = 0.0;
  [v11 setAnchorPoint_];

  CGAffineTransformMakeRotation(&v28, 1.57079633);
  [v10 setTransform_];
  v13 = *&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
  [v1 bounds];
  [v13 setFrame_];
  if (![v10 isHidden])
  {
    v12 = 32.0;
  }

  v14 = *&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView];
  [v1 bounds];
  v15 = CGRectGetWidth(v38) - v12;
  [v1 bounds];
  [v14 setFrame_];
  Mutable = CGPathCreateMutable();
  sub_1D7262F0C();
  [v1 bounds];
  CGRectGetWidth(v40);
  sub_1D7262F2C();
  sub_1D7262F0C();
  [v1 bounds];
  CGRectGetWidth(v41);
  sub_1D7262F2C();
  sub_1D7262F0C();
  if (([v10 isHidden] & 1) == 0)
  {
    [v1 bounds];
    CGRectGetHeight(v42);
  }

  sub_1D7262F2C();
  [*&v1[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer] setPath_];
  v17 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews;
  swift_beginAccess();
  v18 = *&v1[v17];
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_19:

    return;
  }

  v19 = sub_1D7263BFC();
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v19 < 1)
  {
    __break(1u);
  }

  else
  {
    v20 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale;
    v21 = &v10[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];

    v22 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1DA6FB460](v22, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v22 + 32);
      }

      v24 = v23;
      ++v22;
      v25 = *&v23[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerSeparatorView_separator + 16] * *&v1[v20];
      v26 = v25 - CGRectGetMinY(*v21);
      v27 = v24;
      [v1 bounds];
      [v27 setFrame_];
    }

    while (v19 != v22);
  }
}

char *sub_1D6322430()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale] = 0x3FF0000000000000;
  v2 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentSize];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentBounds];
  *v3 = 0u;
  v3[1] = 0u;
  v4 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_canvasOffset];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectionFrame];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_metricSelectionFrame];
  *v6 = 0u;
  v6[1] = 0u;
  v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulersHidden] = 0;
  v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorsHidden] = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separators] = MEMORY[0x1E69E7CC0];
  v8 = &v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectedSeparator];
  *v8 = 0;
  v8[1] = 0;
  *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulerSize] = 0x4040000000000000;
  v9 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView;
  v10 = type metadata accessor for DebugFormatRulerEdgeView();
  v11 = objc_allocWithZone(v10);
  *&v0[v9] = sub_1D6207C7C(0);
  v12 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView;
  v13 = objc_allocWithZone(v10);
  *&v0[v12] = sub_1D6207C7C(1);
  v14 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView;
  *&v0[v14] = [objc_allocWithZone(type metadata accessor for DebugFormatGridView()) initWithFrame_];
  v15 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView;
  *&v0[v15] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer;
  *&v0[v16] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *&v0[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews] = v7;
  v37.receiver = v0;
  v37.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v37, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = *&v17[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView];
  v19 = v17;
  [v19 addSubview_];
  [v19 addSubview_];
  [v19 addSubview_];
  v20 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView;
  v21 = *&v19[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 secondarySystemBackgroundColor];
  [v23 setBackgroundColor_];

  [v19 addSubview_];
  v25 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer;
  v26 = *&v19[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 mainScreen];
  [v29 scale];
  v31 = v30;

  [v28 setLineWidth_];
  v32 = *&v19[v25];
  v33 = [v22 separatorColor];
  v34 = [v33 CGColor];

  [v32 setStrokeColor_];
  v35 = [v19 layer];

  [v35 addSublayer_];
  return v19;
}

void sub_1D63227FC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_scale) = 0x3FF0000000000000;
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentSize);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_contentBounds);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_canvasOffset);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectionFrame);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_metricSelectionFrame);
  *v6 = 0u;
  v6[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulersHidden) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorsHidden) = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separators) = MEMORY[0x1E69E7CC0];
  v8 = (v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectedSeparator);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulerSize) = 0x4040000000000000;
  v9 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView;
  v10 = type metadata accessor for DebugFormatRulerEdgeView();
  v11 = objc_allocWithZone(v10);
  *(v0 + v9) = sub_1D6207C7C(0);
  v12 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView;
  v13 = objc_allocWithZone(v10);
  *(v0 + v12) = sub_1D6207C7C(1);
  v14 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_gridView;
  *(v1 + v14) = [objc_allocWithZone(type metadata accessor for DebugFormatGridView()) initWithFrame_];
  v15 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_cornerView;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_borderLayer;
  *(v1 + v16) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *(v1 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews) = v7;
  sub_1D726402C();
  __break(1u);
}

void sub_1D6322A3C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v3 = sub_1D72646FC();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (qword_1EDF272B0 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDFFCAA0;
    v7 = sub_1D726203C();
    v8 = [v6 dateFromString_];

    if (v8)
    {

      sub_1D72588BC();
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v9 = sub_1D7264ACC();
      sub_1D6322D18();
      swift_allocError();
      *v10 = v3;
      v10[1] = v5;
      v10[2] = v9;
      swift_willThrow();
    }
  }
}

uint64_t sub_1D6322BDC()
{
  v0 = sub_1D605A4CC(&unk_1F50F5728);
  sub_1D5E3E63C();
  result = swift_arrayDestroy();
  qword_1EDFFCBF8 = v0;
  return result;
}

uint64_t FormatJSONDecoder.__deallocating_deinit()
{
  _s8NewsFeed17FormatJSONDecoderCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6322C80(uint64_t a1, uint64_t a2)
{
  if (qword_1EDF2F570 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDFFCBF8;
  if (*(qword_1EDFFCBF8 + 16))
  {
    v5 = sub_1D5B69D90(a1, a2);
    if (v6)
    {
      a1 = *(*(v4 + 56) + 16 * v5);
    }
  }

  return a1;
}

unint64_t sub_1D6322D18()
{
  result = qword_1EC885C48;
  if (!qword_1EC885C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885C48);
  }

  return result;
}

uint64_t _s8NewsFeed18ThumbnailProcessorC7processySo7UIImageCSg5TeaUI25ProcessedImageRequestType_pF_0(uint64_t a1)
{
  sub_1D5B68374(a1, v8);
  sub_1D61BA350();
  type metadata accessor for ThumbnailProcessorRequest(0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
    sub_1D725D2CC();
    if (v1)
    {
      v2 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v3 = sub_1D726203C();

      v4 = [v2 initWithContentsOfFile_];

      if (v4)
      {
LABEL_4:
        v5 = sub_1D726361C();

        return v5;
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
      v4 = sub_1D725D29C();
      if (v4)
      {
        goto LABEL_4;
      }
    }
  }

  return 0;
}

id FCRecipe.overridden(by:configuration:assetManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();

  return sub_1D6323068(a1, a2, a3, v3);
}

id sub_1D6323068(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = a4;
  v6 = type metadata accessor for FormatRecipeOverrides(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5CFA0(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  if (*(a1 + 8) || *(a1 + 24) || (sub_1D5CE5660(a1 + *(v6 + 24), v13, sub_1D5B5CFA0), v18 = type metadata accessor for FormatThumbnail(0), v19 = (*(*(v18 - 8) + 48))(v13, 1, v18), sub_1D5CE49BC(v13, sub_1D5B5CFA0), v19 != 1))
  {
    sub_1D5CE50C4();
    sub_1D5CE5660(a1 + *(v6 + 24), v17, sub_1D5B5CFA0);
    v20 = sub_1D5CE5110(v17, a3);
    sub_1D5CE5660(a1, v9, type metadata accessor for FormatRecipeOverrides);
    v21 = type metadata accessor for FormatRecipeOverridesMetadata();
    v22 = objc_allocWithZone(v21);
    v23 = v9[1];
    v24 = &v22[OBJC_IVAR____TtC8NewsFeed29FormatRecipeOverridesMetadata_title];
    *v24 = *v9;
    *(v24 + 1) = v23;
    v25 = v9[3];
    v26 = &v22[OBJC_IVAR____TtC8NewsFeed29FormatRecipeOverridesMetadata_shortExcerpt];
    *v26 = v9[2];
    *(v26 + 1) = v25;
    *&v22[OBJC_IVAR____TtC8NewsFeed29FormatRecipeOverridesMetadata_formatThumbnail] = v20;
    v35.receiver = v22;
    v35.super_class = v21;
    v27 = v20;

    v28 = objc_msgSendSuper2(&v35, sel_init);
    sub_1D5CE49BC(v9, type metadata accessor for FormatRecipeOverrides);
    v29 = v28;
    v30 = FCAssignSingleRecipeMetadata();

    if (v30)
    {
      return v30;
    }
  }

  v32 = v34;

  return v32;
}

double FormatCustomNode.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatCustomNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatCustomNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatCustomNode.name.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
}

unint64_t FormatCustomNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

double FormatCustomNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 64);

  return result;
}

double FormatCustomNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;

  return result;
}

double sub_1D6323680(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 104);
  sub_1D5EB1500(v2);
  *(v3 + 104) = v2;
  return sub_1D5EB15C4(v4);
}

double FormatCustomNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatCustomNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatCustomNode.__allocating_init(identifier:name:size:resize:adjustments:style:animation:zIndex:visibility:isUserInteractionEnabled:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, __int128 *a12)
{
  v18 = swift_allocObject();
  v19 = *a3;
  v20 = *a4;
  v21 = *a5;
  v22 = *a10;
  v27 = *(a12 + 5);
  v28 = *(a12 + 4);
  swift_beginAccess();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = v19;
  *(v18 + 40) = *(a3 + 1);
  *(v18 + 56) = v20;
  *(v18 + 64) = v21;
  swift_beginAccess();
  *(v18 + 72) = a6;
  *(v18 + 80) = a7;
  *(v18 + 88) = a8;
  swift_beginAccess();
  *(v18 + 96) = a9;
  swift_beginAccess();
  *(v18 + 104) = v22;
  swift_beginAccess();
  *(v18 + 112) = a11;
  v23 = *a12;
  *(v18 + 136) = a12[1];
  *(v18 + 120) = v23;
  *(v18 + 152) = v28;
  *(v18 + 160) = v27;
  return v18;
}

uint64_t FormatCustomNode.init(identifier:name:size:resize:adjustments:style:animation:zIndex:visibility:isUserInteractionEnabled:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, __int128 *a12)
{
  v18 = *a3;
  v19 = *a4;
  v20 = *a5;
  v26 = *(a12 + 4);
  v24 = *a10;
  v25 = *(a12 + 5);
  swift_beginAccess();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v18;
  *(v12 + 40) = *(a3 + 1);
  *(v12 + 56) = v19;
  *(v12 + 64) = v20;
  swift_beginAccess();
  *(v12 + 72) = a6;
  *(v12 + 80) = a7;
  *(v12 + 88) = a8;
  swift_beginAccess();
  *(v12 + 96) = a9;
  swift_beginAccess();
  *(v12 + 104) = v24;
  swift_beginAccess();
  *(v12 + 112) = a11;
  v21 = *a12;
  *(v12 + 136) = a12[1];
  *(v12 + 120) = v21;
  *(v12 + 152) = v26;
  *(v12 + 160) = v25;
  return v12;
}

uint64_t FormatCustomNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 56));

  sub_1D5EB15C4(*(v0 + 104));
  sub_1D5EB2398(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  return v0;
}

uint64_t FormatCustomNode.__deallocating_deinit()
{
  FormatCustomNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6323B8C(uint64_t a1)
{
  result = sub_1D6323D20(&qword_1EC885CD0, &protocol conformance descriptor for FormatCustomNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6323BF4(void *a1)
{
  a1[1] = sub_1D6323D20(&qword_1EDF30648, &protocol conformance descriptor for FormatCustomNode);
  a1[2] = sub_1D6323D20(&unk_1EDF114A0, &protocol conformance descriptor for FormatCustomNode);
  result = sub_1D6323D20(&qword_1EC885CD8, &protocol conformance descriptor for FormatCustomNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6323C80@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D666EFA4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D6323CDC(uint64_t a1)
{
  result = sub_1D6323D20(&qword_1EC885CE0, &protocol conformance descriptor for FormatCustomNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6323D20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatCustomNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6323D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v17 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v19 = *(a4 + 16);
  v18 = *(a4 + 24);
  v20 = *(v17 + 40);
  if (v20)
  {
    v35 = *(v17 + 32);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v19, v18);

    v21 = v20;
    v31 = v35;
    v19 = *(a4 + 16);
    v18 = *(a4 + 24);
    v22 = *(a4 + 64);
    if (!v22)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v31 = v19;
    v21 = v18;
    v22 = *(a4 + 64);
    if (!v22)
    {
LABEL_7:
      v23 = 0;
      goto LABEL_8;
    }
  }

  v23 = *(v22 + 16);
  swift_beginAccess();
  if (!*(*(v23 + 16) + 16))
  {
    goto LABEL_7;
  }

LABEL_8:
  swift_beginAccess();
  v24 = *(a4 + 96);
  swift_beginAccess();
  v25 = *(a4 + 104);

  sub_1D5EB1500(v25);
  sub_1D615B4A8(a3, &v36);
  sub_1D5EB15C4(v25);
  v26 = v36;
  swift_beginAccess();
  v27 = *(a4 + 112);
  type metadata accessor for FormatCustomNodeLayoutAttributes();
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  *(v28 + 32) = v31;
  *(v28 + 40) = v21;
  *(v28 + 48) = v19;
  *(v28 + 56) = v18;
  *(v28 + 64) = a7;
  *(v28 + 72) = a8;
  *(v28 + 80) = a9;
  *(v28 + 88) = a10;
  *(v28 + 96) = v23;
  *(v28 + 104) = v24;
  *(v28 + 112) = v26;
  *(v28 + 120) = v27;
  *(v28 + 128) = a5;
  v29 = swift_allocObject();
  *(v28 + 136) = MEMORY[0x1E69E7CD0];
  *(v29 + 16) = v28;
  *a6 = v29 | 0x5000000000000000;
}

uint64_t type metadata accessor for FormatDebuggerContext(uint64_t a1)
{
  result = qword_1EC885CF0;
  if (!qword_1EC885CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6324070(uint64_t a1)
{
  sub_1D63245CC(319, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  if (v1 <= 0x3F)
  {
    sub_1D63245CC(319, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, MEMORY[0x1E69D6AD8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D632416C()
{
  v0 = type metadata accessor for FormatDebuggerCallStackFrameContext(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D63245CC(0, qword_1EDF21950, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatDebuggerContext(0);
  sub_1D63245CC(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  sub_1D725B8AC();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D6324630(v7);
    return 0;
  }

  else
  {
    sub_1D63246BC(v7, v12);
    sub_1D6324720(&v12[*(v8 + 24)], v3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1D6324784(0);
      v15 = *(v14 + 48);
      v20 = 0x203A74756F79614CLL;
      v21 = 0xE800000000000000;
      v16 = sub_1D63244B4();
      MEMORY[0x1DA6F9910](v16);

      v13 = v20;
      sub_1D63247F8(v12, type metadata accessor for FormatDebuggerCallStackFrame);
      sub_1D5EB9994(0);
      (*(*(v17 - 8) + 8))(&v3[v15], v17);
    }

    else
    {
      sub_1D63247F8(v3, type metadata accessor for FormatDebuggerCallStackFrameContext);
      v20 = 0x3A676E69646E6942;
      v21 = 0xE900000000000020;
      v18 = sub_1D63244B4();
      MEMORY[0x1DA6F9910](v18);

      v13 = v20;
      sub_1D63247F8(v12, type metadata accessor for FormatDebuggerCallStackFrame);
    }
  }

  return v13;
}

uint64_t sub_1D63244B4()
{
  v1 = *(v0 + 32);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x74756F2070657473;
      }

      return 0x726F727265;
    }

    return 0x6E692070657473;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x65766F2070657473;
      }

      return 0x726F727265;
    }

    strcpy(v4, "breakpoint (");
    BYTE5(v4[1]) = 0;
    HIWORD(v4[1]) = -5120;
    v3 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v3);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return v4[0];
  }
}

void sub_1D63245CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6324630(uint64_t a1)
{
  sub_1D63245CC(0, qword_1EDF21950, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D63246BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6324720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDebuggerCallStackFrameContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6324784(uint64_t a1)
{
  if (!qword_1EDF2F468)
  {
    type metadata accessor for FormatNodeContext(255);
    sub_1D5EB9994(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF2F468);
    }
  }
}

uint64_t sub_1D63247F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NewsFeed::PuzzleAccessoryButtonsConfig_optional __swiftcall PuzzleAccessoryButtonsConfig.init(with:)(Swift::OpaquePointer with)
{
  rawValue = with._rawValue;
  v3 = v1;
  v4 = *(with._rawValue + 2);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = v5;
      while (1)
      {
        if (v7 >= rawValue[2])
        {
          __break(1u);
          goto LABEL_18;
        }

        v5 = v7 + 1;

        PuzzleAccessoryButtonConfig.init(with:)(&v27, v8);
        object = v27.value.identifier._object;
        if (v27.value.identifier._object)
        {
          break;
        }

        sub_1D5C39354(v27.value.identifier._countAndFlagsBits, 0, v27.value.text.value._countAndFlagsBits, v27.value.text.value._object, v27.value.icon.value._countAndFlagsBits, v27.value.icon.value._object, v27.value.menuItems.value._rawValue);
        ++v7;
        if (v4 == v5)
        {
          goto LABEL_16;
        }
      }

      countAndFlagsBits = v27.value.text.value._countAndFlagsBits;
      v26 = v27.value.identifier._countAndFlagsBits;
      v23 = v27.value.icon.value._countAndFlagsBits;
      v24 = v27.value.text.value._object;
      v11 = v27.value.icon.value._object;
      v22 = v27.value.menuItems.value._rawValue;
      with._rawValue = swift_isUniquelyReferenced_nonNull_native();
      v21 = v3;
      if ((with._rawValue & 1) == 0)
      {
        with._rawValue = sub_1D698FDF4(0, *(v6 + 2) + 1, 1, v6);
        v6 = with._rawValue;
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      v14 = v22;
      v15 = v23;
      v16 = v24;
      v17 = countAndFlagsBits;
      v18 = v26;
      if (v13 >= v12 >> 1)
      {
        with._rawValue = sub_1D698FDF4((v12 > 1), v13 + 1, 1, v6);
        v16 = v24;
        v17 = countAndFlagsBits;
        v14 = v22;
        v15 = v23;
        v19 = v11;
        v6 = with._rawValue;
        v18 = v26;
      }

      else
      {
        v19 = v11;
      }

      *(v6 + 2) = v13 + 1;
      v20 = &v6[56 * v13];
      *(v20 + 4) = v18;
      *(v20 + 5) = object;
      *(v20 + 6) = v17;
      *(v20 + 7) = v16;
      *(v20 + 8) = v15;
      *(v20 + 9) = v19;
      *(v20 + 10) = v14;
      v3 = v21;
    }

    while (v4 - 1 != v7);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:

  *v3 = v6;
LABEL_18:
  result.value.buttons = with;
  result.is_nil = v10;
  return result;
}

void __swiftcall PuzzleAccessoryButtonConfig.init(with:)(NewsFeed::PuzzleAccessoryButtonConfig_optional *__return_ptr retstr, Swift::OpaquePointer with)
{
  if (*(with._rawValue + 2))
  {
    v4 = sub_1D5B69D90(25705, 0xE200000000000000);
    if (v5)
    {
      sub_1D5B76B10(*(with._rawValue + 7) + 32 * v4, v71);
      if (swift_dynamicCast())
      {
        v6 = v62;
        if (*(with._rawValue + 2))
        {
          v7 = sub_1D5B69D90(1954047348, 0xE400000000000000);
          if (v8)
          {
            sub_1D5B76B10(*(with._rawValue + 7) + 32 * v7, v71);
            v9 = swift_dynamicCast();
            if (v9)
            {
              v10 = v62;
            }

            else
            {
              v10 = 0;
            }

            if (v9)
            {
              v11 = *(&v62 + 1);
            }

            else
            {
              v11 = 0;
            }

            if (!*(with._rawValue + 2))
            {
              goto LABEL_31;
            }

LABEL_22:
            v21 = sub_1D5B69D90(1852793705, 0xE400000000000000);
            if (v22)
            {
              sub_1D5B76B10(*(with._rawValue + 7) + 32 * v21, v71);
              v23 = swift_dynamicCast();
              if (v23)
              {
                v24 = v62;
              }

              else
              {
                v24 = 0;
              }

              if (v23)
              {
                v25 = *(&v62 + 1);
              }

              else
              {
                v25 = 0;
              }

              if (!*(with._rawValue + 2))
              {
                goto LABEL_32;
              }
            }

            else
            {
              v24 = 0;
              v25 = 0;
              if (!*(with._rawValue + 2))
              {
                goto LABEL_32;
              }
            }

            v27 = sub_1D5B69D90(1970169197, 0xE400000000000000);
            if (v28)
            {
              sub_1D5B76B10(*(with._rawValue + 7) + 32 * v27, v71);

              sub_1D6325CE0(0);
              if (swift_dynamicCast())
              {
                v42 = v11;
                v43 = v10;
                v29 = v62;
                v30 = *(v62 + 16);
                if (v30)
                {
                  v31 = 0;
                  v26 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v32 = v31;
                    while (1)
                    {
                      if (v32 >= *(v29 + 16))
                      {
                        __break(1u);
                        return;
                      }

                      v31 = v32 + 1;

                      PuzzleMenuConfig.init(with:)(v33, &v62);
                      v71[6] = v68;
                      v71[7] = v69;
                      v72[0] = v70[0];
                      *(v72 + 9) = *(v70 + 9);
                      v71[2] = v64;
                      v71[3] = v65;
                      v71[4] = v66;
                      v71[5] = v67;
                      v71[0] = v62;
                      v71[1] = v63;
                      if (get_enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0(v71) != 1)
                      {
                        break;
                      }

                      v59 = v68;
                      v60 = v69;
                      v61[0] = v70[0];
                      *(v61 + 9) = *(v70 + 9);
                      v55 = v64;
                      v56 = v65;
                      v57 = v66;
                      v58 = v67;
                      v53 = v62;
                      v54 = v63;
                      sub_1D6325D38(&v53);
                      ++v32;
                      if (v30 == v31)
                      {
                        goto LABEL_52;
                      }
                    }

                    v59 = v68;
                    v60 = v69;
                    v61[0] = v70[0];
                    *(v61 + 9) = *(v70 + 9);
                    v55 = v64;
                    v56 = v65;
                    v57 = v66;
                    v58 = v67;
                    v53 = v62;
                    v54 = v63;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v26 = sub_1D69935C8(0, *(v26 + 2) + 1, 1, v26);
                    }

                    v35 = *(v26 + 2);
                    v34 = *(v26 + 3);
                    v36 = v35 + 1;
                    if (v35 >= v34 >> 1)
                    {
                      v41 = v35 + 1;
                      v38 = v26;
                      v39 = *(v26 + 2);
                      v40 = sub_1D69935C8((v34 > 1), v35 + 1, 1, v38);
                      v36 = v41;
                      v35 = v39;
                      v26 = v40;
                    }

                    v48 = v57;
                    v49 = v58;
                    v46 = v55;
                    v47 = v56;
                    *&v52[9] = *(v61 + 9);
                    v51 = v60;
                    *v52 = v61[0];
                    v50 = v59;
                    v44 = v53;
                    v45 = v54;
                    *(v26 + 2) = v36;
                    v37 = &v26[160 * v35];
                    *(v37 + 2) = v44;
                    *(v37 + 3) = v45;
                    *(v37 + 6) = v48;
                    *(v37 + 7) = v49;
                    *(v37 + 4) = v46;
                    *(v37 + 5) = v47;
                    *(v37 + 169) = *&v52[9];
                    *(v37 + 9) = v51;
                    *(v37 + 10) = *v52;
                    *(v37 + 8) = v50;
                  }

                  while (v30 - 1 != v32);
                }

                else
                {
                  v26 = MEMORY[0x1E69E7CC0];
                }

LABEL_52:

                v11 = v42;
                v10 = v43;
                goto LABEL_34;
              }

LABEL_33:
              v26 = 0;
LABEL_34:
              retstr->value.identifier = v6;
              retstr->value.text.value._countAndFlagsBits = v10;
              retstr->value.text.value._object = v11;
              retstr->value.icon.value._countAndFlagsBits = v24;
              retstr->value.icon.value._object = v25;
              retstr->value.menuItems.value._rawValue = v26;
              return;
            }

LABEL_32:

            goto LABEL_33;
          }

          v10 = 0;
          v11 = 0;
          if (*(with._rawValue + 2))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v11 = 0;
          v10 = 0;
        }

LABEL_31:
        v25 = 0;
        v24 = 0;
        goto LABEL_32;
      }
    }
  }

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v12 = sub_1D725C42C();
  __swift_project_value_buffer(v12, qword_1EDFFCFA8);

  v13 = sub_1D725C3FC();
  v14 = sub_1D7262EBC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v71[0] = v16;
    *v15 = 136315138;
    v17 = sub_1D7261D4C();
    v19 = v18;

    v20 = sub_1D5BC5100(v17, v19, v71);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1D5B42000, v13, v14, "Failed parsing PuzzleAccessoryButtonConfig. Invalid id entry: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1DA6FD500](v16, -1, -1);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  else
  {
  }

  retstr->value.menuItems.value._rawValue = 0;
  retstr->value.text = 0u;
  retstr->value.icon = 0u;
  retstr->value.identifier = 0u;
}
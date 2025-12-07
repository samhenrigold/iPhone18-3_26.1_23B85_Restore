void sub_1D67C0860(_BYTE *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_1D725A36C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V12.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v42);
  sub_1D5B68374(v12 + 56, v41);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v42, v15 + 16);
  sub_1D5B63F14(v41, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v40[0]) = 0;
  FeedLayoutStylerFactory.styler(withHeading:)(v40, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  __swift_destroy_boxed_opaque_existential_1((v15 + 56));
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v41);
  sub_1D5B68374(v16 + 56, v40);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v41, v18 + 16);
  sub_1D5B63F14(v40, v18 + 56);
  *(v18 + 96) = v17;
  v39[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v39, v42);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v42, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v42[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v42[0];
  v38[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D67C3E0C, v38);

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v35);
  v37 = v22;
  sub_1D67C3F18(0, &qword_1EC88B9C8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v35 = sub_1D725A4CC();
  sub_1D725A4DC();
  v25 = v43;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5BD48FC();
  v26 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v33 = v42[1];
  v34 = v42[0];
  *&v42[0] = v22;
  *&v41[0] = v25;
  MEMORY[0x1EEE9AC00](v26, v27);

  v28 = sub_1D725C00C();

  v29 = v36;
  *v36 = 0;
  v30 = v34;
  *(v29 + 24) = v33;
  *(v29 + 8) = v30;
  *&v42[0] = v28;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v31 = sub_1D72623BC();

  v32 = MEMORY[0x1E69E7CC0];
  *(v29 + 5) = v31;
  *(v29 + 6) = v32;
}

uint64_t sub_1D67C0DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D67C0E78(uint64_t a1, uint64_t a2)
{
  sub_1D67C4560(0, &qword_1EC88B9E0, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 12;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D67C3F18(0, &qword_1EC88B9E8, MEMORY[0x1E69D7150]);
  sub_1D67C3ED4(&qword_1EC88B9F0, &qword_1EC88B9E8, v11, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D67C1064(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  sub_1D67C4560(0, &qword_1EC88B9E0, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v16 - v7);
  v19 = a1;
  v9 = sub_1D725994C();
  v10 = swift_allocBox();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69D6F50], v9);
  *v8 = v10;
  v12 = *(v5 + 104);
  v12(v8, *MEMORY[0x1E69D73C0], v4);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D67C3F18(0, &qword_1EC88B9F8, MEMORY[0x1E69D6F38]);
  sub_1D67C3ED4(&qword_1EC88BA00, &qword_1EC88B9F8, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v19 = a1;
  v12(v8, *MEMORY[0x1E69D7460], v4);
  v18 = v17;
  sub_1D72599EC();
  return (v14)(v8, v4);
}

uint64_t sub_1D67C12EC(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v28 = a1;
  sub_1D67C4560(0, &qword_1EC88B9E0, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v25 - v7);
  v31 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 6;
  *v8 = v9;
  v27 = *MEMORY[0x1E69D7490];
  v26 = *(v5 + 104);
  v26(v8);
  sub_1D67C3FA4(0);
  sub_1D67C4560(0, &qword_1EC88BA10, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D70D8]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7273AE0;
  v15 = v14 + v13;
  sub_1D5ED83AC(0);
  v17 = (v15 + *(v16 + 48));
  v18 = *MEMORY[0x1E69D7238];
  v19 = sub_1D725A0DC();
  (*(*(v19 - 8) + 104))(v15, v18, v19);
  *v17 = 0x6C6F437468676972;
  v17[1] = 0xEB000000006E6D75;
  (*(v12 + 104))(v15, *MEMORY[0x1E69D7020], v11);
  v20 = v25;
  v30 = v25;
  v21 = MEMORY[0x1E69D6F38];
  sub_1D67C3F18(0, &qword_1EC88B9F8, MEMORY[0x1E69D6F38]);
  sub_1D67C3ED4(&qword_1EC88BA00, &qword_1EC88B9F8, v21, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();

  v22 = *(v5 + 8);
  v22(v8, v4);
  v31 = v28;
  v23 = swift_allocObject();
  *(v23 + 16) = 6;
  *v8 = v23;
  (v26)(v8, v27, v4);
  v29 = v20;
  sub_1D7259A2C();
  return (v22)(v8, v4);
}

uint64_t sub_1D67C1704(uint64_t a1, uint64_t a2)
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
  sub_1D67C4560(0, &qword_1EC88B9E0, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 3;
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
  sub_1D5BE780C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D67C3F18(0, &qword_1EC88B9F8, MEMORY[0x1E69D6F38]);
  sub_1D67C3ED4(&qword_1EC88BA00, &qword_1EC88B9F8, v36, MEMORY[0x1E69D6F40]);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D67C1CD8(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v32 = a1;
  sub_1D67C4560(0, &qword_1EC88B9E0, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = (&v28 - v9);
  v45 = a1;
  v42 = *MEMORY[0x1E69D74A8];
  v41 = *(v6 + 104);
  v41(&v28 - v9, v8);
  sub_1D67C3FA4(0);
  v39 = v11;
  sub_1D67C4560(0, &qword_1EC88BA10, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D70D8]);
  v36 = v12;
  v13 = *(v12 - 8);
  v40 = *(v13 + 72);
  v31 = *(v13 + 80);
  v14 = (v31 + 32) & ~v31;
  v33 = v14;
  v15 = swift_allocObject();
  v38 = xmmword_1D7273AE0;
  *(v15 + 16) = xmmword_1D7273AE0;
  v35 = *MEMORY[0x1E69D7098];
  v34 = *(v13 + 104);
  v34(v15 + v14);
  v44 = a2;
  v16 = MEMORY[0x1E69D6F38];
  sub_1D67C3F18(0, &qword_1EC88B9F8, MEMORY[0x1E69D6F38]);
  v18 = v17;
  v30 = sub_1D67C3ED4(&qword_1EC88BA00, &qword_1EC88B9F8, v16, MEMORY[0x1E69D6F40]);
  v28 = v18;
  sub_1D72599EC();

  v19 = *(v6 + 8);
  v19(v10, v5);
  v29 = v19;
  v20 = v32;
  v45 = v32;
  v21 = sub_1D725994C();
  v22 = swift_allocBox();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69D6F50], v21);
  *v10 = v22;
  v24 = v41;
  (v41)(v10, *MEMORY[0x1E69D73C0], v5);
  sub_1D7259A9C();
  v19(v10, v5);
  v45 = v20;
  (v24)(v10, v42, v5);
  v25 = v33;
  v26 = swift_allocObject();
  *(v26 + 16) = v38;
  (v34)(v26 + v25, v35, v36);
  v43 = v37;
  sub_1D72599EC();

  return v29(v10, v5);
}

uint64_t sub_1D67C2168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67C4560(0, &qword_1EC88B9E0, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 2;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D67C3F18(0, &qword_1EC88B9F8, MEMORY[0x1E69D6F38]);
  sub_1D67C3ED4(&qword_1EC88BA00, &qword_1EC88B9F8, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D67C2740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67C4560(0, &qword_1EC88B9E0, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 2;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D67C3F18(0, &qword_1EC88B9F8, MEMORY[0x1E69D6F38]);
  sub_1D67C3ED4(&qword_1EC88BA00, &qword_1EC88B9F8, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D67C2D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v19 = a2;
  v20 = a1;
  sub_1D67C4560(0, &qword_1EC88B9E0, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v19 - v10);
  v25 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 3;
  *v11 = v12;
  v13 = *MEMORY[0x1E69D7490];
  v14 = *(v8 + 104);
  v14(v11, v13, v7);
  v24 = a2;
  v15 = MEMORY[0x1E69D6F38];
  sub_1D67C3F18(0, &qword_1EC88B9F8, MEMORY[0x1E69D6F38]);
  sub_1D67C3ED4(&qword_1EC88BA00, &qword_1EC88B9F8, v15, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v25 = v20;
  v17 = swift_allocObject();
  *(v17 + 16) = 3;
  *v11 = v17;
  v14(v11, v13, v7);
  v23 = v19;
  sub_1D7259A2C();
  return (v16)(v11, v7);
}

uint64_t sub_1D67C2FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67C4560(0, &qword_1EC88B9E0, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 4uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 3 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 2;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D67C3F18(0, &qword_1EC88B9F8, MEMORY[0x1E69D6F38]);
  sub_1D67C3ED4(&qword_1EC88BA00, &qword_1EC88B9F8, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D67C357C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67C4560(0, &qword_1EC88B9E0, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 5uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 4 * *(v16 + 72), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 2;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE780C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D67C3F18(0, &qword_1EC88B9F8, MEMORY[0x1E69D6F38]);
  sub_1D67C3ED4(&qword_1EC88BA00, &qword_1EC88B9F8, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D67C3B54@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
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
  v16 = a4 + *(type metadata accessor for A12_V12.Bound(0) + 24);
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

unint64_t sub_1D67C3C68(uint64_t a1)
{
  *(a1 + 8) = sub_1D67C3C98();
  result = sub_1D67C3CEC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D67C3C98()
{
  result = qword_1EC88B998;
  if (!qword_1EC88B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B998);
  }

  return result;
}

unint64_t sub_1D67C3CEC()
{
  result = qword_1EC88B9A0;
  if (!qword_1EC88B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B9A0);
  }

  return result;
}

uint64_t type metadata accessor for A12_V12.Bound(uint64_t a1)
{
  result = qword_1EC88B9B0;
  if (!qword_1EC88B9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D67C3DB4(uint64_t a1)
{
  result = sub_1D67C45C8(&qword_1EC88B9C0, type metadata accessor for A12_V12.Bound, &unk_1D72ECB60);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67C3E1C()
{
  result = qword_1EC88B9D0;
  if (!qword_1EC88B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B9D0);
  }

  return result;
}

unint64_t sub_1D67C3E70()
{
  result = qword_1EC88B9D8;
  if (!qword_1EC88B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B9D8);
  }

  return result;
}

uint64_t sub_1D67C3ED4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D67C3F18(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D67C3F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V12.Layout;
    v8[1] = &type metadata for A12_V12.Layout.Attributes;
    v8[2] = sub_1D67C3E1C();
    v8[3] = sub_1D67C3E70();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D67C3FA4(uint64_t a1)
{
  if (!qword_1EC88BA08)
  {
    sub_1D67C4560(255, &qword_1EC88BA10, sub_1D67C3E1C, &type metadata for A12_V12.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88BA08);
    }
  }
}

unint64_t sub_1D67C4110()
{
  result = qword_1EC88BA18;
  if (!qword_1EC88BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BA18);
  }

  return result;
}

unint64_t sub_1D67C4168()
{
  result = qword_1EC88BA20;
  if (!qword_1EC88BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BA20);
  }

  return result;
}

unint64_t sub_1D67C41C0()
{
  result = qword_1EC88BA28;
  if (!qword_1EC88BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BA28);
  }

  return result;
}

unint64_t sub_1D67C4218()
{
  result = qword_1EC88BA30;
  if (!qword_1EC88BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BA30);
  }

  return result;
}

uint64_t sub_1D67C426C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D67C4560(0, &qword_1EC88BA38, sub_1D67C450C, &type metadata for A12_V12.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67C450C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D67C45C8(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
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

unint64_t sub_1D67C450C()
{
  result = qword_1EC88BA40;
  if (!qword_1EC88BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BA40);
  }

  return result;
}

void sub_1D67C4560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D67C45C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D67C4624()
{
  result = qword_1EC88BA50;
  if (!qword_1EC88BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BA50);
  }

  return result;
}

unint64_t sub_1D67C467C()
{
  result = qword_1EC88BA58;
  if (!qword_1EC88BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BA58);
  }

  return result;
}

unint64_t sub_1D67C46D4()
{
  result = qword_1EC88BA60;
  if (!qword_1EC88BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BA60);
  }

  return result;
}

void sub_1D67C4728(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v8 = a2[1];
    if (v8)
    {
      v14 = *a2;
      v15 = a2[2];
      v16 = a3;
      sub_1D5EBC314(v14, v8, v15);
      sub_1D6D270A8(a5, a6, a7, a8, &v17);

      sub_1D67C4828(&v17, a4, v16);
    }
  }
}

void sub_1D67C4828(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D725CE0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D725FC7C();
  v9 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v10);
  v31 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatSourceItemTipSource(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[2];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *a1;
    v29 = a1[1];
    v30 = v20;
    v28 = *(v14 + 20);
    v21 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v22 = *(v15 + 72);
    v26 = (v9 + 16);
    v27 = v22;
    v25 = (v6 + 16);
    v23 = v31;
    do
    {
      sub_1D67C4B10(v21, v17);
      (*v26)(v23, v17, v32);
      (*v25)(v33, &v17[v28], v5);

      sub_1D67C4B74(v17);
      sub_1D725CE1C();
      swift_allocObject();
      swift_unknownObjectRetain();
      v24 = a3;
      sub_1D725CDCC();
      sub_1D725CADC();

      v21 += v27;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_1D67C4B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSourceItemTipSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67C4B74(uint64_t a1)
{
  v2 = type metadata accessor for FormatSourceItemTipSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatGroupColumnSystemKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x746C7561666564;
  }

  else
  {
    return 1685217635;
  }
}

NewsFeed::FormatGroupColumnSystemKind_optional __swiftcall FormatGroupColumnSystemKind.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1D67C4C68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746C7561666564;
  }

  else
  {
    v3 = 1685217635;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x746C7561666564;
  }

  else
  {
    v5 = 1685217635;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

void sub_1D67C4D08(char *a2@<X8>)
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

void sub_1D67C4D68(uint64_t *a1@<X8>)
{
  v2 = 1685217635;
  if (*v1)
  {
    v2 = 0x746C7561666564;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D67C4DA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D67C4E1C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D67C4E84(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t _s8NewsFeed23FormatGroupColumnSystemO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (!v5)
    {
      sub_1D5F33294(*a1, 0);
      sub_1D5F33294(v4, 0);
      return 1;
    }

LABEL_8:
    sub_1D62B5D30(*a2, *(a2 + 8));
    sub_1D62B5D30(v2, v3);
    sub_1D5F33294(v2, v3);
    sub_1D5F33294(v4, v5);
    return 0;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      v6 = 1;
      sub_1D5F33294(*a1, 1uLL);
      sub_1D5F33294(v4, 1uLL);
      return v6;
    }

    goto LABEL_8;
  }

  if (v5 < 2)
  {
    goto LABEL_8;
  }

  sub_1D62B5D30(*a2, *(a2 + 8));
  sub_1D62B5D30(v2, v3);
  sub_1D62B5D30(v4, v5);
  sub_1D62B5D30(v2, v3);
  sub_1D6366584(v2 & 1, v3, v4 & 1, v5);
  v9 = v8;
  sub_1D5F33294(v2, v3);
  sub_1D5F33294(v4, v5);
  sub_1D5F33294(v4, v5);
  sub_1D5F33294(v2, v3);
  return v9 & 1;
}

unint64_t sub_1D67C50F8(uint64_t a1)
{
  *(a1 + 8) = sub_1D67C5128();
  result = sub_1D67C517C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D67C5128()
{
  result = qword_1EC88BA68;
  if (!qword_1EC88BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BA68);
  }

  return result;
}

unint64_t sub_1D67C517C()
{
  result = qword_1EDF226D0;
  if (!qword_1EDF226D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF226D0);
  }

  return result;
}

unint64_t sub_1D67C51D4()
{
  result = qword_1EDF226D8;
  if (!qword_1EDF226D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF226D8);
  }

  return result;
}

unint64_t sub_1D67C5228(uint64_t a1)
{
  result = sub_1D668FA6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67C5290(uint64_t a1)
{
  result = sub_1D67C52B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67C52B8()
{
  result = qword_1EC88BA70;
  if (!qword_1EC88BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BA70);
  }

  return result;
}

uint64_t sub_1D67C534C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67C53A0()
{
  result = qword_1EC88BA78;
  if (!qword_1EC88BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BA78);
  }

  return result;
}

id sub_1D67C5470(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorMaskViewController_editor] = a1;
  sub_1D725E6DC();
  sub_1D67C57FC(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7270C10;
  v5 = type metadata accessor for DebugFormatInspectorViewController();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_coverViewManager;
  sub_1D725D7AC();
  swift_allocObject();
  swift_retain_n();
  *&v6[v7] = sub_1D725D79C();
  *&v6[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController] = 0;
  v6[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_pane] = 4;
  *&v6[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_editor] = a1;
  v19.receiver = v6;
  v19.super_class = v5;
  v8 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  v9 = sub_1D67C58A0();
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  v10 = objc_allocWithZone(v5);
  v11 = OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_coverViewManager;
  swift_allocObject();

  *&v10[v11] = sub_1D725D79C();
  *&v10[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController] = 0;
  v10[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_pane] = 5;
  *&v10[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_editor] = a1;
  v18.receiver = v10;
  v18.super_class = v5;
  *(v4 + 48) = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  *(v4 + 56) = v9;
  v12 = sub_1D725E65C();
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorMaskViewController_maskSegmentedViewController] = v12;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v13 = v12;
  v14 = objc_msgSendSuper2(&v17, sel_initWithRootViewController_, v13);

  return v14;
}

id sub_1D67C5784()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  return v1;
}

void sub_1D67C57FC(uint64_t a1)
{
  if (!qword_1EC88DCC0)
  {
    sub_1D5F77290();
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88DCC0);
    }
  }
}

unint64_t sub_1D67C5854()
{
  result = qword_1EDF1AA80;
  if (!qword_1EDF1AA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1AA80);
  }

  return result;
}

unint64_t sub_1D67C58A0()
{
  result = qword_1EC88DCE0;
  if (!qword_1EC88DCE0)
  {
    type metadata accessor for DebugFormatInspectorViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DCE0);
  }

  return result;
}

double sub_1D67C58F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1D726267C();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);

  return result;
}

uint64_t sub_1D67C59B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_1D67C5A24(void *a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v80 = *MEMORY[0x1E69E9840];
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v67 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v61 - v11;
  v61 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v61 - v16;
  v18 = NSTemporaryDirectory();
  v19 = sub_1D726207C();
  v21 = v20;

  aBlock = a1;
  v73 = a2;
  v78 = v19;
  v79 = v21;
  v78 = sub_1D726235C();
  v79 = v22;
  sub_1D726226C();
  sub_1D725840C();

  v68 = objc_opt_self();
  v23 = [v68 defaultManager];
  v69 = v17;
  v24 = sub_1D725844C();
  aBlock = 0;
  LODWORD(v21) = [v23 removeItemAtURL:v24 error:&aBlock];

  if (v21)
  {
    v25 = aBlock;
    v26 = v63;
  }

  else
  {
    v27 = aBlock;
    v28 = sub_1D725829C();

    swift_willThrow();
    v26 = 0;
  }

  v29 = [v68 defaultManager];
  v30 = sub_1D725844C();
  aBlock = 0;
  v31 = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:0 attributes:0 error:&aBlock];

  v32 = v12;
  if (v31)
  {
    v63 = v26;
    v33 = aBlock;
  }

  else
  {
    v34 = aBlock;
    v35 = sub_1D725829C();

    swift_willThrow();
    v63 = 0;
  }

  v36 = *(v71 + 16);
  v62 = v6;
  if (v36)
  {
    v65 = *(v6 + 16);
    v66 = v6 + 16;
    v37 = v71 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v64 = *(v6 + 72);
    v71 = v6 + 8;
    while (1)
    {
      v70 = v36;
      v65(v32, v37, v5);
      v38 = [v68 defaultManager];
      v39 = sub_1D725844C();
      sub_1D725841C();
      v40 = v5;
      v41 = v32;
      v42 = v67;
      sub_1D725849C();

      v43 = sub_1D725844C();
      v44 = *v71;
      (*v71)(v42, v5);
      aBlock = 0;
      v45 = [v38 copyItemAtURL:v39 toURL:v43 error:&aBlock];

      v46 = aBlock;
      if (!v45)
      {
        break;
      }

      v44(v41, v40);
      v37 += v64;
      v36 = v70 - 1;
      v5 = v40;
      v32 = v41;
      if (v70 == 1)
      {
        goto LABEL_11;
      }
    }

    v55 = v46;
    sub_1D725829C();

    swift_willThrow();
    v44(v41, v40);
    v44(v69, v40);
  }

  else
  {
LABEL_11:
    sub_1D5BFDC08();
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1D7273AE0;
    *(v47 + 56) = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v47 + 32));
    v49 = v62;
    v50 = *(v62 + 16);
    v51 = v69;
    v50(boxed_opaque_existential_1, v69, v5);
    v52 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    v53 = v5;
    v54 = sub_1D726265C();

    v55 = [v52 initWithActivityItems:v54 applicationActivities:0];

    v56 = v67;
    v50(v67, v51, v53);
    v57 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v58 = swift_allocObject();
    (*(v49 + 32))(v58 + v57, v56, v53);
    v76 = sub_1D677E5E4;
    v77 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v73 = 1107296256;
    v74 = sub_1D67C58F8;
    v75 = &block_descriptor_44;
    v59 = _Block_copy(&aBlock);

    [v55 setCompletionWithItemsHandler_];
    _Block_release(v59);
    (*(v49 + 8))(v51, v53);
  }

  return v55;
}

void sub_1D67C6060(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = *(a1 + 8);
  v24[0] = *(a1 + 16);

  sub_1D677E798(v24);
  v8 = v7;

  v23 = sub_1D67C5A24(v6, v5, v8);

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v9 = sub_1D725DA4C();
  if (v9 && (v10 = v9, v11 = [v9 rootViewController], v10, v11))
  {
    v22 = sub_1D7262FCC();

    v12 = v23;
    v13 = [v12 popoverPresentationController];
    if (v13)
    {
      v14 = v13;
      if (a2)
      {
        v15 = sub_1D725E32C();
      }

      else
      {
        v15 = 0;
      }

      [v14 setSourceView_];
    }

    v17 = [v12 popoverPresentationController];

    if (v17)
    {
      if (a2 && (v18 = v24, sub_1D725E31C(), (v25 & 1) == 0))
      {
        v19 = *&v24[1];
        v20 = *&v24[2];
        v21 = *&v24[3];
      }

      else
      {
        v18 = MEMORY[0x1E695F050];
        v19 = *(MEMORY[0x1E695F050] + 8);
        v20 = *(MEMORY[0x1E695F050] + 16);
        v21 = *(MEMORY[0x1E695F050] + 24);
      }

      [v17 setSourceRect_];
    }

    [v22 presentViewController:v12 animated:1 completion:0];

    v16 = v22;
  }

  else
  {
    v16 = v23;
  }
}

int64x2_t static FormatCodingPuzzleTypeOverridesStrategy.defaultValue.getter@<Q0>(int64x2_t *a1@<X8>)
{
  v2 = *(type metadata accessor for FormatPuzzleType.Overrides(0) + 24);
  v3 = sub_1D72585BC();
  (*(*(v3 - 8) + 56))(&a1->i8[v2], 1, 1, v3);
  result = vdupq_n_s64(0xF000000000000007);
  *a1 = result;
  return result;
}

BOOL static FormatCodingPuzzleTypeOverridesStrategy.shouldEncode(wrappedValue:)(void *a1)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 || (~a1[1] & 0xF000000000000007) != 0)
  {
    return 1;
  }

  v6 = type metadata accessor for FormatPuzzleType.Overrides(0);
  sub_1D5EB84C0(a1 + *(v6 + 24), v5);
  v7 = sub_1D72585BC();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1D5E3E404(v5);
  return v8;
}

unint64_t sub_1D67C6568(uint64_t a1)
{
  result = sub_1D5E9E610();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D67C6590(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatPuzzleType.Overrides(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

int64x2_t sub_1D67C65D4@<Q0>(int64x2_t *a1@<X8>)
{
  v2 = *(type metadata accessor for FormatPuzzleType.Overrides(0) + 24);
  v3 = sub_1D72585BC();
  (*(*(v3 - 8) + 56))(&a1->i8[v2], 1, 1, v3);
  result = vdupq_n_s64(0xF000000000000007);
  *a1 = result;
  return result;
}

BOOL sub_1D67C664C(void *a1)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 || (~a1[1] & 0xF000000000000007) != 0)
  {
    return 1;
  }

  v6 = type metadata accessor for FormatPuzzleType.Overrides(0);
  sub_1D5EB84C0(a1 + *(v6 + 24), v5);
  v7 = sub_1D72585BC();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1D5E3E404(v5);
  return v8;
}

void FormatOptionsNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = type metadata accessor for GroupLayoutContext(0);
  v99 = *(v7 - 8);
  v8 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v102 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatOption(0);
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v108 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v110, v13);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v103 = v2;
  v16 = *(v2 + 32);
  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = 0;
    v95 = v8 + 7;
    v105 = v17;
    v106 = v15;
    v98 = v17 - 1;
    v107 = v16;
    do
    {
      v19 = 80 * v18 + 32;
      v20 = v18;
      while (1)
      {
        if (v20 >= *(v16 + 16))
        {
          __break(1u);
          return;
        }

        v111 = v20;
        v123 = *(v16 + v19);
        v21 = *(v16 + v19 + 16);
        v22 = *(v16 + v19 + 32);
        v23 = *(v16 + v19 + 64);
        v126 = *(v16 + v19 + 48);
        v127 = v23;
        v124 = v21;
        v125 = v22;
        swift_retain_n();
        v24 = sub_1D5CF5D60(&v123, &v114);
        MEMORY[0x1DA6F9CE0](v24);
        if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v109 = v128;
        v116 = v125;
        v117 = v126;
        v118 = v127;
        v114 = v123;
        v115 = v124;
        *v15 = a2;
        *(v15 + 1) = a1;
        swift_storeEnumTagMultiPayload();

        sub_1D6B49738(v15);
        if (v4)
        {

          sub_1D67C840C(v15, type metadata accessor for FormatOptionsNodeStatementContext);

          sub_1D5CF5E18(&v123);
          return;
        }

        v26 = v25;
        sub_1D67C840C(v15, type metadata accessor for FormatOptionsNodeStatementContext);
        v27 = *(v26 + 16);
        if (v27)
        {
          break;
        }

        v20 = v111 + 1;
        sub_1D5CF5E18(&v123);

        v19 += 80;
        v15 = v106;
        v16 = v107;
        if (v105 == v20)
        {
          goto LABEL_32;
        }
      }

      v96 = a1;
      v97 = a2;
      v82 = 0;
      *&v114 = MEMORY[0x1E69E7CC0];
      sub_1D5D24610(0, v27, 0);
      v28 = v114;
      v29 = v26 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v104 = *(v100 + 72);
      v92 = v111 + 1;
      do
      {
        v30 = v108;
        sub_1D5D25324(v29, v108, type metadata accessor for FormatOption);
        v31 = swift_allocBox();
        sub_1D5D5E3A4(v30, v32, type metadata accessor for FormatOption);
        *&v114 = v28;
        v34 = *(v28 + 16);
        v33 = *(v28 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1D5D24610((v33 > 1), v34 + 1, 1);
          v28 = v114;
        }

        *(v28 + 16) = v34 + 1;
        *(v28 + 8 * v34 + 32) = v31 | 0x6000000000000004;
        v29 += v104;
        --v27;
      }

      while (v27);

      v122 = 0;
      memset(v121, 0, sizeof(v121));
      v120 = 0;
      a2 = v97;
      v35 = *(v97 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
      v36 = *(v28 + 16);
      v91 = *(v97 + 24);
      v94 = v35;
      if (v36)
      {
        v37 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;

        v38 = sub_1D6F619D8(v28);

        v15 = v106;
        if (v38)
        {
          swift_beginAccess();
          v80 = 1;
          v120 = 1;
        }

        else
        {
          v38 = *(a2 + v37);

          v80 = 0;
        }
      }

      else
      {

        v38 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);

        v80 = 0;
        v15 = v106;
      }

      v39 = MEMORY[0x1E69E7CC0];
      v93 = v38;
      v40 = *(a2 + 40);
      v81 = *(a2 + 32);
      v90 = v40;

      v89 = sub_1D6BEC5F4(v39, a2, &v120);
      v42 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v41 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
      v44 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
      v43 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
      v46 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
      v45 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
      LODWORD(v104) = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      sub_1D67C8378(v121, &v112, v47);
      v87 = v46;
      v88 = v45;
      v85 = v44;
      v86 = v43;
      v83 = v42;
      v84 = v41;
      if (v113)
      {
        sub_1D5B63F14(&v112, &v114);
        swift_beginAccess();
        v120 = 1;
        v48 = (a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
        v49 = v44;
        v50 = v48[1];
        v76 = *v48;
        *&v112 = v76;
        *(&v112 + 1) = v50;
        v78 = *(&v115 + 1);
        v79 = v116;
        v77 = __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
        sub_1D62E312C(v42, v41, v49, v43, v46, v45, v104);

        a2 = v97;
        sub_1D720D93C(v77, &v112, v78, v79);
        __swift_destroy_boxed_opaque_existential_1(&v114);
        v51 = v112;
      }

      else
      {
        sub_1D62E312C(v42, v41, v44, v43, v46, v45, v104);
        sub_1D62E3214(&v112);
        v51 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
        v50 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8);
      }

      v4 = v82;
      a1 = v96;
      v52 = v102;
      v53 = v111;
      v54 = *(a2 + 96);
      v116 = *(a2 + 80);
      v117 = v54;
      v118 = *(a2 + 112);
      v119 = *(a2 + 128);
      v55 = *(a2 + 64);
      v114 = *(a2 + 48);
      v115 = v55;
      swift_beginAccess();
      if (v120 == 1)
      {
        v79 = v51;
        v82 = v50;
        if (v80)
        {
          sub_1D67C846C(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
          sub_1D5D25324(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v52, type metadata accessor for GroupLayoutContext);
          v56 = (*(v99 + 80) + 16) & ~*(v99 + 80);
          v57 = (v95 + v56) & 0xFFFFFFFFFFFFFFF8;
          v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
          v59 = swift_allocObject();
          sub_1D5D5E3A4(v102, v59 + v56, type metadata accessor for GroupLayoutContext);
          v60 = v94;
          *(v59 + v57) = v93;
          a2 = v97;
          *(v59 + v58) = v60;

          sub_1D5CF6A5C(&v114, &v112);

          v52 = v102;
          v80 = sub_1D725A80C();
        }

        else
        {
          v61 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
          sub_1D5CF6A5C(&v114, &v112);
          v80 = v61;
        }

        v62 = *(a2 + 16);
        sub_1D5D25324(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v52, type metadata accessor for GroupLayoutContext);
        v63 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
        sub_1D5B68374(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, &v112);
        type metadata accessor for FormatNodeBinderContext(0);
        v64 = swift_allocObject();
        v65 = v91;
        *(v64 + 16) = v62;
        *(v64 + 24) = v65;
        v66 = v117;
        *(v64 + 80) = v116;
        *(v64 + 96) = v66;
        *(v64 + 112) = v118;
        *(v64 + 128) = v119;
        v67 = v115;
        *(v64 + 48) = v114;
        *(v64 + 64) = v67;
        v68 = v94;
        *(v64 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v93;
        *(v64 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v68;
        sub_1D5D25324(v52, v64 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
        v69 = v90;
        *(v64 + 32) = v81;
        *(v64 + 40) = v69;
        *(v64 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v89;
        *(v64 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v63;
        sub_1D5B68374(&v112, v64 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
        v70 = v64 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
        v71 = v84;
        *v70 = v83;
        *(v70 + 8) = v71;
        v72 = v86;
        *(v70 + 16) = v85;
        *(v70 + 24) = v72;
        v73 = v88;
        *(v70 + 32) = v87;
        *(v70 + 40) = v73;
        *(v70 + 48) = v104;
        v74 = (v64 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
        v75 = v82;
        *v74 = v79;
        v74[1] = v75;

        sub_1D5CF5E18(&v123);
        __swift_destroy_boxed_opaque_existential_1(&v112);
        sub_1D67C840C(v52, type metadata accessor for GroupLayoutContext);
        sub_1D62E3214(v121);
        *(v64 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v80;

        a2 = v64;
        a1 = v96;
        v15 = v106;
        v53 = v111;
      }

      else
      {

        sub_1D62E31A0(v83, v84, v85, v86, v87, v88, v104);

        sub_1D5CF5E18(&v123);

        sub_1D62E3214(v121);
      }

      v16 = v107;
      v18 = v92;
    }

    while (v98 != v53);
  }

LABEL_32:

  FormatOptionsNode.bindChildren(binder:context:)(a1, a2);
}

double sub_1D67C72AC()
{
  sub_1D5EB99F0();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v3;
  *(v2 + 32) = 1;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 76) = -16384;
  *(v2 + 72) = 0;
  v9 = v2;
  sub_1D67C7DE0(&v9, v0, 0);
  v4 = v9;
  if (!v1)
  {
    swift_beginAccess();

    v6 = sub_1D60DFF0C(v5);

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v4;

      sub_1D6C4D24C(v7);
    }
  }

  return result;
}

uint64_t FormatOptionsNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatOptionsNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double FormatOptionsNode.statements.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  return result;
}

double FormatOptionsNode.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

uint64_t FormatOptionsNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatOptionsNode.__allocating_init(identifier:statements:children:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *(a5 + 32);
  v12 = *(a5 + 40);
  swift_beginAccess();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_beginAccess();
  *(v10 + 32) = a3;
  swift_beginAccess();
  *(v10 + 40) = a4;
  v13 = *(a5 + 16);
  *(v10 + 48) = *a5;
  *(v10 + 64) = v13;
  *(v10 + 80) = v11;
  *(v10 + 88) = v12;
  return v10;
}

uint64_t FormatOptionsNode.init(identifier:statements:children:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v12 = *(a5 + 40);
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  *(v5 + 32) = a3;
  swift_beginAccess();
  *(v5 + 40) = a4;
  v13 = *(a5 + 16);
  *(v5 + 48) = *a5;
  *(v5 + 64) = v13;
  *(v5 + 80) = v11;
  *(v5 + 88) = v12;
  return v5;
}

uint64_t FormatOptionsNode.deinit()
{

  sub_1D5EB2398(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t FormatOptionsNode.__deallocating_deinit()
{

  sub_1D5EB2398(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

void sub_1D67C7838(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v56 = a1;
  v57 = a5;
  v62 = type metadata accessor for FormatOption(0);
  v10 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v11);
  v61 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v65, v13);
  v64 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1E69E7CC0];
  swift_unownedRetainStrong();
  swift_beginAccess();
  v15 = *(a4 + 32);

  v16 = *(v15 + 16);

  if (v16)
  {
    v17 = 0;
    v59 = v16;
    v60 = v15;
    v54 = v16 - 1;
    v55 = v10;
    v18 = 32;
    v66 = a3;
    v53 = 32;
    do
    {
      v19 = v18 + 80 * v17;
      while (1)
      {
        v20 = v66;
        if (v17 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        v67 = v17;
        v68 = *(v15 + v19);
        v21 = *(v15 + v19 + 16);
        v22 = *(v15 + v19 + 32);
        v23 = *(v15 + v19 + 64);
        v71 = *(v15 + v19 + 48);
        v72 = v23;
        v69 = v21;
        v70 = v22;
        swift_retain_n();
        v24 = sub_1D5CF5D60(&v68, v73);
        MEMORY[0x1DA6F9CE0](v24);
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
          v20 = v66;
        }

        sub_1D726278C();
        v63 = v76;
        v73[2] = v70;
        v73[3] = v71;
        v73[4] = v72;
        v73[0] = v68;
        v73[1] = v69;
        sub_1D5EB9920(0);
        v26 = *(v25 + 48);
        v27 = v64;
        *v64 = v20;
        sub_1D5EB9994(0);
        (*(*(v28 - 8) + 16))(&v27[v26], a2, v28);
        swift_storeEnumTagMultiPayload();
        sub_1D6B49738(v27);
        v30 = v29;
        sub_1D67C840C(v27, type metadata accessor for FormatOptionsNodeStatementContext);
        if (v6)
        {

          sub_1D5CF5E18(&v68);
          return;
        }

        v31 = *(v30 + 16);
        if (v31)
        {
          break;
        }

        v17 = v67 + 1;
        sub_1D5CF5E18(&v68);

        v19 += 80;
        v15 = v60;
        if (v59 == v17)
        {
          a3 = v66;
          goto LABEL_19;
        }
      }

      v50 = a2;
      v51 = a4;
      v52 = 0;
      *&v73[0] = MEMORY[0x1E69E7CC0];
      sub_1D5D24610(0, v31, 0);
      v32 = *&v73[0];
      v33 = v30 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
      v58 = *(v55 + 72);
      v49 = v67 + 1;
      do
      {
        v34 = v61;
        sub_1D5D25324(v33, v61, type metadata accessor for FormatOption);
        v35 = swift_allocBox();
        sub_1D5D5E3A4(v34, v36, type metadata accessor for FormatOption);
        *&v73[0] = v32;
        v38 = *(v32 + 16);
        v37 = *(v32 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1D5D24610((v37 > 1), v38 + 1, 1);
          v32 = *&v73[0];
        }

        *(v32 + 16) = v38 + 1;
        *(v32 + 8 * v38 + 32) = v35 | 0x6000000000000004;
        v33 += v58;
        --v31;
      }

      while (v31);

      a3 = sub_1D6B0C068(v32);

      sub_1D5CF5E18(&v68);

      v66 = a3;
      a4 = v51;
      v6 = v52;
      v17 = v49;
      a2 = v50;
      v15 = v60;
      v18 = v53;
    }

    while (v54 != v67);
  }

LABEL_19:

  swift_unownedRetainStrong();
  swift_beginAccess();
  v39 = *(a4 + 40);

  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = 0;
    v42 = 32;
    while (v41 < *(v39 + 16))
    {
      v43 = *(v39 + v42);
      v44 = *(v39 + v42 + 32);
      v74[1] = *(v39 + v42 + 16);
      v74[2] = v44;
      v74[0] = v43;
      v45 = *(v39 + v42 + 48);
      v46 = *(v39 + v42 + 64);
      v47 = *(v39 + v42 + 80);
      v75 = *(v39 + v42 + 96);
      v74[4] = v46;
      v74[5] = v47;
      v74[3] = v45;
      sub_1D5C5C4CC(v74, &v68);
      sub_1D6FBFE04(v56, a3, v57);
      if (v6)
      {

        sub_1D5C5C540(v74);
        return;
      }

      ++v41;
      sub_1D5C5C540(v74);
      v42 += 104;
      if (v40 == v41)
      {
        goto LABEL_24;
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_24:
  }
}

void sub_1D67C7DE0(uint64_t *a1, void *a2, __n128 a3)
{
  v4 = v3;
  v60 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v60, v7);
  v56 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v55 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v54 - v14;
  swift_beginAccess();
  v54 = a2;
  v16 = a2[4];
  v17 = *(v16 + 16);

  v59 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = 32;
    v61 = a1;
    v58 = v16;
    while (v18 < *(v16 + 16))
    {
      v66 = *(v16 + v19);
      v20 = *(v16 + v19 + 16);
      v21 = *(v16 + v19 + 32);
      v22 = *(v16 + v19 + 64);
      v69 = *(v16 + v19 + 48);
      v70 = v22;
      v67 = v20;
      v68 = v21;
      v64 = *(v16 + v19 + 16);
      v65[0] = *(v16 + v19 + 32);
      v65[1] = *(v16 + v19 + 48);
      v65[2] = *(v16 + v19 + 64);
      v63 = *(v16 + v19);
      sub_1D5CF5D60(&v66, v62);
      sub_1D5CF5D60(&v66, v62);
      sub_1D69DF8F4(&v63, v15);
      if (v4)
      {

        sub_1D5CF5E18(&v66);
        return;
      }

      v71 = swift_allocBox();
      v24 = v23;
      sub_1D5D25324(v15, v23, type metadata accessor for FormatDerivedDataOption);
      v25 = *a1;
      swift_beginAccess();
      v26 = *(v25 + 16);
      v27 = *(v26 + 16);
      if (v27 && *(v26 + 8 * v27 + 24) >> 60 == 1 && (v28 = swift_projectBox(), v57 = 0, v29 = v55, sub_1D5D25324(v28, v55, type metadata accessor for FormatDerivedDataOption), v30 = v15, v31 = v56, sub_1D5D25324(v24, v56, type metadata accessor for FormatDerivedDataOption), , v32 = sub_1D69E18D4(v29, v31), v33 = v31, v15 = v30, sub_1D67C840C(v33, type metadata accessor for FormatDerivedDataOption), v34 = v29, v4 = v57, a1 = v61, sub_1D67C840C(v34, type metadata accessor for FormatDerivedDataOption), , v32))
      {
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5EB99F0();
          v42 = swift_allocObject();
          swift_beginAccess();
          v43 = v36[2];
          v63 = v36[1];
          v64 = v43;
          v65[0] = v36[3];
          *(v65 + 14) = *(v36 + 62);
          memmove((v42 + 16), v36 + 1, 0x3EuLL);
          sub_1D5EB9AB0(&v63, v62);

          *a1 = v42;
          v36 = v42;
        }

        swift_beginAccess();
        v37 = *(v36 + 2);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *(v36 + 2) = v37;
        if ((v38 & 1) == 0)
        {
          v37 = sub_1D698F848(0, *(v37 + 2) + 1, 1, v37);
          *(v36 + 2) = v37;
        }

        v40 = *(v37 + 2);
        v39 = *(v37 + 3);
        if (v40 >= v39 >> 1)
        {
          v37 = sub_1D698F848((v39 > 1), v40 + 1, 1, v37);
        }

        v41 = v71 | 0x1000000000000000;
        *(v37 + 2) = v40 + 1;
        *&v37[8 * v40 + 32] = v41;
        *(v36 + 2) = v37;
        swift_endAccess();
        a1 = v61;
      }

      ++v18;
      sub_1D5CF5E18(&v66);
      sub_1D67C840C(v15, type metadata accessor for FormatDerivedDataOption);
      v19 += 80;
      v16 = v58;
      if (v59 == v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v44 = v54;
    v45 = v54[4];

    sub_1D6285540(a1, v45);

    if (!v4)
    {
      if (v44[6])
      {
        v47 = v44[10];
        v46 = v44[11];
        v48 = a1;
        v50 = v44[8];
        v49 = v44[9];
        v51 = v44[7];
        *&v66 = v44[6];
        *(&v66 + 1) = v51;
        *&v67 = v50;
        *(&v67 + 1) = v49;
        *&v68 = v47;
        *(&v68 + 1) = v46;

        sub_1D5DEA234(v47);

        sub_1D626D2A0(v48);
        v52 = v68;

        sub_1D5CBF568(v52);

        a1 = v48;
      }

      swift_beginAccess();
      v53 = v44[5];

      sub_1D626DB9C(a1, v53);
    }
  }
}

uint64_t sub_1D67C8378(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1D67C846C(0, &qword_1EDF34AB8, sub_1D5EFF46C, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67C840C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D67C846C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D67C84D0(uint64_t a1)
{
  result = sub_1D67C85E4(&qword_1EC88BA90, &protocol conformance descriptor for FormatOptionsNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D67C8514(void *a1)
{
  a1[1] = sub_1D67C85E4(&qword_1EDF2F2F0, &protocol conformance descriptor for FormatOptionsNode);
  a1[2] = sub_1D67C85E4(&qword_1EDF10BD8, &protocol conformance descriptor for FormatOptionsNode);
  result = sub_1D67C85E4(&qword_1EC88BA98, &protocol conformance descriptor for FormatOptionsNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D67C85A0(uint64_t a1)
{
  result = sub_1D67C85E4(&qword_1EC88BAA0, &protocol conformance descriptor for FormatOptionsNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D67C85E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatOptionsNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D67C8650(uint64_t a1)
{
  v90 = a1;
  sub_1D5C42CC4(0, qword_1EDF0D8F0, type metadata accessor for PuzzleLeaderboardEntry);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v81 = &v78 - v3;
  v86 = type metadata accessor for PuzzleLeaderboardEntry(0);
  v80 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v4);
  v78 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C42CC4(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v85 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v84 = &v78 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v83 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v82 = &v78 - v17;
  v18 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v87 = *(v18 - 8);
  v88 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v79 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v78 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v78 - v31;
  v33 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v78 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v78 - v47;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v78 - v51;
  v53 = *v89;
  if (v53 <= 2)
  {
    if (*v89)
    {
      if (v53 == 1)
      {
        v56 = v90 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
        v57 = type metadata accessor for PuzzleStatistic(0);
        sub_1D619A9AC(v56 + *(v57 + 20), v48, type metadata accessor for PuzzleStatisticCategory);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if ((EnumCaseMultiPayload - 2) < 2 || !EnumCaseMultiPayload)
        {
          return sub_1D5BDDB88(v48, type metadata accessor for PuzzleStatisticCategory);
        }

        sub_1D67B6C74(v48, v36, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      }

      else
      {
        v66 = v90 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
        v67 = type metadata accessor for PuzzleStatistic(0);
        sub_1D619A9AC(v66 + *(v67 + 20), v44, type metadata accessor for PuzzleStatisticCategory);
        v68 = swift_getEnumCaseMultiPayload();
        if ((v68 - 2) < 2 || !v68)
        {
          return sub_1D5BDDB88(v44, type metadata accessor for PuzzleStatisticCategory);
        }

        sub_1D67B6C74(v44, v36, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      }
    }

    else
    {
      v63 = v90 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
      v64 = type metadata accessor for PuzzleStatistic(0);
      sub_1D619A9AC(v63 + *(v64 + 20), v52, type metadata accessor for PuzzleStatisticCategory);
      v65 = swift_getEnumCaseMultiPayload();
      if ((v65 - 2) < 2)
      {
        return sub_1D5BDDB88(v52, type metadata accessor for PuzzleStatisticCategory);
      }

      if (!v65)
      {
        sub_1D67B6C74(v52, v40, type metadata accessor for PuzzleStatisticValue);
        PuzzleStatisticValue.primaryValue.getter();
        v71 = type metadata accessor for PuzzleStatisticValue;
        v72 = v40;
        return sub_1D5BDDB88(v72, v71);
      }

      sub_1D67B6C74(v52, v36, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    }

    PuzzleStatisticValue.primaryValue.getter();
    v71 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
    v72 = v36;
    return sub_1D5BDDB88(v72, v71);
  }

  if (*v89 <= 4u)
  {
    if (v53 == 3)
    {
      v91 = 3;
      v54 = v82;
      sub_1D67C9020(v90, v82);
      if ((*(v87 + 48))(v54, 1, v88) != 1)
      {
        sub_1D67B6C74(v54, v32, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
        v55 = v32;
        return sub_1D5BDDB88(v55, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      }

      goto LABEL_13;
    }

    v92 = 4;
    v69 = v83;
    sub_1D67C9020(v90, v83);
    if ((*(v87 + 48))(v69, 1, v88) != 1)
    {
      sub_1D67B6C74(v69, v28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v55 = v28;
      return sub_1D5BDDB88(v55, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    }

LABEL_22:
    v60 = qword_1EDF3CB28;
    v70 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
LABEL_23:
    v61 = v70;
    v62 = v69;
    return sub_1D67C9924(v62, v60, v61);
  }

  if (v53 == 5)
  {
    v93 = 5;
    v54 = v84;
    sub_1D67C9020(v90, v84);
    if ((*(v87 + 48))(v54, 1, v88) != 1)
    {
      sub_1D67B6C74(v54, v24, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v55 = v24;
      return sub_1D5BDDB88(v55, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    }

LABEL_13:
    v60 = qword_1EDF3CB28;
    v61 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult;
    v62 = v54;
    return sub_1D67C9924(v62, v60, v61);
  }

  v94 = 6;
  v69 = v85;
  sub_1D67C9020(v90, v85);
  if ((*(v87 + 48))(v69, 1, v88) == 1)
  {
    goto LABEL_22;
  }

  v73 = v79;
  sub_1D67B6C74(v69, v79, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  v69 = v81;
  sub_1D6E99958(v81);
  v74 = v86;
  if ((*(v80 + 48))(v69, 1, v86) == 1)
  {
    sub_1D5BDDB88(v73, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    v60 = qword_1EDF0D8F0;
    v70 = type metadata accessor for PuzzleLeaderboardEntry;
    goto LABEL_23;
  }

  v75 = v78;
  sub_1D67B6C74(v69, v78, type metadata accessor for PuzzleLeaderboardEntry);
  v76 = *(v75 + *(v74 + 32));
  sub_1D5BDDB88(v75, type metadata accessor for PuzzleLeaderboardEntry);
  v77 = *(v73 + *(v74 + 32));
  result = sub_1D5BDDB88(v73, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  if (__OFSUB__(v76, v77))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D67C9020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C42CC4(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - v14;
  v16 = a1 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
  v17 = type metadata accessor for PuzzleStatistic(0);
  sub_1D619A9AC(v16 + *(v17 + 20), v7, type metadata accessor for PuzzleStatisticCategory);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D5BDDB88(v7, type metadata accessor for PuzzleStatisticCategory);
    goto LABEL_5;
  }

  sub_1D67B7068(v7, v15);
  sub_1D67B7068(v15, v11);
  v18 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_1D67C9924(v11, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
LABEL_5:
    v20 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  sub_1D67B6C74(v11, a2, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  return (*(v19 + 56))(a2, 0, 1, v18);
}

double sub_1D67C92C8(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D67C9404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D67CA658(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D67C9434(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v9 = 0xEC00000065756C61;
    v10 = 0xEE0065756C615679;
    v11 = 0x7261646E6F636573;
    if (v2 != 1)
    {
      v11 = 0x7972616974726574;
      v10 = 0xED000065756C6156;
    }

    v12 = v2 == 0;
    if (*v1)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0x567972616D697270;
    }

    if (!v12)
    {
      v9 = v10;
    }

    *a1 = v13;
    a1[1] = v9;
  }

  else
  {
    v3 = 0x80000001D73BC720;
    v4 = 0xD00000000000002BLL;
    if (v2 == 5)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x80000001D73BC740;
    }

    v5 = 0x80000001D73BC6E0;
    if (v2 == 3)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (v2 != 3)
    {
      v5 = 0x80000001D73BC700;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    *a1 = v7;
    a1[1] = v8;
  }
}

uint64_t FormatPuzzleStatisticBinding.Float.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D67C9674()
{
  result = qword_1EC88BAA8;
  if (!qword_1EC88BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BAA8);
  }

  return result;
}

unint64_t sub_1D67C96C8(uint64_t a1)
{
  result = sub_1D67C96F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67C96F0()
{
  result = qword_1EC88BAB0;
  if (!qword_1EC88BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BAB0);
  }

  return result;
}

unint64_t sub_1D67C9744(void *a1)
{
  a1[1] = sub_1D665979C();
  a1[2] = sub_1D66FE6F0();
  result = sub_1D67C9674();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67C97D0()
{
  result = qword_1EC88BAB8;
  if (!qword_1EC88BAB8)
  {
    sub_1D67C9828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BAB8);
  }

  return result;
}

void sub_1D67C9828()
{
  if (!qword_1EC88BAC0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88BAC0);
    }
  }
}

unint64_t sub_1D67C987C()
{
  result = qword_1EC88BAC8;
  if (!qword_1EC88BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BAC8);
  }

  return result;
}

unint64_t sub_1D67C98D0()
{
  result = qword_1EDF0A898;
  if (!qword_1EDF0A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A898);
  }

  return result;
}

uint64_t sub_1D67C9924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C42CC4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D67C9980@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a1;
  v128 = a3;
  v129 = a2;
  v126 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v126, v3);
  v125 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v124 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v130, v8);
  v123 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v122 = &v120 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v121 = &v120 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v120 = &v120 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v120 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v120 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v120 - v29;
  v31 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v120 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v120 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v120 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v120 - v49;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v120 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v59 = *v127;
  if (v59 <= 2)
  {
    if (*v127)
    {
      v68 = v26;
      v69 = v57;
      if (v59 == 1)
      {
        v38 = v54;
        sub_1D619A9AC(v129, v54, type metadata accessor for FeedPuzzleStatistic);
        v70 = *(v69 + 32);
        v71 = type metadata accessor for PuzzleStatistic(0);
        sub_1D619A9AC(&v54[v70 + *(v71 + 20)], v68, type metadata accessor for PuzzleStatisticCategory);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v66 = v128;
        if ((EnumCaseMultiPayload - 2) >= 2 && EnumCaseMultiPayload)
        {
          v109 = v68;
          v110 = v125;
          sub_1D67B6C74(v109, v125, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
          v111 = PuzzleStatisticValue.primaryValue.getter();
          sub_1D5BDDB88(v110, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
          v73 = v111;
        }

        else
        {
          sub_1D5BDDB88(v68, type metadata accessor for PuzzleStatisticCategory);
          v73 = -1.0;
        }

        v107 = 0x7261646E6F636553;
        v108 = 0xEF65756C61562079;
      }

      else
      {
        v38 = v50;
        sub_1D619A9AC(v129, v50, type metadata accessor for FeedPuzzleStatistic);
        v85 = *(v69 + 32);
        v86 = type metadata accessor for PuzzleStatistic(0);
        sub_1D619A9AC(&v50[v85 + *(v86 + 20)], v22, type metadata accessor for PuzzleStatisticCategory);
        v87 = swift_getEnumCaseMultiPayload();
        if ((v87 - 2) >= 2)
        {
          v66 = v128;
          if (v87)
          {
            v112 = v125;
            sub_1D67B6C74(v22, v125, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
            v113 = PuzzleStatisticValue.primaryValue.getter();
            sub_1D5BDDB88(v112, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
            v73 = v113;
          }

          else
          {
            sub_1D5BDDB88(v22, type metadata accessor for PuzzleStatisticCategory);
            v73 = -1.0;
          }
        }

        else
        {
          sub_1D5BDDB88(v22, type metadata accessor for PuzzleStatisticCategory);
          v73 = -1.0;
          v66 = v128;
        }

        v107 = 0x7972616974726554;
        v108 = 0xEE0065756C615620;
      }
    }

    else
    {
      v38 = &v120 - v58;
      v80 = v57;
      sub_1D619A9AC(v129, &v120 - v58, type metadata accessor for FeedPuzzleStatistic);
      v81 = *(v80 + 32);
      v82 = type metadata accessor for PuzzleStatistic(0);
      sub_1D619A9AC(&v38[v81 + *(v82 + 20)], v30, type metadata accessor for PuzzleStatisticCategory);
      v83 = swift_getEnumCaseMultiPayload();
      if ((v83 - 2) >= 2)
      {
        v66 = v128;
        if (v83)
        {
          v96 = v125;
          sub_1D67B6C74(v30, v125, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
          v84 = PuzzleStatisticValue.primaryValue.getter();
          v97 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
        }

        else
        {
          v96 = v124;
          sub_1D67B6C74(v30, v124, type metadata accessor for PuzzleStatisticValue);
          v84 = PuzzleStatisticValue.primaryValue.getter();
          v97 = type metadata accessor for PuzzleStatisticValue;
        }

        sub_1D5BDDB88(v96, v97);
      }

      else
      {
        sub_1D5BDDB88(v30, type metadata accessor for PuzzleStatisticCategory);
        v84 = -1.0;
        v66 = v128;
      }

      v73 = v84;
      v107 = 0x207972616D697250;
      v108 = 0xED000065756C6156;
    }

    goto LABEL_52;
  }

  v60 = v57;
  if (*v127 > 4u)
  {
    if (v59 != 5)
    {
      v38 = v34;
      v61 = "";
      sub_1D619A9AC(v129, v34, type metadata accessor for FeedPuzzleStatistic);
      v91 = *(v60 + 32);
      v92 = &v34[v91 + *(type metadata accessor for PuzzleStatistic(0) + 20)];
      v93 = v123;
      sub_1D619A9AC(v92, v123, type metadata accessor for PuzzleStatisticCategory);
      v94 = swift_getEnumCaseMultiPayload();
      v66 = v128;
      if ((v94 - 2) >= 2)
      {
        if (v94)
        {
          v117 = v93;
          v105 = v125;
          sub_1D67B6C74(v117, v125, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
          v95 = PuzzleStatisticValue.primaryValue.getter();
          v106 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
        }

        else
        {
          v104 = v93;
          v105 = v124;
          sub_1D67B6C74(v104, v124, type metadata accessor for PuzzleStatisticValue);
          v95 = PuzzleStatisticValue.primaryValue.getter();
          v106 = type metadata accessor for PuzzleStatisticValue;
        }

        sub_1D5BDDB88(v105, v106);
      }

      else
      {
        sub_1D5BDDB88(v93, type metadata accessor for PuzzleStatisticCategory);
        v95 = -1.0;
      }

      v73 = v95;
      v107 = 0xD00000000000002FLL;
      goto LABEL_51;
    }

    v74 = "est Competitor Score Difference";
    sub_1D619A9AC(v129, v38, type metadata accessor for FeedPuzzleStatistic);
    v75 = *(v60 + 32);
    v76 = type metadata accessor for PuzzleStatistic(0);
    v77 = v122;
    sub_1D619A9AC(&v38[v75 + *(v76 + 20)], v122, type metadata accessor for PuzzleStatisticCategory);
    v78 = swift_getEnumCaseMultiPayload();
    if ((v78 - 2) < 2)
    {
      goto LABEL_12;
    }

    if (!v78)
    {
      goto LABEL_32;
    }

    goto LABEL_45;
  }

  if (v59 == 3)
  {
    v38 = v46;
    v61 = "Leaderboard Player Rank";
    sub_1D619A9AC(v129, v46, type metadata accessor for FeedPuzzleStatistic);
    v62 = *(v60 + 32);
    v63 = type metadata accessor for PuzzleStatistic(0);
    v64 = v120;
    sub_1D619A9AC(&v46[v62 + *(v63 + 20)], v120, type metadata accessor for PuzzleStatisticCategory);
    v65 = swift_getEnumCaseMultiPayload();
    v66 = v128;
    if ((v65 - 2) >= 2)
    {
      if (v65)
      {
        v114 = v64;
        v99 = v125;
        sub_1D67B6C74(v114, v125, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
        v67 = PuzzleStatisticValue.primaryValue.getter();
        v100 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      }

      else
      {
        v98 = v64;
        v99 = v124;
        sub_1D67B6C74(v98, v124, type metadata accessor for PuzzleStatisticValue);
        v67 = PuzzleStatisticValue.primaryValue.getter();
        v100 = type metadata accessor for PuzzleStatisticValue;
      }

      sub_1D5BDDB88(v99, v100);
    }

    else
    {
      sub_1D5BDDB88(v64, type metadata accessor for PuzzleStatisticCategory);
      v67 = -1.0;
    }

    v73 = v67;
    v107 = 0xD000000000000018;
LABEL_51:
    v108 = v61 | 0x8000000000000000;
LABEL_52:
    v116 = v66;
    goto LABEL_53;
  }

  v38 = v42;
  v74 = "Leaderboard Num Entries";
  sub_1D619A9AC(v129, v42, type metadata accessor for FeedPuzzleStatistic);
  v88 = *(v60 + 32);
  v89 = type metadata accessor for PuzzleStatistic(0);
  v77 = v121;
  sub_1D619A9AC(&v42[v88 + *(v89 + 20)], v121, type metadata accessor for PuzzleStatisticCategory);
  v90 = swift_getEnumCaseMultiPayload();
  if ((v90 - 2) >= 2)
  {
    if (!v90)
    {
LABEL_32:
      v101 = v77;
      v102 = v124;
      sub_1D67B6C74(v101, v124, type metadata accessor for PuzzleStatisticValue);
      v79 = PuzzleStatisticValue.primaryValue.getter();
      v103 = type metadata accessor for PuzzleStatisticValue;
LABEL_46:
      sub_1D5BDDB88(v102, v103);
      goto LABEL_47;
    }

LABEL_45:
    v115 = v77;
    v102 = v125;
    sub_1D67B6C74(v115, v125, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    v79 = PuzzleStatisticValue.primaryValue.getter();
    v103 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
    goto LABEL_46;
  }

LABEL_12:
  sub_1D5BDDB88(v77, type metadata accessor for PuzzleStatisticCategory);
  v79 = -1.0;
LABEL_47:
  v73 = v79;
  v108 = v74 | 0x8000000000000000;
  v66 = v128;
  v116 = v128;
  v107 = 0xD000000000000017;
LABEL_53:
  sub_1D711A80C(v107, v108, *&v73, 0, v116);
  sub_1D5BDDB88(v38, type metadata accessor for FeedPuzzleStatistic);
  v118 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v118 - 8) + 56))(v66, 0, 1, v118);
}

unint64_t sub_1D67CA658(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

NewsFeed::LiveActivityWebEmbedDatastore::SubscriptionState_optional __swiftcall LiveActivityWebEmbedDatastore.SubscriptionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LiveActivityWebEmbedDatastore.SubscriptionState.rawValue.getter()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1D67CA76C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D67CA818(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D67CA8B0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D67CA964(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0x6269726373627573;
  if (v2 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001D73BC910;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x80000001D73BC8F0;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1D67CAA7C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6269726373627573;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6269726373627573;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (v4 == 1)
  {
    v6 = 0xEA00000000006465;
  }

  else
  {
    v6 = 0x80000001D73BC910;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001D73BC8F0;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x80000001D73BC910;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001D73BC8F0;
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

uint64_t LiveActivityWebEmbedDatastore.LiveActivity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725C2AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LiveActivityWebEmbedDatastore.LiveActivity.subscription.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity(uint64_t a1)
{
  result = qword_1EDF0A318;
  if (!qword_1EDF0A318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LiveActivityWebEmbedDatastore.LiveActivity.scheduledStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity(0) + 24);

  return sub_1D5B76E3C(v3, a1);
}

uint64_t LiveActivityWebEmbedDatastore.LiveActivity.clientDataTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity(0) + 28);

  return sub_1D5B76E3C(v3, a1);
}

uint64_t LiveActivityWebEmbedDatastore.LiveActivity.debugDescription.getter()
{
  sub_1D725C2AC();
  sub_1D67CDDA0(&qword_1EC88BAD0, MEMORY[0x1E69B69A8], MEMORY[0x1E69B69D8]);
  v5 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v1 = type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity(0);
  if (*(v0 + *(v1 + 20)))
  {
    if (*(v0 + *(v1 + 20)) == 1)
    {
      v2 = 0xEA00000000006465;
      v3 = 0x6269726373627573;
    }

    else
    {
      v2 = 0x80000001D73BC910;
      v3 = 0xD000000000000014;
    }
  }

  else
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001D73BC8F0;
  }

  MEMORY[0x1DA6F9910](v3, v2);

  return v5;
}

unint64_t sub_1D67CADE8()
{
  v1 = 25705;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x7069726373627573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D67CAE64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D67CDB8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D67CAE8C(uint64_t a1)
{
  v2 = sub_1D67CD1B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67CAEC8(uint64_t a1)
{
  v2 = sub_1D67CD1B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LiveActivityWebEmbedDatastore.LiveActivity.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D67CD534(0, &qword_1EC88BAD8, sub_1D67CD1B4, &type metadata for LiveActivityWebEmbedDatastore.LiveActivity.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67CD1B4();
  sub_1D7264B5C();
  v17 = 0;
  sub_1D725C2AC();
  sub_1D67CDDA0(&qword_1EDF175C8, MEMORY[0x1E69B69A8], MEMORY[0x1E69B69B0]);
  sub_1D726443C();
  if (!v2)
  {
    v16 = *(v3 + *(type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity(0) + 20));
    v15 = 1;
    sub_1D67CD208();
    sub_1D726443C();
    v14 = 2;
    sub_1D725891C();
    sub_1D67CDDA0(&qword_1EDF45B18, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D72643BC();
    v13 = 3;
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t LiveActivityWebEmbedDatastore.LiveActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1D5B7B41C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v34 = &v31 - v8;
  v9 = sub_1D725C2AC();
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v38 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67CD534(0, &qword_1EC88BAF0, sub_1D67CD1B4, &type metadata for LiveActivityWebEmbedDatastore.LiveActivity.CodingKeys, MEMORY[0x1E69E6F48]);
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67CD1B4();
  v39 = v15;
  v20 = v40;
  sub_1D7264B0C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v19;
  v22 = v35;
  v45 = 0;
  sub_1D67CDDA0(&qword_1EC88BAF8, MEMORY[0x1E69B69A8], MEMORY[0x1E69B69D0]);
  sub_1D726431C();
  v23 = v9;
  v24 = v21;
  (*(v22 + 32))(v21, v38, v23);
  v43 = 1;
  sub_1D67CD25C();
  sub_1D726431C();
  v40 = v16;
  v21[*(v16 + 20)] = v44;
  sub_1D725891C();
  v42 = 2;
  v25 = sub_1D67CDDA0(&qword_1EDF45B08, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v26 = v34;
  v38 = v25;
  sub_1D726427C();
  v27 = a1;
  sub_1D5DF42F8(v26, v24 + *(v40 + 24));
  v41 = 3;
  v28 = v24;
  v29 = v33;
  sub_1D726427C();
  (*(v36 + 8))(v39, v37);
  sub_1D5DF42F8(v29, v28 + *(v40 + 28));
  sub_1D67CD2B0(v28, v32);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1D67CD314(v28, type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity);
}

uint64_t static LiveActivityWebEmbedDatastore.DebugData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {

      v4 = sub_1D633BD74(v2, v3);

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void sub_1D67CB7E8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001D73D5490 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D67CB87C(uint64_t a1)
{
  v2 = sub_1D67CD374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67CB8B8(uint64_t a1)
{
  v2 = sub_1D67CD374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LiveActivityWebEmbedDatastore.DebugData.encode(to:)(void *a1)
{
  sub_1D67CD534(0, &qword_1EDF02580, sub_1D67CD374, &type metadata for LiveActivityWebEmbedDatastore.DebugData.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67CD374();

  sub_1D7264B5C();
  v11[3] = v9;
  sub_1D5B7B41C(0, &qword_1EDF05350, MEMORY[0x1E69B69A8], MEMORY[0x1E69E62F8]);
  sub_1D67CD3C8(&qword_1EDF05348, &qword_1EDF175C8, MEMORY[0x1E69B69B0], MEMORY[0x1E69E6300]);
  sub_1D72643BC();

  return (*(v5 + 8))(v8, v4);
}

uint64_t LiveActivityWebEmbedDatastore.DebugData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  sub_1D67CD534(0, &qword_1EC88BB08, sub_1D67CD374, &type metadata for LiveActivityWebEmbedDatastore.DebugData.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67CD374();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v13;
    sub_1D5B7B41C(0, &qword_1EDF05350, MEMORY[0x1E69B69A8], MEMORY[0x1E69E62F8]);
    sub_1D67CD3C8(&qword_1EC88BB10, &qword_1EC88BAF8, MEMORY[0x1E69B69D0], MEMORY[0x1E69E6330]);
    sub_1D726427C();
    (*(v6 + 8))(v9, v5);
    *v10 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D67CBD54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {

      v4 = sub_1D633BD74(v2, v3);

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t LiveActivityWebEmbedDatastore.debug.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5B71354(v2);
}

uint64_t LiveActivityWebEmbedDatastore.init(liveActivities:debug:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

uint64_t static LiveActivityWebEmbedDatastore.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDF20E48 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EDF20E58;
  *a1 = qword_1EDF20E50;
  a1[1] = v1;

  return sub_1D5B71354(v1);
}

uint64_t sub_1D67CBE54()
{
  if (*v0)
  {
    return 0x6775626564;
  }

  else
  {
    return 0x697463416576696CLL;
  }
}

void sub_1D67CBE98(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697463416576696CLL && a2 == 0xEE00736569746976;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6775626564 && a2 == 0xE500000000000000)
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

uint64_t sub_1D67CBF78(uint64_t a1)
{
  v2 = sub_1D67CD48C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67CBFB4(uint64_t a1)
{
  v2 = sub_1D67CD48C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LiveActivityWebEmbedDatastore.encode(to:)(void *a1)
{
  sub_1D67CD534(0, &qword_1EDF02588, sub_1D67CD48C, &type metadata for LiveActivityWebEmbedDatastore.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v14 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67CD48C();

  sub_1D7264B5C();
  v17 = v9;
  v16 = 0;
  sub_1D5B7B41C(0, &qword_1EDF04B68, type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity, MEMORY[0x1E69E62F8]);
  sub_1D67CD59C(&qword_1EDF04B60, qword_1EDF0A328, &protocol conformance descriptor for LiveActivityWebEmbedDatastore.LiveActivity, MEMORY[0x1E69E6300]);
  v10 = v15;
  sub_1D726443C();

  if (!v10)
  {
    v17 = v14;
    v16 = 1;
    sub_1D5B71354(v14);
    sub_1D67CD4E0();
    sub_1D72643BC();
    v11.n128_f64[0] = sub_1D66A5FF8(v17);
  }

  return (*(v5 + 8))(v8, v4, v11);
}

void LiveActivityWebEmbedDatastore.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  sub_1D67CD534(0, &qword_1EC88BB18, sub_1D67CD48C, &type metadata for LiveActivityWebEmbedDatastore.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67CD48C();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v6;
    v11 = v14;
    sub_1D5B7B41C(0, &qword_1EDF04B68, type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity, MEMORY[0x1E69E62F8]);
    v15 = 0;
    sub_1D67CD59C(&qword_1EC88BB20, &qword_1EC88BB28, &protocol conformance descriptor for LiveActivityWebEmbedDatastore.LiveActivity, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    v12 = v16;
    v15 = 1;
    sub_1D67CD660();
    sub_1D726427C();
    (*(v10 + 8))(v9, v5);
    v13 = v16;
    *v11 = v12;
    v11[1] = v13;

    sub_1D5B71354(v13);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_1D66A5FF8(v13);
  }
}

id sub_1D67CC554(uint64_t *a1)
{
  v2 = sub_1D725C42C();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v28 - v6;
  v8 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D725787C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  sub_1D72578EC();
  swift_allocObject();
  sub_1D72578DC();
  (*(v11 + 104))(v14, *MEMORY[0x1E6967FC8], v10);
  sub_1D725788C();
  v31 = v15;
  v32 = v16;
  sub_1D67CDCF8();
  v17 = sub_1D72578BC();
  v19 = v18;

  sub_1D66A5FF8(v16);
  sub_1D72620CC();
  sub_1D726209C();
  if (v20)
  {
    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = sub_1D726203C();

    v23 = [v21 initWithJSONString_];
    sub_1D5B952F8(v17, v19);

    return v23;
  }

  else
  {
    sub_1D725C3DC();
    v25 = sub_1D725C3FC();
    v26 = sub_1D7262EBC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D5B42000, v25, v26, "Unable to create string from JSON data.", v27, 2u);
      MEMORY[0x1DA6FD500](v27, -1, -1);
    }

    sub_1D5B952F8(v17, v19);

    (*(v29 + 8))(v7, v30);
    return 0;
  }
}

uint64_t _s8NewsFeed29LiveActivityWebEmbedDatastoreV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_1D633BD20(*a1, *a2))
  {
    if (v2 == 1)
    {
      sub_1D5B71354(1);
      if (v3 == 1)
      {
        v2 = 1;
        sub_1D5B71354(1);
LABEL_5:
        v4 = 1;
LABEL_20:
        sub_1D66A5FF8(v2);
        return v4;
      }

      sub_1D5B71354(v3);
LABEL_10:
      sub_1D66A5FF8(v2);
      v4 = 0;
      v2 = v3;
      goto LABEL_20;
    }

    if (v3 == 1)
    {
      sub_1D5B71354(v2);
      sub_1D5B71354(1);
      sub_1D5B71354(v2);

      goto LABEL_10;
    }

    if (v2)
    {
      if (v3)
      {
        sub_1D5B71354(v2);
        sub_1D5B71354(v3);
        sub_1D5B71354(v2);
        sub_1D5B71354(v3);
        v5 = sub_1D633BD74(v2, v3);
        sub_1D66A5FF8(v3);
        sub_1D66A5FF8(v3);
        if (v5)
        {

          goto LABEL_5;
        }

LABEL_19:

        v4 = 0;
        goto LABEL_20;
      }

      sub_1D5B71354(v2);
      v6 = v2;
    }

    else
    {
      sub_1D5B71354(0);
      v6 = 0;
      if (!v3)
      {
        sub_1D5B71354(0);
        sub_1D5B71354(0);
        sub_1D66A5FF8(0);

        goto LABEL_5;
      }
    }

    sub_1D5B71354(v3);
    sub_1D5B71354(v6);
    sub_1D66A5FF8(v3);
    goto LABEL_19;
  }

  return 0;
}

BOOL _s8NewsFeed29LiveActivityWebEmbedDatastoreV0cD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B7B41C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v55 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v56 = &v51[-v14];
  sub_1D5BA8044(0);
  v58 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v51[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v51[-v21];
  sub_1D725C2AC();
  sub_1D67CDDA0(&qword_1EC88BB70, MEMORY[0x1E69B69A8], MEMORY[0x1E69B69C8]);
  sub_1D726257C();
  v59 = a2;
  sub_1D726257C();
  if (v61 == v60)
  {
  }

  else
  {
    v23 = sub_1D72646CC();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v54 = v8;
  v57 = v5;
  v24 = 0xEA00000000006465;
  v25 = 0x6269726373627573;
  v26 = type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity(0);
  v27 = v26[5];
  v28 = *(a1 + v27);
  v29 = *(v59 + v27);
  if (v28)
  {
    v30 = 0x6269726373627573;
    v31 = 0xEA00000000006465;
    if (v28 != 1)
    {
      v31 = 0x80000001D73BC910;
      v30 = 0xD000000000000014;
    }

    if (v29)
    {
      goto LABEL_8;
    }

LABEL_11:
    v24 = 0x80000001D73BC8F0;
    v25 = 0xD000000000000012;
    goto LABEL_12;
  }

  v31 = 0x80000001D73BC8F0;
  v30 = 0xD000000000000012;
  if (!v29)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v29 != 1)
  {
    v24 = 0x80000001D73BC910;
    v25 = 0xD000000000000014;
  }

LABEL_12:
  v32 = v57;
  if (v30 == v25 && v31 == v24)
  {
  }

  else
  {
    v33 = sub_1D72646CC();

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  v34 = v26[6];
  v35 = *(v58 + 48);
  sub_1D5B76E3C(a1 + v34, v22);
  sub_1D5B76E3C(v59 + v34, &v22[v35]);
  v36 = *(v32 + 48);
  if (v36(v22, 1, v4) == 1)
  {
    if (v36(&v22[v35], 1, v4) == 1)
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v22);
      goto LABEL_23;
    }

LABEL_21:
    v38 = v22;
LABEL_29:
    sub_1D67CD314(v38, sub_1D5BA8044);
    return 0;
  }

  v37 = v56;
  sub_1D5B76E3C(v22, v56);
  if (v36(&v22[v35], 1, v4) == 1)
  {
    (*(v32 + 8))(v37, v4);
    goto LABEL_21;
  }

  v39 = *(v32 + 32);
  v53 = v18;
  v40 = v54;
  v39(v54, &v22[v35], v4);
  sub_1D67CDDA0(&qword_1EDF45B10, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v52 = sub_1D7261FBC();
  v41 = *(v32 + 8);
  v42 = v40;
  v18 = v53;
  v41(v42, v4);
  v41(v37, v4);
  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v22);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v43 = v26[7];
  v44 = *(v58 + 48);
  sub_1D5B76E3C(a1 + v43, v18);
  sub_1D5B76E3C(v59 + v43, &v18[v44]);
  if (v36(v18, 1, v4) != 1)
  {
    v45 = v55;
    sub_1D5B76E3C(v18, v55);
    if (v36(&v18[v44], 1, v4) == 1)
    {
      (*(v57 + 8))(v45, v4);
      goto LABEL_28;
    }

    v47 = v57;
    v48 = v54;
    (*(v57 + 32))(v54, &v18[v44], v4);
    sub_1D67CDDA0(&qword_1EDF45B10, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v49 = sub_1D7261FBC();
    v50 = *(v47 + 8);
    v50(v48, v4);
    v50(v45, v4);
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v18);
    return (v49 & 1) != 0;
  }

  if (v36(&v18[v44], 1, v4) != 1)
  {
LABEL_28:
    v38 = v18;
    goto LABEL_29;
  }

  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v18);
  return 1;
}

unint64_t sub_1D67CD1B4()
{
  result = qword_1EC88BAE0;
  if (!qword_1EC88BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BAE0);
  }

  return result;
}

unint64_t sub_1D67CD208()
{
  result = qword_1EC88BAE8;
  if (!qword_1EC88BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BAE8);
  }

  return result;
}

unint64_t sub_1D67CD25C()
{
  result = qword_1EC88BB00;
  if (!qword_1EC88BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BB00);
  }

  return result;
}

uint64_t sub_1D67CD2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67CD314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D67CD374()
{
  result = qword_1EDF0A268;
  if (!qword_1EDF0A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A268);
  }

  return result;
}

uint64_t sub_1D67CD3C8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B7B41C(255, &qword_1EDF05350, MEMORY[0x1E69B69A8], MEMORY[0x1E69E62F8]);
    sub_1D67CDDA0(a2, MEMORY[0x1E69B69A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D67CD48C()
{
  result = qword_1EDF0A288[0];
  if (!qword_1EDF0A288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0A288);
  }

  return result;
}

unint64_t sub_1D67CD4E0()
{
  result = qword_1EDF0A258;
  if (!qword_1EDF0A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A258);
  }

  return result;
}

void sub_1D67CD534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D67CD59C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B7B41C(255, &qword_1EDF04B68, type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity, MEMORY[0x1E69E62F8]);
    sub_1D67CDDA0(a2, type metadata accessor for LiveActivityWebEmbedDatastore.LiveActivity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D67CD660()
{
  result = qword_1EC88BB30;
  if (!qword_1EC88BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BB30);
  }

  return result;
}

unint64_t sub_1D67CD6B8()
{
  result = qword_1EC88BB38;
  if (!qword_1EC88BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BB38);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed29LiveActivityWebEmbedDatastoreV9DebugDataVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1D67CD778(uint64_t a1)
{
  sub_1D725C2AC();
  if (v1 <= 0x3F)
  {
    sub_1D5B7B41C(319, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D67CD878()
{
  result = qword_1EC88BB40;
  if (!qword_1EC88BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BB40);
  }

  return result;
}

unint64_t sub_1D67CD8D0()
{
  result = qword_1EC88BB48;
  if (!qword_1EC88BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BB48);
  }

  return result;
}

unint64_t sub_1D67CD928()
{
  result = qword_1EC88BB50;
  if (!qword_1EC88BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BB50);
  }

  return result;
}

unint64_t sub_1D67CD980()
{
  result = qword_1EDF0A278;
  if (!qword_1EDF0A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A278);
  }

  return result;
}

unint64_t sub_1D67CD9D8()
{
  result = qword_1EDF0A280;
  if (!qword_1EDF0A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A280);
  }

  return result;
}

unint64_t sub_1D67CDA30()
{
  result = qword_1EDF0A270;
  if (!qword_1EDF0A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A270);
  }

  return result;
}

unint64_t sub_1D67CDA88()
{
  result = qword_1EDF0A260;
  if (!qword_1EDF0A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A260);
  }

  return result;
}

unint64_t sub_1D67CDAE0()
{
  result = qword_1EC88BB58;
  if (!qword_1EC88BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BB58);
  }

  return result;
}

unint64_t sub_1D67CDB38()
{
  result = qword_1EC88BB60;
  if (!qword_1EC88BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BB60);
  }

  return result;
}

uint64_t sub_1D67CDB8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73D5450 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73D5470 == a2)
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

unint64_t sub_1D67CDCF8()
{
  result = qword_1EDF0A250;
  if (!qword_1EDF0A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A250);
  }

  return result;
}

unint64_t sub_1D67CDD4C()
{
  result = qword_1EC88BB68;
  if (!qword_1EC88BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BB68);
  }

  return result;
}

uint64_t sub_1D67CDDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1D67CDDE8()
{
  v0 = sub_1D726203C();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v1;
}

uint64_t sub_1D67CDE4C()
{
  sub_1D5B63EB4(0, &qword_1EDF3B2C0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63EB4(0, &qword_1EDF3B168, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EC88BB78 = result;
  return result;
}

uint64_t sub_1D67CDFA8()
{
  sub_1D5B63EB4(0, &qword_1EDF3B2C0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63EB4(0, &qword_1EDF3B168, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EC88BB80 = result;
  return result;
}

uint64_t sub_1D67CE104()
{
  sub_1D5B63EB4(0, &qword_1EDF3B2C0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63EB4(0, &qword_1EDF3B168, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EC88BB88 = result;
  return result;
}

void static ContextMenuItem.bigger(context:)(uint64_t a1)
{
  v12 = a1;
  v11 = sub_1D725DC6C();
  v1 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3B070 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_1D725811C();

  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  if (v9)
  {
    (*(v1 + 104))(v4, *MEMORY[0x1E69D7B38], v11);
    v13 = v12;
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_1D725D3AC();
  }

  else
  {
    __break(1u);
  }
}

void static ContextMenuItem.smaller(context:)(uint64_t a1)
{
  v12 = a1;
  v11 = sub_1D725DC6C();
  v1 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3B058 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_1D725811C();

  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  if (v9)
  {
    (*(v1 + 104))(v4, *MEMORY[0x1E69D7B38], v11);
    v13 = v12;
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_1D725D3AC();
  }

  else
  {
    __break(1u);
  }
}

id sub_1D67CE74C(uint64_t a1, id a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = [a2 resolvedColorWithTraitCollection_];
  v9 = FormatColor.color.getter(v8);
  v10 = [(objc_class *)v9 resolvedColorWithTraitCollection:a1];

  if (a5)
  {
    [v10 alphaComponent];
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_1D726359C();

  if (v12)
  {

    return v12;
  }

  return v7;
}

uint64_t _s8NewsFeed25FormatColorBlendProcessorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v9 = *a2;
  v10 = v2;

  LOBYTE(v2) = static FormatColor.== infix(_:_:)(&v10, &v9);

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v5)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1D67CE91C(uint64_t a1)
{
  result = sub_1D67CE944();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67CE944()
{
  result = qword_1EC88BB90;
  if (!qword_1EC88BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BB90);
  }

  return result;
}

unint64_t sub_1D67CE998(void *a1)
{
  a1[1] = sub_1D665B208();
  a1[2] = sub_1D67061D8();
  result = sub_1D67CE9D0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67CE9D0()
{
  result = qword_1EC88BB98;
  if (!qword_1EC88BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BB98);
  }

  return result;
}

uint64_t sub_1D67CEA24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x75 && *(a1 + 17))
  {
    return (*a1 + 117);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x74)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D67CEA74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x74)
  {
    *(result + 16) = 0;
    *result = a2 - 117;
    *(result + 8) = 0;
    if (a3 >= 0x75)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x75)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1D67CEAD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(v1 + 8);
  if (!(v4 >> 6))
  {
    v15 = *v1;
    v8 = v2;
    ObjectType = swift_getObjectType();
    sub_1D6E410E4(v8, sub_1D5EF2760, 0, &v15, ObjectType);
    return;
  }

  if (v4 >> 6 == 1)
  {
    v5 = [v2 eventLeagueTag];
    v16 = v3;
    v6 = swift_getObjectType();
    v7 = &v16;
LABEL_13:
    sub_1D6E410E4(v5, sub_1D5EF2760, 0, v7, v6);
    swift_unknownObjectRelease();
    return;
  }

  v10 = [v2 eventCompetitorTags];
  if (v10)
  {
    v11 = v10;
    sub_1D5EC01D0();
    v12 = sub_1D726267C();

    if (!(v12 >> 62))
    {
      goto LABEL_7;
    }

LABEL_15:
    v13 = sub_1D7263BFC();
    if (v3 < v13)
    {
      goto LABEL_8;
    }

LABEL_16:

    type metadata accessor for FormatLayoutError(0);
    sub_1D67D0580(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v14 = v13;
    v14[1] = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_15;
  }

LABEL_7:
  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 >= v13)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA6FB460](v3, v12);
    goto LABEL_12;
  }

  if (v3 < 0)
  {
    __break(1u);
  }

  else if (v3 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v12 + 8 * v3 + 32);
    swift_unknownObjectRetain();
LABEL_12:

    v17 = v4 & 0x3F;
    v6 = swift_getObjectType();
    v7 = &v17;
    goto LABEL_13;
  }

  __break(1u);
}

unint64_t sub_1D67CED48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D67D0874(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D67CEE68(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v85 = a3;
  v9 = type metadata accessor for FormatInspectionItem(0);
  v10 = *(v9 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11).n128_u64[0];
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v69 = a4;
  if (!v15)
  {
    v36 = MEMORY[0x1E69E6F90];
    sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
    v37 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = swift_allocObject();
    v68 = xmmword_1D7273AE0;
    *(v18 + 16) = xmmword_1D7273AE0;
    v38 = *(a2 + 16);
    swift_getObjectType();
    v39 = [v38 displayName];
    v40 = sub_1D726207C();
    v70 = v41;
    v71 = v40;

    sub_1D67D08C0(0, &qword_1EC8803C0, sub_1D5E4F38C, v36);
    inited = swift_initStackObject();
    *(inited + 16) = v68;
    v43 = v85[7];
    v78 = v85[6];
    v79 = v43;
    v80 = v85[8];
    v81 = *(v85 + 18);
    v44 = v85[3];
    v74 = v85[2];
    v75 = v44;
    v45 = v85[5];
    v76 = v85[4];
    v77 = v45;
    v46 = v85[1];
    v72 = *v85;
    v73 = v46;
    sub_1D6E422AC(v38, &v82);
    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(inited + 64) = &off_1F518B2C0;
    v47 = swift_allocObject();
    *(inited + 32) = v47;
    *(v47 + 48) = v84;
    v48 = v83;
    *(v47 + 16) = v82;
    *(v47 + 32) = v48;
    v49 = sub_1D5F62BFC(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    v32 = sub_1D7073500(v49);

    v33 = 0x746E657645;
    v34 = (v18 + v37);
    v35 = 0xE500000000000000;
    goto LABEL_5;
  }

  if (v15 == 1)
  {
    v16 = MEMORY[0x1E69E6F90];
    sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = swift_allocObject();
    v68 = xmmword_1D7273AE0;
    *(v18 + 16) = xmmword_1D7273AE0;
    v19 = *(a2 + 16);
    v67 = v4;
    v20 = [objc_msgSend(v19 eventLeagueTag)];
    swift_unknownObjectRelease();
    v21 = sub_1D726207C();
    v70 = v22;
    v71 = v21;

    sub_1D67D08C0(0, &qword_1EC8803C0, sub_1D5E4F38C, v16);
    v23 = swift_initStackObject();
    *(v23 + 16) = v68;
    v24 = v85[7];
    v78 = v85[6];
    v79 = v24;
    v80 = v85[8];
    v81 = *(v85 + 18);
    v25 = v85[3];
    v74 = v85[2];
    v75 = v25;
    v26 = v85[5];
    v76 = v85[4];
    v77 = v26;
    v27 = v85[1];
    v72 = *v85;
    v73 = v27;
    v28 = [v19 eventLeagueTag];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D6E422AC(v28, &v82);
    swift_unknownObjectRelease_n();
    *(v23 + 56) = &type metadata for FormatInspectionGroup;
    *(v23 + 64) = &off_1F518B2C0;
    v29 = swift_allocObject();
    *(v23 + 32) = v29;
    *(v29 + 48) = v84;
    v30 = v83;
    *(v29 + 16) = v82;
    *(v29 + 32) = v30;
    v31 = sub_1D5F62BFC(v23);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v23 + 32));
    v32 = sub_1D7073500(v31);

    v33 = 0x65756761654CLL;
    v34 = (v18 + v17);
    v35 = 0xE600000000000000;
LABEL_5:
    sub_1D711AD20(v33, v35, v32, v71, v70, v34);
LABEL_30:
    *v69 = v18;
    return;
  }

  v50 = [*(a2 + 16) eventCompetitorTags];
  if (!v50)
  {
LABEL_29:
    sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
    v65 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    v72 = 0u;
    v73 = 0u;
    sub_1D711B5C0(0x74697465706D6F43, 0xEA0000000000726FLL, &v72, (v18 + v65));
    goto LABEL_30;
  }

  v51 = v50;
  sub_1D5EC01D0();
  v52 = sub_1D726267C();

  v53 = v52;
  v54 = v52 & 0xFFFFFFFFFFFFFF8;
  v55 = v52 >> 62;
  if (v55)
  {
    goto LABEL_25;
  }

  v56 = *(v54 + 16);
  if (!v56)
  {
LABEL_28:

    goto LABEL_29;
  }

  while (1)
  {
    v57 = v53;
    *&v72 = MEMORY[0x1E69E7CC0];
    sub_1D6997AF0(0, v56 & ~(v56 >> 63), 0);
    if (v56 < 0)
    {
      break;
    }

    v18 = v72;
    v58 = v57;
    v67 = v5;
    *&v68 = v57 & 0xFFFFFFFFFFFFFF8;
    if (v55)
    {
      v59 = sub_1D7263BFC();
      v58 = v57;
    }

    else
    {
      v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = 0;
    v53 = v58 & 0xC000000000000001;
    v70 = v58 & 0xC000000000000001;
    v71 = v59 & ~(v59 >> 63);
    v5 = v58;
    while (v71 != v55)
    {
      if (v70)
      {
        v60 = MEMORY[0x1DA6FB460](v55);
      }

      else
      {
        if (v55 >= *(v68 + 16))
        {
          goto LABEL_24;
        }

        v60 = *(v58 + 8 * v55 + 32);
        swift_unknownObjectRetain();
      }

      sub_1D67CF5C0(v55, v60, v14);
      swift_unknownObjectRelease();
      *&v72 = v18;
      v62 = *(v18 + 16);
      v61 = *(v18 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1D6997AF0((v61 > 1), v62 + 1, 1);
        v18 = v72;
      }

      ++v55;
      *(v18 + 16) = v62 + 1;
      sub_1D5EC04A0(v14, v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v62, type metadata accessor for FormatInspectionItem);
      v58 = v5;
      if (v56 == v55)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v63 = v53;
    if (!sub_1D7263BFC())
    {
      goto LABEL_28;
    }

    v64 = sub_1D7263BFC();
    v53 = v63;
    v56 = v64;
    if (!v64)
    {

      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_30;
    }
  }

  __break(1u);
}

void sub_1D67CF5C0(uint64_t a1@<X0>, void *a2@<X1>, char *x8_0@<X8>)
{
  strcpy(&v17, "Competitor [");
  BYTE13(v17) = 0;
  HIWORD(v17) = -5120;
  *&v18[0] = a1;
  v6 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  v7 = v17;
  swift_getObjectType();
  v8 = [a2 displayName];
  v9 = sub_1D726207C();
  v11 = v10;

  sub_1D67D08C0(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D6E422AC(a2, v18);
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v13 = swift_allocObject();
  *(inited + 32) = v13;
  *(v13 + 48) = v19;
  v14 = v18[1];
  *(v13 + 16) = v18[0];
  *(v13 + 32) = v14;
  v15 = sub_1D5F62BFC(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  v16 = sub_1D7073500(v15);

  sub_1D711AD20(v7, *(&v7 + 1), v16, v9, v11, x8_0);
}

void sub_1D67CF7D0(uint64_t a1@<X1>, void *a2@<X8>)
{
  v94 = a2;
  sub_1D67D08C0(0, qword_1EDF103F0, type metadata accessor for FormatJsonKeyValue, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v94 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v105 = &v94 - v14;
  v112 = type metadata accessor for FormatJson(0);
  v107 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v15);
  v108 = (&v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v95 = (&v94 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v97 = (&v94 - v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v96 = (&v94 - v25);
  v26 = type metadata accessor for FormatJsonKeyValue(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v120 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v119 = &v94 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v114 = &v94 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v104 = &v94 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v113 = &v94 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v103 = &v94 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v98 = (&v94 - v47);
  v115 = *(a1 + 16);
  v123 = MEMORY[0x1E69E7CC0];
  sub_1D6997B40(0, 3, 0);
  v48 = 0;
  v100 = v123;
  v49 = (v27 + 48);
  v106 = v11;
  while (1)
  {
    v50 = *(&unk_1F50F37E0 + v48 + 32);
    v99 = v48;
    if (v50 == 2)
    {
      break;
    }

    if (v50 != 1)
    {
      v78 = 0;
      v79 = MEMORY[0x1E69E7CC0];
      v80 = v105;
      do
      {
        LOBYTE(v122) = byte_1F50F3730[v78 + 32];
        sub_1D6E405C0(&v122, v115, v80);
        if ((*v49)(v80, 1, v26) == 1)
        {
          sub_1D67D05C8(v80, v81);
        }

        else
        {
          v82 = v103;
          sub_1D5EC04A0(v80, v103, type metadata accessor for FormatJsonKeyValue);
          sub_1D5EC04A0(v82, v113, type metadata accessor for FormatJsonKeyValue);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v79 = sub_1D698F454(0, v79[2] + 1, 1, v79);
          }

          v84 = v79[2];
          v83 = v79[3];
          if (v84 >= v83 >> 1)
          {
            v79 = sub_1D698F454((v83 > 1), v84 + 1, 1, v79);
          }

          v79[2] = v84 + 1;
          sub_1D5EC04A0(v113, v79 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v84, type metadata accessor for FormatJsonKeyValue);
          v80 = v105;
        }

        ++v78;
      }

      while (v78 != 23);
      v85 = v96;
      *v96 = v79;
      swift_storeEnumTagMultiPayload();
      v86 = v98;
      *v98 = 0x746E657665;
      v60 = 0xE500000000000000;
      v87 = v85;
      goto LABEL_52;
    }

    v51 = [v115 eventLeagueTag];
    v52 = 0;
    v53 = MEMORY[0x1E69E7CC0];
    do
    {
      LOBYTE(v122) = byte_1F50F3730[v52 + 32];
      sub_1D6E405C0(&v122, v51, v11);
      if ((*v49)(v11, 1, v26) == 1)
      {
        sub_1D67D05C8(v11, v54);
      }

      else
      {
        v55 = v104;
        sub_1D5EC04A0(v11, v104, type metadata accessor for FormatJsonKeyValue);
        sub_1D5EC04A0(v55, v114, type metadata accessor for FormatJsonKeyValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1D698F454(0, v53[2] + 1, 1, v53);
        }

        v57 = v53[2];
        v56 = v53[3];
        if (v57 >= v56 >> 1)
        {
          v53 = sub_1D698F454((v56 > 1), v57 + 1, 1, v53);
        }

        v53[2] = v57 + 1;
        sub_1D5EC04A0(v114, v53 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v57, type metadata accessor for FormatJsonKeyValue);
        v11 = v106;
      }

      ++v52;
    }

    while (v52 != 23);
    swift_unknownObjectRelease();
    v58 = v97;
    *v97 = v53;
    swift_storeEnumTagMultiPayload();
    v59 = v98;
    *v98 = 0x65756761656CLL;
    v60 = 0xE600000000000000;
LABEL_51:
    v87 = v58;
    v86 = v59;
LABEL_52:
    v86[1] = v60;
    sub_1D5EC04A0(v87, v86 + *(v26 + 20), type metadata accessor for FormatJson);
    v88 = v100;
    v123 = v100;
    v90 = *(v100 + 16);
    v89 = *(v100 + 24);
    if (v90 >= v89 >> 1)
    {
      sub_1D6997B40((v89 > 1), v90 + 1, 1);
      v86 = v98;
      v88 = v123;
    }

    v91 = v99 + 1;
    *(v88 + 16) = v90 + 1;
    v92 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v100 = v88;
    v93 = v86;
    v48 = v91;
    sub_1D5EC04A0(v93, v88 + v92 + *(v27 + 72) * v90, type metadata accessor for FormatJsonKeyValue);
    v11 = v106;
    if (v48 == 3)
    {
      *v94 = v100;
      swift_storeEnumTagMultiPayload();
      return;
    }
  }

  v61 = [v115 eventCompetitorTags];
  if (v61)
  {
    v62 = v61;
    sub_1D5EC01D0();
    v63 = sub_1D726267C();

    if (!(v63 >> 62))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_16:
      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v64)
      {
        goto LABEL_17;
      }

      goto LABEL_49;
    }
  }

  v64 = sub_1D7263BFC();
  if (!v64)
  {
LABEL_49:

    v66 = MEMORY[0x1E69E7CC0];
LABEL_50:
    v58 = v95;
    *v95 = v66;
    swift_storeEnumTagMultiPayload();
    v59 = v98;
    *v98 = 0x74697465706D6F63;
    v60 = 0xEA0000000000726FLL;
    goto LABEL_51;
  }

LABEL_17:
  v122 = MEMORY[0x1E69E7CC0];
  sub_1D6997B90(0, v64 & ~(v64 >> 63), 0);
  if ((v64 & 0x8000000000000000) == 0)
  {
    v65 = 0;
    v66 = v122;
    v111 = v63 & 0xC000000000000001;
    v102 = v63 & 0xFFFFFFFFFFFFFF8;
    v101 = v63 + 32;
    v109 = v64;
    v110 = v63;
    while (1)
    {
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      v118 = v66;
      if (v111)
      {
        v68 = MEMORY[0x1DA6FB460]();
      }

      else
      {
        if (v65 >= *(v102 + 16))
        {
          goto LABEL_57;
        }

        v68 = *(v101 + 8 * v65);
        swift_unknownObjectRetain();
      }

      v69 = 0;
      v116 = v67;
      v117 = v67;
      v70 = MEMORY[0x1E69E7CC0];
      do
      {
        v121 = byte_1F50F3730[v69 + 32];
        sub_1D6E405C0(&v121, v68, v7);
        if ((*v49)(v7, 1, v26) == 1)
        {
          sub_1D67D05C8(v7, v71);
        }

        else
        {
          v72 = v119;
          sub_1D5EC04A0(v7, v119, type metadata accessor for FormatJsonKeyValue);
          sub_1D5EC04A0(v72, v120, type metadata accessor for FormatJsonKeyValue);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_1D698F454(0, v70[2] + 1, 1, v70);
          }

          v74 = v70[2];
          v73 = v70[3];
          if (v74 >= v73 >> 1)
          {
            v70 = sub_1D698F454((v73 > 1), v74 + 1, 1, v70);
          }

          v70[2] = v74 + 1;
          sub_1D5EC04A0(v120, v70 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v74, type metadata accessor for FormatJsonKeyValue);
        }

        ++v69;
      }

      while (v69 != 23);
      swift_unknownObjectRelease();
      v75 = v108;
      *v108 = v70;
      swift_storeEnumTagMultiPayload();
      v66 = v118;
      v122 = v118;
      v77 = *(v118 + 16);
      v76 = *(v118 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1D6997B90((v76 > 1), v77 + 1, 1);
        v75 = v108;
        v66 = v122;
      }

      *(v66 + 16) = v77 + 1;
      sub_1D5EC04A0(v75, v66 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v77, type metadata accessor for FormatJson);
      v65 = v117;
      if (v116 == v109)
      {

        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1D67D0314(uint64_t a1)
{
  result = sub_1D67D033C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67D033C()
{
  result = qword_1EC88BBA0;
  if (!qword_1EC88BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BBA0);
  }

  return result;
}

unint64_t sub_1D67D0390(void *a1)
{
  a1[1] = sub_1D665FD2C();
  a1[2] = sub_1D6704FC8();
  result = sub_1D67D03C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67D03C8()
{
  result = qword_1EC88BBB8;
  if (!qword_1EC88BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BBB8);
  }

  return result;
}

void sub_1D67D0484()
{
  if (!qword_1EC88BBC8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88BBC8);
    }
  }
}

unint64_t sub_1D67D04D8()
{
  result = qword_1EC88BBD0;
  if (!qword_1EC88BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BBD0);
  }

  return result;
}

unint64_t sub_1D67D052C()
{
  result = qword_1EC88BBD8;
  if (!qword_1EC88BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BBD8);
  }

  return result;
}

uint64_t sub_1D67D0580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D67D05C8(uint64_t a1, __n128 a2)
{
  sub_1D67D08C0(0, qword_1EDF103F0, type metadata accessor for FormatJsonKeyValue, MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D67D0654(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v29 = *(a1 + 144);
  v5 = *(a1 + 112);
  v28[6] = *(a1 + 96);
  v28[7] = v5;
  v28[8] = *(a1 + 128);
  v6 = *(a1 + 48);
  v28[2] = *(a1 + 32);
  v28[3] = v6;
  v7 = *(a1 + 80);
  v28[4] = *(a1 + 64);
  v28[5] = v7;
  v8 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v8;
  v9 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v9;
  v27 = *(a2 + 32);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v23 = byte_1F50F74A0[v4 + 32];
    sub_1D67CEE68(&v23, v26, v28, v24);
    v11 = *&v24[0];
    v12 = *(*&v24[0] + 16);
    v13 = v10[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= v10[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v10 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      if (*(v11 + 16))
      {
LABEL_13:
        v17 = (v10[3] >> 1) - v10[2];
        type metadata accessor for FormatInspectionItem(0);
        if (v17 < v12)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v18 = v10[2];
          v19 = __OFADD__(v18, v12);
          v20 = v18 + v12;
          if (v19)
          {
            goto LABEL_21;
          }

          v10[2] = v20;
        }

        goto LABEL_3;
      }
    }

    if (v12)
    {
      goto LABEL_19;
    }

LABEL_3:
    if (++v4 == 3)
    {
      v21 = sub_1D5F62998(v10);

      sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v21, v24);

      v22 = v24[1];
      *a3 = v24[0];
      *(a3 + 16) = v22;
      *(a3 + 32) = v25;
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_1D67D0874(uint64_t a1, uint64_t a2)
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

void sub_1D67D08C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id static VideoDurationFormatter.string(duration:)(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  v15 = v7;
  v16 = v2;
  v17 = v1;
  if (a1 >= 60.0)
  {
    v10 = 1;
  }

  else
  {
    v10 = 8;
  }

  if (qword_1EC87D810 != -1)
  {
    swift_once();
  }

  v11 = qword_1EC88BBE0;
  [qword_1EC88BBE0 setAllowedUnits_];
  [v11 setZeroFormattingBehavior_];
  if (qword_1EC87D810 != -1)
  {
    swift_once();
  }

  result = [v11 stringFromTimeInterval_];
  if (result)
  {
    v13 = result;
    v14 = sub_1D726207C();

    return v14;
  }

  return result;
}

id sub_1D67D0A60()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  result = [v0 setUnitsStyle_];
  qword_1EC88BBE0 = v0;
  return result;
}

uint64_t sub_1D67D0B04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v121 = a4;
  v122 = a3;
  v123 = a1;
  v117 = type metadata accessor for FormatDerivedDataError(0);
  MEMORY[0x1EEE9AC00](v117, v7);
  v116 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for FormatDerivedDataWarningError(0);
  v128 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v9);
  v125 = v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for DebugFormatCompilerResultOutput(0);
  MEMORY[0x1EEE9AC00](v130, v11);
  v112[1] = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v136 = v112 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v119 = v112 - v18;
  v127 = type metadata accessor for DebugFormatCompilerResultEntry(0);
  v129 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v19);
  v112[2] = v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v115 = v112 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v134 = v112 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v135 = v112 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v133 = v112 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v114 = v112 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v118 = (v112 - v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v113 = v112 - v41;
  v42 = type metadata accessor for FormatFile(0);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v124 = v112 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FormatDerivedDataCompilerSettings(0);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v120 = v112 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DebugFormatCacheFile(0);
  v143 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v145 = v112 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v144 = v112 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v140 = v112 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v139 = (v112 - v59);
  MEMORY[0x1EEE9AC00](v60, v61);
  v138 = v112 - v62;
  v63 = type metadata accessor for FormatCompilerOptions(0);
  v64 = v63 - 8;
  MEMORY[0x1EEE9AC00](v63, v65);
  v67 = v112 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a2;
  v131 = *(a2 + 16);
  sub_1D67D3880(&v131[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions], v67, type metadata accessor for FormatCompilerOptions);
  v68 = *&v67[*(v64 + 40)];

  sub_1D67D3950(v67, type metadata accessor for FormatCompilerOptions);
  if (*(v68 + 16))
  {
    sub_1D7264A0C();
    sub_1D72621EC();
    v69 = sub_1D7264A5C();
    a2 = v68 + 56;
    v70 = -1 << *(v68 + 32);
    v4 = v69 & ~v70;
    if ((*(v68 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v71 = ~v70;
      v5 = 0xD000000000000014;
      do
      {
        if (*(*(v68 + 48) + v4) && *(*(v68 + 48) + v4) != 1)
        {

LABEL_46:

          v146[2] = MEMORY[0x1E69E7CC0];
          sub_1D67D3744(0, &qword_1EC88BBE8, sub_1D67423FC, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          return sub_1D725BB1C();
        }

        v72 = sub_1D72646CC();

        if (v72)
        {
          goto LABEL_46;
        }

        v4 = (v4 + 1) & v71;
      }

      while (((*(a2 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
    }
  }

  v73 = CACurrentMediaTime();
  v74 = *(v132 + 24);
  v75 = MEMORY[0x1E69E7CC8];
  v142 = *(v74 + 2);
  if (!v142)
  {
LABEL_26:
    v90 = v120;
    sub_1D67D3880(v121, v120, type metadata accessor for FormatDerivedDataCompilerSettings);
    type metadata accessor for FormatDerivedDataCompiler(0);
    v91 = swift_allocObject();
    *(v91 + 16) = &unk_1F5118E40;
    *(v91 + OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_system) = v122;
    sub_1D67D38E8(v90, v91 + OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_settings, type metadata accessor for FormatDerivedDataCompilerSettings);

    v4 = v124;
    v92 = v131;
    sub_1D60FC98C(v131, v75, v123, v124);

    v93 = CACurrentMediaTime();
    v68 = v119;
    sub_1D67D3880(v4, v119, type metadata accessor for FormatFile);
    swift_storeEnumTagMultiPayload();

    sub_1D70CB1B0(v4);
    a2 = v94;
    v95 = v118;
    *v118 = v92;
    v77 = v127;
    sub_1D67D3880(v68, v95 + *(v127 + 20), type metadata accessor for DebugFormatCompilerResultOutput);
    *(v95 + *(v77 + 24)) = a2;
    v96 = *(a2 + 16);
    if (!v96)
    {
      v74 = MEMORY[0x1E69E7CC8];
LABEL_43:
      sub_1D67D3950(v119, type metadata accessor for DebugFormatCompilerResultOutput);
      v109 = v127;
      v110 = v118;
      *(v118 + *(v127 + 28)) = v74;
      *(v110 + *(v109 + 32)) = (v93 - v73) * 1000.0;
      v68 = v113;
      sub_1D67D38E8(v110, v113, type metadata accessor for DebugFormatCompilerResultEntry);
      a2 = v114;
      sub_1D67D3880(v68, v114, type metadata accessor for DebugFormatCompilerResultEntry);
      v5 = sub_1D69940BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v77 = *(v5 + 16);
      v78 = *(v5 + 24);
      v74 = (v77 + 1);
      v4 = v124;
      if (v77 >= v78 >> 1)
      {
        goto LABEL_54;
      }

      goto LABEL_44;
    }

    v145 = v91;
    v97 = a2 + ((*(v143 + 80) + 32) & ~*(v143 + 80));

    v98 = 0;
    v74 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v78 = *(a2 + 16);
      if (v98 >= v78)
      {
        goto LABEL_50;
      }

      v68 = *(v143 + 72);
      v4 = type metadata accessor for DebugFormatCacheFile;
      v99 = v139;
      sub_1D67D3880(v97 + v68 * v98, v139, type metadata accessor for DebugFormatCacheFile);
      v77 = *v99;
      v5 = v99[1];
      sub_1D67D3880(v99, v140, type metadata accessor for DebugFormatCacheFile);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146[0] = v74;
      v101 = sub_1D5B69D90(v77, v5);
      v103 = *(v74 + 2);
      v104 = (v102 & 1) == 0;
      v89 = __OFADD__(v103, v104);
      v78 = v103 + v104;
      if (v89)
      {
        goto LABEL_51;
      }

      v4 = v102;
      if (*(v74 + 3) < v78)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v108 = v101;
      sub_1D6D83E4C();
      v101 = v108;
      v74 = v146[0];
      if ((v4 & 1) == 0)
      {
LABEL_37:
        *&v74[8 * (v101 >> 6) + 64] |= 1 << v101;
        v106 = (*(v74 + 6) + 16 * v101);
        *v106 = v77;
        v106[1] = v5;
        sub_1D67D38E8(v140, *(v74 + 7) + v101 * v68, type metadata accessor for DebugFormatCacheFile);
        v107 = *(v74 + 2);
        v89 = __OFADD__(v107, 1);
        v78 = v107 + 1;
        if (v89)
        {
          goto LABEL_53;
        }

        *(v74 + 2) = v78;

        goto LABEL_29;
      }

LABEL_28:
      sub_1D67D381C(v140, *(v74 + 7) + v101 * v68);
LABEL_29:
      ++v98;
      sub_1D67D3950(v139, type metadata accessor for DebugFormatCacheFile);
      if (v96 == v98)
      {

        goto LABEL_43;
      }
    }

    sub_1D6D70CA4(v78, isUniquelyReferenced_nonNull_native);
    v101 = sub_1D5B69D90(v77, v5);
    if ((v4 & 1) != (v105 & 1))
    {
      sub_1D726493C();
      __break(1u);
      goto LABEL_55;
    }

LABEL_36:
    v74 = v146[0];
    if ((v4 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v76 = 0;
  v141 = &v74[(*(v143 + 80) + 32) & ~*(v143 + 80)];
  v77 = v138;
  v137 = v74;
  while (1)
  {
    v78 = *(v74 + 2);
    if (v76 >= v78)
    {
      break;
    }

    sub_1D67D3880(&v141[*(v143 + 72) * v76], v77, type metadata accessor for DebugFormatCacheFile);
    v68 = *(v77 + 48);
    if (v68)
    {
      v79 = v68 + *(*v68 + *MEMORY[0x1E69E6B68] + 16);
      swift_beginAccess();
      v80 = *v79;
      v77 = *(v79 + 8);
      v5 = *(v79 + 16);
      swift_retain_n();
      sub_1D5F7D230(v80, v77, v5);
      a2 = swift_isUniquelyReferenced_nonNull_native();
      v146[0] = v75;
      v74 = v75;
      v4 = sub_1D6D62FB0(v80, v77, v5);
      v78 = *(v75 + 16);
      v82 = (v81 & 1) == 0;
      v83 = v78 + v82;
      if (__OFADD__(v78, v82))
      {
        goto LABEL_49;
      }

      v84 = v81;
      if (*(v75 + 24) >= v83)
      {
        if (a2)
        {
          if ((v81 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v74 = v146;
          sub_1D6D83EA0();
          if ((v84 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_1D6D70CF8(v83, a2);
        v74 = v146[0];
        v85 = sub_1D6D62FB0(v80, v77, v5);
        if ((v84 & 1) != (v86 & 1))
        {
LABEL_55:
          result = sub_1D726493C();
          __break(1u);
          return result;
        }

        v4 = v85;
        if ((v84 & 1) == 0)
        {
LABEL_23:
          v75 = v146[0];
          *(v146[0] + 8 * (v4 >> 6) + 64) |= 1 << v4;
          v87 = *(v75 + 48) + 24 * v4;
          *v87 = v80;
          *(v87 + 8) = v77;
          *(v87 + 16) = v5;
          *(*(v75 + 56) + 8 * v4) = v68;

          v77 = v138;
          sub_1D67D3950(v138, type metadata accessor for DebugFormatCacheFile);
          v88 = *(v75 + 16);
          v89 = __OFADD__(v88, 1);
          v78 = v88 + 1;
          if (v89)
          {
            goto LABEL_52;
          }

          *(v75 + 16) = v78;
          goto LABEL_25;
        }
      }

      sub_1D5F7C628(v80, v77, v5);
      v75 = v146[0];
      *(*(v146[0] + 56) + 8 * v4) = v68;

      v77 = v138;
      sub_1D67D3950(v138, type metadata accessor for DebugFormatCacheFile);
LABEL_25:
      v74 = v137;
      goto LABEL_11;
    }

    sub_1D67D3950(v77, type metadata accessor for DebugFormatCacheFile);
LABEL_11:
    if (v142 == ++v76)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  __break(1u);
LABEL_54:
  v5 = sub_1D69940BC((v78 > 1), v74, 1, v5);
LABEL_44:

  sub_1D67D3950(v68, type metadata accessor for DebugFormatCompilerResultEntry);
  sub_1D67D3950(v4, type metadata accessor for FormatFile);
  *(v5 + 16) = v74;
  sub_1D67D38E8(a2, v5 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v77, type metadata accessor for DebugFormatCompilerResultEntry);
  v146[0] = v5;
  sub_1D67D3744(0, &qword_1EC88BBE8, sub_1D67423FC, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

void sub_1D67D23BC(uint64_t a1, uint64_t *a2)
{
  v128 = a2;
  sub_1D5B592C0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (v119 - v13);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (v119 - v17);
  v124 = a1;
  v19 = a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions;
  v121 = type metadata accessor for FormatCompilerOptions(0);
  v20 = *(v121 + 24);
  v125 = v19;
  v123 = v20;
  sub_1D67D3880(v19 + v20, v6, sub_1D5B592C0);
  v122 = v6;
  sub_1D67D38E8(v6, v18, type metadata accessor for FormatCompilerOptions.Newsroom);
  v22 = *v18;
  v21 = v18[1];
  v23 = v18[2];
  v24 = v18[3];
  v25 = v18[4];
  v26 = v18[5];
  sub_1D5E4B8D0(*v18, v21, v23, v24, v25, v26);
  sub_1D67D3950(v18, type metadata accessor for FormatCompilerOptions.Newsroom);
  if (v21 == 1)
  {
    v27 = MEMORY[0x1E69E7CC8];
LABEL_5:
    v126 = v27;
    goto LABEL_6;
  }

  sub_1D5E4B984(v22, v21, v23, v24, v25, v26);
  v28 = MEMORY[0x1E69E7CC8];
  if (v21)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = v28;
    sub_1D6D76D20(24945, 0xE200000000000000, v22, v21, isUniquelyReferenced_nonNull_native);

    v27 = v127;
    goto LABEL_5;
  }

  v126 = MEMORY[0x1E69E7CC8];
LABEL_6:
  v30 = v122;
  sub_1D67D3880(v125 + v123, v122, sub_1D5B592C0);
  sub_1D67D38E8(v30, v14, type metadata accessor for FormatCompilerOptions.Newsroom);
  v31 = *v14;
  v32 = v14[1];
  v33 = v14[2];
  v34 = v14[3];
  v36 = v14[4];
  v35 = v14[5];
  sub_1D5E4B8D0(*v14, v32, v33, v34, v36, v35);
  sub_1D67D3950(v14, type metadata accessor for FormatCompilerOptions.Newsroom);
  if (v32 != 1)
  {

    sub_1D5E4B984(v31, v32, v33, v34, v36, v35);
    if (v34)
    {
      v120 = v33;
      if (v126[2])
      {
        sub_1D5B69D90(v120, v34);
        if (v37)
        {
          v38 = *(v125 + *(v121 + 32));
          if (!*(v38 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v39 = sub_1D7264A5C(), v40 = -1 << *(v38 + 32), v41 = v39 & ~v40, ((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0))
          {
LABEL_18:
            type metadata accessor for FormatDerivedDataError(0);
            sub_1D67D39B0(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
            swift_allocError();
            v44 = *(v124 + 16);
            v45 = *(v124 + 24);
            *v46 = v120;
            v46[1] = v34;
            v46[2] = 0x676E6967617473;
            v46[3] = 0xE700000000000000;
            v46[4] = v44;
            v46[5] = v45;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return;
          }

          v42 = ~v40;
          v119[1] = 0xD000000000000014;
          v119[2] = 0x80000001D73BA280;
          while (!*(*(v38 + 48) + v41) || *(*(v38 + 48) + v41) == 2)
          {
            v43 = sub_1D72646CC();

            if (v43)
            {
              goto LABEL_20;
            }

            v41 = (v41 + 1) & v42;
            if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }
      }

LABEL_20:
      v47 = v126;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v127 = v47;
      sub_1D6D76D20(0x676E6967617473, 0xE700000000000000, v120, v34, v48);

      v126 = v127;
      v30 = v122;
    }
  }

  sub_1D67D3880(v125 + v123, v30, sub_1D5B592C0);
  sub_1D67D38E8(v30, v10, type metadata accessor for FormatCompilerOptions.Newsroom);
  v49 = *v10;
  v50 = v10[1];
  v51 = v10[2];
  v52 = v10[3];
  v53 = v10[4];
  v54 = v10[5];
  sub_1D5E4B8D0(*v10, v50, v51, v52, v53, v54);
  sub_1D67D3950(v10, type metadata accessor for FormatCompilerOptions.Newsroom);
  if (v50 == 1 || (, sub_1D5E4B984(v49, v50, v51, v52, v53, v54), !v54))
  {
    v65 = v126;
  }

  else
  {
    if (v126[2])
    {
      sub_1D5B69D90(v53, v54);
      if (v55)
      {
        v56 = *(v125 + *(v121 + 32));
        if (!*(v56 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v57 = sub_1D7264A5C(), v58 = -1 << *(v56 + 32), v59 = v57 & ~v58, ((*(v56 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0))
        {
LABEL_33:
          type metadata accessor for FormatDerivedDataError(0);
          sub_1D67D39B0(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v62 = *(v124 + 16);
          v63 = *(v124 + 24);
          *v64 = v53;
          v64[1] = v54;
          v64[2] = 0x69746375646F7270;
          v64[3] = 0xEA00000000006E6FLL;
          v64[4] = v62;
          v64[5] = v63;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        v60 = ~v58;
        v125 = 0x80000001D73BA280;
        v123 = 0xD000000000000014;
        while (!*(*(v56 + 48) + v59) || *(*(v56 + 48) + v59) == 2)
        {
          v61 = sub_1D72646CC();

          if (v61)
          {
            goto LABEL_35;
          }

          v59 = (v59 + 1) & v60;
          if (((*(v56 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }
    }

LABEL_35:
    v66 = v126;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v66;
    sub_1D6D76D20(0x69746375646F7270, 0xEA00000000006E6FLL, v53, v54, v67);

    v65 = v127;
  }

  v68 = v65 + 8;
  v69 = 1 << *(v65 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & v65[8];
  v72 = (v69 + 63) >> 6;

  v73 = 0;
  v126 = v65;
  while (v71)
  {
    v74 = v71;
LABEL_45:
    v71 = (v74 - 1) & v74;
    v76 = *v128;
    if (*(*v128 + 16))
    {
      v77 = (v73 << 10) | (16 * __clz(__rbit64(v74)));
      v78 = (v65[6] + v77);
      v79 = (v65[7] + v77);
      v81 = *v79;
      v80 = v79[1];
      v83 = *v78;
      v82 = v78[1];

      v84 = sub_1D5B69D90(v83, v82);
      if (v85)
      {
        v115 = (*(v76 + 56) + 16 * v84);
        v117 = *v115;
        v116 = v115[1];
        type metadata accessor for FormatDerivedDataError(0);
        sub_1D67D39B0(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        *v118 = v83;
        v118[1] = v82;
        v118[2] = v81;
        v118[3] = v80;
        v118[4] = v117;
        v118[5] = v116;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return;
      }

      v65 = v126;
    }
  }

  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
      goto LABEL_72;
    }

    if (v75 >= v72)
    {
      break;
    }

    v74 = v68[v75];
    ++v73;
    if (v74)
    {
      v73 = v75;
      goto LABEL_45;
    }
  }

  v86 = 1 << *(v65 + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & v65[8];
  v89 = (v86 + 63) >> 6;

  v90 = 0;
  v123 = v89;
  while (v88)
  {
LABEL_58:
    v95 = (v65[6] + ((v90 << 10) | (16 * __clz(__rbit64(v88)))));
    v97 = *v95;
    v96 = v95[1];
    v98 = *(v124 + 24);
    v125 = *(v124 + 16);

    v99 = v128;
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v101 = *v99;
    v127 = v101;
    v102 = sub_1D5B69D90(v97, v96);
    v104 = v101[2];
    v105 = (v103 & 1) == 0;
    v106 = __OFADD__(v104, v105);
    v107 = v104 + v105;
    if (v106)
    {
      goto LABEL_73;
    }

    v108 = v103;
    if (v101[3] < v107)
    {
      sub_1D6D666FC(v107, v100);
      v102 = sub_1D5B69D90(v97, v96);
      if ((v108 & 1) != (v109 & 1))
      {
        goto LABEL_75;
      }

LABEL_63:
      if (v108)
      {
        goto LABEL_51;
      }

      goto LABEL_64;
    }

    if (v100)
    {
      goto LABEL_63;
    }

    v114 = v102;
    sub_1D6D7DE64();
    v102 = v114;
    if (v108)
    {
LABEL_51:
      v91 = v102;

      v92 = v127;
      v93 = (v127[7] + 16 * v91);
      *v93 = v125;
      v93[1] = v98;

      goto LABEL_52;
    }

LABEL_64:
    v92 = v127;
    v127[(v102 >> 6) + 8] |= 1 << v102;
    v110 = (v92[6] + 16 * v102);
    *v110 = v97;
    v110[1] = v96;
    v111 = (v92[7] + 16 * v102);
    *v111 = v125;
    v111[1] = v98;
    v112 = v92[2];
    v106 = __OFADD__(v112, 1);
    v113 = v112 + 1;
    if (v106)
    {
      goto LABEL_74;
    }

    v92[2] = v113;
LABEL_52:
    v88 &= v88 - 1;
    *v128 = v92;
    v65 = v126;
    v89 = v123;
  }

  while (1)
  {
    v94 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    if (v94 >= v89)
    {

      return;
    }

    v88 = v68[v94];
    ++v90;
    if (v88)
    {
      v90 = v94;
      goto LABEL_58;
    }
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  sub_1D726493C();
  __break(1u);
}

uint64_t sub_1D67D2FA4(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v41 = a3;
  v40 = type metadata accessor for DebugFormatCompilerResultOutput(0);
  MEMORY[0x1EEE9AC00](v40, v4);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DebugFormatCompilerResultEntry(0);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v6);
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v42 = &v34 - v10;
  v47 = type metadata accessor for FormatCompilerOptions(0);
  v12 = MEMORY[0x1EEE9AC00](v47, v11);
  v46 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  if (*(*a2 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v15 = sub_1D7264A5C(), v16 = -1 << *(v14 + 32), v17 = v15 & ~v16, ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
  {
    v18 = ~v16;
    while (!*(*(v14 + 48) + v17) || *(*(v14 + 48) + v17) == 2)
    {
      v19 = sub_1D72646CC();

      if (v19)
      {
        goto LABEL_34;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_34:
    v51 = MEMORY[0x1E69E7CC0];
  }

  else
  {
LABEL_8:
    v50 = MEMORY[0x1E69E7CC8];
    v20 = v41;
    if (v41 >> 62)
    {
      goto LABEL_38;
    }

    v21 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
    if (v21)
    {
      v22 = 0;
      v23 = MEMORY[0x1E69E7CC0];
      v45 = v20 & 0xC000000000000001;
      v36 = v20 & 0xFFFFFFFFFFFFFF8;
      v35 = v20 + 32;
      v48 = "ignoreUnusedProperty";
      v49 = "isolatedThunderstormsNight";
      v44 = v21;
      while (1)
      {
        if (v45)
        {
          v20 = MEMORY[0x1DA6FB460](v22, v41, v12);
          v24 = __OFADD__(v22++, 1);
          if (v24)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v22 >= *(v36 + 16))
          {
            goto LABEL_37;
          }

          v20 = *(v35 + 8 * v22);

          v24 = __OFADD__(v22++, 1);
          if (v24)
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            v21 = sub_1D7263BFC();
            goto LABEL_10;
          }
        }

        v25 = v46;
        sub_1D67D3880(*(v20 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v46, type metadata accessor for FormatCompilerOptions);
        v26 = *(v25 + *(v47 + 32));

        sub_1D67D3950(v25, type metadata accessor for FormatCompilerOptions);
        if (*(v26 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v27 = sub_1D7264A5C(), v28 = -1 << *(v26 + 32), v29 = v27 & ~v28, ((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
        {
          v30 = ~v28;
          while (!*(*(v26 + 48) + v29) || *(*(v26 + 48) + v29) == 1)
          {
            v31 = sub_1D72646CC();

            if (v31)
            {

              goto LABEL_29;
            }

            v29 = (v29 + 1) & v30;
            if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

LABEL_29:
        }

        else
        {
LABEL_26:

          sub_1D67D23BC(v32, &v50);
        }

        if (v22 == v44)
        {
          goto LABEL_32;
        }
      }
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_32:

    v51 = v23;
  }

  sub_1D67D3744(0, &qword_1EC88BBE8, sub_1D67423FC, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

void sub_1D67D3744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D67D37A8(uint64_t a1)
{
  if (!qword_1EC88BBF0)
  {
    type metadata accessor for FormatFile(255);
    sub_1D5BA6EF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88BBF0);
    }
  }
}

uint64_t sub_1D67D381C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatCacheFile(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67D3880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67D38E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67D3950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D67D39B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1D67D39F8(uint64_t a1, uint64_t a2)
{
  if (qword_1EC87D5C8 != -1)
  {
    swift_once();
  }

  sub_1D5B710A0(&qword_1EC880F50, a2, type metadata accessor for DebugFormatUploadService, &unk_1D72EE22C);
  sub_1D725964C();
  if (qword_1EC87D5D0 != -1)
  {
    swift_once();
  }

  sub_1D725964C();
  MEMORY[0x1DA6F9910]();

  MEMORY[0x1DA6F9910](58, 0xE100000000000000);
  MEMORY[0x1DA6F9910]();

  sub_1D725855C();

  return result;
}

uint64_t sub_1D67D3B9C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    v3 = [objc_opt_self() defaultSessionConfiguration];
    sub_1D725AE0C();
    swift_allocObject();
    v1 = sub_1D725ADFC();
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1D67D3C4C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = a1;
  if (a1 == 1)
  {
    sub_1D67D83EC(0, &qword_1EC88BC00, &type metadata for DebugFormatUploadEntryResult, MEMORY[0x1E69E62F8]);
    sub_1D67D8094(v7);
    sub_1D67D8110();
    sub_1D72623BC();
    sub_1D67D83EC(0, &qword_1EC88BC18, &type metadata for DebugFormatUploadTargetResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D67D83EC(0, &qword_1EC88BC00, &type metadata for DebugFormatUploadEntryResult, MEMORY[0x1E69E62F8]);
    sub_1D725BDCC();
    v9 = sub_1D725B92C();
    sub_1D725BA7C();
  }

  sub_1D67D3ECC(v6, a2, a3, v8);
  sub_1D725BD9C();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D67D8164;
  *(v11 + 24) = v10;
  v12 = sub_1D725B92C();
  v13 = sub_1D725BA8C();

  return v13;
}

uint64_t sub_1D67D3ECC(unsigned __int8 a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a1 - 1 > 1)
  {
    sub_1D67D83EC(0, &qword_1EC88BC00, &type metadata for DebugFormatUploadEntryResult, MEMORY[0x1E69E62F8]);
    sub_1D67D8094(v10);
    sub_1D67D8110();
    sub_1D72623BC();
    sub_1D67D83EC(0, &qword_1EC88BC18, &type metadata for DebugFormatUploadTargetResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    sub_1D725BDCC();
    v5 = sub_1D725B92C();
    sub_1D725BACC();

    *(swift_allocObject() + 16) = a3;

    v6 = sub_1D725B92C();
    sub_1D67D83EC(0, &qword_1EC88BC00, &type metadata for DebugFormatUploadEntryResult, MEMORY[0x1E69E62F8]);
    type metadata accessor for DebugFormatUploadService();
    sub_1D725BA9C();

    v7 = sub_1D725B92C();
    v8 = sub_1D725BA7C();

    return v8;
  }
}

void sub_1D67D4108(unint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_14:
      sub_1D67D83EC(0, &qword_1EC88BC20, &type metadata for DebugFormatUploadEntryResult, MEMORY[0x1E69D6B18]);
      v15 = v7;
      v11 = sub_1D725B92C();
      sub_1D67D81FC(0, v12);
      sub_1D5B710A0(&qword_1EC88BC30, 255, sub_1D67D81FC, MEMORY[0x1E69E6340]);
      sub_1D725BA3C();

      return;
    }

    v15 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA6FB460](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a1 + 8 * v8 + 32);
      }

      v13 = v10;
      sub_1D67D432C(&v13, &v14);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      ++v8;
      if (v9 == i)
      {
        v7 = v15;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
LABEL_19:

  __break(1u);
}

void sub_1D67D432C(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  sub_1D7263D4C();

  v5 = *(*(v4 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v5 <= 2)
  {
    v6 = 0xE600000000000000;
    if (*(*(v4 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v5 == 1)
      {
        v7 = 0x726564616568;
      }

      else
      {
        v7 = 0x7265746F6F66;
      }
    }

    else
    {
      v7 = 0x74756F79616CLL;
    }
  }

  else if (*(*(v4 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v5 == 5)
    {
      v6 = 0xE700000000000000;
      v7 = 0x7972617262696CLL;
    }

    else
    {
      v6 = 0xEA0000000000646ELL;
      v7 = 0x756F72676B636162;
    }
  }

  else if (v5 == 3)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6C6C6177796170;
  }

  else
  {
    v6 = 0xE500000000000000;
    v7 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v7, v6);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  v8 = *(v4 + 16);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);

  MEMORY[0x1DA6F9910](v9, v10);

  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(2, 0, 0, 0xD000000000000022, 0x80000001D73D57B0);

  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1D725BDCC();

  v13 = sub_1D725B92C();
  sub_1D725BA8C();

  v14 = sub_1D725B92C();
  v15 = sub_1D725BB6C();

  *a3 = v15;
}

uint64_t sub_1D67D4610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D5B6D33C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v14 - v7;
  v9 = type metadata accessor for FormatFile(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67D862C(a2 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_file, v12, type metadata accessor for FormatFile);
  sub_1D67D4778(a2, v8);
  sub_1D5F40454(v12, v8, v14);
  if (!v2)
  {
    v3 = sub_1D67D4D18(v14);
    sub_1D67D8398(v14);
  }

  return v3;
}

uint64_t sub_1D67D4778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a1;
  v28 = a2;
  v26[0] = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v26[0], v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6D33C(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v27 = v26 - v7;
  v8 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D725BD1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC87D510 != -1)
  {
    swift_once();
  }

  sub_1D5B710A0(&qword_1EC880F50, v17, type metadata accessor for DebugFormatUploadService, &unk_1D72EE22C);
  sub_1D725964C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v11 + 56))(v28, 1, 1, v10);
      return sub_1D5B6F07C(v19, type metadata accessor for FormatVersioningModeSelection);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D67D97A0(v19, v4, type metadata accessor for FormatVersioningModeRelease);
      sub_1D725BCFC();
      v21 = sub_1D725B17C();
      (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
      v22 = v28;
      sub_1D725BCEC();
      sub_1D5B6F07C(v4, type metadata accessor for FormatVersioningModeRelease);
    }

    else
    {
      v22 = v28;
      (*(v11 + 32))(v28, v19, v10);
    }

    return (*(v11 + 56))(v22, 0, 1, v10);
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      return (*(v11 + 56))(v28, 1, 1, v10);
    }

    if (qword_1EDF3CA50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_1EDF3CA58);
    sub_1D725BCFC();
    v24 = sub_1D725B17C();
    (*(*(v24 - 8) + 56))(v27, 1, 1, v24);
    v22 = v28;
    sub_1D725BCEC();
    return (*(v11 + 56))(v22, 0, 1, v10);
  }

  sub_1D5DF5C38(v14);
  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EDF3CA58);
  if (sub_1D725BCBC())
  {
    (*(v11 + 8))(v14, v10);
    return (*(v11 + 56))(v28, 1, 1, v10);
  }

  else
  {
    v25 = v28;
    (*(v11 + 32))(v28, v14, v10);
    return (*(v11 + 56))(v25, 0, 1, v10);
  }
}

uint64_t sub_1D67D4D18(uint64_t a1)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D67D39F8(v12, v13);
  if ((*(v8 + 48))(v6, 1, v7, v14) == 1)
  {
    sub_1D5B6F07C(v6, sub_1D5B4D3E0);
    type metadata accessor for DebugFormatServiceError(0);
    sub_1D5B710A0(&qword_1EC883520, 255, type metadata accessor for DebugFormatServiceError, &unk_1D7363D88);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    sub_1D67D83EC(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BAFC();
  }

  else
  {
    v16 = (*(v8 + 32))(v11, v6, v7);
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v19 - 4) = v11;
    *(&v19 - 3) = a1;
    *(&v19 - 2) = v1;
    sub_1D67D83EC(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v18 = sub_1D725BBAC();
    (*(v8 + 8))(v11, v7);
    return v18;
  }
}

void sub_1D67D4FE4(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000002CLL, 0x80000001D73D5810);
  v4 = *(a1 + 16);
  v5 = *(v4 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v5 <= 2)
  {
    v6 = 0xE600000000000000;
    if (*(v4 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v5 == 1)
      {
        v7 = 0x726564616568;
      }

      else
      {
        v7 = 0x7265746F6F66;
      }
    }

    else
    {
      v7 = 0x74756F79616CLL;
    }
  }

  else if (*(v4 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v5 == 5)
    {
      v6 = 0xE700000000000000;
      v7 = 0x7972617262696CLL;
    }

    else
    {
      v6 = 0xEA0000000000646ELL;
      v7 = 0x756F72676B636162;
    }
  }

  else if (v5 == 3)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6C6C6177796170;
  }

  else
  {
    v6 = 0xE500000000000000;
    v7 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v7, v6);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);

  MEMORY[0x1DA6F9910](v8, v9);

  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(2, 0, 0, 0, 0xE000000000000000);

  *a2 = a1;
  a2[1] = 0;
}

id sub_1D67D51F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000027, 0x80000001D73D57E0);
  v6 = *(a2 + 16);
  v7 = *(v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v7 <= 2)
  {
    v8 = 0xE600000000000000;
    if (*(v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v7 == 1)
      {
        v9 = 0x726564616568;
      }

      else
      {
        v9 = 0x7265746F6F66;
      }
    }

    else
    {
      v9 = 0x74756F79616CLL;
    }
  }

  else if (*(v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v7 == 5)
    {
      v8 = 0xE700000000000000;
      v9 = 0x7972617262696CLL;
    }

    else
    {
      v8 = 0xEA0000000000646ELL;
      v9 = 0x756F72676B636162;
    }
  }

  else if (v7 == 3)
  {
    v8 = 0xE700000000000000;
    v9 = 0x6C6C6177796170;
  }

  else
  {
    v8 = 0xE500000000000000;
    v9 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v9, v8);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  v10 = *(v6 + 16);
  v11 = *(v6 + 24);

  MEMORY[0x1DA6F9910](v10, v11);

  MEMORY[0x1DA6F9910](0x3D726F727265202CLL, 0xE800000000000000);
  sub_1D5BA6EF4();
  sub_1D7263F9C();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(a1, 0, 0, 0, 0xE000000000000000);

  *a3 = a2;
  a3[1] = a1 | 0x8000000000000000;

  return a1;
}

double sub_1D67D545C(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000024, 0x80000001D73D59E0);
  sub_1D5BA6EF4();
  sub_1D7263F9C();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(a1, 0, 0, 0, 0xE000000000000000);

  return result;
}

void sub_1D67D5554(__n128 a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (a4 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_14:
      sub_1D67D83EC(0, &qword_1EC88BC20, &type metadata for DebugFormatUploadEntryResult, MEMORY[0x1E69D6B18]);
      v16 = v8;
      v12 = sub_1D725B92C();
      sub_1D67D81FC(0, v13);
      sub_1D5B710A0(&qword_1EC88BC30, 255, sub_1D67D81FC, MEMORY[0x1E69E6340]);
      sub_1D725BA3C();

      return;
    }

    v16 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA6FB460](v9, a4);
      }

      else
      {
        if (v9 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a4 + 8 * v9 + 32);
      }

      v14 = v11;
      sub_1D67D5778(&v14, &v15);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      ++v9;
      if (v10 == i)
      {
        v8 = v16;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
LABEL_19:

  __break(1u);
}

void sub_1D67D5778(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  sub_1D7263D4C();

  v5 = *(*(v4 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v5 <= 2)
  {
    v6 = 0xE600000000000000;
    if (*(*(v4 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v5 == 1)
      {
        v7 = 0x726564616568;
      }

      else
      {
        v7 = 0x7265746F6F66;
      }
    }

    else
    {
      v7 = 0x74756F79616CLL;
    }
  }

  else if (*(*(v4 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v5 == 5)
    {
      v6 = 0xE700000000000000;
      v7 = 0x7972617262696CLL;
    }

    else
    {
      v6 = 0xEA0000000000646ELL;
      v7 = 0x756F72676B636162;
    }
  }

  else if (v5 == 3)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6C6C6177796170;
  }

  else
  {
    v6 = 0xE500000000000000;
    v7 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v7, v6);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  v8 = *(v4 + 16);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);

  MEMORY[0x1DA6F9910](v9, v10);

  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(2, 0, 0, 0xD000000000000023, 0x80000001D73D5840);

  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1D725BDCC();

  v13 = sub_1D725B92C();
  sub_1D725BA8C();

  v14 = sub_1D725B92C();
  v15 = sub_1D725BB6C();

  *a3 = v15;
}

uint64_t sub_1D67D5A5C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v91 = v2;
  v89 = v4;
  sub_1D5B592C0(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v90 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B6D33C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v82 - v14;
  v16 = type metadata accessor for FormatFile(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v82 - v22;
  v24 = type metadata accessor for FormatPackage(0);
  v87 = *(v24 - 8);
  v25 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v88 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v82 - v29;
  v31 = OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_file;
  sub_1D67D862C(a1 + OBJC_IVAR____TtC8NewsFeed22DebugFormatUploadEntry_file, v23, type metadata accessor for FormatFile);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1D5B6F07C(v23, type metadata accessor for FormatFile);
    v81 = 0;
    v80 = 168;
    goto LABEL_26;
  }

  sub_1D67D97A0(v23, v30, type metadata accessor for FormatPackage);
  if (v30[48] != 5)
  {
    v33 = swift_allocObject();
    sub_1D67D862C(a1 + v31, v19, type metadata accessor for FormatFile);
    sub_1D67D4778(a1, v15);
    sub_1D5F40454(v19, v15, v93);
    v34 = v93[1];
    v33[1] = v93[0];
    v33[2] = v34;
    v86 = v33;
    v33[3] = v93[2];
    if (qword_1EC87D690 != -1)
    {
      swift_once();
    }

    type metadata accessor for DebugNewsroomService();
    sub_1D5B710A0(&qword_1EC882C38, 255, type metadata accessor for DebugNewsroomService, &unk_1D72924E8);
    sub_1D725964C();
    v35 = v92;
    v36 = *(v24 + 92);
    v37 = &v30[v36 + *(type metadata accessor for FormatCompilerOptions(0) + 24)];
    v38 = v90;
    sub_1D67D862C(v37, v90, sub_1D5B592C0);
    sub_1D67D97A0(v38, v11, type metadata accessor for FormatCompilerOptions.Newsroom);
    v39 = v11[1];
    v40 = v30;
    if (v35)
    {
      if (v35 == 1)
      {
        if (v39 != 1)
        {
          v41 = v11 + 2;
          v39 = v11[3];
          goto LABEL_15;
        }

LABEL_13:
        sub_1D5B6F07C(v11, type metadata accessor for FormatCompilerOptions.Newsroom);
        goto LABEL_19;
      }

      if (v39 == 1)
      {
        goto LABEL_13;
      }

      v41 = v11 + 4;
      v39 = v11[5];
    }

    else
    {
      v41 = v11;
      if (v39 == 1)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v42 = *v41;

    v43 = sub_1D5B6F07C(v11, type metadata accessor for FormatCompilerOptions.Newsroom);
    if (v39)
    {
      v45 = *(v40 + 48);
      v85 = v40;
      if (v45 >= 4)
      {
        if (v45 == 4)
        {
          MEMORY[0x1EEE9AC00](v43, v44);
          *(&v82 - 4) = v91;
          *(&v82 - 3) = v42;
          v80 = v39;
          sub_1D5F18638(0);
          v90 = v46;
          sub_1D725BDCC();
          v84 = type metadata accessor for FormatPackage;
          v47 = v40;
          v48 = v88;
          sub_1D67D862C(v47, v88, type metadata accessor for FormatPackage);
          v49 = *(v87 + 80);
          v50 = (v49 + 24) & ~v49;
          v87 = v25 + 7;
          v51 = (v25 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
          v52 = swift_allocObject();
          v53 = v86;
          *(v52 + 16) = v86;
          v83 = type metadata accessor for FormatPackage;
          sub_1D67D97A0(v48, v52 + v50, type metadata accessor for FormatPackage);
          v54 = (v52 + v51);
          *v54 = v42;
          v54[1] = v39;

          v55 = sub_1D725B92C();
          sub_1D67D8B58(0, &qword_1EC88BC48, sub_1D5F18638);
          sub_1D725BA9C();

          v56 = v85;
          sub_1D67D862C(v85, v48, v84);
          v57 = (v49 + 16) & ~v49;
          v58 = (v87 + v57) & 0xFFFFFFFFFFFFFFF8;
          v59 = swift_allocObject();
          sub_1D67D97A0(v48, v59 + v57, v83);
          *(v59 + v58) = v53;

          v60 = sub_1D725B92C();
          sub_1D725BA9C();

          v61 = sub_1D725B92C();
LABEL_22:
          v32 = sub_1D725BA8C();

          sub_1D5B6F07C(v56, type metadata accessor for FormatPackage);
          goto LABEL_23;
        }

        if (v45 != 6)
        {
          while (1)
          {
            v81 = 0;
            v80 = 267;
LABEL_26:
            sub_1D726402C();
            __break(1u);
          }
        }
      }

      MEMORY[0x1EEE9AC00](v43, v44);
      *(&v82 - 4) = v91;
      *(&v82 - 3) = v42;
      v80 = v39;
      sub_1D5F185A4(0);
      v90 = v65;
      sub_1D725BDCC();
      v84 = type metadata accessor for FormatPackage;
      v66 = v40;
      v67 = v88;
      sub_1D67D862C(v66, v88, type metadata accessor for FormatPackage);
      v68 = *(v87 + 80);
      v69 = (v68 + 24) & ~v68;
      v87 = v25 + 7;
      v70 = (v25 + 7 + v69) & 0xFFFFFFFFFFFFFFF8;
      v71 = swift_allocObject();
      v72 = v86;
      *(v71 + 16) = v86;
      v83 = type metadata accessor for FormatPackage;
      sub_1D67D97A0(v67, v71 + v69, type metadata accessor for FormatPackage);
      v73 = (v71 + v70);
      *v73 = v42;
      v73[1] = v39;

      v74 = sub_1D725B92C();
      sub_1D67D8B58(0, &qword_1EC88BC50, sub_1D5F185A4);
      sub_1D725BA9C();

      v56 = v85;
      sub_1D67D862C(v85, v67, v84);
      v75 = (v68 + 16) & ~v68;
      v76 = (v87 + v75) & 0xFFFFFFFFFFFFFFF8;
      v77 = swift_allocObject();
      sub_1D67D97A0(v67, v77 + v75, v83);
      *(v77 + v76) = v72;

      v78 = sub_1D725B92C();
      sub_1D725BA9C();

      v61 = sub_1D725B92C();
      goto LABEL_22;
    }

LABEL_19:
    v62 = *(v86 + 2);
    v63 = *(v86 + 3);
    sub_1D67D849C();
    swift_allocError();
    *v64 = v62;
    *(v64 + 8) = v63;
    *(v64 + 16) = v35;
    *(v64 + 24) = 4;
    sub_1D67D83EC(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();

    v32 = sub_1D725BAFC();
    sub_1D5B6F07C(v40, type metadata accessor for FormatPackage);
LABEL_23:

    return v32;
  }

  sub_1D67D83EC(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v32 = sub_1D725BB1C();
  sub_1D5B6F07C(v30, type metadata accessor for FormatPackage);
  return v32;
}

void sub_1D67D665C(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD00000000000002DLL, 0x80000001D73D58A0);
  v4 = *(a1 + 16);
  v5 = *(v4 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v5 <= 2)
  {
    v6 = 0xE600000000000000;
    if (*(v4 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v5 == 1)
      {
        v7 = 0x726564616568;
      }

      else
      {
        v7 = 0x7265746F6F66;
      }
    }

    else
    {
      v7 = 0x74756F79616CLL;
    }
  }

  else if (*(v4 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v5 == 5)
    {
      v6 = 0xE700000000000000;
      v7 = 0x7972617262696CLL;
    }

    else
    {
      v6 = 0xEA0000000000646ELL;
      v7 = 0x756F72676B636162;
    }
  }

  else if (v5 == 3)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6C6C6177796170;
  }

  else
  {
    v6 = 0xE500000000000000;
    v7 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v7, v6);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);

  MEMORY[0x1DA6F9910](v8, v9);

  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(2, 0, 0, 0, 0xE000000000000000);

  *a2 = a1;
  a2[1] = 0;
}

id sub_1D67D6868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000028, 0x80000001D73D5870);
  v6 = *(a2 + 16);
  v7 = *(v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v7 <= 2)
  {
    v8 = 0xE600000000000000;
    if (*(v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v7 == 1)
      {
        v9 = 0x726564616568;
      }

      else
      {
        v9 = 0x7265746F6F66;
      }
    }

    else
    {
      v9 = 0x74756F79616CLL;
    }
  }

  else if (*(v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v7 == 5)
    {
      v8 = 0xE700000000000000;
      v9 = 0x7972617262696CLL;
    }

    else
    {
      v8 = 0xEA0000000000646ELL;
      v9 = 0x756F72676B636162;
    }
  }

  else if (v7 == 3)
  {
    v8 = 0xE700000000000000;
    v9 = 0x6C6C6177796170;
  }

  else
  {
    v8 = 0xE500000000000000;
    v9 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v9, v8);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  v10 = *(v6 + 16);
  v11 = *(v6 + 24);

  MEMORY[0x1DA6F9910](v10, v11);

  MEMORY[0x1DA6F9910](0x3D726F727265202CLL, 0xE800000000000000);
  sub_1D5BA6EF4();
  sub_1D7263F9C();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(a1, 0, 0, 0, 0xE000000000000000);

  *a3 = a2;
  a3[1] = a1 | 0x8000000000000000;

  return a1;
}

uint64_t sub_1D67D6AD4(__n128 a1)
{
  sub_1D67D83EC(0, &qword_1EC88BC00, &type metadata for DebugFormatUploadEntryResult, MEMORY[0x1E69E62F8]);
  sub_1D67D8094(v1);
  sub_1D67D8110();
  sub_1D72623BC();
  sub_1D67D83EC(0, &qword_1EC88BC18, &type metadata for DebugFormatUploadTargetResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D67D6BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  v30[1] = a7;
  v31 = a3;
  v32 = a4;
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D72577EC();
  v16 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v17);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  (*(v12 + 16))(v15, a5, v11);

  sub_1D72577AC();
  sub_1D725774C();
  sub_1D72577DC();
  sub_1D72578EC();
  swift_allocObject();
  sub_1D72578DC();
  v21 = a6[1];
  aBlock = *a6;
  v36 = v21;
  v37 = a6[2];
  sub_1D67D8448();
  sub_1D72578BC();

  sub_1D72577CC();
  sub_1D67D3B9C();
  v22 = sub_1D725ADEC();

  v23 = sub_1D725776C();
  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 16) = v31;
  *(v24 + 24) = v25;
  v26 = a6[1];
  *(v24 + 32) = *a6;
  *(v24 + 48) = v26;
  *(v24 + 64) = a6[2];
  *(v24 + 80) = sub_1D5DF743C;
  *(v24 + 88) = v20;
  *&v37 = sub_1D67D84F0;
  *(&v37 + 1) = v24;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v36 = sub_1D60B572C;
  *(&v36 + 1) = &block_descriptor_45;
  v27 = _Block_copy(&aBlock);

  sub_1D67D8520(a6, v34);

  v28 = [v22 dataTaskWithRequest:v23 completionHandler:v27];
  _Block_release(v27);

  [v28 resume];
  return (*(v16 + 8))(v19, v33);
}

void sub_1D67D6FE4(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t *a7, void (*a8)(void))
{
  if (a4)
  {
    v9 = a4;
    v11 = *a7;
    v10 = a7[1];
    sub_1D67D849C();
    v12 = swift_allocError();
    *v13 = v9;
    *(v13 + 8) = v11;
    *(v13 + 16) = v10;
    *(v13 + 24) = 0;
    v14 = v9;
    v15 = v9;

    a5(v12);

    goto LABEL_8;
  }

  if (!a3 || (objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) == 0))
  {
    v22 = *a7;
    v21 = a7[1];
    sub_1D67D849C();
    v9 = swift_allocError();
    *v23 = a3;
    *(v23 + 8) = v22;
    *(v23 + 16) = v21;
    *(v23 + 24) = 2;
    v24 = a3;

    a5(v9);
LABEL_8:
    v25 = v9;

    goto LABEL_10;
  }

  v20 = v19;
  v31 = a3;
  if ([v20 statusCode] == 201)
  {
    a8();
  }

  else
  {
    v26 = [v20 statusCode];
    v28 = *a7;
    v27 = a7[1];
    sub_1D67D849C();
    v29 = swift_allocError();
    *v30 = v26;
    *(v30 + 8) = v28;
    *(v30 + 16) = v27;
    *(v30 + 24) = 3;

    a5(v29);
  }

  v25 = v31;

LABEL_10:
}

uint64_t sub_1D67D71EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D5F18638(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FormatPackage(0);
  v14 = sub_1D725BC9C();
  v16 = sub_1D67D9630(a1, v14, v15);
  v18 = v17;

  swift_beginAccess();
  *(a3 + 16) = v16;
  *(a3 + 24) = v18;

  *&v24[0] = 0;
  *(&v24[0] + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&v24[0] = 0xD000000000000010;
  *(&v24[0] + 1) = 0x80000001D73D59C0;
  MEMORY[0x1DA6F9910](a5, a6);
  v19 = v24[0];
  swift_beginAccess();
  v20 = *(a3 + 32);
  v24[0] = *(a3 + 16);
  v24[1] = v20;
  v24[2] = *(a3 + 48);
  sub_1D67D8520(v24, v23);
  sub_1D604A700(v19, *(&v19 + 1), v24);
  sub_1D67D8398(v24);

  sub_1D67D862C(a1, v13, sub_1D5F18638);
  sub_1D5B6D33C(0, &qword_1EC88BC60, sub_1D5F18638, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D725BB1C();
  v21 = sub_1D725BD9C();

  return v21;
}

void *sub_1D67D742C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v36 = a3;
  v6 = type metadata accessor for DebugNewsroomThemeData(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F18638(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D67D8B58(0, &qword_1EC88BC48, sub_1D5F18638);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v35 - v17);
  sub_1D67D8FA8(a1, &v35 - v17, &qword_1EC88BC48, sub_1D5F18638);
  v19 = *v18;
  v35 = v18[1];
  sub_1D5B6F07C(v18 + *(v15 + 56), sub_1D5F18638);
  sub_1D67D8FA8(a1, v18, &qword_1EC88BC48, sub_1D5F18638);

  v20 = v18 + *(v15 + 56);
  v21 = v36;
  sub_1D67D97A0(v20, v13, sub_1D5F18638);
  sub_1D67D862C(v13, v9, type metadata accessor for DebugNewsroomThemeData);
  v22 = *(v21 + 24);
  *(v9 + 3) = *(v21 + 16);
  *(v9 + 4) = v22;

  v23 = v35;
  *(v9 + 9) = v19;
  *(v9 + 10) = v23;
  swift_beginAccess();
  v25 = *(a4 + 16);
  v24 = *(a4 + 24);

  *(v9 + 7) = v25;
  *(v9 + 8) = v24;
  if (*(v9 + 11))
  {
    v26 = *(v9 + 11);
  }

  else
  {
    v26 = sub_1D605A4CC(MEMORY[0x1E69E7CC0]);
  }

  type metadata accessor for FormatPackage(0);

  v27 = sub_1D725BC9C();
  v29 = v28;
  swift_beginAccess();
  v31 = *(a4 + 16);
  v30 = *(a4 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v26;
  sub_1D6D76D20(v31, v30, v27, v29, isUniquelyReferenced_nonNull_native);

  *(v9 + 11) = v38;
  v33 = sub_1D604CAA0(v13, v9);
  sub_1D5B6F07C(v13, sub_1D5F18638);
  sub_1D5B6F07C(v9, type metadata accessor for DebugNewsroomThemeData);
  return v33;
}

uint64_t sub_1D67D7768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D5F185A4(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FormatPackage(0);
  v14 = sub_1D725BC9C();
  v16 = sub_1D67D96E8(a1, v14, v15);
  v18 = v17;

  swift_beginAccess();
  *(a3 + 16) = v16;
  *(a3 + 24) = v18;

  *&v24[0] = 0;
  *(&v24[0] + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  *&v24[0] = 0xD000000000000011;
  *(&v24[0] + 1) = 0x80000001D73D59A0;
  MEMORY[0x1DA6F9910](a5, a6);
  v19 = v24[0];
  swift_beginAccess();
  v20 = *(a3 + 32);
  v24[0] = *(a3 + 16);
  v24[1] = v20;
  v24[2] = *(a3 + 48);
  sub_1D67D8520(v24, v23);
  sub_1D604A700(v19, *(&v19 + 1), v24);
  sub_1D67D8398(v24);

  sub_1D67D862C(a1, v13, sub_1D5F185A4);
  sub_1D5B6D33C(0, &qword_1EC88BC58, sub_1D5F185A4, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D725BB1C();
  v21 = sub_1D725BD9C();

  return v21;
}

void *sub_1D67D79A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a2;
  v43 = a3;
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = type metadata accessor for DebugNewsroomLayoutData(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F185A4(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D67D8B58(0, &qword_1EC88BC50, sub_1D5F185A4);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (&v41 - v19);
  sub_1D67D8FA8(a1, &v41 - v19, &qword_1EC88BC50, sub_1D5F185A4);
  v21 = *v20;
  v41 = v20[1];
  v42 = v21;
  sub_1D5B6F07C(v20 + *(v17 + 56), sub_1D5F185A4);
  v22 = v43;
  sub_1D67D8FA8(a1, v20, &qword_1EC88BC50, sub_1D5F185A4);

  sub_1D67D97A0(v20 + *(v17 + 56), v15, sub_1D5F185A4);
  sub_1D67D862C(v15, v11, type metadata accessor for DebugNewsroomLayoutData);
  v23 = *(v22 + 24);
  *(v11 + 2) = *(v22 + 16);
  *(v11 + 3) = v23;

  v11[32] = 0x4050503020001uLL >> (8 * *(v22 + 48));
  swift_beginAccess();
  v24 = a4[4];
  v25 = a4[5];
  sub_1D5E3E824(v24, v25);
  sub_1D72620CC();
  v26 = sub_1D726209C();
  v28 = v27;
  sub_1D5B952F8(v24, v25);

  *(v11 + 7) = v26;
  *(v11 + 8) = v28;

  v29 = v41;
  *(v11 + 5) = v42;
  *(v11 + 6) = v29;
  swift_beginAccess();
  v31 = a4[2];
  v30 = a4[3];

  *(v11 + 9) = v31;
  *(v11 + 10) = v30;
  if (*(v11 + 12))
  {
    v32 = *(v11 + 12);
  }

  else
  {
    v32 = sub_1D605A4CC(MEMORY[0x1E69E7CC0]);
  }

  type metadata accessor for FormatPackage(0);

  v33 = sub_1D725BC9C();
  v35 = v34;
  swift_beginAccess();
  v37 = a4[2];
  v36 = a4[3];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v32;
  sub_1D6D76D20(v37, v36, v33, v35, isUniquelyReferenced_nonNull_native);

  *(v11 + 12) = v45;
  v39 = sub_1D604BC54(v15, v11);
  sub_1D5B6F07C(v15, sub_1D5F185A4);
  sub_1D5B6F07C(v11, type metadata accessor for DebugNewsroomLayoutData);
  return v39;
}

uint64_t sub_1D67D7DA4()
{

  return swift_deallocClassInstance();
}

void *sub_1D67D7E10()
{
  v11[0] = sub_1D726307C();
  v1 = *(v11[0] - 8);
  MEMORY[0x1EEE9AC00](v11[0], v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  type metadata accessor for DebugNewsroomService();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v0[2] = v9;
  v0[3] = 0;
  sub_1D5B5DA7C();
  sub_1D7261AEC();
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1D5B710A0(&qword_1EDF1AA50, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1D5B631E8(0);
  sub_1D5B710A0(&qword_1EDF1AE80, 255, sub_1D5B631E8, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v11[0]);
  v0[4] = sub_1D72630BC();
  return v0;
}

unint64_t sub_1D67D8094(__n128 a1)
{
  result = qword_1EC88BC08;
  if (!qword_1EC88BC08)
  {
    sub_1D67D83EC(255, &qword_1EC88BC00, &type metadata for DebugFormatUploadEntryResult, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BC08);
  }

  return result;
}

unint64_t sub_1D67D8110()
{
  result = qword_1EC88BC10;
  if (!qword_1EC88BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BC10);
  }

  return result;
}

uint64_t sub_1D67D8164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *(v3 + 16);
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

void sub_1D67D81FC(uint64_t a1, __n128 a2)
{
  if (!qword_1EC88BC28)
  {
    sub_1D67D83EC(255, &qword_1EC88BC20, &type metadata for DebugFormatUploadEntryResult, MEMORY[0x1E69D6B18]);
    v2 = sub_1D72627FC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC88BC28);
    }
  }
}

uint64_t sub_1D67D82CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1D7263E5C();
  }

  result = sub_1D67D9014(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

void sub_1D67D83EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D67D8448()
{
  result = qword_1EC88BC38;
  if (!qword_1EC88BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BC38);
  }

  return result;
}

unint64_t sub_1D67D849C()
{
  result = qword_1EC88BC40;
  if (!qword_1EC88BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BC40);
  }

  return result;
}

uint64_t sub_1D67D862C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_18Tm_1()
{
  v1 = type metadata accessor for FormatPackage(0);
  v15 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v15 + 24) & ~v15);

  if (*(v2 + 168) >= 3uLL)
  {
  }

  v3 = v2 + v1[23];

  v4 = type metadata accessor for FormatCompilerOptions(0);
  v5 = v3 + *(v4 + 24);
  if (*(v5 + 8) != 1)
  {
  }

  v6 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
  v7 = sub_1D725B76C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v10 = *(v4 + 28);
  if (!v9(v3 + v10, 1, v7))
  {
    (*(v8 + 8))(v3 + v10, v7);
  }

  v11 = v1[24];
  v12 = sub_1D725BD1C();
  (*(*(v12 - 8) + 8))(v2 + v11, v12);
  v13 = v1[25];
  if (!v9(v2 + v13, 1, v7))
  {
    (*(v8 + 8))(v2 + v13, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1D67D8AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, unint64_t, void, void))
{
  v7 = *(type metadata accessor for FormatPackage(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  return a3(a1, a2, *(v3 + 16), v3 + v8, *v9, v9[1]);
}

void sub_1D67D8B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t objectdestroy_21Tm()
{
  v1 = type metadata accessor for FormatPackage(0);
  v15 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v15 + 16) & ~v15);

  if (*(v2 + 168) >= 3uLL)
  {
  }

  v3 = v2 + v1[23];

  v4 = type metadata accessor for FormatCompilerOptions(0);
  v5 = v3 + *(v4 + 24);
  if (*(v5 + 8) != 1)
  {
  }

  v6 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
  v7 = sub_1D725B76C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v10 = *(v4 + 28);
  if (!v9(v3 + v10, 1, v7))
  {
    (*(v8 + 8))(v3 + v10, v7);
  }

  v11 = v1[24];
  v12 = sub_1D725BD1C();
  (*(*(v12 - 8) + 8))(v2 + v11, v12);
  v13 = v1[25];
  if (!v9(v2 + v13, 1, v7))
  {
    (*(v8 + 8))(v2 + v13, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1D67D8EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  v7 = *(type metadata accessor for FormatPackage(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return a3(a1, a2, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D67D8FA8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D67D8B58(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D67D9014(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1D6BA2080(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1D72622CC();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1D6BA2080(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1D6BA2080(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1D72622CC();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1D67D9480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5BF4D9C();
  v4 = sub_1D7263ACC();
  if (v4[2] != 2 || (v5 = v4[8], v6 = v4[9], v8 = v4[10], v7 = v4[11], , , !((v6 ^ v5) >> 14)))
  {

    goto LABEL_10;
  }

  v9 = sub_1D67D82CC(v5, v6, v8, v7, 10);
  if ((v10 & 0x100) != 0)
  {
    sub_1D68C0700(v5, v6, v8, v7, 10);
    v11 = v13;
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v20 = a3;

    MEMORY[0x1DA6F9910](12335, 0xE200000000000000);
    return v20;
  }

  v11 = v9;
  v12 = v10;

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = a3;

  result = MEMORY[0x1DA6F9910](47, 0xE100000000000000);
  if (!__OFADD__(v11, 1))
  {
    v17 = sub_1D72644BC();
    v19 = v18;

    MEMORY[0x1DA6F9910](v17, v19);

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D67D9630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 88);
  if (v4 && *(v4 + 16) && (v5 = sub_1D5B69D90(a2, a3), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];

    v10 = sub_1D67D9480(v8, v9, a2);

    return v10;
  }

  else
  {

    MEMORY[0x1DA6F9910](12335, 0xE200000000000000);
    return a2;
  }
}

uint64_t sub_1D67D96E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 96);
  if (v4 && *(v4 + 16) && (v5 = sub_1D5B69D90(a2, a3), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];

    v10 = sub_1D67D9480(v8, v9, a2);

    return v10;
  }

  else
  {

    MEMORY[0x1DA6F9910](12335, 0xE200000000000000);
    return a2;
  }
}

uint64_t sub_1D67D97A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67D9814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D67D985C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void *HeadlineViewRendererPipelineProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  return v0;
}

uint64_t HeadlineViewRendererPipelineProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_1D67D9990@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a7, uint64_t a8)
{
  v25 = a3;
  v26 = a2;
  v27 = a5;
  v24 = a7;
  v10 = sub_1D725DDFC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v24 - v13;
  v15 = sub_1D7258DBC();
  v16 = *(v15 - 8);
  *&v18 = MEMORY[0x1EEE9AC00](v15, v17).n128_u64[0];
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [*a1 indexPath];
  sub_1D7258D6C();

  v28 = v25;
  v29 = a4;
  v30 = v24;
  v31 = a8;
  sub_1D725D34C();
  sub_1D725D35C();
  (*(v16 + 8))(v20, v15);
  v22 = v27;
  sub_1D725DDEC();
  (*(v11 + 8))(v14, v10);
  return (*(*(a4 - 8) + 56))(v22, 0, 1, a4);
}

void (*sub_1D67D9C18(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))()
{
  v121 = a8;
  v119 = a6;
  v118 = a5;
  v117 = a4;
  v127 = a3;
  v125 = a2;
  v120 = a1;
  v12 = sub_1D7261B5C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v116 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v130 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v129 = &v112 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v128 = &v112 - v24;
  v115 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v133 = &v112 - v28;
  v122 = type metadata accessor for ImageRequestOptions(0);
  MEMORY[0x1EEE9AC00](v122, v29);
  v132 = (&v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_1D725D58C();
  v126 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v123 = (&v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v112 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v112 - v40;
  v42 = sub_1D725EB5C();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v112 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v112 - v49;
  if ([objc_opt_self() isMainThread])
  {
    return nullsub_1;
  }

  v113 = v13;
  v114 = v12;
  sub_1D725E20C();
  (*(v43 + 104))(v46, *MEMORY[0x1E69D81B0], v42);
  v51 = sub_1D725EB4C();
  v52 = *(v43 + 8);
  v52(v46, v42);
  v52(v50, v42);
  if ((v51 & 1) == 0)
  {
    return nullsub_1;
  }

  sub_1D725E13C();
  v53 = sub_1D725D56C();
  v54 = *(v126 + 8);
  v54(v41, v31);
  if ((v53 & 1) == 0)
  {
    return nullsub_1;
  }

  sub_1D725E13C();
  sub_1D725D57C();
  v126 = v55;
  v112 = v56;
  v54(v41, v31);
  sub_1D725E13C();
  sub_1D725D54C();
  v54(v37, v31);
  v57 = v123;
  sub_1D725E13C();
  sub_1D725D53C();
  v59 = v58;
  v61 = v60;
  v54(v57, v31);
  v110 = v59;
  v111 = v61;
  v62 = sub_1D725E9BC();
  if (!v62)
  {
    return nullsub_1;
  }

  v63 = v62;
  v141 = MEMORY[0x1E69E7CC0];
  v64 = v62 & 0xFFFFFFFFFFFFFF8;
  if (v62 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v66 = v128;
    if (!i)
    {
      break;
    }

    v67 = 0;
    while (1)
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x1DA6FB460](v67, v63);
      }

      else
      {
        if (v67 >= *(v64 + 16))
        {
          goto LABEL_50;
        }

        v68 = *(v63 + 8 * v67 + 32);
      }

      v69 = v68;
      v70 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      v71 = [v68 representedElementKind];
      if (v71)
      {
        v72 = v71;
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        v66 = v128;
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v67;
      if (v70 == i)
      {
        v73 = v141;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v73 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v141 = v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v76 = v118;
  *(&v112 - 10) = v117;
  *(&v112 - 9) = v76;
  *(&v112 - 8) = v119;
  *(&v112 - 7) = a7;
  *(&v112 - 6) = v121;
  *(&v112 - 5) = a9;
  *(&v112 - 4) = a10;
  *(&v112 - 3) = a11;
  v110 = v120;
  sub_1D67DAC6C(0);
  sub_1D67DACC4();
  v77 = sub_1D726242C();

  v78 = CACurrentMediaTime();
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  v79 = qword_1EDFFC828;
  v80 = sub_1D7262EAC();
  v121 = v79;
  sub_1D725C30C("Image headline view renderer pipeline starting", 46, 2, &dword_1D5B42000, v79, v80, MEMORY[0x1E69E7CC0]);
  sub_1D725E15C();
  v82 = v81;
  v83 = sub_1D725E1AC();
  v84 = *(v122 + 24);
  v85 = sub_1D725CB5C();
  v86 = v132;
  (*(*(v85 - 8) + 56))(v132 + v84, 1, 1, v85);
  *v86 = v82;
  v86[1] = v83;
  v123 = dispatch_group_create();
  if (!sub_1D726279C())
  {
LABEL_47:

    v105 = v116;
    sub_1D7261B3C();
    v106 = v123;
    sub_1D726301C();
    (*(v113 + 8))(v105, v114);
    v107 = CACurrentMediaTime();
    sub_1D7262EAC();
    sub_1D5C16694(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1D7273AE0;
    v109 = MEMORY[0x1E69E6438];
    *(v108 + 56) = MEMORY[0x1E69E63B0];
    *(v108 + 64) = v109;
    *(v108 + 32) = (v107 - v78) * 1000.0;
    sub_1D725C30C("Image headline view renderer pipeline finished, time=%fms", v112);

    sub_1D6081448(v132);
    return nullsub_1;
  }

  v87 = 0;
  v88 = (v131 + 16);
  v126 = v131 + 32;
  v127 = (v131 + 8);
  v125 = v77;
  while (1)
  {
    v89 = sub_1D726277C();
    sub_1D726271C();
    if (v89)
    {
      v90 = *(v131 + 16);
      v90(v133, (v77 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v87), a7);
      v91 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        goto LABEL_46;
      }

      goto LABEL_28;
    }

    result = sub_1D7263DBC();
    if (v115 != 8)
    {
      break;
    }

    v141 = result;
    v90 = *v88;
    (*v88)(v133, &v141, a7);
    swift_unknownObjectRelease();
    v91 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_28:
    (*v126)(v66, v133, a7);
    v90(v129, v66, a7);
    sub_1D5B49474(0, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
    if (swift_dynamicCast())
    {
      sub_1D5B63F14(&v138, &v141);
      v92 = v142;
      v93 = v143;
      __swift_project_boxed_opaque_existential_1(&v141, v142);
      (*(v93 + 8))(&v138, v132, v92, v93);
      sub_1D5BFED1C(&v138, &v134);
      if (v135)
      {
        sub_1D5B63F14(&v134, v136);
        __swift_project_boxed_opaque_existential_1(v136, v137);
        if (ProcessedImageRequestType.isDownloaded.getter())
        {
          v94 = v88;
          v95 = v123;
          dispatch_group_enter(v123);
          __swift_project_boxed_opaque_existential_1(v124 + 2, v124[5]);
          *(swift_allocObject() + 16) = v95;
          v96 = v95;
          v88 = v94;
          sub_1D725D0AC();
          v66 = v128;
        }

        sub_1D5BFB7D0(&v138, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
        __swift_destroy_boxed_opaque_existential_1(v136);
      }

      else
      {
        v97 = MEMORY[0x1E69D8160];
        sub_1D5BFB7D0(&v138, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
        sub_1D5BFB7D0(&v134, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v97);
      }

      __swift_destroy_boxed_opaque_existential_1(&v141);
    }

    else
    {
      v140 = 0;
      v138 = 0u;
      v139 = 0u;
      sub_1D5BFB7D0(&v138, &qword_1EDF1FE28, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
    }

    v90(v130, v66, a7);
    sub_1D5B49474(0, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
    if (swift_dynamicCast())
    {
      sub_1D5B63F14(&v138, &v141);
      v98 = v142;
      v99 = v143;
      __swift_project_boxed_opaque_existential_1(&v141, v142);
      (*(v99 + 8))(&v138, v132, v98, v99);
      sub_1D5BFED1C(&v138, &v134);
      if (v135)
      {
        sub_1D5B63F14(&v134, v136);
        __swift_project_boxed_opaque_existential_1(v136, v137);
        v100 = ProcessedImageRequestType.isDownloaded.getter();
        v77 = v125;
        if (v100)
        {
          v101 = v123;
          dispatch_group_enter(v123);
          __swift_project_boxed_opaque_existential_1(v124 + 7, v124[10]);
          *(swift_allocObject() + 16) = v101;
          v102 = v101;
          sub_1D725D0AC();
          v66 = v128;
        }

        sub_1D5BFB7D0(&v138, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
        (*v127)(v66, a7);
        __swift_destroy_boxed_opaque_existential_1(v136);
      }

      else
      {
        v103 = MEMORY[0x1E69D8160];
        sub_1D5BFB7D0(&v138, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
        (*v127)(v66, a7);
        sub_1D5BFB7D0(&v134, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v103);
        v77 = v125;
      }

      __swift_destroy_boxed_opaque_existential_1(&v141);
    }

    else
    {
      (*v127)(v66, a7);
      v140 = 0;
      v138 = 0u;
      v139 = 0u;
      sub_1D5BFB7D0(&v138, &qword_1EDF1DC00, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
      v77 = v125;
    }

    ++v87;
    if (v91 == sub_1D726279C())
    {
      goto LABEL_47;
    }
  }

  __break(1u);
  return result;
}
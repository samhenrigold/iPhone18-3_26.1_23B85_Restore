uint64_t sub_1D6C51818(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_1D5F76D3C(v4, v6);
      sub_1D6C55F54(v6, &unk_1EDF12C30, &type metadata for FeedCategory);
      v4 += 152;
      --v3;
    }

    while (v3);
  }

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  result = sub_1D6C55F54(v6, &unk_1EDF12C30, &type metadata for FeedCategory);
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

BOOL sub_1D6C518DC(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    sub_1D5F76E40(v3, v48);
    sub_1D5F76E40(v48, &v31);
    if (!v47)
    {
      v14 = v31;
      v15 = v32;
      v20 = v37;
      *v21 = *v38;
      *&v21[9] = *&v38[9];
      v16 = v33;
      v17 = v34;
      v18 = v35;
      v19 = v36;
      v7 = *(&v31 + 1);
      v6 = v32;

      v8 = &v14;
      goto LABEL_8;
    }

    if (v47 == 1)
    {
      v29 = v37;
      v30[0] = *v38;
      *(v30 + 9) = *&v38[9];
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v23 = v31;
      v24 = v32;
      v20 = v45;
      *v21 = *v46;
      *&v21[9] = *&v46[9];
      v16 = v41;
      v17 = v42;
      v18 = v43;
      v19 = v44;
      v14 = v39;
      v15 = v40;
      sub_1D6C55F54(&v14, &qword_1EDF34E30, &type metadata for FeedIssue);
      v7 = *(&v23 + 1);
      v6 = v24;

      v8 = &v23;
LABEL_8:
      sub_1D5ECF320(v8);
      goto LABEL_10;
    }

    v20 = v37;
    *v21 = *v38;
    *&v21[16] = *&v38[16];
    v22 = v39;
    v16 = v33;
    v17 = v34;
    v18 = v35;
    v19 = v36;
    v14 = v31;
    v15 = v32;
    v6 = *(&v31 + 1);
    v7 = v31;

    sub_1D5EE5B54(&v14);
LABEL_10:
    sub_1D5F76E40(a1, &v31);
    if (v47)
    {
      if (v47 != 1)
      {
        v20 = v37;
        *v21 = *v38;
        *&v21[16] = *&v38[16];
        v22 = v39;
        v16 = v33;
        v17 = v34;
        v18 = v35;
        v19 = v36;
        v14 = v31;
        v15 = v32;
        v9 = *(&v31 + 1);
        v12 = v31;

        sub_1D5EE5B54(&v14);
        if (v7 != v12)
        {
          goto LABEL_2;
        }

        goto LABEL_17;
      }

      v29 = v37;
      v30[0] = *v38;
      *(v30 + 9) = *&v38[9];
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v23 = v31;
      v24 = v32;
      v20 = v45;
      *v21 = *v46;
      *&v21[9] = *&v46[9];
      v16 = v41;
      v17 = v42;
      v18 = v43;
      v19 = v44;
      v14 = v39;
      v15 = v40;
      sub_1D6C55F54(&v14, &qword_1EDF34E30, &type metadata for FeedIssue);
      v10 = *(&v23 + 1);
      v9 = v24;

      v11 = &v23;
    }

    else
    {
      v14 = v31;
      v15 = v32;
      v20 = v37;
      *v21 = *v38;
      *&v21[9] = *&v38[9];
      v16 = v33;
      v17 = v34;
      v18 = v35;
      v19 = v36;
      v10 = *(&v31 + 1);
      v9 = v32;

      v11 = &v14;
    }

    sub_1D5ECF320(v11);
    if (v7 != v10)
    {
      goto LABEL_2;
    }

LABEL_17:
    if (v6 == v9)
    {

      sub_1D5F76EF0(v48);
      return v4 == 0;
    }

LABEL_2:
    v3 += 288;
    v5 = sub_1D72646CC();

    sub_1D5F76EF0(v48);
  }

  while ((v5 & 1) == 0);
  return v4 == 0;
}

uint64_t sub_1D6C51C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a1;
  v6 = sub_1D725895C();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for GroupLayoutContext(0);
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for GroupLayoutBindingContext(0);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = v16;
  v17 = *v3;
  v40 = *v3;
  v18 = *(v3 + 1);
  v19 = v3[16];
  v20 = type metadata accessor for M18_V1.Bound(0);
  a3[3] = v20;
  v21 = v20;
  v46 = v20;
  a3[4] = sub_1D6C55F0C(&qword_1EC893FB0, type metadata accessor for M18_V1.Bound, &unk_1D734060C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  boxed_opaque_existential_1[3] = &type metadata for M18_V1;
  v23 = sub_1D5ECDCE4();
  boxed_opaque_existential_1[4] = v23;
  *boxed_opaque_existential_1 = v17;
  boxed_opaque_existential_1[1] = v18;
  *(boxed_opaque_existential_1 + 16) = v19;
  sub_1D5BF04C4(a2, boxed_opaque_existential_1 + *(v21 + 20), type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v18, v19);
  v24 = v42;
  sub_1D6C559CC(0, 0, 0, 0, 0);
  v45 = v25;
  sub_1D5BF04C4(v24, v16, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BF04C4(a2, v61, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v26 = sub_1D725893C();
  v28 = v27;
  (*(v43 + 8))(v9, v44);
  v59 = &type metadata for M18_V1;
  v60 = v23;
  LOBYTE(v57[0]) = v40;
  v57[1] = v18;
  v58 = v19;
  type metadata accessor for GroupLayoutKey(0);
  v29 = swift_allocObject();
  sub_1D5BEE8A0(v18, v19);
  v55 = sub_1D7264C5C();
  v56 = v30;
  v53 = 95;
  v54 = 0xE100000000000000;
  v51 = 45;
  v52 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v31 = sub_1D7263A6C();
  v33 = v32;

  *(v29 + 16) = v31;
  *(v29 + 24) = v33;
  v34 = (v29 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  *v34 = v26;
  v34[1] = v28;
  sub_1D5B68374(v57, v29 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v35 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v41, v29 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v47 + 56))(v29 + v35, 0, 1, v48);
  v36 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v61, v29 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v49 + 56))(v29 + v36, 0, 1, v50);
  result = __swift_destroy_boxed_opaque_existential_1(v57);
  v38 = v46;
  *(boxed_opaque_existential_1 + *(v46 + 24)) = v45;
  *(boxed_opaque_existential_1 + *(v38 + 28)) = v29;
  return result;
}

void sub_1D6C520A8(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for M18_V1.Bound(0);
  v6 = *(v3 + *(v5 + 24));
  v20 = v3;
  sub_1D5ECCA18(sub_1D6C5611C, v19, v6);
  v8 = v7;
  sub_1D6C52478(v7, v3 + *(v5 + 20));
  sub_1D725A4DC();
  v9 = v24;
  v10 = MEMORY[0x1E69E62F8];
  sub_1D6C5619C(0, &unk_1EDF04F70, &type metadata for CategoryViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D6C5619C(0, &qword_1EDF04BD8, &type metadata for CategoryViewLayoutAttributes, v10);
  v11 = MEMORY[0x1E69E6328];
  sub_1D6C56144(&qword_1EDF04F68, &unk_1EDF04F70, &type metadata for CategoryViewLayout.Context, MEMORY[0x1E69E6328]);
  v12 = sub_1D6C56144(&qword_1EDF04BD0, &qword_1EDF04BD8, &type metadata for CategoryViewLayoutAttributes, v11);
  v17 = v23;
  v18 = v22;
  v21 = v9;
  *&v22 = v8;
  MEMORY[0x1EEE9AC00](v12, v13);

  v14 = sub_1D725C00C();

  *a1 = 0;
  *(a1 + 24) = v17;
  *(a1 + 8) = v18;
  *&v22 = v14;
  sub_1D6C5619C(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v10);
  sub_1D6C56144(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v11);
  sub_1D5BDEFF8();
  v15 = sub_1D72623BC();

  v16 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
}

uint64_t sub_1D6C52350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for M18_V1.Bound(0);
  v8 = *(a2 + *(v7 + 28));
  sub_1D5F76D3C(a1, (a3 + 1));
  v9 = a2 + *(v7 + 20);
  v10 = *(*(v9 + *(type metadata accessor for GroupLayoutContext(0) + 40)) + 16);
  sub_1D5B68374(v10 + 16, v18);
  sub_1D5B68374(v10 + 56, v17);
  sub_1D5B63F14(v18, v15);
  sub_1D5B63F14(v17, v16);
  sub_1D5B68374(v16, v14);
  v11 = type metadata accessor for CategoryViewStyler();
  v12 = swift_allocObject();
  *(v12 + 16) = 0x4030000000000000;
  sub_1D5B63F14(v14, v12 + 24);
  a3[23] = v11;
  a3[24] = &off_1F5138158;

  __swift_destroy_boxed_opaque_existential_1(v15);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  a3[20] = v12;
  *a3 = v8;
  return result;
}

uint64_t sub_1D6C52478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = a1;
  sub_1D6C5619C(0, &unk_1EDF04F70, &type metadata for CategoryViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D6C56144(&qword_1EDF04F60, &unk_1EDF04F70, &type metadata for CategoryViewLayout.Context, MEMORY[0x1E69E6340]);
  v9 = sub_1D7262C1C();
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = a2 + *(v10 + 24);
  v12 = *(v11 + 20);
  v13 = *(v11 + 21);
  v14 = *(*(*(a2 + *(v10 + 40)) + 24) + 16);
  v15 = *MEMORY[0x1E69D7130];
  v16 = sub_1D7259D1C();
  (*(*(v16 - 8) + 104))(v8, v15, v16);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7370], v4);
  v20 = v9;
  v21 = v14;
  v22 = v12;
  v23 = v13;
  sub_1D6C563C8(0, &qword_1EDF17FD0, MEMORY[0x1E69D73B8]);
  swift_allocObject();

  v17 = sub_1D725A4CC();

  return v17;
}

uint64_t sub_1D6C526CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v54 = *(a3 + 2);
  v55 = *(a3 + 3);
  v56 = *(a3 + 4);
  v57 = *(a3 + 5);
  v52 = *a3;
  v53 = *(a3 + 1);
  v11 = a3[12];
  v10 = a3[13];
  v12 = a3[14];
  v13 = a3[15];
  v14 = *(a3 + 16);
  v15 = a3[17];
  v16 = a3[18];
  v17 = a3[19];
  v51 = v13;
  if (*(a4 + 16) - 2 <= a1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v25 = a3[19];
    v26 = a3[20];
  }

  else
  {
    v58.origin.x = a3[17];
    v58.origin.y = a3[18];
    v58.size.width = a3[19];
    rect = a3[20];
    y = v58.origin.y;
    v58.size.height = rect;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = v11;
    v59.origin.y = v10;
    v59.size.width = v12;
    v59.size.height = v13;
    v19 = MinX + CGRectGetMinX(v59);
    v47 = v14;
    v46 = v10;
    v20 = v15;
    v21 = y;
    v22 = v17;
    v23 = rect;
    if (a1)
    {
      CGRectGetMinX(*&v20);
      v61.origin.x = v15;
      v61.origin.y = y;
      v61.size.width = v17;
      v61.size.height = rect;
      CGRectGetWidth(v61);
    }

    else
    {
      CGRectGetWidth(*&v20);
      v60.origin.x = v11;
      v60.origin.y = v10;
      v60.size.width = v12;
      v60.size.height = v13;
      CGRectGetMinX(v60);
    }

    v25 = v17;
    v27 = v17;
    v26 = rect;
    MEMORY[0x1DA6FA970](v19, v15, y, v27, rect);
    v49 = v15;
    v62.origin.x = v15;
    v62.origin.y = y;
    v62.size.width = v25;
    v62.size.height = rect;
    CGRectGetMaxY(v62);
    sub_1D72632EC();
    sub_1D72632FC();
    type metadata accessor for M18_V1.Bound(0);
    sub_1D7259F1C();
    sub_1D726330C();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_1D6C56248(0, &qword_1EDF19A20, type metadata accessor for FeedItemSupplementaryAttributes, MEMORY[0x1E69E6F90]);
    v36 = *(type metadata accessor for FeedItemSupplementaryAttributes(0) - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    v38 = (v24 + v37);
    *v38 = v29;
    v38[1] = v31;
    v38[2] = v33;
    v38[3] = v35;
    v15 = v49;
    swift_storeEnumTagMultiPayload();
    v14 = v47;
    v10 = v46;
    v16 = y;
  }

  v39 = swift_allocObject();
  v40 = swift_allocObject();
  sub_1D6C561EC(a2, v40 + 16);
  *(v40 + 248) = v54;
  *(v40 + 264) = v55;
  *(v40 + 280) = v56;
  *(v40 + 296) = v57;
  *(v40 + 216) = v52;
  *(v40 + 232) = v53;
  *(v40 + 312) = v11;
  *(v40 + 320) = v10;
  *(v40 + 328) = v12;
  *(v40 + 336) = v51;
  *(v40 + 344) = v14;
  *(v40 + 352) = v15;
  *(v40 + 360) = v16;
  *(v40 + 368) = v25;
  *(v40 + 376) = v26;
  v41 = a5 + *(type metadata accessor for M18_V1.Bound(0) + 20);
  result = type metadata accessor for GroupLayoutContext(0);
  v43 = *(v41 + *(result + 28));
  v44 = __OFADD__(v43, a1);
  v45 = v43 + a1;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    *(v40 + 384) = v45;
    *(v39 + 16) = v40 | 0x8000000000000000;
    *(v39 + 24) = v24;
    *a6 = v39 | 0xB000000000000000;
  }

  return result;
}

uint64_t sub_1D6C52ABC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17[-v12];
  v21 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 18;
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D7490], v9);
  v18 = a2;
  v19 = a3;
  v20 = a4 & 0x101;
  v15 = MEMORY[0x1E69D7150];
  sub_1D6C563C8(0, &qword_1EDF18080, MEMORY[0x1E69D7150]);
  sub_1D6C56384(&qword_1EDF18088, &qword_1EDF18080, v15, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D6C52CC8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v43 - v12);
  v56 = a1;
  v14 = sub_1D725994C();
  v15 = swift_allocBox();
  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69D6F50], v14);
  *v13 = v15;
  v17 = *MEMORY[0x1E69D73C0];
  v53 = *(v10 + 104);
  v54 = v10 + 104;
  v53(v13, v17, v9);
  v18 = MEMORY[0x1E69D6F38];
  sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
  v20 = v19;
  v51 = sub_1D6C56384(&qword_1EDF18160, &qword_1EDF18158, v18, MEMORY[0x1E69D6F40]);
  v52 = v20;
  sub_1D7259A9C();
  v23 = *(v10 + 8);
  v22 = v10 + 8;
  v21 = v23;
  result = v23(v13, v9);
  v25 = *(a2 + 16);
  if (v25)
  {
    v26 = (a2 + 32);
    v47 = *MEMORY[0x1E69D74A8];
    v27 = *MEMORY[0x1E69D7098];
    v45 = a4 & 1;
    v46 = v27;
    v44 = (a4 >> 8) & 1;
    v43 = xmmword_1D7273AE0;
    v49 = v9;
    v50 = a1;
    v48 = v21;
    do
    {
      v28 = *v26++;
      v55 = v28;
      v56 = a1;
      v53(v13, v47, v9);
      sub_1D6C5644C(0);
      sub_1D6C56678(0, &qword_1EDF180D0, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D70D8]);
      v30 = v29;
      v31 = *(v29 - 8);
      v32 = v13;
      v33 = v22;
      v34 = a3;
      v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      v37 = v36 + v35;
      a3 = v34;
      v22 = v33;
      v13 = v32;
      v38 = (*(v31 + 104))(v37, v46, v30);
      MEMORY[0x1EEE9AC00](v38, v39);
      v40 = v55;
      *(&v43 - 4) = a3;
      *(&v43 - 3) = v40;

      v42 = v51;
      a1 = v50;
      sub_1D72599EC();
      v41 = v48;
      v9 = v49;

      result = v41(v13, v9);
      --v25;
    }

    while (v25);
  }

  return result;
}

uint64_t sub_1D6C530F8(uint64_t a1, uint64_t (*a2)(uint64_t *, void, uint64_t), uint64_t a3, unsigned int a4)
{
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v32 - v12);
  v42 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 6;
  *v13 = v14;
  v15 = *(v10 + 104);
  v33 = *MEMORY[0x1E69D7490];
  v32 = v15;
  v15(v13);
  v38 = a2;
  v39 = a2;
  v40 = a3;
  v35 = a4 & 1;
  v41 = a4 & 0x101;
  v34 = (a4 >> 8) & 1;
  v16 = MEMORY[0x1E69D6F38];
  sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
  v18 = v17;
  v19 = sub_1D6C56384(&qword_1EDF18160, &qword_1EDF18158, v16, MEMORY[0x1E69D6F40]);
  v31 = v19;
  v36 = v18;
  sub_1D7259A2C();
  v20 = *(v10 + 8);
  result = v20(v13, v9);
  v37 = a3;
  v22 = *(a3 + 16);
  if (v22 >= 2)
  {
    v42 = a1;
    v23 = swift_allocObject();
    *(v23 + 16) = 6;
    *v13 = v23;
    v24 = v32(v13, v33, v9);
    MEMORY[0x1EEE9AC00](v24, v25);
    v26 = v37;
    *(&v32 - 4) = v38;
    *(&v32 - 3) = v26;
    v31 = v19;
    sub_1D7259A2C();
    result = v20(v13, v9);
    if (v22 != 2)
    {
      v42 = a1;
      v27 = swift_allocObject();
      *(v27 + 16) = 6;
      *v13 = v27;
      v28 = v32(v13, v33, v9);
      MEMORY[0x1EEE9AC00](v28, v29);
      v30 = v37;
      *(&v32 - 4) = v38;
      *(&v32 - 3) = v30;
      v31 = v19;
      sub_1D7259A2C();
      return v20(v13, v9);
    }
  }

  return result;
}

uint64_t sub_1D6C534DC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56564(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v27 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v24 - v17;
  v32 = a1;
  swift_getKeyPath();
  v19 = *MEMORY[0x1E69D7460];
  v26 = v15;
  v20 = *(v15 + 104);
  v28 = v14;
  result = v20(v18, v19, v14);
  v31 = a2;
  if (*(a3 + 16))
  {
    sub_1D5F76D3C(a3 + 40, v30);
    v29 = a4 & 0x101;
    sub_1D6C56678(0, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
    v25 = v9;
    type metadata accessor for CategoryViewLayoutAttributesFactory();
    sub_1D6C562C4();
    sub_1D6C56734();
    sub_1D6C55F0C(&qword_1EDF07200, type metadata accessor for CategoryViewLayoutAttributesFactory, &protocol conformance descriptor for CategoryViewLayoutAttributesFactory);

    v22 = v27;
    sub_1D7259D2C();
    v23 = MEMORY[0x1E69D6F38];
    sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
    sub_1D6C56384(&qword_1EDF18160, &qword_1EDF18158, v23, MEMORY[0x1E69D6F40]);
    sub_1D7259A5C();

    (*(v10 + 8))(v22, v25);
    return (*(v26 + 8))(v18, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6C538AC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56564(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v27 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v24 - v17;
  v32 = a1;
  swift_getKeyPath();
  v19 = *MEMORY[0x1E69D7460];
  v26 = v15;
  v20 = *(v15 + 104);
  v28 = v14;
  result = v20(v18, v19, v14);
  v31 = a2;
  if (*(a3 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    sub_1D5F76D3C(a3 + 240, v30);
    v29 = a4 & 0x101;
    sub_1D6C56678(0, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
    v25 = v9;
    type metadata accessor for CategoryViewLayoutAttributesFactory();
    sub_1D6C562C4();
    sub_1D6C56734();
    sub_1D6C55F0C(&qword_1EDF07200, type metadata accessor for CategoryViewLayoutAttributesFactory, &protocol conformance descriptor for CategoryViewLayoutAttributesFactory);

    v22 = v27;
    sub_1D7259D2C();
    v23 = MEMORY[0x1E69D6F38];
    sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
    sub_1D6C56384(&qword_1EDF18160, &qword_1EDF18158, v23, MEMORY[0x1E69D6F40]);
    sub_1D7259A5C();

    (*(v10 + 8))(v22, v25);
    return (*(v26 + 8))(v18, v28);
  }

  return result;
}

uint64_t sub_1D6C53C80(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56564(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v27 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v24 - v17;
  v32 = a1;
  swift_getKeyPath();
  v19 = *MEMORY[0x1E69D7460];
  v26 = v15;
  v20 = *(v15 + 104);
  v28 = v14;
  result = v20(v18, v19, v14);
  v31 = a2;
  if (*(a3 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    sub_1D5F76D3C(a3 + 440, v30);
    v29 = a4 & 0x101;
    sub_1D6C56678(0, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
    v25 = v9;
    type metadata accessor for CategoryViewLayoutAttributesFactory();
    sub_1D6C562C4();
    sub_1D6C56734();
    sub_1D6C55F0C(&qword_1EDF07200, type metadata accessor for CategoryViewLayoutAttributesFactory, &protocol conformance descriptor for CategoryViewLayoutAttributesFactory);

    v22 = v27;
    sub_1D7259D2C();
    v23 = MEMORY[0x1E69D6F38];
    sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
    sub_1D6C56384(&qword_1EDF18160, &qword_1EDF18158, v23, MEMORY[0x1E69D6F40]);
    sub_1D7259A5C();

    (*(v10 + 8))(v22, v25);
    return (*(v26 + 8))(v18, v28);
  }

  return result;
}

unint64_t sub_1D6C5408C(uint64_t a1)
{
  *(a1 + 8) = sub_1D6C540BC();
  result = sub_1D6C54110();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C540BC()
{
  result = qword_1EDF05A18[0];
  if (!qword_1EDF05A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF05A18);
  }

  return result;
}

unint64_t sub_1D6C54110()
{
  result = qword_1EC893FA8;
  if (!qword_1EC893FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FA8);
  }

  return result;
}

uint64_t type metadata accessor for M18_V1.Bound(uint64_t a1)
{
  result = qword_1EC893FB8;
  if (!qword_1EC893FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6C541B0()
{
  sub_1D725CC1C();
  sub_1D6C55F0C(&qword_1EDF17310, MEMORY[0x1E69D7608], MEMORY[0x1E69D7600]);
  v0 = sub_1D725AA4C();
  v2 = v1;
  if (v0 == sub_1D725AA4C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

void sub_1D6C542AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v68 = a5;
  v71 = a4;
  v9 = type metadata accessor for FeedHeadline(0);
  v76 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v65 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v65 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v65 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v65 - v26;
  v28 = type metadata accessor for GroupLayoutBindingContext(0);
  v29 = *(v28 + 56);
  v70 = v5;
  if (!*(*&v5[v29] + 16))
  {
    goto LABEL_16;
  }

  v30 = v28;
  v73 = v23;

  v69 = a1;
  sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, a1, a2);
  if ((v31 & 1) == 0 || (v67 = a2, v32 = , v33 = sub_1D5C14D80(v32), , !v33))
  {

LABEL_16:

    return;
  }

  v65 = v30;
  v66 = a3;
  v34 = *(v33 + 16);
  v74 = v33;
  v75 = v34;
  if (v34)
  {
    v35 = 0;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = v71;
    v38 = v73;
    while (v35 < *(v33 + 16))
    {
      v39 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v40 = *(v76 + 72);
      sub_1D5BF04C4(v33 + v39 + v40 * v35, v27, type metadata accessor for FeedHeadline);
      if ((v37 & ~*(v27 + 4)) != 0)
      {
        sub_1D5C10040(v27);
      }

      else
      {
        sub_1D5BDA904(v27, v38, type metadata accessor for FeedHeadline);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v36 + 16) + 1, 1);
          v37 = v71;
          v36 = v77[0];
        }

        v43 = *(v36 + 16);
        v42 = *(v36 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1D5C0F91C((v42 > 1), v43 + 1, 1);
          v37 = v71;
          v36 = v77[0];
        }

        *(v36 + 16) = v43 + 1;
        v44 = v36 + v39 + v43 * v40;
        v38 = v73;
        sub_1D5BDA904(v73, v44, type metadata accessor for FeedHeadline);
        v33 = v74;
      }

      if (v75 == ++v35)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_18:
  if (v66 && (*v70 & 1) == 0)
  {

    sub_1D62F071C(v36);
    v46 = v45;

    v36 = v46;
  }

  v47 = *&v70[*(v65 + 72)];
  v48 = *&v70[*(v65 + 76)];
  if (__OFSUB__(v47, v48))
  {
    goto LABEL_48;
  }

  v49 = sub_1D5C0FAD4(v36, v47 - v48);

  if (v75)
  {
    v50 = 0;
    v51 = MEMORY[0x1E69E7CC0];
    v52 = v69;
    v73 = v49;
    while (v50 < *(v33 + 16))
    {
      v53 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v54 = *(v76 + 72);
      v55 = v50 + 1;
      sub_1D5BF04C4(v33 + v53 + v54 * v50, v19, type metadata accessor for FeedHeadline);
      v56 = *(v49 + 16);
      v57 = v49 + v53;
      v58 = v56 + 1;
      while (--v58)
      {
        sub_1D5BF04C4(v57, v15, type metadata accessor for FeedHeadline);
        if (*v15 == *v19 && v15[1] == v19[1])
        {
          sub_1D5C10040(v15);
LABEL_25:
          sub_1D5C10040(v19);
          v33 = v74;
          goto LABEL_26;
        }

        v57 += v54;
        v60 = sub_1D72646CC();
        sub_1D5C10040(v15);
        if (v60)
        {
          goto LABEL_25;
        }
      }

      sub_1D5BDA904(v19, v72, type metadata accessor for FeedHeadline);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v51;
      if ((v61 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v51 + 16) + 1, 1);
        v52 = v69;
        v51 = v77[0];
      }

      v33 = v74;
      v63 = *(v51 + 16);
      v62 = *(v51 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1D5C0F91C((v62 > 1), v63 + 1, 1);
        v52 = v69;
        v51 = v77[0];
      }

      *(v51 + 16) = v63 + 1;
      sub_1D5BDA904(v72, v51 + v53 + v63 * v54, type metadata accessor for FeedHeadline);
LABEL_26:
      v50 = v55;
      v49 = v73;
      if (v55 == v75)
      {
        goto LABEL_42;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

  v51 = MEMORY[0x1E69E7CC0];
  v52 = v69;
LABEL_42:
  strcpy(v77, "FeedHeadline");
  BYTE5(v77[1]) = 0;
  HIWORD(v77[1]) = -5120;
  v77[2] = v52;
  v77[3] = v67;
  if (v68)
  {

    v51 = v74;
  }

  else
  {
  }

  v64 = sub_1D5C107C4(v51);

  sub_1D5BDACA8(v77, v64);
}

void sub_1D6C548CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v12 = type metadata accessor for GroupLayoutBindingContext(0);
  if (!*(*&v5[*(v12 + 56)] + 16))
  {
    goto LABEL_19;
  }

  v13 = v12;

  sub_1D5BCF83C(0x6F4D6E6967756C50, 0xEB000000006C6564, a1, a2);
  if ((v14 & 1) == 0 || (v15 = , v16 = sub_1D71500E8(v15), , !v16))
  {
LABEL_18:

LABEL_19:

    return;
  }

  v38 = a3;
  v35 = a2;
  v36 = v13;
  v33 = a1;
  v34 = a5;
  v39[0] = MEMORY[0x1E69E7CC0];
  v17 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 >> 62)
  {
    goto LABEL_45;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v19 = MEMORY[0x1E69E7CC0];
  v37 = v6;
  if (v18)
  {
    v20 = 0;
    v21 = a4 & 0xFFFFFFFFFFEFFFFELL;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        a4 = MEMORY[0x1DA6FB460](v20, v16);
        v6 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {
        if (v20 >= *(v17 + 16))
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v18 = sub_1D7263BFC();
          goto LABEL_6;
        }

        a4 = *(v16 + 8 * v20 + 32);

        v6 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          goto LABEL_17;
        }
      }

      if (v21)
      {
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v20;
      if (v6 == v18)
      {
        a4 = v39[0];
        v6 = v37;
        v19 = MEMORY[0x1E69E7CC0];
        if (!v38)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }
  }

  a4 = MEMORY[0x1E69E7CC0];
  if (!v38)
  {
    goto LABEL_25;
  }

LABEL_23:
  if ((*v6 & 1) == 0)
  {

    sub_1D62F2518(a4);
    v23 = v22;

    a4 = v23;
  }

LABEL_25:
  v24 = *&v6[*(v36 + 72)];
  v25 = *&v6[*(v36 + 76)];
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
    return;
  }

  sub_1D6C513B0(a4, v24 - v25);
  v27 = v26;

  v39[0] = v19;
  if (!v18)
  {
    goto LABEL_39;
  }

  v38 = v17;
  v28 = 0;
  v17 = 0;
  while ((v16 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1DA6FB460](v28, v16);
    a4 = v29;
    v6 = (v28 + 1);
    if (__OFADD__(v28, 1))
    {
      goto LABEL_37;
    }

LABEL_33:
    v40 = a4;
    MEMORY[0x1EEE9AC00](v29, v30);
    v32[2] = &v40;
    if (sub_1D6151AD0(sub_1D6C55EEC, v32, v27))
    {
    }

    else
    {
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    ++v28;
    if (v6 == v18)
    {
      goto LABEL_38;
    }
  }

  if (v28 >= *(v38 + 16))
  {
    goto LABEL_44;
  }

  a4 = *(v16 + 8 * v28 + 32);

  v6 = (v28 + 1);
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  v19 = v39[0];
LABEL_39:
  v39[0] = 0x6F4D6E6967756C50;
  v39[1] = 0xEB000000006C6564;
  v39[2] = v33;
  v39[3] = v35;
  if (v34)
  {

    v19 = v16;
  }

  else
  {
  }

  v31 = sub_1D5F63CF0(v19);

  sub_1D5BDACA8(v39, v31);
}

void sub_1D6C54CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v103 = a4;
  sub_1D6C56248(0, &qword_1EDF3C480, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v91 - v12;
  v14 = type metadata accessor for GroupLayoutBindingContext(0);
  if (!*(*&v5[*(v14 + 56)] + 16))
  {
    goto LABEL_37;
  }

  v15 = v14;

  sub_1D5BCF83C(0x7573734964656546, 0xE900000000000065, a1, a2);
  if ((v16 & 1) == 0 || (v100 = v15, v17 = , v18 = sub_1D714E90C(v17), , !v18))
  {

LABEL_37:

    return;
  }

  v96 = a2;
  v97 = a3;
  v94 = a1;
  v95 = a5;
  v101 = v5;
  v19 = *(v18 + 16);
  v104 = v19;
  if (v19)
  {
    v20 = 0;
    v99 = v103 & 0xFFFFFFFFFFFFBFBFLL;
    v102 = v103 & 0xFFFFFFFFFFFFFFBFLL;
    v21 = v18 + 32;
    v22 = MEMORY[0x1E69E7CC0];
    v92 = v19 - 1;
    v93 = v18 + 32;
    while (1)
    {
      v98 = v22;
      v23 = (v21 + 144 * v20);
      v24 = v20;
      while (1)
      {
        if (v24 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_64;
        }

        v109 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = v23[4];
        v112 = v23[3];
        v113 = v27;
        v110 = v25;
        v111 = v26;
        v28 = v23[5];
        v29 = v23[6];
        v30 = v23[7];
        *(v116 + 9) = *(v23 + 121);
        v115 = v29;
        v116[0] = v30;
        v114 = v28;
        v31 = v109;
        if (v27 != 1)
        {
          break;
        }

        sub_1D5ECF2C4(&v109, v107);
        v32 = [v31 coverImageAssetHandle];
        if (!v32)
        {
          if (!v103)
          {
            goto LABEL_30;
          }

          goto LABEL_8;
        }

        v33 = v32;
        [v31 coverImageAspectRatio];
        v34 = v31;
        v35 = v33;
        v36 = [v34 layeredCoverJSON];
        if (!v36)
        {

LABEL_21:
          if (!v102)
          {
            goto LABEL_30;
          }

          goto LABEL_8;
        }

        v37 = v36;
        sub_1D726207C();

        sub_1D72579DC();
        v38 = sub_1D7257A4C();
        (*(*(v38 - 8) + 56))(v13, 0, 1, v38);
        v39 = sub_1D725AB8C();

        sub_1D60D0CFC(v13);
        if (v39)
        {

          v19 = v104;
          goto LABEL_21;
        }

        [v34 layeredCoverAspectRatio];

        v19 = v104;
        if (!v99)
        {
          goto LABEL_30;
        }

LABEL_8:
        ++v24;
        sub_1D5ECF320(&v109);
        v23 += 9;
        if (v19 == v24)
        {
          v22 = v98;
          goto LABEL_39;
        }
      }

      sub_1D5ECF2C4(&v109, v107);
      v40 = [v31 coverImageAssetHandle];
      if (v40)
      {
        v41 = v40;
        [v31 coverImageAspectRatio];
        v42 = v31;
        v43 = v41;
        v44 = [v42 layeredCoverJSON];
        if (v44)
        {
          v45 = v44;
          sub_1D726207C();

          sub_1D72579DC();
          v46 = sub_1D7257A4C();
          (*(*(v46 - 8) + 56))(v13, 0, 1, v46);
          v47 = sub_1D725AB8C();

          sub_1D60D0CFC(v13);
          if (v47)
          {

            v48 = -4161;
          }

          else
          {
            [v42 layeredCoverAspectRatio];

            v48 = -20545;
          }

          v19 = v104;
        }

        else
        {

          v48 = -4161;
        }
      }

      else
      {
        v48 = -4097;
      }

      if ((v48 & v103) != 0)
      {
        goto LABEL_8;
      }

LABEL_30:
      v22 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105[0] = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6997F04(0, *(v22 + 16) + 1, 1);
        v22 = v105[0];
      }

      v21 = v93;
      v51 = *(v22 + 16);
      v50 = *(v22 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1D6997F04((v50 > 1), v51 + 1, 1);
        v22 = v105[0];
      }

      v20 = v24 + 1;
      *(v22 + 16) = v51 + 1;
      v52 = (v22 + 144 * v51);
      v52[2] = v109;
      v53 = v110;
      v54 = v111;
      v55 = v113;
      v52[5] = v112;
      v52[6] = v55;
      v52[3] = v53;
      v52[4] = v54;
      v56 = v114;
      v57 = v115;
      v58 = v116[0];
      *(v52 + 153) = *(v116 + 9);
      v52[8] = v57;
      v52[9] = v58;
      v52[7] = v56;
      v19 = v104;
      if (v92 == v24)
      {
LABEL_39:
        if (!v97)
        {
          goto LABEL_43;
        }

LABEL_40:
        v59 = v101;
        if ((*v101 & 1) == 0)
        {

          v60 = v59;
          sub_1D62F0AF0(v22);
          v62 = v61;

          v22 = v62;
          v59 = v60;
        }

        goto LABEL_44;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
  if (v97)
  {
    goto LABEL_40;
  }

LABEL_43:
  v59 = v101;
LABEL_44:
  v63 = *&v59[*(v100 + 72)];
  v64 = *&v59[*(v100 + 76)];
  if (__OFSUB__(v63, v64))
  {
    goto LABEL_65;
  }

  sub_1D6C50C60(v22, v63 - v64);
  v66 = v65;

  if (v19)
  {
    v69 = 0;
    v70 = v18 + 32;
    v100 = v19 - 1;
    v102 = v18 + 32;
    v103 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v71 = (v70 + 144 * v69);
    v72 = v69;
    while (v72 < *(v18 + 16))
    {
      v109 = *v71;
      v73 = v71[1];
      v74 = v71[2];
      v75 = v71[4];
      v112 = v71[3];
      v113 = v75;
      v110 = v73;
      v111 = v74;
      v76 = v71[5];
      v77 = v71[6];
      v78 = v71[7];
      *(v116 + 9) = *(v71 + 121);
      v115 = v77;
      v116[0] = v78;
      v114 = v76;
      v69 = v72 + 1;
      v107[6] = v77;
      v108[0] = v78;
      *(v108 + 9) = *(v116 + 9);
      v107[2] = v111;
      v107[3] = v112;
      v107[4] = v75;
      v107[5] = v76;
      v107[0] = v109;
      v107[1] = v110;
      MEMORY[0x1EEE9AC00](v67, v68);
      *(&v91 - 2) = v107;
      sub_1D5ECF2C4(&v109, v105);
      if ((sub_1D61509E8(sub_1D6B9C4B0, (&v91 - 4), v66) & 1) == 0)
      {
        v79 = v103;
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v106 = v79;
        if ((v67 & 1) == 0)
        {
          v67 = sub_1D6997F04(0, *(v103 + 16) + 1, 1);
          v103 = v106;
        }

        v81 = *(v103 + 16);
        v80 = *(v103 + 24);
        if (v81 >= v80 >> 1)
        {
          v67 = sub_1D6997F04((v80 > 1), v81 + 1, 1);
          v103 = v106;
        }

        v82 = v103;
        *(v103 + 16) = v81 + 1;
        v83 = (v82 + 144 * v81);
        v83[2] = v109;
        v84 = v110;
        v85 = v111;
        v86 = v113;
        v83[5] = v112;
        v83[6] = v86;
        v83[3] = v84;
        v83[4] = v85;
        v87 = v114;
        v88 = v115;
        v89 = v116[0];
        *(v83 + 153) = *(v116 + 9);
        v83[8] = v88;
        v83[9] = v89;
        v83[7] = v87;
        v70 = v102;
        if (v100 != v72)
        {
          goto LABEL_47;
        }

        goto LABEL_59;
      }

      v67 = sub_1D5ECF320(&v109);
      v71 += 9;
      ++v72;
      if (v104 == v69)
      {
        goto LABEL_59;
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v103 = MEMORY[0x1E69E7CC0];
LABEL_59:
  *&v109 = 0x7573734964656546;
  *(&v109 + 1) = 0xE900000000000065;
  *&v110 = v94;
  *(&v110 + 1) = v96;
  if (v95)
  {

    v103 = v18;
  }

  else
  {
  }

  v90 = sub_1D5F631C8(v103);

  sub_1D5BDACA8(&v109, v90);
}

void sub_1D6C555B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = type metadata accessor for GroupLayoutBindingContext(0);
  if (!*(*&v5[*(v12 + 56)] + 16))
  {
    goto LABEL_16;
  }

  v13 = v12;

  sub_1D5BCF83C(0x6174614364656546, 0xEF6D657449676F6CLL, a1, a2);
  if ((v14 & 1) == 0 || (v15 = , v16 = sub_1D71501F8(v15), , !v16))
  {

LABEL_16:

    return;
  }

  v41 = a3;
  v43 = v6;
  v39 = a1;
  v40 = a2;
  v17 = *(v16 + 16);
  v44 = v16;
  if (v17)
  {
    v18 = 0;
    v19 = v16 + 32;
    v20 = a4 & 0xFFFFFFFFFFFFFFBFLL;
    v21 = MEMORY[0x1E69E7CC0];
    while (v18 < *(v16 + 16))
    {
      sub_1D5F76E40(v19, __src);
      if (v20)
      {
        sub_1D5F76EF0(__src);
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D69992A8(0, *(v21 + 16) + 1, 1);
          v16 = v44;
          v21 = v47;
        }

        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D69992A8((v23 > 1), v24 + 1, 1);
          v16 = v44;
          v21 = v47;
        }

        *(v21 + 16) = v24 + 1;
        memcpy((v21 + 288 * v24 + 32), __dst, 0x11AuLL);
      }

      ++v18;
      v19 += 288;
      if (v17 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_18:
  if (v41)
  {
    v25 = v43;
    if ((*v43 & 1) == 0)
    {

      sub_1D62F270C(v21);
      v16 = v44;
      v27 = v26;

      v21 = v27;
    }
  }

  else
  {
    v25 = v43;
  }

  v28 = *&v25[v13[18]];
  v29 = *&v25[v13[19]];
  v30 = __OFSUB__(v28, v29);
  v31 = v28 - v29;
  if (v30)
  {
    goto LABEL_42;
  }

  if (v31 < 0)
  {
LABEL_43:
    __break(1u);

    sub_1D5F76EF0(__src);

    __break(1u);
    return;
  }

  v42 = a5;
  if (v17)
  {
    v32 = 0;
    v13 = 0;
    v33 = v16 + 32;
    v34 = MEMORY[0x1E69E7CC0];
    while (v32 < *(v16 + 16))
    {
      sub_1D5F76E40(v33, __src);
      if (sub_1D6C518DC(__src, v21))
      {
        memcpy(__dst, __src, sizeof(__dst));
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v34;
        if ((v35 & 1) == 0)
        {
          sub_1D69992A8(0, *(v34 + 16) + 1, 1);
          v16 = v44;
          v34 = v47;
        }

        v37 = *(v34 + 16);
        v36 = *(v34 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1D69992A8((v36 > 1), v37 + 1, 1);
          v16 = v44;
          v34 = v47;
        }

        *(v34 + 16) = v37 + 1;
        memcpy((v34 + 288 * v37 + 32), __dst, 0x11AuLL);
      }

      else
      {
        sub_1D5F76EF0(__src);
      }

      ++v32;
      v33 += 288;
      if (v17 == v32)
      {
        goto LABEL_36;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_36:
  __src[0] = 0x6174614364656546;
  __src[1] = 0xEF6D657449676F6CLL;
  __src[2] = v39;
  __src[3] = v40;
  if (v42)
  {

    v34 = v16;
  }

  else
  {
  }

  v38 = sub_1D5F63F18(v34);

  sub_1D5BDACA8(__src, v38);
}

void sub_1D6C559CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = type metadata accessor for GroupLayoutBindingContext(0);
  if (!*(*&v5[*(v11 + 56)] + 16))
  {
    goto LABEL_16;
  }

  v12 = v11;
  v60 = a3;

  sub_1D5BCF83C(0x6574614364656546, 0xEC00000079726F67, a1, a2);
  if ((v13 & 1) == 0 || (v58 = a1, v14 = , v15 = sub_1D715038C(v14), , !v15))
  {

LABEL_16:

    return;
  }

  v59 = v5;
  v57 = a2;
  v16 = *(v15 + 16);
  v62 = v16;
  if (v16)
  {
    v17 = 0;
    v18 = v15 + 32;
    v19 = a4 & 0xFFFFFFFFFFFBFFFFLL;
    v20 = MEMORY[0x1E69E7CC0];
    while (v17 < *(v15 + 16))
    {
      sub_1D5F76D3C(v18, &v73);
      if (v19)
      {
        sub_1D5F76DEC(&v73);
      }

      else
      {
        v69 = v79;
        v70 = v80;
        v71 = v81;
        v72 = v82;
        v65 = v75;
        v66 = v76;
        v67 = v77;
        v68 = v78;
        v63 = v73;
        v64 = v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D69992C8(0, *(v20 + 16) + 1, 1);
          v16 = v62;
          v20 = v83;
        }

        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D69992C8((v22 > 1), v23 + 1, 1);
          v16 = v62;
          v20 = v83;
        }

        *(v20 + 16) = v23 + 1;
        v24 = v20 + 152 * v23;
        v25 = v64;
        *(v24 + 32) = v63;
        *(v24 + 48) = v25;
        v26 = v65;
        v27 = v66;
        v28 = v68;
        *(v24 + 96) = v67;
        *(v24 + 112) = v28;
        *(v24 + 64) = v26;
        *(v24 + 80) = v27;
        v29 = v69;
        v30 = v70;
        v31 = v71;
        *(v24 + 176) = v72;
        *(v24 + 144) = v30;
        *(v24 + 160) = v31;
        *(v24 + 128) = v29;
      }

      ++v17;
      v18 += 152;
      if (v16 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_18:
  if (v60 && (*v59 & 1) == 0)
  {

    sub_1D62F2984(v20);
    v33 = v32;

    v20 = v33;
  }

  v34 = *&v59[*(v12 + 72)];
  v35 = *&v59[*(v12 + 76)];
  if (__OFSUB__(v34, v35))
  {
    goto LABEL_48;
  }

  v61 = a5;
  v36 = sub_1D6C51818(v20, v34 - v35);

  v37 = v62;
  if (v62)
  {
    v38 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    while (v38 < *(v15 + 16))
    {
      v40 = v38 + 1;
      sub_1D5F76D3C(v15 + 32 + 152 * v38, &v73);
      v41 = *(v36 + 16) + 1;
      v42 = v36 + 32;
      while (--v41)
      {
        sub_1D5F76D3C(v42, &v63);
        if (v63 == v73 && *(&v63 + 1) == *(&v73 + 1))
        {
          sub_1D5F76DEC(&v63);
LABEL_25:
          sub_1D5F76DEC(&v73);
          goto LABEL_26;
        }

        v42 += 152;
        v44 = sub_1D72646CC();
        sub_1D5F76DEC(&v63);
        if (v44)
        {
          goto LABEL_25;
        }
      }

      v69 = v79;
      v70 = v80;
      v71 = v81;
      v72 = v82;
      v65 = v75;
      v66 = v76;
      v67 = v77;
      v68 = v78;
      v63 = v73;
      v64 = v74;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v83 = v39;
      if ((v45 & 1) == 0)
      {
        sub_1D69992C8(0, *(v39 + 16) + 1, 1);
        v37 = v62;
        v39 = v83;
      }

      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1D69992C8((v46 > 1), v47 + 1, 1);
        v37 = v62;
        v39 = v83;
      }

      *(v39 + 16) = v47 + 1;
      v48 = v39 + 152 * v47;
      v49 = v64;
      *(v48 + 32) = v63;
      *(v48 + 48) = v49;
      v50 = v65;
      v51 = v66;
      v52 = v68;
      *(v48 + 96) = v67;
      *(v48 + 112) = v52;
      *(v48 + 64) = v50;
      *(v48 + 80) = v51;
      v53 = v69;
      v54 = v70;
      v55 = v71;
      *(v48 + 176) = v72;
      *(v48 + 144) = v54;
      *(v48 + 160) = v55;
      *(v48 + 128) = v53;
LABEL_26:
      v38 = v40;
      if (v40 == v37)
      {
        goto LABEL_42;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_42:
  strcpy(&v73, "FeedCategory");
  BYTE13(v73) = 0;
  HIWORD(v73) = -5120;
  *&v74 = v58;
  *(&v74 + 1) = v57;
  if (v61)
  {

    v39 = v15;
  }

  else
  {
  }

  v56 = sub_1D5F64044(v39);

  sub_1D5BDACA8(&v73, v56);
}

uint64_t sub_1D6C55F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6C55F54(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6C5619C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6C55FEC(uint64_t a1)
{
  sub_1D5C10AB0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GroupLayoutContext(319);
    if (v2 <= 0x3F)
    {
      sub_1D6C5619C(319, &qword_1EDF051B0, &type metadata for FeedCategory, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for GroupLayoutKey(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D6C560C4(uint64_t a1)
{
  result = sub_1D6C55F0C(&qword_1EC893FC8, type metadata accessor for M18_V1.Bound, &unk_1D73405E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C56144(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C5619C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6C5619C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D6C56248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6C562C4()
{
  result = qword_1EDF10780;
  if (!qword_1EDF10780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10780);
  }

  return result;
}

unint64_t sub_1D6C56318()
{
  result = qword_1EDF10798;
  if (!qword_1EDF10798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10798);
  }

  return result;
}

uint64_t sub_1D6C56384(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C563C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6C563C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for CategoryViewLayout;
    v8[1] = &type metadata for CategoryViewLayout.Attributes;
    v8[2] = sub_1D6C562C4();
    v8[3] = sub_1D6C56318();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6C5644C(uint64_t a1)
{
  if (!qword_1EDF02408)
  {
    sub_1D6C56678(255, &qword_1EDF180D0, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02408);
    }
  }
}

uint64_t sub_1D6C5653C(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void))
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return a2(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32));
}

void sub_1D6C56564(uint64_t a1)
{
  if (!qword_1EDF180A0)
  {
    sub_1D6C56678(255, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
    type metadata accessor for CategoryViewLayoutAttributesFactory();
    sub_1D6C562C4();
    sub_1D6C56734();
    sub_1D6C55F0C(&qword_1EDF07200, type metadata accessor for CategoryViewLayoutAttributesFactory, &protocol conformance descriptor for CategoryViewLayoutAttributesFactory);
    v1 = sub_1D7259D3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF180A0);
    }
  }
}

void sub_1D6C56678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6C566E0()
{
  result = qword_1EDF0ABE8;
  if (!qword_1EDF0ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ABE8);
  }

  return result;
}

unint64_t sub_1D6C56734()
{
  result = qword_1EDF18018;
  if (!qword_1EDF18018)
  {
    sub_1D6C56678(255, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF18018);
  }

  return result;
}

uint64_t sub_1D6C567D4()
{
  v17 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v1 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v2);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 208);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D5CE97C8(0, v6, 0);
    v7 = v18;
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    do
    {
      sub_1D6C586C8(v8, v4, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v11 = *v4;
      v10 = v4[1];
      v12 = *(*(v4 + *(v17 + 24)) + 16);

      sub_1D6C58730(v4, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D5CE97C8((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      v15 = (v7 + 24 * v14);
      v15[4] = v11;
      v15[5] = v10;
      v15[6] = v12;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_1D6C56990()
{
  v1 = 0;
  v28 = *(v0 + 208);
  v2 = *(v0 + 176);
  v27[10] = *(v0 + 160);
  v27[11] = v2;
  v27[12] = *(v0 + 192);
  v3 = *(v0 + 112);
  v27[6] = *(v0 + 96);
  v27[7] = v3;
  v4 = *(v0 + 144);
  v27[8] = *(v0 + 128);
  v27[9] = v4;
  v5 = *(v0 + 48);
  v27[2] = *(v0 + 32);
  v27[3] = v5;
  v6 = *(v0 + 80);
  v27[4] = *(v0 + 64);
  v27[5] = v6;
  v7 = *(v0 + 16);
  v27[0] = *v0;
  v27[1] = v7;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v25 = byte_1F5118F70[v1 + 32];
    sub_1D6C57B14(&v25, v27, &v21);
    if (v22)
    {
      sub_1D5B63F14(&v21, v24);
      sub_1D5B63F14(v24, &v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_1D5BDEE24(0, v8[2] + 1, 1, v8);
        v26 = v8;
      }

      v11 = v8[2];
      v10 = v8[3];
      if (v11 >= v10 >> 1)
      {
        v8 = sub_1D5BDEE24((v10 > 1), v11 + 1, 1, v8);
        v26 = v8;
      }

      v12 = v22;
      v13 = v23;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(&v21, v22);
      v15 = MEMORY[0x1EEE9AC00](v14, v14);
      v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17, v15);
      sub_1D6302700(v11, v17, &v26, v12, v13);
      __swift_destroy_boxed_opaque_existential_1(&v21);
    }

    else
    {
      sub_1D6C58730(&v21, sub_1D630BB34);
    }

    ++v1;
  }

  while (v1 != 6);
  return v8;
}

void sub_1D6C56BC8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DebugFormatCacheFile(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 208);
  v17 = *(v16 + 16);
  if (v17)
  {
    v30 = v9;
    v31 = v6;
    v32 = v5;
    v33 = a2;
    v18 = 0;
    v19 = *a1;
    v20 = a1[1];
    v34 = v19;
    v21 = *(v13 + 24);
    v22 = v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    while (v18 < *(v16 + 16))
    {
      sub_1D6C586C8(v22 + *(v11 + 72) * v18, v15, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v23 = *&v15[v21];

      sub_1D6C58730(v15, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v24 = *(v23 + 32);

      if (*(v24 + 16))
      {
        v25 = sub_1D5B69D90(v34, v20);
        if (v26)
        {
          v27 = v30;
          v6 = v31;
          sub_1D6C586C8(*(v24 + 56) + *(v31 + 72) * v25, v30, type metadata accessor for DebugFormatCacheFile);

          a2 = v33;
          sub_1D6C58660(v27, v33, type metadata accessor for DebugFormatCacheFile);
          v28 = 0;
          v5 = v32;
          goto LABEL_10;
        }
      }

      ++v18;

      if (v17 == v18)
      {
        v28 = 1;
        v5 = v32;
        a2 = v33;
        v6 = v31;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v28 = 1;
LABEL_10:
    (*(v6 + 56))(a2, v28, 1, v5);
  }
}

void sub_1D6C56E68(uint64_t *a1)
{
  v3 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 208);
  v30 = *(v8 + 16);
  if (v30)
  {
    v9 = 0;
    v10 = *a1;
    v11 = a1[1];
    v12 = a1[2];
    v34 = a1[3];
    v35 = v12;
    v13 = *(v5 + 24);
    v31 = v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v32 = v13;
    v28 = v8;
    v29 = v6;
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      v14 = v33;
      sub_1D6C586C8(v31 + *(v6 + 72) * v9, v33, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v15 = *(v14 + v32);

      sub_1D6C58730(v14, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v16 = *(v15 + 48);

      if (*(v16 + 16))
      {
        sub_1D7264A0C();
        sub_1D72621EC();
        MEMORY[0x1DA6FC0B0](v35);
        MEMORY[0x1DA6FC0B0](v34);
        v17 = sub_1D7264A5C();
        v18 = -1 << *(v16 + 32);
        v19 = v17 & ~v18;
        if ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          break;
        }
      }

LABEL_3:
      ++v9;

      v6 = v29;
      v8 = v28;
      if (v9 == v30)
      {
        return;
      }
    }

    v20 = ~v18;
    v21 = *(v16 + 48);
    while (1)
    {
      v22 = (v21 + 32 * v19);
      v24 = v22[2];
      v23 = v22[3];
      v25 = *v22 == v10 && v22[1] == v11;
      if (v25 || (sub_1D72646CC()) && v24 == v35 && v23 == v34)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_3;
      }
    }
  }
}

BOOL sub_1D6C570DC(unint64_t a1)
{
  v2 = type metadata accessor for DebugFormatPackagesDelta(0);
  v3 = *(a1 + *(v2 + 20));
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_29:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v5 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA6FB460](i, v3);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *(v4 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v7 = *(v3 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = sub_1D6C5727C(v7);

    if (v8)
    {
      return 1;
    }
  }

  a1 = *(a1 + *(v2 + 24));
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  do
  {
    v9 = v2 != v3;
    if (v2 == v3)
    {
      break;
    }

    if (v4)
    {
      v10 = MEMORY[0x1DA6FB460](v3, a1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v10 = *(a1 + 8 * v3 + 32);

      if (__OFADD__(v3, 1))
      {
LABEL_24:
        __break(1u);
        return 1;
      }
    }

    v11 = sub_1D6C5727C(v10);

    ++v3;
  }

  while ((v11 & 1) == 0);
  return v9;
}

uint64_t sub_1D6C5727C(uint64_t a1)
{
  v3 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role;
  if (*(v9 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) == 4)
  {
    v3 = *(v1 + 200);
    v11 = v3 & 0xFFFFFFFFFFFFFF8;
    if (!(v3 >> 62))
    {
      v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_18:
    v15 = *(v1 + 208);
    v11 = *(v15 + 16);
    if (!v11)
    {
      return 0;
    }

    v16 = 0;
    v17 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v16 < *(v15 + 16))
    {
      sub_1D6C586C8(v17 + *(v4 + 72) * v16, v8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      if (*(v9 + v10) > 3u)
      {
        sub_1D6C58730(v8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      }

      else
      {
        v18 = *(*(v8 + *(v3 + 24)) + 16);
        if (*(v18 + 16) == *(v9 + 16) && *(v18 + 24) == *(v9 + 24))
        {
          sub_1D6C58730(v8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
          return 1;
        }

        v20 = sub_1D72646CC();
        sub_1D6C58730(v8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        if (v20)
        {
          return 1;
        }
      }

      if (v11 == ++v16)
      {
        return 0;
      }
    }

LABEL_36:
    __break(1u);
  }

  v1 = sub_1D7263BFC();
LABEL_4:
  v4 = 0;
  do
  {
    v8 = v1 != v4;
    if (v1 == v4)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA6FB460](v4, v3, v6);
      if (__OFADD__(v4, 1))
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      if (v4 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      v10 = *(v3 + 8 * v4 + 32);

      if (__OFADD__(v4, 1))
      {
        goto LABEL_17;
      }
    }

    v12 = *(v10 + 16);
    if (*(v12 + 16) == *(v9 + 16) && *(v12 + 24) == *(v9 + 24))
    {

      return 1;
    }

    v14 = sub_1D72646CC();

    ++v4;
  }

  while ((v14 & 1) == 0);
  return v8;
}

double sub_1D6C57524(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 160);
  v5 = *(v1 + 128);
  v68 = *(v1 + 144);
  v69 = v4;
  v6 = *(v1 + 160);
  v70[0] = *(v1 + 176);
  v7 = *(v1 + 96);
  v8 = *(v1 + 64);
  v64 = *(v1 + 80);
  v65 = v7;
  v9 = *(v1 + 96);
  v10 = *(v1 + 128);
  v66 = *(v1 + 112);
  v67 = v10;
  v11 = *(v1 + 32);
  v61[0] = *(v1 + 16);
  v61[1] = v11;
  v12 = *(v1 + 64);
  v14 = *(v1 + 16);
  v13 = *(v1 + 32);
  v62 = *(v1 + 48);
  v63 = v12;
  v58 = v68;
  v59 = v6;
  v60[0] = *(v1 + 176);
  v54 = v64;
  v55 = v9;
  v56 = v66;
  v57 = v5;
  v50 = v14;
  v51 = v13;
  *(v70 + 15) = *(v1 + 191);
  *(v60 + 15) = *(v1 + 191);
  v17 = *(v1 + 200);
  v15 = (v1 + 200);
  v16 = v17;
  v52 = v62;
  v53 = v8;
  v18 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 >> 62)
  {
LABEL_29:
    v19 = sub_1D7263BFC();
  }

  else
  {
    v19 = *(v18 + 16);
  }

  sub_1D5ECF1C0(v61, v48);
  v20 = 0;
  while (v19 != v20)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1DA6FB460](v20, v16);
    }

    else
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = *(v16 + 8 * v20 + 32);
    }

    v22 = *(v21 + 16);
    v23 = *(v22 + 16);
    v24 = *(v22 + 24);
    v25 = *(a1 + 16);
    if (v23 == *(v25 + 16) && v24 == *(v25 + 24))
    {

LABEL_25:
      sub_1D5EC4C00();

      sub_1D5EC26A0(v20, v48);

      goto LABEL_26;
    }

    v27 = sub_1D72646CC();

    if (v27)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v20++, 1))
    {
      goto LABEL_28;
    }
  }

  MEMORY[0x1DA6F9CE0](v29);
  if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  v30 = *(&v63 + 1);
  sub_1D726278C();
  v31 = *(a1 + 16);
  v33 = *(v31 + 16);
  v32 = *(v31 + 24);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1D69960B8(0, *(v30 + 2) + 1, 1, v30);
  }

  v35 = *(v30 + 2);
  v34 = *(v30 + 3);
  if (v35 >= v34 >> 1)
  {
    v30 = sub_1D69960B8((v34 > 1), v35 + 1, 1, v30);
  }

  *(v30 + 2) = v35 + 1;
  v36 = &v30[16 * v35];
  *(v36 + 4) = v33;
  *(v36 + 5) = v32;
  *(&v53 + 1) = v30;
LABEL_26:
  v37 = *(v2 + 160);
  v48[8] = *(v2 + 144);
  v48[9] = v37;
  v49[0] = *(v2 + 176);
  *(v49 + 15) = *(v2 + 191);
  v38 = *(v2 + 96);
  v48[4] = *(v2 + 80);
  v48[5] = v38;
  v39 = *(v2 + 128);
  v48[6] = *(v2 + 112);
  v48[7] = v39;
  v40 = *(v2 + 32);
  v48[0] = *(v2 + 16);
  v48[1] = v40;
  v41 = *(v2 + 64);
  v48[2] = *(v2 + 48);
  v48[3] = v41;
  sub_1D5ECF21C(v48);
  v42 = v59;
  *(v2 + 144) = v58;
  *(v2 + 160) = v42;
  *(v2 + 176) = v60[0];
  *(v2 + 191) = *(v60 + 15);
  v43 = v55;
  *(v2 + 80) = v54;
  *(v2 + 96) = v43;
  v44 = v57;
  *(v2 + 112) = v56;
  *(v2 + 128) = v44;
  v45 = v51;
  *(v2 + 16) = v50;
  *(v2 + 32) = v45;
  result = *&v52;
  v47 = v53;
  *(v2 + 48) = v52;
  *(v2 + 64) = v47;
  return result;
}

uint64_t sub_1D6C57828@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 208);
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_14:
    result = sub_1D5B68374(a1, a3);
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = a2 & 1;
    return result;
  }

  result = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v13 = 0;
  v14 = *(result - 8);
  v15 = v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v39 = a3;
  v38 = a2;
  v34 = v11;
  v35 = v7;
  v32 = v14;
  v33 = result;
  v31 = v15;
  while (2)
  {
    if (v13 < *(v10 + 16))
    {
      v36 = v13 + 1;
      v16 = *(v15 + *(v14 + 72) * v13 + *(result + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings;
      v17 = *(v7 + 60);
      v37 = v16;
      v18 = *(v16 + v17);
      v19 = *(v18 + 16);

      v20 = v18 + 64;
      v21 = -v19;
      v22 = -1;
      while (v21 + v22 != -1)
      {
        if (++v22 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_19;
        }

        sub_1D5B68374(v20, v41);
        __swift_project_boxed_opaque_existential_1(v41, v41[3]);
        v23 = sub_1D725AA4C();
        v25 = v24;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        if (v23 == sub_1D725AA4C() && v25 == v26)
        {

          __swift_destroy_boxed_opaque_existential_1(v41);
LABEL_16:

          v29 = v40;
          sub_1D6C586C8(v37, v40, type metadata accessor for GroupLayoutBindingContext);
          sub_1D62F8E24(a1, v38 & 1, v39);
          return sub_1D6C58730(v29, type metadata accessor for GroupLayoutBindingContext);
        }

        v20 += 72;
        v28 = sub_1D72646CC();

        result = __swift_destroy_boxed_opaque_existential_1(v41);
        if (v28)
        {
          goto LABEL_16;
        }
      }

      v7 = v35;
      v13 = v36;
      result = v33;
      a3 = v39;
      LOBYTE(a2) = v38;
      v15 = v31;
      v14 = v32;
      if (v36 != v34)
      {
        continue;
      }

      goto LABEL_14;
    }

    break;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1D6C57B14(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5C1F7A8(0, qword_1EDF34D20, type metadata accessor for FeedRecipe);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v69 - v8;
  sub_1D5C1F7A8(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v69 - v12;
  v14 = *a1;
  v15 = *(a2 + 208);
  v16 = *(v15 + 16);
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      if (v16)
      {
        type metadata accessor for DebugFormatEditorWorkspaceGroup(0);

        sub_1D678EE54(v40, v9);

        v41 = type metadata accessor for FeedRecipe(0);
        if ((*(*(v41 - 8) + 48))(v9, 1, v41) != 1)
        {
          *(a3 + 24) = v41;
          *(a3 + 32) = sub_1D6C58618(&qword_1EDF12E00, type metadata accessor for FeedRecipe, &protocol conformance descriptor for FeedRecipe);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
          sub_1D6C58660(v9, boxed_opaque_existential_1, type metadata accessor for FeedRecipe);
          return;
        }

        sub_1D6C585BC(v9, qword_1EDF34D20, type metadata accessor for FeedRecipe);
      }

LABEL_42:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    if (v14 == 4)
    {
      if (!v16)
      {
        goto LABEL_42;
      }

      v22 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
      v23 = *(*(v15 + ((*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80)) + *(v22 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
      v24 = *(v23 + 16);

      if (v24 && (v25 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61), (v26 & 1) != 0) && (sub_1D5B68374(*(v23 + 56) + 40 * v25, v84), sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType), swift_dynamicCast()))
      {
        nullsub_1();
      }

      else
      {
        sub_1D5F588A0(&v69);
        v96 = v80;
        v97 = v81;
        v98 = v82;
        v99 = v83;
        v92[1] = v76[1];
        v93 = v77;
        v94 = v78;
        v95 = v79;
        v89 = v73;
        v90 = v74;
        v91 = v75;
        v92[0] = v76[0];
        v85 = v69;
        v86 = v70;
        v87 = v71;
        v88 = v72;
      }

      v80 = v96;
      v81 = v97;
      v82 = v98;
      v83 = v99;
      v76[1] = v92[1];
      v77 = v93;
      v78 = v94;
      v79 = v95;
      v73 = v89;
      v74 = v90;
      v75 = v91;
      v76[0] = v92[0];
      v69 = v85;
      v70 = v86;
      v71 = v87;
      v72 = v88;
      if (sub_1D5DEA380(&v69) == 1)
      {
        goto LABEL_42;
      }

      *(a3 + 24) = &type metadata for FeedPaywall;
      *(a3 + 32) = sub_1D62DBF34();
      v61 = swift_allocObject();
      *a3 = v61;
      v62 = v81;
      *(v61 + 208) = v80;
      *(v61 + 224) = v62;
      *(v61 + 240) = v82;
      *(v61 + 256) = v83;
      v63 = v77;
      *(v61 + 144) = v76[1];
      *(v61 + 160) = v63;
      v64 = v79;
      *(v61 + 176) = v78;
      *(v61 + 192) = v64;
      v65 = v74;
      *(v61 + 80) = v73;
      *(v61 + 96) = v65;
      v66 = v76[0];
      *(v61 + 112) = v75;
      *(v61 + 128) = v66;
      v67 = v70;
      *(v61 + 16) = v69;
      *(v61 + 32) = v67;
      v68 = v72;
      *(v61 + 48) = v71;
      *(v61 + 64) = v68;
      return;
    }

    if (!v16)
    {
      goto LABEL_42;
    }

    v44 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
    v45 = *(*(v15 + ((*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80)) + *(v44 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
    v46 = *(v45 + 16);

    if (v46)
    {
      v47 = sub_1D5B69D90(0x726F705364656546, 0xEF746E6576457374);
      if (v48)
      {
        sub_1D5B68374(*(v45 + 56) + 40 * v47, &v85);
        sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
        if ((swift_dynamicCast() & 1) == 0)
        {
          LOBYTE(v71) = 0;
          v69 = 0u;
          v70 = 0u;
        }

        v49 = *(&v69 + 1);
        if (*(&v69 + 1))
        {
          v50 = v71;
          v51 = v70;
          v52 = v69;
          *(a3 + 24) = &type metadata for FeedSportsEvent;
          *(a3 + 32) = sub_1D62DC038();
          v53 = swift_allocObject();
          *a3 = v53;
          *(v53 + 16) = v52;
          *(v53 + 24) = v49;
          *(v53 + 32) = v51;
          *(v53 + 48) = v50 & 1;
          return;
        }

        goto LABEL_42;
      }
    }

LABEL_36:

    goto LABEL_42;
  }

  if (!*a1)
  {
    if (!v16)
    {
      goto LABEL_42;
    }

    v27 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
    v28 = *(*(v15 + ((*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80)) + *(v27 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
    v29 = *(v28 + 16);

    if (v29)
    {
      v30 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470);
      if (v31)
      {
        sub_1D5B68374(*(v28 + 56) + 40 * v30, &v85);
        sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v69 = 0uLL;
          LOBYTE(v70) = 0;
        }

        v32 = v69;
        if (v69)
        {
          v33 = *(&v69 + 1);
          *(a3 + 24) = &type metadata for FeedTag;
          *(a3 + 32) = sub_1D5EE5BA8();
          v34 = swift_allocObject();
          *a3 = v34;
          v35 = [swift_unknownObjectRetain() identifier];
          v36 = sub_1D726207C();
          v38 = v37;

          *(v34 + 96) = xmmword_1D7279980;
          *(v34 + 112) = 0u;
          *(v34 + 128) = 0u;
          *(v34 + 144) = 0u;
          *(v34 + 160) = 0;
          sub_1D5F587AC(v32, v33);
          *(v34 + 16) = v36;
          *(v34 + 24) = v38;
          *(v34 + 32) = v32;
          *(v34 + 40) = 0;
          *(v34 + 64) = 0;
          *(v34 + 72) = 0xE000000000000000;
          *(v34 + 48) = 0;
          *(v34 + 56) = 0;
          v39 = MEMORY[0x1E69E7CD0];
          *(v34 + 80) = 0;
          *(v34 + 88) = v39;
          return;
        }

        goto LABEL_42;
      }
    }

    goto LABEL_36;
  }

  if (v14 == 1)
  {
    if (v16)
    {
      v17 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
      v18 = *(*(v15 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(v17 + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
      v19 = *(v18 + 16);

      if (v19 && (v20 = sub_1D5B69D90(0x7573734964656546, 0xE900000000000065), (v21 & 1) != 0) && (sub_1D5B68374(*(v18 + 56) + 40 * v20, v84), sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType), swift_dynamicCast()))
      {
        nullsub_1();
      }

      else
      {
        sub_1D5D62850(&v69);
        v91 = v75;
        v92[0] = v76[0];
        *(v92 + 9) = *(v76 + 9);
        v87 = v71;
        v88 = v72;
        v89 = v73;
        v90 = v74;
        v85 = v69;
        v86 = v70;
      }

      v75 = v91;
      v76[0] = v92[0];
      *(v76 + 9) = *(v92 + 9);
      v71 = v87;
      v72 = v88;
      v73 = v89;
      v74 = v90;
      v69 = v85;
      v70 = v86;
      if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v69) != 1)
      {
        *(a3 + 24) = &type metadata for FeedIssue;
        *(a3 + 32) = sub_1D5EE5AA4();
        v54 = swift_allocObject();
        *a3 = v54;
        v55 = v76[0];
        v54[7] = v75;
        v54[8] = v55;
        *(v54 + 137) = *(v76 + 9);
        v56 = v72;
        v54[3] = v71;
        v54[4] = v56;
        v57 = v74;
        v54[5] = v73;
        v54[6] = v57;
        v58 = v70;
        v54[1] = v69;
        v54[2] = v58;
        return;
      }
    }

    goto LABEL_42;
  }

  if (!v16)
  {
    goto LABEL_42;
  }

  type metadata accessor for DebugFormatEditorWorkspaceGroup(0);

  sub_1D678EE20(v42, v13);

  v43 = type metadata accessor for FeedHeadline(0);
  if ((*(*(v43 - 8) + 48))(v13, 1, v43) == 1)
  {
    sub_1D6C585BC(v13, qword_1EDF42030, type metadata accessor for FeedHeadline);
    goto LABEL_42;
  }

  *(a3 + 24) = v43;
  *(a3 + 32) = sub_1D6C58618(&qword_1EDF34AD0, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
  v60 = __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D6C58660(v13, v60, type metadata accessor for FeedHeadline);
}

uint64_t sub_1D6C585BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C1F7A8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6C58618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6C58660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C586C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C58730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C587B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

unint64_t FormatPatternPositionRelative.rawValue.getter()
{
  v1 = 2003134838;
  v2 = 0x656E6961746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x6566615377656976;
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

uint64_t sub_1D6C5888C@<X0>(double *a1@<X8>)
{
  v3 = *v1;
  v5 = v1[1];
  v4 = v1[2];
  v6 = *(v1 + 24);
  type metadata accessor for FormatDecorationContext(0);
  sub_1D7259E9C();
  if (v3 <= 1)
  {
    if (v3)
    {
      if (!v6)
      {
        v8 = v8 + v5;
        v7 = v7 + v4;
      }

      *a1 = v8;
      a1[1] = v7;
    }

    else
    {
      if (v6)
      {
        v9 = sub_1D725ED0C();
        (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
LABEL_16:
        v14 = MEMORY[0x1E69D8360];
        goto LABEL_20;
      }

      *a1 = v5;
      a1[1] = v4;
    }

    v11 = *MEMORY[0x1E69D8340];
    v12 = sub_1D725ED0C();
    v13 = *(v12 - 8);
    (*(v13 + 104))(a1, v11, v12);
    (*(v13 + 56))(a1, 0, 1, v12);
    goto LABEL_16;
  }

  if (v3 != 2)
  {
    if (!v6)
    {
      v8 = v8 + v5;
      v7 = v7 + v4;
    }

    *a1 = v8;
    a1[1] = v7;
    goto LABEL_18;
  }

  if ((v6 & 1) == 0)
  {
    *a1 = v5;
    a1[1] = v4;
LABEL_18:
    v15 = *MEMORY[0x1E69D8340];
    v16 = sub_1D725ED0C();
    v17 = *(v16 - 8);
    (*(v17 + 104))(a1, v15, v16);
    (*(v17 + 56))(a1, 0, 1, v16);
    goto LABEL_19;
  }

  v10 = sub_1D725ED0C();
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
LABEL_19:
  v14 = MEMORY[0x1E69D8368];
LABEL_20:
  v18 = *v14;
  v19 = sub_1D725ED4C();
  v20 = *(*(v19 - 8) + 104);

  return v20(a1, v18, v19);
}

__n128 FormatPatternPosition.adjustment.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

NewsFeed::FormatPatternPositionRelative_optional __swiftcall FormatPatternPositionRelative.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D6C58BFC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6C58CD0(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6C58D90(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6C58E6C(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 2003134838;
  v4 = 0xED00007765695672;
  v5 = 0x656E6961746E6F63;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000015;
    v4 = 0x80000001D73BC860;
  }

  if (*v1)
  {
    v3 = 0x6566615377656976;
    v2 = 0xEC00000061657241;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

BOOL _s8NewsFeed21FormatPatternPositionV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v2 = 2003134838;
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = *(a1 + 24);
  v8 = a2[1];
  v7 = a2[2];
  v9 = *(a2 + 24);
  v10 = 0xE400000000000000;
  v11 = 0x656E6961746E6F63;
  v12 = 0xED00007765695672;
  v13 = 0x80000001D73BC860;
  if (v3 != 2)
  {
    v11 = 0xD000000000000015;
    v12 = 0x80000001D73BC860;
  }

  v14 = 0x6566615377656976;
  if (*a1)
  {
    v10 = 0xEC00000061657241;
  }

  else
  {
    v14 = 2003134838;
  }

  if (*a1 <= 1u)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  if (v3 <= 1)
  {
    v16 = v10;
  }

  else
  {
    v16 = v12;
  }

  v17 = 0xE400000000000000;
  v18 = 0x656E6961746E6F63;
  if (*a2 == 2)
  {
    v13 = 0xED00007765695672;
  }

  else
  {
    v18 = 0xD000000000000015;
  }

  if (*a2)
  {
    v2 = 0x6566615377656976;
    v17 = 0xEC00000061657241;
  }

  if (*a2 <= 1u)
  {
    v19 = v2;
  }

  else
  {
    v19 = v18;
  }

  if (*a2 <= 1u)
  {
    v20 = v17;
  }

  else
  {
    v20 = v13;
  }

  if (v15 == v19 && v16 == v20)
  {
  }

  else
  {
    v21 = sub_1D72646CC();

    result = 0;
    if ((v21 & 1) == 0)
    {
      return result;
    }
  }

  if ((v6 & 1) == 0)
  {
    return (v9 & 1) == 0 && v5 == v8 && v4 == v7;
  }

  return (v9 & 1) != 0;
}

unint64_t sub_1D6C5919C(uint64_t a1)
{
  result = sub_1D6C591C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C591C4()
{
  result = qword_1EC893FD0;
  if (!qword_1EC893FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FD0);
  }

  return result;
}

unint64_t sub_1D6C59258()
{
  result = qword_1EC893FD8;
  if (!qword_1EC893FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FD8);
  }

  return result;
}

unint64_t sub_1D6C592B0()
{
  result = qword_1EC893FE0;
  if (!qword_1EC893FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FE0);
  }

  return result;
}

unint64_t sub_1D6C59304(uint64_t a1)
{
  *(a1 + 8) = sub_1D6C59334();
  result = sub_1D6C59388();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C59334()
{
  result = qword_1EC893FE8;
  if (!qword_1EC893FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FE8);
  }

  return result;
}

unint64_t sub_1D6C59388()
{
  result = qword_1EDF0A450;
  if (!qword_1EDF0A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A450);
  }

  return result;
}

unint64_t sub_1D6C593DC(uint64_t a1)
{
  result = sub_1D6C59404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C59404()
{
  result = qword_1EC893FF0;
  if (!qword_1EC893FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FF0);
  }

  return result;
}

unint64_t sub_1D6C59498(uint64_t a1)
{
  result = sub_1D6C594C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C594C0()
{
  result = qword_1EC893FF8;
  if (!qword_1EC893FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FF8);
  }

  return result;
}

uint64_t sub_1D6C59554(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C595A8()
{
  result = qword_1EC894000;
  if (!qword_1EC894000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894000);
  }

  return result;
}

uint64_t sub_1D6C595FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[25])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

double static Commands.openInSafari.getter()
{
  if (qword_1EDF3AFD8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE12openInSafari8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B74A74(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v11, v12).n128_u64[0];
  v15 = v30 - v14;
  v16 = [a1 contentURL];
  if (!v16)
  {
    v23 = sub_1D72585BC();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
    v22 = v15;
    goto LABEL_5;
  }

  v17 = v16;
  sub_1D72584EC();

  v18 = sub_1D72585BC();
  v19 = *(*(v18 - 8) + 56);
  v19(v15, 0, 1, v18);
  sub_1D5E3E404(v15);
  v20 = [a1 routeURL];
  if (v20)
  {
    v21 = v20;
    sub_1D72584EC();

    v19(v10, 0, 1, v18);
    v22 = v10;
LABEL_5:
    sub_1D5E3E404(v22);
    return 0;
  }

  v19(v10, 1, 1, v18);
  sub_1D5E3E404(v10);
  if (qword_1EDF3AFD8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = objc_opt_self();

  v27 = [v26 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05BF0 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDF05BF8;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v30[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v29 = v28;
  swift_unknownObjectRetain();
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE12openInSafari8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5B74A74(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v12 = v25 - v11;
  v13 = [a1 contentURL];
  if (!v13)
  {
    v20 = sub_1D72585BC();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    v19 = v12;
    goto LABEL_5;
  }

  v14 = v13;
  sub_1D72584EC();

  v15 = sub_1D72585BC();
  v16 = *(*(v15 - 8) + 56);
  v16(v12, 0, 1, v15);
  sub_1D5E3E404(v12);
  v17 = [a1 routeURL];
  if (v17)
  {
    v18 = v17;
    sub_1D72584EC();

    v16(v7, 0, 1, v15);
    v19 = v7;
LABEL_5:
    sub_1D5E3E404(v19);
    return 0;
  }

  v16(v7, 1, 1, v15);
  sub_1D5E3E404(v7);
  if (qword_1EDF3AFD8 != -1)
  {
    swift_once();
  }

  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05BF0 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDF05BF8;
  sub_1D725DFDC();
  v25[1] = a1;
  sub_1D725D5DC();
  swift_allocObject();
  swift_unknownObjectRetain();
  return sub_1D725D5CC();
}

uint64_t FormatLayoutValue.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v54 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    if (v12)
    {
      v13 = sub_1D726433C();
      v14 = (v13 + 40);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v16 = v14 + 2;
        v17 = *v14;
        v14 += 2;
        if (v17 >= 4)
        {
          v18 = *(v16 - 3);

          sub_1D5E2D970();
          swift_allocError();
          *v19 = v18;
          *(v19 + 8) = v17;
          *(v19 + 16) = &unk_1F5118820;
          *(v19 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    sub_1D6C5B08C();
    v55 = 0uLL;
    sub_1D726431C();
    switch(v54)
    {
      case 1:
        type metadata accessor for FormatViewNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC883A08, type metadata accessor for FormatViewNodeLayoutAttributes, &protocol conformance descriptor for FormatViewNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v38 = v54;
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        *a2 = v39 | 4;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 2:
        type metadata accessor for FormatWebEmbedNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894050, type metadata accessor for FormatWebEmbedNodeLayoutAttributes, &protocol conformance descriptor for FormatWebEmbedNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v32 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v32;
        v27 = 0x1000000000000004;
        goto LABEL_33;
      case 3:
        type metadata accessor for FormatTextNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894048, type metadata accessor for FormatTextNodeLayoutAttributes, &protocol conformance descriptor for FormatTextNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v34 = v54;
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        *a2 = v35 | 0x2000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 4:
        type metadata accessor for FormatImageNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EDF1FA90, type metadata accessor for FormatImageNodeLayoutAttributes, &protocol conformance descriptor for FormatImageNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v28 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v28;
        v27 = 0x2000000000000004;
        goto LABEL_33;
      case 5:
        type metadata accessor for FormatSupplementaryNodeLayoutAttributes(0);
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC88D380, type metadata accessor for FormatSupplementaryNodeLayoutAttributes, &protocol conformance descriptor for FormatSupplementaryNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v43 = v54;
        v44 = swift_allocObject();
        *(v44 + 16) = v43;
        *a2 = v44 | 0x3000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 6:
        type metadata accessor for FormatButtonNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC885F28, type metadata accessor for FormatButtonNodeLayoutAttributes, &protocol conformance descriptor for FormatButtonNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v47 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v47;
        v27 = 0x3000000000000004;
        goto LABEL_33;
      case 7:
        type metadata accessor for FormatFrameNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894040, type metadata accessor for FormatFrameNodeLayoutAttributes, &protocol conformance descriptor for FormatFrameNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v36 = v54;
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        *a2 = v37 | 0x4000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 8:
        (*(v7 + 8))(v10, v6);
        *a2 = 0xA000000000000004;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 9:
        type metadata accessor for FormatStateViewNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC88B588, type metadata accessor for FormatStateViewNodeLayoutAttributes, &protocol conformance descriptor for FormatStateViewNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v31 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v31;
        v27 = 0x4000000000000004;
        goto LABEL_33;
      case 10:
        type metadata accessor for FormatCustomNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894038, type metadata accessor for FormatCustomNodeLayoutAttributes, &protocol conformance descriptor for FormatCustomNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v49 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v49;
        v27 = 0x5000000000000000;
        goto LABEL_33;
      case 11:
        type metadata accessor for FormatAdMetricsNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894030, type metadata accessor for FormatAdMetricsNodeLayoutAttributes, &protocol conformance descriptor for FormatAdMetricsNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v25 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        v27 = 0x5000000000000004;
        goto LABEL_33;
      case 12:
        type metadata accessor for FormatMicaNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894028, type metadata accessor for FormatMicaNodeLayoutAttributes, &protocol conformance descriptor for FormatMicaNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v29 = v54;
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        *a2 = v30 | 0x6000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 13:
        type metadata accessor for FormatLayeredMediaNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC893C90, type metadata accessor for FormatLayeredMediaNodeLayoutAttributes, &protocol conformance descriptor for FormatLayeredMediaNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v46 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v46;
        v27 = 0x6000000000000004;
        goto LABEL_33;
      case 14:
        type metadata accessor for FormatVideoNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894020, type metadata accessor for FormatVideoNodeLayoutAttributes, &protocol conformance descriptor for FormatVideoNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v23 = v54;
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *a2 = v24 | 0x7000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 15:
        type metadata accessor for FormatIssueCoverNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC881B28, type metadata accessor for FormatIssueCoverNodeLayoutAttributes, &protocol conformance descriptor for FormatIssueCoverNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v33 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v33;
        v27 = 0x7000000000000004;
        goto LABEL_33;
      case 16:
        v54 = xmmword_1D7279980;
        sub_1D6C5B0E0();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v51 = swift_allocObject();
        v52 = v58;
        *(v51 + 48) = v57;
        *(v51 + 64) = v52;
        *(v51 + 80) = v59;
        v53 = v56;
        *(v51 + 16) = v55;
        *(v51 + 32) = v53;
        *a2 = v51 | 0x1000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 17:
        type metadata accessor for FormatShareAttributionNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC8923D8, type metadata accessor for FormatShareAttributionNodeLayoutAttributes, &protocol conformance descriptor for FormatShareAttributionNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v40 = v54;
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        *a2 = v41 | 0x8000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 18:
        type metadata accessor for FormatVideoPlayerNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894018, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes, &protocol conformance descriptor for FormatVideoPlayerNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v48 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v48;
        v27 = 0x8000000000000004;
        goto LABEL_33;
      case 19:
        type metadata accessor for FormatProgressViewLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC8935C0, type metadata accessor for FormatProgressViewLayoutAttributes, &protocol conformance descriptor for FormatProgressViewLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v50 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v50;
        v27 = 0x9000000000000000;
        goto LABEL_33;
      case 20:
        type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC894010, type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes, &protocol conformance descriptor for FormatPuzzleEmbedNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v42 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v42;
        v27 = 0x9000000000000004;
        goto LABEL_33;
      case 21:
        type metadata accessor for FormatSponsoredBannerLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC891720, type metadata accessor for FormatSponsoredBannerLayoutAttributes, &protocol conformance descriptor for FormatSponsoredBannerLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v45 = v54;
        v26 = swift_allocObject();
        *(v26 + 16) = v45;
        v27 = 0xA000000000000000;
LABEL_33:
        *a2 = v26 | v27;
        break;
      default:
        type metadata accessor for FormatItemNodeLayoutAttributes();
        v55 = xmmword_1D7279980;
        sub_1D6C5D254(&qword_1EC890B28, type metadata accessor for FormatItemNodeLayoutAttributes, &protocol conformance descriptor for FormatItemNodeLayoutAttributes);
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v21 = v54;
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *a2 = v22;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D6C5B08C()
{
  result = qword_1EC894008;
  if (!qword_1EC894008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894008);
  }

  return result;
}

unint64_t sub_1D6C5B0E0()
{
  result = qword_1EC894058;
  if (!qword_1EC894058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894058);
  }

  return result;
}

void FormatLayoutValue.encode(to:)(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v35 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  switch((v10 >> 59) & 0x1E | (v10 >> 2) & 1)
  {
    case 1uLL:
      v25 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 1;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v25;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatViewNodeLayoutAttributes();
      v12 = &qword_1EC883A10;
      v13 = type metadata accessor for FormatViewNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatViewNodeLayoutAttributes;
      break;
    case 2uLL:
      v21 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v39 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v40 = v21;
      v41 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v42 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v38 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v43 = 16;
      v37 = 0uLL;
      sub_1D6C5C0C4(&v38, v35);
      sub_1D6C5C070();
      sub_1D726443C();
      if (!v2)
      {
        v35[2] = v40;
        v35[3] = v41;
        v36 = v42;
        v35[0] = v38;
        v35[1] = v39;
        v37 = xmmword_1D7279980;
        sub_1D6C5C174();
        sub_1D726443C();
      }

      (*(v6 + 8))(v9, v5);
      sub_1D6C5C120(&v38);
      return;
    case 3uLL:
      v23 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 2;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v23;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatWebEmbedNodeLayoutAttributes();
      v12 = &unk_1EC8940A8;
      v13 = type metadata accessor for FormatWebEmbedNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatWebEmbedNodeLayoutAttributes;
      break;
    case 4uLL:
      v18 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 3;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v18;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatTextNodeLayoutAttributes();
      v12 = &qword_1EC8940A0;
      v13 = type metadata accessor for FormatTextNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatTextNodeLayoutAttributes;
      break;
    case 5uLL:
      v28 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 4;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v28;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatImageNodeLayoutAttributes();
      v12 = &unk_1EDF1FA98;
      v13 = type metadata accessor for FormatImageNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatImageNodeLayoutAttributes;
      break;
    case 6uLL:
      v30 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 5;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v30;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatSupplementaryNodeLayoutAttributes(0);
      v12 = &qword_1EC88D388;
      v13 = type metadata accessor for FormatSupplementaryNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatSupplementaryNodeLayoutAttributes;
      break;
    case 7uLL:
      v24 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 6;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v24;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatButtonNodeLayoutAttributes();
      v12 = &qword_1EC885F30;
      v13 = type metadata accessor for FormatButtonNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatButtonNodeLayoutAttributes;
      break;
    case 8uLL:
      v33 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 7;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v33;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatFrameNodeLayoutAttributes();
      v12 = &unk_1EC894098;
      v13 = type metadata accessor for FormatFrameNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatFrameNodeLayoutAttributes;
      break;
    case 9uLL:
      v20 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 9;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v20;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatStateViewNodeLayoutAttributes();
      v12 = &qword_1EC88B590;
      v13 = type metadata accessor for FormatStateViewNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatStateViewNodeLayoutAttributes;
      break;
    case 0xAuLL:
      v32 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 10;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v32;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatCustomNodeLayoutAttributes();
      v12 = &unk_1EC894090;
      v13 = type metadata accessor for FormatCustomNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatCustomNodeLayoutAttributes;
      break;
    case 0xBuLL:
      v17 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 11;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v17;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatAdMetricsNodeLayoutAttributes();
      v12 = &unk_1EC894088;
      v13 = type metadata accessor for FormatAdMetricsNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatAdMetricsNodeLayoutAttributes;
      break;
    case 0xCuLL:
      v19 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 12;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v19;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatMicaNodeLayoutAttributes();
      v12 = &unk_1EC894080;
      v13 = type metadata accessor for FormatMicaNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatMicaNodeLayoutAttributes;
      break;
    case 0xDuLL:
      v29 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 13;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v29;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatLayeredMediaNodeLayoutAttributes();
      v12 = &qword_1EC893C98;
      v13 = type metadata accessor for FormatLayeredMediaNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatLayeredMediaNodeLayoutAttributes;
      break;
    case 0xEuLL:
      v16 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 14;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v16;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatVideoNodeLayoutAttributes();
      v12 = &unk_1EC894078;
      v13 = type metadata accessor for FormatVideoNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatVideoNodeLayoutAttributes;
      break;
    case 0xFuLL:
      v22 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 15;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v22;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatIssueCoverNodeLayoutAttributes();
      v12 = &qword_1EC881B30;
      v13 = type metadata accessor for FormatIssueCoverNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatIssueCoverNodeLayoutAttributes;
      break;
    case 0x10uLL:
      v15 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 17;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v15;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatShareAttributionNodeLayoutAttributes();
      v12 = &qword_1EC8923E0;
      v13 = type metadata accessor for FormatShareAttributionNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatShareAttributionNodeLayoutAttributes;
      break;
    case 0x11uLL:
      v26 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 18;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v26;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatVideoPlayerNodeLayoutAttributes();
      v12 = &unk_1EC894070;
      v13 = type metadata accessor for FormatVideoPlayerNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatVideoPlayerNodeLayoutAttributes;
      break;
    case 0x12uLL:
      v31 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 19;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v31;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatProgressViewLayoutAttributes();
      v12 = &qword_1EC8935C8;
      v13 = type metadata accessor for FormatProgressViewLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatProgressViewLayoutAttributes;
      break;
    case 0x13uLL:
      v34 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 20;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v34;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes();
      v12 = &unk_1EC894068;
      v13 = type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatPuzzleEmbedNodeLayoutAttributes;
      break;
    case 0x14uLL:
      v27 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v35[0]) = 21;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v27;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatSponsoredBannerLayoutAttributes();
      v12 = &qword_1EC891728;
      v13 = type metadata accessor for FormatSponsoredBannerLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatSponsoredBannerLayoutAttributes;
      break;
    case 0x15uLL:
      LOBYTE(v35[0]) = 8;
      sub_1D6C5C070();
      v38 = 0uLL;
      sub_1D726443C();
      (*(v6 + 8))(v9, v5);
      return;
    default:
      v11 = *(v10 + 16);
      LOBYTE(v35[0]) = 0;
      v38 = 0uLL;
      sub_1D6C5C070();

      sub_1D726443C();
      if (v2)
      {
        goto LABEL_47;
      }

      *&v35[0] = v11;
      v38 = xmmword_1D7279980;
      type metadata accessor for FormatItemNodeLayoutAttributes();
      v12 = &qword_1EC890B30;
      v13 = type metadata accessor for FormatItemNodeLayoutAttributes;
      v14 = &protocol conformance descriptor for FormatItemNodeLayoutAttributes;
      break;
  }

  sub_1D6C5D254(v12, v13, v14);
  sub_1D726443C();
LABEL_47:
  (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D6C5C070()
{
  result = qword_1EC894060;
  if (!qword_1EC894060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894060);
  }

  return result;
}

unint64_t sub_1D6C5C174()
{
  result = qword_1EC8940B0;
  if (!qword_1EC8940B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8940B0);
  }

  return result;
}

unint64_t sub_1D6C5C1C8(char a1)
{
  result = 1835365481;
  switch(a1)
  {
    case 1:
      result = 2003134838;
      break;
    case 2:
      result = 0x6465626D45626577;
      break;
    case 3:
      result = 1954047348;
      break;
    case 4:
      result = 0x6567616D69;
      break;
    case 5:
      result = 0x656D656C70707573;
      break;
    case 6:
      result = 0x6E6F74747562;
      break;
    case 7:
      result = 0x656D617266;
      break;
    case 8:
      result = 0x6E6564646968;
      break;
    case 9:
      result = 0x6569566574617473;
      break;
    case 10:
      result = 0x6D6F74737563;
      break;
    case 11:
      result = 0x63697274654D6461;
      break;
    case 12:
      result = 1633905005;
      break;
    case 13:
      result = 0x4D6465726579616CLL;
      break;
    case 14:
      result = 0x6F65646976;
      break;
    case 15:
      result = 0x766F436575737369;
      break;
    case 16:
      result = 0x70756F7267;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x616C506F65646976;
      break;
    case 19:
      result = 0x73736572676F7270;
      break;
    case 20:
      result = 0x6D45656C7A7A7570;
      break;
    case 21:
      result = 0x65726F736E6F7073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6C5C400(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6C5C1C8(*a1);
  v5 = v4;
  if (v3 == sub_1D6C5C1C8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6C5C488()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6C5C1C8(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6C5C4EC(uint64_t a1)
{
  sub_1D6C5C1C8(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6C5C540(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D6C5C1C8(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6C5C5A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6C5D6FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D6C5C5D0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6C5C1C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void FormatLayoutValue.flipRightToLeft(bounds:)(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = *v5;
  switch((*v5 >> 59) & 0x1E | (*v5 >> 2) & 1)
  {
    case 1uLL:
      v16 = swift_allocObject();
      type metadata accessor for FormatViewNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC883A38, type metadata accessor for FormatViewNodeLayoutAttributes, &protocol conformance descriptor for FormatViewNodeLayoutAttributes);
      sub_1D725A24C();
      v7 = v16 | 4;
      break;
    case 2uLL:
      v18 = swift_allocObject();
      FormatGroupNodeLayoutAttributes.flipRightToLeft(bounds:)(v18 + 16);
      v7 = v18 | 0x1000000000000000;
      break;
    case 3uLL:
      v13 = swift_allocObject();
      type metadata accessor for FormatWebEmbedNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940F8, type metadata accessor for FormatWebEmbedNodeLayoutAttributes, &protocol conformance descriptor for FormatWebEmbedNodeLayoutAttributes);
      sub_1D725A24C();
      v14 = 0x1000000000000004;
      goto LABEL_23;
    case 4uLL:
      v22 = swift_allocObject();
      type metadata accessor for FormatTextNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940F0, type metadata accessor for FormatTextNodeLayoutAttributes, &protocol conformance descriptor for FormatTextNodeLayoutAttributes);
      sub_1D725A24C();
      v7 = v22 | 0x2000000000000000;
      break;
    case 5uLL:
      v13 = swift_allocObject();
      type metadata accessor for FormatImageNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EDF1FAA0, type metadata accessor for FormatImageNodeLayoutAttributes, &protocol conformance descriptor for FormatImageNodeLayoutAttributes);
      sub_1D725A24C();
      v14 = 0x2000000000000004;
      goto LABEL_23;
    case 6uLL:
      v19 = swift_allocObject();

      v20 = FormatSupplementaryNodeLayoutAttributes.flipRightToLeft(bounds:)(a2, a3, a4, a5);

      *(v19 + 16) = v20;
      v7 = v19 | 0x3000000000000000;
      break;
    case 7uLL:
      v13 = swift_allocObject();

      v25 = FormatButtonNodeLayoutAttributes.flipRightToLeft(bounds:)(a2, a3, a4, a5);

      *(v13 + 16) = v25;
      v14 = 0x3000000000000004;
      goto LABEL_23;
    case 8uLL:
      v15 = swift_allocObject();
      type metadata accessor for FormatFrameNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940E8, type metadata accessor for FormatFrameNodeLayoutAttributes, &protocol conformance descriptor for FormatFrameNodeLayoutAttributes);
      sub_1D725A24C();
      v7 = v15 | 0x4000000000000000;
      break;
    case 9uLL:
      v13 = swift_allocObject();

      v24 = FormatStateViewNodeLayoutAttributes.flipRightToLeft(bounds:)(a2, a3, a4, a5);

      *(v13 + 16) = v24;
      v14 = 0x4000000000000004;
      goto LABEL_23;
    case 0xAuLL:
      v13 = swift_allocObject();
      type metadata accessor for FormatCustomNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940E0, type metadata accessor for FormatCustomNodeLayoutAttributes, &protocol conformance descriptor for FormatCustomNodeLayoutAttributes);
      sub_1D725A24C();
      v14 = 0x5000000000000000;
      goto LABEL_23;
    case 0xBuLL:
      v13 = swift_allocObject();
      type metadata accessor for FormatAdMetricsNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940D8, type metadata accessor for FormatAdMetricsNodeLayoutAttributes, &protocol conformance descriptor for FormatAdMetricsNodeLayoutAttributes);
      sub_1D725A24C();
      v14 = 0x5000000000000004;
      goto LABEL_23;
    case 0xCuLL:
      v23 = swift_allocObject();
      type metadata accessor for FormatMicaNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940D0, type metadata accessor for FormatMicaNodeLayoutAttributes, &protocol conformance descriptor for FormatMicaNodeLayoutAttributes);
      sub_1D725A24C();
      v7 = v23 | 0x6000000000000000;
      break;
    case 0xDuLL:
      v13 = swift_allocObject();
      type metadata accessor for FormatLayeredMediaNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC893CC0, type metadata accessor for FormatLayeredMediaNodeLayoutAttributes, &protocol conformance descriptor for FormatLayeredMediaNodeLayoutAttributes);
      sub_1D725A24C();
      v14 = 0x6000000000000004;
      goto LABEL_23;
    case 0xEuLL:
      v17 = swift_allocObject();
      type metadata accessor for FormatVideoNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940C8, type metadata accessor for FormatVideoNodeLayoutAttributes, &protocol conformance descriptor for FormatVideoNodeLayoutAttributes);
      sub_1D725A24C();
      v7 = v17 | 0x7000000000000000;
      break;
    case 0xFuLL:
      v13 = swift_allocObject();
      type metadata accessor for FormatIssueCoverNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC881B58, type metadata accessor for FormatIssueCoverNodeLayoutAttributes, &protocol conformance descriptor for FormatIssueCoverNodeLayoutAttributes);
      sub_1D725A24C();
      v14 = 0x7000000000000004;
      goto LABEL_23;
    case 0x10uLL:
      v21 = swift_allocObject();
      type metadata accessor for FormatShareAttributionNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC892408, type metadata accessor for FormatShareAttributionNodeLayoutAttributes, &protocol conformance descriptor for FormatShareAttributionNodeLayoutAttributes);
      sub_1D725A24C();
      v7 = v21 | 0x8000000000000000;
      break;
    case 0x11uLL:
      v13 = swift_allocObject();
      type metadata accessor for FormatVideoPlayerNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940C0, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes, &protocol conformance descriptor for FormatVideoPlayerNodeLayoutAttributes);
      sub_1D725A24C();
      v14 = 0x8000000000000004;
      goto LABEL_23;
    case 0x12uLL:
      v13 = swift_allocObject();
      type metadata accessor for FormatProgressViewLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8935F0, type metadata accessor for FormatProgressViewLayoutAttributes, &protocol conformance descriptor for FormatProgressViewLayoutAttributes);
      sub_1D725A24C();
      v14 = 0x9000000000000000;
      goto LABEL_23;
    case 0x13uLL:
      v13 = swift_allocObject();
      type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes();
      sub_1D6C5D254(&qword_1EC8940B8, type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes, &protocol conformance descriptor for FormatPuzzleEmbedNodeLayoutAttributes);
      sub_1D725A24C();
      v14 = 0x9000000000000004;
      goto LABEL_23;
    case 0x14uLL:
      v13 = swift_allocObject();
      type metadata accessor for FormatSponsoredBannerLayoutAttributes();
      sub_1D6C5D254(&qword_1EC891750, type metadata accessor for FormatSponsoredBannerLayoutAttributes, &protocol conformance descriptor for FormatSponsoredBannerLayoutAttributes);
      sub_1D725A24C();
      v14 = 0xA000000000000000;
LABEL_23:
      v7 = v13 | v14;
      break;
    case 0x15uLL:
      break;
    default:
      v7 = swift_allocObject();

      v12 = FormatItemNodeLayoutAttributes.flipRightToLeft(bounds:)(a2, a3, a4, a5);

      *(v7 + 16) = v12;
      break;
  }

  *a1 = v7;
}

uint64_t sub_1D6C5D254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FormatLayoutValue.identifier.getter()
{
  v1 = *v0;
  v2 = (*v0 >> 59) & 0x1E | (*v0 >> 2) & 1;
  v3 = 0x6E6564646968;
  switch(v2)
  {
    case 1uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
      v4 = v1 & 0xFFFFFFFFFFFFFFBLL;
      v5 = 16;
      goto LABEL_6;
    case 2uLL:
      v4 = v1 & 0xFFFFFFFFFFFFFFBLL;
      goto LABEL_5;
    case 6uLL:
    case 7uLL:
    case 9uLL:
      v1 &= 0xFFFFFFFFFFFFFFBuLL;
      goto LABEL_4;
    case 0x15uLL:
      return v3;
    default:
LABEL_4:
      v4 = *(v1 + 16);
LABEL_5:
      v5 = 48;
LABEL_6:
      v3 = *(*(v4 + 16) + v5);

      return v3;
  }
}

unint64_t sub_1D6C5D388()
{
  result = qword_1EDF2F4A0;
  if (!qword_1EDF2F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F4A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed17FormatLayoutValueO(void *a1)
{
  v1 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  if (v1 <= 0x14)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 21;
  }
}

uint64_t sub_1D6C5D404(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6B && *(a1 + 8))
  {
    return (*a1 + 107);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6C5D460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6A)
  {
    *result = a2 - 107;
    if (a3 >= 0x6B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D6C5D4B0(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x15)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 21)) | 0xA000000000000004;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatLayoutValue.CodingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatLayoutValue.CodingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D6C5D654()
{
  result = qword_1EC894100;
  if (!qword_1EC894100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894100);
  }

  return result;
}

unint64_t sub_1D6C5D6A8()
{
  result = qword_1EC894108;
  if (!qword_1EC894108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894108);
  }

  return result;
}

unint64_t sub_1D6C5D6FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72648CC();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6C5D750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FeedCursorTrackerSnapshot(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D6C5D840(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  v10 = type metadata accessor for DebugJournalSection(0, v8, v9, a4);
  v30[1] = sub_1D7261CFC();

  v11 = a4;
  sub_1D71BECD0(a1, v11, v31);
  sub_1D72627FC();
  sub_1D72627BC();
  v30[0] = 0;
  v31[0].n128_u64[0] = *(a1 + *(*a1 + 240));
  v20 = v30;
  v21 = a3;
  v22 = a2;
  v23 = v11;
  v24 = a1;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = sub_1D6C66334;
  v18[5] = &v19;
  sub_1D6C66364(0);
  v13 = v12;
  v14 = sub_1D6C66478();

  v16 = sub_1D5B874E4(sub_1D6C6634C, v18, v13, v10, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

  v31[0].n128_u64[0] = v16;
  swift_getWitnessTable();
  sub_1D72627AC();

  sub_1D71C0468(a1, v11, v31);

  v27 = v31[2];
  v28 = v31[3];
  v29 = v32;
  v25 = v31[0];
  v26 = v31[1];
  sub_1D72627BC();
  return v30[0];
}

uint64_t sub_1D6C5DA58(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  v10 = type metadata accessor for DebugJournalSection(0, v8, v9, a4);
  v30[1] = sub_1D7261CFC();

  v11 = a4;
  sub_1D71BED7C(a1, v11, v31);
  sub_1D72627FC();
  sub_1D72627BC();
  v30[0] = 0;
  v31[0].n128_u64[0] = *(a1 + qword_1EDFFC678);
  v20 = v30;
  v21 = a3;
  v22 = a2;
  v23 = v11;
  v24 = a1;
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = sub_1D6C666D8;
  v18[5] = &v19;
  sub_1D6C66364(0);
  v13 = v12;
  v14 = sub_1D6C66478();

  v16 = sub_1D5B874E4(sub_1D6C667A4, v18, v13, v10, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

  v31[0].n128_u64[0] = v16;
  swift_getWitnessTable();
  sub_1D72627AC();

  sub_1D71C0684(a1, v11, v31);

  v27 = v31[2];
  v28 = v31[3];
  v29 = v32;
  v25 = v31[0];
  v26 = v31[1];
  sub_1D72627BC();
  return v30[0];
}

void sub_1D6C5DC90()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = MEMORY[0x1E69E7D40];
  v36 = *MEMORY[0x1E69E7D40] & v3;
  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  v5 = [v1 navigationItem];
  v6 = sub_1D726203C();
  [v5 setTitle_];

  v7 = *(v1 + *((*v4 & *v1) + 0xC0));
  v8 = objc_opt_self();
  v9 = [v8 secondaryLabelColor];
  [v7 setTextColor_];

  v10 = [objc_opt_self() systemFontOfSize_];
  [v7 setFont_];

  v11 = sub_1D726203C();
  v12 = objc_opt_self();
  v13 = [v12 systemImageNamed_];

  if (v13)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v13 style:2 target:sub_1D72646AC() action:sel_doDismiss];

    swift_unknownObjectRelease();
    v15 = [v8 systemGrayColor];
    [v14 setTintColor_];

    v16 = [v1 navigationItem];
    sub_1D6C66634(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D72816C0;
    *(v17 + 32) = v14;
    sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
    v35 = v14;
    v18 = sub_1D726265C();

    [v16 setRightBarButtonItems_];

    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D72849C0;
    v20 = sub_1D726203C();
    v21 = [v12 systemImageNamed_];

    v22 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v21 style:0 target:sub_1D72646AC() action:sel_doSettingsWithSender_];
    swift_unknownObjectRelease();
    *(v19 + 32) = v22;
    *(v19 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    *(v19 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
    *(v19 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    v23 = sub_1D726203C();
    v24 = [v12 systemImageNamed_];

    v25 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v24 style:0 target:sub_1D72646AC() action:sel_doScrollToUserEnteredSection];
    swift_unknownObjectRelease();
    *(v19 + 64) = v25;
    v26 = sub_1D726203C();
    v27 = [v12 systemImageNamed_];

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = *(v36 + 80);
    v29[3] = *(v36 + 88);
    v29[4] = v28;
    v30 = objc_allocWithZone(sub_1D725E86C());
    *(v19 + 72) = sub_1D725E85C();
    v31 = sub_1D726265C();

    [v1 setToolbarItems_];

    v32 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80));
    [v32 setDelegate_];
    [v32 setDataSource_];
    [v32 setAlwaysBounceVertical_];
    type metadata accessor for DebugJournalTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for DebugJournalHeaderView();
    sub_1D7262D9C();
    v33 = [v1 view];
    if (v33)
    {
      v34 = v33;
      [v33 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D6C5E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B5A498(0, &qword_1EC885090, 0x1E69DCC60);
  sub_1D6C66634(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D72816D0;
  sub_1D5B5A498(0, &qword_1EDF04350, 0x1E69DC628);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;

  *(v6 + 32) = sub_1D726375C();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;

  *(v6 + 40) = sub_1D726375C();
  return sub_1D72633FC();
}

id sub_1D6C5E524()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for DebugJournalSection(255, *((v4 & v2) + 0x50), *((v4 & v2) + 0x58), v5);
  sub_1D72627FC();

  swift_getWitnessTable();
  v6 = sub_1D7263E7C();
  v7 = *((*v3 & *v1) + 0x70);
  swift_beginAccess();
  *(v1 + v7) = v6;

  return [*(v1 + *((*v3 & *v1) + 0x80)) reloadData];
}

void sub_1D6C5E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    sub_1D6D9968C(v5);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_1D6C5E524();
  }
}

void sub_1D6C5E764(void *a1)
{
  v1 = a1;
  sub_1D6C5DC90();
}

void sub_1D6C5E7AC(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setToolbarHidden:0 animated:0];
  }
}

void sub_1D6C5E82C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D6C5E7AC(a3);
}

id sub_1D6C5E880()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  result = [v0 view];
  if (result)
  {
    v4 = result;
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v2 setFrame_];
    return [*(v0 + *((*v1 & *v0) + 0xC0)) sizeToFit];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D6C5E990(void *a1)
{
  v1 = a1;
  sub_1D6C5E880();
}

uint64_t sub_1D6C5E9D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1D6C65880();

  return v6;
}

uint64_t sub_1D6C5EA24(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1D6C6593C(a4);

  return v8;
}

char *sub_1D6C5EA78(char *a1, uint64_t a2, __n128 a3)
{
  v250 = a1;
  v4 = *v3;
  v5 = *MEMORY[0x1E69E7D40];
  sub_1D7258DAC();
  swift_beginAccess();
  v6 = *((v5 & v4) + 0x50);
  v245 = v3;
  v7 = *((v5 & v4) + 0x58);
  v249 = type metadata accessor for DebugJournalSection(0, v6, v7, v8);
  sub_1D726282C();
  v284 = v281[2];
  v285 = v281[3];
  v286 = v282;
  v283[0] = v281[0];
  v283[1] = v281[1];
  swift_endAccess();
  sub_1D7258D9C();
  v246 = v7;
  v247 = v6;
  v251 = type metadata accessor for DebugJournalItem(0, v6, v7, v9);
  sub_1D726282C();
  type metadata accessor for DebugJournalTableViewCell();
  v10 = sub_1D7262D8C();
  v11 = [v10 textLabel];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() systemFontOfSize_];
    [v12 setFont_];
  }

  v14 = [v10 textLabel];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() labelColor];
    [v15 setTextColor_];
  }

  v17 = [v10 detailTextLabel];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() secondaryLabelColor];
    [v18 setTextColor_];
  }

  v20 = [v10 detailTextLabel];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() systemFontOfSize_];
    [v21 setFont_];
  }

  v23 = [v10 detailTextLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setNumberOfLines_];
  }

  [v10 setSelectionStyle_];
  [v10 setAccessoryType_];
  v25 = OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_stripView;
  v26 = *(&v284 + 1);
  [*&v10[OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_stripView] setBackgroundColor_];
  v27 = OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_activityIndicatorView;
  [*&v10[OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_activityIndicatorView] setHidden_];
  [v10 setIndentationLevel_];
  [v10 setIndentationWidth_];
  v248 = *(v251 - 8);
  (*(v248 + 16))(&v276, v281);
  if (v280 > 3u)
  {
    if (v280 > 5u)
    {
      if (v280 != 6)
      {
        v84 = [v10 textLabel];
        if (v84)
        {
          v85 = v84;
          [v84 setText_];
        }

        v86 = [v10 detailTextLabel];
        if (v86)
        {
          v87 = v86;
          [v86 setText_];
        }

        [v10 setAccessoryType_];
        [*&v10[v27] setHidden_];
        [*&v10[v27] startAnimating];
        (*(*(v249 - 8) + 8))(v283);
        (*(v248 + 8))(v281, v251);

        return v10;
      }

      v51 = v276;
      v52 = [v10 textLabel];
      if (v52)
      {
        v54 = v52;
        *&v265 = 0;
        *(&v265 + 1) = 0xE000000000000000;
        v55 = *(v51 + qword_1EDFFC640);
        if (v55 <= 2)
        {
          if (*(v51 + qword_1EDFFC640))
          {
            if (v55 == 1)
            {
              v57 = 0xE400000000000000;
              v56 = 1852138835;
            }

            else
            {
              v57 = 0xE600000000000000;
              v56 = 0x6E657A6F7246;
            }
          }

          else
          {
            v56 = 0x657669746341;
            v57 = 0xE600000000000000;
          }
        }

        else if (*(v51 + qword_1EDFFC640) > 4u)
        {
          v57 = 0xE800000000000000;
          if (v55 == 5)
          {
            v132 = 0x6C6F6F706552;
          }

          else
          {
            v132 = 0x646E61707845;
          }

          v56 = v132 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
        }

        else if (v55 == 3)
        {
          v56 = 0x4620666F20646E45;
          v57 = 0xEB00000000646565;
        }

        else
        {
          v57 = 0xE600000000000000;
          v56 = 0x646568636143;
        }

        MEMORY[0x1DA6F9910](v56, v57);

        MEMORY[0x1DA6F9910](0x7265666544202D20, 0xEB00000000646572);
        v174 = sub_1D726203C();

        [v54 setText_];
      }

      *&v265 = *(v51 + qword_1EDFFC660);
      MEMORY[0x1EEE9AC00](v52, v53);
      v236 = v245;
      type metadata accessor for FeedDeferredCursorGroup(255, v247, v246, v175);
      sub_1D72627FC();

      swift_getWitnessTable();
      sub_1D7263E7C();
      v176 = [v10 detailTextLabel];
      if (v176)
      {
        v250 = v176;
        *&v265 = 0;
        *(&v265 + 1) = 0xE000000000000000;
        sub_1D7263D4C();
        if (qword_1EDF145A8 != -1)
        {
          swift_once();
        }

        v177 = qword_1EDF145B0;
        v178 = sub_1D725881C();
        v179 = [v177 stringFromDate_];

        v180 = sub_1D726207C();
        v182 = v181;

        *&v265 = v180;
        *(&v265 + 1) = v182;
        MEMORY[0x1DA6F9910](10, 0xE100000000000000);
        sub_1D726279C();
        v183 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v183);

        MEMORY[0x1DA6F9910](0x207370756F724720, 0xEA0000000000202FLL);
        sub_1D726279C();

        v184 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v184);

        MEMORY[0x1DA6F9910](0xA6E65655320, 0xE600000000000000);
        type metadata accessor for FeedDatabaseGroup(0, v247, v246, v185);
        *&v258[0] = sub_1D726279C();
        v186 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v186);

        MEMORY[0x1DA6F9910](0x696E69616D655220, 0xEB000000000A676ELL);
        v187 = *(v51 + 16);
        v188 = *(v51 + 24);

        MEMORY[0x1DA6F9910](v187, v188);

        v172 = sub_1D726203C();

        v173 = v250;
        [v250 setText_];
        goto LABEL_105;
      }
    }

    else
    {
      if (v280 != 4)
      {
        v68 = *(v248 + 8);
        v68(&v276, v251);
        v69 = [v10 textLabel];
        if (v69)
        {
          v70 = v69;
          v71 = sub_1D726203C();
          [v70 setText_];
        }

        v72 = [v10 detailTextLabel];
        if (v72)
        {
          v73 = v72;
          v74 = sub_1D726203C();
          [v73 setText_];
        }

        v75 = [v10 textLabel];
        if (v75)
        {
          v76 = v75;
          v77 = [objc_opt_self() systemBlueColor];
          [v76 &selRef_contentURL];
        }

        v78 = [v10 textLabel];
        if (v78)
        {
          v79 = v78;
          v80 = [objc_opt_self() systemFontOfSize_];
          [v79 setFont_];
        }

        [v10 setSelectionStyle_];
        [v10 setAccessoryType_];

        (*(*(v249 - 8) + 8))(v283);
        v68(v281, v251);
        return v10;
      }

      v31 = v276;
      v32 = [v10 textLabel];
      if (v32)
      {
        v34 = v32;
        v154 = sub_1D726203C();

        [v34 setText_];
      }

      v250 = qword_1EDFFCF40;
      *&v265 = *(v31 + qword_1EDFFCF40);
      MEMORY[0x1EEE9AC00](v32, v33);
      v236 = v245;
      type metadata accessor for FeedCursorGroup(255, v247, v246, v155);
      sub_1D72627FC();

      swift_getWitnessTable();
      sub_1D7263E7C();
      v156 = [v10 detailTextLabel];
      if (v156)
      {
        *&v244 = 0;
        v245 = v156;
        *&v265 = 0;
        *(&v265 + 1) = 0xE000000000000000;
        sub_1D7263D4C();
        if (qword_1EDF145A8 != -1)
        {
          swift_once();
        }

        v157 = qword_1EDF145B0;
        v158 = sub_1D725881C();
        v159 = [v157 stringFromDate_];

        v160 = sub_1D726207C();
        v162 = v161;

        MEMORY[0x1DA6F9910](v160, v162);

        MEMORY[0x1DA6F9910](10, 0xE100000000000000);
        sub_1D726279C();
        v163 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v163);

        MEMORY[0x1DA6F9910](0x207370756F724720, 0xEA0000000000202FLL);
        sub_1D726279C();

        v164 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v164);

        MEMORY[0x1DA6F9910](0xA6E65655320, 0xE600000000000000);
        type metadata accessor for FeedGroupEmitter(255, v247, v246, v165);
        sub_1D72627FC();
        nullsub_1();
        sub_1D7261DCC();

        swift_getWitnessTable();
        sub_1D726247C();
        sub_1D726279C();

        v166 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v166);

        MEMORY[0x1DA6F9910](0x646574746F6C5320, 0xEB00000000202F20);
        sub_1D726279C();
        v167 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v167);

        MEMORY[0x1DA6F9910](0x202F206E65704F20, 0xE800000000000000);
        type metadata accessor for FeedDatabaseGroup(0, v247, v246, v168);
        *&v258[0] = sub_1D726279C();
        v169 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v169);

        MEMORY[0x1DA6F9910](0x7361626174614420, 0xEA00000000000A65);
        v170 = *(v31 + 16);
        v171 = *(v31 + 24);

        MEMORY[0x1DA6F9910](v170, v171);

        v172 = sub_1D726203C();

        v173 = v245;
        [v245 setText_];
LABEL_105:

LABEL_107:
        [v10 setAccessoryType_];

        goto LABEL_108;
      }
    }

    goto LABEL_107;
  }

  if (v280 > 1u)
  {
    if (v280 != 2)
    {
      sub_1D5B63F14(v277, &v265);
      v81 = [v10 textLabel];
      if (v81)
      {
        v82 = v81;
        v83 = sub_1D726203C();

        [v82 setText_];
      }

      else
      {
      }

      v129 = [v10 detailTextLabel];
      if (v129)
      {
        v130 = v129;
        __swift_project_boxed_opaque_existential_1(&v265, *(&v266 + 1));
        sub_1D72644BC();
        v131 = sub_1D726203C();

        [v130 setText_];

        (*(*(v249 - 8) + 8))(v283);
      }

      else
      {
        (*(*(v249 - 8) + 8))(v283);
      }

      (*(v248 + 8))(v281, v251);
      __swift_destroy_boxed_opaque_existential_1(&v265);
      return v10;
    }

    v35 = v276;
    v36 = [v10 textLabel];
    if (v36)
    {
      v37 = v36;
      v38 = sub_1D726203C();
      [v37 setText_];
    }

    v39 = [v10 detailTextLabel];
    if (v39)
    {
      v41 = v39;
      v42 = v10;
      *&v265 = v35;
      MEMORY[0x1EEE9AC00](v39, v40);
      v236 = v247;
      v237 = v246;
      type metadata accessor for FeedGroupEmitter(255, v247, v246, v43);
      v44 = sub_1D72627FC();
      WitnessTable = swift_getWitnessTable();
      v47 = MEMORY[0x1E69E6158];
      v48 = MEMORY[0x1E69E73E0];
      v49 = MEMORY[0x1E69E7410];
      v50 = sub_1D6C6678C;
LABEL_35:
      v66 = sub_1D5B874E4(v50, &v235, v44, v47, v48, WitnessTable, v49, v46);

      v10 = v42;
      *&v265 = v66;
      sub_1D6C66634(0, &qword_1EDF43BA0, v47, MEMORY[0x1E69E62F8]);
      sub_1D6C66420(&qword_1EDF3C840, &qword_1EDF43BA0, v47, MEMORY[0x1E69E6310]);
      sub_1D7261F3C();

      v67 = sub_1D726203C();

      [v41 setText_];

LABEL_108:
      (*(*(v249 - 8) + 8))(v283);
      goto LABEL_109;
    }

LABEL_52:

    (*(*(v249 - 8) + 8))(v283);

LABEL_109:
    (*(v248 + 8))(v281, v251);
    return v10;
  }

  if (v280)
  {
    v58 = v276;
    v59 = [v10 textLabel];
    if (v59)
    {
      v60 = v59;
      *&v265 = 0x2820746F6C53;
      *(&v265 + 1) = 0xE600000000000000;
      *&v258[0] = v58;
      v61 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v61);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      v62 = sub_1D726203C();

      [v60 setText_];
    }

    v63 = [v10 detailTextLabel];
    if (v63)
    {
      v41 = v63;
      v42 = v10;
      *&v265 = *(&v58 + 1);
      MEMORY[0x1EEE9AC00](v63, v64);
      v236 = v247;
      v237 = v246;
      type metadata accessor for FeedGroupEmitter(255, v247, v246, v65);
      v44 = sub_1D72627FC();
      WitnessTable = swift_getWitnessTable();
      v47 = MEMORY[0x1E69E6158];
      v48 = MEMORY[0x1E69E73E0];
      v49 = MEMORY[0x1E69E7410];
      v50 = sub_1D6C66614;
      goto LABEL_35;
    }

    goto LABEL_52;
  }

  v28 = v279;
  v273[4] = v277[11];
  v273[5] = v277[12];
  v274 = v277[13];
  v275 = v278;
  v273[0] = v277[7];
  v273[1] = v277[8];
  v273[2] = v277[9];
  v273[3] = v277[10];
  v269 = v277[3];
  v270 = v277[4];
  v271 = v277[5];
  v272 = v277[6];
  v265 = v276;
  v266 = v277[0];
  v267 = v277[1];
  v268 = v277[2];
  [v10 setIndentationLevel_];
  v29 = *&v10[v25];
  if (v28 == 1)
  {
    v30 = [v26 colorWithAlphaComponent_];
  }

  else
  {
    v30 = v26;
  }

  v88 = v30;
  [v29 setBackgroundColor_];

  sub_1D5C034F0(v273, v258);
  if (v261 >= 3u)
  {
    if (v261 - 4 >= 3)
    {
      v137 = v259;
      v136 = v260;
      sub_1D5B63F14(v258, v255);
      v138 = [v10 textLabel];
      if (v138)
      {
        v139 = v138;
        v141 = v256;
        v140 = v257;
        __swift_project_boxed_opaque_existential_1(v255, v256);
        (*(*(*(v140 + 8) + 8) + 16))(v141);
        v142 = sub_1D726203C();

        [v139 setText_];
      }

      v143 = [v10 textLabel];
      if (v143)
      {
        v144 = v143;
        v145 = [objc_opt_self() systemGray2Color];
        [v144 setTextColor_];
      }

      v146 = [v10 detailTextLabel];
      if (v146)
      {
        v147 = v146;
        v253 = 0;
        v254 = 0xE000000000000000;
        FeedJournalGroupResult.kind.getter(&v252);
        v148 = sub_1D609D0C4(v252);
        MEMORY[0x1DA6F9910](10, 0xE100000000000000, v148);
        MEMORY[0x1DA6F9910](v137, v136);

        MEMORY[0x1DA6F9910](10, 0xE100000000000000);
        sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740]);
        v149 = swift_allocObject();
        *(v149 + 16) = xmmword_1D7273AE0;
        v150 = v274;
        v151 = MEMORY[0x1E69E6438];
        *(v149 + 56) = MEMORY[0x1E69E63B0];
        *(v149 + 64) = v151;
        *(v149 + 32) = v150;
        v152 = sub_1D72620BC();
        MEMORY[0x1DA6F9910](v152);

        v153 = sub_1D726203C();

        [v147 setText_];
      }

      else
      {
      }

      v189 = [v10 detailTextLabel];
      if (v189)
      {
        v190 = v189;
        v191 = [objc_opt_self() systemGray2Color];
        [v190 setTextColor_];
      }

      [v10 setSelectionStyle_];
      [v10 setAccessoryType_];

      (*(*(v249 - 8) + 8))(v283, v249);
      (*(v248 + 8))(v281, v251);
      sub_1D60E9D6C(&v265);
      __swift_destroy_boxed_opaque_existential_1(v255);
    }

    else
    {
      v89 = v258[0];
      v90 = [v10 textLabel];
      if (v90)
      {
        v91 = v90;
        (*(&v274 + 1))();
        v92 = sub_1D726203C();

        [v91 setText_];
      }

      v93 = [v10 textLabel];
      if (v93)
      {
        v94 = v93;
        v95 = [objc_opt_self() systemGray2Color];
        [v94 setTextColor_];
      }

      v96 = [v10 detailTextLabel];
      if (v96)
      {
        v97 = v96;
        *&v258[0] = 0;
        *(&v258[0] + 1) = 0xE000000000000000;
        FeedJournalGroupResult.kind.getter(v255);
        v98 = sub_1D609D0C4(v255[0]);
        MEMORY[0x1DA6F9910](10, 0xE100000000000000, v98);
        MEMORY[0x1DA6F9910](v89, *(&v89 + 1));

        MEMORY[0x1DA6F9910](10, 0xE100000000000000);
        sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740]);
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_1D7273AE0;
        v100 = v274;
        v101 = MEMORY[0x1E69E6438];
        *(v99 + 56) = MEMORY[0x1E69E63B0];
        *(v99 + 64) = v101;
        *(v99 + 32) = v100;
        v102 = sub_1D72620BC();
        MEMORY[0x1DA6F9910](v102);

        v103 = sub_1D726203C();

        [v97 setText_];
      }

      else
      {
      }

      v133 = [v10 detailTextLabel];
      if (v133)
      {
        v134 = v133;
        v135 = [objc_opt_self() systemGray2Color];
        [v134 setTextColor_];
      }

      [v10 setSelectionStyle_];
      [v10 setAccessoryType_];

      (*(*(v249 - 8) + 8))(v283, v249);
      (*(v248 + 8))(v281, v251);
      sub_1D60E9D6C(&v265);
    }

    return v10;
  }

  v242 = v10;
  sub_1D5B63F14(v258, v262);
  v105 = v263;
  v104 = v264;
  __swift_project_boxed_opaque_existential_1(v262, v263);
  (*(*(*(v104 + 8) + 8) + 16))(v105);
  sub_1D6C661C8(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  v241 = v106;
  v107 = swift_allocObject();
  v244 = xmmword_1D7273AE0;
  *(v107 + 16) = xmmword_1D7273AE0;
  v108 = *MEMORY[0x1E69DB650];
  *(v107 + 32) = *MEMORY[0x1E69DB650];
  v246 = objc_opt_self();
  v245 = v108;
  v109 = [v246 labelColor];
  v239 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(v107 + 64) = v239;
  *(v107 + 40) = v109;
  sub_1D5C09CEC(v107);
  swift_setDeallocating();
  sub_1D69D7BC4(v107 + 32);
  swift_deallocClassInstance();
  v110 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v111 = sub_1D726203C();

  type metadata accessor for Key(0);
  v113 = v112;
  v114 = sub_1D5C09E68();
  v115 = sub_1D7261D2C();

  v247 = [v110 initWithString:v111 attributes:v115];

  sub_1D70B38C8();
  v117 = v116;
  v240 = v113;
  v243 = v114;
  if (!(v116 >> 62))
  {
    v118 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v118)
    {
      goto LABEL_64;
    }

LABEL_116:

    v10 = v242;
    v192 = [v242 textLabel];
    if (v192)
    {
      v193 = v192;
      [v192 setAttributedText_];
    }

    *&v258[0] = 0;
    *(&v258[0] + 1) = 0xE000000000000000;
    sub_1D7263D4C();
    v195 = v263;
    v194 = v264;
    __swift_project_boxed_opaque_existential_1(v262, v263);
    v196 = (*(*(*(v194 + 8) + 8) + 24))(v195);
    if (v197)
    {
      v198 = v197;
    }

    else
    {
      v196 = 2960685;
      v198 = 0xE300000000000000;
    }

    MEMORY[0x1DA6F9910](v196, v198);

    MEMORY[0x1DA6F9910](0x203A65726F63730ALL, 0xE800000000000000);
    v199 = v246;
    if (qword_1EC87DD88 != -1)
    {
      swift_once();
    }

    v200 = qword_1EC9BAF48;
    v201 = sub_1D725A62C();
    v202 = [v200 stringForObjectValue_];

    if (v202)
    {
      v203 = sub_1D726207C();
      v205 = v204;

      v206 = v203;
    }

    else
    {
      v206 = sub_1D7262A9C();
      v205 = v207;
    }

    MEMORY[0x1DA6F9910](v206, v205);

    MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73EEA70);
    v209 = v263;
    v208 = v264;
    __swift_project_boxed_opaque_existential_1(v262, v263);
    (*(*(v208 + 8) + 64))(v209);
    v210 = sub_1D725A62C();
    v211 = [v200 stringForObjectValue_];

    if (v211)
    {
      v212 = sub_1D726207C();
      v214 = v213;

      v215 = v212;
    }

    else
    {
      v215 = sub_1D7262A9C();
      v214 = v216;
    }

    MEMORY[0x1DA6F9910](v215, v214);

    v217 = swift_allocObject();
    *(v217 + 16) = v244;
    v218 = v245;
    *(v217 + 32) = v245;
    v238 = v218;
    v219 = [v199 secondaryLabelColor];
    v220 = v239;
    *(v217 + 64) = v239;
    *(v217 + 40) = v219;
    sub_1D5C09CEC(v217);
    swift_setDeallocating();
    sub_1D69D7BC4(v217 + 32);
    swift_deallocClassInstance();
    v221 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v222 = sub_1D726203C();

    v223 = sub_1D7261D2C();

    v245 = [v221 initWithString:v222 attributes:v223];

    sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740]);
    v224 = swift_allocObject();
    *(v224 + 16) = v244;
    v225 = v274;
    v226 = MEMORY[0x1E69E6438];
    *(v224 + 56) = MEMORY[0x1E69E63B0];
    *(v224 + 64) = v226;
    *(v224 + 32) = v225;
    sub_1D72620BC();
    v227 = swift_allocObject();
    *(v227 + 16) = v244;
    *(v227 + 32) = v238;
    v228 = [v250 tintColor];
    *(v227 + 64) = v220;
    if (!v228)
    {
      v228 = [v246 systemBlueColor];
    }

    *(v227 + 40) = v228;
    sub_1D5C09CEC(v227);
    swift_setDeallocating();
    sub_1D69D7BC4(v227 + 32);
    swift_deallocClassInstance();
    v229 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v230 = sub_1D726203C();

    v231 = sub_1D7261D2C();

    v232 = [v229 initWithString:v230 attributes:v231];

    [v245 appendAttributedString_];
    v233 = [v10 detailTextLabel];
    if (v233)
    {
      v234 = v233;
      [v233 setAttributedText_];
    }

    [v10 setSelectionStyle_];
    [v10 setAccessoryType_];

    (*(*(v249 - 8) + 8))(v283);
    (*(v248 + 8))(v281, v251);
    sub_1D60E9D6C(&v265);
    __swift_destroy_boxed_opaque_existential_1(v262);
    return v10;
  }

  v118 = sub_1D7263BFC();
  if (!v118)
  {
    goto LABEL_116;
  }

LABEL_64:
  v119 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v120 = sub_1D726203C();
  v121 = [v119 initWithString_];

  [v247 insertAttributedString:v121 atIndex:0];
  sub_1D5B5A498(0, &qword_1EDF1A7E0, 0x1E696AD40);
  result = swift_getObjCClassFromMetadata();
  if (v118 >= 1)
  {
    v123 = result;
    v124 = 0;
    do
    {
      if ((v117 & 0xC000000000000001) != 0)
      {
        v125 = MEMORY[0x1DA6FB460](v124, v117);
      }

      else
      {
        v125 = *(v117 + 8 * v124 + 32);
      }

      v126 = v125;
      ++v124;
      v127 = [v123 attributedStringWithAttachment_];
      v128 = [v246 systemGrayColor];
      [v127 addAttribute:v245 value:v128 range:{0, 1}];

      [v247 insertAttributedString:v127 atIndex:0];
    }

    while (v118 != v124);
    goto LABEL_116;
  }

  __break(1u);
  return result;
}

void sub_1D6C6119C(void *a1@<X8>)
{
  v2 = sub_1D6B6AE5C();
  MEMORY[0x1DA6F9910](v2);

  *a1 = 547520738;
  a1[1] = 0xA400000000000000;
}

uint64_t sub_1D6C61208(uint64_t a1, void *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t (*a4)(uint64_t))
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x58);
  v7 = a3(0, v5, v6);
  v8 = a4(v7);
  v10 = v9;
  type metadata accessor for FeedCursorTrackerSnapshot(0, v5, v6, v11);
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  LOBYTE(v8) = FeedCursorTrackerSnapshot.contains(identifier:)(v12);

  return v8 & 1;
}

char *sub_1D6C612F8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v11 = a3;
  v12 = a1;
  v14 = sub_1D6C5EA78(v11, v10, v13);

  (*(v7 + 8))(v10, v6);

  return v14;
}

char *sub_1D6C6140C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v7 = *((v6 & v4) + 0x50);
  v42 = *((v6 & v4) + 0x58);
  v9 = type metadata accessor for DebugJournalSection(0, v7, v42, v8);
  sub_1D726282C();
  v47 = v43[2];
  v48 = v43[3];
  v49 = v44;
  v45 = v43[0];
  v46 = v43[1];
  swift_endAccess();
  type metadata accessor for DebugJournalHeaderView();
  v10 = sub_1D7262D7C();
  v11 = [v10 textLabel];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D726203C();
    [v12 setText_];
  }

  v14 = sub_1D7262BDC();
  v16 = (v3 + *((*v5 & *v3) + 0x88));
  if (v14 == *v16 && v15 == v16[1])
  {
  }

  else
  {
    v18 = sub_1D72646CC();

    v19 = v10;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v20 = [v10 textLabel];

  if (v20)
  {
    *&v43[0] = 545626338;
    *(&v43[0] + 1) = 0xA400000000000000;
    MEMORY[0x1DA6F9910](v46, *(&v46 + 1));
    v19 = sub_1D726203C();

    [v20 setText_];

LABEL_12:
  }

  v21 = *(v3 + *((*v5 & *v3) + 0xB8));
  v22 = v49;
  v23 = v7;
  v24 = sub_1D6A69FC0(v49);
  v26 = v25;
  swift_beginAccess();
  v27 = *(v21 + 16);
  if (*(v27 + 16) && (v28 = sub_1D5B69D90(v24, v26), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + v28);
    swift_endAccess();

    v31 = *&v10[OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel];
  }

  else
  {
    swift_endAccess();

    v31 = *&v10[OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel];
    v30 = 1;
  }

  v32 = sub_1D726203C();

  [v31 setText_];

  v33 = OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel;
  v34 = sub_1D725D03C();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v37 = v45;
  *(v36 + 56) = v46;
  v38 = v48;
  *(v36 + 72) = v47;
  *(v36 + 88) = v38;
  *(v36 + 16) = v23;
  *(v36 + 24) = v42;
  *(v36 + 32) = v35;
  *(v36 + 104) = v49;
  *(v36 + 40) = v37;
  *(v36 + 112) = v30;
  v39 = *(v9 - 8);
  (*(v39 + 16))(v43, &v45, v9);

  v40 = *&v10[v33];
  [v40 setHidden_];
  (*(v39 + 8))(&v45, v9);

  return v10;
}

void sub_1D6C618A8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xB8));
    v7 = Strong;

    v8 = sub_1D6A69FC0(*(a2 + 64));
    v10 = v9;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v6 + 16);
    *(v6 + 16) = 0x8000000000000000;
    sub_1D6D7BE4C((a3 & 1) == 0, v8, v10, isUniquelyReferenced_nonNull_native);

    *(v6 + 16) = v14;
    swift_endAccess();
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    sub_1D6C5E524();
  }
}

char *sub_1D6C619FC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1D6C6140C(v6, a4);

  return v8;
}

void sub_1D6C61A70(void *a1, __n128 a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  sub_1D7258DAC();
  swift_beginAccess();
  v7 = *((v6 & v4) + 0x50);
  v8 = *((v6 & v4) + 0x58);
  v10 = type metadata accessor for DebugJournalSection(0, v7, v8, v9);
  sub_1D726282C();
  v100 = v82;
  v101 = v83;
  v102 = v84.n128_u64[0];
  v99[0] = v80;
  v99[1] = v81;
  swift_endAccess();
  v11 = *(*(v10 - 8) + 8);

  v11(v99, v10);
  sub_1D7258D9C();
  v13 = type metadata accessor for DebugJournalItem(0, v7, v8, v12);
  sub_1D726282C();

  v14 = *(v13 - 8);
  (*(v14 + 16))(&v80, v98, v13);
  if (v97 > 3u)
  {
    if (v97 > 5u)
    {
      if (v97 == 6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v97 == 4)
      {
        goto LABEL_15;
      }

      v46 = v80;
      v47 = v81.n128_u64[0];
      v48 = sub_1D7258D4C();
      [a1 deselectRowAtIndexPath:v48 animated:1];

      sub_1D6C62538(v46.n128_i64[0], v46.n128_i64[1], v47);
    }

LABEL_16:
    (*(v14 + 8))(v98, v13);
    return;
  }

  if (v97 > 1u)
  {
    if (v97 != 2)
    {
      (*(v14 + 8))(v98, v13);

      __swift_destroy_boxed_opaque_existential_1(&v81);
      return;
    }

    goto LABEL_15;
  }

  if (v97)
  {
LABEL_15:
    v49 = *(v14 + 8);
    v49(v98, v13);
    v49(&v80, v13);
    return;
  }

  v78[12] = v92;
  v78[13] = v93;
  v78[14] = v94;
  v53 = v96;
  v79 = v95;
  v78[8] = v88;
  v78[9] = v89;
  v78[10] = v90;
  v78[11] = v91;
  v78[4] = v84;
  v78[5] = v85;
  v78[6] = v86;
  v78[7] = v87;
  v78[0] = v80;
  v78[1] = v81;
  v78[2] = v82;
  v78[3] = v83;
  v15 = sub_1D7258D4C();
  [a1 deselectRowAtIndexPath:v15 animated:1];

  v50 = *(v3 + *((*v5 & *v3) + 0x90));
  v51 = *(v3 + *((*v5 & *v3) + 0x98));
  sub_1D5B68374(v3 + *((*v5 & *v3) + 0xA0), v77);
  sub_1D5B68374(v3 + *((*v5 & *v3) + 0xA8), v76);
  v63 = *(v3 + *((*v5 & *v3) + 0xB0));
  sub_1D5C0C678(v78, v75);
  sub_1D5B68374(v3 + *((*v5 & *v3) + 0xC8), v74);
  sub_1D5B68374(v3 + *((*v5 & *v3) + 0xD0), v73);
  v52 = type metadata accessor for DebugJournalGroupViewController();
  v16 = objc_allocWithZone(v52);
  v17 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_tableView;
  *&v16[v17] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v65 = v16;
  *&v16[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_feedItemImages] = MEMORY[0x1E69E7CC8];
  v57 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_placeholderImage;
  v18 = objc_opt_self();
  v19 = [v18 systemGrayColor];
  v56 = v18;
  v58 = [v18 lightGrayColor];
  v20 = objc_opt_self();
  v21 = *MEMORY[0x1E69DB958];
  v55 = v20;
  v22 = [v20 systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
  v61 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  v54 = vdupq_n_s64(0x4046000000000000uLL);
  *(v23 + 24) = v54;
  *(v23 + 40) = 0;
  *(v23 + 48) = 0;
  *(v23 + 56) = v22;
  *(v23 + 64) = v58;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D6139584;
  *(v24 + 24) = v23;
  v71 = sub_1D6139588;
  v72 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1D62E78B0;
  v70 = &block_descriptor_88;
  v25 = _Block_copy(&aBlock);
  v26 = v19;
  v27 = v22;
  v28 = v58;

  v59 = [v61 imageWithActions_];

  _Block_release(v25);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  else
  {
    *&v16[v57] = v59;
    v60 = OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_naImage;
    v29 = [v56 lightGrayColor];
    v30 = [v55 systemFontOfSize:12.0 weight:v21];
    v62 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = v54;
    *(v31 + 40) = xmmword_1D729E1B0;
    *(v31 + 56) = v30;
    *(v31 + 64) = v29;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1D61395AC;
    *(v32 + 24) = v31;
    v71 = sub_1D61395B0;
    v72 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1D62E78B0;
    v70 = &block_descriptor_15;
    v33 = _Block_copy(&aBlock);
    v34 = v30;
    v35 = v29;

    v36 = [v62 imageWithActions_];

    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if ((v33 & 1) == 0)
    {
      *&v65[v60] = v36;
      *&v65[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_cloudContext] = v50;
      sub_1D5B68374(v77, &v65[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_tagService]);
      *&v65[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_commandCenter] = v63;
      sub_1D5C0C678(v75, &v65[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_group]);
      sub_1D6C6614C(0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1D7284F00;
      v38 = v50;
      swift_unknownObjectRetain();
      *(v37 + 32) = sub_1D7214FA4(v75);
      *(v37 + 40) = sub_1D72157C8(v75);
      *(v37 + 48) = sub_1D7216DB4(v75);
      *(v37 + 56) = sub_1D7216FD4(v75, v38, v51, v77, v76, v73);
      sub_1D72184CC(v75);
      *(v37 + 64) = v39;
      v40 = sub_1D7218710(v53);

      *(v37 + 72) = v40;
      sub_1D63019AC(v37);
      v42 = v41;
      swift_setDeallocating();
      sub_1D6C66634(0, &qword_1EC8941C0, &type metadata for DebugJournalGroupSection, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *&v65[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_sections] = v42;
      sub_1D5B68374(v74, &v65[OBJC_IVAR____TtC8NewsFeed31DebugJournalGroupViewController_radarAttachmentProvider]);
      v66.receiver = v65;
      v66.super_class = v52;
      v43 = objc_msgSendSuper2(&v66, sel_initWithNibName_bundle_, 0, 0);
      __swift_destroy_boxed_opaque_existential_1(v73);
      __swift_destroy_boxed_opaque_existential_1(v74);
      sub_1D60E9D6C(v75);
      __swift_destroy_boxed_opaque_existential_1(v76);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v44 = [v3 navigationController];
      if (v44)
      {
        v45 = v44;
        [v44 showViewController:v43 sender:v3];

        v43 = v45;
      }

      sub_1D60E9D6C(v78);
      goto LABEL_16;
    }
  }

  __break(1u);
}

double sub_1D6C62538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *MEMORY[0x1E69E7D40];
  sub_1D6C661C8(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v27 - v12;
  v14 = *((v9 & v8) + 0x78);
  swift_beginAccess();
  v27[2] = *&v4[v14];
  v16 = type metadata accessor for DebugJournalSection(255, *((v9 & v8) + 0x50), *((v9 & v8) + 0x58), v15);
  v17 = sub_1D72627FC();

  WitnessTable = swift_getWitnessTable();
  v20 = sub_1D5B874E4(sub_1D6C6622C, a1, v17, v16, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);

  *&v4[v14] = v20;

  sub_1D6C5E524();
  v21 = sub_1D726294C();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_1D726290C();

  v22 = v4;
  v23 = sub_1D72628FC();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = a1;
  v24[5] = v22;
  v24[6] = a2;
  v24[7] = a3;
  sub_1D6BD1334(0, 0, v13, &unk_1D7341078, v24);

  return result;
}

void sub_1D6C627D4(void *a1)
{
  v2 = v1;
  v26 = a1;
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = sub_1D7258DBC();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v23 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258DAC();
  v9 = *((*v4 & *v1) + 0x70);
  swift_beginAccess();
  v10 = *((v5 & v3) + 0x50);
  v11 = *((v5 & v3) + 0x58);
  v13 = type metadata accessor for DebugJournalSection(0, v10, v11, v12);
  sub_1D726282C();
  v35[2] = v31[1];
  v35[3] = v31[2];
  v36 = v32;
  v35[0] = v30;
  v35[1] = v31[0];
  swift_endAccess();
  v14 = *(*(v13 - 8) + 8);

  v14(v35, v13);
  sub_1D7258D9C();
  v16 = type metadata accessor for DebugJournalItem(0, v10, v11, v15);
  sub_1D726282C();

  v17 = *(v16 - 8);
  (*(v17 + 16))(&v30, v34, v16);
  if (v33 > 3u)
  {
    if (v33 > 5u)
    {
      v18 = v26;
      if (v33 != 6)
      {
LABEL_15:
        (*(v17 + 8))(v34, v16);
        return;
      }
    }

    else
    {
      v18 = v26;
      if (v33 != 4)
      {
        goto LABEL_9;
      }
    }

    v20 = sub_1D7258D4C();
    [v18 deselectRowAtIndexPath:v20 animated:1];

    v27 = *(v2 + v9);
    sub_1D72627FC();

    swift_getWitnessTable();
    sub_1D7262C7C();

    if (v29 == 1)
    {
      (*(v17 + 8))(v34, v16);

      return;
    }

    v21 = v23;
    MEMORY[0x1DA6F0420](0, v28);
    v22 = sub_1D7258D4C();
    (*(v24 + 8))(v21, v25);
    [v18 scrollToRowAtIndexPath:v22 atScrollPosition:1 animated:1];

    goto LABEL_15;
  }

  if (v33 <= 1u)
  {
    if (!v33)
    {
      (*(v17 + 8))(v34, v16);

      sub_1D60E9D6C(&v30);
      return;
    }

    goto LABEL_9;
  }

  if (v33 == 2)
  {
LABEL_9:
    v19 = *(v17 + 8);
    v19(v34, v16);
    v19(&v30, v16);
    return;
  }

  (*(v17 + 8))(v34, v16);

  __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_1D6C62CBC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = sub_1D7258DBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v13 = a3;
  v14 = a1;
  a5(v13, v12);

  return (*(v9 + 8))(v12, v8);
}

void sub_1D6C62DC8()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1D6C62E38(void *a1)
{
  v1 = a1;
  sub_1D6C62DC8();
}

void sub_1D6C62E80()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = sub_1D7258DBC();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v3 & v2) + 0x70);
  swift_beginAccess();
  *&v22 = *(v1 + v8);
  v21 = v1;
  v9 = *((v3 & v2) + 0x50);
  v10 = *((v3 & v2) + 0x58);
  v12 = type metadata accessor for DebugJournalSection(255, v9, v10, v11);
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D7262C7C();

  if ((BYTE8(v28[0]) & 1) == 0)
  {
    v13 = *&v28[0];
    swift_beginAccess();
    sub_1D726282C();
    v29 = v24;
    v30 = v25;
    v31 = v26;
    v28[0] = v22;
    v28[1] = v23;
    swift_endAccess();
    v14 = v29;
    v15 = *(*(v12 - 8) + 8);

    v15(v28, v12);
    v27 = v14;
    type metadata accessor for DebugJournalItem(255, v9, v10, v16);
    sub_1D72627FC();
    swift_getWitnessTable();
    LOBYTE(v15) = sub_1D7262CCC();

    if ((v15 & 1) == 0)
    {
      v17 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80));
      MEMORY[0x1DA6F0420](0, v13);
      v18 = sub_1D7258D4C();
      (*(v20 + 8))(v7, v4);
      [v17 scrollToRowAtIndexPath:v18 atScrollPosition:1 animated:{objc_msgSend(objc_opt_self(), sel_areAnimationsEnabled)}];
    }
  }
}

uint64_t sub_1D6C631D0(uint64_t *a1, void *a2)
{
  v2 = (a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0x88));
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC() & 1;
  }
}

void sub_1D6C63250(void *a1)
{
  v1 = a1;
  sub_1D6C62E80();
}

void sub_1D6C63298(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D6C65A88();
}

uint64_t sub_1D6C632F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + *((*MEMORY[0x1E69E7D40] & *a2) + 0xB8));
  v4 = sub_1D6A69FC0(v2);
  v6 = v5;
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16) && (v8 = sub_1D5B69D90(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + v8);
  }

  else
  {
    v10 = 1;
  }

  swift_endAccess();

  if ((v2 >> 61) > 5 || ((1 << (v2 >> 61)) & 0x31) == 0)
  {
    return v10;
  }

  else
  {
    return 1;
  }
}

__n128 sub_1D6C6340C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *a2;
  v6 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v6;
  v19 = *(a1 + 64);
  v7 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v7;
  if (v19 >> 61 == 4 && (v19 & 0x1FFFFFFFFFFFFFFFLL) == a2)
  {
    sub_1D71BEC38(*(&v17 + 1), *(v5 + 80), *(v5 + 88), v14);
    v13 = v14[3];
    a3[2] = v14[2];
    a3[3] = v13;
    a3[4].n128_u64[0] = v15;
    result = v14[1];
    *a3 = v14[0];
    a3[1] = result;
  }

  else
  {
    v9 = *(a1 + 48);
    a3[2] = *(a1 + 32);
    a3[3] = v9;
    a3[4].n128_u64[0] = *(a1 + 64);
    v10 = *(a1 + 16);
    *a3 = *a1;
    a3[1] = v10;
    v11 = type metadata accessor for DebugJournalSection(0, *(v5 + 80), *(v5 + 88), a4);
    (*(*(v11 - 8) + 16))(v14, v16, v11);
  }

  return result;
}

uint64_t sub_1D6C6352C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[11] = *a4;
  sub_1D726290C();
  v7[12] = sub_1D72628FC();
  v9 = sub_1D726285C();
  v7[13] = v9;
  v7[14] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D6C635F0, v9, v8);
}

uint64_t sub_1D6C635F0()
{
  v1 = v0[11];
  sub_1D725B77C();
  v2 = v0[4];
  v0[15] = v2;
  v3 = swift_task_alloc();
  v0[16] = v3;
  v5 = type metadata accessor for FeedCursor(0, *(v1 + 80), *(v1 + 88), v4);
  v6 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v0[17] = v6;
  *v3 = v0;
  v3[1] = sub_1D6C636EC;
  v7 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 5, v2, v5, v6, v7);
}

uint64_t sub_1D6C636EC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1D6C638D0;
  }

  else
  {
    v5 = sub_1D6C63844;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D6C63844()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  sub_1D6C63A3C(*(v0 + 40), v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D6C638D0()
{
  v1 = v0[18];

  v2 = sub_1D7262EBC();
  sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740]);
  v3 = swift_allocObject();
  v0[2] = 0;
  *(v3 + 16) = xmmword_1D7273AE0;
  v0[3] = 0xE000000000000000;
  v0[6] = v1;
  sub_1D7263F9C();
  v4 = v0[2];
  v5 = v0[3];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D5B7E2C0();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
  v6 = sub_1D72638FC();
  sub_1D725C30C("Failed to load the async cursor, error=%@", 41, 2, &dword_1D5B42000, v6, v2, v3);

  v7 = v0[1];

  return v7();
}

void sub_1D6C63A3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v88 = a3;
  v80 = a1;
  v81 = a2;
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & v6) + 0x50);
  v9 = *((*MEMORY[0x1E69E7D40] & v6) + 0x58);
  isUniquelyReferenced_nonNull_native = type metadata accessor for FeedCursorTrackerSnapshot(0, v8, v9, a4);
  v11 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v12);
  v14 = &v73 - v13;
  v15 = *((v7 & v6) + 0x78);
  swift_beginAccess();
  v94.n128_u64[0] = *&v5[v15];
  v89 = v8;
  v90 = v9;
  v85 = v9;
  v86 = v8;
  v17 = type metadata accessor for DebugJournalSection(255, v8, v9, v16);
  v18 = sub_1D72627FC();

  swift_getWitnessTable();
  v78 = v18;
  v19 = sub_1D7263E7C();
  v79 = v15;
  *&v5[v15] = v19;

  (*(v11 + 16))(v14, &v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x68)], isUniquelyReferenced_nonNull_native);
  if (qword_1EC87DA50 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v20 = qword_1EC894110;
    v21 = qword_1EC894110 >> 62;
    if (qword_1EC894110 >> 62)
    {
      v22 = sub_1D7263BFC();
      v23 = v81;
      if (!v22)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        v24 = MEMORY[0x1DA6FB460](v22, v20);
        goto LABEL_10;
      }
    }

    else
    {
      v22 = *((qword_1EC894110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v81;
      if (!v22)
      {
        goto LABEL_55;
      }
    }

    if (v23 == 0x8000000000000000 && v22 == -1)
    {
      goto LABEL_60;
    }

    v22 = v23 % v22;
    v76 = v21;
    v77 = v20;
    v75 = v20 & 0xC000000000000001;
    if ((v20 & 0xC000000000000001) != 0)
    {
      goto LABEL_56;
    }

    if (v22 < 0)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v24 = *(v20 + 8 * v22 + 32);
LABEL_10:
    v25 = v24;
    v74 = sub_1D6C5D840(v80, v14, v88, v24);
    v27 = v26;

    (*(v11 + 8))(v14, isUniquelyReferenced_nonNull_native);
    *&v92[0] = v27;
    swift_beginAccess();

    swift_getWitnessTable();
    sub_1D72627AC();
    swift_endAccess();

    if (!sub_1D726279C())
    {
      break;
    }

    v28 = *&v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0xB8)];
    v29 = sub_1D726277C();
    sub_1D726271C();
    if ((v29 & 1) == 0)
    {
      goto LABEL_50;
    }

    v73 = v5;
    v30 = 0;
    v83 = v17;
    v84 = v17 - 8;
    v31 = 32;
    v82 = v27;
    while (1)
    {
      v94 = *(v27 + v31);
      v32 = *(v27 + v31 + 16);
      v33 = *(v27 + v31 + 32);
      v34 = *(v27 + v31 + 48);
      v98 = *(v27 + v31 + 64);
      v96 = v33;
      v97 = v34;
      v95 = v32;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v87 = v30;
      v88 = v30 + 1;
      v11 = sub_1D6A69FC0(v98);
      v36 = v35;
      swift_beginAccess();
      v14 = *(v17 - 8);
      (*(v14 + 2))(v92, &v94, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v92[0] = *(v28 + 2);
      v37 = *&v92[0];
      v5 = v28;
      *(v28 + 2) = 0x8000000000000000;
      v17 = sub_1D5B69D90(v11, v36);
      v39 = *(v37 + 16);
      v40 = (v38 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_49;
      }

      v42 = v38;
      if (*(v37 + 24) >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v38)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1D6D85E80();
          if (v42)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_1D6D747C0(v41, isUniquelyReferenced_nonNull_native);
        v43 = sub_1D5B69D90(v11, v36);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_67;
        }

        v17 = v43;
        if (v42)
        {
LABEL_21:

          v45 = *&v92[0];
          *(*(*&v92[0] + 56) + v17) = 1;
          goto LABEL_25;
        }
      }

      v45 = *&v92[0];
      *(*&v92[0] + 8 * (v17 >> 6) + 64) |= 1 << v17;
      v46 = (v45[6] + 16 * v17);
      *v46 = v11;
      v46[1] = v36;
      *(v45[7] + v17) = 1;
      v47 = v45[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_52;
      }

      v45[2] = v49;
LABEL_25:
      v28 = v5;
      *(v5 + 2) = v45;
      swift_endAccess();
      v50 = *(v14 + 1);
      v14 += 8;
      v17 = v83;
      v50(&v94, v83);
      v27 = v82;
      v51 = sub_1D726279C();
      v11 = v88;
      if (v88 == v51)
      {

        v5 = v73;
        goto LABEL_30;
      }

      v52 = sub_1D726277C();
      sub_1D726271C();
      v31 += 72;
      v30 = v87 + 1;
      if ((v52 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v11 = 0;
LABEL_51:
    sub_1D7263DBC();
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

LABEL_30:
  v53 = v81 + 1;
  if (__OFADD__(v81, 1))
  {
    goto LABEL_59;
  }

  v54 = v80;
  v55 = *(*v80 + 272);
  swift_beginAccess();
  if (!*(v54 + v55))
  {
    goto LABEL_45;
  }

  v56.n128_f64[0] = sub_1D6F759D8();
  if (!v57)
  {
    goto LABEL_45;
  }

  v58 = v77;
  if (v76)
  {
    v59 = sub_1D7263BFC();
  }

  else
  {
    v59 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v59)
  {
    goto LABEL_61;
  }

  if (v53 == 0x8000000000000000 && v59 == -1)
  {
    goto LABEL_62;
  }

  v60 = v53 % v59;
  if (v75)
  {
    v61 = MEMORY[0x1DA6FB460](v60, v58, v56);
    goto LABEL_44;
  }

  if ((v60 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v61 = *(v58 + 8 * v60 + 32);
LABEL_44:
  v62 = v61;

  sub_1D71BEB84(v63, v62, v53, v74, &v94);
  v92[2] = v96;
  v92[3] = v97;
  v93 = v98;
  v92[0] = v94;
  v92[1] = v95;
  swift_beginAccess();
  v64 = *(v17 - 8);
  (*(v64 + 16))(v91, &v94, v17);
  sub_1D72627BC();
  swift_endAccess();

  (*(v64 + 8))(&v94, v17);
LABEL_45:
  sub_1D6C5E524();
  v65 = *&v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0xC0)];
  v91[0] = v53;
  *&v92[0] = sub_1D72644BC();
  *(&v92[0] + 1) = v66;
  MEMORY[0x1DA6F9910](0x73726F7372754320, 0xE800000000000000);
  v67 = v5;
  v68 = sub_1D726203C();

  [v65 setText_];

  v69 = [v67 view];
  if (!v69)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v70 = v69;
  [v69 setNeedsLayout];

  v71 = [v67 view];
  if (v71)
  {
    v72 = v71;

    [v72 layoutIfNeeded];

    return;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  sub_1D726493C();
  __break(1u);
}

void sub_1D6C64364(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1D6C66064();
}

uint64_t sub_1D6C643D4(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = *((*v2 & *a1) + 0x68);
  v7 = type metadata accessor for FeedCursorTrackerSnapshot(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v6);
  (*(*(v7 - 8) + 8))(&a1[v5], v7);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xA0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xA8)]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + 0xC8)]);
  v8 = &a1[*((*v2 & *a1) + 0xD0)];

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

id sub_1D6C646AC()
{
  sub_1D6C66634(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7312360;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemPinkColor];
  *(v0 + 40) = [v1 systemBlueColor];
  *(v0 + 48) = [v1 systemGreenColor];
  *(v0 + 56) = [v1 systemTealColor];
  *(v0 + 64) = [v1 systemYellowColor];
  *(v0 + 72) = [v1 systemRedColor];
  *(v0 + 80) = [v1 systemOrangeColor];
  *(v0 + 88) = [v1 systemPurpleColor];
  result = [v1 systemIndigoColor];
  *(v0 + 96) = result;
  qword_1EC894110 = v0;
  return result;
}

__n128 sub_1D6C64824@<Q0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X6>, void (*a6)(_OWORD *__return_ptr, void *, uint64_t, void, uint64_t, uint64_t, id, uint64_t, __n128)@<X7>, uint64_t a7@<X8>, void *a8@<X2>, uint64_t a9@<X3>)
{
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *(a2 + 2);
  v18 = sub_1D6C64918(*a2, v16, a8, a9);
  v20 = v19;
  v24[0] = v15;
  v24[1] = v16;
  v24[2] = v17;

  sub_1D5C07390(v16);
  v21 = a4;

  (a6)(v25, v24, v18, v20 & 1, a1, a3, v21, a5);
  v22 = v25[3];
  *(a7 + 32) = v25[2];
  *(a7 + 48) = v22;
  *(a7 + 64) = v26;
  result = v25[1];
  *a7 = v25[0];
  *(a7 + 16) = result;
  return result;
}

uint64_t sub_1D6C64918(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1D5C0C678(result + 32, v11);
  sub_1D5C034F0(&v12, v9);
  sub_1D5C074F4(v11);
  if (v10 <= 2u)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    v6 = *a3;
    result = *a3 + a4;
    if (!__OFADD__(*a3, a4))
    {
      v7 = __OFADD__(v6, 1);
      v8 = v6 + 1;
      if (!v7)
      {
        *a3 = v8;
        return result;
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 == 3)
  {

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_1D5BC3420(v9);
  }

  return 0;
}

id sub_1D6C649F0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  ObjectType = swift_getObjectType();
  v18 = MEMORY[0x1E69E7D40];
  v19 = *v12;
  v20 = *MEMORY[0x1E69E7D40];
  v21 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x80);
  *&v12[v21] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v22 = *((*v18 & *v12) + 0xB8);
  type metadata accessor for DebugJournalSectionStateManager();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x1E69E7CC8];
  v106 = v22;
  *&v12[v22] = v23;
  v98 = *((*v18 & *v12) + 0xC0);
  *&v12[v98] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v12[*((*v18 & *v12) + 0x90)] = a1;
  *&v12[*((*v18 & *v12) + 0x98)] = a2;
  v101 = a3;
  sub_1D5B68374(a3, &v12[*((*v18 & *v12) + 0xA0)]);
  v100 = a4;
  sub_1D5B68374(a4, &v12[*((*v18 & *v12) + 0xA8)]);
  v24 = &v12[*((*v18 & *v12) + 0xB0)];
  *v24 = a5;
  *(v24 + 1) = a6;
  *&v12[*((*v18 & *v12) + 0x60)] = a7;
  v25 = *((*v18 & *v12) + 0x68);
  v26 = *((v20 & v19) + 0x50);
  v27 = *((v20 & v19) + 0x58);
  v29 = type metadata accessor for FeedCursorTrackerSnapshot(0, v26, v27, v28);
  (*(*(v29 - 8) + 16))(&v12[v25], a8, v29);
  v30 = &v12[*((*v18 & *v12) + 0x88)];
  *v30 = a9;
  *(v30 + 1) = a10;
  v107 = v12;
  sub_1D5B68374(a12, &v12[*((*v18 & *v12) + 0xD0)]);
  v31 = a7 & 0x7FFFFFFFFFFFFFFFLL;
  v33 = type metadata accessor for DebugJournalSection(0, v26, v27, v32);
  swift_retain_n();
  v34 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v118 = sub_1D7261CFC();
  v109 = v33;
  v35 = 0;
  v36 = 0;
  if (a7 < 0)
  {
    goto LABEL_24;
  }

  do
  {
    if (qword_1EC87DA50 != -1)
    {
      swift_once();
    }

    v37 = qword_1EC894110;
    v33 = qword_1EC894110 >> 62;
    if (qword_1EC894110 >> 62)
    {
      v38 = sub_1D7263BFC();
      if (!v38)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v38 = *((qword_1EC894110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
        goto LABEL_72;
      }
    }

    v39 = v35 % v38;
    if ((v37 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x1DA6FB460](v39, v37);
    }

    else
    {
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_73;
      }

      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      v40 = *(v37 + 8 * v39 + 32);
    }

    v41 = v40;
    v42 = sub_1D6C5D840(a7, a8, v36, v40);
    v44 = v43;

    v119[0].n128_u64[0] = v44;
    sub_1D72627FC();

    swift_getWitnessTable();
    sub_1D72627AC();
    v45 = __OFADD__(v36, v42);
    v36 += v42;
    if (v45)
    {
      goto LABEL_74;
    }

    v46 = *(*a7 + 272);
    swift_beginAccess();
    v47 = *(a7 + v46);
    if (v47)
    {
      FeedNextCursor.syncCursor.getter();
      v47 = v48;
    }

    sub_1D5BD9F54(a7);
    v49 = FeedCursorContainer.init(optionalCursor:)(v47);
    v50 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v51 = v49;
    if ((~v49 & 0xF000000000000007) == 0)
    {
      v102 = v49;
      if (*(a7 + v46))
      {
        sub_1D6F759D8();
        ++v35;
        if (v52)
        {
          if (v33)
          {
            v53 = sub_1D7263BFC();
          }

          else
          {
            v53 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v33 = v109;
          if (!v53)
          {
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          if (v35 == 0x8000000000000000 && v53 == -1)
          {
            goto LABEL_89;
          }

          v62 = v35 % v53;
          if ((v37 & 0xC000000000000001) != 0)
          {
            v63 = MEMORY[0x1DA6FB460](v62, v37);
          }

          else
          {
            if ((v62 & 0x8000000000000000) != 0)
            {
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              result = sub_1D726493C();
              __break(1u);
              return result;
            }

            if (v62 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_91;
            }

            v63 = *(v37 + 8 * v62 + 32);
          }

          v64 = v63;

          sub_1D71BEB84(v65, v64, v35, v36, v119);
          v115 = v119[2];
          v116 = v119[3];
          v117 = v120;
          v113 = v119[0];
          v114 = v119[1];
          v66 = *(v109 - 8);
          (*(v66 + 16))(v112, v119, v109);
          sub_1D72627BC();

          v67 = *(v66 + 8);
          v36 = v66 + 8;
          v67(v119, v109);
        }

        else
        {

          v33 = v109;
        }
      }

      else
      {

        v33 = v109;
        ++v35;
      }

      v61 = v102;
      goto LABEL_49;
    }

    v31 = v49 & 0x7FFFFFFFFFFFFFFFLL;

    ++v35;
    a7 = v51;
  }

  while ((v51 & 0x8000000000000000) == 0);
  a7 = v51;
  v33 = v109;
  v35 = v50;
LABEL_24:
  if (qword_1EC87DA50 != -1)
  {
    goto LABEL_80;
  }

  while (2)
  {
    v54 = qword_1EC894110;
    if (qword_1EC894110 >> 62)
    {
      v55 = sub_1D7263BFC();
    }

    else
    {
      v55 = *((qword_1EC894110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v55)
    {
      __break(1u);
LABEL_83:
      v57 = MEMORY[0x1DA6FB460](v56, v54);
      goto LABEL_34;
    }

    if (v35 == 0x8000000000000000 && v55 == -1)
    {
      goto LABEL_87;
    }

    v56 = v35 % v55;
    if ((v54 & 0xC000000000000001) != 0)
    {
      goto LABEL_83;
    }

    if ((v56 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    v57 = *(v54 + 8 * v56 + 32);
LABEL_34:
    v58 = v57;
    sub_1D6C5DA58(v31, a8, v36, v57);
    v60 = v59;

    v119[0].n128_u64[0] = v60;
    v36 = sub_1D72627FC();
    swift_getWitnessTable();
    sub_1D72627AC();
    sub_1D5BD9F54(a7);

    v45 = __OFADD__(v35++, 1);
    if (v45)
    {
      goto LABEL_85;
    }

    v61 = 0xF000000000000007;
LABEL_49:
    v103 = v61;
    v68 = v118;
    v69 = MEMORY[0x1E69E7D40];
    *(v107 + *((*MEMORY[0x1E69E7D40] & *v107) + 0x78)) = v118;
    *(v107 + *((*v69 & *v107) + 0x70)) = v68;
    swift_bridgeObjectRetain_n();
    if (sub_1D726279C())
    {
      v70 = sub_1D726277C();
      sub_1D726271C();
      if ((v70 & 1) == 0)
      {
LABEL_77:
        v31 = 0;
LABEL_78:
        sub_1D7263DBC();
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        swift_once();
        continue;
      }

      v97 = v35;
      v35 = 0;
      v104 = v68;
      v36 = 32;
      while (2)
      {
        v113 = *(v68 + v36);
        v71 = *(v68 + v36 + 16);
        v72 = *(v68 + v36 + 32);
        v73 = *(v68 + v36 + 48);
        v117 = *(v68 + v36 + 64);
        v115 = v72;
        v116 = v73;
        v114 = v71;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        a8 = v35 + 1;
        a7 = *(v107 + v106);
        v74 = sub_1D6A69FC0(v117);
        v76 = v75;
        swift_beginAccess();
        v77 = *(v33 - 8);
        (*(v77 + 16))(v112, &v113, v33);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112[0] = *(a7 + 16);
        v79 = v112[0];
        *(a7 + 16) = 0x8000000000000000;
        v33 = sub_1D5B69D90(v74, v76);
        v81 = *(v79 + 16);
        v82 = (v80 & 1) == 0;
        v83 = v81 + v82;
        if (__OFADD__(v81, v82))
        {
          goto LABEL_71;
        }

        v31 = v80;
        if (*(v79 + 24) >= v83)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v80 & 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            sub_1D6D85E80();
            if ((v31 & 1) == 0)
            {
              goto LABEL_62;
            }
          }
        }

        else
        {
          sub_1D6D747C0(v83, isUniquelyReferenced_nonNull_native);
          v84 = sub_1D5B69D90(v74, v76);
          if ((v31 & 1) != (v85 & 1))
          {
            goto LABEL_92;
          }

          v33 = v84;
          if ((v31 & 1) == 0)
          {
LABEL_62:
            v86 = v112[0];
            *(v112[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
            v87 = (v86[6] + 16 * v33);
            *v87 = v74;
            v87[1] = v76;
            *(v86[7] + v33) = 1;
            v88 = v86[2];
            v45 = __OFADD__(v88, 1);
            v89 = v88 + 1;
            if (v45)
            {
              goto LABEL_79;
            }

            v86[2] = v89;
            goto LABEL_64;
          }
        }

        v86 = v112[0];
        *(*(v112[0] + 56) + v33) = 1;
LABEL_64:
        *(a7 + 16) = v86;
        swift_endAccess();

        v33 = v109;
        (*(v77 + 8))(&v113, v109);
        v68 = v104;
        v31 = v35 + 1;
        if (a8 == sub_1D726279C())
        {

          v35 = v97;
          goto LABEL_69;
        }

        v90 = sub_1D726277C();
        sub_1D726271C();
        v36 += 72;
        ++v35;
        if ((v90 & 1) == 0)
        {
          goto LABEL_78;
        }

        continue;
      }
    }

    break;
  }

LABEL_69:
  v91 = *(v107 + v98);
  v112[0] = v35;
  v92 = v91;
  v113.n128_u64[0] = sub_1D72644BC();
  v113.n128_u64[1] = v93;
  MEMORY[0x1DA6F9910](0x73726F7372754320, 0xE800000000000000);
  v94 = sub_1D726203C();

  [v92 setText_];

  sub_1D5B68374(a11, v107 + *((*MEMORY[0x1E69E7D40] & *v107) + 0xC8));
  v111.receiver = v107;
  v111.super_class = ObjectType;
  v95 = objc_msgSendSuper2(&v111, sel_initWithNibName_bundle_, 0, 0);
  sub_1D5BD9F54(v103);
  __swift_destroy_boxed_opaque_existential_1(a12);
  __swift_destroy_boxed_opaque_existential_1(a11);
  __swift_destroy_boxed_opaque_existential_1(v100);
  __swift_destroy_boxed_opaque_existential_1(v101);
  return v95;
}

void sub_1D6C65740()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v3 = *((*v1 & *v0) + 0xB8);
  type metadata accessor for DebugJournalSectionStateManager();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + v3) = v4;
  v5 = *((*v1 & *v0) + 0xC0);
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6C65880()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for DebugJournalSection(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);

  v4 = sub_1D726279C();

  return v4;
}

uint64_t sub_1D6C6593C(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v4 = *((v3 & v2) + 0x50);
  v5 = *((v3 & v2) + 0x58);
  v7 = type metadata accessor for DebugJournalSection(0, v4, v5, v6);
  sub_1D726282C();
  v17[2] = v14;
  v17[3] = v15;
  v18 = v16;
  v17[0] = v12;
  v17[1] = v13;
  swift_endAccess();
  v8 = *(*(v7 - 8) + 8);

  v8(v17, v7);
  type metadata accessor for DebugJournalItem(0, v4, v5, v9);
  v10 = sub_1D726279C();

  return v10;
}

void sub_1D6C65A88()
{
  sub_1D6C66094(0, &qword_1EC881610, MEMORY[0x1E69D6E30]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v29 - v4;
  v6 = sub_1D725970C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C661C8(0, &unk_1EC8941A0, MEMORY[0x1E69D6E78], MEMORY[0x1E69E6F90]);
  v11 = *(sub_1D72597DC() - 8);
  v29[3] = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D7273AE0;
  v37 = 0x206E6F6973726556;
  v38 = 0xE800000000000000;
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  MEMORY[0x1DA6F9910](qword_1EC881F18, unk_1EC881F20);
  v29[1] = v38;
  v29[2] = v37;
  sub_1D5B677A8(0, &qword_1EC88F1B0, &qword_1EC8941B0, MEMORY[0x1E69D6EC8]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7279970;
  sub_1D6C66094(0, &qword_1EC881630, MEMORY[0x1E69D6E50]);
  v14 = v13;
  if (qword_1EDF18780 != -1)
  {
    swift_once();
  }

  v15 = *MEMORY[0x1E69D6D78];
  v16 = *(v7 + 104);
  v33 = v7 + 104;
  v36 = v15;
  v35 = v16;
  v16(v10);
  v17 = *MEMORY[0x1E69D6E28];
  v34 = *(v2 + 104);
  v34(v5, v17, v1);

  v18 = sub_1D72597BC();
  v32 = v6;
  v19 = v10;
  v20 = v18;
  *(v12 + 56) = v14;
  v21 = sub_1D6A14FC8();
  *(v12 + 64) = v21;
  *(v12 + 32) = v20;
  if (qword_1EDF18758 != -1)
  {
    swift_once();
  }

  v35(v19, v36, v32);
  v34(v5, v17, v1);

  v22 = sub_1D72597BC();
  *(v12 + 96) = v14;
  *(v12 + 104) = v21;
  *(v12 + 72) = v22;
  if (qword_1EDF18740 != -1)
  {
    swift_once();
  }

  v35(v19, v36, v32);
  v34(v5, v17, v1);

  v23 = sub_1D72597BC();
  *(v12 + 136) = v14;
  *(v12 + 144) = v21;
  *(v12 + 112) = v23;
  sub_1D72597CC();
  v24 = sub_1D725DFCC();
  swift_allocObject();
  v25 = sub_1D725DFBC();
  v39 = v24;
  v40 = MEMORY[0x1E69D7D00];
  v37 = v25;
  v26 = objc_allocWithZone(sub_1D725E42C());
  v27 = sub_1D725E41C();
  v28 = [objc_allocWithZone(sub_1D725EDBC()) initWithRootViewController_];

  [v31 presentViewController:v28 animated:1 completion:0];
}

void sub_1D6C66094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL sub_1D6C66114(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4 = v2 >> 61 == 6;
  v3 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  return v4 && v3 == v1;
}

BOOL sub_1D6C66130(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4 = v2 >> 61 == 1;
  v3 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  return v4 && v3 == v1;
}

void sub_1D6C6614C(uint64_t a1)
{
  if (!qword_1EC8941B8)
  {
    sub_1D6C66634(255, &qword_1EC8941C0, &type metadata for DebugJournalGroupSection, MEMORY[0x1E69E62F8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8941B8);
    }
  }
}

void sub_1D6C661C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C6624C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6C6352C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1D6C66364(uint64_t a1)
{
  if (!qword_1EC8941C8)
  {
    sub_1D6C66634(255, &qword_1EDF05270, &type metadata for FeedJournalEntry, MEMORY[0x1E69E62F8]);
    sub_1D6C66420(&qword_1EC8941D8, &qword_1EDF05270, &type metadata for FeedJournalEntry, MEMORY[0x1E69E6328]);
    v1 = sub_1D72640AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8941C8);
    }
  }
}

uint64_t sub_1D6C66420(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C66634(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C66478()
{
  result = qword_1EC8941E0;
  if (!qword_1EC8941E0)
  {
    sub_1D6C66364(255);
    sub_1D6C66420(&unk_1EDF05260, &qword_1EDF05270, &type metadata for FeedJournalEntry, MEMORY[0x1E69E6340]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8941E0);
  }

  return result;
}

void sub_1D6C66634(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_1D6C66718@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 32))(v6, *a1, a1 + 1);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t FormatKeyPlayerDataVisualization.query.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatKeyPlayerDataVisualization.eventIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatKeyPlayerDataVisualization.tagIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatKeyPlayerDataVisualization.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatKeyPlayerDataVisualization.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;

  return result;
}

double FormatKeyPlayerDataVisualization.query.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return result;
}

void *FormatKeyPlayerDataVisualization.__allocating_init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  swift_beginAccess();
  v16[6] = a5;
  swift_beginAccess();
  v16[7] = a6;
  swift_beginAccess();
  v16[8] = a7;
  v16[9] = a8;
  return v16;
}

void *FormatKeyPlayerDataVisualization.init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_beginAccess();
  v8[6] = a5;
  swift_beginAccess();
  v8[7] = a6;
  swift_beginAccess();
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t sub_1D6C66C14(uint64_t a1)
{
  v2 = sub_1D5E19208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C66C50(uint64_t a1)
{
  v2 = sub_1D5E19208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatKeyPlayerDataVisualization.deinit()
{

  return v0;
}

uint64_t FormatKeyPlayerDataVisualization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void FormatKeyPlayerDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6C67710(0, &qword_1EC87F890, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19208();
  sub_1D7264B5C();
  v17 = 0;
  sub_1D72643FC();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v17 = 1;
    sub_1D72643FC();
    swift_beginAccess();
    if (*(v3[6] + 16))
    {

      sub_1D5E066F4(v11, v10, 2);
    }

    swift_beginAccess();
    v12 = v3[7];
    if (*(v12 + 16))
    {
      v16 = 3;
      v15 = v12;
      sub_1D6C67008();
      sub_1D5E4C584();
      sub_1D5E4C5D4();

      sub_1D72647EC();
    }

    swift_beginAccess();
    v13 = v3[8];
    v14 = v3[9];

    sub_1D5EAEE10(v13, v14, 4);
    (*(v7 + 8))(v10, v6);
  }
}

unint64_t sub_1D6C67008()
{
  result = qword_1EC87F8A0;
  if (!qword_1EC87F8A0)
  {
    sub_1D6C67710(255, &qword_1EC87F890, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F8A0);
  }

  return result;
}

uint64_t FormatKeyPlayerDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatKeyPlayerDataVisualization.init(from:)(a1);
  return v2;
}

void *FormatKeyPlayerDataVisualization.init(from:)(void *a1)
{
  v4 = *v1;
  v40 = v2;
  v41 = v4;
  sub_1D5E18934(0);
  v37 = v5;
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v9 = v8;
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C67710(0, &qword_1EC8941E8, MEMORY[0x1E69E6F48]);
  v14 = v13;
  v39 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v34 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19208();
  v18 = v40;
  v19 = v1;
  sub_1D7264B0C();
  if (v18)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v12;
    v21 = v39;
    LOBYTE(v42) = 0;
    v1[2] = sub_1D72642BC();
    v1[3] = v22;
    LOBYTE(v42) = 1;
    v1[4] = sub_1D72642BC();
    v1[5] = v24;
    v40 = v1;
    LOBYTE(v42) = 2;
    v25 = sub_1D726434C();
    if (v25)
    {
      v45 = 2;
      sub_1D6C67774(&qword_1EDF3BE00, 255, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
      v26 = v9;
      sub_1D726431C();
      v27 = v14;
      v28 = sub_1D725A74C();
      (*(v36 + 8))(v20, v26);
    }

    else
    {
      v28 = MEMORY[0x1E69E7CD0];
      v27 = v14;
    }

    v40[6] = v28;
    LOBYTE(v42) = 3;
    if (sub_1D726434C())
    {
      v45 = 3;
      sub_1D6C67774(&qword_1EDF3BD70, 255, sub_1D5E18934, MEMORY[0x1E69D64C8]);
      v29 = v37;
      v30 = v38;
      sub_1D726431C();
      v31 = sub_1D725A74C();
      (*(v35 + 8))(v30, v29);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v40[7] = v31;
    v45 = 4;
    if (sub_1D726434C())
    {
      v44 = 4;
      sub_1D726431C();
      v33 = v42;
      v32 = v43;
    }

    else
    {
      v33 = 0;
      v32 = 0xE000000000000000;
    }

    (*(v21 + 8))(v17, v27);
    v19 = v40;
    v40[8] = v33;
    v19[9] = v32;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

void *sub_1D6C67688@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatKeyPlayerDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_1D6C67710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E19208();
    v7 = a3(a1, &type metadata for FormatKeyPlayerDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6C67774(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D6C677BC(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6C67774(&qword_1EC885AF8, a2, type metadata accessor for FormatKeyPlayerDataVisualization, &protocol conformance descriptor for FormatKeyPlayerDataVisualization);
  a1[2] = sub_1D6C67774(&qword_1EC885B38, v3, type metadata accessor for FormatKeyPlayerDataVisualization, &protocol conformance descriptor for FormatKeyPlayerDataVisualization);
  result = sub_1D6C67774(&qword_1EC8941F0, v4, type metadata accessor for FormatKeyPlayerDataVisualization, &protocol conformance descriptor for FormatKeyPlayerDataVisualization);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C678F4()
{
  result = qword_1EC8941F8;
  if (!qword_1EC8941F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8941F8);
  }

  return result;
}

unint64_t sub_1D6C6794C()
{
  result = qword_1EC894200;
  if (!qword_1EC894200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894200);
  }

  return result;
}

unint64_t sub_1D6C679A4()
{
  result = qword_1EC894208;
  if (!qword_1EC894208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894208);
  }

  return result;
}

unint64_t FormatContentSizeCategoryValue.rawValue.getter()
{
  result = 0x616D536172747865;
  switch(*v0)
  {
    case 1:
      result = 29560;
      break;
    case 2:
      result = 0x6C6C616D73;
      break;
    case 3:
      result = 115;
      break;
    case 4:
      result = 0x6D756964656DLL;
      break;
    case 5:
      result = 109;
      break;
    case 6:
      result = 0x656772616CLL;
      break;
    case 7:
      result = 108;
      break;
    case 8:
      result = 0x72614C6172747865;
      break;
    case 9:
      result = 27768;
      break;
    case 0xA:
      result = 0x7478456172747865;
      break;
    case 0xB:
      result = 7108728;
      break;
    case 0xC:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 1819834488;
      break;
    case 0xE:
      result = 0xD000000000000013;
      break;
    case 0xF:
      result = 7174241;
      break;
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 0x11:
      result = 7108705;
      break;
    case 0x12:
      result = 0xD000000000000017;
      break;
    case 0x13:
      result = 1819834465;
      break;
    case 0x14:
      result = 0xD00000000000001CLL;
      break;
    case 0x15:
      result = 0x6C78787861;
      break;
    case 0x16:
      result = 0xD000000000000021;
      break;
    case 0x17:
      result = 0x6C7878787861;
      break;
    default:
      return result;
  }

  return result;
}

NewsFeed::FormatContentSizeCategoryValue_optional __swiftcall FormatContentSizeCategoryValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72648CC();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D6C67D7C()
{
  result = qword_1EDF20890;
  if (!qword_1EDF20890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20890);
  }

  return result;
}

uint64_t sub_1D6C67DD0()
{
  sub_1D7264A0C();
  FormatContentSizeCategoryValue.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6C67E38(uint64_t a1)
{
  FormatContentSizeCategoryValue.rawValue.getter();
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6C67E9C(uint64_t a1)
{
  sub_1D7264A0C();
  FormatContentSizeCategoryValue.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6C67F0C@<X0>(unint64_t *a1@<X8>)
{
  result = FormatContentSizeCategoryValue.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6C67F34()
{
  v0 = FormatContentSizeCategoryValue.rawValue.getter();
  v2 = v1;
  if (v0 == FormatContentSizeCategoryValue.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D6C67FD0(uint64_t a1)
{
  *(a1 + 8) = sub_1D6C68000();
  result = sub_1D6C68054();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C68000()
{
  result = qword_1EC894210;
  if (!qword_1EC894210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894210);
  }

  return result;
}

unint64_t sub_1D6C68054()
{
  result = qword_1EDF20888;
  if (!qword_1EDF20888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20888);
  }

  return result;
}

unint64_t sub_1D6C680A8(uint64_t a1)
{
  result = sub_1D66F48AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C680D0(void *a1)
{
  a1[1] = sub_1D6C68108();
  a1[2] = sub_1D6C6815C();
  result = sub_1D6C67D7C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C68108()
{
  result = qword_1EDF20880;
  if (!qword_1EDF20880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20880);
  }

  return result;
}

unint64_t sub_1D6C6815C()
{
  result = qword_1EDF20898;
  if (!qword_1EDF20898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20898);
  }

  return result;
}

uint64_t FeedPuzzle.init(puzzle:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = xmmword_1D728A8D0;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  *(a2 + 56) = a1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 3;
  sub_1D5C3AE80(v23, a2 + 88, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  sub_1D5C3AE80(v21, a2 + 128, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D5C3AE80(&v18, a2 + 168, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  *(a2 + 80) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectRetain();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 4) != 0)
  {
    v9 = [a1 teaserClue];
    v8 = 0x8000000000;
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D726207C();
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v8 = 0x28000000000;
      }
    }
  }

  else
  {
    v8 = 0x8000000000;
  }

  v15 = [a1 thumbnailSmallImageAssetHandle];
  if (v15)
  {

    v8 |= 4uLL;
  }

  v16 = [a1 thumbnailLargeImageAssetHandle];
  swift_unknownObjectRelease();
  if (v16)
  {

    v8 |= 0x40000000000uLL;
  }

  sub_1D5BFB7D0(&v18, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  sub_1D5BFB7D0(v21, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  result = sub_1D5BFB7D0(v23, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  *a2 = v8;
  return result;
}

uint64_t FeedPuzzle.userHasAccess.getter()
{
  if (*(v0 + 72) > 1u)
  {
    if (*(v0 + 72) == 2)
    {
    }

    v2 = 0;
  }

  else
  {
    v1 = sub_1D72646CC();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

id FeedPuzzle.debugAssetHandle.getter()
{
  v1 = [*(v0 + 56) thumbnailSmallImageAssetHandle];

  return v1;
}

uint64_t FeedPuzzle.additionalFormatFeedItems.getter()
{
  v1 = [*(v0 + 56) puzzleType];
  v2 = [v1 identifier];
  v3 = sub_1D726207C();
  v5 = v4;

  v18[0] = 1;
  v20 = 0uLL;
  v21[0] = 1;
  *&v21[8] = xmmword_1D728A8E0;
  *&v21[24] = v3;
  *&v22 = v5;
  *(&v22 + 1) = v1;
  sub_1D5C16694(0, &qword_1EDF199E0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  *(v6 + 56) = &type metadata for FeedPuzzleType;
  *(v6 + 64) = sub_1D6307250();
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  v8 = *v21;
  v7[1] = v20;
  v7[2] = v8;
  v9 = v22;
  v7[3] = *&v21[16];
  v7[4] = v9;
  v19 = v6;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FeedTag;
  *(inited + 64) = sub_1D5EE5BA8();
  v11 = swift_allocObject();
  *(inited + 32) = v11;
  sub_1D63071F4(&v20, v18);
  v12 = [swift_unknownObjectRetain() identifier];
  v13 = sub_1D726207C();
  v15 = v14;

  *(v11 + 96) = xmmword_1D7279980;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0;
  *(v11 + 16) = v13;
  *(v11 + 24) = v15;
  *(v11 + 32) = v1;
  *(v11 + 40) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0xE000000000000000;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  v16 = MEMORY[0x1E69E7CD0];
  *(v11 + 80) = 0;
  *(v11 + 88) = v16;
  sub_1D6985C1C(inited);
  sub_1D5F2DE58(&v20);
  return v19;
}

uint64_t PuzzleAccessLevel.rawValue.getter()
{
  v1 = 0x6563634165657266;
  if (*v0 != 1)
  {
    v1 = 0x7373656363416F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6563634164696170;
  }
}
void sub_1E1A0575C()
{
  v1 = v0;
  v2 = sub_1E1AF504C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF503C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + qword_1EE1E9EA0);
  v11 = *(v0 + qword_1EE1E9EA0);
  if (!v11)
  {
    v20 = 0;
LABEL_7:
    v21 = v10[1];
LABEL_8:
    *v10 = 0;
    v10[1] = 0;
    sub_1E1300EA8(v20, v21);
    return;
  }

  v12 = v10[1];

  v14 = v11(v13);
  v15 = v11;
  v16 = v14;
  sub_1E1300EA8(v15, v12);
  if (!v16)
  {
    v20 = *v10;
    goto LABEL_7;
  }

  v65 = v9;
  v66 = v7;
  v17 = *(v1 + qword_1EE1E9E08);
  v64 = v6;
  if (v17)
  {
    v18 = *(v1 + qword_1EE1E9E08 + 8);

    v19 = v17(v16);
    sub_1E1300EA8(v17, v18);
  }

  else
  {

    v19 = v16;
  }

  v22 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v19 + v22) + 16))
  {

    v20 = *v10;
    v21 = v10[1];
    goto LABEL_8;
  }

  *(v1 + qword_1EE1E9D48) = v19;

  v23 = *(v19 + v22);
  v63 = qword_1EE1E9DF8;
  *(v1 + qword_1EE1E9DF8) = v23;

  v24 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping;
  swift_beginAccess();
  v62 = v24;
  v25 = *(v19 + v24);
  v26 = qword_1EE2166A0;
  swift_beginAccess();
  *(v1 + v26) = v25;

  v27 = *(v1 + qword_1EE1E9E90);
  v67 = v19;
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
    swift_beginAccess();
    v29 = *(v28 + 48);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
LABEL_39:
      __break(1u);
      return;
    }

    *(v28 + 48) = v31;
    v32 = v31 == 0;
    swift_beginAccess();
    *(v28 + 40) = v32;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v19 = v67;
    if (Strong)
    {
      sub_1E149DEE8();
    }
  }

  v60 = v27;
  v34 = *(v1 + qword_1EE216690);
  if (v34)
  {
    *v5 = 1;
    (*(v3 + 104))(v5, *MEMORY[0x1E69AB450], v2);
    sub_1E1AF509C();
    (*(v3 + 8))(v5, v2);
  }

  v59 = v34;
  v61 = v16;
  sub_1E134FD1C(v19 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_nextPage, &v69, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v72 = 0;
  v73 = 0;
  v35 = qword_1EE216698;
  swift_beginAccess();
  sub_1E136197C(&v69, v1 + v35);
  swift_endAccess();
  v36 = v1 + v35;
  v37 = v67;
  sub_1E136073C(v36, v68);
  sub_1E1AF5BCC();
  sub_1E1360B10(v68);
  sub_1E1360B10(&v69);
  v38 = *(v1 + qword_1EE2166C0);
  v39 = *(v1 + v63);
  v40 = MEMORY[0x1E69E7CC0];
  v68[0] = MEMORY[0x1E69E7CC0];
  v41 = *(v39 + 16);

  if (v41)
  {
    v42 = 0;
    v43 = v39 + 32;
    v58[0] = v41 - 1;
    v58[1] = v38;
    v63 = v39 + 32;
    while (1)
    {
      v44 = v43 + 40 * v42;
      v45 = v42;
      while (1)
      {
        if (v45 >= *(v39 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        sub_1E134E724(v44, &v69);
        if (*(*(v1 + v26) + 16))
        {
          break;
        }

LABEL_20:
        ++v45;
        sub_1E134B88C(&v69);
        v44 += 40;
        if (v41 == v45)
        {
          v37 = v67;
          goto LABEL_31;
        }
      }

      sub_1E135FCF4(&v69);
      if ((v46 & 1) == 0)
      {
        break;
      }

      v47 = sub_1E134B88C(&v69);
      MEMORY[0x1E68FEF20](v47);
      if (*((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v42 = v45 + 1;
      sub_1E1AF62AC();
      v40 = v68[0];
      v48 = v58[0] == v45;
      v37 = v67;
      v43 = v63;
      if (v48)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_20;
  }

LABEL_31:

  v69 = v37;
  v70 = v40;
  v71 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v69, v70, v71);

  sub_1E1A17EAC(v49, 0, v1);

  sub_1E1A09CBC(v37);
  if (v60)
  {
    sub_1E1729254();
  }

  v50 = v66;
  v51 = v65;
  if (v59)
  {
    v52 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    v53 = v67;
    swift_beginAccess();
    v54 = sub_1E1AF3C3C();
    (*(*(v54 - 8) + 16))(v51, v53 + v52, v54);
    v55 = v64;
    (*(v50 + 104))(v51, *MEMORY[0x1E69AB440], v64);
    sub_1E1AF508C();

    (*(v50 + 8))(v51, v55);
  }

  else
  {
  }

  v56 = *v10;
  v57 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  sub_1E1300EA8(v56, v57);
}

void sub_1E1A05EF8()
{
  v1 = v0;
  v2 = sub_1E1AF504C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF503C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + qword_1EE1E9EA0);
  v12 = *(v0 + qword_1EE1E9EA0);
  if (!v12)
  {
    v19 = 0;
LABEL_7:
    v20 = v11[1];
LABEL_17:
    *v11 = 0;
    v11[1] = 0;
    sub_1E1300EA8(v19, v20);
    return;
  }

  v82 = v8;
  v13 = v11[1];

  v15 = v12(v14);
  sub_1E1300EA8(v12, v13);
  if (!v15)
  {
    v19 = *v11;
    goto LABEL_7;
  }

  v79 = v5;
  v78 = v10;
  v16 = *(v1 + qword_1EE1E9E08);
  v75 = v7;
  v83 = v15;
  v80 = v1;
  v77 = v2;
  v76 = v3;
  if (v16)
  {
    v17 = *(v1 + qword_1EE1E9E08 + 8);

    v18 = v16(v15);
    sub_1E1300EA8(v16, v17);
  }

  else
  {

    v18 = v15;
  }

  v21 = sub_1E1302C44(&qword_1ECEB7180, type metadata accessor for SearchChartsAndCategoriesPage, &protocol conformance descriptor for DynamicPage<A>);
  v22 = *(v21 + 56);
  v81 = type metadata accessor for SearchChartsAndCategoriesPage(0);
  v23 = v22(v81, v21);
  v84 = v18;
  swift_beginAccess();
  if (!*(v23 + 16) || (, v24 = sub_1E15A47D8(), v26 = v25, , (v26 & 1) == 0))
  {

LABEL_16:

    v19 = *v11;
    v20 = v11[1];
    goto LABEL_17;
  }

  v27 = *(*(v23 + 56) + 8 * v24);

  v28 = *(v27 + 16);

  if (!v28)
  {

    goto LABEL_16;
  }

  v29 = v80;
  *(v80 + qword_1EE1E9D48) = v84;

  v30 = v22(v81, v21);
  v31 = MEMORY[0x1E69E7CC0];
  if (*(v30 + 16))
  {

    v32 = sub_1E15A47D8();
    v34 = v33;

    if (v34)
    {
      v35 = *(*(v30 + 56) + 8 * v32);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = qword_1EE1E9DF8;
  *(v29 + qword_1EE1E9DF8) = v35;

  v37 = off_1F5C38F58[0];
  v38 = v84;
  off_1F5C38F58[0]();
  v40 = v39;
  v41 = qword_1EE2166A0;
  swift_beginAccess();
  *(v29 + v41) = v40;

  v74 = v38[*(*v38 + 200)];
  v42 = v79;
  if ((v74 & 1) == 0)
  {
    v43 = *(v29 + qword_1EE1E9E90);
    if (v43)
    {
      v44 = *(v43 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v45 = *(v44 + 48);
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
LABEL_51:
        __break(1u);
        return;
      }

      *(v44 + 48) = v47;
      v48 = v47 == 0;
      swift_beginAccess();
      *(v44 + 40) = v48;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    if (*(v29 + qword_1EE216690))
    {
      *v42 = 1;
      v49 = v31;
      v50 = v76;
      v51 = v77;
      (*(v76 + 13))(v42, *MEMORY[0x1E69AB450], v77);
      sub_1E1AF509C();
      (*(v50 + 1))(v42, v51);
      v31 = v49;
    }

    v38 = v84;
    sub_1E134FD1C(&v84[*(*v84 + 192)], &v86, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v89 = 0;
    v90 = 0;
    v52 = qword_1EE216698;
    swift_beginAccess();
    sub_1E136197C(&v86, v29 + v52);
    swift_endAccess();
    sub_1E136073C(v29 + v52, v85);
    sub_1E1AF5BCC();
    sub_1E1360B10(v85);
    sub_1E1360B10(&v86);
  }

  v76 = v37;
  v77 = *(v29 + qword_1EE2166C0);
  v53 = *(v29 + v36);
  v85[0] = v31;
  v54 = *(v53 + 16);

  if (!v54)
  {
    v79 = v31;
    goto LABEL_43;
  }

  v55 = 0;
  v56 = v53 + 32;
  v72 = v54 - 1;
  v79 = MEMORY[0x1E69E7CC0];
  v73 = v53 + 32;
  do
  {
    v57 = v56 + 40 * v55;
    v58 = v55;
    while (1)
    {
      if (v58 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      sub_1E134E724(v57, &v86);
      if (*(*(v29 + v41) + 16))
      {
        break;
      }

LABEL_32:
      ++v58;
      sub_1E134B88C(&v86);
      v57 += 40;
      if (v54 == v58)
      {
        v38 = v84;
        goto LABEL_43;
      }
    }

    sub_1E135FCF4(&v86);
    if ((v59 & 1) == 0)
    {

      goto LABEL_32;
    }

    v60 = sub_1E134B88C(&v86);
    MEMORY[0x1E68FEF20](v60);
    if (*((v85[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v55 = v58 + 1;
    sub_1E1AF62AC();
    v79 = v85[0];
    v38 = v84;
    v56 = v73;
  }

  while (v72 != v58);
LABEL_43:

  v86 = v38;
  v87 = v79;
  v61 = v74;
  v88 = v74;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v86, v87, v88);
  if (v61)
  {
    goto LABEL_48;
  }

  v62 = (v76)(v81);
  sub_1E1A18040(v62, 0, v29);

  sub_1E1A0A2E4(v38);
  if (*(v29 + qword_1EE1E9E90))
  {
    sub_1E1729254();
  }

  v63 = *(v29 + qword_1EE216690);
  v64 = v78;
  if (!v63)
  {
LABEL_48:
  }

  else
  {
    v65 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v66 = sub_1E1AF3C3C();
    (*(*(v66 - 8) + 16))(v64, &v38[v65], v66);
    v67 = v75;
    v68 = v82;
    (*(v75 + 104))(v64, *MEMORY[0x1E69AB440], v82);
    sub_1E1AF508C();

    (*(v67 + 8))(v64, v68);
  }

  v69 = *v11;
  v70 = v11[1];
  *v11 = 0;
  v11[1] = 0;
  sub_1E1300EA8(v69, v70);
}

void sub_1E1A068A8(void (*a1)(uint64_t (*)(uint64_t), uint64_t), void (*a2)(uint64_t (*)(uint64_t), uint64_t), uint64_t (*a3)(void), void (*a4)(void), void (*a5)(uint64_t, __n128))
{
  v81 = a4;
  v10 = v5;
  v11 = sub_1E1AF504C();
  v80 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF503C();
  v15 = *(v14 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v19 = (v10 + qword_1EE1E9EA0);
  v20 = *(v10 + qword_1EE1E9EA0);
  if (!v20)
  {
    v27 = 0;
LABEL_7:
    v28 = v19[1];
    *v19 = 0;
    v19[1] = 0;
    (a1)(v27, v28, v18);
    return;
  }

  v77 = v11;
  v78 = a5;
  v75 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v16;
  v21 = v19[1];

  v23 = v20(v22);
  a1(v20, v21);
  v82 = v23;
  if (!v23)
  {
    v27 = *v19;
    goto LABEL_7;
  }

  v79 = a1;
  v24 = *(v10 + qword_1EE1E9E08);
  v74 = v15;
  if (v24)
  {
    v25 = *(v10 + qword_1EE1E9E08 + 8);

    v26 = v24(v82);
    a2(v24, v25);
  }

  else
  {
    v26 = v82;
  }

  v29 = off_1F5C3AD20[0];
  v30 = a3(0);
  v29(v30, &protocol witness table for GenericPage);
  v32 = *(v31 + 16);

  if (!v32)
  {

    v59 = *v19;
    v60 = v19[1];
    *v19 = 0;
    v19[1] = 0;
    (v79)(v59, v60);
    return;
  }

  *(v10 + qword_1EE1E9D48) = v26;

  v29(v30, &protocol witness table for GenericPage);
  v33 = qword_1EE1E9DF8;
  *(v10 + qword_1EE1E9DF8) = v34;

  v72 = v30;
  v71 = off_1F5C3AD28[0];
  (off_1F5C3AD28[0])(v30, &protocol witness table for GenericPage);
  v36 = v35;
  v37 = qword_1EE2166A0;
  swift_beginAccess();
  *(v10 + v37) = v36;

  LODWORD(v38) = *(v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete);
  if ((v38 & 1) == 0)
  {
    v39 = *(v10 + qword_1EE1E9E90);
    if (v39)
    {
      v40 = *(v39 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v41 = *(v40 + 48);
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
LABEL_42:
        __break(1u);
        return;
      }

      *(v40 + 48) = v43;
      v44 = v43 == 0;
      swift_beginAccess();
      *(v40 + 40) = v44;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    if (*(v10 + qword_1EE216690))
    {
      *v13 = 1;
      v45 = v80;
      v46 = v77;
      (v80)[13](v13, *MEMORY[0x1E69AB450], v77);
      sub_1E1AF509C();
      (v45[1])(v13, v46);
    }

    sub_1E134FD1C(v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &v84, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v87 = 0;
    v88 = 0;
    v47 = qword_1EE216698;
    swift_beginAccess();
    sub_1E136197C(&v84, v10 + v47);
    swift_endAccess();
    sub_1E136073C(v10 + v47, v83);
    sub_1E1AF5BCC();
    sub_1E1360B10(v83);
    sub_1E1360B10(&v84);
  }

  v77 = *(v10 + qword_1EE2166C0);
  v48 = *(v10 + v33);
  v49 = MEMORY[0x1E69E7CC0];
  v83[0] = MEMORY[0x1E69E7CC0];
  v50 = *(v48 + 16);
  v80 = v26;

  if (v50)
  {
    v51 = 0;
    v52 = v48 + 32;
    v69 = v50 - 1;
    v73 = v38;
    v70 = v48 + 32;
    while (1)
    {
      v53 = v52 + 40 * v51;
      v38 = v51;
      while (1)
      {
        if (v38 >= *(v48 + 16))
        {
          __break(1u);
          goto LABEL_42;
        }

        sub_1E134E724(v53, &v84);
        if (*(*(v10 + v37) + 16))
        {
          break;
        }

LABEL_21:
        ++v38;
        sub_1E134B88C(&v84);
        v53 += 40;
        if (v50 == v38)
        {
          LOBYTE(v38) = v73;
          goto LABEL_32;
        }
      }

      sub_1E135FCF4(&v84);
      if ((v54 & 1) == 0)
      {
        break;
      }

      v55 = sub_1E134B88C(&v84);
      MEMORY[0x1E68FEF20](v55);
      if (*((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v51 = v38 + 1;
      sub_1E1AF62AC();
      v49 = v83[0];
      v56 = v69 == v38;
      LOBYTE(v38) = v73;
      v52 = v70;
      if (v56)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_21;
  }

LABEL_32:

  v57 = v80;
  v84 = v80;
  v85 = v49;
  v86 = v38;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v84, v85, v86);
  if (v38)
  {

    v58 = v79;
  }

  else
  {
    (v71)(v72);
    v81();

    (v78)(v57);
    v58 = v79;
    if (*(v10 + qword_1EE1E9E90))
    {
      sub_1E1729254();
    }

    if (*(v10 + qword_1EE216690))
    {
      v61 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
      swift_beginAccess();
      v62 = sub_1E1AF3C3C();
      v63 = v75;
      (*(*(v62 - 8) + 16))(v75, v57 + v61, v62);
      v64 = v74;
      v65 = v76;
      (*(v74 + 104))(v63, *MEMORY[0x1E69AB440], v76);
      sub_1E1AF508C();

      (*(v64 + 8))(v63, v65);
    }

    else
    {
    }
  }

  v66 = *v19;
  v67 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  (v58)(v66, v67);
}

double sub_1E1A0711C(uint64_t a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  v24[0] = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  v21 = v8 - 1;
  v22 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_1E134E724(v12, v25);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_1E134B88C(v25);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v25);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_1E134B88C(v25);
    MEMORY[0x1E68FEF20](v15);
    if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v10 = v13 + 1;
    sub_1E1AF62AC();
    v7 = v24[0];
    v11 = v22;
  }

  while (v21 != v13);
LABEL_12:

  sub_1E19FEB0C(v7, sub_1E1802D7C, 0);
  v6 = v16;

  if (v6 >> 62)
  {
LABEL_20:
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }

LABEL_14:
    v17 = qword_1EE2166C8;
    swift_beginAccess();
    if (!*(v1 + v17))
    {

      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v18 = sub_1E1AF591C();
      __swift_project_value_buffer(v18, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD08, &qword_1E1B4C418);
      v25[0] = v1;

      sub_1E1AF385C();
      sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      v26 = type metadata accessor for TodayPage(0);
      v25[0] = a1;

      sub_1E1AF385C();
      sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      goto LABEL_24;
    }

    sub_1E1A0B124(v6, &qword_1ECEBCD08, &qword_1E1B4C418, sub_1E1A105AC, sub_1E1A10624);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_21:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v26 = type metadata accessor for TodayPage(0);
    v25[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_24:
    sub_1E1AF548C();
  }

  return result;
}

double sub_1E1A07744(uint64_t a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  v24[0] = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  v21 = v8 - 1;
  v22 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_1E134E724(v12, v25);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_1E134B88C(v25);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v25);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_1E134B88C(v25);
    MEMORY[0x1E68FEF20](v15);
    if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v10 = v13 + 1;
    sub_1E1AF62AC();
    v7 = v24[0];
    v11 = v22;
  }

  while (v21 != v13);
LABEL_12:

  sub_1E19FEB0C(v7, sub_1E1802D7C, 0);
  v6 = v16;

  if (v6 >> 62)
  {
LABEL_20:
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }

LABEL_14:
    v17 = qword_1EE2166C8;
    swift_beginAccess();
    if (!*(v1 + v17))
    {

      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v18 = sub_1E1AF591C();
      __swift_project_value_buffer(v18, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCF8, &qword_1E1B4C408);
      v25[0] = v1;

      sub_1E1AF385C();
      sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      v26 = type metadata accessor for ArticlePage(0);
      v25[0] = a1;

      sub_1E1AF385C();
      sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      goto LABEL_24;
    }

    sub_1E1A0B124(v6, &qword_1ECEBCCF8, &qword_1E1B4C408, sub_1E1A1069C, sub_1E1A10714);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_21:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v26 = type metadata accessor for ArticlePage(0);
    v25[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_24:
    sub_1E1AF548C();
  }

  return result;
}

double sub_1E1A07D6C(uint64_t a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  v24[0] = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  v21 = v8 - 1;
  v22 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_1E134E724(v12, v25);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_1E134B88C(v25);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v25);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_1E134B88C(v25);
    MEMORY[0x1E68FEF20](v15);
    if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v10 = v13 + 1;
    sub_1E1AF62AC();
    v7 = v24[0];
    v11 = v22;
  }

  while (v21 != v13);
LABEL_12:

  sub_1E19FEB0C(v7, sub_1E1802D7C, 0);
  v6 = v16;

  if (v6 >> 62)
  {
LABEL_20:
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }

LABEL_14:
    v17 = qword_1EE2166C8;
    swift_beginAccess();
    if (!*(v1 + v17))
    {

      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v18 = sub_1E1AF591C();
      __swift_project_value_buffer(v18, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD10, &qword_1E1B4C420);
      v25[0] = v1;

      sub_1E1AF385C();
      sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      v26 = type metadata accessor for GenericPage(0);
      v25[0] = a1;

      sub_1E1AF385C();
      sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      goto LABEL_24;
    }

    sub_1E1A0B124(v6, &qword_1ECEBCD10, &qword_1E1B4C420, sub_1E1A1078C, sub_1E1A10804);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_21:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v26 = type metadata accessor for GenericPage(0);
    v25[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_24:
    sub_1E1AF548C();
  }

  return result;
}

double sub_1E1A08394(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E1634FCC();
  sub_1E19FEB0C(v5, sub_1E1802D7C, 0);
  v7 = v6;

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = type metadata accessor for ShelfBasedProductPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v8))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCD8, &qword_1E1B4C3E8);
    v12[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v13 = type metadata accessor for ShelfBasedProductPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
    goto LABEL_13;
  }

  sub_1E1A0B124(v7, &qword_1ECEBCCD8, &qword_1E1B4C3E8, sub_1E1A1087C, sub_1E1A108F4);
LABEL_13:

  return result;
}

double sub_1E1A08854(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E1635224();
  sub_1E19FEB0C(v5, sub_1E1802D7C, 0);
  v7 = v6;

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = type metadata accessor for ReviewsPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v8))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCF0, &qword_1E1B4C400);
    v12[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v13 = type metadata accessor for ReviewsPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
    goto LABEL_13;
  }

  sub_1E1A0B124(v7, &qword_1ECEBCCF0, &qword_1E1B4C400, sub_1E1A1096C, sub_1E1A109E4);
LABEL_13:

  return result;
}

double sub_1E1A08D14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E163523C();
  sub_1E19FEB0C(v5, sub_1E1802D7C, 0);
  v7 = v6;

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = type metadata accessor for SearchFocusPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v8))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCE8, &qword_1E1B4C3F8);
    v12[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v13 = type metadata accessor for SearchFocusPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
    goto LABEL_13;
  }

  sub_1E1A0B124(v7, &qword_1ECEBCCE8, &qword_1E1B4C3F8, sub_1E1A10A5C, sub_1E1A10AD4);
LABEL_13:

  return result;
}

double sub_1E1A091D4(uint64_t a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  v24[0] = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  v21 = v8 - 1;
  v22 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_1E134E724(v12, v25);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_1E134B88C(v25);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v25);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_1E134B88C(v25);
    MEMORY[0x1E68FEF20](v15);
    if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v10 = v13 + 1;
    sub_1E1AF62AC();
    v7 = v24[0];
    v11 = v22;
  }

  while (v21 != v13);
LABEL_12:

  sub_1E19FEB0C(v7, sub_1E1802D7C, 0);
  v6 = v16;

  if (v6 >> 62)
  {
LABEL_20:
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }

LABEL_14:
    v17 = qword_1EE2166C8;
    swift_beginAccess();
    if (!*(v1 + v17))
    {

      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v18 = sub_1E1AF591C();
      __swift_project_value_buffer(v18, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD00, &qword_1E1B4C410);
      v25[0] = v1;

      sub_1E1AF385C();
      sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      v26 = type metadata accessor for TopChartSegment(0);
      v25[0] = a1;

      sub_1E1AF385C();
      sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      goto LABEL_24;
    }

    sub_1E1A0B124(v6, &qword_1ECEBCD00, &qword_1E1B4C410, sub_1E1A10B4C, sub_1E1A10BC4);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_21:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v26 = type metadata accessor for TopChartSegment(0);
    v25[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_24:
    sub_1E1AF548C();
  }

  return result;
}

double sub_1E1A097FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E1635410();
  sub_1E19FEB0C(v5, sub_1E1802D7C, 0);
  v7 = v6;

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = type metadata accessor for SearchLandingPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v8))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCB8, &unk_1E1B4C3B8);
    v12[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v13 = type metadata accessor for SearchLandingPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
    goto LABEL_13;
  }

  sub_1E1A0B124(v7, &qword_1ECEBCCB8, &unk_1E1B4C3B8, sub_1E1A10C3C, sub_1E1A10CB4);
LABEL_13:

  return result;
}

double sub_1E1A09CBC(uint64_t a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  v24[0] = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  v21 = v8 - 1;
  v22 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_1E134E724(v12, v25);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_1E134B88C(v25);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v25);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_1E134B88C(v25);
    MEMORY[0x1E68FEF20](v15);
    if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v10 = v13 + 1;
    sub_1E1AF62AC();
    v7 = v24[0];
    v11 = v22;
  }

  while (v21 != v13);
LABEL_12:

  sub_1E19FEB0C(v7, sub_1E1802D7C, 0);
  v6 = v16;

  if (v6 >> 62)
  {
LABEL_20:
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }

LABEL_14:
    v17 = qword_1EE2166C8;
    swift_beginAccess();
    if (!*(v1 + v17))
    {

      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v18 = sub_1E1AF591C();
      __swift_project_value_buffer(v18, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD18, &qword_1E1B4C428);
      v25[0] = v1;

      sub_1E1AF385C();
      sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      v26 = type metadata accessor for SearchResultsPage(0);
      v25[0] = a1;

      sub_1E1AF385C();
      sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      goto LABEL_24;
    }

    sub_1E1A0B124(v6, &qword_1ECEBCD18, &qword_1E1B4C428, sub_1E1A10D2C, sub_1E1A10DA4);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_21:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v26 = type metadata accessor for SearchResultsPage(0);
    v25[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_24:
    sub_1E1AF548C();
  }

  return result;
}

double sub_1E1A0A2E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E1635428();
  sub_1E19FEB0C(v5, sub_1E1802D7C, 0);
  v7 = v6;

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = type metadata accessor for SearchChartsAndCategoriesPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v8))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCD0, &qword_1E1B4C3E0);
    v12[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v13 = type metadata accessor for SearchChartsAndCategoriesPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
    goto LABEL_13;
  }

  sub_1E1A0B124(v7, &qword_1ECEBCCD0, &qword_1E1B4C3E0, sub_1E1A10E1C, sub_1E1A10E94);
LABEL_13:

  return result;
}

double sub_1E1A0A7A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E16356A4();
  sub_1E19FEB0C(v5, sub_1E1802D7C, 0);
  v7 = v6;

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = type metadata accessor for ArcadeSeeAllGamesPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v8))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCE0, &qword_1E1B4C3F0);
    v12[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v13 = type metadata accessor for ArcadeSeeAllGamesPage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
    goto LABEL_13;
  }

  sub_1E1A0B124(v7, &qword_1ECEBCCE0, &qword_1E1B4C3F0, sub_1E1A10F0C, sub_1E1A10F84);
LABEL_13:

  return result;
}

double sub_1E1A0AC64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E16356BC();
  sub_1E19FEB0C(v5, sub_1E1802D7C, 0);
  v7 = v6;

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = type metadata accessor for ArcadePage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v8))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD20, &qword_1E1B4C430);
    v12[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v13 = type metadata accessor for ArcadePage(0);
    v12[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
    goto LABEL_13;
  }

  sub_1E1A0B124(v7, &qword_1ECEBCD20, &qword_1E1B4C430, sub_1E1A10FFC, sub_1E1A11074);
LABEL_13:

  return result;
}

double sub_1E1A0B124(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  v11 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5570, &unk_1E1B16220);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v25 - v13;
  if (a1 >> 62)
  {
    if (sub_1E1AF71CC())
    {
LABEL_3:
      v15 = qword_1EE2166C8;
      swift_beginAccess();
      v16 = *(v5 + v15);
      if (v16)
      {
        v26 = v16;
        sub_1E1A0B724();
        v27 = a5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6940, qword_1E1B21A90);
        sub_1E1302CD4(&qword_1EE1E3C50, &qword_1ECEB6940, qword_1E1B21A90, MEMORY[0x1E69AAEC8]);
        sub_1E1AF3CDC();
        v25[1]._rawValue = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        sub_1E1AF3CEC();
        __swift_destroy_boxed_opaque_existential_1(v28);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
        v18 = *(*(v17 - 8) + 56);
        v18(v14, 0, 1, v17);
        v19 = qword_1EE1E9DD8;
        swift_beginAccess();
        sub_1E1803C04(v14, v9 + v19);
        swift_endAccess();
        v25[0]._rawValue = a1;
        v20 = v26;
        sub_1E1AF3CDC();
        sub_1E1AF3CEC();
        __swift_destroy_boxed_opaque_existential_1(v28);
        v18(v14, 0, 1, v17);
        v21 = qword_1EE1E9DE0;
        swift_beginAccess();
        sub_1E1803C04(v14, v9 + v21);
        swift_endAccess();
        InlineUnifiedMessagePresenter.startListening(for:)(v25[0]);
      }

      else
      {
        if (qword_1EE1E35C0 != -1)
        {
          swift_once();
        }

        v23 = sub_1E1AF591C();
        __swift_project_value_buffer(v23, qword_1EE1E35C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF388C();
        sub_1E1AF387C();
        v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v28[0] = v5;

        sub_1E1AF385C();
        sub_1E1308058(v28, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1AF387C();
        sub_1E1AF38AC();
        sub_1E1AF548C();
      }

      return result;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v24 = sub_1E1AF591C();
  __swift_project_value_buffer(v24, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  return result;
}

uint64_t sub_1E1A0B724()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5570, &unk_1E1B16220);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8, &unk_1E1B16230);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20[-v12];
  v14 = qword_1EE1E9DD8;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v14, v6, &qword_1ECEB5570, &unk_1E1B16220);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &qword_1ECEB5570, &unk_1E1B16220);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v16 = qword_1EE2166C8;
    swift_beginAccess();
    if (*(v0 + v16))
    {

      sub_1E1AF35AC();
    }

    (*(v8 + 8))(v13, v7);
  }

  v17 = qword_1EE1E9DE0;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v17, v3, &qword_1ECEB5570, &unk_1E1B16220);
  if (v15(v3, 1, v7) == 1)
  {
    return sub_1E1308058(v3, &qword_1ECEB5570, &unk_1E1B16220);
  }

  (*(v8 + 32))(v10, v3, v7);
  v19 = qword_1EE2166C8;
  swift_beginAccess();
  if (*(v0 + v19))
  {

    sub_1E1AF35AC();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E1A0BA8C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  if (qword_1EE1E35C0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v28 = MEMORY[0x1E69E6158];
  v26 = a1;
  v27 = a2;

  sub_1E1AF38BC();
  sub_1E1308058(&v26, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  v9 = *(v5 + qword_1EE1E9D48);
  if (v9)
  {
    v10 = *a3;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    sub_1E19FEFBC(v11, a1, a2, 0);
    v13 = v12;

    *(v9 + v10) = v13;
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v14 = qword_1EE2166A0;
  swift_beginAccess();

  sub_1E1A193BC(v15, a1, a2, 0);
  v17 = v16;

  *(v5 + v14) = v17;

  a1 = *(v5 + qword_1EE1E9DF8);
  v18 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v19 = *(a1 + 16);

  if (v19)
  {
    a3 = 0;
    v20 = a1 + 32;
    while (1)
    {
      v21 = v20 + 40 * a3;
      v22 = a3;
      while (1)
      {
        if (v22 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        sub_1E134E724(v21, &v26);
        if (*(*(v5 + v14) + 16))
        {
          break;
        }

LABEL_8:
        v22 = (v22 + 1);
        sub_1E134B88C(&v26);
        v21 += 40;
        if (v19 == v22)
        {
          goto LABEL_16;
        }
      }

      sub_1E135FCF4(&v26);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = sub_1E134B88C(&v26);
      MEMORY[0x1E68FEF20](v24);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      a3 = (v22 + 1);
      sub_1E1AF62AC();
      v18 = v29;
      v20 = a1 + 32;
      if ((v19 - 1) == v22)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_8;
  }

LABEL_16:

  v26 = v18;
  LOBYTE(v27) = 0;
  sub_1E1AF5BCC();
  sub_1E1360914(v26, v27);
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E1A0BEA8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  if (qword_1EE1E35C0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v28 = MEMORY[0x1E69E6158];
  v26 = a1;
  v27 = a2;

  sub_1E1AF38BC();
  sub_1E1308058(&v26, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  v9 = *(v5 + qword_1EE1E9D48);
  if (v9)
  {
    v10 = *a3;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    sub_1E19FEFBC(v11, a1, a2, 1);
    v13 = v12;

    *(v9 + v10) = v13;
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v14 = qword_1EE2166A0;
  swift_beginAccess();

  sub_1E1A193BC(v15, a1, a2, 1);
  v17 = v16;

  *(v5 + v14) = v17;

  a1 = *(v5 + qword_1EE1E9DF8);
  v18 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v19 = *(a1 + 16);

  if (v19)
  {
    a3 = 0;
    v20 = a1 + 32;
    while (1)
    {
      v21 = v20 + 40 * a3;
      v22 = a3;
      while (1)
      {
        if (v22 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        sub_1E134E724(v21, &v26);
        if (*(*(v5 + v14) + 16))
        {
          break;
        }

LABEL_8:
        v22 = (v22 + 1);
        sub_1E134B88C(&v26);
        v21 += 40;
        if (v19 == v22)
        {
          goto LABEL_16;
        }
      }

      sub_1E135FCF4(&v26);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = sub_1E134B88C(&v26);
      MEMORY[0x1E68FEF20](v24);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      a3 = (v22 + 1);
      sub_1E1AF62AC();
      v18 = v29;
      v20 = a1 + 32;
      if ((v19 - 1) == v22)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_8;
  }

LABEL_16:

  v26 = v18;
  LOBYTE(v27) = 0;
  sub_1E1AF5BCC();
  sub_1E1360914(v26, v27);
  return swift_bridgeObjectRelease_n();
}

double sub_1E1A0C2DC(unint64_t a1, uint64_t (*a2)(void))
{
  v20[0] = MEMORY[0x1E69E7CC0];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v4 = sub_1E1AF71CC();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E68FFD80](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(a1 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v9 = OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics;
    swift_beginAccess();
    v10 = *(v7 + v9);

    ++v5;
    if (v10)
    {
      MEMORY[0x1E68FEF20](v11);
      if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v6 = v20[0];
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    v12 = v16;
    if (!sub_1E1AF71CC())
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = v16;
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }
  }

  v13 = *(v12 + qword_1EE1E9D48);
  if (v13)
  {
    v18 = a2(0);
    v19 = &protocol witness table for BasePage;
    *&v17 = v13;
    sub_1E1308EC0(&v17, v20);

    sub_1E1A19158(v6, v20, v12);

    __swift_destroy_boxed_opaque_existential_1(v20);
    return result;
  }

LABEL_23:

  return result;
}

uint64_t (*sub_1E1A0C544(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1E1A14AA0(v6, a2, a3);
  return sub_1E1A1E03C;
}

uint64_t (*sub_1E1A0C5CC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1E1A14B4C(v6, a2, a3);
  return sub_1E1A1E03C;
}

void (*sub_1E1A0C654(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xB0uLL);
  }

  v5 = v4;
  *a1 = v4;
  sub_1E141D0E8(a2, v4);
  *(v5 + 168) = sub_1E1A14BF8((v5 + 136), v5);
  return sub_1E1A0C6DC;
}

void sub_1E1A0C6DC(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 168))();
  sub_1E141D144(v1);

  free(v1);
}

uint64_t (*sub_1E1A0C730(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = sub_1E1A14D1C(v10, a2, a3, a4, a5 & 1);
  return sub_1E1A0C7D0;
}

void sub_1E1A0C7D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1E1A0C820(void *a1, uint64_t a2)
{
  v3 = sub_1E1AF503C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EE2166D0) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v15 = a1;
    v16 = 0;
    v17 = 0x80;
    v8 = a1;
    sub_1E1AF5BCC();

    sub_1E1A1DDBC(v15, v16, v17);
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + qword_1EE1E9E90);

    if (v10)
    {
      sub_1E1729254();
    }
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + qword_1EE216690);

    if (v12)
    {
      *v6 = a1;
      (*(v4 + 104))(v6, *MEMORY[0x1E69AB430], v3);
      v13 = a1;
      sub_1E1AF508C();

      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_1E1A0CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  *&v151 = a3;
  v139 = a1;
  *&v150 = sub_1E1AF591C();
  v7 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF503C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = *(Strong + qword_1EE1E9D48);
  if (!v14)
  {
LABEL_88:

    return;
  }

  v134 = qword_1EE1E9D48;
  v144 = Strong;
  v15 = *(Strong + qword_1EE216690);
  v133 = a5;
  v137 = a4;
  if (v15)
  {
    *v12 = 0;
    (*(v10 + 104))(v12, *MEMORY[0x1E69AB438], v9);

    sub_1E1AF508C();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
  }

  v16 = MEMORY[0x1E69E7CC0];
  v143 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
  v135 = sub_1E159E9C4(v16);
  v17 = *(v139 + 16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v148 = qword_1EE2166A0;
  v22 = *v137;
  v132 = qword_1EE1E9DE8;
  v140 = v17;

  v152 = v14;
  v147 = v22;
  swift_beginAccess();
  v23 = v144;
  swift_beginAccess();
  v24 = 0;
  v136 = 0;
  v25 = ((v19 + 63) >> 6);
  v146 = (v7 + 8);
  v145 = xmmword_1E1B02CD0;
  v138 = v25;
  while (1)
  {
    if (v21)
    {
      v26 = v152;
    }

    else
    {
      v26 = v152;
      do
      {
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_91;
        }

        if (v27 >= v25)
        {
          goto LABEL_33;
        }

        v21 = *(v18 + 8 * v27);
        ++v24;
      }

      while (!v21);
      v24 = v27;
    }

    v28 = __clz(__rbit64(v21)) | (v24 << 6);
    v29 = v140;
    sub_1E134E724(*(v140 + 48) + 40 * v28, &v160);
    v30 = *(*(v29 + 56) + 8 * v28);
    v141 = v160;
    v31 = v162;
    v142 = v161;
    v32 = *(&v161 + 1);

    if (!v32)
    {
      break;
    }

    v21 &= v21 - 1;
    v160 = v141;
    v161 = v142;
    v162 = v31;
    if (v30[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched])
    {
      if (!*(*(v26 + v147) + 16))
      {
        goto LABEL_21;
      }

      sub_1E135FCF4(&v160);
      if ((v33 & 1) == 0)
      {

LABEL_21:
        v34 = v18;
        v35 = v23;
        v36 = v149;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v145;
        sub_1E1AF382C();
        *(&v156 + 1) = MEMORY[0x1E69E69B8];
        *&v155 = swift_allocObject();
        sub_1E134E724(&v160, v155 + 16);
        sub_1E1AF38BC();
        sub_1E1308058(&v155, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v37 = v150;
        sub_1E1AF54AC();

        v38 = v36;
        v23 = v35;
        v18 = v34;
        v25 = v138;
        (*v146)(v38, v37);
        goto LABEL_22;
      }

      v46 = v136;
      v47 = Shelf.mergingWith(_:)(v30);
      v136 = v46;
      if (!v46)
      {
        v48 = v47;
        v49 = v143;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v155 = v49;
        sub_1E1598874(v48, &v160, isUniquelyReferenced_nonNull_native);

        goto LABEL_30;
      }

      v53 = v135;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      *&v155 = v53;
      sub_1E1598734(v136, &v160, v54);

      v135 = v155;
      sub_1E134B88C(&v160);
      v136 = 0;
    }

    else
    {
      v39 = *(v23 + v148);
      v40 = v143;
      if (!*(v39 + 16))
      {
        goto LABEL_29;
      }

      v41 = sub_1E135FCF4(&v160);
      if ((v42 & 1) == 0)
      {

LABEL_29:

        v51 = swift_isUniquelyReferenced_nonNull_native();
        *&v155 = v40;
        sub_1E1598874(v30, &v160, v51);
LABEL_30:
        v143 = v155;
        goto LABEL_31;
      }

      v43 = *(*(v39 + 56) + 8 * v41);

      sub_1E134E724(v43 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v153);

      v155 = v153[0];
      v156 = v153[1];
      v157 = v154;
      v44 = Shelf.withId(_:)(&v155);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      *&v153[0] = v40;
      sub_1E1598874(v44, &v160, v45);
      v143 = *&v153[0];
      sub_1E134B88C(&v155);
LABEL_31:
      v52 = v132;
      swift_beginAccess();
      sub_1E154E438(&v160, &v155);
      sub_1E1308058(&v155, &unk_1ECEB5670, qword_1E1B03EC0);
      swift_endAccess();
      sub_1E19FF980(*(*(v23 + v52) + 16) != 0);

LABEL_22:
      sub_1E134B88C(&v160);
    }
  }

LABEL_33:

  v55 = *(v139 + 24);
  v58 = *(v55 + 64);
  v57 = v55 + 64;
  v56 = v58;
  v59 = 1 << *(*(v139 + 24) + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & v56;
  v62 = (v59 + 63) >> 6;
  *&v142 = *(v139 + 24);

  v63 = 0;
  *&v141 = v57;
  v140 = v62;
  if (v61)
  {
    while (1)
    {
LABEL_43:
      while (1)
      {
        v69 = __clz(__rbit64(v61)) | (v63 << 6);
        v70 = (*(v142 + 48) + 16 * v69);
        v71 = *v70;
        v72 = v70[1];
        v73 = *(*(v142 + 56) + 8 * v69);
        v74 = *(v152 + v147);
        v61 &= v61 - 1;
        *&v155 = *v70;
        *(&v155 + 1) = v72;
        swift_bridgeObjectRetain_n();
        v75 = v73;

        sub_1E1AF6F6C();
        if (*(v74 + 16))
        {
          break;
        }

        sub_1E134B88C(&v160);

LABEL_38:
        v64 = v149;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        v65 = v73;
        *(swift_allocObject() + 16) = v145;
        sub_1E1AF382C();
        *(&v161 + 1) = MEMORY[0x1E69E6158];
        *&v160 = v71;
        *(&v160 + 1) = v72;
        v23 = v144;
        sub_1E1AF38DC();
        sub_1E1308058(&v160, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v66 = v150;
        sub_1E1AF54AC();

        v67 = v65;
        v62 = v140;

        (*v146)(v64, v66);
        v57 = v141;
        if (!v61)
        {
          goto LABEL_39;
        }
      }

      sub_1E135FCF4(&v160);
      v77 = v76;
      sub_1E134B88C(&v160);

      if ((v77 & 1) == 0)
      {
        goto LABEL_38;
      }

      *&v155 = v71;
      *(&v155 + 1) = v72;

      sub_1E1AF6F6C();
      v78 = v73;
      v79 = v135;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      *&v155 = v79;
      v138 = v73;
      sub_1E1598734(v73, &v160, v80);
      sub_1E134B88C(&v160);
      v81 = v155;
      swift_beginAccess();
      *&v160 = v71;
      *(&v160 + 1) = v72;

      sub_1E1AF6F6C();
      sub_1E1A15698(&v155, &v160);
      sub_1E134B88C(&v155);
      v135 = v81;
      if (*(&v161 + 1))
      {
        v155 = v160;
        v156 = v161;
        v157 = v162;
        sub_1E1AF6F4C();
        sub_1E134B88C(&v155);
        swift_dynamicCast();
      }

      else
      {
        v158 = 0;
        v159 = 0;
      }

      v57 = v141;

      swift_endAccess();

      sub_1E19FF980(*(*(v23 + v132) + 16) != 0);

      if (!v61)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
LABEL_39:
    v68 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v68 >= v62)
    {
      break;
    }

    v61 = *(v57 + 8 * v68);
    ++v63;
    if (v61)
    {
      v63 = v68;
      goto LABEL_43;
    }
  }

  v82 = v143 + 64;
  v83 = 1 << *(v143 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v143 + 64);
  v86 = (v83 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v87 = 0;
  while (1)
  {
    if (!v85)
    {
      while (1)
      {
        v88 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_92;
        }

        if (v88 >= v86)
        {
          goto LABEL_70;
        }

        v85 = *(v82 + 8 * v88);
        ++v87;
        if (v85)
        {
          v87 = v88;
          break;
        }
      }
    }

    v89 = __clz(__rbit64(v85)) | (v87 << 6);
    v90 = v143;
    sub_1E134E724(*(v143 + 48) + 40 * v89, &v160);
    v91 = *(*(v90 + 56) + 8 * v89);
    v150 = v160;
    v92 = v162;
    v151 = v161;
    v93 = *(&v161 + 1);

    if (!v93)
    {
      break;
    }

    v160 = v150;
    v161 = v151;
    v162 = v92;
    v94 = v148;
    swift_beginAccess();

    v95 = swift_isUniquelyReferenced_nonNull_native();
    *&v153[0] = *(v23 + v94);
    v96 = *&v153[0];
    *(v23 + v94) = 0x8000000000000000;
    v97 = sub_1E135FCF4(&v160);
    v99 = *(v96 + 16);
    v100 = (v98 & 1) == 0;
    v101 = __OFADD__(v99, v100);
    v102 = v99 + v100;
    if (v101)
    {
      goto LABEL_94;
    }

    v103 = v98;
    if (*(v96 + 24) >= v102)
    {
      if ((v95 & 1) == 0)
      {
        v109 = v97;
        sub_1E1415C9C();
        v97 = v109;
      }
    }

    else
    {
      sub_1E16889E4(v102, v95);
      v97 = sub_1E135FCF4(&v160);
      if ((v103 & 1) != (v104 & 1))
      {
        goto LABEL_96;
      }
    }

    v105 = *&v153[0];
    if (v103)
    {
      *(*(*&v153[0] + 56) + 8 * v97) = v91;

      sub_1E134B88C(&v160);
    }

    else
    {
      *(*&v153[0] + 8 * (v97 >> 6) + 64) |= 1 << v97;
      v106 = v97;
      sub_1E134E724(&v160, v105[6] + 40 * v97);
      *(v105[7] + 8 * v106) = v91;
      sub_1E134B88C(&v160);
      v107 = v105[2];
      v101 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v101)
      {
        goto LABEL_95;
      }

      v105[2] = v108;
    }

    v85 &= v85 - 1;
    *(v23 + v148) = v105;
    swift_endAccess();
  }

LABEL_70:

  v110 = *(v23 + v134);
  if (v110)
  {
    v111 = *v137;
    swift_beginAccess();

    v113 = v136;
    sub_1E19FF54C(v112, v144);
    v115 = v114;
    v136 = v113;

    *(v110 + v111) = v115;
    v23 = v144;
  }

  v116 = *(v23 + qword_1EE1E9DF8);
  v117 = MEMORY[0x1E69E7CC0];
  *&v153[0] = MEMORY[0x1E69E7CC0];
  v118 = *(v116 + 16);

  if (!v118)
  {
LABEL_83:

    v125 = v143;
    *&v160 = v117;
    *(&v160 + 1) = v143;
    *&v161 = v135;
    *(&v161 + 1) = v139;
    v162 = 0;

    sub_1E1AF5BCC();
    v126 = v162;

    v127 = *(v125 + 16);
    if (v127)
    {
      v128 = sub_1E154713C();
      v129 = sub_1E1547130();
      v130 = v160;

      sub_1E1337ECC(v130);
      if (v129 == v127)
      {
LABEL_87:
        sub_1E1A0C2DC(v128, v133);

        goto LABEL_88;
      }

      __break(1u);
    }

    v128 = MEMORY[0x1E69E7CC0];
    goto LABEL_87;
  }

  v119 = 0;
  *&v151 = v118 - 1;
LABEL_74:
  v120 = v116 + 32 + 40 * v119;
  v121 = v119;
  v122 = v148;
  while (v121 < *(v116 + 16))
  {
    sub_1E134E724(v120, &v160);
    if (*(*(v23 + v122) + 16))
    {

      sub_1E135FCF4(&v160);
      if (v123)
      {

        v124 = sub_1E134B88C(&v160);
        MEMORY[0x1E68FEF20](v124);
        if (*((*&v153[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v153[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        v119 = v121 + 1;
        sub_1E1AF62AC();
        v117 = *&v153[0];
        if (v151 != v121)
        {
          goto LABEL_74;
        }

        goto LABEL_83;
      }
    }

    ++v121;
    sub_1E134B88C(&v160);
    v120 += 40;
    if (v118 == v121)
    {
      goto LABEL_83;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  sub_1E1AF757C();
  __break(1u);
}

void sub_1E1A0DCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  *&v151 = a4;
  *&v150 = a3;
  v139 = a1;
  v149 = sub_1E1AF591C();
  v6 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF503C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!*(Strong + qword_1EE1E9D48))
  {
LABEL_86:

    return;
  }

  v135 = qword_1EE1E9D48;
  v142 = Strong;
  v13 = *(Strong + qword_1EE216690);
  v134 = a5;
  if (v13)
  {
    *v11 = 0;
    (*(v9 + 104))(v11, *MEMORY[0x1E69AB438], v8);

    sub_1E1AF508C();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
  }

  v14 = MEMORY[0x1E69E7CC0];
  v146 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
  v136 = sub_1E159E9C4(v14);
  v15 = *(v139 + 16);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v147 = qword_1EE2166A0;
  v133 = qword_1EE1E9DE8;
  v140 = v15;

  v20 = v142;
  swift_beginAccess();
  v21 = 0;
  v137 = 0;
  v22 = (v17 + 63) >> 6;
  v145 = (v6 + 8);
  v144 = xmmword_1E1B02CD0;
  v138 = v16;
  while (1)
  {
    if (!v19)
    {
      do
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_89;
        }

        if (v23 >= v22)
        {
          goto LABEL_29;
        }

        v19 = *(v16 + 8 * v23);
        ++v21;
      }

      while (!v19);
      v21 = v23;
    }

    v24 = __clz(__rbit64(v19)) | (v21 << 6);
    v25 = v140;
    sub_1E134E724(*(v140 + 48) + 40 * v24, &v160);
    v26 = *(*(v25 + 56) + 8 * v24);
    v141 = v160;
    v27 = v162;
    v143 = v161;
    v28 = *(&v161 + 1);

    if (!v28)
    {
      break;
    }

    v19 &= v19 - 1;
    v160 = v141;
    v161 = v143;
    v162 = v27;
    if (v26[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched])
    {
      v29 = off_1F5C3AD28[0];
      v30 = (v151)(0);
      v29(v30, &protocol witness table for GenericPage);
      if (!*(v31 + 16) || (sub_1E135FCF4(&v160), (v32 & 1) == 0))
      {

        v33 = v20;
        v34 = v148;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v144;
        sub_1E1AF382C();
        *(&v156 + 1) = MEMORY[0x1E69E69B8];
        *&v155 = swift_allocObject();
        sub_1E134E724(&v160, v155 + 16);
        sub_1E1AF38BC();
        sub_1E1308058(&v155, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v35 = v149;
        sub_1E1AF54AC();

        v36 = v34;
        v20 = v33;
        (*v145)(v36, v35);
        sub_1E134B88C(&v160);
        goto LABEL_19;
      }

      v44 = v137;
      v45 = Shelf.mergingWith(_:)(v26);
      v137 = v44;
      if (!v44)
      {
        v46 = v45;
        v47 = v146;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v155 = v47;
        sub_1E1598874(v46, &v160, isUniquelyReferenced_nonNull_native);

        v146 = v155;
        v16 = v138;
        goto LABEL_27;
      }

      v52 = v136;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *&v155 = v52;
      sub_1E1598734(v137, &v160, v53);

      v136 = v155;
      sub_1E134B88C(&v160);
      v137 = 0;
LABEL_19:
      v16 = v138;
    }

    else
    {
      v37 = *(v20 + v147);
      if (*(v37 + 16))
      {

        v38 = sub_1E135FCF4(&v160);
        if (v39)
        {
          v40 = *(*(v37 + 56) + 8 * v38);

          sub_1E134E724(v40 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v153);

          v155 = v153[0];
          v156 = v153[1];
          v157 = v154;
          v41 = Shelf.withId(_:)(&v155);
          v42 = v146;
          v43 = swift_isUniquelyReferenced_nonNull_native();
          *&v153[0] = v42;
          sub_1E1598874(v41, &v160, v43);
          v146 = *&v153[0];
          sub_1E134B88C(&v155);
          goto LABEL_27;
        }
      }

      v49 = v146;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *&v155 = v49;
      sub_1E1598874(v26, &v160, v50);
      v146 = v155;
LABEL_27:
      v51 = v133;
      swift_beginAccess();
      sub_1E154E438(&v160, &v155);
      sub_1E1308058(&v155, &unk_1ECEB5670, qword_1E1B03EC0);
      swift_endAccess();
      sub_1E19FF980(*(*(v20 + v51) + 16) != 0);

      sub_1E134B88C(&v160);
    }
  }

LABEL_29:

  v54 = *(v139 + 24);
  v57 = *(v54 + 64);
  v56 = v54 + 64;
  v55 = v57;
  v58 = 1 << *(*(v139 + 24) + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & v55;
  v61 = (v58 + 63) >> 6;
  *&v141 = *(v139 + 24);

  v62 = 0;
  v140 = v56;
  v138 = v61;
  if (v60)
  {
    while (1)
    {
LABEL_39:
      while (1)
      {
        v66 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        v67 = v66 | (v62 << 6);
        v68 = (*(v141 + 48) + 16 * v67);
        v70 = *v68;
        v69 = v68[1];
        v71 = *(*(v141 + 56) + 8 * v67);
        v72 = off_1F5C3AD28[0];
        v73 = (v151)(0);
        v72(v73, &protocol witness table for GenericPage);
        v75 = v74;
        *&v155 = v70;
        *(&v155 + 1) = v69;
        swift_bridgeObjectRetain_n();
        v76 = v71;
        v77 = MEMORY[0x1E69E6158];
        sub_1E1AF6F6C();
        if (*(v75 + 16))
        {
          break;
        }

        sub_1E134B88C(&v160);

LABEL_34:
        *&v143 = v71;
        v63 = v148;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v144;
        sub_1E1AF382C();
        *(&v161 + 1) = v77;
        *&v160 = v70;
        *(&v160 + 1) = v69;
        sub_1E1AF38DC();
        sub_1E1308058(&v160, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v64 = v149;
        sub_1E1AF54AC();

        v61 = v138;

        (*v145)(v63, v64);
        v20 = v142;
        v56 = v140;
        if (!v60)
        {
          goto LABEL_35;
        }
      }

      sub_1E135FCF4(&v160);
      v79 = v78;
      sub_1E134B88C(&v160);

      if ((v79 & 1) == 0)
      {
        goto LABEL_34;
      }

      *&v155 = v70;
      *(&v155 + 1) = v69;

      sub_1E1AF6F6C();
      v80 = v71;
      v81 = v136;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *&v155 = v81;
      sub_1E1598734(v71, &v160, v82);
      sub_1E134B88C(&v160);
      v136 = v155;
      v20 = v142;
      swift_beginAccess();
      *&v160 = v70;
      *(&v160 + 1) = v69;

      sub_1E1AF6F6C();
      sub_1E1A15698(&v155, &v160);
      sub_1E134B88C(&v155);
      if (*(&v161 + 1))
      {
        v155 = v160;
        v156 = v161;
        v157 = v162;
        sub_1E1AF6F4C();
        sub_1E134B88C(&v155);
        swift_dynamicCast();
      }

      else
      {
        v158 = 0;
        v159 = 0;
      }

      v56 = v140;

      swift_endAccess();

      sub_1E19FF980(*(*(v20 + v133) + 16) != 0);

      if (!v60)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v65 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v65 >= v61)
    {
      break;
    }

    v60 = *(v56 + 8 * v65);
    ++v62;
    if (v60)
    {
      v62 = v65;
      goto LABEL_39;
    }
  }

  v83 = v146 + 64;
  v84 = 1 << *(v146 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & *(v146 + 64);
  v87 = (v84 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v88 = 0;
  while (1)
  {
    if (!v86)
    {
      v89 = v146;
      while (1)
      {
        v90 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_90;
        }

        if (v90 >= v87)
        {
          goto LABEL_68;
        }

        v86 = *(v83 + 8 * v90);
        ++v88;
        if (v86)
        {
          v88 = v90;
          goto LABEL_58;
        }
      }
    }

    v89 = v146;
LABEL_58:
    v91 = __clz(__rbit64(v86)) | (v88 << 6);
    v92 = v89;
    sub_1E134E724(*(v89 + 48) + 40 * v91, &v160);
    v93 = *(*(v92 + 56) + 8 * v91);
    v150 = v160;
    v94 = v162;
    v151 = v161;
    v95 = *(&v161 + 1);

    if (!v95)
    {
      break;
    }

    v160 = v150;
    v161 = v151;
    v162 = v94;
    v96 = v147;
    swift_beginAccess();

    v97 = swift_isUniquelyReferenced_nonNull_native();
    *&v153[0] = *(v20 + v96);
    v98 = *&v153[0];
    *(v20 + v96) = 0x8000000000000000;
    v99 = sub_1E135FCF4(&v160);
    v101 = *(v98 + 16);
    v102 = (v100 & 1) == 0;
    v103 = __OFADD__(v101, v102);
    v104 = v101 + v102;
    if (v103)
    {
      goto LABEL_92;
    }

    v105 = v100;
    if (*(v98 + 24) >= v104)
    {
      if ((v97 & 1) == 0)
      {
        v111 = v99;
        sub_1E1415C9C();
        v99 = v111;
      }
    }

    else
    {
      sub_1E16889E4(v104, v97);
      v99 = sub_1E135FCF4(&v160);
      if ((v105 & 1) != (v106 & 1))
      {
        goto LABEL_94;
      }
    }

    v107 = *&v153[0];
    if (v105)
    {
      *(*(*&v153[0] + 56) + 8 * v99) = v93;

      sub_1E134B88C(&v160);
    }

    else
    {
      *(*&v153[0] + 8 * (v99 >> 6) + 64) |= 1 << v99;
      v108 = v99;
      sub_1E134E724(&v160, v107[6] + 40 * v99);
      *(v107[7] + 8 * v108) = v93;
      sub_1E134B88C(&v160);
      v109 = v107[2];
      v103 = __OFADD__(v109, 1);
      v110 = v109 + 1;
      if (v103)
      {
        goto LABEL_93;
      }

      v107[2] = v110;
    }

    v86 &= v86 - 1;
    *(v20 + v147) = v107;
    swift_endAccess();
  }

LABEL_68:

  v112 = *(v20 + v135);
  if (v112)
  {
    v113 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;
    swift_beginAccess();

    v115 = v137;
    sub_1E19FF54C(v114, v142);
    v117 = v116;
    v137 = v115;

    *(v112 + v113) = v117;
    v20 = v142;
  }

  v118 = *(v20 + qword_1EE1E9DF8);
  v119 = MEMORY[0x1E69E7CC0];
  *&v153[0] = MEMORY[0x1E69E7CC0];
  v120 = *(v118 + 16);

  if (!v120)
  {
LABEL_81:

    v127 = v146;
    *&v160 = v119;
    *(&v160 + 1) = v146;
    *&v161 = v136;
    *(&v161 + 1) = v139;
    v162 = 0;

    sub_1E1AF5BCC();
    v128 = v162;

    v129 = *(v127 + 16);
    if (v129)
    {
      v130 = sub_1E154713C();
      v131 = sub_1E1547130();
      v132 = v160;

      sub_1E1337ECC(v132);
      if (v131 == v129)
      {
LABEL_85:
        sub_1E1A0C2DC(v130, v134);

        goto LABEL_86;
      }

      __break(1u);
    }

    v130 = MEMORY[0x1E69E7CC0];
    goto LABEL_85;
  }

  v121 = 0;
  *&v151 = v120 - 1;
LABEL_72:
  v122 = v118 + 32 + 40 * v121;
  v123 = v121;
  v124 = v147;
  while (v123 < *(v118 + 16))
  {
    sub_1E134E724(v122, &v160);
    if (*(*(v20 + v124) + 16))
    {

      sub_1E135FCF4(&v160);
      if (v125)
      {

        v126 = sub_1E134B88C(&v160);
        MEMORY[0x1E68FEF20](v126);
        if (*((*&v153[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v153[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        v121 = v123 + 1;
        sub_1E1AF62AC();
        v119 = *&v153[0];
        if (v151 != v123)
        {
          goto LABEL_72;
        }

        goto LABEL_81;
      }
    }

    ++v123;
    sub_1E134B88C(&v160);
    v122 += 40;
    if (v120 == v123)
    {
      goto LABEL_81;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  sub_1E1AF757C();
  __break(1u);
}

void sub_1E1A0EF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  *&v149 = a4;
  *&v148 = a3;
  v137 = a1;
  v147 = sub_1E1AF591C();
  v6 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF503C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!*(Strong + qword_1EE1E9D48))
  {
LABEL_86:

    return;
  }

  v133 = qword_1EE1E9D48;
  v140 = Strong;
  v13 = *(Strong + qword_1EE216690);
  v132 = a5;
  if (v13)
  {
    *v11 = 0;
    (*(v9 + 104))(v11, *MEMORY[0x1E69AB438], v8);

    sub_1E1AF508C();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
  }

  v14 = MEMORY[0x1E69E7CC0];
  v144 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
  v134 = sub_1E159E9C4(v14);
  v15 = *(v137 + 16);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v145 = qword_1EE2166A0;
  v131 = qword_1EE1E9DE8;
  v138 = v15;

  v20 = v140;
  swift_beginAccess();
  v21 = 0;
  v135 = 0;
  v22 = (v17 + 63) >> 6;
  v143 = (v6 + 8);
  v142 = xmmword_1E1B02CD0;
  v136 = v16;
  while (1)
  {
    if (!v19)
    {
      do
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_89;
        }

        if (v23 >= v22)
        {
          goto LABEL_29;
        }

        v19 = *(v16 + 8 * v23);
        ++v21;
      }

      while (!v19);
      v21 = v23;
    }

    v24 = __clz(__rbit64(v19)) | (v21 << 6);
    v25 = v138;
    sub_1E134E724(*(v138 + 48) + 40 * v24, &v158);
    v26 = *(*(v25 + 56) + 8 * v24);
    v139 = v158;
    v27 = v160;
    v141 = v159;
    v28 = *(&v159 + 1);

    if (!v28)
    {
      break;
    }

    v19 &= v19 - 1;
    v158 = v139;
    v159 = v141;
    v160 = v27;
    if (v26[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched])
    {
      v29 = off_1F5C38F58[0];
      (v149)(0);
      v29();
      if (!*(v30 + 16) || (sub_1E135FCF4(&v158), (v31 & 1) == 0))
      {

        v32 = v20;
        v33 = v146;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v142;
        sub_1E1AF382C();
        *(&v154 + 1) = MEMORY[0x1E69E69B8];
        *&v153 = swift_allocObject();
        sub_1E134E724(&v158, v153 + 16);
        sub_1E1AF38BC();
        sub_1E1308058(&v153, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v34 = v147;
        sub_1E1AF54AC();

        v35 = v33;
        v20 = v32;
        (*v143)(v35, v34);
        sub_1E134B88C(&v158);
        goto LABEL_19;
      }

      v43 = v135;
      v44 = Shelf.mergingWith(_:)(v26);
      v135 = v43;
      if (!v43)
      {
        v45 = v44;
        v46 = v144;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v153 = v46;
        sub_1E1598874(v45, &v158, isUniquelyReferenced_nonNull_native);

        v144 = v153;
        v16 = v136;
        goto LABEL_27;
      }

      v51 = v134;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v51;
      sub_1E1598734(v135, &v158, v52);

      v134 = v153;
      sub_1E134B88C(&v158);
      v135 = 0;
LABEL_19:
      v16 = v136;
    }

    else
    {
      v36 = *(v20 + v145);
      if (*(v36 + 16))
      {

        v37 = sub_1E135FCF4(&v158);
        if (v38)
        {
          v39 = *(*(v36 + 56) + 8 * v37);

          sub_1E134E724(v39 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v151);

          v153 = v151[0];
          v154 = v151[1];
          v155 = v152;
          v40 = Shelf.withId(_:)(&v153);
          v41 = v144;
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *&v151[0] = v41;
          sub_1E1598874(v40, &v158, v42);
          v144 = *&v151[0];
          sub_1E134B88C(&v153);
          goto LABEL_27;
        }
      }

      v48 = v144;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v48;
      sub_1E1598874(v26, &v158, v49);
      v144 = v153;
LABEL_27:
      v50 = v131;
      swift_beginAccess();
      sub_1E154E438(&v158, &v153);
      sub_1E1308058(&v153, &unk_1ECEB5670, qword_1E1B03EC0);
      swift_endAccess();
      sub_1E19FF980(*(*(v20 + v50) + 16) != 0);

      sub_1E134B88C(&v158);
    }
  }

LABEL_29:

  v53 = *(v137 + 24);
  v56 = *(v53 + 64);
  v55 = v53 + 64;
  v54 = v56;
  v57 = 1 << *(*(v137 + 24) + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & v54;
  v60 = (v57 + 63) >> 6;
  *&v139 = *(v137 + 24);

  v61 = 0;
  v138 = v55;
  v136 = v60;
  if (v59)
  {
    while (1)
    {
LABEL_39:
      while (1)
      {
        v65 = __clz(__rbit64(v59));
        v59 &= v59 - 1;
        v66 = v65 | (v61 << 6);
        v67 = (*(v139 + 48) + 16 * v66);
        v69 = *v67;
        v68 = v67[1];
        v70 = *(*(v139 + 56) + 8 * v66);
        v71 = off_1F5C38F58[0];
        (v149)(0);
        v71();
        v73 = v72;
        *&v153 = v69;
        *(&v153 + 1) = v68;
        swift_bridgeObjectRetain_n();
        v74 = v70;
        v75 = MEMORY[0x1E69E6158];
        sub_1E1AF6F6C();
        if (*(v73 + 16))
        {
          break;
        }

        sub_1E134B88C(&v158);

LABEL_34:
        *&v141 = v70;
        v62 = v146;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v142;
        sub_1E1AF382C();
        *(&v159 + 1) = v75;
        *&v158 = v69;
        *(&v158 + 1) = v68;
        sub_1E1AF38DC();
        sub_1E1308058(&v158, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v63 = v147;
        sub_1E1AF54AC();

        v60 = v136;

        (*v143)(v62, v63);
        v20 = v140;
        v55 = v138;
        if (!v59)
        {
          goto LABEL_35;
        }
      }

      sub_1E135FCF4(&v158);
      v77 = v76;
      sub_1E134B88C(&v158);

      if ((v77 & 1) == 0)
      {
        goto LABEL_34;
      }

      *&v153 = v69;
      *(&v153 + 1) = v68;

      sub_1E1AF6F6C();
      v78 = v70;
      v79 = v134;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v79;
      sub_1E1598734(v70, &v158, v80);
      sub_1E134B88C(&v158);
      v134 = v153;
      v20 = v140;
      swift_beginAccess();
      *&v158 = v69;
      *(&v158 + 1) = v68;

      sub_1E1AF6F6C();
      sub_1E1A15698(&v153, &v158);
      sub_1E134B88C(&v153);
      if (*(&v159 + 1))
      {
        v153 = v158;
        v154 = v159;
        v155 = v160;
        sub_1E1AF6F4C();
        sub_1E134B88C(&v153);
        swift_dynamicCast();
      }

      else
      {
        v156 = 0;
        v157 = 0;
      }

      v55 = v138;

      swift_endAccess();

      sub_1E19FF980(*(*(v20 + v131) + 16) != 0);

      if (!v59)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v64 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v64 >= v60)
    {
      break;
    }

    v59 = *(v55 + 8 * v64);
    ++v61;
    if (v59)
    {
      v61 = v64;
      goto LABEL_39;
    }
  }

  v81 = v144 + 64;
  v82 = 1 << *(v144 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v144 + 64);
  v85 = (v82 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v86 = 0;
  while (1)
  {
    if (!v84)
    {
      v87 = v144;
      while (1)
      {
        v88 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_90;
        }

        if (v88 >= v85)
        {
          goto LABEL_68;
        }

        v84 = *(v81 + 8 * v88);
        ++v86;
        if (v84)
        {
          v86 = v88;
          goto LABEL_58;
        }
      }
    }

    v87 = v144;
LABEL_58:
    v89 = __clz(__rbit64(v84)) | (v86 << 6);
    v90 = v87;
    sub_1E134E724(*(v87 + 48) + 40 * v89, &v158);
    v91 = *(*(v90 + 56) + 8 * v89);
    v148 = v158;
    v92 = v160;
    v149 = v159;
    v93 = *(&v159 + 1);

    if (!v93)
    {
      break;
    }

    v158 = v148;
    v159 = v149;
    v160 = v92;
    v94 = v145;
    swift_beginAccess();

    v95 = swift_isUniquelyReferenced_nonNull_native();
    *&v151[0] = *(v20 + v94);
    v96 = *&v151[0];
    *(v20 + v94) = 0x8000000000000000;
    v97 = sub_1E135FCF4(&v158);
    v99 = *(v96 + 16);
    v100 = (v98 & 1) == 0;
    v101 = __OFADD__(v99, v100);
    v102 = v99 + v100;
    if (v101)
    {
      goto LABEL_92;
    }

    v103 = v98;
    if (*(v96 + 24) >= v102)
    {
      if ((v95 & 1) == 0)
      {
        v109 = v97;
        sub_1E1415C9C();
        v97 = v109;
      }
    }

    else
    {
      sub_1E16889E4(v102, v95);
      v97 = sub_1E135FCF4(&v158);
      if ((v103 & 1) != (v104 & 1))
      {
        goto LABEL_94;
      }
    }

    v105 = *&v151[0];
    if (v103)
    {
      *(*(*&v151[0] + 56) + 8 * v97) = v91;

      sub_1E134B88C(&v158);
    }

    else
    {
      *(*&v151[0] + 8 * (v97 >> 6) + 64) |= 1 << v97;
      v106 = v97;
      sub_1E134E724(&v158, v105[6] + 40 * v97);
      *(v105[7] + 8 * v106) = v91;
      sub_1E134B88C(&v158);
      v107 = v105[2];
      v101 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v101)
      {
        goto LABEL_93;
      }

      v105[2] = v108;
    }

    v84 &= v84 - 1;
    *(v20 + v145) = v105;
    swift_endAccess();
  }

LABEL_68:

  v110 = *(v20 + v133);
  if (v110)
  {
    v111 = qword_1EE217318;
    swift_beginAccess();

    v113 = v135;
    sub_1E19FF54C(v112, v140);
    v115 = v114;
    v135 = v113;

    *(v110 + v111) = v115;
    v20 = v140;
  }

  v116 = *(v20 + qword_1EE1E9DF8);
  v117 = MEMORY[0x1E69E7CC0];
  *&v151[0] = MEMORY[0x1E69E7CC0];
  v118 = *(v116 + 16);

  if (!v118)
  {
LABEL_81:

    v125 = v144;
    *&v158 = v117;
    *(&v158 + 1) = v144;
    *&v159 = v134;
    *(&v159 + 1) = v137;
    v160 = 0;

    sub_1E1AF5BCC();
    v126 = v160;

    v127 = *(v125 + 16);
    if (v127)
    {
      v128 = sub_1E154713C();
      v129 = sub_1E1547130();
      v130 = v158;

      sub_1E1337ECC(v130);
      if (v129 == v127)
      {
LABEL_85:
        sub_1E1A0C2DC(v128, v132);

        goto LABEL_86;
      }

      __break(1u);
    }

    v128 = MEMORY[0x1E69E7CC0];
    goto LABEL_85;
  }

  v119 = 0;
  *&v149 = v118 - 1;
LABEL_72:
  v120 = v116 + 32 + 40 * v119;
  v121 = v119;
  v122 = v145;
  while (v121 < *(v116 + 16))
  {
    sub_1E134E724(v120, &v158);
    if (*(*(v20 + v122) + 16))
    {

      sub_1E135FCF4(&v158);
      if (v123)
      {

        v124 = sub_1E134B88C(&v158);
        MEMORY[0x1E68FEF20](v124);
        if (*((*&v151[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v151[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        v119 = v121 + 1;
        sub_1E1AF62AC();
        v117 = *&v151[0];
        if (v149 != v121)
        {
          goto LABEL_72;
        }

        goto LABEL_81;
      }
    }

    ++v121;
    sub_1E134B88C(&v158);
    v120 += 40;
    if (v118 == v121)
    {
      goto LABEL_81;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  sub_1E1AF757C();
  __break(1u);
}

void sub_1E1A10164(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AF503C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*(Strong + qword_1EE216690))
    {
      *v8 = a1;
      v8[8] = 0;
      (*(v6 + 104))(v8, *MEMORY[0x1E69AB428], v5);
      v11 = a1;
      sub_1E1AF508C();
      (*(v6 + 8))(v8, v5);
    }

    v37 = a1;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 64);
    v15 = qword_1EE1E9DE8;
    v16 = (v12 + 63) >> 6;

    v17 = 0;
    if (v14)
    {
      while (1)
      {
        v18 = v17;
LABEL_12:
        v19 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        sub_1E134E724(*(a3 + 48) + 40 * (v19 | (v18 << 6)), v40);
        swift_beginAccess();
        sub_1E154E438(v40, v39);
        sub_1E1308058(v39, &unk_1ECEB5670, qword_1E1B03EC0);
        swift_endAccess();
        sub_1E19FF980(*(*(v10 + v15) + 16) != 0);
        sub_1E134B88C(v40);
        if (!v14)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v18 >= v16)
      {
        break;
      }

      v14 = *(a3 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_12;
      }
    }

    v20 = *(v10 + qword_1EE1E9DF8);
    v21 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    v22 = *(v20 + 16);
    v23 = qword_1EE2166A0;

    swift_beginAccess();
    if (!v22)
    {
LABEL_25:

      v30 = MEMORY[0x1E69E7CC0];
      v31 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
      v32 = sub_1E159E9C4(v30);
      v40[0] = v21;
      v40[1] = v31;
      v40[2] = v32;
      v40[3] = 0;
      v41 = v37;
      v33 = v37;
      sub_1E1AF5BCC();
      v34 = v41;

      return;
    }

    v24 = 0;
    v25 = v20 + 32;
    v35 = v22 - 1;
    v36 = v20 + 32;
LABEL_16:
    v26 = v25 + 40 * v24;
    v27 = v24;
    while (v27 < *(v20 + 16))
    {
      sub_1E134E724(v26, v40);
      if (*(*(v10 + v23) + 16))
      {

        sub_1E135FCF4(v40);
        if (v28)
        {

          v29 = sub_1E134B88C(v40);
          MEMORY[0x1E68FEF20](v29);
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v24 = v27 + 1;
          sub_1E1AF62AC();
          v21 = v38;
          v25 = v36;
          if (v35 != v27)
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        }
      }

      ++v27;
      sub_1E134B88C(v40);
      v26 += 40;
      if (v22 == v27)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
  }
}

uint64_t (*sub_1E1A105AC(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DC20;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10624(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DC00;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A1069C(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DB10;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10714(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DAF0;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A1078C(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E054;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10804(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E050;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A1087C(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E04C;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A108F4(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E048;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A1096C(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E054;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A109E4(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E050;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10A5C(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1D98C;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10AD4(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1D96C;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10B4C(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DB98;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10BC4(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DB78;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10C3C(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E054;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10CB4(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E050;
  *(v2 + 24) = a1;

  return sub_1E1A1D5E0;
}

uint64_t (*sub_1E1A10D2C(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DCF0;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10DA4(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DCD0;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10E1C(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1D718;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10E94(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1D6F8;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10F0C(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E054;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10F84(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E050;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10FFC(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E054;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A11074(uint64_t a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E050;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t ArcadeDiffablePagePresenter.__allocating_init(objectGraph:arcadeSubscriptionManager:subscriptionStateFetchTimeout:sidePackedPage:pageUrls:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  swift_allocObject();
  v10 = sub_1E1A1C888(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t ArcadeDiffablePagePresenter.init(objectGraph:arcadeSubscriptionManager:subscriptionStateFetchTimeout:sidePackedPage:pageUrls:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = sub_1E1A1C888(a1, a2, a3, a4, a5);

  return v6;
}

double sub_1E1A111CC()
{

  sub_1E13E6F8C(*(v0 + qword_1EE215748), *(v0 + qword_1EE215748 + 8), *(v0 + qword_1EE215748 + 16), *(v0 + qword_1EE215748 + 24), *(v0 + qword_1EE215748 + 32), *(v0 + qword_1EE215748 + 40));

  sub_1E1A1D388(v0 + qword_1EE1D7BA0);

  sub_1E1361A60(*(v0 + qword_1EE1D7BD8), *(v0 + qword_1EE1D7BD8 + 8));
  sub_1E1300EA8(*(v0 + qword_1EE1D7BB0), *(v0 + qword_1EE1D7BB0 + 8));

  return result;
}

uint64_t ArcadeDiffablePagePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = sub_1E13DA684();

  sub_1E13E6F8C(*(v2 + qword_1EE215748), *(v2 + qword_1EE215748 + 8), *(v2 + qword_1EE215748 + 16), *(v2 + qword_1EE215748 + 24), *(v2 + qword_1EE215748 + 32), *(v2 + qword_1EE215748 + 40));

  sub_1E1A1D388(v2 + qword_1EE1D7BA0);

  sub_1E1361A60(*(v2 + qword_1EE1D7BD8), *(v2 + qword_1EE1D7BD8 + 8));
  sub_1E1300EA8(*(v2 + qword_1EE1D7BB0), *(v2 + qword_1EE1D7BB0 + 8));

  return v2;
}

uint64_t ArcadeDiffablePagePresenter.__deallocating_deinit()
{
  ArcadeDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

id ArcadeDiffablePagePresenter.titleEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_1EE215748;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;
  return sub_1E13E653C(v4, v5, v6, v7, v8, v9);
}

uint64_t ArcadeDiffablePagePresenter.didFetchPage.getter()
{
  v1 = qword_1EE215750;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E1A11530(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EE215750;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if ((v5 & 1) == 0)
  {
    if (v2)
    {
      sub_1E1AF5BCC();
    }
  }
}

double ArcadeDiffablePagePresenter.uber.setter(uint64_t a1)
{
  v3 = qword_1EE215728;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1E1A11670(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + qword_1EE1D7BD8;
  v5 = *(v1 + qword_1EE1D7BD8 + 8);
  v17 = *(v1 + qword_1EE1D7BD8);
  v18 = v5;
  v15 = v2;
  v16 = v3;
  sub_1E1361A40(v17, v5);
  v6 = static ArcadeState.== infix(_:_:)(&v17, &v15);
  sub_1E1361A60(v17, v18);
  if (v6)
  {
    return;
  }

  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = v8 >> 6;
  if (v8 >> 6 == 3 && (v7 & 1) != 0)
  {
    v10 = v2;
    v11 = v3;
LABEL_21:
    sub_1E1361A40(v10, v11);
    goto LABEL_22;
  }

  v12 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v12 != 2)
    {
      v10 = v7;
      v11 = v8;
      goto LABEL_21;
    }

    if (!v9)
    {
      v14 = v2;
      goto LABEL_22;
    }

    if (v9 == 2)
    {
      sub_1E1361A40(v2, v3);
      sub_1E1361A40(v7, v8);
      sub_1E1361A60(v2, v3);
      sub_1E1361A60(v7, v8);
      if ((v3 & 0x3F) == (v8 & 0x3F))
      {
        return;
      }

      if ((v3 & 0x3F) != 0)
      {
        if ((v3 & 0x3F) != 1 && (v8 & 0x3F) == 0)
        {
          return;
        }
      }

      else if ((v8 & 0x3F) == 2)
      {
        return;
      }

      goto LABEL_23;
    }

    sub_1E1361A40(v2, v3);
  }

  else
  {
    if (v12)
    {
      sub_1E1361A40(v2, v3);
      sub_1E1361A40(v7, v8);
      sub_1E1361A60(v2, v3);
      sub_1E1361A60(v7, v8);
      if (v9 != 2)
      {
        return;
      }

      goto LABEL_23;
    }

    if (v9 == 2)
    {
      v13 = v7;
LABEL_22:
      sub_1E1361A60(v2, v3);
      sub_1E1361A60(v7, v8);
LABEL_23:

      ArcadeDiffablePagePresenter.update(ignoringCache:)(1);
      return;
    }
  }

  sub_1E1361A40(v7, v8);
  sub_1E1361A60(v2, v3);

  sub_1E1361A60(v7, v8);
}

Swift::Void __swiftcall ArcadeDiffablePagePresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  v2 = v1;
  v25 = ignoringCache;
  v3 = *v1;
  v4 = sub_1E1AF320C();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF324C();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF321C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7F98], v10);
  v14 = sub_1E1AF693C();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = sub_1E1A1D3E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_99;
  v16 = _Block_copy(aBlock);
  sub_1E1AF322C();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1E1302C44(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v9, v6, v16);
  _Block_release(v16);

  (*(v24 + 8))(v6, v4);
  (*(v22 + 8))(v9, v23);

  if (((*(v1 + qword_1EE1D7BD8 + 8) >> 6) | 2) == 2)
  {
    v17 = qword_1EE215750;
    swift_beginAccess();
    v18 = *(v2 + v17);
    *(v2 + v17) = 1;
    if ((v18 & 1) == 0)
    {
      sub_1E1AF5BCC();
    }
  }

  swift_beginAccess();
  v19 = v2[4];

  sub_1E19F82E8(v25);
  v20 = v2[4];
  if (v19)
  {
    if (v20 && v19 == v20 || (*(v2 + qword_1EE1D7BB8) & 1) == 0 || !v20)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v20)
  {
    return;
  }

  if (*(v2 + qword_1EE1D7BB8))
  {
LABEL_12:

    sub_1E1AF506C();
  }

LABEL_13:
}

void *sub_1E1A11D6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = v1[2];
  v20 = *(v1 + qword_1EE1D7BC0);
  v10 = *(v1 + qword_1EE1D7BD8);
  v11 = *(v1 + qword_1EE1D7BD8 + 8);
  v21 = v10;
  v12 = *(v1 + qword_1EE1D7BA8);
  v22 = v11;
  v13 = v1 + qword_1EE1D7BA0;
  if ((v11 & 0xC0) != 0x80)
  {
    v13 += *(type metadata accessor for ArcadePageUrls(0) + 20);
  }

  sub_1E134FD1C(v13, v5, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E137F600(v5, v8, &unk_1ECEB4B60, &unk_1E1B02620);
  swift_beginAccess();
  v14 = v1[3];
  swift_beginAccess();
  v15 = v1[4];
  type metadata accessor for ArcadeDiffablePageContentPresenter(0);
  swift_allocObject();

  v16 = v20;
  sub_1E1361A40(v10, v11);

  v17 = sub_1E1542B4C(v9, v16, &v21, v8, a1, v14, v15, v12);

  return v17;
}

Swift::Void __swiftcall ArcadeDiffablePagePresenter.didLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  v6 = *(v0 + qword_1EE1D7BC0);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v6 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock);

  [v8 lock];
  sub_1E15F6384(v1, sub_1E1A1D3EC, v7, v6);
  [v8 unlock];

  type metadata accessor for ASKBagContract(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  if (qword_1EE1E31B8 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();

  (*(v3 + 8))(v5, v2);
  if (v9[15])
  {
    v10[0] = -127;
    ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(v10);
  }

  ArcadeDiffablePagePresenter.update(ignoringCache:)(0);
}

void sub_1E1A12204(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = v2;
    v5 = v3;
    sub_1E1361A40(v2, v3);
    sub_1E1A12294(&v4);

    sub_1E1361A60(v4, v5);
  }
}

void sub_1E1A12294(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_1E19FF838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v17 = &type metadata for ArcadeState;
  v15 = v8;
  v16 = v9;
  sub_1E1361A40(v8, v9);
  sub_1E1AF38BC();
  sub_1E1308058(&v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  (*(v5 + 8))(v7, v4);
  v10 = v2 + qword_1EE1D7BD8;
  v11 = *(v2 + qword_1EE1D7BD8);
  *v10 = v8;
  LOBYTE(v7) = *(v10 + 8);
  *(v10 + 8) = v9;
  sub_1E1361A40(v8, v9);
  sub_1E1361A40(v11, v7);
  sub_1E1361A60(v11, v7);
  v15 = v11;
  v16 = v7;
  sub_1E1A11670(&v15);
  sub_1E1361A60(v11, v7);
  v12 = (v2 + qword_1EE1D7BB0);
  v13 = *(v2 + qword_1EE1D7BB0);
  if (v13)
  {
    v14 = v12[1];
    *v12 = 0;
    v12[1] = 0;
    v13();
    sub_1E1300EA8(v13, v14);
  }
}

void sub_1E1A1259C()
{
  v0 = sub_1E1AF591C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E19FF838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  (*(v1 + 8))(v3, v0);
  v4 = [objc_opt_self() daemonProxy];
}

void sub_1E1A12774()
{
  v1 = v0;
  v2 = sub_1E1AF591C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1EE215750;
  swift_beginAccess();
  if (*(v0 + v6) != 1)
  {
    return;
  }

  v7 = sub_1E1AEF54C();
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v14[1] = 0x6449666C656873;
  v14[2] = 0xE700000000000000;
  sub_1E1AF6F6C();
  if (!*(v8 + 16) || (v9 = sub_1E135FCF4(v15), (v10 & 1) == 0))
  {

    sub_1E134B88C(v15);
LABEL_12:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_13;
  }

  sub_1E137A5C4(*(v8 + 56) + 32 * v9, &v16);
  sub_1E134B88C(v15);

  if (!*(&v17 + 1))
  {
LABEL_13:
    sub_1E1308058(&v16, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_14;
  }

  if (!*(&v19 + 1))
  {
LABEL_14:
    sub_1E1308058(&v18, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    (*(v3 + 8))(v5, v2);
    return;
  }

  v21[0] = v18;
  v21[1] = v19;
  v22 = v20;
  v11 = *(v1 + qword_1EE1D7BD0);

  os_unfair_lock_lock(v11 + 6);
  sub_1E134E724(v21, v15);
  sub_1E1893DD0(&v18, v15);
  sub_1E134B88C(&v18);
  os_unfair_lock_unlock(v11 + 6);

  v12 = *(v1 + qword_1EE2169B8);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2608, &qword_1E1B1A830);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1E1B02CC0;
    sub_1E134E724(v21, v13 + 32);

    sub_1E1A172A0(v13, sub_1E1801494, 0, v12, &unk_1F5C5D020, &unk_1F5C5D138, &unk_1F5C5D160, sub_1E1A1E06C, sub_1E1A1E068);
  }

  sub_1E134B88C(v21);
}

double sub_1E1A12BE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v11 = *(a1 + 32);
  sub_1E19FDB8C(v10);
  v3 = *(v1 + qword_1EE1D7BD0);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(&v10[0] + 1);
  v12 = *(&v10[0] + 1);
  v5 = *(v3 + 16);
  sub_1E134FD1C(&v12, v9, &qword_1ECEB9C60, &qword_1E1B36438);

  v6 = sub_1E19B8938(v4, v5);
  sub_1E15CEE1C(v6);
  sub_1E1308058(&v12, &qword_1ECEB9C60, &qword_1E1B36438);
  os_unfair_lock_unlock((v3 + 24));

  v7 = *(v1 + qword_1EE2169B8);
  if (v7)
  {

    sub_1E1A18368(v6, sub_1E18014A0, 0, v7);
  }

  return result;
}

uint64_t sub_1E1A12D1C()
{
  v1 = v0;
  v45 = *v0;
  v2 = sub_1E1AF591C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AEFEAC();
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_1E1AF3E1C();
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = sub_1E1AEF54C();
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = v19;
  *&v48 = 0x6449666C656873;
  *(&v48 + 1) = 0xE700000000000000;
  sub_1E1AF6F6C();
  if (!*(v20 + 16) || (v21 = sub_1E135FCF4(v54), (v22 & 1) == 0))
  {

    sub_1E134B88C(v54);
LABEL_9:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_10;
  }

  sub_1E137A5C4(*(v20 + 56) + 32 * v21, &v51);
  sub_1E134B88C(v54);

  if (!*(&v52 + 1))
  {
LABEL_10:
    sub_1E1308058(&v51, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    return (*(v3 + 8))(v5, v2);
  }

  v24 = *(&v54[0] + 1);
  v23 = *&v54[0];
  sub_1E1AF3DFC();
  type metadata accessor for ShelfBasedPageScrollAction(0);
  v25 = swift_allocObject();
  v26 = (v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_shelfId);
  *v26 = v23;
  v26[1] = v24;
  v27 = (v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_adamId);
  *v29 = 0;
  v29[1] = 0;
  v30 = v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_index;
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_clicksOnScroll) = 0;
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v32 = v43;
  v31 = v44;
  (*(v44 + 16))(v15, v18, v43);
  v33 = sub_1E1AF46DC();
  (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  v34 = (v25 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_1E134FD1C(v54, &v48, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v49 + 1))
  {
    v51 = v48;
    v52 = v49;
    v53 = v50;
  }

  else
  {
    sub_1E1AEFE9C();
    v36 = sub_1E1AEFE7C();
    v38 = v37;
    (*(v42 + 8))(v8, v6);
    v46 = v36;
    v47 = v38;
    v31 = v44;
    sub_1E1AF6F6C();
    sub_1E1308058(&v48, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v54, &unk_1ECEB5670, qword_1E1B03EC0);
  (*(v31 + 8))(v18, v32);
  v39 = v25 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v40 = v52;
  *v39 = v51;
  *(v39 + 16) = v40;
  *(v39 + 32) = v53;
  sub_1E137F600(v11, v25 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v25 + 16) = xmmword_1E1B4C2F0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  (*(v31 + 32))(v25 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v15, v32);
  *&v54[0] = v25;
  *(&v54[0] + 1) = v1;
  v55 = v45;

  sub_1E1AF5BCC();

  return sub_1E1308058(v54, &qword_1ECEB24C8, &qword_1E1B30450);
}

uint64_t sub_1E1A1342C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_1E1AEF55C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

double sub_1E1A13524(uint64_t a1, char a2)
{
  sub_1E1A7F628(a1, a2);
  *(v2 + qword_1EE1D7BC8) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions);
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v4 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
  v6 = (v2 + qword_1EE215718);
  swift_beginAccess();
  *v6 = v5;
  v6[1] = v4;

  v8 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle);
  v7 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle + 8);
  v9 = (v2 + qword_1EE215720);
  swift_beginAccess();
  *v9 = v8;
  v9[1] = v7;

  v10 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect);
  v11 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 8);
  v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 16);
  v13 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 24);
  v14 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 32);
  v15 = v2 + qword_1EE215748;
  v16 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 40);
  swift_beginAccess();
  v29 = *(v15 + 8);
  v30 = *v15;
  v27 = *(v15 + 24);
  v28 = *(v15 + 16);
  v26 = *(v15 + 32);
  *v15 = v10;
  *(v15 + 8) = v11;
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  v17 = *(v15 + 40);
  *(v15 + 40) = v16;
  sub_1E13E653C(v10, v11, v12, v13, v14, v16);
  sub_1E13E6F8C(v30, v29, v28, v27, v26, v17);
  v18 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = qword_1EE215728;
  swift_beginAccess();
  *(v2 + v20) = v19;

  v21 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionLockup);
  v22 = qword_1EE215740;
  swift_beginAccess();
  *(v2 + v22) = v21;

  if (*(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_autoUpsellAction))
  {
    v24 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_shouldForceAutoUpsell);

    sub_1E1A13798(v25, v24);
  }

  return result;
}

void sub_1E1A13798(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4920, &qword_1E1B0F2E0);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = sub_1E1AF591C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + qword_1EE1D7BC0) + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v15 = *(v14 + 8);
  if (v15 >= 0xC0)
  {
    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    (*(v11 + 8))(v13, v10);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1;
    *(v17 + 32) = a2 & 1;
    v18 = (v3 + qword_1EE1D7BB0);
    v19 = *(v3 + qword_1EE1D7BB0);
    v20 = *(v3 + qword_1EE1D7BB0 + 8);
    *v18 = sub_1E1A1D66C;
    v18[1] = v17;

    sub_1E1300EA8(v19, v20);

    return;
  }

  v38 = v7;
  v39 = v11;
  if (v15 > 0x3F)
  {
    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    goto LABEL_7;
  }

  if (a2)
  {
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = a1;
    v41 = sub_1E1A1D664;
    v42 = v22;

    sub_1E1AF5BCC();

    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
LABEL_7:
    sub_1E1AF382C();
    sub_1E1AF548C();

    (*(v39 + 8))(v13, v10);
    return;
  }

  v36 = v10;
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v37 = v41;
  v35 = [objc_opt_self() standardUserDefaults];
  v23 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  v24 = a1;
  v34 = v6;
  if (qword_1EE1D2170 != -1)
  {
    swift_once();
  }

  sub_1E1AF52DC();
  v25 = v38;
  sub_1E1AF532C();
  v27 = v40 + 8;
  v26 = *(v40 + 8);
  v26(v9, v25);
  if (v23 >= v41)
  {
    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
  }

  else
  {
    v40 = v27;
    v33 = v26;
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v24;
    v30 = v35;
    v29[4] = v35;
    v41 = sub_1E1A1D658;
    v42 = v29;

    v35 = v30;
    sub_1E1AF5BCC();

    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    sub_1E1AF52DC();
    sub_1E1AF532C();
    v33(v9, v25);
    v43 = MEMORY[0x1E69E6530];
    sub_1E1AF38BC();
    sub_1E1308058(&v41, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v31 = v36;
  sub_1E1AF548C();

  (*(v39 + 8))(v13, v31);
}

double sub_1E1A14158(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E1A13798(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E1A141CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E1AF320C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF324C();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  v16 = sub_1E1AF68EC();
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1E1A1D678;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_81_0;
  v12 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E1302C44(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  v13 = v16;
  MEMORY[0x1E68FF640](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_1E1A14500(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v5 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for ArcadeDiffablePagePresenter(0);
    }

    v6[0] = a2;
    v6[1] = v5;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = Strong;

    sub_1E1AF5BCC();

    return sub_1E1308058(v6, &qword_1ECEB24C8, &qword_1E1B30450);
  }

  return result;
}

uint64_t sub_1E1A145E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF324C();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  v19 = sub_1E1AF68EC();
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1E1A1D680;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_88_0;
  v14 = _Block_copy(aBlock);

  v15 = a3;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E1302C44(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  v16 = v19;
  MEMORY[0x1E68FF640](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v20);
}

void sub_1E1A14928(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v6 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for ArcadeDiffablePagePresenter(0);
    }

    v10[0] = a2;
    v10[1] = v6;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = Strong;

    sub_1E1AF5BCC();

    sub_1E1308058(v10, &qword_1ECEB24C8, &qword_1E1B30450);
  }

  v7 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1E1AF5DBC();
    [a3 setInteger:v8 forKey:v9];
  }
}

uint64_t (*sub_1E1A14AA0(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1E1A1563C(v7);
  v7[9] = sub_1E1A14E44(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1E1A1E040;
}

uint64_t (*sub_1E1A14B4C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1E1A1563C(v7);
  v7[9] = sub_1E1A14FC8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1E1A1E040;
}

void (*sub_1E1A14BF8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xD8uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E141D0E8(a2, v5);
  v5[25] = sub_1E1A15664(v5 + 17);
  v5[26] = sub_1E1A151EC(v5 + 21, v5, isUniquelyReferenced_nonNull_native);
  return sub_1E1A14CA8;
}

void sub_1E1A14CA8(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 136;
  v3 = *(*a1 + 200);
  (*(*a1 + 208))();
  sub_1E141D144(v1);
  v3(v2, 0);

  free(v1);
}

uint64_t (*sub_1E1A14D1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[8] = sub_1E1A1563C(v11);
  v11[9] = sub_1E1A153F8(v11 + 4, a2, a3, a4, a5 & 1, isUniquelyReferenced_nonNull_native);
  return sub_1E1A14DE0;
}

void sub_1E1A14DE4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1E1A14E44(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1E13018F8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1E1415ABC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1E1688998(v18, a4 & 1);
    v13 = sub_1E13018F8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1E1A14F9C;
}

void (*sub_1E1A14FC8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1E13018F8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1E1415E7C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1E1688F88(v18, a4 & 1);
    v13 = sub_1E13018F8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1E1A14F9C;
}

void sub_1E1A15120(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_1E1455104(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  free(v4);
}

void (*sub_1E1A151EC(uint64_t *a1, uint64_t *a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xB0uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 144) = a2;
  *(v8 + 152) = v3;
  v10 = *v3;
  v11 = sub_1E15951A4(a2);
  *(v9 + 168) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1E1417014();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1E168ACD4(v16, a3 & 1);
    v11 = sub_1E15951A4(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 160) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *(v9 + 136) = v21;
  return sub_1E1A15334;
}

void sub_1E1A15334(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  if (v2)
  {
    v3 = *(v1 + 160);
    v4 = **(v1 + 152);
    if (*(*a1 + 168))
    {
      *(v4[7] + 8 * v3) = v2;
    }

    else
    {
      sub_1E141D0E8(*(v1 + 144), v1);
      sub_1E165F608(v3, v1, v2, v4);
    }
  }

  else if (*(*a1 + 168))
  {
    v5 = *(v1 + 160);
    v6 = **(v1 + 152);
    sub_1E141D144(*(v6 + 48) + 136 * v5);
    sub_1E14139CC(v5, v6);
  }

  free(v1);
}

void (*sub_1E1A153F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6))(uint64_t **a1)
{
  v7 = v6;
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x38uLL);
  }

  v15 = v14;
  *a1 = v14;
  *(v14 + 48) = a5 & 1;
  *(v14 + 24) = a4;
  *(v14 + 32) = v6;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3;
  v16 = *v6;
  v18 = sub_1E1595F58(a2, a3, a4, a5 & 1);
  *(v15 + 49) = v17 & 1;
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_1E141B260();
      goto LABEL_12;
    }

    sub_1E1692CD8(v21, a6 & 1);
    v24 = sub_1E1595F58(a2, a3, a4, a5 & 1);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_12;
    }

LABEL_17:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_12:
  *(v15 + 40) = v18;
  if (v22)
  {
    v26 = *(*(*v7 + 56) + 8 * v18);
  }

  else
  {
    v26 = 0;
  }

  *v15 = v26;
  return sub_1E1A15580;
}

void sub_1E1A15580(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 49);
  if (v2)
  {
    v4 = v1[5];
    v5 = *v1[4];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1E165FD20(v4, v1[1], v1[2], v1[3], *(v1 + 48), v2, v5);
    }
  }

  else if (*(*a1 + 49))
  {
    v6 = v1[5];
    v7 = *v1[4];
    sub_1E1A1D7D4(*(v7 + 48) + 32 * v6);
    sub_1E1414D9C(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_1E1A1563C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1E1A1DFE8;
}

uint64_t (*sub_1E1A15664(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1E1A1568C;
}

unint64_t sub_1E1A15698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = sub_1E1AF6F2C();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = ~v8;
  while (1)
  {
    sub_1E134E724(*(v6 + 48) + 40 * v9, v34);
    v11 = MEMORY[0x1E68FFC60](v34, a1);
    result = sub_1E134B88C(v34);
    if (v11)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v33 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v14 = *v3;
LABEL_8:
    v15 = *(v14 + 48) + 40 * v9;
    v16 = *(v15 + 16);
    *a2 = *v15;
    *(a2 + 16) = v16;
    *(a2 + 32) = *(v15 + 32);
    result = sub_1E154EB7C(v9);
    *v3 = v33;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47A0, &qword_1E1B30510);
  v17 = sub_1E1AF6F7C();
  v14 = v17;
  if (!*(v13 + 16))
  {
LABEL_24:

    v33 = v14;
    goto LABEL_8;
  }

  result = v17 + 56;
  v18 = v13 + 56;
  v19 = ((1 << *(v14 + 32)) + 63) >> 6;
  if (v14 != v13 || result >= v18 + 8 * v19)
  {
    result = memmove(result, (v13 + 56), 8 * v19);
  }

  v20 = 0;
  *(v14 + 16) = *(v13 + 16);
  v21 = 1 << *(v13 + 32);
  v22 = *(v13 + 56);
  v23 = -1;
  if (v21 < 64)
  {
    v23 = ~(-1 << v21);
  }

  v24 = v23 & v22;
  v25 = (v21 + 63) >> 6;
  if ((v23 & v22) != 0)
  {
    do
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_22:
      v29 = 40 * (v26 | (v20 << 6));
      result = sub_1E134E724(*(v13 + 48) + v29, v34);
      v30 = *(v14 + 48) + v29;
      v31 = v34[0];
      v32 = v34[1];
      *(v30 + 32) = v35;
      *v30 = v31;
      *(v30 + 16) = v32;
    }

    while (v24);
  }

  v27 = v20;
  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v20 >= v25)
    {
      goto LABEL_24;
    }

    v28 = *(v18 + 8 * v20);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v24 = (v28 - 1) & v28;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

void sub_1E1A15900(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5DBB0, &unk_1F5C5DC50, &unk_1F5C5DC78, sub_1E1A1DC40, sub_1E1A1E068);
  }
}

void sub_1E1A15A94(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D8B8, &unk_1F5C5D958, &unk_1F5C5D980, sub_1E1A1DB30, sub_1E1A1E068);
  }
}

void sub_1E1A15C28(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v108 = a6;
  v109 = a7;
  v10 = a4;
  v115 = a2;
  v116 = a3;
  v106 = *a4;
  v107 = a5;
  v105 = sub_1E1AF504C();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v95 - v14;
  v114 = sub_1E1AEFCCC();
  v16 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v95 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C70, &unk_1E1B36450);
  v129[3] = v21;
  v129[4] = sub_1E1302CD4(&qword_1EE1E3528, &qword_1ECEB9C70, &unk_1E1B36450, MEMORY[0x1E69E5D98]);
  v129[0] = a1;
  if (*(v10 + qword_1EE2166D0) == 1 || !*(a1 + 16))
  {

LABEL_49:
    __swift_destroy_boxed_opaque_existential_1(v129);
    return;
  }

  v98 = a8;

  v112 = sub_1E159DE70(MEMORY[0x1E69E7CC0]);
  v128 = v112;
  v22 = __swift_project_boxed_opaque_existential_1Tm(v129, v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v23);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v125);
  v28 = -1 << *(*v25 + 32);
  v29 = ~v28;
  v30 = (*v25 + 64);
  v31 = *v30;
  v32 = -v28;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  *boxed_opaque_existential_0 = *v25;
  boxed_opaque_existential_0[1] = v30;
  boxed_opaque_existential_0[2] = v29;
  boxed_opaque_existential_0[3] = 0;
  boxed_opaque_existential_0[4] = v33 & v31;
  v34 = qword_1EE2166A0;
  v35 = qword_1EE1E9DE8;
  swift_beginAccess();
  v111 = v35;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v125, AssociatedTypeWitness);
  sub_1E1AF6DBC();
  v110 = v10;
  if (*(&v123 + 1))
  {
    v96 = v18;
    v112 = (v16 + 48);
    v101 = (v16 + 8);
    v102 = (v16 + 32);
    v99 = (v16 + 16);
    v97 = xmmword_1E1B02CC0;
    v36 = v113;
    v37 = v114;
    while (1)
    {
      v121 = v124;
      v120[0] = v122;
      v120[1] = v123;
      v38 = *(v10 + v34);
      if (*(v38 + 16))
      {

        v39 = sub_1E135FCF4(v120);
        if (v40)
        {
          v41 = *(*(v38 + 56) + 8 * v39);

          sub_1E134E724(v120, v119);
          v115(v41);
          if ((*v112)(v15, 1, v37) == 1)
          {

            sub_1E134B88C(v119);
            sub_1E134B88C(v120);
            sub_1E1308058(v15, &unk_1ECEB4B60, &unk_1E1B02620);
            goto LABEL_10;
          }

          (*v102)(v36, v15, v37);
          v42 = *(v10 + v111);
          if (!*(v42 + 16))
          {
            goto LABEL_21;
          }

          v43 = sub_1E1AF6F2C();
          v44 = -1 << *(v42 + 32);
          v45 = v43 & ~v44;
          if (((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
LABEL_20:

LABEL_21:
            v48 = (v41 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
            if (v128[2] && (sub_1E13018F8(*v48, v48[1]), (v49 & 1) != 0))
            {
              v51 = *v48;
              v50 = v48[1];

              v52 = sub_1E1A0C544(v118, v51, v50);
              if (*v53)
              {
                v54 = v53;
                v95 = v52;
                v55 = *v99;
                v56 = v96;
                v100 = v50;
                v57 = v113;
                v37 = v114;
                v55(v96, v113, v114);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v117[0] = *v54;
                *v54 = 0x8000000000000000;
                sub_1E159840C(v56, v119, isUniquelyReferenced_nonNull_native);
                *v54 = v117[0];

                (v95)(v118, 0);
              }

              else
              {
                (v52)(v118, 0);

                v57 = v113;
                v37 = v114;
              }
            }

            else
            {
              v59 = *v48;
              v60 = v48[1];
              v100 = v59;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C68, &unk_1E1B36440);
              v61 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5CC0, &qword_1E1B19AF0) - 8);
              v62 = (*(*v61 + 80) + 32) & ~*(*v61 + 80);
              v63 = swift_allocObject();
              *(v63 + 16) = v97;
              v64 = v63 + v62;
              v65 = v61[14];
              sub_1E134E724(v119, v63 + v62);
              v57 = v113;
              v37 = v114;
              (*v99)(v64 + v65, v113, v114);

              v66 = sub_1E159DE84(v63);
              swift_setDeallocating();
              v67 = v64;
              v10 = v110;
              sub_1E1308058(v67, &unk_1ECEB5CC0, &qword_1E1B19AF0);
              swift_deallocClassInstance();
              v68 = v128;
              v69 = swift_isUniquelyReferenced_nonNull_native();
              v118[0] = v68;
              sub_1E1598584(v66, v100, v60, v69);

              v128 = v118[0];
            }

            sub_1E134E724(v119, v117);
            v70 = v111;
            swift_beginAccess();
            sub_1E1893DD0(v118, v117);
            sub_1E134B88C(v118);
            swift_endAccess();
            sub_1E19FF980(*(*(v10 + v70) + 16) != 0);

            (*v101)(v57, v37);
            sub_1E134B88C(v119);
            sub_1E134B88C(v120);
            v36 = v57;
            goto LABEL_10;
          }

          v46 = ~v44;
          while (1)
          {
            sub_1E134E724(*(v42 + 48) + 40 * v45, v118);
            v47 = MEMORY[0x1E68FFC60](v118, v119);
            sub_1E134B88C(v118);
            if (v47)
            {
              break;
            }

            v45 = (v45 + 1) & v46;
            if (((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v36 = v113;
          v37 = v114;
          (*v101)(v113, v114);
          sub_1E134B88C(v119);
        }

        else
        {
        }
      }

      sub_1E134B88C(v120);
LABEL_10:
      __swift_mutable_project_boxed_opaque_existential_1(v125, AssociatedTypeWitness);
      sub_1E1AF6DBC();
      if (!*(&v123 + 1))
      {
        v71 = v128;
        goto LABEL_32;
      }
    }
  }

  v71 = v112;
LABEL_32:
  __swift_destroy_boxed_opaque_existential_1(v125);
  if (!v71[2])
  {
LABEL_48:

    goto LABEL_49;
  }

  v111 = a9;
  v72 = v71 + 8;
  v73 = 1 << *(v71 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & v71[8];
  v76 = (v10 + qword_1EE1E9DF0);
  v101 = qword_1EE216690;
  v77 = (v73 + 63) >> 6;
  LODWORD(v100) = *MEMORY[0x1E69AB448];
  v99 = (v103 + 13);
  ++v103;

  v78 = 0;
  v112 = v71;
  v102 = v76;
  while (v75)
  {
    v79 = v75;
LABEL_42:
    v75 = (v79 - 1) & v79;
    if (*v76)
    {
      v81 = *v76;
      v82 = *(v71[7] + ((v78 << 9) | (8 * __clz(__rbit64(v79)))));
      v115 = v75;
      v116 = v82;
      v83 = v76[1];
      if (*(v101 + v110))
      {
        v85 = v104;
        v84 = v105;
        *v104 = 0;
        (*v99)(v85, v100, v84);

        v86 = v81;
        sub_1E1300E34(v81, v83);
        sub_1E1AF509C();
        (*v103)(v85, v84);
      }

      else
      {

        v86 = v81;
        sub_1E1300E34(v81, v83);
      }

      v87 = v116;
      v114 = v83;
      v113 = v86(v116);
      v88 = swift_allocObject();
      swift_weakInit();
      v89 = swift_allocObject();
      v90 = v106;
      *(v89 + 16) = v88;
      *(v89 + 24) = v90;
      v91 = swift_allocObject();
      swift_weakInit();
      v92 = swift_allocObject();
      *(v92 + 16) = v91;
      *(v92 + 24) = v87;
      v93 = sub_1E1361A80();

      v94 = sub_1E1AF68EC();
      AssociatedTypeWitness = v93;
      AssociatedConformanceWitness = MEMORY[0x1E69AB720];
      v125[0] = v94;
      sub_1E1AF57FC();
      sub_1E1300EA8(v86, v114);

      __swift_destroy_boxed_opaque_existential_1(v125);

      v71 = v112;
      v76 = v102;
      v75 = v115;
    }
  }

  while (1)
  {
    v80 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      break;
    }

    if (v80 >= v77)
    {

      goto LABEL_48;
    }

    v79 = v72[v80];
    ++v78;
    if (v79)
    {
      v78 = v80;
      goto LABEL_42;
    }
  }

  __break(1u);
}

void sub_1E1A16868(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5DD68, &unk_1F5C5DE08, &unk_1F5C5DE30, sub_1E1A1DC88, sub_1E1A1E068);
  }
}

void sub_1E1A169FC(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D340, &unk_1F5C5D3E0, &unk_1F5C5D408, sub_1E1A1D78C, sub_1E1A1E068);
  }
}

void sub_1E1A16B90(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D778, &unk_1F5C5D818, &unk_1F5C5D840, sub_1E1A1DA9C, sub_1E1A1E068);
  }
}

void sub_1E1A16D24(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D638, &unk_1F5C5D6D8, &unk_1F5C5D700, sub_1E1A1D9AC, sub_1E1A1D9F4);
  }
}

void sub_1E1A16F18(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D9F8, &unk_1F5C5DA98, &unk_1F5C5DAC0, sub_1E1A1DBB8, sub_1E1A1E068);
  }
}

void sub_1E1A170AC(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1803C74, v8, a3, &unk_1F5C5CD78, &unk_1F5C5CE40, &unk_1F5C5CE68, sub_1E1A1D610, sub_1E1A1E068);
  }
}

void sub_1E1A172A0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v102 = a6;
  v103 = a7;
  v10 = a4;
  v109 = a2;
  v110 = a3;
  v100 = *a4;
  v101 = a5;
  v99 = sub_1E1AF504C();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v89 - v14;
  v108 = sub_1E1AEFCCC();
  v16 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v89 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AB0, &qword_1E1B034A0);
  v123[3] = v21;
  v123[4] = sub_1E1302CD4(&qword_1ECEBBDB0, &qword_1ECEB2AB0, &qword_1E1B034A0, MEMORY[0x1E69E6340]);
  v123[0] = a1;
  if (*(v10 + qword_1EE2166D0) == 1 || !*(a1 + 16))
  {

LABEL_46:
    __swift_destroy_boxed_opaque_existential_1(v123);
    return;
  }

  v92 = a8;

  v106 = sub_1E159DE70(MEMORY[0x1E69E7CC0]);
  v122 = v106;
  v22 = __swift_project_boxed_opaque_existential_1Tm(v123, v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = (&v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v119);
  *boxed_opaque_existential_0 = *v25;
  boxed_opaque_existential_0[1] = 0;
  v28 = qword_1EE2166A0;
  v29 = qword_1EE1E9DE8;
  swift_beginAccess();
  v105 = v29;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v119, AssociatedTypeWitness);
  sub_1E1AF6DBC();
  v104 = v10;
  if (*(&v117 + 1))
  {
    v90 = v18;
    v106 = (v16 + 48);
    v95 = (v16 + 8);
    v96 = (v16 + 32);
    v93 = (v16 + 16);
    v91 = xmmword_1E1B02CC0;
    v30 = v107;
    v31 = v108;
    while (1)
    {
      v115 = v118;
      v114[0] = v116;
      v114[1] = v117;
      v32 = *(v10 + v28);
      if (*(v32 + 16))
      {

        v33 = sub_1E135FCF4(v114);
        if (v34)
        {
          v35 = *(*(v32 + 56) + 8 * v33);

          sub_1E134E724(v114, v113);
          v109(v35);
          if ((*v106)(v15, 1, v31) == 1)
          {

            sub_1E134B88C(v113);
            sub_1E134B88C(v114);
            sub_1E1308058(v15, &unk_1ECEB4B60, &unk_1E1B02620);
            goto LABEL_7;
          }

          (*v96)(v30, v15, v31);
          v36 = *(v10 + v105);
          if (!*(v36 + 16))
          {
            goto LABEL_18;
          }

          v37 = sub_1E1AF6F2C();
          v38 = -1 << *(v36 + 32);
          v39 = v37 & ~v38;
          if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
LABEL_17:

LABEL_18:
            v42 = (v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
            if (v122[2] && (sub_1E13018F8(*v42, v42[1]), (v43 & 1) != 0))
            {
              v45 = *v42;
              v44 = v42[1];

              v46 = sub_1E1A0C544(v112, v45, v44);
              if (*v47)
              {
                v48 = v47;
                v89 = v46;
                v49 = *v93;
                v50 = v90;
                v94 = v44;
                v51 = v107;
                v31 = v108;
                v49(v90, v107, v108);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v111[0] = *v48;
                *v48 = 0x8000000000000000;
                sub_1E159840C(v50, v113, isUniquelyReferenced_nonNull_native);
                *v48 = v111[0];

                (v89)(v112, 0);
              }

              else
              {
                (v46)(v112, 0);

                v51 = v107;
                v31 = v108;
              }
            }

            else
            {
              v53 = *v42;
              v54 = v42[1];
              v94 = v53;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C68, &unk_1E1B36440);
              v55 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5CC0, &qword_1E1B19AF0) - 8);
              v56 = (*(*v55 + 80) + 32) & ~*(*v55 + 80);
              v57 = swift_allocObject();
              *(v57 + 16) = v91;
              v58 = v57 + v56;
              v59 = v55[14];
              sub_1E134E724(v113, v57 + v56);
              v51 = v107;
              v31 = v108;
              (*v93)(v58 + v59, v107, v108);

              v60 = sub_1E159DE84(v57);
              swift_setDeallocating();
              v61 = v58;
              v10 = v104;
              sub_1E1308058(v61, &unk_1ECEB5CC0, &qword_1E1B19AF0);
              swift_deallocClassInstance();
              v62 = v122;
              v63 = swift_isUniquelyReferenced_nonNull_native();
              v112[0] = v62;
              sub_1E1598584(v60, v94, v54, v63);

              v122 = v112[0];
            }

            sub_1E134E724(v113, v111);
            v64 = v105;
            swift_beginAccess();
            sub_1E1893DD0(v112, v111);
            sub_1E134B88C(v112);
            swift_endAccess();
            sub_1E19FF980(*(*(v10 + v64) + 16) != 0);

            (*v95)(v51, v31);
            sub_1E134B88C(v113);
            sub_1E134B88C(v114);
            v30 = v51;
            goto LABEL_7;
          }

          v40 = ~v38;
          while (1)
          {
            sub_1E134E724(*(v36 + 48) + 40 * v39, v112);
            v41 = MEMORY[0x1E68FFC60](v112, v113);
            sub_1E134B88C(v112);
            if (v41)
            {
              break;
            }

            v39 = (v39 + 1) & v40;
            if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v30 = v107;
          v31 = v108;
          (*v95)(v107, v108);
          sub_1E134B88C(v113);
        }

        else
        {
        }
      }

      sub_1E134B88C(v114);
LABEL_7:
      __swift_mutable_project_boxed_opaque_existential_1(v119, AssociatedTypeWitness);
      sub_1E1AF6DBC();
      if (!*(&v117 + 1))
      {
        v65 = v122;
        goto LABEL_29;
      }
    }
  }

  v65 = v106;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1(v119);
  if (!v65[2])
  {
LABEL_45:

    goto LABEL_46;
  }

  v105 = a9;
  v66 = v65 + 8;
  v67 = 1 << *(v65 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & v65[8];
  v70 = (v10 + qword_1EE1E9DF0);
  v95 = qword_1EE216690;
  v71 = (v67 + 63) >> 6;
  LODWORD(v94) = *MEMORY[0x1E69AB448];
  v93 = (v97 + 13);
  ++v97;

  v72 = 0;
  v106 = v65;
  v96 = v70;
  while (v69)
  {
    v73 = v69;
LABEL_39:
    v69 = (v73 - 1) & v73;
    if (*v70)
    {
      v75 = *v70;
      v76 = *(v65[7] + ((v72 << 9) | (8 * __clz(__rbit64(v73)))));
      v109 = v69;
      v110 = v76;
      v77 = v70[1];
      if (*(v95 + v104))
      {
        v79 = v98;
        v78 = v99;
        *v98 = 0;
        (*v93)(v79, v94, v78);

        v80 = v75;
        sub_1E1300E34(v75, v77);
        sub_1E1AF509C();
        (*v97)(v79, v78);
      }

      else
      {

        v80 = v75;
        sub_1E1300E34(v75, v77);
      }

      v81 = v110;
      v108 = v77;
      v107 = v80(v110);
      v82 = swift_allocObject();
      swift_weakInit();
      v83 = swift_allocObject();
      v84 = v100;
      *(v83 + 16) = v82;
      *(v83 + 24) = v84;
      v85 = swift_allocObject();
      swift_weakInit();
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      *(v86 + 24) = v81;
      v87 = sub_1E1361A80();

      v88 = sub_1E1AF68EC();
      AssociatedTypeWitness = v87;
      AssociatedConformanceWitness = MEMORY[0x1E69AB720];
      v119[0] = v88;
      sub_1E1AF57FC();
      sub_1E1300EA8(v80, v108);

      __swift_destroy_boxed_opaque_existential_1(v119);

      v65 = v106;
      v70 = v96;
      v69 = v109;
    }
  }

  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v74 >= v71)
    {

      goto LABEL_45;
    }

    v73 = v66[v74];
    ++v72;
    if (v73)
    {
      v72 = v74;
      goto LABEL_39;
    }
  }

  __break(1u);
}

void sub_1E1A17EAC(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5DEA8, &unk_1F5C5DF48, &unk_1F5C5DF70, sub_1E1A1DD10, sub_1E1A1E068);
  }
}

void sub_1E1A18040(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D188, &unk_1F5C5D228, &unk_1F5C5D250, sub_1E1A1D738, sub_1E1A1E068);
  }
}

void sub_1E1A181D4(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D480, &unk_1F5C5D520, &unk_1F5C5D548, sub_1E1A1D898, sub_1E1A1E068);
  }
}

void sub_1E1A18368(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v4 = a4;
  v95 = a3;
  v101 = a2;
  v6 = *a4;
  v94 = sub_1E1AF504C();
  v7 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v84 - v10;
  v99 = sub_1E1AEFCCC();
  v12 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v90 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v98 = (&v84 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A8, &unk_1E1B02630);
  v114[3] = v16;
  v114[4] = sub_1E1302CD4(&qword_1EE1D25F0, &qword_1ECEB24A8, &unk_1E1B02630, MEMORY[0x1E69E6518]);
  v114[0] = a1;
  if (*(v4 + qword_1EE2166D0) == 1 || !*(a1 + 16))
  {

LABEL_50:
    __swift_destroy_boxed_opaque_existential_1(v114);
    return;
  }

  v85 = v7;
  v87 = v6;

  v97 = sub_1E159DE70(MEMORY[0x1E69E7CC0]);
  v113 = v97;
  v17 = __swift_project_boxed_opaque_existential_1Tm(v114, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v110);
  v23 = -1 << *(*v20 + 32);
  v24 = ~v23;
  v25 = (*v20 + 56);
  v26 = *v25;
  v27 = -v23;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  *boxed_opaque_existential_0 = *v20;
  boxed_opaque_existential_0[1] = v25;
  boxed_opaque_existential_0[2] = v24;
  boxed_opaque_existential_0[3] = 0;
  boxed_opaque_existential_0[4] = v28 & v26;
  v29 = qword_1EE2166A0;
  v30 = qword_1EE1E9DE8;
  swift_beginAccess();
  v96 = v30;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v110, AssociatedTypeWitness);
  sub_1E1AF6DBC();
  v100 = v4;
  if (*(&v108 + 1))
  {
    v97 = (v12 + 48);
    v91 = (v12 + 8);
    v92 = (v12 + 32);
    v88 = (v12 + 16);
    v86 = xmmword_1E1B02CC0;
    v32 = v98;
    v31 = v99;
    while (1)
    {
      v106 = v109;
      v105[0] = v107;
      v105[1] = v108;
      v33 = *(v4 + v29);
      if (!*(v33 + 16))
      {
        goto LABEL_9;
      }

      v34 = sub_1E135FCF4(v105);
      if ((v35 & 1) == 0)
      {
        break;
      }

      v36 = *(*(v33 + 56) + 8 * v34);

      sub_1E134E724(v105, v104);
      v101(v36);
      if ((*v97)(v11, 1, v31) != 1)
      {
        (*v92)(v32, v11, v31);
        v37 = *(v96 + v4);
        if (*(v37 + 16))
        {

          v38 = sub_1E1AF6F2C();
          v39 = -1 << *(v37 + 32);
          v40 = v38 & ~v39;
          if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
          {
            v41 = ~v39;
            while (1)
            {
              sub_1E134E724(*(v37 + 48) + 40 * v40, v103);
              v42 = MEMORY[0x1E68FFC60](v103, v104);
              sub_1E134B88C(v103);
              if (v42)
              {
                break;
              }

              v40 = (v40 + 1) & v41;
              if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v32 = v98;
            v31 = v99;
            (*v91)(v98, v99);
            sub_1E134B88C(v104);
            sub_1E134B88C(v105);
            v4 = v100;
            goto LABEL_10;
          }

LABEL_20:
        }

        v43 = (v36 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
        if (v113[2] && (sub_1E13018F8(*v43, v43[1]), (v44 & 1) != 0))
        {
          v45 = *v43;
          v46 = v43[1];

          v47 = sub_1E1A0C544(v103, v45, v46);
          if (*v48)
          {
            v49 = v48;
            v89 = v47;
            v50 = v90;
            v32 = v98;
            v31 = v99;
            (*v88)(v90, v98, v99);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v102[0] = *v49;
            *v49 = 0x8000000000000000;
            sub_1E159840C(v50, v104, isUniquelyReferenced_nonNull_native);
            *v49 = v102[0];

            v89(v103, 0);

            goto LABEL_26;
          }

          (v47)(v103, 0);

          v31 = v99;
          v4 = v100;
          v32 = v98;
        }

        else
        {
          v52 = v43[1];
          v89 = *v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C68, &unk_1E1B36440);
          v53 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5CC0, &qword_1E1B19AF0) - 8);
          v54 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
          v55 = swift_allocObject();
          *(v55 + 16) = v86;
          v56 = v55 + v54;
          v57 = v53[14];
          sub_1E134E724(v104, v56);
          v58 = (v56 + v57);
          v32 = v98;
          v31 = v99;
          (*v88)(v58, v98, v99);

          v59 = sub_1E159DE84(v55);
          swift_setDeallocating();
          sub_1E1308058(v56, &unk_1ECEB5CC0, &qword_1E1B19AF0);
          swift_deallocClassInstance();
          v60 = v113;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v103[0] = v60;
          sub_1E1598584(v59, v89, v52, v61);

          v113 = v103[0];
LABEL_26:
          v4 = v100;
        }

        sub_1E134E724(v104, v102);
        v62 = v96;
        swift_beginAccess();
        sub_1E1893DD0(v103, v102);
        sub_1E134B88C(v103);
        swift_endAccess();
        sub_1E19FF980(*(*(v62 + v4) + 16) != 0);

        (*v91)(v32, v31);
        sub_1E134B88C(v104);
        sub_1E134B88C(v105);
        goto LABEL_10;
      }

      sub_1E134B88C(v104);
      sub_1E134B88C(v105);
      sub_1E1308058(v11, &unk_1ECEB4B60, &unk_1E1B02620);
LABEL_10:
      __swift_mutable_project_boxed_opaque_existential_1(v110, AssociatedTypeWitness);
      sub_1E1AF6DBC();
      if (!*(&v108 + 1))
      {
        v63 = v113;
        goto LABEL_33;
      }
    }

LABEL_9:
    sub_1E134B88C(v105);
    goto LABEL_10;
  }

  v63 = v97;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v110);
  if (!v63[2])
  {
LABEL_49:

    goto LABEL_50;
  }

  v64 = v63 + 8;
  v65 = 1 << *(v63 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & v63[8];
  v68 = (v4 + qword_1EE1E9DF0);
  v95 = qword_1EE216690;
  v69 = (v65 + 63) >> 6;
  LODWORD(v92) = *MEMORY[0x1E69AB448];
  v90 = (v85 + 8);
  v91 = (v85 + 104);

  v70 = 0;
  v96 = v68;
  v97 = v63;
  while (v67)
  {
    v71 = v67;
LABEL_43:
    v67 = (v71 - 1) & v71;
    if (*v68)
    {
      v98 = *v68;
      v99 = (v71 - 1) & v71;
      v73 = *(v63[7] + ((v70 << 9) | (8 * __clz(__rbit64(v71)))));
      v101 = v68[1];
      if (*(v4 + v95))
      {
        v75 = v93;
        v74 = v94;
        *v93 = 0;
        (*v91)(v75, v92, v74);

        v76 = v98;
        sub_1E1300E34(v98, v101);
        sub_1E1AF509C();
        (*v90)(v75, v74);
      }

      else
      {

        v76 = v98;
        sub_1E1300E34(v98, v101);
      }

      v77 = v87;
      v98 = v76(v73);
      v78 = swift_allocObject();
      swift_weakInit();
      v79 = swift_allocObject();
      *(v79 + 16) = v78;
      *(v79 + 24) = v77;
      v80 = swift_allocObject();
      swift_weakInit();
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      *(v81 + 24) = v73;
      v82 = sub_1E1361A80();

      v83 = sub_1E1AF68EC();
      AssociatedTypeWitness = v82;
      AssociatedConformanceWitness = MEMORY[0x1E69AB720];
      v110[0] = v83;
      sub_1E1AF57FC();
      sub_1E1300EA8(v76, v101);

      v4 = v100;

      __swift_destroy_boxed_opaque_existential_1(v110);

      v68 = v96;
      v63 = v97;
      v67 = v99;
    }
  }

  while (1)
  {
    v72 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v72 >= v69)
    {

      goto LABEL_49;
    }

    v71 = v64[v72];
    ++v70;
    if (v71)
    {
      v70 = v72;
      goto LABEL_43;
    }
  }

  __break(1u);
}

void sub_1E1A18FC4(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v7);
    v8[16] = a2 & 1;
    sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D020, &unk_1F5C5E150, &unk_1F5C5E178, sub_1E1A1E06C, sub_1E1A1E068);
  }
}

void sub_1E1A19158(unint64_t a1, void *a2, uint64_t a3)
{
  v33 = a3;
  v32 = sub_1E1AF3C3C();
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v31 = &v23 - v9;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v11 = 0;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = a1 & 0xC000000000000001;
    v24 = (v5 + 8);
    v25 = qword_1EE2166A8;
    v26 = i;
    v27 = a1;
    v12 = v30;
    while (v29)
    {
      MEMORY[0x1E68FFD80](v11, a1, v8);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v15 = a2[3];
      v14 = a2[4];
      __swift_project_boxed_opaque_existential_1Tm(a2, v15);
      (*(v14 + 8))(v15, v14);
      v16 = v31;
      sub_1E14A36D4(v12, v31);
      (*v24)(v12, v32);
      v17 = a2[3];
      v18 = a2[4];
      __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
      v19 = *(v18 + 16);
      v20 = v17;
      v21 = v18;
      v22 = v26;
      a1 = v27;
      v19(v16, v20, v21);
      v5 = *(v33 + v25);
      sub_1E1AF5BCC();

      ++v11;
      if (v13 == v22)
      {
        return;
      }
    }

    if (v11 >= *(v28 + 16))
    {
      goto LABEL_12;
    }

    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1E1A193BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60B0, &unk_1E1B16240);
  v5 = sub_1E1AF729C();
  v6 = v5;
  v7 = 0;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v38 = v5 + 64;
  v27 = a1;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v7 << 6);
      sub_1E134E724(*(a1 + 48) + 40 * v16, v36);
      v17 = *(*(a1 + 56) + 8 * v16);
      v33 = v36[0];
      v34 = v36[1];
      v35 = v37;
      sub_1E134E724(v17 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v32);

      if (!swift_dynamicCast())
      {
        goto LABEL_17;
      }

      if (v30 == a2 && v31 == a3)
      {
        break;
      }

      v18 = sub_1E1AF74AC();

      if (v18)
      {
        goto LABEL_15;
      }

LABEL_16:
      a1 = v27;
LABEL_17:
      *(v38 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v21 = v6[6] + 40 * v16;
      v22 = v34;
      *v21 = v33;
      *(v21 + 16) = v22;
      *(v21 + 32) = v35;
      *(v6[7] + 8 * v16) = v17;
      v23 = v6[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_22;
      }

      v6[2] = v25;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

LABEL_15:
    v19 = v17[3];
    v32[0] = 100;
    v20 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v19, v32, 1, a4 & 1);

    v17 = v20;
    goto LABEL_16;
  }

LABEL_5:
  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_1E1A19618(char *a1, uint64_t a2)
{
  v3 = sub_1E1AF503C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v43 = v6;
  v44 = v4;
  *(Strong + qword_1EE2166D0) = 0;
  v9 = *(Strong + qword_1EE1E9E08);
  v45 = v3;
  if (v9)
  {
    v10 = *(Strong + qword_1EE1E9E08 + 8);

    v11 = v9(a1);
    sub_1E1300EA8(v9, v10);
  }

  else
  {

    v11 = a1;
  }

  v12 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping;
  swift_beginAccess();

  sub_1E19FF318(v13);
  v15 = v14;

  *&v11[v12] = v15;

  *(v8 + qword_1EE1E9D48) = v11;
  swift_retain_n();

  v16 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering;
  swift_beginAccess();
  v17 = *&v11[v16];
  v18 = qword_1EE1E9DF8;
  *(v8 + qword_1EE1E9DF8) = v17;

  v19 = *&v11[v12];
  v20 = qword_1EE2166A0;
  swift_beginAccess();
  *(v8 + v20) = v19;

  sub_1E134FD1C(&v11[OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage], &v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v50 = 0;
  v51 = 0;
  v21 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v47, v8 + v21);
  swift_endAccess();
  sub_1E136073C(v8 + v21, v46);
  sub_1E1AF5BCC();
  sub_1E1360B10(v46);
  sub_1E1360B10(&v47);
  v22 = *(v8 + qword_1EE2166C0);
  v23 = *(v8 + v18);
  v24 = MEMORY[0x1E69E7CC0];
  v46[0] = MEMORY[0x1E69E7CC0];
  v25 = *(v23 + 16);

  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = 0;
  v27 = v23 + 32;
  v39 = v25 - 1;
  v42 = a1;
  v41 = v22;
  v40 = v23 + 32;
  do
  {
    v28 = v27 + 40 * v26;
    v29 = v26;
    while (1)
    {
      if (v29 >= *(v23 + 16))
      {
        __break(1u);
        return;
      }

      sub_1E134E724(v28, &v47);
      if (*(*(v8 + v20) + 16))
      {
        break;
      }

LABEL_8:
      ++v29;
      sub_1E134B88C(&v47);
      v28 += 40;
      if (v25 == v29)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v47);
    if ((v30 & 1) == 0)
    {

      goto LABEL_8;
    }

    v31 = sub_1E134B88C(&v47);
    MEMORY[0x1E68FEF20](v31);
    if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v26 = v29 + 1;
    sub_1E1AF62AC();
    v24 = v46[0];
    v27 = v40;
  }

  while (v39 != v29);
LABEL_16:

  v47 = v11;
  v48 = v24;
  v49 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v47, v48, v49);
  swift_beginAccess();

  sub_1E1A15900(v32, 0, v8);

  sub_1E1A0711C(v11);

  if (*(v8 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v8 + qword_1EE216690))
  {
    v33 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v34 = sub_1E1AF3C3C();
    v35 = v43;
    (*(*(v34 - 8) + 16))(v43, &v11[v33], v34);
    v36 = v44;
    v37 = v45;
    (*(v44 + 104))(v35, *MEMORY[0x1E69AB440], v45);
    sub_1E1AF508C();

    (*(v36 + 8))(v35, v37);
  }

  else
  {
  }
}

void sub_1E1A19C20(char *a1, uint64_t a2)
{
  v3 = sub_1E1AF503C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v43 = v6;
  v44 = v4;
  *(Strong + qword_1EE2166D0) = 0;
  v9 = *(Strong + qword_1EE1E9E08);
  v45 = v3;
  if (v9)
  {
    v10 = *(Strong + qword_1EE1E9E08 + 8);

    v11 = v9(a1);
    sub_1E1300EA8(v9, v10);
  }

  else
  {

    v11 = a1;
  }

  v12 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;
  swift_beginAccess();

  sub_1E19FF318(v13);
  v15 = v14;

  *&v11[v12] = v15;

  *(v8 + qword_1EE1E9D48) = v11;
  swift_retain_n();

  v16 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v17 = *&v11[v16];
  v18 = qword_1EE1E9DF8;
  *(v8 + qword_1EE1E9DF8) = v17;

  v19 = *&v11[v12];
  v20 = qword_1EE2166A0;
  swift_beginAccess();
  *(v8 + v20) = v19;

  sub_1E134FD1C(&v11[OBJC_IVAR____TtC11AppStoreKit11ArticlePage_nextPage], &v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v50 = 0;
  v51 = 0;
  v21 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v47, v8 + v21);
  swift_endAccess();
  sub_1E136073C(v8 + v21, v46);
  sub_1E1AF5BCC();
  sub_1E1360B10(v46);
  sub_1E1360B10(&v47);
  v22 = *(v8 + qword_1EE2166C0);
  v23 = *(v8 + v18);
  v24 = MEMORY[0x1E69E7CC0];
  v46[0] = MEMORY[0x1E69E7CC0];
  v25 = *(v23 + 16);

  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = 0;
  v27 = v23 + 32;
  v39 = v25 - 1;
  v42 = a1;
  v41 = v22;
  v40 = v23 + 32;
  do
  {
    v28 = v27 + 40 * v26;
    v29 = v26;
    while (1)
    {
      if (v29 >= *(v23 + 16))
      {
        __break(1u);
        return;
      }

      sub_1E134E724(v28, &v47);
      if (*(*(v8 + v20) + 16))
      {
        break;
      }

LABEL_8:
      ++v29;
      sub_1E134B88C(&v47);
      v28 += 40;
      if (v25 == v29)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v47);
    if ((v30 & 1) == 0)
    {

      goto LABEL_8;
    }

    v31 = sub_1E134B88C(&v47);
    MEMORY[0x1E68FEF20](v31);
    if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v26 = v29 + 1;
    sub_1E1AF62AC();
    v24 = v46[0];
    v27 = v40;
  }

  while (v39 != v29);
LABEL_16:

  v47 = v11;
  v48 = v24;
  v49 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v47, v48, v49);
  swift_beginAccess();

  sub_1E1A15A94(v32, 0, v8);

  sub_1E1A07744(v11);

  if (*(v8 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v8 + qword_1EE216690))
  {
    v33 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v34 = sub_1E1AF3C3C();
    v35 = v43;
    (*(*(v34 - 8) + 16))(v43, &v11[v33], v34);
    v36 = v44;
    v37 = v45;
    (*(v44 + 104))(v35, *MEMORY[0x1E69AB440], v45);
    sub_1E1AF508C();

    (*(v36 + 8))(v35, v37);
  }

  else
  {
  }
}

void sub_1E1A1A228(char *a1, uint64_t a2)
{
  v3 = sub_1E1AF503C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v43 = v6;
  v44 = v4;
  *(Strong + qword_1EE2166D0) = 0;
  v9 = *(Strong + qword_1EE1E9E08);
  v45 = v3;
  if (v9)
  {
    v10 = *(Strong + qword_1EE1E9E08 + 8);

    v11 = v9(a1);
    sub_1E1300EA8(v9, v10);
  }

  else
  {

    v11 = a1;
  }

  v12 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();

  sub_1E19FF318(v13);
  v15 = v14;

  *&v11[v12] = v15;

  *(v8 + qword_1EE1E9D48) = v11;
  swift_retain_n();

  v16 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v17 = *&v11[v16];
  v18 = qword_1EE1E9DF8;
  *(v8 + qword_1EE1E9DF8) = v17;

  v19 = *&v11[v12];
  v20 = qword_1EE2166A0;
  swift_beginAccess();
  *(v8 + v20) = v19;

  sub_1E134FD1C(&v11[OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage], &v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v50 = 0;
  v51 = 0;
  v21 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v47, v8 + v21);
  swift_endAccess();
  sub_1E136073C(v8 + v21, v46);
  sub_1E1AF5BCC();
  sub_1E1360B10(v46);
  sub_1E1360B10(&v47);
  v22 = *(v8 + qword_1EE2166C0);
  v23 = *(v8 + v18);
  v24 = MEMORY[0x1E69E7CC0];
  v46[0] = MEMORY[0x1E69E7CC0];
  v25 = *(v23 + 16);

  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = 0;
  v27 = v23 + 32;
  v39 = v25 - 1;
  v42 = a1;
  v41 = v22;
  v40 = v23 + 32;
  do
  {
    v28 = v27 + 40 * v26;
    v29 = v26;
    while (1)
    {
      if (v29 >= *(v23 + 16))
      {
        __break(1u);
        return;
      }

      sub_1E134E724(v28, &v47);
      if (*(*(v8 + v20) + 16))
      {
        break;
      }

LABEL_8:
      ++v29;
      sub_1E134B88C(&v47);
      v28 += 40;
      if (v25 == v29)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v47);
    if ((v30 & 1) == 0)
    {

      goto LABEL_8;
    }

    v31 = sub_1E134B88C(&v47);
    MEMORY[0x1E68FEF20](v31);
    if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v26 = v29 + 1;
    sub_1E1AF62AC();
    v24 = v46[0];
    v27 = v40;
  }

  while (v39 != v29);
LABEL_16:

  v47 = v11;
  v48 = v24;
  v49 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v47, v48, v49);
  swift_beginAccess();

  sub_1E1A16868(v32, 0, v8);

  sub_1E1A07D6C(v11);

  if (*(v8 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v8 + qword_1EE216690))
  {
    v33 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v34 = sub_1E1AF3C3C();
    v35 = v43;
    (*(*(v34 - 8) + 16))(v43, &v11[v33], v34);
    v36 = v44;
    v37 = v45;
    (*(v44 + 104))(v35, *MEMORY[0x1E69AB440], v45);
    sub_1E1AF508C();

    (*(v36 + 8))(v35, v37);
  }

  else
  {
  }
}

void sub_1E1A1A830(char *a1, uint64_t a2)
{
  v3 = sub_1E1AF503C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v50 = v6;
  v51 = v4;
  v52 = v3;
  *(Strong + qword_1EE2166D0) = 0;
  v9 = *(Strong + qword_1EE1E9E08);
  if (v9)
  {
    v10 = *(Strong + qword_1EE1E9E08 + 8);

    v11 = v9(a1);
    sub_1E1300EA8(v9, v10);
  }

  else
  {

    v11 = a1;
  }

  v12 = qword_1EE217318;
  swift_beginAccess();

  sub_1E19FF318(v13);
  v15 = v14;

  *&v11[v12] = v15;

  *(v8 + qword_1EE1E9D48) = v11;
  swift_retain_n();

  v16 = sub_1E1302C44(&qword_1ECEB7188, type metadata accessor for ShelfBasedProductPage, &protocol conformance descriptor for DynamicPage<A>);
  v17 = *(v16 + 56);
  v18 = type metadata accessor for ShelfBasedProductPage(0);
  v19 = v17(v18, v16);
  v20 = *(*v11 + 184);
  swift_beginAccess();
  v21 = MEMORY[0x1E69E7CC0];
  if (*(v19 + 16))
  {
    v22 = sub_1E159549C(v11[v20]);
    if (v23)
    {
      v24 = *(*(v19 + 56) + 8 * v22);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = qword_1EE1E9DF8;
  *(v8 + qword_1EE1E9DF8) = v24;

  v54 = v18;
  v53 = off_1F5C38F58[0];
  off_1F5C38F58[0]();
  v27 = v26;
  v28 = qword_1EE2166A0;
  swift_beginAccess();
  *(v8 + v28) = v27;

  sub_1E134FD1C(&v11[*(*v11 + 192)], &v56, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v59 = 0;
  v60 = 0;
  v29 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v56, v8 + v29);
  swift_endAccess();
  sub_1E136073C(v8 + v29, v55);
  sub_1E1AF5BCC();
  sub_1E1360B10(v55);
  sub_1E1360B10(&v56);
  v30 = *(v8 + qword_1EE2166C0);
  v31 = *(v8 + v25);
  v55[0] = v21;
  v32 = *(v31 + 16);

  if (!v32)
  {
    goto LABEL_21;
  }

  v33 = 0;
  v34 = v31 + 32;
  v46 = v32 - 1;
  v49 = a1;
  v48 = v30;
  v47 = v31 + 32;
  do
  {
    v35 = v34 + 40 * v33;
    v36 = v33;
    while (1)
    {
      if (v36 >= *(v31 + 16))
      {
        __break(1u);
        return;
      }

      sub_1E134E724(v35, &v56);
      if (*(*(v8 + v28) + 16))
      {
        break;
      }

LABEL_13:
      ++v36;
      sub_1E134B88C(&v56);
      v35 += 40;
      if (v32 == v36)
      {
        goto LABEL_21;
      }
    }

    sub_1E135FCF4(&v56);
    if ((v37 & 1) == 0)
    {

      goto LABEL_13;
    }

    v38 = sub_1E134B88C(&v56);
    MEMORY[0x1E68FEF20](v38);
    if (*((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v33 = v36 + 1;
    sub_1E1AF62AC();
    v21 = v55[0];
    v34 = v47;
  }

  while (v46 != v36);
LABEL_21:

  v56 = v11;
  v57 = v21;
  v58 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v56, v57, v58);
  v39 = (v53)(v54);
  sub_1E1A169FC(v39, 0, v8);

  sub_1E1A08394(v11);

  if (*(v8 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v8 + qword_1EE216690))
  {
    v40 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v41 = sub_1E1AF3C3C();
    v42 = v50;
    (*(*(v41 - 8) + 16))(v50, &v11[v40], v41);
    v43 = v51;
    v44 = v52;
    (*(v51 + 104))(v42, *MEMORY[0x1E69AB440], v52);
    sub_1E1AF508C();

    (*(v43 + 8))(v42, v44);
  }

  else
  {
  }
}

void sub_1E1A1AF00(char *a1, uint64_t a2)
{
  v3 = sub_1E1AF503C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v43 = v6;
  v44 = v4;
  *(Strong + qword_1EE2166D0) = 0;
  v9 = *(Strong + qword_1EE1E9E08);
  v45 = v3;
  if (v9)
  {
    v10 = *(Strong + qword_1EE1E9E08 + 8);

    v11 = v9(a1);
    sub_1E1300EA8(v9, v10);
  }

  else
  {

    v11 = a1;
  }

  v12 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;
  swift_beginAccess();

  sub_1E19FF318(v13);
  v15 = v14;

  *&v11[v12] = v15;

  *(v8 + qword_1EE1E9D48) = v11;
  swift_retain_n();

  v16 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v17 = *&v11[v16];
  v18 = qword_1EE1E9DF8;
  *(v8 + qword_1EE1E9DF8) = v17;

  v19 = *&v11[v12];
  v20 = qword_1EE2166A0;
  swift_beginAccess();
  *(v8 + v20) = v19;

  sub_1E134FD1C(&v11[OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage], &v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v50 = 0;
  v51 = 0;
  v21 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v47, v8 + v21);
  swift_endAccess();
  sub_1E136073C(v8 + v21, v46);
  sub_1E1AF5BCC();
  sub_1E1360B10(v46);
  sub_1E1360B10(&v47);
  v22 = *(v8 + qword_1EE2166C0);
  v23 = *(v8 + v18);
  v24 = MEMORY[0x1E69E7CC0];
  v46[0] = MEMORY[0x1E69E7CC0];
  v25 = *(v23 + 16);

  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = 0;
  v27 = v23 + 32;
  v39 = v25 - 1;
  v42 = a1;
  v41 = v22;
  v40 = v23 + 32;
  do
  {
    v28 = v27 + 40 * v26;
    v29 = v26;
    while (1)
    {
      if (v29 >= *(v23 + 16))
      {
        __break(1u);
        return;
      }

      sub_1E134E724(v28, &v47);
      if (*(*(v8 + v20) + 16))
      {
        break;
      }

LABEL_8:
      ++v29;
      sub_1E134B88C(&v47);
      v28 += 40;
      if (v25 == v29)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v47);
    if ((v30 & 1) == 0)
    {

      goto LABEL_8;
    }

    v31 = sub_1E134B88C(&v47);
    MEMORY[0x1E68FEF20](v31);
    if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v26 = v29 + 1;
    sub_1E1AF62AC();
    v24 = v46[0];
    v27 = v40;
  }

  while (v39 != v29);
LABEL_16:

  v47 = v11;
  v48 = v24;
  v49 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v47, v48, v49);
  swift_beginAccess();

  sub_1E1A16F18(v32, 0, v8);

  sub_1E1A091D4(v11);

  if (*(v8 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v8 + qword_1EE216690))
  {
    v33 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v34 = sub_1E1AF3C3C();
    v35 = v43;
    (*(*(v34 - 8) + 16))(v43, &v11[v33], v34);
    v36 = v44;
    v37 = v45;
    (*(v44 + 104))(v35, *MEMORY[0x1E69AB440], v45);
    sub_1E1AF508C();

    (*(v36 + 8))(v35, v37);
  }

  else
  {
  }
}

void sub_1E1A1B508(char *a1, uint64_t a2)
{
  v3 = sub_1E1AF503C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v43 = v6;
  v44 = v4;
  *(Strong + qword_1EE2166D0) = 0;
  v9 = *(Strong + qword_1EE1E9E08);
  v45 = v3;
  if (v9)
  {
    v10 = *(Strong + qword_1EE1E9E08 + 8);

    v11 = v9(a1);
    sub_1E1300EA8(v9, v10);
  }

  else
  {

    v11 = a1;
  }

  v12 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping;
  swift_beginAccess();

  sub_1E19FF318(v13);
  v15 = v14;

  *&v11[v12] = v15;

  *(v8 + qword_1EE1E9D48) = v11;
  swift_retain_n();

  v16 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  v17 = *&v11[v16];
  v18 = qword_1EE1E9DF8;
  *(v8 + qword_1EE1E9DF8) = v17;

  v19 = *&v11[v12];
  v20 = qword_1EE2166A0;
  swift_beginAccess();
  *(v8 + v20) = v19;

  sub_1E134FD1C(&v11[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_nextPage], &v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v50 = 0;
  v51 = 0;
  v21 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v47, v8 + v21);
  swift_endAccess();
  sub_1E136073C(v8 + v21, v46);
  sub_1E1AF5BCC();
  sub_1E1360B10(v46);
  sub_1E1360B10(&v47);
  v22 = *(v8 + qword_1EE2166C0);
  v23 = *(v8 + v18);
  v24 = MEMORY[0x1E69E7CC0];
  v46[0] = MEMORY[0x1E69E7CC0];
  v25 = *(v23 + 16);

  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = 0;
  v27 = v23 + 32;
  v39 = v25 - 1;
  v42 = a1;
  v41 = v22;
  v40 = v23 + 32;
  do
  {
    v28 = v27 + 40 * v26;
    v29 = v26;
    while (1)
    {
      if (v29 >= *(v23 + 16))
      {
        __break(1u);
        return;
      }

      sub_1E134E724(v28, &v47);
      if (*(*(v8 + v20) + 16))
      {
        break;
      }

LABEL_8:
      ++v29;
      sub_1E134B88C(&v47);
      v28 += 40;
      if (v25 == v29)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v47);
    if ((v30 & 1) == 0)
    {

      goto LABEL_8;
    }

    v31 = sub_1E134B88C(&v47);
    MEMORY[0x1E68FEF20](v31);
    if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v26 = v29 + 1;
    sub_1E1AF62AC();
    v24 = v46[0];
    v27 = v40;
  }

  while (v39 != v29);
LABEL_16:

  v47 = v11;
  v48 = v24;
  v49 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v47, v48, v49);
  swift_beginAccess();

  sub_1E1A17EAC(v32, 0, v8);

  sub_1E1A09CBC(v11);

  if (*(v8 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v8 + qword_1EE216690))
  {
    v33 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v34 = sub_1E1AF3C3C();
    v35 = v43;
    (*(*(v34 - 8) + 16))(v43, &v11[v33], v34);
    v36 = v44;
    v37 = v45;
    (*(v44 + 104))(v35, *MEMORY[0x1E69AB440], v45);
    sub_1E1AF508C();

    (*(v36 + 8))(v35, v37);
  }

  else
  {
  }
}

void sub_1E1A1BB10(char *a1, uint64_t a2)
{
  v3 = sub_1E1AF503C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v47 = v6;
  v48 = v4;
  v49 = v3;
  *(Strong + qword_1EE2166D0) = 0;
  v9 = *(Strong + qword_1EE1E9E08);
  v52 = a1;
  if (v9)
  {
    v10 = *(Strong + qword_1EE1E9E08 + 8);

    a1 = v9(a1);
    sub_1E1300EA8(v9, v10);
  }

  else
  {
  }

  v11 = qword_1EE217318;
  swift_beginAccess();

  sub_1E19FF318(v12);
  v14 = v13;

  *&a1[v11] = v14;

  *(v8 + qword_1EE1E9D48) = a1;
  swift_retain_n();

  v15 = sub_1E1302C44(&qword_1ECEB7180, type metadata accessor for SearchChartsAndCategoriesPage, &protocol conformance descriptor for DynamicPage<A>);
  v16 = *(v15 + 56);
  v17 = type metadata accessor for SearchChartsAndCategoriesPage(0);
  v18 = v16(v17, v15);
  swift_beginAccess();
  v19 = MEMORY[0x1E69E7CC0];
  if (*(v18 + 16))
  {

    v20 = sub_1E15A47D8();
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v18 + 56) + 8 * v20);
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v24 = qword_1EE1E9DF8;
  *(v8 + qword_1EE1E9DF8) = v23;

  v51 = v17;
  v50 = off_1F5C38F58[0];
  off_1F5C38F58[0]();
  v26 = v25;
  v27 = qword_1EE2166A0;
  swift_beginAccess();
  *(v8 + v27) = v26;

  sub_1E134FD1C(&a1[*(*a1 + 192)], &v55, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v58 = 0;
  v59 = 0;
  v28 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v55, v8 + v28);
  swift_endAccess();
  sub_1E136073C(v8 + v28, v54);
  sub_1E1AF5BCC();
  sub_1E1360B10(v54);
  sub_1E1360B10(&v55);
  v29 = *(v8 + qword_1EE2166C0);
  v30 = *(v8 + v24);
  v54[0] = v19;
  v31 = *(v30 + 16);

  if (!v31)
  {
    v53 = v19;
    goto LABEL_24;
  }

  v32 = 0;
  v33 = v30 + 32;
  v44 = v31 - 1;
  v53 = MEMORY[0x1E69E7CC0];
  v46 = v29;
  v45 = v30 + 32;
  do
  {
    v34 = v33 + 40 * v32;
    v35 = v32;
    while (1)
    {
      if (v35 >= *(v30 + 16))
      {
        __break(1u);
        return;
      }

      sub_1E134E724(v34, &v55);
      if (*(*(v8 + v27) + 16))
      {
        break;
      }

LABEL_13:
      ++v35;
      sub_1E134B88C(&v55);
      v34 += 40;
      if (v31 == v35)
      {
        goto LABEL_24;
      }
    }

    sub_1E135FCF4(&v55);
    if ((v36 & 1) == 0)
    {

      goto LABEL_13;
    }

    v37 = sub_1E134B88C(&v55);
    MEMORY[0x1E68FEF20](v37);
    if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v32 = v35 + 1;
    sub_1E1AF62AC();
    v53 = v54[0];
    v33 = v45;
  }

  while (v44 != v35);
LABEL_24:

  v55 = a1;
  v56 = v53;
  v57 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v55, v56, v57);
  v38 = (v50)(v51, &protocol witness table for DynamicPage<A>);
  sub_1E1A18040(v38, 0, v8);

  sub_1E1A0A2E4(a1);

  if (*(v8 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v8 + qword_1EE216690))
  {
    v39 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v40 = sub_1E1AF3C3C();
    v41 = v47;
    (*(*(v40 - 8) + 16))(v47, &a1[v39], v40);
    v42 = v48;
    v43 = v49;
    (*(v48 + 104))(v41, *MEMORY[0x1E69AB440], v49);
    sub_1E1AF508C();

    (*(v42 + 8))(v41, v43);
  }

  else
  {
  }
}

void sub_1E1A1C22C(char *a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t), uint64_t), uint64_t (*a4)(void, __n128), void (*a5)(void), void (*a6)(uint64_t, __n128))
{
  v11 = sub_1E1AF503C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v50 = v14;
  v51 = v12;
  v52 = v11;
  *(Strong + qword_1EE2166D0) = 0;
  v17 = *(Strong + qword_1EE1E9E08);
  v57 = a6;
  v56 = a5;
  if (v17)
  {
    v18 = *(Strong + qword_1EE1E9E08 + 8);

    v19 = v17(a1);
    a3(v17, v18);
  }

  else
  {

    v19 = a1;
  }

  v55 = a1;
  v20 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();

  sub_1E19FF318(v21);
  v23 = v22;

  *&v19[v20] = v23;

  *(v16 + qword_1EE1E9D48) = v19;
  swift_retain_n();

  v24 = off_1F5C3AD20[0];
  v25 = (a4)(0);
  v24(v25, &protocol witness table for GenericPage);
  v26 = qword_1EE1E9DF8;
  *(v16 + qword_1EE1E9DF8) = v27;

  v54 = v25;
  v53 = off_1F5C3AD28[0];
  (off_1F5C3AD28[0])(v25, &protocol witness table for GenericPage);
  v29 = v28;
  v30 = qword_1EE2166A0;
  swift_beginAccess();
  *(v16 + v30) = v29;

  sub_1E134FD1C(&v19[OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage], &v59, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v62 = 0;
  v63 = 0;
  v31 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v59, v16 + v31);
  swift_endAccess();
  sub_1E136073C(v16 + v31, v58);
  sub_1E1AF5BCC();
  sub_1E1360B10(v58);
  sub_1E1360B10(&v59);
  v32 = *(v16 + qword_1EE2166C0);
  v33 = *(v16 + v26);
  v34 = MEMORY[0x1E69E7CC0];
  v58[0] = MEMORY[0x1E69E7CC0];
  v35 = *(v33 + 16);

  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = 0;
  v37 = v33 + 32;
  v47 = v35 - 1;
  v49 = v32;
  v48 = v33 + 32;
  do
  {
    v38 = v37 + 40 * v36;
    v39 = v36;
    while (1)
    {
      if (v39 >= *(v33 + 16))
      {
        __break(1u);
        return;
      }

      sub_1E134E724(v38, &v59);
      if (*(*(v16 + v30) + 16))
      {
        break;
      }

LABEL_8:
      ++v39;
      sub_1E134B88C(&v59);
      v38 += 40;
      if (v35 == v39)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v59);
    if ((v40 & 1) == 0)
    {

      goto LABEL_8;
    }

    v41 = sub_1E134B88C(&v59);
    MEMORY[0x1E68FEF20](v41);
    if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v36 = v39 + 1;
    sub_1E1AF62AC();
    v34 = v58[0];
    v37 = v48;
  }

  while (v47 != v39);
LABEL_16:

  v59 = v19;
  v60 = v34;
  v61 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v59, v60, v61);
  (v53)(v54);
  v56();

  (v57)(v19);

  if (*(v16 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v16 + qword_1EE216690))
  {
    v42 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v43 = sub_1E1AF3C3C();
    v44 = v50;
    (*(*(v43 - 8) + 16))(v50, &v19[v42], v43);
    v45 = v51;
    v46 = v52;
    (*(v51 + 104))(v44, *MEMORY[0x1E69AB440], v52);
    sub_1E1AF508C();

    (*(v45 + 8))(v44, v46);
  }

  else
  {
  }
}

uint64_t sub_1E1A1C888(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v66 = a1;
  v67 = a3;
  v10 = sub_1E1AF68DC();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v62 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v61);
  v60[1] = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v60 - v15;
  v60[0] = v60 - v15;
  v17 = (v5 + qword_1EE215718);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v5 + qword_1EE215720);
  *v18 = 0;
  v18[1] = 0;
  v19 = v5 + qword_1EE215748;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v19 + 40) = 3;
  *(v5 + qword_1EE215750) = 0;
  *(v5 + qword_1EE215728) = 0;
  *(v5 + qword_1EE1D7BC8) = 0;
  *(v5 + qword_1EE215740) = 0;
  v20 = (v5 + qword_1EE1D7BB0);
  *v20 = 0;
  v20[1] = 0;
  v21 = qword_1EE215738;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD28, &unk_1E1B4C438);
  swift_allocObject();
  *(v5 + v21) = sub_1E1AF5BEC();
  v22 = qword_1EE215730;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0, &qword_1E1B029C0);
  swift_allocObject();
  *(v5 + v22) = sub_1E1AF5BEC();
  *(v5 + qword_1EE1D7BB8) = 0;
  v23 = qword_1EE1D7BD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD30, qword_1E1B4C448);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = MEMORY[0x1E69E7CD0];
  *(v6 + v23) = v24;
  *(v6 + qword_1EE1D7BC0) = a2;
  *(v6 + qword_1EE1D7BA8) = a5;
  v25 = &a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v26 = *v25;
  v27 = v6 + qword_1EE1D7BD8;
  v28 = v25[8];
  *v27 = *v25;
  *(v27 + 8) = v28;
  v65 = a4;
  sub_1E1A1DED0(a4, v6 + qword_1EE1D7BA0);
  v29 = sub_1E1AEFCCC();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  *(v6 + qword_1EE2169B8) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE1ED400) = 0;
  v31 = *(*v6 + 640);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3260, &qword_1E1B061D0);
  v33 = *(*(v32 - 8) + 56);
  v33(v6 + v31, 1, 1, v32);
  v34 = *(*v6 + 648);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500, &qword_1E1B210A0);
  (*(*(v35 - 8) + 56))(v6 + v34, 1, 1, v35);
  v36 = *(*v6 + 656);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3250, &qword_1E1B061C0);
  (*(*(v37 - 8) + 56))(v6 + v36, 1, 1, v37);
  v33(v6 + *(*v6 + 664), 1, 1, v32);
  v38 = *(*v6 + 672);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508, &unk_1E1B028C0);
  (*(*(v39 - 8) + 56))(v6 + v38, 1, 1, v39);
  v40 = *(*v6 + 680);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510, &unk_1E1B05F20);
  (*(*(v41 - 8) + 56))(v6 + v40, 1, 1, v41);
  v42 = *(*v6 + 688);
  sub_1E1361A80();

  v43 = a2;

  sub_1E1361A40(v26, v28);
  sub_1E1AF322C();
  v68 = v30;
  sub_1E1302C44(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  (*(v63 + 104))(v62, *MEMORY[0x1E69E8090], v64);
  *(v6 + v42) = sub_1E1AF692C();
  sub_1E13C6184(v6 + *(*v6 + 696));
  v44 = (v6 + *(*v6 + 704));
  *v44 = 0u;
  v44[1] = 0u;
  *(v44 + 25) = 0u;
  v45 = *(*v6 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8, &unk_1E1B05F30);
  swift_allocObject();
  *(v6 + v45) = sub_1E1AF5BEC();
  v46 = *(*v6 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0, &qword_1E1B02C70);
  swift_allocObject();
  *(v6 + v46) = sub_1E1AF5BEC();
  v47 = *(*v6 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598, &unk_1E1B05F40);
  swift_allocObject();
  *(v6 + v47) = sub_1E1AF5BEC();
  *(v6 + *(*v6 + 736)) = 0;
  v48 = (v6 + *(*v6 + 752));
  *v48 = 0;
  v48[1] = 0;
  v49 = v60[0];
  sub_1E134FD1C(v60[0], v6 + qword_1EE2169A8, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E134FD1C(v69, v6 + *(*v6 + 744), &qword_1ECEB24F8, qword_1E1B1C080);
  v50 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter(0));

  *(v6 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v51);

  v53 = sub_1E13C5A64(v52, 0, 0, 0);
  v54 = *(*v53 + 1112);

  *(v53 + qword_1EE2169B8) = v54(v67);

  sub_1E13D477C(0);

  sub_1E1308058(v69, &qword_1ECEB24F8, qword_1E1B1C080);
  sub_1E1308058(v49, &unk_1ECEB4B60, &unk_1E1B02620);
  v55 = objc_opt_self();
  swift_retain_n();
  v56 = [v55 defaultCenter];
  if (qword_1EE1D54E0 != -1)
  {
    swift_once();
  }

  [v56 addObserver:v53 selector:? name:? object:?];

  v57 = [v55 defaultCenter];
  v58 = qword_1EE1D43C0;

  if (v58 != -1)
  {
    swift_once();
  }

  [v57 addObserver:v53 selector:sel_onScrollToShelfNotification_ name:qword_1EE1D43C8 object:0];

  sub_1E1A1D388(v65);
  return v53;
}
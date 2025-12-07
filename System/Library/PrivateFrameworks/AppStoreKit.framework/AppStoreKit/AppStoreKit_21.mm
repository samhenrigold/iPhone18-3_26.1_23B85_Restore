void sub_1E151B658(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  sub_1E1824DB0();
  a2[1] = v3;
}

void sub_1E151B6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF503C();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFE6C();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E151C1D8(a1, 0);
  v10 = a3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v11 + 8) + 32))(a2, ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1E151C7CC();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v10 + 8);
    v14 = swift_getObjectType();
    (*(*(*(v13 + 8) + 16) + 8))(v14);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v10 + 8);
    v16 = swift_getObjectType();
    (*(v15 + 40))(v16, v15);
    swift_unknownObjectRelease();
  }

  v17 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = MEMORY[0x1E69E7CC0];
  v54[0] = MEMORY[0x1E69E7CC0];
  v20 = *(v18 + 16);
  v21 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;

  swift_beginAccess();
  if (v20)
  {
    v22 = 0;
    v23 = v18 + 32;
    v44 = v20 - 1;
    v45 = v18 + 32;
    v46 = v10;
    v47 = a3;
    while (1)
    {
      v24 = v23 + 40 * v22;
      v25 = v22;
      while (1)
      {
        if (v25 >= *(v18 + 16))
        {
          __break(1u);
          return;
        }

        sub_1E134E724(v24, v55);
        if (*(*(a1 + v21) + 16))
        {
          break;
        }

LABEL_10:
        ++v25;
        sub_1E134B88C(v55);
        v24 += 40;
        if (v20 == v25)
        {
          v10 = v46;
          a3 = v47;
          goto LABEL_21;
        }
      }

      sub_1E135FCF4(v55);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v27 = sub_1E134B88C(v55);
      MEMORY[0x1E68FEF20](v27);
      if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v22 = v25 + 1;
      sub_1E1AF62AC();
      v19 = v54[0];
      v23 = v45;
      v28 = v44 == v25;
      v10 = v46;
      a3 = v47;
      if (v28)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_10;
  }

LABEL_21:

  sub_1E176F7A4(v19, 0);

  swift_beginAccess();
  v29 = *(a3 + 16);
  if (v29)
  {

    v30 = v48;
    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v32 = v31;
    (*(v49 + 8))(v30, v50);
    v33 = v29 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v33 = v32;
    *(v33 + 8) = 0;
    v34 = *(v29 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
    swift_beginAccess();
    *(v34 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  swift_beginAccess();
  if (*(a3 + 24))
  {
    v35 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v36 = sub_1E1AF3C3C();
    v37 = v51;
    (*(*(v36 - 8) + 16))(v51, a1 + v35, v36);
    v39 = v52;
    v38 = v53;
    (*(v52 + 104))(v37, *MEMORY[0x1E69AB440], v53);

    sub_1E1AF508C();

    (*(v39 + 8))(v37, v38);
  }

  swift_beginAccess();
  v40 = *(a3 + 32);
  *(a3 + 32) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(v10 + 8);
    v42 = swift_getObjectType();
    (*(*(*(v41 + 8) + 24) + 16))(v42);
    swift_unknownObjectRelease();
  }

  sub_1E17720F4(v40);
}

void sub_1E151BC8C(void *a1, uint64_t a2)
{
  v4 = sub_1E1AF503C();
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PresenterError(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v10 = *(a2 + 32);
  *(a2 + 32) = 0;
  v11 = a2 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v12 + 8) + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1E17720F4(v10);
  sub_1E1307FE8(a2 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_pageUrl, v9 + *(v7 + 20));
  *v9 = a1;
  swift_beginAccess();
  v14 = *(a2 + 16);
  if (v14)
  {
    v32 = v4;
    sub_1E151DCC0(&qword_1EE1DFCE0, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v31 = swift_allocError();
    sub_1E13614D0(v9, v15);
    v16 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v17 = *(v14 + v16);
    v18 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1E172D0E4(0, v17[2] + 1, 1, v17);
      *(v14 + v16) = v17;
    }

    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      v17 = sub_1E172D0E4((v20 > 1), v21 + 1, 1, v17);
    }

    v17[2] = v21 + 1;
    v17[v21 + 4] = v31;
    *(v14 + v16) = v17;
    swift_endAccess();

    v4 = v32;
  }

  else
  {
    v22 = a1;
  }

  swift_beginAccess();
  if (*(a2 + 24))
  {
    sub_1E151DCC0(&qword_1EE1DFCE0, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v23 = swift_allocError();
    sub_1E13614D0(v9, v24);
    *v6 = v23;
    v25 = v33;
    (*(v33 + 104))(v6, *MEMORY[0x1E69AB430], v4);

    sub_1E1AF508C();

    (*(v25 + 8))(v6, v4);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v11 + 8);
    v27 = swift_getObjectType();
    sub_1E151DCC0(&qword_1EE1DFCE0, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v28 = swift_allocError();
    sub_1E13614D0(v9, v29);
    (*(*(*(v26 + 8) + 24) + 24))(v28, v27);
    swift_unknownObjectRelease();
    sub_1E151DC60(v9, type metadata accessor for PresenterError);
  }

  else
  {
    sub_1E151DC60(v9, type metadata accessor for PresenterError);
  }
}

uint64_t sub_1E151C128(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_card;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_1E151C1D8(uint64_t a1, int a2)
{
  v3 = v2;
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v38 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_isIncomplete);
  if (v38 == 1)
  {
    sub_1E1307FE8(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_pageUrl, &v34 - v8);
    v10 = sub_1E1AEFCCC();
    v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) == 1;
    sub_1E1308058(v9, &unk_1ECEB4B60, &unk_1E1B02620);
  }

  else
  {
    v11 = 1;
  }

  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_hasData) = v11;
  v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_card);
  if (v12)
  {
    v13 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_card;
    swift_beginAccess();
    *(v3 + v13) = v12;
  }

  v14 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = MEMORY[0x1E69E7CC0];
  v43[0] = MEMORY[0x1E69E7CC0];
  v17 = *(v15 + 16);
  v18 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;

  swift_beginAccess();
  if (v17)
  {
    v19 = 0;
    v20 = v15 + 32;
    v34 = v17 - 1;
    v35 = v15 + 32;
    while (1)
    {
      v21 = v20 + 40 * v19;
      v22 = v19;
      while (1)
      {
        if (v22 >= *(v15 + 16))
        {
          __break(1u);
          return;
        }

        sub_1E134E724(v21, v39);
        if (*(*(a1 + v18) + 16))
        {
          break;
        }

LABEL_9:
        ++v22;
        sub_1E134B88C(v39);
        v21 += 40;
        if (v17 == v22)
        {
          goto LABEL_17;
        }
      }

      sub_1E135FCF4(v39);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = sub_1E134B88C(v39);
      MEMORY[0x1E68FEF20](v24);
      if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v19 = v22 + 1;
      sub_1E1AF62AC();
      v16 = v43[0];
      v20 = v35;
      if (v34 == v22)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_9;
  }

LABEL_17:

  v25 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  *(v3 + v25) = v16;

  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_footerLockup) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_footerLockup);

  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_arcadeFooterLockup) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_arcadeFooterLockup);

  *(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shareAction) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shareAction);

  v26 = type metadata accessor for ArticlePage(0);
  v40 = v26;
  v41 = &protocol witness table for BasePage;
  v27 = sub_1E151DCC0(&qword_1EE1E0AB0, type metadata accessor for ArticlePage, &protocol conformance descriptor for BasePage);
  v42 = v27;
  v39[0] = a1;
  swift_beginAccess();

  sub_1E13891EC(v39, v3 + 40);
  swift_endAccess();
  sub_1E138B568();
  sub_1E1308058(v39, &qword_1ECEB2588, &unk_1E1B05C10);
  LOBYTE(v25) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_touchMode);
  v28 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_touchMode;
  swift_beginAccess();
  *(v3 + v28) = v25;
  LOBYTE(v25) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shouldTerminateOnClose);
  v29 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shouldTerminateOnClose;
  swift_beginAccess();
  *(v3 + v29) = v25;
  if ((v37 & 1) == 0)
  {
    if (v38)
    {
      return;
    }

    goto LABEL_23;
  }

  v30 = v36;
  sub_1E1307FE8(v3 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_pageUrl, v36);
  v31 = sub_1E1AEFCCC();
  v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
  sub_1E1308058(v30, &unk_1ECEB4B60, &unk_1E1B02620);
  v33 = v38;
  if (v32 == 1)
  {
    v33 = 0;
  }

  if ((v33 & 1) == 0)
  {
LABEL_23:
    swift_beginAccess();
    if (*(v3 + 16))
    {
      v41 = &protocol witness table for BasePage;
      v42 = v27;
      v40 = v26;
      v39[0] = a1;

      PendingPageRender.use(pageRenderEventFrom:)(v39);

      sub_1E1308058(v39, &qword_1ECEB2588, &unk_1E1B05C10);
    }
  }
}

void sub_1E151C7CC()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_card;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    v2 = v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 16);

      v5(v6, ObjectType, v3);

      swift_unknownObjectRelease();
    }
  }

  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_footerLockup))
  {
    v7 = v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v8 = *(v7 + 8);
    v9 = swift_getObjectType();
    v10 = *(v8 + 24);

    v10(v11, v9, v8);
    goto LABEL_10;
  }

  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_arcadeFooterLockup))
  {
    v12 = v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      v14 = swift_getObjectType();
      v15 = *(v13 + 32);

      v15(v16, v14, v13);
LABEL_10:

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E151C98C()
{
  if (!*(v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_footerLockup) && !*(v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_arcadeFooterLockup))
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_34:
    v3 = sub_1E1AF71CC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {

    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 1;
  while (2)
  {
    v9 = v6;
    v6 = v5;
    while (2)
    {
      v5 = v6;
      v6 = v4;
      while ((v2 & 0xC000000000000001) == 0)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v4 = v6 + 1;
        v10 = *(*(v2 + 32 + 8 * v6) + 16);
        switch(v10)
        {
          case '&':
            goto LABEL_23;
          case '3':
            goto LABEL_25;
          case 'B':
            goto LABEL_23;
        }

LABEL_15:
        v6 = v4;
        if (v4 == v3)
        {
          v6 = v9;
          goto LABEL_26;
        }
      }

      v13 = v9;
      v14 = v8;
      result = MEMORY[0x1E68FFD80](v6, v2);
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return result;
      }

      v12 = *(result + 16);
      swift_unknownObjectRelease();
      if (v12 == 38)
      {
        v8 = v14;
        v9 = v13;
LABEL_23:
        v7 = 0;
        if (v4 != v3)
        {
          continue;
        }

        return v6;
      }

      break;
    }

    v8 = v14;
    v9 = v13;
    if (v12 == 66)
    {
      goto LABEL_23;
    }

    if (v12 != 51)
    {
      goto LABEL_15;
    }

LABEL_25:
    v8 = 0;
    if (v4 != v3)
    {
      continue;
    }

    break;
  }

LABEL_26:

  if (v7)
  {
    return v6;
  }

  return v5;
}

uint64_t sub_1E151CBA4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_card;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || !*(v2 + 72) || (v16[0] = *(v2 + 72), type metadata accessor for TodayCardOverlay(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24C0, &unk_1E1B02650), (swift_dynamicCast() & 1) == 0))
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    return sub_1E1308058(&v13, &qword_1ECEB50D0, &qword_1E1B13C90);
  }

  if (!*(&v14 + 1))
  {
    return sub_1E1308058(&v13, &qword_1ECEB50D0, &qword_1E1B13C90);
  }

  sub_1E1361B28(&v13, v16);
  v3 = v17;
  v4 = v18;
  __swift_project_boxed_opaque_existential_1Tm(v16, v17);
  v5 = (*(v4 + 8))(v3, v4);
  if (v5)
  {
    v6 = v5;
    v7 = v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = v17;
      v11 = v18;
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      (*(v11 + 16))(&v13, v10, v11);
      (*(*(*(v8 + 8) + 8) + 8))(v6, &v13, ObjectType);

      swift_unknownObjectRelease();
      sub_1E1308058(&v13, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    }

    else
    {
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_1E151CDA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_footerLockup);
  if (v1)
  {
    v2 = *(v1 + 264);
    if (v2)
    {
      v3 = v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        v8[3] = type metadata accessor for Lockup(0);
        v8[0] = v1;
        v6 = *(*(v4 + 8) + 8);
        v7 = *(v6 + 8);

        v7(v2, v8, ObjectType, v6);

        swift_unknownObjectRelease();
        sub_1E1308058(v8, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      }
    }
  }
}

uint64_t sub_1E151CEA8()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_1E1AF71CC();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1E151CF10(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1E68FFD80](a1, v4);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1E151CFBC(unint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v6 = *(v2 + v5);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v2 + v5) = v6;
  if (!result || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_1E14E7234();
    v6 = result;
    *(v2 + v5) = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;
    *(v2 + v5) = v6;
    swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1E151D084(unint64_t a1, uint64_t a2)
{
  v7 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v8 = *(v2 + v7);
  v9 = v8 >> 62;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
    {
      goto LABEL_3;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (sub_1E1AF71CC() < a1)
  {
    goto LABEL_29;
  }

LABEL_3:
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v9)
  {
    result = sub_1E1AF71CC();
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a2)
  {
    goto LABEL_31;
  }

  if (a2 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v8 & 0xC000000000000001) == 0)
  {
LABEL_12:
    swift_bridgeObjectRetain_n();
    goto LABEL_16;
  }

  if (a2 < a1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1 == a2)
  {
    goto LABEL_12;
  }

  if (a1 < a2)
  {
    type metadata accessor for Shelf(0);
    swift_bridgeObjectRetain_n();
    v11 = a1;
    do
    {
      v12 = v11 + 1;
      sub_1E1AF703C();
      v11 = v12;
    }

    while (a2 != v12);
LABEL_16:

    if (v9)
    {
      v3 = sub_1E1AF728C();
      v4 = v13;
      a1 = v14;
      v9 = v15;

      if ((v9 & 1) == 0)
      {
LABEL_19:
        sub_1E14E6590(v3, v4, a1, v9, v16);
        v18 = v17;
        goto LABEL_26;
      }
    }

    else
    {
      v3 = v8 & 0xFFFFFFFFFFFFFF8;
      v4 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9 = (2 * a2) | 1;
    }

    sub_1E1AF74EC();
    swift_unknownObjectRetain_n();
    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      swift_unknownObjectRelease();
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = *(v19 + 16);

    if (!__OFSUB__(v9 >> 1, a1))
    {
      if (v20 == (v9 >> 1) - a1)
      {
        v18 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v18)
        {
          return v18;
        }

        v18 = MEMORY[0x1E69E7CC0];
LABEL_26:
        swift_unknownObjectRelease();
        return v18;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    swift_unknownObjectRelease_n();
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E151D2BC(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    return result > a1;
  }

  result = sub_1E1AF71CC();
  if ((result & 0x8000000000000000) == 0)
  {
    return result > a1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E151D33C(__n128 a1)
{
  v2 = v1;
  v3 = sub_1E1AF019C();
  v4 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_shelves;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
    result = sub_1E1AF71CC();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= result)
  {
    return 0;
  }

  result = sub_1E1AF019C();
  v2 = *(v1 + v4);
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v10 = result;

    v7 = MEMORY[0x1E68FFD80](v10, v2);

    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v2 + 8 * result + 32);

LABEL_8:
    v8 = *(v7 + 24);

    v9 = *(v8 + 16);

    return sub_1E1AF018C() < v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E151D460()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E151D4A4(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E151D584()
{
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_pageUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view);
}

uint64_t ArticlePagePresenter.deinit()
{
  v0 = BasePresenter.deinit();

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_pageUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit20ArticlePagePresenter_view);

  return v0;
}

uint64_t ArticlePagePresenter.__deallocating_deinit()
{
  ArticlePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E151D7B4(uint64_t a1, __n128 a2)
{
  result = sub_1E151DCC0(&qword_1EE1EE1C0, type metadata accessor for ArticlePagePresenter, &protocol conformance descriptor for BasePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ArticlePagePresenter(uint64_t a1)
{
  result = qword_1EE1EE1B0;
  if (!qword_1EE1EE1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E151D8B0(uint64_t a1)
{
  sub_1E130072C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E151DC60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E151DCC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

AppStoreKit::ComponentDecoration_optional __swiftcall ComponentDecoration.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

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

uint64_t ComponentDecoration.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x656461637261;
  }
}

uint64_t sub_1E151DDB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x656461637261;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x80000001E1B57100;
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x656461637261;
  }

  if (*a2)
  {
    v6 = 0x80000001E1B57100;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

unint64_t sub_1E151DE64()
{
  result = qword_1EE1EF0A8;
  if (!qword_1EE1EF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EF0A8);
  }

  return result;
}

uint64_t sub_1E151DEB8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E151DF3C(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E151DFAC(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E151E02C(char *a2@<X8>)
{
  v3 = sub_1E1AF72FC();

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

void sub_1E151E08C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001E1B57100;
  v3 = 0x656461637261;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t ASDPurchaseHistoryApp.cleanRedownloadParams.getter()
{
  v1 = [v0 redownloadParams];
  v2 = sub_1E1AF5DFC();
  v4 = v3;

  sub_1E151E1F8(v2, v4);
  v6 = v5;

  return v6;
}

uint64_t ASDPurchaseHistoryApp.purchaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 datePurchased];
  sub_1E1AEFE3C();

  v4 = sub_1E1AEFE6C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

void sub_1E151E1F8(uint64_t a1, uint64_t a2)
{
  sub_1E13B8AA4();
  v2 = sub_1E1AF6DCC();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 40;
    v7 = MEMORY[0x1E69E7CC0];
    v17 = v2 + 40;
    do
    {
      v8 = (v6 + 16 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v11 = *(v8 - 1);
        v10 = *v8;
        v5 = v9 + 1;

        if ((sub_1E1AF602C() & 1) == 0)
        {
          break;
        }

        v8 += 2;
        ++v9;
        if (v4 == v5)
        {
          goto LABEL_13;
        }
      }

      v18 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1E135C088(0, *(v7 + 16) + 1, 1);
      }

      v12 = v7;
      v13 = *(v7 + 16);
      v14 = *(v12 + 24);
      v15 = v13 + 1;
      if (v13 >= v14 >> 1)
      {
        sub_1E135C088((v14 > 1), v13 + 1, 1);
        v15 = v13 + 1;
        v12 = v18;
      }

      *(v12 + 16) = v15;
      v16 = v12 + 16 * v13;
      *(v16 + 32) = v11;
      *(v16 + 40) = v10;
      v6 = v17;
      v7 = v12;
    }

    while (v4 - 1 != v9);
  }

LABEL_13:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
  sub_1E130C384();
  sub_1E1AF5D6C();
}

uint64_t ASDPurchaseHistoryApp.supportsVisionPlatform.getter()
{
  if ([v0 supportsRealityDevice])
  {
    return 1;
  }

  else
  {
    return [v0 optedInForXROSEligibility];
  }
}

uint64_t ASDPurchaseHistoryApp.supportsCurrentPlatform(isAppleSiliconSupportEnabled:bag:)()
{
  if ([v0 watchOnly])
  {
    return 0;
  }

  if ([v0 supportsIPad])
  {
    return 1;
  }

  return [v0 supportsIPhone];
}

uint64_t ImageLockup.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ImageLockup.init(deserializing:using:)(a1, a2);
  return v4;
}

void (*ImageLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2))(char *, uint64_t)
{
  v4 = v2;
  v75 = v4;
  v7 = *v4;
  v72 = v3;
  v73 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v62 - v9;
  v65 = sub_1E1AEFEAC();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF39DC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1E1AF380C();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  type metadata accessor for Artwork(0);
  v21 = a1;
  sub_1E1AF381C();
  v77 = v12;
  v24 = *(v12 + 16);
  v22 = v12 + 16;
  v23 = v24;
  v24(v14, a2, v11);
  sub_1E151F468(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v85 = v14;
  sub_1E1AF464C();
  v79 = a2;
  if (!v82)
  {
    v29 = sub_1E1AF5A7C();
    sub_1E151F468(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v30 = 0x6B726F77747261;
    v31 = v73;
    v30[1] = 0xE700000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x1E69AB690], v29);
    swift_willThrow();
LABEL_7:
    v35 = v78;
    (*(v77 + 8))(v79, v11);
    (*(v76 + 8))(v21, v35);
    type metadata accessor for ImageLockup(0);
    v36 = v75;
    swift_deallocPartialClassInstance();
    return v36;
  }

  v74 = v82;
  type metadata accessor for Lockup(0);
  sub_1E1AF381C();
  v23(v85, a2, v11);
  sub_1E151F468(&qword_1EE1E4F60, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  sub_1E1AF464C();
  if (!v82)
  {
    v32 = sub_1E1AF5A7C();
    sub_1E151F468(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v33 = 0x70756B636F6CLL;
    v34 = v73;
    v33[1] = 0xE600000000000000;
    v33[2] = v34;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x1E69AB690], v32);
    swift_willThrow();

    goto LABEL_7;
  }

  v66 = v82;
  v67 = v22;
  v73 = v23;
  v25 = v69;
  v62 = a1;
  sub_1E1AF381C();
  v26 = sub_1E1AF37CC();
  v28 = v78;
  v68 = v11;
  if (v27)
  {
    v80 = v26;
    v81 = v27;
  }

  else
  {
    v37 = v63;
    sub_1E1AEFE9C();
    v38 = sub_1E1AEFE7C();
    v40 = v39;
    (*(v64 + 8))(v37, v65);
    v80 = v38;
    v81 = v40;
  }

  sub_1E1AF6F6C();
  v41 = *(v76 + 8);
  v76 = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42 = v25;
  v43 = v41;
  v41(v42, v28);
  v36 = v75;
  v44 = v83;
  *(v75 + 120) = v82;
  *(v36 + 136) = v44;
  *(v36 + 19) = v84;
  sub_1E1AF46DC();
  v45 = v62;
  sub_1E1AF381C();
  v73(v85, v79, v68);
  v46 = v71;
  sub_1E1AF464C();
  sub_1E134B7C8(v46, v36 + OBJC_IVAR____TtC11AppStoreKit11ImageLockup_impressionMetrics);
  *(v36 + 2) = v74;

  sub_1E1AF381C();
  v47 = sub_1E1AF37CC();
  v49 = v48;
  v50 = v76;
  v43(v20, v28);
  *(v36 + 3) = v47;
  *(v36 + 4) = v49;
  sub_1E1AF381C();
  v51 = sub_1E1AF37CC();
  v53 = v52;
  v43(v20, v28);
  v75 = v43;
  v76 = v50;
  *(v36 + 5) = v51;
  *(v36 + 6) = v53;
  *(v36 + 7) = v66;

  v54 = v70;
  sub_1E1AF381C();
  LOBYTE(v51) = sub_1E1AF370C();
  v43(v54, v28);
  *(v36 + 64) = v51 & 1;
  sub_1E1AF381C();
  v55 = v85;
  v56 = v79;
  v57 = v68;
  v58 = v73;
  v73(v85, v79, v68);
  sub_1E17D1100(v20, v55, &v82);
  v59 = v84;
  v60 = v83;
  *(v36 + 5) = v82;
  *(v36 + 6) = v60;
  *(v36 + 56) = v59;
  v71 = type metadata accessor for FlowPreviewActionsConfiguration();
  sub_1E1AF381C();
  v58(v55, v56, v57);
  sub_1E151F468(qword_1EE1E7DB8, type metadata accessor for FlowPreviewActionsConfiguration, &protocol conformance descriptor for FlowPreviewActionsConfiguration);
  sub_1E1AF464C();

  (*(v77 + 8))(v56, v57);
  v75(v45, v78);
  *(v36 + 9) = v82;
  return v36;
}

uint64_t type metadata accessor for ImageLockup(uint64_t a1)
{
  result = qword_1ECEB50E0;
  if (!qword_1ECEB50E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageLockup.caption.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ImageLockup.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1E151EF74@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for ImageLockup(0);
  *a1 = v1;
}

double sub_1E151EFB8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 112);
  *(a2 + 32) = v8;
  return sub_1E151F120(v4, v5, v6, v7, v8);
}

double sub_1E151F014(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = *(a1 + 16);
  swift_beginAccess();
  v8 = *(v6 + 88);
  v13 = *(v6 + 80);
  v9 = *(v6 + 96);
  v10 = *(v6 + 104);
  *(v6 + 80) = v2;
  *(v6 + 88) = v3;
  *(v6 + 96) = v4;
  *(v6 + 104) = v5;
  v11 = *(v6 + 112);
  *(v6 + 112) = v7;
  sub_1E151F120(v2, v3, v4, v5, v7);
  return sub_1E151F260(v13, v8, v9, v10, v11);
}

double sub_1E151F0C8@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 112);
  *(a1 + 32) = v7;
  return sub_1E151F120(v3, v4, v5, v6, v7);
}

double sub_1E151F120(id a1, void *a2, void *a3, void *a4, unsigned __int16 a5)
{
  v5 = a5 >> 13;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
    }

    else if (v5 == 3)
    {
      sub_1E151F15C(a1, a2, a3, a4, a5);
    }
  }

  else if (a5 >> 13)
  {
    if (v5 == 1)
    {
      v6 = a1;
    }
  }

  else
  {
  }

  return result;
}

id sub_1E151F15C(id result, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 3)
    {
      v8 = result;
      result = a2;
      a2 = a3;
      a3 = a4;
    }

    else if (a5 != 2)
    {
      return result;
    }

    v9 = result;
    result = a2;
    a2 = a3;
    goto LABEL_10;
  }

  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }

LABEL_10:
    v10 = result;
    result = a2;
  }

  return result;
}

double sub_1E151F1FC(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v8;
  v9 = *(v1 + 112);
  *(v1 + 112) = v3;
  return sub_1E151F260(v4, v5, v6, v7, v9);
}

double sub_1E151F260(id a1, void *a2, void *a3, void *a4, unsigned __int16 a5)
{
  v5 = a5 >> 13;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
    }

    else if (v5 == 3)
    {
      sub_1E151F29C(a1, a2, a3, a4, a5);
    }
  }

  else if (a5 >> 13)
  {
    if (v5 == 1)
    {
    }
  }

  else
  {
  }

  return result;
}

void sub_1E151F29C(void *a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      a4 = a3;
    }

    else
    {
      if (a5 != 3)
      {
        return;
      }

      a1 = a2;
      a2 = a3;
    }

    a1 = a2;
    a2 = a4;
    goto LABEL_11;
  }

  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

LABEL_11:

    a1 = a2;
  }
}

uint64_t ImageLockup.deinit()
{

  sub_1E151F260(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_1E134B88C(v0 + 120);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit11ImageLockup_impressionMetrics);
  return v0;
}

uint64_t ImageLockup.__deallocating_deinit()
{
  ImageLockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E151F468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*sub_1E151F4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(char *, uint64_t)
{
  type metadata accessor for ImageLockup(0);
  v7 = swift_allocObject();
  result = ImageLockup.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E151F54C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for ImageLockup(0);
  *a1 = v3;
}

double sub_1E151F594@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 112);
  *(a1 + 32) = v8;
  return sub_1E151F120(v4, v5, v6, v7, v8);
}

void sub_1E151F61C(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t WidgetIntent.init(family:isSnapshot:isPreview:originalResponseDate:originalResponseHash:widgetKind:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  strcpy(a8, "WidgetIntent");
  *(a8 + 13) = 0;
  *(a8 + 14) = -5120;
  *(a8 + 16) = result;
  *(a8 + 24) = a2;
  *(a8 + 25) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  return result;
}

uint64_t WidgetIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WidgetIntent.originalResponseDate.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WidgetIntent.originalResponseHash.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

JSValue __swiftcall WidgetIntent.makeValue(in:)(JSContext in)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  v21 = *(v1 + 48);
  v23 = *(v1 + 32);
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v3;
  v10 = result.super.isa;
  v11 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1E1AF6C5C();
  LOBYTE(v24) = v4;
  v12 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1E1AF6C5C();
  LOBYTE(v24) = v5;
  v13 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1E1AF6C5C();
  if (v6)
  {
    v24 = v23;
    v25 = v6;

    v14 = in.super.isa;
    v6 = sub_1E1AF748C();
    sub_1E1455104(&v24);
  }

  else
  {
    v15 = in.super.isa;
  }

  v16 = [v8 valueWithObject:v6 inContext:{in.super.isa, v21}];
  swift_unknownObjectRelease();

  if (!v16)
  {
    goto LABEL_19;
  }

  sub_1E1AF6C5C();
  if (v7)
  {
    v24 = v22;
    v25 = v7;
    v17 = in.super.isa;

    v7 = sub_1E1AF748C();
    sub_1E1455104(&v24);
  }

  else
  {
    v18 = in.super.isa;
  }

  v19 = [v8 valueWithObject:v7 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v19)
  {
    goto LABEL_20;
  }

  sub_1E1AF6C5C();
  v24 = 0xD000000000000020;
  v25 = 0x80000001E1B561F0;
  v20 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v20)
  {
    sub_1E1AF6C5C();

    return v10;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1E151FC44()
{
  result = qword_1ECEB50F0;
  if (!qword_1ECEB50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB50F0);
  }

  return result;
}

unint64_t sub_1E151FC9C()
{
  result = qword_1ECEB50F8;
  if (!qword_1ECEB50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB50F8);
  }

  return result;
}

unint64_t sub_1E151FCF4()
{
  result = qword_1ECEB5100;
  if (!qword_1ECEB5100)
  {
    type metadata accessor for TodayWidgetContainerTemplate(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5100);
  }

  return result;
}

uint64_t sub_1E151FD50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1E151FD98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double ReloadableItemPagePresenter.reloadItem(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5108, qword_1E1B14180);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E1B02CC0;
  (*(v7 + 16))(v9 + v8, a1, v6);
  (*(a3 + 8))(v9, a2, a3);

  return result;
}

uint64_t sub_1E151FFD4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = a3[3];
    v12 = a3[4];
    v13 = __swift_project_boxed_opaque_existential_1Tm(a3, v11);
    sub_1E15218C4(v8, v13, a4, a5, v10, v11, v12);
  }

  return result;
}

uint64_t sub_1E1520080(uint64_t a1, uint64_t a2)
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v6[3] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E1308058(v6, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 40) = 0;
  }

  return result;
}

void sub_1E1520288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1E1521B0C(a1, &v71);
  v5 = *(&v72 + 1);
  if (!*(&v72 + 1))
  {
    sub_1E1308058(&v71, &qword_1ECEB5110, "ܻ\a");
    return;
  }

  v6 = v73;
  __swift_project_boxed_opaque_existential_1Tm(&v71, *(&v72 + 1));
  v7 = (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  if (!v7)
  {
    return;
  }

  if (v7 >> 62)
  {
    v8 = sub_1E1AF71CC();
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_5:
      *&v71 = MEMORY[0x1E69E7CC0];
      sub_1E135C028(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
LABEL_52:
        __break(1u);
        return;
      }

      v9 = v71;
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = 0;
        do
        {
          v11 = MEMORY[0x1E68FFD80](v10, v7);
          v12 = *(v11 + 16);
          v13 = *(v11 + 24);

          swift_unknownObjectRelease();
          *&v71 = v9;
          v15 = *(v9 + 16);
          v14 = *(v9 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_1E135C028((v14 > 1), v15 + 1, 1);
            v9 = v71;
          }

          ++v10;
          *(v9 + 16) = v15 + 1;
          v16 = v9 + 16 * v15;
          *(v16 + 32) = v12;
          *(v16 + 40) = v13;
        }

        while (v8 != v10);
      }

      else
      {
        v17 = v7 + 32;
        do
        {
          v18 = *(*v17 + 16);
          v19 = *(*v17 + 24);
          *&v71 = v9;
          v20 = *(v9 + 16);
          v21 = *(v9 + 24);

          if (v20 >= v21 >> 1)
          {
            sub_1E135C028((v21 > 1), v20 + 1, 1);
            v9 = v71;
          }

          *(v9 + 16) = v20 + 1;
          v22 = v9 + 16 * v20;
          *(v22 + 32) = v18;
          *(v22 + 40) = v19;
          v17 += 8;
          --v8;
        }

        while (v8);
      }

      goto LABEL_20;
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v23 = sub_1E13C49CC(v9);

  v25 = sub_1E16B0DAC(v24, v23);

  if ((v25 & 1) == 0)
  {
    v26 = *(v4 + 48);

    v28 = sub_1E15E7B3C(v23, v26, v27);
    v29 = *(v4 + 48);
    if (*(v23 + 16) <= *(v29 + 16) >> 3)
    {
      *&v71 = *(v4 + 48);

      sub_1E15CEBB8(v23);
      v66 = v71;
    }

    else
    {

      v66 = sub_1E15CEF44(v23, v29);
    }

    if (v28[2] <= *(v23 + 16) >> 3)
    {
      *&v71 = v23;

      sub_1E15CEBB8(v28);

      v65 = v71;
    }

    else
    {

      v65 = sub_1E15CEF44(v28, v23);
    }

    v30 = 0;
    v31 = 1 << *(v66 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v66 + 56);
    v34 = (v31 + 63) >> 6;
    v35 = v4;
    if (v33)
    {
      while (1)
      {
        v36 = v30;
LABEL_35:
        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v38 = (*(v66 + 48) + ((v36 << 10) | (16 * v37)));
        v39 = *v38;
        v40 = v38[1];
        ObjectType = swift_getObjectType();
        *&v71 = v39;
        *(&v71 + 1) = v40;
        v42 = *(a3 + 56);

        v42(&v71, ObjectType, a3);
        v44 = v43;

        v45 = swift_getObjectType();
        v4 = v35;
        (*(v44 + 80))(v35, v45, v44);
        swift_unknownObjectRelease();
        if (!v33)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
LABEL_31:
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *(v66 + 56 + 8 * v36);
      ++v30;
      if (v33)
      {
        v30 = v36;
        goto LABEL_35;
      }
    }

    v46 = 0;
    v47 = 1 << *(v65 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v65 + 56);
    v50 = (v47 + 63) >> 6;
    for (i = v50; v49; v50 = i)
    {
      v51 = v46;
LABEL_45:
      v52 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v53 = (*(v65 + 48) + ((v51 << 10) | (16 * v52)));
      v54 = *v53;
      v55 = v53[1];
      v56 = swift_getObjectType();
      *&v71 = v54;
      *(&v71 + 1) = v55;
      v57 = *(a3 + 56);

      v57(&v71, v56, a3);
      v59 = v58;

      v67 = swift_getObjectType();
      v60 = swift_allocObject();
      swift_weakInit();
      sub_1E1521B0C(a1, &v71);
      v61 = swift_allocObject();
      v62 = v72;
      *(v61 + 16) = v71;
      *(v61 + 32) = v62;
      *(v61 + 48) = v73;
      *(v61 + 56) = v60;
      *(v61 + 64) = a2;
      *(v61 + 72) = a3;
      v63 = *(v59 + 72);

      swift_unknownObjectRetain();
      v63(v4, sub_1E1521B7C, v61, v67, v59);

      swift_unknownObjectRelease();
    }

    while (1)
    {
      v51 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v51 >= v50)
      {

        *(v4 + 48) = v23;
        goto LABEL_48;
      }

      v49 = *(v65 + 56 + 8 * v51);
      ++v46;
      if (v49)
      {
        v46 = v51;
        goto LABEL_45;
      }
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_48:
}

void *sub_1E15208BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 16))(v24, ObjectType, a2);
  if (!(v27 >> 60))
  {
    if (LOBYTE(v24[0]) == 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v27 >> 60 != 8 || ((v12 = v26 | v28, v13 = v24[3] | v24[2] | v24[1], v27 != 0x8000000000000000) || v12 | v24[0] | v25 | v13) && (v27 != 0x8000000000000000 || v24[0] != 4 || v12 | v25 | v13))
  {
    sub_1E139CEA8(v24);
LABEL_10:
    sub_1E1521B0C(a3, &v19);
    if (v20)
    {
      sub_1E1308EC0(&v19, v21);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        v16 = v22;
        v17 = v23;
        v18 = __swift_project_boxed_opaque_existential_1Tm(v21, v22);
        sub_1E1520C54(v18, a5, a6, v15, v16, v17);
      }

      return __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      return sub_1E1308058(&v19, &qword_1ECEB5110, "ܻ\a");
    }
  }

  return result;
}

void sub_1E1520A44(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v7 = *(v4 + 56);
  v6 = v4 + 56;
  v5 = v7;
  v8 = 1 << *(*(v2 + 48) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v23 = *(v2 + 48);

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = (*(v23 + 48) + ((v13 << 10) | (16 * v14)));
      v16 = *v15;
      v17 = v15[1];
      ObjectType = swift_getObjectType();
      v25[0] = v16;
      v25[1] = v17;
      v19 = *(a2 + 56);

      v19(v25, ObjectType, a2);
      v21 = v20;

      v22 = swift_getObjectType();
      (*(v21 + 80))(v24, v22, v21);
      swift_unknownObjectRelease();
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  *(v24 + 48) = MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E1520BE0()
{

  sub_1E1337DEC(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1520C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  (*(a6 + 16))(&v17, a5, a6);
  if (v18)
  {
    sub_1E1301CF0(&v17, v19);
    v15 = sub_1E1520E40(v14, a2, a3, a5, a6);
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        sub_1E152124C(v14, v19, a2, a3, a4, a5, a6);
      }

      else
      {
        sub_1E15218C4(0, v14, a2, a3, a4, a5, a6);
      }
    }

    else if (v15)
    {
      sub_1E1521588(v14, v19, a2, a3, a4, a5, a6);
    }

    else
    {
      sub_1E152100C(v14, v19, a2, a3, a4, a5, a6);
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_1E1308058(&v17, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  return (*(v11 + 8))(v14, a5);
}

uint64_t sub_1E1520E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = (*(a5 + 24))(a4, a5);
  if (v13 && (v14 = *(v13 + 121), , v14 == 1))
  {
    v15 = (*(a5 + 40))(a2, a3, a4, a5);
    if ((v16 & 1) != 0 || (v17 = v15, (v18 = (*(a5 + 8))(a4, a5)) == 0))
    {
      v22 = 3;
    }

    else
    {
      if (v18 >> 62)
      {
        v19 = sub_1E1AF71CC();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17 >= v19 || v17 <= 0)
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      if (v17 == v19)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  (*(v9 + 8))(v12, a4);
  return v22;
}

uint64_t sub_1E152100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25[3] = a6;
  v25[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a1, a6);
  type metadata accessor for JSIntentDispatcher();
  v14 = *(a5 + 16);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E137A5C4(a2, &v24);
  v23[0] = 0xD00000000000001ELL;
  v23[1] = 0x80000001E1B645B0;
  sub_1E1367978(v23, v14, "AppStoreKit/CompleteMyBundleController.swift", 44, 2);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1E1300B24(v25, &v20);
  v16 = swift_allocObject();
  v16[2] = v15;
  sub_1E1308EC0(&v20, (v16 + 3));
  v16[8] = a3;
  v16[9] = a4;
  swift_allocObject();
  swift_weakInit();
  v17 = sub_1E1361A80();
  swift_unknownObjectRetain();

  v18 = sub_1E1AF68EC();
  v21 = v17;
  v22 = MEMORY[0x1E69AB720];
  *&v20 = v18;
  sub_1E1AF57FC();

  sub_1E1521BA4(v23);
  __swift_destroy_boxed_opaque_existential_1(&v20);

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_1E152124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v11 = *(a6 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  v15 = *(a7 + 32);
  if (v15(a6, a7))
  {
    type metadata accessor for OfferConfirmationAction(0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
LABEL_6:
      v17 = *(a7 + 24);
      v18 = v16;
      swift_retain_n();
      v19 = v17(a6, a7);
      type metadata accessor for PersonalizedOfferContext();
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;
      *(v20 + 32) = 1;

      sub_1E15218C4(v21, v14, a3, a4, v25, a6, a7);

      goto LABEL_11;
    }
  }

  if (v15(a6, a7))
  {
    type metadata accessor for OfferAction(0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      goto LABEL_6;
    }
  }

  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v22 = sub_1E1AF591C();
  __swift_project_value_buffer(v22, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF549C();

  *(v25 + 40) = 0;
LABEL_11:

  return (*(v11 + 8))(v14, a6);
}

uint64_t sub_1E1521588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v11 = *(a6 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  v15 = *(a7 + 32);
  if (v15(a6, a7))
  {
    type metadata accessor for OfferConfirmationAction(0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
LABEL_6:
      v17 = *(a7 + 24);
      v18 = v16;
      swift_retain_n();
      v19 = v17(a6, a7);
      type metadata accessor for PersonalizedOfferContext();
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;
      *(v20 + 32) = 2;

      sub_1E15218C4(v21, v14, a3, a4, v25, a6, a7);

      goto LABEL_11;
    }
  }

  if (v15(a6, a7))
  {
    type metadata accessor for OfferAction(0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      goto LABEL_6;
    }
  }

  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v22 = sub_1E1AF591C();
  __swift_project_value_buffer(v22, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF549C();

  *(v25 + 40) = 0;
LABEL_11:

  return (*(v11 + 8))(v14, a6);
}

uint64_t sub_1E15218C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[3] = a6;
  v26[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a2, a6);
  *(a5 + 40) = a1;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(a5 + 32);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v26, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    if (*(a1 + 32) > 1u)
    {
      if (*(a1 + 32) != 2)
      {
        return __swift_destroy_boxed_opaque_existential_1(v26);
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v16 = sub_1E1AF74AC();

      if ((v16 & 1) == 0)
      {
        return __swift_destroy_boxed_opaque_existential_1(v26);
      }
    }

    v17 = (*(a7 + 24))(a6, a7);
    if (v17)
    {
      v19 = *(v17 + 24);
      v18 = *(v17 + 32);

      v20 = swift_getObjectType();
      v25[0] = v19;
      v25[1] = v18;
      (*(a4 + 56))(v25, v20, a4);
      v22 = v21;

      v23 = swift_getObjectType();
      v25[0] = 0;
      v25[6] = 0x1000000000000000;
      (*(v22 + 64))(v25, v23, v22);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_1E1521B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5110, "ܻ\a");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1E1521BF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1E1521D44(0x745C725C6E5C5B28, 0xEC000000292B5D20, 0);
  qword_1EE2160E8 = result;
  return result;
}

uint64_t sub_1E1521C74()
{
  v0 = sub_1E1AEF4AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF46C();
  v4 = sub_1E1AEF45C();
  result = (*(v1 + 8))(v3, v0);
  qword_1EE2160F0 = v4;
  return result;
}

id sub_1E1521D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1E1AF5DBC();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1E1AEFB2C();

    swift_willThrow();
  }

  return v6;
}

void *TimedMetricsPagePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a4;
  v57 = a2;
  v51 = a3;
  v7 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v9;
  v10 = sub_1E1AF3D0C();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF436C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  v17 = (v5 + qword_1EE216770);
  *v17 = 0;
  v17[1] = 0;
  *(v5 + qword_1EE216768) = 0;
  v18 = (v5 + qword_1EE216748);
  *v18 = 0;
  v18[1] = 0;
  v19 = *(v7 + 80);
  v20 = *(*(v7 + 88) + 16);
  v55 = *(v7 + 88);
  v20(v19);
  v21 = *(*v5 + 184);
  sub_1E1AF5BFC();
  *(v5 + v21) = sub_1E1AF5BDC();
  v22 = v5 + *(*v5 + 192);
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v23 = v5 + *(*v5 + 200);
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v24 = (v5 + *(*v5 + 208));
  *v24 = 0;
  v24[1] = 0;
  v25 = (v5 + *(*v5 + 216));
  *v25 = 0.0;
  v25[1] = 0.0;
  *(v5 + 16) = a1;
  sub_1E1AF421C();

  sub_1E1AF55EC();
  (*(v14 + 32))(v5 + qword_1EE216760, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0, &qword_1E1B061B0);
  sub_1E1AF413C();
  v26 = v59;
  v27 = v60;
  swift_beginAccess();
  *v25 = v26;
  *(v25 + 1) = v27;
  swift_unknownObjectRelease();
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF55EC();
  if (v57)
  {
    v28 = v57;
    v29 = v51;
  }

  else
  {
    v31 = v49;
    v30 = v50;
    v51 = sub_1E1AF4EAC();
    if (qword_1EE1E2FE8 != -1)
    {
      swift_once();
    }

    (*(v31 + 104))(v12, *MEMORY[0x1E69AAFB8], v30);
    v32 = v52;
    sub_1E1AF52AC();
    (*(v31 + 8))(v12, v30);
    v33 = v54;
    sub_1E1AF532C();
    (*(v53 + 8))(v32, v33);
    v28 = sub_1E1AF4E9C();
    v29 = MEMORY[0x1E69AB380];
  }

  v34 = (v5 + qword_1EE216758);
  *v34 = v28;
  v34[1] = v29;
  v35 = v56;
  if (v56)
  {
    swift_unknownObjectRetain();
    v36 = v35;
  }

  else
  {
    v37 = qword_1EE1E2E90;
    swift_unknownObjectRetain();
    if (v37 != -1)
    {
      swift_once();
    }

    v38 = v52;
    sub_1E1AF535C();
    v39 = v54;
    sub_1E1AF532C();
    (*(v53 + 8))(v38, v39);
    v40 = v59;
    v41 = v34[1];
    type metadata accessor for ImpressionsCalculator(0);
    swift_allocObject();
    v42 = swift_unknownObjectRetain();
    v36 = sub_1E1812F7C(v42, v40, v41);
    swift_unknownObjectRelease();
  }

  *(v5 + qword_1EE216750) = v36;
  v43 = type metadata accessor for MetricsPageEnterGate();
  v45 = type metadata accessor for TimedMetricsPagePresenter(0, v19, v55, v44);
  v46 = sub_1E18F6510(v5, v43, v45, &protocol witness table for TimedMetricsPagePresenter<A>);
  v47 = qword_1EE216768;
  swift_beginAccess();
  *(v5 + v47) = v46;

  sub_1E1AF50BC();
  sub_1E1AF413C();
  sub_1E15224E0(v58);

  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_1E15224E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v34 = sub_1E1AF4A9C();
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF436C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1522E34(v8);
  type metadata accessor for PendingPageRender(0);
  swift_allocObject();

  v31 = v8;
  v10 = PendingPageRender.init(bag:metricsPipeline:)(v9, v8);
  swift_beginAccess();
  v2[3] = v10;

  swift_beginAccess();
  v11 = v2[3];
  if (v11)
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 2) = *(v4 + 80);
    *(v13 + 3) = *(v4 + 88);
    *(v13 + 4) = v12;
    v14 = (v11 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_contextProvider);
    swift_beginAccess();
    *v14 = sub_1E15262CC;
    v14[1] = v13;
  }

  swift_beginAccess();
  v15 = v2[3];
  if (v15)
  {
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = a1;
    v18 = swift_allocObject();
    v18[2] = *(v4 + 80);
    v18[3] = *(v4 + 88);
    v18[4] = v16;
    v19 = (v15 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost);
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    *v19 = sub_1E15262D8;
    v19[1] = v18;
    a1 = v17;

    sub_1E1361B18(v20, v21);
  }

  swift_beginAccess();
  if (byte_1ECEB8F60)
  {
  }

  v22 = a1;
  if (!a1)
  {
    sub_1E1AF772C();
    sub_1E1AF3ACC();
    sub_1E1522E34(v31);
    sub_1E1AF50BC();
    swift_allocObject();
    v22 = sub_1E1AF50AC();
  }

  swift_beginAccess();
  v2[4] = v22;

  v23 = (v2 + qword_1EE216770);
  swift_beginAccess();
  v24 = v23[1];
  if (!v24)
  {
  }

  v25 = *v23;
  swift_beginAccess();
  if (!v2[4])
  {
  }

  v26 = qword_1EE1E3990;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v34;
  __swift_project_value_buffer(v34, qword_1EE1E3998);
  v35 = v25;
  v36 = v24;
  if (qword_1EE1E39B8 != -1)
  {
    swift_once();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78, &unk_1E1B297F0);
  __swift_project_value_buffer(v28, qword_1EE1E39C0);
  v29 = v32;
  sub_1E1AF4A3C();

  sub_1E1AF505C();

  return (*(v33 + 8))(v29, v27);
}

char *TimedMetricsPagePresenter.deinit()
{
  v1 = *v0;

  sub_1E1308058((v0 + 5), &qword_1ECEB2588, &unk_1E1B05C10);
  v2 = qword_1EE216760;
  v3 = sub_1E1AF436C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  swift_unknownObjectRelease();

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 176));

  sub_1E1308058(v0 + *(*v0 + 192), &unk_1ECEB7230, qword_1E1B103B0);
  sub_1E1308058(v0 + *(*v0 + 200), &qword_1ECEB2B70, &qword_1E1B14250);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1E1522C60(uint64_t a1)
{
  sub_1E15256AC();
}

uint64_t sub_1E1522C88(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1E1522CD0()
{
  sub_1E15256E0();
}

uint64_t sub_1E1522CF8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1E1522D40(uint64_t a1)
{
  swift_beginAccess();
  sub_1E13891EC(a1, v1 + 40);
  swift_endAccess();
  sub_1E1524A34();
  return sub_1E1308058(a1, &qword_1ECEB2588, &unk_1E1B05C10);
}

void (*sub_1E1522DAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E1522E00;
}

void sub_1E1522E00(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E1524A34();
  }
}

uint64_t sub_1E1522E34@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EE216760;
  swift_beginAccess();
  v4 = sub_1E1AF436C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1E1522EBC(uint64_t a1)
{
  v3 = qword_1EE216760;
  swift_beginAccess();
  v4 = sub_1E1AF436C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1E1522FAC()
{
  v0 = sub_1E137A580(&qword_1EE216770);

  return v0;
}

uint64_t sub_1E1523058()
{
  sub_1E1525870();
}

uint64_t sub_1E1523080(uint64_t a1)
{
  v3 = qword_1EE216768;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E1523138()
{
  v0 = sub_1E137A580(&qword_1EE216748);

  return v0;
}

double sub_1E15231E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - v2;
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  if (qword_1EE1E2E90 != -1)
  {
    swift_once();
  }

  sub_1E1AF535C();
  sub_1E1AF532C();

  (*(v1 + 8))(v3, v0);
  return *&v5[1];
}

uint64_t sub_1E1523364@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1E1523404@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 192);
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &unk_1ECEB7230, qword_1E1B103B0);
}

uint64_t sub_1E1523478(uint64_t a1)
{
  v3 = *(*v1 + 192);
  swift_beginAccess();
  sub_1E13619D8(a1, v1 + v3, &unk_1ECEB7230, qword_1E1B103B0);
  return swift_endAccess();
}

uint64_t sub_1E1523560@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 200);
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &qword_1ECEB2B70, &qword_1E1B14250);
}

uint64_t sub_1E15235D4(uint64_t a1)
{
  v3 = *(*v1 + 200);
  swift_beginAccess();
  sub_1E13619D8(a1, v1 + v3, &qword_1ECEB2B70, &qword_1E1B14250);
  return swift_endAccess();
}

double sub_1E15236BC()
{
  sub_1E15258D8();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1E15236E8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 208));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

double sub_1E15237C0()
{
  sub_1E152592C();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1E15237EC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 216));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1E15238C4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  sub_1E1523364(&v8 - v5);
  LOBYTE(v2) = (*(*(v2 + 88) + 24))(v3);
  (*(v4 + 8))(v6, v3);
  return v2 & 1;
}

uint64_t TimedMetricsPagePresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  TimedMetricsPagePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1E1523A6C@<X0>(char *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7210, &unk_1E1B143E0);
  v74 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v64 - v4;
  v5 = sub_1E1AF4A9C();
  v79 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  v10 = sub_1E1AF3C3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v66 = v3;
    v72 = a2;
    v80 = *(Strong + qword_1EE216758);
    swift_beginAccess();
    sub_1E134FD1C(v15 + 40, v86, &qword_1ECEB2588, &unk_1E1B05C10);
    v16 = v87;
    if (v87)
    {
      v77 = v88;
      v17 = __swift_project_boxed_opaque_existential_1Tm(v86, v87);
      v78 = &v64;
      v18 = *(v16 - 8);
      v19 = MEMORY[0x1EEE9AC00](v17);
      v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      swift_unknownObjectRetain();
      sub_1E1308058(v86, &qword_1ECEB2588, &unk_1E1B05C10);
      sub_1E1AF5B8C();
      (*(v18 + 8))(v21, v16);
      v22 = sub_1E1AF3AEC();
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_1E1308058(v86, &qword_1ECEB2588, &unk_1E1B05C10);
      v22 = 0;
    }

    v25 = v79;
    v76 = v22;
    v26 = (v15 + qword_1EE216770);
    swift_beginAccess();
    v27 = v26[1];
    v64 = *v26;
    v28 = (v15 + qword_1EE216748);
    swift_beginAccess();
    v29 = v28[1];
    v69 = *v28;
    v30 = qword_1EE1F3430;
    v31 = v80;
    swift_unknownObjectRetain();
    v78 = v27;

    v77 = v29;

    if (v30 != -1)
    {
      swift_once();
    }

    v32 = off_1EE1F3438;
    swift_beginAccess();
    v68 = *(v32 + 80);
    sub_1E1523404(v86);
    sub_1E1523560(v85);
    swift_beginAccess();
    v33 = v32[17];
    v34 = (v15 + *(*v15 + 216));
    swift_beginAccess();
    v35 = *v34;
    v67 = v34[1];
    v36 = (v15 + *(*v15 + 208));
    swift_beginAccess();
    v37 = *v36;
    v65 = v36[1];
    v79 = v33;

    v70 = v35;
    swift_unknownObjectRetain();
    v75 = v37;
    swift_unknownObjectRetain();
    sub_1E1AF4A8C();
    v38 = qword_1EE1E3948;
    swift_unknownObjectRetain();
    v39 = v31;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80, &unk_1E1B0C0C0);
    __swift_project_value_buffer(v40, qword_1EE1E3950);
    v84[0] = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88, &unk_1E1B143F0);
    v41 = v81;
    sub_1E1AF4A3C();
    v42 = *(v25 + 8);
    v42(v9, v5);
    v71 = v39;
    swift_unknownObjectRelease();
    v43 = *(v25 + 32);
    v43(v9, v41, v5);
    if (v78)
    {
      *&v84[0] = v64;
      *(&v84[0] + 1) = v78;
      if (qword_1EE1E39B8 != -1)
      {
        swift_once();
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78, &unk_1E1B297F0);
      __swift_project_value_buffer(v44, qword_1EE1E39C0);
      v45 = v81;
      sub_1E1AF4A3C();
      v42(v9, v5);
      v43(v9, v45, v5);
    }

    v46 = v81;
    if (v77)
    {
      *&v84[0] = v69;
      *(&v84[0] + 1) = v77;
      if (qword_1EE1E3970 != -1)
      {
        swift_once();
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78, &unk_1E1B297F0);
      __swift_project_value_buffer(v47, qword_1EE1E3978);
      sub_1E1AF4A3C();
      v42(v9, v5);
      v43(v9, v46, v5);
    }

    v69 = v15;
    v48 = v43;
    *&v80 = v42;
    LOBYTE(v84[0]) = 0;
    if (qword_1EE1E3928 != -1)
    {
      swift_once();
    }

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90, &unk_1E1B21B00);
    __swift_project_value_buffer(v64, qword_1EE1E3930);
    v49 = v81;
    sub_1E1AF4A3C();
    v50 = v80;
    (v80)(v9, v5);
    v48(v9, v49, v5);
    if (v76)
    {
      *&v84[0] = v76;
      v51 = v73;
      sub_1E1AF4A5C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
      sub_1E1AF4A3C();
      (*(v74 + 8))(v51, v66);
      v50(v9, v5);
      v48(v9, v49, v5);
    }

    v52 = v70;
    if (v68 != 2)
    {
      LOBYTE(v84[0]) = v68 & 1;
      if (qword_1ECEB0E70 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v64, qword_1EE1D2960);
      v53 = v81;
      sub_1E1AF4A3C();
      v50(v9, v5);
      v48(v9, v53, v5);
    }

    sub_1E134FD1C(v86, &v82, &unk_1ECEB7230, qword_1E1B103B0);
    if (v83)
    {
      sub_1E1308EC0(&v82, v84);
      v54 = v81;
      if (qword_1EE1D28F8 != -1)
      {
        swift_once();
      }

      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250, &unk_1E1B103A0);
      __swift_project_value_buffer(v55, qword_1EE1D2900);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8, &unk_1E1B21B20);
      sub_1E1AF4A3C();
      __swift_destroy_boxed_opaque_existential_1(v84);
      v50(v9, v5);
      v48(v9, v54, v5);
    }

    else
    {
      sub_1E1308058(&v82, &unk_1ECEB7230, qword_1E1B103B0);
      v54 = v81;
    }

    sub_1E134FD1C(v85, &v82, &qword_1ECEB2B70, &qword_1E1B14250);
    v56 = v79;
    if (v83)
    {
      sub_1E1308EC0(&v82, v84);
      if (qword_1EE1D28B0 != -1)
      {
        swift_once();
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240, &unk_1E1B14420);
      __swift_project_value_buffer(v57, qword_1EE1D28B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0, &unk_1E1B21B10);
      sub_1E1AF4A3C();
      __swift_destroy_boxed_opaque_existential_1(v84);
      (v80)(v9, v5);
      v48(v9, v54, v5);
      v56 = v79;
      if (!v79)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_1E1308058(&v82, &qword_1ECEB2B70, &qword_1E1B14250);
      if (!v56)
      {
LABEL_42:
        if (v75)
        {
          *&v84[0] = v75;
          *(&v84[0] + 1) = v65;
          v60 = qword_1EE1D28D0;
          swift_unknownObjectRetain();
          if (v60 != -1)
          {
            swift_once();
          }

          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA8, qword_1E1B1DE50);
          __swift_project_value_buffer(v61, qword_1EE1D28D8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB0, &unk_1E1B14410);
          sub_1E1AF4A3C();
          (v80)(v9, v5);
          swift_unknownObjectRelease();
          v48(v9, v54, v5);
        }

        if (v52)
        {
          *&v84[0] = v52;
          *(&v84[0] + 1) = v67;
          v62 = qword_1EE1D2918;
          swift_unknownObjectRetain();
          if (v62 != -1)
          {
            swift_once();
          }

          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98, &unk_1E1B14400);
          __swift_project_value_buffer(v63, qword_1EE1D2920);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0, &qword_1E1B061B0);
          sub_1E1AF4A3C();

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          (v80)(v9, v5);
          sub_1E1308058(v85, &qword_1ECEB2B70, &qword_1E1B14250);
          sub_1E1308058(v86, &unk_1ECEB7230, qword_1E1B103B0);
          swift_unknownObjectRelease();
          v48(v9, v54, v5);
        }

        else
        {

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();

          sub_1E1308058(v85, &qword_1ECEB2B70, &qword_1E1B14250);
          sub_1E1308058(v86, &unk_1ECEB7230, qword_1E1B103B0);
        }

        return (v48)(v72, v9, v5);
      }
    }

    *&v84[0] = v56;
    v58 = qword_1ECEB0E78;

    if (v58 != -1)
    {
      swift_once();
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8, &unk_1E1B2E830);
    __swift_project_value_buffer(v59, qword_1ECEB5998);
    type metadata accessor for Action(0);
    sub_1E1AF4A3C();
    (v80)(v9, v5);

    v48(v9, v54, v5);
    goto LABEL_42;
  }

  if (qword_1EE1E3990 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v5, qword_1EE1E3998);
  return (*(v79 + 16))(a2, v23, v5);
}

uint64_t sub_1E15249BC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    *(v2 + 24) = 0;
  }

  return result;
}

void sub_1E1524A34()
{
  v1 = sub_1E1AF3C1C();
  v42 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v37 - v4;
  v5 = sub_1E1AF3B5C();
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = sub_1E1AF3C3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1E134FD1C(v0 + 40, &v57, &qword_1ECEB2588, &unk_1E1B05C10);
  if (v58)
  {
    v38 = v0;
    sub_1E1337DC8(&v57, &v59);
    __swift_project_boxed_opaque_existential_1Tm(&v59, v60);
    sub_1E1AF5B8C();
    v14 = sub_1E1AF3B8C();
    (*(v11 + 8))(v13, v10);
    v48 = *(v14 + 16);
    if (v48)
    {
      v15 = 0;
      v44 = v49 + 16;
      v53 = v42 + 16;
      v55 = (v42 + 8);
      v39 = (v49 + 32);
      v41 = MEMORY[0x1E69E7CC0];
      v43 = (v49 + 8);
      v47 = v5;
      v46 = v9;
      v45 = v14;
      v16 = v54;
      while (v15 < *(v14 + 16))
      {
        v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v52 = v15;
        v50 = *(v49 + 72);
        (*(v49 + 16))(v9, v14 + v51 + v50 * v15, v5);
        v17 = sub_1E1AF3AFC();
        sub_1E1AF3C0C();
        if (*(v17 + 16) && (sub_1E14A5508(&qword_1EE1E3B28, MEMORY[0x1E69AAF78]), v18 = sub_1E1AF5D0C(), v19 = -1 << *(v17 + 32), v20 = v18 & ~v19, ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
        {
          v21 = ~v19;
          v22 = *(v42 + 72);
          v23 = *(v42 + 16);
          while (1)
          {
            v23(v16, *(v17 + 48) + v22 * v20, v1);
            sub_1E14A5508(&qword_1EE1E3B20, MEMORY[0x1E69AAF80]);
            v24 = sub_1E1AF5DAC();
            v25 = *v55;
            (*v55)(v16, v1);
            if (v24)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v25(v56, v1);
          v26 = *v39;
          v9 = v46;
          v5 = v47;
          (*v39)(v40, v46, v47);
          v27 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = v27;
          *&v57 = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E135C168(0, *(v27 + 16) + 1, 1);
            v29 = v57;
          }

          v31 = *(v29 + 16);
          v30 = *(v29 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1E135C168((v30 > 1), v31 + 1, 1);
            v29 = v57;
          }

          *(v29 + 16) = v31 + 1;
          v41 = v29;
          v26((v29 + v51 + v31 * v50), v40, v5);
        }

        else
        {
LABEL_4:

          (*v55)(v56, v1);
          v9 = v46;
          v5 = v47;
          (*v43)(v46, v47);
        }

        v15 = v52 + 1;
        v14 = v45;
        if (v52 + 1 == v48)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
LABEL_21:

      v34 = qword_1EE216768;
      v35 = v38;
      swift_beginAccess();
      if (*(v35 + v34))
      {
        v36 = *(v41 + 16);

        MetricsPageEnterGate.hasMetricsPage.setter(v36 != 0);
      }

      __swift_destroy_boxed_opaque_existential_1(&v59);
    }
  }

  else
  {
    sub_1E1308058(&v57, &qword_1ECEB2588, &unk_1E1B05C10);
    v32 = qword_1EE216768;
    swift_beginAccess();
    v33 = *(v0 + v32);
    if (v33)
    {
      swift_beginAccess();
      *(v33 + 34) = 0;
    }
  }
}

uint64_t sub_1E1525130(uint64_t a1)
{
  v2 = sub_1E1AF436C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1E1522EBC(v5);
}

double TimedMetricsPagePresenter.impressionsTracker.getter()
{
  sub_1E15258C4();
  swift_unknownObjectRetain();
  return result;
}

uint64_t TimedMetricsPagePresenter.impressionsCalculator.getter()
{
  sub_1E15258B4();
}

uint64_t sub_1E1525250(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - v6;
  v8 = *(v3 + 176);
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, &v1[v8], v4);
  v10 = sub_1E1AF5DAC();
  v11 = *(v5 + 8);
  result = v11(v7, v4);
  if ((v10 & 1) == 0)
  {
    v9(v7, &v2[v8], v4);
    sub_1E1AF5BCC();
    return v11(v7, v4);
  }

  return result;
}

uint64_t TimedMetricsPagePresenter.__deallocating_deinit()
{
  TimedMetricsPagePresenter.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1E1525478(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E1523184(v2);
  return sub_1E15262E4;
}

double sub_1E15254E8()
{
  sub_1E15258C4();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1E1525518()
{
  sub_1E15258B4();
}

void (*sub_1E1525548(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E1522FF8(v2);
  return sub_1E15255B8;
}

void (*sub_1E15255C0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E15230D8(v2);
  return sub_1E15262E4;
}

uint64_t sub_1E1525714(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10[-v5];
  v8 = *(v7 + 176);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_1E1525250(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E1525870()
{
  v1 = qword_1EE216768;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E15258D8()
{
  v1 = v0 + *(*v0 + 208);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E152592C()
{
  v1 = v0 + *(*v0 + 216);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E1525980(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1E15259C4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t keypath_getTm_3@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
}

double keypath_get_15Tm@<D0>(void *a1@<X3>, uint64_t *a2@<X8>)
{
  *a2 = sub_1E137A580(a1);
  a2[1] = v3;

  return result;
}

uint64_t keypath_set_16Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

double keypath_get_35Tm@<D0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  *a2 = a1();
  a2[1] = v3;

  swift_unknownObjectRetain();
  return result;
}

uint64_t keypath_set_36Tm(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t sub_1E1525BD0(uint64_t a1)
{
  result = sub_1E1AF436C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1E15262E8()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB5118);
  __swift_project_value_buffer(v4, qword_1ECEB5118);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E152643C()
{
  v7 = sub_1E1AF68DC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1E1361A80();
  sub_1E1AF323C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1AF6EEC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1E1AF692C();
  qword_1ECEB5130 = result;
  return result;
}

double sub_1E152668C()
{
  result = 0.5;
  __asm { FMOV            V1.2D, #1.0 }

  xmmword_1EE1DC8E8 = _Q1;
  unk_1EE1DC8F8 = xmmword_1E1B14440;
  return result;
}

id PlaybackCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaybackCoordinator.init()()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_playableViews;
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[v1] = sub_1E15A0898(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visiblePlayableIds] = MEMORY[0x1E69E7CD0];
  v0[OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_isActive] = 1;
  *&v0[OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_playbackCoalescingWaitTime] = 0x3FB999999999999ALL;
  *&v0[OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_playbackWorkItem] = 0;
  if (qword_1EE1DC8E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for PlayableViewVisibilityTracker();
  v3 = swift_allocObject();
  v10 = unk_1EE1DC8F8;
  v11 = xmmword_1EE1DC8E8;
  *(v3 + 48) = sub_1E159F634(v2);
  *(v3 + 56) = v2;
  *(v3 + 64) = v2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v11;
  *(v3 + 32) = v10;
  *&v0[OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visibilityTracker] = v3;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for PlaybackCoordinator();
  v4 = objc_msgSendSuper2(&v12, sel_init);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 defaultCenter];
  [v7 addObserver:v6 selector:sel_didEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  v8 = [v5 defaultCenter];
  [v8 addObserver:v6 selector:sel_willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

  return v6;
}

double sub_1E1526904(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectWeakAssign();
  if (qword_1EE1DC8E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for PlayableViewVisibilityTracker();
  v3 = swift_allocObject();
  v8 = unk_1EE1DC8F8;
  v9 = xmmword_1EE1DC8E8;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 48) = sub_1E159F634(MEMORY[0x1E69E7CC0]);
  *(v3 + 56) = v4;
  *(v3 + 64) = v4;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v9;
  *(v3 + 32) = v8;
  *(v1 + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visibilityTracker) = v3;

  sub_1E154A4E4();
  v5 = *(v3 + 64);

  v6 = sub_1E13C4CAC(v5);

  *(v2 + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visiblePlayableIds) = v6;

  return result;
}

void sub_1E1526A4C()
{
  *(v0 + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_isActive) = 0;
  v1 = OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_playableViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(v2 + 56) + ((v8 << 10) | (16 * v9));
    v11 = *v10;
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 40);
    v15 = v11;
    v14(ObjectType, v12);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1E1526BA4()
{
  v1 = sub_1E1AF326C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1E1AF320C();
  MEMORY[0x1EEE9AC00](v8);
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_isActive) == 1 && *(*(v0 + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visiblePlayableIds) + 16))
  {
    v16 = v2;
    v17 = v1;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E1527ED0;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_21;
    v15 = _Block_copy(aBlock);
    v18 = MEMORY[0x1E69E7CC0];
    sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E1AF6EEC();
    sub_1E1AF32AC();
    swift_allocObject();
    v10 = sub_1E1AF328C();

    v11 = OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_playbackWorkItem;
    if (*(v0 + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_playbackWorkItem))
    {

      sub_1E1AF329C();
    }

    *(v0 + v11) = v10;

    v13 = v16;
    v12 = v17;
    if (qword_1ECEB0E58 != -1)
    {
      swift_once();
    }

    sub_1E1AF325C();
    sub_1E1AF32DC();
    v14 = *(v13 + 8);
    v14(v4, v12);
    if (*(v0 + v11))
    {

      sub_1E1AF68CC();

      v14(v7, v12);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E1526F40(uint64_t a1)
{
  v2 = sub_1E1AF320C();
  v12 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF324C();
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  v8 = sub_1E1AF68EC();
  aBlock[4] = sub_1E1528094;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_26_0;
  v9 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v7, v4, v9);
  _Block_release(v9);

  (*(v12 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v11);
}

void sub_1E15271FC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v56 = Strong;
  if (*(Strong + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_isActive) != 1)
  {
    v35 = *(Strong + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visiblePlayableIds);
    v36 = 1 << *(v35 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v35 + 56);
    v39 = OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_playableViews;

    swift_beginAccess();
    v40 = 0;
    v41 = (v36 + 63) >> 6;
    if (v38)
    {
      goto LABEL_42;
    }

    do
    {
LABEL_38:
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      if (v42 >= v41)
      {

        return;
      }

      v38 = *(v35 + 56 + 8 * v42);
      ++v40;
    }

    while (!v38);
    v40 = v42;
    while (1)
    {
LABEL_42:
      v43 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      sub_1E134E724(*(v35 + 48) + 40 * (v43 | (v40 << 6)), &v59);
      v58 = *&v60[1];
      v57[0] = v59;
      v57[1] = v60[0];
      v44 = *&v56[v39];
      if (!*(v44 + 16))
      {
        goto LABEL_37;
      }

      v45 = sub_1E135FCF4(v57);
      if (v46)
      {
        v47 = *(v44 + 56) + 16 * v45;
        v48 = *(v47 + 8);
        v49 = *v47;
        sub_1E134B88C(v57);

        ObjectType = swift_getObjectType();
        (*(v48 + 40))(ObjectType, v48);

        if (!v38)
        {
          goto LABEL_38;
        }
      }

      else
      {

LABEL_37:
        sub_1E134B88C(v57);
        if (!v38)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v3 = OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_playableViews;
  swift_beginAccess();
  v4 = *&v2[v3];
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*&v2[v3] + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v55 = OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visiblePlayableIds;
  v11 = (v8 + 63) >> 6;
  v52 = *&v2[v3];

  v12 = 0;
  v51 = v11;
  while (v10)
  {
    v13 = v12;
LABEL_13:
    v14 = __clz(__rbit64(v10)) | (v13 << 6);
    sub_1E134E724(*(v52 + 48) + 40 * v14, &v59);
    v15 = *(v52 + 56) + 16 * v14;
    v16 = *(v15 + 8);
    v17 = *&v60[0];
    v53 = *(v60 + 8);
    v54 = v59;
    v18 = *(&v60[0] + 1);
    v19 = *v15;
    if (!v18)
    {
LABEL_46:

      return;
    }

    v20 = v19;
    v10 &= v10 - 1;
    v59 = v54;
    *&v60[0] = v17;
    *(v60 + 8) = v53;
    v21 = *&v2[v55];
    if (!*(v21 + 16))
    {
      goto LABEL_20;
    }

    v22 = sub_1E1AF6F2C();
    v23 = -1 << *(v21 + 32);
    v24 = v22 & ~v23;
    if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
LABEL_19:

      v2 = v56;
      v11 = v51;
      goto LABEL_20;
    }

    v25 = ~v23;
    while (1)
    {
      sub_1E134E724(*(v21 + 48) + 40 * v24, v57);
      v26 = MEMORY[0x1E68FFC60](v57, &v59);
      sub_1E134B88C(v57);
      if (v26)
      {
        break;
      }

      v24 = (v24 + 1) & v25;
      if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v34 = swift_getObjectType();
    v2 = v56;
    v11 = v51;
    if ((*(v16 + 16))(v34, v16))
    {
LABEL_20:
      v27 = *&v2[v55];
      if (!*(v27 + 16))
      {
        goto LABEL_26;
      }

      v28 = sub_1E1AF6F2C();
      v29 = -1 << *(v27 + 32);
      v30 = v28 & ~v29;
      if ((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = ~v29;
        while (1)
        {
          sub_1E134E724(*(v27 + 48) + 40 * v30, v57);
          v32 = MEMORY[0x1E68FFC60](v57, &v59);
          sub_1E134B88C(v57);
          if (v32)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        sub_1E134B88C(&v59);
        v12 = v13;
        v2 = v56;
        v11 = v51;
      }

      else
      {
LABEL_25:

        v2 = v56;
        v11 = v51;
LABEL_26:
        v33 = swift_getObjectType();
        if ((*(v16 + 16))(v33, v16))
        {
          (*(v16 + 40))(v33, v16);
          goto LABEL_30;
        }

        sub_1E134B88C(&v59);

        v12 = v13;
      }
    }

    else
    {
      (*(v16 + 32))(v34, v16);
LABEL_30:

      sub_1E134B88C(&v59);
      v12 = v13;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_46;
    }

    v10 = *(v6 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_13;
    }
  }

LABEL_50:
  __break(1u);
}

double sub_1E152774C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 8);
    v8 = a1;
    v7(v16, ObjectType, a2);
    swift_beginAccess();
    v9 = v8;
    sub_1E1387418(a1, a2, v16);
    swift_endAccess();
    v10 = OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visibilityTracker;
    memset(v16, 0, sizeof(v16));
    v17 = 1;

    sub_1E1547C2C(a1, a2, v16);

    v11 = *(v3 + v10);

    sub_1E154A4E4();
    v12 = *(v11 + 64);

    v13 = sub_1E13C4CAC(v12);

    *(v3 + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visiblePlayableIds) = v13;

    sub_1E1526BA4();
  }

  else
  {
    if (qword_1ECEB0E50 != -1)
    {
      swift_once();
    }

    v15 = sub_1E1AF591C();
    __swift_project_value_buffer(v15, qword_1ECEB5118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54BC();
  }

  return result;
}

void sub_1E15279D8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 16);
    v8 = a1;
    if (v7(ObjectType, a2))
    {
      (*(a2 + 40))(ObjectType, a2);
    }

    v9 = OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visibilityTracker;
    v10 = *(a2 + 8);
    v11 = v8;

    v10(v18, ObjectType, a2);
    swift_beginAccess();
    sub_1E1410DB0(v18, v12);
    sub_1E134B88C(v18);
    swift_endAccess();

    v13 = *(v3 + v9);

    sub_1E154A4E4();
    v14 = *(v13 + 64);

    v15 = sub_1E13C4CAC(v14);

    *(v3 + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visiblePlayableIds) = v15;

    sub_1E1526BA4();
    v10(v18, ObjectType, a2);
    swift_beginAccess();
    v17 = sub_1E1410DC4(v18, v16);
    sub_1E134B88C(v18);
    swift_endAccess();
  }
}

void sub_1E1527BBC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visibilityTracker);

  sub_1E154A4E4();
  v3 = *(v2 + 64);

  v4 = sub_1E13C4CAC(v3);

  *(v1 + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visiblePlayableIds) = v4;

  sub_1E1526BA4();
}

void sub_1E1527C90()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_1E13E44F8(&v7);
    return;
  }

  v2 = Strong;
  v3 = sub_1E1AF5DBC();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    if (v5 == 2)
    {
      *(v0 + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_isActive) = 1;
      sub_1E1526BA4();
    }
  }
}

id PlaybackCoordinator.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaybackCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

const char *Feature.iOS.feature.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = "todayWidget";
    v8 = "arcade_choose_your_favorites_brick_Future";
    v9 = "arcade_see_all_games_uplift_navigation_bar_Future";
    if (v1 != 3)
    {
      v9 = "arcade_see_all_games_uplift_ribbon_bar_Future";
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = "today_tab_largest_ax_support";
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = "mini_today_cards_product";
    v3 = "mini_today_cards_grouping";
    if (v1 != 9)
    {
      v3 = "mini_today_cards_article";
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = "arcade_see_all_games_menu_uplift";
    v5 = "arcade_hero_video_page_timer";
    if (v1 != 6)
    {
      v5 = "app_genome_2025A";
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

void Feature.iOS.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1E1AF72FC();

  v5 = 11;
  if (v4 < 0xB)
  {
    v5 = v4;
  }

  *a3 = v5;
}

unint64_t Feature.iOS.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x6469577961646F74;
    v7 = 0xD000000000000029;
    v8 = 0xD000000000000031;
    if (v1 != 3)
    {
      v8 = 0xD00000000000002DLL;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (*v0)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (*v0 <= 1u)
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
    v2 = 0xD000000000000018;
    v3 = 0xD000000000000019;
    if (v1 != 9)
    {
      v3 = 0xD000000000000018;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (v1 == 6)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v1 == 5)
    {
      v4 = 0xD000000000000020;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1E15283A4()
{
  result = qword_1ECEB5170;
  if (!qword_1ECEB5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5170);
  }

  return result;
}

uint64_t sub_1E15283F8()
{
  v1 = *v0;
  sub_1E1AF762C();
  sub_1E19DB2FC(v3, v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E1528448(uint64_t a1)
{
  v2 = *v1;
  sub_1E1AF762C();
  sub_1E19DB2FC(v4, v2);
  return sub_1E1AF767C();
}

unint64_t sub_1E1528498@<X0>(unint64_t *a1@<X8>)
{
  result = Feature.iOS.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s3iOSOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3iOSOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t LayoutView.nilIfHidden()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = sub_1E1AF117C();
  v7 = *(a1 - 8);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v11 = *(a1 - 8);
    (*(v11 + 16))(a3, v3, a1);
    v7 = v11;
    v8 = 0;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, a1);
}

uint64_t LayoutTextView.nilIfHiddenOrHasNoContent()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if ((sub_1E1AF117C() & 1) != 0 || (sub_1E1AF112C() & 1) == 0)
  {
    v6 = *(a1 - 8);
    v7 = 1;
  }

  else
  {
    v10 = *(a1 - 8);
    (*(v10 + 16))(a3, v3, a1);
    v6 = v10;
    v7 = 0;
  }

  v8 = *(v6 + 56);

  return v8(a3, v7, 1, a1);
}

uint64_t LayoutTextView.nilIfHasNoContent()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = sub_1E1AF112C();
  v7 = *(a1 - 8);
  if (v6)
  {
    v11 = *(a1 - 8);
    (*(v11 + 16))(a3, v3, a1);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, a1);
}

uint64_t VideoViewProviding.someVideoView.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 32))();
  if (result)
  {
    v3 = result;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    return v3;
  }

  return result;
}

void sub_1E1528954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a1;
  sub_1E1528B30(v6, v7, v4, v5);
}

void VideoViewProviding.someVideoView.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E1528B30(a1, a2, a3, a4);
}

void (*VideoViewProviding.someVideoView.modify(void *a1, uint64_t a2, uint64_t a3))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = VideoViewProviding.someVideoView.getter(a2, a3);
  v8[1] = v9;
  return sub_1E1528A94;
}

void sub_1E1528A94(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = v3;
    sub_1E1528B30(v3, v4, v6, v5);

    v3 = *v2;
  }

  else
  {
    sub_1E1528B30(**a1, v4, v6, v5);
  }

  free(v2);
}

uint64_t sub_1E1528B30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    swift_getAssociatedTypeWitness();
    a1 = swift_dynamicCastUnknownClass();
    if (a1)
    {
      v7 = a1;
      v8 = v6;
      a1 = v7;
    }
  }

  v9 = *(a4 + 40);

  return v9(a1, a3, a4);
}

float64x2_t static UIColor.RGBAComponents.solvedValue(between:and:forInput:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  v8 = *MEMORY[0x1E6979ED8];
  v9 = objc_opt_self();
  v10 = [v9 functionWithName_];
  v11 = [v9 functionWithName_];
  v12 = [v9 functionWithName_];
  v13 = [v9 functionWithName_];
  *&a4 = a4;
  LODWORD(v14) = LODWORD(a4);
  [v10 _solveForInput_];
  v34 = v15;
  LODWORD(v16) = LODWORD(a4);
  [v11 _solveForInput_];
  v33 = v17;
  LODWORD(v18) = LODWORD(a4);
  [v12 _solveForInput_];
  v32 = v19;
  LODWORD(v20) = LODWORD(a4);
  [v13 _solveForInput_];
  v31 = v21;

  v22 = vcvtq_f64_f32(__PAIR64__(v31, v32));
  v23 = vcvtq_f64_f32(__PAIR64__(v33, v34));
  __asm { FMOV            V6.2D, #1.0 }

  result = vaddq_f64(vmulq_f64(*a2, v23), vmulq_f64(*a1, vsubq_f64(_Q6, v23)));
  v30 = vaddq_f64(vmulq_f64(a2[1], v22), vmulq_f64(a1[1], vsubq_f64(_Q6, v22)));
  *a3 = result;
  a3[1] = v30;
  return result;
}

id static UIColor.RGBAComponents.interpolator(fromValue:toValue:curve:)@<X0>(__int128 *a1@<X0>, int8x16_t *a2@<X1>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (a1[2])
  {
    v6 = xmmword_1E1B145E0;
    v7 = 0uLL;
  }

  else
  {
    v7 = *a1;
    v6 = a1[1];
  }

  v8 = vdup_n_s32(a2[2].u8[0]);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  v10 = vcgezq_s64(vshlq_n_s64(v9, 0x3FuLL));
  v11 = vandq_s8(a2[1], v10);
  *(a4 + 8) = v7;
  *(a4 + 24) = v6;
  *(a4 + 40) = vandq_s8(v5, v10);
  *(a4 + 56) = v11;
  result = TimingCurve.caMediaTimingFunction.getter();
  *a4 = result;
  return result;
}

id UIColor.RGBAComponents.color.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v5 initWithRed:v1 green:v2 blue:v3 alpha:v4];
}

id UIColor.rgbaComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11[0] = 0;
  v8 = 0;
  v9 = 0;
  result = [v1 getRed:v11 green:&v10 blue:&v9 alpha:&v8];
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (result)
  {
    v5 = v10;
    v4 = v11[0];
    v7 = v8;
    v6 = v9;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = result ^ 1;
  return result;
}

uint64_t ArcadeDownloadPackSuggestion.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeDownloadPackSuggestion.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ArcadeDownloadPackSuggestion.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v4;
  v33 = v4;
  v31 = v7;
  v8 = sub_1E1AF39DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E1AF380C();
  v12 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v34 = a1;
  sub_1E1AF381C();
  (*(v9 + 16))(v11, a2, v8);
  type metadata accessor for Lockup(0);
  swift_allocObject();
  v18 = Lockup.init(deserializing:using:)(v17, v11);
  if (v3)
  {
    (*(v9 + 8))(a2, v8);
    (*(v12 + 8))(v34, v32);
    v19 = v33;
  }

  else
  {
    v33[2] = v18;
    sub_1E1AF381C();
    v20 = sub_1E1AF37CC();
    v22 = v21;
    v23 = *(v12 + 8);
    v24 = v14;
    v25 = v32;
    v23(v24, v32);
    if (v22)
    {
      (*(v9 + 8))(a2, v8);
      v23(v34, v25);
      v19 = v33;
      v33[3] = v20;
      v19[4] = v22;
      return v19;
    }

    v27 = sub_1E1AF5A7C();
    sub_1E152B040(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v28 = 0x79726F6765746163;
    v29 = v31;
    v28[1] = 0xEA00000000006449;
    v28[2] = v29;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x1E69AB690], v27);
    swift_willThrow();
    (*(v9 + 8))(a2, v8);
    v23(v34, v25);
    v19 = v33;
  }

  swift_deallocPartialClassInstance();
  return v19;
}

uint64_t ArcadeDownloadPackSuggestion.categoryId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ArcadeDownloadPackSuggestion.deinit()
{

  return v0;
}

uint64_t ArcadeDownloadPackSuggestion.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1E1529468@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = ArcadeDownloadPackSuggestion.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t ArcadeDownloadPackSuggestionsPagePrimaryActionKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C6C41746567;
  }

  else
  {
    return 1701736292;
  }
}

uint64_t sub_1E152950C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6C41746567;
  }

  else
  {
    v3 = 1701736292;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6C41746567;
  }

  else
  {
    v5 = 1701736292;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E15295A8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1529620(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1529684(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1529704(uint64_t *a1@<X8>)
{
  v2 = 1701736292;
  if (*v1)
  {
    v2 = 0x6C6C41746567;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1E1529744(char *a4@<X8>)
{
  v5 = sub_1E1AF72FC();

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a4 = v6;
}

uint64_t ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F4C6E6968746977;
  }

  else
  {
    return 1852401763;
  }
}

uint64_t sub_1E15297E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F4C6E6968746977;
  }

  else
  {
    v3 = 1852401763;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xED00007370756B63;
  }

  if (*a2)
  {
    v5 = 0x6F4C6E6968746977;
  }

  else
  {
    v5 = 1852401763;
  }

  if (*a2)
  {
    v6 = 0xED00007370756B63;
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
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E1529890()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1529918(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E152998C(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1529A1C(char *a3@<X8>)
{
  v4 = sub_1E1AF72FC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

void sub_1E1529A78(uint64_t *a1@<X8>)
{
  v2 = 1852401763;
  if (*v1)
  {
    v2 = 0x6F4C6E6968746977;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xED00007370756B63;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ArcadeDownloadPackSuggestionsPage.__allocating_init(deserializing:using:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeDownloadPackSuggestionsPage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ArcadeDownloadPackSuggestionsPage.init(deserializing:using:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v83 = *v2;
  v84 = a2;
  v80 = sub_1E1AF39DC();
  v82 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v72 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v77 = v69 - v7;
  v8 = sub_1E1AF3C3C();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v76 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v69 - v11;
  v13 = sub_1E1AF380C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v74 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v75 = v69 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v79 = (v69 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v69 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v69 - v24;
  v2[8] = 0;
  v73 = (v2 + 8);
  sub_1E1AF381C();
  v26 = sub_1E1AF37CC();
  v28 = v27;
  v30 = *(v14 + 8);
  v29 = v14 + 8;
  v31 = v25;
  v32 = v13;
  v33 = v30;
  (v30)(v31, v32);
  if (!v28)
  {
    v38 = sub_1E1AF5A7C();
    sub_1E152B040(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v39 = 0x656C746974;
    v40 = v83;
    v39[1] = 0xE500000000000000;
    v39[2] = v40;
    (*(*(v38 - 8) + 104))(v39, *MEMORY[0x1E69AB690], v38);
    swift_willThrow();
    (v33)(a1, v32);
    v41 = v84;
    v42 = v80;
    v43 = v82;
LABEL_15:

    swift_deallocPartialClassInstance();
    (*(v43 + 8))(v41, v42);
    return v3;
  }

  v3[2] = v26;
  v3[3] = v28;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v78 = v32;
  (v33)(v22, v32);
  v34 = sub_1E1AF5A6C();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 48))(v12, 1, v34);
  if (v36 == 1)
  {
    sub_1E14352B8(v12);
    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v36);
  v69[-2] = v84;
  type metadata accessor for ArcadeDownloadPackSuggestion();
  v44 = v81;
  v45 = sub_1E1AF59FC();
  v81 = v44;
  if (!v44)
  {
    v37 = v45;
    (*(v35 + 8))(v12, v34);
LABEL_7:
    v46 = v83;
    v41 = v84;
    v3[4] = v37;
    v47 = a1;
    if (v37 >> 62)
    {
      v65 = sub_1E1AF71CC();
      v49 = v78;
      v48 = v79;
      if (v65)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v49 = v78;
      v48 = v79;
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_9:
        v50 = v49;
        v51 = type metadata accessor for Action(0);
        sub_1E1AF381C();
        v69[2] = v51;
        v52 = v81;
        v53 = static Action.makeInstance(byDeserializing:using:)(v48, v41);
        if (!v52)
        {
          (v33)(v48, v50);
          v69[1] = v29;
          v3[5] = v53;
          v54 = v75;
          sub_1E1AF381C();
          v55 = sub_1E1AF37CC();
          v57 = v56;
          v58 = v78;
          (v33)(v54, v78);
          v3[6] = v55;
          v3[7] = v57;
          sub_1E1AF381C();
          v59 = static Action.tryToMakeInstance(byDeserializing:using:)(v54, v84);
          (v33)(v54, v58);
          swift_beginAccess();
          v3[8] = v59;

          sub_1E1AF381C();
          sub_1E152A898();
          sub_1E1AF369C();
          (v33)(v54, v58);
          *(v3 + 72) = v85;
          sub_1E1AF381C();
          sub_1E152A8EC();
          sub_1E1AF369C();
          v79 = v33;
          (v33)(v54, v58);
          *(v3 + 73) = v85;
          v60 = v84;
          v81 = v47;
          sub_1E1AF381C();
          v61 = v60;
          v62 = v80;
          v73 = *(v82 + 16);
          v73(v77, v60, v80);
          v63 = v76;
          sub_1E1AF3BAC();
          (*(v70 + 32))(v3 + OBJC_IVAR____TtC11AppStoreKit33ArcadeDownloadPackSuggestionsPage_pageMetrics, v63, v71);
          type metadata accessor for PageRenderMetricsEvent();
          v64 = v81;
          sub_1E1AF381C();
          v73(v72, v61, v62);
          sub_1E152B040(&qword_1EE1EC280, 255, type metadata accessor for PageRenderMetricsEvent, &protocol conformance descriptor for PageRenderMetricsEvent);
          sub_1E1AF464C();
          v79(v64, v78);
          *(v3 + OBJC_IVAR____TtC11AppStoreKit33ArcadeDownloadPackSuggestionsPage_pageRenderEvent) = v85;
          (*(v82 + 8))(v61, v62);
          return v3;
        }

        (v33)(v47, v50);
        (v33)(v48, v50);
        v42 = v80;
        goto LABEL_14;
      }
    }

    v66 = sub_1E1AF5A7C();
    sub_1E152B040(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v67 = 0x6974736567677573;
    v67[1] = 0xEB00000000736E6FLL;
    v67[2] = v46;
    (*(*(v66 - 8) + 104))(v67, *MEMORY[0x1E69AB690], v66);
    swift_willThrow();
    (v33)(v47, v49);
    v42 = v80;
LABEL_14:

    v43 = v82;
    goto LABEL_15;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E152A6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArcadeDownloadPackSuggestion();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E152B040(&qword_1ECEB51A8, v13, type metadata accessor for ArcadeDownloadPackSuggestion, &protocol conformance descriptor for ArcadeDownloadPackSuggestion);
  return sub_1E1AF464C();
}

unint64_t sub_1E152A898()
{
  result = qword_1ECEB5178;
  if (!qword_1ECEB5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5178);
  }

  return result;
}

unint64_t sub_1E152A8EC()
{
  result = qword_1ECEB5180;
  if (!qword_1ECEB5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5180);
  }

  return result;
}

uint64_t ArcadeDownloadPackSuggestionsPage.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcadeDownloadPackSuggestionsPage.primaryActionSecondaryTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ArcadeDownloadPackSuggestionsPage.getAllAction.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t ArcadeDownloadPackSuggestionsPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit33ArcadeDownloadPackSuggestionsPage_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *ArcadeDownloadPackSuggestionsPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit33ArcadeDownloadPackSuggestionsPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ArcadeDownloadPackSuggestionsPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit33ArcadeDownloadPackSuggestionsPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1E152ACD0()
{
  result = qword_1ECEB5188;
  if (!qword_1ECEB5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5188);
  }

  return result;
}

unint64_t sub_1E152AD28()
{
  result = qword_1ECEB5190;
  if (!qword_1ECEB5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5190);
  }

  return result;
}

void *sub_1E152AD7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = ArcadeDownloadPackSuggestionsPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E152ADF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit33ArcadeDownloadPackSuggestionsPage_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for ArcadeDownloadPackSuggestionsPage(uint64_t a1)
{
  result = qword_1ECEB5198;
  if (!qword_1ECEB5198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E152AF28(uint64_t a1)
{
  result = sub_1E1AF3C3C();
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

uint64_t sub_1E152B040(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id UIView.highlightedTintColor.getter()
{
  result = [v0 tintColor];
  if (result)
  {
    v2 = result;
    v3 = [result colorWithAlphaComponent_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TitledParagraphLayout.init(metrics:allowsMultiColumn:primaryText:secondaryText:bodyText:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[3];
  *(a6 + 160) = a1[2];
  *(a6 + 176) = v9;
  v10 = a1[5];
  *(a6 + 192) = a1[4];
  *(a6 + 208) = v10;
  v11 = a1[1];
  *(a6 + 128) = *a1;
  *(a6 + 144) = v11;
  *a6 = a2;
  sub_1E1308EC0(a3, a6 + 8);
  sub_1E1308EC0(a4, a6 + 48);

  return sub_1E1308EC0(a5, a6 + 88);
}

uint64_t TitledParagraphLayout.Metrics.init(textSpace:bodyTopSpace:columnWidth:columnMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  sub_1E1308EC0(a1, a3);
  result = sub_1E1308EC0(a2, a3 + 40);
  *(a3 + 80) = a4;
  *(a3 + 88) = a5;
  return result;
}

uint64_t TitledParagraphLayout.Metrics.textSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t TitledParagraphLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t static TitledParagraphLayout.isMultiColumn(compatibleWith:)()
{
  if (sub_1E1AF696C())
  {
    v0 = sub_1E1AF698C() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

double TitledParagraphLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_1E1AF162C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1E1AF165C();
  v11 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v66 - v16;
  v18 = [a1 traitCollection];
  if (*v3 == 1 && (sub_1E1AF696C() & 1) != 0 && (sub_1E1AF698C() & 1) == 0)
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69AB970], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0, &unk_1E1B038F0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1E1B02CD0;
    v56 = v4[9];
    v55 = v4[10];
    v57 = __swift_project_boxed_opaque_existential_1Tm(v4 + 6, v56);
    *(v54 + 56) = v56;
    *(v54 + 64) = *(v55 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v54 + 32));
    (*(*(v56 - 8) + 16))(boxed_opaque_existential_0, v57, v56);
    v60 = v4[4];
    v59 = v4[5];
    v61 = __swift_project_boxed_opaque_existential_1Tm(v4 + 1, v60);
    v74 = v60;
    v75 = *(v59 + 8);
    v62 = __swift_allocate_boxed_opaque_existential_0(v73);
    (*(*(v60 - 8) + 16))(v62, v61, v60);
    sub_1E1300B24((v4 + 16), v72);
    v70 = sub_1E1AF140C();
    v71 = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(v69);
    sub_1E1AF13FC();
    v63 = sub_1E1AF1A6C();
    v64 = MEMORY[0x1E69ABAA0];
    *(v54 + 96) = v63;
    *(v54 + 104) = v64;
    __swift_allocate_boxed_opaque_existential_0((v54 + 72));
    sub_1E1AF1A5C();
    sub_1E1AF163C();
    sub_1E1AF161C();
    __swift_project_boxed_opaque_existential_1Tm(v4 + 11, v4[14]);
    sub_1E1AF11CC();

    (*(v11 + 8))(v17, v68);
  }

  else
  {
    v67 = v18;
    v19 = sub_1E1AF698C();
    (*(v8 + 104))(v10, *MEMORY[0x1E69AB970], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0, &unk_1E1B038F0);
    if (v19)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1E1B05090;
      sub_1E1300B24((v4 + 16), v73);
      v21 = sub_1E1AF1A1C();
      v22 = MEMORY[0x1E69ABA90];
      *(v20 + 56) = v21;
      *(v20 + 64) = v22;
      __swift_allocate_boxed_opaque_existential_0((v20 + 32));
      sub_1E1AF1A2C();
      v24 = v4[9];
      v23 = v4[10];
      v25 = __swift_project_boxed_opaque_existential_1Tm(v4 + 6, v24);
      *(v20 + 96) = v24;
      *(v20 + 104) = *(v23 + 8);
      v26 = __swift_allocate_boxed_opaque_existential_0((v20 + 72));
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      v28 = v4[4];
      v27 = v4[5];
      v29 = __swift_project_boxed_opaque_existential_1Tm(v4 + 1, v28);
      v74 = v28;
      v75 = *(v27 + 8);
      v30 = __swift_allocate_boxed_opaque_existential_0(v73);
      (*(*(v28 - 8) + 16))(v30, v29, v28);
      sub_1E1300B24((v4 + 16), v72);
      v31 = sub_1E1AF140C();
      v70 = v31;
      v71 = MEMORY[0x1E69AB908];
      __swift_allocate_boxed_opaque_existential_0(v69);
      sub_1E1AF13FC();
      v32 = sub_1E1AF1A6C();
      v33 = MEMORY[0x1E69ABAA0];
      *(v20 + 136) = v32;
      *(v20 + 144) = v33;
      __swift_allocate_boxed_opaque_existential_0((v20 + 112));
      sub_1E1AF1A5C();
      v34 = v11;
      v66[1] = a1;
      v36 = v4[14];
      v35 = v4[15];
      v37 = __swift_project_boxed_opaque_existential_1Tm(v4 + 11, v36);
      v74 = v36;
      v75 = *(v35 + 8);
      v38 = __swift_allocate_boxed_opaque_existential_0(v73);
      (*(*(v36 - 8) + 16))(v38, v37, v36);
      sub_1E1300B24((v4 + 21), v72);
      v70 = v31;
      v71 = MEMORY[0x1E69AB908];
      __swift_allocate_boxed_opaque_existential_0(v69);
      sub_1E1AF13FC();
      *(v20 + 176) = v32;
      *(v20 + 184) = MEMORY[0x1E69ABAA0];
      __swift_allocate_boxed_opaque_existential_0((v20 + 152));
      sub_1E1AF1A5C();
      sub_1E1AF163C();
      sub_1E1AF161C();
      a2 = v39;

      (*(v34 + 8))(v13, v68);
    }

    else
    {
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1E1B03760;
      sub_1E1300B24((v4 + 16), v73);
      v41 = sub_1E1AF1A1C();
      v42 = MEMORY[0x1E69ABA90];
      *(v40 + 56) = v41;
      *(v40 + 64) = v42;
      __swift_allocate_boxed_opaque_existential_0((v40 + 32));
      sub_1E1AF1A2C();
      v43 = v4[4];
      v44 = v4[5];
      v45 = __swift_project_boxed_opaque_existential_1Tm(v4 + 1, v43);
      *(v40 + 96) = v43;
      *(v40 + 104) = *(v44 + 8);
      v46 = __swift_allocate_boxed_opaque_existential_0((v40 + 72));
      (*(*(v43 - 8) + 16))(v46, v45, v43);
      v47 = v4[14];
      v48 = v4[15];
      v49 = __swift_project_boxed_opaque_existential_1Tm(v4 + 11, v47);
      v74 = v47;
      v75 = *(v48 + 8);
      v50 = __swift_allocate_boxed_opaque_existential_0(v73);
      (*(*(v47 - 8) + 16))(v50, v49, v47);
      sub_1E1300B24((v4 + 21), v72);
      v70 = sub_1E1AF140C();
      v71 = MEMORY[0x1E69AB908];
      __swift_allocate_boxed_opaque_existential_0(v69);
      sub_1E1AF13FC();
      v51 = sub_1E1AF1A6C();
      v52 = MEMORY[0x1E69ABAA0];
      *(v40 + 136) = v51;
      *(v40 + 144) = v52;
      __swift_allocate_boxed_opaque_existential_0((v40 + 112));
      sub_1E1AF1A5C();
      sub_1E1AF163C();
      sub_1E1AF161C();
      a2 = v53;

      (*(v11 + 8))(v13, v68);
    }
  }

  return a2;
}

uint64_t sub_1E152BCD4@<X0>(uint64_t *a1@<X8>)
{
  v55 = a1;
  v2 = sub_1E1AF1CAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF175C();
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF176C();
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v53 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E1AF171C();
  v11 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v1;
  if (*v1 == 1 && (sub_1E1AF696C() & 1) != 0 || (sub_1E1AF698C() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51B0, &qword_1E1B356E0);
    v14 = *(sub_1E1AF179C() - 8);
    v50 = *(v14 + 72);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    v51 = v16;
    *(v16 + 16) = xmmword_1E1B02CD0;
    v54 = v16 + v15;
    *(&v67 + 1) = sub_1E1AF140C();
    v68 = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(&v66);
    sub_1E1AF13FC();
    v65 = 0;
    memset(v64, 0, sizeof(v64));
    v49 = *MEMORY[0x1E69AB990];
    v56 = v11;
    v17 = *(v11 + 104);
    v47 = v11 + 104;
    v48 = v17;
    v18 = v13;
    v17(v13);
    v44 = *MEMORY[0x1E69AB9B8];
    v19 = v52;
    v39 = v9;
    v20 = v59;
    v21 = *(v59 + 104);
    v45 = v59 + 104;
    v46 = v21;
    v22 = v53;
    v21(v53);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51B8, &unk_1E1B14B50);
    v43 = v19[9];
    v40 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v23 = swift_allocObject();
    v41 = xmmword_1E1B02CC0;
    *(v23 + 16) = xmmword_1E1B02CC0;
    sub_1E1AF174C();
    *&v61 = v23;
    v38[3] = sub_1E152CEEC(v24);
    v38[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51C0, &unk_1E1B444D0);
    v38[1] = sub_1E152CF44();
    sub_1E1AF6EEC();
    sub_1E1AF178C();
    v52 = v19[1];
    (v52)(v8, v6);
    v25 = *(v20 + 8);
    v59 = v20 + 8;
    v38[0] = v25;
    v26 = v39;
    v25(v22, v39);
    v27 = *(v56 + 8);
    v56 += 8;
    v28 = v58;
    v27(v18, v58);
    sub_1E141E174(v64);
    __swift_destroy_boxed_opaque_existential_1(&v66);
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v48(v18, v49, v28);
    v46(v22, v44, v26);
    v29 = swift_allocObject();
    *(v29 + 16) = v41;
    sub_1E1AF174C();
    *&v64[0] = v29;
    sub_1E1AF6EEC();
    sub_1E1AF178C();
    (v52)(v8, v6);
    (v38[0])(v22, v26);
    v27(v18, v58);
    sub_1E141E174(&v66);
    v30 = sub_1E1AF17AC();
    v31 = MEMORY[0x1E69AB9C8];
    v32 = v55;
    v55[3] = v30;
    v32[4] = v31;
    __swift_allocate_boxed_opaque_existential_0(v32);
    return sub_1E1AF177C();
  }

  else
  {
    v34 = v57;
    sub_1E1300B24((v57 + 8), &v66);
    sub_1E1300B24((v34 + 48), v64);
    (*(v3 + 104))(v5, *MEMORY[0x1E69ABB78], v2);
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v60[3] = sub_1E1AF140C();
    v60[4] = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(v60);
    sub_1E1AF13FC();
    v35 = sub_1E1AF1CBC();
    v36 = MEMORY[0x1E69ABB88];
    v37 = v55;
    v55[3] = v35;
    v37[4] = v36;
    __swift_allocate_boxed_opaque_existential_0(v37);
    return sub_1E1AF1C7C();
  }
}

uint64_t sub_1E152C4B4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_1E1AF111C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMaxX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinY(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetHeight(v22);
  v16 = [a1 traitCollection];
  sub_1E152BCD4(v19);

  __swift_project_boxed_opaque_existential_1Tm(v19, v19[3]);
  sub_1E1AF6B1C();
  sub_1E1AF1B7C();
  (*(v13 + 8))(v15, v12);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 88), *(v6 + 112));
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  sub_1E1AF11CC();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMinX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMinY(v26);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 88), *(v6 + 112));
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  sub_1E1AF106C();
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1E152C788@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v32 = a2;
  v30 = sub_1E1AF1D6C();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E1AF111C();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF745C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 traitCollection];
  v22 = v6[19];
  __swift_project_boxed_opaque_existential_1Tm(v7 + 16, v22);
  sub_1E13BC274(v22);
  sub_1E1AF12DC();
  (*(v17 + 8))(v20, v16);
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetMinX(v34);
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  CGRectGetMinY(v35);
  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = a5;
  v36.size.height = a6;
  CGRectGetWidth(v36);
  v37.origin.x = a3;
  *v26 = a3;
  *&v26[1] = a4;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetHeight(v37);
  v23 = v21;
  sub_1E152BCD4(v33);
  __swift_project_boxed_opaque_existential_1Tm(v33, v33[3]);
  sub_1E1AF1B7C();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 11, v7[14]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 21, v7[24]);
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 11, v7[14]);
  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  CGRectGetMinX(v38);
  sub_1E1AF10EC();
  sub_1E1AF109C();
  v24 = v27;
  sub_1E1AF110C();
  sub_1E1AF1CFC();
  (*(v28 + 8))(v24, v30);
  sub_1E1AF116C();
  sub_1E1AF106C();

  (*(v29 + 8))(v15, v31);
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t TitledParagraphLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  if (*v6 == 1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    v10 = a5;
    v11 = a6;
    v12 = a1;
    v13 = [a1 traitCollection];
    if (sub_1E1AF696C())
    {
      v14 = sub_1E1AF698C();

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
      if ((v14 & 1) == 0)
      {

        return sub_1E152C4B4(v12, v8, v9, v10, v11);
      }
    }

    else
    {

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
    }
  }

  return sub_1E152C788(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1E152CCF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  if (*v6 == 1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    v10 = a5;
    v11 = a6;
    v12 = a1;
    v13 = [a1 traitCollection];
    if (sub_1E1AF696C())
    {
      v14 = sub_1E1AF698C();

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
      if ((v14 & 1) == 0)
      {

        return sub_1E152C4B4(v12, v8, v9, v10, v11);
      }
    }

    else
    {

      a1 = v12;
      a6 = v11;
      a5 = v10;
      a4 = v9;
      a3 = v8;
      a2 = v7;
    }
  }

  return sub_1E152C788(a1, a2, a3, a4, a5, a6);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E152CE3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E152CE84(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1E152CEEC(double a1)
{
  result = qword_1EE1D2A90;
  if (!qword_1EE1D2A90)
  {
    sub_1E1AF175C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2A90);
  }

  return result;
}

unint64_t sub_1E152CF44()
{
  result = qword_1EE1D2640;
  if (!qword_1EE1D2640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB51C0, &unk_1E1B444D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2640);
  }

  return result;
}

unint64_t sub_1E152CFC4()
{
  result = qword_1ECEB51C8;
  if (!qword_1ECEB51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB51C8);
  }

  return result;
}

unint64_t sub_1E152D020()
{
  result = qword_1ECEB51D0;
  if (!qword_1ECEB51D0)
  {
    type metadata accessor for ArcadeDownloadPackCategoriesPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB51D0);
  }

  return result;
}

id sub_1E152D078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  result = [v6 valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;

    v9 = [v6 valueWithObject:sub_1E1AF755C() inContext:{a1, a2, a3}];
    result = swift_unknownObjectRelease();
    if (v9)
    {
      sub_1E1AF6C5C();
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AppStateFieldsProvider.init(appStateController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for AppStateFieldsProvider(0) + 20);
  v7 = *MEMORY[0x1E69AB4D8];
  v8 = sub_1E1AF524C();
  result = (*(*(v8 - 8) + 104))(&a3[v6], v7, v8);
  *a3 = a1;
  *(a3 + 1) = a2;
  return result;
}

uint64_t type metadata accessor for AppStateFieldsProvider(uint64_t a1)
{
  result = qword_1EE1F8F38;
  if (!qword_1EE1F8F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppStateFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppStateFieldsProvider(0) + 20);
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void AppStateFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = v1;
  v5 = MetricsFieldsContext.adamIdString.getter();
  if (!v6)
  {
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v17 = sub_1E1AF591C();
    __swift_project_value_buffer(v17, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    return;
  }

  v7 = v5;
  v8 = v6;
  v9 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v24 = v7;
  v25 = v8;
  (*(v9 + 56))(&v24, ObjectType, v9);
  v12 = v11;

  v13 = swift_getObjectType();
  (*(v12 + 16))(&v27, v13, v12);
  v15 = v27;
  v14 = v28;
  v16 = v33 >> 60;
  if ((v33 >> 60) <= 3)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    if (v16 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0, "p-\t");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E1B02CC0;
      *(inited + 32) = 0x6D61726150797562;
      v23 = inited + 32;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE900000000000073;
      *(inited + 48) = v15;
      *(inited + 56) = v14;
      v16 = sub_1E1303A74(inited);
      swift_setDeallocating();
      sub_1E152D7FC(v23);
      v20 = 0xE600000000000000;
      v21 = 0x657461647075;
      goto LABEL_28;
    }

    if (v16 != 3)
    {
LABEL_23:
      swift_unknownObjectRelease();
      sub_1E139CEA8(&v27);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0, "p-\t");
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1E1B02CC0;
    *(v18 + 32) = 0x6D61726150797562;
    v19 = v18 + 32;
    *(v18 + 72) = MEMORY[0x1E69E6158];
    *(v18 + 40) = 0xE900000000000073;
    *(v18 + 48) = v15;
    *(v18 + 56) = v14;
    v16 = sub_1E1303A74(v18);
    swift_setDeallocating();
    sub_1E152D7FC(v19);
LABEL_25:
    v20 = 0xE800000000000000;
    v21 = 0x64616F6C6E776F64;
    goto LABEL_28;
  }

  if (v16 <= 6)
  {
    if (v16 != 4)
    {
      if (v16 == 5)
      {
        sub_1E139CEA8(&v27);
        v16 = 0;
LABEL_22:
        v20 = 0xE600000000000000;
        v21 = 0x6C65636E6163;
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    sub_1E139CEA8(&v27);
    v16 = 0;
    goto LABEL_25;
  }

  if (v16 == 7)
  {
    sub_1E139CEA8(&v27);
    v16 = 0;
    v20 = 0xE400000000000000;
    v21 = 1852141679;
    goto LABEL_28;
  }

  if (v16 != 8 || (v33 != 0x8000000000000000 || v28 | v27 | v34 | v32 | v31 | v30 | v29) && (v33 != 0x8000000000000000 || v27 != 4 || v34 | v28 | v32 | v31 | v30 | v29))
  {
    goto LABEL_23;
  }

  v16 = 0;
  v20 = 0xE300000000000000;
  v21 = 7959906;
LABEL_28:
  v26 = MEMORY[0x1E69E6158];
  v24 = v21;
  v25 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1E1AF4A1C();
  if (v2)
  {
    swift_unknownObjectRelease();

LABEL_32:
    __swift_destroy_boxed_opaque_existential_1(&v24);
    return;
  }

  __swift_destroy_boxed_opaque_existential_1(&v24);
  if (v16)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
    v24 = v16;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1E152D7FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80, &qword_1E1B192E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E152D88C(uint64_t a1)
{
  result = sub_1E14A5F7C();
  if (v2 <= 0x3F)
  {
    result = sub_1E1AF524C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SignInAction.__allocating_init()()
{
  v0 = sub_1E1AEFEAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  v7 = sub_1E1AF3E1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_1E1AF3DFC();
  v12 = sub_1E1AF46DC();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = (v11 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v13 = 0u;
  v13[1] = 0u;
  sub_1E138853C(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v1 + 8))(v3, v0);
    v20[1] = v14;
    v20[2] = v16;
    sub_1E1AF6F6C();
    sub_1E1308058(&v21, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v27, &unk_1ECEB5670, qword_1E1B03EC0);
  v17 = v11 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v18 = v25;
  *v17 = v24;
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  sub_1E134B7C8(v6, v11 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v11 + 16) = xmmword_1E1B14D10;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  (*(v8 + 32))(v11 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v10, v7);
  return v11;
}

uint64_t SignInAction.init()()
{
  v1 = v0;
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_1E1AF3E1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_1E1AF3DFC();
  v13 = sub_1E1AF46DC();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  sub_1E138853C(v28, &v22);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v21[1] = v15;
    v21[2] = v17;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v28, &unk_1ECEB5670, qword_1E1B03EC0);
  v18 = v1 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v18 + 32) = v27;
  v19 = v26;
  *v18 = v25;
  *(v18 + 16) = v19;
  sub_1E134B7C8(v8, v1 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v1 + 16) = xmmword_1E1B14D10;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v12, v9);
  return v1;
}

char *SignInAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *SignInAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t SignInAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v0;
}

uint64_t SignInAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignInAction(uint64_t a1)
{
  result = qword_1EE1F5828;
  if (!qword_1EE1F5828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccountSectionText.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccountSectionText.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AccountSectionText.__allocating_init(id:paragraph:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_1E138853C(a1, &v15);
  if (*(&v16 + 1))
  {
    sub_1E13E2E98(a1);
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_1E1AEFE9C();
    v9 = sub_1E1AEFE7C();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v14[1] = v9;
    v14[2] = v11;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v15);
  }

  v12 = v19;
  *(v8 + 24) = v18;
  *(v8 + 40) = v12;
  *(v8 + 56) = v20;
  *(v8 + 16) = a2;
  return v8;
}

uint64_t AccountSectionText.init(id:paragraph:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v16);
  if (*(&v17 + 1))
  {
    sub_1E13E2E98(a1);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_1E1AEFE9C();
    v10 = sub_1E1AEFE7C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v15[1] = v10;
    v15[2] = v12;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v16);
  }

  v13 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v13;
  *(v3 + 56) = v21;
  *(v3 + 16) = a2;
  return v3;
}

uint64_t AccountSectionText.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v39 = sub_1E1AF39DC();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AEFEAC();
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = a1;
  sub_1E1AF381C();
  v17 = sub_1E1AF37CC();
  v35 = v10;
  if (v18)
  {
    v40 = v17;
    v41 = v18;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v20 = v6;
    v22 = v21;
    (*(v34 + 8))(v8, v20);
    v40 = v19;
    v41 = v22;
  }

  sub_1E1AF6F6C();
  v23 = *(v10 + 8);
  v24 = v9;
  v23(v15, v9);
  v25 = v43;
  *(v3 + 24) = v42;
  *(v3 + 40) = v25;
  *(v3 + 56) = v44;
  sub_1E1AF381C();
  v26 = v36;
  v27 = v37;
  v28 = v39;
  (*(v37 + 16))(v36, v45, v39);
  v29 = v38;
  v30 = sub_1E165AA74(v12, v26);
  if (v29)
  {
    (*(v27 + 8))(v45, v28);
    v23(v16, v24);
    sub_1E134B88C(v3 + 24);
    type metadata accessor for AccountSectionText();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v30;
    (*(v27 + 8))(v45, v28);
    v23(v16, v24);
    *(v3 + 16) = v31;
  }

  return v3;
}

uint64_t AccountSectionText.deinit()
{

  sub_1E134B88C(v0 + 24);
  return v0;
}

uint64_t AccountSectionText.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1E152ECE8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for AccountSectionText();
  v7 = swift_allocObject();
  result = AccountSectionText.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClippedSizeViewModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClippedSizeViewModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1E152EE40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51D8, &qword_1E1B14E78);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51E0, &qword_1E1B14E80);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  if (a4)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51E8, &qword_1E1B14E88);
    (*(*(v12 - 8) + 16))(v8, a1, v12);
    swift_storeEnumTagMultiPayload();
    sub_1E152F13C();
    sub_1E1302CD4(&qword_1ECEB5218, &qword_1ECEB51E8, &qword_1E1B14E88, MEMORY[0x1E697FDF8]);
    return sub_1E1AF259C();
  }

  else
  {
    sub_1E1AF2D1C();
    sub_1E1AF214C();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51E8, &qword_1E1B14E88);
    (*(*(v14 - 8) + 16))(v11, a1, v14);
    v15 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5210, &qword_1E1B14E98) + 36)];
    v16 = v17[1];
    *v15 = v17[0];
    *(v15 + 1) = v16;
    *(v15 + 2) = v17[2];
    *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5200, &qword_1E1B14E90) + 36)] = 0;
    v11[*(v9 + 36)] = 0;
    sub_1E152F364(v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_1E152F13C();
    sub_1E1302CD4(&qword_1ECEB5218, &qword_1ECEB51E8, &qword_1E1B14E88, MEMORY[0x1E697FDF8]);
    sub_1E1AF259C();
    return sub_1E152F3D4(v11);
  }
}

unint64_t sub_1E152F13C()
{
  result = qword_1ECEB51F0;
  if (!qword_1ECEB51F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB51E0, &qword_1E1B14E80);
    sub_1E152F1F4();
    sub_1E1302CD4(&qword_1ECEB2FA8, &qword_1ECEB2FB0, &qword_1E1B05590, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB51F0);
  }

  return result;
}

unint64_t sub_1E152F1F4()
{
  result = qword_1ECEB51F8;
  if (!qword_1ECEB51F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5200, &qword_1E1B14E90);
    sub_1E152F2AC();
    sub_1E1302CD4(&qword_1ECEB5220, &qword_1ECEB5228, &unk_1E1B14EA0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB51F8);
  }

  return result;
}

unint64_t sub_1E152F2AC()
{
  result = qword_1ECEB5208;
  if (!qword_1ECEB5208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5210, &qword_1E1B14E98);
    sub_1E1302CD4(&qword_1ECEB5218, &qword_1ECEB51E8, &qword_1E1B14E88, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5208);
  }

  return result;
}

uint64_t sub_1E152F364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51E0, &qword_1E1B14E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E152F3D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51E0, &qword_1E1B14E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E152F43C()
{
  result = qword_1ECEB5230;
  if (!qword_1ECEB5230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5238, &unk_1E1B14EB0);
    sub_1E152F13C();
    sub_1E1302CD4(&qword_1ECEB5218, &qword_1ECEB51E8, &qword_1E1B14E88, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5230);
  }

  return result;
}

uint64_t EditorialQuoteLayout.Metrics.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t EditorialQuoteLayout.Metrics.quoteTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t EditorialQuoteLayout.Metrics.attributionTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t EditorialQuoteLayout.Metrics.horizontalMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t EditorialQuoteLayout.Metrics.bottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t EditorialQuoteLayout.Metrics.maxWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_1E1308EC0(a1, v1 + 160);
}

uint64_t EditorialQuoteLayout.Metrics.init(quoteTopSpace:attributionTopSpace:horizontalMargin:bottomMargin:maxWidth:minHeight:alignment:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a7;
  *(a8 + 216) = 0u;
  *(a8 + 232) = 0;
  *(a8 + 200) = 0u;
  v15 = a8 + 200;
  sub_1E1308EC0(a1, a8);
  sub_1E1308EC0(a2, a8 + 40);
  sub_1E1308EC0(a3, a8 + 80);
  sub_1E1308EC0(a4, a8 + 120);
  sub_1E1308EC0(a5, a8 + 160);
  result = sub_1E13BC4E4(a6, v15);
  *(a8 + 240) = v14;
  return result;
}

uint64_t EditorialQuoteLayout.init(metrics:quoteLabel:attributionLabel:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 208);
  *(a4 + 192) = *(a1 + 192);
  *(a4 + 208) = v6;
  *(a4 + 224) = *(a1 + 224);
  *(a4 + 240) = *(a1 + 240);
  v7 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v7;
  v8 = *(a1 + 176);
  *(a4 + 160) = *(a1 + 160);
  *(a4 + 176) = v8;
  v9 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v9;
  v10 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v10;
  v11 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v11;
  v12 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v12;
  sub_1E1308EC0(a2, a4 + 248);

  return sub_1E1308EC0(a3, a4 + 288);
}

void EditorialQuoteLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_1E1AF745C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E141E104(v3 + 200, v13);
  v11 = v14;
  if (v14)
  {
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    sub_1E13BC274(v11);
    sub_1E1AF12DC();
    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1E141E174(v13);
  }

  sub_1E152FBB4(a1, a2, a3);
}

uint64_t sub_1E152FBB4(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[13];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v9);
  sub_1E13BC274(v9);
  sub_1E1AF12DC();
  v10 = *(v6 + 8);
  v10(v8, v5);
  sub_1E1AF6B5C();
  v11 = v4[23];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 20, v11);
  sub_1E13BC274(v11);
  sub_1E1AF12DC();
  v10(v8, v5);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 31, v4[34]);
  sub_1E1AF11CC();
  v13 = v12;
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_1E1AF12FC();
  v19 = v13;
  sub_1E1AF12CC();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 36, v4[39]);
  sub_1E1AF11CC();
  v15 = v14;
  __swift_project_boxed_opaque_existential_1Tm(v4 + 5, v4[8]);
  sub_1E1AF12FC();
  v19 = v15;
  sub_1E1AF12CC();
  v16 = v4[18];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 15, v16);
  sub_1E13BC274(v16);
  sub_1E1AF12DC();
  return (v10)(v8, v5);
}

uint64_t EditorialQuoteLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v61 = a2;
  *&v13 = COERCE_DOUBLE(sub_1E1AF111C());
  v59 = *(v13 - 8);
  v60 = *&v13;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF745C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + 104);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 80), v19);
  sub_1E13BC274(v19);
  sub_1E1AF12DC();
  v20 = *(v16 + 8);
  v20(v18, v15);
  v54 = a3;
  v55 = a4;
  sub_1E1AF6B0C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = *(v7 + 184);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 160), v29);
  sub_1E13BC274(v29);
  v30 = sub_1E1AF12DC();
  v56 = v20;
  v57 = v15;
  v20(v18, v15);
  v65.origin.x = v22;
  v65.origin.y = v24;
  v65.size.width = v26;
  v65.size.height = v28;
  if (v30 < CGRectGetWidth(v65))
  {
    v66.origin.x = v22;
    v66.origin.y = v24;
    v66.size.width = v26;
    v66.size.height = v28;
    v22 = v22 + (CGRectGetWidth(v66) - v30) * 0.5;
    v26 = v30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26B8, &unk_1E1B02B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CD0;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_1E1300B24(v7 + 248, inited + 32);
  sub_1E1300B24(v7, inited + 80);
  sub_1E141E104(&v62, inited + 120);
  *(inited + 72) = 1;
  *(inited + 160) = 8;
  sub_1E141E174(&v62);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_1E1300B24(v7 + 288, inited + 168);
  sub_1E1300B24(v7 + 40, inited + 216);
  sub_1E141E104(&v62, inited + 256);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_1E141E174(&v62);
  LOBYTE(v62) = 1;
  *(&v62 + 1) = inited;
  v32 = v58;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v58, v22, v24, v26, v28);
  (*(v59 + 8))(v32, COERCE_DOUBLE(*&v60));

  sub_1E152FBB4(a1, a5, a6);
  v60 = v33;
  v35 = v34;
  sub_1E141E104(v7 + 200, &v62);
  v36 = *(&v63 + 1);
  if (!*(&v63 + 1))
  {
    sub_1E141E174(&v62);
    v37 = 0.0;
    if (v35 >= 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1Tm(&v62, *(&v63 + 1));
  sub_1E13BC274(v36);
  v37 = sub_1E1AF12DC();
  v56(v18, v57);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  if (v37 > v35)
  {
LABEL_5:
    __swift_project_boxed_opaque_existential_1Tm((v7 + 288), *(v7 + 312));
    sub_1E1AF115C();
    MaxY = CGRectGetMaxY(v67);
    __swift_project_boxed_opaque_existential_1Tm((v7 + 248), *(v7 + 272));
    sub_1E1AF115C();
    v39 = MaxY - CGRectGetMinY(v68);
    v69.origin.x = v54;
    v69.origin.y = v55;
    v69.size.width = a5;
    v69.size.height = a6;
    v40 = CGRectGetMinY(v69) + (v37 - v39) * 0.5;
    __swift_project_boxed_opaque_existential_1Tm((v7 + 248), *(v7 + 272));
    sub_1E1AF115C();
    v42 = v40 - v41;
    __swift_project_boxed_opaque_existential_1Tm((v7 + 248), *(v7 + 272));
    v43 = sub_1E1AF114C();
    *(v44 + 8) = v40;
    v43(&v62, 0);
    __swift_project_boxed_opaque_existential_1Tm((v7 + 288), *(v7 + 312));
    v45 = sub_1E1AF114C();
    *(v46 + 8) = v42 + *(v46 + 8);
    v45(&v62, 0);
  }

LABEL_6:
  if (*(v7 + 240) == 1)
  {
    v47 = v26 - v60;
    if (v26 - v60 > 0.0)
    {
      __swift_project_boxed_opaque_existential_1Tm((v7 + 248), *(v7 + 272));
      v48 = v47 * 0.5;
      v49 = sub_1E1AF114C();
      *v50 = v48 + *v50;
      v49(&v62, 0);
      __swift_project_boxed_opaque_existential_1Tm((v7 + 288), *(v7 + 312));
      v51 = sub_1E1AF114C();
      *v52 = v48 + *v52;
      v51(&v62, 0);
    }
  }

  return sub_1E1AF106C();
}

unint64_t sub_1E15305AC()
{
  result = qword_1ECEB5240;
  if (!qword_1ECEB5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5240);
  }

  return result;
}

__n128 __swift_memcpy241_8(uint64_t a1, __int128 *a2)
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
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1E153065C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E15306A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void ProductTopLockup.PrimaryBanner.hideCriteria.getter(void *a1@<X8>)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v5 = *v1 & 0x7FFFFFFFFFFFFFFFLL;
    v3 = *(v5 + 0x50);
    v4 = *(v5 + 88);
    sub_1E14FDDEC(*(v5 + 80), v4);
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  *a1 = v3;
  a1[1] = v4;
}

void ProductTopLockup.init(deserializing:using:)()
{
  *(v0 + 248) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  v1 = OBJC_IVAR____TtC11AppStoreKit16ProductTopLockup_impressionMetrics;
  v2 = sub_1E1AF46DC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_1E1AF71FC();
  __break(1u);
}

uint64_t ProductTopLockup.title.getter()
{
  v1 = *(*(v0 + 16) + 96);

  return v1;
}

uint64_t ProductTopLockup.subtitle.getter()
{
  v1 = *(v0 + 16);
  if (v1[19])
  {
    v2 = v1[18];
  }

  else
  {
    v2 = v1[14];
  }

  return v2;
}

uint64_t ProductTopLockup.developerTagline.getter()
{
  v1 = *(*(v0 + 16) + 144);

  return v1;
}

uint64_t ProductTopLockup.editorialTagline.getter()
{
  v1 = *(*(v0 + 16) + 184);

  return v1;
}

uint64_t ProductTopLockup.developerName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double ProductTopLockup.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;

  return result;
}

BOOL ProductTopLockup.wantsInlineUberPresentationStyle.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      return 0;
    }
  }

  else if (*(v1 + 16))
  {
    swift_bridgeObjectRelease_n();
    return *(v1 + 40) || *(v1 + 24) != 0;
  }

  v2 = sub_1E1AF74AC();

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  return *(v1 + 40) || *(v1 + 24) != 0;
}

void ProductTopLockup.iconStyle.getter(_BYTE *a1@<X8>)
{
  v2 = *(*(v1 + 16) + 48);
  if (v2)
  {
    *a1 = *(v2 + 64);
  }

  else
  {
    *a1 = 9;
  }
}

uint64_t ProductTopLockup.expandedOfferTitles.getter()
{
  v1 = v0[11];
  sub_1E1530C20(v1, v0[12], v0[13], v0[14]);
  return v1;
}

double sub_1E1530C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

BOOL ProductTopLockup.invalidatesPrimaryBannerOnAppStateChange.getter()
{
  if (v0[16])
  {
    return 0;
  }

  if (v0[17])
  {
    return 0;
  }

  return v0[18] != 0;
}

uint64_t ProductTopLockup.primaryBanner(for:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2[16];
  if (!v3)
  {
    v4 = v2[17];
    if (v4)
    {
LABEL_3:
      v3 = v4 | 0x8000000000000000;
      v5 = a2;

      a2 = v5;
      goto LABEL_4;
    }

    v7 = v2[18];
    if (v7)
    {
      v8 = a1[6];
      v9 = v8 >> 60;
      v3 = 0xF000000000000007;
      if ((v8 >> 60) > 6)
      {
        if (v9 == 7)
        {
          v4 = v7[6];
          if (v4)
          {
            goto LABEL_3;
          }
        }

        else if (v9 == 8)
        {
          v10 = *a1;
          v11 = a1[3];
          v12 = a1[2] | a1[1];
          v13 = a1[4] | a1[5] | a1[7];
          if (v8 != 0x8000000000000000 || v12 | v10 | v11 | v13)
          {
            if (v8 == 0x8000000000000000 && v10 == 4 && !(v12 | v11 | v13))
            {
              v4 = v7[2];
              if (v4)
              {
                goto LABEL_3;
              }
            }
          }

          else
          {
            v4 = v7[3];
            if (v4)
            {
              goto LABEL_3;
            }
          }
        }
      }

      else if (v9 == 2)
      {
        v4 = v7[5];
        if (v4)
        {
          goto LABEL_3;
        }
      }

      else if (v9 == 3)
      {
        v4 = v7[4];
        if (v4)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v3 = 0xF000000000000007;
    }
  }

LABEL_4:
  *a2 = v3;
}

uint64_t ProductTopLockup.tertiaryTitle.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t ProductTopLockup.segue.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1E13619D8(a1, v1 + 216, &unk_1ECEB1780, &qword_1E1B0AD50);
  return swift_endAccess();
}

uint64_t ProductTopLockup.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16ProductTopLockup_impressionMetrics;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &unk_1ECEB1770, &unk_1E1AFED20);
}

uint64_t ProductTopLockup.impressionMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16ProductTopLockup_impressionMetrics;
  swift_beginAccess();
  sub_1E13619D8(a1, v1 + v3, &unk_1ECEB1770, &unk_1E1AFED20);
  return swift_endAccess();
}

uint64_t *ProductTopLockup.deinit()
{

  sub_1E1531164(v0[11], v0[12], v0[13], v0[14]);

  sub_1E134B88C((v0 + 22));
  sub_1E1308058((v0 + 27), &unk_1ECEB1780, &qword_1E1B0AD50);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductTopLockup_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

double sub_1E1531164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t ProductTopLockup.__deallocating_deinit()
{
  ProductTopLockup.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E1531208()
{
  result = qword_1EE1F1D08;
  if (!qword_1EE1F1D08)
  {
    type metadata accessor for ProductTopLockup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F1D08);
  }

  return result;
}

uint64_t type metadata accessor for ProductTopLockup(uint64_t a1)
{
  result = qword_1EE1F1CF8;
  if (!qword_1EE1F1CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15312BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 216, a1, &unk_1ECEB1780, &qword_1E1B0AD50);
}

uint64_t sub_1E1531318@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit16ProductTopLockup_impressionMetrics;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a1, &unk_1ECEB1770, &unk_1E1AFED20);
}

void sub_1E153138C(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E15314E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 240);
  if (v7)
  {
    if (*(v7 + 121) == 1)
    {
      v8 = *(a1 + 304);
      if (v8)
      {
        if (v8 >> 62)
        {
          v16 = a5;
          v17 = a4;
          v18 = sub_1E1AF71CC();
          a4 = v17;
          a5 = v16;
          v9 = v18;
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = Lockup.numberOfPurchasedChildren(using:)(a4, a5);
        if ((v11 & 1) == 0 && v10 >= 1 && v9 > v10)
        {
          return _s11AppStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD00000000000002CLL, 0x80000001E1B64AF0, v9 - v10);
        }
      }
    }
  }

  if (a3)
  {

    v12._countAndFlagsBits = 0xD00000000000002FLL;
    v12._object = 0x80000001E1B64AC0;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    localizedString(_:comment:)(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E1B02CC0;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1E13C2F48();
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    a2 = sub_1E1AF5E3C();
  }

  return a2;
}

uint64_t PersonalizationFeedbackRequest.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PersonalizationFeedbackRequest.__allocating_init(id:description:options:hasDivider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 88) = 0;
  sub_1E138853C(a1, &v25);
  if (*(&v26 + 1))
  {
    v15 = v26;
    *(v14 + 48) = v25;
    *(v14 + 64) = v15;
    *(v14 + 80) = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v24[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v11 + 8))(v13, v10);
    v24[1] = v20;
    v24[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v24[0];
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v25);
  }

  sub_1E13E2E98(a1);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5 & 1;
  return v14;
}

uint64_t PersonalizationFeedbackRequest.init(id:description:options:hasDivider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 88) = 0;
  sub_1E138853C(a1, &v26);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v26);
  }

  sub_1E13E2E98(a1);
  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5 & 1;
  return v6;
}

uint64_t PersonalizationFeedbackRequest.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationFeedbackRequest.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PersonalizationFeedbackRequest.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v45[0] = *v3;
  v5 = sub_1E1AF39DC();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1E1AF380C();
  v11 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v46 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45[1] = v45 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v45 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v45 - v19;
  *(v3 + 88) = 0;
  v51 = a1;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  if (v22)
  {
    v52 = v21;
    v53 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v52 = v23;
    v53 = v25;
  }

  sub_1E1AF6F6C();
  v26 = *(v11 + 8);
  v27 = v57;
  v26(v20, v57);
  v28 = v55;
  *(v3 + 48) = v54;
  *(v3 + 64) = v28;
  *(v3 + 80) = v56;
  v29 = v51;
  sub_1E1AF381C();
  v30 = sub_1E1AF37CC();
  v32 = v31;
  v26(v17, v27);
  if (v32)
  {
    *(v3 + 16) = v30;
    *(v3 + 24) = v32;
    sub_1E1AF381C();
    v34 = v48;
    v33 = v49;
    v35 = *(v48 + 16);
    v45[0] = v26;
    v36 = v50;
    v35(v47, v50, v49);
    type metadata accessor for PersonalizationFeedbackRequestOption();
    sub_1E15326CC(&qword_1ECEB5248, v37, type metadata accessor for PersonalizationFeedbackRequestOption, &protocol conformance descriptor for PersonalizationFeedbackRequestOption);
    *(v3 + 32) = sub_1E1AF630C();
    v38 = v46;
    sub_1E1AF381C();
    v39 = sub_1E1AF370C();
    (*(v34 + 8))(v36, v33);
    v40 = v57;
    v41 = v45[0];
    (v45[0])(v29, v57);
    v41(v38, v40);
    *(v3 + 40) = v39 & 1;
  }

  else
  {
    v42 = sub_1E1AF5A7C();
    sub_1E15326CC(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v43 = 0x7470697263736564;
    v43[1] = 0xEB000000006E6F69;
    v43[2] = v45[0];
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x1E69AB690], v42);
    swift_willThrow();
    (*(v48 + 8))(v50, v49);
    v26(v29, v27);
    sub_1E134B88C(v3 + 48);

    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t PersonalizationFeedbackRequest.clickAction.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t PersonalizationFeedbackRequest.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

void *PersonalizationFeedbackRequest.deinit()
{

  sub_1E134B88C(v0 + 48);

  return v0;
}

uint64_t PersonalizationFeedbackRequest.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t PersonalizationFeedbackRequestOption.value.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PersonalizationFeedbackRequestOption.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationFeedbackRequestOption.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PersonalizationFeedbackRequestOption.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v37 = a2;
  v3 = v2;
  v35 = *v3;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v38 = a1;
  sub_1E1AF381C();
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v13, v5);
  if (v16)
  {
    *(v3 + 16) = v14;
    *(v3 + 24) = v16;

    sub_1E1AF381C();
    v18 = sub_1E1AF37CC();
    v20 = v19;
    v34 = v5;
    v35 = v17;
    v17(v10, v5);
    if (v20)
    {

      v14 = v18;
      v16 = v20;
    }

    v21 = v37;
    *(v3 + 32) = v14;
    *(v3 + 40) = v16;
    type metadata accessor for Action(0);
    v22 = v36;
    v23 = v38;
    sub_1E1AF381C();
    v24 = static Action.tryToMakeInstance(byDeserializing:using:)(v22, v21);
    v25 = sub_1E1AF39DC();
    (*(*(v25 - 8) + 8))(v21, v25);
    v27 = v34;
    v26 = v35;
    v35(v23, v34);
    v26(v22, v27);
    *(v3 + 48) = v24;
  }

  else
  {
    v28 = sub_1E1AF5A7C();
    sub_1E15326CC(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v29 = 0x656C746974;
    v30 = v35;
    v29[1] = 0xE500000000000000;
    v29[2] = v30;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x1E69AB690], v28);
    swift_willThrow();
    v31 = sub_1E1AF39DC();
    (*(*(v31 - 8) + 8))(v37, v31);
    v17(v38, v5);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void *PersonalizationFeedbackRequestOption.deinit()
{

  return v0;
}

uint64_t PersonalizationFeedbackRequestOption.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E15326CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1E1532768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  result = a4(a1, a2);
  if (!v5)
  {
    *a5 = v10;
  }

  return result;
}

uint64_t sub_1E1532870(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = (*(a6 + 32))(a5, a6);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = v6;
  *(v15 + 40) = v12;
  *(v15 + 48) = v13;
  *(v15 + 49) = a3;
  *(v15 + 50) = a2;
  *(v15 + 51) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1E15331A4;
  *(v16 + 24) = v15;
  v20[4] = sub_1E137AFA8;
  v20[5] = v16;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1E1551FBC;
  v20[3] = &block_descriptor_22;
  v17 = _Block_copy(v20);
  swift_unknownObjectRetain();
  sub_1E13E2150(v12, v13);

  dispatch_sync(v14, v17);

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E1532A2C(uint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v62 = a5;
  v63 = a6;
  v64 = a4;
  LODWORD(v65) = a3;
  v66 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5250, &qword_1E1B15598);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v54 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4708, &qword_1E1B0E070);
  v57 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v54 - v12;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v54 - v23);
  v25 = *(a8 + 40);
  v67 = a1;
  v68 = a7;
  v69 = a8;
  v58 = v25;
  v59 = a8 + 40;
  (v25)(a7, a8, v22);
  sub_1E15331C0(v20, v24);
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD000000000000038, 0x80000001E1B5C500);
  sub_1E1AEFE9C();
  v26 = sub_1E1AEFE7C();
  v28 = v27;
  (*(v14 + 8))(v16, v13);
  MEMORY[0x1E68FECA0](v26, v28);

  v29 = v70;
  v30 = v71;
  v31 = v24 + *(v18 + 60);

  *v31 = v29;
  *(v31 + 8) = v30;
  LOBYTE(v31) = v65;
  sub_1E1A8E264();
  sub_1E1308058(v20, &qword_1ECEB24A0, &qword_1E1B48170);
  v32 = v31 >> 4;
  if (v32 <= 3)
  {
LABEL_18:
    v40 = v56;
    v41 = v57;
    if (v32 > 1)
    {
LABEL_33:
      v34 = v68;
      v33 = v69;
      if (v32 == 2)
      {
        sub_1E1A8CFF0(v66);
      }

      else
      {
        sub_1E1A8D464(v66);
      }
    }

    else
    {
      v35 = v66;
      if (!v32)
      {
        v70 = MEMORY[0x1E69E7CC0];
        v36 = v66 & 0xFFFFFFFFFFFFFF8;
        if (v66 >> 62)
        {
          goto LABEL_49;
        }

        v42 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
LABEL_50:
          v47 = MEMORY[0x1E69E7CC0];
LABEL_51:
          sub_1E1A8C94C(v47);

          v50 = 0;
          goto LABEL_55;
        }

LABEL_22:
        v65 = v24;
        v57 = v20;
        v43 = 0;
        v20 = (v35 & 0xC000000000000001);
        v24 = &OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden;
        while (1)
        {
          if (v20)
          {
            v44 = MEMORY[0x1E68FFD80](v43, v35);
            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          else
          {
            if (v43 >= *(v36 + 16))
            {
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              v42 = sub_1E1AF71CC();
              if (!v42)
              {
                goto LABEL_50;
              }

              goto LABEL_22;
            }

            v44 = *(v35 + 8 * v43 + 32);

            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_32;
            }
          }

          if (*(v44 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
          {
          }

          else
          {
            sub_1E1AF70BC();
            sub_1E1AF70FC();
            sub_1E1AF710C();
            sub_1E1AF70CC();
          }

          ++v43;
          if (v45 == v42)
          {
            v47 = v70;
            v20 = v57;
            v24 = v65;
            goto LABEL_51;
          }
        }
      }

      v46 = sub_1E17668BC(v66);
      sub_1E1A8ED6C(v46);
      v34 = v68;
      v33 = v69;
      if (v31)
      {
      }

      else
      {
        v49 = v55;
        (*(v41 + 2))(v40, v24, v55);
        sub_1E1AF1F1C();

        (*(v41 + 5))(v24, v40, v49);
      }
    }

LABEL_46:
    v50 = 0;
    goto LABEL_56;
  }

  if ((v31 >> 4) <= 5u)
  {
    v34 = v68;
    v33 = v69;
    if (v32 == 4)
    {
      sub_1E1A8D43C(v66);
    }

    else
    {
      sub_1E1A8D4A0(v66);
    }

    goto LABEL_46;
  }

  v34 = v68;
  v33 = v69;
  v35 = v66;
  if (v32 == 6)
  {
    sub_1E1A8D6A0(v66);
    goto LABEL_46;
  }

  if (v32 != 7)
  {
    sub_1E1A8C94C(MEMORY[0x1E69E7CC0]);
    goto LABEL_46;
  }

  v70 = MEMORY[0x1E69E7CC0];
  v36 = v66 & 0xFFFFFFFFFFFFFF8;
  if (v66 >> 62)
  {
    v37 = sub_1E1AF71CC();
    if (v37)
    {
LABEL_7:
      v65 = v24;
      v57 = v20;
      v31 = 0;
      v20 = (v35 & 0xC000000000000001);
      v24 = &OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden;
      do
      {
        if (v20)
        {
          v38 = MEMORY[0x1E68FFD80](v31, v35);
          v39 = (v31 + 1);
          if (__OFADD__(v31, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v31 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v38 = *(v35 + 8 * v31 + 32);

          v39 = (v31 + 1);
          if (__OFADD__(v31, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        if (*(v38 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
        {
        }

        else
        {
          sub_1E1AF70BC();
          sub_1E1AF70FC();
          sub_1E1AF710C();
          sub_1E1AF70CC();
        }

        ++v31;
      }

      while (v39 != v37);
      v48 = v70;
      v20 = v57;
      v24 = v65;
      goto LABEL_54;
    }
  }

  else
  {
    v37 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_7;
    }
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_54:
  sub_1E1A8C94C(v48);

  v50 = 1;
LABEL_55:
  v34 = v68;
  v33 = v69;
LABEL_56:
  sub_1E15331C0(v24, v20);
  (*(v33 + 48))(v20, v34, v33);
  if (v64)
  {
    (*(v33 + 64))(v34, v33);
    v51 = v61;
    v58(v34, v33);
    v52 = v60;
    *(v51 + *(v60 + 36)) = v62 & 1;
    *(v51 + *(v52 + 40)) = v50;
    *(v51 + *(v52 + 44)) = v63 & 1;
    sub_1E1AF5BCC();

    sub_1E1308058(v51, &qword_1ECEB5250, &qword_1E1B15598);
  }

  return sub_1E1308058(v24, &qword_1ECEB24A0, &qword_1E1B48170);
}

uint64_t sub_1E15331C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0, &qword_1E1B48170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchAdsCollectionElementsObserver.__allocating_init(presenter:advertControllerProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  *(v3 + 24) = a2;

  return v3;
}

uint64_t SearchAdsCollectionElementsObserver.init(presenter:advertControllerProvider:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E1533948(a1, a2);

  return v2;
}

uint64_t SearchAdsCollectionElementsObserver.willDisplayCell(_:in:collectionView:asPartOf:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4960, &qword_1E1B155A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    return sub_1E1308058(v19, &qword_1ECEB4968, &qword_1E1B0F870);
  }

  sub_1E1361B28(v19, v24);
  v8 = v25;
  v9 = v26;
  __swift_project_boxed_opaque_existential_1Tm(v24, v25);
  if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v8, v9))
  {
    v10 = AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a4);
    if (v10)
    {
      v11 = v10;
      swift_getObjectType();
      v12 = swift_conformsToProtocol2();
      if (v12 && a1)
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 16);
        v16 = a1;

        v15(sub_1E1533A04, v11, ObjectType, v13);
      }

      if (swift_weakLoadStrong())
      {
        sub_1E1523404(&v21);

        if (*(&v22 + 1))
        {
          sub_1E1308058(&v21, &unk_1ECEB7230, qword_1E1B103B0);
LABEL_17:
          sub_1E1471C0C(a1, a3);

          return __swift_destroy_boxed_opaque_existential_1(v24);
        }
      }

      else
      {
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
      }

      sub_1E1308058(&v21, &unk_1ECEB7230, qword_1E1B103B0);
      if (swift_weakLoadStrong())
      {
        *(&v22 + 1) = type metadata accessor for AdvertRotationController(0);
        v23 = &protocol witness table for AdvertRotationController;
        *&v21 = v11;

        sub_1E1523478(&v21);
      }

      if (qword_1EE1F3430 != -1)
      {
        swift_once();
      }

      v18 = off_1EE1F3438;
      *(&v22 + 1) = type metadata accessor for AdvertRotationController(0);
      v23 = &protocol witness table for AdvertRotationController;
      *&v21 = v11;
      swift_beginAccess();

      sub_1E1533994(&v21, v18 + 96);
      swift_endAccess();
      goto LABEL_17;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void sub_1E15335D4(uint64_t a1)
{
  if (qword_1EE1D27B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE215468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (*(a1 + 112) == 1)
  {
    v3 = a1 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_strategy;
    swift_beginAccess();
    if ((*(v3 + 1) & 1) == 0)
    {
      *(v3 + 1) = 1;
    }
  }
}

uint64_t SearchAdsCollectionElementsObserver.deinit()
{
  swift_weakDestroy();

  return v0;
}

uint64_t SearchAdsCollectionElementsObserver.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1533804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4960, &qword_1E1B155A0);
  if (swift_dynamicCast())
  {
    sub_1E1361B28(v9, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v6, v7))
    {
      if (AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a3))
      {
        sub_1E14741C8(a1);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    return sub_1E1308058(v9, &qword_1ECEB4968, &qword_1E1B0F870);
  }
}

uint64_t sub_1E1533948(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  swift_weakAssign();
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1E1533994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7230, qword_1E1B103B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1533A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4960, &qword_1E1B155A0);
  if (swift_dynamicCast())
  {
    sub_1E1361B28(v12, v14);
    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v6, v7) && AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a3))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        sub_1E1452D6C();
        v10 = sub_1E1AF6D0C();

        if (v10)
        {
          sub_1E1474924(a1);
        }
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    return sub_1E1308058(v12, &qword_1ECEB4968, &qword_1E1B0F870);
  }
}

uint64_t sub_1E1533B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4960, &qword_1E1B155A0);
  if (swift_dynamicCast())
  {
    sub_1E1361B28(v15, v17);
    v5 = v18;
    v6 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v5, v6))
    {
      v7 = AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a3);
      if (v7)
      {
        v8 = v7;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          sub_1E1452D6C();
          v11 = sub_1E1AF6D0C();

          if (v11)
          {
            if (qword_1EE1D27B8 != -1)
            {
              swift_once();
            }

            v12 = sub_1E1AF591C();
            __swift_project_value_buffer(v12, qword_1EE215468);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
            sub_1E1AF38EC();
            *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
            sub_1E1AF38CC();
            sub_1E1AF382C();
            sub_1E1AF548C();

            if (*(v8 + 112) == 1)
            {
              v13 = v8 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_strategy;
              swift_beginAccess();
              if ((*(v13 + 1) & 1) == 0)
              {
                *(v13 + 1) = 1;
              }
            }
          }
        }
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    return sub_1E1308058(v15, &qword_1ECEB4968, &qword_1E1B0F870);
  }
}

void *SearchImpressionsCollectionElementsObserver.__allocating_init(componentTypeMappingProvider:impressionsCalculator:advertRotationControllerProvider:objectGraph:collectionView:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = a5;
  v19 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5258, &qword_1E1B15630);
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = v16 - v10;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[8] = a3;
  v12[9] = a4;
  v16[2] = a4;
  swift_unknownObjectWeakAssign();
  sub_1E1300B24(a1, (v12 + 2));
  v16[3] = a2;
  v12[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB5260, &qword_1E1B15638);
  sub_1E15344E8();

  sub_1E1AF3CDC();
  sub_1E1AF3CEC();
  __swift_destroy_boxed_opaque_existential_1(v20);
  v13 = *(v9 + 8);
  v16[1] = v9 + 8;
  v14 = v18;
  v13(v11, v18);
  sub_1E1AF3CDC();
  sub_1E1AF3CEC();

  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  v13(v11, v14);

  return v12;
}

uint64_t *SearchImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:advertRotationControllerProvider:objectGraph:collectionView:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v18 = a5;
  v19 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5258, &qword_1E1B15630);
  v20 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v12 = v16 - v11;
  swift_unknownObjectWeakInit();
  v6[8] = a3;
  v6[9] = a4;
  v16[1] = a4;
  swift_unknownObjectWeakAssign();
  sub_1E1300B24(a1, (v6 + 2));
  v16[2] = a2;
  v6[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB5260, &qword_1E1B15638);
  sub_1E15344E8();

  sub_1E1AF3CDC();
  sub_1E1AF3CEC();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v13 = *(v20 + 8);
  v20 += 8;
  v14 = v17;
  v13(v12, v17);
  sub_1E1AF3CDC();
  sub_1E1AF3CEC();

  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v13(v12, v14);

  return v6;
}

void sub_1E1534424(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v4 = type metadata accessor for AdvertRotationControllerProvider.AdvertRotation(0);
    sub_1E1737FC4(*(a1 + *(v4 + 20)), a1, *(a1 + *(v4 + 32)));
  }
}

unint64_t sub_1E15344E8()
{
  result = qword_1EE1E3558;
  if (!qword_1EE1E3558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECEB5260, &qword_1E1B15638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3558);
  }

  return result;
}

void sub_1E153458C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_1E1AF46DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v11 = *(a1 + *(type metadata accessor for AdvertRotationControllerProvider.AdvertRotation(0) + 20));
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = v26;
    }

    else
    {
      v25 = v1;
      type metadata accessor for ItemLayoutContext(0);
      swift_getKeyPath(byte_1E1B156B0);
      v14 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
      sub_1E1AF3DAC();

      if (v27[0])
      {
        sub_1E1739C58(v14, a1, v26);
LABEL_18:

        return;
      }

      v15 = *(v25 + 56);
      if (!v15)
      {
        if (qword_1EE1D2768 != -1)
        {
          swift_once();
        }

        v17 = sub_1E1AF591C();
        __swift_project_value_buffer(v17, qword_1EE216140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        v27[3] = MEMORY[0x1E69E6158];
        v27[0] = 0xD00000000000005ELL;
        v27[1] = 0x80000001E1B64D10;
        sub_1E1AF38BC();
        sub_1E1308058(v27, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1AF54BC();

        goto LABEL_18;
      }

      v24 = v14;
      swift_getKeyPath("pr;\v");

      sub_1E1AF3DAC();

      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_1E1308058(v5, &unk_1ECEB1770, &unk_1E1AFED20);
        v16 = v24;
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        v16 = v24;
        v18 = [v24 frame];
        v19 = MEMORY[0x1EEE9AC00](v18);
        *(&v24 - 8) = v9;
        *(&v24 - 7) = v15;
        *(&v24 - 6) = v19;
        *(&v24 - 5) = v20;
        *(&v24 - 4) = v21;
        *(&v24 - 3) = v22;
        *(&v24 - 16) = 1;
        sub_1E1810798(sub_1E1534CB4, (&v24 - 10), v23);
        (*(v7 + 8))(v9, v6);
      }

      sub_1E17391C0(v16, a1, v15);
    }
  }
}
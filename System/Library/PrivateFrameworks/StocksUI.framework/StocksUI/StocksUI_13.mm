id sub_2205C6584(uint64_t *a1, void *a2, void **a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v10 = v4;
    sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
    if (*a2 != -1)
    {
      swift_once();
    }

    v11 = *a3;
    v12 = sub_220891B9C();
    v13 = *(v4 + v5);
    *(v10 + v5) = v12;
    v7 = v12;

    v6 = 0;
  }

  v14 = v6;
  return v7;
}

uint64_t type metadata accessor for StockFeedViewerViewController(uint64_t a1)
{
  result = qword_281285DA8;
  if (!qword_281285DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205C6864(uint64_t a1)
{
  sub_2205CCC80(319, &qword_28128F990, type metadata accessor for StockFeedViewerPage, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2205C69C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for AttributionSource(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220885ACC();
  v10 = *(v9 - 8);
  *&v12 = MEMORY[0x28223BE20](v9, v11).n128_u64[0];
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39.receiver = v3;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, sel_viewDidLoad, v12);
  v15 = *&v3[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_blueprintPageViewController];
  [v3 addChildViewController_];
  v16 = [v3 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v15 view];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v19 = v18;
  [v17 addSubview_];

  [v15 didMoveToParentViewController_];
  if (sub_22088F0DC())
  {
    v21 = [v3 navigationController];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 navigationBar];

      [v23 ts:0.0 setTitleOpacity:?];
    }

    v24 = [v3 navigationItem];
    [v24 setStyle_];

    sub_2205C6DB0(v25);
    sub_2205C72D0(v26);
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_appConfigurationManager], *&v3[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_appConfigurationManager + 24]);
    sub_22088641C();
    LOBYTE(v24) = sub_22088591C();
    (*(v10 + 8))(v14, v9);
    if (v24)
    {
      v27 = *&v3[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_quoteAttributionProvider + 24];
      v28 = *&v3[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_quoteAttributionProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_quoteAttributionProvider], v27);
      AttributionProviderType.source.getter(v27, v28);
      v29 = *&v8[*(v5 + 24)];
      v30 = v29;
      sub_2205CC8F0(v8, type metadata accessor for AttributionSource);
      if (v29)
      {
        sub_22044D56C(0, &qword_28127E450, 0x277D750C8);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = sub_2208920BC();
        v32 = &v3[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_cardToolbarViewModel];
        swift_beginAccess();
        v33 = *v32;
        v34 = *(v32 + 1);
        v35 = *(v32 + 2);
        v36 = *(v32 + 3);
        *v32 = v29;
        *(v32 + 1) = v31;
        *(v32 + 2) = 0;
        *(v32 + 3) = 0;
        v20 = sub_2205CD028(v33, v34, v35, v36);
      }
    }
  }

  v37 = [v3 traitCollection];
  sub_2205C7704(v37);
}

void sub_2205C6DB0(uint64_t a1)
{
  if (sub_22088F0DC())
  {
    v2 = OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_watchStockBarButtonItem;
    swift_beginAccess();
    v3 = *&v1[v2];
    if (v3)
    {
      v4 = v3;
      v32 = sub_220891CBC();
      sub_22048BC00();
      v5 = swift_allocObject();
      v31 = xmmword_22089B120;
      *(v5 + 16) = xmmword_22089B120;
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_22089B120;
      *(v6 + 32) = sub_2205C6584(&OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___shareBarButtonItem, &qword_28127F098, &qword_2812B6928, sub_22058C054);
      *(v6 + 40) = sub_2205C6584(&OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___moreOptionsBarButtonItem, &qword_28127F0A8, &qword_2812B6938, sub_22058C220);
      v7 = objc_allocWithZone(MEMORY[0x277D751F0]);
      sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
      v8 = sub_2208916DC();

      v9 = [v7 &selRef_cancel + 4];

      v10 = v32;
      *(v5 + 32) = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_22089B130;
      *(v11 + 32) = v4;
      v12 = objc_allocWithZone(MEMORY[0x277D751F0]);
      v13 = v4;
      v14 = sub_2208916DC();

      v15 = [v12 &selRef_cancel + 4];

      *(v5 + 40) = v15;
      sub_22044D56C(0, &qword_28127E6C0, 0x277D751F0);
      v16 = sub_2208916DC();

      [v32 setTrailingItemGroups_];
    }

    else
    {
      v10 = sub_220891CBC();
      sub_22048BC00();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22089B130;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_22089B120;
      *(v18 + 32) = sub_2205C6584(&OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___shareBarButtonItem, &qword_28127F098, &qword_2812B6928, sub_22058C054);
      *(v18 + 40) = sub_2205C6584(&OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___moreOptionsBarButtonItem, &qword_28127F0A8, &qword_2812B6938, sub_22058C220);
      v19 = objc_allocWithZone(MEMORY[0x277D751F0]);
      sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
      v20 = sub_2208916DC();

      v21 = [v19 initWithBarButtonItems:v20 representativeItem:0];

      *(v17 + 32) = v21;
      sub_22044D56C(0, &qword_28127E6C0, 0x277D751F0);
      v16 = sub_2208916DC();

      [v10 setTrailingItemGroups_];
    }

    v22 = [v1 traitCollection];
    v23 = [v22 horizontalSizeClass];

    v24 = sub_220891CBC();
    if (v23 == 1)
    {
      sub_22048BC00();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_22089B130;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_22089B130;
      *(v26 + 32) = sub_2205C6288();
      v27 = objc_allocWithZone(MEMORY[0x277D751F0]);
      sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
      v28 = sub_2208916DC();

      v29 = [v27 initWithBarButtonItems:v28 representativeItem:0];

      *(v25 + 32) = v29;
      sub_22044D56C(0, &qword_28127E6C0, 0x277D751F0);
      v30 = sub_2208916DC();
    }

    else
    {
      sub_22044D56C(0, &qword_28127E6C0, 0x277D751F0);
      v30 = sub_2208916DC();
    }

    [v24 setLeadingItemGroups_];
  }
}

void sub_2205C72D0(uint64_t a1)
{
  v2 = v1;
  if (sub_22088F0DC() & 1) == 0 || (v3 = [v1 traitCollection], v4 = objc_msgSend(v3, sel_horizontalSizeClass), v3, v4 != 1) || (sub_220891C8C())
  {
    v5 = sub_2208582A4();
    [v5 removeFromSuperview];

    v2[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_isYahooToolbarVisible] = 0;

    sub_2205C7F0C();
    return;
  }

  v6 = sub_2208582A4();
  v35 = [v6 superview];

  if (!v35)
  {
    v7 = [v2 view];
    if (v7)
    {
      v8 = v7;
      v9 = sub_2208582A4();
      [v8 addSubview_];

      v10 = sub_2208582A4();
      [v10 setTranslatesAutoresizingMaskIntoConstraints_];

      sub_22048BC00();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_22089E710;
      v12 = sub_2208582A4();
      v13 = [v12 leadingAnchor];

      v14 = [v2 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 leadingAnchor];

        v17 = [v13 constraintEqualToAnchor_];
        *(v11 + 32) = v17;
        v18 = sub_2208582A4();
        v19 = [v18 trailingAnchor];

        v20 = [v2 view];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 trailingAnchor];

          v23 = [v19 constraintEqualToAnchor_];
          *(v11 + 40) = v23;
          v24 = sub_2208582A4();
          v25 = [v24 bottomAnchor];

          v26 = [v2 view];
          if (v26)
          {
            v27 = v26;
            v28 = objc_opt_self();
            v29 = [v27 bottomAnchor];

            v30 = [v25 constraintEqualToAnchor_];
            *(v11 + 48) = v30;
            v31 = sub_2208582A4();
            v32 = [v31 heightAnchor];

            v33 = [v32 constraintEqualToConstant_];
            *(v11 + 56) = v33;
            sub_22044D56C(0, &qword_28127E790, 0x277CCAAD0);
            v34 = sub_2208916DC();

            [v28 activateConstraints_];

            v2[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_isYahooToolbarVisible] = 1;
            return;
          }

          goto LABEL_19;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

id sub_2205C7704(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_styler;
  swift_beginAccess();
  sub_22046DA2C(&v2[v4], v27);
  v5 = v28;
  v6 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v25 = v5;
  v26 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v24);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(&v2[v4]);
  sub_220457328(&v24, &v2[v4]);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_22046DA2C(&v2[v4], v27);
  v9 = __swift_project_boxed_opaque_existential_1(v27, v28);
  result = [v2 view];
  if (result)
  {
    v11 = result;
    v12 = *(*v9 + 40);
    v13 = *(*v9 + 48);
    __swift_project_boxed_opaque_existential_1((*v9 + 16), v12);
    (*(v13 + 72))(&v24, v12, v13);
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    v16 = (*(v15 + 80))(v14, v15);
    [v11 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(&v24);
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_22046DA2C(&v2[v4], v27);
    v17 = __swift_project_boxed_opaque_existential_1(v27, v28);
    result = [*&v2[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_blueprintPageViewController] view];
    if (result)
    {
      v18 = result;
      v19 = *(*v17 + 40);
      v20 = *(*v17 + 48);
      __swift_project_boxed_opaque_existential_1((*v17 + 16), v19);
      (*(v20 + 72))(&v24, v19, v20);
      v21 = v25;
      v22 = v26;
      __swift_project_boxed_opaque_existential_1(&v24, v25);
      v23 = (*(v22 + 80))(v21, v22);
      [v18 setBackgroundColor_];

      __swift_destroy_boxed_opaque_existential_1(&v24);
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2205C79F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v98.receiver = v2;
  v98.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v98, sel_viewWillLayoutSubviews);
  if ((sub_22088F0DC() & 1) == 0)
  {
    v37 = [*&v2[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_blueprintPageViewController] view];
    if (!v37)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v38 = v37;
    v39 = [v3 view];
    if (!v39)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v40 = v39;
    [v39 bounds];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    [v38 setFrame_];
    goto LABEL_25;
  }

  v4 = [v2 view];
  if (!v4)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v5 semanticContentAttribute];

  v8 = [v6 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v9 = [*&v3[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_blueprintPageViewController] view];
  v10 = v9;
  if (v8 == 1)
  {
    if (!v9)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v11 = [v3 view];
    if (!v11)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v99.origin.x = v14;
    v99.origin.y = v16;
    v99.size.width = v18;
    v99.size.height = v20;
    Width = CGRectGetWidth(v99);
    v22 = [v3 view];
    if (!v22)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v23 = v22;
    [v22 safeAreaInsets];
    v25 = v24;

    v26 = [v3 view];
    if (!v26)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v27 = v26;
    v28 = Width - v25;
    [v26 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v100.origin.x = v30;
    v100.origin.y = v32;
    v100.size.width = v34;
    v100.size.height = v36;
    [v10 setFrame_];
    goto LABEL_18;
  }

  if (!v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v49 = [v3 view];
  if (!v49)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v50 = v49;
  [v49 safeAreaInsets];
  v52 = v51;

  v53 = [v3 view];
  if (!v53)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v54 = v53;
  [v53 bounds];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v101.origin.x = v56;
  v101.origin.y = v58;
  v101.size.width = v60;
  v101.size.height = v62;
  v63 = CGRectGetWidth(v101);
  v64 = [v3 view];
  if (!v64)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v65 = v64;
  [v64 safeAreaInsets];
  v67 = v66;

  v68 = [v3 view];
  if (v68)
  {
    v69 = v68;
    v70 = v63 - v67;
    [v68 bounds];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v102.origin.x = v72;
    v102.origin.y = v74;
    v102.size.width = v76;
    v102.size.height = v78;
    [v10 setFrame_];
LABEL_18:

    if (sub_22088F0DC())
    {
      v79 = &v3[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_cardToolbarViewModel];
      swift_beginAccess();
      v80 = *v79;
      if (*v79)
      {
        v82 = *(v79 + 2);
        v81 = *(v79 + 3);
        v83 = *(v79 + 1);

        v84 = v80;
        v85 = v83;
        if (sub_220891C8C())
        {
        }

        else
        {
          v86 = [v3 traitCollection];
          sub_220858320(0.0, 20.0, 0.0, 20.0, v84, v85, v82, v81, v86, 0, 1);

          v85 = v84;
          v84 = v86;
        }
      }
    }

    sub_2205C7F0C();
LABEL_25:
    v87 = [v3 view];
    if (v87)
    {
      v88 = v87;
      [v87 safeAreaInsets];
      v90 = v89;
      v92 = v91;
      v94 = v93;
      v96 = v95;

      v97 = &v3[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_lastSafeAreaInsets];
      *v97 = v90;
      *(v97 + 1) = v92;
      *(v97 + 2) = v94;
      *(v97 + 3) = v96;
      v97[32] = 0;
      return;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_39:
  __break(1u);
}

id sub_2205C7F0C()
{
  if (v0[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_isYahooToolbarVisible] != 1)
  {
    v5 = *&v0[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_blueprintPageViewController];
    result = [v5 additionalSafeAreaInsets];
    if (v7 == 0.0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  [result safeAreaInsets];
  v4 = v3;

  v5 = *&v0[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_blueprintPageViewController];
  result = [v5 additionalSafeAreaInsets];
  if (vabdd_f64(v6, 66.0 - v4) > 0.5)
  {
LABEL_7:
    [v5 additionalSafeAreaInsets];

    return [v5 setAdditionalSafeAreaInsets_];
  }

  return result;
}

id sub_2205C806C(char a1, uint64_t a2)
{
  v3 = v2;
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewWillAppear_, a1 & 1);
  if (sub_22088F0DC())
  {
    if (sub_22088F0DC())
    {
      v5 = sub_220891C8C();
      v6 = [v3 navigationController];
      if (v6)
      {
        v7 = v5 & 1;
        v8 = v6;
        [v6 setNavigationBarHidden:v7 animated:0];
      }
    }

    result = [v3 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = sub_2208582A4();
    [v10 bringSubviewToFront_];
  }

  swift_getObjectType();
  sub_22088BBDC();
  if (sub_22088BADC() && (sub_22044D56C(0, &qword_28127E800, 0x277D75D28), sub_2204446D4(0, qword_281287DB0, &protocol descriptor for StockFeedViewerPagedContent), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v15 + 1))
    {
      v12 = __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
      sub_220646B90(v12, v13);
      return __swift_destroy_boxed_opaque_existential_1(&v14);
    }
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  return sub_2205CCFB0(&v14, &qword_27CF57520, qword_281287DB0, &protocol descriptor for StockFeedViewerPagedContent);
}

uint64_t sub_2205C836C(char a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  if (sub_22088BADC() && (sub_22044D56C(0, &qword_28127E800, 0x277D75D28), sub_2204446D4(0, qword_281287DB0, &protocol descriptor for StockFeedViewerPagedContent), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v7 + 1))
    {
      v4 = *__swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
      swift_getObjectType();
      sub_22088BBCC();
      *(v4 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_toolbarTitleIsHidden) = 1;
      sub_22088B46C();
      sub_220641E18();
      return __swift_destroy_boxed_opaque_existential_1(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_2205CCFB0(&v6, &qword_27CF57520, qword_281287DB0, &protocol descriptor for StockFeedViewerPagedContent);
}

void sub_2205C8514(uint64_t a1, uint64_t a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, a1);
  v4 = [v2 traitCollection];
  sub_2205C7704(v4);

  v5 = sub_22088F0DC();
  if (v5)
  {
    sub_2205C6DB0(v5);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v6 = [v2 traitCollection];
    sub_22088D31C();
    swift_unknownObjectRelease();

    sub_2205C72D0(v7);
  }
}

void sub_2205C8674(uint64_t a1, uint64_t a2)
{
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_didMoveToParentViewController_, a1);
  v4 = [*&v2[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_blueprintPageViewController] childViewControllers];
  sub_22044D56C(0, &qword_28127E800, 0x277D75D28);
  v5 = sub_2208916EC();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v6 = sub_2208926AC();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D8A700](i, v5);
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
      }

      v10 = v9;
      v14 = v9;
      sub_2204446D4(0, qword_28128AE58, &protocol descriptor for StockFeedViewerPageable);
      v11 = v10;
      if (swift_dynamicCast())
      {
        sub_220457328(v12, v15);
        v8 = [*__swift_project_boxed_opaque_existential_1(v15 v15[3])];
        sub_22088A97C();

        __swift_destroy_boxed_opaque_existential_1(v15);
      }

      else
      {

        v13 = 0;
        memset(v12, 0, sizeof(v12));
        sub_2205CCFB0(v12, &qword_28128AE50, qword_28128AE58, &protocol descriptor for StockFeedViewerPageable);
      }
    }

    goto LABEL_13;
  }

  __break(1u);
}

void sub_2205C88E4(uint64_t a1, uint64_t a2)
{
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewSafeAreaInsetsDidChange);
  v3 = &v2[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_lastSafeAreaInsets];
  if ((v2[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_lastSafeAreaInsets + 32] & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[1];
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 safeAreaInsets];
      v9 = v8;

      if (v5 != v9)
      {
        goto LABEL_6;
      }

      v10 = [v2 view];
      if (v10)
      {
        v11 = v10;
        [v10 safeAreaInsets];
        v13 = v12;

        if (v4 == v13)
        {
          return;
        }

LABEL_6:
        v14 = [v2 view];
        if (v14)
        {
          v15 = v14;
          [v14 setNeedsLayout];

          return;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2205C8A48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  swift_getObjectType();
  v9 = type metadata accessor for StockFeedPage(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StockFeedViewerPage(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205CCC80(0, &qword_28128F990, type metadata accessor for StockFeedViewerPage, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = v41 - v20;
  sub_2205CC630(a2, v41 - v20);
  (*(v14 + 56))(v21, 0, 1, v13);
  v22 = OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_currentPage;
  swift_beginAccess();
  sub_2205CC694(v21, v5 + v22);
  swift_endAccess();
  sub_2205CCAC4(&qword_281285DF0, type metadata accessor for StockFeedViewerViewController, &unk_22089E8D4);
  sub_22088CC4C();
  sub_2205CCAC4(&qword_281285DE8, type metadata accessor for StockFeedViewerViewController, &unk_22089E8FC);
  sub_22088D0BC();
  sub_2205CCAC4(&qword_281285DD0, type metadata accessor for StockFeedViewerViewController, &unk_22089E8A4);
  sub_22088A90C();
  sub_2205CCAC4(&qword_281285DE0, type metadata accessor for StockFeedViewerViewController, &unk_22089E888);
  sub_22088D93C();
  if (sub_22088F0DC())
  {
    sub_2205C90AC(a2, a3);
    sub_2205C9E94(a2);
    sub_2205CC630(a2, v17);
    sub_2205CCB9C(v17, v12, type metadata accessor for StockFeedPage);
    v23 = off_28341B4A0;
    type metadata accessor for StockFeedViewerInteractor();
    v23(v12);
    sub_2205CC8F0(v12, type metadata accessor for StockFeedPage);
  }

  if (a4 && (*&v41[0] = a4, sub_22044D56C(0, &qword_28127E800, 0x277D75D28), sub_2204446D4(0, qword_281287DB0, &protocol descriptor for StockFeedViewerPagedContent), v24 = a4, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v45 + 1))
    {
      v25 = *__swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
      swift_getObjectType();
      sub_22088BBCC();
      *(v25 + OBJC_IVAR____TtC8StocksUI23StockFeedViewController_toolbarTitleIsHidden) = 1;
      sub_22088B46C();
      sub_220641E18();
      __swift_destroy_boxed_opaque_existential_1(&v44);
      goto LABEL_9;
    }
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
  }

  sub_2205CCFB0(&v44, &qword_27CF57520, qword_281287DB0, &protocol descriptor for StockFeedViewerPagedContent);
LABEL_9:
  v43 = a3;
  sub_22044D56C(0, &qword_28127E800, 0x277D75D28);
  sub_2204446D4(0, qword_281287DB0, &protocol descriptor for StockFeedViewerPagedContent);
  a3;
  if (swift_dynamicCast())
  {
    sub_220457328(v41, &v44);
    v26 = *(&v45 + 1);
    v27 = v46;
    __swift_mutable_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    v28 = *(v27 + 32);
    v29 = swift_unknownObjectRetain();
    v28(v29, &off_283414EA8, v26, v27);
    v30 = __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    sub_220646B90(v30, v31);
    swift_unknownObjectRetain();
    v32 = sub_2208582A4();
    __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    v33 = v12;
    v34 = v17;
    v35 = a2;
    v36 = off_2834181D0;
    v37 = type metadata accessor for StockFeedViewController(0);
    v38 = v36(v37);
    a2 = v35;
    v17 = v34;
    v12 = v33;
    v39 = v38;
    sub_2207D9E7C(v32, v38);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  else
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_2205CCFB0(v41, &qword_27CF57520, qword_281287DB0, &protocol descriptor for StockFeedViewerPagedContent);
  }

  result = sub_220891C8C();
  if ((result & 1) == 0)
  {
    sub_2205CC630(a2, v17);
    sub_2205CCB9C(v17, v12, type metadata accessor for StockFeedPage);
    sub_2206AA8E0(v12);
    return sub_2205CC8F0(v12, type metadata accessor for StockFeedPage);
  }

  return result;
}

void sub_2205C90AC(uint64_t a1, void *a2)
{
  v3 = v2;
  v106 = a2;
  v5 = sub_22088685C();
  v99 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v98 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2205CCC80(0, &qword_281297BF8, sub_2205CC950, MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v96 = v85 - v12;
  sub_2205CC9BC(0, v11);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v95 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StockFeedPage(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v97 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StockFeedViewerPage(0);
  v104 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v105 = v21;
  v22 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205CCC80(0, &qword_281299060, MEMORY[0x277D69810], v8);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v92 = v85 - v25;
  v26 = sub_22088CA0C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205CC950(0);
  v103 = v31;
  v94 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v32);
  v110 = v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205CCA4C(0, &qword_281297C10, &qword_2812976C0, MEMORY[0x277D6E368], sub_2205CCB0C);
  v102 = v34;
  v93 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v35);
  v109 = v85 - v36;
  sub_2205CCA4C(0, &qword_281297BF0, &qword_28127E528, 0x277D755B8, sub_22044D56C);
  v101 = v37;
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v39);
  v41 = v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44 = MEMORY[0x28223BE20](v42, v43).n128_u64[0];
  v108 = v85 - v45;
  v111 = v3;
  v46 = [v3 traitCollection];
  v47 = [v46 horizontalSizeClass];

  if (v47 != 1)
  {
    v100 = v22;
    v91 = v5;
    v107 = a1;
    LOWORD(v112) = 1;
    v113 = 0;
    sub_22044D56C(0, &qword_28127E528, 0x277D755B8);
    sub_2204654EC();
    sub_22088B8EC();
    LOWORD(v112) = 1;
    v113 = 0;
    sub_2205CCB0C(0, &qword_2812976C0, MEMORY[0x277D6E368]);
    sub_22088B8EC();
    LOWORD(v112) = 1;
    v113 = 0;
    type metadata accessor for Style(0);
    sub_22088B8EC();
    v48 = v111;
    v49 = *&v111[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_commandCenter];
    v89 = *&v111[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_commandCenter + 8];
    (*(v27 + 104))(v30, *MEMORY[0x277D6E0E8], v26);
    v50 = *(v48 + OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_tracker);
    v114 = sub_22088731C();
    v115 = sub_2205CCAC4(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v112 = v50;
    v116 = 0u;
    v117 = 0u;
    v118 = 1;
    sub_22088C4DC();
    swift_allocObject();
    v90 = v49;
    swift_unknownObjectRetain();

    v85[3] = sub_22088C4BC();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    v85[1] = qword_2812B6C00;
    v51 = v100;
    sub_2205CC630(v107, v100);
    v87 = type metadata accessor for StockFeedPage;
    v52 = v97;
    sub_2205CCB9C(v51, v97, type metadata accessor for StockFeedPage);
    v53 = v99;
    v86 = *(v99 + 32);
    v54 = v92;
    v55 = v91;
    v86(v92, v52, v91);
    (*(v53 + 56))(v54, 0, 1, v55);
    v88 = v38;
    v56 = *(v38 + 16);
    v85[2] = v41;
    v56(v41, v108, v101);
    v57 = objc_opt_self();

    v85[0] = [v57 unspecifiedConfiguration];
    v58 = v93;
    v59 = v95;
    v60 = v102;
    (*(v93 + 16))(v95, v109, v102);
    (*(v58 + 56))(v59, 0, 1, v60);
    v61 = v94;
    v62 = v96;
    v63 = v103;
    (*(v94 + 16))(v96, v110, v103);
    (*(v61 + 56))(v62, 0, 1, v63);
    sub_2205CCB0C(0, &qword_27CF57528, MEMORY[0x277D6E370]);
    v65 = objc_allocWithZone(v64);
    v66 = sub_22088CD5C();
    v67 = OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_watchStockBarButtonItem;
    v68 = v111;
    swift_beginAccess();
    v69 = *(v68 + v67);
    *(v68 + v67) = v66;

    sub_2205CC630(v107, v51);
    sub_2205CCB9C(v51, v52, v87);
    v70 = v98;
    v71 = v91;
    v86(v98, v52, v91);
    v72 = sub_2206690B4();
    (*(v53 + 8))(v70, v71);
    swift_beginAccess();
    v73 = *(v68 + v67);
    if (v73)
    {
      swift_endAccess();
      [v73 setHidden_];
      (*(v61 + 8))(v110, v103);
      (*(v58 + 8))(v109, v102);
      (*(v88 + 8))(v108, v101);
    }

    else
    {
      (*(v61 + 8))(v110, v103);
      (*(v58 + 8))(v109, v102);
      (*(v88 + 8))(v108, v101);
      swift_endAccess();
    }

    a1 = v107;
    v22 = v100;
  }

  v74 = sub_2205CB778(v111, a1, v106);
  v75 = sub_2205C6584(&OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___moreOptionsBarButtonItem, &qword_28127F0A8, &qword_2812B6938, sub_22058C220);
  [v75 setMenu_];

  v76 = sub_2205C6584(&OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___shareBarButtonItem, &qword_28127F098, &qword_2812B6928, sub_22058C054);
  sub_22044D56C(0, &qword_28127E450, 0x277D750C8);
  if (qword_28127F098 != -1)
  {
    swift_once();
  }

  v77 = qword_2812B6928;
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2205CC630(a1, v22);
  v80 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v78;
  *(v81 + 24) = v79;
  sub_2205CCB9C(v22, v81 + v80, type metadata accessor for StockFeedViewerPage);
  v82 = v77;
  v83 = sub_2208920BC();
  [v76 setPrimaryAction_];

  sub_2205C6DB0(v84);
}

void sub_2205C9E94(uint64_t a1)
{
  v48 = a1;
  v2 = type metadata accessor for StockFeedPage(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockFeedViewerPage(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088685C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_220891CBC();
  sub_2205CC630(a1, v9);
  v47 = type metadata accessor for StockFeedPage;
  v44 = v5;
  sub_2205CCB9C(v9, v5, type metadata accessor for StockFeedPage);
  v46 = *(v11 + 32);
  v42 = v10;
  v46(v14, v5, v10);
  v37 = sub_22088684C();
  v45 = *(v11 + 8);
  v45(v14, v10);
  sub_2205CCC80(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  v41 = v15;
  inited = swift_initStackObject();
  v40 = xmmword_220899360;
  *(inited + 16) = xmmword_220899360;
  v17 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v18 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v39 = v17;
  v19 = sub_220891F2C();
  v20 = sub_220891F4C();

  *(inited + 64) = v18;
  *(inited + 40) = v20;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  v38 = sub_2204A5D84;
  sub_2205CC8F0(inited + 32, sub_2204A5D84);
  v21 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v22 = sub_22089132C();

  type metadata accessor for Key(0);
  v37 = v23;
  sub_2205CCAC4(&qword_28127E6A8, type metadata accessor for Key, &unk_220899024);
  v24 = sub_22089125C();

  v25 = [v21 initWithString:v22 attributes:v24];

  v26 = v43;
  [v43 _setAttributedTitle_];

  v27 = sub_220891CBC();
  sub_2205CC630(v48, v9);
  v28 = v44;
  sub_2205CCB9C(v9, v44, v47);
  v29 = v42;
  v46(v14, v28, v42);
  sub_2208867BC();
  v45(v14, v29);
  v30 = swift_initStackObject();
  *(v30 + 16) = v40;
  *(v30 + 32) = v39;
  v31 = sub_220891F2C();
  *(v30 + 64) = v18;
  *(v30 + 40) = v31;
  sub_2204A5EAC(v30);
  swift_setDeallocating();
  sub_2205CC8F0(v30 + 32, v38);
  v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v33 = sub_22089132C();

  v34 = sub_22089125C();

  v35 = [v32 initWithString:v33 attributes:v34];

  [v27 _setAttributedSubtitle_];
}

uint64_t sub_2205CA474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5258](a1, a2, a3, a4, a5, ObjectType, a7);
}

uint64_t sub_2205CA4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5230](a1, a2, ObjectType, a4);
}

uint64_t sub_2205CA54C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12.n128_f64[0] = a4;

  return MEMORY[0x2821D5240](a1, a2, a3, ObjectType, a6, v12);
}

uint64_t sub_2205CA5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5260](a1, a2, a3, a4, a5, ObjectType, a7);
}

uint64_t sub_2205CA644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5250](a1, a2, ObjectType, a4);
}

uint64_t sub_2205CA69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5238](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_2205CA70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5248](a1, a2, ObjectType, a4);
}

uint64_t sub_2205CA764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22088CC6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088BADC();
  if (v9)
  {
    v10 = v9;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_22088DC6C();
    }
  }

  (*(v5 + 16))(v8, a3, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x277D6E230] || result == *MEMORY[0x277D6E258])
  {
    return sub_22088BAFC();
  }

  if (result != *MEMORY[0x277D6E260] && result != *MEMORY[0x277D6E250] && result != *MEMORY[0x277D6E268] && result != *MEMORY[0x277D6E248] && result != *MEMORY[0x277D6E240] && result != *MEMORY[0x277D6E238])
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2205CA9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5938](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_2205CAA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = sub_22088BADC();
  if (v10)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      a6(a1, a2, a3, ObjectType, v13);
    }
  }

  return sub_22088BAFC();
}

uint64_t sub_2205CAAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5930](a1, a2, a3, a4, ObjectType, a6);
}

uint64_t sub_2205CAB64(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10.n128_f64[0] = a3;

  return MEMORY[0x2821D5960](a1, a2, ObjectType, a5, v10);
}

void sub_2205CABCC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  JUMPOUT(0x223D85EA0);
}

void sub_2205CAC3C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  JUMPOUT(0x223D85EB0);
}

uint64_t sub_2205CACAC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v16.n128_f64[0] = a3;
  v17.n128_f64[0] = a4;
  v18.n128_f64[0] = a5;
  v19.n128_f64[0] = a6;

  return MEMORY[0x2821D5948](a1, a2, ObjectType, a8, v16, v17, v18, v19);
}

uint64_t sub_2205CAD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D6D980])
  {
    v11 = sub_22088CC6C();
    v12 = MEMORY[0x277D6E218];
    v13 = MEMORY[0x277D6E258];
LABEL_5:
    (*(*(v11 - 8) + 104))(a2, *v13);
    v14 = *v12;
    v15 = sub_22088CC2C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x277D6D978])
  {
    v11 = sub_22088CC0C();
    v12 = MEMORY[0x277D6E1F8];
    v13 = MEMORY[0x277D6E1E8];
    goto LABEL_5;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_2205CAF48(uint64_t a1)
{
  if (sub_22088BADC() && (sub_22044D56C(0, &qword_28127E800, 0x277D75D28), sub_2204446D4(0, &unk_281297610, MEMORY[0x277D6E468]), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v3 + 1))
    {
      sub_220457328(&v2, v5);
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_22088D0AC();
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
  }

  sub_2205CCFB0(&v2, &qword_27CF57530, &unk_281297610, MEMORY[0x277D6E468]);
  return sub_22088B9AC();
}

uint64_t sub_2205CB07C(uint64_t a1)
{
  if (sub_22088BADC() && (sub_22044D56C(0, &qword_28127E800, 0x277D75D28), sub_2204446D4(0, &unk_281297710, MEMORY[0x277D6E228]), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v3 + 1))
    {
      sub_220457328(&v2, v5);
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_22088CC3C();
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
  }

  sub_2205CCFB0(&v2, &unk_281297700, &unk_281297710, MEMORY[0x277D6E228]);
  return sub_22088B3FC();
}

id sub_2205CB1B0(uint64_t a1)
{
  if (sub_22088BADC() && (sub_22044D56C(0, &qword_28127E800, 0x277D75D28), sub_2204446D4(0, &unk_281298068, MEMORY[0x277D6D228]), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v4 + 1))
    {
      sub_220457328(&v3, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      v1 = sub_22088A8FC();
      __swift_destroy_boxed_opaque_existential_1(v6);
      return v1;
    }
  }

  else
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
  }

  sub_2205CCFB0(&v3, &unk_27CF57538, &unk_281298068, MEMORY[0x277D6D228]);
  return [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
}

uint64_t sub_2205CB2E0(uint64_t a1)
{
  v1 = sub_22088BADC();
  if (!v1 || (v7[0] = v1, sub_22044D56C(0, &qword_28127E800, 0x277D75D28), sub_2204446D4(0, &unk_281298068, MEMORY[0x277D6D228]), (swift_dynamicCast() & 1) == 0))
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    goto LABEL_6;
  }

  if (!*(&v5 + 1))
  {
LABEL_6:
    sub_2205CCFB0(&v4, &unk_27CF57538, &unk_281298068, MEMORY[0x277D6D228]);
    v2 = 0;
    return v2 & 1;
  }

  sub_220457328(&v4, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v2 = sub_22088A8EC();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v2 & 1;
}

id sub_2205CB438(uint64_t a1)
{
  result = sub_22088BADC();
  if (!result)
  {

    return v2;
  }

  return result;
}

void sub_2205CB4BC(uint64_t a1@<X8>)
{
  v3 = [*v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v6 = 0;
    v5 = 0x4030000000000000;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
}

id sub_2205CB544@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 == 1)
  {
    if (qword_27CF558D0 != -1)
    {
      v5 = a2;
      swift_once();
      a2 = v5;
    }

    v2 = &qword_27CF6CEF8;
  }

  else
  {
    if (qword_27CF558C8 != -1)
    {
      v6 = a2;
      swift_once();
      a2 = v6;
    }

    v2 = &qword_27CF6CEF0;
  }

  v3 = *v2;
  *a2 = *v2;

  return v3;
}

uint64_t sub_2205CB608(unsigned __int8 *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  sub_22088685C();
  sub_22057691C();
  sub_2204654EC();
  return sub_22088CD6C();
}

_BYTE *sub_2205CB760@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 2;
  if (*result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2205CB778(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for StockFeedViewerPage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  sub_22044D56C(0, &qword_28127E560, 0x277D75710);
  sub_22048BC00();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22089B130;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2205CC630(a2, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_2205CCB9C(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for StockFeedViewerPage);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_2205CCD54;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220721020;
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);
  v15 = a3;

  v16 = [v10 elementWithUncachedProvider_];
  _Block_release(v14);
  *(v9 + 32) = v16;
  return sub_220891F5C();
}

double sub_2205CB9B8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_2205CBA60(a4, a5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  a1(v10);

  return result;
}

uint64_t sub_2205CBA60(uint64_t a1, void *a2)
{
  v39 = a2;
  v33 = a1;
  v3 = sub_22088CA0C();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockFeedPage(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StockFeedViewerPage(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088685C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22088AB2C();
  sub_2205CC728(0, &qword_28127E088, &qword_281297AA8, MEMORY[0x277D6DBE8], MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_220899920;
  sub_2205CC630(a1, v13);
  v32 = type metadata accessor for StockFeedPage;
  sub_2205CCB9C(v13, v9, type metadata accessor for StockFeedPage);
  v31 = *(v15 + 32);
  v20 = v14;
  v21.n128_f64[0] = v31(v18, v9, v14);
  v22 = _s5TeaUI15ContextMenuItemC06StocksB0E8copyLink5stockAC0F4Core5StockV_tFZ_0(v18, v21);
  v23 = *(v15 + 8);
  v23(v18, v14);
  v24 = sub_22088B17C();
  v25 = MEMORY[0x277D6D630];
  *(v19 + 56) = v24;
  *(v19 + 64) = v25;
  *(v19 + 32) = v22;
  sub_2205CC630(v33, v13);
  sub_2205CCB9C(v13, v9, v32);
  v31(v18, v9, v20);
  v26 = sub_2207E451C(v18);
  v23(v18, v20);
  *(v19 + 96) = v24;
  *(v19 + 104) = MEMORY[0x277D6D630];
  *(v19 + 72) = v26;
  sub_22088AADC();
  (*(v36 + 104))(v35, *MEMORY[0x277D6E0E8], v37);
  v27 = *(v38 + OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_tracker);
  v41 = sub_22088731C();
  v42 = sub_2205CCAC4(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v40 = v27;

  v28 = [v39 view];
  v43 = 0u;
  v44 = 0u;
  v45 = 1;
  sub_2205C6584(&OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___moreOptionsBarButtonItem, &qword_28127F0A8, &qword_2812B6938, sub_22058C220);
  sub_22088C4DC();
  swift_allocObject();
  sub_22088C4BC();
  v29 = sub_22088AA9C();

  return v29;
}

void sub_2205CBEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v4 = sub_22088CA0C();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205CCC80(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for StockFeedPage(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StockFeedViewerPage(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088685C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      type metadata accessor for StockFeedViewController(0);
      v40 = v28;
      sub_220891C9C();
      v29 = v43;
      sub_2205CC630(v41, v19);
      sub_2205CCB9C(v19, v15, type metadata accessor for StockFeedPage);
      v30 = v15;
      v31 = v29;
      (*(v21 + 32))(v24, v30, v20);
      if (v29)
      {
        v32 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_latestQuote;
        swift_beginAccess();
        sub_2204B1CA8(v31 + v32, v11);
      }

      else
      {
        v33 = sub_22088676C();
        (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
      }

      v34 = type metadata accessor for StockShareActivityItemSource(0);
      v35 = objc_allocWithZone(v34);
      (*(v21 + 16))(v35 + OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock, v24, v20);
      sub_2204B1CA8(v11, v35 + OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote);
      v47.receiver = v35;
      v47.super_class = v34;
      v36 = objc_msgSendSuper2(&v47, sel_init);
      sub_2205CCCE4(v11, &qword_2812990C0, MEMORY[0x277D697F8]);
      (*(v21 + 8))(v24, v20);
      (*(v42 + 104))(v7, *MEMORY[0x277D6E0E8], v4);
      v37 = *&v26[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_tracker];
      v45 = sub_22088731C();
      v46 = sub_2205CCAC4(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
      v43 = v37;

      v38 = [v40 view];
      v48 = 0u;
      v49 = 0u;
      v50 = 1;
      sub_2205C6584(&OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___shareBarButtonItem, &qword_28127F098, &qword_2812B6928, sub_22058C054);
      sub_22088C4DC();
      swift_allocObject();
      sub_22088C4BC();
      swift_getObjectType();
      if (qword_281297080 != -1)
      {
        swift_once();
      }

      v43 = v36;
      v44 = 1;
      v39 = v36;

      sub_22088B7AC();
    }

    else
    {
    }
  }
}

void sub_2205CC530(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2206AAD4C();
  }
}

uint64_t sub_2205CC630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedViewerPage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205CC694(uint64_t a1, uint64_t a2)
{
  sub_2205CCC80(0, &qword_28128F990, type metadata accessor for StockFeedViewerPage, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2205CC728(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2204446D4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2205CC790(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = [v4 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];
    v23 = v10;
    if (a1 == 1)
    {
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v25.origin.x = v12;
      v25.origin.y = v14;
      v25.size.width = v16;
      v25.size.height = v18;
      Height = CGRectGetHeight(v25);
      v20 = a2 - a3 - Height;
      if (v20 < 0.0)
      {
        v20 = 0.0;
      }

      v21 = v20 / Height;
      if (v21 <= 1.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1.0;
      }

      v23 = [v9 navigationBar];
      [v23 ts:v22 setTitleOpacity:?];
    }

    else
    {
      [v10 ts:0.0 setTitleOpacity:?];
    }
  }
}

uint64_t sub_2205CC8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2205CC950(uint64_t a1)
{
  if (!qword_281297C00)
  {
    type metadata accessor for Style(255);
    sub_2204654EC();
    v1 = sub_22088B8FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297C00);
    }
  }
}

void sub_2205CC9BC(uint64_t a1, __n128 a2)
{
  if (!qword_281297C08)
  {
    sub_2205CCA4C(255, &qword_281297C10, &unk_2812976C0, MEMORY[0x277D6E368], sub_2205CCB0C);
    v2 = sub_22089230C();
    if (!v3)
    {
      atomic_store(v2, &qword_281297C08);
    }
  }
}

void sub_2205CCA4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_2204654EC();
    v6 = sub_22088B8FC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2205CCAC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2205CCB0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_22088685C();
    v8[1] = &type metadata for WatchlistCommandState;
    v8[2] = sub_22057691C();
    v8[3] = sub_2204654EC();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2205CCB9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2205CCC04(uint64_t a1)
{
  v3 = *(type metadata accessor for StockFeedViewerPage(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_2205CBEF4(a1, v4, v5, v6);
}

void sub_2205CCC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2205CCCE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2205CCC80(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_2205CCD54(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for StockFeedViewerPage(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_2205CB9B8(a1, a2, v8, v2 + v6, v7);
}

void sub_2205CCE04()
{
  *(v0 + OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___closeBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___moreOptionsBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_watchStockBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___shareBarButtonItem) = 0;
  v1 = OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_currentPage;
  v2 = type metadata accessor for StockFeedViewerPage(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_cardToolbarViewModel);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = v0 + OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_lastSafeAreaInsets;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_isYahooToolbarVisible) = 0;
  sub_22089267C();
  __break(1u);
}

void sub_2205CCF18(uint64_t a1)
{
  v2 = sub_22088F0DC();
  if (v2)
  {
    sub_2205C72D0(v2);
    if (sub_22088F0DC())
    {
      v3 = sub_220891C8C();
      v4 = [v1 navigationController];
      if (v4)
      {
        v5 = v4;
        [v4 setNavigationBarHidden:v3 & 1 animated:0];
      }
    }
  }
}

uint64_t sub_2205CCFB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2205CC728(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double sub_2205CD028(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

void sub_2205CD070(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

id StocksAudioTrack.duration.getter()
{
  v1 = *(v0 + *(type metadata accessor for StocksAudioTrack(0) + 24));

  return [v1 duration];
}

BOOL sub_2205CD154(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2205CD184@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2205CD1B0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_2205CD288(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2205CE5E8(a1);

  *a2 = v3;
}

uint64_t static StocksAudioTrack.== infix(_:_:)(id *a1, id *a2)
{
  v3 = [*a1 identifier];
  v4 = sub_22089136C();
  v6 = v5;

  v7 = [*a2 identifier];
  v8 = sub_22089136C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2208928BC();
  }

  return v12 & 1;
}

uint64_t StocksAudioTrack.identifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_22089136C();

  return v2;
}

uint64_t sub_2205CD488(id *a1, id *a2)
{
  v3 = [*a1 identifier];
  v4 = sub_22089136C();
  v6 = v5;

  v7 = [*a2 identifier];
  v8 = sub_22089136C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2208928BC();
  }

  return v12 & 1;
}

double StocksAudioTrack.hash(into:)(uint64_t a1)
{
  v2 = [*v1 identifier];
  sub_22089136C();

  sub_22089146C();

  return result;
}

uint64_t StocksAudioTrack.hashValue.getter()
{
  sub_2208929EC();
  v1 = [*v0 identifier];
  sub_22089136C();

  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2205CD64C()
{
  sub_2208929EC();
  v1 = [*v0 identifier];
  sub_22089136C();

  sub_22089146C();

  return sub_220892A2C();
}

double sub_2205CD6D0(uint64_t a1)
{
  v2 = [*v1 identifier];
  sub_22089136C();

  sub_22089146C();

  return result;
}

uint64_t sub_2205CD748()
{
  sub_2208929EC();
  v1 = [*v0 identifier];
  sub_22089136C();

  sub_22089146C();

  return sub_220892A2C();
}

uint64_t StocksAudioTrack.effectiveTitle.getter()
{
  if ((*(v0 + *(type metadata accessor for StocksAudioTrack(0) + 32)) & 0x80) != 0)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = 0xE000000000000000;
    sub_220884CAC();

    sub_2205051C0(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_220899360;
    v8 = [*v0 title];
    if (v8)
    {
      v9 = v8;
      v10 = sub_22089136C();
      v6 = v11;
    }

    else
    {
      v10 = 0;
    }

    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_22048D860();
    *(v7 + 32) = v10;
    *(v7 + 40) = v6;
    v3 = sub_22089139C();
  }

  else
  {
    v1 = [*v0 title];
    if (v1)
    {
      v2 = v1;
      v3 = sub_22089136C();
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t StocksAudioTrack.rawTitle.getter()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22089136C();

  return v3;
}

uint64_t StocksAudioTrack.publisherName.getter()
{
  v1 = [*v0 sourceName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22089136C();

  return v3;
}

double StocksAudioTrack.artworkOverride.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t StocksAudioTrack.artworkGradient.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22088BA6C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2205CDB14()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22089136C();

  return v3;
}

uint64_t sub_2205CDB7C()
{
  v1 = [*v0 sourceName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22089136C();

  return v3;
}

double sub_2205CDBE4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2205CDC04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22088BA6C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2205CDC70()
{
  v1 = [*v0 identifier];
  v2 = sub_22089136C();

  return v2;
}

uint64_t StocksAudioTrack.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_2205051C0(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 32) = 0x696669746E656469;
  *(inited + 16) = xmmword_220899920;
  *(inited + 40) = 0xEA00000000007265;
  v4 = *v1;
  v5 = [v4 identifier];
  v6 = sub_22089136C();
  v8 = v7;

  v9 = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v10 = [v4 title];
  if (v10)
  {
    v11 = v10;
    v12 = sub_22089136C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  *(inited + 120) = v9;
  *(inited + 96) = v12;
  *(inited + 104) = v14;
  sub_22052BDC4(inited);
  swift_setDeallocating();
  sub_22052BFB4();
  swift_arrayDestroy();
  sub_2205051C0(0, &qword_27CF57548, type metadata accessor for StocksAudioTrack, MEMORY[0x277D6CC20]);
  a1[3] = v15;
  a1[4] = sub_2205CE8A4();
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for StocksAudioTrack(0);
  return sub_22088883C();
}

uint64_t sub_2205CDEB4(uint64_t a1)
{
  sub_220452F38(&qword_27CF575D8, type metadata accessor for StocksAudioTrack, &protocol conformance descriptor for StocksAudioTrack);

  return sub_22088882C();
}

unint64_t sub_2205CDF20(uint64_t a1)
{
  sub_22088543C();
  v2 = MEMORY[0x277CC9A70];
  sub_220452F38(&unk_2812993F8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  v3 = sub_22089129C();
  return sub_2205CE3D8(a1, v3, MEMORY[0x277CC9A70], &qword_2812993F0, v2, MEMORY[0x277CC9A88]);
}

unint64_t sub_2205CDFF4(uint64_t a1)
{
  v1 = a1;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  v2 = sub_220892A2C();

  return sub_2205CE2A0(v1, v2);
}

unint64_t sub_2205CE060(uint64_t a1)
{
  v2 = sub_2208924BC();

  return sub_2205CE310(a1, v2);
}

unint64_t sub_2205CE0A4(uint64_t a1)
{
  sub_22088CC6C();
  v2 = MEMORY[0x277D6E270];
  sub_220452F38(&qword_2812976F8, MEMORY[0x277D6E270], MEMORY[0x277D6E278]);
  v3 = sub_22089129C();
  return sub_2205CE3D8(a1, v3, MEMORY[0x277D6E270], &unk_2812976E0, v2, MEMORY[0x277D6E288]);
}

unint64_t sub_2205CE1C8(char a1)
{
  sub_2208929EC();
  MEMORY[0x223D8ABA0](a1 & 1);
  v2 = sub_220892A2C();

  return sub_2205CE578(a1 & 1, v2);
}

unint64_t sub_2205CE234(uint64_t a1)
{
  v1 = a1;
  sub_2208929EC();
  sub_220892A0C();
  v2 = sub_220892A2C();

  return sub_2205CE578(v1, v2);
}

unint64_t sub_2205CE2A0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2205CE310(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2205CFD28(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D8A670](v9, a1);
      sub_2205CFD84(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2205CE3D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8, v11);
      sub_220452F38(v25, v26, v27);
      v21 = sub_2208912FC();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t sub_2205CE578(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2205CE5E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_2205CE620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22052BF5C(0, &qword_27CF575A8, MEMORY[0x277D837D0]);
    v3 = sub_2208926DC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2204AF97C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2205CE738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_2205CF550(0);
  v3 = sub_2208926DC();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = sub_2205CDFF4(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v19 = v7;
    return v3;
  }

  v10 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v11 = (v3[7] + 24 * result);
    *v11 = v5;
    v11[1] = v6;
    v11[2] = v7;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v15 = v10 + 4;
    v4 = *(v10 - 24);
    v5 = *(v10 - 2);
    v6 = *(v10 - 1);
    v16 = *v10;
    v17 = v7;
    result = sub_2205CDFF4(v4);
    v10 = v15;
    v7 = v16;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2205CE8A4()
{
  result = qword_27CF57550;
  if (!qword_27CF57550)
  {
    sub_2205051C0(255, &qword_27CF57548, type metadata accessor for StocksAudioTrack, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57550);
  }

  return result;
}

unint64_t sub_2205CE988()
{
  result = qword_27CF57568;
  if (!qword_27CF57568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57568);
  }

  return result;
}

unint64_t sub_2205CE9E0()
{
  result = qword_27CF57570;
  if (!qword_27CF57570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57570);
  }

  return result;
}

unint64_t sub_2205CEA38()
{
  result = qword_27CF57578;
  if (!qword_27CF57578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57578);
  }

  return result;
}

unint64_t sub_2205CEA90()
{
  result = qword_27CF57580;
  if (!qword_27CF57580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57580);
  }

  return result;
}

void sub_2205CEAE4(uint64_t a1)
{
  if (!qword_27CF57588)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_220452F38(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey, &unk_2208990A8);
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF57588);
    }
  }
}

unint64_t sub_2205CEBA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2205CF608(0, a2, a3, a4, sub_22044D56C);
    v6 = sub_2208926DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_2204AF97C(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2205CECAC(uint64_t a1)
{
  sub_2205CF428(0, &qword_2812976C8, MEMORY[0x277D6E270], MEMORY[0x277D6E600]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2205CF094(0);
    v9 = sub_2208926DC();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2205CF140(v11, v7, &qword_2812976C8, MEMORY[0x277D6E270], MEMORY[0x277D6E600]);
      result = sub_2205CE0A4(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_22088CC6C();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = sub_22088D2AC();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v15, &v7[v10], v19);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2205CEF04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2205CEFFC(0);
    v3 = sub_2208926DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2204AF97C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2205CEFFC(uint64_t a1)
{
  if (!qword_28127E2D0)
  {
    sub_2205051C0(255, &qword_28127EAC8, MEMORY[0x277D6CCB8], MEMORY[0x277D83940]);
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E2D0);
    }
  }
}

void sub_2205CF094(uint64_t a1)
{
  if (!qword_28127E320)
  {
    sub_22088CC6C();
    sub_22088D2AC();
    sub_220452F38(&qword_2812976F8, MEMORY[0x277D6E270], MEMORY[0x277D6E278]);
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E320);
    }
  }
}

uint64_t sub_2205CF140(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_2205CF428(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_2205CF208(uint64_t a1)
{
  sub_2205CF428(0, &qword_2812993D8, MEMORY[0x277CC9A70], type metadata accessor for StockChartCalloutDateFormatter);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2205CF4A4(0);
    v9 = sub_2208926DC();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2205CF140(v11, v7, &qword_2812993D8, MEMORY[0x277CC9A70], type metadata accessor for StockChartCalloutDateFormatter);
      result = sub_2205CDF20(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_22088543C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2205CF428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2205CF4A4(uint64_t a1)
{
  if (!qword_28127E330)
  {
    sub_22088543C();
    type metadata accessor for StockChartCalloutDateFormatter(255);
    sub_220452F38(&unk_2812993F8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E330);
    }
  }
}

void sub_2205CF550(uint64_t a1)
{
  if (!qword_28127E310)
  {
    sub_2205CF5B4();
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E310);
    }
  }
}

unint64_t sub_2205CF5B4()
{
  result = qword_28128A2F8;
  if (!qword_28128A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128A2F8);
  }

  return result;
}

void sub_2205CF608(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_2208926EC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2205CF674(uint64_t a1)
{
  sub_2205CFC60(0, &unk_28127EBA0, type metadata accessor for CuratedForYouFeedGroupKnobs);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2205CFCC4(0, &qword_28127E2D8, type metadata accessor for CuratedForYouFeedGroupKnobs);
    v9 = sub_2208926DC();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2204A613C(v11, v7, &unk_28127EBA0, type metadata accessor for CuratedForYouFeedGroupKnobs, sub_2205CFC60);
      v13 = *v7;
      v14 = v7[1];
      result = sub_2204AF97C(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for CuratedForYouFeedGroupKnobs(0);
      result = sub_2205CF888(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2205CF888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedForYouFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2205CF928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void))
{
  v33 = a5;
  v34 = a2;
  sub_2205CFC60(0, a2, a3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = (&v31 - v12);
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_2205CFCC4(0, a4, a3);
    v15 = sub_2208926DC();
    v32 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    v18 = a3;
    while (1)
    {
      v19 = v18;
      sub_2204A613C(v16, v13, v34, v18, sub_2205CFC60);
      v20 = *v13;
      v21 = v13[1];
      result = sub_2204AF97C(*v13, v21);
      if (v23)
      {
        break;
      }

      v24 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v25 = (v15[6] + 16 * result);
      *v25 = v20;
      v25[1] = v21;
      v26 = v15[7];
      v27 = v33(0);
      result = (*(*(v27 - 8) + 32))(v26 + *(*(v27 - 8) + 72) * v24, v13 + v32, v27);
      v28 = v15[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_10;
      }

      v15[2] = v30;
      v16 += v17;
      --v14;
      v18 = v19;
      if (!v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2205CFB54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2205CF608(0, a2, a3, a4, sub_22044869C);
    v6 = sub_2208926DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      swift_unknownObjectRetain();
      result = sub_2204AF97C(v8, v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v6[6] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
      *(v6[7] + 8 * result) = v10;
      v14 = v6[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v6[2] = v16;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2205CFC60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_2205CFCC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2208926EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ManageWatchlistsLayoutModel(uint64_t a1)
{
  result = qword_27CF575E0;
  if (!qword_27CF575E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205CFE2C(uint64_t a1)
{
  sub_22057B014(319);
  if (v2 <= 0x3F)
  {
    sub_22057AE3C(319, v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

double sub_2205CFEA0()
{
  v1 = v0;
  WatchlistViewLayoutAttributes = type metadata accessor for CreateWatchlistViewLayoutAttributes(0);
  MEMORY[0x28223BE20](WatchlistViewLayoutAttributes - 8, v3);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ManageWatchlistsLayoutModel(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D007C(v1, v9);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_22057AE3C(0, v10);
    sub_2205D00E0(&v9[*(v14 + 48)], v5);
    v12 = *v5;
    sub_2205D0144(v5, type metadata accessor for CreateWatchlistViewLayoutAttributes);
    v13 = type metadata accessor for CreateWatchlistViewModel;
  }

  else
  {
    sub_22057B014(0);
    v12 = *&v9[*(v11 + 48)];
    v13 = type metadata accessor for WatchlistCellViewModel;
  }

  sub_2205D0144(v9, v13);
  return v12;
}

uint64_t sub_2205D0008@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DB18];
  v3 = sub_22088BCFC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2205D007C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageWatchlistsLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205D00E0(uint64_t a1, uint64_t a2)
{
  WatchlistViewLayoutAttributes = type metadata accessor for CreateWatchlistViewLayoutAttributes(0);
  (*(*(WatchlistViewLayoutAttributes - 8) + 32))(a2, a1, WatchlistViewLayoutAttributes);
  return a2;
}

uint64_t sub_2205D0144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2205D01A4(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v32 = a2;
  v35 = sub_22088F11C();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v5);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088F14C();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088F17C();
  v33 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v31 - v18;
  sub_22088C71C();
  v20 = sub_22088BFCC();

  v21 = swift_allocObject();
  v22 = v32;
  v21[2] = a1;
  v21[3] = v22;
  v21[4] = a3;
  sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v23 = a1;

  v31 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v32 = *(v12 + 8);
  v32(v15, v11);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = sub_2205D11B0;
  *(v24 + 32) = v21;
  *(v24 + 40) = xmmword_22089EEB0;
  aBlock[4] = sub_2205D11BC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_16_0;
  v25 = _Block_copy(aBlock);
  v26 = v20;

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22046275C(&qword_281296CA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22056D204(0);
  sub_22046275C(&qword_28127EA50, sub_22056D204, MEMORY[0x277D83970]);
  v27 = v34;
  v28 = v35;
  sub_2208923FC();
  v29 = v31;
  MEMORY[0x223D89E80](v19, v10, v27, v25);
  _Block_release(v25);

  (*(v38 + 8))(v27, v28);
  (*(v36 + 8))(v10, v37);
  return (v32)(v19, v33);
}

double sub_2205D060C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22088C71C();
  v5 = sub_22088BFCC();

  [v5 setContentOffset:0 animated:{0.0, 0.0}];

  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_2206C1FA0(sub_2204CB288, v6);

  return result;
}

void sub_2205D0758(void *a1, void (**a2)(void, void))
{
  v4 = sub_22088F11C();
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v72 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22088F14C();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v7);
  v69 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22088F17C();
  v68 = *(v70 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v70, v10);
  v11 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v77 = v65 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v76 = v65 - v17;
  v18 = sub_22088CC6C();
  v67 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  _Block_copy(a2);
  v23 = sub_22089132C();
  v24 = [a1 objectForKey_];

  if (v24)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  aBlock = v83;
  v80 = v84;
  if (!*(&v84 + 1))
  {
    sub_22056D130(&aBlock);
    goto LABEL_9;
  }

  type metadata accessor for ForYouFeedViewController();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v27 = objc_allocWithZone(MEMORY[0x277D6D138]);
    v28 = sub_22089132C();
    v29 = [v27 initWithMessage_];

    (a2)[2](a2, v29);

    return;
  }

  v66 = v78;
  v25 = sub_22089132C();
  v26 = [a1 objectForKey_];

  if (v26)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  aBlock = v83;
  v80 = v84;
  if (!*(&v84 + 1))
  {
    sub_22056D130(&aBlock);
LABEL_17:
    v34 = v66;
    sub_22088C71C();
    v35 = sub_22088BFCC();

    [v35 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v85.origin.x = v37;
    v85.origin.y = v39;
    v85.size.width = v41;
    v85.size.height = v43;
    Height = CGRectGetHeight(v85);
    sub_22088C71C();
    v45 = sub_22088BFCC();

    v46 = swift_allocObject();
    v46[2] = v34;
    v46[3] = sub_2204C9E0C;
    v65[1] = v22;
    v46[4] = v22;
    v67 = v34;

    v47 = v76;
    sub_22088F15C();
    sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
    v65[0] = sub_220891D0C();
    sub_22088F16C();
    sub_22088F18C();
    v48 = v68;
    v66 = *(v68 + 8);
    v49 = v70;
    v66(v11, v70);
    (*(v48 + 16))(v11, v47, v49);
    v50 = (*(v48 + 80) + 56) & ~*(v48 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = Height;
    *(v51 + 24) = 0;
    *(v51 + 32) = v45;
    *(v51 + 40) = sub_2205D11A4;
    *(v51 + 48) = v46;
    (*(v48 + 32))(v51 + v50, v11, v49);
    v81 = sub_22056D194;
    v82 = v51;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v80 = sub_2204C35E8;
    *(&v80 + 1) = &block_descriptor_7;
    v52 = _Block_copy(&aBlock);
    v53 = v45;

    v54 = v69;
    sub_22088F13C();
    *&aBlock = MEMORY[0x277D84F90];
    sub_22046275C(&qword_281296CA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_22056D204(0);
    sub_22046275C(&qword_28127EA50, sub_22056D204, MEMORY[0x277D83970]);
    v55 = v72;
    v56 = v75;
    sub_2208923FC();
    v57 = v77;
    v58 = v65[0];
    MEMORY[0x223D89E80](v77, v54, v55, v52);
    _Block_release(v52);

    (*(v74 + 8))(v55, v56);
    (*(v71 + 8))(v54, v73);
    v59 = v66;
    v66(v57, v49);
    v59(v76, v49);

    return;
  }

  sub_22044D56C(0, &qword_27CF56C10, 0x277D75A50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v30 = v78;
  v31 = [v78 isCollapsed];

  if ((v31 & 1) == 0)
  {
    goto LABEL_17;
  }

  v32 = sub_22089132C();
  v33 = [a1 objectForKey_];

  if (v33)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  aBlock = v83;
  v80 = v84;
  if (*(&v84 + 1))
  {
    sub_22056D25C();
    if (swift_dynamicCast())
    {
      v60 = v78;
      swift_getObjectType();
      v61 = v67;
      (*(v67 + 13))(v21, *MEMORY[0x277D6E258], v18);
      sub_22088D08C();

      v61[1](v21, v18);
      goto LABEL_17;
    }
  }

  else
  {
    sub_22056D130(&aBlock);
  }

  v62 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v63 = sub_22089132C();
  v64 = [v62 initWithMessage_];

  (a2)[2](a2, v64);
}

uint64_t sub_2205D11D4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2205D126C@<X0>(uint64_t a1@<X8>)
{
  sub_2205715CC(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220887BBC();
  sub_22088867C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2205D153C(0, v7);
    v9 = *(v11 + 64);
    v10 = MEMORY[0x277D324A8];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2205D1464(0);
    v9 = *(v8 + 64);
    v10 = MEMORY[0x277D32498];
LABEL_5:
    v12 = *v10;
    v13 = sub_22088F9AC();
    (*(*(v13 - 8) + 104))(a1, v12, v13);
    v14 = sub_22088774C();
    (*(*(v14 - 8) + 8))(&v5[v9], v14);
    return sub_2205D14E0(v5);
  }

  v16 = *MEMORY[0x277D324A0];
  v17 = sub_22088F9AC();
  return (*(*(v17 - 8) + 104))(a1, v16, v17);
}

void sub_2205D1464(uint64_t a1)
{
  if (!qword_27CF59BA0)
  {
    type metadata accessor for StocksAudioTrack(255);
    sub_22088774C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF59BA0);
    }
  }
}

uint64_t sub_2205D14E0(uint64_t a1)
{
  v2 = type metadata accessor for StocksAudioTrack(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2205D153C(uint64_t a1, uint64_t a2)
{
  if (!qword_27CF59B80)
  {
    MEMORY[0x28223BE20](a1, a2);
    type metadata accessor for StocksAudioTrack(255);
    sub_22088774C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27CF59B80);
    }
  }
}

void sub_2205D1660(uint64_t a1, uint64_t a2)
{
  v141 = a2;
  sub_2204FC578(0, qword_281296160, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v124 = &v119 - v4;
  v5 = sub_2208895AC();
  v137 = *(v5 - 8);
  v138 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v136 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22089041C();
  v134 = *(v8 - 8);
  v135 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v131 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v133 = &v119 - v13;
  v14 = sub_22088959C();
  v144 = *(v14 - 8);
  v145 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v123 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v128 = &v119 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v132 = &v119 - v22;
  v23 = sub_2208906CC();
  v24 = *(v23 - 8);
  v139 = v23;
  v140 = v24;
  MEMORY[0x28223BE20](v23, v25);
  v121 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v122 = &v119 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v125 = &v119 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v127 = (&v119 - v35);
  MEMORY[0x28223BE20](v36, v37);
  v130 = &v119 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v119 - v41;
  v43 = sub_220889ACC();
  v142 = *(v43 - 8);
  v143 = v43;
  MEMORY[0x28223BE20](v43, v44);
  v129 = &v119 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v126 = &v119 - v48;
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v119 - v51;
  v53 = sub_22089022C();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v55);
  v120 = &v119 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v119 - v59;
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v119 - v63;
  sub_22088E4CC();
  sub_22088E3BC();
  v65 = sub_22088E23C();

  if (v65)
  {
    v66 = v146[7];
    v128 = v146[8];
    v129 = v66;
    v127 = __swift_project_boxed_opaque_existential_1(v146 + 4, v66);
    sub_2205D23FC();
    sub_2208905FC();
    sub_2205B7B64(v52);
    (*(v54 + 8))(v64, v53);
    sub_22089060C();
    v68 = v139;
    v67 = v140;
    v69 = v130;
    (*(v140 + 16))(v130, v42, v139);
    v70 = (*(v67 + 88))(v69, v68);
    v71 = v67;
    if (v70 == *MEMORY[0x277D33A68])
    {
      v72 = MEMORY[0x277D68618];
      v74 = v132;
      v73 = v133;
LABEL_17:
      (*(v71 + 8))(v42, v68);
      v97 = *v72;
      v99 = v144;
      v98 = v145;
      (*(v144 + 104))(v74, v97, v145);
      sub_2208905EC();
      v101 = v134;
      v100 = v135;
      v102 = v131;
      (*(v134 + 16))(v131, v73, v135);
      v103 = (*(v101 + 88))(v102, v100);
      if (v103 == *MEMORY[0x277D33570])
      {
        v104 = MEMORY[0x277D68630];
LABEL_21:
        (*(v101 + 8))(v73, v100);
        v106 = v136;
        v105 = v137;
        v107 = v138;
        (*(v137 + 104))(v136, *v104, v138);
        (*(v128 + 3))(v52, v74, v106, v129);
        (*(v105 + 8))(v106, v107);
        (*(v99 + 8))(v74, v98);
        (*(v142 + 8))(v52, v143);
        sub_220887BFC();
        return;
      }

      if (v103 == *MEMORY[0x277D33568])
      {
        v104 = MEMORY[0x277D68640];
        goto LABEL_21;
      }

      goto LABEL_33;
    }

    v74 = v132;
    v73 = v133;
    if (v70 == *MEMORY[0x277D33A78])
    {
      v72 = MEMORY[0x277D68628];
      goto LABEL_17;
    }

    if (v70 == *MEMORY[0x277D33A70])
    {
      v72 = MEMORY[0x277D68620];
      goto LABEL_17;
    }

LABEL_33:
    sub_22089267C();
    __break(1u);
    return;
  }

  v138 = v53;
  sub_22088E3AC();
  v75 = sub_22088E23C();

  if (v75)
  {
    v76 = v146[7];
    v77 = v146[8];
    __swift_project_boxed_opaque_existential_1(v146 + 4, v76);
    sub_2205D23FC();
    sub_2208905FC();
    v78 = v126;
    sub_2205B7B64(v126);
    (*(v54 + 8))(v60, v138);
    v79 = v127;
    sub_22089060C();
    v80 = v139;
    v81 = v140;
    v82 = v125;
    (*(v140 + 16))(v125, v79, v139);
    v83 = (*(v81 + 88))(v82, v80);
    if (v83 == *MEMORY[0x277D33A68])
    {
      v84 = MEMORY[0x277D68618];
    }

    else if (v83 == *MEMORY[0x277D33A78])
    {
      v84 = MEMORY[0x277D68628];
    }

    else
    {
      if (v83 != *MEMORY[0x277D33A70])
      {
        goto LABEL_33;
      }

      v84 = MEMORY[0x277D68620];
    }

    (*(v81 + 8))(v79, v80);
    v109 = *v84;
    v111 = v144;
    v110 = v145;
    v112 = v128;
    (*(v144 + 104))(v128, v109, v145);
    (*(v77 + 16))(v78, v112, v76, v77);
    (*(v111 + 8))(v112, v110);
    (*(v142 + 8))(v78, v143);
    sub_220887C1C();
    return;
  }

  sub_22088E33C();
  v85 = sub_22088E23C();

  v86 = v146;
  if (v85 & 1) != 0 || (sub_22088E39C(), v87 = sub_22088E23C(), , (v87))
  {
    v88 = v86[7];
    v89 = v86[8];
    __swift_project_boxed_opaque_existential_1(v86 + 4, v88);
    sub_2205D23FC();
    v90 = v120;
    sub_2208905FC();
    sub_2205B7B64(v129);
    (*(v54 + 8))(v90, v138);
    v91 = v122;
    sub_22089060C();
    v92 = v139;
    v93 = v140;
    v94 = v121;
    (*(v140 + 16))(v121, v91, v139);
    v95 = (*(v93 + 88))(v94, v92);
    if (v95 == *MEMORY[0x277D33A68])
    {
      v96 = MEMORY[0x277D68618];
    }

    else if (v95 == *MEMORY[0x277D33A78])
    {
      v96 = MEMORY[0x277D68628];
    }

    else
    {
      if (v95 != *MEMORY[0x277D33A70])
      {
        goto LABEL_33;
      }

      v96 = MEMORY[0x277D68620];
    }

    (*(v93 + 8))(v91, v92);
    v114 = v144;
    v113 = v145;
    v115 = v123;
    (*(v144 + 104))(v123, *v96, v145);
    v116 = v129;
    (*(v89 + 40))(v129, v115, v88, v89);
    (*(v114 + 8))(v115, v113);
    (*(v142 + 8))(v116, v143);
    sub_220887C0C();
    v117 = type metadata accessor for StocksAudioTrack(0);
    v118 = v124;
    (*(*(v117 - 8) + 56))(v124, 1, 1, v117);
    sub_2205D2510(&qword_27CF575F8, qword_281296160, MEMORY[0x277D83D88], MEMORY[0x277D84F50]);
    sub_2208886AC();
    sub_2205D2498(v118);
    v147 = MEMORY[0x277D84F90];
    sub_2205D2510(&qword_27CF57600, &qword_28127EA38, MEMORY[0x277D83940], MEMORY[0x277D83968]);
    sub_2208886AC();
  }

  else
  {
    sub_22088E36C();
    v108 = sub_22088E23C();

    if (v108)
    {
      sub_220887B9C();
    }
  }
}

void sub_2205D23FC()
{
  if (!qword_281296810)
  {
    v0 = sub_22089062C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296810);
    }
  }
}

uint64_t sub_2205D2450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2205D2498(uint64_t a1)
{
  sub_2204FC578(0, qword_281296160, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2205D2510(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2204FC578(255, a2, a3);
    sub_2205D2450(&qword_2812961D8, type metadata accessor for StocksAudioTrack, &protocol conformance descriptor for StocksAudioTrack);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2205D25A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  if (v6)
  {
    sub_2205D3ECC(0, &qword_28127E130, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
    sub_220888A9C();
    v8 = a1 + 40;
    do
    {
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_22089EF70;
      swift_bridgeObjectRetain_n();

      sub_220888A3C();

      sub_220888A3C();

      sub_220888A3C();

      sub_220888A3C();

      sub_22048E258(v9, sub_220588164, MEMORY[0x277D6CCC0]);
      v8 += 16;
      --v6;
    }

    while (v6);
    return v10;
  }

  return result;
}

void sub_2205D28D0(uint64_t a1)
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

  v3 = sub_2204B415C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

uint64_t sub_2205D2A00(uint64_t a1)
{
  sub_22046B36C(0);
  v82 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v79 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D3ECC(0, &qword_281297F78, sub_22046B36C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v81 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v78 = &v67 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v83 = &v67 - v15;
  sub_22046B2A0(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D3ABC(0, &qword_27CF57628, sub_22046B2A0, sub_2205D3B3C, MEMORY[0x277D84310]);
  v76 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v85 = &v67 - v24;
  sub_22046F65C(&qword_27CF57638, sub_22046B2A0, MEMORY[0x277D6CC40]);
  v25 = sub_2208915EC();
  v84 = v1;
  v26 = *v1;
  v27 = *(*v1 + 16);
  v28 = v27 + v25;
  if (__OFADD__(v27, v25))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v25;
  v75 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v31 = v26[3] >> 1, v31 < v28))
  {
    if (v27 <= v28)
    {
      v32 = v28;
    }

    else
    {
      v32 = v27;
    }

    v26 = sub_2204EA048(isUniquelyReferenced_nonNull_native, v32, 1, v26);
    v31 = v26[3] >> 1;
  }

  v33 = *(v4 + 72);
  v34 = v31 - v26[2];
  v77 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v80 = v33;
  (*(v18 + 16))(v21, a1, v17);
  v27 = v21;
  v35 = sub_2208915DC();
  (*(v18 + 8))(a1, v17);
  if (v35 < v29)
  {
    goto LABEL_16;
  }

  v27 = v85;
  if (v35 >= 1)
  {
    v36 = v26[2];
    v37 = __OFADD__(v36, v35);
    v38 = v36 + v35;
    if (v37)
    {
      __break(1u);
      goto LABEL_20;
    }

    v26[2] = v38;
  }

  if (v35 != v34)
  {
    result = sub_2205D3B70(v27);
    goto LABEL_14;
  }

LABEL_17:
  v34 = v26[2];
  v40 = v76[9];
  v41 = sub_2205D3B3C();
  sub_22089199C();
  v42 = *(v27 + v40);
  v73 = v40;
  v69 = v41;
  if (v42 != v86[0])
  {
LABEL_20:
    v48 = sub_2208919BC();
    v47 = v4;
    v44 = v83;
    v45 = v82;
    (*(v4 + 16))(v83);
    v48(v86, 0);
    sub_2208919AC();
    v43 = 0;
    v46 = v79;
    goto LABEL_21;
  }

  v43 = 1;
  v45 = v82;
  v44 = v83;
  v46 = v79;
  v47 = v4;
LABEL_21:
  v71 = *(v47 + 56);
  v72 = v47 + 56;
  v71(v44, v43, 1, v45);
  v49 = v78;
  sub_2205D3C10(v44, v78);
  v51 = *(v47 + 48);
  v50 = v47 + 48;
  v76 = v51;
  if ((v51)(v49, 1, v45) != 1)
  {
    v52 = (v75 + 32);
    v68 = (v75 + 16);
    v67 = (v75 + 8);
    v74 = v50;
    v70 = (v75 + 32);
    do
    {
      sub_2205D3CA4(v49);
      v53 = v26[3];
      v54 = v53 >> 1;
      if ((v53 >> 1) < v34 + 1)
      {
        v26 = sub_2204EA048((v53 > 1), v34 + 1, 1, v26);
        v54 = v26[3] >> 1;
      }

      v55 = v81;
      sub_2205D3C10(v83, v81);
      if ((v76)(v55, 1, v82) == 1)
      {
        v56 = v81;
        v57 = v82;
LABEL_30:
        sub_2205D3CA4(v56);
        v58 = v34;
      }

      else
      {
        v59 = *v52;
        if (v34 <= v54)
        {
          v58 = v54;
        }

        else
        {
          v58 = v34;
        }

        v56 = v81;
        v60 = v26 + v77 + v80 * v34;
        v57 = v82;
        v75 = v58;
        while (1)
        {
          v59(v46, v56, v57);
          if (v58 == v34)
          {
            break;
          }

          v65 = v83;
          sub_2205D3CA4(v83);
          v59(v60, v46, v57);
          v66 = v85;
          sub_22089199C();
          if (*(v66 + v73) == v86[0])
          {
            v62 = 1;
          }

          else
          {
            v61 = sub_2208919BC();
            (*v68)(v65);
            v61(v86, 0);
            v57 = v82;
            sub_2208919AC();
            v62 = 0;
          }

          v63 = v81;
          v71(v65, v62, 1, v57);
          sub_2205D3C10(v65, v63);
          v64 = (v76)(v63, 1, v57);
          v60 += v80;
          ++v34;
          v56 = v63;
          v46 = v79;
          v52 = v70;
          v58 = v75;
          if (v64 == 1)
          {
            goto LABEL_30;
          }
        }

        (*v67)(v46, v57);
        v34 = v58;
      }

      v26[2] = v58;
      v49 = v78;
      sub_2205D3C10(v83, v78);
    }

    while ((v76)(v49, 1, v57) != 1);
  }

  sub_2205D3CA4(v83);
  sub_2205D3B70(v85);
  result = sub_2205D3CA4(v49);
LABEL_14:
  *v84 = v26;
  return result;
}

void sub_2205D31F4(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2208926AC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_2208926AC();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2205D3414(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_2205D32EC(uint64_t a1)
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

  v3 = sub_2205883B0(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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

  sub_2205D3A54(0);
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

uint64_t sub_2205D3414(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2208926AC();
LABEL_9:
  result = sub_22089256C();
  *v2 = result;
  return result;
}

void (*sub_2205D34B4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D8A700](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2205D3FB8;
  }

  __break(1u);
  return result;
}

void (*sub_2205D3534(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D8A700](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2205D35B4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2205D35BC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D8A700](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2205D363C;
  }

  __break(1u);
  return result;
}

uint64_t sub_2205D3644(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2208926AC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2208926AC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2205D39AC(0, &qword_27CF57608, &qword_28127E888, 0x277D75720);
          sub_2205D3A04(&qword_27CF57610, &qword_27CF57608, &qword_28127E888, 0x277D75720);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2205D34B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22044D56C(0, &qword_28127E888, 0x277D75720);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2205D37F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2208926AC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2208926AC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2205D39AC(0, &qword_27CF57618, &qword_28127E670, 0x277D750A0);
          sub_2205D3A04(&qword_27CF57620, &qword_27CF57618, &qword_28127E670, 0x277D750A0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2205D3534(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22044D56C(0, &qword_28127E670, 0x277D750A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2205D39AC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_22044D56C(255, a3, a4);
    v5 = sub_2208917AC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2205D3A04(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_2205D39AC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2205D3A54(uint64_t a1)
{
  if (!qword_281297AA0)
  {
    sub_2204446D4(255, &qword_281297AA8, MEMORY[0x277D6DBE8]);
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297AA0);
    }
  }
}

void sub_2205D3ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_2205D3B70(uint64_t a1)
{
  sub_2205D3ABC(0, &qword_27CF57628, sub_22046B2A0, sub_2205D3B3C, MEMORY[0x277D84310]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2205D3C10(uint64_t a1, uint64_t a2)
{
  sub_2205D3ECC(0, &qword_281297F78, sub_22046B36C, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205D3CA4(uint64_t a1)
{
  sub_2205D3ECC(0, &qword_281297F78, sub_22046B36C, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2205D3D30(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2208926AC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2208926AC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2205D3ECC(0, &qword_27CF57640, MEMORY[0x277D6D638], MEMORY[0x277D83940]);
          sub_2205D3F30();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2205D35BC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22088B17C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2205D3ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2205D3F30()
{
  result = qword_27CF57648;
  if (!qword_27CF57648)
  {
    sub_2205D3ECC(255, &qword_27CF57640, MEMORY[0x277D6D638], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57648);
  }

  return result;
}

char *sub_2205D3FBC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton;
  *&v6[v12] = [objc_allocWithZone(sub_22088AC2C()) initWithFrame_];
  v13 = OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_onWatchlistSwitcherMenuPresentation;
  sub_22049D9F4();
  *&v6[v13] = [objc_allocWithZone(v14) init];
  v33.receiver = v6;
  v33.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton;
  v17 = *&v15[OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton];
  v18 = v15;
  [v18 addSubview_];
  v19 = *MEMORY[0x277D76558];
  v20 = *&v15[v16];
  v21 = [v20 accessibilityTraits];
  if ((v19 & ~v21) != 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  [v20 setAccessibilityTraits_];

  v23 = *&v15[v16];
  v24 = *&v18[OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_onWatchlistSwitcherMenuPresentation];
  v25 = v23;
  sub_22088E18C();

  v26 = *&v15[v16];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();
  v29 = v26;
  v30 = [v28 bundleForClass_];
  sub_220884CAC();

  v31 = sub_22089132C();

  [v29 setAccessibilityHint_];

  return v18;
}

void sub_2205D4340()
{
  sub_22049F710(&qword_281288A48, &unk_22089EFD4);

  JUMPOUT(0x223D86790);
}

uint64_t sub_2205D43BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2205D458C(uint64_t a1)
{
  result = sub_220886A4C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ManageWatchlistsContentMode(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2205D4658(uint64_t a1)
{
  sub_22057B2D0();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2205D46B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D4A44(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 56);
  sub_220596A24(a1, v16);
  sub_220596A24(a2, &v16[v18]);
  sub_22057B2D0();
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  if (v21(v16, 1, v19) == 1)
  {
    v22 = 1;
    v23 = v21(&v16[v18], 1, v20);
    v24 = type metadata accessor for ManageWatchlistsContentMode;
    if (v23 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_220596A24(v16, v12);
    if (v21(&v16[v18], 1, v20) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      v22 = MEMORY[0x223D7E940](v12, v8);
      v25 = *(v5 + 8);
      v25(v8, v4);
      v25(v12, v4);
      v24 = type metadata accessor for ManageWatchlistsContentMode;
      goto LABEL_8;
    }

    (*(v5 + 8))(v12, v4);
  }

  v22 = 0;
  v24 = sub_2205D4A44;
LABEL_8:
  sub_2205D4AA8(v16, v24);
  return v22 & 1;
}

uint64_t sub_2205D4974(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_2208928BC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_2208928BC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = type metadata accessor for WatchlistCellViewModel(0);
  if ((MEMORY[0x223D7EB90](a1 + *(v6 + 28), a2 + *(v6 + 28)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 32);

  return sub_2205D46B8(a1 + v7, a2 + v7);
}

void sub_2205D4A44(uint64_t a1)
{
  if (!qword_27CF57680)
  {
    type metadata accessor for ManageWatchlistsContentMode(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF57680);
    }
  }
}

uint64_t sub_2205D4AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2205D4B08(uint64_t *a1, double *a2, uint64_t a3)
{
  v4 = v3;
  v44 = *(a3 + OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_messageLabel);
  [v44 setFrame_];
  swift_beginAccess();
  v6 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v9 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v48 = v8;
  v10 = v9;
  v43 = v9;
  v11 = sub_220891F2C();
  v12 = MEMORY[0x277D740C0];
  *(inited + 40) = v11;
  v13 = *v12;
  *(inited + 64) = v10;
  *(inited + 72) = v13;
  v14 = v6[6];
  v15 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v14);
  v16 = *(v15 + 16);
  v17 = *(v16 + 40);
  v46 = v13;
  v18 = v17(v14, v16);
  v47 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 104) = v47;
  *(inited + 80) = v18;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v20 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2205D5138(&qword_28127E6A8, 255, type metadata accessor for Key, &unk_220899024);
  v21 = sub_22089125C();

  v22 = [v19 initWithString:v20 attributes:v21];

  [v44 setAttributedText_];
  v23 = *(a3 + OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_enableBilingualFeedButton);
  [v23 setFrame_];
  v24 = *__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_220899920;
  *(v25 + 32) = v48;
  *(v25 + 40) = sub_220891F2C();
  *(v25 + 64) = v43;
  *(v25 + 72) = v46;
  v27 = v24[6];
  v26 = v24[7];
  __swift_project_boxed_opaque_existential_1(v24 + 3, v27);
  v28 = (*(*(v26 + 16) + 128))(v27);
  *(v25 + 104) = v47;
  *(v25 + 80) = v28;
  sub_2204A5EAC(v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v30 = sub_22089132C();
  v31 = sub_22089125C();

  v32 = [v29 initWithString:v30 attributes:v31];

  [v23 setAttributedTitle:v32 forState:0];
  v33 = *(a3 + OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_neverShowBilingualFeedPromptsButton);
  [v33 setFrame_];
  v34 = *__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_220899920;
  *(v35 + 32) = v48;
  *(v35 + 40) = sub_220891F2C();
  *(v35 + 64) = v43;
  *(v35 + 72) = v46;
  v37 = v34[6];
  v36 = v34[7];
  __swift_project_boxed_opaque_existential_1(v34 + 3, v37);
  v38 = (*(*(v36 + 16) + 128))(v37);
  *(v35 + 104) = v47;
  *(v35 + 80) = v38;
  sub_2204A5EAC(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  v39 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v40 = sub_22089132C();
  v41 = sub_22089125C();

  v42 = [v39 initWithString:v40 attributes:v41];

  [v33 setAttributedTitle:v42 forState:0];
}

uint64_t sub_2205D50E0(uint64_t a1, uint64_t a2)
{
  result = sub_2205D5138(qword_281285058, a2, type metadata accessor for BilingualFeedPromptViewRenderer, &unk_22089F160);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2205D5138(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for StockFeedLayoutModel(uint64_t a1)
{
  result = qword_28128E7D0;
  if (!qword_28128E7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205D51CC(uint64_t a1)
{
  sub_22055D8C0(319);
  if (v1 <= 0x3F)
  {
    sub_2205D5348(319, qword_28128C5A8, type metadata accessor for StockFeedMastheadModel, &type metadata for StockFeedPriceViewLayoutAttributes);
    if (v2 <= 0x3F)
    {
      sub_2205D5348(319, qword_281293018, type metadata accessor for StockChartModel, &type metadata for StockChartViewLayoutAttributes);
      if (v3 <= 0x3F)
      {
        sub_2205D5348(319, qword_28128EE98, type metadata accessor for QuoteDetailViewModel, &type metadata for QuoteDetailViewLayoutAttributes);
        if (v4 <= 0x3F)
        {
          sub_2205D5348(319, &qword_281288D90, type metadata accessor for StockFeedEarningsViewModel, &type metadata for StockFeedEarningsViewLayoutAttributes);
          if (v5 <= 0x3F)
          {
            sub_220489710();
            if (v6 <= 0x3F)
            {
              sub_2205D53B8();
              if (v7 <= 0x3F)
              {
                sub_2204896C8();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2205D5348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *sub_2205D53B8()
{
  result = qword_281280BD8;
  if (!qword_281280BD8)
  {
    result = &type metadata for BilingualFeedPromptViewLayoutAttributes;
    atomic_store(&type metadata for BilingualFeedPromptViewLayoutAttributes, &qword_281280BD8);
  }

  return result;
}

__n128 sub_2205D53E8()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedMastheadViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StockFeedLayoutModel(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2205D7900(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2205D5348(0, qword_281293018, type metadata accessor for StockChartModel, &type metadata for StockChartViewLayoutAttributes);
        v25 = v14 + *(v24 + 48);
        v26 = *(v25 + 11);
        v46[10] = *(v25 + 10);
        v46[11] = v26;
        *&v46[12] = *(v25 + 24);
        v27 = *(v25 + 7);
        v46[6] = *(v25 + 6);
        v46[7] = v27;
        v28 = *(v25 + 9);
        v46[8] = *(v25 + 8);
        v46[9] = v28;
        v29 = *(v25 + 5);
        v46[4] = *(v25 + 4);
        v46[5] = v29;
        v30 = *(v25 + 3);
        v46[2] = *(v25 + 2);
        v46[3] = v30;
        v31 = *(v25 + 1);
        v46[0] = *v25;
        v46[1] = v31;
        sub_2205D79B8(v46);
        v44 = v46[0];
        v45 = v46[1];
        v23 = type metadata accessor for StockChartModel;
      }

      else
      {
        sub_2205D5348(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel, &type metadata for QuoteDetailViewLayoutAttributes);
        memcpy(v46, v14 + *(v37 + 48), 0x109uLL);
        sub_2205D7964(v46);
        v44 = v46[0];
        v45 = v46[1];
        v23 = type metadata accessor for QuoteDetailViewModel;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_2205D5348(0, qword_28128C5A8, type metadata accessor for StockFeedMastheadModel, &type metadata for StockFeedPriceViewLayoutAttributes);
        v34 = (v14 + *(v33 + 48));
        v35 = v34[1];
        v44 = *v34;
        v45 = v35;
      }

      else
      {
        sub_22055D8C0(0);
        sub_2205D7AE8(v14 + *(v16 + 48), v10, v17);
        v18 = &v10[*(v7 + 20)];
        v19 = *(v18 + 1);
        v44 = *v18;
        v45 = v19;
        sub_2205D7A0C(v10, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      }

      v23 = type metadata accessor for StockFeedMastheadModel;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v36 = v14[2];
      v44 = v14[1];
      v45 = v36;

      return v44;
    }

    sub_2205D5348(0, &qword_281288D90, type metadata accessor for StockFeedEarningsViewModel, &type metadata for StockFeedEarningsViewLayoutAttributes);
    v21 = (v14 + *(v20 + 48));
    v22 = v21[1];
    v44 = *v21;
    v45 = v22;
    v23 = type metadata accessor for StockFeedEarningsViewModel;
LABEL_16:
    sub_2205D7A0C(v14, v23);
    return v44;
  }

  if (EnumCaseMultiPayload == 6)
  {
    return *v14;
  }

  else
  {
    (*(v3 + 32))(v6, v14, v2);
    sub_22088FD6C();
    v43 = v39;
    v44 = v38;
    v45 = v40;
    v42 = v41;
    (*(v3 + 8))(v6, v2);
    result.n128_u64[0] = v44;
    result.n128_u64[1] = v43;
  }

  return result;
}

double sub_2205D5800(uint64_t a1)
{
  sub_2205145D0(&qword_28128E7F0, &unk_22089F200);

  sub_22088D90C();
  return result;
}

uint64_t sub_2205D588C()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedLayoutModel(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D7900(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD000000000000013;
      }

      else
      {
        (*(v3 + 32))(v6, v10, v2);
        v23 = sub_22088FD0C();
        (*(v3 + 8))(v6, v2);
        return v23;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_2205D7A0C(v10, type metadata accessor for StockFeedEarningsViewModel);
      return 0x73676E696E726165;
    }

    else
    {
      sub_2205D7A0C(v10, type metadata accessor for StockFeedLayoutModel);
      return 0x64726163616C70;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2205D5348(0, qword_281293018, type metadata accessor for StockChartModel, &type metadata for StockChartViewLayoutAttributes);
      v15 = &v10[*(v14 + 48)];
      v16 = *(v15 + 11);
      v24[10] = *(v15 + 10);
      v24[11] = v16;
      *&v24[12] = *(v15 + 24);
      v17 = *(v15 + 7);
      v24[6] = *(v15 + 6);
      v24[7] = v17;
      v18 = *(v15 + 9);
      v24[8] = *(v15 + 8);
      v24[9] = v18;
      v19 = *(v15 + 5);
      v24[4] = *(v15 + 4);
      v24[5] = v19;
      v20 = *(v15 + 3);
      v24[2] = *(v15 + 2);
      v24[3] = v20;
      v21 = *(v15 + 1);
      v24[0] = *v15;
      v24[1] = v21;
      sub_2205D79B8(v24);
      sub_2205D7A0C(v10, type metadata accessor for StockChartModel);
      return 0x7472616863;
    }

    else
    {
      sub_2205D5348(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel, &type metadata for QuoteDetailViewLayoutAttributes);
      memcpy(v24, &v10[*(v22 + 48)], 0x109uLL);
      sub_2205D7964(v24);
      sub_2205D7A0C(v10, type metadata accessor for QuoteDetailViewModel);
      return 0x74654465746F7571;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_2205D7A0C(v10, type metadata accessor for StockFeedMastheadModel);
    return 0x6563697270;
  }

  else
  {
    sub_22055D8C0(0);
    sub_2205D7A0C(&v10[*(v12 + 48)], type metadata accessor for StockFeedMastheadViewLayoutAttributes);
    sub_2205D7A0C(v10, type metadata accessor for StockFeedMastheadModel);
    return 0x646165687473616DLL;
  }
}

uint64_t sub_2205D5C6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22088FD8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockFeedLayoutModel(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D7900(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2205D5348(0, qword_281293018, type metadata accessor for StockChartModel, &type metadata for StockChartViewLayoutAttributes);
        v17 = &v12[*(v16 + 48)];
        v18 = *(v17 + 11);
        v28[10] = *(v17 + 10);
        v28[11] = v18;
        *&v28[12] = *(v17 + 24);
        v19 = *(v17 + 7);
        v28[6] = *(v17 + 6);
        v28[7] = v19;
        v20 = *(v17 + 9);
        v28[8] = *(v17 + 8);
        v28[9] = v20;
        v21 = *(v17 + 5);
        v28[4] = *(v17 + 4);
        v28[5] = v21;
        v22 = *(v17 + 3);
        v28[2] = *(v17 + 2);
        v28[3] = v22;
        v23 = *(v17 + 1);
        v28[0] = *v17;
        v28[1] = v23;
        sub_2205D79B8(v28);
        v15 = type metadata accessor for StockChartModel;
      }

      else
      {
        sub_2205D5348(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel, &type metadata for QuoteDetailViewLayoutAttributes);
        memcpy(v28, &v12[*(v25 + 48)], 0x109uLL);
        sub_2205D7964(v28);
        v15 = type metadata accessor for QuoteDetailViewModel;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22055D8C0(0);
        sub_2205D7A0C(&v12[*(v14 + 48)], type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      }

      v15 = type metadata accessor for StockFeedMastheadModel;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v15 = type metadata accessor for StockFeedEarningsViewModel;
    }

    else
    {
      v15 = type metadata accessor for StockFeedLayoutModel;
    }

LABEL_15:
    sub_2205D7A0C(v12, v15);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 6)
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_22088FD2C();
    return (*(v5 + 8))(v8, v4);
  }

LABEL_16:
  v26 = *MEMORY[0x277D6D2D8];
  v27 = sub_22088AA7C();
  return (*(*(v27 - 8) + 104))(a1, v26, v27);
}

uint64_t sub_2205D5FB0()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedLayoutModel(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D7900(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2205D5348(0, qword_281293018, type metadata accessor for StockChartModel, &type metadata for StockChartViewLayoutAttributes);
        v15 = &v10[*(v14 + 48)];
        v16 = *(v15 + 11);
        v25[10] = *(v15 + 10);
        v25[11] = v16;
        *&v25[12] = *(v15 + 24);
        v17 = *(v15 + 7);
        v25[6] = *(v15 + 6);
        v25[7] = v17;
        v18 = *(v15 + 9);
        v25[8] = *(v15 + 8);
        v25[9] = v18;
        v19 = *(v15 + 5);
        v25[4] = *(v15 + 4);
        v25[5] = v19;
        v20 = *(v15 + 3);
        v25[2] = *(v15 + 2);
        v25[3] = v20;
        v21 = *(v15 + 1);
        v25[0] = *v15;
        v25[1] = v21;
        sub_2205D79B8(v25);
        v13 = type metadata accessor for StockChartModel;
      }

      else
      {
        sub_2205D5348(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel, &type metadata for QuoteDetailViewLayoutAttributes);
        memcpy(v25, &v10[*(v24 + 48)], 0x109uLL);
        sub_2205D7964(v25);
        v13 = type metadata accessor for QuoteDetailViewModel;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22055D8C0(0);
        sub_2205D7A0C(&v10[*(v12 + 48)], type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      }

      v13 = type metadata accessor for StockFeedMastheadModel;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v13 = type metadata accessor for StockFeedEarningsViewModel;
    }

    else
    {
      v13 = type metadata accessor for StockFeedLayoutModel;
    }

LABEL_15:
    sub_2205D7A0C(v10, v13);
    return MEMORY[0x277D84F90];
  }

  if (EnumCaseMultiPayload != 6)
  {
    (*(v3 + 32))(v6, v10, v2);
    v22 = sub_22088FCFC();
    (*(v3 + 8))(v6, v2);
    return v22;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2205D62AC()
{
  v1 = v0;
  v2 = sub_22089056C();
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088FD8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for StockFeedLayoutModel(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D7900(v1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2205D5348(0, qword_281293018, type metadata accessor for StockChartModel, &type metadata for StockChartViewLayoutAttributes);
        v23 = &v18[*(v22 + 48)];
        v24 = *(v23 + 11);
        v39[10] = *(v23 + 10);
        v39[11] = v24;
        *&v39[12] = *(v23 + 24);
        v25 = *(v23 + 7);
        v39[6] = *(v23 + 6);
        v39[7] = v25;
        v26 = *(v23 + 9);
        v39[8] = *(v23 + 8);
        v39[9] = v26;
        v27 = *(v23 + 5);
        v39[4] = *(v23 + 4);
        v39[5] = v27;
        v28 = *(v23 + 3);
        v39[2] = *(v23 + 2);
        v39[3] = v28;
        v29 = *(v23 + 1);
        v39[0] = *v23;
        v39[1] = v29;
        sub_2205D79B8(v39);
        v21 = type metadata accessor for StockChartModel;
      }

      else
      {
        sub_2205D5348(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel, &type metadata for QuoteDetailViewLayoutAttributes);
        memcpy(v39, &v18[*(v35 + 48)], 0x109uLL);
        sub_2205D7964(v39);
        v21 = type metadata accessor for QuoteDetailViewModel;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22055D8C0(0);
        sub_2205D7A0C(&v18[*(v20 + 48)], type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      }

      v21 = type metadata accessor for StockFeedMastheadModel;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v21 = type metadata accessor for StockFeedEarningsViewModel;
    }

    else
    {
      v21 = type metadata accessor for StockFeedLayoutModel;
    }

LABEL_17:
    sub_2205D7A0C(v18, v21);
    return 0;
  }

  v30 = EnumCaseMultiPayload;
  result = 0;
  if (v30 != 6)
  {
    (*(v7 + 32))(v14, v18, v6);
    (*(v7 + 16))(v10, v14, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D327C8])
    {
      (*(v7 + 96))(v10, v6);
      v37 = *v10;
      sub_2205D7A6C(0);
      v32 = swift_projectBox();
      v33 = v38;
      (*(v38 + 16))(v5, v32, v2);
      sub_22089055C();
      __swift_project_boxed_opaque_existential_1(v39, *(&v39[1] + 1));
      v34 = sub_22089080C();
      (*(v33 + 8))(v5, v2);
      (*(v7 + 8))(v14, v6);
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    else
    {
      v34 = sub_22088FD4C();
      v36 = *(v7 + 8);
      v36(v14, v6);
      v36(v10, v6);
    }

    return v34;
  }

  return result;
}

uint64_t sub_2205D6780@<X0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2D, #-8.0 }

  *a1 = _Q0;
  *(a1 + 16) = _Q0;
  *(a1 + 32) = 0x4018000000000000;
  v7 = *MEMORY[0x277D6DB08];
  v8 = sub_22088BCFC();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1, v7, v8);
}

double sub_2205D6830@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = sub_22088FD8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StockFeedLayoutModel(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D7900(v5, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2205D5348(0, qword_281293018, type metadata accessor for StockChartModel, &type metadata for StockChartViewLayoutAttributes);
        v21 = &v16[*(v20 + 48)];
        v22 = *(v21 + 11);
        v30[10] = *(v21 + 10);
        v30[11] = v22;
        *&v30[12] = *(v21 + 24);
        v23 = *(v21 + 7);
        v30[6] = *(v21 + 6);
        v30[7] = v23;
        v24 = *(v21 + 9);
        v30[8] = *(v21 + 8);
        v30[9] = v24;
        v25 = *(v21 + 5);
        v30[4] = *(v21 + 4);
        v30[5] = v25;
        v26 = *(v21 + 3);
        v30[2] = *(v21 + 2);
        v30[3] = v26;
        v27 = *(v21 + 1);
        v30[0] = *v21;
        v30[1] = v27;
        sub_2205D79B8(v30);
        v19 = type metadata accessor for StockChartModel;
      }

      else
      {
        sub_2205D5348(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel, &type metadata for QuoteDetailViewLayoutAttributes);
        memcpy(v30, &v16[*(v29 + 48)], 0x109uLL);
        sub_2205D7964(v30);
        v19 = type metadata accessor for QuoteDetailViewModel;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22055D8C0(0);
        sub_2205D7A0C(&v16[*(v18 + 48)], type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      }

      v19 = type metadata accessor for StockFeedMastheadModel;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v19 = type metadata accessor for StockFeedEarningsViewModel;
    }

    else
    {
      v19 = type metadata accessor for StockFeedLayoutModel;
    }

LABEL_15:
    sub_2205D7A0C(v16, v19);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 6)
  {
    (*(v9 + 32))(v12, v16, v8);
    a2(a1);
    (*(v9 + 8))(v12, v8);
    return result;
  }

LABEL_16:
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_2205D6B70@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_22088FD8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D7900(v3, v13);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_22088FD7C();
    v18 = v20;
    v19 = v21;
    v14 = v22;
    result = (*(v6 + 8))(v9, v5);
    v16 = v18;
    v17 = v19;
  }

  else
  {
    result = sub_2205D7A0C(v13, type metadata accessor for StockFeedLayoutModel);
    v16 = 0uLL;
    v14 = 1;
    v17 = 0uLL;
  }

  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_2205D6D18(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22088FD8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D7900(v2, v11);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    (*(v4 + 32))(v7, v11, v3);
    v12 = sub_22088FD3C();
    (*(v4 + 8))(v7, v3);
    return v12;
  }

  else
  {
    sub_2205D7A0C(v11, type metadata accessor for StockFeedLayoutModel);
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2205D6E94()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedLayoutModel(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D7900(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2205D5348(0, qword_281293018, type metadata accessor for StockChartModel, &type metadata for StockChartViewLayoutAttributes);
        v15 = &v10[*(v14 + 48)];
        v16 = *(v15 + 11);
        v25[10] = *(v15 + 10);
        v25[11] = v16;
        *&v25[12] = *(v15 + 24);
        v17 = *(v15 + 7);
        v25[6] = *(v15 + 6);
        v25[7] = v17;
        v18 = *(v15 + 9);
        v25[8] = *(v15 + 8);
        v25[9] = v18;
        v19 = *(v15 + 5);
        v25[4] = *(v15 + 4);
        v25[5] = v19;
        v20 = *(v15 + 3);
        v25[2] = *(v15 + 2);
        v25[3] = v20;
        v21 = *(v15 + 1);
        v25[0] = *v15;
        v25[1] = v21;
        sub_2205D79B8(v25);
        v13 = type metadata accessor for StockChartModel;
      }

      else
      {
        sub_2205D5348(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel, &type metadata for QuoteDetailViewLayoutAttributes);
        memcpy(v25, &v10[*(v23 + 48)], 0x109uLL);
        sub_2205D7964(v25);
        v13 = type metadata accessor for QuoteDetailViewModel;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22055D8C0(0);
        sub_2205D7A0C(&v10[*(v12 + 48)], type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      }

      v13 = type metadata accessor for StockFeedMastheadModel;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v13 = type metadata accessor for StockFeedEarningsViewModel;
    }

    else
    {
      v13 = type metadata accessor for StockFeedLayoutModel;
    }

LABEL_15:
    sub_2205D7A0C(v10, v13);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 6)
  {
LABEL_16:
    v22 = 1;
    return v22 & 1;
  }

  (*(v3 + 32))(v6, v10, v2);
  v22 = sub_22088FD5C();
  (*(v3 + 8))(v6, v2);
  return v22 & 1;
}

uint64_t sub_2205D718C()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedLayoutModel(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D7900(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2205D5348(0, qword_281293018, type metadata accessor for StockChartModel, &type metadata for StockChartViewLayoutAttributes);
        v15 = &v10[*(v14 + 48)];
        v16 = *(v15 + 11);
        v25[10] = *(v15 + 10);
        v25[11] = v16;
        *&v25[12] = *(v15 + 24);
        v17 = *(v15 + 7);
        v25[6] = *(v15 + 6);
        v25[7] = v17;
        v18 = *(v15 + 9);
        v25[8] = *(v15 + 8);
        v25[9] = v18;
        v19 = *(v15 + 5);
        v25[4] = *(v15 + 4);
        v25[5] = v19;
        v20 = *(v15 + 3);
        v25[2] = *(v15 + 2);
        v25[3] = v20;
        v21 = *(v15 + 1);
        v25[0] = *v15;
        v25[1] = v21;
        sub_2205D79B8(v25);
        v13 = type metadata accessor for StockChartModel;
      }

      else
      {
        sub_2205D5348(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel, &type metadata for QuoteDetailViewLayoutAttributes);
        memcpy(v25, &v10[*(v23 + 48)], 0x109uLL);
        sub_2205D7964(v25);
        v13 = type metadata accessor for QuoteDetailViewModel;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22055D8C0(0);
        sub_2205D7A0C(&v10[*(v12 + 48)], type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      }

      v13 = type metadata accessor for StockFeedMastheadModel;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v13 = type metadata accessor for StockFeedEarningsViewModel;
    }

    else
    {
      v13 = type metadata accessor for StockFeedLayoutModel;
    }

LABEL_15:
    sub_2205D7A0C(v10, v13);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 6)
  {
LABEL_16:
    v22 = 0;
    return v22 & 1;
  }

  (*(v3 + 32))(v6, v10, v2);
  v22 = sub_22088FD1C();
  (*(v3 + 8))(v6, v2);
  return v22 & 1;
}

uint64_t sub_2205D7484()
{
  v1 = v0;
  v2 = sub_22088FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedLayoutModel(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D7900(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2205D5348(0, qword_281293018, type metadata accessor for StockChartModel, &type metadata for StockChartViewLayoutAttributes);
        v15 = &v10[*(v14 + 48)];
        v16 = *(v15 + 11);
        v26[10] = *(v15 + 10);
        v26[11] = v16;
        *&v26[12] = *(v15 + 24);
        v17 = *(v15 + 7);
        v26[6] = *(v15 + 6);
        v26[7] = v17;
        v18 = *(v15 + 9);
        v26[8] = *(v15 + 8);
        v26[9] = v18;
        v19 = *(v15 + 5);
        v26[4] = *(v15 + 4);
        v26[5] = v19;
        v20 = *(v15 + 3);
        v26[2] = *(v15 + 2);
        v26[3] = v20;
        v21 = *(v15 + 1);
        v26[0] = *v15;
        v26[1] = v21;
        sub_2205D79B8(v26);
        v13 = type metadata accessor for StockChartModel;
      }

      else
      {
        sub_2205D5348(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel, &type metadata for QuoteDetailViewLayoutAttributes);
        memcpy(v26, &v10[*(v24 + 48)], 0x109uLL);
        sub_2205D7964(v26);
        v13 = type metadata accessor for QuoteDetailViewModel;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22055D8C0(0);
        sub_2205D7A0C(&v10[*(v12 + 48)], type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      }

      v13 = type metadata accessor for StockFeedMastheadModel;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v13 = type metadata accessor for StockFeedEarningsViewModel;
    }

    else
    {
      v13 = type metadata accessor for StockFeedLayoutModel;
    }

LABEL_15:
    sub_2205D7A0C(v10, v13);
    return 0;
  }

  v22 = 0;
  if (EnumCaseMultiPayload != 6)
  {
    (*(v3 + 32))(v6, v10, v2);
    v23 = sub_22088FCEC();
    (*(v3 + 8))(v6, v2);
    return v23;
  }

  return v22;
}

uint64_t sub_2205D7784(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22088FD8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D7900(v2, v11);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    (*(v4 + 32))(v7, v11, v3);
    v12 = sub_22088FCDC();
    (*(v4 + 8))(v7, v3);
    return v12;
  }

  else
  {
    sub_2205D7A0C(v11, type metadata accessor for StockFeedLayoutModel);
    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_2205D7900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205D7A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2205D7A6C(uint64_t a1)
{
  if (!qword_27CF57688)
  {
    sub_22089056C();
    sub_22089054C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF57688);
    }
  }
}

uint64_t sub_2205D7AE8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for StockFeedMastheadViewLayoutAttributes(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2205D7B4C(void *a1, char a2)
{
  v4 = [a1 titleLabel];
  if (v4)
  {
    v16 = v4;
    v5 = [v4 font];
    if (v5)
    {
      v6 = v5;
      v7 = [v16 color];
      if (v7)
      {
        v8.super.isa = v7;
        v9 = [a1 currentAttributedTitle];
        if (v9)
        {
          v10 = v9;
          if (a2)
          {
            v11 = sub_2208928BC();
          }

          else
          {
            v11 = 1;
          }

          isa = NSAttributedString.appendingAccessibilityDWCPriceChangeArrow(pointingUpward:withFont:withColor:)(v11 & 1, v6, v8).super.isa;
          [a1 setAttributedTitle:isa forState:0];

          v14 = v8.super.isa;
          v8.super.isa = isa;
        }

        else
        {
          v10 = v6;
          v14 = v16;
        }

        v13 = v10;
        v6 = v8.super.isa;
      }

      else
      {
        v13 = v16;
      }

      v12 = v6;
    }

    else
    {
      v12 = v16;
    }
  }
}

void sub_2205D7CD4(uint64_t a1, double *a2, char *a3)
{
  [a3 setHidden_];
  v7 = [a3 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8)
  {
    v9 = v8 == 2;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    [a3 setFrame_];

    [a3 setHidden_];
  }

  else if (v8 == 1)
  {
    [a3 setFrame_];
    v10 = *&a3[OBJC_IVAR____TtC8StocksUI18StockFeedPriceView_quoteSummaryView];
    [v10 &off_27844B978];
    v11 = type metadata accessor for StockFeedMastheadModel(0);
    v12 = *(v11 + 28);
    memcpy(__dst, a2 + 8, 0x1A1uLL);
    sub_220510818((a1 + v12), __dst, v10);
    v35 = *&a3[OBJC_IVAR____TtC8StocksUI18StockFeedPriceView_exchangeLabel];
    swift_beginAccess();
    sub_22046DA2C(v3 + 16, v36);
    v13 = __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_2204C4258(a1 + *(v11 + 20));
    v14 = *v13;
    sub_2204A5DF0(0);
    inited = swift_initStackObject();
    v16 = MEMORY[0x277D740A8];
    *(inited + 16) = xmmword_220899920;
    v17 = *v16;
    *(inited + 32) = *v16;
    v18 = v14[2];
    v19 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
    v20 = MEMORY[0x277D740C0];
    *(inited + 40) = v18;
    v21 = *v20;
    *(inited + 64) = v19;
    *(inited + 72) = v21;
    v22 = v14[6];
    v23 = v14[7];
    __swift_project_boxed_opaque_existential_1(v14 + 3, v22);
    v24 = *(v23 + 16);
    v25 = *(v24 + 216);
    v26 = v17;
    v27 = v18;
    v28 = v21;
    v29 = v25(v22, v24);
    *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
    *(inited + 80) = v29;
    sub_2204A5EAC(inited);
    swift_setDeallocating();
    sub_2204A5D84(0);
    swift_arrayDestroy();
    v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v31 = sub_22089132C();

    type metadata accessor for Key(0);
    sub_2205D81E4(&qword_28127E6A8, 255, type metadata accessor for Key, &unk_220899024);
    v32 = sub_22089125C();

    v33 = [v30 initWithString:v31 attributes:v32];

    [v35 setAttributedText_];
    __swift_destroy_boxed_opaque_existential_1(v36);
    [v35 setFrame_];
    v34 = [objc_opt_self() clearColor];
    [a3 setBackgroundColor_];
  }

  else
  {
    sub_22089267C();
    __break(1u);
  }
}

uint64_t sub_2205D8128()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2205D818C(uint64_t a1, uint64_t a2)
{
  result = sub_2205D81E4(qword_281288CD8, a2, type metadata accessor for StockFeedPriceViewRenderer, &unk_22089F4FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2205D81E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t SceneStateManagerBridge.__allocating_init(activityReceiver:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SceneStateManagerBridge.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2205D8314(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + 16);
  swift_unknownObjectRetain();
  v6 = sub_22089132C();
  [v5 *a3];
  swift_unknownObjectRelease();
}

void sub_2205D83BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *(v5 + 16);
  swift_unknownObjectRetain();
  v8 = sub_22089132C();
  [v7 *a5];
  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for HeadlineViewModel(uint64_t a1)
{
  result = qword_27CF57690;
  if (!qword_27CF57690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2205D84E4(uint64_t a1)
{
  result = sub_22088698C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2205D858C(uint64_t a1)
{
  if (qword_2812925E8 != -1)
  {
    swift_once();
  }

  v2 = qword_2812925F0;
  v3 = sub_220891AFC();
  sub_22088A7EC("Disabled auto-refresh", 21, 2, &dword_22043F000, v2, v3, MEMORY[0x277D84F90]);
  *(v1 + 152) = 0;
  v4 = *(v1 + 160);
  if (v4)
  {
    [v4 invalidate];
    v4 = *(v1 + 160);
  }

  *(v1 + 160) = 0;
}

void sub_2205D8640(uint64_t a1, uint64_t *a2)
{
  if (qword_2812925E8 != -1)
  {
    swift_once();
  }

  v2 = qword_2812925F0;
  v3 = sub_220891AFC();
  sub_22088A7EC("Auto-refresh timer fired", 24, 2, &dword_22043F000, v2, v3, MEMORY[0x277D84F90]);
  sub_22088582C();
  sub_220888FBC();
  sub_220888DEC();

  v4 = sub_220888D9C();
  sub_220888F0C();

  sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v5 = sub_220891D0C();
  sub_220888E6C();
}

uint64_t sub_2205D885C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_2205D88BC(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_2208925EC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2204A7FA8(i, v5);
    sub_22044D56C(0, &qword_28127E670, 0x277D750A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2208925CC();
    sub_2208925FC();
    sub_22089260C();
    sub_2208925DC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_2205D89C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_2812925E8 != -1)
  {
    swift_once();
  }

  v6 = qword_2812925F0;
  v7 = sub_220891ADC();
  sub_22048D7F8(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22089B140;
  sub_22089187C();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = sub_22089287C();
    v12 = v11;
    v13 = MEMORY[0x277D837D0];
    *(v8 + 56) = MEMORY[0x277D837D0];
    v14 = sub_22048D860();
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    *(v8 + 96) = v13;
    *(v8 + 104) = v14;
    *(v8 + 64) = v14;
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;
    sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);

    sub_22089264C();
    *(v8 + 136) = v13;
    *(v8 + 144) = v14;
    *(v8 + 112) = 0;
    *(v8 + 120) = 0xE000000000000000;
    sub_22088A7EC("Failed to refresh watchlist price data, time=%{public}@ms, identifier=%{public}@, error=%{public}@", 98, 2, &dword_22043F000, v6, v7, v8);

    return;
  }

LABEL_9:
  __break(1u);
}

double sub_2205D8BAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088685C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  sub_220462120(0, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  sub_220888FBC();
  sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v7 = sub_220891D0C();
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  type metadata accessor for StockPriceDataRefreshManager();
  sub_220888E6C();

  return result;
}

double sub_2205D8DA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v5 = sub_22088F11C();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22088F14C();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v8);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22088F12C();
  v10 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088685C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v18 = *a1;
  v19 = a3;
  if (!sub_2206FA138(a3, v18))
  {
    v21 = *(v43 + 144);
    v36 = v5;
    v33 = v19;
    v34 = v15;
    v22 = *(v15 + 16);
    v22(&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v14);
    [v21 addObject_];
    swift_unknownObjectRelease();
    sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
    v23 = v37;
    (*(v10 + 104))(v13, *MEMORY[0x277D851C8], v37);
    v35 = sub_220891D3C();
    (*(v10 + 8))(v13, v23);
    v22(&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v14);
    v24 = v34;
    v25 = (*(v34 + 80) + 24) & ~*(v34 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v43;
    (*(v24 + 32))(v26 + v25, &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    aBlock[4] = sub_2205D9C7C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2204C35E8;
    aBlock[3] = &block_descriptor_8;
    v27 = _Block_copy(aBlock);

    v28 = v38;
    sub_22088F13C();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_2204620D8(&qword_281296CA0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v29 = MEMORY[0x277D85198];
    sub_220462120(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_22046CEB0(&qword_28127EA50, &qword_28127EA60, v29);
    v30 = v40;
    v31 = v36;
    sub_2208923FC();
    v32 = v35;
    MEMORY[0x223D89EC0](0, v28, v30, v27);
    _Block_release(v27);

    (*(v42 + 8))(v30, v31);
    (*(v39 + 8))(v28, v41);
  }

  return result;
}

uint64_t sub_2205D92C0(void *a1)
{
  v2 = sub_22088831C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v18 - v9;
  v11 = a1[10];
  v18[1] = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v11);
  sub_220599F20();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220899360;
  *(v12 + 32) = sub_22088681C();
  *(v12 + 40) = v13;
  v14 = *MEMORY[0x277D6CA28];
  v15 = *(v3 + 104);
  v15(v10, v14, v2);
  v15(v6, v14, v2);
  sub_2208862EC();

  v16 = *(v3 + 8);
  v16(v6, v2);
  return (v16)(v10, v2);
}

double sub_2205D9484(uint64_t a1)
{
  v3 = sub_22088685C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  sub_22088859C();
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_22088858C();

  return result;
}

uint64_t sub_2205D95D8(uint64_t a1)
{
  v3 = sub_22088685C();
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = *(v1 + 144);
  (*(v8 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  [v7 removeObject_];
  return swift_unknownObjectRelease();
}

uint64_t sub_2205D96CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_220888B8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2208859BC())
  {
    if (qword_2812925E8 != -1)
    {
      swift_once();
    }

    v7 = qword_2812925F0;
    v8 = sub_220891AFC();
    sub_22088A7EC("Background fetch will trigger watchlist price data refresh", 58, 2, &dword_22043F000, v7, v8, MEMORY[0x277D84F90]);
    v14[0] = 0x68736572666572;
    v14[1] = 0xE700000000000000;
    sub_2208885CC();
    v9 = sub_220888D9C();
    v10 = sub_220888E4C();

    return v10;
  }

  else
  {
    if (qword_2812925E8 != -1)
    {
      swift_once();
    }

    v12 = qword_2812925F0;
    v13 = sub_220891AFC();
    sub_22088A7EC("Background fetch will not trigger watchlist price data refresh because it's disabled in the app config", 102, 2, &dword_22043F000, v12, v13, MEMORY[0x277D84F90]);
    (*(v3 + 104))(v6, *MEMORY[0x277D6CD50], v2);
    sub_220462120(0, &unk_27CF576A0, MEMORY[0x277D6CD60], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }
}

uint64_t sub_2205D9948@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6CD58];
  v3 = sub_220888B8C();
  return (*(*(v3 - 8) + 104))(a1, v2, v3);
}

uint64_t sub_2205D9A18()
{
  sub_220885ACC();
  sub_220888FBC();

  v0 = sub_220888D9C();
  sub_220888B8C();
  v1 = sub_220888E3C();

  return v1;
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2205D9C94(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_22088685C() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_2205D9D20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220462120(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_2205D9E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v5 = MEMORY[0x277D83D88];
  sub_2205DC04C(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v67 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v69 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v8;
  MEMORY[0x28223BE20](v9, v10);
  v71 = v62 - v11;
  v65 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v65, v12);
  v72 = (v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_22089065C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v16 = sub_22089064C();
  v70 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D340D0];
  sub_2205DC04C(0, &unk_27CF576B0, MEMORY[0x277D340D0], v5);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = (v62 - v23);
  v25 = sub_220890A2C();
  MEMORY[0x28223BE20](v25, v26);
  v28 = v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v31 = v30;
  v33 = v32;
  sub_2205DC0B0(v29, v24, &unk_27CF576B0, v20, v5, sub_2205DC04C);
  v34 = *(v31 + 48);
  v73 = v33;
  if (v34(v24, 1, v33) == 1)
  {
    v35 = &unk_27CF576B0;
    v36 = MEMORY[0x277D340D0];
    v37 = MEMORY[0x277D83D88];
    v38 = sub_2205DC04C;
    v39 = v24;
LABEL_3:
    sub_2205DC250(v39, v35, v36, v37, v38);
    return result;
  }

  (*(v31 + 32))(v28, v24, v73);
  if (!a2)
  {
    (*(v31 + 8))(v28, v73);
    return result;
  }

  v64 = v31;

  v41 = sub_220890A0C();
  sub_2205DC04C(0, &qword_27CF57720, type metadata accessor for ActivityType, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = sub_220891B1C();
  sub_2207E18FC(inited);
  v44 = v43;
  swift_setDeallocating();
  sub_2205DC2B0(inited + 32, type metadata accessor for ActivityType);
  LOBYTE(inited) = sub_22056F468(v41, v44);

  if ((inited & 1) == 0)
  {
    (*(v64 + 8))(v28, v73);
    goto LABEL_11;
  }

  v63 = v28;
  sub_220890A1C();
  sub_22089063C();
  (*(v70 + 8))(v19, v16);
  v45 = sub_22089053C();
  v46 = a2;
  v47 = v72;
  v48 = v71;
  if (!v45)
  {
LABEL_13:
    *v72 = v46;
    swift_storeEnumTagMultiPayload();
    v49 = sub_22088969C();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
    v82 = 0;
    memset(v81, 0, sizeof(v81));
    v80 = 0;
    memset(v79, 0, sizeof(v79));
    v78 = v66;
    sub_2205DC0B0(v79, &v74, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    v62[1] = a2;
    if (*(&v75 + 1))
    {
      sub_220458198(&v74, v76);

      v50 = sub_220597454(v76);
      v52 = v51;
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_1(v76);
    }

    else
    {

      sub_2205DC250(&v74, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v50 = qword_2812908F8;
      v52 = qword_281290900;
      v54 = qword_281290908;

      sub_2204A80F4(v52, v54);
    }

    v75 = 0u;
    v74 = 0u;
    v55 = v69;
    sub_2205DC0B0(v48, v69, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2205DC04C);
    sub_2205DC0B0(v81, v76, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    v56 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v57 = (v68 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    sub_2205A0994(v55, v58 + v56);
    v59 = v58 + v57;
    v60 = v76[1];
    *v59 = v76[0];
    *(v59 + 16) = v60;
    *(v59 + 32) = v77;
    v61 = (v58 + ((v57 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v61 = v50;
    v61[1] = v52;
    v61[2] = v54;

    sub_2204A80F4(v52, v54);
    sub_2204549FC(0);
    sub_2205DC208(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
    sub_22088E92C();

    sub_2204DA45C(v52, v54);
    sub_2205DC250(v79, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205DC250(v81, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2205DC250(v48, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_2205DC04C);
    sub_2205DC2B0(v47, type metadata accessor for StocksActivity);
    (*(v64 + 8))(v63, v73);
    v35 = &qword_28127DE00;
    v37 = MEMORY[0x277D83D88];
    v38 = sub_2204D0578;
    v39 = &v74;
    v36 = MEMORY[0x277D84F70] + 8;
    goto LABEL_3;
  }

  if (v45 != 4)
  {
    v46 = a2 | 0x2000000000000000;
    goto LABEL_13;
  }

  (*(v64 + 8))(v63, v73);
LABEL_11:

  return result;
}

uint64_t sub_2205DAA2C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v43 = a3;
  v6 = sub_22089064C();
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v45 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x277D340D0];
  v10 = MEMORY[0x277D83D88];
  sub_2205DC04C(0, &unk_27CF576B0, MEMORY[0x277D340D0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v42 - v13;
  v15 = sub_220890A2C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205DC0B0(a1, v14, &unk_27CF576B0, v9, v10, sub_2205DC04C);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_2205DC250(v14, &unk_27CF576B0, MEMORY[0x277D340D0], MEMORY[0x277D83D88], sub_2205DC04C);
  }

  (*(v16 + 32))(v19, v14, v15);
  if (a2)
  {
    sub_22088C4AC();
    sub_2204446D4(0, &qword_281297F10, MEMORY[0x277D6D540]);
    sub_22088731C();
    if (swift_dynamicCast())
    {
      v21 = sub_220890A0C();
      v22 = sub_2205DAFF4(v21);

      if ((v22 & 1) == 0)
      {

        return (*(v16 + 8))(v19, v15);
      }

      v23 = v45;
      sub_220890A1C();
      v24 = v44;
      v25 = (*(v44 + 88))(v23, v6);
      if (v25 == *MEMORY[0x277D33958])
      {
        (*(v24 + 96))(v23, v6);
        v26 = *v23;

        sub_2205DB4B8(0, v27);
        v44 = *(v28 + 64);

        v29 = sub_220890A0C();
        v30 = swift_allocObject();
        v30[2] = v26;
        v30[3] = a2;
        v30[4] = v43;
        v30[5] = v29;
        swift_unknownObjectRetain();

        v31 = v29;
        sub_22088726C();
        swift_unknownObjectRelease();

        v32 = sub_22089065C();
        (*(*(v32 - 8) + 8))(v23 + v44, v32);
        return (*(v16 + 8))(v19, v15);
      }

      if (v25 == *MEMORY[0x277D33940])
      {

        (*(v24 + 96))(v23, v6);

        v33 = &unk_27CF576C0;
        v34 = &unk_27CF576C8;
        v35 = 0x277D310B0;
        v36 = "issue shareContext ";
      }

      else
      {
        if (v25 == *MEMORY[0x277D33930])
        {

          (*(v24 + 96))(v23, v6);
          swift_unknownObjectRelease();
          sub_2205DB434(0);
          goto LABEL_14;
        }

        v40 = *MEMORY[0x277D33938];
        v41 = v25;

        if (v41 != v40)
        {
          (*(v24 + 8))(v23, v6);
          return (*(v16 + 8))(v19, v15);
        }

        (*(v24 + 96))(v23, v6);

        v33 = &unk_27CF576D0;
        v34 = &unk_27CF576D8;
        v35 = 0x277D30FB0;
        v36 = "feedDescriptor shareContext ";
      }

      sub_2205DB3B8(0, v33, v34, v35, v36);
LABEL_14:
      v38 = *(v37 + 48);
      v39 = sub_22089065C();
      (*(*(v39 - 8) + 8))(v23 + v38, v39);
    }
  }

  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_2205DAFF4(uint64_t a1)
{
  v1 = sub_220891B6C();
  v2 = sub_22089136C();
  v4 = v3;
  if (v2 == sub_22089136C() && v4 == v5)
  {
    goto LABEL_3;
  }

  v6 = sub_2208928BC();

  if (v6)
  {
    goto LABEL_5;
  }

  v1 = sub_220891B5C();
  v9 = sub_22089136C();
  v11 = v10;
  if (v9 == sub_22089136C() && v11 == v12)
  {
    goto LABEL_3;
  }

  v13 = sub_2208928BC();

  if (v13)
  {
    goto LABEL_5;
  }

  v1 = sub_220891B0C();
  v14 = sub_22089136C();
  v16 = v15;
  if (v14 == sub_22089136C() && v16 == v17)
  {
    goto LABEL_3;
  }

  v18 = sub_2208928BC();

  if (v18)
  {
    goto LABEL_5;
  }

  v1 = sub_220891B3C();
  v19 = sub_22089136C();
  v21 = v20;
  if (v19 == sub_22089136C() && v21 == v22)
  {
    goto LABEL_3;
  }

  v23 = sub_2208928BC();

  if (v23)
  {
    goto LABEL_5;
  }

  v1 = sub_220891B1C();
  v24 = sub_22089136C();
  v26 = v25;
  if (v24 == sub_22089136C() && v26 == v27)
  {
    goto LABEL_3;
  }

  v28 = sub_2208928BC();

  if (v28)
  {
    goto LABEL_5;
  }

  v1 = sub_220891B2C();
  v29 = sub_22089136C();
  v31 = v30;
  if (v29 == sub_22089136C() && v31 == v32)
  {
    goto LABEL_3;
  }

  v33 = sub_2208928BC();

  if (v33)
  {
    goto LABEL_5;
  }

  v1 = sub_220891B4C();
  v34 = sub_22089136C();
  v36 = v35;
  if (v34 == sub_22089136C() && v36 == v37)
  {
LABEL_3:

LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v38 = sub_2208928BC();

  if (v38)
  {
    goto LABEL_5;
  }

  v39 = sub_22089132C();
  v40 = sub_22089136C();
  v42 = v41;
  if (v40 == sub_22089136C() && v42 == v43)
  {

    v7 = 0;
  }

  else
  {
    v44 = sub_2208928BC();

    v7 = v44 ^ 1;
  }

  return v7 & 1;
}

void sub_2205DB3B8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_22044D56C(255, a3, a4);
    sub_22089065C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2205DB434(uint64_t a1)
{
  if (!qword_27CF576E0)
  {
    sub_22044869C(255, &qword_27CF576E8, &protocolRef_FCTagProviding);
    sub_22089065C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF576E0);
    }
  }
}

void sub_2205DB4B8(uint64_t a1, uint64_t a2)
{
  if (!qword_27CF576F0)
  {
    MEMORY[0x28223BE20](a1, a2);
    sub_22044869C(255, &qword_28127E730, &protocolRef_FCHeadlineProviding);
    sub_220448488();
    sub_22089065C();
    sub_2204D0578(255, &qword_28127EBE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27CF576F0);
    }
  }
}

uint64_t sub_2205DB614(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v72 = a5;
  v77 = a4;
  v85 = a1;
  v86 = a3;
  v6 = sub_22088975C();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v73 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2208891DC();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v9);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_220889BFC();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v11);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205DC04C(0, &qword_27CF57700, MEMORY[0x277D6E130], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v60 - v15;
  v17 = sub_22088929C();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v65 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22088907C();
  v67 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2208895EC();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v80 = a2;
  sub_2206F61F0(v27);
  sub_2205DC04C(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v29 = v28;
  v30 = sub_220886F8C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v82 = *(v31 + 80);
  v83 = v32;
  v78 = v29;
  v34 = swift_allocObject();
  v84 = xmmword_220899360;
  *(v34 + 16) = xmmword_220899360;
  v36 = *(v31 + 104);
  v35 = v31 + 104;
  v37 = *MEMORY[0x277CEAD18];
  v79 = v30;
  v81 = v36;
  (v36)(v34 + v33);
  sub_2205DC208(&qword_2812984B0, MEMORY[0x277D686A0], MEMORY[0x277D68698]);
  v68 = "xt feedItemIdentifier ";
  sub_220886F1C();

  (*(v24 + 8))(v27, v23);
  if (v86)
  {
    sub_22088C4CC();
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = sub_22088CA0C();
  (*(*(v39 - 8) + 56))(v16, v38, 1, v39);
  sub_2208892AC();
  sub_22088906C();
  v86 = v33;
  v40 = swift_allocObject();
  *(v40 + 16) = v84;
  v64 = v35;
  v41 = v81;
  v81(v40 + v86, v37, v79);
  sub_2205DC208(&unk_27CF57B10, MEMORY[0x277D68200], MEMORY[0x277D681F8]);
  v42 = v76;
  sub_220886F1C();

  (*(v67 + 8))(v22, v42);
  v43 = v69;
  sub_2206F69A0(v77[10]);
  v44 = swift_allocObject();
  *(v44 + 16) = v84;
  LODWORD(v76) = v37;
  v45 = v79;
  v41(v44 + v86, v37, v79);
  sub_2205DC208(&qword_281298370, MEMORY[0x277D68B40], MEMORY[0x277D68B38]);
  v46 = v71;
  sub_220886F1C();

  v47 = v43;
  v48 = v45;
  v49 = v86;
  (*(v70 + 8))(v47, v46);
  v50 = [v80 sourceChannel];
  if (v50)
  {
    v51 = v50;
    __swift_project_boxed_opaque_existential_1(v77 + 5, v77[8]);
    v52 = v61;
    sub_2206EC95C(v51, v53);
    v54 = swift_allocObject();
    *(v54 + 16) = v84;
    v81(v54 + v49, v76, v45);
    sub_2205DC208(&qword_281298560, MEMORY[0x277D68340], MEMORY[0x277D68338]);
    v55 = v63;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v62 + 8))(v52, v55);
  }

  sub_22089136C();
  v56 = v73;
  sub_22088974C();
  v57 = swift_allocObject();
  *(v57 + 16) = v84;
  v81(v57 + v49, v76, v48);
  sub_2205DC208(&qword_27CF57708, MEMORY[0x277D68750], MEMORY[0x277D68748]);
  v58 = v75;
  sub_220886F1C();

  (*(v74 + 8))(v56, v58);
  sub_22088911C();
  sub_2205DC208(&unk_27CF57710, MEMORY[0x277D68260], MEMORY[0x277D68258]);
  memset(v87, 0, sizeof(v87));
  sub_220886F3C();
  return sub_2205DC250(v87, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2204D0578);
}

void sub_2205DC04C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2205DC0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2205DC124()
{
  sub_2205DC04C(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);

  return sub_220598700();
}

uint64_t sub_2205DC208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2205DC250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2205DC2B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2205DC310(uint64_t a1)
{
  if (*(v1 + *(a1 + 24)))
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return sub_2208916FC();
  }
}

unint64_t sub_2205DC334(uint64_t a1)
{
  if (*(v1 + *(a1 + 24)))
  {
    return sub_2205CEB84(MEMORY[0x277D84F90]);
  }

  else
  {
    return sub_22089170C();
  }
}

uint64_t sub_2205DC358(uint64_t a1)
{
  sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  sub_22051E1E0(v1 + *(a1 + 28), &v10 - v5);
  v7 = sub_22088F39C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_2205DCAD4(v6);
  }

  sub_22088F30C();
  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_2205DC4D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - v8;
  sub_22051E1E0(v3 + *(a1 + 28), &v13 - v8);
  v10 = sub_22088F39C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2205DCAD4(v9);
  }

  a3();
  return (*(v11 + 8))(v9, v10);
}

uint64_t sub_2205DC628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v27 - v11;
  sub_22051E1E0(a1 + *(a3 + 28), &v27 - v11);
  v13 = sub_22088F39C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    sub_2205DCAD4(v12);
    v16 = sub_22088677C();
    v18 = v17;
  }

  else
  {
    v16 = sub_22088F2EC();
    v18 = v19;
    (*(v14 + 8))(v12, v13);
  }

  sub_22051E1E0(v28 + *(a3 + 28), v8);
  if (v15(v8, 1, v13) == 1)
  {
    sub_2205DCAD4(v8);
    v20 = sub_22088677C();
    v22 = v21;
  }

  else
  {
    v20 = sub_22088F2EC();
    v22 = v23;
    (*(v14 + 8))(v8, v13);
  }

  if (v16 == v20 && v18 == v22)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_2208928BC();
  }

  return v25 & 1;
}

uint64_t sub_2205DC874(uint64_t a1)
{
  sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  sub_22051E1E0(v1 + *(a1 + 28), &v11 - v5);
  v7 = sub_22088F39C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2205DCAD4(v6);
    return sub_22088677C();
  }

  else
  {
    v10 = sub_22088F2EC();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

uint64_t sub_2205DC9C4(uint64_t a1)
{
  v2 = sub_2205DCB60(&qword_27CF57740, &unk_22089F8A8);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2205DCAD4(uint64_t a1)
{
  sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2205DCB60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockForYouFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2205DCBCC(uint64_t a1)
{
  sub_22088685C();
  if (v1 <= 0x3F)
  {
    sub_220453C08(319, &qword_28127EB30, MEMORY[0x277D69858], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_220453C08(319, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2205DCCD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088685C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unownedRetainStrong();

    (*(v4 + 16))(v7, a2, v3);
    __swift_project_boxed_opaque_existential_1((*(Strong + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 48), *(*(Strong + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 72));
    sub_2207C6D50(v7);
    (*(v4 + 8))(v7, v3);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2205DCE10()
{
  sub_22054B9F8((v0 + 2));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  return swift_deallocClassInstance();
}

void sub_2205DCFA0()
{
  v1 = *(type metadata accessor for StockSectionFooterViewModel(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_2205DCCD0(v2, v3);
}

void sub_2205DD068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2205DD0F0(void *a1)
{
  v1 = [a1 activityType];
  v2 = sub_22089136C();
  v4 = v3;

  if (v2 == 0xD000000000000016 && 0x80000002208C4AC0 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_2208928BC();
  }

  return v6 & 1;
}

uint64_t sub_2205DD190(void *a1)
{
  v2 = v1;
  v4 = sub_22088F11C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088F14C();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088F12C();
  v34 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI27StocksV1UserActivityHandler_featureAvailability), *(v1 + OBJC_IVAR____TtC8StocksUI27StocksV1UserActivityHandler_featureAvailability + 24));
  if ((sub_22089084C() & 1) == 0)
  {
    return 0;
  }

  v16 = [a1 userInfo];
  v17 = MEMORY[0x277D84F70];
  if (!v16)
  {
    goto LABEL_9;
  }

  v18 = v16;
  v19 = sub_22089126C();

  v44 = 0x6B636F7453;
  v45 = 0xE500000000000000;
  sub_2208924DC();
  if (!*(v19 + 16) || (v20 = sub_2205CE060(&aBlock), (v21 & 1) == 0))
  {

    sub_2205CFD84(&aBlock);
LABEL_9:
    v46 = 0u;
    v47 = 0u;
    goto LABEL_10;
  }

  sub_2204A7FA8(*(v19 + 56) + 32 * v20, &v46);
  sub_2205CFD84(&aBlock);

  if (*(&v47 + 1))
  {
    if (swift_dynamicCast())
    {
      v23 = aBlock;
      v22 = v39;
      sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
      v24 = v34;
      (*(v34 + 104))(v15, *MEMORY[0x277D851B8], v12);
      v33 = sub_220891D3C();
      (*(v24 + 8))(v15, v12);
      v25 = swift_allocObject();
      v25[2] = v2;
      v25[3] = v23;
      v25[4] = v22;
      v42 = sub_2205DE330;
      v43 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_2204C35E8;
      v41 = &block_descriptor_9;
      v26 = _Block_copy(&aBlock);

      sub_22088F13C();
      *&v46 = MEMORY[0x277D84F90];
      sub_2204489E8(&qword_281296CA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_22046D600(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_2204B6C74();
      v27 = v37;
      sub_2208923FC();
      v28 = v33;
      MEMORY[0x223D89EC0](0, v11, v7, v26);
      _Block_release(v26);

      (*(v36 + 8))(v7, v27);
      (*(v35 + 8))(v11, v8);

      return 1;
    }

    goto LABEL_11;
  }

LABEL_10:
  sub_2205DE570(&v46, &qword_28127DE00, v17 + 8, MEMORY[0x277D83D88], sub_2205DE520);
LABEL_11:
  v30 = sub_220891ADC();
  sub_22044D56C(0, &qword_28127E420, 0x277D86200);
  v31 = sub_2208922DC();
  sub_22088A7EC("Missing 'Stock' key in userInfo for 'com.apple.stocks.basic' user activity, which indicates a bug in Stocks V1 or in iOS", 120, 2, &dword_22043F000, v31, v30, MEMORY[0x277D84F90]);

  return 0;
}

double sub_2205DD708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088831C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8StocksUI27StocksV1UserActivityHandler_stockMetadataManager), *(a1 + OBJC_IVAR____TtC8StocksUI27StocksV1UserActivityHandler_stockMetadataManager + 24));
  sub_2205DE520(0, &qword_28127DEE8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_220899360;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  (*(v7 + 104))(v10, *MEMORY[0x277D6CA28], v6);

  sub_22088628C();

  (*(v7 + 8))(v10, v6);
  sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v12 = sub_220891D0C();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;

  sub_220888E4C();

  return result;
}

void sub_2205DD93C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  sub_22046D600(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v14, v15);
  v60 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088685C();
  v61 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v25 = &v54 - v24;
  v26 = *a1;
  if (*(*a1 + 16))
  {
    v56 = v23;
    v27 = sub_2204AF97C(a2, a3);
    if (v28)
    {
      v29 = v61;
      v30 = *(v61 + 16);
      v31 = v56;
      v30(v20, *(v26 + 56) + *(v61 + 72) * v27, v56);
      (*(v29 + 32))(v25, v20, v31);
      v54 = OBJC_IVAR____TtC8StocksUI27StocksV1UserActivityHandler_navigator;
      sub_2205DE35C(0);
      v33 = *(v32 + 48);
      v34 = v25;
      v35 = v60;
      v55 = v34;
      (v30)(v60);
      *(v35 + v33) = 0;
      type metadata accessor for StocksActivity.StockFeed(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v36 = sub_22088969C();
      v37 = v13;
      (*(*(v36 - 8) + 56))(v13, 1, 1, v36);
      v69 = 0;
      memset(v68, 0, sizeof(v68));
      v67 = 0;
      memset(v66, 0, sizeof(v66));
      sub_2205DE3C8(v66, &v62, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      if (*(&v63 + 1))
      {
        sub_220458198(&v62, v64);
        v38 = sub_220597454(v64);
        v40 = v39;
        v42 = v41;
        __swift_destroy_boxed_opaque_existential_1(v64);
      }

      else
      {
        sub_2205DE570(&v62, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        if (qword_2812908F0 != -1)
        {
          swift_once();
        }

        v38 = qword_2812908F8;
        v43 = qword_281290900;
        v42 = qword_281290908;

        v40 = v43;
        sub_2204A80F4(v43, v42);
        v35 = v60;
      }

      v62 = 0u;
      v63 = 0u;
      v44 = v13;
      v45 = v58;
      sub_2205DE3C8(v44, v58, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22046D600);
      sub_2205DE3C8(v68, v64, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
      v46 = *(v57 + 80);
      v60 = v37;
      v47 = (v46 + 24) & ~v46;
      v48 = (v8 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      sub_2205A0994(v45, v49 + v47);
      v50 = v49 + v48;
      v51 = v64[1];
      *v50 = v64[0];
      *(v50 + 16) = v51;
      *(v50 + 32) = v65;
      v52 = (v49 + ((v48 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v52 = v38;
      v52[1] = v40;
      v52[2] = v42;

      sub_2204A80F4(v40, v42);
      sub_22044A8CC(0);
      sub_2204489E8(&qword_281298040, sub_22044A8CC, MEMORY[0x277D6D358]);
      v53 = v70;
      sub_22088E92C();

      if (v53)
      {
        sub_2205DE570(&v62, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205DE520);
        sub_2205DE520(0, &qword_281298600, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_220888EBC();

        sub_2204DA45C(v40, v42);
        sub_2205DE570(v66, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        sub_2205DE570(v68, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        sub_2205DE570(v60, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22046D600);
        sub_2205BA954(v35);
        (*(v61 + 8))(v55, v56);
      }

      else
      {

        sub_2204DA45C(v40, v42);
        sub_2205DE570(v66, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        sub_2205DE570(v68, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        sub_2205DE570(v60, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22046D600);
        sub_2205BA954(v35);
        (*(v61 + 8))(v55, v56);
        sub_2205DE570(&v62, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205DE520);
      }
    }
  }
}

uint64_t sub_2205DE238()
{

  v1 = OBJC_IVAR____TtC8StocksUI27StocksV1UserActivityHandler_navigator;
  sub_22044A8CC(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI27StocksV1UserActivityHandler_featureAvailability));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI27StocksV1UserActivityHandler_stockMetadataManager));

  return swift_deallocClassInstance();
}

void sub_2205DE35C(uint64_t a1)
{
  if (!qword_281299050)
  {
    sub_22088685C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281299050);
    }
  }
}

uint64_t sub_2205DE3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2205DE43C()
{
  sub_22046D600(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);

  return sub_220598700();
}

void sub_2205DE520(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2205DE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2205DE5F8(void *a1, void (*a2)(char *))
{
  sub_22045BC08(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x277D6DF68], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

void sub_2205DE7A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v3;
      v18 = sub_2205DF1F8;
      v19 = v7;
      v14 = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v16 = sub_2204C35E8;
      v17 = &block_descriptor_10;
      v8 = _Block_copy(&v14);
      v9 = v5;
      v10 = v3;

      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      v18 = sub_2205DF200;
      v19 = v11;
      v14 = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v16 = sub_2206B2490;
      v17 = &block_descriptor_19_0;
      v12 = _Block_copy(&v14);
      v13 = v10;

      [v6 animateWithDuration:2 delay:v8 options:v12 animations:0.3 completion:0.0];

      _Block_release(v12);
      _Block_release(v8);
    }

    else
    {
    }
  }
}

id sub_2205DE9AC(void *a1, uint64_t a2)
{
  result = [a1 view];
  if (result)
  {
    v4 = result;
    [result setAlpha_];

    v5 = *(a2 + qword_281283B48);

    return [v5 setAlpha_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2205DEA2C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *MEMORY[0x277D85000] & *v2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_didMoveToParentViewController_, a1);
  sub_220888C9C();
  if (v6)
  {
    (*(*(v5 + 88) + 16))(v2, a1, *(v5 + 80));
  }
}

void sub_2205DEB08(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_2205DEA2C(a3, v6);
}

void sub_2205DEB74(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_2205DF1BC();
}

void sub_2205DEBE4(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_281283B30));
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_281283B38));

  v2 = *(a1 + qword_281283B48);
}

void sub_2205DEC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_220888C9C();
  if (v5)
  {
    sub_22088DC7C();
  }
}

void sub_2205DED14(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_220888C9C();
  if (v4)
  {
    sub_22088DC8C();
  }
}

uint64_t sub_2205DEE40()
{
  v1 = (v0 + qword_281283B30);
  swift_beginAccess();
  v2 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *v2;
  v5 = *(*v2 + 40);
  v4 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  (*(*(v4 + 16) + 464))(v5);
  v7 = v3[5];
  v6 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  (*(*(v6 + 16) + 88))(v7);
  return sub_22088B98C();
}

id sub_2205DEF40(uint64_t a1)
{
  sub_220888C9C();
  if (v4)
  {
    v2 = sub_22088BB1C();

    return v2;
  }

  else
  {

    return v1;
  }
}

uint64_t sub_2205DF010@<X0>(void *a1@<X8>)
{
  v3 = (v1 + qword_281283B30);
  swift_beginAccess();
  v4 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = *(*v4 + 40);
  v5 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v6);
  *a1 = (*(*(v5 + 16) + 472))(v6);
  v7 = *MEMORY[0x277D6E6D0];
  v8 = sub_22088D45C();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

void sub_2205DF134()
{
  v1 = qword_281283B48;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  sub_22089267C();
  __break(1u);
}

id sub_2205DF200()
{
  v1 = *(*(v0 + 16) + qword_281283B48);
  [v1 stopAnimating];

  return [v1 removeFromSuperview];
}

id sub_2205DF2D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdIgnorableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2205DF304()
{

  sub_220888DBC();

  return v1;
}

double sub_2205DF354()
{

  sub_220888DCC();

  return result;
}

double sub_2205DF3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_220888DCC();

  return result;
}

uint64_t sub_2205DF420()
{
  sub_2205DF654(0);
  v0 = sub_22088F46C();
  v2 = v1;
  if (v0 == sub_22088F46C() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2208928BC();
  }

  return v4 & 1;
}

uint64_t sub_2205DF4C4()
{
  sub_2205DF654(0);

  return sub_22088F46C();
}

uint64_t sub_2205DF4F0(uint64_t a1)
{
  v2 = sub_2205DF764(&qword_27CF57760, &unk_22089FF48);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t type metadata accessor for NewsPlacardStockFeedGroup(uint64_t a1)
{
  result = qword_2812898E8;
  if (!qword_2812898E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205DF654(uint64_t a1)
{
  if (!qword_281296C08)
  {
    sub_2205DF6BC();
    sub_2205DF710();
    v1 = sub_22088F4CC();
    if (!v2)
    {
      atomic_store(v1, &qword_281296C08);
    }
  }
}

unint64_t sub_2205DF6BC()
{
  result = qword_281281E90;
  if (!qword_281281E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281281E90);
  }

  return result;
}

unint64_t sub_2205DF710()
{
  result = qword_281281E98[0];
  if (!qword_281281E98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281281E98);
  }

  return result;
}

uint64_t sub_2205DF764(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NewsPlacardStockFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2205DF7D0(uint64_t a1)
{
  sub_2205DF654(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2205DF844(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](v2, a2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BE630(v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2204C6250(v4, type metadata accessor for StockListLayoutModel);
    }

    return 0;
  }

  else
  {
    sub_220455E3C(0);
    memcpy(v10, &v4[*(v8 + 48)], sizeof(v10));
    sub_2204C5E3C(v10);
    v9 = v10[4];
    sub_2204C6250(v4, type metadata accessor for StockViewModel);
    return v9;
  }
}

id sub_2205DF95C()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

uint64_t sub_2205DF9A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for StockListLayoutModel(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2204BE630(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2204C6250(v11, type metadata accessor for StockListLayoutModel);
    }

    v13 = sub_22088685C();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_220455E3C(0);
    memcpy(v18, &v11[*(v15 + 48)], sizeof(v18));
    sub_2204C5E3C(v18);
    sub_22050381C(v11, v7);
    v16 = sub_22088685C();
    v17 = *(v16 - 8);
    (*(v17 + 16))(a1, v7, v16);
    sub_2204C6250(v7, type metadata accessor for StockViewModel);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }
}

void sub_2205DFBC0(uint64_t a1)
{
  v3 = type metadata accessor for ManageWatchlistsContentMode(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v37 - v9;
  v11 = sub_22088A07C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v16, *MEMORY[0x277D68F90], v11, v14);
  v17 = sub_22088721C();
  (*(v12 + 8))(v16, v11);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v18 = type metadata accessor for ManageWatchlistsViewController(0);
  sub_220596A24(a1, v10);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_220596844(v10, v21 + v19);
  *(v21 + v20) = v17;

  v22 = sub_2208884AC();

  if (v22)
  {
    v23 = v38;
    sub_220596A24(a1, v38);
    sub_22057B2D0();
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      v39.receiver = v22;
      v39.super_class = v18;
      v25 = v22;
      objc_msgSendSuper2(&v39, sel_setEditing_animated_, 1, 0);
      sub_22088C70C();
      sub_22088C71C();
      v26 = sub_22088BFCC();

      [v26 setDragInteractionEnabled_];

      sub_22088C71C();
      v27 = sub_22088BFCC();

      [v27 setAllowsMultipleSelection_];

      v28 = [v25 navigationItem];
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() bundleForClass_];
      sub_220884CAC();

      v31 = sub_22089132C();

      [v28 setTitle_];
    }

    else
    {
      v32 = [v22 navigationItem];
      type metadata accessor for Localized();
      v33 = swift_getObjCClassFromMetadata();
      v34 = [objc_opt_self() bundleForClass_];
      sub_220884CAC();

      v35 = sub_22089132C();

      [v32 setTitle_];

      v36 = sub_22088685C();
      (*(*(v36 - 8) + 8))(v23, v36);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2205E0138(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ManageWatchlistsContentMode(0);
  sub_22088837C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  return sub_22088836C();
}

uint64_t sub_2205E01FC(void *a1)
{
  v3 = *(type metadata accessor for ManageWatchlistsContentMode(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2205E0138(a1, v1 + v4, v5);
}

void sub_2205E0298(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_22088685C();
    if (v2 <= 0x3F)
    {
      sub_2205EA904(319, &unk_281299470, sub_22046EAA0);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_2205E0428(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_2208914BC();
  return sub_22089157C();
}

void sub_2205E04EC(uint64_t a1@<X8>)
{
  sub_2205EA904(0, &unk_281299470, sub_22046EAA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15[-v9];
  v11 = *(*v1 + 224);
  swift_beginAccess();
  sub_2204B27FC(v1 + v11, v10, &unk_281299470, sub_22046EAA0);
  sub_22046EAA0(0);
  v13 = v12;
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v10, 1, v12) == 1)
  {
    sub_2205E8724(v10, &unk_281299470, sub_22046EAA0);
    sub_2205E0964(v1, &qword_27CF55C00, &qword_27CF59F58, sub_2207E8094, a1);
    sub_2205E89AC(a1, v6, sub_22046EAA0);
    (*(v14 + 56))(v6, 0, 1, v13);
    swift_beginAccess();
    sub_2205E9ED8(v6, v1 + v11);
    swift_endAccess();
  }

  else
  {
    sub_2205E9F58(v10, a1, sub_22046EAA0);
  }
}

void sub_2205E0728(uint64_t a1@<X8>)
{
  sub_2205EA904(0, &unk_281299470, sub_22046EAA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15[-v9];
  v11 = *(*v1 + 232);
  swift_beginAccess();
  sub_2204B27FC(v1 + v11, v10, &unk_281299470, sub_22046EAA0);
  sub_22046EAA0(0);
  v13 = v12;
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v10, 1, v12) == 1)
  {
    sub_2205E8724(v10, &unk_281299470, sub_22046EAA0);
    sub_2205E0964(v1, &qword_27CF55C08, &qword_27CF59F60, sub_2207E81E8, a1);
    sub_2205E89AC(a1, v6, sub_22046EAA0);
    (*(v14 + 56))(v6, 0, 1, v13);
    swift_beginAccess();
    sub_2205E9ED8(v6, v1 + v11);
    swift_endAccess();
  }

  else
  {
    sub_2205E9F58(v10, a1, sub_22046EAA0);
  }
}

uint64_t sub_2205E0964@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31[1] = a4;
  v31[2] = a3;
  v36 = a5;
  v33 = *a1;
  v37 = sub_22088516C();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2208853CC();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &unk_2812993E0, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v31 - v15;
  sub_2205EA904(0, &unk_281299408, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v31 - v19;
  v34 = sub_220884BDC();
  v21 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v22);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298E10 != -1)
  {
    swift_once();
  }

  if (sub_220886B7C())
  {
    if (*a2 != -1)
    {
      swift_once();
    }

    swift_getWitnessTable();
    sub_220886B3C();
    v25 = v32;
    (*(v9 + 56))(v20, 1, 1, v32);
    v26 = sub_22088543C();
    (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
    sub_220884BCC();
    sub_220884B7C();
    sub_22088538C();
    sub_22088515C();
    sub_22088536C();
    (*(v35 + 8))(v8, v37);
    (*(v9 + 8))(v12, v25);
    return (*(v21 + 8))(v24, v34);
  }

  else
  {
    v28 = v36;
    v29 = *(v35 + 56);
    v30 = v37;

    return v29(v28, 1, 1, v30);
  }
}

char *sub_2205E0E64()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 128);
  sub_22046DA2C(v0 + v3, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v5 + 24))(v0, &off_283415908, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_22054B9F8((v0 + 2));

  (*(*(*(v2 + 80) - 8) + 8))(v1 + *(*v1 + 112));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));

  v6 = *(*v0 + 152);
  v7 = sub_22088685C();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  __swift_destroy_boxed_opaque_existential_1((v1 + *(*v1 + 192)));

  sub_2205E8724(v1 + *(*v1 + 224), &unk_281299470, sub_22046EAA0);
  sub_2205E8724(v1 + *(*v1 + 232), &unk_281299470, sub_22046EAA0);
  return v1;
}

uint64_t sub_2205E1158()
{
  sub_2205E0E64();

  return swift_deallocClassInstance();
}

double sub_2205E11C8()
{
  v1 = v0;
  v2 = *v0;
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v35 - v8;
  v10 = sub_220886A4C();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220885D4C();
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v37 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088BF1C();
  v17 = *(v1 + *(*v1 + 120));
  sub_22061D3C8(v43);
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v36 = *(v2 + 80);
  v19[2] = v36;
  v20 = *(v2 + 88);
  v19[3] = v20;
  v19[4] = v18;
  sub_22088EBDC();

  swift_beginAccess();
  sub_22088EB6C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager), *(v17 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager + 24));
  sub_2208863EC();
  v21 = v37;
  sub_2208869CC();
  (*(v38 + 8))(v13, v39);
  sub_2205E04EC(v9);
  v22 = v40;
  sub_2205E0728(v40);
  v23 = v36;
  v24 = (*(v20 + 40))(v21, v9, v22, v36, v20);
  sub_2205E86C4(v22, sub_22046EAA0);
  sub_2205E86C4(v9, sub_22046EAA0);
  v43[0] = v24;
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v23;
  v26[3] = v20;
  v26[4] = v25;
  sub_2205E7490(0, v27);
  sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);

  sub_22088B6DC();

  (*(v41 + 8))(v21, v42);

  v28 = *(v1 + *(*v1 + 160));
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 2) = v23;
  *(v30 + 3) = v20;
  *(v30 + 4) = v29;
  v31 = (v28 + qword_27CF578E0);
  v33 = *(v28 + qword_27CF578E0);
  v32 = *(v28 + qword_27CF578E0 + 8);
  *v31 = sub_2205E9CFC;
  v31[1] = v30;
  return sub_2204DA45C(v33, v32);
}

void sub_2205E1704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_220885D4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_2205E191C(a1);
    v20 = a4;
    v19 = a3;
    v13 = off_2834170D8;
    type metadata accessor for StockFeedDataManager(0);
    v13();
    (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v15 = swift_allocObject();
    v16 = v20;
    *(v15 + 2) = v19;
    *(v15 + 3) = v16;
    *(v15 + 4) = v12;
    (*(v8 + 32))(&v15[v14], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

    v17 = sub_220888D9C();
    sub_2205EA040();
    sub_220888E4C();
  }
}

double sub_2205E191C(uint64_t a1)
{
  (*(*(*v1 + 88) + 72))(a1, *(*v1 + 80));
  sub_2205E7490(0, v2);
  sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

uint64_t sub_2205E1A10@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v8 = result;
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2205E8A14(a1, a3, Strong);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  *a4 = v8 == 0;
  return result;
}

void sub_2205E1A9C(uint64_t a1, uint64_t a2)
{
  sub_22055CF9C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088C6AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = v4;
    v28 = v8;
    v26 = v5;
    v15 = *(*Strong + 120);
    v29 = a1;
    v30 = Strong;
    v16 = *(Strong + v15);
    v17 = *(v16 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataRefreshManager + 8);
    ObjectType = swift_getObjectType();
    v19 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock;
    v20 = *(v17 + 32);
    swift_unknownObjectRetain();
    v20(v16 + v19, ObjectType, v17);
    __swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataManager), *(v16 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataManager + 24));
    sub_22044432C(&qword_28128EAC0, type metadata accessor for StockFeedDataManager, &unk_2208A27E0);
    sub_22088630C();
    __swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager), *(v16 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager + 24));
    sub_22044432C(&qword_28128EAC8, type metadata accessor for StockFeedDataManager, &unk_2208A27B0);
    sub_220885FAC();
    swift_unknownObjectRelease();
    (*(v10 + 16))(v13, v29, v9);
    v21 = (*(v10 + 88))(v13, v9);
    if (v21 == *MEMORY[0x277D6DF98])
    {
      (*(v10 + 96))(v13, v9);
      v22 = *v13;

      v23 = v22;
      sub_22088BF1C();
    }

    else if (v21 == *MEMORY[0x277D6DF90])
    {

      sub_22088B6BC();
      v31 = v32;
      sub_2205E9B98(0);
      sub_22044432C(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
      v24 = v28;
      sub_22088BF9C();

      type metadata accessor for StockFeedSectionDescriptor(0);
      type metadata accessor for StockFeedModel(0);
      sub_22044432C(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
      sub_22044432C(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
      sub_22088BEEC();
      (*(v26 + 8))(v24, v27);
      sub_22088BF1C();
    }

    else
    {
      v25 = v28;
      if (v21 == *MEMORY[0x277D6DFA0])
      {

        sub_22088B6BC();
        v31 = v32;
        sub_2205E9B98(0);
        sub_22044432C(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
        sub_22088BF9C();

        type metadata accessor for StockFeedSectionDescriptor(0);
        type metadata accessor for StockFeedModel(0);
        sub_22044432C(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
        sub_22044432C(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
        sub_22088BEEC();
        (*(v26 + 8))(v25, v27);
        sub_22088BF1C();

        sub_2205E2118(0);
      }

      else
      {

        (*(v10 + 8))(v13, v9);
      }
    }
  }
}

double sub_2205E2118(char a1)
{
  type metadata accessor for StockFeedQuoteData(0);
  sub_220888FBC();
  sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v2 = sub_220891D0C();
  *(swift_allocObject() + 16) = a1;
  sub_220888E6C();

  return result;
}

void sub_2205E2244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2205E9D08(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2205E89AC(a1, v10, sub_2205E9D08);
    sub_2205E9E2C(0);
    v12 = v11;
    if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
    {
      v17 = (*(a4 + 80))(a3, a4);
      sub_2205E7490(0, v13);
      sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
      sub_22088B6DC();
    }

    else
    {

      v14 = *(v12 + 48);
      v15 = sub_22089030C();
      v16 = *(*(v15 - 8) + 8);
      v16(&v10[v14], v15);
      v16(v10, v15);
    }
  }
}

double sub_2205E2460()
{
  v1 = *v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_220888FEC();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  (*(v3 + 48))(v4, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  sub_2205E7490(0, v7);
  sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);

  sub_22088B6DC();

  return result;
}

double sub_2205E264C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(swift_allocObject() + 16) = Strong;
        swift_unknownObjectRetain();
        sub_220888FEC();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_2205E272C(uint64_t a1)
{
  (*(*(*v1 + 88) + 112))(a1, *(*v1 + 80));
  sub_2205E7490(0, v2);
  sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

uint64_t sub_2205E2820(void *a1)
{
  v44[2] = *v1;
  v47 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v47, v3);
  v46 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &unk_281297FA0, sub_22055D328);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v44 - v7;
  sub_22055D328(0);
  v10 = v9;
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v1;
  sub_22088B6BC();
  v51 = *&v50[0];
  sub_2205E9B98(0);
  sub_22044432C(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
  sub_22088BF9C();
  v20 = v15;

  v21 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_22088845C();
  sub_22088E70C();
  v22 = v49;

  if ((*(v22 + 48))(v8, 1, v10) == 1)
  {
    (*(v16 + 8))(v19, v15);
    return sub_2205E8724(v8, &unk_281297FA0, sub_22055D328);
  }

  v24 = v16;
  (*(v22 + 32))(v13, v8, v10);
  v25 = v46;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = v13;
  v28 = v19;
  v29 = v20;
  v30 = v22;
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v41 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v41 = type metadata accessor for StockEarningsModel;
        goto LABEL_20;
      }

      sub_2204597F0(0);
      v39 = *(v38 + 48);
      sub_2205E8724(v25 + *(v38 + 64), &qword_281299370, MEMORY[0x277D69178]);
      sub_2205E8724(v25 + v39, &qword_2812990C0, MEMORY[0x277D697F8]);
    }

    v40 = sub_22088685C();
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
LABEL_15:
        v41 = type metadata accessor for StockFeedModel;
LABEL_20:
        sub_2205E86C4(v25, v41);
      }

LABEL_21:
      v42 = v48[3];
      v43 = v48[4];
      __swift_project_boxed_opaque_existential_1(v48, v42);
      MEMORY[0x223D85A60](0, v42, v43);
      goto LABEL_22;
    }

    sub_2205E9C00(0, &qword_281296910, MEMORY[0x277D333C8], &type metadata for StockLocation, "offlineModel location ");

    v40 = sub_22089030C();
LABEL_18:
    (*(*(v40 - 8) + 8))(v25, v40);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
  {
    goto LABEL_15;
  }

  v47 = v25[2];
  v31 = v47;

  MEMORY[0x28223BE20](v32, v33);
  v34 = v48;
  v44[-4] = v45;
  v44[-3] = v34;
  v44[-2] = v31;
  sub_220888FBC();
  v46 = sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v35 = sub_220891D0C();
  sub_22046DA2C(v34, v50);
  v36 = swift_allocObject();
  sub_220457328(v50, v36 + 16);
  v44[1] = sub_220888E6C();

  v46 = sub_220891D0C();
  sub_22046DA2C(v48, v50);
  v37 = swift_allocObject();
  sub_220457328(v50, v37 + 16);
  *(v37 + 56) = v47;

  sub_220888EAC();

LABEL_22:
  (*(v30 + 8))(v27, v10);
  return (*(v24 + 8))(v28, v29);
}

uint64_t sub_2205E2F18(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = sub_22088845C();
  v6 = sub_22061F8F4(v4, v5, a3);

  return v6;
}

void sub_2205E2FA8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v11 = (*(*(*a2 + 88) + 64))(*a1, v5, v7, *(*a2 + 80));
  sub_22046DA2C(a3, v10);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = a2;
  sub_220457328(v10, (v8 + 6));
  sub_2205E7490(0, v9);
  sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);

  sub_22088B6DC();
}

uint64_t sub_2205E3138(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_22088C6AC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  v15 = (*(v10 + 88))(v14, v9);
  if (v15 == *MEMORY[0x277D6DF98])
  {
    (*(v10 + 8))(v14, v9);
LABEL_4:
    v16 = 0;
LABEL_11:
    v20 = a7[3];
    v21 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, v20);
    return MEMORY[0x223D85A60](v16, v20, v21);
  }

  if (v15 == *MEMORY[0x277D6DF90])
  {
    goto LABEL_4;
  }

  if (v15 == *MEMORY[0x277D6DFA0])
  {
    type metadata accessor for StockFeedServiceConfig(0);
    sub_22044432C(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    if ((sub_22088FAEC() & 1) != 0 && (sub_2205E33C0() & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
        v18 = off_283424CD0[0];
        v19 = type metadata accessor for StockFeedTracker(0);
        v18(v19, &off_283424C98);
        swift_unknownObjectRelease();
      }
    }

    v16 = 1;
    goto LABEL_11;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}
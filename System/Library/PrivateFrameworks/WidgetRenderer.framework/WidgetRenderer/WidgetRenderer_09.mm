void sub_1DAE5903C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAEDC070;
    *(inited + 32) = v8;
    v10 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController);
    if (!v10)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v11 = inited;
    *(inited + 40) = v10;
    v12 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController);
    if (!v12)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *(inited + 48) = v12;
    v13 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController);
    if (!v13)
    {
LABEL_27:
      __break(1u);
      return;
    }

    *(inited + 56) = v13;
    v14 = inited & 0xC000000000000001;
    v15 = v8;
    v16 = v10;
    v17 = v12;
    v18 = v13;
    v37 = v14;
    if (v14)
    {
      v19 = MEMORY[0x1E127E1F0](0, v11);
    }

    else
    {
      v19 = v15;
    }

    v20 = v19;
    v21 = *(*&v19[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);

    sub_1DAECDCDC();
    v22 = sub_1DAECDCEC();
    v36 = *(*(v22 - 8) + 56);
    v36(v7, 0, 1, v22);
    v23 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v21 + v23, v4, &qword_1ECC07CE8, &qword_1DAED6F60);
    swift_beginAccess();
    sub_1DAD901C4(v7, v21 + v23, &qword_1ECC07CE8, &qword_1DAED6F60);
    swift_endAccess();
    sub_1DAE64750(v4);
    sub_1DAD64398(v4, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD64398(v7, &qword_1ECC07CE8, &qword_1DAED6F60);

    if (v37)
    {
      v24 = MEMORY[0x1E127E1F0](1, v11);
    }

    else
    {
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_23;
      }

      v24 = *(v11 + 40);
    }

    v25 = v24;
    v26 = *(*&v24[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);

    sub_1DAECDCDC();
    v36(v7, 0, 1, v22);
    v27 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v26 + v27, v4, &qword_1ECC07CE8, &qword_1DAED6F60);
    swift_beginAccess();
    sub_1DAD901C4(v7, v26 + v27, &qword_1ECC07CE8, &qword_1DAED6F60);
    swift_endAccess();
    sub_1DAE64750(v4);
    sub_1DAD64398(v4, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD64398(v7, &qword_1ECC07CE8, &qword_1DAED6F60);

    if (v37)
    {
      v28 = MEMORY[0x1E127E1F0](2, v11);
LABEL_15:
      v29 = v28;
      v30 = *(*&v28[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);

      sub_1DAECDCDC();
      v36(v7, 0, 1, v22);
      v31 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
      swift_beginAccess();
      sub_1DAD6495C(v30 + v31, v4, &qword_1ECC07CE8, &qword_1DAED6F60);
      swift_beginAccess();
      sub_1DAD901C4(v7, v30 + v31, &qword_1ECC07CE8, &qword_1DAED6F60);
      swift_endAccess();
      sub_1DAE64750(v4);
      sub_1DAD64398(v4, &qword_1ECC07CE8, &qword_1DAED6F60);
      sub_1DAD64398(v7, &qword_1ECC07CE8, &qword_1DAED6F60);

      if (v37)
      {
        v32 = MEMORY[0x1E127E1F0](3, v11);
LABEL_19:
        v33 = v32;

        v34 = *(*&v33[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);

        sub_1DAECDCDC();
        v36(v7, 0, 1, v22);
        v35 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
        swift_beginAccess();
        sub_1DAD6495C(v34 + v35, v4, &qword_1ECC07CE8, &qword_1DAED6F60);
        swift_beginAccess();
        sub_1DAD901C4(v7, v34 + v35, &qword_1ECC07CE8, &qword_1DAED6F60);
        swift_endAccess();
        sub_1DAE64750(v4);
        sub_1DAD64398(v4, &qword_1ECC07CE8, &qword_1DAED6F60);
        sub_1DAD64398(v7, &qword_1ECC07CE8, &qword_1DAED6F60);

        return;
      }

      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
      {
        v32 = *(v11 + 56);
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v28 = *(v11 + 48);
      goto LABEL_15;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

uint64_t sub_1DAE5964C()
{
  v1 = sub_1DAECF29C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09E68, &qword_1DAEDC1B8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - v5;
  v7 = sub_1DAECF8EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E70, &unk_1DAEDC1C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController);
  if (v19)
  {
    v20 = *(*(v19 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);
    v37 = v15;
    v21 = v1;
    v22 = &v37 - v17;
    v23 = v6;
    v24 = v2;
    v25 = v4;
    v26 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
    swift_beginAccess();
    v27 = v20 + v26;
    v4 = v25;
    v2 = v24;
    v6 = v23;
    v18 = v22;
    v1 = v21;
    v15 = v37;
    (*(v8 + 16))(v10, v27, v7);
    sub_1DAECF43C();
    (*(v8 + 8))(v10, v7);
    v28 = *(v2 + 56);
    v28(v18, 0, 1, v1);
  }

  else
  {
    v28 = *(v2 + 56);
    v28(&v37 - v17, 1, 1, v1);
  }

  (*(v2 + 104))(v15, *MEMORY[0x1E697E7D8], v1);
  v28(v15, 0, 1, v1);
  v29 = *(v4 + 48);
  sub_1DAD6495C(v18, v6, &unk_1ECC09E70, &unk_1DAEDC1C0);
  sub_1DAD6495C(v15, &v6[v29], &unk_1ECC09E70, &unk_1DAEDC1C0);
  v30 = *(v2 + 48);
  v31 = v30(v6, 1, v1);
  v32 = v39;
  if (v31 != 1)
  {
    sub_1DAD6495C(v6, v39, &unk_1ECC09E70, &unk_1DAEDC1C0);
    if (v30(&v6[v29], 1, v1) != 1)
    {
      v34 = v38;
      (*(v2 + 32))(v38, &v6[v29], v1);
      sub_1DAE5CE20(&qword_1EE005B48, MEMORY[0x1E697E7E0], MEMORY[0x1E697E7F8]);
      v33 = sub_1DAED1CAC();
      v35 = *(v2 + 8);
      v35(v34, v1);
      sub_1DAD64398(v15, &unk_1ECC09E70, &unk_1DAEDC1C0);
      sub_1DAD64398(v18, &unk_1ECC09E70, &unk_1DAEDC1C0);
      v35(v32, v1);
      sub_1DAD64398(v6, &unk_1ECC09E70, &unk_1DAEDC1C0);
      return v33 & 1;
    }

    sub_1DAD64398(v15, &unk_1ECC09E70, &unk_1DAEDC1C0);
    sub_1DAD64398(v18, &unk_1ECC09E70, &unk_1DAEDC1C0);
    (*(v2 + 8))(v32, v1);
    goto LABEL_9;
  }

  sub_1DAD64398(v15, &unk_1ECC09E70, &unk_1DAEDC1C0);
  sub_1DAD64398(v18, &unk_1ECC09E70, &unk_1DAEDC1C0);
  if (v30(&v6[v29], 1, v1) != 1)
  {
LABEL_9:
    sub_1DAD64398(v6, &qword_1ECC09E68, &qword_1DAEDC1B8);
    v33 = 0;
    return v33 & 1;
  }

  sub_1DAD64398(v6, &unk_1ECC09E70, &unk_1DAEDC1C0);
  v33 = 1;
  return v33 & 1;
}

void sub_1DAE59BFC()
{
  v1 = v0;
  v2 = sub_1DAECEDEC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_activeLayoutMode;
  v8 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_activeLayoutMode];
  v9 = &qword_1ECC09000;
  v10 = &qword_1ECC09000;
  if (v8 != 4)
  {
    goto LABEL_6;
  }

  v11 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v11)
  {
    v12 = [v11 view];
    if (!v12)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v13 = v12;
    v14 = [v1 view];
    if (!v14)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v15 = v14;
    [v14 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [v13 setFrame_];
    v8 = *&v1[v7];
    v9 = &qword_1ECC09000;
LABEL_6:
    if (v8 != 3)
    {
      goto LABEL_17;
    }

    v73 = v3;
    v24 = [v1 view];
    if (!v24)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v25 = v24;
    v26 = [v24 effectiveUserInterfaceLayoutDirection];

    if (v26 == 1)
    {
      v27 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView];
      if (!v27)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v28 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView];
      if (v28)
      {
LABEL_14:
        v29 = v27;
        v30 = v28;
        [v29 frame];
        [v29 setFrame_];

        [v30 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v39 = [v1 view];
        if (v39)
        {
          v40 = v39;
          [v39 bounds];
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v75.origin.x = v42;
          v75.origin.y = v44;
          v75.size.width = v46;
          v75.size.height = v48;
          MaxX = CGRectGetMaxX(v75);
          v76.origin.x = v32;
          v76.origin.y = v34;
          v76.size.width = v36;
          v76.size.height = v38;
          [v30 setFrame_];

          v8 = *&v1[v7];
          v3 = v73;
          v10 = &qword_1ECC09000;
          v9 = &qword_1ECC09000;
          goto LABEL_17;
        }

        goto LABEL_33;
      }

      __break(1u);
    }

    v27 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView];
    if (!v27)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v28 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView];
    if (!v28)
    {
LABEL_39:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

  v8 = 4;
LABEL_17:
  v50 = *&v1[v9[405]];
  if (v50)
  {
    [v50 setHidden_];
  }

  v51 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView];
  if (v51)
  {
    [v51 setHidden_];
  }

  v52 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView];
  if (v52)
  {
    [v52 setHidden_];
  }

  v53 = v10[404];
  v54 = *&v1[v53];
  if (v54)
  {
    (*(v3 + 16))(v6, *(*(v54 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v2);
    v55 = v2;
    v56 = v1;
    v57 = sub_1DAECEDCC();
    v58 = v3;
    v59 = sub_1DAED200C();
    if (!os_log_type_enabled(v57, v59))
    {

      (*(v58 + 8))(v6, v55);
      return;
    }

    v72 = v55;
    v73 = v58;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v74 = v61;
    *v60 = 136446466;
    v62 = *&v1[v53];
    if (v62)
    {
      v63 = (*(*(v62 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
      v65 = *v63;
      v64 = v63[1];
    }

    else
    {
      v64 = 0xE300000000000000;
      v65 = 7104878;
    }

    v66 = sub_1DAD6482C(v65, v64, &v74);

    *(v60 + 4) = v66;
    *(v60 + 12) = 2082;
    v67 = [v56 view];

    if (v67)
    {
      [v67 bounds];

      v68 = sub_1DAED224C();
      v70 = sub_1DAD6482C(v68, v69, &v74);

      *(v60 + 14) = v70;
      _os_log_impl(&dword_1DAD61000, v57, v59, "[%{public}s] self.view.bounds = %{public}s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v61, -1, -1);
      MEMORY[0x1E127F100](v60, -1, -1);

      (*(v73 + 8))(v6, v72);
      return;
    }

    goto LABEL_36;
  }
}

uint64_t type metadata accessor for SystemApertureElementViewController(uint64_t a1)
{
  result = qword_1EE00ADB8;
  if (!qword_1EE00ADB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE5A3BC(uint64_t a1)
{
  result = sub_1DAECEDEC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_1DAE5A5D4(uint64_t a1)
{
  v3 = sub_1DAED187C();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED1B8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v14 = type metadata accessor for ActivityView(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v1;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model] = a1;
  v61 = 0;
  swift_retain_n();
  sub_1DAED076C();
  *(v16 + 2) = v62;
  v17 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
  v57 = v14;
  v18 = *(v14 + 28);
  v19 = sub_1DAECEDEC();
  (*(*(v19 - 8) + 16))(&v16[v18], a1 + v17, v19);
  type metadata accessor for ActivityViewModel(0);
  sub_1DAE5CE20(&qword_1EE007808, type metadata accessor for ActivityViewModel, &unk_1DAEDC81C);

  v20 = sub_1DAECF21C();
  v22 = v21;
  *v16 = v20;
  *(v16 + 1) = v21;
  *&v62 = sub_1DAED064C();
  *(v16 + 2) = sub_1DAED087C();
  *(v16 + 3) = 0;
  v23 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v22 + v23, v13, &unk_1ECC09E40, &qword_1DAED68E0);
  v56 = *(v6 + 48);
  v24 = v56(v13, 1, v5);
  v52 = v8;
  if (v24)
  {
    sub_1DAD64398(v13, &unk_1ECC09E40, &qword_1DAED68E0);
    v25 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
  }

  else
  {
    (*(v6 + 16))(v8, v13, v5);
    sub_1DAD64398(v13, &unk_1ECC09E40, &qword_1DAED68E0);
    v25 = sub_1DAED1B5C();
    (*(v6 + 8))(v8, v5);
  }

  *(v16 + 2) = v25;
  *(v16 + 3) = 0;
  sub_1DAE5CE20(qword_1EE007DA0, type metadata accessor for ActivityView, &unk_1DAEDCE94);
  v26 = sub_1DAED087C();
  v27 = objc_allocWithZone(type metadata accessor for SecureHostingController(0));
  v61 = v26;
  v28 = sub_1DAECFA9C();
  v29 = sub_1DAE5CE20(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
  v30 = v59;
  v31 = &v59[OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController];
  *v31 = v28;
  *(v31 + 1) = v29;
  v32 = v28;
  v33 = 0.0;
  sub_1DADB25F8(1, 0, 0.0);

  v34 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  v35 = v58;
  sub_1DAD6495C(a1 + v34, v58, &unk_1ECC09E40, &qword_1DAED68E0);
  if (v56(v35, 1, v5))
  {
    sub_1DAD64398(v35, &unk_1ECC09E40, &qword_1DAED68E0);
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
  }

  else
  {
    v39 = v52;
    (*(v6 + 16))(v52, v35, v5);
    sub_1DAD64398(v35, &unk_1ECC09E40, &qword_1DAED68E0);
    v40 = v53;
    sub_1DAED1B6C();
    (*(v6 + 8))(v39, v5);
    sub_1DAED186C();
    v33 = v41;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    (*(v54 + 8))(v40, v55);
  }

  v45 = type metadata accessor for _JindoAccessoryView();
  v60.receiver = v30;
  v60.super_class = v45;
  v46 = objc_msgSendSuper2(&v60, sel_initWithFrame_, v33, v36, v37, v38);
  v47 = *&v46[OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController];
  v48 = v46;
  result = [v47 view];
  if (result)
  {
    v50 = result;
    [v48 addSubview_];

    return v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1DAE5AEDC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__subscriptions] = MEMORY[0x1E69E7CD0];
  v2 = objc_allocWithZone(type metadata accessor for _JindoAccessoryView());

  *&v1[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] = sub_1DAE5A5D4(v3);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for _JindoAccessoryViewController();
  v4 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  v5 = *(*&v4[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
  v6 = v4;
  [v6 addChildViewController_];

  return v6;
}

id sub_1DAE5B07C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1DAE5B124(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DAED247C();
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
      result = sub_1DAED247C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DAD64B94(&qword_1ECC09EB8, &qword_1ECC09EB0, qword_1DAEDC1D0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09EB0, qword_1DAEDC1D0);
            v9 = sub_1DAE960BC(v13, i, a3);
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
        sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);
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

char *sub_1DAE5B2D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v78 = a5;
  v74 = a2;
  v75 = a4;
  v73 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08890, &qword_1DAEDD970);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v65 - v14;
  v15 = sub_1DAECEDEC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_activeLayoutMode] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_contentRole] = 2;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_preferredLayoutMode] = 3;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_maximumLayoutMode] = 4;
  v21 = &v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_associatedScenePersistenceIdentifier];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_associatedAppBundleIdentifier];
  *v22 = 0;
  v22[1] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_elementIdentifier] = 0;
  v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_attachedMinimalViewRequiresZeroPadding] = 1;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors] = 1;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__cancellables] = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakInit();
  v79 = v16;
  v23 = *(v16 + 16);
  v76 = a3;
  v23(&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger], a3, v15);
  v24 = &v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
  v25 = v78;
  *v24 = v75;
  v24[1] = v25;
  v75 = a6;
  swift_unknownObjectWeakAssign();
  v26 = type metadata accessor for SystemApertureElementViewController(0);
  v83.receiver = v7;
  v83.super_class = v26;
  v27 = objc_msgSendSuper2(&v83, sel_initWithNibName_bundle_, 0, 0);
  v66 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger;
  v78 = v15;
  v23(v20, &v27[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger], v15);
  sub_1DAD648F8(a7, &v81);
  v28 = sub_1DAECEDCC();
  v29 = sub_1DAED203C();
  v30 = os_log_type_enabled(v28, v29);
  v77 = a7;
  if (v30)
  {
    v31 = swift_slowAlloc();
    *v31 = 67240192;
    __swift_project_boxed_opaque_existential_1(&v81, v82);
    v32 = sub_1DAECE2BC() & 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v81);
    *(v31 + 4) = v32;
    _os_log_impl(&dword_1DAD61000, v28, v29, "Has unlocked since boot? %{BOOL,public}d", v31, 8u);
    v33 = v31;
    a7 = v77;
    MEMORY[0x1E127F100](v33, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v81);
  }

  v34 = v78;
  v35 = v79 + 8;
  v36 = *(v79 + 8);
  v36(v20, v78);
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  v37 = sub_1DAECE2BC();
  v79 = v35;
  v72 = v36;
  if (v37)
  {
    *&v27[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors] |= 8uLL;
  }

  else
  {
    v23(v71, &v27[v66], v34);
    v38 = sub_1DAECEDCC();
    v39 = sub_1DAED203C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1DAD61000, v38, v39, "Waiting on first unlock to show in coversheet.", v40, 2u);
      MEMORY[0x1E127F100](v40, -1, -1);
    }

    v36(v71, v34);
    v41 = swift_allocObject();
    v71 = v41;
    *(v41 + 16) = 0;
    v42 = (v41 + 16);
    __swift_project_boxed_opaque_existential_1(a7, a7[3]);
    *&v81 = sub_1DAECE2CC();
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v43 = sub_1DAED20EC();
    v80 = v43;
    v44 = sub_1DAED20AC();
    v45 = v67;
    (*(*(v44 - 8) + 56))(v67, 1, 1, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08898, &qword_1DAED8240);
    sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240, MEMORY[0x1E695BED8]);
    sub_1DAD88828();
    v46 = v68;
    a7 = v77;
    sub_1DAECEFBC();
    sub_1DAD64398(v45, &unk_1ECC07D20, &unk_1DAED57D0);

    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1DAD648F8(a7, &v81);
    v48 = swift_allocObject();
    v49 = v71;
    *(v48 + 16) = v47;
    *(v48 + 24) = v49;
    sub_1DADD7B84(&v81, v48 + 32);
    sub_1DAD64B94(&qword_1EE00AC30, &qword_1ECC08890, &qword_1DAEDD970, MEMORY[0x1E695BE98]);

    v50 = v70;
    v51 = sub_1DAECF00C();

    (*(v69 + 8))(v46, v50);
    swift_beginAccess();
    *v42 = v51;
  }

  v52 = type metadata accessor for _EmptyJindoAccessoryView();
  v53 = [objc_allocWithZone(v52) initWithFrame_];
  v54 = *&v27[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView];
  *&v27[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView] = v53;

  v55 = [objc_allocWithZone(v52) initWithFrame_];
  v56 = *&v27[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView];
  *&v27[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView] = v55;

  v57 = [objc_allocWithZone(v52) initWithFrame_];
  v58 = *&v27[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView];
  *&v27[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView] = v57;

  v59 = &v27[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_associatedAppBundleIdentifier];
  v60 = v74;
  *v59 = v73;
  v59[1] = v60;

  v61 = [v75 _sceneIdentifier];
  if (!v61)
  {
    sub_1DAED1CEC();
    v62 = sub_1DAED1CBC();

    v61 = v62;
  }

  v63 = *&v27[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_elementIdentifier];
  *&v27[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_elementIdentifier] = v61;

  [objc_msgSend(v27 systemApertureElementContext)];
  swift_unknownObjectRelease();
  v72(v76, v78);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v27;
}

void sub_1DAE5BBEC()
{
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_contentRole) = 2;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_preferredLayoutMode) = 3;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_maximumLayoutMode) = 4;
  v1 = (v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_associatedScenePersistenceIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_associatedAppBundleIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_elementIdentifier) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_attachedMinimalViewRequiresZeroPadding) = 1;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors) = 1;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__cancellables) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakInit();
  sub_1DAED273C();
  __break(1u);
}

uint64_t sub_1DAE5BD48(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33[1] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E50, &unk_1DAEDC1A8);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v33[0] = v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14;
  v16 = sub_1DAED182C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v20 = a1;
  v21.n128_f64[0] = (*(v17 + 104))(v20, *MEMORY[0x1E6985910], v16, v18);
  v22 = sub_1DAE7CAF8(v20, a3, a4, v21);
  (*(v17 + 8))(v20, v16);
  v23 = *MEMORY[0x1E697DBA8];
  v24 = sub_1DAECF0AC();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v15, v23, v24);
  (*(v25 + 56))(v15, 0, 1, v24);
  v26 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD6495C(v22 + v26, v12, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  sub_1DAD901C4(v15, v22 + v26, &qword_1ECC08370, &unk_1DAED6580);
  swift_endAccess();
  sub_1DAE62CC4(v12);
  sub_1DAD64398(v12, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v15, &qword_1ECC08370, &unk_1DAED6580);
  v27 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
  *(v22 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 1;
  sub_1DAE638F4(v27);
  v36 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09E60, &unk_1DAED6D20);
  sub_1DAD64B94(&qword_1EE005CE0, &qword_1ECC09E60, &unk_1DAED6D20, MEMORY[0x1E695BED8]);
  v28 = v33[0];
  sub_1DAECEFAC();

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v22;
  *(v30 + 32) = a1;
  sub_1DAD64B94(&unk_1EE005D60, &unk_1ECC09E50, &unk_1DAEDC1A8, MEMORY[0x1E695BDE0]);

  v31 = v34;
  sub_1DAECF00C();

  (*(v35 + 8))(v28, v31);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  return v22;
}

void sub_1DAE5C23C(char *a1, void *a2, unint64_t *a3)
{
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a3;
  v115 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController;
  v11 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  v113 = a2;
  if (v11)
  {
    (*(v7 + 16))(v10, &a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger], v6, v8);
    v12 = a2;
    v13 = a3;
    v14 = v12;
    v15 = v13;
    v16 = v14;
    v17 = v15;
    v112 = v16;
    v111 = v17;
    v18 = a1;
    v19 = sub_1DAECEDCC();
    a3 = sub_1DAED200C();

    v20 = os_log_type_enabled(v19, a3);
    v110 = v18;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v116 = v17;
      *v21 = 136446210;
      v22 = *&v18[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
      v23 = *&v18[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

      v24 = sub_1DAD6482C(v22, v23, &v116);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_1DAD61000, v19, a3, "[%{public}s] Enabling RenderBox default update interval because foreground.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E127F100](v17, -1, -1);
      MEMORY[0x1E127F100](v21, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v25 = v114;
    v26 = *&a1[v115];
    if (v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DAEDC070;
      *(inited + 32) = v26;
      v28 = v110;
      v29 = *&v110[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController];
      if (!v29)
      {
LABEL_39:
        v103 = v111;

        v104 = v112;
        __break(1u);
        goto LABEL_40;
      }

      v30 = inited;
      *(inited + 40) = v29;
      v17 = *&v28[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController];
      if (!v17)
      {
LABEL_40:
        v105 = v111;

        v106 = v112;
        __break(1u);
        goto LABEL_41;
      }

      *(inited + 48) = v17;
      v31 = *&v28[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController];
      if (!v31)
      {
LABEL_41:
        v107 = v111;

        v108 = v112;
        __break(1u);
        goto LABEL_42;
      }

      *(inited + 56) = v31;
      v32 = inited & 0xC000000000000001;
      v33 = v26;
      v34 = v29;
      v35 = v17;
      v36 = v31;
      if (v32)
      {
        v37 = MEMORY[0x1E127E1F0](0, v30);
      }

      else
      {
        v37 = v33;
      }

      v29 = v37;
      v17 = &qword_1ECC09000;
      v38 = *(*(v37 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
      swift_getObjectType();
      v39 = v38;
      swift_getWitnessTable();
      _UIHostingViewable.setForegroundUpdateInterval()();

      if (v32)
      {
        v40 = MEMORY[0x1E127E1F0](1, v30);
      }

      else
      {
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
          goto LABEL_37;
        }

        v40 = *(v30 + 40);
      }

      v29 = v40;
      v93 = *(*(v40 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
      swift_getObjectType();
      v94 = v93;
      swift_getWitnessTable();
      _UIHostingViewable.setForegroundUpdateInterval()();

      if (v32)
      {
        v95 = MEMORY[0x1E127E1F0](2, v30);
LABEL_29:
        v29 = v95;
        v96 = *(*(v95 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
        swift_getObjectType();
        v97 = v96;
        swift_getWitnessTable();
        _UIHostingViewable.setForegroundUpdateInterval()();

        if (v32)
        {
          v98 = MEMORY[0x1E127E1F0](3, v30);
LABEL_33:
          v99 = v98;

          v100 = *(*&v99[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
          swift_getObjectType();
          v101 = v100;
          swift_getWitnessTable();
          _UIHostingViewable.setForegroundUpdateInterval()();

          goto LABEL_34;
        }

        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v98 = *(v30 + 56);
          goto LABEL_33;
        }

        goto LABEL_38;
      }

      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v95 = *(v30 + 48);
        goto LABEL_29;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_34:
    v102 = v113;

    return;
  }

  v41 = a2;
  v42 = a3;
  v43 = v41;
  v44 = v42;
  v45 = v43;
  v46 = v44;
  v29 = v45;
  v17 = v46;
  v19 = sub_1DAE5BD48(0, a1, v29, v17);
  v47 = type metadata accessor for _JindoAccessoryViewController();
  v48 = objc_allocWithZone(v47);

  v50 = sub_1DAE5AEDC(v49);
  v51 = *&a1[v115];
  *&a1[v115] = v50;
  v52 = v50;

  v53 = v52;
  [a1 addChildViewController_];
  v54 = [a1 view];
  if (!v54)
  {
LABEL_42:

    __break(1u);
    goto LABEL_43;
  }

  v55 = v54;
  v56 = [v53 view];

  if (!v56)
  {
LABEL_43:

    __break(1u);
    goto LABEL_44;
  }

  [v55 addSubview_];

  v112 = v53;
  [v53 didMoveToParentViewController_];
  v115 = v19;
  sub_1DAE584BC(v19);
  v29 = v29;
  v19 = v17;
  v57 = sub_1DAE5BD48(1, a1, v29, v19);

  v58 = objc_allocWithZone(v47);
  v59 = sub_1DAE5AEDC(v57);
  v60 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController] = v59;
  v61 = v59;

  v62 = *&v61[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view];
  v63 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView] = v62;
  v64 = v62;

  v65 = v61;
  [a1 addChildViewController_];
  v66 = [a1 view];
  if (!v66)
  {
LABEL_44:

    __break(1u);
    goto LABEL_45;
  }

  v67 = v66;
  v17 = [v65 view];

  if (!v17)
  {
LABEL_45:

    __break(1u);
    goto LABEL_46;
  }

  [v67 addSubview_];

  [v65 didMoveToParentViewController_];
  v29 = v29;
  v17 = v19;
  v68 = sub_1DAE5BD48(2, a1, v29, v17);

  v69 = objc_allocWithZone(v47);
  v70 = sub_1DAE5AEDC(v68);
  v71 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController] = v70;
  v72 = v70;

  v73 = *&v72[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view];
  v74 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView] = v73;
  v75 = v73;

  v76 = v72;
  [a1 addChildViewController_];
  v77 = [a1 view];
  if (!v77)
  {
LABEL_46:

    __break(1u);
    goto LABEL_47;
  }

  v78 = v77;
  a3 = [v76 view];

  if (!a3)
  {
LABEL_47:

    __break(1u);
    goto LABEL_48;
  }

  [v78 addSubview_];

  [v76 didMoveToParentViewController_];
  a3 = v29;
  v29 = v17;
  v79 = sub_1DAE5BD48(3, a1, a3, v29);

  v80 = objc_allocWithZone(v47);
  v81 = sub_1DAE5AEDC(v79);
  v82 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController] = v81;
  v83 = v81;

  v84 = *&v83[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view];
  v85 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView] = v84;
  v86 = v84;

  v87 = v83;
  [a1 addChildViewController_];
  v88 = [a1 view];
  if (!v88)
  {
LABEL_48:

    __break(1u);
    goto LABEL_49;
  }

  v89 = v88;
  v90 = [v87 view];

  if (!v90)
  {
LABEL_49:

    __break(1u);
    goto LABEL_50;
  }

  [v89 addSubview_];

  [v87 didMoveToParentViewController_];
  v91 = [a1 view];
  if (v91)
  {
    v92 = v91;
    [v91 setNeedsLayout];

    [objc_msgSend(a1 systemApertureElementContext)];

    swift_unknownObjectRelease();
    v25 = v114;
    goto LABEL_34;
  }

LABEL_50:

  __break(1u);
}

uint64_t sub_1DAE5CE20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DAE5CE74()
{
  result = qword_1EE0056F0;
  if (!qword_1EE0056F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0056F0);
  }

  return result;
}

double sub_1DAE5CEC8()
{
  v1 = sub_1DAECEDEC();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DAED187C();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED1B8C();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v42 = v0;
  v15 = *&v0[OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model];
  v16 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  v40 = v16;
  sub_1DAD6495C(v15 + v16, v14, &unk_1ECC09E40, &qword_1DAED68E0);
  v39 = *(v7 + 48);
  if (v39(v14, 1, v6))
  {
    sub_1DAD64398(v14, &unk_1ECC09E40, &qword_1DAED68E0);
    v17 = 0.0;
  }

  else
  {
    (*(v7 + 16))(v9, v14, v6);
    sub_1DAD64398(v14, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAED1B6C();
    (*(v7 + 8))(v9, v6);
    sub_1DAED186C();
    v17 = v18;
    (*(v37 + 8))(v5, v38);
  }

  v20 = v43;
  v19 = v44;
  v21 = v45;
  (*(v44 + 16))(v43, v15 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v45);
  v22 = v42;
  v23 = sub_1DAECEDCC();
  v24 = sub_1DAED200C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46 = v26;
    *v25 = 136446722;
    v42 = v6;
    v27 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
    v28 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

    v29 = sub_1DAD6482C(v27, v28, &v46);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    v30 = sub_1DAED225C();
    v32 = sub_1DAD6482C(v30, v31, &v46);

    *(v25 + 14) = v32;
    *(v25 + 22) = 1026;
    v33 = v41;
    sub_1DAD6495C(v15 + v40, v41, &unk_1ECC09E40, &qword_1DAED68E0);
    v34 = v39(v33, 1, v42) != 1;
    sub_1DAD64398(v33, &unk_1ECC09E40, &qword_1DAED68E0);

    *(v25 + 24) = v34;
    _os_log_impl(&dword_1DAD61000, v23, v24, "[%{public}s] sizeThatFits: %{public}s - hasEntry? %{BOOL,public}d", v25, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v26, -1, -1);
    MEMORY[0x1E127F100](v25, -1, -1);

    (*(v44 + 8))(v43, v45);
  }

  else
  {

    (*(v19 + 8))(v20, v21);
  }

  return v17;
}

uint64_t sub_1DAE5D4A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09ED8, &qword_1DAEDC268);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09EE0, &qword_1DAEDC270);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  sub_1DAED063C();
  v15 = sub_1DAED067C();

  sub_1DAECF10C();
  v16 = sub_1DAED066C();
  KeyPath = swift_getKeyPath();
  v18 = &v14[*(v9 + 44)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19 = *(v5 + 16);
  v19(v7, a1, v4);
  sub_1DAE5D720(v14, v11);
  v19(a2, v7, v4);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09EE8, &qword_1DAEDC2A8);
  *&a2[*(v20 + 48)] = v15;
  sub_1DAE5D720(v11, &a2[*(v20 + 64)]);

  sub_1DAE5D790(v14);
  sub_1DAE5D790(v11);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAE5D6D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = sub_1DAED091C();
  *(a2 + 1) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09ED0, &qword_1DAEDC260);
  return sub_1DAE5D4A0(a1, &a2[*(v5 + 44)]);
}

uint64_t sub_1DAE5D720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09EE0, &qword_1DAEDC270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE5D790(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09EE0, &qword_1DAEDC270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAE5D7F8()
{
  result = qword_1EE005810;
  if (!qword_1EE005810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09EF0, &unk_1DAEDC2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005810);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_ly18ActivityUIServices0A13LaunchRequestVytIsegnr_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAE5D880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DAE5D8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DAE5D918()
{
  v1 = v0;
  v24 = sub_1DAECF8EC();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  swift_getKeyPath();
  v28 = v5;
  sub_1DAE5DE0C();
  sub_1DAECDEFC();

  v6 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (v7)
  {
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        return;
      }

      goto LABEL_4;
    }

    v8 = sub_1DAED247C();
    if (v8)
    {
LABEL_4:
      if (v8 < 1)
      {
        __break(1u);
        return;
      }

      v9 = *v1;
      v10 = *(v1 + 8);
      v25 = v7 & 0xC000000000000001;
      v23 = (v2 + 8);
      v11 = *(v1 + 16);

      v12 = 0;
      while (1)
      {
        if (v25)
        {
          v19 = MEMORY[0x1E127E1F0](v12, v7);
          if (!v11)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v19 = *(v7 + 8 * v12 + 32);

          if (!v11)
          {
LABEL_12:

            sub_1DAED202C();
            v20 = sub_1DAED001C();
            sub_1DAECECEC();

            sub_1DAECF8DC();
            swift_getAtKeyPath();
            v21 = sub_1DADF7140(v9, v10, 0);
            (*v23)(v4, v24, v21);
            goto LABEL_13;
          }
        }

        *&v27 = v9;
        *(&v27 + 1) = v10;
        sub_1DADCA8EC(v9, v10);
LABEL_13:
        if (v27)
        {
          v26 = v27;
          v13 = swift_allocObject();
          *(v13 + 16) = v26;
          v14 = sub_1DAE5DE98;
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        ++v12;
        v15 = swift_allocObject();
        v15[2] = v19;
        v15[3] = v14;
        v15[4] = v13;
        v16 = (v19 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
        v17 = *(v19 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
        v18 = *(v19 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8);
        *v16 = sub_1DAE5DE64;
        v16[1] = v15;

        sub_1DAD660D8(v17, v18);

        if (v8 == v12)
        {

          return;
        }
      }
    }
  }
}

uint64_t sub_1DAE5DC2C(_BYTE *a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A190, qword_1DAEDD640);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-v9];
  v11 = sub_1DAECE7EC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a1) = *a1;
  type metadata accessor for ActivityLaunchRequestBuilder();
  v17 = a1;
  sub_1DAE22248(a3, &v17, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1DAE5DEC0(v10);
  }

  (*(v12 + 32))(v14, v10, v11);
  if (a4)
  {
    a4(v14);
  }

  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_1DAE5DE0C()
{
  result = qword_1ECC085E0;
  if (!qword_1ECC085E0)
  {
    type metadata accessor for InProcessActivityInstanceBase(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC085E0);
  }

  return result;
}

uint64_t sub_1DAE5DEC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A190, qword_1DAEDD640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BSUIVibrancyEffectViewAdapter.init(contentView:size:vibrancyLevel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  return result;
}

id BSUIVibrancyEffectViewAdapter.makeUIViewController(context:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = objc_allocWithZone(type metadata accessor for _UIComposedViewWithVibrancyFilter());

  v6 = sub_1DAE5E7AC(v5, v1, v2, v3);

  return v6;
}

void BSUIVibrancyEffectViewAdapter.updateUIViewController(_:context:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  type metadata accessor for _UIComposedViewWithVibrancyFilter();
  v6 = swift_dynamicCastClassUnconditional();
  *&v6[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_contentView] = v2;
  swift_retain_n();

  v7 = &v6[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__hostingController];
  v8 = *&v6[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__hostingController];
  swift_getObjectType();
  v9 = v8;
  sub_1DAECF9EC();

  v10 = &v6[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_size];
  *v10 = v3;
  *(v10 + 1) = v4;
  v11 = [*v7 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  [v11 setBounds_];

  v13 = [v6 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 setBounds_];

  v15 = OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_vibrancyLevel;
  *&v6[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_vibrancyLevel] = v5;
  v16 = *&v6[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__effectView];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 whiteColor];
  v20 = [v19 colorWithAlphaComponent_];

  v21 = [objc_allocWithZone(MEMORY[0x1E698E810]) initWithEffectType:0 backgroundType:0 color:v20];
  [v18 setConfiguration_];
}

id sub_1DAE5E2A4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = objc_allocWithZone(type metadata accessor for _UIComposedViewWithVibrancyFilter());

  v6 = sub_1DAE5E7AC(v5, v1, v2, v3);

  return v6;
}

uint64_t sub_1DAE5E360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAE5E90C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1DAE5E3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAE5E90C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1DAE5E428(uint64_t a1)
{
  sub_1DAE5E90C();
  sub_1DAECFF7C();
  __break(1u);
}

void sub_1DAE5E4AC()
{
  v1 = OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__effectView;
  [v0 setView_];
  v2 = *&v0[v1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = [objc_allocWithZone(MEMORY[0x1E698E810]) initWithEffectType:0 backgroundType:0 color:v6];
  [v4 setConfiguration_];

  v8 = OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__hostingController;
  v9 = [*&v0[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__hostingController] view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  [v9 setFrame_];

  v11 = [v0 view];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  [v11 setFrame_];

  v13 = [*&v0[v1] contentView];
  v14 = [*&v0[v8] view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = v14;
  [v13 addSubview_];
}

id sub_1DAE5E718()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIComposedViewWithVibrancyFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DAE5E7AC(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_contentView] = a1;
  v6 = &v4[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_size];
  *v6 = a2;
  v6[1] = a3;
  *&v4[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_vibrancyLevel] = a4;
  v14 = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F28, qword_1DAEDC548));
  swift_retain_n();
  v7 = sub_1DAECFA9C();
  v8 = sub_1DAE5E960();
  v9 = &v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__hostingController];
  *v9 = v7;
  *(v9 + 1) = v8;
  result = [v7 view];
  if (result)
  {
    v11 = result;
    [result setBackgroundColor_];

    v12 = [objc_allocWithZone(MEMORY[0x1E698E818]) init];
    *&v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__effectView] = v12;
    v13.receiver = v5;
    v13.super_class = type metadata accessor for _UIComposedViewWithVibrancyFilter();
    return objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DAE5E90C()
{
  result = qword_1ECC09F20;
  if (!qword_1ECC09F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09F20);
  }

  return result;
}

unint64_t sub_1DAE5E960()
{
  result = qword_1ECC09F30;
  if (!qword_1ECC09F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09F28, qword_1DAEDC548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09F30);
  }

  return result;
}

char *sub_1DAE5E9D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v72 = &v56 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E50, &unk_1DAEDC1A8);
  v16 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v56 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F40, qword_1DAEDC5C0);
  v61 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v56 - v18;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__cancellables] = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logger;
  v20 = sub_1DAECEDEC();
  v56 = *(v20 - 8);
  v21 = *(v56 + 16);
  v60 = a1;
  v57 = v20;
  v21(&v7[v19], a1);
  v22 = &v7[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier];
  *v22 = a2;
  *(v22 + 1) = a3;
  v58 = a4;
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__viewModels] = a5;
  v23 = objc_allocWithZone(type metadata accessor for SecureHostingController(0));
  v74 = a6;

  v59 = a6;

  *&v7[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController] = sub_1DAECFA9C();
  v24 = type metadata accessor for ActivitySceneContentViewController(0);
  v75.receiver = v7;
  v75.super_class = v24;
  v25 = objc_msgSendSuper2(&v75, sel_initWithNibName_bundle_, 0, 0);
  v26 = OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController;
  v27 = *&v25[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController];
  v28 = v25;
  result = [v27 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v30 = result;
  v31 = [objc_opt_self() clearColor];
  [v30 setBackgroundColor_];

  result = [*&v25[v26] view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = result;
  v33 = [result layer];

  [v33 setHitTestsAsOpaque_];
  v34 = *&v25[v26];
  sub_1DADB25F8(1, 0, 0.0);

  v35 = *&v25[v26];
  v36 = v28;
  [v36 addChildViewController_];
  v73 = v36;
  result = [v36 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = result;
  result = [*&v25[v26] view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v38 = result;

  [v37 addSubview_];

  v39 = *&v25[v26];
  v40 = v73;
  [v39 didMoveToParentViewController_];

  v41 = *&v40[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__viewModels];
  if (v41 >> 62)
  {
    goto LABEL_19;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v43 = OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__cancellables;

  if (v42)
  {
    v44 = 0;
    v63 = &v73[v43];
    v64 = v42;
    v66 = v41 & 0xFFFFFFFFFFFFFF8;
    v67 = v41 & 0xC000000000000001;
    ++v61;
    v62 = (v16 + 8);
    v65 = v41;
    v16 = v72;
    do
    {
      if (v67)
      {
        v45 = MEMORY[0x1E127E1F0](v44, v41);
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v44 >= *(v66 + 16))
        {
          __break(1u);
LABEL_19:
          v42 = sub_1DAED247C();
          goto LABEL_7;
        }

        v45 = *(v41 + 8 * v44 + 32);

        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_16;
        }
      }

      v74 = *(v45 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09E60, &unk_1DAED6D20);
      sub_1DAD64B94(&qword_1EE005CE0, &qword_1ECC09E60, &unk_1DAED6D20, MEMORY[0x1E695BED8]);
      v47 = v70;
      sub_1DAECEFAC();

      sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v48 = sub_1DAED20EC();
      v74 = v48;
      v49 = sub_1DAED20AC();
      (*(*(v49 - 8) + 56))(v16, 1, 1, v49);
      sub_1DAD64B94(&unk_1EE005D60, &unk_1ECC09E50, &unk_1DAEDC1A8, MEMORY[0x1E695BDE0]);
      sub_1DAD88828();
      v50 = v68;
      v51 = v71;
      sub_1DAECEFBC();
      sub_1DAD64398(v16, &unk_1ECC07D20, &unk_1DAED57D0);

      (*v62)(v47, v51);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1DAD64B94(&qword_1EE005CF0, &qword_1ECC09F40, qword_1DAEDC5C0, MEMORY[0x1E695BE98]);
      v52 = v69;
      sub_1DAECF00C();

      v53 = v52;
      v54 = v64;
      (*v61)(v50, v53);
      swift_beginAccess();
      sub_1DAECEE0C();
      swift_endAccess();

      v41 = v65;

      ++v44;
    }

    while (v46 != v54);
  }

  v55 = v73;

  (*(v56 + 8))(v60, v57);
  return v55;
}

void sub_1DAE5F204(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DAED09DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0A3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = v9;
    v31 = v7;
    v14 = *&Strong[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__viewModels];
    v34 = v3;
    v35 = v2;
    v32 = v5;
    v33 = v6;
    v36 = Strong;
    if (v14 >> 62)
    {
      goto LABEL_16;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      while (1)
      {
        v16 = 0;
        while ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1E127E1F0](v16, v14);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
            v22 = sub_1DAED20EC();
            v23 = swift_allocObject();
            v24 = v36;
            *(v23 + 16) = v36;
            aBlock[4] = sub_1DAE6151C;
            aBlock[5] = v23;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1DAD751C0;
            aBlock[3] = &block_descriptor_15;
            v25 = _Block_copy(aBlock);
            v26 = v24;

            v27 = v30;
            _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            sub_1DAE614B0(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
            sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
            v28 = v32;
            v29 = v35;
            sub_1DAED23CC();
            MEMORY[0x1E127DD70](0, v27, v28, v25);
            _Block_release(v25);

            (*(v34 + 8))(v28, v29);
            (*(v31 + 8))(v27, v33);
            return;
          }

LABEL_8:
          v19 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
          swift_beginAccess();
          sub_1DAE61440(v17 + v19, v12);

          v20 = sub_1DAECDCEC();
          v21 = (*(*(v20 - 8) + 48))(v12, 1, v20);
          sub_1DAD64398(v12, &qword_1ECC07CE8, &qword_1DAED6F60);
          if (v21 != 1)
          {
            goto LABEL_14;
          }

          ++v16;
          if (v18 == v15)
          {
            goto LABEL_17;
          }
        }

        if (v16 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v15 = sub_1DAED247C();
        if (!v15)
        {
          goto LABEL_17;
        }
      }

      v17 = *(v14 + 8 * v16 + 32);

      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }
}

void sub_1DAE5F754()
{
  v1 = v0;
  swift_unknownObjectWeakAssign();
  v2 = OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController;
  v3 = [*(v0 + OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController) view];
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];

    [*(v1 + v2) removeFromParentViewController];
    v5 = *(v1 + v2);
    v24 = sub_1DAED087C();
    sub_1DAECFABC();

    v6 = OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__cancellables;
    swift_beginAccess();
    v22 = v6;
    v7 = *(v1 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAECEE3C();
      sub_1DAE614B0(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      sub_1DAED1F9C();
      v9 = v24;
      v8 = v25;
      v10 = v26;
      v11 = v27;
      v12 = v28;
    }

    else
    {
      v13 = -1 << *(v7 + 32);
      v8 = v7 + 56;
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v7 + 56);
      swift_bridgeObjectRetain_n();
      v11 = 0;
      v9 = v7;
    }

    v16 = (v10 + 64) >> 6;
    if (v9 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v17 = v11;
      v18 = v12;
      v19 = v11;
      if (!v12)
      {
        break;
      }

LABEL_13:
      v20 = (v18 - 1) & v18;
      v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

      if (!v21)
      {
LABEL_19:
        sub_1DAD70B20(v9);

        *(v1 + v22) = MEMORY[0x1E69E7CD0];

        return;
      }

      while (1)
      {
        sub_1DAECEE2C();

        v11 = v19;
        v12 = v20;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_1DAED24BC())
        {
          sub_1DAECEE3C();
          swift_dynamicCast();
          v19 = v11;
          v20 = v12;
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_19;
      }

      v18 = *(v8 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1DAE5FA38()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ActivitySceneContentViewController(0);
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1DAE5FB68(void *a1)
{
  v1 = a1;
  v2 = sub_1DAECEDCC();
  v3 = sub_1DAED203C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1DAD6482C(*&v1[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v1[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], &v10);
    _os_log_impl(&dword_1DAD61000, v2, v3, "[%{public}s] AOD timeline invalidated by host content change.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E127F100](v5, -1, -1);
    MEMORY[0x1E127F100](v4, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong _backlightSceneEnvironment];

    if (v8)
    {
      v9 = sub_1DAED1CBC();
      [v8 invalidateAllTimelinesForReason_];

      swift_unknownObjectRelease();
    }
  }
}

double sub_1DAE5FD10(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = v1;
  v12 = sub_1DAECEDCC();
  v13 = sub_1DAED200C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1DAD6482C(*&v11[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v11[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], v49);
    _os_log_impl(&dword_1DAD61000, v12, v13, "[%{public}s] Trait collection did change.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E127F100](v15, -1, -1);
    MEMORY[0x1E127F100](v14, -1, -1);
  }

  v16 = &selRef__registerSceneActionsHandlerArray_forKey_;
  if (!a1 || [a1 _backlightLuminance] != 1)
  {
    v17 = [v11 traitCollection];
    v18 = [v17 _backlightLuminance];

    if (v18 == 1)
    {
      v20 = v11;
      v21 = sub_1DAECEDCC();
      v22 = sub_1DAED200C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v49[0] = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_1DAD6482C(*&v20[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v20[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], v49);
        _os_log_impl(&dword_1DAD61000, v21, v22, "[%{public}s] Trait collection: entering AoD.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1E127F100](v24, -1, -1);
        MEMORY[0x1E127F100](v23, -1, -1);
      }

      v25 = *&v20[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__viewModels];
      v48[0] = MEMORY[0x1E69E7CC0];
      if (v25 >> 62)
      {
LABEL_32:
        v26 = sub_1DAED247C();
        if (v26)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
LABEL_10:
          a1 = 0;
          v16 = (v25 & 0xC000000000000001);
          v46 = v10;
          while (1)
          {
            if (v16)
            {
              v27 = MEMORY[0x1E127E1F0](a1, v25);
              v11 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            else
            {
              if (a1 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_32;
              }

              v27 = *(v25 + 8 * a1 + 32);

              v11 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
                goto LABEL_20;
              }
            }

            v28 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
            swift_beginAccess();
            sub_1DAE61440(v27 + v28, v10);
            v29 = sub_1DAECDCEC();
            if ((*(*(v29 - 8) + 48))(v10, 1, v29) == 1)
            {
              sub_1DAD64398(v10, &qword_1ECC07CE8, &qword_1DAED6F60);
              sub_1DAED25CC();
              sub_1DAED25FC();
              v10 = v46;
              sub_1DAED260C();
              sub_1DAED25DC();
            }

            else
            {

              sub_1DAD64398(v10, &qword_1ECC07CE8, &qword_1DAED6F60);
            }

            ++a1;
            if (v11 == v26)
            {
              v36 = v48[0];
              if (v48[0] < 0)
              {
                goto LABEL_46;
              }

              goto LABEL_34;
            }
          }
        }
      }

      v36 = MEMORY[0x1E69E7CC0];
      if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

LABEL_34:
      if ((v36 & 0x4000000000000000) != 0)
      {
        goto LABEL_46;
      }

      v38 = *(v36 + 16);
      if (!v38)
      {
        goto LABEL_47;
      }

LABEL_36:
      v39 = 0;
      v46 = v36 & 0xC000000000000001;
      while (1)
      {
        if (v46)
        {
          v40 = MEMORY[0x1E127E1F0](v39, v36);
          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v39 >= *(v36 + 16))
          {
            goto LABEL_45;
          }

          v40 = *(v36 + 8 * v39 + 32);

          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            v38 = sub_1DAED247C();
            if (!v38)
            {
LABEL_47:

              return result;
            }

            goto LABEL_36;
          }
        }

        sub_1DAECDCDC();
        v42 = sub_1DAECDCEC();
        (*(*(v42 - 8) + 56))(v7, 0, 1, v42);
        v43 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
        swift_beginAccess();
        v44 = v47;
        sub_1DAE61440(v40 + v43, v47);
        swift_beginAccess();
        sub_1DAE101FC(v7, v40 + v43);
        swift_endAccess();
        sub_1DAE64750(v44);

        sub_1DAD64398(v44, &qword_1ECC07CE8, &qword_1DAED6F60);
        sub_1DAD64398(v7, &qword_1ECC07CE8, &qword_1DAED6F60);
        ++v39;
        if (v41 == v38)
        {
          goto LABEL_47;
        }
      }
    }

LABEL_21:
    if (!a1)
    {
      return result;
    }
  }

  if ([a1 v16[119]] == 1)
  {
    v30 = [v11 traitCollection];
    v31 = [v30 v16[119]];

    if (v31 != 1)
    {
      v32 = v11;
      v47 = sub_1DAECEDCC();
      v33 = sub_1DAED200C();

      if (os_log_type_enabled(v47, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v49[0] = v35;
        *v34 = 136446210;
        *(v34 + 4) = sub_1DAD6482C(*&v32[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v32[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], v49);
        _os_log_impl(&dword_1DAD61000, v47, v33, "[%{public}s] Trait collection: exiting AoD.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x1E127F100](v35, -1, -1);
        MEMORY[0x1E127F100](v34, -1, -1);
      }

      else
      {
        v37 = v47;
      }
    }
  }

  return result;
}

uint64_t sub_1DAE604D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECDA2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v8 = *&v2[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController];
  v9 = sub_1DAECD9DC();
  v10 = [v8 _timelinesForDateInterval_];

  v11 = sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);
  v12 = sub_1DAED1E7C();

  (*(v5 + 16))(v7, a1, v4);
  v13 = v2;

  v14 = sub_1DAECEDCC();
  v15 = sub_1DAED200C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v16 = 136446722;
    *(v16 + 4) = sub_1DAD6482C(*&v13[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v13[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], &v27);
    *(v16 + 12) = 2082;
    sub_1DAE614B0(&qword_1ECC08D48, MEMORY[0x1E6968130], MEMORY[0x1E6968158]);
    v17 = sub_1DAED287C();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_1DAD6482C(v17, v19, &v27);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    v21 = MEMORY[0x1E127DB00](v12, v11);
    v23 = sub_1DAD6482C(v21, v22, &v27);

    *(v16 + 24) = v23;
    _os_log_impl(&dword_1DAD61000, v14, v15, "[%{public}s] AoD timeline request with dateInterval: %{public}s - timelines: %{public}s", v16, 0x20u);
    v24 = v26;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v24, -1, -1);
    MEMORY[0x1E127F100](v16, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return v12;
}

uint64_t sub_1DAE60938(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v7 = sub_1DAECDA2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  BSDispatchQueueAssertMain();
  if (a1)
  {
    v20 = [a1 presentationInterval];
    sub_1DAECD9EC();

    sub_1DAECDA0C();
    (*(v8 + 8))(v10, v7);
    v21 = sub_1DAECDCEC();
    (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
  }

  else
  {
    v22 = sub_1DAECDCEC();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  }

  sub_1DAE61440(v19, v16);
  v23 = v4;
  v58 = a1;
  v24 = a1;
  v25 = sub_1DAECEDCC();
  v26 = sub_1DAED200C();

  if (os_log_type_enabled(v25, v26))
  {
    v54 = v24;
    v57 = a2;
    v27 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v60[0] = v55;
    *v27 = 136446722;
    *(v27 + 4) = sub_1DAD6482C(*&v23[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v23[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], v60);
    *(v27 + 12) = 2082;
    sub_1DAE61440(v16, v13);
    v28 = sub_1DAECDCEC();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 48))(v13, 1, v28);
    v56 = v26;
    if (v30 == 1)
    {
      sub_1DAD64398(v13, &qword_1ECC07CE8, &qword_1DAED6F60);
      v31 = 0xE300000000000000;
      v32 = 7104878;
    }

    else
    {
      v53 = v23;
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v34 = qword_1EE00A708;
      v35 = sub_1DAECDC5C();
      v36 = [v34 stringFromDate_];

      v32 = sub_1DAED1CEC();
      v31 = v37;

      (*(v29 + 8))(v13, v28);
      v23 = v53;
    }

    sub_1DAD64398(v16, &qword_1ECC07CE8, &qword_1DAED6F60);
    v38 = sub_1DAD6482C(v32, v31, v60);

    *(v27 + 14) = v38;
    *(v27 + 22) = 2082;
    v33 = v59;
    a2 = v57;
    v39 = 7104878;
    if (v58)
    {
      v40 = [v54 description];
      v39 = sub_1DAED1CEC();
      v42 = v41;
    }

    else
    {
      v42 = 0xE300000000000000;
    }

    v43 = sub_1DAD6482C(v39, v42, v60);

    *(v27 + 24) = v43;
    _os_log_impl(&dword_1DAD61000, v25, v56, "[%{public}s] AoD update to override date: %{public}s with specifier: %{public}s", v27, 0x20u);
    v44 = v55;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v44, -1, -1);
    MEMORY[0x1E127F100](v27, -1, -1);
  }

  else
  {

    sub_1DAD64398(v16, &qword_1ECC07CE8, &qword_1DAED6F60);
    v33 = v59;
  }

  v45 = *&v23[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController];
  type metadata accessor for SecureHostingController(0);
  sub_1DAE614B0(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
  v46 = v45;
  if (sub_1DAECF9AC())
  {
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (!v47)
    {

      v48 = swift_unknownObjectRelease();
      goto LABEL_20;
    }

    [v47 setNeedsSynchronousUpdate_];
    swift_unknownObjectRelease();
  }

LABEL_20:
  MEMORY[0x1EEE9AC00](v48);
  *(&v52 - 2) = v19;
  sub_1DADEA380(sub_1DAE614F8, (&v52 - 4), v49);
  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  v50 = swift_allocObject();
  *(v50 + 16) = a2;
  *(v50 + 24) = v33;

  sub_1DAED22FC();

  return sub_1DAD64398(v19, &qword_1ECC07CE8, &qword_1DAED6F60);
}

uint64_t sub_1DAE61000(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v10 = *a1;
  sub_1DAE61440(a2, &v13[-v8]);
  v11 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAE61440(v10 + v11, v6);
  swift_beginAccess();
  sub_1DAE101FC(v9, v10 + v11);
  swift_endAccess();
  sub_1DAE64750(v6);
  sub_1DAD64398(v6, &qword_1ECC07CE8, &qword_1DAED6F60);
  return sub_1DAD64398(v9, &qword_1ECC07CE8, &qword_1DAED6F60);
}

id sub_1DAE61220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneContentViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivitySceneContentViewController(uint64_t a1)
{
  result = qword_1EE0060C0;
  if (!qword_1EE0060C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE6136C(uint64_t a1)
{
  result = sub_1DAECEDEC();
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

uint64_t sub_1DAE61440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE614B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1DAE6169C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListItemSceneDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ListItemSceneDelegate(uint64_t a1)
{
  result = qword_1EE006BA8;
  if (!qword_1EE006BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE61780(void *a1)
{
  v30 = a1;
  v2 = sub_1DAED17AC();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1DAED182C();
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECEDEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005E28 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_1EE011718);
  v12 = *(v8 + 16);
  v12(v10, v11, v7);
  v13 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v14 = *(v8 + 40);
  v14(v1 + v13, v10, v7);
  swift_endAccess();
  if (qword_1EE005DF0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_1EE0116B8);
  v12(v10, v15, v7);
  v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v14(v1 + v16, v10, v7);
  swift_endAccess();
  if (qword_1EE005E08 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_1EE0116E8);
  v12(v10, v17, v7);
  v18 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v14(v1 + v18, v10, v7);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_wantsInheritedColorScheme) = 1;
  v19 = v30;
  v20 = v1;
  sub_1DAE9150C(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DAED64D0;
  v22 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
  v33 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v34 = v22;

  MEMORY[0x1E127DA50](0x6574497473696C2DLL, 0xE90000000000006DLL);
  v23 = v33;
  v24 = v34;
  v25 = v29;
  (*(v4 + 104))(v6, *MEMORY[0x1E6985918], v29);
  v26 = v28;
  sub_1DAED178C();
  v27 = sub_1DAE770FC(v23, v24, v6, v19, v26);

  (*(v31 + 8))(v26, v32);
  (*(v4 + 8))(v6, v25);
  *(v21 + 32) = v27;
  *(v20 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels) = v21;

  sub_1DAE8B590(0x7463656E6E6F63uLL, 0xE700000000000000);
}

uint64_t sub_1DAE61C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099C8, &qword_1DAEDB020);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DAD6495C(a3, v25 - v10, &qword_1ECC099C8, &qword_1DAEDB020);
  v12 = sub_1DAED1F2C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DAD64398(v11, &qword_1ECC099C8, &qword_1DAEDB020);
  }

  else
  {
    sub_1DAED1F1C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DAED1ECC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DAED1D7C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1DAD64398(a3, &qword_1ECC099C8, &qword_1DAEDB020);

      return v23;
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

  sub_1DAD64398(a3, &qword_1ECC099C8, &qword_1DAEDB020);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_1DAE61F60(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0xD000000000000017;
    if (a1 == 3)
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0x6C616974696E69;
    if (a1)
    {
      v6 = 0x756F726765726F66;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7269766E4577656ELL;
    v2 = 0x41676E6974697865;
    v3 = 0xD000000000000031;
    if (a1 != 9)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    if (a1 != 6)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 == 5)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAE620F8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == *MEMORY[0x1E697DBB8])
  {
    return 0x746867696CLL;
  }

  if (v6 == *MEMORY[0x1E697DBA8])
  {
    return 1802658148;
  }

  (*(v2 + 8))(v5, a1);
  return 0x6E776F6E6B6E753CLL;
}

uint64_t sub_1DAE62248()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE622BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

void sub_1DAE62330(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v3, v23, &qword_1ECC090F8, &unk_1DAED8720);
  v4 = v24;
  if (v24)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v9, v7);
    sub_1DAD64398(v23, &qword_1ECC090F8, &unk_1DAED8720);
    v10 = *v9;
    v11 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
    swift_beginAccess();
    sub_1DAD6495C(v10 + v11, v21, &qword_1ECC099C0, &qword_1DAEDCB90);
    v12 = v22;
    if (v22)
    {
      v13 = __swift_project_boxed_opaque_existential_1(v21, v22);
      v20[1] = v20;
      v14 = *(v12 - 8);
      v15 = MEMORY[0x1EEE9AC00](v13);
      v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      sub_1DAD64398(v21, &qword_1ECC099C0, &qword_1DAEDCB90);
      v18 = *(v14 + 8);

      v18(v17, v12);
      (*(v6 + 8))(v9, v4);
      sub_1DAED0CDC();

      return;
    }

    sub_1DAD64398(v21, &qword_1ECC099C0, &qword_1DAEDCB90);
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    sub_1DAD64398(v23, &qword_1ECC090F8, &unk_1DAED8720);
  }

  v19 = sub_1DAED1BEC();
  (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t sub_1DAE6265C(uint64_t a1)
{
  v49 = a1;
  v2 = sub_1DAECF0AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v44 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC089C8, &qword_1DAED7468);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  BSDispatchQueueAssertMain();
  v18 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
  swift_beginAccess();
  v19 = *(v15 + 56);
  sub_1DAD6495C(v49, v17, &qword_1ECC08370, &unk_1DAED6580);
  v48 = v18;
  v20 = v1 + v18;
  v21 = v1;
  v22 = v3;
  sub_1DAD6495C(v20, &v17[v19], &qword_1ECC08370, &unk_1DAED6580);
  v23 = *(v3 + 48);
  if (v23(v17, 1, v2) == 1)
  {
    if (v23(&v17[v19], 1, v2) == 1)
    {
      return sub_1DAD64398(v17, &qword_1ECC08370, &unk_1DAED6580);
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v17, v13, &qword_1ECC08370, &unk_1DAED6580);
  if (v23(&v17[v19], 1, v2) == 1)
  {
    (*(v3 + 8))(v13, v2);
LABEL_6:
    v49 = v3;
    sub_1DAD64398(v17, &qword_1ECC089C8, &qword_1DAED7468);
    v24 = v48;
LABEL_7:

    v25 = sub_1DAECEDCC();
    v26 = sub_1DAED203C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50 = v28;
      *v27 = 136446466;
      *(v27 + 4) = sub_1DAD6482C(*(v21 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v21 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v50);
      *(v27 + 12) = 2082;
      if (v23((v21 + v24), 1, v2))
      {
        v29 = 0xE300000000000000;
        v30 = 7104878;
      }

      else
      {
        v46 = v28;
        v35 = v49;
        v36 = *(v49 + 16);
        v37 = v44;
        v36(v44, v21 + v24, v2);
        v38 = v45;
        v36(v45, v37, v2);
        v39 = (*(v35 + 88))(v38, v2);
        if (v39 == *MEMORY[0x1E697DBB8])
        {
          (*(v35 + 8))(v37, v2);
          v29 = 0xE500000000000000;
          v30 = 0x746867696CLL;
        }

        else
        {
          v40 = v39;
          v41 = *MEMORY[0x1E697DBA8];
          v42 = *(v35 + 8);
          v42(v37, v2);
          if (v40 == v41)
          {
            v29 = 0xE400000000000000;
            v30 = 1802658148;
          }

          else
          {
            v42(v45, v2);
            v29 = 0xE90000000000003ELL;
            v30 = 0x6E776F6E6B6E753CLL;
          }
        }

        v24 = v48;
        v28 = v46;
      }

      v43 = sub_1DAD6482C(v30, v29, &v50);

      *(v27 + 14) = v43;
      _os_log_impl(&dword_1DAD61000, v25, v26, "[%{public}s] Color scheme changed: (%{public}s)", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v28, -1, -1);
      MEMORY[0x1E127F100](v27, -1, -1);
    }

    v17 = v47;
    sub_1DAD6495C(v21 + v24, v47, &qword_1ECC08370, &unk_1DAED6580);

    sub_1DAECEE6C();

    return sub_1DAD64398(v17, &qword_1ECC08370, &unk_1DAED6580);
  }

  v31 = v46;
  (*(v22 + 32))(v46, &v17[v19], v2);
  sub_1DAE6D890(&qword_1EE00ABA8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  v32 = sub_1DAED1CAC();
  v49 = v22;
  v33 = *(v22 + 8);
  v33(v31, v2);
  v33(v13, v2);
  result = sub_1DAD64398(v17, &qword_1ECC08370, &unk_1DAED6580);
  v24 = v48;
  if ((v32 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1DAE62CEC(uint64_t a1, uint64_t *a2, const char *a3, ...)
{
  v35 = a3;
  v5 = v3;
  v7 = sub_1DAECF0AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC089C8, &qword_1DAED7468);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  BSDispatchQueueAssertMain();
  v18 = *a2;
  swift_beginAccess();
  v19 = *(v15 + 56);
  sub_1DAD6495C(a1, v17, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD6495C(v5 + v18, &v17[v19], &qword_1ECC08370, &unk_1DAED6580);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) == 1)
  {
    if (v20(&v17[v19], 1, v7) == 1)
    {
      sub_1DAD64398(v17, &qword_1ECC08370, &unk_1DAED6580);
      return;
    }
  }

  else
  {
    sub_1DAD6495C(v17, v13, &qword_1ECC08370, &unk_1DAED6580);
    if (v20(&v17[v19], 1, v7) != 1)
    {
      v28 = &v17[v19];
      v29 = v32;
      (*(v8 + 32))(v32, v28, v7);
      sub_1DAE6D890(&qword_1EE00ABA8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
      v30 = sub_1DAED1CAC();
      v31 = *(v8 + 8);
      v31(v29, v7);
      v31(v13, v7);
      sub_1DAD64398(v17, &qword_1ECC08370, &unk_1DAED6580);
      if (v30)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v8 + 8))(v13, v7);
  }

  sub_1DAD64398(v17, &qword_1ECC089C8, &qword_1DAED7468);
LABEL_7:

  v21 = sub_1DAECEDCC();
  v22 = sub_1DAED203C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136446466;
    *(v23 + 4) = sub_1DAD6482C(*(v5 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v5 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v36);
    *(v23 + 12) = 2082;
    sub_1DAD6495C(v5 + v18, v33, &qword_1ECC08370, &unk_1DAED6580);
    v25 = sub_1DAED1D4C();
    v27 = sub_1DAD6482C(v25, v26, &v36);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_1DAD61000, v21, v22, v35, v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v24, -1, -1);
    MEMORY[0x1E127F100](v23, -1, -1);
  }

  sub_1DAE69370();
  sub_1DAE69B6C(6);
}

void sub_1DAE631D8(uint64_t a1, uint64_t *a2, const char *a3, uint64_t a4)
{
  v8 = a1 & 1;
  BSDispatchQueueAssertMain();
  v9 = *a2;
  if (*(v4 + *a2) != v8)
  {

    v10 = v4;
    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED203C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_1DAD6482C(*(v10 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v10 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v15);
      *(v13 + 12) = 1026;
      *(v13 + 14) = *(v10 + v9);

      _os_log_impl(&dword_1DAD61000, v11, v12, a3, v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    else
    {
    }

    sub_1DAE69B6C(a4);
  }
}

uint64_t sub_1DAE63360(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1DAECE21C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  result = BSDispatchQueueAssertMain();
  v11 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) != v2)
  {

    v12 = sub_1DAECEDCC();
    v13 = sub_1DAED203C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v14 = 136446466;
      *(v14 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), v21);
      *(v14 + 12) = 1026;
      *(v14 + 14) = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay);

      _os_log_impl(&dword_1DAD61000, v12, v13, "[%{public}s] isContinuityDisplay changed %{BOOL,public}d)", v14, 0x12u);
      v15 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E127F100](v15, -1, -1);
      MEMORY[0x1E127F100](v14, -1, -1);
    }

    else
    {
    }

    if (*(v1 + v11))
    {
      v16 = MEMORY[0x1E6994048];
    }

    else
    {
      v16 = MEMORY[0x1E6994040];
    }

    (*(v4 + 104))(v9, *v16, v3);
    v17 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
    swift_beginAccess();
    (*(v4 + 16))(v6, v1 + v17, v3);
    swift_beginAccess();
    (*(v4 + 24))(v1 + v17, v9, v3);
    swift_endAccess();
    sub_1DAE6364C(v6);
    v18 = *(v4 + 8);
    v18(v6, v3);
    return (v18)(v9, v3);
  }

  return result;
}

void sub_1DAE6364C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DAECE21C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, v1 + v7, v3);
  sub_1DAE6D890(&qword_1EE00BCD8, MEMORY[0x1E6994050], MEMORY[0x1E6994058]);
  v9 = sub_1DAED1CAC();
  (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v17);
      *(v12 + 12) = 2082;
      v8(v6, v2 + v7, v3);
      v14 = sub_1DAED1D4C();
      v16 = sub_1DAD6482C(v14, v15, &v17);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] keybagLockPolicy changed %{public}s)", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    sub_1DAE69B6C(4);
  }
}

void sub_1DAE638F4(uint64_t a1)
{
  v2 = v1;
  v3 = a1 & 1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) != v3)
  {

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED203C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v9);
      *(v7 + 12) = 1026;
      *(v7 + 14) = *(v2 + v4);

      _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] isForeground changed (%{BOOL,public}d)", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    else
    {
    }

    if (*(v2 + v4) == 1)
    {

      sub_1DAE69B6C(1);
    }
  }
}

void sub_1DAE63A78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAED153C();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAECF8EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_1DAED157C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  BSDispatchQueueAssertMain();
  v48 = a1;
  v49 = v7;
  v19 = *(v7 + 16);
  v19(v11, a1, v6);
  sub_1DAED156C();
  v20 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
  swift_beginAccess();
  v44 = v20;
  v50 = v6;
  v19(v11, v2 + v20, v6);
  sub_1DAED156C();
  sub_1DAE6D890(&qword_1EE00AB28, MEMORY[0x1E6985700], MEMORY[0x1E6985718]);
  LOBYTE(v6) = sub_1DAED1CAC();
  v21 = *(v13 + 8);
  v21(v15, v12);
  v21(v18, v12);
  if ((v6 & 1) == 0)
  {
    v19(v51, v48, v50);

    v22 = sub_1DAECEDCC();
    v23 = sub_1DAED203C();

    LODWORD(v48) = v23;
    v24 = os_log_type_enabled(v22, v23);
    v25 = v2;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v53 = v43;
      *v26 = 136446466;
      v27 = sub_1DAD6482C(*(v25 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v25 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v53);
      v42 = v26;
      *(v26 + 4) = v27;
      *(v26 + 12) = 2082;
      v28 = v50;
      v19(v11, v51, v50);
      sub_1DAED156C();
      v19(v11, v25 + v44, v28);
      sub_1DAED14EC();
      v29 = v45;
      sub_1DAED14FC();
      v41 = v22;
      v30 = sub_1DAED14DC();
      v44 = v25;
      v31 = v30;

      (*(v46 + 8))(v29, v47);
      v32 = *(v49 + 8);
      v32(v11, v28);
      v21(v18, v12);
      v52 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
      sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70, MEMORY[0x1E69E6310]);
      v33 = sub_1DAED1C8C();
      v35 = v34;

      v32(v51, v28);
      v36 = sub_1DAD6482C(v33, v35, &v53);

      v38 = v41;
      v37 = v42;
      *(v42 + 14) = v36;
      v39 = v37;
      _os_log_impl(&dword_1DAD61000, v38, v48, "[%{public}s] raw environment did change: %{public}s", v37, 0x16u);
      v40 = v43;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v40, -1, -1);
      MEMORY[0x1E127F100](v39, -1, -1);
    }

    else
    {

      (*(v49 + 8))(v51, v50);
    }

    sub_1DAE69370();
    sub_1DAE69B6C(6);
  }
}

void sub_1DAE64024(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1DAECF8EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v8 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment) != v3)
  {

    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v15);
      *(v11 + 12) = 1026;
      *(v11 + 14) = *(v2 + v8);

      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] prefersUnredactedContentInLowLuminanceEnvironment changed %{BOOL,public}d)", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    sub_1DAE684B0(v7);
    v13 = sub_1DAECF4BC();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      sub_1DAE69B6C(9);
    }
  }
}

void sub_1DAE64238(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1DAECF8EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v8 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance;
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) != v3)
  {

    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v16);
      *(v11 + 12) = 1026;
      *(v11 + 14) = *(v2 + v8);

      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] supports low luminance changed (%{BOOL,public}d)", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    sub_1DAE684B0(v7);
    v13 = sub_1DAECF4BC();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      if (*(v2 + v8))
      {
        v14 = 7;
      }

      else
      {
        v14 = 8;
      }

      sub_1DAE69B6C(v14);
    }
  }
}

BOOL sub_1DAE64458()
{
  v1 = sub_1DAED17AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  v11 = sub_1DAED1BEC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAE62330(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DAD64398(v10, &qword_1ECC08D70, &unk_1DAED8710);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_1DAED1BAC();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily, v1);
    sub_1DAE6D890(&qword_1ECC08FF0, MEMORY[0x1E69858D8], MEMORY[0x1E69858F8]);
    sub_1DAED1E4C();
    sub_1DAED1E4C();
    v16 = *(v2 + 8);
    v16(v4, v1);
    v16(v7, v1);
    (*(v12 + 8))(v14, v11);
    return v17[1] == v17[0];
  }
}

void sub_1DAE64750(uint64_t a1)
{
  v3 = sub_1DAECDCEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v59 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B0, qword_1DAEDCBF0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - v19;
  BSDispatchQueueAssertMain();
  v21 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  v22 = *(v18 + 56);
  v68 = a1;
  sub_1DAD6495C(a1, v20, &qword_1ECC07CE8, &qword_1DAED6F60);
  v65 = v1;
  sub_1DAD6495C(v1 + v21, &v20[v22], &qword_1ECC07CE8, &qword_1DAED6F60);
  v66 = v4;
  v23 = *(v4 + 48);
  if (v23(v20, 1, v3) == 1)
  {
    v24 = v3;
    if (v23(&v20[v22], 1, v3) == 1)
    {
      sub_1DAD64398(v20, &qword_1ECC07CE8, &qword_1DAED6F60);
      return;
    }
  }

  else
  {
    sub_1DAD6495C(v20, v16, &qword_1ECC07CE8, &qword_1DAED6F60);
    if (v23(&v20[v22], 1, v3) != 1)
    {
      v67 = v23;
      v35 = v66;
      v36 = v61;
      (*(v66 + 32))(v61, &v20[v22], v3);
      sub_1DAE6D890(&qword_1EE00BCF8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v37 = sub_1DAED1CAC();
      v38 = *(v35 + 8);
      v38(v36, v3);
      v38(v16, v3);
      v26 = v68;
      sub_1DAD64398(v20, &qword_1ECC07CE8, &qword_1DAED6F60);
      v25 = v21;
      if (v37)
      {
        return;
      }

      goto LABEL_7;
    }

    v24 = v3;
    (*(v66 + 8))(v16, v3);
  }

  v67 = v23;
  sub_1DAD64398(v20, &qword_1ECC087B0, qword_1DAEDCBF0);
  v25 = v21;
  v26 = v68;
  v3 = v24;
LABEL_7:
  v27 = v65;

  v28 = sub_1DAECEDCC();
  v29 = sub_1DAED203C();
  if (os_log_type_enabled(v28, v29))
  {
    LODWORD(v61) = v29;
    v30 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v69 = v59;
    *v30 = 136446466;
    *(v30 + 4) = sub_1DAD6482C(*(v27 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v27 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v69);
    *(v30 + 12) = 2082;
    v31 = v63;
    sub_1DAD6495C(v27 + v25, v63, &qword_1ECC07CE8, &qword_1DAED6F60);
    v32 = v67;
    if (v67(v31, 1, v3) == 1)
    {

      sub_1DAD64398(v31, &qword_1ECC07CE8, &qword_1DAED6F60);
      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      sub_1DAD64398(v31, &qword_1ECC07CE8, &qword_1DAED6F60);
      v63 = v25;
      v39 = v27 + v25;
      v40 = v62;
      sub_1DAD6495C(v39, v62, &qword_1ECC07CE8, &qword_1DAED6F60);
      v41 = v32(v40, 1, v3);

      if (v41 == 1)
      {
        __break(1u);
        return;
      }

      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v42 = qword_1EE00A708;
      v43 = v62;
      v44 = sub_1DAECDC5C();
      v45 = [v42 stringFromDate_];

      v46 = sub_1DAED1CEC();
      v33 = v47;

      (*(v66 + 8))(v43, v3);
      v34 = v46;
      v26 = v68;
      v25 = v63;
    }

    v48 = sub_1DAD6482C(v34, v33, &v69);

    *(v30 + 14) = v48;
    _os_log_impl(&dword_1DAD61000, v28, v61, "[%{public}s] AoD override date changed (%{public}s)", v30, 0x16u);
    v49 = v59;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v49, -1, -1);
    MEMORY[0x1E127F100](v30, -1, -1);
  }

  else
  {
  }

  sub_1DAE69370();
  v50 = v67;
  if (v67(v26, 1, v3) != 1 || (v51 = v64, sub_1DAD6495C(v27 + v25, v64, &qword_1ECC07CE8, &qword_1DAED6F60), v52 = v25, v53 = v50(v51, 1, v3), sub_1DAD64398(v51, &qword_1ECC07CE8, &qword_1DAED6F60), v54 = v53 == 1, v25 = v52, v54))
  {
    if (v50(v26, 1, v3) == 1 || (v55 = v27 + v25, v56 = v60, sub_1DAD6495C(v55, v60, &qword_1ECC07CE8, &qword_1DAED6F60), v57 = v50(v56, 1, v3), sub_1DAD64398(v56, &qword_1ECC07CE8, &qword_1DAED6F60), v57 != 1))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
      sub_1DAECEEEC();

      return;
    }

    v58 = 8;
  }

  else
  {
    v58 = 7;
  }

  sub_1DAE69B6C(v58);
}

uint64_t sub_1DAE64FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
  swift_beginAccess();
  return sub_1DAD6495C(v1 + v3, a1, &unk_1ECC09EC0, &qword_1DAED7970);
}

double sub_1DAE65018(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099C8, &qword_1DAEDB020);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25[-1] - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v8 = Strong;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = a1;
    v12 = sub_1DAECEF2C();
    if (*v13 != -1)
    {
      ++*v13;
      v12(v25, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1DAECEF3C();

      v14 = v25[0];
      v15 = sub_1DAED1F2C();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      sub_1DAED1F0C();
      v16 = v11;

      v17 = sub_1DAED1EFC();
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69E85E0];
      v18[2] = v17;
      v18[3] = v19;
      v18[4] = v8;
      v18[5] = v10;
      v18[6] = v14;
      sub_1DAE61C60(0, 0, v5, &unk_1DAEDC8B0, v18);

      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_1EE005E78 != -1)
  {
LABEL_11:
    swift_once();
  }

  v20 = sub_1DAECEDEC();
  __swift_project_value_buffer(v20, qword_1EE0117A8);
  v21 = sub_1DAECEDCC();
  v22 = sub_1DAED201C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DAD61000, v21, v22, "Action received is not an LNAction", v23, 2u);
    MEMORY[0x1E127F100](v23, -1, -1);
  }

  return result;
}

uint64_t sub_1DAE65340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_1DAECE3DC();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  sub_1DAED1F0C();
  v6[23] = sub_1DAED1EFC();
  v9 = sub_1DAED1ECC();
  v6[24] = v9;
  v6[25] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1DAE65438, v9, v8);
}

uint64_t sub_1DAE65438()
{
  v22 = v0;
  v1 = *(v0 + 136);
  v2 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v2, v0 + 56, &qword_1ECC090F8, &unk_1DAED8720);
  if (*(v0 + 80))
  {
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v5 = *(v0 + 160);
    v6 = *(v0 + 136);
    sub_1DAD657D8((v0 + 56), v0 + 16);
    v7 = *(v4 + 104);
    v7(v3, *MEMORY[0x1E6994178], v5);
    if ((*(v6 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) & 1) != 0 || *(*(v0 + 136) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) == 1)
    {
      v8 = *(v0 + 176);
      v9 = *(v0 + 160);
      (*(*(v0 + 168) + 8))(v8, v9);
      v7(v8, *MEMORY[0x1E6994180], v9);
    }

    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_1DAE657B4;
    v11 = *(v0 + 176);
    v12 = *(v0 + 144);

    return sub_1DAE3F520(v12, v11);
  }

  else
  {

    sub_1DAD64398(v0 + 56, &qword_1ECC090F8, &unk_1DAED8720);

    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 136);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1DAD6482C(*(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v21);
      _os_log_impl(&dword_1DAD61000, v14, v15, "[%{public}s] Unable to perform interaction - no session key found.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E127F100](v18, -1, -1);
      MEMORY[0x1E127F100](v17, -1, -1);
    }

    v19 = *(v0 + 152);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    if (*(v0 + 120) == v19)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 128) = 0;

      sub_1DAECEF4C();
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1DAE657B4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_1DAE65B1C;
  }

  else
  {
    v5 = sub_1DAE658F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1DAE658F0()
{
  v14 = v0;

  v1 = sub_1DAECEDCC();
  v2 = sub_1DAED203C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  if (v3)
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1DAD6482C(*(v7 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v7 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v13);
    _os_log_impl(&dword_1DAD61000, v1, v2, "[%{public}s] Finished executing LNAction", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E127F100](v9, -1, -1);
    MEMORY[0x1E127F100](v8, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v10 = v0[19];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (v0[15] == v10)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v0[16] = 0;

    sub_1DAECEF4C();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DAE65B1C()
{
  v20 = v0;
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[21];

  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v5 = v1;
  v6 = sub_1DAECEDCC();
  v7 = sub_1DAED201C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[27];
  if (v8)
  {
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_1DAD6482C(*(v10 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v10 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v19);
    *(v11 + 12) = 2114;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_1DAD61000, v6, v7, "[%{public}s] Failed to execute LNAction with error: %{public}@", v11, 0x16u);
    sub_1DAD64398(v12, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E127F100](v13, -1, -1);
    MEMORY[0x1E127F100](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[19];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (v0[15] == v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v0[16] = 0;

    sub_1DAECEF4C();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DAE65DC4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v1, &v14, &qword_1ECC090F8, &unk_1DAED8720);
  if (!v15)
  {
    sub_1DAD64398(&v14, &qword_1ECC090F8, &unk_1DAED8720);
LABEL_6:
    v11 = 1;
    return v11 & 1;
  }

  sub_1DAD657D8(&v14, v16);
  v2 = *__swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v3 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
  swift_beginAccess();
  sub_1DAD6495C(v2 + v3, &v14, &qword_1ECC099C0, &qword_1DAEDCB90);
  v4 = v15;
  if (!v15)
  {
    sub_1DAD64398(&v14, &qword_1ECC099C0, &qword_1DAEDCB90);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    goto LABEL_6;
  }

  v5 = __swift_project_boxed_opaque_existential_1(&v14, v15);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 16))(v9, v7);
  sub_1DAD64398(&v14, &qword_1ECC099C0, &qword_1DAEDCB90);
  v10 = *(v6 + 8);

  v10(v9, v4);
  v11 = sub_1DAED0CFC();

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v11 & 1;
}

double sub_1DAE65FD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DAE6608C();
  }

  return result;
}

double sub_1DAE66030(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DAE69B6C(5);
  }

  return result;
}

void sub_1DAE6608C()
{
  v114 = sub_1DAECDEBC();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v110 = v88 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1DAECDE7C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v108 = v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v109 = v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v124 = v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F60, &qword_1DAEDCB78);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v88 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D08, &qword_1DAEDCB80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v119 = v88 - v12;
  v121 = sub_1DAED22EC();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F68, &qword_1DAEDCB88);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v118 = v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v106 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v105 = v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F70, &qword_1DAEDF4F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v102 = v88 - v18;
  v101 = sub_1DAED17AC();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1DAED1ABC();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v21 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1DAED0F0C();
  v116 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v115 = v88 - v24;
  v25 = sub_1DAECDE4C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v107 = v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v88 - v29;
  v31 = sub_1DAED0B1C();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed) & 1) == 0)
  {
    v95 = v88 - v36;
    v90 = v37;
    v91 = v35;
    v89 = v15;
    v96 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed;
    v92 = v10;
    v93 = v8;
    v94 = v7;
    v38 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v38, &v129, &qword_1ECC090F8, &unk_1DAED8720);
    v39 = v130;
    sub_1DAD64398(&v129, &qword_1ECC090F8, &unk_1DAED8720);
    if (!v39)
    {
      v40 = *(v26 + 16);
      v88[1] = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor;
      v41 = v25;
      v88[3] = v26 + 16;
      v88[2] = v40;
      v40(v30, v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor, v25);
      v42 = v95;
      sub_1DAE68BDC(v95);
      (*(v26 + 8))(v30, v41);
      (*(v97 + 16))(v21, v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition, v98);
      (*(v100 + 16))(v99, v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily, v101);
      sub_1DAECE31C();
      v43 = v115;
      sub_1DAED0EFC();
      (*(v90 + 16))(v33, v42, v91);
      v44 = v104;
      (v116[2])(v103, v43, v104);
      v45 = MEMORY[0x1E6993CE0];
      sub_1DAE6D890(&qword_1EE00AB60, MEMORY[0x1E6993CE0], MEMORY[0x1E6993D00]);
      sub_1DAE6D890(&qword_1EE00AB68, v45, MEMORY[0x1E6993CF0]);
      v46 = MEMORY[0x1E6993E40];
      sub_1DAE6D890(&qword_1EE00AB40, MEMORY[0x1E6993E40], MEMORY[0x1E6993E50]);
      sub_1DAE6D890(&qword_1EE00AB48, v46, MEMORY[0x1E6993E48]);
      v47 = v105;
      sub_1DAED0E3C();
      __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activitySessionFactory), *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activitySessionFactory + 24));
      sub_1DAE4005C(v47, &v129);
      sub_1DAD648F8(&v129, &v127);
      swift_beginAccess();
      sub_1DAD94438(&v127, v0 + v38, &qword_1ECC090F8, &unk_1DAED8720);
      swift_endAccess();
      __swift_project_boxed_opaque_existential_1(&v129, v130);
      sub_1DAE3E3BC();
      v48 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver;
      if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver))
      {

        sub_1DAECEE2C();
      }

      (*(v106 + 8))(v47, v89);
      (v116[1])(v115, v44);
      (*(v90 + 8))(v95, v91);
      *(v0 + v48) = 0;

      __swift_destroy_boxed_opaque_existential_1Tm(&v129);
    }

    sub_1DAD6495C(v0 + v38, &v127, &qword_1ECC090F8, &unk_1DAED8720);
    if (v128)
    {
      v49 = v0;
      sub_1DAD657D8(&v127, &v129);
      v50 = *__swift_project_boxed_opaque_existential_1(&v129, v130);
      v51 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_environmentProvider;
      swift_beginAccess();
      sub_1DAD6495C(v50 + v51, &v127, &qword_1ECC099D0, &qword_1DAEDB028);
      v52 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider;
      swift_beginAccess();
      sub_1DAD94438(&v127, v49 + v52, &qword_1ECC099D0, &qword_1DAEDB028);
      swift_endAccess();
      sub_1DAE68294();
      sub_1DAD6495C(v49 + v52, &v127, &qword_1ECC099D0, &qword_1DAEDB028);
      v53 = v128;
      if (v128)
      {
        v54 = __swift_project_boxed_opaque_existential_1(&v127, v128);
        v116 = v88;
        v55 = *(v53 - 8);
        v56 = MEMORY[0x1EEE9AC00](v54);
        v58 = v88 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v58, v56);
        sub_1DAD64398(&v127, &qword_1ECC099D0, &qword_1DAEDB028);
        v59 = sub_1DAED10FC();
        v115 = v59;
        (*(v55 + 8))(v58, v53);
        v126 = v59;
        v60 = v117;
        sub_1DAED22DC();
        v61 = [objc_opt_self() mainRunLoop];
        v125 = v61;
        v62 = sub_1DAED22CC();
        v63 = v119;
        (*(*(v62 - 8) + 56))(v119, 1, 1, v62);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
        sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
        sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
        sub_1DAD8D6A4(&qword_1EE00A858, &qword_1EE00A850, 0x1E695DFD0, MEMORY[0x1E696A010]);
        v64 = v118;
        sub_1DAECEFCC();
        sub_1DAD64398(v63, &qword_1ECC07D08, &qword_1DAEDCB80);

        (*(v120 + 8))(v60, v121);

        sub_1DAD64B94(&unk_1EE005D50, &qword_1ECC09F68, &qword_1DAEDCB88, MEMORY[0x1E695BE50]);
        v65 = v123;
        v66 = sub_1DAECEF6C();
        (*(v122 + 8))(v64, v65);
        *&v127 = v66;
        v67 = swift_allocObject();
        swift_weakInit();
        v68 = swift_allocObject();
        *(v68 + 16) = sub_1DAE6D9AC;
        *(v68 + 24) = v67;
        sub_1DAECF00C();

        swift_beginAccess();
        sub_1DAECEE0C();
        swift_endAccess();
      }

      else
      {
        sub_1DAD64398(&v127, &qword_1ECC099D0, &qword_1DAEDB028);
      }

      v69 = *__swift_project_boxed_opaque_existential_1(&v129, v130);
      v70 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
      swift_beginAccess();
      sub_1DAD6495C(v69 + v70, &v127, &qword_1ECC099C0, &qword_1DAEDCB90);
      v71 = v128;
      if (v128)
      {
        v72 = __swift_project_boxed_opaque_existential_1(&v127, v128);
        v73 = *(v71 - 8);
        v74 = MEMORY[0x1EEE9AC00](v72);
        v76 = v88 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v73 + 16))(v76, v74);
        sub_1DAD64398(&v127, &qword_1ECC099C0, &qword_1DAEDCB90);
        v77 = *(v73 + 8);

        v77(v76, v71);
        v78 = sub_1DAED0CBC();

        *&v127 = v78;
        sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
        v79 = sub_1DAED20EC();
        v125 = v79;
        v80 = sub_1DAED20AC();
        v81 = v124;
        (*(*(v80 - 8) + 56))(v124, 1, 1, v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F78, &unk_1DAEDCB98);
        sub_1DAD64B94(&qword_1EE005CB0, &qword_1ECC09F78, &unk_1DAEDCB98, MEMORY[0x1E695BED8]);
        sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610, MEMORY[0x1E69E8028]);
        v82 = v92;
        sub_1DAECEFBC();
        sub_1DAD64398(v81, &unk_1ECC07D20, &unk_1DAED57D0);

        swift_allocObject();
        swift_weakInit();
        sub_1DAD64B94(&qword_1EE005D28, &qword_1ECC09F60, &qword_1DAEDCB78, MEMORY[0x1E695BE98]);
        v83 = v94;
        sub_1DAECF00C();

        (*(v93 + 8))(v82, v83);
        swift_beginAccess();
        sub_1DAECEE0C();
        swift_endAccess();
      }

      else
      {
        sub_1DAD64398(&v127, &qword_1ECC099C0, &qword_1DAEDCB90);
      }

      v84 = sub_1DAECEDCC();
      v85 = sub_1DAED203C();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v127 = v87;
        *v86 = 136446210;
        *(v86 + 4) = sub_1DAD6482C(*(v49 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v49 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v127);
        _os_log_impl(&dword_1DAD61000, v84, v85, "[%{public}s] Created or found activity entry", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x1E127F100](v87, -1, -1);
        MEMORY[0x1E127F100](v86, -1, -1);
      }

      *(v49 + v96) = 1;
      __swift_destroy_boxed_opaque_existential_1Tm(&v129);
    }

    else
    {
      sub_1DAD64398(&v127, &qword_1ECC090F8, &unk_1DAED8720);
    }
  }
}

uint64_t sub_1DAE677F4(uint64_t a1)
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider;
    swift_beginAccess();
    sub_1DAD6495C(v9 + v10, &v14, &qword_1ECC099D0, &qword_1DAEDB028);
    if (v15)
    {
      sub_1DAD657D8(&v14, v16);
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      sub_1DAED10EC();
      v11 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
      swift_beginAccess();
      (*(v2 + 16))(v4, v9 + v11, v1);
      swift_beginAccess();
      (*(v2 + 24))(v9 + v11, v7, v1);
      swift_endAccess();
      sub_1DAE63A78(v4);

      v12 = *(v2 + 8);
      v12(v4, v1);
      v12(v7, v1);
      return __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {

      return sub_1DAD64398(&v14, &qword_1ECC099D0, &qword_1DAEDB028);
    }
  }

  return result;
}

double sub_1DAE67A44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED203C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      v9 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
      v10 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

      v11 = sub_1DAD6482C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] view collection did change.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    sub_1DAE69B6C(2);
  }

  return result;
}

void sub_1DAE67BAC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v2, v30, &qword_1ECC090F8, &unk_1DAED8720);
  if (v31)
  {
    sub_1DAD648F8(v30, v28);
    sub_1DAD64398(v30, &qword_1ECC090F8, &unk_1DAED8720);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_1DAE3FA28();
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    sub_1DAD64398(v30, &qword_1ECC090F8, &unk_1DAED8720);
  }

  *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource) = 0;

  v3 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__cancellable;
  swift_beginAccess();
  v27 = v3;
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAE6D890(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    sub_1DAED1F9C();
    v6 = v30[0];
    v5 = v30[1];
    v7 = v30[2];
    v8 = v31;
    v9 = v32;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v4;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_21:
      sub_1DAD70B20(v6);

      *(v1 + v27) = MEMORY[0x1E69E7CD0];

      v20 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver;
      if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver))
      {

        sub_1DAECEE2C();
      }

      *(v1 + v20) = 0;

      v21 = (v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
      v22 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
      v23 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8);
      *v21 = 0;
      v21[1] = 0;
      sub_1DAD660D8(v22, v23);
      v24 = (v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
      v25 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
      v26 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated + 8);
      *v24 = 0;
      v24[1] = 0;
      sub_1DAD660D8(v25, v26);
      LOBYTE(v29) = 1;

      sub_1DAECEE5C();

      LOBYTE(v29) = 1;

      sub_1DAECEE5C();

      LOBYTE(v29) = 1;

      sub_1DAECEE5C();

      return;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_17:
      v19 = sub_1DAED24BC();
      if (v19)
      {
        v28[5] = v19;
        sub_1DAECEE3C();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_21;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_21;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1DAE67F8C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-v6];
  v8 = sub_1DAECDBFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1DAED181C();
  if (result)
  {
    goto LABEL_4;
  }

  v13 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v13, v7, &unk_1ECC09EC0, &qword_1DAED7970);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_1DAD64398(v7, &unk_1ECC09EC0, &qword_1DAED7970);
LABEL_4:
    v14 = v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler;
    v15 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
    if (v15)
    {
      v16 = *(v14 + 8);
      v21 = 0;
      (*(v9 + 56))(v4, 1, 1, v8);

      v15(&v21, v4);
      sub_1DAD660D8(v15, v16);
      return sub_1DAD64398(v4, &unk_1ECC09EC0, &qword_1DAED7970);
    }

    return result;
  }

  (*(v9 + 32))(v11, v7, v8);
  v17 = v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler;
  v18 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
  if (v18)
  {
    v19 = *(v17 + 8);
    v21 = 1;
    (*(v9 + 16))(v4, v11, v8);
    (*(v9 + 56))(v4, 0, 1, v8);

    v18(&v21, v4);
    sub_1DAD660D8(v18, v19);
    sub_1DAD64398(v4, &unk_1ECC09EC0, &qword_1DAED7970);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1DAE68294()
{
  v1 = v0;
  v2 = sub_1DAECF8EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v9, &v14, &qword_1ECC099D0, &qword_1DAEDB028);
  if (!v15)
  {
    return sub_1DAD64398(&v14, &qword_1ECC099D0, &qword_1DAEDB028);
  }

  sub_1DAD657D8(&v14, v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1DAED10EC();
  v10 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v10, v2);
  swift_beginAccess();
  (*(v3 + 24))(v1 + v10, v8, v2);
  swift_endAccess();
  sub_1DAE63A78(v5);
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_1DAE684B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = sub_1DAECF32C();
  v36 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAECE21C();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECE23C();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v37 = sub_1DAECF0AC();
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DAED17AC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v36 - v18;
  BSDispatchQueueAssertMain();
  v20 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
  swift_beginAccess();
  v21 = sub_1DAECF8EC();
  (*(*(v21 - 8) + 16))(a1, v2 + v20, v21);
  v22 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v2 + v22, v19, &qword_1ECC07CE8, &qword_1DAED6F60);
  v23 = sub_1DAECDCEC();
  (*(*(v23 - 8) + 48))(v19, 1, v23);
  v24 = v19;
  v25 = v37;
  sub_1DAD64398(v24, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAECF4CC();
  (*(v14 + 16))(v16, v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily, v13);
  sub_1DAECF68C();
  v26 = v39;
  v27 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
  swift_beginAccess();
  sub_1DAD6495C(v2 + v27, v11, &qword_1ECC08370, &unk_1DAED6580);
  v28 = *(v26 + 48);
  if (v28(v11, 1, v25) == 1)
  {
    sub_1DAECF39C();
    if (v28(v11, 1, v25) != 1)
    {
      sub_1DAD64398(v11, &qword_1ECC08370, &unk_1DAED6580);
    }
  }

  else
  {
    (*(v26 + 32))(v38, v11, v25);
  }

  sub_1DAECF3AC();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider), *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider + 24));
  v29 = v40;
  sub_1DAECE29C();
  v30 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
  swift_beginAccess();
  v32 = v43;
  v31 = v44;
  v33 = v45;
  (*(v44 + 16))(v43, v2 + v30, v45);
  LOBYTE(v30) = sub_1DAECE22C();
  (*(v31 + 8))(v32, v33);
  (*(v41 + 8))(v29, v42);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09038, &unk_1DAED85C0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1DAED6200;
    sub_1DAECF31C();
    v48 = v34;
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

  sub_1DAE6D890(&qword_1EE00BE58, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  return sub_1DAECF47C();
}

void sub_1DAE68BDC(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BD0, &qword_1DAED79B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v46 - v4;
  v47 = sub_1DAECDE5C();
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAECDEBC();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = sub_1DAECDE7C();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v55 = *(v17 - 8);
  v56 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = sub_1DAECDE1C();
  if (v21)
  {
    v52 = v20;
    v22 = v57;
    sub_1DAECDDFC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1DAE6D948(v13, v23);
      v24 = sub_1DAED0D2C();
      sub_1DAE6D890(&qword_1EE0057E8, MEMORY[0x1E6993D60], MEMORY[0x1E6993D68]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x1E6993D50], v24);
      swift_willThrow();
      return;
    }

    v39 = v48;
    (*(v22 + 32))(v48, v13, v6);
    sub_1DAED21EC();
    sub_1DAECDE9C();
    sub_1DAECE24C();
    sub_1DAECDE9C();
    v40 = v50;
    sub_1DAECE24C();
    (*(v55 + 56))(v40, 0, 1, v56);
    v38 = sub_1DAED21DC();
    (*(v22 + 8))(v39, v6);
    goto LABEL_8;
  }

  v26 = v51;
  sub_1DAECDDFC();
  sub_1DAECDE6C();
  sub_1DAE6D948(v16, v27);
  sub_1DAECDE9C();
  (*(v57 + 8))(v10, v6);
  v28 = v19;
  sub_1DAECE24C();
  v29 = *(v52 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityDescriptorProvider + 24);
  v30 = __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityDescriptorProvider), v29);
  v31 = *(v29 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v46 - v33;
  (*(v31 + 16))(&v46 - v33, v32);
  v35 = sub_1DAED12EC();
  (*(v31 + 8))(v34, v29);
  if (v35)
  {
    v36 = v54;
    sub_1DAECDE0C();
    v37 = sub_1DAED102C();

    (*(v26 + 8))(v36, v47);
    if (v37)
    {
      v38 = [v37 extensionIdentity];

      (*(v55 + 8))(v28, v56);
LABEL_8:
      v41 = v38;
      sub_1DAECDE0C();
      sub_1DAECDE3C();
      sub_1DAED0ADC();

      return;
    }
  }

  v42 = sub_1DAED0D2C();
  sub_1DAE6D890(&qword_1EE0057E8, MEMORY[0x1E6993D60], MEMORY[0x1E6993D68]);
  swift_allocError();
  v44 = v43;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F58, &unk_1DAEDCB60) + 48);
  sub_1DAECDEAC();
  *(v44 + v45) = MEMORY[0x1E69E7CC0];
  (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E6993D58], v42);
  swift_willThrow();
  (*(v55 + 8))(v28, v56);
}

uint64_t sub_1DAE69370()
{
  v46 = sub_1DAECF8EC();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1DAECF0AC();
  v2 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v43 - v19;
  BSDispatchQueueAssertMain();
  v21 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v21, v20, &qword_1ECC07CE8, &qword_1DAED6F60);
  v22 = sub_1DAECDCEC();
  LODWORD(v21) = (*(*(v22 - 8) + 48))(v20, 1, v22);
  sub_1DAD64398(v20, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (v21 != 1)
  {
    v33 = v49;
    (*(v2 + 104))(v17, *MEMORY[0x1E697DBA8], v49);
    (*(v2 + 56))(v17, 0, 1, v33);
    v34 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v34, v14, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();
    sub_1DADE9908(v17, v0 + v34);
    swift_endAccess();
    sub_1DAE6265C(v14);
    sub_1DAD64398(v14, &qword_1ECC08370, &unk_1DAED6580);
    v32 = v17;
    return sub_1DAD64398(v32, &qword_1ECC08370, &unk_1DAED6580);
  }

  v23 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v23, v11, &qword_1ECC08370, &unk_1DAED6580);
  v24 = *(v2 + 48);
  if (v24(v11, 1, v49) == 1)
  {
    sub_1DAD64398(v11, &qword_1ECC08370, &unk_1DAED6580);
    v25 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v25, v8, &qword_1ECC08370, &unk_1DAED6580);
    if (v24(v8, 1, v49) == 1)
    {
      sub_1DAD64398(v8, &qword_1ECC08370, &unk_1DAED6580);
      v26 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
      swift_beginAccess();
      v27 = v45;
      v28 = v44;
      v29 = v46;
      (*(v45 + 16))(v44, v0 + v26, v46);
      v30 = v0;
      sub_1DAECF39C();
      (*(v27 + 8))(v28, v29);
      (*(v2 + 56))(v17, 0, 1, v49);
      v31 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
      swift_beginAccess();
      sub_1DAD6495C(v30 + v31, v14, &qword_1ECC08370, &unk_1DAED6580);
      swift_beginAccess();
      sub_1DADE9908(v17, v30 + v31);
      swift_endAccess();
      sub_1DAE6265C(v14);
      sub_1DAD64398(v14, &qword_1ECC08370, &unk_1DAED6580);
      v32 = v17;
      return sub_1DAD64398(v32, &qword_1ECC08370, &unk_1DAED6580);
    }

    v39 = v47;
    v40 = v8;
    v41 = v49;
    (*(v2 + 32))(v47, v40, v49);
    (*(v2 + 16))(v17, v39, v41);
    (*(v2 + 56))(v17, 0, 1, v41);
    v42 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v42, v14, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();
    sub_1DADE9908(v17, v0 + v42);
    swift_endAccess();
    sub_1DAE6265C(v14);
    sub_1DAD64398(v14, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD64398(v17, &qword_1ECC08370, &unk_1DAED6580);
    return (*(v2 + 8))(v39, v41);
  }

  else
  {
    v36 = v48;
    v37 = v49;
    (*(v2 + 32))(v48, v11, v49);
    (*(v2 + 16))(v17, v36, v37);
    (*(v2 + 56))(v17, 0, 1, v37);
    v38 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v38, v14, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();
    sub_1DADE9908(v17, v0 + v38);
    swift_endAccess();
    sub_1DAE6265C(v14);
    sub_1DAD64398(v14, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD64398(v17, &qword_1ECC08370, &unk_1DAED6580);
    return (*(v2 + 8))(v36, v37);
  }
}

void sub_1DAE69B6C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-1] - v8;
  v10 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
  if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) & 1) != 0 || v3 == 2)
  {
    sub_1DAE69EEC(v3, &v24[-1] - v8);
    v19 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD94438(v9, v1 + v19, &unk_1ECC09E40, &qword_1DAED68E0);
    swift_endAccess();
    v20 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__hasLoadedViewOnce;
    if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__hasLoadedViewOnce) & 1) == 0)
    {
      sub_1DAD6495C(v1 + v19, v6, &unk_1ECC09E40, &qword_1DAED68E0);
      v21 = sub_1DAED1B8C();
      v22 = (*(*(v21 - 8) + 48))(v6, 1, v21);
      sub_1DAD64398(v6, &unk_1ECC09E40, &qword_1DAED68E0);
      if (v22 != 1)
      {
        LOBYTE(v3) = 0;
        *(v1 + v20) = 1;
      }
    }

    LOBYTE(v24[0]) = v3;

    sub_1DAECEE6C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    if (v24[0])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v24[0] = 0;

      sub_1DAECEF4C();
    }
  }

  else
  {
    swift_retain_n();
    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED203C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136446466;
      v15 = sub_1DAE61F60(v3);
      v17 = sub_1DAD6482C(v15, v16, v24);

      *(v13 + 4) = v17;
      *(v13 + 12) = 1026;
      v18 = *(v2 + v10);

      *(v13 + 14) = v18;

      _os_log_impl(&dword_1DAD61000, v11, v12, "Ignored view update for reason: %{public}s - (foreground: %{BOOL,public}d)", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    else
    {
    }
  }
}

void *sub_1DAE69EEC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a1;
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F50, &unk_1DAEDCB50);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  sub_1DAD648F8(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicy, v50);
  v17 = v51;
  v16 = v52;
  result = __swift_project_boxed_opaque_existential_1(v50, v51);
  v19 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource);
  if (v19)
  {
    v49[3] = type metadata accessor for ActivityViewModelSecurityDataSource();
    v49[4] = &off_1EECE4D00;
    v49[0] = v19;
    v20 = *(v16 + 8);
    v21 = sub_1DAED1B8C();

    v20(v49, v21, &protocol witness table for ActivityArchivedViewCollection.ViewEntry, v17, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    sub_1DAE62330(v6);
    v22 = sub_1DAED1BEC();
    v23 = (*(*(v22 - 8) + 48))(v6, 1, v22);
    sub_1DAD64398(v6, &qword_1ECC08D70, &unk_1DAED8710);
    sub_1DAD6495C(v15, v12, &qword_1ECC09F50, &unk_1DAEDCB50);

    v24 = sub_1DAECEDCC();
    v25 = sub_1DAED203C();

    if (os_log_type_enabled(v24, v25))
    {
      v42 = v21;
      v43 = v15;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v50[0] = v27;
      *v26 = 136446978;
      *(v26 + 4) = sub_1DAD6482C(*(v3 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v3 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), v50);
      *(v26 + 12) = 2082;
      v28 = v44;
      sub_1DAD6495C(v12, v44, &qword_1ECC09F50, &unk_1DAEDCB50);
      swift_getEnumCaseMultiPayload();
      sub_1DAD64398(v28, &qword_1ECC09F50, &unk_1DAEDCB50);
      v29 = sub_1DAED1D6C();
      v31 = v30;

      sub_1DAD64398(v12, &qword_1ECC09F50, &unk_1DAEDCB50);
      v32 = sub_1DAD6482C(v29, v31, v50);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2082;
      v33 = sub_1DAE61F60(v45);
      v35 = sub_1DAD6482C(v33, v34, v50);

      *(v26 + 24) = v35;
      *(v26 + 32) = 1026;
      *(v26 + 34) = v23 != 1;
      _os_log_impl(&dword_1DAD61000, v24, v25, "[%{public}s] Evaluated inner view with result: %{public}s, reason: %{public}s, has view collection: %{BOOL,public}d", v26, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v27, -1, -1);
      MEMORY[0x1E127F100](v26, -1, -1);

      v36 = v46;
      v21 = v42;
      v15 = v43;
    }

    else
    {

      sub_1DAD64398(v12, &qword_1ECC09F50, &unk_1DAEDCB50);
      v36 = v46;
    }

    sub_1DAE6D8D8(v15, v36);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v38 = v47;
    if (EnumCaseMultiPayload > 1)
    {
      sub_1DAD64398(v36, &qword_1ECC09F50, &unk_1DAEDCB50);
      v39 = *(v21 - 8);
      v40 = 1;
    }

    else
    {
      v39 = *(v21 - 8);
      (*(v39 + 32))(v47, v36, v21);
      v40 = 0;
    }

    return (*(v39 + 56))(v38, v40, 1, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAE6A4A8()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel___pendingInteractionSequenceNumber;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A160, &qword_1DAED6CF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseContentTouchedDown;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor;
  v6 = sub_1DAECDE4C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry, &unk_1ECC09E40, &qword_1DAED68E0);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme, &qword_1ECC08370, &unk_1DAED6580);
  v7 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
  v8 = sub_1DAECE21C();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
  v10 = sub_1DAECF8EC();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition;
  v12 = sub_1DAED1ABC();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL, &unk_1ECC09EC0, &qword_1DAED7970);
  sub_1DAD660D8(*(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler), *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8));
  sub_1DAD660D8(*(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated), *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated + 8));
  v13 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
  v14 = sub_1DAECEDEC();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);

  v15 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag;
  v16 = sub_1DAED182C();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session, &qword_1ECC090F8, &unk_1DAED8720);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseEnvironmentProvider));
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider, &qword_1ECC099D0, &qword_1DAEDB028);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__dataProtectionMonitor));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activitySessionFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityDescriptorProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicy));

  v17 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily;
  v18 = sub_1DAED17AC();
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  return v0;
}

uint64_t sub_1DAE6A95C()
{
  sub_1DAE6A4A8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActivityViewModel(uint64_t a1)
{
  result = qword_1EE0077F8;
  if (!qword_1EE0077F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE6AA08(uint64_t a1)
{
  sub_1DAE6AE84(319, &qword_1EE005BD0, MEMORY[0x1E69E6810]);
  if (v1 <= 0x3F)
  {
    sub_1DAE6AE84(319, &qword_1EE00ABB8, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_1DAECDE4C();
      if (v3 <= 0x3F)
      {
        sub_1DAE6AED0(319, &unk_1EE0056B8, MEMORY[0x1E6985B00]);
        if (v4 <= 0x3F)
        {
          sub_1DAE6AED0(319, &qword_1EE00ABA0, MEMORY[0x1E697DBD0]);
          if (v5 <= 0x3F)
          {
            sub_1DAECE21C();
            if (v6 <= 0x3F)
            {
              sub_1DAECF8EC();
              if (v7 <= 0x3F)
              {
                sub_1DAED1ABC();
                if (v8 <= 0x3F)
                {
                  sub_1DAE6AED0(319, &qword_1EE00C278, MEMORY[0x1E6969530]);
                  if (v9 <= 0x3F)
                  {
                    sub_1DAE6AED0(319, &qword_1EE00BD08, MEMORY[0x1E6968FB0]);
                    if (v10 <= 0x3F)
                    {
                      sub_1DAECEDEC();
                      if (v11 <= 0x3F)
                      {
                        sub_1DAED182C();
                        if (v12 <= 0x3F)
                        {
                          sub_1DAED17AC();
                          if (v13 <= 0x3F)
                          {
                            swift_updateClassMetadata2();
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

void sub_1DAE6AE84(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DAECEF5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAE6AED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAE6AF24@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActivityViewModel(0);
  result = sub_1DAECEE4C();
  *a2 = result;
  return result;
}

double (*sub_1DAE6AF64())(void *a1)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1DAE6D2C0;
}

BOOL sub_1DAE6AFC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1 != 0;
}

uint64_t sub_1DAE6B040()
{
  v1 = sub_1DAECE21C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  sub_1DAD648F8(v5 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__dataProtectionMonitor, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v6 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_1DAED128C();
  (*(v2 + 8))(v4, v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t sub_1DAE6B19C()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (*(v5 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay))
  {
    v6 = 1;
  }

  else
  {
    v7 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
    swift_beginAccess();
    (*(v2 + 16))(v4, v5 + v7, v1);
    v6 = sub_1DAECF83C();
    (*(v2 + 8))(v4, v1);
  }

  return v6 & 1;
}

uint64_t sub_1DAE6B2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1DAECEDEC();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED182C();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_1DAED1BEC();
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DAECF32C();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1DAECF8EC();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v19;
  v44 = v18;
  (*(v19 + 16))(v17, a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09038, &unk_1DAED85C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DAED6200;
  sub_1DAECF30C();
  v47 = v20;
  sub_1DAE6D890(&qword_1EE00BE58, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0, MEMORY[0x1E69E6328]);
  v21 = v42;
  sub_1DAED23CC();
  sub_1DAECF47C();

  sub_1DAE62330(v9);
  v22 = v10;
  v23 = v46;

  if ((*(v23 + 48))(v9, 1, v22) == 1)
  {
    sub_1DAD64398(v9, &qword_1ECC08D70, &unk_1DAED8710);
    v25 = v39;
    v24 = v40;
    v26 = v41;
    (*(v40 + 16))(v39, *(v21 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v41);
    v27 = sub_1DAECEDCC();
    v28 = sub_1DAED200C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DAD61000, v27, v28, "Archive was nil. LiveActivity will be empty", v29, 2u);
      MEMORY[0x1E127F100](v29, -1, -1);
    }

    (*(v24 + 8))(v25, v26);
    (*(v43 + 8))(v17, v44);
    v30 = sub_1DAED1B8C();
    return (*(*(v30 - 8) + 56))(v45, 1, 1, v30);
  }

  else
  {
    (*(v23 + 32))(v12, v9, v22);
    v32 = v36;
    v31 = v37;
    v33 = v38;
    (*(v37 + 16))(v36, *(v21 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag, v38);
    if (sub_1DAE6C5F0() >> 62)
    {
      sub_1DAED239C();
      sub_1DAED274C();
    }

    else
    {

      sub_1DAED28AC();
      sub_1DAED239C();
    }

    sub_1DAED1BCC();

    (*(v31 + 8))(v32, v33);
    (*(v46 + 8))(v12, v22);
    return (*(v43 + 8))(v17, v44);
  }
}

uint64_t sub_1DAE6BA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v72 = a1;
  v83 = a2;
  v4 = sub_1DAECDE4C();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  v84 = v6;
  v85 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v69 - v10;
  v11 = sub_1DAED182C();
  v70 = *(v11 - 8);
  v80 = v11;
  v81 = v70;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v69 - v14;
  v15 = sub_1DAED1BEC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;

  sub_1DAE62330(v23);

  v79 = v16;
  v24 = *(v16 + 48);
  v25 = v24(v23, 1, v15);
  sub_1DAD64398(v23, &qword_1ECC08D70, &unk_1DAED8710);
  v26 = *(v2 + 16);
  if (v25 == 1)
  {
    v28 = v84;
    v27 = v85;
    (*(v85 + 16))(v82, v26 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v84);

    v29 = sub_1DAECEDCC();
    v30 = sub_1DAED201C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v86[0] = v32;
      *v31 = 136446467;
      v33 = v74;
      v34 = v75;
      v35 = v76;
      (*(v75 + 16))(v74, *(v3 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor, v76);
      v36 = sub_1DAECDE3C();
      v38 = v37;
      (*(v34 + 8))(v33, v35);
      v39 = sub_1DAD6482C(v36, v38, v86);

      *(v31 + 4) = v39;
      *(v31 + 12) = 2081;
      v40 = *(v3 + 16);
      v41 = v80;
      v42 = v81;
      v43 = v77;
      (*(v81 + 16))(v77, v40 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag, v80);
      sub_1DAE6D890(&qword_1EE0056D8, MEMORY[0x1E6985920], MEMORY[0x1E6985930]);
      v44 = sub_1DAED287C();
      v46 = v45;
      (*(v42 + 8))(v43, v41);
      v47 = sub_1DAD6482C(v44, v46, v86);

      *(v31 + 14) = v47;
      _os_log_impl(&dword_1DAD61000, v29, v30, "[%{public}s] Archive was nil. LiveActivity will be empty for view model with tag %{private}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v32, -1, -1);
      MEMORY[0x1E127F100](v31, -1, -1);

      (*(v85 + 8))(v82, v84);
    }

    else
    {

      (*(v27 + 8))(v82, v28);
    }

    v60 = v83;
    v61 = sub_1DAED1B8C();
    return (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
  }

  else
  {
    v48 = v84;
    v49 = v85;

    sub_1DAE62330(v20);

    if (v24(v20, 1, v15) == 1)
    {
      sub_1DAD64398(v20, &qword_1ECC08D70, &unk_1DAED8710);
      v50 = *(v3 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
      v51 = v71;
      v52 = v48;
      (*(v49 + 16))(v71, v50, v48);
      v53 = sub_1DAECEDCC();
      v54 = sub_1DAED201C();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v83;
      if (v55)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_1DAD61000, v53, v54, "Archive was nil. LiveActivity will be empty", v57, 2u);
        MEMORY[0x1E127F100](v57, -1, -1);
      }

      (*(v49 + 8))(v51, v52);
      v58 = sub_1DAED1B8C();
      return (*(*(v58 - 8) + 56))(v56, 1, 1, v58);
    }

    else
    {
      v62 = v15;
      v63 = v73;
      (*(v79 + 32))(v73, v20, v15);
      v64 = *(v3 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag;
      v65 = v3;
      v66 = v80;
      v82 = *(v81 + 16);
      (v82)(v78, v64, v80);
      v85 = v65;
      if (sub_1DAE6C5F0() >> 62)
      {
        sub_1DAED239C();
        sub_1DAED274C();
      }

      else
      {

        sub_1DAED28AC();
        sub_1DAED239C();
      }

      v67 = v78;
      sub_1DAED1BCC();
      v68 = (v70 + 8);

      (*v68)(v67, v66);
      return (*(v79 + 8))(v63, v62);
    }
  }
}

uint64_t sub_1DAE6C5F0()
{
  v0 = sub_1DAED17AC();
  v32 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v30 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08F80, &unk_1DAEDC8D0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08698, &qword_1DAED84E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DAEDC600;
  *(v16 + 32) = swift_getKeyPath();
  *(v16 + 40) = swift_getKeyPath();
  *(v16 + 48) = swift_getKeyPath();
  *(v16 + 56) = swift_getKeyPath();
  *(v16 + 64) = swift_getKeyPath();
  *(v16 + 72) = swift_getKeyPath();
  *(v16 + 80) = swift_getKeyPath();
  *(v16 + 88) = swift_getKeyPath();
  *(v16 + 96) = swift_getKeyPath();
  *(v16 + 104) = swift_getKeyPath();
  *(v16 + 112) = swift_getKeyPath();
  *(v16 + 120) = swift_getKeyPath();
  v33 = v16;

  sub_1DAE62330(v7);

  v17 = sub_1DAED1BEC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_1DAD64398(v7, &qword_1ECC08D70, &unk_1DAED8710);
    v19 = 1;
  }

  else
  {
    sub_1DAED1BAC();
    (*(v18 + 8))(v7, v17);
    v19 = 0;
  }

  v20 = v32;
  v21 = *(v32 + 56);
  v21(v15, v19, 1, v0);
  (*(v20 + 104))(v12, *MEMORY[0x1E69858D0], v0);
  v21(v12, 0, 1, v0);
  v22 = *(v2 + 48);
  sub_1DAD6495C(v15, v4, &qword_1ECC08698, &qword_1DAED84E0);
  sub_1DAD6495C(v12, &v4[v22], &qword_1ECC08698, &qword_1DAED84E0);
  v23 = *(v20 + 48);
  if (v23(v4, 1, v0) == 1)
  {
    sub_1DAD64398(v12, &qword_1ECC08698, &qword_1DAED84E0);
    sub_1DAD64398(v15, &qword_1ECC08698, &qword_1DAED84E0);
    if (v23(&v4[v22], 1, v0) == 1)
    {
      sub_1DAD64398(v4, &qword_1ECC08698, &qword_1DAED84E0);
      return v16;
    }
  }

  else
  {
    v24 = v31;
    sub_1DAD6495C(v4, v31, &qword_1ECC08698, &qword_1DAED84E0);
    if (v23(&v4[v22], 1, v0) != 1)
    {
      v26 = v32;
      v27 = v30;
      (*(v32 + 32))(v30, &v4[v22], v0);
      sub_1DAE6D890(&qword_1ECC09008, MEMORY[0x1E69858D8], MEMORY[0x1E69858F0]);
      v28 = sub_1DAED1CAC();
      v29 = *(v26 + 8);
      v29(v27, v0);
      sub_1DAD64398(v12, &qword_1ECC08698, &qword_1DAED84E0);
      sub_1DAD64398(v15, &qword_1ECC08698, &qword_1DAED84E0);
      v29(v31, v0);
      sub_1DAD64398(v4, &qword_1ECC08698, &qword_1DAED84E0);
      if (v28)
      {
        return v16;
      }

      goto LABEL_10;
    }

    sub_1DAD64398(v12, &qword_1ECC08698, &qword_1DAED84E0);
    sub_1DAD64398(v15, &qword_1ECC08698, &qword_1DAED84E0);
    (*(v32 + 8))(v24, v0);
  }

  sub_1DAD64398(v4, &qword_1ECC08F80, &unk_1DAEDC8D0);
LABEL_10:
  swift_getKeyPath();
  MEMORY[0x1E127DAD0]();
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DAED1E9C();
  }

  sub_1DAED1EBC();
  return v33;
}

uint64_t sub_1DAE6CCA8(uint64_t a1)
{
  v2 = sub_1DAED1B2C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1DAECF7CC();
}

uint64_t getEnumTagSinglePayload for ActivityViewChangeReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityViewChangeReason(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DAE6CEE8()
{
  result = qword_1ECC09F48;
  if (!qword_1ECC09F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09F48);
  }

  return result;
}

uint64_t sub_1DAE6CF48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
  v5 = sub_1DAECEDEC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DAE6CFC8()
{
  v1 = *(*(*v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);

  return v1;
}

double sub_1DAE6D00C@<D0>(uint64_t a1@<X8>)
{

  sub_1DAE684B0(a1);

  return result;
}

uint64_t sub_1DAE6D0B0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6985998];
  v3 = sub_1DAED18CC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1DAE6D1CC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v3;
}

uint64_t sub_1DAE6D24C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

void sub_1DAE6D2C8(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v3;
}

uint64_t sub_1DAE6D348(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE6D3BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAE03864;

  return sub_1DAE65340(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DAE6D484(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1DAE6D4BC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAE6D5B4;

  return v6(a1);
}

uint64_t sub_1DAE6D5B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DAE6D6AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAE0396C;

  return sub_1DAE6D4BC(a1, v4);
}

uint64_t sub_1DAE6D764(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAE03864;

  return sub_1DAE6D4BC(a1, v4);
}

void sub_1DAE6D81C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1DAE6D890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAE6D8D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F50, &unk_1DAEDCB50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE6D948(uint64_t a1, __n128 a2)
{
  v3 = sub_1DAECDE7C();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1DAE6DA88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityBannerSceneDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityBannerSceneDelegate(uint64_t a1)
{
  result = qword_1ECC09F80;
  if (!qword_1ECC09F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE6DB14(void *a1)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1DAED17AC();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED182C();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECEDEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECC079B8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_1ECC0DD90);
  v14 = *(v10 + 16);
  v14(v12, v13, v9);
  v15 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v16 = *(v10 + 40);
  v16(v2 + v15, v12, v9);
  swift_endAccess();
  if (qword_1ECC079C0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_1ECC0DDA8);
  v14(v12, v17, v9);
  v18 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v16(v2 + v18, v12, v9);
  swift_endAccess();
  if (qword_1ECC079F0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, qword_1ECC0DE20);
  v14(v12, v19, v9);
  v20 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v16(v2 + v20, v12, v9);
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_wantsInheritedColorScheme) = 1;
  v21 = v33;
  sub_1DAE9150C(v33);
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DAED64D0;
    v23 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
    v34 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
    v35 = v23;

    MEMORY[0x1E127DA50](0x72656E6E61622DLL, 0xE700000000000000);
    v24 = v34;
    v25 = v35;
    v27 = v29;
    v26 = v30;
    (*(v29 + 104))(v8, *MEMORY[0x1E6985918], v30);
    sub_1DAED178C();
    v28 = sub_1DAE770FC(v24, v25, v8, v21, v5);

    (*(v31 + 8))(v5, v32);
    (*(v27 + 8))(v8, v26);
    *(v22 + 32) = v28;
    *(v2 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels) = v22;

    sub_1DAE8B590(0x7463656E6E6F63uLL, 0xE700000000000000);
  }
}

double sub_1DAE6E1DC()
{

  return result;
}

id sub_1DAE6E22C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientSceneDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AmbientSceneDelegate(uint64_t a1)
{
  result = qword_1ECC09FA8;
  if (!qword_1ECC09FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE6E368(void *a1)
{
  v30 = a1;
  v2 = sub_1DAED17AC();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1DAED182C();
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECEDEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECC07998 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_1ECC0DD30);
  v12 = *(v8 + 16);
  v12(v10, v11, v7);
  v13 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v14 = *(v8 + 40);
  v14(v1 + v13, v10, v7);
  swift_endAccess();
  if (qword_1ECC079A0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_1ECC0DD48);
  v12(v10, v15, v7);
  v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v14(v1 + v16, v10, v7);
  swift_endAccess();
  if (qword_1ECC079E0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_1ECC0DDF0);
  v12(v10, v17, v7);
  v18 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v14(v1 + v18, v10, v7);
  swift_endAccess();
  v19 = v30;
  v20 = v1;
  sub_1DAE9150C(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DAED64D0;
  v22 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
  v33 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v34 = v22;

  MEMORY[0x1E127DA50](0x746E6569626D612DLL, 0xE800000000000000);
  v23 = v33;
  v24 = v34;
  v25 = v29;
  (*(v4 + 104))(v6, *MEMORY[0x1E6985918], v29);
  v26 = v28;
  sub_1DAED178C();
  v27 = sub_1DAE770FC(v23, v24, v6, v19, v26);

  (*(v31 + 8))(v26, v32);
  (*(v4 + 8))(v6, v25);
  *(v21 + 32) = v27;
  *(v20 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels) = v21;

  sub_1DAE8B590(0x7463656E6E6F63uLL, 0xE700000000000000);
}

void sub_1DAE6E830()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-v5];
  v7 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  if (v7 >> 62)
  {
    if (!sub_1DAED247C())
    {
      return;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x1E127E1F0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = *MEMORY[0x1E697DBA8];
  v10 = sub_1DAECF0AC();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v6, v9, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD69C4C(v8 + v12, v3);
  swift_beginAccess();
  sub_1DADE9908(v6, v8 + v12);
  swift_endAccess();
  sub_1DAE62CC4(v3);
  sub_1DAE6EA7C(v3);
  sub_1DAE6EA7C(v6);
  sub_1DAE7BB00();
}

uint64_t sub_1DAE6EA7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActivityRendererInitializationPayload.systemEnvironment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityRendererInitializationPayload(0) + 20);
  v4 = sub_1DAED157C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ActivityRendererInitializationPayload(uint64_t a1)
{
  result = qword_1EE00B998;
  if (!qword_1EE00B998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityRendererInitializationPayload.init(extensions:systemEnvironment:remoteSubscriptionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for ActivityRendererInitializationPayload(0);
  v8 = *(v7 + 20);
  v9 = sub_1DAED157C();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t sub_1DAE6EC68(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x80000001DAEE0280;
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001DAEE0280;
  }

  else
  {
    v6 = 0x80000001DAEE02A0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F69736E65747865;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEA0000000000736ELL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000016;
    v4 = 0x80000001DAEE02A0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6F69736E65747865;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA0000000000736ELL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DAED289C();
  }

  return v11 & 1;
}

uint64_t sub_1DAE6ED48()
{
  sub_1DAED294C();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

double sub_1DAE6EDF4(uint64_t a1)
{
  sub_1DAED1D9C();

  return result;
}

uint64_t sub_1DAE6EE8C(uint64_t a1)
{
  sub_1DAED294C();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

unint64_t sub_1DAE6EF34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAE6FD4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAE6EF64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000736ELL;
  v4 = 0xD000000000000011;
  v5 = 0x80000001DAEE0280;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x80000001DAEE02A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6F69736E65747865;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1DAE6EFCC()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F69736E65747865;
  }
}

unint64_t sub_1DAE6F030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAE6FD4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAE6F064(uint64_t a1)
{
  v2 = sub_1DAE6F5A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAE6F0A0(uint64_t a1)
{
  v2 = sub_1DAE6F5A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ActivityRendererInitializationPayload.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1DAED157C();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FB8, &qword_1DAEDCC70);
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  v9 = type metadata accessor for ActivityRendererInitializationPayload(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DAE6F5A4();
  v13 = v34;
  sub_1DAED29AC();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {
    v34 = v5;
    v14 = v33;
    v30 = v9;
    v15 = v11;
    v38 = 0;
    sub_1DADBCF28();
    sub_1DAED280C();
    v17 = v36;
    v16 = v37;
    sub_1DAD674D4(0, &qword_1EE00AA20, 0x1E69943D8);
    v18 = sub_1DAED205C();
    v28 = v17;
    v29 = v16;
    v19 = v18;
    v20 = v6;
    v21 = [v18 extensions];

    sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
    sub_1DAE6F5F8();
    v22 = sub_1DAED1F6C();

    v23 = v15;
    v27[1] = v22;
    *v15 = v22;
    LOBYTE(v36) = 1;
    sub_1DAE6F660(&qword_1EE00AB20, MEMORY[0x1E6985720]);
    v24 = v34;
    sub_1DAED280C();
    v25 = v30;
    (*(v32 + 32))(v23 + *(v30 + 20), v24, v3);
    v38 = 2;
    sub_1DAE6F6A4();
    v34 = 0;
    sub_1DAED280C();
    v26 = v28;
    (*(v14 + 8))(v8, v20);
    sub_1DAD70BB4(v26, v29);
    *(v23 + *(v25 + 24)) = v36;
    sub_1DAE6F6F8(v23, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    sub_1DAE6F75C(v23);
  }
}

unint64_t sub_1DAE6F5A4()
{
  result = qword_1EE00B9B8;
  if (!qword_1EE00B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B9B8);
  }

  return result;
}

unint64_t sub_1DAE6F5F8()
{
  result = qword_1EE00BDF0;
  if (!qword_1EE00BDF0)
  {
    sub_1DAD674D4(255, &unk_1EE00BE00, 0x1E69943B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BDF0);
  }

  return result;
}

uint64_t sub_1DAE6F660(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAED157C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAE6F6A4()
{
  result = qword_1EE00A6C0;
  if (!qword_1EE00A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00A6C0);
  }

  return result;
}

uint64_t sub_1DAE6F6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityRendererInitializationPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE6F75C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityRendererInitializationPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ActivityRendererInitializationPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FC0, &qword_1DAEDCC78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE6F5A4();
  sub_1DAED29BC();
  v9 = objc_allocWithZone(MEMORY[0x1E69943D8]);
  sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
  sub_1DAE6F5F8();
  v10 = sub_1DAED1F5C();
  v11 = [v9 initWithExtensions_];

  sub_1DAD674D4(0, &qword_1EE00AA20, 0x1E69943D8);
  v12 = sub_1DAED204C();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v14 = v12;
    v15 = v13;

    v18 = v14;
    v19 = v15;
    v20 = 0;
    sub_1DADA7F5C();
    sub_1DAED284C();
    v17 = type metadata accessor for ActivityRendererInitializationPayload(0);
    LOBYTE(v18) = 1;
    sub_1DAED157C();
    sub_1DAE6F660(&unk_1EE005728, MEMORY[0x1E6985708]);
    sub_1DAED284C();
    v18 = *(v3 + *(v17 + 24));
    v20 = 2;
    sub_1DAE6FA88();
    sub_1DAED284C();
    (*(v6 + 8))(v8, v5);
    sub_1DAD70BB4(v14, v15);
  }
}

unint64_t sub_1DAE6FA88()
{
  result = qword_1EE00A6C8;
  if (!qword_1EE00A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00A6C8);
  }

  return result;
}

void sub_1DAE6FB34(uint64_t a1)
{
  sub_1DAE6FBC0(319);
  if (v1 <= 0x3F)
  {
    sub_1DAED157C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAE6FBC0(uint64_t a1)
{
  if (!qword_1EE00AA80)
  {
    sub_1DAD674D4(255, &unk_1EE00BE00, 0x1E69943B8);
    sub_1DAE6F5F8();
    v1 = sub_1DAED1FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE00AA80);
    }
  }
}

unint64_t sub_1DAE6FC48()
{
  result = qword_1ECC09FC8;
  if (!qword_1ECC09FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09FC8);
  }

  return result;
}

unint64_t sub_1DAE6FCA0()
{
  result = qword_1EE00B9A8;
  if (!qword_1EE00B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B9A8);
  }

  return result;
}

unint64_t sub_1DAE6FCF8()
{
  result = qword_1EE00B9B0;
  if (!qword_1EE00B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B9B0);
  }

  return result;
}

unint64_t sub_1DAE6FD4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DAED27CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for ActivityView(uint64_t a1)
{
  result = qword_1EE007D88;
  if (!qword_1EE007D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE6FE0C(uint64_t a1)
{
  sub_1DAE6FEE0(319);
  if (v1 <= 0x3F)
  {
    sub_1DAE6FF74(319, &qword_1EE005848, MEMORY[0x1E6981910]);
    if (v2 <= 0x3F)
    {
      sub_1DAE6FF74(319, &qword_1EE00AB78, MEMORY[0x1E69E6530]);
      if (v3 <= 0x3F)
      {
        sub_1DAECEDEC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DAE6FEE0(uint64_t a1)
{
  if (!qword_1EE005B58)
  {
    type metadata accessor for ActivityViewModel(255);
    sub_1DAE737E0(&qword_1EE007808, type metadata accessor for ActivityViewModel, &unk_1DAEDC81C);
    v1 = sub_1DAECF24C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE005B58);
    }
  }
}

void sub_1DAE6FF74(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DAED079C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAE6FFDC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v243 = a1;
  v242 = sub_1DAED182C();
  v241 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v240 = &v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v239 = &v176 - v6;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FD0, &qword_1DAEDCEE8);
  MEMORY[0x1EEE9AC00](v237);
  v238 = &v176 - v7;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FD8, &qword_1DAEDCEF0);
  MEMORY[0x1EEE9AC00](v236);
  v235 = &v176 - v8;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FE0, &qword_1DAEDCEF8);
  MEMORY[0x1EEE9AC00](v233);
  v234 = &v176 - v9;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FE8, &qword_1DAEDCF00);
  MEMORY[0x1EEE9AC00](v232);
  v231 = &v176 - v10;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FF0, &qword_1DAEDCF08);
  MEMORY[0x1EEE9AC00](v229);
  v230 = &v176 - v11;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FF8, &qword_1DAEDCF10);
  MEMORY[0x1EEE9AC00](v227);
  v226 = &v176 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v225 = &v176 - v14;
  v183 = sub_1DAED187C();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v181 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_1DAED1B8C();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v180 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v207 = &v176 - v18;
  v208 = sub_1DAECF33C();
  MEMORY[0x1EEE9AC00](v208);
  v211 = &v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A000, &qword_1DAEDCF18);
  MEMORY[0x1EEE9AC00](v192);
  v190 = &v176 - v20;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A008, &qword_1DAEDCF20);
  MEMORY[0x1EEE9AC00](v193);
  v184 = &v176 - v21;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A010, &qword_1DAEDCF28);
  v247 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v246 = &v176 - v22;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A018, &qword_1DAEDCF30);
  MEMORY[0x1EEE9AC00](v194);
  v195 = &v176 - v23;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A020, &qword_1DAEDCF38);
  v198 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v197 = &v176 - v24;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A028, &qword_1DAEDCF40);
  MEMORY[0x1EEE9AC00](v196);
  v202 = &v176 - v25;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A030, &qword_1DAEDCF48);
  MEMORY[0x1EEE9AC00](v201);
  v200 = &v176 - v26;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A038, &qword_1DAEDCF50);
  MEMORY[0x1EEE9AC00](v199);
  v205 = &v176 - v27;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A040, &qword_1DAEDCF58);
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v176 - v28;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A048, &qword_1DAEDCF60);
  MEMORY[0x1EEE9AC00](v248);
  v206 = &v176 - v29;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A050, &qword_1DAEDCF68);
  MEMORY[0x1EEE9AC00](v212);
  v213 = &v176 - v30;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A058, &qword_1DAEDCF70);
  MEMORY[0x1EEE9AC00](v214);
  v216 = &v176 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A060, &qword_1DAEDCF78);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v218 = &v176 - v33;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A068, &qword_1DAEDCF80);
  MEMORY[0x1EEE9AC00](v217);
  v220 = &v176 - v34;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A070, &qword_1DAEDCF88);
  MEMORY[0x1EEE9AC00](v219);
  v222 = &v176 - v35;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A078, &qword_1DAEDCF90);
  MEMORY[0x1EEE9AC00](v221);
  v224 = &v176 - v36;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A080, &qword_1DAEDCF98);
  MEMORY[0x1EEE9AC00](v223);
  v228 = &v176 - v37;
  v38 = sub_1DAECDCEC();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v179 = &v176 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v188 = &v176 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v185 = &v176 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v176 - v46;
  v48 = type metadata accessor for ActivityView(0);
  v49 = v48 - 8;
  v186 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v250 = &v176 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v176 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v176 - v55;
  v187 = v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v176 - v59;
  v253 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084C8, &qword_1DAED68A8);
  sub_1DAED077C();
  v61 = v2 + *(v49 + 36);
  sub_1DADE9A98(v3, v60);
  sub_1DADE9A98(v3, v56);
  v249 = v3;
  sub_1DADE9A98(v3, v53);
  v215 = v61;
  v62 = sub_1DAECEDCC();
  v63 = sub_1DAED200C();
  v64 = os_log_type_enabled(v62, v63);
  v191 = v38;
  v189 = v39;
  if (v64)
  {
    v178 = v63;
    v65 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v252 = v177;
    *v65 = 136446722;
    v66 = *(v60 + 1);

    sub_1DADE9AFC(v60);
    v67 = *(v66 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
    v68 = *(v66 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

    v69 = sub_1DAD6482C(v67, v68, &v252);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2082;
    v70 = *(v56 + 3);
    *&v253 = *(v56 + 2);
    *(&v253 + 1) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A088, &qword_1DAEDCFA0);
    sub_1DAED077C();
    v71 = sub_1DAED1D4C();
    v73 = v72;
    sub_1DADE9AFC(v56);
    v74 = sub_1DAD6482C(v71, v73, &v252);

    *(v65 + 14) = v74;
    *(v65 + 22) = 2082;
    v75 = *(v53 + 1);
    v76 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v75 + v76, v47, &qword_1ECC07CE8, &qword_1DAED6F60);
    if ((*(v39 + 48))(v47, 1, v38))
    {
      sub_1DAD64398(v47, &qword_1ECC07CE8, &qword_1DAED6F60);
      v77 = 0xE300000000000000;
      v78 = 7104878;
      v79 = v246;
    }

    else
    {
      (*(v39 + 16))(v179, v47, v38);
      sub_1DAD64398(v47, &qword_1ECC07CE8, &qword_1DAED6F60);
      v79 = v246;
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v81 = qword_1EE00A708;
      v82 = sub_1DAECDC5C();
      v83 = [v81 stringFromDate_];

      v78 = sub_1DAED1CEC();
      v77 = v84;

      (*(v39 + 8))(v179, v38);
    }

    sub_1DADE9AFC(v53);
    v85 = sub_1DAD6482C(v78, v77, &v252);

    *(v65 + 24) = v85;
    _os_log_impl(&dword_1DAD61000, v62, v178, "[%{public}s] Rendering view: %{public}s - override date: %{public}s", v65, 0x20u);
    v86 = v177;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v86, -1, -1);
    MEMORY[0x1E127F100](v65, -1, -1);

    v80 = v244;
  }

  else
  {

    sub_1DADE9AFC(v53);
    sub_1DADE9AFC(v60);
    sub_1DADE9AFC(v56);
    v80 = v244;
    v79 = v246;
  }

  v87 = v249;
  v88 = *(v249 + 24);
  *&v253 = *(v249 + 16);
  *(&v253 + 1) = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A088, &qword_1DAEDCFA0);
  sub_1DAED077C();
  *&v253 = v252;
  v89 = MEMORY[0x1E6981910];
  v90 = MEMORY[0x1E6981900];
  sub_1DAED054C();

  v91 = *(v87 + 8);
  v92 = sub_1DAE65DC4();
  v93 = *(v247 + 16);
  v94 = v195;
  if (v92)
  {
    v95 = v184;
    v93(v184, v79, v80);
    sub_1DAD6495C(v95, v190, &qword_1ECC0A008, &qword_1DAEDCF20);
    swift_storeEnumTagMultiPayload();
    sub_1DAE72BE4();
    *&v253 = v89;
    *(&v253 + 1) = v90;
    swift_getOpaqueTypeConformance2();
    v79 = v246;
    sub_1DAECFB1C();
    sub_1DAD64398(v95, &qword_1ECC0A008, &qword_1DAEDCF20);
  }

  else
  {
    v93(v190, v79, v80);
    swift_storeEnumTagMultiPayload();
    sub_1DAE72BE4();
    *&v253 = v89;
    *(&v253 + 1) = v90;
    swift_getOpaqueTypeConformance2();
    sub_1DAECFB1C();
  }

  (*(v247 + 8))(v79, v80);
  v96 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  v97 = v185;
  sub_1DAD6495C(v91 + v96, v185, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAE72CF4();
  v98 = v197;
  sub_1DAED047C();
  sub_1DAD64398(v97, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD64398(v94, &qword_1ECC0A018, &qword_1DAEDCF30);
  KeyPath = swift_getKeyPath();
  v100 = v188;
  sub_1DAD6495C(v91 + v96, v188, &qword_1ECC07CE8, &qword_1DAED6F60);
  LOBYTE(v97) = (*(v189 + 48))(v100, 1, v191) != 1;
  sub_1DAD64398(v100, &qword_1ECC07CE8, &qword_1DAED6F60);
  v101 = v202;
  (*(v198 + 32))(v202, v98, v245);
  v102 = v101 + *(v196 + 36);
  *v102 = KeyPath;
  *(v102 + 8) = v97;
  v103 = v250;
  sub_1DADE9A98(v87, v250);
  v104 = *(v186 + 80);
  v105 = (v104 + 16) & ~v104;
  v245 = v105 + v187;
  v246 = v104;
  v106 = swift_allocObject();
  v247 = v105;
  sub_1DAE72E20(v103, v106 + v105, type metadata accessor for ActivityView);
  v107 = v200;
  sub_1DAD7C48C(v101, v200, &qword_1ECC0A028, &qword_1DAEDCF40);
  v108 = (v107 + *(v201 + 36));
  *v108 = sub_1DAE72DB0;
  v108[1] = v106;
  v109 = v205;
  sub_1DAD7C48C(v107, v205, &qword_1ECC0A030, &qword_1DAEDCF48);
  *(v109 + *(v199 + 36)) = 1;
  v110 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  v111 = v207;
  sub_1DAD6495C(v91 + v110, v207, &unk_1ECC09E40, &qword_1DAED68E0);
  v112 = v209;
  v113 = v210;
  v114 = v91;
  if ((*(v209 + 48))(v111, 1, v210))
  {
    sub_1DAD64398(v111, &unk_1ECC09E40, &qword_1DAED68E0);
    v115 = 0;
  }

  else
  {
    v116 = v180;
    (*(v112 + 16))(v180, v111, v113);
    sub_1DAD64398(v111, &unk_1ECC09E40, &qword_1DAED68E0);
    v117 = v181;
    sub_1DAED1B6C();
    (*(v112 + 8))(v116, v113);
    sub_1DAED185C();
    v115 = v118;
    (*(v182 + 8))(v117, v183);
  }

  v119 = *(v208 + 20);
  v120 = *MEMORY[0x1E697F468];
  v121 = sub_1DAECF99C();
  v122 = v211;
  (*(*(v121 - 8) + 104))(&v211[v119], v120, v121);
  *v122 = v115;
  v122[1] = v115;
  v123 = v204;
  v124 = &v204[*(v203 + 36)];
  sub_1DAE72E20(v122, v124, MEMORY[0x1E697EAF0]);
  *(v124 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FA8, &qword_1DAED8508) + 36)) = 0;
  sub_1DAD7C48C(v109, v123, &qword_1ECC0A038, &qword_1DAEDCF50);
  v125 = swift_getKeyPath();
  v126 = v206;
  sub_1DAD7C48C(v123, v206, &qword_1ECC0A040, &qword_1DAEDCF58);
  v127 = v126 + *(v248 + 9);
  *v127 = v125;
  *(v127 + 8) = 1;
  v211 = type metadata accessor for ActivityViewModel(0);
  sub_1DAE737E0(&qword_1EE007808, type metadata accessor for ActivityViewModel, &unk_1DAEDC81C);
  v244 = v114;
  sub_1DAECF22C();
  swift_getKeyPath();
  v128 = v225;
  sub_1DAECF23C();

  v129 = v226;
  sub_1DAD6495C(v128, &v226[*(v227 + 36)], &qword_1ECC091C0, &qword_1DAED8E80);
  sub_1DAD6495C(v126, v129, &qword_1ECC0A048, &qword_1DAEDCF60);
  sub_1DAD6495C(v129, v230, &qword_1ECC09FF8, &qword_1DAEDCF10);
  swift_storeEnumTagMultiPayload();
  sub_1DAE72E88();
  sub_1DAE72F44();
  v130 = v213;
  sub_1DAECFB1C();
  sub_1DAD64398(v129, &qword_1ECC09FF8, &qword_1DAEDCF10);
  sub_1DAD64398(v128, &qword_1ECC091C0, &qword_1DAED8E80);
  sub_1DAD64398(v126, &qword_1ECC0A048, &qword_1DAEDCF60);
  v131 = v250;
  sub_1DADE9A98(v87, v250);
  v132 = swift_allocObject();
  v248 = type metadata accessor for ActivityView;
  sub_1DAE72E20(v131, v132 + v247, type metadata accessor for ActivityView);
  v133 = swift_getKeyPath();
  v134 = v231;
  sub_1DAD6495C(v130, v231, &qword_1ECC0A050, &qword_1DAEDCF68);
  v135 = v134 + *(v232 + 36);
  v136 = v244;
  *v135 = sub_1DAE732C0;
  *(v135 + 8) = v136;
  *(v135 + 16) = sub_1DAE732C4;
  *(v135 + 24) = v132;
  *(v135 + 32) = v133;
  *(v135 + 40) = 0;
  sub_1DAD6495C(v134, v234, &qword_1ECC09FE8, &qword_1DAEDCF00);
  swift_storeEnumTagMultiPayload();
  sub_1DAE73334();
  sub_1DAE733C0();

  v137 = v216;
  sub_1DAECFB1C();
  sub_1DAD64398(v134, &qword_1ECC09FE8, &qword_1DAEDCF00);
  sub_1DAD64398(v130, &qword_1ECC0A050, &qword_1DAEDCF68);
  v138 = swift_allocObject();
  *(v138 + 16) = sub_1DAE7344C;
  *(v138 + 24) = v136;
  swift_retain_n();
  v139 = v235;
  sub_1DAECF1BC();
  sub_1DAD6495C(v137, v139, &qword_1ECC0A058, &qword_1DAEDCF70);
  sub_1DAD6495C(v139, v238, &qword_1ECC09FD8, &qword_1DAEDCEF0);
  swift_storeEnumTagMultiPayload();
  sub_1DAE73454();
  sub_1DAE73510();
  v140 = v218;
  sub_1DAECFB1C();

  sub_1DAD64398(v139, &qword_1ECC09FD8, &qword_1DAEDCEF0);
  sub_1DAD64398(v137, &qword_1ECC0A058, &qword_1DAEDCF70);
  v141 = swift_getKeyPath();
  v142 = v241;
  v143 = v239;
  v144 = v242;
  (*(v241 + 16))(v239, v136 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag, v242);
  v145 = v240;
  (*(v142 + 104))(v240, *MEMORY[0x1E6985918], v144);
  sub_1DAE737E0(&unk_1EE0056E0, MEMORY[0x1E6985920], MEMORY[0x1E6985928]);
  LOBYTE(v125) = sub_1DAED1CAC();
  v146 = *(v142 + 8);
  v146(v145, v144);
  v146(v143, v144);
  v147 = v220;
  sub_1DAD7C48C(v140, v220, &qword_1ECC0A060, &qword_1DAEDCF78);
  v148 = v147 + *(v217 + 36);
  *v148 = v141;
  *(v148 + 8) = (v125 & 1) == 0;
  v149 = v249;
  v150 = v250;
  sub_1DADE9A98(v249, v250);
  v151 = swift_allocObject();
  v152 = v247;
  v153 = v248;
  sub_1DAE72E20(v150, v151 + v247, v248);
  v154 = v147;
  v155 = v222;
  sub_1DAD7C48C(v154, v222, &qword_1ECC0A068, &qword_1DAEDCF80);
  v156 = (v155 + *(v219 + 36));
  *v156 = sub_1DAE7359C;
  v156[1] = v151;
  v156[2] = 0;
  v156[3] = 0;
  v157 = v244;
  v242 = *(v244 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDateDidChangePublisher);
  v158 = v242;
  sub_1DADE9A98(v149, v150);
  v159 = swift_allocObject();
  sub_1DAE72E20(v150, v159 + v152, v153);
  v160 = v224;
  sub_1DAD7C48C(v155, v224, &qword_1ECC0A070, &qword_1DAEDCF88);
  v161 = v221;
  *(v160 + *(v221 + 52)) = v158;
  v162 = (v160 + *(v161 + 56));
  *v162 = sub_1DAE735FC;
  v162[1] = v159;
  v163 = *(v157 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);
  sub_1DADE9A98(v249, v150);
  v164 = swift_allocObject();
  sub_1DAE72E20(v150, v164 + v152, v153);
  v165 = v228;
  sub_1DAD7C48C(v160, v228, &qword_1ECC0A078, &qword_1DAEDCF90);
  v166 = v223;
  *(v165 + *(v223 + 52)) = v163;
  v167 = (v165 + *(v166 + 56));
  *v167 = sub_1DAE7366C;
  v167[1] = v164;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A090, &qword_1DAEDD090);
  v169 = v243;
  v170 = v243 + *(v168 + 36);
  v171 = *(type metadata accessor for InteractiveWidgetSetupViewModifier(0) + 24);
  v172 = sub_1DAECEDEC();
  (*(*(v172 - 8) + 16))(v170 + v171, v215, v172);
  v251 = v157;
  v173 = swift_allocObject();
  swift_weakInit();
  *v170 = sub_1DAE6D2C0;
  *(v170 + 8) = v173;
  v174 = off_1F56B43C0[0];

  *(v170 + 16) = v174();
  return sub_1DAD7C48C(v165, v169, &qword_1ECC0A080, &qword_1DAEDCF98);
}

uint64_t sub_1DAE72060(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = *(a2 + 8);
  v7 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v6 + v7, v5, &qword_1ECC07CE8, &qword_1DAED6F60);
  v8 = sub_1DAECDCEC();
  LODWORD(v6) = (*(*(v8 - 8) + 48))(v5, 1, v8);
  result = sub_1DAD64398(v5, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (v6 != 1)
  {
    return sub_1DAECF0EC();
  }

  return result;
}

uint64_t sub_1DAE72188(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1DAD6495C(a1, &v10 - v5, &unk_1ECC09EC0, &qword_1DAED7970);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
  swift_beginAccess();
  sub_1DAD752E0(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1DAE72264(char a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE722D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler;
  v8 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
  if (v8)
  {
    v9 = *(v7 + 8);
    v14 = 2;
    v10 = sub_1DAECDBFC();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v6, a1, v10);
    (*(v11 + 56))(v6, 0, 1, v10);

    v8(&v14, v6);
    sub_1DAE5DF28(v8, v9);
    sub_1DAD64398(v6, &unk_1ECC09EC0, &qword_1DAED7970);
  }

  return 1;
}

uint64_t sub_1DAE72454(void *a1)
{
  v2 = sub_1DAED1B8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v9 = a1[1];
  v10 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v9 + v10, v8, &unk_1ECC09E40, &qword_1DAED68E0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1DAD64398(v8, &unk_1ECC09E40, &qword_1DAED68E0);
    v11 = *(v9 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1DAD64398(v8, &unk_1ECC09E40, &qword_1DAED68E0);
    v11 = sub_1DAED1B5C();
    (*(v3 + 8))(v5, v2);
  }

  v12 = a1[3];
  v14[1] = a1[2];
  v14[2] = v12;
  v14[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A088, &qword_1DAEDCFA0);
  return sub_1DAED078C();
}

double sub_1DAE72680(unsigned __int8 *a1, void *a2)
{
  v4 = type metadata accessor for ActivityView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED1B8C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v37 - v12;
  v14 = sub_1DAECF8EC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = 0;
  if (v19 >= 2)
  {
    if (v19 != 2 || (v37[0] = a2, v21 = v16, sub_1DAE684B0(v18), v22 = sub_1DAECF4BC(), a2 = v37[0], (*(v15 + 8))(v18, v21), (v22 & 1) == 0))
    {
      v20 = 1;
    }
  }

  v23 = a2[1];
  v24 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v23 + v24, v13, &unk_1ECC09E40, &qword_1DAED68E0);
  if (!(*(v8 + 48))(v13, 1, v7))
  {
    (*(v8 + 16))(v10, v13, v7);
    sub_1DAD64398(v13, &unk_1ECC09E40, &qword_1DAED68E0);
    v25 = sub_1DAED1B5C();
    (*(v8 + 8))(v10, v7);
    if (v20)
    {
      goto LABEL_8;
    }

LABEL_11:
    v34 = a2[3];
    v38[0] = a2[2];
    v38[1] = v34;
    v37[2] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A088, &qword_1DAEDCFA0);
    sub_1DAED078C();
    return result;
  }

  sub_1DAD64398(v13, &unk_1ECC09E40, &qword_1DAED68E0);
  v25 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);

  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1DADE9A98(a2, v6);
  v26 = sub_1DAECEDCC();
  v27 = sub_1DAED200C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38[0] = v29;
    *v28 = 136446210;
    v30 = *(v6 + 1);

    sub_1DADE9AFC(v6);
    v31 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
    v32 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

    v33 = sub_1DAD6482C(v31, v32, v38);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_1DAD61000, v26, v27, "[%{public}s] Animating pending view change...", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1E127F100](v29, -1, -1);
    MEMORY[0x1E127F100](v28, -1, -1);
  }

  else
  {

    sub_1DADE9AFC(v6);
  }

  v36 = sub_1DAED095C();
  MEMORY[0x1EEE9AC00](v36);
  v37[-2] = a2;
  v37[-1] = v25;
  sub_1DAECF1DC();

  return result;
}

uint64_t sub_1DAE72B7C(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A088, &qword_1DAEDCFA0);
  return sub_1DAED078C();
}

unint64_t sub_1DAE72BE4()
{
  result = qword_1EE005A78;
  if (!qword_1EE005A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A008, &qword_1DAEDCF20);
    swift_getOpaqueTypeConformance2();
    sub_1DAE72CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A78);
  }

  return result;
}

unint64_t sub_1DAE72CA0()
{
  result = qword_1EE006930;
  if (!qword_1EE006930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE006930);
  }

  return result;
}

unint64_t sub_1DAE72CF4()
{
  result = qword_1EE005980;
  if (!qword_1EE005980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A018, &qword_1DAEDCF30);
    sub_1DAE72BE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005980);
  }

  return result;
}

uint64_t sub_1DAE72DB0(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DAE72060(a1, v4);
}

uint64_t sub_1DAE72E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAE72E88()
{
  result = qword_1EE005A00;
  if (!qword_1EE005A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09FF8, &qword_1DAEDCF10);
    sub_1DAE72F44();
    sub_1DAE737E0(qword_1EE00C130, type metadata accessor for WidgetURLReaderModifier, &unk_1DAED8FFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A00);
  }

  return result;
}

unint64_t sub_1DAE72F44()
{
  result = qword_1EE005A08;
  if (!qword_1EE005A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A048, &qword_1DAEDCF60);
    sub_1DAE72FFC();
    sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A08);
  }

  return result;
}

unint64_t sub_1DAE72FFC()
{
  result = qword_1EE005A10;
  if (!qword_1EE005A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A040, &qword_1DAEDCF58);
    sub_1DAE730B4();
    sub_1DAD64B94(&qword_1EE00AB88, &qword_1ECC08FA8, &qword_1DAED8508, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A10);
  }

  return result;
}

unint64_t sub_1DAE730B4()
{
  result = qword_1EE005A20;
  if (!qword_1EE005A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A038, &qword_1DAEDCF50);
    sub_1DAE73140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A20);
  }

  return result;
}

unint64_t sub_1DAE73140()
{
  result = qword_1EE005A40;
  if (!qword_1EE005A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A030, &qword_1DAEDCF48);
    sub_1DAE731CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A40);
  }

  return result;
}

unint64_t sub_1DAE731CC()
{
  result = qword_1EE005A88;
  if (!qword_1EE005A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A028, &qword_1DAEDCF40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A018, &qword_1DAEDCF30);
    sub_1DAE72CF4();
    swift_getOpaqueTypeConformance2();
    sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A88);
  }

  return result;
}

uint64_t sub_1DAE732C4(char a1)
{
  v3 = *(type metadata accessor for ActivityView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DAE72264(a1, v4);
}

unint64_t sub_1DAE73334()
{
  result = qword_1EE005B10;
  if (!qword_1EE005B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09FE8, &qword_1DAEDCF00);
    sub_1DAE733C0();
    sub_1DAD71948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005B10);
  }

  return result;
}

unint64_t sub_1DAE733C0()
{
  result = qword_1EE005940;
  if (!qword_1EE005940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A050, &qword_1DAEDCF68);
    sub_1DAE72E88();
    sub_1DAE72F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005940);
  }

  return result;
}

unint64_t sub_1DAE73454()
{
  result = qword_1EE005AF8;
  if (!qword_1EE005AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09FD8, &qword_1DAEDCEF0);
    sub_1DAE73510();
    sub_1DAE737E0(&qword_1EE00BF18, type metadata accessor for SystemURLActionViewModifier, &unk_1DAED909C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AF8);
  }

  return result;
}

unint64_t sub_1DAE73510()
{
  result = qword_1EE005960;
  if (!qword_1EE005960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A058, &qword_1DAEDCF70);
    sub_1DAE73334();
    sub_1DAE733C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005960);
  }

  return result;
}

uint64_t sub_1DAE7359C()
{
  v1 = *(type metadata accessor for ActivityView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1DAE72454(v2);
}

void sub_1DAE735FC(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1DAE37CC8(a1, v4);
}

double sub_1DAE7366C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for ActivityView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1DAE72680(a1, v4);
}

unint64_t sub_1DAE736F8()
{
  result = qword_1EE005AA0;
  if (!qword_1EE005AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A090, &qword_1DAEDD090);
    sub_1DAD64B94(&qword_1EE0059F0, &qword_1ECC0A080, &qword_1DAEDCF98, MEMORY[0x1E697C278]);
    sub_1DAE737E0(&qword_1EE00BCD0, type metadata accessor for InteractiveWidgetSetupViewModifier, &protocol conformance descriptor for InteractiveWidgetSetupViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AA0);
  }

  return result;
}

uint64_t sub_1DAE737E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1DAE73828()
{
  sub_1DAE73F00();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_logger;
  v2 = sub_1DAECEDEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1DAE738E4()
{
  sub_1DAE73828();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteSubscriptionTypeEnvironmentProvider(uint64_t a1)
{
  result = qword_1ECC0A0C0;
  if (!qword_1ECC0A0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE73990(uint64_t a1)
{
  result = sub_1DAECEDEC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1DAE73A7C()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = sub_1DAED10FC();
  (*(v4 + 8))(v7, v2);
  v14 = v8;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DAE74758;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  v11 = MEMORY[0x1E695BED8];
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
  sub_1DAECF00C();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A560, &qword_1DAEDD1F0);
  sub_1DAD64B94(&qword_1EE005690, &qword_1ECC0A560, &qword_1DAEDD1F0, MEMORY[0x1E69E6348]);
  sub_1DAECEE1C();
  swift_endAccess();

  v14 = *(v1 + 56);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A0E0, &qword_1DAEDD1F8);
  sub_1DAD64B94(&qword_1ECC0A0E8, &qword_1ECC0A0E0, &qword_1DAEDD1F8, v11);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE1C();
  swift_endAccess();

  return result;
}

double sub_1DAE73DC0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1DAECEE6C();
  }

  return result;
}

double sub_1DAE73E2C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 64) = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
    sub_1DAECEEEC();
  }

  return result;
}

void sub_1DAE73F00()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 80);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v0 + 80) = MEMORY[0x1E69E7CC0];

    v5 = OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_biomeSink;
    [*(v1 + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_biomeSink) cancel];
    v6 = *(v1 + v5);
    *(v1 + v5) = 0;

    return;
  }

  v3 = sub_1DAED247C();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E127E1F0](i, v2);
      }

      else
      {
      }

      sub_1DAECEE2C();
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1DAE74020@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAED1B2C();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAECF8EC();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 72);
  v10 = *(v1 + 40);
  v11 = __swift_project_boxed_opaque_existential_1((v1 + 16), v10);
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v13);
  v16 = (v12 + 8);
  if (v9 == 1)
  {
    sub_1DAED10EC();
    (*v16)(v15, v10);
    v17 = sub_1DAECDEDC();
    if (v17 == sub_1DAECDEDC() || (v18 = sub_1DAECDEDC(), v18 == sub_1DAECDEDC()))
    {
      (*(v20 + 104))(v5, *MEMORY[0x1E6985AE8], v21);
      sub_1DAECF7CC();
    }

    return (*(v22 + 32))(a1, v8, v23);
  }

  else
  {
    sub_1DAED10EC();
    return (*v16)(v15, v10);
  }
}

uint64_t sub_1DAE742E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A0D0, &qword_1DAEDD1D8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + 96);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF88]);
  sub_1DAECEF7C();

  sub_1DAD64B94(&qword_1ECC0A0D8, &qword_1ECC0A0D0, &qword_1DAEDD1D8, MEMORY[0x1E695BCC0]);
  v5 = sub_1DAECEF6C();
  (*(v2 + 8))(v4, v1);
  return v5;
}

void sub_1DAE7456C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount);
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount) = v5;
      if (v5 < 1)
      {
        sub_1DAE73F00();
      }

      else
      {
        sub_1DAE73A7C();
      }
    }
  }
}

void sub_1DAE745F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount);
    v4 = __OFSUB__(v3, 1);
    v5 = v3 - 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount) = v5;
      if (v5 < 1)
      {
        sub_1DAE73F00();
      }

      else
      {
        sub_1DAE73A7C();
      }
    }
  }
}

void sub_1DAE74674(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount);
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount) = v4;
      if (v4 < 1)
      {
        sub_1DAE73F00();
      }

      else
      {
        sub_1DAE73A7C();
      }
    }
  }
}

void sub_1DAE747D0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64656C6961467369 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1DAED289C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1DAE74858(uint64_t a1)
{
  v2 = sub_1DAE74A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAE74894(uint64_t a1)
{
  v2 = sub_1DAE74A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityRendererSessionSubscriptionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A0F0, &qword_1DAEDD200);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE74A08();
  sub_1DAED29BC();
  sub_1DAED282C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DAE74A08()
{
  result = qword_1EE00B810;
  if (!qword_1EE00B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B810);
  }

  return result;
}

uint64_t ActivityRendererSessionSubscriptionResponse.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A0F8, &qword_1DAEDD208);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE74A08();
  sub_1DAED29AC();
  if (!v2)
  {
    v9 = sub_1DAED27EC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DAE74BCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A0F0, &qword_1DAEDD200);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE74A08();
  sub_1DAED29BC();
  sub_1DAED282C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t getEnumTagSinglePayload for ActivityRendererSessionSubscriptionResponse(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1DAE74DC8()
{
  result = qword_1ECC0A100;
  if (!qword_1ECC0A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A100);
  }

  return result;
}

unint64_t sub_1DAE74E20()
{
  result = qword_1EE00B800;
  if (!qword_1EE00B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B800);
  }

  return result;
}

unint64_t sub_1DAE74E78()
{
  result = qword_1EE00B808;
  if (!qword_1EE00B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B808);
  }

  return result;
}

double sub_1DAE750AC()
{

  return result;
}

id sub_1DAE750FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientCompactSceneDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AmbientCompactSceneDelegate(uint64_t a1)
{
  result = qword_1ECC0A120;
  if (!qword_1ECC0A120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE75238(void *a1)
{
  v31 = a1;
  v2 = sub_1DAED17AC();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1DAED182C();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECEDEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECC079A8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_1ECC0DD60);
  v12 = *(v8 + 16);
  v12(v10, v11, v7);
  v13 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v14 = *(v8 + 40);
  v14(v1 + v13, v10, v7);
  swift_endAccess();
  if (qword_1ECC079B0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_1ECC0DD78);
  v12(v10, v15, v7);
  v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v14(v1 + v16, v10, v7);
  swift_endAccess();
  if (qword_1ECC079E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_1ECC0DE08);
  v12(v10, v17, v7);
  v18 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v14(v1 + v18, v10, v7);
  swift_endAccess();
  v19 = v31;
  v20 = v1;
  sub_1DAE9150C(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DAED64D0;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1DAED256C();
  v22 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v23 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);

  v34 = v22;
  v35 = v23;
  MEMORY[0x1E127DA50](0x746E6569626D612DLL, 0xEF746361706D6F43);
  v24 = v34;
  v25 = v35;
  *v6 = 3;
  v26 = v30;
  (*(v4 + 104))(v6, *MEMORY[0x1E6985910], v30);
  v27 = v29;
  sub_1DAED178C();
  v28 = sub_1DAE770FC(v24, v25, v6, v19, v27);

  (*(v32 + 8))(v27, v33);
  (*(v4 + 8))(v6, v26);
  *(v21 + 32) = v28;
  *(v20 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels) = v21;

  sub_1DAE8B590(0x7463656E6E6F63uLL, 0xE700000000000000);
}

void sub_1DAE75738()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-v5];
  v7 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  if (v7 >> 62)
  {
    if (!sub_1DAED247C())
    {
      return;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x1E127E1F0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = *MEMORY[0x1E697DBA8];
  v10 = sub_1DAECF0AC();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v6, v9, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD69C4C(v8 + v12, v3);
  swift_beginAccess();
  sub_1DADE9908(v6, v8 + v12);
  swift_endAccess();
  sub_1DAE62CC4(v3);
  sub_1DAE6EA7C(v3);
  sub_1DAE6EA7C(v6);
  sub_1DAE7BB00();
}

uint64_t sub_1DAE75984()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1ECC0DEE8);
  __swift_project_value_buffer(v0, qword_1ECC0DEE8);
  return sub_1DAECEDDC();
}

uint64_t BugReportingObjectCounter.__allocating_init(maximum:bugReporter:)(uint64_t a1, void *a2)
{
  v4 = sub_1DAECEDEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECC07A48 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1ECC0DEE8);
  (*(v5 + 16))(v7, v8, v4);
  sub_1DAD648F8(a2, v12);
  v9 = swift_allocObject();
  sub_1DAE75BC4(a1, v7, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v9;
}

uint64_t sub_1DAE75B6C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1DAE75BC4(a1, a2, a3);
  return v6;
}

char *sub_1DAE75BC4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = qword_1EE011828;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A510, qword_1DAEDD4F8);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(v4 + v8) = v9;
  v10 = sub_1DAECEDCC();
  v11 = sub_1DAED203C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446466;
    v14 = sub_1DAED29FC();
    v16 = sub_1DAD6482C(v14, v15, &v20);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2050;
    *(v12 + 14) = a1;
    _os_log_impl(&dword_1DAD61000, v10, v11, "counter created for %{public}s with maximum %{public}ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E127F100](v13, -1, -1);
    MEMORY[0x1E127F100](v12, -1, -1);
  }

  *(v4 + 16) = a1;
  sub_1DAD657D8(a3, v4 + 24);
  v17 = qword_1EE011830;
  v18 = sub_1DAECEDEC();
  (*(*(v18 - 8) + 32))(v4 + v17, a2, v18);
  return v4;
}

void sub_1DAE75DA4()
{
  v1 = v0;
  v2 = *(v0 + qword_1EE011828);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v4;
    os_unfair_lock_unlock((v2 + 24));

    v5 = v1[2];
    if (v5 < v4)
    {
      swift_retain_n();
      v13 = sub_1DAECEDCC();
      v14 = sub_1DAED201C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v33 = v16;
        *v15 = 136446722;
        v17 = sub_1DAED29FC();
        v19 = sub_1DAD6482C(v17, v18, &v33);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2050;
        *(v15 + 14) = v4;
        *(v15 + 22) = 2050;

        *(v15 + 24) = v5;

        _os_log_impl(&dword_1DAD61000, v13, v14, "Count of %{public}s increased to %{public}ld. This exceeds the maximum of %{public}ld", v15, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x1E127F100](v16, -1, -1);
        MEMORY[0x1E127F100](v15, -1, -1);
      }

      else
      {
      }

      v20 = v1[6];
      v21 = v1[7];
      __swift_project_boxed_opaque_existential_1(v1 + 3, v20);
      v32 = sub_1DAED29FC();
      v23 = v22;
      v33 = sub_1DAED29FC();
      v34 = v24;
      MEMORY[0x1E127DA50](0x63784574696D694CLL, 0xED00006465646565);
      v25 = v33;
      v26 = v34;
      v33 = sub_1DAED29FC();
      v34 = v27;
      MEMORY[0x1E127DA50](0x63784574696D694CLL, 0xED00006465646565);
      v28 = v33;
      v29 = v34;
      v33 = v4;
      v30 = sub_1DAED287C();
      (*(v21 + 8))(v32, v23, v25, v26, v28, v29, v30, v31, v20, v21);
    }

    else
    {
      v6 = sub_1DAECEDCC();
      v7 = sub_1DAED203C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v33 = v9;
        *v8 = 136446466;
        v10 = sub_1DAED29FC();
        v12 = sub_1DAD6482C(v10, v11, &v33);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2050;
        *(v8 + 14) = v4;
        _os_log_impl(&dword_1DAD61000, v6, v7, "Count of %{public}s increased to %{public}ld", v8, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x1E127F100](v9, -1, -1);
        MEMORY[0x1E127F100](v8, -1, -1);
      }
    }
  }
}

void sub_1DAE76174()
{
  v1 = *(v0 + qword_1EE011828);

  os_unfair_lock_lock((v1 + 24));
  sub_1DAE7692C((v1 + 16), &v10);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v10;

  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446466;
    v7 = sub_1DAED29FC();
    v9 = sub_1DAD6482C(v7, v8, &v10);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2050;
    *(v5 + 14) = v2;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Count of %{public}s decreased to %{public}ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E127F100](v6, -1, -1);
    MEMORY[0x1E127F100](v5, -1, -1);
  }
}

void sub_1DAE76304(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  v5 = *a1 - 1;
  if (*a1 < 1)
  {
    v21 = a4;
    v7 = sub_1DAECEDCC();
    v8 = sub_1DAED201C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136446210;
      v11 = sub_1DAED29FC();
      v13 = sub_1DAD6482C(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DAD61000, v7, v8, "Attempted decrement of zero %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E127F100](v10, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);
    }

    v14 = a2[6];
    v15 = a2[7];
    __swift_project_boxed_opaque_existential_1(a2 + 3, v14);
    v16 = sub_1DAED29FC();
    v18 = v17;
    v22 = v4;
    v19 = sub_1DAED287C();
    (*(v15 + 8))(v16, v18, 0xD000000000000018, 0x80000001DAEE4F70, 0xD000000000000018, 0x80000001DAEE4F70, v19, v20, v14, v15);

    a4 = v21;
  }

  else
  {
    *a1 = v5;
    v4 = v5;
  }

  *a4 = v4;
}

uint64_t sub_1DAE76518()
{
  v1 = *(v0 + qword_1EE011828);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t BugReportingObjectCounter.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = qword_1EE011830;
  v2 = sub_1DAECEDEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BugReportingObjectCounter.__deallocating_deinit()
{
  BugReportingObjectCounter.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall BugReporting.reportBug(type:subType:name:value:)(Swift::String type, Swift::String subType, Swift::String name, Swift::String value)
{
  v8 = value;
  v4 = sub_1DAED1F2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED0ABC();
  sub_1DAED0AAC();
  sub_1DAED0A9C();
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAE7678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[0] = a7;
  v13[1] = a8;
  v8 = sub_1DAED1F2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED0ABC();
  sub_1DAED0AAC();
  sub_1DAED0A9C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1DAE768C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DAE768F0(uint64_t (*a1)(void))
{
  a1();

  return sub_1DAED29FC();
}

uint64_t sub_1DAE76964(uint64_t a1)
{
  result = sub_1DAECEDEC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAE76B2C()
{
  v1 = v0;
  v2 = sub_1DAECEDEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46[-v13];
  v15 = BSDispatchQueueAssertMain();
  v16 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x220))(v15))
  {
    if (v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__hasUI] == 1)
    {
      v17 = v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground];
      v18 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
      v19 = (v3 + 16);
      if (v17 == 1)
      {
        swift_beginAccess();
        (*v19)(v14, &v1[v18], v2);
        v20 = v1;
        v21 = sub_1DAECEDCC();
        v22 = sub_1DAED203C();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v49 = v24;
          *v23 = 136446210;
          v25 = &v20[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
          v26 = *&v20[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
          v27 = *(v25 + 1);

          v28 = sub_1DAD6482C(v26, v27, &v49);

          *(v23 + 4) = v28;
          _os_log_impl(&dword_1DAD61000, v21, v22, "[%{public}s] Scene received memory warning - action: none, content is actively foreground.", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          MEMORY[0x1E127F100](v24, -1, -1);
          MEMORY[0x1E127F100](v23, -1, -1);
        }

        return (*(v3 + 8))(v14, v2);
      }

      else
      {
        swift_beginAccess();
        (*v19)(v11, &v1[v18], v2);
        v38 = v1;
        v39 = sub_1DAECEDCC();
        v40 = sub_1DAED203C();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v49 = v48;
          *v41 = 136446210;
          v47 = v40;
          v42 = *&v38[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
          v43 = *&v38[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

          v44 = sub_1DAD6482C(v42, v43, &v49);

          *(v41 + 4) = v44;
          _os_log_impl(&dword_1DAD61000, v39, v47, "[%{public}s] Scene received memory warning - action: invalidating content VC because background.", v41, 0xCu);
          v45 = v48;
          __swift_destroy_boxed_opaque_existential_1Tm(v48);
          MEMORY[0x1E127F100](v45, -1, -1);
          MEMORY[0x1E127F100](v41, -1, -1);
        }

        (*(v3 + 8))(v11, v2);
        return (*((*v16 & *v38) + 0x230))(0x772079726F6D656DLL, 0xEE00676E696E7261);
      }
    }

    else
    {
      v34 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
      swift_beginAccess();
      (*(v3 + 16))(v8, &v1[v34], v2);
      v35 = sub_1DAECEDCC();
      v36 = sub_1DAED1FFC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1DAD61000, v35, v36, "Scene received memory warning - action: none, because no UI currently exists.", v37, 2u);
        MEMORY[0x1E127F100](v37, -1, -1);
      }

      return (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    v30 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v30], v2);
    v31 = sub_1DAECEDCC();
    v32 = sub_1DAED1FFC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DAD61000, v31, v32, "Scene received memory warning - action: none, because delegate doesn't support dynamic invalidations", v33, 2u);
      MEMORY[0x1E127F100](v33, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1DAE770FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v161 = a5;
  v182 = a3;
  v179 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D08, &qword_1DAEDCB80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v172 = v143 - v10;
  v173 = sub_1DAED22EC();
  v171 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v170 = v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D10, &qword_1DAED57C0);
  v175 = *(v12 - 8);
  v176 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v174 = v143 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D18, &qword_1DAED57C8);
  v178 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v177 = v143 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v185 = v143 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08690, &qword_1DAED6CD8);
  v168 = *(v18 - 8);
  v169 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v167 = v143 - v19;
  v166 = sub_1DAED17AC();
  v20 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A150, &unk_1DAED6CE0);
  MEMORY[0x1EEE9AC00](v163);
  v162 = (v143 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v159 = *(v23 - 8);
  v160 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v158 = v143 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A160, &qword_1DAED6CF0);
  v156 = *(v25 - 8);
  v157 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v155 = v143 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08698, &qword_1DAED84E0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v164 = v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v188 = v143 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A140, &qword_1DAEDD5C8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v190 = v143 - v32;
  v33 = sub_1DAED182C();
  v186 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v189 = v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A148, &qword_1DAEDD5D0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = v143 - v36;
  v192 = sub_1DAECEDEC();
  v187 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v191 = v143 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v39 = qword_1EE011BD8;
  sub_1DAD648F8(qword_1EE011BD8 + 144, v209);
  sub_1DAD648F8(v39 + 104, v208);
  swift_beginAccess();
  result = sub_1DAD6495C(v39 + 56, v197, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v198)
  {
    __break(1u);
    goto LABEL_24;
  }

  v153 = v14;
  v154 = a4;
  v41 = *(*__swift_project_boxed_opaque_existential_1(v197, v198) + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v197);
  v42 = qword_1EE011BD8;
  swift_beginAccess();
  result = sub_1DAD6495C(v42 + 56, v197, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v198)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v43 = __swift_project_boxed_opaque_existential_1(v197, v198);
  sub_1DAD648F8(*v43 + 32, v207);
  __swift_destroy_boxed_opaque_existential_1Tm(v197);
  v44 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v45 = v187 + 16;
  v152 = *(v187 + 16);
  v152(v191, v6 + v44, v192);
  if (a2)
  {
    v46 = a2;
  }

  else
  {
    v46 = *(v6 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
    v179 = *(v6 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  }

  v47 = qword_1EE011BD8;
  swift_beginAccess();
  result = sub_1DAD6495C(v47 + 56, v205, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v206)
  {
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(v205, v206);

  sub_1DAECE6BC();

  sub_1DAD648F8(v209, v203);
  sub_1DAD648F8(v208, v202);
  sub_1DAD648F8(v207, v201);
  v48 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_descriptor;
  swift_beginAccess();
  sub_1DAD6495C(v6 + v48, v37, &qword_1ECC0A148, &qword_1DAEDD5D0);
  v49 = sub_1DAECDE4C();
  v183 = *(v49 - 8);
  v184 = v49;
  result = (*(v183 + 48))(v37, 1);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v149 = v46;
  v150 = v45;
  v181 = v37;
  v148 = *(v186 + 16);
  v148(v189, v182, v33);
  v50 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_metricsDefinition;
  swift_beginAccess();
  v151 = v6;
  v51 = v6 + v50;
  v182 = v33;
  v52 = v190;
  sub_1DAD6495C(v51, v190, &qword_1ECC0A140, &qword_1DAEDD5C8);
  v53 = sub_1DAED1ABC();
  v180 = *(v53 - 8);
  result = (*(v180 + 48))(v52, 1, v53);
  if (result == 1)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v54 = v20;
  v55 = v188;
  v56 = v166;
  (*(v20 + 16))(v188, v161, v166);
  (*(v20 + 56))(v55, 0, 1, v56);
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v201, v201[3]);
  v146 = v143;
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = (v143 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60, v58);
  v62 = *v60;
  v144 = type metadata accessor for ActivityRendererClient(0);
  v198 = v144;
  v63 = sub_1DAE7B8AC(&qword_1EE008C88, type metadata accessor for ActivityRendererClient, &unk_1DAEDD730);
  v200 = &off_1F56B4928;
  v143[1] = v63;
  v199 = v63;
  v197[0] = v41;
  v64 = type metadata accessor for _DefaultActivityRendererSessionFactory();
  v196[3] = v64;
  v196[4] = &off_1F56B36D8;
  v196[0] = v62;
  type metadata accessor for ActivityViewModel(0);
  v65 = swift_allocObject();
  v66 = __swift_mutable_project_boxed_opaque_existential_1(v196, v64);
  v145 = v143;
  v67 = MEMORY[0x1EEE9AC00](v66);
  v69 = (v143 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v70 + 16))(v69, v67);
  v71 = *v69;
  v195[3] = v64;
  v195[4] = &off_1F56B36D8;
  v195[0] = v71;
  v72 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel___pendingInteractionSequenceNumber;
  v193 = 0;
  v161 = v41;
  v73 = v155;
  sub_1DAECEEFC();
  (*(v156 + 32))(v65 + v72, v73, v157);
  v74 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseContentTouchedDown;
  LOBYTE(v193) = 0;
  v75 = v158;
  sub_1DAECEEFC();
  (*(v159 + 32))(v65 + v74, v75, v160);
  v76 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView;
  sub_1DAECF10C();
  sub_1DAD64B94(&qword_1EE005B80, &unk_1ECC0A150, &unk_1DAED6CE0, MEMORY[0x1E697BF38]);
  *(v65 + v76) = sub_1DAED087C();
  v77 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  v78 = sub_1DAED1B8C();
  (*(*(v78 - 8) + 56))(v65 + v77, 1, 1, v78);
  v79 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
  v80 = sub_1DAECF0AC();
  v81 = *(*(v80 - 8) + 56);
  v81(v65 + v79, 1, 1, v80);
  v81(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme, 1, 1, v80);
  v81(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme, 1, 1, v80);
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment) = 0;
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) = 0;
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) = 0;
  v82 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
  v83 = *MEMORY[0x1E6994040];
  v84 = sub_1DAECE21C();
  (*(*(v84 - 8) + 104))(v65 + v82, v83, v84);
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 0;
  sub_1DAECF8DC();
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 0;
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) = 0;
  v85 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  v86 = sub_1DAECDCEC();
  (*(*(v86 - 8) + 56))(v65 + v85, 1, 1, v86);
  v87 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
  v88 = sub_1DAECDBFC();
  (*(*(v88 - 8) + 56))(v65 + v87, 1, 1, v88);
  v89 = (v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
  *v89 = 0;
  v89[1] = 0;
  v90 = (v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
  *v90 = 0;
  v90[1] = 0;
  v91 = v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
  *v91 = 0u;
  *(v91 + 16) = 0u;
  *(v91 + 32) = 0;
  v92 = v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider;
  *(v92 + 32) = 0;
  *v92 = 0u;
  *(v92 + 16) = 0u;
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__cancellable) = MEMORY[0x1E69E7CD0];
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__hasLoadedViewOnce) = 0;
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource) = 0;
  v93 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed;
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed) = 0;
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver) = 0;
  v152((v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger), v191, v192);
  v94 = (v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
  v95 = v149;
  *v94 = v179;
  v94[1] = v95;
  sub_1DAD648F8(v204, v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseEnvironmentProvider);
  sub_1DAD648F8(v195, v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activitySessionFactory);
  sub_1DADF410C(v197, v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityDescriptorProvider);
  sub_1DAD648F8(v203, v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider);
  sub_1DAD648F8(v202, v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__dataProtectionMonitor);
  (*(v183 + 16))(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor, v181, v184);
  (*(v180 + 16))(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition, v190, v53);
  v148((v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag), v189, v182);
  *(v65 + v93) = 0;
  v96 = v164;
  sub_1DAD6495C(v188, v164, &qword_1ECC08698, &qword_1DAED84E0);
  v97 = *(v54 + 48);
  v98 = v97(v96, 1, v56);
  v147 = v53;
  if (v98 == 1)
  {
    v99 = v165;
    sub_1DAED178C();
    if (v97(v96, 1, v56) != 1)
    {
      sub_1DAD64398(v96, &qword_1ECC08698, &qword_1DAED84E0);
    }
  }

  else
  {
    v99 = v165;
    (*(v54 + 32))(v165, v96, v56);
  }

  (*(v54 + 32))(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily, v99, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086A0, &qword_1DAED6CF8);
  swift_allocObject();
  v100 = sub_1DAECEE7C();
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewEntryDidChangePublisher) = v100;
  v193 = v100;
  v179 = v100;
  v101 = MEMORY[0x1E695BF88];
  sub_1DAD64B94(&qword_1EE005C40, &qword_1ECC086A0, &qword_1DAED6CF8, MEMORY[0x1E695BF88]);

  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher) = sub_1DAECEF6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086A8, &unk_1DAED6D00);
  swift_allocObject();
  v102 = sub_1DAECEE7C();
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__colorSchemeDidChangePublisher) = v102;
  v193 = v102;
  v166 = v102;
  sub_1DAD64B94(&qword_1EE005C30, &qword_1ECC086A8, &unk_1DAED6D00, v101);

  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorSchemeDidChangePublisher) = sub_1DAECEF6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  swift_allocObject();
  v103 = sub_1DAECEE7C();
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__overrideDateDidChangePublisher) = v103;
  v193 = v103;
  v165 = v103;
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0, v101);

  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDateDidChangePublisher) = sub_1DAECEF6C();
  v104 = type metadata accessor for DefaultWidgetViewSecurityPolicy();
  v105 = swift_allocObject();
  v106 = (v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicy);
  v106[3] = v104;
  v106[4] = &protocol witness table for DefaultWidgetViewSecurityPolicy;
  *v106 = v105;
  type metadata accessor for ActivityViewModelSecurityDataSource();
  v107 = swift_allocObject();
  *(v107 + 16) = v65;
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource) = v107;

  v193 = sub_1DAED12DC();
  v158 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v108 = sub_1DAED20EC();
  v194 = v108;
  v163 = sub_1DAED20AC();
  v109 = *(v163 - 8);
  v162 = *(v109 + 56);
  v164 = v109 + 56;
  v110 = v185;
  v162(v185, 1, 1, v163);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A180, &unk_1DAED6D10);
  v157 = MEMORY[0x1E695BED8];
  sub_1DAD64B94(&unk_1EE005CC0, &unk_1ECC0A180, &unk_1DAED6D10, MEMORY[0x1E695BED8]);
  v159 = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v111 = v167;
  sub_1DAECEFBC();
  sub_1DAD64398(v110, &unk_1ECC07D20, &unk_1DAED57D0);

  swift_allocObject();
  swift_weakInit();
  v160 = MEMORY[0x1E695BE98];
  sub_1DAD64B94(&qword_1EE005D30, &qword_1ECC08690, &qword_1DAED6CD8, MEMORY[0x1E695BE98]);

  v112 = v169;
  v113 = sub_1DAECF00C();

  v168[1](v111, v112);
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver) = v113;

  __swift_project_boxed_opaque_existential_1((v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider), *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider + 24));
  v169 = sub_1DAECE2AC();
  v193 = v169;
  v114 = v170;
  sub_1DAED22DC();
  v168 = [objc_opt_self() mainRunLoop];
  v194 = v168;
  v115 = sub_1DAED22CC();
  v116 = v172;
  (*(*(v115 - 8) + 56))(v172, 1, 1, v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DD0, &unk_1DAED5860);
  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  sub_1DAD64B94(&qword_1EE00AC10, &unk_1ECC07DD0, &unk_1DAED5860, v157);
  sub_1DAD8D6A4(&qword_1EE00A858, &qword_1EE00A850, 0x1E695DFD0, MEMORY[0x1E696A010]);
  v117 = v174;
  sub_1DAECEFCC();
  sub_1DAD64398(v116, &qword_1ECC07D08, &qword_1DAEDCB80);
  (*(v171 + 8))(v114, v173);

  v118 = sub_1DAED20EC();
  v193 = v118;
  v119 = v185;
  v162(v185, 1, 1, v163);
  sub_1DAD64B94(&qword_1EE00AC40, &qword_1ECC07D10, &qword_1DAED57C0, MEMORY[0x1E695BE50]);
  v120 = v176;
  v121 = v177;
  sub_1DAECEFBC();
  sub_1DAD64398(v119, &unk_1ECC07D20, &unk_1DAED57D0);
  (*(v175 + 8))(v117, v120);

  swift_allocObject();
  swift_weakInit();

  sub_1DAD64B94(&qword_1EE00AC18, &qword_1ECC07D18, &qword_1DAED57C8, v160);
  v122 = v153;
  sub_1DAECF00C();

  (*(v178 + 8))(v121, v122);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAE6608C();
  v123 = v161;

  sub_1DAD64398(v188, &qword_1ECC08698, &qword_1DAED84E0);
  (*(v186 + 8))(v189, v182);
  __swift_destroy_boxed_opaque_existential_1Tm(v202);
  __swift_destroy_boxed_opaque_existential_1Tm(v203);
  __swift_destroy_boxed_opaque_existential_1Tm(v204);
  (*(v187 + 8))(v191, v192);
  (*(v180 + 8))(v190, v147);
  (*(v183 + 8))(v181, v184);
  __swift_destroy_boxed_opaque_existential_1Tm(v195);
  __swift_destroy_boxed_opaque_existential_1Tm(v197);
  __swift_destroy_boxed_opaque_existential_1Tm(v196);
  __swift_destroy_boxed_opaque_existential_1Tm(v201);
  __swift_destroy_boxed_opaque_existential_1Tm(v205);
  v124 = *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment);
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment) = 1;
  sub_1DAE631A8(v124);
  v125 = *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance);
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) = 1;
  sub_1DAE64238(v125);
  v126 = *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment);
  *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 1;
  sub_1DAE64024(v126);
  v127 = swift_allocObject();
  v128 = v151;
  swift_unknownObjectWeakInit();
  v129 = swift_allocObject();
  *(v129 + 16) = v127;
  *(v129 + 24) = v65;
  v130 = (v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
  v131 = *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
  v132 = *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8);
  *v130 = sub_1DAE7C690;
  v130[1] = v129;

  sub_1DAE5DF28(v131, v132);

  v133 = [v154 _FBSScene];
  v134 = [v133 settings];

  v135 = [v134 displayConfiguration];
  if (v135)
  {
    if ([v135 isCarDisplay])
    {
      v136 = 1;
    }

    else
    {
      v136 = [v135 isCarInstrumentsDisplay];
    }

    v137 = *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay);
    *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) = v136;
    sub_1DAE631C0(v137);
    v138 = [v135 identity];
    v139 = [v138 isContinuityDisplay];

    v140 = *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay);
    *(v65 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) = v139;
    sub_1DAE63360(v140);
  }

  v141 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels;
  swift_beginAccess();

  MEMORY[0x1E127DAD0](v142);
  if (*((*(v128 + v141) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v128 + v141) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DAED1E9C();
  }

  sub_1DAED1EBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v207);
  __swift_destroy_boxed_opaque_existential_1Tm(v208);
  __swift_destroy_boxed_opaque_existential_1Tm(v209);
  return v65;
}
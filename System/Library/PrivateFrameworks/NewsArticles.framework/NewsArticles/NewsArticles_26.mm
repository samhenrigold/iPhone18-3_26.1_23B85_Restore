uint64_t sub_1D7C2E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1D7D3084C();
  v5[7] = sub_1D7D3083C();
  v7 = sub_1D7D307DC();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D7C2E464, v7, v6);
}

uint64_t sub_1D7C2E464()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_radarReporter);
    v0[11] = v2;
    v2;
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1D7C2E578;
    v4 = v0[6];

    return sub_1D7C036B0(v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D7C2E578()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D7C2E6B8, v4, v3);
}

uint64_t sub_1D7C2E6B8()
{
  v1 = *(v0 + 80);

  v2 = v1;
  v3 = sub_1D7D30D5C();

  v4 = *(v0 + 80);
  if (v3)
  {
    v5 = [v3 popViewControllerAnimated_];

    v4 = v5;
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1D7C2E774(char a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for RecipeViewModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Context = type metadata accessor for RecipeViewController.RecipeLoadContext(0);
  MEMORY[0x1EEE9AC00](Context, v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24[-v13];
  if ((a1 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_loadContext;
    swift_beginAccess();
    sub_1D7C323A0(v1 + v15, v14, type metadata accessor for RecipeViewController.RecipeLoadContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return;
      }

      v17 = type metadata accessor for RecipeViewController.RecipeLoadContext;
      v18 = v14;
    }

    else
    {
      sub_1D7C32800(v14, v6, type metadata accessor for RecipeViewModel);
      v19 = v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_lastSafeAreaInsets;
      if (*(v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_lastSafeAreaInsets + 32) == 1)
      {
        sub_1D7C32358(&qword_1EC9E7178, type metadata accessor for RecipeViewController, &unk_1D7D58A7C);
        sub_1D7D2B9DC();
        *v19 = v20;
        *(v19 + 8) = v21;
        *(v19 + 16) = v22;
        *(v19 + 24) = v23;
        *(v19 + 32) = 0;
      }

      sub_1D7C323A0(v6, v10, type metadata accessor for RecipeViewModel);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1D7C32508(v10, v1 + v15, type metadata accessor for RecipeViewController.RecipeLoadContext);
      swift_endAccess();
      sub_1D7C2AED8();
      sub_1D7C32408(v10, type metadata accessor for RecipeViewController.RecipeLoadContext);
      v17 = type metadata accessor for RecipeViewModel;
      v18 = v6;
    }

    sub_1D7C32408(v18, v17);
  }
}

id sub_1D7C2EA34@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D7C32358(&qword_1EC9E7178, type metadata accessor for RecipeViewController, &unk_1D7D58A7C);
  sub_1D7D2B9DC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  [result safeAreaInsets];
  v14 = v13;

  MEMORY[0x1DA70E590](v14, v4, v6, v8, v10);
  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = result;
  [result safeAreaInsets];

  sub_1D7D30B3C();
  v16 = [v1 traitCollection];
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = result;
  [result layoutMargins];

  sub_1D7D2AF6C();
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = result;
  [result bounds];

  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = [result window];

  if (v20)
  {
    [v20 bounds];
  }

  v21 = [objc_opt_self() mainScreen];
  [v21 nativeBounds];

  v22 = [v1 traitCollection];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_17;
  }

  v23 = result;
  v24 = objc_opt_self();
  v25 = [v23 semanticContentAttribute];

  [v24 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v26 = [v1 traitCollection];
  v27 = [v26 preferredContentSizeCategory];

  sub_1D7D2976C();
  v28 = sub_1D7D2977C();
  v29 = *(*(v28 - 8) + 56);

  return v29(a1, 0, 1, v28);
}

void sub_1D7C2EE74(uint64_t a1, double (*a2)(void, void))
{
  v80 = a2;
  sub_1D7C32570(0, &unk_1EC9E7180, MEMORY[0x1E69E6158], MEMORY[0x1E69E8638]);
  v3 = v2;
  v84 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v83 = &v72 - v5;
  v6 = sub_1D7D2B22C();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EB5C(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v72 - v12;
  v14 = sub_1D7D2833C();
  v81 = *(v14 - 8);
  v82 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D7D2A3DC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v85 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v72 - v24;
  v86 = type metadata accessor for RecipeSession(0);
  MEMORY[0x1EEE9AC00](v86, v26);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v72 - v31);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v76 = v3;
    v77 = v28;
    v87 = v19;
    v35 = *(v19 + 16);
    v36 = v80;
    v37 = v18;
    v75 = v35;
    v35(v25);
    v74 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
    v73 = v38;
    sub_1D7D2A3AC();
    sub_1D7D2A3BC();
    sub_1D7D2A3CC();
    v39 = (*(v78 + 88))(v9, v79);
    v40 = v13;
    if (v39 == *MEMORY[0x1E69D7E80])
    {
      v41 = -64;
    }

    else if (v39 == *MEMORY[0x1E69D7E78])
    {
      v41 = 0;
    }

    else if (v39 == *MEMORY[0x1E69D7E68])
    {
      v41 = 64;
    }

    else
    {
      if (v39 != *MEMORY[0x1E69D7E70])
      {
        sub_1D7D3160C();
        __break(1u);
        return;
      }

      v41 = 0x80;
    }

    v42 = *(v87 + 8);
    v87 += 8;
    v80 = v42;
    v42(v25, v37);
    v43 = v73;
    *v32 = v74;
    v32[1] = v43;
    v44 = v86;
    (*(v81 + 32))(v32 + *(v86 + 20), v17, v82);
    sub_1D7B07B18(v40, v32 + *(v44 + 24));
    *(v32 + *(v44 + 28)) = v41;
    v45 = &v34[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_viewingSession];
    swift_beginAccess();
    sub_1D7C32508(v32, v45, type metadata accessor for RecipeSession);
    swift_endAccess();
    v46 = *(v45 + 1);
    v89 = *v45;
    v90 = v46;
    sub_1D7C32570(0, &qword_1EC9E7140, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);

    v47 = v83;
    sub_1D7D308AC();
    (*(v84 + 8))(v47, v76);
    sub_1D7C32408(v32, type metadata accessor for RecipeSession);
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v48 = sub_1D7D29AFC();
    __swift_project_value_buffer(v48, qword_1EE0DE460);
    v49 = v85;
    v75(v85, v36, v37);
    v50 = v34;
    v51 = sub_1D7D29ADC();
    v52 = sub_1D7D30C6C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = v37;
      v55 = swift_slowAlloc();
      v88 = v55;
      *v53 = 136315650;
      v56 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
      v57 = v49;
      v59 = v58;
      v80(v57, v54);
      v60 = sub_1D7B06D4C(v56, v59, &v88);

      *(v53 + 4) = v60;
      *(v53 + 12) = 2080;
      LOBYTE(v89) = v45[*(v86 + 28)];
      v61 = RecipeSessionTrigger.description.getter();
      v63 = sub_1D7B06D4C(v61, v62, &v88);

      *(v53 + 14) = v63;
      *(v53 + 22) = 2080;
      v64 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier + 8];
      v89 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier];
      v90 = v64;
      sub_1D7C32570(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

      v65 = sub_1D7D303AC();
      v67 = sub_1D7B06D4C(v65, v66, &v88);

      *(v53 + 24) = v67;
      _os_log_impl(&dword_1D7987000, v51, v52, "Triggering new view session=%s, from trigger=%s, recipeIdentifier=%s", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA7102E0](v55, -1, -1);
      MEMORY[0x1DA7102E0](v53, -1, -1);
    }

    else
    {

      v80(v49, v37);
    }

    v68 = v77;
    v69 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventHandler];
    sub_1D7C323A0(v45, v77, type metadata accessor for RecipeSession);
    if (*(v69 + 88))
    {
      v70 = *(v69 + 96);
      ObjectType = swift_getObjectType();
      (*(v70 + 24))(v68, ObjectType, v70);
    }

    sub_1D7C32408(v68, type metadata accessor for RecipeSession);
    LOBYTE(v89) = 2;
    sub_1D7D28C6C();
  }
}

void sub_1D7C2F754(uint64_t a1, double (*a2)(void, void))
{
  v80 = a2;
  sub_1D7C32570(0, &unk_1EC9E7180, MEMORY[0x1E69E6158], MEMORY[0x1E69E8638]);
  v3 = v2;
  v84 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v83 = &v72 - v5;
  v6 = sub_1D7D2B22C();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EB5C(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v72 - v12;
  v14 = sub_1D7D2833C();
  v81 = *(v14 - 8);
  v82 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D7D2A3DC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v85 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v72 - v24;
  v86 = type metadata accessor for RecipeSession(0);
  MEMORY[0x1EEE9AC00](v86, v26);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v72 - v31);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v76 = v3;
    v77 = v28;
    v87 = v19;
    v35 = *(v19 + 16);
    v36 = v80;
    v37 = v18;
    v75 = v35;
    v35(v25);
    v74 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
    v73 = v38;
    sub_1D7D2A3AC();
    sub_1D7D2A3BC();
    sub_1D7D2A3CC();
    v39 = (*(v78 + 88))(v9, v79);
    v40 = v13;
    if (v39 == *MEMORY[0x1E69D7E80])
    {
      v41 = -64;
    }

    else if (v39 == *MEMORY[0x1E69D7E78])
    {
      v41 = 2;
    }

    else if (v39 == *MEMORY[0x1E69D7E68])
    {
      v41 = 66;
    }

    else
    {
      if (v39 != *MEMORY[0x1E69D7E70])
      {
        sub_1D7D3160C();
        __break(1u);
        return;
      }

      v41 = -126;
    }

    v42 = *(v87 + 8);
    v87 += 8;
    v80 = v42;
    v42(v25, v37);
    v43 = v73;
    *v32 = v74;
    v32[1] = v43;
    v44 = v86;
    (*(v81 + 32))(v32 + *(v86 + 20), v17, v82);
    sub_1D7B07B18(v40, v32 + *(v44 + 24));
    *(v32 + *(v44 + 28)) = v41;
    v45 = &v34[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_viewingSession];
    swift_beginAccess();
    sub_1D7C32508(v32, v45, type metadata accessor for RecipeSession);
    swift_endAccess();
    v46 = *(v45 + 1);
    v89 = *v45;
    v90 = v46;
    sub_1D7C32570(0, &qword_1EC9E7140, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);

    v47 = v83;
    sub_1D7D308AC();
    (*(v84 + 8))(v47, v76);
    sub_1D7C32408(v32, type metadata accessor for RecipeSession);
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v48 = sub_1D7D29AFC();
    __swift_project_value_buffer(v48, qword_1EE0DE460);
    v49 = v85;
    v75(v85, v36, v37);
    v50 = v34;
    v51 = sub_1D7D29ADC();
    v52 = sub_1D7D30C6C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = v37;
      v55 = swift_slowAlloc();
      v88 = v55;
      *v53 = 136315650;
      v56 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
      v57 = v49;
      v59 = v58;
      v80(v57, v54);
      v60 = sub_1D7B06D4C(v56, v59, &v88);

      *(v53 + 4) = v60;
      *(v53 + 12) = 2080;
      LOBYTE(v89) = v45[*(v86 + 28)];
      v61 = RecipeSessionTrigger.description.getter();
      v63 = sub_1D7B06D4C(v61, v62, &v88);

      *(v53 + 14) = v63;
      *(v53 + 22) = 2080;
      v64 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier + 8];
      v89 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier];
      v90 = v64;
      sub_1D7C32570(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

      v65 = sub_1D7D303AC();
      v67 = sub_1D7B06D4C(v65, v66, &v88);

      *(v53 + 24) = v67;
      _os_log_impl(&dword_1D7987000, v51, v52, "Resigning view session=%s, from trigger=%s, recipeIdentifier=%s", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA7102E0](v55, -1, -1);
      MEMORY[0x1DA7102E0](v53, -1, -1);
    }

    else
    {

      v80(v49, v37);
    }

    v68 = v77;
    v69 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventHandler];
    sub_1D7C323A0(v45, v77, type metadata accessor for RecipeSession);
    if (*(v69 + 88))
    {
      v70 = *(v69 + 96);
      ObjectType = swift_getObjectType();
      (*(v70 + 40))(v68, ObjectType, v70);
    }

    sub_1D7C32408(v68, type metadata accessor for RecipeSession);
  }
}

void sub_1D7C30018(uint64_t a1, double (*a2)(void, void))
{
  v80 = a2;
  sub_1D7C32570(0, &unk_1EC9E7180, MEMORY[0x1E69E6158], MEMORY[0x1E69E8638]);
  v3 = v2;
  v84 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v83 = &v72 - v5;
  v6 = sub_1D7D2B22C();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EB5C(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v72 - v12;
  v14 = sub_1D7D2833C();
  v81 = *(v14 - 8);
  v82 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D7D2A3DC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v85 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v72 - v24;
  v86 = type metadata accessor for RecipeSession(0);
  MEMORY[0x1EEE9AC00](v86, v26);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v72 - v31);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v76 = v3;
    v77 = v28;
    v87 = v19;
    v35 = *(v19 + 16);
    v36 = v80;
    v37 = v18;
    v75 = v35;
    v35(v25);
    v74 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
    v73 = v38;
    sub_1D7D2A3AC();
    sub_1D7D2A3BC();
    sub_1D7D2A3CC();
    v39 = (*(v78 + 88))(v9, v79);
    v40 = v13;
    if (v39 == *MEMORY[0x1E69D7E80])
    {
      v41 = -64;
    }

    else if (v39 == *MEMORY[0x1E69D7E78])
    {
      v41 = 3;
    }

    else if (v39 == *MEMORY[0x1E69D7E68])
    {
      v41 = 67;
    }

    else
    {
      if (v39 != *MEMORY[0x1E69D7E70])
      {
        sub_1D7D3160C();
        __break(1u);
        return;
      }

      v41 = -125;
    }

    v42 = *(v87 + 8);
    v87 += 8;
    v80 = v42;
    v42(v25, v37);
    v43 = v73;
    *v32 = v74;
    v32[1] = v43;
    v44 = v86;
    (*(v81 + 32))(v32 + *(v86 + 20), v17, v82);
    sub_1D7B07B18(v40, v32 + *(v44 + 24));
    *(v32 + *(v44 + 28)) = v41;
    v45 = &v34[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_viewingSession];
    swift_beginAccess();
    sub_1D7C32508(v32, v45, type metadata accessor for RecipeSession);
    swift_endAccess();
    v46 = *(v45 + 1);
    v89 = *v45;
    v90 = v46;
    sub_1D7C32570(0, &qword_1EC9E7140, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);

    v47 = v83;
    sub_1D7D308AC();
    (*(v84 + 8))(v47, v76);
    sub_1D7C32408(v32, type metadata accessor for RecipeSession);
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v48 = sub_1D7D29AFC();
    __swift_project_value_buffer(v48, qword_1EE0DE460);
    v49 = v85;
    v75(v85, v36, v37);
    v50 = v34;
    v51 = sub_1D7D29ADC();
    v52 = sub_1D7D30C6C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = v37;
      v55 = swift_slowAlloc();
      v88 = v55;
      *v53 = 136315650;
      v56 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
      v57 = v49;
      v59 = v58;
      v80(v57, v54);
      v60 = sub_1D7B06D4C(v56, v59, &v88);

      *(v53 + 4) = v60;
      *(v53 + 12) = 2080;
      LOBYTE(v89) = v45[*(v86 + 28)];
      v61 = RecipeSessionTrigger.description.getter();
      v63 = sub_1D7B06D4C(v61, v62, &v88);

      *(v53 + 14) = v63;
      *(v53 + 22) = 2080;
      v64 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier + 8];
      v89 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier];
      v90 = v64;
      sub_1D7C32570(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

      v65 = sub_1D7D303AC();
      v67 = sub_1D7B06D4C(v65, v66, &v88);

      *(v53 + 24) = v67;
      _os_log_impl(&dword_1D7987000, v51, v52, "Resuming view session=%s, from trigger=%s, recipeIdentifier=%s", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA7102E0](v55, -1, -1);
      MEMORY[0x1DA7102E0](v53, -1, -1);
    }

    else
    {

      v80(v49, v37);
    }

    v68 = v77;
    v69 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventHandler];
    sub_1D7C323A0(v45, v77, type metadata accessor for RecipeSession);
    if (*(v69 + 88))
    {
      v70 = *(v69 + 96);
      ObjectType = swift_getObjectType();
      (*(v70 + 32))(v68, ObjectType, v70);
    }

    sub_1D7C32408(v68, type metadata accessor for RecipeSession);
  }
}

void sub_1D7C308DC(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  sub_1D7C32570(0, &unk_1EC9E7180, MEMORY[0x1E69E6158], MEMORY[0x1E69E8638]);
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v67 = &v62 - v4;
  v65 = sub_1D7D2B22C();
  v5 = *(v65 - 1);
  MEMORY[0x1EEE9AC00](v65, v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EB5C(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v62 - v11;
  v66 = sub_1D7D2833C();
  v13 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7D2A3DC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v70 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v62 - v23;
  v71 = type metadata accessor for RecipeSession(0);
  MEMORY[0x1EEE9AC00](v71, v25);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v73 = v18;
    v64 = *(v18 + 16);
    v64(v24, v72, v17);
    v30 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
    v62 = v31;
    v63 = v30;
    sub_1D7D2A3AC();
    sub_1D7D2A3BC();
    sub_1D7D2A3CC();
    v32 = (*(v5 + 88))(v8, v65);
    if (v32 == *MEMORY[0x1E69D7E80])
    {
      v33 = -64;
    }

    else if (v32 == *MEMORY[0x1E69D7E78])
    {
      v33 = 1;
    }

    else if (v32 == *MEMORY[0x1E69D7E68])
    {
      v33 = 65;
    }

    else
    {
      if (v32 != *MEMORY[0x1E69D7E70])
      {
        sub_1D7D3160C();
        __break(1u);
        return;
      }

      v33 = -127;
    }

    v34 = *(v73 + 8);
    v73 += 8;
    v65 = v34;
    v34(v24, v17);
    v35 = v62;
    *v27 = v63;
    v27[1] = v35;
    v36 = v71;
    (*(v13 + 32))(v27 + *(v71 + 20), v16, v66);
    sub_1D7B07B18(v12, v27 + *(v36 + 24));
    *(v27 + *(v36 + 28)) = v33;
    v37 = &v29[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_viewingSession];
    swift_beginAccess();
    sub_1D7C32508(v27, v37, type metadata accessor for RecipeSession);
    swift_endAccess();
    v38 = *(v37 + 1);
    v75 = *v37;
    v76 = v38;
    sub_1D7C32570(0, &qword_1EC9E7140, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);

    v39 = v67;
    sub_1D7D308AC();
    (*(v68 + 8))(v39, v69);
    sub_1D7C32408(v27, type metadata accessor for RecipeSession);
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D7D29AFC();
    __swift_project_value_buffer(v40, qword_1EE0DE460);
    v41 = v70;
    v64(v70, v72, v17);
    v42 = v29;
    v43 = sub_1D7D29ADC();
    v44 = sub_1D7D30C6C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v74 = v46;
      *v45 = 136315650;
      v47 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
      v49 = v48;
      v65(v41, v17);
      v50 = sub_1D7B06D4C(v47, v49, &v74);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      LOBYTE(v75) = v37[*(v71 + 28)];
      v51 = RecipeSessionTrigger.description.getter();
      v53 = sub_1D7B06D4C(v51, v52, &v74);

      *(v45 + 14) = v53;
      *(v45 + 22) = 2080;
      v54 = *&v42[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier + 8];
      v75 = *&v42[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier];
      v76 = v54;
      sub_1D7C32570(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

      v55 = sub_1D7D303AC();
      v57 = sub_1D7B06D4C(v55, v56, &v74);

      *(v45 + 24) = v57;
      _os_log_impl(&dword_1D7987000, v43, v44, "Ending view session=%s, from trigger=%s, recipeIdentifier=%s", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA7102E0](v46, -1, -1);
      MEMORY[0x1DA7102E0](v45, -1, -1);
    }

    else
    {

      v65(v41, v17);
    }

    v58 = *&v42[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventHandler];
    if (*(v58 + 88))
    {
      v59 = *(v58 + 96);
      ObjectType = swift_getObjectType();
      v61 = *(v59 + 16);
      swift_unknownObjectRetain();
      v61(ObjectType, v59);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1D7C31138(uint64_t a1, double (*a2)(void, void))
{
  v80 = a2;
  sub_1D7C32570(0, &unk_1EC9E7180, MEMORY[0x1E69E6158], MEMORY[0x1E69E8638]);
  v3 = v2;
  v84 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v83 = &v72 - v5;
  v6 = sub_1D7D2B22C();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EB5C(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v72 - v12;
  v14 = sub_1D7D2833C();
  v81 = *(v14 - 8);
  v82 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D7D2A3DC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v85 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v72 - v24;
  v86 = type metadata accessor for RecipeSession(0);
  MEMORY[0x1EEE9AC00](v86, v26);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v72 - v31);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v76 = v3;
    v77 = v28;
    v87 = v19;
    v35 = *(v19 + 16);
    v36 = v80;
    v37 = v18;
    v75 = v35;
    v35(v25);
    v74 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
    v73 = v38;
    sub_1D7D2A3AC();
    sub_1D7D2A3BC();
    sub_1D7D2A3CC();
    v39 = (*(v78 + 88))(v9, v79);
    v40 = v13;
    if (v39 == *MEMORY[0x1E69D7E80])
    {
      v41 = -64;
    }

    else if (v39 == *MEMORY[0x1E69D7E78])
    {
      v41 = 4;
    }

    else if (v39 == *MEMORY[0x1E69D7E68])
    {
      v41 = 68;
    }

    else
    {
      if (v39 != *MEMORY[0x1E69D7E70])
      {
        sub_1D7D3160C();
        __break(1u);
        return;
      }

      v41 = -124;
    }

    v42 = *(v87 + 8);
    v87 += 8;
    v80 = v42;
    v42(v25, v37);
    v43 = v73;
    *v32 = v74;
    v32[1] = v43;
    v44 = v86;
    (*(v81 + 32))(v32 + *(v86 + 20), v17, v82);
    sub_1D7B07B18(v40, v32 + *(v44 + 24));
    *(v32 + *(v44 + 28)) = v41;
    v45 = &v34[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_viewingSession];
    swift_beginAccess();
    sub_1D7C32508(v32, v45, type metadata accessor for RecipeSession);
    swift_endAccess();
    v46 = *(v45 + 1);
    v89 = *v45;
    v90 = v46;
    sub_1D7C32570(0, &qword_1EC9E7140, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);

    v47 = v83;
    sub_1D7D308AC();
    (*(v84 + 8))(v47, v76);
    sub_1D7C32408(v32, type metadata accessor for RecipeSession);
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v48 = sub_1D7D29AFC();
    __swift_project_value_buffer(v48, qword_1EE0DE460);
    v49 = v85;
    v75(v85, v36, v37);
    v50 = v34;
    v51 = sub_1D7D29ADC();
    v52 = sub_1D7D30C6C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = v37;
      v55 = swift_slowAlloc();
      v88 = v55;
      *v53 = 136315650;
      v56 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
      v57 = v49;
      v59 = v58;
      v80(v57, v54);
      v60 = sub_1D7B06D4C(v56, v59, &v88);

      *(v53 + 4) = v60;
      *(v53 + 12) = 2080;
      LOBYTE(v89) = v45[*(v86 + 28)];
      v61 = RecipeSessionTrigger.description.getter();
      v63 = sub_1D7B06D4C(v61, v62, &v88);

      *(v53 + 14) = v63;
      *(v53 + 22) = 2080;
      v64 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier + 8];
      v89 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier];
      v90 = v64;
      sub_1D7C32570(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

      v65 = sub_1D7D303AC();
      v67 = sub_1D7B06D4C(v65, v66, &v88);

      *(v53 + 24) = v67;
      _os_log_impl(&dword_1D7987000, v51, v52, "Cancelling view session=%s, from trigger=%s, recipeIdentifier=%s", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA7102E0](v55, -1, -1);
      MEMORY[0x1DA7102E0](v53, -1, -1);
    }

    else
    {

      v80(v49, v37);
    }

    v68 = v77;
    v69 = *&v50[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventHandler];
    sub_1D7C323A0(v45, v77, type metadata accessor for RecipeSession);
    if (*(v69 + 88))
    {
      v70 = *(v69 + 96);
      ObjectType = swift_getObjectType();
      (*(v70 + 48))(v68, ObjectType, v70);
    }

    sub_1D7C32408(v68, type metadata accessor for RecipeSession);
  }
}

double sub_1D7C31B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, __n128))
{
  v17 = a6;
  v8 = sub_1D7D2A3DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v9 + 32))(v14 + v13, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  (v17)(a5, v14);

  return result;
}

uint64_t sub_1D7C31C8C()
{
  v1 = (*v0 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_pageIdentifier);
  if (v1[1])
  {
    v2 = *v1;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7C31CD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = &v3[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_navigationTitleViewBlock];
    v6 = *&v3[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_navigationTitleViewBlock];
    v7 = *&v3[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_navigationTitleViewBlock + 8];
    *v5 = sub_1D7C327F0;
    v5[1] = v4;

    sub_1D79AD740(v6, v7);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D7A49684(v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1D7C31DC8(void *a1, uint64_t a2)
{
  v3 = sub_1D7D2C09C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = [Strong titleView];

  if (!v10)
  {
    return 0;
  }

  v11 = [a1 navigationController];
  if (!v11 || (v12 = v11, v13 = [v11 tabBarController], v12, !v13))
  {

    return 0;
  }

  (*(v4 + 104))(v7, *MEMORY[0x1E69D86B0], v3);
  v14 = objc_allocWithZone(sub_1D7D2BDAC());
  v15 = v10;
  v16 = sub_1D7D2BD7C();
  sub_1D7D2BD8C();

  return v16;
}

void sub_1D7C31F68(void *a1)
{
  sub_1D798EB5C(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v21 - v6;
  if (a1 == 1)
  {
    v8 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_hardPaywallViewController;
    v9 = *(v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_hardPaywallViewController);
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = [v9 presentedViewController];
    if (v10)
    {
      v11 = v10;
      [v10 dismissViewControllerAnimated:1 completion:0];
    }

    v12 = *(v1 + v8);
    if (!v12)
    {
      goto LABEL_10;
    }

    [v12 willMoveToParentViewController_];
    v13 = *(v1 + v8);
    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = [v13 view];
    if (v14)
    {
      v15 = v14;
      [v14 removeFromSuperview];

      v16 = *(v1 + v8);
      if (v16)
      {
        [v16 removeFromParentViewController];
        v17 = *(v1 + v8);
LABEL_11:
        *(v1 + v8) = 0;

        v18 = *(*(v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventHandler) + 32);
        sub_1D7D3085C();
        v19 = sub_1D7D3087C();
        (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
        v20 = swift_allocObject();
        v20[2] = 0;
        v20[3] = 0;
        v20[4] = v18;
        swift_unknownObjectRetain();
        sub_1D7AF94C0(0, 0, v7, &unk_1D7D58BB8, v20);

        return;
      }

LABEL_10:
      v17 = 0;
      goto LABEL_11;
    }

    __break(1u);
  }

  sub_1D7D3160C();
  __break(1u);
}

id sub_1D7C32220(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  v6 = sub_1D7D2B9EC();
  v7 = v5 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_parallaxX;
  *v7 = v6;
  *(v7 + 8) = v8 & 1;

  return sub_1D7C2AD00();
}

uint64_t sub_1D7C32300(uint64_t a1)
{
  result = sub_1D7C32358(&qword_1EC9E7170, type metadata accessor for RecipeViewController, &unk_1D7D58ACC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7C32358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7C323A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C32408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7C32468(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeViewModel(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1D7C2B1F4(a1, v4, v5);
}

uint64_t sub_1D7C32508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1D7C32570(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_17Tm_0()
{
  v1 = sub_1D7D2A3DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7C32734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D7A4E814;

  return sub_1D7C26790(a1, v4, v5, v6);
}

uint64_t sub_1D7C32800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C32894(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_1D7C32914(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugRecipe(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D7A4E814;

  return sub_1D7C2E3CC(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_36Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7C32A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D7A4E2D8;

  return sub_1D7C26790(a1, v4, v5, v6);
}

void sub_1D7C32B00()
{
  v1 = v0;
  v2 = sub_1D7D2833C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = sub_1D7D2836C();
  v7 = *(v31[0] - 8);
  MEMORY[0x1EEE9AC00](v31[0], v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EB5C(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v31 - v13;
  *(v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_isPrimary) = 0;
  v15 = (v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_viewingSession);
  (*(v3 + 56))(v14, 1, 1, v2);
  sub_1D7D2835C();
  v16 = sub_1D7D2834C();
  v18 = v17;
  (*(v7 + 8))(v10, v31[0]);
  sub_1D7D2832C();
  *v15 = v16;
  v15[1] = v18;
  v19 = type metadata accessor for RecipeSession(0);
  (*(v3 + 32))(v15 + v19[5], v6, v2);
  sub_1D7B07B18(v14, v15 + v19[6]);
  *(v15 + v19[7]) = -64;
  v20 = (v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_pageIdentifier);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier);
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_coverViewManager;
  sub_1D7D2A59C();
  swift_allocObject();
  *(v1 + v22) = sub_1D7D2A58C();
  v23 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventManager;
  sub_1D7C32F30(0);
  swift_allocObject();
  *(v1 + v23) = sub_1D7D28C9C();
  *(v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_hardPaywallViewController) = 0;
  *(v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_contentViewController) = 0;
  v24 = v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_parallaxX;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_lastSafeAreaInsets;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 1;
  type metadata accessor for RecipeViewController.RecipeLoadContext(0);
  swift_storeEnumTagMultiPayload();
  v26 = (v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_loadContextBlock);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_navigationTitleViewBlock);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_onPresentedRecipeBlock);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v1 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_onFailedToLoadRecipeBlock);
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_observableScrollView;
  v31[1] = 0;
  sub_1D798EB5C(0, &qword_1EE0C0420, sub_1D7A469D4, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v1 + v30) = sub_1D7D28ECC();
  sub_1D7D3160C();
  __break(1u);
}

void sub_1D7C32F30(uint64_t a1)
{
  if (!qword_1EC9E71B0)
  {
    sub_1D7B23A14();
    v1 = sub_1D7D28CAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E71B0);
    }
  }
}

void *sub_1D7C32FBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EC9E7258, &protocol descriptor for CookingKitTrackerManagerType, 1);
    result = sub_1D7D28D2C();
    if (v9)
    {
      v6 = type metadata accessor for RecipeModule();
      v7 = swift_allocObject();
      sub_1D799D69C(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_1D799D69C(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &protocol witness table for RecipeModule;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D7C330D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  v3 = v16;
  if (!v16)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E7250, MEMORY[0x1E6997300], 1);
  result = sub_1D7D28D2C();
  if (!v15[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C7B20, &protocol descriptor for RecipeCoordinatorType, 0);
  result = sub_1D7D28D2C();
  v5 = v13;
  if (v13)
  {
    v6 = v14;
    v7 = type metadata accessor for RecipeRadarReporter();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_collectEmbedData] = 0;
    v9 = &v8[OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_commandCenter];
    *v9 = v3;
    v9[1] = v4;
    sub_1D799CC84(v15, &v8[OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_debugInfoProvider]);
    v10 = &v8[OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_recipeCoordinator];
    *v10 = v5;
    v10[1] = v6;
    v12.receiver = v8;
    v12.super_class = v7;
    v11 = objc_msgSendSuper2(&v12, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7C33278()
{
  type metadata accessor for RecipeCache();
  v0 = swift_allocObject();
  v1 = sub_1D7A512B8(MEMORY[0x1E69E7CC0]);
  sub_1D7C351D4(0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

double sub_1D7C332E0()
{
  type metadata accessor for RecipeViewController(0);
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EC9E71B8, &protocol descriptor for RecipeStylerType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E71C0, &protocol descriptor for RecipeRouterType, 1);
  sub_1D7D291EC();
  type metadata accessor for RecipeRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EC9E71C8, &protocol descriptor for RecipeEventHandlerType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EC9E71D0, &protocol descriptor for RecipeInteractorType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EE0C7B10, &protocol descriptor for RecipeDataManagerType, 0);
  sub_1D7D291EC();

  type metadata accessor for RecipeRouteModel(0);
  sub_1D7D291EC();

  return result;
}

char *sub_1D7C33518(void *a1)
{
  sub_1D799DB5C(0, &qword_1EC9E71F8, MEMORY[0x1E69D6118], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v18 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E71B8, &protocol descriptor for RecipeStylerType, 1);
  result = sub_1D7D28D2C();
  if (!v22)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E71C8, &protocol descriptor for RecipeEventHandlerType, 0);
  result = sub_1D7D28D2C();
  v7 = v19;
  if (!v19)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeRadarReporter();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7D3024C();
  sub_1D7D28D2C();
  result = (*(*(v10 - 8) + 48))(v5, 1, v10);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50, MEMORY[0x1E69B6520], 1);
  result = sub_1D7D28D2C();
  if (!v18[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79A6DAC();
  result = sub_1D7D28D1C();
  if (result)
  {
    v11 = result;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v13 = MEMORY[0x1EEE9AC00](v12, v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_1D7C344BC(*v15, v7, v8, v9, v5, v18, v11);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v21);
    return v17;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1D7C33884@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0, &protocol descriptor for BaseStylerType, 1);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for RecipeStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52AD090;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7C33938@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for RecipeRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_1D799D69C(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_1F52AD0F8;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7C339F4(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RecipeViewController(0);
  v2 = sub_1D7D28D1C();
  swift_unknownObjectWeakAssign();
}

void *sub_1D7C33A74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EC9E71D0, &protocol descriptor for RecipeInteractorType, 0);
  result = sub_1D7D28D2C();
  v5 = v18;
  if (v18)
  {
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EC9E71C0, &protocol descriptor for RecipeRouterType, 1);
    result = sub_1D7D28D2C();
    if (v17)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D798C468(0, qword_1EE0C7B20, &protocol descriptor for RecipeCoordinatorType, 0);
      sub_1D7D28D2C();
      v7 = v15[1];
      v8 = v15[2];
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      v10 = MEMORY[0x1EEE9AC00](v9, v9);
      v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12, v10);
      v14 = sub_1D7C3428C(v5, v6, *v12, v7, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
      *a2 = v14;
      a2[1] = &off_1F52AD128;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7C33C70(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D799DB5C(0, &qword_1EC9E71D8, type metadata accessor for RecipeRouteModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C7B10, &protocol descriptor for RecipeDataManagerType, 0);
  sub_1D7D28D2C();
  v8 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = type metadata accessor for RecipeRouteModel(0);
  sub_1D7D28D2C();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EC9E71E0, MEMORY[0x1E6997340], 1);
  sub_1D7D28D2C();
  if (!v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0C01E0, MEMORY[0x1E69B6B18], 1);
  sub_1D7D28D2C();
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF590, MEMORY[0x1E69B65A8], 1);
  sub_1D7D28D2C();
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF090, 0x1E69B5210);
  v11 = sub_1D7D28D1C();
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v11 recipeAccessChecker];

  if (v13)
  {
    type metadata accessor for RecipeInteractor(0);
    v14 = swift_allocObject();
    v14[3] = 0;
    swift_unknownObjectWeakInit();
    v15 = OBJC_IVAR____TtC12NewsArticles16RecipeInteractor__recipeWasLoaded;
    sub_1D7C343F8(0);
    v16 = swift_allocObject();
    *(v16 + 20) = 0;
    *(v16 + 16) = 0;
    *(v14 + v15) = v16;
    v14[4] = v8;
    v14[5] = v9;
    sub_1D7C34458(v7, v14 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_routeModel);
    sub_1D799D69C(&v22, v14 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_recipeLoader);
    sub_1D799D69C(&v20, v14 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_paywallFactory);
    sub_1D799D69C(&v18, v14 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_externalRecipeFactory);
    *(v14 + OBJC_IVAR____TtC12NewsArticles16RecipeInteractor_accessChecker) = v13;
    *a2 = v14;
    a2[1] = &off_1F52ACD28;
    return;
  }

LABEL_15:
  __break(1u);
}

void *sub_1D7C3400C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF6A0, MEMORY[0x1E69B6230], 1);
  result = sub_1D7D28D2C();
  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFA10, MEMORY[0x1E69B4F20], 1);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeCache();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF600, MEMORY[0x1E69B64B0], 1);
  result = sub_1D7D28D2C();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C35114(0, &qword_1EE0BF720, sub_1D7B683A0, &type metadata for RecipeOfflineModel, MEMORY[0x1E69B6158]);
  result = sub_1D7D28D1C();
  if (result)
  {
    v6 = result;
    type metadata accessor for RecipeDataManager();
    v7 = swift_allocObject();
    v7[19] = 0;
    v7[20] = 0;
    sub_1D799D69C(&v12, (v7 + 2));
    sub_1D799D69C(&v10, (v7 + 12));
    v7[17] = v5;
    result = sub_1D799D69C(&v8, (v7 + 7));
    v7[18] = v6;
    *a2 = v7;
    a2[1] = &off_1F52ACD00;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1D7C3428C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for RecipeRouter();
  v22[3] = v10;
  v22[4] = &off_1F52AD0F8;
  v22[0] = a3;
  type metadata accessor for RecipeEventHandler();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v10);
  v13 = MEMORY[0x1EEE9AC00](v12, v12);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v20 = v10;
  v21 = &off_1F52AD0F8;
  *&v19 = v17;
  v11[3] = 0;
  swift_unknownObjectWeakInit();
  v11[4] = a1;
  v11[5] = a2;
  sub_1D799D69C(&v19, (v11 + 6));
  v11[11] = a4;
  v11[12] = a5;
  *(a1 + 24) = &off_1F52AD110;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v11;
}

void sub_1D7C343F8(uint64_t a1)
{
  if (!qword_1EC9E71F0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1D7D314EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E71F0);
    }
  }
}

uint64_t sub_1D7C34458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeRouteModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1D7C344BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v116 = a6;
  v117 = a7;
  v108 = a5;
  v106 = a4;
  v105 = a3;
  v104 = a2;
  v8 = MEMORY[0x1E69E6158];
  v9 = MEMORY[0x1E69E8658];
  sub_1D7C350C4(0, &unk_1EC9E7200, MEMORY[0x1E69E6158], MEMORY[0x1E69E8658]);
  v114 = v10;
  v112 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v111 = &v92 - v12;
  v13 = MEMORY[0x1E69E8660];
  sub_1D7C350C4(0, &qword_1EC9E7140, v8, MEMORY[0x1E69E8660]);
  v115 = v14;
  v113 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v109 = &v92 - v16;
  v17 = MEMORY[0x1E69E8698];
  sub_1D7C350C4(0, &qword_1EC9E7210, v8, MEMORY[0x1E69E8698]);
  v110 = v18;
  v107 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v103 = &v92 - v20;
  v21 = MEMORY[0x1E69E6370];
  sub_1D7C350C4(0, &qword_1EC9E7218, MEMORY[0x1E69E6370], v9);
  v100 = v22;
  v99 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v98 = &v92 - v24;
  sub_1D7C350C4(0, &unk_1EC9E7130, v21, v13);
  v102 = v25;
  v101 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v95 = &v92 - v27;
  sub_1D7C350C4(0, &qword_1EC9E7128, v21, v17);
  v97 = v28;
  v96 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v94 = &v92 - v30;
  v31 = sub_1D7D2833C();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D7D2836C();
  v36 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v37);
  v39 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D799DB5C(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v92 - v42;
  v44 = type metadata accessor for RecipeStyler();
  v121[3] = v44;
  v121[4] = &off_1F52AD090;
  v121[0] = a1;
  v93 = type metadata accessor for RecipeViewController(0);
  v45 = objc_allocWithZone(v93);
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v121, v44);
  v47 = MEMORY[0x1EEE9AC00](v46, v46);
  v49 = (&v92 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49, v47);
  v51 = *v49;
  v120[3] = v44;
  v120[4] = &off_1F52AD090;
  v120[0] = v51;
  *&v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_isPrimary] = 0;
  v52 = &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_viewingSession];
  (*(v32 + 56))(v43, 1, 1, v31);
  sub_1D7D2835C();
  v53 = sub_1D7D2834C();
  v55 = v54;
  (*(v36 + 8))(v39, v92);
  sub_1D7D2832C();
  *v52 = v53;
  v52[1] = v55;
  v56 = type metadata accessor for RecipeSession(0);
  (*(v32 + 32))(v52 + v56[5], v35, v31);
  sub_1D7B07B18(v43, v52 + v56[6]);
  *(v52 + v56[7]) = -64;
  v57 = &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_pageIdentifier];
  *v57 = 0;
  v57[1] = 0;
  v58 = &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier];
  *v58 = 0;
  v58[1] = 0;
  v59 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_coverViewManager;
  sub_1D7D2A59C();
  swift_allocObject();
  *&v45[v59] = sub_1D7D2A58C();
  v60 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventManager;
  sub_1D7C35114(0, &qword_1EC9E71B0, sub_1D7B23A14, &type metadata for RecipeEvent, MEMORY[0x1E69D6460]);
  swift_allocObject();
  *&v45[v60] = sub_1D7D28C9C();
  *&v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_hardPaywallViewController] = 0;
  *&v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_contentViewController] = 0;
  v61 = &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_parallaxX];
  *v61 = 0;
  v61[8] = 1;
  v62 = &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_lastSafeAreaInsets];
  *v62 = 0u;
  *(v62 + 1) = 0u;
  v62[32] = 1;
  type metadata accessor for RecipeViewController.RecipeLoadContext(0);
  swift_storeEnumTagMultiPayload();
  v63 = &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_loadContextBlock];
  *v63 = 0;
  v63[1] = 0;
  v64 = &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_navigationTitleViewBlock];
  *v64 = 0;
  v64[1] = 0;
  v65 = &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_onPresentedRecipeBlock];
  *v65 = 0;
  v65[1] = 0;
  v66 = &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_onFailedToLoadRecipeBlock];
  *v66 = 0;
  v66[1] = 0;
  v67 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_observableScrollView;
  v119 = 0;
  sub_1D799DB5C(0, &qword_1EE0C0420, sub_1D7A469D4, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *&v45[v67] = sub_1D7D28ECC();
  sub_1D799CC84(v120, &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_styler]);
  v68 = &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventHandler];
  v69 = v105;
  *v68 = v104;
  v68[1] = v69;
  v70 = v106;
  *&v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_radarReporter] = v106;
  v71 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_scope;
  v72 = sub_1D7D3024C();
  v73 = *(v72 - 8);
  v74 = v108;
  (*(v73 + 16))(&v45[v71], v108, v72);
  v75 = *MEMORY[0x1E69E8650];
  v76 = v99;
  v77 = v98;
  v78 = v100;
  (*(v99 + 104))(v98, v75, v100);
  swift_unknownObjectRetain();
  v79 = v70;
  v80 = v94;
  v81 = v95;
  sub_1D7D3088C();
  (*(v76 + 8))(v77, v78);
  (*(v96 + 32))(&v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_isPrimaryStream], v80, v97);
  (*(v101 + 32))(&v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_isPrimaryContinuation], v81, v102);
  v83 = v111;
  v82 = v112;
  v84 = v75;
  v85 = v114;
  (*(v112 + 104))(v111, v84, v114);
  v86 = v103;
  v87 = v109;
  sub_1D7D3088C();
  (*(v82 + 8))(v83, v85);
  (*(v107 + 32))(&v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeViewSessionIDStream], v86, v110);
  (*(v113 + 32))(&v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeViewSessionIDContinuation], v87, v115);
  v88 = v116;
  sub_1D799CC84(v116, &v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_featureAvailability]);
  *&v45[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_appConfigManager] = v117;
  v118.receiver = v45;
  v118.super_class = v93;
  v89 = objc_msgSendSuper2(&v118, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v88);
  (*(v73 + 8))(v74, v72);
  __swift_destroy_boxed_opaque_existential_1(v120);
  v90 = *&v89[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventHandler];
  *(v90 + 24) = sub_1D7C3517C();
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v121);
  return v89;
}

void sub_1D7C350C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7C35114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D7C3517C()
{
  result = qword_1EC9E7230;
  if (!qword_1EC9E7230)
  {
    type metadata accessor for RecipeViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7230);
  }

  return result;
}

void sub_1D7C351D4(uint64_t a1)
{
  if (!qword_1EC9E7238)
  {
    sub_1D7C3523C(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1D7D314EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E7238);
    }
  }
}

void sub_1D7C3523C(uint64_t a1)
{
  if (!qword_1EC9E7240)
  {
    sub_1D7992EFC(255, &qword_1EE0BECC0, 0x1E69B5578);
    v1 = sub_1D7D302AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E7240);
    }
  }
}

uint64_t RecipeModule.createViewController(with:)(uint64_t a1)
{
  v2 = RecipeRouteModel.identifier.getter();
  sub_1D7C3531C(a1, v2, v3, 0);
  v5 = v4;

  return v5;
}

void sub_1D7C3531C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a2;
  v40 = a3;
  v8 = type metadata accessor for RecipeRouteModel(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v42 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecipeRouteContext(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  RecipeRouteModel.context.getter(v14);
  v16 = *v14;
  v17 = *(v14 + 1);
  v19 = *(v14 + 2);
  v18 = *(v14 + 3);
  v20 = v14[32];
  sub_1D7A822E4(*v14, v17, v19, v18, v14[32]);
  sub_1D7A08A8C(v14);
  if (v20)
  {
    v21 = 0;
    if (v20 != 1)
    {
      goto LABEL_5;
    }

    sub_1D7A82348(v16, v17, v19, v18, 1);
  }

  v21 = v17;
LABEL_5:
  v38[1] = v21;
  if (a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = sub_1D7D28A1C();
  }

  v23 = v5[11];
  v24 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v23);

  v25 = RecipeRouteModel.identifier.getter();
  (*(v24 + 8))(v22, v25, v26, v23, v24);

  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  type metadata accessor for RecipeViewController(0);
  v27 = v15;
  v28 = v42;
  sub_1D7BEF150(v27, v42);
  v29 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v22;
  sub_1D7C34458(v28, v30 + v29);

  v31 = sub_1D7D28CFC();

  if (v31)
  {

    v32 = (v31 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_pageIdentifier);
    v33 = v40;
    *v32 = v39;
    v32[1] = v33;

    v34 = RecipeRouteModel.identifier.getter();
    v36 = v35;

    v37 = (v31 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_recipeIdentifier);
    *v37 = v34;
    v37[1] = v36;

    sub_1D7C35B70();
  }

  else
  {
    __break(1u);
  }
}

void RecipeModule.createViewController(with:)(uint64_t *a1)
{
  v2 = type metadata accessor for RecipeModuleContext(0);
  v3 = *(a1 + *(v2 + 24));
  v4 = *a1;
  v5 = a1[1];
  v6 = a1 + *(v2 + 20);

  sub_1D7C3531C(v6, v4, v5, v3);
}

uint64_t type metadata accessor for RecipeModuleContext(uint64_t a1)
{
  result = qword_1EC9E7268;
  if (!qword_1EC9E7268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7C356E8(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeRouteModel(0);
  return sub_1D7D28BFC();
}

void *RecipeModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v0;
}

uint64_t RecipeModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C35800(uint64_t a1)
{
  v2 = RecipeRouteModel.identifier.getter();
  sub_1D7C3531C(a1, v2, v3, 0);
  v5 = v4;

  return v5;
}

uint64_t dispatch thunk of RecipeModuleType.createViewController(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

void sub_1D7C35910(uint64_t a1)
{
  type metadata accessor for RecipeRouteModel(319);
  if (v1 <= 0x3F)
  {
    sub_1D7C35A10(319, &qword_1EC9E7278, MEMORY[0x1E698AAC8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D7C35A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7C35A74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
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

uint64_t sub_1D7C35AFC(void *a1)
{
  v3 = *(type metadata accessor for RecipeRouteModel(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D7C356E8(a1, v4, v5);
}

unint64_t sub_1D7C35B70()
{
  result = qword_1EC9E7170;
  if (!qword_1EC9E7170)
  {
    type metadata accessor for RecipeViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7170);
  }

  return result;
}

uint64_t RecipeCoordinatorContext.init(recipe:identifier:paywall:routeContext:session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for RecipeCoordinatorContext(0);
  v15 = v14[8];
  v16 = type metadata accessor for RecipeSession(0);
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v17 = v14[6];
  v18 = sub_1D7D29A8C();
  (*(*(v18 - 8) + 32))(&a7[v17], a4, v18);
  sub_1D7ABB264(a5, &a7[v14[7]]);

  return sub_1D7C35D50(a6, &a7[v15]);
}

uint64_t type metadata accessor for RecipeCoordinatorContext(uint64_t a1)
{
  result = qword_1EE0BD150;
  if (!qword_1EE0BD150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7C35D50(uint64_t a1, uint64_t a2)
{
  sub_1D7C35DB4(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7C35DB4(uint64_t a1)
{
  if (!qword_1EE0BDC60)
  {
    type metadata accessor for RecipeSession(255);
    v1 = sub_1D7D3130C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BDC60);
    }
  }
}

uint64_t RecipeCoordinatorContext.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RecipeCoordinatorContext.paywall.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeCoordinatorContext(0) + 24);
  v4 = sub_1D7D29A8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D7C35F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t RecipeCoordinatorContext.session.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RecipeCoordinatorContext(0) + 32);

  return sub_1D7C35D50(a1, v3);
}

void sub_1D7C36074(uint64_t a1)
{
  sub_1D79A9404();
  if (v1 <= 0x3F)
  {
    sub_1D7D29A8C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for RecipeRouteContext(319);
      if (v3 <= 0x3F)
      {
        sub_1D7C35DB4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t RecipeViewerBlueprintProvider.__allocating_init(blueprint:)(uint64_t a1)
{
  v1 = swift_allocObject();
  sub_1D7AD9528();
  swift_allocObject();
  *(v1 + 16) = sub_1D7D28ECC();
  return v1;
}

double sub_1D7C361B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double sub_1D7C36214()
{
  swift_beginAccess();

  return result;
}

double sub_1D7C3624C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t RecipeViewerBlueprintProvider.init(blueprint:)(uint64_t a1)
{
  sub_1D7AD9528();
  swift_allocObject();
  *(v1 + 16) = sub_1D7D28ECC();
  return v1;
}

uint64_t RecipeViewerBlueprintProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1D7C363A4()
{
  swift_beginAccess();

  return result;
}

void sub_1D7C364B8(char *a1)
{
  sub_1D7C35DB4(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecipeCoordinatorContext(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 88))
  {
    v24 = *(v1 + 96);
    ObjectType = swift_getObjectType();
    v12 = *(a1 + 1);
    v11 = *(a1 + 2);
    v23 = *a1;
    v13 = *(type metadata accessor for RecipeViewModel(0) + 28);
    v14 = v7[6];
    v15 = sub_1D7D29A8C();
    (*(*(v15 - 8) + 16))(&v10[v14], &a1[v13], v15);
    v16 = v7[7];
    v17 = v11;

    RecipeRouteModel.context.getter(&v10[v16]);
    v18 = type metadata accessor for RecipeSession(0);
    v19 = *(*(v18 - 8) + 56);
    v19(v6, 1, 1, v18);
    v20 = v7[8];
    v19(&v10[v20], 1, 1, v18);
    v21 = v23;
    *v10 = v17;
    *(v10 + 1) = v21;
    *(v10 + 2) = v12;
    sub_1D7C35D50(v6, &v10[v20]);
    (*(v24 + 8))(v10, ObjectType);
    sub_1D7C366F8(v10);
  }
}

uint64_t sub_1D7C366F8(uint64_t a1)
{
  v2 = type metadata accessor for RecipeCoordinatorContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7C36790(uint64_t a1)
{
  v2 = sub_1D7C36990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C367CC(uint64_t a1)
{
  v2 = sub_1D7C36990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RelatedArticlesEndOfRecipeFeedGroup.encode(to:)(void *a1)
{
  sub_1D7C36C90(0, &qword_1EC9E7280, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C36990();
  sub_1D7D31B1C();
  sub_1D7D2DE2C();
  sub_1D7C371BC(&qword_1EC9E3578, MEMORY[0x1E69B5888], MEMORY[0x1E69B5890]);
  sub_1D7D318BC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D7C36990()
{
  result = qword_1EC9E7288;
  if (!qword_1EC9E7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7288);
  }

  return result;
}

uint64_t RelatedArticlesEndOfRecipeFeedGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1D7D2DE2C();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C36C90(0, &qword_1EC9E7290, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C36990();
  sub_1D7D31AFC();
  if (!v2)
  {
    v16 = v21;
    v17 = v22;
    sub_1D7C371BC(&qword_1EC9E3588, MEMORY[0x1E69B5888], MEMORY[0x1E69B5898]);
    sub_1D7D317DC();
    (*(v16 + 8))(v11, v8);
    (*(v17 + 32))(v15, v23, v4);
    sub_1D7C36CF4(v15, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7C36C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7C36990();
    v7 = a3(a1, &type metadata for RelatedArticlesEndOfRecipeFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7C36CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C36D78(void *a1)
{
  sub_1D7C36C90(0, &qword_1EC9E7280, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C36990();
  sub_1D7D31B1C();
  sub_1D7D2DE2C();
  sub_1D7C371BC(&qword_1EC9E3578, MEMORY[0x1E69B5888], MEMORY[0x1E69B5890]);
  sub_1D7D318BC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D7C36F04(uint64_t a1)
{
  v2 = sub_1D7C371BC(&unk_1EC9E72C0, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup, &protocol conformance descriptor for RelatedArticlesEndOfRecipeFeedGroup);

  return MEMORY[0x1EEE21E00](a1, v2);
}

unint64_t sub_1D7C370B8()
{
  result = qword_1EC9E72A8;
  if (!qword_1EC9E72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E72A8);
  }

  return result;
}

unint64_t sub_1D7C37110()
{
  result = qword_1EC9E72B0;
  if (!qword_1EC9E72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E72B0);
  }

  return result;
}

unint64_t sub_1D7C37168()
{
  result = qword_1EC9E72B8;
  if (!qword_1EC9E72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E72B8);
  }

  return result;
}

uint64_t sub_1D7C371BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7C37218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupEmitter(uint64_t a1)
{
  result = qword_1EC9E72D0;
  if (!qword_1EC9E72D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7C372C0(uint64_t a1)
{
  sub_1D79913BC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_1D7A8A0A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D7C37364(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_1D7D2F31C();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[7] = v6;
  v7 = swift_task_alloc();
  v3[8] = v7;
  *v7 = v3;
  v7[1] = sub_1D7C37470;

  return sub_1D7C37EC4(v6, a2);
}

uint64_t sub_1D7C37470()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D7A8A518, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_1D7C375E4;
    v4 = v2[7];
    v5 = v2[3];

    return sub_1D7C38ACC(v5, v4);
  }
}

uint64_t sub_1D7C375E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1D7C377D4;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1D7C3770C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D7C3770C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1D7C39260(v0[12], v0[2]);

  (*(v2 + 8))(v1, v3);
  sub_1D7A8C830(0);
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D7C377D4()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D7C37850@<X0>(uint64_t a1@<X8>)
{
  sub_1D79913BC(0);
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for EndOfRecipeFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7C378D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs(0);
  a2[4] = sub_1D7C37218(&qword_1EC9E7318, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs, &unk_1D7D5932C);
  a2[5] = sub_1D7C37218(&qword_1EC9E7320, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs, &unk_1D7D59304);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_1D7C39710(v2 + v4, boxed_opaque_existential_1);
}

uint64_t sub_1D7C37990(uint64_t a1)
{
  type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupEmitter(0);
  sub_1D7995698(0);
  v1 = sub_1D7D2E32C();
  sub_1D7C39564(0, qword_1EC9E1AE0, sub_1D79E7118, MEMORY[0x1E69E6F90]);
  sub_1D79E7118(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D3B4D0;
  sub_1D7A8CAE8(0);
  swift_allocObject();
  *(v6 + v5) = sub_1D7D2E92C();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x1E69B5AA0], v3);
  sub_1D79E2DC8(v6);
  return v1;
}

uint64_t sub_1D7C37B40()
{
  sub_1D79913BC(0);

  return sub_1D7D2DEFC();
}

uint64_t sub_1D7C37B6C@<X0>(uint64_t *a2@<X8>)
{
  sub_1D7C39564(0, &qword_1EE0BE860, sub_1D7A19AB4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_1D79913BC(0);

  v4 = sub_1D7D2DEFC();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_1D7A50C38(inited);
  swift_setDeallocating();
  sub_1D7A8C990(inited + 32, sub_1D7A19AB4);
  sub_1D7C39774(0);
  a2[3] = v6;
  a2[4] = sub_1D7C37218(&unk_1EC9E7330, sub_1D7C39774, MEMORY[0x1E69D65D8]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1D7D28FEC();
}

uint64_t sub_1D7C37CF0(uint64_t a1)
{
  v2 = sub_1D7C37218(&unk_1EC9E72F8, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupEmitter, &unk_1D7D59174);

  return MEMORY[0x1EEE44678](a1, v2);
}

uint64_t sub_1D7C37EC4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_1D7A8C95C(0);
  v3[8] = swift_task_alloc();
  v4 = sub_1D7D2FC7C();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_1D7D2EC6C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for EndOfRecipeFeedServiceConfig(0);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7C3803C, 0, 0);
}

uint64_t sub_1D7C3803C()
{
  sub_1D7D2E62C();
  v0[16] = v0[2];
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1D7C38158;

  return sub_1D79FF85C();
}

uint64_t sub_1D7C38158(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1D7AB8600;
  }

  else
  {
    v4 = sub_1D7C3826C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7C3826C()
{
  v55 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[7];

  sub_1D7D2E5FC();
  v51 = *v2;
  sub_1D7A8C990(v2, type metadata accessor for EndOfRecipeFeedServiceConfig);
  v7 = v6 + *(type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupEmitter(0) + 20);
  v8 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs(0);
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  v9 = *(v4 + 8);
  v9(v3, v5);
  v10 = v0[3];
  v11 = v1 >> 62;
  v52 = v0;
  if (v1 >> 62)
  {
    v12 = sub_1D7D3167C();
    if (v12 < v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 < v10)
    {
LABEL_3:

      v13 = sub_1D7D2E4EC();
      sub_1D7C37218(&qword_1EE0BF940, MEMORY[0x1E69B5AE8], MEMORY[0x1E69B5AF0]);
      swift_allocError();
      *v14 = v10;
      v14[1] = v12;
      (*(*(v13 - 8) + 104))(v14, *MEMORY[0x1E69B5AE0], v13);
      swift_willThrow();

      v15 = v0[1];
      goto LABEL_58;
    }
  }

  v16 = v0[14];
  v17 = v0[12];
  v18 = *(v7 + *(v8 + 24));
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  v9(v16, v17);
  v19 = v0[4];
  if (v19 < 0)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v11)
  {
    if (v1 < 0)
    {
      v22 = v52[18];
    }

    else
    {
      v22 = (v1 & 0xFFFFFFFFFFFFFF8);
    }

    v18 = sub_1D7D3167C();
    if (sub_1D7D3167C() < 0)
    {
      goto LABEL_65;
    }

    if (v18 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v18;
    }

    if (v18 < 0)
    {
      v23 = v19;
    }

    if (v19)
    {
      v18 = v23;
    }

    else
    {
      v18 = 0;
    }

    v20 = sub_1D7D3167C();
  }

  else
  {
    v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 >= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v19)
    {
      v18 = v21;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v20 < v18)
  {
    goto LABEL_62;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {

    if (v18)
    {
      sub_1D799621C();
      v24 = 0;
      do
      {
        v25 = v24 + 1;
        sub_1D7D3147C();
        v24 = v25;
      }

      while (v18 != v25);
    }

    if (!v11)
    {
LABEL_32:
      v16 = 0;
      v22 = (v1 & 0xFFFFFFFFFFFFFF8);
      v17 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
      v18 = (2 * v18) | 1;
      if ((v18 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }
  }

  else
  {

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  v22 = sub_1D7D3168C();
  v17 = v26;
  v16 = v27;
  v18 = v28;

  if ((v18 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  sub_1D7D319DC();
  swift_unknownObjectRetain_n();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {
    swift_unknownObjectRelease();
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = *(v31 + 16);

  if (__OFSUB__(v18 >> 1, v16))
  {
    goto LABEL_66;
  }

  if (v32 != (v18 >> 1) - v16)
  {
    goto LABEL_67;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (i)
  {
    goto LABEL_44;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v29)
  {
    swift_unknownObjectRelease();
LABEL_44:
    v33 = sub_1D7C395C8(i);

    sub_1D79EB1FC();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7D3C670;
    *(v18 + 32) = [v51 sourceChannel];
    sub_1D7C39564(0, &qword_1EE0BE8A0, MEMORY[0x1E69B66E0], MEMORY[0x1E69E6F90]);
    sub_1D7D2FD3C();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7D3B4D0;
    v50 = v33;
    if (v33 >> 62)
    {
LABEL_63:
      v34 = sub_1D7D3167C();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = MEMORY[0x1E69E7CC0];
    if (!v34)
    {
      v36 = v52;
      goto LABEL_57;
    }

    v54 = MEMORY[0x1E69E7CC0];
    v22 = &v54;
    sub_1D7A5BFDC(0, v34 & ~(v34 >> 63), 0);
    if ((v34 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_unknownObjectRelease_n();
LABEL_36:
    sub_1D7B1010C(v22, v17, v16, v18);
  }

  v35 = 0;
  v36 = v52;
  v37 = v52[10];
  v38 = v54;
  v53 = *MEMORY[0x1E69B6698];
  do
  {
    if ((v50 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1DA70EF00](v35);
    }

    else
    {
      v39 = swift_unknownObjectRetain();
    }

    v40 = v36[11];
    v41 = v36[9];
    *v40 = v39;
    (*(v37 + 104))(v40, v53, v41);
    v54 = v38;
    v43 = *(v38 + 16);
    v42 = *(v38 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_1D7A5BFDC((v42 > 1), v43 + 1, 1);
      v36 = v52;
      v38 = v54;
    }

    v44 = v36[11];
    v45 = v36[9];
    ++v35;
    *(v38 + 16) = v43 + 1;
    (*(v37 + 32))(v38 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v43, v44, v45);
  }

  while (v34 != v35);
  v16 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v46 = v36;
  v47 = v36[8];
  sub_1D7A1912C(v16);
  sub_1D7A19144(v16);
  sub_1D7A1915C(v16);
  sub_1D7D2FD2C();
  v48 = sub_1D7D2CE6C();
  (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
  sub_1D7A191A4(v16);
  sub_1D7A191A4(v16);
  sub_1D7A191BC(v16);
  sub_1D7A191D4(v16);
  sub_1D7A192E8(v16);
  sub_1D7A19300(v16);
  sub_1D7A19414(v16);
  sub_1D7D2F30C();

  v15 = v46[1];
LABEL_58:

  return v15();
}

uint64_t sub_1D7C38ACC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D7C39564(0, &unk_1EE0BF640, MEMORY[0x1E69B6380], MEMORY[0x1E69E6720]);
  v3[5] = swift_task_alloc();
  sub_1D7C39564(0, &qword_1EE0BF5C0, MEMORY[0x1E69B6570], v4);
  v3[6] = swift_task_alloc();
  sub_1D7C39564(0, &qword_1EC9E34E0, sub_1D7995698, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_1D7D2F6AC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_1D7A8C928(0);
  v3[11] = swift_task_alloc();
  sub_1D7A8C95C(0);
  v3[12] = swift_task_alloc();
  type metadata accessor for EndOfRecipeFeedServiceConfig(0);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupConfigData(0);
  v3[15] = swift_task_alloc();
  v6 = sub_1D7D2F06C();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7C38D98, 0, 0);
}

uint64_t sub_1D7C38D98()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v29 = *(v0 + 128);
  v30 = *(v0 + 56);
  v31 = *(v0 + 48);
  v7 = *(v0 + 32);
  v32 = *(v0 + 40);
  v28 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupEmitter(0);
  v8 = (v7 + *(v28 + 24));
  v33 = v8[4];
  v34 = v8[3];
  __swift_project_boxed_opaque_existential_1(v8, v34);
  sub_1D79913BC(0);
  sub_1D7D2DF2C();
  v9 = *(v3 + 20);
  sub_1D7D2E5FC();
  v10 = *v4;
  sub_1D7A8C990(v4, type metadata accessor for EndOfRecipeFeedServiceConfig);
  v11 = [v10 sourceChannel];

  v12 = [v11 identifier];
  swift_unknownObjectRelease();
  sub_1D7D3034C();

  v13 = sub_1D7D2CE6C();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  sub_1D7A78030(0);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_1D7D2F01C();

  sub_1D7A8C990(v6, sub_1D7A8C928);
  sub_1D7A8C990(v5, sub_1D7A8C95C);
  v15 = *(v1 + 8);
  *(v0 + 152) = v15;
  *(v0 + 160) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v2 + v9, v29);
  v16 = *(v28 + 20);
  sub_1D7995698(0);
  v18 = v17;
  v19 = *(v17 - 8);
  (*(v19 + 16))(v30, v7 + v16, v17);
  (*(v19 + 56))(v30, 0, 1, v18);
  v20 = sub_1D7D2FAFC();
  (*(*(v20 - 8) + 56))(v31, 1, 1, v20);
  *(v0 + 184) = 1;
  sub_1D7A8C9F0(0);
  swift_allocObject();

  sub_1D7D2FB8C();
  v21 = sub_1D7D2F59C();
  (*(*(v21 - 8) + 56))(v32, 1, 1, v21);
  v22 = qword_1EC9DFD38;
  *MEMORY[0x1E69B5088];
  if (v22 != -1)
  {
    swift_once();
  }

  qword_1EC9E3328;
  sub_1D7D2F69C();
  v23 = swift_task_alloc();
  *(v0 + 168) = v23;
  *v23 = v0;
  v23[1] = sub_1D7A8C1E8;
  v24 = *(v0 + 144);
  v25 = *(v0 + 80);
  v26 = *(v0 + 24);

  return MEMORY[0x1EEE22148](v24, v26, v25, v34, v33);
}

uint64_t sub_1D7C39260@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v16 = a1;
  v19 = a3;
  sub_1D7C39564(0, &qword_1EE0BF9B0, MEMORY[0x1E69B59D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v17 = &v16 - v5;
  v6 = sub_1D7D2E73C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v18 = sub_1D7D2DE2C();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79913BC(0);

  sub_1D7D2DF1C();
  sub_1D7D2DF1C();
  type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupEmitter(0);
  sub_1D7995698(0);
  sub_1D7D2E35C();
  sub_1D7D2E34C();
  sub_1D7D2E36C();
  v14 = sub_1D7D2E1CC();
  (*(*(v14 - 8) + 56))(v17, 1, 1, v14);
  sub_1D7D2DDCC();
  (*(v10 + 32))(v19, v13, v18);
  type metadata accessor for EndOfRecipeFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1D7C39564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7C395C8(unint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_16:
    v2 = sub_1D7D3167C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1DA70EF00](i, a1);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_13:
            __break(1u);
            return v7;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v4 = *(a1 + 8 * i + 32);
          swift_unknownObjectRetain();
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_13;
          }
        }

        if ([v4 isHiddenFromFeeds])
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1D7D3153C();
          sub_1D7D3157C();
          sub_1D7D3158C();
          sub_1D7D3154C();
        }

        if (v5 == v2)
        {
          return v7;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D7C39710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C397D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_1D7995698(0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A8D62C(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v55 = &v44 - v15;
  sub_1D7C3A12C(0, &qword_1EC9E7340, MEMORY[0x1E69E6F48]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C3A074();
  v22 = v57;
  sub_1D7D31AFC();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = 0;
  v48 = v18;
  v49 = a1;
  v57 = v9;
  LOBYTE(v60) = 0;
  sub_1D7995380(&qword_1EC9E3530, sub_1D7995698, MEMORY[0x1E69B5A58]);
  v24 = v55;
  v25 = v52;
  sub_1D7D3173C();
  sub_1D7994BB0();
  LOBYTE(v59) = 1;
  sub_1D7995380(&qword_1EE0BF8C8, sub_1D7994BB0, MEMORY[0x1E69B5B90]);
  sub_1D7D3173C();
  v45 = v60;
  LOBYTE(v58) = 2;
  v26 = v17;
  v50 = v21;
  sub_1D7D3173C();
  v46 = v59;
  v27 = v24;
  v28 = v56;
  sub_1D7A8D6D8(v27, v56);
  v29 = v51;
  v30 = *(v51 + 48);
  v31 = v30(v28, 1, v25);
  v32 = v25;
  if (v31 == 1)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig(0);
    sub_1D7995380(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig, &unk_1D7D5E9C0);
    v33 = v53;
    sub_1D7D2E33C();
    v34 = v30(v56, 1, v25);
    v35 = v33;
    v36 = v48;
    v37 = v49;
    if (v34 != 1)
    {
      sub_1D7A8D73C(v56);
    }
  }

  else
  {
    v35 = v53;
    (*(v29 + 32))(v53, v56, v25);
    v36 = v48;
    v37 = v49;
  }

  v38 = v57;
  (*(v29 + 32))(v57, v35, v32);
  v39 = v45;
  if (!v45)
  {
    v58 = 1;
    swift_allocObject();
    v39 = sub_1D7D2E71C();
  }

  v40 = v50;
  *(v38 + *(v6 + 20)) = v39;
  v41 = v54;
  v42 = v46;
  if (v46)
  {
    sub_1D7A8D73C(v55);
    (*(v36 + 8))(v40, v26);
  }

  else
  {
    v58 = 10;
    v43 = v55;
    swift_allocObject();
    v42 = sub_1D7D2E71C();
    sub_1D7A8D73C(v43);
    (*(v36 + 8))(v50, v26);
  }

  *(v38 + *(v6 + 24)) = v42;
  sub_1D7C3A0C8(v38, v41);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D7C39D68(void *a1, double a2)
{
  v4 = v2;
  sub_1D7C3A12C(0, &qword_1EC9E7350, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C3A074();
  sub_1D7D31B1C();
  LOBYTE(v16) = 0;
  sub_1D7995698(0);
  sub_1D7995380(&qword_1EC9E3540, sub_1D7995698, MEMORY[0x1E69B5A50]);
  sub_1D7D318BC();
  if (!v3)
  {
    v12 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs(0);
    v16 = *(v4 + *(v12 + 20));
    v15 = 1;
    sub_1D7994BB0();
    sub_1D7995380(&qword_1EC9E3548, sub_1D7994BB0, MEMORY[0x1E69B5B88]);
    sub_1D7D318BC();
    v16 = *(v4 + *(v12 + 24));
    v15 = 2;
    sub_1D7D318BC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D7C39FCC(uint64_t a1)
{
  v2 = sub_1D7C3A074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C3A008(uint64_t a1)
{
  v2 = sub_1D7C3A074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7C3A074()
{
  result = qword_1EC9E7348;
  if (!qword_1EC9E7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7348);
  }

  return result;
}

uint64_t sub_1D7C3A0C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7C3A12C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7C3A074();
    v7 = a3(a1, &type metadata for RelatedArticlesEndOfRecipeFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7C3A1A4()
{
  result = qword_1EC9E7358;
  if (!qword_1EC9E7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7358);
  }

  return result;
}

unint64_t sub_1D7C3A1FC()
{
  result = qword_1EC9E7360;
  if (!qword_1EC9E7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7360);
  }

  return result;
}

unint64_t sub_1D7C3A254()
{
  result = qword_1EC9E7368;
  if (!qword_1EC9E7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7368);
  }

  return result;
}

uint64_t sub_1D7C3A2D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = a2;
  v4 = sub_1D7D2F06C();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v19 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3A800(0, &qword_1EC9E7370, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C3A7AC();
  sub_1D7D31AFC();
  if (!v2)
  {
    v13 = v18;
    v20 = 1;
    sub_1D79EB9CC(&qword_1EE0BF738, MEMORY[0x1E69B6128]);
    sub_1D7D317DC();
    (*(v9 + 8))(v12, v8);
    *v13 = 1;
    v14 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupConfigData(0);
    (*(v17 + 32))(&v13[*(v14 + 20)], v19, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7C3A538(void *a1, double a2)
{
  v4 = v2;
  sub_1D7C3A800(0, &qword_1EC9E7380, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C3A7AC();
  sub_1D7D31B1C();
  v13[15] = *v4;
  v13[14] = 0;
  sub_1D7A8ECDC();
  sub_1D7D318BC();
  if (!v3)
  {
    type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupConfigData(0);
    v13[13] = 1;
    sub_1D7D2F06C();
    sub_1D79EB9CC(&qword_1EC9E1BE8, MEMORY[0x1E69B6120]);
    sub_1D7D318BC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D7C3A704(uint64_t a1)
{
  v2 = sub_1D7C3A7AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C3A740(uint64_t a1)
{
  v2 = sub_1D7C3A7AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7C3A7AC()
{
  result = qword_1EC9E7378;
  if (!qword_1EC9E7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7378);
  }

  return result;
}

void sub_1D7C3A800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7C3A7AC();
    v7 = a3(a1, &type metadata for RelatedArticlesEndOfRecipeFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7C3A878()
{
  result = qword_1EC9E7388;
  if (!qword_1EC9E7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7388);
  }

  return result;
}

unint64_t sub_1D7C3A8D0()
{
  result = qword_1EC9E7390;
  if (!qword_1EC9E7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7390);
  }

  return result;
}

unint64_t sub_1D7C3A928()
{
  result = qword_1EC9E7398;
  if (!qword_1EC9E7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7398);
  }

  return result;
}

double sub_1D7C3AA08(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v13 = v11;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NewsArticles22AnalyticsEventReporter_transformerManager), *(v1 + OBJC_IVAR____TtC12NewsArticles22AnalyticsEventReporter_transformerManager + 24));
    swift_unknownObjectRetain();
    v14 = [v13 event];
    sub_1D7B0B954(v14);

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D7C3AE84(v10, v6);
    v16 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_1D7C3AEE8(v6, v17 + v16);

    sub_1D79E75B0(sub_1D7C3AF4C, v17);
    swift_unknownObjectRelease();

    sub_1D7C3AFB0(v10);
  }

  return result;
}

void *sub_1D7C3AD5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1D7A74FC0(result + OBJC_IVAR____TtC12NewsArticles22AnalyticsEventReporter_articleCoordinator, v7);

    v5 = v8;
    if (v8)
    {
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 80))(a2, v5, v6);
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {
      return sub_1D7A35108(v7);
    }
  }

  return result;
}

uint64_t sub_1D7C3AE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C3AEE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1D7C3AF4C()
{
  v1 = *(type metadata accessor for AnalyticsEvent(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D7C3AD5C(v2, v3);
}

uint64_t sub_1D7C3AFB0(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7C3B02C(uint64_t a1)
{
  sub_1D79991E4(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v24 - v5;
  v7 = sub_1D7D2824C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v1 + 32) appConfiguration];
  if (qword_1EE0CB6F0 != -1)
  {
    swift_once();
  }

  if ((sub_1D7D2860C() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    v17 = off_1F52A6F58[0];
    v18 = type metadata accessor for EndOfArticleFeedConfigManager();
    v17(a1, v18);
LABEL_10:
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = v13;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v22 = sub_1D7D2934C();
    type metadata accessor for EndOfArticleFeedServiceConfig(0);
    v16 = sub_1D7D293AC();

    swift_unknownObjectRelease();

    return v16;
  }

  if (qword_1EC9DFE98 != -1)
  {
    swift_once();
  }

  sub_1D798EEB4(&qword_1EC9E73B8, v14, type metadata accessor for EndOfArticleFeedServiceConfigFetcher, &unk_1D7D596E0);
  sub_1D7D285AC();
  sub_1D7D2823C();

  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v12, v6, v7);
    __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    v19 = off_1F52A6F60[0];
    v20 = type metadata accessor for EndOfArticleFeedConfigManager();
    v19(v12, v20);
    (*(v8 + 8))(v12, v7);
    goto LABEL_10;
  }

  sub_1D79A8AB4(v6);
  sub_1D7C3B76C();
  swift_allocError();
  *v15 = 0;
  sub_1D79991E4(0, &qword_1EC9E73C8, type metadata accessor for EndOfArticleFeedServiceConfig, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v16 = sub_1D7D293FC();
  swift_unknownObjectRelease();
  return v16;
}

double sub_1D7C3B48C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1D7D2E3FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EndOfArticleFeedContentConfig(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3B7C0(a1, v16);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B5A80], v8);
  *a4 = a2;
  v17 = type metadata accessor for EndOfArticleFeedServiceConfig(0);
  sub_1D7C3B7C0(v16, &a4[v17[5]]);
  *&a4[v17[6]] = a3;
  (*(v9 + 16))(&a4[v17[7]], v12, v8);
  swift_unknownObjectRetain();
  v18 = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  (*(v9 + 8))(v12, v8);
  sub_1D7AAA584(v16);
  result = v18;
  *&a4[v17[8]] = v18;
  return result;
}

uint64_t sub_1D7C3B66C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_1D7C3B76C()
{
  result = qword_1EC9E73C0;
  if (!qword_1EC9E73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E73C0);
  }

  return result;
}

uint64_t sub_1D7C3B7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedContentConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7C3B838()
{
  result = qword_1EC9E73D0[0];
  if (!qword_1EC9E73D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9E73D0);
  }

  return result;
}

uint64_t ArticleViewerPage.article.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7C3E8B8(v2, v7, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v22 = *(v7 + 3);
      v32 = *(v7 + 2);
      v33 = v22;
      v23 = *(v7 + 5);
      v34 = *(v7 + 4);
      *v35 = v23;
      v24 = *(v7 + 1);
      v30 = *v7;
      v31 = v24;
      sub_1D79F5B54(&v30, v29);
      result = sub_1D7A1EF80(&v30);
LABEL_10:
      v28 = v31;
      *a1 = v30;
      a1[1] = v28;
      v20 = v32;
      v21 = v33;
      goto LABEL_11;
    }

LABEL_9:
    sub_1D7C3C044(v7, v11, type metadata accessor for ArticleViewerArticlePage);
    v26 = v11[1];
    v30 = *v11;
    v31 = v26;
    v27 = v11[3];
    v32 = v11[2];
    v33 = v27;
    sub_1D79F5B54(&v30, v29);
    result = sub_1D7C3BAE4(v11, type metadata accessor for ArticleViewerArticlePage);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    return sub_1D7C3BAE4(v7, type metadata accessor for ArticleViewerPage);
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D799A6BC(0);
    sub_1D79DA510(*&v7[*(v25 + 48)], *&v7[*(v25 + 48) + 8], *&v7[*(v25 + 48) + 16], *&v7[*(v25 + 48) + 24]);
    goto LABEL_9;
  }

  v13 = *(v7 + 9);
  *&v35[48] = *(v7 + 8);
  *&v35[64] = v13;
  v36 = *(v7 + 20);
  v14 = *(v7 + 5);
  v34 = *(v7 + 4);
  *v35 = v14;
  v15 = *(v7 + 7);
  *&v35[16] = *(v7 + 6);
  *&v35[32] = v15;
  v16 = *(v7 + 1);
  v30 = *v7;
  v31 = v16;
  v17 = *(v7 + 3);
  v32 = *(v7 + 2);
  v33 = v17;
  sub_1D79F5B54(&v35[8], v29);
  result = sub_1D79F949C(&v30);
  v19 = *&v35[24];
  *a1 = *&v35[8];
  a1[1] = v19;
  v20 = *&v35[40];
  v21 = *&v35[56];
LABEL_11:
  a1[2] = v20;
  a1[3] = v21;
  return result;
}

uint64_t sub_1D7C3BAE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7C3BB44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3E8B8(v2, v7, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_5;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    sub_1D799A6BC(0);
    sub_1D79DA510(*&v7[*(v13 + 48)], *&v7[*(v13 + 48) + 8], *&v7[*(v13 + 48) + 16], *&v7[*(v13 + 48) + 24]);
LABEL_5:
    sub_1D7C3C044(v7, v11, type metadata accessor for ArticleViewerArticlePage);
    v14 = *(v8 + 28);
    v15 = sub_1D7D295CC();
    v16 = *(v15 - 8);
    (*(v16 + 16))(a1, &v11[v14], v15);
    sub_1D7C3BAE4(v11, type metadata accessor for ArticleViewerArticlePage);
    return (*(v16 + 56))(a1, 0, 1, v15);
  }

  sub_1D7C3BAE4(v7, type metadata accessor for ArticleViewerPage);
  v18 = sub_1D7D295CC();
  return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
}

uint64_t ArticleViewerPage.tracker.getter()
{
  v1 = v0;
  v2 = type metadata accessor for InterstitialAdvertisementPage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3E8B8(v1, v9, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = *(v9 + 8);
      v21 = *(v9 + 9);
      v22 = *(v9 + 10);
      v23 = *(v9 + 11);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      sub_1D7A1ECE4(v21, v22, v23);
      return v20;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D7C3C044(v9, v5, type metadata accessor for InterstitialAdvertisementPage);
    v20 = *&v5[*(v2 + 20)];

    v24 = type metadata accessor for InterstitialAdvertisementPage;
    v25 = v5;
LABEL_10:
    sub_1D7C3BAE4(v25, v24);
    return v20;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D799A6BC(0);
    sub_1D79DA510(*&v9[*(v26 + 48)], *&v9[*(v26 + 48) + 8], *&v9[*(v26 + 48) + 16], *&v9[*(v26 + 48) + 24]);
LABEL_9:
    sub_1D7C3C044(v9, v13, type metadata accessor for ArticleViewerArticlePage);
    v20 = *(v13 + 8);

    v24 = type metadata accessor for ArticleViewerArticlePage;
    v25 = v13;
    goto LABEL_10;
  }

  v15 = *(v9 + 9);
  v28[8] = *(v9 + 8);
  v28[9] = v15;
  v29 = *(v9 + 20);
  v16 = *(v9 + 5);
  v28[4] = *(v9 + 4);
  v28[5] = v16;
  v17 = *(v9 + 7);
  v28[6] = *(v9 + 6);
  v28[7] = v17;
  v18 = *(v9 + 1);
  v28[0] = *v9;
  v28[1] = v18;
  v19 = *(v9 + 3);
  v28[2] = *(v9 + 2);
  v28[3] = v19;
  v20 = v29;

  sub_1D79F949C(v28);
  return v20;
}

uint64_t sub_1D7C3C044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ArticleViewerPage.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for InterstitialAdvertisementPage(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7C3E8B8(v1, v9, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v21 = *(v9 + 3);
      v30 = *(v9 + 2);
      v31 = v21;
      v22 = *(v9 + 5);
      v32 = *(v9 + 4);
      v33 = v22;
      v23 = *(v9 + 1);
      v28 = *v9;
      v29 = v23;
      v20 = v28;

      sub_1D7A1EF80(&v28);
      return v20;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D7C3C044(v9, v5, type metadata accessor for InterstitialAdvertisementPage);
    v20 = InterstitialAdModel.identifier.getter();
    v24 = type metadata accessor for InterstitialAdvertisementPage;
    v25 = v5;
LABEL_10:
    sub_1D7C3BAE4(v25, v24);
    return v20;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D799A6BC(0);
    sub_1D79DA510(*&v9[*(v26 + 48)], *&v9[*(v26 + 48) + 8], *&v9[*(v26 + 48) + 16], *&v9[*(v26 + 48) + 24]);
LABEL_9:
    sub_1D7C3C044(v9, v13, type metadata accessor for ArticleViewerArticlePage);
    v20 = *v13;

    v24 = type metadata accessor for ArticleViewerArticlePage;
    v25 = v13;
    goto LABEL_10;
  }

  v15 = *(v9 + 9);
  v36 = *(v9 + 8);
  v37 = v15;
  v38 = *(v9 + 20);
  v16 = *(v9 + 5);
  v32 = *(v9 + 4);
  v33 = v16;
  v17 = *(v9 + 7);
  v34 = *(v9 + 6);
  v35 = v17;
  v18 = *(v9 + 1);
  v28 = *v9;
  v29 = v18;
  v19 = *(v9 + 3);
  v30 = *(v9 + 2);
  v31 = v19;
  v20 = *(&v33 + 1);

  sub_1D79F949C(&v28);
  return v20;
}

uint64_t sub_1D7C3C32C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleViewerArticlePage(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3E8B8(v2, v7, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_5;
    }

LABEL_6:
    sub_1D7C3BAE4(v7, type metadata accessor for ArticleViewerPage);
    v15 = 1;
    return (*(v9 + 56))(a1, v15, 1, v8);
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
    goto LABEL_6;
  }

  sub_1D799A6BC(0);
  sub_1D79DA510(*&v7[*(v14 + 48)], *&v7[*(v14 + 48) + 8], *&v7[*(v14 + 48) + 16], *&v7[*(v14 + 48) + 24]);
LABEL_5:
  sub_1D7C3C044(v7, v12, type metadata accessor for ArticleViewerArticlePage);
  sub_1D7C3C044(v12, a1, type metadata accessor for ArticleViewerArticlePage);
  v15 = 0;
  return (*(v9 + 56))(a1, v15, 1, v8);
}

uint64_t sub_1D7C3C50C()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3E8B8(v1, v5, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D7C3BAE4(v5, type metadata accessor for ArticleViewerPage);
      v11 = 1;
      return v11 & 1;
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 2) < 2)
    {
      sub_1D7C3BAE4(v5, type metadata accessor for ArticleViewerPage);
      v11 = 0;
      return v11 & 1;
    }

    sub_1D799A6BC(0);
    sub_1D79DA510(*&v5[*(v12 + 48)], *&v5[*(v12 + 48) + 8], *&v5[*(v12 + 48) + 16], *&v5[*(v12 + 48) + 24]);
  }

  sub_1D7C3C044(v5, v9, type metadata accessor for ArticleViewerArticlePage);
  v13 = *(v9 + 2);
  if ([v13 respondsToSelector_])
  {
    [v13 role];
    v11 = sub_1D7D30BCC();
  }

  else
  {
    v11 = 1;
  }

  sub_1D7C3BAE4(v9, type metadata accessor for ArticleViewerArticlePage);
  return v11 & 1;
}

uint64_t sub_1D7C3C6EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3E8B8(v2, v7, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D799A6BC(0);
      sub_1D79DA510(*&v7[*(v14 + 48)], *&v7[*(v14 + 48) + 8], *&v7[*(v14 + 48) + 16], *&v7[*(v14 + 48) + 24]);
    }

    sub_1D7C3C044(v7, v11, type metadata accessor for ArticleViewerArticlePage);
    sub_1D7C3E8B8(&v11[*(v8 + 36)], a1, type metadata accessor for ArticleNavigationAction);
    return sub_1D7C3BAE4(v11, type metadata accessor for ArticleViewerArticlePage);
  }

  else
  {
    sub_1D7C3BAE4(v7, type metadata accessor for ArticleViewerPage);
    type metadata accessor for ArticleNavigationAction(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D7C3C8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3E8B8(v3, v13, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D799A6BC(0);
      v33 = v32;
      v34 = &v13[*(v32 + 48)];
      v35 = *v34;
      v56 = *(v34 + 1);
      v57 = v35;
      sub_1D7C3C044(v13, v9, type metadata accessor for ArticleViewerArticlePage);
      v55 = (a2 + *(v33 + 48));
      v36 = *(v9 + 1);
      v59 = *v9;
      v60 = v36;
      v37 = *(v9 + 3);
      v61 = *(v9 + 2);
      v62 = v37;
      v38 = *(v9 + 8);
      sub_1D799CC84((v9 + 72), a2 + 72);
      v39 = v6[7];
      v40 = sub_1D7D295CC();
      (*(*(v40 - 8) + 16))(a2 + v39, &v9[v39], v40);
      v41 = &v9[v6[8]];
      v42 = *v41;
      v43 = *(v41 + 1);
      sub_1D7C3E8B8(a1, a2 + v6[9], type metadata accessor for ArticleNavigationAction);
      v44 = &v9[v6[10]];
      v45 = *v44;
      v46 = v44[1];
      v47 = v44[2];
      sub_1D79F5B54(&v59, v58);

      sub_1D7B08184(v42, v43);
      sub_1D7A1EF2C(v45, v46, v47);
      sub_1D7C3BAE4(v9, type metadata accessor for ArticleViewerArticlePage);
      v48 = v60;
      *a2 = v59;
      *(a2 + 16) = v48;
      v49 = v62;
      *(a2 + 32) = v61;
      *(a2 + 48) = v49;
      *(a2 + 64) = v38;
      v50 = (a2 + v6[8]);
      *v50 = v42;
      v50[1] = v43;
      v51 = (a2 + v6[10]);
      *v51 = v45;
      v51[1] = v46;
      v51[2] = v47;
      v52 = v56;
      v53 = v55;
      *v55 = v57;
      v53[1] = v52;
    }

    else
    {
      sub_1D7C3C044(v13, v9, type metadata accessor for ArticleViewerArticlePage);
      v16 = *(v9 + 1);
      v59 = *v9;
      v60 = v16;
      v17 = *(v9 + 3);
      v61 = *(v9 + 2);
      v62 = v17;
      v18 = *(v9 + 8);
      sub_1D799CC84((v9 + 72), a2 + 72);
      v19 = v6[7];
      v20 = sub_1D7D295CC();
      (*(*(v20 - 8) + 16))(a2 + v19, &v9[v19], v20);
      v21 = &v9[v6[8]];
      v22 = *v21;
      v23 = *(v21 + 1);
      sub_1D7C3E8B8(a1, a2 + v6[9], type metadata accessor for ArticleNavigationAction);
      v24 = &v9[v6[10]];
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      sub_1D79F5B54(&v59, v58);

      sub_1D7B08184(v22, v23);
      sub_1D7A1EF2C(v25, v26, v27);
      sub_1D7C3BAE4(v9, type metadata accessor for ArticleViewerArticlePage);
      v28 = v60;
      *a2 = v59;
      *(a2 + 16) = v28;
      v29 = v62;
      *(a2 + 32) = v61;
      *(a2 + 48) = v29;
      *(a2 + 64) = v18;
      v30 = (a2 + v6[8]);
      *v30 = v22;
      v30[1] = v23;
      v31 = (a2 + v6[10]);
      *v31 = v25;
      v31[1] = v26;
      v31[2] = v27;
    }

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1D7C3BAE4(v13, type metadata accessor for ArticleViewerPage);
    return sub_1D7C3E8B8(v3, a2, type metadata accessor for ArticleViewerPage);
  }
}

uint64_t sub_1D7C3CCDC()
{
  v1 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_1D7D2811C();

  sub_1D7C3E8B8(v0, v4, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for ArticleViewerPage;
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload - 2 < 2)
    {
      sub_1D7C3BAE4(v4, type metadata accessor for ArticleViewerPage);
      return v8;
    }

    sub_1D799A6BC(0);
    sub_1D79DA510(*&v4[*(v11 + 48)], *&v4[*(v11 + 48) + 8], *&v4[*(v11 + 48) + 16], *&v4[*(v11 + 48) + 24]);
    v10 = type metadata accessor for ArticleViewerArticlePage;
  }

  sub_1D7C3BAE4(v4, v10);
  ArticleViewerPage.article.getter(&v58);
  if (*(&v58 + 1))
  {
    v12 = v59;
    swift_unknownObjectRetain();
    sub_1D7AACF1C(&v58);
    if ([v12 respondsToSelector_])
    {
      v13 = [v12 role];
      swift_unknownObjectRelease();
      if (v13 == 4)
      {
        return v8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v14 = sub_1D7C3D338();
  if (v14)
  {
    v15 = v14;
    ArticleViewerPage.article.getter(&v56);
    v16 = *(&v56 + 1);
    if (*(&v56 + 1))
    {
      v17 = v56;
      v18 = [v15 coverArticleID];
      v19 = sub_1D7D3034C();
      v21 = v20;

      if (v19 == v17 && v16 == v21)
      {

        v22 = &selRef_destinationURL;
LABEL_16:
        v24 = [v6 v22[419]];
        sub_1D7D2811C();

        sub_1D79F3AB0(0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1D7D3B4E0;
        v26 = [v15 title];
        v27 = sub_1D7D3034C();
        v29 = v28;

        v30 = MEMORY[0x1E69E6158];
        *(v25 + 56) = MEMORY[0x1E69E6158];
        v31 = sub_1D79D6AE0();
        *(v25 + 64) = v31;
        *(v25 + 32) = v27;
        *(v25 + 40) = v29;
        v32 = [v15 coverDate];
        v33 = sub_1D7D3034C();
        v35 = v34;

        *(v25 + 96) = v30;
        *(v25 + 104) = v31;
        *(v25 + 72) = v33;
        *(v25 + 80) = v35;
        v8 = sub_1D7D3037C();

        sub_1D7AACF1C(&v56);

        return v8;
      }

      v23 = sub_1D7D3197C();

      v22 = &selRef_destinationURL;
      if (v23)
      {
        goto LABEL_16;
      }

      sub_1D7AACF1C(&v56);
    }
  }

  ArticleViewerPage.article.getter(&v56);
  if (*(&v56 + 1))
  {
    v36 = v57;
    swift_unknownObjectRetain();
    sub_1D7AACF1C(&v56);
    v37 = [v36 title];
    swift_unknownObjectRelease();
    if (v37)
    {
      v38 = sub_1D7D3034C();
      v40 = v39;

      ArticleViewerPage.article.getter(&v54);
      if (*(&v54 + 1))
      {
        v41 = v55;
        swift_unknownObjectRetain();
        sub_1D7AACF1C(&v54);
        v42 = [v41 sourceName];
        swift_unknownObjectRelease();
        if (v42)
        {
          v43 = sub_1D7D3034C();
          v45 = v44;

          v46 = [v6 bundleForClass_];
          sub_1D7D2811C();

          sub_1D79F3AB0(0);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1D7D3B4E0;
          v48 = MEMORY[0x1E69E6158];
          *(v47 + 56) = MEMORY[0x1E69E6158];
          v49 = sub_1D79D6AE0();
          *(v47 + 32) = v38;
          *(v47 + 40) = v40;
          *(v47 + 96) = v48;
          *(v47 + 104) = v49;
          *(v47 + 64) = v49;
          *(v47 + 72) = v43;
          *(v47 + 80) = v45;
          v8 = sub_1D7D3037C();

          return v8;
        }
      }
    }
  }

  ArticleViewerPage.article.getter(&v54);
  if (!*(&v54 + 1))
  {
    return 0;
  }

  v50 = v55;
  swift_unknownObjectRetain();
  sub_1D7AACF1C(&v54);
  v51 = [v50 title];
  swift_unknownObjectRelease();
  if (!v51)
  {
    return 0;
  }

  v8 = sub_1D7D3034C();

  return v8;
}

id sub_1D7C3D338()
{
  v1 = v0;
  v2 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3E8B8(v1, v5, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = *(v5 + 9);
      v21[8] = *(v5 + 8);
      v22 = v12;
      v23 = *(v5 + 20);
      v13 = *(v5 + 5);
      v21[4] = *(v5 + 4);
      v21[5] = v13;
      v14 = *(v5 + 7);
      v21[6] = *(v5 + 6);
      v21[7] = v14;
      v15 = *(v5 + 1);
      v21[0] = *v5;
      v21[1] = v15;
      v16 = *(v5 + 3);
      v21[2] = *(v5 + 2);
      v21[3] = v16;
      v11 = *(&v22 + 1);
      sub_1D79F949C(v21);
      return v11;
    }

    sub_1D799A6BC(0);
    sub_1D79DA510(*&v5[*(v17 + 48)], *&v5[*(v17 + 48) + 8], *&v5[*(v17 + 48) + 16], *&v5[*(v17 + 48) + 24]);
  }

  else if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_1D7C3BAE4(v5, type metadata accessor for ArticleViewerPage);
    return 0;
  }

  sub_1D7C3C044(v5, v9, type metadata accessor for ArticleViewerArticlePage);
  v11 = *&v9[*(v6 + 32)];
  if (v11 >= 2)
  {
    v19 = v11;
  }

  else
  {
    v18 = *(v9 + 2);
    if ([v18 respondsToSelector_])
    {
      v11 = [v18 parentIssue];
    }

    else
    {
      v11 = 0;
    }
  }

  sub_1D7C3BAE4(v9, type metadata accessor for ArticleViewerArticlePage);
  return v11;
}

void sub_1D7C3D570(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v4 = sub_1D7D2CBCC();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2CB7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v35 - v23;
  sub_1D7C3E8B8(v3, &v35 - v23, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = type metadata accessor for ArticleViewerPage;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      sub_1D799A6BC(0);
      sub_1D79DA510(*&v24[*(v27 + 48)], *&v24[*(v27 + 48) + 8], *&v24[*(v27 + 48) + 16], *&v24[*(v27 + 48) + 24]);
      v26 = type metadata accessor for ArticleViewerArticlePage;
      goto LABEL_6;
    }

LABEL_8:
    v29 = v24;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D7C3BAE4(v24, v26);
  sub_1D7C3E8B8(v3, v20, type metadata accessor for ArticleViewerPage);
  v28 = swift_getEnumCaseMultiPayload();
  if ((v28 - 1) < 3)
  {
    v29 = v20;
LABEL_9:
    sub_1D7C3BAE4(v29, type metadata accessor for ArticleViewerPage);
    return;
  }

  if (v28)
  {
    sub_1D799A6BC(0);
    sub_1D79DA510(*&v20[*(v30 + 48)], *&v20[*(v30 + 48) + 8], *&v20[*(v30 + 48) + 16], *&v20[*(v30 + 48) + 24]);
  }

  sub_1D7C3C044(v20, v16, type metadata accessor for ArticleViewerArticlePage);
  v31 = v37;
  v32 = v37[3];
  v35 = v37[4];
  __swift_project_boxed_opaque_existential_1(v37, v32);
  v33 = *(v16 + 2);
  swift_unknownObjectRetain();
  sub_1D7C3BAE4(v16, type metadata accessor for ArticleViewerArticlePage);
  swift_unknownObjectRetain();
  sub_1D7D2CB6C();
  sub_1D799BEE4(&qword_1EE0BFBF8, MEMORY[0x1E69B3E90], MEMORY[0x1E69B3E88]);
  sub_1D7D2CFAC();
  (*(v9 + 8))(v12, v8);
  v34 = [v33 sourceChannel];
  swift_unknownObjectRelease();
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    swift_unknownObjectRetain();
    sub_1D7D2CBBC();
    sub_1D799BEE4(qword_1EE0BFBD0, MEMORY[0x1E69B3EF8], MEMORY[0x1E69B3EF0]);
    sub_1D7D2CFAC();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v7, v4);
  }
}

uint64_t ArticleViewerPage.hashValue.getter()
{
  sub_1D7D31A8C();
  type metadata accessor for ArticleViewerPage(0);
  sub_1D799BEE4(&qword_1EE0C9928, type metadata accessor for ArticleViewerPage, &protocol conformance descriptor for ArticleViewerPage);
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7C3DB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D799BEE4(&qword_1EE0C9938, type metadata accessor for ArticleViewerPage, &protocol conformance descriptor for ArticleViewerPage);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

double ArticleViewerPage.appEntity.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D7C3E860(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3E8B8(v2, v11, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v22 = *(v11 + 1);
      v32 = *v11;
      v33 = v22;
      v23 = *(v11 + 3);
      v34 = *(v11 + 2);
      v35 = v23;
      v24 = *(v11 + 5);
      v36 = *(v11 + 4);
      v37 = v24;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D7A1EF80(&v32);
      goto LABEL_10;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v25 = type metadata accessor for ArticleViewerPage;
      v26 = v11;
LABEL_12:
      sub_1D7C3BAE4(v26, v25);
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      return result;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v17 = *(v11 + 9);
      v40 = *(v11 + 8);
      v41 = v17;
      v42 = *(v11 + 20);
      v18 = *(v11 + 5);
      v36 = *(v11 + 4);
      v37 = v18;
      v19 = *(v11 + 7);
      v38 = *(v11 + 6);
      v39 = v19;
      v20 = *(v11 + 1);
      v32 = *v11;
      v33 = v20;
      v21 = *(v11 + 3);
      v34 = *(v11 + 2);
      v35 = v21;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D79F949C(&v32);
      goto LABEL_10;
    }

    sub_1D799A6BC(0);
    sub_1D79DA510(*&v11[*(v27 + 48)], *&v11[*(v27 + 48) + 8], *&v11[*(v27 + 48) + 16], *&v11[*(v27 + 48) + 24]);
  }

  sub_1D7C3C044(v11, v15, type metadata accessor for ArticleViewerArticlePage);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1D7C3BAE4(v15, type metadata accessor for ArticleViewerArticlePage);
LABEL_10:

  swift_unknownObjectRelease();

  swift_unknownObjectRetain();
  sub_1D7D2EFEC();
  v28 = sub_1D7D2EFFC();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v7, 1, v28) == 1)
  {
    swift_unknownObjectRelease();
    v25 = sub_1D7C3E860;
    v26 = v7;
    goto LABEL_12;
  }

  *(a1 + 24) = v28;
  *(a1 + 32) = sub_1D799BEE4(&qword_1EE0BF748, MEMORY[0x1E69B6100], MEMORY[0x1E69B60F8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(v29 + 32))(boxed_opaque_existential_1, v7, v28);
  swift_unknownObjectRelease();
  return result;
}

uint64_t ArticleViewerArticlePage.article.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D79F5B54(v7, &v6);
}

uint64_t ReplicaAdvertisementPage.advertisement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  v20 = *(v1 + 96);
  v21 = v2;
  v4 = *(v1 + 112);
  v22 = *(v1 + 128);
  v5 = *(v1 + 48);
  v7 = *(v1 + 16);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 48);
  v9 = *(v1 + 80);
  v18 = *(v1 + 64);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 16);
  v15[0] = *v1;
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 144);
  *(a1 + 144) = *(v1 + 144);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_1D7BA03E0(v15, v14);
}

uint64_t _s12NewsArticles17ArticleViewerPageO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterstitialAdvertisementPage(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v80 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v79 = &v77 - v9;
  v10 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v78 = (&v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v77 = (&v77 - v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v77 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v77 - v22);
  v24 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v81 = &v77 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v82 = &v77 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v77 - v36;
  sub_1D7C3EBA0(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v42 = &v77 + *(v41 + 56) - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v44 = &v77 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C3E8B8(v43, v44, type metadata accessor for ArticleViewerPage);
  v45 = a2;
  v46 = v42;
  sub_1D7C3E8B8(v45, v42, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D7C3E8B8(v44, v37, type metadata accessor for ArticleViewerPage);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1D7C3C044(v37, v23, type metadata accessor for ArticleViewerArticlePage);
        sub_1D7C3C044(v42, v19, type metadata accessor for ArticleViewerArticlePage);
        if (*v23 == *v19 && v23[1] == v19[1])
        {
          v59 = 1;
        }

        else
        {
          v59 = sub_1D7D3197C();
        }

        sub_1D7C3BAE4(v19, type metadata accessor for ArticleViewerArticlePage);
        sub_1D7C3BAE4(v23, type metadata accessor for ArticleViewerArticlePage);
        v75 = v44;
        goto LABEL_33;
      }

      sub_1D7C3BAE4(v37, type metadata accessor for ArticleViewerArticlePage);
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v60 = v81;
    sub_1D7C3E8B8(v44, v81, type metadata accessor for ArticleViewerPage);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1D7C3BAE4(v60, type metadata accessor for InterstitialAdvertisementPage);
      goto LABEL_21;
    }

    v53 = v44;
    v61 = v79;
    sub_1D7C3C044(v60, v79, type metadata accessor for InterstitialAdvertisementPage);
    v62 = v42;
    v63 = v80;
    sub_1D7C3C044(v62, v80, type metadata accessor for InterstitialAdvertisementPage);
    v64 = InterstitialAdModel.identifier.getter();
    v66 = v65;
    if (v64 == InterstitialAdModel.identifier.getter() && v66 == v67)
    {
      v59 = 1;
    }

    else
    {
      v59 = sub_1D7D3197C();
    }

    v73 = type metadata accessor for InterstitialAdvertisementPage;
    sub_1D7C3BAE4(v63, type metadata accessor for InterstitialAdvertisementPage);
    v74 = v61;
LABEL_31:
    sub_1D7C3BAE4(v74, v73);
LABEL_32:
    v75 = v53;
LABEL_33:
    sub_1D7C3BAE4(v75, type metadata accessor for ArticleViewerPage);
    return v59 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v68 = v82;
    sub_1D7C3E8B8(v44, v82, type metadata accessor for ArticleViewerPage);
    sub_1D799A6BC(0);
    v53 = v44;
    v70 = v69;
    sub_1D79DA510(*(v68 + *(v69 + 48)), *(v68 + *(v69 + 48) + 8), *(v68 + *(v69 + 48) + 16), *(v68 + *(v69 + 48) + 24));
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_1D7C3BAE4(v68, type metadata accessor for ArticleViewerArticlePage);
      v44 = v53;
      goto LABEL_21;
    }

    sub_1D79DA510(*&v42[*(v70 + 48)], *&v42[*(v70 + 48) + 8], *&v42[*(v70 + 48) + 16], *&v42[*(v70 + 48) + 24]);
    v71 = v77;
    sub_1D7C3C044(v68, v77, type metadata accessor for ArticleViewerArticlePage);
    v72 = v78;
    sub_1D7C3C044(v46, v78, type metadata accessor for ArticleViewerArticlePage);
    if (*v71 == *v72 && v71[1] == v72[1])
    {
      v59 = 1;
    }

    else
    {
      v59 = sub_1D7D3197C();
    }

    v73 = type metadata accessor for ArticleViewerArticlePage;
    sub_1D7C3BAE4(v72, type metadata accessor for ArticleViewerArticlePage);
    v74 = v71;
    goto LABEL_31;
  }

  sub_1D7C3E8B8(v44, v27, type metadata accessor for ArticleViewerPage);
  v48 = *(v27 + 9);
  v94 = *(v27 + 8);
  v95 = v48;
  v96 = *(v27 + 20);
  v49 = *(v27 + 5);
  v90[4] = *(v27 + 4);
  v91 = v49;
  v50 = *(v27 + 7);
  v92 = *(v27 + 6);
  v93 = v50;
  v51 = *(v27 + 1);
  v90[0] = *v27;
  v90[1] = v51;
  v52 = *(v27 + 3);
  v90[2] = *(v27 + 2);
  v90[3] = v52;
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v53 = v44;
    v54 = *(v42 + 9);
    v87 = *(v42 + 8);
    v88 = v54;
    v89 = *(v42 + 20);
    v55 = *(v42 + 5);
    v83[4] = *(v42 + 4);
    v84 = v55;
    v56 = *(v42 + 7);
    v85 = *(v42 + 6);
    v86 = v56;
    v57 = *(v42 + 1);
    v83[0] = *v42;
    v83[1] = v57;
    v58 = *(v42 + 3);
    v83[2] = *(v42 + 2);
    v83[3] = v58;
    if (__PAIR128__(v92, *(&v91 + 1)) == __PAIR128__(v85, *(&v84 + 1)))
    {
      v59 = 1;
    }

    else
    {
      v59 = sub_1D7D3197C();
    }

    sub_1D79F949C(v83);
    sub_1D79F949C(v90);

    goto LABEL_32;
  }

  sub_1D79F949C(v90);
LABEL_21:
  sub_1D7C3BAE4(v44, sub_1D7C3EBA0);
  v59 = 0;
  return v59 & 1;
}

void sub_1D7C3E860(uint64_t a1)
{
  if (!qword_1EE0BF740)
  {
    sub_1D7D2EFFC();
    v1 = sub_1D7D3130C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BF740);
    }
  }
}

uint64_t sub_1D7C3E8B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles013ArticleViewerC4PageV19PresentationContextO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7C3E960(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7C3E9B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1D7C3EA10(void *result, int a2)
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

uint64_t get_enum_tag_for_layout_string_12NewsArticles19ArticleRecipeResultOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (v1 >> 57) & 0x38 | v1 & 7;
  v3 = 128 - (((v1 >> 57) >> 6) | (2 * v2));
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D7C3EAE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1D7C3EB28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D7C3EBA0(uint64_t a1)
{
  if (!qword_1EE0C9850)
  {
    type metadata accessor for ArticleViewerPage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0C9850);
    }
  }
}

uint64_t ArticleModuleType.createViewController(with:presentationContext:issue:access:tracker:contextBuilder:)(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v9 = *a3;
  return (*(a8 + 8))(a1, &v10, &v9, a4, 1, a5, a6, a7, a8);
}

uint64_t ArticleModuleType.createViewController(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D295CC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *MEMORY[0x1E69B6A78], v6, v9);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  v12 = (*(a3 + 8))(a1, v17, v16, v11, 1, 0, v14, a2, a3);
  sub_1D7C4132C(v14, sub_1D7B5A8F8);
  (*(v7 + 8))(v11, v6);
  return v12;
}

uint64_t ArticleModuleType.createModalViewController(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D295CC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *MEMORY[0x1E69B6A78], v6, v9);
  v12 = (*(a3 + 24))(a1, v11, 0, a2, a3);
  (*(v7 + 8))(v11, v6);
  return v12;
}

void sub_1D7C3EF68(uint64_t a1, void **a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v87 = a5;
  v88 = a7;
  v84 = a4;
  v93 = sub_1D7D295CC();
  v86 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v13);
  v85 = v14;
  v92 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D7D2CC8C();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v15);
  v76 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArticleModel(0);
  v79 = *(v17 - 8);
  v18 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v91 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v71 - v26);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (&v71 - v30);
  v32 = a2[1];
  v81 = *a2;
  v80 = v32;
  v33 = a3[1];
  v83 = *a3;
  v82 = v33;
  v89 = a1;
  if (a6)
  {
    v34 = a6;
  }

  else
  {
    v90 = v8[7];
    sub_1D7C4138C(a1, &v71 - v30, type metadata accessor for ArticleModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v36 = v31[1];
    v74 = *v31;
    v75 = v36;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7994174(0);
      v38 = *(v37 + 48);
    }

    else
    {
      v72 = v31[3];
      v73 = v31[5];
      sub_1D7996048(0);
      v38 = *(v39 + 48);
      a1 = v89;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    sub_1D7C4132C(v31 + v38, type metadata accessor for ArticleNavigationAction);
    sub_1D7C4138C(a1, v27, type metadata accessor for ArticleModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1D7994174(0);
      v41 = *(v40 + 48);
    }

    else
    {
      v72 = v27[3];
      v42 = v27[6];
      v73 = v27[5];
      v71 = v42;
      sub_1D7996048(0);
      v41 = *(v43 + 48);
      a1 = v89;
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    sub_1D7C4132C(v27 + v41, type metadata accessor for ArticleNavigationAction);
    v34 = sub_1D7D28A1C();
  }

  sub_1D7C4138C(v88, &v94, sub_1D7B5A8F8);
  if (v95)
  {
    sub_1D799D69C(&v94, v96);
  }

  else
  {
    v44 = v8[11];
    v45 = v8[12];
    __swift_project_boxed_opaque_existential_1(v8 + 8, v44);

    a1 = v89;
    sub_1D7AD388C(0, 0, 0, v44, v45);
    if (v95)
    {
      sub_1D7C4132C(&v94, sub_1D7B5A8F8);
    }
  }

  sub_1D7C4138C(a1, v23, type metadata accessor for ArticleModel);
  v46 = swift_getEnumCaseMultiPayload();
  v90 = v34;
  if (v46 == 1)
  {

    sub_1D7994174(0);
    sub_1D7C4132C(&v23[*(v47 + 48)], type metadata accessor for ArticleNavigationAction);
  }

  else
  {
    v48 = *(v23 + 2);
    sub_1D7996048(0);
    sub_1D7C4132C(&v23[*(v49 + 48)], type metadata accessor for ArticleNavigationAction);
    a1 = v89;

    swift_unknownObjectRelease();

    v50 = [v48 nativeAdCampaignData];
    swift_unknownObjectRelease();
    if (v50)
    {
      sub_1D7D3034C();

      __swift_project_boxed_opaque_existential_1(v96, v96[3]);
      v51 = v76;
      sub_1D7D2CC7C();
      sub_1D798C7C0(&qword_1EC9E73E8, MEMORY[0x1E69B3F50], MEMORY[0x1E69B3F48]);
      v52 = v78;
      sub_1D7D2CFDC();
      (v77[1])(v51, v52);
    }
  }

  __swift_project_boxed_opaque_existential_1(v8 + 2, v8[5]);
  sub_1D7AA3178(0);

  v53 = sub_1D7D28CFC();

  v89 = v53;
  if (v53)
  {
    v78 = v8[5];
    v88 = v8[6];
    v77 = __swift_project_boxed_opaque_existential_1(v8 + 2, v78);
    v76 = type metadata accessor for ArticleViewController(0);
    sub_1D7C4138C(a1, v91, type metadata accessor for ArticleModel);
    v54 = v86;
    (*(v86 + 16))(v92, v84, v93);
    sub_1D799CC84(v96, &v94);
    v55 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v56 = (v18 + *(v54 + 80) + v55) & ~*(v54 + 80);
    v57 = (v85 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 47) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    sub_1D7AD3EF4(v91, v62 + v55);
    (*(v54 + 32))(v62 + v56, v92, v93);
    v63 = v90;
    *(v62 + v57) = v89;
    *(v62 + v58) = v63;
    sub_1D799D69C(&v94, v62 + v59);
    v64 = (v62 + v60);
    v65 = v81;
    v66 = v80;
    *v64 = v81;
    v64[1] = v66;
    v67 = (v62 + v61);
    v68 = v83;
    v69 = v82;
    *v67 = v83;
    v67[1] = v69;
    *(v62 + ((v61 + 23) & 0xFFFFFFFFFFFFFFF8)) = v87;

    sub_1D7B08184(v65, v66);
    sub_1D7C41804(v68, v69);
    v70 = sub_1D7D28CFC();

    if (v70)
    {

      sub_1D798C7C0(&qword_1EE0C8080, type metadata accessor for ArticleViewController, &protocol conformance descriptor for ArticleViewController);
      sub_1D798C7C0(&qword_1EE0C8068, type metadata accessor for ArticleViewController, &protocol conformance descriptor for ArticleViewController);
      __swift_destroy_boxed_opaque_existential_1(v96);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D7C3F904(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleModel(0);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D295CC();
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AA3178(0);
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8]);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28BBC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FCRelativePriority(0);
  return sub_1D7D28BFC();
}

void sub_1D7C3FB3C(uint64_t a1, void **a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = v8;
  v102 = a7;
  v100 = a5;
  v97 = a4;
  v106 = sub_1D7D295CC();
  v99 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v15);
  v98 = v16;
  v105 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1D7D2CC8C();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v17);
  v84 = (&v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for ArticleModel(0);
  v88 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v104 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v80 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v80 - v28;
  v87 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (&v80 - v33);
  v35 = a2[1];
  v90 = *a2;
  v89 = v35;
  v36 = a3[1];
  v92 = *a3;
  v91 = v36;
  v37 = a8[1];
  v96 = *a8;
  v95 = v37;
  v38 = a8[3];
  v94 = a8[2];
  v93 = v38;
  v101 = a1;
  v103 = v39;
  if (a6)
  {
    v40 = a6;
  }

  else
  {
    v83 = v9[7];
    sub_1D7C4138C(a1, &v80 - v33, type metadata accessor for ArticleModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v82 = *v34;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7994174(0);
      v43 = *(v42 + 48);
    }

    else
    {
      v80 = v34[3];
      v81 = v34[5];
      sub_1D7996048(0);
      v43 = *(v44 + 48);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    sub_1D7C4132C(v34 + v43, type metadata accessor for ArticleNavigationAction);
    sub_1D7C4138C(v101, v29, type metadata accessor for ArticleModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1D7994174(0);
      v46 = *(v45 + 48);
    }

    else
    {
      v80 = *(v29 + 3);
      v81 = *(v29 + 5);
      sub_1D7996048(0);
      v46 = *(v47 + 48);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    sub_1D7C4132C(&v29[v46], type metadata accessor for ArticleNavigationAction);
    v40 = sub_1D7D28A1C();
  }

  sub_1D7C4138C(v102, &v107, sub_1D7B5A8F8);
  v48 = v101;
  if (v108)
  {
    sub_1D799D69C(&v107, v109);
  }

  else
  {
    v49 = v9[11];
    v50 = v9[12];
    __swift_project_boxed_opaque_existential_1(v9 + 8, v49);

    sub_1D7AD388C(0, 0, 0, v49, v50);
    if (v108)
    {
      sub_1D7C4132C(&v107, sub_1D7B5A8F8);
    }
  }

  sub_1D7C4138C(v48, v25, type metadata accessor for ArticleModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D7994174(0);
    sub_1D7C4132C(&v25[*(v51 + 48)], type metadata accessor for ArticleNavigationAction);
  }

  else
  {
    v52 = *(v25 + 2);
    sub_1D7996048(0);
    sub_1D7C4132C(&v25[*(v53 + 48)], type metadata accessor for ArticleNavigationAction);

    swift_unknownObjectRelease();

    v54 = [v52 nativeAdCampaignData];
    swift_unknownObjectRelease();
    if (v54)
    {
      sub_1D7D3034C();

      __swift_project_boxed_opaque_existential_1(v109, v109[3]);
      v55 = v84;
      sub_1D7D2CC7C();
      sub_1D798C7C0(&qword_1EC9E73E8, MEMORY[0x1E69B3F50], MEMORY[0x1E69B3F48]);
      v56 = v86;
      sub_1D7D2CFDC();
      (*(v85 + 8))(v55, v56);
    }
  }

  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  sub_1D7AA3178(0);

  v57 = sub_1D7D28CFC();

  v102 = v40;
  v103 = v57;
  if (v57)
  {
    v85 = v9[5];
    v86 = v9[6];
    v84 = __swift_project_boxed_opaque_existential_1(v9 + 2, v85);
    v83 = type metadata accessor for ArticleViewController(0);
    sub_1D7C4138C(v48, v104, type metadata accessor for ArticleModel);
    v58 = v99;
    (*(v99 + 16))(v105, v97, v106);
    sub_1D799CC84(v109, &v107);
    v59 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v60 = (v87 + *(v58 + 80) + v59) & ~*(v58 + 80);
    v61 = (v98 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 47) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
    v101 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    sub_1D7AD3EF4(v104, v67 + v59);
    (*(v58 + 32))(v67 + v60, v105, v106);
    *(v67 + v61) = v103;
    *(v67 + v62) = v102;
    sub_1D799D69C(&v107, v67 + v63);
    v68 = (v67 + v64);
    v69 = v90;
    v70 = v89;
    *v68 = v90;
    v68[1] = v70;
    v71 = (v67 + v65);
    v72 = v92;
    v73 = v91;
    *v71 = v92;
    v71[1] = v73;
    *(v67 + v101) = v100;
    v74 = (v67 + v66);
    v75 = v96;
    v76 = v95;
    *v74 = v96;
    v74[1] = v76;
    v77 = v94;
    v78 = v93;
    v74[2] = v94;
    v74[3] = v78;

    sub_1D7B08184(v69, v70);
    sub_1D7C41804(v72, v73);
    sub_1D7A03D20(v75, v76, v77, v78);
    v79 = sub_1D7D28CFC();

    if (v79)
    {

      sub_1D798C7C0(&qword_1EE0C8080, type metadata accessor for ArticleViewController, &protocol conformance descriptor for ArticleViewController);
      sub_1D798C7C0(&qword_1EE0C8068, type metadata accessor for ArticleViewController, &protocol conformance descriptor for ArticleViewController);
      __swift_destroy_boxed_opaque_existential_1(v109);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D7C4054C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleModel(0);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D295CC();
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7AA3178(0);
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8]);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28BBC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FCRelativePriority(0);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D7D28BFC();
}

void sub_1D7C407DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a2;
  v7 = sub_1D7D295CC();
  v75 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v74 = v9;
  v78 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D7D2CC8C();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v10);
  v69 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArticleModel(0);
  v72 = *(v12 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = (v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v77 = v63 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v63 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (v63 - v25);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  v76 = v7;
  if (a3)
  {
    v79 = a3;
  }

  else
  {
    v79 = v4[7];
    v68 = a1;
    sub_1D7C4138C(a1, v63 - v25, type metadata accessor for ArticleModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = v26[1];
    v66 = *v26;
    v67 = v28;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7994174(0);
      v30 = *(v29 + 48);
    }

    else
    {
      v64 = v26[3];
      v65 = v26[5];
      sub_1D7996048(0);
      v30 = *(v31 + 48);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    sub_1D7C4132C(v26 + v30, type metadata accessor for ArticleNavigationAction);
    sub_1D7C4138C(v68, v15, type metadata accessor for ArticleModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1D7994174(0);
      v65 = 0;
      v33 = *(v32 + 48);
    }

    else
    {
      v63[1] = v15[3];
      v34 = v15[6];
      v64 = v15[5];
      v65 = v34;
      sub_1D7996048(0);
      v33 = *(v35 + 48);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    v7 = v76;
    sub_1D7C4132C(v15 + v33, type metadata accessor for ArticleNavigationAction);
    v79 = sub_1D7D28A1C();

    a1 = v68;
  }

  sub_1D7C4138C(&v84, &v80, sub_1D7B5A8F8);
  if (v81)
  {
    sub_1D799D69C(&v80, &v82);
  }

  else
  {
    v36 = v4[11];
    v37 = v4[12];
    __swift_project_boxed_opaque_existential_1(v4 + 8, v36);

    sub_1D7AD388C(0, 0, 0, v36, v37);
    if (v81)
    {
      sub_1D7C4132C(&v80, sub_1D7B5A8F8);
    }
  }

  sub_1D7C4138C(a1, v22, type metadata accessor for ArticleModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D7994174(0);
    sub_1D7C4132C(&v22[*(v38 + 48)], type metadata accessor for ArticleNavigationAction);
  }

  else
  {
    v39 = *(v22 + 2);
    sub_1D7996048(0);
    sub_1D7C4132C(&v22[*(v40 + 48)], type metadata accessor for ArticleNavigationAction);

    swift_unknownObjectRelease();

    v41 = [v39 nativeAdCampaignData];
    swift_unknownObjectRelease();
    if (v41)
    {
      sub_1D7D3034C();

      __swift_project_boxed_opaque_existential_1(&v82, v83);
      v42 = v69;
      sub_1D7D2CC7C();
      sub_1D798C7C0(&qword_1EC9E73E8, MEMORY[0x1E69B3F50], MEMORY[0x1E69B3F48]);
      v43 = v71;
      sub_1D7D2CFDC();
      (*(v70 + 8))(v42, v43);
    }
  }

  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  sub_1D7AA3178(0);
  v44 = v79;

  v45 = sub_1D7D28CFC();
  v79 = v44;

  v71 = v45;
  if (!v45)
  {
    __break(1u);
    goto LABEL_25;
  }

  v69 = v4[5];
  v70 = v4[6];
  v68 = __swift_project_boxed_opaque_existential_1(v4 + 2, v69);
  v67 = type metadata accessor for ArticleViewController(0);
  sub_1D7C4138C(a1, v77, type metadata accessor for ArticleModel);
  v46 = v75;
  (*(v75 + 16))(v78, v73, v7);
  sub_1D799CC84(&v82, &v80);
  v47 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v48 = (v13 + *(v46 + 80) + v47) & ~*(v46 + 80);
  v49 = (v74 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = v4;
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 47) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_1D7AD3EF4(v77, v54 + v47);
  (*(v46 + 32))(v54 + v48, v78, v76);
  *(v54 + v49) = v71;
  *(v54 + v50) = v79;
  sub_1D799D69C(&v80, v54 + v51);
  v55 = (v54 + v52);
  v56 = (v54 + v53);
  *v55 = 0;
  v55[1] = 0;
  *v56 = 0;
  v56[1] = 0;
  *(v54 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8)) = 1;

  v57 = sub_1D7D28CFC();

  if (!v57)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1D7C4132C(&v84, sub_1D7B5A8F8);
  sub_1D798C7C0(&qword_1EE0C8080, type metadata accessor for ArticleViewController, &protocol conformance descriptor for ArticleViewController);
  sub_1D798C7C0(&qword_1EE0C8068, type metadata accessor for ArticleViewController, &protocol conformance descriptor for ArticleViewController);
  __swift_destroy_boxed_opaque_existential_1(&v82);
  __swift_project_boxed_opaque_existential_1(v74 + 2, v74[5]);
  sub_1D798F168(0, &qword_1EE0CBE40, MEMORY[0x1E69D85F8]);
  sub_1D7D28D2C();
  if (!v83)
  {
LABEL_26:
    __break(1u);
    return;
  }

  sub_1D799D69C(&v82, &v84);
  __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
  v58 = v57;
  v59 = sub_1D7D2BE4C();

  v60 = [v59 presentationController];
  if (v60)
  {
    v61 = v60;
    v62 = v59;
    [v61 setDelegate_];
  }

  __swift_destroy_boxed_opaque_existential_1(&v84);
}

uint64_t sub_1D7C41244()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C4132C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7C4138C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_10()
{
  v1 = *(type metadata accessor for ArticleModel(0) - 8);
  v21 = *(v1 + 80);
  v2 = (v21 + 16) & ~v21;
  v3 = *(v1 + 64);
  v20 = sub_1D7D295CC();
  v4 = *(v20 - 8);
  v5 = *(v4 + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = (((((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7994174(0);
    v12 = (v9 + *(v11 + 48));
    type metadata accessor for ArticleNavigationAction(0);
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 != 2)
    {
      if (v13 != 1)
      {
        goto LABEL_4;
      }

LABEL_8:

      goto LABEL_10;
    }

LABEL_9:
    sub_1D79961C4(0);
    (*(*(v15 - 8) + 8))(v12, v15);
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D7996048(0);
  v12 = (v9 + *(v14 + 48));
  type metadata accessor for ArticleNavigationAction(0);
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 == 2)
  {
    goto LABEL_9;
  }

  if (v13 == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!v13)
  {
  }

LABEL_10:
  v16 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v6, v20);

  __swift_destroy_boxed_opaque_existential_1((v0 + v7));
  v17 = *(v0 + v8);
  if (v17 >= 2)
  {
  }

  v18 = *(v0 + v16);
  if (v18)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v21 | v5 | 7);
}

uint64_t sub_1D7C416BC(void *a1)
{
  v3 = *(type metadata accessor for ArticleModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D7D295CC() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D7C3F904(a1, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), v1 + v10, *(v1 + v11), *(v1 + v11 + 8), *(v1 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1D7C41804(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
  }

  return result;
}

uint64_t sub_1D7C41860(void *a1)
{
  v3 = *(type metadata accessor for ArticleModel(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D7D295CC() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D7C4054C(a1, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), v1 + v10, *(v1 + v11), *(v1 + v11 + 8), *(v1 + v12), *(v1 + v13), *(v1 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 24));
}

uint64_t type metadata accessor for ToolbarIssueCoverViewLayoutAttributes(uint64_t a1)
{
  result = qword_1EC9E73F0;
  if (!qword_1EC9E73F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7C41A40(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      sub_1D7D2FE1C();
      if (v3 <= 0x3F)
      {
        sub_1D7C41B10();
        if (v4 <= 0x3F)
        {
          sub_1D7C41B5C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D7C41B10()
{
  result = qword_1EC9E7400;
  if (!qword_1EC9E7400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9E7400);
  }

  return result;
}

void sub_1D7C41B5C(uint64_t a1)
{
  if (!qword_1EE0BED58)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_1D7D3130C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BED58);
    }
  }
}

uint64_t sub_1D7C41BB4()
{
  sub_1D7C43448(0, &qword_1EE0BB238, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D7C43448(0, &qword_1EE0BB230, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D7D2C26C();
  qword_1EE0BB220 = result;
  return result;
}

double static Commands.Articles.readNowPlayingStory.getter()
{
  if (qword_1EE0BB218 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_1D7C41D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7C41DF4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(double)@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v46 = a3;
  v4 = sub_1D7D29D4C();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D29D3C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D7D2EEEC();
  v10 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7D2F1AC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D2F68C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C41D60(0, qword_1EE0BB180, sub_1D79961C4, MEMORY[0x1E69E6720]);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v28 = &v37 - v27;
  v39 = v39(v26);
  v49 = a1;
  (*(v20 + 104))(v23, *MEMORY[0x1E69B63A0], v19);
  (*(v15 + 104))(v18, *MEMORY[0x1E69B6178], v14);
  v47 = 0u;
  v48 = 0u;
  (*(v10 + 104))(v13, *MEMORY[0x1E69B6058], v38);
  sub_1D799621C();
  swift_unknownObjectRetain();
  sub_1D7D2F4AC();
  sub_1D79961C4(0);
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = objc_opt_self();
  v31 = [v30 systemRedColor];
  sub_1D7D301EC();
  if (qword_1EC9DFF60 != -1)
  {
    swift_once();
  }

  v32 = qword_1EC9E91F8;
  v33 = [v30 whiteColor];
  MEMORY[0x1DA70DC30](v32, v33);

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  (*(v40 + 104))(v42, *MEMORY[0x1E69D7618], v41);
  (*(v44 + 104))(v43, *MEMORY[0x1E69D7628], v45);
  return sub_1D7D29D5C();
}

void static SharingActivity.Audio.readNowPlayingStory()()
{
  v0 = sub_1D7D2AE2C();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  if (qword_1EE0BB218 != -1)
  {
    swift_once();
  }

  sub_1D7D3031C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v4 = sub_1D7D3031C();
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    sub_1D7D2AE1C();
    sub_1D7D2A41C();
    swift_allocObject();
    sub_1D7D2A3FC();
  }

  else
  {
    __break(1u);
  }
}

void static SharingActivity.Audio.closePlayer()()
{
  v0 = sub_1D7D2AE2C();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v24[1] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D7D2EEEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2F1AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2F68C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C43448(0, &qword_1EE0BF660, MEMORY[0x1E69B62F0]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v24[0] = sub_1D7D2C37C();
  (*(v14 + 104))(v17, *MEMORY[0x1E69B63A0], v13);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B6178], v8);
  v25 = 0u;
  v26 = 0u;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B6058], v3);
  sub_1D7D2F4AC();
  sub_1D7D3031C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v22 = sub_1D7D3031C();
  v23 = [objc_opt_self() systemImageNamed_];

  if (v23)
  {
    sub_1D7D2AE1C();
    sub_1D7D2A41C();
    swift_allocObject();
    sub_1D7D2A40C();
  }

  else
  {
    __break(1u);
  }
}

void static SharingActivity.Audio.playNext(headline:)(uint64_t a1)
{
  v2 = sub_1D7D2AE2C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v25[2] = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D7D2EEEC();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2F1AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7D2F68C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79961C4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v25[1] = sub_1D7D2C41C();
  v29 = a1;
  (*(v15 + 104))(v18, *MEMORY[0x1E69B63A0], v14);
  (*(v10 + 104))(v13, *MEMORY[0x1E69B6178], v9);
  v27 = 0u;
  v28 = 0u;
  (*(v5 + 104))(v8, *MEMORY[0x1E69B6058], v26);
  sub_1D799621C();
  swift_unknownObjectRetain();
  sub_1D7D2F4AC();
  sub_1D7D2C41C();
  sub_1D7D2C25C();

  sub_1D7D3031C();

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v23 = sub_1D7D3031C();
  v24 = [objc_opt_self() systemImageNamed_];

  if (v24)
  {
    sub_1D7D2AE1C();
    sub_1D7D2A41C();
    swift_allocObject();
    sub_1D7D2A40C();
  }

  else
  {
    __break(1u);
  }
}

void static SharingActivity.Audio.playLast(headline:)(uint64_t a1)
{
  v2 = sub_1D7D2AE2C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v25[2] = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D7D2EEEC();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2F1AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7D2F68C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79961C4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v25[1] = sub_1D7D2C40C();
  v29 = a1;
  (*(v15 + 104))(v18, *MEMORY[0x1E69B63A0], v14);
  (*(v10 + 104))(v13, *MEMORY[0x1E69B6178], v9);
  v27 = 0u;
  v28 = 0u;
  (*(v5 + 104))(v8, *MEMORY[0x1E69B6058], v26);
  sub_1D799621C();
  swift_unknownObjectRetain();
  sub_1D7D2F4AC();
  sub_1D7D2C40C();
  sub_1D7D2C25C();

  sub_1D7D3031C();

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v23 = sub_1D7D3031C();
  v24 = [objc_opt_self() systemImageNamed_];

  if (v24)
  {
    sub_1D7D2AE1C();
    sub_1D7D2A41C();
    swift_allocObject();
    sub_1D7D2A40C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7C43320()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

id sub_1D7C433E8()
{
  v0 = [objc_opt_self() ts_xmarkCircle];

  return v0;
}

void sub_1D7C43448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7C434A0()
{
  v0 = sub_1D7D2A9BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0BB218 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_1D7D2811C();

  sub_1D7D301EC();
  sub_1D7D301DC();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D7B48], v0);
  sub_1D7D2A36C();
  swift_allocObject();
  return sub_1D7D2A25C();
}

uint64_t sub_1D7C436A0(double a1)
{
  sub_1D7C43C38(0, &qword_1EC9E7408, MEMORY[0x1E69D7C80], a1);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v42 = v36 - v4;
  sub_1D7C43C38(0, &qword_1EC9E7418, MEMORY[0x1E69D7AE0], v3);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v41 = v36 - v7;
  v8 = sub_1D7D2E59C();
  v40 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v39 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C43C38(0, &unk_1EC9E7420, MEMORY[0x1E69D7AE8], v10);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v38 = v36 - v14;
  v37 = sub_1D7D2EEEC();
  v15 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v16);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D2F1AC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D7D2F68C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C43448(0, &qword_1EE0BF660, MEMORY[0x1E69B62F0]);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v36[1] = sub_1D7D2C37C();
  (*(v25 + 104))(v28, *MEMORY[0x1E69B63A0], v24);
  (*(v20 + 104))(v23, *MEMORY[0x1E69B6178], v19);
  v43 = 0u;
  v44 = 0u;
  (*(v15 + 104))(v18, *MEMORY[0x1E69B6058], v37);
  sub_1D7D2F4AC();
  v31 = *MEMORY[0x1E69B5B20];
  v32 = v39;
  v33 = *(v40 + 104);
  v34 = v33(v39, v31, v8);
  sub_1D7C43BE0(v34);
  sub_1D7D2A8AC();
  v33(v32, v31, v8);
  sub_1D7D2A89C();
  sub_1D7D2ACFC();
  sub_1D7D2A36C();
  swift_allocObject();
  return sub_1D7D2A26C();
}

unint64_t sub_1D7C43BE0(double a1)
{
  result = qword_1EC9E7410;
  if (!qword_1EC9E7410)
  {
    sub_1D7D2E59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7410);
  }

  return result;
}

void sub_1D7C43C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), double a4)
{
  if (!*a2)
  {
    v7 = sub_1D7D2E59C();
    v9 = sub_1D7C43BE0(v8);
    v10 = a3(a1, v7, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D7C43CB8()
{
  result = qword_1EC9E7430;
  if (!qword_1EC9E7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7430);
  }

  return result;
}

uint64_t sub_1D7C43D0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D7D2918C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  sub_1D79E7550(0, &qword_1EE0BE960, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D3B4E0;
  sub_1D7D2917C();
  sub_1D7D2916C();
  v9 = v7;
  sub_1D79E74F8();
  sub_1D79E7550(0, &unk_1EE0BF2C0, MEMORY[0x1E69E62F8]);
  sub_1D79E0538();
  sub_1D7D313AC();
  sub_1D7D28C8C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D7C43ED4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D7D2918C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B239EC(&unk_1F529B168);
  sub_1D79E7550(0, &qword_1EE0BE960, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7D3C680;
  sub_1D7D2917C();
  sub_1D7D2916C();
  sub_1D7D2915C();
  v9[1] = v7;
  sub_1D79E74F8();
  sub_1D79E7550(0, &unk_1EE0BF2C0, MEMORY[0x1E69E62F8]);
  sub_1D79E0538();
  sub_1D7D313AC();
  sub_1D7D28C7C();

  return (*(v3 + 8))(v6, v2);
}

id sub_1D7C440C0()
{
  v1 = v0;
  v2 = sub_1D7D2833C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v59 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v55 - v12;
  sub_1D7A86838(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v55 - v24;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v55 - v29;
  v31 = [v1 readingPositionSavedAt];
  if (v31)
  {
    v56 = v17;
    v57 = v6;
    v32 = v2;
    v33 = v31;
    sub_1D7D2830C();

    v34 = *(v3 + 32);
    v34(v30, v13, v32);
    v58 = v3;
    v35 = *(v3 + 56);
    v35(v30, 0, 1, v32);
    sub_1D7AE148C(v30);
    v36 = [v1 listeningProgressSavedAt];
    if (v36)
    {
      v37 = v36;
      sub_1D7D2830C();

      v34(v25, v13, v32);
      v38 = v32;
      v35(v25, 0, 1, v32);
      sub_1D7AE148C(v25);
      v39 = [v1 readingPositionSavedAt];
      if (v39)
      {
        v13 = v39;
        v40 = v59;
        sub_1D7D2830C();

        v41 = [v1 listeningProgressSavedAt];
        v42 = v58;
        if (v41)
        {
          v43 = v41;
          v44 = v57;
          sub_1D7D2830C();

          v13 = sub_1D7D2831C();
          v45 = *(v42 + 8);
          v45(v44, v38);
          v45(v40, v38);
          if (v13 < 2)
          {
            result = [v1 readingPosition];
            if (!result)
            {
              return result;
            }

LABEL_13:
            v50 = result;
            v51 = sub_1D7D3034C();

            return v51;
          }

          if (v13 == -1)
          {
            [v1 listeningProgress];
            return v54;
          }

LABEL_23:
          type metadata accessor for ComparisonResult(0);
          v60 = v13;
          result = sub_1D7D319FC();
          __break(1u);
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_23;
    }

    v35(v25, 1, 1, v32);
    v30 = v25;
    v2 = v32;
    v3 = v58;
    v47 = v35;
    v17 = v56;
  }

  else
  {
    v47 = *(v3 + 56);
    v47(v30, 1, 1, v2);
  }

  sub_1D7AE148C(v30);
  v48 = [v1 readingPositionSavedAt];
  if (!v48)
  {
    v47(v21, 1, 1, v2);
    sub_1D7AE148C(v21);
    v52 = [v1 listeningProgressSavedAt];
    if (!v52)
    {
      v47(v17, 1, 1, v2);
      sub_1D7AE148C(v17);
      return 0;
    }

    v53 = v52;
    sub_1D7D2830C();

    (*(v3 + 32))(v17, v13, v2);
    v47(v17, 0, 1, v2);
    sub_1D7AE148C(v17);
    [v1 listeningProgress];
    return v54;
  }

  v49 = v48;
  sub_1D7D2830C();

  (*(v3 + 32))(v21, v13, v2);
  v47(v21, 0, 1, v2);
  sub_1D7AE148C(v21);
  result = [v1 readingPosition];
  if (result)
  {

    result = [v1 readingPosition];
    if (result)
    {
      goto LABEL_13;
    }
  }

  return result;
}

id sub_1D7C44688()
{
  result = [v0 readingPosition];
  if (result)
  {

    result = [v0 readingPosition];
    if (result)
    {
      v2 = result;
      v3 = sub_1D7D3034C();

      return v3;
    }
  }

  return result;
}

void sub_1D7C4476C(void *a1, void *a2, uint64_t (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  a3(0);
  v5 = sub_1D7D28D1C();
  if (v5)
  {
    v6 = v5;
    [a1 addFactory_];
  }

  else
  {
    __break(1u);
  }
}

double sub_1D7C44810()
{
  type metadata accessor for ArticleThumbnailComponentViewFactory();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  type metadata accessor for ArticleThumbnailComponentSizerFactory();
  sub_1D7D291DC();

  return result;
}

void *sub_1D7C448D4(void *a1)
{
  sub_1D799CC84(a1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEF50, &protocolRef_SXDOMObjectProviding);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF150, 0x1E69CE0D0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDB0, &protocolRef_SXPresentationDelegateProvider);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BED90, &protocolRef_SXComponentStyleRendererFactory);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BEE58, 0x1E69B7090);
  result = sub_1D7D28D1C();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for ArticleThumbnailComponentViewFactory();
    v9 = objc_allocWithZone(v8);
    swift_unknownObjectWeakInit();
    sub_1D799CC84(v13, &v9[OBJC_IVAR____TtC12NewsArticles36ArticleThumbnailComponentViewFactory_resolver]);
    *&v9[OBJC_IVAR____TtC12NewsArticles36ArticleThumbnailComponentViewFactory_linkedContentProvider] = v7;
    v12.receiver = v9;
    v12.super_class = v8;
    v10 = v7;
    v11 = objc_msgSendSuper2(&v12, sel_initWithDOMObjectProvider_viewport_presentationDelegateProvider_componentStyleRendererFactory_, v3, v4, v5, v6);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v11;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1D7C44B30(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7992EFC(0, &qword_1EE0BEED0, 0x1E69CE0A0);
  v2 = sub_1D7D28D1C();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 scrollView];

    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

id sub_1D7C44BF0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BEE58, 0x1E69B7090);
  result = sub_1D7D28D1C();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for ArticleThumbnailComponentSizerFactory();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtC12NewsArticles37ArticleThumbnailComponentSizerFactory_type];
    *v5 = 0xD000000000000011;
    *(v5 + 1) = 0x80000001D7D7A460;
    *&v4[OBJC_IVAR____TtC12NewsArticles37ArticleThumbnailComponentSizerFactory_role] = 0;
    *&v4[OBJC_IVAR____TtC12NewsArticles37ArticleThumbnailComponentSizerFactory_linkedContentProvider] = v2;
    v6.receiver = v4;
    v6.super_class = v3;
    return objc_msgSendSuper2(&v6, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7C44EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = type metadata accessor for ReportConcernCommand();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_concern];
  v18 = *(a5 + 48);
  v20 = *(a5 + 16);
  v19 = *(a5 + 32);
  *v17 = *a5;
  *(v17 + 1) = v20;
  *(v17 + 2) = v19;
  *(v17 + 6) = v18;
  v21 = &v16[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_selectedSubConcern];
  v22 = *a6;
  v23 = a6[2];
  *(v21 + 1) = a6[1];
  *(v21 + 2) = v23;
  *v21 = v22;
  *&v16[OBJC_IVAR____TtC12NewsArticles20ReportConcernCommand_headline] = a7;

  swift_unknownObjectRetain();
  sub_1D7C451F8(a5, aBlock);
  sub_1D7C45254(a6, aBlock);
  v30.receiver = v16;
  v30.super_class = v15;
  v24 = objc_msgSendSuper2(&v30, sel_init);
  v25 = [*(a8 + 16) endpointCommandQueue];
  if (v25)
  {
    v26 = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1D7C451C0;
    *(v27 + 24) = v14;
    aBlock[4] = sub_1D7C452B0;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D79FE25C;
    aBlock[3] = &block_descriptor_34;
    v28 = _Block_copy(aBlock);
    v29 = v24;

    [v26 addCommand:v29 saveCompletion:v28];
    _Block_release(v28);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7C45120(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  sub_1D7A50EF4();
  swift_allocObject();
  return sub_1D7D2946C();
}

uint64_t sub_1D7C451C0(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

double block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1D7C452F4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1D79DEB44(sub_1D7C481DC, v3);

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

double sub_1D7C453B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    sub_1D7D28C6C();
  }

  return result;
}

id sub_1D7C45424()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B6918]);
  v1 = sub_1D7D3031C();
  v2 = [v0 initWithName_];

  v3 = objc_allocWithZone(MEMORY[0x1E69B6918]);
  v4 = sub_1D7D3031C();
  v5 = [v3 initWithName_];

  v6 = objc_allocWithZone(MEMORY[0x1E69B6918]);
  v7 = sub_1D7D3031C();
  v39 = [v6 initWithName_];

  v8 = objc_allocWithZone(MEMORY[0x1E69B6918]);
  v9 = sub_1D7D3031C();
  v38 = [v8 initWithName_];

  sub_1D7C48240(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3C670;
  *(inited + 32) = v2;
  v43 = v2;
  sub_1D7B22B40(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v11 = objc_allocWithZone(MEMORY[0x1E69B6910]);
  v12 = v5;
  v13 = sub_1D7D3031C();
  sub_1D7992EFC(0, &qword_1EC9E7600, 0x1E69B6918);
  sub_1D7C47C44();
  v14 = sub_1D7D3099C();

  v42 = [v11 initWithName:v13 transitionFromStates:v14 toState:v12];

  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1D7D3C670;
  *(v15 + 32) = v12;
  v16 = v12;
  sub_1D7B22B40(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x1E69B6910]);
  v18 = v39;
  v19 = sub_1D7D3031C();
  v20 = sub_1D7D3099C();

  v40 = [v17 initWithName:v19 transitionFromStates:v20 toState:v18];

  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1D7D3C670;
  *(v21 + 32) = v16;
  v22 = v16;
  sub_1D7B22B40(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x1E69B6910]);
  v24 = v38;
  v25 = sub_1D7D3031C();
  v26 = sub_1D7D3099C();

  v44 = [v23 initWithName:v25 transitionFromStates:v26 toState:v24];

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = sub_1D7C47CAC;
  v50 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D7C47244;
  v48 = &block_descriptor_35;
  v28 = _Block_copy(&aBlock);

  v29 = [v22 onWillEnter_];
  _Block_release(v28);

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = sub_1D7C47CCC;
  v50 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D7C47244;
  v48 = &block_descriptor_10_0;
  v31 = _Block_copy(&aBlock);

  v32 = [v22 onWillExit_];
  _Block_release(v31);

  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = sub_1D7C47CD4;
  v50 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1D7C47244;
  v48 = &block_descriptor_14_1;
  v34 = _Block_copy(&aBlock);

  v35 = [v24 onWillEnter_];
  _Block_release(v34);

  v36 = [objc_allocWithZone(MEMORY[0x1E69B6908]) initWithState:v43 withOwner:v41];
  [v36 addState_];
  [v36 addState_];
  [v36 addState_];
  [v36 addEvent_];
  [v36 addEvent_];
  [v36 addEvent_];

  return v36;
}

uint64_t sub_1D7C45C94()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_identifier);

  return v1;
}

void sub_1D7C45CD4()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pdfView];
  [v2 enablePageShadows_];
  [v2 setDisplayDirection_];
  [v2 setDisplaysPageBreaks_];
  [v2 setEnableDataDetectors_];
  [v2 setAccessibilityIgnoresInvertColors_];
  [v2 setDelegate_];
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_focusableView];
    [v3 addSubview_];

    [v5 addSubview_];
    v6 = [v2 na_documentScrollView];
    v7 = v6;
    if (v6)
    {
      [v6 setContentInsetAdjustmentBehavior_];
    }

    sub_1D7D2A57C();
    v8 = [v1 traitCollection];
    sub_1D7C48048(0);

    [v2 addGestureRecognizer_];
    v9 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingStateMachine];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D7D3031C();
      v12 = [v10 fireEventWithName:v11 withContext:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D7C46004(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pdfView];
  v4 = [v3 na_documentScrollView];
  if (v4)
  {
    v5 = v4;
    [v3 minScaleFactor];
    v7 = v6;
    [v5 bounds];
    v8 = CGRectGetWidth(v10) / v7;
    [v5 bounds];
    [v5 zoomToRect:0 animated:{0.0 - v8 * 0.5, 0.0 - CGRectGetHeight(v11) / v7 * 0.5, v8}];
  }
}

void sub_1D7C46148()
{
  v1 = v0;
  v47.receiver = v0;
  v47.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v47, sel_viewDidLayoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_focusableView];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  v13 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pdfView];
  sub_1D7C481E4(&qword_1EC9E7610, &unk_1D7D59EC0);
  sub_1D7D2B9DC();
  v15 = v14;
  v16 = &v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler];
  v17 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler + 24];
  v18 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler], v17);
  (*(v18 + 8))(v17, v18);
  v19 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_parallaxX];
  v20 = v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_parallaxX + 8];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v22 = v21;
  if (v20)
  {
    v23 = v15;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23 - v15;
  [v21 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v13 setFrame_];
  sub_1D7C463F0();
  v31 = [v13 na_documentScrollView];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
    sub_1D7D2B9DC();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = *(v16 + 3);
    v43 = *(v16 + 4);
    __swift_project_boxed_opaque_existential_1(v16, v42);
    v44 = (*(v43 + 8))(v42, v43);
    v45 = 0.0;
    if (v44)
    {
      v46 = v39;
    }

    else
    {
      v46 = 0.0;
    }

    if (v44)
    {
      v45 = v35;
    }

    [v33 setContentInset_];
  }

  sub_1D7D2A55C();
  sub_1D7C464F8();
}

id sub_1D7C463F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pdfView);
  v2 = [v1 document];
  if (v2)
  {
    v3 = v2;
    sub_1D7C46B4C(v2);
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  [v1 scaleFactor];
  v7 = v6;
  [v1 minScaleFactor];
  v9 = v8;
  [v1 setMaxScaleFactor_];
  result = [v1 setMinScaleFactor_];
  if (v7 == v9)
  {

    return [v1 setScaleFactor_];
  }

  return result;
}

void sub_1D7C464F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pdfView);
  v2 = [v1 ts_accessibilityLeafDescendants];
  v3 = sub_1D7D3063C();

  v4 = *(v3 + 16);

  [v1 setIsAccessibilityElement_];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = 0x80000001D7D7A580;
    sub_1D7D2811C();

    v9 = sub_1D7D3031C();

    v5 = v9;
  }

  v10 = v5;
  [v1 setAccessibilityLabel_];
}

uint64_t sub_1D7C466B8()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_viewSafeAreaInsetsDidChange);
  sub_1D7C481E4(&qword_1EC9E7610, &unk_1D7D59EC0);
  sub_1D7D2B9DC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler + 24];
  v11 = *&v0[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler], *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler + 24]);
  result = (*(v11 + 8))(v10, v11);
  v13 = &v0[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_lastSafeAreaInsets];
  if (v0[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_lastSafeAreaInsets + 32])
  {
    goto LABEL_10;
  }

  v14 = v13[3];
  if (v13[1] == v5 && v14 == v9)
  {
    goto LABEL_10;
  }

  v16 = result;
  v17 = &v0[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_parallaxX];
  *v17 = 0;
  v17[8] = 1;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = result;
  sub_1D7D3109C();

  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = result;
  [result setNeedsLayout];

  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v20 = result;
  [result layoutIfNeeded];

  result = v16;
LABEL_10:
  v21 = v3;
  if ((result & 1) == 0)
  {
    v21 = 0;
  }

  *v13 = v21;
  v22 = v7;
  v13[1] = v5;
  if ((result & 1) == 0)
  {
    v22 = 0;
  }

  *(v13 + 2) = v22;
  v13[3] = v9;
  *(v13 + 32) = 0;
  return result;
}

void sub_1D7C468E8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pdfView];
  sub_1D7C481E4(&qword_1EC9E7610, &unk_1D7D59EC0);
  sub_1D7D2B9DC();
  v6 = v5;
  v7 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler + 24];
  v8 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler], *&v2[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler + 24]);
  (*(v8 + 8))(v7, v8);
  v9 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_parallaxX];
  v10 = v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_parallaxX + 8];
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v10)
  {
    v13 = v6;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13 - v6;
  [v11 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v4 setFrame_];
  [v4 setDocument_];
  [v4 setDisplayMode_];
  sub_1D7C463F0();
  [v4 minScaleFactor];
  [v4 setScaleFactor_];
  v21 = [a1 pageAtIndex_];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 thumbnailOfSize:1 forBox:{512.0, 512.0}];
    [v4 na:v23 setBackgroundImage:v22 forPage:?];
  }

  v24 = [v2 view];
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = v24;
  [v24 setNeedsLayout];
}

void sub_1D7C46B4C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 pageCount];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v5 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      v9 = [a1 pageAtIndex_];
      if (v9)
      {
        v10 = v9;
        [v9 boundsForBox_];
        x = v43.origin.x;
        y = v43.origin.y;
        width = v43.size.width;
        height = v43.size.height;
        v7 = v7 + ceil(CGRectGetWidth(v43));
        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        v15 = CGRectGetHeight(v44);

        if (v8 > v15)
        {
          v16 = v8;
        }

        else
        {
          v16 = v15;
        }

        v8 = ceil(v16);
      }

      ++v6;
    }

    while (v5 != v6);
    v17 = 1.0;
    if (v8 > 0.0)
    {
      v17 = v7 / v8;
    }
  }

  else
  {
    v17 = 1.0;
  }

  v42 = v17;
  sub_1D7C481E4(&qword_1EC9E7610, &unk_1D7D59EC0);
  sub_1D7D2B9DC();
  v19 = v18;
  v41 = v20;
  v21 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler + 24];
  v22 = *&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler], v21);
  v23 = (*(v22 + 8))(v21, v22);
  v24 = [v2 view];
  if (!v24)
  {
    goto LABEL_26;
  }

  v25 = v24;
  if ((v23 & 1) == 0)
  {
    v19 = 0.0;
  }

  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v45.origin.x = UIEdgeInsetsInsetRect_0(v27, v29, v31, v33, v19, v41);
  v34 = v45.origin.x;
  v35 = v45.origin.y;
  v36 = v45.size.width;
  v37 = v45.size.height;
  if (CGRectGetHeight(v45) <= 0.0)
  {
    if (v42 <= 1.0)
    {
LABEL_22:
      v48.origin.x = v34;
      v48.origin.y = v35;
      v48.size.width = v36;
      v48.size.height = v37;
      CGRectGetHeight(v48);
      return;
    }
  }

  else
  {
    v46.origin.x = v34;
    v46.origin.y = v35;
    v46.size.width = v36;
    v46.size.height = v37;
    v38 = CGRectGetWidth(v46);
    v47.origin.x = v34;
    v47.origin.y = v35;
    v47.size.width = v36;
    v47.size.height = v37;
    v39 = v38 / CGRectGetHeight(v47);
    if (v39 >= 2.22044605e-16)
    {
      v40 = v39;
    }

    else
    {
      v40 = v42;
    }

    if (v40 >= v42)
    {
      goto LABEL_22;
    }
  }

  v49.origin.x = v34;
  v49.origin.y = v35;
  v49.size.width = v36;
  v49.size.height = v37;
  CGRectGetWidth(v49);
}

double sub_1D7C46E34()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(v0 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pdfView) scaleFactor];
    if (*(v3 + OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_barVisibilityAnimator))
    {
      swift_unknownObjectRetain();
      sub_1D7AF4688(1, 0);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7C46FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D7D2C82C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2C83C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = v3;
    v23 = v8;
    v14 = off_1F52AB6D8;
    v15 = v4;
    v16 = Strong;
    type metadata accessor for PDFReplicaInteractor();
    swift_unknownObjectRetain();
    v14();
    swift_unknownObjectRelease();
    v17 = *&v16[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingIndicatorProvider + 24];
    v18 = *&v16[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingIndicatorProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v16[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingIndicatorProvider], v17);
    (*(v18 + 8))(v17, v18);
    v19 = v22;
    (*(v15 + 104))(v7, *MEMORY[0x1E69D8848], v22);
    sub_1D7D2A56C();
    (*(v15 + 8))(v7, v19);
    (*(v9 + 8))(v12, v23);
    v20 = [v16 traitCollection];
    sub_1D7C48048(1);
  }
}

uint64_t sub_1D7C47244(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, v8);

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_1D7C472D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D7D2C82C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2C83C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*(v9 + 104))(v12, *MEMORY[0x1E69D8828], v8);
    (*(v4 + 104))(v7, *MEMORY[0x1E69D8848], v3);
    sub_1D7D2A56C();
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
  }
}

void sub_1D7C474CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    sub_1D7C48048(3);
  }
}

void sub_1D7C47540(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingStateMachine);
    v3 = Strong;
    v4 = v2;

    if (v2)
    {
      v5 = sub_1D7D3031C();
      v6 = [v4 fireEventWithName:v5 withContext:0];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1D7C47720()
{
  result = qword_1EC9E75E8;
  if (!qword_1EC9E75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E75E8);
  }

  return result;
}

void sub_1D7C47774(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7D29A8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywall;
    v11 = Strong;
    swift_beginAccess();
    (*(v5 + 16))(v8, v11 + v10, v4);
    v12 = sub_1D7D29A7C();
    swift_unknownObjectRelease();
    (*(v5 + 8))(v8, v4);
    v13 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_eventHandler) + 32);
    swift_beginAccess();
    if (*(v13 + 56))
    {
      sub_1D799CC84(v13 + 32, v19);
      v14 = v20;
      v15 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v15 + 56))(v12 & 1, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v19);
    }
  }

  v16 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_eventHandler) + 32);
  swift_beginAccess();
  if (*(v16 + 56))
  {
    sub_1D799CC84(v16 + 32, v19);
    v17 = v20;
    v18 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v18 + 32))(a1, v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }
}

void sub_1D7C47990(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pdfView);
  [v3 minScaleFactor];
  [v3 setScaleFactor_];
  v4 = *(*(v1 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_eventHandler) + 32);
  swift_beginAccess();
  if (*(v4 + 56))
  {
    sub_1D799CC84(v4 + 32, v7);
    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 40))(a1, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }
}

void sub_1D7C47AC8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_1D7C481E4(&qword_1EC9E7610, &unk_1D7D59EC0);
  v5 = sub_1D7D2B9EC();
  v6 = &v3[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_parallaxX];
  *v6 = v5;
  v6[8] = v7 & 1;
  v8 = [v3 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  sub_1D7D3109C();

  v10 = [v4 view];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v10 setNeedsLayout];

  v12 = [v4 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 layoutIfNeeded];
}

unint64_t sub_1D7C47C44()
{
  result = qword_1EC9E4DF0;
  if (!qword_1EC9E4DF0)
  {
    sub_1D7992EFC(255, &qword_1EC9E7600, 0x1E69B6918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4DF0);
  }

  return result;
}

double block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1D7C47CDC(void *a1)
{
  v2 = [a1 name];
  v3 = sub_1D7D3034C();
  v5 = v4;

  v6 = v3 == 0x6C616974696E69 && v5 == 0xE700000000000000;
  if (v6 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = v3 == 0x676E6964616F6CLL && v5 == 0xE700000000000000;
    if (v8 || (sub_1D7D3197C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = v3 == 0x79616C70736964 && v5 == 0xE700000000000000;
      if (v9 || (sub_1D7D3197C() & 1) != 0)
      {

        return 2;
      }

      else if (v3 == 0x726F727265 && v5 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v10 = sub_1D7D3197C();

        if (v10)
        {
          return 3;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

void sub_1D7C47E80()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_contentBackgroundColor;
  [objc_opt_self() whiteColor];
  sub_1D7C48240(0, &unk_1EE0C0440, &type metadata for ContentBackgroundColors, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v0 + v2) = sub_1D7D28ECC();
  v3 = OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_focusableView;
  type metadata accessor for FocusableView();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_coverViewManager;
  sub_1D7D2A59C();
  swift_allocObject();
  *(v1 + v4) = sub_1D7D2A58C();
  v5 = OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pinchRecognizer;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCD80]) init];
  *(v1 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingStateMachine) = 0;
  v6 = OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_paywallPreparationEventManager;
  sub_1D7A1098C(0);
  swift_allocObject();
  *(v1 + v6) = sub_1D7D28C9C();
  v7 = v1 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_parallaxX;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v1 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_lastSafeAreaInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  sub_1D7D3160C();
  __break(1u);
}

void sub_1D7C48048(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler];
  sub_1D799CC84(&v2[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_styler], &v15);
  v5 = v17;
  v6 = v18;
  __swift_project_boxed_opaque_existential_1(&v15, v17);
  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    (*(v6 + 16))(v7, a1, v5, v6);

    __swift_destroy_boxed_opaque_existential_1(&v15);
    v9 = *(v4 + 3);
    v10 = *(v4 + 4);
    __swift_project_boxed_opaque_existential_1(v4, v9);
    v11 = *&v2[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_pdfView];
    (*(v10 + 24))(v11, v9, v10);
    v12 = *(v4 + 4);
    __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
    v13 = [v11 na_documentScrollView];
    (*(v12 + 32))();

    v15 = [v11 backgroundColor];
    v16 = 0;
    sub_1D7D28EAC();
    v14 = v16;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7C481E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PDFReplicaViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7C48240(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1D7C482A0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 153))
  {
    return 0;
  }

  sub_1D7C48DC8(a1, v8, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v47 = v2;
      v20 = *(v8 + 1);
      v55 = *v8;
      v56 = v20;
      v21 = *(v8 + 3);
      v57 = *(v8 + 2);
      v58 = v21;
      v22 = *(v8 + 5);
      v59 = *(v8 + 4);
      v60 = v22;
      v19 = v56;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D7A1EF80(&v55);
      goto LABEL_11;
    }

LABEL_10:
    v47 = v2;
    sub_1D7A74E98(v8, v12);
    v19 = *(v12 + 2);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D7C48D68(v12, type metadata accessor for ArticleViewerArticlePage);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v47 = v2;
      v14 = *(v8 + 9);
      v63 = *(v8 + 8);
      v64 = v14;
      v65 = *(v8 + 20);
      v15 = *(v8 + 5);
      v59 = *(v8 + 4);
      v60 = v15;
      v16 = *(v8 + 7);
      v61 = *(v8 + 6);
      v62 = v16;
      v17 = *(v8 + 1);
      v55 = *v8;
      v56 = v17;
      v18 = *(v8 + 3);
      v57 = *(v8 + 2);
      v58 = v18;
      v19 = *(&v61 + 1);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1D79F949C(&v55);
LABEL_11:

      swift_unknownObjectRelease();

      ArticleViewerPage.article.getter(&v51);
      v55 = v51;
      v56 = v52;
      v57 = v53;
      v58 = v54;
      if (!*(&v51 + 1))
      {
        goto LABEL_43;
      }

      v24 = v56;
      swift_unknownObjectRetain();
      sub_1D7C48D0C(&v55, &qword_1EE0C0600, &type metadata for Article, MEMORY[0x1E69E6720]);
      v25 = [v24 sourceChannel];
      swift_unknownObjectRelease();
      if (!v25)
      {
        goto LABEL_43;
      }

      v26 = *(v47 + 16);
      v27 = [v26 purchaseProvider];
      if ([swift_unknownObjectRetain() tagType] == 3)
      {
        v28 = [v25 asSection];
        if (!v28 || (v29 = [v28 parentID], swift_unknownObjectRelease(), !v29))
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_19;
        }
      }

      else
      {
        v29 = [v25 identifier];
      }

      v30 = sub_1D7D3034C();
      v32 = v31;

      v33 = [v27 purchasedTagIDs];
      v34 = sub_1D7D309AC();

      LOBYTE(v33) = sub_1D7D053C8(v30, v32, v34);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      if (v33)
      {
LABEL_42:
        swift_unknownObjectRelease();
LABEL_43:
        swift_unknownObjectRelease();
        return 0;
      }

LABEL_19:
      v35 = [objc_msgSend(v26 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v35, v35 + 1))
      {
        sub_1D7D3138C();
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0u;
        v50 = 0u;
      }

      v51 = v49;
      v52 = v50;
      v36 = MEMORY[0x1E69E7CA0];
      if (*(&v50 + 1))
      {
        sub_1D79A4870();
        if (swift_dynamicCast())
        {
          v37 = v48;
          v38 = [v48 integerValue];
          if (v38 == -1)
          {

LABEL_39:
            v42 = [objc_msgSend(v26 bundleSubscriptionProvider)];
            swift_unknownObjectRelease();
            v43 = [v25 identifier];
            if (!v43)
            {
              sub_1D7D3034C();
              v43 = sub_1D7D3031C();
            }

            v44 = [v42 containsTagID_];

            if ((v44 & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }

          v39 = v38;
LABEL_28:
          if (objc_getAssociatedObject(v35, ~v39))
          {
            sub_1D7D3138C();
            swift_unknownObjectRelease();
          }

          else
          {
            v49 = 0u;
            v50 = 0u;
          }

          v51 = v49;
          v52 = v50;
          if (*(&v50 + 1))
          {
            sub_1D79A4870();
            if (swift_dynamicCast())
            {
              v40 = v48;
              v41 = [v40 integerValue];

              if (((v41 ^ v39) & 1) == 0)
              {
                goto LABEL_46;
              }

              goto LABEL_39;
            }
          }

          else
          {
            sub_1D7C48D0C(&v51, &qword_1EE0BE7A0, v36 + 8, MEMORY[0x1E69E6720]);
          }

          if ((v39 & 1) == 0)
          {
LABEL_46:
            v46 = [v19 isPaid];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return v46;
          }

          goto LABEL_39;
        }
      }

      else
      {
        sub_1D7C48D0C(&v51, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      }

      v37 = 0;
      v39 = 0;
      goto LABEL_28;
    }

    sub_1D799A6BC(0);
    sub_1D79DA510(*&v8[*(v23 + 48)], *&v8[*(v23 + 48) + 8], *&v8[*(v23 + 48) + 16], *&v8[*(v23 + 48) + 24]);
    goto LABEL_10;
  }

  sub_1D7C48D68(v8, type metadata accessor for ArticleViewerPage);
  return 0;
}

void *sub_1D7C489E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D7C48DC8(a1, v19, sub_1D7BD6BB4);
  v7 = v20;
  if (v20)
  {
    sub_1D7C48D0C(v19, &unk_1EE0CA960, &type metadata for HardPaywallArticleFeatureContext, type metadata accessor for FeatureState);
  }

  else
  {
    sub_1D7C48D68(v19, sub_1D7BD6BB4);
  }

  sub_1D7C48DC8(a1, v17, sub_1D7BD6BB4);
  if (v18)
  {
    sub_1D79DA880(v17, v19);
    sub_1D7C48D0C(v17, &unk_1EE0CA960, &type metadata for HardPaywallArticleFeatureContext, type metadata accessor for FeatureState);
  }

  else
  {
    sub_1D7C48D68(v17, sub_1D7BD6BB4);
    memset(v19, 0, sizeof(v19));
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  v8 = sub_1D7C48E30(v7 == 0, v19);
  v10 = v9;
  v11 = MEMORY[0x1E69E6720];
  sub_1D7C48D0C(v19, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
  v12 = *(a1 + 184);
  sub_1D79DA880(a2, v19);
  v13 = sub_1D7C48E30(v12, v19);
  v15 = v14;
  sub_1D7C48D0C(v19, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, v11);
  *(a3 + 24) = &type metadata for HardPaywallArticleViewerFeatureTransition;
  *(a3 + 32) = &off_1F52B4BE8;
  result = swift_allocObject();
  *a3 = result;
  result[2] = v8;
  result[3] = v10;
  result[4] = v13;
  result[5] = v15;
  *(a3 + 40) = 0;
  return result;
}

id sub_1D7C48C08(uint64_t a1)
{
  sub_1D7D2A94C();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:6 target:0 action:0];

  sub_1D7D2A90C();
  v3 = *(a1 + 48);
  v4 = v2;
  v5 = [v3 horizontalSizeClass];
  v6 = 4.0;
  if (v5 == 2)
  {
    v6 = 16.0;
  }

  [v4 setWidth_];

  return v4;
}

uint64_t sub_1D7C48D0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1D7999658(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D7C48D68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7C48DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C48E30(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_1D7D2DB0C() & 1;
  if (v4)
  {
    result = MEMORY[0x1E69E7CC0];
  }

  else
  {
    result = 0;
  }

  if (!v4 && (v3 & 1) == 0)
  {
    sub_1D7AEC678(a2, v35);
    if (!v36)
    {
      sub_1D7C48D0C(v35, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions, MEMORY[0x1E69E6720]);
      return 0;
    }

    sub_1D7A966C0(v35, v37);
    if ([v38 horizontalSizeClass] == 1)
    {
      goto LABEL_14;
    }

    v6 = [objc_opt_self() mainBundle];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      v8 = sub_1D7D3034C();
      v10 = v9;

      if (v8 == 0xD000000000000010 && 0x80000001D7D6D9F0 == v10)
      {

LABEL_14:
        sub_1D7999658(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1D7D41F60;
        *(v12 + 32) = sub_1D7C48C08(v37);
        v13 = _sSo8UIButtonC12NewsArticlesE17placeholderButton5TeaUI06ActionE0CvgZ_0();
        [v13 setHidden_];
        sub_1D7D2A94C();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v15 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];

        sub_1D7D2A90C();

        v16 = v12;
        *(v12 + 40) = v15;
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1D7D3D410;
        v18 = _sSo8UIButtonC12NewsArticlesE17placeholderButton5TeaUI06ActionE0CvgZ_0();
        [v18 setHidden_];
        v19 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];

        sub_1D7D2A90C();

        *(v17 + 32) = v19;
        *(v17 + 40) = sub_1D7C48C08(v37);
        v20 = (v17 + 48);
LABEL_16:
        v33 = _sSo8UIButtonC12NewsArticlesE17placeholderButton5TeaUI06ActionE0CvgZ_0();
        [v33 setHidden_];
        v34 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];

        sub_1D7D2A90C();

        *v20 = v34;
        sub_1D79DA8DC(v37);
        return v16;
      }

      v11 = sub_1D7D3197C();

      if (v11)
      {
        goto LABEL_14;
      }
    }

    sub_1D7999658(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D7D4E7B0;
    *(v21 + 32) = sub_1D7C48C08(v37);
    v22 = _sSo8UIButtonC12NewsArticlesE17placeholderButton5TeaUI06ActionE0CvgZ_0();
    [v22 setHidden_];
    sub_1D7D2A94C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];

    sub_1D7D2A90C();

    *(v21 + 40) = v23;
    *(v21 + 48) = sub_1D7C48C08(v37);
    v24 = _sSo8UIButtonC12NewsArticlesE17placeholderButton5TeaUI06ActionE0CvgZ_0();
    [v24 setHidden_];
    v25 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];

    sub_1D7D2A90C();

    v16 = v21;
    *(v21 + 56) = v25;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7D59F80;
    v27 = _sSo8UIButtonC12NewsArticlesE17placeholderButton5TeaUI06ActionE0CvgZ_0();
    [v27 setHidden_];
    v28 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];

    sub_1D7D2A90C();

    *(v26 + 32) = v28;
    *(v26 + 40) = sub_1D7C48C08(v37);
    v29 = _sSo8UIButtonC12NewsArticlesE17placeholderButton5TeaUI06ActionE0CvgZ_0();
    [v29 setHidden_];
    v30 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];

    sub_1D7D2A90C();

    *(v26 + 48) = v30;
    *(v26 + 56) = sub_1D7C48C08(v37);
    v31 = _sSo8UIButtonC12NewsArticlesE17placeholderButton5TeaUI06ActionE0CvgZ_0();
    [v31 setHidden_];
    v32 = [objc_allocWithZone(ObjCClassFromMetadata) initWithCustomView_];

    sub_1D7D2A90C();

    *(v26 + 64) = v32;
    *(v26 + 72) = sub_1D7C48C08(v37);
    v20 = (v26 + 80);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1D7C493C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v82 = a3;
  sub_1D7C4A67C(0, &qword_1EC9E6958, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v74 = &v72 - v6;
  sub_1D7C4A67C(0, &qword_1EC9E6960, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v73 = &v72 - v9;
  sub_1D7C4A67C(0, &qword_1EC9E6968, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v72 = &v72 - v12;
  v13 = type metadata accessor for EndOfRecipeFeedGroupKnobs(0);
  v14 = *(v13 - 8);
  v76 = v13;
  v77 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v75 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C4A67C(0, &qword_1EC9E6970, type metadata accessor for EndOfRecipeFeedGroupKnobs);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v81 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v72 - v22;
  sub_1D7C4A67C(0, &qword_1EC9E7628, type metadata accessor for EndOfRecipeFeedKnobsConfig);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v72 - v26;
  v83 = type metadata accessor for EndOfRecipeFeedKnobsConfig(0);
  v28 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v29);
  v78 = (&v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7C4A67C(0, &qword_1EC9E7630, type metadata accessor for EndOfRecipeFeedConfig);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v72 - v33;
  v35 = type metadata accessor for EndOfRecipeFeedConfig(0);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  sub_1D7C4A6D0(a1, v34, &qword_1EC9E7630, type metadata accessor for EndOfRecipeFeedConfig);
  v40 = *(v36 + 48);
  if (v40(v34, 1, v35) == 1)
  {
    v41 = sub_1D7D2833C();
    (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
    v42 = *(v35 + 24);
    v43 = sub_1D7D2E1BC();
    (*(*(v43 - 8) + 56))(&v39[v42], 1, 1, v43);
    *&v39[*(v35 + 20)] = MEMORY[0x1E69E7CC0];
    if (v40(v34, 1, v35) != 1)
    {
      sub_1D7C4A73C(v34, &qword_1EC9E7630, type metadata accessor for EndOfRecipeFeedConfig);
    }
  }

  else
  {
    sub_1D7C4A798(v34, v39, type metadata accessor for EndOfRecipeFeedConfig);
  }

  v44 = v82;
  sub_1D7C4A798(v39, v82, type metadata accessor for EndOfRecipeFeedConfig);
  v45 = v79;
  sub_1D7C4A6D0(v79, v27, &qword_1EC9E7628, type metadata accessor for EndOfRecipeFeedKnobsConfig);
  v46 = *(v28 + 48);
  v47 = v46(v27, 1, v83);
  v48 = v81;
  if (v47 == 1)
  {
    v49 = v23;
    v50 = v76;
    v51 = v23;
    v52 = v77;
    (*(v77 + 56))(v51, 1, 1, v76);
    sub_1D7C4A6D0(v49, v48, &qword_1EC9E6970, type metadata accessor for EndOfRecipeFeedGroupKnobs);
    v55 = *(v52 + 48);
    v53 = v52 + 48;
    v54 = v55;
    if (v55(v48, 1, v50) == 1)
    {
      v56 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs(0);
      v57 = v72;
      (*(*(v56 - 8) + 56))(v72, 1, 1, v56);
      v58 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs(0);
      v59 = v73;
      (*(*(v58 - 8) + 56))(v73, 1, 1, v58);
      v60 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs(0);
      v61 = *(*(v60 - 8) + 56);
      v77 = v53;
      v62 = v74;
      v61(v74, 1, 1, v60);
      v63 = v49;
      v64 = v75;
      v65 = v57;
      v66 = v59;
      v67 = v81;
      v44 = v82;
      sub_1D7CDC3B0(v65, v66, v62, v75);
      sub_1D7C4A73C(v63, &qword_1EC9E6970, type metadata accessor for EndOfRecipeFeedGroupKnobs);
      if (v54(v67, 1, v76) != 1)
      {
        sub_1D7C4A73C(v67, &qword_1EC9E6970, type metadata accessor for EndOfRecipeFeedGroupKnobs);
      }
    }

    else
    {
      sub_1D7C4A73C(v49, &qword_1EC9E6970, type metadata accessor for EndOfRecipeFeedGroupKnobs);
      v64 = v75;
      sub_1D7C4A798(v48, v75, type metadata accessor for EndOfRecipeFeedGroupKnobs);
    }

    v69 = v83;
    v68 = v78;
    sub_1D7C4A798(v64, v78 + *(v83 + 20), type metadata accessor for EndOfRecipeFeedGroupKnobs);
    *v68 = 0x7FFFFFFFFFFFFFFFLL;
    sub_1D7C4A73C(v45, &qword_1EC9E7628, type metadata accessor for EndOfRecipeFeedKnobsConfig);
    sub_1D7C4A73C(v80, &qword_1EC9E7630, type metadata accessor for EndOfRecipeFeedConfig);
    if (v46(v27, 1, v69) != 1)
    {
      sub_1D7C4A73C(v27, &qword_1EC9E7628, type metadata accessor for EndOfRecipeFeedKnobsConfig);
    }
  }

  else
  {
    sub_1D7C4A73C(v45, &qword_1EC9E7628, type metadata accessor for EndOfRecipeFeedKnobsConfig);
    sub_1D7C4A73C(v80, &qword_1EC9E7630, type metadata accessor for EndOfRecipeFeedConfig);
    v68 = v78;
    sub_1D7C4A798(v27, v78, type metadata accessor for EndOfRecipeFeedKnobsConfig);
  }

  v70 = type metadata accessor for EndOfRecipeFeedContentConfig(0);
  return sub_1D7C4A798(v68, v44 + *(v70 + 20), type metadata accessor for EndOfRecipeFeedKnobsConfig);
}

uint64_t sub_1D7C49D18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1D7C4A67C(0, &qword_1EC9E7628, type metadata accessor for EndOfRecipeFeedKnobsConfig);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18 - v6;
  sub_1D7C4A67C(0, &qword_1EC9E7630, type metadata accessor for EndOfRecipeFeedConfig);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v18 - v10;
  sub_1D7C4A854(0, &qword_1EC9E7638, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v18 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C4A800();
  sub_1D7D31AFC();
  if (!v2)
  {
    type metadata accessor for EndOfRecipeFeedConfig(0);
    v22 = 0;
    sub_1D7C4A8B8(&qword_1EC9E7648, type metadata accessor for EndOfRecipeFeedConfig, &unk_1D7D54BF0);
    sub_1D7D3173C();
    type metadata accessor for EndOfRecipeFeedKnobsConfig(0);
    v21 = 1;
    v20 = 2;
    sub_1D7C4A8B8(&qword_1EC9E7650, type metadata accessor for EndOfRecipeFeedKnobsConfig, &unk_1D7D564C4);
    sub_1D7D3172C();
    sub_1D7C493C8(v11, v7, v19);
    (*(v18 + 8))(v16, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7C4A004(void *a1, double a2)
{
  sub_1D7C4A854(0, &qword_1EC9E7658, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C4A800();
  sub_1D7D31B1C();
  v11[15] = 0;
  type metadata accessor for EndOfRecipeFeedConfig(0);
  sub_1D7C4A8B8(&qword_1EC9E7660, type metadata accessor for EndOfRecipeFeedConfig, &unk_1D7D54BC8);
  sub_1D7D318BC();
  if (!v2)
  {
    type metadata accessor for EndOfRecipeFeedContentConfig(0);
    v11[14] = 1;
    type metadata accessor for EndOfRecipeFeedKnobsConfig(0);
    sub_1D7C4A8B8(&qword_1EC9E7668, type metadata accessor for EndOfRecipeFeedKnobsConfig, &unk_1D7D5649C);
    sub_1D7D318BC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D7C4A214()
{
  v1 = 0x6E6F4373626F6E6BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x666E6F4364656566;
  }
}

uint64_t sub_1D7C4A280@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7C4AA18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7C4A2A8(uint64_t a1)
{
  v2 = sub_1D7C4A800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C4A2E4(uint64_t a1)
{
  v2 = sub_1D7C4A800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7C4A38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D7C4A67C(0, &qword_1EC9E7628, type metadata accessor for EndOfRecipeFeedKnobsConfig);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  sub_1D7C4A67C(0, &qword_1EC9E7630, type metadata accessor for EndOfRecipeFeedConfig);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v18 - v13;
  sub_1D7C4A614(a1, &v18 - v13, type metadata accessor for EndOfRecipeFeedConfig);
  v15 = type metadata accessor for EndOfRecipeFeedConfig(0);
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_1D7C4A614(v3 + *(a2 + 20), v10, type metadata accessor for EndOfRecipeFeedKnobsConfig);
  v16 = type metadata accessor for EndOfRecipeFeedKnobsConfig(0);
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  return sub_1D7C493C8(v14, v10, a3);
}

uint64_t sub_1D7C4A614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7C4A67C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7C4A6D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7C4A67C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7C4A73C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7C4A67C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7C4A798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D7C4A800()
{
  result = qword_1EC9E7640;
  if (!qword_1EC9E7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7640);
  }

  return result;
}

void sub_1D7C4A854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7C4A800();
    v7 = a3(a1, &type metadata for EndOfRecipeFeedContentConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7C4A8B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D7C4A914()
{
  result = qword_1EC9E7670;
  if (!qword_1EC9E7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7670);
  }

  return result;
}

unint64_t sub_1D7C4A96C()
{
  result = qword_1EC9E7678;
  if (!qword_1EC9E7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7678);
  }

  return result;
}

unint64_t sub_1D7C4A9C4()
{
  result = qword_1EC9E7680;
  if (!qword_1EC9E7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7680);
  }

  return result;
}

uint64_t sub_1D7C4AA18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x666E6F4364656566 && a2 == 0xEA00000000006769;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F4373626F6E6BLL && a2 == 0xEB00000000676966 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D7D7A670 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D7D3197C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D7C4AB44(unint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 32);
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v38 = a1[6];
  v39 = a1[5];
  v36 = a1[8];
  v37 = a1[7];
  v34 = *(a2 + 16);
  v35 = a1[9];
  v40 = a1[10];
  v41 = a2 + 32;
  v33 = v4;
  v31 = v7;
  v32 = v6;
  v30 = v8;
  while (1)
  {
    v9 = (v41 + 88 * v3);
    v10 = v9[2];
    v11 = v9[4];
    v46 = v9[3];
    v47 = v11;
    v48 = *(v9 + 10);
    v12 = v9[1];
    v43 = *v9;
    v44 = v12;
    v45 = v10;
    if (v43 != __PAIR128__(v6, v5) && (sub_1D7D3197C() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v44 != __PAIR128__(v8, v7))
    {
      break;
    }

    if (v4 == v45)
    {
      goto LABEL_12;
    }

LABEL_4:
    if (++v3 == v2)
    {
      return 0;
    }
  }

  if (sub_1D7D3197C() & 1) == 0 || ((v4 ^ v45))
  {
    goto LABEL_4;
  }

LABEL_12:
  if (*(&v45 + 1) != v39 || (v46 != v38 || *(&v46 + 1) != v37) && (sub_1D7D3197C() & 1) == 0)
  {
    goto LABEL_4;
  }

  if ((v47 != v36 || *(&v47 + 1) != v35) && (sub_1D7D3197C() & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = v48;
  v14 = *(v48 + 16);
  if (v14 != *(v40 + 16))
  {
    goto LABEL_4;
  }

  if (!v14 || v48 == v40)
  {
    return v3;
  }

  result = sub_1D79ECF40(&v43, v42);
  v16 = 0;
  v17 = 0;
  while (v17 < *(v13 + 16))
  {
    if (v14 == v17)
    {
      goto LABEL_43;
    }

    v18 = *(v13 + v16 + 32);
    v19 = *(v13 + v16 + 40);
    v21 = *(v13 + v16 + 64);
    v20 = *(v13 + v16 + 72);
    v23 = *(v13 + v16 + 48);
    v22 = *(v13 + v16 + 56);
    v24 = *(v40 + v16 + 32);
    v25 = *(v40 + v16 + 40);
    v26 = *(v40 + v16 + 48);
    v27 = *(v40 + v16 + 56);
    v29 = *(v40 + v16 + 64);
    v28 = *(v40 + v16 + 72);
    if (*(v13 + v16 + 80))
    {
      if ((*(v40 + v16 + 80) & 1) == 0 || (v18 != v24 || v19 != v25) && (sub_1D7D3197C() & 1) == 0)
      {
        goto LABEL_3;
      }

      v52.origin.x = v26;
      v52.origin.y = v27;
      v52.size.width = v29;
      v52.size.height = v28;
      v50.origin.x = v23;
      v50.origin.y = v22;
      v50.size.width = v21;
      v50.size.height = v20;
      result = CGRectEqualToRect(v50, v52);
      if ((result & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else if ((*(v40 + v16 + 80) & 1) != 0 || (v18 != v24 || v19 != v25) && (sub_1D7D3197C() & 1) == 0 || (v51.origin.x = v26, v51.origin.y = v27, v51.size.width = v29, v51.size.height = v28, v49.origin.x = v23, v49.origin.y = v22, v49.size.width = v21, v49.size.height = v20, result = CGRectEqualToRect(v49, v51), !result))
    {
LABEL_3:
      sub_1D7A2BEAC(&v43);
      v2 = v34;
      v4 = v33;
      v7 = v31;
      v6 = v32;
      v8 = v30;
      goto LABEL_4;
    }

    ++v17;
    v16 += 56;
    if (v14 == v17)
    {
      sub_1D7A2BEAC(&v43);
      return v3;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_1D7C4AE5C(int a1)
{
  v2 = v1;
  sub_1D7C4B96C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 176) == 2 || (v17 = *(v1 + 176) ^ a1, (v17 & 1) != 0) || ((v17 >> 8) & 1) != 0)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 104), *(v1 + 128));
    v10 = *(v1 + 80);
    v18[0] = *(v1 + 72);
    v18[1] = v10;
    v11 = a1 & 0x101;
    v12 = v18[0];

    sub_1D7AA8DE4(v18, v11);
    v13 = v18[0];

    *(v2 + 176) = v11;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = off_1F529C608[0];
        type metadata accessor for PDFReplicaViewerViewController(0);
        v16(v15, &off_1F52B2E58, v9);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    (*(v6 + 8))(v9, v5);
  }
}
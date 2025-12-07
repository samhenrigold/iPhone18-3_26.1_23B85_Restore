uint64_t ReviewsPage.init(adamId:title:targetReviewId:shelves:sortOptions:initialSortOptionIdentifier:sortActionSheetTitle:ratings:productReviewActions:alwaysAllowReviews:loadCompletedAction:nextPage:pageMetrics:pageRenderEvent:trailingNavBarAction:)(void *a1, uint64_t a2, char *a3, void (*a4)(char *, uint64_t, uint64_t), void (*a5)(char *, uint64_t, uint64_t), unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v96 = a8;
  v94 = a7;
  v87 = a6;
  v89 = a5;
  v86 = a4;
  v95 = a3;
  v91 = a2;
  v97 = a18;
  v93 = a15;
  v100 = a13;
  v101 = a19;
  LODWORD(v92) = a14;
  v85 = a11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v84 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v84 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v84 - v29;
  v30 = sub_1E1AF3C3C();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v98 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v84 - v34;
  v36 = a1[1];
  v37 = (v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
  *v37 = *a1;
  v37[1] = v36;
  v38 = (v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
  v39 = v89;
  *v38 = v86;
  v38[1] = v39;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions) = v94;
  v40 = (v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
  *v40 = v96;
  v40[1] = a9;
  v41 = (v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
  v42 = v85;
  *v41 = a10;
  v41[1] = v42;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings) = a12;
  v43 = v101;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions) = v100;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews) = v92;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction) = v43;
  v90 = a16;
  sub_1E134FD1C(a16, v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v89 = v31;
  v86 = *(v31 + 16);
  v94 = a17;
  v86(v35, a17, v30);
  v96 = sub_1E1AF39DC();
  v44 = *(v96 - 8);
  v45 = v102;
  (*(v44 + 56))(v102, 1, 1, v96);
  v46 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

  v92 = a12;

  v47 = sub_1E175EC2C(v87);
  v49 = v48;

  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v47;
  v50 = v45;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v49;
  v51 = (v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v52 = v95;
  *v51 = v91;
  v51[1] = v52;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = 0;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = 0;
  sub_1E134FD1C(v104, v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v20 + v46) = 0;
  v53 = v97;

  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v54 = v98;
  v95 = v35;
  v55 = v86;
  v86(v98, v35, v30);
  v56 = v50;
  v57 = v99;
  sub_1E134FD1C(v56, v99, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v20 + 16) = 0;
  v91 = v30;
  v55((v20 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v54, v30);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v53;
  v58 = v88;
  sub_1E134FD1C(v57, v88, &qword_1ECEB3B28, &unk_1E1B11460);
  v87 = v44;
  v59 = *(v44 + 48);
  if (v59(v58, 1, v96) == 1)
  {

    v60 = *(v89 + 1);
    v61 = v91;
    v60(v94, v91);
    sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v57, &qword_1ECEB3B28, &unk_1E1B11460);
    v60(v54, v61);
    sub_1E1308058(v102, &qword_1ECEB3B28, &unk_1E1B11460);
    v60(v95, v61);
    sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v62 = v58;
    v63 = &qword_1ECEB3B28;
    v64 = &unk_1E1B11460;
  }

  else
  {
    v65 = v58;
    v66 = v89;
    v67 = qword_1EE1E3BC8;

    if (v67 != -1)
    {
      swift_once();
    }

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v68, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v69 = v103;
    v70 = v66;
    if (v103)
    {
    }

    v71 = v87 + 8;
    v72 = *(v87 + 8);
    v73 = v96;
    v72(v65, v96);
    v74 = v84;
    if (v69)
    {
      v75 = v99;
      sub_1E134FD1C(v99, v84, &qword_1ECEB3B28, &unk_1E1B11460);
      if (v59(v74, 1, v73) != 1)
      {
        v87 = v71;
        v81 = v74;
        sub_1E15F0974();

        v82 = v91;
        v83 = *(v70 + 1);
        v83(v94, v91);
        sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v75, &qword_1ECEB3B28, &unk_1E1B11460);
        v83(v98, v82);
        sub_1E1308058(v102, &qword_1ECEB3B28, &unk_1E1B11460);
        v83(v95, v82);
        sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v72(v81, v73);
        return v20;
      }

      v76 = *(v70 + 1);
      v77 = v91;
      v76(v94, v91);
      sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v75, &qword_1ECEB3B28, &unk_1E1B11460);
      v76(v98, v77);
      sub_1E1308058(v102, &qword_1ECEB3B28, &unk_1E1B11460);
      v76(v95, v77);
      sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v62 = v74;
      v63 = &qword_1ECEB3B28;
      v64 = &unk_1E1B11460;
    }

    else
    {

      v78 = *(v70 + 1);
      v79 = v91;
      v78(v94, v91);
      sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v99, &qword_1ECEB3B28, &unk_1E1B11460);
      v78(v98, v79);
      sub_1E1308058(v102, &qword_1ECEB3B28, &unk_1E1B11460);
      v78(v95, v79);
      v62 = v104;
      v63 = &qword_1ECEB2DF0;
      v64 = &unk_1E1B02CE0;
    }
  }

  sub_1E1308058(v62, v63, v64);
  return v20;
}

uint64_t sub_1E1638E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double ReviewsPage.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
  a1[1] = v2;

  return result;
}

uint64_t ReviewsPage.targetReviewId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);

  return v1;
}

uint64_t ReviewsPage.initialSortOptionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);

  return v1;
}

uint64_t ReviewsPage.sortActionSheetTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);

  return v1;
}

uint64_t sub_1E1639070(uint64_t a1)
{
  v2 = v1;
  v190 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v181 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v184 = &v168 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v183 = &v168 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v168 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v182 = &v168 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v186 = &v168 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v187 = &v168 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v192 = &v168 - v20;
  v21 = sub_1E1AF3C3C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v168 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v168 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v185 = (&v168 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v195 = (&v168 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v193 = &v168 - v36;
  v188 = type metadata accessor for ReviewsPage(0);
  v37 = swift_dynamicCastClass();
  v38 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId + 8);
  v189 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
  v40 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v39 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
  v194 = v22;
  v196 = v21;
  v191 = v40;
  if (v37)
  {
    v41 = v37;
    v42 = v190;
    v43 = v21;
    v44 = v38;
    v45 = v39;
    if (!v39)
    {
      v191 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    }

    v183 = v45;
    v46 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId + 8);
    if (v46)
    {
      v178 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
      v177 = v46;
    }

    else
    {
      v62 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId + 8);
      v178 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
      v177 = v62;
    }

    ShelfBasedPage.shelves.getter(v42, &protocol witness table for GenericPage);
    v64 = v63;
    sub_1E1635254(type metadata accessor for ReviewsPage);
    sub_1E163ABFC(v64, v65);
    v181 = v66;

    v179 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions);
    v67 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
    if (v67)
    {
      v190 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
      v173 = v67;
    }

    else
    {
      v68 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
      v190 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
      v173 = v68;
    }

    v69 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle + 8);
    v180 = v67;
    v176 = v69;
    if (v69)
    {
      v171 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
      v170 = v69;
    }

    else
    {
      v70 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle + 8);
      v171 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
      v170 = v70;
    }

    v71 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings);
    v174 = v71;
    if (!v71)
    {
      v71 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings);
    }

    v72 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions);
    if (v72)
    {
      v172 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions);
      v184 = v72;
    }

    else
    {
      v184 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions);

      v172 = 0;
    }

    LODWORD(v169) = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews);
    sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, v200, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v73 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v74 = *(v22 + 16);
    v75 = v193;
    v74(v193, v2 + v73, v43);
    v175 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
    v76 = OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction;
    v77 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction);
    v2 = swift_allocObject();
    v78 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
    *v78 = v189;
    v78[1] = v44;
    v79 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
    v80 = v177;
    *v79 = v178;
    v79[1] = v80;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions) = v179;
    v81 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
    v82 = v173;
    *v81 = v190;
    v81[1] = v82;
    v83 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
    v84 = v170;
    *v83 = v171;
    v83[1] = v84;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings) = v71;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions) = v184;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews) = v169;
    *(v2 + v76) = v77;
    sub_1E134FD1C(v200, &v198, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v74(v195, v75, v43);
    v85 = v74;
    v189 = sub_1E1AF39DC();
    v190 = *(v189 - 8);
    v86 = v192;
    (*(v190 + 56))(v192, 1, 1, v189);
    v87 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

    v188 = v71;

    v88 = sub_1E175EC2C(v181);
    v90 = v89;

    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v88;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v90;
    v91 = (v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    v92 = v183;
    *v91 = v191;
    v91[1] = v92;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = 0;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = 0;
    sub_1E134FD1C(&v198, v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = 0;
    swift_beginAccess();
    *(v2 + v87) = 0;
    v93 = v195;
    v94 = v196;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
    v95 = v185;
    v85(v185, v93, v94);
    v96 = &unk_1E1B11460;
    v97 = v187;
    sub_1E134FD1C(v86, v187, &qword_1ECEB3B28, &unk_1E1B11460);
    *(v2 + 16) = 0;
    v85((v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v95, v94);
    *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v175;
    v98 = v186;
    sub_1E134FD1C(v97, v186, &qword_1ECEB3B28, &unk_1E1B11460);
    v99 = *(v190 + 48);
    if (v99(v98, 1, v189) == 1)
    {

      v100 = &qword_1ECEB3B28;
      sub_1E1308058(v97, &qword_1ECEB3B28, &unk_1E1B11460);
      v101 = v93;
      v102 = *(v194 + 8);
      v102(v95, v94);
      sub_1E1308058(v192, &qword_1ECEB3B28, &unk_1E1B11460);
      v102(v101, v94);
      sub_1E1308058(&v198, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v102(v193, v94);
      sub_1E1308058(v200, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v103 = v98;
      goto LABEL_53;
    }

    v191 = v99;
    v104 = qword_1EE1E3BC8;

    if (v104 != -1)
    {
LABEL_57:
      swift_once();
    }

    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v105, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v106 = v199;
    v107 = v182;
    v108 = v187;
    v109 = v185;
    if (v199)
    {
    }

    v110 = *(v190 + 8);
    v111 = v189;
    v190 += 8;
    v110(v186, v189);
    if (v106)
    {
      sub_1E134FD1C(v108, v107, &qword_1ECEB3B28, &unk_1E1B11460);
      if (v191(v107, 1, v111) == 1)
      {

        v100 = &qword_1ECEB3B28;
        v96 = &unk_1E1B11460;
        sub_1E1308058(v108, &qword_1ECEB3B28, &unk_1E1B11460);
        v112 = *(v194 + 8);
        v113 = v196;
        v112(v109, v196);
        sub_1E1308058(v192, &qword_1ECEB3B28, &unk_1E1B11460);
        v112(v195, v113);
        sub_1E1308058(&v198, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v112(v193, v113);
        sub_1E1308058(v200, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v103 = v107;
        goto LABEL_53;
      }

      sub_1E15F0974();

      sub_1E1308058(v108, &qword_1ECEB3B28, &unk_1E1B11460);
      v163 = *(v194 + 8);
      v164 = v196;
      v163(v109, v196);
      sub_1E1308058(v192, &qword_1ECEB3B28, &unk_1E1B11460);
      v163(v195, v164);
      sub_1E1308058(&v198, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v163(v193, v164);
      sub_1E1308058(v200, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v110(v107, v111);
      return v2;
    }

    sub_1E1308058(v108, &qword_1ECEB3B28, &unk_1E1B11460);
    v161 = *(v194 + 8);
    v162 = v196;
    v161(v109, v196);
    sub_1E1308058(v192, &qword_1ECEB3B28, &unk_1E1B11460);
    v161(v195, v162);
    v100 = &qword_1ECEB2DF0;
    v96 = &unk_1E1B02CE0;
    sub_1E1308058(&v198, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v161(v193, v162);
LABEL_52:
    v103 = v200;
    goto LABEL_53;
  }

  v192 = v24;
  v178 = v27;
  v179 = v12;
  v180 = v30;
  v47 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId + 8);
  v186 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
  v185 = v47;
  v48 = v39;

  v195 = v38;

  v187 = v48;

  ShelfBasedPage.shelves.getter(v190, &protocol witness table for GenericPage);
  v50 = v49;
  v51 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = MEMORY[0x1E69E7CC0];
  v198 = MEMORY[0x1E69E7CC0];
  v54 = *(v52 + 16);
  v55 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v54)
  {
    goto LABEL_39;
  }

  v56 = 0;
  v57 = v52 + 32;
  v182 = v54 - 1;
  v193 = v50;
  v190 = v52 + 32;
  do
  {
    v58 = v57 + 40 * v56;
    v59 = v56;
    while (1)
    {
      if (v59 >= *(v52 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      sub_1E134E724(v58, v200);
      if (*(*(a1 + v55) + 16))
      {
        break;
      }

LABEL_9:
      ++v59;
      sub_1E134B88C(v200);
      v58 += 40;
      if (v54 == v59)
      {
        v50 = v193;
        goto LABEL_39;
      }
    }

    sub_1E135FCF4(v200);
    if ((v60 & 1) == 0)
    {

      goto LABEL_9;
    }

    v61 = sub_1E134B88C(v200);
    MEMORY[0x1E68FEF20](v61);
    if (*((v198 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v198 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v56 = v59 + 1;
    sub_1E1AF62AC();
    v53 = v198;
    v50 = v193;
    v57 = v190;
  }

  while (v182 != v59);
LABEL_39:

  sub_1E163ABFC(v50, v53);
  v182 = v114;

  v169 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions);
  v115 = v169;
  v116 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
  v176 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
  v175 = v116;
  v174 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings);
  v117 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle + 8);
  v172 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
  v170 = v117;
  v193 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions);
  LODWORD(v171) = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews);
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, v200, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v118 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v120 = (v194 + 16);
  v119 = *(v194 + 16);
  v121 = v180;
  v122 = v196;
  v119(v180, v2 + v118, v196);
  v173 = v120;
  v177 = v119;
  v190 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
  v123 = OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction;
  v124 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction);
  v2 = swift_allocObject();
  v125 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
  v126 = v195;
  *v125 = v189;
  v125[1] = v126;
  v127 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
  v128 = v185;
  *v127 = v186;
  v127[1] = v128;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions) = v115;
  v129 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
  v130 = v175;
  *v129 = v176;
  v129[1] = v130;
  v131 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
  v132 = v170;
  *v131 = v172;
  v131[1] = v132;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings) = v174;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions) = v193;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews) = v171;
  *(v2 + v123) = v124;
  sub_1E134FD1C(v200, &v198, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v133 = v178;
  v119(v178, v121, v122);
  v189 = sub_1E1AF39DC();
  v195 = *(v189 - 8);
  v134 = v179;
  v195[7](v179, 1, 1, v189);
  v135 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

  v136 = sub_1E175EC2C(v182);
  v138 = v137;

  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v136;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v138;
  v139 = (v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v140 = v187;
  *v139 = v191;
  v139[1] = v140;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = 0;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = 0;
  sub_1E134FD1C(&v198, v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v2 + v135) = 0;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v141 = v192;
  v142 = v196;
  v143 = v177;
  v177(v192, v133, v196);
  v96 = &unk_1E1B11460;
  v144 = v183;
  sub_1E134FD1C(v134, v183, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v2 + 16) = 0;
  v145 = v142;
  v143(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v141, v142);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v190;
  v146 = v184;
  v147 = v189;
  sub_1E134FD1C(v144, v184, &qword_1ECEB3B28, &unk_1E1B11460);
  v148 = v195[6];
  if ((v148)(v146, 1, v147) == 1)
  {

    v100 = &qword_1ECEB3B28;
    sub_1E1308058(v144, &qword_1ECEB3B28, &unk_1E1B11460);
    v149 = *(v194 + 8);
    v149(v141, v145);
    sub_1E1308058(v179, &qword_1ECEB3B28, &unk_1E1B11460);
    v149(v178, v145);
    sub_1E1308058(&v198, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v149(v180, v145);
    goto LABEL_48;
  }

  v193 = v148;
  v150 = v147;
  v151 = v145;
  v152 = qword_1EE1E3BC8;

  if (v152 != -1)
  {
    swift_once();
  }

  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
  __swift_project_value_buffer(v153, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
  sub_1E1AF39EC();
  v154 = v197;
  v155 = v194;
  v146 = v181;
  v156 = v192;
  if (v197)
  {
  }

  v157 = v195[1];
  ++v195;
  (v157)(v184, v150);
  v158 = v183;
  if (!v154)
  {
    sub_1E1308058(v183, &qword_1ECEB3B28, &unk_1E1B11460);
    v165 = *(v155 + 8);
    v165(v156, v151);
    sub_1E1308058(v179, &qword_1ECEB3B28, &unk_1E1B11460);
    v165(v178, v151);
    v100 = &qword_1ECEB2DF0;
    v96 = &unk_1E1B02CE0;
    sub_1E1308058(&v198, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v165(v180, v151);
    goto LABEL_52;
  }

  sub_1E134FD1C(v183, v146, &qword_1ECEB3B28, &unk_1E1B11460);
  v159 = v158;
  if ((v193)(v146, 1, v150) == 1)
  {
    v100 = &qword_1ECEB3B28;
    v96 = &unk_1E1B11460;
    sub_1E1308058(v159, &qword_1ECEB3B28, &unk_1E1B11460);
    v160 = *(v155 + 8);
    v160(v156, v151);
    sub_1E1308058(v179, &qword_1ECEB3B28, &unk_1E1B11460);
    v160(v178, v151);
    sub_1E1308058(&v198, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v160(v180, v151);
LABEL_48:
    sub_1E1308058(v200, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v103 = v146;
LABEL_53:
    sub_1E1308058(v103, v100, v96);
  }

  else
  {
    sub_1E15F0974();
    sub_1E1308058(v158, &qword_1ECEB3B28, &unk_1E1B11460);
    v167 = *(v155 + 8);
    v167(v156, v151);
    sub_1E1308058(v179, &qword_1ECEB3B28, &unk_1E1B11460);
    v167(v178, v151);
    sub_1E1308058(&v198, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v167(v180, v151);
    sub_1E1308058(v200, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    (v157)(v146, v150);
  }

  return v2;
}

uint64_t sub_1E163AA40()
{
}

uint64_t ReviewsPage.deinit()
{
  v0 = GenericPage.deinit();

  return v0;
}

uint64_t ReviewsPage.__deallocating_deinit()
{
  ReviewsPage.deinit();

  return swift_deallocClassInstance();
}

void sub_1E163ABFC(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_1E175EC2C(a2);
  v5 = v4;

  v28 = v5;
  v27 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    v6 = sub_1E1AF71CC();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v2;
  if (v6)
  {
    if (v6 < 1)
    {
      __break(1u);
      goto LABEL_42;
    }

    v7 = 0;
    v26 = v6;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E68FFD80](v7, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v7 + 32);
      }

      if (*(v5 + 16) && (v10 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id, sub_1E135FCF4(v9 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id), (v11 & 1) != 0))
      {

        Shelf.mergingWith(_:)(v12);

        MEMORY[0x1E68FEF20](v13);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();
        sub_1E1410E94(v9 + v10, v14);

        v6 = v26;
      }

      else
      {

        MEMORY[0x1E68FEF20](v8);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();
      }

      ++v7;
    }

    while (v6 != v7);
  }

  if (!(v2 >> 62))
  {
    v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_40:

    return;
  }

  v15 = sub_1E1AF71CC();
  if (!v15)
  {
    goto LABEL_40;
  }

LABEL_20:
  if (v15 >= 1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        v17 = MEMORY[0x1E68FFD80](i, v2);
        if (*(v5 + 16) && (sub_1E135FCF4(v17 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id), (v18 & 1) != 0))
        {
          v19 = swift_unknownObjectRetain();
          MEMORY[0x1E68FEF20](v19);
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
            v2 = v25;
          }

          sub_1E1AF62AC();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v20 = (v2 + 32);
      do
      {
        if (*(v28 + 16))
        {
          v21 = *v20;
          v22 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;

          sub_1E135FCF4(v21 + v22);
          if (v23)
          {

            MEMORY[0x1E68FEF20](v24);
            if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E1AF625C();
            }

            sub_1E1AF62AC();
          }

          else
          {
          }
        }

        ++v20;
        --v15;
      }

      while (v15);
    }

    goto LABEL_40;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1E163B118(uint64_t a1)
{
  result = sub_1E1AEFCCC();
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

uint64_t NewWatchPairingCardTrigger.__allocating_init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 56) = 2;
  *(v4 + 80) = 1;
  *(v4 + 64) = v5;
  *(v4 + 72) = v6;
  sub_1E1308EC0(a2, v4 + 16);
  return v4;
}

uint64_t NewWatchPairingCardTrigger.init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 56) = 2;
  *(v2 + 80) = 1;
  *(v2 + 64) = v3;
  *(v2 + 72) = v4;
  sub_1E1308EC0(a2, v2 + 16);
  return v2;
}

double NewWatchPairingCardTrigger.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;

  return result;
}

uint64_t sub_1E163B2F0(uint64_t (*a1)(void))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t NewWatchPairingCardTrigger.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NewWatchPairingCardTrigger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

double sub_1E163B564@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 72);
  *a1 = *(*v1 + 64);
  a1[1] = v2;

  return result;
}

uint64_t sub_1E163B574(uint64_t (*a1)(void))
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1Tm((*v1 + 16), v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t sub_1E163B5EC()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t sub_1E163B62C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 81);
}

uint64_t sub_1E163B814()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3030 = result;
  return result;
}

uint64_t sub_1E163B870()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2EA0 = result;
  return result;
}

uint64_t JSFreshnessWatchdog.BootstrapReason.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t JSFreshnessWatchdog.BagContract.__allocating_init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v7 = *a3;
  v8 = a3[1];
  LOBYTE(a3) = *(a3 + 16);
  v9 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v10 = sub_1E1AF539C();
  (*(*(v10 - 8) + 32))(v6 + v9, a1, v10);
  *(v6 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = a2;
  v11 = v6 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = a3;
  return v6;
}

uint64_t JSFreshnessWatchdog.BagContract.init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v9 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v10 = sub_1E1AF539C();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  *(v3 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = a2;
  v11 = v3 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v8;
  return v3;
}

uint64_t JSFreshnessWatchdog.BagContract.bag.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v4 = sub_1E1AF539C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 JSFreshnessWatchdog.BagContract.bagOfflinePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy + 16);
  result = *(v1 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

double sub_1E163BC0C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  v9 = sub_1E1AF3D0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  (*(v10 + 104))(v12, *MEMORY[0x1E69AAFD0], v9);
  sub_1E1AF52AC();
  (*(v10 + 8))(v12, v9);
  sub_1E1AF532C();
  (*(v6 + 8))(v8, v5);
  return *&v14[3];
}

uint64_t JSFreshnessWatchdog.BagContract.deinit()
{
  v1 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v2 = sub_1E1AF539C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t JSFreshnessWatchdog.BagContract.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v2 = sub_1E1AF539C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E163BF0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v5 = sub_1E1AF539C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

__n128 sub_1E163BF9C@<Q0>(__n128 *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy);
  v3 = v2[1].n128_u8[0];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u8[0] = v3;
  return result;
}

double sub_1E163C064(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a6;
  v16[2] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  v11 = sub_1E1AF3D0C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 != -1)
  {
    swift_once();
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E69AAFD0], v11);
  sub_1E1AF52AC();
  (*(v12 + 8))(v14, v11);
  sub_1E1AF532C();
  (*(v8 + 8))(v10, v7);
  return *&v16[3];
}

uint64_t sub_1E163C260()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE215A88);
  __swift_project_value_buffer(v4, qword_1EE215A88);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E163C3B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_allocate_value_buffer(v0, qword_1EE1DCE08);
  __swift_project_value_buffer(v0, qword_1EE1DCE08);
  return sub_1E1AF3F9C();
}

uint64_t static JSFreshnessWatchdog.debugAlwaysTreatResidentSessionAsInvalidKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1DCE00 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  v3 = __swift_project_value_buffer(v2, qword_1EE1DCE08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t JSFreshnessWatchdog.__allocating_init(bagContract:networkInquiry:process:)(void *a1, void *a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_1E163E4E4(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t JSFreshnessWatchdog.init(bagContract:networkInquiry:process:)(void *a1, void *a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1E163E3D0(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t JSFreshnessWatchdog.__allocating_init(bag:isOfflineBag:bagOfflinePolicy:networkInquiry:process:)(uint64_t a1, int a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v23 = a5;
  v22 = a2;
  v8 = sub_1E1AF539C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v13 = a3[1];
  v15 = *(a3 + 16);
  (*(v9 + 16))(v12, a1, v8, v10);
  type metadata accessor for JSFreshnessWatchdog.BagContract(0);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag, v12, v8);
  *(v16 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = v22;
  v17 = v16 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  *v17 = v14;
  *(v17 + 8) = v13;
  *(v17 + 16) = v15;
  sub_1E1300B24(a4, v24);
  v18 = swift_allocObject();
  v19 = sub_1E163E2E4(v16, v24, v23, v18);
  __swift_destroy_boxed_opaque_existential_1(a4);
  (*(v9 + 8))(a1, v8);
  return v19;
}

uint64_t JSFreshnessWatchdog.deinit()
{
  v1 = v0;
  if (*(v0 + 96))
  {
    sub_1E1300B24(v0 + 72, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  sub_1E1308058(v0 + 72, &unk_1ECEB5718, &qword_1E1B213D0);
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  sub_1E1300EA8(*(v0 + 152), *(v0 + 160));
  v4 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  v5 = sub_1E1AF3F6C();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t JSFreshnessWatchdog.__deallocating_deinit()
{
  v1 = v0;
  if (*(v0 + 96))
  {
    sub_1E1300B24(v0 + 72, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  sub_1E1308058(v0 + 72, &unk_1ECEB5718, &qword_1E1B213D0);
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  sub_1E1300EA8(*(v0 + 152), *(v0 + 160));
  v4 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  v5 = sub_1E1AF3F6C();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return swift_deallocClassInstance();
}

void *JSFreshnessWatchdog.process.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

double sub_1E163CA70()
{
  sub_1E163D478(v12);
  v1 = v12[0];
  if (!v12[0])
  {
    if (qword_1EE1DCDF8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v2 = v0[6];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 3, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    swift_beginAccess();
    v4 = v0[19];
    if (v4 && (v5 = v0[20], v12[0] = v1, , v6 = v4(v12), sub_1E1300EA8(v4, v5), (v6 & 1) == 0))
    {
      if (qword_1EE1DCDF8 != -1)
      {
        swift_once();
      }

      v11 = sub_1E1AF591C();
      __swift_project_value_buffer(v11, qword_1EE215A88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();
    }

    else
    {
      if (qword_1EE1DCDF8 != -1)
      {
        swift_once();
      }

      v7 = sub_1E1AF591C();
      __swift_project_value_buffer(v7, qword_1EE215A88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      v13 = &type metadata for JSFreshnessWatchdog.BootstrapReason;
      v12[0] = v1;
      sub_1E1AF38BC();
      sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF548C();

      v8 = [objc_opt_self() sharedCoordinator];
      [v8 notify];
    }

    return result;
  }

  if (qword_1EE1DCDF8 != -1)
  {
LABEL_17:
    swift_once();
  }

LABEL_11:
  v10 = sub_1E1AF591C();
  __swift_project_value_buffer(v10, qword_1EE215A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  return result;
}

uint64_t sub_1E163D048@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 152);
  v5 = *(v3 + 160);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E163E910;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4, v5);
}

uint64_t sub_1E163D0DC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E163E8D8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 152);
  v9 = *(v7 + 160);
  *(v7 + 152) = v6;
  *(v7 + 160) = v5;
  sub_1E1300E34(v3, v4);
  return sub_1E1300EA8(v8, v9);
}

uint64_t JSFreshnessWatchdog.reasonValidator.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  sub_1E1300E34(v1, *(v0 + 160));
  return v1;
}

uint64_t JSFreshnessWatchdog.reasonValidator.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 152);
  v6 = *(v2 + 160);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return sub_1E1300EA8(v5, v6);
}

Swift::Void __swiftcall JSFreshnessWatchdog.didFinishBootstrap()()
{
  v1 = sub_1E1AF3F6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF3F5C();
  v5 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v5, v4, v1);
  swift_endAccess();
}

Swift::Void __swiftcall JSFreshnessWatchdog.willEnterForeground()()
{
  v1 = sub_1E1AF3F6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E163CA70();
  sub_1E1AF3F5C();
  v5 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v5, v4, v1);
  swift_endAccess();
}

uint64_t sub_1E163D478@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v106 = a1;
  v3 = sub_1E1AEFE6C();
  v101 = *(v3 - 8);
  v102 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v89 - v8;
  v94 = sub_1E1AF539C();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF591C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF3F6C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(v1 + 17);
  v17 = *(v1 + 18);
  v19 = __swift_project_boxed_opaque_existential_1Tm(v1 + 14, v18);
  v20 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  v24 = (*(v17 + 40))(v18, v17);
  (*(v20 + 8))(v23, v18);
  v25 = *(v2 + 17);
  v26 = *(v2 + 18);
  v27 = __swift_project_boxed_opaque_existential_1Tm(v2 + 14, v25);
  v28 = *(v25 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31, v29);
  v32 = (*(v26 + 48))(v25, v26);
  (*(v28 + 8))(v31, v25);
  v33 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  v34 = *(v14 + 16);
  v98 = v33;
  v97 = v14 + 16;
  v96 = v34;
  v34(v16, &v2[v33], v13);
  sub_1E1AF3F4C();
  v36 = v35;
  v37 = *(v14 + 8);
  v103 = v13;
  v37(v16, v13);
  if (qword_1EE1DCDF8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v10, qword_1EE215A88);
  v104 = v11;
  v105 = v10;
  (*(v11 + 16))(v107, v38, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1E1B03770;
  v95 = v39;
  sub_1E1AF382C();
  v40 = *(v2 + 17);
  v41 = *(v2 + 18);
  v42 = __swift_project_boxed_opaque_existential_1Tm(v2 + 14, v40);
  v43 = *(v40 - 8);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v46, v44);
  LOBYTE(v41) = (*(v41 + 32))(v40, v41);
  (*(v43 + 8))(v46, v40);
  v109 = MEMORY[0x1E69E6370];
  LOBYTE(v108[0]) = v41 & 1;
  sub_1E1AF38BC();
  sub_1E1308058(v108, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v47 = *(v2 + 17);
  v48 = *(v2 + 18);
  v49 = __swift_project_boxed_opaque_existential_1Tm(v2 + 14, v47);
  v91 = &v89;
  v50 = *(v47 - 8);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v89 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 16))(v53, v51);
  v54 = v92;
  (*(v48 + 8))(v47, v48);
  (*(v50 + 8))(v53, v47);
  v55 = sub_1E1AF527C();
  (*(v93 + 8))(v54, v94);
  v56 = [v55 expirationDate];
  swift_unknownObjectRelease();
  if (v56)
  {
    v57 = v100;
    sub_1E1AEFE3C();

    v58 = 0;
    v60 = v101;
    v59 = v102;
  }

  else
  {
    v58 = 1;
    v60 = v101;
    v59 = v102;
    v57 = v100;
  }

  v61 = v99;
  v62 = 1819047278;
  (*(v60 + 56))(v57, v58, 1, v59);
  sub_1E1380BEC(v57, v61);
  if ((*(v60 + 48))(v61, 1, v59) == 1)
  {
    sub_1E1308058(v57, &unk_1ECEBB780, &unk_1E1B029A0);
    v109 = MEMORY[0x1E69E6158];
  }

  else
  {
    v63 = v90;
    (*(v60 + 32))(v90, v61, v59);
    v64 = sub_1E1AEFD7C();
    v66 = v65;
    (*(v60 + 8))(v63, v59);
    sub_1E1308058(v57, &unk_1ECEBB780, &unk_1E1B029A0);
    v109 = MEMORY[0x1E69E6158];
    if (v66)
    {
      v62 = v64;
      goto LABEL_11;
    }
  }

  v66 = 0xE400000000000000;
LABEL_11:
  v108[0] = v62;
  v108[1] = v66;
  sub_1E1AF38BC();
  sub_1E1308058(v108, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v67 = *(v2 + 17);
  v68 = *(v2 + 18);
  v69 = __swift_project_boxed_opaque_existential_1Tm(v2 + 14, v67);
  v70 = *(v67 - 8);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v73 = &v89 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v70 + 16))(v73, v71);
  LOBYTE(v68) = (*(v68 + 16))(v67, v68);
  (*(v70 + 8))(v73, v67);
  v109 = MEMORY[0x1E69E6370];
  LOBYTE(v108[0]) = v68 & 1;
  sub_1E1AF38BC();
  sub_1E1308058(v108, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v74 = v103;
  v109 = v103;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v108);
  v96(boxed_opaque_existential_0, &v2[v98], v74);
  sub_1E1AF38BC();
  sub_1E1308058(v108, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  v109 = MEMORY[0x1E69E63B0];
  *v108 = v36;
  sub_1E1AF38BC();
  sub_1E1308058(v108, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v76 = v105;
  v77 = v107;
  sub_1E1AF548C();

  (*(v104 + 8))(v77, v76);
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1DCE00 != -1)
  {
    swift_once();
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_project_value_buffer(v78, qword_1EE1DCE08);
  sub_1E1AF3C8C();

  if (LOBYTE(v108[0]) == 2 || (v108[0] & 1) == 0)
  {
    if (v24 <= 0.0 || v24 > v36)
    {
      if (v32 > 0.0 && v32 <= v36 && (v81 = *(v2 + 17), v82 = *(v2 + 18), v83 = __swift_project_boxed_opaque_existential_1Tm(v2 + 14, v81), v84 = *(v81 - 8), v85 = MEMORY[0x1EEE9AC00](v83), v87 = &v89 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), (*(v84 + 16))(v87, v85), v88 = (*(v82 + 32))(v81, v82), result = (*(v84 + 8))(v87, v81), (v88 & 1) != 0))
      {
        v80 = 2;
      }

      else
      {
        v80 = 0;
      }
    }

    else
    {
      v80 = 4;
    }
  }

  else
  {
    v80 = 1;
  }

  *v106 = v80;
  return result;
}

uint64_t sub_1E163E2E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = type metadata accessor for JSFreshnessWatchdog.BagContract(0);
  v11[4] = &protocol witness table for JSFreshnessWatchdog.BagContract;
  v11[0] = a1;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  sub_1E1AF3F5C();
  sub_1E1300B24(v11, a4 + 112);
  sub_1E1300B24(a2, a4 + 24);
  *(a4 + 16) = a3;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v8);
  LOBYTE(a3) = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v11);
  *(a4 + 64) = a3 & 1;
  __swift_destroy_boxed_opaque_existential_1(a2);
  return a4;
}

uint64_t sub_1E163E3D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(v6 - 8) + 32))(boxed_opaque_existential_0, a1, v6);
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  sub_1E1AF3F5C();
  sub_1E1300B24(v15, a4 + 112);
  sub_1E1300B24(a2, a4 + 24);
  *(a4 + 16) = a3;
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v12);
  LOBYTE(v6) = (*(v13 + 8))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v15);
  *(a4 + 64) = v6 & 1;
  __swift_destroy_boxed_opaque_existential_1(a2);
  return a4;
}

uint64_t sub_1E163E4E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a1, a5);
  return sub_1E163E3D0(v13, a2, a3, v14, a5, a6);
}

unint64_t sub_1E163E60C()
{
  result = qword_1ECEB7190;
  if (!qword_1ECEB7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7190);
  }

  return result;
}

uint64_t sub_1E163E700(uint64_t a1)
{
  result = sub_1E1AF3F6C();
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

uint64_t sub_1E163E808(uint64_t a1)
{
  result = sub_1E1AF539C();
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

uint64_t sub_1E163E910@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E163E978@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50, "~9\b");
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - v4;
  v6 = sub_1E1AF27EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v10 + 56);

  if (v11 == 1)
  {
    v13 = sub_1E1AF2B1C();
  }

  else
  {
    v13 = sub_1E1AF2B2C();
  }

  v14 = v13;
  v15 = sub_1E1AF2ABC();
  sub_1E1AF2ABC();

  sub_1E1AF2B1C();

  v16 = sub_1E1AF274C();
  sub_1E1AF275C();
  (*(v7 + 104))(v9, *MEMORY[0x1E6980E98], v6);
  sub_1E1AF280C();

  (*(v7 + 8))(v9, v6);
  sub_1E1AF275C();

  type metadata accessor for LinkableTextViewModel(0);
  v17 = swift_allocObject();

  sub_1E142E020(v18);
  v20 = v19;

  if (*(v20 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37B8, &qword_1E1B216E0);
    v21 = sub_1E1AF72CC();
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC8];
  }

  v30[0] = v21;

  sub_1E142E5BC(v22, 1, v30);

  *(v17 + qword_1ECEB46A0) = v30[0];
  v17[3] = v15;
  v17[4] = v14;
  LinkableText.asMarkdownAttributedString()(v5);
  v23 = sub_1E1AEF91C();
  if ((*(*(v23 - 8) + 48))(v5, 1, v23))
  {
  }

  else
  {
    v30[0] = v16;
    sub_1E142E9DC();
    sub_1E1AEF93C();
  }

  sub_1E163EF50(v5, v17 + qword_1ECEB4698);
  v17[2] = v12;
  sub_1E142E974(v5);
  *(a1 + 16) = swift_getKeyPath(byte_1E1B216E8);
  *(a1 + 56) = 0;
  v24 = type metadata accessor for LinkableTextView(0);
  v25 = v24[8];
  *(a1 + v25) = swift_getKeyPath(byte_1E1B21718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6DC0, &qword_1E1B3EB70);
  swift_storeEnumTagMultiPayload();
  v26 = a1 + v24[9];
  *v26 = swift_getKeyPath(byte_1E1B21750);
  *(v26 + 8) = 0;
  v27 = a1 + v24[10];
  *v27 = swift_getKeyPath("X%;\v");
  *(v27 + 8) = 0;
  v28 = a1 + v24[11];
  result = swift_getKeyPath("0%;\v");
  *v28 = result;
  *(v28 + 8) = 0;
  *a1 = v17;
  *(a1 + 8) = 256;
  return result;
}

uint64_t sub_1E163ED58@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  memcpy(__dst, v1 + 2, 0x188uLL);
  memcpy(&__src[7], v1 + 2, 0x188uLL);
  *a1 = v3;
  *(a1 + 8) = v4;
  memcpy((a1 + 9), __src, 0x18FuLL);

  return sub_1E141D08C(__dst, v6);
}

uint64_t sub_1E163EDE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
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

uint64_t sub_1E163EE28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E163EEE0()
{
  result = qword_1ECEB7198;
  if (!qword_1ECEB7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7198);
  }

  return result;
}

uint64_t sub_1E163EF50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50, "~9\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E163EFC0()
{
  result = qword_1ECEB71A0;
  if (!qword_1ECEB71A0)
  {
    type metadata accessor for LinkableTextView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB71A0);
  }

  return result;
}

double sub_1E163F03C@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(*(*v1 + qword_1EE2168A8) + 240);
  if (v2)
  {
    sub_1E134FD1C(v2 + 144, a1, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void static ProductShelfOrderingId.defaultOrdering.setter(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1ECEB71A8 = v1;
}

AppStoreKit::ProductShelfOrderingId_optional __swiftcall ProductShelfOrderingId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ProductShelfOrderingId.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  if (v2 > 5)
  {
    v6 = 0xD000000000000021;
    v7 = 0xD00000000000001BLL;
    if (v2 != 10)
    {
      v7 = 0xD000000000000029;
    }

    if (v2 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000013;
    if (v2 == 7)
    {
      v8 = 0xD000000000000027;
    }

    if (v2 == 6)
    {
      v8 = 0xD000000000000019;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD00000000000001FLL;
    v4 = 0xD00000000000001CLL;
    if (v2 != 4)
    {
      v4 = 0xD00000000000002ALL;
    }

    if (v2 != 3)
    {
      v3 = v4;
    }

    if (v2 == 1)
    {
      v1 = 0xD000000000000022;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000014;
    }

    if (*v0 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1E163F338()
{
  v0 = ProductShelfOrderingId.rawValue.getter();
  v2 = v1;
  if (v0 == ProductShelfOrderingId.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E1AF74AC();
  }

  return v5 & 1;
}

uint64_t sub_1E163F3D4()
{
  sub_1E1AF762C();
  ProductShelfOrderingId.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E163F43C(uint64_t a1)
{
  ProductShelfOrderingId.rawValue.getter();
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E163F4A0(uint64_t a1)
{
  sub_1E1AF762C();
  ProductShelfOrderingId.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

unint64_t sub_1E163F510@<X0>(unint64_t *a1@<X8>)
{
  result = ProductShelfOrderingId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *ShelfBasedProductPage.init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v142 = a2;
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v130 = &v117[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v124 = &v117[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v122 = &v117[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v117[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v117[-v14];
  v137 = sub_1E1AF380C();
  v132 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v129 = &v117[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v128 = &v117[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v127 = &v117[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v117[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v125 = &v117[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v123 = &v117[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v117[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v117[-v31];
  v33 = qword_1EE2168C8;
  v136 = v2;
  *(v2 + qword_1EE2168C8) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Lockup(0);
  v144 = a1;
  sub_1E1AF381C();
  v133 = v5;
  v34 = v5 + 16;
  v35 = *(v5 + 16);
  v36 = v142;
  v139 = v35;
  v140 = v34;
  v35(v15);
  sub_1E16453D4(&qword_1EE1E4F60, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  v134 = v15;
  sub_1E1AF464C();
  v37 = v145;
  if (v145)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v120 = v33;
    v143 = v4;
    *(v136 + qword_1EE2168A8) = v145;
    v121 = v37;

    sub_1E1AF381C();
    v39 = sub_1E1AF370C();
    v135 = *(v132 + 8);
    v138 = v132 + 8;
    v135(v29, v137);
    if (v39 == 2 || (v39 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
      v42 = swift_allocObject();
      *(v42 + 16) = v38;
      v145 = v42;
      v40 = v122;
      if (qword_1EE1E3BC8 != -1)
      {
        swift_once();
      }

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
      __swift_project_value_buffer(v43, qword_1EE1E3BD0);
      sub_1E1AF395C();

      v118 = 0;
    }

    else
    {
      v40 = v122;
      if (qword_1EE1E3BC8 != -1)
      {
        swift_once();
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
      __swift_project_value_buffer(v41, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
      sub_1E1AF396C();
      v118 = 1;
    }

    v44 = v141;
    (*(v133 + 32))(v141, v40, v143);
    v45 = type metadata accessor for Action(0);
    sub_1E1AF381C();
    v46 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v44);
    v47 = v137;
    v48 = v135;
    v135(v32, v137);
    v49 = v136;
    *(v136 + qword_1EE216950) = v46;
    sub_1E1AF381C();
    v50 = v141;
    v51 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v141);
    v48(v32, v47);
    *(v49 + qword_1EE216940) = v51;
    sub_1E1AF381C();
    v122 = v45;
    v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v50);
    v48(v32, v47);
    *(v49 + qword_1EE2158C8) = v52;
    v53 = v123;
    sub_1E1AF381C();
    v54 = v124;
    v55 = v143;
    v139(v124, v142);
    type metadata accessor for Uber();
    swift_allocObject();
    v56 = v131;
    Uber.init(deserializing:using:)(v53, v54);
    if (v56)
    {

      v57 = 0;
    }

    v124 = 0;
    v61 = v136;
    *(v136 + qword_1EE2168D0) = v57;
    type metadata accessor for Artwork(0);
    sub_1E1AF381C();
    v62 = v134;
    v63 = v141;
    (v139)(v134, v141, v55);
    v131 = sub_1E16453D4(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_1E1AF464C();
    *(v61 + qword_1EE216958) = v145;
    v123 = 0xD000000000000018;
    sub_1E1AF381C();
    v64 = v63;
    v65 = v143;
    v66 = v139;
    (v139)(v62, v64, v143);
    sub_1E1AF464C();
    *(v61 + qword_1EE2168F8) = v145;
    sub_1E1AF381C();
    v67 = v141;
    v66(v62, v141, v65);
    type metadata accessor for Badge(0);
    sub_1E16453D4(&qword_1EE1E58C0, type metadata accessor for Badge, &protocol conformance descriptor for Badge);
    *(v61 + qword_1EE2168B8) = sub_1E1AF630C();
    type metadata accessor for ProductPageExpandedOfferDetails();
    sub_1E1AF381C();
    v66(v62, v67, v65);
    sub_1E16453D4(qword_1EE1E7CF0, type metadata accessor for ProductPageExpandedOfferDetails, &protocol conformance descriptor for ProductPageExpandedOfferDetails);
    sub_1E1AF464C();
    v68 = v136;
    *(v136 + qword_1EE216918) = v145;
    v119 = 0xD000000000000015;
    sub_1E1AF381C();
    v69 = sub_1E1AF37CC();
    v71 = v70;
    v72 = v137;
    v73 = v135;
    v135(v32, v137);
    v74 = (v68 + qword_1EE216908);
    *v74 = v69;
    v74[1] = v71;
    sub_1E1AF381C();
    sub_1E147A7C0();
    sub_1E1AF369C();
    v73(v32, v72);
    *(v68 + qword_1EE2168C0) = v145;
    sub_1E1AF381C();
    v75 = sub_1E1AF36EC();
    LOBYTE(v71) = v76;
    v73(v32, v72);
    v77 = v68 + qword_1EE2168F0;
    *v77 = v75;
    *(v77 + 8) = v71 & 1;
    sub_1E1AF381C();
    v78 = sub_1E1AF37CC();
    v80 = v79;
    v73(v32, v72);
    v81 = (v68 + qword_1EE216930);
    *v81 = v78;
    v81[1] = v80;
    sub_1E1AF381C();
    v82 = JSONObject.appStoreColor.getter();
    v73(v32, v72);
    *(v68 + qword_1EE216900) = v82;
    sub_1E1AF381C();
    v83 = JSONObject.appStoreColor.getter();
    v73(v32, v72);
    *(v68 + qword_1EE2168E0) = v83;
    sub_1E1AF381C();
    LOBYTE(v83) = sub_1E1AF370C();
    v73(v32, v72);
    *(v68 + qword_1EE2168E8) = v83;
    sub_1E1AF381C();
    (v139)(v134, v141, v143);
    type metadata accessor for ProductMedia();
    sub_1E16453D4(&qword_1EE1F5BB0, type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
    v84 = sub_1E1AF630C();
    v85 = v120;
    swift_beginAccess();
    *(v68 + v85) = v84;

    v86 = v68 + qword_1EE2158C0;
    *v86 = 0u;
    *(v86 + 16) = 0u;
    *(v86 + 32) = 0u;
    *(v86 + 48) = 0;
    sub_1E1AF381C();
    v87 = sub_1E1AF37CC();
    v89 = v88;
    v73(v32, v72);
    v90 = (v68 + qword_1EE216928);
    *v90 = v87;
    v90[1] = v89;
    type metadata accessor for OfferDisplayProperties();
    sub_1E1AF381C();
    v91 = v134;
    v92 = v143;
    v93 = v139;
    (v139)(v134, v142, v143);
    sub_1E16453D4(&qword_1EE1EC410, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
    sub_1E1AF464C();
    *(v68 + qword_1EE2168D8) = v146;
    v131 = type metadata accessor for Banner();
    sub_1E1AF381C();
    v94 = v142;
    v93(v91, v142, v92);
    v120 = sub_1E16453D4(&qword_1EE1E5068, type metadata accessor for Banner, &protocol conformance descriptor for Banner);
    sub_1E1AF464C();
    *(v68 + qword_1EE2168B0) = v146;
    type metadata accessor for AppStateBanner();
    sub_1E1AF381C();
    v93(v91, v94, v143);
    sub_1E16453D4(qword_1EE1F92F8, type metadata accessor for AppStateBanner, &protocol conformance descriptor for AppStateBanner);
    sub_1E1AF464C();
    *(v68 + qword_1EE216948) = v146;
    sub_1E1AF381C();
    v93(v91, v94, v143);
    sub_1E1AF464C();
    *(v68 + qword_1EE216938) = v146;
    v95 = v125;
    sub_1E1AF381C();
    v96 = v124;
    v97 = static Action.makeInstance(byDeserializing:using:)(v95, v94);
    if (v96)
    {

      v98 = 0;
    }

    else
    {
      v98 = v97;
    }

    v99 = v127;
    v100 = v126;
    v101 = v95;
    v102 = v137;
    v103 = v135;
    v135(v101, v137);
    *(v68 + qword_1EE216960) = v98;
    sub_1E1AF381C();
    v104 = static Action.makeInstance(byDeserializing:using:)(v100, v94);
    v103(v100, v102);
    *(v68 + qword_1EE216910) = v104;
    sub_1E1AF381C();
    v105 = static Action.makeInstance(byDeserializing:using:)(v99, v94);
    v103(v99, v102);
    *(v68 + qword_1EE216968) = v105;
    v106 = v128;
    v107 = v144;
    sub_1E1AF381C();
    LOBYTE(v105) = sub_1E1AF370C();
    v103(v106, v102);
    *(v68 + qword_1EE216920) = v105 & 1;
    v108 = v129;
    (*(v132 + 16))(v129, v107, v102);
    v109 = v130;
    (v139)(v130, v141, v143);
    v15 = sub_1E163300C(v108, v109);
    if (v118)
    {

      v111 = v142;
      v110 = v143;
      v112 = v144;
    }

    else
    {
      v113 = qword_1EE1E3BC8;

      v111 = v142;
      v112 = v144;
      if (v113 != -1)
      {
        swift_once();
      }

      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
      __swift_project_value_buffer(v114, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
      sub_1E1AF39EC();
      if (v146)
      {

        sub_1E15F0974();
      }

      v110 = v143;
    }

    v115 = *(v133 + 8);
    v115(v111, v110);
    v135(v112, v102);
    v115(v141, v110);
  }

  else
  {
    v58 = sub_1E1AF5A7C();
    sub_1E16453D4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v60 = v59;
    *v59 = type metadata accessor for ShelfBasedProductPage(0);
    v60[1] = MEMORY[0x1E69E7CC0];
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69AB698], v58);
    swift_willThrow();
    (*(v133 + 8))(v36, v4);
    (*(v132 + 8))(v144, v137);

    swift_deallocPartialClassInstance();
  }

  return v15;
}

void *sub_1E1640BAC(uint64_t a1)
{

  return _s11AppStoreKit21ShelfBasedProductPageC4from04fullF13FetchedActionACSgAF_AA0K0CtcfC_0(v2, a1);
}

double sub_1E1640C3C@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(*(v1 + qword_1EE2168A8) + 240);
  if (v2)
  {
    sub_1E134FD1C(v2 + 144, a1, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t ShelfBasedProductPage.regularPriceFormatted.getter()
{
  v1 = *(v0 + qword_1EE216908);

  return v1;
}

uint64_t ShelfBasedProductPage.updateBuyParams.getter()
{
  v1 = *(v0 + qword_1EE216930);

  return v1;
}

void ShelfBasedProductPage.askToBuy.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + qword_1EE2158C0);
  v3 = *(v1 + qword_1EE2158C0 + 8);
  v4 = *(v1 + qword_1EE2158C0 + 16);
  v5 = *(v1 + qword_1EE2158C0 + 24);
  v6 = *(v1 + qword_1EE2158C0 + 32);
  v7 = *(v1 + qword_1EE2158C0 + 40);
  v8 = *(v1 + qword_1EE2158C0 + 48);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_1E1475BB8(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t ShelfBasedProductPage.mediaSectionTitle.getter()
{
  v1 = *(v0 + qword_1EE216928);

  return v1;
}

double sub_1E1640DDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EE2168C8;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1E1640E44()
{
  swift_beginAccess();

  return result;
}

void *ShelfBasedProductPage.pageTopBackgroundColor.getter()
{
  v1 = *(v0 + qword_1EE216900);
  v2 = v1;
  return v1;
}

void *ShelfBasedProductPage.pageBottomBackgroundColor.getter()
{
  v1 = *(v0 + qword_1EE2168E0);
  v2 = v1;
  return v1;
}

uint64_t sub_1E1640F80()
{

  sub_1E147A814(*(v0 + qword_1EE2158C0), *(v0 + qword_1EE2158C0 + 8), *(v0 + qword_1EE2158C0 + 16), *(v0 + qword_1EE2158C0 + 24), *(v0 + qword_1EE2158C0 + 32), *(v0 + qword_1EE2158C0 + 40), *(v0 + qword_1EE2158C0 + 48));
}

char *ShelfBasedProductPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + *(*v0 + 192), &qword_1ECEB2DF0, &unk_1E1B02CE0);

  sub_1E147A814(*(v0 + qword_1EE2158C0), *(v0 + qword_1EE2158C0 + 8), *(v0 + qword_1EE2158C0 + 16), *(v0 + qword_1EE2158C0 + 24), *(v0 + qword_1EE2158C0 + 32), *(v0 + qword_1EE2158C0 + 40), *(v0 + qword_1EE2158C0 + 48));

  return v0;
}

uint64_t ShelfBasedProductPage.__deallocating_deinit()
{
  ShelfBasedProductPage.deinit();

  return swift_deallocClassInstance();
}

void *_s11AppStoreKit21ShelfBasedProductPageC4fromACSgAA0fG0CSg_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v235 = &v220[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v251 = &v220[-v5];
  MEMORY[0x1EEE9AC00](v6);
  v252 = &v220[-v7];
  v259 = sub_1E1AF3C3C();
  v257 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v256 = &v220[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v220[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v220[-v13];
  v15 = sub_1E1AEFCCC();
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v245 = &v220[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0, &unk_1E1B39700);
  v248 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v263 = &v220[-v18];
  v266 = sub_1E1AEFEAC();
  *&v261 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v250 = &v220[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v220[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v220[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v220[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v220[-v30];
  if (!a1)
  {
    return 0;
  }

  v247 = v11;
  v258 = v14;
  v32 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();
  v260 = a1;
  v33 = *(a1 + v32);
  v295 = 0;
  memset(v294, 0, sizeof(v294));
  v34 = *(v16 + 7);
  v255 = v31;
  v34(v31, 1, 1, v15);
  v35 = sub_1E1AEFE6C();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  v36 = sub_1E1AF46DC();
  (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  v254 = v28;
  v34(v28, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8, &qword_1E1B02F60);
  swift_allocObject();
  v246 = v33;

  v253 = sub_1E1AF35CC();
  v262 = type metadata accessor for Shelf(0);
  v265 = swift_allocObject();
  sub_1E134FD1C(v294, &v288, &unk_1ECEB5670, qword_1E1B03EC0);
  v243 = v16;
  v244 = v15;
  if (*(&v289 + 1))
  {
    v291 = v288;
    v292 = v289;
    v293 = v290;
  }

  else
  {
    v38 = v250;
    sub_1E1AEFE9C();
    v39 = sub_1E1AEFE7C();
    v41 = v40;
    (*(v261 + 8))(v38, v266);
    *&v284 = v39;
    *(&v284 + 1) = v41;
    sub_1E1AF6F6C();
    sub_1E1308058(&v288, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v42 = v265;
  v43 = v265 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v44 = v292;
  *v43 = v291;
  *(v43 + 16) = v44;
  *(v43 + 32) = v293;
  v250 = v22;
  sub_1E134FD1C(v22, v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v42 + 16) = 25600;
  *(v42 + 18) = 0;
  v45 = MEMORY[0x1E69E7CC0];
  *(v42 + 24) = MEMORY[0x1E69E7CC0];
  LOBYTE(v284) = 0;
  *(v42 + 32) = sub_1E1956360(v45, &v284);
  sub_1E134FD1C(v255, v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = 0;
  v46 = (v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  *v46 = 0x6E6F6D6D6F63;
  v46[1] = 0xE600000000000000;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = 0;
  *(v42 + 40) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = 0;
  v47 = v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  *(v47 + 32) = 0u;
  *(v47 + 48) = 3221225472;
  v48 = (v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v48 = 0;
  v48[1] = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
  v249 = v25;
  sub_1E134FD1C(v25, v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780, &unk_1E1B029A0);
  sub_1E134FD1C(v254, v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = 1;
  v49 = v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0x8000;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v253;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v45;
  v50 = *(v42 + 24);
  v51 = sub_1E13C50E8();

  v52 = 0;
  v287 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v51);
  v266 = v50 + 32;
  v261 = xmmword_1E1B16440;
  v53 = &qword_1ECEB55A8;
  while (2)
  {
    while (2)
    {
      v54 = 0uLL;
      v55 = *(v50 + 16);
      if (v52 == v55)
      {
LABEL_8:
        v273 = 0;
        v52 = v55;
        v271 = v54;
        v272 = v54;
        goto LABEL_12;
      }

      while (1)
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v52 >= *(v50 + 16))
        {
          goto LABEL_39;
        }

        sub_1E1300B24(v266 + 40 * v52++, &v271);
LABEL_12:
        v269[0] = v271;
        v269[1] = v272;
        v270 = v273;
        if (!*(&v272 + 1))
        {
          memset(v274, 0, 24);
          *(&v274[1] + 8) = v261;
LABEL_20:
          sub_1E1308058(v274, &qword_1ECEB55B8, &qword_1E1B16450);
          v280 = 0;
          v278 = 0u;
          v279 = 0u;
LABEL_21:
          sub_1E1308058(&v278, &qword_1ECEB55B0, &unk_1E1B219E0);
          v284 = 0u;
          v285 = 0u;
          v286 = 0;
          goto LABEL_22;
        }

        sub_1E1308EC0(v269, v268);
        sub_1E1300B24(v268, &v267);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8, &qword_1E1B2E400);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v274, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v268);
        if (*(&v274[1] + 1) == 1)
        {
          goto LABEL_20;
        }

        v275 = v274[0];
        v276 = v274[1];
        v277 = *&v274[2];
        if (*(&v274[1] + 1))
        {
          break;
        }

        sub_1E1308058(&v275, &qword_1ECEB55B0, &unk_1E1B219E0);
        v54 = 0uLL;
        if (v52 == v55)
        {
          goto LABEL_8;
        }
      }

      *(&v276 + 1) = *(&v274[1] + 1);
      result = sub_1E134FD1C(&v275, v274, &qword_1ECEB55B0, &unk_1E1B219E0);
      if (!*(&v274[1] + 1))
      {
        goto LABEL_155;
      }

      sub_1E1308EC0(v274, &v278);
      sub_1E1308058(&v275, &qword_1ECEB55B0, &unk_1E1B219E0);
      if (!*(&v279 + 1))
      {
        goto LABEL_21;
      }

      sub_1E1308EC0(&v278, &v281);
      v58 = *(&v282 + 1);
      v59 = v283;
      v60 = __swift_project_boxed_opaque_existential_1Tm(&v281, *(&v282 + 1));
      v61 = v58;
      v51 = v60;
      if ((PersonalizableModel.needsClientPersonalization.getter(v61, v59) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v281);
        continue;
      }

      break;
    }

    sub_1E1308EC0(&v281, &v284);
LABEL_22:
    v281 = v284;
    v282 = v285;
    v283 = v286;
    if (*(&v285 + 1))
    {
      sub_1E1308EC0(&v281, &v278);
      v56 = *(&v279 + 1);
      v57 = v280;
      __swift_project_boxed_opaque_existential_1Tm(&v278, *(&v279 + 1));
      (*(v57 + 16))(&v275, v56, v57);
      LOBYTE(v57) = v275;
      __swift_destroy_boxed_opaque_existential_1(&v278);
      v51 = &v287;
      sub_1E1893F1C(&v284, v57);
      continue;
    }

    break;
  }

  v62 = v265;
  *(v265 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v287;
  v63 = (v62 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  *v63 = 0u;
  v63[1] = 0u;
  v51 = *(v62 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  if (v51 >> 62)
  {
LABEL_40:
    v64 = sub_1E1AF71CC();
    v66 = v249;
    v65 = v250;
    if (v64)
    {
      goto LABEL_31;
    }

LABEL_41:

    goto LABEL_42;
  }

  v64 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v66 = v249;
  v65 = v250;
  if (!v64)
  {
    goto LABEL_41;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0, &unk_1E1B16B50);
  if (v64 < 1)
  {
    goto LABEL_150;
  }

  v266 = v51 & 0xC000000000000001;
  v67 = (v248 + 8);

  v68 = 0;
  v69 = v51;
  do
  {
    if (v266)
    {
      MEMORY[0x1E68FFD80](v68, v51);
    }

    else
    {
    }

    ++v68;
    sub_1E15470BC();
    sub_1E1AF3CDC();
    v70 = v263;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(&v284);
    (*v67)(v70, v264);
    v51 = v69;
  }

  while (v64 != v68);

  v66 = v249;
  v65 = v250;
LABEL_42:
  sub_1E1308058(v254, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v65, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v66, &unk_1ECEBB780, &unk_1E1B029A0);
  sub_1E1308058(v255, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v294, &unk_1ECEB5670, qword_1E1B03EC0);
  v71 = v246;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v284 = v71;
  sub_1E1599EB8(v265, 0x756B636F4C706F74, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v73 = v284;
  *&v275 = sub_1E159FBD8(MEMORY[0x1E69E7CC0]);
  v65 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering;
  v53 = *(v260 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering);
  v265 = v73;
  if (!v53)
  {
    v75 = 0;
    goto LABEL_71;
  }

  if (v53 >> 62)
  {
    goto LABEL_151;
  }

  v74 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
  v75 = MEMORY[0x1E69E7CC0];
  if (!v74)
  {
LABEL_71:
    v91 = v260;
    sub_1E1387250(v75, 2);
    v92 = *(v91 + v65);
    if (v92)
    {
      if (v92 >> 62)
      {
        v93 = sub_1E1AF71CC();
      }

      else
      {
        v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v94 = MEMORY[0x1E69E7CC0];
      if (v93)
      {
        *&v278 = MEMORY[0x1E69E7CC0];
        result = sub_1E135C2E8(0, v93 & ~(v93 >> 63), 0);
        if (v93 < 0)
        {
          goto LABEL_154;
        }

        v95 = 0;
        v94 = v278;
        do
        {
          if ((v92 & 0xC000000000000001) != 0)
          {
            v96 = MEMORY[0x1E68FFD80](v95, v92);
            v97 = *(v96 + 32);
            if (!v97)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v96 = *(v92 + 8 * v95 + 32);

            v97 = *(v96 + 32);
            if (!v97)
            {
LABEL_81:
              v100 = *(v96 + 16);
              v101 = 0x68736E6565726373;
              if (v100 != 2)
              {
                v101 = 0x666C656873;
              }

              v102 = 0xEB0000000073746FLL;
              if (v100 != 2)
              {
                v102 = 0xE500000000000000;
              }

              v103 = 0x756B636F4C706F74;
              if (!*(v96 + 16))
              {
                v103 = 0x7975426F546B7361;
              }

              v104 = 0xE900000000000070;
              if (!*(v96 + 16))
              {
                v104 = 0xEF74736575716552;
              }

              if (*(v96 + 16) <= 1u)
              {
                v98 = v103;
              }

              else
              {
                v98 = v101;
              }

              if (*(v96 + 16) <= 1u)
              {
                v99 = v104;
              }

              else
              {
                v99 = v102;
              }

              goto LABEL_95;
            }
          }

          v98 = *(v96 + 24);
          v99 = v97;
LABEL_95:
          *&v281 = v98;
          *(&v281 + 1) = v99;

          sub_1E1AF6F6C();

          *&v278 = v94;
          v106 = *(v94 + 16);
          v105 = *(v94 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_1E135C2E8((v105 > 1), v106 + 1, 1);
            v94 = v278;
          }

          ++v95;
          *(v94 + 16) = v106 + 1;
          v107 = v94 + 40 * v106;
          v108 = v284;
          v109 = v285;
          *(v107 + 64) = v286;
          *(v107 + 32) = v108;
          *(v107 + 48) = v109;
        }

        while (v93 != v95);
      }
    }

    else
    {
      v94 = 0;
    }

    v110 = v260;
    sub_1E1387250(v94, 0);
    v111 = *(v110 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtworkForCompactDisplay);
    v112 = *(v110 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberStyle);
    v113 = *(v110 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtwork);
    v114 = *(v110 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberVideo);
    v65 = *(v110 + 48);
    v255 = type metadata accessor for Uber();
    v253 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2728, &qword_1E1B219F0);
    v115 = swift_allocObject();
    if (v113)
    {
      v116 = *(v113 + 16);

      v115[4] = v116;
      v115[5] = v117;
      if (v111)
      {
LABEL_102:
        v118 = *(v111 + 16);

LABEL_105:
        v115[6] = v118;
        v115[7] = v119;
        v120 = *&aBackgrou_0[8 * v112 + 8];
        v115[8] = *&aAbove_4[8 * v112];
        v115[9] = v120;
        v246 = v111;
        v266 = v65;
        v263 = v114;
        v264 = v113;
        if (v114)
        {
          v262 = v112;
          v121 = v243;
          v122 = v244;
          *&v261 = *(v243 + 2);
          v123 = v245;
          (v261)(v245, v114 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl, v244);

          swift_retain_n();
          swift_retain_n();

          v124 = sub_1E1AEFBDC();
          v126 = v125;
          v127 = *(v121 + 1);
          v127(v123, v122);
          v115[10] = v124;
          v115[11] = v126;
          (v261)(v123, v114 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl, v122);
          v114 = sub_1E1AEFBDC();
          v129 = v128;
          v130 = v122;
          v65 = v266;
          v127(v123, v130);
          LOBYTE(v112) = v262;
        }

        else
        {
          v115[10] = 0;
          v115[11] = 0;

          swift_retain_n();

          v129 = 0;
        }

        v112 = v112;
        v115[12] = v114;
        v115[13] = v129;
        if (v65)
        {
          v131 = *(v65 + 16);
        }

        else
        {
          v131 = 0;
          v132 = 0;
        }

        v133 = v246;
        v53 = 0;
        v115[14] = v131;
        v115[15] = v132;
        v115[16] = 0;
        v115[17] = 0;
        v134 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v135 = 7;
          if (v53 > 7)
          {
            v135 = v53;
          }

          v136 = (v135 + 1);
          v137 = 16 * v53 + 40;
          do
          {
            if (v53 == 7)
            {
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40, &unk_1E1B02B90);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v146 = sub_1E1AF637C();

              *&v281 = v146;
              sub_1E1AF6F6C();
              v147 = v285;
              v148 = v253;
              *(v253 + 80) = v284;
              *(v148 + 96) = v147;
              *(v148 + 112) = v286;
              *(v148 + 16) = v112;
              v150 = v263;
              v149 = v264;
              *(v148 + 24) = v264;
              v151 = v133;
              if (!v133)
              {

                v151 = v149;
              }

              v152 = v150 != 0;
              *(v148 + 32) = v151;
              *(v148 + 40) = v150;
              *(v148 + 48) = v150;
              *(v148 + 56) = v65;
              *(v148 + 64) = 0;
              *(v148 + 72) = 0;
              v153 = v150 | v149;
              v154 = v257;
              v155 = v260;
              if (v153)
              {
LABEL_133:
                *(v148 + 17) = v152;
                v234 = 40;
              }

              else
              {
                if (v65)
                {

                  v156 = ASKDeviceTypeGetCurrent();
                  v157 = sub_1E1AF5DFC();
                  v159 = v158;
                  if (v157 == sub_1E1AF5DFC() && v159 == v160)
                  {

                    goto LABEL_132;
                  }

                  v161 = sub_1E1AF74AC();

                  if (v161)
                  {
LABEL_132:
                    v152 = 2;
                    v148 = v253;
                    goto LABEL_133;
                  }

                  v148 = v253;
                }

                sub_1E134B88C(v148 + 80);
                swift_deallocPartialClassInstance();
                v234 = 0;
                v253 = 0;
              }

              sub_1E14C6348(v265);
              v227 = v162;

              v284 = 0u;
              v285 = 0u;
              LODWORD(v233) = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_isComplete);
              v226 = v275;
              v241 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRefreshPolicy);
              v163 = *(v154 + 16);
              v224 = v154 + 16;
              v225 = v163;
              v163(v258, (v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageMetrics), v259);
              v242 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRenderEvent);
              v255 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_banner);
              v263 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_secondaryBanner);
              v240 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_badges);
              v264 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_expandedOfferDetails);
              v164 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_regularPriceFormatted + 8);
              v232 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_regularPriceFormatted);
              v239 = v164;
              v231 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_externalVersionIdentifier);
              LODWORD(v230) = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_externalVersionIdentifier + 8);
              *&v261 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_titleOfferDisplayProperties);
              v165 = v155;
              v166 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_updateBuyParams + 8);
              v229 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_updateBuyParams);
              v245 = v166;
              v167 = v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy;
              v262 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_logoArtwork);
              v265 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_navigationBarIconArtwork);
              v168 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 8);
              v237 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
              v238 = v168;
              v223 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_theme);
              v222 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_hasDarkUserInterfaceStyle);
              v169 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 24);
              v236 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 16);
              v243 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageTopBackgroundColor);
              v244 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageBottomBackgroundColor);
              v171 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 32);
              v170 = *(v167 + 40);
              v266 = *(v165 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_shareAction);
              v172 = *(v167 + 48);
              v254 = *(v165 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_developerAction);
              v250 = *(v165 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_ageRatingAction);
              v249 = *(v165 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_fullProductFetchedAction);
              v248 = *(v165 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_appPromotionDetailPageAction);
              v173 = *(v165 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_mediaSectionTitle + 8);
              v228 = *(v165 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_mediaSectionTitle);
              v221 = *(v165 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_alwaysAllowReviews);
              type metadata accessor for ShelfBasedProductPage(0);
              v174 = swift_allocObject();
              v175 = qword_1EE2168C8;
              v176 = MEMORY[0x1E69E7CC0];
              *(v174 + qword_1EE2168C8) = MEMORY[0x1E69E7CC0];
              *(v174 + qword_1EE2168A8) = v165;
              *(v174 + qword_1EE2168B0) = v255;
              *(v174 + qword_1EE216948) = 0;
              *(v174 + qword_1EE216938) = v263;
              *(v174 + qword_1EE2168B8) = v240;
              *(v174 + qword_1EE216918) = v264;
              v177 = (v174 + qword_1EE216908);
              v178 = v239;
              *v177 = v232;
              v177[1] = v178;
              v179 = v174 + qword_1EE2168F0;
              *v179 = v231;
              v179[8] = v230;
              v180 = (v174 + qword_1EE216930);
              v181 = v245;
              *v180 = v229;
              v180[1] = v181;
              *(v174 + qword_1EE2168D8) = v261;
              v182 = (v174 + qword_1EE2158C0);
              v183 = v238;
              *v182 = v237;
              v182[1] = v183;
              v182[2] = v236;
              v182[3] = v169;
              v231 = v170;
              v232 = v169;
              v229 = v172;
              v230 = v171;
              v182[4] = v171;
              v182[5] = v170;
              v182[6] = v172;
              *(v174 + qword_1EE2168D0) = v253;
              *(v174 + qword_1EE216958) = v262;
              *(v174 + qword_1EE2168F8) = v265;
              v184 = (v174 + qword_1EE216928);
              *v184 = v228;
              v184[1] = v173;
              v228 = v173;
              swift_beginAccess();
              *(v174 + v175) = v176;
              v185 = v222;
              *(v174 + qword_1EE2168C0) = v223;
              *(v174 + qword_1EE2168E8) = v185;
              v186 = v244;
              *(v174 + qword_1EE216900) = v243;
              *(v174 + qword_1EE2168E0) = v186;
              *(v174 + qword_1EE216950) = v266;
              *(v174 + qword_1EE216940) = v254;
              v187 = v249;
              *(v174 + qword_1EE2158C8) = v250;
              *(v174 + qword_1EE216960) = v187;
              *(v174 + qword_1EE216910) = 0;
              *(v174 + qword_1EE216968) = v248;
              *(v174 + qword_1EE216920) = v221;
              sub_1E134FD1C(&v284, &v281, &qword_1ECEB2DF0, &unk_1E1B02CE0);
              v188 = v247;
              v189 = v259;
              v190 = v225;
              v225(v247, v258, v259);
              v191 = v226;
              *(v174 + qword_1EE217318) = v227;
              *(v174 + qword_1EE217310) = v191;
              *(v174 + *(*v174 + 184)) = 0;
              sub_1E134FD1C(&v281, v174 + *(*v174 + 192), &qword_1ECEB2DF0, &unk_1E1B02CE0);
              *(v174 + *(*v174 + 200)) = (v233 & 1) == 0;
              *(v174 + *(*v174 + 208)) = v234;
              v192 = v256;
              v190(v256, v188, v189);
              v193 = sub_1E1AF39DC();
              v194 = *(v193 - 8);
              v195 = v252;
              (*(v194 + 56))(v252, 1, 1, v193);
              v174[2] = v241;
              v190(v174 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v192, v189);
              v233 = v174;
              *(v174 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v242;
              v196 = v251;
              sub_1E134FD1C(v195, v251, &qword_1ECEB3B28, &unk_1E1B11460);
              v234 = v194;
              v197 = *(v194 + 48);
              v227 = v193;
              LODWORD(v193) = v197(v196, 1, v193);

              v198 = v243;
              v199 = v244;

              if (v193 == 1)
              {

                sub_1E1475BB8(v237, v238, v236, v232, v230, v231, v229);

                v200 = &qword_1ECEB3B28;
                v201 = &unk_1E1B11460;
                sub_1E1308058(v195, &qword_1ECEB3B28, &unk_1E1B11460);
                v202 = *(v257 + 8);
                v203 = v259;
                v202(v256, v259);
                v202(v247, v203);
                sub_1E1308058(&v281, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                v202(v258, v203);
                sub_1E1308058(&v284, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                v204 = v196;
                goto LABEL_144;
              }

              v243 = v197;

              v244 = v198;
              v245 = v199;

              sub_1E1475BB8(v237, v238, v236, v232, v230, v231, v229);
              v205 = qword_1EE1E3BC8;

              if (v205 != -1)
              {
                swift_once();
              }

              v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
              __swift_project_value_buffer(v206, qword_1EE1E3BD0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
              v207 = v251;
              sub_1E1AF39EC();
              v208 = *&v274[0];
              if (*&v274[0])
              {
              }

              v209 = *(v234 + 8);
              v210 = v227;
              v234 += 8;
              v209(v207, v227);
              if (v208)
              {
                v211 = v252;
                v212 = v235;
                sub_1E134FD1C(v252, v235, &qword_1ECEB3B28, &unk_1E1B11460);
                if (v243(v212, 1, v210) == 1)
                {

                  v213 = v212;
                  v200 = &qword_1ECEB3B28;
                  v201 = &unk_1E1B11460;
                  sub_1E1308058(v211, &qword_1ECEB3B28, &unk_1E1B11460);
                  v214 = *(v257 + 8);
                  v215 = v259;
                  v214(v256, v259);
                  v214(v247, v215);
                  sub_1E1308058(&v281, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                  v214(v258, v215);
                  sub_1E1308058(&v284, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                  v204 = v213;
                  goto LABEL_144;
                }

                sub_1E15F0974();

                sub_1E1308058(v211, &qword_1ECEB3B28, &unk_1E1B11460);
                v218 = *(v257 + 8);
                v219 = v259;
                v218(v256, v259);
                v218(v247, v219);
                sub_1E1308058(&v281, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                v218(v258, v219);
                sub_1E1308058(&v284, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                v209(v235, v210);
              }

              else
              {

                sub_1E1308058(v252, &qword_1ECEB3B28, &unk_1E1B11460);
                v216 = *(v257 + 8);
                v217 = v259;
                v216(v256, v259);
                v216(v247, v217);
                v200 = &qword_1ECEB2DF0;
                v201 = &unk_1E1B02CE0;
                sub_1E1308058(&v281, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                v216(v258, v217);
                v204 = &v284;
LABEL_144:
                sub_1E1308058(v204, v200, v201);
              }

              return v233;
            }

            v53 = (v53 + 1);
            if (v136 == v53)
            {
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              v74 = sub_1E1AF71CC();
              goto LABEL_45;
            }

            v138 = v137 + 16;
            v139 = *(v115 + v137);
            v137 += 16;
          }

          while (!v139);
          v140 = v133;
          v141 = v112;
          v142 = *(v115 + v138 - 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_1E130C06C(0, *(v134 + 2) + 1, 1, v134);
          }

          v144 = *(v134 + 2);
          v143 = *(v134 + 3);
          if (v144 >= v143 >> 1)
          {
            v134 = sub_1E130C06C((v143 > 1), v144 + 1, 1, v134);
          }

          *(v134 + 2) = v144 + 1;
          v145 = &v134[16 * v144];
          *(v145 + 4) = v142;
          *(v145 + 5) = v139;
          v112 = v141;
          v133 = v140;
          v65 = v266;
        }
      }
    }

    else
    {
      v115[4] = 0;
      v115[5] = 0;
      if (v111)
      {
        goto LABEL_102;
      }
    }

    v118 = 0;
    v119 = 0;
    goto LABEL_105;
  }

  v266 = v65;
  *&v278 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C2E8(0, v74 & ~(v74 >> 63), 0);
  if ((v74 & 0x8000000000000000) == 0)
  {
    v76 = 0;
    v75 = v278;
    while (1)
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x1E68FFD80](v76, v53);
        v78 = *(v77 + 32);
        if (!v78)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v77 = v53[v76 + 4];

        v78 = *(v77 + 32);
        if (!v78)
        {
LABEL_52:
          v81 = *(v77 + 16);
          v82 = 0x68736E6565726373;
          if (v81 != 2)
          {
            v82 = 0x666C656873;
          }

          v83 = 0xEB0000000073746FLL;
          if (v81 != 2)
          {
            v83 = 0xE500000000000000;
          }

          v84 = 0x756B636F4C706F74;
          if (!*(v77 + 16))
          {
            v84 = 0x7975426F546B7361;
          }

          v85 = 0xE900000000000070;
          if (!*(v77 + 16))
          {
            v85 = 0xEF74736575716552;
          }

          if (*(v77 + 16) <= 1u)
          {
            v79 = v84;
          }

          else
          {
            v79 = v82;
          }

          if (*(v77 + 16) <= 1u)
          {
            v80 = v85;
          }

          else
          {
            v80 = v83;
          }

          goto LABEL_66;
        }
      }

      v79 = *(v77 + 24);
      v80 = v78;
LABEL_66:
      *&v281 = v79;
      *(&v281 + 1) = v80;

      sub_1E1AF6F6C();

      *&v278 = v75;
      v87 = *(v75 + 16);
      v86 = *(v75 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_1E135C2E8((v86 > 1), v87 + 1, 1);
        v75 = v278;
      }

      ++v76;
      *(v75 + 16) = v87 + 1;
      v88 = v75 + 40 * v87;
      v89 = v284;
      v90 = v285;
      *(v88 + 64) = v286;
      *(v88 + 32) = v89;
      *(v88 + 48) = v90;
      if (v74 == v76)
      {
        v65 = v266;
        goto LABEL_71;
      }
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

void *_s11AppStoreKit21ShelfBasedProductPageC4from04fullF13FetchedActionACSgAF_AA0K0CtcfC_0(uint64_t a1, uint64_t a2)
{
  v205 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v176 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v198 = (&v147 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v147 - v8;
  v10 = sub_1E1AF3C3C();
  v203 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v199 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v147 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v204 = &v147 - v16;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0, &unk_1E1B39700);
  v193 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v208 = &v147 - v17;
  v211 = sub_1E1AEFEAC();
  *&v206 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v19 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v147 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v147 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v147 - v30;
  if (a1)
  {
    v194 = v9;
    v195 = v14;
    v202 = v10;
    v32 = qword_1EE217318;
    swift_beginAccess();
    v33 = *(a1 + v32);
    *&v239[0] = 0x756B636F4C706F74;
    *(&v239[0] + 1) = 0xE900000000000070;

    v192 = v33;

    sub_1E1AF6F6C();
    v34 = sub_1E1AEFCCC();
    memset(v239, 0, sizeof(v239));
    v240 = 0;
    v35 = *(*(v34 - 8) + 56);
    v197 = v31;
    v35(v31, 1, 1, v34);
    v36 = sub_1E1AEFE6C();
    v37 = *(*(v36 - 8) + 56);
    v200 = v25;
    v37(v25, 1, 1, v36);
    v38 = sub_1E1AF46DC();
    v39 = *(*(v38 - 8) + 56);
    v201 = v22;
    v39(v22, 1, 1, v38);
    v35(v28, 1, 1, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8, &qword_1E1B02F60);
    swift_allocObject();
    v40 = sub_1E1AF35CC();
    v207 = type metadata accessor for Shelf(0);
    v210 = swift_allocObject();
    sub_1E134FD1C(v239, &v233, &unk_1ECEB5670, qword_1E1B03EC0);
    v196 = a1;
    if (*(&v234 + 1))
    {
      v236 = v233;
      v237 = v234;
      v238 = v235;
    }

    else
    {
      sub_1E1AEFE9C();
      v42 = sub_1E1AEFE7C();
      v44 = v43;
      (*(v206 + 8))(v19, v211);
      *&v229 = v42;
      *(&v229 + 1) = v44;
      sub_1E1AF6F6C();
      sub_1E1308058(&v233, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    v45 = v210;
    v46 = v210 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
    v47 = v237;
    *v46 = v236;
    *(v46 + 16) = v47;
    *(v46 + 32) = v238;
    sub_1E134FD1C(v201, v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
    *(v45 + 16) = 25600;
    *(v45 + 18) = 0;
    v48 = MEMORY[0x1E69E7CC0];
    *(v45 + 24) = MEMORY[0x1E69E7CC0];
    LOBYTE(v229) = 0;
    *(v45 + 32) = sub_1E1956360(v48, &v229);
    sub_1E134FD1C(v197, v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60, &unk_1E1B02620);
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = 0;
    v49 = (v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
    *v49 = 0x6E6F6D6D6F63;
    v49[1] = 0xE600000000000000;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = 0;
    *(v45 + 40) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = 0;
    v50 = v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata;
    *v50 = 0u;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0u;
    *(v50 + 48) = 3221225472;
    v51 = (v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
    *v51 = 0;
    v51[1] = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
    sub_1E134FD1C(v200, v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780, &unk_1E1B029A0);
    v191 = v28;
    sub_1E134FD1C(v28, v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60, &unk_1E1B02620);
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = 1;
    v52 = v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
    *v52 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = 0x8000;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v40;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v48;
    v53 = *(v45 + 24);
    v54 = sub_1E13C50E8();
    v190 = v40;

    v55 = 0;
    v232 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v54);
    v211 = v53 + 32;
    v206 = xmmword_1E1B16440;
    while (2)
    {
      v56 = 0uLL;
      v57 = *(v53 + 16);
      if (v55 == v57)
      {
LABEL_8:
        v218 = 0;
        v55 = v57;
        v216 = v56;
        v217 = v56;
        goto LABEL_12;
      }

      while (1)
      {
        if ((v55 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v55 >= *(v53 + 16))
        {
          goto LABEL_56;
        }

        sub_1E1300B24(v211 + 40 * v55++, &v216);
LABEL_12:
        v214[0] = v216;
        v214[1] = v217;
        v215 = v218;
        if (!*(&v217 + 1))
        {
          memset(v219, 0, 24);
          *(&v219[1] + 8) = v206;
LABEL_24:
          sub_1E1308058(v219, &qword_1ECEB55B8, &qword_1E1B16450);
          v225 = 0;
          v223 = 0u;
          v224 = 0u;
          goto LABEL_25;
        }

        sub_1E1308EC0(v214, v213);
        sub_1E1300B24(v213, &v212);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8, &qword_1E1B2E400);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v219, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v213);
        if (*(&v219[1] + 1) == 1)
        {
          goto LABEL_24;
        }

        v220 = v219[0];
        v221 = v219[1];
        v222 = *&v219[2];
        if (*(&v219[1] + 1))
        {
          break;
        }

        sub_1E1308058(&v220, &qword_1ECEB55B0, &unk_1E1B219E0);
        v56 = 0uLL;
        if (v55 == v57)
        {
          goto LABEL_8;
        }
      }

      *(&v221 + 1) = *(&v219[1] + 1);
      result = sub_1E134FD1C(&v220, v219, &qword_1ECEB55B0, &unk_1E1B219E0);
      if (*(&v219[1] + 1))
      {
        sub_1E1308EC0(v219, &v223);
        sub_1E1308058(&v220, &qword_1ECEB55B0, &unk_1E1B219E0);
        if (*(&v224 + 1))
        {
          sub_1E1308EC0(&v223, &v226);
          v58 = *(&v227 + 1);
          v59 = v228;
          v60 = __swift_project_boxed_opaque_existential_1Tm(&v226, *(&v227 + 1));
          v61 = v58;
          v54 = v60;
          if ((PersonalizableModel.needsClientPersonalization.getter(v61, v59) & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_1(&v226);
            continue;
          }

          sub_1E1308EC0(&v226, &v229);
LABEL_26:
          v226 = v229;
          v227 = v230;
          v228 = v231;
          if (*(&v230 + 1))
          {
            sub_1E1308EC0(&v226, &v223);
            v62 = *(&v224 + 1);
            v63 = v225;
            __swift_project_boxed_opaque_existential_1Tm(&v223, *(&v224 + 1));
            (*(v63 + 16))(&v220, v62, v63);
            LOBYTE(v62) = v220;
            __swift_destroy_boxed_opaque_existential_1(&v223);
            v54 = &v232;
            sub_1E1893F1C(&v229, v62);
            continue;
          }

          v64 = v210;
          *(v210 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v232;
          v65 = (v64 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
          *v65 = 0u;
          v65[1] = 0u;
          v54 = *(v64 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
          if (!(v54 >> 62))
          {
            v66 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_31;
          }

LABEL_57:
          v66 = sub_1E1AF71CC();
LABEL_31:
          v67 = v203;
          v68 = v196;
          v70 = v200;
          v69 = v201;
          if (!v66)
          {

            goto LABEL_40;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0, &unk_1E1B16B50);
          if (v66 < 1)
          {
            __break(1u);
          }

          else
          {
            v211 = v54 & 0xC000000000000001;
            v71 = (v193 + 8);

            v72 = 0;
            v73 = v54;
            do
            {
              if (v211)
              {
                MEMORY[0x1E68FFD80](v72, v54);
              }

              else
              {
              }

              ++v72;
              sub_1E15470BC();
              sub_1E1AF3CDC();
              v74 = v208;
              sub_1E1AF3CEC();

              __swift_destroy_boxed_opaque_existential_1(&v229);
              (*v71)(v74, v209);
              v54 = v73;
            }

            while (v66 != v72);

            v67 = v203;
            v68 = v196;
            v70 = v200;
            v69 = v201;
LABEL_40:
            sub_1E1308058(v191, &unk_1ECEB4B60, &unk_1E1B02620);
            sub_1E1308058(v69, &unk_1ECEB1770, &unk_1E1AFED20);
            sub_1E1308058(v70, &unk_1ECEBB780, &unk_1E1B029A0);
            sub_1E1308058(v197, &unk_1ECEB4B60, &unk_1E1B02620);
            sub_1E1308058(v239, &unk_1ECEB5670, qword_1E1B03EC0);
            v75 = v192;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v229 = v75;
            sub_1E1598874(v210, v241, isUniquelyReferenced_nonNull_native);
            sub_1E134B88C(v241);
            v175 = v229;
            v77 = qword_1EE217310;
            swift_beginAccess();
            v174 = *(v68 + v77);

            v78 = *(v68 + qword_1EE2168D0);
            v211 = v78;
            if (v78)
            {
              v173 = *(v78 + 32);

              v172 = 40;
            }

            else
            {
              v172 = 0;
              v173 = 0;
            }

            v79 = v204;
            v229 = 0u;
            v230 = 0u;
            v210 = *(v68 + 16);
            v80 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
            swift_beginAccess();
            v81 = *(v67 + 16);
            v169 = (v67 + 16);
            v170 = v81;
            v81(v79, (v68 + v80), v202);
            v190 = *(v68 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
            v148 = qword_1EE2168B0;
            v149 = qword_1EE2168A8;
            v151 = qword_1EE2168B8;
            v152 = qword_1EE216938;
            v150 = qword_1EE216918;
            v167 = qword_1EE216908;
            v82 = *(v68 + qword_1EE216908 + 8);
            v168 = *(v68 + qword_1EE216908);
            v187 = v82;
            v164 = qword_1EE2168F0;
            v166 = *(v68 + qword_1EE2168F0);
            v165 = *(v68 + qword_1EE2168F0 + 8);
            v162 = qword_1EE216930;
            v83 = *(v68 + qword_1EE216930 + 8);
            v163 = *(v68 + qword_1EE216930);
            v177 = v83;
            v153 = qword_1EE2168D8;
            v159 = qword_1EE2158C0;
            v178 = *(v68 + qword_1EE2158C0);
            v181 = *(v68 + qword_1EE2158C0 + 8);
            v186 = *(v68 + qword_1EE2158C0 + 16);
            v185 = *(v68 + qword_1EE2158C0 + 24);
            v184 = *(v68 + qword_1EE2158C0 + 32);
            v84 = *(v68 + qword_1EE2158C0 + 40);
            v182 = *(v68 + qword_1EE2158C0 + 48);
            v183 = v84;
            v154 = qword_1EE2168F8;
            v155 = qword_1EE216958;
            v156 = qword_1EE216928;
            v85 = *(v68 + qword_1EE216928 + 8);
            v157 = *(v68 + qword_1EE216928);
            v189 = v85;
            v161 = *(v68 + qword_1EE2168C0);
            v160 = *(v68 + qword_1EE2168E8);
            v179 = *(v68 + qword_1EE216900);
            v180 = *(v68 + qword_1EE2168E0);
            *&v206 = *(v68 + qword_1EE216950);
            v207 = *(v68 + qword_1EE216940);
            v200 = *(v68 + qword_1EE2158C8);
            v201 = *(v68 + qword_1EE216968);
            v158 = *(v68 + qword_1EE216920);
            v188 = *(v68 + qword_1EE2168A8);
            v86 = v188;
            v88 = *(v68 + qword_1EE216938);
            v191 = *(v68 + qword_1EE2168B0);
            v87 = v191;
            v192 = v88;
            v171 = *(v68 + qword_1EE2168B8);
            v89 = v171;
            v193 = *(v68 + qword_1EE216918);
            v90 = v193;
            v197 = *(v68 + qword_1EE2168D8);
            v91 = v197;
            v92 = *(v68 + qword_1EE2168F8);
            v208 = *(v68 + qword_1EE216958);
            v209 = v92;
            type metadata accessor for ShelfBasedProductPage(0);
            v93 = swift_allocObject();
            v94 = qword_1EE2168C8;
            *(v93 + qword_1EE2168C8) = MEMORY[0x1E69E7CC0];
            v95 = v148;
            *(v93 + v149) = v86;
            *(v93 + v95) = v87;
            *(v93 + qword_1EE216948) = 0;
            v96 = v151;
            *(v93 + v152) = v88;
            *(v93 + v96) = v89;
            *(v93 + v150) = v90;
            v97 = (v93 + v167);
            v98 = v187;
            *v97 = v168;
            v97[1] = v98;
            v99 = v93 + v164;
            *v99 = v166;
            v99[8] = v165;
            v100 = (v93 + v162);
            v102 = v177;
            v101 = v178;
            *v100 = v163;
            v100[1] = v102;
            *(v93 + v153) = v91;
            v103 = (v93 + v159);
            *v103 = v101;
            v104 = v185;
            v105 = v186;
            v103[1] = v181;
            v103[2] = v105;
            v103[3] = v104;
            v106 = v183;
            v103[4] = v184;
            v103[5] = v106;
            v103[6] = v182;
            *(v93 + qword_1EE2168D0) = v211;
            v107 = v209;
            v108 = v154;
            *(v93 + v155) = v208;
            *(v93 + v108) = v107;
            v109 = (v93 + v156);
            v110 = v189;
            *v109 = v157;
            v109[1] = v110;
            swift_beginAccess();
            *(v93 + v94) = MEMORY[0x1E69E7CC0];
            v111 = v160;
            *(v93 + qword_1EE2168C0) = v161;
            *(v93 + qword_1EE2168E8) = v111;
            v112 = v180;
            *(v93 + qword_1EE216900) = v179;
            *(v93 + qword_1EE2168E0) = v112;
            *(v93 + qword_1EE216950) = v206;
            *(v93 + qword_1EE216940) = v207;
            *(v93 + qword_1EE2158C8) = v200;
            *(v93 + qword_1EE216960) = v205;
            *(v93 + qword_1EE216910) = 0;
            *(v93 + qword_1EE216968) = v201;
            *(v93 + qword_1EE216920) = v158;
            sub_1E134FD1C(&v229, &v226, &qword_1ECEB2DF0, &unk_1E1B02CE0);
            v113 = v195;
            v114 = v202;
            v115 = v170;
            v170(v195, v204, v202);
            v116 = v174;
            *(v93 + qword_1EE217318) = v175;
            *(v93 + qword_1EE217310) = v116;
            *(v93 + *(*v93 + 184)) = 0;
            sub_1E134FD1C(&v226, v93 + *(*v93 + 192), &qword_1ECEB2DF0, &unk_1E1B02CE0);
            *(v93 + *(*v93 + 200)) = 0;
            *(v93 + *(*v93 + 208)) = v172;
            v117 = v199;
            v115(v199, v113, v114);
            v118 = v115;
            v119 = sub_1E1AF39DC();
            v120 = *(v119 - 8);
            v121 = v194;
            (*(v120 + 56))(v194, 1, 1, v119);
            v93[2] = v210;
            v118(v93 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v117, v114);
            v174 = v93;
            *(v93 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v190;
            v122 = v198;
            sub_1E134FD1C(v121, v198, &qword_1ECEB3B28, &unk_1E1B11460);
            v175 = v120;
            v169 = *(v120 + 48);
            v170 = v119;
            LODWORD(v172) = v169(v122, 1, v119);

            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            v123 = v179;
            v124 = v180;
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            v125 = v123;
            v126 = v124;

            sub_1E1475BB8(v178, v181, v186, v185, v184, v183, v182);
            if (v172 == 1)
            {

              v127 = &qword_1ECEB3B28;
              v128 = &unk_1E1B11460;
              sub_1E1308058(v194, &qword_1ECEB3B28, &unk_1E1B11460);
              v129 = v202;
              v130 = *(v203 + 8);
              v130(v199, v202);
              v130(v195, v129);
              sub_1E1308058(&v226, &qword_1ECEB2DF0, &unk_1E1B02CE0);
              v130(v204, v129);
              sub_1E1308058(&v229, &qword_1ECEB2DF0, &unk_1E1B02CE0);
              v131 = v198;
              goto LABEL_52;
            }

            v69 = v125;
            v187 = v126;
            v132 = qword_1EE1E3BC8;

            if (v132 == -1)
            {
LABEL_46:
              v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
              __swift_project_value_buffer(v133, qword_1EE1E3BD0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
              v134 = v198;
              sub_1E1AF39EC();
              v135 = v216;
              v136 = v176;
              v137 = v170;
              if (v216)
              {
              }

              v138 = *(v175 + 8);
              v175 += 8;
              v198 = v138;
              (v138)(v134, v137);
              if (v135)
              {
                v139 = v194;
                sub_1E134FD1C(v194, v136, &qword_1ECEB3B28, &unk_1E1B11460);
                if (v169(v136, 1, v137) == 1)
                {

                  v140 = v136;
                  v127 = &qword_1ECEB3B28;
                  v128 = &unk_1E1B11460;
                  sub_1E1308058(v139, &qword_1ECEB3B28, &unk_1E1B11460);
                  v141 = v202;
                  v142 = *(v203 + 8);
                  v142(v199, v202);
                  v142(v195, v141);
                  sub_1E1308058(&v226, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                  v142(v204, v141);
                  sub_1E1308058(&v229, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                  v131 = v140;
                  goto LABEL_52;
                }

                sub_1E15F0974();

                sub_1E1308058(v139, &qword_1ECEB3B28, &unk_1E1B11460);
                v145 = v202;
                v146 = *(v203 + 8);
                v146(v199, v202);
                v146(v195, v145);
                sub_1E1308058(&v226, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                v146(v204, v145);
                sub_1E1308058(&v229, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                (v198)(v176, v137);
              }

              else
              {

                sub_1E1308058(v194, &qword_1ECEB3B28, &unk_1E1B11460);
                v143 = v202;
                v144 = *(v203 + 8);
                v144(v199, v202);
                v144(v195, v143);
                v127 = &qword_1ECEB2DF0;
                v128 = &unk_1E1B02CE0;
                sub_1E1308058(&v226, &qword_1ECEB2DF0, &unk_1E1B02CE0);
                v144(v204, v143);
                v131 = &v229;
LABEL_52:
                sub_1E1308058(v131, v127, v128);
              }

              return v174;
            }
          }

          swift_once();
          goto LABEL_46;
        }

LABEL_25:
        sub_1E1308058(&v223, &qword_1ECEB55B0, &unk_1E1B219E0);
        v229 = 0u;
        v230 = 0u;
        v231 = 0;
        goto LABEL_26;
      }

      break;
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ShelfBasedProductPage(uint64_t a1)
{
  result = qword_1EE1ECE40;
  if (!qword_1EE1ECE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E16453D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E1645420()
{
  result = qword_1EE1EC050;
  if (!qword_1EE1EC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EC050);
  }

  return result;
}

unint64_t sub_1E1645474(uint64_t a1)
{
  *(a1 + 8) = sub_1E1634F30();
  result = sub_1E16454A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E16454A4()
{
  result = qword_1EE1EC048;
  if (!qword_1EE1EC048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EC048);
  }

  return result;
}

id sub_1E1645664(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC11AppStoreKit12JSUserObject_accounts] = a1;
  *&v3[OBJC_IVAR____TtC11AppStoreKit12JSUserObject_onDevicePersonalizationDataManager] = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E696AB38]);
  v8 = a2;

  v9 = [v7 initWithCondition_];
  *&v3[OBJC_IVAR____TtC11AppStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB71D8, &qword_1E1B21A48);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC11AppStoreKit12JSUserObject_isFitnessAppInstallationAllowedBox] = sub_1E14C51E8(2);
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, sel_init);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_1E1646AB0;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1E1623918;
  v17[3] = &block_descriptor_8_0;
  v13 = _Block_copy(v17);
  v14 = v10;

  [v11 fetchIsFitnessAvailableForDeviceWithCompletion_];
  _Block_release(v13);
  v15 = [objc_opt_self() defaultCenter];
  [v15 addObserver:v14 selector:sel_queryFitnessAppInstallationAllowed name:*MEMORY[0x1E698DC78] object:0];

  return v14;
}

uint64_t sub_1E16458C0(SEL *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70, &qword_1E1B1AE80);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  MEMORY[0x1E68FE6D0](v3);
  v6 = sub_1E1AF594C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E1308058(v5, &qword_1ECEBBA70, &qword_1E1B1AE80);
  }

  else
  {
    v8 = sub_1E1AF593C();
    (*(v7 + 8))(v5, v6);
    v9 = [v8 *a1];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1E1AF5DFC();

      return v11;
    }
  }

  return 0;
}

id sub_1E1645A44(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_1E16458C0(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_1E1AF5DBC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1E1645B48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70, &qword_1E1B1AE80);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  MEMORY[0x1E68FE6D0](v1);
  v4 = sub_1E1AF594C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1E1308058(v3, &qword_1ECEBBA70, &qword_1E1B1AE80);
  }

  else
  {
    v6 = sub_1E1AF593C();
    (*(v5 + 8))(v3, v4);
    v7 = [v6 ams_DSID];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 stringValue];

      v10 = sub_1E1AF5DFC();
      return v10;
    }
  }

  return 0;
}

uint64_t sub_1E1645EC4()
{
  v1 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB71D0, &qword_1E1B2B030);
  sub_1E1AF690C();

  v2 = v6;
  if (v6 == 2)
  {
    v3 = OBJC_IVAR____TtC11AppStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock;
    v4 = [*(v1 + OBJC_IVAR____TtC11AppStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock) lockWhenCondition_];
    MEMORY[0x1EEE9AC00](v4);

    sub_1E1AF690C();

    v2 = (v6 == 2) | v6;
    [*(v1 + v3) unlock];
  }

  return v2 & 1;
}

void sub_1E1646044(char a1, uint64_t a2)
{
  v3 = sub_1E1AF320C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = OBJC_IVAR____TtC11AppStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock;
    v9 = Strong;
    v10 = [*(Strong + OBJC_IVAR____TtC11AppStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock) lock];
    v14[0] = v14;
    v11 = *&v9[OBJC_IVAR____TtC11AppStoreKit12JSUserObject_isFitnessAppInstallationAllowedBox];
    MEMORY[0x1EEE9AC00](v10);
    LOBYTE(v14[-2]) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v14[2] = v12;
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E13FE650();
    v13 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v13);
    v14[-4] = sub_1E1646A60;
    v14[-3] = &v14[-4];
    v14[-2] = v11;
    sub_1E1AF68FC();
    (*(v4 + 8))(v6, v3);

    [*&v9[v8] unlockWithCondition_];
  }
}

uint64_t sub_1E1646414(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70, &qword_1E1B1AE80);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13[-v4];
  MEMORY[0x1E68FE6D0](v3);
  v6 = sub_1E1AF594C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = &qword_1ECEBBA70;
    v9 = &qword_1E1B1AE80;
    v10 = v5;
LABEL_10:
    sub_1E1308058(v10, v8, v9);
    return 0;
  }

  v11 = sub_1E1AF593C();
  (*(v7 + 8))(v5, v6);
  if ([v11 ams:*a1 accountFlagValueForAccountFlag:?])
  {
    sub_1E1AF6EBC();

    swift_unknownObjectRelease();
  }

  else
  {

    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    v8 = &qword_1ECEB2DF0;
    v9 = &unk_1E1B02CE0;
    v10 = v16;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return v13[15];
  }

  return 0;
}

id sub_1E16465E8(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC11AppStoreKit12JSUserObject_onDevicePersonalizationDataManager))
  {
    v36 = MEMORY[0x1E69E7CC0];
    v37 = sub_1E15A19DC(MEMORY[0x1E69E7CC0]);
    v38 = sub_1E1303A74(v36);
    v39 = type metadata accessor for OnDevicePersonalizationDataContainer();
    v40 = objc_allocWithZone(v39);
    *&v40[OBJC_IVAR____TtC11AppStoreKit36OnDevicePersonalizationDataContainer_personalizationData] = v37;
    *&v40[OBJC_IVAR____TtC11AppStoreKit36OnDevicePersonalizationDataContainer_metricsData] = v38;
    v48 = v40;
    v41 = &v48;
    goto LABEL_30;
  }

  v3 = sub_1E193F1AC();
  v5 = v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    v9 = MEMORY[0x1E69E7CC8];
    goto LABEL_29;
  }

  v7 = 0;
  v8 = a1 + 40;
  v9 = MEMORY[0x1E69E7CC8];
  v45 = v8;
  while (2)
  {
    v10 = (v8 + 16 * v7);
    v11 = v7;
    while (1)
    {
      if (v11 >= v6)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_32;
      }

      v13 = *(v10 - 1);
      v12 = *v10;
      v14 = *(v3 + 16);

      if (v14)
      {
        v15 = sub_1E13018F8(v13, v12);
        if (v16)
        {
          break;
        }
      }

      v17 = sub_1E13018F8(v13, v12);
      if (v18)
      {
        v19 = v17;
        v47 = v9;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1E14199C8();
          v9 = v47;
        }

        sub_1E141D25C();

        goto LABEL_25;
      }

      ++v11;
      v10 += 2;
      if (v7 == v6)
      {
        goto LABEL_29;
      }
    }

    v20 = v5;
    v44 = *(*(v3 + 56) + 8 * v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v9;
    v22 = sub_1E13018F8(v13, v12);
    v24 = v9[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v28 = v23;
    if (v9[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v22;
        sub_1E14199C8();
        v22 = v35;
      }
    }

    else
    {
      sub_1E168FBA0(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_1E13018F8(v13, v12);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_35;
      }
    }

    v5 = v20;
    v9 = v47;
    if ((v28 & 1) == 0)
    {
      v47[(v22 >> 6) + 8] |= 1 << v22;
      v32 = (v9[6] + 16 * v22);
      *v32 = v13;
      v32[1] = v12;
      *(v9[7] + 8 * v22) = v44;
      v33 = v9[2];
      v26 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (!v26)
      {
        v9[2] = v34;
        goto LABEL_25;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }

    v30 = v47[7];
    v31 = *(v30 + 8 * v22);
    *(v30 + 8 * v22) = v44;

LABEL_25:
    v8 = v45;
    if (v7 != v6)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v39 = type metadata accessor for OnDevicePersonalizationDataContainer();
  v42 = objc_allocWithZone(v39);
  *&v42[OBJC_IVAR____TtC11AppStoreKit36OnDevicePersonalizationDataContainer_personalizationData] = v9;
  *&v42[OBJC_IVAR____TtC11AppStoreKit36OnDevicePersonalizationDataContainer_metricsData] = v5;
  v46.receiver = v42;
  v41 = &v46;
LABEL_30:
  v41->super_class = v39;
  return [(objc_super *)v41 init];
}

id static SpacerSupplementary.makeTopSpacer(height:verticalOffset:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 fractionalWidthDimension_];
  v6 = [v4 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = sub_1E1AF5DBC();
  v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:1 absoluteOffset:{0.0, -a2}];

  return v9;
}

id static SpacerSupplementary.makeBottomSpacer(height:verticalOffset:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 fractionalWidthDimension_];
  v6 = [v4 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = sub_1E1AF5DBC();
  v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:5 absoluteOffset:{0.0, a2}];

  return v9;
}

double static SpacerSupplementary.makeSpacerRegistration(elementKind:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for SpacerSupplementary();
  v6 = static UICollectionReusableView.defaultReuseIdentifier.getter();
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = nullsub_5;
  a3[5] = 0;

  return result;
}

id SpacerSupplementary.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SpacerSupplementary.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SpacerSupplementary();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id SpacerSupplementary.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SpacerSupplementary.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpacerSupplementary();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SpacerSupplementary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpacerSupplementary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E1647078@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E14D3A8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4, v5);
}

uint64_t sub_1E1647118(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E14D3A84;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1E1300E34(v3, v4);
  return sub_1E1300EA8(v8, v9);
}

uint64_t InlineUnifiedMessagePresenter.actionHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1E1300E34(*v1, v1[1]);
  return v2;
}

uint64_t InlineUnifiedMessagePresenter.actionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1E1300EA8(v6, v7);
}

double InlineUnifiedMessagePresenter.inlineViewControllers.getter()
{
  swift_beginAccess();

  return result;
}

double InlineUnifiedMessagePresenter.inlineViewControllers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id InlineUnifiedMessagePresenter.init(objectGraph:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1E1AF436C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_onReceivedRequestToShowUnifiedMessage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6940, qword_1E1B21A90);
  swift_allocObject();
  *&v1[v10] = sub_1E1AF35CC();
  v11 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_onReceivedRequestToHideUnifiedMessage;
  swift_allocObject();
  *&v1[v11] = sub_1E1AF35CC();
  v12 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  *&v2[v12] = sub_1E159D30C(MEMORY[0x1E69E7CC0]);
  *&v2[OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_objectGraph] = a1;

  sub_1E1AF416C();
  (*(v6 + 32))(&v2[OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_metricsPipeline], v8, v5);
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF416C();
  v13 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];
  swift_unknownObjectRelease();

  *&v2[OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_engagement] = v13;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v20, sel_init);
  v15 = qword_1EE1E35C0;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_1E1AF591C();
  __swift_project_value_buffer(v17, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  return v16;
}

void *InlineUnifiedMessagePresenter.inlineViewController(for:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1E13018F8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

Swift::Void __swiftcall InlineUnifiedMessagePresenter.startListening(for:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue >> 62)
  {
    v2 = sub_1E1AF71CC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E68FFD80](v3, a1._rawValue);
      }

      else
      {
        v4 = *(a1._rawValue + v3 + 4);
      }

      ++v3;
      v5 = *(v4 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_placement);
      v6 = *(v4 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_placement + 8);
      v7 = *(v4 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_context);
      v8 = *(v4 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_deliveryMethod);
      sub_1E16478E4(v5, v6, v7, &v8);
    }

    while (v2 != v3);
  }
}

double sub_1E16478E4(uint64_t a1, void *a2, void *a3, unsigned __int8 *a4)
{
  v36 = a3;
  v7 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33[4] = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF591C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a4;
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_1EE1E35C8);
  v14 = *(v10 + 16);
  v33[3] = v13;
  v14(v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  v16 = *(sub_1E1AF38EC() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v33[1] = v15;
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  v33[2] = v17;
  sub_1E1AF382C();
  v40 = MEMORY[0x1E69E6158];
  aBlock = a1;
  v38 = a2;

  sub_1E1AF38BC();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  if (v36)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
    v19 = v36;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v38 = 0;
    v39 = 0;
  }

  aBlock = v19;
  v40 = v18;

  sub_1E1AF38DC();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  (*(v10 + 8))(v12, v9);

  v20._countAndFlagsBits = a1;
  v20._object = a2;
  UnifiedMessagingPlacement.init(rawValue:)(v20);
  if (aBlock == 29 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94A0, qword_1E1B21B30), sub_1E1AF416C(), v21 = v40, v22 = v41, __swift_project_boxed_opaque_existential_1Tm(&aBlock, v40), v23 = (*(v22 + 1))(v21, v22), __swift_destroy_boxed_opaque_existential_1(&aBlock), (v23 & 1) == 0))
  {
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v40 = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(aBlock) = 29;
    sub_1E1AF385C();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  else
  {
    v24 = a1;
    v25 = _sSo25AMSEngagementMessageEventC11AppStoreKitE03appE9Placement_5usingABSS_SDys11AnyHashableVypGSgtFZ_0(a1, a2, v36);
    v26 = v35;
    v27 = [*&v35[OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_engagement] enqueueMessageEvent_];
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v34;
    *(v28 + 32) = v24;
    *(v28 + 40) = a2;
    *(v28 + 48) = v25;
    v41 = sub_1E164DF1C;
    v42 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1E14CC840;
    v40 = &block_descriptor_39;
    v29 = _Block_copy(&aBlock);

    v30 = v26;
    v31 = v25;

    [v27 addFinishBlock_];
    _Block_release(v29);
  }

  return result;
}

uint64_t sub_1E1647E9C(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  v28 = a1;
  v29 = a7;
  v12 = sub_1E1AF320C();
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF324C();
  v31 = *(v15 - 8);
  v32 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v30 = sub_1E1AF68EC();
  v18 = swift_allocObject();
  *(v18 + 16) = a4 & 1;
  *(v18 + 24) = a3;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = a2;
  v20 = v28;
  v19 = v29;
  *(v18 + 56) = v29;
  *(v18 + 64) = v20;
  aBlock[4] = sub_1E164DF30;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_25_0;
  v21 = _Block_copy(aBlock);
  v22 = a3;

  v23 = a2;
  v24 = v20;
  v25 = v19;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  v26 = v30;
  MEMORY[0x1E68FF640](0, v17, v14, v21);
  _Block_release(v21);

  (*(v33 + 8))(v14, v12);
  return (*(v31 + 8))(v17, v32);
}

void sub_1E1648174(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  *&v58 = a3;
  *(&v58 + 1) = a4;
  v50 = a2;
  v59 = sub_1E1AF591C();
  v11 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = a1;
  if (a5)
  {
    v16 = a5;
    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v59, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v17 = v60;
    v18 = v61;
    *(&v63 + 1) = v61;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v17, v18);
    sub_1E1AF385C();
    sub_1E1308058(&v62, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    *(&v63 + 1) = sub_1E13006E4(0, &unk_1EE1D2448, 0x1E698C8E0);
    *&v62 = a6;
    v20 = a6;
    sub_1E1AF385C();
    sub_1E1308058(&v62, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    *(&v63 + 1) = MEMORY[0x1E69E6158];
    v21 = v58;
    v62 = v58;

    sub_1E1AF385C();
    v23 = *(&v21 + 1);
    v22 = v21;
    sub_1E1308058(&v62, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

LABEL_5:
    sub_1E1648DB4(v49 & 1, v50, v22, v23);
    return;
  }

  if (!a7)
  {
    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v59, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v63 + 1) = sub_1E13006E4(0, &unk_1EE1D2448, 0x1E698C8E0);
    *&v62 = a6;
    v45 = a6;
    sub_1E1AF385C();
    sub_1E1308058(&v62, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    *(&v63 + 1) = MEMORY[0x1E69E6158];
    v23 = *(&v58 + 1);
    v22 = v58;
    v62 = v58;

    sub_1E1AF385C();
    sub_1E1308058(&v62, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    goto LABEL_5;
  }

  v24 = a7;
  v25 = [v24 messageActions];
  if (!v25)
  {
LABEL_44:
    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v59, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v63 + 1) = sub_1E13006E4(0, &unk_1EE1E3300, 0x1E698C8E8);
    *&v62 = v24;
    v46 = v24;
    sub_1E1AF385C();
    sub_1E1308058(&v62, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    *(&v63 + 1) = MEMORY[0x1E69E6158];
    v23 = *(&v58 + 1);
    v47 = v58;
    v62 = v58;

    sub_1E1AF385C();
    v22 = v47;
    sub_1E1308058(&v62, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    sub_1E1648F20(v47, v23);

    goto LABEL_5;
  }

  v26 = v25;
  sub_1E13006E4(0, &unk_1ECEB4BA0, 0x1E698C8F0);
  v27 = sub_1E1AF621C();

  if (v27 >> 62)
  {
    goto LABEL_42;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_43:

    goto LABEL_44;
  }

  while (1)
  {
    v48 = v24;
    if (v28 < 1)
    {
      break;
    }

    v24 = 0;
    v57 = v27 & 0xC000000000000001;
    v54 = "w at placements ";
    v55 = (v11 + 1);
    v53 = v11 + 1;
    v52 = xmmword_1E1B02CC0;
    v51 = v13;
    v56 = v28;
    while (1)
    {
      if (v57)
      {
        v29 = MEMORY[0x1E68FFD80](v24, v27);
      }

      else
      {
        v29 = *(v27 + 8 * v24 + 32);
      }

      v30 = v29;
      v31 = [v29 placementsMap];
      if (!v31)
      {
        goto LABEL_26;
      }

      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4BB0, &qword_1E1B105F0);
      v33 = sub_1E1AF5C7C();

      if (!*(v33 + 16) || (v34 = sub_1E13018F8(v58, *(&v58 + 1)), (v35 & 1) == 0))
      {
LABEL_25:

LABEL_26:
        v38 = 0;
LABEL_27:
        v40 = v27;
        if (qword_1EE1E35C0 != -1)
        {
          swift_once();
        }

        v41 = v59;
        v42 = __swift_project_value_buffer(v59, qword_1EE1E35C8);
        (*v55)(v13, v42, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        v11 = swift_allocObject();
        v11[1] = v52;
        sub_1E1AF388C();
        sub_1E1AF387C();
        if (v38)
        {
          *(&v63 + 1) = sub_1E13006E4(0, &qword_1ECEB6180, 0x1E698C8F8);
          *&v62 = v38;
        }

        else
        {
          v62 = 0u;
          v63 = 0u;
        }

        v43 = v38;
        sub_1E1AF385C();
        sub_1E1308058(&v62, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1AF387C();
        *(&v63 + 1) = MEMORY[0x1E69E6158];
        v62 = v58;

        sub_1E1AF385C();
        sub_1E1308058(&v62, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1AF387C();
        sub_1E1AF38AC();
        v44 = v59;
        v13 = v51;
        sub_1E1AF548C();

        (*v53)(v13, v44);
        v27 = v40;
        goto LABEL_33;
      }

      v36 = *(*(v33 + 56) + 8 * v34);

      if (v36 >> 62)
      {
        if (!sub_1E1AF71CC())
        {
          goto LABEL_25;
        }
      }

      else if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      if ((v36 & 0xC000000000000001) == 0)
      {
        break;
      }

      v37 = MEMORY[0x1E68FFD80](0, v36);
LABEL_23:
      v38 = v37;

      v39 = [v38 makeDialogRequest];
      if (!v39)
      {
        goto LABEL_27;
      }

      v11 = v39;
      InlineUnifiedMessagePresenter.prepareInlineViewController(for:placement:)(v39, v58, *(&v58 + 1));

LABEL_33:
      v24 = v24 + 1;
      if (v56 == v24)
      {

        v23 = *(&v58 + 1);
        v22 = v58;
        goto LABEL_5;
      }
    }

    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v37 = *(v36 + 32);
      goto LABEL_23;
    }

    __break(1u);
LABEL_42:
    v28 = sub_1E1AF71CC();
    if (!v28)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
}

void sub_1E1648DB4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = sub_1E1AF74AC();

    if ((v5 & 1) == 0)
    {
      v6 = *(a2 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_engagement);
      v7 = sub_1E1AF5DBC();
      v8 = sub_1E1AF5DBC();
      sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
      v9 = sub_1E1AF68EC();
      [v6 addObserver:a2 placement:v7 serviceType:v8 queue:v9];
    }
  }

  else
  {
  }
}

uint64_t sub_1E1648F20(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();
  if (*(*(v2 + v6) + 16))
  {
    sub_1E13018F8(a1, a2);
    if (v7)
    {
      swift_endAccess();
      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v8 = sub_1E1AF591C();
      __swift_project_value_buffer(v8, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v12 = MEMORY[0x1E69E6158];
      v10 = a1;
      v11 = a2;

      sub_1E1AF385C();
      sub_1E1308058(&v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF548C();

      v10 = a1;
      v11 = a2;
      sub_1E1AF35BC();
      swift_beginAccess();

      sub_1E138796C(0, a1, a2);
    }
  }

  return swift_endAccess();
}

void InlineUnifiedMessagePresenter.prepareInlineViewController(for:placement:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v21 = sub_1E13006E4(0, &qword_1ECEB4A70, 0x1E698C8C0);
  v20[0] = a1;
  v9 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v21 = MEMORY[0x1E69E6158];
  v20[0] = a2;
  v20[1] = a3;

  sub_1E1AF385C();
  sub_1E1308058(v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  type metadata accessor for ASKBagContract(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v10 = sub_1E1AF527C();

  sub_1E13006E4(0, &qword_1EE1E3480, 0x1E6959A48);
  sub_1E1AF55EC();
  v11 = v20[0];
  v12 = [v20[0] ams_activeiTunesAccount];

  v13 = [objc_allocWithZone(MEMORY[0x1E698CCE8]) initWithRequest:v9 bag:v10 account:v12];
  [v13 setDelegate_];
  [v13 setImpressionsReportingFrequency_];
  v14 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();

  v15 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v14);
  *(v4 + v14) = 0x8000000000000000;
  sub_1E159B2F8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v14) = v19;
  swift_endAccess();
  v17 = [v15 view];
  swift_unknownObjectRelease();
}

Swift::Bool __swiftcall InlineUnifiedMessagePresenter.isUnifiedMessageAvailable(for:)(AppStoreKit::UnifiedMessagingPlacement a1)
{
  v2 = v1;
  v3 = UnifiedMessagingPlacement.rawValue.getter();
  v5 = v4;
  v6 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();
  if (*(*(v2 + v6) + 16))
  {
    sub_1E13018F8(v3, v5);
    v8 = v7;
  }

  else
  {

    v8 = 0;
  }

  swift_endAccess();
  return v8 & 1;
}

void InlineUnifiedMessagePresenter.messageViewController(_:didSelectActionWith:)(void *a1, unint64_t a2)
{
  v3 = v2;
  v83 = type metadata accessor for ActionIntent(0);
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1E1AEFCCC();
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v83 - v9;
  v10 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35C0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v13 = sub_1E1AF591C();
  v14 = __swift_project_value_buffer(v13, qword_1EE1E35C8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  v16 = *(sub_1E1AF38EC() - 8);
  v17 = *(v16 + 80);
  v18 = (v17 + 32) & ~v17;
  v95 = *(v16 + 72);
  v96 = v17;
  v98 = v15;
  v19 = swift_allocObject();
  v97 = xmmword_1E1B02CC0;
  *(v19 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  ObjectType = swift_getObjectType();
  v104[0] = a1;
  v103 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  a1 = [a2 originalRequest];
  ObjectType = sub_1E13006E4(0, &qword_1ECEB4A70, 0x1E698C8C0);
  v104[0] = a1;
  sub_1E1AF385C();
  sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v90 = sub_1E13006E4(0, &qword_1ECEB4A78, 0x1E698C8C8);
  ObjectType = v90;
  v104[0] = a2;
  v99 = a2;
  sub_1E1AF385C();
  sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v91 = v18;
  v94 = v12;
  sub_1E1AF38AC();
  v93 = v13;
  v92 = v14;
  v12 = v14;
  sub_1E1AF548C();

  v20 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();
  v102 = v3;
  v21 = *(v3 + v20);
  v22 = v21 + 64;
  v23 = 1 << v21[32];
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v3 = v24 & *(v21 + 8);
  v100 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_onReceivedRequestToHideUnifiedMessage;
  v25 = (v23 + 63) >> 6;

  v26 = 0;
  for (i = v21; v3; v21 = i)
  {
LABEL_11:
    while (1)
    {
      v28 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v29 = v28 | (v26 << 6);
      v30 = (*(v21 + 6) + 16 * v29);
      a2 = *v30;
      a1 = v30[1];
      v31 = *(*(v21 + 7) + 8 * v29);
      v12 = sub_1E13006E4(0, &qword_1EE1E31E0, 0x1E69E58C0);

      v32 = v31;
      if (sub_1E1AF6D0C())
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v104[0] = a2;
    v104[1] = a1;
    sub_1E1AF35BC();
    swift_beginAccess();
    a2 = sub_1E13018F8(a2, a1);
    v12 = v33;

    if (v12)
    {
      v34 = v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1 = *(v34 + v20);
      v107 = a1;
      *(v34 + v20) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v12 = &v107;
        sub_1E1419B44();
        a1 = v107;
      }

      sub_1E141D25C();
      *(v34 + v20) = a1;
    }

    swift_endAccess();
  }

  while (1)
  {
LABEL_7:
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v27 >= v25)
    {
      break;
    }

    v3 = *&v22[8 * v27];
    ++v26;
    if (v3)
    {
      v26 = v27;
      goto LABEL_11;
    }
  }

  v36 = v99;
  v37 = [v99 originalRequest];
  v38 = [v36 selectedActionIdentifier];
  if (!v38)
  {
    sub_1E1AF5DFC();
    v38 = sub_1E1AF5DBC();
  }

  v39 = [v37 locateActionWithIdentifier_];

  *(swift_allocObject() + 16) = v97;
  if (!v39)
  {
    sub_1E1AF388C();
    sub_1E1AF387C();
    ObjectType = v90;
    v104[0] = v99;
    v78 = v99;
    sub_1E1AF385C();
    sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
LABEL_30:

    return;
  }

  sub_1E1AF388C();
  sub_1E1AF387C();
  v40 = sub_1E13006E4(0, &qword_1ECEB4A80, 0x1E698C8B8);
  ObjectType = v40;
  v104[0] = v39;
  v41 = v39;
  sub_1E1AF385C();
  sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  ObjectType = v90;
  v104[0] = v99;
  v42 = v99;
  sub_1E1AF385C();
  sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  v43 = [v41 deepLink];
  if (!v43)
  {
LABEL_29:
    *(swift_allocObject() + 16) = v97;
    sub_1E1AF388C();
    sub_1E1AF387C();
    ObjectType = v40;
    v104[0] = v41;
    v79 = v41;
    sub_1E1AF385C();
    sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    goto LABEL_30;
  }

  v44 = v88;
  v45 = v43;
  sub_1E1AEFC5C();

  v46 = sub_1E1AEFBDC();
  v48 = v47;

  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
    (*(v89 + 8))(v44, v87);
    goto LABEL_29;
  }

  v50 = v102;
  v51 = (v102 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler);
  swift_beginAccess();
  v52 = *v51;
  if (*v51)
  {
    v99 = v51[1];
    v100 = v52;
    v53 = v44;
    *(swift_allocObject() + 16) = v97;

    sub_1E1AF388C();
    sub_1E1AF387C();
    v54 = v87;
    ObjectType = v87;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v104);
    i = v41;
    v56 = v89 + 16;
    v103 = *(v89 + 16);
    v103(boxed_opaque_existential_0, v44, v54);
    sub_1E1AF385C();
    sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    type metadata accessor for JSIntentDispatcher();
    v57 = *(v50 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_objectGraph);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v58 = v103;
    v102 = v104[0];
    v59 = v83;
    v60 = v86;
    v61 = (v86 + *(v83 + 20));
    v96 = v56;
    v103(v61, v53, v54);
    strcpy(v60, "ActionIntent");
    *(v60 + 13) = 0;
    *(v60 + 14) = -5120;
    *(v60 + *(v59 + 24)) = 0;
    v62 = v60 + *(v59 + 28);
    *v62 = xmmword_1E1B04490;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 16) = 0;
    *(v62 + 40) = 0;
    v98 = sub_1E1368108(v60, v57, "AppStoreKit/InlineUnifiedMessagePresenter.swift", 47, 2);
    v63 = v85;
    v58(v85, v53, v54);
    v64 = v89;
    v65 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v66 = (v84 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    *&v97 = v67;
    v68 = *(v64 + 32);
    v68(v67 + v65, v63, v54);
    v69 = (v67 + v66);
    v70 = v99;
    v71 = v100;
    *v69 = v100;
    v69[1] = v70;
    v72 = v53;
    v73 = v54;
    v103(v63, v72, v54);
    v74 = swift_allocObject();
    v68(v74 + v65, v63, v73);
    v75 = (v74 + v66);
    *v75 = v71;
    v75[1] = v70;
    v76 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    sub_1E1300E34(v71, v70);

    v77 = sub_1E1AF68EC();
    ObjectType = v76;
    v106 = MEMORY[0x1E69AB720];
    v104[0] = v77;
    sub_1E1AF57FC();

    sub_1E1300EA8(v71, v70);

    sub_1E14D28AC(v86);
    (*(v89 + 8))(v88, v73);
    __swift_destroy_boxed_opaque_existential_1(v104);
  }

  else
  {
    *(swift_allocObject() + 16) = v97;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v80 = v87;
    ObjectType = v87;
    v81 = __swift_allocate_boxed_opaque_existential_0(v104);
    v82 = v89;
    (*(v89 + 16))(v81, v44, v80);
    sub_1E1AF385C();
    sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    (*(v82 + 8))(v44, v80);
  }
}

uint64_t sub_1E164A510(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v9 = sub_1E1AEFCCC();
  v13 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a2, v9);
  sub_1E1AF385C();
  sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v13 = type metadata accessor for Action(0);
  v12[0] = v7;

  sub_1E1AF385C();
  sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  return a3(v7);
}

void sub_1E164A7B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v60 = a4;
  v61 = a3;
  v73 = a2;
  v70 = a1;
  v58 = sub_1E1AEFEAC();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v55 - v8;
  v9 = sub_1E1AEFCCC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1E1AF3E1C();
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v55 - v14;
  v15 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v78 = sub_1E1AF591C();
  v72 = __swift_project_value_buffer(v78, qword_1EE1E35C8);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  v16 = *(sub_1E1AF38EC() - 8);
  v76 = *(v16 + 72);
  v17 = *(v16 + 80);
  v18 = swift_allocObject();
  v75 = xmmword_1E1B02CC0;
  *(v18 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(&v88 + 1) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v87);
  v74 = *(v10 + 16);
  v20 = v73;
  v74(boxed_opaque_existential_0, v73, v9);
  sub_1E1AF385C();
  v71 = v10;
  sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  swift_getErrorValue();
  v21 = sub_1E1AF75AC();
  *(&v88 + 1) = MEMORY[0x1E69E6158];
  *&v87 = v21;
  *(&v87 + 1) = v22;
  sub_1E1AF385C();
  sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  v66 = v17;
  *(swift_allocObject() + 16) = v75;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(&v88 + 1) = v9;
  v23 = __swift_allocate_boxed_opaque_existential_0(&v87);
  v70 = v10 + 16;
  v74(v23, v20, v9);
  sub_1E1AF385C();
  sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v65 = (v17 + 32) & ~v17;
  sub_1E1AF38AC();
  sub_1E1AF548C();

  sub_1E1AEFBDC();
  v24 = v69;
  sub_1E1AF3DFC();
  type metadata accessor for ExternalUrlAction(0);
  v25 = swift_allocObject();
  v26 = v64;
  v27 = v71;
  sub_1E1AEFCAC();

  v28 = v26;
  if ((*(v27 + 48))(v26, 1, v9) == 1)
  {
    (*(v68 + 8))(v24, v67);
    sub_1E1308058(v26, &unk_1ECEB4B60, &unk_1E1B02620);
    swift_deallocPartialClassInstance();
    *(swift_allocObject() + 16) = v75;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v88 + 1) = v9;
    v29 = __swift_allocate_boxed_opaque_existential_0(&v87);
    v74(v29, v73, v9);
    sub_1E1AF385C();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  else
  {
    v30 = *(v27 + 32);
    v31 = v24;
    v32 = v62;
    v30(v62, v28, v9);
    v33 = v9;
    v34 = v9;
    v35 = v74;
    v74((v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url), v32, v34);
    *(v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive) = 1;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_allowFromLockscreen) = 0;
    v36 = v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_timeoutSeconds;
    *v36 = 0;
    *(v36 + 8) = 1;
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
    v37 = v68;
    v38 = v63;
    v39 = v67;
    (*(v68 + 16))(v63, v31, v67);
    v40 = sub_1E1AF46DC();
    v41 = v59;
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v42 = (v25 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v42 = 0u;
    v42[1] = 0u;
    sub_1E134FD1C(&v87, &v81, &unk_1ECEB5670, qword_1E1B03EC0);
    if (*(&v82 + 1))
    {
      v84 = v81;
      v85 = v82;
      v86 = v83;
    }

    else
    {
      v43 = v35;
      v44 = v56;
      sub_1E1AEFE9C();
      v45 = sub_1E1AEFE7C();
      v47 = v46;
      v48 = v44;
      v35 = v43;
      v32 = v62;
      (*(v57 + 8))(v48, v58);
      v79 = v45;
      v37 = v68;
      v80 = v47;
      v38 = v63;
      sub_1E1AF6F6C();
      sub_1E1308058(&v81, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    sub_1E1308058(&v87, &unk_1ECEB5670, qword_1E1B03EC0);
    (*(v71 + 8))(v32, v33);
    (*(v37 + 8))(v69, v39);
    v49 = v25 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    v50 = v85;
    *v49 = v84;
    *(v49 + 16) = v50;
    *(v49 + 32) = v86;
    sub_1E134B7C8(v41, v25 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    (*(v37 + 32))(v25 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v38, v39);
    *(swift_allocObject() + 16) = v75;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v88 + 1) = v33;
    v51 = __swift_allocate_boxed_opaque_existential_0(&v87);
    v35(v51, v73, v33);
    sub_1E1AF385C();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    v52 = swift_allocObject();
    v53 = v61;
    v54 = v60;
    *(v52 + 16) = v61;
    *(v52 + 24) = v54;
    *(&v88 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4B70, &unk_1E1B105D8);
    *&v87 = sub_1E14D3B10;
    *(&v87 + 1) = v52;

    sub_1E1AF385C();
    sub_1E1308058(&v87, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v53(v25);
  }
}

void InlineUnifiedMessagePresenter.messageViewController(_:didUpdate:)(id a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (qword_1EE1E35C0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    ObjectType = swift_getObjectType();
    v20[0] = a1;
    a1 = a1;
    sub_1E1AF385C();
    sub_1E1308058(v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    type metadata accessor for CGSize(0);
    ObjectType = v10;
    *v20 = a2;
    *&v20[1] = a3;
    sub_1E1AF385C();
    sub_1E1308058(v20, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v11 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
    swift_beginAccess();
    v12 = *(v4 + v11);
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v4 = (v13 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v16 = 0;
    if (v15)
    {
      break;
    }

LABEL_6:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v4)
      {

        goto LABEL_13;
      }

      v15 = *(v12 + 64 + 8 * v17);
      ++v16;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  while (1)
  {
    v17 = v16;
LABEL_9:
    v18 = *(*(v12 + 56) + 8 * (__clz(__rbit64(v15)) | (v17 << 6)));
    sub_1E13006E4(0, &qword_1EE1E31E0, 0x1E69E58C0);

    v19 = v18;
    if (sub_1E1AF6D0C())
    {
      break;
    }

    v15 &= v15 - 1;

    v16 = v17;
    if (!v15)
    {
      goto LABEL_6;
    }
  }

  sub_1E1AF35BC();
LABEL_13:
}

void InlineUnifiedMessagePresenter.engagement(_:didUpdate:placement:serviceType:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v46 = a4;
  *&v43 = a5;
  *(&v43 + 1) = a6;
  v9 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1E1AF591C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_1EE1E35C8);
  v44 = v13;
  v17 = *(v13 + 16);
  v38 = v16;
  v17(v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  v19 = *(sub_1E1AF38EC() - 8);
  v20 = *(v19 + 72);
  v42 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v36 = v20;
  v37 = v18;
  v21 = swift_allocObject();
  v35 = xmmword_1E1B02CC0;
  *(v21 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(&v48 + 1) = sub_1E13006E4(0, &qword_1EE1E3490, 0x1E698C8D8);
  *&v47 = a1;
  v22 = a1;
  sub_1E1AF385C();
  sub_1E1308058(&v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v45 = a3;
  if (a2)
  {
    v23 = sub_1E13006E4(0, &qword_1ECEB4A70, 0x1E698C8C0);
    v24 = a2;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    *(&v47 + 1) = 0;
    *&v48 = 0;
  }

  v25 = v46;
  *&v47 = v24;
  *(&v48 + 1) = v23;
  v26 = a2;
  sub_1E1AF385C();
  sub_1E1308058(&v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v27 = MEMORY[0x1E69E6158];
  v40 = v26;
  v41 = a2;
  if (a2 && (v28 = [v26 identifier]) != 0)
  {
    v29 = v28;
    v30 = sub_1E1AF5DFC();
    v32 = v31;

    *(&v48 + 1) = v27;
    *&v47 = v30;
    *(&v47 + 1) = v32;
    v25 = v46;
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  sub_1E1AF385C();
  sub_1E1308058(&v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  *(&v48 + 1) = v27;
  v33 = v45;
  *&v47 = v45;
  *(&v47 + 1) = v25;

  sub_1E1AF385C();
  sub_1E1308058(&v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  *(&v48 + 1) = v27;
  v47 = v43;

  sub_1E1AF385C();
  sub_1E1308058(&v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  (*(v44 + 8))(v15, v12);
  if (v41)
  {
    v34 = v40;
    sub_1E1648F20(v33, v25);
    InlineUnifiedMessagePresenter.prepareInlineViewController(for:placement:)(v34, v33, v25);
  }

  else
  {
    *(swift_allocObject() + 16) = v35;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v48 + 1) = v27;
    *&v47 = v33;
    *(&v47 + 1) = v25;

    sub_1E1AF385C();
    sub_1E1308058(&v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    *&v47 = v33;
    *(&v47 + 1) = v25;
    sub_1E1AF35BC();
    swift_beginAccess();

    sub_1E138796C(0, v33, v25);
    swift_endAccess();
  }
}

void sub_1E164C180(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4);
  _Block_release(v10);
}

id InlineUnifiedMessagePresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InlineUnifiedMessagePresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E164C49C(uint64_t *a1)
{
  v3 = *(sub_1E1AEFCCC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E164A510(a1, v1 + v4, v5);
}

void sub_1E164C53C(uint64_t a1)
{
  v3 = *(sub_1E1AEFCCC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_1E164A7B8(a1, v1 + v4, v6, v7);
}

uint64_t _s11AppStoreKit29InlineUnifiedMessagePresenterC21messageViewController_16didFailWithErrorySo012AMSUIMessageiJ0_So06UIViewJ0CXc_s0N0_pSgtF_0(void *a1, uint64_t a2)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1AF591C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EE1E35C8);
  (*(v6 + 16))(v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  ObjectType = swift_getObjectType();
  v16[0] = a1;
  v10 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v16, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  if (a2)
  {
    swift_getErrorValue();
    v11 = sub_1E1AF75AC();
    v13 = MEMORY[0x1E69E6158];
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[2] = 0;
  }

  v16[0] = v11;
  v16[1] = v12;
  ObjectType = v13;
  sub_1E1AF385C();
  sub_1E1308058(v16, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  return (*(v6 + 8))(v8, v5);
}

void _s11AppStoreKit29InlineUnifiedMessagePresenterC21messageViewController_22enqueueEventWithFields7inTopicySo012AMSUIMessageiJ0_So06UIViewJ0CXc_SDys11AnyHashableVypGSSSgtF_0(void *a1, uint64_t a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7210, &unk_1E1B143E0);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v40 - v6;
  v7 = sub_1E1AF4A9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v40 - v15;
  v16 = sub_1E1AF3ABC();
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14AD4CC(a2);
  if (v18)
  {
    v19 = v18;
    v41 = v16;
    v42 = v8;
    v43 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220, &qword_1E1B0E110);
    v20 = sub_1E1AF523C();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E1B02CC0;
    sub_1E1AF51FC();
    sub_1E1498AF4(v23);
    swift_setDeallocating();
    (*(v21 + 8))(v23 + v22, v20);
    swift_deallocClassInstance();
    if (*(v19 + 16))
    {
      v24 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
      if (v25)
      {
        sub_1E137A5C4(*(v19 + 56) + 32 * v24, &v55);
        if (swift_dynamicCast())
        {
          v26 = HIBYTE(*(&v53[0] + 1)) & 0xFLL;
          if ((*(&v53[0] + 1) & 0x2000000000000000) == 0)
          {
            v26 = *&v53[0] & 0xFFFFFFFFFFFFLL;
          }

          if (v26)
          {
            v27 = v42;
LABEL_14:
            sub_1E1AF3A7C();
            if (qword_1EE1F3430 != -1)
            {
              swift_once();
            }

            v30 = off_1EE1F3438;
            swift_beginAccess();
            v31 = v30[11];
            v57 = 0;
            v55 = 0u;
            v56 = 0u;
            v54 = 0;
            memset(v53, 0, sizeof(v53));

            sub_1E1AF4A8C();
            LOBYTE(v52[0]) = 0;
            if (qword_1EE1E3928 != -1)
            {
              swift_once();
            }

            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90, &unk_1E1B21B00);
            __swift_project_value_buffer(v32, qword_1EE1E3930);
            sub_1E1AF4A3C();
            v33 = *(v27 + 8);
            v33(v13, v7);
            v34 = *(v27 + 32);
            v34(v13, v10, v7);
            if (v31)
            {
              v52[0] = v31;
              v35 = v44;
              sub_1E1AF4A5C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
              sub_1E1AF4A3C();
              (*(v45 + 8))(v35, v46);
              v33(v13, v7);
              v34(v13, v10, v7);
            }

            sub_1E134FD1C(&v55, &v50, &unk_1ECEB7230, qword_1E1B103B0);
            if (v51)
            {
              sub_1E1308EC0(&v50, v52);
              if (qword_1EE1D28F8 != -1)
              {
                swift_once();
              }

              v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250, &unk_1E1B103A0);
              __swift_project_value_buffer(v36, qword_1EE1D2900);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8, &unk_1E1B21B20);
              sub_1E1AF4A3C();
              __swift_destroy_boxed_opaque_existential_1(v52);
              v33(v13, v7);
              v34(v13, v10, v7);
            }

            else
            {
              sub_1E1308058(&v50, &unk_1ECEB7230, qword_1E1B103B0);
            }

            sub_1E134FD1C(v53, &v50, &qword_1ECEB2B70, &qword_1E1B14250);
            if (v51)
            {
              sub_1E1308EC0(&v50, v52);
              if (qword_1EE1D28B0 != -1)
              {
                swift_once();
              }

              v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240, &unk_1E1B14420);
              __swift_project_value_buffer(v37, qword_1EE1D28B8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0, &unk_1E1B21B10);
              sub_1E1AF4A3C();
              __swift_destroy_boxed_opaque_existential_1(v52);
              v33(v13, v7);
              v34(v13, v10, v7);
            }

            else
            {
              sub_1E1308058(&v50, &qword_1ECEB2B70, &qword_1E1B14250);
            }

            sub_1E1308058(v53, &qword_1ECEB2B70, &qword_1E1B14250);
            sub_1E1308058(&v55, &unk_1ECEB7230, qword_1E1B103B0);
            v38 = v48;
            v34(v48, v13, v7);
            v39 = v49;
            sub_1E1AF434C();

            v33(v38, v7);
            (*(v47 + 8))(v39, v41);
            return;
          }
        }
      }
    }

    v27 = v42;
    goto LABEL_14;
  }

  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v28 = sub_1E1AF591C();
  __swift_project_value_buffer(v28, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(&v56 + 1) = swift_getObjectType();
  *&v55 = a1;
  v29 = a1;
  sub_1E1AF385C();
  sub_1E1308058(&v55, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  *(&v56 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
  *&v55 = a2;

  sub_1E1AF386C();
  sub_1E1308058(&v55, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();
}

uint64_t _s11AppStoreKit29InlineUnifiedMessagePresenterC10engagement_6handle10completionySo13AMSEngagementC_So16AMSDialogRequestCSgySo0L6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1AF591C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EE1E35C8);
  (*(v6 + 16))(v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v16 = sub_1E13006E4(0, &qword_1EE1E3490, 0x1E698C8D8);
  v15[0] = a1;
  v10 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  if (a2)
  {
    v11 = sub_1E13006E4(0, &qword_1ECEB4A70, 0x1E698C8C0);
    v12 = a2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v12;
  v16 = v11;
  v13 = a2;
  sub_1E1AF385C();
  sub_1E1308058(v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s11AppStoreKit29InlineUnifiedMessagePresenterC10engagement_6handle10completionySo13AMSEngagementC_So0K7RequestCSgySo0K6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1AF591C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EE1E35C8);
  (*(v6 + 16))(v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v16 = sub_1E13006E4(0, &qword_1EE1E3490, 0x1E698C8D8);
  v15[0] = a1;
  v10 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  if (a2)
  {
    v11 = sub_1E13006E4(0, &unk_1ECEB5F50, 0x1E698C908);
    v12 = a2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v12;
  v16 = v11;
  v13 = a2;
  sub_1E1AF385C();
  sub_1E1308058(v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s11AppStoreKit29InlineUnifiedMessagePresenterC10engagement_9didUpdate9placement11serviceType10completionySo13AMSEngagementC_So0O7RequestCSgS2SySo0O6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v22 = a3;
  v9 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1E1AF591C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_1EE1E35C8);
  (*(v11 + 16))(v13, v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v28 = sub_1E13006E4(0, &qword_1EE1E3490, 0x1E698C8D8);
  v25 = a1;
  v15 = a1;
  sub_1E1AF385C();
  sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  if (a2)
  {
    v16 = sub_1E13006E4(0, &unk_1ECEB5F50, 0x1E698C908);
    v17 = a2;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v26 = 0;
    v27 = 0;
  }

  v25 = v17;
  v28 = v16;
  v18 = a2;
  sub_1E1AF385C();
  sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v19 = MEMORY[0x1E69E6158];
  v28 = MEMORY[0x1E69E6158];
  v25 = v22;
  v26 = a4;

  sub_1E1AF385C();
  sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v28 = v19;
  v25 = v23;
  v26 = v24;

  sub_1E1AF385C();
  sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  return (*(v11 + 8))(v13, v10);
}

uint64_t type metadata accessor for InlineUnifiedMessagePresenter(uint64_t a1)
{
  result = qword_1EE1E8908;
  if (!qword_1EE1E8908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E164DE28(uint64_t a1)
{
  result = sub_1E1AF436C();
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

void sub_1E164DF4C()
{
  if (qword_1EE1E3210 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE1E3218;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithHierarchicalColor_];

  qword_1ECEF45A0 = v3;
}

void sub_1E164DFE4()
{
  v0 = [objc_opt_self() systemGrayColor];
  v1 = [objc_opt_self() configurationWithHierarchicalColor_];

  qword_1ECEF45A8 = v1;
}

void sub_1E164E058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B12AE0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemOrangeColor];
  *(v0 + 40) = [v1 systemGrayColor];
  sub_1E1355E88();
  v2 = sub_1E1AF620C();

  v3 = [objc_opt_self() configurationWithPaletteColors_];

  qword_1ECEF45B0 = v3;
}

__n128 SearchResultsContent.__allocating_init(results:nextPage:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  return result;
}

uint64_t SearchResultsContent.init(results:nextPage:)(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  v3 = a2[1];
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  return v2;
}

uint64_t SearchResultsContent.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchResultsContent.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchResultsContent.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v42 = a2;
  v46 = v4;
  v39 = *v4;
  v40 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = sub_1E1AF5A6C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v41 = *(v13 + 8);
  v41(v17, v12);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB1F90, &qword_1E1B00D30);
    v22 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v23 = 0x73746C75736572;
    v24 = v39;
    v23[1] = 0xE700000000000000;
    v23[2] = v24;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x1E69AB690], v22);
    swift_willThrow();
    v25 = sub_1E1AF39DC();
    (*(*(v25 - 8) + 8))(v42, v25);
    v41(v43, v12);
    v26 = v46;
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v19 + 32))(v21, v11, v18);
    (*(v19 + 16))(v8, v21, v18);
    (*(v19 + 56))(v8, 0, 1, v18);
    v39 = v12;
    v27 = v42;
    Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0 = _s11AppStoreKit12SearchResultC18tryToMakeInstances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0(v8, v42);
    sub_1E1308058(v8, &qword_1ECEB1F90, &qword_1E1B00D30);
    v29 = MEMORY[0x1E69E7CC0];
    if (Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0)
    {
      v29 = Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0;
    }

    v26 = v46;
    v46[2] = v29;
    v30 = v38;
    v31 = v43;
    sub_1E1AF381C();
    sub_1E1AF37EC();
    v32 = sub_1E1AF39DC();
    (*(*(v32 - 8) + 8))(v27, v32);
    v33 = v31;
    v34 = v39;
    v35 = v41;
    v41(v33, v39);
    v35(v30, v34);
    (*(v19 + 8))(v21, v18);
    v36 = v45;
    *(v26 + 3) = v44;
    *(v26 + 5) = v36;
  }

  return v26;
}

uint64_t SearchResultsContent.deinit()
{

  sub_1E1308058(v0 + 24, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v0;
}

uint64_t SearchResultsContent.__deallocating_deinit()
{

  sub_1E1308058(v0 + 24, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

void *sub_1E164E7B0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchResultsContent.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

AppStoreKit::TopShelf::Style_optional __swiftcall TopShelf.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TopShelf.Style.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C6573756F726163;
  }

  else
  {
    return 0x7465736E69;
  }
}

uint64_t sub_1E164E95C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEF736E6F69746341;
  if (v2 != 1)
  {
    v3 = 0xEF736C6961746544;
  }

  if (*a1)
  {
    v4 = 0x6C6573756F726163;
  }

  else
  {
    v4 = 0x7465736E69;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0xEF736E6F69746341;
  if (*a2 != 1)
  {
    v6 = 0xEF736C6961746544;
  }

  if (*a2)
  {
    v7 = 0x6C6573756F726163;
  }

  else
  {
    v7 = 0x7465736E69;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1AF74AC();
  }

  return v9 & 1;
}

uint64_t sub_1E164EA54()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E164EB0C(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E164EBB0(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E164EC70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEF736E6F69746341;
  if (v2 != 1)
  {
    v4 = 0xEF736C6961746544;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x6C6573756F726163;
  }

  else
  {
    v6 = 0x7465736E69;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t TopShelf.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  TopShelf.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *TopShelf.init(deserializing:using:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v55 = a2;
  v44 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v43 - v6;
  v7 = sub_1E1AF5A6C();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF39DC();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v50 = a1;
  sub_1E1AF381C();
  sub_1E164F390();
  sub_1E1AF36DC();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v51 = v20;
  v52 = v12;
  v20(v18, v12);
  v21 = v57;
  if (v57 == 3)
  {
    v22 = sub_1E1AF5A7C();
    sub_1E164F78C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v23 = 0x656C797473;
    v23[1] = 0xE500000000000000;
    v23[2] = v44;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x1E69AB690], v22);
    swift_willThrow();
    v51(v50, v52);
    type metadata accessor for TopShelf();
    swift_deallocPartialClassInstance();
    (*(v53 + 8))(v55, v54);
    return v3;
  }

  *(v3 + 16) = v57;
  type metadata accessor for TopShelfPromotionItem(0);
  v25 = v3;
  v43 = v3;
  v26 = v50;
  sub_1E1AF381C();
  (*(v53 + 16))(v11, v55, v54);
  sub_1E164F78C(&qword_1ECEB7270, type metadata accessor for TopShelfPromotionItem, &protocol conformance descriptor for TopShelfItem);
  sub_1E1AF464C();
  v25[3] = v56;
  sub_1E1AF381C();
  v27 = v45;
  sub_1E1AF374C();
  v29 = v51;
  v28 = v52;
  v51(v15, v52);
  v31 = v48;
  v30 = v49;
  v32 = (*(v48 + 48))(v27, 1, v49);
  v24 = v43;
  if (v32 == 1)
  {
    sub_1E14352B8(v27);
    v29(v26, v28);
    v33 = MEMORY[0x1E69E7CC0];
    v35 = v54;
    v34 = v55;
    v36 = v53;
LABEL_10:
    v24[4] = v33;
    (*(v36 + 8))(v34, v35);
    return v24;
  }

  v44 = v19;
  (*(v31 + 32))(v46, v27, v30);
  v37 = v47;
  if (v21)
  {
    v38 = type metadata accessor for TopShelfCarouselItem(0);
  }

  else
  {
    v38 = type metadata accessor for TopShelfInsetItem(0);
  }

  v35 = v54;
  v34 = v55;
  v36 = v53;
  v55 = &v43;
  MEMORY[0x1EEE9AC00](v38);
  *(&v43 - 2) = v39;
  *(&v43 - 1) = v34;
  type metadata accessor for TopShelfItem(0);
  v40 = v46;
  v41 = sub_1E1AF59FC();
  if (!v37)
  {
    v33 = v41;
    v51(v26, v52);
    (*(v48 + 8))(v40, v49);
    goto LABEL_10;
  }

  type metadata accessor for TopShelf();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_1E164F390()
{
  result = qword_1ECEB7268;
  if (!qword_1ECEB7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7268);
  }

  return result;
}

uint64_t sub_1E164F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  (*(v6 + 16))(v8, a3, v5);
  type metadata accessor for TopShelfItem(0);
  sub_1E164F78C(&qword_1ECEB7280, type metadata accessor for TopShelfItem, &protocol conformance descriptor for TopShelfItem);
  return sub_1E1AF464C();
}

uint64_t TopShelf.deinit()
{

  return v0;
}

uint64_t TopShelf.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1E164F680()
{
  result = qword_1ECEB7278;
  if (!qword_1ECEB7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7278);
  }

  return result;
}

uint64_t *sub_1E164F6D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TopShelf();
  v7 = swift_allocObject();
  result = TopShelf.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E164F78C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static UserEngagementManager.shared.getter()
{
  if (qword_1EE1ECA60 != -1)
  {
    swift_once();
  }
}

double UserEngagementManager.defaultTabIdentifier.getter@<D0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  return sub_1E164F880(v3, v4);
}

double sub_1E164F880(uint64_t a1, unint64_t a2)
{
  if (a2 != 11)
  {
    return sub_1E13BC260(a1, a2);
  }

  return result;
}

double sub_1E164F890(uint64_t a1)
{
  if (qword_1EE1D27B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1EE215450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E13E44F8(v5);
  sub_1E1AF54AC();

  return result;
}

uint64_t UserEngagementManager.deinit()
{
  sub_1E13017D4(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t UserEngagementManager.__deallocating_deinit()
{
  sub_1E13017D4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t AppIconSnapshotCache.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1E159F1F4(MEMORY[0x1E69E7CC0]);
  return v0;
}

void *AppIconSnapshotCache.snapshot(for:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_1E135FCF4(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

uint64_t AppIconSnapshotCache.insertSnapshot(_:for:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1E15992F0(v6, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v9;
  return swift_endAccess();
}

Swift::Void __swiftcall AppIconSnapshotCache.clearCache()()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t AppIconSnapshotCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ProductReviewActions.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v38 = *v4;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v47 = sub_1E1AF380C();
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;

  v51 = a1;
  sub_1E1AF381C();
  v48 = v8;
  v41 = *(v8 + 16);
  v42 = v8 + 16;
  v41(v12, a2, v7);
  type metadata accessor for TapToRate(0);
  swift_allocObject();
  v20 = TapToRate.init(deserializing:using:)(v19, v12);
  v49 = v7;
  if (v3)
  {
    v21 = a2;

    v20 = 0;
    v40 = 0;
  }

  else
  {
    v40 = 0;
    v21 = a2;
  }

  v45 = OBJC_IVAR____TtC11AppStoreKit20ProductReviewActions_tapToRate;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit20ProductReviewActions_tapToRate) = v20;
  type metadata accessor for Action(0);
  sub_1E1AF381C();
  v22 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v21);
  v23 = *(v50 + 8);
  v24 = v47;
  v23(v16, v47);
  v39 = OBJC_IVAR____TtC11AppStoreKit20ProductReviewActions_writeReviewAction;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit20ProductReviewActions_writeReviewAction) = v22;
  v25 = v45;
  sub_1E1AF381C();
  v26 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v21);
  v46 = v23;
  v23(v16, v24);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit20ProductReviewActions_supportAction) = v26;
  if (*(v4 + v25) || *(v4 + v39) || (, , v26))
  {

    v27 = v43;
    v28 = v51;
    (*(v50 + 16))(v43, v51, v24);
    v29 = v44;
    v30 = v49;
    v41(v44, v21, v49);
    v31 = v40;
    v32 = ProductRatingsAndReviewsComponent.init(deserializing:using:)(v27, v29);
    if (v31)
    {
      (*(v48 + 8))(v21, v30);
      return v46(v28, v24);
    }

    else
    {
      v34 = v32;
      (*(v48 + 8))(v21, v30);
      v46(v28, v24);
      return v34;
    }
  }

  else
  {
    v35 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v36 = 0xD000000000000029;
    v36[1] = 0x80000001E1B6C1B0;
    v36[2] = v38;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    (*(v48 + 8))(v21, v49);
    v46(v51, v24);

    type metadata accessor for ProductReviewActions(0);
    return swift_deallocPartialClassInstance();
  }
}

uint64_t sub_1E1650398()
{
}

uint64_t ProductReviewActions.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return v0;
}

uint64_t ProductReviewActions.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductReviewActions(uint64_t a1)
{
  result = qword_1ECEB7288;
  if (!qword_1ECEB7288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

AppStoreKit::ItemBackground_optional __swiftcall ItemBackground.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ItemBackground.rawValue.getter()
{
  v1 = 25697;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x65736E65646E6F63;
  }

  if (*v0)
  {
    v1 = 0x64417465736E69;
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

uint64_t sub_1E16506A4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E165076C(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1650820(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E16508F0(unint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25697;
  v4 = 0x80000001E1B56AE0;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x65736E65646E6F63;
    v4 = 0xEF68637261655364;
  }

  if (*v1)
  {
    v3 = 0x64417465736E69;
    v2 = 0xE700000000000000;
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

unint64_t sub_1E1650998()
{
  result = qword_1ECEB7298;
  if (!qword_1ECEB7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7298);
  }

  return result;
}

uint64_t _JetTraceAggregator.__allocating_init(signpostPredicate:aggregationWindow:signpostTimeout:activityTimeout:)(void *a1, double a2, double a3, double a4)
{
  v8 = sub_1E1AF68DC();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v20 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = swift_allocObject();
  *(v12 + 32) = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 128) = sub_1E159F790(MEMORY[0x1E69E7CC0]);
  v14 = sub_1E159F92C(v13);
  v15 = MEMORY[0x1E69E7CD0];
  *(v12 + 136) = v14;
  *(v12 + 144) = v15;
  *(v12 + 152) = v13;
  *(v12 + 160) = v13;
  *(v12 + 168) = v13;
  *(v12 + 176) = 0;
  *(v12 + 48) = a1;
  *(v12 + 56) = a2;
  *(v12 + 64) = a3;
  *(v12 + 72) = a4;
  swift_beginAccess();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  v16 = objc_allocWithZone(MEMORY[0x1E696AD10]);
  v19 = a1;
  *(v12 + 80) = [v16 init];
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  sub_1E1AF322C();
  v23 = v13;
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1AF6EEC();
  (*(v21 + 104))(v20, *MEMORY[0x1E69E8090], v22);
  v17 = sub_1E1AF692C();

  *(v12 + 88) = v17;
  return v12;
}

Swift::Void __swiftcall _JetTraceAggregator.start()()
{
  v1 = *(v0 + 80);
  [v1 lock];
  sub_1E1651B04(v0);

  [v1 unlock];
}

Swift::Void __swiftcall _JetTraceAggregator.stop()()
{
  v1 = *(v0 + 80);
  [v1 lock];
  v2 = *(v0 + 176);
  if (v2)
  {
    v3 = *(v2 + 24);

    [v3 lock];
    *(v2 + 16) = 1;
    [v3 unlock];
  }

  *(v0 + 176) = 0;

  [v1 unlock];
}

void sub_1E1650E98(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D40, &qword_1E1B11590);
  v6 = *(v5 - 8);
  v7 = v6;
  if (v4)
  {
    sub_1E134FD1C(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a1, &qword_1ECEB4D40, &qword_1E1B11590);
    (*(v7 + 56))(a1, 0, 1, v5);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D40, &qword_1E1B11590) - 8);
    sub_1E14E665C(v3, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), 1, (2 * v4) | 1);
    v3 = v9;
  }

  else
  {
    (*(v6 + 56))(a1, 1, 1, v5);
  }

  *v1 = v3;
}

uint64_t _JetTraceAggregator.TimedEvent.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1E1651088()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E16510C8()
{
  sub_1E13006E4(0, &qword_1ECEB72A8, 0x1E69E9BF8);
  result = sub_1E1AF6D7C();
  qword_1ECEB72A0 = result;
  return result;
}

uint64_t sub_1E165115C()
{
  sub_1E13006E4(0, &qword_1EE1E34B8, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B02CD0;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1E13C2F48();
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000001E1B6C410;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x656361725474656ALL;
  *(v0 + 80) = 0xE800000000000000;
  result = sub_1E1AF678C();
  qword_1EE1EE5E0 = result;
  return result;
}

uint64_t sub_1E1651268()
{
  sub_1E13006E4(0, &qword_1EE1E34B8, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B02CD0;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1E13C2F48();
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000001E1B6C5E0;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x5D74656A5BLL;
  *(v0 + 80) = 0xE500000000000000;
  result = sub_1E1AF678C();
  qword_1EE1EE698 = result;
  return result;
}

uint64_t _JetTraceAggregator.init(signpostPredicate:aggregationWindow:signpostTimeout:activityTimeout:)(void *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1E1AF68DC();
  v23 = *(v10 - 8);
  v24 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v22 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  *(v4 + 32) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  v14 = MEMORY[0x1E69E7CC0];
  *(v4 + 128) = sub_1E159F790(MEMORY[0x1E69E7CC0]);
  v15 = sub_1E159F92C(v14);
  v16 = MEMORY[0x1E69E7CD0];
  *(v4 + 136) = v15;
  *(v4 + 144) = v16;
  *(v4 + 152) = v14;
  *(v4 + 160) = v14;
  *(v4 + 168) = v14;
  *(v4 + 176) = 0;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  swift_beginAccess();
  v17 = *(v4 + 16);
  v18 = *(v4 + 24);
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v21 = a1;
  sub_1E1300EA8(v17, v18);
  *(v4 + 80) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  sub_1E1AF322C();
  v25 = v14;
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1AF6EEC();
  (*(v23 + 104))(v22, *MEMORY[0x1E69E8090], v24);
  v19 = sub_1E1AF692C();

  *(v5 + 88) = v19;
  return v5;
}

uint64_t sub_1E165167C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E165565C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4, v5);
}

uint64_t sub_1E1651710(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E1655634;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1E1300E34(v3, v4);
  return sub_1E1300EA8(v8, v9);
}

uint64_t _JetTraceAggregator.didFinishEvent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1E1300E34(v1, *(v0 + 24));
  return v1;
}

uint64_t _JetTraceAggregator.didFinishEvent.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1E1300EA8(v5, v6);
}

uint64_t sub_1E16518C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E163E910;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4, v5);
}

uint64_t sub_1E1651954(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E163E8D8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_1E1300E34(v3, v4);
  return sub_1E1300EA8(v8, v9);
}

uint64_t _JetTraceAggregator.shouldRecordActivity.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_1E1300E34(v1, *(v0 + 40));
  return v1;
}

uint64_t _JetTraceAggregator.shouldRecordActivity.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1E1300EA8(v5, v6);
}

uint64_t sub_1E1651B04(uint64_t a1)
{
  v2 = sub_1E1AEFE6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + 176);
  if (v6)
  {
    v7 = *(v6 + 24);

    [v7 lock];
    *(v6 + 16) = 1;
    [v7 unlock];
  }

  swift_beginAccess();
  sub_1E134FD1C(a1 + 96, aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v8 = v17;
  sub_1E1308058(aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  if (!v8)
  {
    v9 = [objc_opt_self() sharedCoordinator];
    v18 = j___s11AppStoreKit19_JetTraceAggregatorC4stopyyF;
    v19 = a1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    v17 = &block_descriptor_41;
    v10 = _Block_copy(aBlock);

    v11 = [v9 registerCleanupHandler_];
    _Block_release(v10);

    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1E137F818(aBlock, a1 + 96);
    swift_endAccess();
  }

  sub_1E1AEFE5C();
  type metadata accessor for _JetTraceAggregator.CancellableAggregation();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  *(v12 + 32) = 0;
  v13 = sub_1E1655688(v5, v12);

  (*(v3 + 8))(v5, v2);
  *(a1 + 176) = v13;
}

id sub_1E1651DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFE6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v23[-1] - v12;
  v14 = *(a1 + 24);
  [v14 lock];
  v15 = *(a1 + 16);
  result = [v14 unlock];
  if ((v15 & 1) == 0)
  {
    sub_1E1AEFE5C();
    sub_1E165201C(a3, a1);
    (*(v7 + 16))(v9, v13, v6);
    v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    (*(v7 + 32))(v19 + v17, v9, v6);
    *(v19 + v18) = a1;
    v20 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);

    v21 = sub_1E1AF68EC();
    v23[3] = v20;
    v23[4] = MEMORY[0x1E69AB720];
    v23[0] = v21;
    sub_1E1AF583C();

    (*(v7 + 8))(v13, v6);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t sub_1E165201C(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v2 = sub_1E1AEFE6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  if (qword_1EE1D2768 != -1)
  {
    swift_once();
  }

  v5 = sub_1E1AF591C();
  __swift_project_value_buffer(v5, qword_1EE216140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF549C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29F8, &qword_1E1B031B0);
  v6 = sub_1E1AF588C();
  v16 = [objc_opt_self() localStore];
  v23 = sub_1E1655DFC;
  v24 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E16527D0;
  v22 = &block_descriptor_43_0;
  v7 = _Block_copy(&aBlock);

  [v16 setProgressHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v9, v17, v2);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  (*(v3 + 32))(v12 + v10, v9, v2);
  *(v12 + v11) = v18;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v23 = sub_1E1655E04;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E14CC840;
  v22 = &block_descriptor_52;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v16 prepareWithCompletionHandler_];
  _Block_release(v13);

  return v6;
}

void sub_1E1652428(void *a1, double a2)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if ((sub_1E1AF57BC() & 1) == 0)
  {
    if (a1)
    {
      v5 = a1;
      if (qword_1EE1D2768 != -1)
      {
        swift_once();
      }

      v6 = sub_1E1AF591C();
      __swift_project_value_buffer(v6, qword_1EE216140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      swift_getErrorValue();
      v10[3] = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
      (*(*(v9 - 8) + 16))(boxed_opaque_existential_0);
      sub_1E1AF385C();
      sub_1E1308058(v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF54AC();
    }

    if (a2 >= 1.0)
    {
      if (qword_1EE1D2768 != -1)
      {
        swift_once();
      }

      v8 = sub_1E1AF591C();
      __swift_project_value_buffer(v8, qword_1EE216140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      LOBYTE(v10[0]) = 1;
      sub_1E1AF586C();
    }
  }
}

void sub_1E16527D0(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_1E165284C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = a1;
  v10 = a2;
  sub_1E13006E4(0, &qword_1EE1E3450, 0x1E69AD3C0);
  sub_1E1AF55CC();
  v34 = aBlock;
  v35 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72B0, "p(\a");
  sub_1E1AF55DC();
  sub_1E1655EC0(aBlock);
  v11 = v33;
  v12 = [objc_allocWithZone(MEMORY[0x1E69AD3D0]) initWithSource_];
  [v12 setFlags_];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E1B12AE0;
    v16 = *(v14 + 48);
    *(v15 + 32) = v16;
    v17 = qword_1ECEB0F48;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_1EE1EE698;
    *(v15 + 40) = qword_1EE1EE698;
    sub_1E13006E4(0, &qword_1EE1E34B8, 0x1E696AE18);
    v20 = v19;
    v21 = sub_1E1AF620C();

    v22 = [objc_opt_self() orPredicateWithSubpredicates_];
  }

  else
  {
    v22 = 0;
  }

  [v12 setFilterPredicate_];

  v23 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v31 = sub_1E1655ECC;
  v32 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1E1367148;
  v30 = &block_descriptor_56;
  v24 = _Block_copy(&aBlock);

  [v12 setEventHandler_];
  _Block_release(v24);
  v25 = sub_1E1AEFDBC();
  [v12 activateStreamFromDate_];

  v26 = *(a5 + 32);
  *(a5 + 32) = v12;
}

uint64_t sub_1E1652DAC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E1652E0C(a1);
  }

  return result;
}

uint64_t sub_1E1652E0C(void *a1)
{
  v3 = sub_1E1AF320C();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF324C();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1655ED4(a1, v20);
  v9 = swift_allocObject();
  v10 = v20[3];
  *(v9 + 48) = v20[2];
  *(v9 + 64) = v10;
  *(v9 + 80) = v20[4];
  v11 = v21;
  v12 = v20[1];
  *(v9 + 16) = v20[0];
  *(v9 + 32) = v12;
  *(v9 + 96) = v11;
  *(v9 + 104) = v1;
  aBlock[4] = sub_1E16560D4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_62;
  v13 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v8, v5, v13);
  _Block_release(v13);
  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

void sub_1E16530F0(uint64_t a1)
{
  sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](a1);
  v3 = *v2;
  if (*v2 == 513)
  {
    sub_1E1653578(v2);
  }

  else if (v3 == 1536)
  {
    sub_1E1653320(v2);
  }

  else
  {
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v4 = sub_1E1AF591C();
    __swift_project_value_buffer(v4, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    type metadata accessor for OSLogEventType(0);
    v6[3] = v5;
    v6[0] = v3;
    sub_1E1AF385C();
    sub_1E1308058(v6, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  sub_1E1653E74();
}

double sub_1E1653320(uint64_t a1)
{
  sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](a1);
  v3 = *(v2 + 48);
  if (v3 == 2)
  {

    sub_1E1654B08(v2);
  }

  else if (v3 == 1)
  {

    sub_1E16547E8(v2);
  }

  else
  {
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v5 = sub_1E1AF591C();
    __swift_project_value_buffer(v5, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    type metadata accessor for OSLogEventSignpostType(0);
    v7[3] = v6;
    v7[0] = v3;
    sub_1E1AF385C();
    sub_1E1308058(v7, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  return result;
}

void sub_1E1653578(void *a1)
{
  v2 = v1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D40, &qword_1E1B11590);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v85 = (&v80 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v80 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v92 = (&v80 - v10);
  v90 = sub_1E1AEFE6C();
  v93 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v80 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v80 - v15;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  v20 = a1[2];
  if (!v20 || (*&v96 = a1[1], *(&v96 + 1) = v20, *&v95[0] = 0x5D74656A5BLL, *(&v95[0] + 1) = 0xE500000000000000, sub_1E1656488(), sub_1E16564DC(), , (sub_1E1AF5D4C() & 1) == 0))
  {
    swift_beginAccess();
    if (!*(v1[17] + 16) || (sub_1E15A47C8(a1[5]), (v22 & 1) == 0))
    {
      swift_endAccess();

      return;
    }

    swift_endAccess();
  }

  sub_1E1AEFE9C();
  v82 = sub_1E1AEFE7C();
  v81 = v23;
  (*(v17 + 8))(v19, v16);
  v24 = a1[4];
  v80 = a1[5];
  if (v20)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  if (v20)
  {
    v26 = v20;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v27 = sub_1E1AF602C();

  if (v27)
  {
    v28 = sub_1E1AF5F1C();
    v29 = sub_1E150FD68(v28, v25, v26);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v25 = MEMORY[0x1E68FEBF0](v29, v31, v33, v35);
    v37 = v36;
  }

  else
  {
    v37 = v26;
  }

  v38 = v88;
  if (sub_1E1AF602C())
  {
    v39 = sub_1E150FD68(1uLL, v25, v37);
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v25 = MEMORY[0x1E68FEBF0](v39, v41, v43, v45);
    v37 = v46;
  }

  *&v96 = v25;
  *(&v96 + 1) = v37;
  v47 = sub_1E1AF608C();
  v49 = v48;

  *&v96 = v82;
  *(&v96 + 1) = v81;
  *&v97 = v24;
  *(&v97 + 1) = v80;
  *&v98 = v47;
  *(&v98 + 1) = v49;
  swift_beginAccess();
  sub_1E1656420(&v96, v95);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v95[0] = v2[17];
  v2[17] = 0x8000000000000000;
  sub_1E159B5C4(&v96, v24, isUniquelyReferenced_nonNull_native);
  v2[17] = *&v95[0];
  swift_endAccess();
  v51 = v89;
  sub_1E1AEFE5C();
  v52 = v86;
  sub_1E1AEFDAC();
  v53 = v93;
  v54 = *(v93 + 8);
  v55 = v51;
  v56 = v90;
  v54(v55, v90);
  v57 = *(v38 + 48);
  v58 = v92;
  *v92 = v24;
  v59 = *(v53 + 32);
  v93 = v53 + 32;
  v59(v58 + v57, v52, v56);
  sub_1E134FD1C(v58, v91, &qword_1ECEB4D40, &qword_1E1B11590);
  v60 = v2[20];
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v2[20] = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_1E172ECAC(0, v60[2] + 1, 1, v60);
    v2[20] = v60;
  }

  v63 = v60[2];
  v62 = v60[3];
  v64 = v38;
  if (v63 >= v62 >> 1)
  {
    v60 = sub_1E172ECAC((v62 > 1), v63 + 1, 1, v60);
    v2[20] = v60;
  }

  v60[2] = v63 + 1;
  v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v65 = *(v87 + 72);
  sub_1E137F600(v91, v60 + v88 + v65 * v63, &qword_1ECEB4D40, &qword_1E1B11590);
  v2[20] = v60;
  sub_1E1308058(v92, &qword_1ECEB4D40, &qword_1E1B11590);
  swift_beginAccess();
  if (sub_1E14B18DC())
  {
    sub_1E1656458(&v96);
  }

  else
  {
    swift_beginAccess();
    v66 = v2[4];
    if (!v66)
    {
      sub_1E1656458(&v96);
      return;
    }

    v67 = v2[5];
    v95[0] = v96;
    v95[1] = v97;
    v95[2] = v98;

    v68 = v66(v95);
    sub_1E1300EA8(v66, v67);
    sub_1E1656458(&v96);
    if (v68)
    {
      return;
    }
  }

  swift_beginAccess();
  sub_1E1895844(v94, v24);
  swift_endAccess();
  v69 = v89;
  sub_1E1AEFE5C();
  v70 = v83;
  sub_1E1AEFDAC();
  v71 = v69;
  v72 = v90;
  v54(v71, v90);
  v73 = *(v64 + 48);
  v74 = v85;
  *v85 = v24;
  v59((v74 + v73), v70, v72);
  swift_beginAccess();
  v75 = v84;
  sub_1E134FD1C(v74, v84, &qword_1ECEB4D40, &qword_1E1B11590);
  v76 = v2[21];
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v2[21] = v76;
  if ((v77 & 1) == 0)
  {
    v76 = sub_1E172ECAC(0, v76[2] + 1, 1, v76);
    v2[21] = v76;
  }

  v79 = v76[2];
  v78 = v76[3];
  if (v79 >= v78 >> 1)
  {
    v76 = sub_1E172ECAC((v78 > 1), v79 + 1, 1, v76);
    v2[21] = v76;
  }

  v76[2] = v79 + 1;
  sub_1E137F600(v75, v76 + v88 + v79 * v65, &qword_1ECEB4D40, &qword_1E1B11590);
  v2[21] = v76;
  sub_1E1308058(v74, &qword_1ECEB4D40, &qword_1E1B11590);
}

void sub_1E1653E74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72D8, &qword_1E1B22178);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v76 = &v66 - v3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72B8, &qword_1E1B2D600);
  v69 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = (&v66 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72E0, &qword_1E1B22180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = (&v66 - v8);
  v80 = sub_1E1AEFE6C();
  v67 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D40, &qword_1E1B11590);
  v70 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v12 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v66 - v14);
  v16 = v0[20];
  if (!*(v16 + 16))
  {
LABEL_20:
    swift_beginAccess();
    v40 = v1[21];
    if (*(v40 + 16))
    {
      v41 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v42 = (v67 + 8);
      v43 = v74;
      while (1)
      {
        sub_1E134FD1C(v40 + v41, v12, &qword_1ECEB4D40, &qword_1E1B11590);
        v44 = *v12;
        sub_1E1AEFE5C();
        v45 = sub_1E1AEFDDC();
        (*v42)(v10, v80);
        if ((v45 & 1) == 0)
        {
          break;
        }

        swift_beginAccess();
        sub_1E1650E98(v43);
        swift_endAccess();
        sub_1E1308058(v43, &qword_1ECEB72E0, &qword_1E1B22180);
        swift_beginAccess();
        sub_1E154E7E4(v44);
        swift_endAccess();
        sub_1E1308058(v12, &qword_1ECEB4D40, &qword_1E1B11590);
        v40 = v1[21];
        if (!*(v40 + 16))
        {
          goto LABEL_26;
        }
      }

      sub_1E1308058(v12, &qword_1ECEB4D40, &qword_1E1B11590);
    }

LABEL_26:
    v81 = v10;
    v46 = v1[19];
    v47 = v78;
    if (*(v46 + 16))
    {
      v75 = *(v69 + 80);
      v48 = (v75 + 32) & ~v75;
      v49 = (v67 + 8);
      v77 = (v69 + 56);
      while (1)
      {
        sub_1E134FD1C(v46 + v48, v47, &qword_1ECEB72B8, &qword_1E1B2D600);
        v50 = *v47;
        v51 = v81;
        sub_1E1AEFE5C();
        v52 = sub_1E1AEFDDC();
        (*v49)(v51, v80);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v53 = v1[19];
        v54 = v53[2];
        if (v54)
        {
          v55 = v76;
          sub_1E134FD1C(v53 + v48, v76, &qword_1ECEB72B8, &qword_1E1B2D600);
          (*v77)(v55, 0, 1, v79);
          v56 = v54 - 1;
          if (v54 == 1)
          {
            v53 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72E8, &qword_1E1B22188);
            v57 = *(v69 + 72);
            v53 = swift_allocObject();
            v58 = _swift_stdlib_malloc_size(v53);
            if (!v57)
            {
              goto LABEL_48;
            }

            if (v58 - v48 == 0x8000000000000000 && v57 == -1)
            {
              goto LABEL_50;
            }

            v53[2] = v56;
            v53[3] = 2 * ((v58 - v48) / v57);
            swift_arrayInitWithCopy();
          }

          v60 = v76;
        }

        else
        {
          v60 = v76;
          (*v77)(v76, 1, 1, v79);
        }

        v1[19] = v53;

        sub_1E1308058(v60, &qword_1ECEB72D8, &qword_1E1B22178);
        swift_beginAccess();
        v61 = sub_1E15A47C8(v50);
        v47 = v78;
        if (v62)
        {
          v63 = v61;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = v1[16];
          v82 = v65;
          v1[16] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1E1419B58();
            v65 = v82;
          }

          sub_1E141474C(v63, v65);
          v1[16] = v65;
          v47 = v78;
        }

        swift_endAccess();
        sub_1E1308058(v47, &qword_1ECEB72B8, &qword_1E1B2D600);
        v46 = v1[19];
        if (!*(v46 + 16))
        {
          return;
        }
      }

      sub_1E1308058(v78, &qword_1ECEB72B8, &qword_1E1B2D600);
    }

    return;
  }

  v68 = *(v70 + 80);
  v17 = (v68 + 32) & ~v68;
  v72 = (v70 + 56);
  v73 = (v67 + 8);
  v18 = &qword_1E1B11590;
  v71 = v12;
  v75 = v17;
  while (1)
  {
    v19 = v18;
    sub_1E134FD1C(v16 + v17, v15, &qword_1ECEB4D40, v18);
    v20 = *v15;
    sub_1E1AEFE5C();
    v21 = sub_1E1AEFDDC();
    (*v73)(v10, v80);
    if ((v21 & 1) == 0)
    {
      sub_1E1308058(v15, &qword_1ECEB4D40, &qword_1E1B11590);
      goto LABEL_20;
    }

    v22 = v1[20];
    v23 = v22[2];
    if (!v23)
    {
      v33 = v77;
      (*v72)(v77, 1, 1, v81);

      goto LABEL_16;
    }

    v24 = v77;
    v25 = v75;
    sub_1E134FD1C(v22 + v75, v77, &qword_1ECEB4D40, v19);
    (*v72)(v24, 0, 1, v81);
    v26 = v23 - 1;
    if (v23 == 1)
    {
      v22 = MEMORY[0x1E69E7CC0];
      v33 = v77;
      v12 = v71;
      goto LABEL_16;
    }

    v27 = v10;
    v28 = v15;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D48, &qword_1E1B22190);
    v30 = *(v70 + 72);
    v22 = swift_allocObject();
    v31 = _swift_stdlib_malloc_size(v22);
    if (!v30)
    {
      break;
    }

    if (v31 - v25 == 0x8000000000000000 && v30 == -1)
    {
      goto LABEL_49;
    }

    v22[2] = v26;
    v22[3] = 2 * ((v31 - v25) / v30);
    swift_arrayInitWithCopy();
    v33 = v77;
    v12 = v71;
    v34 = v29;
    v15 = v28;
    v10 = v34;
LABEL_16:
    v1[20] = v22;

    sub_1E1308058(v33, &qword_1ECEB72E0, &qword_1E1B22180);
    swift_beginAccess();
    v35 = sub_1E15A47C8(v20);
    v17 = v75;
    if (v36)
    {
      v37 = v35;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v1[17];
      v83 = v39;
      v1[17] = 0x8000000000000000;
      if (!v38)
      {
        sub_1E1419D18();
        v39 = v83;
      }

      sub_1E14148C0(v37, v39);
      v1[17] = v39;
    }

    swift_endAccess();
    v18 = v19;
    sub_1E1308058(v15, &qword_1ECEB4D40, v19);
    v16 = v1[20];
    if (!*(v16 + 16))
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_1E16547E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72B8, &qword_1E1B2D600);
  v5 = v4 - 8;
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v27 - v8);
  v10 = sub_1E1AEFE6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = *(a1 + 56);
  swift_beginAccess();
  sub_1E141D198(a1, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = *(v1 + 128);
  *(v1 + 128) = 0x8000000000000000;
  sub_1E159B4A0(a1, v17, isUniquelyReferenced_nonNull_native);
  *(v1 + 128) = v29[0];
  swift_endAccess();
  sub_1E1AEFE5C();
  sub_1E1AEFDAC();
  v19 = v13;
  v20 = v27;
  (*(v11 + 8))(v19, v10);
  v21 = *(v5 + 56);
  *v9 = v17;
  (*(v11 + 32))(v9 + v21, v16, v10);
  sub_1E134FD1C(v9, v20, &qword_1ECEB72B8, &qword_1E1B2D600);
  v22 = *(v1 + 152);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 152) = v22;
  if ((v23 & 1) == 0)
  {
    v22 = sub_1E172EB68(0, v22[2] + 1, 1, v22);
    *(v2 + 152) = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_1E172EB68((v24 > 1), v25 + 1, 1, v22);
    *(v2 + 152) = v22;
  }

  v22[2] = v25 + 1;
  sub_1E137F600(v20, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, &qword_1ECEB72B8, &qword_1E1B2D600);
  *(v2 + 152) = v22;
  return sub_1E1308058(v9, &qword_1ECEB72B8, &qword_1E1B2D600);
}

void sub_1E1654B08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1AF591C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = v1[16];
  if (!*(v9 + 16) || (v10 = *(a1 + 56), v11 = sub_1E15A47C8(v10), (v12 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v52 = v5;
  v13 = *(v9 + 56) + 88 * v11;
  v14 = *(v13 + 24);
  v50 = v6;
  v51 = v14;
  v15 = *(v13 + 80);
  swift_endAccess();
  swift_beginAccess();
  v53 = v15;

  v49 = v10;
  sub_1E1410F58(v10, &v56);
  swift_endAccess();
  v62[2] = v58;
  v62[3] = v59;
  v62[4] = v60;
  v63 = v61;
  v62[0] = v56;
  v62[1] = v57;
  sub_1E1308058(v62, &qword_1ECEB72C0, &qword_1E1B22170);
  v54 = sub_1E16551D8(a1);
  v16 = *(v54 + 16);
  if (v16)
  {
    v17 = v54 + 32;
    swift_beginAccess();
    v18 = 0;
    while (1)
    {
      v19 = v2[18];
      if (*(v19 + 16))
      {
        v20 = *(v17 + 48 * v18 + 16);
        v21 = sub_1E1AF761C();
        v22 = -1 << *(v19 + 32);
        v23 = v21 & ~v22;
        if ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          break;
        }
      }

LABEL_5:
      if (++v18 == v16)
      {
        goto LABEL_13;
      }
    }

    v24 = ~v22;
    while (*(*(v19 + 48) + 8 * v23) != v20)
    {
      v23 = (v23 + 1) & v24;
      if (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_22;
  }

LABEL_13:
  v25 = *(a1 + 24);
  v26 = v51;
  if (v25 >= v51)
  {
    v34 = sub_1E16560E0(v51, v25);
    if ((v35 & 1) == 0)
    {
      v64[0] = *(a1 + 64);
      v36 = *(&v64[0] + 1);
      if (*(&v64[0] + 1))
      {
        v37 = v34;
        v38 = *&v64[0];
        v39 = *(a1 + 80);
        sub_1E134FD1C(v64, &v56, &unk_1ECEB5D40, &unk_1E1B02B90);

        v40 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v56 = v40;
        sub_1E1656180(v39, sub_1E1655478, 0, isUniquelyReferenced_nonNull_native, &v56);

        v42 = v56;
        swift_beginAccess();
        v43 = v2[2];
        if (v43)
        {
          v44 = v2[3];
          *&v56 = v37;
          *(&v56 + 1) = v38;
          *&v57 = v36;
          *(&v57 + 1) = v54;
          *&v58 = v42;

          v43(&v56);
          sub_1E1300EA8(v43, v44);
        }

        goto LABEL_23;
      }
    }

LABEL_22:

LABEL_23:

    return;
  }

  v48 = *(a1 + 24);

  if (qword_1EE1D2768 != -1)
  {
    swift_once();
  }

  v27 = v52;
  v28 = __swift_project_value_buffer(v52, qword_1EE216140);
  v29 = v50;
  (*(v50 + 16))(v8, v28, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  v30 = *(sub_1E1AF38EC() - 8);
  v54 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v31 = MEMORY[0x1E69E76D8];
  *(&v57 + 1) = MEMORY[0x1E69E76D8];
  *&v56 = v26;
  sub_1E1AF385C();
  sub_1E1308058(&v56, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  *(&v57 + 1) = v31;
  *&v56 = v48;
  sub_1E1AF385C();
  sub_1E1308058(&v56, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  v55 = *(a1 + 64);
  if (*(&v55 + 1))
  {
    v32 = MEMORY[0x1E69E6158];
    v33 = v55;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    *&v57 = 0;
  }

  v45 = v49;
  *&v56 = v33;
  *(&v56 + 1) = *(&v55 + 1);
  *(&v57 + 1) = v32;
  sub_1E134FD1C(&v55, v64, &unk_1ECEB5D40, &unk_1E1B02B90);
  sub_1E1AF385C();
  sub_1E1308058(&v56, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  *(&v57 + 1) = MEMORY[0x1E69E76D8];
  *&v56 = v45;
  sub_1E1AF385C();
  sub_1E1308058(&v56, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  v46 = v52;
  sub_1E1AF54AC();

  (*(v29 + 8))(v8, v46);
}

char *sub_1E16551D8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 136);
  if (*(v4 + 16) && (v5 = sub_1E15A47C8(*(a1 + 32)), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 48 * v5);
    v9 = *v7;
    v8 = v7[1];
    v11 = v7[2];
    v10 = v7[3];
    v13 = v7[4];
    v12 = v7[5];
    swift_endAccess();

    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1E172EB8C(0, *(v14 + 2) + 1, 1, v14);
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_1E172EB8C((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v17 = &v14[48 * v16];
      *(v17 + 4) = v9;
      *(v17 + 5) = v8;
      *(v17 + 6) = v11;
      *(v17 + 7) = v10;
      *(v17 + 8) = v13;
      *(v17 + 9) = v12;
      swift_beginAccess();
      v18 = *(v2 + 136);
      if (!*(v18 + 16))
      {
        break;
      }

      v19 = sub_1E15A47C8(v10);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = (*(v18 + 56) + 48 * v19);
      v9 = *v21;
      v22 = v21[1];
      v11 = v21[2];
      v10 = v21[3];
      v13 = v21[4];
      v23 = v21[5];
      swift_endAccess();

      v8 = v22;
      v12 = v23;
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return MEMORY[0x1E69E7CC0];
  }

  return v14;
}

uint64_t _JetTraceAggregator.deinit()
{
  sub_1E1300EA8(*(v0 + 16), *(v0 + 24));
  sub_1E1300EA8(*(v0 + 32), *(v0 + 40));

  sub_1E1308058(v0 + 96, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t _JetTraceAggregator.__deallocating_deinit()
{
  _JetTraceAggregator.deinit();

  return swift_deallocClassInstance();
}

double sub_1E1655478@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1E1655588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E16555D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1655688(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v41 = a2;
  v2 = sub_1E1AF320C();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF324C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E1AEFE6C();
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v29[2] = v7;
  v30 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF31EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_1E1AF326C();
  v32 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - v15;
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
  sub_1E1AF549C();

  v18 = v34;
  v29[1] = *(v34 + 88);
  sub_1E1AF325C();
  *v11 = 10;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F48], v8);
  MEMORY[0x1E68FBFF0](v13, v11);
  (*(v9 + 8))(v11, v8);
  v32 = *(v32 + 8);
  (v32)(v13, v42);
  v20 = v30;
  v19 = v31;
  (*(v6 + 16))(v30, v33, v31);
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 16) = v41;
  *(v22 + 24) = v18;
  (*(v6 + 32))(v22 + v21, v20, v19);
  aBlock[4] = sub_1E1655D08;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_37;
  v24 = _Block_copy(aBlock);

  v25 = v35;
  sub_1E1AF322C();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  v26 = v38;
  v27 = v40;
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF5E0](v16, v25, v26, v24);
  _Block_release(v24);
  (*(v39 + 8))(v26, v27);
  (*(v36 + 8))(v25, v37);
  (v32)(v16, v42);

  return v23;
}
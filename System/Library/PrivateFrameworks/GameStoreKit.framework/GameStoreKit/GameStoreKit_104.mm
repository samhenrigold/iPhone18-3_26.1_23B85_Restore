void *ArcadeSeeAllGamesPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48, &unk_24F93A2D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v50 - v5;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = (v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v51 = v50 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v50 - v13;
  v62 = sub_24F928388();
  v15 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v52 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v50[1] = v50 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v50 - v20;
  sub_24F928398();
  v59 = v8;
  v22 = *(v8 + 16);
  v56 = v7;
  v60 = v22;
  v61 = v8 + 16;
  v22(v14, a2, v7);
  sub_24E90362C();
  sub_24F929548();
  v23 = v64;
  v24 = v65;
  v25 = v66;
  v26 = v66 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
  *v26 = v63;
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  v27 = a1;
  sub_24F928398();
  v28 = v15;
  v29 = *(v15 + 56);
  v30 = v62;
  v29(v6, 0, 1, v62);
  v31 = *(v26 + 8);
  v32 = *(v26 + 16);
  v33 = *(v26 + 24);
  *&v63 = *v26;
  *(&v63 + 1) = v31;
  v64 = v32;
  v65 = v33;
  sub_24E903680(v63, v31, v32);
  v58 = a2;
  v34 = _s12GameStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v6, &v63, a2);
  sub_24E9036C4(v63);
  sub_24E601704(v6, &qword_27F212F48, &unk_24F93A2D0);
  *(v25 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v34;
  v35 = v27;
  sub_24F928398();
  LOBYTE(v6) = sub_24F928328();
  v53 = v28;
  v55 = *(v28 + 8);
  v55(v21, v30);
  if (v6)
  {
    v36 = v56;
    v37 = v57;
    v38 = v58;
    v39 = MEMORY[0x277D84F90];
    v40 = v27;
  }

  else
  {
    v40 = v27;
    sub_24F928398();
    v41 = v58;
    v36 = v56;
    v60(v51, v58, v56);
    sub_24F0A7190();
    v42 = v57;
    v39 = sub_24F92B678();
    v37 = v42;
    if (v42)
    {
      (*(v59 + 8))(v41, v36);
      v55(v35, v62);
      sub_24E9036C4(*v26);

      type metadata accessor for ArcadeSeeAllGamesPage(0);
      return swift_deallocPartialClassInstance();
    }

    v38 = v41;
  }

  *(v66 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v39;
  v44 = v52;
  v45 = v62;
  (*(v53 + 16))(v52, v40, v62);
  v46 = v54;
  v60(v54, v38, v36);
  v47 = GenericPage.init(deserializing:using:)(v44, v46);
  if (v37)
  {
    (*(v59 + 8))(v38, v36);
    return (v55)(v40, v45);
  }

  else
  {
    v48 = v40;
    v49 = v47;
    (*(v59 + 8))(v38, v36);
    v55(v48, v45);
    return v49;
  }
}

double ArcadeSeeAllGamesPage.facets.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return sub_24E903680(v3, v4, v5);
}

uint64_t sub_24F0A624C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v105 = &v79 - v9;
  MEMORY[0x28223BE20](v10);
  v96 = &v79 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v79 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v79 - v16;
  v18 = sub_24F928818();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v106 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v108 = &v79 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v79 - v24;
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v102 = v25;
    v103 = v17;
    v104 = v19;

    v28 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v29 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v111 = v28;
    sub_24EA0AE3C(v29);
    v92 = v111;
    v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
    v89 = v30;
    if (v30)
    {
      v93 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
      v91 = v30;
    }

    else
    {
      v31 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
      v93 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
      v91 = v31;
    }

    v32 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction);
    v90 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
    sub_24E60169C(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &v111, &qword_27F2129B0, &unk_24F945320);
    v33 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) == 1;
    v34 = v104;
    v80 = v7;
    v94 = a1;
    v100 = v32;
    v35 = v18;
    if (v33)
    {
      v88 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
    }

    else
    {
      v88 = 0;
    }

    v99 = v14;
    v36 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    swift_beginAccess();
    v37 = *(v2 + v36);
    v86 = v37;
    if (!v37)
    {
      swift_beginAccess();
    }

    v101 = v37;
    v81 = *(v27 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets);
    v38 = v81;
    v39 = *(v27 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 16);
    v83 = *(v27 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 8);
    v82 = v39;
    v98 = *(v27 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions);
    v97 = *(v2 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments);
    v40 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    v41 = *(v27 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 24);
    swift_beginAccess();
    v42 = *(v34 + 16);
    v43 = v2 + v40;
    v44 = v102;
    v42(v102, v43, v18);
    v85 = v34 + 16;
    v84 = v42;
    v87 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    v95 = sub_24F9285B8();
    v107 = *(v95 - 8);
    v45 = v103;
    (*(v107 + 56))(v103, 1, 1, v95);
    type metadata accessor for ArcadeSeeAllGamesPage(0);
    v2 = swift_allocObject();
    v46 = v2 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
    *v46 = v38;
    v47 = v83;
    v48 = v82;
    *(v46 + 8) = v83;
    *(v46 + 16) = v48;
    *(v46 + 24) = v41;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v98;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v97;
    sub_24E60169C(&v111, v110, &qword_27F2129B0, &unk_24F945320);
    v49 = v108;
    v42(v108, v44, v35);
    v50 = v99;
    sub_24E60169C(v45, v99, &qword_27F2218B0, &unk_24F975980);
    v51 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

    sub_24E903680(v81, v47, v48);

    v52 = sub_24EEF0A68(v92);
    v54 = v53;

    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v52;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v54;
    v55 = (v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v56 = v91;
    *v55 = v93;
    v55[1] = v56;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v100;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v90;
    sub_24E60169C(v110, v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v88;
    swift_beginAccess();
    *(v2 + v51) = v101;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
    v57 = v106;
    v58 = v84;
    v84(v106, v49, v35);
    v59 = v96;
    sub_24E60169C(v50, v96, &qword_27F2218B0, &unk_24F975980);
    *(v2 + 16) = 0;
    v98 = v35;
    v58(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v57, v35);
    v60 = v59;
    v61 = v95;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v87;
    v62 = v105;
    sub_24E60169C(v60, v105, &qword_27F2218B0, &unk_24F975980);
    v63 = *(v107 + 48);
    if (v63(v62, 1, v61) == 1)
    {

      sub_24E601704(v60, &qword_27F2218B0, &unk_24F975980);
      v64 = v62;
      v65 = *(v104 + 8);
      v66 = v98;
      v65(v57, v98);
      sub_24E601704(v99, &qword_27F2218B0, &unk_24F975980);
      v65(v108, v66);
      sub_24E601704(v110, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v103, &qword_27F2218B0, &unk_24F975980);
      v65(v102, v66);
    }

    else
    {
      v97 = v63;
      v67 = v98;
      v68 = v61;
      v69 = qword_27F2105F0;

      if (v69 != -1)
      {
        swift_once();
      }

      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v70, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      sub_24F9285C8();
      v71 = v109;
      v64 = v80;
      if (v109)
      {
      }

      v72 = *(v107 + 8);
      v107 += 8;
      v72(v105, v68);
      if (!v71)
      {

        sub_24E601704(v60, &qword_27F2218B0, &unk_24F975980);
        v76 = *(v104 + 8);
        v76(v106, v67);
        sub_24E601704(v99, &qword_27F2218B0, &unk_24F975980);
        v76(v108, v67);
        sub_24E601704(v110, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v103, &qword_27F2218B0, &unk_24F975980);
        v76(v102, v67);
        sub_24E601704(&v111, &qword_27F2129B0, &unk_24F945320);
        return v2;
      }

      sub_24E60169C(v60, v64, &qword_27F2218B0, &unk_24F975980);
      v73 = v97(v64, 1, v68);
      v74 = v108;
      if (v73 != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v60, &qword_27F2218B0, &unk_24F975980);
        v77 = *(v104 + 8);
        v77(v106, v67);
        sub_24E601704(v99, &qword_27F2218B0, &unk_24F975980);
        v77(v74, v67);
        sub_24E601704(v110, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v103, &qword_27F2218B0, &unk_24F975980);
        v77(v102, v67);
        sub_24E601704(&v111, &qword_27F2129B0, &unk_24F945320);
        v72(v64, v95);
        return v2;
      }

      sub_24E601704(v60, &qword_27F2218B0, &unk_24F975980);
      v75 = *(v104 + 8);
      v75(v106, v67);
      sub_24E601704(v99, &qword_27F2218B0, &unk_24F975980);
      v75(v74, v67);
      sub_24E601704(v110, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v103, &qword_27F2218B0, &unk_24F975980);
      v75(v102, v67);
    }

    sub_24E601704(&v111, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_24F0A6FB4()
{
  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets));
}

uint64_t ArcadeSeeAllGamesPage.deinit()
{
  v0 = GenericPage.deinit();
  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets));

  return v0;
}

uint64_t ArcadeSeeAllGamesPage.__deallocating_deinit()
{
  v0 = *(GenericPage.deinit() + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets);

  sub_24E9036C4(v0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeSeeAllGamesPage(uint64_t a1)
{
  result = qword_27F238AB8;
  if (!qword_27F238AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F0A7190()
{
  result = qword_27F238A98;
  if (!qword_27F238A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238A98);
  }

  return result;
}

unint64_t sub_24F0A71E8()
{
  result = qword_27F238AA0;
  if (!qword_27F238AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238AA0);
  }

  return result;
}

unint64_t sub_24F0A7240()
{
  result = qword_27F238AA8;
  if (!qword_27F238AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238AB0, &qword_24F9C5788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238AA8);
  }

  return result;
}

uint64_t NSCopying.makeCopy()(uint64_t a1)
{
  [v1 copyWithZone_];
  sub_24F92C648();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v3;
}

void (*TodayCardMediaRiver.init(deserializing:using:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v3 = v2;
  v78 = a2;
  v73 = v3;
  v74 = *v3;
  v5 = sub_24F9285B8();
  v77 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v58 - v8;
  MEMORY[0x28223BE20](v9);
  v65 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v63 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v62 = &v58 - v20;
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - v23;
  v25 = sub_24F92AC28();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v61 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v75 = &v58 - v29;
  v79 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v64 = v17;
  v31 = *(v17 + 8);
  v30 = v17 + 8;
  v72 = v16;
  v76 = v31;
  v31(v24, v16);
  v68 = v26;
  v69 = v25;
  if ((*(v26 + 48))(v15, 1, v25) == 1)
  {
    sub_24E601704(v15, &qword_27F2213B0, &qword_24F965EC0);
    v32 = sub_24F92AC38();
    sub_24E9321A0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v33 = 0x7370756B636F6CLL;
    v34 = v74;
    v33[1] = 0xE700000000000000;
    v33[2] = v34;
    (*(*(v32 - 1) + 104))(v33, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    (*(v77 + 8))(v78, v5);
    v76(v79, v72);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v74 = v5;
    v36 = v68;
    v35 = v69;
    v37 = *(v68 + 32);
    v60 = v30;
    v37(v75, v15, v69);
    sub_24F929608();
    sub_24F928398();
    v38 = v78;
    v39 = *(v77 + 16);
    v40 = v65;
    v39(v65, v78, v74);
    v59 = v39;
    sub_24F929548();
    v41 = v71;
    v39(v71, v38, v74);
    (*(v36 + 16))(v61, v75, v35);
    v39(v40, v41, v74);
    type metadata accessor for Lockup(0);
    sub_24E9321A0(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
    v42 = sub_24F92B6A8();
    v43 = v73;
    *(v73 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaRiver_lockups) = v42;
    v44 = v62;
    v45 = v79;
    sub_24F928398();
    v46 = sub_24F928258();
    v48 = v47;
    v49 = v72;
    v76(v44, v72);
    v50 = 10;
    if ((v48 & 1) == 0)
    {
      v50 = v46;
    }

    *(v43 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaRiver_lockupImpressionLimit) = v50;
    v51 = v63;
    v52 = v74;
    (*(v64 + 16))(v63, v45, v49);
    v53 = v66;
    v59(v66, v78, v52);
    v54 = v67;
    v55 = TodayCardMedia.init(deserializing:using:)(v51, v53);
    if (v54)
    {
      v32 = *(v77 + 8);
      v32(v78, v52);
      v76(v79, v49);
      v32(v71, v52);
    }

    else
    {
      v32 = v55;
      v57 = *(v77 + 8);
      v57(v78, v52);
      v76(v79, v49);
      v57(v71, v52);
    }

    sub_24E601704(v70, &qword_27F213E68, &unk_24F93BC80);
    (*(v68 + 8))(v75, v69);
  }

  return v32;
}

uint64_t TodayCardMediaRiver.__allocating_init(lockups:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TodayCardMediaRiver.init(lockups:lockupImpressionLimit:impressionMetrics:)(a1, a2, a3);
  return v6;
}

uint64_t TodayCardMediaRiver.init(lockups:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v20 - v13;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaRiver_lockups) = a1;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaRiver_lockupImpressionLimit) = a2;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_24E60169C(a3, v20 - v13, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v27, &v21, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v9 + 8))(v11, v8);
    v20[1] = v15;
    v20[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v21, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a3, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v27, &qword_27F235830, &qword_24F93B8C0);
  v18 = v25;
  *(v4 + 32) = v24;
  *(v4 + 48) = v18;
  *(v4 + 64) = v26;
  sub_24E65E0D4(v14, v4 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v4 + 16) = 5;
  *(v4 + 24) = 1;
  return v4;
}

char *TodayCardMediaRiver.offerAdamIds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19TodayCardMediaRiver_lockups);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253052270](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E6164C0(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E6164C0((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t TodayCardMediaRiver.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaRiver.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaRiver(uint64_t a1)
{
  result = qword_27F238AC8;
  if (!qword_27F238AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0A8300(void *a1)
{
  result = [v1 length];
  v4 = result;
  if (result < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      result = [a1 characterIsMember_];
      if (!result)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_18;
      }
    }
  }

  if (v5 == v4)
  {
    goto LABEL_18;
  }

  v6 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  while (v6 >= v5)
  {
    result = [a1 characterIsMember_];
    if (!result)
    {
      break;
    }

    if (__OFSUB__(v6--, 1))
    {
      __break(1u);
      break;
    }
  }

  if (__OFADD__(v6, 1))
  {
    goto LABEL_22;
  }

  v8 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFSUB__(v8, 1))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  [v1 deleteCharactersInRange_];
  v4 = v5;
LABEL_18:

  return [v1 deleteCharactersInRange_];
}

id sub_24F0A8444(void *a1)
{
  v3 = [v1 length];
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = v3;
    v5 = 0;
    while ([a1 characterIsMember_])
    {
      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }
  }

  return [v1 deleteCharactersInRange_];
}

unint64_t sub_24F0A850C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6D6F44726F727265;
  v11 = MEMORY[0x277D837D0];
  v12 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v12;
  *(inited + 40) = 0xEB000000006E6961;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x800000024FA4BBE0;
  *(inited + 128) = v11;
  *(inited + 136) = v12;
  *(inited + 104) = a3;
  *(inited + 112) = a4;

  v13 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v14 = sub_24E80FFAC(v13);

  a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a5[4] = result;
  *a5 = v14;
  return result;
}

uint64_t GuidedSearchPresenter.searchWillBegin(for:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24F92AAE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[9];
  v65 = a1[8];
  v66 = v8;
  v67 = a1[10];
  v9 = a1[5];
  v61 = a1[4];
  v62 = v9;
  v10 = a1[7];
  v63 = a1[6];
  v64 = v10;
  v11 = a1[1];
  v57 = *a1;
  v58 = v11;
  v12 = a1[3];
  v59 = a1[2];
  v60 = v12;
  if (qword_27F210EC0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_27F39D860);
  v31 = v5;
  (*(v5 + 16))(v7, v13, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F979FB0;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  *(&v46 + 1) = MEMORY[0x277D837D0];
  v45 = v58;

  sub_24F9283B8();
  sub_24E601704(&v45, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v14 = v63;
  if (v63)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  }

  else
  {
    v15 = 0;
    v56[2] = 0;
    v56[1] = 0;
  }

  v56[0] = v14;
  v56[3] = v15;

  sub_24F9283B8();
  sub_24E601704(v56, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v16 = v59;
  *(&v46 + 1) = &type metadata for SearchOrigin;
  LOBYTE(v45) = v59;
  sub_24F9283B8();
  sub_24E601704(&v45, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  (*(v31 + 8))(v7, v4);
  v42 = v65;
  v43 = v66;
  v44 = v67;
  v38 = v61;
  v39 = v62;
  v40 = v63;
  v41 = v64;
  v34 = v57;
  v35 = v58;
  v36 = v59;
  v37 = v60;
  CGSizeMake();
  v17 = *(v2 + 160);
  v53 = *(v2 + 144);
  v54 = v17;
  v55 = *(v2 + 176);
  v18 = *(v2 + 96);
  v49 = *(v2 + 80);
  v50 = v18;
  v19 = *(v2 + 128);
  v51 = *(v2 + 112);
  v52 = v19;
  v20 = *(v2 + 32);
  v45 = *(v2 + 16);
  v46 = v20;
  v21 = *(v2 + 64);
  v47 = *(v2 + 48);
  v48 = v21;
  v22 = v43;
  *(v2 + 144) = v42;
  *(v2 + 160) = v22;
  *(v2 + 176) = v44;
  v23 = v39;
  *(v2 + 80) = v38;
  *(v2 + 96) = v23;
  v24 = v41;
  *(v2 + 112) = v40;
  *(v2 + 128) = v24;
  v25 = v35;
  *(v2 + 16) = v34;
  *(v2 + 32) = v25;
  v26 = v37;
  *(v2 + 48) = v36;
  *(v2 + 64) = v26;
  sub_24E7B6680(&v57, v33);
  sub_24E601704(&v45, &qword_27F238AD8, &unk_24F9C5970);
  v33[0] = v16;
  if (SearchOrigin.rawValue.getter() == 0x6F54646564697567 && v27 == 0xEB000000006E656BLL)
  {
  }

  v29 = sub_24F92CE08();

  if ((v29 & 1) == 0)
  {
    swift_beginAccess();
    v30 = MEMORY[0x277D84F90];
    *(v2 + 200) = MEMORY[0x277D84F90];

    v32 = v30;
    return sub_24F0A950C(&v32);
  }

  return result;
}

uint64_t GuidedSearchPresenter.searchDidReturn(for:with:queries:)(__int128 *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v52 = a2;
  v53 = a3;
  v6 = sub_24F92AAE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *a1;
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v58 = *(a1 + 32);
  v12 = *(a1 + 49);
  v92 = *(a1 + 33);
  v93 = v12;
  v94[0] = *(a1 + 65);
  *(v94 + 15) = a1[5];
  v13 = *(a1 + 12);
  v14 = *(a1 + 104);
  v15 = *(a1 + 120);
  v16 = *(a1 + 136);
  v17 = *(a1 + 152);
  v91 = *(a1 + 21);
  v89 = v16;
  v90 = v17;
  v87 = v14;
  v88 = v15;
  if (qword_27F210EC0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_27F39D860);
  v54 = v9;
  v55 = v7;
  v19 = *(v7 + 16);
  v56 = v6;
  v19(v9, v18, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9C5960;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  *(&v76 + 1) = MEMORY[0x277D837D0];
  v57 = v11;
  *&v75 = v11;
  *(&v75 + 1) = v10;
  v50 = v10;

  sub_24F9283B8();
  sub_24E601704(&v75, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v51 = v13;
  v20 = v52;
  v21 = v53;
  if (v13)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v23 = v13;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    *(&v75 + 1) = 0;
    *&v76 = 0;
  }

  *&v75 = v23;
  *(&v76 + 1) = v22;

  sub_24F9283B8();
  sub_24E601704(&v75, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  *(&v76 + 1) = &type metadata for SearchOrigin;
  LOBYTE(v75) = v58;
  sub_24F9283B8();
  sub_24E601704(&v75, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v24._rawValue = v20;
  if (v20)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225120, &qword_24F974D58);
    v26 = v20;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    *(&v75 + 1) = 0;
    *&v76 = 0;
  }

  v27 = v21;
  v28 = v54;
  *&v75 = v26;
  *(&v76 + 1) = v25;

  sub_24F9283B8();
  sub_24E601704(&v75, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v29 = v57;
  if (v27)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D828, &qword_24F995620);
    v31 = v27;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v86[2] = 0;
    v86[1] = 0;
  }

  v86[0] = v31;
  v86[3] = v30;

  sub_24F9283B8();
  sub_24E601704(v86, &qword_27F2129B0, &unk_24F945320);
  v32 = v56;
  sub_24F92A588();

  (*(v55 + 8))(v28, v32);
  v33 = *(v4 + 160);
  v83 = *(v4 + 144);
  v84 = v33;
  v85 = *(v4 + 176);
  v34 = *(v4 + 96);
  v79 = *(v4 + 80);
  v80 = v34;
  v35 = *(v4 + 128);
  v81 = *(v4 + 112);
  v82 = v35;
  v36 = *(v4 + 32);
  v75 = *(v4 + 16);
  v76 = v36;
  v37 = *(v4 + 64);
  v77 = *(v4 + 48);
  v78 = v37;
  result = sub_24E66927C(&v75);
  if (result != 1)
  {
    v71 = v95;
    *&v72 = v29;
    *(&v72 + 1) = v50;
    LOBYTE(v73[0]) = v58;
    *(v73 + 1) = v92;
    *(&v73[1] + 1) = v93;
    *(&v73[2] + 1) = v94[0];
    v73[3] = *(v94 + 15);
    *(v74 + 8) = v87;
    *&v74[0] = v51;
    *(&v74[4] + 1) = v91;
    *(&v74[3] + 8) = v90;
    *(&v74[2] + 8) = v89;
    *(&v74[1] + 8) = v88;
    v68 = v83;
    v69 = v84;
    v70 = v85;
    v64 = v79;
    v65 = v80;
    v66 = v81;
    v67 = v82;
    v60 = v75;
    v61 = v76;
    v62 = v77;
    v63 = v78;
    result = _s12GameStoreKit23SearchRequestDescriptorV2eeoiySbAC_ACtFZ_0(&v71, &v60);
    if (result)
    {
      sub_24E70D8E0(&v60);
      v39 = *(v4 + 160);
      v74[2] = *(v4 + 144);
      v74[3] = v39;
      v74[4] = *(v4 + 176);
      v40 = *(v4 + 96);
      v73[2] = *(v4 + 80);
      v73[3] = v40;
      v41 = *(v4 + 128);
      v74[0] = *(v4 + 112);
      v74[1] = v41;
      v42 = *(v4 + 32);
      v71 = *(v4 + 16);
      v72 = v42;
      v43 = *(v4 + 64);
      v73[0] = *(v4 + 48);
      v73[1] = v43;
      v44 = v69;
      *(v4 + 144) = v68;
      *(v4 + 160) = v44;
      *(v4 + 176) = v70;
      v45 = v65;
      *(v4 + 80) = v64;
      *(v4 + 96) = v45;
      v46 = v67;
      *(v4 + 112) = v66;
      *(v4 + 128) = v46;
      v47 = v61;
      *(v4 + 16) = v60;
      *(v4 + 32) = v47;
      v48 = v63;
      *(v4 + 48) = v62;
      *(v4 + 64) = v48;
      result = sub_24E601704(&v71, &qword_27F238AD8, &unk_24F9C5970);
      if (v24._rawValue)
      {
        v59[1] = *(v4 + 192);

        GuidedSearchTokenCollection.merging(contentsOf:)(v24);

        result = sub_24F0A950C(v59);
      }

      if (v27)
      {
        swift_beginAccess();

        sub_24F14A664(0, 0, v27);
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t GuidedSearchPresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_24E70D8E0(&v18);
  v1 = v27;
  *(v0 + 144) = v26;
  *(v0 + 160) = v1;
  *(v0 + 176) = v28;
  v2 = v23;
  *(v0 + 80) = v22;
  *(v0 + 96) = v2;
  v3 = v25;
  *(v0 + 112) = v24;
  *(v0 + 128) = v3;
  v4 = v19;
  *(v0 + 16) = v18;
  *(v0 + 32) = v4;
  v5 = v21;
  *(v0 + 48) = v20;
  *(v0 + 64) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238AE0, &qword_24F9C5980);
  swift_allocObject();
  *(v0 + 208) = sub_24F92ADA8();
  v6 = *(v0 + 160);
  v29[8] = *(v0 + 144);
  v29[9] = v6;
  v29[10] = *(v0 + 176);
  v7 = *(v0 + 96);
  v29[4] = *(v0 + 80);
  v29[5] = v7;
  v8 = *(v0 + 128);
  v29[6] = *(v0 + 112);
  v29[7] = v8;
  v9 = *(v0 + 32);
  v29[0] = *(v0 + 16);
  v29[1] = v9;
  v10 = *(v0 + 64);
  v29[2] = *(v0 + 48);
  v29[3] = v10;
  v11 = v27;
  *(v0 + 144) = v26;
  *(v0 + 160) = v11;
  *(v0 + 176) = v28;
  v12 = v23;
  *(v0 + 80) = v22;
  *(v0 + 96) = v12;
  v13 = v25;
  *(v0 + 112) = v24;
  *(v0 + 128) = v13;
  v14 = v19;
  *(v0 + 16) = v18;
  *(v0 + 32) = v14;
  v15 = v21;
  *(v0 + 48) = v20;
  *(v0 + 64) = v15;
  sub_24E601704(v29, &qword_27F238AD8, &unk_24F9C5970);
  v16 = MEMORY[0x277D84F90];
  *(v0 + 192) = MEMORY[0x277D84F90];
  *(v0 + 200) = v16;
  return v0;
}

uint64_t GuidedSearchPresenter.init()()
{
  sub_24E70D8E0(&v18);
  v1 = v27;
  *(v0 + 144) = v26;
  *(v0 + 160) = v1;
  *(v0 + 176) = v28;
  v2 = v23;
  *(v0 + 80) = v22;
  *(v0 + 96) = v2;
  v3 = v25;
  *(v0 + 112) = v24;
  *(v0 + 128) = v3;
  v4 = v19;
  *(v0 + 16) = v18;
  *(v0 + 32) = v4;
  v5 = v21;
  *(v0 + 48) = v20;
  *(v0 + 64) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238AE0, &qword_24F9C5980);
  swift_allocObject();
  *(v0 + 208) = sub_24F92ADA8();
  v6 = *(v0 + 160);
  v29[8] = *(v0 + 144);
  v29[9] = v6;
  v29[10] = *(v0 + 176);
  v7 = *(v0 + 96);
  v29[4] = *(v0 + 80);
  v29[5] = v7;
  v8 = *(v0 + 128);
  v29[6] = *(v0 + 112);
  v29[7] = v8;
  v9 = *(v0 + 32);
  v29[0] = *(v0 + 16);
  v29[1] = v9;
  v10 = *(v0 + 64);
  v29[2] = *(v0 + 48);
  v29[3] = v10;
  v11 = v27;
  *(v0 + 144) = v26;
  *(v0 + 160) = v11;
  *(v0 + 176) = v28;
  v12 = v23;
  *(v0 + 80) = v22;
  *(v0 + 96) = v12;
  v13 = v25;
  *(v0 + 112) = v24;
  *(v0 + 128) = v13;
  v14 = v19;
  *(v0 + 16) = v18;
  *(v0 + 32) = v14;
  v15 = v21;
  *(v0 + 48) = v20;
  *(v0 + 64) = v15;
  sub_24E601704(v29, &qword_27F238AD8, &unk_24F9C5970);
  v16 = MEMORY[0x277D84F90];
  *(v0 + 192) = MEMORY[0x277D84F90];
  *(v0 + 200) = v16;
  return v0;
}

uint64_t sub_24F0A950C(void *a1)
{
  v2 = *(v1 + 192);
  *(v1 + 192) = *a1;

  v4 = sub_24EA15CE8(v3, v2);

  if (v4)
  {
  }

  else
  {

    sub_24F92AD88();
  }
}

uint64_t sub_24F0A95B8()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39D860);
  __swift_project_value_buffer(v4, qword_27F39D860);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

void GuidedSearchPresenter.didToggleToken(at:actionHandler:)(unint64_t a1, void (*a2)(uint64_t))
{
  v3 = v2;
  if (qword_27F210EC0 != -1)
  {
    swift_once();
  }

  v5 = sub_24F92AAE8();
  __swift_project_value_buffer(v5, qword_27F39D860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A070;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  v6 = *(v2 + 192);
  v13 = &type metadata for GuidedSearchTokenCollection;
  v12[0] = v6;

  sub_24F9283B8();
  sub_24E601704(v12, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v13 = MEMORY[0x277D83B88];
  v12[0] = a1;
  sub_24F928438();
  sub_24E601704(v12, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  v7 = *(v2 + 192);
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x253052270](a1, v7);

    v7 = *(v3 + 192);
    goto LABEL_7;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v8 = *(v7 + 8 * a1 + 32);

LABEL_7:
    v12[0] = v7;
    v9 = *(v8 + 32);

    GuidedSearchTokenCollection.updateSelection(ofTokenAt:to:)(a1, (v9 & 1) == 0);

    GuidedSearchTokenCollection.selectedOnly()();

    sub_24F0A950C(v12);

    a2(v10);

    return;
  }

  __break(1u);
}

_OWORD *GuidedSearchPresenter.deinit()
{
  v1 = v0[10];
  v7[8] = v0[9];
  v7[9] = v1;
  v7[10] = v0[11];
  v2 = v0[6];
  v7[4] = v0[5];
  v7[5] = v2;
  v3 = v0[8];
  v7[6] = v0[7];
  v7[7] = v3;
  v4 = v0[2];
  v7[0] = v0[1];
  v7[1] = v4;
  v5 = v0[4];
  v7[2] = v0[3];
  v7[3] = v5;
  sub_24E601704(v7, &qword_27F238AD8, &unk_24F9C5970);

  return v0;
}

uint64_t GuidedSearchPresenter.__deallocating_deinit()
{
  v1 = v0[10];
  v7[8] = v0[9];
  v7[9] = v1;
  v7[10] = v0[11];
  v2 = v0[6];
  v7[4] = v0[5];
  v7[5] = v2;
  v3 = v0[8];
  v7[6] = v0[7];
  v7[7] = v3;
  v4 = v0[2];
  v7[0] = v0[1];
  v7[1] = v4;
  v5 = v0[4];
  v7[2] = v0[3];
  v7[3] = v5;
  sub_24E601704(v7, &qword_27F238AD8, &unk_24F9C5970);

  return swift_deallocClassInstance();
}

Swift::String_optional __swiftcall GuidedSearchPresenter.optimizationTerm(for:tokens:)(Swift::String a1, Swift::OpaquePointer_optional tokens)
{
  rawValue = tokens.value._rawValue;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = sub_24F92AAE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v27 = *(v2 + 200);

  v10._countAndFlagsBits = countAndFlagsBits;
  v10._object = object;
  v31.value._rawValue = rawValue;
  v11 = GuidedSearchQueryStore.optimizationTerm(for:tokens:)(v10, v31);
  v24 = v11.value._object;
  v25 = v11.value._countAndFlagsBits;

  if (qword_27F210EC0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_27F39D860);
  v26 = v7;
  (*(v7 + 16))(v9, v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F979FB0;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  v30 = MEMORY[0x277D837D0];
  v27 = countAndFlagsBits;
  v28 = object;

  sub_24F9283B8();
  sub_24E601704(&v27, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  if (rawValue)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v14 = rawValue;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v28 = 0;
    v29 = 0;
  }

  v15 = v24;
  v27 = v14;
  v30 = v13;

  sub_24F9283B8();
  sub_24E601704(&v27, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  if (v15)
  {
    v16 = MEMORY[0x277D837D0];
    v17 = v15;
    v19 = v25;
    v18 = v26;
    v20 = v25;
  }

  else
  {
    v17 = 0;
    v20 = 0;
    v16 = 0;
    v29 = 0;
    v19 = v25;
    v18 = v26;
  }

  v27 = v20;
  v28 = v17;
  v30 = v16;

  sub_24F928458();
  sub_24E601704(&v27, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  (*(v18 + 8))(v9, v6);
  v21 = v19;
  v22 = v15;
  result.value._object = v22;
  result.value._countAndFlagsBits = v21;
  return result;
}

uint64_t TabBadgingFieldsProvider.init(tabController:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for TabBadgingFieldsProvider(0) + 20);
  v5 = *MEMORY[0x277D22340];
  v6 = sub_24F92A2D8();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);

  return sub_24E612C80(a1, a2);
}

uint64_t type metadata accessor for TabBadgingFieldsProvider(uint64_t a1)
{
  result = qword_27F238AF0;
  if (!qword_27F238AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TabBadgingFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TabBadgingFieldsProvider(0) + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TabBadgingFieldsProvider.category.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TabBadgingFieldsProvider(0) + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void TabBadgingFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if ([objc_opt_self() isMainThread])
  {
    v3 = v1[3];
    v4 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v3);
    v5 = (*(v4 + 8))(v3, v4);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    sub_24E74EC40();
    v6 = sub_24F92BEF8();
    MEMORY[0x28223BE20](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238AE8, qword_24F9C59F0);
    sub_24F92BF18();

    v5 = v46[0];
    if (!v46[0])
    {
      return;
    }
  }

  v41 = a1;
  v7 = sub_24E6086DC(MEMORY[0x277D84F90]);
  v8 = *(v5 + 16);
  if (!v8)
  {
LABEL_48:

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    v46[0] = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v41, *(v41 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(v46);
    return;
  }

  v9 = 0;
  v10 = v5 + 32;
  v42 = *(v5 + 16);
  v43 = v5;
  while (v9 < *(v5 + 16))
  {
    sub_24E615E00(v10, v46);
    v12 = v47;
    v13 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v13 + 8))(&v49, v12, v13);
    v14 = v49;
    if (v49 == 9)
    {
      goto LABEL_9;
    }

    v15 = v47;
    v16 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v17 = (*(v16 + 16))(v15, v16);
    if (!v18)
    {
      goto LABEL_9;
    }

    v44 = v18;
    v45 = v17;
    if (v14 <= 3)
    {
      v19 = 0x7961646F74;
      if (v14 != 2)
      {
        v19 = 1936748641;
      }

      v22 = 0xE500000000000000;
      v20 = 0xE400000000000000;
      if (v14 == 2)
      {
        v20 = 0xE500000000000000;
      }

      v21 = 0x7265666E69;
      if (v14)
      {
        v21 = 0x64657463656C6573;
        v22 = 0xE800000000000000;
      }

      v23 = v14 <= 1;
    }

    else
    {
      v19 = 0x656461637261;
      if (v14 == 7)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v19 = 0x676E6964616F6CLL;
        v20 = 0xE700000000000000;
      }

      if (v14 == 6)
      {
        v19 = 0x73657461647075;
        v20 = 0xE700000000000000;
      }

      v21 = 0x73656D6167;
      if (v14 != 4)
      {
        v21 = 0x686372616573;
      }

      v22 = 0xE500000000000000;
      if (v14 != 4)
      {
        v22 = 0xE600000000000000;
      }

      v23 = v14 <= 5;
    }

    if (v23)
    {
      v24 = v21;
    }

    else
    {
      v24 = v19;
    }

    if (v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = v20;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v7;
    v27 = v24;
    v29 = sub_24E76D644(v24, v25);
    v30 = v7[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_51;
    }

    v33 = v28;
    if (v7[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_24E8AF124();
        if ((v33 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      sub_24E89B77C(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_24E76D644(v27, v25);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_53;
      }

      v29 = v34;
      if ((v33 & 1) == 0)
      {
LABEL_44:
        v7 = v49;
        v49[(v29 >> 6) + 8] |= 1 << v29;
        v36 = (v7[6] + 16 * v29);
        *v36 = v27;
        v36[1] = v25;
        v37 = (v7[7] + 16 * v29);
        *v37 = v45;
        v37[1] = v44;
        v38 = v7[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_52;
        }

        v7[2] = v40;
        goto LABEL_8;
      }
    }

    v7 = v49;
    v11 = (v49[7] + 16 * v29);
    *v11 = v45;
    v11[1] = v44;

LABEL_8:
    v8 = v42;
    v5 = v43;
LABEL_9:
    ++v9;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v10 += 40;
    if (v8 == v9)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  sub_24F92CF88();
  __break(1u);
}

uint64_t sub_24F0AA640@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  result = (*(v5 + 8))(v4, v5);
  *a1 = result;
  return result;
}

uint64_t sub_24F0AA6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F92A2D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F0AA7BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F0AA860(uint64_t a1)
{
  result = sub_24F0AA8E4();
  if (v2 <= 0x3F)
  {
    result = sub_24F92A2D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F0AA8E4()
{
  result = qword_27F238B00;
  if (!qword_27F238B00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F238B00);
  }

  return result;
}

uint64_t JSMetricsEventLinter.init(objectGraph:intentDispatcher:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void JSMetricsEventLinter.init(asPartOf:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();

  sub_24F92A758();

  a2[1] = v3;
}

void sub_24F0AAA38(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();

  sub_24F92A758();

  a2[1] = v3;
}

uint64_t sub_24F0AAADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_24F928AD8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24F0AAB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_24F928AD8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for CompleteOnboardWelcomeAction(uint64_t a1)
{
  result = qword_27F238B08;
  if (!qword_27F238B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F0AAC30(uint64_t a1)
{
  sub_24E659BE8();
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F0AACC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B28, &qword_24F9C5BE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F0AB310();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD38();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CCE8();
    type metadata accessor for CompleteOnboardWelcomeAction(0);
    v8[13] = 2;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F0AAED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_24F928AD8();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B18, &qword_24F9C5BD8);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CompleteOnboardWelcomeAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F0AB310();
  v12 = v23;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v11;
    v23 = v9;
    v15 = v21;
    v14 = v22;
    v26 = 0;
    *v13 = sub_24F92CC58();
    v25 = 1;
    *(v13 + 8) = sub_24F92CC08();
    *(v13 + 16) = v17 & 1;
    v24 = 2;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    v18 = v5;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v14);
    (*(v19 + 32))(v13 + *(v23 + 24), v18, v3);
    sub_24EB78C18(v13, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F0AB1D0()
{
  v1 = 0x654D6E6F69746361;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t sub_24F0AB240@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F0AB47C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F0AB268(uint64_t a1)
{
  v2 = sub_24F0AB310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0AB2A4(uint64_t a1)
{
  v2 = sub_24F0AB310();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F0AB310()
{
  result = qword_27F238B20;
  if (!qword_27F238B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238B20);
  }

  return result;
}

unint64_t sub_24F0AB378()
{
  result = qword_27F238B30;
  if (!qword_27F238B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238B30);
  }

  return result;
}

unint64_t sub_24F0AB3D0()
{
  result = qword_27F238B38;
  if (!qword_27F238B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238B38);
  }

  return result;
}

unint64_t sub_24F0AB428()
{
  result = qword_27F238B40;
  if (!qword_27F238B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238B40);
  }

  return result;
}

uint64_t sub_24F0AB47C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000020 && 0x800000024FA6ACF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024FA462B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 2;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t PresenterError.init(innerError:pageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for PresenterError(0) + 20);

  return sub_24E911D90(a2, v4);
}

uint64_t type metadata accessor for PresenterError(uint64_t a1)
{
  result = qword_27F238B48;
  if (!qword_27F238B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PresenterError.innerError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t PresenterError.pageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PresenterError(0) + 20);

  return sub_24E99091C(v3, a1);
}

uint64_t PresenterError.metricsErrorDescription.getter()
{
  v8 = *v0;
  v1 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0, &qword_24F96D908);
  if (swift_dynamicCast())
  {
    sub_24E612E28(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v9);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_24E601704(v6, &qword_27F2231C8, &unk_24F96D910);
    swift_getErrorValue();
    return sub_24F92CFE8();
  }
}

uint64_t PresenterError.describeForMetricsEvent(using:)(void (*a1)(uint64_t, unint64_t, void *), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for PresenterError(0);
  sub_24E99091C(v3 + *(v9 + 20), v8);
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_24E601704(v8, &qword_27F228530, &unk_24F93C6E0);
  }

  else
  {
    v12 = sub_24F91F398();
    v14 = v13;
    (*(v11 + 8))(v8, v10);
    v23 = MEMORY[0x277D837D0];
    v22[0] = v12;
    v22[1] = v14;
    a1(0x6C725565676170, 0xE700000000000000, v22);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v21 = *v3;
  v15 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0, &qword_24F96D908);
  if (swift_dynamicCast())
  {
    sub_24E612E28(v19, v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v17 + 24))(a1, a2, v16, v17);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    return sub_24E601704(v19, &qword_27F2231C8, &unk_24F96D910);
  }
}

unint64_t PresenterError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = sub_24F92B0D8();
  *(inited + 40) = v1;
  swift_getErrorValue();
  *(inited + 72) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  v3 = sub_24E608448(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F2135C0, &qword_24F970400);
  return v3;
}

unint64_t sub_24F0ABBA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = sub_24F92B0D8();
  *(inited + 40) = v1;
  swift_getErrorValue();
  *(inited + 72) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  v3 = sub_24E608448(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F2135C0, &qword_24F970400);
  return v3;
}

uint64_t sub_24F0ABC98(uint64_t a1)
{
  v2 = sub_24F0AC03C(&qword_27F238B60, &protocol conformance descriptor for PresenterError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24F0ABCF0(uint64_t a1)
{
  v2 = sub_24F0AC03C(&qword_27F238B60, &protocol conformance descriptor for PresenterError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24F0ABD7C(uint64_t a1)
{
  result = sub_24F0AC03C(&qword_27F22B028, &protocol conformance descriptor for PresenterError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24F0ABDD4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F0ABEA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F0ABF54(uint64_t a1)
{
  sub_24F0ABFD8();
  if (v1 <= 0x3F)
  {
    sub_24E6D4C08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F0ABFD8()
{
  result = qword_27F238B58;
  if (!qword_27F238B58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F238B58);
  }

  return result;
}

uint64_t sub_24F0AC03C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PresenterError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t VisibleShelfSupplementaryCollectionElementsObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_24E60B368(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F380, &qword_24F9C5E10);
  swift_allocObject();
  *(v0 + 16) = sub_24EA50028();
  return v0;
}

uint64_t VisibleShelfSupplementaryCollectionElementsObserver.init()()
{
  sub_24E60B368(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F380, &qword_24F9C5E10);
  swift_allocObject();
  *(v0 + 16) = sub_24EA50028();
  return v0;
}

double sub_24F0AC164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  sub_24F92BF18();

  return result;
}

void sub_24F0AC224(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v76 = a4;
  v66 = a3;
  v74 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618, &qword_24F9DAE90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  v71 = type metadata accessor for ShelfLayoutContext(0);
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24F91FA78();
  v60 = *(v67 - 8);
  v12 = MEMORY[0x28223BE20](v67);
  v69 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*(*a1 + 16))
  {
    v61 = (*(v75 + 32))(v76, v12);
    if (v61)
    {
      v15 = v14 + 64;
      v16 = 1 << *(v14 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(v14 + 64);
      v19 = (v16 + 63) >> 6;
      v20 = v60 + 16;
      v21 = (v9 + 48);
      v22 = (v60 + 8);

      v23 = 0;
      v24 = v67;
      v57 = v14 + 64;
      v56 = v19;
      v64 = v11;
      v58 = v14;
LABEL_7:
      if (v18)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v19)
        {

          return;
        }

        v18 = *(v15 + 8 * v25);
        ++v23;
        if (v18)
        {
          v23 = v25;
LABEL_12:
          v63 = v18;
          v26 = *(v14 + 48);
          v62 = v23;
          v27 = (v26 + ((v23 << 10) | (16 * __clz(__rbit64(v18)))));
          v28 = *v27;
          v29 = v27[1];

          v30 = v61;
          v68 = v28;
          v31 = sub_24F92B098();
          v65 = v30;
          v32 = [v30 indexPathsForVisibleSupplementaryElementsOfKind_];

          v33 = sub_24F92B5A8();
          v34 = *(v33 + 16);
          if (v34)
          {
            v70 = v29;
            v35 = (*(v60 + 80) + 32) & ~*(v60 + 80);
            v59 = v33;
            v36 = v33 + v35;
            v37 = *(v60 + 72);
            v72 = *(v60 + 16);
            v73 = v37;
            v38 = v69;
            v72(v69, v33 + v35, v24);
            while (1)
            {
              ShelfBasedCollectionViewController.shelfLayoutContext(containing:)(v76, v75, v8);
              if ((*v21)(v8, 1, v71) == 1)
              {
                break;
              }

              sub_24F0AD010(v8, v11);
              ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(v76, v75);
              v43 = v42;
              ObjectType = swift_getObjectType();
              (*(v43 + 24))(&v77, v68, v70, v11, v66, ObjectType, v43);
              swift_unknownObjectRelease();
              if (!v78)
              {
                sub_24F085864(v11);
                v38 = v69;
                v24 = v67;
                (*v22)(v69, v67);
                v39 = &v77;
                v40 = &qword_27F230D60;
                v41 = &unk_24F9A3D20;
                goto LABEL_15;
              }

              sub_24E612C80(&v77, v79);
              v45 = v8;
              v47 = v80;
              v46 = v81;
              __swift_project_boxed_opaque_existential_1(v79, v80);
              v48 = *(v46 + 32);
              v49 = v22;
              v50 = v21;
              v51 = v20;
              v52 = v69;
              v53 = v47;
              v54 = v46;
              v8 = v45;
              v55 = v64;
              v48(v69, v65, v53, v54);
              v38 = v52;
              v20 = v51;
              v21 = v50;
              v22 = v49;
              v11 = v55;
              sub_24F085864(v55);
              v24 = v67;
              (*v22)(v38, v67);
              __swift_destroy_boxed_opaque_existential_1(v79);
LABEL_16:
              v36 += v73;
              if (!--v34)
              {
                goto LABEL_6;
              }

              v72(v38, v36, v24);
            }

            (*v22)(v38, v24);
            v39 = v8;
            v40 = &qword_27F232618;
            v41 = &qword_24F9DAE90;
LABEL_15:
            sub_24E601704(v39, v40, v41);
            goto LABEL_16;
          }

LABEL_6:

          v14 = v58;
          v18 = (v63 - 1) & v63;

          v15 = v57;
          v19 = v56;
          v23 = v62;
          goto LABEL_7;
        }
      }

      __break(1u);
    }
  }
}

void sub_24F0AC7C4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!*(*a1 + 16) || (v7 = sub_24E76D644(a2, a3), (v8 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    v12 = 1;
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a1;
    v12 = v10;
LABEL_6:
    sub_24E81DF80(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    *a1 = v13;
    return;
  }

  __break(1u);
}

void sub_24F0AC888(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v7 = sub_24E76D644(a2, a3);
    if (v8)
    {
      v9 = *(*(v3 + 56) + 8 * v7);
      if (v9 < 2)
      {
        sub_24E98F804(a2, a3);
      }

      else
      {
        v10 = v9 - 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *a1;
        sub_24E81DF80(v10, a2, a3, isUniquelyReferenced_nonNull_native);
        *a1 = v12;
      }
    }
  }
}

double sub_24F0AC948(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_24F927D88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v10);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  swift_beginAccess();
  v15 = *(v4 + 16);
  v23 = v12;
  v24 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v25 = v16;
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  v19 = sub_24F0ACED0;
  v20 = &v22;
  v21 = v15;
  sub_24F92BF08();

  (*(v7 + 8))(v9, v6);

  return result;
}

uint64_t VisibleShelfSupplementaryCollectionElementsObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F0ACBDC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 24);

  a1(&v6);
}

double sub_24F0ACC94(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  swift_beginAccess();
  v14 = *(v3 + 16);
  v22 = v11;
  v23 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v24 = v15;
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  v18 = sub_24F0AD008;
  v19 = &v21;
  v20 = v14;
  sub_24F92BF08();

  (*(v6 + 8))(v8, v5);

  return result;
}

uint64_t sub_24F0ACED8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_24F0AD010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfLayoutContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AdvertDeviceWindowFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AdvertDeviceWindowFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F2106A0 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050, &unk_24F975FE0);
  __swift_project_value_buffer(v3, qword_27F22E490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
  sub_24F929AC8();
  if (v12)
  {
    v4 = v13;
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(ObjectType, v4);
    v7 = 0x7469617274726F70;
    if (v6)
    {
      v7 = 0x70616373646E616CLL;
    }

    v8 = 0xE800000000000000;
    if (v6)
    {
      v8 = 0xE900000000000065;
    }

    v14 = MEMORY[0x277D837D0];
    v12 = v7;
    v13 = v8;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    if (!v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v12);
      v9 = (*(v4 + 16))(ObjectType, v4);
      v14 = MEMORY[0x277D839B0];
      LOBYTE(v12) = v9 & 1;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
    }

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v11 = sub_24F92AAE8();
    __swift_project_value_buffer(v11, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t sub_24F0AD44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F0AD4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AdvertDeviceWindowFieldsProvider(uint64_t a1)
{
  result = qword_27F238B68;
  if (!qword_27F238B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.handleGamesLibraryPPTs(scrollProxy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v54 = a3;
  v55 = a1;
  v53 = a4;
  v56 = sub_24F924098();
  v8 = *(v56 - 8);
  v58 = *(v8 + 64);
  MEMORY[0x28223BE20](v56);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v59 = sub_24F9235D8();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v41 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  v63 = a3;
  v50 = MEMORY[0x277CDEEA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v51 = OpaqueTypeMetadata2;
  v52 = v16;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v57 = v40 - v17;
  sub_24F9235E8();
  v18 = *(v11 + 16);
  v45 = v11 + 16;
  v49 = v18;
  v18(v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  v60 = v8;
  v48 = *(v8 + 16);
  v19 = v56;
  v48(v10, v55, v56);
  v20 = *(v11 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = *(v8 + 80);
  v43 = v21;
  v23 = (v12 + v22 + v21) & ~v22;
  v46 = v20 | v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = v54;
  v42 = *(v11 + 32);
  v44 = v11 + 32;
  v25 = v24 + v21;
  v26 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v42(v25, v26);
  v28 = *(v60 + 32);
  v60 += 32;
  v29 = v23;
  v28(v24 + v23, v10, v19);
  v30 = v41;
  v31 = v40[1];
  sub_24F926988();

  v32 = *(v61 + 8);
  v61 += 8;
  v47 = v32;
  v32(v30, v59);
  sub_24F9235E8();
  v33 = v26;
  v49(v26, v31, v27);
  v34 = v56;
  v48(v10, v55, v56);
  v35 = swift_allocObject();
  v36 = v54;
  *(v35 + 16) = v27;
  *(v35 + 24) = v36;
  (v42)(v35 + v43, v33, v27);
  v28(v35 + v29, v10, v34);
  v62 = v27;
  v63 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v51;
  v38 = v57;
  sub_24F926988();

  v47(v30, v59);
  return (*(v52 + 8))(v38, v37);
}

uint64_t sub_24F0ADB10(uint64_t a1)
{
  v2 = sub_24F923A88();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F9247B8();
}

uint64_t View.registerGamesPPTs()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterPPTViewModifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B78, &qword_24F9C5F50);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x25304C420](v6, a1, v4, a2);
  return sub_24F0AE26C(v6);
}

uint64_t View.handleGamesPlayNowPPTs(scrollProxy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v54 = a3;
  v55 = a1;
  v53 = a4;
  v56 = sub_24F924098();
  v8 = *(v56 - 8);
  v58 = *(v8 + 64);
  MEMORY[0x28223BE20](v56);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v59 = sub_24F9235D8();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v41 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  v63 = a3;
  v50 = MEMORY[0x277CDEEA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v51 = OpaqueTypeMetadata2;
  v52 = v16;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v57 = v40 - v17;
  sub_24F9235E8();
  v18 = *(v11 + 16);
  v45 = v11 + 16;
  v49 = v18;
  v18(v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  v60 = v8;
  v48 = *(v8 + 16);
  v19 = v56;
  v48(v10, v55, v56);
  v20 = *(v11 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = *(v8 + 80);
  v43 = v21;
  v23 = (v12 + v22 + v21) & ~v22;
  v46 = v20 | v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = v54;
  v42 = *(v11 + 32);
  v44 = v11 + 32;
  v25 = v24 + v21;
  v26 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v42(v25, v26);
  v28 = *(v60 + 32);
  v60 += 32;
  v29 = v23;
  v28(v24 + v23, v10, v19);
  v30 = v41;
  v31 = v40[1];
  sub_24F926988();

  v32 = *(v61 + 8);
  v61 += 8;
  v47 = v32;
  v32(v30, v59);
  sub_24F9235E8();
  v33 = v26;
  v49(v26, v31, v27);
  v34 = v56;
  v48(v10, v55, v56);
  v35 = swift_allocObject();
  v36 = v54;
  *(v35 + 16) = v27;
  *(v35 + 24) = v36;
  (v42)(v35 + v43, v33, v27);
  v28(v35 + v29, v10, v34);
  v62 = v27;
  v63 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v51;
  v38 = v57;
  sub_24F926988();

  v47(v30, v59);
  return (*(v52 + 8))(v38, v37);
}

uint64_t type metadata accessor for RegisterPPTViewModifier(uint64_t a1)
{
  result = qword_27F238B90;
  if (!qword_27F238B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0AE26C(uint64_t a1)
{
  v2 = type metadata accessor for RegisterPPTViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_52()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F924098();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F0AE408(uint64_t a1)
{
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v4 = *(*(*(v1 + 16) - 8) + 64);
  v5 = *(sub_24F924098() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_24F0AF4A0(a1, v6);
}

uint64_t sub_24F0AE4E4(uint64_t *a1)
{
  type metadata accessor for RegisterPPTViewModifier(255);
  sub_24F924038();
  sub_24F0AFC30(&qword_27F238B80, type metadata accessor for RegisterPPTViewModifier, &unk_24F9C5F78);
  return swift_getWitnessTable();
}

uint64_t sub_24F0AE580(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F0AE61C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B88, &qword_24F9C5F58);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F0AE6A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B88, &qword_24F9C5F58);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24F0AE724(uint64_t a1)
{
  sub_24F0AE790(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24F0AE790(uint64_t a1)
{
  if (!qword_27F238BA0)
  {
    sub_24F923A88();
    v1 = sub_24F923578();
    if (!v2)
    {
      atomic_store(v1, &qword_27F238BA0);
    }
  }
}

uint64_t sub_24F0AE82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v44 = a2;
  v3 = type metadata accessor for RegisterPPTViewModifier(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = v5;
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24F9235D8();
  v7 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238BA8, &qword_24F9C5FC8);
  v11 = *(v10 - 8);
  v38 = v10;
  v39 = v11;
  MEMORY[0x28223BE20](v10);
  v37 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238BB0, &qword_24F9C5FD0);
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  MEMORY[0x28223BE20](v13);
  v53 = &v37 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238BB8, &qword_24F9C5FD8);
  v17 = *(v16 - 8);
  v42 = v16;
  v43 = v17;
  MEMORY[0x28223BE20](v16);
  v52 = &v37 - v18;
  sub_24F9235E8();
  v49 = v2;
  sub_24F0AF230(v2, v6);
  v50 = *(v4 + 80);
  v19 = (v50 + 16) & ~v50;
  v20 = swift_allocObject();
  sub_24F0AF298(v6, v20 + v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238BC0, &unk_24F9C5FE0);
  v22 = sub_24E602068(&qword_27F238BC8, &qword_27F238BC0, &unk_24F9C5FE0, MEMORY[0x277CE04B0]);
  sub_24F926988();

  v46 = *(v7 + 8);
  v47 = v7 + 8;
  v23 = v51;
  v46(v9, v51);
  sub_24F9235E8();
  sub_24F0AF230(v2, v6);
  v24 = swift_allocObject();
  sub_24F0AF298(v6, v24 + v19);
  v54 = v21;
  v55 = v22;
  v48 = MEMORY[0x277CDEEA8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v37;
  v27 = v38;
  sub_24F926988();

  v46(v9, v23);
  (*(v39 + 8))(v26, v27);
  sub_24F9235E8();
  sub_24F0AF230(v49, v6);
  v28 = swift_allocObject();
  sub_24F0AF298(v6, v28 + v19);
  v54 = v27;
  v55 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v53;
  v31 = v40;
  sub_24F926988();

  v32 = v46;
  v46(v9, v23);
  (*(v41 + 8))(v30, v31);
  sub_24F9235E8();
  sub_24F0AF230(v49, v6);
  v33 = swift_allocObject();
  sub_24F0AF298(v6, v33 + v19);
  v54 = v31;
  v55 = v29;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  v35 = v52;
  sub_24F926988();

  v32(v9, v51);
  return (*(v43 + 8))(v35, v34);
}

uint64_t sub_24F0AEEA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_24F923A88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F76A240(v6);
  sub_24F91F488();
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v2, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24F923A48();
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v2, v7);
  }

  return result;
}

uint64_t sub_24F0AF068()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_24F923A88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F76A240(v6);
  sub_24F91F488();
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v2, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24F923A48();
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v2, v7);
  }

  return result;
}

uint64_t sub_24F0AF230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterPPTViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0AF298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterPPTViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_15Tm_0()
{
  v1 = *(type metadata accessor for RegisterPPTViewModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238B78, &qword_24F9C5F50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923A88();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F0AF4A0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v36 = a1;
  v42 = sub_24F927D88();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F927DC8();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24F924098();
  v5 = *(v32 - 8);
  v33 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9235F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927DE8();
  v38 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v34 = &v31 - v16;
  sub_24E74EC40();
  v35 = sub_24F92BEF8();
  sub_24F927DD8();
  sub_24F927E58();
  v17 = v12 + 8;
  v18 = *(v12 + 8);
  v37 = v17;
  v18(v14, v11);
  (*(v8 + 16))(v10, v36, v7);
  v20 = v31;
  v19 = v32;
  (*(v5 + 16))(v31, v39, v32);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v10, v7);
  (*(v5 + 32))(v23 + v22, v20, v19);
  aBlock[4] = sub_24F0AFB58;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_111;
  v24 = _Block_copy(aBlock);

  v25 = v40;
  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F0AFC30(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  v27 = v41;
  v26 = v42;
  sub_24F92C6A8();
  v29 = v34;
  v28 = v35;
  MEMORY[0x253051820](v34, v25, v27, v24);
  _Block_release(v24);

  (*(v45 + 8))(v27, v26);
  (*(v43 + 8))(v25, v44);
  return (v18)(v29, v38);
}

uint64_t sub_24F0AFA10(__n128 a1)
{
  v2 = sub_24F9235F8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_24F924098();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_24F0AFB58(__n128 a1)
{
  sub_24F9235F8();
  sub_24F924098();
  return sub_24F9235C8();
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F0AFC30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F0AFC78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238BB8, &qword_24F9C5FD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238BB0, &qword_24F9C5FD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238BA8, &qword_24F9C5FC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238BC0, &unk_24F9C5FE0);
  sub_24E602068(&qword_27F238BC8, &qword_27F238BC0, &unk_24F9C5FE0, MEMORY[0x277CE04B0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F0AFDC4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F0AFE28()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v0 + 40);
      sub_24E81D324(v4, v5, v2, v1, isUniquelyReferenced_nonNull_native);

      *(v0 + 40) = v9;
    }
  }

  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;

  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  return result;
}

unint64_t sub_24F0AFEFC()
{
  v7 = sub_24E6086DC(MEMORY[0x277D84F90]);

  v0 = sub_24F92B2B8();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = 0;
    do
    {
      if (v2 == 32 && v3 == 0xE100000000000000 || (sub_24F92CE08() & 1) != 0)
      {

        v4 = 0;
      }

      else
      {
        if (v2 == 61 && v3 == 0xE100000000000000 || (sub_24F92CE08() & 1) != 0)
        {
          goto LABEL_11;
        }

        if (!v4)
        {
          MEMORY[0x253050C10](v2, v3);

          v4 = 0;
          goto LABEL_3;
        }

        if (v4 != 1)
        {
LABEL_11:

          v4 = 2;
        }

        else
        {
          MEMORY[0x253050C10](v2, v3);

          v4 = 1;
        }
      }

LABEL_3:
      v2 = sub_24F92B2B8();
      v3 = v5;
    }

    while (v5);
  }

  sub_24F0AFE28();

  return v7;
}

uint64_t PlaybackScrollObserver.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t PlaybackScrollObserver.init(_:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t PlaybackScrollObserver.__deallocating_deinit()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocClassInstance();
}

void sub_24F0B0384()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker);
    v4 = Strong;

    sub_24EEDBA34();
    v2 = *(v1 + 64);

    v3 = sub_24F45DA90(v2);

    *&v4[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds] = v3;

    sub_24ECD7CBC();
  }
}

GameStoreKit::PrivacyCategoryStyle_optional __swiftcall PrivacyCategoryStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t PrivacyCategoryStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x61506C6961746564;
  }

  else
  {
    return 0x50746375646F7270;
  }
}

uint64_t sub_24F0B0580(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61506C6961746564;
  }

  else
  {
    v3 = 0x50746375646F7270;
  }

  if (v2)
  {
    v4 = 0xEB00000000656761;
  }

  else
  {
    v4 = 0xEA00000000006567;
  }

  if (*a2)
  {
    v5 = 0x61506C6961746564;
  }

  else
  {
    v5 = 0x50746375646F7270;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006567;
  }

  else
  {
    v6 = 0xEB00000000656761;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F0B0634@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

  *a2 = v5;
  return result;
}

void sub_24F0B0694(uint64_t *a1@<X8>)
{
  v2 = 0x50746375646F7270;
  if (*v1)
  {
    v2 = 0x61506C6961746564;
  }

  v3 = 0xEB00000000656761;
  if (*v1)
  {
    v3 = 0xEA00000000006567;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F0B06E0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0B0770(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0B07EC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t PrivacyCategory.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivacyCategory.__allocating_init(id:title:artwork:style:dataTypes:prefersSmallArtwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, char a7)
{
  v28 = a2;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  LODWORD(a5) = *a5;
  sub_24E65E064(a1, &v31);
  if (*(&v32 + 1))
  {
    v18 = v32;
    *(v16 + 64) = v31;
    *(v16 + 80) = v18;
    *(v16 + 96) = v33;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    HIDWORD(v26) = a5;
    a5 = v19;
    v27 = a3;
    v20 = a4;
    v21 = a6;
    v22 = a7;
    v24 = v23;
    (*(v13 + 8))(v15, v12);
    v29 = a5;
    v30 = v24;
    LOBYTE(a5) = BYTE4(v26);
    a7 = v22;
    a6 = v21;
    a4 = v20;
    a3 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v31, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  *(v16 + 16) = v28;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  *(v16 + 56) = a7 & 1;
  return v16;
}

uint64_t PrivacyCategory.init(id:title:artwork:style:dataTypes:prefersSmallArtwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, char a7)
{
  v8 = v7;
  v29 = a2;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a5) = *a5;
  sub_24E65E064(a1, &v32);
  if (*(&v33 + 1))
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    HIDWORD(v27) = a5;
    a5 = v19;
    v28 = a3;
    v20 = a4;
    v21 = a6;
    v22 = a7;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v30 = a5;
    v31 = v24;
    LOBYTE(a5) = BYTE4(v27);
    a7 = v22;
    a6 = v21;
    a4 = v20;
    a3 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v25 = v36;
  *(v8 + 64) = v35;
  *(v8 + 80) = v25;
  *(v8 + 96) = v37;
  *(v8 + 16) = v29;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7 & 1;
  return v8;
}

uint64_t PrivacyCategory.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v95 = a2;
  v84 = sub_24F91F6B8();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v78[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v86 = &v78[-v5];
  v88 = sub_24F92AC28();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24F9285B8();
  v99 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v91 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v90 = &v78[-v14];
  MEMORY[0x28223BE20](v15);
  v85 = &v78[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v78[-v18];
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v78[-v22];
  v24 = a1;
  sub_24F928398();
  v89 = sub_24F928348();
  v26 = v25;
  v27 = *(v11 + 8);
  v97 = v10;
  v98 = v27;
  v105[7] = v11 + 8;
  v27(v23, v10);
  v94 = v7;
  if (!v26)
  {
    v40 = sub_24F92AC38();
    sub_24F0B1DB0(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v41 = 0x656C746974;
    v42 = v96;
    v41[1] = 0xE500000000000000;
    v41[2] = v42;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    v28 = v24;
    v31 = v95;
LABEL_9:
    v39 = v99;
    v35 = v97;
LABEL_10:
    v38 = v98;
LABEL_11:
    (*(v39 + 8))(v31, v94);
    v38(v28, v35);
    return v9;
  }

  v92 = v26;
  type metadata accessor for Artwork(0);
  v28 = v24;
  sub_24F928398();
  v29 = v95;
  (*(v99 + 16))(v9, v95, v7);
  sub_24F0B1DB0(&qword_27F219660, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v30 = v105[0];
  v31 = v29;
  if (!v105[0])
  {

    v43 = sub_24F92AC38();
    sub_24F0B1DB0(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v44 = 0x6B726F77747261;
    v45 = v96;
    v44[1] = 0xE700000000000000;
    v44[2] = v45;
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D22530], v43);
    swift_willThrow();
    goto LABEL_9;
  }

  v9 = 0x656C797473;
  sub_24F928398();
  sub_24F928348();
  v33 = v32;
  v34 = v19;
  v35 = v97;
  v98(v34, v97);
  v36 = v96;
  if (!v33)
  {

    v47 = sub_24F92AC38();
    sub_24F0B1DB0(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v48 = 0x656C797473;
    v48[1] = 0xE500000000000000;
    v48[2] = v36;
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D22530], v47);
    swift_willThrow();

    v39 = v99;
    goto LABEL_10;
  }

  v37 = sub_24F92CB88();

  if (!v37)
  {
    v79 = 0;
    v38 = v98;
    v39 = v99;
    goto LABEL_15;
  }

  v38 = v98;
  v39 = v99;
  if (v37 != 1)
  {

    v64 = sub_24F92AC38();
    sub_24F0B1DB0(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v65 = MEMORY[0x277D84F90];
    *v66 = 0x656C797473;
    v66[1] = 0xE500000000000000;
    v66[2] = v96;
    v66[3] = v65;
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277D22540], v64);
    swift_willThrow();

    v35 = v97;
    goto LABEL_11;
  }

  v79 = 1;
LABEL_15:
  v49 = v97;
  v50 = v85;
  v51 = v28;
  sub_24F928398();
  v52 = v86;
  sub_24F9282B8();
  v38(v50, v49);
  v53 = v87;
  v54 = v88;
  v55 = (*(v87 + 48))(v52, 1, v88);
  v80 = v30;
  if (v55 == 1)
  {
    sub_24E601704(v52, &qword_27F2213B0, &qword_24F965EC0);
    v99 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = v81;
    (*(v53 + 32))(v81, v52, v54);
    v57 = v93;
    v99 = sub_24F92ABB8();
    v93 = v57;
    (*(v53 + 8))(v56, v54);
  }

  v58 = v91;
  v59 = v90;
  sub_24F928398();
  LODWORD(v91) = sub_24F928278();
  v60 = v98;
  v98(v59, v49);
  sub_24F928398();
  v61 = sub_24F928348();
  if (v62)
  {
    *&v102 = v61;
    *(&v102 + 1) = v62;
    sub_24F92C7F8();
    v63 = v58;
  }

  else
  {
    v67 = v82;
    sub_24F91F6A8();
    v68 = v58;
    v69 = sub_24F91F668();
    v71 = v70;
    (*(v83 + 8))(v67, v84);
    *&v102 = v69;
    *(&v102 + 1) = v71;
    sub_24F92C7F8();
    v63 = v68;
  }

  v60(v63, v49);
  v9 = swift_allocObject();
  sub_24E65E064(v105, &v102);
  if (*(&v103 + 1))
  {
    v72 = v103;
    *(v9 + 64) = v102;
    *(v9 + 80) = v72;
    *(v9 + 96) = v104;
  }

  else
  {
    v73 = v82;
    sub_24F91F6A8();
    v74 = sub_24F91F668();
    v76 = v75;
    (*(v83 + 8))(v73, v84);
    v100 = v74;
    v101 = v76;
    v49 = v97;
    sub_24F92C7F8();
    sub_24E601704(&v102, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v39 + 8))(v95, v94);
  v60(v51, v49);
  sub_24E601704(v105, &qword_27F235830, &qword_24F93B8C0);
  v77 = v92;
  *(v9 + 16) = v89;
  *(v9 + 24) = v77;
  *(v9 + 32) = v80;
  *(v9 + 40) = v79;
  *(v9 + 48) = v99;
  *(v9 + 56) = v91 & 1;
  return v9;
}

uint64_t PrivacyCategory.hash(into:)(uint64_t a1)
{
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24F92B218();
  sub_24E9F7EC4(a1);
  sub_24F92B218();

  v3 = *(v1 + 48);
  MEMORY[0x253052A00](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 40;
    do
    {

      sub_24F92B218();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return sub_24F92D088();
}

uint64_t PrivacyCategory.deinit()
{

  sub_24E6585F8(v0 + 64);
  return v0;
}

uint64_t PrivacyCategory.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t PrivacyCategory.hashValue.getter()
{
  sub_24F92D068();
  PrivacyCategory.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F0B1A88@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyCategory.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F0B1AB4()
{
  sub_24F92D068();
  PrivacyCategory.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F0B1B1C()
{
  sub_24F92D068();
  PrivacyCategory.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit15PrivacyCategoryC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x253052150](a1 + 64, a2 + 64) & 1) == 0)
  {
    goto LABEL_29;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_24F92CE08() & 1) == 0 || (_s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_29;
  }

  if (*(a1 + 40))
  {
    v5 = 0x61506C6961746564;
  }

  else
  {
    v5 = 0x50746375646F7270;
  }

  if (*(a1 + 40))
  {
    v6 = 0xEA00000000006567;
  }

  else
  {
    v6 = 0xEB00000000656761;
  }

  if (*(a2 + 40))
  {
    v7 = 0x61506C6961746564;
  }

  else
  {
    v7 = 0x50746375646F7270;
  }

  if (*(a2 + 40))
  {
    v8 = 0xEA00000000006567;
  }

  else
  {
    v8 = 0xEB00000000656761;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if ((sub_24EA14BB8(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
LABEL_29:
    v11 = 0;
    return v11 & 1;
  }

  v11 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v11 & 1;
}

unint64_t sub_24F0B1CA8()
{
  result = qword_27F238BD0;
  if (!qword_27F238BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238BD0);
  }

  return result;
}

uint64_t sub_24F0B1DB0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24F0B1E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F0B1FC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F0B211C(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24EB5FE28();
    if (v2 <= 0x3F)
    {
      sub_24E68857C(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
      if (v3 <= 0x3F)
      {
        sub_24E68857C(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00, MEMORY[0x277D21D28]);
        if (v4 <= 0x3F)
        {
          sub_24E61C938(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F0B224C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F0B22A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F0B2334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24F0B23D0(uint64_t a1)
{
  sub_24E68857C(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F0B24E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C78, &qword_24F9C64C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F0B3B64();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = *(v3 + 48);
    v14 = *(v3 + 40);
    v15 = v9;
    v13 = 1;
    sub_24E620F7C();
    sub_24F92CCF8();
    v10 = *(v3 + 64);
    v14 = *(v3 + 56);
    v15 = v10;
    v13 = 2;
    sub_24F92CCF8();
    LOBYTE(v14) = 3;
    sub_24F92CD18();
    LOBYTE(v14) = 4;
    sub_24F92CD18();
    LOBYTE(v14) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for GSKDivider(0);
    LOBYTE(v14) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v14) = 7;
    sub_24F929608();
    sub_24F0B224C(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F0B28A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C68, &unk_24F9C64B8);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for GSKDivider(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 72) = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 13) = 0;
  v42 = v14 + 72;
  sub_24E61DA68(&v45, (v14 + 72), qword_27F21B590, &unk_24F93BE30);
  v15 = *(v12 + 40);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v41 = v15;
  v44 = v14;
  v17(&v14[v15], 1, 1, v16);
  v18 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F0B3B64();
  v19 = v40;
  sub_24F92D108();
  if (v19)
  {
    v22 = v41;
    v23 = v44;
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_24E601704(v42, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v23 + v22, &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v40 = v8;
    v35 = v12;
    v36 = v5;
    v20 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v48 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v21 = v39;
    sub_24F92CC68();
    v24 = v46;
    v25 = v44;
    *v44 = v45;
    v25[1] = v24;
    *(v25 + 4) = v47;
    v48 = 1;
    sub_24E620E90();
    sub_24F92CC18();
    v26 = v41;
    v27 = v20;
    v28 = BYTE8(v45);
    *(v25 + 5) = v45;
    *(v25 + 48) = v28;
    v48 = 2;
    sub_24F92CC18();
    v29 = v42;
    v30 = BYTE8(v45);
    *(v25 + 7) = v45;
    *(v25 + 64) = v30;
    LOBYTE(v45) = 3;
    *(v25 + 65) = sub_24F92CC38() & 1;
    LOBYTE(v45) = 4;
    *(v25 + 66) = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v48 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v45, v29, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v45) = 6;
    sub_24E65CAA0();
    v31 = v40;
    sub_24F92CC68();
    v32 = v44;
    sub_24E61DA68(v31, v44 + v26, &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v45) = 7;
    sub_24F0B224C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v33 = v36;
    sub_24F92CC18();
    (*(v27 + 8))(v11, v21);
    sub_24E6009C8(v33, v32 + *(v35 + 44), &qword_27F213E68, &unk_24F93BC80);
    sub_24F0B3C14(v32, v37, type metadata accessor for GSKDivider);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24F0B3BB8(v32);
  }
}

unint64_t sub_24F0B2F70()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x614C6E49776F6873;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6874646977;
  if (v1 != 2)
  {
    v5 = 0x6F506E49776F6873;
  }

  if (*v0)
  {
    v2 = 0x746867696568;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F0B3078@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F0B3E1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F0B30A0(uint64_t a1)
{
  v2 = sub_24F0B3B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0B30DC(uint64_t a1)
{
  v2 = sub_24F0B3B64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F0B3118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F0B3208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C20, &qword_24F9C6490);
  MEMORY[0x28223BE20](v38);
  v4 = &v36 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C28, &qword_24F9C6498);
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v36 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C30, &qword_24F9C64A0);
  MEMORY[0x28223BE20](v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_24F769764((&v36 - v17));
  v19 = sub_24F925218();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    sub_24E60169C(v18, v15, &qword_27F215598, &qword_24F945EF0);
    if ((*(v20 + 88))(v15, v19) == *MEMORY[0x277CE0558])
    {
      if (*(a1 + 66) == 1)
      {
        sub_24F9271E8();
        _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
        v21 = sub_24F926D08();

        v22 = sub_24F925808();
        v23 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C50, &qword_24F9C64A8) + 36)];
        *v23 = v21;
        v23[8] = v22;
        sub_24F927618();
        sub_24F9238C8();
        v24 = v36;
        v25 = &v7[*(v36 + 36)];
        v26 = v41;
        *v25 = v40;
        *(v25 + 1) = v26;
        *(v25 + 2) = v42;
        sub_24E6009C8(v7, v12, &qword_27F238C28, &qword_24F9C6498);
        v27 = 0;
      }

      else
      {
        v27 = 1;
        v24 = v36;
      }

      (*(v5 + 56))(v12, v27, 1, v24);
      goto LABEL_12;
    }

    (*(v20 + 8))(v15, v19);
  }

  if (*(a1 + 65) == 1)
  {
    sub_24F9271E8();
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v28 = sub_24F926D08();

    v29 = sub_24F925808();
    v30 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238C50, &qword_24F9C64A8) + 36)];
    *v30 = v28;
    v30[8] = v29;
    sub_24F927618();
    sub_24F9238C8();
    v31 = v36;
    v32 = &v7[*(v36 + 36)];
    v33 = v41;
    *v32 = v40;
    *(v32 + 1) = v33;
    *(v32 + 2) = v42;
    sub_24E6009C8(v7, v9, &qword_27F238C28, &qword_24F9C6498);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v31 = v36;
  }

  (*(v5 + 56))(v9, v34, 1, v31);
  v12 = v9;
LABEL_12:
  sub_24E60169C(v12, v4, &qword_27F238C30, &qword_24F9C64A0);
  swift_storeEnumTagMultiPayload();
  sub_24F0B396C();
  sub_24F924E28();
  sub_24E601704(v12, &qword_27F238C30, &qword_24F9C64A0);
  return sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
}

uint64_t sub_24F0B3758(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24F0B3C14(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GSKDividerComponent);
  sub_24F0B224C(&qword_27F238C08, type metadata accessor for GSKDividerComponent, &unk_24F9C6428);
  return sub_24F9218E8();
}

unint64_t sub_24F0B396C()
{
  result = qword_27F238C38;
  if (!qword_27F238C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238C30, &qword_24F9C64A0);
    sub_24F0B39F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C38);
  }

  return result;
}

unint64_t sub_24F0B39F0()
{
  result = qword_27F238C40;
  if (!qword_27F238C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238C28, &qword_24F9C6498);
    sub_24F0B3A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C40);
  }

  return result;
}

unint64_t sub_24F0B3A7C()
{
  result = qword_27F238C48;
  if (!qword_27F238C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238C50, &qword_24F9C64A8);
    sub_24F0B224C(&qword_27F2388C0, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_24E602068(&qword_27F238C58, &qword_27F238C60, &qword_24F9C64B0, MEMORY[0x277CE0490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C48);
  }

  return result;
}

unint64_t sub_24F0B3B64()
{
  result = qword_27F238C70;
  if (!qword_27F238C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C70);
  }

  return result;
}

uint64_t sub_24F0B3BB8(uint64_t a1)
{
  v2 = type metadata accessor for GSKDivider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F0B3C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F0B3C90()
{
  result = qword_27F238C80;
  if (!qword_27F238C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238C88, &qword_24F9C64E0);
    sub_24F0B396C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C80);
  }

  return result;
}

unint64_t sub_24F0B3D18()
{
  result = qword_27F238C90;
  if (!qword_27F238C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C90);
  }

  return result;
}

unint64_t sub_24F0B3D70()
{
  result = qword_27F238C98;
  if (!qword_27F238C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238C98);
  }

  return result;
}

unint64_t sub_24F0B3DC8()
{
  result = qword_27F238CA0;
  if (!qword_27F238CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238CA0);
  }

  return result;
}

uint64_t sub_24F0B3E1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F506E49776F6873 && a2 == 0xEE00746961727472 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614C6E49776F6873 && a2 == 0xEF6570616373646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t NetworkReachabilityError.errorDescription.getter()
{
  v1 = 0xD00000000000003ELL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000035;
  }
}

uint64_t NetworkReachabilityError.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F0B419C()
{
  result = qword_27F238CA8;
  if (!qword_27F238CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238CA8);
  }

  return result;
}

unint64_t sub_24F0B41F4()
{
  result = qword_27F238CB0;
  if (!qword_27F238CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238CB0);
  }

  return result;
}

unint64_t sub_24F0B4248()
{
  v1 = 0xD00000000000003ELL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000035;
  }
}

uint64_t BootstrapView.init(bootstrap:contentBuilder:working:failed:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v34 = a7;
  v35 = a8;
  v33 = a6;
  v32 = a11;
  v31[0] = a12;
  v31[1] = a13;
  v21 = sub_24F921738();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = a12;
  v36[1] = a13;
  v37 = a14;
  v38 = a15;
  v24 = type metadata accessor for BootstrapView(0, v36);
  sub_24F921728();
  sub_24F0B4420(v23);
  swift_unknownObjectWeakInit();
  result = sub_24F0B4518(a1, a9);
  v26 = (a9 + v24[17]);
  *v26 = a2;
  v26[1] = a3;
  v27 = (a9 + v24[18]);
  *v27 = a4;
  v27[1] = a5;
  v28 = (a9 + v24[19]);
  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  v30 = a9 + v24[20];
  *v30 = v35;
  *(v30 + 8) = a10;
  *(v30 + 16) = v32;
  return result;
}

uint64_t sub_24F0B4420(uint64_t a1)
{
  v3 = sub_24F921738();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_24F926F28();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_24F0B4518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bootstrap(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BootstrapView.init<>(bootstrap:contentBuilder:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a4;
  v17 = type metadata accessor for Bootstrap(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F0B46BC(a1, v19);
  v20 = sub_24F0B4760();
  v21 = sub_24F0B47B4();
  *&v24 = &type metadata for DefaultBootstrapErrorView;
  *(&v24 + 1) = a8;
  *&v23 = a7;
  *(&v23 + 1) = &type metadata for DefaultBootstrapLoadingView;
  BootstrapView.init(bootstrap:contentBuilder:working:failed:isBootstrapping:)(v19, a2, a3, CGSizeMake, 0, sub_24F0B4720, 0, v26, a9, a5, a6, v23, v24, v20, v21);
  return sub_24F0B4808(a1);
}

uint64_t sub_24F0B46BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bootstrap(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0B4720@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v4 = a1;
}

unint64_t sub_24F0B4760()
{
  result = qword_27F238CB8;
  if (!qword_27F238CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238CB8);
  }

  return result;
}

unint64_t sub_24F0B47B4()
{
  result = qword_27F238CC0;
  if (!qword_27F238CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238CC0);
  }

  return result;
}

uint64_t sub_24F0B4808(uint64_t a1)
{
  v2 = type metadata accessor for Bootstrap(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DefaultBootstrapErrorView.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t BootstrapView.init<A>(bootstrap:tabsInfoProvider:customDependencies:appContentView:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v29 = a7;
  v30 = a8;
  v27 = a9;
  v28 = a10;
  v18 = type metadata accessor for Bootstrap(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F0B46BC(a1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = a11;
  *(v21 + 24) = a12;
  v22 = *(a2 + 16);
  *(v21 + 32) = *a2;
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a2 + 32);
  *(v21 + 80) = *(a2 + 48);
  *(v21 + 88) = a3;
  *(v21 + 96) = a4;
  *(v21 + 104) = a5;
  *(v21 + 112) = a6;
  v24 = type metadata accessor for AppView(0, a11, a12, v23);
  WitnessTable = swift_getWitnessTable();
  BootstrapView.init<>(bootstrap:contentBuilder:isBootstrapping:)(v20, sub_24F0B4C08, v21, v29, v30, v28, v24, WitnessTable, v27);
  return sub_24F0B4808(a1);
}

uint64_t sub_24F0B49D8(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1[1];
  v12 = a1[2];
  *&v25 = *a1;
  *(&v25 + 1) = v11;
  *&v26 = v12;
  v13 = a2[1];
  v32 = *a2;
  v33 = v13;
  v34 = a2[2];
  *&v35 = *(a2 + 6);
  AppView.init(bootstrapResult:tabsInfoProvider:customDependencies:content:)(&v25, &v32, a3, a4, a5, a6, &v39);
  v15 = type metadata accessor for AppView(0, a7, a8, v14);
  swift_getWitnessTable();
  sub_24E7896B8();
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v32 = v39;
  v33 = v40;
  v34 = v41;
  v35 = v42;

  sub_24E9D3E84(a2, &v18);
  v16 = *(*(v15 - 8) + 8);

  v16(&v32, v15);
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  sub_24E7896B8();
  v43 = v22;
  v44 = v23;
  v45 = v24;
  v39 = v18;
  v40 = v19;
  v41 = v20;
  v42 = v21;
  return (v16)(&v39, v15);
}

uint64_t sub_24F0B4BA0()
{

  return swift_deallocObject();
}

uint64_t BootstrapView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v93 = sub_24F92B858();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(a1 - 8);
  v105 = *(v107 + 64);
  MEMORY[0x28223BE20](v5);
  v85 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v74 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E50, &qword_24F9842A0);
  MEMORY[0x28223BE20](v12 - 8);
  v77 = &v74 - v13;
  sub_24F923AD8();
  v104 = *(a1 + 16);
  v14 = v104;
  v15 = sub_24F924038();
  v16 = *(a1 + 40);
  v90 = sub_24F0B70E0(&qword_27F211A48, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  v117 = v16;
  v118 = v90;
  v17 = v16;
  v89 = MEMORY[0x277CDFAD8];
  v80 = v15;
  WitnessTable = swift_getWitnessTable();
  v18 = *(a1 + 48);
  v106 = *(a1 + 56);
  v111 = &type metadata for BootstrapResult;
  v112 = v15;
  v114 = WitnessTable;
  v115 = v18;
  v19 = v18;
  v116 = v106;
  v20.i64[0] = v14;
  v102 = v20;
  v108 = *(a1 + 24);
  v113 = v108;
  v82 = sub_24F921CF8();
  v87 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v74 - v21;
  v86 = sub_24F924038();
  v88 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v84 = &v74 - v24;
  v95 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);
  v25 = v2;
  sub_24F926F58();
  v26 = v107;
  v28 = v107 + 16;
  v27 = *(v107 + 16);
  v29 = v11;
  v97 = v25;
  v27(v11, v25, a1);
  v30 = v28;
  v31 = v27;
  v103 = *(v26 + 80);
  v32 = v26;
  v33 = (v103 + 64) & ~v103;
  v101 = v33;
  v34 = swift_allocObject();
  v76 = v34;
  *&v35 = vdupq_laneq_s64(v108, 1).u64[0];
  v98 = v17;
  *(&v35 + 1) = v17;
  *(v34 + 16) = vzip1q_s64(v102, v108);
  *(v34 + 32) = v35;
  v96 = v19;
  v36 = v106;
  *(v34 + 48) = v19;
  *(v34 + 56) = v36;
  v37 = *(v32 + 32);
  v107 = v32 + 32;
  v102.i64[0] = v37;
  v100 = v29;
  v38 = v95;
  v37(v34 + v33, v29, v95);
  v99 = v30;
  v39 = v31;
  v31(v29, v25, v38);
  v40 = v101;
  v41 = swift_allocObject();
  v42 = v104;
  *(v41 + 16) = v104;
  *(v41 + 24) = v108;
  *(v41 + 40) = v17;
  *(v41 + 48) = v19;
  v43 = v106;
  *(v41 + 56) = v106;
  v44 = v41 + v40;
  v45 = v38;
  (v102.i64[0])(v44, v100, v38);
  v46 = v83;
  v47 = v97;
  v39(v83, v97, v45);
  v48 = v39;
  v49 = v101;
  v50 = swift_allocObject();
  *(v50 + 16) = v42;
  *(v50 + 24) = v108;
  v51 = v98;
  v52 = v96;
  *(v50 + 40) = v98;
  *(v50 + 48) = v52;
  *(v50 + 56) = v43;
  v53 = v46;
  v54 = v95;
  v55 = v102.i64[0];
  (v102.i64[0])(v50 + v49, v53, v95);
  v56 = v85;
  v75 = v48;
  v48(v85, v47, v54);
  v57 = v101;
  v58 = swift_allocObject();
  *(v58 + 16) = v104;
  *(v58 + 24) = v108;
  *(v58 + 40) = v51;
  v59 = v96;
  v60 = v106;
  *(v58 + 48) = v96;
  *(v58 + 56) = v60;
  v61 = v56;
  v62 = v54;
  v55(v58 + v57, v61, v54);
  v63 = v78;
  sub_24F921D08();
  v64 = v100;
  v75(v100, v97, v62);
  v65 = swift_allocObject();
  *(v65 + 16) = v104;
  *(v65 + 24) = v108;
  *(v65 + 40) = v98;
  *(v65 + 48) = v59;
  *(v65 + 56) = v106;
  (v102.i64[0])(v65 + v57, v64, v62);
  v66 = v82;
  v67 = swift_getWitnessTable();
  v68 = v91;
  sub_24F92B818();
  v69 = v81;
  sub_24F9268E8();

  (*(v92 + 8))(v68, v93);
  (*(v87 + 8))(v63, v66);
  v109 = v67;
  v110 = v90;
  v70 = v86;
  swift_getWitnessTable();
  v71 = v84;
  sub_24E7896B8();
  v72 = *(v88 + 8);
  v72(v69, v70);
  sub_24E7896B8();
  return (v72)(v71, v70);
}

uint64_t sub_24F0B55E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  sub_24F92B7F8();
  v8[16] = sub_24F92B7E8();
  v10 = sub_24F92B778();
  v8[17] = v10;
  v8[18] = v9;

  return MEMORY[0x2822009F8](sub_24F0B5688, v10, v9);
}

uint64_t sub_24F0B5688()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  v2 = *(v0 + 112);
  *(v0 + 32) = v1;
  *(v0 + 48) = v2;
  type metadata accessor for BootstrapView(0, v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 152) = Strong;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_24F0B5758;
  v5 = *(v0 + 64);

  return Bootstrap.run(rootViewController:)(v5, Strong);
}

uint64_t sub_24F0B5758()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_24F0B58D8;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_24F0B5874;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F0B5874()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0B58D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0B5948(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  v3[5] = v8;
  v3[6] = v9;
  v3[7] = v10;
  v11 = *(type metadata accessor for BootstrapView(0, (v3 + 2)) - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  v3[8] = v13;
  *v13 = v3;
  v13[1] = sub_24E7AF58C;

  return sub_24F0B55E4(a1, v1 + v12, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24F0B5A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v20[0] = v11;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v14;
  v20[4] = v15;
  v20[5] = v16;
  v17 = type metadata accessor for BootstrapView(0, v20);
  (*(a1 + *(v17 + 72)))();
  sub_24E7896B8();
  v18 = *(v5 + 8);
  v18(v7, a3);
  sub_24E7896B8();
  return (v18)(v10, a3);
}

uint64_t sub_24F0B5BD4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v7 = *(type metadata accessor for BootstrapView(0, v10) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_24F0B5A78(v8, v1, v2);
}

uint64_t sub_24F0B5C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a5;
  v42 = a6;
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v47 = a9;
  v39 = a11;
  v40 = a10;
  v48[0] = a5;
  v48[1] = a6;
  v48[2] = a7;
  v48[3] = a8;
  v48[4] = a10;
  v48[5] = a11;
  v14 = type metadata accessor for BootstrapView(0, v48);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v37 - v17;
  v43 = *(a7 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v37 - v24;
  v27 = (a4 + *(v26 + 76));
  v28 = *v27;
  v37[1] = v27[1];
  v38 = v28;
  (*(v15 + 16))(v18, a4, v14, v23);
  v29 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v30 = swift_allocObject();
  v31 = v42;
  *(v30 + 2) = v41;
  *(v30 + 3) = v31;
  *(v30 + 4) = a7;
  *(v30 + 5) = a8;
  v32 = v39;
  *(v30 + 6) = v40;
  *(v30 + 7) = v32;
  (*(v15 + 32))(&v30[v29], v18, v14);
  v33 = &v30[(v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8];
  v34 = v45;
  *v33 = v44;
  v33[1] = v34;

  v38(v46, sub_24F0B8704, v30);

  sub_24E7896B8();
  v35 = *(v43 + 8);
  v35(v21, a7);
  sub_24E7896B8();
  return (v35)(v25, a7);
}

uint64_t sub_24F0B5F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v13 = v4[6];
  v12 = v4[7];
  v17[0] = v4[2];
  v8 = v17[0];
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v13;
  v17[5] = v12;
  v14 = *(type metadata accessor for BootstrapView(0, v17) - 8);
  return sub_24F0B5C98(a1, a2, a3, v4 + ((*(v14 + 80) + 64) & ~*(v14 + 80)), v8, v9, v10, v11, a4, v13, v12);
}

uint64_t sub_24F0B6010(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_24F921738();
  MEMORY[0x28223BE20](v15 - 8);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  type metadata accessor for BootstrapView(0, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);
  sub_24F926F38();
  sub_24F921718();
  v16 = sub_24F926F48();
  return a2(v16);
}

uint64_t sub_24F0B6120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v51 = a7;
  v52 = a8;
  v48 = a6;
  v49 = a5;
  v50 = a4;
  v47 = a2;
  v58 = a9;
  v16 = sub_24F92B858();
  v56 = *(v16 - 8);
  v57 = v16;
  MEMORY[0x28223BE20](v16);
  v54 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v61 = a3;
  *(&v61 + 1) = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  v18 = type metadata accessor for BootstrapView(0, &v61);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  v53 = *(a3 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F923AD8();
  v25 = sub_24F924038();
  v55 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v46 = &v45 - v29;
  v30 = a1;
  v31 = *(a1 + 16);
  v32 = v47;
  v33 = *(v47 + *(v18 + 68));
  v61 = *v30;
  v62 = v31;
  v33(&v61);
  (*(v19 + 16))(v21, v32, v18);
  v34 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v35 = swift_allocObject();
  v36 = v49;
  v37 = v50;
  *(v35 + 2) = a3;
  *(v35 + 3) = v37;
  v38 = v48;
  *(v35 + 4) = v36;
  *(v35 + 5) = v38;
  v39 = v52;
  *(v35 + 6) = v51;
  *(v35 + 7) = v39;
  (*(v19 + 32))(&v35[v34], v21, v18);
  v40 = v54;
  sub_24F92B818();
  sub_24F9268E8();

  (*(v56 + 8))(v40, v57);
  (*(v53 + 8))(v24, a3);
  v41 = sub_24F0B70E0(&qword_27F211A48, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  v59 = v38;
  v60 = v41;
  swift_getWitnessTable();
  v42 = v46;
  sub_24E7896B8();
  v43 = *(v55 + 8);
  v43(v27, v25);
  sub_24E7896B8();
  return (v43)(v42, v25);
}

uint64_t sub_24F0B6594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for BootstrapView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_24F0B6120(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_24F0B6668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  sub_24F92B7F8();
  v7[15] = sub_24F92B7E8();
  v9 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0B670C, v9, v8);
}

uint64_t sub_24F0B670C()
{
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v4 = *(v0 + 104);

  *(v0 + 16) = v6;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v1 = type metadata accessor for BootstrapView(0, v0 + 16);
  sub_24F0B4C1C(0, v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F0B67AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[2] = a2;
  v7[14] = a1;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v7[7] = a7;
  v8 = type metadata accessor for BootstrapView(0, (v7 + 2));
  v7[21] = v8;
  v9 = *(v8 - 8);
  v7[22] = v9;
  v7[23] = *(v9 + 64);
  v7[24] = swift_task_alloc();
  sub_24F92B7F8();
  v7[25] = sub_24F92B7E8();
  v11 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0B68CC, v11, v10);
}

uint64_t sub_24F0B68CC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v4 = *(v0 + 112);
  v12 = *(v0 + 136);
  v13 = *(v0 + 120);
  v11 = *(v0 + 152);

  sub_24F0B4C1C(1, v3);
  v5 = [objc_opt_self() sharedCoordinator];
  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 1) = v13;
  *(v7 + 2) = v12;
  *(v7 + 3) = v11;
  (*(v2 + 32))(&v7[v6], v1, v3);
  *(v0 + 96) = sub_24F0B7F34;
  *(v0 + 104) = v7;
  *(v0 + 64) = MEMORY[0x277D85DD0];
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_24EAF8248;
  *(v0 + 88) = &block_descriptor_112;
  v8 = _Block_copy((v0 + 64));

  [v5 registerAppBootstrapHandler_];
  _Block_release(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24F0B6AA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for BootstrapView(0, (v1 + 2)) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_24F0B87FC;

  return sub_24F0B67AC(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_24F0B6BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_24F921738();
  MEMORY[0x28223BE20](v11 - 8);
  if (qword_27F210790 != -1)
  {
    swift_once();
  }

  v12 = sub_24F92AAE8();
  __swift_project_value_buffer(v12, qword_27F39CA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v13 = type metadata accessor for BootstrapView(0, v17);
  sub_24F0B4C1C(1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);
  sub_24F926F38();
  sub_24F921718();
  return sub_24F926F48();
}

uint64_t BootstrapView.with(rootViewController:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);

  return swift_unknownObjectWeakAssign();
}

uint64_t DefaultBootstrapLoadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = sub_24F925408();
  v1 = *(v10[0] - 8);
  MEMORY[0x28223BE20](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CC8, &unk_24F9C6740);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CD0, &unk_24FA27B70);
  sub_24E602068(&qword_27F238CD8, &qword_27F238CD0, &unk_24FA27B70, MEMORY[0x277D7EAF0]);
  sub_24F924048();
  sub_24F9253F8();
  sub_24E602068(&qword_27F238CE0, &qword_27F238CC8, &unk_24F9C6740, MEMORY[0x277CDDA18]);
  sub_24F0B70E0(&qword_27F238CE8, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  v8 = v10[0];
  sub_24F926038();
  (*(v1 + 8))(v3, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24F0B70E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F0B7128@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = sub_24F925408();
  v1 = *(v10[0] - 8);
  MEMORY[0x28223BE20](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CC8, &unk_24F9C6740);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CD0, &unk_24FA27B70);
  sub_24E602068(&qword_27F238CD8, &qword_27F238CD0, &unk_24FA27B70, MEMORY[0x277D7EAF0]);
  sub_24F924048();
  sub_24F9253F8();
  sub_24E602068(&qword_27F238CE0, &qword_27F238CC8, &unk_24F9C6740, MEMORY[0x277CDDA18]);
  sub_24F0B70E0(&qword_27F238CE8, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  v8 = v10[0];
  sub_24F926038();
  (*(v1 + 8))(v3, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t DefaultBootstrapErrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_24F925408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CF0, &unk_24F9C6750);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  v10 = *(v1 + 2);
  v13 = *v1;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8, &unk_24F94D3F0);
  sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
  sub_24F924048();
  sub_24F9253F8();
  sub_24E602068(qword_27F238CF8, &qword_27F238CF0, &unk_24F9C6750, MEMORY[0x277CDDA18]);
  sub_24F0B70E0(&qword_27F238CE8, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  sub_24F926038();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24F0B76A0@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_24F925408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CF0, &unk_24F9C6750);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  v10 = *(v1 + 2);
  v13 = *v1;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8, &unk_24F94D3F0);
  sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
  sub_24F924048();
  sub_24F9253F8();
  sub_24E602068(qword_27F238CF8, &qword_27F238CF0, &unk_24F9C6750, MEMORY[0x277CDDA18]);
  sub_24F0B70E0(&qword_27F238CE8, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  sub_24F926038();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_24F0B7920(uint64_t a1)
{
  type metadata accessor for Bootstrap(319);
  if (v1 <= 0x3F)
  {
    sub_24E6C5550();
    if (v2 <= 0x3F)
    {
      sub_24EA20668();
      if (v3 <= 0x3F)
      {
        sub_24F0B7C70(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F0B79FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Bootstrap(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 68));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 84);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F0B7B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Bootstrap(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 68)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 84);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F0B7C70(uint64_t a1)
{
  if (!qword_27F229018)
  {
    sub_24F921738();
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F229018);
    }
  }
}

uint64_t sub_24F0B7CE8(uint64_t *a1)
{
  sub_24F923AD8();
  sub_24F924038();
  sub_24F0B70E0(&qword_27F211A48, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  swift_getWitnessTable();
  sub_24F921CF8();
  sub_24F924038();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE010navigationC5StyleyQrqd__AA010NavigationcE0Rd__lFQOyAA0F5StackVyAA0F4PathV011_JetEngine_aB007LoadingC0VyAA4TextVGG_AA0gfcE0VQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_24F925408();
  sub_24E602068(a4, a2, a3, MEMORY[0x277CDDA18]);
  sub_24F0B70E0(&qword_27F238CE8, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F0B7F34()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v7 = *(type metadata accessor for BootstrapView(0, v10) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_24F0B6BC0(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = v0[2];
  v16[0] = v0[1];
  v16[1] = v1;
  v16[2] = v0[3];
  v2 = type metadata accessor for BootstrapView(0, v16);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80));

  v4 = &v3[*(type metadata accessor for Bootstrap(0) + 20)];
  v5 = type metadata accessor for ASKBootstrapV2(0);
  v6 = v5[5];
  v7 = sub_24F92A468();
  (*(*(v7 - 8) + 8))(&v4[v6], v7);
  __swift_destroy_boxed_opaque_existential_1(&v4[v5[7]]);
  v8 = &v4[v5[8]];
  if (*(v8 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  if (*&v4[v5[9]])
  {
  }

  v9 = v5[13];
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v4[v9], 1, v10))
  {
    (*(v11 + 8))(&v4[v9], v10);
  }

  v12 = &v4[v5[14]];
  if (*(v12 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v13 = &v3[*(v2 + 84)];
  v14 = sub_24F921738();
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);

  MEMORY[0x2530543E0](&v3[*(v2 + 88)]);
  return swift_deallocObject();
}

uint64_t sub_24F0B82E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for BootstrapView(0, (v1 + 2)) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_24E7AF58C;

  return sub_24F0B6668(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_24F0B8404()
{
  v1 = v0[2];
  v17[0] = v0[1];
  v17[1] = v1;
  v17[2] = v0[3];
  v2 = type metadata accessor for BootstrapView(0, v17);
  v16 = *(*(v2 - 8) + 80);
  v3 = v0 + ((v16 + 64) & ~v16);

  v4 = &v3[*(type metadata accessor for Bootstrap(0) + 20)];
  v5 = type metadata accessor for ASKBootstrapV2(0);
  v6 = v5[5];
  v7 = sub_24F92A468();
  (*(*(v7 - 8) + 8))(&v4[v6], v7);
  __swift_destroy_boxed_opaque_existential_1(&v4[v5[7]]);
  v8 = &v4[v5[8]];
  if (*(v8 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  if (*&v4[v5[9]])
  {
  }

  v9 = v5[13];
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v4[v9], 1, v10))
  {
    (*(v11 + 8))(&v4[v9], v10);
  }

  v12 = &v4[v5[14]];
  if (*(v12 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v13 = &v3[*(v2 + 84)];
  v14 = sub_24F921738();
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);

  MEMORY[0x2530543E0](&v3[*(v2 + 88)]);

  return swift_deallocObject();
}

uint64_t sub_24F0B8704()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v7 = *(type metadata accessor for BootstrapView(0, v11) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24F0B6010(v0 + v8, *v9, *(v9 + 1), v1, v2, v3, v4, v5, v6);
}

void static JSONContext.makeDefaultContext(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v16);
  v32 = &v30 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v30 - v19;
  sub_24F92AB98();
  v34 = a1;
  v21 = sub_24F928EF8();
  if (!v35[0])
  {
    v24 = sub_24F92AB18();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
    goto LABEL_5;
  }

  MEMORY[0x2530504F0](v21);

  v22 = sub_24F92AB18();
  v23 = 1;
  if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
  {
LABEL_5:
    v23 = 0;
  }

  sub_24E601704(v20, &qword_27F2330E0, &unk_24F9694C0);
  sub_24F928EF8();
  v25 = *(v10 + 48);
  if (v25(v8, 1, v9) == 1)
  {
    sub_24F9285A8();
    if (v25(v8, 1, v9) != 1)
    {
      sub_24E601704(v8, &qword_27F2218B0, &unk_24F975980);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  v35[3] = &type metadata for DiagnosticsAdapter;
  v35[4] = sub_24EB3E414();
  sub_24F928548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
  sub_24F928528();
  (*(v3 + 8))(v5, v31);
  v26 = *(v10 + 8);
  v26(v12, v9);
  __swift_destroy_boxed_opaque_existential_1(v35);
  LOBYTE(v35[0]) = v23;
  if (qword_27F210CB0 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235068, &qword_24F9B5B08);
  __swift_project_value_buffer(v27, qword_27F39D0C8);
  v28 = v32;
  sub_24F928528();
  v26(v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F928EF8();
  if (v35[0])
  {
    if (qword_27F2105F8 != -1)
    {
      swift_once();
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BF38, &unk_24F9957F0);
    __swift_project_value_buffer(v29, qword_27F39C540);
    sub_24F928528();
    v26(v28, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 32))(v33, v28, v9);
  }
}

uint64_t sub_24F0B8D84@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v72 = a3;
  v92 = sub_24F91EF78();
  v83 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v68 - v6;
  v99 = sub_24F91EE38();
  v81 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v76 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = &v68 - v9;
  v10 = sub_24F91F138();
  MEMORY[0x28223BE20](v10 - 8);
  v88 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v68 - v13;
  v15 = sub_24F91F008();
  v77 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v87 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  MEMORY[0x28223BE20](v20);
  v75 = &v68 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238D80, &qword_24F9C6928);
  v97 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v101 = &v68 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238D88, &qword_24F9C6930);
  MEMORY[0x28223BE20](v24 - 8);
  v93 = &v68 - v25;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238D90, &qword_24F9C6938);
  v70 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v68 - v26;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238D98, &qword_24F9C6940);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v100 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - v29;
  v94 = sub_24F91EF48();
  v31 = *(v94 - 1);
  MEMORY[0x28223BE20](v94);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LanguageAwareTextView(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v37 + 32);
  *&v36[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  v68 = v36;
  swift_storeEnumTagMultiPayload();
  sub_24F91EF68();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_24F0B9B18();
  sub_24F91EF58();

  (*(v31 + 8))(v33, v94);
  v39 = v93;
  v40 = *(v73 + 16);
  v69 = v30;
  v40(v100, v30, v74);
  sub_24E602068(&qword_27F238DA8, &qword_27F238D98, &qword_24F9C6940, MEMORY[0x277CC8BE0]);
  sub_24F92B3F8();
  v86 = sub_24E602068(&qword_27F238DB0, &qword_27F238D90, &qword_24F9C6938, MEMORY[0x277CC8BC8]);
  sub_24F92C4D8();
  v41 = *(v97 + 48);
  v97 += 48;
  v85 = v41;
  if (v41(v39, 1, v22) != 1)
  {
    ++v83;
    ++v81;
    v94 = (v77 + 32);
    v80 = (v77 + 56);
    v78 = (v77 + 8);
    v100 = MEMORY[0x277D84F90];
    v79 = (v77 + 48);
    v98 = a1;
    v84 = v22;
    v82 = v15;
    v45 = v90;
    while (1)
    {
      sub_24F0B9C14(v39, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330, &unk_24F93FBE0);
      sub_24E602068(&qword_27F22D340, &qword_27F22D330, &unk_24F93FBE0, MEMORY[0x277D83D30]);
      sub_24F91F058();
      sub_24F91F078();
      v46 = v89;
      sub_24F91EE18();
      sub_24F0BA7A4(&qword_27F225C00, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
      v47 = v99;
      sub_24F92BB88();
      v48 = v19;
      v49 = v14;
      v50 = v91;
      sub_24F92BC08();
      sub_24F0BA7A4(&unk_27F22D350, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
      v51 = v92;
      v52 = sub_24F92AFF8();
      v53 = *v83;
      v54 = v50;
      v14 = v49;
      v19 = v48;
      (*v83)(v54, v51);
      v53(v45, v51);
      v55 = v46;
      v15 = v82;
      (*v81)(v55, v47);
      if ((v52 & 1) == 0)
      {
        sub_24F91EE18();
        sub_24F0BA7A4(&qword_27F238DB8, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
        if (sub_24F92B3B8() == 10 && v56 == 0xE100000000000000)
        {
        }

        else
        {
          v57 = sub_24F92CE08();

          if ((v57 & 1) == 0)
          {
            (*v94)(v14, v48, v15);
            v58 = 0;
            goto LABEL_13;
          }
        }
      }

      (*v78)(v48, v15);
      v58 = 1;
LABEL_13:
      (*v80)(v14, v58, 1, v15);
      sub_24E601704(v101, &qword_27F238D80, &qword_24F9C6928);
      v59 = (*v79)(v14, 1, v15);
      a1 = v98;
      v60 = v84;
      if (v59 == 1)
      {
        sub_24E601704(v14, &qword_27F215340, &qword_24F943530);
      }

      else
      {
        v61 = *v94;
        v62 = v75;
        (*v94)(v75, v14, v15);
        v61(v87, v62, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_24E619A60(0, *(v100 + 2) + 1, 1, v100);
        }

        v64 = *(v100 + 2);
        v63 = *(v100 + 3);
        v65 = v77;
        if (v64 >= v63 >> 1)
        {
          v67 = sub_24E619A60((v63 > 1), v64 + 1, 1, v100);
          v65 = v77;
          v100 = v67;
        }

        v66 = v100;
        *(v100 + 2) = v64 + 1;
        v61(&v66[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64], v87, v15);
        a1 = v98;
      }

      v39 = v93;
      sub_24F92C4D8();
      if (v85(v39, 1, v60) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v100 = MEMORY[0x277D84F90];
LABEL_3:
  (*(v70 + 8))(v95, v96);
  v42.n128_f64[0] = (*(v73 + 8))(v69, v74);
  v43 = v68;
  *v68 = v100;
  *(v43 + 8) = v71;
  sub_24F0199CC(v43, v72, v42);
  return (*(v77 + 8))(a1, v15);
}

uint64_t type metadata accessor for LanguageAwareTextView(uint64_t a1)
{
  result = qword_27F238DC8;
  if (!qword_27F238DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F0B9B18()
{
  result = qword_27F238DA0;
  if (!qword_27F238DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238DA0);
  }

  return result;
}

void sub_24F0B9B6C(uint64_t a1, uint64_t *a2)
{
  sub_24F0B9B18();
  sub_24F91F248();
  __break(1u);
}

uint64_t sub_24F0B9C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238D80, &qword_24F9C6928);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_24F0B9C84@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238E10, &qword_24F9C6AB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_24F923F78();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_24F91F008();
  v14 = MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v17 = sub_24F925DF8();
  v19 = v18;
  v20 = *(a2 + 8);
  v38 = v21;
  v39 = v17;
  v37 = v22;
  if (v20)
  {
    if (v20 == 1)
    {
      sub_24F927618();
    }

    else
    {
      sub_24F927638();
    }
  }

  else
  {
    sub_24F927628();
  }

  sub_24F9242E8();
  v23 = v19 & 1;
  v48 = v19 & 1;
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  sub_24F0B9B18();
  sub_24F91F028();
  v25 = v40;
  if (v40)
  {
    v26 = [v40 baseWritingDirection];

    v27 = MEMORY[0x277CDFA90];
    if (v26 != 1)
    {
      v27 = MEMORY[0x277CDFA88];
    }

    (*(v10 + 104))(v8, *v27, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    type metadata accessor for LanguageAwareTextView(0);
    sub_24F7699B0(v12);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_24E601704(v8, &qword_27F238E10, &qword_24F9C6AB0);
    }
  }

  v28 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238DF0, &qword_24F9C6A98) + 36));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE0, &qword_24F973530);
  (*(v10 + 32))(v28 + *(v29 + 28), v12, v9);
  *v28 = v24;
  v30 = v38;
  *a3 = v39;
  *(a3 + 8) = v30;
  *(a3 + 16) = v23;
  v31 = KeyPath;
  *(a3 + 24) = v37;
  v32 = v46;
  *(a3 + 96) = v45;
  *(a3 + 112) = v32;
  *(a3 + 128) = v47;
  v33 = v42;
  *(a3 + 32) = v41;
  *(a3 + 48) = v33;
  result = v44;
  *(a3 + 64) = v43;
  *(a3 + 80) = result;
  *(a3 + 144) = v31;
  *(a3 + 152) = v20;
  return result;
}

uint64_t sub_24F0BA098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238DE0, &unk_24F9C6A68);
  v10[1] = *v2;
  swift_getKeyPath();
  sub_24F0BA5A4(v2, v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24F0199CC(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238DE8, &qword_24F9C6A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238DF0, &qword_24F9C6A98);
  sub_24E602068(&qword_27F238DF8, &qword_27F238DE8, &qword_24F9C6A90, MEMORY[0x277D83980]);
  sub_24F0BA7A4(&qword_27F238E00, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_24F0BA7EC();
  return sub_24F927228();
}

uint64_t sub_24F0BA2B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F0BA388(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F0BA438(uint64_t a1)
{
  sub_24F0BA524(319, &qword_27F238DD8, MEMORY[0x277CC8C40], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24F0BA524(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F0BA524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F0BA5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageAwareTextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0BA608()
{
  v1 = (type metadata accessor for LanguageAwareTextView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_24F0BA724@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LanguageAwareTextView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_24F0B9C84(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_24F0BA7A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F0BA7EC()
{
  result = qword_27F238E08;
  if (!qword_27F238E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238DF0, &qword_24F9C6A98);
    sub_24E631220();
    sub_24E602068(&qword_27F224BE0, &qword_27F224AE0, &qword_24F973530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238E08);
  }

  return result;
}

uint64_t sub_24F0BA8F0()
{
  sub_24F0BD334();
  sub_24F924868();
  return v1;
}

double sub_24F0BA92C()
{
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  v0 = sub_24F924888();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_24F91FD88();

  v2 = *(v1 + 16);

  return v2;
}

void sub_24F0BAA0C(double a1)
{
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  v2 = sub_24F924888();
  if (v2)
  {
    if (*(v2 + 16) == a1)
    {
      *(v2 + 16) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F91FD78();
    }
  }
}

double sub_24F0BABCC()
{
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  v0 = sub_24F924888();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_24F91FD88();

  v2 = *(v1 + 32);

  return v2;
}

void sub_24F0BACAC(double a1)
{
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  v2 = sub_24F924888();
  if (v2)
  {
    if (*(v2 + 32) == a1)
    {
      *(v2 + 32) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F91FD78();
    }
  }
}

void sub_24F0BAE6C(_BYTE *a1@<X8>)
{
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  v2 = sub_24F924888();
  if (v2)
  {
    v3 = v2;
    swift_getKeyPath();
    sub_24F91FD88();

    v4 = *(v3 + 49);
    v5 = *(v3 + 50);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
}

double sub_24F0BAF5C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  v3 = sub_24F924888();
  if (v3)
  {
    v5 = v3;
    v6 = *(v3 + 50);
    if (sub_24F0C8EE8(*(v3 + 49), v1) & 1) != 0 && (sub_24F0C8EE8(v6, v2))
    {
      *(v5 + 49) = v1;
      *(v5 + 50) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F91FD78();
    }
  }

  return result;
}

void sub_24F0BB140(uint64_t a1@<X8>)
{
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  v2 = sub_24F924888();
  if (v2)
  {
    v3 = v2;
    swift_getKeyPath();
    sub_24F91FD88();

    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
}

double sub_24F0BB230(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  v3 = sub_24F924888();
  if (v3)
  {
    if (*(v3 + 48))
    {
      if (!v2)
      {
LABEL_7:
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_24F91FD78();

        return result;
      }
    }

    else
    {
      if (*(v3 + 40) == v1)
      {
        v6 = v2;
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        goto LABEL_7;
      }
    }

    *(v3 + 40) = v1;
    *(v3 + 48) = v2;
  }

  return result;
}

uint64_t sub_24F0BB408()
{
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  v0 = sub_24F924888();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_24F91FD88();

  v2 = *(v1 + 51);

  return v2;
}

double sub_24F0BB4E0(unsigned __int8 a1)
{
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  v2 = sub_24F924888();
  if (v2)
  {
    if (*(v2 + 51) == a1)
    {
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F91FD78();
    }
  }

  return result;
}

uint64_t sub_24F0BB690@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238E58, &unk_24F9C6D50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  v5 = sub_24F924888();
  if (v5)
  {
    v6 = v5;
    swift_getKeyPath();
    v13[1] = v6;
    sub_24F91FD88();

    v7 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
    swift_beginAccess();
    v8 = sub_24F921998();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v4, v6 + v7, v8);

    (*(v9 + 56))(v4, 0, 1, v8);
    return (*(v9 + 32))(a1, v4, v8);
  }

  else
  {
    v11 = sub_24F921998();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v4, 1, 1, v11);
    sub_24F921958();
    result = (*(v12 + 48))(v4, 1, v11);
    if (result != 1)
    {
      return sub_24F0BDA6C(v4);
    }
  }

  return result;
}

uint64_t sub_24F0BB908(uint64_t a1)
{
  v2 = sub_24F921998();
  v8 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ShelfGeometryEnvironmentValues(0);
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  if (sub_24F924888())
  {
  }

  else
  {
    swift_allocObject();
    sub_24F0BCFC8();
    sub_24F924898();
  }

  if (sub_24F924888())
  {
    (*(v8 + 16))(v4, a1, v2);
    sub_24F0BCCAC(v4);

    return (*(v8 + 8))(a1, v2);
  }

  else
  {
    v6 = *(v8 + 8);

    return v6(a1, v2);
  }
}

double sub_24F0BBAFC()
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  return *(v0 + 16);
}

double sub_24F0BBB9C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_24F0BBC6C(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
    sub_24F91FD78();
  }
}

double sub_24F0BBD84()
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  return *(v0 + 24);
}

double sub_24F0BBE24@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_24F0BBECC(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
    sub_24F91FD78();
  }
}

double sub_24F0BBFE4()
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  return *(v0 + 32);
}

double sub_24F0BC084@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_24F0BC154(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
    sub_24F91FD78();
  }
}

void sub_24F0BC26C(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  v3 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v3;
}

void sub_24F0BC31C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v4;
}

void sub_24F0BC3CC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(v1 + 48))
  {
    if ((a1[1] & 1) == 0)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
      sub_24F91FD78();

      return;
    }
  }

  else
  {
    if (*(v1 + 40) == v2)
    {
      v5 = *(a1 + 8);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
}

void sub_24F0BC4F4(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  *a1 = *(v1 + 49);
}

void sub_24F0BC59C(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  *a2 = *(v3 + 49);
}

double sub_24F0BC644(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 50);
  if (sub_24F0C8EE8(*(v1 + 49), *a1) & 1) != 0 && (sub_24F0C8EE8(v4, v3))
  {
    *(v1 + 49) = v2;
    *(v1 + 50) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F0BC778()
{
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  return *(v0 + 51);
}

void sub_24F0BC818(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  *a2 = *(v3 + 51);
}

double sub_24F0BC8E8(unsigned __int8 a1)
{
  if (*(v1 + 51) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F0BC9F0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  v4 = sub_24F921998();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_24F0BCAE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  v5 = sub_24F921998();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24F0BCBE0(uint64_t a1)
{
  v2 = sub_24F921998();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_24F0BCCAC(v5);
}

uint64_t sub_24F0BCCAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F921998();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_24F0BD9C4(&qword_27F238E50, MEMORY[0x277D7EB40], MEMORY[0x277D7EB48]);
  v9 = sub_24F92AFF8();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
    sub_24F91FD78();
  }

  return (v10)(a1, v4);
}

uint64_t sub_24F0BCF2C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  v5 = sub_24F921998();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_24F0BCFC8()
{
  v1 = sub_24F921998();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91FDB8();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  *(v0 + 49) = 0;
  *(v0 + 51) = 0;
  sub_24F921958();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing, v4, v1);
  return v0;
}

uint64_t sub_24F0BD0C4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  v2 = sub_24F921998();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues___observationRegistrar;
  v4 = sub_24F91FDC8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShelfGeometryEnvironmentValues(uint64_t a1)
{
  result = qword_27F238E38;
  if (!qword_27F238E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0BD1F4(uint64_t a1)
{
  result = sub_24F921998();
  if (v2 <= 0x3F)
  {
    result = sub_24F91FDC8();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_24F0BD334()
{
  result = qword_27F238E48;
  if (!qword_27F238E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238E48);
  }

  return result;
}

uint64_t sub_24F0BD388(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F921998();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  swift_getKeyPath();
  v34 = a1;
  sub_24F0BD9C4(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
  sub_24F91FD88();

  v9 = *(a1 + 16);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  if (v9 != *(a2 + 16))
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v10 = *(a1 + 24);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  if (v10 != *(a2 + 24))
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v11 = *(a1 + 32);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  if (v11 != *(a2 + 32))
  {
    goto LABEL_14;
  }

  v30 = v4;
  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  v14 = *(a2 + 48);
  if (v13)
  {
    if (!*(a2 + 48))
    {
LABEL_14:
      v26 = 0;
      return v26 & 1;
    }
  }

  else
  {
    if (v12 != *(a2 + 40))
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_14;
    }
  }

  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v15 = *(a1 + 50);
  v16 = *(a1 + 49);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  v17 = *(a2 + 50);
  if ((sub_24F0C8EE8(v16, *(a2 + 49)) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_24F0C8EE8(v15, v17) & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v18 = *(a1 + 51);
  swift_getKeyPath();
  v34 = a2;
  sub_24F91FD88();

  if (v18 != *(a2 + 51))
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v34 = a1;
  sub_24F91FD88();

  v19 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  v20 = v32;
  v21 = *(v32 + 16);
  v22 = v30;
  v21(v8, a1 + v19, v30);
  swift_getKeyPath();
  v33 = a2;
  sub_24F91FD88();

  v23 = OBJC_IVAR____TtC12GameStoreKitP33_E483CAF0DCF2AB3635D5C104C16D5D3830ShelfGeometryEnvironmentValues__gridSpacing;
  swift_beginAccess();
  v24 = a2 + v23;
  v25 = v31;
  v21(v31, v24, v22);
  v26 = MEMORY[0x2530472F0](v8, v25);
  v27 = *(v20 + 8);
  v27(v25, v22);
  v27(v8, v22);
  return v26 & 1;
}

void sub_24F0BD940(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_24F0BC3CC(&v2);
}

uint64_t sub_24F0BD9C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F0BDA38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

double sub_24F0BDA4C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

uint64_t sub_24F0BDA6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238E58, &unk_24F9C6D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GameCenterPlayerProfileAction.playerId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId);

  return v1;
}

uint64_t GameCenterPlayerProfileAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v32 = *v3;
  v5 = sub_24F9285B8();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v35 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v32 = v17;
    v18 = v7;
    v19 = v35;
    v20 = v14 == 0xD000000000000016 && 0x800000024FA6B170 == v16;
    if (v20 || (sub_24F92CE08() & 1) != 0)
    {

      v21 = &v3[OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId];
      *v21 = 0;
      *(v21 + 1) = 0;
    }

    else
    {
      v25 = &v3[OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId];
      *v25 = v14;
      v25[1] = v16;
    }

    (*(v8 + 16))(v10, v19, v7);
    v26 = v36;
    v27 = v37;
    v7 = v33;
    v28 = v38;
    (*(v36 + 16))(v33, v38, v37);
    v29 = v34;
    v30 = Action.init(deserializing:using:)(v10, v7);
    if (!v29)
    {
      v7 = v30;
    }

    (*(v26 + 8))(v28, v27);
    v32(v19, v18);
  }

  else
  {
    v22 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v23 = 0x6449726579616C70;
    v24 = v32;
    v23[1] = 0xE800000000000000;
    v23[2] = v24;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D22530], v22);
    swift_willThrow();
    (*(v36 + 8))(v38, v37);
    v17(v35, v7);
    swift_deallocPartialClassInstance();
  }

  return v7;
}

void *GameCenterPlayerProfileAction.__allocating_init(playerId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v28[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v28 - v10;
  v12 = sub_24F928AD8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId);
  *v17 = a1;
  v17[1] = a2;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  (*(v13 + 16))(v15, a3, v12);
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = (v16 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = v16 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v32, &v29);
  if (*(&v30 + 1))
  {
    v21 = v30;
    *v20 = v29;
    *(v20 + 1) = v21;
    *(v20 + 4) = v31;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v23 = v6;
    v24 = a3;
    v26 = v25;
    (*(v28[0] + 8))(v8, v23);
    v28[1] = v22;
    v28[2] = v26;
    a3 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v13 + 8))(a3, v12);
  sub_24E601704(v32, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v11, v16 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v16[2] = 0xD000000000000021;
  v16[3] = 0x800000024FA6B190;
  v16[4] = 0;
  v16[5] = 0;
  (*(v13 + 32))(v16 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v15, v12);
  return v16;
}

void *GameCenterPlayerProfileAction.init(playerId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v27[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v27 - v12;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v4 + OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId);
  *v18 = a1;
  v18[1] = a2;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  (*(v15 + 16))(v17, a3, v14);
  v19 = sub_24F929608();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  sub_24E65E064(v34, &v28);
  if (*(&v29 + 1))
  {
    v31 = v28;
    v32 = v29;
    v33 = v30;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v27[0] + 8))(v10, v8);
    v27[1] = v21;
    v27[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v15 + 8))(a3, v14);
  sub_24E601704(v34, &qword_27F235830, &qword_24F93B8C0);
  v24 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v24 + 4) = v33;
  v25 = v32;
  *v24 = v31;
  *(v24 + 1) = v25;
  sub_24E65E0D4(v13, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v4[2] = 0xD000000000000021;
  v4[3] = 0x800000024FA6B190;
  v4[4] = 0;
  v4[5] = 0;
  (*(v15 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v17, v14);
  return v4;
}

uint64_t GameCenterPlayerProfileAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t GameCenterPlayerProfileAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameCenterPlayerProfileAction(uint64_t a1)
{
  result = qword_27F238E60;
  if (!qword_27F238E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0BEA50(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for Leaderboard.LeaderboardType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_24F0BEBE8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Leaderboard.LeaderboardType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LeaderboardRow(uint64_t a1)
{
  result = qword_27F238E70;
  if (!qword_27F238E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F0BEDB8(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Leaderboard.LeaderboardType(319);
    if (v2 <= 0x3F)
    {
      sub_24F0BEFB0(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24F0BEFB0(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_24F0BEF60();
          if (v5 <= 0x3F)
          {
            sub_24E61C8D4(319);
            if (v6 <= 0x3F)
            {
              sub_24F0BEFB0(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24F0BEF60()
{
  if (!qword_27F2169A8)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2169A8);
    }
  }
}

void sub_24F0BEFB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F0BF014(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 25705;
    v6 = 0x6B726F77747261;
    v7 = 0x656C746974;
    if (a1 != 3)
    {
      v7 = 0x526C6C617265766FLL;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    if (a1 == 9)
    {
      v1 = 0x6575676573;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000010;
    v3 = 0xD000000000000015;
    if (a1 != 6)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F0BF170(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238FC0, &qword_24F9C7100);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F0C22F0();
  sub_24F92D128();
  LOBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for LeaderboardRow(0);
    LOBYTE(v18) = 1;
    type metadata accessor for Leaderboard.LeaderboardType(0);
    sub_24F0C250C(&qword_27F238FC8, type metadata accessor for Leaderboard.LeaderboardType, &protocol conformance descriptor for Leaderboard.LeaderboardType);
    sub_24F92CD48();
    LOBYTE(v18) = 2;
    sub_24F9289E8();
    sub_24F0C250C(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CCF8();
    LOBYTE(v18) = 3;
    sub_24F92CD08();
    LOBYTE(v18) = 4;
    sub_24F92CD38();
    LOBYTE(v18) = 5;
    sub_24F92CD38();
    LOBYTE(v18) = 6;
    sub_24F92CD38();
    v18 = *(v3 + *(v9 + 44));
    v24 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
    sub_24F0C23A8(&qword_27F21BC30, &qword_27F213E28, &protocol conformance descriptor for Player, MEMORY[0x277D83948]);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 48));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v18 = *v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = 8;
    sub_24E68FE2C(v18, v11, v12, v13, v14, v15);
    sub_24F005230();
    sub_24F92CCF8();
    sub_24E687F7C(v18, v19, v20, v21, v22, v23);
    LOBYTE(v18) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v18) = 10;
    sub_24F929608();
    sub_24F0C250C(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F0BF69C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v5 - 8);
  *&v49 = &v46 - v6;
  v7 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238FA8, &unk_24F9C70F0);
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v11 = &v46 - v10;
  v12 = type metadata accessor for LeaderboardRow(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v17 = sub_24F9289E8();
  v18 = *(*(v17 - 8) + 56);
  v58 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[12]];
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  v57 = v19;
  *v19 = 0u;
  v20 = &v14[v12[13]];
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v56 = v20;
  sub_24E61DA68(&v60, v20, qword_27F21B590, &unk_24F93BE30);
  v21 = v12[14];
  v22 = sub_24F929608();
  v23 = *(*(v22 - 8) + 56);
  v54 = v21;
  v59 = v14;
  v23(&v14[v21], 1, 1, v22);
  v24 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24F0C22F0();
  v51 = v11;
  v25 = v53;
  sub_24F92D108();
  if (v25)
  {
    v26 = v59;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_24E601704(v26 + v58, &qword_27F213FB0, &qword_24F93E6B0);
    sub_24E687F7C(*v57, v57[1], v57[2], v57[3], v57[4], v57[5]);
    sub_24E601704(v56, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v26 + v54, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    *&v46 = v7;
    v53 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v64 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v27 = v61;
    v28 = v59;
    *v59 = v60;
    v28[1] = v27;
    *(v28 + 4) = v62;
    LOBYTE(v60) = 1;
    sub_24F0C250C(&qword_27F238FB8, type metadata accessor for Leaderboard.LeaderboardType, &protocol conformance descriptor for Leaderboard.LeaderboardType);
    sub_24F92CC68();
    sub_24F0C2344(v9, v28 + v53[5]);
    LOBYTE(v60) = 2;
    sub_24F0C250C(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v29 = v49;
    sub_24F92CC18();
    sub_24E61DA68(v29, v28 + v58, &qword_27F213FB0, &qword_24F93E6B0);
    LOBYTE(v60) = 3;
    v30 = sub_24F92CC28();
    v31 = v53;
    v32 = (v28 + v53[7]);
    *v32 = v30;
    v32[1] = v33;
    LOBYTE(v60) = 4;
    *(v28 + v31[8]) = sub_24F92CC58();
    LOBYTE(v60) = 5;
    *(v28 + v31[9]) = sub_24F92CC58();
    LOBYTE(v60) = 6;
    *(v28 + v31[10]) = sub_24F92CC58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
    v64 = 7;
    sub_24F0C23A8(&qword_27F2196A8, &qword_27F213E38, &protocol conformance descriptor for Player, MEMORY[0x277D83978]);
    sub_24F92CC68();
    *(v59 + v53[11]) = v60;
    v64 = 8;
    sub_24E688020();
    sub_24F92CC18();
    v35 = v62;
    v34 = v63;
    v36 = v57;
    v37 = *v57;
    v38 = v57[1];
    v39 = v57[2];
    v40 = v57[3];
    v41 = v57[4];
    v42 = v57[5];
    v49 = v60;
    v46 = v61;
    sub_24E687F7C(v37, v38, v39, v40, v41, v42);
    v43 = v46;
    *v36 = v49;
    *(v36 + 1) = v43;
    v36[4] = v35;
    v36[5] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v64 = 9;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v60, v56, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v60) = 10;
    sub_24F0C250C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    (*(v50 + 8))(v51, v52);
    v44 = v59;
    sub_24E61DA68(v48, v59 + v54, &qword_27F213E68, &unk_24F93BC80);
    sub_24F0C2444(v44, v47, type metadata accessor for LeaderboardRow);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_24F0C24AC(v44, type metadata accessor for LeaderboardRow);
  }
}

uint64_t sub_24F0C0178@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F0C26E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F0C01A0(uint64_t a1)
{
  v2 = sub_24F0C22F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0C01DC(uint64_t a1)
{
  v2 = sub_24F0C22F0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F0C0218@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 52), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_24F0C0328()
{
  result = qword_27F238E80;
  if (!qword_27F238E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238E80);
  }

  return result;
}

uint64_t sub_24F0C037C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a1;
  v44 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  MEMORY[0x28223BE20](v42);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238E98, &qword_24F9C6FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238EA0, &qword_24F9C6FC8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238EA8, &qword_24F9C6FD0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238EB0, &qword_24F9C6FD8);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  *v7 = sub_24F9249A8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238EB8, &unk_24F9C6FE0);
  sub_24F0C0910(a1, v3, &v7[*(v19 + 44)]);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, v11, &qword_27F238E98, &qword_24F9C6FC0);
  v20 = &v11[*(v9 + 44)];
  v21 = v52;
  *(v20 + 4) = v51;
  *(v20 + 5) = v21;
  *(v20 + 6) = v53;
  v22 = v48;
  *v20 = v47;
  *(v20 + 1) = v22;
  v23 = v50;
  *(v20 + 2) = v49;
  *(v20 + 3) = v23;
  v24 = *(v3 + 32);
  v25 = &v15[*(v13 + 44)];
  v26 = *(sub_24F924258() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_24F924B38();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  *v25 = v24;
  *(v25 + 1) = v24;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48, &qword_24F9570D0);
  v30 = *(v29 + 36);
  v31 = type metadata accessor for GradientBackground(0);
  (*(*(v31 - 8) + 56))(&v25[v30], 1, 1, v31);
  *&v25[*(v29 + 40)] = 0;
  sub_24E6009C8(v11, v15, &qword_27F238EA0, &qword_24F9C6FC8);
  v32 = sub_24F927618();
  v34 = v33;
  v43 = v16;
  v35 = &v18[*(v16 + 36)];
  v36 = sub_24E6A4C1C();
  sub_24F924B68();
  v45 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810, &qword_24F9996C0);
  v46[0] = &type metadata for GameOverlayViewPredicate;
  v46[1] = v36;
  swift_getOpaqueTypeConformance2();
  sub_24F0C1E88();
  sub_24F927578();
  v37 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238ED8, &unk_24F9C6FF0) + 36)];
  *v37 = v32;
  v37[1] = v34;
  sub_24E6009C8(v15, v18, &qword_27F238EA8, &qword_24F9C6FD0);
  v38 = type metadata accessor for LeaderboardRow(0);
  sub_24E60169C(v41 + *(v38 + 52), v46, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v46, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v39 = sub_24F9248C8();
  __swift_project_value_buffer(v39, qword_27F39F078);
  sub_24F0C1F40();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v18, &qword_27F238EB0, &qword_24F9C6FD8);
}

uint64_t sub_24F0C0910@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F08, &qword_24F9C7000);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F10, &qword_24F9C7008);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = type metadata accessor for LeaderboardRow(0);
  sub_24E60169C(a1 + *(v19 + 24), v18, &qword_27F213FB0, &qword_24F93E6B0);
  v20 = *a2;
  sub_24F927618();
  sub_24F9238C8();
  v21 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F18, &qword_24F9C7010) + 36)];
  v22 = v44;
  *v21 = v43;
  *(v21 + 1) = v22;
  *(v21 + 2) = v45;
  v23 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F20, &unk_24F9C7018) + 36)];
  v24 = *(sub_24F924258() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24F924B38();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  *v23 = v20;
  *(v23 + 1) = v20;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  LOBYTE(v25) = sub_24F925808();
  sub_24F923318();
  v27 = &v18[*(v13 + 44)];
  *v27 = v25;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  *v11 = sub_24F924C98();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F28, &qword_24F9C7028);
  sub_24F0C0CB8(v41, a2, &v11[*(v32 + 44)]);
  LOBYTE(a2) = sub_24F925858();
  sub_24F923318();
  v33 = &v11[*(v6 + 44)];
  *v33 = a2;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  sub_24E60169C(v18, v15, &qword_27F238F10, &qword_24F9C7008);
  sub_24E60169C(v11, v8, &qword_27F238F08, &qword_24F9C7000);
  v38 = v42;
  sub_24E60169C(v15, v42, &qword_27F238F10, &qword_24F9C7008);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F30, &unk_24F9C7030);
  sub_24E60169C(v8, v38 + *(v39 + 48), &qword_27F238F08, &qword_24F9C7000);
  sub_24E601704(v11, &qword_27F238F08, &qword_24F9C7000);
  sub_24E601704(v18, &qword_27F238F10, &qword_24F9C7008);
  sub_24E601704(v8, &qword_27F238F08, &qword_24F9C7000);
  return sub_24E601704(v15, &qword_27F238F10, &qword_24F9C7008);
}

uint64_t sub_24F0C0CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v108 = a3;
  v4 = sub_24F9259C8();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4);
  v94 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F38, &qword_24FA16D70);
  MEMORY[0x28223BE20](v96);
  v95 = &v88 - v6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F40, &qword_24F9C7040);
  MEMORY[0x28223BE20](v99);
  v103 = &v88 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F48, &qword_24F9C7048);
  MEMORY[0x28223BE20](v101);
  v107 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = &v88 - v10;
  MEMORY[0x28223BE20](v11);
  v105 = &v88 - v12;
  v13 = type metadata accessor for LeaderboardTimer(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F50, &unk_24F9C7050);
  v91 = *(v16 - 8);
  v92 = v16;
  MEMORY[0x28223BE20](v16);
  v89 = &v88 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F58, &unk_24FA16DA0);
  v18 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v88 - v19;
  v20 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F91F648();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F60, &unk_24F9C7060);
  MEMORY[0x28223BE20](v27 - 8);
  v100 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v109 = &v88 - v30;
  v31 = type metadata accessor for LeaderboardRow(0);
  v32 = v31[5];
  v106 = a1;
  sub_24F0C2444(a1 + v32, v22, type metadata accessor for Leaderboard.LeaderboardType);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
  if ((*(*(v33 - 8) + 48))(v22, 1, v33) == 1)
  {
    sub_24F0C24AC(v22, type metadata accessor for Leaderboard.LeaderboardType);
    v34 = 1;
    v35 = v109;
  }

  else
  {
    (*(v24 + 32))(v26, v22, v23);
    sub_24F91F5C8();
    if (v36 <= 0.0)
    {
      (*(v24 + 8))(v26, v23);
      v46 = 1;
      v43 = v91;
      v45 = v92;
      v44 = v90;
    }

    else
    {
      *&v125 = 0x72656D6974;
      *(&v125 + 1) = 0xE500000000000000;
      sub_24F92C7F8();
      (*(v24 + 16))(&v15[v13[5]], v26, v23);
      *&v127 = 0;
      v125 = 0u;
      v126 = 0u;
      v37 = v13[8];
      v38 = sub_24F92A6D8();
      (*(*(v38 - 8) + 56))(&v15[v37], 1, 1, v38);
      v39 = v13[9];
      v40 = sub_24F929608();
      (*(*(v40 - 8) + 56))(&v15[v39], 1, 1, v40);
      v15[v13[6]] = 1;
      v41 = &v15[v13[7]];
      *(v41 + 32) = 0;
      *v41 = 0u;
      *(v41 + 16) = 0u;
      sub_24E61DA68(&v125, v41, qword_27F21B590, &unk_24F93BE30);
      sub_24E768848();
      v42 = v89;
      sub_24F921D38();
      (*(v24 + 8))(v26, v23);
      sub_24F0C24AC(v15, type metadata accessor for LeaderboardTimer);
      v44 = v90;
      v43 = v91;
      v45 = v92;
      (*(v91 + 32))(v90, v42, v92);
      v46 = 0;
    }

    (*(v43 + 56))(v44, v46, 1, v45);
    v35 = v109;
    sub_24E6009C8(v44, v109, &qword_27F238F58, &unk_24FA16DA0);
    v34 = 0;
  }

  v47 = (*(v18 + 56))(v35, v34, 1, v93);
  MEMORY[0x28223BE20](v47);
  v48 = v106;
  MEMORY[0x28223BE20](v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F68, &qword_24F9C7070);
  sub_24F0C2178();
  v50 = v95;
  sub_24F926EA8();
  sub_24F9258D8();
  v52 = v97;
  v51 = v98;
  v53 = v94;
  (*(v97 + 104))(v94, *MEMORY[0x277CE0A10], v98);
  v54 = sub_24F9259F8();

  (*(v52 + 8))(v53, v51);
  KeyPath = swift_getKeyPath();
  v56 = (v50 + *(v96 + 36));
  *v56 = KeyPath;
  v56[1] = v54;
  sub_24F0C2204();
  v57 = v103;
  sub_24F9268B8();
  sub_24E601704(v50, &qword_27F238F38, &qword_24FA16D70);
  v58 = swift_getKeyPath();
  v59 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F90, &qword_24FA16E20) + 36);
  *v59 = v58;
  *(v59 + 8) = 2;
  *(v59 + 16) = 0;
  LOBYTE(v58) = sub_24F925828();
  sub_24F923318();
  v60 = v57 + *(v99 + 36);
  *v60 = v58;
  *(v60 + 8) = v61;
  *(v60 + 16) = v62;
  *(v60 + 24) = v63;
  *(v60 + 32) = v64;
  *(v60 + 40) = 0;
  sub_24F927628();
  sub_24F9242E8();
  v65 = v102;
  sub_24E6009C8(v57, v102, &qword_27F238F40, &qword_24F9C7040);
  v66 = (v65 + *(v101 + 36));
  v67 = v130;
  v66[4] = v129;
  v66[5] = v67;
  v66[6] = v131;
  v68 = v126;
  *v66 = v125;
  v66[1] = v68;
  v69 = v128;
  v66[2] = v127;
  v66[3] = v69;
  v70 = v105;
  sub_24E6009C8(v65, v105, &qword_27F238F48, &qword_24F9C7048);
  v71 = sub_24F9249A8();
  v111 = 1;
  v72 = v31[9];
  v103 = *(v48 + v31[8]);
  v104 = v71;
  v73 = *(v48 + v72);
  v74 = v31[11];
  v101 = *(v48 + v31[10]);
  v102 = v73;
  v75 = *(v48 + v74);
  v110 = 1;

  v76 = v100;
  sub_24E60169C(v109, v100, &qword_27F238F60, &unk_24F9C7060);
  v77 = v107;
  sub_24E60169C(v70, v107, &qword_27F238F48, &qword_24F9C7048);
  v78 = v108;
  sub_24E60169C(v76, v108, &qword_27F238F60, &unk_24F9C7060);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F98, &qword_24F9C70E0);
  sub_24E60169C(v77, v78 + *(v79 + 48), &qword_27F238F48, &qword_24F9C7048);
  v80 = v78 + *(v79 + 64);
  v81 = v103;
  v82 = v104;
  v112 = v104;
  LOBYTE(v113) = 1;
  v84 = v101;
  v83 = v102;
  *(&v113 + 1) = v103;
  *&v114 = v102;
  *(&v114 + 1) = v101;
  *&v115 = 0;
  BYTE8(v115) = 1;
  v116 = v75;
  v85 = v115;
  *(v80 + 32) = v114;
  *(v80 + 48) = v85;
  *(v80 + 64) = v75;
  v86 = v113;
  *v80 = v112;
  *(v80 + 16) = v86;
  sub_24E60169C(&v112, v117, &qword_27F238FA0, &qword_24F9C70E8);
  sub_24E601704(v70, &qword_27F238F48, &qword_24F9C7048);
  sub_24E601704(v109, &qword_27F238F60, &unk_24F9C7060);
  v117[0] = v82;
  v117[1] = 0;
  v118 = 1;
  v119 = v81;
  v120 = v83;
  v121 = v84;
  v122 = 0;
  v123 = 1;
  v124 = v75;
  sub_24E601704(v117, &qword_27F238FA0, &qword_24F9C70E8);
  sub_24E601704(v77, &qword_27F238F48, &qword_24F9C7048);
  return sub_24E601704(v76, &qword_27F238F60, &unk_24F9C7060);
}

uint64_t sub_24F0C18B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924258();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 32);
  v9 = *(v8 + 28);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v6[v9], v10, v11);
  *v6 = v7;
  *(v6 + 1) = v7;
  LODWORD(v10) = sub_24F925188();
  sub_24F923658();
  sub_24F0C2444(v6, a2, MEMORY[0x277CDFC08]);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8, &qword_24FA00310) + 36);
  v13 = v24;
  *v12 = *&v23[8];
  *(v12 + 16) = v13;
  *(v12 + 32) = v25;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E800, &qword_24F9996B0);
  *(a2 + *(v14 + 52)) = v10;
  *(a2 + *(v14 + 56)) = 256;
  v15 = sub_24F927618();
  v17 = v16;
  sub_24F0C24AC(v6, MEMORY[0x277CDFC08]);
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E808, &qword_24F9996B8) + 36));
  *v18 = v15;
  v18[1] = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810, &qword_24F9996C0) + 36);
  v20 = *MEMORY[0x277CE13B8];
  v21 = sub_24F927748();
  return (*(*(v21 - 8) + 104))(a2 + v19, v20, v21);
}

uint64_t sub_24F0C1AD0@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for LeaderboardRow(0);
  sub_24E600AEC();

  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24F0C1B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for LeaderboardRow(0) + 48) + 8))
  {

    v3 = sub_24F926E48();
    result = sub_24F9251C8();
  }

  else
  {
    v3 = 0;
    result = 0;
  }

  *a2 = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24F0C1C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  sub_24E60169C(a1, v12, &qword_27F213F18, &qword_24F93BE20);
  v5 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v13;
  v6 = sub_24F924258();
  *(a2 + 64) = v6;
  *(a2 + 72) = sub_24F0C250C(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 40));
  v8 = *(v6 + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_24F924B38();
  result = (*(*(v10 - 8) + 104))(boxed_opaque_existential_1 + v8, v9, v10);
  *boxed_opaque_existential_1 = v4;
  boxed_opaque_existential_1[1] = v4;
  return result;
}

unint64_t sub_24F0C1DC8()
{
  result = qword_27F238E90;
  if (!qword_27F238E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238E90);
  }

  return result;
}

unint64_t sub_24F0C1E88()
{
  result = qword_27F238EC0;
  if (!qword_27F238EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E810, &qword_24F9996C0);
    sub_24E602068(&qword_27F238EC8, &qword_27F238ED0, &unk_24FA16CE0, MEMORY[0x277CDFB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238EC0);
  }

  return result;
}

unint64_t sub_24F0C1F40()
{
  result = qword_27F238EE0;
  if (!qword_27F238EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238EB0, &qword_24F9C6FD8);
    sub_24F0C1FF8();
    sub_24E602068(&qword_27F238F00, &qword_27F238ED8, &unk_24F9C6FF0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238EE0);
  }

  return result;
}

unint64_t sub_24F0C1FF8()
{
  result = qword_27F238EE8;
  if (!qword_27F238EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238EA8, &qword_24F9C6FD0);
    sub_24F0C20B0();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48, &qword_24F9570D0, &unk_24FA0D350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238EE8);
  }

  return result;
}

unint64_t sub_24F0C20B0()
{
  result = qword_27F238EF0;
  if (!qword_27F238EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238EA0, &qword_24F9C6FC8);
    sub_24E602068(&qword_27F238EF8, &qword_27F238E98, &qword_24F9C6FC0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238EF0);
  }

  return result;
}

unint64_t sub_24F0C2178()
{
  result = qword_27F238F70;
  if (!qword_27F238F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238F68, &qword_24F9C7070);
    sub_24F005644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238F70);
  }

  return result;
}

unint64_t sub_24F0C2204()
{
  result = qword_27F238F78;
  if (!qword_27F238F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238F38, &qword_24FA16D70);
    sub_24E602068(&qword_27F238F80, &qword_27F238F88, &unk_24FA16DE0, MEMORY[0x277CDEFF0]);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238F78);
  }

  return result;
}

unint64_t sub_24F0C22F0()
{
  result = qword_27F238FB0;
  if (!qword_27F238FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FB0);
  }

  return result;
}

uint64_t sub_24F0C2344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Leaderboard.LeaderboardType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0C23A8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240, qword_24F957DE0);
    sub_24F0C250C(a2, type metadata accessor for Player, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F0C2444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F0C24AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F0C250C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F0C2574()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238EB0, &qword_24F9C6FD8);
  sub_24F0C1F40();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F0C25DC()
{
  result = qword_27F238FD0;
  if (!qword_27F238FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FD0);
  }

  return result;
}

unint64_t sub_24F0C2634()
{
  result = qword_27F238FD8;
  if (!qword_27F238FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FD8);
  }

  return result;
}

unint64_t sub_24F0C268C()
{
  result = qword_27F238FE0;
  if (!qword_27F238FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FE0);
  }

  return result;
}

uint64_t sub_24F0C26E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x526C6C617265766FLL && a2 == 0xEB000000006B6E61 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA6B230 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA6B250 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA6B270 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA459C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

id JSONObject.appStoreColor.getter()
{
  v0 = sub_24F928388();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F928328();
  result = 0;
  if ((v4 & 1) == 0)
  {
    sub_24F928398();
    sub_24F0C2BD4();
    sub_24F928248();
    (*(v1 + 8))(v3, v0);
    if (v8 > 1u)
    {
      if (v8 == 2)
      {
        return sub_24F0C343C();
      }
    }

    else if (v8)
    {
      return sub_24F0C31CC();
    }

    sub_24F928348();
    if (v6)
    {
      sub_24E77ACC8();
      return sub_24F92C398();
    }

    else
    {
      return sub_24F0C2F50();
    }
  }

  return result;
}

unint64_t sub_24F0C2BD4()
{
  result = qword_27F238FE8;
  if (!qword_27F238FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FE8);
  }

  return result;
}

uint64_t sub_24F0C2C28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x64656D616ELL;
  if (v2 != 1)
  {
    v4 = 0x63696D616E7964;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6449010;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x64656D616ELL;
  if (*a2 != 1)
  {
    v8 = 0x63696D616E7964;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6449010;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0C2D1C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C2DB4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0C2E38()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F0C2ECC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F0C4160(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F0C2EFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x64656D616ELL;
  if (v2 != 1)
  {
    v5 = 0x63696D616E7964;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6449010;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_24F0C2F50()
{
  v0 = sub_24F928388();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  sub_24F928398();
  v13 = sub_24F928308();
  v15 = v14;
  v16 = *(v1 + 8);
  v16(v12, v0);
  if (v15)
  {
    return 0;
  }

  sub_24F928398();
  v17 = sub_24F928308();
  v19 = v18;
  v16(v9, v0);
  if (v19)
  {
    return 0;
  }

  sub_24F928398();
  v20 = sub_24F928308();
  v22 = v21;
  v16(v6, v0);
  if (v22)
  {
    return 0;
  }

  v24 = *&v20;
  sub_24F928398();
  v25 = COERCE_DOUBLE(sub_24F928308());
  v27 = v26;
  v16(v3, v0);
  if (v27)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = v25;
  }

  return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*&v13 green:*&v17 blue:v24 alpha:v28];
}

id sub_24F0C31CC()
{
  v0 = sub_24F928388();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  sub_24F0C41AC();
  sub_24F928248();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v12 <= 1u)
  {
    if (v12)
    {
      v5 = &selRef_whiteColor;
    }

    else
    {
      v5 = &selRef_blackColor;
    }

    return [objc_opt_self() *v5];
  }

  if (v12 == 2)
  {
    v5 = &selRef_clearColor;
    return [objc_opt_self() *v5];
  }

  sub_24F928398();
  sub_24F0C4200();
  sub_24F928248();
  v4(v3, v0);
  if (v11 != 9)
  {
    return sub_24F0C33E4(v11);
  }

  sub_24F928398();
  sub_24F0C4254();
  sub_24F928248();
  v4(v3, v0);
  if (v10 == 10)
  {
    return 0;
  }

  v7 = sub_24F0C3DC8(v10);
  v8 = v7;
  return v7;
}

id sub_24F0C33E4(char a1)
{
  v1 = [objc_opt_self() *off_27968E898[a1]];

  return v1;
}

void *sub_24F0C343C()
{
  v0 = sub_24F928388();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  sub_24F928398();
  v7 = JSONObject.appStoreColor.getter();
  v8 = *(v1 + 8);
  v8(v6, v0);
  if (v7)
  {
    sub_24F928398();
    v9 = JSONObject.appStoreColor.getter();
    v8(v3, v0);
    if (v9)
    {
      sub_24E77ACC8();
      if (sub_24F92C408())
      {
      }

      else
      {
        v10 = v7;
        v11 = v9;
        return sub_24F92C388();
      }
    }
  }

  return v7;
}

unint64_t sub_24F0C3600()
{
  result = qword_27F238FF0;
  if (!qword_27F238FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FF0);
  }

  return result;
}

uint64_t sub_24F0C3654(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65526D6574737973;
    v6 = 0x6C426D6574737973;
    if (a1 != 2)
    {
      v6 = 0x724F6D6574737973;
    }

    if (a1)
    {
      v5 = 0x72476D6574737973;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x75506D6574737973;
    v2 = 0x72476D6574737973;
    if (a1 != 7)
    {
      v2 = 0x72426D6574737973;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65596D6574737973;
    if (a1 != 4)
    {
      v3 = 0x69506D6574737973;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_24F0C37AC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x7972616974726574;
    v5 = 0x616E726574617571;
    if (a1 != 8)
    {
      v5 = 0x4C746C7561666564;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x547972616D697270;
    if (a1 != 5)
    {
      v6 = 0x7261646E6F636573;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x746E6954707061;
    v2 = 0xD000000000000015;
    if (a1 == 3)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000013;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
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
}
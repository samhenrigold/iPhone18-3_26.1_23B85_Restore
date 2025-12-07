uint64_t sub_24EB27280@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductWriteAReview();
  v7 = swift_allocObject();
  result = ProductWriteAReview.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t ContingentOfferDetailPage.__allocating_init(contingentOffer:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v74) = a6;
  v72 = a4;
  v73 = a5;
  v75 = a8;
  v76 = a12;
  v77 = a11;
  v78 = a10;
  v79 = a9;
  v80 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v15 - 8);
  v65 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v61 - v18);
  MEMORY[0x28223BE20](v20);
  v67 = &v61 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  v25 = sub_24F928818();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v61 - v30;
  v32 = swift_allocObject();
  v33 = *v73;
  v69 = a1;
  v70 = a2;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_contingentOffer) = a1;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_artwork) = a2;
  v71 = a3;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_video) = a3;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_mediaOverlayStyle) = v33;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_includeBorderInDarkMode) = v74;
  sub_24E60169C(v79, v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E60169C(v78, v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E60169C(v77, v32 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  v68 = v26;
  v34 = *(v26 + 16);
  v34(v31, v80, v25);
  sub_24E60169C(v76, v24, &qword_27F2218B0, &unk_24F975980);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = 1;
  v34(v28, v31, v25);
  v73 = v24;
  v35 = v24;
  v36 = v67;
  sub_24E60169C(v35, v67, &qword_27F2218B0, &unk_24F975980);
  *(v32 + 16) = 0;
  v34((v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v28, v25);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v75;
  sub_24E60169C(v36, v19, &qword_27F2218B0, &unk_24F975980);
  v37 = sub_24F9285B8();
  v66 = *(v37 - 8);
  v38 = *(v66 + 48);
  v74 = v19;
  if (v38(v19, 1, v37) == 1)
  {

    sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v77, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v78, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v79, &qword_27F223CE8, &unk_24F983FE0);
    v39 = *(v68 + 8);
    v39(v80, v25);
    sub_24E601704(v36, &qword_27F2218B0, &unk_24F975980);
    v39(v28, v25);
    sub_24E601704(v73, &qword_27F2218B0, &unk_24F975980);
    v39(v31, v25);
    v40 = v74;
  }

  else
  {
    v62 = v28;
    v63 = v25;
    v41 = v36;
    v42 = v68;
    v64 = v31;
    v43 = qword_27F2105F0;

    if (v43 != -1)
    {
      swift_once();
    }

    v44 = v38;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v45, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v46 = v81;
    v47 = v66;
    if (v81)
    {
    }

    v48 = *(v47 + 8);
    v48(v74, v37);
    if (!v46)
    {

      sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v77, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v78, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v79, &qword_27F223CE8, &unk_24F983FE0);
      v55 = *(v42 + 8);
      v56 = v63;
      v55(v80, v63);
      sub_24E601704(v41, &qword_27F2218B0, &unk_24F975980);
      v55(v62, v56);
      sub_24E601704(v73, &qword_27F2218B0, &unk_24F975980);
      v55(v64, v56);
      return v32;
    }

    v74 = v48;
    v49 = v65;
    sub_24E60169C(v41, v65, &qword_27F2218B0, &unk_24F975980);
    v50 = v44(v49, 1, v37);
    v51 = v41;
    v52 = v62;
    if (v50 != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
      v57 = v49;
      sub_24E601704(v77, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v78, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v79, &qword_27F223CE8, &unk_24F983FE0);
      v58 = *(v42 + 8);
      v59 = v63;
      v58(v80, v63);
      sub_24E601704(v51, &qword_27F2218B0, &unk_24F975980);
      v58(v52, v59);
      sub_24E601704(v73, &qword_27F2218B0, &unk_24F975980);
      v58(v64, v59);
      v74(v57, v37);
      return v32;
    }

    sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v77, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v78, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v79, &qword_27F223CE8, &unk_24F983FE0);
    v53 = *(v42 + 8);
    v54 = v63;
    v53(v80, v63);
    sub_24E601704(v51, &qword_27F2218B0, &unk_24F975980);
    v53(v52, v54);
    sub_24E601704(v73, &qword_27F2218B0, &unk_24F975980);
    v53(v64, v54);
    v40 = v49;
  }

  sub_24E601704(v40, &qword_27F2218B0, &unk_24F975980);
  return v32;
}

char *ContingentOfferDetailPage.init(contingentOffer:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v69) = a6;
  v67 = a4;
  v68 = a5;
  v70 = a8;
  v71 = a12;
  v72 = a11;
  v73 = a10;
  v74 = a9;
  v75 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v16 - 8);
  v59 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v21);
  v63 = &v56 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  v26 = sub_24F928818();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v56 - v31;
  v33 = *v68;
  v61 = a1;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_contingentOffer) = a1;
  v65 = a2;
  v66 = a3;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_artwork) = a2;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_video) = a3;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_mediaOverlayStyle) = v33;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_includeBorderInDarkMode) = v69;
  sub_24E60169C(v74, v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E60169C(v73, v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E60169C(v72, v12 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  v64 = v27;
  v34 = *(v27 + 16);
  v34(v32, v75, v26);
  sub_24E60169C(v71, v25, &qword_27F2218B0, &unk_24F975980);
  *(v12 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = 1;
  v34(v29, v32, v26);
  v69 = v25;
  v35 = v25;
  v36 = v63;
  sub_24E60169C(v35, v63, &qword_27F2218B0, &unk_24F975980);
  *(v12 + 16) = 0;
  v34((v12 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v29, v26);
  v68 = v12;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v70;
  sub_24E60169C(v36, v20, &qword_27F2218B0, &unk_24F975980);
  v37 = sub_24F9285B8();
  v60 = *(v37 - 8);
  v38 = *(v60 + 48);
  v39 = v20;
  if (v38(v20, 1, v37) == 1)
  {

    sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v72, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v73, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v74, &qword_27F223CE8, &unk_24F983FE0);
    v40 = *(v64 + 8);
    v40(v75, v26);
    sub_24E601704(v36, &qword_27F2218B0, &unk_24F975980);
    v40(v29, v26);
    sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
    v40(v32, v26);
    v41 = v20;
  }

  else
  {
    v42 = v38;
    v62 = v39;
    v56 = v29;
    v57 = v26;
    v43 = v36;
    v44 = v64;
    v58 = v32;
    v45 = qword_27F2105F0;

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v46, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v47 = v76;
    v48 = v57;
    v49 = v60;
    if (v76)
    {
    }

    v50 = v62;
    v62 = *(v49 + 8);
    v62(v50, v37);
    if (!v47)
    {

      sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v72, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v73, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v74, &qword_27F223CE8, &unk_24F983FE0);
      v53 = *(v44 + 8);
      v53(v75, v48);
      sub_24E601704(v43, &qword_27F2218B0, &unk_24F975980);
      v53(v56, v48);
      sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
      v53(v58, v48);
      return v68;
    }

    v51 = v59;
    sub_24E60169C(v43, v59, &qword_27F2218B0, &unk_24F975980);
    if (v42(v51, 1, v37) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v72, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v73, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v74, &qword_27F223CE8, &unk_24F983FE0);
      v54 = *(v44 + 8);
      v54(v75, v48);
      sub_24E601704(v43, &qword_27F2218B0, &unk_24F975980);
      v54(v56, v48);
      sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
      v54(v58, v48);
      v62(v51, v37);
      return v68;
    }

    sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v72, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v73, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v74, &qword_27F223CE8, &unk_24F983FE0);
    v52 = *(v44 + 8);
    v52(v75, v48);
    sub_24E601704(v43, &qword_27F2218B0, &unk_24F975980);
    v52(v56, v48);
    sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
    v52(v58, v48);
    v41 = v51;
  }

  sub_24E601704(v41, &qword_27F2218B0, &unk_24F975980);
  return v68;
}

uint64_t ContingentOfferDetailPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67 = v3;
  v58 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v51 - v7;
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v68 = sub_24F928388();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v59 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  type metadata accessor for ContingentOffer(0);
  v70 = a1;
  sub_24F928398();
  v21 = *(v9 + 16);
  v66 = a2;
  v22 = a2;
  v69 = v8;
  v23 = v21;
  v24 = v9 + 16;
  v21(v13, v22, v8);
  sub_24EB29220(&qword_27F228DA8, type metadata accessor for ContingentOffer, &protocol conformance descriptor for AppPromotion);
  sub_24F929548();
  v64 = v71;
  if (v71)
  {
    v58 = v9;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v25 = v66;
    v26 = v69;
    v23(v13, v66, v69);
    v63 = v24;
    v55 = v17;
    v27 = v23;
    v53 = v23;
    sub_24EB29220(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v28 = v71;
    type metadata accessor for Video(0);
    sub_24F928398();
    v27(v13, v25, v26);
    sub_24EB29220(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
    sub_24F929548();
    v29 = v67;
    *(v67 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_contingentOffer) = v64;
    v30 = v71;
    *(v29 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_artwork) = v28;
    *(v29 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_video) = v30;
    v56 = v30;

    v57 = v28;

    sub_24F928398();
    sub_24EA303C8();
    sub_24F928208();
    v31 = (v65 + 8);
    v32 = *(v65 + 8);
    v33 = v68;
    v32(v20, v68);
    *(v29 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_mediaOverlayStyle) = v71;
    v34 = v55;
    sub_24F928398();
    v35 = sub_24F928278();
    v54 = v32;
    v55 = v31;
    v32(v34, v33);
    *(v29 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_includeBorderInDarkMode) = v35 & 1;
    sub_24F928AD8();
    sub_24F928398();
    v52 = v13;
    v36 = v66;
    v37 = v69;
    v38 = v53;
    v53(v52, v66, v69);
    v39 = v61;
    sub_24F929548();
    v40 = v67;
    sub_24EB29268(v39, v67 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics);
    sub_24F928398();
    v41 = v52;
    v38(v52, v36, v37);
    sub_24F929548();
    sub_24EB29268(v39, v40 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_backButtonActionMetrics);
    v42 = v70;
    sub_24F928398();
    v43 = v66;
    v38(v41, v66, v37);
    sub_24F929548();
    sub_24EB29268(v39, v67 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics);
    v44 = v59;
    v45 = v42;
    (*(v65 + 16))(v59, v42, v68);
    v46 = v60;
    v38(v60, v43, v69);
    v47 = v62;
    v48 = AppPromotionDetailPage.init(deserializing:using:)(v44, v46);
    if (!v47)
    {
      v46 = v48;
    }

    (*(v58 + 8))(v43, v69);
    v54(v45, v68);
  }

  else
  {
    v46 = sub_24F92AC38();
    sub_24EB29220(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v49 = 0x65676E69746E6F63;
    v49[1] = 0xEF726566664F746ELL;
    v49[2] = v58;
    (*(*(v46 - 8) + 104))(v49, *MEMORY[0x277D22530], v46);
    swift_willThrow();
    (*(v9 + 8))(v66, v69);
    (*(v65 + 8))(v70, v68);
    type metadata accessor for ContingentOfferDetailPage(0);
    swift_deallocPartialClassInstance();
  }

  return v46;
}

uint64_t sub_24EB28FC0()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  return sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
}

uint64_t ContingentOfferDetailPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_learnMoreActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_backButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25ContingentOfferDetailPage_closeButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  return v0;
}

uint64_t ContingentOfferDetailPage.__deallocating_deinit()
{
  ContingentOfferDetailPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContingentOfferDetailPage(uint64_t a1)
{
  result = qword_27F228DB0;
  if (!qword_27F228DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB29220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EB29268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24EB292E0(uint64_t a1)
{
  sub_24EB293E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EB293E8(uint64_t a1)
{
  if (!qword_27F228DC0)
  {
    sub_24F928AD8();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F228DC0);
    }
  }
}

uint64_t TapToRate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v49 = sub_24F9285B8();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v38 - v7;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = &v38 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  sub_24F928398();
  v19 = sub_24F928348();
  v21 = v20;
  v40 = v9;
  v22 = *(v9 + 8);
  v22(v18, v8);
  v23 = (v3 + OBJC_IVAR____TtC12GameStoreKit9TapToRate_title);
  *v23 = v19;
  v23[1] = v21;
  sub_24F928398();
  v24 = sub_24F9282C8();
  v48 = v8;
  v22(v15, v8);
  if ((v24 & 0x100000000) != 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  v45 = v3;
  v46 = a1;
  v26 = v3 + OBJC_IVAR____TtC12GameStoreKit9TapToRate_rating;
  *v26 = v25;
  *(v26 + 4) = 0;
  v27 = v42;
  sub_24F928398();
  v28 = v47;
  v29 = v43;
  v38 = *(v47 + 16);
  v38(v43, v50, v49);
  type metadata accessor for RateAction(0);
  v30 = swift_allocObject();
  v31 = v44;
  v32 = RateAction.init(deserializing:using:)(v27, v29);
  if (v31)
  {
    (*(v28 + 8))(v50, v49);
    v22(v46, v48);

    type metadata accessor for TapToRate(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = v22;
    v33 = v46;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit9TapToRate_rateAction) = v32;
    v34 = v39;
    (*(v40 + 16))(v39, v33, v48);
    v35 = v41;
    v36 = v49;
    v38(v41, v50, v49);
    v30 = ProductRatingsAndReviewsComponent.init(deserializing:using:)(v34, v35);
    (*(v47 + 8))(v50, v36);
    v44(v33, v48);
  }

  return v30;
}

uint64_t TapToRate.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit9TapToRate_title);

  return v1;
}

double sub_24EB29990()
{

  return result;
}

uint64_t TapToRate.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return v0;
}

uint64_t TapToRate.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TapToRate(uint64_t a1)
{
  result = qword_27F228DC8;
  if (!qword_27F228DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentModeViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_24EB29C58(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DD8, &qword_24F984158);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DE0, &qword_24F984160);
  MEMORY[0x28223BE20](v22);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DE8, &qword_24F984168);
  MEMORY[0x28223BE20](v9);
  v23 = &v22 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DF0, &qword_24F984170);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (v3 == 2)
  {
    goto LABEL_3;
  }

  v16 = sub_24F9234E8();
  if ((v16 & 1) == 0)
  {
    if (sub_24F9234E8())
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DF8, &qword_24F984178);
      (*(*(v19 - 8) + 16))(v13, a1, v19);
      v20 = &v13[*(v11 + 36)];
      *v20 = 0;
      *(v20 + 4) = 257;
      sub_24E60169C(v13, v8, &qword_27F228DF0, &qword_24F984170);
      goto LABEL_8;
    }

LABEL_3:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DF8, &qword_24F984178);
    (*(*(v14 - 8) + 16))(v6, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_24EB2A07C();
    sub_24EB2A18C();
    return sub_24F924E28();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228DF8, &qword_24F984178);
  (*(*(v17 - 8) + 16))(v13, a1, v17);
  v18 = &v13[*(v11 + 36)];
  *v18 = 0;
  *(v18 + 4) = 1;
  sub_24E60169C(v13, v8, &qword_27F228DF0, &qword_24F984170);
LABEL_8:
  swift_storeEnumTagMultiPayload();
  sub_24EB2A100();
  v21 = v23;
  sub_24F924E28();
  sub_24E60169C(v21, v6, &qword_27F228DE8, &qword_24F984168);
  swift_storeEnumTagMultiPayload();
  sub_24EB2A07C();
  sub_24EB2A18C();
  sub_24F924E28();
  sub_24E601704(v21, &qword_27F228DE8, &qword_24F984168);
  return sub_24E601704(v13, &qword_27F228DF0, &qword_24F984170);
}

unint64_t sub_24EB2A07C()
{
  result = qword_27F228E00;
  if (!qword_27F228E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228DE8, &qword_24F984168);
    sub_24EB2A100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228E00);
  }

  return result;
}

unint64_t sub_24EB2A100()
{
  result = qword_27F228E08;
  if (!qword_27F228E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228DF0, &qword_24F984170);
    sub_24EB2A18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228E08);
  }

  return result;
}

unint64_t sub_24EB2A18C()
{
  result = qword_27F228E10;
  if (!qword_27F228E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228DF8, &qword_24F984178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228E10);
  }

  return result;
}

unint64_t sub_24EB2A1F4()
{
  result = qword_27F228E18;
  if (!qword_27F228E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E20, &unk_24F984180);
    sub_24EB2A07C();
    sub_24EB2A18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228E18);
  }

  return result;
}

void *SponsoredSearchOrganic.init(adamId:assetInformation:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = a2;
  return result;
}

double SponsoredSearchOrganic.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void SponsoredSearchOrganic.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F92C318();
  v5 = sub_24F92C2F8();
  v7 = v6;

  if (v7)
  {
    v8 = sub_24F92C318();
    v9 = [v8 toDictionary];

    if (v9)
    {
      v10 = sub_24F92AE38();

      *a2 = v5;
      a2[1] = v7;
      a2[2] = v10;
      return;
    }

    sub_24F92C318();
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
  }

  else
  {
    sub_24F92C318();
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
  }

  sub_24F92A828();
  swift_willThrow();
}

Swift::Int __swiftcall ProductPresenter.numberOfNonShelfRows(for:)(Swift::Int a1)
{
  v3 = sub_24ED570C8();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v4 = *(v3 + 8 * a1 + 32);

      v5 = *(v4 + 16);

      if (v5 == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_29;
  }

  v15 = MEMORY[0x253052270](a1, v3);

  v16 = *(v15 + 16);
  swift_unknownObjectRelease();
  if (v16 == 2)
  {
LABEL_5:
    v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    if (*(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isMediaExpanded) == 1)
    {
      if (v6)
      {
        v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
      }

      else
      {
        v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
        if (!v7)
        {
          return 0;
        }
      }

      v9 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
      swift_beginAccess();
      v10 = *(v7 + v9);

      if (!(v10 >> 62))
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:

        return v11;
      }

LABEL_29:
      v11 = sub_24F92C738();
      goto LABEL_14;
    }

    if (v6)
    {
      v8 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
    }

    else
    {
      v8 = *(v1 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
      if (!v8)
      {
        return 1;
      }
    }

    v12 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
    swift_beginAccess();
    v13 = *(v8 + v12);

    if (v13 >> 62)
    {
      v11 = sub_24F92C738();
    }

    else
    {
      v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v11)
    {
      return v11;
    }

    return 1;
  }

LABEL_24:

  return sub_24ED58388(a1);
}

double ProductPresenter.data(at:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (sub_24F91FA28() < 2)
  {
    if (qword_27F2106C0 != -1)
    {
      swift_once();
    }

    v6 = sub_24F92AAE8();
    __swift_project_value_buffer(v6, qword_27F39C670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F942000;
    sub_24F9283A8();
    v7 = sub_24F91FA78();
    v27 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
    sub_24F928438();
    sub_24E857CC8(v26);
    sub_24F9283A8();
    v9 = sub_24F91FA28();
    v27 = MEMORY[0x277D83B88];
    v26[0] = v9;
    sub_24F928438();
    sub_24E857CC8(v26);
    sub_24F9283A8();
    sub_24F92A5A8();

    goto LABEL_44;
  }

  v10 = sub_24ED570C8();
  if (v10 >> 62)
  {
    v11 = sub_24F92C738();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_24F91FA18() >= v11)
  {
    goto LABEL_44;
  }

  v12 = sub_24ED570C8();
  v13 = sub_24F91FA18();
  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v12 + 8 * v13 + 32);

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_38;
  }

  v14 = MEMORY[0x253052270](v13, v12);
LABEL_12:

  if (*(v14 + 16) != 2)
  {
    sub_24ED58CEC(a2);

    return result;
  }

  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v15 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v15 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v15)
    {
LABEL_43:

LABEL_44:
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 40) = -256;
      return result;
    }
  }

  v17 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  v12 = *(v15 + v17);

  if (!(v12 >> 62))
  {
    v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      v28 = MEMORY[0x277D84F90];
      sub_24F92C978();
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_38:
  if (!sub_24F92C738())
  {
LABEL_42:

    goto LABEL_43;
  }

  v25 = sub_24F92C738();
  if (!v25)
  {
    goto LABEL_48;
  }

  v18 = v25;
  v28 = MEMORY[0x277D84F90];
  sub_24F92C978();
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

LABEL_23:
  v19 = 0;
  v20 = v12 & 0xC000000000000001;
  do
  {
    if (v20)
    {
      MEMORY[0x253052270](v19, v12);
    }

    else
    {
    }

    ++v19;

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    sub_24F92C958();
  }

  while (v18 != v19);
  for (i = v28; ; i = MEMORY[0x277D84F90])
  {
    v22 = sub_24F91FA08();
    if (v20)
    {
      break;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v12 + 8 * v22 + 32);

      goto LABEL_33;
    }

    __break(1u);
LABEL_48:
    v20 = v12 & 0xC000000000000001;
  }

  v23 = MEMORY[0x253052270](v22, v12);
LABEL_33:

  v24 = *(v3 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_isMediaExpanded);
  *a2 = v23;
  *(a2 + 8) = i;
  *(a2 + 16) = v24;
  *(a2 + 41) = 1;
  return result;
}

unint64_t ProductPresenter.isSelectable(at:)()
{
  v0 = sub_24ED570C8();
  result = sub_24F91FA18();
  if ((v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x253052270](result, v0);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v0 + 8 * result + 32);

LABEL_5:

    v3 = *(v2 + 16);

    return v3 > 2;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ProductPresenter.reloadTopLockup()()
{
  if (sub_24F92CE08())
  {
    return;
  }

  v1 = sub_24ED570C8();
  v2 = v1;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_15:

    return;
  }

LABEL_29:
  v3 = sub_24F92C738();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_5:
  v12 = v0;
  v4 = 0;
  v0 = 0xE500000000000000;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253052270](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    if (*(v5 + 16) <= 1u && *(v5 + 16))
    {
      break;
    }

    v6 = sub_24F92CE08();

    if (v6)
    {
      goto LABEL_20;
    }

    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

LABEL_20:

  if (*(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct))
  {
    v8 = *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v8 = *(v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_sidepackedProduct);
    if (!v8)
    {
      return;
    }
  }

  sub_24ED4E9F0(v8);
  v9 = v12 + OBJC_IVAR____TtC12GameStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(v4, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_24EB2B00C()
{
  v0 = sub_24ED570C8();
  result = sub_24F91FA18();
  if ((v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x253052270](result, v0);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v0 + 8 * result + 32);

LABEL_5:

    v3 = *(v2 + 16);

    return v3 > 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EB2B0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F929158();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EB2B224(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F929158();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24EB2B374(uint64_t a1)
{
  sub_24EB39C98(319, &qword_27F228E38, type metadata accessor for SearchResultsPageViewModel, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_24EB2B580(319, &qword_27F228E40, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_24EB2B580(319, &qword_27F228E48, &unk_27F22E000, &unk_24F984240, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_24EB39CFC(319, &qword_27F218018, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_24E833194();
          if (v5 <= 0x3F)
          {
            type metadata accessor for NetworkConnectionMonitor(319);
            if (v6 <= 0x3F)
            {
              sub_24F929158();
              if (v7 <= 0x3F)
              {
                sub_24EB2B580(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
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
}

void sub_24EB2B580(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24EB2B600@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SearchResultsPageView(0);
  sub_24E60169C(v1 + *(v10 + 56), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E6009C8(v9, a1, &qword_27F215598, &qword_24F945EF0);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EB2B7E8@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SearchResultsPageView(0);
  sub_24E60169C(v1 + *(v10 + 60), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E6009C8(v9, a1, &qword_27F215598, &qword_24F945EF0);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_24EB2B9D0()
{
  v1 = sub_24F925218();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v46 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v4);
  v54 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v43[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v56 = &v43[-v12];
  MEMORY[0x28223BE20](v13);
  v53 = &v43[-v14];
  MEMORY[0x28223BE20](v15);
  v55 = &v43[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v43[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v43[-v21];
  v52 = v0;
  sub_24EB2B600(&v43[-v21]);
  v23 = v2[13];
  v49 = *MEMORY[0x277CE0558];
  v48 = v23;
  v23(v19);
  v47 = v2[7];
  v47(v19, 0, 1, v1);
  v51 = v4;
  v24 = *(v4 + 48);
  sub_24E60169C(v22, v8, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v19, &v8[v24], &qword_27F215598, &qword_24F945EF0);
  v57 = v2;
  v25 = v2[6];
  v26 = v25(v8, 1, v1);
  v50 = v25;
  if (v26 == 1)
  {
    sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    if (v25(&v8[v24], 1, v1) == 1)
    {
      v27 = v8;
LABEL_10:
      sub_24E601704(v27, &qword_27F215598, &qword_24F945EF0);
      return 10.0;
    }
  }

  else
  {
    v28 = v55;
    sub_24E60169C(v8, v55, &qword_27F215598, &qword_24F945EF0);
    if (v25(&v8[v24], 1, v1) != 1)
    {
      v36 = &v8[v24];
      v37 = v46;
      (v57[4])(v46, v36, v1);
      sub_24EB388F4(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v44 = sub_24F92AFF8();
      v38 = v57[1];
      v38(v37, v1);
      sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
      v38(v55, v1);
      sub_24E601704(v8, &qword_27F215598, &qword_24F945EF0);
      result = 10.0;
      if (v44)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    (v57[1])(v28, v1);
  }

  sub_24E601704(v8, &unk_27F254F20, &qword_24F940790);
LABEL_7:
  v29 = v53;
  sub_24EB2B7E8(v53);
  v30 = v56;
  v48(v56, v49, v1);
  v47(v30, 0, 1, v1);
  v31 = *(v51 + 48);
  v32 = v54;
  sub_24E60169C(v29, v54, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v30, &v32[v31], &qword_27F215598, &qword_24F945EF0);
  v33 = v50;
  if (v50(v32, 1, v1) == 1)
  {
    sub_24E601704(v30, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v29, &qword_27F215598, &qword_24F945EF0);
    if (v33(&v32[v31], 1, v1) == 1)
    {
      v27 = v32;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v35 = v45;
  sub_24E60169C(v32, v45, &qword_27F215598, &qword_24F945EF0);
  if (v33(&v32[v31], 1, v1) == 1)
  {
    sub_24E601704(v56, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v29, &qword_27F215598, &qword_24F945EF0);
    (v57[1])(v35, v1);
LABEL_13:
    sub_24E601704(v32, &unk_27F254F20, &qword_24F940790);
    return 20.0;
  }

  v39 = v57;
  v40 = v46;
  (v57[4])(v46, &v32[v31], v1);
  sub_24EB388F4(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v41 = sub_24F92AFF8();
  v42 = v39[1];
  v42(v40, v1);
  sub_24E601704(v56, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v29, &qword_27F215598, &qword_24F945EF0);
  v42(v35, v1);
  sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
  result = 10.0;
  if ((v41 & 1) == 0)
  {
    return 20.0;
  }

  return result;
}

uint64_t sub_24EB2C188@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v77 = sub_24F921738();
  v3 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E50, &qword_24F9842A0);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v72 - v9;
  v10 = type metadata accessor for SearchResultsPageView(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v12;
  v14 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E58, &qword_24F9842A8);
  MEMORY[0x28223BE20](v89);
  v87 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E60, &qword_24F9842B0);
  v17 = *(v16 - 8);
  v79 = v16;
  v80 = v17;
  MEMORY[0x28223BE20](v16);
  v90 = &v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E68, &qword_24F9842B8);
  v20 = *(v19 - 8);
  v82 = v19;
  v83 = v20;
  MEMORY[0x28223BE20](v19);
  v95 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E70, &qword_24F9842C0);
  v84 = *(v22 - 8);
  v85 = v22;
  MEMORY[0x28223BE20](v22);
  v81 = &v72 - v23;
  v93 = type metadata accessor for SearchResultsPageView;
  sub_24EB391A8(v2, v14, type metadata accessor for SearchResultsPageView);
  v24 = *(v11 + 80);
  v94 = v13;
  v25 = (v24 + 16) & ~v24;
  v92 = v24;
  v74 = swift_allocObject();
  v91 = type metadata accessor for SearchResultsPageView;
  sub_24EB39210(v14, v74 + v25, type metadata accessor for SearchResultsPageView);
  v78 = v14;
  sub_24EB391A8(v2, v14, type metadata accessor for SearchResultsPageView);
  v88 = v25;
  v73 = swift_allocObject();
  sub_24EB39210(v14, v73 + v25, type metadata accessor for SearchResultsPageView);
  sub_24F921728();
  v26 = v75;
  v27 = v77;
  sub_24F9271B8();
  (*(v3 + 8))(v5, v27);
  sub_24E60169C(v26, v76, &qword_27F228E50, &qword_24F9842A0);
  type metadata accessor for GameSearchResultsPage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E78, &qword_24F9842E0);
  sub_24F921AA8();
  sub_24F921A58();
  sub_24EB38268();
  sub_24EB388F4(&qword_27F215638, MEMORY[0x277D7EBB0], MEMORY[0x277D7EBA8]);
  sub_24EB388F4(&qword_27F215640, MEMORY[0x277D7EB90], MEMORY[0x277D7EB88]);
  v28 = v87;
  sub_24F921D08();
  sub_24E601704(v26, &qword_27F228E50, &qword_24F9842A0);
  v29 = *(v2 + 8);
  v30 = &v28[*(v89 + 52)];
  *v30 = *v2;
  *(v30 + 1) = v29;
  v31 = *(v2 + 200);
  *&v117[0] = *(v2 + 192);
  *(&v117[0] + 1) = v31;
  v117[1] = *(v2 + 208);

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00, &qword_24FA12D50);
  MEMORY[0x25304CAF0](v107, v32);
  v117[0] = v107[0];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v34 = sub_24E602068(&qword_27F228F08, &qword_27F228E58, &qword_24F9842A8, MEMORY[0x277CE1148]);
  v35 = sub_24E9D38B0();
  v36 = v87;
  sub_24F926AB8();

  sub_24E601704(v36, &qword_27F228E58, &qword_24F9842A8);
  *&v117[0] = *(v2 + 224);
  *(v117 + 8) = *(v2 + 232);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215710, &unk_24F984330);
  MEMORY[0x25304CAF0](v107, v37);
  v38 = v78;
  sub_24EB391A8(v2, v78, v93);
  v39 = v88;
  v40 = swift_allocObject();
  sub_24EB39210(v38, v40 + v39, v91);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22E000, &unk_24F984240);
  *&v117[0] = v89;
  *(&v117[0] + 1) = v33;
  *&v117[1] = v34;
  *(&v117[1] + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_24EB389BC();
  v43 = v79;
  v44 = v90;
  sub_24F926AB8();

  (*(v80 + 8))(v44, v43);
  v45 = *(v2 + 112);
  v46 = *(v2 + 144);
  v114 = *(v2 + 128);
  v115 = v46;
  v47 = *(v2 + 144);
  v116 = *(v2 + 160);
  v48 = *(v2 + 48);
  v49 = *(v2 + 80);
  v110 = *(v2 + 64);
  v111 = v49;
  v50 = *(v2 + 80);
  v51 = *(v2 + 112);
  v112 = *(v2 + 96);
  v113 = v51;
  v52 = *(v2 + 16);
  v107[0] = *v2;
  v107[1] = v52;
  v53 = *(v2 + 48);
  v55 = *v2;
  v54 = *(v2 + 16);
  v108 = *(v2 + 32);
  v109 = v53;
  v104 = v114;
  v105 = v47;
  v106 = *(v2 + 160);
  v100 = v110;
  v101 = v50;
  v102 = v112;
  v103 = v45;
  v96 = v55;
  v97 = v54;
  v98 = v108;
  v99 = v48;
  sub_24EB391A8(v2, v38, v93);
  v56 = v88;
  v57 = swift_allocObject();
  sub_24EB39210(v38, v57 + v56, v91);
  sub_24E7B6680(v107, v117);
  *&v117[0] = v43;
  *(&v117[0] + 1) = v87;
  *&v117[1] = OpaqueTypeConformance2;
  *(&v117[1] + 1) = v42;
  v58 = v81;
  swift_getOpaqueTypeConformance2();
  sub_24EB38B74();
  v59 = v82;
  v60 = v95;
  sub_24F926AB8();

  v117[8] = v104;
  v117[9] = v105;
  v117[10] = v106;
  v117[4] = v100;
  v117[5] = v101;
  v117[6] = v102;
  v117[7] = v103;
  v117[0] = v96;
  v117[1] = v97;
  v117[2] = v98;
  v117[3] = v99;
  sub_24EB38BC8(v117);
  (*(v83 + 8))(v60, v59);
  v61 = *(v2 + 248);
  LOBYTE(v59) = sub_24F925818();
  v62 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v59)
  {
    v62 = sub_24F925848();
  }

  v63 = sub_24EA91914(v62, v61);
  v65 = v64;
  v67 = v66;
  v69 = v68;
  sub_24F925808();
  *&v96 = v63;
  *(&v96 + 1) = v65;
  *&v97 = v67;
  *(&v97 + 1) = v69;
  LOBYTE(v98) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F30, &qword_24F984340);
  v70 = v86;
  sub_24F9252D8();
  return (*(v84 + 32))(v70, v58, v85);
}

uint64_t sub_24EB2CC30(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_24F92B7F8();
  v2[7] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_24EB2CCC8, v4, v3);
}

uint64_t sub_24EB2CCC8()
{
  v1 = v0[6];
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38, &qword_24F984348);
  sub_24F926F38();
  v0[10] = v0[4];
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_24EB2CD94;
  v5 = v0[5];

  return sub_24F7D6014(v5);
}

uint64_t sub_24EB2CD94()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_24EB2CF14;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_24EB2CEB0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24EB2CEB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB2CF14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB2CF84@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a1;
  v107 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F40, &qword_24F984350);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v87 - v5;
  v6 = type metadata accessor for SearchResultsPageView(0);
  v88 = *(v6 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E98, &qword_24F9842F8);
  MEMORY[0x28223BE20](v102);
  v9 = (&v87 - v8);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E90, &qword_24F9842F0);
  v93 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v92 = &v87 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E88, &qword_24F9842E8);
  v95 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v94 = &v87 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F48, &qword_24F984358);
  v98 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v97 = &v87 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F50, &qword_24F984360);
  MEMORY[0x28223BE20](v101);
  v104 = &v87 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F58, &qword_24F984368);
  v91 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v100 = &v87 - v14;
  v15 = type metadata accessor for EmptyState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F60, &qword_24F984370);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v87 - v19;
  v99 = a2;
  v21 = *(a2 + 184);
  *&v109 = *(a2 + 176);
  *(&v109 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38, &qword_24F984348);
  sub_24F926F38();
  v22 = *&v113[0];
  swift_getKeyPath();
  *&v109 = v22;
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);
  sub_24F91FD88();

  v23 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__page;
  swift_beginAccess();
  sub_24E60169C(v22 + v23, v20, &qword_27F228F60, &qword_24F984370);

  v24 = type metadata accessor for GameSearchResultsPage(0);
  if ((*(*(v24 - 8) + 48))(v20, 1, v24) == 1)
  {
    sub_24E601704(v20, &qword_27F228F60, &qword_24F984370);
    *&v109 = 0xD000000000000011;
    *(&v109 + 1) = 0x800000024FA539A0;
    sub_24F92C7F8();
    v111 = 0;
    v110 = 0u;
    v109 = 0u;
    v25 = v15[6];
    v26 = sub_24F92A6D8();
    (*(*(v26 - 8) + 56))(&v17[v25], 1, 1, v26);
    v27 = v15[7];
    v28 = sub_24F929608();
    (*(*(v28 - 8) + 56))(&v17[v27], 1, 1, v28);
    v29._countAndFlagsBits = 0xD000000000000022;
    v29._object = 0x800000024FA539C0;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v31 = localizedString(_:comment:)(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 0x6554686372616573;
    *(inited + 40) = 0xEA00000000006D72;
    v33 = *(v99 + 24);
    *(inited + 48) = *(v99 + 16);
    *(inited + 56) = v33;

    v34 = sub_24E6086DC(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F219F90, &qword_24F955020);
    v35._countAndFlagsBits = 0xD000000000000025;
    v35._object = 0x800000024FA539F0;
    v36 = localizedString(_:with:)(v35, v34);

    v114 = 0;
    memset(v113, 0, sizeof(v113));
    *(v17 + 56) = 0u;
    *(v17 + 9) = 0;
    *(v17 + 40) = 0u;
    sub_24E7D5870(&v109, (v17 + 40));
    v37 = &v17[v15[8]];
    *v37 = 0;
    *(v37 + 1) = 0;
    *&v17[v15[9]] = v31;
    *&v17[v15[10]] = v36;
    *&v17[v15[11]] = 0;
    v38 = &v17[v15[12]];
    *(v38 + 32) = 0;
    *v38 = 0u;
    *(v38 + 16) = 0u;
    sub_24E7D5870(v113, v38);
    v39 = &v17[v15[13]];
    *v39 = 0;
    *(v39 + 1) = 0;
    v17[v15[14]] = 2;
    v17[v15[15]] = 0;
    *&v109 = swift_getKeyPath();
    BYTE8(v109) = 0;
    v99 = sub_24E78AE10();
    v40 = v100;
    sub_24F921D38();

    v41 = v91;
    (*(v91 + 16))(v104, v40, v108);
    swift_storeEnumTagMultiPayload();
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EA0, &qword_24F984300);
    v43 = sub_24E602068(&qword_27F228EA8, &qword_27F228E98, &qword_24F9842F8, MEMORY[0x277CE11A8]);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EB0, &qword_24F984308);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215940, &qword_24F940D00);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215950, &qword_24F940D10);
    v47 = sub_24EB384F4();
    v48 = sub_24E669340();
    v49 = sub_24EB38868();
    *&v109 = v45;
    *(&v109 + 1) = &type metadata for IsDebugFlashBackgroundOnIdentityChangeEnabled;
    *&v110 = v46;
    *(&v110 + 1) = v47;
    v111 = v48;
    v112 = v49;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v109 = v44;
    *(&v109 + 1) = OpaqueTypeConformance2;
    v51 = swift_getOpaqueTypeConformance2();
    *&v109 = v102;
    *(&v109 + 1) = v42;
    *&v110 = v43;
    *(&v110 + 1) = v51;
    v52 = swift_getOpaqueTypeConformance2();
    *&v109 = v103;
    *(&v109 + 1) = v52;
    v53 = swift_getOpaqueTypeConformance2();
    *&v109 = v105;
    *(&v109 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    *&v109 = &type metadata for EmptyStateComponent;
    *(&v109 + 1) = v99;
    swift_getOpaqueTypeConformance2();
    v54 = v108;
    sub_24F924E28();
    (*(v41 + 8))(v100, v54);
    return sub_24EB38C2C(v17, type metadata accessor for EmptyState);
  }

  else
  {
    v56 = *(v20 + 2);

    sub_24EB38C2C(v20, type metadata accessor for GameSearchResultsPage);
    *v9 = sub_24F927618();
    v9[1] = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F68, &qword_24F9843D0);
    *&v109 = v56;
    swift_getKeyPath();
    v58 = v89;
    sub_24EB391A8(v99, v89, type metadata accessor for SearchResultsPageView);
    v59 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v60 = swift_allocObject();
    sub_24EB39210(v58, v60 + v59, type metadata accessor for SearchResultsPageView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D58, &qword_24F978068);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F70, &qword_24F984400);
    sub_24E602068(&qword_27F228F78, &qword_27F225D58, &qword_24F978068, MEMORY[0x277D83980]);
    sub_24EB38D50();
    v61 = sub_24F927228();
    v100 = &v87;
    MEMORY[0x28223BE20](v61);
    sub_24F924C88();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228EA0, &qword_24F984300);
    v63 = sub_24E602068(&qword_27F228EA8, &qword_27F228E98, &qword_24F9842F8, MEMORY[0x277CE11A8]);
    v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EB0, &qword_24F984308);
    v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215940, &qword_24F940D00);
    v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215950, &qword_24F940D10);
    v67 = sub_24EB384F4();
    v68 = sub_24E669340();
    v69 = sub_24EB38868();
    *&v109 = v65;
    *(&v109 + 1) = &type metadata for IsDebugFlashBackgroundOnIdentityChangeEnabled;
    *&v110 = v66;
    *(&v110 + 1) = v67;
    v111 = v68;
    v112 = v69;
    v70 = swift_getOpaqueTypeConformance2();
    *&v109 = v64;
    *(&v109 + 1) = v70;
    v86 = swift_getOpaqueTypeConformance2();
    v71 = v92;
    v72 = v102;
    sub_24F926218();
    sub_24E601704(v9, &qword_27F228E98, &qword_24F9842F8);
    v73 = v96;
    sub_24F925078();
    v74 = sub_24F925088();
    (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
    v75 = sub_24F925818();
    *&v109 = v72;
    *(&v109 + 1) = v62;
    v110 = __PAIR128__(v86, v63);
    v76 = swift_getOpaqueTypeConformance2();
    v77 = v94;
    v78 = v103;
    MEMORY[0x25304C060](v73, v75, v103, v76);
    sub_24E601704(v73, &qword_27F228F40, &qword_24F984350);
    (*(v93 + 8))(v71, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FC8, &unk_24F984420);
    sub_24F9242C8();
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_24F93DE60;
    sub_24F9242B8();
    *&v109 = v78;
    *(&v109 + 1) = v76;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = v97;
    v82 = v105;
    MEMORY[0x25304C1C0](2, v79, v105, v80);

    (*(v95 + 8))(v77, v82);
    v83 = v98;
    v84 = v106;
    (*(v98 + 16))(v104, v81, v106);
    swift_storeEnumTagMultiPayload();
    *&v109 = v82;
    *(&v109 + 1) = v80;
    swift_getOpaqueTypeConformance2();
    v85 = sub_24E78AE10();
    *&v109 = &type metadata for EmptyStateComponent;
    *(&v109 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v83 + 8))(v81, v84);
  }
}

uint64_t sub_24EB2E150@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v66 = sub_24F921738();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - v7;
  v9 = type metadata accessor for GameSearchResultsTab(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchResultsPageView.TabContentView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD0, &qword_24F984468);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v63 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FB0, &qword_24F984418);
  MEMORY[0x28223BE20](v67);
  v82 = &v63 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FA0, &qword_24F984410);
  MEMORY[0x28223BE20](v71);
  v77 = &v63 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F90, &qword_24F984408);
  MEMORY[0x28223BE20](v76);
  v19 = &v63 - v18;
  sub_24EB391A8(a1, v11, type metadata accessor for GameSearchResultsTab);
  v21 = *(a1 + 40);
  v20 = *(a1 + 48);
  v22 = *(a2 + 24);
  v24 = *(a2 + 26);
  v23 = *(a2 + 27);
  v74 = *(a2 + 25);
  v75 = v22;
  v86 = v22;
  v87 = v74;
  v88 = v24;
  v89 = v23;
  v72 = v23;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00, &qword_24FA12D50);
  MEMORY[0x25304CAF0](&v84);
  v79 = v20;
  v80 = v19;
  v78 = v21;
  v73 = v24;
  if (v85)
  {
    if (v21 == v84 && v85 == v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = sub_24F92CE08();
    }
  }

  else
  {
    v25 = 0;
  }

  sub_24E615E00((a2 + 296), &v14[v12[6]]);
  v26 = *(a2 + 42);
  v27 = *(a2 + 23);
  v86 = *(a2 + 22);
  v87 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38, &qword_24F984348);
  sub_24F926F38();
  v28 = *(type metadata accessor for SearchResultsPageView(0) + 52);
  v29 = v12[9];
  v30 = sub_24F929158();
  (*(*(v30 - 8) + 16))(&v14[v29], &a2[v28], v30);
  sub_24EB39210(v11, v14, type metadata accessor for GameSearchResultsTab);
  v14[v12[5]] = v25 & 1;
  *&v14[v12[7]] = v26;
  type metadata accessor for SearchResultsPageViewModel(0);
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);
  sub_24F927378();
  v31 = &v14[v12[10]];
  sub_24F929EB8();
  v84 = sub_24F929EA8();
  sub_24F926F28();
  v32 = v87;
  *v31 = v86;
  *(v31 + 1) = v32;
  sub_24F921728();
  v33 = v65;
  v34 = v66;
  (*(v65 + 16))(v64, v8, v66);
  sub_24F926F28();
  (*(v33 + 8))(v8, v34);
  v35 = &v14[v12[12]];
  LOBYTE(v84) = 0;
  sub_24F926F28();
  v36 = v87;
  *v35 = v86;
  *(v35 + 1) = v36;
  v37 = sub_24F926C28();
  MEMORY[0x28223BE20](v37);
  *(&v63 - 4) = v38;
  *(&v63 - 3) = 0x3FE0000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215960, &unk_24F940D20);
  sub_24EB388F4(&qword_27F228FB8, type metadata accessor for SearchResultsPageView.TabContentView, &unk_24F9844F8);
  sub_24E669340();
  v62 = sub_24EB390CC();
  v39 = v68;
  sub_24F926B08();

  sub_24EB38C2C(v14, type metadata accessor for SearchResultsPageView.TabContentView);
  KeyPath = swift_getKeyPath();
  v41 = v82;
  (*(v69 + 32))(v82, v39, v70);
  v42 = v41 + *(v67 + 36);
  *v42 = KeyPath;
  *(v42 + 8) = 0;
  v44 = v74;
  v43 = v75;
  v86 = v75;
  v87 = v74;
  v46 = v72;
  v45 = v73;
  v88 = v73;
  v89 = v72;
  MEMORY[0x25304CAF0](&v84, v83);
  v47 = v79;
  v48 = v80;
  v50 = v77;
  v49 = v78;
  if (!v85)
  {
    goto LABEL_13;
  }

  if (v78 != v84 || v85 != v79)
  {
    v52 = sub_24F92CE08();

    v51 = 1.0;
    if (v52)
    {
      goto LABEL_14;
    }

LABEL_13:
    v51 = 0.0;
    goto LABEL_14;
  }

  v51 = 1.0;
LABEL_14:
  sub_24E6009C8(v82, v50, &qword_27F228FB0, &qword_24F984418);
  *(v50 + *(v71 + 36)) = v51;
  v86 = v43;
  v87 = v44;
  v88 = v45;
  v89 = v46;
  MEMORY[0x25304CAF0](&v84, v83);
  if (!v85)
  {
    goto LABEL_19;
  }

  if (v49 == v84 && v85 == v47)
  {

    v53 = 2.0;
    goto LABEL_20;
  }

  v54 = sub_24F92CE08();

  v53 = 2.0;
  if ((v54 & 1) == 0)
  {
LABEL_19:
    v53 = 1.0;
  }

LABEL_20:
  sub_24E6009C8(v50, v48, &qword_27F228FA0, &qword_24F984410);
  *(v48 + *(v76 + 36)) = v53;
  v86 = v43;
  v87 = v44;
  v88 = v45;
  v89 = v46;

  MEMORY[0x25304CAF0](&v84, v83);
  if (v85)
  {
    if (v49 == v84 && v85 == v47)
    {

      v55 = 0;
    }

    else
    {
      v56 = sub_24F92CE08();

      v55 = v56 ^ 1;
    }
  }

  else
  {

    v55 = 1;
  }

  v57 = swift_getKeyPath();
  v58 = swift_allocObject();
  *(v58 + 16) = v55 & 1;
  v59 = v81;
  sub_24E6009C8(v48, v81, &qword_27F228F90, &qword_24F984408);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F70, &qword_24F984400);
  v61 = (v59 + *(result + 36));
  *v61 = v57;
  v61[1] = sub_24E600A48;
  v61[2] = v58;
  return result;
}

uint64_t sub_24EB2EAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v65 = sub_24F924C18();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228ED0, &qword_24F984318);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v53 - v6;
  v7 = type metadata accessor for SearchResultsPageView.ToolbarView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215940, &qword_24F940D00);
  MEMORY[0x28223BE20](v58);
  v55 = &v53 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228EB0, &qword_24F984308);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v53 - v11;
  v12 = *(a1 + 16);
  v13 = *(a2 + 200);
  v69 = *(a2 + 192);
  v70 = v13;
  v71 = *(a2 + 208);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00, &qword_24FA12D50);
  sub_24F927198();
  v53 = v74;
  v15 = v75;
  v14 = v76;
  v16 = *(a2 + 184);
  v69 = *(a2 + 176);
  v70 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38, &qword_24F984348);
  sub_24F926F38();
  v17 = *(a2 + 288);
  *&v74 = *(a2 + 280);
  *(&v74 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  sub_24F926F58();
  v18 = v69;
  v19 = v70;
  v20 = v71;
  *&v9[*(v7 + 32)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  *v9 = v12;
  *(v9 + 8) = v53;
  *(v9 + 3) = v15;
  *(v9 + 4) = v14;
  type metadata accessor for SearchResultsPageViewModel(0);
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);
  sub_24F927378();
  v21 = &v9[*(v7 + 28)];
  *v21 = v18;
  *(v21 + 1) = v19;
  *(v21 + 2) = v20;
  v22 = sub_24EB388F4(&qword_27F228EE0, type metadata accessor for SearchResultsPageView.ToolbarView, &unk_24F984548);
  v23 = v54;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228ED8, &unk_24F984320);
  v69 = v7;
  v70 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_24E8F20E4();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EE8, &qword_24F9A6A60);
  v27 = sub_24EB38750();
  v28 = v56;
  v69 = v56;
  v70 = &type metadata for IsDebugFocusOverlayEnabled;
  *&v71 = v26;
  *(&v71 + 1) = OpaqueTypeConformance2;
  v72 = v25;
  v73 = v27;
  *&v53 = MEMORY[0x277CE0E68];
  swift_getOpaqueTypeConformance2();
  v29 = v55;
  sub_24F926B08();
  (*(v57 + 8))(v23, v28);
  sub_24EB38C2C(v9, type metadata accessor for SearchResultsPageView.ToolbarView);
  LOBYTE(v9) = sub_24F925818();
  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228EC8, &qword_24F984310) + 36);
  *v38 = v9;
  *(v38 + 8) = v31;
  *(v38 + 16) = v33;
  *(v38 + 24) = v35;
  *(v38 + 32) = v37;
  *(v38 + 40) = 0;
  LOBYTE(v9) = sub_24F925828();
  sub_24EB2B9D0();
  sub_24F923318();
  v39 = v58;
  v40 = v29 + *(v58 + 36);
  *v40 = v9;
  *(v40 + 8) = v41;
  *(v40 + 16) = v42;
  *(v40 + 24) = v43;
  *(v40 + 32) = v44;
  *(v40 + 40) = 0;
  v66 = sub_24F926C28();
  v67 = 0x3FE0000000000000;
  v68 = v29;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215950, &qword_24F940D10);
  v46 = sub_24EB384F4();
  v47 = sub_24E669340();
  v52 = sub_24EB38868();
  v48 = v59;
  sub_24F926B08();

  sub_24E601704(v29, &qword_27F215940, &qword_24F940D00);
  v49 = v62;
  sub_24F924C08();
  v69 = v39;
  v70 = &type metadata for IsDebugFlashBackgroundOnIdentityChangeEnabled;
  *&v71 = v45;
  *(&v71 + 1) = v46;
  v72 = v47;
  v73 = v52;
  swift_getOpaqueTypeConformance2();
  v50 = v60;
  sub_24F9265B8();
  (*(v63 + 8))(v49, v65);
  return (*(v61 + 8))(v48, v50);
}

void sub_24EB2F230(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (qword_27F211448 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E928);

  oslog = sub_24F9220B8();
  v5 = sub_24F92BD98();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v3 = 1819047278;
      v8 = 0xE400000000000000;
    }

    v9 = sub_24E7620D4(v3, v8, &v11);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_24E5DD000, oslog, v5, "[SRP] Changed selected tab: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }
}

uint64_t sub_24EB2F3B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (qword_27F211448 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E928);
  v5 = sub_24F9220B8();
  v6 = sub_24F92BD98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24E5DD000, v5, v6, "[SRP] Changed friends playing games", v7, 2u);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38, &qword_24F984348);
  sub_24F926F38();
  *(v9 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel_friendsPlayingGames) = v3;
}

uint64_t sub_24EB2F4F8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a2[9];
  v41 = a2[8];
  v42 = v3;
  v43 = a2[10];
  v4 = a2[5];
  v37 = a2[4];
  v38 = v4;
  v5 = a2[7];
  v39 = a2[6];
  v40 = v5;
  v6 = a2[1];
  v33 = *a2;
  v34 = v6;
  v7 = a2[3];
  v35 = a2[2];
  v36 = v7;
  v8 = *(a3 + 184);
  *&v45[0] = *(a3 + 176);
  *(&v45[0] + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F38, &qword_24F984348);
  sub_24F926F38();
  v9 = *&v44[0];
  v10 = *(*&v44[0] + 64);
  v11 = *(*&v44[0] + 96);
  v12 = *(*&v44[0] + 112);
  v44[4] = *(*&v44[0] + 80);
  v44[5] = v11;
  v13 = *(*&v44[0] + 128);
  v14 = *(*&v44[0] + 144);
  v15 = *(*&v44[0] + 176);
  v44[9] = *(*&v44[0] + 160);
  v44[10] = v15;
  v44[7] = v13;
  v44[8] = v14;
  v44[6] = v12;
  v16 = *(*&v44[0] + 16);
  v17 = *(*&v44[0] + 32);
  v18 = *(*&v44[0] + 64);
  v44[2] = *(*&v44[0] + 48);
  v44[3] = v10;
  v44[0] = v16;
  v44[1] = v17;
  v19 = v9[5];
  v20 = v9[7];
  v21 = v9[8];
  v45[5] = v9[6];
  v45[6] = v20;
  v45[3] = v18;
  v45[4] = v19;
  v22 = v9[9];
  v23 = v9[11];
  v45[9] = v9[10];
  v45[10] = v23;
  v45[7] = v21;
  v45[8] = v22;
  v24 = v9[2];
  v45[0] = v9[1];
  v45[1] = v24;
  v45[2] = v9[3];
  v9[3] = v35;
  v25 = v38;
  v9[7] = v39;
  v27 = v42;
  v26 = v43;
  v28 = v41;
  v9[8] = v40;
  v9[9] = v28;
  v9[10] = v27;
  v9[11] = v26;
  v29 = v37;
  v9[4] = v36;
  v9[5] = v29;
  v9[6] = v25;
  v30 = v34;
  v9[1] = v33;
  v9[2] = v30;
  sub_24E7B6680(&v33, v32);
  sub_24E7B6680(v44, v32);
  sub_24EB38BC8(v45);
  if (v44[0] != v9[1] && (sub_24F92CE08() & 1) == 0)
  {
    sub_24F7D98DC();
  }

  return sub_24EB38BC8(v44);
}

uint64_t sub_24EB2F664@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GameSearchResultsTabContent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SearchResultsPageView.TabContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  sub_24F927358();
  v8 = v18;
  swift_getKeyPath();
  v18 = v8;
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);
  sub_24F91FD88();

  v9 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__tabStates;
  swift_beginAccess();
  v10 = *(v8 + v9);

  if (*(v10 + 16) && (v11 = sub_24E76D644(*(v2 + 40), *(v2 + 48)), (v12 & 1) != 0))
  {
    sub_24EB391A8(*(v10 + 56) + *(v5 + 72) * v11, v7, type metadata accessor for GameSearchResultsTabContent);

    v13 = *v7;

    v14 = sub_24EB38C2C(v7, type metadata accessor for GameSearchResultsTabContent);
    MEMORY[0x28223BE20](v14);
    *(&v17 - 2) = v2;
    sub_24E7AAEE8(sub_24EB3ABF8, v13, a1);
  }

  else
  {

    v16 = type metadata accessor for GameSearchResultsGroup(0);
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }
}

uint64_t sub_24EB2F8F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for SearchResultsPageView.TabContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  sub_24F927358();
  v5 = sub_24F7D6E90(*(a2 + 40), *(a2 + 48));
  v7 = v6;

  if (v7)
  {
    if (v3 == v5 && v7 == v4)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_24F92CE08();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_24EB2F9CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GameSearchResultsTabContent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchResultsPageView.TabContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  sub_24F927358();
  v8 = v19;
  swift_getKeyPath();
  v19 = v8;
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);
  sub_24F91FD88();

  v9 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__tabStates;
  swift_beginAccess();
  v10 = *(v8 + v9);

  if (*(v10 + 16) && (v11 = sub_24E76D644(*(v2 + 40), *(v2 + 48)), (v12 & 1) != 0))
  {
    sub_24EB391A8(*(v10 + 56) + *(v5 + 72) * v11, v7, type metadata accessor for GameSearchResultsTabContent);

    v13 = *(v4 + 24);
    v14 = sub_24F928818();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a1, &v7[v13], v14);
    sub_24EB38C2C(v7, type metadata accessor for GameSearchResultsTabContent);
    return (*(v15 + 56))(a1, 0, 1, v14);
  }

  else
  {

    v17 = sub_24F928818();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t sub_24EB2FC78@<X0>(uint64_t a1@<X8>)
{
  v111 = a1;
  v2 = sub_24F924918();
  v109 = *(v2 - 8);
  v110 = v2;
  MEMORY[0x28223BE20](v2);
  v107 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v108 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8, &unk_24F940C00);
  MEMORY[0x28223BE20](v6 - 8);
  v104 = (&v79 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  MEMORY[0x28223BE20](v8 - 8);
  OpaqueTypeConformance2 = &v79 - v9;
  v82 = type metadata accessor for SearchResultsPageView.TabContentView(0);
  v10 = *(v82 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v82);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E50, &qword_24F9842A0);
  MEMORY[0x28223BE20](v16 - 8);
  v91 = &v79 - v17;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290A8, &qword_24F9846A8);
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v79 - v18;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290B0, &qword_24F9846B0);
  v88 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v83 = &v79 - v19;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290B8, &qword_24F9846B8);
  v97 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v113 = &v79 - v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290C0, &qword_24F9846C0);
  v99 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v93 = &v79 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290C8, &qword_24F9846C8);
  MEMORY[0x28223BE20](v92);
  v101 = &v79 - v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290D0, &qword_24F9846D0);
  MEMORY[0x28223BE20](v98);
  v100 = &v79 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290D8, &qword_24F9846D8);
  MEMORY[0x28223BE20](v95);
  v106 = &v79 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);
  sub_24F926F58();
  sub_24EB391A8(v1, v15, type metadata accessor for SearchResultsPageView.TabContentView);
  v25 = *(v10 + 80);
  v85 = ~v25;
  v26 = (v25 + 16) & ~v25;
  v105 = v11;
  v27 = (v11 + v26);
  v90 = swift_allocObject();
  sub_24EB39210(v15, v90 + v26, type metadata accessor for SearchResultsPageView.TabContentView);
  v112 = v15;
  v89 = type metadata accessor for SearchResultsPageView.TabContentView;
  sub_24EB391A8(v1, v15, type metadata accessor for SearchResultsPageView.TabContentView);
  v80 = swift_allocObject();
  v81 = type metadata accessor for SearchResultsPageView.TabContentView;
  sub_24EB39210(v15, v80 + v26, type metadata accessor for SearchResultsPageView.TabContentView);
  sub_24EB391A8(v1, v12, type metadata accessor for SearchResultsPageView.TabContentView);
  v28 = swift_allocObject();
  sub_24EB39210(v12, v28 + v26, type metadata accessor for SearchResultsPageView.TabContentView);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_24EB3A374;
  *(v29 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290E0, &qword_24F9846F0);
  v79 = sub_24F921AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290E8, &qword_24F9846F8);
  sub_24E602068(&qword_27F2290F0, &qword_27F2290E0, &qword_24F9846F0, MEMORY[0x277CDD6E0]);
  sub_24EB388F4(&qword_27F215638, MEMORY[0x277D7EBB0], MEMORY[0x277D7EBA8]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2290F8, &qword_24F984700);
  v31 = sub_24EB3A3A0();
  v116 = v30;
  v117 = v31;
  v32 = v1;
  swift_getOpaqueTypeConformance2();
  v33 = v82;
  v34 = v84;
  sub_24F921D08();
  LOBYTE(v116) = *(v32 + *(v33 + 20));
  LODWORD(v15) = v116;
  v35 = v112;
  sub_24EB391A8(v32, v112, v89);
  v90 = v25;
  v36 = v83;
  v89 = v27;
  v37 = swift_allocObject();
  v91 = v26;
  sub_24EB39210(v35, v37 + v26, v81);
  v38 = sub_24E602068(&qword_27F229178, &qword_27F2290A8, &qword_24F9846A8, MEMORY[0x277D7ECE0]);
  v39 = MEMORY[0x277D839C8];
  v40 = v86;
  sub_24F926AB8();

  (*(v87 + 8))(v34, v40);
  if (v15 == 1)
  {
    v41 = OpaqueTypeConformance2;
    sub_24EB2F9CC(OpaqueTypeConformance2);
  }

  else
  {
    v42 = sub_24F928818();
    v41 = OpaqueTypeConformance2;
    (*(*(v42 - 8) + 56))(OpaqueTypeConformance2, 1, 1, v42);
  }

  v43 = (v32 + *(v33 + 40));
  v45 = *v43;
  v44 = v43[1];
  v116 = v45;
  v117 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215810, &unk_24F9D5560);
  sub_24F926F38();
  v46 = v104;
  sub_24F921B38();
  v47 = sub_24F921B48();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v116 = v40;
  v117 = MEMORY[0x277D839B0];
  v118 = v38;
  v119 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v96;
  sub_24F925E58();

  sub_24E601704(v46, &qword_27F2157E8, &unk_24F940C00);
  sub_24E601704(v41, &qword_27F2157F0, &qword_24F9846A0);
  (*(v88 + 8))(v36, v48);
  v104 = type metadata accessor for SearchResultsPageView.TabContentView;
  v49 = v112;
  sub_24EB391A8(v32, v112, type metadata accessor for SearchResultsPageView.TabContentView);
  sub_24F92B7F8();
  v50 = sub_24F92B7E8();
  v51 = v32;
  v52 = (v90 + 32) & v85;
  v53 = swift_allocObject();
  v54 = MEMORY[0x277D85700];
  *(v53 + 16) = v50;
  *(v53 + 24) = v54;
  v105 = type metadata accessor for SearchResultsPageView.TabContentView;
  sub_24EB39210(v49, v53 + v52, type metadata accessor for SearchResultsPageView.TabContentView);
  v55 = sub_24F92B7E8();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v54;
  sub_24F9271A8();
  v114 = v48;
  v115 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v57 = v93;
  v58 = v102;
  v59 = v113;
  sub_24F925EA8();

  (*(v97 + 8))(v59, v58);
  v60 = v104;
  sub_24EB391A8(v51, v49, v104);
  v61 = swift_allocObject();
  v62 = v91;
  v63 = v105;
  sub_24EB39210(v49, &v91[v61], v105);
  v64 = v101;
  (*(v99 + 32))(v101, v57, v103);
  v65 = (v64 + *(v92 + 36));
  *v65 = sub_24EB3AB7C;
  v65[1] = v61;
  v65[2] = 0;
  v65[3] = 0;
  sub_24EB391A8(v51, v49, v60);
  v66 = swift_allocObject();
  sub_24EB39210(v49, &v62[v66], v63);
  v67 = v100;
  sub_24E6009C8(v64, v100, &qword_27F2290C8, &qword_24F9846C8);
  v68 = (v67 + *(v98 + 36));
  *v68 = 0;
  v68[1] = 0;
  v68[2] = sub_24EB3AB84;
  v68[3] = v66;
  v70 = *(v51 + 40);
  v69 = *(v51 + 48);
  v71 = v106;
  sub_24E6009C8(v67, v106, &qword_27F2290D0, &qword_24F9846D0);
  v72 = (v71 + *(v95 + 52));
  *v72 = v70;
  v72[1] = v69;

  v73 = v108;
  sub_24F924908();
  v75 = v109;
  v74 = v110;
  (*(v109 + 16))(v107, v73, v110);
  sub_24EB388F4(&qword_27F229180, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v76 = sub_24F923958();
  (*(v75 + 8))(v73, v74);
  v77 = v111;
  sub_24E6009C8(v71, v111, &qword_27F2290D8, &qword_24F9846D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229188, &qword_24F984740);
  *(v77 + *(result + 36)) = v76;
  return result;
}

uint64_t sub_24EB30BC8(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229190, &qword_24F984778);
  v2[4] = swift_task_alloc();
  sub_24F92B7F8();
  v2[5] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_24EB30C98, v4, v3);
}

uint64_t sub_24EB30C98()
{
  v1 = v0[3];
  if (*(v1 + *(type metadata accessor for SearchResultsPageView.TabContentView(0) + 20)) == 1)
  {
    v2 = v0[4];
    sub_24EB2F664(v2);
    v3 = type metadata accessor for GameSearchResultsGroup(0);
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
    {
      v4 = v0[3];
      sub_24E601704(v0[4], &qword_27F229190, &qword_24F984778);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
      sub_24F927358();
      v0[8] = v0[2];
      v5 = *(v4 + 40);
      v6 = *(v4 + 48);
      v7 = swift_task_alloc();
      v0[9] = v7;
      *v7 = v0;
      v7[1] = sub_24EB30E58;

      return sub_24F7D74C0(v5, v6);
    }

    v9 = v0[4];

    sub_24E601704(v9, &qword_27F229190, &qword_24F984778);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24EB30E58()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_24EB30FE0;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_24EB30F74;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24EB30F74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB30FE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB3105C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  v19 = sub_24F921CB8();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290F8, &qword_24F984700);
  MEMORY[0x28223BE20](v18);
  v13 = &v17 - v12;
  v14 = sub_24E6A4C1C();
  sub_24F924B68();
  v24 = a1;
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229120, &unk_24F984710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8, &unk_24F94D3F0);
  v28 = &type metadata for GameOverlayViewPredicate;
  v29 = v14;
  swift_getOpaqueTypeConformance2();
  sub_24EB3A51C();
  sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
  sub_24F927568();
  v15 = v19;
  (*(v9 + 104))(v11, *MEMORY[0x277D7ECB8], v19);
  sub_24EB3A3A0();
  sub_24F925E38();
  (*(v9 + 8))(v11, v15);
  return sub_24E601704(v13, &qword_27F2290F8, &qword_24F984700);
}

uint64_t sub_24EB31364@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31[1] = a3;
  v31[2] = a4;
  v32 = a2;
  v37 = a5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8, &unk_24F94D3F0);
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = v31 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2291B0, &qword_24F984798);
  MEMORY[0x28223BE20](v35);
  v9 = v31 - v8;
  v10 = type metadata accessor for SearchResultsPageView.TabContentView(0);
  v31[0] = *(v10 - 8);
  v11 = *(v31[0] + 64);
  MEMORY[0x28223BE20](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229128, &unk_24FA27BA0);
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2291B8, &qword_24F9847A0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v16 = v31 - v15;
  swift_getErrorValue();
  if (sub_24F6A92A4(v43, v44))
  {
    sub_24F6A94D4(v14);
    v17 = v32;
    v18 = *(v32 + *(v10 + 28));
    swift_getKeyPath();
    v39 = v18;
    sub_24EB388F4(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
    sub_24F91FD88();

    LOBYTE(v39) = *(v18 + 16) < 2u;
    sub_24EB391A8(v17, v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.TabContentView);
    v19 = (*(v31[0] + 80) + 16) & ~*(v31[0] + 80);
    v20 = swift_allocObject();
    sub_24EB39210(v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for SearchResultsPageView.TabContentView);
    v21 = sub_24EB3A624();
    v22 = MEMORY[0x277D839B0];
    v23 = MEMORY[0x277D839C8];
    sub_24F926AB8();

    sub_24E601704(v14, &qword_27F229128, &unk_24FA27BA0);
    v24 = v34;
    v25 = v36;
    (*(v34 + 16))(v9, v16, v36);
    swift_storeEnumTagMultiPayload();
    v39 = v12;
    v40 = v22;
    v41 = v21;
    v42 = v23;
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    sub_24F924E28();
    return (*(v24 + 8))(v16, v25);
  }

  else
  {
    v27 = a1;

    sub_24F921A18();
    v28 = v33;
    v29 = v38;
    (*(v33 + 16))(v9, v7, v38);
    swift_storeEnumTagMultiPayload();
    v30 = sub_24EB3A624();
    v39 = v12;
    v40 = MEMORY[0x277D839B0];
    v41 = v30;
    v42 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    sub_24F924E28();
    return (*(v28 + 8))(v7, v29);
  }
}

void sub_24EB3191C(_BYTE *a1, _BYTE *a2)
{
  v4 = sub_24F921738();
  MEMORY[0x28223BE20](v4 - 8);
  if ((*a1 & 1) != 0 || !*a2)
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E7F0);
    v12 = sub_24F9220B8();
    v10 = sub_24F92BDD8();
    if (os_log_type_enabled(v12, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v10, "Network connectivity changed but a refresh is not required.", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E7F0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Network connectivity changed from offline to online for SearchResults, refreshing", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    type metadata accessor for SearchResultsPageView.TabContentView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);
    sub_24F926F38();
    sub_24F921718();
    sub_24F926F48();
  }
}

uint64_t sub_24EB31B80(uint64_t a1)
{
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229198, &unk_24F984780);
  sub_24EB3AC20();
  return sub_24F923438();
}

uint64_t sub_24EB31C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229190, &qword_24F984778);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for GameSearchResultsGroup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24EB2F664(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F229190, &qword_24F984778);
    v15 = 1;
  }

  else
  {
    sub_24EB39210(v10, v14, type metadata accessor for GameSearchResultsGroup);
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v22 = a2;
    v18 = *v14;
    v19 = v14[1];
    sub_24E60169C((v14 + 4), v23, &qword_27F225D38, &qword_24FA27B20);
    sub_24E612C80(v23, (v7 + 4));
    v20 = type metadata accessor for SearchResultsPageView.TabContentView(0);
    sub_24E615E00(a1 + *(v20 + 24), (v7 + 9));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
    sub_24F927358();
    *v7 = v17;
    v7[1] = v16;
    v7[2] = v18;
    v7[3] = v19;
    type metadata accessor for SearchResultsPageViewModel(0);
    sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);
    a2 = v22;
    sub_24F927378();
    sub_24EB38C2C(v14, type metadata accessor for GameSearchResultsGroup);
    sub_24EB39210(v7, a2, type metadata accessor for SearchResultsPageView.SearchGroupView);
    v15 = 0;
  }

  return (*(v5 + 56))(a2, v15, 1, v4);
}

uint64_t sub_24EB31F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24F921738();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229190, &qword_24F984778);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  result = type metadata accessor for SearchResultsPageView.TabContentView(0);
  if (*(a3 + *(result + 20)) == 1)
  {
    sub_24EB2F664(v7);
    v9 = type metadata accessor for GameSearchResultsGroup(0);
    v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
    result = sub_24E601704(v7, &qword_27F229190, &qword_24F984778);
    if (v10 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);
      sub_24F926F38();
      sub_24F921718();
      return sub_24F926F48();
    }
  }

  return result;
}

void *sub_24EB320D0@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for SearchResultsPageView.TabContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  result = sub_24F926F38();
  if (v7 == 1)
  {
    v6 = *(a1 + *(v4 + 20));
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_24EB32168(uint64_t a1, char a2)
{
  type metadata accessor for SearchResultsPageView.TabContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

uint64_t sub_24EB321E0@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  type metadata accessor for SearchResultsPageView.SearchGroupView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  sub_24F927358();
  swift_getKeyPath();
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);
  sub_24F91FD88();

  v7 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__groupStates;
  swift_beginAccess();
  v8 = *(v17 + v7);

  if (*(v8 + 16))
  {
    v9 = sub_24E76D9B8(v4, v3, v6, v5);
    v11 = v10;

    if (v11)
    {
      v12 = *(v8 + 56);
      v13 = type metadata accessor for PaginatedShelfContent(0);
      v14 = *(v13 - 8);
      sub_24EB391A8(v12 + *(v14 + 72) * v9, a1, type metadata accessor for PaginatedShelfContent);

      return (*(v14 + 56))(a1, 0, 1, v13);
    }
  }

  else
  {
  }

  v16 = type metadata accessor for PaginatedShelfContent(0);
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

void *sub_24EB3243C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223258, &qword_24F984A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for PaginatedShelfContent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EB321E0(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24E601704(v3, &qword_27F223258, &qword_24F984A50);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_24EB39210(v3, v7, type metadata accessor for PaginatedShelfContent);
    type metadata accessor for SearchResultsPageView.SearchGroupView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
    sub_24F927358();
    v9 = sub_24F7DD17C(v7, *(v0 + 16), *(v0 + 24));

    sub_24EB38C2C(v7, type metadata accessor for PaginatedShelfContent);
    return v9;
  }
}

uint64_t sub_24EB32610@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0, &qword_24F95E4A0);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229248, &qword_24F984910);
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229250, &qword_24F984918);
  MEMORY[0x28223BE20](v54);
  v55 = &v46 - v6;
  v7 = sub_24F921738();
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E50, &qword_24F9842A0);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v46 - v13;
  v14 = type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229258, &unk_24F984920);
  MEMORY[0x28223BE20](v53);
  v52 = &v46 - v18;
  sub_24E615E00(v1 + 32, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213818, &unk_24F974CF0);
  if (swift_dynamicCast())
  {
    v63[0] = v58;
    v63[1] = v59;
    v64 = v60;
    sub_24EB391A8(v1, &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.SearchGroupView);
    sub_24EB3BA60(v63, v61);
    v19 = *(v15 + 80);
    v48 = v3;
    v20 = (v19 + 16) & ~v19;
    v47 = v1;
    v46 = v7;
    v21 = swift_allocObject();
    sub_24EB39210(v17, v21 + v20, type metadata accessor for SearchResultsPageView.SearchGroupView);
    v22 = v21 + ((v20 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
    v23 = v61[1];
    *v22 = v61[0];
    *(v22 + 16) = v23;
    *(v22 + 32) = v62;
    sub_24EB391A8(v1, v17, type metadata accessor for SearchResultsPageView.SearchGroupView);
    v24 = swift_allocObject();
    sub_24EB39210(v17, v24 + v20, type metadata accessor for SearchResultsPageView.SearchGroupView);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_24EB3BCE8;
    *(v25 + 24) = v24;
    sub_24F921728();
    v26 = v51;
    v27 = v46;
    sub_24F9271B8();
    (*(v49 + 8))(v9, v27);
    sub_24E60169C(v26, v50, &qword_27F228E50, &qword_24F9842A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229278, &qword_24F984978);
    sub_24F921AA8();
    sub_24F921A58();
    sub_24E602068(&qword_27F229280, &qword_27F229278, &qword_24F984978, MEMORY[0x277CDF340]);
    sub_24EB388F4(&qword_27F215638, MEMORY[0x277D7EBB0], MEMORY[0x277D7EBA8]);
    sub_24EB388F4(&qword_27F215640, MEMORY[0x277D7EB90], MEMORY[0x277D7EB88]);
    v28 = v52;
    sub_24F921D08();
    sub_24E601704(v26, &qword_27F228E50, &qword_24F9842A0);
    v29 = v47[1];
    v30 = v47[2];
    v31 = v47[3];
    v32 = (v28 + *(v53 + 52));
    *v32 = *v47;
    v32[1] = v29;
    v32[2] = v30;
    v32[3] = v31;
    sub_24E60169C(v28, v55, &qword_27F229258, &unk_24F984920);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F229268, &qword_27F229258, &unk_24F984920, MEMORY[0x277CE1148]);
    sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);

    sub_24F924E28();
    sub_24E601704(v28, &qword_27F229258, &unk_24F984920);
    return sub_24EB3BE00(v63);
  }

  else
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    sub_24E601704(&v58, &qword_27F229260, &qword_24F984930);
    sub_24E615E00(v1 + 32, v63);
    sub_24E615E00(v1 + 72, v61);
    sub_24E615E00(v63, &v58);
    sub_24E615E00(v61, v57);
    v34 = v3;
    v35 = *(v3 + 68);
    *&v5[v35] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8, &qword_24F984960);
    swift_storeEnumTagMultiPayload();
    v5[v34[13]] = 0;
    v52 = v2;
    v36 = __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
    v37 = MEMORY[0x28223BE20](v36);
    (*(v39 + 16))(&v46 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
    sub_24F928D38();
    v40 = &v5[v34[14]];
    *v40 = 0;
    v40[8] = 0;
    sub_24E615E00(v57, &v5[v34[15]]);
    v41 = &v5[v34[16]];
    *v41 = sub_24F78343C;
    v41[1] = 0;
    v42 = __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
    v43 = MEMORY[0x28223BE20](v42);
    (*(v45 + 16))(&v46 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
    type metadata accessor for GSKShelf(0);
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
    sub_24F9217C8();
    sub_24F926F28();
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(&v58);
    sub_24E60169C(v5, v55, &qword_27F229248, &qword_24F984910);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F229268, &qword_27F229258, &unk_24F984920, MEMORY[0x277CE1148]);
    sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);
    sub_24F924E28();
    return sub_24E601704(v5, &qword_27F229248, &qword_24F984910);
  }
}

uint64_t sub_24EB33140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  sub_24F92B7F8();
  v3[5] = sub_24F92B7E8();
  v5 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EB331D8, v5, v4);
}

uint64_t sub_24EB331D8()
{
  v1 = v0[4];
  v2 = v0[3];

  type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  sub_24F927358();
  sub_24F7D8884(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EB33290(uint64_t a1)
{
  v1 = sub_24F925068();
  MEMORY[0x28223BE20](v1);
  sub_24F924C88();
  sub_24EB388F4(&qword_27F2150C0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_24F92D1D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229288, &qword_24F984980);
  sub_24EB3BE5C();
  return sub_24F9233F8();
}

uint64_t sub_24EB333C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v3 = type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292B8, &unk_24F984998);
  MEMORY[0x28223BE20](v6);
  v7 = sub_24EB3243C();
  v12[1] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2165E8, &qword_24F942600);
  sub_24E602068(&qword_27F2292C0, &qword_27F2165E8, &qword_24F942600, MEMORY[0x277D83980]);
  sub_24F921BA8();
  swift_getKeyPath();
  sub_24EB391A8(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.SearchGroupView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_24EB39210(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for SearchResultsPageView.SearchGroupView);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_24EB3C0B8;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292A0, &qword_24F984988);
  sub_24E602068(&qword_27F2292C8, &qword_27F2292B8, &unk_24F984998, MEMORY[0x277D7EC38]);
  sub_24EB388F4(&qword_27F21BCA0, MEMORY[0x277D224C0], MEMORY[0x277D224D0]);
  sub_24EB3BEE0();
  return sub_24F927228();
}

uint64_t sub_24EB336C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v52 = a1;
  v53 = a5;
  v7 = type metadata accessor for GSKShelf(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292B0, &qword_24F984990);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292D8, &unk_24F9849E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  sub_24EB391A8(a3, &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.SearchGroupView);
  v20 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v21 = swift_allocObject();
  v22 = a2;
  sub_24EB39210(&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SearchResultsPageView.SearchGroupView);
  v23 = *(v51 + 16) - 1;
  v24 = *(a2 + *(v8 + 68));
  if (*(v24 + 16))
  {
    sub_24E615E00(v24 + 32, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    v25 = type metadata accessor for MediaCard(0);
    v26 = swift_dynamicCast();
    (*(*(v25 - 8) + 56))(v16, v26 ^ 1u, 1, v25);
  }

  else
  {
    v25 = type metadata accessor for MediaCard(0);
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  }

  type metadata accessor for MediaCard(0);
  (*(*(v25 - 8) + 48))(v16, 1, v25);
  sub_24E601704(v16, &qword_27F2292D8, &unk_24F9849E0);
  sub_24EB391A8(v22, v10, type metadata accessor for GSKShelf);
  v27 = 0;
  v28 = 0;
  v29 = v52;
  if (v23 == v52)
  {

    v27 = sub_24EB3C2E0;
    v28 = v21;
  }

  v30 = &v13[v11[14]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v13[v11[15]];
  v54 = 0;
  sub_24F926F28();
  v32 = v56;
  *v31 = v55[0];
  *(v31 + 1) = v32;
  v33 = v11[16];
  *&v13[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58, &unk_24F9C4F00);
  swift_storeEnumTagMultiPayload();
  *v13 = 0;
  sub_24E64346C(&v13[v11[9]]);
  sub_24EB38C2C(v10, type metadata accessor for GSKShelf);
  v34 = &v13[v11[10]];
  *v34 = v29;
  v34[8] = 0;
  v35 = &v13[v11[11]];
  *v35 = CGSizeMake;
  v35[1] = 0;
  v36 = &v13[v11[12]];
  *v36 = v27;
  v36[1] = v28;
  v37 = &v13[v11[13]];
  *v37 = 0;
  v37[1] = 0;
  v38 = sub_24F925828();
  sub_24F923318();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = v53;
  sub_24E6009C8(v13, v53, &qword_27F2292B0, &qword_24F984990);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292A0, &qword_24F984988);
  v49 = v47 + *(result + 36);
  *v49 = v38;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  return result;
}

double sub_24EB33BD8(uint64_t *a1)
{
  type metadata accessor for SearchResultsPageView.SearchGroupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  sub_24F927358();
  sub_24F7D8E9C(*a1, a1[1], a1[2], a1[3]);

  return result;
}

uint64_t sub_24EB33C44@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SearchResultsPageView.ToolbarView(0);
  sub_24E60169C(v1 + *(v10 + 32), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E6009C8(v9, a1, &qword_27F215598, &qword_24F945EF0);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EB33E30()
{
  v0 = sub_24F925218();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_24EB33C44((&v23 - v14));
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_24E60169C(v15, v6, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v12, &v6[v16], &qword_27F215598, &qword_24F945EF0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_24E60169C(v6, v9, &qword_27F215598, &qword_24F945EF0);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_24EB388F4(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v21 = sub_24F92AFF8();
      v22 = *(v1 + 8);
      v22(v20, v0);
      sub_24E601704(v12, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v15, &qword_27F215598, &qword_24F945EF0);
      v22(v9, v0);
      sub_24E601704(v6, &qword_27F215598, &qword_24F945EF0);
      if (v21)
      {
        return sub_24F927628();
      }

      return sub_24F927618();
    }

    sub_24E601704(v12, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v15, &qword_27F215598, &qword_24F945EF0);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_24E601704(v6, &unk_27F254F20, &qword_24F940790);
    return sub_24F927618();
  }

  sub_24E601704(v12, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v15, &qword_27F215598, &qword_24F945EF0);
  if (v17(&v6[v16], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v6, &qword_27F215598, &qword_24F945EF0);
  return sub_24F927628();
}

uint64_t sub_24EB34278@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229028, &qword_24F984598);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229030, &qword_24F9845A0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v43[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229038, &qword_24F9845A8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v43[-1] - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229040, &qword_24F9845B0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v43[-1] - v15;
  *v4 = sub_24F9249A8();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229048, &qword_24F9845B8);
  sub_24EB3466C(v1, &v4[*(v17 + 44)]);
  sub_24EB33E30();
  sub_24F9242E8();
  sub_24E6009C8(v4, v8, &qword_27F229028, &qword_24F984598);
  v18 = &v8[*(v6 + 44)];
  v19 = v49;
  *(v18 + 4) = v48;
  *(v18 + 5) = v19;
  *(v18 + 6) = v50;
  v20 = v45;
  *v18 = v44;
  *(v18 + 1) = v20;
  v21 = v47;
  *(v18 + 2) = v46;
  *(v18 + 3) = v21;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = &v12[*(v10 + 44)];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *(v24 + 3) = KeyPath;
  v24[32] = 0;
  *(v24 + 5) = v23;
  v25 = type metadata accessor for PageMarginsViewModifier(0);
  *(v24 + 7) = 0;
  *(v24 + 8) = 0;
  *(v24 + 6) = 0;
  v24[72] = 0;
  v26 = *(v25 + 36);
  *&v24[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  sub_24E6009C8(v8, v12, &qword_27F229030, &qword_24F9845A0);
  v27 = sub_24F927618();
  v29 = v28;
  v30 = &v16[*(v14 + 44)];
  sub_24EB34CF0(v1, v30);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229050, &unk_24F984640) + 36));
  *v31 = v27;
  v31[1] = v29;
  v32 = sub_24E6009C8(v12, v16, &qword_27F229038, &qword_24F9845A8);
  v33 = MEMORY[0x25304D060](v32, 0.5, 1.0, 0.0);
  v34 = (v1 + *(type metadata accessor for SearchResultsPageView.ToolbarView(0) + 28));
  v35 = v34[1];
  v36 = v34[2];
  v43[1] = *v34;
  v43[2] = v35;
  v43[3] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058, &qword_24F99DF20);
  MEMORY[0x25304CAF0](v43, v37);
  v38 = v43[0];
  v39 = v42;
  sub_24E6009C8(v16, v42, &qword_27F229040, &qword_24F9845B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229060, &qword_24F984650);
  v41 = (v39 + *(result + 36));
  *v41 = v33;
  v41[1] = v38;
  return result;
}

uint64_t sub_24EB3466C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229088, &qword_24F984678);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v50 = (v42 - v3);
  v47 = type metadata accessor for SearchResultsPageView.FilterMenu(0);
  MEMORY[0x28223BE20](v47);
  v49 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229090, &qword_24F984680);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = v42 - v10;
  v11 = sub_24F925A38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchResultsPageView.TabsToolbarView(0);
  MEMORY[0x28223BE20](v15);
  v53 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v42 - v18;
  *&v51 = a1;
  v20 = *a1;
  v21 = a1[2];
  v22 = a1[3];
  v23 = a1[4];
  v46 = a1[1];
  v60 = v46;
  v61 = v21;
  v45 = v21;
  v44 = v22;
  v62 = v22;
  v63 = v23;
  v43 = v23;

  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00, &qword_24FA12D50);
  sub_24F927198();
  v24 = v58;
  v25 = v59;
  *v19 = v20;
  *(v19 + 8) = v24;
  *(v19 + 24) = v25;
  *(v19 + 5) = 0;
  v60 = 0x402A000000000000;
  v26 = *MEMORY[0x277CE0A58];
  v27 = *(v12 + 104);
  v27(v14, v26, v11);
  sub_24E66ED98();
  sub_24F9237B8();
  v60 = 0x4042000000000000;
  v27(v14, v26, v11);
  v28 = v52;
  sub_24F9237B8();
  sub_24EB33E30();
  sub_24F927628();
  v29 = 1;
  if (sub_24F9275E8())
  {
    type metadata accessor for SearchResultsPageView.ToolbarView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
    sub_24F927358();
    v60 = v46;
    v61 = v45;
    v62 = v44;
    v63 = v43;
    sub_24F927198();
    v51 = v58;
    v30 = v59;
    type metadata accessor for SearchResultsPageViewModel(0);
    sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);
    v31 = v48;
    sub_24F927378();
    v32 = v47;
    v33 = (v31 + *(v47 + 20));
    *v33 = v51;
    v33[1] = v30;
    *(v31 + *(v32 + 24)) = 0;
    v34 = v49;
    sub_24EB391A8(v31, v49, type metadata accessor for SearchResultsPageView.FilterMenu);
    v35 = v50;
    *v50 = 0;
    *(v35 + 8) = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2290A0, &unk_24F984690);
    sub_24EB391A8(v34, v35 + *(v36 + 48), type metadata accessor for SearchResultsPageView.FilterMenu);
    sub_24EB38C2C(v31, type metadata accessor for SearchResultsPageView.FilterMenu);
    sub_24EB38C2C(v34, type metadata accessor for SearchResultsPageView.FilterMenu);
    sub_24E6009C8(v35, v28, &qword_27F229088, &qword_24F984678);
    v29 = 0;
  }

  (*(v54 + 56))(v28, v29, 1, v56);
  v37 = v53;
  sub_24EB391A8(v19, v53, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v38 = v55;
  sub_24E60169C(v28, v55, &qword_27F229090, &qword_24F984680);
  v39 = v57;
  sub_24EB391A8(v37, v57, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229098, &qword_24F984688);
  sub_24E60169C(v38, v39 + *(v40 + 48), &qword_27F229090, &qword_24F984680);
  sub_24E601704(v28, &qword_27F229090, &qword_24F984680);
  sub_24EB38C2C(v19, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  sub_24E601704(v38, &qword_27F229090, &qword_24F984680);
  return sub_24EB38C2C(v37, type metadata accessor for SearchResultsPageView.TabsToolbarView);
}

uint64_t sub_24EB34CF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F926C98();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229068, &unk_24F984658) + 36);
  sub_24F927428();
  v6 = (a1 + *(type metadata accessor for SearchResultsPageView.ToolbarView(0) + 28));
  v7 = v6[1];
  v8 = v6[2];
  v22 = *v6;
  *&v23 = v7;
  *(&v23 + 1) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058, &qword_24F99DF20);
  MEMORY[0x25304CAF0](&v21, v9);
  v10 = v21;
  *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127C0, &unk_24F939550) + 36)] = v10;
  LOBYTE(a1) = sub_24F925808();
  v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229070, &qword_24F99DF50) + 36)] = a1;
  *a2 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F9479A0;
  sub_24F926C88();
  *(v11 + 32) = sub_24F9273C8();
  *(v11 + 40) = v12;
  sub_24F926C88();
  sub_24F926D08();

  *(v11 + 48) = sub_24F9273C8();
  *(v11 + 56) = v13;
  sub_24F926C88();
  sub_24F926D08();

  *(v11 + 64) = sub_24F9273C8();
  *(v11 + 72) = v14;
  sub_24F927878();
  sub_24F927898();
  sub_24F9273D8();
  sub_24F923BD8();
  v15 = v22;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229078, &qword_24F984668) + 36);
  *v16 = v15;
  v17 = v23;
  *(v16 + 24) = v24;
  *(v16 + 8) = v17;
  v18 = sub_24F924058();
  LOBYTE(v4) = sub_24F925808();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229080, &qword_24F984670);
  v20 = a2 + *(result + 36);
  *v20 = v18;
  v20[8] = v4;
  return result;
}

uint64_t sub_24EB34F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v86 = a1;
  v82 = a3;
  v4 = sub_24F929888();
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x28223BE20](v4);
  v81 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v62 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229350, &qword_24F984B58);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v62 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229348, &qword_24F984B50);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v62 - v9;
  v10 = type metadata accessor for GameSearchResultsTab(0);
  v11 = v10 - 8;
  v85 = *(v10 - 8);
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = type metadata accessor for SearchResultsPageView.TabsToolbarView(0);
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_24F928B08();
  v74 = *(v87 - 8);
  v20 = MEMORY[0x28223BE20](v87);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v11 + 36);
  v24 = v86;
  (*(v17 + 16))(v19, v86 + v23, v16, v20);
  sub_24EB391A8(a2, v15, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v25 = v24;
  sub_24EB391A8(v24, &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameSearchResultsTab);
  v26 = *(v72 + 80);
  v66 = ~v26;
  v27 = (v26 + 16) & ~v26;
  v28 = *(v85 + 80);
  v64 = ~v28;
  v69 = v14;
  v67 = v26;
  v71 = v12;
  v29 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v26 | v28;
  v30 = swift_allocObject();
  sub_24EB39210(v15, v30 + v27, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  sub_24EB39210(v29, v30 + ((v14 + v28 + v27) & ~v28), type metadata accessor for GameSearchResultsTab);
  v31 = v22;
  v32 = v63;
  sub_24F928AF8();
  v33 = *(v25 + 48);
  v85 = *(v25 + 40);
  v34 = *(v32 + 16);
  *&v88 = *(v32 + 8);
  *(&v88 + 1) = v34;
  v89 = *(v32 + 24);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00, &qword_24FA12D50);
  MEMORY[0x25304CAF0](&v92, v35);
  v72 = v33;
  if (!v93)
  {
    goto LABEL_7;
  }

  if (v85 != v92 || v93 != v33)
  {
    v36 = sub_24F92CE08();

    if (v36)
    {
      goto LABEL_6;
    }

LABEL_7:
    LODWORD(v88) = sub_24F925198();
    v70 = sub_24F9238D8();
    v37 = 0;
    goto LABEL_8;
  }

LABEL_6:
  *&v88 = sub_24F926C88();
  v70 = sub_24F9238D8();
  v37 = 1;
LABEL_8:
  v38 = sub_24F9232F8();
  (*(*(v38 - 8) + 56))(v73, 1, 1, v38);
  v39 = v87;
  *(&v89 + 1) = v87;
  v90 = MEMORY[0x277D21CB8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
  v41 = v74;
  v42 = *(v74 + 16);
  v68 = v31;
  v42(boxed_opaque_existential_1, v31, v39);
  sub_24EB391A8(v86, v29, type metadata accessor for GameSearchResultsTab);
  sub_24EB391A8(v32, v15, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v43 = (v28 + 16) & v64;
  v44 = (v71 + v67 + v43) & v66;
  v45 = (v69 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_24EB39210(v29, v46 + v43, type metadata accessor for GameSearchResultsTab);
  sub_24EB39210(v15, v46 + v44, type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v47 = v46 + v45;
  *v47 = v70;
  *(v47 + 8) = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229360, &qword_24F984B60);
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229368, &qword_24F984B68);
  v49 = sub_24EB3D100();
  v92 = v48;
  v93 = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v75;
  sub_24F921788();
  v51 = sub_24F9271D8();
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v91[3] = v51;
  v91[4] = sub_24EB388F4(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  v52 = __swift_allocate_boxed_opaque_existential_1(v91);
  v53 = *MEMORY[0x277CE0118];
  v54 = sub_24F924B38();
  (*(*(v54 - 8) + 104))(v52, v53, v54);
  v55 = sub_24E602068(&qword_27F229358, &qword_27F229350, &qword_24F984B58, MEMORY[0x277D7EB00]);
  v56 = sub_24E620DE8();
  v57 = v77;
  v58 = v78;
  sub_24F926178();
  sub_24E6A56E8(&v88);
  (*(v76 + 8))(v50, v58);
  *&v88 = v85;
  *(&v88 + 1) = v72;

  MEMORY[0x253050C20](0x7265746C6946, 0xE600000000000000);
  *(&v89 + 1) = MEMORY[0x277D837D0];
  v59 = v81;
  sub_24F929858();
  __swift_destroy_boxed_opaque_existential_1(&v88);
  *&v88 = v58;
  *(&v88 + 1) = &type metadata for StrokeFocusButtonStyle;
  *&v89 = v55;
  *(&v89 + 1) = v56;
  swift_getOpaqueTypeConformance2();
  v60 = v80;
  sub_24F925EE8();

  (*(v83 + 8))(v59, v84);
  (*(v79 + 8))(v57, v60);
  return (*(v41 + 8))(v68, v87);
}

uint64_t sub_24EB359F8(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00, &qword_24FA12D50);
  return sub_24F927178();
}

uint64_t sub_24EB35A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v63 = a5;
  v64 = sub_24F9248C8();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24F9259C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229380, &qword_24F984B70);
  MEMORY[0x28223BE20](v53);
  v14 = &v50[-v13];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229368, &qword_24F984B68);
  MEMORY[0x28223BE20](v58);
  v59 = &v50[-v15];
  sub_24EB36098(a1, &v69);
  v55 = v70;
  v56 = v69;
  v16 = v71;
  sub_24F925898();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0A10], v9);
  sub_24F9259F8();

  (*(v10 + 8))(v12, v9);
  v54 = sub_24F9258E8();

  KeyPath = swift_getKeyPath();
  v76 = v16;
  v60 = a3;

  v51 = sub_24F9257F8();
  sub_24F923318();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(a3) = v76;
  v67 = 0;
  type metadata accessor for SearchResultsPageView.TabsToolbarView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9242E8();
  *&v68[55] = v72;
  *&v68[71] = v73;
  *&v68[87] = v74;
  *&v68[103] = v75;
  *&v68[7] = v69;
  *&v68[23] = v70;
  *&v68[39] = v71;
  v25 = sub_24F927618();
  v27 = v26;
  v28 = &v14[*(v53 + 36)];
  *v28 = sub_24F927618();
  v28[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229410, &qword_24F984BF8);
  v31 = sub_24EB36194(v57 & 1, v28 + *(v30 + 44));
  v32 = MEMORY[0x25304D060](v31, 0.5, 0.85, 0.0);
  v33 = *(a2 + 16);
  v65[2] = *(a2 + 8);
  v65[3] = v33;
  v66 = *(a2 + 24);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00, &qword_24FA12D50);
  MEMORY[0x25304CAF0](v65, v34);
  v35 = v65[0];
  v36 = v65[1];
  v37 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229418, &qword_24F984C00) + 36));
  *v37 = v32;
  v37[1] = v35;
  v37[2] = v36;
  v38 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229408, &qword_24F984BB8) + 36));
  *v38 = v25;
  v38[1] = v27;
  v39 = v55;
  *v14 = v56;
  *(v14 + 1) = v39;
  v14[32] = a3;
  v40 = v54;
  *(v14 + 5) = KeyPath;
  *(v14 + 6) = v40;
  *(v14 + 7) = v60;
  v14[64] = v51;
  *(v14 + 9) = v18;
  *(v14 + 10) = v20;
  *(v14 + 11) = v22;
  *(v14 + 12) = v24;
  v14[104] = 0;
  v41 = *&v68[32];
  *(v14 + 153) = *&v68[48];
  *(v14 + 137) = v41;
  v42 = *v68;
  *(v14 + 121) = *&v68[16];
  *(v14 + 105) = v42;
  *(v14 + 27) = *&v68[111];
  v43 = *&v68[80];
  *(v14 + 201) = *&v68[96];
  *(v14 + 185) = v43;
  *(v14 + 169) = *&v68[64];
  v44 = v59;
  v45 = &v59[*(v58 + 36)];
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_24F924B38();
  (*(*(v47 - 8) + 104))(v45, v46, v47);
  v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B698, &qword_24F984BC0) + 36)] = 0;
  sub_24E6009C8(v14, v44, &qword_27F229380, &qword_24F984B70);
  v48 = v61;
  sub_24F9248B8();
  sub_24EB3D100();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v62 + 8))(v48, v64);
  return sub_24E601704(v44, &qword_27F229368, &qword_24F984B68);
}

double sub_24EB36098@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 64))
  {
    v5 = *(a1 + 56);
    sub_24E600AEC();

    sub_24F925E18();
  }

  else
  {
    type metadata accessor for SearchResultsPageView.TabsToolbarView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    sub_24F9237D8();
    sub_24F927618();
  }

  sub_24EB3D608();
  sub_24F924E28();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24EB36194@<X0>(char a1@<W0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229420, &unk_24F984C08);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  if (a1)
  {
    v10 = *MEMORY[0x277CE0118];
    v21 = v6;
    v11 = sub_24F924B38();
    (*(*(v11 - 8) + 104))(v9, v10, v11);
    v12 = sub_24F926D18();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D6B8, &unk_24F958FB0);
    *&v9[*(v13 + 52)] = v12;
    *&v9[*(v13 + 56)] = 256;
    v14 = sub_24F927778();
    LODWORD(v12) = sub_24F9254B8();
    sub_24F9278A8();
    v15 = &v9[*(v5 + 36)];
    *v15 = 0x64657463656C6553;
    *(v15 + 1) = 0xEB00000000626154;
    *(v15 + 2) = v14;
    *(v15 + 6) = v12;
    *(v15 + 4) = v16;
    *(v15 + 5) = v17;
    v15[48] = 1;
    sub_24E6009C8(v9, a3, &qword_27F229420, &unk_24F984C08);
    return (*(v21 + 56))(a3, 0, 1, v5);
  }

  else
  {
    v19 = *(v6 + 56);

    return v19(a3, 1, 1, v5, v7);
  }
}

uint64_t sub_24EB363AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229338, &qword_24F984B40) + 44);
  v19 = *v2;
  swift_getKeyPath();
  sub_24EB391A8(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.TabsToolbarView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24EB39210(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SearchResultsPageView.TabsToolbarView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D58, &qword_24F978068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229340, &qword_24F984B48);
  sub_24E602068(&qword_27F228F78, &qword_27F225D58, &qword_24F978068, MEMORY[0x277D83980]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229348, &qword_24F984B50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229350, &qword_24F984B58);
  v10 = sub_24E602068(&qword_27F229358, &qword_27F229350, &qword_24F984B58, MEMORY[0x277D7EB00]);
  v11 = sub_24E620DE8();
  v15 = v9;
  v16 = &type metadata for StrokeFocusButtonStyle;
  v17 = v10;
  v18 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_24F927228();
}

uint64_t sub_24EB36678()
{
  v1 = type metadata accessor for GameSearchResultsTabContent(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (v0 + *(type metadata accessor for SearchResultsPageView.FilterMenu(0) + 20));
  v6 = v5[1];
  v20 = *v5;
  v21 = v6;
  v22 = *(v5 + 1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00, &qword_24FA12D50);
  MEMORY[0x25304CAF0](&v18, v7);
  v8 = v19;
  if (v19)
  {
    v9 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
    sub_24F927358();
    v10 = v20;
    swift_getKeyPath();
    v20 = v10;
    sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);
    sub_24F91FD88();

    v11 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__tabStates;
    swift_beginAccess();
    v12 = *(v10 + v11);

    if (*(v12 + 16))
    {
      v13 = sub_24E76D644(v9, v8);
      v15 = v14;

      if (v15)
      {
        sub_24EB391A8(*(v12 + 56) + *(v2 + 72) * v13, v4, type metadata accessor for GameSearchResultsTabContent);

        v16 = *v4;

        sub_24EB38C2C(v4, type metadata accessor for GameSearchResultsTabContent);
        return v16;
      }
    }

    else
    {
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24EB368DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924B38();
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292E0, &qword_24F984A80);
  MEMORY[0x28223BE20](v7);
  v75 = v63 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292E8, &qword_24F984A88);
  MEMORY[0x28223BE20](v74);
  v10 = v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292F0, &qword_24F984A90);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = v63 - v16;
  v17 = *(sub_24EB36678() + 16);

  if (v17 >= 2 && (v18 = (v2 + *(type metadata accessor for SearchResultsPageView.FilterMenu(0) + 20)), v19 = *v18, v20 = v18[1], v22 = v18[2], v21 = v18[3], v71 = v20, v72 = v19, v77 = v19, v78 = v20, v69 = v21, v70 = v22, v79 = v22, v80 = v21, v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00, &qword_24FA12D50), v23 = MEMORY[0x25304CAF0](&v82), (v24 = v83) != 0))
  {
    v64 = v14;
    v65 = v12;
    v66 = v11;
    v67 = a1;
    v63[2] = v63;
    MEMORY[0x28223BE20](v23);
    v63[-4] = v2;
    v63[-3] = v25;
    v63[-2] = v24;
    MEMORY[0x28223BE20](v26);
    v63[1] = v2;
    v63[-2] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292F8, &qword_24F984A98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229300, &unk_24F984AA0);
    sub_24EB3C368();
    sub_24EB3C41C();
    v27 = v75;
    sub_24F925AB8();

    *(v27 + *(v7 + 36)) = 257;
    v28 = v73;
    (*(v73 + 104))(v6, *MEMORY[0x277CE0118], v4);
    v29 = sub_24F924258();
    v80 = v29;
    v81 = sub_24EB388F4(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
    v30 = __swift_allocate_boxed_opaque_existential_1(&v77);
    (*(v28 + 16))(v30 + *(v29 + 20), v6, v4);
    __asm { FMOV            V0.2D, #6.0 }

    *v30 = _Q0;
    (*(v28 + 8))(v6, v4);
    sub_24E60169C(&v77, v10, &qword_27F229318, &qword_24F984AB0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229320, &qword_24F984AB8);
    sub_24E60169C(v27, &v10[v36[9]], &qword_27F2292E0, &qword_24F984A80);
    v37 = &v10[v36[10]];
    *v37 = sub_24F923398() & 1;
    *(v37 + 1) = v38;
    v37[16] = v39 & 1;
    v40 = &v10[v36[11]];
    *v40 = swift_getKeyPath();
    v40[8] = 0;
    if (qword_27F211808 != -1)
    {
      swift_once();
    }

    v41 = qword_27F24E488;
    v42 = sub_24F923398();
    v44 = v43;
    v46 = v45;
    v47 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229328, &qword_24F984AE8) + 36)];
    *v47 = v41;
    v47[8] = v42 & 1;
    *(v47 + 2) = v44;
    v47[24] = v46 & 1;
    LOBYTE(v41) = sub_24F923398();
    v49 = v48;
    LOBYTE(v44) = v50;
    sub_24E601704(&v77, &qword_27F229318, &qword_24F984AB0);
    sub_24E601704(v27, &qword_27F2292E0, &qword_24F984A80);
    v51 = &v10[*(v74 + 36)];
    *v51 = v41 & 1;
    *(v51 + 1) = v49;
    v51[16] = v44 & 1;
    v52 = sub_24F927728();
    v77 = v72;
    v78 = v71;
    v79 = v70;
    v80 = v69;
    MEMORY[0x25304CAF0](&v82, v68);
    v53 = v82;
    v54 = v83;
    v55 = v64;
    if (v83)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
      sub_24F927358();
      v53 = sub_24F7D6E90(v53, v54);
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v12 = v65;
    v11 = v66;
    sub_24E6009C8(v10, v55, &qword_27F2292E8, &qword_24F984A88);
    v59 = (v55 + *(v11 + 36));
    *v59 = v52;
    v59[1] = v53;
    v59[2] = v57;
    v60 = v76;
    sub_24E6009C8(v55, v76, &qword_27F2292F0, &qword_24F984A90);
    v61 = v60;
    a1 = v67;
    sub_24E6009C8(v61, v67, &qword_27F2292F0, &qword_24F984A90);
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  return (*(v12 + 56))(a1, v58, 1, v11);
}

uint64_t sub_24EB36FC4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for SearchResultsPageView.FilterMenu(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v14[1] = sub_24EB36678();
  swift_getKeyPath();
  sub_24EB391A8(a1, v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.FilterMenu);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_24EB39210(v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SearchResultsPageView.FilterMenu);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D10, &qword_24F978048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28, &unk_24F9770A0);
  sub_24E602068(&qword_27F229330, &qword_27F225D10, &qword_24F978048, MEMORY[0x277D83980]);
  sub_24E602068(&qword_27F228258, &qword_27F225A28, &unk_24F9770A0, MEMORY[0x277D7EB00]);
  return sub_24F927228();
}

uint64_t sub_24EB371FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v50 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v40 - v9;
  v10 = type metadata accessor for GameSearchResultsGroup(0);
  v11 = v10 - 8;
  v42 = *(v10 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchResultsPageView.FilterMenu(0);
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F928B08();
  v21 = *(v20 - 8);
  v43 = v20;
  v44 = v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1 + *(v11 + 36), v16, v22);
  sub_24EB391A8(v45, &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultsPageView.FilterMenu);
  sub_24EB391A8(a1, v13, type metadata accessor for GameSearchResultsGroup);
  v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v42 + 80) + v26 + 16) & ~*(v42 + 80);
  v28 = swift_allocObject();
  sub_24EB39210(&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v25, type metadata accessor for SearchResultsPageView.FilterMenu);
  v29 = (v28 + v26);
  v30 = v47;
  *v29 = v46;
  v29[1] = v30;
  sub_24EB39210(v13, v28 + v27, type metadata accessor for GameSearchResultsGroup);

  sub_24F928AF8();
  v32 = *(a1 + 16);
  v31 = *(a1 + 24);
  v33 = sub_24F9232F8();
  v34 = v48;
  (*(*(v33 - 8) + 56))(v48, 1, 1, v33);
  v35 = v43;
  v52[3] = v43;
  v52[4] = MEMORY[0x277D21CB8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  v37 = v44;
  (*(v44 + 16))(boxed_opaque_existential_1, v24, v35);
  sub_24E60169C(v34, v49, &unk_27F254FA0, &unk_24F945290);
  sub_24E60169C(v52, v51, qword_27F21B590, &unk_24F93BE30);
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  *(v38 + 24) = v31;

  sub_24F921788();
  sub_24E601704(v34, &unk_27F254FA0, &unk_24F945290);
  (*(v37 + 8))(v24, v35);
  return sub_24E601704(v52, qword_27F21B590, &unk_24F93BE30);
}

double sub_24EB3771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  sub_24F927358();
  v6 = *a4;
  v7 = a4[1];
  swift_getKeyPath();
  sub_24EB388F4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);

  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  v8 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__cachedSelectedGroup;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v12 + v8);
  *(v12 + v8) = 0x8000000000000000;
  sub_24E81D324(v6, v7, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v12 + v8) = v13;
  swift_endAccess();
  swift_getKeyPath();
  sub_24F91FD98();

  return result;
}

uint64_t sub_24EB378E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_24F9248C8();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B820, &qword_24F984AF0);
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229190, &qword_24F984778);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for GameSearchResultsGroup(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24EB36678();
  v35 = a1;
  sub_24E7AAEE8(sub_24EB3C4D4, v16, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F229190, &qword_24F984778);
    v17 = 1;
    v19 = v33;
    v18 = v34;
  }

  else
  {
    sub_24EB39210(v11, v15, type metadata accessor for GameSearchResultsGroup);
    v20 = *(v15 + 3);
    v36 = *(v15 + 2);
    v37 = v20;
    sub_24E600AEC();

    v21 = sub_24F925E18();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_24F9248B8();
    v36 = v21;
    v37 = v23;
    v38 = v25 & 1;
    v39 = v27;
    _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
    (*(v31 + 8))(v5, v32);
    sub_24EB38C2C(v15, type metadata accessor for GameSearchResultsGroup);
    sub_24E600B40(v21, v23, v25 & 1);

    v29 = v33;
    v28 = v34;
    (*(v6 + 32))(v34, v8, v33);
    v17 = 0;
    v18 = v28;
    v19 = v29;
  }

  return (*(v6 + 56))(v18, v17, 1, v19);
}

uint64_t sub_24EB37C94(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (a2 + *(type metadata accessor for SearchResultsPageView.FilterMenu(0) + 20));
  v6 = v5[1];
  v17 = *v5;
  v18 = v6;
  v19 = *(v5 + 1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00, &qword_24FA12D50);
  MEMORY[0x25304CAF0](&v15, v7);
  v8 = v16;
  if (v16 && (v9 = v15, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8), sub_24F927358(), v10 = sub_24F7D6E90(v9, v8), v12 = v11, , , v12))
  {
    if (v3 == v10 && v12 == v4)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_24F92CE08();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_24EB37DD0(uint64_t a1)
{
  v4 = *(type metadata accessor for SearchResultsPageView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24EB2CC30(a1, v1 + v5);
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for SearchResultsPageView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 112) != 1)
  {

    sub_24E7B6564(*(v2 + 136), *(v2 + 144));
  }

  __swift_destroy_boxed_opaque_existential_1((v2 + 296));

  v3 = v1[13];
  v4 = sub_24F929158();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[15];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EB38208(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;

  return MEMORY[0x2821E7B48](a1, a2, a3);
}

unint64_t sub_24EB38268()
{
  result = qword_27F228E80;
  if (!qword_27F228E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E78, &qword_24F9842E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E88, &qword_24F9842E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E90, &qword_24F9842F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E98, &qword_24F9842F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EA0, &qword_24F984300);
    sub_24E602068(&qword_27F228EA8, &qword_27F228E98, &qword_24F9842F8, MEMORY[0x277CE11A8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EB0, &qword_24F984308);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215940, &qword_24F940D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215950, &qword_24F940D10);
    sub_24EB384F4();
    sub_24E669340();
    sub_24EB38868();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E78AE10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228E80);
  }

  return result;
}

unint64_t sub_24EB384F4()
{
  result = qword_27F228EB8;
  if (!qword_27F228EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215940, &qword_24F940D00);
    sub_24EB38580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228EB8);
  }

  return result;
}

unint64_t sub_24EB38580()
{
  result = qword_27F228EC0;
  if (!qword_27F228EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EC8, &qword_24F984310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228ED0, &qword_24F984318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228ED8, &unk_24F984320);
    type metadata accessor for SearchResultsPageView.ToolbarView(255);
    sub_24EB388F4(&qword_27F228EE0, type metadata accessor for SearchResultsPageView.ToolbarView, &unk_24F984548);
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EE8, &qword_24F9A6A60);
    sub_24EB38750();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228EC0);
  }

  return result;
}

unint64_t sub_24EB38750()
{
  result = qword_27F228EF0;
  if (!qword_27F228EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228EE8, &qword_24F9A6A60);
    type metadata accessor for SearchResultsPageView.ToolbarView(255);
    sub_24EB388F4(&qword_27F228EE0, type metadata accessor for SearchResultsPageView.ToolbarView, &unk_24F984548);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228EF0);
  }

  return result;
}

unint64_t sub_24EB38868()
{
  result = qword_27F228EF8;
  if (!qword_27F228EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215950, &qword_24F940D10);
    sub_24EB384F4();
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228EF8);
  }

  return result;
}

uint64_t sub_24EB388F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EB3893C(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for SearchResultsPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EB2F3B0(a1, a2, v6);
}

unint64_t sub_24EB389BC()
{
  result = qword_27F228F10;
  if (!qword_27F228F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E000, &unk_24F984240);
    sub_24EB38A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F10);
  }

  return result;
}

unint64_t sub_24EB38A40()
{
  result = qword_27F228F18;
  if (!qword_27F228F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240, qword_24F957DE0);
    sub_24EB388F4(&qword_27F228F20, type metadata accessor for Player, &protocol conformance descriptor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F18);
  }

  return result;
}

uint64_t sub_24EB38AF4(uint64_t a1, __int128 *a2)
{
  v5 = *(type metadata accessor for SearchResultsPageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EB2F4F8(a1, a2, v6);
}

unint64_t sub_24EB38B74()
{
  result = qword_27F228F28;
  if (!qword_27F228F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F28);
  }

  return result;
}

uint64_t sub_24EB38C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EB38CB8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_24EB38D50()
{
  result = qword_27F228F80;
  if (!qword_27F228F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228F70, &qword_24F984400);
    sub_24EB38E08();
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F80);
  }

  return result;
}

unint64_t sub_24EB38E08()
{
  result = qword_27F228F88;
  if (!qword_27F228F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228F90, &qword_24F984408);
    sub_24EB38EC0();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8, &qword_24F94C4A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F88);
  }

  return result;
}

unint64_t sub_24EB38EC0()
{
  result = qword_27F228F98;
  if (!qword_27F228F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228FA0, &qword_24F984410);
    sub_24EB38F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228F98);
  }

  return result;
}

unint64_t sub_24EB38F4C()
{
  result = qword_27F228FA8;
  if (!qword_27F228FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228FB0, &qword_24F984418);
    type metadata accessor for SearchResultsPageView.TabContentView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215960, &unk_24F940D20);
    sub_24EB388F4(&qword_27F228FB8, type metadata accessor for SearchResultsPageView.TabContentView, &unk_24F9844F8);
    sub_24E669340();
    sub_24EB390CC();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228FA8);
  }

  return result;
}

unint64_t sub_24EB390CC()
{
  result = qword_27F228FC0;
  if (!qword_27F228FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215960, &unk_24F940D20);
    sub_24EB388F4(&qword_27F228FB8, type metadata accessor for SearchResultsPageView.TabContentView, &unk_24F9844F8);
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228FC0);
  }

  return result;
}

uint64_t sub_24EB391A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EB39210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EB392BC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24EB3940C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24EB39548(uint64_t a1)
{
  sub_24EB39C98(319, &qword_27F225CD0, type metadata accessor for GameSearchResultsTab, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24EB2B580(319, &qword_27F228E40, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_24EB39C98(319, &qword_27F228FF0, type metadata accessor for SearchResultsPageViewModel, MEMORY[0x277CE12F8]);
      if (v3 <= 0x3F)
      {
        sub_24EB39CFC(319, &qword_27F228FF8, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_24EB2B580(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24EB39704(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GameSearchResultsTab(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6] + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_24F929158();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_24EB398F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for GameSearchResultsTab(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_24F929158();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

void sub_24EB39AC8(uint64_t a1)
{
  type metadata accessor for GameSearchResultsTab(319);
  if (v1 <= 0x3F)
  {
    sub_24E833194();
    if (v2 <= 0x3F)
    {
      type metadata accessor for NetworkConnectionMonitor(319);
      if (v3 <= 0x3F)
      {
        sub_24EB39C98(319, &qword_27F228FF0, type metadata accessor for SearchResultsPageViewModel, MEMORY[0x277CE12F8]);
        if (v4 <= 0x3F)
        {
          sub_24F929158();
          if (v5 <= 0x3F)
          {
            sub_24EB39C98(319, &qword_27F2157B8, MEMORY[0x277D221C8], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_24EB39C98(319, &qword_27F229018, MEMORY[0x277D7EAE0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24EB39CFC(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
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
}

void sub_24EB39C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24EB39CFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24EB39D50()
{
  result = qword_27F229020;
  if (!qword_27F229020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228F30, &qword_24F984340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E68, &qword_24F9842B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E60, &qword_24F9842B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E000, &unk_24F984240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228E58, &qword_24F9842A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740, &qword_24F93EC10);
    sub_24E602068(&qword_27F228F08, &qword_27F228E58, &qword_24F9842A8, MEMORY[0x277CE1148]);
    sub_24E9D38B0();
    swift_getOpaqueTypeConformance2();
    sub_24EB389BC();
    swift_getOpaqueTypeConformance2();
    sub_24EB38B74();
    swift_getOpaqueTypeConformance2();
    sub_24EB388F4(&qword_27F2156E0, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229020);
  }

  return result;
}

uint64_t sub_24EB39FD4(uint64_t a1)
{
  v4 = *(type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24EB30BC8(a1, v1 + v5);
}

uint64_t objectdestroy_78Tm()
{
  v1 = (type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  __swift_destroy_boxed_opaque_existential_1(v2);

  v3 = *(type metadata accessor for GameSearchResultsTab(0) + 28);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);
  __swift_destroy_boxed_opaque_existential_1(&v2[v1[8]]);

  v5 = v1[10];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  (*(*(v6 - 8) + 8))(&v2[v5], v6);
  v7 = v1[11];
  v8 = sub_24F929158();
  (*(*(v8 - 8) + 8))(&v2[v7], v8);

  v9 = &v2[v1[13]];
  v10 = sub_24F921738();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);

  return swift_deallocObject();
}

uint64_t sub_24EB3A2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_24EB3105C(a1, a2, a3, v10, a4);
}

unint64_t sub_24EB3A3A0()
{
  result = qword_27F229100;
  if (!qword_27F229100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2290F8, &qword_24F984700);
    sub_24EB3A424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229100);
  }

  return result;
}

unint64_t sub_24EB3A424()
{
  result = qword_27F229108;
  if (!qword_27F229108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229110, &qword_24F984708);
    sub_24E6A4C1C();
    swift_getOpaqueTypeConformance2();
    sub_24EB3A51C();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229108);
  }

  return result;
}

unint64_t sub_24EB3A51C()
{
  result = qword_27F229118;
  if (!qword_27F229118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229120, &unk_24F984710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229128, &unk_24FA27BA0);
    sub_24EB3A624();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229118);
  }

  return result;
}

unint64_t sub_24EB3A624()
{
  result = qword_27F229130;
  if (!qword_27F229130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229128, &unk_24FA27BA0);
    sub_24EB3A6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229130);
  }

  return result;
}

unint64_t sub_24EB3A6B0()
{
  result = qword_27F229138;
  if (!qword_27F229138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229140, &unk_24F984720);
    sub_24EB3A73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229138);
  }

  return result;
}

unint64_t sub_24EB3A73C()
{
  result = qword_27F229148;
  if (!qword_27F229148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229150, &unk_24FA27BB0);
    sub_24EB3A7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229148);
  }

  return result;
}

unint64_t sub_24EB3A7C8()
{
  result = qword_27F229158;
  if (!qword_27F229158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229160, &unk_24F984730);
    sub_24E602068(&qword_27F229168, &qword_27F229170, &unk_24FA27BC0, MEMORY[0x277CDE158]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229158);
  }

  return result;
}

uint64_t sub_24EB3A898()
{
  v1 = (type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + v2));

  v3 = *(type metadata accessor for GameSearchResultsTab(0) + 28);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + v2 + v1[8]));

  v5 = v1[10];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = v1[11];
  v8 = sub_24F929158();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  v9 = v0 + v2 + v1[13];
  v10 = sub_24F921738();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229000, &qword_24F9844E0);

  return swift_deallocObject();
}

void *sub_24EB3AACC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_24EB320D0(v4, a1);
}

uint64_t sub_24EB3AB40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_24EB3AC20()
{
  result = qword_27F2291A0;
  if (!qword_27F2291A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229198, &unk_24F984780);
    sub_24EB388F4(&qword_27F2291A8, type metadata accessor for SearchResultsPageView.SearchGroupView, &unk_24F9848B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2291A0);
  }

  return result;
}

uint64_t sub_24EB3AD00()
{
  v1 = *(v0 + 16);

  return sub_24F921A18();
}

uint64_t sub_24EB3AD80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for SearchResultsPageView.TabContentView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_24EB3AE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EB3AF08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24EB3AFD0(uint64_t a1)
{
  sub_24EB39C98(319, &qword_27F228FF0, type metadata accessor for SearchResultsPageViewModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_24EB2B580(319, &qword_27F228E40, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EB3B0CC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24EB3B19C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EB3B24C(uint64_t a1)
{
  sub_24EB39C98(319, &qword_27F225CD0, type metadata accessor for GameSearchResultsTab, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24EB2B580(319, &qword_27F228E40, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_24E66ED3C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24EB3B360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EB3B430(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EB3B4E0(uint64_t a1)
{
  sub_24EB3B5BC();
  if (v1 <= 0x3F)
  {
    sub_24E833194();
    if (v2 <= 0x3F)
    {
      sub_24EB39C98(319, &qword_27F228FF0, type metadata accessor for SearchResultsPageViewModel, MEMORY[0x277CE12F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EB3B5BC()
{
  result = qword_27F2291F0;
  if (!qword_27F2291F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213768, &unk_24F93F770);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_27F2291F0);
  }

  return result;
}

unint64_t sub_24EB3B638()
{
  result = qword_27F2291F8;
  if (!qword_27F2291F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229060, &qword_24F984650);
    sub_24EB3B6F0();
    sub_24E602068(&qword_27F229228, &qword_27F229230, qword_24F984808, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2291F8);
  }

  return result;
}

unint64_t sub_24EB3B6F0()
{
  result = qword_27F229200;
  if (!qword_27F229200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229040, &qword_24F9845B0);
    sub_24EB3B7A8();
    sub_24E602068(&qword_27F229220, &qword_27F229050, &unk_24F984640, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229200);
  }

  return result;
}

unint64_t sub_24EB3B7A8()
{
  result = qword_27F229208;
  if (!qword_27F229208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229038, &qword_24F9845A8);
    sub_24EB3B864();
    sub_24EB388F4(&qword_27F222448, type metadata accessor for PageMarginsViewModifier, &unk_24F9F5C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229208);
  }

  return result;
}

unint64_t sub_24EB3B864()
{
  result = qword_27F229210;
  if (!qword_27F229210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229030, &qword_24F9845A0);
    sub_24E602068(&qword_27F229218, &qword_27F229028, &qword_24F984598, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229210);
  }

  return result;
}

unint64_t sub_24EB3B920()
{
  result = qword_27F229238;
  if (!qword_27F229238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229188, &qword_24F984740);
    sub_24E602068(&qword_27F229240, &qword_27F2290D8, &qword_24F9846D8, MEMORY[0x277CE1148]);
    sub_24E602068(&qword_27F224B60, &qword_27F224B68, &qword_24F973590, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229238);
  }

  return result;
}

uint64_t sub_24EB3BABC()
{
  v1 = (type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  __swift_destroy_boxed_opaque_existential_1((v4 + 32));
  __swift_destroy_boxed_opaque_existential_1((v4 + 72));
  v5 = v1[10];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));

  return swift_deallocObject();
}

uint64_t sub_24EB3BBDC(uint64_t a1)
{
  v4 = *(type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24EB33140(a1, v1 + v5, v1 + v6);
}

uint64_t sub_24EB3BD14(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_24EB3BDA0()
{

  return swift_deallocObject();
}

unint64_t sub_24EB3BE5C()
{
  result = qword_27F229290;
  if (!qword_27F229290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229288, &qword_24F984980);
    sub_24EB3BEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229290);
  }

  return result;
}

unint64_t sub_24EB3BEE0()
{
  result = qword_27F229298;
  if (!qword_27F229298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2292A0, &qword_24F984988);
    sub_24E602068(&qword_27F2292A8, &qword_27F2292B0, &qword_24F984990, &unk_24F9C4E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229298);
  }

  return result;
}

uint64_t sub_24EB3BF98()
{
  v1 = (type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1((v2 + 32));
  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  v3 = v1[10];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EB3C0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EB336C0(a1, a2, v3 + v8, v9, a3);
}

uint64_t sub_24EB3C16C(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2292D0, &unk_24FA075E0);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t objectdestroy_159Tm()
{
  v1 = (type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1((v2 + 32));
  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  v3 = v1[10];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

double sub_24EB3C2E0()
{
  v1 = *(type metadata accessor for SearchResultsPageView.SearchGroupView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_24EB33BD8(v2);
}

unint64_t sub_24EB3C368()
{
  result = qword_27F229308;
  if (!qword_27F229308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2292F8, &qword_24F984A98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229308);
  }

  return result;
}

unint64_t sub_24EB3C41C()
{
  result = qword_27F229310;
  if (!qword_27F229310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229300, &unk_24F984AA0);
    sub_24E602068(&qword_27F228258, &qword_27F225A28, &unk_24F9770A0, MEMORY[0x277D7EB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229310);
  }

  return result;
}

uint64_t sub_24EB3C4F4()
{
  v1 = *(type metadata accessor for SearchResultsPageView.FilterMenu(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24EB3C614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SearchResultsPageView.FilterMenu(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_24EB371FC(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_24EB3C6C4()
{
  v1 = *(type metadata accessor for SearchResultsPageView.FilterMenu(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (type metadata accessor for GameSearchResultsGroup(0) - 8);
  v5 = (v3 + *(*v4 + 80) + 16) & ~*(*v4 + 80);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228FD8, &qword_24F9844C8);
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + v5 + 32));
  v7 = v4[9];
  v8 = sub_24F928AD8();
  (*(*(v8 - 8) + 8))(v0 + v5 + v7, v8);

  return swift_deallocObject();
}

double sub_24EB3C8AC()
{
  v1 = *(type metadata accessor for SearchResultsPageView.FilterMenu(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for GameSearchResultsGroup(0) - 8);
  return sub_24EB3771C(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), (v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80))));
}

uint64_t sub_24EB3C988()
{

  return swift_deallocObject();
}

uint64_t sub_24EB3C9C8()
{
  v1 = (type metadata accessor for SearchResultsPageView.TabsToolbarView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[10], v4);

  return swift_deallocObject();
}

uint64_t sub_24EB3CB2C()
{
  v1 = (type metadata accessor for SearchResultsPageView.TabsToolbarView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for GameSearchResultsTab(0) - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = v0 + v2;

  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);
  v9(v6 + v1[10], v8);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  v10 = v4[9];
  v11 = sub_24F928AD8();
  (*(*(v11 - 8) + 8))(v0 + v5 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_24EB3CD2C()
{
  v1 = *(type metadata accessor for SearchResultsPageView.TabsToolbarView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GameSearchResultsTab(0) - 8);
  return sub_24EB359F8(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_24EB3CDF4()
{
  v1 = (type metadata accessor for GameSearchResultsTab(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for SearchResultsPageView.TabsToolbarView(0) - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + v2));

  v6 = v1[9];
  v7 = sub_24F928AD8();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = v0 + v5;

  v9 = v4[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v11 = *(*(v10 - 8) + 8);
  v11(v8 + v9, v10);
  v11(v8 + v4[10], v10);

  return swift_deallocObject();
}

uint64_t sub_24EB3CFF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GameSearchResultsTab(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SearchResultsPageView.TabsToolbarView(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_24EB35A68(v1 + v4, v1 + v7, v9, v10, a1);
}

unint64_t sub_24EB3D100()
{
  result = qword_27F229370;
  if (!qword_27F229370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229368, &qword_24F984B68);
    sub_24EB3D1B8();
    sub_24E602068(&qword_27F21B720, &qword_27F21B698, &qword_24F984BC0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229370);
  }

  return result;
}

unint64_t sub_24EB3D1B8()
{
  result = qword_27F229378;
  if (!qword_27F229378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229380, &qword_24F984B70);
    sub_24EB3D270();
    sub_24E602068(&qword_27F229400, &qword_27F229408, &qword_24F984BB8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229378);
  }

  return result;
}

unint64_t sub_24EB3D270()
{
  result = qword_27F229388;
  if (!qword_27F229388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229390, &qword_24F984B78);
    sub_24EB3D2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229388);
  }

  return result;
}

unint64_t sub_24EB3D2FC()
{
  result = qword_27F229398;
  if (!qword_27F229398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2293A0, &qword_24F984B80);
    sub_24EB3D388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229398);
  }

  return result;
}

unint64_t sub_24EB3D388()
{
  result = qword_27F2293A8;
  if (!qword_27F2293A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2293B0, &qword_24F984B88);
    sub_24EB3D440();
    sub_24E602068(&qword_27F2293F0, &qword_27F2293F8, &qword_24F984BB0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2293A8);
  }

  return result;
}

unint64_t sub_24EB3D440()
{
  result = qword_27F2293B8;
  if (!qword_27F2293B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2293C0, &qword_24F984B90);
    sub_24EB3D4F8();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2293B8);
  }

  return result;
}

unint64_t sub_24EB3D4F8()
{
  result = qword_27F2293C8;
  if (!qword_27F2293C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2293D0, &qword_24F984B98);
    sub_24EB3D57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2293C8);
  }

  return result;
}

unint64_t sub_24EB3D57C()
{
  result = qword_27F2293D8;
  if (!qword_27F2293D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2293E0, &unk_24F984BA0);
    sub_24EB3D608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2293D8);
  }

  return result;
}

unint64_t sub_24EB3D608()
{
  result = qword_27F2293E8;
  if (!qword_27F2293E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2293E8);
  }

  return result;
}

unint64_t sub_24EB3D668()
{
  result = qword_27F229428;
  if (!qword_27F229428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229430, &qword_24F984C18);
    sub_24E602068(&qword_27F229268, &qword_27F229258, &unk_24F984920, MEMORY[0x277CE1148]);
    sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229428);
  }

  return result;
}

unint64_t sub_24EB3D750()
{
  result = qword_27F229438;
  if (!qword_27F229438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229440, &qword_24F984C20);
    sub_24EB3D7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229438);
  }

  return result;
}

unint64_t sub_24EB3D7D4()
{
  result = qword_27F229448;
  if (!qword_27F229448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2292F0, &qword_24F984A90);
    sub_24EB3D88C();
    sub_24E602068(&qword_27F229468, &qword_27F229470, &qword_24F984C28, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229448);
  }

  return result;
}

unint64_t sub_24EB3D88C()
{
  result = qword_27F229450;
  if (!qword_27F229450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2292E8, &qword_24F984A88);
    sub_24EB3D918();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229450);
  }

  return result;
}

unint64_t sub_24EB3D918()
{
  result = qword_27F229458;
  if (!qword_27F229458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229328, &qword_24F984AE8);
    sub_24E602068(&qword_27F229460, &qword_27F229320, &qword_24F984AB8, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229458);
  }

  return result;
}

uint64_t ItemAdvertRotationController.__allocating_init(itemLayoutContext:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = swift_allocObject();
  sub_24E8E7F4C(a1, v8 + OBJC_IVAR____TtC12GameStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  v9 = sub_24EB3DBE4();
  sub_24EB3DED0(a2, v12);
  v10 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v9, v12, v5, a4);

  sub_24E601704(a2, &qword_27F229490, &unk_24F984C40);
  sub_24E8E7FB0(a1);
  if (v10)
  {
  }

  return v10;
}

uint64_t ItemAdvertRotationController.init(itemLayoutContext:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  sub_24E8E7F4C(a1, v4 + OBJC_IVAR____TtC12GameStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  v9 = sub_24EB3DBE4();
  sub_24EB3DED0(a2, v12);
  v10 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v9, v12, v6, a4);

  sub_24E601704(a2, &qword_27F229490, &unk_24F984C40);
  sub_24E8E7FB0(a1);
  if (v10)
  {
  }

  return v10;
}

void *sub_24EB3DBE4()
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  type metadata accessor for AdvertsSearchResult(0);
  if ((swift_dynamicCast() & 1) == 0 || !v11)
  {
LABEL_17:
    sub_24F928A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221090, &unk_24F965A18);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_24E8EA128(&v11, &v14);
        v5 = v15;
        v6 = v16;
        __swift_project_boxed_opaque_existential_1(&v14, v15);
        if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v5, v6))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294B8, &unk_24F9FAB20);
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_24F93DE60;
          sub_24E8EA128(&v14, (v7 + 32));
          return v7;
        }

        __swift_destroy_boxed_opaque_existential_1(&v14);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
    }

    sub_24E601704(&v11, &qword_27F2294B0, qword_24F984C90);
    return MEMORY[0x277D84F90];
  }

  v0 = *(v11 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
  *&v14 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_30;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v1)
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x253052270](v2, v0);
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          v1 = sub_24F92C738();
          goto LABEL_5;
        }

        v3 = *(v0 + 8 * v2 + 32);

        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_16;
        }
      }

      if (*(v3 + 416))
      {
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      else
      {
      }

      ++v2;
      if (v4 == v1)
      {
        v9 = v14;
        goto LABEL_26;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_26:

  v10 = sub_24E8E849C(v9);

  return v10;
}

uint64_t sub_24EB3DED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229490, &unk_24F984C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB3DF40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8, &unk_24F984C80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = v5 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_rotationPerforming;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_24E8E7F4C(v5 + OBJC_IVAR____TtC12GameStoreKit28ItemAdvertRotationController_managedItemLayoutContext, v13);
    v18 = type metadata accessor for ItemLayoutContext(0);
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    (*(v16 + 16))(a1, a2, a3, v13, a4 & 1, a5, ObjectType, v16);
    swift_unknownObjectRelease();
    return sub_24E601704(v13, &qword_27F2294A8, &unk_24F984C80);
  }

  return result;
}

void *ItemAdvertRotationController.deinit()
{
  v0 = AdvertRotationController.deinit();
  sub_24E8E7FB0(v0 + OBJC_IVAR____TtC12GameStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  return v0;
}

uint64_t ItemAdvertRotationController.__deallocating_deinit()
{
  v0 = AdvertRotationController.deinit();
  sub_24E8E7FB0(v0 + OBJC_IVAR____TtC12GameStoreKit28ItemAdvertRotationController_managedItemLayoutContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ItemAdvertRotationController(uint64_t a1)
{
  result = qword_27F229498;
  if (!qword_27F229498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB3E210(uint64_t a1)
{
  result = type metadata accessor for ItemLayoutContext(319);
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

uint64_t JSONContext.addingRenderPipelineDiagnostics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-1] - v2;
  v6[3] = &type metadata for DiagnosticsAdapter;
  v6[4] = sub_24EB3E414();
  sub_24F928548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
  sub_24F928528();
  (*(v1 + 8))(v3, v0);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_24EB3E414()
{
  result = qword_27F2294C0;
  if (!qword_27F2294C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2294C0);
  }

  return result;
}

uint64_t JSONContext.removingRenderPipelineDiagnostics()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720, &unk_24F97ABA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-v8 - 8];
  sub_24F928548();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728, &unk_24F97ABB0);
  sub_24F9285D8();
  v10 = *(v4 + 8);
  v10(v9, v3);
  if (v15)
  {
    if (swift_dynamicCast())
    {
      sub_24F928548();
      sub_24F928538();
      return (v10)(v6, v3);
    }
  }

  else
  {
    sub_24E601704(v14, &qword_27F226730, &unk_24F984CC0);
  }

  v12 = sub_24F9285B8();
  return (*(*(v12 - 8) + 16))(a1, v1, v12);
}

uint64_t sub_24EB3E64C(uint64_t a1, id a2)
{
  v6[0] = a2;
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v6[3] = swift_getMetatypeMetadata();
    v6[0] = a1;
    sub_24EE93D6C(a2, v6);
    return sub_24E601704(v6, &qword_27F2129B0, &unk_24F945320);
  }

  return result;
}

void sub_24EB3E6E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(void *), uint64_t a8, __n128 a9)
{
  v49 = a7;
  v47 = a6;
  v48 = *&a4;
  v51 = a3;
  v52 = a1;
  v46 = sub_24F9281B8();
  v12 = *(v46 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v46);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F9298B8();
  v45 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  if ((a5 & 1) == 0 && v48 > COERCE_DOUBLE(1))
  {
    v19 = *(v12 + 16);
    v44 = a2;
    v20 = v46;
    v19(v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v46);
    v21 = *(v12 + 80);
    v43[1] = a8;
    v22 = (v21 + 32) & ~v21;
    v43[0] = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v24 = v48;
    *(v23 + 16) = v18;
    *(v23 + 24) = v24;
    v25 = v20;
    a2 = v44;
    (*(v12 + 32))(v23 + v22, v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    v26 = v52;
    *(v23 + v43[0]) = v52;

    v27 = v26;
    sub_24F9298C8();

    (*(v45 + 8))(v17, v15);
  }

  v28 = v50;
  v50 = v49(v52);
  if (v28)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_24F93DE60;
    v30 = sub_24EB3EB94();
    v31 = MEMORY[0x253051C90](v28, v52);
    *(v29 + 56) = v30;
    *(v29 + 32) = v31;
    v32 = sub_24F9281A8();
  }

  else
  {
    v33 = *(v12 + 16);
    v34 = a2;
    v35 = v46;
    v33(v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v46);
    v49 = 0;
    v36 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    *&v37 = COERCE_DOUBLE(swift_allocObject());
    v48 = *&v37;
    *(v37 + 16) = v18;
    v45 = v18;
    v38 = *(v12 + 32);
    v38(v37 + v36, v14, v35);
    v33(v14, v51, v35);
    v39 = (v36 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v45;
    v38(v40 + v36, v14, v35);
    v41 = v52;
    *(v40 + v39) = v52;
    v53[3] = sub_24F9298F8();
    v53[4] = MEMORY[0x277D22078];
    v53[0] = v47;
    swift_retain_n();
    v42 = v41;

    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v53);
  }
}

unint64_t sub_24EB3EB94()
{
  result = qword_27F21C8E0;
  if (!qword_27F21C8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F21C8E0);
  }

  return result;
}

void sub_24EB3EBE0(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v14 = a4;
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v7 = sub_24F92AAE8();
    __swift_project_value_buffer(v7, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    sub_24F9283A8();
    v15[3] = MEMORY[0x277D839F8];
    *v15 = a2;
    sub_24F928438();
    sub_24E857CC8(v15);
    sub_24F92A5A8();

    swift_beginAccess();
    *(a1 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24F93DE60;
    v9 = sub_24EB3EB94();
    sub_24EA32FE4();
    v10 = swift_allocError();
    *v11 = 1;
    v12 = MEMORY[0x253051C90](v10, v14);

    *(v8 + 56) = v9;
    *(v8 + 32) = v12;
    v13 = sub_24F9281A8();
  }
}

void sub_24EB3EF7C(void **a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24F93DE60;
    *(v4 + 56) = sub_24EB3EB94();
    *(v4 + 32) = v3;
    v5 = v3;
    v6 = sub_24F9281A8();
  }
}

uint64_t sub_24EB3F220(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24EB3F2E4(void **a1, __n128 a2)
{
  sub_24F9281B8();
  v4 = *(v2 + 16);

  sub_24EB3EF7C(a1, v4);
}

void sub_24EB3F358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24F93DE60;
    v8 = sub_24EB3EB94();
    v9 = MEMORY[0x253051C90](a1, a4);
    *(v7 + 56) = v8;
    *(v7 + 32) = v9;
    v10 = sub_24F9281A8();
  }
}

uint64_t sub_24EB3F610(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24EB3F6E8(uint64_t a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24EB3F358(a1, v6, v2 + v5, v7);
}

uint64_t sub_24EB3F788(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24EB3F860(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24EB3EBE0(v4, v5, v1 + v3, v6);
}

unint64_t sub_24EB3F908()
{
  result = qword_27F2294C8;
  if (!qword_27F2294C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2294C8);
  }

  return result;
}

GameStoreKit::ArticlePage::TouchMode_optional __swiftcall ArticlePage.TouchMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArticlePage.TouchMode.rawValue.getter()
{
  v1 = 7233904;
  if (*v0 != 1)
  {
    v1 = 1869903201;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7375636F66;
  }
}

uint64_t sub_24EB3FA00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7233904;
  if (v2 != 1)
  {
    v4 = 1869903201;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7375636F66;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7233904;
  if (*a2 != 1)
  {
    v8 = 1869903201;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7375636F66;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
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

uint64_t sub_24EB3FAE0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EB3FB70(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EB3FBEC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EB3FC84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE300000000000000;
  v5 = 7233904;
  if (v2 != 1)
  {
    v5 = 1869903201;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7375636F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ArticlePage.__allocating_init(title:subtitle:card:shelves:footerLockup:arcadeFooterLockup:shareAction:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:touchMode:shouldTerminateOnClose:editorialStoryCard:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, unsigned __int8 a17, uint64_t a18)
{
  v71 = a3;
  v72 = a4;
  v70 = a2;
  v79 = a8;
  v80 = a18;
  v75 = a7;
  v76 = a14;
  v81 = a12;
  v82 = a13;
  v83 = a11;
  LODWORD(v74) = a17;
  LODWORD(v73) = a10;
  v77 = a15;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v21 - 8);
  v69 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  v29 = sub_24F928818();
  v78 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v33 = *a16;
  v34 = (v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);
  v35 = v70;
  v36 = v71;
  *v34 = a1;
  v34[1] = v35;
  v37 = (v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);
  v38 = v72;
  *v37 = v36;
  v37[1] = v38;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card) = a5;
  v71 = a5;

  v39 = sub_24EEF0A68(a6);
  v41 = v40;

  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering) = v39;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping) = v41;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup) = v75;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup) = v79;
  v72 = a9;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction) = a9;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) = v73;
  sub_24E60169C(v83, v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode) = v33;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose) = v74;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard) = v80;
  v42 = *(v78 + 16);
  v42(v31, v82, v29);
  v43 = v77;
  sub_24E60169C(v77, v28, &qword_27F2218B0, &unk_24F975980);
  *(v32 + 16) = v81;
  v73 = v29;
  v42((v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v31, v29);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v76;
  v74 = v28;
  sub_24E60169C(v28, v25, &qword_27F2218B0, &unk_24F975980);
  v44 = sub_24F9285B8();
  v68 = *(v44 - 8);
  v45 = *(v68 + 48);
  v46 = v25;
  if (v45(v25, 1, v44) == 1)
  {

    sub_24E601704(v43, &qword_27F2218B0, &unk_24F975980);
    v47 = *(v78 + 8);
    v48 = v73;
    v47(v82, v73);
    sub_24E601704(v83, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v74, &qword_27F2218B0, &unk_24F975980);
    v47(v31, v48);
    v49 = v46;
  }

  else
  {
    v70 = v25;
    v67 = v31;
    v50 = qword_27F2105F0;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v51, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v52 = v84;
    v53 = v82;
    v54 = v68;
    if (v84)
    {
    }

    v55 = *(v54 + 8);
    v55(v70, v44);
    v56 = v69;
    if (!v52)
    {

      sub_24E601704(v77, &qword_27F2218B0, &unk_24F975980);
      v60 = *(v78 + 8);
      v61 = v73;
      v60(v53, v73);
      sub_24E601704(v83, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v74, &qword_27F2218B0, &unk_24F975980);
      v60(v67, v61);
      return v32;
    }

    v57 = v74;
    sub_24E60169C(v74, v69, &qword_27F2218B0, &unk_24F975980);
    if (v45(v56, 1, v44) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v77, &qword_27F2218B0, &unk_24F975980);
      v62 = *(v78 + 8);
      v63 = v53;
      v64 = v73;
      v62(v63, v73);
      sub_24E601704(v83, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v57, &qword_27F2218B0, &unk_24F975980);
      v62(v67, v64);
      v55(v56, v44);
      return v32;
    }

    sub_24E601704(v77, &qword_27F2218B0, &unk_24F975980);
    v58 = *(v78 + 8);
    v59 = v73;
    v58(v53, v73);
    sub_24E601704(v83, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v57, &qword_27F2218B0, &unk_24F975980);
    v58(v67, v59);
    v49 = v56;
  }

  sub_24E601704(v49, &qword_27F2218B0, &unk_24F975980);
  return v32;
}

uint64_t ArticlePage.init(title:subtitle:card:shelves:footerLockup:arcadeFooterLockup:shareAction:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:touchMode:shouldTerminateOnClose:editorialStoryCard:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, unsigned __int8 a17, uint64_t a18)
{
  v19 = v18;
  v74 = a3;
  v75 = a4;
  v82 = a8;
  v83 = a18;
  v84 = a12;
  v85 = a13;
  v86 = a11;
  v80 = a7;
  v81 = a9;
  LODWORD(v77) = a17;
  LODWORD(v76) = a10;
  v78 = a14;
  v79 = a15;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v24 - 8);
  v70 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v69 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v69 - v30;
  v32 = sub_24F928818();
  MEMORY[0x28223BE20](v32);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a16;
  v36 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);
  *v36 = a1;
  v36[1] = a2;
  v37 = (v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);
  v38 = v75;
  *v37 = v74;
  v37[1] = v38;
  v40 = v39;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card) = a5;
  v75 = a5;

  v41 = sub_24EEF0A68(a6);
  v43 = v42;

  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering) = v41;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping) = v43;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup) = v80;
  v44 = v81;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup) = v82;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction) = v44;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) = v76;
  sub_24E60169C(v86, v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode) = v35;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose) = v77;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard) = v83;
  v77 = v40;
  v45 = *(v40 + 16);
  v45(v34, v85, v32);
  v46 = v79;
  sub_24E60169C(v79, v31, &qword_27F2218B0, &unk_24F975980);
  *(v19 + 16) = v84;
  v74 = v32;
  v45((v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v34, v32);
  *(v19 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v78;
  v76 = v31;
  sub_24E60169C(v31, v28, &qword_27F2218B0, &unk_24F975980);
  v47 = sub_24F9285B8();
  v48 = *(v47 - 8);
  v71 = v47;
  v72 = v48;
  v49 = *(v48 + 48);
  if ((v49)(v28, 1) == 1)
  {

    sub_24E601704(v46, &qword_27F2218B0, &unk_24F975980);
    v50 = *(v77 + 8);
    v51 = v74;
    v50(v85, v74);
    sub_24E601704(v86, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
    v50(v34, v51);
    v52 = v28;
  }

  else
  {
    v73 = v28;
    v69 = v34;
    v53 = qword_27F2105F0;

    if (v53 != -1)
    {
      swift_once();
    }

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v54, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v55 = v87;
    v56 = v71;
    v57 = v72;
    if (v87)
    {
    }

    v58 = *(v57 + 8);
    v58(v73, v56);
    if (!v55)
    {

      sub_24E601704(v79, &qword_27F2218B0, &unk_24F975980);
      v63 = *(v77 + 8);
      v64 = v74;
      v63(v85, v74);
      sub_24E601704(v86, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
      v63(v69, v64);
      return v19;
    }

    v59 = v76;
    v60 = v70;
    sub_24E60169C(v76, v70, &qword_27F2218B0, &unk_24F975980);
    if (v49(v60, 1, v56) != 1)
    {
      v65 = v60;
      sub_24ECDF110();

      sub_24E601704(v79, &qword_27F2218B0, &unk_24F975980);
      v66 = *(v77 + 8);
      v67 = v74;
      v66(v85, v74);
      sub_24E601704(v86, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v59, &qword_27F2218B0, &unk_24F975980);
      v66(v69, v67);
      v58(v65, v56);
      return v19;
    }

    sub_24E601704(v79, &qword_27F2218B0, &unk_24F975980);
    v61 = *(v77 + 8);
    v62 = v74;
    v61(v85, v74);
    sub_24E601704(v86, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v59, &qword_27F2218B0, &unk_24F975980);
    v61(v69, v62);
    v52 = v60;
  }

  sub_24E601704(v52, &qword_27F2218B0, &unk_24F975980);
  return v19;
}

void (*ArticlePage.init(deserializing:using:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v3 = v2;
  v109 = a2;
  v101 = *v3;
  v114 = sub_24F9285B8();
  v107 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v102 = &v90[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v106 = &v90[-v7];
  MEMORY[0x28223BE20](v8);
  v93 = &v90[-v9];
  MEMORY[0x28223BE20](v10);
  v108 = &v90[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v90[-v13];
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v98 = &v90[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v96 = &v90[-v19];
  MEMORY[0x28223BE20](v20);
  v92 = &v90[-v21];
  MEMORY[0x28223BE20](v22);
  v24 = &v90[-v23];
  MEMORY[0x28223BE20](v25);
  v27 = &v90[-v26];
  v28 = sub_24F92AC28();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v94 = &v90[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v33 = &v90[-v32];
  v110 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v34 = v28;
  v99 = v16;
  v37 = *(v16 + 8);
  v36 = v16 + 8;
  v35 = v37;
  v111 = v15;
  v37(v27, v15);
  if ((*(v29 + 48))(v14, 1, v34) == 1)
  {
    sub_24E601704(v14, &qword_27F2213B0, &qword_24F965EC0);
    v38 = sub_24F92AC38();
    sub_24EB43A3C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v39 = 0x7365766C656873;
    v40 = v101;
    v39[1] = 0xE700000000000000;
    v39[2] = v40;
    (*(*(v38 - 1) + 104))(v39, *MEMORY[0x277D22530], v38);
    swift_willThrow();
    (*(v107 + 8))(v109, v114);
    v35(v110, v111);
    type metadata accessor for ArticlePage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v104;
    v100 = v29;
    v101 = v34;
    v42 = *(v29 + 32);
    v97 = v33;
    v42(v33, v14, v34);
    sub_24F928398();
    v43 = sub_24F928278();
    v35(v24, v111);
    v91 = v43;
    v105 = v35;
    if (v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      v44 = swift_allocObject();
      *(v44 + 16) = MEMORY[0x277D84F90];
      *&v112 = v44;
      v45 = v93;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v46, qword_27F22D8D8);
      sub_24F928528();
    }

    else
    {
      v45 = v93;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v47, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      sub_24F928538();
    }

    v48 = v107;
    (*(v107 + 32))(v108, v45, v114);
    v49 = v92;
    sub_24F928398();
    v50 = sub_24F928348();
    v52 = v51;
    v53 = v111;
    v54 = v105;
    v105(v49, v111);
    v95 = v36;
    v55 = &v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title];
    *v55 = v50;
    v55[1] = v52;
    sub_24F928398();
    v56 = sub_24F928348();
    v58 = v57;
    v54(v49, v53);
    v59 = &v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle];
    *v59 = v56;
    v59[1] = v58;
    type metadata accessor for TodayCard(0);
    sub_24F928398();
    v60 = *(v48 + 16);
    v61 = v106;
    v62 = v114;
    (v60)(v106, v109, v114);
    v104 = v60;
    sub_24EB43A3C(&qword_27F2294D0, type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
    sub_24F929548();
    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card] = v112;
    (*(v100 + 16))(v94, v97, v101);
    (v60)(v61, v108, v62);
    v93 = (v48 + 16);
    type metadata accessor for Shelf(0);
    sub_24EB43A3C(&qword_27F2265E0, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    v63 = sub_24F92B6A8();
    v64 = sub_24EEF0A68(v63);
    v66 = v65;

    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering] = v64;
    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping] = v66;
    type metadata accessor for Lockup(0);
    sub_24F928398();
    v67 = v109;
    v68 = v114;
    v69 = v104;
    (v104)(v61, v109, v114);
    sub_24EB43A3C(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
    sub_24F929548();
    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup] = v112;
    type metadata accessor for ArcadeLockup(0);
    sub_24F928398();
    v69(v61, v67, v68);
    sub_24EB43A3C(&qword_27F2294D8, type metadata accessor for ArcadeLockup, &protocol conformance descriptor for ArcadeLockup);
    sub_24F929548();
    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup] = v112;
    type metadata accessor for Action(0);
    v70 = v110;
    sub_24F928398();
    v71 = static Action.tryToMakeInstance(byDeserializing:using:)(v49, v67);
    v72 = v111;
    v73 = v105;
    v74 = v41;
    v105(v49, v111);
    *&v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction] = v71;
    v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete] = v91 & 1;
    sub_24F928398();
    sub_24F928368();
    v73(v49, v72);
    v75 = &v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage];
    v76 = v113;
    *v75 = v112;
    v75[1] = v76;
    sub_24F928398();
    sub_24EB439E8();
    sub_24F928208();
    v73(v49, v72);
    v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode] = v112;
    v77 = v96;
    sub_24F928398();
    LOBYTE(v71) = sub_24F928278();
    v73(v77, v72);
    v41[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose] = v71 & 1;
    type metadata accessor for EditorialStoryCard(0);
    sub_24F928398();
    v78 = v67;
    v79 = v67;
    v80 = v114;
    v81 = v104;
    (v104)(v106, v79, v114);
    sub_24EB43A3C(&qword_27F2294E8, type metadata accessor for EditorialStoryCard, &protocol conformance descriptor for EditorialStoryCard);
    sub_24F929548();
    *&v74[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard] = v112;
    v82 = v98;
    v83 = v70;
    v84 = v111;
    (*(v99 + 16))(v98, v83, v111);
    v85 = v102;
    v81(v102, v78, v80);
    v86 = v103;
    v87 = BasePage.init(deserializing:using:)(v82, v85);
    if (v86)
    {
      v38 = *(v107 + 8);
      v38(v78, v80);
      v105(v110, v84);
      v38(v108, v80);
    }

    else
    {
      v38 = v87;
      v88 = *(v107 + 8);
      v88(v78, v80);
      v105(v110, v84);
      v88(v108, v80);
    }

    (*(v100 + 8))(v97, v101);
  }

  return v38;
}

uint64_t ArticlePage.__allocating_init(copying:replacingCard:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v73 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  v16 = sub_24F928818();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  if (a1)
  {
    v87 = v9;
    v88 = v12;
    v86 = v21;
    v74 = v6;
    v93 = &v73 - v19;
    v94 = v15;
    v90 = v20;
    v92 = v18;
    v22 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title + 8);
    v83 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);
    v23 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle + 8);
    v81 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);
    v24 = a2;
    if (!a2)
    {
    }

    v89 = v24;
    v25 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
    swift_beginAccess();
    v26 = *(a1 + v25);
    v27 = MEMORY[0x277D84F90];
    v96[0] = MEMORY[0x277D84F90];
    v28 = *(v26 + 16);
    v29 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;
    v84 = a2;

    v82 = v22;

    v80 = v23;

    swift_beginAccess();
    if (v28)
    {
      v30 = 0;
      v91 = v28 - 1;
      while (1)
      {
        v31 = v26 + 32 + 40 * v30;
        v32 = v30;
        while (1)
        {
          if (v32 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_30;
          }

          sub_24E65864C(v31, v97);
          if (*(*(a1 + v29) + 16))
          {
            break;
          }

LABEL_7:
          ++v32;
          sub_24E6585F8(v97);
          v31 += 40;
          if (v28 == v32)
          {
            goto LABEL_15;
          }
        }

        sub_24E76D934(v97);
        if ((v33 & 1) == 0)
        {
          break;
        }

        v34 = sub_24E6585F8(v97);
        MEMORY[0x253050F00](v34);
        if (*((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v30 = v32 + 1;
        sub_24F92B638();
        v27 = v96[0];
        if (v91 == v32)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_7;
    }

LABEL_15:

    v35 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup);
    v36 = v27;
    v37 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup);
    v38 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction);
    LODWORD(v79) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete);
    memset(v97, 0, sizeof(v97));
    v39 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v78 = *(v90 + 16);
    v78(v93, a1 + v39, v92);
    v75 = *(a1 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    v85 = sub_24F9285B8();
    v91 = *(v85 - 8);
    (*(v91 + 56))(v94, 1, 1, v85);
    v77 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode);
    v76 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose);
    v40 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard);
    type metadata accessor for ArticlePage(0);
    v26 = swift_allocObject();
    v41 = (v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);
    v42 = v82;
    *v41 = v83;
    v41[1] = v42;
    v43 = (v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);
    v44 = v80;
    *v43 = v81;
    v43[1] = v44;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card) = v89;

    v45 = sub_24EEF0A68(v36);
    v47 = v46;

    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering) = v45;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping) = v47;
    v82 = v35;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup) = v35;
    v83 = v37;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup) = v37;
    v80 = v38;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction) = v38;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) = v79;
    sub_24E60169C(v97, v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0, &unk_24F945320);
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode) = v77;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose) = v76;
    v81 = v40;
    *(v26 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard) = v40;
    v48 = v86;
    v49 = v92;
    v50 = v78;
    v78(v86, v93, v92);
    v51 = v88;
    sub_24E60169C(v94, v88, &qword_27F2218B0, &unk_24F975980);
    *(v26 + 16) = 0;
    v52 = v49;
    v50(v26 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v48, v49);
    *(v26 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v75;
    v53 = v87;
    v54 = v85;
    sub_24E60169C(v51, v87, &qword_27F2218B0, &unk_24F975980);
    v55 = *(v91 + 48);
    if (v55(v53, 1, v54) == 1)
    {

      sub_24E601704(v51, &qword_27F2218B0, &unk_24F975980);
      v56 = *(v90 + 8);
      v56(v48, v52);
      sub_24E601704(v94, &qword_27F2218B0, &unk_24F975980);
      v56(v93, v52);
      sub_24E601704(v97, &qword_27F2129B0, &unk_24F945320);
      v57 = v53;
    }

    else
    {
      v79 = v55;
      v27 = v54;
      v58 = qword_27F2105F0;

      if (v58 != -1)
      {
LABEL_30:
        swift_once();
      }

      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v59, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      sub_24F9285C8();
      v60 = v95;
      v61 = v74;
      v62 = v88;
      if (v95)
      {
      }

      v63 = *(v91 + 8);
      v91 += 8;
      v63(v87, v27);
      if (!v60)
      {

        sub_24E601704(v62, &qword_27F2218B0, &unk_24F975980);
        v68 = *(v90 + 8);
        v69 = v92;
        v68(v86, v92);
        sub_24E601704(v94, &qword_27F2218B0, &unk_24F975980);
        v68(v93, v69);
        v66 = &qword_27F2129B0;
        v67 = &unk_24F945320;
        v57 = v97;
        goto LABEL_26;
      }

      sub_24E60169C(v62, v61, &qword_27F2218B0, &unk_24F975980);
      if (v79(v61, 1, v27) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v62, &qword_27F2218B0, &unk_24F975980);
        v71 = *(v90 + 8);
        v72 = v92;
        v71(v86, v92);
        sub_24E601704(v94, &qword_27F2218B0, &unk_24F975980);
        v71(v93, v72);
        sub_24E601704(v97, &qword_27F2129B0, &unk_24F945320);
        v63(v61, v85);
        return v26;
      }

      sub_24E601704(v62, &qword_27F2218B0, &unk_24F975980);
      v64 = *(v90 + 8);
      v65 = v92;
      v64(v86, v92);
      sub_24E601704(v94, &qword_27F2218B0, &unk_24F975980);
      v64(v93, v65);
      sub_24E601704(v97, &qword_27F2129B0, &unk_24F945320);
      v57 = v61;
    }

    v66 = &qword_27F2218B0;
    v67 = &unk_24F975980;
LABEL_26:
    sub_24E601704(v57, v66, v67);
    return v26;
  }

  return 0;
}

uint64_t ArticlePage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);

  return v1;
}

uint64_t ArticlePage.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);

  return v1;
}

uint64_t sub_24EB42848(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;
  swift_beginAccess();

  sub_24F159E30(v4, a1);
  v6 = v5;

  *(v1 + v3) = v6;
}

uint64_t sub_24EB428D4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = &v71 - v8;
  MEMORY[0x28223BE20](v9);
  v83 = &v71 - v10;
  MEMORY[0x28223BE20](v11);
  v88 = &v71 - v12;
  v80 = sub_24F928818();
  v13 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v84 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v90 = &v71 - v16;
  v79 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card);
  v17 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for ArticlePage);
  v18 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = MEMORY[0x277D84F90];
  v92[0] = MEMORY[0x277D84F90];
  v21 = *(v19 + 16);
  v22 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;

  swift_beginAccess();
  v87 = v13;
  if (v21)
  {
    v23 = 0;
    v24 = v19 + 32;
    v85 = v21 - 1;
    v89 = v17;
    v86 = v19 + 32;
    while (1)
    {
      v25 = v24 + 40 * v23;
      v26 = v23;
      while (1)
      {
        if (v26 >= *(v19 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        sub_24E65864C(v25, v93);
        if (*(*(a1 + v22) + 16))
        {
          break;
        }

LABEL_4:
        ++v26;
        sub_24E6585F8(v93);
        v25 += 40;
        if (v21 == v26)
        {
          v13 = v87;
          v17 = v89;
          goto LABEL_15;
        }
      }

      sub_24E76D934(v93);
      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = sub_24E6585F8(v93);
      MEMORY[0x253050F00](v28);
      if (*((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v23 = v26 + 1;
      sub_24F92B638();
      v20 = v92[0];
      v29 = v85 == v26;
      v24 = v86;
      v13 = v87;
      v17 = v89;
      if (v29)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_4;
  }

LABEL_15:

  *&v93[0] = v17;
  sub_24EA0AE3C(v20);
  v30 = *&v93[0];
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete))
  {
    v31 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete);
  }

  else
  {
    v31 = 0;
  }

  v32 = v90;
  v33 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup);
  v34 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup);
  v35 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction);
  memset(v93, 0, 32);
  v36 = *(v2 + 16);
  v86 = v35;
  v85 = v34;
  v78 = v33;
  LODWORD(v77) = v31;
  if (v36)
  {
    v81 = sub_24ED64DBC(*(a1 + 16));
  }

  else
  {
    v81 = *(a1 + 16);
  }

  v37 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v75 = *(v13 + 16);
  v38 = v80;
  v75(v32, v2 + v37, v80);
  v76 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v39 = sub_24F9285B8();
  v89 = *(v39 - 8);
  v40 = v88;
  (*(v89 + 56))(v88, 1, 1, v39);
  v74 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode);
  v73 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose);
  v41 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard);
  type metadata accessor for ArticlePage(0);
  v2 = swift_allocObject();
  v42 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_title);
  *v42 = 0;
  v42[1] = 0;
  v43 = (v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_subtitle);
  *v43 = 0;
  v43[1] = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card) = v79;

  v44 = sub_24EEF0A68(v30);
  v46 = v45;
  v47 = v38;

  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering) = v44;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping) = v46;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_footerLockup) = v78;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_arcadeFooterLockup) = v85;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shareAction) = v86;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) = v77;
  sub_24E60169C(v93, v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_touchMode) = v74;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shouldTerminateOnClose) = v73;
  v48 = v40;
  v79 = v41;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard) = v41;
  v49 = v84;
  v50 = v75;
  v75(v84, v90, v47);
  v51 = v48;
  v52 = v83;
  sub_24E60169C(v51, v83, &qword_27F2218B0, &unk_24F975980);
  *(v2 + 16) = v81;
  v50(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v49, v47);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v76;
  v53 = v82;
  sub_24E60169C(v52, v82, &qword_27F2218B0, &unk_24F975980);
  v54 = *(v89 + 48);
  if ((v54)(v53, 1, v39) == 1)
  {

    sub_24E601704(v52, &qword_27F2218B0, &unk_24F975980);
    v55 = *(v87 + 8);
    v55(v49, v47);
    sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
    v55(v90, v47);
    sub_24E601704(v93, &qword_27F2129B0, &unk_24F945320);
    v56 = v53;
  }

  else
  {
    v75 = v54;
    v77 = v39;
    v22 = v47;
    v57 = qword_27F2105F0;

    if (v57 != -1)
    {
LABEL_35:
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v58, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    v59 = v82;
    sub_24F9285C8();
    v60 = v91;
    v61 = v72;
    v62 = v83;
    if (v91)
    {
    }

    v63 = *(v89 + 8);
    v64 = v77;
    v89 += 8;
    v63(v59, v77);
    if (!v60)
    {

      sub_24E601704(v62, &qword_27F2218B0, &unk_24F975980);
      v68 = *(v87 + 8);
      v68(v84, v22);
      sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
      v68(v90, v22);
      v66 = &qword_27F2129B0;
      v67 = &unk_24F945320;
      v56 = v93;
      goto LABEL_31;
    }

    sub_24E60169C(v62, v61, &qword_27F2218B0, &unk_24F975980);
    if ((v75)(v61, 1, v64) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v62, &qword_27F2218B0, &unk_24F975980);
      v70 = *(v87 + 8);
      v70(v84, v22);
      sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
      v70(v90, v22);
      sub_24E601704(v93, &qword_27F2129B0, &unk_24F945320);
      v63(v61, v64);
      return v2;
    }

    sub_24E601704(v62, &qword_27F2218B0, &unk_24F975980);
    v65 = *(v87 + 8);
    v65(v84, v22);
    sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
    v65(v90, v22);
    sub_24E601704(v93, &qword_27F2129B0, &unk_24F945320);
    v56 = v61;
  }

  v66 = &qword_27F2218B0;
  v67 = &unk_24F975980;
LABEL_31:
  sub_24E601704(v56, v66, v67);
  return v2;
}

double sub_24EB43434()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0, &unk_24F945320);

  return result;
}

uint64_t ArticlePage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t ArticlePage.__deallocating_deinit()
{
  ArticlePage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EB43714@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24EB428D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24EB43744()
{
  v17 = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  v5 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;

  swift_beginAccess();
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
  do
  {
    v7 = v2 + 32 + 40 * v6;
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_24E65864C(v7, v15);
      if (*(*(v0 + v5) + 16))
      {
        break;
      }

LABEL_5:
      ++v8;
      sub_24E6585F8(v15);
      v7 += 40;
      if (v4 == v8)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v15);
    if ((v9 & 1) == 0)
    {

      goto LABEL_5;
    }

    v10 = sub_24E6585F8(v15);
    MEMORY[0x253050F00](v10);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v6 = v8 + 1;
    sub_24F92B638();
    v3 = v16;
  }

  while (v4 - 1 != v8);
LABEL_12:

  if (v3 >> 62)
  {
LABEL_21:
    result = sub_24F92C738();
    v12 = result;
    if (!result)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x253052270](i, v3);
        }

        else
        {
          v14 = *(v3 + 8 * i + 32);
        }

        sub_24ED7E294(v15, *(v14 + 16));
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_22:

    return v17;
  }

  return result;
}

uint64_t type metadata accessor for ArticlePage(uint64_t a1)
{
  result = qword_27F2294F8;
  if (!qword_27F2294F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EB439E8()
{
  result = qword_27F2294E0;
  if (!qword_27F2294E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2294E0);
  }

  return result;
}

uint64_t sub_24EB43A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EB43A88()
{
  result = qword_27F2294F0;
  if (!qword_27F2294F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2294F0);
  }

  return result;
}

uint64_t sub_24EB43D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24EB43D58()
{
  result = qword_27F216248;
  if (!qword_27F216248)
  {
    type metadata accessor for CancelSignInAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216248);
  }

  return result;
}

uint64_t sub_24EB43DB0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EB43E4C, 0, 0);
}

uint64_t sub_24EB43E4C()
{
  v1 = v0[4];
  v2 = type metadata accessor for Player(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v0[6] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_24EB43F30;
  v4 = v0[4];

  return sub_24F64B8C4(v4, v0 + 6);
}

uint64_t sub_24EB43F30()
{
  v1 = *(*v0 + 32);

  sub_24E637048(v1);

  return MEMORY[0x2822009F8](sub_24EB44048, 0, 0);
}

uint64_t sub_24EB44048()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24EB44110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v9 = sub_24F92A9E8();
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24F985030;
  v11[5] = v8;
  v11[6] = v9;

  sub_24E6959D8(0, 0, v7, &unk_24F94D7B0, v11);

  return v9;
}

uint64_t sub_24EB44294()
{

  return swift_deallocObject();
}

uint64_t sub_24EB442CC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24EB43DB0(a1, v4);
}

uint64_t sub_24EB44378()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EB443F0(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = sub_24E76D934(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a2();
    v9 = v12;
  }

  sub_24E6585F8(*(v9 + 48) + 40 * v7);
  v10 = *(*(v9 + 56) + 16 * v7);
  sub_24EB54E88(v7, v9);
  *v4 = v9;
  return v10;
}

uint64_t sub_24EB444BC(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = sub_24E76D934(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a2();
    v9 = v12;
  }

  sub_24E6585F8(*(v9 + 48) + 40 * v7);
  v10 = *(*(v9 + 56) + 8 * v7);
  sub_24EB540F0(v7, v9);
  *v4 = v9;
  return v10;
}

double sub_24EB4455C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24E7728CC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B6D00();
      v9 = v14;
    }

    v10 = *(v9 + 56) + 88 * v7;
    v11 = *(v10 + 48);
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = v11;
    *(a2 + 64) = *(v10 + 64);
    *(a2 + 80) = *(v10 + 80);
    v12 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v12;
    sub_24EB55E50(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_24EB44618@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_24E60D594(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229750, &unk_24F9853E8);
  swift_allocObject();
  *a2 = sub_24EA50028();
  v4 = swift_allocObject();
  swift_weakInit();
  if (a1)
  {

    sub_24EC61F04(sub_24EB5B2F8, v4, &v8);
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v5 = v9;
  *(a2 + 8) = v8;
  *(a2 + 24) = v5;
  if ((a1 & 2) != 0)
  {
    sub_24EC61F2C(sub_24EB5B2F8, v4, &v8);
  }

  else
  {

    v8 = 0u;
    v9 = 0u;
  }

  v6 = v9;
  *(a2 + 40) = v8;
  *(a2 + 56) = v6;

  return result;
}

double sub_24EB44764(uint64_t a1)
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24F93DE60;
    sub_24F927D78();
    v10[2] = v8;
    sub_24EB5B300(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
    v9 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v9);
    v10[-4] = sub_24EB449CC;
    v10[-3] = 0;
    v10[-2] = v7;
    sub_24F92BF08();
    (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_24EB449CC(void *a1)
{

  *a1 = MEMORY[0x277D84F98];
  return result;
}

uint64_t ArtworkIconFetcher.__allocating_init(objectGraph:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24EB44618(3, v2 + 16);
  v3 = sub_24E60D570(MEMORY[0x277D84F90]);
  *(v2 + 88) = a1;
  *(v2 + 96) = v3;
  return v2;
}

uint64_t ArtworkIconFetcher.init(objectGraph:)(uint64_t a1)
{
  sub_24EB44618(3, v1 + 16);
  v3 = sub_24E60D570(MEMORY[0x277D84F90]);
  *(v1 + 88) = a1;
  *(v1 + 96) = v3;
  return v1;
}

double sub_24EB44A94@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v7 = v6;
  v49 = a6;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a5, &v52, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v53 + 1))
  {
    v55 = v52;
    v56 = v53;
    v57 = v54;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v48 = v7;
    v18 = a1;
    v20 = v19;
    (*(v14 + 8))(v16, v13);
    v50 = v17;
    v51 = v20;
    a1 = v18;
    v7 = v48;
    sub_24F92C7F8();
    if (*(&v53 + 1))
    {
      sub_24E601704(&v52, &qword_27F235830, &qword_24F93B8C0);
    }
  }

  v21 = sub_24EB45738(a1);
  v23 = v22;
  if (*(v21 + 16))
  {
    if (!*(v22 + 16))
    {
      v37 = v21;

      a3(v37);

      goto LABEL_20;
    }

    if (a2)
    {
      a2();
    }
  }

  if (!*(v23 + 16))
  {
    v34 = v56;
    v35 = v49;
    *v49 = v55;
    v35[1] = v34;
    *(v35 + 4) = v57;

    return result;
  }

  v48 = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v7 + 96);
  *(v7 + 96) = 0x8000000000000000;
  sub_24E81F574(sub_24EB5752C, v24, &v55, isUniquelyReferenced_nonNull_native);
  *(v7 + 96) = v50;
  swift_endAccess();
  v26 = *(v23 + 16);
  if (v26)
  {
    *&v52 = MEMORY[0x277D84F90];
    sub_24F45814C(0, v26, 0);
    v27 = v52;
    v28 = (v23 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      *&v52 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);

      if (v32 >= v31 >> 1)
      {
        sub_24F45814C((v31 > 1), v32 + 1, 1);
        v27 = v52;
      }

      *(v27 + 16) = v32 + 1;
      v33 = v27 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      v28 += 3;
      --v26;
    }

    while (v26);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  type metadata accessor for JSIntentDispatcher();
  v38 = *(v7 + 88);
  sub_24F928FD8();
  sub_24F92A758();
  sub_24EB49530(0xD000000000000011, 0x800000024FA53CC0, v27, v38, "GameStoreKit/ArtworkIconFetcher.swift", 37, 2, &qword_27F229740, &qword_24F9853C8, &unk_2861E3E28, &unk_24F9853D8);

  v39 = swift_allocObject();
  swift_weakInit();
  sub_24E65864C(&v55, &v52);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  v41 = v53;
  *(v40 + 24) = v52;
  *(v40 + 40) = v41;
  v42 = v48;
  *(v40 + 56) = v54;
  *(v40 + 64) = v42;
  v43 = sub_24E74EC40();

  v44 = sub_24F92BEF8();
  *(&v53 + 1) = v43;
  v54 = MEMORY[0x277D225C0];
  *&v52 = v44;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(&v52);
LABEL_20:
  result = *&v55;
  v45 = v56;
  v46 = v49;
  *v49 = v55;
  v46[1] = v45;
  *(v46 + 4) = v57;
  return result;
}

void sub_24EB44FC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24F927D88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  swift_beginAccess();
  v13 = *(v12 + 96);
  if (!*(v13 + 16))
  {
    goto LABEL_28;
  }

  v14 = sub_24E76D934(a3);
  if ((v15 & 1) == 0)
  {

    goto LABEL_28;
  }

  v65 = a3;
  v16 = *(v13 + 56) + 16 * v14;
  v17 = *(v16 + 8);
  v63 = *v16;
  v64 = v17;

  v18 = *(a4 + 16);
  v67 = v12;
  swift_beginAccess();
  if (!v18)
  {
    v66 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v59 = v10;
  v61 = v7;
  v19 = 0;
  v60 = v8;
  v58 = v8 + 8;
  v20 = a4 + 40;
  v66 = MEMORY[0x277D84F90];
  v57 = xmmword_24F93DE60;
  v62 = a4 + 40;
  do
  {
    v21 = (v20 + 16 * v19);
    v22 = v19;
    while (1)
    {
      if (v22 >= v18)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_31;
      }

      v24 = *(v21 - 1);
      v23 = *v21;
      v25 = *(v68 + 16);
      v26 = *(v25 + 16);

      if (v26)
      {
        break;
      }

LABEL_12:
      v29 = v22 + 1;
      v30 = sub_24E60169C(v67 + 16, v73, &qword_27F229588, &qword_24F985038);
      v71 = v24;
      v72 = v23;
      MEMORY[0x28223BE20](v30);
      *(&v51 - 2) = &v71;
      MEMORY[0x28223BE20](v31);
      *(&v51 - 4) = sub_24EB5B0B0;
      *(&v51 - 3) = v32;
      *(&v51 - 2) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245A8, &qword_24F972010);
      sub_24F92BF18();

      v34 = v70;
      sub_24E601704(v73, &qword_27F229588, &qword_24F985038);
      if (v34)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_24E61886C(0, v66[2] + 1, 1, v66);
        }

        v19 = v22 + 1;
        goto LABEL_21;
      }

      ++v22;
      v21 += 2;
      if (v29 == v18)
      {
        goto LABEL_27;
      }
    }

    v27 = sub_24E7728F0(v24, v23);
    if ((v28 & 1) == 0)
    {

      goto LABEL_12;
    }

    v52 = v22;
    v34 = *(*(v25 + 56) + 8 * v27);

    v35 = v67;
    v36 = swift_beginAccess();
    v56 = &v51;
    v70 = v34;
    v71 = v24;
    v72 = v23;
    v53 = *(v35 + 16);
    MEMORY[0x28223BE20](v36);
    v54 = &v51 - 4;
    *(&v51 - 2) = &v71;
    *(&v51 - 1) = &v70;
    v55 = *(v37 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
    v38 = v60;
    v39 = swift_allocObject();
    *(v39 + 16) = v57;

    sub_24F927D78();
    v69 = v39;
    sub_24EB5B300(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
    v40 = v59;
    v41 = v61;
    v42 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v42);
    v43 = v54;
    *(&v51 - 4) = sub_24EB5B0D8;
    *(&v51 - 3) = v43;
    *(&v51 - 2) = v53;
    sub_24F92BF08();
    (*(v38 + 8))(v40, v41);

    swift_endAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_24E61886C(0, v66[2] + 1, 1, v66);
    }

    v22 = v52;
LABEL_21:
    v45 = v66[2];
    v44 = v66[3];
    if (v45 >= v44 >> 1)
    {
      v66 = sub_24E61886C((v44 > 1), v45 + 1, 1, v66);
    }

    v46 = v66;
    v66[2] = v45 + 1;
    v47 = &v46[2 * v45];
    v47[4] = v34;
    v47[5] = v22;
    v20 = v62;
  }

  while (v19 != v18);
LABEL_27:
  v73[0] = v66;
  v63(v73);

  swift_beginAccess();
  v48 = sub_24EB443F0(v65, sub_24E8B246C);
  v50 = v49;
  swift_endAccess();
  sub_24E824448(v48, v50);
LABEL_28:
}

uint64_t sub_24EB45738(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_beginAccess();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = a1 + 40;
  v21 = a1 + 40;
  v22 = MEMORY[0x277D84F90];
  do
  {
    v7 = (v6 + 16 * v4);
    v8 = v4;
    while (1)
    {
      if (v8 >= v2)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_22;
      }

      v25 = v8 + 1;
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = sub_24E60169C(v23 + 16, v29, &qword_27F229588, &qword_24F985038);
      v24 = &v21;
      v27 = v9;
      v28 = v10;
      MEMORY[0x28223BE20](v11);
      MEMORY[0x28223BE20](v12);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245A8, &qword_24F972010);
      sub_24F92BF18();
      v13 = v26;
      sub_24E601704(v29, &qword_27F229588, &qword_24F985038);
      if (v13)
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E618724(0, v5[2] + 1, 1, v5);
        v5 = result;
      }

      v15 = v5[2];
      v14 = v5[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_24E618724((v14 > 1), v15 + 1, 1, v5);
        v5 = result;
      }

      v5[2] = v15 + 1;
      v16 = &v5[3 * v15];
      v16[4] = v9;
      v16[5] = v10;
      v16[6] = v8++;
      v7 += 2;
      if (v25 == v2)
      {
        return v22;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E61886C(0, v22[2] + 1, 1, v22);
      v22 = result;
    }

    v4 = v25;
    v18 = v22[2];
    v17 = v22[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_24E61886C((v17 > 1), v18 + 1, 1, v22);
      v22 = result;
    }

    v19 = v22;
    v22[2] = v18 + 1;
    v20 = &v19[2 * v18];
    v20[4] = v13;
    v20[5] = v8;
    v6 = v21;
  }

  while (v4 != v2);
  return v22;
}

uint64_t sub_24EB45A18(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_24E76D934(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 96);
    v10 = *(v2 + 96);
    *(v2 + 96) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24E8B246C();
      v8 = v10;
    }

    sub_24E6585F8(*(v8 + 48) + 40 * v6);

    sub_24EB54E88(v6, v8);
    *(v2 + 96) = v8;
  }

  return swift_endAccess();
}

uint64_t ArtworkIconFetcher.deinit()
{
  sub_24E601704(v0 + 16, &qword_27F229588, &qword_24F985038);

  return v0;
}

uint64_t ArtworkIconFetcher.__deallocating_deinit()
{
  sub_24E601704(v0 + 16, &qword_27F229588, &qword_24F985038);

  return swift_deallocClassInstance();
}

uint64_t sub_24EB45B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for TopChartsPageIntent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229730, &qword_24F9853A8);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for TopChartsPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for TopChartsPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F9853B8, v21);

  return v16;
}

uint64_t sub_24EB45E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296B8, &qword_24F9852D0);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB59C60(a1, v21);
  v18 = swift_allocObject();
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = v21[2];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  *(v18 + 112) = a5;
  *(v18 + 120) = v16;
  *(v18 + 128) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F9852E0, v18);

  return v16;
}

uint64_t sub_24EB45FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v8 = *v5;
  v27 = a2;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222720, &qword_24F96A6A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226F8, &qword_24F96A680);
  v17 = sub_24F92A9E8();
  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_24E60169C(a1, v13, &qword_27F222720, &qword_24F96A6A0);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v6;
  sub_24E6009C8(v13, v22 + v19, &qword_27F222720, &qword_24F96A6A0);
  *(v22 + v20) = v27;
  v23 = v22 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v30;
  *v23 = v29;
  *(v23 + 1) = v24;
  v23[16] = v31;
  *(v22 + v21) = v17;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

  sub_24EA998B8(0, 0, v16, &unk_24F985428, v22);

  return v17;
}

uint64_t sub_24EB462B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226F8, &qword_24F96A680);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24E60169C(a1, v21, &qword_27F222710, &unk_24F96A690);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F985410, v18);

  return v16;
}

uint64_t sub_24EB46480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2295E8, &qword_24F985158);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB58150(a1, v25);
  v18 = swift_allocObject();
  v19 = v25[6];
  *(v18 + 152) = v25[7];
  v20 = v25[9];
  *(v18 + 168) = v25[8];
  *(v18 + 184) = v20;
  *(v18 + 200) = v25[10];
  v21 = v25[2];
  *(v18 + 88) = v25[3];
  v22 = v25[5];
  *(v18 + 104) = v25[4];
  *(v18 + 120) = v22;
  *(v18 + 136) = v19;
  v23 = v25[1];
  *(v18 + 40) = v25[0];
  *(v18 + 56) = v23;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 72) = v21;
  *(v18 + 216) = a2;
  *(v18 + 224) = a3;
  *(v18 + 232) = a4;
  *(v18 + 240) = a5;
  *(v18 + 248) = v16;
  *(v18 + 256) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F985168, v18);

  return v16;
}

uint64_t sub_24EB46678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v32 = a5;
  v30 = a3;
  v31 = a4;
  v7 = *v5;
  v28 = a2;
  v29 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78, &unk_24F96B6B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v27 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60, &qword_24F96B6A0);
  v26 = sub_24F92A9E8();
  v16 = sub_24F92B858();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v5;
  (*(v9 + 32))(&v20[v17], v12, v8);
  *&v20[v18] = v28;
  v21 = &v20[(v18 + 15) & 0xFFFFFFFFFFFFFFF8];
  v22 = v31;
  *v21 = v30;
  *(v21 + 1) = v22;
  v21[16] = v32;
  v23 = v26;
  *&v20[v19] = v26;
  *&v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8] = v29;

  sub_24EA998B8(0, 0, v27, &unk_24F985400, v20);

  return v23;
}

uint64_t sub_24EB4692C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60, &qword_24F96B6A0);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB597AC(a1, v21);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_24EA998B8(0, 0, v15, &unk_24F9852B0, v18);

  return v16;
}

uint64_t sub_24EB46AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for SocialMenuIntent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229590, &qword_24F985090);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for SocialMenuIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for SocialMenuIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F9850A0, v21);

  return v16;
}

uint64_t sub_24EB46D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ProductPageIntent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296C0, &qword_24F9852E8);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for ProductPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for ProductPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F9852F8, v21);

  return v16;
}

uint64_t sub_24EB4700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ArcadePageIntent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229660, &qword_24F985230);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for ArcadePageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for ArcadePageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F985240, v21);

  return v16;
}

uint64_t sub_24EB472E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ArticlePageIntent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2296A8, &qword_24F9852B8);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for ArticlePageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for ArticlePageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F9852C8, v21);

  return v16;
}

uint64_t sub_24EB47578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ActionIntent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v25 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229718, &qword_24F985380);
  v16 = sub_24F92A9E8();
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_24EB5AD34(a1, v12, type metadata accessor for ActionIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_24EB5AECC(v12, v21 + v18, type metadata accessor for ActionIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_24EA998B8(0, 0, v25, &unk_24F985390, v21);

  return v16;
}
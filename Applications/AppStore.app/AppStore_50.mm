uint64_t sub_10058E7C8(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Shelf.ContentType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v10 = sub_1005D8420();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (v16 < 1)
    {
      v13 = 1;
    }

    else
    {
      dispatch thunk of ShelfPresenter.contentType(for:)();
      v13 = 0;
    }

    (*(v7 + 56))(v5, v13, 1, v6);
    v14 = (*(v12 + 96))(v5, v17, v10, v12);
    sub_10002B894(v5, &unk_100992460, &qword_1007B6BF0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_10058E9EC(uint64_t a1, void *a2)
{
  v4 = sub_10002849C(&qword_10098CB20, &qword_1007D61F0);
  __chkstk_darwin(v4);
  v6 = &v55 - v5;
  v7 = type metadata accessor for ShelfBackground();
  v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v66 = &v55 - v13;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  if (a1 < 1)
  {
    return 0;
  }

  v60 = a2;
  v61 = v16;
  v63 = v15;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() < 1)
  {
    return 0;
  }

  dispatch thunk of ShelfPresenter.background(for:)();
  v19 = v66;
  dispatch thunk of ShelfPresenter.background(for:)();
  v20 = *(v4 + 48);
  v21 = v65;
  v22 = *(v65 + 16);
  v22(v6, v18, v7);
  v62 = v20;
  v22(&v6[v20], v19, v7);
  v23 = v21[11];
  v24 = v23(v6, v7);
  v64 = v18;
  if (v24 != enum case for ShelfBackground.color(_:))
  {
LABEL_9:
    v40 = enum case for ShelfBackground.none(_:);
    v41 = v21[13];
    v41(v9, enum case for ShelfBackground.none(_:), v7);
    v65 = sub_100599198(&qword_100981230, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = v21[1];
    v43(v9, v7);
    if ((v42 & 1) == 0)
    {
      v41(v9, v40, v7);
      v44 = static ShelfBackground.== infix(_:_:)();
      v43(v9, v7);
      if (v44)
      {
        v43(v66, v7);
        v43(v64, v7);
LABEL_14:
        v43(&v6[v62], v7);
        v43(v6, v7);
        return 2;
      }
    }

    v41(v9, v40, v7);
    v45 = v64;
    v46 = static ShelfBackground.== infix(_:_:)();
    v43(v9, v7);
    if (v46)
    {
      v41(v9, v40, v7);
      v47 = v66;
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43(v9, v7);
      v43(v47, v7);
      v43(v45, v7);
      if ((v48 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v43(v66, v7);
      v43(v45, v7);
    }

    sub_10002B894(v6, &qword_10098CB20, &qword_1007D61F0);
    return 0;
  }

  v25 = v24;
  v26 = v63;
  v22(v63, v6, v7);
  v56 = v21[12];
  v56(v26, v7);
  v57 = *v26;
  v55 = sub_10002849C(&qword_100972A40, &unk_1007B3750);
  v58 = *(v55 + 48);
  v59 = v6;
  if (v23(&v6[v62], v7) != v25)
  {
    v39 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v39 - 8) + 8))(v26 + v58, v39);

    goto LABEL_8;
  }

  v28 = v61;
  v27 = v62;
  v22(v61, &v59[v62], v7);
  v56(v28, v7);
  v29 = *v28;
  v56 = *(v55 + 48);
  v30 = v60;
  v31 = [v60 traitCollection];
  v32 = v57;
  v33 = [v57 resolvedColorWithTraitCollection:v31];

  v34 = [v30 traitCollection];
  v35 = v27;
  v36 = [v29 resolvedColorWithTraitCollection:v34];

  sub_100005744(0, &qword_100970180, UIColor_ptr);
  LOBYTE(v34) = static NSObject.== infix(_:_:)();

  if (v34)
  {
    v37 = type metadata accessor for ShelfBackgroundStyle();
    v38 = *(*(v37 - 8) + 8);
    v38(v56 + v28, v37);
    v38(v63 + v58, v37);
LABEL_8:
    v6 = v59;
    v21 = v65;
    goto LABEL_9;
  }

  v50 = *(v65 + 8);
  v50(v66, v7);
  v50(v64, v7);
  v51 = type metadata accessor for ShelfBackgroundStyle();
  v52 = v35;
  v53 = *(*(v51 - 8) + 8);
  v53(v56 + v28, v51);
  v53(v63 + v58, v51);
  v54 = v59;
  v50(&v59[v52], v7);
  v50(v54, v7);
  return 2;
}

double sub_10058F1CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v83 = a4;
  v95 = a3;
  v89 = a2;
  v79 = type metadata accessor for Shelf.PresentationHints();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v70 - v8;
  v9 = sub_10002849C(&unk_1009804F0, &unk_1007B3800);
  __chkstk_darwin(v9 - 8);
  v84 = &v70 - v10;
  v11 = type metadata accessor for ComponentLayoutOptions();
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = &v70 - v14;
  __chkstk_darwin(v15);
  v96 = &v70 - v16;
  v82 = type metadata accessor for IndexPath();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v19 - 8);
  v81 = &v70 - v20;
  v21 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v85 = *(v21 - 8);
  v86 = v21;
  __chkstk_darwin(v21);
  v92 = &v70 - v22;
  v23 = type metadata accessor for Shelf.ContentType();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.section.getter();
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v27 = sub_1005D8420();
  if (v27)
  {
    v72 = v28;
    v73 = v27;
    v91 = v26;
    v74 = v24;
    v75 = v23;
    IndexPath.section.getter();
    if (dispatch thunk of ShelfPresenter.doesShelfExist(for:)())
    {
      v29 = IndexPath.section.getter();
      v30 = sub_100596D4C(v29);
    }

    else
    {
      v30 = 0;
    }

    IndexPath.section.getter();
    if (dispatch thunk of ShelfPresenter.doesShelfExist(for:)())
    {
      IndexPath.section.getter();
      v90 = dispatch thunk of ShelfPresenter.shelf(for:)();
    }

    else
    {
      v90 = 0;
    }

    v71 = v30;
    v32 = v95;
    sub_100587504(v91, 0, v30, v95, v83);
    v34 = v33;
    v36 = v35;
    dispatch thunk of ShelfPresenter.model(at:)();
    (*(v80 + 16))(v18, a1, v82);
    StatePath<A>.init(_:)();
    v97 = *(v4 + 24);

    sub_10002849C(&unk_100980500, &unk_1007C5220);
    sub_100056080();
    StateLens.init<A>(contentsOf:in:)();
    ComponentLayoutOptions.init()();
    v37 = sub_1005934F8(a1, v32);
    v39 = v87;
    v38 = v88;
    if (v37)
    {
      v40 = v94;
      static ComponentLayoutOptions.separatorHidden.getter();
      v41 = v93;
      sub_10032B148(v93, v40);
      v42 = *(v39 + 8);
      v42(v40, v38);
      v42(v41, v38);
    }

    v43 = v84;
    dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
    v44 = type metadata accessor for ItemBackground();
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    sub_10002B894(v43, &unk_1009804F0, &unk_1007B3800);
    if (v45 != 1)
    {
      v46 = v94;
      static ComponentLayoutOptions.hasBackground.getter();
      v47 = v93;
      sub_10032B148(v93, v46);
      v48 = *(v39 + 8);
      v48(v46, v38);
      v48(v47, v38);
    }

    v49 = [v95 traitCollection];
    v50 = UITraitCollection.isSizeClassCompact.getter();

    v51 = v75;
    v52 = v74;
    if (v50)
    {
      v53 = v94;
      static ComponentLayoutOptions.isSingleVerticalColumn.getter();
      v54 = v93;
      sub_10032B148(v93, v53);
      v55 = *(v39 + 8);
      v55(v53, v38);
      v55(v54, v38);
    }

    if (!IndexPath.section.getter())
    {
      v56 = v94;
      static ComponentLayoutOptions.isFirstSection.getter();
      v57 = v93;
      sub_10032B148(v93, v56);
      v58 = *(v39 + 8);
      v58(v56, v38);
      v58(v57, v38);
    }

    if (v90)
    {

      v59 = v76;
      Shelf.presentationHints.getter();

      v60 = v77;
      static Shelf.PresentationHints.showSupplementaryText.getter();
      sub_100599198(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v61 = v79;
      v62 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v63 = *(v78 + 8);
      v63(v60, v61);
      v63(v59, v61);
      if (v62)
      {
        v64 = v94;
        static ComponentLayoutOptions.showSupplementaryText.getter();
        v65 = v93;
        sub_10032B148(v93, v64);
        v66 = *(v39 + 8);
        v66(v64, v38);
        v66(v65, v38);
      }
    }

    v67 = v92;
    v68 = v96;
    v31 = (*(v72 + 72))(v98, v71, v92, v89, v96, v95, v34, v36);

    (*(v39 + 8))(v68, v38);
    (*(v85 + 8))(v67, v86);
    sub_100007000(v98);
    (*(v52 + 8))(v91, v51);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    return 0.0;
  }

  return v31;
}

id sub_10058FB9C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  IndexPath.section.getter();
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v8 = Shelf.ContentType.string.getter();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_1000072B8(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = Shelf.ContentType.string.getter();
    v18 = v17;
    swift_beginAccess();
    isa = sub_1000DACDC(v16, v18);
    swift_endAccess();
  }

  else
  {

    Shelf.ContentType.string.getter();
    v20 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

void sub_10058FDE4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v264 = a6;
  v295 = a5;
  v294 = a4;
  v285 = a3;
  v299 = a2;
  v296 = *v6;
  v283 = type metadata accessor for ImpressionMetrics.ID();
  v282 = *(v283 - 8);
  __chkstk_darwin(v283);
  v251 = &v244 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = type metadata accessor for ImpressionMetrics();
  v286 = *(v290 - 1);
  __chkstk_darwin(v290);
  v256 = &v244 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v277 = &v244 - v11;
  __chkstk_darwin(v12);
  v274 = &v244 - v13;
  __chkstk_darwin(v14);
  v253 = &v244 - v15;
  __chkstk_darwin(v16);
  v254 = &v244 - v17;
  v259 = type metadata accessor for IndexSet();
  v258 = *(v259 - 8);
  __chkstk_darwin(v259);
  v257 = &v244 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = type metadata accessor for ShelfBackground();
  v272 = *(v273 - 8);
  __chkstk_darwin(v273);
  v271 = &v244 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for Shelf.PresentationHints();
  v269 = *(v270 - 8);
  __chkstk_darwin(v270);
  v268 = &v244 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&unk_1009804F0, &unk_1007B3800);
  __chkstk_darwin(v21 - 8);
  v23 = &v244 - v22;
  v288 = type metadata accessor for ComponentLayoutOptions();
  v287 = *(v288 - 8);
  __chkstk_darwin(v288);
  v25 = &v244 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v267 = &v244 - v27;
  __chkstk_darwin(v28);
  v289 = &v244 - v29;
  v30 = type metadata accessor for IndexPath();
  v279 = *(v30 - 8);
  __chkstk_darwin(v30);
  v263 = v31;
  v278 = &v244 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v32 - 8);
  v276 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v275 = *(v276 - 8);
  __chkstk_darwin(v276);
  v284 = &v244 - v33;
  v293 = type metadata accessor for Shelf.ContentType();
  v292 = *(v293 - 8);
  __chkstk_darwin(v293);
  v35 = &v244 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v280 = &v244 - v37;
  __chkstk_darwin(v38);
  v40 = &v244 - v39;
  v41 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v41 - 8);
  v260 = &v244 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v266 = &v244 - v44;
  __chkstk_darwin(v45);
  v265 = &v244 - v46;
  __chkstk_darwin(v47);
  v252 = &v244 - v48;
  __chkstk_darwin(v49);
  v255 = &v244 - v50;
  __chkstk_darwin(v51);
  v53 = &v244 - v52;
  v54 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  __chkstk_darwin(v54 - 8);
  v261 = &v244 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v262 = &v244 - v57;
  *&v59 = __chkstk_darwin(v58).n128_u64[0];
  v61 = &v244 - v60;
  [a1 setBackgroundColor:{0, v59}];
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  v297 = v6;
  v298 = *(v6 + 16);
  if (!v62 || !a1)
  {
    v249 = v30;
    v281 = a1;
    v75 = v296[10];
    v76 = v299;
    v291 = v296[12];
    if ((dispatch thunk of ShelfPresenter.doesModelExist(for:)() & 1) == 0)
    {
      return;
    }

    swift_getObjectType();
    v248 = swift_conformsToProtocol2();
    if (!v248)
    {
      __break(1u);
      return;
    }

    dispatch thunk of ShelfPresenter.model(at:)();
    v77 = *(v279 + 16);
    v246 = v279 + 16;
    v245 = v77;
    v77(v278, v76, v249);
    StatePath<A>.init(_:)();
    v305 = *(v297 + 24);

    sub_10002849C(&unk_100980500, &unk_1007C5220);
    sub_100056080();
    v78 = v299;
    WritableStateLens.init<A>(contentsOf:in:)();
    ComponentLayoutOptions.init()();
    v79 = sub_100592FC4(v78, v294);
    v80 = v267;
    if (v79)
    {
      static ComponentLayoutOptions.separatorHidden.getter();
      sub_10032B148(v80, v25);
      v81 = *(v287 + 8);
      v82 = v288;
      v81(v25, v288);
      v81(v80, v82);
    }

    dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
    v83 = type metadata accessor for ItemBackground();
    v84 = (*(*(v83 - 8) + 48))(v23, 1, v83);
    sub_10002B894(v23, &unk_1009804F0, &unk_1007B3800);
    if (v84 != 1)
    {
      static ComponentLayoutOptions.hasBackground.getter();
      sub_10032B148(v80, v25);
      v85 = *(v287 + 8);
      v86 = v288;
      v85(v25, v288);
      v85(v80, v86);
    }

    if (!IndexPath.section.getter())
    {
      static ComponentLayoutOptions.isFirstSection.getter();
      sub_10032B148(v80, v25);
      v87 = *(v287 + 8);
      v88 = v288;
      v87(v25, v288);
      v87(v80, v88);
    }

    IndexPath.section.getter();
    v89 = v280;
    dispatch thunk of ShelfPresenter.contentType(for:)();
    IndexPath.section.getter();
    v250 = v75;
    v90 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
    v91 = v292;
    v92 = v89;
    v93 = v293;
    (*(v292 + 16))(v35, v92, v293);
    v94 = (*(v91 + 88))(v35, v93);
    v95 = v295;
    if (v94 == enum case for Shelf.ContentType.smallLockup(_:) || v94 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v94 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v94 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v94 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v94 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v94 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v94 == enum case for Shelf.ContentType.editorialCard(_:) || v94 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v94 == enum case for Shelf.ContentType.brick(_:) || v94 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v94 == enum case for Shelf.ContentType.reviews(_:) || v94 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v94 == enum case for Shelf.ContentType.framedVideo(_:) || v94 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v94 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v94 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v94 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v94 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v94 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v94 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v94 == enum case for Shelf.ContentType.posterLockup(_:) || v94 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v94 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v94 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v292 + 8))(v35, v293);
              goto LABEL_43;
            }

LABEL_38:
            if (v90)
            {
              goto LABEL_39;
            }

LABEL_43:
            v111 = [v294 traitCollection];
            v112 = UITraitCollection.isSizeClassCompact.getter();

            if ((v112 & 1) == 0)
            {
              v247 = 0;
              v115 = v289;
LABEL_46:
              v119 = v281;
              ObjectType = swift_getObjectType();
              IndexPath.section.getter();
              dispatch thunk of ShelfPresenter.shelf(for:)();
              v121 = v268;
              Shelf.presentationHints.getter();

              (*(v248 + 80))(&v307, v284, v95, v115, v121, v294, ObjectType);
              (*(v269 + 8))(v121, v270);
              IndexPath.section.getter();
              v122 = v271;
              dispatch thunk of ShelfPresenter.background(for:)();
              v123 = sub_1001AAD64();
              (*(v272 + 8))(v122, v273);
              if ([v119 overrideUserInterfaceStyle] != v123)
              {
                [v119 setOverrideUserInterfaceStyle:v123];
              }

              sub_10002C0AC(&v307, &v305);
              *(&v303 + 1) = sub_100005744(0, &qword_100978E10, UICollectionViewCell_ptr);
              *&v302 = v119;
              v124 = v119;
              tryToFetch(artworkFor:into:on:asPartOf:)();
              sub_10002B894(&v305, &unk_10097DBE0, &unk_1007BCA00);
              sub_100007000(&v302);
              swift_getObjectType();
              v125 = swift_conformsToProtocol2();
              if (v125 && v119)
              {
                v126 = v125;
                v127 = swift_getObjectType();
                v128 = *(v126 + 8);
                v129 = v124;
                v130 = v128(v127, v126);
                v119 = v281;
                v131 = v130;
                v132 = (v130 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
                v133 = *(v130 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
                v134 = v132[1];
                *v132 = 0;
                v132[1] = 0;
                sub_10001F63C(v133, v134);
                [*&v131[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
              }

              swift_getObjectType();
              v135 = swift_conformsToProtocol2();
              v136 = v274;
              if (v135 && v119)
              {
                v137 = swift_allocObject();
                swift_weakInit();
                v138 = v278;
                v139 = v249;
                v245(v278, v299, v249);
                v140 = v279;
                v141 = (*(v279 + 80) + 40) & ~*(v279 + 80);
                v142 = (v263 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
                v143 = swift_allocObject();
                *(v143 + 2) = v250;
                v144 = v291;
                *(v143 + 3) = v296[11];
                *(v143 + 4) = v144;
                (*(v140 + 32))(&v143[v141], v138, v139);
                v119 = v281;
                *&v143[v142] = v137;
                v145 = &v124[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
                v146 = *&v124[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
                v147 = *&v124[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler + 8];
                *v145 = sub_100597A6C;
                v145[1] = v143;
                v148 = v124;

                sub_10001F63C(v146, v147);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                type metadata accessor for VideoPlaybackCoordinator();
                type metadata accessor for BaseObjectGraph();
                v149 = v124;
                inject<A, B>(_:from:)();
                v150 = v305;
                swift_getObjectType();
                v151 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
                v152 = v149;
                dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

                v119 = v281;
              }

              *&v300[0] = v124;
              *(&v300[0] + 1) = v248;
              v153 = v124;
              sub_10002849C(&qword_100980510, &qword_1007C7570);
              sub_10002849C(&qword_100980518, &qword_1007C7578);
              if (swift_dynamicCast())
              {
                sub_100005A38(&v302, &v305);
                type metadata accessor for VideoPlaybackCoordinator();
                type metadata accessor for BaseObjectGraph();
                inject<A, B>(_:from:)();
                v154 = v302;
                sub_10002A400(&v305, v306);
                dispatch thunk of ManagedVideoViewProviding.registerVideos(with:)();

                sub_100007000(&v305);
              }

              else
              {
                v304 = 0;
                v303 = 0u;
                v302 = 0u;
                sub_10002B894(&v302, &unk_100980520, &unk_1007C7580);
              }

              v155 = v247;
              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                type metadata accessor for PlaybackCoordinator();
                v156 = v153;
                BaseObjectGraph.optional<A>(_:)();
                v157 = v305;
                if (v305)
                {
                  v158 = v156;
                  v159 = v157;
                  dispatch thunk of PlaybackCoordinator.register(playableView:)();

                  v156 = v159;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                sub_10002C0AC(&v307, &v302);
                v160 = v153;
                sub_10002849C(&qword_100973D50, &unk_1007B3840);
                sub_10002849C(&unk_100980530, &qword_1007B69B0);
                if (swift_dynamicCast())
                {
                  sub_100005A38(v300, &v305);
                  sub_10002A400(&v305, v306);
                  if (dispatch thunk of SearchAdOpportunityProviding.searchAdOpportunity.getter())
                  {
                    SearchAdOpportunity.searchAd.getter();
                  }

                  v119 = v281;
                  swift_getObjectType();
                  dispatch thunk of SearchAdDisplaying.apply(searchAd:asPartOf:)();

                  sub_100007000(&v305);
                }

                else
                {

                  v301 = 0;
                  memset(v300, 0, sizeof(v300));
                  sub_10002B894(v300, &unk_100992FE0, &qword_1007BBDD0);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                swift_getObjectType();
                v161 = v153;
                dispatch thunk of AnyAvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)();
              }

              IndexPath.section.getter();
              dispatch thunk of ShelfPresenter.shelf(for:)();
              if (v155)
              {
                v162 = [v264 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v163 = swift_dynamicCastClass();
                if (v163)
                {
                  v164 = v163;
                  v165 = [v163 _orthogonalScrollingSections];
                  v166 = v257;
                  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

                  v119 = v281;
                  v167 = IndexPath.section.getter();
                  v168 = IndexSet.contains(_:)(v167);
                  (*(v258 + 8))(v166, v259);
                  if (v168)
                  {
                    [v153 frame];
                    v170 = v169;
                    v172 = v171;
                    v174 = v173;
                    v176 = v175;
                    v177 = v255;
                    Shelf.impressionMetrics.getter();
                    v178 = v286;
                    v179 = *(v286 + 48);
                    v180 = v290;
                    if (v179(v177, 1, v290) == 1)
                    {

                      (*(v292 + 8))(v280, v293);
                      (*(v287 + 8))(v289, v288);
                      (*(v275 + 8))(v284, v276);
                      sub_100007000(&v307);
                      sub_10002B894(v177, &qword_100973D30, &unk_1007B1DC0);
                      return;
                    }

                    v212 = v254;
                    v298 = *(v178 + 32);
                    v298(v254, v177, v180);
                    sub_10002C0AC(&v307, &v305);
                    sub_10002A400(&v305, v306);
                    v213 = v252;
                    dispatch thunk of ViewModel.impressionMetrics.getter();
                    if (v179(v213, 1, v180) == 1)
                    {

                      (*(v286 + 8))(v212, v180);
                      (*(v292 + 8))(v280, v293);
                      (*(v287 + 8))(v289, v288);
                      (*(v275 + 8))(v284, v276);
                      sub_100007000(&v307);
                      v193 = v213;
                      goto LABEL_92;
                    }

                    v294 = v172;
                    v295 = v170;
                    v298(v253, v213, v180);
                    [v164 _layoutFrameForSection:IndexPath.section.getter()];
                    v215 = v214;
                    v217 = v216;
                    v219 = v218;
                    v221 = v220;
                    [v164 _offsetForOrthogonalScrollingSection:IndexPath.section.getter()];
                    v223 = v297;
                    v224 = *(v297 + 112);
                    v225 = v289;
                    if (v224)
                    {
                      v226 = v222;

                      v227 = v254;
                      v228 = v215;
                      ImpressionsCalculator.addElement(_:at:)();

                      v229 = v286;
                      v230 = v217;
                      if (*(v223 + 112))
                      {

                        v231 = v251;
                        ImpressionMetrics.id.getter();
                        v302 = v226;
                        *&v303 = v219;
                        *(&v303 + 1) = v221;
                        LOBYTE(v304) = 0;
                        v224 = ImpressionsCalculator.childCalculator(for:viewBounds:)();

                        (*(v282 + 8))(v231, v283);
                      }

                      else
                      {
                        v224 = 0;
                      }

                      v232 = v276;
                      v233 = v275;
                      v234 = *&v295;
                    }

                    else
                    {
                      v228 = v215;
                      v229 = v286;
                      v232 = v276;
                      v233 = v275;
                      v227 = v254;
                      v234 = *&v295;
                      v230 = v217;
                    }

                    v235 = *&v294;
                    v308.origin.x = v228;
                    v308.origin.y = v230;
                    v308.size.width = v219;
                    v308.size.height = v221;
                    v236 = -CGRectGetMinY(v308);
                    v309.origin.x = v234;
                    v309.origin.y = v235;
                    v309.size.width = v174;
                    v309.size.height = v176;
                    v310 = CGRectOffset(v309, 0.0, v236);
                    x = v310.origin.x;
                    y = v310.origin.y;
                    width = v310.size.width;
                    height = v310.size.height;
                    v241 = v253;
                    if (v224)
                    {

                      ImpressionsCalculator.addElement(_:at:)();
                    }

                    sub_100597414(&v305, v224, x, y, width, height);

                    v242 = *(v229 + 8);
                    v243 = v290;
                    v242(v241, v290);
                    v242(v227, v243);
                    (*(v292 + 8))(v280, v293);
                    (*(v287 + 8))(v225, v288);
                    (*(v233 + 8))(v284, v232);
                    goto LABEL_102;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                v181 = v153;
                [v181 frame];
                sub_10058AD70(v182, v183, v184, v185);
                swift_getObjectType();
                dispatch thunk of NestedModelImpressionsRecording.impressionsCalculator.setter();
              }

              v186 = v265;
              Shelf.impressionMetrics.getter();
              v187 = v286;
              v188 = *(v286 + 48);
              v189 = v290;
              if (v188(v186, 1, v290) == 1)
              {
                v190 = v186;
                v191 = v289;
                sub_10002B894(v190, &qword_100973D30, &unk_1007B1DC0);
              }

              else
              {
                (*(v187 + 32))(v136, v186, v189);
                if (*(v297 + 112))
                {

                  [v153 frame];
                  ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();
                }

                v191 = v289;
                (*(v187 + 8))(v136, v189);
              }

              sub_10002C0AC(&v307, &v305);
              sub_10002A400(&v305, v306);
              v192 = v266;
              dispatch thunk of ViewModel.impressionMetrics.getter();
              if (v188(v192, 1, v189) == 1)
              {

                (*(v292 + 8))(v280, v293);
                (*(v287 + 8))(v191, v288);
                (*(v275 + 8))(v284, v276);
                sub_100007000(&v307);
                v193 = v192;
LABEL_92:
                sub_10002B894(v193, &qword_100973D30, &unk_1007B1DC0);
LABEL_103:
                sub_100007000(&v305);
                return;
              }

              v194 = v189;
              (*(v187 + 32))(v277, v192, v189);
              v195 = v260;
              Shelf.impressionMetrics.getter();
              if (v188(v195, 1, v189) == 1)
              {
                sub_10002B894(v195, &qword_100973D30, &unk_1007B1DC0);
                v196 = 1;
                v197 = v283;
                v198 = v282;
                v199 = v262;
              }

              else
              {
                v199 = v262;
                ImpressionMetrics.id.getter();
                (*(v187 + 8))(v195, v194);
                v196 = 0;
                v197 = v283;
                v198 = v282;
              }

              v200 = v261;
              (*(v198 + 56))(v199, v196, 1, v197);
              if (*(v297 + 112))
              {
                sub_100031660(v199, v200, &qword_100990A90, &unk_1007B5670);
                v201 = (*(v198 + 48))(v200, 1, v197);

                if (v201 == 1)
                {
                  sub_10002B894(v200, &qword_100990A90, &unk_1007B5670);
                }

                else
                {
                  ImpressionMetrics.ID.element.getter();
                  (*(v198 + 8))(v200, v197);
                }

                v202 = v256;
                ImpressionMetrics.withParentId(_:)();

                [v153 frame];
                ImpressionsCalculator.addElement(_:at:)();

                (*(v187 + 8))(v202, v290);
              }

              [v153 frame];
              v204 = v203;
              v206 = v205;
              v208 = v207;
              v210 = v209;
              v211 = *(v297 + 112);

              sub_100597414(&v305, v211, v204, v206, v208, v210);

              sub_10002B894(v199, &qword_100990A90, &unk_1007B5670);
              (*(v187 + 8))(v277, v290);
              (*(v292 + 8))(v280, v293);
              (*(v287 + 8))(v191, v288);
              (*(v275 + 8))(v284, v276);
LABEL_102:
              sub_100007000(&v307);
              goto LABEL_103;
            }

            static ComponentLayoutOptions.isSingleVerticalColumn.getter();
            v247 = 0;
LABEL_45:
            v113 = v80;
            v114 = v80;
            v115 = v289;
            sub_10032B148(v113, v25);
            v116 = *(v287 + 8);
            v117 = v25;
            v118 = v288;
            v116(v117, v288);
            v116(v114, v118);
            goto LABEL_46;
          }
        }
      }
    }

LABEL_39:
    static ComponentLayoutOptions.fixedHeightContainer.getter();
    v247 = 1;
    goto LABEL_45;
  }

  v291 = v62;
  v63 = a1;
  IndexPath.section.getter();
  v64 = v296[10];
  v287 = v296[12];
  v65 = dispatch thunk of ShelfPresenter.shelf(for:)();
  v289 = v63;
  [v63 frame];
  v288 = sub_10058AD70(v66, v67, v68, v69);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v70 = v307;
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v71 = v307;
  Shelf.impressionMetrics.getter();
  v72 = v286;
  v73 = v290;
  if ((*(v286 + 48))(v53, 1, v290) == 1)
  {
    sub_10002B894(v53, &qword_100973D30, &unk_1007B1DC0);
    v74 = 1;
  }

  else
  {
    ImpressionMetrics.id.getter();
    (*(v72 + 8))(v53, v73);
    v74 = 0;
  }

  (*(v282 + 56))(v61, v74, 1, v283);
  v96 = v70;
  v290 = v96;
  v97 = v297;
  v98 = sub_10058B038(v61, v70, v71, 0);

  sub_10002B894(v61, &qword_100990A90, &unk_1007B5670);
  type metadata accessor for ShelfComponentContainerDelegate(0, v64, v296[11], v287);
  v296 = v71;
  v99 = v298;
  swift_unknownObjectRetain();
  v100 = IndexPath.section.getter();
  Shelf.contentType.getter();
  v101 = Shelf.ContentType.doesModelContainment.getter();
  (*(v292 + 8))(v40, v293);
  v102 = *(v97 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  v286 = v98;
  v104 = sub_1005A2660(v99, v100, v101 & 1, v102, v98, &protocol witness table for CompoundScrollObserver, v288, Strong);

  swift_unknownObjectRetain();

  v105 = v289;
  v106 = swift_getObjectType();
  v107 = IndexPath.section.getter();
  WitnessTable = swift_getWitnessTable();
  v109 = v291;
  v110 = *(v291 + 32);

  v110(v65, v107, v285, v295, v104, WitnessTable, v294, v106, v109);

  swift_unknownObjectRelease();
}

void sub_100592594(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v35 = a3;
  v8 = *v4;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  __chkstk_darwin(v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v13 - 8);
  v14 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v36 = *(v14 - 8);
  v37 = v14;
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v18 = [a4 cellForItemAtIndexPath:isa];

  if (v18)
  {
    v34 = a4;
    swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v19;
      v21 = v5[2];
      v22 = *(v8 + 96);
      v32[1] = *(v8 + 80);
      v32[2] = v21;
      v32[0] = v22;
      dispatch thunk of ShelfPresenter.model(at:)();
      v33 = *(v39 + 2);
      v33(v12, a1, v38);
      StatePath<A>.init(_:)();
      v40 = v5[3];

      sub_10002849C(&unk_100980500, &unk_1007C5220);
      sub_100056080();
      WritableStateLens.init<A>(contentsOf:in:)();
      ObjectType = swift_getObjectType();
      v24 = (*(v20 + 88))(v41, v16, v35, ObjectType, v20);
      v25 = v24;
      if (v24)
      {
        dispatch thunk of ShelfPresenter.didSelectItem(at:)();
        v26 = v34;
        if ((v25 & 2) == 0)
        {
LABEL_5:
          if ((v25 & 4) == 0)
          {
LABEL_7:

            (*(v36 + 8))(v16, v37);
            sub_100007000(v41);
            return;
          }

LABEL_6:
          sub_10002849C(&qword_10096FCE8, qword_1007BCF50);
          v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1007B10D0;
          v33((v28 + v27), a1, v38);
          v29 = Array._bridgeToObjectiveC()().super.isa;

          [v26 reloadItemsAtIndexPaths:v29];

          v18 = v29;
          goto LABEL_7;
        }
      }

      else
      {
        v26 = v34;
        if ((v24 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v31 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v26 deselectItemAtIndexPath:v31 animated:1];

      if ((v25 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    a4 = v34;
  }

  dispatch thunk of ShelfPresenter.didSelectItem(at:)();
  v39 = IndexPath._bridgeToObjectiveC()().super.isa;
  [a4 deselectItemAtIndexPath:v39 animated:1];
  v30 = v39;
}

uint64_t sub_100592A04(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != enum case for Shelf.ContentType.artwork(_:) && v7 != enum case for Shelf.ContentType.ribbonBar(_:) && v7 != enum case for Shelf.ContentType.ribbonFlow(_:) && v7 != enum case for Shelf.ContentType.paragraph(_:) && v7 != enum case for Shelf.ContentType.footnote(_:) && v7 != enum case for Shelf.ContentType.titledParagraph(_:) && v7 != enum case for Shelf.ContentType.reviewsContainer(_:) && v7 != enum case for Shelf.ContentType.reviewSummary(_:) && v7 != enum case for Shelf.ContentType.editorialLink(_:) && v7 != enum case for Shelf.ContentType.quote(_:) && v7 != enum case for Shelf.ContentType.framedArtwork(_:) && v7 != enum case for Shelf.ContentType.screenshots(_:) && v7 != enum case for Shelf.ContentType.appShowcase(_:) && v7 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v7 != enum case for Shelf.ContentType.linkableText(_:) && v7 != enum case for Shelf.ContentType.framedVideo(_:) && v7 != enum case for Shelf.ContentType.productDescription(_:) && v7 != enum case for Shelf.ContentType.banner(_:) && v7 != enum case for Shelf.ContentType.roundedButton(_:) && v7 != enum case for Shelf.ContentType.titledButtonStack(_:) && v7 != enum case for Shelf.ContentType.smallStoryCard(_:) && v7 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v7 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v7 != enum case for Shelf.ContentType.upsellBreakout(_:) && v7 != enum case for Shelf.ContentType.smallBreakout(_:) && v7 != enum case for Shelf.ContentType.arcadeFooter(_:) && v7 != enum case for Shelf.ContentType.editorialQuote(_:) && v7 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v7 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v7 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v7 != enum case for Shelf.ContentType.privacyHeader(_:) && v7 != enum case for Shelf.ContentType.privacyFooter(_:) && v7 != enum case for Shelf.ContentType.privacyCategory(_:) && v7 != enum case for Shelf.ContentType.privacyDefinition(_:) && v7 != enum case for Shelf.ContentType.heroCarousel(_:) && v7 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    (*(v3 + 8))(v6, v2);
    if (UITraitCollection.isSizeClassRegular.getter())
    {
      v8 = UITraitCollection.prefersAccessibilityLayouts.getter() ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t sub_100592DF8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Shelf.ContentType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  result = 0;
  if (v12 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v12 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v11, v7);
    swift_getObjectType();
    v15 = [a3 traitCollection];
    v16 = (*(*v3 + 696))(a1, v15);

    if (v16)
    {
      return sub_1005D8F34(a2, a3, a1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100592FC4(uint64_t a1, void *a2)
{
  v38 = a2;
  v4 = *v2;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v36 - v9;
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  v14 = v2[2];
  IndexPath.section.getter();
  v15 = *(v4 + 80);
  dispatch thunk of ShelfPresenter.contentType(for:)();
  IndexPath.section.getter();
  v39 = v15;
  v40 = v14;
  v16 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
  (*(v6 + 16))(v10, v13, v5);
  v17 = (*(v6 + 88))(v10, v5);
  if (v17 == enum case for Shelf.ContentType.smallLockup(_:) || v17 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v33 = v17 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v17 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v33 || v17 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_8;
  }

  if (v17 == enum case for Shelf.ContentType.editorialCard(_:) || v17 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  v19 = 1;
  if (v17 == enum case for Shelf.ContentType.brick(_:) || v17 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.reviews(_:) || v17 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v17 == enum case for Shelf.ContentType.framedVideo(_:) || v17 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v17 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v17 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v17 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v17 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v17 == enum case for Shelf.ContentType.posterLockup(_:) || v17 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_6:
    v19 = v16;
    goto LABEL_9;
  }

  if (v17 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v19 = v16;
    if (v17 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v6 + 8))(v10, v5);
      v19 = 0;
    }
  }

LABEL_9:
  v22 = *(v6 + 8);
  v20 = v6 + 8;
  v21 = v22;
  v22(v13, v5);
  v23 = IndexPath.section.getter();
  if (v19)
  {
    v24 = dispatch thunk of ShelfPresenter.rowsPerColumn(for:)();
    result = IndexPath.item.getter();
    if (!__OFADD__(result, 1))
    {
      if (v24)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v24 != -1)
        {
          return (result + 1) % v24 == 0;
        }

        goto LABEL_58;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v26 = sub_100596D4C(v23);
  v36[1] = v20;
  v27 = v26;
  IndexPath.section.getter();
  v28 = v37;
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v36[0] = a1;
  IndexPath.section.getter();
  v29 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  v30 = sub_100592DF8(v28, v29, v38);
  result = v21(v28, v5);
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_53;
  }

  if (!v30)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v27 == 0x8000000000000001 && v30 == -1)
  {
    goto LABEL_59;
  }

  v31 = (v27 - 1) % v30;
  v32 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    goto LABEL_56;
  }

  result = IndexPath.item.getter();
  if (__OFSUB__(v27, v32))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  return result >= v27 - v32;
}

uint64_t sub_1005934F8(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.section.getter();
  v6 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  IndexPath.section.getter();
  dispatch thunk of ShelfPresenter.contentType(for:)();
  IndexPath.section.getter();
  v7 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  v8 = sub_100592DF8(v5, v7, v14);
  result = (*(v3 + 8))(v5, v2);
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 == 0x8000000000000001 && v8 == -1)
  {
    goto LABEL_14;
  }

  v11 = (v6 - 1) % v8;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = IndexPath.item.getter();
    if (!__OFSUB__(v6, v12))
    {
      return result >= v6 - v12;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1005936C8(void *a1@<X0>, NSIndexSet *a2@<X8>)
{
  IndexSet._bridgeToObjectiveC()(a2);
  v4 = v3;
  [a1 insertSections:v3];
}

id sub_100593724(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a4;
  v29 = a3;
  v34 = a2;
  v32 = type metadata accessor for Shelf.PresentationHints();
  v8 = *(v32 - 8);
  *&v9 = __chkstk_darwin(v32).n128_u64[0];
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v13 = v12;
  v15 = v14;
  v33 = a1;
  dispatch thunk of ShelfPresenter.shelf(for:)();
  v16 = Shelf.items.getter();

  v17 = dispatch thunk of ShelfPresenter.rowsPerColumn(for:)();
  dispatch thunk of ShelfPresenter.shelf(for:)();
  Shelf.presentationHints.getter();

  v19 = v30;
  v18 = v31;
  v20 = (*(v28 + 64))(v16, v17, v11, v31, v30, v13, v15);

  (*(v8 + 8))(v11, v32);
  v21 = [objc_opt_self() sectionWithGroup:v20];
  v22 = [objc_opt_self() standardUserDefaults];
  v23 = NSUserDefaults.shelfOrthogonalScrollingBehavior.getter();

  [v21 setOrthogonalScrollingBehavior:v23];
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  [v21 setInterGroupSpacing:?];
  sub_10058A454(v33, v34, v19, v18);
  aBlock[4] = sub_100597B78;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006BBC70;
  aBlock[3] = &unk_1008C9600;
  v25 = _Block_copy(aBlock);

  [v21 setVisibleItemsInvalidationHandler:v25];
  _Block_release(v25);

  return v21;
}

id sub_100593A40(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  type metadata accessor for ShelfComponentContainerDelegate(0, *(*v9 + 80), *(*v9 + 88), *(*v9 + 96));
  v13 = v8[2];
  swift_unknownObjectRetain();
  v14 = Shelf.ContentType.doesModelContainment.getter();
  v16 = v9[3];
  v15 = v9[4];
  v17 = v9[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = sub_1005A2660(v13, a1, v14 & 1, v16, v15, v17, 0, Strong);

  swift_unknownObjectRetain();

  v20 = dispatch thunk of ShelfPresenter.shelf(for:)();
  WitnessTable = swift_getWitnessTable();
  v22 = *(a6 + 24);

  v23 = v22(a1, v20, a8, v19, WitnessTable, a7, a2, a3);
  v25 = v24;

  v26 = objc_opt_self();
  v27 = [v26 absoluteDimension:v23];
  v28 = [v26 absoluteDimension:v25];
  v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

  v30 = [objc_opt_self() itemWithLayoutSize:v29];
  v31 = objc_opt_self();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007B0B70;
  *(v32 + 32) = v30;
  sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
  v33 = v30;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v31 verticalGroupWithLayoutSize:v29 subitems:isa];

  v36 = [objc_opt_self() sectionWithGroup:v35];
  [v36 setOrthogonalScrollingBehavior:0];

  return v36;
}

void sub_100593D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v105 = a7;
  v104 = a6;
  v125 = a5;
  v117 = type metadata accessor for Shelf.ContentType();
  v13 = *(v117 - 8);
  __chkstk_darwin(v117);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_10098CB30, qword_1007D61F8);
  __chkstk_darwin(v16 - 8);
  v119 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v98 - v19;
  v124 = sub_10002849C(&qword_10096FE10, &qword_1007B1498);
  v112 = *(v124 - 8);
  __chkstk_darwin(v124);
  v110 = &v98 - v21;
  v126 = type metadata accessor for IndexPath();
  v22 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v109 = &v98 - v25;
  v111 = a1;
  v26 = sub_100596D4C(a1);
  if (v26 < 1)
  {
    return;
  }

  v120 = v13;
  v27 = v26;
  v28 = v125;
  [v125 pageMarginInsets];
  (*(a4 + 32))(0, v28, a3, a4, v29);
  v30 = sub_100592DF8(a2, v27, v28);
  v106 = v27;
  v31 = ceil(v27 / v30);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v99 = v31;
  if (v31 >= 1)
  {
    v32 = v30;
    v129 = _swiftEmptyArrayStorage;
    if ((v30 & 0x8000000000000000) == 0)
    {
      v100 = 0;
      v103 = (v22 + 16);
      v123 = (v22 + 8);
      v121 = (v112 + 48);
      v122 = (v112 + 56);
      v115 = (v120 + 16);
      v116 = (v22 + 32);
      v114 = (v120 + 88);
      v113 = enum case for Shelf.ContentType.privacyType(_:);
      v107 = (v120 + 8);
      v102 = xmmword_1007B1890;
      v33 = 0.0;
      v118 = v15;
      v34 = v119;
      v35 = v124;
      v108 = v30;
      v101 = a2;
      while (1)
      {
        if (v32)
        {
          v46 = v100 * v32;
          if ((v100 * v32) >> 64 != (v100 * v32) >> 63)
          {
            goto LABEL_60;
          }

          v47 = 0;
          v48 = 0.0;
          v49 = _swiftEmptyArrayStorage;
          v50 = v106;
          while (1)
          {
            v51 = v46 + v47;
            if (__OFADD__(v46, v47))
            {
              break;
            }

            if (v51 < v50)
            {
              sub_10002849C(&qword_100980550, &qword_1007B1290);
              v52 = swift_allocObject();
              *(v52 + 16) = v102;
              *(v52 + 32) = v111;
              *(v52 + 40) = v51;
              v53 = v109;
              IndexPath.init(arrayLiteral:)();
              v54 = sub_10058F1CC(v53, v105, v125, v104);
              v56 = v55;
              v57 = (v110 + *(v35 + 48));
              (*v103)();
              *v57 = v54;
              v57[1] = v56;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v49 = sub_100034394(0, v49[2] + 1, 1, v49);
              }

              v59 = v49[2];
              v58 = v49[3];
              v32 = v108;
              if (v59 >= v58 >> 1)
              {
                v49 = sub_100034394((v58 > 1), v59 + 1, 1, v49);
              }

              (*v123)(v109, v126);
              v49[2] = v59 + 1;
              sub_1000476A0(v110, v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v59, &qword_10096FE10, &qword_1007B1498);
              if (v48 <= v56)
              {
                v48 = v56;
              }

              v35 = v124;
              v50 = v106;
            }

            if (v32 == ++v47)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v48 = 0.0;
        v49 = _swiftEmptyArrayStorage;
LABEL_26:
        v60 = 0;
        ++v100;
        v61 = _swiftEmptyArrayStorage;
        v128 = _swiftEmptyArrayStorage;
        v62 = v49[2];
        v63 = v48;
        v64 = v101;
        v120 = v62;
        if (v62)
        {
LABEL_27:
          if (v60 < v49[2])
          {
            sub_100031660(v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v60, v34, &qword_10096FE10, &qword_1007B1498);
            v65 = 0;
            ++v60;
            goto LABEL_30;
          }

          goto LABEL_59;
        }

        while (1)
        {
          v65 = 1;
          v60 = v62;
LABEL_30:
          (*v122)(v34, v65, 1, v35);
          sub_1000476A0(v34, v20, &qword_10098CB30, qword_1007D61F8);
          if ((*v121)(v20, 1, v35) == 1)
          {
            break;
          }

          v66 = &v20[*(v35 + 48)];
          v67 = *v66;
          v68 = v66[1];
          (*v116)(v127, v20, v126);
          v69 = v117;
          (*v115)(v15, v64, v117);
          v70 = (*v114)(v15, v69);
          if (v70 == v113)
          {
            v71 = [v125 traitCollection];
            v72 = UITraitCollection.isSizeClassRegular.getter();

            if (v72)
            {
              v63 = v48;
              v68 = v48;
            }
          }

          else
          {
            (*v107)(v15, v69);
          }

          v73 = objc_opt_self();
          v74 = [v73 absoluteDimension:v67];
          v75 = [v73 absoluteDimension:v68];
          v76 = [objc_opt_self() sizeWithWidthDimension:v74 heightDimension:v75];

          v77 = v76;
          sub_100595204(v127, v67, v68);
          sub_100005744(0, &qword_100982860, NSCollectionLayoutSupplementaryItem_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v79 = [objc_opt_self() itemWithLayoutSize:v77 supplementaryItems:isa];

          if (v32 == 1)
          {
            sub_10058B978(v111, v125);
            if (v81 == 0.0 && v80 == 0.0)
            {
              v82 = objc_opt_self();
              v83 = [v82 flexibleSpacing:0.0];
              v84 = [v82 flexibleSpacing:0.0];
              v85 = v8;
              v86 = [objc_opt_self() spacingForLeading:v83 top:0 trailing:v84 bottom:0];

              [v79 setEdgeSpacing:v86];
              v8 = v85;
              v32 = v108;
              v64 = v101;
            }
          }

          v87 = v79;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*v123)(v127, v126);
          v61 = v128;
          v15 = v118;
          v34 = v119;
          v35 = v124;
          v62 = v120;
          if (v60 != v120)
          {
            goto LABEL_27;
          }
        }

        if (v61 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() != 1 || !_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_8:
            v36 = objc_opt_self();
            v37 = objc_opt_self();
            v38 = [v37 fractionalWidthDimension:1.0];
            v39 = [v37 estimatedDimension:v63];
            v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

            sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
            v41 = Array._bridgeToObjectiveC()().super.isa;

            v42 = [v36 horizontalGroupWithLayoutSize:v40 subitems:v41];

            v43 = sub_10058BFB8(v111, v125);
            v44 = [objc_opt_self() fixedSpacing:v43];
            [v42 setInterItemSpacing:v44];

            v45 = v42;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v15 = v118;
            v34 = v119;
            v35 = v124;
            goto LABEL_11;
          }
        }

        else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_8;
        }

        if ((v61 & 0xC000000000000001) != 0)
        {
          v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v88 = *(v61 + 32);
        }

        v89 = v88;

        v45 = v89;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_11:

        v33 = v33 + v63 + 0.0;
        if (v100 == v99)
        {
          v90 = objc_opt_self();
          v91 = [v90 fractionalWidthDimension:1.0];
          v92 = [v90 estimatedDimension:v33];
          v93 = [objc_opt_self() sizeWithWidthDimension:v91 heightDimension:v92];

          v94 = objc_opt_self();
          sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
          v95 = Array._bridgeToObjectiveC()().super.isa;

          v96 = [v94 verticalGroupWithLayoutSize:v93 subitems:v95];

          v97 = [objc_opt_self() fixedSpacing:0.0];
          [v96 setInterItemSpacing:v97];

          [objc_opt_self() sectionWithGroup:v96];
          return;
        }
      }
    }

    goto LABEL_65;
  }
}

void *sub_100594BFC(uint64_t a1)
{
  v1 = type metadata accessor for ShelfBackground();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ShelfPresenter.background(for:)();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v2 + 96))(v4, v1);

    v6 = *(sub_10002849C(&qword_100978420, qword_1007BF850) + 48);
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007B0B70;
    v8 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 backgroundDecorationItemWithElementKind:v9];

    *(v7 + 32) = v10;
    v11 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v11 - 8) + 8))(&v4[v6], v11);
  }

  else if (v5 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v2 + 96))(v4, v1);

    v12 = sub_10002849C(&qword_100978418, qword_1007BD670);
    v13 = v12[12];
    v14 = v12[16];
    v15 = v12[20];
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007B0B70;
    v16 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v16 backgroundDecorationItemWithElementKind:v17];

    *(v7 + 32) = v18;
    v19 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v19 - 8) + 8))(&v4[v15], v19);
    v20 = type metadata accessor for ShelfBackgroundGradientLocation();
    v21 = *(*(v20 - 8) + 8);
    v21(&v4[v14], v20);
    v21(&v4[v13], v20);
  }

  else if (v5 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v2 + 96))(v4, v1);
    v22 = *(sub_10002849C(&qword_100978410, &unk_1007C3880) + 48);
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007B0B70;
    v23 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v24 = String._bridgeToObjectiveC()();

    v25 = [v23 backgroundDecorationItemWithElementKind:v24];

    *(v7 + 32) = v25;
    v26 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v26 - 8) + 8))(&v4[v22], v26);
    v27 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
    (*(*(v27 - 8) + 8))(v4, v27);
  }

  else if (v5 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v28 = enum case for ShelfBackground.interactive(_:);
    v29 = v5;
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007B0B70;
    v30 = objc_opt_self();
    if (v29 == v28)
    {
      type metadata accessor for InteractiveSectionBackgroundView(0);
      static UICollectionReusableView.elementKind.getter();
      v31 = String._bridgeToObjectiveC()();

      v32 = [v30 backgroundDecorationItemWithElementKind:v31];

      *(v7 + 32) = v32;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      static UICollectionReusableView.elementKind.getter();
      v33 = String._bridgeToObjectiveC()();

      v34 = [v30 backgroundDecorationItemWithElementKind:v33];

      *(v7 + 32) = v34;
      (*(v2 + 8))(v4, v1);
    }
  }

  return v7;
}

void *sub_100595204(uint64_t a1, double a2, double a3)
{
  v5 = sub_10002849C(&unk_1009804F0, &unk_1007B3800);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for ItemBackground();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002B894(v7, &unk_1009804F0, &unk_1007B3800);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    v15 = (*(v9 + 88))(v11, v8);
    if (v15 == enum case for ItemBackground.ad(_:) || v15 == enum case for ItemBackground.insetAd(_:) || v15 == enum case for ItemBackground.clearAdWithSeparator(_:))
    {
      v18 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{-8.0, -8.0}];
      v19 = objc_opt_self();
      v20 = [v19 absoluteDimension:a2 + 16.0];
      v21 = [v19 absoluteDimension:a3];
      v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

      v23 = v22;
      sub_10051A5AC();
      v24 = v18;
      v25 = String._bridgeToObjectiveC()();

      v26 = [objc_opt_self() supplementaryItemWithLayoutSize:v23 elementKind:v25 containerAnchor:v24];

      [v26 setZIndex:-1];
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1007B0B70;
      *(v27 + 32) = v26;

      (*(v9 + 8))(v14, v8);
      return v27;
    }

    v29 = *(v9 + 8);
    v29(v14, v8);
    v29(v11, v8);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100595610(uint64_t a1, uint64_t a2)
{
  v45 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = type metadata accessor for ImpressionMetrics();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = type metadata accessor for IndexSet.Index();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10002849C(&qword_100970C78, &qword_1007B1EE0);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  IndexSet.makeIterator()();
  swift_beginAccess();
  type metadata accessor for IndexSet();
  sub_100599198(&qword_100970C80, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    dispatch thunk of Collection.endIndex.getter();
    sub_100599198(&qword_100970C88, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = dispatch thunk of Collection.subscript.read();
    v22 = *v21;
    v20(v49, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_1003D7340(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          ImpressionsCalculator.removeElement(_:)();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_10004A954(v16, v22);
    swift_endAccess();
    v50 = v22;
    AnyHashable.init<A>(_:)();
    v17 = v44;
    StatePath.init(component:)();
    TransientStateStore.removeState(at:recursively:)();
    (*v41)(v17, v45);
  }

  return sub_10002B894(v15, &qword_100970C78, &qword_1007B1EE0);
}

uint64_t sub_100595BA8(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = type metadata accessor for IndexSet.Index();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100970C78, &qword_1007B1EE0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  IndexSet.makeIterator()();
  type metadata accessor for IndexSet();
  sub_100599198(&qword_100970C80, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_100599198(&qword_100970C88, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v12 = v23;
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = dispatch thunk of Collection.subscript.read();
    v16 = *v15;
    v14(v24, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v24[6] = v16;
    AnyHashable.init<A>(_:)();
    v17 = v20;
    StatePath.init(component:)();
    TransientStateStore.removeState(at:recursively:)();
  }

  return sub_10002B894(v9, &qword_100970C78, &qword_1007B1EE0);
}

void sub_100595EEC(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = type metadata accessor for IndexPath();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_100005744(0, &qword_100978E10, UICollectionViewCell_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = IndexPath.section.getter();
        AnyHashable.init<A>(_:)();
        v23 = v34;
        StatePath.init(component:)();
        TransientStateStore.removeState(at:recursively:)();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

BOOL sub_100596280(uint64_t a1)
{
  v1 = type metadata accessor for Shelf.ContentType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  dispatch thunk of ShelfPresenter.contentType(for:)();
  (*(v2 + 32))(v4, v7, v1);
  v8 = (*(v2 + 88))(v4, v1);
  if (v8 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v9 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v8 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v9 = type metadata accessor for InformationRibbonCollectionViewCell(0);
  }

  else
  {
    (*(v2 + 8))(v4, v1);
    v9 = 0;
  }

  return v9 != 0;
}

uint64_t sub_100596434(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() > a1)
  {
    dispatch thunk of ShelfPresenter.contentType(for:)();
    if (!sub_100596280(a1) && ((*(*v2 + 696))(v11, a2) & 1) != 0)
    {
      (*(v6 + 32))(v8, v11, v5);
      v12 = (*(v6 + 88))(v8, v5);
      v13 = v12 == enum case for Shelf.ContentType.annotation(_:) || v12 == enum case for Shelf.ContentType.productCapability(_:);
      v14 = v13 || v12 == enum case for Shelf.ContentType.productPageLink(_:);
      v15 = v14 || v12 == enum case for Shelf.ContentType.privacyType(_:);
      v11 = v8;
      if (v15)
      {
        return 1;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return 0;
}

uint64_t sub_100596664(char a1, id a2)
{
  v3 = [a2 traitCollection];
  v4 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v5 = 1;
  if ((a1 & 1) == 0)
  {
    v5 = 2;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

double sub_1005966CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    dispatch thunk of ShelfPresenter.didSelectSeeAll(for:)();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100596774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100980550, &qword_1007B1290);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007B1890;
  *(v11 + 32) = IndexPath.section.getter();
  *(v11 + 40) = a1;
  IndexPath.init(arrayLiteral:)();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    dispatch thunk of ShelfPresenter.didSelectNestedItem(at:)();
    swift_unknownObjectRelease();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1005968F0()
{
  sub_100589554();

  return swift_deallocClassInstance();
}

void sub_10059693C(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  __chkstk_darwin(v9);
  v39 = &v32[-v10];
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_10072411C(v15, a1);

  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v37 = v4 + 32;
  v38 = v4 + 16;
  v36 = v4 + 88;
  v35 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
  v33 = enum case for Shelf.ContentType.informationRibbon(_:);
  v40 = a1;
  v41 = (v4 + 8);

  v23 = 0;
  v34 = v4;
  while (v21)
  {
LABEL_10:
    v25 = v39;
    v26 = *(v4 + 16);
    v26(v39, *(v40 + 48) + *(v4 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v3);
    (*(v4 + 32))(v17, v25, v3);
    v27 = v42;
    v26(v42, v17, v3);
    v28 = (*(v4 + 88))(v27, v3);
    if (v28 == v35)
    {
      type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    }

    else if (v28 == v33)
    {
      type metadata accessor for InformationRibbonCollectionViewCell(0);
    }

    else
    {
      (*v41)(v42, v3);
      if (!sub_1005D8420())
      {
        goto LABEL_4;
      }
    }

    if (v43)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      Shelf.ContentType.string.getter();
      v30 = v17;
      v31 = String._bridgeToObjectiveC()();

      [v43 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v31];

      v17 = v30;
      v4 = v34;
    }

LABEL_4:
    v21 &= v21 - 1;
    (*v41)(v17, v3);
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_100596D4C(uint64_t a1)
{
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() <= a1 || (dispatch thunk of ShelfPresenter.isShelfHidden(for:)() & 1) != 0)
  {
    return 0;
  }

  v3 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  if (sub_100596280(a1))
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

double sub_100596E08()
{
  TransientStateStore.removeAllState()();
  if (*(v0 + 112))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  return result;
}

uint64_t sub_100596E64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100972A20, &unk_1007B1EC0);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_100031660(a1, v9, &unk_100972A20, &unk_1007B1EC0);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10002B894(v9, &unk_100972A20, &unk_1007B1EC0);
    if (v2[14])
    {

      ImpressionsCalculator.removeAllElements()();
    }

    swift_beginAccess();
    v2[7] = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26[0] = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_10002849C(&unk_100980500, &unk_1007C5220);
    v21[0] = 0;
    sub_100056080();
    v16 = v22;
    StateStore.performTransaction<A>(_:)();

    (*(v11 + 8))(v15, v10);
  }

  sub_10058A878();
  sub_100031660(v24, v6, &unk_100972A20, &unk_1007B1EC0);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10002B894(v6, &unk_100972A20, &unk_1007B1EC0);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_10002849C(&unk_100980500, &unk_1007C5220);
  sub_100056080();
  StateStore.performTransaction<A>(_:)();

  return (*(v11 + 8))(v19, v10);
}

double sub_1005972B4(void *a1)
{
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StaticDimension();
  sub_1000056A8(v2, qword_1009D2460);
  v3 = [a1 traitCollection];
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v8 = v7;

  return v8;
}

void sub_1005973D0(void *a1)
{
  [a1 reloadData];

  sub_10058AC94(a1);
}

uint64_t sub_100597414(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v43 - v11;
  v12 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for ImpressionMetrics();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v45 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v43 - v22;
  v48 = a1;
  sub_10002C0AC(a1, v57);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  sub_10002849C(&qword_100973D58, &qword_1007B5680);
  if (swift_dynamicCast())
  {
    v52 = v17;
    v44 = v9;
    sub_100005A38(v55, v58);
    sub_10002A400(v58, v58[3]);
    v23 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v23)
    {
      v54 = v18;
      v43 = v23;
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v43 + 32;
        v26 = (v19 + 48);
        v46 = (v19 + 32);
        v49 = (v19 + 8);
        v47 = v14;
        do
        {
          sub_10002C0AC(v25, v57);
          sub_10002A400(v57, v57[3]);
          v27 = v52;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v57);
          v28 = *v26;
          v29 = v54;
          if ((*v26)(v27, 1, v54) == 1)
          {
            sub_10002B894(v27, &qword_100973D30, &unk_1007B1DC0);
          }

          else
          {
            (*v46)(v53, v27, v29);
            sub_10002A400(v48, v48[3]);
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v28(v14, 1, v29) == 1)
            {
              sub_10002B894(v14, &qword_100973D30, &unk_1007B1DC0);
              v30 = 1;
              v31 = v50;
            }

            else
            {
              v32 = v14;
              v31 = v50;
              ImpressionMetrics.id.getter();
              (*v49)(v32, v29);
              v30 = 0;
            }

            v33 = type metadata accessor for ImpressionMetrics.ID();
            v34 = *(v33 - 8);
            (*(v34 + 56))(v31, v30, 1, v33);
            if (v51)
            {
              v35 = v44;
              sub_100031660(v31, v44, &qword_100990A90, &unk_1007B5670);
              if ((*(v34 + 48))(v35, 1, v33) == 1)
              {
                v36 = v31;
                sub_10002B894(v35, &qword_100990A90, &unk_1007B5670);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v34 + 8))(v35, v33);
                v36 = v50;
              }

              v37 = v45;
              v38 = v53;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.addElement(_:at:)();
              v39 = *v49;
              v40 = v37;
              v41 = v54;
              (*v49)(v40, v54);
              sub_10002B894(v36, &qword_100990A90, &unk_1007B5670);
              v39(v38, v41);
            }

            else
            {
              sub_10002B894(v31, &qword_100990A90, &unk_1007B5670);
              (*v49)(v53, v54);
            }

            v14 = v47;
          }

          v25 += 40;
          --v24;
        }

        while (v24);
      }
    }

    return sub_100007000(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    return sub_10002B894(v55, &qword_100973D60, &qword_1007B5688);
  }
}

uint64_t sub_100597A6C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100596774(a1, v1 + v7, v8, v3, v4, v5);
}

void sub_100597BE4()
{
  v1 = *(type metadata accessor for IndexSet() - 8);
  v2 = *(v0 + 16);
  IndexSet._bridgeToObjectiveC()(((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = v3;
  [v2 insertSections:v3];
}

uint64_t sub_100597C78(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for ImpressionMetrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10002C0AC(a1, v53);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  sub_10002849C(&qword_100973D58, &qword_1007B5680);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v19 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10002C0AC(v21, v53);
          sub_10002A400(v53, v53[3]);
          v23 = v48;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10002B894(v23, &qword_100973D30, &unk_1007B1DC0);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10002A400(v44, v44[3]);
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10002B894(v10, &qword_100973D30, &unk_1007B1DC0);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              ImpressionMetrics.id.getter();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = type metadata accessor for ImpressionMetrics.ID();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_100031660(v27, v40, &qword_100990A90, &unk_1007B5670);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10002B894(v31, &qword_100990A90, &unk_1007B5670);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10002B894(v32, &qword_100990A90, &unk_1007B5670);
              v35(v34, v37);
            }

            else
            {
              sub_10002B894(v27, &qword_100990A90, &unk_1007B5670);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10002B894(v51, &qword_100973D60, &qword_1007B5688);
  }
}

void sub_10059826C(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v105 = *v4;
  v8 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  __chkstk_darwin(v8 - 8);
  v93 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = v89 - v11;
  v12 = type metadata accessor for Shelf.ContentType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v99 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v101 = v89 - v16;
  v17 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v17 - 8);
  v94 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v100 = v89 - v20;
  __chkstk_darwin(v21);
  v98 = v89 - v22;
  v23 = type metadata accessor for ImpressionMetrics();
  v102 = *(v23 - 8);
  v103 = v23;
  __chkstk_darwin(v23);
  v92 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v95 = v89 - v26;
  __chkstk_darwin(v27);
  v97 = v89 - v28;
  if (IndexPath.count.getter() >= 2)
  {
    v91 = v13;
    v89[3] = v4[2];
    v29 = *(v105 + 96);
    v89[2] = *(v105 + 80);
    v89[1] = v29;
    v30 = dispatch thunk of ShelfPresenter.doesModelExist(for:)();
    v31 = sub_100005744(0, &qword_100978E10, UICollectionViewCell_ptr);
    v110 = v31;
    v109[0] = a1;
    v32 = a1;
    v90 = v30;
    tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)();
    sub_100007000(v109);
    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    v104 = a2;
    if (v33 && v32)
    {
      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      v34 = v32;
      v89[0] = v31;
      v35 = v34;
      inject<A, B>(_:from:)();
      v36 = v109[0];
      swift_getObjectType();
      v37 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
      v38 = v35;
      dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
    }

    v108 = v32;
    v39 = v32;
    sub_10002849C(&qword_100980518, &qword_1007C7578);
    if (swift_dynamicCast())
    {
      sub_100005A38(v106, v109);
      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v40 = *&v106[0];
      sub_10002A400(v109, v110);
      dispatch thunk of ManagedVideoViewProviding.unregisterVideos(with:)();

      sub_100007000(v109);
    }

    else
    {
      v107 = 0;
      memset(v106, 0, sizeof(v106));
      sub_10002B894(v106, &unk_100980520, &unk_1007C7580);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v32)
    {
      type metadata accessor for PlaybackCoordinator();
      v41 = v39;
      BaseObjectGraph.optional<A>(_:)();
      v42 = v109[0];
      if (v109[0])
      {
        v43 = v41;
        v44 = v42;
        dispatch thunk of PlaybackCoordinator.unregister(playableView:)();

        v41 = v44;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v32)
    {
      swift_getObjectType();
      v45 = v39;
      dispatch thunk of AnyAvatarShowcaseDisplaying.unapply()();
    }

    swift_getObjectType();
    v46 = swift_conformsToProtocol2();
    v47 = v91;
    if (v46 && v32)
    {
      v48 = v46;
      ObjectType = swift_getObjectType();
      v50 = *(v48 + 8);
      v51 = v39;
      v50(ObjectType, v48);
    }

    if (v90)
    {
      swift_getObjectType();
      v52 = swift_conformsToProtocol2();
      if (v52 && v32)
      {
        v53 = v52;
        v54 = swift_getObjectType();
        v55 = *(v53 + 40);
        v56 = v39;
        v55(v54, v53);
      }

      v57 = IndexPath.section.getter();
      v58 = sub_100596280(v57);
      IndexPath.section.getter();
      if (v58)
      {
        dispatch thunk of ShelfPresenter.shelf(for:)();
        v59 = v98;
        Shelf.impressionMetrics.getter();
        v61 = v102;
        v60 = v103;
        if ((*(v102 + 48))(v59, 1, v103) == 1)
        {

          sub_10002B894(v59, &qword_100973D30, &unk_1007B1DC0);
        }

        else
        {
          v73 = v97;
          (*(v61 + 32))(v97, v59, v60);
          if (v5[14])
          {

            ImpressionsCalculator.removeElement(_:)();
          }

          (*(v61 + 8))(v73, v60);
        }

        return;
      }

      v62 = v101;
      dispatch thunk of ShelfPresenter.contentType(for:)();
      IndexPath.section.getter();
      v63 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
      v64 = v99;
      (*(v47 + 16))(v99, v62, v12);
      v65 = (*(v47 + 88))(v64, v12);
      v66 = v100;
      if (v65 == enum case for Shelf.ContentType.smallLockup(_:) || v65 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v65 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v65 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.editorialCard(_:) || v65 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.brick(_:) || v65 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.reviews(_:) || v65 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v65 == enum case for Shelf.ContentType.framedVideo(_:) || v65 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v65 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v65 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v65 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v65 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v65 == enum case for Shelf.ContentType.posterLockup(_:) || v65 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v63)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v88 = v100;
        (*(v47 + 8))(v64, v12);
        v66 = v88;
      }

      v67 = v66;
      v68 = dispatch thunk of ShelfPresenter.sectionCount.getter();
      if (IndexPath.section.getter() < v68)
      {
        v69 = IndexPath.item.getter();
        IndexPath.section.getter();
        if (v69 < dispatch thunk of ShelfPresenter.numberOfRows(for:)())
        {
          dispatch thunk of ShelfPresenter.model(at:)();
          sub_10002A400(v109, v110);
          dispatch thunk of ViewModel.impressionMetrics.getter();
          v70 = v67;
          v71 = v102;
          v72 = v103;
          v104 = *(v102 + 48);
          if (v104(v70, 1, v103) == 1)
          {
            (*(v47 + 8))(v62, v12);
            sub_10002B894(v70, &qword_100973D30, &unk_1007B1DC0);
          }

          else
          {
            (*(v71 + 32))(v95, v70, v72);
            IndexPath.section.getter();
            dispatch thunk of ShelfPresenter.shelf(for:)();
            v74 = v94;
            Shelf.impressionMetrics.getter();
            v75 = v5;
            if (v104(v74, 1, v72) == 1)
            {
              sub_10002B894(v74, &qword_100973D30, &unk_1007B1DC0);
              v76 = 1;
              v77 = v96;
            }

            else
            {
              v78 = v96;
              ImpressionMetrics.id.getter();
              v77 = v78;
              (*(v71 + 8))(v74, v72);
              v76 = 0;
            }

            v79 = type metadata accessor for ImpressionMetrics.ID();
            v80 = *(v79 - 8);
            (*(v80 + 56))(v77, v76, 1, v79);
            if (v75[14])
            {
              v81 = v93;
              sub_100031660(v77, v93, &qword_100990A90, &unk_1007B5670);
              v82 = (*(v80 + 48))(v81, 1, v79);

              if (v82 == 1)
              {
                sub_10002B894(v81, &qword_100990A90, &unk_1007B5670);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v80 + 8))(v81, v79);
              }

              v87 = v92;
              v86 = v95;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();

              v85 = v102;
              v84 = v103;
              (*(v102 + 8))(v87, v103);
              v83 = v75[14];
            }

            else
            {
              v83 = 0;
              v85 = v102;
              v84 = v103;
              v86 = v95;
            }

            sub_100597C78(v109, v83);

            sub_10002B894(v96, &qword_100990A90, &unk_1007B5670);
            (*(v85 + 8))(v86, v84);
            (*(v47 + 8))(v101, v12);
          }

          sub_100007000(v109);
          return;
        }
      }

LABEL_56:
      (*(v47 + 8))(v62, v12);
    }
  }
}

uint64_t sub_100599198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005991E8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B15F0;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();

  v7 = sub_100553DF8(0x6D69542074696157, 0xEF29636573282065, sub_1005999EC, a1, sub_100599458, 0);

  *(v6 + 32) = v7;
  swift_allocObject();

  v8 = sub_100553DF8(0xD00000000000001ELL, 0x800000010081AAF0, sub_100599A1C, a1, sub_100599504, 0);

  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B0B70;
  type metadata accessor for DebugSection();
  v10 = swift_allocObject();
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v10[2] = v11;
  v10[3] = v13;
  v10[4] = 0;
  v10[5] = 0xE000000000000000;
  v10[6] = v6;
  *(v9 + 32) = v10;
  return v9;
}

uint64_t sub_100599470(uint64_t a1, uint64_t (*a2)(void *))
{
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  v3 = inject<A, B>(_:from:)();
  a2(v3);

  return dispatch thunk of CustomStringConvertible.description.getter();
}

unsigned __int8 *sub_10059951C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_10002849C(&qword_1009839C0, &unk_1007CB150);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v41[-v12];
  type metadata accessor for LocalPreferences();
  result = a4();
  if (!a3 || ((v15 = HIBYTE(a3) & 0xF, v16 = a2 & 0xFFFFFFFFFFFFLL, (a3 & 0x2000000000000000) != 0) ? (v17 = HIBYTE(a3) & 0xF) : (v17 = a2 & 0xFFFFFFFFFFFFLL), !v17))
  {
    static LocalPreferences.AppStoreKit.getter();
    v44 = v7;
    v45 = sub_100599A4C();
    v23 = sub_1000056E0(&v42);
    (*(v8 + 16))(v23, v13, v7);
    LocalPreferences.removeValue(forKey:)();

    (*(v8 + 8))(v13, v7);
    return sub_100007000(&v42);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {

    sub_10070EC94(a2, a3, 10);
    v19 = v38;
    v40 = v39;

    if (v40)
    {
      return (*(v8 + 8))(v13, v7);
    }

    goto LABEL_65;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_63;
              }

              v29 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_63;
              }

              ++v27;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_63;
            }

            v34 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v19 = 0;
      LOBYTE(v15) = 1;
LABEL_64:
      v41[0] = v15;
      if (v15)
      {
        return (*(v8 + 8))(v13, v7);
      }

LABEL_65:
      static LocalPreferences.AppStoreKit.getter();
      (*(v8 + 16))(v10, v13, v7);
      v42 = v19;
      LOBYTE(v43) = 0;
      Preferences.subscript.setter();

      return (*(v8 + 8))(v13, v7);
    }

    if (v16 >= 1)
    {
      v15 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          v20 = result + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_63;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_63;
            }

            ++v20;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v15) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v42 = a2;
  v43 = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 != 45)
    {
      if (v15)
      {
        v19 = 0;
        v35 = &v42;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          v35 = (v35 + 1);
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v15)
    {
      if (--v15)
      {
        v19 = 0;
        v24 = &v42 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v15)
  {
    if (--v15)
    {
      v19 = 0;
      v30 = &v42 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v15)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_100599A4C()
{
  result = qword_10098CB60;
  if (!qword_10098CB60)
  {
    sub_10002D1A8(&qword_1009839C0, &unk_1007CB150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098CB60);
  }

  return result;
}

char *sub_100599AB0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for CornerStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_shadowView;
  *&v5[v17] = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_cardPlaceholder;
  v19 = *(v14 + 104);
  v42 = enum case for CornerStyle.continuous(_:);
  v41 = v19;
  v19(v16);
  type metadata accessor for RoundedCornerView();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 secondarySystemBackgroundColor];
  [v22 setBackgroundColor:v23];

  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  v40 = *(v14 + 8);
  v40(v16, v13);
  *&v5[v18] = v22;
  v24 = type metadata accessor for TodayCardPlaceholderView();
  v43.receiver = v5;
  v43.super_class = v24;
  v25 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v30 = OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_shadowView;
  v31 = qword_10096DA38;
  v32 = *&v29[OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_shadowView];
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Shadow();
  v34 = sub_1000056A8(v33, qword_1009CFD08);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v12, v34, v33);
  (*(v35 + 56))(v12, 0, 1, v33);
  dispatch thunk of ShadowView.shadow.setter();

  v36 = *&v29[v30];
  v41(v16, v42, v13);
  v37 = v36;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  v40(v16, v13);
  [v29 addSubview:*&v29[v30]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_cardPlaceholder]];

  return v29;
}

id sub_100599F88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayCardPlaceholderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10059A02C()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_shadowView;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_cardPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  type metadata accessor for RoundedCornerView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 secondarySystemBackgroundColor];
  [v10 setBackgroundColor:v11];

  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  (*(v3 + 8))(v5, v2);
  *(v1 + v7) = v10;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10059A214()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_1009D2AC0);
  sub_1000056A8(v0, qword_1009D2AC0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_10059A2B0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098CBA0);
  sub_1000056A8(v4, qword_10098CBA0);
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D14A8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10059A48C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098CBB8);
  sub_1000056A8(v4, qword_10098CBB8);
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1520);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10059A660(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for AutomationSemantics();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DirectionalTextAlignment();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - v17;
  v48 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel;
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D1490);
  v21 = *(v19 - 8);
  v55 = *(v21 + 16);
  v55(v18, v20, v19);
  v54 = *(v21 + 56);
  v54(v18, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v23 = *(v13 + 104);
  v53 = v13 + 104;
  v23(v15, enum case for DirectionalTextAlignment.none(_:), v12);
  v24 = type metadata accessor for DynamicTypeLabel();
  v25 = objc_allocWithZone(v24);
  v52 = v12;
  *&v5[v48] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v48 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel;
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v19, qword_1009D14A8);
  v55(v18, v26, v19);
  v54(v18, 0, 1, v19);
  v23(v15, v22, v52);
  v27 = objc_allocWithZone(v24);
  *&v5[v48] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v48 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel;
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v28 = sub_1000056A8(v19, qword_1009D1520);
  v55(v18, v28, v19);
  v54(v18, 0, 1, v19);
  v23(v15, v22, v52);
  v29 = objc_allocWithZone(v24);
  *&v5[v48] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_sizeCategory] = 7;
  v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_wantsCardConsistentMargins] = 1;
  v30 = &v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_clickActionHandler];
  v31 = type metadata accessor for TodayCardThreeLineOverlayView();
  *v30 = 0;
  v30[1] = 0;
  v60.receiver = v5;
  v60.super_class = v31;
  v32 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v33 = v32;
  v34 = static UIColor.todayCardDefaultBackground.getter();
  [v33 setBackgroundColor:v34];

  v35 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel;
  v36 = *&v33[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v37 = v36;
  v38 = v49;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v56);
  sub_10003D444(&v58);
  UIView.setAutomationSemantics(_:)();

  v39 = v51;
  v40 = *(v50 + 8);
  v40(v38, v51);
  v41 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel;
  v42 = *&v33[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v43 = v42;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v56);
  sub_10003D444(&v58);
  UIView.setAutomationSemantics(_:)();

  v40(v38, v39);
  v44 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel;
  v45 = *&v33[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v46 = v45;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v56);
  sub_10003D444(&v58);
  UIView.setAutomationSemantics(_:)();

  v40(v38, v39);
  [v33 addSubview:*&v33[v35]];
  [v33 addSubview:*&v33[v41]];
  [v33 addSubview:*&v33[v44]];

  return v33;
}

id sub_10059ADB4(uint64_t a1)
{
  v27.receiver = v1;
  v27.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  objc_msgSendSuper2(&v27, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v28);
  v2 = 14.0;
  CGSize.subtracting(insets:)();
  v4 = v3;
  v6 = v5;
  v7 = *&v1[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel];
  v8 = [v7 text];
  if (v8)
  {

    [v7 measurementsWithFitting:v1 in:{v4, v6}];
    v10 = v9;
    v12 = v11;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v7 setFrame:?];
    [v7 jet_languageAwareOutsets];
    v14 = v13;
    v29.origin.x = 20.0;
    v29.origin.y = 14.0;
    v29.size.width = v4;
    v29.size.height = v10;
    v2 = v14 + CGRectGetMaxY(v29) - v12;
  }

  v15 = *&v1[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel];
  v16 = [v15 text];
  if (v16)
  {

    [v15 measurementsWithFitting:v1 in:{v4, v6}];
    v19 = v18;
    if (qword_10096E9B8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for StaticDimension();
    sub_1000056A8(v20, qword_10098CBA0);
    AnyDimension.topMargin(from:in:)();
    v22 = v2 + v21;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v15 setFrame:?];
    v30.origin.x = 20.0;
    v30.origin.y = v22;
    v30.size.width = v4;
    v30.size.height = v19;
    MaxY = CGRectGetMaxY(v30);
  }

  v23 = *&v1[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel];
  v24 = [v23 text];
  if (v24)
  {

    if ((v1[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_isExpanded] & 1) == 0)
    {
      [v23 measurementsWithFitting:v1 in:{v4, v6}];
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRectGetMaxY(v31);
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v23 setFrame:?];
    }
  }

  v25 = 1.0;
  if (v1[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_isExpanded])
  {
    v25 = 0.0;
  }

  return [v23 setAlpha:v25];
}

double sub_10059B140(double a1, double a2)
{
  v4 = type metadata accessor for LabelPlaceholderCompatibility();
  v49 = *(v4 - 8);
  v50 = v4;
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*&v2[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel] text];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [*&v2[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel] text];
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [*&v2[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel] text];
  if (v16)
  {
    v17 = v16;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v47 = 0;
    v19 = 0;
  }

  v48 = v2[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_isExpanded];
  [v2 layoutMargins];
  v20 = [v2 traitCollection];
  CGSize.subtracting(insets:)();
  if (!v11)
  {
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (v19)
    {
      goto LABEL_19;
    }

LABEL_23:

    goto LABEL_24;
  }

  v21 = v19;
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  sub_1000056A8(v22, qword_1009D1490);
  v23 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v24 = type metadata accessor for Feature();
  v52 = v24;
  v53 = sub_10059C0E8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v25 = sub_1000056E0(v51);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
  v26 = v23;
  isFeatureEnabled(_:)();
  sub_100007000(v51);

  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.measurements(fitting:with:)();

  (*(v49 + 8))(v7, v50);
  v19 = v21;
  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_14:
  v46 = v19;
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for FontUseCase();
  sub_1000056A8(v27, qword_1009D14A8);
  v28 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v29 = type metadata accessor for Feature();
  v52 = v29;
  v53 = sub_10059C0E8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_1000056E0(v51);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  v31 = v28;
  isFeatureEnabled(_:)();
  sub_100007000(v51);

  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.measurements(fitting:with:)();
  if (qword_10096E9B8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for StaticDimension();
  sub_1000056A8(v32, qword_10098CBA0);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1007B0B70;
  *(v33 + 32) = v20;
  v34 = v20;
  v35 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();

  (*(v49 + 8))(v7, v50);
  if (!v46)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v48)
  {

LABEL_24:

    return a1;
  }

  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for FontUseCase();
  sub_1000056A8(v36, qword_1009D1520);
  v37 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v38 = type metadata accessor for Feature();
  v52 = v38;
  v53 = sub_10059C0E8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v39 = sub_1000056E0(v51);
  (*(*(v38 - 8) + 104))(v39, enum case for Feature.measurement_with_labelplaceholder(_:), v38);
  v40 = v37;
  isFeatureEnabled(_:)();
  sub_100007000(v51);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.measurements(fitting:with:)();
  if (qword_10096E9C0 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for StaticDimension();
  sub_1000056A8(v41, qword_10098CBB8);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1007B0B70;
  *(v42 + 32) = v20;
  v43 = v20;
  v44 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();

  (*(v49 + 8))(v7, v50);
  return a1;
}

id sub_10059BA50(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096E4B8 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v6, qword_1009D1D20);
    v7 = v1;
    Conditional.evaluate(with:)();

    UILabel.alignment.setter();
    if (qword_10096E4C8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v6, qword_1009D1D50);
    v8 = v7;
    Conditional.evaluate(with:)();

    UILabel.alignment.setter();
    if (qword_10096E9B0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v6, qword_1009D2AC0);
    v9 = v8;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

id sub_10059BCE4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10059BDE0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_10001F63C(v4, v5);
}

id sub_10059BE00()
{
  [*(v0 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel) setText:0];
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel);

  return [v1 setText:0];
}

id sub_10059BEBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = v4[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_sizeCategory];
  v4[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_sizeCategory] = a4;
  if (a4 == 7)
  {
    if (v6 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v4 setNeedsLayout];
    goto LABEL_6;
  }

  if (v6 == 7)
  {
    goto LABEL_5;
  }

  switch(a4)
  {
    case 6:
      if (v6 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v6 != a4 || (v6 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v7 = *&v4[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel];
  TodayCardThreeLineOverlay.heading.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = TodayCard.Style.cardHeadingTextColor.getter();
  [v7 setTextColor:v10];

  v11 = *&v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel];
  TodayCardThreeLineOverlay.title.getter();
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v11 setText:v13];

  v14 = TodayCard.Style.cardTitleTextColor.getter();
  [v11 setTextColor:v14];

  v15 = *&v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel];
  TodayCardThreeLineOverlay.description.getter();
  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v15 setText:v17];

  v18 = TodayCard.Style.cardHeadingTextColor.getter();
  [v15 setTextColor:v18];

  return [v5 setNeedsLayout];
}

uint64_t sub_10059C0E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10059C130()
{
  v1 = v0;
  v25 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v21 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel;
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D1490);
  v10 = *(v8 - 8);
  v23 = *(v10 + 16);
  v23(v7, v9, v8);
  v22 = *(v10 + 56);
  v22(v7, 0, 1, v8);
  v11 = enum case for DirectionalTextAlignment.none(_:);
  v12 = *(v2 + 104);
  v24 = v2 + 104;
  v12(v4, enum case for DirectionalTextAlignment.none(_:), v25);
  v13 = type metadata accessor for DynamicTypeLabel();
  v14 = objc_allocWithZone(v13);
  *(v1 + v21) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v21 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel;
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v8, qword_1009D14A8);
  v23(v7, v15, v8);
  v22(v7, 0, 1, v8);
  v12(v4, v11, v25);
  v16 = objc_allocWithZone(v13);
  *(v1 + v21) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v21 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel;
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v8, qword_1009D1520);
  v23(v7, v17, v8);
  v22(v7, 0, 1, v8);
  v12(v4, v11, v25);
  v18 = objc_allocWithZone(v13);
  *(v1 + v21) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *(v1 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_wantsCardConsistentMargins) = 1;
  v19 = (v1 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_clickActionHandler);
  *v19 = 0;
  v19[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10059C658@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002849C(&qword_100975330, &unk_1007B7440);
  __chkstk_darwin(v3);
  v4 = sub_10002849C(&qword_10098CD40, &unk_1007D6330);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  sub_10059D9D0(v1 + v10, v9);
  v11 = sub_10002849C(&qword_100977078, qword_1007BC1F8);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_10059DA40(v9);
  type metadata accessor for ArtworkView();
  ViewRecycler.init()();
  sub_10017D010();
  ReusePool.init(recycler:limit:)();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10059D960(v6, v1 + v10);
  return swift_endAccess();
}

unint64_t sub_10059C8B0()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10098CD40, &unk_1007D6330);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_10002849C(&qword_100977078, qword_1007BC1F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews;
  v24 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks;
  v10 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  v11 = (v6 + 32);
  v12 = (v6 + 56);
  while (1)
  {
    v13 = *&v1[v9];
    result = v13 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = *&v1[v24];
    if (result == v15)
    {
      return result;
    }

    v16 = *&v1[v9];
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < v15)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < *&v1[v24])
    {
LABEL_8:
      sub_10059C658(v8);
      ReusePool.dequeue(or:)();
      (*v11)(v4, v8, v5);
      (*v12)(v4, 0, 1, v5);
      swift_beginAccess();
      sub_10059D960(v4, &v1[v10]);
      swift_endAccess();
      v17 = v25;
      swift_beginAccess();
      v18 = v17;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23[1] = *((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v1 addSubview:v18];
    }

    else
    {
LABEL_13:
      swift_beginAccess();
      v19 = *&v1[v9];
      if (v19 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_15;
        }

LABEL_2:
        swift_endAccess();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_2;
        }

LABEL_15:
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v1[v9] = v19;
        if (v19 >> 62 || (result & 1) == 0)
        {
          result = sub_100549964();
          v19 = result;
        }

        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          __break(1u);
          return result;
        }

        v21 = v20 - 1;
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 0x20);
        *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) = v21;
        *&v1[v9] = v19;
        swift_endAccess();
        v25 = v22;
        sub_10059C658(v8);
        ReusePool.recycle(_:)();
        (*v11)(v4, v8, v5);
        (*v12)(v4, 0, 1, v5);
        swift_beginAccess();
        sub_10059D960(v4, &v1[v10]);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_10059CCC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for HorizontalStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  HorizontalStack.init(with:)();
  v9 = *(v2 + OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks);
  if (v9 < 2)
  {
    a1[3] = v5;
    a1[4] = &protocol witness table for HorizontalStack;
    v10 = sub_1000056E0(a1);
    (*(v6 + 16))(v10, v8, v5);
    return (*(v6 + 8))(v8, v5);
  }

  v11 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = v12 >> 62;
  if (v12 >> 62)
  {
    goto LABEL_30;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v15)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v12 & 0xC000000000000001) == 0 || v15 == 0)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      type metadata accessor for ArtworkView();
      swift_bridgeObjectRetain_n();
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v17);
        v17 = v18;
      }

      while (v15 != v18);
    }

    if (v13)
    {
      break;
    }

    v33 = v12 & 0xFFFFFFFFFFFFFF8;
    v19 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = v15;
    v20 = v15 <= 0;
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_19:
    v12 = 0;
    if (v20)
    {
      v27 = v13;
    }

    else
    {
      v27 = v15;
    }

    v9 = v27 - v13;
    v13 = v19 + 8 * v13;
    while (v9 != v12)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_29;
      }

      v28 = *(v13 + 8 * v12);
      sub_10059D100(v12, v28, v8, ObjectType);

      if (v21 == ++v12)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      goto LABEL_39;
    }

    if (v30 >= v9)
    {
      v31 = v9;
    }

    else
    {
      v31 = v30;
    }

    if (v30 >= 0)
    {
      v15 = v31;
    }

    else
    {
      v15 = v9;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < v15)
    {
      goto LABEL_38;
    }
  }

  v33 = _CocoaArrayWrapper.subscript.getter();
  v23 = v22;
  v13 = v24;
  v26 = v25;

  v19 = v23;
  v15 = v26 >> 1;
  v21 = v15 - v13;
  v20 = v15 <= v13;
  if (v15 != v13)
  {
    goto LABEL_19;
  }

LABEL_26:
  swift_unknownObjectRelease();
  v34[3] = v5;
  v34[4] = &protocol witness table for HorizontalStack;
  v29 = sub_1000056E0(v34);
  (*(v6 + 16))(v29, v8, v5);
  a1[3] = type metadata accessor for Margins();
  a1[4] = &protocol witness table for Margins;
  sub_1000056E0(a1);
  Margins.init(insets:child:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10059D100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  type metadata accessor for ArtworkView();
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v9, v9[3]);
  Measurable.placeable.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  HorizontalStack.add(_:with:)();

  sub_100007000(v8);
  return sub_100007000(v9);
}

id sub_10059D2A8@<X0>(void *a1@<X8>)
{
  type metadata accessor for ArtworkView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

double sub_10059D2E8(unint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  v29 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Artwork.Crop();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v31 = *(v2 + v9);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v10)
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v12 = v31;
    }

    else
    {
      v12 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v20[1] = v12;
    v21 = (v6 + 8);
    v13 = 4;
    v24 = v31 & 0xC000000000000001;
    v25 = v31 >> 62;
    v22 = v10;
    v23 = a1;
    do
    {
      v6 = v13 - 4;
      if (v27)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v6 >= *(v26 + 16))
        {
          goto LABEL_28;
        }

        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v10 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      if (v25)
      {
        if (v6 == _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_25:

          break;
        }
      }

      else if (v6 == *(v11 + 16))
      {
        goto LABEL_25;
      }

      if (v24)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v11 + 16))
        {
          goto LABEL_29;
        }

        v15 = *(v31 + 8 * v13);
      }

      v16 = v15;
      Artwork.crop.getter();
      v17 = Artwork.Crop.preferredContentMode.getter();
      (*v21)(v8, v28);
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      v18 = v16;
      [v18 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      [v18 setContentMode:v17];

      type metadata accessor for ArtworkView();
      sub_10009A098();
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      ++v13;
      v14 = a1 == v22;
      a1 = v23;
    }

    while (!v14);
  }

  return result;
}

uint64_t type metadata accessor for CarouselItemLockupCollectionView(uint64_t a1)
{
  result = qword_10098CD28;
  if (!qword_10098CD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10059D748(uint64_t a1)
{
  sub_10059D7F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10059D7F8(uint64_t a1)
{
  if (!qword_10098CD38)
  {
    sub_10002D1A8(&qword_100977078, qword_1007BC1F8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10098CD38);
    }
  }
}

double sub_10059D85C(uint64_t a1, double a2, double a3)
{
  sub_10059CCC0(v6);
  sub_10002A400(v6, v6[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v4 = v3;
  sub_100007000(v6);
  return v4;
}

uint64_t sub_10059D904()
{
  if (*(v0 + 16) >= 1)
  {
    return HorizontalStack.Properties.leadingSpacing.setter();
  }

  return result;
}

uint64_t sub_10059D960(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10098CD40, &unk_1007D6330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059D9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10098CD40, &unk_1007D6330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059DA40(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10098CD40, &unk_1007D6330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10059DAA8(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((static AnyHashable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for StringPreferencesDebugSetting(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 56) == v1[7] && *(v2 + 64) == v1[8];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v4 = static PreferenceKey.== infix(_:_:)();

  return v4 & 1;
}

uint64_t sub_10059DBB0(uint64_t a1, __n128 a2)
{
  AnyHashable.hash(into:)();

  return String.hash(into:)();
}

double sub_10059DBFC()
{

  v1 = OBJC_IVAR____TtC8AppStore29StringPreferencesDebugSetting_key;
  v2 = sub_10002849C(&qword_100977550, &qword_1007BC920);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_10059DC88()
{
  sub_10003D614(v0 + 16);

  v1 = OBJC_IVAR____TtC8AppStore29StringPreferencesDebugSetting_key;
  v2 = sub_10002849C(&qword_100977550, &qword_1007BC920);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StringPreferencesDebugSetting(uint64_t a1)
{
  result = qword_10098CD70;
  if (!qword_10098CD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10059DDBC(uint64_t a1)
{
  sub_10059DE58();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10059DE58()
{
  if (!qword_10098CD80)
  {
    v0 = type metadata accessor for PreferenceKey();
    if (!v1)
    {
      atomic_store(v0, &qword_10098CD80);
    }
  }
}

unint64_t sub_10059DF60()
{
  v0 = UITraitCollection.prefersRightToLeftLayouts.getter();
  v1 = AchievementSummary.totalAchievements.getter();
  v2._object = 0x800000010081AD70;
  v2._countAndFlagsBits = 0xD000000000000034;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = localizedStringWithCount(_:count:comment:)(v2, v1, v3);
  if (v0)
  {
    v5 = 1554743522;
  }

  else
  {
    v5 = 799703266;
  }

  v8 = v5 & 0xFFFF0000FFFFFFFFLL | 0x2000000000;
  String.append(_:)(v4);

  v6._countAndFlagsBits = 11305186;
  v6._object = 0xA300000000000000;
  String.append(_:)(v6);

  return v8;
}

double sub_10059E038(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v92 = type metadata accessor for LabelPlaceholderCompatibility();
  v8 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = v76 - v11;
  __chkstk_darwin(v12);
  v86 = v76 - v13;
  v84 = type metadata accessor for AchievementGroupView.Size();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v85 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AchievementSummaryLayout();
  v91 = *(v15 - 8);
  __chkstk_darwin(v15);
  v89 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AchievementSummaryLayout.Metrics();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v95 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v96 = v76 - v21;
  v22 = type metadata accessor for Achievement();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v82 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v76 - v26;
  __chkstk_darwin(v28);
  v30 = v76 - v29;
  v88 = a1;
  v31 = AchievementSummary.achievements.getter();
  if (*(v31 + 16))
  {
    v78 = v15;
    v79 = v8;
    v32 = a6;
    v33 = *(v23 + 16);
    v33(v27, v31 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);

    v80 = v23;
    v34 = *(v23 + 32);
    v93 = v30;
    v94 = v22;
    v34(v30, v27, v22);
    if (qword_10096DA00 != -1)
    {
      swift_once();
    }

    v35 = sub_1000056A8(v17, qword_1009CFC78);
    v81 = v18;
    v36 = *(v18 + 16);
    v37 = v96;
    v36(v96, v35, v17);
    v38 = [a6 traitCollection];
    v39 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v39)
    {
      v76[0] = v17;
      v36(v95, v37, v17);
      v33(v82, v93, v94);
      AchievementSummary.totalAchievements.getter();
      v40 = [a6 traitCollection];
      v41 = UITraitCollection.isSizeClassCompact.getter();

      v42 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v41 & 1) == 0)
      {
        v42 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v83 + 104))(v85, *v42, v84);
      v43 = type metadata accessor for AchievementGroupView();
      v44 = objc_allocWithZone(v43);
      v45 = AchievementGroupView.init(visibleModel:showSecondCard:cardSize:)();
      v102[8] = v43;
      v102[9] = &protocol witness table for UIView;
      v102[5] = v45;
      v46 = AchievementSummary.completedAchievements.getter();
      v47._object = 0x80000001008005F0;
      v47._countAndFlagsBits = 0xD000000000000032;
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      localizedStringWithCount(_:count:comment:)(v47, v46, v48);
      v49 = sub_1000367E8();
      if (qword_10096E040 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for FontUseCase();
      sub_1000056A8(v85, qword_1009D1040);
      v84 = v49;
      static UIFont.preferredFont(forUseWith:in:)();
      v50 = type metadata accessor for Feature();
      v102[3] = v50;
      v83 = sub_10059F234(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v102[4] = v83;
      v51 = sub_1000056E0(v102);
      v52 = *(v50 - 8);
      v53 = *(v52 + 104);
      LODWORD(v82) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v77 = v53;
      v76[1] = v52 + 104;
      v53(v51);
      isFeatureEnabled(_:)();
      sub_100007000(v102);
      v54 = v86;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v55 = *(v79 + 8);
      v56 = v92;
      v55(v54, v92);
      v57 = [v32 traitCollection];
      sub_10059DF60();

      if (qword_10096E048 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v85, qword_1009D1058);
      static UIFont.preferredFont(forUseWith:in:)();
      v101[3] = v50;
      v101[4] = v83;
      v58 = sub_1000056E0(v101);
      v77(v58, v82, v50);
      isFeatureEnabled(_:)();
      sub_100007000(v101);
      v59 = v87;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v55(v59, v56);
      AchievementSummary.completedText.getter();
      v60 = v76[0];
      if (qword_10096E050 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v85, qword_1009D1070);
      static UIFont.preferredFont(forUseWith:in:)();
      v100[3] = v50;
      v100[4] = v83;
      v61 = sub_1000056E0(v100);
      v77(v61, v82, v50);
      isFeatureEnabled(_:)();
      sub_100007000(v100);
      v62 = v90;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v55(v62, v56);
      v99 = 0;
      v98 = 0u;
      v97 = 0u;
      v63 = v89;
      AchievementSummaryLayout.init(metrics:achievementGroupView:numberCompletedLabel:outOfTotalLabel:completedLabel:chevronView:)();
      sub_10059F234(&unk_10098CEA0, &type metadata accessor for AchievementSummaryLayout, &protocol conformance descriptor for AchievementSummaryLayout);
      v64 = v78;
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v66 = v65;
      (*(v91 + 8))(v63, v64);
      (*(v81 + 8))(v96, v60);
      (*(v80 + 8))(v93, v94);
    }

    else
    {
      v67 = v17;
      [v32 pageContainerSize];
      if (v69 < v68)
      {
        JUScreenClassGetLandscapeWidth();
      }

      v70 = v81;
      v71 = v94;
      v72 = v93;
      v73 = v96;
      static AchievementSummaryLayout.estimatedMeasurements(fitting:using:in:)();
      v66 = v74;
      (*(v70 + 8))(v73, v67);
      (*(v80 + 8))(v72, v71);
    }
  }

  else
  {

    return 0.0;
  }

  return v66;
}

void sub_10059EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_10002849C(&unk_100973220, &unk_1007B4670);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v54 = &v46 - v9;
  v49 = type metadata accessor for AchievementGroupView.Size();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Achievement();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  __chkstk_darwin(v17);
  v46 = &v46 - v18;
  v19 = *(v5 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel);
  v20 = AchievementSummary.completedAchievements.getter();
  v21._object = 0x80000001008005F0;
  v21._countAndFlagsBits = 0xD000000000000032;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  localizedStringWithCount(_:count:comment:)(v21, v20, v22);
  v23 = String._bridgeToObjectiveC()();

  [v19 setText:v23];

  v24 = *(v5 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel);
  v51 = a5;
  v25 = [a5 traitCollection];
  sub_10059DF60();

  v26 = String._bridgeToObjectiveC()();

  [v24 setText:v26];

  v27 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel);
  AchievementSummary.completedText.getter();
  v28 = String._bridgeToObjectiveC()();

  [v27 setText:v28];

  v29 = AchievementSummary.achievements.getter();
  if (*(v29 + 16))
  {
    v30 = v48;
    v31 = *(v48 + 16);
    v31(v16, v29 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v11);

    v32 = v46;
    (*(v30 + 32))(v46, v16, v11);
    v31(v13, v32, v11);
    AchievementSummary.totalAchievements.getter();
    v33 = [v51 traitCollection];
    LOBYTE(v31) = UITraitCollection.isSizeClassCompact.getter();

    v34 = &enum case for AchievementGroupView.Size.phone(_:);
    if ((v31 & 1) == 0)
    {
      v34 = &enum case for AchievementGroupView.Size.pad(_:);
    }

    (*(v47 + 104))(v50, *v34, v49);
    v35 = objc_allocWithZone(type metadata accessor for AchievementGroupView());
    v36 = AchievementGroupView.init(visibleModel:showSecondCard:cardSize:)();
    v37 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView;
    v38 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView);
    if (v38)
    {
      [v38 removeFromSuperview];
      v39 = *(v6 + v37);
    }

    else
    {
      v39 = 0;
    }

    *(v6 + v37) = v36;
    v42 = v36;

    [*(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView) addSubview:v42];
    if (AchievementSummary.totalAchievements.getter() < 2)
    {
      if (qword_10096D9F0 != -1)
      {
        swift_once();
      }

      v43 = qword_1009CFC48;
    }

    else
    {
      if (qword_10096D9F8 != -1)
      {
        swift_once();
      }

      v43 = qword_1009CFC60;
    }

    v44 = v53;
    v45 = sub_1000056A8(v53, v43);
    (*(v52 + 16))(v54, v45, v44);
    swift_beginAccess();
    AchievementSummaryLayout.Metrics.achievementStackInsets.setter();
    swift_endAccess();
    (*(v30 + 8))(v32, v11);
  }

  else
  {

    v40 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView;
    v41 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView);
    if (v41)
    {
      [v41 removeFromSuperview];
      v41 = *(v6 + v40);
    }

    *(v6 + v40) = 0;
  }
}

uint64_t sub_10059F234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10059F27C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_10098CEB0);
  v1 = sub_1000056A8(v0, qword_10098CEB0);
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D09C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10059F344(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v47 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for FontUseCase();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_hasMoreButton] = 1;
  v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  *&v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = 3;
  v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 1;
  *&v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString] = 0;
  v21 = &v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  *v21 = 0;
  v21[1] = 0;
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v17, qword_1009D09C8);
  type metadata accessor for FadeInDynamicTypeButton(0);
  v23 = *(v18 + 16);
  v23(v20, v22, v17);
  v24 = a1;
  v25 = sub_10075332C(v20, v24);

  v26 = v25;
  v27._countAndFlagsBits = 0x4D5F4E4F49544341;
  v27._object = 0xEB0000000045524FLL;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  localizedString(_:comment:)(v27, v28);
  v29 = String._bridgeToObjectiveC()();

  [v26 setTitle:v29 forState:0];

  [v26 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v26 setAdjustsImageWhenHighlighted:0];

  *&v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] = v26;
  type metadata accessor for DynamicTypeLabel();
  v30 = DynamicTypeLabel.__allocating_init(frame:)();
  *&v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] = v30;
  v31 = v30;
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v32 = type metadata accessor for ExpandableTextView();
  v48.receiver = v6;
  v48.super_class = v32;
  v33 = objc_msgSendSuper2(&v48, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v37 = v33;
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v37 setUserInteractionEnabled:1];
  [v37 setBackgroundColor:v24];
  v38 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
  [*&v37[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] setNumberOfLines:*&v37[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines]];
  [*&v37[v38] setLineBreakMode:0];
  [*&v37[v38] setTextAlignment:4];
  if (qword_10096E9C8 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v17, qword_10098CEB0);
  v23(v16, v39, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_100031660(v16, v47, &qword_100972ED0, &unk_1007B17B0);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  sub_10002B894(v16, &qword_100972ED0, &unk_1007B17B0);
  [v37 addSubview:*&v37[v38]];
  v40 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton;
  v41 = [*&v37[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] traitCollection];
  v42 = [v41 preferredContentSizeCategory];

  static UIContentSizeCategory.<= infix(_:_:)();
  v43 = *&v37[v40];
  [v43 addTarget:v37 action:"moreFrom:" forControlEvents:64];

  v44 = *&v37[v40];
  dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();

  [v37 addSubview:*&v37[v40]];
  return v37;
}

void sub_10059FAC0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel);
  v7 = [v6 text];
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

LABEL_11:
    v14 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v14 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      type metadata accessor for LanguageAwareString();

      static LanguageAwareString.alwaysGenerateAttributedString.getter();
      static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
      v15 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)();
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (a2)
  {
    if (v11)
    {
      if (v9 == a1 && v11 == a2)
      {

LABEL_24:

        return;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    return;
  }

  v15 = 0;
  v16 = 1;
LABEL_19:
  v17 = *(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString);
  *(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString) = v15;
  v18 = v15;

  if (v15)
  {
    LanguageAwareString.string.getter();

LABEL_27:
    v19 = String._bridgeToObjectiveC()();

    goto LABEL_28;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = 0;
LABEL_28:
  [v6 setText:v19];

  sub_1005A0320();
}

void sub_10059FCD8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel);
  v5 = [v4 attributedText];
  v6 = v5;
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    v8 = a1;
LABEL_8:
    v17 = v8;
    if ([v8 length])
    {
      v9 = type metadata accessor for LanguageAwareString();
      v10 = v17;
      static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
      v11 = objc_allocWithZone(v9);
      v12 = LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)();
LABEL_11:
      v13 = *(v2 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString);
      *(v2 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString) = v12;
      v14 = v12;

      if (v12)
      {
        v15 = dispatch thunk of LanguageAwareString.attributedString.getter();

        v18 = a1;
      }

      else
      {
        v18 = a1;
        v15 = v18;
      }

      [v4 setAttributedText:v15];

      sub_1005A0320();
      v8 = v18;
      goto LABEL_15;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  sub_100005744(0, &unk_100984040, NSAttributedString_ptr);
  v16 = a1;
  v7 = static NSObject.== infix(_:_:)();

  v8 = v16;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
}

uint64_t sub_10059FFC8(uint64_t a1)
{
  v2 = v1;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for ExpandableTextView();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *&v1[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
  [v11 sizeThatFits:{v7, v9}];
  v13 = v12;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  [v11 setFrame:{v4, v6, CGRectGetWidth(v20), v13}];
  v14 = *&v2[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton];
  result = [v14 isHidden];
  if ((result & 1) == 0)
  {
    result = [v11 numberOfLines];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v16 = *&v2[OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString];
      if (v16)
      {
        v17 = v16;
        [v11 numberOfLines];
        [v11 lineBreakMode];
        v18 = dispatch thunk of LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:)();
      }

      else
      {
        v18 = 0;
      }

      [v14 sizeThatFits:{v8, v10}];
      v21.origin.x = v4;
      v21.origin.y = v6;
      v21.size.width = v8;
      v21.size.height = v10;
      CGRectGetMaxX(v21);
      v22.origin.x = v4;
      v22.origin.y = v6;
      v22.size.width = v8;
      v22.size.height = v10;
      CGRectGetMaxY(v22);
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRect.withLayoutDirection(_:relativeTo:)();
      [v14 setFrame:?];
      *(v14 + qword_100995BC8) = v18 == 1;
      return sub_100752EB4();
    }
  }

  return result;
}

id sub_1005A0320()
{
  v7 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v47 - v9;
  v11 = [*&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] attributedText];
  if (v11)
  {
    if (v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_hasMoreButton] == 1 && v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] == 1)
    {
      if (v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] == 1)
      {
        v12 = v11;
        [*&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setHidden:0];
LABEL_23:

        return [v0 setNeedsLayout];
      }

      v12 = v11;
      v14 = [v11 length];
      v15 = *&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton];
      if (!v14)
      {
        [*&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setHidden:1];
        goto LABEL_23;
      }

      v16 = *&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
      type metadata accessor for ExpandableTextView();
      LayoutMarginsAware<>.layoutFrame.getter();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        v4 = v17;
        v3 = v18;
        v21 = fabs(v17);
        if (v17 > 1.79769313e308)
        {
          v21 = 1.79769313e308;
        }

        v22 = 0.0;
        if (v21 == 0.0)
        {
          goto LABEL_22;
        }

        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
        v2 = v12;
        v25 = [v0 traitCollection];
        v26 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
        v27 = objc_allocWithZone(v26);
        v28 = &v27[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
        *v28 = UIEdgeInsetsZero.top;
        v28[1] = left;
        v28[2] = bottom;
        v28[3] = right;
        *&v27[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] = v20;
        v29 = &v27[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize];
        *v29 = v4;
        *(v29 + 1) = 0x7FEFFFFFFFFFFFFFLL;
        *&v27[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection] = v25;
        *&v27[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText] = v2;
        v48.receiver = v27;
        v48.super_class = v26;
        v1 = objc_msgSendSuper2(&v48, "init");
        if (qword_10096E9D0 == -1)
        {
LABEL_15:
          v30 = qword_10098CEC8;
          v31 = [qword_10098CEC8 objectForKey:v1];
          if (v31)
          {
            v32 = v31;

            v22 = *&v32[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements + 8];
          }

          else
          {
            v33 = qword_10096E9C8;
            v32 = v2;
            if (v33 != -1)
            {
              swift_once();
            }

            v34 = type metadata accessor for FontUseCase();
            v35 = sub_1000056A8(v34, qword_10098CEB0);
            v36 = *(v34 - 8);
            (*(v36 + 16))(v10, v35, v34);
            (*(v36 + 56))(v10, 0, 1, v34);
            static TextMeasurable.defaultTextAlignment.getter();
            static TextMeasurable.defaultLineBreakMode.getter();
            static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)();
            v38 = v37;
            v40 = v39;
            v42 = v41;

            sub_10002B894(v10, &qword_100972ED0, &unk_1007B17B0);
            v22 = top + bottom + v38;
            v43 = type metadata accessor for ExpandableTextView.CacheValue();
            v44 = objc_allocWithZone(v43);
            v45 = &v44[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
            *v45 = v4;
            v45[1] = v22;
            *(v45 + 2) = v40;
            *(v45 + 3) = v42;
            v47.receiver = v44;
            v47.super_class = v43;
            v46 = objc_msgSendSuper2(&v47, "init");
            [v30 setObject:v46 forKey:v1];
          }

LABEL_22:
          [v15 setHidden:v3 >= v22];
          goto LABEL_23;
        }
      }

      swift_once();
      goto LABEL_15;
    }
  }

  [*&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setHidden:1];
  return [v0 setNeedsLayout];
}

id sub_1005A0904(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ExpandableTextView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t (*sub_1005A0A20(void *a1))()
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) numberOfLines];
  return sub_1005A0A80;
}

uint64_t (*sub_1005A0AC8(void *a1))()
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) lineBreakMode];
  return sub_1005A0B28;
}

id sub_1005A0B4C()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) font];

  return v1;
}

void sub_1005A0B90(void *a1)
{
  [*(*v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setFont:a1];
}

void (*sub_1005A0BE4(void *a1))(id *a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel);
  a1[1] = v3;
  *a1 = [v3 font];
  return sub_1005A0C4C;
}

void sub_1005A0C4C(id *a1)
{
  v1 = *a1;
  [a1[1] setFont:?];
}

uint64_t sub_1005A0CFC(uint64_t a1)
{
  swift_getObjectType();
  sub_100031660(a1, v11, &unk_1009711D0, &unk_1007B1A10);
  if (!v12)
  {
    sub_10002B894(v11, &unk_1009711D0, &unk_1007B1A10);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  v3 = (v1 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins);
  v4 = &v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
  if (*(v1 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins) != *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins] || v3[1] != v4[1] || v3[2] != v4[2] || v3[3] != v4[3] || *(v1 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines) != *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] || *(v1 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize) != *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize] || *(v1 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize + 8) != *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize + 8] || (sub_100005744(0, &qword_100978360, NSObject_ptr), v5 = *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection], v6 = static NSObject.== infix(_:_:)(), v5, (v6 & 1) == 0))
  {

    goto LABEL_14;
  }

  v7 = *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText];
  v8 = static NSObject.== infix(_:_:)();

  return v8 & 1;
}

Swift::Int sub_1005A0F1C()
{
  Hasher.init()();
  UIEdgeInsets.hash(into:)();
  Hasher._combine(_:)(*(v0 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines));
  v1 = v0 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize;
  v2 = *(v0 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher.finalize()();
}

uint64_t sub_1005A109C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_100031660(a1, v17, &unk_1009711D0, &unk_1007B1A10);
  v4 = v18;
  if (v18)
  {
    v5 = sub_10002A400(v17, v18);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100007000(v17);
  }

  else
  {
    v10 = 0;
  }

  v16.receiver = v1;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "isEqual:", v10);
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_100031660(a1, v17, &unk_1009711D0, &unk_1007B1A10);
    if (v18)
    {
      if (swift_dynamicCast())
      {
        v12 = v15[1];
        v13 = JUMeasurementsEqual();

        return v13;
      }
    }

    else
    {
      sub_10002B894(v17, &unk_1009711D0, &unk_1007B1A10);
    }
  }

  return 0;
}

uint64_t sub_1005A12C0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, __n128))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = (a4)(v10);

  sub_10002B894(v10, &unk_1009711D0, &unk_1007B1A10);
  return v8 & 1;
}

Swift::Int sub_1005A137C()
{
  Hasher.init()();
  v1 = (v0 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements);
  v2 = *(v0 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = v1[3];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  return Hasher.finalize()();
}

id sub_1005A147C()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_10098CEC8 = result;
  return result;
}

double sub_1005A14B0(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString;
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString);
  if (v5)
  {
    v6 = v5;
    v7 = LanguageAwareString.string.getter();
    v9 = v8;

    if (!v3)
    {
      if (!v9)
      {
        return result;
      }

      v3 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    v9 = 0;
    v7 = 0;
  }

  v11 = v3;
  v12 = LanguageAwareString.string.getter();
  v14 = v13;

  if (!v9)
  {
    if (!v14)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!v14)
  {
LABEL_17:

LABEL_18:
    v17 = v11;
    v18 = dispatch thunk of LanguageAwareString.isEmpty.getter();

    if (v18)
    {
      v3 = 0;
    }

    else
    {
      v19 = v17;
    }

LABEL_21:
    v20 = *(v2 + v4);
    *(v2 + v4) = v3;
    v21 = v3;

    v22 = *(v2 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel);
    if (v3)
    {
      v23 = dispatch thunk of LanguageAwareString.attributedString.getter();
    }

    else
    {
      v23 = 0;
    }

    [v22 setAttributedText:v23];

    sub_1005A0320();
    return result;
  }

  if (v7 != v12 || v9 != v14)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      return result;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1005A1704(uint64_t a1)
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(index:)();
  IndexPath.appending(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1005A17E8()
{
  v0 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v0 - 8);
  AnyHashable.init<A>(_:)();
  StatePath.init(component:)();

  sub_10002849C(&unk_100980500, &unk_1007C5220);
  sub_100097060(&qword_10097DB00, &unk_100980500, &unk_1007C5220, &protocol conformance descriptor for TransientStateStore<A>);
  return WritableStateLens.init<A>(contentsOf:in:)();
}

void sub_1005A196C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) == 1)
  {
    IndexPath.init(item:section:)();
    dispatch thunk of ShelfPresenter.model(at:)();
    (*(v4 + 8))(v6, v3);
    sub_10002849C(&qword_100973D50, &unk_1007B3840);
    sub_10002849C(&qword_10097C530, &qword_1007C4398);
    if (swift_dynamicCast())
    {
      sub_100005A38(v8, v10);
      v7 = v10[1];
      *a1 = v10[0];
      *(a1 + 16) = v7;
      *(a1 + 32) = v11;
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_1005A25F8(v8);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_1005A1B78()
{
  sub_1005A196C(&v2);
  if (v3)
  {
    sub_100005A38(&v2, v4);
    sub_10002A400(v4, v4[3]);
    v0 = dispatch thunk of ComponentModelContainment.numberOfItems.getter();
    sub_100007000(v4);
    return v0;
  }

  else
  {
    sub_1005A25F8(&v2);
    return dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  }
}

uint64_t sub_1005A1C38()
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005A196C(&v7);
  if (v8)
  {
    sub_100005A38(&v7, v9);
    sub_10002A400(v9, v9[3]);
    dispatch thunk of ComponentModelContainment.model(at:)();
    return sub_100007000(v9);
  }

  else
  {
    sub_1005A25F8(&v7);
    IndexPath.init(item:section:)();
    dispatch thunk of ShelfPresenter.model(at:)();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1005A1DFC(uint64_t a1, void (*a2)(char *, uint64_t *, void *, uint64_t, uint64_t))
{
  v4 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  IndexPath.init(item:section:)();
  (*(v8 + 16))(v10, v13, v7);
  StatePath<A>.init(_:)();
  v18 = *(v2 + 40);

  v14 = sub_10002849C(&unk_100980500, &unk_1007C5220);
  v15 = sub_100097060(&qword_10097DB00, &unk_100980500, &unk_1007C5220, &protocol conformance descriptor for TransientStateStore<A>);
  a2(v6, &v18, &type metadata for Never, v14, v15);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1005A2014(uint64_t a1, void (*a2)(char *, void **, void *, uint64_t, uint64_t))
{
  v4 = v2;
  v6 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  sub_1005A1704(a1);
  (*(v10 + 16))(v12, v15, v9);
  sub_1005A25A0();
  v16 = dispatch thunk of Sequence._copyToContiguousArray()();
  v17 = sub_1002A62D8(v16);

  v22 = v17;
  sub_10002849C(&qword_10098D040, &qword_1007D6658);
  sub_100097060(&qword_10098D048, &qword_10098D040, &qword_1007D6658, &protocol conformance descriptor for [A]);
  StatePath.init<A>(components:)();
  v22 = *(v4 + 40);

  v18 = sub_10002849C(&unk_100980500, &unk_1007C5220);
  v19 = sub_100097060(&qword_10097DB00, &unk_100980500, &unk_1007C5220, &protocol conformance descriptor for TransientStateStore<A>);
  a2(v8, &v22, &type metadata for Never, v18, v19);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_1005A229C(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(item:section:)();
  if (*(v1 + 32) == 1)
  {
    dispatch thunk of ShelfPresenter.didSelectNestedItem(at:)();
  }

  else
  {
    dispatch thunk of ShelfPresenter.didSelectItem(at:)();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1005A2414()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1005A245C()
{
  sub_1005A2414();

  return swift_deallocClassInstance();
}

unint64_t sub_1005A25A0()
{
  result = qword_10098D038;
  if (!qword_10098D038)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098D038);
  }

  return result;
}

uint64_t sub_1005A25F8(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097C518, &qword_1007C4378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005A2660(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 64) = a5;
  *(v15 + 72) = a6;
  *(v15 + 80) = a7;
  swift_unknownObjectWeakAssign();
  return v15;
}

uint64_t sub_1005A2704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v39 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&unk_100975ED0, qword_1007B46C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v38 - v17);
  v40 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  v19 = *(v40 - 8);
  *&v20 = __chkstk_darwin(v40).n128_u64[0];
  v22 = &v38 - v21;
  v23 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits] = v23;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  SmallBreakout.details.getter();
  v24 = BreakoutDetails.badgeColorOverride.getter();

  if (v24)
  {
    v38 = a1;
    if (qword_10096D008 != -1)
    {
      swift_once();
    }

    v25 = sub_1000056A8(v13, qword_1009CDEA0);
    sub_1000C2608(v25, v18);
    v26 = *v18;
    v27 = v24;

    *v18 = v24;
    sub_1000C2608(v18, v15);
    sub_10002849C(&qword_100973F50, &qword_1007B4260);
    Conditional<>.init(value:)();

    sub_1000C266C(v18);
  }

  else
  {
    if (qword_10096D008 != -1)
    {
      swift_once();
    }

    v28 = sub_1000056A8(v13, qword_1009CDEA0);
    sub_1000C2608(v28, v18);
    sub_10002849C(&qword_100973F50, &qword_1007B4260);
    Conditional<>.init(value:)();
  }

  v29 = SmallBreakout.details.getter();
  v30 = v40;
  (*(v19 + 16))(v12, v22, v40);
  (*(v19 + 56))(v12, 0, 1, v30);
  sub_1003A9938(v29, v12, v39);

  sub_1005A2DA8(v12);
  v31 = SmallBreakout.backgroundColor.getter();
  if (!v31)
  {
    v31 = [objc_opt_self() clearColor];
  }

  v32 = v31;
  v33 = ObjectType;
  v43.receiver = v7;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "setBackgroundColor:", v31, v38);
  v34 = *&v7[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView];
  v42.receiver = v7;
  v42.super_class = v33;
  v35 = v34;
  v36 = objc_msgSendSuper2(&v42, "backgroundColor");
  ArtworkView.backgroundColor.setter();

  [v7 setNeedsLayout];
  return (*(v19 + 8))(v22, v30);
}

uint64_t sub_1005A2B80(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = type metadata accessor for SmallBreakoutLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100128864(a6, v10);
  type metadata accessor for SmallBreakoutLayout();
  sub_1005A3044(&qword_10098D0B8, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  (*(v8 + 8))(v10, v7);
  v11 = [objc_opt_self() fractionalWidthDimension:1.0];
  v12 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v12;
}

uint64_t sub_1005A2DA8(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100975ED0, qword_1007B46C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1005A2E10(__n128 a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = type metadata accessor for SmallBreakoutLayout.Metrics();
  __chkstk_darwin(v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallBreakoutLayout();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100128864(a5, v8);
  swift_getObjectType();
  sub_100129BEC(a5);
  v13 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v14 = LayoutViewPlaceholder.init(representing:)();
  v19[8] = v13;
  v19[9] = &protocol witness table for LayoutViewPlaceholder;
  v19[5] = v14;
  swift_allocObject();
  v15 = LayoutViewPlaceholder.init(representing:)();
  v19[3] = v13;
  v19[4] = &protocol witness table for LayoutViewPlaceholder;
  v19[0] = v15;
  SmallBreakoutLayout.init(metrics:iconView:detailsView:)();
  sub_1005A3044(&qword_10098D0B0, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  return v17;
}

uint64_t sub_1005A3044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005A308C()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_1009D2B08 = type metadata accessor for OSLogger();
  unk_1009D2B10 = &protocol witness table for OSLogger;
  sub_1000056E0(qword_1009D2AF0);
  return OSLogger.init(subsystem:category:)();
}

char *sub_1005A31D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  *&v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_dynamicDelegate] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridPresenter] = 0;
  v14 = &v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridView];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_objectGraph] = a4;
  *&v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_requestInfo] = a1;
  v15 = &v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_referrer];
  *v15 = a2;
  *(v15 + 1) = a3;
  type metadata accessor for ArtworkLoader();

  BaseObjectGraph.inject<A>(_:)();
  *&v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_artworkLoader] = v41;
  MarketingItemRequestInfo.serviceType.getter();
  v16 = String._bridgeToObjectiveC()();

  MarketingItemRequestInfo.placement.getter();
  v17 = String._bridgeToObjectiveC()();

  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  v18 = ASKBagContract.amsBag.getter();

  v40.receiver = v5;
  v40.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v40, "initWithServiceType:placement:bag:", v16, v17, v18);
  swift_unknownObjectRelease();

  v20 = v19;
  MarketingItemRequestInfo.seed.getter();
  v21 = type metadata accessor for AdamId();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    sub_10002B894(v13, &qword_100972A80, &qword_1007C9840);
    v23 = 0;
  }

  else
  {
    AdamId.stringValue.getter();
    (*(v22 + 8))(v13, v21);
    v23 = String._bridgeToObjectiveC()();
  }

  [v20 setSeed:v23];

  MarketingItemRequestInfo.offerHints.getter();
  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  [v20 setOfferHints:v25];

  v26 = v20;
  v27 = MarketingItemRequestInfo.clientOptions.getter();
  if (v27)
  {
    sub_1006491F4(v27);

    v28.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v28.super.isa = 0;
  }

  [v26 setClientOptions:v28.super.isa];

  if (MarketingItemRequestInfo.metricsOverlay.getter())
  {
    v29.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v29.super.isa = 0;
  }

  [v26 setMetricsOverlay:v29.super.isa];

  [v26 setAnonymousMetrics:1];
  static ASKBootstrapV2.appStoreTokenServiceClient.getter();
  v30 = String._bridgeToObjectiveC()();

  [v26 setMediaClientIdentifier:v30];

  sub_100412FA8();
  v31 = v26;
  BaseObjectGraph.inject<A>(_:)();
  v32 = v41;
  v33 = [v41 ams_activeiTunesAccount];

  [v31 setAccount:v33];
  type metadata accessor for ArcadeSubscriptionManager();
  BaseObjectGraph.inject<A>(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = objc_allocWithZone(type metadata accessor for DynamicViewControllerDelegate());
  v35 = DynamicViewControllerDelegate.init(subscriptionManager:purchaseSuccessHandler:purchaseFailureHandler:carrierLinkSuccessHandler:carrierLinkFailureHandler:didDismissHandler:contentViewConstructor:)();

  v36 = OBJC_IVAR____TtC8AppStore27MarketingItemViewController_dynamicDelegate;
  *&v31[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_dynamicDelegate] = v35;
  swift_unknownObjectRelease();
  [v31 setDelegate:*&v31[v36]];
  type metadata accessor for AutoPlayVideoSettingsManager();
  v37 = static AutoPlayVideoSettingsManager.shared.getter();
  [v31 setMediaContentDelegate:v37];

  return v31;
}

void sub_1005A38A4(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void *sub_1005A3900(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v12 = Strong;
  v13 = sub_10064A600(a1, a3, a4, a5, a6);
  v14 = v13;

  return v13;
}

uint64_t sub_1005A3CF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore27MarketingItemViewController_referrer);

  return v1;
}

id sub_1005A3E20()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1005A3E74(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_1005A3F34()
{
  v1 = [v0 metricsOverlay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1005A3FA4(uint64_t a1, double a2)
{
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 setMetricsOverlay:isa];
}

void (*sub_1005A402C(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1005A409C(v2);
  return sub_1000BD370;
}

void (*sub_1005A409C(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  a1[1] = v1;
  v3 = [v1 metricsOverlay];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1005A4138;
}

void sub_1005A4138(uint64_t *a1, char a2, double a3)
{
  v4 = *a1;
  if (a2)
  {
    if (v4)
    {

      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }

    [a1[1] setMetricsOverlay:isa];
  }

  else if (v4)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1[1] setMetricsOverlay:isa];
  }

  else
  {
    isa = 0;
    [a1[1] setMetricsOverlay:0];
  }
}

void *sub_1005A422C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = sub_10064A600(a1, a2, a3, a4, a5);
  v6 = v5;
  return v5;
}

void sub_1005A4258()
{
  swift_getObjectType();

  DynamicViewControllerDisplaying.injectFieldsIntoMetricsOverlay()();
}

uint64_t sub_1005A42A4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1005A4570(&qword_10098D1A8, &unk_1007D6778);

  return DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(a1, a2, ObjectType, v5);
}

uint64_t sub_1005A434C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_1005A4570(&qword_10098D1A8, &unk_1007D6778);

  return a3(ObjectType, v4);
}

uint64_t sub_1005A4570(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarketingItemViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1005A45B0(uint64_t a1)
{
  if (qword_10096E9D8 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D2AF0, qword_1009D2B08);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_1000056E0(v4);
  (*(*(v3 - 8) + 16))(v1);
  static LogMessage.safe(_:)();
  sub_10002B894(v4, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  return result;
}

void sub_1005A4778()
{
  if (kCFBundleVersionKey)
  {
    if ([v0 objectForInfoDictionaryKey:?])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v1 = 0u;
      v2 = 0u;
    }

    v3[0] = v1;
    v3[1] = v2;
    if (*(&v2 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_10003D444(v3);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1005A483C()
{
  result = qword_100974898;
  if (!qword_100974898)
  {
    type metadata accessor for SmallContactCardCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974898);
  }

  return result;
}

double sub_1005A4894()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v4 = sub_1005A4974();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1005A4974()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallPlayerCardView();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v6 = v5;
  v4(v3, v0);
  v7 = ShelfLayoutContext.traitCollection.getter();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v15.receiver = v9;
  v15.super_class = v8;
  v11 = objc_msgSendSuper2(&v15, "init");
  static SmallPlayerCardView.size(fitting:traitEnvironment:)();
  v13 = v12;

  return v13;
}

BOOL sub_1005A4B50()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 activeInterfaceOrientation];

  return sub_1005A4C08(v1);
}

BOOL sub_1005A4BAC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  return v1 == 1;
}

double sub_1005A4C64(uint64_t a1, __n128 a2)
{
  v58 = type metadata accessor for EditorialQuoteLayout.Metrics();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EditorialQuoteLayout();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for LabelPlaceholderCompatibility();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PageGrid();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditorialQuote();
  sub_1005A5508(&qword_1009819B8, &type metadata accessor for EditorialQuote, &protocol conformance descriptor for EditorialQuote);
  ItemLayoutContext.typedModel<A>(as:)();
  v15 = v65[0];
  if (!v65[0])
  {
    return 0.0;
  }

  v51 = v4;
  v52 = v8;
  v53 = v6;
  v54 = v5;
  swift_getKeyPath();
  v16 = v15;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v12 + 8))(v14, v11);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v17 = v65[0];
  v18 = UITraitCollection.isSizeClassCompact.getter();

  if (v18)
  {
    v19 = 4;
  }

  else
  {
    v19 = 1;
  }

  v48 = EditorialQuote.text.getter();
  v47 = v20;
  v21 = sub_1000367E8();
  if (qword_10096D4F8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  sub_1000056A8(v22, qword_1009CEBA8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static UIFont.preferredFont(forUseWith:in:)();
  swift_unknownObjectRelease();
  v23 = type metadata accessor for Feature();
  v66 = v23;
  v50 = sub_1005A5508(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v67 = v50;
  v24 = sub_1000056E0(v65);
  v25 = *(v23 - 8);
  v46[1] = v21;
  v26 = *(v25 + 104);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v26(v24);
  isFeatureEnabled(_:)();
  v59 = a1;
  sub_100007000(v65);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v48 = v19;
  v27 = *(v55 + 8);
  v28 = v56;
  v27(v10, v56);
  v55 = v16;
  v47 = EditorialQuote.attribution.getter();
  v46[0] = v29;
  if (qword_10096D500 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v22, qword_1009CEBC0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static UIFont.preferredFont(forUseWith:in:)();
  swift_unknownObjectRelease();
  v63 = v23;
  v64 = v50;
  v30 = sub_1000056E0(v62);
  (v26)(v30, v49, v23);
  isFeatureEnabled(_:)();
  sub_100007000(v62);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v27(v10, v28);
  if (qword_10096D4F0 != -1)
  {
    swift_once();
  }

  v31 = v58;
  v32 = sub_1000056A8(v58, qword_1009CEB90);
  (*(v57 + 16))(v51, v32, v31);
  v33 = v66;
  v34 = v67;
  v35 = sub_10002A400(v65, v66);
  v61[3] = v33;
  v61[4] = *(v34 + 8);
  v36 = sub_1000056E0(v61);
  (*(*(v33 - 8) + 16))(v36, v35, v33);
  v37 = v63;
  v38 = v64;
  v39 = sub_10002A400(v62, v63);
  v60[3] = v37;
  v60[4] = *(v38 + 8);
  v40 = sub_1000056E0(v60);
  (*(*(v37 - 8) + 16))(v40, v39, v37);
  v41 = v52;
  EditorialQuoteLayout.init(metrics:quoteLabel:attributionLabel:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_1005A5508(&unk_10098D260, &type metadata accessor for EditorialQuoteLayout, &protocol conformance descriptor for EditorialQuoteLayout);
  v42 = v54;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v44 = v43;
  swift_unknownObjectRelease();

  (*(v53 + 8))(v41, v42);
  sub_100007000(v62);
  sub_100007000(v65);
  return v44;
}

uint64_t sub_1005A5508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005A5628(uint64_t a1, uint64_t a2)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for MessagesSearchViewController(0);
  objc_msgSendSuper2(&v10, "viewWillLayoutSubviews");
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1005A5B64;
  *(v5 + 24) = v4;
  v9[4] = sub_10006F094;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000489A8;
  v9[3] = &unk_1008C9980;
  v6 = _Block_copy(v9);
  v7 = v2;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1005A5828(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for MessagesSearchViewController(0);
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changeContext(_:)();
}

void sub_1005A58C4()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v14 - v4;
  if (*&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController])
  {
    v6 = *&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController + 8];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = sub_1000439D0(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph];
      v10 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_1000F40E0(v5);
      }

      else
      {
        sub_1005F9AF4(v8, 1, v9, v5);

        (*(v11 + 8))(v5, v10);
      }
    }
  }

  v12 = [v1 navigationController];
  if (v12)
  {
    v13 = v12;
  }
}

id sub_1005A5AA0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MessagesSearchViewController(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for MessagesSearchViewController(uint64_t a1)
{
  result = qword_10098D298;
  if (!qword_10098D298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1005A5CCC()
{
  ShareSheetAction.Activity.action.getter();
  v0 = Action.artwork.getter();

  if (!v0)
  {
    goto LABEL_10;
  }

  if ((dispatch thunk of Artwork.isLocalImage.getter() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (dispatch thunk of Artwork.isSystemImage.getter())
  {
    v1 = static SystemImage.load(artwork:with:includePrivateImages:)();
    goto LABEL_7;
  }

  if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v1 = sub_100330100(v0, 0);
LABEL_7:
  v2 = v1;

  if (v2)
  {
    return v2;
  }

LABEL_10:
  v4 = objc_allocWithZone(UIImage);

  return [v4 init];
}

id sub_1005A5E60()
{
  v1 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *&v0[OBJC_IVAR____TtC8AppStoreP33_CE8C5E96DC0A3EE47110102615F0D69114ActionActivity_objectGraph];
  v5 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000F40E0(v3);
  }

  else
  {
    v7 = ShareSheetAction.Activity.action.getter();
    sub_1005F9AF4(v7, 1, v4, v3);

    (*(v6 + 8))(v3, v5);
  }

  return [v0 activityDidFinish:1];
}

uint64_t type metadata accessor for ActionActivity(uint64_t a1)
{
  result = qword_10098D2E0;
  if (!qword_10098D2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005A6140(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for ShareSheetAction.Activity();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1005A61DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v9 = type metadata accessor for ShareSheetAction.Activity();
  v52 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v43 - v13;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v15 = OBJC_IVAR____TtC8AppStore22ActivityViewController_artworkLoader;
  *&v4[OBJC_IVAR____TtC8AppStore22ActivityViewController_artworkLoader] = v55;
  type metadata accessor for ASKBagContract();
  inject<A, B>(_:from:)();
  v16 = v55;
  v17 = *&v5[v15];

  v46 = v16;
  v18 = ASKBagContract.enablePrerenderedIconArtwork.getter();
  v47 = a1;
  v19 = sub_1000477D0(v17, v18 & 1);

  v20 = *(a2 + 16);
  v51 = a4;
  if (v20)
  {
    v43[0] = v19;
    v44 = v5;
    v55 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v21 = *(v52 + 16);
    v22 = *(v52 + 80);
    v43[1] = a2;
    v23 = (a2 + ((v22 + 32) & ~v22));
    v49 = *(v52 + 72);
    v50 = v21;
    v52 += 16;
    v48 = (v52 - 8);
    do
    {
      v24 = v50;
      v50(v14, v23, v9);
      v24(v11, v14, v9);
      v25 = type metadata accessor for ActionActivity(0);
      v26 = objc_allocWithZone(v25);
      v24(&v26[OBJC_IVAR____TtC8AppStoreP33_CE8C5E96DC0A3EE47110102615F0D69114ActionActivity_activity], v11, v9);
      *&v26[OBJC_IVAR____TtC8AppStoreP33_CE8C5E96DC0A3EE47110102615F0D69114ActionActivity_objectGraph] = a4;
      v54.receiver = v26;
      v54.super_class = v25;

      objc_msgSendSuper2(&v54, "init");
      v27 = *v48;
      (*v48)(v11, v9);
      v27(v14, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a4 = v51;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v23 += v49;
      --v20;
    }

    while (v20);

    v5 = v44;
    v28 = v45;
    v19 = v43[0];
  }

  else
  {

    v28 = v45;
  }

  sub_1002A5478(v19);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1005A674C();
  v30 = Array._bridgeToObjectiveC()().super.isa;

  v31 = type metadata accessor for ActivityViewController();
  v53.receiver = v5;
  v53.super_class = v31;
  v32 = objc_msgSendSuper2(&v53, "initWithActivityItems:applicationActivities:", isa, v30);

  v33 = v32;
  [v33 setSharingStyle:v28];
  sub_10002849C(&unk_100993620, qword_1007BB0F0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007B23A0;
  *(v34 + 32) = UIActivityTypeAddToReadingList;
  *(v34 + 40) = UIActivityTypeAssignToContact;
  *(v34 + 48) = UIActivityTypePostToFlickr;
  *(v34 + 56) = UIActivityTypePrint;
  *(v34 + 64) = UIActivityTypeSaveToCameraRoll;
  *(v34 + 72) = UIActivityTypeCopyToPasteboard;
  type metadata accessor for ActivityType(0);
  v35 = UIActivityTypeAddToReadingList;
  v36 = UIActivityTypeAssignToContact;
  v37 = UIActivityTypePostToFlickr;
  v38 = UIActivityTypePrint;
  v39 = UIActivityTypeSaveToCameraRoll;
  v40 = UIActivityTypeCopyToPasteboard;
  v41 = Array._bridgeToObjectiveC()().super.isa;

  [v33 setExcludedActivityTypes:v41];

  return v33;
}

id sub_1005A66E0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1005A674C()
{
  result = qword_10098D320;
  if (!qword_10098D320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10098D320);
  }

  return result;
}

char *sub_1005A6798(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v53 = type metadata accessor for DirectionalTextAlignment();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v51 = v47 - v10;
  v11 = type metadata accessor for FontSource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_10096DF90 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  v61 = sub_1000056A8(v15, qword_1009D0E30);
  v50 = *(v15 - 8);
  v16 = v50 + 16;
  v17 = *(v50 + 16);
  v17(v14, v61, v15);
  v49 = v16;
  v57 = v17;
  v60 = enum case for FontSource.useCase(_:);
  v59 = v12[13];
  v59(v14);
  v47[2] = v12 + 13;
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v64);
  v58 = v12[2];
  v58(v18, v14, v11);
  v47[1] = v12 + 2;
  StaticDimension.init(_:scaledLike:)();
  v56 = v12[1];
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableHeight;
  v19 = v61;
  v48 = v15;
  v17(v14, v61, v15);
  v20 = v60;
  v21 = v59;
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v64);
  v23 = v58;
  v58(v22, v14, v11);
  StaticDimension.init(_:scaledLike:)();
  v24 = v56;
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableHorizontalPadding;
  v25 = v19;
  v26 = v57;
  v57(v14, v25, v15);
  v21(v14, v20, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v64);
  v23(v27, v14, v11);
  StaticDimension.init(_:scaledLike:)();
  v24(v14, v11);
  v28 = v61;
  v29 = v48;
  v26(v14, v61, v48);
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v64);
  v58(v30, v14, v11);
  v31 = v62;
  StaticDimension.init(_:scaledLike:)();
  v56(v14, v11);
  v32 = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel;
  v33 = v51;
  v57(v51, v28, v29);
  (*(v50 + 56))(v33, 0, 1, v29);
  (*(v52 + 104))(v54, enum case for DirectionalTextAlignment.none(_:), v53);
  v34 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v31[v32] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v63.receiver = v31;
  v63.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v39 = v35;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v40 = objc_opt_self();
  v41 = [v40 clearColor];
  [v39 setBackgroundColor:v41];

  v42 = [v40 systemGrayColor];
  [v39 setTintColor:v42];

  v43 = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel;
  v44 = *&v39[OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel];
  v45 = [v39 tintColor];

  [v44 setTextColor:v45];
  [*&v39[v43] setTextAlignment:1];
  [v39 addSubview:*&v39[v43]];

  return v39;
}

void sub_1005A6FA8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v5;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "drawRect:", a1, a2, a3, a4);
  static Dimensions.defaultRoundingRule.getter();
  type metadata accessor for StaticDimension();
  AnyDimension.value(in:rounded:)();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v14, v11);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v30 = CGRectInset(v29, v16 * 0.5, v16 * 0.5);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v22 = objc_opt_self();
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v24 = v23;
  v17(v14, v11);
  v25 = [v22 _bezierPathWithArcRoundedRect:x cornerRadius:{y, width, height, v24}];
  [v25 setLineWidth:v16];
  v26 = [v5 tintColor];
  if (v26)
  {
    v27 = v26;
    [v26 setStroke];

    [v25 stroke];
  }

  else
  {
    __break(1u);
  }
}

double sub_1005A72A0(double a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Dimensions.defaultRoundingRule.getter();
  type metadata accessor for StaticDimension();
  AnyDimension.value(in:rounded:)();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v12 = v11;
  v9(v6, v3);
  v13 = fmax(v12, 1.0);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v15 = v14;
  v9(v6, v3);
  v16 = fmax(v15, 1.0);
  [v10 sizeThatFits:{a1 - (v13 + v13), v8 - (v16 + v16)}];
  v18 = v17;
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v20 = v19;
  v9(v6, v3);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v22 = v21;
  v9(v6, v3);
  return v18 + v20 + v20 + fmax(v22, 1.0) * 4.0;
}

uint64_t type metadata accessor for AgeRatingBadgeView(uint64_t a1)
{
  result = qword_10098D378;
  if (!qword_10098D378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005A7784(uint64_t a1)
{
  result = type metadata accessor for StaticDimension();
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

void sub_1005A7828()
{
  v0 = type metadata accessor for DirectionalTextAlignment();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v33 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v30 = v28 - v3;
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_10096DF90 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0E30);
  v29 = *(v8 - 8);
  v10 = v29 + 16;
  v39 = *(v29 + 16);
  v40 = v8;
  v34 = v9;
  v39(v7, v9, v8);
  v28[1] = v10;
  v38 = enum case for FontSource.useCase(_:);
  v37 = v5[13];
  v37(v7);
  v41 = v5 + 13;
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v43);
  v36 = v5[2];
  v36(v11, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v35 = v5[1];
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableHeight;
  v12 = v9;
  v13 = v39;
  v39(v7, v12, v8);
  v14 = v38;
  v15 = v37;
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v43);
  v17 = v36;
  v36(v16, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v18 = v35;
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableHorizontalPadding;
  v13(v7, v34, v40);
  v15(v7, v14, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v19 = sub_1000056E0(v43);
  v17(v19, v7, v4);
  v20 = v42;
  StaticDimension.init(_:scaledLike:)();
  v18(v7, v4);
  v21 = v34;
  v23 = v39;
  v22 = v40;
  v39(v7, v34, v40);
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v43);
  v36(v24, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v35(v7, v4);
  v25 = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel;
  v26 = v30;
  v23(v30, v21, v22);
  (*(v29 + 56))(v26, 0, 1, v22);
  (*(v31 + 104))(v33, enum case for DirectionalTextAlignment.none(_:), v32);
  v27 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v20 + v25) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005A7DB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 2) = a1;
    *(v7 + 3) = a2;
    *(v7 + 4) = v6;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    updated = type metadata accessor for SingleUseGKDaemonProxyDataUpdateDelegate();
    v10 = objc_allocWithZone(updated);
    *&v10[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateType] = 4;
    v11 = &v10[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock];
    *v11 = sub_1005A8A74;
    v11[1] = v7;
    v12 = &v10[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock];
    *v12 = sub_1005A8A80;
    v12[1] = v8;
    v26.receiver = v10;
    v26.super_class = updated;

    v13 = objc_msgSendSuper2(&v26, "init");
    v14 = objc_opt_self();
    v15 = [v14 daemonProxy];
    [v15 addDataUpdateDelegate:v13];

    v16 = *(v2 + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate);
    *(v2 + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate) = v13;
    v17 = v13;

    if (ASKBagContract.gameCenterActivitySharingReprompt.getter())
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = objc_allocWithZone(updated);
      *&v19[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateType] = 21;
      v20 = &v19[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock];
      *v20 = sub_1005A8524;
      v20[1] = 0;
      v21 = &v19[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock];
      *v21 = sub_1005A8AA4;
      v21[1] = v18;
      v25.receiver = v19;
      v25.super_class = updated;
      v22 = objc_msgSendSuper2(&v25, "init");
      v23 = [v14 daemonProxy];
      v24 = v22;
      [v23 addDataUpdateDelegate:v24];

      v17 = *(v3 + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate);
      *(v3 + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate) = v24;
    }
  }
}

char *sub_1005A8038(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_itemLayoutContext;
  v12 = type metadata accessor for ItemLayoutContext();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate] = 0;
  v13 = [objc_allocWithZone(type metadata accessor for SmallPlayerCardView()) initWithFrame:{a1, a2, a3, a4}];
  *&v5[OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_smallPlayerCard] = v13;
  v14 = v13;
  v15 = SmallPlayerCardView.closeButton.getter();

  v16 = [objc_opt_self() systemGrayColor];
  [v15 setTintColor:v16];

  v20.receiver = v5;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  [v18 addSubview:*&v17[OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_smallPlayerCard]];

  return v17;
}

void sub_1005A83AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v7;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v8 = sub_1003D78D8(v19), (v9 & 1) == 0))
  {
    sub_10003D614(v19);
    return;
  }

  sub_1000073E8(*(a1 + 56) + 32 * v8, v20);
  sub_10003D614(v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v17 == a2 && v18 == a3)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_smallPlayerCard);

    v14 = dispatch thunk of SmallPlayerCardView.closeButtonActionBlock.getter();
    v16 = v15;

    if (v14)
    {
      v14();
      sub_10001F63C(v14, v16);
    }
  }
}

void sub_1005A8524(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v2 = sub_1003D78D8(v4), (v3 & 1) != 0))
  {
    sub_1000073E8(*(a1 + 56) + 32 * v2, v5);
    sub_10003D614(v4);
    if (swift_dynamicCast())
    {
      sub_1005A8AC8();
      static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)();
    }
  }

  else
  {
    sub_10003D614(v4);
  }
}

void sub_1005A8608(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = *&Strong[*a2];
    *&Strong[v4] = 0;
  }
}

uint64_t type metadata accessor for SmallContactCardCollectionViewCell(uint64_t a1)
{
  result = qword_10098D3D0;
  if (!qword_10098D3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A8728(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1005A88C8()
{
  v1 = [objc_opt_self() daemonProxy];
  [v1 removeDataUpdateDelegate:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SingleUseGKDaemonProxyDataUpdateDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1005A8AC8()
{
  result = qword_10098D428;
  if (!qword_10098D428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10098D428);
  }

  return result;
}

void sub_1005A8B6C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = sub_10002849C(&unk_100982A90, &unk_1007CAFC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-1] - v8;
  v10 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v10 - 8);
  v12 = &v17[-1] - v11;
  if (v4)
  {

    v4(v13);

    sub_10001F63C(v4, v5);
  }

  else if (v3)
  {
    v14 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {

      sub_1000F40E0(v12);
    }

    else
    {
      v17[3] = type metadata accessor for Action();
      v17[4] = sub_1005A9EC0(&qword_100989C80, &type metadata accessor for Action, &protocol conformance descriptor for Action);
      v17[0] = v3;
      (*(v7 + 104))(v9, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v6);

      ActionDispatcher.perform(_:withMetrics:asPartOf:)();

      (*(v7 + 8))(v9, v6);
      sub_100007000(v17);
      (*(v15 + 8))(v12, v14);
    }
  }
}

void sub_1005A8E48(uint64_t a1, char *a2)
{
  v123 = a2;
  v118 = type metadata accessor for ActionOutcome();
  v101 = *(v118 - 1);
  __chkstk_darwin(v118);
  v100 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SystemImage();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for FlowOrigin();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for FlowAnimationBehavior();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v114 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for FlowPresentationContext();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v112 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v109 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v10 - 8);
  v108 = &v96 - v11;
  v12 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v12 - 8);
  v105 = &v96 - v13;
  v103 = type metadata accessor for FlowPage();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v104 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AlertActionStyle();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v120 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v121 = &v96 - v19;
  __chkstk_darwin(v20);
  v22 = &v96 - v21;
  __chkstk_darwin(v23);
  v25 = &v96 - v24;
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v117 = Promise.__allocating_init()();
  v122 = a1;
  AlertAction.style.getter();
  v119 = *(v16 + 104);
  v119(v22, enum case for AlertActionStyle.normal(_:), v15);
  sub_1005A9EC0(&unk_10098D430, &type metadata accessor for AlertActionStyle, &protocol conformance descriptor for AlertActionStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v125)
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v27 = *(v16 + 8);
  v27(v22, v15);
  v27(v25, v15);

  if ((v26 & 1) == 0)
  {
    v35 = v121;
    AlertAction.style.getter();
    v36 = v120;
    v119(v120, enum case for AlertActionStyle.toast(_:), v15);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (aBlock == v125)
    {
      v27(v36, v15);
      v27(v35, v15);
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v27(v36, v15);
      v27(v35, v15);

      if ((v37 & 1) == 0)
      {
        return;
      }
    }

    v38 = Action.artwork.getter();
    if (v38)
    {
      v39 = v38;
      if (dispatch thunk of Artwork.isLocalImage.getter())
      {
        if (dispatch thunk of Artwork.isSystemImage.getter())
        {
          v40 = static SystemImage.load(artwork:with:includePrivateImages:)();
          goto LABEL_42;
        }

        if (dispatch thunk of Artwork.isBundleImage.getter())
        {
          v40 = sub_100330100(v39, 0);
LABEL_42:
          v77 = v40;

          if (v77)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }
    }

LABEL_45:
    v78 = v98;
    v79 = v97;
    v80 = v99;
    (*(v98 + 104))(v97, enum case for SystemImage.exclamationmarkCircle(_:), v99);
    v77 = static SystemImage.load(_:with:)();
    (*(v78 + 8))(v79, v80);
LABEL_46:
    v81 = [v77 imageWithRenderingMode:2];
    Action.title.getter();
    v83 = v82;
    AlertAction.message.getter();
    v85 = v84;
    AlertAction.toastDuration.getter();
    v87 = v86;
    if (v83)
    {
      v88 = v81;
      v89 = String._bridgeToObjectiveC()();

      if (v85)
      {
LABEL_48:
        v90 = String._bridgeToObjectiveC()();

LABEL_51:
        v92 = [objc_allocWithZone(ASToastViewController) initWithTitle:v89 message:v90 duration:v81 image:v87];

        [v92 present];
        v93 = v101;
        v94 = v100;
        v95 = v118;
        (*(v101 + 104))(v100, enum case for ActionOutcome.performed(_:), v118);
        Promise.resolve(_:)();

        (*(v93 + 8))(v94, v95);
        return;
      }
    }

    else
    {
      v91 = v81;
      v89 = 0;
      if (v85)
      {
        goto LABEL_48;
      }
    }

    v90 = 0;
    goto LABEL_51;
  }

  Action.title.getter();
  v29 = v28;
  AlertAction.message.getter();
  v31 = v30;
  if (v29)
  {
    v32 = String._bridgeToObjectiveC()();

    v33 = v123;
    if (v31)
    {
LABEL_7:
      v34 = String._bridgeToObjectiveC()();

      goto LABEL_17;
    }
  }

  else
  {
    v32 = 0;
    v33 = v123;
    if (v30)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
LABEL_17:
  v41 = [objc_opt_self() alertControllerWithTitle:v32 message:v34 preferredStyle:1];

  v42 = AlertAction.buttonActions.getter();
  if ((AlertAction.isCancelable.getter() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!*(v42 + 16))
  {
    v44 = 0x4F2E6E6F69746341;
    v45 = 0xE90000000000004BLL;
    goto LABEL_22;
  }

  AlertAction.cancelTitle.getter();
  if (!v43)
  {
    v44 = 0x432E6E6F69746341;
    v45 = 0xED00006C65636E61;
LABEL_22:
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    localizedString(_:comment:)(*&v44, v46);
  }

  v47 = String._bridgeToObjectiveC()();

  v48 = [objc_opt_self() actionWithTitle:v47 style:1 handler:0];

  [v41 addAction:v48];
  [v41 setPreferredAction:v48];

LABEL_24:
  v121 = *(v42 + 16);
  if (v121)
  {
    v49 = 0;
    v118 = &v128;
    v50 = (v42 + 64);
    v119 = v42;
    v120 = v41;
    while (v49 < *(v42 + 16))
    {
      v54 = *(v50 - 4);
      v55 = *(v50 - 3);
      v57 = *(v50 - 2);
      v56 = *(v50 - 1);
      v58 = *v50;
      if (v56)
      {
        v59 = swift_allocObject();
        *(v59 + 16) = v56;
        *(v59 + 24) = v58;
        v60 = sub_10041D558;
      }

      else
      {
        v60 = 0;
        v59 = 0;
      }

      sub_10000827C(v56, v58);
      v61 = v49 != AlertAction.destructiveActionIndex.getter();
      if ((v62 | v61))
      {
        v63 = 0;
      }

      else
      {
        v63 = 2;
      }

      v64 = swift_allocObject();
      v64[2] = v54;
      v64[3] = v55;
      v64[4] = v57;
      v64[5] = v60;
      v65 = v123;
      v64[6] = v59;
      v64[7] = v65;
      if (v55)
      {

        sub_10000827C(v60, v59);

        v51 = String._bridgeToObjectiveC()();
      }

      else
      {

        sub_10000827C(v60, v59);

        v51 = 0;
      }

      ++v49;
      v129 = sub_1005A9E8C;
      v130 = v64;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v128 = sub_100768994;
      *(&v128 + 1) = &unk_1008C9A40;
      v52 = _Block_copy(&aBlock);

      v53 = [objc_opt_self() actionWithTitle:v51 style:v63 handler:v52];
      _Block_release(v52);

      v41 = v120;
      [v120 addAction:v53];

      sub_10001F63C(v60, v59);
      v50 += 5;
      v33 = v123;
      v42 = v119;
      if (v121 == v49)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    v66 = AlertAction.imageName.getter();
    if (v67)
    {
      v68 = v66;
      v69 = v67;
      v70 = type metadata accessor for AlertActionHeaderViewController();
      v71 = objc_allocWithZone(v70);
      *&v71[OBJC_IVAR____TtC8AppStore31AlertActionHeaderViewController_imageView] = 0;
      v72 = &v71[OBJC_IVAR____TtC8AppStore31AlertActionHeaderViewController_imageName];
      *v72 = v68;
      *(v72 + 1) = v69;
      v124.receiver = v71;
      v124.super_class = v70;
      v73 = objc_msgSendSuper2(&v124, "initWithNibName:bundle:", 0, 0);
      [v41 _setHeaderContentViewController:v73];
    }

    v129 = 0;
    aBlock = 0u;
    v128 = 0u;
    (*(v102 + 104))(v104, enum case for FlowPage.viewController(_:), v103);
    v74 = type metadata accessor for URL();
    (*(*(v74 - 8) + 56))(v105, 1, 1, v74);
    v75 = type metadata accessor for ReferrerData();
    (*(*(v75 - 8) + 56))(v108, 1, 1, v75);
    v126 = sub_100246DF4();
    *&v125 = v41;
    v123 = v41;
    static ActionMetrics.notInstrumented.getter();
    (*(v106 + 104))(v112, enum case for FlowPresentationContext.infer(_:), v107);
    (*(v110 + 104))(v114, enum case for FlowAnimationBehavior.infer(_:), v111);
    (*(v113 + 104))(v116, enum case for FlowOrigin.inapp(_:), v115);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v76 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005D01FC(v76, 1, v33);
    Promise.pipe(to:)();
  }
}

void sub_1005A9E8C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4[0] = *(v1 + 16);
  v4[1] = v2;
  v3 = *(v1 + 56);
  v5 = *(v1 + 48);
  sub_1005A8B6C(a1, v4, v3);
}

uint64_t sub_1005A9EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1005A9F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v7 - 8);
  v9 = &ObjectType - v8;
  v10 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &ObjectType - v12;
  if (a1)
  {
    v14 = *&v3[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewButton];
    v15 = qword_10096D290;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_1009CE5C8;
    v17 = Action.title.getter();
    sub_1001C4BA8(v16, v17, v18, v19);

    v20 = type metadata accessor for UIButton.Configuration();
    (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
    UIButton.configuration.setter();
    [v14 setHidden:{0, ObjectType}];
    v34 = a1;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_1005AA3A8();
    ComponentModel.pairedWith<A>(objectGraph:)();

    v21 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    v22 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewAction;
    swift_beginAccess();
    sub_100079964(v9, &v4[v22]);
    swift_endAccess();
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewButton] setHidden:{1, v11, ObjectType}];
  }

  if (a2)
  {
    v23 = *&v4[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportButton];
    v24 = qword_10096D298;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = qword_1009CE5D0;
    v26 = Action.title.getter();
    sub_1001C4BA8(v25, v26, v27, v28);

    v29 = type metadata accessor for UIButton.Configuration();
    (*(*(v29 - 8) + 56))(v13, 0, 1, v29);
    UIButton.configuration.setter();
    [v23 setHidden:0];
    v34 = a2;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_1005AA3A8();
    ComponentModel.pairedWith<A>(objectGraph:)();

    v30 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
    v31 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportAction;
    swift_beginAccess();
    sub_100079964(v9, &v4[v31]);
    swift_endAccess();
  }

  else
  {
    [*&v4[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportButton] setHidden:1];
  }

  return [v4 setNeedsLayout];
}

unint64_t sub_1005AA3A8()
{
  result = qword_100992FB0;
  if (!qword_100992FB0)
  {
    type metadata accessor for Action();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992FB0);
  }

  return result;
}

uint64_t sub_1005AA400()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10002849C(&unk_10098D500, &qword_1007D6BA8);
  v3 = Promise.__allocating_init()();
  v4 = [objc_opt_self() authorizationStatusForEntityType:0];
  if ((v4 - 1) < 2)
  {
    goto LABEL_6;
  }

  if ((v4 - 3) < 2)
  {
    LOBYTE(v9[0]) = 1;
LABEL_7:
    Promise.resolve(_:)();
    return v3;
  }

  if (v4)
  {
LABEL_6:
    LOBYTE(v9[0]) = 0;
    goto LABEL_7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC8AppStore17EventStoreManager_eventStore);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = ObjectType;
  v9[4] = sub_1005AB294;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100235C48;
  v9[3] = &unk_1008C9AB8;
  v7 = _Block_copy(v9);

  [v5 requestWriteOnlyAccessToEventsWithCompletion:v7];
  _Block_release(v7);
  return v3;
}

uint64_t sub_1005AA56C()
{
  v59 = type metadata accessor for FlowOrigin();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v60 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for FlowAnimationBehavior();
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v58 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowPresentationContext();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v8 - 8);
  v52 = &v45 - v9;
  v46 = type metadata accessor for FlowPage();
  v10 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v12 - 8);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v0;
  v21 = *&v0[OBJC_IVAR____TtC8AppStore17EventStoreManager_eventStore];
  v22 = [objc_opt_self() eventWithEventStore:v21];
  CreateCalendarEventAction.startDate.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v24 = *(v18 + 8);
  v24(v20, v17);
  [v22 setStartDate:isa];

  CreateCalendarEventAction.endDate.getter();
  v25 = Date._bridgeToObjectiveC()().super.isa;
  v24(v20, v17);
  [v22 setEndDate:v25];

  [v22 setAllDay:CreateCalendarEventAction.isAllDay.getter() & 1];
  v26 = v22;
  CreateCalendarEventAction.name.getter();
  v27 = String._bridgeToObjectiveC()();

  [v26 setTitle:v27];

  CreateCalendarEventAction.location.getter();
  if (v28)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  [v26 setLocation:v29];

  CreateCalendarEventAction.notes.getter();
  if (v30)
  {
    v31 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = 0;
  }

  [v26 setNotes:v31];

  CreateCalendarEventAction.url.getter();
  v32 = type metadata accessor for URL();
  v33 = *(v32 - 8);
  v35 = 0;
  if ((*(v33 + 48))(v16, 1, v32) != 1)
  {
    URL._bridgeToObjectiveC()(v34);
    v35 = v36;
    (*(v33 + 8))(v16, v32);
  }

  [v26 setURL:v35];

  CalendarEvent = CreateCalendarEventAction.availability.getter();
  if (v38)
  {
  }

  else
  {
    v39 = CalendarEvent;
    v40 = [v21 defaultCalendarForNewEvents];
    [v26 setCalendar:v40];

    [v26 setAvailability:v39];
  }

  v41 = [objc_allocWithZone(EKEventEditViewController) init];
  [v41 setEvent:v26];
  [v41 setEditViewDelegate:v48];
  [v41 setEventStore:v21];
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  (*(v10 + 104))(v49, enum case for FlowPage.viewController(_:), v46);
  (*(v33 + 56))(v47, 1, 1, v32);
  v42 = type metadata accessor for ReferrerData();
  (*(*(v42 - 8) + 56))(v52, 1, 1, v42);
  v62 = sub_1005AB248();
  v61 = v41;
  v48 = v41;
  static ActionMetrics.notInstrumented.getter();
  (*(v50 + 104))(v56, enum case for FlowPresentationContext.presentModal(_:), v51);
  (*(v54 + 104))(v58, enum case for FlowAnimationBehavior.infer(_:), v55);
  (*(v57 + 104))(v60, enum case for FlowOrigin.inapp(_:), v59);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v43 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();

  return v43;
}

uint64_t sub_1005AADF4()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_10098D458 = type metadata accessor for OSLogger();
  unk_10098D460 = &protocol witness table for OSLogger;
  sub_1000056E0(qword_10098D440);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1005AAF38(char a1, uint64_t a2)
{
  if (!a2)
  {
    return Promise.resolve(_:)();
  }

  swift_errorRetain();
  if (qword_10096E9E0 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098D440, qword_10098D458);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_1000056E0(v5);
  (*(*(v4 - 8) + 16))(v2);
  static LogMessage.sensitive(_:)();
  sub_10003D444(v5);
  Logger.info(_:)();

  Promise.reject(_:)();
}

unint64_t sub_1005AB248()
{
  result = qword_10098D4F8;
  if (!qword_10098D4F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10098D4F8);
  }

  return result;
}

UIContentSizeCategory sub_1005AB29C(uint64_t a1)
{
  v1 = sub_1005AB4A8(a1);
  v2 = v1;
  return v1;
}

uint64_t sub_1005AB2C8(uint64_t a1)
{
  v1 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v2 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v4 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v4)
    {
      return 2;
    }
  }

  else
  {
  }

  v5 = UIContentSizeCategoryAccessibilityMedium;
  v6 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((static UIContentSizeCategory.>= infix(_:_:)() & 1) == 0)
  {

    return 2;
  }

  v7 = static UIContentSizeCategory.<= infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    return 2;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    return 2;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

void *sub_1005AB458(uint64_t a1)
{
  v1 = sub_1005AB558(a1);
  v2 = v1;
  return v1;
}

uint64_t sub_1005AB484(uint64_t a1)
{
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

UIContentSizeCategory sub_1005AB4A8(uint64_t a1)
{
  v1 = UIContentSizeCategoryAccessibilityMedium;
  v2 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if (result)
  {
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      v4 = static UIContentSizeCategory.<= infix(_:_:)();

      if (v4)
      {
        return UIContentSizeCategoryExtraExtraExtraLarge;
      }
    }

    else
    {
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005AB558(uint64_t a1)
{
  v1 = UIContentSizeCategoryAccessibilityMedium;
  v2 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if (result)
  {
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      v4 = static UIContentSizeCategory.<= infix(_:_:)();

      if (v4)
      {
        v5 = &UIContentSizeCategoryAccessibilityLarge;
        return *v5;
      }
    }

    else
    {
    }

    v5 = &UIContentSizeCategoryAccessibilityExtraExtraLarge;
    return *v5;
  }

  __break(1u);
  return result;
}

void *sub_1005AB610(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v172 = Strong;
  v167[1] = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_1007B48F0;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  type metadata accessor for ActionDebugSetting();
  v167[0] = a1;
  v9 = swift_allocObject();
  *(v9 + 56) = 0xD000000000000013;
  *(v9 + 64) = 0x800000010081B6F0;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = sub_1005ACAD0;
  *(v9 + 112) = v8;
  v10 = v1;

  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  v14 = *(v4 + 8);
  v175 = v3;
  v14(v6, v3);
  v190 = v11;
  v191 = v13;
  AnyHashable.init<A>(_:)();

  *(v168 + 32) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = swift_allocObject();
  strcpy((v16 + 56), "Clear Caches");
  *(v16 + 69) = 0;
  *(v16 + 70) = -5120;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = sub_1005ACAF4;
  *(v16 + 112) = v15;
  v17 = v10;

  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  v14(v6, v3);
  v173 = v4 + 8;
  v190 = v18;
  v191 = v20;
  AnyHashable.init<A>(_:)();

  v21 = v168;
  *(v168 + 40) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v23 = swift_allocObject();
  *(v23 + 56) = 0xD000000000000015;
  *(v23 + 64) = 0x800000010081B710;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0u;
  *(v23 + 104) = sub_1005ACAF8;
  *(v23 + 112) = v22;
  v24 = v17;

  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v28 = v175;
  v14(v6, v175);
  v190 = v25;
  v191 = v27;
  AnyHashable.init<A>(_:)();

  *(v21 + 48) = v23;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_1007D6BB0;
  v29 = objc_allocWithZone(type metadata accessor for DebugSettings());
  swift_unknownObjectWeakInit();
  v30 = v172;
  swift_unknownObjectWeakAssign();
  v174 = type metadata accessor for DebugSettingsProvider();
  v189.receiver = v29;
  v189.super_class = v174;
  v170 = v30;
  v31 = objc_msgSendSuper2(&v189, "init");
  v172 = type metadata accessor for NavigationActionDebugSetting();
  v32 = swift_allocObject();
  v32[7] = 0x73676E6974746553;
  v32[8] = 0xE800000000000000;
  v32[9] = 0;
  v32[10] = 0;
  v32[11] = v31;
  v32[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v169 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[13] = 0;
  v33 = v28;
  v34 = v31;
  UUID.init()();
  v35 = UUID.uuidString.getter();
  v37 = v36;
  v176 = v14;
  v14(v6, v33);
  v190 = v35;
  v191 = v37;
  AnyHashable.init<A>(_:)();

  *(v171 + 32) = v32;
  v38 = objc_allocWithZone(type metadata accessor for StorefrontSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v188.receiver = v38;
  v188.super_class = v174;
  v39 = objc_msgSendSuper2(&v188, "init");
  v40 = swift_allocObject();
  v40[7] = 0x6F726665726F7453;
  v40[8] = 0xEA0000000000746ELL;
  v40[9] = 0;
  v40[10] = 0;
  v40[11] = v39;
  v40[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v40[13] = 0;
  v41 = v39;
  UUID.init()();
  v42 = UUID.uuidString.getter();
  v44 = v43;
  v14(v6, v33);
  v190 = v42;
  v191 = v44;
  AnyHashable.init<A>(_:)();

  v45 = v171;
  *(v171 + 40) = v40;
  v46 = objc_allocWithZone(type metadata accessor for MetricsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v47 = v174;
  v187.receiver = v46;
  v187.super_class = v174;
  v48 = objc_msgSendSuper2(&v187, "init");
  v49 = swift_allocObject();
  v49[7] = 0x7363697274654DLL;
  v49[8] = 0xE700000000000000;
  v49[9] = 0;
  v49[10] = 0;
  v50 = v169;
  v49[11] = v48;
  v49[12] = v50;
  v49[13] = 0;
  v51 = v48;
  UUID.init()();
  v52 = UUID.uuidString.getter();
  v54 = v53;
  v176(v6, v175);
  v190 = v52;
  v191 = v54;
  AnyHashable.init<A>(_:)();

  *(v45 + 48) = v49;
  v55 = objc_allocWithZone(type metadata accessor for TodaySettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v186.receiver = v55;
  v186.super_class = v47;
  v56 = objc_msgSendSuper2(&v186, "init");
  v57 = swift_allocObject();
  v57[7] = 0x7961646F54;
  v57[8] = 0xE500000000000000;
  v57[9] = 0;
  v57[10] = 0;
  v57[11] = v56;
  v57[12] = v50;
  v57[13] = 0;
  v58 = v56;
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v61 = v60;
  v62 = v176;
  v176(v6, v175);
  v190 = v59;
  v191 = v61;
  AnyHashable.init<A>(_:)();

  v63 = v171;
  *(v171 + 56) = v57;
  v64 = objc_allocWithZone(type metadata accessor for ArcadeSettings());
  v65 = v170;
  v170 = v65;
  v66 = v167[0];

  v67 = sub_100157BF4(v65, v66);

  v68 = swift_allocObject();
  v68[7] = 0x656461637241;
  v68[8] = 0xE600000000000000;
  v68[9] = 0;
  v68[10] = 0;
  v69 = v169;
  v68[11] = v67;
  v68[12] = v69;
  v68[13] = 0;
  v70 = v67;
  UUID.init()();
  v71 = UUID.uuidString.getter();
  v73 = v72;
  v74 = v175;
  v62(v6, v175);
  v190 = v71;
  v191 = v73;
  AnyHashable.init<A>(_:)();

  *(v63 + 64) = v68;
  v75 = objc_allocWithZone(type metadata accessor for SearchSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v76 = v174;
  v185.receiver = v75;
  v185.super_class = v174;
  v77 = objc_msgSendSuper2(&v185, "init");
  v78 = swift_allocObject();
  v78[7] = 0x686372616553;
  v78[8] = 0xE600000000000000;
  v78[9] = 0;
  v78[10] = 0;
  v78[11] = v77;
  v78[12] = v69;
  v78[13] = 0;
  v79 = v77;
  UUID.init()();
  v80 = UUID.uuidString.getter();
  v82 = v81;
  v176(v6, v74);
  v190 = v80;
  v191 = v82;
  AnyHashable.init<A>(_:)();

  v83 = v171;
  *(v171 + 72) = v78;
  v84 = objc_allocWithZone(type metadata accessor for ProductPageSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v184.receiver = v84;
  v184.super_class = v76;
  v85 = objc_msgSendSuper2(&v184, "init");
  v86 = swift_allocObject();
  strcpy((v86 + 56), "Product Page");
  *(v86 + 69) = 0;
  *(v86 + 70) = -5120;
  *(v86 + 72) = 0;
  *(v86 + 80) = 0;
  *(v86 + 88) = v85;
  *(v86 + 96) = v69;
  *(v86 + 104) = 0;
  v87 = v85;
  UUID.init()();
  v88 = UUID.uuidString.getter();
  v90 = v89;
  v176(v6, v175);
  v190 = v88;
  v191 = v90;
  AnyHashable.init<A>(_:)();

  v83[10] = v86;
  v91 = objc_allocWithZone(type metadata accessor for AdsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v183.receiver = v91;
  v183.super_class = v76;
  v92 = objc_msgSendSuper2(&v183, "init");
  v93 = swift_allocObject();
  v93[7] = 7562305;
  v93[8] = 0xE300000000000000;
  v93[9] = 0;
  v93[10] = 0;
  v93[11] = v92;
  v93[12] = v69;
  v93[13] = 0;
  v94 = v92;
  UUID.init()();
  v95 = UUID.uuidString.getter();
  v97 = v96;
  v98 = v175;
  v99 = v176;
  v176(v6, v175);
  v190 = v95;
  v191 = v97;
  AnyHashable.init<A>(_:)();

  v83[11] = v93;
  v100 = objc_allocWithZone(type metadata accessor for OnboardingSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v182.receiver = v100;
  v182.super_class = v174;
  v101 = objc_msgSendSuper2(&v182, "init");
  v102 = swift_allocObject();
  v102[7] = 0x696472616F626E4FLL;
  v102[8] = 0xEA0000000000676ELL;
  v102[9] = 0;
  v102[10] = 0;
  v102[11] = v101;
  v102[12] = v169;
  v102[13] = 0;
  v103 = v101;
  UUID.init()();
  v104 = UUID.uuidString.getter();
  v106 = v105;
  v99(v6, v98);
  v190 = v104;
  v191 = v106;
  AnyHashable.init<A>(_:)();

  v83[12] = v102;
  v107 = objc_allocWithZone(type metadata accessor for ShelfPlaceholderSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v108 = v174;
  v181.receiver = v107;
  v181.super_class = v174;
  v109 = objc_msgSendSuper2(&v181, "init");
  v110 = swift_allocObject();
  v110[7] = 0xD000000000000012;
  v110[8] = 0x800000010081B730;
  v110[9] = 0;
  v110[10] = 0;
  v111 = v169;
  v110[11] = v109;
  v110[12] = v111;
  v110[13] = 0;
  v112 = v109;
  UUID.init()();
  v113 = UUID.uuidString.getter();
  v115 = v114;
  v116 = v175;
  v176(v6, v175);
  v190 = v113;
  v191 = v115;
  AnyHashable.init<A>(_:)();

  *(v171 + 104) = v110;
  v117 = objc_allocWithZone(type metadata accessor for DownloadProgressSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v180.receiver = v117;
  v180.super_class = v108;
  v118 = objc_msgSendSuper2(&v180, "init");
  v119 = swift_allocObject();
  v119[7] = 0xD000000000000011;
  v119[8] = 0x800000010081B750;
  v119[9] = 0;
  v119[10] = 0;
  v119[11] = v118;
  v119[12] = v111;
  v120 = v111;
  v119[13] = 0;
  v121 = v118;
  UUID.init()();
  v122 = UUID.uuidString.getter();
  v124 = v123;
  v125 = v176;
  v176(v6, v116);
  v190 = v122;
  v191 = v124;
  AnyHashable.init<A>(_:)();

  v126 = v171;
  *(v171 + 112) = v119;
  v127 = objc_allocWithZone(type metadata accessor for AppCapabilitiesSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v179.receiver = v127;
  v179.super_class = v174;
  v128 = objc_msgSendSuper2(&v179, "init");
  v129 = swift_allocObject();
  v129[7] = 0xD000000000000010;
  v129[8] = 0x800000010081B770;
  v129[9] = 0;
  v129[10] = 0;
  v129[11] = v128;
  v129[12] = v120;
  v129[13] = 0;
  v130 = v128;
  UUID.init()();
  v131 = UUID.uuidString.getter();
  v133 = v132;
  v134 = v175;
  v125(v6, v175);
  v190 = v131;
  v191 = v133;
  AnyHashable.init<A>(_:)();

  v135 = v126;
  *(v126 + 120) = v129;
  v136 = objc_allocWithZone(type metadata accessor for LocalizerSettings());
  swift_unknownObjectWeakInit();
  v137 = v170;
  swift_unknownObjectWeakAssign();
  v178.receiver = v136;
  v138 = v174;
  v178.super_class = v174;
  v139 = objc_msgSendSuper2(&v178, "init");
  v140 = swift_allocObject();
  v140[7] = 0x657A696C61636F4CLL;
  v140[8] = 0xE900000000000072;
  v140[9] = 0;
  v140[10] = 0;
  v141 = v169;
  v140[11] = v139;
  v140[12] = v141;
  v140[13] = 0;
  v142 = v139;
  UUID.init()();
  v143 = UUID.uuidString.getter();
  v145 = v144;
  v176(v6, v134);
  v190 = v143;
  v191 = v145;
  AnyHashable.init<A>(_:)();

  v146 = v135;
  *(v135 + 128) = v140;
  v147 = objc_allocWithZone(type metadata accessor for NotificationSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v177.receiver = v147;
  v177.super_class = v138;
  v148 = objc_msgSendSuper2(&v177, "init");

  v149 = swift_allocObject();
  strcpy((v149 + 56), "Notifications");
  *(v149 + 70) = -4864;
  *(v149 + 72) = 0;
  *(v149 + 80) = 0;
  *(v149 + 88) = v148;
  *(v149 + 96) = v141;
  *(v149 + 104) = 0;
  v150 = v148;
  UUID.init()();
  v151 = UUID.uuidString.getter();
  v153 = v152;
  v154 = v175;
  v155 = v176;
  v176(v6, v175);
  v190 = v151;
  v191 = v153;
  AnyHashable.init<A>(_:)();

  *(v146 + 136) = v149;
  v156 = v146;
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_1007B15F0;
  type metadata accessor for DebugSection();
  v158 = swift_allocObject();
  UUID.init()();
  v159 = UUID.uuidString.getter();
  v161 = v160;
  v155(v6, v154);
  v158[2] = v159;
  v158[3] = v161;
  v158[4] = 0;
  v158[5] = 0xE000000000000000;
  v158[6] = v168;
  *(v157 + 32) = v158;
  v162 = swift_allocObject();
  UUID.init()();
  v163 = UUID.uuidString.getter();
  v165 = v164;
  v155(v6, v154);
  v162[2] = v163;
  v162[3] = v165;
  v162[4] = 0;
  v162[5] = 0xE000000000000000;
  v162[6] = v156;
  *(v157 + 40) = v162;

  return v157;
}
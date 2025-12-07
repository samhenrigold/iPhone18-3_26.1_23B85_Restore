uint64_t sub_10010E180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10010E37C();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_10010E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10010E37C();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

unint64_t sub_10010E37C()
{
  result = qword_100974648;
  if (!qword_100974648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974648);
  }

  return result;
}

uint64_t sub_10010E3D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010E41C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10010E4C8()
{
  v0 = type metadata accessor for Shelf.PresentationHints();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v27 - v3;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.smallLockup(_:))
  {
    if (v13 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      v14 = type metadata accessor for MediumLockupCollectionViewCell(0);
      v15 = type metadata accessor for MediumLockupCollectionViewCell;
      sub_100112220(&qword_100974B28, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007B8FBC);
      sub_100112220(&qword_100974B30, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007CA390);
      v16 = &qword_100974B38;
      v17 = &unk_1007E0CF0;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      v14 = type metadata accessor for LargeLockupCollectionViewCell(0);
      v15 = type metadata accessor for LargeLockupCollectionViewCell;
      sub_100112220(&qword_100974B58, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007B90C4);
      sub_100112220(&qword_100974B60, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007E10E8);
      v16 = &qword_100974B68;
      v17 = &unk_1007B90F4;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productTopLockup(_:))
    {
      v14 = type metadata accessor for ProductLockupCollectionViewCell(0);
      v15 = type metadata accessor for ProductLockupCollectionViewCell;
      sub_100112220(&qword_100974988, type metadata accessor for ProductLockupCollectionViewCell, &unk_1007B85D4);
      sub_100112220(&qword_100987110, type metadata accessor for ProductLockupCollectionViewCell, &unk_1007CFA80);
      v16 = &qword_100974990;
      v17 = &unk_1007B5188;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell(0);
      v15 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell;
      sub_100112220(&qword_100974BE8, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell, &unk_1007B9484);
      sub_100112220(&qword_100974BF0, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell, &unk_1007CEEA4);
      v16 = &qword_100974BF8;
      v17 = &unk_1007B94B4;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell(0);
      v15 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell;
      sub_100112220(&qword_100974BB8, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell, &unk_1007B9334);
      sub_100112220(&qword_100974BC0, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell, &unk_1007D7358);
      v16 = &qword_100974BC8;
      v17 = &unk_1007B9364;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
    {
      v14 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell(0);
      v15 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell;
      sub_100112220(&qword_100974788, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_1007D0C34);
      sub_100112220(&qword_100974790, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_1007D0C18);
      v16 = &qword_100974798;
      v17 = &unk_1007D0BD0;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v14 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell(0);
      v15 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell;
      sub_100112220(&qword_100974770, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_1007D44D4);
      sub_100112220(&qword_100974778, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_1007D44B8);
      v16 = &qword_100974780;
      v17 = &unk_1007D4470;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.action(_:))
    {
      v14 = type metadata accessor for ActionCollectionViewCell(0);
      v15 = type metadata accessor for ActionCollectionViewCell;
      sub_100112220(&qword_100974DE0, type metadata accessor for ActionCollectionViewCell, &unk_1007BA060);
      sub_100112220(&qword_100974DE8, type metadata accessor for ActionCollectionViewCell, &unk_1007CED90);
      v16 = &qword_100974DF0;
      v17 = &unk_1007DBC10;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.artwork(_:))
    {
      v14 = type metadata accessor for ArtworkCollectionViewCell(0);
      v15 = type metadata accessor for ArtworkCollectionViewCell;
      sub_100112220(&qword_100974D30, type metadata accessor for ArtworkCollectionViewCell, &unk_1007B9CCC);
      sub_100112220(&qword_100974D38, type metadata accessor for ArtworkCollectionViewCell, &unk_1007D5278);
      v16 = &unk_100974D40;
      v17 = &unk_1007B9CFC;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.ribbonBar(_:) || v13 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v14 = type metadata accessor for RibbonBarItemCollectionViewCell(0);
      v15 = type metadata accessor for RibbonBarItemCollectionViewCell;
      sub_100112220(&qword_100974CF0, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_1007BEBE8);
      sub_100112220(&qword_100974CF8, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_1007DCD10);
      v16 = &qword_100974D00;
      v17 = &unk_1007BEC18;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.paragraph(_:))
    {
      v14 = type metadata accessor for ParagraphCollectionViewCell(0);
      v15 = type metadata accessor for ParagraphCollectionViewCell;
      sub_100112220(&qword_100974B00, type metadata accessor for ParagraphCollectionViewCell, &unk_1007B8EB4);
      sub_100112220(&qword_100974B08, type metadata accessor for ParagraphCollectionViewCell, &unk_1007C9E80);
      v16 = &qword_100974B10;
      v17 = &unk_1007D5850;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.annotation(_:))
    {
      v19 = type metadata accessor for Feature();
      v31 = v19;
      v32 = sub_100112220(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v20 = sub_1000056E0(v30);
      (*(*(v19 - 8) + 104))(v20, enum case for Feature.annotations_update_2025A(_:), v19);
      LOBYTE(v19) = isFeatureEnabled(_:)();
      sub_100007000(v30);
      if ((v19 & 1) == 0)
      {
        v14 = type metadata accessor for AnnotationCollectionViewCell(0);
        v15 = type metadata accessor for AnnotationCollectionViewCell;
        sub_100112220(&qword_100974DB0, type metadata accessor for AnnotationCollectionViewCell, &unk_1007BA000);
        sub_100112220(&qword_100974DB8, type metadata accessor for AnnotationCollectionViewCell, &unk_1007E26B0);
        v16 = &qword_100974DC0;
        v17 = &unk_1007DC520;
        goto LABEL_26;
      }

      v14 = type metadata accessor for AnnotationCollectionViewHostingCell(0);
      v15 = type metadata accessor for AnnotationCollectionViewHostingCell;
      sub_100112220(&qword_100974DC8, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_1007B7B58);
      sub_100112220(&qword_100974DD0, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_1007CAC78);
      v16 = &unk_100974DD8;
      goto LABEL_31;
    }

    if (v13 == enum case for Shelf.ContentType.footnote(_:))
    {
      v14 = type metadata accessor for FootnoteCollectionViewCell(0);
      v15 = type metadata accessor for FootnoteCollectionViewCell;
      sub_100112220(&qword_100974C88, type metadata accessor for FootnoteCollectionViewCell, &unk_1007B9834);
      sub_100112220(&qword_100970F18, type metadata accessor for FootnoteCollectionViewCell, &unk_1007B2468);
      v16 = &qword_100974C90;
      v17 = &unk_1007B9864;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.titledParagraph(_:))
    {
      v14 = type metadata accessor for TitledParagraphCollectionViewCell(0);
      v15 = type metadata accessor for TitledParagraphCollectionViewCell;
      sub_100112220(&qword_100974828, type metadata accessor for TitledParagraphCollectionViewCell, &unk_1007B800C);
      sub_100112220(&qword_100978680, type metadata accessor for TitledParagraphCollectionViewCell, &unk_1007BDBB0);
      v16 = &unk_100974830;
      v17 = &unk_1007B803C;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.editorialCard(_:))
    {
      v14 = type metadata accessor for EditorialCardCollectionViewCell(0);
      v15 = type metadata accessor for EditorialCardCollectionViewCell;
      sub_100112220(&qword_100974CD8, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007B9A2C);
      sub_100112220(&qword_100974CE0, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007C0190);
      v16 = &qword_100974CE8;
      v17 = &unk_1007B9A5C;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.videoCard(_:))
    {
      v14 = type metadata accessor for VideoCardCollectionViewCell(0);
      v15 = type metadata accessor for VideoCardCollectionViewCell;
      sub_100112220(&qword_1009747B8, type metadata accessor for VideoCardCollectionViewCell, &unk_1007B7E18);
      sub_100112220(&qword_1009747C0, type metadata accessor for VideoCardCollectionViewCell, &unk_1007BA338);
      v16 = &qword_1009747C8;
      v17 = &unk_1007B7E48;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.brick(_:))
    {
      v14 = type metadata accessor for BrickCollectionViewCell(0);
      v15 = type metadata accessor for BrickCollectionViewCell;
      sub_100112220(&qword_100974D08, type metadata accessor for BrickCollectionViewCell, &unk_1007B9B7C);
      sub_100112220(&qword_100974D10, type metadata accessor for BrickCollectionViewCell, &unk_1007CA00C);
      v16 = &qword_100974D18;
      v17 = &unk_1007B9BAC;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_44:
      v14 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell(0);
      v15 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell;
      sub_100112220(&qword_1009748E0, type metadata accessor for ChartOrCategoryBrickCollectionViewCell, &unk_1007B9AD4);
      sub_100112220(&qword_1009748E8, type metadata accessor for ChartOrCategoryBrickCollectionViewCell, &unk_1007C1498);
      v16 = &qword_1009748F0;
      v17 = &unk_1007B9B04;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productCapability(_:))
    {
      v21 = type metadata accessor for Feature();
      v31 = v21;
      v32 = sub_100112220(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v22 = sub_1000056E0(v30);
      (*(*(v21 - 8) + 104))(v22, enum case for Feature.product_capability_update_2024E(_:), v21);
      LOBYTE(v21) = isFeatureEnabled(_:)();
      sub_100007000(v30);
      if ((v21 & 1) == 0)
      {
        v14 = type metadata accessor for ProductCapabilityCell(0);
        v15 = type metadata accessor for ProductCapabilityCell;
        sub_100112220(&qword_100974A28, type metadata accessor for ProductCapabilityCell, &unk_1007B8930);
        sub_100112220(&qword_100974A30, type metadata accessor for ProductCapabilityCell, &unk_1007DDBA8);
        v16 = &qword_100974A38;
        v17 = &unk_1007B8960;
        goto LABEL_26;
      }
    }

    else
    {
      if (v13 == enum case for Shelf.ContentType.reviews(_:))
      {
        v14 = type metadata accessor for ProductReviewCollectionViewCell(0);
        v15 = type metadata accessor for ProductReviewCollectionViewCell;
        sub_100112220(&qword_100974960, type metadata accessor for ProductReviewCollectionViewCell, &unk_1007B8664);
        sub_100112220(&qword_100974968, type metadata accessor for ProductReviewCollectionViewCell, &unk_1007D7D58);
        v16 = &unk_100974970;
        v17 = &unk_1007B8694;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v14 = type metadata accessor for ReviewSummaryCollectionViewCell(0);
        v15 = type metadata accessor for ReviewSummaryCollectionViewCell;
        sub_100112220(&qword_100974948, type metadata accessor for ReviewSummaryCollectionViewCell, &unk_1007B8604);
        sub_100112220(&qword_100974950, type metadata accessor for ReviewSummaryCollectionViewCell, &unk_1007E1540);
        v16 = &unk_100974958;
        v17 = &unk_1007BA64C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorsChoice(_:))
      {
        v14 = type metadata accessor for ProductEditorsChoiceCollectionViewCell(0);
        v15 = type metadata accessor for ProductEditorsChoiceCollectionViewCell;
        sub_100112220(&qword_100974C98, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_1007BF3E4);
        sub_100112220(&qword_100974CA0, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_1007BF3C8);
        v16 = &qword_100974CA8;
        v17 = &unk_1007BF488;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.todayCard(_:) || v13 == enum case for Shelf.ContentType.miniTodayCard(_:))
      {
        v14 = type metadata accessor for BaseTodayCardCollectionViewCell(0);
        v15 = type metadata accessor for BaseTodayCardCollectionViewCell;
        sub_100112220(&qword_100974810, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007D1F34);
        sub_100112220(&qword_100974818, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007D1DD8);
        v16 = &qword_100974820;
        v17 = &unk_1007D1F64;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialLink(_:))
      {
        v14 = type metadata accessor for LinkCollectionViewCell(0);
        v15 = type metadata accessor for LinkCollectionViewCell;
        sub_100112220(&qword_100974B40, type metadata accessor for LinkCollectionViewCell, &unk_1007B901C);
        sub_100112220(&qword_100974B48, type metadata accessor for LinkCollectionViewCell, &unk_1007C0E60);
        v16 = &qword_100974B50;
        v17 = &unk_1007B904C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.quote(_:))
      {
        v14 = type metadata accessor for QuoteCollectionViewCell(0);
        v15 = type metadata accessor for QuoteCollectionViewCell;
        sub_100112220(&qword_100974978, type metadata accessor for QuoteCollectionViewCell, &unk_1007B8534);
        sub_100112220(&unk_100982680, type metadata accessor for QuoteCollectionViewCell, &unk_1007C9D20);
        v16 = &qword_100974980;
        v17 = &unk_1007B8564;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.horizontalRule(_:))
      {
        v14 = type metadata accessor for HorizontalRuleCollectionViewCell(0);
        v15 = type metadata accessor for HorizontalRuleCollectionViewCell;
        sub_100112220(&qword_100974C00, type metadata accessor for HorizontalRuleCollectionViewCell, &unk_1007B952C);
        sub_100112220(&qword_100974C08, type metadata accessor for HorizontalRuleCollectionViewCell, &unk_1007D29C8);
        v16 = &qword_100974C10;
        v17 = &unk_1007B955C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedArtwork(_:))
      {
        v14 = type metadata accessor for FramedArtworkCollectionViewCell(0);
        v15 = type metadata accessor for FramedArtworkCollectionViewCell;
        sub_100112220(&qword_100974C78, type metadata accessor for FramedArtworkCollectionViewCell, &unk_1007B97D4);
        sub_100112220(&unk_1009901F0, type metadata accessor for FramedArtworkCollectionViewCell, &unk_1007DAC60);
        v16 = &qword_100974C80;
        v17 = &unk_1007D93D8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshots(_:))
      {
        v14 = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
        v15 = type metadata accessor for ScreenshotShelfCollectionViewCell;
        sub_100112220(&qword_100974910, type metadata accessor for ScreenshotShelfCollectionViewCell, &unk_1007B83E4);
        sub_100112220(&qword_100974918, type metadata accessor for ScreenshotShelfCollectionViewCell, &unk_1007BA280);
        v16 = &unk_100974920;
        v17 = &unk_1007B8414;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMedia(_:))
      {
        v14 = type metadata accessor for ProductMediaCollectionViewCell(0);
        v15 = type metadata accessor for ProductMediaCollectionViewCell;
        sub_100112220(&qword_100974A00, type metadata accessor for ProductMediaCollectionViewCell, &unk_1007B88D0);
        sub_100112220(&qword_100974A08, type metadata accessor for ProductMediaCollectionViewCell, &unk_1007BAA58);
        v16 = &qword_100974A10;
        v17 = &unk_1007CFE20;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v14 = type metadata accessor for ProductMediaItemCollectionViewCell(0);
        v15 = type metadata accessor for ProductMediaItemCollectionViewCell;
        sub_100112220(&qword_1009749E8, type metadata accessor for ProductMediaItemCollectionViewCell, &unk_1007BF0F0);
        sub_100112220(&qword_1009749F0, type metadata accessor for ProductMediaItemCollectionViewCell, &unk_1007BBF90);
        v16 = &unk_1009749F8;
        v17 = &unk_1007BF120;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appShowcase(_:))
      {
        v14 = type metadata accessor for AppShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for AppShowcaseCollectionViewCell;
        sub_100112220(&qword_100974D88, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007B9F14);
        sub_100112220(&qword_100974D90, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007DA070);
        v16 = &qword_100974D98;
        v17 = &unk_1007B9F44;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
      {
        v14 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell;
        sub_100112220(&qword_100974BD0, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell, &unk_1007B93DC);
        sub_100112220(&qword_100974BD8, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell, "Q;\r");
        v16 = &unk_100974BE0;
        v17 = &unk_1007B940C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appTrailerLockup(_:))
      {
        v14 = type metadata accessor for AppTrailerLockupCollectionViewCell(0);
        v15 = type metadata accessor for AppTrailerLockupCollectionViewCell;
        sub_100112220(&qword_100974D70, type metadata accessor for AppTrailerLockupCollectionViewCell, &unk_1007B8F14);
        sub_100112220(&qword_100974D78, type metadata accessor for AppTrailerLockupCollectionViewCell, &unk_1007B3B30);
        v16 = &unk_100974D80;
        v17 = &unk_1007B8F44;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        v14 = type metadata accessor for ProductPageLinkCollectionViewCell(0);
        v15 = type metadata accessor for ProductPageLinkCollectionViewCell;
        sub_100112220(&qword_1009749D8, type metadata accessor for ProductPageLinkCollectionViewCell, &unk_1007B870C);
        sub_100112220(&unk_100991B30, type metadata accessor for ProductPageLinkCollectionViewCell, &unk_1007DD508);
        v16 = &qword_1009749E0;
        v17 = &unk_1007B873C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productRatings(_:))
      {
        v14 = type metadata accessor for ProductRatingsCollectionViewCell(0);
        v15 = type metadata accessor for ProductRatingsCollectionViewCell;
        sub_100112220(&qword_1009749C8, type metadata accessor for ProductRatingsCollectionViewCell, &unk_1007DDEC0);
        sub_100112220(&qword_100970EB0, type metadata accessor for ProductRatingsCollectionViewCell, &unk_1007B22E0);
        v16 = &qword_1009749D0;
        v17 = &unk_1007DDEF0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReview(_:))
      {
        v14 = type metadata accessor for GenericProductReviewCollectionViewCell(0);
        v15 = type metadata accessor for GenericProductReviewCollectionViewCell;
        sub_100112220(&qword_1009749B0, type metadata accessor for GenericProductReviewCollectionViewCell, &unk_1007CF12C);
        sub_100112220(&qword_1009749B8, type metadata accessor for GenericProductReviewCollectionViewCell, &unk_1007D79F8);
        v16 = &unk_1009749C0;
        v17 = &unk_1007CF15C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReviewAction(_:))
      {
        v14 = type metadata accessor for GenericProductReviewActionCollectionViewCell(0);
        v15 = type metadata accessor for GenericProductReviewActionCollectionViewCell;
        sub_100112220(&qword_100974998, type metadata accessor for GenericProductReviewActionCollectionViewCell, &unk_1007BD890);
        sub_100112220(&qword_1009749A0, type metadata accessor for GenericProductReviewActionCollectionViewCell, &unk_1007CA980);
        v16 = &unk_1009749A8;
        v17 = &unk_1007BD8C0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.linkableText(_:))
      {
        v14 = type metadata accessor for LinkableTextCollectionViewCell(0);
        v15 = type metadata accessor for LinkableTextCollectionViewCell;
        sub_100112220(&qword_100974938, type metadata accessor for LinkableTextCollectionViewCell, &unk_1007B8784);
        sub_100112220(&qword_100970F00, type metadata accessor for LinkableTextCollectionViewCell, &unk_1007B23B0);
        v16 = &qword_100974940;
        v17 = &unk_1007D0EC0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedVideo(_:))
      {
        v14 = type metadata accessor for FramedVideoCollectionViewCell(0);
        v15 = type metadata accessor for FramedVideoCollectionViewCell;
        sub_100112220(&qword_100974C68, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007B974C);
        sub_100112220(&unk_10098B630, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007D4798);
        v16 = &qword_100974C70;
        v17 = &unk_1007E0C48;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productDescription(_:))
      {
        v14 = type metadata accessor for ProductDescriptionCollectionViewCell(0);
        v15 = type metadata accessor for ProductDescriptionCollectionViewCell;
        sub_100112220(&qword_100974A18, type metadata accessor for ProductDescriptionCollectionViewCell, &unk_1007B8828);
        sub_100112220(&qword_10098BB90, type metadata accessor for ProductDescriptionCollectionViewCell, &unk_1007D4FB0);
        v16 = &unk_100974A20;
        v17 = &unk_1007B8858;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.banner(_:))
      {
        v14 = type metadata accessor for BannerCollectionViewCell(0);
        v15 = type metadata accessor for BannerCollectionViewCell;
        sub_100112220(&qword_100974D20, type metadata accessor for BannerCollectionViewCell, &unk_1007B9C24);
        sub_100112220(&qword_10096F998, type metadata accessor for BannerCollectionViewCell, &unk_1007B0C40);
        v16 = &unk_100974D28;
        v17 = &unk_1007B9C54;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        v14 = type metadata accessor for ScreenshotsLockupCollectionViewCell(0);
        v15 = type metadata accessor for ScreenshotsLockupCollectionViewCell;
        sub_100112220(&qword_1009748F8, type metadata accessor for ScreenshotsLockupCollectionViewCell, &unk_1007B8F14);
        sub_100112220(&qword_100974900, type metadata accessor for ScreenshotsLockupCollectionViewCell, &unk_1007B3B30);
        v16 = &unk_100974908;
        v17 = &unk_1007B8F44;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.roundedButton(_:))
      {
        v14 = type metadata accessor for RoundedButtonCollectionViewCell(0);
        v15 = type metadata accessor for RoundedButtonCollectionViewCell;
        sub_100112220(&qword_100974928, type metadata accessor for RoundedButtonCollectionViewCell, &unk_1007B848C);
        sub_100112220(&qword_1009705E0, type metadata accessor for RoundedButtonCollectionViewCell, &unk_1007B1C68);
        v16 = &unk_100974930;
        v17 = &unk_1007B84BC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.titledButtonStack(_:))
      {
        v14 = type metadata accessor for TitledButtonStackCollectionViewCell(0);
        v15 = type metadata accessor for TitledButtonStackCollectionViewCell;
        sub_100112220(&qword_100974838, type metadata accessor for TitledButtonStackCollectionViewCell, &unk_1007B80B4);
        sub_100112220(&qword_100974840, type metadata accessor for TitledButtonStackCollectionViewCell, &unk_1007CAB68);
        v16 = &unk_100974848;
        v17 = &unk_1007B80E4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v14 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
        v15 = type metadata accessor for BaseTodayBrickCollectionViewCell;
        sub_100112220(&qword_100974850, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007BC71C);
        sub_100112220(&qword_100974858, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007BC5F8);
        v16 = &qword_100974860;
        v17 = &unk_1007BC6D4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
      {
        v14 = type metadata accessor for LargeHeroBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for LargeHeroBreakoutCollectionViewCell;
        sub_100112220(&qword_100974B70, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007B916C);
        sub_100112220(&qword_100974B78, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007BD618);
        v16 = &qword_100974B80;
        v17 = &unk_1007B919C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.upsellBreakout(_:))
      {
        v14 = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for UpsellBreakoutCollectionViewCell;
        sub_100112220(&qword_1009747D0, type metadata accessor for UpsellBreakoutCollectionViewCell, &unk_1007B7EC0);
        sub_100112220(&qword_1009747D8, type metadata accessor for UpsellBreakoutCollectionViewCell, &unk_1007C31A0);
        v16 = &unk_1009747E0;
        v17 = &unk_1007B7EF0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        v14 = type metadata accessor for SmallBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for SmallBreakoutCollectionViewCell;
        sub_100112220(&qword_1009748A8, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_1007B830C);
        sub_100112220(&qword_10098BA00, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_1007D4C98);
        v16 = &qword_1009748B0;
        v17 = &unk_1007B833C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        v14 = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
        v15 = type metadata accessor for EditorialStoryCardCollectionViewCell;
        sub_100112220(&qword_100974CB0, type metadata accessor for EditorialStoryCardCollectionViewCell, &unk_1007B98DC);
        sub_100112220(&qword_100974CB8, type metadata accessor for EditorialStoryCardCollectionViewCell, &unk_1007DB548);
        v16 = &unk_100974CC0;
        v17 = &unk_1007B990C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
      {
        v14 = type metadata accessor for MixedMediaLockupCollectionViewCell(0);
        v15 = type metadata accessor for MixedMediaLockupCollectionViewCell;
        sub_100112220(&qword_100974B18, type metadata accessor for MixedMediaLockupCollectionViewCell, &unk_1007B8F14);
        sub_100112220(&qword_100972B20, type metadata accessor for MixedMediaLockupCollectionViewCell, &unk_1007B3B30);
        v16 = &unk_100974B20;
        v17 = &unk_1007B8F44;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeFooter(_:))
      {
        v14 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeFooterCollectionViewCell;
        sub_100112220(&qword_100974D60, type metadata accessor for ArcadeFooterCollectionViewCell, &unk_1007B9E6C);
        sub_100112220(&qword_100973FB8, type metadata accessor for ArcadeFooterCollectionViewCell, &unk_1007B5B58);
        v16 = &unk_100974D68;
        v17 = &unk_1007B9E9C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialQuote(_:))
      {
        v14 = type metadata accessor for EditorialQuoteCollectionViewCell(0);
        v15 = type metadata accessor for EditorialQuoteCollectionViewCell;
        sub_100112220(&qword_100974CC8, type metadata accessor for EditorialQuoteCollectionViewCell, &unk_1007B9984);
        sub_100112220(&unk_10098D250, type metadata accessor for EditorialQuoteCollectionViewCell, &unk_1007D6910);
        v16 = &qword_100974CD0;
        v17 = &unk_1007B99B4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeShowcase(_:))
      {
        v14 = type metadata accessor for ArcadeShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeShowcaseCollectionViewCell;
        sub_100112220(&qword_100974D48, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007B9D9C);
        sub_100112220(&qword_100974D50, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007C1AF0);
        v16 = &qword_100974D58;
        v17 = &unk_1007B9DCC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
      {
        v14 = type metadata accessor for GameCenterActivityFeedCollectionViewCell(0);
        v15 = type metadata accessor for GameCenterActivityFeedCollectionViewCell;
        sub_100112220(&qword_100974C50, type metadata accessor for GameCenterActivityFeedCollectionViewCell, &unk_1007B7B58);
        sub_100112220(&qword_100974C58, type metadata accessor for GameCenterActivityFeedCollectionViewCell, &unk_1007CAC78);
        v16 = &unk_100974C60;
        goto LABEL_31;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
      {
        v14 = type metadata accessor for ArcadeDownloadPackCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeDownloadPackCollectionViewCell;
        sub_100112220(&qword_100974758, type metadata accessor for ArcadeDownloadPackCollectionViewCell, &unk_1007B7BD0);
        sub_100112220(&qword_100974760, type metadata accessor for ArcadeDownloadPackCollectionViewCell, &unk_1007CA7F8);
        v16 = &qword_100974768;
        v17 = &unk_1007B7C00;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
      {
        v14 = type metadata accessor for GameCenterReengagementCollectionViewCell(0);
        v15 = type metadata accessor for GameCenterReengagementCollectionViewCell;
        sub_100112220(&qword_100974C30, type metadata accessor for GameCenterReengagementCollectionViewCell, &unk_1007B967C);
        sub_100112220(&qword_100996200, type metadata accessor for GameCenterReengagementCollectionViewCell, &unk_1007E1E10);
        v16 = &qword_100974C38;
        v17 = &unk_1007B96AC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
        v15 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell;
        sub_100112220(&qword_100974880, type metadata accessor for SmallGameCenterPlayerCollectionViewCell, &unk_1007B81BC);
        sub_100112220(&qword_100989850, type metadata accessor for SmallGameCenterPlayerCollectionViewCell, &unk_1007D2860);
        v16 = &unk_100974888;
        v17 = &unk_1007B81EC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell(0);
        v15 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell;
        sub_100112220(&qword_100974B88, type metadata accessor for LargeGameCenterPlayerCollectionViewCell, &unk_1007B9214);
        sub_100112220(&qword_100974B90, type metadata accessor for LargeGameCenterPlayerCollectionViewCell, &unk_1007BF1D0);
        v16 = &unk_100974B98;
        v17 = &unk_1007B9244;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
      {
        v14 = type metadata accessor for AchievementSummaryCollectionViewCell(0);
        v15 = type metadata accessor for AchievementSummaryCollectionViewCell;
        sub_100112220(&qword_100974C40, type metadata accessor for AchievementSummaryCollectionViewCell, &unk_1007BA0C0);
        sub_100112220(&qword_100995E70, type metadata accessor for AchievementSummaryCollectionViewCell, &unk_1007E1B18);
        v16 = &qword_100974C48;
        v17 = &unk_1007BA118;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.posterLockup(_:))
      {
        v14 = type metadata accessor for PosterLockupCollectionViewCell(0);
        v15 = type metadata accessor for PosterLockupCollectionViewCell;
        sub_100112220(&qword_100974AD8, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007B8DC8);
        sub_100112220(&qword_100974AE0, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007D7FA4);
        v16 = &qword_100974AE8;
        v17 = &unk_1007B8DF8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v14 = type metadata accessor for SmallContactCardCollectionViewCell(0);
        v15 = type metadata accessor for SmallContactCardCollectionViewCell;
        sub_100112220(&qword_100974890, type metadata accessor for SmallContactCardCollectionViewCell, &unk_1007B8264);
        sub_100112220(&qword_100974898, type metadata accessor for SmallContactCardCollectionViewCell, &unk_1007D6828);
        v16 = &qword_1009748A0;
        v17 = &unk_1007B8294;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        v14 = type metadata accessor for InformationRibbonCollectionViewCell(0);
        v15 = type metadata accessor for InformationRibbonCollectionViewCell;
        sub_100112220(&qword_100974BA0, type metadata accessor for InformationRibbonCollectionViewCell, &unk_1007B928C);
        sub_100112220(&qword_100974BA8, type metadata accessor for InformationRibbonCollectionViewCell, &unk_1007BD808);
        v16 = &qword_100974BB0;
        v17 = &unk_1007B92BC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
      {
        v14 = type metadata accessor for PreorderDisclaimerCollectionViewCell(0);
        v15 = type metadata accessor for PreorderDisclaimerCollectionViewCell;
        sub_100112220(&qword_100974AB0, type metadata accessor for PreorderDisclaimerCollectionViewCell, &unk_1007B8D20);
        sub_100112220(&unk_100982710, type metadata accessor for PreorderDisclaimerCollectionViewCell, &unk_1007C9F30);
        v16 = &qword_100974AB8;
        v17 = &unk_1007B8D50;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyHeader(_:))
      {
        v14 = type metadata accessor for PrivacyHeaderCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyHeaderCollectionViewCell;
        sub_100112220(&qword_100974A60, type metadata accessor for PrivacyHeaderCollectionViewCell, &unk_1007B8A80);
        sub_100112220(&qword_10097E550, type metadata accessor for PrivacyHeaderCollectionViewCell, &unk_1007C5A18);
        v16 = &qword_100974A68;
        v17 = &unk_1007B8AB0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyFooter(_:))
      {
        v14 = type metadata accessor for PrivacyFooterCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyFooterCollectionViewCell;
        sub_100112220(&qword_100974A70, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_1007B8B28);
        sub_100112220(&unk_10098DE00, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_1007D8028);
        v16 = &qword_100974A78;
        v17 = &unk_1007B8B58;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v14 = type metadata accessor for PrivacyTypeCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyTypeCollectionViewCell;
        sub_100112220(&qword_100974A50, type metadata accessor for PrivacyTypeCollectionViewCell, &unk_1007B89D8);
        sub_100112220(&qword_10097AA20, type metadata accessor for PrivacyTypeCollectionViewCell, &unk_1007C20F0);
        v16 = &qword_100974A58;
        v17 = &unk_1007B8A08;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyCategory(_:))
      {
        v14 = type metadata accessor for PrivacyCategoryCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyCategoryCollectionViewCell;
        sub_100112220(&qword_100974A98, type metadata accessor for PrivacyCategoryCollectionViewCell, &unk_1007B8C78);
        sub_100112220(&qword_100974AA0, type metadata accessor for PrivacyCategoryCollectionViewCell, &unk_1007DADD8);
        v16 = &qword_100974AA8;
        v17 = &unk_1007B8CA8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyDefinition(_:))
      {
        v14 = type metadata accessor for PrivacyDefinitionCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyDefinitionCollectionViewCell;
        sub_100112220(&qword_100974A80, type metadata accessor for PrivacyDefinitionCollectionViewCell, &unk_1007B8BD0);
        sub_100112220(&qword_100974A88, type metadata accessor for PrivacyDefinitionCollectionViewCell, &unk_1007BFEC8);
        v16 = &qword_100974A90;
        v17 = &unk_1007B8C00;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appPromotion(_:))
      {
        v14 = type metadata accessor for AppEventCollectionViewCell(0);
        v15 = type metadata accessor for AppEventCollectionViewCell;
        sub_100112220(&qword_100974DA0, type metadata accessor for AppEventCollectionViewCell, &unk_1007BEEB8);
        sub_100112220(&qword_100973AB0, type metadata accessor for AppEventCollectionViewCell, &unk_1007BEE6C);
        v16 = &qword_100974DA8;
        v17 = &unk_1007BEEE8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResult(_:))
      {
        v14 = type metadata accessor for SearchResultCollectionViewCell(0);
        v15 = type metadata accessor for SearchResultCollectionViewCell;
        sub_100112220(&qword_1009748D0, type metadata accessor for SearchResultCollectionViewCell, &unk_1007B8384);
        sub_100112220(&qword_100974618, type metadata accessor for SearchResultCollectionViewCell, &unk_1007B6710);
        v16 = &unk_1009748D8;
        v17 = &unk_1007B694C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
      {
        v14 = type metadata accessor for SearchResultsContextCardCollectionViewCell(0);
        v15 = type metadata accessor for SearchResultsContextCardCollectionViewCell;
        sub_100112220(&qword_1009748B8, type metadata accessor for SearchResultsContextCardCollectionViewCell, &unk_1007BE220);
        sub_100112220(&qword_1009748C0, type metadata accessor for SearchResultsContextCardCollectionViewCell, &unk_1007BE18C);
        v16 = &qword_1009748C8;
        v17 = &unk_1007BE1D8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.pageTabs(_:))
      {
        v14 = type metadata accessor for SegmentedControlCollectionViewCell(0);
        v15 = type metadata accessor for SegmentedControlCollectionViewCell;
        sub_100112220(&qword_1009747A0, type metadata accessor for SegmentedControlCollectionViewCell, &unk_1007DB1A4);
        sub_100112220(&qword_1009747A8, type metadata accessor for SegmentedControlCollectionViewCell, &unk_1007DB110);
        v16 = &qword_1009747B0;
        v17 = &unk_1007DB15C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.heroCarousel(_:))
      {
        v14 = type metadata accessor for HeroCarouselCollectionViewCell(0);
        v15 = type metadata accessor for HeroCarouselCollectionViewCell;
        sub_100112220(&qword_100974C18, type metadata accessor for HeroCarouselCollectionViewCell, &unk_1007B95D4);
        sub_100112220(&qword_100974C20, type metadata accessor for HeroCarouselCollectionViewCell, &unk_1007C00D8);
        v16 = &unk_100974C28;
        v17 = &unk_1007B9604;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.uber(_:))
      {
        v14 = type metadata accessor for UberCollectionViewCell(0);
        v15 = type metadata accessor for UberCollectionViewCell;
        sub_100112220(&qword_100974800, type metadata accessor for UberCollectionViewCell, &unk_1007B7F68);
        sub_100112220(&qword_1009812D0, type metadata accessor for UberCollectionViewCell, &unk_1007C8C68);
        v16 = &qword_100974808;
        v17 = &unk_1007CD860;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productBadge(_:))
      {
        v14 = type metadata accessor for BadgeCollectionViewCell(0);
        v15 = type metadata accessor for BadgeCollectionViewCell;
        sub_100112220(&qword_100974A40, type metadata accessor for BadgeCollectionViewCell, &unk_1007B42A0);
        sub_100112220(&qword_100974A48, type metadata accessor for BadgeCollectionViewCell, &unk_1007BC548);
        v16 = &unk_100973130;
        v17 = &unk_1007B42D0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mediaPageHeader(_:))
      {
        v14 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell(0);
        v15 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell;
        sub_100112220(&qword_100974710, type metadata accessor for MediaPageHeaderCollectionViewHostingCell, &unk_1007B7B58);
        sub_100112220(&qword_100974718, type metadata accessor for MediaPageHeaderCollectionViewHostingCell, &unk_1007CAC78);
        v16 = &unk_100974720;
        goto LABEL_31;
      }

      if (v13 == enum case for Shelf.ContentType.tagBrick(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.placeholder(_:))
      {
        v14 = type metadata accessor for PlaceholderCollectionViewCell(0);
        v15 = type metadata accessor for PlaceholderCollectionViewCell;
        sub_100112220(&qword_100974AF0, type metadata accessor for PlaceholderCollectionViewCell, &unk_1007C7F48);
        sub_100112220(&qword_1009739A0, type metadata accessor for PlaceholderCollectionViewCell, &unk_1007B4CF8);
        v16 = &qword_100974AF8;
        v17 = &unk_1007C7F78;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.prefetchMarker(_:))
      {
        v14 = type metadata accessor for PrefetchMarkerCollectionViewCell(0);
        v15 = type metadata accessor for PrefetchMarkerCollectionViewCell;
        sub_100112220(&qword_100974AC0, type metadata accessor for PrefetchMarkerCollectionViewCell, &unk_1007DC8B8);
        sub_100112220(&qword_100974AC8, type metadata accessor for PrefetchMarkerCollectionViewCell, &unk_1007DC824);
        v16 = &qword_100974AD0;
        v17 = &unk_1007DC870;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.unifiedMessage(_:))
      {
        v14 = type metadata accessor for UnifiedMessageCollectionViewCell(0);
        v15 = type metadata accessor for UnifiedMessageCollectionViewCell;
        sub_100112220(&qword_1009747E8, type metadata accessor for UnifiedMessageCollectionViewCell, &unk_1007B7F38);
        sub_100112220(&qword_1009747F0, type metadata accessor for UnifiedMessageCollectionViewCell, &unk_1007DEAC0);
        v16 = &unk_1009747F8;
        v17 = "i<\r";
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
      {
        ShelfLayoutContext.shelfPresentationHints.getter();
        v23 = v27;
        static Shelf.PresentationHints.isSeeAllContext.getter();
        sub_100112220(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
        v24 = v29;
        v25 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v26 = *(v28 + 8);
        v26(v23, v24);
        v26(v4, v24);
        if ((v25 & 1) == 0)
        {
          v14 = type metadata accessor for SwiftUIProductPageCardViewHostingCell(0);
          v15 = type metadata accessor for SwiftUIProductPageCardViewHostingCell;
          sub_100112220(&qword_100974740, type metadata accessor for SwiftUIProductPageCardViewHostingCell, &unk_1007B7B58);
          sub_100112220(&qword_100974748, type metadata accessor for SwiftUIProductPageCardViewHostingCell, &unk_1007CAC78);
          v16 = &unk_100974750;
          goto LABEL_31;
        }
      }

      else if (v13 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        (*(v6 + 8))(v8, v5);
        return 0;
      }
    }

    v14 = type metadata accessor for SwiftUIViewHostingCell(0);
    v15 = type metadata accessor for SwiftUIViewHostingCell;
    sub_100112220(&qword_100974728, type metadata accessor for SwiftUIViewHostingCell, &unk_1007B7B58);
    sub_100112220(&qword_100974730, type metadata accessor for SwiftUIViewHostingCell, &unk_1007CAC78);
    v16 = &unk_100974738;
LABEL_31:
    v17 = &unk_1007B7B88;
    goto LABEL_26;
  }

  v14 = type metadata accessor for SmallLockupCollectionViewCell(0);
  v15 = type metadata accessor for SmallLockupCollectionViewCell;
  sub_100112220(&qword_100974868, type metadata accessor for SmallLockupCollectionViewCell, &unk_1007B815C);
  sub_100112220(&qword_100974870, type metadata accessor for SmallLockupCollectionViewCell, &unk_1007D0924);
  v16 = &qword_100974878;
  v17 = &unk_1007D2160;
LABEL_26:
  sub_100112220(v16, v15, v17);
  return v14;
}

uint64_t sub_100111D00(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = type metadata accessor for ShelfLayoutContext();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.todayCard(_:))
  {
    if (v13 != enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        type metadata accessor for TodayCard();
        sub_100112220(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
        if ((ItemLayoutContext.typedModel<A>(is:)() & 1) == 0)
        {
          goto LABEL_14;
        }

        v17 = sub_1004E9740();
      }

      else
      {
        if (v13 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          goto LABEL_14;
        }

        v17 = sub_100189E38();
      }

      v16 = v17;
      goto LABEL_17;
    }

    type metadata accessor for TodayCard();
    sub_100112220(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
    if (ItemLayoutContext.typedModel<A>(is:)())
    {
      ItemLayoutContext.typedModel<A>(as:)();
      v16 = sub_1004EE154(v22, 4);

      goto LABEL_17;
    }

LABEL_14:
    ItemLayoutContext.parentShelfLayoutContext.getter();
    v16 = sub_10010E4C8();
    (*(v20 + 8))(v4, v21);
    goto LABEL_17;
  }

  type metadata accessor for TodayCard();
  sub_100112220(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  if ((ItemLayoutContext.typedModel<A>(is:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for TodayCardGridTracker();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  if (v22)
  {

    sub_1006E2600();
    v15 = v14;
  }

  else
  {
    v15 = 7;
  }

  ItemLayoutContext.typedModel<A>(as:)();
  v16 = sub_1004EE154(v22, v15);

LABEL_17:
  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t sub_100112220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100112428(uint64_t a1)
{
  v1 = type metadata accessor for PageGrid();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchResultBackgroundView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.columnCount.getter();
    v8 = v7;
    (*(v2 + 8))(v4, v1);
    v9 = 0.0;
    if (v8 > 1.0)
    {
      v9 = 16.0;
    }

    return [v6 _setCornerRadius:v9];
  }

  return result;
}

id sub_1001125E8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Uber.Style();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [a1 tabBarController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 tabBar];

      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v31.origin.x = v13;
      v31.origin.y = v15;
      v31.size.width = v17;
      v31.size.height = v19;
      Height = CGRectGetHeight(v31);
    }

    else
    {
      Height = 0.0;
    }

    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    [result bounds];
    v26 = v25;
    v22 = v27;

    v21 = v26;
  }

  else
  {
    v21 = 0;
    v22 = 0.0;
    Height = 0.0;
  }

  if (v22 - *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset] - Height < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v22 - *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset] - Height;
  }

  v29 = [v2 traitCollection];
  Uber.style.getter();
  sub_1001158BC(v29, v8, v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_wantsBackgroundExtension], v21, *&v28, 0);

  return (*(v5 + 8))(v8, v4);
}

void sub_100112824(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Uber.Style();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Uber.style.getter();
  v8 = *&v1[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset];
  v9 = v1[OBJC_IVAR____TtC8AppStore14UberHeaderView_wantsBackgroundExtension];
  v10 = [v2 traitCollection];
  if (a1)
  {
    v11 = [a1 tabBarController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 tabBar];

      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v47.origin.x = v15;
      v47.origin.y = v17;
      v47.size.width = v19;
      v47.size.height = v21;
      Height = CGRectGetHeight(v47);
    }

    else
    {
      Height = 0.0;
    }

    v24 = [a1 view];
    if (v24)
    {
      v25 = v24;
      [v24 bounds];
      v27 = v26;
      v29 = v28;

      v30 = [a1 view];
      if (v30)
      {
        v31 = v30;
        if (v29 - v8 - Height < 0.0)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = v29 - v8 - Height;
        }

        a1 = v27;
        [v30 bounds];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v48.origin.x = v33;
        v48.origin.y = v35;
        v48.size.width = v37;
        v48.size.height = v39;
        CGRectGetWidth(v48);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (0.0 - v8 < 0.0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.0 - v8;
  }

LABEL_14:
  sub_1001158BC(v10, v7, v9, a1, *&v23, 0);

  (*(v5 + 8))(v7, v4);
  v40 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView];
  v41 = [*&v40[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel] text];
  if (v41)
  {
    v42 = v41;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v43 = static String.isNilOrEmpty(_:)();

  if ((v43 & 1) == 0 || *&v40[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView])
  {
    [v2 frame];
    [v40 sizeThatFits:{v44, v45}];
  }
}

uint64_t sub_100112B7C()
{
  v0 = sub_10002849C(&qword_100974F58, qword_1007B6F50);
  sub_100005644(v0, qword_100974EA0);
  sub_1000056A8(v0, qword_100974EA0);
  return Conditional<>.init(roundedCornersValue:nonRoundedCornersValue:)();
}

char *sub_100112C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v60 = a3;
  v57 = a2;
  ObjectType = swift_getObjectType();
  v58 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v58);
  v59 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Uber.Style();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &ObjectType - v12;
  v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_isRubberbanding] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentBottomInset] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem] = 0;
  v14 = &v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver];
  *v14 = 0;
  v14[1] = 0;
  Uber.style.getter();
  (*(v8 + 104))(v10, enum case for Uber.Style.above(_:), v7);
  sub_100115CA4(&qword_100973B50, 255, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v64 != v63)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18 = *(v8 + 8);
    v18(v10, v7);
    v18(v13, v7);

    v16 = v57;
    if ((v17 & 1) == 0 || (v57 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v19 = 0;
    v20 = 0x404E000000000000;
    goto LABEL_8;
  }

  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);

  v16 = v57;
  if (v57)
  {
    goto LABEL_6;
  }

LABEL_7:
  v20 = 0;
  v19 = 1;
LABEL_8:
  v21 = v60;
  v64 = v20;
  v65 = 0;
  v66 = 0;
  v67 = v19;
  v22 = type metadata accessor for MediaView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v23[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v23[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v23[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x4008000000000000;
  *&v23[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0x4049000000000000;
  v24 = objc_allocWithZone(type metadata accessor for UberContentContainer());
  *&v23[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = sub_10047C298(&v64);
  v62.receiver = v23;
  v62.super_class = v22;
  v25 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v25 setClipsToBounds:1];
  [v25 addSubview:*&v25[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] = v25;
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_legibilityGradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView] = [objc_allocWithZone(type metadata accessor for TitleHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_uber] = a1;
  v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_wantsBackgroundExtension] = v16 & 1;
  v61.receiver = v4;
  v61.super_class = ObjectType;

  v26 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v26 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v27 = OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView]];
  v28 = *&v26[v27];
  v29 = sub_1004E9F68(v21);
  v30 = *&v28[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer];
  v31 = *(v30 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  *(v30 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = v29;
  v32 = v29;
  sub_10047C6C8(v31);

  sub_10047B37C();
  v33 = objc_opt_self();
  v34 = [v33 clearColor];
  [v26 setBackgroundColor:v34];

  v35 = OBJC_IVAR____TtC8AppStore14UberHeaderView_legibilityGradientView;
  v36 = *&v26[OBJC_IVAR____TtC8AppStore14UberHeaderView_legibilityGradientView];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1007B15F0;
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v38 = v36;
  *(v37 + 32) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, 0.4);
  *(v37 + 40) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, 0.0);
  *&v38[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v37;

  sub_1001C0CEC();

  v39 = *&v26[v35];
  v40 = [v39 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

  v41 = *&v26[v35];
  v42 = [v41 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  [v26 addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView;
  v44 = qword_10096D398;
  v45 = *&v26[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_1000056A8(v58, qword_1009CE818);
  v47 = v59;
  sub_100115C40(v46, v59);
  (*((swift_isaMask & *v45) + 0x1C8))(v47);

  v48 = *&v26[v43];
  v49 = &v48[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines];
  *v49 = sub_100113508;
  v49[1] = 0;
  v50 = v48;

  [*&v50[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel] setNumberOfLines:2];

  [*(*&v26[v43] + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel) setAllowsDefaultTighteningForTruncation:1];
  v51 = *&v26[v43];
  v52 = [v33 clearColor];
  [v51 setBackgroundColor:v52];

  v53 = *&v26[v43];
  [v26 addSubview:v53];

  if (*(*(*&v26[v27] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    type metadata accessor for VideoView(0);
    v54 = swift_dynamicCastClass();
    if (v54)
    {
      *(v54 + qword_100988CB8 + 8) = &off_1008B4C68;
      swift_unknownObjectWeakAssign();
    }
  }

  return v26;
}

id sub_100113544(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem];
  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 removeObserver:v2 forKeyPath:v6 context:&unk_100974E90];
  }

  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

double sub_1001136B0(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView];
  v6 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel;
  v7 = [*(v5 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v9 = v7;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (!a2)
    {
      if (!v12)
      {
        return result;
      }

      v15 = *(v5 + v6);
      v16 = 0;
      goto LABEL_14;
    }

    if (v12)
    {
      if (v10 == a1 && v12 == a2)
      {

LABEL_20:

        return result;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_20;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  v15 = *(v5 + v6);
  v16 = String._bridgeToObjectiveC()();

LABEL_14:
  [v15 setText:v16];

  [v2 invalidateIntrinsicContentSize];
  v17 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver];
  if (v17)
  {
    v18 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver + 8];

    v17(v19);

    sub_10001F63C(v17, v18);
  }

  return result;
}

void (*sub_100113878(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_100113918;
}

void sub_100113918(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_100115CA4(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v8 = v4;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v16 = v3;
    sub_10047C6C8(v15);

    if (v3)
    {
      *&v16[qword_100988CB8 + 8] = &off_1008B4C68;
      swift_unknownObjectWeakAssign();
    }

    v17 = *a1;
    goto LABEL_17;
  }

  if (v3)
  {
    sub_100115CA4(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v10 = v3;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v13 = v4;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        [v10 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v18 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
  v19 = v3;
  sub_10047C6C8(v18);

  if (v3)
  {
    *&v19[qword_100988CB8 + 8] = &off_1008B4C68;
    swift_unknownObjectWeakAssign();
    v17 = v19;
LABEL_17:
  }
}

void sub_100113BEC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setTarget:v0];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 setAction:"mute"];
  }

  sub_100113C74();
}

void sub_100113C74()
{
  v1 = type metadata accessor for SystemImage();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for VideoConfiguration();
  v57 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for VideoControls();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v50[-v13];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v53 = v8;
  v54 = v4;
  v55 = v2;
  v16 = *(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
  v17 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v18 = *(*(v16 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v18)
  {
    v56 = Strong;
    v52 = v1;
    type metadata accessor for VideoView(0);
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = *(v19 + qword_100988CE0);
      if (v20)
      {
        v51 = [v20 isMuted];
        v18 = *(*(v16 + v17) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
        v21 = v9;
        if (!v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v51 = 1;
        v21 = v9;
      }

      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v24 = v18;
        v25 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
        v26 = qword_1009D2200;
        v27 = (v57 + 16);
        v28 = (v57 + 8);
        if (v25)
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          VideoConfiguration.autoPlayPlaybackControls.getter();
        }

        else
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          VideoConfiguration.playbackControls.getter();
        }

        (*v28)(v7, v5);
        static VideoControls.muteUnmute.getter();
        sub_100115CA4(&unk_100988DE0, 255, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
        v30 = v53;
        v31 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v32 = *(v21 + 8);
        v32(v11, v30);
        v32(v14, v30);
        v29 = 1;
        [v56 setHidden:(v31 & 1) == 0];
        goto LABEL_18;
      }

LABEL_15:
      v29 = 1;
      [v56 setHidden:1];
LABEL_18:
      v33 = v52;
      if (v51)
      {
        v34 = &enum case for SystemImage.speakerSlashFill(_:);
      }

      else
      {
        v29 = 0;
        v34 = &enum case for SystemImage.speakerWave3Fill(_:);
      }

      if (v29)
      {
        v35 = 0xD00000000000002CLL;
      }

      else
      {
        v35 = 0xD00000000000002ALL;
      }

      if (v29)
      {
        v36 = 0xD00000000000002BLL;
      }

      else
      {
        v36 = 0xD000000000000029;
      }

      if (v29)
      {
        v37 = "on.Mute.AccessibilityLabel";
      }

      else
      {
        v37 = "on.Mute.LargeContentTitle";
      }

      v39 = v54;
      v38 = v55;
      if (v29)
      {
        v40 = "on.Unmute.AccessibilityLabel";
      }

      else
      {
        v40 = "sizeChangeObserver";
      }

      (*(v55 + 104))(v54, *v34, v52);
      v41 = v56;
      v42 = static SystemImage.load(_:with:)();
      (*(v38 + 8))(v39, v33);
      [v41 setImage:v42];

      v43._object = (v40 | 0x8000000000000000);
      v43._countAndFlagsBits = v36;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      localizedString(_:comment:)(v43, v44);
      v45 = String._bridgeToObjectiveC()();

      [v41 setTitle:v45];

      v46 = v41;
      v47._object = (v37 | 0x8000000000000000);
      v47._countAndFlagsBits = v35;
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      localizedString(_:comment:)(v47, v48);
      v49 = String._bridgeToObjectiveC()();

      [v46 setAccessibilityLabel:v49];

      return;
    }

    Strong = v56;
  }
}

void sub_100114244()
{
  v1 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v9)
  {
    type metadata accessor for VideoView(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + qword_100988CE0);
      if (v12)
      {
        v13 = v9;
        v14 = v12;
        [v14 setMuted:{objc_msgSend(v14, "isMuted") ^ 1}];
        v15 = [v14 isMuted];
        [v11 updateAudioSessionCategoryWithIsAudioOn:v15 ^ 1];
        (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
        v16 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
        if (!v15)
        {
          v16 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
        }

        (*(v2 + 104))(v4, *v16, v1);
        sub_1004E3360(v8, v4);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

double sub_10011450C(uint64_t a1, NSString a2, uint64_t a3, Class isa, void *a5)
{
  ObjectType = swift_getObjectType();
  if (!a2)
  {
LABEL_10:
    sub_10006C234(a3, v27);
    v18 = v28;
    if (v28)
    {
      v19 = sub_10002A400(v27, v28);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin(v19);
      v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v20 + 8))(v23, v18);
      sub_100007000(v27);
      if (!isa)
      {
LABEL_13:
        v26.receiver = v5;
        v26.super_class = ObjectType;
        objc_msgSendSuper2(&v26, "observeValueForKeyPath:ofObject:change:context:", a2, v24, isa, a5);

        swift_unknownObjectRelease();
        return result;
      }
    }

    else
    {
      v24 = 0;
      if (!isa)
      {
        goto LABEL_13;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_100115CA4(&qword_10096F618, 255, type metadata accessor for NSKeyValueChangeKey, &unk_1007B0824);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_13;
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a5 != &unk_100974E90)
  {
    a2 = String._bridgeToObjectiveC()();
    goto LABEL_10;
  }

  v12 = *&v5[OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem];
  if (v12 && (v12 = [v12 title]) != 0)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = v16;
    v12 = v14;
  }

  else
  {
    v17 = 0;
  }

  return sub_1001136B0(v12, v17);
}

uint64_t sub_10011492C(void *a1, id a2)
{
  if ([a2 userInterfaceIdiom] == 1 && (v5 = objc_msgSend(a2, "horizontalSizeClass"), v5 != objc_msgSend(a1, "horizontalSizeClass")))
  {
    v9 = 1;
  }

  else
  {
    v6 = [*(*(v2 + OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView) + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel) text];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v8 = static String.isNilOrEmpty(_:)();

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = [a2 preferredContentSizeCategory];
      v11 = [a1 preferredContentSizeCategory];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {

        v9 = 0;
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v9 = v16 ^ 1;
      }
    }
  }

  return v9 & 1;
}

void sub_100114AD4(void *a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = a1;
    v5 = [v2 traitCollection];
    if ((sub_10011492C(v4, v5) & 1) != 0 && ([v2 invalidateIntrinsicContentSize], (v6 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver]) != 0))
    {
      v7 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver + 8];

      v6(v8);

      sub_10001F63C(v6, v7);
    }

    else
    {
    }
  }
}

id sub_100114C20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Uber.Style();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v53 - v11;
  v56.receiver = v3;
  v56.super_class = ObjectType;
  objc_msgSendSuper2(&v56, "layoutSubviews", v10);
  [v3 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *&v3[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView];
  v22 = [*&v21[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel] text];
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v24 = static String.isNilOrEmpty(_:)();

  if ((v24 & 1) != 0 && !*&v21[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView])
  {
    v28 = 0.0;
    goto LABEL_8;
  }

  [v3 frame];
  [v21 sizeThatFits:{v25, v26}];
  v28 = v27;
  if (v27 <= 0.0)
  {
LABEL_8:
    [v21 setHidden:1];
    goto LABEL_9;
  }

  v57.origin.x = v14;
  v57.origin.y = v16;
  v57.size.width = v18;
  v57.size.height = v20;
  MinX = CGRectGetMinX(v57);
  v58.origin.x = v14;
  v58.origin.y = v16;
  v58.size.width = v18;
  v58.size.height = v20;
  v30 = CGRectGetMaxY(v58) - v28;
  v59.origin.x = v14;
  v59.origin.y = v16;
  v59.size.width = v18;
  v59.size.height = v20;
  [v21 setFrame:{MinX, v30, CGRectGetWidth(v59), v28}];
  [v21 setHidden:0];
LABEL_9:
  v60.origin.x = v14;
  v60.origin.y = v16;
  v60.size.width = v18;
  v60.size.height = v20;
  v31 = CGRectGetMinX(v60);
  v61.origin.x = v14;
  v61.origin.y = v16;
  v61.size.width = v18;
  v61.size.height = v20;
  MinY = CGRectGetMinY(v61);
  v62.origin.x = v14;
  v62.origin.y = v16;
  v62.size.width = v18;
  v62.size.height = v20;
  Width = CGRectGetWidth(v62);
  v63.origin.x = v14;
  v63.origin.y = v16;
  v63.size.width = v18;
  v63.size.height = v20;
  Height = CGRectGetHeight(v63);
  v35 = *&v3[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView];
  [v35 setFrame:{v31, MinY, Width, Height - v28}];
  [v35 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  Uber.style.getter();
  (*(v6 + 104))(v8, enum case for Uber.Style.above(_:), v5);
  sub_100115CA4(&qword_100973B50, 255, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*&v54 == v53[0] && v55 == v53[1])
  {
    v44 = *(v6 + 8);
    v44(v8, v5);
    v44(v12, v5);
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v46 = *(v6 + 8);
    v46(v8, v5);
    v46(v12, v5);

    if ((v45 & 1) == 0)
    {
      return [*&v3[OBJC_IVAR____TtC8AppStore14UberHeaderView_legibilityGradientView] setHidden:1];
    }
  }

  v47 = *&v3[OBJC_IVAR____TtC8AppStore14UberHeaderView_legibilityGradientView];
  [v47 setHidden:0];
  if (qword_10096D0A8 != -1)
  {
    swift_once();
  }

  v48 = sub_10002849C(&qword_100974F58, qword_1007B6F50);
  sub_1000056A8(v48, qword_100974EA0);
  Conditional<>.value.getter();
  v49 = v54;
  v64.origin.x = v37;
  v64.origin.y = v39;
  v64.size.width = v41;
  v64.size.height = v43;
  v50 = CGRectGetMinX(v64);
  v65.origin.x = v37;
  v65.origin.y = v39;
  v65.size.width = v41;
  v65.size.height = v43;
  v51 = CGRectGetMinY(v65);
  v66.origin.x = v37;
  v66.origin.y = v39;
  v66.size.width = v41;
  v66.size.height = v43;
  return [v47 setFrame:{v50, v51, CGRectGetWidth(v66), v49}];
}

id sub_1001151E0(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v12.receiver = v4;
  v12.super_class = swift_getObjectType();
  v8 = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a3, a4);
  if (v8)
  {
    v9 = *(*(*&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v9)
    {
      type metadata accessor for VideoView(0);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        LOBYTE(v9) = [v8 isDescendantOfView:v10];
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    [v4 bounds];
    v13.x = a3;
    v13.y = a4;
    if (!CGRectContainsPoint(v14, v13) || (swift_getObjectType(), !((swift_conformsToProtocol2() != 0) | v9 & 1)))
    {

      return 0;
    }
  }

  return v8;
}

uint64_t sub_1001153E4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_100115454(void *a1)
{
  v2 = a1;
  sub_10047D0EC(a1);

  if (a1)
  {
    *&v2[qword_100988CB8 + 8] = &off_1008B4C68;
    swift_unknownObjectWeakAssign();
  }
}

uint64_t (*sub_10011550C(uint64_t **a1))()
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
  v2[4] = sub_100113878(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100115580(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100115CA4(&qword_100974F50, v3, type metadata accessor for UberHeaderView, &unk_1007B6EF8);

  return VideoViewProviding.someVideoView.getter(ObjectType, v4);
}

uint64_t sub_1001155F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100115CA4(&qword_100974F50, v5, type metadata accessor for UberHeaderView, &unk_1007B6EF8);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_100115680(uint64_t *a1, uint64_t a2))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v5 = v3;
  *a1 = v3;
  sub_100115CA4(&qword_100974F50, v4, type metadata accessor for UberHeaderView, &unk_1007B6EF8);
  *(v5 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10011573C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

void sub_1001158BC(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v27[1] = a4;
  v32 = a3;
  v10 = type metadata accessor for AspectRatio();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100974F48, &qword_1007B6F48);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v27 - v15;
  v31 = a6;
  if (a6)
  {
    v17 = 0;
  }

  else
  {
    v17 = a5;
  }

  v30 = v17;
  v18 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v19 = [a1 userInterfaceIdiom];
  v20 = [a1 horizontalSizeClass];
  v21 = *(v14 + 88);
  *v16 = v18 & 1;
  *(v16 + 1) = v19;
  *(v16 + 2) = v20;
  v22 = type metadata accessor for Uber.Style();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v16[v21], a2, v22);
  v24 = (*(v23 + 88))(&v16[v21], v22);
  if (v24 != enum case for Uber.Style.above(_:))
  {
    if (v24 == enum case for Uber.Style.inline(_:))
    {
      if (v20 == 2 && v19 == 1 && (v18 & 1) == 0 && (v31 & 1) == 0)
      {
        AspectRatio.init(_:_:)();
        v25 = AspectRatio.isLandscape.getter();
        (*(v28 + 8))(v12, v29);
        if (v25)
        {
          v26 = [objc_opt_self() mainScreen];
          [v26 scale];
        }
      }
    }

    else
    {
      sub_10002B894(v16, &qword_100974F48, &qword_1007B6F48);
    }
  }
}

uint64_t sub_100115C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100115CA4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_100115CEC(void *a1, char a2)
{
  v4 = sub_10002849C(&qword_100974F48, &qword_1007B6F48);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Uber.Style();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = enum case for Uber.Style.above(_:);
  (*(v9 + 104))(v12, enum case for Uber.Style.above(_:), v8, v10);
  v14 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v15 = [a1 userInterfaceIdiom];
  v16 = [a1 horizontalSizeClass];
  v17 = *(v5 + 88);
  *v7 = v14 & 1;
  *(v7 + 1) = v15;
  *(v7 + 2) = v16;
  (*(v9 + 16))(&v7[v17], v12, v8);
  v18 = (*(v9 + 88))(&v7[v17], v8);
  if (v18 == v13)
  {
    (*(v9 + 8))(v12, v8);
    if (v15 == 1 && v16 == 2)
    {
      v19 = (a2 & 1) == 0;
      result = 350.0;
      v21 = 410.0;
    }

    else
    {
      v19 = (a2 & 1) == 0;
      result = 200.0;
      v21 = 260.0;
    }

    if (!v19)
    {
      return v21;
    }

    return result;
  }

  if (v18 != enum case for Uber.Style.inline(_:))
  {
    (*(v9 + 8))(v12, v8);
    sub_10002B894(v7, &qword_100974F48, &qword_1007B6F48);
    return 0.0;
  }

  if (v16 == 1)
  {
    if (v14)
    {
      (*(v9 + 8))(v12, v8);
      return 480.0;
    }

    goto LABEL_19;
  }

  if (v16 != 2 || v15 != 1)
  {
LABEL_19:
    (*(v9 + 8))(v12, v8);
    return 0.0;
  }

  (*(v9 + 8))(v12, v8);
  result = 769.0;
  if ((v14 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

void sub_100115FE8()
{
  *(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentBottomInset) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1001160AC()
{
  result = qword_100974F78;
  if (!qword_100974F78)
  {
    type metadata accessor for SignOutAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974F78);
  }

  return result;
}

uint64_t sub_100116104()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_100974F60);
  sub_1000056A8(v4, qword_100974F60);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_100116258(id *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  [*a1 setActive:0];
  sub_10002849C(&qword_100974F88, qword_1007B6FE0);
  v6 = [a2 ams_saveAccount:v5 verifyCredentials:0];
  Promise<A>.init(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100116A00;
  *(v7 + 24) = a3;
  v8 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  swift_retain_n();
  v10[3] = v8;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = static OS_dispatch_queue.main.getter();
  Promise.then(perform:orCatchError:on:)();

  return sub_100007000(v10);
}

uint64_t sub_1001163AC()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100116498(uint64_t a1)
{
  if (qword_10096D0B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_100974F60);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_1000056E0(v5);
  (*(*(v4 - 8) + 16))(v2);
  static LogMessage.safe(_:)();
  sub_10003D444(v5);
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_100116670(uint64_t a1)
{
  if (qword_10096D0B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_100974F60);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_1000056E0(v5);
  (*(*(v4 - 8) + 16))(v2);
  static LogMessage.safe(_:)();
  sub_10003D444(v5);
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_100116850(uint64_t a1)
{
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v1 = Promise.__allocating_init()();
  sub_100005744(0, &qword_10098D1A0, ACAccountStore_ptr);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v2 = v8[0];
  sub_10002849C(&qword_100974F80, &qword_1007B6FD8);
  v3 = [v8[0] ams_activeiTunesAccountForMediaType:AMSAccountMediaTypeProduction];
  Promise<A>.init(_:)();
  v4 = swift_allocObject();
  *(v4 + 16) = v8[0];
  *(v4 + 24) = v1;
  v5 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  swift_retain_n();
  v6 = v2;
  v8[3] = v5;
  v8[4] = &protocol witness table for OS_dispatch_queue;
  v8[0] = static OS_dispatch_queue.main.getter();
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v8);
  return v1;
}

uint64_t sub_100116A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = qword_100974F90;
  if (*(v4 + qword_100974F90))
  {
    v6 = *(v4 + qword_100974F90);
  }

  else
  {
    v7 = type metadata accessor for BaseGenericDiffablePageViewController(0, *((swift_isaMask & *v4) + 0x500), a3, a4);
    v6 = sub_10038E4B0(v7, &off_1008B4DB8);
    *(v4 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100116B44(uint64_t a1)
{
  sub_1002DFD34(a1);
  result = sub_1002DFD24();
  if (result)
  {
    *(v1 + qword_1009CE060) = 1;
  }

  return result;
}

uint64_t sub_100116B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = qword_100974FA0;
  if (*(v4 + qword_100974FA0))
  {
    v6 = *(v4 + qword_100974FA0);
  }

  else
  {
    sub_100116A78(0, a2, a3, a4);
    type metadata accessor for UberedCollectionElementsObserver();
    v6 = swift_allocObject();
    swift_weakInit();
    *(v6 + 24) = 0;
    swift_weakAssign();

    *(v4 + v5) = v6;
  }

  return v6;
}

double sub_100116C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BaseGenericDiffablePageViewController(0, *((swift_isaMask & *v4) + 0x500), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "viewDidLoad");
  return sub_10038E588(v5, &off_1008B4DB8);
}

void sub_100116C90(void *a1)
{
  v4 = a1;
  sub_100116C18(v4, v1, v2, v3);
}

void sub_100116CF8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_100116E48(v3, &selRef_viewWillAppear_, sub_10038E618, v4);
}

id sub_100116D68(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BaseGenericDiffablePageViewController(0, *((swift_isaMask & *v4) + 0x500), a3, a4);
  v8.receiver = v4;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
}

void sub_100116DD4(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_100116D68(a3, v6, v4, v5);
}

uint64_t sub_100116E48(char a1, SEL *a2, uint64_t (*a3)(objc_class *, _UNKNOWN **), uint64_t a4)
{
  v8 = type metadata accessor for BaseGenericDiffablePageViewController(0, *((swift_isaMask & *v4) + 0x500), a3, a4);
  v10.receiver = v4;
  v10.super_class = v8;
  objc_msgSendSuper2(&v10, *a2, a1 & 1);
  return a3(v8, &off_1008B4DB8);
}

void sub_100116EE0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100116E48(a3, &selRef_viewWillDisappear_, sub_10038E8AC, v4);
}

void sub_100116F50(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for BaseGenericDiffablePageViewController(0, *((swift_isaMask & *v6) + 0x500), a5, a6);
  v11.receiver = v6;
  v11.super_class = v10;
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v6 isViewLoaded])
  {
    sub_10038EB44(a1, v10, &off_1008B4DB8);
  }
}

void sub_100117008(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_100116F50(a5, a2, a3, v11, v9, v10);
  swift_unknownObjectRelease();
}

uint64_t sub_100117088()
{
  sub_10002849C(&qword_1009717B0, &unk_1007B2A00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B1890;
  v1 = sub_1002DEF2C();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v5 = sub_100116B74(v1, v2, v3, v4);
  v6 = sub_1001182B8(&qword_100975038, type metadata accessor for UberedCollectionElementsObserver, &unk_1007BFFC4);
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

void sub_100117144(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100975030, &unk_1007B70E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_1002DF48C(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v3 + 96))(v5, v2);
    sub_100117298();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_100117298()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_100975048, "b,\b");
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = GenericPage.presentationOptions.getter();
  type metadata accessor for BaseGenericDiffablePageViewController(0, *((v3 & v2) + 0x500), v9, v10);
  sub_10038EC50(v8);
  GenericPage.title.getter();
  if (v11)
  {
    if ((GenericPage.presentationOptions.getter() & 0x80) != 0)
    {
      if ((GenericPage.presentationOptions.getter() & 0x80) != 0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v23 = [v1 navigationItem];
      sub_10002849C(&unk_100973960, &unk_1007B4930);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007B10D0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v16 = objc_opt_self();
      v17 = NSForegroundColorAttributeName;
      v18 = [v16 labelColor];
      v19 = [v18 colorWithAlphaComponent:v14];

      *(inited + 64) = sub_100028BB8();
      *(inited + 40) = v19;
      sub_100397150(inited);
      swift_setDeallocating();
      sub_10002B894(inited + 32, &unk_100970EC0, &unk_1007B2BF0);
      AttributeContainer.init(_:)();
      AttributedString.init(_:attributes:)();
      v20 = type metadata accessor for AttributedString();
      (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
      v21 = v23;
      UINavigationItem.attributedTitle.setter();
    }

    else
    {
      v12 = [v1 navigationItem];
      v13 = String._bridgeToObjectiveC()();

      [v12 setTitle:v13];
    }

    if (GenericPage.presentationOptions.getter() & 2) != 0 && (sub_10006230C())
    {
      v22 = [v1 navigationItem];
      sub_10073D660();
    }
  }
}

uint64_t sub_1001175EC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_10097CCA0, &unk_1007B70F0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100118188(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1001181EC(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
  sub_100118248(&v9[*(v19 + 48)], v18);
  DiffablePagePresenter.pageUrl.getter();
  v20 = *(v4 + 48);
  sub_1000417F0(v15, v6);
  sub_1000417F0(v18, &v6[v20]);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_1000417F0(v6, v12);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_1001182B8(&qword_100975040, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = v21;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10002B894(v15, &qword_100982460, &unk_1007B5C90);
      sub_10002B894(v18, &qword_100982460, &unk_1007B5C90);
      v27(v12, v2);
      sub_10002B894(v6, &qword_100982460, &unk_1007B5C90);
      return v23 & 1;
    }

    sub_10002B894(v15, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v18, &qword_100982460, &unk_1007B5C90);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10002B894(v15, &qword_100982460, &unk_1007B5C90);
  sub_10002B894(v18, &qword_100982460, &unk_1007B5C90);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10002B894(v6, &unk_10097CCA0, &unk_1007B70F0);
    goto LABEL_9;
  }

  sub_10002B894(v6, &qword_100982460, &unk_1007B5C90);
  v23 = 1;
  return v23 & 1;
}

void sub_100117A88()
{
  v1 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v4 = type metadata accessor for Shelf.ContentType();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_10002849C(&qword_100975028, &unk_1007C69C0);
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v36 - v16;
  v18 = [v0 view];
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = v18;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

LABEL_18:
    __break(1u);
    return;
  }

  v21 = *(v20 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v21 & 1) == 0)
  {
    v22 = qword_10097F2F8;
    swift_beginAccess();
    v23 = *&v0[v22];
    if (v23)
    {
      v24 = v23;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
      v25 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
      (*(v14 + 8))(v17, v13);
      if (v25 < 1)
      {
      }

      else
      {
        dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();
        v26 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v3, 1, v26) == 1)
        {

          sub_10002B894(v3, &unk_10098FFB0, qword_1007B3890);
        }

        else
        {
          swift_getKeyPath();
          ReadOnlyLens.subscript.getter();

          (*(v27 + 8))(v3, v26);
          v29 = v37;
          v28 = v38;
          (*(v37 + 32))(v12, v9, v38);
          (*(v29 + 16))(v6, v12, v28);
          v30 = (*(v29 + 88))(v6, v28);
          if (v30 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v30 == enum case for Shelf.ContentType.upsellBreakout(_:) || v30 == enum case for Shelf.ContentType.heroCarousel(_:) || v30 == enum case for Shelf.ContentType.uber(_:) || v30 == enum case for Shelf.ContentType.mediaPageHeader(_:))
          {
            sub_10002849C(&qword_10096FCE8, qword_1007BCF50);
            v32 = type metadata accessor for IndexPath();
            v33 = *(v32 - 8);
            v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_1007B10D0;
            IndexPath.init(item:section:)();
            sub_100083BE8(v35);
            swift_setDeallocating();
            (*(v33 + 8))(v35 + v34, v32);
            swift_deallocClassInstance();

            (*(v29 + 8))(v12, v28);
          }

          else
          {

            v31 = *(v29 + 8);
            v31(v12, v28);
            v31(v6, v28);
          }
        }
      }
    }
  }
}

double sub_100117FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(sub_100116B74(a1, a2, a3, a4) + 24) = 1;

  return result;
}

double sub_10011801C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(sub_100116B74(a1, a2, a3, a4) + 24) = 0;

  return result;
}

double sub_100118058()
{

  return result;
}

id sub_100118098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BaseGenericDiffablePageViewController(0, *((swift_isaMask & *v4) + 0x500), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

double sub_1001180F4()
{

  return result;
}

uint64_t sub_100118188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001181EC(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100118248(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001182B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100118300(__n128 a1)
{
  v1 = a1.n128_f64[0];
  Artwork.size.getter();
  Artwork.size.getter();
  return v1;
}

uint64_t sub_1001183D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SearchAdTransparencyButton(uint64_t a1)
{
  result = qword_1009750B0;
  if (!qword_1009750B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001184BC()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.525490196 green:0.752941176 blue:0.992156863 alpha:1.0];
  qword_1009CE068 = result;
  return result;
}

char *sub_100118510(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for AutomationSemantics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = qword_1009750A0;
  *&v2[v11] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = &v2[qword_1009750A8];
  *v12 = 0;
  *(v12 + 1) = 0;
  v31.receiver = v2;
  v31.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = qword_10096E168;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for FontUseCase();
  v17 = sub_1000056A8(v16, qword_1009D13B8);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v10, v17, v16);
  (*(v18 + 56))(v10, 0, 1, v16);
  dispatch thunk of DynamicTypeButton.fontUseCase.setter();
  v19 = qword_1009750A0;
  [*&v15[qword_1009750A0] setClipsToBounds:1];
  v20 = qword_10096D0B8;
  v21 = *&v15[v19];
  if (v20 != -1)
  {
    swift_once();
  }

  [v21 setBackgroundColor:qword_1009CE068];

  [*&v15[v19] _setContinuousCornerRadius:4.0];
  [v15 addSubview:*&v15[v19]];
  v22 = objc_opt_self();
  v23 = v15;
  v24 = [v22 whiteColor];
  [v23 setTitleColor:v24 forState:0];

  v25 = [v22 whiteColor];
  type metadata accessor for DynamicTypeButton();
  static UIView.defaultHighlightAlpha.getter();
  v26 = [v25 colorWithAlphaComponent:?];

  [v23 setTitleColor:v26 forState:4];
  v27 = v23;
  dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();

  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(v29);
  sub_10003D444(v30);
  UIView.setAutomationSemantics(_:)();
  (*(v5 + 8))(v7, v4);
  [v27 addTarget:v27 action:"didTapButton" forControlEvents:64];

  [v27 _setWantsAccessibilityUnderline:0];
  return v27;
}

char *sub_100118988(char *result)
{
  v1 = *&result[qword_1009750A8];
  if (v1)
  {
    v2 = *&result[qword_1009750A8 + 8];
    v3 = result;
    v4 = sub_10000827C(v1, v2);
    v1(v4);

    return sub_10001F63C(v1, v2);
  }

  return result;
}

double sub_100118A0C(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v1 titleForState:0];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_100118D54(v2, v5, v7);

  return v8;
}

id sub_100118AD0(uint64_t a1, uint64_t a2)
{
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v3 = [v2 traitCollection];
  v4 = [v2 titleForState:0];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_100118D54(v3, v6, v8);

  v9 = *&v2[qword_1009750A0];
  [v9 frame];
  [v9 setFrame:?];
  [v2 bounds];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  return [v9 setCenter:{MidX, CGRectGetMidY(v18)}];
}

void sub_100118C40(void *a1)
{
  v2 = a1;
  sub_100118AD0(v2, v1);
}

uint64_t sub_100118CB8()
{
  v1 = *(v0 + qword_1009750A8);
  v2 = *(v0 + qword_1009750A8 + 8);

  return sub_10001F63C(v1, v2);
}

uint64_t sub_100118CFC(uint64_t a1)
{
  v2 = *(a1 + qword_1009750A8);
  v3 = *(a1 + qword_1009750A8 + 8);

  return sub_10001F63C(v2, v3);
}

double sub_100118D54(void *a1, uint64_t countAndFlagsBits, void *a3)
{
  v5 = type metadata accessor for LabelPlaceholderCompatibility();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v9._object = 0x8000000100800960;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    localizedString(_:comment:)(v9, v10);
  }

  sub_1000367E8();
  v11 = qword_10096E168;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  sub_1000056A8(v12, qword_1009D13B8);
  static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v13 = type metadata accessor for Feature();
  v22[3] = v13;
  v22[4] = sub_100119068(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v14 = sub_1000056E0(v22);
  (*(*(v13 - 8) + 104))(v14, enum case for Feature.measurement_with_labelplaceholder(_:), v13);
  isFeatureEnabled(_:)();
  sub_100007000(v22);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007B0B70;
  *(v15 + 32) = a1;
  v16 = a1;
  v17 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100119068(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v19 = v18;

  (*(v6 + 8))(v8, v5);
  return v19 + 12.0;
}

uint64_t sub_100119068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1001190B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100119638(a1, a2);
  if (v2)
  {
    v3 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return _swiftEmptyArrayStorage;
}

double sub_100119154@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a3;
  v8 = type metadata accessor for ItemLayoutContext();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (static UICollectionReusableView.matchesItemElementKind(_:)())
  {

    v11 = static UICollectionReusableView.defaultReuseIdentifier.getter();
    v19[1] = v12;
    v19[2] = v11;
    v13 = swift_allocObject();
    v19[0] = a4;
    v14 = v13;
    swift_weakInit();
    (*(v9 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v8);
    v15 = *(v9 + 80);
    v20 = a1;
    v16 = (v15 + 24) & ~v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    (*(v9 + 32))(v17 + v16, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19[0];
    *(a5 + 24) = sub_10002849C(&qword_1009751D0, qword_1007B7350);
    *(a5 + 32) = sub_10011A820();
    sub_1000056E0(a5);

    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10011936C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_10002849C(&qword_1009751C8, &unk_1007B7220);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v11 = type metadata accessor for ComponentSeparator();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v22 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10002C0AC(result + 16, v22);

    sub_10002A400(v22, v22[3]);
    v19 = dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)();
    result = sub_100007000(v22);
    if (v19)
    {
      result = swift_conformsToProtocol2();
      if (result)
      {
        dispatch thunk of static SeparatorProvidingShelfComponentView.separator(in:)();
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          return sub_10011A26C(v10);
        }

        else
        {
          (*(v12 + 32))(v17, v10, v11);
          (*(v12 + 16))(v14, v17, v11);
          v20 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
          swift_beginAccess();
          (*(v12 + 24))(a1 + v20, v14, v11);
          swift_endAccess();
          sub_100503F40();
          v21 = *(v12 + 8);
          v21(v14, v11);
          return (v21)(v17, v11);
        }
      }
    }
  }

  return result;
}

id sub_100119638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageGrid();
  v85 = *(v4 - 8);
  v86 = v4;
  __chkstk_darwin(v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentSeparator.Position();
  v8 = *(v7 - 8);
  v88 = v7;
  v89 = v8;
  __chkstk_darwin(v7);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v79 - v11;
  __chkstk_darwin(v13);
  v15 = &v79 - v14;
  v16 = sub_10002849C(&qword_1009751C8, &unk_1007B7220);
  __chkstk_darwin(v16 - 8);
  v18 = &v79 - v17;
  v19 = type metadata accessor for ComponentSeparator();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011A02C(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10011A26C(v18);
    return 0;
  }

  (*(v20 + 32))(v22, v18, v19);
  if (((*(*v2 + 128))(a1) & 1) == 0)
  {
    (*(v20 + 8))(v22, v19);
    return 0;
  }

  v84 = v22;
  ComponentSeparator.position.getter();
  v82 = *(v89 + 88);
  v23 = v82(v15, v88);
  v80 = enum case for ComponentSeparator.Position.bottom(_:);
  v81 = enum case for ComponentSeparator.Position.top(_:);
  if (v23 == enum case for ComponentSeparator.Position.top(_:) || (v24 = v23, v23 == enum case for ComponentSeparator.Position.bottom(_:)))
  {
    v39 = objc_opt_self();
    v40 = [v39 fractionalWidthDimension:1.0];
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v41 = v90;
    static ComponentSeparator.thickness(compatibleWith:)();
    v43 = v42;

    v44 = [v39 absoluteDimension:v43];
    v45 = [objc_opt_self() sizeWithWidthDimension:v40 heightDimension:v44];

    v46 = v45;
  }

  else
  {
    v25 = enum case for ComponentSeparator.Position.leading(_:);
    v26 = objc_opt_self();
    v27 = v26;
    if (v24 != v25 && v24 != enum case for ComponentSeparator.Position.trailing(_:))
    {
      v83 = [v26 fractionalWidthDimension:1.0];
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v28 = v90;
      static ComponentSeparator.thickness(compatibleWith:)();
      v30 = v29;

      v31 = [v27 absoluteDimension:v30];
      v32 = objc_opt_self();
      v33 = v83;
      v34 = [v32 sizeWithWidthDimension:v83 heightDimension:v31];

      v35 = *(v89 + 8);
      v83 = v34;
      v36 = v15;
      v37 = v88;
      v35(v36, v88);
      goto LABEL_14;
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v47 = v90;
    static ComponentSeparator.thickness(compatibleWith:)();
    v49 = v48;

    v50 = [v27 absoluteDimension:v49];
    v51 = [v27 fractionalHeightDimension:1.0];
    v52 = [objc_opt_self() sizeWithWidthDimension:v50 heightDimension:v51];

    v46 = v52;
  }

  v83 = v46;
  v37 = v88;
LABEL_14:
  v53 = v84;
  ComponentSeparator.position.getter();
  v54 = v82(v12, v37);
  if (v54 == v81)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.interRowSpace.getter();
    v56 = v55;
    (*(v85 + 8))(v6, v86);
    v57 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v56 * -0.5}];
  }

  else if (v54 == v80)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.interRowSpace.getter();
    v59 = v58;
    (*(v85 + 8))(v6, v86);
    v57 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, v59 * 0.5}];
  }

  else
  {
    if (v54 != enum case for ComponentSeparator.Position.leading(_:))
    {
      v70 = enum case for ComponentSeparator.Position.trailing(_:);
      v71 = v54;
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v72 = (v85 + 8);
      if (v71 == v70)
      {
        PageGrid.interColumnSpace.getter();
        v74 = v73;
        (*v72)(v6, v86);
        v62 = [objc_opt_self() layoutAnchorWithEdges:8 absoluteOffset:{v74 * 0.5, 0.0}];
        v37 = v88;
      }

      else
      {
        PageGrid.interRowSpace.getter();
        v76 = v75;
        (*v72)(v6, v86);
        v77 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v76 * -0.5}];
        v78 = *(v89 + 8);
        v62 = v77;
        v37 = v88;
        v78(v12, v88);
      }

      v53 = v84;
      goto LABEL_21;
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.interColumnSpace.getter();
    v61 = v60;
    (*(v85 + 8))(v6, v86);
    v57 = [objc_opt_self() layoutAnchorWithEdges:2 absoluteOffset:{v61 * -0.5, 0.0}];
  }

  v62 = v57;
LABEL_21:
  type metadata accessor for SeparatorSupplementaryView(0);
  v63 = v87;
  ComponentSeparator.position.getter();
  v90 = 0;
  v91 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  v64._countAndFlagsBits = 95;
  v64._object = 0xE100000000000000;
  String.append(_:)(v64);
  v65._countAndFlagsBits = static UICollectionReusableView.makeItemScopedElementKind(in:uniquify:)();
  String.append(_:)(v65);

  (*(v89 + 8))(v63, v37);
  v66 = String._bridgeToObjectiveC()();

  v67 = objc_opt_self();
  v68 = v83;
  v69 = [v67 supplementaryItemWithLayoutSize:v83 elementKind:v66 containerAnchor:v62];

  (*(v20 + 8))(v53, v19);
  return v69;
}

uint64_t sub_10011A02C@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_10002849C(&qword_1009751C8, &unk_1007B7220);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_10002A400((v3 + 16), *(v3 + 40));
  if (dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)() && swift_conformsToProtocol2())
  {
    dispatch thunk of static SeparatorProvidingShelfComponentView.separator(in:)();
    v8 = type metadata accessor for ComponentSeparator();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(a3, v7, v8);
      return (*(v9 + 56))(a3, 0, 1, v8);
    }

    sub_10011A26C(v7);
  }

  v10 = type metadata accessor for ComponentSeparator();
  return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
}

uint64_t sub_10011A208()
{
  sub_100007000((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10011A26C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009751C8, &unk_1007B7220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011A2D4()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v10 = *(v5 + 8);
  v34 = v5 + 8;
  v35 = v10;
  v10(v9, v4);
  v11 = *(v36 + 16);

  v33 = ItemLayoutContext.index.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.columnCount.getter();
  v13 = v12;
  v14 = v12;
  v15 = *(v1 + 8);
  v31 = v0;
  result = v15(v3, v0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v13)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v11 % v13;
  if (!v17)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.columnCount.getter();
    v19 = v18;
    v20 = v18;
    result = v15(v3, v31);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v19 <= -9.22337204e18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v19 >= 9.22337204e18)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v17 = v19;
  }

  v21 = __OFSUB__(v11, v17);
  v22 = v11 - v17;
  if (v21)
  {
    goto LABEL_29;
  }

  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v24 = v35;
  v35(v9, v4);
  v25 = v36;
  result = ItemLayoutContext.index.getter();
  if (v25 != 1)
  {
    v29 = v23 < result;
LABEL_19:
    v28 = v33;
    goto LABEL_20;
  }

  v26 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_31;
  }

  swift_getKeyPath();
  v27 = v32;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v24(v27, v4);
  if (v36 == -1)
  {
    v29 = 1;
    goto LABEL_19;
  }

  v28 = v33;
  if (v36)
  {
    v29 = v26 % v36 == 0;
  }

  else
  {
    v29 = v26 == 0;
  }

LABEL_20:
  if (v11 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v11;
  }

  return v28 != v30 - 1 && !v29;
}

uint64_t sub_10011A758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ItemLayoutContext() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10011936C(a1, a2, a3, a4, v11, v4 + v10, v12);
}

unint64_t sub_10011A820()
{
  result = qword_10098FFA0;
  if (!qword_10098FFA0)
  {
    sub_10002D1A8(&qword_1009751D0, qword_1007B7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098FFA0);
  }

  return result;
}

uint64_t sub_10011A884()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CE080);
  sub_1000056A8(v4, qword_1009CE080);
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

uint64_t sub_10011AA5C()
{
  v1 = v0;
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.isRegularPad.getter();

  if ((v8 & 1) != 0 && v1[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_isExpanded] == 1)
  {
    if (qword_10096E1E0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (qword_10096E1E0 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1520);
  (*(*(v9 - 8) + 16))(v6, v10, v9);
  (*(v3 + 104))(v6, enum case for FontSource.useCase(_:), v2);
  v14[3] = v2;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v14);
  (*(v3 + 16))(v11, v6, v2);
  StaticDimension.init(_:scaledLike:)();
  return (*(v3 + 8))(v6, v2);
}

char *sub_10011AD30(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v35 = type metadata accessor for AutomationSemantics();
  v12 = *(v35 - 8);
  __chkstk_darwin(v35);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DirectionalTextAlignment();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v19 - 8);
  v21 = &v35 - v20;
  v7[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_isExpanded] = 0;
  v7[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_sizeCategory] = 7;
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v22, qword_1009D1520);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v21, v23, v22);
  v25 = *(v24 + 56);
  v25(v21, 0, 1, v22);
  (*(v16 + 104))(v18, enum case for DirectionalTextAlignment.none(_:), v15);
  v26 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v27 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v7[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label] = v27;
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  v28 = v27;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v38, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v39, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v12 + 8))(v14, v35);
  v37.receiver = v7;
  v37.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  v30 = OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label;
  v31 = *&v29[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label];
  v25(v21, 1, 1, v22);
  v32 = v29;
  v33 = v31;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v29[v30] setAccessibilityIgnoresInvertColors:1];
  [v32 addSubview:*&v29[v30]];

  return v32;
}

double sub_10011B1D8(double a1)
{
  v3 = type metadata accessor for StaticDimension();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 layoutMargins];
  v11 = *&v1[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label];
  [v11 sizeThatFits:{a1 - v12 - v13, 1.79769313e308}];
  if (qword_10096D0C0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v3, qword_1009CE080);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v14 = *(v7 + 8);
  v14(v10, v6);
  [v11 firstBaselineFromTop];
  sub_10011AA5C();
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v14(v10, v6);
  (*(v17 + 8))(v5, v3);
  [v11 lastBaselineFromBottom];
  return a1;
}

id sub_10011B4C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v3;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "layoutSubviews", v7);
  LayoutMarginsAware<>.layoutFrame.getter();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (qword_10096D0C0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for StaticDimension();
  sub_1000056A8(v18, qword_1009CE080);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  v21 = *&v3[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label];
  [v21 sizeThatFits:{v15, v17}];
  v23 = v22;
  v30.origin.x = v11;
  v30.origin.y = v13;
  v30.size.width = v15;
  v30.size.height = v17;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = v11;
  v31.origin.y = v13;
  v31.size.width = v15;
  v31.size.height = v17;
  MinY = CGRectGetMinY(v31);
  [v21 firstBaselineFromTop];
  v27 = MinY + v20 - v26;
  v32.origin.x = v11;
  v32.origin.y = v13;
  v32.size.width = v15;
  v32.size.height = v17;
  return [v21 setFrame:{MinX, v27, CGRectGetWidth(v32), v23}];
}

unint64_t sub_10011B8F0()
{
  result = qword_100975218;
  if (!qword_100975218)
  {
    type metadata accessor for TodayCardParagraphOverlay();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975218);
  }

  return result;
}

void sub_10011B948(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v47[1] = a2;
  v7 = a4;
  v51 = type metadata accessor for Paragraph.Alignment();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_1009752C8, &unk_1007B73C0);
  __chkstk_darwin(v9 - 8);
  v11 = v47 - v10;
  v12 = type metadata accessor for TodayCard.Style();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCardParagraphOverlay.style.getter();
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    (*(v13 + 16))(v15, a3, v12);
    if (v16(v11, 1, v12) != 1)
    {
      sub_10002B894(v11, &qword_1009752C8, &unk_1007B73C0);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v17 = v4[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_sizeCategory];
  v4[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_sizeCategory] = v7;
  if (v7 == 7)
  {
    if (v17 == 7)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v4 setNeedsLayout];
    goto LABEL_10;
  }

  if (v17 == 7)
  {
    goto LABEL_9;
  }

  switch(v7)
  {
    case 6:
      if (v17 != 6)
      {
        goto LABEL_9;
      }

      break;
    case 5:
      if (v17 != 5)
      {
        goto LABEL_9;
      }

      break;
    case 4:
      if (v17 != 4)
      {
        goto LABEL_9;
      }

      break;
    default:
      if ((v17 - 7) > 0xFFFFFFFC || v17 != v7)
      {
        goto LABEL_9;
      }

      break;
  }

LABEL_10:
  v52 = v13;
  v53 = v12;
  v50 = v15;
  v18 = TodayCard.Style.overlayBackgroundColor.getter();
  [v5 setBackgroundColor:v18];

  v19 = [v5 traitCollection];
  if (v7 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v19 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v5 setLayoutMargins:{v21, v23, v25, v27}];
  TodayCardParagraphOverlay.paragraph.getter();
  v28 = *&v5[OBJC_IVAR____TtC8AppStore29TodayCardParagraphOverlayView_label];
  v29 = Paragraph.text.getter();
  v30 = [v5 traitCollection];
  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v29];
  v32 = [v29 length];
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = v30;
  *(v33 + 32) = v31;
  *(v33 + 40) = 1;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_10010279C;
  *(v34 + 24) = v33;
  aBlock[4] = sub_1001027AC;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  aBlock[3] = &unk_1008B4F78;
  v35 = _Block_copy(aBlock);
  v36 = v30;
  v37 = v31;

  [v29 enumerateAttributesInRange:0 options:v32 usingBlock:{0x100000, v35}];

  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    [v28 setAttributedText:v37];

    v38 = v48;
    Paragraph.alignment.getter();
    v39 = v49;
    v40 = v51;
    v41 = (*(v49 + 88))(v38, v51);
    if (v41 == enum case for Paragraph.Alignment.left(_:))
    {
      v42 = 0;
      v44 = v52;
      v43 = v53;
    }

    else
    {
      v44 = v52;
      v43 = v53;
      if (v41 == enum case for Paragraph.Alignment.center(_:))
      {
        v42 = 1;
      }

      else if (v41 == enum case for Paragraph.Alignment.right(_:))
      {
        v42 = 2;
      }

      else if (v41 == enum case for Paragraph.Alignment.justified(_:))
      {
        v42 = 3;
      }

      else if (v41 == enum case for Paragraph.Alignment.localized(_:))
      {
        v42 = 4;
      }

      else
      {
        (*(v39 + 8))(v38, v40);
        v42 = 0;
      }
    }

    [v28 setTextAlignment:v42];
    v45 = v50;
    v46 = TodayCard.Style.overlayDetailTextColor.getter();
    [v28 setTextColor:v46];

    (*(v44 + 8))(v45, v43);
  }
}

char *sub_10011C000(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for Wordmark();
  v62 = *(v12 - 8);
  v63 = v12;
  __chkstk_darwin(v12);
  v61 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DirectionalTextAlignment();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v56 - v16;
  v18 = sub_10002849C(&qword_100975330, &unk_1007B7440);
  __chkstk_darwin(v18);
  v19 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v20 = type metadata accessor for ItemLayoutContext();
  (*(*(v20 - 8) + 56))(&v6[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView;
  v22 = type metadata accessor for IconGridView(0);
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC8AppStore12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  type metadata accessor for ArtworkView();
  ViewRecycler.init()();
  sub_100097060(&qword_100975338, &qword_100975330, &unk_1007B7440, &protocol conformance descriptor for ViewRecycler<A>);
  ReusePool.init(recycler:limit:)();
  *&v23[OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks] = 0;
  *&v23[OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader] = 0;
  v24 = &v23[OBJC_IVAR____TtC8AppStore12IconGridView_configuration];
  *v24 = vdupq_n_s64(0x4056000000000000uLL);
  *(v24 + 2) = 0x4024000000000000;
  *(v24 + 3) = 2;
  *(v24 + 2) = xmmword_1007B73D0;
  v65.receiver = v23;
  v65.super_class = v22;
  *&v7[v21] = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v25 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *&v7[v25] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v26 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_10096DCF8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for FontUseCase();
  v28 = sub_1000056A8(v27, qword_1009D0680);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v17, v28, v27);
  (*(v29 + 56))(v17, 0, 1, v27);
  (*(v57 + 104))(v58, enum case for DirectionalTextAlignment.none(_:), v59);
  v30 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v7[v26] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v31 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton;
  v32 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v7[v31] = sub_1000F5284(0, v33);
  v34 = &v7[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerLabelPresenter];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v64.receiver = v7;
  v64.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v64, "initWithFrame:", a1, a2, a3, a4);
  v36 = [v35 contentView];
  [v36 addSubview:*&v35[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView]];

  v37 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  v38 = *&v35[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v39 = v61;
  v40 = v62;
  v41 = v63;
  (*(v62 + 104))(v61, enum case for Wordmark.arcade(_:), v63);
  v42 = v38;
  v43 = [v35 traitCollection];
  v44 = Wordmark.asset(in:)(v43);

  (*(v40 + 8))(v39, v41);
  [v42 setImage:v44];

  v45 = *&v35[v37];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v46 = v45;
  v47 = static UIColor.primaryText.getter();
  [v46 setTintColor:v47];

  v48 = [v35 contentView];
  [v48 addSubview:*&v35[v37]];

  v49 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  v50 = *&v35[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  UILabel.alignment.setter();

  v51 = *&v35[v49];
  v52 = static UIColor.secondaryText.getter();
  [v51 setTextColor:v52];

  v53 = [v35 contentView];
  [v53 addSubview:*&v35[v49]];

  v54 = [v35 contentView];
  [v54 addSubview:*&v35[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton]];

  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v35;
}

uint64_t sub_10011C788()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009752D0);
  sub_1000056A8(v4, qword_1009752D0);
  if (qword_10096DCF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0680);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10011C95C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v73 = type metadata accessor for LayoutRect();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v96 = *(v69 - 8);
  __chkstk_darwin(v69);
  v81 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v97 = *(v82 - 8);
  __chkstk_darwin(v82);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v98 = *(v95 - 8);
  __chkstk_darwin(v95);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for AspectRatio();
  v11 = *(v94 - 8);
  __chkstk_darwin(v94);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OffsetGridLayout.Metrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for _VerticalFlowLayout();
  v67 = *(v68 - 8);
  *&v18 = __chkstk_darwin(v68).n128_u64[0];
  v66 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v3;
  v109.super_class = ObjectType;
  v70 = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v18);
  v92 = *&v3[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView];
  v20 = *&v3[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v63 = *&v3[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  v65 = *&v3[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton];
  static OffsetGridLayout.Metrics.centerOffsetLayout(with:interItemSpacing:lineSpacing:numberOfRows:originOffset:)();
  type metadata accessor for OffsetGridLayout();
  sub_10011E4E0(&qword_100975320, &type metadata accessor for OffsetGridLayout, &protocol conformance descriptor for OffsetGridLayout);
  v74 = v3;
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v22 = v21;
  (*(v15 + 8))(v17, v14);
  v78 = v20;
  v23 = [v20 image];
  if (v23)
  {
    v24 = v23;
    [v23 size];
    AspectRatio.init(_:_:)();
    AspectRatio.width(fromHeight:)();

    (*(v11 + 8))(v13, v94);
  }

  sub_10002849C(&qword_10096FE38, &qword_1007B14D0);
  v25 = *(type metadata accessor for _VerticalFlowLayout.Child() - 8);
  v93 = *(v25 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007B5350;
  v64 = v27;
  v94 = v27 + v26;
  *&v100 = v92;
  v107 = &type metadata for CGFloat;
  v108 = &protocol witness table for CGFloat;
  v106 = v22;
  v104 = type metadata accessor for VerticalSpaceMeasurable();
  v105 = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0(&v103);
  VerticalSpaceMeasurable.init(_:multiplier:)();
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutView.withMeasurements(providedBy:)();
  sub_100007000(&v103);
  v80 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
  v28 = *(v98 + 104);
  v92 = v98 + 104;
  v91 = v28;
  v28(v10);
  v29 = v97;
  v30 = *(v97 + 104);
  v90 = v97 + 104;
  v89 = v30;
  v30(v8, enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:), v82);
  v104 = &type metadata for CGFloat;
  v105 = &protocol witness table for CGFloat;
  v102 = 0;
  v103 = 0x4044000000000000;
  v100 = 0u;
  v101 = 0u;
  v88 = sub_10002849C(&unk_10097E8A0, &unk_1007B5940);
  v31 = v10;
  v32 = v96;
  v33 = *(v96 + 80);
  v62 = *(v96 + 72);
  v77 = ((v33 + 32) & ~v33) + v62;
  v79 = (v33 + 32) & ~v33;
  v34 = swift_allocObject();
  v76 = xmmword_1007B10D0;
  *(v34 + 16) = xmmword_1007B10D0;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v99 = v34;
  v84 = sub_10011E4E0(&qword_100973E00, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v87 = sub_10002849C(&unk_10097E8B0, &unk_1007BD010);
  v86 = sub_100097060(&qword_100973E08, &unk_10097E8B0, &unk_1007BD010, &protocol conformance descriptor for [A]);
  v35 = v81;
  v36 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = v31;
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v85 = *(v32 + 8);
  v85(v35, v36);
  sub_10002B894(&v100, &qword_1009799E0, qword_1007B5950);
  v38 = *(v29 + 8);
  v97 = v29 + 8;
  v83 = v38;
  v39 = v82;
  v38(v8, v82);
  v40 = *(v98 + 8);
  v98 += 8;
  v41 = v37;
  v42 = v37;
  v43 = v95;
  v40(v41, v95);
  sub_100007000(&v106);
  sub_100007000(&v103);
  v103 = v78;
  sub_100005744(0, &qword_100973120, UIImageView_ptr);
  LayoutView.withMeasurements(_:)();
  v91(v42, v80, v43);
  v44 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
  v89(v8, enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:), v39);
  v105 = &protocol witness table for CGFloat;
  v104 = &type metadata for CGFloat;
  v102 = 0;
  v103 = 0x4034000000000000;
  v100 = 0u;
  v101 = 0u;
  v78 = v33;
  v45 = swift_allocObject();
  *(v45 + 16) = v76;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v99 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v96 = v32 + 8;
  v85(v35, v36);
  sub_10002B894(&v100, &qword_1009799E0, qword_1007B5950);
  v83(v8, v39);
  v46 = v95;
  v75 = v40;
  v40(v42, v95);
  sub_100007000(&v106);
  sub_100007000(&v103);
  v103 = v63;
  type metadata accessor for DynamicTypeLabel();
  LayoutView.withLayoutMargins(_:)();
  v91(v42, enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:), v46);
  LODWORD(v63) = v44;
  v89(v8, v44, v39);
  if (qword_10096D0C8 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for StaticDimension();
  v48 = sub_1000056A8(v47, qword_1009752D0);
  v104 = v47;
  v105 = &protocol witness table for StaticDimension;
  v49 = sub_1000056E0(&v103);
  (*(*(v47 - 8) + 16))(v49, v48, v47);
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1007B1890;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static _VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v99 = v50;
  v51 = v81;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v85(v51, v36);
  sub_10002B894(&v100, &qword_1009799E0, qword_1007B5950);
  v83(v8, v39);
  v52 = v42;
  v53 = v42;
  v54 = v95;
  v75(v52);
  sub_100007000(&v106);
  sub_100007000(&v103);
  v107 = type metadata accessor for OfferButton();
  v108 = &protocol witness table for UIView;
  v55 = v65;
  v106 = v65;
  v91(v53, v80, v54);
  v89(v8, v63, v39);
  v105 = &protocol witness table for CGFloat;
  v104 = &type metadata for CGFloat;
  v102 = 0;
  v103 = 0x4032000000000000;
  v100 = 0u;
  v101 = 0u;
  v56 = swift_allocObject();
  *(v56 + 16) = v76;
  v57 = v55;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v99 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v85(v51, v36);
  sub_10002B894(&v100, &qword_1009799E0, qword_1007B5950);
  v83(v8, v39);
  (v75)(v53, v54);
  sub_100007000(&v103);
  sub_100007000(&v106);
  v58 = v66;
  _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  sub_10011E4E0(&qword_100975328, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v59 = v71;
  v60 = v68;
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v72 + 8))(v59, v73);
  return (*(v67 + 8))(v58, v60);
}

uint64_t type metadata accessor for ArcadeShowcaseCollectionViewCell(uint64_t a1)
{
  result = qword_100975310;
  if (!qword_100975310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011DB7C(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10011DC28(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v47 = a2;
  v53 = a1;
  v50 = type metadata accessor for StackMeasurable.Axis();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StackMeasurable();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for VerticalSpaceMeasurable();
  v54 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OfferButtonMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for OffsetGridLayout.Metrics();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OffsetGridLayout.Metrics.centerOffsetLayout(with:interItemSpacing:lineSpacing:numberOfRows:originOffset:)();
  type metadata accessor for OffsetGridLayout();
  sub_10011E4E0(&qword_100975320, &type metadata accessor for OffsetGridLayout, &protocol conformance descriptor for OffsetGridLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v23 = v22;
  (*(v19 + 8))(v21, v18);
  v24 = [a3 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v25 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v25 = qword_100991028;
  }

  v26 = sub_1000056A8(v11, v25);
  (*(v12 + 16))(v14, v26, v11);

  (*(v12 + 32))(v17, v14, v11);
  OfferButtonMetrics.estimatedHeight.getter();
  v28 = v27;
  (*(v12 + 8))(v17, v11);
  sub_10002849C(&qword_10096FCA8, &qword_1007B12F0);
  v29 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v30 = 7 * *(v54 + 72);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1007B73E0;
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  v55[0] = 0x4044000000000000;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  v55[0] = v23;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  v55[0] = 0x4034000000000000;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  v55[0] = 0;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  v55[0] = 0x4033000000000000;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  v55[0] = 0x4032000000000000;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  v55[0] = v28;
  VerticalSpaceMeasurable.init(_:multiplier:)();
  if ((static String.isNilOrEmpty(_:)() & 1) == 0)
  {
    if (qword_10096DCF8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for FontUseCase();
    sub_1000056A8(v32, qword_1009D0680);
    v33 = type metadata accessor for Feature();
    v56 = v33;
    v57 = sub_10011E4E0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v34 = sub_1000056E0(v55);
    (*(*(v33 - 8) + 104))(v34, enum case for Feature.measurement_with_labelplaceholder(_:), v33);
    isFeatureEnabled(_:)();
    sub_100007000(v55);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    v36 = v35;
    if (qword_10096D0C8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for StaticDimension();
    sub_1000056A8(v37, qword_1009752D0);
    AnyDimension.topMargin(from:in:)();
    v56 = &type metadata for CGFloat;
    v57 = &protocol witness table for CGFloat;
    *v55 = v36 + v38;
    v39 = v45;
    VerticalSpaceMeasurable.init(_:multiplier:)();
    v31 = sub_1000337C8(1, 8, 1, v31);
    *(v31 + 16) = 8;
    (*(v54 + 32))(v31 + v29 + v30, v39, v46);
  }

  (*(v48 + 104))(v49, enum case for StackMeasurable.Axis.vertical(_:), v50);
  sub_1002A4CCC(v31);

  StackMeasurable.init(axis:skipEmptyChildren:children:)();
  v40 = v52;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v42 = v41;
  (*(v51 + 8))(v9, v40);
  return v42;
}

uint64_t sub_10011E4E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10011E528()
{
  v1 = v0;
  v26 = type metadata accessor for DirectionalTextAlignment();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_10002849C(&qword_100975330, &unk_1007B7440);
  __chkstk_darwin(v6);
  v7 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v8 = type metadata accessor for ItemLayoutContext();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView;
  v10 = type metadata accessor for IconGridView(0);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC8AppStore12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  type metadata accessor for ArtworkView();
  ViewRecycler.init()();
  sub_100097060(&qword_100975338, &qword_100975330, &unk_1007B7440, &protocol conformance descriptor for ViewRecycler<A>);
  ReusePool.init(recycler:limit:)();
  *&v11[OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks] = 0;
  *&v11[OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader] = 0;
  v12 = &v11[OBJC_IVAR____TtC8AppStore12IconGridView_configuration];
  *v12 = vdupq_n_s64(0x4056000000000000uLL);
  *(v12 + 2) = 0x4024000000000000;
  *(v12 + 3) = 2;
  *(v12 + 2) = xmmword_1007B73D0;
  v27.receiver = v11;
  v27.super_class = v10;
  *(v0 + v9) = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *(v0 + v13) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_10096DCF8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v15, qword_1009D0680);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v5, v16, v15);
  (*(v17 + 56))(v5, 0, 1, v15);
  (*(v24 + 104))(v25, enum case for DirectionalTextAlignment.none(_:), v26);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v14) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v19 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton;
  v20 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v19) = sub_1000F5284(0, v21);
  v22 = (v1 + OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerLabelPresenter);
  *v22 = 0u;
  v22[1] = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10011E990(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1003D7C44(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000541E0();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for AdPlacementType();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_100050BB8(v5, v7);
  *v2 = v7;
  return v10;
}

double sub_10011EA6C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

void *sub_10011EA78(uint64_t a1)
{
  v47 = type metadata accessor for LegacyAppState();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AdamId();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100398B30(_swiftEmptyArrayStorage);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v12 = *(v1 + 48);
  v45 = *(v1 + 56);
  v46 = v12;
  ObjectType = swift_getObjectType();
  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v43 = v15;
  v44 = ObjectType;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v37 = *(v14 + 56);
  v38 = v14;
  v39 = (v14 - 8);
  v40 = (v3 + 8);
  v41 = v9;
  v42 = v6;
  while (1)
  {
    v48 = v11;
    v43(v9, v16, v6);
    dispatch thunk of AppStateController.stateMachine(forApp:)();
    swift_getObjectType();
    dispatch thunk of AppStateMachine.currentState.getter();
    swift_unknownObjectRelease();
    v17 = AdamId.stringValue.getter();
    v19 = v18;
    v20 = v5;
    v21 = LegacyAppState.isLocalApplication.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v10;
    v24 = sub_1000072B8(v17, v19);
    v25 = v10[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v10[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v20;
        if (v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_100054078();
        v5 = v20;
        if (v28)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_10004DB84(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1000072B8(v17, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_19;
      }

      v24 = v29;
      v5 = v20;
      if (v28)
      {
LABEL_3:

        v10 = v49;
        *(v49[7] + v24) = v21 & 1;
        (*v40)(v5, v47);
        v9 = v41;
        v6 = v42;
        (*v39)(v41, v42);
        goto LABEL_4;
      }
    }

    v10 = v49;
    v49[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v10[6] + 16 * v24);
    *v31 = v17;
    v31[1] = v19;
    *(v10[7] + v24) = v21 & 1;
    (*v40)(v5, v47);
    v9 = v41;
    v6 = v42;
    (*v39)(v41, v42);
    v32 = v10[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_18;
    }

    v10[2] = v34;
LABEL_4:
    v16 += v37;
    v11 = v48 - 1;
    if (v48 == 1)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10011EE28(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v128 = a6;
  v127 = a5;
  v126 = a4;
  v139 = a3;
  v131 = a2;
  v156 = a1;
  v151 = *v6;
  v122 = type metadata accessor for DispatchWorkItemFlags();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for DispatchQoS();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for DispatchTime();
  v132 = *(v130 - 8);
  __chkstk_darwin(v130);
  v116 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v129 = &v115 - v11;
  v12 = sub_10002849C(&qword_100975408, &qword_1007B7518);
  __chkstk_darwin(v12 - 8);
  v136 = &v115 - v13;
  v149 = type metadata accessor for AppStoreConfig();
  v143 = *(v149 - 8);
  __chkstk_darwin(v149);
  v140 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for AdPlacementType();
  v153 = *(v142 - 8);
  __chkstk_darwin(v142);
  v134 = v15;
  v141 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_100972390, &qword_1007B2F88);
  __chkstk_darwin(v16 - 8);
  v124 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v137 = &v115 - v19;
  v20 = sub_10002849C(&qword_100972398, &qword_1007B7510);
  __chkstk_darwin(v20 - 8);
  v123 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v133 = &v115 - v23;
  v24 = type metadata accessor for OSLogger();
  v155 = *(v24 - 8);
  __chkstk_darwin(v24);
  v125 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v152 = &v115 - v27;
  v28 = sub_10002849C(&qword_100975410, &qword_1007B7520);
  __chkstk_darwin(v28 - 8);
  v150 = (&v115 - v29);
  Response = type metadata accessor for OnDeviceAdvertFetchResponse();
  v157 = *(Response - 8);
  v158 = Response;
  __chkstk_darwin(Response);
  v138 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v147 = &v115 - v33;
  __chkstk_darwin(v34);
  v135 = &v115 - v35;
  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v154 = sub_1000056A8(v24, qword_1009CE248);
  v36 = sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  v37 = *(type metadata accessor for LogMessage() - 8);
  v38 = *(v37 + 72);
  v39 = *(v37 + 80);
  v146 = 4 * v38;
  v144 = v36;
  *(swift_allocObject() + 16) = xmmword_1007B5350;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  v159 = v6;
  LogMessage.init(stringLiteral:)();
  v145 = 3 * v38;
  v40 = v156;
  v41 = AdPlacementType.rawValue.getter();
  *(&v162 + 1) = &type metadata for String;
  *&aBlock = v41;
  *(&aBlock + 1) = v42;
  v43 = v154;
  static LogMessage.safe(_:)();
  sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
  Logger.info(_:)();

  v44 = v150;
  sub_100074394(v40, v150);
  v46 = v157;
  v45 = v158;
  v47 = v157[6](v44, 1, v158);
  v148 = v24;
  if (v47 == 1)
  {
    v133 = v39;
    v135 = ((v39 + 32) & ~v39);
    v137 = (2 * v38);
    v115 = v38;
    v48 = v40;
    sub_10002B894(v44, &qword_100975410, &qword_1007B7520);
    v150 = sub_10002849C(&qword_100975418, &qword_1007B7528);
    v49 = Promise.__allocating_init()();
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = v153;
    v52 = v153 + 16;
    v53 = v141;
    v54 = v142;
    v151 = *(v153 + 16);
    v151(v141, v48, v142);
    v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v134 += v55;
    v56 = swift_allocObject();
    *(v56 + 16) = v50;
    *(v56 + 24) = v49;
    v57 = *(v51 + 32);
    v153 = v51 + 32;
    (v57)(v56 + v55, v53, v54);
    v152 = v49;

    v58 = v136;
    sub_1005F4DD4(v136);
    v59 = v143;
    v60 = v149;
    if ((*(v143 + 48))(v58, 1, v149) == 1)
    {
      sub_10002B894(v58, &qword_100975408, &qword_1007B7518);
      v61 = type metadata accessor for OnDeviceAdvert();
      (*(*(v61 - 8) + 56))(v123, 1, 1, v61);
      v62 = enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
      FailReason = type metadata accessor for OnDeviceAdFetchFailReason();
      v64 = *(FailReason - 8);
      v65 = v124;
      (*(v64 + 104))(v124, v62, FailReason);
      (*(v64 + 56))(v65, 0, 1, FailReason);
      OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)();
      v66 = v125;
      v67 = v148;
      (*(v155 + 16))(v125, v154, v148);
      *(swift_allocObject() + 16) = xmmword_1007B23A0;
      static LogMessage.identity(_:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      *(&v162 + 1) = v54;
      v68 = sub_1000056E0(&aBlock);
      v151(v68, v156, v54);
      static LogMessage.safe(_:)();
      sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      if (v139)
      {
        v69 = 0;
        v70 = 0;
        *(&aBlock + 1) = 0;
        *&v162 = 0;
      }

      else
      {
        v70 = &type metadata for Double;
        v69 = v131;
      }

      *&aBlock = v69;
      *(&v162 + 1) = v70;
      static LogMessage.safe(_:)();
      sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
      Logger.error(_:)();

      (*(v155 + 8))(v66, v67);
      v111 = v157;
      v110 = v158;
      v112 = v138;
      v157[2](v147, v138, v158);
      v113 = Promise.__allocating_init(value:)();

      (v111[1])(v112, v110);
      return v113;
    }

    else
    {
      v157 = v57;
      v158 = v52;
      (*(v59 + 32))(v140, v58, v60);
      v78 = v159;
      v79 = AppStoreModule.getAd(config:appRequestMetaFields:adamId:_:)();
      v80 = v59;
      if ((v139 & 1) == 0)
      {
        v155 = v56;
        v81 = v131;
        v150 = v78[2];
        v82 = v116;
        static DispatchTime.now()();
        + infix(_:_:)();
        v83 = *(v132 + 8);
        v132 += 8;
        v154 = v83;
        v83(v82, v130);
        v84 = swift_allocObject();
        swift_weakInit();
        v85 = v141;
        v86 = v142;
        v151(v141, v156, v142);
        v87 = (v134 + 7) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        *(v88 + 16) = v152;
        *(v88 + 24) = v84;
        (v157)(v88 + v55, v85, v86);
        *(v88 + v87) = v79;
        *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v81;
        v163 = sub_100124454;
        v164 = v88;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v162 = sub_100007A08;
        *(&v162 + 1) = &unk_1008B5068;
        v89 = _Block_copy(&aBlock);

        v90 = v117;
        static DispatchQoS.unspecified.getter();
        v160 = _swiftEmptyArrayStorage;
        sub_100007754(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
        sub_10000794C(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80);
        v91 = v119;
        v92 = v122;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v93 = v129;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v89);
        (*(v121 + 8))(v91, v92);
        v94 = v90;
        v80 = v143;
        (*(v118 + 8))(v94, v120);
        v154(v93, v130);
      }

      v95 = v152;

      sub_10002849C(&qword_100975400, &qword_1007B7508);
      Box.read<A>(with:)();

      v96 = aBlock;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v96;
      sub_100051AB4(v79, v95, v156, isUniquelyReferenced_nonNull_native);
      v98 = aBlock;
      __chkstk_darwin(v99);
      *(&v115 - 2) = v98;

      Box.write(with:)();

      (*(v80 + 8))(v140, v149);
    }
  }

  else
  {
    v71 = v45;
    v72 = v135;
    v46[4](v135, v44, v71);
    v73 = v24;
    v74 = v72;
    (*(v155 + 16))(v152, v43, v73);
    *(swift_allocObject() + 16) = xmmword_1007B73E0;
    static LogMessage.identity(_:)();
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    v75 = v133;
    OnDeviceAdvertFetchResponse.ad.getter();
    v76 = type metadata accessor for OnDeviceAdvert();
    v77 = *(v76 - 8);
    if ((*(v77 + 48))(v75, 1, v76) == 1)
    {
      sub_10002B894(v75, &qword_100972398, &qword_1007B7510);
      aBlock = 0u;
      v162 = 0u;
    }

    else
    {
      v100 = OnDeviceAdvert.instanceId.getter();
      *(&v162 + 1) = &type metadata for String;
      *&aBlock = v100;
      *(&aBlock + 1) = v101;
      (*(v77 + 8))(v75, v76);
    }

    static LogMessage.safe(_:)();
    sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
    LogMessage.init(stringLiteral:)();
    v102 = v137;
    OnDeviceAdvertFetchResponse.failureReason.getter();
    v103 = type metadata accessor for OnDeviceAdFetchFailReason();
    v104 = *(v103 - 8);
    if ((*(v104 + 48))(v102, 1, v103) == 1)
    {
      sub_10002B894(v102, &qword_100972390, &qword_1007B2F88);
      aBlock = 0u;
      v162 = 0u;
    }

    else
    {
      *(&v162 + 1) = v103;
      v105 = sub_1000056E0(&aBlock);
      (*(v104 + 32))(v105, v102, v103);
    }

    static LogMessage.safe(_:)();
    sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
    v106 = v148;
    v107 = v152;
    Logger.info(_:)();

    (*(v155 + 8))(v107, v106);
    sub_10002849C(&qword_100975418, &qword_1007B7528);
    v109 = v157;
    v108 = v158;
    v157[2](v147, v74, v158);
    v95 = Promise.__allocating_init(value:)();
    (v109[1])(v74, v108);
  }

  return v95;
}

double sub_10012039C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AdPlacementType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = *(Strong + 16);

    (*(v14 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
    v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v27 = v12;
    v22 = v7;
    *(v21 + 16) = v29;
    *(v21 + 24) = a3;
    (*(v14 + 32))(v21 + v19, v16, v13);
    *(v21 + v20) = v30;
    aBlock[4] = sub_100124290;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008B50B8;
    v23 = _Block_copy(aBlock);

    v24 = v27;
    static DispatchQoS.unspecified.getter();
    v34 = _swiftEmptyArrayStorage;
    sub_100007754(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_10000794C(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v28;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v33 + 8))(v9, v22);
    (*(v31 + 8))(v24, v32);
  }

  return result;
}

void sub_10012078C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v124 = a4;
  v131 = a3;
  v5 = type metadata accessor for AppStoreAdUnfilledReason();
  v134 = *(v5 - 8);
  __chkstk_darwin(v5);
  v112 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10002849C(&qword_100975420, &qword_1007B7530);
  __chkstk_darwin(v119);
  v123 = v102 - v7;
  FailReason = type metadata accessor for OnDeviceAdFetchFailReason();
  v9 = *(FailReason - 8);
  __chkstk_darwin(FailReason);
  v120 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972390, &qword_1007B2F88);
  __chkstk_darwin(v11 - 8);
  v13 = v102 - v12;
  v14 = sub_10002849C(&qword_100972398, &qword_1007B7510);
  __chkstk_darwin(v14 - 8);
  v127 = v102 - v15;
  Response = type metadata accessor for OnDeviceAdvertFetchResponse();
  v129 = *(Response - 8);
  __chkstk_darwin(Response);
  v128 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for AdPlacementType();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v116 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AdamId();
  __chkstk_darwin(v19 - 8);
  v115 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OnDeviceAdvert();
  v125 = *(v21 - 8);
  v126 = v21;
  __chkstk_darwin(v21);
  v118 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10002849C(&qword_100975428, &qword_1007B7538);
  __chkstk_darwin(v23 - 8);
  v117 = v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v130 = v102 - v26;
  __chkstk_darwin(v27);
  v122 = v102 - v28;
  __chkstk_darwin(v29);
  v121 = v102 - v30;
  __chkstk_darwin(v31);
  v33 = v102 - v32;
  v34 = type metadata accessor for OSLogger();
  v133 = *(v34 - 8);
  __chkstk_darwin(v34);
  v132 = v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((Promise.isResolved.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      v103 = v5;
      v106 = v13;
      v107 = v9;
      v108 = FailReason;
      v109 = a1;

      sub_10002849C(&qword_100975400, &qword_1007B7508);
      Box.read<A>(with:)();

      v38 = sub_10011E990(v131);
      sub_10012403C(v38);
      __chkstk_darwin(v39);

      Box.write(with:)();

      v110 = dispatch thunk of AppStoreAd.positionInformation.getter();
      if (qword_10096D130 != -1)
      {
        swift_once();
      }

      v40 = sub_1000056A8(v34, qword_1009CE248);
      (*(v133 + 16))(v132, v40, v34);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1007B7450;
      v102[1] = v41;

      static LogMessage.identity(_:)();
      v104 = v37;

      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      v42 = dispatch thunk of AppStoreAd.instanceId.getter();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v42;
      *(&v135 + 1) = v43;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      v44 = dispatch thunk of AppStoreAd.impressionId.getter();
      if (v45)
      {
        v46 = &type metadata for String;
      }

      else
      {
        v44 = 0;
        v46 = 0;
        *&v136 = 0;
      }

      *&v135 = v44;
      *(&v135 + 1) = v45;
      *(&v136 + 1) = v46;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      v47 = dispatch thunk of AppStoreAd.toroId.getter();
      v105 = Response;
      if (v48)
      {
        v49 = &type metadata for String;
      }

      else
      {
        v47 = 0;
        v49 = 0;
        *&v136 = 0;
      }

      *&v135 = v47;
      *(&v135 + 1) = v48;
      *(&v136 + 1) = v49;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      v50 = dispatch thunk of AppStoreAd.adamId.getter();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v50;
      *(&v135 + 1) = v51;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      v52 = dispatch thunk of AppStoreAd.clientRequestId.getter();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v52;
      *(&v135 + 1) = v53;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      dispatch thunk of AppStoreAd.unfilledReason.getter();
      v54 = v134;
      v55 = *(v134 + 48);
      v56 = v103;
      if (v55(v33, 1, v103) == 1)
      {
        sub_10002B894(v33, &qword_100975428, &qword_1007B7538);
        v135 = 0u;
        v136 = 0u;
      }

      else
      {
        *(&v136 + 1) = v56;
        v57 = sub_1000056E0(&v135);
        (*(v54 + 32))(v57, v33, v56);
      }

      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      v58 = v110;
      if (v110)
      {
        v59 = sub_10002849C(&qword_1009915E0, &unk_1007B7540);
      }

      else
      {
        v59 = 0;
        *(&v135 + 1) = 0;
        *&v136 = 0;
      }

      *&v135 = v58;
      *(&v136 + 1) = v59;

      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      v60 = dispatch thunk of AppStoreAd.privacyInfo.getter();
      v111 = v55;
      if (v61)
      {
        v62 = &type metadata for String;
      }

      else
      {
        v60 = 0;
        v62 = 0;
        *&v136 = 0;
      }

      *&v135 = v60;
      *(&v135 + 1) = v61;
      *(&v136 + 1) = v62;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      v63 = dispatch thunk of AppStoreAd.metadata.getter();
      *(&v136 + 1) = &type metadata for String;
      *&v135 = v63;
      *(&v135 + 1) = v64;
      static LogMessage.safe(_:)();
      sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
      v65 = v132;
      Logger.info(_:)();

      (*(v133 + 8))(v65, v34);
      v66 = v121;
      dispatch thunk of AppStoreAd.unfilledReason.getter();
      if (v111(v66, 1, v56) != 1)
      {

        sub_10002B894(v66, &qword_100975428, &qword_1007B7538);
        v68 = v122;
        v69 = v123;
        v70 = v134;
LABEL_24:
        dispatch thunk of AppStoreAd.unfilledReason.getter();
        v71 = v130;
        (*(v70 + 104))(v130, enum case for AppStoreAdUnfilledReason.policyAdDrop(_:), v56);
        (*(v70 + 56))(v71, 0, 1, v56);
        v72 = *(v119 + 48);
        sub_10012436C(v68, v69);
        sub_10012436C(v71, v69 + v72);
        v73 = v111;
        if (v111(v69, 1, v56) == 1)
        {
          sub_10002B894(v71, &qword_100975428, &qword_1007B7538);
          sub_10002B894(v68, &qword_100975428, &qword_1007B7538);
          v74 = v73(v69 + v72, 1, v56);
          v76 = v125;
          v75 = v126;
          if (v74 == 1)
          {
            sub_10002B894(v69, &qword_100975428, &qword_1007B7538);
LABEL_40:
            v78 = &enum case for OnDeviceAdFetchFailReason.policyAdDrop(_:);
            goto LABEL_41;
          }
        }

        else
        {
          v77 = v117;
          sub_10012436C(v69, v117);
          if (v73(v69 + v72, 1, v56) != 1)
          {
            v93 = v69 + v72;
            v94 = v112;
            (*(v70 + 32))(v112, v93, v56);
            sub_100007754(&qword_100975430, &type metadata accessor for AppStoreAdUnfilledReason, &protocol conformance descriptor for AppStoreAdUnfilledReason);
            v95 = dispatch thunk of static Equatable.== infix(_:_:)();
            v96 = *(v70 + 8);
            v96(v94, v56);
            sub_10002B894(v130, &qword_100975428, &qword_1007B7538);
            sub_10002B894(v68, &qword_100975428, &qword_1007B7538);
            v96(v77, v56);
            sub_10002B894(v69, &qword_100975428, &qword_1007B7538);
            v76 = v125;
            v75 = v126;
            if (v95)
            {
              goto LABEL_40;
            }

LABEL_30:
            v78 = &enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
LABEL_41:
            v97 = v107;
            v98 = v120;
            v99 = v108;
            (*(v107 + 104))(v120, *v78, v108);
            dispatch thunk of AppStoreAd.clientRequestId.getter();
            dispatch thunk of AppStoreAd.toroId.getter();
            (*(v76 + 56))(v127, 1, 1, v75);
            v100 = v106;
            (*(v97 + 16))(v106, v98, v99);
            (*(v97 + 56))(v100, 0, 1, v99);
            v101 = v128;
            OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)();
            Promise.resolve(_:)();

            (*(v129 + 8))(v101, v105);
            (*(v97 + 8))(v98, v99);
            return;
          }

          sub_10002B894(v130, &qword_100975428, &qword_1007B7538);
          sub_10002B894(v68, &qword_100975428, &qword_1007B7538);
          (*(v70 + 8))(v77, v56);
          v76 = v125;
          v75 = v126;
        }

        sub_10002B894(v69, &qword_100975420, &qword_1007B7530);
        goto LABEL_30;
      }

      sub_10002B894(v66, &qword_100975428, &qword_1007B7538);
      dispatch thunk of AppStoreAd.adamId.getter();
      v67 = static String.isNilOrEmpty(_:)();

      v68 = v122;
      v69 = v123;
      v70 = v134;
      if (v67)
      {

        goto LABEL_24;
      }

      v79 = dispatch thunk of AppStoreAd.instanceId.getter();
      v133 = v80;
      v134 = v79;
      v81 = dispatch thunk of AppStoreAd.impressionId.getter();
      if (v82)
      {
        v83 = v81;
      }

      else
      {
        v83 = 0;
      }

      v132 = v83;
      if (v82)
      {
        v84 = v82;
      }

      else
      {
        v84 = 0xE000000000000000;
      }

      v130 = v84;
      dispatch thunk of AppStoreAd.adamId.getter();
      AdamId.init(value:)();
      (*(v113 + 16))(v116, v131, v114);
      dispatch thunk of AppStoreAd.metadata.getter();
      dispatch thunk of AppStoreAd.privacyInfo.getter();
      dispatch thunk of AppStoreAd.appMetadata.getter();
      dispatch thunk of AppStoreAd.cppIds.getter();
      dispatch thunk of AppStoreAd.creativeDetails.getter();
      v85 = v118;
      OnDeviceAdvert.init(instanceId:impressionId:adamId:placementType:metadata:privacy:positionInfo:appMetadata:cppIds:alignedRegionDetails:)();
      dispatch thunk of AppStoreAd.clientRequestId.getter();
      dispatch thunk of AppStoreAd.toroId.getter();
      v86 = v125;
      v87 = v127;
      v88 = v85;
      v89 = v126;
      (*(v125 + 16))(v127, v88, v126);
      (*(v86 + 56))(v87, 0, 1, v89);
      (*(v107 + 56))(v106, 1, 1, v108);
      v90 = v128;
      OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)();
      Promise.resolve(_:)();
      (*(v129 + 8))(v90, v105);
      v91 = dispatch thunk of AppStoreAd.toroId.getter();
      if (v92)
      {
        __chkstk_darwin(v91);
        Box.write(with:)();

        (*(v86 + 8))(v118, v89);
      }

      else
      {

        (*(v86 + 8))(v118, v89);
      }
    }
  }
}

void sub_100121B68(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdPlacementType();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchTime();
  v13 = *(v50 - 8);
  __chkstk_darwin(v50);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;

  sub_10002849C(&qword_100975400, &qword_1007B7508);
  Box.read<A>(with:)();

  v19 = aBlock;
  if (aBlock[2] && (v20 = sub_1003D7C44(a1), (v21 & 1) != 0))
  {
    v44 = v7;
    v22 = (v19[7] + 16 * v20);
    v23 = v22[1];
    v45 = *v22;

    swift_retain_n();

    v24 = Promise.isResolved.getter();

    if ((v24 & 1) == 0)
    {
      v41 = *(v3 + 16);
      static DispatchTime.now()();
      + infix(_:_:)();
      v42 = *(v13 + 8);
      v43 = v13 + 8;
      v42(v15, v50);
      v28 = swift_allocObject();
      swift_weakInit();
      v40 = v6;
      v29 = v51;
      v30 = a1;
      v31 = v52;
      (*(v51 + 16))(&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v52);
      v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      *(v34 + 16) = v23;
      *(v34 + 24) = v28;
      (*(v29 + 32))(v34 + v32, v12, v31);
      *(v34 + v33) = v45;
      *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
      v58 = sub_100124038;
      v59 = v34;
      aBlock = _NSConcreteStackBlock;
      v55 = 1107296256;
      v56 = sub_100007A08;
      v57 = &unk_1008B4FF0;
      v35 = _Block_copy(&aBlock);

      v36 = v46;
      static DispatchQoS.unspecified.getter();
      v53 = _swiftEmptyArrayStorage;
      sub_100007754(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_10000794C(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80);
      v37 = v48;
      v38 = v40;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v35);

      (*(v44 + 8))(v37, v38);
      (*(v47 + 8))(v36, v49);
      v42(v18, v50);

      return;
    }
  }

  else
  {
  }

  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for OSLogger();
  sub_1000056A8(v25, qword_1009CE248);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5350;
  static LogMessage.identity(_:)();
  v57 = &type metadata for String;
  aBlock = 0xD000000000000031;
  v55 = 0x8000000100802610;
  static LogMessage.sensitive(_:)();
  sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v26 = v52;
  v57 = v52;
  v27 = sub_1000056E0(&aBlock);
  (*(v51 + 16))(v27, a1, v26);
  static LogMessage.sensitive(_:)();
  sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
  Logger.info(_:)();
}

uint64_t sub_10012230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = type metadata accessor for AppStoreTaskCancelReason();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OSLogger();
  v54 = *(v13 - 8);
  __chkstk_darwin(v13);
  v53 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972390, &qword_1007B2F88);
  __chkstk_darwin(v15 - 8);
  v17 = v44 - v16;
  v18 = sub_10002849C(&qword_100972398, &qword_1007B7510);
  __chkstk_darwin(v18 - 8);
  v20 = v44 - v19;
  Response = type metadata accessor for OnDeviceAdvertFetchResponse();
  v50 = *(Response - 8);
  v51 = Response;
  __chkstk_darwin(Response);
  v52 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Promise.isResolved.getter();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v45 = v13;
      v46 = v12;
      v47 = v10;
      v48 = v9;
      v49 = a1;

      sub_10002849C(&qword_100975400, &qword_1007B7508);
      Box.read<A>(with:)();

      v24 = sub_10011E990(a3);
      sub_10012403C(v24);
      v25 = v55;
      __chkstk_darwin(v26);
      *&v44[-2] = v25;

      Box.write(with:)();

      AppStoreRequestTask.clientRequestId.getter();
      AppStoreRequestTask.toroId.getter();
      v27 = type metadata accessor for OnDeviceAdvert();
      (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
      v28 = enum case for OnDeviceAdFetchFailReason.timeout(_:);
      FailReason = type metadata accessor for OnDeviceAdFetchFailReason();
      v30 = *(FailReason - 8);
      v44[1] = a4;
      v31 = v30;
      (*(v30 + 104))(v17, v28, FailReason);
      (*(v31 + 56))(v17, 0, 1, FailReason);
      OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)();
      if (qword_10096D130 != -1)
      {
        swift_once();
      }

      v32 = v45;
      v33 = sub_1000056A8(v45, qword_1009CE248);
      (*(v54 + 16))(v53, v33, v32);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B5370;

      static LogMessage.identity(_:)();

      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      v58 = &type metadata for Double;
      v55 = a5;
      static LogMessage.safe(_:)();
      sub_10002B894(&v55, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      *&v34 = COERCE_DOUBLE(AppStoreRequestTask.toroId.getter());
      if (v35)
      {
        v36 = &type metadata for String;
      }

      else
      {
        *&v34 = 0.0;
        v36 = 0;
        v57 = 0;
      }

      v55 = *&v34;
      v56 = v35;
      v58 = v36;
      static LogMessage.safe(_:)();
      sub_10002B894(&v55, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      *&v37 = COERCE_DOUBLE(AppStoreRequestTask.clientRequestId.getter());
      v58 = &type metadata for String;
      v55 = *&v37;
      v56 = v38;
      static LogMessage.safe(_:)();
      sub_10002B894(&v55, &unk_1009711D0, &unk_1007B1A10);
      v39 = v53;
      Logger.info(_:)();

      (*(v54 + 8))(v39, v32);
      v41 = v46;
      v40 = v47;
      v42 = v48;
      (*(v47 + 104))(v46, enum case for AppStoreTaskCancelReason.slaMiss(_:), v48);
      AppStoreRequestTask.cancel(_:)();
      (*(v40 + 8))(v41, v42);
      v43 = v52;
      Promise.resolve(_:)();

      return (*(v50 + 8))(v43, v51);
    }
  }

  return result;
}

uint64_t sub_100122A94()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_100122B84(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void, void, void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v107 = a8;
  v93 = a7;
  v106 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v86 = a2;
  v92 = a1;
  v105 = a9;
  v110 = sub_10002849C(&qword_100975438, &unk_1007C7EB0);
  __chkstk_darwin(v110);
  v109 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v82 - v11;
  v12 = sub_10002849C(&qword_100975408, &qword_1007B7518);
  __chkstk_darwin(v12 - 8);
  v97 = &v82 - v13;
  v116 = type metadata accessor for ASKBagContract.AdPlacementBagValue();
  v114 = *(v116 - 1);
  __chkstk_darwin(v116);
  v113 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = &v82 - v16;
  v17 = type metadata accessor for AppStoreConfig();
  v98 = *(v17 - 8);
  __chkstk_darwin(v17);
  v115 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v108 = &v82 - v20;
  __chkstk_darwin(v21);
  v85 = &v82 - v22;
  __chkstk_darwin(v23);
  v101 = &v82 - v24;
  __chkstk_darwin(v25);
  v111 = &v82 - v26;
  __chkstk_darwin(v27);
  v112 = &v82 - v28;
  v104 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v104 - 1);
  __chkstk_darwin(v104);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v32);
  v33 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v33 - 8);
  v103 = sub_1000076C0();
  static DispatchQoS.unspecified.getter();
  v117 = _swiftEmptyArrayStorage;
  v102 = sub_100007754(&qword_100975440, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10002849C(&qword_100975448, &qword_1007B7550);
  sub_10000794C(&qword_100975450, &qword_100975448, &qword_1007B7550);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v104);
  v34 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v35 = v90;
  v90[2] = v34;
  v117 = sub_100398948(_swiftEmptyArrayStorage);
  sub_10002849C(&qword_100975458, &qword_1007B7558);
  swift_allocObject();
  v35[3] = Box.init(value:)();
  type metadata accessor for AppStoreModule();
  v36 = static AppStoreModule.shared.getter();
  v37 = v105;
  v38 = v106;
  v35[4] = v36;
  v35[5] = v38;
  v35[6] = v107;
  v35[7] = v37;
  v39 = objc_opt_self();

  swift_unknownObjectRetain();
  v40 = v111;
  [v39 setContextPrefetchLimit:v89];
  v117 = _swiftEmptyArrayStorage;
  v41 = sub_100007754(&qword_100975460, &type metadata accessor for AppStoreConfig, &protocol conformance descriptor for AppStoreConfig);
  sub_10002849C(&qword_100975468, qword_1007B7560);
  sub_10000794C(&qword_100975470, &qword_100975468, qword_1007B7560);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  if (ASKBagContract.isSearchLandingAdsEnabled.getter())
  {
    v42 = v101;
    static AppStoreConfig.thetis.getter();
    sub_10032B44C(v40, v42);
    v43 = *(v98 + 8);
    v43(v42, v17);
    v43(v40, v17);
  }

  v44 = ASKBagContract.enabledAdPlacements.getter();
  v45 = *(v44 + 16);
  v46 = v92;
  v107 = v41;
  if (v45)
  {
    v106 = *(v114 + 16);
    v47 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v82 = v44;
    v48 = v44 + v47;
    v105 = *(v114 + 72);
    v104 = (v114 + 88);
    LODWORD(v103) = enum case for ASKBagContract.AdPlacementBagValue.searchLanding(_:);
    v95 = enum case for ASKBagContract.AdPlacementBagValue.searchResults(_:);
    v94 = enum case for ASKBagContract.AdPlacementBagValue.today(_:);
    v91 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:);
    v84 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:);
    v114 += 16;
    v102 = (v114 - 8);
    v101 = (v98 + 56);
    v100 = (v98 + 48);
    v99 = (v98 + 32);
    v49 = _swiftEmptyArrayStorage;
    v50 = v97;
    v51 = v116;
    v52 = v96;
    v53 = v113;
    while (1)
    {
      v54 = v106;
      v106(v52, v48, v51);
      v54(v53, v52, v51);
      v55 = (*v104)(v53, v51);
      if (v55 == v103)
      {
        static AppStoreConfig.thetis.getter();
        (*v102)(v52, v51);
        (*v101)(v50, 0, 1, v17);
      }

      else if (v55 == v95)
      {
        v52 = v96;
        (*v102)(v96, v116);
        (*v101)(v50, 1, 1, v17);
      }

      else
      {
        v52 = v96;
        if (v55 == v94)
        {
          static AppStoreConfig.iris.getter();
        }

        else if (v55 == v91)
        {
          static AppStoreConfig.flora.getter();
        }

        else
        {
          if (v55 != v84)
          {
            v59 = *v102;
            v60 = v116;
            (*v102)(v96, v116);
            (*v101)(v97, 1, 1, v17);
            v59(v113, v60);
            v50 = v97;
            goto LABEL_18;
          }

          static AppStoreConfig.metis.getter();
        }

        (*v102)(v52, v116);
        (*v101)(v50, 0, 1, v17);
      }

LABEL_18:
      if ((*v100)(v50, 1, v17) == 1)
      {
        sub_10002B894(v50, &qword_100975408, &qword_1007B7518);
      }

      else
      {
        v56 = *v99;
        (*v99)(v108, v50, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1000348F4(0, *(v49 + 2) + 1, 1, v49);
        }

        v58 = *(v49 + 2);
        v57 = *(v49 + 3);
        if (v58 >= v57 >> 1)
        {
          v49 = sub_1000348F4((v57 > 1), v58 + 1, 1, v49);
        }

        *(v49 + 2) = v58 + 1;
        v56(&v49[((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v58], v108, v17);
        v50 = v97;
      }

      v48 += v105;
      --v45;
      v51 = v116;
      if (!v45)
      {

        v46 = v92;
        goto LABEL_27;
      }
    }
  }

  v49 = _swiftEmptyArrayStorage;
LABEL_27:
  v61 = *(v49 + 2);
  v62 = v85;
  if (v61)
  {
    v63 = *(v98 + 16);
    v64 = &v49[(*(v98 + 80) + 32) & ~*(v98 + 80)];
    v105 = *(v98 + 72);
    v116 = (v98 + 8);
    v103 = v49;
    v104 = (v98 + 32);
    v65 = v110;
    v66 = v111;
    v67 = v83;
    v108 = (v98 + 16);
    v106 = v63;
    do
    {
      v113 = v64;
      v114 = v61;
      v63(v62);
      (v63)(v66, v112, v17);
      dispatch thunk of SetAlgebra.intersection(_:)();
      sub_100007754(&qword_100975478, &type metadata accessor for AppStoreConfig, &protocol conformance descriptor for AppStoreConfig);
      v69 = dispatch thunk of static Equatable.== infix(_:_:)();
      v70 = *(v65 + 48);
      *v67 = (v69 & 1) == 0;
      v71 = v66;
      v72 = *v116;
      if (v69)
      {
        v72(v62, v17);
        (*v104)(&v67[v70], v115, v17);
      }

      else
      {
        v72(v115, v17);
        (v63)(&v67[v70], v62, v17);
        (v63)(v71, v62, v17);
        dispatch thunk of SetAlgebra.formUnion(_:)();
        v72(v62, v17);
      }

      v68 = v109;
      sub_1001243DC(v67, v109);
      v65 = v110;
      v72((v68 + *(v110 + 48)), v17);
      v63 = v106;
      v64 = &v113[v105];
      v61 = v114 - 1;
      v66 = v111;
    }

    while (v114 != 1);

    v46 = v92;
  }

  else
  {
  }

  v73 = sub_1001962CC(_swiftEmptyArrayStorage);
  v120 = v73;
  v74 = ASKBagContract.adsOverrideLanguage.getter();
  v76 = v90;
  v77 = v86;
  if (v75)
  {
    v78 = v74;
    v79 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v73;
    sub_10005192C(0xD000000000000011, 0x80000001008027B0, 1752459639, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v120 = v117;
    sub_10004ABA4(v78, v79, 108, 0xE100000000000000);
  }

  ASKBagContract.amsBag.getter();
  AppStoreModule.initialize(storeFront:storeFrontLocale:config:bag:defaultAppRequestMetaFields:)();

  swift_unknownObjectRelease();

  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v116 = type metadata accessor for OSLogger();
  v115 = sub_1000056A8(v116, qword_1009CE248);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5370;

  static LogMessage.identity(_:)();

  LogMessage.init(stringLiteral:)();
  LogMessage.init(stringLiteral:)();
  v119 = &type metadata for String;
  v117 = v46;
  v118 = v77;
  static LogMessage.safe(_:)();
  sub_10002B894(&v117, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v119 = &type metadata for String;
  v117 = v87;
  v118 = v88;
  static LogMessage.safe(_:)();
  sub_10002B894(&v117, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v119 = &type metadata for Int;
  v117 = v89;
  static LogMessage.safe(_:)();
  sub_10002B894(&v117, &unk_1009711D0, &unk_1007B1A10);
  Logger.info(_:)();

  (*(v98 + 8))(v112, v17);
  return v76;
}

uint64_t sub_100123CB4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AdPlacementType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdType();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == enum case for AdPlacementType.searchLanding(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchLanding(_:);
  }

  else if (v15 == enum case for AdPlacementType.searchResults(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchResults(_:);
  }

  else if (v15 == enum case for AdPlacementType.today(_:))
  {
    v16 = &enum case for AppPlacementLocation.todayPage(_:);
  }

  else if (v15 == enum case for AdPlacementType.productPageYMAL(_:))
  {
    v16 = &enum case for AppPlacementLocation.productPage(_:);
  }

  else
  {
    if (v15 != enum case for AdPlacementType.productPageYMALDuringDownload(_:))
    {
      UUID.init()();
      v19 = UUID.uuidString.getter();
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
      return v19;
    }

    v16 = &enum case for AppPlacementLocation.downloadPage(_:);
  }

  v17 = *v16;
  v18 = type metadata accessor for AppPlacementLocation();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  (*(v11 + 104))(v14, enum case for AdType.app(_:), v10);
  type metadata accessor for PromotedContentMetricCollector();
  static PromotedContentMetricCollector.shared.getter();
  v19 = dispatch thunk of PromotedContentMetricCollector.getIdentifierForMissedOpportunity(for:)();

  (*(v11 + 8))(v14, v10);
  return v19;
}

double sub_10012403C(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

double sub_100124080(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AdPlacementType() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10012039C(a1, a2, v6, v7, v8);
}

uint64_t sub_100124104()
{
  v1 = type metadata accessor for AdPlacementType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1001241F4()
{
  v1 = *(type metadata accessor for AdPlacementType() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_10012230C(v6, v7, v0 + v2, v4, v5);
}

void sub_100124290()
{
  v1 = *(type metadata accessor for AdPlacementType() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10012078C(v3, v4, v0 + v2, v5);
}

double sub_100124320(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;

  return result;
}

uint64_t sub_10012436C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975428, &qword_1007B7538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001243DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975438, &unk_1007C7EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100124464(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0)) init];
    SearchAd.adTransparencyAction.getter();
    Action.title.getter();
    v8 = v7;

    if (v8)
    {
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_1009750A8];
    v15 = *&v6[qword_1009750A8];
    v16 = *&v6[qword_1009750A8 + 8];
    *v14 = sub_1001249BC;
    v14[1] = v13;

    sub_10001F63C(v15, v16);
    v17 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel(0));
    v18 = v6;
    v19 = sub_1002FDC78(v18);
    if (v3[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v20 = [*&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] text];
      if (v20)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }
    }

    else
    {
      v22 = SearchAd.advertisingText.getter();
      v24 = v25;
    }

    v27 = &v19[qword_10097FBE0];
    *v27 = v22;
    v27[1] = v24;

    sub_1002FE304();
    v28 = OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel;
    v29 = *&v3[OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel];
    v30 = v19;
    if (v29)
    {
      [v29 removeFromSuperview];
      v29 = *&v3[v28];
    }

    *&v3[v28] = v19;
    v31 = v19;

    sub_10070AB34();
    [v3 addSubview:v31];

    v32 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
    v33 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
    if (v33 && ([v33 isHidden] & 1) == 0 && (v34 = *&v3[v32]) != 0)
    {
      v35 = [v34 hasContent];
    }

    else
    {
      v35 = 0;
    }

    v36 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter;
    swift_beginAccess();
    sub_10006C234(&v3[v36], v38);
    v37 = v39;
    sub_10002B894(v38, &unk_1009711D0, &unk_1007B1A10);
    if (v37 || v35)
    {
      [*&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
    }

    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC8AppStore15SmallLockupView_isDisplayingSearchAd] = 0;
    [v2 setNeedsLayout];
    v10 = OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel;
    v11 = *&v3[OBJC_IVAR____TtC8AppStore15SmallLockupView_searchAdTertiaryLabel];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v3[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v3[v10] = 0;

    v26 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    if (v26)
    {

      [v26 setHidden:0];
    }
  }
}

uint64_t sub_100124844(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10002B894(v4, &unk_100972A00, &unk_1007B3130);
  }

  v8 = SearchAd.adTransparencyAction.getter();
  sub_1005F9AF4(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

void sub_1001249EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v83 = a3;
  v10 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v10 - 8);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v72 - v13;
  v14 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v14 - 8);
  v80 = &v72 - v15;
  v16 = type metadata accessor for VideoControls();
  __chkstk_darwin(v16 - 8);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v72 - v20;
  v22 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v22 - 8);
  v24 = &v72 - v23;
  v25 = type metadata accessor for VideoFillMode();
  v79 = *(v25 - 8);
  __chkstk_darwin(v25);
  v89 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for VideoConfiguration();
  v84 = *(v27 - 8);
  v85 = v27;
  __chkstk_darwin(v27);
  v90 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AspectRatio();
  v30 = *(v29 - 8);
  v87 = v29;
  v88 = v30;
  __chkstk_darwin(v29);
  v78 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = FramedMedia.caption.getter();
  v33 = [v32 length];

  v86 = a6;
  if (v33 < 1)
  {
    [*&v7[qword_100989278] setText:0];
    v7[qword_1009D23C8] = 0;
    [*&v7[qword_100989268] setHidden:1];
  }

  else
  {
    v73 = v25;
    v74 = v24;
    v75 = v21;
    v76 = v18;
    v77 = a1;
    v34 = FramedMedia.caption.getter();
    v35 = [a6 traitCollection];
    v36 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v34];
    v37 = [v34 length];
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = v35;
    *(v38 + 32) = v36;
    *(v38 + 40) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_10010279C;
    *(v39 + 24) = v38;
    aBlock[4] = sub_1001027AC;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    aBlock[3] = &unk_1008B51C0;
    v40 = _Block_copy(aBlock);
    v41 = v35;
    v42 = v36;

    [v34 enumerateAttributesInRange:0 options:v37 usingBlock:{0x100000, v40}];

    _Block_release(v40);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
      return;
    }

    [*&v7[qword_100989278] setAttributedText:v42];
    v7[qword_1009D23C8] = 1;
    [*&v7[qword_100989268] setHidden:0];

    v24 = v74;
    v25 = v73;
  }

  v43 = *&v7[qword_100989270];
  FramedMedia.ordinal.getter();
  if (v44)
  {
    v45 = String._bridgeToObjectiveC()();
  }

  else
  {
    v45 = 0;
  }

  v46 = v86;
  [v43 setText:v45];

  bottom = UIEdgeInsetsZero.bottom;
  if (FramedMedia.isFullWidth.getter())
  {
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    [v46 pageMarginInsets];
    left = v50;
    right = v51;
  }

  v52 = v87;
  v53 = [v7 contentView];
  [v53 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (FramedVideo.artwork.getter())
  {
    v54 = [v7 contentView];
    sub_100028004();
    LayoutMarginsAware<>.layoutFrame.getter();

    Artwork.size.getter();
    v55 = v78;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(filling:)();
    v57 = v56;
    v59 = v58;

    (*(v88 + 8))(v55, v52);
    v60 = &v7[qword_1009D1FC0];
    *v60 = v57;
    v60[1] = v59;
  }

  if (FramedVideo.video.getter())
  {
    (*(v79 + 104))(v89, enum case for VideoFillMode.scaleAspectFill(_:), v25);
    if (FramedVideo.artwork.getter())
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    (*(v88 + 56))(v24, v61, 1, v52);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v62 = v80;
    Video.videoUrl.getter();
    v63 = type metadata accessor for URL();
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    v64 = v81;
    Video.templateMediaEvent.getter();
    v65 = v82;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_100126588(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v66 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v65, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v64, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v62, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(aBlock, &qword_10096FB90, &qword_1007B2A50);
    sub_1004C1750();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v68 = Strong;
      v69 = *&v7[qword_100988130];
      if (v69)
      {
        v70 = *&v7[qword_100988130];
      }

      else
      {
        v70 = [v7 contentView];
        v69 = 0;
      }

      v71 = v69;
      [v70 addSubview:v68];
      [v7 setNeedsLayout];
    }

    else
    {
    }

    (*(v84 + 8))(v90, v85);
  }

  v7[qword_1009D23C0] = FramedMedia.hasRoundedCorners.getter() & 1;
  sub_100125674();
}

double sub_1001254EC(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

void sub_100125514(uint64_t a1, uint64_t a2, char a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for VideoView(0);
    sub_100126588(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

id sub_100125674()
{
  v1 = type metadata accessor for CornerStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_1009D23C0] == 1)
  {
    type metadata accessor for ArtworkView();
    static ArtworkView.iconBorderWidth.getter();
    dispatch thunk of RoundedCornerView.borderWidth.setter();
    static ArtworkView.iconBorderColor.getter();
    dispatch thunk of RoundedCornerView.borderColor.setter();
  }

  (*(v2 + 104))(v4, enum case for CornerStyle.continuous(_:), v1);
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  (*(v2 + 8))(v4, v1);
  return [v0 setNeedsLayout];
}

uint64_t sub_1001257EC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = type metadata accessor for AspectRatio();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((FramedMedia.isFullWidth.getter() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (FramedVideo.artwork.getter())
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    (*(v11 + 8))(v13, v10);
    FramedMedia.isFullWidth.getter();
  }

  v14 = FramedMedia.caption.getter();
  v15 = [v14 length];

  if (v15 >= 1)
  {
    FramedMedia.ordinal.getter();
    if (v16)
    {
      if (qword_10096E228 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for FontUseCase();
      sub_1000056A8(v17, qword_1009D15F8);
      v18 = type metadata accessor for Feature();
      v39 = v18;
      v40 = sub_100126588(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v19 = sub_1000056E0(aBlock);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
      isFeatureEnabled(_:)();
      sub_100007000(aBlock);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    }

    v20 = FramedMedia.caption.getter();
    v37[1] = a6;
    v21 = [a6 traitCollection];
    v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
    v23 = [v20 length];
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = v21;
    *(v24 + 32) = v22;
    *(v24 + 40) = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100126854;
    *(v25 + 24) = v24;
    v40 = sub_100126848;
    v41 = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v39 = &unk_1008B5238;
    v26 = _Block_copy(aBlock);
    v27 = v21;
    v28 = v22;

    [v20 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

    _Block_release(v26);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      __break(1u);
    }

    else
    {
      v29 = qword_10096E220;
      v20 = v28;
      if (v29 == -1)
      {
LABEL_12:
        v30 = type metadata accessor for FontUseCase();
        v31 = sub_1000056A8(v30, qword_1009D15E0);
        v32 = *(v30 - 8);
        (*(v32 + 16))(v9, v31, v30);
        (*(v32 + 56))(v9, 0, 1, v30);
        v33 = type metadata accessor for Feature();
        v39 = v33;
        v40 = sub_100126588(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v34 = sub_1000056E0(aBlock);
        (*(*(v33 - 8) + 104))(v34, enum case for Feature.measurement_with_labelplaceholder(_:), v33);
        isFeatureEnabled(_:)();
        sub_100007000(aBlock);
        static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

        sub_10002B894(v9, &qword_100972ED0, &unk_1007B17B0);
        if (qword_10096E690 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for StaticDimension();
        sub_1000056A8(v35, qword_1009D2368);
        AnyDimension.topMargin(from:in:)();
        if (qword_10096E698 != -1)
        {
          swift_once();
        }

        sub_1000056A8(v35, qword_1009D2380);
        AnyDimension.bottomMargin(from:in:)();

        return CGSize.integral.getter();
      }
    }

    swift_once();
    goto LABEL_12;
  }

  return CGSize.integral.getter();
}

void sub_100125FAC(double a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v20 = a5;
  v17 = a4;
  v19 = type metadata accessor for AspectRatio();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Shelf.items.getter();
  v9 = *(v8 + 16);
  v21 = v8 + 32;
  v18 = (v5 + 8);
  v22 = v8;

  v10 = 0;
  v11 = &qword_100973D50;
  v12 = v19;
  while (1)
  {
    if (v10 == v9)
    {
      v30 = 0;
      v10 = v9;
      v28 = 0u;
      v29 = 0u;
      goto LABEL_8;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v22 + 16))
    {
      goto LABEL_18;
    }

    sub_10002C0AC(v21 + 40 * v10++, &v28);
LABEL_8:
    v26[0] = v28;
    v26[1] = v29;
    v27 = v30;
    if (!*(&v29 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_100005A38(v26, v25);
    sub_10002C0AC(v25, v23);
    sub_10002849C(v11, &unk_1007B3840);
    type metadata accessor for FramedVideo();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
    }

    sub_100007000(v25);
    if (v24)
    {
      if (FramedVideo.video.getter())
      {
        v14 = v11;
        Video.preview.getter();

        v15 = FramedMedia.isFullWidth.getter();

        if ((v15 & 1) == 0)
        {
          [v17 pageMarginInsets];
        }

        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(fitting:)();
        v13 = *v18;
        (*v18)(v7, v12);
        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(filling:)();
        v13(v7, v12);
        Artwork.config(_:mode:prefersLayeredImage:)();
        ArtworkLoader.prefetchArtwork(using:)();

        v11 = v14;
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_100126324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for AspectRatio();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ASKDeviceTypeGetCurrent();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      if (qword_10096D0D0 != -1)
      {
        swift_once();
      }

      v14 = qword_1009CE0C8;
      goto LABEL_13;
    }
  }

  if (qword_10096D0D8 != -1)
  {
    swift_once();
  }

  v14 = qword_1009CE0E0;
LABEL_13:
  v15 = sub_1000056A8(v3, v14);
  (*(v4 + 16))(v6, v15, v3);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v17 = v16;
  AspectRatio.height(fromWidth:)();
  v18 = [objc_opt_self() absoluteDimension:v17];
  v19 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  (*(v4 + 8))(v6, v3);
  return v19;
}

uint64_t sub_100126588(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001265D0(uint64_t a1)
{
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10002C0AC(a1, v10);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for FramedVideo();
  if (swift_dynamicCast())
  {
    if (FramedVideo.video.getter())
    {
      Video.preview.getter();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(fitting:)();
        v8 = *(v3 + 8);
        v8(v5, v2);
        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.maxSize(filling:)();
        v8(v5, v2);
        Artwork.config(_:mode:prefersLayeredImage:)();
        type metadata accessor for VideoView(0);
        sub_100126588(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      }
    }
  }
}

uint64_t type metadata accessor for SearchButton(uint64_t a1)
{
  result = qword_1009754D0;
  if (!qword_1009754D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001268F4()
{
  sub_100028BB8();
  result = static UIColor.defaultButtonBackgroundColor.getter();
  qword_1009CE0F8 = result;
  return result;
}

uint64_t sub_100126928()
{
  sub_100028BB8();
  result = static UIColor.appTint.getter();
  qword_1009CE100 = result;
  return result;
}

id sub_10012695C(uint64_t a1)
{
  v3 = type metadata accessor for SystemImage();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[qword_1009754C8] = a1;
  v7 = type metadata accessor for SearchButton(0);
  v15.receiver = v1;
  v15.super_class = v7;

  v8 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();
  v9 = qword_10096D0E0;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:qword_1009CE0F8];
  if (qword_10096D0E8 != -1)
  {
    swift_once();
  }

  [v10 setTintColor:qword_1009CE100];

  v11 = [v10 layer];
  [v11 setCornerRadius:22.0];

  [v10 setClipsToBounds:1];
  (*(v4 + 104))(v6, enum case for SystemImage.magnifyingglass(_:), v3);
  v12 = static SystemImage.load(_:with:)();
  (*(v4 + 8))(v6, v3);
  v13 = [v12 imageWithRenderingMode:2];

  [v10 setImage:v13 forState:0];
  [v10 addTarget:v10 action:"goToSearch" forControlEvents:64];

  return v10;
}

double sub_100126C18(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  if (qword_10096DC58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for FontUseCase();
  v4 = sub_1000056A8(v3, qword_1009D04A0);
  sub_1002CE220(v4, v2, 44.0);
  v6 = v5;

  return v6;
}

uint64_t sub_100126D00()
{
  v0 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v0 - 8);
  v33 = &v29 - v1;
  v32 = type metadata accessor for FlowOrigin();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for FlowAnimationBehavior();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowPresentationContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for FlowPage();
  __chkstk_darwin(v18);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  (*(v20 + 104))(&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.search(_:));
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = type metadata accessor for ReferrerData();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v35 = 0u;
  v36 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.push(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.never(_:), v30);
  (*(v2 + 104))(v31, enum case for FlowOrigin.inapp(_:), v32);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v23 = v33;
  v24 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v25 = *(v34 + qword_1009754C8);
  v26 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v23, 1, v26) == 1)
  {

    return sub_1000F40E0(v23);
  }

  else
  {
    sub_1005F9C8C(v24, 1, v25, v23);

    return (*(v27 + 8))(v23, v26);
  }
}

void sub_1001272CC(void *a1)
{
  v1 = a1;
  sub_100126D00();
}

void sub_100127314(void *a1, uint64_t a2, void *a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SearchButton(0);
  v4 = a3;
  v5 = v8.receiver;
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", v4);
  [v5 invalidateIntrinsicContentSize];
  v6 = [v5 layer];
  [v5 intrinsicContentSize];
  [v6 setCornerRadius:v7 * 0.5];
}

id sub_10012741C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10012746C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1001274B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_10012754C(uint64_t a1)
{
  v59 = a1;
  v1 = type metadata accessor for ActionOutcome();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NavigationTab();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10002849C(&qword_10098DC00, &qword_1007B76A0);
  __chkstk_darwin(v58);
  v8 = &v41 - v7;
  v9 = sub_10002849C(&qword_100975528, &unk_1007BECC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v41 - v13;
  __chkstk_darwin(v14);
  v54 = &v41 - v15;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v17 = [Strong tabBar];

  v18 = [v17 items];
  if (!v18)
  {
    goto LABEL_32;
  }

  sub_100127D28();
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = v19;
  if (v19 >> 62)
  {
LABEL_28:
    v34 = v20;
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      v20 = v34;
      v57 = v35;
      if (!v35)
      {

        v29 = v44;
        goto LABEL_25;
      }

      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v57 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v57)
  {
LABEL_31:

LABEL_32:
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    v36 = v48;
    TabBadgeAction.navigationTab.getter();
    v37 = NavigationTab.rawValue.getter();
    v39 = v38;
    (*(v5 + 8))(v36, v4);
    sub_100127CD4();
    swift_allocError();
    *v40 = v37;
    v40[1] = v39;
    return Promise.__allocating_init(error:)();
  }

LABEL_4:
  v42 = v2;
  v43 = v1;
  v1 = 0;
  v55 = (v5 + 56);
  v56 = v20 & 0xC000000000000001;
  v21 = (v5 + 48);
  v46 = (v5 + 32);
  v47 = v20 & 0xFFFFFFFFFFFFFF8;
  v51 = (v5 + 8);
  v52 = v20;
  v53 = v11;
  v11 = v4;
  v4 = v54;
  v2 = v20;
  v45 = (v5 + 48);
  v50 = v11;
  while (1)
  {
    if (v56)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v1 >= *(v47 + 16))
      {
        goto LABEL_27;
      }

      v20 = *(v2 + 8 * v1 + 32);
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    v60 = v20;
    [v20 tag];
    NavigationTab.init(intValue:)();
    v22 = v61;
    TabBadgeAction.navigationTab.getter();
    (*v55)(v22, 0, 1, v11);
    v23 = *(v58 + 48);
    sub_100127D74(v4, v8);
    sub_100127D74(v22, &v8[v23]);
    v24 = *v21;
    if ((*v21)(v8, 1, v11) == 1)
    {
      break;
    }

    v25 = v61;
    v26 = v53;
    sub_100127D74(v8, v53);
    if (v24(&v8[v23], 1, v11) == 1)
    {
      sub_10002B894(v25, &qword_100975528, &unk_1007BECC0);
      v4 = v54;
      sub_10002B894(v54, &qword_100975528, &unk_1007BECC0);
      (*v51)(v26, v11);
      v2 = v52;
      goto LABEL_6;
    }

    v27 = v48;
    (*v46)(v48, &v8[v23], v11);
    sub_100127DE4(&unk_10098DC10, &type metadata accessor for NavigationTab, &protocol conformance descriptor for NavigationTab);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28 = *v51;
    (*v51)(v27, v11);
    sub_10002B894(v25, &qword_100975528, &unk_1007BECC0);
    v4 = v54;
    sub_10002B894(v54, &qword_100975528, &unk_1007BECC0);
    v28(v26, v11);
    v21 = v45;
    sub_10002B894(v8, &qword_100975528, &unk_1007BECC0);
    v2 = v52;
    if (v49)
    {
      goto LABEL_21;
    }

LABEL_7:

    ++v1;
    if (v5 == v57)
    {

      v2 = v42;
      v1 = v43;
      v29 = v44;
      goto LABEL_25;
    }
  }

  sub_10002B894(v61, &qword_100975528, &unk_1007BECC0);
  v11 = v50;
  sub_10002B894(v4, &qword_100975528, &unk_1007BECC0);
  if (v24(&v8[v23], 1, v11) != 1)
  {
LABEL_6:
    sub_10002B894(v8, &qword_10098DC00, &qword_1007B76A0);
    goto LABEL_7;
  }

  sub_10002B894(v8, &qword_100975528, &unk_1007BECC0);
LABEL_21:

  TabBadgeAction.text.getter();
  if (v30)
  {
    v31 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = 0;
  }

  v2 = v42;
  v1 = v43;
  v29 = v44;
  v32 = v60;
  [v60 setBadgeValue:v31];

LABEL_25:
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  (*(v2 + 104))(v29, enum case for ActionOutcome.performed(_:), v1);
  return Promise.__allocating_init(value:)();
}

unint64_t sub_100127CD4()
{
  result = qword_100975530;
  if (!qword_100975530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975530);
  }

  return result;
}

unint64_t sub_100127D28()
{
  result = qword_100982AC0;
  if (!qword_100982AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100982AC0);
  }

  return result;
}

uint64_t sub_100127D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975528, &unk_1007BECC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100127DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100127E2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100127E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100127ED4()
{
  result = qword_100975538;
  if (!qword_100975538)
  {
    type metadata accessor for UnhideAppAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975538);
  }

  return result;
}

double sub_100127F2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10002A400(a2, a2[3]);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  swift_unknownObjectRetain();

  dispatch thunk of PurchaseHistoryProtocol.update(in:_:)();

  return result;
}

uint64_t sub_100127FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AdamId();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = dispatch thunk of AppStateMachine.appStateController.getter();
  if (result)
  {
    v16[1] = v14;
    v16[0] = swift_getObjectType();
    UnhideAppAction.appAdamId.getter();
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;
    swift_unknownObjectRetain();

    dispatch thunk of AppStateController.refreshDataSources(for:completion:)();
    swift_unknownObjectRelease();

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_100128184(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ActionOutcome();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AdamId();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (dispatch thunk of AppStateMachine.appStateController.getter())
  {
    v12 = v2;
    swift_getObjectType();
    UnhideAppAction.appAdamId.getter();
    dispatch thunk of AppStateController.clearWaiting(for:refreshState:)();
    v2 = v12;
    swift_unknownObjectRelease();
    (*(v7 + 8))(v9, v6);
  }

  (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
  Promise.resolve(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100128394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallationType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AdamId();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  if (UnhideAppAction.isHidden.getter())
  {
    v31 = v4;
    v32 = v11;
    v30 = v5;
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    v34 = Promise.__allocating_init()();
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    swift_getObjectType();
    v37 = v8;
    UnhideAppAction.appAdamId.getter();
    v15 = v37;
    v16 = dispatch thunk of AppStateController.stateMachine(forApp:)();
    v18 = v17;
    swift_unknownObjectRelease();
    v35 = *(v9 + 8);
    v36 = v9 + 8;
    v35(v14, v15);
    sub_10002849C(&unk_100975540, &qword_1007B77A0);
    inject<A, B>(_:from:)();
    UnhideAppAction.isHidden.setter();
    swift_getObjectType();
    v33 = v18;
    if (dispatch thunk of AppStateMachine.appStateController.getter())
    {
      swift_getObjectType();
      UnhideAppAction.appAdamId.getter();
      v29 = v16;
      v19 = v30;
      v20 = v31;
      (*(v30 + 104))(v7, enum case for InstallationType.unknown(_:), v31);
      dispatch thunk of AppStateController.setWaiting(for:installationType:)();
      v15 = v37;
      swift_unknownObjectRelease();
      (*(v19 + 8))(v7, v20);
      v16 = v29;
      v35(v14, v15);
    }

    sub_10002A400(v39, v39[3]);
    v21 = v32;
    UnhideAppAction.appAdamId.getter();
    v22 = AdamId.numberValue.getter();
    v35(v21, v15);
    if (v22)
    {
      [v22 longLongValue];
    }

    sub_10002C0AC(v39, v38);
    v26 = swift_allocObject();
    sub_100005A38(v38, (v26 + 2));
    v27 = v33;
    v28 = v34;
    v26[7] = v16;
    v26[8] = v27;
    v26[9] = a1;
    v26[10] = v28;
    swift_unknownObjectRetain();

    dispatch thunk of PurchaseHistoryProtocol.setHidden(_:forStoreItemID:completion:)();

    swift_unknownObjectRelease();
    sub_100007000(v39);
    return v28;
  }

  else
  {
    v23 = UnhideAppAction.offerAction.getter();
    v24 = sub_1005D0214(v23, 1, a2);

    return v24;
  }
}

uint64_t sub_100128810()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100128864@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  v5 = type metadata accessor for BreakoutDetailsLayout.DetailDimension();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallBreakoutCollectionViewCell(0);
  swift_getObjectType();
  v13 = sub_100129BEC(a1);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v14 = [a1 traitCollection];
  v15 = UITraitCollection.isSizeClassCompact.getter();

  if (v15)
  {
    [a1 pageMarginInsets];
    if (JUScreenClassGetMain() == 1)
    {
      v16 = 160.0;
    }

    else
    {
      NSDirectionalEdgeInsets.edgeInsets.getter();
      CGSize.subtracting(insets:)();
      v21 = v20 + -10.0;
      v34[0] = 156.0;
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v23 = v22;
      (*(v10 + 8))(v12, v9);
      v16 = v21 - v23;
    }

    v35 = &type metadata for CGFloat;
    v36 = &protocol witness table for CGFloat;
    v34[0] = v16;
    sub_10002B894(&v31, &qword_1009799E0, qword_1007B5950);
    *&v31 = 0x4014000000000000;
    *(&v32 + 1) = &type metadata for CGFloat;
    v33 = &protocol witness table for CGFloat;
  }

  else
  {
    [a1 pageContainerSize];
    v18 = v17;
    [a1 pageContainerSize];
    if (v19 >= v18)
    {
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    else
    {
      [a1 pageMarginInsets];
      [a1 pageMarginInsets];
    }

    static SmallBreakoutLayout.rotatedIconFrameOffsets(rotation:iconSize:)();
    v25 = v13 + v24 + v24;
    NSDirectionalEdgeInsets.edgeInsets.getter();
    CGSize.subtracting(insets:)();
    v35 = &type metadata for CGFloat;
    v36 = &protocol witness table for CGFloat;
    v34[0] = v26 + -10.0 - v25;
    sub_10002B894(&v31, &qword_1009799E0, qword_1007B5950);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
  }

  sub_100129CF0(&v31, v30);
  v29[12] = &protocol witness table for CGFloat;
  v29[11] = &type metadata for CGFloat;
  v29[8] = 0x4024000000000000;
  sub_10002C0AC(v34, v8);
  (*(v6 + 104))(v8, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v5);
  if (qword_10096D0F8 != -1)
  {
    swift_once();
  }

  v27 = sub_10002849C(&qword_1009755B0, &unk_1007B7850);
  sub_1000056A8(v27, qword_1009CE118);
  v29[2] = a1;
  swift_unknownObjectRetain();
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  SmallBreakoutLayout.Metrics.init(iconSize:iconRotation:iconBottomOffset:detailsTrailingMargin:detailsWidth:layoutMargins:height:)();
  sub_10002B894(&v31, &qword_1009799E0, qword_1007B5950);
  return sub_100007000(v34);
}

uint64_t sub_100128D54()
{
  v0 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  sub_100005644(v0, qword_100975550);
  sub_1000056A8(v0, qword_100975550);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for CGSize(0);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_100128E04()
{
  v0 = sub_10002849C(&qword_1009755B0, &unk_1007B7850);
  sub_100005644(v0, qword_1009CE118);
  sub_1000056A8(v0, qword_1009CE118);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  sub_10002849C(&qword_1009755B8, qword_1007C8E60);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_100128ED4(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v13 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  __chkstk_darwin(v19 - 8);
  v21 = &v41 - v20;
  v22 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v23 = type metadata accessor for ItemLayoutContext();
  (*(*(v23 - 8) + 56))(&v7[v22], 1, 1, v23);
  *&v7[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v24 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_10096D008 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v16, qword_1009CDEA0);
  sub_1000C2608(v25, v18);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional<>.init(value:)();
  v26 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v7[v24] = sub_100147904(v21, v27);
  *&v7[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits] = 0;
  type metadata accessor for ArtworkView();
  *&v7[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView] = static ArtworkView.iconArtworkView.getter();
  v42.receiver = v7;
  v42.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v29 = [v28 contentView];
  [v29 setClipsToBounds:1];

  v30 = [v28 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView;
  v32 = qword_10096DA48;
  v33 = *&v28[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Shadow();
  v35 = sub_1000056A8(v34, qword_1009CFD38);
  v36 = *(v34 - 8);
  (*(v36 + 16))(v15, v35, v34);
  (*(v36 + 56))(v15, 0, 1, v34);
  ArtworkView.shadow.setter();

  v37 = *&v28[v31];
  CGAffineTransformMakeRotation(&v41, -0.523598776);
  [v37 setTransform:&v41];
  v38 = [v28 contentView];
  [v38 addSubview:*&v28[v31]];

  v39 = [v28 contentView];
  [v39 addSubview:*&v28[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_detailsView]];

  return v28;
}

id sub_100129494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for LayoutRect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallBreakoutLayout.Metrics();
  __chkstk_darwin(v9 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SmallBreakoutLayout();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v3;
  v23.super_class = ObjectType;
  result = objc_msgSendSuper2(&v23, "layoutSubviews", v14);
  v18 = *&v3[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits];
  if (v18)
  {
    swift_unknownObjectRetain();
    LayoutMarginsAware<>.layoutFrame.getter();
    sub_100128864(v18, v11);
    v19 = *&v3[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView];
    UIView.withUntransformedFrame.getter();

    v20 = *&v3[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_detailsView];
    v22[3] = type metadata accessor for BreakoutDetailsView(0);
    v22[4] = &protocol witness table for UIView;
    v22[0] = v20;
    v21 = v20;
    SmallBreakoutLayout.init(metrics:iconView:detailsView:)();
    [v3 bounds];
    SmallBreakoutLayout.placeChildren(relativeTo:in:)();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v8, v5);
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t sub_100129764(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "prepareForReuse");
  v4 = *&v2[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_detailsView];
  sub_100146AB4();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "setBackgroundColor:", 0);
  v5 = *&v2[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView];
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v6 = v5;
  v7 = objc_msgSendSuper2(&v12, "backgroundColor");
  ArtworkView.backgroundColor.setter();

  v8 = (v4 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  v9 = *(v4 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  v10 = *(v4 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler + 8);
  *v8 = 0;
  v8[1] = 0;
  return sub_10001F63C(v9, v10);
}

uint64_t type metadata accessor for SmallBreakoutCollectionViewCell(uint64_t a1)
{
  result = qword_100975590;
  if (!qword_100975590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100129970(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100129A2C(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits))
  {
    return 0.0;
  }

  swift_getObjectType();
  swift_getObjectType();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100129BEC(v3);
  swift_unknownObjectRelease();
  return v4;
}

void sub_100129ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView);
  ArtworkView.isImageHidden.setter();

  v6 = *(v3 + v4);
  type metadata accessor for ArtworkView();
  sub_100129CA8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100129B94(uint64_t a1)
{
  result = sub_100129CA8(&qword_1009755A8, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_1007B7800);
  *(a1 + 8) = result;
  return result;
}

double sub_100129BEC(uint64_t a1)
{
  if (JUScreenClassGetMain() == 1)
  {
    return 194.0;
  }

  if (qword_10096D0F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  sub_1000056A8(v2, qword_100975550);
  Conditional.evaluate(with:)();
  return v3;
}

uint64_t sub_100129CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100129CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009799E0, qword_1007B5950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100129D60()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v9 = type metadata accessor for ItemLayoutContext();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v10 = OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_10096D008 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v2, qword_1009CDEA0);
  sub_1000C2608(v11, v4);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional<>.init(value:)();
  v12 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v10) = sub_100147904(v7, v13);
  *(v1 + OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100129F58@<X0>(uint64_t a2@<X8>)
{
  v23 = a2;
  v2 = type metadata accessor for FontSource();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100979010, qword_1007BE140);
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for StaticDimension();
  sub_1000056A8(v11, qword_1009D2448);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v13 = v12;
  v14 = *(v6 + 8);
  v14(v8, v5);
  v27 = v13;
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v11, qword_1009D2430);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v16 = v15;
  v14(v8, v5);
  v24 = v16;
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional<>.init(regularValue:compactValue:)();
  if (qword_10096DF80 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  v18 = sub_1000056A8(v17, qword_1009D0E00);
  (*(*(v17 - 8) + 16))(v4, v18, v17);
  (*(v21 + 104))(v4, enum case for FontSource.useCase(_:), v22);
  Conditional<>.init(regularConstant:compactConstant:source:)();
  v28 = &type metadata for CGFloat;
  v29 = &protocol witness table for CGFloat;
  v26 = &protocol witness table for CGFloat;
  v27 = 0x403E000000000000;
  v25 = &type metadata for CGFloat;
  v24 = 0x4064000000000000;
  return ProductDescriptionLayout.Metrics.init(topPadding:developerTopPadding:horizontalTextPadding:horizontalDeveloperSpace:)();
}

char *sub_10012A338(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  *&v4[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsCalculator] = 0;
  v16 = &v4[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsUpdateBlock];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = static UIColor.defaultBackground.getter();
  v18 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView] = sub_10059F344(v17, 0.0, 0.0, 0.0, 0.0);
  *&v5[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_developerLinkView] = [objc_allocWithZone(type metadata accessor for DeveloperLinkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_tagRibbonView] = [objc_allocWithZone(type metadata accessor for TagFacetRibbonView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = type metadata accessor for ProductDescriptionCollectionViewCell(0);
  v43.receiver = v5;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v20 contentView];
  v22 = static UIColor.defaultBackground.getter();
  [v21 setBackgroundColor:v22];

  v23 = v20;
  v24 = [v23 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView;
  v29 = *&v23[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = v29;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v39, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v41, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v31 = *(v11 + 8);
  v31(v13, v10);
  v32 = OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_developerLinkView;
  v33 = *&v23[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_developerLinkView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v33;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v39, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v41, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v31(v13, v10);
  v35 = [v23 contentView];
  [v35 addSubview:*&v23[v28]];

  v36 = [v23 contentView];
  [v36 addSubview:*&v23[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_tagRibbonView]];

  v37 = [v23 contentView];
  [v37 addSubview:*&v23[v32]];

  return v23;
}

uint64_t sub_10012A8D4()
{
  v1 = v0;
  v26 = type metadata accessor for LayoutRect();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProductDescriptionLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ProductDescriptionLayout();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductDescriptionCollectionViewCell(0);
  v38.receiver = v0;
  v38.super_class = v11;
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v12 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();

  v13 = *&v1[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_tagRibbonView];
  type metadata accessor for RibbonBarItemCollectionViewCell(0);

  v14 = Array.isNotEmpty.getter();

  v15 = 0;
  if (v14)
  {
    v16 = v13;
    v15 = v13;
  }

  sub_100129F58(v7);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView];
  v36 = type metadata accessor for ExpandableTextView();
  v37 = &protocol witness table for UIView;
  v35 = v17;
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for TagFacetRibbonView(0);
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v31 = 0;
    v32 = 0;
  }

  v30 = v15;
  v33 = v18;
  v34 = v19;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_developerLinkView];
  v28 = type metadata accessor for DeveloperLinkView();
  v29 = &protocol witness table for UIView;
  v27 = v20;
  v21 = v17;
  v22 = v15;
  v23 = v20;
  ProductDescriptionLayout.init(metrics:bodyText:tagRibbon:developerLink:)();
  ProductDescriptionLayout.placeChildren(relativeTo:in:)();

  (*(v2 + 8))(v4, v26);
  return (*(v8 + 8))(v10, v25);
}

double sub_10012AC60(void *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  if (a2)
  {
    v13 = a5 >= a4 ? a4 : a5;
    if (v13 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v17 = a2;
      v18 = [a1 traitCollection];
      v19 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v20 = objc_allocWithZone(v19);
      v21 = &v20[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
      *v21 = UIEdgeInsetsZero.top;
      v21[1] = left;
      v21[2] = bottom;
      v21[3] = right;
      *&v20[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] = a3;
      v22 = &v20[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize];
      *v22 = a4;
      v22[1] = a5;
      *&v20[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection] = v18;
      *&v20[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText] = v17;
      v43.receiver = v20;
      v43.super_class = v19;
      v23 = objc_msgSendSuper2(&v43, "init");
      if (qword_10096E9D0 != -1)
      {
        swift_once();
      }

      v24 = qword_10098CEC8;
      v25 = [qword_10098CEC8 objectForKey:v23];
      if (v25)
      {
        v26 = v25;

        a4 = *&v26[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
      }

      else
      {
        v27 = qword_10096E9C8;
        v26 = v17;
        if (v27 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for FontUseCase();
        v29 = sub_1000056A8(v28, qword_10098CEB0);
        v30 = *(v28 - 8);
        (*(v30 + 16))(v12, v29, v28);
        (*(v30 + 56))(v12, 0, 1, v28);
        static TextMeasurable.defaultTextAlignment.getter();
        static TextMeasurable.defaultLineBreakMode.getter();
        static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)();
        v32 = v31;
        v34 = v33;
        v36 = v35;

        sub_10002B894(v12, &qword_100972ED0, &unk_1007B17B0);
        v37 = type metadata accessor for ExpandableTextView.CacheValue();
        v38 = objc_allocWithZone(v37);
        v39 = &v38[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
        *v39 = a4;
        v39[1] = UIEdgeInsetsZero.top + bottom + v32;
        *(v39 + 2) = v34;
        *(v39 + 3) = v36;
        v42.receiver = v38;
        v42.super_class = v37;
        v40 = objc_msgSendSuper2(&v42, "init");
        [v24 setObject:v40 forKey:v23];
      }
    }
  }

  return a4;
}

void sub_10012B008(double a1, double a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = type metadata accessor for TagFacetRibbonLayout.Metrics();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for TagFacetRibbonLayout();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a7 traitCollection];
  type metadata accessor for RibbonBarItem();
  if ((Array.isNotEmpty.getter() & 1) == 0)
  {

    return;
  }

  v32 = a5;
  v18 = UITraitCollection.modifyingTraits(_:)();
  v33 = _swiftEmptyArrayStorage;
  if (!(a4 >> 62))
  {
    v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v18;
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_18:
    v22 = _swiftEmptyArrayStorage;
LABEL_19:
    sub_1002A5678(v22);

    static TagFacetRibbonLayout.Metrics.standard.getter();
    TagFacetRibbonLayout.init(tagFacetViews:maxRowsStandard:maxRowsAX:metrics:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1007B0B70;
    v25 = v31;
    *(v24 + 32) = v31;
    v26 = v25;
    v27 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    TagFacetRibbonLayout.measurements(fitting:in:)();

    (*(v13 + 8))(v16, v12);
    return;
  }

  v23 = v18;
  v19 = _CocoaArrayWrapper.endIndex.getter();
  v31 = v23;
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (v19 >= 1)
  {
    v28 = a6;
    v29 = v13;
    v30 = v12;
    if ((a4 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        swift_unknownObjectRetain();
        LayoutViewPlaceholder.init(measureWith:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v20;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        swift_unknownObjectRelease();
      }

      while (v19 != v20);
    }

    else
    {
      v21 = a4 + 32;
      type metadata accessor for LayoutViewPlaceholder();
      do
      {
        swift_allocObject();
        swift_retain_n();
        LayoutViewPlaceholder.init(measureWith:)();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v21 += 8;
        --v19;
      }

      while (v19);
    }

    v22 = v33;
    v13 = v29;
    v12 = v30;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_10012B474(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  *(v1 + v2) = 0;

  v3 = (v1 + OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_10001F63C(v4, v5);
  type metadata accessor for TagFacetRibbonView(0);
  sub_10012C000(&unk_100975600, type metadata accessor for TagFacetRibbonView, &unk_1007D9108);
  return NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
}

id sub_10012B57C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductDescriptionCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductDescriptionCollectionViewCell(uint64_t a1)
{
  result = qword_1009755E8;
  if (!qword_1009755E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10012B6A8(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10012B76C()
{
  swift_beginAccess();

  return result;
}

double sub_10012B7B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_10012B86C()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_10012B8C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

uint64_t sub_10012B988(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagFacetRibbonView(0);
  sub_10012C000(&unk_100975600, type metadata accessor for TagFacetRibbonView, &unk_1007D9108);
  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

void sub_10012BA18(__n128 a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for ProductDescriptionLayout.Metrics();
  __chkstk_darwin(v4 - 8);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductDescriptionLayout();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProductDescription.paragraph.getter();
  v8 = Paragraph.text.getter();

  v39 = a3;
  v9 = [a3 traitCollection];
  v10 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v8];
  v40 = [v8 length];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = v9;
  *(v11 + 32) = v10;
  *(v11 + 40) = 1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10010279C;
  *(v12 + 24) = v11;
  v50 = sub_1001027AC;
  v51 = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v49 = &unk_1008B5490;
  v13 = _Block_copy(aBlock);
  v14 = v9;
  v15 = v10;

  [v8 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v13}];

  _Block_release(v13);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v16 = v15;
    v17 = ProductDescription.tags.getter();
    v18 = ProductDescription.numberOfTagRowsStandard.getter();
    v19 = ProductDescription.numberOfTagRowsAX.getter();
    if (ProductDescription.developerAction.getter())
    {
      v40 = Action.title.getter();
      v21 = v20;
    }

    else
    {
      v40 = 0;
      v21 = 0;
    }

    type metadata accessor for ProductDescriptionCollectionViewCell(0);
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    *(v22 + 24) = 4;
    v23 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v24 = v16;
    v25 = LayoutViewPlaceholder.init(measureWith:)();
    v49 = v23;
    v50 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v25;
    v26 = swift_allocObject();
    v26[2] = v17;
    v26[3] = v18;
    v26[4] = v19;
    v26[5] = v39;
    swift_allocObject();

    swift_unknownObjectRetain();
    v27 = LayoutViewPlaceholder.init(measureWith:)();
    v47[3] = v23;
    v47[4] = &protocol witness table for LayoutViewPlaceholder;
    v47[0] = v27;
    v28 = type metadata accessor for DeveloperLinkView();
    v29 = swift_allocObject();
    v30 = v40;
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = v21;
    swift_allocObject();
    v31 = LayoutViewPlaceholder.init(measureWith:)();
    v46[3] = v23;
    v46[4] = &protocol witness table for LayoutViewPlaceholder;
    v46[0] = v31;
    type metadata accessor for RibbonBarItem();
    LOBYTE(v28) = Array.isNotEmpty.getter();

    if (v28)
    {
      sub_10002C0AC(v47, v44);
    }

    else
    {
      v45 = 0;
      memset(v44, 0, sizeof(v44));
    }

    sub_100129F58(v35);
    sub_10002C0AC(aBlock, &v43);
    sub_10002C0AC(v47, &v42);
    sub_10002C0AC(v46, &v41);
    v32 = v36;
    ProductDescriptionLayout.init(metrics:bodyText:tagRibbon:developerLink:)();
    sub_10012C000(&qword_10097C400, &type metadata accessor for ProductDescriptionLayout, &protocol conformance descriptor for ProductDescriptionLayout);
    v33 = v38;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v37 + 8))(v32, v33);
    sub_10002B894(v44, &qword_100975610, &qword_1007B5690);
    sub_100007000(v46);
    sub_100007000(v47);
    sub_100007000(aBlock);
  }
}

uint64_t sub_10012C000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10012C054()
{
  v0 = type metadata accessor for MetadataRibbonTextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  sub_100005644(v7, qword_1009CE188);
  v8 = sub_1000056A8(v7, qword_1009CE188);
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v9 = sub_1000056A8(v0, qword_1009D36F8);
  v10 = *(v1 + 16);
  v10(v6, v9, v0);
  sub_100028BB8();
  v11 = static UIColor.secondaryText.getter();
  if (qword_10096EE70 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v0, qword_1009D3758);
  v10(v3, v12, v0);
  v13 = static UIColor.secondaryText.getter();
  v14 = *(v1 + 32);
  v14(v8, v6, v0);
  *(v8 + v7[5]) = v11;
  result = (v14)(v8 + v7[6], v3, v0);
  *(v8 + v7[7]) = v13;
  return result;
}

char *sub_10012C274(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  __chkstk_darwin(v12);
  v86 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MetadataRibbonItemType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v83 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100975710, qword_1007B7AD8);
  __chkstk_darwin(v17);
  v19 = &v83 - v18;
  v20 = sub_10002849C(&qword_10096FB98, &unk_1007B10B0);
  __chkstk_darwin(v20 - 8);
  v84 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v83 - v23;
  v25 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v89 = *(v25 - 8);
  v90 = v25;
  __chkstk_darwin(v25);
  v87 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v85 = &v83 - v28;
  static MetadataRibbonIconWithLabelViewLayout.Metrics.standard.getter();
  *&v6[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artwork] = 0;
  v29 = &v6[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_id];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 4) = 0;
  v30 = *(v15 + 56);
  v30(&v6[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_itemType], 1, 1, v14);
  v31 = &v6[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_labelMaxWidth];
  *v31 = 0;
  v31[8] = 1;
  v32 = &v6[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold];
  *v32 = 0;
  v32[8] = 1;
  v6[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_allowsTruncation] = 2;
  v33 = &v6[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkSize];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_configuration;
  if (qword_10096D100 != -1)
  {
    swift_once();
  }

  v88 = v12;
  v35 = sub_1000056A8(v12, qword_1009CE188);
  sub_10012EC7C(v35, &v7[v34]);
  type metadata accessor for DynamicTypeLabel();
  *&v7[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label] = DynamicTypeLabel.__allocating_init(frame:)();
  *&v7[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v93.receiver = v7;
  v93.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v93, "initWithFrame:", a1, a2, a3, a4);
  v37 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  (*(v15 + 104))(v24, enum case for MetadataRibbonItemType.developer(_:), v14);
  v30(v24, 0, 1, v14);
  v38 = *(v17 + 48);
  sub_100031660(&v36[v37], v19, &qword_10096FB98, &unk_1007B10B0);
  sub_100031660(v24, &v19[v38], &qword_10096FB98, &unk_1007B10B0);
  v39 = *(v15 + 48);
  if (v39(v19, 1, v14) != 1)
  {
    v43 = v84;
    sub_100031660(v19, v84, &qword_10096FB98, &unk_1007B10B0);
    if (v39(&v19[v38], 1, v14) != 1)
    {
      v46 = v83;
      (*(v15 + 32))(v83, &v19[v38], v14);
      sub_10012ED3C(&qword_100975718, &type metadata accessor for MetadataRibbonItemType, &protocol conformance descriptor for MetadataRibbonItemType);
      v47 = v36;
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v15 + 8);
      v49(v46, v14);
      sub_10002B894(v24, &qword_10096FB98, &unk_1007B10B0);
      v49(v43, v14);
      sub_10002B894(v19, &qword_10096FB98, &unk_1007B10B0);
      v42 = v88;
      if (v48)
      {
        goto LABEL_11;
      }

LABEL_9:
      v45 = v85;
      static MetadataRibbonIconWithLabelViewLayout.Metrics.standard.getter();
      goto LABEL_12;
    }

    v44 = v36;
    sub_10002B894(v24, &qword_10096FB98, &unk_1007B10B0);
    (*(v15 + 8))(v43, v14);
    v42 = v88;
LABEL_8:
    sub_10002B894(v19, &qword_100975710, qword_1007B7AD8);
    goto LABEL_9;
  }

  v40 = v36;
  sub_10002B894(v24, &qword_10096FB98, &unk_1007B10B0);
  v41 = v39(&v19[v38], 1, v14);
  v42 = v88;
  if (v41 != 1)
  {
    goto LABEL_8;
  }

  sub_10002B894(v19, &qword_10096FB98, &unk_1007B10B0);
LABEL_11:
  v45 = v85;
  static MetadataRibbonIconWithLabelViewLayout.Metrics.developer.getter();
LABEL_12:
  v50 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_metrics;
  v88 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v89 + 40))(&v36[v50], v45, v90);
  swift_endAccess();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v54 = v36;
  [v54 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v55 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView;
  [*&v54[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView] setContentMode:0];
  v56 = *&v54[v55];
  ArtworkView.shouldSymbolImageSelfSize.setter();

  v57 = *&v54[v55];
  v58 = &v54[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_configuration];
  v85 = v36;
  v59 = v86;
  sub_10012EC7C(&v54[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_configuration], v86);
  v60 = v57;
  v61 = [v54 traitCollection];

  v62.super.isa = MetadataRibbonTextStyle.font(compatibleWith:)(v61).super.isa;
  v63 = [v61 preferredContentSizeCategory];
  v64 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v64)
  {
    v65 = 3;
  }

  else
  {
    v65 = 1;
  }

  v66 = [objc_opt_self() configurationWithFont:v62.super.isa scale:v65];

  sub_10012ECE0(v59);
  ArtworkView.preferredSymbolConfiguration.setter();

  v67 = *&v58[*(v42 + 28)];
  v68 = *&v54[v55];
  v69 = v67;
  ArtworkView.artworkTintColor.setter();

  v70 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label;
  [*&v54[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label] setTextColor:*&v58[*(v42 + 20)]];
  v71 = *&v54[v70];
  v72 = type metadata accessor for MetadataRibbonTextStyle();
  v92[3] = v72;
  v92[4] = sub_10012ED3C(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v73 = sub_1000056E0(v92);
  (*(*(v72 - 8) + 16))(v73, v58, v72);
  v74 = v71;
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

  v75 = *&v54[v70];
  v76 = v89;
  v77 = v87;
  v78 = v90;
  (*(v89 + 16))(v87, &v85[v88], v90);
  v79 = v75;
  v80 = MetadataRibbonIconWithLabelViewLayout.Metrics.labelNumberOfLines.getter();
  (*(v76 + 8))(v77, v78);
  [v79 setNumberOfLines:v80];

  [v54 addSubview:*&v54[v70]];
  [v54 addSubview:*&v54[v55]];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1007B10D0;
  *(v81 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v81 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v54;
}

uint64_t sub_10012CD40(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v21 = ObjectType;
  v4 = type metadata accessor for LayoutRect();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout();
  v11 = *(v22 - 8);
  *&v12 = __chkstk_darwin(v22).n128_u64[0];
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31.receiver = v2;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, "layoutSubviews", v12, v21);
  v15 = *&v2[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label];
  v29 = type metadata accessor for DynamicTypeLabel();
  v30 = &protocol witness table for UILabel;
  v28 = v15;
  v16 = *&v2[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView];
  v26 = type metadata accessor for ArtworkView();
  v27 = &protocol witness table for UIView;
  v25 = v16;
  v17 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v8 + 16))(v10, &v2[v17], v7);
  v18 = v15;
  v19 = v16;
  MetadataRibbonIconWithLabelViewLayout.init(descriptionLabelView:artworkView:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  MetadataRibbonIconWithLabelViewLayout.placeChildren(relativeTo:in:)();
  (*(v23 + 8))(v6, v24);
  return (*(v11 + 8))(v14, v22);
}

double sub_10012D038(uint64_t a1, __n128 a2, double a3)
{
  v20[0] = a1;
  v4 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label);
  v20[12] = type metadata accessor for DynamicTypeLabel();
  v20[13] = &protocol witness table for UILabel;
  v20[9] = v12;
  v13 = *(v3 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView);
  v20[7] = type metadata accessor for ArtworkView();
  v20[8] = &protocol witness table for UIView;
  v20[4] = v13;
  v14 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, v3 + v14, v4);
  v15 = v12;
  v16 = v13;
  MetadataRibbonIconWithLabelViewLayout.init(descriptionLabelView:artworkView:metrics:)();
  MetadataRibbonIconWithLabelViewLayout.measurements(fitting:in:)();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  return v18;
}

id sub_10012D2F8(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4)
{
  v5 = v4;
  v28 = a4;
  v27 = type metadata accessor for Artwork.Crop();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_label];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [v16 setText:{a3, v13, v27, v28}];

  *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artwork] = a1;

  if (a1)
  {
    v17 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_metrics;
    swift_beginAccess();
    (*(v12 + 16))(v15, &v5[v17], v11);
    v18 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_configuration;
    swift_retain_n();
    v19 = [v5 traitCollection];
    v20 = sub_10012E0D0(a1, v15, &v5[v18], v19);
    v22 = v21;

    (*(v12 + 8))(v15, v11);
    v23 = &v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkSize];
    *v23 = v20;
    *(v23 + 1) = v22;
    v24 = ArtworkView.frame.modify();
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    v24(v29, 0);
    [v5 setNeedsLayout];
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v8 + 8))(v10, v27);
    Artwork.config(_:mode:prefersLayeredImage:)();
    type metadata accessor for ArtworkLoader();
    type metadata accessor for ArtworkView();
    static ArtworkLoader.handlerKey<A>(for:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v29, &qword_10096FB90, &qword_1007B2A50);

    return [v5 setNeedsLayout];
  }

  else
  {

    return [v5 setNeedsLayout];
  }
}

void sub_10012D6FC(objc_class *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_artworkView);

    v13.is_nil = (a2 & 1) == 0;
    v13.value.super.isa = a1;
    ArtworkView.show(image:isAnimationPermitted:)(v13, v10);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [v11 setNeedsLayout];
  }
}

void sub_10012D8F8(uint64_t a1)
{
  type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  if (v1 <= 0x3F)
  {
    sub_1000315A0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_10012DA88(uint64_t a1)
{
  result = type metadata accessor for MetadataRibbonTextStyle();
  if (v2 <= 0x3F)
  {
    result = sub_100028BB8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_10012DB1C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v2 = MetadataRibbonItem.artwork.getter();
  v3 = MetadataRibbonItem.labelText.getter();
  sub_10012D2F8(v2, v3, v4, v6);

  return result;
}

uint64_t sub_10012DBD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB98, &unk_1007B10B0);
}

uint64_t sub_10012DC38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB98, &unk_1007B10B0);
  return swift_endAccess();
}

void sub_10012DD14(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_10012DDE0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_10012DEA0()
{
  v1 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10012DEE4(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10012DF94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB90, &qword_1007B2A50);
}

uint64_t sub_10012DFFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB90, &qword_1007B2A50);
  return swift_endAccess();
}

double sub_10012E0D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for AspectRatio();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);

  v10.super.isa = MetadataRibbonTextStyle.font(compatibleWith:)(a4).super.isa;
  v11 = [a4 preferredContentSizeCategory];
  v12 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v14 = [objc_opt_self() configurationWithFont:v10.super.isa scale:v13];

  if (dispatch thunk of Artwork.isLocalImage.getter())
  {
    v15 = v14;
    if (dispatch thunk of Artwork.isSystemImage.getter())
    {
      v16 = static SystemImage.load(artwork:with:includePrivateImages:)();
      goto LABEL_11;
    }

    if (dispatch thunk of Artwork.isBundleImage.getter())
    {
      v16 = sub_100330100(a1, v14);
LABEL_11:
      v18 = v16;

      if (v18)
      {
        [v18 size];
        v17 = v19;

        return v17;
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  if ((dispatch thunk of Artwork.isSystemImage.getter() & 1) != 0 && (dispatch thunk of Artwork.systemImageName.getter(), v20))
  {
    v21 = v14;
    v22 = static SystemImage.load(_:with:includePrivateImages:)();

    [v22 size];
    v17 = v23;
  }

  else
  {

    MetadataRibbonIconWithLabelViewLayout.Metrics.defaultArtworkHeight.getter();
    sub_10002A400(v27, v27[3]);
    AnyDimension.value(with:)();
    sub_100007000(v27);
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.width(fromHeight:)();
    v17 = v24;

    (*(v7 + 8))(v9, v6);
  }

  return v17;
}

double sub_10012E3F0(__n128 a1, double a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for LabelPlaceholder();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DynamicTextAppearance();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  __chkstk_darwin(v15);
  v48 = v41 - v16;
  v47 = type metadata accessor for MetadataRibbonIconWithLabelViewLayout.Metrics();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = MetadataRibbonItem.artwork.getter();
  v41[3] = MetadataRibbonItem.labelText.getter();
  v41[2] = v22;
  static MetadataRibbonIconWithLabelViewLayout.Metrics.standard.getter();
  if (qword_10096D100 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v24 = sub_1000056A8(v23, qword_1009CE188);
  v25 = [a4 traitCollection];
  sub_10012E0D0(v21, v20, v24, v25);

  v26 = type metadata accessor for LayoutViewPlaceholder();
  v41[1] = a4;
  v27 = v26;
  swift_allocObject();
  v28 = LayoutViewPlaceholder.init(representing:)();
  v41[0] = v21;
  v29 = v28;
  DynamicTextAppearance.init()();
  v30 = type metadata accessor for MetadataRibbonTextStyle();
  v56[3] = v30;
  v56[4] = sub_10012ED3C(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v31 = sub_1000056E0(v56);
  (*(*(v30 - 8) + 16))(v31, v24, v30);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v32 = *(v9 + 8);
  v32(v11, v8);
  sub_100007000(v56);
  MetadataRibbonIconWithLabelViewLayout.Metrics.labelNumberOfLines.getter();
  v33 = v48;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v32(v14, v8);
  (*(v9 + 16))(v14, v33, v8);
  LabelPlaceholder.Options.init(rawValue:)();
  v34 = v43;
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v44 + 8))(v34, v46);
  sub_10002C0AC(v56, v55);
  v53 = v27;
  v54 = &protocol witness table for LayoutViewPlaceholder;
  v52 = v29;
  v35 = v45;
  v36 = v47;
  (*(v45 + 16))(v42, v20, v47);

  v37 = v49;
  MetadataRibbonIconWithLabelViewLayout.init(descriptionLabelView:artworkView:metrics:)();
  MetadataRibbonIconWithLabelViewLayout.measurements(fitting:in:)();
  v39 = v38;

  (*(v50 + 8))(v37, v51);
  sub_100007000(v56);
  v32(v33, v8);
  (*(v35 + 8))(v20, v36);
  return v39;
}
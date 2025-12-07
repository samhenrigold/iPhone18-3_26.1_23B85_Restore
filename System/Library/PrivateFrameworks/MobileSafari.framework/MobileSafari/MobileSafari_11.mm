id SFCapsulePageLayoutTopFloatingSquished.init(container:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingSquished();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutTopFloatingSquished.__allocating_init(container:baseLayout:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

id SFCapsulePageLayoutTopFloatingSquished.init(container:baseLayout:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingSquished();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t (*sub_18B9A978C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari38SFCapsulePageLayoutTopFloatingSquished_baseLayout;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A9824;
}

id sub_18B9A9834(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

double sub_18B9A98F4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

uint64_t (*sub_18B9A9950(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari38SFCapsulePageLayoutTopFloatingSquished_container;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9AAC70;
}

void sub_18B9A99E8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

double sub_18B9A9AE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  [Strong pageWidth];
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_18B9A9C44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = [Strong supplementaryIdentifiers];
  swift_unknownObjectRelease();
  v2 = sub_18BC20D98();

  return v2;
}

_BYTE *sub_18B9A9D44(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_20:
    result = sub_18BC21CF8();
    __break(1u);
    return result;
  }

  v5 = v4;
  [a1 preferredCapsuleSizeForState_];
  v7 = v6;
  v9 = v8;
  v10 = [v5 capsuleInfoForPage_];
  v11 = fmax(v9, 32.0);
  v12 = &v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
  Width = CGRectGetWidth(*&v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]);
  [v3 minimizedContentScale];
  if (v7 <= 0.0)
  {
    v24 = Width * v14;
  }

  else
  {
    [v3 bounds];
    v15 = CGRectGetHeight(v48) - v11;
    [v3 bounds];
    [v3 concentricEdgeInsetsForEdge:4 bounds:0.0 minimumEdgeInsets:{v15, CGRectGetWidth(v49), v11, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v17 = v16;
    v19 = v18;
    [v3 bounds];
    v50.origin.x = UIEdgeInsetsInsetRect(v20, v21, v22, v23, v17, v19);
    v24 = CGRectGetWidth(v50);
    if (v7 < v24)
    {
      v24 = v7;
    }
  }

  v46 = v24;
  CACornerRadiiMake(v47, v11 * 0.5, v11 * 0.5, v11 * 0.5, v11 * 0.5);
  v26 = v47[0];
  v25 = v47[1];
  v28 = v47[2];
  v27 = v47[3];
  v29 = v47[4];
  v30 = v47[5];
  v32 = v47[6];
  v31 = v47[7];
  v33 = &v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
  swift_beginAccess();
  *v33 = v26;
  v33[1] = v25;
  v33[2] = v28;
  v33[3] = v27;
  v33[4] = v29;
  v33[5] = v30;
  v33[6] = v32;
  v33[7] = v31;
  v34 = 0;
  if (v32 == v31 && v32 == v26 && v31 == v25)
  {
    v35 = v32 == v29;
    if (v31 != v30)
    {
      v35 = 0;
    }

    if (v32 != v28)
    {
      v35 = 0;
    }

    v34 = v31 == v27 && v35;
  }

  v36 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
  swift_beginAccess();
  v10[v36] = v34;
  [v3 bounds];
  v37 = (CGRectGetWidth(v51) - v46) * 0.5;
  CGRectGetMinY(*v12);
  v38 = _SFRoundRectToPixels(v37);
  v40 = v39;
  v42 = v41;
  v44 = v43;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *v12 = v38;
  *(v12 + 1) = v40;
  *(v12 + 2) = v42;
  *(v12 + 3) = v44;
  return v10;
}

char *sub_18B9AA0A4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (sub_18BC20BD8() == a1 && v8 == a2)
    {
    }

    else
    {
      v10 = sub_18BC21FD8();

      if ((v10 & 1) == 0)
      {
        v11 = sub_18BC20B98();
        v12 = [v7 infoForSupplementaryIdentifier:v11 page:a3];

        v13 = [v7 bottomBackdropInfoForPage_];
        v14 = *&v13[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
        v15 = *&v13[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
        v16 = *&v13[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
        v17 = *&v13[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

        v27.origin.x = v14;
        v27.origin.y = v15;
        v27.size.width = v16;
        v27.size.height = v17;
        CGRectGetHeight(v27);
        v18 = &v12[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
        v19 = _SFRoundRectToPixels(*&v12[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]);
        v21 = v20;
        v23 = v22;
        v25 = v24;
        swift_unknownObjectRelease();
        *v18 = v19;
        *(v18 + 1) = v21;
        *(v18 + 2) = v23;
        *(v18 + 3) = v25;
        return v12;
      }
    }

    v12 = sub_18B9AA30C(a3);
    swift_unknownObjectRelease();
    return v12;
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

char *sub_18B9AA30C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_18B9A9D44(a1);
    v5 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v6 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v7 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v8 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v9 = [a1 lockdownStatusBar];
    v10 = v9;
    if (v9)
    {
      [v9 preferredSize];
    }

    v11 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    v21.origin.x = v5;
    v21.origin.y = v6;
    v21.size.width = v7;
    v21.size.height = v8;
    CGRectGetMaxY(v21);
    [v3 bounds];
    CGRectGetWidth(v22);
    v12 = _SFRoundRectToPixels(0.0);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    swift_unknownObjectRelease();
    v19 = &v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v19 = v12;
    *(v19 + 1) = v14;
    *(v19 + 2) = v16;
    *(v19 + 3) = v18;
    return v11;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

char *sub_18B9AA4A8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 lockdownStatusBar];
    if (v4)
    {

      v5 = sub_18B9AA30C(a1);
    }

    else
    {
      v5 = sub_18B9A9D44(a1);
    }

    v6 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v7 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v8 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v9 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v20.origin.x = v6;
    v20.origin.y = v7;
    v20.size.width = v8;
    v20.size.height = v9;
    CGRectGetMaxY(v20);
    v10 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    [v3 bounds];
    CGRectGetWidth(v21);
    v11 = _SFRoundRectToPixels(0.0);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = &v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v18 = v11;
    *(v18 + 1) = v13;
    *(v18 + 2) = v15;
    *(v18 + 3) = v17;
    return v10;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id sub_18B9AA64C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a4(a3);
  swift_unknownObjectRelease();

  return v8;
}

id SFCapsulePageLayoutTopFloatingSquished.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFCapsulePageLayoutTopFloatingSquished.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingSquished();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_18B9AA7D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    [v1 bounds];
    CGRectGetHeight(v12);
    [v1 bounds];
    CGRectGetWidth(v13);
    [v1 bounds];
    CGRectGetHeight(v14);
    v3 = _SFRoundRectToPixels(0.0);
    v5 = v4;
    v7 = v6;
    v9 = v8;
    swift_unknownObjectRelease();
    v10 = &v2[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v10 = v3;
    *(v10 + 1) = v5;
    *(v10 + 2) = v7;
    *(v10 + 3) = v9;
    return v2;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

void sub_18B9AAC74(uint64_t a1, __n128 a2, double a3, double a4, double a5)
{
  v9 = a2.n128_f64[0];
  v130 = sub_18BC1FA08();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_18BC1EE48();
  v133 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_imageHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView____lazy_storage___imageView] = 0;
  v13 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_separator;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v14 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleBottomConstraint;
  *&v5[v14] = [objc_allocWithZone(MEMORY[0x1E696ACD8]) init];
  v15 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleLeadingConstraint;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x1E696ACD8]) init];
  v16 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleField;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  [v17 setAdjustsFontForContentSizeCategory_];
  [v17 setAdjustsFontSizeToFitWidth_];
  [v17 setClearButtonMode_];
  [v17 setEnablesReturnKeyAutomatically_];
  [v17 setReturnKeyType_];
  *&v5[v16] = v17;
  v18 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_addressField;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  [v19 setAdjustsFontForContentSizeCategory_];
  [v19 setAdjustsFontSizeToFitWidth_];
  [v19 setClearButtonMode_];
  [v19 setEnablesReturnKeyAutomatically_];
  [v19 setReturnKeyType_];
  *&v5[v18] = v19;
  v20 = &v5[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration];
  v21 = *(a1 + 80);
  *(v20 + 4) = *(a1 + 64);
  *(v20 + 5) = v21;
  *(v20 + 6) = *(a1 + 96);
  *(v20 + 14) = *(a1 + 112);
  v22 = *(a1 + 16);
  *v20 = *a1;
  *(v20 + 1) = v22;
  v23 = *(a1 + 48);
  *(v20 + 2) = *(a1 + 32);
  *(v20 + 3) = v23;
  v124 = a1;
  sub_18B9ACF24(a1, v135);
  v24 = _s24InfoEntryCellContentViewCMa();
  v134.receiver = v5;
  v134.super_class = v24;
  v25 = objc_msgSendSuper2(&v134, sel_initWithFrame_, v9, a3, a4, a5);
  [v25 setDirectionalLayoutMargins_];
  v26 = sub_18B9ABF4C();
  [v26 _setContinuousCornerRadius_];

  v27 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView____lazy_storage___imageView;
  [*&v25[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView____lazy_storage___imageView] setClipsToBounds_];
  [*&v25[v27] setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 addSubview_];
  v28 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleField;
  [*&v25[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleField] setAutocapitalizationType_];
  [*&v25[v28] setAutocorrectionType_];
  v29 = *&v25[v28];
  v30 = v131;
  sub_18BC1EE38();
  sub_18BC1EE28();
  v31 = *(v133 + 8);
  v133 += 8;
  v31(v30, v132);
  v32 = sub_18BC20B98();

  [v29 setPlaceholder_];

  [*&v25[v28] setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = [*&v25[v28] textInputTraits];
  if (!v33)
  {
    __break(1u);
    goto LABEL_14;
  }

  v34 = v33;
  [v33 setEnablesReturnKeyOnNonWhiteSpaceContent_];

  v126 = v28;
  [v25 addSubview_];
  v35 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_separator;
  v36 = *&v25[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_separator];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 separatorColor];
  [v38 setBackgroundColor_];

  [*&v25[v35] &selRef:0 showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:? extensionIdentifier:? + 2];
  v127 = v35;
  [v25 &selRef_BOOLValue];
  v40 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_addressField;
  [*&v25[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_addressField] setAutocapitalizationType_];
  [*&v25[v40] setAutocorrectionType_];
  [*&v25[v40] setKeyboardType_];
  v41 = *&v25[v40];
  v42 = v131;
  sub_18BC1EE38();
  sub_18BC1EE28();
  v31(v42, v132);
  v43 = sub_18BC20B98();

  [v41 setPlaceholder_];

  [*&v25[v40] &selRef:0 showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:? extensionIdentifier:? + 2];
  v132 = v40;
  [v25 addSubview_];
  v44 = [*&v25[v27] heightAnchor];
  v45 = [v44 constraintEqualToConstant_];

  v46 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_imageHeightConstraint;
  v47 = *&v25[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_imageHeightConstraint];
  *&v25[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_imageHeightConstraint] = v45;

  v48 = v128;
  sub_18BC1F9A8();
  v49 = [v25 traitCollection];
  sub_18BC1F888();
  v51 = v50;

  (*(v129 + 8))(v48, v130);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v52 = v27;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_18BC424B0;
  v54 = [v25 heightAnchor];
  v55 = [v54 constraintGreaterThanOrEqualToConstant_];

  *(v53 + 32) = v55;
  v56 = [*&v25[v52] leadingAnchor];
  v57 = [v25 layoutMarginsGuide];
  v58 = [v57 leadingAnchor];

  v59 = [v56 constraintEqualToAnchor_];
  *(v53 + 40) = v59;
  v60 = [*&v25[v52] topAnchor];
  v61 = [v25 layoutMarginsGuide];
  v62 = [v61 topAnchor];

  v63 = [v60 constraintEqualToAnchor_];
  *(v53 + 48) = v63;
  v64 = [*&v25[v52] bottomAnchor];
  v65 = [v25 layoutMarginsGuide];
  v66 = [v65 bottomAnchor];

  v67 = [v64 constraintEqualToAnchor_];
  *(v53 + 56) = v67;
  v68 = *&v25[v46];
  if (!v68)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v131 = objc_opt_self();
  *(v53 + 64) = v68;
  v69 = *&v25[v52];
  v125 = v52;
  v70 = v68;
  v71 = [v69 heightAnchor];
  v72 = [*&v25[v52] widthAnchor];
  v73 = [v71 &selRef:v72 containsButtonType:? + 5];

  *(v53 + 72) = v73;
  v74 = v126;
  v75 = [*&v25[v126] topAnchor];
  v76 = [v25 &selRef_startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn_];
  v77 = [v75 &selRef:v76 containsButtonType:? + 5];

  *(v53 + 80) = v77;
  v78 = [*&v25[v74] trailingAnchor];
  v79 = [v25 layoutMarginsGuide];
  v80 = [v79 trailingAnchor];

  v81 = [v78 &selRef:v80 containsButtonType:? + 5];
  *(v53 + 88) = v81;
  v82 = v127;
  v83 = [*&v25[v127] leadingAnchor];
  v84 = [*&v25[v74] &selRef_initWithRow_itemRange_ + 1];
  v85 = [v83 &selRef:v84 containsButtonType:? + 5];

  *(v53 + 96) = v85;
  v86 = [*&v25[v82] trailingAnchor];
  v87 = [v25 trailingAnchor];
  v88 = [v86 &selRef:v87 containsButtonType:? + 5];

  *(v53 + 104) = v88;
  v89 = [*&v25[v82] heightAnchor];
  v90 = [v25 traitCollection];
  [v90 displayScale];
  v92 = v91;

  v93 = [v89 constraintEqualToConstant_];
  *(v53 + 112) = v93;
  v94 = [*&v25[v82] bottomAnchor];
  v95 = [*&v25[v74] bottomAnchor];
  v96 = [v94 &selRef:v95 containsButtonType:? + 5];

  *(v53 + 120) = v96;
  v97 = v132;
  v98 = [*&v25[v132] topAnchor];
  v99 = [*&v25[v74] bottomAnchor];
  v100 = [v98 &selRef:v99 containsButtonType:? + 5];

  *(v53 + 128) = v100;
  v101 = [*&v25[v97] bottomAnchor];
  v102 = [v25 bottomAnchor];
  v103 = [v101 &selRef:v102 containsButtonType:? + 5];

  *(v53 + 136) = v103;
  v104 = [*&v25[v97] leadingAnchor];
  v105 = [*&v25[v125] trailingAnchor];
  v106 = [v104 constraintEqualToAnchor:v105 constant:16.0];

  *(v53 + 144) = v106;
  v107 = [*&v25[v97] trailingAnchor];
  v108 = [v25 layoutMarginsGuide];

  v109 = [v108 trailingAnchor];
  v110 = [v107 &selRef:v109 containsButtonType:? + 5];

  *(v53 + 152) = v110;
  v111 = [*&v25[v74] heightAnchor];
  v112 = [*&v25[v97] heightAnchor];
  v113 = [v111 &selRef:v112 containsButtonType:? + 5];

  *(v53 + 160) = v113;
  sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
  v114 = sub_18BC20D88();

  [v131 activateConstraints_];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18BC41E60;
  v116 = *&v25[v74];
  *(inited + 32) = v116;
  v117 = *&v25[v97];
  *(inited + 40) = v117;
  v118 = v116;
  v119 = v117;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_11;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  for (i = v118; ; i = MEMORY[0x18CFFD010](0, inited))
  {
    v121 = i;
    [i addTarget:v25 action:sel_returnWasPressed forControlEvents:0x80000];
    [v121 addTarget:v25 action:sel_valueChangedIn_ forControlEvents:0x20000];
    [v121 addTarget:v25 action:sel_didBeginEditing forControlEvents:0x10000];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v122 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    ;
  }

  v122 = MEMORY[0x18CFFD010](1, inited);
LABEL_9:
  v123 = v122;
  [v122 addTarget:v25 action:sel_returnWasPressed forControlEvents:0x80000];
  [v123 addTarget:v25 action:sel_valueChangedIn_ forControlEvents:0x20000];
  [v123 addTarget:v25 action:sel_didBeginEditing forControlEvents:0x10000];

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_18B9ABFC0();
  sub_18B9ACEA0(v124);
}

void (*sub_18B9ABCB8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1C8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration;
  *(v3 + 440) = v1;
  *(v3 + 448) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 112);
  v9 = *(v6 + 80);
  v8 = *(v6 + 96);
  *(v3 + 64) = *(v6 + 64);
  *(v3 + 80) = v9;
  *(v3 + 96) = v8;
  *(v3 + 112) = v7;
  v11 = *(v6 + 32);
  v10 = *(v6 + 48);
  v12 = *(v6 + 16);
  *v3 = *v6;
  *(v3 + 16) = v12;
  *(v3 + 32) = v11;
  *(v3 + 48) = v10;
  *(v3 + 384) = &_s33InfoEntryCellContentConfigurationVN;
  *(v3 + 392) = sub_18B9ACED0();
  v13 = swift_allocObject();
  *(v4 + 360) = v13;
  v14 = *(v6 + 16);
  *(v13 + 16) = *v6;
  *(v13 + 32) = v14;
  v15 = *(v6 + 48);
  *(v13 + 48) = *(v6 + 32);
  *(v13 + 64) = v15;
  v16 = *(v6 + 80);
  *(v13 + 80) = *(v6 + 64);
  *(v13 + 96) = v16;
  *(v13 + 112) = *(v6 + 96);
  *(v13 + 128) = *(v6 + 112);
  sub_18B9ACF24(v4, v4 + 120);
  return sub_18B9ABDBC;
}

void sub_18B9ABDBC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_18B80DBC4(v2 + 360, v2 + 400);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D66F0, &unk_18BC42638);
    if (swift_dynamicCast())
    {
      v3 = (*(v2 + 440) + *(v2 + 448));
      v4 = v3[3];
      v6 = *v3;
      v5 = v3[1];
      *(v2 + 272) = v3[2];
      *(v2 + 288) = v4;
      *(v2 + 240) = v6;
      *(v2 + 256) = v5;
      v8 = v3[5];
      v7 = v3[6];
      v9 = v3[4];
      *(v2 + 352) = *(v3 + 14);
      *(v2 + 320) = v8;
      *(v2 + 336) = v7;
      *(v2 + 304) = v9;
      v10 = *(v2 + 120);
      v11 = *(v2 + 136);
      v12 = *(v2 + 168);
      v3[2] = *(v2 + 152);
      v3[3] = v12;
      *v3 = v10;
      v3[1] = v11;
      v13 = *(v2 + 184);
      v14 = *(v2 + 200);
      v15 = *(v2 + 216);
      *(v3 + 14) = *(v2 + 232);
      v3[5] = v14;
      v3[6] = v15;
      v3[4] = v13;
      sub_18B9ACEA0(v2 + 240);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 360));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D66F0, &unk_18BC42638);
    if (swift_dynamicCast())
    {
      v16 = (*(v2 + 440) + *(v2 + 448));
      v17 = v16[3];
      v19 = *v16;
      v18 = v16[1];
      *(v2 + 272) = v16[2];
      *(v2 + 288) = v17;
      *(v2 + 240) = v19;
      *(v2 + 256) = v18;
      v21 = v16[5];
      v20 = v16[6];
      v22 = v16[4];
      *(v2 + 352) = *(v16 + 14);
      *(v2 + 320) = v21;
      *(v2 + 336) = v20;
      *(v2 + 304) = v22;
      v23 = *(v2 + 120);
      v24 = *(v2 + 136);
      v25 = *(v2 + 168);
      v16[2] = *(v2 + 152);
      v16[3] = v25;
      *v16 = v23;
      v16[1] = v24;
      v26 = *(v2 + 184);
      v27 = *(v2 + 200);
      v28 = *(v2 + 216);
      *(v16 + 14) = *(v2 + 232);
      v16[5] = v27;
      v16[6] = v28;
      v16[4] = v26;
      sub_18B9ACEA0(v2 + 240);
    }
  }

  free(v2);
}

id sub_18B9ABF4C()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(_SFSiteIconView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_18B9ABFC0()
{
  v1 = sub_18B9ABF4C();
  v2 = &v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration];
  v3 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration];
  [v1 setBookmark_];

  v4 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleField];
  sub_18BC1E3F8();
  v5 = sub_18BC20B98();

  [v4 setText_];

  sub_18BC1E3F8();
  v6 = sub_18BC20B98();

  [v4 setAccessibilityIdentifier_];

  if (*(v2 + 6))
  {
    v7 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_addressField];
    sub_18BC1E3F8();
    v8 = sub_18BC20B98();

    [v7 setText_];
  }

  if (*(v2 + 8))
  {
    sub_18BC1E3F8();
    v9 = sub_18BC20B98();

    [v4 setAccessibilityIdentifier_];
  }

  v10 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_addressField];
  if (*v2)
  {
    v11 = [*v2 isFolder];
  }

  else
  {
    v11 = 0;
  }

  v57 = v10;
  [v10 setHidden_];
  v55 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView____lazy_storage___imageView;
  v12 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView____lazy_storage___imageView];
  v13 = *v2;
  if (*v2)
  {
    v14 = v12;
    v15 = [v13 isFolder];
  }

  else
  {
    v14 = v12;
    v15 = 0;
  }

  [v14 setHidden_];

  v16 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_separator];
  v17 = v4;
  if (*v2)
  {
    v18 = [*v2 isFolder];
  }

  else
  {
    v18 = 0;
  }

  [v16 setHidden_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_18BC41E60;
  v21 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleLeadingConstraint;
  v22 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleLeadingConstraint];
  v23 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleBottomConstraint;
  v24 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleBottomConstraint];
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
  v25 = v22;
  v26 = v24;
  v27 = v19;
  v28 = sub_18BC20D88();

  [v19 deactivateConstraints_];

  if (!*v2 || ![*v2 isFolder])
  {
    v42 = [v17 leadingAnchor];
    v43 = [*&v0[v56] trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43 constant:16.0];

    v45 = *&v0[v21];
    *&v0[v21] = v44;

    v46 = [v17 bottomAnchor];
    v47 = [v57 topAnchor];
    v48 = [v46 constraintEqualToAnchor_];

    v49 = *&v0[v23];
    *&v0[v23] = v48;

    v40 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_imageHeightConstraint];
    if (v40)
    {
      v41 = 60.0;
      goto LABEL_20;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v29 = v19;
  v30 = v17;
  v31 = [v17 leadingAnchor];
  v32 = [v0 layoutMarginsGuide];
  v33 = [v32 leadingAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  v35 = *&v0[v21];
  *&v0[v21] = v34;

  v36 = [v30 bottomAnchor];
  v37 = [v0 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  v39 = *&v0[v23];
  *&v0[v23] = v38;

  v40 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_imageHeightConstraint];
  if (!v40)
  {
    goto LABEL_24;
  }

  v41 = 0.0;
  v27 = v29;
LABEL_20:
  [v40 setConstant_];
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_18BC41E60;
  v51 = *&v0[v21];
  v52 = *&v0[v23];
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  v53 = v51;
  v54 = v52;
  v58 = sub_18BC20D88();

  [v27 activateConstraints_];
}

double sub_18B9AC5FC(uint64_t a1)
{
  sub_18B7B193C(a1, v18);
  sub_18B7B0AC0(0, &qword_1EA9D3A60, 0x1E69DD0B0);
  if (swift_dynamicCast())
  {
    v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleField);

    if (v17 == v3)
    {
      v6 = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 88);
      if (!v6)
      {
        return result;
      }

      v7 = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 96);
      sub_18BC1E1A8();
      v13 = [v3 text];
      if (v13)
      {
        v14 = v13;
        v10 = sub_18BC20BD8();
        v12 = v15;
      }

      else
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      v16 = 0;
      goto LABEL_15;
    }
  }

  sub_18B7B193C(a1, v18);
  if (swift_dynamicCast())
  {
    v5 = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_addressField);

    if (v17 == v5)
    {
      v6 = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 88);
      if (v6)
      {
        v7 = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 96);
        sub_18BC1E1A8();
        v8 = [v5 text];
        if (v8)
        {
          v9 = v8;
          v10 = sub_18BC20BD8();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0xE000000000000000;
        }

        v16 = 1;
LABEL_15:
        v6(v16, v10, v12);
        sub_18B7B171C(v6, v7);
      }
    }
  }

  return result;
}

id sub_18B9AC8E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s24InfoEntryCellContentViewCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_18B9ACA9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B9ACAE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18B9ACB50@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration;
  v4 = *(v3 + 64);
  v5 = *(v3 + 96);
  v15[5] = *(v3 + 80);
  v15[6] = v5;
  v6 = *(v3 + 16);
  v15[0] = *v3;
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v15[1] = v6;
  v15[2] = v7;
  v16 = *(v3 + 112);
  v15[3] = v8;
  v15[4] = v4;
  a1[3] = &_s33InfoEntryCellContentConfigurationVN;
  a1[4] = sub_18B9ACED0();
  v9 = swift_allocObject();
  *a1 = v9;
  v10 = *(v3 + 80);
  *(v9 + 80) = *(v3 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(v3 + 96);
  *(v9 + 128) = *(v3 + 112);
  v11 = *(v3 + 16);
  *(v9 + 16) = *v3;
  *(v9 + 32) = v11;
  v12 = *(v3 + 48);
  *(v9 + 48) = *(v3 + 32);
  *(v9 + 64) = v12;
  return sub_18B9ACF24(v15, v14);
}

uint64_t sub_18B9ACC18(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D66F0, &unk_18BC42638);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration;
    v4 = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 80);
    v10[4] = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 64);
    v10[5] = v4;
    v10[6] = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 96);
    v11 = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 112);
    v5 = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 16);
    v10[0] = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration);
    v10[1] = v5;
    v6 = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 48);
    v10[2] = *(v1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_infoEntryConfiguration + 32);
    v10[3] = v6;
    *(v3 + 112) = v13;
    v7 = v12[6];
    *(v3 + 80) = v12[5];
    *(v3 + 96) = v7;
    v8 = v12[4];
    *(v3 + 48) = v12[3];
    *(v3 + 64) = v8;
    v9 = v12[2];
    *(v3 + 16) = v12[1];
    *(v3 + 32) = v9;
    *v3 = v12[0];
    return sub_18B9ACEA0(v10);
  }

  return result;
}

uint64_t (*sub_18B9ACCDC(uint64_t **a1))()
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
  v2[4] = sub_18B9ABCB8(v2);
  return sub_18B9ACD4C;
}

void sub_18B9ACD4C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_18B9ACD98()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 96);
  v12[5] = *(v0 + 80);
  v12[6] = v2;
  v3 = *(v0 + 16);
  v12[0] = *v0;
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v12[1] = v3;
  v12[2] = v4;
  v13 = *(v0 + 112);
  v12[3] = v5;
  v12[4] = v1;
  v6 = objc_allocWithZone(_s24InfoEntryCellContentViewCMa());
  sub_18B9ACF24(v12, v11);
  v7.n128_u64[0] = 0;
  sub_18B9AAC74(v12, v7, 0.0, 0.0, 0.0);
  v9 = v8;
  sub_18B9ACF5C();
  return v9;
}

double sub_18B9ACE30@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  sub_18B9ACF24(v11, v10);
  return result;
}

unint64_t sub_18B9ACED0()
{
  result = qword_1EA9D4A20;
  if (!qword_1EA9D4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4A20);
  }

  return result;
}

unint64_t sub_18B9ACF5C()
{
  result = qword_1EA9D4A28;
  if (!qword_1EA9D4A28)
  {
    _s24InfoEntryCellContentViewCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4A28);
  }

  return result;
}

void sub_18B9ACFB0()
{
  *(v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_imageHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView____lazy_storage___imageView) = 0;
  v1 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_separator;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleBottomConstraint;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E696ACD8]) init];
  v3 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleLeadingConstraint;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E696ACD8]) init];
  v4 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_titleField;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  [v5 setAdjustsFontForContentSizeCategory_];
  [v5 setAdjustsFontSizeToFitWidth_];
  [v5 setClearButtonMode_];
  [v5 setEnablesReturnKeyAutomatically_];
  [v5 setReturnKeyType_];
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController24InfoEntryCellContentView_addressField;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  [v7 setAdjustsFontForContentSizeCategory_];
  [v7 setAdjustsFontSizeToFitWidth_];
  [v7 setClearButtonMode_];
  [v7 setEnablesReturnKeyAutomatically_];
  [v7 setReturnKeyType_];
  *(v0 + v6) = v7;
  sub_18BC21CF8();
  __break(1u);
}

unint64_t sub_18B9AD19C()
{
  result = qword_1EA9D4A30;
  if (!qword_1EA9D4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4A30);
  }

  return result;
}

char *SFOnboardingTipController.__allocating_init(_:_:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_18B9AF00C(v7, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

char *SFOnboardingTipController.init(_:_:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_18B9AEE94(v10, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

double sub_18B9AD458(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_18B9AD4B8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SFOnboardingTipController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A99E8;
}

uint64_t sub_18B9AD550()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10, &qword_18BC426D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = OBJC_IVAR___SFOnboardingTipController_observationTask;
  if (*(v0 + OBJC_IVAR___SFOnboardingTipController_observationTask))
  {
    sub_18BC1E1A8();
    sub_18BC20F58();
  }

  v6 = sub_18BC20F48();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18BC20F28();
  sub_18BC1E1A8();
  v8 = sub_18BC20F18();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  *(v1 + v5) = sub_18B97E1A4(0, 0, v4, &unk_18BC426E0, v9);

  v11 = OBJC_IVAR___SFOnboardingTipController_tip;
  swift_beginAccess();
  sub_18B80DBC4(v1 + v11, v16);
  v12 = v17;
  v13 = v18;
  __swift_project_boxed_opaque_existential_1Tm(v16, v17);
  (*(v13 + 72))(v12, v13);
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_18B9AD75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4A60, &unk_18BC42730);
  v4[42] = swift_task_alloc();
  v5 = sub_18BC202C8();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4A68, &unk_18BC4DC00);
  v4[47] = swift_task_alloc();
  v4[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4A70, &unk_18BC42740);
  v4[49] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4A78, &unk_18BC4DC10);
  v4[50] = v6;
  v4[51] = *(v6 - 8);
  v4[52] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4A80, &qword_18BC42750);
  v4[53] = v7;
  v4[54] = *(v7 - 8);
  v4[55] = swift_task_alloc();
  v4[56] = sub_18BC20F28();
  v4[57] = sub_18BC20F18();
  v9 = sub_18BC20ED8();
  v4[58] = v9;
  v4[59] = v8;

  return MEMORY[0x1EEE6DFA0](sub_18B9AD9D4, v9, v8);
}

uint64_t sub_18B9AD9D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[60] = Strong;
  if (Strong)
  {
    v2 = v0[51];
    v3 = v0[52];
    v4 = v0[50];
    v5 = OBJC_IVAR___SFOnboardingTipController_tip;
    v0[61] = OBJC_IVAR___SFOnboardingTipController_tip;
    v6 = Strong;
    swift_beginAccess();
    sub_18B80DBC4(v6 + v5, (v0 + 2));
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
    sub_18BC20058();
    MEMORY[0x18CFFD160](v4);
    sub_18B7B0B08(&qword_1EA9D4A88, &qword_1EA9D4A68, &unk_18BC4DC00, MEMORY[0x1E69E86A0]);
    sub_18BC20F78();
    sub_18BC21C88();
    (*(v2 + 8))(v3, v4);
    sub_18BC21C98();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v7 = OBJC_IVAR___SFOnboardingTipController_coordinator;
    v0[62] = OBJC_IVAR___SFOnboardingTipController_popover;
    v0[63] = v7;
    v0[64] = OBJC_IVAR___SFOnboardingTipController_delegate;
    swift_beginAccess();
    v8 = sub_18BC20F18();
    v0[65] = v8;
    if (v8)
    {
      swift_getObjectType();
      v9 = sub_18BC20ED8();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v0[67] = v11;
    v0[66] = v9;

    return MEMORY[0x1EEE6DFA0](sub_18B9ADC94, v9, v11);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_18B9ADC94()
{
  v1 = v0[65];
  v0[68] = sub_18BC21C78();
  sub_18B7B0B08(&qword_1EA9D4A90, &qword_1EA9D4A70, &unk_18BC42740, MEMORY[0x1E69E8690]);
  v2 = swift_task_alloc();
  v0[69] = v2;
  *v2 = v0;
  v2[1] = sub_18B9ADD98;
  v3 = v0[42];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_18B9ADD98()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 536);
    v4 = *(v2 + 528);
    v5 = sub_18B9AE078;
  }

  else
  {
    (*(v2 + 544))();
    v3 = *(v2 + 536);
    v4 = *(v2 + 528);
    v5 = sub_18B9ADEC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_18B9ADEC8()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_18B9AF388(v3);
    v4 = v0[58];
    v5 = v0[59];

    return MEMORY[0x1EEE6DFA0](sub_18B9AE090, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[45], v3, v1);
    v6 = sub_18BC21C88();
    v0[70] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[71] = v8;
    *v8 = v0;
    v8[1] = sub_18B9AE16C;
    v9 = v0[45];

    return (v11)(v0 + 72, v9);
  }
}

uint64_t sub_18B9AE090()
{
  v1 = v0[60];
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_18B9AE16C()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);
  v4 = *(*v0 + 344);

  (*(v3 + 8))(v2, v4);
  *(v1 + 577) = *(v1 + 576);
  v5 = *(v1 + 536);
  v6 = *(v1 + 528);

  return MEMORY[0x1EEE6DFA0](sub_18B9AE318, v6, v5);
}

uint64_t sub_18B9AE318()
{

  v1 = *(v0 + 464);
  v2 = *(v0 + 472);

  return MEMORY[0x1EEE6DFA0](sub_18B9AE37C, v1, v2);
}

uint64_t sub_18B9AE37C()
{
  v68 = v0;
  if (qword_1EA9D2290 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 480);
  v2 = sub_18BC1F2C8();
  __swift_project_value_buffer(v2, qword_1EA9F7E68);
  v3 = v1;
  v4 = sub_18BC1F2A8();
  v5 = sub_18BC21228();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 480);
    v6 = *(v0 + 488);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v67 = v9;
    *v8 = 136446210;
    sub_18B80DBC4(v7 + v6, v0 + 176);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v10);
    v12 = (*(v11 + 64))(v10, v11);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    v15 = sub_18B7EA850(v12, v14, &v67);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_18B7AC000, v4, v5, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x18CFFEEE0](v9, -1, -1);
    MEMORY[0x18CFFEEE0](v8, -1, -1);
  }

  v16 = *(v0 + 480);
  if (*(v0 + 577) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = [*(v0 + 480) identifier];
      if (!v19)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v19, v20, v21);
      }

      v22 = v19;
      v23 = *(v0 + 480);
      sub_18BC1EED8();
    }

    v24 = swift_unknownObjectWeakLoadStrong();
    if (!v24 || (v25 = [v24 anchorViewOfPopoverForOnboardingWithProvider_], swift_unknownObjectRelease(), !v25))
    {
      v33 = *(v0 + 480);
      v34 = sub_18BC1F2A8();
      v35 = sub_18BC21238();

      if (os_log_type_enabled(v34, v35))
      {
        v37 = *(v0 + 480);
        v36 = *(v0 + 488);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v67 = v39;
        *v38 = 136446466;
        sub_18B80DBC4(v37 + v36, v0 + 56);
        v40 = *(v0 + 80);
        v41 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 56), v40);
        v42 = (*(v41 + 64))(v40, v41);
        v44 = v43;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
        v45 = sub_18B7EA850(v42, v44, &v67);

        *(v38 + 4) = v45;
        *(v38 + 12) = 2082;
        *(v0 + 320) = swift_unknownObjectWeakLoadStrong();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9D4A98, &qword_18BC42758);
        v46 = sub_18BC20BF8();
        v48 = sub_18B7EA850(v46, v47, &v67);

        *(v38 + 14) = v48;
        _os_log_impl(&dword_18B7AC000, v34, v35, "%{public}s failed to display due to missing anchor view from delegate(%{public}s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x18CFFEEE0](v39, -1, -1);
        MEMORY[0x18CFFEEE0](v38, -1, -1);
      }

      goto LABEL_28;
    }

    v26 = *(v0 + 496);
    v27 = *(v0 + 480);
    v28 = *(v27 + v26);
    if (v28)
    {
      v29 = *(v27 + v26);
    }

    else
    {
      v49 = (v27 + *(v0 + 488));
      sub_18BC200C8();
      v50 = v49[3];
      v51 = v49[4];
      v52 = __swift_project_boxed_opaque_existential_1Tm(v49, v50);
      *(v0 + 120) = v50;
      *(v0 + 128) = *(v51 + 8);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 96));
      (*(*(v50 - 8) + 16))(boxed_opaque_existential_0Tm, v52, v50);
      v54 = v25;
      v29 = sub_18BC200D8();
      v27 = *(v0 + 480);
    }

    sub_18B80DBC4(v27 + *(v0 + 488), v0 + 136);
    v55 = *(v0 + 160);
    v56 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v55);
    v57 = *(v56 + 56);
    v58 = v28;
    v57(v55, v56);
    if (v59)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      sub_18BC200B8();
    }

    v60 = swift_unknownObjectWeakLoadStrong();
    if (v60)
    {
      [v60 present_];
      swift_unknownObjectRelease();
    }

    v61 = *(v0 + 496);
    v62 = *(v0 + 480);

    v32 = *(v62 + v61);
    *(v62 + v61) = v29;
  }

  else
  {
    v30 = *(v0 + 496);
    v31 = *(v16 + v30);
    if (v31)
    {
      [v31 dismissViewControllerAnimated:1 completion:0];
      v32 = *(v16 + v30);
      v30 = *(v0 + 496);
      v16 = *(v0 + 480);
    }

    else
    {
      v32 = 0;
    }

    *(v16 + v30) = 0;
  }

LABEL_28:
  v63 = sub_18BC20F18();
  *(v0 + 520) = v63;
  if (v63)
  {
    swift_getObjectType();
    v64 = sub_18BC20ED8();
    v21 = v65;
  }

  else
  {
    v64 = 0;
    v21 = 0;
  }

  *(v0 + 536) = v21;
  *(v0 + 528) = v64;
  v19 = sub_18B9ADC94;
  v20 = v64;

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

double sub_18B9AE9E4()
{
  v1 = OBJC_IVAR___SFOnboardingTipController_popover;
  v2 = *(v0 + OBJC_IVAR___SFOnboardingTipController_popover);
  if (v2)
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = OBJC_IVAR___SFOnboardingTipController_observationTask;
  if (*(v0 + OBJC_IVAR___SFOnboardingTipController_observationTask))
  {
    sub_18BC1E1A8();
    sub_18BC20F58();
  }

  *(v0 + v4) = 0;

  return result;
}

uint64_t sub_18B9AEB90()
{
  v1 = OBJC_IVAR___SFOnboardingTipController_tip;
  swift_beginAccess();
  sub_18B80DBC4(v0 + v1, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1Tm(v6, v7);
  v4 = (*(v3 + 40))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

uint64_t sub_18B9AECBC()
{
  v1 = OBJC_IVAR___SFOnboardingTipController_tip;
  swift_beginAccess();
  sub_18B80DBC4(v0 + v1, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1Tm(v6, v7);
  v4 = (*(v3 + 48))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

id SFOnboardingTipController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFOnboardingTipController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFOnboardingTipController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_18B9AEE94(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v17[3] = a4;
  v17[4] = a5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v17);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0Tm, a1, a4);
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR___SFOnboardingTipController_observationTask] = 0;
  *&a3[OBJC_IVAR___SFOnboardingTipController_popover] = 0;
  swift_unknownObjectWeakInit();
  sub_18B80DBC4(v17, &a3[OBJC_IVAR___SFOnboardingTipController_tip]);
  swift_unknownObjectWeakAssign();
  v16.receiver = a3;
  v16.super_class = type metadata accessor for SFOnboardingTipController();
  v9 = objc_msgSendSuper2(&v16, sel_init);
  v10 = v9 + OBJC_IVAR___SFOnboardingTipController_tip;
  swift_beginAccess();
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  v13 = *(v12 + 24);
  v14 = v9;
  v13(v9, v11, v12);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v14;
}

char *sub_18B9AF00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(type metadata accessor for SFOnboardingTipController());
  (*(v9 + 16))(v11, a1, a4);
  return sub_18B9AEE94(v11, a2, v12, a4, a5);
}

uint64_t sub_18B9AF100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B987B10;

  return sub_18B9AD75C(a1, v4, v5, v6);
}

uint64_t sub_18B9AF388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4A60, &unk_18BC42730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B9AF3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_18B9AF444(__objc2_prot **a1, char a2)
{
  type metadata accessor for TabOverviewItemView();
  v120 = swift_dynamicCastClass();
  if (v120)
  {
    v4 = *(v2 + 24);
    if (v4 >> 62)
    {
      goto LABEL_56;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      do
      {
        v6 = v4;
        v118 = objc_opt_self();
        v115 = v5 - 1;
        if (v5 < 1)
        {
          __break(1u);
          return;
        }

        v117 = &v120[OBJC_IVAR___SFTabOverviewItemView_configuration];
        v7 = &v120[OBJC_IVAR___SFTabOverviewItemView_metrics];
        v116 = v6 & 0xC000000000000001;
        v8 = a1;
        v9 = v6;
        v113 = v8;
        v10 = 0;
        a1 = &_OBJC_LABEL_PROTOCOL___SFDialogViewPresenting;
        v11 = &selRef_progressTintColor;
        v114 = v6;
        while (1)
        {
          v121 = v10;
          if (v116)
          {
            v12 = MEMORY[0x18CFFD010](v10);
          }

          else
          {
            v12 = *(v9 + 8 * v10 + 32);
          }

          v13 = v12;
          if (!a2)
          {
            v26 = [v12 layer];
            v15 = [v120 layer];
            v27 = [v26 superlayer];
            if (v27)
            {
              v28 = v27;
              v29 = [v15 superlayer];
              if (v29)
              {
                v21 = v29;
                [v15 position];
                [v21 convertPoint:v28 toLayer:?];
                v31 = v30;
                v33 = v32;
                if ((CGFloatIsValid() & 1) != 0 && CGFloatIsValid())
                {
                  [v15 bounds];
                  [v26 setBounds_];
                  [v26 setPosition_];

LABEL_23:
                  goto LABEL_34;
                }

                v35 = [v28 ancestorSharedWithLayer_];
              }

              else
              {
              }

              goto LABEL_34;
            }

LABEL_27:
            goto LABEL_34;
          }

          if (a2 == 1)
          {
            v14 = [v12 layer];
            v15 = [v120 layer];
            v16 = [v15 presentationLayer];
            if (v16)
            {
              v17 = v16;

              v15 = v17;
            }

            v18 = [v14 superlayer];
            if (v18)
            {
              v19 = v18;
              v20 = [v15 superlayer];
              if (v20)
              {
                v21 = v20;
                [v15 position];
                [v21 convertPoint:v19 toLayer:?];
                v23 = v22;
                v25 = v24;
                if ((CGFloatIsValid() & 1) != 0 && CGFloatIsValid())
                {
                  [v15 bounds];
                  [v14 setBounds_];
                  [v14 setPosition_];

                  goto LABEL_23;
                }

                v34 = [v19 ancestorSharedWithLayer_];
              }

              else
              {
              }

LABEL_34:
              v11 = &selRef_progressTintColor;
              goto LABEL_35;
            }

            goto LABEL_27;
          }

          sub_18BB96BD8(v120);
LABEL_35:
          v36 = *v117;
          v37 = *(v117 + 2);
          v124 = *(v117 + 1);
          v125 = v37;
          v123 = v36;
          v38 = &v13[OBJC_IVAR___SFTabOverviewItemView_configuration];
          v40 = *&v13[OBJC_IVAR___SFTabOverviewItemView_configuration + 16];
          v39 = *&v13[OBJC_IVAR___SFTabOverviewItemView_configuration + 32];
          v151[0] = *&v13[OBJC_IVAR___SFTabOverviewItemView_configuration];
          v151[1] = v40;
          v151[2] = v39;
          v41 = *&v13[OBJC_IVAR___SFTabOverviewItemView_configuration];
          v42 = *&v13[OBJC_IVAR___SFTabOverviewItemView_configuration + 32];
          v126[1] = *&v13[OBJC_IVAR___SFTabOverviewItemView_configuration + 16];
          v126[2] = v42;
          v126[0] = v41;
          v43 = v123;
          v44 = v125;
          *(v38 + 1) = v124;
          *(v38 + 2) = v44;
          *v38 = v43;
          sub_18B9B0118(&v123, aBlock);
          sub_18B9B0118(v151, aBlock);
          sub_18B9B0174(v126);
          sub_18BB9DF7C(v151);
          sub_18B9B0174(v151);
          v46 = *v7;
          v45 = *(v7 + 1);
          v47 = *(v7 + 2);
          v48 = *(v7 + 136);
          v49 = *(v7 + 168);
          v135 = *(v7 + 152);
          v136 = v49;
          v50 = *(v7 + 23);
          v51 = *(v7 + 72);
          v52 = *(v7 + 104);
          v131 = *(v7 + 88);
          v132 = v52;
          v133 = *(v7 + 120);
          v134 = v48;
          v53 = *(v7 + 40);
          v127 = *(v7 + 24);
          v128 = v53;
          v129 = *(v7 + 56);
          v130 = v51;
          v55 = *(v7 + 24);
          v54 = *(v7 + 25);
          v56 = *(v7 + 26);
          v57 = &v13[OBJC_IVAR___SFTabOverviewItemView_metrics];
          v58 = *&v13[OBJC_IVAR___SFTabOverviewItemView_metrics + 136];
          v59 = *&v13[OBJC_IVAR___SFTabOverviewItemView_metrics + 168];
          v149[8] = *&v13[OBJC_IVAR___SFTabOverviewItemView_metrics + 152];
          v149[9] = v59;
          v60 = *&v13[OBJC_IVAR___SFTabOverviewItemView_metrics + 72];
          v61 = *&v13[OBJC_IVAR___SFTabOverviewItemView_metrics + 104];
          v149[4] = *&v13[OBJC_IVAR___SFTabOverviewItemView_metrics + 88];
          v149[5] = v61;
          v62 = *&v13[OBJC_IVAR___SFTabOverviewItemView_metrics + 120];
          v149[7] = v58;
          v149[6] = v62;
          v63 = *&v13[OBJC_IVAR___SFTabOverviewItemView_metrics + 40];
          v149[0] = *&v13[OBJC_IVAR___SFTabOverviewItemView_metrics + 24];
          v149[1] = v63;
          v149[2] = *&v13[OBJC_IVAR___SFTabOverviewItemView_metrics + 56];
          v149[3] = v60;
          v64 = v135;
          *(v57 + 136) = v134;
          v66 = v134;
          v65 = v135;
          *(v57 + 152) = v64;
          v67 = v136;
          *(v57 + 168) = v136;
          v68 = v131;
          *(v57 + 72) = v130;
          v69 = v130;
          *(v57 + 88) = v131;
          v70 = v133;
          *(v57 + 104) = v132;
          v71 = v132;
          *(v57 + 120) = v133;
          v72 = v128;
          *(v57 + 24) = v127;
          v73 = v127;
          *(v57 + 40) = v128;
          v74 = v129;
          *(v57 + 56) = v129;
          v137 = v50;
          v150 = *(v57 + 23);
          *(v57 + 23) = v50;
          v147[8] = v65;
          v147[9] = v67;
          *&v67 = *v57;
          v75 = *(v57 + 1);
          v147[4] = v68;
          v147[5] = v71;
          v76 = *(v57 + 2);
          v147[6] = v70;
          v147[7] = v66;
          v78 = *(v57 + 24);
          v77 = *(v57 + 25);
          v79 = *(v57 + 26);
          *v57 = v46;
          *(v57 + 1) = v45;
          *(v57 + 2) = v47;
          *(v57 + 24) = v55;
          *(v57 + 25) = v54;
          *(v57 + 26) = v56;
          v148 = v50;
          v147[0] = v73;
          v147[1] = v72;
          v147[2] = v74;
          v147[3] = v69;
          if (v46 != *&v67 || v45 != v75 || v47 != v76 || !sub_18BA1A2E4(v147, v149) || v55 != v78 || v54 != v77 || v56 != v79)
          {
            v80 = *&v13[OBJC_IVAR___SFTabOverviewItemView_thumbnailView];
            v81 = &v80[OBJC_IVAR___SFTabThumbnailView_metrics];
            v82 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
            v145[8] = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
            v145[9] = v82;
            v146 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 160];
            v83 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
            v145[4] = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
            v145[5] = v83;
            v84 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
            v145[6] = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 96];
            v145[7] = v84;
            v85 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
            v145[0] = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics];
            v145[1] = v85;
            v86 = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
            v145[2] = *&v80[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
            v145[3] = v86;
            memmove(&v80[OBJC_IVAR___SFTabThumbnailView_metrics], v57 + 24, 0xA8uLL);
            v87 = *(v81 + 9);
            v142 = *(v81 + 8);
            v143 = v87;
            v144 = *(v81 + 20);
            v88 = *(v81 + 5);
            v138[4] = *(v81 + 4);
            v139 = v88;
            v89 = *(v81 + 7);
            v140 = *(v81 + 6);
            v141 = v89;
            v90 = *(v81 + 1);
            v138[0] = *v81;
            v138[1] = v90;
            v91 = *(v81 + 3);
            v138[2] = *(v81 + 2);
            v138[3] = v91;
            if (!sub_18BA1A2E4(v138, v145))
            {
              v92 = *&v139;
              [v80 _setContinuousCornerRadius_];
              [*&v80[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView] _setContinuousCornerRadius_];
              [*&v80[OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView] _setContinuousCornerRadius_];
              [*&v80[OBJC_IVAR___SFTabThumbnailView_contentView] _setContinuousCornerRadius_];
              [*&v80[OBJC_IVAR___SFTabThumbnailView_shadowView] _setContinuousCornerRadius_];
              [*&v80[OBJC_IVAR___SFTabThumbnailView_snapshotContainerView] _setContinuousCornerRadius_];
              [*&v80[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] _setContinuousCornerRadius_];
              [v80 setNeedsLayout];
              sub_18BA17E30();
            }

            [v13 setNeedsLayout];
          }

          v93 = *&v13[OBJC_IVAR___SFTabOverviewItemView_thumbnailView];
          v94 = OBJC_IVAR___SFTabThumbnailView_controlsVisibility;
          v95 = *&v93[OBJC_IVAR___SFTabThumbnailView_controlsVisibility];
          *&v93[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = 0x3FF0000000000000;
          if (v95 == 1.0)
          {
            v96 = v93;
          }

          else
          {
            v97 = *&v93[OBJC_IVAR___SFTabThumbnailView_controlsContainerView];
            v98 = v93;
            [v97 v11[411]];
            v99 = sub_18B7DE654();
            [v99 setValue_];

            v100 = *&v98[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
            if (*&v98[OBJC_IVAR___SFTabThumbnailView_configuration + 24] == 1)
            {
              [v100 v11[411]];
            }

            else
            {
              [v100 v11[411]];
            }
          }

          v101 = *&v93[OBJC_IVAR___SFTabThumbnailView_controlsContainerView];
          v102 = sub_18B7DE654();
          [v102 value];
          v104 = v103;

          v105 = swift_allocObject();
          *(v105 + 16) = v101;
          *(v105 + 24) = v104;
          v106 = swift_allocObject();
          *(v106 + 16) = sub_18B7EA1B8;
          *(v106 + 24) = v105;
          v107 = swift_allocObject();
          *(v107 + 16) = sub_18B7D1EC4;
          *(v107 + 24) = v106;
          aBlock[4] = sub_18B7D1E94;
          aBlock[5] = v107;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_18B7E3BF4;
          aBlock[3] = &block_descriptor_3;
          v108 = _Block_copy(aBlock);
          v109 = v101;
          sub_18BC1E1A8();
          sub_18BC1E1A8();

          [v118 performWithoutAnimation_];

          _Block_release(v108);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            break;
          }

          [v13 layoutIfNeeded];

          if (v115 == v121)
          {

            return;
          }

          v10 = v121 + 1;
          v9 = v114;
          v11 = &selRef_progressTintColor;
        }

        __break(1u);
LABEL_56:
        v111 = v4;
        v112 = sub_18BC219A8();
        v4 = v111;
        v5 = v112;
      }

      while (v112);
    }
  }
}

void sub_18B9AFE9C()
{
  if (*(v0 + 48) == 1)
  {
    v1 = *(v0 + 32);
    v2 = sub_18BC1E1A8();
    v1(v2);

    *(v0 + 48) = 0;
    v3 = *(v0 + 24);
    if (v3 >> 62)
    {
      v4 = sub_18BC219A8();
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        return;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x18CFFD010](i, v3);
        }

        else
        {
          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        [v6 removeFromSuperview];
      }
    }
  }
}

void sub_18B9AFF84()
{
  if (*(v0 + 48) == 1)
  {
    v1 = *(v0 + 32);
    v2 = sub_18BC1E1A8();
    v1(v2);

    *(v0 + 48) = 0;
    v3 = *(v0 + 24);
    if (v3 >> 62)
    {
      v4 = sub_18BC219A8();
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x18CFFD010](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }

LABEL_11:
  swift_weakDestroy();

  swift_deallocClassInstance();
}

double sub_18B9B00C8(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

id static SFEditBookmarkCollectionViewController.editBookmark(_:folderListProvider:parentFolderProvider:saveHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v49 = a7;
  v45[0] = a5;
  v46 = a2;
  v47 = a4;
  v9 = sub_18BC1EE48();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 isFolder];
  sub_18BC1EE38();
  v45[1] = sub_18BC1EE28();
  (*(v10 + 8))(v13, v9);
  v14 = type metadata accessor for SFEditBookmarkCollectionViewController();
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_collectionLayout;
  v17 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  aBlock[4] = sub_18B9B07C0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B9B53C0;
  aBlock[3] = &block_descriptor_4;
  v18 = _Block_copy(aBlock);
  v19 = [v17 initWithSectionProvider_];
  _Block_release(v18);

  *&v15[v16] = v19;
  v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isDeletingBookmark] = 0;
  v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders] = 0;
  *&v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem] = 0;
  *&v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_suggestedFolders] = MEMORY[0x1E69E7CC0];
  *&v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_titleField] = 0;
  v20 = &v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_deleteHandler];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_debugDistanceToNewBookmark];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_additionalDebugText];
  *v22 = 0;
  v22[1] = 0;
  *&v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController____lazy_storage___collectionDataSource] = 0;
  *&v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_bookmark] = a1;
  v23 = a1;
  if ([v23 isFolder])
  {
    v24 = 0xE100000000000000;
    v25 = 46;
  }

  else
  {
    v26 = [v23 address];
    v25 = sub_18BC20BD8();
    v24 = v27;
  }

  v28 = &v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_currentAddress];
  *v28 = v25;
  v28[1] = v24;
  v29 = [v23 title];
  v30 = sub_18BC20BD8();
  v32 = v31;

  v33 = &v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_currentTitle];
  *v33 = v30;
  v33[1] = v32;
  v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_shouldSaveAtDismissal] = 1;
  v34 = [v23 &selRef_is2024ReadingListEnabled];
  v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_showsTabGroupFavorites] = v34 ^ 1;
  v35 = &v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_folderListProvider];
  v36 = v47;
  *v35 = v46;
  v35[1] = a3;
  v37 = &v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_parentFolderProvider];
  v38 = v45[0];
  *v37 = v36;
  v37[1] = v38;
  v39 = &v15[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_saveHandler];
  v40 = v49;
  *v39 = v48;
  v39[1] = v40;
  v41 = *&v15[v16];
  v50.receiver = v15;
  v50.super_class = v14;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  v42 = objc_msgSendSuper2(&v50, sel_initWithCollectionViewLayout_, v41);
  v43 = sub_18BC20B98();

  [v42 setTitle_];

  return v42;
}

id SFEditBookmarkCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

BOOL sub_18B9B068C()
{
  sub_18BC1E3F8();
  v0 = sub_18BC20B98();

  v1 = [v0 safari_stringByTrimmingWhitespace];

  v2 = sub_18BC20BD8();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  sub_18BC1E3F8();
  v6 = sub_18BC20B98();

  v7 = [v6 safari_stringByTrimmingWhitespace];

  v8 = sub_18BC20BD8();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v11 != 0;
}

uint64_t sub_18B9B07C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_18BC1FEB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1FEA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1FF18();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC238], v6, v12);
  sub_18BC1FEC8();
  v15 = [objc_opt_self() clearColor];
  sub_18BC1FEF8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC280], v2);
  sub_18BC1FED8();
  sub_18B7B0AC0(0, &unk_1EA9D7FE0, 0x1E6995580);
  v16 = sub_18BC21498();
  (*(v11 + 8))(v14, v10);
  return v16;
}

double sub_18B9B0A38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_suggestedFolders;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_18BC1E3F8();

  return result;
}

double sub_18B9B0AA0()
{
  swift_beginAccess();
  sub_18BC1E3F8();
  return result;
}

double sub_18B9B0AE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_suggestedFolders;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double sub_18B9B0BA0@<D0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_deleteHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_18B9B8844;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_18B824D48(v4, v5);
}

uint64_t sub_18B9B0C40(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9B880C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_deleteHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_18B824D48(v3, v4);
  return sub_18B7B171C(v8, v9);
}

double sub_18B9B0DA8@<D0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_debugDistanceToNewBookmark);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_18B9B87D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_18B824D48(v4, v5);
}

uint64_t sub_18B9B0E48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9B878C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_debugDistanceToNewBookmark);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_18B824D48(v3, v4);
  return sub_18B7B171C(v8, v9);
}

double sub_18B9B0FB0@<D0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_additionalDebugText);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_18B9B875C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_18B824D48(v4, v5);
}

uint64_t sub_18B9B1050(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9B8724;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_additionalDebugText);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_18B824D48(v3, v4);
  return sub_18B7B171C(v8, v9);
}

uint64_t sub_18B9B1138(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_18B9B11C0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_18B9B1284()
{
  v1 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController____lazy_storage___collectionDataSource;
  v2 = *&v0[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController____lazy_storage___collectionDataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController____lazy_storage___collectionDataSource];
  }

  else
  {
    v4 = sub_18B9B12E8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18B9B12E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570, &qword_18BC3E440);
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v65 = v3;
  v66 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v79 = v57 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D20, &qword_18BC42A30);
  v77 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v73 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D28, &qword_18BC42A38);
  v11 = *(v10 - 8);
  v63 = v10;
  v64 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v72 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = v57 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v70 = v57 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v57 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v57 - v21;
  v61 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v57 - v25;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D30, &qword_18BC42A40);
  v75 = *(v80 - 8);
  v27 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v60 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v57 - v29;
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18B7B0AC0(0, &qword_1EA9D64E0, 0x1E69DC7F8);
  v74 = v30;
  sub_18BC21298();
  sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
  v76 = v26;
  sub_18BC21298();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s10FolderCellCMa(0);
  sub_18B7B0AC0(0, &qword_1EA9D4BD0, off_1E7219010);
  v78 = v9;
  sub_18BC21298();
  sub_18BC20BD8();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18BC212A8();
  v69 = v22;
  sub_18BC21298();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v31 = v19;
  sub_18BC21298();
  result = [a1 collectionView];
  v59 = result;
  if (result)
  {
    v57[1] = a1;
    swift_unknownObjectUnownedInit();
    swift_unknownObjectUnownedDestroy();
    v33 = v75;
    v34 = v60;
    (*(v75 + 16))(v60, v74, v80);
    v36 = v63;
    v35 = v64;
    v37 = *(v64 + 16);
    v37(v70, v76, v63);
    v38 = v77;
    (*(v77 + 16))(v73, v78, v81);
    v37(v71, v69, v36);
    v58 = v31;
    v37(v72, v31, v36);
    v39 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v40 = *(v35 + 80);
    v41 = (v27 + v40 + v39) & ~v40;
    v42 = (v61 + *(v38 + 80) + v41) & ~*(v38 + 80);
    v43 = (v62 + v40 + v42) & ~v40;
    v44 = (v61 + v40 + v43) & ~v40;
    v45 = swift_allocObject();
    (*(v33 + 32))(v45 + v39, v34, v80);
    v46 = *(v35 + 32);
    v46(v45 + v41, v70, v36);
    v47 = v77;
    (*(v77 + 32))(v45 + v42, v73, v81);
    v46(v45 + v43, v71, v36);
    v46(v45 + v44, v72, v36);
    v48 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D38, &qword_18BC42A48));
    v49 = sub_18BC1FCE8();
    swift_unknownObjectUnownedInit();
    v51 = v66;
    v50 = v67;
    v52 = v79;
    v53 = v68;
    (*(v67 + 16))(v66, v79, v68);
    v54 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v55 = swift_allocObject();
    (*(v50 + 32))(v55 + v54, v51, v53);
    sub_18BC1FD08();
    swift_unknownObjectUnownedDestroy();
    v56 = *(v35 + 8);
    v56(v58, v36);
    v56(v69, v36);
    (*(v50 + 8))(v52, v53);
    (*(v47 + 8))(v78, v81);
    v56(v76, v36);
    (*(v75 + 8))(v74, v80);
    return v49;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18B9B1BD4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if (*a3 > 1)
  {
    if (v8 == 2)
    {
      v14 = 2;
      v9 = &qword_1EA9D3580;
      v10 = 0x1E69DC868;
      goto LABEL_11;
    }

    if (v8 == 3)
    {
      v14 = 3;
      v9 = &qword_1EA9D3580;
      v10 = 0x1E69DC868;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v8)
    {
      v14 = 0;
      v9 = &qword_1EA9D64E0;
      v10 = 0x1E69DC7F8;
      goto LABEL_11;
    }

    if (v8 == 1)
    {
      v14 = 1;
      v9 = &qword_1EA9D3580;
      v10 = 0x1E69DC868;
LABEL_11:
      sub_18B7B0AC0(0, v9, v10);
      v12 = sub_18BC212B8();
      sub_18B9B83C0(v14);
      return v12;
    }
  }

  _s10FolderCellCMa(0);
  sub_18B7B0AC0(0, &qword_1EA9D4BD0, off_1E7219010);
  v11 = v8;
  v12 = sub_18BC212B8();
  sub_18B9B8318(v8);
  return v12;
}

uint64_t sub_18B9B1D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE30, &qword_18BC42A50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-1] - v5;
  sub_18BC1F7A8();
  v7 = sub_18BC1F7B8();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  MEMORY[0x18CFFC920](v6);
  sub_18B9B1E30(v10);
  return MEMORY[0x18CFFC900](v10);
}

uint64_t sub_18B9B1E30@<X0>(uint64_t *a2@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_bookmark];

  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = *&v4[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_currentTitle + 8];
  v25 = *&v4[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_currentTitle];
  sub_18BC1E3F8();
  swift_bridgeObjectRelease_n();

  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = *(v6 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_bookmark);

  LOBYTE(v6) = [v7 isFolder];
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = swift_unknownObjectUnownedLoadStrong();
    v8 = *&v12[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_currentAddress];
    v9 = *&v12[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_currentAddress + 8];
    sub_18BC1E3F8();
    swift_bridgeObjectRelease_n();

    v11 = 0x800000018BC62010;
    v10 = 0xD000000000000010;
  }

  v13 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  sub_18B7B171C(0, 0);
  v14 = swift_allocObject();
  v15 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  sub_18B7B171C(0, 0);
  v16 = swift_allocObject();
  v17 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  MEMORY[0x18CFFF000](v35);
  *&v28 = v3;
  *(&v28 + 1) = v25;
  *v29 = v5;
  strcpy(&v29[8], "TitleTextField");
  v29[23] = -18;
  *&v29[24] = v8;
  *&v30 = v9;
  *(&v30 + 1) = v10;
  *&v32 = 0;
  v31 = v11;
  *(&v32 + 1) = sub_18B9B8A88;
  *&v33 = v14;
  *(&v33 + 1) = sub_18B9B8A94;
  v34 = v16;
  a2[3] = &_s33InfoEntryCellContentConfigurationVN;
  a2[4] = sub_18B9ACED0();
  v18 = swift_allocObject();
  v19 = v32;
  v20 = v33;
  v21 = v30;
  *(v18 + 80) = v31;
  *(v18 + 96) = v19;
  *(v18 + 112) = v20;
  v22 = *v29;
  v23 = *&v29[16];
  *(v18 + 16) = v28;
  *(v18 + 32) = v22;
  *a2 = v18;
  *(v18 + 128) = v34;
  *(v18 + 48) = v23;
  *(v18 + 64) = v21;
  v35[0] = v3;
  v35[1] = v25;
  v35[2] = v5;
  strcpy(v36, "TitleTextField");
  v36[15] = -18;
  v37 = v8;
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v41 = 0;
  v42 = 0;
  v43 = sub_18B9B8A88;
  v44 = v14;
  v45 = sub_18B9B8A94;
  v46 = v16;
  sub_18B9ACF24(&v28, v27);
  return sub_18B9ACEA0(v35);
}

void sub_18B9B2150(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = &OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_currentAddress;
    if ((a1 & 1) == 0)
    {
      v9 = &OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_currentTitle;
    }

    v10 = (Strong + *v9);
    *v10 = a2;
    v10[1] = a3;

    sub_18BC1E3F8();
    sub_18B9B3A4C();
  }
}

void sub_18B9B21EC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders);
    *(Strong + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders) = 0;
    if (v3 == 1)
    {
      sub_18B9B3268(1);
    }
  }
}

uint64_t sub_18B9B2294@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = sub_18BC1FA08();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F9A8();
  v12 = sub_18BC20B98();
  v13 = [objc_opt_self() systemImageNamed_];

  sub_18BC1F9D8();
  sub_18BC1EE38();
  sub_18BC1EE38();
  sub_18BC1EE18();
  v14 = *(v2 + 8);
  v14(v4, v1);
  v14(v7, v1);
  sub_18BC1F9B8();
  v15 = [objc_opt_self() systemBlueColor];
  v16 = sub_18BC1F8A8();
  sub_18BC1F858();
  v16(v23, 0);
  v17 = MEMORY[0x1E69DC110];
  v18 = v22;
  v22[3] = v8;
  v18[4] = v17;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v18);
  return (*(v9 + 32))(boxed_opaque_existential_0Tm, v11, v8);
}

void sub_18B9B2568(char *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = *a3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = Strong[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders];

  if (v7 == 1)
  {
    v8 = [v5 depth];
  }

  else
  {
    v8 = 0;
  }

  [a1 setIndentationLevel_];
  sub_18BB6FD90([v5 bookmark]);
  sub_18BB6FD74([v5 icon]);
  v9 = [v5 title];
  v10 = sub_18BC20BD8();
  v12 = v11;

  v13 = &a1[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_title];
  v14 = *&a1[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_title];
  v15 = *&a1[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_title + 8];
  *v13 = v10;
  *(v13 + 1) = v12;
  if (!v15 || (v10 == v14 ? (v16 = v15 == v12) : (v16 = 0), !v16 && (sub_18BC21FD8() & 1) == 0))
  {
    [a1 setNeedsUpdateConfiguration];
  }

  v17 = swift_unknownObjectUnownedLoadStrong();
  v18 = *&v17[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem];
  v19 = v18;
  v20 = v5;

  if (v18)
  {
    sub_18B7B0AC0(0, &qword_1EA9D4BD0, off_1E7219010);
    v21 = sub_18BC215C8();

    v22 = a1[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_showsCheckmark];
    a1[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_showsCheckmark] = v21 & 1;
    if ((v21 & 1) == v22)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v23 = a1[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_showsCheckmark];
  a1[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_showsCheckmark] = 0;
  if (v23)
  {
LABEL_13:
    [a1 setNeedsUpdateConfiguration];
  }

LABEL_14:
  v24 = sub_18BC20B98();
  [a1 setAccessibilityIdentifier_];
}

void sub_18B9B27B4(void *a1)
{
  sub_18B9B2834(v3);
  MEMORY[0x18CFFC900](v3);
  v2 = sub_18BC20B98();
  [a1 setAccessibilityIdentifier_];
}

uint64_t sub_18B9B2834@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v19 = sub_18BC1F7F8();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EE48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1FA08();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F9A8();
  sub_18BC1EE38();
  sub_18BC1EE28();
  (*(v5 + 8))(v7, v4);
  sub_18BC1F9B8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69DC100], v19);
  v12 = sub_18BC1F8A8();
  sub_18BC1F868();
  v12(v21, 0);
  v13 = [objc_opt_self() systemBlueColor];
  v14 = sub_18BC1F8A8();
  sub_18BC1F858();
  v14(v21, 0);
  v15 = MEMORY[0x1E69DC110];
  v16 = v20;
  v20[3] = v8;
  v16[4] = v15;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v16);
  return (*(v9 + 32))(boxed_opaque_existential_0Tm, v11, v8);
}

uint64_t sub_18B9B2B20(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_18BC1FA08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18BC1F9A8();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = &Strong[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_additionalDebugText];
  swift_beginAccess();
  v12 = *v10;
  v11 = *(v10 + 1);
  sub_18B824D48(v12, v11);

  if (v12)
  {
    v12();
    sub_18B7B171C(v12, v11);
    sub_18BC1F9B8();
  }

  v16[3] = v5;
  v16[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v16);
  (*(v6 + 32))(boxed_opaque_existential_0Tm, v8, v5);
  return MEMORY[0x18CFFC900](v16);
}

uint64_t sub_18B9B2C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = sub_18B9B1284();

  sub_18BC1EDC8();
  sub_18BC1FD38();

  result = LOBYTE(v8[0]);
  if (LOBYTE(v8[0]) != 7)
  {
    sub_18B9B2D10(v8[0], v8);
    return MEMORY[0x18CFFC900](v8);
  }

  return result;
}

uint64_t sub_18B9B2D10@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = sub_18BC1EE48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = sub_18BC1FA08();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F9E8();
  if (a1 == 4)
  {
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE18();
    v20 = a2;
    v15 = *(v5 + 8);
    v15(v7, v4);
    v15(v10, v4);
    a2 = v20;
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    sub_18BC1EE38();
    sub_18BC1EE28();
    (*(v5 + 8))(v10, v4);
LABEL_5:
    sub_18BC1F9B8();
  }

  v16 = MEMORY[0x1E69DC110];
  a2[3] = v11;
  a2[4] = v16;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return (*(v12 + 32))(boxed_opaque_existential_0Tm, v14, v11);
}

void sub_18B9B2FA8()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SFEditBookmarkCollectionViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  [v1 setAllowsMultipleSelectionDuringEditing_];

  v3 = [v0 collectionView];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() systemGroupedBackgroundColor];
  [v4 setBackgroundColor_];

  v6 = [v0 collectionView];
  if (v6)
  {
    v7 = v6;
    v8 = sub_18BC20B98();
    [v7 setAccessibilityIdentifier_];

    sub_18B9B3268(1);
    sub_18B9B3A4C();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_18B9B3268(int a1)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4BB0, &qword_18BC42840);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - v5;
  v7 = sub_18B9B8270();
  sub_18B9B82C4();
  sub_18BC1FB28();
  sub_18BC1FA88();
  LOBYTE(v53) = 7;
  v45 = v6;
  sub_18BC1FA38();
  v8 = (*(v2 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_folderListProvider))(*(v2 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_showsTabGroupFavorites));
  v46 = v2;
  sub_18B9B3968(v8);
  if (v8 >> 62)
  {
    goto LABEL_16;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v4; v9; i = v4)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_18B9B6828(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      goto LABEL_56;
    }

    v7 = 0;
    v4 = v53;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x18CFFD010](v7, v8);
        goto LABEL_10;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v10 = *(v8 + 8 * v7 + 32);
LABEL_10:
      v53 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        v13 = v10;
        sub_18B9B6828((v11 > 1), v12 + 1, 1);
        v10 = v13;
        v4 = v53;
      }

      ++v7;
      *(v4 + 16) = v12 + 1;
      *(v4 + 8 * v12 + 32) = v10;
      if (v9 == v7)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v9 = sub_18BC219A8();
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v15 = v45;
  v14 = v46;
  if (*(v46 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders))
  {
    sub_18BC1FA88();
    LOBYTE(v53) = 7;
    sub_18BC1FA38();
    sub_18BC1FA88();
    LOBYTE(v53) = 7;
    sub_18BC1FA38();
    sub_18BC1FAF8();

    v16 = i;
    goto LABEL_52;
  }

  v17 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_suggestedFolders;
  swift_beginAccess();
  v7 = *(v14 + v17);
  if (v7 >> 62)
  {
    goto LABEL_57;
  }

  *&v51 = v7 & 0xFFFFFFFFFFFFFF8;
  v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
  v41 = v3;
  sub_18BC1E3F8();
  v42 = v7;
  if (v18)
  {
    v3 = 0;
    v49 = v7 + 32;
    v50 = v7 & 0xC000000000000001;
    v47 = MEMORY[0x1E69E7CC0];
    v48 = v18;
    while (1)
    {
      if (v50)
      {
        v20 = MEMORY[0x18CFFD010](v3, v42);
      }

      else
      {
        if (v3 >= *(v51 + 16))
        {
          goto LABEL_55;
        }

        v20 = *(v49 + 8 * v3);
      }

      v7 = v20;
      if (__OFADD__(v3++, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        *&v51 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = sub_18BC219A8();
        goto LABEL_22;
      }

      v22 = *(v4 + 16);
      if (!v22)
      {
LABEL_24:

        v19 = v48;
        goto LABEL_25;
      }

      v23 = 0;
      while (1)
      {
        if (v23 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_54;
        }

        v24 = *(v4 + 32 + 8 * v23);
        if (v24 >= 4)
        {
          break;
        }

LABEL_33:
        if (v22 == ++v23)
        {
          goto LABEL_24;
        }
      }

      v25 = [v24 bookmark];
      if (!v25)
      {
        break;
      }

      v26 = v25;
      sub_18B7B0AC0(0, &qword_1EA9D7E10, 0x1E69E20F0);
      v27 = v7;
      v28 = sub_18BC215C8();

      if ((v28 & 1) == 0)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_18B9B5900(0, *(v47 + 2) + 1, 1, v47);
      }

      v19 = v48;
      v30 = *(v47 + 2);
      v29 = *(v47 + 3);
      v7 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v47 = sub_18B9B5900((v29 > 1), v30 + 1, 1, v47);
      }

      v31 = v47;
      *(v47 + 2) = v7;
      *&v31[8 * v30 + 32] = v24;
LABEL_25:
      if (v3 == v19)
      {
        goto LABEL_45;
      }
    }

    sub_18B9B8318(v24);
    goto LABEL_33;
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_45:

  v33 = v47;
  v34 = *(v46 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem);
  v3 = v41;
  if (v34)
  {
    v52 = *(v46 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem);
    MEMORY[0x1EEE9AC00](v32);
    *(&v41 - 2) = &v52;
    v35 = v34;
    if (sub_18B9B5078(sub_18B9B8328, (&v41 - 4), v33))
    {
    }

    else
    {
      sub_18BC1FA88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4BC8, &qword_18BC42848);
      v36 = swift_allocObject();
      v51 = xmmword_18BC3E410;
      *(v36 + 16) = xmmword_18BC3E410;
      *(v36 + 32) = v34;
      LOBYTE(v52) = 7;
      v37 = v35;
      sub_18BC1FA38();

      v38 = swift_allocObject();
      *(v38 + 16) = v51;
      *(v38 + 32) = v34;
      sub_18BC1FAF8();
    }
  }

  v15 = v45;
  if (*(v33 + 2))
  {
    sub_18BC1FA88();
    LOBYTE(v52) = 7;
    sub_18BC1FA38();
    sub_18BC1FAF8();
  }

  LOBYTE(v52) = 7;
  sub_18BC1FA38();
  v16 = i;
LABEL_52:
  v39 = sub_18B9B1284();
  sub_18BC1FDC8();

  return (*(v16 + 8))(v15, v3);
}

void sub_18B9B3968(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem;
  if (!*(v1 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem) || (v10 = *(v1 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem), MEMORY[0x1EEE9AC00](a1), v9[2] = &v10, v5 = v4, v6 = sub_18B9B5298(sub_18B9B8A9C, v9, a1), v5, (v6 & 1) == 0))
  {
    v7 = (*(v1 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_parentFolderProvider))(a1);
    v8 = *(v1 + v3);
    *(v1 + v3) = v7;
  }
}

void sub_18B9B3A4C()
{
  v1 = v0;
  sub_18B7B0AC0(0, &unk_1EA9D35A0, 0x1E69DC708);
  sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18BC215E8();
  v3 = sub_18BC21268();
  [v3 setEnabled_];
  v4 = v3;
  v5 = sub_18BC20B98();
  [v4 setAccessibilityIdentifier_];

  v6 = [v1 navigationItem];
  [v6 setRightBarButtonItem_];

  v7 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_deleteHandler;
  swift_beginAccess();
  if (*&v1[v7])
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:v1 action:sel_deleteBookmark];
    v9 = [objc_opt_self() systemRedColor];
    [v8 setTintColor_];
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancel];
  }

  v10 = [v1 navigationItem];
  v11 = v8;
  [v10 setLeftBarButtonItem_];
}

void sub_18B9B3CC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_18B9B3D1C();
  }
}

void sub_18B9B3D1C()
{
  v1 = v0;
  v2 = sub_18BC1EB88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_bookmark);
  sub_18BC1E3F8();
  v7 = sub_18BC20B98();

  v8 = [v7 safari_stringByTrimmingWhitespace];

  if (!v8)
  {
    sub_18BC20BD8();
    v8 = sub_18BC20B98();
  }

  [v6 setTitle_];

  if (([v6 isFolder] & 1) == 0)
  {
    sub_18BC1E3F8();
    v9 = sub_18BC20B98();

    v10 = [v9 safari_stringByTrimmingWhitespace];

    if (!v10)
    {
      sub_18BC20BD8();
      v10 = sub_18BC20B98();
    }

    [v6 setAddress_];
  }

  v11 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem;
  v12 = *(v1 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem);
  if (v12)
  {
    v13 = [v12 bookmark];
    if (v13)
    {
      v14 = v13;
      v25 = v3;
      v15 = objc_opt_self();
      v16 = [v15 safari_browserDefaults];
      v17 = [v14 UUID];
      if (!v17)
      {
        sub_18BC20BD8();
        v17 = sub_18BC20B98();
      }

      [v16 setObject:v17 forKey:@"LastSelectedBookmarksFolder"];

      v18 = [v15 safari_browserDefaults];
      v19 = [objc_opt_self() now];
      sub_18BC1EB58();

      v20 = sub_18BC1EB18();
      (*(v25 + 8))(v5, v2);
      [v18 setObject:v20 forKey:@"LastSelectedBookmarksFolderTime"];
    }
  }

  v21 = *(v1 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_saveHandler);
  v22 = *(v1 + v11);
  v23 = v22;
  v21(v1, v6, v22);
}

void sub_18B9B4240(void *a1, uint64_t a2)
{
  v3 = v2;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_18BC1EDD8();
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4BB0, &qword_18BC42840);
  v49 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = sub_18B9B1284();
  sub_18BC1EDC8();
  sub_18BC1FD38();

  v14 = v52;
  if (v52 != 7)
  {
    v48 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController____lazy_storage___collectionDataSource;
    v15 = *&v2[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController____lazy_storage___collectionDataSource];
    sub_18BC1FD18();

    v16 = v52;
    if (v52 != 4)
    {
      v17 = sub_18BC1ED68();
      v18 = v51;
      [v51 deselectItemAtIndexPath:v17 animated:1];

      v19 = [v18 firstResponder];
      [v19 resignFirstResponder];

      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v30 = v3[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders];
          v3[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders] = 1;
          if ((v30 & 1) == 0)
          {
            sub_18B9B3268(1);
          }

          goto LABEL_25;
        }

        if (v16 == 3)
        {
          return;
        }
      }

      else
      {
        if (!v16)
        {
          return;
        }

        if (v16 == 1)
        {
          v20 = [objc_allocWithZone(MEMORY[0x1E69E20F0]) initFolderWithParentID:*MEMORY[0x1E69E20C0] collectionType:0];
          v21 = *&v3[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_folderListProvider];
          v22 = *&v3[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_folderListProvider + 8];
          v23 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v24 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_18BC1E1A8();
          sub_18BC1E1A8();
          v25 = _s12MobileSafari38SFEditBookmarkCollectionViewControllerC03newD0_18folderListProvider012parentFolderK011saveHandlerACSo03WebD0C_SaySo19_SFFolderPickerItemCGSbcAKSgALcySo06UIViewG0C_AiMtctFZ_0(v20, v21, v22, sub_18B9B83F0, v23, sub_18B9B83F8, v24);

          v26 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
          [v3 presentViewController:v26 animated:1 completion:0];

LABEL_25:
          v41 = *&v3[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem];
          if (v41)
          {
            v42 = *&v3[v48];
            v52 = *&v3[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem];
            v43 = v41;
            v44 = v42;
            sub_18BC1FE08();

            sub_18B9B8318(v52);
            v45 = v50;
            if ((*(v50 + 48))(v6, 1, v7) == 1)
            {

              sub_18B9B83C0(v16);
              sub_18B9A7AC4(v6);
            }

            else
            {
              (*(v45 + 32))(v9, v6, v7);
              v46 = sub_18BC1ED68();
              [v51 scrollToItemAtIndexPath:v46 atScrollPosition:4 animated:1];

              sub_18B9B83C0(v16);
              (*(v45 + 8))(v9, v7);
            }
          }

          else
          {
            sub_18B9B83C0(v16);
          }

          return;
        }
      }

      if ((v14 - 3) >= 2)
      {
        if (v14 == 2)
        {
          v31 = *&v3[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem];
          *&v3[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem] = v16;
          sub_18B9B83D0(v16);
          sub_18B9B83E0(v16);

          v32 = v3[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders];
          v3[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders] = 0;
          if (v32)
          {
            sub_18B9B3268(1);
          }

          sub_18B9B83C0(v16);
        }
      }

      else
      {
        v47 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem;
        v27 = *&v3[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem];
        if (v27)
        {
          sub_18B7B0AC0(0, &qword_1EA9D4BD0, off_1E7219010);
          sub_18B9B83D0(v16);
          sub_18B9B83D0(v16);
          sub_18B9B83D0(v16);
          v28 = v27;
          v29 = sub_18BC215C8();
          sub_18B9B83C0(v16);

          if (v29)
          {
            sub_18B9B83C0(v16);
            sub_18B9B83C0(v16);
            sub_18B9B8318(v16);
            return;
          }
        }

        else
        {
          sub_18B9B83D0(v16);
          sub_18B9B83E0(v16);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4BC8, &qword_18BC42848);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_18BC3E410;
        *(v33 + 32) = v16;
        v34 = *&v3[v47];
        if (v34)
        {
          sub_18B9B83D0(v16);
          v35 = v34;
          v36 = sub_18B9B5900(1, 2, 1, v33);
          *(v36 + 2) = 2;
          *(v36 + 5) = v34;
        }

        else
        {
          sub_18B9B83E0(v16);
        }

        v37 = *&v3[v47];
        *&v3[v47] = v16;

        v38 = v48;
        v39 = *&v3[v48];
        sub_18BC1FDF8();

        sub_18BC1FAF8();

        v40 = *&v3[v38];
        sub_18BC1FDC8();

        sub_18B9B83C0(v16);
        (*(v49 + 8))(v12, v10);
      }

      goto LABEL_25;
    }
  }
}

void *sub_18B9B492C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = *(Strong + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem);
  v4 = Strong;
  v5 = v3;

  return v3;
}

void sub_18B9B4998(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_saveHandler);
    sub_18BC1E1A8();
    v9(a1, a2, a3);

    v10 = [v8 presentedViewController];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 isBeingDismissed];

      if (v12)
      {
        v13 = (*&v8[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_folderListProvider])(0);
        v14 = v13;
        v29 = v8;
        if (v13 >> 62)
        {
          goto LABEL_19;
        }

        for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18BC219A8())
        {
          v16 = 0;
          v17 = &selRef_contentOffsetForScrollingToDroppingItems;
          while (1)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x18CFFD010](v16, v14);
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_18;
              }

              v18 = *(v14 + 8 * v16 + 32);
            }

            v19 = v18;
            v20 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            v21 = [v18 bookmark];
            v22 = v17[479];
            if (v21)
            {
              v23 = v17;
              v24 = a2;
              v25 = v21;
              v26 = [v21 v22];

              a2 = v24;
              v17 = v23;
              if (v26 == [a2 v23 + 1656])
              {

                goto LABEL_21;
              }
            }

            else
            {
              [a2 v22];
            }

            ++v16;
            if (v20 == i)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          ;
        }

LABEL_20:

        v19 = 0;
LABEL_21:
        v8 = v29;
        v27 = *&v29[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem];
        *&v29[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem] = v19;

        v28 = v29[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders];
        v29[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders] = 0;
        if (v28 == 1)
        {
          sub_18B9B3268(1);
        }
      }
    }
  }
}

id SFEditBookmarkCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id SFEditBookmarkCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_18BC20B98();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SFEditBookmarkCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFEditBookmarkCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B9B4FCC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_18BC1E3F8();
      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_18B9B5078(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_18B9B83E0(v9);
      v10 = a1(&v12);
      sub_18B9B8318(v12);
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_18B9B5118(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v13 = v8;
      v14 = v9;
      sub_18B9B8870(v8, v9);
      v10 = a1(&v13);
      sub_18B9B8894(v8, v9);
      if (v3)
      {
        break;
      }

      v7 += 16;
      v11 = v6-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_18B9B51DC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 64);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 16);
      v14 = *(v7 - 2);
      v15 = v10;
      v16 = v8;
      v17 = v9;
      sub_18BC1E3F8();
      v11 = a1(&v14);

      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 5;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_18B9B5298(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x18CFFD010](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_18BC219A8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

id sub_18B9B53C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  sub_18BC1E1A8();
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

char *sub_18B9B5464(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4CC0, &qword_18BC429B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18B9B5584(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D48, &qword_18BC42A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D50, &qword_18BC42A68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18B9B56CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4CB0, &qword_18BC429A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4CB8, &qword_18BC429B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B5900(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4BC8, &qword_18BC42848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B5A0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9290, &qword_18BC428F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B5B34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C08, &qword_18BC428E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B5C8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10, &qword_18BC3EFC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B5DB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C80, &qword_18BC429E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18B9B5EC4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D08, &qword_18BC42A08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for SFBrowsingAssistantMenuAction(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B6008(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_18B9B6150(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D10, &qword_18BC42A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B62B0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_18B9B63D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA1C0, &qword_18BC404A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B64DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4CE0, &qword_18BC429D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18B9B65FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B69E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18B9B661C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B6B28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18B9B663C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B6C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18B9B665C(void *a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9D4D40, &qword_18BC42A58, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

char *sub_18B9B66A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B6D8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18B9B66C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B6E9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18B9B66E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B6FA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18B9B6700(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B70A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18B9B6720(void *a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9D6AF0, &qword_18BC46520, MEMORY[0x1E6969C28]);
  *v3 = result;
  return result;
}

char *sub_18B9B6764(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B72A4(a1, a2, a3, *v3, &qword_1EA9D4C98, &unk_18BC42980);
  *v3 = result;
  return result;
}

char *sub_18B9B6794(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B71B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18B9B67B4(void *a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9DB7D0, &qword_18BC429A0, _s4ItemVMa_4);
  *v3 = result;
  return result;
}

char *sub_18B9B67F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B72A4(a1, a2, a3, *v3, &qword_1EA9D4CA8, &qword_18BC42998);
  *v3 = result;
  return result;
}

char *sub_18B9B6828(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B73A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18B9B6848(void *a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &unk_1EA9DBE60, &qword_18BC55940, _s4ItemVMa_1);
  *v3 = result;
  return result;
}

char *sub_18B9B688C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B76D8(a1, a2, a3, *v3, &qword_1EA9D4D00, &qword_18BC42A00, &type metadata for ProfileEntity);
  *v3 = result;
  return result;
}

char *sub_18B9B68C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B74AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18B9B68E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B75B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18B9B6904(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B76D8(a1, a2, a3, *v3, &qword_1EA9D4CF8, &qword_18BC429F8, &type metadata for TabGroupEntity);
  *v3 = result;
  return result;
}

char *sub_18B9B693C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B781C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18B9B695C(void *a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9D4CF0, &qword_18BC429F0, type metadata accessor for TabEntity);
  *v3 = result;
  return result;
}

void *sub_18B9B69A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B7920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18B9B69C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18B9B7A54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18B9B69E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4CB0, &qword_18BC429A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4CB8, &qword_18BC429B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18B9B6B28(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D58, &qword_18BC42A70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D60, &qword_18BC42A78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B6C70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1E0, &unk_18BC428D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B6D8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10, &qword_18BC3EFC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B6E9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C40, &qword_18BC42928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_18B9B6FA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C68, &qword_18BC42950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_18B9B70A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C70, &qword_18BC42958);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B71B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C60, &qword_18BC42948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_18B9B72A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_18B9B73A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4BC8, &qword_18BC42848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B74AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C80, &qword_18BC429E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B75B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4070, &qword_18BC40450);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B76D8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_18B9B781C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D18, &qword_18BC42A18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_18B9B7920(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C88, &qword_18BC42970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C90, &qword_18BC42978);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18B9B7A54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4CD0, &qword_18BC429C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_18B9B7B74(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

LABEL_10:
      if (v3 >= 4)
      {
        sub_18B7B0AC0(0, &qword_1EA9D5BE0, 0x1E69E58C0);
        return sub_18BC215C8() & 1;
      }

      return 0;
    }

    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return v3 == 1;
      }

      goto LABEL_10;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

id _s12MobileSafari38SFEditBookmarkCollectionViewControllerC03newD0_18folderListProvider012parentFolderK011saveHandlerACSo03WebD0C_SaySo19_SFFolderPickerItemCGSbcAKSgALcySo06UIViewG0C_AiMtctFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a6;
  v54 = a7;
  v49 = a5;
  v51 = a2;
  v52 = a4;
  v9 = sub_18BC1EE48();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v49 - v15;
  if ([a1 isFolder])
  {
    sub_18BC1EE38();
    sub_18BC1EE38();
    v50 = sub_18BC1EE18();
    v17 = *(v10 + 8);
    v17(v12, v9);
    v17(v16, v9);
  }

  else
  {
    sub_18BC1EE38();
    v50 = sub_18BC1EE28();
    (*(v10 + 8))(v16, v9);
  }

  v18 = type metadata accessor for SFEditBookmarkCollectionViewController();
  v19 = objc_allocWithZone(v18);
  v20 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_collectionLayout;
  v21 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  aBlock[4] = sub_18B9B07C0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B9B53C0;
  aBlock[3] = &block_descriptor_90;
  v22 = _Block_copy(aBlock);
  v23 = [v21 initWithSectionProvider_];
  _Block_release(v22);

  *&v19[v20] = v23;
  v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isDeletingBookmark] = 0;
  v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders] = 0;
  *&v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem] = 0;
  *&v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_suggestedFolders] = MEMORY[0x1E69E7CC0];
  *&v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_titleField] = 0;
  v24 = &v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_deleteHandler];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_debugDistanceToNewBookmark];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_additionalDebugText];
  *v26 = 0;
  v26[1] = 0;
  *&v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController____lazy_storage___collectionDataSource] = 0;
  *&v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_bookmark] = a1;
  v27 = a1;
  if ([v27 isFolder])
  {
    v28 = 0xE100000000000000;
    v29 = 46;
  }

  else
  {
    v30 = [v27 address];
    v29 = sub_18BC20BD8();
    v28 = v31;
  }

  v32 = &v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_currentAddress];
  *v32 = v29;
  v32[1] = v28;
  v33 = [v27 title];
  v34 = sub_18BC20BD8();
  v36 = v35;

  v37 = &v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_currentTitle];
  *v37 = v34;
  v37[1] = v36;
  v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_shouldSaveAtDismissal] = 0;
  v38 = [v27 &selRef_is2024ReadingListEnabled];
  v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_showsTabGroupFavorites] = v38 ^ 1;
  v39 = &v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_folderListProvider];
  v40 = v52;
  *v39 = v51;
  v39[1] = a3;
  v41 = &v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_parentFolderProvider];
  v42 = v49;
  *v41 = v40;
  v41[1] = v42;
  v43 = &v19[OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_saveHandler];
  v44 = v54;
  *v43 = v53;
  v43[1] = v44;
  v45 = *&v19[v20];
  v55.receiver = v19;
  v55.super_class = v18;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  v46 = objc_msgSendSuper2(&v55, sel_initWithCollectionViewLayout_, v45);
  v47 = sub_18BC20B98();

  [v46 setTitle_];

  return v46;
}

void _s12MobileSafari38SFEditBookmarkCollectionViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_collectionLayout;
  v2 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  aBlock[4] = sub_18B9B07C0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B9B53C0;
  aBlock[3] = &block_descriptor_87;
  v3 = _Block_copy(aBlock);
  v4 = [v2 initWithSectionProvider_];
  _Block_release(v3);

  *(v0 + v1) = v4;
  *(v0 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isDeletingBookmark) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_isShowingAllFolders) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_selectedFolderPickerItem) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_suggestedFolders) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_titleField) = 0;
  v5 = (v0 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_deleteHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_debugDistanceToNewBookmark);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_additionalDebugText);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController____lazy_storage___collectionDataSource) = 0;
  sub_18BC21CF8();
  __break(1u);
}

unint64_t sub_18B9B8270()
{
  result = qword_1EA9D4BB8;
  if (!qword_1EA9D4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4BB8);
  }

  return result;
}

unint64_t sub_18B9B82C4()
{
  result = qword_1EA9D4BC0;
  if (!qword_1EA9D4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4BC0);
  }

  return result;
}

void sub_18B9B8318(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_18B9B8348(uint64_t a1)
{
  v1 = sub_18B9B1284();
  sub_18BC1FD18();

  if (v4 >= 5)
  {
    LOBYTE(v2) = [v4 isSelectable];
    sub_18B9B83C0(v4);
  }

  else
  {
    v2 = 6u >> v4;
  }

  return v2 & 1;
}

void sub_18B9B83C0(id a1)
{
  if (a1 != 4)
  {
    sub_18B9B8318(a1);
  }
}

id sub_18B9B83D0(id result)
{
  if (result != 4)
  {
    return sub_18B9B83E0(result);
  }

  return result;
}

id sub_18B9B83E0(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_18B9B875C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18B9B878C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_18B9B87D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_18B9B880C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id sub_18B9B8870(id result, uint64_t a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return swift_unknownObjectRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

double sub_18B9B8894(id a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
    swift_unknownObjectRelease();
  }

  else if (!a2)
  {
  }

  return result;
}

uint64_t sub_18B9B88D8(uint64_t a1, uint64_t a2, void **a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D30, &qword_18BC42A40) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D28, &qword_18BC42A38) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D20, &qword_18BC42A30) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v11 + v15) & ~v11;

  return sub_18B9B1BD4(a1, a2, a3, v3 + v8, v3 + v12, v3 + v15, v3 + v16, v3 + ((v13 + v11 + v16) & ~v11));
}

uint64_t SFSiriLinkCoordinator.openViewInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC42A88;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8091E0();
  return sub_18BC1F028();
}

uint64_t sub_18B9B8BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_18BC20F28();
  v3[8] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B9B8C84, v5, v4);
}

uint64_t sub_18B9B8C84()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong actionPerformer];

    if (v3)
    {
      if (qword_1EA9D22B0 != -1)
      {
        swift_once();
      }

      v4 = sub_18BC1F2C8();
      __swift_project_value_buffer(v4, qword_1EA9F7EC8);
      v5 = sub_18BC1F2A8();
      v6 = sub_18BC21218();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_18B7AC000, v5, v6, "Open view", v7, 2u);
        MEMORY[0x18CFFEEE0](v7, -1, -1);
      }

      sub_18BC1E0A8();
      v8 = *(v0 + 72);
      if (v8 <= 3)
      {
        v13 = 2;
        if (v8 != 2)
        {
          v13 = 3;
        }

        v14 = 1;
        if (!*(v0 + 72))
        {
          v14 = *(v0 + 72);
        }

        if (*(v0 + 72) <= 1u)
        {
          v15 = v14;
        }

        else
        {
          v15 = v13;
        }
      }

      else if (*(v0 + 72) <= 5u)
      {
        if (v8 != 4)
        {
          [v3 openStartPage];
          goto LABEL_28;
        }

        v15 = 4;
      }

      else
      {
        if (v8 != 6)
        {
          if (v8 == 7)
          {
            [v3 openTabGroupOfKind:0 uuidString:0];
          }

          else
          {
            [v3 openTabGroupOfKind:1 uuidString:0];
          }

          goto LABEL_28;
        }

        v15 = 6;
      }

      [v3 setView:v15 visible:1];
LABEL_28:
      v16 = *(v0 + 40);
      v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0, &qword_18BC44410);
      v16[4] = sub_18B9A3450();
      __swift_allocate_boxed_opaque_existential_0Tm(v16);
      sub_18BC1DF98();
      swift_unknownObjectRelease();
      v12 = *(v0 + 8);
      goto LABEL_29;
    }
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v9 = sub_18BC1DE48();
  v10 = __swift_project_value_buffer(v9, qword_1EA9F8578);
  sub_18B9A33F8();
  swift_allocError();
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  swift_willThrow();
  v12 = *(v0 + 8);
LABEL_29:

  return v12();
}

uint64_t sub_18B9B8FA4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18B9B8BE8(a1, a2, v2);
}

uint64_t sub_18B9B9050(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B987B10;

  return v8(a1, v5);
}

uint64_t sub_18B9B9154(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18B9B9050(a1, a2, v6);
}

uint64_t SFSiriLinkCoordinator.closeViewInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC42AA8;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B808F6C();
  return sub_18BC1F028();
}

uint64_t sub_18B9B92CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_18BC20F28();
  v3[8] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18B9B9368, v5, v4);
}

uint64_t sub_18B9B9368()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong actionPerformer];

    if (v3)
    {
      if (qword_1EA9D22B0 != -1)
      {
        swift_once();
      }

      v4 = sub_18BC1F2C8();
      __swift_project_value_buffer(v4, qword_1EA9F7EC8);
      v5 = sub_18BC1F2A8();
      v6 = sub_18BC21218();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_18B7AC000, v5, v6, "Close view", v7, 2u);
        MEMORY[0x18CFFEEE0](v7, -1, -1);
      }

      sub_18BC1E0A8();
      v8 = *(v0 + 72);
      if (v8 <= 3)
      {
        v15 = 2;
        if (v8 != 2)
        {
          v15 = 3;
        }

        v16 = 1;
        if (!*(v0 + 72))
        {
          v16 = *(v0 + 72);
        }

        if (*(v0 + 72) <= 1u)
        {
          v10 = v16;
        }

        else
        {
          v10 = v15;
        }
      }

      else if (*(v0 + 72) <= 5u)
      {
        if (v8 != 4)
        {
          [v3 closeStartPage];
          goto LABEL_25;
        }

        v10 = 4;
      }

      else
      {
        v9 = 7;
        if (v8 != 7)
        {
          v9 = 8;
        }

        if (v8 == 6)
        {
          v10 = 6;
        }

        else
        {
          v10 = v9;
        }
      }

      [v3 setView:v10 visible:0];
LABEL_25:
      v17 = *(v0 + 40);
      v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0, &qword_18BC44410);
      v17[4] = sub_18B9A3450();
      __swift_allocate_boxed_opaque_existential_0Tm(v17);
      sub_18BC1DF98();
      swift_unknownObjectRelease();
      v14 = *(v0 + 8);
      goto LABEL_26;
    }
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v11 = sub_18BC1DE48();
  v12 = __swift_project_value_buffer(v11, qword_1EA9F8578);
  sub_18B9A33F8();
  swift_allocError();
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  swift_willThrow();
  v14 = *(v0 + 8);
LABEL_26:

  return v14();
}

uint64_t sub_18B9B9660(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18B9B92CC(a1, a2, v2);
}

uint64_t sub_18B9B970C(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return v8(a1, v5);
}

uint64_t sub_18B9B9810(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18B9B970C(a1, a2, v6);
}

uint64_t sub_18B9B98D8(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18B9B9050(a1, a2, v6);
}

uint64_t sub_18B9B9A00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_18B9B9A5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18B9B9ABC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_18B7E7DC4();
      v4 = v3;
      v5 = v2;
      v6 = sub_18BC215C8();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

double static Color.from(_:default:)(void *a1)
{
  if (a1)
  {
    v2 = a1;

    sub_18BC20708();
  }

  else
  {

    sub_18BC1E1A8();
  }

  return result;
}

uint64_t sub_18B9B9B74(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), unsigned int a4, uint64_t (*a5)(void))
{
  v46 = a5;
  v45 = a4;
  v44 = a3;
  v7 = a2(0);
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v39 = v12;
  v34 = v5;
  v48 = MEMORY[0x1E69E7CC0];
  v36 = v10;
  sub_18B8408D8(0, v13, 0);
  v14 = v48;
  v15 = v36 + 56;
  result = sub_18BC21918();
  v17 = result;
  v18 = v36;
  v19 = 0;
  v35 = v36 + 64;
  v37 = v13;
  v38 = v15;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v18 + 32))
  {
    v21 = v17 >> 6;
    if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v47 = *(v18 + 36);
    v22 = v42;
    v23 = v44;
    sub_18B8554D0(*(v18 + 48) + *(v43 + 72) * v17, v42, v44);
    v24 = v39;
    sub_18B8554D0(v22, v39, v23);
    swift_storeEnumTagMultiPayload();
    sub_18B815380(v22, v46);
    v48 = v14;
    v26 = *(v14 + 16);
    v25 = *(v14 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_18B8408D8((v25 > 1), v26 + 1, 1);
      v14 = v48;
    }

    *(v14 + 16) = v26 + 1;
    result = sub_18B7CF39C(v24, v14 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v26, &unk_1EA9D92F0, &qword_18BC42990);
    v20 = 1 << *(v18 + 32);
    if (v17 >= v20)
    {
      goto LABEL_22;
    }

    v15 = v38;
    v27 = *(v38 + 8 * v21);
    if ((v27 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    if (v47 != *(v18 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v17 & 0x3F));
    if (v28)
    {
      v20 = __clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v21 << 6;
      v30 = v21 + 1;
      v31 = (v35 + 8 * v21);
      while (v30 < (v20 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_18B7B4FF8(v17, v47, 0);
          v18 = v36;
          v20 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_18B7B4FF8(v17, v47, 0);
      v18 = v36;
    }

LABEL_4:
    ++v19;
    v17 = v20;
    if (v19 == v37)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

BOOL sub_18B9B9F20(uint64_t a1, uint64_t a2)
{
  v3 = _s4PageVMa_0(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a2 + 16);
  do
  {
    v9 = v7;
    if (v8 == v7)
    {
      break;
    }

    sub_18B8554D0(a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7++, v6, _s4PageVMa_0);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B815380(v6, _s4PageVMa_0);
  }

  while ((updated & 1) == 0);
  return v8 != v9;
}

BOOL sub_18B9BA054(uint64_t a1, uint64_t a2)
{
  v3 = _s4ItemVMa_2(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a2 + 16);
  do
  {
    v9 = v7;
    if (v8 == v7)
    {
      break;
    }

    sub_18B8554D0(a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7++, v6, _s4ItemVMa_2);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B815380(v6, _s4ItemVMa_2);
  }

  while ((updated & 1) == 0);
  return v8 != v9;
}

BOOL sub_18B9BA19C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_18B9BA24C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v18 = a4;
  v19 = a5;
  v6 = a3(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  if (*(a2 + 16) && (sub_18BC22158(), sub_18BC1EC08(), sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), sub_18BC20A78(), v10 = sub_18BC221A8(), v11 = -1 << *(a2 + 32), v12 = v10 & ~v11, ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
  {
    v13 = ~v11;
    v14 = *(v7 + 72);
    do
    {
      sub_18B8554D0(*(a2 + 48) + v14 * v12, v9, v18);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815380(v9, v19);
      if (updated)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  else
  {
    updated = 0;
  }

  return updated & 1;
}

uint64_t sub_18B9BA41C(uint64_t a1, uint64_t a2)
{
  v3 = _s4ItemVMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_18BC22158(), sub_18BC1EC08(), sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), sub_18BC20A78(), v7 = sub_18BC221A8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    v11 = *(v4 + 72);
    do
    {
      sub_18B8554D0(*(a2 + 48) + v11 * v9, v6, _s4ItemVMa);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815380(v6, _s4ItemVMa);
      if (updated)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    updated = 0;
  }

  return updated & 1;
}

uint64_t sub_18B9BA608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_18BC22158();
  sub_18BC20C28();
  v6 = sub_18BC221A8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_18BC21FD8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_18B9BA740(unsigned __int8 *a1, uint64_t a2)
{
  v25 = _s4ItemVMa_0(0);
  v4 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    sub_18BC22158();
    sub_18B80CA58(v26);
    v7 = sub_18BC221A8();
    v8 = -1 << *(a2 + 32);
    v9 = v7 & ~v8;
    if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      v11 = *a1;
      v12 = *(v4 + 72);
      do
      {
        sub_18B8554D0(*(a2 + 48) + v12 * v9, v6, _s4ItemVMa_0);
        if (v11 != *v6 || v6[1] != a1[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
        {
          goto LABEL_5;
        }

        v13 = v25[7];
        v14 = *&v6[v13];
        v15 = *&a1[v13];
        if (v14)
        {
          if (!v15)
          {
            goto LABEL_5;
          }

          v24[1] = sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
          v24[0] = v15;
          v16 = v14;
          v17 = sub_18BC215C8();

          if ((v17 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else if (v15)
        {
          goto LABEL_5;
        }

        if (v6[v25[8]] == a1[v25[8]] && v6[v25[9]] == a1[v25[9]])
        {
          v18 = v25[10];
          v19 = &v6[v18];
          v20 = *&v6[v18 + 8];
          v21 = &a1[v18];
          v22 = *(v21 + 1);
          if (v20)
          {
            if (v22 && (*v19 == *v21 && v20 == v22 || (sub_18BC21FD8() & 1) != 0))
            {
LABEL_21:
              sub_18B815380(v6, _s4ItemVMa_0);
              return 1;
            }
          }

          else if (!v22)
          {
            goto LABEL_21;
          }
        }

LABEL_5:
        sub_18B815380(v6, _s4ItemVMa_0);
        v9 = (v9 + 1) & v10;
      }

      while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_18B9BAA44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  if (*(a2 + 16) && (sub_18BC22158(), sub_18BC1EC08(), sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), sub_18BC20A78(), v12 = sub_18BC221A8(), v13 = -1 << *(a2 + 32), v14 = v12 & ~v13, ((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
  {
    v15 = ~v13;
    v16 = *(v9 + 72);
    do
    {
      sub_18B8554D0(*(a2 + 48) + v16 * v14, v11, a4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815380(v11, a5);
      if (updated)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  else
  {
    updated = 0;
  }

  return updated & 1;
}

uint64_t sub_18B9BAC08(uint64_t a1, uint64_t a2)
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v7 = sub_18BC20A68(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v17 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v16 = ~v8;
    v10 = v4 + 16;
    v11 = *(v4 + 16);
    v12 = *(v10 + 56);
    v13 = (v10 - 8);
    do
    {
      v11(v6, *(a2 + 48) + v12 * v9, v3);
      sub_18B812E34(&qword_1EA9D9FE0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v14 = sub_18BC20AE8();
      (*v13)(v6, v3);
      if (v14)
      {
        break;
      }

      v9 = (v9 + 1) & v16;
    }

    while (((*(v17 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

BOOL sub_18B9BAE24(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_18BC22158();
  MEMORY[0x18CFFD660](a1);
  v4 = sub_18BC221A8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_18B9BAEF0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_18BC219E8();
  }

  else if (*(a2 + 16) && (sub_18B7B0AC0(0, &qword_1EA9D4FE0, 0x1E69DD190), v5 = sub_18BC215B8(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_18BC215C8();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_18B9BB008(uint64_t a1)
{
  v3 = OBJC_IVAR___SFTabOverview_configuration;
  swift_beginAccess();
  sub_18B7DFE48(v1 + v3, v6);
  swift_beginAccess();
  sub_18B9D52E0(a1, v1 + v3);
  swift_endAccess();
  sub_18B7DFE48(v1 + v3, v5);
  LOBYTE(v3) = sub_18B868A60(v5, v6);
  sub_18B7CA0E4(v5);
  if (v3)
  {
    sub_18B7CA0E4(a1);
  }

  else
  {
    sub_18B7DFE48(v6, v5);
    sub_18B830410(v5);
    sub_18B7CA0E4(a1);
    sub_18B988BAC(v5, &qword_1EA9D51B0, &qword_18BC43040);
  }

  return sub_18B7CA0E4(v6);
}

double sub_18B9BB0F8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SFTabOverview_searchState);
  v7 = *(v2 + OBJC_IVAR___SFTabOverview_searchState);
  v6 = *(v2 + OBJC_IVAR___SFTabOverview_searchState + 8);
  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    if (v6)
    {
      v8 = v7 == a1 && v6 == a2;
      if (v8 || (sub_18BC21FD8() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v6)
  {
    return result;
  }

  v9 = *(v2 + OBJC_IVAR___SFTabOverview_searchStateDidChange);
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  v9(v7, v6, a1, a2);

LABEL_11:

  return result;
}

id sub_18B9BB2F8(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___SFTabOverview_handlers];
  *v4 = CGRectMake;
  v4[1] = 0;
  v4[2] = sub_18B7E9C50;
  v4[3] = 0;
  v4[4] = CGRectMake;
  v4[5] = 0;
  v4[6] = CGRectMake;
  v4[7] = 0;
  v4[8] = CGRectMake;
  v4[9] = 0;
  v4[10] = CGRectMake;
  v4[11] = 0;
  v4[12] = sub_18B9A926C;
  v4[13] = 0;
  v4[14] = sub_18B9A9278;
  v4[15] = 0;
  v4[16] = CGRectMake;
  v4[17] = 0;
  v4[18] = sub_18B8390A8;
  v4[19] = 0;
  v4[20] = sub_18B814EE4;
  v4[21] = 0;
  v4[22] = CGRectMake;
  v4[23] = 0;
  v4[24] = CGRectMake;
  v4[25] = 0;
  v4[26] = CGRectMake;
  v4[27] = 0;
  v4[28] = sub_18B8390A8;
  v4[29] = 0;
  v4[30] = CGRectMake;
  v4[31] = 0;
  v4[32] = CGRectMake;
  v4[33] = 0;
  v4[34] = sub_18B7E9C50;
  v4[35] = 0;
  v4[36] = sub_18B7E9C50;
  v4[37] = 0;
  v4[38] = CGRectMake;
  v4[39] = 0;
  v5 = &v1[OBJC_IVAR___SFTabOverview_headerRegistration];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR___SFTabOverview_tabIconPool] = 0;
  *&v1[OBJC_IVAR___SFTabOverview_tabSnapshotPool] = 0;
  v6 = OBJC_IVAR___SFTabOverview_tabSnapshotRegistrations;
  v7 = MEMORY[0x1E69E7CC0];
  *&v2[v6] = sub_18B84A540(MEMORY[0x1E69E7CC0]);
  v8 = &v2[OBJC_IVAR___SFTabOverview_content];
  v9 = MEMORY[0x1E69E7CD0];
  *(&v60 + 1) = MEMORY[0x1E69E7CD0];
  *v55 = 0;
  v55[4] = 0;
  memset(v61, 0, sizeof(v61));
  sub_18B988BAC(v61, &qword_1EA9D50D8, &qword_18BC42FA0);
  memset(&v55[8], 0, 80);
  *&v55[88] = 1;
  *&v55[96] = v7;
  *&v55[104] = v9;
  v56 = 0uLL;
  *&v57 = 0;
  *(&v57 + 1) = CGRectMake;
  v58 = 0uLL;
  v59 = 0xE000000000000000;
  *&v60 = 0xE000000000000000;
  sub_18B829CB0();
  v70 = v57;
  v71 = 0uLL;
  v72 = 0xE000000000000000;
  v73 = v60;
  v66 = *&v55[64];
  v67 = *&v55[80];
  v68 = *&v55[96];
  v69 = 0uLL;
  v62 = *v55;
  v63 = *&v55[16];
  v64 = *&v55[32];
  v65 = *&v55[48];
  v74[8] = v57;
  v74[9] = 0uLL;
  v74[10] = 0xE000000000000000;
  v74[11] = v60;
  v74[4] = *&v55[64];
  v74[5] = *&v55[80];
  v74[6] = *&v55[96];
  v74[7] = 0uLL;
  v74[0] = *v55;
  v74[1] = *&v55[16];
  v74[2] = *&v55[32];
  v74[3] = *&v55[48];
  sub_18B82B150(&v62, v54);
  sub_18B82B2F0(v74);
  v10 = v71;
  v8[8] = v70;
  v8[9] = v10;
  v11 = v73;
  v8[10] = v72;
  v8[11] = v11;
  v12 = v67;
  v8[4] = v66;
  v8[5] = v12;
  v13 = v69;
  v8[6] = v68;
  v8[7] = v13;
  v14 = v63;
  *v8 = v62;
  v8[1] = v14;
  v15 = v65;
  v8[2] = v64;
  v8[3] = v15;
  *&v2[OBJC_IVAR___SFTabOverview_itemsClosedWithGesture] = v9;
  *&v2[OBJC_IVAR___SFTabOverview_itemsToCloseAfterCommit] = v9;
  v16 = &v2[OBJC_IVAR___SFTabOverview_itemViewMetrics];
  v54[0] = 1;
  v75 = 1;
  *v16 = xmmword_18BC42B80;
  *(v16 + 2) = 0x4008000000000000;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  v16[56] = 1;
  *(v16 + 8) = 0;
  *(v16 + 9) = 0;
  v16[80] = 1;
  *(v16 + 88) = xmmword_18BC42B90;
  *(v16 + 104) = xmmword_18BC42BA0;
  *(v16 + 120) = vdupq_n_s64(0x404E000000000000uLL);
  *(v16 + 136) = xmmword_18BC42BB0;
  *(v16 + 152) = xmmword_18BC42BC0;
  *(v16 + 168) = xmmword_18BC42BD0;
  *(v16 + 184) = xmmword_18BC42BE0;
  v17 = &v2[OBJC_IVAR___SFTabOverview_itemsWithHiddenThumbnail];
  *(v16 + 200) = xmmword_18BC42BF0;
  *v17 = sub_18B84A7F4(v7);
  v17[1] = v18;
  v17[2] = v19;
  v20 = &v2[OBJC_IVAR___SFTabOverview_itemsWithHiddenTitle];
  *v20 = sub_18B84A7F4(v7);
  v20[1] = v21;
  v20[2] = v22;
  v23 = &v2[OBJC_IVAR___SFTabOverview_hiddenItems];
  *v23 = sub_18B84A7F4(v7);
  v23[1] = v24;
  v23[2] = v25;
  v26 = &v2[OBJC_IVAR___SFTabOverview_browserContentInsets];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v26[32] = 1;
  v27 = &v2[OBJC_IVAR___SFTabOverview_browserReferenceSize];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = &v2[OBJC_IVAR___SFTabOverview_didScroll];
  *v28 = CGRectMake;
  v28[1] = 0;
  v29 = OBJC_IVAR___SFTabOverview_gridLayout;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5228, &qword_18BC43098);
  v30 = swift_allocObject();
  v31 = *(*v30 + 1352);
  v32 = _s4ItemVMa_2(0);
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  *(v30 + *(*v30 + 1360)) = 0;
  v33 = *(*v30 + 1368);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40, &unk_18BC42E70);
  (*(*(v34 - 8) + 56))(v30 + v33, 1, 1, v34);
  *(v30 + *(*v30 + 1376)) = 0;
  *&v2[v29] = sub_18B84ED80();
  *&v2[OBJC_IVAR___SFTabOverview____lazy_storage___gridSizingInfo] = 0;
  v35 = &v2[OBJC_IVAR___SFTabOverview_metrics];
  *v35 = xmmword_18BC42C00;
  *(v35 + 1) = xmmword_18BC42C10;
  *(v35 + 4) = 0x3FE3333333333333;
  *&v2[OBJC_IVAR___SFTabOverview_preferredThumbnailAspectRatio] = 0;
  *&v2[OBJC_IVAR___SFTabOverview_contentBlurRadius] = 0;
  *&v2[OBJC_IVAR___SFTabOverview_contentOpacity] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR___SFTabOverview_contentScale] = 0x3FF0000000000000;
  v36 = &v2[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration];
  *v36 = xmmword_18BC3DD80;
  v36[16] = 1;
  *(v36 + 24) = xmmword_18BC3DD80;
  v36[40] = 1;
  v2[OBJC_IVAR___SFTabOverview_isHighlighted] = 0;
  v2[OBJC_IVAR___SFTabOverview_isHovered] = 0;
  v37 = &v2[OBJC_IVAR___SFTabOverview_peekingInfo];
  *v37 = 2;
  v37[1] = 0;
  v37[2] = 0;
  v2[OBJC_IVAR___SFTabOverview_needsResetLayout] = 0;
  v38 = &v2[OBJC_IVAR___SFTabOverview_targetScrollPositionForNextLayoutPass];
  *v38 = 0u;
  v38[1] = 0u;
  v38[2] = 0u;
  v38[3] = 0u;
  v39 = &v2[OBJC_IVAR___SFTabOverview_searchState];
  *v39 = 0;
  v39[1] = 0;
  *&v2[OBJC_IVAR___SFTabOverview____lazy_storage___searchFilter] = 0;
  v40 = &v2[OBJC_IVAR___SFTabOverview_searchStateDidChange];
  *v40 = CGRectMake;
  v40[1] = 0;
  v41 = OBJC_IVAR___SFTabOverview_closingItemsContainerView;
  type metadata accessor for PassthroughView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v2[v41] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v43 = OBJC_IVAR___SFTabOverview_transitionContainerView;
  *&v2[v43] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v2[OBJC_IVAR___SFTabOverview_overlayView] = 0;
  v44 = OBJC_IVAR___SFTabOverview_backgroundView;
  _s14BackgroundViewCMa_0();
  *&v2[v44] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView] = 0;
  v45 = OBJC_IVAR___SFTabOverview_contentBelowSearchBarView;
  type metadata accessor for BlurrableView();
  *&v2[v45] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v46 = OBJC_IVAR___SFTabOverview_overlayContainerView;
  *&v2[v46] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v2[OBJC_IVAR___SFTabOverview_peekingOverlayView] = 0;
  v47 = OBJC_IVAR___SFTabOverview_searchBarContainerView;
  *&v2[v47] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  swift_unknownObjectWeakInit();
  v48 = *(MEMORY[0x1E69DDCE0] + 16);
  *v55 = *MEMORY[0x1E69DDCE0];
  *&v55[16] = v48;
  v55[32] = 1;
  memset(&v55[40], 0, 65);
  v56 = 0uLL;
  LODWORD(v57) = 1;
  swift_unknownObjectWeakInit();
  sub_18B9D50FC(v55, &v2[OBJC_IVAR___SFTabOverview_configuration]);
  v53.receiver = v2;
  v53.super_class = type metadata accessor for TabOverview();
  v49 = objc_msgSendSuper2(&v53, sel_initWithCoder_, a1);
  v50 = v49;
  if (v49)
  {
    v51 = v49;
    sub_18B850F58();
  }

  return v50;
}

char *sub_18B9BBBB4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR___SFTabOverview_searchState];
    v2 = *&result[OBJC_IVAR___SFTabOverview_searchState + 8];
    v4 = result;
    sub_18BC1E3F8();

    if (v2)
    {

      v5 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      return (v5 != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_18B9BBC50(_BYTE *a1, void *a2, uint64_t a3, __n128 a4)
{
  type metadata accessor for TabOverview.ItemView();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = a2;
    sub_18B9BCFA0(v7, a1);
  }
}

void *sub_18B9BBCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  Strong = swift_unknownObjectUnownedLoadStrong();
  result = sub_18B82FEA0();
  if (*(result + *((*MEMORY[0x1E69E7D40] & *result) + 0x190)))
  {
    v9 = result;
    sub_18B8554D0(a2, v6, _s4ItemVMa_2);
    swift_storeEnumTagMultiPayload();
    sub_18BC1E1A8();
    sub_18B9C9958(0x776569566D657469, 0xE800000000000000, v6);
    v11 = v10;

    sub_18B988BAC(v6, &unk_1EA9D92F0, &qword_18BC42990);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18B9BBE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B833990(a2, &v12);
  if (*(&v13 + 1) > 1)
  {
    if (*(&v13 + 1) == 2)
    {
      v7 = sub_18B9BFB88();
      goto LABEL_11;
    }

    if (*(&v13 + 1) == 3)
    {
      v7 = sub_18B9C0554();
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(&v13 + 1))
    {
      v7 = sub_18B9C146C(a3);
      goto LABEL_11;
    }

    if (*(&v13 + 1) == 1)
    {
      v7 = sub_18B9BE738();
LABEL_11:
      v8 = v7;

      return v8;
    }
  }

  v10[0] = v12;
  v10[1] = v13;
  v11 = v14;
  v8 = sub_18B9BEEE8(v10);

  sub_18B831014(v10);
  return v8;
}

id sub_18B9BBF78(void (*a1)(void))
{
  a1();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

void sub_18B9BBFB4(uint64_t (*a1)(uint64_t, unint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_18B9C09C0(a1);
  }
}

void sub_18B9BC024(uint64_t a1, char a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = sub_18B82FEA0();
  v10 = sub_18B9CAE54(a1);

  if (v10)
  {
    type metadata accessor for TabOverview.ItemView();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      [swift_dynamicCastClassUnconditional() setHidden_];
      v9 = v8;
    }

    else
    {
      v9 = v10;
    }
  }
}

void sub_18B9BC120(uint64_t a1, char a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = sub_18B82FEA0();
  v16 = sub_18B9CAE54(a1);

  if (v16)
  {
    type metadata accessor for TabOverview.ItemView();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      v9 = swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_configuration;
      v10 = *v9;
      v11 = *(v9 + 32);
      v18[1] = *(v9 + 16);
      v18[2] = v11;
      v18[0] = v10;
      v20[0] = *v9;
      v12 = v20[0];
      *(v20 + 10) = *(v9 + 10);
      v19[0] = *(v9 + 27);
      *(v19 + 13) = *(v9 + 40);
      v13 = *(v9 + 32);
      v22[1] = *(v9 + 16);
      v22[2] = v13;
      v22[0] = v12;
      v15 = *(v9 + 16);
      v14 = *(v9 + 32);
      v21[0] = *v9;
      v21[1] = v15;
      v21[2] = v14;
      *(v9 + 10) = *(v20 + 10);
      *v9 = v20[0];
      *(v9 + 26) = a2 & 1;
      *(v9 + 27) = v19[0];
      *(v9 + 40) = *(v19 + 13);
      sub_18B9B0118(v18, v17);
      sub_18B9B0118(v22, v17);
      sub_18B9B0174(v21);
      sub_18BB9DF7C(v22);

      sub_18B9B0174(v22);
    }

    else
    {
    }
  }
}

void sub_18B9BC2D0(uint64_t a1, char a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = sub_18B82FEA0();
  v16 = sub_18B9CAE54(a1);

  if (v16)
  {
    type metadata accessor for TabOverview.ItemView();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      v9 = swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_configuration;
      v10 = *v9;
      v11 = *(v9 + 32);
      v18[1] = *(v9 + 16);
      v18[2] = v11;
      v18[0] = v10;
      v21[0] = *v9;
      v12 = v21[0];
      *(v21 + 11) = *(v9 + 11);
      v19 = *(v9 + 28);
      v20 = *(v9 + 44);
      v13 = *(v9 + 32);
      v23[1] = *(v9 + 16);
      v23[2] = v13;
      v23[0] = v12;
      v14 = *v9;
      v15 = *(v9 + 32);
      v22[1] = *(v9 + 16);
      v22[2] = v15;
      v22[0] = v14;
      *v9 = v21[0];
      *(v9 + 11) = *(v21 + 11);
      *(v9 + 27) = a2 & 1;
      *(v9 + 28) = v19;
      *(v9 + 44) = v20;
      sub_18B9B0118(v18, v17);
      sub_18B9B0118(v23, v17);
      sub_18B9B0174(v22);
      sub_18BB9DF7C(v23);

      sub_18B9B0174(v23);
    }

    else
    {
    }
  }
}

uint64_t sub_18B9BC480()
{
  swift_beginAccess();
  v1 = sub_18BC1E3F8();
  sub_18B868E64(v1, v7);

  v2 = [v0 traitCollection];
  swift_beginAccess();
  sub_18B865910(v2);
  swift_endAccess();

  sub_18B8487D0(MEMORY[0x1E69E7CD0], 1);

  v3 = sub_18B82FEA0();
  [v3 layoutIfNeeded];

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_18B861588(v7, v5);
  sub_18B988BAC(v5, &unk_1EA9D5060, &unk_18BC41870);
  return sub_18B8303BC(v7);
}

void sub_18B9BC608(uint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_2(0);
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = _s7SectionVMa_1(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2 + OBJC_IVAR___SFTabOverview_handlers;
  v14 = *(v2 + OBJC_IVAR___SFTabOverview_handlers + 176);
  sub_18BC1E1A8();
  v14(a1);

  v15 = (v2 + OBJC_IVAR___SFTabOverview_content);
  v16 = v15[3];
  v43[2] = v15[2];
  v43[3] = v16;
  v17 = v15[7];
  v44 = v15[6];
  v45 = v17;
  v18 = v15[5];
  v43[4] = v15[4];
  v43[5] = v18;
  v19 = v15[11];
  v48 = v15[10];
  v49 = v19;
  v20 = v15[9];
  v46 = v15[8];
  v47 = v20;
  v21 = v15[1];
  v43[0] = *v15;
  v43[1] = v21;
  v22 = *(v44 + 16);
  if (v22)
  {
    v23 = *(v9 + 28);
    v24 = v44 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    sub_18B82B150(v43, v42);
    v25 = 0;
    v26 = *(v10 + 72);
    do
    {
      sub_18B8554D0(v24, v12, _s7SectionVMa_1);
      v27 = *(*&v12[v23] + 16);
      v28 = __OFADD__(v25, v27);
      v25 += v27;
      if (v28)
      {
        __break(1u);
        return;
      }

      sub_18B815380(v12, _s7SectionVMa_1);
      v24 += v26;
      --v22;
    }

    while (v22);
    sub_18B82B2F0(v43);
    if (v25 == 1)
    {
      v29 = v15[9];
      v42[8] = v15[8];
      v42[9] = v29;
      v30 = v15[11];
      v42[10] = v15[10];
      v42[11] = v30;
      v31 = v15[5];
      v42[4] = v15[4];
      v42[5] = v31;
      v32 = v15[7];
      v42[6] = v15[6];
      v42[7] = v32;
      v33 = v15[1];
      v42[0] = *v15;
      v42[1] = v33;
      v34 = v15[3];
      v42[2] = v15[2];
      v42[3] = v34;
      sub_18B82B150(v42, &v41);
      sub_18B866D50();
      v36 = v35;
      sub_18B82B2F0(v42);
      if (*(v36 + 16))
      {
        v37 = v40;
        sub_18B8554D0(v36 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v40, _s4ItemVMa_2);

        sub_18B829704(v37, v8, _s4ItemVMa_2);
        if ((*v8 & 1) == 0)
        {
          v38 = *(v13 + 240);
          sub_18BC1E1A8();
          v38(v8);
        }

        sub_18B815380(v8, _s4ItemVMa_2);
      }

      else
      {
      }
    }
  }
}

void sub_18B9BC970(uint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_2(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &aBlock[-1] - v8;
  v10 = OBJC_IVAR___SFTabOverview_itemsToCloseAfterCommit;
  swift_beginAccess();
  if (*(*&v1[v10] + 16))
  {
    goto LABEL_4;
  }

  v11 = *MEMORY[0x1E69DDA98];
  if (*MEMORY[0x1E69DDA98])
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    aBlock[4] = sub_18B9D5098;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7B0DB0;
    aBlock[3] = &block_descriptor_588;
    v13 = _Block_copy(aBlock);
    v14 = v11;
    v15 = v2;

    [v14 _performBlockAfterCATransactionCommits_];
    _Block_release(v13);

LABEL_4:
    sub_18B8554D0(a1, v6, _s4ItemVMa_2);
    swift_beginAccess();
    sub_18B85A4D8(v9, v6);
    sub_18B815380(v9, _s4ItemVMa_2);
    swift_endAccess();
    v16 = *&v2[OBJC_IVAR___SFTabOverview_handlers + 304];
    sub_18BC1E1A8();
    v16(a1);

    return;
  }

  __break(1u);
}

double sub_18B9BCB9C(uint64_t a1)
{
  v2 = OBJC_IVAR___SFTabOverview_itemsToCloseAfterCommit;
  swift_beginAccess();
  v3 = sub_18BC1E3F8();
  sub_18B9BC608(v3);

  *(a1 + v2) = MEMORY[0x1E69E7CD0];

  return result;
}

double sub_18B9BCC14()
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v32);
  v2 = &v30 - v1;
  v3 = _s4ItemVMa_2(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  v7 = sub_18B82FEA0();
  sub_18BA58D00();
  v9 = v8;

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
    v12 = *(v4 + 80);
    v30 = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v14 = *(v4 + 72);
    while (1)
    {
      sub_18B8554D0(v13, v6, _s4ItemVMa_2);
      v15 = *(v31 + v11);
      sub_18B8554D0(v6, v2, _s4ItemVMa_2);
      swift_storeEnumTagMultiPayload();
      v16 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x150);
      swift_beginAccess();
      v17 = *(v15 + v16);
      if (*(v17 + 16))
      {
        v18 = v15;
        sub_18BC1E3F8();
        v19 = sub_18B83B1C8(v2);
        if (v20)
        {
          v21 = *(*(v17 + 56) + 8 * v19);
          sub_18BC1E1A8();

          sub_18B988BAC(v2, &unk_1EA9D92F0, &qword_18BC42990);

          v22 = *(v21 + 24);
          v23 = v22;

          if (v22)
          {
            type metadata accessor for TabOverview.ItemView();
            v24 = swift_dynamicCastClass();
            if (v24)
            {
              v25 = *(v24 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

              type metadata accessor for TabOverviewItemView();
              v26 = swift_dynamicCastClassUnconditional();
              v27 = [v26 layer];
              [v27 clearHasBeenCommitted];

              v28 = [*&v26[OBJC_IVAR___SFTabOverviewItemView_thumbnailView] layer];
              [v28 clearHasBeenCommitted];
            }

            else
            {
            }
          }

          goto LABEL_5;
        }
      }

      sub_18B988BAC(v2, &unk_1EA9D92F0, &qword_18BC42990);
LABEL_5:
      sub_18B815380(v6, _s4ItemVMa_2);
      v13 += v14;
      if (!--v10)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_15:

  return result;
}

void sub_18B9BCFA0(uint64_t a1, _BYTE *a2)
{
  v3 = v2;
  (*(**(v2 + OBJC_IVAR___SFTabOverview_gridLayout) + 1176))(v83);
  v5 = v83[0];
  v6 = _s4ItemVMa_2(0);
  v7 = &a2[v6[13]];
  v8 = v7[1];
  v73 = *v7;
  type metadata accessor for TabOverviewItemView();
  v71 = swift_dynamicCastClassUnconditional();
  v9 = 0;
  if (*a2 == 1)
  {
    v10 = v2 + OBJC_IVAR___SFTabOverview_configuration;
    swift_beginAccess();
    v9 = *(v10 + 128);
  }

  v70 = v9;
  v11 = v3 + OBJC_IVAR___SFTabOverview_content;
  v12 = *(v3 + OBJC_IVAR___SFTabOverview_content + 184);
  v72 = v8;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v68 = sub_18B9BA24C(a2, v12, _s4ItemVMa_2, _s4ItemVMa_2, _s4ItemVMa_2);

  v69 = a2[v6[7]];
  v13 = sub_18B82FEA0();
  v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x198);
  swift_beginAccess();
  v15 = *(v13 + v14);
  sub_18BC1E3F8();

  v67 = sub_18B9BA24C(a2, v15, _s4ItemVMa_2, _s4ItemVMa_2, _s4ItemVMa_2);

  v16 = v6[9];
  v17 = *&a2[v6[10]];
  v18 = *&a2[v6[12]];
  v19 = *(v11 + 4);
  v20 = a2[v16];
  v21 = v3 + OBJC_IVAR___SFTabOverview_itemsWithHiddenThumbnail;
  swift_beginAccess();
  v22 = *(*(v21 + 16) + 16);
  sub_18BC1E3F8();
  if (v22)
  {
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18BB8B494(a2);
    LOBYTE(v22) = v23;
  }

  v24 = v3 + OBJC_IVAR___SFTabOverview_itemsWithHiddenTitle;
  swift_beginAccess();
  if (*(*(v24 + 16) + 16))
  {
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18BB8B494(a2);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v71 + OBJC_IVAR___SFTabOverviewItemView_configuration;
  v29 = *(v71 + OBJC_IVAR___SFTabOverviewItemView_configuration + 16);
  v28 = *(v71 + OBJC_IVAR___SFTabOverviewItemView_configuration + 32);
  v85[0] = *(v71 + OBJC_IVAR___SFTabOverviewItemView_configuration);
  v85[1] = v29;
  v85[2] = v28;
  v30 = *(v71 + OBJC_IVAR___SFTabOverviewItemView_configuration);
  v31 = *(v71 + OBJC_IVAR___SFTabOverviewItemView_configuration + 32);
  v74[1] = *(v71 + OBJC_IVAR___SFTabOverviewItemView_configuration + 16);
  v74[2] = v31;
  v74[0] = v30;
  *v27 = v70;
  *(v27 + 1) = v68 & 1;
  *(v27 + 2) = v69;
  *(v27 + 3) = v67 & 1;
  *(v27 + 8) = v17;
  *(v27 + 16) = v18;
  *(v27 + 24) = v19;
  *(v27 + 25) = v20;
  *(v27 + 26) = v22 & 1;
  *(v27 + 27) = v26 & 1;
  *(v27 + 32) = v73;
  *(v27 + 40) = v72;
  sub_18B9B0118(v85, v83);
  sub_18B9B0174(v74);
  sub_18BB9DF7C(v85);
  sub_18B9B0174(v85);
  v32 = swift_dynamicCastClassUnconditional();
  v33 = v3 + OBJC_IVAR___SFTabOverview_hiddenItems;
  swift_beginAccess();
  if (*(*(v33 + 16) + 16))
  {
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18BB8B494(a2);
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  [v32 setHidden_];
  v36 = swift_dynamicCastClassUnconditional();
  v37 = OBJC_IVAR___SFTabOverview_itemViewMetrics;
  swift_beginAccess();
  v83[10] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 160);
  v83[11] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 176);
  v83[12] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 192);
  v84 = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 208);
  v83[6] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 96);
  v83[7] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 112);
  v83[8] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 128);
  v83[9] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 144);
  v83[2] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 32);
  v83[3] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 48);
  v83[4] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 64);
  v83[5] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 80);
  v83[0] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics);
  v83[1] = *(v36 + OBJC_IVAR___SFTabOverviewItemView_metrics + 16);
  memmove((v36 + OBJC_IVAR___SFTabOverviewItemView_metrics), (v3 + v37), 0xD8uLL);
  sub_18BB9E104(v83);
  v38 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);
  v39 = *&v38[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
  if (!v39 || (v40 = v39 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility, swift_beginAccess(), v41 = *v40, v42 = *(v40 + 8), *v40 = v5, *&v5 == v41) && *(&v5 + 1) == v42)
  {
    v43 = v38;
  }

  else
  {
    v44 = *(v39 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
    v45 = v38;
    sub_18BC1E1A8();
    v46 = sub_18BC1E1A8();
    v44(v46);
  }

  v47 = &v38[OBJC_IVAR___SFTabThumbnailView_metrics];
  v48 = *(v3 + OBJC_IVAR___SFTabOverview_browserContentInsets + 32);
  v49 = *(v3 + OBJC_IVAR___SFTabOverview_browserReferenceSize + 16);
  v50 = *(v3 + OBJC_IVAR___SFTabOverview_browserReferenceSize);
  v51 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
  v77[0] = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics];
  v77[1] = v51;
  v52 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
  v53 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v54 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  v77[4] = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  v77[5] = v54;
  v77[2] = v52;
  v77[3] = v53;
  v55 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v56 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
  v80 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
  v57 = v80;
  v81 = v56;
  v58 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v60 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  v59 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  v78 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 96];
  v61 = v78;
  v79 = v58;
  v62 = *(v3 + OBJC_IVAR___SFTabOverview_browserContentInsets);
  v63 = *(v3 + OBJC_IVAR___SFTabOverview_browserContentInsets + 16);
  v82 = *&v38[OBJC_IVAR___SFTabThumbnailView_metrics + 160];
  *v47 = v62;
  *(v47 + 1) = v63;
  v47[32] = v48;
  *(v47 + 40) = v50;
  v47[56] = v49;
  v64 = *(v47 + 9);
  v75[8] = v57;
  v75[9] = v64;
  v76 = *(v47 + 20);
  v75[4] = v60;
  v75[5] = v59;
  v75[6] = v61;
  v75[7] = v55;
  v65 = *(v47 + 1);
  v75[0] = *v47;
  v75[1] = v65;
  v66 = *(v47 + 3);
  v75[2] = *(v47 + 2);
  v75[3] = v66;
  if (!sub_18BA1A2E4(v75, v77))
  {
    sub_18BA18DB4();
  }
}

uint64_t sub_18B9BD69C(uint64_t a1, void *a2)
{
  v5 = _s4ItemVMa_2(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + *a2;
  swift_beginAccess();
  v10 = (v8 + 16);
  v9 = *(v8 + 16);
  if (*(v9 + 16))
  {
    v11 = sub_18BB8B494(a1);
    if (v12)
    {
      v13 = *(*(v9 + 56) + 8 * v11);
      if (v13 < 2)
      {
        sub_18B8554D0(a1, v7, _s4ItemVMa_2);
        sub_18BAD27B8(0, 1, v7);
        (*v8)(a1, 0);
      }

      else
      {
        v14 = v13 - 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v10;
        *v10 = 0x8000000000000000;
        sub_18BAA7998(v14, a1, isUniquelyReferenced_nonNull_native);
        *v10 = v17;
      }
    }
  }

  return swift_endAccess();
}

unint64_t sub_18B9BD7FC(void *a1)
{
  v61 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v66);
  v3 = &v55 - v2;
  v4 = _s4ItemVMa_2(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v67 = v1;
  v17 = sub_18B82FEA0();
  sub_18BA58D00();
  v19 = v18;

  result = v19;
  v65 = *(v19 + 16);
  if (!v65)
  {
LABEL_20:

    return sub_18BC1E5D8();
  }

  v57 = v13;
  v58 = v16;
  v59 = v7;
  v60 = v4;
  v21 = 0;
  v56 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v63 = result + v56;
  v64 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
  v22 = v5;
  while (1)
  {
    if (v21 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v23 = result;
    v24 = *(v22 + 72);
    sub_18B8554D0(v63 + v24 * v21, v10, _s4ItemVMa_2);
    v25 = *(v67 + v64);
    sub_18B8554D0(v10, v3, _s4ItemVMa_2);
    swift_storeEnumTagMultiPayload();
    v26 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x150);
    swift_beginAccess();
    v27 = *(v25 + v26);
    if (!*(v27 + 16))
    {
      goto LABEL_4;
    }

    v28 = v22;
    v29 = v25;
    sub_18BC1E3F8();
    v30 = sub_18B83B1C8(v3);
    if ((v31 & 1) == 0)
    {

      v22 = v28;
LABEL_4:
      sub_18B988BAC(v3, &unk_1EA9D92F0, &qword_18BC42990);
      goto LABEL_5;
    }

    v62 = v24;
    v32 = *(*(v27 + 56) + 8 * v30);
    sub_18BC1E1A8();

    sub_18B988BAC(v3, &unk_1EA9D92F0, &qword_18BC42990);

    v33 = *(v32 + 24);
    v34 = v33;

    v22 = v28;
    if (v33)
    {
      type metadata accessor for TabOverview.ItemView();
      v35 = swift_dynamicCastClass();
      if (!v35)
      {

        goto LABEL_5;
      }

      v36 = *(v35 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      swift_dynamicCastClassUnconditional();
      v37 = v61;
      v22 = v28;
      v38 = sub_18BC215C8();

      if (v38)
      {
        break;
      }
    }

LABEL_5:
    ++v21;
    sub_18B815380(v10, _s4ItemVMa_2);
    result = v23;
    if (v65 == v21)
    {
      goto LABEL_20;
    }
  }

  v39 = v10;
  v40 = v57;
  sub_18B829704(v39, v57, _s4ItemVMa_2);
  v41 = v58;
  sub_18B829704(v40, v58, _s4ItemVMa_2);
  v42 = *(v67 + OBJC_IVAR___SFTabOverview_content + 144);
  v69[8] = *(v67 + OBJC_IVAR___SFTabOverview_content + 128);
  v69[9] = v42;
  v43 = *(v67 + OBJC_IVAR___SFTabOverview_content + 176);
  v69[10] = *(v67 + OBJC_IVAR___SFTabOverview_content + 160);
  v69[11] = v43;
  v44 = *(v67 + OBJC_IVAR___SFTabOverview_content + 80);
  v69[4] = *(v67 + OBJC_IVAR___SFTabOverview_content + 64);
  v69[5] = v44;
  v45 = *(v67 + OBJC_IVAR___SFTabOverview_content + 112);
  v69[6] = *(v67 + OBJC_IVAR___SFTabOverview_content + 96);
  v69[7] = v45;
  v46 = *(v67 + OBJC_IVAR___SFTabOverview_content + 16);
  v69[0] = *(v67 + OBJC_IVAR___SFTabOverview_content);
  v69[1] = v46;
  v47 = *(v67 + OBJC_IVAR___SFTabOverview_content + 48);
  v69[2] = *(v67 + OBJC_IVAR___SFTabOverview_content + 32);
  v69[3] = v47;
  sub_18B82B150(v69, &v68);
  sub_18B866D50();
  v49 = v48;
  result = sub_18B82B2F0(v69);
  v50 = *(v49 + 16);
  v51 = v59;
  if (!v50)
  {
LABEL_19:
    sub_18B815380(v41, _s4ItemVMa_2);
    goto LABEL_20;
  }

  v52 = 0;
  v53 = v49 + v56;
  while (v52 < *(v49 + 16))
  {
    sub_18B8554D0(v53, v51, _s4ItemVMa_2);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    result = sub_18B815380(v51, _s4ItemVMa_2);
    if (updated)
    {
      sub_18B815380(v41, _s4ItemVMa_2);

      return v52;
    }

    ++v52;
    v53 += v62;
    if (v50 == v52)
    {
      goto LABEL_19;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

char *sub_18B9BDDB8(__n128 a1)
{
  type metadata accessor for TabOverview.ItemView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview8ItemView_closeHandler];
  *v3 = sub_18B9D5088;
  v3[1] = v2;

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview8ItemView_unpinHandler];
  *v5 = sub_18B9D5090;
  v5[1] = v4;

  return v1;
}

void sub_18B9BDE94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_18B9BC970(a1);
  }
}

double sub_18B9BDEF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR___SFTabOverview_handlers + 208);
    v6 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FB0, &qword_18BC42888);
    v7 = *(_s4ItemVMa_2(0) - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18BC3E410;
    sub_18B8554D0(a1, v9 + v8, _s4ItemVMa_2);
    sub_18BC1E1A8();
    v5(v9, 0);
  }

  return result;
}

uint64_t sub_18B9BE0E0(unint64_t a1)
{
  v3 = _s4ItemVMa_2(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR___SFTabOverview_content + 144);
  v21[8] = *(v1 + OBJC_IVAR___SFTabOverview_content + 128);
  v21[9] = v7;
  v8 = *(v1 + OBJC_IVAR___SFTabOverview_content + 176);
  v21[10] = *(v1 + OBJC_IVAR___SFTabOverview_content + 160);
  v21[11] = v8;
  v9 = *(v1 + OBJC_IVAR___SFTabOverview_content + 80);
  v21[4] = *(v1 + OBJC_IVAR___SFTabOverview_content + 64);
  v21[5] = v9;
  v10 = *(v1 + OBJC_IVAR___SFTabOverview_content + 112);
  v21[6] = *(v1 + OBJC_IVAR___SFTabOverview_content + 96);
  v21[7] = v10;
  v11 = *(v1 + OBJC_IVAR___SFTabOverview_content + 16);
  v21[0] = *(v1 + OBJC_IVAR___SFTabOverview_content);
  v21[1] = v11;
  v12 = *(v1 + OBJC_IVAR___SFTabOverview_content + 48);
  v21[2] = *(v1 + OBJC_IVAR___SFTabOverview_content + 32);
  v21[3] = v12;
  sub_18B82B150(v21, v20);
  sub_18B866D50();
  v14 = v13;
  result = sub_18B82B2F0(v21);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v14 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_18B8554D0(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * a1, v6, _s4ItemVMa_2);

  v16 = sub_18B82FEA0();
  v17 = sub_18B9CAE54(v6);

  sub_18B815380(v6, _s4ItemVMa_2);
  if (v17)
  {
    type metadata accessor for TabOverview.ItemView();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = *(v18 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      return swift_dynamicCastClassUnconditional();
    }
  }

  return 0;
}
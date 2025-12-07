uint64_t sub_2054E4(void *a1)
{
  v2 = v1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for HorizontalLockupCollectionViewCell(0);
  objc_msgSendSuper2(&v20, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_AB92A0();
  v9 = v8;
  if (v7 == sub_AB92A0() && v9 == v10)
  {

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBA30, &qword_B016E0);
    v13 = [v2 traitCollection];
    [v13 displayScale];

    [a1 displayScale];
    v18 = v14;
    LOBYTE(v19) = 0;
    sub_8A2B8();
    result = sub_AB38D0();
    if ((result & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  v12 = sub_ABB3C0();

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_11:
  result = [v2 setNeedsLayout];
  v16 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
  if (v16)
  {
    v17 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_layoutInvalidationHandler + 8];

    v16(v2);
    return sub_17654(v16, v17);
  }

  return result;
}

BOOL sub_20575C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    return v3 == 0;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 < 3)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  return sub_ABA790() & 1;
}

void sub_2057F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*&stru_3D8.segname[(swift_isaMask & *Strong) + 16])();
    v5 = *&v3[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 32];
    if ((v5 & 0xFE) == 0xF8)
    {
      LOBYTE(v5) = 122;
    }

    if (v4)
    {
      if ((v5 & 0xFE) == 0x7A)
      {
        goto LABEL_14;
      }

      v6 = v5 >> 1;
      if ((v6 - 62) < 2 || (v6 - 126) < 2 || v6 != 125 && (v5 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else if ((v5 & 0xFE) == 0x7A)
    {
LABEL_14:

      return;
    }

    v7 = &v3[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 1);
      swift_getObjectType();
      v9 = *(v8 + 8);
      v10 = v3;
      v9();
      swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }
}

void sub_205970(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v7 = &v68 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0, qword_B05AE0);
  __chkstk_darwin();
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v68 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v70 = v7;
    v14 = type metadata accessor for SymbolButton.Configuration(0);
    v72 = v14[17];
    v15 = *(a2 + v72);
    v16 = sub_BD4F8(a2);
    (*(&stru_3D8.size + (swift_isaMask & *v13)))(v16);
    v17 = *(v14 - 1);
    v18 = (*(v17 + 56))(v11, 0, 1, v14);
    v19 = (*&stru_3D8.segname[(swift_isaMask & *v13) + 16])(v18);
    v20 = *(a4 + 15);
    if ((v20 & 0xFE) == 0xF8)
    {
      __break(1u);
    }

    else
    {
      v21 = v19;
      v22 = v11;
      v23 = a4[14];
      v69 = *(a4 + 15);
      v24 = v20;
      v25 = *(a4 + 17);
      v71 = v22;
      sub_15F84(v22, v9, &unk_DFAAB0, qword_B05AE0);
      v26 = *(v17 + 48);
      if (v26(v9, 1, v14) == 1)
      {
        v27 = v25;
        SymbolButton.Configuration.init()(a2);
        v28 = v26(v9, 1, v14);
        v29 = v25;
        if (v28 != 1)
        {
          sub_12E1C(v9, &unk_DFAAB0, qword_B05AE0);
        }
      }

      else
      {
        sub_BD554(v9, a2);
        v30 = v25;
        v29 = v25;
      }

      v31 = v23;
      sub_25C978(v24, v21 & 1, v73);
      sub_BD438(v73, a2);
      v32 = SymbolButton.Configuration.platterMinimumSize.unsafeMutableAddressor();
      v34 = *v32;
      *(a2 + v14[13]) = *v32;
      if ((v24 & 0xFFFFFFFE) == 0x7A)
      {
        v35 = 0;
        v36 = v71;
      }

      else
      {
        v35 = 0;
        v37 = v24 >> 1;
        v36 = v71;
        if ((v37 - 125) >= 3 && (v37 - 62) >= 2)
        {
          if (v24 < 0)
          {
            v35 = 0;
          }

          else
          {
            if (v29)
            {
              v35 = v29;
            }

            else
            {
              v38 = objc_allocWithZone(type metadata accessor for CircularProgressView());
              v35 = CircularProgressView.init(size:)(0.0, 0.0);
            }

            v39 = v69;
            if (v69)
            {
              v31 = 0.0;
            }

            v40 = v29;
            v41 = v35;
            if (v21)
            {
              CircularProgressView.image.setter(0);
              if (v39 & 1 | (v31 <= 0.051))
              {
                v42 = 1;
              }

              else
              {
                v42 = *&v31;
              }

              if (v39 & 1 | (v31 <= 0.051))
              {
                v43 = 256;
              }

              else
              {
                v43 = 0;
              }
            }

            else
            {
              v44 = sub_AB9260();
              v45 = [objc_opt_self() systemImageNamed:v44];
              v68 = *&v31;
              v46 = v45;

              CircularProgressView.image.setter(v46);
              CircularProgressView.imageScale.setter(0.25);
              v43 = v69 & 1;
              v42 = v68;
            }

            CircularProgressView.setState(_:animated:)(v42, v43, 1);

            v47 = v41;
          }
        }
      }

      SymbolButton.CustomView.init(view:)(v35, v74, v34, v33);
      v48 = a2 + v14[10];
      sub_160B4(v74, v48, &qword_DED418, &unk_AFB9A0);
      if (v21)
      {

        v49 = v14[9];
        sub_12E1C(a2 + v49, &unk_DFFBC0, &unk_AF85C0);
        v50 = sub_ABA680();
        (*(*(v50 - 8) + 56))(a2 + v49, 1, 1, v50);
        sub_3F9D0(*(a2 + 200), *(a2 + 208), *(a2 + 216), *(a2 + 224));
        *(a2 + 200) = xmmword_AF82C0;
        *(a2 + 216) = 0;
        *(a2 + 224) = 0;
        if (*v48)
        {
          __asm { FMOV            V0.2D, #8.0 }

          *(v48 + 8) = _Q0;
          *(v48 + 24) = _Q0;
        }
      }

      else
      {
        v56 = v70;
        sub_ABA670();
        v57 = sub_ABA680();
        (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
        sub_160B4(v56, a2 + v14[9], &unk_DFFBC0, &unk_AF85C0);
        if (*v48)
        {
          v58 = *&UIEdgeInsetsZero.bottom;
          *(v48 + 8) = *&UIEdgeInsetsZero.top;
          *(v48 + 24) = v58;
        }

        if (v35)
        {

          sub_3F9D0(*(a2 + 200), *(a2 + 208), *(a2 + 216), *(a2 + 224));
          *(a2 + 200) = xmmword_AF82C0;
          *(a2 + 216) = 0;
          *(a2 + 224) = 0;
        }

        else
        {
          v59 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
          v71 = v29;
          v60 = *v59;
          v61 = v59[1];
          v62 = v59[3];
          v70 = v59[2];
          v63 = *(a2 + 200);
          v64 = *(a2 + 208);
          v65 = *(a2 + 216);
          v66 = *(a2 + 224);

          v67 = v61;
          sub_3F9D0(v63, v64, v65, v66);
          *(a2 + 200) = v60;
          *(a2 + 208) = v61;
          v29 = v71;
          *(a2 + 216) = v70;
          *(a2 + 224) = v62;
        }
      }

      sub_12E1C(v36, &unk_DFAAB0, qword_B05AE0);

      *(a2 + v72) = v15;
    }
  }
}

id sub_206024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HorizontalLockupCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HorizontalLockupCollectionViewCell(uint64_t a1)
{
  result = qword_DF8A48;
  if (!qword_DF8A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20627C(uint64_t a1)
{
  sub_7D678(319);
  if (v1 <= 0x3F)
  {
    sub_AB4F50();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_206408(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

unint64_t sub_206444()
{
  result = qword_DF8A58;
  if (!qword_DF8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8A58);
  }

  return result;
}

double sub_206498(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent) + 16) = a1;

  return result;
}

uint64_t sub_206538(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

__n128 sub_206588@<Q0>(uint64_t a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus);
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus);
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

void sub_2065A8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton) = a1;
  sub_203DB8(v2);
}

id sub_2065D0(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected) = result;
  if (v2 != (result & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton))
    {
      return [*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton) setSelected:result & 1];
    }
  }

  return result;
}

uint64_t sub_206624()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_imageDidChangeHandler);
  sub_307CC(v1, *(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_imageDidChangeHandler + 8));
  return v1;
}

void (*sub_206700(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(&stru_478.reloff + (swift_isaMask & *v1)))();
  return sub_A8F90;
}

uint64_t sub_2067E4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (a4)
    {
LABEL_10:
      v4 = 0;
      return v4 & 1;
    }

    goto LABEL_6;
  }

  if (a2 == 1)
  {
    if (a4 != 1)
    {
      goto LABEL_10;
    }

LABEL_6:
    sub_7FD28();
    v4 = sub_AB38E0();
    return v4 & 1;
  }

  if (a4 != 2 || a3)
  {
    goto LABEL_10;
  }

  v4 = 1;
  return v4 & 1;
}

void sub_206880(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkAccessoryStyle;
  v10 = *(v4 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkAccessoryStyle);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_7FCB4(a1);
  sub_7FCC4(v10);
  type metadata accessor for ArtworkComponentImageView();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
    v13 = *(v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle);
    v14 = *(v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 8);
    v15 = *(v11 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 16);
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = a3;
    v16 = *(v12 + 24);
    *(v12 + 24) = a4;
    sub_7FCB4(a1);
    sub_7D6F4(v13, v14, v15, v16);

    sub_7FCC4(v13);
  }
}

double sub_2069BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);

  return result;
}

void sub_206A84()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets);
  *v2 = xmmword_AFB140;
  v2[1] = xmmword_B03DC0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize) = vdupq_n_s64(0x4044000000000000uLL);
  v3 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCornerTreatment;
  v4 = UIView.Corner.small.unsafeMutableAddressor();
  v5 = sub_ABA680();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v3, v4, v5);
  (*(v6 + 56))(v1 + v3, 0, 1, v5);
  v7 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkExplicitBackgroundColor) = 0;
  v8 = v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkAccessoryStyle;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  *(v8 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView) = 1;
  sub_AB4ED0();
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomTopSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment) = 0;
  v9 = v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment;
  *v9 = 0;
  *(v9 + 8) = 2;
  v10 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_layoutInvalidationHandler);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___contextMenuButton) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell____lazy_storage___favoriteIndicator) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset) = 0;
  v11 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset);
  v12 = *&UIEdgeInsetsZero.bottom;
  *v11 = *&UIEdgeInsetsZero.top;
  v11[1] = v12;
  v13 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = xmmword_B03DA0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference) = 0;
  v14 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v16 = sub_80104(v15);

  *(v1 + v14) = v16;
  v17 = (v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_imageDidChangeHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  type metadata accessor for TextStackView();
  *(v1 + v18) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customTopSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_customBottomSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_rowPosition) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserverBehaviorType) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_forceKeepLocalDownloadVisiblity) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_206E10()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_206E50()
{

  return swift_deallocObject();
}

id sub_206E88()
{
  v1 = 1.0;
  if (*(v0 + 16))
  {
    v1 = 0.0;
  }

  return [*(v0 + 24) setAlpha:v1];
}

double block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_206ED8()
{

  return swift_deallocObject();
}

id sub_206F10()
{
  v1 = *(v0 + 16);
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication34HorizontalLockupCollectionViewCellC08TrailingF0O(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_206F94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_206FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_2070F0()
{
  v1 = type metadata accessor for SearchableContainerViewController(0, *(&stru_20.filesize + (swift_isaMask & *v0)), *(&stru_20.maxprot + (swift_isaMask & *v0)), *(&stru_20.nsects + (swift_isaMask & *v0)));
  v14.receiver = v0;
  v14.super_class = v1;
  objc_msgSendSuper2(&v14, "viewDidLoad");
  [*(*(v0 + qword_DF8A70) + qword_DF8C40) setDelegate:v0];
  if (*(v0 + qword_DF8A98))
  {
    v2 = &qword_DF8A78;
  }

  else
  {
    v2 = &qword_DF8A80;
  }

  v3 = *(v0 + *v2);
  [v0 addChildViewController:v3];
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v0 view];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  [v6 bounds];
  [v5 setFrame:?];

  v8 = [v3 view];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  [v8 setAutoresizingMask:18];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [v3 view];
  if (v12)
  {
    v13 = v12;
    [v11 addSubview:v12];

    [v3 didMoveToParentViewController:v0];
    return;
  }

LABEL_14:
  __break(1u);
}

void sub_20730C(void *a1)
{
  v1 = a1;
  sub_2070F0();
}

void sub_207354(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_2073B4(v3, &selRef_viewDidAppear_, 1);
}

uint64_t sub_2073B4(char a1, SEL *a2, char a3)
{
  v7 = type metadata accessor for SearchableContainerViewController(0, *(&stru_20.filesize + (swift_isaMask & *v3)), *(&stru_20.maxprot + (swift_isaMask & *v3)), *(&stru_20.nsects + (swift_isaMask & *v3)));
  v18.receiver = v3;
  v18.super_class = v7;
  objc_msgSendSuper2(&v18, *a2, a1 & 1);
  v8 = *(*(v3 + qword_DF8A70) + qword_DF8C40);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = result;
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 8);
    v14 = v8;
    v13(ObjectType, v11);
    v16 = v15;

    v17 = swift_getObjectType();
    (*(v16 + 16))(a3 & 1, v17, v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_207514(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2073B4(a3, &selRef_viewDidDisappear_, 0);
}

id sub_207574(void *a1)
{
  v1 = a1;
  v2 = sub_2075B8();

  return v2;
}

id sub_2075B8()
{
  v1 = [*(v0 + qword_DF8A80) navigationItem];

  return v1;
}

id sub_2075F8(void *a1)
{
  v1 = a1;
  sub_207670();
  v3 = v2;

  if (v3)
  {
    v4 = sub_AB9260();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_207670()
{
  v1 = *(v0 + qword_DF8A80);
  v2 = [v1 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB92A0();
  }

  else
  {

    return 0;
  }

  return v4;
}

void sub_2076F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_AB92A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  sub_207770(v4, v6);
}

void sub_207770(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + qword_DF8A80);
  if (a2)
  {
    v4 = v3;
    v6 = sub_AB9260();
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  [v3 setTitle:v6];
}

void sub_207818(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a4;
  v7 = a1;
  sub_208A28();
}

void sub_207884(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_208A2C();
}

uint64_t sub_2078E4(uint64_t result)
{
  v2 = qword_DF8A90;
  if (*(v1 + qword_DF8A90) != (result & 1))
  {
    v3 = v1;
    sub_20833C();
    v4 = *(*(v1 + qword_DF8A70) + qword_DF8C40);
    swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v4 = 0;
      v7 = 0;
    }

    else
    {
      v7 = v5;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 8);
      v10 = v4;
      v9(ObjectType, v7);
      v12 = v11;

      v13 = swift_getObjectType();
      (*(v12 + 16))(*(v3 + v2), v13, v12);
      swift_unknownObjectRelease();
    }

    v14 = *(v3 + qword_DF8A78);
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = v15;
      v18 = swift_getObjectType();
      v19 = *(v17 + 8);
      v20 = v14;
      v19(v18, v17);
      v22 = v21;

      if (v4)
      {
        v23 = swift_getObjectType();
        v24 = *(v7 + 8);
        swift_unknownObjectRetain();
        v25 = v24(v23, v7);
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = swift_getObjectType();
      (*(v22 + 40))(v25, v27, v28, v22);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_207B40(char a1)
{
  v2 = *(v1 + qword_DF8A90);
  *(v1 + qword_DF8A90) = a1;
  return sub_2078E4(v2);
}

void sub_207B58(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_208A54();
}

void sub_207BB8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_208A6C();
}

void sub_207C18(char a1)
{
  v2 = v1[qword_DF8A98];
  if (v2 != (a1 & 1))
  {
    v3 = v1;
    if (a1)
    {
      v4 = qword_DF8A78;
    }

    else
    {
      v4 = qword_DF8A80;
    }

    v5 = *&v1[v4];
    if (v2)
    {
      v6 = qword_DF8A78;
    }

    else
    {
      v6 = qword_DF8A80;
    }

    v7 = *&v3[v6];
    v48 = v5;
    sub_72C6C();
    v8 = v5;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8DD0, &qword_B04320);
    if (swift_dynamicCast())
    {
      v10 = *(&v45 + 1);
      v11 = v46;
      __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
      v11[1](0, v10, v11);
      __swift_destroy_boxed_opaque_existential_0(&v44);
    }

    else
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      sub_208944(&v44);
    }

    v48 = v9;
    v12 = v9;
    if (swift_dynamicCast())
    {
      v13 = *(&v45 + 1);
      v14 = v46;
      __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
      v14[1](1, v13, v14);
      __swift_destroy_boxed_opaque_existential_0(&v44);
    }

    else
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      sub_208944(&v44);
    }

    [v8 setDefinesPresentationContext:0];
    [v12 setDefinesPresentationContext:1];
    v15 = [v12 parentViewController];
    if (!v15 || (v16 = v15, v17 = v3, v18 = sub_ABA790(), v16, v17, (v18 & 1) == 0))
    {
      [v3 addChildViewController:v12];
      v19 = [v3 view];
      if (!v19)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v20 = v19;
      v21 = [v12 view];
      if (!v21)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v22 = v21;
      [v20 addSubview:v21];

      v23 = [v12 view];
      if (!v23)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v24 = v23;
      v25 = [v3 view];
      if (!v25)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v26 = v25;
      [v25 bounds];
      [v24 setFrame:?];

      v27 = [v12 view];
      if (!v27)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v28 = v27;
      [v27 setAutoresizingMask:18];
    }

    v29 = [v12 view];
    if (v29)
    {
      v30 = v29;
      [v29 setAlpha:0.0];

      v31 = [v12 view];
      if (v31)
      {
        v32 = v31;
        [v31 setHidden:0];

        v33 = objc_opt_self();
        v34 = swift_allocObject();
        v34[2] = v3;
        v34[3] = v8;
        v34[4] = v12;
        v46 = sub_2089B0;
        v47 = v34;
        *&v44 = _NSConcreteStackBlock;
        *(&v44 + 1) = 1107296256;
        *&v45 = sub_1B5EB4;
        *(&v45 + 1) = &block_descriptor_70;
        v35 = _Block_copy(&v44);
        v36 = v8;
        v37 = v12;
        v38 = v3;

        v39 = swift_allocObject();
        v39[2] = v37;
        v39[3] = v38;
        v39[4] = v36;
        v46 = sub_208A1C;
        v47 = v39;
        *&v44 = _NSConcreteStackBlock;
        *(&v44 + 1) = 1107296256;
        *&v45 = sub_1811AC;
        *(&v45 + 1) = &block_descriptor_18;
        v40 = _Block_copy(&v44);
        v41 = v36;
        v42 = v37;
        v43 = v38;

        [v33 animateWithDuration:2 delay:v35 options:v40 animations:0.35 completion:0.0];

        _Block_release(v40);
        _Block_release(v35);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }
}

void sub_208130(uint64_t a1, void *a2, void *a3)
{
  [*(a1 + qword_DF8A70) setShowsSearchResultsController:*(a1 + qword_DF8A98)];
  v5 = [a2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 setAlpha:0.0];

  v7 = [a3 view];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setAlpha:1.0];
}

void sub_208204(int a1, id a2, uint64_t a3, void *a4)
{
  [a2 didMoveToParentViewController:a3];
  v5 = [a4 view];
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_208294(char a1)
{
  v2 = *(v1 + qword_DF8A98);
  *(v1 + qword_DF8A98) = a1 & 1;
  sub_207C18(v2);
}

Swift::Int sub_2082F0(uint64_t a1)
{
  sub_ABB5C0();
  LaunchURL.Resolver.PerformOption.hash(into:)(v3, *v1);
  return sub_ABB610();
}

void sub_20833C()
{
  if (*(v0 + qword_DF8A88))
  {
    v1 = *(v0 + qword_DF8A90);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + qword_DF8A70);
    v4 = UISearchController.searchText.getter();
    v6 = v5;

    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v1 = 1;
    }

    else
    {
LABEL_8:
      v1 = 0;
    }

    v0 = v2;
  }

  v8 = *(v0 + qword_DF8A98);
  *(v0 + qword_DF8A98) = v1;

  sub_207C18(v8);
}

id sub_2083FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_208A80(a3);

  return v5;
}

id sub_2084D8()
{
  v0 = sub_208BD8();

  return v0;
}

void sub_208514(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_208BE8();
}

id sub_2085BC()
{
  v1 = *(&stru_20.nsects + (swift_isaMask & *v0));
  v4[0] = *(&stru_20.filesize + (swift_isaMask & *v0));
  v4[1] = v1;
  v2 = type metadata accessor for SearchableContainerViewController.SearchController(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_208644(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_208C18();
}

id sub_2086D4()
{
  v1 = type metadata accessor for SearchableContainerViewController(0, *(&stru_20.filesize + (swift_isaMask & *v0)), *(&stru_20.maxprot + (swift_isaMask & *v0)), *(&stru_20.nsects + (swift_isaMask & *v0)));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_208758(uint64_t a1)
{
  v2 = *(a1 + qword_DF8A80);
}

void sub_208898()
{
  *(v0 + qword_DF8A88) = 0;
  *(v0 + qword_DF8A90) = 0;
  *(v0 + qword_DF8A98) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_208944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8DD8, &qword_B04328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroyTm_4()
{

  return swift_deallocObject();
}

uint64_t sub_208A54()
{
  v1 = *(v0 + qword_DF8A90);
  *(v0 + qword_DF8A90) = 1;
  return sub_2078E4(v1);
}

uint64_t sub_208A6C()
{
  v1 = *(v0 + qword_DF8A90);
  *(v0 + qword_DF8A90) = 0;
  return sub_2078E4(v1);
}

id sub_208A80(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v1;
  v6 = *&stru_68.sectname[v5];
  *(v1 + qword_DF8C40) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = *(&stru_20.nsects + (v4 & v3));
  v10 = *(v5 + 80);
  v11 = v7;
  v12 = v6;
  v8 = type metadata accessor for SearchableContainerViewController.SearchController(0, &v10);
  v13.receiver = v1;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, "initWithSearchResultsController:", a1);
}

char *InlineSocialUpsellView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_title];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_subtitle];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_lockupImageArtworkCatalog] = 0;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_closeButtonHandler];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonHandler];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkCachingReference] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textDrawingCache] = 0;
  v16 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView;
  type metadata accessor for TextStackView();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v19 = sub_80104(v18);

  *&v5[v17] = v19;
  v20 = &v5[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents];
  *v20 = _s16MusicApplication22InlineSocialUpsellViewC14textComponents33_6AA3EA120887548DCAAD9EE36D67F498LLAC04TextH0AELLVvpfi_0();
  v20[1] = v21;
  v20[2] = v22;
  *&v5[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton] = 0;
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v24 = [v23 layer];
  [v24 setAllowsGroupOpacity:0];

  v25 = [v23 layer];
  [v25 setAllowsGroupBlending:0];

  v26 = qword_DE6C78;
  v27 = v23;
  if (v26 != -1)
  {
    swift_once();
  }

  [v27 setBackgroundColor:qword_E718B8];
  v28 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent;
  v29 = *&v27[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent];
  *(v29 + 24) = 0xD000000000000019;
  *(v29 + 32) = 0x8000000000B57F20;

  v30 = *&v27[v28];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v32 = (v30 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v33 = *(v30 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v34 = *(v30 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  *v32 = sub_13B168;
  v32[1] = v31;

  sub_17654(v33, v34);

  v35 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView;
  v36 = *&v27[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView];
  v37 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  *(v36 + v37) = 2;
  v38 = [v27 traitCollection];

  sub_209030(v38);
  [v27 addSubview:*(*&v27[v28] + 112)];
  [v27 addSubview:*&v27[v35]];
  sub_209400();
  v40 = v39;
  [v27 addSubview:v39];

  v41 = sub_2095D4();
  [v27 addSubview:v41];

  return v27;
}

void sub_209030(void *a1)
{
  v2 = v1;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents];
  swift_beginAccess();
  sub_20B854(a1);
  swift_endAccess();
  v5 = *(v4 + 2);

  TextStackView.removeAll()();
  if (!(v5 >> 62))
  {
    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:

    v10 = sub_2095D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA930, &qword_AF8F80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF4EC0;
    sub_AB91E0();
    sub_AB3550();
    v12 = sub_AB9320();
    v31 = v13;
    v32 = v12;
    sub_20C3FC(v33);
    v29 = v33[1];
    v30 = v33[0];
    v28 = v34;
    v27 = v35;
    v14 = v36;
    v26 = v37;
    v25 = v38;
    v15 = objc_opt_self();
    v16 = [v15 defaultMetrics];
    v17 = sub_ABA310();
    sub_AB9EF0();
    v19 = v18;

    v20 = [v15 defaultMetrics];
    v21 = sub_ABA310();
    sub_AB9EF0();
    v23 = v22;

    *(v11 + 32) = 0x656C746974;
    *(v11 + 40) = 0xE500000000000000;
    *(v11 + 48) = v32;
    *(v11 + 56) = v31;
    *(v11 + 64) = v30;
    *(v11 + 72) = v29;
    *(v11 + 80) = v28;
    *(v11 + 88) = v27;
    *(v11 + 96) = v14;
    *(v11 + 104) = v26;
    *(v11 + 112) = v25;
    *(v11 + 120) = v19;
    *(v11 + 128) = v23;
    v24 = *&v10[OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents];
    *&v10[OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents] = v11;
    sub_45677C(v24);

    [v2 setNeedsLayout];
    return;
  }

  v7 = sub_ABB060();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_36003C(i, v5, v6);
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
      }

      TextStackView.add(_:)(v9);
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_209400()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton);
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = objc_opt_self();
  v4 = [v3 buttonWithType:1];
  [v3 easyTouchDefaultHitRectInsets];
  [v4 setHitRectInsets:?];
  v5 = objc_opt_self();
  v6 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v7 = [v5 imageNamed:v6 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v7)
  {
    [v4 setImage:v7 forState:0];

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = sub_13C80(0, &qword_E0BC00, MPButton_ptr);
    v10 = v0;
    ControlEventHandling<>.on(_:handler:)(64, sub_20CEC8, v8, v9);

    v11 = *(v0 + v1);
    *(v10 + v1) = v4;
    v4;

    v2 = 0;
LABEL_6:
    v12 = v2;
    return;
  }

  __break(1u);
}

char *sub_2095D4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton);
  }

  else
  {
    v4 = sub_20C130();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_209688(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_title];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents;
      swift_beginAccess();
      v9 = *&v2[v8];

      v10 = String.trim()();

      swift_beginAccess();
      v9[7] = v10;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double InlineSocialUpsellView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_title];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents;
    swift_beginAccess();
    v10 = *&v2[v9];

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }

  return result;
}

void (*InlineSocialUpsellView.title.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_title;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_20996C;
}

uint64_t sub_209984(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_subtitle];
  swift_beginAccess();
  result = a1;
  if (*v5 != a1 || *(v5 + 1) != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v8 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents];
      swift_beginAccess();
      v9 = *(v8 + 1);

      v10 = String.trim()();

      swift_beginAccess();
      v9[7] = v10;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double InlineSocialUpsellView.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_subtitle];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  v8 = v6 == a1 && v7 == a2;
  if (!v8 && (sub_ABB3C0() & 1) == 0)
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 1);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }

  return result;
}

void (*InlineSocialUpsellView.subtitle.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_subtitle;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_209C70;
}

void sub_209C88(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v7 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  v9 = (v7 + v6);
  v11 = *v9;
  v10 = v9[1];
  *v9 = v5;
  v9[1] = v8;
  if (a2)
  {

    a3(v11, v10);
  }

  else
  {
    a3(v11, v10);
  }

  free(v4);
}

double sub_209D30(uint64_t a1, uint64_t a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v5 = (v2 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle);
  swift_beginAccess();
  v7 = v5[1];
  if (!a2)
  {
    if (!v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v7 || (*v5 == a1 ? (v8 = v7 == a2) : (v8 = 0), !v8 && (sub_ABB3C0() & 1) == 0))
  {
LABEL_10:
    v9 = sub_2095D4();
    if (v5[1])
    {

      v10 = String.trim()();
      countAndFlagsBits = v10._countAndFlagsBits;
      object = v10._object;
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      countAndFlagsBits = sub_AB9320();
      object = v13;
    }

    v14 = &v9[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title];
    v15 = *&v9[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title];
    v16 = *&v9[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title + 8];
    *v14 = countAndFlagsBits;
    v14[1] = object;
    v17 = countAndFlagsBits == v15 && object == v16;
    if (!v17 && (sub_ABB3C0() & 1) == 0)
    {
      sub_458374();
    }
  }

  return result;
}

uint64_t InlineSocialUpsellView.primaryButtonTitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double InlineSocialUpsellView.primaryButtonTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_209D30(v6, v7);

  return result;
}

void (*InlineSocialUpsellView.primaryButtonTitle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_20A094;
}

void sub_20A094(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_209D30(v9, v8);
  }

  else
  {
    sub_209D30(v9, v8);
  }

  free(v2);
}

void *InlineSocialUpsellView.lockupImageArtworkCatalog.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_lockupImageArtworkCatalog;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void InlineSocialUpsellView.lockupImageArtworkCatalog.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_lockupImageArtworkCatalog;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_74EA4(a1);
}

uint64_t (*InlineSocialUpsellView.lockupImageArtworkCatalog.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_lockupImageArtworkCatalog;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20A26C;
}

void sub_20A26C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    v5 = v4;
    sub_74EA4(v4);
  }

  free(v3);
}

uint64_t sub_20A35C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_307CC(*v2, v2[1]);
  return v3;
}

uint64_t sub_20A3C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_17654(v7, v8);
}

double InlineSocialUpsellView.artworkCachingReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent) + 16) = a1;

  return result;
}

uint64_t (*InlineSocialUpsellView.artworkCachingReference.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkCachingReference;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20A58C;
}

void sub_20A58C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(v3[3] + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent) + 16) = *(v3[3] + v3[4]);
  }

  free(v3);
}

double InlineSocialUpsellView.textDrawingCache.setter(uint64_t a1)
{
  sub_20C8F0(a1);

  return result;
}

uint64_t (*InlineSocialUpsellView.textDrawingCache.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20A6C4;
}

void sub_20A6C4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;
    swift_retain_n();
    sub_2E6210(v8);
  }

  free(v3);
}

void (*InlineSocialUpsellView.frame.modify(objc_super **a1))(objc_super **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[13].receiver = v1;
  ObjectType = swift_getObjectType();
  v4[13].super_class = ObjectType;
  v4[6].receiver = v1;
  v4[6].super_class = ObjectType;
  objc_msgSendSuper2(v4 + 6, "frame");
  v4->receiver = v6;
  v4->super_class = v7;
  v4[1].receiver = v8;
  v4[1].super_class = v9;
  return sub_20A8C0;
}

id sub_20A8EC(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_20A9B8(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  ObjectType = swift_getObjectType();
  v38.receiver = v9;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v37.receiver = v9;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, *a2, a3, a4, a5, a6);
  type metadata accessor for CGRect(0);
  v33 = v16;
  v34 = v18;
  v35 = v20;
  v36 = v22;
  v32.receiver = v9;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, *a1);
  v28 = v23;
  v29 = v24;
  v30 = v25;
  v31 = v26;
  if (sub_AB38D0())
  {
    v27 = [v9 traitCollection];
    sub_209030(v27);
  }
}

void (*InlineSocialUpsellView.bounds.modify(objc_super **a1))(objc_super **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[13].receiver = v1;
  ObjectType = swift_getObjectType();
  v4[13].super_class = ObjectType;
  v4[6].receiver = v1;
  v4[6].super_class = ObjectType;
  objc_msgSendSuper2(v4 + 6, "bounds");
  v4->receiver = v6;
  v4->super_class = v7;
  v4[1].receiver = v8;
  v4[1].super_class = v9;
  return sub_20AB80;
}

void sub_20AB94(objc_super **a1, char a2, SEL *a3, SEL *a4)
{
  v6 = *a1;
  receiver = (*a1)->receiver;
  super_class = (*a1)->super_class;
  v10 = (*a1)[1].receiver;
  v9 = (*a1)[1].super_class;
  v12 = (*a1)[13].receiver;
  v11 = (*a1)[13].super_class;
  v13 = *a1;
  if (a2)
  {
    v13[7].receiver = v12;
    v6[7].super_class = v11;
    objc_msgSendSuper2(v13 + 7, *a3);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v6[8].receiver = v12;
    v6[8].super_class = v11;
    objc_msgSendSuper2(v6 + 8, *a4, *&receiver, *&super_class, *&v10, *&v9);
    type metadata accessor for CGRect(0);
    v6[9].receiver = v12;
    v6[2].receiver = v15;
    v6[2].super_class = v17;
    v6[3].receiver = v19;
    v6[3].super_class = v21;
    v6[9].super_class = v11;
    objc_msgSendSuper2(v6 + 9, *a3);
  }

  else
  {
    v13[10].receiver = v12;
    v6[10].super_class = v11;
    objc_msgSendSuper2(v13 + 10, *a3);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v6[11].receiver = v12;
    v6[11].super_class = v11;
    objc_msgSendSuper2(v6 + 11, *a4, *&receiver, *&super_class, *&v10, *&v9);
    type metadata accessor for CGRect(0);
    v6[12].receiver = v12;
    v6[2].receiver = v27;
    v6[2].super_class = v29;
    v6[3].receiver = v31;
    v6[3].super_class = v33;
    v6[12].super_class = v11;
    objc_msgSendSuper2(v6 + 12, *a3);
  }

  v6[4].receiver = v22;
  v6[4].super_class = v23;
  v6[5].receiver = v24;
  v6[5].super_class = v25;
  if (sub_AB38D0())
  {
    v34 = [v6[13].receiver traitCollection];
    sub_209030(v34);
  }

  free(v6);
}

Swift::Void __swiftcall InlineSocialUpsellView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v80.receiver = v0;
  v80.super_class = ObjectType;
  objc_msgSendSuper2(&v80, "layoutSubviews");
  v3 = [v0 traitCollection];
  [v3 displayScale];
  [v0 music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_20B258(v3);
  v71 = v11;
  v73 = v10;
  v68 = v12;
  v65 = v13;
  [v0 effectiveUserInterfaceLayoutDirection];
  v79.receiver = v0;
  v79.super_class = ObjectType;
  objc_msgSendSuper2(&v79, "bounds");
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v3 horizontalSizeClass];
  v22 = UIEdgeInsetsInsetRect(v15, v17, v19, v21, v5, v7);
  v75 = v23;
  rect = v24;
  v66 = v25;
  v26 = *&v0[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent];
  v27 = [v3 horizontalSizeClass];
  v28 = 366.0;
  v29 = *(v26 + 80);
  v30 = *(v26 + 88);
  if (v27 == &dword_0 + 2)
  {
    v28 = 452.0;
  }

  *(v26 + 80) = v28;
  *(v26 + 88) = v28;
  sub_75614(v29, v30);
  v31 = sub_76368(0, 0, 1);
  v33 = v32;
  v34 = v71 + 0.0;
  v72 = v31 - v65;
  v74 = v73 + 0.0;
  sub_ABA490();
  v69 = v33;
  if (sub_76B28(v35, v36, v37, v38))
  {
    v81.origin.x = v34;
    v81.size.width = v72;
    v81.origin.y = v74;
    v81.size.height = v33;
    v22 = v65 + CGRectGetMaxX(v81);
    v39 = v19 - v22 - v9;
  }

  else
  {
    v39 = rect;
  }

  v40 = v66 - v68;
  v41 = v22;
  v64 = v22;
  v42 = v75;
  recta = v39;
  v43 = v66 - v68;
  Width = CGRectGetWidth(*(&v39 - 2));
  v45 = *&v1[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView];
  [v45 sizeThatFits:{fmin(Width, 250.0), v66 - v68}];
  v63 = v46;
  sub_ABA470();
  v48 = v47;
  v67 = v49;
  v51 = v50;
  v53 = v52;
  v54 = sub_2095D4();
  v78.receiver = v54;
  v78.super_class = type metadata accessor for SubtitledButton();
  objc_msgSendSuper2(&v78, "sizeThatFits:", recta, v40, v63);

  sub_AB3A00();
  v70 = v51 - v55;
  v82.origin.x = v64;
  v82.origin.y = v75;
  v82.size.width = recta;
  v82.size.height = v40;
  CGRectGetMinX(v82);
  v83.origin.x = v48;
  v83.origin.y = v70;
  v83.size.width = v53;
  v83.size.height = v67;
  CGRectGetMaxY(v83);
  v56 = *&v1[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton];
  sub_ABA490();
  [v56 setFrame:?];

  sub_ABA490();
  [v45 setFrame:?];
  v85.origin.x = 0.0;
  v85.origin.y = 0.0;
  v85.size.width = 0.0;
  v85.size.height = 0.0;
  v84.origin.x = v34;
  v84.size.height = v69;
  v84.size.width = v72;
  v84.origin.y = v74;
  LOBYTE(v45) = CGRectIntersectsRect(v84, v85);
  sub_209400();
  v58 = v57;
  sub_20BFDC(v45 ^ 1);
  v60 = v59;
  [v58 setImage:v59 forState:0];

  v61 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton;
  [*&v1[OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton] sizeThatFits:{recta, v40}];
  v62 = *&v1[v61];
  sub_ABA490();
  [v62 setFrame:?];
}

uint64_t sub_20B258(void *a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "bounds");
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = [a1 horizontalSizeClass];
  if (result == 2)
  {
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    CGRectGetWidth(v13);
    sub_471A4();
    result = sub_AB38F0();
    if ((result & 1) == 0)
    {
      v14.origin.x = v4;
      v14.origin.y = v6;
      v14.size.width = v8;
      v14.size.height = v10;
      CGRectGetWidth(v14);
      return sub_AB38F0();
    }
  }

  return result;
}

double InlineSocialUpsellView.sizeThatFits(_:)(double a1)
{
  v3 = [v1 traitCollection];
  InlineSocialUpsellView.preferredHeight(traitCollection:containerWidth:)(v3, a1);

  return a1;
}

void InlineSocialUpsellView.preferredHeight(traitCollection:containerWidth:)(void *a1, double a2)
{
  v8 = _s16MusicApplication22InlineSocialUpsellViewC14textComponents33_6AA3EA120887548DCAAD9EE36D67F498LLAC04TextH0AELLVvpfi_0();
  v9 = v4;
  v10 = v5;
  sub_20B854(a1);
  sub_2F48A4(v10, a1, 0, 0);
  v6 = sub_2095D4();
  v7.receiver = v6;
  v7.super_class = type metadata accessor for SubtitledButton();
  objc_msgSendSuper2(&v7, "sizeThatFits:", a2, 1.79769313e308);

  [a1 horizontalSizeClass];
}

Swift::Void __swiftcall InlineSocialUpsellView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!isa || v4 != [(objc_class *)isa horizontalSizeClass])
  {
LABEL_8:
    v14 = [v1 traitCollection];
    sub_209030(v14);

    return;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [(objc_class *)isa preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 != sub_AB92A0() || v10 != v11)
  {
    v13 = sub_ABB3C0();

    if (v13)
    {
      return;
    }

    goto LABEL_8;
  }
}

void sub_20B854(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_ABA310();
  v4 = sub_ABA330();

  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v5 = sub_ABA550();
  v72 = v4;
  if (v4)
  {
    v6 = [a1 preferredContentSizeCategory];
    v7 = sub_ABA590();

    v5 = v7;
  }

  v8 = qword_DE6C98;
  v9 = v5;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_E718D8;
  v11 = objc_opt_self();
  v12 = v10;
  v66 = v11;
  v13 = [v11 clearColor];
  v14 = objc_opt_self();
  v71 = v12;
  v70 = v13;
  v69 = v9;
  v15 = [v14 defaultMetrics];
  v16 = sub_ABA310();
  sub_AB9EF0();
  v18 = v17;

  if ([a1 horizontalSizeClass] == &dword_0 + 2)
  {
    if (v72)
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    v20 = *v73;
    v64 = v10;
    *&v93 = v10;
    *(&v93 + 1) = v13;
    v94 = xmmword_AF7C20;
    v95 = 0uLL;
    v65 = v9;
    *&v96 = v9;
    v62 = v19;
    *(&v96 + 1) = v19;
    v97 = v18;
    swift_beginAccess();
    v22 = v20[3];
    v21 = v20[4];
    v23 = v20[6];
    v101 = v20[5];
    v102 = v23;
    v99 = v22;
    v100 = v21;
    v98 = v20[2];
    v20[5] = v96;
    v20[6] = v18;
    v24 = v94;
    v20[2] = v93;
    v20[3] = v24;
    v20[4] = v95;
    sub_2F118(&v93, &v88);
    sub_2F174(&v98);
    sub_2EB2A8();
    v25 = sub_ABA560();
    v63 = v13;
    if (v72)
    {
      v26 = [a1 preferredContentSizeCategory];
      v27 = sub_ABA590();

      v25 = v27;
    }

    v28 = qword_DE6C88;
    v29 = v25;
    if (v28 != -1)
    {
      swift_once();
    }

    v60 = qword_E718C8;
    v30 = qword_E718C8;
    v31 = [v66 clearColor];
    v68 = v30;
    v67 = v31;
    v61 = v29;
    v32 = [v14 defaultMetrics];
    v33 = sub_ABA310();
    sub_AB9EF0();
    v35 = v34;

    v36 = [v14 defaultMetrics];
    v37 = sub_ABA310();
    sub_AB9EF0();
    v39 = v38;

    v40 = v73[1];
    if (v72)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    *&v74 = v60;
    *(&v74 + 1) = v31;
    v75 = xmmword_AF7C20;
    v76 = 0uLL;
    *&v77 = v29;
    *(&v77 + 1) = v41;
    *&v78 = v35;
    *(&v78 + 1) = v39;
    swift_beginAccess();
    v43 = v40[3];
    v42 = v40[4];
    v44 = v40[6];
    v79[3] = v40[5];
    v79[4] = v44;
    v79[2] = v42;
    v79[0] = v40[2];
    v79[1] = v43;
    v45 = v78;
    v40[5] = v77;
    v40[6] = v45;
    v46 = v75;
    v40[2] = v74;
    v40[3] = v46;
    v40[4] = v76;
    sub_2F118(&v74, &v88);
    sub_2F174(v79);
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_AF7C50;
    *(v47 + 32) = v20;
    *(v47 + 40) = v40;

    v80[0] = v60;
    v80[1] = v31;
    v81 = xmmword_AF7C20;
    v82 = 0;
    v83 = 0;
    v84 = v29;
    v85 = v41;
    v86 = v35;
    v87 = v39;
    sub_2F174(v80);
    *&v88 = v64;
    *(&v88 + 1) = v63;
    v89 = xmmword_AF7C20;
    v90 = 0uLL;
    *&v91 = v65;
    *(&v91 + 1) = v62;
    v92 = v18;
    sub_2F174(&v88);

    v73[2] = v47;
  }

  else
  {
    v48 = [v14 defaultMetrics];
    v49 = sub_ABA310();
    sub_AB9EF0();
    v51 = v50;

    if (v72)
    {
      v52 = 4;
    }

    else
    {
      v52 = 0;
    }

    v53 = *v73;
    *&v88 = v10;
    *(&v88 + 1) = v13;
    v89 = xmmword_AF7C20;
    v90 = 0uLL;
    *&v91 = v9;
    *(&v91 + 1) = v52;
    *&v92 = v18;
    *(&v92 + 1) = v51;
    swift_beginAccess();
    v55 = v53[3];
    v54 = v53[4];
    v56 = v53[6];
    v96 = v53[5];
    v97 = v56;
    v94 = v55;
    v95 = v54;
    v93 = v53[2];
    v57 = v92;
    v53[5] = v91;
    v53[6] = v57;
    v58 = v89;
    v53[2] = v88;
    v53[3] = v58;
    v53[4] = v90;
    sub_2F118(&v88, &v98);
    sub_2F174(&v93);
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_AF82B0;
    *(v59 + 32) = v53;

    *&v98 = v10;
    *(&v98 + 1) = v13;
    v99 = xmmword_AF7C20;
    v100 = 0uLL;
    *&v101 = v9;
    *(&v101 + 1) = v52;
    *&v102 = v18;
    *(&v102 + 1) = v51;
    sub_2F174(&v98);

    v73[2] = v59;
  }
}

void sub_20BFDC(char a1)
{
  v2 = objc_opt_self();
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v2 = [v2 imageNamed:v3 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
LABEL_6:
    v4 = sub_AB9260();
    if (qword_DE6AF0 != -1)
    {
      swift_once();
    }

    v5 = [v2 imageNamed:v4 inBundle:qword_E71620 compatibleWithTraitCollection:0];

    if (!v5)
    {
      __break(1u);
    }
  }
}

char *sub_20C130()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v0 = type metadata accessor for SubtitledButton();
  v1 = [objc_allocWithZone(v0) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = &v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  *v2 = xmmword_B04330;
  *(v2 + 1) = xmmword_B04330;
  v16 = xmmword_B04330;
  v17 = xmmword_B04330;
  v3 = v1;
  if (sub_AB38D0())
  {
    [v3 setNeedsLayout];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA930, &qword_AF8F80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  sub_AB91E0();
  sub_AB3550();
  v5 = sub_AB9320();
  v7 = v6;
  sub_20C3FC(&v16);
  v8 = v17;
  v9 = *(&v17 + 1);
  v10 = v18;
  v11 = v19;
  v12 = v20;
  *(v4 + 32) = 0x656C746974;
  *(v4 + 40) = 0xE500000000000000;
  *(v4 + 48) = v5;
  *(v4 + 56) = v7;
  *(v4 + 64) = v16;
  *(v4 + 80) = v8;
  *(v4 + 88) = v9;
  *(v4 + 96) = v10;
  *(v4 + 104) = v11;
  *(v4 + 112) = v12;
  *(v4 + 120) = xmmword_B04340;
  v13 = *&v3[OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents];
  *&v3[OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents] = v4;
  sub_45677C(v13);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(64, sub_20CEA4, v14, v0);

  return v3;
}

void sub_20C3FC(uint64_t a1@<X8>)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_ABA310();
  v6 = sub_ABA330();

  if (v6)
  {
    sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
    v7 = [v1 traitCollection];
    v8 = [v7 preferredContentSizeCategory];

    v9 = sub_ABA590();
  }

  else
  {
    v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  }

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 blackColor];
  v13 = [v10 clearColor];
  v14 = [v10 whiteColor];

  *a1 = v14;
  *(a1 + 8) = v13;
  *(a1 + 16) = 3;
  *(a1 + 24) = 4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v11;
}

void sub_20C5E0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + *a3;
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 8);
      sub_307CC(v7, v8);

      v7();
      sub_17654(v7, v8);
    }

    else
    {
    }
  }
}

double sub_20C7BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkCachingReference;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent) + 16) = a1;

  return result;
}

double sub_20C838()
{
  swift_beginAccess();

  return result;
}

void (*sub_20C880(uint64_t **a1))(void *a1)
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
  v2[4] = InlineSocialUpsellView.textDrawingCache.modify(v2);
  return sub_A8F90;
}

double sub_20C8F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;

  sub_2E6210(v6);

  return result;
}

uint64_t _s16MusicApplication22InlineSocialUpsellViewC14textComponents33_6AA3EA120887548DCAAD9EE36D67F498LLAC04TextH0AELLVvpfi_0()
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v0 = sub_ABA550();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v22[0] = v1;
  *(&v22[0] + 1) = v4;
  v22[1] = xmmword_AF7C20;
  v23 = 0;
  v24 = 0;
  v25 = v0;
  v26 = 0;
  v27 = xmmword_B008B0;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v22);
  v15 = v3;
  v14 = v4;
  v13 = v0;
  sub_2F118(v22, v35);

  v6 = sub_ABA560();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v7 = qword_E718C8;
  v8 = qword_E718C8;
  v9 = [v2 clearColor];
  *&v16[0] = v7;
  *(&v16[0] + 1) = v9;
  v16[1] = xmmword_AF7C20;
  v17 = 0;
  v18 = 0;
  v19 = v6;
  v20 = 2;
  v21 = xmmword_B04350;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF7C50;
  *(v11 + 32) = v5;
  *(v11 + 40) = v10;
  sub_2F118(v16, v35);

  v28[0] = v7;
  v28[1] = v9;
  v29 = xmmword_AF7C20;
  v30 = 0;
  v31 = 0;
  v32 = v6;
  v33 = 2;
  v34 = xmmword_B04350;
  sub_2F174(v28);
  v35[0] = v1;
  v35[1] = v4;
  v36 = xmmword_AF7C20;
  v37 = 0;
  v38 = 0;
  v39 = v0;
  v40 = 0;
  v41 = xmmword_B008B0;
  sub_2F174(v35);
  return v5;
}

uint64_t sub_20CCB0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void _s16MusicApplication22InlineSocialUpsellViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonTitle);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_lockupImageArtworkCatalog) = 0;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_closeButtonHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_primaryButtonHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textDrawingCache) = 0;
  v7 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textStackView;
  type metadata accessor for TextStackView();
  *(v1 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v10 = sub_80104(v9);

  *(v1 + v8) = v10;
  v11 = (v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView_textComponents);
  *v11 = _s16MusicApplication22InlineSocialUpsellViewC14textComponents33_6AA3EA120887548DCAAD9EE36D67F498LLAC04TextH0AELLVvpfi_0();
  v11[1] = v12;
  v11[2] = v13;
  *(v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___closeButton) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication22InlineSocialUpsellView____lazy_storage___primaryButton) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_20CF18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v59 = sub_AB6640();
  __chkstk_darwin();
  v58 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E70, &qword_B044B8);
  __chkstk_darwin();
  v55 = &v50 - v4;
  v5 = sub_AB5730();
  v52 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E78, &qword_B044C0);
  v54 = *(v53 - 8);
  __chkstk_darwin();
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E80, &qword_B044C8);
  __chkstk_darwin();
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E88, &qword_B044D0);
  v50 = v13;
  __chkstk_darwin();
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E90, &qword_B044D8);
  v17 = *(v16 - 8);
  v56 = v16;
  v57 = v17;
  __chkstk_darwin();
  v51 = &v50 - v18;
  *v12 = sub_AB6440();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8E98, &qword_B044E0);
  sub_20D658(v2, &v12[*(v19 + 44)]);
  v20 = sub_AB6BB0();
  KeyPath = swift_getKeyPath();
  v22 = &v12[*(v10 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_AB6BD0();
  sub_20E254();
  sub_AB6F80();
  sub_12E1C(v12, &qword_DF8E80, &qword_B044C8);
  v23 = sub_AB74D0();
  v24 = swift_getKeyPath();
  v25 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EB8, &qword_B04558) + 36)];
  *v25 = v24;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  v27 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EC0, &unk_B04590) + 36)];
  *v27 = v26;
  v27[8] = 1;
  v28 = sub_AB6A90();
  v29 = &v15[*(v13 + 36)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  sub_AB5720();
  v31 = *v2;
  v30 = *(v2 + 8);
  v32 = *(v2 + 16);
  v68 = *(v2 + 24);
  v33 = *(v2 + 48);
  v69 = *(v2 + 40);
  v70 = v68;
  v34 = swift_allocObject();
  v35 = *(v2 + 16);
  *(v34 + 16) = *v2;
  *(v34 + 32) = v35;
  *(v34 + 48) = *(v2 + 32);
  *(v34 + 64) = *(v2 + 48);
  v36 = v31;
  sub_307CC(v30, v32);
  sub_20E3D0(&v70, &v65);

  sub_AB78E0();
  (*(v52 + 8))(v7, v5);

  sub_AB57E0();
  v37 = sub_20E440();
  v38 = sub_36A00(&qword_DF8EE0, &qword_DF8E78, &qword_B044C0, &protocol conformance descriptor for _EndedGesture<A>);
  v39 = v51;
  v40 = v50;
  v41 = v53;
  sub_AB71D0();
  (*(v54 + 8))(v9, v41);
  sub_12E1C(v15, &qword_DF8E88, &qword_B044D0);
  sub_AB67A0();
  v42 = v55;
  sub_AB57C0();
  v65 = v68;
  v66 = v69;
  v67 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EE8, &qword_B045A0);
  sub_AB58B0();
  v43 = v63;
  v44 = v64;
  v45 = v60;
  v46 = v42 + *(v60 + 44);
  *v46 = v62;
  *(v46 + 8) = v43;
  *(v46 + 16) = v44;
  v47 = (v42 + *(v45 + 48));
  *v47 = sub_20E1FC;
  v47[1] = 0;
  sub_AB57E0();
  *&v65 = v40;
  *(&v65 + 1) = v41;
  v66 = v37;
  v67 = v38;
  swift_getOpaqueTypeConformance2();
  sub_36A00(&qword_DF8EF0, &qword_DF8E70, &qword_B044B8, &protocol conformance descriptor for GestureStateGesture<A, B>);
  v48 = v56;
  sub_AB71D0();
  sub_12E1C(v42, &qword_DF8E70, &qword_B044B8);
  return (*(v57 + 8))(v39, v48);
}

uint64_t sub_20D658@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v86 = sub_AB4780();
  v3 = *(v86 - 8);
  __chkstk_darwin();
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB818, &qword_AF9AE8);
  __chkstk_darwin();
  v9 = &v85 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB820, &qword_AF9AF0);
  v90 = *(v92 - 8);
  __chkstk_darwin();
  v11 = &v85 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EF8, &qword_B045A8);
  __chkstk_darwin();
  v13 = &v85 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F00, &qword_B045B0);
  __chkstk_darwin();
  v15 = &v85 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F08, &qword_B045B8);
  v94 = *(v96 - 8);
  __chkstk_darwin();
  v17 = &v85 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F10, &qword_B045C0);
  v93 = *(v95 - 8);
  __chkstk_darwin();
  v91 = &v85 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F18, &qword_B045C8);
  __chkstk_darwin();
  v99 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v85 - v20;
  *&v22 = __chkstk_darwin().n128_u64[0];
  v98 = &v85 - v23;
  *&v97 = a1;
  *&v101 = *a1;
  v24 = [v101 hasLoadedValueForKey:{MPModelPropertyArtistArtwork, v22}];
  v25 = 0;
  if (v24)
  {
    v25 = [v101 artworkCatalog];
  }

  ArtworkImage.ViewModel.init(_:)(v25, v9);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F20, &qword_B045D0);
  (*(*(v26 - 8) + 56))(v7, 7, 11, v26);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v111);
  v27 = v86;
  (*(v3 + 104))(v5, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v86);
  v28 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v9, v7, v111, v5, v11);
  (*(v3 + 8))(v5, v27, v28);
  sub_20E678(v7);
  sub_12E1C(v9, &qword_DEB818, &qword_AF9AE8);
  sub_AB7A30();
  sub_AB5970();
  (*(v90 + 32))(v13, v11, v92);
  v29 = &v13[*(v87 + 36)];
  v30 = v111[4];
  *v29 = v111[3];
  *(v29 + 1) = v30;
  *(v29 + 2) = v111[5];
  sub_36B0C(v13, v15, &qword_DF8EF8, &qword_B045A8);
  v31 = v88;
  v32 = &v15[*(v88 + 36)];
  *v32 = 0;
  *(v32 + 4) = 257;
  v33 = sub_20E6D4();
  View.corner(_:)(0, 0, 2, v31, v33);
  sub_12E1C(v15, &qword_DF8F00, &qword_B045B0);
  v34 = Border.artwork.unsafeMutableAddressor();
  v35 = *v34;
  v36 = *(v34 + 1);
  v37 = *(v34 + 16);

  *&v107 = v31;
  *(&v107 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v91;
  v40 = v96;
  View.border(_:corner:)(v35, v37, 0, 0, 2, v96, OpaqueTypeConformance2, v36);
  (*(v94 + 8))(v17, v40);

  sub_AB7480();
  v41 = sub_AB74C0();

  (*(v93 + 32))(v21, v39, v95);
  v42 = &v21[*(v89 + 36)];
  *v42 = v41;
  *(v42 + 8) = xmmword_AFB2E0;
  *(v42 + 3) = 0x4000000000000000;
  v43 = v98;
  sub_36B0C(v21, v98, &qword_DF8F18, &qword_B045C8);
  v44 = v97;
  if (*(v97 + 8))
  {
    v45 = v101;
    if ([v101 hasLoadedValueForKey:MPModelPropertyArtistName] && (v46 = objc_msgSend(v45, "name")) != 0)
    {
      v47 = v46;
      v48 = sub_AB92A0();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0xE000000000000000;
    }

    *&v107 = v48;
    *(&v107 + 1) = v50;
    sub_36A48();
    v51 = sub_AB6F20();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_89F60();
    v58 = sub_ABA550();
    v59 = [objc_opt_self() configurationWithFont:v58 scale:1];

    LODWORD(v103) = sub_AB6760();
    Text.withChevron<A>(_:tintColor:)(v59, v51, v53, v55 & 1, v57, &v107);

    sub_36B74(v51, v53, v55 & 1);

    v60 = v107;
    v61 = v108;
    v62 = *(&v108 + 1);
    v63 = *(v44 + 40);
    v103 = *(v44 + 24);
    v104 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8EE8, &qword_B045A0);
    sub_AB58A0();
    v64 = 0x3FF0000000000000;
    if (v102)
    {
      v64 = 0x3FE0000000000000;
    }

    v103 = v60;
    *&v104 = v61;
    *(&v104 + 1) = v62;
    v105 = v64;
    v106 = 0;
  }

  else
  {
    v65 = v101;
    if ([v101 hasLoadedValueForKey:MPModelPropertyArtistName] && (v66 = objc_msgSend(v65, "name")) != 0)
    {
      v67 = v66;
      v68 = sub_AB92A0();
      v70 = v69;
    }

    else
    {
      v68 = 0;
      v70 = 0xE000000000000000;
    }

    *&v107 = v68;
    *(&v107 + 1) = v70;
    sub_36A48();
    *&v103 = sub_AB6F20();
    *(&v103 + 1) = v71;
    *&v104 = v72 & 1;
    *(&v104 + 1) = v73;
    v105 = 0;
    v106 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F38, &qword_B045D8);
  sub_20E804();
  sub_AB6610();
  v101 = v108;
  v97 = v107;
  v74 = v109;
  v75 = v110;
  v76 = v99;
  sub_20E888(v43, v99);
  v77 = v100;
  sub_20E888(v76, v100);
  v78 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F48, &unk_B045E0) + 48);
  v79 = v101;
  v80 = v97;
  *v78 = v97;
  *(v78 + 16) = v79;
  *(v78 + 32) = v74;
  *(v78 + 40) = v75;
  v81 = v80;
  v82 = v79;
  v83 = *(&v79 + 1);
  sub_20E8F8(v80, *(&v80 + 1), v79, *(&v79 + 1));
  sub_12E1C(v43, &qword_DF8F18, &qword_B045C8);
  sub_20E934(v81, *(&v81 + 1), v82, v83);
  return sub_12E1C(v76, &qword_DF8F18, &qword_B045C8);
}

unint64_t sub_20E254()
{
  result = qword_DF8EA0;
  if (!qword_DF8EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E80, &qword_B044C8);
    sub_36A00(&qword_DF8EA8, &qword_DF8EB0, &unk_B04518, &protocol conformance descriptor for VStack<A>);
    sub_36A00(&qword_DEB890, &qword_DEB898, &unk_AFB040, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8EA0);
  }

  return result;
}

uint64_t sub_20E348()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20E3A0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_20E3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980, &qword_AFC050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20E440()
{
  result = qword_DF8EC8;
  if (!qword_DF8EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E88, &qword_B044D0);
    sub_20E4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8EC8);
  }

  return result;
}

unint64_t sub_20E4CC()
{
  result = qword_DF8ED0;
  if (!qword_DF8ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8EC0, &unk_B04590);
    sub_20E584();
    sub_36A00(&qword_DEDBF8, &qword_DFE960, &unk_AFC1B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8ED0);
  }

  return result;
}

unint64_t sub_20E584()
{
  result = qword_DF8ED8;
  if (!qword_DF8ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8EB8, &qword_B04558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E80, &qword_B044C8);
    sub_20E254();
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_DEB780, &qword_DEB788, &qword_AF9A50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8ED8);
  }

  return result;
}

uint64_t sub_20E678(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20E6D4()
{
  result = qword_DF8F28;
  if (!qword_DF8F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8F00, &qword_B045B0);
    sub_20E760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8F28);
  }

  return result;
}

unint64_t sub_20E760()
{
  result = qword_DF8F30;
  if (!qword_DF8F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8EF8, &qword_B045A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8F30);
  }

  return result;
}

unint64_t sub_20E804()
{
  result = qword_DF8F40;
  if (!qword_DF8F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8F38, &qword_B045D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF8F40);
  }

  return result;
}

uint64_t sub_20E888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF8F18, &qword_B045C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_20E8F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_AFF30(a1, a2, a3 & 1);

  return result;
}

double sub_20E934(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_36B74(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_20E970()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E90, &qword_B044D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E70, &qword_B044B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E88, &qword_B044D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DF8E78, &qword_B044C0);
  sub_20E440();
  sub_36A00(&qword_DF8EE0, &qword_DF8E78, &qword_B044C0, &protocol conformance descriptor for _EndedGesture<A>);
  swift_getOpaqueTypeConformance2();
  sub_36A00(&qword_DF8EF0, &qword_DF8E70, &qword_B044B8, &protocol conformance descriptor for GestureStateGesture<A, B>);
  return swift_getOpaqueTypeConformance2();
}

void sub_20EB58(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSMenuModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel];
    *&v8[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel] = v5;
    v7 = v5;
  }
}

double sub_20EC7C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_20FF40, v12);

  return result;
}

double sub_20ED5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);

  return result;
}

void sub_20EFFC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication27JSMenuModelRequestOperation_request];
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel];
  if (v2)
  {
    v76 = a1;
    v77 = v2;
    v3 = [v1 sectionProperties];
    v4 = &off_DF9000;
    if (v3)
    {
      v5 = v3;
      v6 = type metadata accessor for JSModelMenuSectionBuilder();
      v7 = objc_allocWithZone(v6);
      v7[OBJC_IVAR____TtC16MusicApplication25JSModelMenuSectionBuilder_initializedProperties] = 2;
      *&v7[OBJC_IVAR____TtC16MusicApplication25JSModelMenuSectionBuilder_requestedProperties] = v5;
      v98.receiver = v7;
      v98.super_class = v6;
      v8 = objc_msgSendSuper2(&v98, "init");
    }

    else
    {
      v8 = 0;
    }

    v75 = v1;
    v9 = [v1 itemProperties];
    p_vtable = &OBJC_METACLASS____TtC16MusicApplication20AccountButtonWrapper.vtable;
    if (v9)
    {
      v11 = v9;
      v12 = type metadata accessor for JSModelMenuItemBuilder();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_initializedProperties] = 2;
      *&v13[OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_requestedProperties] = v11;
      v99.receiver = v13;
      v99.super_class = v12;
      v96 = objc_msgSendSuper2(&v99, "init");
    }

    else
    {
      v96 = 0;
    }

    v95 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v94 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v14 = JSMenu.sections.getter();
    v16 = v14;
    if (v14 >> 62)
    {
      goto LABEL_49;
    }

    for (i = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v18 = 0;
      v84 = v16 & 0xC000000000000001;
      v80 = v16 & 0xFFFFFFFFFFFFFF8;
      v79 = v16 + 32;
      v93 = &v102;
      v78 = @"MusicModelPropertyMenuSectionTitle";
      v89 = @"MusicModelPropertyMenuItemTitle";
      v88 = @"MusicModelRelationshipMenuItemSubmenu";
      v83 = v8;
      v82 = v16;
      v81 = i;
      while (1)
      {
        while (1)
        {
          if (v84)
          {
            v19 = sub_35FCC4(v18, v16, v15);
          }

          else
          {
            if (v18 >= *(v80 + 16))
            {
              goto LABEL_48;
            }

            v19 = *(v79 + 8 * v18);
          }

          v20 = v19;
          if (__OFADD__(v18++, 1))
          {
            goto LABEL_45;
          }

          if (v8)
          {
            break;
          }

          if (v18 == i)
          {
            goto LABEL_50;
          }
        }

        v22 = v4[180];
        if (v8[v22] == 2)
        {
          v23 = *&v8[OBJC_IVAR____TtC16MusicApplication25JSModelMenuSectionBuilder_requestedProperties];
          v24 = [v23 properties];
          v25 = sub_AB9B40();

          v26 = sub_AB92A0();
          v28 = sub_4DFDA8(v26, v27, v25);
          v30 = v29;
          v32 = v31;

          sub_F01A0(v28, v30, v32);
          v8[v22] = v32 != -1;
        }

        v92 = objc_opt_self();
        v16 = [v92 emptyIdentifierSet];
        v4 = &v74;
        __chkstk_darwin();
        v72 = v8;
        v73 = v20;
        v33 = objc_allocWithZone(MusicModelMenuSection);
        v34 = swift_allocObject();
        *(v34 + 16) = sub_20FDEC;
        *(v34 + 24) = v71;
        v104 = sub_57B84;
        v105 = v34;
        aBlock = _NSConcreteStackBlock;
        v101 = 1107296256;
        v102 = sub_41A314;
        v103 = &block_descriptor_71;
        v35 = _Block_copy(&aBlock);

        v36 = [v33 initWithIdentifiers:v16 block:v35];
        _Block_release(v35);

        LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

        if (v33)
        {
          goto LABEL_46;
        }

        [v94 appendSection:v20];
        v85 = v36;
        [v95 appendSection:v36];
        v16 = OBJC_IVAR____TtC11MusicJSCore13JSMenuSection_items;
        swift_beginAccess();
        v37 = *&v20[v16];
        v38 = v37 >> 62 ? sub_ABB060() : *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
        v8 = v96;
        v87 = v18;
        v86 = v20;
        if (v38)
        {
          break;
        }

LABEL_12:

        v8 = v83;
        v4 = &off_DF9000;
        v16 = v82;
        i = v81;
        v18 = v87;
        if (v87 == v81)
        {
          goto LABEL_50;
        }
      }

      if (v38 < 1)
      {
        goto LABEL_47;
      }

      v97 = v37 & 0xC000000000000001;

      v16 = 0;
      v91 = v37;
      v90 = v38;
      while (!v97)
      {
        v40 = *(v37 + 8 * v16 + 32);
        if (v8)
        {
          goto LABEL_32;
        }

LABEL_27:
        ++v16;

        if (v38 == v16)
        {
          goto LABEL_12;
        }
      }

      v40 = sub_36085C(v16, v37, v39);
      if (!v8)
      {
        goto LABEL_27;
      }

LABEL_32:
      v41 = p_vtable[119];
      if (v41[v8] == 2)
      {
        v42 = OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_requestedProperties;
        v43 = *&v8[OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_requestedProperties];
        v44 = [v43 properties];
        v45 = sub_AB9B40();

        v46 = sub_AB92A0();
        v48 = sub_4DFDA8(v46, v47, v45);
        v50 = v49;
        p_vtable = v51;

        sub_F01A0(v48, v50, p_vtable);
        v52 = *&v8[v42];
        v53 = [v52 relationships];
        sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
        v54 = sub_AB8FF0();

        v55 = sub_AB92A0();
        if (*(v54 + 16))
        {
          sub_2EBF88(v55, v56);
          v58 = v57;

          if (v58)
          {
            v59 = 256;
          }

          else
          {
            v59 = 0;
          }
        }

        else
        {

          v59 = 0;
        }

        v8 = v96;
        *&v41[v96] = v59 | (p_vtable != 0xFF);
      }

      v60 = [v92 emptyIdentifierSet];
      __chkstk_darwin();
      v4 = v71;
      v72 = v8;
      v73 = v40;
      v61 = objc_allocWithZone(MusicModelMenuItem);
      v62 = swift_allocObject();
      *(v62 + 16) = sub_20FE1C;
      *(v62 + 24) = v71;
      v104 = sub_C3FB8;
      v105 = v62;
      aBlock = _NSConcreteStackBlock;
      v101 = 1107296256;
      v102 = sub_41A314;
      v103 = &block_descriptor_23_0;
      v63 = _Block_copy(&aBlock);

      v8 = [v61 initWithIdentifiers:v60 block:v63];
      _Block_release(v63);

      LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

      if ((v61 & 1) == 0)
      {
        [v94 appendItem:v40];
        v64 = v8;
        [v95 appendItem:v64];

        p_vtable = (&OBJC_METACLASS____TtC16MusicApplication20AccountButtonWrapper + 24);
        v8 = v96;
        v37 = v91;
        v38 = v90;
        goto LABEL_27;
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      ;
    }

LABEL_50:

    v65 = objc_allocWithZone(type metadata accessor for JSMenuModelResponse());
    v66 = v75;
    v67 = v94;
    v68 = sub_20FB60(v66, v67);
    v69 = v95;
    [v68 setResults:v95];
    v70 = v76;
    (*&v76[OBJC_IVAR____TtC16MusicApplication27JSMenuModelRequestOperation_responseHandler])(v68, 0);
    [v70 finish];
  }

  else
  {
    __break(1u);
  }
}

char *sub_20FB60(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_sectionsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_jsResults] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for JSMenuModelResponse();
  v5 = a2;
  result = objc_msgSendSuper2(&v15, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = *&a1[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel];
    v9 = v8;
    v10 = v7;
    v11 = *JSMenu.sectionsDidChangeNotification.unsafeMutableAddressor();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v13 = v11;

    v14 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v8, 1, 1, sub_B5984, v12);

    *&v10[OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_sectionsDidChangeNotificationObserver] = v14;

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20FD04(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_20FDAC()
{

  return swift_deallocObject();
}

double block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_20FE24()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20FE5C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20FE94()
{

  return swift_deallocObject();
}

uint64_t sub_20FEE8()
{

  return swift_deallocObject();
}

uint64_t sub_20FF50()
{

  return swift_deallocObject();
}

id sub_20FFB0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v9 = [v4 mediaLibrary];
  [v8 setMediaLibrary:v9];

  v10 = v8;
  [v10 setItemKind:a2];
  [v10 setFilteringOptions:{objc_msgSend(v4, "filteringOptions")}];
  [v10 setItemProperties:a3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF82B0;
  *(v11 + 32) = [a1 identifiers];
  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
  isa = sub_AB9740().super.isa;

  [v10 setAllowedItemIdentifiers:isa];

  return v10;
}

void sub_2101B8(uint64_t a1, uint64_t a2)
{
  JSContainerDetail.containerDetailedResponseIsReady.getter();
  if ((v4 & 1) == 0)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
  swift_beginAccess();
  v6 = *(a2 + v5);
  if (!v6)
  {
    return;
  }

  v7 = objc_allocWithZone(MPMediaLibraryAlbumAppData);
  v8 = v6;
  v9 = &selRef__authenticateReturningError_;
  v50 = [v7 init];
  if (JSContainerDetail.hasMusicKitResponse.getter())
  {
    v10 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailMusicKitRelationshipsResponse;
    swift_beginAccess();
    v11 = *(a2 + v10);
    if (v11)
    {
      *&v51 = 0x736B63617274;
      *(&v51 + 1) = 0xE600000000000000;

      sub_ABAD10();
      if (*(v11 + 16) && (v12 = sub_2EC004(&aBlock), (v13 & 1) != 0))
      {
        sub_808B0(*(v11 + 56) + 32 * v12, &v52);
        sub_8085C(&aBlock);
      }

      else
      {
        sub_8085C(&aBlock);
        v52 = 0u;
        v53 = 0u;
      }

      if (*(&v53 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
        if (swift_dynamicCast())
        {
          v14 = aBlock;
          *&v51 = 1635017060;
          *(&v51 + 1) = 0xE400000000000000;
          sub_ABAD10();
          if (*(v14 + 16) && (v15 = sub_2EC004(&aBlock), (v16 & 1) != 0))
          {
            sub_808B0(*(v14 + 56) + 32 * v15, &v52);
            sub_8085C(&aBlock);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E27CA0, &unk_B09430);
            if (swift_dynamicCast())
            {
              v17 = v51;
              v18 = *(v51 + 16);
              if (v18)
              {
                v49 = v8;
                v19 = v18 - 1;
                v20 = 32;
                v21 = &type metadata for String;
                while (1)
                {
                  v22 = *(v17 + v20);
                  *&v51 = 25705;
                  *(&v51 + 1) = 0xE200000000000000;

                  sub_ABAD10();
                  if (!*(v22 + 16) || (v23 = v21, v24 = sub_2EC004(&aBlock), (v25 & 1) == 0))
                  {
                    sub_8085C(&aBlock);
LABEL_28:

                    if (!v19)
                    {
                      goto LABEL_35;
                    }

                    goto LABEL_29;
                  }

                  sub_808B0(*(v22 + 56) + 32 * v24, &v52);
                  sub_8085C(&aBlock);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    goto LABEL_28;
                  }

                  *&v51 = 1635018093;
                  *(&v51 + 1) = 0xE400000000000000;
                  sub_ABAD10();
                  if (!*(v22 + 16))
                  {
                    break;
                  }

                  v26 = sub_2EC004(&aBlock);
                  if ((v27 & 1) == 0)
                  {
                    break;
                  }

                  sub_808B0(*(v22 + 56) + 32 * v26, &v52);
                  sub_8085C(&aBlock);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    goto LABEL_31;
                  }

                  v28 = v51;
                  *&v51 = 0x6972616C75706F70;
                  *(&v51 + 1) = 0xEA00000000007974;
                  sub_ABAD10();
                  if (*(v28 + 16) && (v29 = sub_2EC004(&aBlock), (v30 & 1) != 0))
                  {
                    sub_808B0(*(v28 + 56) + 32 * v29, &v52);
                    sub_8085C(&aBlock);
                    if (swift_dynamicCast())
                    {
                      v47 = [objc_allocWithZone(NSNumber) initWithDouble:*&v51];
                      v31 = sub_AB9260();
                      v48 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

                      [v50 setSongPopularity:v47 forAdamID:v48];

                      v21 = v23;
                      if (!v19)
                      {
                        goto LABEL_35;
                      }

                      goto LABEL_29;
                    }
                  }

                  else
                  {
                    sub_8085C(&aBlock);
                  }

                  v21 = v23;
                  if (!v19)
                  {
LABEL_35:

                    v8 = v49;
                    goto LABEL_58;
                  }

LABEL_29:
                  --v19;
                  v20 += 8;
                }

                sub_8085C(&aBlock);
LABEL_31:

                if (!v19)
                {
                  goto LABEL_35;
                }

                goto LABEL_29;
              }

LABEL_64:

              goto LABEL_65;
            }
          }

          else
          {
            sub_8085C(&aBlock);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    sub_9BC10(&v52);
  }

LABEL_40:
  v32 = [v8 childStoreItemMetadatas];
  if (!v32)
  {
    goto LABEL_65;
  }

  v33 = v32;
  sub_13C80(0, &unk_DF43D0, MPStoreItemMetadata_ptr);
  v34 = sub_AB9760();

  if (v34 >> 62)
  {
    if (sub_ABB060() < 1)
    {
      goto LABEL_64;
    }

    v35 = sub_ABB060();
    if (!v35)
    {
      goto LABEL_64;
    }

    if (v35 < 1)
    {
      __break(1u);
      goto LABEL_64;
    }
  }

  else
  {
    v35 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
    if (!v35)
    {
      goto LABEL_64;
    }
  }

  v36 = 0;
  v37 = v35 - 1;
  if ((v34 & 0xC000000000000001) == 0)
  {
    goto LABEL_45;
  }

LABEL_44:
  for (i = sub_3608C4(v36, v34); ; i = *(v34 + 8 * v36 + 32))
  {
    v39 = i;
    v40 = [i popularity];
    if (v40)
    {
      break;
    }

    if (v37 == v36)
    {
      goto LABEL_57;
    }

LABEL_55:
    ++v36;
    if ((v34 & 0xC000000000000001) != 0)
    {
      goto LABEL_44;
    }

LABEL_45:
    ;
  }

  v41 = v40;
  if ([v39 storeID])
  {
    sub_ABAB50();
    sub_9ACFC(&v51, &v52);
    swift_unknownObjectRelease();
    if (*(&v53 + 1))
    {
      sub_9ACFC(&v52, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v56);
      sub_ABB3A0();
      v42 = MPStoreItemMetadataInt64NormalizeStoreIDValue();
      swift_unknownObjectRelease();
      [v50 setSongPopularity:v41 forAdamID:v42];
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      goto LABEL_54;
    }
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  sub_9BC10(&v52);
LABEL_54:

  if (v37 != v36)
  {
    goto LABEL_55;
  }

LABEL_57:

LABEL_58:
  v9 = &selRef__authenticateReturningError_;
LABEL_65:
  v43 = [objc_allocWithZone(MPModelLibraryAlbumAppDataChangeRequest) v9[124]];
  [v43 setModelObject:a1];
  [v43 setAlbumAppData:v50];
  v57 = UIScreen.Dimensions.size.getter;
  v58 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v55 = sub_2109D8;
  v56 = &block_descriptor_15_1;
  v44 = _Block_copy(&aBlock);
  v45 = [v43 newOperationWithResponseHandler:v44];
  _Block_release(v44);
  v46 = [objc_opt_self() sharedDeviceLibraryController];
  [v46 addOperation:v45];
}

void sub_2109D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_210AB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v8 = [v3 mediaLibrary];
  [v7 setMediaLibrary:v8];

  v9 = v7;
  [v9 setItemKind:a2];
  [v9 setItemProperties:a3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF82B0;
  *(v10 + 32) = [a1 identifiers];
  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
  isa = sub_AB9740().super.isa;

  [v9 setAllowedItemIdentifiers:isa];

  [v9 setFilteringOptions:{objc_msgSend(v3, "filteringOptions")}];
  v12 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
  [v12 setRequest:v9];

  v13 = [objc_allocWithZone(MPCPlaybackIntent) init];
  [v13 setTracklistToken:v12];
  [v13 setTracklistSource:3];

  return v13;
}

void (*sub_211068(uint64_t a1, void *a2))()
{
  result = [v2 results];
  if (result)
  {
    v5 = result;
    isa = sub_AB3770().super.isa;
    v7 = [v5 itemAtIndexPath:isa];

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8 && (v9 = v8, [v8 type] == &dword_0 + 1) && (v10 = objc_msgSend(v9, "song")) != 0)
    {
      v11 = v10;
      v12 = [v10 album];
      if (v12)
      {
        v13 = v12;
        objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
        v14 = v13;
        v15 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v14);
        if (v15)
        {
          v16 = v15;
          v17 = swift_allocObject();
          v17[2] = v16;
          v17[3] = v14;
          v17[4] = a2;
          v18 = a2;
          swift_unknownObjectRelease();

          return sub_2126B8;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21120C(void *a1, void *a2, void *a3)
{
  type metadata accessor for JSContainerDetailComponentController(0);
  v6 = a2;
  v7 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(a1, 0, 1, UIScreen.Dimensions.size.getter, 0);
  if (!v7)
  {
    v8 = v6;
    v7 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v8, 0, 1, UIScreen.Dimensions.size.getter, 0);
    if (!v7)
    {
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v35 = v34;
        v36 = MPModelPropertyPlaylistType;
        v37 = v8;
        if ([v35 hasLoadedValueForKey:v36] && objc_msgSend(v35, "type") == &dword_8 + 1)
        {
          v9 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v38);
          v10 = *&v9[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

          goto LABEL_4;
        }
      }

      sub_ABAFD0();
      __break(1u);
      return;
    }
  }

  v9 = v7;
  v10 = *(v7 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
LABEL_4:
  v11 = v9;
  v12 = type metadata accessor for JSContainerDetailModelRequest();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
  *v14 = 0;
  v14[1] = 0;
  v13[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *&v13[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
  v13[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
  *&v13[v15] = v10;
  v45.receiver = v13;
  v45.super_class = v12;
  v16 = v10;
  v17 = objc_msgSendSuper2(&v45, "init");
  if ((v16[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
  {
    sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
    v18 = v17;
    v19 = static MPModelAlbum.defaultMusicKind.getter();
    [v18 setSectionKind:v19];

    v20 = [objc_opt_self() kindWithVariants:3];
    v21 = v20;
  }

  else
  {
    sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
    v20 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v22 = objc_opt_self();
    v21 = v17;
    v23 = [v22 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v20 options:0];
    [v21 setSectionKind:v23];

    v18 = v20;
  }

  [v17 setItemKind:v20];

  v24 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
  swift_beginAccess();
  v25 = *&v16[v24];
  v26 = v25;

  v27 = JSViewModel.playActivityRecommendationData.getter();
  v29 = v28;
  sub_466A4(0, 0xF000000000000000);
  v47[0] = v17;
  v47[1] = v10;
  v47[2] = a2;
  v47[3] = 0;
  v47[4] = v9;
  v47[5] = 0;
  v47[6] = v25;
  v48 = 0;
  *v49 = *v46;
  *&v49[3] = *&v46[3];
  v50 = v27;
  v51 = v29;
  v40[0] = v17;
  v40[1] = v10;
  v40[2] = a2;
  v40[3] = 0;
  v40[4] = v9;
  v40[5] = 0;
  v40[6] = v25;
  v41 = 0;
  *&v42[3] = *&v46[3];
  *v42 = *v46;
  v43 = v27;
  v44 = v29;
  sub_70EB0(v47, v39);
  sub_70F0C(v40);
  v30 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
  sub_70EB0(v47, v39);
  v31 = sub_2D72DC(v47);
  v32 = [a3 navigationController];
  if (v32)
  {
    v33 = v32;
    [v32 pushViewController:v31 animated:1];
    sub_70F0C(v47);

    v31 = v33;
  }

  else
  {
    sub_70F0C(v47);
  }
}

void (*sub_211710(uint64_t a1, void *a2))()
{
  v5 = [v2 results];
  if (!v5)
  {
    __break(1u);
    goto LABEL_40;
  }

  v6 = v5;
  isa = sub_AB3770().super.isa;
  v8 = [v6 itemAtIndexPath:isa];

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9 && (v10 = v9, [v9 type] == &dword_0 + 1) && (v11 = objc_msgSend(v10, "song")) != 0)
  {
    v12 = v11;
    v13 = [v11 album];
    if (v13)
    {
      v14 = v13;
      if ([v12 isLibraryAdded])
      {
        v15 = [objc_allocWithZone(MPModelLibraryRequest) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_AF82B0;
        *(v16 + 32) = v14;
        sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
        v17 = v14;
        v18 = sub_AB9740().super.isa;

        [v15 setScopedContainers:v18];

        v19 = [objc_opt_self() kindWithVariants:3];
        v20 = [objc_opt_self() kindWithSongKind:v19];
        [v15 setSectionKind:v20];

        [v15 setItemKind:v19];
        v79 = [v12 identifiers];
        type metadata accessor for JSContainerDetailComponentController(0);
        v21 = v17;
        v22 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v21, 0, 1, UIScreen.Dimensions.size.getter, 0);
        if (v22)
        {
          v23 = v22;
          v24 = *&v22[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
          v25 = v24;
        }

        else
        {
          objc_opt_self();
          v23 = swift_dynamicCastObjCClass();
          if (v23)
          {
            v74 = MPModelPropertyPlaylistType;
            v77 = v21;
            if ([v23 hasLoadedValueForKey:v74] && objc_msgSend(v23, "type") == &dword_8 + 1)
            {
              v23 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v46);
              v24 = *&v23[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
            }

            else
            {

              v24 = 0;
              v23 = 0;
            }
          }

          else
          {
            v24 = 0;
          }
        }

        if (v24)
        {
          v60 = JSViewModel.playActivityRecommendationData.getter();
          v62 = v61;
        }

        else
        {
          v60 = 0;
          v62 = 0xF000000000000000;
        }

        sub_466A4(0, 0xF000000000000000);
        v84 = v15;
        *&v85 = v24;
        *(&v85 + 1) = v14;
        *&v86 = 0;
        *(&v86 + 1) = v23;
        *&v87 = 0;
        *(&v87 + 1) = v79;
        v88 = 0;
        *&v90 = v60;
        *(&v90 + 1) = v62;
        v91 = v15;
        v92 = v24;
        v93 = v14;
        v94 = 0;
        v95 = v23;
        v96 = 0;
        v97 = v79;
        v98 = 0;
        v100 = v60;
        v101 = v62;
        sub_70EB0(&v84, v83);
        sub_70F0C(&v91);
        v58 = v88;
        v78 = v87;
        v82 = v90;
        v72 = v85;
        v75 = v86;
        v59 = v84;
        goto LABEL_34;
      }

      v27 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
      v28 = v14;
      v29 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v28);
      if (v29)
      {
        v30 = v29;
        v80 = [v12 identifiers];
        type metadata accessor for JSContainerDetailComponentController(0);
        v73 = v30;
        v31 = JSContainerDetailComponentController.__allocating_init(containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v73, 0, 1, UIScreen.Dimensions.size.getter, 0);
        v76 = v28;
        if (v31 || (v32 = v28, (v31 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v32, 0, 1, UIScreen.Dimensions.size.getter, 0)) != 0))
        {
          v33 = v31;
          v34 = *(v31 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
          goto LABEL_17;
        }

        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (!v65)
        {
          goto LABEL_41;
        }

        v66 = v65;
        v67 = MPModelPropertyPlaylistType;
        v3 = v32;
        if ([v66 hasLoadedValueForKey:v67] && objc_msgSend(v66, "type") == &dword_8 + 1)
        {
          v33 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v68);
          v34 = *&v33[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

LABEL_17:
          v35 = type metadata accessor for JSContainerDetailModelRequest();
          v36 = objc_allocWithZone(v35);
          v37 = &v36[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
          *v37 = 0;
          v37[1] = 0;
          v36[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
          swift_unknownObjectWeakInit();
          v38 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
          *&v36[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
          v36[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
          *&v36[v38] = v34;
          v102.receiver = v36;
          v102.super_class = v35;
          v71 = v34;
          v39 = v34;
          v70 = v80;
          v69 = v33;
          v40 = objc_msgSendSuper2(&v102, "init");
          if ((v39[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind] & 0xFE) == 2)
          {
            sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
            v41 = v40;
            v42 = static MPModelAlbum.defaultMusicKind.getter();
            [v41 setSectionKind:v42];

            v43 = [objc_opt_self() kindWithVariants:3];
            [v41 setItemKind:v43];

            v44 = v70;
            if (v70)
            {
LABEL_19:
              v45 = v80;
LABEL_27:

              v55 = JSViewModel.playActivityRecommendationData.getter();
              v57 = v56;
              sub_466A4(0, 0xF000000000000000);
              v84 = v40;
              *&v85 = v71;
              *(&v85 + 1) = v14;
              *&v86 = 0;
              *(&v86 + 1) = v33;
              *&v87 = 0;
              *(&v87 + 1) = v45;
              v88 = 0;
              *v89 = v103[0];
              *&v89[3] = *(v103 + 3);
              *&v90 = v55;
              *(&v90 + 1) = v57;
              v91 = v40;
              v92 = v71;
              v93 = v14;
              v94 = 0;
              v95 = v33;
              v96 = 0;
              v97 = v45;
              v98 = 0;
              *&v99[3] = *(v103 + 3);
              *v99 = v103[0];
              v100 = v55;
              v101 = v57;
              sub_70EB0(&v84, v83);
              sub_70F0C(&v91);
              v58 = v88;
              v78 = v87;
              v82 = v90;
              v72 = v85;
              v75 = v86;
              v59 = v84;
LABEL_34:
              v63 = swift_allocObject();
              *(v63 + 16) = v59;
              *(v63 + 24) = v72;
              *(v63 + 40) = v75;
              *(v63 + 56) = v78;
              *(v63 + 72) = v58;
              *(v63 + 73) = v91;
              *(v63 + 76) = *(&v91 + 3);
              *(v63 + 80) = v82;
              *(v63 + 96) = a2;
              v64 = a2;
              swift_unknownObjectRelease();
              return sub_212664;
            }
          }

          else
          {
            sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
            v47 = static MPModelPlaylistEntry.defaultMusicKind.getter();
            v48 = objc_opt_self();
            v49 = v40;
            v50 = [v48 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v47 options:0];
            [v49 setSectionKind:v50];

            [v49 setItemKind:v47];
            v44 = v70;
            if (v70)
            {
              goto LABEL_19;
            }
          }

          v51 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_prominentItemIdentifiers;
          v81 = v33;
          v52 = v40;
          v53 = v44;
          swift_beginAccess();
          v45 = *&v39[v51];
          v54 = v45;
          v44 = v53;
          v40 = v52;
          v33 = v81;
          goto LABEL_27;
        }

LABEL_40:

LABEL_41:
        result = sub_ABAFD0();
        __break(1u);
        return result;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_2120E0(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
  sub_70EB0(a1, &v8);
  v5 = sub_2D72DC(a1);
  v6 = [a2 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];

    v5 = v7;
  }
}

id sub_21219C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(char *, id), uint64_t a6)
{
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v15 = a3;
  v16 = a4;
  v17 = a1;
  v18 = a5(v14, v16);
  v20 = v19;

  (*(v12 + 8))(v14, v11);
  if (v18)
  {
    aBlock[4] = v18;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = a6;
    v21 = _Block_copy(aBlock);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t sub_21257C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

double block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2125DC()
{
  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    sub_466B8(*(v0 + 80), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_212670()
{

  return swift_deallocObject();
}

char *sub_212798()
{
  v1 = v0;
  sub_AB35C0();
  __chkstk_darwin();
  v69 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v68 = sub_AB5290();
  v3 = *(v68 - 8);
  __chkstk_darwin();
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB5320();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController;
  sub_212FF0(v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF9298, &qword_B046E0);
  swift_allocObject();
  *&v0[v10] = RequestResponse.Controller.init(request:)(v111, v11, v12, v13);
  v14 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController;
  v15 = objc_allocWithZone(type metadata accessor for LibraryFilterOptionsController());
  *&v0[v14] = sub_4F4944(9);
  v16 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_sortOptionsController;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  *&v0[v16] = sub_225174(&off_CF0C00, 0, 0);
  *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___noContentStateController] = 0;
  v17 = &v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController_lastKnownViewBounds];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v0[v18] = TextDrawing.Cache.init()();
  v19 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *&v1[v19] = swift_allocObject();
  v20 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkPrefetchingController;
  *&v1[v20] = [objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController()) init];
  sub_13C80(0, &unk_DF92A0, UICollectionViewCompositionalLayout_ptr);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v68);
  sub_AB52C0();
  v21 = sub_ABA420();
  (*(v7 + 8))(v9, v6);
  v22 = type metadata accessor for SongsViewController();
  v110.receiver = v1;
  v110.super_class = v22;
  v23 = objc_msgSendSuper2(&v110, "initWithCollectionViewLayout:", v21);

  v24 = v23;
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v25 = sub_AB9260();

  [v24 setTitle:v25];

  v26 = objc_opt_self();
  v27 = [v26 currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if (!v28)
  {
    v29 = sub_AB9260();
    [v24 setRestorationIdentifier:v29];
  }

  v30 = [v26 currentDevice];
  v31 = [v30 userInterfaceIdiom];

  if (!v31)
  {
    _s16MusicApplication16RestorationClassCMa_1();
    [v24 setRestorationClass:swift_getObjCClassFromMetadata()];
  }

  v32 = sub_AB9260();
  [v24 setPlayActivityFeatureName:v32];

  v33 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController;
  v34 = *&v24[OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController];
  v35 = *(*&v24[OBJC_IVAR____TtC16MusicApplication19SongsViewController_sortOptionsController] + 96);
  swift_beginAccess();
  v36 = *(v34 + 16);
  v37 = *(v34 + 32);
  v38 = *(v34 + 48);
  v39 = *(v34 + 64);
  v40 = *(v34 + 96);
  v111[4] = *(v34 + 80);
  v111[5] = v40;
  v111[2] = v38;
  v111[3] = v39;
  v41 = *(v34 + 112);
  v42 = *(v34 + 128);
  v43 = *(v34 + 144);
  v112 = *(v34 + 160);
  v111[7] = v42;
  v111[8] = v43;
  v111[6] = v41;
  v111[0] = v36;
  v111[1] = v37;
  v44 = *(v34 + 32);
  v106 = *(v34 + 16);
  v107 = v44;
  v108 = *(v34 + 48);
  v109 = *(v34 + 64);
  v45 = *(v34 + 128);
  v102 = *(v34 + 112);
  v103 = v45;
  v104 = *(v34 + 144);
  v105 = *(v34 + 160);
  v46 = *(v34 + 96);
  v100 = *(v34 + 80);
  v101 = v46;

  sub_15F84(v111, &v90, &unk_DF9270, &qword_B046C8);

  v90 = v106;
  v91 = v107;
  v92 = v108;
  *&v93 = v109;
  *(&v93 + 1) = v35;
  v96 = v102;
  v97 = v103;
  v98 = v104;
  v99 = v105;
  v94 = v100;
  v95 = v101;
  RequestResponse.Controller.request.setter(&v90);

  v69 = v33;
  v47 = *&v24[v33];

  v48 = [v24 traitCollection];

  v49 = *&v24[OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController];
  if (v49[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption])
  {
    v50 = v49[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType];
    if (v50 > 8)
    {
      v51 = 0x800000;
    }

    else
    {
      v51 = qword_B046E8[v50];
    }
  }

  else
  {
    v52 = v49;
    v51 = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  swift_beginAccess();
  v53 = *(v47 + 16);
  v54 = *(v47 + 32);
  v55 = *(v47 + 48);
  v56 = *(v47 + 64);
  v57 = *(v47 + 96);
  v94 = *(v47 + 80);
  v95 = v57;
  v92 = v55;
  v93 = v56;
  v58 = *(v47 + 112);
  v59 = *(v47 + 128);
  v60 = *(v47 + 144);
  v99 = *(v47 + 160);
  v97 = v59;
  v98 = v60;
  v96 = v58;
  v90 = v53;
  v91 = v54;
  v61 = v53;
  v62 = *(v47 + 40);
  v63 = *(v47 + 72);
  v87 = *(v47 + 56);
  v88 = v63;
  v89 = *(v47 + 88);
  v85 = *(v47 + 24);
  v86 = v62;
  v82 = *(v47 + 105);
  v83 = *(v47 + 121);
  v84[0] = *(v47 + 137);
  *(v84 + 15) = *(v47 + 152);
  sub_15F84(&v90, &v70, &unk_DF9270, &qword_B046C8);
  v64 = UITraitCollection.mediaLibrary.getter();

  v65.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  v72 = v86;
  v73 = v87;
  v74 = v88;
  v81 = 0;
  v70 = v64;
  v71 = v85;
  v75 = v89;
  v76 = v65.rawValue | v51;
  v77 = 0;
  v78 = v82;
  v79 = v83;
  v80[0] = v84[0];
  *(v80 + 15) = *(v84 + 15);
  RequestResponse.Controller.request.setter(&v70);

  RequestResponse.Controller.setNeedsReload(_:)(0, 0);

  return v24;
}

id sub_212FF0@<X0>(uint64_t a1@<X8>)
{
  [objc_opt_self() kindWithVariants:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AFFB00;
  *(v2 + 32) = sub_AB92A0();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_AB92A0();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_AB92A0();
  *(v2 + 72) = v5;
  *(v2 + 80) = sub_AB92A0();
  *(v2 + 88) = v6;
  *(v2 + 96) = sub_AB92A0();
  *(v2 + 104) = v7;
  *(v2 + 112) = sub_AB92A0();
  *(v2 + 120) = v8;
  *(v2 + 128) = sub_AB92A0();
  *(v2 + 136) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF4EC0;
  *(v12 + 32) = sub_AB92A0();
  *(v12 + 40) = v13;
  isa = sub_AB9740().super.isa;
  v15 = objc_opt_self();
  v16 = [v15 propertySetWithProperties:isa];

  *(inited + 48) = v16;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AF4EC0;
  *(v18 + 32) = sub_AB92A0();
  *(v18 + 40) = v19;
  v20 = sub_AB9740().super.isa;
  v21 = [v15 propertySetWithProperties:v20];

  *(inited + 72) = v21;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MPPropertySet);
  v23 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v24 = sub_AB8FD0().super.isa;

  v25 = [v22 initWithProperties:v23 relationships:v24];

  v26 = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  v27 = sub_2BAFF8(v26);
  v28 = [v25 propertySetByCombiningWithPropertySet:v27];

  v29 = sub_10F414(v26);
  v30 = [v28 propertySetByCombiningWithPropertySet:v29];

  UIScreen.Dimensions.size.getter();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    v40 = result;
    UIView.Border.init(thickness:color:)();
    *&v49 = v41;
    *(&v49 + 1) = v42;
    LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)(v40, 0, 0, 0, 0, v32, v34, v36, &v63, v38, v44, v43 & 1, v49, 0, 1, &type metadata for Swift.AnyObject + 8, v26);
    v73 = v72;
    sub_12E1C(&v73, &unk_DEE6F0, &unk_AF8970);
    v57 = v69;
    v58 = v70;
    v53 = v65;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v51 = v63;
    v52 = v64;
    v60[6] = v69;
    v60[7] = v70;
    v60[2] = v65;
    v60[3] = v66;
    *v59 = v71;
    v60[4] = v67;
    v60[5] = v68;
    *&v59[8] = xmmword_B04660;
    v61 = v71;
    v60[0] = v63;
    v60[1] = v64;
    v62 = xmmword_B04660;
    sub_15F84(&v51, v50, &unk_DF9270, &qword_B046C8);
    result = sub_12E1C(v60, &unk_DF9270, &qword_B046C8);
    v45 = v58;
    *(a1 + 96) = v57;
    *(a1 + 112) = v45;
    *(a1 + 128) = *v59;
    *(a1 + 144) = *&v59[16];
    v46 = v54;
    *(a1 + 32) = v53;
    *(a1 + 48) = v46;
    v47 = v56;
    *(a1 + 64) = v55;
    *(a1 + 80) = v47;
    v48 = v52;
    *a1 = v51;
    *(a1 + 16) = v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213578()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v3 = sub_AB9320();
    v5 = v4;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v6 = v0;
    v2 = sub_4309D4(v3, v5);

    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_21370C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___noContentStateController;
  if (*&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___noContentStateController])
  {
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___noContentStateController];
  }

  else
  {
    v2 = sub_213774(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_213774(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v6 = v3[7];
    v3[6] = sub_21A664;
    v3[7] = v4;

    sub_17654(v5, v6);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v3[27];
    v9 = v3[28];
    v3[27] = sub_21A66C;
    v3[28] = v7;

    sub_17654(v8, v9);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2138B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!(_swiftEmptyArrayStorage >> 62) || !sub_ABB060())
    {
      return &_swiftEmptySetSingleton;
    }

    sub_118B4(_swiftEmptyArrayStorage);
    return v8;
  }

  v3 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  result = [v3 collectionView];
  if (result)
  {
    *(inited + 32) = result;
    sub_118B4(inited);
    v7 = v6;
    swift_setDeallocating();
    swift_arrayDestroy();

    return v7;
  }

  __break(1u);
  return result;
}

void sub_2139CC(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v6 = Strong;
  v7 = sub_213578();

  v8 = (*(v7 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v9 = v8[1];
  if (!v9)
  {

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v10 = *v8;

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v12 = v11 != 0;
LABEL_8:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13 && (v14 = v13, v15 = *(v13 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController), v14, sub_4F4414(v12, v32), v15, *(&v32[0] + 1) != 1))
  {
    v18 = v34;
    v16 = v35;
    v17 = v33;
    v23 = v32[3];
    v24 = v32[2];
    v21 = v32[1];
    v22 = v32[0];
  }

  else
  {
    if (v12)
    {
      if (qword_DE6BD0 != -1)
      {
        swift_once();
      }

      v30[3] = xmmword_E717A8;
      v30[4] = xmmword_E717B8;
      v30[1] = xmmword_E71788;
      v30[2] = xmmword_E71798;
      v30[0] = xmmword_E71778;
      v16 = qword_E717C8;
      v31 = qword_E717C8;
      v18 = *(&xmmword_E717B8 + 1);
      v17 = xmmword_E717B8;
      v27 = xmmword_E71798;
      v28 = xmmword_E717A8;
      v25 = xmmword_E71778;
      v26 = xmmword_E71788;
      v19 = v30;
      v20 = &v29;
    }

    else
    {
      v18 = *(a1 + 72);
      v16 = *(a1 + 80);
      v17 = *(a1 + 64);
      v27 = *(a1 + 32);
      v28 = *(a1 + 48);
      v25 = *a1;
      v26 = *(a1 + 16);
      v20 = v30;
      v19 = a1;
    }

    sub_576EC(v19, v20);
    v22 = v25;
    v21 = v26;
    v24 = v27;
    v23 = v28;
  }

  *a3 = v22;
  *(a3 + 16) = v21;
  *(a3 + 32) = v24;
  *(a3 + 48) = v23;
  *(a3 + 64) = v17;
  *(a3 + 72) = v18;
  *(a3 + 80) = v16;
}

void sub_213BBC(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(&aBlock);
  v6 = aBlock;

  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v7 request];
  v9 = v7;
  if (!v8)
  {
LABEL_12:

LABEL_13:
    v24 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
    return;
  }

  v10 = v8;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    v9 = v10;
    goto LABEL_12;
  }

  v12 = v11;
  v13 = RequestResponse.Controller.revision.getter();
  v15 = *(v13 + 112);
  v14 = *(v13 + 120);

  if (!v14)
  {

    v23 = 0;
    goto LABEL_16;
  }

  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v23 = 0;
    v14 = 0;
    goto LABEL_16;
  }

  [v12 setFilterText:0];
  *&v35[0] = _swiftEmptyArrayStorage;
  v17 = [v7 results];

  v30 = v17;
  if (!v17)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v35;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_140FE8;
  *(v19 + 24) = v18;
  v29 = v18;
  v33 = sub_57B9C;
  v34 = v19;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v32 = sub_48D644;
  *(&v32 + 1) = &block_descriptor_73;
  v20 = _Block_copy(&aBlock);

  v21 = v30;
  [v30 enumerateItemIdentifiersUsingBlock:v20];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);

  isa = sub_AB9740().super.isa;

  [v12 setAllowedItemIdentifiers:isa];

  v23 = sub_140FE8;
  v14 = v29;
LABEL_16:
  v25 = [v12 playbackIntentWithStartItemIdentifiers:0];
  if (v25)
  {
    *v5 = v25;
    swift_storeEnumTagMultiPayload();
    v33 = 0;
    aBlock = 0u;
    v32 = 0u;
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v26 = v2;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, &aBlock, 3, 0, 0, 1, 0, 1, a1, v2, v35);

    v27 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
  }

  else
  {
    v28 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
  }

  sub_17654(v23, v14);
}

void sub_21407C(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v5 = (v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v32);
  v6 = *&v32[0];

  if (v6)
  {
    v7 = [v6 results];
    if (v7)
    {
      v8 = v7;
      isa = sub_AB3770().super.isa;
      v10 = [v8 itemAtIndexPath:isa];

      v11 = [objc_allocWithZone(MPModelLibraryRequest) init];
      *&v32[0] = 0x203A676E6F53;
      *(&v32[0] + 1) = 0xE600000000000000;
      v12 = v11;
      v13 = [v10 title];
      if (v13)
      {
        v14 = v13;
        v15 = sub_AB92A0();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      *&v30[0] = v15;
      *(&v30[0] + 1) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
      v34._countAndFlagsBits = sub_AB9350();
      sub_AB94A0(v34);

      v19 = sub_AB9260();

      [v12 setLabel:v19];

      v20 = [objc_opt_self() kindWithVariants:1];
      [v12 setItemKind:v20];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_AF82B0;
      v22 = v10;
      *(v21 + 32) = [v22 identifiers];
      sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
      v23 = sub_AB9740().super.isa;

      [v12 setAllowedItemIdentifiers:v23];

      v24 = [v2 traitCollection];
      UITraitCollection.configure<A, B>(libraryRequest:)(v12);

      v25 = [v22 identifiers];
      v26 = [v12 playbackIntentWithStartItemIdentifiers:v25];

      if (v26)
      {
        *v5 = v26;
        swift_storeEnumTagMultiPayload();
        v33 = 0;
        memset(v32, 0, sizeof(v32));
        v31 = 0;
        memset(v30, 0, sizeof(v30));
        v27 = v2;
        PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v32, 3, 0, 0, 1, 0, 1, a1, v2, v30);

        v28 = type metadata accessor for PlaybackIntentDescriptor(0);
        (*(*(v28 - 8) + 56))(a1, 0, 1, v28);
      }

      else
      {
        v29 = type metadata accessor for PlaybackIntentDescriptor(0);
        (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v18 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }
}

void sub_214524(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v5 = a5;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SongsViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(v5);
}

void sub_2146D0()
{
  v1 = v0;
  v2 = sub_AB52B0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB5290();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SongsViewController();
  v100.receiver = v1;
  v100.super_class = v10;
  objc_msgSendSuper2(&v100, "viewDidLoad");
  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    v94 = v6;
    v95 = v3;
    v96 = v2;
    if (qword_DE6C58 != -1)
    {
      swift_once();
    }

    v13 = qword_E71898;
    [v12 setBackgroundColor:qword_E71898];

    v14 = *&v1[OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkPrefetchingController];
    *(v14 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_cachingReference) = *&v1[OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkCachingReference];

    swift_unknownObjectRelease();
    v15 = (v14 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding);
    v16 = *(v14 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding);
    v17 = *(v14 + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding + 8);
    *v15 = sub_215344;
    v15[1] = 0;
    sub_17654(v16, v17);
    v18 = [v1 collectionView];
    if (v18)
    {
      v19 = v18;
      [v18 setBackgroundColor:v13];
      [v19 setAlwaysBounceVertical:1];
      [v19 setAllowsFocus:1];
      [v19 setRemembersLastFocusedIndexPath:1];
      v20 = type metadata accessor for SongCell(0);
      v21 = static UICollectionReusableView.reuseIdentifier.getter();
      v97 = v19;
      UICollectionView.register<A>(_:reuseIdentifier:)(v20, v21, v22);

      v23 = type metadata accessor for PlayIntentControlsReusableView();
      v24 = sub_AB92A0();
      v26 = v25;
      v27 = static UICollectionReusableView.reuseIdentifier.getter();
      v28 = v97;
      UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v23, v24, v26, v27, v29);

      [v28 setPrefetchDataSource:v14];
      [v28 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      sub_AB5320();
      v30 = swift_allocBox();
      (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v94);
      sub_AB52C0();
      (v95)[13](v5, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v96);
      sub_AB52E0();
      sub_AB5300();
      *(swift_allocObject() + 16) = v1;
      v31 = v1;
      sub_AB5310();
      v32 = objc_allocWithZone(UICollectionViewCompositionalLayout);
      aBlock[4] = sub_21B780;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_496F34;
      aBlock[3] = &block_descriptor_78;
      v33 = _Block_copy(aBlock);
      v96 = v30;

      v34 = [v32 initWithSectionProvider:v33];
      _Block_release(v33);

      v95 = v34;
      [v28 setCollectionViewLayout:v34];
      v35 = [v31 navigationItem];
      v36 = [v35 rightBarButtonItems];
      if (v36)
      {
        v37 = v36;
        sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
        v38 = sub_AB9760();

        v35 = v37;
      }

      else
      {
        v38 = _swiftEmptyArrayStorage;
      }

      v98 = v38;
      v39 = *&v31[OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController];
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = (v39 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange);
      v42 = *(v39 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange);
      v43 = *(v39 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange + 8);
      *v41 = sub_21B788;
      v41[1] = v40;

      sub_17654(v42, v43);

      v44 = *&v31[OBJC_IVAR____TtC16MusicApplication19SongsViewController_sortOptionsController];
      v45 = sub_4F46B0();
      sub_13C80(0, &qword_DF1D50, UIMenu_ptr);
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v44;

      v48 = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, (&dword_0 + 1), 0, sub_14176C, v47);

      UIBarButtonItem.primaryActionKind.setter(v48, 1);

      v49 = *(v39 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController____lazy_storage___filterBarButtonItem);
      sub_AB9730();
      if (*(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v98 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      v50 = [v31 navigationItem];
      sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
      isa = sub_AB9740().super.isa;

      [v50 setRightBarButtonItems:isa animated:0];

      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = v44[8];
      v54 = v44[9];
      v44[8] = sub_21B7D4;
      v44[9] = v52;

      sub_17654(v53, v54);

      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = v44[6];
      v57 = v44[7];
      v44[6] = sub_141790;
      v44[7] = v55;

      sub_17654(v56, v57);

      type metadata accessor for ModelResponseIndexBarController();
      v58 = swift_allocObject();
      *(v58 + 24) = 0;
      *(v58 + 32) = 0;
      *(v58 + 40) = 100;
      swift_unknownObjectWeakInit();
      *(v58 + 56) = _swiftEmptyArrayStorage;
      *(v58 + 64) = 0;
      *(v58 + 72) = 0;
      *(v58 + 80) = 0;
      *(v58 + 88) = 1;
      v59 = v97;
      *(v58 + 16) = v97;
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v61 = v59;
      if (Strong)
      {
        v62 = Strong;

        sub_381368(v63, v62);
      }

      v64 = sub_381260();
      if (v64)
      {
        v65 = v64;
        v66 = swift_unknownObjectWeakLoadStrong();
        if (v66)
        {
          if (*(v58 + 32) == 1)
          {
            v94 = v66;
            v67 = *(v65 + 16);
            if (v67)
            {
              v93 = Strong;
              aBlock[0] = _swiftEmptyArrayStorage;

              sub_ABAEC0();
              v68 = objc_opt_self();
              v92[1] = v65;
              v69 = v65 + 40;
              do
              {

                v70 = sub_AB9260();
                v71 = [v68 keyCommandWithInput:v70 modifierFlags:0 action:"indexKeyCommandHandler:"];

                sub_ABAE90();
                sub_ABAED0();
                sub_ABAEE0();
                sub_ABAEA0();
                v69 += 16;
                --v67;
              }

              while (v67);
              v72 = aBlock[0];
              v59 = v97;
              Strong = v93;
            }

            else
            {

              v72 = _swiftEmptyArrayStorage;
            }

            sub_380230(v72);

            Strong = v94;
LABEL_21:

            *&v31[OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController] = v58;

            v73 = [v31 traitCollection];
            v74 = UITraitCollection.isMediaPicker.getter(v73);

            if (v74)
            {
              v75 = [v31 navigationController];
              if (v75)
              {
                v76 = v75;
                type metadata accessor for MediaPickerNavigationController(0);
                if (swift_dynamicCastClass())
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2D0, &qword_B046D0);
                  v77 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  *(v77 + 24) = 0;
                  *(v77 + 32) = 0;
                  swift_unknownObjectWeakAssign();
                  v78 = v59;

                  v79 = *(v77 + 24);
                  *(v77 + 24) = v59;

                  v80 = v77;
                  v81 = &OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController;
LABEL_27:
                  *&v31[*v81] = v80;

                  v82 = *&v31[OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController];
                  v83 = RequestResponse.Controller.revision.getter();
                  sub_219A44(v83);

                  v84 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v85 = (v82 + *(*v82 + 128));
                  swift_beginAccess();
                  v86 = *v85;
                  v87 = v85[1];
                  *v85 = sub_21B7DC;
                  v85[1] = v84;

                  sub_17654(v86, v87);

                  v88 = sub_213578();

                  v89 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v90 = *(v88 + 88);
                  v91 = *(v88 + 96);
                  *(v88 + 88) = sub_21B7E4;
                  *(v88 + 96) = v89;

                  sub_17654(v90, v91);

                  return;
                }
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF9280, &qword_B046D8);
            swift_allocObject();
            v80 = sub_2F5AFC(v59);
            v81 = &OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController;
            goto LABEL_27;
          }
        }
      }

      sub_380230(_swiftEmptyArrayStorage);
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_215344(int a1, id a2)
{
  v3 = [a2 traitCollection];
  [v3 displayScale];

  v4 = [a2 traitCollection];
  [a2 bounds];
  [a2 music_inheritedLayoutInsets];
  sub_14C0F8(v4, 0, &v7);
  v5 = v7;

  return v5;
}

id sub_215410@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_AB5180();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = [a2 collectionView];
  if (result)
  {
    v8 = result;
    sub_14D1D8(result, 1);

    sub_AB5140();
    return sub_AB5160();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2154F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_AB5320();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_AB5170();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = swift_projectBox();
  v14 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
  if (a1)
  {
    v14 = &enum case for UIListSeparatorConfiguration.Visibility.visible(_:);
  }

  (*(v10 + 104))(v12, *v14, v9);
  swift_beginAccess();
  v15 = sub_AB5270();
  sub_AB5130();
  v15(v30, 0);
  swift_endAccess();
  sub_13C80(0, &qword_DF0D20, NSCollectionLayoutSection_ptr);
  swift_beginAccess();
  (*(v6 + 16))(v8, v13, v5);
  v16 = sub_ABA400();
  (*(v6 + 8))(v8, v5);
  if (a1 || (v17 = [a2 traitCollection], v18 = UITraitCollection.isMediaPicker.getter(v17), v17, v18))
  {
    sub_13C80(0, &qword_DF9290, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = sub_AB9740().super.isa;
    [v16 setBoundarySupplementaryItems:isa];
  }

  else
  {
    v21 = [v16 boundarySupplementaryItems];
    sub_13C80(0, &qword_DF9290, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v22 = sub_AB9760();
    v23 = v22;
    if (v22 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v25 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = sub_361458(v25, v23);
        }

        else
        {
          if (v25 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_18;
          }

          v26 = *(v23 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        [v26 setPinToVisibleBounds:0];

        ++v25;
        if (v28 == i)
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
  }

  return v16;
}

void sub_2158A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController];
    v5 = [Strong traitCollection];
    v6 = *&v3[OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController];
    if (*(v6 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption))
    {
      v7 = *(v6 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType);
      if (v7 > 8)
      {
        v9 = 0x800000;
        goto LABEL_8;
      }

      v8 = &qword_B046E8[v7];
    }

    else
    {
      v8 = MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    }

    v9 = *v8;
LABEL_8:
    swift_beginAccess();
    v10 = *(v4 + 16);
    v35[1] = *(v4 + 32);
    v11 = *(v4 + 48);
    v12 = *(v4 + 64);
    v13 = *(v4 + 96);
    v35[4] = *(v4 + 80);
    v35[5] = v13;
    v35[2] = v11;
    v35[3] = v12;
    v14 = *(v4 + 112);
    v15 = *(v4 + 128);
    v16 = *(v4 + 144);
    v36 = *(v4 + 160);
    v35[7] = v15;
    v35[8] = v16;
    v35[6] = v14;
    v35[0] = v10;
    v17 = v10;
    v18 = *(v4 + 40);
    v19 = *(v4 + 72);
    v42 = *(v4 + 56);
    v43 = v19;
    v44 = *(v4 + 88);
    v40 = *(v4 + 24);
    v41 = v18;
    v20 = *(v4 + 121);
    v37 = *(v4 + 105);
    v38 = v20;
    v39[0] = *(v4 + 137);
    *(v39 + 15) = *(v4 + 152);
    sub_15F84(v35, &v23, &unk_DF9270, &qword_B046C8);
    v21 = UITraitCollection.mediaLibrary.getter();

    v22.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v24 = v40;
    v31 = v37;
    v34 = 0;
    v23 = v21;
    v28 = v44;
    v29 = v22.rawValue | v9;
    v30 = 0;
    v32 = v38;
    *v33 = v39[0];
    *&v33[15] = *(v39 + 15);
    RequestResponse.Controller.request.setter(&v23);
  }
}

double sub_215AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController);
    v7 = Strong;

    swift_beginAccess();
    v8 = *(v6 + 16);
    v9 = *(v6 + 32);
    v10 = *(v6 + 48);
    v11 = *(v6 + 64);
    v12 = *(v6 + 96);
    v28[4] = *(v6 + 80);
    v28[5] = v12;
    v28[2] = v10;
    v28[3] = v11;
    v13 = *(v6 + 112);
    v14 = *(v6 + 128);
    v15 = *(v6 + 144);
    v29 = *(v6 + 160);
    v28[7] = v14;
    v28[8] = v15;
    v28[6] = v13;
    v28[0] = v8;
    v28[1] = v9;
    v16 = *(v6 + 32);
    v36 = *(v6 + 16);
    v37 = v16;
    v38 = *(v6 + 48);
    v39 = *(v6 + 64);
    v17 = *(v6 + 128);
    v32 = *(v6 + 112);
    v33 = v17;
    v34 = *(v6 + 144);
    v35 = *(v6 + 160);
    v18 = *(v6 + 96);
    v30 = *(v6 + 80);
    v31 = v18;
    sub_15F84(v28, v19, &unk_DF9270, &qword_B046C8);

    v19[0] = v36;
    v19[1] = v37;
    v19[2] = v38;
    v20 = v39;
    v21 = a2;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v22 = v30;
    v23 = v31;
    RequestResponse.Controller.request.setter(v19);
  }

  return result;
}

void sub_215C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_219A44(a2);
  }
}

double sub_215C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController);
    v7 = Strong;

    swift_beginAccess();
    v8 = *(v6 + 128);
    v27 = *(v6 + 112);
    v28 = v8;
    v29 = *(v6 + 144);
    v30 = *(v6 + 160);
    v9 = *(v6 + 64);
    v23 = *(v6 + 48);
    v24 = v9;
    v10 = *(v6 + 96);
    v25 = *(v6 + 80);
    v26 = v10;
    v11 = *(v6 + 32);
    v21 = *(v6 + 16);
    v22 = v11;

    sub_15F84(&v21, v15, &unk_DF9270, &qword_B046C8);

    v15[2] = v23;
    v15[3] = v24;
    v15[4] = v25;
    v15[5] = v26;
    v15[0] = v21;
    v15[1] = v22;
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v16 = a1;
    v17 = a2;
    RequestResponse.Controller.request.setter(v15);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v14 = v12;

    RequestResponse.Controller.setNeedsReload(_:)(0, 0);
  }

  return result;
}

double sub_215E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v89.receiver = v4;
  v89.super_class = type metadata accessor for SongsViewController();
  objc_msgSendSuper2(&v89, "traitCollectionDidChange:", a1);
  v7 = *&v4[OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController];
  v8 = [v4 traitCollection];
  v9 = *&v4[OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController];
  v66 = a1;
  if ((*(v9 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption) & 1) == 0)
  {
    v11 = MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    goto LABEL_5;
  }

  v10 = *(v9 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType);
  if (v10 <= 8)
  {
    v11 = &qword_B046E8[v10];
LABEL_5:
    v12 = *v11;
    goto LABEL_7;
  }

  v12 = 0x800000;
LABEL_7:
  swift_beginAccess();
  v13 = *(v7 + 16);
  v79[1] = *(v7 + 32);
  v14 = *(v7 + 48);
  v15 = *(v7 + 64);
  v16 = *(v7 + 96);
  v79[4] = *(v7 + 80);
  v79[5] = v16;
  v79[2] = v14;
  v79[3] = v15;
  v17 = *(v7 + 112);
  v18 = *(v7 + 128);
  v19 = *(v7 + 144);
  v80 = *(v7 + 160);
  v79[7] = v18;
  v79[8] = v19;
  v79[6] = v17;
  v79[0] = v13;
  v20 = v13;
  v21 = *(v7 + 40);
  v22 = *(v7 + 72);
  v86 = *(v7 + 56);
  v87 = v22;
  v88 = *(v7 + 88);
  v84 = *(v7 + 24);
  v85 = v21;
  v23 = *(v7 + 121);
  v81 = *(v7 + 105);
  v82 = v23;
  v83[0] = *(v7 + 137);
  *(v83 + 15) = *(v7 + 152);
  sub_15F84(v79, &v67, &unk_DF9270, &qword_B046C8);
  v24 = UITraitCollection.mediaLibrary.getter();

  v25.rawValue = UITraitCollection.combinedLibraryRequestFilter.getter().rawValue;
  v69 = v85;
  v70 = v86;
  v71 = v87;
  v68 = v84;
  v75 = v81;
  v78 = 0;
  v67 = v24;
  v72 = v88;
  v73 = v25.rawValue | v12;
  v74 = 0;
  v76 = v82;
  *v77 = v83[0];
  *&v77[15] = *(v83 + 15);
  RequestResponse.Controller.request.setter(&v67);

  v26 = [v4 navigationItem];
  v27 = [v4 traitCollection];
  v28 = sub_2B51D8(v27);
  v30 = v29;

  sub_387430(v28, v30);
  v31 = [v5 traitCollection];
  v32 = [v31 horizontalSizeClass];

  if (!a1 || v32 != [a1 horizontalSizeClass])
  {
    goto LABEL_13;
  }

  v33 = [v5 traitCollection];
  v34 = [v33 preferredContentSizeCategory];

  v35 = [a1 preferredContentSizeCategory];
  v36 = sub_AB92A0();
  v38 = v37;
  if (v36 == sub_AB92A0() && v38 == v39)
  {

    goto LABEL_21;
  }

  v40 = sub_ABB3C0();

  if ((v40 & 1) == 0)
  {
LABEL_13:
    v41 = *&v5[OBJC_IVAR____TtC16MusicApplication19SongsViewController_textDrawingCache];
    [*(v41 + 64) removeAllObjects];
    [*(v41 + 80) removeAllObjects];
    if (*(v41 + 96))
    {
      *(v41 + 104) = 1;
    }

    else
    {
      v42 = [objc_opt_self() defaultCenter];
      if (qword_DE6828 != -1)
      {
        swift_once();
      }

      [v42 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v41];
    }

    if ([v5 isViewLoaded])
    {
      v43 = [v5 collectionView];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 collectionViewLayout];

        [v45 invalidateLayout];
      }
    }
  }

LABEL_21:
  if ([v5 isViewLoaded])
  {
    v46 = [v5 traitCollection];
    v47 = UITraitCollection.isMediaPicker.getter(v46);

    if (!a1 || UITraitCollection.isMediaPicker.getter(v48) != v47)
    {
      v49 = [v5 collectionView];
      if (v49)
      {
        v50 = v49;
        v51 = [v5 traitCollection];
        v52 = UITraitCollection.isMediaPicker.getter(v51);

        if (v52)
        {

          v53 = 0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF9280, &qword_B046D8);
          swift_allocObject();
          v53 = sub_2F5AFC(v50);
        }

        *&v5[OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController] = v53;
      }
    }
  }

  v54 = [v5 traitCollection];
  v55 = UITraitCollection.isMediaPicker.getter(v54);

  if (v55)
  {
    v56 = [v5 navigationController];
    if (v56)
    {
      v57 = v56;
      type metadata accessor for MediaPickerNavigationController(0);
      if (swift_dynamicCastClass())
      {
        v58 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController;
        if (!*&v5[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController])
        {
          v62 = v57;
          v63 = [v5 collectionView];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2D0, &qword_B046D0);
          v64 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(v64 + 24) = 0;
          *(v64 + 32) = 0;
          swift_unknownObjectWeakAssign();

          v65 = *(v64 + 24);
          *(v64 + 24) = v63;

          *&v5[v58] = v64;
          goto LABEL_36;
        }
      }
    }
  }

  v59 = [v5 traitCollection];
  v60 = UITraitCollection.isMediaPicker.getter(v59);

  if (v60)
  {
    return result;
  }

  *&v5[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController] = 0;
LABEL_36:

  return result;
}

void sub_216544(int a1, id a2)
{
  if ([a2 isViewLoaded])
  {
    v3 = [a2 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 collectionViewLayout];

      [v5 invalidateLayout];
    }
  }
}

void sub_216728(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&v4[OBJC_IVAR____TtC16MusicApplication19SongsViewController_lastKnownViewBounds]);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  v12 = CGRectGetWidth(v14);
  if ((sub_AB38D0() & 1) != 0 && [v4 isViewLoaded])
  {
    v9 = [v4 collectionView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 collectionViewLayout];

      [v11 invalidateLayout];
    }
  }
}

void sub_216990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for SongCell(0);
  v6 = static UICollectionReusableView.reuseIdentifier.getter();
  v8 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v5, a2, v6, v7, v5);

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v69);

  v9 = v69[0];
  if (v69[0])
  {
    v10 = [v69[0] results];

    if (!v10)
    {
      __break(1u);
      return;
    }

    isa = sub_AB3770().super.isa;
    v12 = [v10 itemAtIndexPath:isa];

    if (v12)
    {
      v13 = *(v3 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_textDrawingCache);
      v14 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
      swift_beginAccess();
      *&v8[v14] = v13;
      swift_retain_n();
      v15 = v8;

      v16 = *&v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
      v17 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
      swift_beginAccess();
      v18 = *&v16[v17];
      *&v16[v17] = v13;

      v19 = v16;
      sub_2E6210(v18);

      v20 = *(v3 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkCachingReference);
      *&v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference] = v20;

      *(*&v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 16) = v20;

      v21 = [v12 title];
      if (v21)
      {
        v22 = v21;
        v23 = sub_AB92A0();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = &v15[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
      v27 = *&v15[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
      v28 = *&v15[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
      *v26 = v23;
      v26[1] = v25;
      sub_142858(v27, v28);

      v29 = [v12 artist];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 name];
        if (v31)
        {
          v32 = v31;
          v33 = sub_AB92A0();
          v35 = v34;

          goto LABEL_12;
        }
      }

      v33 = 0;
      v35 = 0xE000000000000000;
LABEL_12:
      v36 = &v15[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v37 = *&v15[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
      v38 = *&v15[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
      *v36 = v33;
      v36[1] = v35;
      sub_142A70(v37, v38);

      v39 = [v12 album];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 title];
        if (v41)
        {
          v42 = v41;
          v43 = sub_AB92A0();
          v45 = v44;

LABEL_17:
          v46 = &v15[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
          v47 = *&v15[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
          v48 = *&v15[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
          *v46 = v43;
          v46[1] = v45;
          sub_142D1C(v47, v48);

          v49 = [v12 isFavorite];
          v50 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
          v51 = v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
          v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = v49;
          if (v49 != v51)
          {
            sub_201644();
            v52 = sub_200954();
            [v52 setHidden:(v15[v50] & 1) == 0];

            v49 = v15[v50];
          }

          if (v51 != v49)
          {
            sub_14B200();
          }

          v53 = *&v15[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
          *&v15[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = 0;
          sub_143510(v53);
          v54 = &v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
          v55 = *&v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
          v56 = v15[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment + 8];
          *v54 = 0;
          v54[8] = 0;
          if (v56 || (v69[0] = 0, *v66 = v55, sub_7FD28(), (sub_AB38E0() & 1) == 0))
          {
            [v15 setNeedsLayout];
          }

          v57 = [objc_opt_self() currentDevice];
          v58 = [v57 userInterfaceIdiom];

          if (v58)
          {
            v59 = [v12 duration];
            sub_142E58(v59, v60);
          }

          v69[3] = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
          v69[4] = &off_D179F8;
          v69[0] = v12;
          sub_15F84(v69, v66, &unk_DE9C60, &unk_AF8940);
          v61 = v67;
          if (v67)
          {
            v62 = v68;
            __swift_project_boxed_opaque_existential_1(v66, v67);
            v63 = v12;
            v64 = sub_4CAA30(&off_CEF8C8, v61, v62);
            __swift_destroy_boxed_opaque_existential_0(v66);
          }

          else
          {
            v65 = v12;
            sub_12E1C(v66, &unk_DE9C60, &unk_AF8940);
            v64 = _swiftEmptyArrayStorage;
          }

          sub_178218(v64);

          sub_12E1C(v69, &unk_DE9C60, &unk_AF8940);
          return;
        }
      }

      v43 = 0;
      v45 = 0xE000000000000000;
      goto LABEL_17;
    }
  }
}

void sub_217080(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  object = v4;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  __chkstk_darwin();
  if (sub_AB92A0() != a2 || v9 != a3)
  {
    v11 = sub_ABB3C0();

    if (v11)
    {
      goto LABEL_8;
    }

    v48[1] = 0;
    v48[2] = 0xE000000000000000;
    sub_ABAD90(66);
    v49._countAndFlagsBits = 0xD000000000000026;
    v49._object = 0x8000000000B58540;
    sub_AB94A0(v49);
    v50._countAndFlagsBits = a2;
    v50._object = a3;
    sub_AB94A0(v50);
    v51._object = 0x8000000000B58570;
    v51._countAndFlagsBits = 0xD000000000000018;
    sub_AB94A0(v51);
    sub_AB3820();
    sub_21B3B0();
    v52._countAndFlagsBits = sub_ABB330();
    object = v52._object;
    sub_AB94A0(v52);

    sub_ABAFD0();
    __break(1u);
  }

LABEL_8:
  v12 = type metadata accessor for PlayIntentControlsReusableView();
  v13 = static UICollectionReusableView.reuseIdentifier.getter();
  v15 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v12, a2, a3, a4, v13, v14, v12);

  v16 = *&object[OBJC_IVAR____TtC16MusicApplication19SongsViewController_textDrawingCache];
  *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textDrawingCache] = v16;
  swift_retain_n();

  v17 = *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_textStackView];
  v18 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v19 = *(v17 + v18);
  *(v17 + v18) = v16;
  swift_retain_n();
  sub_2E6210(v19);

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v48);

  v20 = v48[0];
  if (v48[0])
  {
    v21 = [v48[0] results];

    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = [v21 totalItemCount];
  }

  else
  {
    v22 = 0;
  }

  sub_AB9220();
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  sub_AB9210(v53);
  v48[0] = v22;
  sub_AB91F0();
  v54._countAndFlagsBits = 0x297328676E6F7320;
  v54._object = 0xE800000000000000;
  sub_AB9210(v54);
  sub_AB9240();
  sub_AB3550();
  v23 = sub_AB9320();
  v24 = &v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_title];
  *v24 = v23;
  v24[1] = v25;

  sub_413638();
  v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shouldHide] = v22 == 0;
  [v15 setHidden:?];
  v26 = v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden];
  v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isBottomHairlineHidden] = 1;
  if ((v26 & 1) == 0)
  {
    [*&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_bottomHairlineView] setHidden:1];
  }

  v27 = v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden];
  v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_isTopHairlineHidden] = 1;
  if ((v27 & 1) == 0)
  {
    [*&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_topHairlineView] setHidden:1];
  }

  v28 = [object traitCollection];
  v29 = [v28 horizontalSizeClass];

  if (v29 != &dword_0 + 2)
  {
    v30 = *&object[OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController];
    if (!v30 || *(v30 + 32) != 1)
    {
      v47 = v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment];
      v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment] = 0;
      if (v47 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v31 = v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment];
  v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_trailingHairlineAlignment] = 1;
  if ((v31 & 1) == 0)
  {
LABEL_20:
    [v15 setNeedsLayout];
  }

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA940, &qword_AF8F90);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_AF4EC0;
  *(v32 + 32) = 0;
  v33 = [object traitCollection];
  v34 = [v33 horizontalSizeClass];

  if (v34 == &dword_0 + 2)
  {
    v32 = sub_6B7E4(&dword_0 + 1, 2, 1, v32);
    *(v32 + 16) = 2;
    *(v32 + 33) = 1;
  }

  v35 = *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents];
  *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_userInterfaceComponents] = v32;
  if ((sub_12D0A4(v32, v35) & 1) == 0)
  {
    sub_413EB8();
    [v15 setNeedsLayout];
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v15;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_21B448;
  *(v38 + 24) = v37;
  v39 = &v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  v40 = *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler];
  v41 = *&v15[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_playHandler + 8];
  *v39 = sub_140E00;
  v39[1] = v38;
  v42 = v15;

  sub_17654(v40, v41);
  sub_413EB8();
  [v42 setNeedsLayout];

  v43 = swift_allocObject();
  *(v43 + 16) = sub_21B448;
  *(v43 + 24) = v37;
  v44 = &v42[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  v45 = *&v42[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler];
  v46 = *&v42[OBJC_IVAR____TtC16MusicApplication30PlayIntentControlsReusableView_shuffleHandler + 8];
  *v44 = sub_140E2C;
  v44[1] = v43;

  sub_17654(v45, v46);
  sub_413EB8();
  [v42 setNeedsLayout];
}

void sub_217820(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v66 = &v65 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v6 = &v65 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v8 = &v65 - v7;
  v9 = type metadata accessor for PlaybackIntentDescriptor(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v65 - v12;
  __chkstk_darwin();
  v14 = &v65 - v13;
  __chkstk_darwin();
  v16 = &v65 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  v19 = sub_AB3820();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_213BBC(v8);
  sub_12E1C(v6, &unk_DE8E20, &qword_AF7990);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_12E1C(v8, &unk_DEA510, "\b]\r");
    return;
  }

  v20 = v16;
  sub_140E58(v8, v16);
  v21 = v18;
  [a3 bounds];
  v80[0] = a3;
  v80[1] = v22;
  v80[2] = v23;
  v80[3] = v24;
  v80[4] = v25;
  v81 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v80, 15, v72);
  v76[0] = v72[0];
  v76[1] = v72[1];
  v77 = v73;
  v78 = v74;
  v79 = v75;
  v26 = v21;
  v27 = a3;
  v65 = v26;
  PresentationSource.init(viewController:position:)(v26, v76, v71);
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  sub_21B7EC(v16, v14, type metadata accessor for PlaybackIntentDescriptor);
  v28 = v69;
  sub_21B7EC(v14, v69, type metadata accessor for PlaybackIntentDescriptor);
  v29 = v68;
  sub_21B7EC(v14, v68, type metadata accessor for PlaybackIntentDescriptor);
  v30 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v31 = (v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  sub_140E58(v14, v32 + v30);
  v33 = v67;
  *(v32 + v31) = v67;
  sub_10AC20(0);
  v35 = v34;
  sub_10CB1C(0, 0, v34);
  v37 = v36;
  ExplicitRestrictionsController.shared.unsafeMutableAddressor();

  ExplicitRestrictionsController.explicitContentIsAllowed.getter();

  if (v37)
  {
    goto LABEL_7;
  }

  if (v35 > 4)
  {
    if (v35 <= 6)
    {
      if (v35 != 5)
      {
        v63 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_15F28(v71, v70);
        v64 = swift_allocObject();
        v64[2] = v63;
        v64[3] = 0;
        sub_17704(v70, (v64 + 4));
        v64[16] = sub_21B5C4;
        v64[17] = v32;

        sub_10DB34(sub_111AA8, v64);

        goto LABEL_8;
      }

      v61 = sub_10FB2C(0, 0);
      v62 = v61;
      goto LABEL_29;
    }

    switch(v35)
    {
      case 7:
LABEL_33:
        sub_1101F4(0, v71);
        goto LABEL_8;
      case 8:
        v57 = sub_AB9990();
        v58 = v66;
        (*(*(v57 - 8) + 56))(v66, 1, 1, v57);
        sub_15F28(v71, v70);
        sub_AB9940();
        v59 = sub_AB9930();
        v60 = swift_allocObject();
        *(v60 + 16) = v59;
        *(v60 + 24) = &protocol witness table for MainActor;
        sub_17704(v70, v60 + 32);
        sub_DBDC8(0, 0, v58, &unk_AF79B0, v60);

        goto LABEL_8;
      case 9:
        sub_10FFD8();
        goto LABEL_8;
    }

LABEL_35:
    sub_21B854(v29, type metadata accessor for PlaybackIntentDescriptor);
    sub_21B854(v28, type metadata accessor for PlaybackIntentDescriptor);
    v70[0] = v35;
    sub_ABB450();
    __break(1u);
    return;
  }

  if (v35 > 1)
  {
    if (v35 == 2)
    {
      sub_10F978();
      goto LABEL_8;
    }

    if (v35 == 3)
    {
      v56 = static Alert.cellularRestrictedAlert(model:)(v70, 0);
    }

    else
    {
      v56 = static Alert.networkUnavailableAlert(model:traitCollection:)(v70, 0, 0);
    }

    v62 = Alert.uiAlertController.getter(v56);
    sub_111904(v70);
    v61 = v62;
LABEL_29:
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v61, 1, 1, 0, 0);
    UIViewController.dismiss(after:)(480.0);

    goto LABEL_9;
  }

  if (v35)
  {
    if (v35 == 1)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

LABEL_7:
  v44 = PlaybackIntentDescriptor.intent.getter(v43, v38, v39, v40, v41, v42);
  [v44 setShuffleMode:v33];

  v51 = PlaybackIntentDescriptor.intent.getter(v50, v45, v46, v47, v48, v49);
  [v51 setRepeatMode:0];

  sub_37D3DC(0);
LABEL_8:

LABEL_9:
  sub_21B854(v29, type metadata accessor for PlaybackIntentDescriptor);
  sub_21B854(v28, type metadata accessor for PlaybackIntentDescriptor);
  v52 = v65;
  v53 = [v65 navigationItem];

  v54 = [v53 searchController];
  if (v54)
  {
    v55 = v54;

    v53 = [v55 searchBar];
    [v53 resignFirstResponder];
  }

  sub_1611C(v71);
  sub_21B854(v20, type metadata accessor for PlaybackIntentDescriptor);
}

void sub_218100(uint64_t result, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result == 1)
  {
    v7 = PlaybackIntentDescriptor.intent.getter(a2, result, a3, a4, a5, a6);
    [v7 setShuffleMode:a4];

    v14 = PlaybackIntentDescriptor.intent.getter(v13, v8, v9, v10, v11, v12);
    [v14 setRepeatMode:0];

    sub_37D3DC(0);
  }
}

void sub_218364(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v12 - v8;
  if (!*(v4 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController))
  {
    v10 = sub_AB3820();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    goto LABEL_6;
  }

  if (a2)
  {

    sub_37FF08(a3, v9);

    v10 = sub_AB3820();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(a4, v9, v10);
LABEL_8:
      sub_AB3820();
      (*(*(v10 - 8) + 56))(a4, 0, 1, v10);
      return;
    }

LABEL_6:
    sub_AB3810();
    sub_AB3820();
    if ((*(*(v10 - 8) + 48))(v9, 1, v10) != 1)
    {
      sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_218710(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_21876C(a2);
  }
}

void sub_21876C(uint64_t a1)
{
  v2 = v1;
  sub_21A4D8(a1);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 album];

  if (!v6)
  {
    return;
  }

  sub_21A4D8(a1);
  if (!v7)
  {
    return;
  }

  v36 = v7;
  v8 = [v7 album];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MPModelLibraryRequest) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF82B0;
    *(v11 + 32) = v9;
    sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
    v12 = v9;
    isa = sub_AB9740().super.isa;

    [v10 setScopedContainers:isa];

    v14 = objc_opt_self();
    v15 = objc_opt_self();
    v16 = v10;
    v17 = [v15 kindWithVariants:1];
    v18 = [v14 kindWithSongKind:v17];

    [v16 setSectionKind:v18];
    v19 = [v15 kindWithVariants:1];
    [v16 setItemKind:v19];

    v20 = [v2 traitCollection];
    UITraitCollection.configure<A, B>(libraryRequest:)(v16);

    v21 = [v36 identifiers];
    type metadata accessor for JSContainerDetailComponentController(0);
    v22 = v12;
    v23 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v22, 0, 1, UIScreen.Dimensions.size.getter, 0);
    if (v23)
    {
      v24 = v23;
      v25 = *&v23[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
LABEL_7:
      v26 = JSViewModel.playActivityRecommendationData.getter();
      v28 = v27;
LABEL_17:
      sub_466A4(0, 0xF000000000000000);
      v42[0] = v16;
      v42[1] = v25;
      v42[2] = v9;
      v42[3] = 0;
      v42[4] = v24;
      v42[5] = 0;
      v42[6] = v21;
      v43 = 1;
      v44 = v26;
      v45 = v28;
      v38[0] = v16;
      v38[1] = v25;
      v38[2] = v9;
      v38[3] = 0;
      v38[4] = v24;
      v38[5] = 0;
      v38[6] = v21;
      v39 = 1;
      v40 = v26;
      v41 = v28;
      sub_70EB0(v42, v37);
      sub_70F0C(v38);
      v32 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
      sub_70EB0(v42, v37);
      v33 = sub_2D72DC(v42);
      v34 = [v2 navigationController];
      if (v34)
      {
        v35 = v34;
        [v34 pushViewController:v33 animated:1];
        sub_70F0C(v42);
      }

      else
      {
        sub_70F0C(v42);
      }

      return;
    }

    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v29 = MPModelPropertyPlaylistType;
      v30 = v22;
      if ([v24 hasLoadedValueForKey:v29] && objc_msgSend(v24, "type") == &dword_8 + 1)
      {
        v24 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v31);
        v25 = *&v24[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];

        goto LABEL_7;
      }

      v24 = 0;
    }

    v25 = 0;
    v26 = 0;
    v28 = 0xF000000000000000;
    goto LABEL_17;
  }
}

void sub_218FF8(void *a1, uint64_t a2)
{
  v3 = v2;
  v51 = a2;
  v49 = a1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v8 = &v45 - v7;
  v9 = type metadata accessor for PlaybackIntentDescriptor(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v52);

  v13 = v52[0];
  if (v52[0])
  {
    v47 = v5;
    v50 = v3;
    v14 = [v52[0] results];

    if (v14)
    {
      isa = sub_AB3770().super.isa;
      v16 = [v14 itemAtIndexPath:isa];

      v48 = v16;
      if (v16)
      {
        v17 = v50;
        v18 = [v50 traitCollection];
        v19 = UITraitCollection.isMediaPicker.getter(v18);

        if (v19)
        {
          sub_21407C(v8);
          if ((*(v10 + 48))(v8, 1, v9) == 1)
          {

            sub_12E1C(v8, &unk_DEA510, "\b]\r");
            return;
          }

          sub_140E58(v8, v12);
          v29 = sub_AB3770().super.isa;
          v22 = v49;
          v30 = [v49 cellForItemAtIndexPath:v29];

          if (v30)
          {
            type metadata accessor for SongCell(0);
            v31 = swift_dynamicCastClass();
            if (!v31)
            {
            }
          }

          else
          {
            v31 = 0;
          }

          v37 = v48;
          if (*&v17[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController])
          {
            if (v31)
            {
              v39 = &off_D02738;
            }

            else
            {
              v39 = 0;
            }

            v40 = v31;
            v17 = v50;
            sub_3B97D0(v12, v37, v31, v39);

            sub_21B854(v12, type metadata accessor for PlaybackIntentDescriptor);
          }

          else
          {
            sub_21B854(v12, type metadata accessor for PlaybackIntentDescriptor);
          }
        }

        else
        {
          v20 = v51;
          v21 = sub_AB3770().super.isa;
          v22 = v49;
          v23 = [v49 cellForItemAtIndexPath:v21];

          if (v23)
          {
            sub_D5958(v53);
            v46 = v53[0];
            v45 = v53[1];
            v24 = v54;
            v25 = v55;
            v26 = v56;

            v27 = v45;
            v28 = v46;
          }

          else
          {
            v24 = 0;
            v26 = 0;
            v28 = 0uLL;
            v25 = 255;
            v27 = 0uLL;
          }

          v57[0] = v28;
          v57[1] = v27;
          v58 = v24;
          v59 = v25;
          v60 = v26;
          v32 = v50;
          PresentationSource.init(viewController:position:)(v32, v57, v52);
          if (qword_DE6838 != -1)
          {
            swift_once();
          }

          v33 = v47;
          (*(v47 + 16))(&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v4);
          v34 = (*(v33 + 80) + 24) & ~*(v33 + 80);
          v35 = swift_allocObject();
          *(v35 + 16) = v32;
          (*(v33 + 32))(v35 + v34, &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
          v36 = v32;
          v37 = v48;
          v38 = v48;
          sub_1109D4(v37, 0, 0, 1, v52, sub_21A8D0, v35);
          sub_1611C(v52);

          v17 = v50;
        }

        v41 = [v17 navigationItem];
        v42 = [v41 searchController];

        if (v42)
        {
          v43 = [v42 searchBar];

          [v43 resignFirstResponder];
        }

        v44 = sub_AB3770().super.isa;
        [v22 deselectItemAtIndexPath:v44 animated:1];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_219650(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for PlaybackIntentDescriptor(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v10 = &v17 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v17 - v13;
  if (v4 == 1)
  {
    v15 = sub_AB3820();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v10, a3, v15);
    (*(v16 + 56))(v10, 0, 1, v15);
    sub_213BBC(v14);
    sub_12E1C(v10, &unk_DE8E20, &qword_AF7990);
    sub_15F84(v14, v12, &unk_DEA510, "\b]\r");
    if ((*(v6 + 48))(v12, 1, v5) == 1)
    {
      sub_12E1C(v14, &unk_DEA510, "\b]\r");
    }

    else
    {
      sub_140E58(v12, v8);
      sub_37D3DC(0);
      sub_21B854(v8, type metadata accessor for PlaybackIntentDescriptor);
      v12 = v14;
    }

    sub_12E1C(v12, &unk_DEA510, "\b]\r");
  }
}

double sub_219A44(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v86 = &v74 - v4;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v74 - v9;
  v10 = (*&v1[OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkPrefetchingController] + OBJC_IVAR____TtC16MusicApplication32old_ArtworkPrefetchingController_catalogProviding);
  v11 = *v10;
  v12 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  sub_17654(v11, v12);
  v13 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController;
  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController];
  if (v14)
  {
    v15 = *(v14 + 24);
    *(v14 + 24) = 0;

    sub_380968();
  }

  v16 = [v2 collectionView];
  [v16 reloadData];

  swift_beginAccess();
  if ((*(a1 + 176) & 1) == 0)
  {
    v23 = *(a1 + 168);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = *v10;
    v26 = v10[1];
    *v10 = sub_21A5D4;
    v10[1] = v24;
    sub_21A5DC(v23, 0);
    v81 = v23;
    sub_17654(v25, v26);
    v27 = *&v2[v13];
    if (v27)
    {
      v28 = *(v27 + 24);
      *(v27 + 24) = v23;
      sub_21A5DC(v23, 0);
      sub_21A5DC(v23, 0);

      sub_380968();
      sub_21A5E8(v23, 0);
    }

    v29 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController;
    v30 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController];
    if (v30)
    {
      v31 = *(v30 + 96);
      *(v30 + 96) = v23;
      sub_21A5DC(v23, 0);
    }

    v84 = v8;
    v32 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController];
    if (v32)
    {
      v33 = *(v32 + 32);
      *(v32 + 32) = v23;
      sub_21A5DC(v23, 0);
    }

    v34 = *&v2[v29];
    if (v34)
    {
      v78 = v23;
      v35 = v34[11];

      v36 = [v35 indexPathsForVisibleItems];
      v37 = sub_AB9760();

      v38 = *(v37 + 16);
      if (v38)
      {
        v74 = v37;
        v75 = v2;
        v40 = *(v6 + 16);
        v39 = v6 + 16;
        v41 = v37 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
        v88 = *(v39 + 56);
        v89 = v40;
        v80 = (v39 + 16);
        v87 = (v39 - 8);
        v82 = (v39 + 40);
        v83 = (v39 + 32);
        v42 = v85;
        v40(v85, v41, v5);
        while (1)
        {
          v43 = v34[6];
          if (!v43 || (v44 = v34[7], , v45 = v43(v34, v42), v47 = v46, sub_17654(v43, v44), !v45))
          {
            (*v87)(v42, v5);
            goto LABEL_21;
          }

          v48 = v34[8];
          if (!v48)
          {
            break;
          }

          v49 = v34[9];

          v50 = v5;
          v51 = v86;
          v48(v34, v45, v47);
          v52 = v48;
          v53 = v51;
          v5 = v50;
          sub_17654(v52, v49);
          if ((*v83)(v53, 1, v50) == 1)
          {
            v42 = v85;
            (*v87)(v85, v5);
LABEL_29:
            sub_12E1C(v53, &unk_DE8E20, &qword_AF7990);
LABEL_35:
            swift_unknownObjectRelease();
            goto LABEL_21;
          }

          (*v80)(v84, v53, v50);
          v54 = v34[4];
          if (!v54 || (v55 = v34[5], , v56 = v54(v84), sub_17654(v54, v55), !v56))
          {
            ObjectType = swift_getObjectType();
            (*(v47 + 16))(0, 0, ObjectType, v47);
            (*(v47 + 32))(0, 0, ObjectType, v47);
            v59 = *v87;
            (*v87)(v84, v5);
            v42 = v85;
            v59(v85, v5);
            goto LABEL_35;
          }

          v77 = v56;
          v79 = [v56 relativeModelObjectForStoreLibraryPersonalization];
          if (v79)
          {
            swift_unknownObjectRetain();
            v76 = v34;
            v57 = &off_CF2AC8;
          }

          else
          {
            v76 = 0;
            v57 = 0;
          }

          v42 = v85;
          v60 = swift_getObjectType();
          (*(v47 + 16))(v76, v57, v60, v47);
          (*(v47 + 32))(v79, 0, v60, v47);
          v61 = *v87;
          (*v87)(v84, v5);
          v61(v42, v5);
          swift_unknownObjectRelease();

LABEL_21:
          v41 += v88;
          if (!--v38)
          {

            v2 = v75;
            goto LABEL_40;
          }

          v89(v42, v41, v5);
        }

        (*v87)(v42, v5);
        v53 = v86;
        (*v82)(v86, 1, 1, v5);
        goto LABEL_29;
      }

LABEL_40:
      v23 = v78;
    }

    sub_21370C();
    sub_21A5DC(v23, 0);
    v62 = v81;
    sub_3E2E84([v81 isEmpty]);

    v63 = sub_213578();
    v64 = [v62 isEmpty];
    sub_21A5E8(v23, 0);
    if (v64)
    {
      v65 = (*(*&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController] + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
      v66 = v65[1];
      if (v66)
      {
        v67 = *v65 & 0xFFFFFFFFFFFFLL;
        if ((v66 & 0x2000000000000000) != 0)
        {
          v68 = HIBYTE(v66) & 0xF;
        }

        else
        {
          v68 = v67;
        }

        v69 = v68 != 0;
        v70 = *(v63 + 64);
        *(v63 + 64) = v69;
        if (((v70 ^ v69) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v73 = *(v63 + 64);
        *(v63 + 64) = 0;
        if ((v73 & 1) == 0)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v71 = *(v63 + 64);
      *(v63 + 64) = 1;
      if (v71)
      {
LABEL_50:
        sub_21A5E8(v23, 0);
        goto LABEL_51;
      }
    }

    sub_430320();
    goto LABEL_50;
  }

  v17 = *&v2[v13];
  if (v17)
  {
    v18 = *(v17 + 24);
    *(v17 + 24) = 0;

    sub_380968();
  }

  v19 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController];
  if (v19)
  {
    v20 = *(v19 + 96);
    *(v19 + 96) = 0;
  }

  v21 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController];
  if (v21)
  {
    v22 = *(v21 + 32);
    *(v21 + 32) = 0;
  }

  sub_21370C();
  sub_3E2E84(0);
LABEL_51:

  return result;
}

id sub_21A288(int a1, int a2, id a3)
{
  result = [a3 results];
  if (result)
  {
    v4 = result;
    isa = sub_AB3770().super.isa;
    v6 = [v4 itemAtIndexPath:isa];

    v7 = [v6 artworkCatalog];
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21A3A0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_21A4D8(uint64_t a1)
{
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(&v4);

  v1 = v4;
  if (v4)
  {
    v2 = [v4 results];

    if (v2)
    {
      isa = sub_AB3770().super.isa;
      [v2 itemAtIndexPath:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_21A59C()
{

  return swift_deallocObject();
}

id sub_21A5DC(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_21A5E8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_21A62C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_21A674(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = *(a3 + 32);
  if (v5 && (v7 = *(a3 + 40), , v8 = v5(a2), sub_17654(v5, v7), v8))
  {
    v12 = [v8 relativeModelObjectForStoreLibraryPersonalization];
    if (v12)
    {
      swift_unknownObjectRetain();
      v9 = &off_CF2AC8;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate + 8) = v9;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_2009DC(v12, 0);
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusControllableDelegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    v10 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver;
    v11 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver);
    if (v11)
    {
      *(v11 + 32) = UIScreen.Dimensions.size.getter;
      *(v11 + 40) = 0;
    }

    *(a1 + v10) = 0;

    memset(v13, 0, 32);
    v13[2] = xmmword_B03DA0;
    sub_2019A4(v13, 0);
  }
}

uint64_t sub_21A80C()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_21A8D0(unsigned __int8 a1)
{
  v3 = *(sub_AB3820() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_219650(a1, v4, v5);
}

void sub_21A944()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_requestController;
  sub_212FF0(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF9298, &qword_B046E0);
  swift_allocObject();
  *(v0 + v2) = RequestResponse.Controller.init(request:)(v13, v3, v4, v5);
  v6 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_filterOptionsController;
  v7 = objc_allocWithZone(type metadata accessor for LibraryFilterOptionsController());
  *(v0 + v6) = sub_4F4944(9);
  v8 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_sortOptionsController;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  *(v0 + v8) = sub_225174(&off_CF0C28, 0, 0);
  *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___contentFilteringController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController____lazy_storage___noContentStateController) = 0;
  v9 = (v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_lastKnownViewBounds);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v0 + v10) = TextDrawing.Cache.init()();
  v11 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v11) = swift_allocObject();
  v12 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_artworkPrefetchingController;
  *(v1 + v12) = [objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController()) init];
  sub_ABAFD0();
  __break(1u);
}

void sub_21AB04(uint64_t a1)
{
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(&v3);

  v1 = v3;
  if (v3)
  {
    v2 = [v3 results];

    if (v2)
    {
      [v2 numberOfSections];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_21AB98(uint64_t a1)
{
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(&v4);

  v2 = v4;
  if (v4)
  {
    v3 = [v4 results];

    if (v3)
    {
      [v3 numberOfItemsInSection:a1];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_21AC44()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_indexBarController);
  if (!v1 || *(v1 + 32) != 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = sub_381260();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_21ACB8(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v20 - v11;
  aBlock[0] = [a1 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF9250, &qword_B046C0);
  v13 = swift_dynamicCast();
  v14 = *(v7 + 56);
  if (v13)
  {
    v14(v5, 0, 1, v6);
    v21 = a2;
    v15 = *(v7 + 32);
    v15(v12, v5, v6);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(v9, v12, v6);
    v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v15((v18 + v17), v9, v6);
    aBlock[4] = sub_21B34C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_43_3;
    v19 = _Block_copy(aBlock);

    [v21 addAnimations:v19];
    (*(v7 + 8))(v12, v6);
    _Block_release(v19);
  }

  else
  {
    v14(v5, 1, 1, v6);
    sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);
    [a2 setPreferredCommitStyle:0];
  }
}

void sub_21AFEC(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for SongCell(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(&v29);

    v9 = v29;
    if (!v29)
    {
      goto LABEL_9;
    }

    v10 = [v29 results];

    if (!v10)
    {
      __break(1u);
      return;
    }

    isa = sub_AB3770().super.isa;
    v12 = [v10 itemAtIndexPath:isa];

    if (!v12)
    {
LABEL_9:

      return;
    }

    v13 = *(v3 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_addKeepLocalController);
    if (v13)
    {
      v14 = v8;

      sub_21A674(v7, a2, v13, v15);
    }

    v16 = v8;
    v17 = [v12 artworkCatalog];
    v18 = *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
    *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v17;
    v19 = v17;

    sub_74EA4(v17);
    v20 = OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController;
    if (*(v3 + OBJC_IVAR____TtC16MusicApplication19SongsViewController_mediaPickerAddController))
    {

      v21 = sub_2FBF94(v12);
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton);
    *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton) = v21 & 1;
    sub_203DB8(v22);
    if (*(v3 + v20))
    {

      v24 = sub_304104(v12, v23);

      v25 = *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected);
      *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected) = v24;
      if (v24 == v25)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = 0;
      v26 = *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected);
      *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isMediaPickerAddButtonSelected) = 0;
      if ((v26 & 1) == 0)
      {
LABEL_17:

        return;
      }
    }

    v27 = *(v7 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton);
    if (v27)
    {
      v28 = v27;
      [v28 setSelected:v24];

      return;
    }

    goto LABEL_17;
  }
}

uint64_t sub_21B288()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_21B34C()
{
  v1 = *(sub_AB3820() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_218710(v2, v3);
}

unint64_t sub_21B3B0()
{
  result = qword_DF9260;
  if (!qword_DF9260)
  {
    sub_AB3820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF9260);
  }

  return result;
}

uint64_t sub_21B408()
{

  return swift_deallocObject();
}

uint64_t sub_21B450()
{

  return swift_deallocObject();
}

uint64_t sub_21B488()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB4C10();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = (v3 + *(v1 + 28));
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = (v3 + *(v1 + 32));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return swift_deallocObject();
}

void sub_21B5C4(uint64_t a1)
{
  v5 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v1 + ((*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_218100(a1, v6, v1 + v7, v8, v3, v4);
}

uint64_t sub_21B660()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21B6DC()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21B794()
{

  return swift_deallocObject();
}

uint64_t sub_21B7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21B8E0(char *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties;
  if (v2[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] == 2)
  {
    v6 = *&v2[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties];
    v7 = [v6 properties];
    v8 = sub_AB9B40();

    v9 = sub_AB92A0();
    v11 = sub_4DFDA8(v9, v10, v8);
    v13 = v12;
    v15 = v14;

    sub_F01A0(v11, v13, v15);
    v2[v5] = v15 != -1;
  }

  v16 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
  swift_beginAccess();
  v17 = *&a1[v16];
  if (v17)
  {
    v18 = *&v2[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder];
    v19 = v17;
    v20 = [v18 modelObjectWithStoreItemMetadata:v19 userIdentity:a2];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 identifiers];
      v23 = swift_allocObject();
      *(v23 + 16) = v2;
      *(v23 + 24) = a1;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_F01B8;
      *(v24 + 24) = v23;
      aBlock[4] = sub_57B84;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_41A314;
      aBlock[3] = &block_descriptor_74;
      v25 = _Block_copy(aBlock);
      v26 = v2;
      v27 = a1;

      [v21 copyWithIdentifiers:v22 block:v25];

      _Block_release(v25);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

id sub_21BBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v6 = *(a2 + OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties);
    if (v6 == 2)
    {
      __break(1u);
    }

    else if (v6)
    {
      v7 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_pendingRequestsCount;
      v8 = result;
      swift_beginAccess();
      return [v8 setPendingRequestsCount:*(a3 + v7)];
    }
  }

  return result;
}

id sub_21BC7C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSModelSocialPersonProfileBuilder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for JSModelSocialPersonProfileBuilder.InitializedProperties(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_21BDD0()
{

  return swift_deallocObject();
}

double block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_21BE38(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v5 = OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_initializedProperties;
  if (*(v2 + OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_initializedProperties) == 2)
  {
    v55 = a1;
    v56 = a2;
    v54 = OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_requestedProperties;
    v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_requestedProperties);
    v7 = [v6 properties];
    v8 = sub_AB9B40();

    v9 = sub_AB92A0();
    v11 = sub_4DFDA8(v9, v10, v8);
    v13 = v12;
    v15 = v14;

    sub_F01A0(v11, v13, v15);
    v16 = sub_AB92A0();
    v18 = sub_4DFDA8(v16, v17, v8);
    v20 = v19;
    v22 = v21;

    sub_F01A0(v18, v20, v22);
    v23 = sub_AB92A0();
    v25 = sub_4DFDA8(v23, v24, v8);
    v27 = v26;
    v29 = v28;

    sub_F01A0(v25, v27, v29);
    v30 = sub_AB92A0();
    v32 = sub_4DFDA8(v30, v31, v8);
    v34 = v33;
    v36 = v35;

    sub_F01A0(v32, v34, v36);
    v37 = *(v2 + v54);
    v38 = [v37 relationships];
    sub_119B5C();
    v39 = sub_AB8FF0();

    v40 = sub_AB92A0();
    if (*(v39 + 16))
    {
      sub_2EBF88(v40, v41);
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v44 = ~v29 != 0;
    v45 = ~v22 != 0;
    v46 = ~v15 != 0;

    v47 = v2 + v5;
    *v47 = (v45 << 16) | (v46 << 8) | (v44 << 24) | v43 & 1;
    *(v47 + 4) = ((v45 << 16) | (v46 << 8) | (v44 << 24) | ((v36 != -1) << 32)) >> 32;

    v4 = v55;
    v3 = v56;
  }

  v58 = 1;
  v48 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin();
  v53[2] = v2;
  v53[3] = v4;
  v53[4] = v3;
  v53[5] = &v58;
  v49 = objc_allocWithZone(MusicModelSearchLandingItem);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_21C8D8;
  *(v50 + 24) = v53;
  aBlock[4] = sub_57B84;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_75;
  v51 = _Block_copy(aBlock);

  v52 = [v49 initWithIdentifiers:v48 block:v51];
  _Block_release(v51);

  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
    __break(1u);
  }

  else
  {
    [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v52 personalizationStyle:v58];
  }
}

void sub_21C280(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_initializedProperties;
  v11 = *(a2 + OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_initializedProperties);
  if (v11 == 2)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v12 = v9;
  if (v11)
  {

    sub_4D3314(a3, a4);
    v14 = v13;
    v16 = v15;

    [v12 setContentItem:v14];
    if (v14)
    {

      *a5 = v16;
    }
  }

  v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  if (*(a2 + v10) == 2)
  {
    goto LABEL_19;
  }

  if ((*(a2 + v10) & 0x100) != 0)
  {
    swift_beginAccess();

    v18 = sub_AB9260();

    [v12 setTitleText:v18];

    v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_20;
  }

  if ((v17 & 0x1000000) != 0)
  {
    swift_beginAccess();
    v19 = sub_AB9260();

    [v12 setDisplayStyle:v19];

    v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_21;
  }

  if ((v17 & 0x100000000) != 0)
  {
    v20 = OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_isFeatured;
    swift_beginAccess();
    [v12 setIsFeatured:a3[v20]];
    LODWORD(v17) = *(a2 + v10);
  }

  if (v17 == 2)
  {
    goto LABEL_22;
  }

  if ((v17 & 0x10000) != 0)
  {
    v21 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_backgroundArtwork;
    swift_beginAccess();
    v22 = *&a3[v21];
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a3;
    aBlock[4] = sub_21C94C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_119878;
    aBlock[3] = &block_descriptor_20_1;
    v24 = _Block_copy(aBlock);
    v25 = v22;
    v26 = a3;

    [v12 setBackgroundArtworkCatalogBlock:v24];
    _Block_release(v24);
  }
}

id sub_21C600(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = ICStoreArtworkInfoCropStyleFCCrop270;
    v4 = a2;
    v5 = JSArtwork.artworkCatalog(defaultCropStyle:)(v3);

    return v5;
  }

  else
  {
    v7 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
    swift_beginAccess();
    v9 = *(a3 + v7);
    if (v9)
    {
      v10 = v9;
      v11 = [v10 brickEditorialArtworkRequestToken];
      if (v11)
      {
        v12 = v11;
        v13 = objc_opt_self();
        v14 = v12;
        result = [v13 sharedStoreArtworkDataSource];
        if (result)
        {
          v15 = result;
          v16 = objc_allocWithZone(MPArtworkCatalog);
          v17 = v14;
          v18 = [v16 initWithToken:v17 dataSource:v15];

          return v18;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_21C778(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSModelSearchLandingItemBuilder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for JSModelSearchLandingItemBuilder.InitializedProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for JSModelSearchLandingItemBuilder.InitializedProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_21C90C()
{

  return swift_deallocObject();
}

id sub_21C954(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_initializedProperties];
  v3[4] = 0;
  *v3 = 2;
  *&v1[OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_requestedProperties] = a1;
  v4 = [a1 relationships];
  sub_119B5C();
  v5 = sub_AB8FF0();
  v6 = sub_AB92A0();
  if (*(v5 + 16) && (v8 = sub_2EBF88(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);
  }

  else
  {

    v10 = [objc_opt_self() emptyPropertySet];
  }

  type metadata accessor for JSModelMediaContentItemBuilder();
  v11 = swift_allocObject();
  v11[4] = 0;
  v11[2] = v10;
  result = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v10];
  if (result)
  {
    v11[3] = result;
    *&v2[OBJC_IVAR____TtC16MusicApplication31JSModelSearchLandingItemBuilder_contentItemBuilder] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for JSModelSearchLandingItemBuilder();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CAF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21CB48(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return v2;
}

uint64_t sub_21CBD4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MetricsPageProperties(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21CC40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21CCC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21CD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_ABA9C0();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v20[-v14 - 8];
  sub_21D790(a3, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
  v16 = swift_dynamicCast();
  (*(*(AssociatedTypeWitness - 8) + 56))(v15, v16 ^ 1u, 1, AssociatedTypeWitness);
  v17 = (*(a5 + 64))(a1, a2, v15, a4, a5);
  (*(v13 + 8))(v15, v12);
  return v17;
}

uint64_t sub_21CF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CF70(a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21CF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v11 = &v15[-v10 - 8];
  swift_getAssociatedTypeWitness();
  v12 = swift_dynamicCastUnknownClassUnconditional();
  sub_9ACA0(a2, v15);
  swift_dynamicCast();
  (*(a4 + 48))(v12, v11, a3, a4);
  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_21D12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21D198(a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21D198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v11 = &v15[-v10 - 8];
  swift_getAssociatedTypeWitness();
  v12 = swift_dynamicCastUnknownClassUnconditional();
  sub_9ACA0(a2, v15);
  swift_dynamicCast();
  (*(a4 + 56))(v12, v11, a3, a4);
  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_21D354(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21D3B4(a1, a2, WitnessTable, v5);
}

uint64_t sub_21D3B4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v14[-v9 - 8];
  sub_9ACA0(a1, v14);
  swift_dynamicCast();
  v11 = (*(a3 + 72))(v10, a2, a3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v11;
}

uint64_t sub_21D53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CD14(a1, a2, a3, a4, WitnessTable, v9);
}

uint64_t sub_21D5B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21D618(a1, a2, WitnessTable, v5);
}

uint64_t sub_21D618(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v13[-v9 - 8];
  sub_9ACA0(a1, v13);
  swift_dynamicCast();
  (*(a3 + 80))(v10, a2, a3);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_21D790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D800(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21D874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21D8C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21D91C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21D970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21D9C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21DA18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21DA6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21DAC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21DB14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

uint64_t sub_21DB68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21CB48(a1, WitnessTable);
}

void sub_21DC54(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for JSTVShowEpisodeDetailModelRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail];
    *&v8[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail] = v5;
    v7 = v5;
  }
}

double sub_21DD78(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_60044();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_21ED20, v12);

  return result;
}

double sub_21DE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);

  return result;
}

void sub_21E0E8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication42JSTVShowEpisodeDetailModelRequestOperation_request];
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v2;
  v5 = [v1 itemProperties];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 itemKind];
  if (!v7)
  {

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v8 = v7;
  [v7 modelClass];

  swift_getObjCClassMetadata();
  v9 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
  v10 = [v6 propertySetByCombiningWithPropertySet:v9];

  v11 = objc_allocWithZone(type metadata accessor for JSModelTVShowEpisodeDetailItemBuilder());
  v12 = sub_37E18C(v10);

LABEL_7:
  v13 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v14 = sub_AB9260();
  [v13 appendSection:v14];

  v15 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v16 = sub_AB9260();
  [v15 appendSection:v16];

  v17 = JSTVShowEpisodeDetail.item.getter();
  if (!v17)
  {
LABEL_12:
    v23 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v1 unpersonalizedContentDescriptors:v13];
    [v23 setRepresentedObjects:v15];
    v24 = swift_allocObject();
    *(v24 + 16) = v1;
    *(v24 + 24) = a1;
    v28[4] = sub_21EC34;
    v28[5] = v24;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 1107296256;
    v28[2] = sub_151E0;
    v28[3] = &block_descriptor_27_1;
    v25 = _Block_copy(v28);
    v26 = v1;
    v27 = a1;

    [v23 performWithResponseHandler:v25];
    _Block_release(v25);

    return;
  }

  v18 = v17;
  if (!v12)
  {
LABEL_11:

    goto LABEL_12;
  }

  v19 = [a1 userIdentity];
  if (v19)
  {
    v20 = v19;
    sub_37D5B4(v18, v19);
    v22 = v21;

    [v15 appendItem:v18];
    [v13 appendItem:v22];

    v18 = v22;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

void sub_21E414(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSTVShowEpisodeDetailModelResponse());
    v9 = a1;
    v13 = sub_21E670(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication42JSTVShowEpisodeDetailModelRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication42JSTVShowEpisodeDetailModelRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_21E670(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_itemDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSTVShowEpisodeDetailModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication33JSTVShowEpisodeDetailModelRequest_tvShowEpisodeDetail];
    v12 = v11;
    v13 = *JSTVShowEpisodeDetail.itemsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_itemDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication34JSTVShowEpisodeDetailModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_21EB64()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}
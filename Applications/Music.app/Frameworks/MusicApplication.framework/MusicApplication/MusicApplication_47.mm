void sub_3F5440(void *a1)
{
  v2 = v1;
  v32.receiver = v1;
  v32.super_class = type metadata accessor for JSSettingsViewController();
  objc_msgSendSuper2(&v32, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache];
  [v4 displayScale];
  v7 = v6;
  swift_beginAccess();
  *(v5 + 16) = v7;
  sub_106F0C();
  v8 = [v4 horizontalSizeClass];
  if (a1 && v8 == [a1 horizontalSizeClass])
  {
    v9 = [v4 preferredContentSizeCategory];
    v10 = [a1 preferredContentSizeCategory];
    v11 = sub_AB92A0();
    v13 = v12;
    if (v11 == sub_AB92A0() && v13 == v14)
    {

LABEL_34:

      return;
    }

    v15 = sub_ABB3C0();

    if (v15)
    {
      goto LABEL_34;
    }
  }

  [*(v5 + 64) removeAllObjects];
  [*(v5 + 80) removeAllObjects];
  if (*(v5 + 96))
  {
    *(v5 + 104) = 1;
  }

  else
  {
    v16 = [objc_opt_self() defaultCenter];
    if (qword_DE6828 != -1)
    {
      swift_once();
    }

    [v16 postNotificationName:static TextDrawing.Cache.didInvalidateNotification object:v5];
  }

  if (![v2 isViewLoaded])
  {
    goto LABEL_34;
  }

  v17 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth;
  *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth] = 0;
  if ((sub_AB38D0() & 1) == 0 || (v18 = *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView]) == 0)
  {
LABEL_28:
    v27 = *&v2[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
    if (v27)
    {
      v28 = [v27 collectionViewLayout];
      if (v28)
      {
        v29 = v28;
        [swift_getObjCClassFromObject() invalidationContextClass];
        swift_getObjCClassMetadata();
        sub_13C80(0, &unk_DFED50, UICollectionViewLayoutInvalidationContext_ptr);
        if (swift_dynamicCastMetatype())
        {
          v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          [v29 invalidateLayoutWithContext:v30];

          v29 = v30;
        }
      }
    }

    sub_3FEC1C(1);
    goto LABEL_34;
  }

  v31 = v18;
  v19 = [v31 visibleCells];
  sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
  v20 = sub_AB9760();

  if (!(v20 >> 62))
  {
    v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_27:

    goto LABEL_28;
  }

  v21 = sub_ABB060();
  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = sub_360438(i, v20);
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      type metadata accessor for TextFieldCell();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        v26 = v25;
        *(v25 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth) = *&v2[v17];
        if (sub_AB38D0())
        {
          [v26 setNeedsLayout];
        }
      }
    }

    goto LABEL_27;
  }

  __break(1u);
}

char *sub_3F5A18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_AB4F50();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300, &qword_AFEFF0);
  __chkstk_darwin();
  v10 = &v164 - v9;
  swift_beginAccess();

  sub_AB37F0();
  Array.subscript.getter(&type metadata for JSSettingsViewController.Section, &aBlock);
  v177 = *(&aBlock + 1);
  v178 = v183;
  v179 = v184;
  v11 = v185;
  v12 = v186;
  v13 = aBlock;

  if (!v13)
  {
    goto LABEL_4;
  }

  v176 = v11;
  sub_AB37E0();
  v14 = Array.subscript.getter(&type metadata for JSSettingsViewController.Item, &aBlock);
  if (BYTE8(v184) > 0xFDu)
  {
    sub_4043B0(v13, v177, v178, v179, *(&v179 + 1), v176);
LABEL_4:
    v15 = sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
    return UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v15, a2, 0xD00000000000002ALL, 0x8000000000B63C20, v15);
  }

  v173 = v13;
  v17 = *(&aBlock + 1);
  v175 = aBlock;
  v171 = v184;
  v18 = BYTE8(v184) >> 6;
  v174 = BYTE8(v184);
  v172 = v183;
  if (v18 <= 1)
  {
    if (v18)
    {
      v62 = sub_3B365C(a2);
      v63 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache);
      v64 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
      swift_beginAccess();
      *&v62[v64] = v63;
      swift_retain_n();
      v16 = v62;

      v65 = *&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
      v170 = v12;
      v66 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
      swift_beginAccess();
      v67 = *&v65[v66];
      *&v65[v66] = v63;

      v68 = v65;
      sub_2E6210(v67);

      v69 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomTextStyle];
      *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomTextStyle] = UIFontTextStyleBody;
      v70 = UIFontTextStyleBody;

      v71 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents];
      swift_beginAccess();
      v72 = *(v71 + 2);
      *(v71 + 2) = UIFontTextStyleBody;
      v73 = v70;

      aBlock = *v71;
      v183 = UIFontTextStyleBody;
      v184 = *(v71 + 24);
      sub_4EF1AC();
      swift_endAccess();
      v74 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor];
      *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor] = 1;
      sub_D3144(v74);
      sub_4EFF38();
      v75 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
      v76 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
      v77 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText + 8];
      v78 = v175;
      *v75 = v175;
      *(v75 + 1) = v17;
      v79 = v172;
      v80 = v171;
      sub_404A50(v78, v17, v172, v171, v174);
      sub_4EE4B4(v76, v77);

      v81 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText];
      v82 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText];
      v83 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText + 8];
      *v81 = 0;
      *(v81 + 1) = 0xE000000000000000;
      sub_4EE668(v82, v83);

      v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessibilityIsDimmed] = 0;
      sub_AB4F00();
      v84 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_defaultBackgroundConfiguration;
      swift_beginAccess();
      (*(v6 + 40))(&v16[v84], v8, v5);
      swift_endAccess();

      sub_404A3C(v78, v17, v79, v80, v174);
      v56 = v173;
      v57 = v177;
      v58 = v178;
      v60 = *(&v179 + 1);
      v59 = v179;
      v61 = v176;
      goto LABEL_71;
    }

    v19 = sub_3B3674(a2);
    *&v19[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate + 8] = &off_D10EE8;
    swift_unknownObjectWeakAssign();
    v16 = v19;
    sub_AB4F00();
    (*(v6 + 56))(v10, 0, 1, v5);
    sub_ABA2D0();
    v20 = &v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionText];
    *v20 = v175;
    *(v20 + 1) = v17;

    v21 = *&v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionLabel];

    v22 = sub_AB9260();
    [v21 setText:v22];

    [v16 setNeedsLayout];
    v23 = &v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_placeholder];
    v24 = v172;
    v25 = v171;
    *v23 = v172;
    v23[1] = v25;

    v26 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField;
    v27 = *&v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField];

    v28 = sub_AB9260();
    [v27 setPlaceholder:v28];

    v29 = v174;
    if (v174)
    {
      v30 = 0;
    }

    else
    {
      v30 = 7;
    }

    v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_forSecureTextEntry] = v174 & 1;
    if (v29)
    {
      v31 = &OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_passwordTextFieldValue;
    }

    else
    {
      v31 = &OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_identifierTextFieldValue;
    }

    [*&v16[v26] setSecureTextEntry:?];
    *&v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_keyboardType] = v30;
    [*&v16[v26] setKeyboardType:v30];
    v32 = (v3 + *v31);
    v33 = *v32;
    v34 = v32[1];

    sub_72758(v33, v34);

    v35 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth);
    v36 = *&v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth];
    *&v16[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth] = v35;
    *&aBlock = v36;
    v181 = v35;
    if (sub_AB38D0())
    {
      [v16 setNeedsLayout];
    }

    v37 = v175;
    v38 = v17;
    v39 = v24;
    v40 = v25;
    v41 = v29;
LABEL_19:
    sub_404A3C(v37, v38, v39, v40, v41);
    v56 = v173;
    v57 = v177;
    v58 = v178;
    v60 = *(&v179 + 1);
    v59 = v179;
    v61 = v176;
LABEL_71:
    sub_4043B0(v56, v57, v58, v59, v60, v61);
    return v16;
  }

  v169 = *(&aBlock + 1);
  if (v18 == 2)
  {
    v16 = sub_3B368C(a2);
    sub_AB4F00();
    v42 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_defaultBackgroundConfiguration;
    swift_beginAccess();
    (*(v6 + 40))(&v16[v42], v8, v5);
    swift_endAccess();
    v43 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_artworkCachingReference);
    *&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkCachingReference] = v43;

    *(*&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent] + 16) = v43;

    v44 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache);
    v45 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    *&v16[v45] = v44;
    swift_retain_n();

    v46 = *&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v47 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v48 = *&v46[v47];
    *&v46[v47] = v44;

    v49 = v46;
    sub_2E6210(v48);

    v50 = v175;
    sub_3FF234(v16, v175);
    result = [v16 tableViewCell];
    if (result)
    {
      v52 = result;
      v53 = objc_allocWithZone(UIColor);
      *(&v184 + 1) = sub_3F6F90;
      v185 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v183 = sub_119878;
      *&v184 = &block_descriptor_247;
      v54 = _Block_copy(&aBlock);
      v55 = [v53 initWithDynamicProvider:v54];
      _Block_release(v54);

      [v52 setSelectionTintColor:v55];

      v37 = v50;
      v38 = v169;
      v39 = v172;
      v40 = v171;
      v41 = v174;
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    v170 = v12;
    v85 = v175;
    v86 = (*&stru_B8.segname[(swift_isaMask & *v175) - 8])(v14);
    if (v87)
    {
      v88 = v86;
    }

    else
    {
      v88 = 0;
    }

    v167 = v88;
    if (v87)
    {
      v89 = v87;
    }

    else
    {
      v89 = 0xE000000000000000;
    }

    v166 = v89;
    v90 = (*(&stru_158.size + (swift_isaMask & *v85)))(v86);
    if (v90)
    {
      v168 = 1;
    }

    else
    {
      if (qword_DE6C98 != -1)
      {
        swift_once();
      }

      v168 = qword_E718D8;
      v90 = qword_E718D8;
    }

    v91 = (*(&stru_B8.reloff + (swift_isaMask & *v85)))(v90);
    if (v92)
    {
      v93 = v91;
    }

    else
    {
      v93 = 0;
    }

    v165 = v93;
    if (v92)
    {
      v94 = v92;
    }

    else
    {
      v94 = 0xE000000000000000;
    }

    v164 = v94;
    v95 = sub_3B365C(a2);
    v96 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache);
    v97 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
    swift_beginAccess();
    *&v95[v97] = v96;
    swift_retain_n();
    v98 = v95;

    v99 = *&v98[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v100 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v101 = *&v99[v100];
    *&v99[v100] = v96;

    v102 = v99;
    sub_2E6210(v101);

    v103 = *&v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomTextStyle];
    *&v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomTextStyle] = UIFontTextStyleBody;
    v104 = UIFontTextStyleBody;

    v105 = &v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents];
    swift_beginAccess();
    v106 = *(v105 + 2);
    *(v105 + 2) = UIFontTextStyleBody;
    v107 = v104;

    aBlock = *v105;
    v183 = UIFontTextStyleBody;
    v184 = *(v105 + 24);
    sub_4EF1AC();
    swift_endAccess();
    v108 = *&v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor];
    v109 = v168;
    *&v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor] = v168;
    sub_137F98(v109);
    sub_D3144(v108);
    sub_4EFF38();
    v110 = &v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
    v111 = *&v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
    v112 = *&v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText + 8];
    v113 = v166;
    *v110 = v167;
    v110[1] = v113;
    sub_4EE4B4(v111, v112);

    v114 = &v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText];
    v115 = *&v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText];
    v116 = *&v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText + 8];
    v117 = v164;
    *v114 = v165;
    v114[1] = v117;
    sub_4EE668(v115, v116);

    v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessibilityIsDimmed] = 0;
    sub_AB4F00();
    v118 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_defaultBackgroundConfiguration;
    swift_beginAccess();
    (*(v6 + 40))(&v98[v118], v8, v5);
    swift_endAccess();

    sub_D3144(v109);
    *&v98[OBJC_IVAR____TtC16MusicApplication8MenuCell_delegate + 8] = &off_D10EB0;
    swift_unknownObjectWeakAssign();
    v16 = v98;
    [v16 setSelectionStyle:3];
    result = [v16 tableViewCell];
    if (result)
    {
      v119 = result;
      [result setAccessoryType:(*&stru_1A8.segname[(swift_isaMask & *v85) - 8])() & 1];

      v120 = (*(&stru_248.size + (swift_isaMask & *v85)))();
      v121 = v171;
      if ((~v120 & 0xF000000000000007) != 0)
      {
        v125 = v120;

        if (v125 < 0)
        {
          v134 = sub_4EE9A8(0);
          v135 = (*&stru_68.segname[(swift_isaMask & *(v125 & 0x7FFFFFFFFFFFFFFFLL)) - 8])(v134);
          v136 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText];
          v137 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText];
          v138 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText + 8];
          *v136 = v135;
          v136[1] = v139;
          sub_4EE854(v137, v138);
        }

        else
        {
          v126 = sub_4EE9A8(&dword_0 + 1);
          v127 = (*&stru_68.segname[swift_isaMask & *v125])(v126);
          v128 = OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled;
          v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled] = v127 & 1;
          if (v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable])
          {
            v129 = sub_4EFAD4();
            v130 = sub_4EDD18();

            [v130 setOn:v16[v128]];
          }
        }

        sub_404114(v125);
      }

      else if ((*&stru_1F8.segname[(swift_isaMask & *v85) + 8])())
      {

        sub_4EE9A8(&dword_0 + 1);
        v122 = OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled;
        v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled] = 1;
        if (v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable] == 1)
        {
          v123 = sub_4EFAD4();
          v124 = sub_4EDD18();

          [v124 setOn:v16[v122]];
        }
      }

      else
      {
        sub_4EE9A8(0);
        v131 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText];
        v132 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText];
        v133 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText + 8];
        *v131 = 0;
        *(v131 + 1) = 0;
        sub_4EE854(v132, v133);

        [v16 setAccessoryView:0];
      }

      v140 = (*(&stru_108.reserved2 + (swift_isaMask & *v85)))();
      if (v140)
      {
        v141 = v140;
        v142 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
        swift_beginAccess();
        v143 = *&v141[v142];
        if (v143)
        {
          v144 = v143;
        }

        else
        {
          v144 = ICStoreArtworkInfoCropStyleBoundedBox;
        }

        v146 = v16;
        v147 = v143;
        v148 = JSArtwork.artworkCatalog(defaultCropStyle:)(v144);

        v149 = *&v146[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
        *&v146[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v148;
        v150 = v148;

        sub_74EA4(v148);
      }

      else
      {
        v145 = *&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
        *&v16[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = 0;
        v16;

        sub_74EA4(0);
      }

      if ((*&stru_108.segname[(swift_isaMask & *v85) + 8])() > 2u)
      {
      }

      else
      {
        v151 = sub_ABB3C0();

        if ((v151 & 1) == 0)
        {
          v153 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue];
          *v153 = 0;
          v153[8] = 0;

          sub_404A3C(v85, v169, v172, v121, v174);
          v56 = v173;
          v57 = v177;
          v58 = v178;
          v60 = *(&v179 + 1);
          v59 = v179;
          v61 = v176;
          goto LABEL_71;
        }
      }

      v154 = (*(&stru_1F8.reserved2 + (swift_isaMask & *v85)))(v152);
      if (v155)
      {
        if (qword_DE67A8 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8, qword_B0F8E0);
        UnfairLock.locked<A>(_:)(sub_199998);
        v156 = v180;
        if (v180)
        {
          v157 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_pendingRequestsCount;
          swift_beginAccess();
          v158 = *&v156[v157];
        }

        else
        {
          v158 = 0;
        }
      }

      else
      {
        v158 = v154;
      }

      v159 = v176;
      v160 = &v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue];
      v161 = *&v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue];
      v162 = v16[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue + 8];
      *v160 = v158;
      v160[8] = 0;
      if (((v162 & 1) != 0 || v161 != v158) && v158 >= 1)
      {
        v163 = sub_4EFB88();
        sub_30D14(v158);

        [v16 setNeedsLayout];
      }

      sub_404A3C(v85, v169, v172, v121, v174);
      v56 = v173;
      v57 = v177;
      v58 = v178;
      v60 = *(&v179 + 1);
      v59 = v179;
      v61 = v159;
      goto LABEL_71;
    }
  }

  __break(1u);
  return result;
}

id sub_3F6F90(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == &dword_0 + 2)
  {
    v3 = [v2 whiteColor];
    v4 = [v3 colorWithAlphaComponent:0.15];

    return v4;
  }

  else
  {
    v6 = [v2 tintColor];

    return v6;
  }
}

void sub_3F7168(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v71 = a1;
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = IndexPath.safeSection.getter();
  v13 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  swift_beginAccess();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v14 = *(v5 + v13);
  if (v12 >= *(v14 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v66 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v10;
  v68 = v9;
  v15 = (v14 + 56 * v12);
  v16 = v15[4];
  v17 = v15[5];
  v18 = v15[7];
  v19 = v15[8];
  v20 = v15[9];
  v64 = v15[6];
  v65 = v19;
  v22 = sub_AB92A0() == a2 && v21 == a3;
  v69 = v20;
  v70 = v16;
  if (v22)
  {

    v31 = v17;

    v24 = v18;
  }

  else
  {
    v23 = sub_ABB3C0();

    v63 = v17;

    v24 = v18;
    if ((v23 & 1) == 0)
    {
      v25 = type metadata accessor for HeaderFooterView();
      v26 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v25, a2, a3, a4, 0xD00000000000001ELL, 0x8000000000B63BB0, v25);
      v27 = &v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text];
      v28 = *&v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text];
      *v27 = 0;
      v27[1] = 0xE000000000000000;
      sub_401B38(v28);

      if (v24)
      {
        v29 = v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style];
        v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style] = 0;

        sub_401A38(v29);
        v30 = *v27;
        *v27 = v64;
        v27[1] = v24;
        sub_401B38(v30);

        [*&v26[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView] setNeedsLayout];
        [v26 setNeedsLayout];
      }

      goto LABEL_19;
    }
  }

  if (!v17)
  {
    v54 = type metadata accessor for HeaderFooterView();
    v55 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v54, a2, a3, a4, 0xD00000000000001ELL, 0x8000000000B63BD0, v54);
    v56 = v55;
    v57 = v69;
    if (v69)
    {
      v58 = *(v55 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style);
      *(v55 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style) = 1;

      sub_401A38(v58);
      v59 = &v56[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text];
      v60 = *&v56[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text];
      *v59 = v65;
      *(v59 + 1) = v57;
      sub_401B38(v60);

      [*&v56[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView] setNeedsLayout];
      [v56 setNeedsLayout];
    }

    else
    {
      v61 = (v55 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text);
      v62 = *(v55 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text);
      *v61 = 0;
      v61[1] = 0xE000000000000000;
      sub_401B38(v62);
    }

    goto LABEL_19;
  }

  v65 = v24;
  v32 = v17;
  v33 = sub_3B470C(a2, a3, a4);
  *&v33[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_textDrawingCache] = *(v5 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache);

  v35 = *&stru_68.segname[(swift_isaMask & *v32) - 8];
  v71 = v32;
  v36 = v35(v34);
  v37 = &v33[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonTitle];
  *v37 = v36;
  v37[1] = v38;

  v39 = objc_opt_self();
  v40 = swift_allocObject();
  *(v40 + 16) = v33;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_40495C;
  *(v41 + 24) = v40;
  aBlock[4] = sub_36C08;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_231_0;
  v42 = _Block_copy(aBlock);
  v43 = v33;

  [v39 performWithoutAnimation:v42];
  _Block_release(v42);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = v66;
    v45 = v67;
    v47 = v68;
    (*(v67 + 16))(v66, a4, v68);
    v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v44;
    (*(v45 + 32))(v49 + v48, v46, v47);
    v50 = &v43[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonSelectionHandler];
    v51 = *&v43[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonSelectionHandler];
    v52 = *&v43[OBJC_IVAR____TtC16MusicApplication38ButtonContainingCollectionReusableView_buttonSelectionHandler + 8];
    *v50 = sub_404964;
    v50[1] = v49;

    sub_17654(v51, v52);

    v53 = v71;

LABEL_19:

    return;
  }

LABEL_22:
  __break(1u);
}

void sub_3F7800(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = IndexPath.safeSection.getter();
    sub_3FF960(v3);
  }
}

void sub_3F7B04(void *a1, uint64_t a2)
{
  v3 = v2;
  v144 = a1;
  v5 = sub_AB3430();
  v136 = *(v5 - 8);
  v137 = v5;
  __chkstk_darwin();
  v135 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v142 = v7;
  v143 = v8;
  __chkstk_darwin();
  v133 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v11 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v125 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  *&v132 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = (&v125 - v17);
  __chkstk_darwin();
  v134 = (&v125 - v18);
  __chkstk_darwin();
  v20 = &v125 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v139 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v125 - v22;
  v23 = sub_AB37F0();
  v24 = sub_AB37E0();
  v25 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  swift_beginAccess();
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v26 = *&v3[v25];
  if (v23 >= *(v26 + 16))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v27 = *(v26 + 56 * v23 + 32);
  if (v24 >= *(v27 + 16))
  {
LABEL_56:
    __break(1u);
    return;
  }

  v28 = v27 + 40 * v24;
  v30 = *(v28 + 32);
  v29 = *(v28 + 40);
  v31 = *(v28 + 48);
  v32 = *(v28 + 56);
  v33 = *(v28 + 64);
  v34 = v33 >> 6;
  if (v33 >> 6 <= 1)
  {
    if (!v34)
    {
      return;
    }

    v35 = v30;
    v36 = v31;
    v37 = v29;
    v38 = objc_opt_self();

    v39 = [v38 defaultIdentityStore];
    [v39 setActiveAccountWithDSID:0 completionHandler:0];

    isa = sub_AB3770().super.isa;
    [v144 deselectItemAtIndexPath:isa animated:1];

    v41 = v35;
    v42 = v37;
    v43 = v36;
    v44 = v32;
    goto LABEL_11;
  }

  v129 = v29;
  v130 = v31;
  v131 = v32;
  if (v34 != 2)
  {
    v128 = v33;
    v127 = v30;
    v139 = v30;
    v138 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    v48 = sub_AB3770().super.isa;
    v49 = [v144 cellForItemAtIndexPath:v48];

    if (v49)
    {
      sub_D5958(&v152);
      v132 = v152;
      v126 = v153;
      v50 = v154;
      v51 = v155;
      v52 = v156;

      v53 = v126;
      v54 = v132;
    }

    else
    {
      v50 = 0;
      v52 = 0;
      v54 = 0uLL;
      v51 = 255;
      v53 = 0uLL;
    }

    v157 = v54;
    v158 = v53;
    v159 = v50;
    v160 = v51;
    v161 = v52;
    PresentationSource.init(viewController:position:)(v3, &v157, v151);
    v62 = _s30CollectionViewSelectionHandlerVMa(0);
    v149 = v62;
    v150 = &off_CF7E60;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v148);
    v64 = v142;
    v65 = *(v143 + 16);
    v65(boxed_opaque_existential_0 + *(v62 + 20), a2, v142);
    swift_unknownObjectWeakInit();
    v66 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v66 - 8) + 56))(v141, 1, 1, v66);
    sub_15F84(v148, &v145, &unk_DE8E30, "\b]\r");
    if (*(&v146 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
      v67 = swift_dynamicCast();
      v68 = *(v62 - 8);
      (*(v68 + 56))(v15, v67 ^ 1u, 1, v62);
      if ((*(v68 + 48))(v15, 1, v62) != 1)
      {
        v65(v20, &v15[*(v62 + 20)], v64);
        sub_2D6C0(v15, _s30CollectionViewSelectionHandlerVMa);
        v69 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      sub_12E1C(&v145, &unk_DE8E30, "\b]\r");
      (*(*(v62 - 8) + 56))(v15, 1, 1, v62);
    }

    sub_12E1C(v15, &qword_E037A0, &unk_AF8B30);
    v69 = 1;
LABEL_22:
    v70 = v143;
    (*(v143 + 56))(v20, v69, 1, v64);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v72 = Strong, sub_12B2FC(), v74 = v73, v76 = v75, v72, v74))
    {
      ObjectType = swift_getObjectType();
      (*(v76 + 8))(ObjectType, v76);
      v79 = v78;
      swift_unknownObjectRelease();
      v80 = v134;
      sub_15F84(v20, v134, &unk_DE8E20, &qword_AF7990);
      if ((*(v70 + 48))(v80, 1, v64) == 1)
      {
        sub_12E1C(v80, &unk_DE8E20, &qword_AF7990);
        v145 = 0u;
        v146 = 0u;
        v147 = 0;
      }

      else
      {
        (*(v70 + 32))(v133, v80, v64);
        sub_404AC4(&qword_DFAA90, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        sub_ABAD10();
      }

      v82 = swift_getObjectType();
      v83 = v135;
      sub_3B8F68(v82);
      v81 = sub_21CCAC(1, v83, &v145, v82, v79);
      (*(v136 + 8))(v83, v137);
      sub_12E1C(&v145, &qword_DF2BD0, &unk_AFDC00);
      sub_12E1C(v20, &unk_DE8E20, &qword_AF7990);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v20, &unk_DE8E20, &qword_AF7990);
      v81 = 0;
    }

    v84 = swift_unknownObjectWeakLoadStrong();
    if (v84)
    {
      v85 = v84;
      sub_12AFE8();
      v87 = v86;
    }

    else
    {
      v87 = 0;
    }

    sub_15F28(v151, &v145);
    sub_15F84(v148, (v11 + 104), &unk_DE8E30, "\b]\r");
    v88 = v140;
    v89 = v141;
    sub_15F84(v141, &v11[*(v140 + 28)], &unk_DEA510, "\b]\r");
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 8) = 1;
    *(v11 + 9) = 0;
    *(v11 + 10) = 0;
    *(v11 + 11) = 0;
    sub_2D594(&v145, v11);
    *(v11 + 12) = 0;
    v90 = *v138;
    *(&v146 + 1) = v88;
    v91 = __swift_allocate_boxed_opaque_existential_0(&v145);
    sub_2D604(v11, v91);
    v92 = v90;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v139, 0, v81, v87, &v145);
    sub_12E1C(v89, &unk_DEA510, "\b]\r");
    sub_1611C(v151);
    sub_2D6C0(v11, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v145, &unk_DE8E40, &unk_AF8050);

    goto LABEL_50;
  }

  v45 = *(&stru_1A8.reloff + (swift_isaMask & *v30));
  v46 = v30;
  v141 = v30;
  if ((v45() & 1) == 0)
  {
    v127 = v46;
    v128 = v33;
    v134 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    v55 = sub_AB3770().super.isa;
    v56 = [v144 cellForItemAtIndexPath:v55];

    if (v56)
    {
      sub_D5958(&v152);
      v125 = v153;
      v126 = v152;
      v57 = v154;
      v58 = v155;
      v59 = v156;

      v61 = v125;
      v60 = v126;
    }

    else
    {
      v57 = 0;
      v59 = 0;
      v60 = 0uLL;
      v58 = 255;
      v61 = 0uLL;
    }

    v157 = v60;
    v158 = v61;
    v159 = v57;
    v160 = v58;
    v161 = v59;
    PresentationSource.init(viewController:position:)(v3, &v157, v151);
    v93 = _s30CollectionViewSelectionHandlerVMa(0);
    v149 = v93;
    v150 = &off_CF7E60;
    v94 = __swift_allocate_boxed_opaque_existential_0(v148);
    v95 = v143;
    v96 = *(v143 + 16);
    v96(v94 + *(v93 + 20), a2, v142);
    swift_unknownObjectWeakInit();
    v97 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v97 - 8) + 56))(v139, 1, 1, v97);
    sub_15F84(v148, &v145, &unk_DE8E30, "\b]\r");
    if (*(&v146 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
      v98 = swift_dynamicCast();
      v99 = *(v93 - 8);
      (*(v99 + 56))(v13, v98 ^ 1u, 1, v93);
      if ((*(v99 + 48))(v13, 1, v93) != 1)
      {
        v96(v138, &v13[*(v93 + 20)], v142);
        sub_2D6C0(v13, _s30CollectionViewSelectionHandlerVMa);
        v100 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      sub_12E1C(&v145, &unk_DE8E30, "\b]\r");
      (*(*(v93 - 8) + 56))(v13, 1, 1, v93);
    }

    sub_12E1C(v13, &qword_E037A0, &unk_AF8B30);
    v100 = 1;
LABEL_39:
    v101 = v138;
    v102 = v142;
    (*(v95 + 56))(v138, v100, 1, v142);
    v103 = swift_unknownObjectWeakLoadStrong();
    if (v103 && (v104 = v103, sub_12B2FC(), v106 = v105, v108 = v107, v104, v106))
    {
      v109 = swift_getObjectType();
      (*(v108 + 8))(v109, v108);
      v111 = v110;
      swift_unknownObjectRelease();
      v112 = v132;
      sub_15F84(v101, v132, &unk_DE8E20, &qword_AF7990);
      if ((*(v95 + 48))(v112, 1, v102) == 1)
      {
        sub_12E1C(v112, &unk_DE8E20, &qword_AF7990);
        v145 = 0u;
        v146 = 0u;
        v147 = 0;
      }

      else
      {
        (*(v95 + 32))(v133, v112, v102);
        sub_404AC4(&qword_DFAA90, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        sub_ABAD10();
      }

      v114 = swift_getObjectType();
      v115 = v135;
      sub_3B8F68(v114);
      v113 = sub_21CCAC(1, v115, &v145, v114, v111);
      (*(v136 + 8))(v115, v137);
      sub_12E1C(&v145, &qword_DF2BD0, &unk_AFDC00);
      sub_12E1C(v101, &unk_DE8E20, &qword_AF7990);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v101, &unk_DE8E20, &qword_AF7990);
      v113 = 0;
    }

    v116 = swift_unknownObjectWeakLoadStrong();
    if (v116)
    {
      v117 = v116;
      sub_12AFE8();
      v119 = v118;
    }

    else
    {
      v119 = 0;
    }

    sub_15F28(v151, &v145);
    sub_15F84(v148, (v11 + 104), &unk_DE8E30, "\b]\r");
    v121 = v139;
    v120 = v140;
    sub_15F84(v139, &v11[*(v140 + 28)], &unk_DEA510, "\b]\r");
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 8) = 1;
    *(v11 + 9) = 0;
    *(v11 + 10) = 0;
    *(v11 + 11) = 0;
    sub_2D594(&v145, v11);
    *(v11 + 12) = 0;
    v122 = *v134;
    *(&v146 + 1) = v120;
    v123 = __swift_allocate_boxed_opaque_existential_0(&v145);
    sub_2D604(v11, v123);
    v124 = v122;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v141, 0, v113, v119, &v145);
    sub_12E1C(v121, &unk_DEA510, "\b]\r");
    sub_1611C(v151);
    sub_2D6C0(v11, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v145, &unk_DE8E40, &unk_AF8050);

LABEL_50:
    sub_12E1C(v148, &unk_DE8E30, "\b]\r");
    v41 = v127;
    v42 = v129;
    v43 = v130;
    v44 = v131;
    v47 = v128;
    goto LABEL_51;
  }

  v41 = v46;
  v42 = v129;
  v43 = v130;
  v44 = v131;
LABEL_11:
  v47 = v33;
LABEL_51:
  sub_4048E8(v41, v42, v43, v44, v47);
}

void sub_3F8CDC(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v8 = &v46 - v7;
  if (!*(a2 + 16))
  {
    goto LABEL_8;
  }

  v9 = sub_2F5AD8();
  if (v10)
  {
    sub_808B0(*(a2 + 56) + 32 * v9, &v50);
    sub_9ACFC(&v50, &v52);
    goto LABEL_9;
  }

  v11 = *(a2 + 16);
  v50 = 0u;
  v51 = 0u;
  if (v11 && (v12 = sub_2F5AD8(), (v13 & 1) != 0))
  {
    sub_808B0(*(a2 + 56) + 32 * v12, &v52);
    if (*(&v51 + 1))
    {
      sub_12E1C(&v50, &unk_DE8E40, &unk_AF8050);
    }
  }

  else
  {
LABEL_8:
    v52 = 0u;
    v53 = 0u;
  }

LABEL_9:
  if (*(&v53 + 1))
  {
    sub_13C80(0, &qword_DE8700, UIImage_ptr);
    if (swift_dynamicCast())
    {
      v14 = v50;
      if (*(a2 + 16) && (v15 = sub_2F5AD8(), (v16 & 1) != 0) && (sub_808B0(*(a2 + 56) + 32 * v15, &v52), sub_13C80(0, &qword_DE8170, NSString_ptr), (swift_dynamicCast() & 1) != 0) && (v17 = v50, v18 = kUTTypeImage, v19 = sub_ABA790(), v18, v17, (v19 & 1) != 0))
      {
        if (*(a2 + 16) && (v20 = sub_2F5AD8(), (v21 & 1) != 0) && (sub_808B0(*(a2 + 56) + 32 * v20, &v52), sub_13C80(0, &qword_E05358, NSValue_ptr), (swift_dynamicCast() & 1) != 0))
        {
          v22 = v50;
          [v50 CGRectValue];
          v47 = v23;
          v48 = v24;
          v46 = v25;
          v49 = v26;

          *&v29 = v46;
          *&v28 = v47;
          v27 = 0;
          *(&v28 + 1) = v48;
          *(&v29 + 1) = v49;
        }

        else
        {
          v28 = 0uLL;
          v27 = 1;
          v29 = 0uLL;
        }

        v52 = v28;
        v53 = v29;
        v54 = v27;
        v36 = UIImage.centerCropIfNeeded(imageRect:)(&v52);

        v37 = *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage);
        *(v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage) = v36;
        *&v49 = v36;

        v38 = sub_3FED8C();
        v40 = v39;
        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = swift_allocObject();
        *(v42 + 16) = v41;
        *(v42 + 24) = ObjectType;
        v43 = sub_AB9990();
        (*(*(v43 - 8) + 56))(v8, 1, 1, v43);
        sub_AB9940();

        sub_137F98(v36);

        v44 = sub_AB9930();
        v45 = swift_allocObject();
        *(v45 + 16) = v44;
        *(v45 + 24) = &protocol witness table for MainActor;
        *(v45 + 32) = v38;
        *(v45 + 40) = v40;
        *(v45 + 48) = 0;
        *(v45 + 56) = 0;
        *(v45 + 64) = v36;
        *(v45 + 72) = 514;
        *(v45 + 80) = sub_4047F0;
        *(v45 + 88) = v42;
        sub_DBDC8(0, 0, v8, &unk_B0DB30, v45);

        sub_D3144(v36);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_12E1C(&v52, &unk_DE8E40, &unk_AF8050);
  }

  v30 = [a1 presentingViewController];
  if (!v30)
  {
    goto LABEL_27;
  }

  v31 = v30;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {

LABEL_27:
    [a1 dismissViewControllerAnimated:1 completion:0];
    return;
  }

  v33 = [v32 presentingViewController];
  if (v33)
  {
    v34 = v33;
    [v33 dismissViewControllerAnimated:1 completion:0];
  }

  v35 = (v3 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier);
  *v35 = 0;
  v35[1] = 0;
}

void sub_3F9230(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage);
    *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage) = 0;
    swift_errorRetain();

    sub_3FDFF4();
    if (qword_DE6B78 != -1)
    {
      swift_once();
    }

    v9 = sub_AB4BC0();
    __swift_project_value_buffer(v9, qword_E050E0);
    swift_errorRetain();
    v46 = sub_AB4BA0();
    v10 = sub_AB9F30();

    if (os_log_type_enabled(v46, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v47[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_ABB520();
      v15 = sub_425E68(v13, v14, v47);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v46, v10, "Update Photo did fail with error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    else
    {

      v36 = v46;
    }

    return;
  }

  *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userHasDeletedImage) = 0;
  v16 = *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView);
  if (v16)
  {
    v17 = v16;
    v18 = [v17 indexPathsForVisibleItems];
    v19 = sub_AB9760();

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v41[1] = v19;
      v42 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
      v22 = v19 + v21;
      swift_beginAccess();
      v24 = *(v5 + 16);
      v23 = v5 + 16;
      v45 = *(v23 + 56);
      v46 = v24;
      v25 = (v23 - 8);
      v43 = v17;
      v44 = v23;
      (v24)(v7, v22, v4);
      while (1)
      {
        isa = sub_AB3770().super.isa;
        v27 = [v17 cellForItemAtIndexPath:isa];

        if (!v27)
        {
          goto LABEL_10;
        }

        type metadata accessor for UserDetailsCell(0);
        v28 = swift_dynamicCastClass();
        if (!v28)
        {
          break;
        }

        v29 = v28;
        v30 = a2;
        v31 = *(a2 + v42);
        v32 = *(v31 + 16);

        if (v32 && (v33 = sub_2EC048(v7), (v34 & 1) != 0))
        {
          v35 = *(*(v31 + 56) + 8 * v33);

          sub_3FF234(v29, v35);
          (*v25)(v7, v4);
        }

        else
        {
          (*v25)(v7, v4);
        }

        a2 = v30;
        v17 = v43;
LABEL_11:
        v22 += v45;
        if (!--v20)
        {
          goto LABEL_23;
        }

        (v46)(v7, v22, v4);
      }

LABEL_10:
      (*v25)(v7, v4);
      goto LABEL_11;
    }

LABEL_23:
  }

  if (qword_DE6B78 != -1)
  {
    swift_once();
  }

  v37 = sub_AB4BC0();
  __swift_project_value_buffer(v37, qword_E050E0);
  v38 = sub_AB4BA0();
  v39 = sub_AB9F50();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "Update Photo did succeed", v40, 2u);
  }
}

id sub_3F981C(void *a1)
{
  v3 = [a1 presentingViewController];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = (v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier);
      v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier + 8);
      if (v7)
      {
        v8 = *v6;
        v9 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_AF4EC0;
        *(v10 + 32) = v8;
        *(v10 + 40) = v7;

        isa = sub_AB9740().super.isa;

        [v9 deselectAssetsWithIdentifiers:isa];

        *v6 = 0;
        v6[1] = 0;

        [v9 setModalInPresentation:0];
      }
    }
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

void sub_3F99CC(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_AB8EA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = *(sub_AB4A70() - 8);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v25 = v7;
    v26 = a1;
    v14 = *(v8 + 80);
    v28 = ObjectType;
    v29 = v11;
    v15 = (v14 + 32) & ~v14;
    v27 = sub_AB8E80();
    sub_AB4A60();
    v16 = v25;
    (*(v8 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + v15, v25);
    v17 = swift_allocObject();
    v18 = v26;
    *(v17 + 16) = v3;
    *(v17 + 24) = v18;
    (*(v8 + 32))(v17 + v15, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    *(v17 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
    v19 = v3;
    v20 = v18;
    v21 = v27;
    v22 = sub_AB9F70();
    (*(v10 + 8))(v13, v29);
  }

  else
  {
    v23 = &v3[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier];
    *v23 = 0;
    *(v23 + 1) = 0;

    [a1 dismissViewControllerAnimated:1 completion:0];
  }
}

double sub_3F9C6C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v32 = a5;
  v33 = a7;
  v29 = a2;
  v12 = sub_AB8EA0();
  v30 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v31 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v16 = &v28 - v15;
  v17 = sub_AB9990();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v13 + 16))(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
  sub_AB9940();
  v18 = a1;
  sub_9007C(a1, a2);
  v19 = a3;
  swift_errorRetain();
  v20 = a4;
  v21 = v32;
  v22 = sub_AB9930();
  v23 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v22;
  *(v24 + 3) = &protocol witness table for MainActor;
  v26 = v29;
  v25 = v30;
  *(v24 + 4) = v18;
  *(v24 + 5) = v26;
  *(v24 + 6) = v19;
  *(v24 + 7) = v20;
  *(v24 + 8) = v21;
  (*(v13 + 32))(&v24[v23], v31, v25);
  *&v24[(v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8] = v33;
  sub_DBDC8(0, 0, v16, &unk_B0DB20, v24);

  return result;
}

uint64_t sub_3F9ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  sub_AB9940();
  v8[9] = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_3F9F80, v10, v9);
}

uint64_t sub_3F9F80()
{
  v36 = v0;
  v1 = v0[4];
  if (v1 >> 60 != 15)
  {
    v2 = v0[3];
    v3 = objc_allocWithZone(UIImage);
    sub_90090(v2, v1);
    sub_90090(v2, v1);
    isa = sub_AB3250().super.isa;
    v5 = [v3 initWithData:isa];

    sub_466A4(v2, v1);
    if (v5)
    {
      v6 = v0[6];
      v7 = sub_AB8E90();
      v8 = (v6 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier);
      *v8 = v7;
      v8[1] = v9;

      v10 = UIImagePNGRepresentation(v5);
      if (v10)
      {
        v11 = v10;
        v12 = sub_AB3260();
        v14 = v13;

        type metadata accessor for ImageEditingViewController();
        v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v16 = sub_AB3250().super.isa;
        v17 = [v15 _initWithSourceImageData:v16 cropRect:UIImage.centeredSquareCropRect.getter()];

        if (v17)
        {
          v18 = v0[7];
          v20 = v0[3];
          v19 = v0[4];
          [v17 setDelegate:v0[6]];
          [v17 setModalInPresentation:1];
          UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

          UIImagePickerController.setProperties(_:)(v21);

          [v18 presentViewController:v17 animated:1 completion:0];
          [v17 becomeFirstResponder];
          sub_466A4(v20, v19);
        }

        else
        {
          sub_466A4(v0[3], v0[4]);
        }

        sub_466B8(v12, v14);
      }

      else
      {
        sub_466A4(v0[3], v0[4]);
      }

      goto LABEL_16;
    }

    sub_466A4(v0[3], v0[4]);
  }

  if (qword_DE6B78 != -1)
  {
    swift_once();
  }

  v22 = sub_AB4BC0();
  __swift_project_value_buffer(v22, qword_E050E0);
  swift_errorRetain();
  v23 = sub_AB4BA0();
  v24 = sub_AB9F30();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[5];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136315138;
    v0[2] = v25;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0, &qword_B0EB40);
    v28 = sub_AB9350();
    v30 = sub_425E68(v28, v29, &v35);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "Failed to load UIImage in photo picker, error: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  v31 = v0[7];
  v32 = (v0[6] + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier);
  *v32 = 0;
  v32[1] = 0;

  [v31 dismissViewControllerAnimated:1 completion:0];
LABEL_16:

  v33 = v0[1];

  return v33();
}

uint64_t sub_3FA378(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  LOBYTE(a5) = a5(v12);

  (*(v10 + 8))(v12, v9);
  return a5 & 1;
}

double sub_3FA494(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v65) = a3;
  v67 = a2;
  sub_AB35C0();
  __chkstk_darwin();
  v68 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v66 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v57 - v11;
  *&result = __chkstk_darwin().n128_u64[0];
  v15 = &v57 - v14;
  v16 = *&v3[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
  if (v16)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      swift_unknownObjectRetain();
      v19 = v16;
      v20 = [v19 indexPathForCell:v18];
      if (v20)
      {
        v63 = v19;
        v64 = a1;
        v21 = v20;
        sub_AB3790();

        v22 = v8;
        v23 = *(v8 + 32);
        v24 = v7;
        v61 = (v8 + 32);
        v60 = v23;
        (v23)(v15, v12, v7);
        v25 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
        swift_beginAccess();
        v62 = v3;
        v26 = *&v3[v25];
        v27 = *(v26 + 16);

        if (v27 && (v28 = sub_2EC048(v15), (v29 & 1) != 0))
        {
          v30 = *(*(v26 + 56) + 8 * v28);

          if ((*&stru_1F8.segname[(swift_isaMask & *v30) + 8])(v31))
          {
            sub_AB91E0();
            sub_AB3550();
            v59 = sub_AB9320();
            v58 = v32;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10, &unk_B071A0);
            v33 = swift_allocObject();
            v65 = v15;
            v34 = v33;
            *(v33 + 16) = xmmword_AF4EC0;
            v35 = (*&stru_B8.segname[(swift_isaMask & *v30) - 8])();
            v37 = v36;
            v34[7] = &type metadata for String;
            v34[8] = sub_2792B0();
            if (v37)
            {
              v38 = v35;
            }

            else
            {
              v38 = 0;
            }

            v39 = 0xE000000000000000;
            if (v37)
            {
              v39 = v37;
            }

            v34[4] = v38;
            v34[5] = v39;
            v59 = sub_AB92E0();

            sub_AB91E0();
            sub_AB3550();
            sub_AB9320();
            v40 = sub_AB9260();

            v41 = sub_AB9260();

            v58 = [objc_opt_self() alertControllerWithTitle:v40 message:v41 preferredStyle:1];

            sub_AB91E0();
            sub_AB3550();
            v57 = sub_AB9320();
            v42 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (*(v22 + 16))(v10, v65, v24);
            v43 = *(v22 + 80);
            v59 = v22;
            v44 = (v43 + 24) & ~v43;
            v45 = swift_allocObject();
            *(v45 + 16) = v42;
            (v60)(v45 + v44, v10, v24);
            *(v45 + ((v9 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
            v61 = v30;

            v46 = sub_AB9260();

            v73 = sub_404204;
            v74 = v45;
            aBlock = _NSConcreteStackBlock;
            v70 = 1107296256;
            v60 = &v71;
            v71 = sub_1546C;
            v72 = &block_descriptor_179;
            v47 = _Block_copy(&aBlock);

            v57 = objc_opt_self();
            v48 = [v57 actionWithTitle:v46 style:2 handler:v47];
            _Block_release(v47);

            v49 = v58;
            [v58 addAction:v48];
            [v49 setPreferredAction:v48];
            sub_AB91E0();
            sub_AB3550();
            sub_AB9320();
            v50 = swift_allocObject();
            v51 = v67;
            *(v50 + 16) = v64;
            *(v50 + 24) = v51;
            swift_unknownObjectRetain();
            v52 = sub_AB9260();

            v73 = sub_4042DC;
            v74 = v50;
            aBlock = _NSConcreteStackBlock;
            v70 = 1107296256;
            v71 = sub_1546C;
            v72 = &block_descriptor_185;
            v53 = _Block_copy(&aBlock);

            v54 = [v57 actionWithTitle:v52 style:1 handler:v53];
            _Block_release(v53);

            [v49 addAction:v54];
            [v62 presentViewController:v49 animated:1 completion:0];

            (*(v59 + 8))(v65, v24);
            swift_unknownObjectRelease();
          }

          else
          {
            v55 = (*(&stru_248.size + (swift_isaMask & *v30)))();
            if ((~v55 & 0xF000000000000007) != 0)
            {
              v56 = v55;
              if ((v55 & 0x8000000000000000) == 0)
              {
                JSSettingsItem.AccessoryItem.updateToggle(isToggled:)(v65 & 1);
              }

              sub_404114(v56);
              (*(v8 + 8))(v15, v7);

              swift_unknownObjectRelease();
            }

            else
            {
              (*(v8 + 8))(v15, v7);

              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          (*(v8 + 8))(v15, v7);

          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_3FAE68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
    swift_beginAccess();

    sub_AB37F0();
    Array.subscript.getter(&type metadata for JSSettingsViewController.Section, &aBlock);
    v12 = aBlock;
    if (!aBlock)
    {

      return;
    }

    v31 = a4;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v37 = v45;
    v38 = v46;

    v39 = v12;
    v36 = v12;

    v13 = sub_AB37B0();
    sub_2E60BC(v13, v47);
    sub_404330(v47);
    v14 = sub_AB37F0();
    v15 = v39;
    swift_beginAccess();
    v16 = *&v10[v11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v10[v11] = v16;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v16 = sub_28457C(v16);
      *&v10[v11] = v16;
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (v14 < *(v16 + 2))
        {
          *&v16[56 * v14 + 32] = v15;
          *&v10[v11] = v16;
          swift_endAccess();

          v18 = *&v10[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
          if (v18)
          {
            v19 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (*(v7 + 16))(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
            v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
            v21 = swift_allocObject();
            *(v21 + 16) = v19;
            (*(v7 + 32))(v21 + v20, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
            v22 = swift_allocObject();
            *(v22 + 16) = sub_404364;
            *(v22 + 24) = v21;
            v44 = sub_2D4D0;
            v45 = v22;
            aBlock = _NSConcreteStackBlock;
            v41 = 1107296256;
            v42 = sub_1822E0;
            v43 = &block_descriptor_195_0;
            v23 = _Block_copy(&aBlock);
            v24 = v18;
            v25 = v10;

            v26 = swift_allocObject();
            swift_unknownObjectWeakInit();

            v27 = swift_allocObject();
            v28 = v31;
            *(v27 + 16) = v26;
            *(v27 + 24) = v28;
            v44 = sub_4043A8;
            v45 = v27;
            aBlock = _NSConcreteStackBlock;
            v41 = 1107296256;
            v42 = sub_1811AC;
            v43 = &block_descriptor_202_1;
            v29 = _Block_copy(&aBlock);
            v30 = v28;

            [v24 performBatchUpdates:v23 completion:v29];

            _Block_release(v29);
            _Block_release(v23);

            sub_4043B0(v36, v32, v33, v34, v35, v37);
          }

          else
          {

            sub_4043B0(v36, v32, v33, v34, v35, v37);
          }

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_3FB368(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isa = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView);
    if (v5)
    {
      v6 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530, &qword_AFF5D0);
      v7 = sub_AB3820();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_AF4EC0;
      (*(v8 + 16))(v10 + v9, a2, v7);
      isa = sub_AB9740().super.isa;

      [v6 deleteItemsAtIndexPaths:isa];
    }
  }
}

void sub_3FB4D0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_settingsViewModel);

    JSSettingsViewModel.didRemoveItem(item:)(a3);
  }
}

void sub_3FB618()
{
  JSSettingsViewModel.didSelectDoneButton()();
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
  if (v1)
  {
    [v1 setEditing:0];
  }

  v2 = [v0 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_3FB710()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E050E0);
  __swift_project_value_buffer(v0, qword_E050E0);
  sub_13C80(0, &qword_DED8C0, OS_os_log_ptr);
  OS_os_log.init(musicCategory:)(0x6E6974746553534ALL, 0xEA00000000007367);
  return sub_AB4BD0();
}

void sub_3FB798()
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v9 = sub_ABA150();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_404DEC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_269;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_404AC4(&qword_DF06C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_D1010();
  sub_ABABB0();
  sub_ABA160();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  _Block_release(v11);
}

double sub_3FBA60(uint64_t a1)
{
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  *&result = __chkstk_darwin().n128_u64[0];
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v7 = *(a1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 indexPathsForVisibleItems];
    v10 = sub_AB9760();

    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v3 + 80);
      v29[1] = v10;
      v13 = v10 + ((v12 + 32) & ~v12);
      v31 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
      swift_beginAccess();
      v16 = *(v3 + 16);
      v15 = v3 + 16;
      v14 = v16;
      v34 = *(v15 + 56);
      v17 = (v15 - 8);
      v32 = v8;
      v30 = v16;
      v16(v6, v13, v2);
      while (1)
      {
        isa = sub_AB3770().super.isa;
        v19 = [v8 cellForItemAtIndexPath:isa];

        if (!v19)
        {
          goto LABEL_5;
        }

        type metadata accessor for UserDetailsCell(0);
        v20 = swift_dynamicCastClass();
        if (!v20)
        {
          break;
        }

        v21 = v2;
        v22 = v15;
        v23 = v20;
        v24 = *(v33 + v31);
        v25 = *(v24 + 16);

        if (v25 && (v26 = sub_2EC048(v6), (v27 & 1) != 0))
        {
          v28 = *(*(v24 + 56) + 8 * v26);

          sub_3FF234(v23, v28);
          (*v17)(v6, v21);

          v2 = v21;
        }

        else
        {
          v2 = v21;
          (*v17)(v6, v21);
        }

        v15 = v22;
        v8 = v32;
        v14 = v30;
LABEL_6:
        v13 += v34;
        if (!--v11)
        {

          return result;
        }

        v14(v6, v13, v2);
      }

LABEL_5:
      (*v17)(v6, v2);
      goto LABEL_6;
    }
  }

  return result;
}

void sub_3FBD50()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(AAUISignInController) init];
  [v2 setServiceType:AIDAServiceTypeStore];
  [v2 setDelegate:v0];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = ObjectType;
  v7[4] = sub_404108;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_3FC190;
  v7[3] = &block_descriptor_172;
  v5 = _Block_copy(v7);
  v6 = v2;

  [v6 prepareInViewController:v0 completion:v5];
  _Block_release(v5);
}

void sub_3FBEAC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong presentViewController:a4 animated:1 completion:0];
    }
  }

  else
  {
    if (a2 && (v21[0] = a2, swift_errorRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0), sub_13C80(0, &qword_E05350, NSError_ptr), (swift_dynamicCast() & 1) != 0))
    {
      if (qword_DE6B78 != -1)
      {
        swift_once();
      }

      v7 = sub_AB4BC0();
      __swift_project_value_buffer(v7, qword_E050E0);
      v8 = v21[3];
      v9 = sub_AB4BA0();
      v10 = sub_AB9F30();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v21[0] = v12;
        *v11 = 136446210;
        v13 = [v8 localizedDescription];
        v14 = sub_AB92A0();
        v16 = v15;

        v17 = sub_425E68(v14, v16, v21);

        *(v11 + 4) = v17;
        _os_log_impl(&dword_0, v9, v10, "AAUISignInController failed with error: %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
      }
    }

    else
    {
      if (qword_DE6B78 != -1)
      {
        swift_once();
      }

      v18 = sub_AB4BC0();
      __swift_project_value_buffer(v18, qword_E050E0);
      v8 = sub_AB4BA0();
      v19 = sub_AB9F30();
      if (os_log_type_enabled(v8, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v8, v19, "AAUISignInController cancelled by user", v20, 2u);
      }
    }
  }
}

void sub_3FC190(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Class sub_3FC208(void *a1)
{
  v2 = v1;
  v36 = a1;
  ObjectType = swift_getObjectType();
  sub_AB35C0();
  __chkstk_darwin();
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  static ApplicationCapabilities.shared.getter(v40);
  v6 = v40[4];

  sub_70C54(v40);
  v7 = sub_472A84(9, v6);

  static ApplicationCapabilities.shared.getter(v41);
  v8 = v41[4];

  sub_70C54(v41);
  v9 = sub_472A84(3, v8);

  v10 = v7 | v9;
  v39 = _swiftEmptyArrayStorage;
  sub_13C80(0, &unk_E05310, UIAction_ptr);
  sub_AB91E0();
  sub_AB3550();
  v35[1] = v5;
  sub_AB9320();
  v11 = sub_AB9260();
  v37 = objc_opt_self();
  v12 = [v37 systemImageNamed:v11];

  v13 = swift_allocObject();
  v38 = v2;
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  v35[0] = ObjectType;
  v15 = sub_ABA7D0();
  sub_AB9730();
  if (*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v39 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  if (v10)
  {
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v16 = sub_AB9260();
    v17 = [v37 systemImageNamed:v16];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_ABA7D0();
    sub_AB9730();
    if (*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v39 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();

    v19 = v39;
    if ([objc_opt_self() isSourceTypeAvailable:1])
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v20 = sub_AB9260();
      v21 = [v37 systemImageNamed:v20];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = sub_ABA7D0();
      sub_AB9730();
      if (*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v39 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v19 = v39;
    }

    v23 = sub_3FEFE8(v36);
    if (v23)
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v24 = sub_AB9260();
      v25 = [v37 systemImageNamed:v24];

      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v28 = v35[0];
      *(v27 + 16) = v26;
      *(v27 + 24) = v28;
      v29 = sub_ABA7D0();
      sub_AB9730();
      if (*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v39 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v19 = v39;
    }
  }

  else
  {
    v19 = v39;
    v23 = sub_3FEFE8(v36);
  }

  if (v19 >> 62)
  {
    sub_13C80(0, &qword_DEAB30, UIMenuElement_ptr);

    v30 = sub_ABAFF0();
  }

  else
  {

    sub_ABB3E0();
    sub_13C80(0, &qword_DEAB30, UIMenuElement_ptr);
    v30 = v19;
  }

  sub_13C80(0, &qword_DF1D50, UIMenu_ptr);
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v42.value.super.isa = 0;
  v42.is_nil = 0;
  v31.value = 0;
  isa = sub_ABA5B0(v43, v44, v42, v31, 0xFFFFFFFFFFFFFFFFLL, v30, v34).super.super.isa;

  return isa;
}

void sub_3FCAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_3FED8C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = swift_allocObject();
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a3;
  v12 = objc_allocWithZone(type metadata accessor for JSSettingsViewController.EditNameTextFieldAlert());
  v13 = sub_3FE20C(v6, v8, sub_403F68, v11);
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v14 presentViewController:v13 animated:1 completion:0];

    v13 = v15;
  }
}

void sub_3FCC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v8 = &v16 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a4;
    v13 = sub_AB9990();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_AB9940();
    swift_bridgeObjectRetain_n();

    sub_137F98(&dword_0 + 1);

    v14 = sub_AB9930();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = &protocol witness table for MainActor;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 1;
    *(v15 + 72) = 514;
    *(v15 + 80) = sub_403FC4;
    *(v15 + 88) = v12;
    sub_DBDC8(0, 0, v8, &unk_B0DB08, v15);

    sub_D3144(&dword_0 + 1);
  }
}

void sub_3FCE30(uint64_t a1, uint64_t a2)
{
  if (a1 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v3 = Strong;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    swift_errorRetain();
    v5 = v3;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4040C8, v4);

    if (qword_DE6B78 != -1)
    {
      swift_once();
    }

    v6 = sub_AB4BC0();
    __swift_project_value_buffer(v6, qword_E050E0);
    swift_errorRetain();
    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_ABB520();
      v13 = sub_425E68(v11, v12, aBlock);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "Edit Name did fail with error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }
  }

  else
  {
    if (qword_DE67A8 != -1)
    {
      swift_once();
    }

    sub_BE928(&off_CF1728);
    v14 = [objc_opt_self() shared];
    aBlock[4] = UIScreen.Dimensions.size.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3FD1F0;
    aBlock[3] = &block_descriptor_162;
    v15 = _Block_copy(aBlock);
    [v14 refreshUserStatesWithOptions:1 completion:v15];
    _Block_release(v15);

    if (qword_DE6B78 != -1)
    {
      swift_once();
    }

    v16 = sub_AB4BC0();
    __swift_project_value_buffer(v16, qword_E050E0);
    v17 = sub_AB4BA0();
    v18 = sub_AB9F10();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Edit Name succeeded", v19, 2u);
    }
  }
}

void sub_3FD1F0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_13C80(0, &unk_E05340, ICMediaUserState_ptr);
  v6 = sub_AB9760();

  v7 = a2;
  v8 = a3;
  v5(v6, a3);
}

void sub_3FD2AC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05320, &unk_B0DAE8);
  __chkstk_darwin();
  v3 = &v19 - v2;
  v4 = sub_AB8EF0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_greenTeaLogger);

    [v12 logPhotoAccess];
  }

  v13 = [objc_opt_self() sharedPhotoLibrary];
  sub_AB8EB0();
  sub_AB8E60();
  v14 = sub_AB8E70();
  (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
  sub_AB8EE0();
  sub_13C80(0, &qword_E0C390, PHPickerViewController_ptr);
  (*(v5 + 16))(v7, v9, v4);
  v15 = sub_ABA380();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_404AC4(&unk_E05330, v16, type metadata accessor for JSSettingsViewController, &unk_B0DA80);
  }

  sub_ABA390();
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    [v17 presentViewController:v15 animated:1 completion:0];
    (*(v5 + 8))(v9, v4);

    v15 = v18;
  }

  else
  {
    (*(v5 + 8))(v9, v4);
  }
}

void sub_3FD5D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_greenTeaLogger);

    [v4 logCameraAccess];
  }

  v5 = [objc_allocWithZone(UIImagePickerController) init];
  [v5 setSourceType:1];
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  [v5 setDelegate:v6];

  [v5 setAllowsEditing:1];
  UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor();

  UIImagePickerController.setProperties(_:)(v7);

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 presentViewController:v5 animated:1 completion:0];

    v5 = v9;
  }
}

double sub_3FD72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v5 = &v14[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v8 = swift_allocObject();
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = a3;
    v11 = sub_AB9990();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    sub_AB9940();

    v12 = sub_AB9930();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0;
    *(v13 + 72) = 514;
    *(v13 + 80) = sub_403E40;
    *(v13 + 88) = v10;
    sub_DBDC8(0, 0, v5, &unk_B0DB00, v13);
  }

  return result;
}

double sub_3FD924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = v10;
    v11[4] = a3;
    swift_errorRetain();
    v12 = v10;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a5, v11);
  }

  return result;
}

void sub_3FD9F4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    sub_3FDFF4();
    if (qword_DE6B78 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, qword_E050E0);
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v3 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = sub_ABB520();
      v8 = sub_425E68(v6, v7, &v14);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_0, oslog, v3, "Remove Photo did fail with error: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);

      return;
    }
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userHasDeletedImage) = 1;
    v9 = *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage);
    *(a2 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage) = 0;

    if (qword_DE67A8 != -1)
    {
      swift_once();
    }

    sub_BE928(&off_CF1750);
    if (qword_DE6B78 != -1)
    {
      swift_once();
    }

    v10 = sub_AB4BC0();
    __swift_project_value_buffer(v10, qword_E050E0);
    oslog = sub_AB4BA0();
    v11 = sub_AB9F10();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, oslog, v11, "Remove Photo succeeded", v12, 2u);
    }
  }
}

uint64_t sub_3FDCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_AB9940();
  v6[5] = sub_AB9930();
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_3FDD94;

  return sub_23A694(a4, 0);
}

uint64_t sub_3FDD94()
{
  *(*v1 + 56) = v0;

  v3 = sub_AB98B0();
  if (v0)
  {
    v4 = sub_3FDF60;
  }

  else
  {
    v4 = sub_3FDEF0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_3FDEF0()
{
  (*(v0 + 16))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3FDF60()
{
  v1 = v0[7];
  v2 = v0[2];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

void sub_3FDFF4()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v1 = sub_AB9260();

  v2 = [objc_opt_self() actionWithTitle:v1 style:1 handler:0];

  v3 = sub_AB9260();

  v4 = [objc_opt_self() alertControllerWithTitle:v3 message:0 preferredStyle:1];

  [v4 addAction:v2];
  [v0 presentViewController:v4 animated:1 completion:0];
}

char *sub_3FE20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  *&v9 = __chkstk_darwin().n128_u64[0];
  *&v4[OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_doneAction] = 0;
  v10 = &v4[OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_currentName];
  *v10 = 0;
  *(v10 + 1) = 0;
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v35, "initWithNibName:bundle:", 0, 0, v9);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v12 = sub_AB9260();

  [v11 setTitle:v12];

  v13 = v11;
  [v13 setPreferredStyle:1];
  v14 = &v13[OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_currentName];
  *v14 = a1;
  *(v14 + 1) = a2;

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = sub_403F70;
  v34 = v15;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_1546C;
  v32 = &block_descriptor_142_0;
  v16 = _Block_copy(&aBlock);

  [v13 addTextFieldWithConfigurationHandler:v16];
  _Block_release(v16);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v17 = sub_AB9260();

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v17 style:1 handler:0];

  [v13 addAction:v19];
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a3;
  v21[4] = a4;

  v22 = sub_AB9260();

  v33 = sub_403FB8;
  v34 = v21;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_1546C;
  v32 = &block_descriptor_149_0;
  v23 = _Block_copy(&aBlock);

  v24 = [v18 actionWithTitle:v22 style:0 handler:v23];
  _Block_release(v23);

  [v24 setEnabled:0];
  v25 = *&v13[OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_doneAction];
  *&v13[OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_doneAction] = v24;
  v26 = v24;

  [v13 addAction:v26];
  [v13 setPreferredAction:v26];

  return v13;
}

void sub_3FE708(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_currentName + 8))
    {

      v5 = sub_AB9260();
    }

    else
    {
      v5 = 0;
    }

    [a1 setText:v5];

    [a1 setAutocapitalizationType:1];
    [a1 addTarget:v4 action:"textFieldDidChange:" forControlEvents:0x20000];
  }
}

void sub_3FE7F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v5 textFields];
    if (!v6)
    {

      return;
    }

    v7 = v6;
    sub_13C80(0, &qword_E00100, UITextField_ptr);
    v8 = sub_AB9760();

    if (v8 >> 62)
    {
      if (sub_ABB060())
      {
        goto LABEL_5;
      }
    }

    else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_5:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = sub_3616F0(0, v8);
      }

      else
      {
        if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      v11 = [v10 text];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = sub_AB92A0();
      v15 = v14;

      a3(v13, v15);
      goto LABEL_14;
    }

LABEL_14:
  }
}

void sub_3FE9FC(void *a1)
{
  v2 = [a1 text];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = sub_AB92A0();
  v6 = v5;

  v7 = *(v1 + OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_doneAction);
  if (v7)
  {
    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = *(v1 + OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_currentName + 8);
    if (!v9)
    {
      v11 = 1;
      goto LABEL_18;
    }

    if (v4 == *(v1 + OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_currentName) && v9 == v6)
    {
LABEL_16:
      v11 = 0;
    }

    else
    {
      v11 = sub_ABB3C0() ^ 1;
    }

LABEL_18:
    v12 = v7;

    [v12 setEnabled:v11 & 1];

    return;
  }
}

void sub_3FEC1C(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView];
  if (v2)
  {
    v10 = v2;
    if ([v1 isViewLoaded])
    {
      v4 = [v10 collectionViewLayout];
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        swift_getObjectType();
        [swift_getObjCClassFromMetadata() invalidationContextClass];
        swift_getObjCClassMetadata();
        sub_13C80(0, &unk_DFED50, UICollectionViewLayoutInvalidationContext_ptr);
        swift_dynamicCastMetatypeUnconditional();
        v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v6 invalidateLayoutWithContext:v7];
        if (a1)
        {
          [v10 reloadData];
        }

        v8 = v4;
        v4 = v7;
      }

      else
      {
        v8 = v10;
      }

      v9 = v4;
    }

    else
    {
      v9 = v10;
    }
  }
}

uint64_t sub_3FED8C()
{
  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300, &unk_AFA030);
  UnfairLock.locked<A>(_:)(sub_31A7A4);
  v22 = v16[6];
  v23 = v16[7];
  v24 = v16[8];
  v25 = v17;
  v18[2] = v16[2];
  v19 = v16[3];
  v20 = v16[4];
  v21 = v16[5];
  v18[0] = v16[0];
  v18[1] = v16[1];
  if (sub_90064(v18) == 1 || (sub_12E1C(v16, &unk_E05300, &unk_AFA030), BYTE9(v19) != 1))
  {
    UnfairLock.locked<A>(_:)(sub_31A7A4);
    v12 = v7[6];
    v13 = v7[7];
    v14 = v7[8];
    v15 = v8;
    v9[2] = v7[2];
    v9[3] = v7[3];
    v10 = v7[4];
    v11 = v7[5];
    v9[0] = v7[0];
    v9[1] = v7[1];
    if (sub_90064(v9) != 1)
    {
      v5 = v10;

      sub_12E1C(v7, &unk_E05300, &unk_AFA030);
      return v5;
    }

    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_profilePerson);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 name];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = sub_AB92A0();

  return v5;
}

id sub_3FEFE8(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userHasDeletedImage))
  {
    return 0;
  }

  v10 = &dword_0 + 1;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage);
  if (!v4 || (result = [objc_opt_self() staticArtworkCatalogWithImage:v4]) == 0)
  {
    v5 = sub_3FF0E4(&v10, a1);
    if (v5)
    {
      v6 = v5;
      sub_D3144(v10);
      return v6;
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_profilePerson);
      if (!v7)
      {
        sub_D3144(v10);
        return 0;
      }

      v8 = v7;
      v9 = [v8 artworkCatalog];
      sub_D3144(v10);

      return v9;
    }
  }

  return result;
}

id sub_3FF0E4(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*a1 == &dword_0 + 1)
  {
    v5 = *(&stru_108.reserved2 + (swift_isaMask & *a2));
    v6 = v5();
    if (v6)
    {
      v7 = v6;
      v8 = v5();
      if (!v8 || (v9 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle, v10 = v8, swift_beginAccess(), v11 = *&v10[v9], v12 = v11, v10, !v11))
      {
        v12 = ICStoreArtworkInfoCropStyleBoundedBox;
      }

      v3 = JSArtwork.artworkCatalog(defaultCropStyle:)(v12);
    }

    else
    {
      v3 = 0;
    }

    swift_beginAccess();
    v13 = *a1;
    *a1 = v3;
    v14 = v3;
    sub_D3144(v13);
  }

  sub_137F98(v2);
  return v3;
}

void sub_3FF234(char *a1, void *a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  v5 = __chkstk_darwin();
  v6 = (*&stru_B8.segname[(swift_isaMask & *a2) - 8])(v5);
  if (!v7)
  {
    v6 = sub_3FED8C();
    if (!v7)
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }
  }

  v8 = &a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_title];
  *v8 = v6;
  *(v8 + 1) = v7;

  sub_31ECC0();
  v75 = v2;
  v69 = a2;
  if ((*(&stru_1A8.reloff + (swift_isaMask & *a2)))())
  {
    v9 = sub_3FC208(a2);
    v10 = v9;
    v11 = OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu;
    v12 = *&a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu];
    *&a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryButtonMenu] = v9;
    if (v12)
    {
      sub_13C80(0, &qword_DF1D50, UIMenu_ptr);
      v13 = v10;
      v14 = v12;
      v15 = sub_ABA790();

      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v20 = v9;
      v14 = 0;
    }

    v21 = sub_31FA74();
    v13 = *&a1[v11];
    [v21 setMenu:v13];

    v14 = v21;
LABEL_12:

    sub_AB91E0();
    sub_AB3550();
    v22 = sub_AB9320();
    v23 = &a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText];
    v24 = *&a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText];
    v25 = *&a1[OBJC_IVAR____TtC16MusicApplication15UserDetailsCell_accessoryText + 8];
    *v23 = v22;
    *(v23 + 1) = v26;
    sub_31F484(v24, v25);

    goto LABEL_13;
  }

  v16 = [a1 tableViewCell];
  if (!v16)
  {
    __break(1u);
    goto LABEL_26;
  }

  v17 = v16;
  [v16 setAccessoryType:1];

  sub_AB91E0();
  sub_AB3550();
  v18 = sub_AB9320();
  sub_31F284(v18, v19);
LABEL_13:
  v27 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  v73 = v27[5];
  v74 = v27[4];
  v32 = &a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v72 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v33 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v71 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v70 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  *v32 = *v27;
  *(v32 + 1) = v29;
  *(v32 + 2) = v30;
  *(v32 + 3) = v31;
  *(v32 + 4) = v74;
  *(v32 + 5) = v73;
  v34 = v28;
  v76 = a1;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  sub_2F1C8(v72, v71, v33, v70);
  v42 = *&v76[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v43 = *(v42 + 168);
  v89[0] = *(v42 + 152);
  v89[1] = v43;
  v89[2] = *(v42 + 184);
  *(v42 + 152) = v28;
  *(v42 + 160) = v29;
  *(v42 + 168) = v30;
  *(v42 + 176) = v31;
  *(v42 + 184) = v74;
  *(v42 + 192) = v73;
  v44 = v38;
  v45 = v39;
  v46 = v40;
  v47 = v41;
  v48 = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  sub_75948(v89);
  sub_12E1C(v89, &unk_DF8690, &unk_AF9900);

  static ApplicationCapabilities.shared.getter(v87);
  v52 = v87[4];

  sub_70C54(v87);
  LOBYTE(v48) = sub_472A84(9, v52);

  static ApplicationCapabilities.shared.getter(v88);
  v53 = v88[4];

  sub_70C54(v88);
  v54 = sub_472A84(3, v53);

  if (v48 & 1) != 0 || (v54)
  {
    goto LABEL_19;
  }

  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300, &unk_AFA030);
  UnfairLock.locked<A>(_:)(sub_90048);
  v83 = v77[6];
  v84 = v77[7];
  v85 = v77[8];
  v86 = v78;
  v79[2] = v77[2];
  v80 = v77[3];
  v81 = v77[4];
  v82 = v77[5];
  v79[0] = v77[0];
  v79[1] = v77[1];
  if (sub_90064(v79) != 1)
  {
    sub_12E1C(v77, &unk_E05300, &unk_AFA030);
    if (BYTE9(v80))
    {
LABEL_19:
      v55 = sub_3FEFE8(v69);
      v56 = *&v76[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
      *&v76[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v55;
      v57 = v55;

      sub_74EA4(v55);
    }
  }

  v58 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog;
  if (!*&v76[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog])
  {
    v59 = sub_3FED8C();
    if (v60)
    {
      v61 = v59;
      v62 = v60;
      v63 = [v75 view];
      if (v63)
      {
        v64 = v63;
        sub_13C80(0, &qword_E04530, MPArtworkCatalog_ptr);
        v65 = [v64 effectiveUserInterfaceLayoutDirection];

        v66 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v61, v62, v65, 0);

        v67 = *&v76[v58];
        *&v76[v58] = v66;
        v68 = v66;

        sub_74EA4(v66);
        return;
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_3FF960(unint64_t a1)
{
  v3 = sub_AB3430();
  v56 = *(v3 - 8);
  __chkstk_darwin();
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v63 = *(v5 - 8);
  __chkstk_darwin();
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v10 = &v53 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v53 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v64 = &v53 - v15;
  v16 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v17 = *&v1[v16];
  if (*(v17 + 16) <= a1)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v54 = v3;
  v18 = v17 + 56 * a1;
  v21 = *(v18 + 32);
  v20 = *(v18 + 40);
  v19 = v18 + 32;
  if (!v20)
  {
    return;
  }

  v22 = *(v19 + 24);
  v59 = *(v19 + 40);

  v23 = v20;

  v58 = v23;
  v60 = v22;

  v57 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  memset(v71, 0, sizeof(v71));
  v72 = 0;
  v73 = xmmword_AF7710;
  PresentationSource.init(viewController:position:)(v1, v71, v70);
  v24 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v68, 0, sizeof(v68));
  v69 = 0;
  (*(*(v24 - 8) + 56))(v64, 1, 1, v24);
  sub_15F84(v68, &v65, &unk_DE8E30, "\b]\r");
  if (*(&v66 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v25 = _s30CollectionViewSelectionHandlerVMa(0);
    v26 = swift_dynamicCast();
    v27 = *(v25 - 8);
    (*(v27 + 56))(v10, v26 ^ 1u, 1, v25);
    if ((*(v27 + 48))(v10, 1, v25) != 1)
    {
      (*(v63 + 16))(v14, &v10[*(v25 + 20)], v5);
      sub_2D6C0(v10, _s30CollectionViewSelectionHandlerVMa);
      v28 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_12E1C(&v65, &unk_DE8E30, "\b]\r");
    v29 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  }

  sub_12E1C(v10, &qword_E037A0, &unk_AF8B30);
  v28 = 1;
LABEL_9:
  v30 = v63;
  (*(v63 + 56))(v14, v28, 1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v32 = Strong, sub_12B2FC(), v34 = v33, v36 = v35, v32, v34))
  {
    ObjectType = swift_getObjectType();
    (*(v36 + 8))(ObjectType, v36);
    v39 = v38;
    swift_unknownObjectRelease();
    sub_15F84(v14, v12, &unk_DE8E20, &qword_AF7990);
    if ((*(v30 + 48))(v12, 1, v5) == 1)
    {
      sub_12E1C(v12, &unk_DE8E20, &qword_AF7990);
      v65 = 0u;
      v66 = 0u;
      v67 = 0;
    }

    else
    {
      (*(v30 + 32))(v53, v12, v5);
      sub_404AC4(&qword_DFAA90, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      sub_ABAD10();
    }

    v41 = swift_getObjectType();
    v42 = v55;
    sub_3B8F68(v41);
    v40 = sub_21CCAC(1, v42, &v65, v41, v39);
    (*(v56 + 8))(v42, v54);
    sub_12E1C(&v65, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
    v40 = 0;
  }

  v43 = swift_unknownObjectWeakLoadStrong();
  v61 = v21;
  if (v43)
  {
    v44 = v43;
    sub_12AFE8();
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  sub_15F28(v70, &v65);
  sub_15F84(v68, (v8 + 104), &unk_DE8E30, "\b]\r");
  v47 = v62;
  v48 = v64;
  sub_15F84(v64, &v8[*(v62 + 28)], &unk_DEA510, "\b]\r");
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = 1;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  *(v8 + 11) = 0;
  sub_2D594(&v65, v8);
  *(v8 + 12) = 0;
  v49 = *v57;
  *(&v66 + 1) = v47;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v65);
  sub_2D604(v8, boxed_opaque_existential_0);
  v51 = v49;
  v52 = v58;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v58, 0, v40, v46, &v65);
  sub_12E1C(v48, &unk_DEA510, "\b]\r");
  sub_12E1C(v68, &unk_DE8E30, "\b]\r");
  sub_1611C(v70);
  sub_2D6C0(v8, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v65, &unk_DE8E40, &unk_AF8050);
}

void sub_400204()
{
  v1 = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyArrayStorage;
  sub_AB3820();
  v4 = swift_allocBox();
  sub_AB37A0();
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_isAuthenticated) == 1)
  {
    *(v3 + 16) = JSSettingsViewModel.sectionsForAuthenticatedState.getter();
  }

  else
  {
    sub_3FBD50();
  }

  v5 = [objc_opt_self() defaultIdentityStore];
  sub_13C80(0, &unk_DF2B00, ICUserIdentity_ptr);
  v6 = static ICUserIdentity.active.getter();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v1;
  v7[4] = v4;
  v7[5] = v2;
  v10[4] = sub_403CC4;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_151E0;
  v10[3] = &block_descriptor_129;
  v8 = _Block_copy(v10);

  v9 = v1;

  [v5 getPropertiesForUserIdentity:v6 completionHandler:v8];
  _Block_release(v8);
}

void sub_400414(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v10 = sub_AB7C10();
  v26 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_AB7C50();
  v13 = *(v25 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = [a1 isManagedAppleID] ^ 1;
  }

  else
  {
    v17 = 0;
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v23 = sub_ABA150();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = v17;
  v19 = v24;
  *(v18 + 40) = a5;
  *(v18 + 48) = v19;
  aBlock[4] = sub_403D38;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_106_0;
  v20 = _Block_copy(aBlock);

  v21 = a4;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_404AC4(&qword_DF06C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_D1010();
  sub_ABABB0();
  v22 = v23;
  sub_ABA160();
  (*(v26 + 8))(v12, v10);
  (*(v13 + 8))(v16, v25);
  _Block_release(v20);
}

void sub_400734(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v39 = a2;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    goto LABEL_17;
  }

  v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  if (v13)
  {
    while (v13 >= 1)
    {
      v37 = v12 & 0xC000000000000001;
      v14 = v12;

      swift_beginAccess();
      swift_beginAccess();
      v15 = v14;
      v16 = 0;
      v36 = (v8 + 16);
      v35 = (v8 + 8);
      v33 = (v8 + 40);
      v34 = v14;
      while (1)
      {
        if (v37)
        {
          v17 = sub_3618EC(v16, v15);
        }

        else
        {
          v17 = *(v15 + 8 * v16 + 32);
        }

        v18 = v17;
        (*v36)(v10, v11, v7);
        sub_400B30(v18, v38 & 1, v10, v41);
        (*v35)(v10, v7);
        swift_beginAccess();
        v19 = *(a5 + 16);
        sub_403D48(v41, v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 16) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_6C9F4(0, *(v19 + 2) + 1, 1, v19);
          *(a5 + 16) = v19;
        }

        v22 = *(v19 + 2);
        v21 = *(v19 + 3);
        if (v22 >= v21 >> 1)
        {
          v19 = sub_6C9F4((v21 > 1), v22 + 1, 1, v19);
        }

        *(v19 + 2) = v22 + 1;
        v23 = &v19[56 * v22];
        v24 = v41[0];
        v25 = v41[1];
        v26 = v41[2];
        v23[80] = v42;
        *(v23 + 3) = v25;
        *(v23 + 4) = v26;
        *(v23 + 2) = v24;
        *(a5 + 16) = v19;
        swift_endAccess();
        swift_beginAccess();
        v8 = v11;
        v27 = sub_AB37F0();
        swift_endAccess();
        if (__OFADD__(v27, 1))
        {
          break;
        }

        ++v16;
        sub_AB37A0();
        sub_403D80(v41);
        (*v33)(v11, v10, v7);

        v15 = v34;
        if (v13 == v16)
        {

          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      v31 = v12;
      v32 = sub_ABB060();
      v12 = v31;
      v13 = v32;
      if (!v32)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    swift_beginAccess();
    v28 = *(a5 + 16);
    v29 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
    v30 = v39;
    swift_beginAccess();
    *(v30 + v29) = v28;

    [*(v30 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView) reloadData];
  }
}

uint64_t sub_400B30@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v75 = a2;
  v74 = a4;
  v6 = sub_AB3820();
  __chkstk_darwin();
  v82 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v73 - v8;
  v9 = __chkstk_darwin();
  v11 = &v73 - v10;
  v77 = v12;
  v84 = *(v12 + 16);
  v85 = v12 + 16;
  v84(&v73 - v10, a3, v6, v9);
  v73 = a1;
  v13 = JSSettingsSection.items.getter();
  v15 = v13;
  if (v13 >> 62)
  {
LABEL_55:
    v63 = v15;
    v16 = sub_ABB060();
    v15 = v63;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    if (v16)
    {
LABEL_3:
      v17 = 0;
      v18 = 0;
      v19 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
      v81 = v15 & 0xC000000000000001;
      v76 = v15 & 0xFFFFFFFFFFFFFF8;
      v89 = (v77 + 8);
      v78 = (v77 + 32);
      v20 = _swiftEmptyArrayStorage;
      v83 = v6;
      v79 = v16;
      v80 = v15;
      while (1)
      {
        if (v81)
        {
          v21 = sub_361704(v17, v15, v14);
        }

        else
        {
          if (v17 >= *(v76 + 16))
          {
            goto LABEL_54;
          }

          v21 = *(v15 + 8 * v17 + 32);
        }

        v22 = v21;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v23 = (*&stru_108.segname[(swift_isaMask & *v21) + 8])();
        v88 = v18;
        v86 = v17 + 1;
        if (v23 > 1)
        {
          break;
        }

        if (!v23)
        {
          goto LABEL_29;
        }

        if (v75)
        {
          v24 = (*&stru_B8.segname[(swift_isaMask & *v22) - 8])();
          if (v25)
          {
            v26 = v24;
          }

          else
          {
            v26 = 0;
          }

          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0xE000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_6CB18(0, *(v20 + 2) + 1, 1, v20);
          }

          v29 = *(v20 + 2);
          v28 = *(v20 + 3);
          if (v29 >= v28 >> 1)
          {
            v20 = sub_6CB18((v28 > 1), v29 + 1, 1, v20);
          }

          *(v20 + 2) = v29 + 1;
          v87 = v20;
          v30 = &v20[40 * v29];
          *(v30 + 4) = v26;
          *(v30 + 5) = v27;
          *(v30 + 6) = 0;
          *(v30 + 7) = 0;
          v30[64] = 64;
          v6 = v83;
        }

        else
        {
          v87 = v20;
        }

LABEL_35:
        v39 = (*&stru_1F8.segname[(swift_isaMask & *v22) + 8])();
        v40 = v91;
        v41 = v11;
        (v84)(v91, v11, v6);
        v42 = v90;
        swift_beginAccess();
        v11 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = *(v42 + v19);
        v44 = v92;
        *(v42 + v19) = 0x8000000000000000;
        v45 = sub_2EC048(v40);
        v46 = v44[2];
        v47 = (v15 & 1) == 0;
        v48 = v46 + v47;
        if (__OFADD__(v46, v47))
        {
          goto LABEL_51;
        }

        v49 = v15;
        if (v44[3] >= v48)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v52 = v92;
            if (v15)
            {
              goto LABEL_42;
            }
          }

          else
          {
            sub_334A54();
            v52 = v92;
            if (v49)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          sub_32EB14(v48, isUniquelyReferenced_nonNull_native);
          v50 = sub_2EC048(v91);
          if ((v49 & 1) != (v51 & 1))
          {
            result = sub_ABB4C0();
            __break(1u);
            return result;
          }

          v45 = v50;
          v52 = v92;
          if (v49)
          {
LABEL_42:
            v53 = v52[7];
            v54 = *(v53 + 8 * v45);
            *(v53 + 8 * v45) = v11;

            v55 = *v89;
            v6 = v83;
            (*v89)(v91, v83);
            goto LABEL_47;
          }
        }

        v52[(v45 >> 6) + 8] |= 1 << v45;
        v56 = v77;
        v57 = v91;
        v6 = v83;
        (v84)(v52[6] + *(v77 + 72) * v45, v91, v83);
        *(v52[7] + 8 * v45) = v11;
        v55 = *(v56 + 8);
        v55(v57, v6);
        v58 = v52[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_53;
        }

        v52[2] = v60;
LABEL_47:
        *(v90 + v19) = v52;

        swift_endAccess();
        v61 = v41;
        if (__OFADD__(sub_AB37B0(), 1))
        {
          goto LABEL_52;
        }

        v18 = v39 | v88;
        sub_AB37F0();
        v62 = v82;
        sub_AB37A0();

        v55(v41, v6);
        (*v78)(v41, v62, v6);
        ++v17;
        v15 = v80;
        v20 = v87;
        v11 = v61;
        if (v86 == v79)
        {
          goto LABEL_57;
        }
      }

      if (v23 == 2)
      {
        v31 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_6CB18(0, *(v20 + 2) + 1, 1, v20);
        }

        v33 = *(v20 + 2);
        v32 = *(v20 + 3);
        if (v33 >= v32 >> 1)
        {
          v20 = sub_6CB18((v32 > 1), v33 + 1, 1, v20);
        }

        *(v20 + 2) = v33 + 1;
        v87 = v20;
        v34 = &v20[40 * v33];
        *(v34 + 4) = v22;
        *(v34 + 5) = 0;
        *(v34 + 6) = 0;
        *(v34 + 7) = 0;
        v35 = 0x80;
      }

      else
      {
LABEL_29:
        v36 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_6CB18(0, *(v20 + 2) + 1, 1, v20);
        }

        v38 = *(v20 + 2);
        v37 = *(v20 + 3);
        if (v38 >= v37 >> 1)
        {
          v20 = sub_6CB18((v37 > 1), v38 + 1, 1, v20);
        }

        *(v20 + 2) = v38 + 1;
        v87 = v20;
        v34 = &v20[40 * v38];
        *(v34 + 4) = v22;
        *(v34 + 5) = 0;
        *(v34 + 6) = 0;
        *(v34 + 7) = 0;
        v35 = -64;
      }

      v34[64] = v35;
      goto LABEL_35;
    }
  }

  LOBYTE(v18) = 0;
  v20 = _swiftEmptyArrayStorage;
LABEL_57:

  v64 = JSSettingsSection.headerText.getter();
  v66 = v65;
  v67 = JSSettingsSection.footerText.getter();
  v68 = v20;
  v70 = v69;
  result = (*(v77 + 8))(v11, v6);
  v72 = v74;
  *v74 = v68;
  v72[1] = 0;
  v72[2] = v64;
  v72[3] = v66;
  v72[4] = v67;
  v72[5] = v70;
  *(v72 + 48) = v18 & 1;
  return result;
}

void sub_401268()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  v1 = [v0 navigationItem];
  v2 = [v1 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB92A0();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
    }

    else
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v8 = sub_AB9260();

      [v1 setTitle:v8];
    }
  }

  v9 = [v0 navigationController];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  v11 = [v9 viewControllers];
  sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v12 = sub_AB9760();

  if (!(v12 >> 62))
  {
    if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_10;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!sub_ABB060())
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_35F8D4(0, v12);
LABEL_13:
    v14 = v13;

    v15 = [v14 childViewControllers];
    v16 = sub_AB9760();

    v28[0] = v0;
    __chkstk_darwin();
    *&v27[-16] = v28;
    v17 = sub_1B3840(sub_72E3C, &v27[-32], v16);

    if (v17)
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v29 = type metadata accessor for JSSettingsViewController();
      v28[0] = v0;
      v18 = v0;
      v19 = sub_AB9260();

      v20 = v29;
      if (v29)
      {
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v21 = *(v20 - 8);
        v22 = __chkstk_darwin();
        v24 = &v27[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v21 + 16))(v24, v22);
        v25 = sub_ABB3A0();
        (*(v21 + 8))(v24, v20);
        __swift_destroy_boxed_opaque_existential_0(v28);
      }

      else
      {
        v25 = 0;
      }

      v26 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v19 style:2 target:v25 action:"handleDoneButtonTapped"];

      swift_unknownObjectRelease();
      [v1 setRightBarButtonItem:v26];

      v1 = v26;
      goto LABEL_21;
    }

LABEL_20:
    [v1 setRightBarButtonItem:0];
LABEL_21:

    return;
  }

  if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
    v13 = *(v12 + 32);
    goto LABEL_13;
  }

  __break(1u);
}

double sub_4017CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_forSecureTextEntry))
  {
    v4 = &OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_passwordTextFieldValue;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_identifierTextFieldValue;
  }

  v5 = (v3 + *v4);
  *v5 = a2;
  v5[1] = a3;

  return result;
}

void sub_40183C()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_isAuthenticated) == 1)
  {
    sub_400204();
  }
}

void sub_401858()
{
  if ((*(v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_isAuthenticated) & 1) == 0)
  {
    sub_400204();
  }
}

id sub_401870()
{
  if (qword_DE6B70 != -1)
  {
    swift_once();
  }

  v0 = qword_E716C0;

  return v0;
}

char *sub_4018D4(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style] = 0;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_urlRangeDictForTextView;
  *&v4[v10] = sub_99BB4(_swiftEmptyArrayStorage);
  v11 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView;
  *&v4[v11] = [objc_allocWithZone(UITextView) init];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for HeaderFooterView();
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView;
  v14 = *&v12[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView];
  v15 = v12;
  [v15 addSubview:v14];
  v16 = *&v12[v13];
  sub_402578(v16);

  return v15;
}

id sub_401A38(id result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style];
  if (v2 != (result & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView];
    v4 = objc_opt_self();
    v5 = &UIFontTextStyleCaption1;
    if (!v2)
    {
      v5 = &UIFontTextStyleFootnote;
    }

    v6 = *v5;
    v7 = v3;
    v8 = [v4 preferredFontForTextStyle:v6];
    [v7 setFont:v8];

    [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView] setNeedsLayout];

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_401B38(uint64_t a1)
{
  v2 = sub_AB2E70();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB2F20();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin();
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v41 - v9;
  v45 = sub_AB2F50();
  v44 = *(v45 - 8);
  __chkstk_darwin();
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text] == v14 && *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text + 8] == v11;
  if (!v15 && (sub_ABB3C0() & 1) == 0)
  {
    v43 = v1;

    v16 = sub_AB9260();
    v17 = [v16 _isNaturallyRTL];

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_opt_self() defaultParagraphStyle];
    [v19 mutableCopy];

    sub_ABAB50();
    sub_13C80(0, &unk_E05360, NSMutableParagraphStyle_ptr);
    swift_dynamicCast();
    v20 = v53;
    swift_unknownObjectRelease();
    [v20 setAlignment:v18];
    sub_AB2F40();
    aBlock._countAndFlagsBits = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
    sub_B4860();
    sub_AB2F70();
    aBlock._countAndFlagsBits = v20;
    sub_B4908();
    v42 = v20;
    sub_AB2F70();
    if (qword_DE6C88 != -1)
    {
      swift_once();
    }

    v21 = qword_E718C8;
    aBlock._countAndFlagsBits = qword_E718C8;
    sub_B48B4();
    v22 = v21;
    sub_AB2F70();

    v23 = String.trim()();

    aBlock = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA750, &unk_AFD830);
    swift_allocObject();
    sub_AB3890();
    v24 = v10;
    sub_AB3880();

    (*(v3 + 104))(v5, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v2);
    sub_AB2E40();
    (*(v3 + 8))(v5, v2);
    sub_13C80(0, &qword_DF5280, NSMutableAttributedString_ptr);
    v26 = v46;
    v25 = v47;
    v27 = *(v46 + 16);
    v41 = v24;
    v27(v8, v24, v47);
    v28 = sub_ABA1C0();
    v29 = v43;
    v30 = &v43[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_urlRangeDictForTextView];
    swift_beginAccess();
    v31 = v28;
    v32 = [v31 length];
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    *(v33 + 24) = v31;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_404A2C;
    *(v34 + 24) = v33;
    v51 = sub_404A34;
    v52 = v34;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    v49 = sub_4CE7AC;
    v50 = &block_descriptor_244;
    v35 = _Block_copy(&aBlock);
    v36 = v31;

    [v36 enumerateAttributesInRange:0 options:v32 usingBlock:{0, v35}];
    _Block_release(v35);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      swift_endAccess();

      v38 = v25;
      v39 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView;
      v40 = *&v29[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView];
      [v40 setAttributedText:v36];

      [*&v29[v39] setNeedsLayout];
      [v29 setNeedsLayout];

      (*(v26 + 8))(v41, v38);
      (*(v44 + 8))(v13, v45);
    }
  }
}

void sub_402218()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for HeaderFooterView();
  objc_msgSendSuper2(&v20, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 music_inheritedLayoutInsets];
  v11 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v0 effectiveUserInterfaceLayoutDirection];
  v18 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView;
  [*&v0[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView] sizeThatFits:{v15, v17}];
  v21.origin.x = v11;
  v21.origin.y = v13;
  v21.size.width = v15;
  v21.size.height = v17;
  CGRectGetHeight(v21);
  v19 = *&v0[v18];
  sub_ABA490();
  [v19 setFrame:?];
}

id sub_402578(id a1)
{
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [a1 setTextColor:qword_E718C8];

  v3 = sub_AB9260();

  [a1 setText:v3];

  v4 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v4];

  v5 = [a1 textContainer];
  [v5 setMaximumNumberOfLines:0];

  [a1 setEditable:0];
  [a1 setScrollEnabled:0];
  [a1 setSelectable:1];
  v6 = [a1 textContainer];
  [v6 setLineFragmentPadding:0.0];

  v7 = [a1 textContainer];
  [v7 setLineBreakMode:0];

  v8 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [a1 setFont:v8];

  [a1 setAdjustsFontForContentSizeCategory:1];

  return [a1 setDelegate:v1];
}

id sub_4027AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderFooterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_402878(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_4028C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_402924()
{
  result = qword_E052F8;
  if (!qword_E052F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E052F8);
  }

  return result;
}

uint64_t sub_40297C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 72);
  v7 = v6[2];
  if (v7)
  {
    v8 = (v6 + 4);

    v9 = 0;
    while (v9 < v6[2])
    {
      sub_8FEC8(v8, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_8FF3C(v17);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a2)
        {
          v11 = 0;
LABEL_9:

          goto LABEL_11;
        }
      }

      ++v9;
      v8 += 40;
      if (v7 == v9)
      {
        v9 = 0;
        v11 = 1;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v9 = 0;
  v11 = 1;
LABEL_11:
  sub_15F84(a1, v16, &unk_E05390, &qword_B0DB40);
  if (v16[0] || v16[1] != 1)
  {
    sub_C3D40(v16, v17);
    if (v11)
    {
      sub_8FEC8(v17, v16);
      swift_beginAccess();
      v6 = *(a3 + 72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 72) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v15 = v6[2];
        v14 = v6[3];
        if (v15 >= v14 >> 1)
        {
          v6 = sub_6ACE4((v14 > 1), v15 + 1, 1, v6);
        }

        v6[2] = v15 + 1;
        sub_C3D40(v16, &v6[5 * v15 + 4]);
        *(a3 + 72) = v6;
        goto LABEL_23;
      }

LABEL_25:
      v6 = sub_6ACE4(0, v6[2] + 1, 1, v6);
      *(a3 + 72) = v6;
      goto LABEL_18;
    }

    swift_beginAccess();
    sub_2E5E98(v9, v16);
    result = sub_8FF3C(v16);
    if (*(*(a3 + 72) + 16) >= v9)
    {
      sub_8FEC8(v17, v16);
      sub_1AEF88(v9, v9, v16);
LABEL_23:
      swift_endAccess();
      sub_12E1C(a1, &unk_E05390, &qword_B0DB40);
      return sub_8FF3C(v17);
    }

    __break(1u);
  }

  else
  {
    sub_12E1C(v16, &unk_E05390, &qword_B0DB40);
    if ((v11 & 1) == 0)
    {
      swift_beginAccess();
      sub_2E5E98(v9, v17);
      sub_8FF3C(v17);
      swift_endAccess();
    }

    return sub_12E1C(a1, &unk_E05390, &qword_B0DB40);
  }

  return result;
}

void sub_402C4C(double a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth) > a1)
  {
    a1 = *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth);
  }

  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth) = a1;
  if (sub_AB38D0())
  {
    v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView);
    if (v4)
    {
      v13 = v4;
      v5 = [v13 visibleCells];
      sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
      v6 = sub_AB9760();

      if (v6 >> 62)
      {
        v7 = sub_ABB060();
        if (v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
        if (v7)
        {
LABEL_7:
          if (v7 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v7; ++i)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v9 = sub_360438(i, v6);
            }

            else
            {
              v9 = *(v6 + 8 * i + 32);
            }

            v10 = v9;
            type metadata accessor for TextFieldCell();
            v11 = swift_dynamicCastClass();
            if (v11)
            {
              v12 = v11;
              *(v11 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth) = *(v2 + v3);
              if (sub_AB38D0())
              {
                [v12 setNeedsLayout];
              }
            }
          }
        }
      }
    }
  }
}

void sub_402E2C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_lastSeenViewBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_selectedPhotoIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_artworkCachingReference;
  type metadata accessor for Artwork.CachingReference();
  *(v1 + v4) = swift_allocObject();
  v5 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v1 + v5) = TextDrawing.Cache.init()();
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
  *(v1 + v6) = sub_97678(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_noAuthentication) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_accountStoreDidChangeObserver) = 0;
  v7 = (v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_identifierTextFieldValue);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_passwordTextFieldValue);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_maximumMeasuredDescriptionTextWidth) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userProfileObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_profilePerson) = 0;
  v9 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_greenTeaLogger;
  *(v1 + v9) = [objc_allocWithZone(MusicAnalyticsGreenTeaLogger) init];
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userHasDeletedImage) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_userSelectedImage) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_402FCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v5 = sub_2EC048(a1);
  if ((v6 & 1) == 0)
  {

LABEL_5:
    v10 = 0;
    return v10 & 1;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  v8 = *&stru_1F8.segname[(swift_isaMask & *v7) + 8];
  v9 = v7;
  v10 = v8();

  return v10 & 1;
}

void sub_4030B8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_AB37F0();
  v4 = sub_AB37E0();
  v5 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(v2 + v5);
  if (v3 >= *(v6 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(v6 + 56 * v3 + 32);
  if (v4 >= *(v7 + 16))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v8 = v7 + 40 * v4;
  v9 = *(v8 + 64);
  if (v9 >= 0xC0)
  {
    v10 = *(v8 + 32);
    v11 = *(v8 + 40);
    v12 = *(v8 + 48);
    v13 = *(v8 + 56);
    v14 = *(&stru_248.size + (swift_isaMask & *v10));
    v15 = v10;
    v16 = v14();
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_404114(v16);
    }

    sub_4048E8(v10, v11, v12, v13, v9);
  }
}

void sub_403208(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB37F0();
  v5 = sub_AB37E0();
  v6 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_sections;
  swift_beginAccess();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(v2 + v6);
  if (v4 >= *(v7 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = *(v7 + 56 * v4 + 32);
  if (v5 < *(v8 + 16))
  {
    v9 = v8 + 40 * v5;
    v10 = *(v9 + 64);
    if (v10 >> 6 <= 1)
    {
      return;
    }

    v11 = *(v9 + 32);
    v12 = *(v9 + 40);
    v14 = *(v9 + 48);
    v13 = *(v9 + 56);
    if (v10 >> 6 == 2)
    {
      v15 = *(&stru_1A8.reloff + (swift_isaMask & *v11));
      v16 = v11;
      v15();
      sub_4048E8(v11, v12, v14, v13, v10);
      return;
    }

    v29 = *(v9 + 40);
    v30 = *(v9 + 48);
    v17 = *(&stru_248.size + (swift_isaMask & *v11));
    v18 = v11;
    v19 = v17();
    if ((~v19 & 0xF000000000000007) == 0 || (v20 = v19, sub_404114(v19), v20 < 0))
    {
      v21 = v17();
      if ((~v21 & 0xF000000000000007) == 0 || (v22 = v21, sub_404114(v21), v22 < 0))
      {
        v23 = OBJC_IVAR____TtC16MusicApplication24JSSettingsViewController_itemIndexMap;
        swift_beginAccess();
        v24 = *(v2 + v23);
        if (*(v24 + 16))
        {

          v25 = sub_2EC048(a1);
          if (v26)
          {
            v27 = *(*(v24 + 56) + 8 * v25);

            if ((*&stru_1F8.segname[(swift_isaMask & *v27) + 8])(v28))
            {
              (*&stru_1A8.segname[(swift_isaMask & *v27) - 8])();

              sub_4048E8(v11, v29, v30, v13, v10);
              return;
            }
          }

          else
          {
          }
        }
      }
    }

    sub_4048E8(v11, v29, v30, v13, v10);
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_403534()
{
  v1 = v0;
  if (qword_DE6B78 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E050E0);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "AAUISignInController did complete", v5, 2u);
  }

  return [v1 dismissViewControllerAnimated:0 completion:0];
}

void sub_403634()
{
  v1 = v0;
  if (qword_DE6B78 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E050E0);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "AAUISignInController did cancel", v5, 2u);
  }

  v6 = [v1 presentingViewController];
  if (v6)
  {
    v7 = v6;
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_403774()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_style) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_urlRangeDictForTextView;
  *(v0 + v2) = sub_99BB4(_swiftEmptyArrayStorage);
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_textView;
  *(v0 + v3) = [objc_allocWithZone(UITextView) init];
  sub_ABAFD0();
  __break(1u);
}

void *sub_403830(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text + 8];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_text] & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    [v1 music_inheritedLayoutInsets];
    v6 = v5;
    v8 = v7;
    [v1 bounds];
    UIEdgeInsetsInsetRect(0.0, 0.0, v9, 1.79769313e308, v6, v8);
    [v1 sizeThatFits:{v10, v11}];
  }

  [a1 frame];
  [a1 setFrame:?];
  return a1;
}

uint64_t sub_403934(uint64_t a1, Swift::UInt a2, Swift::UInt a3)
{
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v38 - v10;
  __chkstk_darwin();
  v13 = &v38 - v12;
  __chkstk_darwin();
  v15 = &v38 - v14;
  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;
    v38 = v11;
    v18 = v7;
    v19 = OBJC_IVAR____TtC16MusicApplicationP33_7919D88BB8212442612DA538E61A458116HeaderFooterView_urlRangeDictForTextView;
    swift_beginAccess();
    v20 = *(v3 + v19);
    if (*(v20 + 16))
    {
      v21 = sub_2EC75C(a2, a3);
      if (v22)
      {
        v23 = v18;
        (*(v18 + 16))(v13, *(v20 + 56) + *(v18 + 72) * v21, v6);
        v24 = v13;
        v25 = *(v18 + 32);
        v25(v15, v24, v6);
        sub_AB30F0(v26);
        v28 = v27;
        v29 = [(objc_class *)v17 URLOverrideForURL:v27];

        if (v29)
        {
          sub_AB3150();

          v30 = v38;
          v25(v38, v9, v6);
          sub_AB30F0(v31);
          v33 = v32;
          sub_97420(_swiftEmptyArrayStorage);
          isa = sub_AB8FD0().super.isa;

          [(objc_class *)v17 openSensitiveURL:v33 withOptions:isa];
          v35 = *(v23 + 8);
          v35(v30, v6);
          v35(v15, v6);

          v36 = 1;
          v17 = isa;
LABEL_9:

          return v36;
        }

        (*(v18 + 8))(v15, v6);
      }
    }

    v36 = 0;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_403C3C()
{

  return swift_deallocObject();
}

uint64_t sub_403C74()
{

  return swift_deallocObject();
}

double block_copy_helper_129(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_403CE8()
{

  return swift_deallocObject();
}

uint64_t sub_403DB0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_403DE8()
{

  return swift_deallocObject();
}

uint64_t sub_403E7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_3FDCC8(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_403F78()
{

  return swift_deallocObject();
}

uint64_t sub_403FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_3FDCC8(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_404090()
{

  return swift_deallocObject();
}

void sub_404114(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_40412C()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_404204(uint64_t a1)
{
  v3 = *(sub_AB3820() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_3FAE68(a1, v5, v1 + v4, v6);
}

uint64_t sub_4042A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_4042DC()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(1, ObjectType, v1);
}

double sub_4043B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_40440C()
{
  v1 = sub_AB8EA0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_4044E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_AB8EA0() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_3F9C6C(a1, a2, a3, v9, v10, v3 + v8, v11);
}

uint64_t sub_40459C()
{
  v1 = sub_AB8EA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = *(v0 + 40);
  if (v4 >> 60 != 15)
  {
    sub_466B8(*(v0 + 32), v4);
  }

  (*(v2 + 8))(v0 + ((v3 + 72) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_40469C(uint64_t a1)
{
  sub_AB8EA0();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17CF8;

  return sub_3F9ED8(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_126Tm_0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 64);
  if (v1 != &dword_0 + 1)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_131Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return swift_deallocObject();
}

void sub_4048E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 >> 6) > 1u)
  {
  }

  else
  {
    if (a5 >> 6)
    {
    }

    else
    {
    }
  }
}

uint64_t sub_40497C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_AB3820() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_4049F4()
{

  return swift_deallocObject();
}

void sub_404A3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xFDu)
  {
    sub_4048E8(a1, a2, a3, a4, a5);
  }
}

void sub_404A50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 >> 6) > 1u)
  {

    v6 = a1;
  }

  else
  {
    if (a5 >> 6)
    {
    }

    else
    {
    }
  }
}

uint64_t sub_404AC4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_404B0C()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_404BD4()
{
  v1 = *(sub_AB3820() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + *(v1 + 64));
  isa = sub_AB3770().super.isa;
  [v2 deselectItemAtIndexPath:isa animated:v3];
}

uint64_t sub_404C94()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_404D58(void *a1)
{
  sub_AB3820();
  v3 = *(v1 + 16);

  sub_3F520C(a1, v3);
}

uint64_t sub_404E00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 33))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_404E54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_404EF8()
{
  result = qword_E053A0;
  if (!qword_E053A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E053A0);
  }

  return result;
}

void sub_405004(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v6 = OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_initializedProperties;
  v7 = *(a2 + OBJC_IVAR____TtC16MusicApplication22JSModelMenuItemBuilder_initializedProperties);
  if (v7 == 2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v8 = v5;
  if (v7)
  {
    (*&stru_68.segname[(swift_isaMask & *a3) + 8])();
    if (v9)
    {
      v10 = sub_AB9260();
    }

    else
    {
      v10 = 0;
    }

    [v8 setTitle:v10];

    v7 = *(a2 + v6);
  }

  if (v7 == 2)
  {
    goto LABEL_17;
  }

  if ((v7 & 0x100) != 0)
  {
    v11 = (*(&stru_68.offset + (swift_isaMask & *a3)))();
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_self() menuWithJSMenu:v11];
      [v8 setSubmenu:v13];
    }

    else
    {

      [v8 setSubmenu:0];
    }
  }
}

id sub_405220(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSModelMenuItemBuilder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for JSModelMenuItemBuilder.InitializedProperties(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for JSModelMenuItemBuilder.InitializedProperties(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_4053EC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v5 = OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_initializedProperties;
  if (*(v2 + OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_initializedProperties) == 2)
  {
    v55 = a1;
    v56 = a2;
    v54 = OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_requestedProperties;
    v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_requestedProperties);
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
  v49 = objc_allocWithZone(MusicModelBrickItem);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_405C9C;
  *(v50 + 24) = v53;
  aBlock[4] = sub_57B84;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_130;
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

void sub_405834(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_initializedProperties;
  v11 = *(a2 + OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_initializedProperties);
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

    [v12 setHeadlineText:v18];

    v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_20;
  }

  if ((v17 & 0x10000) != 0)
  {
    swift_beginAccess();

    v19 = sub_AB9260();

    [v12 setTitleText:v19];

    v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_21;
  }

  if ((v17 & 0x1000000) != 0)
  {
    swift_beginAccess();

    v20 = sub_AB9260();

    [v12 setSubtitleText:v20];

    v17 = *(a2 + v10) | (*(a2 + v10 + 4) << 32);
  }

  if (v17 == 2)
  {
    goto LABEL_22;
  }

  if ((v17 & 0x100000000) != 0)
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
    aBlock[3] = &block_descriptor_20_4;
    v24 = _Block_copy(aBlock);
    v25 = v22;
    v26 = a3;

    [v12 setBackgroundArtworkCatalogBlock:v24];
    _Block_release(v24);
  }
}

id sub_405BE8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSModelBrickItemBuilder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_405CD0()
{

  return swift_deallocObject();
}

id sub_405D10(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_initializedProperties];
  v3[4] = 0;
  *v3 = 2;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_requestedProperties] = a1;
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
    *&v2[OBJC_IVAR____TtC16MusicApplication23JSModelBrickItemBuilder_contentItemBuilder] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for JSModelBrickItemBuilder();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_406028(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v17 - v4;
  v6 = sub_AB37F0();
  result = sub_AB37E0();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(v2 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  if (v6 >= *(v8 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(v8 + 8 * v6 + 32);
  if (result < *(v9 + 16))
  {
    v10 = v9 + 24 * result;
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    v13 = *(v10 + 48);
    v14 = sub_AB3820();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v5, a1, v14);
    (*(v15 + 56))(v5, 0, 1, v14);
    sub_4089FC(v11, v12, v13);
    v16 = sub_40765C(v11, v12, v13, v5);
    sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);
    sub_4089F0(v11, v12, v13);
    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_4062E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_408B10;
  *(v12 + 24) = v11;
  v14[4] = sub_3E12F8;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1B7EB0;
  v14[3] = &block_descriptor_45_1;
  v13 = _Block_copy(v14);

  [a4 enumerateItemsInSectionAtIndex:a2 usingBlock:v13];
  _Block_release(v13);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

uint64_t sub_40644C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void (*a5)(uint64_t, char *, char *), uint64_t a6, _BYTE *a7)
{
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB37C0();
  HIBYTE(v16) = 0;
  a5(a1, v14, &v16 + 7);
  if (HIBYTE(v16) == 1)
  {
    *a3 = 1;
    *a7 = 1;
  }

  return (*(v12 + 8))(v14, v11);
}

void sub_406734(uint64_t a1)
{
  v2 = v1;
  v8 = _swiftEmptyArrayStorage;
  v4 = swift_allocObject();
  *(v4 + 16) = &v8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_408A18;
  *(v5 + 24) = v4;
  aBlock[4] = sub_2E34E8;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7EB0;
  aBlock[3] = &block_descriptor_131;
  v6 = _Block_copy(aBlock);

  [v2 enumerateItemsInSectionAtIndex:a1 usingBlock:v6];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_4068A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_AB9730();
  if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  swift_unknownObjectRetain();
  return sub_AB97F0();
}

id sub_406AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v2 = &v11 - v1;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = *(v3 + 32);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  v8 = sub_AB3820();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_4089FC(v5, v6, v7);
  v9 = sub_40765C(v5, v6, v7, v2);
  sub_12E1C(v2, &unk_DE8E20, &qword_AF7990);
  sub_4089F0(v5, v6, v7);
  return v9;
}

id sub_406C34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v2 = &v14 - v1;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 8 * v4 + 24);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = v5 + 24 * v6;
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);
  v11 = sub_AB3820();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  sub_4089FC(v8, v9, v10);
  v12 = sub_40765C(v8, v9, v10, v2);
  sub_12E1C(v2, &unk_DE8E20, &qword_AF7990);
  sub_4089F0(v8, v9, v10);
  return v12;
}

void sub_406D80()
{
  v43 = sub_AB3820();
  v1 = *(v43 - 8);
  __chkstk_darwin();
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v41 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v47 = _swiftEmptyArrayStorage;
  v42 = v0;
  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  v33 = *(v9 + 16);
  if (v33)
  {
    v32 = v9 + 32;
    v46 = (v1 + 56);
    v38 = (v1 + 48);
    v39 = OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection;
    v37 = (v1 + 32);
    v44 = (v1 + 8);

    v11 = 0;
    v36 = v3;
    v40 = v5;
    v31 = v10;
    while (1)
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
        return;
      }

      v12 = *(v32 + 8 * v11);
      v13 = *(v12 + 16);
      if (!v13)
      {
        goto LABEL_3;
      }

      v35 = v11;
      v45 = *v46;

      v34 = v12;
      v14 = (v12 + 48);
      v15 = v43;
      do
      {
        v17 = *(v14 - 2);
        v16 = *(v14 - 1);
        v18 = *v14;
        v45(v8, 1, 1, v15);
        if (v18 == 1)
        {
          v19 = v17;
          sub_12E1C(v8, &unk_DE8E20, &qword_AF7990);
          v20 = v19;
          goto LABEL_17;
        }

        v21 = v41;
        sub_38F70C(v8, v41);
        if ((*v38)(v21, 1, v15) == 1)
        {
          sub_12E1C(v21, &unk_DE8E20, &qword_AF7990);
LABEL_15:
          v24 = v40;
          sub_AB37C0();
          goto LABEL_16;
        }

        v22 = v36;
        v23 = *v37;
        (*v37)(v36, v21, v15);
        if (sub_AB37F0() != v17 || sub_AB37E0() != v16)
        {
          (*v44)(v22, v15);
          goto LABEL_15;
        }

        v24 = v40;
        v23(v40, v22, v15);
LABEL_16:
        v25 = *(v42 + v39);
        isa = sub_AB3770().super.isa;
        v27 = [v25 itemAtIndexPath:isa];
        v28 = v24;
        v29 = v43;
        (*v44)(v28, v43);
        sub_12E1C(v8, &unk_DE8E20, &qword_AF7990);

        v15 = v29;
LABEL_17:
        sub_AB9730();
        if (*(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v47 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
        sub_4089F0(v17, v16, v18);
        v14 += 24;
        --v13;
      }

      while (v13);

      v10 = v31;
      v11 = v35;
LABEL_3:
      if (++v11 == v33)
      {

        return;
      }
    }
  }
}

unint64_t sub_407238(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB37F0();
  result = sub_AB37E0();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(v2 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  if (v8 >= *(v10 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(v10 + 8 * v8 + 32);
  if (result >= *(v11 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v12 = v11 + 24 * result;
  v13 = *(v12 + 32);
  if (*(v12 + 48) == 1)
  {
    v14 = [v13 identifiers];

    return v14;
  }

  else
  {
    if (v8 == v13 && result == *(v12 + 40))
    {
      (*(v5 + 16))(v7, a1, v4);
    }

    else
    {
      sub_AB37C0();
    }

    v16 = *(v2 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection);
    isa = sub_AB3770().super.isa;
    v18 = [v16 identifiersForItemAtIndexPath:isa];
    (*(v5 + 8))(v7, v4);

    return v18;
  }
}

id sub_40744C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *))
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a1;
  v13 = a4(v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

id sub_407568(uint64_t a1)
{
  v3 = [objc_opt_self() emptyIdentifierSet];
  v4 = OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection;
  if ([*(v1 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection) numberOfSections] >= a1)
  {
    return v3;
  }

  v5 = *(v1 + v4);
  v6 = [v5 identifiersForSectionAtIndex:a1];

  return v6;
}

id sub_40765C(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = sub_AB3820();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v22 - v14;
  if ((a3 & 1) == 0)
  {
    sub_38F70C(a4, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    }

    else
    {
      v18 = *(v11 + 32);
      v18(v13, v9, v10);
      if (sub_AB37F0() == v23 && sub_AB37E0() == a2)
      {
        v18(v15, v13, v10);
LABEL_12:
        v19 = *(v4 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection);
        isa = sub_AB3770().super.isa;
        v21 = [v19 itemAtIndexPath:isa];
        (*(v11 + 8))(v15, v10);

        return v21;
      }

      (*(v11 + 8))(v13, v10);
    }

    sub_AB37C0();
    goto LABEL_12;
  }

  v16 = v23;

  return v16;
}

id sub_407948(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditingSectionedCollection();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_407A08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_407A50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for EditingSectionedCollection.ChangeRecord(uint64_t a1)
{
  result = qword_E055E0;
  if (!qword_E055E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_407B4C(uint64_t a1)
{
  sub_407BD4(319);
  if (v1 <= 0x3F)
  {
    sub_407C58(319);
    if (v2 <= 0x3F)
    {
      sub_AB3820();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_407BD4(uint64_t a1)
{
  if (!qword_E055F0)
  {
    sub_13C80(255, &qword_DEDE20, MPModelObject_ptr);
    sub_AB3820();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_E055F0);
    }
  }
}

void sub_407C58(uint64_t a1)
{
  if (!qword_E055F8)
  {
    sub_AB3820();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_E055F8);
    }
  }
}

void sub_407CC0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  type metadata accessor for EditingSectionedCollection.ChangeRecord(0);
  __chkstk_darwin();
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_57E38(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38, &qword_AF89A0) + 48);
      v13 = *(v4 + 32);
      v13(v8, v10, v3);
      v13(v6, (v10 + v12), v3);
      sub_ABB5D0(1uLL);
      sub_408384(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      sub_AB90E0();
      sub_AB90E0();
      v14 = *(v4 + 8);
      v14(v6, v3);
      v14(v8, v3);
    }

    else
    {
      (*(v4 + 32))(v8, v10, v3);
      sub_ABB5D0(2uLL);
      sub_408384(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      sub_AB90E0();
      (*(v4 + 8))(v8, v3);
    }
  }

  else
  {
    v15 = *v10;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D40, &qword_AF89B8);
    (*(v4 + 32))(v8, v10 + *(v16 + 48), v3);
    sub_ABB5D0(0);
    sub_ABA7A0();
    sub_408384(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    sub_AB90E0();
    (*(v4 + 8))(v8, v3);
  }
}

Swift::Int sub_408044()
{
  sub_ABB5C0();
  sub_407CC0(v1);
  return sub_ABB610();
}

Swift::Int sub_408088(uint64_t a1)
{
  sub_ABB5C0();
  sub_407CC0(v2);
  return sub_ABB610();
}

Swift::Int sub_408110()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_ABB5C0();
  if (v3 == 1)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_ABB5D0(v1);
    sub_ABB5D0(v2);
  }

  return sub_ABB610();
}

void sub_4081A0(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) == 1)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    v3 = *(v1 + 8);
    sub_ABB5D0(0);
    sub_ABB5D0(v2);
    sub_ABB5D0(v3);
  }
}

Swift::Int sub_408210(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_ABB5C0();
  if (v4 == 1)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_ABB5D0(v2);
    sub_ABB5D0(v3);
  }

  return sub_ABB610();
}

uint64_t sub_40829C(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 16);
  if (*(a1 + 16) == 1)
  {
    if (v2)
    {
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      return sub_ABA790() & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = (*a1 == *a2) & ~v2;
    if (a1[1] == a2[1])
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_408330()
{
  result = qword_E05630;
  if (!qword_E05630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05630);
  }

  return result;
}

uint64_t sub_408384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4083CC(uint64_t a1, char *a2)
{
  v56 = a2;
  v3 = sub_AB3820();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin();
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v53 - v6;
  __chkstk_darwin();
  v54 = &v53 - v7;
  __chkstk_darwin();
  v55 = &v53 - v8;
  __chkstk_darwin();
  v10 = &v53 - v9;
  __chkstk_darwin();
  v12 = &v53 - v11;
  type metadata accessor for EditingSectionedCollection.ChangeRecord(0);
  __chkstk_darwin();
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v53 - v15;
  __chkstk_darwin();
  v18 = (&v53 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05638, &unk_B0DE80);
  __chkstk_darwin();
  v20 = &v53 - v19;
  v22 = (&v53 + *(v21 + 56) - v19);
  sub_57E38(a1, &v53 - v19);
  sub_57E38(v56, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v36 = v10;
    sub_57E38(v20, v18);
    v37 = *v18;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D40, &qword_AF89B8) + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v55 = *v22;
      v56 = v12;
      v44 = v57;
      v45 = *(v57 + 32);
      v46 = v18 + v38;
      v47 = v58;
      v45(v12, v46, v58);
      v45(v36, v22 + v38, v47);
      v48 = v55;
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      if (sub_ABA790())
      {
        v49 = v56;
        v35 = sub_AB3780();
        v50 = *(v44 + 8);
        v50(v36, v47);
        v50(v49, v47);

        goto LABEL_15;
      }

      v51 = *(v44 + 8);
      v51(v36, v47);
      v51(v56, v47);

      goto LABEL_18;
    }

    (*(v57 + 8))(v18 + v38, v58);

LABEL_12:
    sub_12E1C(v20, &qword_E05638, &unk_B0DE80);
LABEL_19:
    v35 = 0;
    return v35 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_57E38(v20, v14);
    v39 = swift_getEnumCaseMultiPayload();
    v41 = v57;
    v40 = v58;
    if (v39 == 2)
    {
      (*(v57 + 32))(v5, v22, v58);
      v35 = sub_AB3780();
      v42 = *(v41 + 8);
      v42(v5, v40);
      v42(v14, v40);
      goto LABEL_15;
    }

    (*(v57 + 8))(v14, v58);
    goto LABEL_12;
  }

  sub_57E38(v20, v16);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38, &qword_AF89A0) + 48);
  v25 = swift_getEnumCaseMultiPayload();
  v27 = v57;
  v26 = v58;
  if (v25 != 1)
  {
    v43 = *(v57 + 8);
    v43(&v16[v24], v58);
    v43(v16, v26);
    goto LABEL_12;
  }

  v28 = *(v57 + 32);
  v29 = v55;
  v28(v55, v22, v58);
  v30 = v54;
  v28(v54, &v16[v24], v26);
  v31 = (v22 + v24);
  v32 = v53;
  v28(v53, v31, v26);
  v33 = sub_AB3780();
  v34 = *(v27 + 8);
  v34(v16, v26);
  if ((v33 & 1) == 0)
  {
    v34(v32, v26);
    v34(v30, v26);
    v34(v29, v26);
LABEL_18:
    sub_132D48(v20);
    goto LABEL_19;
  }

  v35 = sub_AB3780();
  v34(v32, v26);
  v34(v30, v26);
  v34(v29, v26);
LABEL_15:
  sub_132D48(v20);
  return v35 & 1;
}

void sub_4089F0(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

id sub_4089FC(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

double block_copy_helper_131(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_408A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  isa = sub_AB3770().super.isa;
  (*(v6 + 16))(v6, a1, isa, a3);
}

uint64_t sub_408ABC()
{

  return swift_deallocObject();
}

void sub_408B1C(void *a1, uint64_t a2)
{
  v4 = [a1 numberOfSections];
  v8 = 0;
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
  }

  v5 = v4;
  for (i = 0; v5 != i; ++i)
  {
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_8;
    }

    (*(a2 + 16))(a2, [a1 sectionAtIndex:i], i, &v8);
    v7 = v8;
    swift_unknownObjectRelease();
    if (v7 == 1)
    {
      return;
    }
  }
}

void sub_408C14(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = sub_AB3820();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 numberOfItemsInSection:{a1, v7}];
  v18 = 0;
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
  }

  v11 = v10;
  v12 = 0;
  v13 = (v6 + 8);
  while (v11 != v12)
  {
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_8;
    }

    sub_AB37C0();
    isa = sub_AB3770().super.isa;
    (*v13)(v9, v17);
    v15 = [a2 itemAtIndexPath:isa];

    (*(a3 + 16))(a3, v15, v12, &v18);
    LODWORD(isa) = v18;
    swift_unknownObjectRelease();
    ++v12;
    if (isa == 1)
    {
      return;
    }
  }
}

char *sub_408E04(uint64_t a1, uint64_t a2, void *a3)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  *&v3[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_bindings] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_needsVisibleMenuItemsUpdate] = 0;
  v3[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_isBatchUpdating] = 0;
  if (a2)
  {
    v6 = sub_AB9260();
  }

  else
  {
    v6 = 0;
  }

  v34.receiver = v3;
  v34.super_class = type metadata accessor for MediaPickerMenuTableViewController();
  v29 = a3;
  v7 = objc_msgSendSuper2(&v34, "initWithNibName:bundle:", v6, a3);

  v8 = v7;
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v9 = sub_AB9260();

  [v8 setTitle:v9];

  static ApplicationCapabilities.shared.getter(v35);
  v10 = v36;
  v40 = v36;

  sub_70C54(v35);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);
    v30 = 0x8000000000B4ED40;
    v13 = _swiftEmptyArrayStorage;
    v14 = &selRef__authenticateReturningError_;
    v31 = v8;
    while (1)
    {
      v18 = *v12++;
      v17 = v18;
      v19 = [v8 v14[334]];
      v20 = UITraitCollection.mediaPickerConfiguration.getter();

      if (v18 > 3)
      {
LABEL_15:

        goto LABEL_10;
      }

      if ((v17 - 1) >= 2)
      {
        if (v17)
        {
          if (!v20)
          {
            goto LABEL_10;
          }

          MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
          v23 = v22;
          v32[0] = 0xD00000000000001DLL;
          v32[1] = v30;
          __chkstk_darwin();
          *(&v29 - 2) = v32;
          v24 = sub_1B39BC(sub_3040E8, (&v29 - 4), v23);

          v8 = v31;
          if ((v24 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_25;
        }

        if (v20)
        {
          v21 = [v20 pickingForExternalPlayer];
          if (([v20 showsLibraryContent] & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v21 = 0;
        }

        static ApplicationCapabilities.shared.getter(v37);
        sub_70C54(v37);

        if ((v37[2] & 1) != 0 || !v21)
        {
          goto LABEL_25;
        }
      }

      else
      {
        static ApplicationCapabilities.shared.getter(v38);
        sub_70C54(v38);
        if (v39 == 2)
        {

LABEL_25:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_6D820(0, v13[2] + 1, 1);
            v13 = v33;
          }

          v16 = v13[2];
          v15 = v13[3];
          if (v16 >= v15 >> 1)
          {
            sub_6D820((v15 > 1), v16 + 1, 1);
            v13 = v33;
          }

          v13[2] = v16 + 1;
          *(v13 + v16 + 32) = v17;
          goto LABEL_9;
        }

        v25 = sub_ABB3C0();

        if (v25)
        {
          goto LABEL_25;
        }
      }

LABEL_9:
      v14 = &selRef__authenticateReturningError_;
LABEL_10:
      if (!--v11)
      {
        goto LABEL_32;
      }
    }
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_32:
  sub_40AD88(&v40);
  *&v8[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems] = v13;

  v27 = [v8 navigationItem];

  [v27 setLargeTitleDisplayMode:1];
  return v8;
}

uint64_t sub_409324(id a1, unsigned __int8 a2)
{
  if (a2 > 3u)
  {
    goto LABEL_12;
  }

  if (a2 - 1 < 2)
  {
    static ApplicationCapabilities.shared.getter(v9);
    sub_70C54(v9);
    if (v10 == 2)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_ABB3C0();
    }

    return v6 & 1;
  }

  if (a2)
  {
    if (a1)
    {
      MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
      v5 = v4;
      v9[0] = 0xD00000000000001DLL;
      v9[1] = 0x8000000000B4ED40;
      __chkstk_darwin();
      v8[2] = v9;
      v6 = sub_1B39BC(sub_109BB0, v8, v5);

      return v6 & 1;
    }

LABEL_12:
    v6 = 0;
    return v6 & 1;
  }

  if (a1)
  {
    v3 = [a1 pickingForExternalPlayer];
    if (![a1 showsLibraryContent])
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
  }

  static ApplicationCapabilities.shared.getter(v9);
  sub_70C54(v9);
  if ((v9[0] & 0x10000) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 ^ 1;
  }

  return v6 & 1;
}

void sub_409618(__n128 a1)
{
  v2 = v1;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for MediaPickerMenuTableViewController();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setAlwaysBounceVertical:1];

  v5 = [v2 tableView];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  type metadata accessor for LibraryMenuViewController.Cell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_AB9260();
  [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80, &unk_AF9360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  v10 = *ApplicationCapabilities.NotificationNames.supportedTabsDidChange.unsafeMutableAddressor();
  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter();
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v11;
  *(inited + 40) = v12;

  v13 = *ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter();
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v14;
  *(inited + 80) = v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v17 = v13;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_40B060, v16);

  v18 = OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_bindings;
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(v2 + v18) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v18) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  sub_40A7A8();
}

void sub_4098AC(uint64_t a1)
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_needsVisibleMenuItemsUpdate] & 1) == 0)
    {
      Strong[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_needsVisibleMenuItemsUpdate] = 1;
      v10 = Strong;
      sub_60044();
      v16 = sub_ABA150();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      aBlock[4] = sub_40B068;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_132;
      v14 = _Block_copy(aBlock);
      v15 = v10;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_8FFF0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
      sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
      sub_ABABB0();
      v12 = v14;
      v13 = v16;
      sub_ABA160();
      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v8, v5);
      _Block_release(v12);

      Strong = v13;
    }
  }
}

unint64_t sub_409C08(void *a1, __n128 a2)
{
  result = sub_AB37B0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems);
    if (result < *(v5 + 16))
    {
      v6 = *(v5 + result + 32);
      v7 = sub_AB9260();
      isa = sub_AB3770().super.isa;
      v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:isa];

      type metadata accessor for LibraryMenuViewController.Cell();
      v10 = swift_dynamicCastClassUnconditional();
      v11 = sub_AB9260();

      v12 = [objc_opt_self() _systemImageNamed:v11];

      v13 = *&v10[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol];
      *&v10[OBJC_IVAR____TtCC16MusicApplication25LibraryMenuViewController4Cell_symbol] = v12;
      v14 = v12;

      sub_1F0C44();
      sub_1417AC(v6);
      v15 = sub_1F13DC();
      v16 = sub_AB9260();

      [v15 setText:v16];

      [v10 setAccessoryType:1];
      return v10;
    }
  }

  __break(1u);
  return result;
}

char *sub_40A1F0(id a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        if (qword_DE68A8 != -1)
        {
          swift_once();
        }

        v19 = byte_E70F20;
        v20 = qword_E70F28;
        v21 = unk_E70F30;
        v22 = type metadata accessor for JSTabViewController(0);
        v23 = objc_allocWithZone(v22);
        *&v23[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton] = 0;
        v24 = &v23[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
        *v24 = v19;
        *(v24 + 1) = v20;
        *(v24 + 2) = v21;
        v46.receiver = v23;
        v46.super_class = v22;
        swift_bridgeObjectRetain_n();
        v9 = objc_msgSendSuper2(&v46, "init");
        goto LABEL_23;
      }

      v35 = objc_allocWithZone(type metadata accessor for PlaylistsViewController(0));
      v26 = sub_48DDCC(0, 0, 0, 0, 0);
    }

    else
    {
      if (a2 == 3)
      {
        if (qword_DE68A0 != -1)
        {
          swift_once();
        }

        v3 = byte_E70F08;
        v4 = qword_E70F10;
        v5 = unk_E70F18;
        v6 = type metadata accessor for JSTabViewController(0);
        v7 = objc_allocWithZone(v6);
        *&v7[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton] = 0;
        v8 = &v7[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
        *v8 = v3;
        *(v8 + 1) = v4;
        *(v8 + 2) = v5;
        v45.receiver = v7;
        v45.super_class = v6;
        swift_bridgeObjectRetain_n();
        v9 = objc_msgSendSuper2(&v45, "init");
        goto LABEL_23;
      }

      type metadata accessor for SearchLandingViewController();
      v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05688, &qword_B0DEB8));
      v26 = sub_41D8C0(v33);
    }

LABEL_28:
    v17 = v26;
    goto LABEL_29;
  }

  if (!a2)
  {
    if (a1 && (([a1 alwaysShowSearchBarInLibrary] & 1) != 0 || (MPMediaPickerConfiguration.supportsCatalogContent.getter() & 1) == 0))
    {
      v36 = objc_allocWithZone(type metadata accessor for LibraryViewController());
      v37 = sub_F480C();
      v38 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05690, &qword_B0DEC0));
      v26 = sub_41DF98(v37);
    }

    else
    {
      v25 = objc_allocWithZone(type metadata accessor for LibraryViewController());
      v26 = sub_F480C();
    }

    goto LABEL_28;
  }

  if (a2 == 1)
  {
    if (qword_DE6D98 != -1)
    {
      swift_once();
    }

    v10 = byte_E0C3B0;
    v12 = qword_E0C3B8;
    v11 = unk_E0C3C0;
    v13 = objc_allocWithZone(type metadata accessor for JSListenNowTabViewController(0));
    *&v13[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton] = 0;
    v14 = &v13[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
    *v14 = v10;
    *(v14 + 1) = v12;
    *(v14 + 2) = v11;
    v44.receiver = v13;
    v44.super_class = type metadata accessor for JSTabViewController(0);
    swift_bridgeObjectRetain_n();
    v15 = objc_msgSendSuper2(&v44, "init");
    v16 = sub_AB9260();

    [v15 setTitle:v16];

    v17 = v15;
    v18 = [v17 navigationItem];
    [v18 _setSupportsTwoLineLargeTitles:1];
    goto LABEL_24;
  }

  if (qword_DE6898 != -1)
  {
    swift_once();
  }

  v27 = byte_E70EF0;
  v28 = qword_E70EF8;
  v29 = unk_E70F00;
  v30 = type metadata accessor for JSTabViewController(0);
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton] = 0;
  v32 = &v31[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
  *v32 = v27;
  *(v32 + 1) = v28;
  *(v32 + 2) = v29;
  v43.receiver = v31;
  v43.super_class = v30;
  swift_bridgeObjectRetain_n();
  v9 = objc_msgSendSuper2(&v43, "init");
LABEL_23:
  v17 = v9;
  v18 = sub_AB9260();

  [v17 setTitle:v18];

LABEL_24:
LABEL_29:
  v39 = v17;
  sub_1417AC(a2);
  v40 = sub_AB9260();

  [v39 setTitle:v40];

  v41 = sub_AB9260();

  [v39 setPlayActivityFeatureName:v41];

  return v39;
}

void sub_40A7A8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_needsVisibleMenuItemsUpdate;
  if (v1[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_needsVisibleMenuItemsUpdate] == 1 && [v1 isViewLoaded] && (v1[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_isBatchUpdating] & 1) == 0)
  {
    v35 = OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_isBatchUpdating;
    v1[v2] = 0;
    static ApplicationCapabilities.shared.getter(v40);
    v3 = v41;
    v45 = v41;

    sub_70C54(v40);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      v36 = 0x8000000000B4ED40;
      v6 = _swiftEmptyArrayStorage;
      v7 = &selRef__authenticateReturningError_;
      while (1)
      {
        v11 = *v5++;
        v10 = v11;
        v12 = [v1 v7[334]];
        v13 = UITraitCollection.mediaPickerConfiguration.getter();

        if (v11 > 3)
        {
LABEL_15:

          goto LABEL_10;
        }

        if ((v10 - 1) >= 2)
        {
          if (v10)
          {
            if (!v13)
            {
              goto LABEL_10;
            }

            MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
            v16 = v15;
            v37 = &v34;
            v38[0] = 0xD00000000000001DLL;
            v38[1] = v36;
            __chkstk_darwin();
            *(&v34 - 2) = v38;
            v17 = sub_1B39BC(sub_3040E8, (&v34 - 4), v16);

            if ((v17 & 1) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_25;
          }

          if (v13)
          {
            v14 = [v13 pickingForExternalPlayer];
            if (([v13 showsLibraryContent] & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v14 = 0;
          }

          static ApplicationCapabilities.shared.getter(v42);
          sub_70C54(v42);

          if ((v42[2] & 1) != 0 || !v14)
          {
            goto LABEL_25;
          }
        }

        else
        {
          static ApplicationCapabilities.shared.getter(v43);
          sub_70C54(v43);
          if (v44 == 2)
          {

LABEL_25:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = v6;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_6D820(0, v6[2] + 1, 1);
              v6 = v39;
            }

            v9 = v6[2];
            v8 = v6[3];
            if (v9 >= v8 >> 1)
            {
              sub_6D820((v8 > 1), v9 + 1, 1);
              v6 = v39;
            }

            v6[2] = v9 + 1;
            *(v6 + v9 + 32) = v10;
            goto LABEL_9;
          }

          v18 = sub_ABB3C0();

          if (v18)
          {
            goto LABEL_25;
          }
        }

LABEL_9:
        v7 = &selRef__authenticateReturningError_;
LABEL_10:
        if (!--v4)
        {
          goto LABEL_32;
        }
      }
    }

    v6 = _swiftEmptyArrayStorage;
LABEL_32:
    sub_40AD88(&v45);
    v20 = *&v1[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems];

    sub_12D5F0(v21, v6);
    if (v22)
    {
    }

    else
    {
      v1[v35] = 1;
      v23 = [v1 tableView];
      if (v23)
      {
        v24 = v23;
        v38[0] = v20;
        v39 = v6;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05698, &qword_B0DEC8);
        v26 = sub_36A00(&qword_E056A0, &qword_E05698, &qword_B0DEC8, &protocol conformance descriptor for [A]);
        v27 = sub_40ADF0();
        Collection<>.compare<A>(with:comparator:)(&v39, 0, 0, v25, v25, v26, v26, v27, v28);
        v30 = v29;
        v31 = swift_allocObject();
        *(v31 + 16) = v1;
        *(v31 + 24) = v6;
        v32 = swift_allocObject();
        *(v32 + 16) = v1;
        v33 = v1;
        UITableView.performBatchUpdates<A>(using:modelUpdateHandler:forSectionAt:completion:)(v30, sub_40AE84, v31, 0, sub_40AF04, v32, &type metadata for TabIdentifier, v27);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_40ACE4(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MediaPickerMenuTableViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_40AD88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E05698, &qword_B0DEC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_40ADF0()
{
  result = qword_E056A8;
  if (!qword_E056A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E056A8);
  }

  return result;
}

uint64_t sub_40AE44()
{

  return swift_deallocObject();
}

double sub_40AE84()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems) = *(v0 + 24);

  return result;
}

uint64_t sub_40AECC()
{

  return swift_deallocObject();
}

void sub_40AF04()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_isBatchUpdating);
  *(v1 + OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_isBatchUpdating) = 0;
  if (v2 == 1)
  {
    sub_40A7A8();
  }
}

void sub_40AF40(__n128 a1)
{
  v2 = v1;
  v3 = sub_AB37B0();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication34MediaPickerMenuTableViewController_menuItems];
  if (v3 >= *(v4 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = *(v4 + v3 + 32);
  v6 = [v1 traitCollection];
  v7 = UITraitCollection.mediaPickerConfiguration.getter();

  v8 = sub_40A1F0(v7, v5);
  v9 = [v2 navigationController];
  [v9 pushViewController:v8 animated:1];
}

uint64_t sub_40B028()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_132(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *sub_40B0A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = 0;
  v6 = a1 + 240;
  v70 = _swiftEmptyArrayStorage;
  v71 = a1 + 240;
  do
  {
    v7 = (v6 + 240 * v5);
    v8 = v5;
    while (1)
    {
      if (v8 >= v4)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
      }

      v12 = *(v7 - 72);
      v13 = *(v7 - 40);
      v97 = *(v7 - 56);
      v98 = v13;
      v99 = *(v7 - 24);
      v14 = *(v7 - 136);
      v15 = *(v7 - 104);
      v93 = *(v7 - 120);
      v94 = v15;
      v95 = *(v7 - 88);
      v96 = v12;
      v91 = *(v7 - 152);
      v92 = v14;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_41;
      }

      v16 = *(v7 - 72);
      v17 = *(v7 - 40);
      v81 = *(v7 - 56);
      v82 = v17;
      v18 = *(v7 - 136);
      v19 = *(v7 - 104);
      v77 = *(v7 - 120);
      v78 = v19;
      v20 = *(v7 - 104);
      v21 = *(v7 - 72);
      v79 = *(v7 - 88);
      v80 = v21;
      v22 = *(v7 - 136);
      v75 = *(v7 - 152);
      v76 = v22;
      v23 = *(v7 - 40);
      v73[6] = v81;
      v73[7] = v23;
      v73[2] = v77;
      v73[3] = v20;
      v73[4] = v79;
      v73[5] = v16;
      v25 = *(v7 - 2);
      v24 = *(v7 - 1);
      v26 = *v7;
      LOBYTE(v83) = *(v7 - 24);
      *(&v83 + 1) = v25;
      *&v84 = v24;
      BYTE8(v84) = v26;
      v74 = *(v7 - 24);
      v73[0] = v75;
      v73[1] = v18;
      if (sub_40F03C(v73) == 1)
      {
        break;
      }

      UIScreen.Dimensions.size.getter();
      v9 = v25;
      v10 = v24;
      v11 = v26;
LABEL_5:
      sub_2BA40(v9, v10, v11);
      sub_40F044(&v91, v90);
      sub_40F07C(&v75);
LABEL_6:
      ++v8;
      v7 += 240;
      if (v5 == v4)
      {
        goto LABEL_19;
      }
    }

    UIScreen.Dimensions.size.getter();
    if (!v26)
    {
      v9 = v25;
      v10 = v24;
      v11 = 0;
      goto LABEL_5;
    }

    v29 = *v27;
    v28 = v27[1];
    sub_2BA40(v25, v24, 1);
    sub_40F044(&v91, v90);

    sub_40F07C(&v75);
    if (!v28)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v70 = sub_6B0F0(0, *(v70 + 2) + 1, 1, v70);
    }

    v6 = v71;
    v32 = *(v70 + 2);
    v31 = *(v70 + 3);
    if (v32 >= v31 >> 1)
    {
      v70 = sub_6B0F0((v31 > 1), v32 + 1, 1, v70);
    }

    *(v70 + 2) = v32 + 1;
    v33 = &v70[16 * v32];
    *(v33 + 4) = v29;
    *(v33 + 5) = v28;
  }

  while (v5 != v4);
LABEL_19:
  v34 = objc_opt_self();
  isa = sub_AB9740().super.isa;
  v36 = [v34 predicateForContactsWithIdentifiers:isa];

  sub_40DC5C();
  v37 = sub_40DEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEA10, &unk_AFF5C0);
  v38 = sub_AB9740().super.isa;
  *&v75 = 0;
  v69 = v36;
  v39 = [v37 unifiedContactsMatchingPredicate:v36 keysToFetch:v38 error:&v75];
  v40 = v75;

  if (v39)
  {
    sub_13C80(0, &qword_E05950, CNContact_ptr);
    v72 = sub_AB9760();
  }

  else
  {
    sub_AB3050();

    swift_willThrow();

    v72 = 0;
  }

  if (!v4)
  {
    goto LABEL_39;
  }

  v41 = 0;
  if (v72)
  {
    v42 = v72;
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

  v43 = a1 + 88;
  v68 = a1 + 88;
  while (2)
  {
    v44 = (v43 + 240 * v41);
    v45 = v41;
    while (2)
    {
      if (v45 >= v4)
      {
        goto LABEL_42;
      }

      v52 = *(v44 + 120);
      v53 = *(v44 + 152);
      v87 = *(v44 + 136);
      v88 = v53;
      v89 = *(v44 + 168);
      v54 = *(v44 + 56);
      v55 = *(v44 + 88);
      v83 = *(v44 + 72);
      v84 = v55;
      v85 = *(v44 + 104);
      v86 = v52;
      v56 = *(v44 - 8);
      v57 = *(v44 + 24);
      v79 = *(v44 + 8);
      v80 = v57;
      v81 = *(v44 + 40);
      v82 = v54;
      v58 = *(v44 - 40);
      v75 = *(v44 - 56);
      v76 = v58;
      v77 = *(v44 - 24);
      v78 = v56;
      v41 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_43;
      }

      v59 = v44[7];
      v97 = v44[6];
      v98 = v59;
      v99 = *(v44 + 128);
      v60 = v44[3];
      v93 = v44[2];
      v94 = v60;
      v61 = v44[5];
      v95 = v44[4];
      v96 = v61;
      v62 = v44[1];
      v91 = *v44;
      v92 = v62;
      if (sub_40F03C(&v91) != 1)
      {
        UIScreen.Dimensions.size.getter();
        v46 = *(v2 + 24);
        v47 = objc_allocWithZone(MPStoreItemMetadata);
        sub_2B990(&v75, v73);
        v48 = sub_AB8FD0().super.isa;
        v49 = [v47 initWithStorePlatformDictionary:v48];

        v50 = [objc_opt_self() activeAccount];
        v51 = [v46 modelObjectWithStoreItemMetadata:v49 userIdentity:v50];

        goto LABEL_29;
      }

      UIScreen.Dimensions.size.getter();
      if (v88 != 1)
      {
        goto LABEL_30;
      }

      v90[4] = v63[4];
      v90[5] = v63[5];
      v90[6] = v63[6];
      v90[7] = v63[7];
      v90[0] = *v63;
      v90[1] = v63[1];
      v90[2] = v63[2];
      v90[3] = v63[3];
      v65 = *(&v75 + 1);
      v64 = v75;
      sub_2B990(&v75, v73);

      sub_40DF60(v90, v64, v65, v42);
      v51 = v66;

LABEL_29:
      sub_2B9EC(&v75);
      if (!v51)
      {
LABEL_30:
        ++v45;
        v44 += 15;
        if (v41 == v4)
        {
          goto LABEL_39;
        }

        continue;
      }

      break;
    }

    sub_AB9730();
    v43 = v68;
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    if (v41 != v4)
    {
      continue;
    }

    break;
  }

LABEL_39:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_40B74C(uint64_t a1)
{
  v2 = v1;
  v14 = a1;
  v13 = sub_ABA140();
  v3 = *(v13 - 8);
  __chkstk_darwin();
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA100();
  __chkstk_darwin();
  sub_AB7C50();
  __chkstk_darwin();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 104) = sub_965E8(_swiftEmptyArrayStorage);
  v6 = sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12[1] = "contactKeyDescriptors";
  v12[2] = v6;
  sub_AB7C30();
  v15 = _swiftEmptyArrayStorage;
  sub_11533C(&qword_DED790, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270, &unk_B0BF10);
  sub_809E0(&qword_DED7A0, &qword_E01270, &unk_B0BF10);
  sub_ABABB0();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v1 + 112) = sub_ABA180();
  *(v1 + 120) = 0;
  v7 = [objc_allocWithZone(NSOperationQueue) init];
  v8 = sub_AB9260();
  [v7 setName:v8];

  [v7 setQualityOfService:9];
  v9 = v14;
  [v7 setMaxConcurrentOperationCount:*(v14 + 16)];
  *(v2 + 88) = v9;
  *(v2 + 96) = v7;
  v10 = v7;
  sub_40BA7C(0);

  return v2;
}

void sub_40BA7C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = *(v1 + 88);
  }

  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v60 = v3 + 56;
  v61 = v3;
  v58 = v1;
  v62 = v8;
  if (v7)
  {
    while (1)
    {
LABEL_11:
      v11 = *(v3 + 48) + 24 * (__clz(__rbit64(v7)) | (v9 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      swift_beginAccess();
      v15 = *(v2 + 104);
      v66 = v14;
      v67 = v13;
      if (!*(v15 + 16))
      {
        swift_endAccess();
        sub_2BA40(v12, v13, v14);
        v64 = 0;
        v65 = 0;
        v63 = -1;
        goto LABEL_18;
      }

      sub_2BA40(v12, v13, v14);
      v16 = sub_2EC170(v12, v13, v14);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = *(v15 + 56) + 24 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      swift_endAccess();
      if (v21)
      {
        v63 = 1;
        v64 = v20;
        sub_9AEC0(v19, v20, 1);
        v65 = v19;

        v14 = v66;
        goto LABEL_17;
      }

LABEL_33:
      v7 &= v7 - 1;
      sub_13CC8(v12, v67, v66);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    swift_endAccess();
    v64 = 0;
    v65 = 0;
    v63 = -1;
LABEL_17:
    v13 = v67;
LABEL_18:
    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    *(v22 + 24) = v12;
    *(v22 + 32) = v13;
    *(v22 + 40) = v14;
    if (v14)
    {
      v23 = objc_allocWithZone(type metadata accessor for SocialOnboardingContactsMatchingRequestOperation());
      sub_2BA40(v12, v13, 1);
      sub_2BA40(v12, v13, 1);

      v24 = sub_304138(v12);
      v25 = swift_allocObject();
      *(v25 + 16) = sub_40FF90;
      *(v25 + 24) = v22;
      *(v25 + 32) = v12;
      *(v25 + 40) = v13;
      *(v25 + 48) = 1;
      queue = *&v24[OBJC_IVAR____TtC16MusicApplication48SocialOnboardingContactsMatchingRequestOperation_accessQueue];
      v26 = swift_allocObject();
      v26[2] = v24;
      v26[3] = sub_40FFA4;
      v26[4] = v25;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_41001C;
      *(v27 + 24) = v26;
      aBlock[4] = sub_2D4D0;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1822E0;
      aBlock[3] = &block_descriptor_75_2;
      v28 = _Block_copy(aBlock);
      sub_2BA40(v12, v67, 1);

      v29 = v24;

      dispatch_sync(queue, v28);

      _Block_release(v28);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_38;
      }

      v2 = v58;
      v14 = v66;
      v13 = v67;
    }

    else
    {
      v31 = swift_allocObject();
      *(v31 + 16) = sub_40FF90;
      *(v31 + 24) = v22;
      *(v31 + 32) = v12;
      *(v31 + 40) = v13;
      *(v31 + 48) = 0;
      v32 = type metadata accessor for SocialOnboardingNetworkFriendsMatchingRequestOperation();
      v33 = objc_allocWithZone(v32);
      *&v33[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_matchedFriends] = 0;
      v34 = &v33[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_networkIdentifier];
      *v34 = v12;
      *(v34 + 1) = v13;
      v35 = &v33[OBJC_IVAR____TtC16MusicApplication54SocialOnboardingNetworkFriendsMatchingRequestOperation_responseHandler];
      *v35 = sub_410084;
      v35[1] = v31;
      sub_2BA40(v12, v13, 0);
      sub_2BA40(v12, v13, 0);
      sub_2BA40(v12, v13, 0);
      v68.receiver = v33;
      v68.super_class = v32;

      v29 = objc_msgSendSuper2(&v68, "init");
    }

    swift_beginAccess();
    sub_2BA40(v12, v13, v14);
    v36 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v2 + 104);
    v38 = v69;
    *(v2 + 104) = 0x8000000000000000;
    v39 = sub_2EC170(v12, v13, v14);
    v41 = v38[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      goto LABEL_37;
    }

    v45 = v40;
    if (v38[3] >= v44)
    {
      v47 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = v39;
        sub_330500();
        v39 = v57;
      }

      v8 = v62;
      v48 = v69;
      if ((v45 & 1) == 0)
      {
LABEL_26:
        v48[(v39 >> 6) + 8] |= 1 << v39;
        v49 = v48[6] + 24 * v39;
        *v49 = v12;
        *(v49 + 8) = v67;
        *(v49 + 16) = v66;
        v50 = v48[7] + 24 * v39;
        *v50 = v47;
        *(v50 + 8) = v36;
        *(v50 + 16) = 0;
        v51 = v48[2];
        v43 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v43)
        {
          goto LABEL_39;
        }

        v48[2] = v52;
        goto LABEL_32;
      }
    }

    else
    {
      sub_32604C(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_2EC170(v12, v13, v14);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_40;
      }

      v8 = v62;
      v47 = v65;
      v48 = v69;
      if ((v45 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v53 = v48[7] + 24 * v39;
    v54 = *v53;
    v55 = *(v53 + 8);
    v56 = *(v53 + 16);
    *v53 = v47;
    *(v53 + 8) = v36;
    *(v53 + 16) = 0;
    sub_9AF20(v54, v55, v56);
    sub_13CC8(v12, v67, v66);
LABEL_32:
    *(v2 + 104) = v48;
    swift_endAccess();
    [*(v2 + 96) addOperation:v36];

    sub_410028(v47, v64, v63);
    v4 = v60;
    v3 = v61;
    goto LABEL_33;
  }

LABEL_7:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      sub_40CCA0();
      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_ABB4C0();
  __break(1u);
}

uint64_t sub_40C158()
{
  [*(v0 + 96) cancelAllOperations];

  sub_17654(*(v0 + 32), *(v0 + 40));
  sub_17654(*(v0 + 48), *(v0 + 56));
  sub_17654(*(v0 + 64), *(v0 + 72));

  return v0;
}

uint64_t sub_40C1C0()
{
  sub_40C158();

  return swift_deallocClassInstance();
}

double sub_40C218(uint64_t a1)
{
  v2 = v1[2];
  v1[2] = a1;
  if (!v2)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!a1 || (, v4 = sub_4CA0A4(v2, a1), , (v4 & 1) == 0))
  {
LABEL_6:
    v5 = v1[4];
    if (v5)
    {
      v6 = v1[5];
      sub_307CC(v1[4], v6);

      v5(v7);

      sub_17654(v5, v6);
    }
  }

  return result;
}

uint64_t sub_40C2EC(uint64_t result)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = result;
  if (v2 != (result & 1))
  {
    if (result)
    {
      v3 = *(v1 + 48);
      if (!v3)
      {
        return result;
      }

      v4 = *(v1 + 56);

      v3(v5);
      v6 = v3;
      v7 = v4;
    }

    else
    {
      v8 = *(v1 + 64);
      if (!v8)
      {
        return result;
      }

      v9 = *(v1 + 72);
      sub_307CC(*(v1 + 64), v9);

      v8(v10);

      v6 = v8;
      v7 = v9;
    }

    return sub_17654(v6, v7);
  }

  return result;
}

void sub_40C3B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 88);
  if (*(v4 + 16) <= *(a1 + 16) >> 3)
  {

    sub_1C4C74(v4);

    v6 = a1;
  }

  else
  {

    v5 = sub_1C5494(v4, a1);

    v6 = v5;
  }

  v7 = 0;
  v8 = v6 + 56;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 56);
  v12 = (v9 + 63) >> 6;
  v46 = v6;
  for (i = v2; v11; v6 = v46)
  {
LABEL_13:
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = *(v6 + 48) + 24 * (v14 | (v7 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      swift_beginAccess();
      v19 = *(v2 + 104);
      v20 = *(v19 + 16);
      sub_2BA40(v16, v17, v18);
      if (v20)
      {
        v21 = sub_2EC170(v16, v17, v18);
        if (v22)
        {
          break;
        }
      }

      swift_endAccess();
      sub_13CC8(v16, v17, v18);
      v6 = v46;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v23 = *(v19 + 56) + 24 * v21;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    swift_endAccess();
    v44 = v26;
    v45 = v24;

    if (v26)
    {
      swift_errorRetain();
    }

    else
    {
      [v24 cancel];
    }

    v2 = i;
    swift_beginAccess();
    v27 = sub_2EC170(v16, v17, v18);
    if (v28)
    {
      v40 = v25;
      v41 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(i + 104);
      *(i + 104) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_330500();
      }

      sub_13CC8(*(*(v30 + 48) + 24 * v41), *(*(v30 + 48) + 24 * v41 + 8), *(*(v30 + 48) + 24 * v41 + 16));
      v31 = *(v30 + 56) + 24 * v41;
      v38 = *(v31 + 8);
      v39 = *v31;
      v32 = *(v31 + 16);
      sub_27C268(v41, v30);
      *(i + 104) = v30;
      sub_9AF20(v39, v38, v32);
      v25 = v40;
    }

    swift_endAccess();
    sub_13CC8(v16, v17, v18);
    sub_9AF20(v25, v45, v44);
  }

  while (1)
  {
LABEL_9:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_13;
    }
  }

  if (*(v2 + 16))
  {

    v35 = sub_40F894(v34, v2);

    v33 = sub_40C218(v35);
  }

  [*(v2 + 96) setMaxConcurrentOperationCount:{*(*(v2 + 88) + 16), v33, v38, v39}];
  v36 = *(v2 + 88);
  if (*(a1 + 16) <= *(v36 + 16) >> 3)
  {
    v48 = *(v2 + 88);

    sub_1C4C74(a1);
    v37 = v48;
  }

  else
  {

    v37 = sub_1C5494(a1, v36);
  }

  sub_40BA7C(v37);
}

double sub_40C754(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a6;
  *(v16 + 32) = a7;
  a8 &= 1u;
  *(v16 + 40) = a8;
  *(v16 + 48) = a1;
  *(v16 + 56) = a4;
  *(v16 + 64) = a2;
  *(v16 + 65) = a3;

  sub_2BA40(a6, a7, a8);

  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_410134, v16);

  return result;
}

double sub_40C884(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    sub_2BA40(a2, a3, a4 & 1);

    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + 104);
    *(v17 + 104) = 0x8000000000000000;
    sub_91774(a5, a6, 1, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
    *(v17 + 104) = v19;
    sub_13CC8(a2, a3, a4 & 1);
    swift_endAccess();
    *(v17 + 24) = a7 & 1;
    *(v17 + 25) = a8 & 1;
    sub_40C9C0(1);
  }

  return result;
}

double sub_40C9C0(char a1)
{
  v3 = sub_AB7C10();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(sub_AB7C50() - 8);
  *&result = __chkstk_darwin().n128_u64[0];
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(v1 + 120);
  *(v1 + 120) = a1;
  if (v10 & 1) == 0 && (a1)
  {
    v14[1] = *(v1 + 112);
    v15 = v8;
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_410150;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_88_0;
    v14[0] = _Block_copy(aBlock);

    sub_AB7C30();
    v16 = _swiftEmptyArrayStorage;
    sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_809E0(&qword_DF06D0, &unk_DE9C30, &qword_AF8920);
    sub_ABABB0();
    v13 = v14[0];
    sub_ABA160();
    (*(v4 + 8))(v6, v3);
    (*(v7 + 8))(v11, v15);
    _Block_release(v13);
  }

  return result;
}

void sub_40CCA0()
{
  swift_beginAccess();
  v1 = 0;
  v2 = *(v0 + 104);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if ((*(*(v2 + 56) + 24 * (v8 | (v7 << 6)) + 16) & 1) == 0)
    {
      v9 = 1;
LABEL_13:
      sub_40C2EC(v9);
      return;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      v9 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
}

Swift::Int sub_40CD70()
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

Swift::Int sub_40CDC4(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();
  return sub_ABB610();
}

BOOL sub_40CE0C(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  sub_AB93F0();
  v2 = sub_ABB610();
  sub_ABB5C0();
  sub_AB93F0();
  return v2 == sub_ABB610();
}

void sub_40CE94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, void, void, __n128), uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!a1 || a2)
  {
    (a3)(0, 0, 0, a2, a5, a6, a7);
  }

  else
  {
    v11 = a7;
    sub_2BA40(a5, a6, a7 & 1);
    v12 = sub_40F180(a1, a5, a6, v11 & 1);
    sub_13CC8(a5, a6, v11 & 1);
    v13 = sub_2F3E7C(v12);

    (a3)(v13, 0, 0, 0);
  }
}

void sub_40CF94(uint64_t a1, char a2, char a3, uint64_t a4, void (*a5)(void, void, void), uint64_t a6, void *a7, uint64_t a8, char a9)
{
  if (a1 && !a4)
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    v18 = a9 & 1;
    while (1)
    {
      v19 = v16;
      if (!v12)
      {
        break;
      }

LABEL_11:
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v21 = (*(v15 + 48) + ((v16 << 13) | (v20 << 7)));
      v23 = v21[2];
      v22 = v21[3];
      v24 = v21[1];
      v81 = *v21;
      v82 = v24;
      v83 = v23;
      v84 = v22;
      v25 = v21[4];
      v26 = v21[5];
      v27 = v21[7];
      v87 = v21[6];
      v88 = v27;
      v85 = v25;
      v86 = v26;
      v28 = v26;
      if (v26)
      {
        v49 = v82;
        v50 = *(&v85 + 1);
        v51 = *(&v82 + 1);
        v53 = v83;
        v64 = v85;
        v65 = v86;
        v66 = v87;
        v67 = v88;
        v60 = v81;
        v61 = v82;
        v62 = v83;
        v63 = v84;
        sub_41009C(&v60);
        v77 = v66;
        v78 = v67;
        v79 = v68;
        v73 = v62;
        v74 = v63;
        v75 = v64;
        v76 = v65;
        v71 = v60;
        v72 = v61;
        v80 = v18;
        v29 = v84;
        v48 = *(&v83 + 1);
        v30 = *(&v84 + 1);
        swift_bridgeObjectRetain_n();
        sub_2B7BC(&v81, v59);

        sub_2BA40(a7, a8, v18);

        v52 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_6CC50(0, *(v17 + 2) + 1, 1, v17);
        }

        v32 = *(v17 + 2);
        v31 = *(v17 + 3);
        v33 = v32 + 1;
        v34 = a7;
        v35 = a8;
        if (v32 >= v31 >> 1)
        {
          v46 = sub_6CC50((v31 > 1), v32 + 1, 1, v17);
          v33 = v32 + 1;
          v34 = a7;
          v35 = a8;
          v17 = v46;
        }

        v15 = a1;
        *(v17 + 2) = v33;
        v36 = &v17[240 * v32];
        *(v36 + 4) = v50;
        *(v36 + 5) = v28;
        *(v36 + 6) = v50;
        *(v36 + 7) = v28;
        v36[64] = v49;
        v37 = *(v59 + 3);
        *(v36 + 65) = v59[0];
        *(v36 + 17) = v37;
        *(v36 + 9) = v51;
        *(v36 + 10) = v53;
        *(v36 + 88) = v71;
        v38 = v72;
        v39 = v73;
        v40 = v74;
        *(v36 + 152) = v75;
        *(v36 + 136) = v40;
        *(v36 + 120) = v39;
        *(v36 + 104) = v38;
        v41 = v76;
        v42 = v77;
        v43 = v78;
        v36[216] = v79;
        *(v36 + 200) = v43;
        *(v36 + 184) = v42;
        *(v36 + 168) = v41;
        v44 = *v70;
        *(v36 + 55) = *&v70[3];
        *(v36 + 217) = v44;
        *(v36 + 28) = v34;
        *(v36 + 29) = v35;
        v18 = v52;
        v36[240] = v52;
        v45 = *&v69[3];
        *(v36 + 241) = *v69;
        *(v36 + 61) = v45;
        *(v36 + 31) = v48;
        *(v36 + 32) = v29;
        *(v36 + 33) = v30;
      }
    }

    while (1)
    {
      v16 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        v47 = sub_2F3E7C(v17);

        (a5)(v47, a2 & 1, a3 & 1, 0);

        return;
      }

      v12 = *(v9 + 8 * v16);
      ++v19;
      if (v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    (a5)(0, 0, 0, a4);
  }
}

Swift::Int sub_40D2F8()
{
  v1 = *(v0 + 16);
  sub_ABB5C0();
  if (v1)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
  }

  return sub_ABB610();
}

uint64_t sub_40D37C(uint64_t a1)
{
  if (*(v1 + 16))
  {
    sub_ABB5D0(1uLL);
    return sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);

    return sub_AB93F0();
  }
}

Swift::Int sub_40D404(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_ABB5C0();
  if (v2)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
  }

  return sub_ABB610();
}

uint64_t sub_40D484(uint64_t *a1, uint64_t *a2)
{
  if (a1[2])
  {
    if (a2[2])
    {
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      return sub_ABA790() & 1;
    }

    return 0;
  }

  if (a2[2])
  {
    return 0;
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  return sub_ABB3C0();
}

double sub_40D53C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_40D594();
  }

  return result;
}

void sub_40D594()
{
  v1 = v0;
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C50();
  v45 = *(v6 - 8);
  __chkstk_darwin();
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7CC0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 112);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v14 = v13;
  v15 = sub_AB7CF0();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v42 = v5;
  v43 = v6;
  v52 = sub_965E8(_swiftEmptyArrayStorage);
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v16 = sub_ABA150();
  v17 = swift_allocObject();
  *(v17 + 16) = &v52;
  *(v17 + 24) = v1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_410190;
  *(v18 + 24) = v17;
  v50 = sub_36C08;
  v51 = v18;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_1822E0;
  v49 = &block_descriptor_98_0;
  v19 = _Block_copy(&aBlock);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v40 = v3;
    v41 = v2;
    v21 = v52;
    v22 = v52 + 64;
    v23 = 1 << *(v52 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v52 + 64);
    v26 = (v23 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v27 = 0;
    v28 = &_swiftEmptySetSingleton;
    if (!v25)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v29 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        if (*(*(v21 + 56) + 24 * (v29 | (v27 << 6))))
        {
          break;
        }

        if (!v25)
        {
          goto LABEL_8;
        }
      }

      v28 = sub_338770(v31, v28);
    }

    while (v25);
LABEL_8:
    while (1)
    {
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v30 >= v26)
      {

        v32 = sub_ABA150();
        v33 = swift_allocObject();
        swift_weakInit();
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *(v34 + 24) = v28;
        v50 = sub_4101D8;
        v51 = v34;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_1B5EB4;
        v49 = &block_descriptor_105_0;
        v35 = _Block_copy(&aBlock);

        v36 = v44;
        sub_AB7C30();
        aBlock = _swiftEmptyArrayStorage;
        sub_11533C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
        sub_809E0(&qword_DF06D0, &unk_DE9C30, &qword_AF8920);
        v37 = v41;
        v38 = v42;
        sub_ABABB0();
        sub_ABA160();
        (*(v40 + 8))(v38, v37);
        (*(v45 + 8))(v36, v43);
        _Block_release(v35);

        return;
      }

      v25 = *(v22 + 8 * v30);
      ++v27;
      if (v25)
      {
        v27 = v30;
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}
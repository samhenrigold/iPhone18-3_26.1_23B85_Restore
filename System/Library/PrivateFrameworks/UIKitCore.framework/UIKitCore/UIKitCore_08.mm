uint64_t sub_188B3461C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleContent);
  if (v1 && [v1 length] > 0)
  {
    return 0;
  }

  if ((*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle) - 1) < 2)
  {
    return 1;
  }

  v3 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider);
  if (v3)
  {
    if ([v3 useLeadingAlignedLargeTitle:*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 72) toolbarStyle:?])
    {
      return 1;
    }
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext);
}

void sub_188B346C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__centerBar);
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode) == 1)
    {
      v11 = MEMORY[0x1E69E7CC0];
      v2 = v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration;
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration);
      if (v3 && (*(v2 + 8) & 1) != 0)
      {
        v4 = v3;
        v5 = v1;
        v6 = sub_188B3461C();

        if ((v6 & 1) != 0 && *v2)
        {
          v7 = *v2;
          MEMORY[0x18CFE2450]();
          if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_18A4A7588();
          }

          sub_18A4A75F8();

          v8 = v11;
          goto LABEL_15;
        }
      }

      else
      {
        v9 = v1;
      }

      v8 = MEMORY[0x1E69E7CC0];
LABEL_15:
      sub_189079C4C(v8);

      return;
    }

    v10 = v1;
    sub_189079C4C(MEMORY[0x1E69E7CC0]);
  }
}

void sub_188B34820()
{
  if (!*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backAction] && ((v3 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backActionItem], *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backActionItem] = 0, v3, (v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonHidden] & 1) != 0) || !*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem] || (v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingItemsSupplementBackItem] & 1) == 0 && sub_188C1D1F8() || (v4 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost]) != 0 && (v5 = *(v4 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView)) != 0 && [v5 _hideNavigationBarBackButton]))
  {
    v6 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
    *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton] = 0;
    if (!v6)
    {
      return;
    }

    v15 = v6;
    [v0 setNeedsLayout];
  }

  else
  {
    v1 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton;
    v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
    if (v2)
    {
      v15 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
    }

    else
    {
      type metadata accessor for ButtonBarButtonVisualProvider();
      v8 = [objc_allocWithZone(v7) init];
      [v8 buttonBarButtonClass];
      swift_getObjCClassMetadata();
      sub_188A34624(0, &qword_1ED48C6B0, off_1E70EB178);
      swift_dynamicCastMetatypeUnconditional();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVisualProvider_];
      [v9 addTarget:v0 action:sel___backButtonAction_ forControlEvents:0x2000];
      [v9 setSpringLoaded_];
      v15 = v9;
      [v15 setVerticallyCentersContents_];
      [v15 _setHostsLayoutEngine_];
      v10 = *&v0[v1];
      *&v0[v1] = v15;
      if (v10 && v15 == v10)
      {
      }

      else
      {
        v11 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonAppearance];
        v15 = v15;
        [v15 setAppearanceData_];
        [v0 setNeedsLayout];
      }
    }

    v12 = v2;
    sub_188C57FA8(v15);

    v13 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem];
    if (v13)
    {
      v14 = v13;
      [v14 _setViewOwner_];
    }
  }
}

uint64_t sub_188B34B5C(unint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections];

  LOBYTE(a1) = sub_188B34B30(a1, v3);

  if ((a1 & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isGeneratingItemGroups;
    v1[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isGeneratingItemGroups] = 1;
    v13 = MEMORY[0x1E69E7CD0];
    v6 = v1;

    sub_188BB5850(v7, v6, &v13);
    v9 = v8;

    *&v6[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionedBarButtonGroups] = v9;

    v10 = v13;
    v11 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_implicitGroups;
    swift_beginAccess();
    *&v6[v11] = v10;

    v1[v5] = 0;
    *&v6[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections] = 0;

    v12 = *&v6[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer];
    if (v12)
    {
      [(_UIButtonBarGroupOrderer *)v12 invalidate];
    }

    sub_18907A694();
  }

  return result;
}

void sub_188B34C9C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups);
  if (v2 >> 62)
  {
    v3 = sub_18A4A7F68();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    if (v3 >= 1)
    {
      v4 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupLayoutMap;
      v5 = v2 & 0xC000000000000001;

      v6 = 0;
      v50 = v3;
      while (1)
      {
        if (v5)
        {
          v7 = sub_188E49AA8(v6, v2);
        }

        else
        {
          v7 = *(v2 + 8 * v6 + 32);
        }

        v8 = v7;
        swift_beginAccess();
        v9 = *(v1 + v4);
        if ((v9 & 0xC000000000000001) != 0)
        {
          if (sub_18A4A8358())
          {
            _s11GroupLayoutCMa();
            swift_dynamicCast();
            v10 = v52;
            goto LABEL_17;
          }
        }

        else if (*(v9 + 16))
        {
          v11 = sub_188B52298(v8);
          if (v12)
          {
            v10 = *(*(v9 + 56) + 8 * v11);
LABEL_17:
            swift_endAccess();
            if (v10)
            {
              v13 = v10;
              v14 = [v8 _owner];
              if (!v14 || (v15 = v14, swift_unknownObjectRelease(), v15 != v13) || (v16 = [v8 _viewNeedsWrapper], v17 = v13, v16))
              {
                v17 = v13;
                if ((v13[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty] & 1) == 0)
                {
                  v13[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty] = 1;
                  Strong = swift_unknownObjectWeakLoadStrong();
                  v17 = v13;
                  if (Strong)
                  {
                    v19 = Strong;
                    v20 = Strong + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate;
                    v21 = swift_unknownObjectWeakLoadStrong();
                    if (v21)
                    {
                      v22 = v21;
                      v23 = *(v20 + 8);
                      v24 = objc_opt_self();
                      if ([v24 _isInAnimationBlockWithAnimationsEnabled])
                      {
                        v25 = 1;
                      }

                      else
                      {
                        v25 = [v24 _isInSystemAnimationBlockWithAnimationsEnabled];
                      }

                      ObjectType = swift_getObjectType();
                      (*(v23 + 8))(v25, ObjectType, v23);
                    }

                    v17 = v19;
                  }
                }
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_18A64B710;
              v28 = *&v13[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group];
              *(inited + 32) = v28;
              v29 = v13;
              v30 = v28;
              sub_188B51F44(inited, v29);

              swift_setDeallocating();
              swift_arrayDestroy();
              v3 = v50;
              v5 = v2 & 0xC000000000000001;
            }

            goto LABEL_7;
          }
        }

        swift_endAccess();
LABEL_7:
        ++v6;

        if (v3 == v6)
        {

          goto LABEL_31;
        }
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

LABEL_31:
  v31 = *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups);
  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
      return;
    }

    goto LABEL_33;
  }

  v32 = sub_18A4A7F68();
  if (v32)
  {
LABEL_33:
    if (v32 < 1)
    {
      goto LABEL_54;
    }

    v33 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupLayoutMap;
    v34 = v31 & 0xC000000000000001;

    v35 = 0;
    v51 = v33;
    while (1)
    {
      if (v34)
      {
        v36 = sub_188E49AA8(v35, v31);
      }

      else
      {
        v36 = *(v31 + 8 * v35 + 32);
      }

      v37 = v36;
      swift_beginAccess();
      v38 = *(v1 + v33);
      if ((v38 & 0xC000000000000001) != 0)
      {
        if (sub_18A4A8358())
        {
          _s11GroupLayoutCMa();
          swift_dynamicCast();
          v39 = v52;
          goto LABEL_46;
        }
      }

      else if (*(v38 + 16))
      {
        v40 = sub_188B52298(v37);
        if (v41)
        {
          v39 = *(*(v38 + 56) + 8 * v40);
LABEL_46:
          swift_endAccess();
          if (v39)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
            v42 = v1;
            v43 = v31;
            v44 = v32;
            v45 = v34;
            v46 = swift_initStackObject();
            *(v46 + 16) = xmmword_18A64B710;
            v47 = *&v39[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group];
            *(v46 + 32) = v47;
            v48 = v39;
            v49 = v47;
            sub_188B51F44(v46, v48);

            swift_setDeallocating();
            v34 = v45;
            v32 = v44;
            v31 = v43;
            v1 = v42;
            v33 = v51;
            swift_arrayDestroy();
          }

          goto LABEL_36;
        }
      }

      swift_endAccess();
LABEL_36:
      ++v35;

      if (v32 == v35)
      {

        return;
      }
    }
  }
}

uint64_t sub_188B351E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 522))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 376);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188B3522C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_18A4A7F68();
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
      result = sub_18A4A7F68();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_188A34360(&qword_1EA930810, &qword_1EA93C6B8, &qword_18A665518, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C6B8, &qword_18A665518);
            v9 = sub_188E4D09C(v13, i, a3);
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
        sub_188A34624(0, &unk_1ED48DBD0, off_1E70E94E8);
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

id sub_188B353E0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overrideSize];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overrideSize] = *a1;
  if (v4 < 0.0)
  {
    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  v7 = ObjectType;
  if (v4 != v6)
  {
    sub_188AEA3E4();
  }

  sub_188B37AF8(v5);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = v8;
  sub_188B3660C(v8);
  v12 = v9;
  sub_188EBF2CC(v9);
  v13 = v10;
  sub_188B36744(v10);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v17 = *(a1 + 56);
  v16 = *(a1 + 64);
  v19 = *(a1 + 72);
  v18 = *(a1 + 80);
  v20 = *(a1 + 88);
  v85[0] = v14;
  v21 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem] = v14;
  if (!v21)
  {
    if (!v14)
    {
      sub_188A3F29C(v85, __dst, &qword_1EA9362D8, &qword_18A650528);
      goto LABEL_12;
    }

    sub_188A3F29C(v85, __dst, &qword_1EA9362D8, &qword_18A650528);
    v21 = 0;
    goto LABEL_10;
  }

  if (v21 != v14)
  {
    sub_188A3F29C(v85, __dst, &qword_1EA9362D8, &qword_18A650528);
    [v21 _setViewOwner_];
LABEL_10:
    [v1 setNeedsLayout];
    goto LABEL_11;
  }

  sub_188A3F29C(v85, __dst, &qword_1EA9362D8, &qword_18A650528);
LABEL_11:

LABEL_12:
  v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonHidden] = v15;
  v84 = v17;
  v22 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backAction];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backAction] = v17;
  sub_188A3F29C(&v84, __dst, &qword_1EA9362E0, &qword_18A650530);

  v83 = v16;
  v23 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalItems];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalItems] = v16;
  sub_188A3F29C(&v83, __dst, &qword_1EA9362E8, &qword_18A650538);

  v82 = v19;
  v24 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backIndicatorImage];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backIndicatorImage] = v19;
  sub_188A3F29C(&v82, __dst, &qword_1EA9362F0, &qword_18A650540);

  [v1 setBackIndicatorMaskImage_];
  if (v20 < 0.0)
  {
    v20 = 0.0;
  }

  v69.receiver = v1;
  v69.super_class = v7;
  objc_msgSendSuper2(&v69, sel_backButtonMaximumWidth);
  if (v20 != v25)
  {
    *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonMaximumWidth] = v20;
    [v1 setNeedsLayout];
  }

  v81 = *(a1 + 96);
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarSections] = v81;
  sub_188A3F29C(&v81, __dst, &qword_1EA9362F8, &qword_18A650548);

  v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingItemsSupplementBackItem] = *(a1 + 104);
  v26 = *(a1 + 112);
  v27 = *(a1 + 120);
  v28 = v26;
  sub_188B35F78(v26, v27);
  v80 = *(a1 + 128);
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarSections] = v80;
  sub_188A3F29C(&v80, __dst, &qword_1EA9362F8, &qword_18A650548);

  v79 = *(a1 + 136);
  v29 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_pinnedTrailingGroup];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_pinnedTrailingGroup] = v79;
  sub_188A3F29C(&v79, __dst, &qword_1EA936300, &qword_18A650550);

  v30 = *(a1 + 192);
  v31 = *(a1 + 224);
  v76 = *(a1 + 208);
  v32 = v76;
  v77 = v31;
  v33 = *(a1 + 224);
  v78 = *(a1 + 240);
  v34 = *(a1 + 160);
  v75[0] = *(a1 + 144);
  v75[1] = v34;
  v35 = *(a1 + 176);
  v37 = *(a1 + 144);
  v36 = *(a1 + 160);
  v38 = v35;
  v75[3] = *(a1 + 192);
  v75[2] = v35;
  v39 = &v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent];
  v40 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent];
  v68[1] = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 16];
  v68[0] = v40;
  v41 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 80];
  v68[6] = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 96];
  v42 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 64];
  v68[5] = v41;
  v68[4] = v42;
  v43 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 48];
  v68[2] = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 32];
  v68[3] = v43;
  *v39 = v37;
  *(v39 + 1) = v36;
  v44 = *(a1 + 240);
  *(v39 + 5) = v33;
  *(v39 + 6) = v44;
  *(v39 + 3) = v30;
  *(v39 + 4) = v32;
  *(v39 + 2) = v38;
  sub_188AEA364(v75, __dst);
  sub_188AEA3B4(v68);
  sub_188EBB620();
  sub_188B35D3C(*(a1 + 256), *(a1 + 264), *(a1 + 272));
  v45 = *(a1 + 273);
  v46 = v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleElementsHidden];
  v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleElementsHidden] = v45;
  if (v46 != (v45 & 1))
  {
    sub_188AED2B0(__src);
    memcpy(__dst, &v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
    memcpy(&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);
    sub_188A3F5FC(__dst, &unk_1EA9362C0, &unk_18A665520);
    [v1 setNeedsLayout];
  }

  v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_useInlineLargeTitleMetrics] = *(a1 + 274);
  v74 = *(a1 + 280);
  v47 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleContent];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleContent] = v74;
  sub_188A3F29C(&v74, __dst, &qword_1EA936308, &qword_18A650558);
  sub_188B36840(v47);

  v72 = *(a1 + 288);
  v73 = *(a1 + 304);
  v48 = v73;
  v49 = &v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleContent];
  v50 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleContent];
  v51 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleContent + 8];
  *v49 = v72;
  v52 = v49[16];
  v49[16] = v48;
  sub_188A3F29C(&v72, __dst, &unk_1EA936310, &unk_18A650560);
  sub_188B4C634(v50, v51, v52);
  sub_188EBBA00();
  sub_188B36A10(*(a1 + 305));
  v71 = *(a1 + 312);
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarSections] = v71;
  sub_188A3F29C(&v71, __dst, &qword_1EA9362F8, &qword_18A650548);

  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle] = *(a1 + 320);
  v70 = *(a1 + 328);
  v53 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_customizationIdentifier];
  v54 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_customizationIdentifier + 8];
  *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_customizationIdentifier] = v70;
  sub_188A3F29C(&v70, __dst, &qword_1EA933140, &qword_18A648D50);
  sub_188B35BEC(v53, v54);

  v55 = &v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins];
  v56 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins + 48];
  __dst[2] = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins + 32];
  __dst[3] = v56;
  *&__dst[4] = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins + 64];
  v57 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins + 16];
  __dst[0] = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins];
  __dst[1] = v57;
  v58 = *(a1 + 360);
  *v55 = *(a1 + 344);
  *(v55 + 1) = v58;
  v59 = *(a1 + 376);
  v60 = *(a1 + 392);
  *(v55 + 2) = v59;
  *(v55 + 3) = v60;
  *(v55 + 8) = *(a1 + 408);
  sub_188B35A44(__dst, *&v59, *&v60, v61);
  v62 = &v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
  v63 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 16];
  __src[0] = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
  __src[1] = v63;
  *(&__src[1] + 13) = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 29];
  v64 = *(a1 + 432);
  *v62 = *(a1 + 416);
  *(v62 + 1) = v64;
  *(v62 + 29) = *(a1 + 445);
  return sub_188B35AD4(__src);
}

double *sub_188B35A44(double *result, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins];
  v6 = *&v4[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins];
  v7 = *result;
  if (*result != v6)
  {
    return [v4 setNeedsLayout];
  }

  a4 = result[2];
  v6 = result[3];
  v7 = v5[3];
  v8 = result[1] == v5[1] && a4 == v5[2];
  if (!v8 || v6 != v7)
  {
    return [v4 setNeedsLayout];
  }

  v6 = v5[4];
  v7 = result[4];
  if (v7 != v6)
  {
    return [v4 setNeedsLayout];
  }

  v6 = v5[5];
  v7 = v5[6];
  a4 = v5[7];
  v10 = result[5] == v6 && result[6] == v7;
  v11 = v10 && result[7] == a4;
  if (!v11 || *(result + 8) != *(v5 + 8))
  {
    return [v4 setNeedsLayout];
  }

  return result;
}

id sub_188B35AD4(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
  if (v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext] != (*a1 & 1) || (v4 = v3[40], v5 = v3[41], v6 = v3[42], v7 = v3[43], v8 = v3[44], result = CGRectEqualToRect(*(a1 + 8), *(v3 + 8)), !result) || v4 != (*(a1 + 40) & 1) || ((v5 ^ *(a1 + 41)) & 1) != 0 || v6 != (*(a1 + 42) & 1) || ((v7 ^ *(a1 + 43)) & 1) != 0 || v8 != (*(a1 + 44) & 1))
  {
    if (v3[40] != (*(a1 + 40) & 1))
    {
      sub_188AEA3E4();
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_188B35BEC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_customizationIdentifier + 8);
  if (!v3)
  {
    if (!a2)
    {
      return;
    }

    v9 = *(v2 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__centerBar);
    if (!v9)
    {
      return;
    }

    v6 = v9;
    v8 = 0;
    goto LABEL_13;
  }

  if (!a2 || (*(v2 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_customizationIdentifier) == a1 ? (v4 = v3 == a2) : (v4 = 0), !v4 && (sub_18A4A86C8() & 1) == 0))
  {
    v5 = *(v2 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__centerBar);
    if (v5)
    {
      v6 = v5;

      v7 = sub_18A4A7258();
      v8 = [objc_opt_self() groupOrdererForCustomizationIdentifier_];

LABEL_13:
      v11 = *&v6[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer];
      *&v6[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer] = v8;
      v10 = v8;
      sub_188B3290C(v11);
    }
  }
}

void sub_188B35D3C(id result, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a3 != 0xFF)
  {
    v5 = a3;
    if (a3)
    {
      v8 = result;
LABEL_5:
      v9 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView;
      v10 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView];
      if (v10)
      {
        v11 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView];
      }

      else
      {
        type metadata accessor for NavigationBarSubtitleView();
        v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = &v12[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_intrinsicContentSizeInvalidationHandler];
        v15 = *&v12[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_intrinsicContentSizeInvalidationHandler];
        v16 = *&v12[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_intrinsicContentSizeInvalidationHandler + 8];
        *v14 = sub_188EC239C;
        v14[1] = v13;
        v11 = v12;

        sub_188A55B8C(v15, v16);

        v17 = *&v4[v9];
        *&v4[v9] = v11;

        v10 = 0;
      }

      v18 = v10;
      sub_188CC4D48(result, a2, v5);
      v19 = v18;
      LOBYTE(v18) = sub_1891E4324(result, a2, v5 & 1);
      sub_188B4C634(result, a2, v5);

      if (v18)
      {
        [v4 setNeedsLayout];
      }

      sub_188B4C634(result, a2, v5);
      return;
    }

    sub_188CCA578(result, a2, 0);
    if ([result length] > 0)
    {
      goto LABEL_5;
    }

    sub_188B4C634(result, a2, v5);
  }

  v20 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView];
  if (v20)
  {
    *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView] = 0;

    [v3 setNeedsLayout];
  }
}

void sub_188B35F78(void *a1, int a2)
{
  v3 = v2 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration;
  v4 = *(v2 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration);
  v5 = *(v2 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration + 8);
  *v3 = a1;
  *(v3 + 8) = a2;
  v12 = a1;
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v8 = a1;
    v9 = v12;
LABEL_11:
    if (*(v3 + 8))
    {
      v10 = v9;
      v11 = sub_188B3461C();

      if (v11)
      {
        sub_188B33CA4();
        sub_188B346C0();
LABEL_15:

        goto LABEL_16;
      }
    }

LABEL_14:
    sub_188B346C0();
    sub_188B33CA4();
    goto LABEL_15;
  }

  sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
  v7 = v12;
  if ((sub_18A4A7C88() & 1) == 0 || ((v5 ^ a2) & 1) != 0 || ((((v5 & 0x100) == 0) ^ ((a2 & 0x100) >> 8)) & 1) == 0)
  {
    v9 = *v3;
    if (!*v3)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v12 = v4;
LABEL_16:
}

id sub_188B360D8(char a1)
{
  if (a1)
  {
    v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] = 1;
  }

  sub_188AED2B0(__src);
  memcpy(__dst, &v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
  memcpy(&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);
  sub_188A3F5FC(__dst, &unk_1EA9362C0, &unk_18A665520);
  return [v1 setNeedsLayout];
}

void sub_188B36178(id a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_documentProperties;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_documentProperties);
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_6;
  }

  v5 = a1;
  if (!v4 || (sub_188A34624(0, &unk_1EA936328, off_1E70E9848), v6 = v4, v5 = v5, v7 = sub_18A4A7C88(), v5, v6, (v7 & 1) == 0))
  {
    [v5 _setWantsIconRepresentationChangedHandler_];
LABEL_6:
    sub_188EBBCE8();
    v8 = *(v2 + v3);
    if (v8)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12[4] = sub_188EC23F4;
      v12[5] = v9;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_188A4A8F0;
      v12[3] = &block_descriptor_107;
      v10 = _Block_copy(v12);
      v11 = v8;

      [v11 _setWantsIconRepresentationChangedHandler_];
      _Block_release(v10);
    }
  }
}

uint64_t sub_188B362F4()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188B36330()
{
  v13 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v1 = [v0 _topBarSections];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for _UIBarSection(0);
    v3 = sub_18A4A7548();

    if (v3 >> 62)
    {
      v4 = sub_18A4A7F68();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 >= 1)
        {
          v5 = 0;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v6 = sub_188E49D3C(v5, v3);
            }

            else
            {
              v6 = *(v3 + 8 * v5 + 32);
            }

            v7 = v6;
            v8 = [v6 preferredPlacement];
            if (v8 <= 2)
            {
              switch(v8)
              {
                case 0:
                  goto LABEL_21;
                case 1:
                  v11 = v7;
                  MEMORY[0x18CFE2450]();
                  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_18A4A7588();
                  }

                  sub_18A4A75F8();

                  goto LABEL_8;
                case 2:
                  v9 = v7;
                  MEMORY[0x18CFE2450]();
                  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_18A4A7588();
                  }

                  sub_18A4A75F8();

                  goto LABEL_8;
              }
            }

            else if (v8 <= 4 && v8 == 3)
            {
LABEL_21:
              v10 = v7;
              MEMORY[0x18CFE2450]();
              if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_18A4A7588();
              }

              sub_18A4A75F8();

              goto LABEL_8;
            }

LABEL_8:
            if (v4 == ++v5)
            {
              goto LABEL_28;
            }
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }

LABEL_28:

    return;
  }

LABEL_30:
  __break(1u);
}

void sub_188B3660C(id a1)
{
  v2 = v1;
  if (a1)
  {
    [a1 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA931080, off_1E70EB108);
    v4 = swift_dynamicCast();
    v5 = v20;
    if (!v4)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__plainItemAppearance;
  v7 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__plainItemAppearance);
  *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__plainItemAppearance) = v5;

  v8 = sub_188EBC854();
  if (v8)
  {
    v9 = v8;
    v10 = *(v2 + v6);
    v11 = v10;
    sub_189079688(v10);
  }

  v12 = sub_188AEAD00();
  if (v12)
  {
    v13 = v12;
    v14 = *(v2 + v6);
    v15 = v14;
    sub_189079688(v14);
  }

  v16 = sub_188AEAF10();
  if (v16)
  {
    v17 = v16;
    v18 = *(v2 + v6);
    v19 = v18;
    sub_189079688(v18);
  }
}

void sub_188B36744(id a1)
{
  if (a1)
  {
    [a1 copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &unk_1EA931080, off_1E70EB108);
    v3 = swift_dynamicCast();
    v4 = v10;
    if (!v3)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonAppearance;
  v6 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonAppearance);
  *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonAppearance) = v4;

  v7 = *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton);
  if (v7)
  {
    v8 = *(v1 + v5);
    v9 = v7;
    [v9 setAppearanceData_];
  }
}

void sub_188B36840(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleContent;
  v4 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleContent];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v4)
  {
    sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
    v5 = v4;
    v6 = sub_18A4A7C88();

    if (v6)
    {
      return;
    }

    v4 = *&v2[v3];
    if (v4)
    {
LABEL_7:
      v8 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleControl;
      v9 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleControl];
      if (v9)
      {
        v10 = v4;
        v7 = v9;
      }

      else
      {
        v11 = objc_allocWithZone(_UINavigationBarTitleControl);
        v12 = v4;
        v13 = [v11 init];
        [v13 setControlAlpha_];
        v7 = v13;
        [v7 setContentAlpha_];
        v14 = *&v2[v8];
        *&v2[v8] = v7;
      }

      v15 = v9;
      v16 = v4;
      v17 = v15;
      [v7 setAttributedTitle_];

      goto LABEL_11;
    }
  }

  v7 = *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleControl];
  *&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleControl] = 0;
LABEL_11:

  v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] = 1;
  sub_188AED2B0(v18);
  memcpy(__dst, &v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
  memcpy(&v2[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], v18, 0x20AuLL);
  sub_188A3F5FC(__dst, &unk_1EA9362C0, &unk_18A665520);
  [v2 setNeedsLayout];
}

id sub_188B36A10(id result)
{
  v2 = v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renderInlineLargeTitle];
  v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renderInlineLargeTitle] = result;
  if (v2 != (result & 1))
  {
    v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] = 1;
    sub_188AED2B0(__src);
    memcpy(__dst, &v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
    memcpy(&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);
    sub_188A3F5FC(__dst, &unk_1EA9362C0, &unk_18A665520);
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_188B36AB8()
{
  if (*(v0 + 80) && (v1 = *(v0 + 88)) != 0)
  {
    v2 = *(v0 + 168);
    v3 = v1;
    [v3 setOverlaysContentView_];
    swift_beginAccess();
    v4 = *(v0 + 344);
    if (!v4)
    {
      v5 = objc_allocWithZone(type metadata accessor for NavigationBarLayout.InsertLayoutData());
      v6 = sub_188B37FA4(0x746954656772614CLL, 0xEA0000000000656CLL, 3, 7);
      v7 = *(v0 + 344);
      *(v0 + 344) = v6;

      v4 = *(v0 + 344);
      if (!v4)
      {
        __break(1u);
        return;
      }

      v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded] = 1;
      v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] = 1;
    }

    v8 = v4;
    sub_188B396E0(v4);
  }

  else
  {
    swift_beginAccess();
    v9 = *(v0 + 344);
    if (!v9)
    {
      return;
    }

    v8 = v9;
    sub_188C12B90(v9);
  }
}

void sub_188B36BE8(void *a1)
{
  v2 = v1;
  v4 = [v1 navigationBar];
  v34 = [v4 traitCollection];

  v5 = [v34 userInterfaceIdiom];
  v6 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_hasIdiom;
  v7 = v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_hasIdiom];
  if (v7)
  {
    if (v5 == -1)
    {
      v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_hasIdiom] = 0;
      goto LABEL_9;
    }
  }

  else if (v5 != -1)
  {
    v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_hasIdiom] = 1;
    v8 = [v2 navigationBar];
    [v8 setNeedsLayout];

    goto LABEL_9;
  }

  v9 = [v34 horizontalSizeClass];
  if (v9 != [a1 horizontalSizeClass] || (v10 = objc_msgSend(v34, sel_verticalSizeClass), v10 != objc_msgSend(a1, sel_verticalSizeClass)))
  {
    sub_188AEC470();
  }

LABEL_9:
  v11 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  sub_188EBED24(v34, a1);

  sub_188AED750();
  v12 = [v2 stack];
  v13 = [v12 topItem];

  if (!v13)
  {
    goto LABEL_17;
  }

  if ((v2[v6] & 1) == 0 || !v7 || ![v13 _changeMayAffectSearchBarPlacementFromTraits_toOtherTraits_])
  {

    goto LABEL_17;
  }

  v14 = v13;
  v15 = [v2 navigationBar];
  v16 = [v15 _effectiveDelegate];

  if (v16)
  {
    if ([v16 respondsToSelector_])
    {
      v17 = [v16 _shouldDisplaySearchBarInlineForEffectiveSearchControllerGivenTopNavigationItem_traitCollection_];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      v17 = 0;
    }
  }

  else
  {
    v17 = [v14 _hasIntegratedSearchBarInNavigationBar];
  }

  v33 = v14;
  v19 = [v2 navigationBar];
  v20 = [v19 _effectiveDelegate];

  if (v20)
  {
    if (([v20 respondsToSelector_] & 1) == 0)
    {

      swift_unknownObjectRelease();
      v21 = 0;
      goto LABEL_29;
    }

    v21 = [v20 _shouldDisplaySearchBarInlineForEffectiveSearchControllerGivenTopNavigationItem_traitCollection_];
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = [v33 _hasIntegratedSearchBarInNavigationBar];
  }

LABEL_29:
  v22 = [v33 _hasIntegratedSearchBarInToolbar];
  if (v22 == [v33 _hasIntegratedSearchBarInToolbarForTraits_] && v17 == v21)
  {

    v18 = v33;
    goto LABEL_18;
  }

  v23 = v33;
  v24 = [v2 navigationBar];
  v25 = [v24 _effectiveDelegate];

  if (!v25)
  {
    v26 = [v23 _searchControllerIfAllowed];
LABEL_36:

    if (v26)
    {
      [v26 _setDisplaysSearchBarItemGroupInline_];
      v27 = [v26 searchBar];
      [v27 _setHostedInlineByNavigationBar_];
      if ((v17 & 1) == 0)
      {
        [v27 _setHostedInlineByToolbar_];
      }

      if ([v26 delegate])
      {
        v28 = swift_dynamicCastObjCProtocolConditional();
        if (v28)
        {
          v29 = v28;
          if ([v28 respondsToSelector_])
          {
            if ((v17 | v22))
            {
              v30 = 2;
            }

            else
            {
              v30 = 1;
            }

            [v29 searchController:v26 didChangeFromSearchBarPlacement:v30];
          }

          if ([v29 respondsToSelector_])
          {
            if (v17)
            {
              v31 = 1;
            }

            else
            {
              v31 = 2;
            }

            swift_unknownObjectRetain();
            v32 = v26;
            [v29 _dci_searchController_didChangeToSearchBarPlacement_];

            swift_unknownObjectRelease_n();
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

        return;
      }
    }

    else
    {
    }

LABEL_17:
    v18 = v34;
LABEL_18:

    return;
  }

  if ([v25 respondsToSelector_])
  {
    v26 = [v25 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  swift_unknownObjectRelease();
}

void sub_188B37218()
{
  v1 = v0;
  v2 = [v0 navigationBar];
  v3 = [v2 subviews];

  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  v4 = sub_18A4A7548();

  v5 = v4;
  if (v4 >> 62)
  {
    v22 = sub_18A4A7F68();
    v5 = v4;
    v6 = v22;
    if (!v22)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = 0;
  v31 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView;
  v32 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
  v8 = v5 & 0xC000000000000001;
  v9 = v5;
  do
  {
    if (v8)
    {
      v10 = sub_188E49300(v7, v5);
    }

    else
    {
      v10 = *(v5 + 8 * v7 + 32);
    }

    v11 = *&v32[v1];
    v12 = v10;
    v13 = v11;
    v14 = sub_18A4A7C88();

    if (v14 & 1) != 0 || (v15 = *(v1 + v31)) != 0 && (v16 = v12, v17 = v15, v18 = sub_18A4A7C88(), v17, v16, (v18))
    {
      v19 = v12;
      v20 = [v1 navigationBar];
      v21 = [v20 window];

      if (v21)
      {

        _UIBarsSetAccessibilityLimits(v19);
      }
    }

    ++v7;

    v5 = v9;
  }

  while (v6 != v7);
LABEL_16:

  v23 = *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizer);
  if (!v23)
  {
    return;
  }

  v24 = v23;
  v25 = [v1 navigationBar];
  v33 = [v25 window];

  if (!v33)
  {
    v26 = objc_opt_self();
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1890DAB8C;
    *(v28 + 24) = v27;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_186;
    v29 = _Block_copy(aBlock);
    v30 = v24;

    [v26 performWithoutAnimation_];

    _Block_release(v29);
    LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

    if ((v30 & 1) == 0)
    {
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }
}

uint64_t sub_188B3761C()
{
  v1 = [v0 stack];
  v2 = [v1 topItem];

  if (!v2)
  {
    goto LABEL_6;
  }

  if (!sub_188B2941C())
  {

LABEL_6:
    v5 = 0;
    return v5 & 1;
  }

  v3 = [v0 stack];
  v4 = [v3 effectiveDisplayModeForItemInCurrentStack_];

  v5 = sub_188B3B828(v4);
  if (v4 == 3)
  {
    v6 = sub_188B9BE44(v2);

    v5 &= v6 != 1;
  }

  else
  {
  }

  return v5 & 1;
}

uint64_t sub_188B376FC(id a1)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  if (([a1 _alwaysUseManualScrollEdgeAppearance] & 1) == 0)
  {
    v4 = a1;
    v5 = [v1 navigationBar];
    v6 = [v5 _effectiveDelegate];

    if (!v6)
    {
      v7 = [v4 _searchControllerIfAllowed];

      if (v7)
      {
        goto LABEL_10;
      }

LABEL_13:
      v8 = 1;
      goto LABEL_14;
    }

    if ([v6 respondsToSelector_])
    {
      v7 = [v6 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
      swift_unknownObjectRelease();

      if (!v7)
      {
        goto LABEL_13;
      }

LABEL_10:
      v8 = [v4 _hidesSearchBarWhenScrollingIfAllowed] ^ 1;
LABEL_14:
      v9 = sub_1890C8B30(a1);

      v3 = v8 & (v9 ^ 1);
      if (_UIBarsApplyChromelessEverywhere())
      {
        goto LABEL_15;
      }

      if (!v3)
      {
        return 0;
      }

      goto LABEL_19;
    }

    swift_unknownObjectRelease();
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  if (_UIBarsApplyChromelessEverywhere())
  {
    v3 = 1;
LABEL_15:
    v10 = [v1 navigationBar];
    v11 = [v10 _effectiveDelegateSupportsScrollEdgeTransitionProgress];

    result = v11;
    if ((v11 & 1) != 0 || !v3)
    {
      return result;
    }
  }

LABEL_19:
  result = v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__forceScrollEdgeAppearance];
  if (a1)
  {
    if ((result & 1) == 0)
    {
      return [a1 _isManualScrollEdgeAppearanceEnabled];
    }
  }

  return result;
}

uint64_t sub_188B37AF8(uint64_t result)
{
  if (result == 102)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (result == 101)
  {
    v2 = 0;
  }

  if (v2 != *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics])
  {
    *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics] = v2;
    v3 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarSections];
    if (!v3)
    {
      goto LABEL_32;
    }

    v27 = v3 & 0xFFFFFFFFFFFFFF8;
    if (!(v3 >> 62))
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_32;
      }

      goto LABEL_10;
    }

LABEL_31:
    result = sub_18A4A7F68();
    v4 = result;
    if (result)
    {
LABEL_10:
      v28 = v3;
      v30 = v3 & 0xC000000000000001;
      v25 = v1;
      v26 = (v3 + 32);

      v5 = 0;
      v3 = &selRef__updateSingleLayerNoMaskFromLayerStack;
      while (1)
      {
        if (v30)
        {
          v6 = sub_188E49D3C(v5, v28);
        }

        else
        {
          if (v5 >= *(v27 + 16))
          {
            goto LABEL_30;
          }

          v6 = v26[v5];
        }

        v7 = v6;
        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v1 = [v6 groups];
        sub_188A34624(0, &qword_1ED48C698, off_1E70EB130);
        v9 = sub_18A4A7548();

        v10 = sub_188EBB20C(v9);

        if (v10 >> 62)
        {
          v11 = sub_18A4A7F68();
          if (v11)
          {
LABEL_19:
            if (v11 < 1)
            {
              goto LABEL_29;
            }

            for (i = 0; i != v11; ++i)
            {
              if ((v10 & 0xC000000000000001) != 0)
              {
                v13 = sub_188E49ABC(i, v10);
              }

              else
              {
                v13 = *(v10 + 8 * i + 32);
              }

              v1 = v13;
              [v13 _updateView];
            }
          }
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            goto LABEL_19;
          }
        }

        if (v5 == v4)
        {

          v1 = v25;
          break;
        }
      }
    }

LABEL_32:
    v29 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarSections];
    if (!v29)
    {
      return result;
    }

    if (v29 >> 62)
    {
LABEL_58:
      result = sub_18A4A7F68();
      v14 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v14 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        return result;
      }
    }

    v15 = 0;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v16 = sub_188E49D3C(v15, v29);
      }

      else
      {
        if (v15 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v16 = *(v29 + 32 + 8 * v15);
      }

      v17 = v16;
      v8 = __OFADD__(v15++, 1);
      if (v8)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v18 = [v16 groups];
      sub_188A34624(0, &qword_1ED48C698, off_1E70EB130);
      v19 = sub_18A4A7548();

      v20 = sub_188EBB20C(v19);

      if (v20 >> 62)
      {
        v21 = sub_18A4A7F68();
        if (v21)
        {
LABEL_44:
          if (v21 < 1)
          {
            goto LABEL_56;
          }

          for (j = 0; j != v21; ++j)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v23 = sub_188E49ABC(j, v20);
            }

            else
            {
              v23 = *(v20 + 8 * j + 32);
            }

            v24 = v23;
            [v23 _updateView];
          }
        }
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_44;
        }
      }

      if (v15 == v14)
      {
      }
    }
  }

  return result;
}

id sub_188B37FA4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight] = 0;
  *&v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight] = 0;
  v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] = 0;
  v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded] = 0;
  *&v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_bottomInsetForTransitionProgress] = 0;
  *&v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight] = 0;
  *&v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight] = 0;
  v10 = &v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
  *v10 = 0;
  v10[8] = 1;
  v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_ignoredForCollapsingBehaviors] = 0;
  v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active] = 0;
  v11 = &v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_identifier];
  *v11 = a1;
  v11[1] = a2;
  v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_priority] = a3;
  v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order] = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_188B380E4(char a1)
{
  v2 = v1;
  v3 = [v1 navigationBar];
  v4 = [v3 titleTextAttributes];

  if (v4)
  {
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v5 = sub_18A4A70A8();
  }

  else
  {
    v5 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v6 = *off_1E70EC920;
  if (*(v5 + 16) && (v7 = sub_188B00858(*off_1E70EC920), (v8 & 1) != 0))
  {
    sub_188A55598(*(v5 + 56) + 32 * v7, &v24);
    sub_188A3F5FC(&v24, &qword_1EA934050, qword_18A64CA10);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    sub_188A3F5FC(&v24, &qword_1EA934050, qword_18A64CA10);
    v9 = [objc_opt_self() labelColor];
    *(&v25 + 1) = sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
    *&v24 = v9;
    sub_188A55538(&v24, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_188B32C50(v23, v6, isUniquelyReferenced_nonNull_native);
  }

  v11 = [v2 navigationBar];
  v12 = [v11 traitCollection];

  v13 = [v12 userInterfaceIdiom];
  type metadata accessor for Key(0);
  sub_188C5E0DC();
  v14 = sub_18A4A7088();
  v15 = [v2 navigationBar];
  v16 = [v15 traitCollection];

  v17 = [v16 userInterfaceIdiom];
  if (v13 == 6)
  {
    v18 = _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(v14, v17, 0);
  }

  else
  {
    v18 = _UINavigationTitleAppearanceAddDefaultTitleAttributes(v14, v17, a1 & 1);
  }

  v19 = v18;

  v20 = sub_18A4A70A8();

  return v20;
}

_OWORD *sub_188B383C0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_188A55538(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_188B38428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v16 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_18A4A7F68();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v14 = sub_18A4A7F68();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (v15)
  {
    goto LABEL_18;
  }

  sub_188AB3790(result, 1);

  return v16(v8, v7, 1, v5);
}

void sub_188B38550(char *a1)
{
  if (a1)
  {
    v3 = *(v1 + 80);
    if (v3)
    {
      v4 = v1;
      type metadata accessor for NavigationBarLargeTitleView();
      v17 = a1;
      v5 = v3;
      v6 = sub_18A4A7C88();

      if (v6)
      {

        if (!*(v4 + 88))
        {
          v14 = [*&v17[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView] layout];
          v15 = *(v4 + 88);
          *(v4 + 88) = v14;
          v16 = v14;

          sub_188B36AB8();
          v13 = v16;
          goto LABEL_13;
        }

LABEL_12:
        v13 = v17;
LABEL_13:

        return;
      }

      v1 = v4;
      v10 = *(v4 + 80);
    }

    else
    {
      v9 = a1;
      v10 = 0;
    }

    *(v1 + 80) = a1;

    v11 = [*&a1[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView] layout];
    v12 = *(v1 + 88);
    *(v1 + 88) = v11;
    v17 = v11;

    sub_188B36AB8();
    goto LABEL_12;
  }

  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;

  sub_188B36AB8();
}

void sub_188B386EC()
{
  swift_beginAccess();
  v1 = *(v0 + 400);
  if (v1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v3 = v1 & 0xC000000000000001;
    v72 = v1 + 32;

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    while (1)
    {
      if (v3)
      {
        v14 = sub_188E4A488(v6, v1);
        v15 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        goto LABEL_13;
      }

      if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v14 = *(v72 + 8 * v6);
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

LABEL_13:
      if (v5)
      {
        v11 = v8;
        v12 = v9;
LABEL_15:
        v16 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

        if (v16 > 0.0)
        {
          LODWORD(i) = 1;
LABEL_44:

          goto LABEL_50;
        }
      }

      else
      {
        v11 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
        if (v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible])
        {
          if (v11 > 0.0)
          {
            v12 = 0.0;
            if ((v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_ignoredForCollapsingBehaviors] & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          v12 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
          if (v12 < v11 && (v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_ignoredForCollapsingBehaviors] & 1) == 0)
          {
LABEL_23:
            v10 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];
            if (v15 == i)
            {
              LODWORD(i) = 0;
              v4 = 1;
            }

            else
            {
              v17 = v6 + 5;
              v5 = v14;
              do
              {
                v18 = v17 - 4;
                if (v3)
                {
                  v14 = sub_188E4A488(v17 - 4, v1);
                  v15 = v17 - 3;
                  if (__OFADD__(v18, 1))
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  if (v18 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_47;
                  }

                  v14 = *(v1 + 8 * v17);
                  v15 = v17 - 3;
                  if (__OFADD__(v18, 1))
                  {
                    goto LABEL_46;
                  }
                }

                if (v5)
                {
                  v4 = 1;
                  goto LABEL_15;
                }

                v19 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
                if (v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] == 1)
                {
                  if (v19 <= 0.0)
                  {
                    goto LABEL_39;
                  }

                  v20 = 0.0;
                  if (v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_ignoredForCollapsingBehaviors])
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v20 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
                  if (v20 >= v19 || (v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_ignoredForCollapsingBehaviors] & 1) != 0)
                  {
LABEL_39:
                    v4 = 1;
                    goto LABEL_5;
                  }
                }

                v10 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];
                ++v17;
                v11 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
                v12 = v20;
                v5 = v14;
              }

              while (v15 != i);
              LODWORD(i) = 0;
              v4 = 1;
              v11 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
              v12 = v20;
            }

            v5 = v14;
            goto LABEL_44;
          }
        }

        v11 = v8;
        v12 = v9;
LABEL_5:
        v13 = *&v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight];

        v5 = 0;
        v7 = v7 + v13;
      }

      v8 = v11;
      v9 = v12;
      v6 = v15;
      if (v15 == i)
      {
        LODWORD(i) = 0;
        goto LABEL_44;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  v4 = 0;
  v5 = 0;
  v7 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v10 = 0.0;
LABEL_50:
  if (vabdd_f64(v10, v12) < 2.22044605e-16)
  {
    v10 = v12;
  }

  if (_UIBarsApplyChromelessEverywhere())
  {
    v21 = *(v0 + 257);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 240);
  if (v22 != 1 || (v21 & 1) != 0)
  {
    v24 = *(v0 + 272);
    if (v24 <= 0)
    {
      v25 = (v0 + 304);
      *(v0 + 304) = 0;
      goto LABEL_85;
    }

    if (v10 <= v12)
    {
      v23 = 0.0;
      if (v21 && (*(v0 + 256) & v4 & 1) == 0)
      {
        v23 = 1.0 - *(v0 + 248);
      }
    }

    else
    {
      v23 = 1.0;
      if (v10 < v11 && (!v21 || *(v0 + 256) == 1))
      {
        v23 = (v10 - v12) / (v11 - v12);
      }
    }
  }

  else
  {
    v23 = 1.0 - *(v0 + 248);
    v24 = *(v0 + 272);
  }

  v25 = (v0 + 304);
  *(v0 + 304) = v23;
  if (v24 >= 2)
  {
    if (*(v0 + 80) && ((swift_beginAccess(), v26 = *(v0 + 344), !v5) ? (v27 = v26 == 0) : v26 ? (v27 = v5 == v26) : (v27 = 0), !v27 ? (v28 = 1) : (v28 = i), ((v22 | v28) & 1) == 0))
    {
      v30 = *(v0 + 104);
      if (v30)
      {
        [v30 setUseExplicitGeometry_];
        v31 = *(v0 + 104);
        if (v31)
        {
          [v31 setBackgroundHeight1_];
          v32 = *(v0 + 104);
          if (v32)
          {
            [v32 setBackgroundHeight2_];
          }
        }
      }
    }

    else
    {
      v29 = *(v0 + 104);
      if (v29)
      {
        [v29 setUseExplicitGeometry_];
      }
    }
  }

LABEL_85:
  if (*(v0 + 80) && (swift_beginAccess(), (v33 = *(v0 + 344)) != 0) && (v34 = *&v33[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight], v34 > 0.0))
  {
    v35 = *&v33[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];
    if (v34 <= v35 && (v36 = 1.0, v35 > 0.0) || (v37 = v35 / v34, v36 = 0.0, fabs(v35 / v34) < 2.22044605e-16))
    {
      v37 = v36;
    }

    *(v0 + 288) = v37;
    v38 = 0.0;
    if ((v33[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] & 1) == 0)
    {
      v38 = *&v33[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
    }

    v39 = _UIUnlerp(v35, v38, v34 - *&v33[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_bottomInsetForTransitionProgress]);
    *(v0 + 296) = _UIClamp_2(v39);
    v40 = *(v0 + 56);
    v41 = v33;
    if (!v40)
    {
      goto LABEL_115;
    }

    v42 = *(v40 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeight);
    *(v40 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeight) = v35;
    if (v35 != v42)
    {
      v69 = *(v40 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
      if (v69)
      {
        v70 = *(v69 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
        if (v70)
        {
          v71 = v41;
          [v70 _contentDidChange];
          v41 = v71;
        }
      }
    }

    if ((v43 = *(v0 + 56)) != 0 && ((v44 = &v43[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange], v46 = *&v43[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange], v45 = *&v43[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange + 8], *v44 = 0.0, v44[1] = v34, v46 != 0.0) || v34 != v45) && (v47 = *&v43[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost]) != 0 && (v48 = *(v47 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView)) != 0)
    {
      v49 = v41;
      v50 = v43;
      [v48 _contentDidChange];
    }

    else
    {
LABEL_115:
    }
  }

  else
  {
    *(v0 + 288) = 0;
    *(v0 + 296) = 0;
    v51 = *(v0 + 56);
    if (v51)
    {
      v52 = *(v51 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeight);
      *(v51 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeight) = 0;
      if (v52 != 0.0)
      {
        v60 = *(v51 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
        if (v60)
        {
          v61 = *(v60 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
          if (v61)
          {
            [v61 _contentDidChange];
          }
        }
      }

      v53 = *(v0 + 56);
      if (v53)
      {
        v54 = (v53 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange);
        v55 = *(v53 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange);
        v56 = *(v53 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange + 8);
        *v54 = 0;
        v54[1] = 0;
        if (v55 != 0.0 || v56 != 0.0)
        {
          v58 = *(v53 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
          if (v58)
          {
            v59 = *(v58 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
            if (v59)
            {
              [v59 _contentDidChange];
            }
          }
        }
      }
    }
  }

  v62 = *(v0 + 128);
  if (v62)
  {
    swift_beginAccess();
    v63 = *(v0 + 352);
    if (v63)
    {
      v64 = *(v63 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight);
    }

    else
    {
      v64 = 0.0;
    }

    [v62 setUnobstructedHeight_];
  }

  if (*(v0 + 24) == 1)
  {

    *(v0 + 312) = 0;
    return;
  }

  v65 = *(v0 + 16);
  if (*(v0 + 272) < 2)
  {
    if (v5)
    {
    }

    else if ((*(v0 + 240) & 1) == 0 && *(v0 + 216) != 1)
    {
      goto LABEL_132;
    }

    v65 = v65 * (1.0 - *v25);
LABEL_132:
    *(v0 + 312) = v65;
    return;
  }

  *(v0 + 312) = v65;
  v66 = *(v0 + 104);
  if (v66)
  {
    v67 = *v25;
    v68 = v66;
    [v68 setBackgroundTransitionProgress_];
  }
}

uint64_t sub_188B38ED0(double a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    swift_beginAccess();
    [v3 updateLayoutData:*(v1 + 328) layoutWidth:a1];
  }

  else
  {
    swift_beginAccess();
    v4 = *(v1 + 328);
    if (v4)
    {
      *(v4 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight) = 0;
      *(v4 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight) = 0;
    }
  }

  v5 = *(v1 + 56);
  if (v5)
  {
    swift_beginAccess();
    v6 = *(v1 + 336);
    if (v6)
    {
      v7 = *(v1 + 168);
      v8 = v5;
      v9 = v6;
      if (v7)
      {
        sub_188C12B90(v6);
      }

      else
      {
        sub_188B396E0(v6);
      }

      v12 = *(v1 + 336);
      if (v12)
      {
        v13 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedHeight;
        v14 = *&v8[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedHeight];
        v15 = v12;
        [v15 setMinimumHeight_];
        [v15 setPreferredHeight_];

LABEL_16:
        if (*(v1 + 128))
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v11 = v5;
    }

    if (*(v1 + 128))
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  swift_beginAccess();
  v10 = *(v1 + 336);
  if (!v10)
  {
    goto LABEL_16;
  }

  *(v10 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight) = 0;
  *(v10 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight) = 0;
  if (*(v1 + 128))
  {
LABEL_17:
    sub_188CE850C();
    goto LABEL_21;
  }

LABEL_19:
  swift_beginAccess();
  v16 = *(v1 + 352);
  if (v16)
  {
    *(v16 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight) = 0;
    *(v16 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight) = 0;
  }

LABEL_21:
  v17 = *(v1 + 136);
  if (v17)
  {
    swift_beginAccess();
    [v17 _updateNavigationBarLayoutInsertDataForSearchBar_collapsibleScopeBar_forLayoutState_];
  }

  else
  {
    swift_beginAccess();
    v27 = *(v1 + 360);
    if (v27)
    {
      *(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight) = 0;
      *(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight) = 0;
      v28 = *(v1 + 368);
      if (v28)
      {
        *(v28 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight) = 0;
        *(v28 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight) = 0;
      }
    }
  }

  v18 = *(v1 + 80);
  if (!v18)
  {
    swift_beginAccess();
    v29 = *(v1 + 344);
    if (v29)
    {
      *(v29 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight) = 0;
      *(v29 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight) = 0;
    }

    goto LABEL_43;
  }

  v19 = *(v1 + 88);
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v33 = *&v18[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    v34 = v18;
    v35 = [v33 layout];
    v36 = *(v1 + 88);
    *(v1 + 88) = v35;
    v37 = v35;

    sub_188B36AB8();
    if (!*(v1 + 88))
    {
      goto LABEL_27;
    }

    result = swift_beginAccess();
    v38 = *(v1 + 344);
    if (!v38)
    {
      __break(1u);
      return result;
    }

    v39 = v38;
    sub_188B396E0(v38);

    v19 = *(v1 + 88);
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  swift_beginAccess();
  [v19 updateLayoutData:*(v1 + 344) layoutWidth:a1];
LABEL_27:
  swift_beginAccess();
  v21 = *(v1 + 344);
  if (v21)
  {
    v22 = 14.0;
    if ((*(v1 + 168) & 1) != 0 && *(v1 + 56))
    {
      v23 = *(v1 + 336);
      v22 = 0.0;
      v24 = 0.0;
      if (v23)
      {
        v24 = *(v23 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
      }

      v25 = 0;
      *(v21 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight) = v24;
      v26 = v24 + 1.0;
      if (*(v21 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight) > v26)
      {
        v26 = *(v21 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
      }

      *(v21 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight) = v26;
    }

    else
    {
      v25 = 1;
    }

    *(v21 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible) = v25;
    *(v21 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_bottomInsetForTransitionProgress) = v22;
    *&v18[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_preferredHeight] = *(v21 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
  }

LABEL_43:
  v30 = *(v1 + 152);
  if (v30)
  {
    swift_beginAccess();
    [v30 updateLayoutData:*(v1 + 376) layoutWidth:a1];
  }

  v31 = *(v1 + 160);
  if (v31)
  {
    swift_beginAccess();
    [v31 updateLayoutData:*(v1 + 384) layoutWidth:a1];
  }

  *(v1 + 32) = 0;
}

void sub_188B39358()
{
  sub_188B38ED0(*(v0 + 224));
  swift_beginAccess();
  v1 = *(v0 + 344);
  v2 = v1;
  if (!v1)
  {
    v2 = *(v0 + 352);
    v3 = v2;
  }

  swift_beginAccess();
  v4 = *(v0 + 232);
  v5 = v1;

  sub_188B3A13C(v6, v2, v4);

  swift_beginAccess();
  v7 = *(v0 + 400);
  if (v7 >> 62)
  {
    v8 = sub_18A4A7F68();
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0.0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = sub_188E4A488(v9, v7);
    }

    else
    {
      v11 = *(v7 + 8 * v9 + 32);
    }

    ++v9;
    v12 = &v11[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
    *v12 = v10;
    *(v12 + 8) = 0;
    v13 = *&v11[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

    v10 = v10 + v13;
  }

  while (v8 != v9);

LABEL_12:
  *(v0 + 40) = 1;
  sub_188B386EC();

  v14 = *(v0 + 400);
  if (v14 >> 62)
  {
    v15 = sub_18A4A7F68();
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return;
    }
  }

  if (v15 < 1)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v16 = 0;
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v20 = sub_188E4A488(v16, v14);
    }

    else
    {
      v20 = *(v14 + 8 * v16 + 32);
    }

    v21 = 0.0;
    if ((v20[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] & 1) == 0)
    {
      v21 = *&v20[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
    }

    ++v16;
    v19 = *&v20[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];

    v18 = v18 + v21;
    v17 = v17 + v19;
  }

  while (v15 != v16);
}

void sub_188B395C4()
{
  if (!*(v0 + 56))
  {
    swift_beginAccess();
    v1 = *(v0 + 336);
    if (!v1)
    {
      return;
    }

    v6 = v1;
    goto LABEL_8;
  }

  swift_beginAccess();
  v1 = *(v0 + 336);
  if (v1 || (v2 = objc_allocWithZone(type metadata accessor for NavigationBarLayout.InsertLayoutData()), v3 = sub_188B37FA4(0x56746E65746E6F43, 0xEB00000000776569, 1, 4), v4 = *(v0 + 336), *(v0 + 336) = v3, v4, (v1 = *(v0 + 336)) != 0))
  {
    v5 = *(v0 + 168);
    v6 = v1;
    if ((v5 & 1) == 0)
    {
      sub_188B396E0(v1);
LABEL_9:

      return;
    }

LABEL_8:
    sub_188C12B90(v1);
    goto LABEL_9;
  }
}

void sub_188B396E0(_BYTE *a1)
{
  if (a1 && (a1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active] & 1) == 0)
  {
    v2 = v1;
    a1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active] = 1;
    swift_beginAccess();
    type metadata accessor for NavigationBarLayout.InsertLayoutData();
    v4 = a1;

    v5 = sub_18A4A7518();

    v6 = *(v2 + 392);
    if (v6 >> 62)
    {
      v7 = sub_18A4A7F68();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = sub_188B32A90;
    v23 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_188B32A00;
    v21 = &block_descriptor_130;
    v8 = _Block_copy(&aBlock);
    v9 = v4;

    v10 = [v5 indexOfObject:v9 inSortedRange:0 options:v7 usingComparator:{1024, v8}];

    _Block_release(v8);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v11 = *(v2 + 392);
      if (!(v11 >> 62))
      {
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    if (sub_18A4A7F68() >= v10)
    {
LABEL_8:
      if ((v10 & 0x8000000000000000) == 0)
      {
        v5 = v9;
        sub_188B380B0(v10, v10, v5);
        swift_endAccess();
        swift_beginAccess();

        v9 = sub_18A4A7518();

        v12 = *(v2 + 400);
        if (!(v12 >> 62))
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_11;
        }

LABEL_22:
        v13 = sub_18A4A7F68();
LABEL_11:
        v22 = sub_188B32B70;
        v23 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v19 = 1107296256;
        v20 = sub_188B32A00;
        v21 = &block_descriptor_32_4;
        v14 = _Block_copy(&aBlock);
        v15 = v5;

        v16 = [v9 indexOfObject:v15 inSortedRange:0 options:v13 usingComparator:{1024, v14}];

        _Block_release(v14);
        if (swift_isEscapingClosureAtFileLocation())
        {
          __break(1u);
        }

        else
        {
          swift_beginAccess();
          v17 = *(v2 + 400);
          if (!(v17 >> 62))
          {
            if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v16)
            {
              goto LABEL_14;
            }

            goto LABEL_25;
          }
        }

        if (sub_18A4A7F68() >= v16)
        {
LABEL_14:
          if ((v16 & 0x8000000000000000) == 0)
          {
            sub_188B380B0(v16, v16, v15);
            swift_endAccess();

            *(v2 + 40) = 0;
            return;
          }

LABEL_26:
          __break(1u);
          return;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }
}

void sub_188B39AB4(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 136);
  if (a1)
  {
    v4 = a1;
    if (v3)
    {
      sub_188A34624(0, &unk_1EA930B78, off_1E70EA620);
      v5 = v3;
      v27 = v4;
      v6 = sub_18A4A7C88();

      if (v6)
      {

        return;
      }

      v11 = *(v2 + 136);
      a1 = v27;
    }

    else
    {
      v11 = 0;
    }

    *(v2 + 136) = v4;
    v10 = a1;

    swift_beginAccess();
    v12 = *(v2 + 360);
    if (!v12)
    {
      v13 = *(v2 + 217);
      inserted = type metadata accessor for NavigationBarLayout.InsertLayoutData();
      v15 = objc_allocWithZone(inserted);
      if (v13)
      {
        v16 = 4;
      }

      else
      {
        v16 = 2;
      }

      v17 = sub_188B37FA4(0x6142686372616553, 0xE900000000000072, v16, 8);
      v18 = *(v2 + 360);
      *(v2 + 360) = v17;

      v19 = *(v2 + 360);
      if (!v19)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      *(v19 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible) = *(v2 + 217);
      v20 = objc_allocWithZone(inserted);
      v21 = sub_188B37FA4(0xD000000000000014, 0x800000018A6ACCA0, 6, 9);
      v22 = *(v2 + 368);
      *(v2 + 368) = v21;

      v23 = *(v2 + 368);
      if (!v23)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      *(v23 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible) = 1;
      v12 = *(v2 + 360);
      if (!v12)
      {
LABEL_28:
        __break(1u);
        return;
      }
    }

    v24 = v12;
    sub_188B396E0(v12);

    v25 = *(v2 + 368);
    if (v25)
    {
      v26 = v25;
      sub_188B396E0(v25);

      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v3)
  {
    *(v1 + 136) = 0;

    swift_beginAccess();
    v7 = *(v1 + 360);
    if (v7)
    {
      v8 = v7;
      sub_188C12B90(v7);
    }

    v9 = *(v2 + 368);
    if (v9)
    {
      v10 = v9;
      sub_188C12B90(v9);
LABEL_23:
    }
  }
}

void sub_188B39D20(void *a1)
{
  v3 = *(v1 + 120);
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v3)
  {
LABEL_6:
    *(v1 + 120) = a1;
    goto LABEL_7;
  }

  v4 = v1;
  v7 = *(v1 + 120);
  sub_188A34624(0, qword_1EA92E678, off_1E70EA0D8);
  v5 = v7;
  v8 = a1;
  v6 = sub_18A4A7C88();

  v3 = v8;
  if ((v6 & 1) == 0)
  {
    v1 = v4;
    v3 = *(v4 + 120);
    goto LABEL_6;
  }

LABEL_7:
}

void sub_188B39DEC(void *a1)
{
  v2 = *(v1 + 160);
  if (a1)
  {
    v3 = a1;
    if (v2)
    {
      v4 = v1;
      sub_188A34624(0, &qword_1EA9304E0, off_1E70EBCB8);
      v5 = v2;
      v20 = v3;
      v6 = sub_18A4A7C88();

      if (v6)
      {

        return;
      }

      v1 = v4;
      v2 = *(v4 + 160);
      a1 = v20;
    }

    *(v1 + 160) = v3;
    v9 = a1;

    v10 = v9;
    v11 = [v10 _layoutPriority];
    if (v11 >= 3)
    {
      v12 = 10;
    }

    else
    {
      v12 = 0xD0B0Au >> (8 * v11);
    }

    swift_beginAccess();
    v13 = *(v1 + 384);
    if (v13 || (v14 = objc_allocWithZone(type metadata accessor for NavigationBarLayout.InsertLayoutData()), v15 = sub_188B37FA4(0x61506D6F74746F42, 0xED0000657474656CLL, v12, 10), v16 = *(v1 + 384), *(v1 + 384) = v15, v16, (v13 = *(v1 + 384)) != 0))
    {
      v17 = v13[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active];
      v18 = v13;
      v19 = v18;
      if (v17 == 1)
      {
        sub_188CC4A88(v18, v12);
      }

      else
      {
        sub_188B396E0(v13);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else if (v2)
  {
    *(v1 + 160) = 0;

    swift_beginAccess();
    v7 = *(v1 + 384);
    if (v7)
    {
      v8 = v7;
      sub_188C12B90(v7);
    }
  }
}

double sub_188B39FF8()
{
  v1 = [v0 navigationBar];
  v2 = [v1 traitCollection];

  sub_188AEC7A4(v2);
  v4 = v3;

  v5 = [v0 navigationBar];
  v6 = [v5 barPosition];

  if (v6 == 3)
  {
    v7 = [v0 navigationBar];
    [v7 _overrideBackgroundExtension];
    v9 = v8;

    if (v9 != 0.0)
    {
      return v9;
    }

    v10 = [v0 navigationBar];
    v11 = [v10 superview];

    if (!v11)
    {
      return 0.0;
    }

    [v11 safeAreaInsets];
    v9 = v12;

    if (v9 > v4)
    {
      return v9;
    }
  }

  return v4;
}

void sub_188B3A13C(unint64_t a1, unint64_t a2, double a3)
{
  if (a1 >> 62)
  {
    goto LABEL_77;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    if (i < 1)
    {
      __break(1u);
      return;
    }

    v7 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      v9 = 0.0;
      v10 = 0.0;
      do
      {
        v12 = sub_188E4A488(v8, a1);
        if ((*(v12 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible) & 1) == 0)
        {
          v9 = v9 + *(v12 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
        }

        ++v8;
        v10 = v10 + *(v12 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
        v11 = v12 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin;
        *v11 = 0;
        *(v11 + 8) = 1;
        swift_unknownObjectRelease();
      }

      while (i != v8);
    }

    else
    {
      v13 = (a1 + 32);
      v9 = 0.0;
      v14 = i;
      v10 = 0.0;
      do
      {
        v16 = *v13;
        if ((*(*v13 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible) & 1) == 0)
        {
          v9 = v9 + *(v16 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
        }

        v10 = v10 + *(v16 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
        v15 = v16 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin;
        *v15 = 0;
        *(v15 + 8) = 1;
        ++v13;
        --v14;
      }

      while (v14);
    }

    if (v10 <= a3)
    {
      if (v7)
      {
        v20 = 0;
        do
        {
          v21 = sub_188E4A488(v20++, a1);
          v22 = *(v21 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
          *(v21 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight) = v22;
          *(v21 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight) = v22;
          swift_unknownObjectRelease();
        }

        while (i != v20);
      }

      else
      {
        v30 = (a1 + 32);
        do
        {
          v31 = *v30++;
          v32 = *(v31 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
          *(v31 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight) = v32;
          *(v31 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight) = v32;
          --i;
        }

        while (i);
      }

      goto LABEL_79;
    }

    if (v9 <= a3)
    {
      v23 = a3 - v9;
      if (v7)
      {
        v24 = 0;
        do
        {
          v27 = sub_188E4A488(v24, a1);
          if (v23 <= 0.0)
          {
            v25 = *(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
            if (*(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible))
            {
              v26 = 0.0;
            }

            else
            {
              v26 = *(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
            }
          }

          else if (*(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible))
          {
            v26 = *(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
            if (v23 < v26)
            {
              v26 = v23;
            }

            v23 = v23 - v26;
            v25 = *(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
          }

          else
          {
            v28 = *(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
            v29 = *(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight) - v28;
            if (v23 < v29)
            {
              v29 = v23;
            }

            v23 = v23 - v29;
            v25 = v28 + v29;
            v26 = v25;
          }

          ++v24;
          *(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight) = v25;
          *(v27 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight) = v26;
          swift_unknownObjectRelease();
        }

        while (i != v24);
      }

      else
      {
        v41 = (a1 + 32);
        do
        {
          v45 = *v41;
          v46 = *(*v41 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible);
          if (v23 <= 0.0)
          {
            v47 = *(v45 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
            *(v45 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight) = v47;
            if (v46)
            {
              *(v45 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight) = 0;
            }

            else
            {
              *(v45 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight) = v47;
            }
          }

          else
          {
            if (*(*v41 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible))
            {
              v44 = *(v45 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
              if (v23 < v44)
              {
                v44 = v23;
              }

              v23 = v23 - v44;
              *(v45 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight) = *(v45 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
            }

            else
            {
              v42 = *(v45 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
              v43 = *(v45 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight) - v42;
              if (v23 < v43)
              {
                v43 = v23;
              }

              v23 = v23 - v43;
              v44 = v42 + v43;
              *(v45 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight) = v44;
            }

            *(v45 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight) = v44;
          }

          ++v41;
          --i;
        }

        while (i);
      }

      return;
    }

    if (v7)
    {
      for (j = 0; j != i; ++j)
      {
        v18 = sub_188E4A488(j, a1);
        if (*(v18 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v19 = *(v18 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
          *(v18 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight) = v19;
          *(v18 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight) = v19;
          swift_unknownObjectRelease();
          a3 = a3 - v19;
        }
      }
    }

    else
    {
      v33 = (a1 + 32);
      v34 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible;
      v35 = i;
      do
      {
        v36 = *v33;
        if ((*(*v33 + v34) & 1) == 0)
        {
          v37 = *(v36 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
          *(v36 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight) = v37;
          *(v36 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight) = v37;
          a3 = a3 - v37;
          v34 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible;
        }

        ++v33;
        --v35;
      }

      while (v35);
    }

    a2 = 0;
    if (a3 < 0.0)
    {
      a3 = 0.0;
    }

    while (v7)
    {
      v38 = sub_188E4A488(a2, a1);
      v39 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_75;
      }

LABEL_57:
      if (v38[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] == 1)
      {
        v40 = *&v38[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
        *&v38[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight] = v40;
        if (v40 <= a3)
        {
          *&v38[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight] = v40;

          a3 = a3 - v40;
        }

        else
        {
          *&v38[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight] = a3;

          a3 = 0.0;
        }
      }

      else
      {
      }

      ++a2;
      if (v39 == i)
      {
        return;
      }
    }

    if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_76;
    }

    v38 = *(a1 + 8 * a2 + 32);
    v39 = a2 + 1;
    if (!__OFADD__(a2, 1))
    {
      goto LABEL_57;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    ;
  }

  v10 = 0.0;
  if (a3 >= 0.0)
  {
LABEL_79:
    if (a2)
    {
      v48 = a3 - v10 + *(a2 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
      *(a2 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight) = v48;
      *(a2 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight) = v48;
    }
  }
}

void sub_188B3A658(void *a1)
{
  v2 = *(v1 + 48);
  if (a1)
  {
    v3 = a1;
    if (v2)
    {
      v4 = v1;
      sub_188A34624(0, &qword_1EA93E8B0, off_1E70EBCB0);
      v5 = v2;
      v15 = v3;
      v6 = sub_18A4A7C88();

      if (v6)
      {

        return;
      }

      v1 = v4;
      v2 = *(v4 + 48);
      a1 = v15;
    }

    *(v1 + 48) = v3;
    v9 = a1;

    swift_beginAccess();
    v10 = *(v1 + 328);
    if (v10 || (v11 = objc_allocWithZone(type metadata accessor for NavigationBarLayout.InsertLayoutData()), v12 = sub_188B37FA4(0x74706D6F7250, 0xE600000000000000, 8, 2), v13 = *(v1 + 328), *(v1 + 328) = v12, v13, (v10 = *(v1 + 328)) != 0))
    {
      v14 = v10;
      sub_188B396E0(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else if (v2)
  {
    *(v1 + 48) = 0;

    swift_beginAccess();
    v7 = *(v1 + 328);
    if (v7)
    {
      v8 = v7;
      sub_188C12B90(v7);
    }
  }
}

void sub_188B3A7F0(void *a1)
{
  v2 = *(v1 + 152);
  if (a1)
  {
    v3 = a1;
    if (v2)
    {
      v4 = v1;
      sub_188A34624(0, &qword_1EA9304E0, off_1E70EBCB8);
      v5 = v2;
      v20 = v3;
      v6 = sub_18A4A7C88();

      if (v6)
      {

        return;
      }

      v1 = v4;
      v2 = *(v4 + 152);
      a1 = v20;
    }

    *(v1 + 152) = v3;
    v9 = a1;

    v10 = v9;
    v11 = [v10 _layoutPriority];
    if (v11 >= 3)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0xE0C08u >> (8 * v11);
    }

    swift_beginAccess();
    v13 = *(v1 + 376);
    if (v13 || (v14 = objc_allocWithZone(type metadata accessor for NavigationBarLayout.InsertLayoutData()), v15 = sub_188B37FA4(0x74656C6150706F54, 0xEA00000000006574, v12, 3), v16 = *(v1 + 376), *(v1 + 376) = v15, v16, (v13 = *(v1 + 376)) != 0))
    {
      v17 = v13[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active];
      v18 = v13;
      v19 = v18;
      if (v17 == 1)
      {
        sub_188CC4A88(v18, v12);
      }

      else
      {
        sub_188B396E0(v13);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else if (v2)
  {
    *(v1 + 152) = 0;

    swift_beginAccess();
    v7 = *(v1 + 376);
    if (v7)
    {
      v8 = v7;
      sub_188C12B90(v7);
    }
  }
}

void sub_188B3A9F4(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 217) != (a1 & 1))
  {
    *(v1 + 217) = v2;
    if (*(v1 + 136))
    {
      swift_beginAccess();
      v4 = *(v1 + 360);
      if (v4)
      {
        v4[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] = v2;
        v5 = v4;
        v6 = v5;
        if (a1)
        {
          v7 = 4;
        }

        else
        {
          v7 = 2;
        }

        sub_188CC4A88(v5, v7);
      }
    }
  }
}

__n128 sub_188B3AA88@<Q0>(id *a1@<X0>, void *a2@<X1>, char a3@<W3>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  swift_beginAccess();
  v12 = *a1;
  if (v12)
  {
    if (a3 == -1)
    {
      v15 = v12;
    }

    else
    {
      if (a3)
      {
        v13 = v12;
LABEL_10:
        v17 = &selRef_titleTextWithSubtitleAttributes;
LABEL_12:
        v18 = [v12 *v17];
        type metadata accessor for Key(0);
        sub_188C5E0DC();
        v19 = sub_18A4A70A8();

        [v12 titlePositionAdjustment];
        v21 = v20;
        v23 = v22;
        goto LABEL_17;
      }

      v16 = v12;
      if ([a2 length] > 0)
      {
        goto LABEL_10;
      }
    }

    v17 = &selRef_titleTextAttributes;
    goto LABEL_12;
  }

  v14 = a3 != -1 && ((a3 & 1) != 0 || [a2 length] > 0);
  v19 = sub_188B380E4(v14);
  v24 = [a4 navigationBar];
  v12 = [v24 _appearanceStorage];

  v21 = 0;
  if (v12)
  {
    v25 = [a4 navigationBar];
    v26 = [v25 _activeBarMetrics];

    [v12 titleVerticalAdjustmentForBarMetrics_];
    v23 = v27;
LABEL_17:

    v28 = &selRef__reloadProperties;
    if (!a5)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v23 = 0;
  v28 = &selRef__reloadProperties;
  if (!a5)
  {
    goto LABEL_21;
  }

LABEL_18:
  v29 = [a5 titleMenuProvider];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1890DAB08;
LABEL_24:
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    goto LABEL_26;
  }

LABEL_21:
  v32 = [a5 v28[264]];
  if (v32)
  {

    v33 = [objc_opt_self() _defaultCommandForAction_];
    if (v33)
    {
      v30 = v33;
      v31 = sub_1890DAB00;
      goto LABEL_24;
    }
  }

  v31 = 0;
  v34 = 0;
LABEL_26:
  v35 = [a5 attributedTitle];
  v36 = [a5 titleView];
  if (a5)
  {
    [a5 _titleMinimumMargins];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
  }

  else
  {
    v38 = 0;
    v40 = 0;
    v42 = 0;
    v44 = 0;
  }

  v45 = sub_188B2941C();
  v46 = [a5 documentProperties];
  v47 = [a5 v28[264]];
  *&v52 = v35;
  *(&v52 + 1) = v36;
  *&v53 = v19;
  *(&v53 + 1) = v21;
  *&v54 = v23;
  *(&v54 + 1) = v38;
  v55.n128_u64[0] = v40;
  v55.n128_u64[1] = v42;
  *&v56 = v44;
  BYTE8(v56) = v45;
  *&v57 = v31;
  *(&v57 + 1) = v34;
  *&v58 = v46;
  *(&v58 + 1) = v47;
  v59[0] = v35;
  v59[1] = v36;
  v59[2] = v19;
  v59[3] = v21;
  v59[4] = v23;
  v59[5] = v38;
  v59[6] = v40;
  v59[7] = v42;
  v59[8] = v44;
  v60 = v45;
  v61 = v31;
  v62 = v34;
  v63 = v46;
  v64 = v47;
  sub_188AEA364(&v52, &v51);
  sub_188AEA3B4(v59);
  v48 = v57;
  *(a6 + 64) = v56;
  *(a6 + 80) = v48;
  *(a6 + 96) = v58;
  v49 = v53;
  *a6 = v52;
  *(a6 + 16) = v49;
  result = v55;
  *(a6 + 32) = v54;
  *(a6 + 48) = result;
  return result;
}

void sub_188B3AE9C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *(a1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView);
  if (v8)
  {
    v38 = a4;
    v14 = v8;
    v15 = [v14 canShowFloatingTabBar];
    v16 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
    [v14 floatingTabBarContentFrameInCoordinateSpace_];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = *(*(a1 + v16) + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 40);
    v26 = [v14 isSidebarOverlayingContent];
    if (a2 && ![a2 style])
    {
      if (!a3)
      {
        v27 = [v14 isShowingFloatingTabBar];
        v28 = 0;
        if (!a6)
        {
          goto LABEL_25;
        }

        goto LABEL_6;
      }

      v29 = [a2 title];
      if (v29 && (v30 = v29, sub_18A4A7288(), v30, v31 = sub_18A4A7358(), , v31 >= 1))
      {
        v32 = [a2 title];
        if (v32)
        {
          v33 = v32;
          v34 = sub_18A4A7288();
          v36 = v35;

          if (a5)
          {
            if (v34 == v38 && v36 == a5)
            {

              v37 = 1;
            }

            else
            {
              v37 = sub_18A4A86C8();
            }
          }

          else
          {

            v37 = 0;
          }
        }

        else
        {
          v37 = a5 == 0;
        }

        v28 = v37 ^ 1;
      }

      else
      {
        v28 = 0;
      }

      v27 = [v14 isShowingFloatingTabBar];
    }

    else
    {
      v27 = [v14 isShowingFloatingTabBar];
      v28 = 1;
      if (!a3)
      {
        if (!a6)
        {
LABEL_25:

          LOBYTE(v8) = v28 & 1;
          goto LABEL_26;
        }

LABEL_6:
        LOBYTE(a6) = [a6 isSearchTabSelected];
        goto LABEL_25;
      }
    }

    LOBYTE(a6) = 0;
    goto LABEL_25;
  }

  v15 = 0;
  v25 = 0;
  v27 = 0;
  v26 = 0;
  LOBYTE(a6) = 0;
  v18 = 0;
  v20 = 0;
  v22 = 0;
  v24 = 0;
LABEL_26:
  *a7 = v15;
  *(a7 + 1) = *v39;
  *(a7 + 4) = *&v39[3];
  *(a7 + 8) = v18;
  *(a7 + 16) = v20;
  *(a7 + 24) = v22;
  *(a7 + 32) = v24;
  *(a7 + 40) = v25;
  *(a7 + 41) = v8;
  *(a7 + 42) = v27;
  *(a7 + 43) = v26;
  *(a7 + 44) = a6;
}

void sub_188B3B168(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [v2 navigationBar];
  v6 = [v5 traitCollection];
  if (a1)
  {
    [a1 _minimumContentMargins];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  v15 = [v6 userInterfaceIdiom];
  [v5 _contentMargin];
  v17 = v16;
  v18 = [v5 _privateDelegate];
  if (v18)
  {
    v19 = v18;
    if ([v18 respondsToSelector_])
    {
      v20 = [v19 _navigationBarToUseForMarginsInNavigationBar_];
      swift_unknownObjectRelease();
      if (v20)
      {
        goto LABEL_10;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v20 = v5;
LABEL_10:
  v21 = [v20 _edgesRequiringContentMargin];
  v22 = [v20 _adjacentBarEdges];
  if (v15)
  {

LABEL_39:
    v35 = [v6 _barPlattersHidden];

    if (v21)
    {
      v36 = v17;
    }

    else
    {
      v36 = 0.0;
    }

    v37 = 10.0;
    if ((v21 & 2) != 0)
    {
      v38 = v17;
    }

    else
    {
      v38 = 10.0;
    }

    if ((v21 & 4) != 0)
    {
      v39 = v17;
    }

    else
    {
      v39 = 0.0;
    }

    if ((v21 & 8) != 0)
    {
      v37 = v17;
    }

    if (v15 == 1)
    {
      v40 = v38;
    }

    else
    {
      v36 = 0.0;
      v40 = v17;
    }

    if (v15 == 1)
    {
      v41 = v37;
    }

    else
    {
      v39 = 0.0;
      v41 = v17;
    }

    v34 = 0;
    if (v35)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v36;
    }

    if (v35)
    {
      v32 = v17;
    }

    else
    {
      v32 = v40;
    }

    if (v35)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v39;
    }

    if (v35)
    {
      v27 = v17;
    }

    else
    {
      v27 = v41;
    }

    if (v35)
    {
      v34 = 0;
    }

    goto LABEL_70;
  }

  v23 = v22;
  v24 = sub_189227708();

  if ((v24 & 1) == 0)
  {
    goto LABEL_39;
  }

  v25 = [v6 _barPlattersHidden];

  v26 = 0.0;
  v27 = 10.0;
  if (v23)
  {
    v28 = 10.0;
  }

  else
  {
    v28 = 0.0;
  }

  if ((v23 & 2) != 0)
  {
    v29 = 10.0;
  }

  else
  {
    v29 = 38.0;
  }

  if ((v23 & 4) != 0)
  {
    v30 = 10.0;
  }

  else
  {
    v30 = 0.0;
  }

  if ((v23 & 8) == 0)
  {
    v27 = 38.0;
  }

  if (v21)
  {
    v31 = v17;
  }

  else
  {
    v31 = v28;
  }

  if ((v21 & 2) != 0)
  {
    v32 = v17;
  }

  else
  {
    v32 = v29;
  }

  if ((v21 & 4) != 0)
  {
    v33 = v17;
  }

  else
  {
    v33 = v30;
  }

  if ((v21 & 8) != 0)
  {
    v27 = v17;
  }

  if (v25)
  {
    v27 = v17;
    v33 = 0.0;
    v32 = v17;
  }

  else
  {
    v26 = v31;
  }

  v34 = ~v21 & ~v23 & 0xALL;
LABEL_70:
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v26;
  *(a2 + 40) = v32;
  *(a2 + 48) = v33;
  *(a2 + 56) = v27;
  *(a2 + 64) = v34;
}

void sub_188B3B498(void *a1)
{
  v2 = v1;
  v4 = [v1 stack];
  v5 = [v4 topEntry];

  if (v5 && ((v6 = [v5 isSearchActive], v7 = -[_UINavigationBarItemStackEntry _typedStorage](v5), !v6) ? (v8 = sub_18901F250()) : (v8 = sub_18901F25C()), v9 = v8, v7, v5, v9))
  {
    v28 = *(v9 + 80);
    v10 = v28;
  }

  else
  {
    v28 = 0;
  }

  v11 = [v2 stack];
  v12 = [v11 topEntry];

  if (v12 && ((v13 = [v12 isSearchActive], v14 = -[_UINavigationBarItemStackEntry _typedStorage](v12), !v13) ? (v15 = sub_18901F250()) : (v15 = sub_18901F25C()), v16 = v15, v14, v12, v16))
  {
    v17 = *(v16 + 136);
    v18 = v17;
  }

  else
  {
    v17 = 0;
  }

  if (v28 | v17)
  {
    v19 = [a1 preferredContentSizeCategory];
    v20 = [v2 navigationBar];
    v21 = [v20 traitCollection];

    v22 = [v21 preferredContentSizeCategory];
    v23 = sub_18A4A7288();
    v25 = v24;
    if (v23 == sub_18A4A7288() && v25 == v26)
    {
    }

    else
    {
      v27 = sub_18A4A86C8();

      if ((v27 & 1) == 0)
      {
        sub_188B29AE8();

        v19 = v17;
        goto LABEL_23;
      }
    }

LABEL_23:
  }
}

uint64_t sub_188B3B828(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0;
    }

    if (a1 != 3)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (!a1)
  {
LABEL_8:
    v4 = [v1 navigationBar];
    v5 = [v4 traitCollection];

    if ([v5 _barPlattersHidden])
    {

      return a1 == 3;
    }

    v6 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView];
    if (v6)
    {
      v7 = v6;
      v8 = [v7 canShowFloatingTabBar];

      return v8 ^ 1;
    }

    return 1;
  }

  if (a1 == 1)
  {
    return 1;
  }

LABEL_14:
  sub_18A4A80E8();

  v9 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v9);

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

id _UINavigationTitleAppearanceAddDefaultTitleAttributes(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = [_UINavigationBarTitleFontProvider providerForIdiom:a2];
  v7 = v6;
  if (a3)
  {
    [v6 defaultInlineTitleWithSubtitleFont];
  }

  else
  {
    [v6 defaultInlineTitleFont];
  }
  v8 = ;
  v9 = _UINavigationTitleAppearanceCompleteAttributesWithFontAndColor(v5, v8, 0);

  return v9;
}

uint64_t sub_188B3BD78(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_188B3BD64(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_188B42BFC(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

void sub_188B3BE1C(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = a2;
  v133 = *MEMORY[0x1E69E9840];
  v99 = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayoutHasCriticalGroup) == 1 && *(a1 + 16) > a2;
  v5 = MEMORY[0x1E69E7CC0];
  v125 = MEMORY[0x1E69E7CC0];
  v126 = MEMORY[0x1E69E7CC0];
  v6 = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout);
  v119 = *(v6 + 16);

  v109 = 0;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  v9 = 32;
LABEL_5:
  v10 = v9 + 24 * v7;
  v11 = v119;
  do
  {
    if (v11 == v7)
    {

      if (v109)
      {
        v33 = v109;
        MEMORY[0x18CFE2450]();
        if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
      }

      sub_188B420E0(v34);

      sub_188B420E0(v35);
      v100 = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 56);
      v36 = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 80);
      v131[4] = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 64);
      v131[5] = v36;
      v131[6] = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 96);
      v132 = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 112);
      v37 = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 16);
      v131[0] = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics);
      v131[1] = v37;
      v38 = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 48);
      v131[2] = *(v3 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 32);
      v131[3] = v38;
      v3 = v5;
      if (!(v5 >> 62))
      {
        v39 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v40 = a1;
        if (!v39)
        {
LABEL_106:

          return;
        }

        goto LABEL_45;
      }

LABEL_105:
      v39 = sub_18A4A7F68();
      v40 = a1;
      if (!v39)
      {
        goto LABEL_106;
      }

LABEL_45:
      v41 = 0;
      v123 = 0;
      v42 = 0;
      v105 = v3 & 0xFFFFFFFFFFFFFF8;
      v106 = v3 & 0xC000000000000001;
      v43 = MEMORY[0x1E69E7CC8];
      v44 = 0.0;
      v121 = 0.0;
      v101 = 1;
      v103 = v39;
      v104 = v3;
      v102 = v4 + 0.0001;
      while (1)
      {
        v120 = v44;
        if (v106)
        {
          v50 = sub_188E49D08(v41, v3);
        }

        else
        {
          if (v41 >= *(v105 + 16))
          {
            goto LABEL_102;
          }

          v50 = *(v3 + 8 * v41 + 32);
        }

        v51 = v50;
        v3 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_101;
        }

        v52 = *(v40 + 32);
        if (!*(v52 + 16) || (v53 = sub_188A403F4(v50), (v54 & 1) == 0) || (v55 = *(v40 + 40), !*(v55 + 16)) || (v56 = *(*(v52 + 56) + 8 * v53), v57 = sub_188A403F4(v51), (v58 & 1) == 0))
        {
          sub_18A4A80E8();
          MEMORY[0x18CFE22D0](0xD000000000000036, 0x800000018A6A2C50);
          v91 = [v51 description];
          v92 = sub_18A4A7288();
          v94 = v93;

          MEMORY[0x18CFE22D0](v92, v94);

LABEL_109:
          sub_18A4A8398();
          __break(1u);
          goto LABEL_110;
        }

        v59 = *(*(v55 + 56) + 8 * v57);
        if (!v8[2] || (v60 = v4, v61 = sub_188A403F4(v51), (v62 & 1) == 0))
        {

          sub_18A4A80E8();

          v95 = [v51 description];
          v96 = sub_18A4A7288();
          v98 = v97;

          MEMORY[0x18CFE22D0](v96, v98);

          goto LABEL_109;
        }

        v63 = 0.0;
        v118 = v42;
        v114 = v41 + 1;
        v116 = v43;
        v112 = *(v8[7] + 8 * v61);
        if (*(v43 + 16) && (v64 = sub_188C4585C(*(v8[7] + 8 * v61)), (v65 & 1) != 0))
        {
          v66 = *(v43 + 56) + 24 * v64;
          v67 = *v66;
          v63 = *(v66 + 8);
          v111 = *(v66 + 16);
        }

        else
        {
          v111 = 0;
          v67 = MEMORY[0x1E69E7CC0];
        }

        v124 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341D0, &qword_18A64BE10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18A64BFB0;
        swift_bridgeObjectRetain_n();

        sub_188C40C4C(v59);
        *(inited + 32) = v67;
        sub_188B45920(inited, v131, v127);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341D8, &qword_18A661500);
        swift_arrayDestroy();
        v69 = swift_initStackObject();
        *(v69 + 16) = xmmword_18A64BFB0;

        sub_188C40C4C(v56);
        *(v69 + 32) = v67;
        sub_188B45920(v69, v131, v129);
        swift_setDeallocating();
        swift_arrayDestroy();
        x = v128.origin.x;
        y = v128.origin.y;
        width = v128.size.width;
        height = v128.size.height;
        v74 = CGRectGetWidth(v128);
        sub_188B42530(v127);
        v75 = v74 - v63;
        v110 = rect;
        v76 = CGRectGetWidth(rect);
        sub_188B42530(v129);
        v77 = v76 - v63;
        v108 = x;
        if (v111)
        {
          v78 = 1;
          v3 = v104;
          v79 = v102;
          v80 = v121;
          v81 = y;
        }

        else
        {
          v135.origin.x = x;
          v135.origin.y = y;
          v135.size.width = width;
          v135.size.height = height;
          v3 = v104;
          v80 = v121;
          v81 = y;
          if (CGRectGetWidth(v135) <= 0.0 && CGRectGetWidth(v110) <= 0.0)
          {
            v78 = 0;
          }

          else
          {
            v82 = v100;
            if (!v123)
            {
              v82 = 0.0;
            }

            v75 = v82 + v75;
            v77 = v82 + v77;
            v78 = 1;
          }

          v79 = v102;
        }

        v83 = OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isFixed;
        if (v51[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isFixed])
        {
          v80 = v80 + v75;
        }

        v84 = v120 + v75;
        v121 = v80;
        if (v79 < v80)
        {
          break;
        }

        v44 = v120 + v75;
        if (v79 < v84)
        {
          goto LABEL_79;
        }

        v4 = v60 - v75;
        v86 = v77 - v75;
        if ((v51[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_critical] & v99 & 1) != 0 && v86 > 0.0)
        {
          v87 = 1;
        }

        else
        {
          v90 = [*&v51[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group] _shouldAlwaysCollapse];
          v87 = (v86 <= v60 - v75 + 0.0001) & v101 | v90;
          if (((v86 <= v60 - v75 + 0.0001) & v101) != 0 && (v90 & 1) == 0)
          {

            v51[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact] = 0;
            v51[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled] = 0;
            v4 = v4 - v86;
            v59 = v56;
            v44 = v44 + v86;
            goto LABEL_82;
          }
        }

        v88 = [*&v51[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group] _canCollapse];
        v51[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact] = v88;
        if (v4 >= 0.0)
        {
          v89 = 0;
        }

        else
        {
          v89 = v51[v83] ^ 1;
        }

        v51[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled] = v89 & 1;
        if (((v86 <= v60 - v75 + 0.0001) & v101) != 0)
        {
          v101 = v87;
          if ((v88 & 1) == 0)
          {
LABEL_80:

LABEL_81:
            v59 = v56;
LABEL_82:
            v45 = v110.origin.x;
            v81 = v110.origin.y;
            v46 = v110.size.width;
            height = v110.size.height;
            goto LABEL_48;
          }
        }

        else
        {
          if ((v88 & 1) == 0)
          {

            v101 = 0;
            goto LABEL_81;
          }

          v101 = 0;
        }

LABEL_47:

        v46 = width;
        v45 = v108;
LABEL_48:
        sub_188C40C4C(v59);
        v134.origin.x = v45;
        v134.origin.y = v81;
        v134.size.width = v46;
        v134.size.height = height;
        v47 = CGRectGetWidth(v134);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_188C45700(v124, v78, v112, isUniquelyReferenced_nonNull_native, v47);

        v42 = v118 | (v47 > 0.0);
        v43 = v116;
        v49 = v123;
        if ((v118 & 1) == 0)
        {
          v49 = v47 > 0.0;
        }

        v123 = v49;
        ++v41;
        v40 = a1;
        if (v114 == v103)
        {
          goto LABEL_106;
        }
      }

      v44 = v120 + v75;
LABEL_79:
      v85 = [*&v51[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group] _canCollapse];
      v51[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact] = v85;
      v51[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled] = (v51[v83] & 1) == 0;
      v4 = v60;
      if ((v85 & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_47;
    }

    if (v7 >= *(v6 + 16))
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v12 = *(v6 + v10);
    if (v12 >> 62)
    {
      v14 = v9;
      v15 = sub_18A4A7F68();
      v9 = v14;
      v11 = v119;
      v13 = v15;
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 += 24;
    ++v7;
  }

  while (!v13);
  v113 = v9;
  v115 = v6;
  v117 = v3;

  v16 = 0;
  v122 = v7 - 1;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v17 = sub_188E49D08(v16, v12);
    }

    else
    {
      if (v16 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_104;
      }

      v17 = *(v12 + 8 * v16 + 32);
    }

    v18 = v17;
    v3 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_99;
    }

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v129[0] = v8;
    v20 = sub_188A403F4(v18);
    v22 = v8[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_100;
    }

    v26 = v21;
    if (v8[3] < v25)
    {
      break;
    }

    if (v19)
    {
      goto LABEL_25;
    }

    v28 = v20;
    sub_188FA6414();
    v20 = v28;
    v8 = v129[0];
    if ((v26 & 1) == 0)
    {
LABEL_28:
      v8[(v20 >> 6) + 8] |= 1 << v20;
      *(v8[6] + 8 * v20) = v18;
      *(v8[7] + 8 * v20) = v122;
      v29 = v8[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_103;
      }

      v8[2] = v30;
      goto LABEL_30;
    }

LABEL_26:
    *(v8[7] + 8 * v20) = v122;
LABEL_30:
    if (v18[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_critical] == 1)
    {

      v109 = v18;
    }

    else
    {
      v31 = v18[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isFixed];
      v32 = v18;
      if (v31 == 1)
      {
        MEMORY[0x18CFE2450]();
        if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }
      }

      else
      {
        MEMORY[0x18CFE2450]();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }
      }

      sub_18A4A75F8();
    }

    ++v16;
    if (v3 == v13)
    {

      v6 = v115;
      v3 = v117;
      v5 = MEMORY[0x1E69E7CC0];
      v9 = v113;
      goto LABEL_5;
    }
  }

  sub_188C45494(v25, v19);
  v20 = sub_188A403F4(v18);
  if ((v26 & 1) == (v27 & 1))
  {
LABEL_25:
    v8 = v129[0];
    if ((v26 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_110:
  sub_18A4A87A8();
  __break(1u);
}

void sub_188B3CAA0(uint64_t result, uint64_t a2, double a3)
{
  v3 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isInLayoutReentrancyGuard;
  if ((*(result + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isInLayoutReentrancyGuard) & 1) == 0)
  {
    *(result + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_isInLayoutReentrancyGuard) = 1;
    if (*(result + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_supportsOverflow) == 1)
    {
      v6 = *(a2 + 32);
      if (v6)
      {
        v7 = *(a2 + 40);
        v8 = *(a2 + 24);
        v9 = a2;
        v10 = a2;
        v11 = *(a2 + 8);
      }

      else
      {
        v10 = a2;
        sub_188B4D13C();

        v9 = &v14;
        sub_188B48DE8(v12, &v14);

        v6 = v17;
        v7 = v18;
        v8 = v16;
        v11 = v15;
      }

      v19 = *v9;
      v20 = v11;
      v21 = v8;
      v22 = v6;
      v23 = v7;
      sub_188A3F29C(v10, &v13, &unk_1EA93B3D8, &qword_18A6614D8);
      sub_188B3BE1C(&v19, a3);
    }

    else
    {
      sub_188B4D13C();
    }

    *(result + v3) = 0;
  }
}

void sub_188B3CBC4(__int128 *a1, int a2)
{
  v3 = v2;
  v386 = sub_18A4A5FA8();
  v377 = *(v386 - 8);
  MEMORY[0x1EEE9AC00](v386);
  v385 = &v362 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v390 = &v362 - v9;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v395 = a1[4];
  v396 = v12;
  v13 = a1[6];
  v393 = a1[8];
  v394 = v13;
  v14 = a1[10];
  v378 = a1[11];
  v379 = v14;
  v15 = *(a1 + 24);
  v16 = *(a1 + 25);
  height = *(a1 + 26);
  width = *(a1 + 27);
  v20 = *(a1 + 28);
  v19 = *(a1 + 29);
  v22 = *(a1 + 30);
  v21 = *(a1 + 31);
  v23 = a1[16];
  v388 = a1[17];
  v389 = v23;
  v24 = *(a1 + 37);
  v380 = *(a1 + 36);
  v381 = v24;
  v25 = *(a1 + 39);
  v382 = *(a1 + 38);
  v383 = v25;
  v452 = *(a1 + 374);
  v27 = *(a1 + 47);
  v26 = *(a1 + 48);
  v29 = *(a1 + 49);
  v28 = *(a1 + 50);
  v30 = MEMORY[0x1E69E7CC0];
  v450 = MEMORY[0x1E69E7CC0];
  v451 = MEMORY[0x1E69E7CC0];
  v31 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost;
  v32 = *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  v397 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost;
  v392 = a2;
  if (!v32 || (v33 = *&v32[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView]) == 0)
  {
    v102 = MEMORY[0x1E69E7CC0];
    goto LABEL_38;
  }

  v387 = v11;
  v384 = v10;
  v391 = v8;
  swift_getObjectType();
  v34 = v33;
  v35 = v32;
  v36 = [v34 _displayLayer];
  v376 = v34;
  if (v36 == 1)
  {
    v369 = v15;
    v37 = v16;
    v38 = height;
    v39 = width;
    v40 = *(v391 + 464);
    LOBYTE(v411) = 0;
    v372 = COERCE_DOUBLE(v35);
    sub_188EC2210(0, 0, 0, 1, 0, 0);
    v422 = v32;
    LOBYTE(v423) = v411;
    *&v424[0] = 0;
    *(&v423 + 1) = 0;
    *(&v424[0] + 1) = v22;
    *&v424[1] = v21;
    *(&v424[1] + 8) = UIEdgeInsetsZero;
    *(&v424[3] + 1) = 0xD000000000000012;
    *&v425 = 0x800000018A690180;
    BYTE8(v425) = 4;
    v426 = 0uLL;
    *&v427 = 0;
    *(&v427 + 1) = 1;
    v428 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341A8, &qword_18A650520);
    v41 = swift_allocObject();
    v43 = v424[3];
    v42 = v425;
    v44 = v427;
    v45 = v428;
    *(v41 + 9) = v426;
    *(v41 + 10) = v44;
    *(v41 + 11) = v45;
    v46 = v424[0];
    v47 = v424[2];
    *(v41 + 5) = v424[1];
    *(v41 + 6) = v47;
    *(v41 + 7) = v43;
    *(v41 + 8) = v42;
    v48 = v422;
    v49 = v423;
    *(v41 + 1) = xmmword_18A64BFB0;
    *(v41 + 2) = v48;
    *(v41 + 3) = v49;
    *(v41 + 4) = v46;
    sub_188C464C4(&v422, &v411);
    sub_188EC22F8();
    sub_18A4A8048();
    *(&v405[0] + 1) = v20;
    *&v405[1] = v19;
    *(&v405[1] + 1) = v22;
    *&v405[2] = v21;
    __asm { FMOV            V0.2D, #1.0 }

    *(&v405[2] + 8) = _Q0;
    *&v406 = 0;
    *(&v405[3] + 1) = 0;
    sub_18A4A8048();
    *&v409 = v41;
    BYTE8(v410[0]) = 0;
    *&v410[1] = 0;
    *(&v410[1] + 1) = v40;

    v55 = sub_188E8DE50(MEMORY[0x1E69E7CC0]);
    v375 = v41;
    v56 = *(v41 + 2);
    if (v56)
    {
      v57 = 0;
      v58 = v375 + 32;
      v59 = -v56;
      width = v39;
      height = v38;
      v16 = v37;
      v15 = v369;
      while (1)
      {
        v60 = *(v375 + 2);
        _CF = v60 >= v57;
        v61 = v60 - v57;
        if (!_CF)
        {
          v61 = 0;
        }

        v62 = &v58[160 * v57++];
        while (1)
        {
          if (!v61)
          {
            goto LABEL_223;
          }

          v63 = *(v62 + 7);
          v417 = *(v62 + 6);
          v418 = v63;
          v64 = *(v62 + 9);
          v419 = *(v62 + 8);
          v420 = v64;
          v65 = *(v62 + 3);
          v413 = *(v62 + 2);
          v414 = v65;
          v66 = *(v62 + 5);
          v415 = *(v62 + 4);
          v416 = v66;
          v67 = *(v62 + 1);
          v411 = *v62;
          v412 = v67;
          v68 = *(&v419 + 1);
          if (*(&v419 + 1) != 1)
          {
            break;
          }

          --v61;
          v62 += 160;
          ++v57;
          v31 = v397;
          if (v59 + v57 == 1)
          {
            goto LABEL_34;
          }
        }

        v367 = v59;
        v368 = v55;
        v364 = v58;
        v69 = *(&v418 + 1);
        v70 = *&v418;
        v373 = v419;
        v374 = *&v420;
        v370 = *(&v418 + 1);
        v371 = *(&v420 + 1);
        v366 = *&v411;
        if (v412)
        {
          v71 = *(&v411 + 1);
          sub_188C464C4(&v411, &v398);
          sub_188EC2284(*&v70, v370, v373, v68, v374, v371);
          sub_188C468DC(*&v366, v71, 1);

          v72 = *&v71;
          v69 = v370;
        }

        else
        {
          sub_188C464C4(&v411, &v398);
          sub_188EC2284(*&v70, v69, v373, v68, v374, v371);
          v72 = v366;
        }

        LOBYTE(v398) = 0;
        *v447 = v72;
        BYTE8(v448) = 0;
        v366 = v70;
        sub_188EC22E0(*&v70, v69, v373);
        v73 = v371;
        v74 = v68;
        v75 = v374;
        v55 = v368;
        LODWORD(v365) = swift_isUniquelyReferenced_nonNull_native();
        *&v398 = v55;
        v77 = sub_188C46540(v447);
        v78 = *(v55 + 2);
        v79 = (v76 & 1) == 0;
        v80 = v78 + v79;
        if (__OFADD__(v78, v79))
        {
          break;
        }

        v81 = v76;
        if (*(v55 + 3) >= v80)
        {
          v84 = v367;
          if ((v365 & 1) == 0)
          {
            v368 = v77;
            sub_188FA2944();
            v84 = v367;
            v77 = v368;
          }
        }

        else
        {
          sub_1890BC574(v80, v365);
          v82 = sub_188C46540(v447);
          if ((v81 & 1) != (v83 & 1))
          {
LABEL_236:
            sub_18A4A87A8();
            __break(1u);
            goto LABEL_237;
          }

          v77 = v82;
          v84 = v367;
        }

        v85 = v398;
        v365 = v84 + v57;
        if (v81)
        {
          v86 = *(v398 + 56) + 48 * v77;
          v87 = *v86;
          v88 = *(v86 + 8);
          v368 = v398;
          v89 = *(v86 + 24);
          v90 = *(v86 + 40);
          v362 = *(v86 + 32);
          v363 = v90;
          v91 = v370;
          v92 = v371;
          *v86 = v366;
          *(v86 + 8) = v91;
          v93 = *(v86 + 16);
          v94 = v374;
          *(v86 + 16) = v373;
          *(v86 + 24) = v68;
          *(v86 + 32) = v94;
          *(v86 + 40) = v92;
          sub_188EC226C(v87, v88, v93);

          v55 = v368;
          sub_188C46888(&v411);
          sub_188EC2210(*&v366, v370, v373, v68, v374, v92);
          sub_188C4680C(v447);
        }

        else
        {
          *(v398 + 8 * (v77 >> 6) + 64) |= 1 << v77;
          v95 = v85;
          v96 = 48 * v77;
          sub_188C46604(v447, *(v85 + 6) + 48 * v77);
          v97 = *(v95 + 7) + v96;
          v55 = v95;
          v70 = v366;
          v98 = v370;
          *v97 = v366;
          *(v97 + 8) = v98;
          v99 = v374;
          *(v97 + 16) = v373;
          *(v97 + 24) = v68;
          *(v97 + 32) = v99;
          *(v97 + 40) = v371;
          sub_188C46888(&v411);
          sub_188EC2210(*&v70, v370, v373, v68, v374, v371);
          sub_188C4680C(v447);
          v100 = *(v55 + 2);
          _VF = __OFADD__(v100, 1);
          v101 = v100 + 1;
          if (_VF)
          {
            goto LABEL_233;
          }

          *(v55 + 2) = v101;
        }

        v31 = v397;
        v58 = v364;
        v59 = v367;
        if (!v365)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      v55 = sub_188B8B63C(0, *(v55 + 2) + 1, 1, v55);
LABEL_93:
      v207 = v55;
      v209 = *(v55 + 2);
      v208 = *(v55 + 3);
      if (v209 >= v208 >> 1)
      {
        v207 = sub_188B8B63C((v208 > 1), v209 + 1, 1, v55);
      }

      *(v207 + 2) = v209 + 1;
      v210 = &v207[80 * v209];
      *(v210 + 2) = v411;
      v211 = v412;
      v212 = v413;
      v213 = v415;
      *(v210 + 5) = v414;
      *(v210 + 6) = v213;
      *(v210 + 3) = v211;
      *(v210 + 4) = v212;
      v451 = v207;
      v214 = *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView);
      if (v214)
      {
        *&v387 = v70;
        v215 = v207;
        v386 = sub_188B8B75C(MEMORY[0x1E69E7CC0]);
        v216 = v215;
        v218 = *(v215 + 2);
        v217 = *(v215 + 3);
        v390 = v218 + 1;
        v219 = v214;
        if (v218 >= v217 >> 1)
        {
          v216 = sub_188B8B63C((v217 > 1), v390, 1, v216);
        }

        sub_188B8BA00(&v411);
        *(v216 + 2) = v390;
        v220 = &v216[80 * v218];
        *(v220 + 4) = v219;
        v220[40] = 6;
        v221 = *(&v403 + 3);
        *(v220 + 41) = v403;
        *(v220 + 11) = v221;
        *(v220 + 6) = 0;
        v222 = v381;
        *(v220 + 7) = v380;
        *(v220 + 8) = v222;
        v223 = v383;
        *(v220 + 9) = v382;
        *(v220 + 10) = v223;
        *(v220 + 11) = v21;
        v224 = v386;
        *(v220 + 12) = 0x3FF0000000000000;
        *(v220 + 13) = v224;
        v451 = v216;
      }

      else
      {

        sub_188B8BA00(&v411);
      }

      v31 = v397;
      goto LABEL_168;
    }

    v31 = v397;
    width = v39;
    height = v38;
    v16 = v37;
    v15 = v369;
LABEL_34:

    sub_188C46888(&v422);

    *(&v409 + 1) = v55;
    *&v410[0] = 0x3FF0000000000000;
    v415 = v405[2];
    v416 = v405[3];
    v417 = v406;
    v418 = v407;
    v411 = v403;
    v412 = v404;
    v413 = v405[0];
    v414 = v405[1];
    v419 = v408;
    v420 = v409;
    v421[0] = v410[0];
    v421[1] = v410[1];
    sub_188C45F1C(&v411, &v403);
    v102 = sub_188C45F78(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v111 = *(v102 + 2);
    v110 = *(v102 + 3);
    if (v111 >= v110 >> 1)
    {
      v102 = sub_188C45F78((v110 > 1), v111 + 1, 1, v102);
    }

    sub_188C460F0(&v411);
    *(v102 + 2) = v111 + 1;
    v112 = &v102[192 * v111];
    v113 = v405[1];
    v114 = v403;
    v115 = v404;
    *(v112 + 4) = v405[0];
    *(v112 + 5) = v113;
    *(v112 + 2) = v114;
    *(v112 + 3) = v115;
    v116 = v407;
    v118 = v405[2];
    v117 = v405[3];
    *(v112 + 8) = v406;
    *(v112 + 9) = v116;
    *(v112 + 6) = v118;
    *(v112 + 7) = v117;
    v119 = v410[1];
    v121 = v408;
    v120 = v409;
    *(v112 + 12) = v410[0];
    *(v112 + 13) = v119;
    *(v112 + 10) = v121;
    *(v112 + 11) = v120;
    v450 = v102;
    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_37;
  }

  if (!v36)
  {
    v103 = MEMORY[0x1E69E7CC0];
    v375 = sub_188B8B75C(MEMORY[0x1E69E7CC0]);
    v104 = v35;
    *&v105 = COERCE_DOUBLE(sub_188B8B63C(0, 1, 1, v103));
    v107 = *(v105 + 2);
    v106 = *(v105 + 3);
    if (v107 >= v106 >> 1)
    {
      *&v105 = COERCE_DOUBLE(sub_188B8B63C((v106 > 1), v107 + 1, 1, v105));
    }

    v30 = *&v105;
    *(v105 + 2) = v107 + 1;
    v108 = &v105[80 * v107];
    *(v108 + 4) = v104;
    v108[40] = 1;
    *(v108 + 6) = 0;
    *(v108 + 7) = v20;
    *(v108 + 8) = v19;
    *(v108 + 9) = v22;
    *(v108 + 10) = v21;
    __asm { FMOV            V0.2D, #1.0 }

    *(v108 + 88) = _Q0;
    *(v108 + 13) = v375;
    v451 = v105;
    v102 = MEMORY[0x1E69E7CC0];
    v31 = v397;
LABEL_37:
    v8 = v391;
    v10 = v384;
    v11 = v387;
LABEL_38:
    v122 = *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton);
    if (v122 && (v8[320] & 1) == 0 && (v8[321] & 1) == 0)
    {
      v387 = v11;
      v384 = v10;
      v372 = v30;
      v391 = v8;
      v123 = *(v3 + v31);
      if (v123 && (v124 = *(v123 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView)) != 0)
      {
        v125 = v122;
        [v124 _navigationBarBackButtonAlpha];
        v21 = v126;
      }

      else
      {
        v127 = v122;
        v21 = 1.0;
      }

      v376 = v102;
      *&v374 = COERCE_DOUBLE(0x800000018A690120);
      v128 = [v122 visualProvider];
      v129 = [(_UIButtonBarButtonVisualProvider *)v128 typedStorage];
      v130 = sub_18901EFEC();
      v375 = v131;

      if (!v130 || (v132 = v375, v130(&v411), sub_188A55B8C(v130, v132), v133 = v412, v412 == 255))
      {
        v133 = 4;
        v134 = 0xD000000000000017;
        v135 = v374;
      }

      else
      {
        v135 = *(&v411 + 1);
        v134 = v411;
      }

      v136 = *(v391 + 464);
      LOBYTE(v411) = 0;
      v375 = v122;
      sub_188EC2210(0, 0, 0, 1, 0, 0);
      v422 = v122;
      LOBYTE(v423) = v411;
      *&v424[0] = 0;
      *(&v423 + 1) = 0;
      *(v424 + 8) = v387;
      *(&v424[1] + 8) = UIEdgeInsetsZero;
      *(&v424[3] + 1) = v134;
      *&v425 = v135;
      BYTE8(v425) = v133;
      v426 = 0uLL;
      *&v427 = 0;
      *(&v427 + 1) = 1;
      v428 = 0uLL;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341A8, &qword_18A650520);
      v137 = swift_allocObject();
      v139 = v424[3];
      v138 = v425;
      v140 = v427;
      v141 = v428;
      v137[9] = v426;
      v137[10] = v140;
      v137[11] = v141;
      v142 = v424[0];
      v143 = v424[2];
      v137[5] = v424[1];
      v137[6] = v143;
      v137[7] = v139;
      v137[8] = v138;
      v144 = v422;
      v145 = v423;
      v137[1] = xmmword_18A64BFB0;
      v137[2] = v144;
      v137[3] = v145;
      v137[4] = v142;
      *&v398 = 0xD000000000000017;
      *(&v398 + 1) = v374;
      sub_188C464C4(&v422, &v411);
      sub_18A4A8048();
      *(&v405[1] + 8) = v387;
      *(v405 + 8) = v384;
      *(&v405[2] + 1) = v21;
      *&v406 = 0;
      v405[3] = 0x3FF0000000000000uLL;
      *&v411 = 0;
      type metadata accessor for _UINavigationButtonBarPosition(0);
      sub_188EC2354(&qword_1ED48D270, type metadata accessor for _UINavigationButtonBarPosition, &unk_18A6476B4);
      sub_18A4A8048();
      *&v409 = v137;
      BYTE8(v410[0]) = 1;
      *&v410[1] = 0;
      *(&v410[1] + 1) = v136;

      v55 = sub_188E8DE50(MEMORY[0x1E69E7CC0]);
      v146 = *(v137 + 2);
      if (!v146)
      {
        v31 = v397;
LABEL_74:

        sub_188C46888(&v422);

        *(&v409 + 1) = v55;
        *&v410[0] = 0x3FF0000000000000;
        v415 = v405[2];
        v416 = v405[3];
        v417 = v406;
        v418 = v407;
        v411 = v403;
        v412 = v404;
        v413 = v405[0];
        v414 = v405[1];
        v419 = v408;
        v420 = v409;
        v421[0] = v410[0];
        v421[1] = v410[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_229;
        }

        goto LABEL_75;
      }

      v57 = 0;
      *&v147 = v137 + 2;
      v148 = -v146;
      while (1)
      {
        v149 = *(v137 + 2);
        _CF = v149 >= v57;
        v150 = v149 - v57;
        if (!_CF)
        {
          v150 = 0;
        }

        v151 = (*&v147 + 160 * v57++);
        while (1)
        {
          if (!v150)
          {
            goto LABEL_224;
          }

          v152 = *(v151 + 7);
          v417 = *(v151 + 6);
          v418 = v152;
          v153 = *(v151 + 9);
          v419 = *(v151 + 8);
          v420 = v153;
          v154 = *(v151 + 3);
          v413 = *(v151 + 2);
          v414 = v154;
          v155 = *(v151 + 5);
          v415 = *(v151 + 4);
          v416 = v155;
          v156 = *(v151 + 1);
          v411 = *v151;
          v412 = v156;
          v157 = *(&v419 + 1);
          if (*(&v419 + 1) != 1)
          {
            break;
          }

          --v150;
          v151 += 160;
          ++v57;
          v31 = v397;
          if (v148 + v57 == 1)
          {
            goto LABEL_74;
          }
        }

        v370 = v148;
        v371 = v55;
        v366 = v147;
        v367 = v137;
        v158 = *(&v418 + 1);
        v159 = *&v418;
        *&v387 = v419;
        v373 = *(&v418 + 1);
        *&v384 = *(&v420 + 1);
        v374 = *&v420;
        v369 = *&v411;
        if (v412)
        {
          v160 = *(&v411 + 1);
          sub_188C464C4(&v411, &v398);
          sub_188EC2284(v159, v373, v387, v157, v374, v384);
          sub_188C468DC(*&v369, v160, 1);

          v161 = *&v160;
          v158 = v373;
        }

        else
        {
          sub_188C464C4(&v411, &v398);
          sub_188EC2284(v159, v158, v387, v157, v374, v384);
          v161 = v369;
        }

        LOBYTE(v398) = 0;
        *v447 = v161;
        BYTE8(v448) = 0;
        v369 = *&v159;
        sub_188EC22E0(v159, v158, v387);
        v162 = v384;
        v163 = v157;
        v70 = *&v374;
        v164 = v374;
        v55 = v371;
        LODWORD(v368) = swift_isUniquelyReferenced_nonNull_native();
        *&v398 = v55;
        v166 = sub_188C46540(v447);
        v167 = *(v55 + 2);
        v168 = (v165 & 1) == 0;
        v169 = v167 + v168;
        if (__OFADD__(v167, v168))
        {
          goto LABEL_231;
        }

        if (*(v55 + 3) >= v169)
        {
          v172 = v370;
          if ((v368 & 1) == 0)
          {
            LODWORD(v371) = v165;
            v368 = v166;
            sub_188FA2944();
            v166 = v368;
            LOBYTE(v165) = v371;
            v172 = v370;
          }
        }

        else
        {
          LODWORD(v371) = v165;
          sub_1890BC574(v169, v368);
          v170 = sub_188C46540(v447);
          v171 = v165 & 1;
          LOBYTE(v165) = v371;
          if ((v371 & 1) != v171)
          {
            goto LABEL_236;
          }

          v166 = v170;
          v172 = v370;
        }

        v173 = v398;
        v368 = v172 + v57;
        if (v165)
        {
          v174 = *(v398 + 56) + 48 * v166;
          v175 = *v174;
          v176 = *(v174 + 8);
          v178 = *(v174 + 24);
          v177 = *(v174 + 32);
          v371 = v398;
          v179 = *(v174 + 40);
          v364 = v177;
          v365 = v179;
          v180 = v373;
          *v174 = v369;
          *(v174 + 8) = v180;
          v181 = *(v174 + 16);
          *(v174 + 16) = v387;
          *(v174 + 24) = v157;
          *(v174 + 32) = v70;
          v182 = v384;
          *(v174 + 40) = v384;
          sub_188EC226C(v175, v176, v181);

          v55 = v371;
          sub_188C46888(&v411);
          sub_188EC2210(*&v369, v373, v387, v157, v374, v182);
          sub_188C4680C(v447);
        }

        else
        {
          *(v398 + 8 * (v166 >> 6) + 64) |= 1 << v166;
          v183 = v173;
          v184 = 48 * v166;
          sub_188C46604(v447, *(v173 + 6) + 48 * v166);
          v185 = *(v183 + 7) + v184;
          v55 = v183;
          v70 = v369;
          v186 = v373;
          *v185 = v369;
          *(v185 + 8) = v186;
          *(v185 + 16) = v387;
          v187 = v374;
          *(v185 + 24) = v157;
          *(v185 + 32) = v187;
          *(v185 + 40) = v384;
          sub_188C46888(&v411);
          sub_188EC2210(*&v70, v373, v387, v157, v374, v384);
          sub_188C4680C(v447);
          v188 = *(v55 + 2);
          _VF = __OFADD__(v188, 1);
          v189 = v188 + 1;
          if (_VF)
          {
            goto LABEL_234;
          }

          *(v55 + 2) = v189;
        }

        v31 = v397;
        v147 = v366;
        v137 = v367;
        v148 = v370;
        if (!v368)
        {
          goto LABEL_74;
        }
      }
    }

LABEL_78:
    if (*(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isTitleHidden))
    {
      if (!v452)
      {
        goto LABEL_169;
      }

LABEL_82:
      v203 = *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleControl);
      if (v203 && (v8[372] & 1) == 0 && (v8[320] & 1) == 0 && (v8[321] & 1) == 0 && ((v8[370] & 1) == 0 || (v8[373] & 1) != 0) && ((v8[371] & 1) == 0 || (v8[373] & 1) != 0))
      {
        v391 = v8;
        v204 = 0.0;
        if (!*(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession))
        {
          v204 = 1.0;
        }

        v21 = v204 * *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineTitleViewAlpha);
        v205 = v30;
        v206 = sub_188B8B75C(MEMORY[0x1E69E7CC0]);
        *&v411 = v203;
        BYTE8(v411) = 5;
        *&v412 = 0;
        *(&v412 + 1) = v15;
        *&v413 = v16;
        *(&v413 + 1) = height;
        *&v414 = width;
        *(&v414 + 1) = v21;
        *&v415 = 0x3FF0000000000000;
        *(&v415 + 1) = v206;
        v70 = COERCE_DOUBLE(v203);
        sub_188B8B3D0(&v411, &v403);
        v55 = *&v205;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_93;
        }

        goto LABEL_235;
      }

LABEL_169:
      v338 = *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView);
      if (!v338 || (v8[321] & 1) != 0)
      {
        goto LABEL_175;
      }

      v391 = sub_188B8B75C(MEMORY[0x1E69E7CC0]);
      v57 = v451;
      v55 = v338;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_225;
      }

      while (2)
      {
        v340 = *(v57 + 16);
        v339 = *(v57 + 24);
        if (v340 >= v339 >> 1)
        {
          v57 = sub_188B8B63C((v339 > 1), v340 + 1, 1, v57);
        }

        *(v57 + 16) = v340 + 1;
        v341 = v57 + 80 * v340;
        *(v341 + 32) = v55;
        *(v341 + 40) = 4;
        v342 = *(&v411 + 3);
        *(v341 + 41) = v411;
        *(v341 + 44) = v342;
        *(v341 + 48) = 0;
        v343 = v388;
        *(v341 + 56) = v389;
        *(v341 + 72) = v343;
        __asm { FMOV            V0.2D, #1.0 }

        *(v341 + 88) = _Q0;
        *(v341 + 104) = v391;
        v451 = v57;
        v31 = v397;
LABEL_175:
        v55 = *(v27 + 2);
        v57 = &selRef__modalAnimationFinishedEndIgnoringInteractiveEvents_;
        if (v55)
        {

          v345 = 0;
          v346 = 0;
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_188C46144(v27);
            }

            v347 = *(v27 + 2);
            if (v346 >= v347)
            {
              break;
            }

            *&v27[v345 + 72] = vaddq_f64(v396, *&v27[v345 + 72]);
            v348 = *(v3 + v397);
            v349 = 1.0;
            if (v348)
            {
              v350 = *(v348 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
              if (v350)
              {
                [v350 _navigationBarLeadingBarButtonsAlpha];
                v347 = *(v27 + 2);
              }
            }

            if (v346 >= v347)
            {
              goto LABEL_217;
            }

            ++v346;
            *&v27[v345 + 104] = v349;
            v345 += 192;
            if (v55 == v346)
            {
              sub_188C46158(v27);
              v31 = v397;
              goto LABEL_186;
            }
          }

          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
        }

        else
        {
LABEL_186:
          v55 = *(v26 + 2);
          if (v55)
          {

            v27 = 0;
            v351 = 0;
            while (1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v26 = sub_188C46144(v26);
              }

              v352 = *(v26 + 2);
              if (v351 >= v352)
              {
                goto LABEL_218;
              }

              *&v27[v26 + 72] = vaddq_f64(v395, *&v27[v26 + 72]);
              v353 = *(v3 + v31);
              v354 = 1.0;
              if (v353)
              {
                v355 = *(v353 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
                if (v355)
                {
                  [v355 _navigationBarLeadingBarButtonsAlpha];
                  v352 = *(v26 + 2);
                }
              }

              if (v351 >= v352)
              {
                goto LABEL_219;
              }

              ++v351;
              *&v27[v26 + 104] = v354;
              v27 += 192;
              if (v55 == v351)
              {
                sub_188C46158(v26);
                break;
              }
            }
          }

          v55 = *(v29 + 2);
          if (v55)
          {
            v57 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarAlpha;

            v26 = 0;
            v27 = 0;
            while (1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v29 = sub_188C46144(v29);
              }

              if (v27 >= *(v29 + 2))
              {
                goto LABEL_220;
              }

              ++v27;
              v356 = &v26[v29];
              *(v356 + 72) = vaddq_f64(v394, *&v26[v29 + 72]);
              *(v356 + 24) = *(v3 + v57);
              v26 += 192;
              if (v55 == v27)
              {
                sub_188C46158(v29);
                break;
              }
            }
          }

          v55 = *(v28 + 2);
          if (!v55)
          {
LABEL_215:
            sub_188B44A2C(v451, v450, v392 & 1);

            sub_188B49B18();
            return;
          }

          v57 = 0;
          v29 = 0;
          v26 = &selRef__modalAnimationFinishedEndIgnoringInteractiveEvents_;
          v27 = &OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView;
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_188C46144(v28);
            }

            v357 = *(v28 + 2);
            if (v29 >= v357)
            {
              break;
            }

            *&v28[v57 + 72] = vaddq_f64(v393, *&v28[v57 + 72]);
            v358 = *(v3 + v31);
            v359 = 1.0;
            if (v358)
            {
              v360 = *(v358 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
              if (v360)
              {
                [v360 _navigationBarTrailingBarButtonsAlpha];
                v357 = *(v28 + 2);
              }
            }

            if (v29 >= v357)
            {
              goto LABEL_222;
            }

            ++v29;
            *&v28[v57 + 104] = v359;
            v57 += 192;
            if (v55 == v29)
            {
              sub_188C46158(v28);
              goto LABEL_215;
            }
          }
        }

        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        v57 = sub_188B8B63C(0, *(v57 + 16) + 1, 1, v57);
        continue;
      }
    }

    if (v452)
    {
      goto LABEL_82;
    }

    if ((v8[372] & 1) != 0 || (v8[320] & 1) != 0 || (v8[321] & 1) != 0 || (v8[370] & 1) != 0 && (v8[373] & 1) == 0 || (v8[371] & 1) != 0 && (v8[373] & 1) == 0)
    {
      goto LABEL_169;
    }

    v225 = 0.0;
    if (*(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleElementsHidden) != 1)
    {
      v226 = 1.0;
      if (*(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession))
      {
        v226 = 0.0;
      }

      if (!*(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle))
      {
        v225 = v226;
      }
    }

    v227 = v225 * *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineTitleViewAlpha);
    v228 = *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView);
    v391 = v8;
    if (v228)
    {
      v229 = MEMORY[0x1E69E7CC0];
      *&v387 = sub_188B8B75C(MEMORY[0x1E69E7CC0]);
      v230 = v228;
      v231 = sub_188B8B63C(0, 1, 1, v229);
      v233 = *(v231 + 2);
      v232 = *(v231 + 3);
      v234 = v231;
      if (v233 >= v232 >> 1)
      {
        v234 = sub_188B8B63C((v232 > 1), v233 + 1, 1, v231);
      }

      *(v234 + 2) = v233 + 1;
      v235 = &v234[80 * v233];
      v236 = v234;
      *(v235 + 4) = v230;
      v235[40] = 2;
      *(v235 + 6) = 0;
      v237 = v381;
      *(v235 + 7) = v380;
      *(v235 + 8) = v237;
      v238 = v383;
      *(v235 + 9) = v382;
      *(v235 + 10) = v238;
      *(v235 + 11) = v227;
      v239 = v387;
      *(v235 + 12) = 0x3FF0000000000000;
      *(v235 + 13) = v239;
      v31 = v397;
    }

    else
    {
      *&v236 = MEMORY[0x1E69E7CC0];
    }

    v240 = *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView);
    if (v240)
    {
      v241 = sub_188B8B75C(MEMORY[0x1E69E7CC0]);
      v242 = v240;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v387 = v241;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        *&v236 = COERCE_DOUBLE(sub_188B8B63C(0, *(v236 + 2) + 1, 1, v236));
      }

      v244 = v236;
      v245 = *(v236 + 2);
      v246 = v244;
      v247 = *(v244 + 3);
      if (v245 >= v247 >> 1)
      {
        v246 = sub_188B8B63C((v247 > 1), v245 + 1, 1, v246);
      }

      *(v246 + 2) = v245 + 1;
      v248 = &v246[80 * v245];
      v236 = v246;
      *(v248 + 4) = v242;
      v248[40] = 3;
      v249 = *(&v411 + 3);
      *(v248 + 41) = v411;
      *(v248 + 11) = v249;
      *(v248 + 6) = 0;
      v250 = v378;
      *(v248 + 56) = v379;
      *(v248 + 72) = v250;
      *(v248 + 11) = v227;
      v251 = v387;
      *(v248 + 12) = 0x3FF0000000000000;
      *(v248 + 13) = v251;
      v31 = v397;
    }

    if (*(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled) == 1)
    {
      sub_188B55154();
      v252 = *(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl);
      if (v252)
      {
        v253 = sub_188B8B75C(MEMORY[0x1E69E7CC0]);
        v254 = v252;
        v255 = swift_isUniquelyReferenced_nonNull_native();
        *&v387 = v253;
        if ((v255 & 1) == 0)
        {
          *&v236 = COERCE_DOUBLE(sub_188B8B63C(0, *(v236 + 2) + 1, 1, v236));
        }

        v256 = v236;
        v257 = *(v236 + 2);
        v258 = v256;
        v259 = *(v256 + 3);
        if (v257 >= v259 >> 1)
        {
          v258 = sub_188B8B63C((v259 > 1), v257 + 1, 1, v258);
        }

        *(v258 + 2) = v257 + 1;
        v260 = &v258[80 * v257];
        v236 = v258;
        *(v260 + 4) = v254;
        v260[40] = 0;
        v261 = *(&v411 + 3);
        *(v260 + 41) = v411;
        *(v260 + 11) = v261;
        *(v260 + 6) = 0;
        *(v260 + 7) = v15;
        *(v260 + 8) = v16;
        *(v260 + 9) = height;
        *(v260 + 10) = width;
        *(v260 + 11) = v227;
        v262 = v387;
        *(v260 + 12) = 0x3FF0000000000000;
        *(v260 + 13) = v262;
        v31 = v397;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle) != 1)
    {
      goto LABEL_167;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_188C2F390();
      v264 = v263;
      swift_unknownObjectRelease();
      v265 = fabs(v264) / 2000.0;
      if (v265 <= 1.0)
      {
        v15 = v265;
      }

      else
      {
        v15 = 1.0;
      }
    }

    else
    {
      v15 = 0.0;
    }

    v266 = *(v236 + 2);

    v267 = v236;
    v375 = v266;
    if (!v266)
    {
LABEL_166:

      v236 = v267;
LABEL_167:
      sub_188C2EE50(v236);
LABEL_168:
      v8 = v391;
      goto LABEL_169;
    }

    v268 = 0;
    v21 = v15 * 0.4;
    *&v378 = v377 + 16;
    v373 = v377 + 8;
    v372 = (v15 * -0.5 + 1.0) * 0.45;
    v269 = 32;
    v267 = v236;
    v374 = v236;
    while (1)
    {
      v270 = *(v236 + 2);
      *&v387 = v268;
      if (v268 >= v270)
      {
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        v376 = sub_188C45F78(0, *(v376 + 2) + 1, 1, v376);
LABEL_75:
        v191 = *(v376 + 2);
        v190 = *(v376 + 3);
        if (v191 >= v190 >> 1)
        {
          v376 = sub_188C45F78((v190 > 1), v191 + 1, 1, v376);
        }

        v192 = v376;
        *(v376 + 2) = v191 + 1;
        v193 = &v192[192 * v191];
        v194 = v411;
        v195 = v412;
        v196 = v414;
        *(v193 + 4) = v413;
        *(v193 + 5) = v196;
        *(v193 + 2) = v194;
        *(v193 + 3) = v195;
        v197 = v415;
        v198 = v416;
        v199 = v418;
        *(v193 + 8) = v417;
        *(v193 + 9) = v199;
        *(v193 + 6) = v197;
        *(v193 + 7) = v198;
        v200 = v419;
        v201 = v420;
        v202 = v421[1];
        *(v193 + 12) = v421[0];
        *(v193 + 13) = v202;
        *(v193 + 10) = v200;
        *(v193 + 11) = v201;
        v450 = v192;
        v8 = v391;
        v30 = v372;
        goto LABEL_78;
      }

      *&v384 = v267;
      v447[0] = *&v236[v269];
      v271 = *&v236[v269 + 16];
      v272 = *&v236[v269 + 32];
      v273 = *&v236[v269 + 48];
      v449[1] = *&v236[v269 + 64];
      v449[0] = v273;
      v448 = v272;
      v447[1] = v271;
      v274 = BYTE8(v447[0]);
      v446[0] = *(v447 + 9);
      *(v446 + 3) = HIDWORD(v447[0]);
      v275 = *(&v271 + 1);
      v276 = v272;
      v277 = *&v273;
      v445 = *(v449 + 8);
      v381 = *(&v449[1] + 1);
      v382 = *&v447[0];
      sub_188B8B3D0(v447, &v411);
      if (qword_1ED48D340 != -1)
      {
        swift_once();
      }

      *&v379 = v387 + 1;
      v278 = byte_1EA994DD0 ? 0.0 : 15.0;
      v453.origin.x = v275;
      *&v453.origin.y = v276;
      v453.size.height = v277;
      v454 = CGRectOffset(v453, 0.0, v278);
      x = v454.origin.x;
      y = v454.origin.y;
      width = v454.size.width;
      height = v454.size.height;
      v380 = v269;
      LODWORD(v383) = v274;
      if (((1 << v274) & 0x1B) != 0)
      {
        break;
      }

      if (((1 << v274) & 0x60) == 0)
      {
        v324 = v390;
        sub_18A4A5F78();
        v377 = *v378;
        v325 = v385;
        v326 = v386;
        v327 = (v377)(v385, v324, v386);
        LOBYTE(v411) = 1;
        LOBYTE(v403) = 1;
        v328 = MEMORY[0x18CFE0EE0](v327);
        sub_18A4A5F58();
        v330 = v329;
        v331 = *v373;
        (*v373)(v325, v326);
        v376 = v331;
        (v331)(v390, v326);
        *&v422 = v328;
        *(&v422 + 1) = v330;
        *&v423 = 0;
        *(&v423 + 1) = v411 & 1;
        *&v424[0] = 0;
        *(&v424[0] + 1) = v403 & 1 | 0x8000000000000000;
        memset(&v424[1], 0, 41);
        v332 = v390;
        sub_18A4A5F78();
        v333 = (v377)(v325, v332, v326);
        LOBYTE(v411) = 1;
        LOBYTE(v403) = 1;
        v15 = MEMORY[0x18CFE0EE0](v333);
        sub_18A4A5F58();
        v16 = v334;
        v335 = v325;
        v336 = v376;
        (v376)(v335, v326);
        (v336)(v332, v326);
        goto LABEL_147;
      }

      v423 = 0u;
      memset(v424, 0, 56);
      v422 = 0u;
      BYTE8(v424[3]) = -1;
      v398 = 0u;
      v399 = 0u;
      v400 = 0u;
      v401 = 0u;
      memset(v402, 0, 24);
      v402[24] = -1;
LABEL_150:
      sub_188A3F29C(&v422, &v411, &qword_1EA9362D0, &qword_18A66CFA0);
      sub_188A3F29C(&v398, &v417, &qword_1EA9362D0, &qword_18A66CFA0);
      v408 = v419;
      v409 = v420;
      v410[0] = v421[0];
      *(v410 + 9) = *(v421 + 9);
      v405[2] = v415;
      v405[3] = v416;
      v406 = v417;
      v407 = v418;
      v403 = v411;
      v404 = v412;
      v405[0] = v413;
      v405[1] = v414;
      v294 = v381;
      v295 = swift_isUniquelyReferenced_nonNull_native();
      v444 = v294;
      v31 = sub_188A403F4(&type metadata for NavigationBarContentView.TitleElementsHiddenKey);
      v297 = *(v294 + 2);
      v298 = (v296 & 1) == 0;
      v299 = v297 + v298;
      if (__OFADD__(v297, v298))
      {
        goto LABEL_227;
      }

      if (*(v294 + 3) >= v299)
      {
        if ((v295 & 1) == 0)
        {
          v337 = v296;
          sub_188FA2B14();
          v296 = v337;
        }
      }

      else
      {
        v300 = v296;
        sub_188C2F0A4(v299, v295);
        v301 = sub_188A403F4(&type metadata for NavigationBarContentView.TitleElementsHiddenKey);
        if ((v300 & 1) != (v302 & 1))
        {
          goto LABEL_238;
        }

        v31 = v301;
        v296 = v300;
      }

      v70 = COERCE_DOUBLE(&v440);
      v303 = v384;
      v55 = v444;
      if (v296)
      {
        sub_188EC21B4(&v403, *(v444 + 7) + 192 * v31);
      }

      else
      {
        *&v444[8 * (v31 >> 6) + 64] |= 1 << v31;
        *(*(v55 + 6) + 8 * v31) = &type metadata for NavigationBarContentView.TitleElementsHiddenKey;
        v304 = (*(v55 + 7) + 192 * v31);
        v305 = v403;
        v306 = v404;
        v307 = v405[1];
        v304[2] = v405[0];
        v304[3] = v307;
        *v304 = v305;
        v304[1] = v306;
        v308 = v405[2];
        v309 = v405[3];
        v310 = v407;
        v304[6] = v406;
        v304[7] = v310;
        v304[4] = v308;
        v304[5] = v309;
        v311 = v408;
        v312 = v409;
        v313 = v410[0];
        *(v304 + 169) = *(v410 + 9);
        v304[9] = v312;
        v304[10] = v313;
        v304[8] = v311;
        v314 = *(v55 + 2);
        _VF = __OFADD__(v314, 1);
        v315 = v314 + 1;
        if (_VF)
        {
          goto LABEL_232;
        }

        *(v55 + 2) = v315;
      }

      v31 = v397;
      *&v440 = v382;
      BYTE8(v440) = v383;
      *(&v440 + 9) = v446[0];
      HIDWORD(v440) = *(v446 + 3);
      *&v441 = 0x4010000000000000;
      *(&v441 + 1) = x;
      *&v442 = y;
      *(&v442 + 1) = width;
      *v443 = height;
      *(v443 + 8) = v445;
      *(&v443[1] + 1) = v55;
      sub_188B8B3D0(&v440, v439);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v384 = sub_188C2F090(v303);
      }

      sub_188A3F5FC(&v398, &qword_1EA9362D0, &qword_18A66CFA0);
      sub_188A3F5FC(&v422, &qword_1EA9362D0, &qword_18A66CFA0);
      v429 = v382;
      v430 = v383;
      *v431 = v446[0];
      *&v431[3] = *(v446 + 3);
      v432 = 0x4010000000000000;
      v433 = x;
      v434 = y;
      v435 = width;
      v436 = height;
      v437 = v445;
      v438 = v55;
      sub_188B8BA00(&v429);
      v267 = v384;
      if (v387 >= *(v384 + 16))
      {
        goto LABEL_228;
      }

      v316 = v380;
      v317 = (v384 + v380);
      v439[0] = *(v384 + v380);
      v318 = *(v384 + v380 + 16);
      v319 = *(v384 + v380 + 32);
      v320 = *(v384 + v380 + 48);
      v439[4] = *(v384 + v380 + 64);
      v439[3] = v320;
      v439[2] = v319;
      v439[1] = v318;
      v321 = v443[1];
      v323 = v441;
      v322 = v442;
      v317[3] = v443[0];
      v317[4] = v321;
      v317[1] = v323;
      v317[2] = v322;
      *v317 = v440;
      sub_188B8BA00(v439);
      v269 = v316 + 80;
      v268 = v379;
      v236 = v374;
      if (v375 == v379)
      {
        goto LABEL_166;
      }
    }

    v281 = v390;
    sub_18A4A5F78();
    v377 = *v378;
    v282 = v385;
    v283 = v386;
    v284 = (v377)(v385, v281, v386);
    LOBYTE(v411) = 1;
    LOBYTE(v403) = 1;
    v285 = MEMORY[0x18CFE0EE0](v284);
    sub_18A4A5F58();
    v287 = v286;
    v288 = *v373;
    (*v373)(v282, v283);
    v376 = v288;
    (v288)(v390, v283);
    *&v422 = v285;
    *(&v422 + 1) = v287;
    *&v423 = 0;
    *(&v423 + 1) = v411 & 1;
    *&v424[0] = 0;
    *(&v424[0] + 1) = v403 & 1 | 0x8000000000000000;
    memset(&v424[1], 0, 41);
    v289 = v390;
    sub_18A4A5F78();
    v290 = (v377)(v282, v289, v283);
    LOBYTE(v411) = 1;
    LOBYTE(v403) = 1;
    v15 = MEMORY[0x18CFE0EE0](v290);
    sub_18A4A5F58();
    v16 = v291;
    v292 = v282;
    v293 = v376;
    (v376)(v292, v283);
    (v293)(v289, v283);
LABEL_147:
    *&v398 = v15;
    *(&v398 + 1) = v16;
    *&v399 = 0;
    *(&v399 + 1) = v411 & 1;
    *&v400 = 0;
    *(&v400 + 1) = v403 & 1 | 0x8000000000000000;
    v401 = 0u;
    memset(v402, 0, 25);
    goto LABEL_150;
  }

LABEL_237:
  *&v411 = 0;
  *(&v411 + 1) = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000039, 0x800000018A690140);
  v361 = v376;
  *&v403 = v376;
  swift_getWitnessTable();
  sub_18A4A8698();
  MEMORY[0x18CFE22D0](0x3A726579614C202ELL, 0xE900000000000020);
  *&v403 = [v361 _displayLayer];
  type metadata accessor for _UINavigationBarTitleDisplayLayer(0);
  sub_18A4A82D8();
  sub_18A4A8398();
  __break(1u);
LABEL_238:
  sub_18A4A87A8();
  __break(1u);
}

char *sub_188B3EF60(uint64_t *a1)
{
  v149 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout;
  v3 = *a1;
  v144 = *(*(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout) + 16);
  if (v144 != *(*a1 + 16))
  {
    goto LABEL_120;
  }

  v1 = v2;
  *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_needsAppearanceUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_plainAppearanceChanged) = 0;
  *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_doneAppearanceChanged) = 0;
  v217 = 0;
  v218 = 0;
  v216 = v3;
  v147 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_transitionGroupIdentifier;
  v148 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_position;
  v146 = v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics;
  sub_188B3FE54(a1, &v204);
  __asm { FMOV            V0.2D, #1.0 }

  v145 = _Q0;
  *(&v154 + 1) = v2;
  v155 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_188B46254(&v204);
    v202 = v206;
    v203 = v207;
    v200 = v204;
    v201 = v205;
    if (!*(&v204 + 1))
    {
LABEL_104:

      return v155;
    }

    if ((v200 & 0x8000000000000000) != 0)
    {
      goto LABEL_114;
    }

    v158 = *(&v204 + 1);
    v9 = *(v1 + v149);
    if (v200 >= *(v9 + 16))
    {
      break;
    }

    v151 = v202;
    v159 = v201;
    v152 = v203;
    v153 = *(&v203 + 1);
    *&v154 = v200;
    v10 = (v9 + 24 * v200);
    v11 = v10[4];
    v150 = v10[5];
    v156 = v10[6];
    if (v11 >> 62)
    {
      v12 = sub_18A4A7F68();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v182 = v11;
    if (v12)
    {
      v1 = 0;
      v183 = v11 & 0xC000000000000001;
      v179 = v11 & 0xFFFFFFFFFFFFFF8;
      v176 = v11 + 32;
      v13 = MEMORY[0x1E69E7CC0];
      v174 = v12;
      while (1)
      {
        if (v183)
        {
          v14 = sub_188E49D08(v1, v11);
        }

        else
        {
          if (v1 >= *(v179 + 16))
          {
            goto LABEL_107;
          }

          v14 = *(v176 + 8 * v1);
        }

        v15 = v14;
        _VF = __OFADD__(v1++, 1);
        if (_VF)
        {
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        v16 = OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty;
        v17 = v14[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty];
        v18 = v14;
        if (v17 == 1)
        {
          sub_188BB7274();
          v15[v16] = 0;
        }

        v19 = MEMORY[0x1E69E7CC0];
        if ((v18[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled] & 1) == 0)
        {
          if (v18[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341B0, &qword_18A64BE00);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_18A64BFB0;
            v21 = &v18[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout];
            v22 = v18[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout + 8];
            if (v22 > 0xFD)
            {
              goto LABEL_121;
            }

            v19 = v20;
            v23 = *v21;
            *(v19 + 32) = *v21;
            *(v19 + 40) = v22;
            sub_188BB803C(v23, v22);
          }

          else
          {
            v19 = *&v18[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_configuredItemLayouts];
          }
        }

        v185 = v13;
        v24 = *(v19 + 16);
        if (v24)
        {
          v25 = 0;
          v26 = v19 + 40;
          v27 = -v24;
          v28 = MEMORY[0x1E69E7CC0];
          do
          {
            v29 = *(v19 + 16);
            if (v25 > v29)
            {
              v29 = v25;
            }

            v30 = -v29;
            v31 = (v26 + 16 * v25++);
            while (1)
            {
              if (v30 + v25 == 1)
              {
                __break(1u);
                goto LABEL_104;
              }

              v32 = *v31;
              if ((v32 & 0x80000000) == 0)
              {
                v33 = *(v31 - 1);
                v34 = v33[22];
                if (v34)
                {
                  break;
                }
              }

              ++v25;
              v31 += 16;
              if (v27 + v25 == 1)
              {
                goto LABEL_39;
              }
            }

            v171 = v26;
            v35 = v33[2];
            sub_188BB803C(v33, v32);
            v36 = v34;
            v37 = v35;
            v167 = v36;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_188C45B58(0, v28[2] + 1, 1, v28);
            }

            v39 = v28[2];
            v38 = v28[3];
            if (v39 >= v38 >> 1)
            {
              v28 = sub_188C45B58((v38 > 1), v39 + 1, 1, v28);
            }

            sub_188BB8460(v33, v32);
            v28[2] = v39 + 1;
            v40 = &v28[2 * v39];
            v26 = v171;
            v40[4] = v37;
            v40[5] = v167;
          }

          while (v27 + v25);
        }

        else
        {
          v28 = MEMORY[0x1E69E7CC0];
        }

LABEL_39:

        v41 = v28[2];
        v13 = v185;
        v42 = v185[2];
        v43 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          goto LABEL_108;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v43 <= v185[3] >> 1)
        {
          if (v28[2])
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v42 <= v43)
          {
            v45 = v42 + v41;
          }

          else
          {
            v45 = v42;
          }

          v13 = sub_188C45B58(isUniquelyReferenced_nonNull_native, v45, 1, v185);
          if (v28[2])
          {
LABEL_48:
            if ((v13[3] >> 1) - v13[2] < v41)
            {
              goto LABEL_110;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9341C0, &unk_18A6614E0);
            swift_arrayInitWithCopy();

            v11 = v182;
            if (v41)
            {
              v46 = v13[2];
              _VF = __OFADD__(v46, v41);
              v47 = v46 + v41;
              if (_VF)
              {
                goto LABEL_113;
              }

              v13[2] = v47;
            }

            goto LABEL_11;
          }
        }

        v11 = v182;
        if (v41)
        {
          goto LABEL_109;
        }

LABEL_11:
        if (v1 == v174)
        {
          goto LABEL_54;
        }
      }
    }

    v13 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v1 = *(*(&v154 + 1) + v148);
    if (v1 >= 2)
    {
      if (v1 != 2)
      {
        goto LABEL_123;
      }

      v48 = v154 + 1;
      if (__OFADD__(v154, 1))
      {
        goto LABEL_117;
      }

      _VF = __OFSUB__(v144, v48);
      v49 = v144 - v48;
      if (_VF)
      {
        goto LABEL_118;
      }

      *&v154 = v49;
    }

    v1 = v13[2];

    v157 = v1;
    if (v1)
    {
      v51 = 0;
      v52 = (v13 + 5);
      v53 = (v50 + 48);
      v184 = MEMORY[0x1E69E7CC0];
      v186 = v13;
      while (v51 < v13[2])
      {
        v54 = *(v52 - 1);
        v55 = *(v50 + 16);
        if (v51 == v55)
        {

          goto LABEL_76;
        }

        if (v51 >= v55)
        {
          goto LABEL_112;
        }

        v165 = v52;
        v56 = *v52;
        v57 = *(v53 - 2);
        v58 = *(v53 - 1);
        v180 = *v53;
        v172 = *(v53 + 1);
        v177 = *(v53 + 3);
        v59 = *(v53 + 5);
        v175 = *(v53 + 4);
        v60 = *(v53 + 6);
        v61 = v54;
        v168 = v56;
        v62 = [(UIBarButtonItem *)v61 _typedStorage];
        v63 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();
        v64 = *(&v62->super.isa + v63);
        if (*(v64 + 16) && (v65 = sub_188A403F4(&_s8BadgeKeyVN), (v66 & 1) != 0))
        {
          v67 = *(*(v64 + 56) + 8 * v65);
          swift_endAccess();
          v68 = v67[3];
          v69 = v67[4];
          v70 = v67[5];
          v72 = v67[6];
          v71 = v67[7];
          v73 = v67[2];
          sub_188EC2284(v73, v68, v69, v70, v72, v71);
        }

        else
        {
          swift_endAccess();
          v73 = 0;
          v68 = 0;
          v69 = 0;
          v72 = 0;
          v71 = 0;
          v70 = 1;
        }

        v74 = v61;
        v161 = v168;
        v75 = sub_188C1908C(v74);
        v163 = v76;
        v164 = v75;
        v162 = v77;
        LOBYTE(v204) = 0;
        v169 = v68;
        v1 = v71;
        sub_188EC2284(v73, v68, v69, v70, v72, v71);
        sub_188EC2210(0, 0, 0, 1, 0, 0);
        v160 = v204;
        v78 = v73;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_188C45C8C(0, *(v184 + 2) + 1, 1, v184);
        }

        v80 = *(v184 + 2);
        v79 = *(v184 + 3);
        if (v80 >= v79 >> 1)
        {
          v184 = sub_188C45C8C((v79 > 1), v80 + 1, 1, v184);
        }

        sub_188EC2210(v78, v169, v69, v70, v72, v71);
        *(v184 + 2) = v80 + 1;
        v81 = &v184[160 * v80];
        *(v81 + 4) = v161;
        *(v81 + 5) = 0;
        ++v51;
        v81[48] = v160;
        v82 = *(&v204 + 3);
        *(v81 + 49) = v204;
        *(v81 + 13) = v82;
        *(v81 + 7) = v57 - *&v159;
        *(v81 + 8) = v58 - *(&v159 + 1);
        *&v83 = v180;
        *(&v83 + 1) = v172;
        *&v84 = v177;
        *(&v84 + 1) = v175;
        *(v81 + 88) = v84;
        *(v81 + 72) = v83;
        *(v81 + 13) = v59;
        *(v81 + 14) = v60;
        *(v81 + 15) = v164;
        *(v81 + 16) = v163;
        v81[136] = v162;
        v85 = *(&v190 + 3);
        *(v81 + 137) = v190;
        *(v81 + 35) = v85;
        *(v81 + 18) = v78;
        *(v81 + 19) = v169;
        *(v81 + 20) = v69;
        *(v81 + 21) = v70;
        *(v81 + 22) = v72;
        *(v81 + 23) = v71;
        v52 = v165 + 2;
        v53 += 9;
        v50 = v158;
        v13 = v186;
        if (v157 == v51)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_111;
    }

    v184 = MEMORY[0x1E69E7CC0];
LABEL_76:

    sub_188BBA230(*(&v154 + 1) + v147, v199);
    v86 = *(v146 + 56);
    v204 = v154;
    sub_188C45DBC();

    v87 = v153;
    sub_18A4A8048();
    v1 = &v190;
    *&v192[24] = v151;
    *&v192[8] = v159;
    *&v192[40] = v145;
    *&v192[56] = v150;
    *&v193 = v156;
    sub_188BBA230(v199, &v204);
    sub_18A4A8048();
    v88 = v184;
    *&v196 = v184;
    BYTE8(v197) = v152 & 1;
    *&v198 = v153;
    *(&v198 + 1) = v86;

    v187 = sub_188E8DE50(MEMORY[0x1E69E7CC0]);
    v89 = *(v184 + 2);
    if (v89)
    {
      v90 = 0;
      v91 = v184 + 32;
      v92 = v89 - 1;
      do
      {
        v93 = &v91[160 * v90];
        v94 = v90;
        while (1)
        {
          if (v94 >= *(v88 + 2))
          {
            __break(1u);
            goto LABEL_106;
          }

          v95 = *(v93 + 1);
          v204 = *v93;
          v205 = v95;
          v96 = *(v93 + 2);
          v97 = *(v93 + 3);
          v98 = *(v93 + 5);
          v208 = *(v93 + 4);
          v209 = v98;
          v206 = v96;
          v207 = v97;
          v99 = *(v93 + 6);
          v100 = *(v93 + 7);
          v101 = *(v93 + 9);
          v212 = *(v93 + 8);
          v213 = v101;
          v210 = v99;
          v211 = v100;
          v1 = *(&v212 + 1);
          v90 = v94 + 1;
          if (*(&v212 + 1) != 1)
          {
            break;
          }

          v93 += 160;
          ++v94;
          if (v89 == v90)
          {
            goto LABEL_97;
          }
        }

        v170 = v92;
        v173 = v91;
        v102 = v211;
        v103 = v212;
        v104 = *(&v213 + 1);
        v181 = v213;
        v105 = v204;
        v178 = *(&v213 + 1);
        if (v205)
        {
          v106 = *(&v204 + 1);
          sub_188C464C4(&v204, v188);
          sub_188EC2284(v102, *(&v102 + 1), v103, v1, v181, v178);
          sub_188C468DC(v105, v106, 1);

          v105 = v106;
          v104 = v178;
        }

        else
        {
          sub_188C464C4(&v204, v188);
          sub_188EC2284(v102, *(&v102 + 1), v103, v1, v181, v104);
        }

        v188[0] = v105;
        v189 = 0;
        v107 = v103;
        sub_188EC22E0(v102, *(&v102 + 1), v103);
        v108 = v104;
        v109 = v1;
        v110 = v181;
        v111 = swift_isUniquelyReferenced_nonNull_native();
        v112 = sub_188C46540(v188);
        v114 = v187[2];
        v115 = (v113 & 1) == 0;
        _VF = __OFADD__(v114, v115);
        v116 = v114 + v115;
        if (_VF)
        {
          goto LABEL_116;
        }

        v117 = v113;
        if (v187[3] >= v116)
        {
          v119 = v102;
          if ((v111 & 1) == 0)
          {
            v130 = v112;
            sub_188FA2944();
            v112 = v130;
          }
        }

        else
        {
          sub_1890BC574(v116, v111);
          v112 = sub_188C46540(v188);
          if ((v117 & 1) != (v118 & 1))
          {
            goto LABEL_122;
          }

          v119 = v102;
        }

        if (v117)
        {
          v120 = v187[7] + 48 * v112;
          v121 = *v120;
          v122 = *(v120 + 8);
          v123 = *(v120 + 24);
          v124 = *(v120 + 32);
          v166 = *(v120 + 40);
          *v120 = v119;
          *(v120 + 8) = *(&v102 + 1);
          v125 = *(v120 + 16);
          *(v120 + 16) = v107;
          *(v120 + 24) = v1;
          *(v120 + 32) = v181;
          *(v120 + 40) = v178;
          sub_188EC226C(v121, v122, v125);

          sub_188C46888(&v204);
          sub_188EC2210(v119, *(&v102 + 1), v107, v1, v181, v178);
          sub_188C4680C(v188);
        }

        else
        {
          v187[(v112 >> 6) + 8] |= 1 << v112;
          v126 = 48 * v112;
          sub_188C46604(v188, v187[6] + 48 * v112);
          v127 = v187[7] + v126;
          *v127 = v119;
          *(v127 + 8) = *(&v102 + 1);
          *(v127 + 16) = v107;
          *(v127 + 24) = v1;
          *(v127 + 32) = v181;
          *(v127 + 40) = v178;
          sub_188C46888(&v204);
          sub_188EC2210(v119, *(&v102 + 1), v107, v1, v181, v178);
          sub_188C4680C(v188);
          v128 = v187[2];
          _VF = __OFADD__(v128, 1);
          v129 = v128 + 1;
          if (_VF)
          {
            goto LABEL_119;
          }

          v187[2] = v129;
        }

        v92 = v170;
        v91 = v173;
        v88 = v184;
      }

      while (v170 != v94);
    }

LABEL_97:

    sub_188BBA15C(v199);
    *(&v196 + 1) = v187;
    *&v197 = 0x3FF0000000000000;
    v208 = *&v192[32];
    v209 = *&v192[48];
    v210 = v193;
    v211 = v194;
    v204 = v190;
    v205 = v191;
    v206 = *v192;
    v207 = *&v192[16];
    v212 = v195;
    v213 = v196;
    v214 = v197;
    v215 = v198;
    sub_188C45F1C(&v204, &v190);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v155 = sub_188C45F78(0, *(v155 + 2) + 1, 1, v155);
    }

    v132 = *(v155 + 2);
    v131 = *(v155 + 3);
    if (v132 >= v131 >> 1)
    {
      v155 = sub_188C45F78((v131 > 1), v132 + 1, 1, v155);
    }

    sub_188A3F5FC(&v200, &qword_1EA93B3E8, &unk_18A6614F0);
    sub_188C460F0(&v204);
    *(v155 + 2) = v132 + 1;
    v133 = &v155[192 * v132];
    v134 = *&v192[16];
    v135 = v190;
    v136 = v191;
    *(v133 + 4) = *v192;
    *(v133 + 5) = v134;
    *(v133 + 2) = v135;
    *(v133 + 3) = v136;
    v137 = v194;
    v139 = *&v192[32];
    v138 = *&v192[48];
    *(v133 + 8) = v193;
    *(v133 + 9) = v137;
    *(v133 + 6) = v139;
    *(v133 + 7) = v138;
    v140 = v198;
    v142 = v195;
    v141 = v196;
    *(v133 + 12) = v197;
    *(v133 + 13) = v140;
    *(v133 + 10) = v142;
    *(v133 + 11) = v141;
    v1 = *(&v154 + 1);
  }

LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  sub_18A4A87A8();
  __break(1u);
LABEL_123:
  *&v204 = 0;
  *(&v204 + 1) = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000012, 0x800000018A6A2C10);
  *&v190 = v1;
  type metadata accessor for _UINavigationButtonBarPosition(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0xD000000000000017, 0x800000018A6A2C30);
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

void *sub_188B3FEB0@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v270 = a1[2];
  v276 = a1[1];
  v277 = a1[3];
  v262 = a1[4];
  v279 = a1[5];
  v281 = *a1;
  v224 = *(v2 + 136);
  v225 = *(v2 + 128);
  v222 = *(v2 + 152);
  v223 = *(v2 + 144);
  v6 = *(v2 + 160);
  if ((v6 & 1) != 0 || *(v2 + 216) != 2)
  {
    v307.origin.x = *(v2 + 32);
    v307.origin.y = *(v2 + 40);
    v307.size.width = *(v2 + 96);
    v307.size.height = *(v2 + 104);
    v8 = *(v2 + 64);
    v7 = *(v2 + 72);
    v9 = *(v2 + 80);
    v10 = *(v2 + 88);
    v376.origin.x = v8;
    v376.origin.y = v7;
    v376.size.width = v9;
    v376.size.height = v10;
    v308 = CGRectIntersection(v307, v376);
    x = v308.origin.x;
    y = v308.origin.y;
    width = v308.size.width;
    height = v308.size.height;
    if (CGRectGetWidth(v308) > 0.0)
    {
      v7 = y;
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(v2 + 64);
    v7 = *(v2 + 72);
    v9 = *(v2 + 80);
    v10 = *(v2 + 88);
  }

  v309.origin.x = v8;
  v309.origin.y = v7;
  v309.size.width = v9;
  v309.size.height = v10;
  x = CGRectGetMinX(v309);
  width = 0.0;
  height = 0.0;
LABEL_7:
  v310.origin.x = x;
  v310.origin.y = v7;
  v310.size.width = width;
  v310.size.height = height;
  MaxX = CGRectGetMaxX(v310);
  v311.origin.x = x;
  v311.origin.y = v7;
  v311.size.width = width;
  v311.size.height = height;
  if (CGRectGetWidth(v311) > 0.0)
  {
    MaxX = MaxX + *(v2 + 240);
  }

  v16 = *v2;
  v17 = *(v2 + 328);
  v296 = *(v2 + 312);
  v297 = v17;
  v18 = *(v2 + 360);
  v298 = *(v2 + 344);
  v299 = v18;
  if (v298)
  {
    v306[0] = v296;
    v306[1] = v297;
    v306[2] = v298;

    v19 = (v299)(v306, v276);
    sub_188A3F5FC(&v296, &unk_1EA936338, &unk_18A650570);
  }

  else
  {
    v19 = 0.0;
  }

  v20 = *(v2 + 161);
  v21 = *(v2 + 64);
  v22 = *(v2 + 72);
  v23 = *(v2 + 80);
  v24 = *(v2 + 88);
  if (*(v2 + 161))
  {
    if (v20 == 1)
    {
      MidY = CGRectGetMidY(*&v21);
      v312.origin.y = 0.0;
      v312.origin.x = MaxX;
      v312.size.width = v19;
      v312.size.height = v16;
      MinY = MidY + CGRectGetHeight(v312) * -0.5;
    }

    else
    {
      MaxY = CGRectGetMaxY(*&v21);
      v313.origin.y = 0.0;
      v313.origin.x = MaxX;
      v313.size.width = v19;
      v313.size.height = v16;
      MinY = MaxY - CGRectGetHeight(v313);
    }
  }

  else
  {
    MinY = CGRectGetMinY(*&v21);
  }

  v314.origin.x = MaxX;
  v314.origin.y = MinY;
  v314.size.width = v19;
  v314.size.height = v16;
  v28 = CGRectGetMaxX(v314);
  v315.origin.x = MaxX;
  v239 = MinY;
  v315.origin.y = MinY;
  v315.size.width = v19;
  v315.size.height = v16;
  if (CGRectGetWidth(v315) > 0.0)
  {
    v28 = v28 + *(v2 + 240);
  }

  v316.origin.x = sub_188F5F684(v281, v28);
  v29 = v316.origin.x;
  v30 = v316.origin.y;
  v31 = v316.size.width;
  v32 = v316.size.height;
  v267 = CGRectGetMaxX(v316);
  v233 = v30;
  v234 = v29;
  v317.origin.x = v29;
  v317.origin.y = v30;
  v235 = v32;
  v236 = v31;
  v317.size.width = v31;
  v317.size.height = v32;
  if (CGRectGetWidth(v317) > 0.0)
  {
    v267 = v267 + *(v2 + 240);
  }

  v237 = v19;
  v238 = MaxX;
  v269 = v16;
  if ((v6 & 1) != 0 || *(v2 + 216) != 2)
  {
    v318.origin.x = *(v2 + 32);
    v37 = *(v2 + 40);
    v318.size.width = *(v2 + 48);
    v318.size.height = *(v2 + 56);
    v318.origin.y = v37;
    v38 = CGRectGetMaxX(v318);
    v319.size.width = *(v2 + 112);
    v319.size.height = *(v2 + 120);
    v319.origin.x = v38 - v319.size.width;
    v34 = *(v2 + 64);
    v33 = *(v2 + 72);
    v36 = *(v2 + 80);
    v35 = *(v2 + 88);
    v319.origin.y = v37;
    v377.origin.x = v34;
    v377.origin.y = v33;
    v377.size.width = v36;
    v377.size.height = v35;
    v320 = CGRectIntersection(v319, v377);
    v39 = v320.origin.x;
    v40 = v320.origin.y;
    v41 = v320.size.width;
    v42 = v320.size.height;
    if (CGRectGetWidth(v320) > 0.0)
    {
      v33 = v40;
      goto LABEL_27;
    }
  }

  else
  {
    v34 = *(v2 + 64);
    v33 = *(v2 + 72);
    v36 = *(v2 + 80);
    v35 = *(v2 + 88);
  }

  v321.origin.x = v34;
  v321.origin.y = v33;
  v321.size.width = v36;
  v321.size.height = v35;
  v39 = CGRectGetMaxX(v321);
  v41 = 0.0;
  v42 = 0.0;
LABEL_27:
  v43 = v267;
  v322.origin.x = v39;
  v322.origin.y = v33;
  v322.size.width = v41;
  v322.size.height = v42;
  MinX = CGRectGetMinX(v322);
  v323.origin.x = v39;
  v323.origin.y = v33;
  v323.size.width = v41;
  v323.size.height = v42;
  if (CGRectGetWidth(v323) > 0.0)
  {
    MinX = MinX - *(v2 + 240);
  }

  v44 = *(v2 + 392);
  v292 = *(v2 + 376);
  v293 = v44;
  v45 = *(v2 + 424);
  v294 = *(v2 + 408);
  v295 = v45;
  if (v294)
  {
    v305[0] = v292;
    v305[1] = v293;
    v305[2] = v294;

    v46 = (v295)(v305, v277);
    sub_188A3F5FC(&v292, &unk_1EA936338, &unk_18A650570);
  }

  else
  {
    v46 = 0.0;
  }

  v47 = *(v2 + 64);
  v48 = *(v2 + 72);
  v49 = *(v2 + 80);
  v50 = *(v2 + 88);
  if (v20)
  {
    if (v20 == 1)
    {
      v51 = CGRectGetMidY(*&v47);
      v324.origin.y = 0.0;
      v324.origin.x = v267;
      v324.size.width = v46;
      v324.size.height = v269;
      v52 = v51 + CGRectGetHeight(v324) * -0.5;
    }

    else
    {
      v53 = CGRectGetMaxY(*&v47);
      v325.origin.y = 0.0;
      v325.origin.x = v267;
      v325.size.width = v46;
      v325.size.height = v269;
      v52 = v53 - CGRectGetHeight(v325);
    }
  }

  else
  {
    v52 = CGRectGetMinY(*&v47);
  }

  v302.origin.x = v267;
  v302.origin.y = v52;
  v302.size.width = v46;
  v302.size.height = v269;
  v326.origin.x = v267;
  v326.origin.y = v52;
  v326.size.width = v46;
  v326.size.height = v269;
  if (CGRectGetWidth(v326) > 0.0)
  {
    v327.origin.x = v267;
    v327.origin.y = v52;
    v327.size.width = v46;
    v327.size.height = v269;
    v43 = CGRectGetMaxX(v327) + *(v2 + 240);
  }

  rect = v46;
  v54 = *(v2 + 520);
  v288 = *(v2 + 504);
  v289 = v54;
  v55 = *(v2 + 552);
  v290 = *(v2 + 536);
  v291 = v55;
  if (v290)
  {
    v304[0] = v288;
    v304[1] = v289;
    v304[2] = v290;

    v56 = (v291)(v304, v279);
    v328.origin.y = 0.0;
    v328.origin.x = MinX;
    v328.size.width = v56;
    v328.size.height = v269;
    v57 = CGRectGetWidth(v328);
    sub_188A3F5FC(&v288, &unk_1EA936338, &unk_18A650570);
    v58 = MinX - v57;
  }

  else
  {
    v56 = 0.0;
    v58 = MinX;
  }

  v59 = *(v2 + 64);
  v60 = *(v2 + 72);
  v61 = *(v2 + 80);
  v62 = *(v2 + 88);
  if (v20)
  {
    if (v20 == 1)
    {
      v63 = CGRectGetMidY(*&v59);
      v329.origin.y = 0.0;
      v329.origin.x = v58;
      v329.size.width = v56;
      v329.size.height = v269;
      v64 = v63 + CGRectGetHeight(v329) * -0.5;
    }

    else
    {
      v65 = CGRectGetMaxY(*&v59);
      v330.origin.y = 0.0;
      v330.origin.x = v58;
      v330.size.width = v56;
      v330.size.height = v269;
      v64 = v65 - CGRectGetHeight(v330);
    }
  }

  else
  {
    v64 = CGRectGetMinY(*&v59);
  }

  v300.origin.x = v58;
  v300.origin.y = v64;
  v300.size.width = v56;
  v300.size.height = v269;
  v331.origin.x = v58;
  v331.origin.y = v64;
  v331.size.width = v56;
  v331.size.height = v269;
  if (CGRectGetWidth(v331) > 0.0)
  {
    v332.origin.x = v58;
    v332.origin.y = v64;
    v332.size.width = v56;
    v332.size.height = v269;
    MinX = CGRectGetMinX(v332) - *(v2 + 240);
  }

  v247 = v52;
  v248 = v267;
  if (v270 > 0.0)
  {
    v43 = v43 + v270 + *(v2 + 240);
  }

  v244 = v64;
  v333 = *(v2 + 64);
  v275 = v333;
  MidX = CGRectGetMidX(v333);
  v67 = *(v2 + 456);
  v284 = *(v2 + 440);
  v285 = v67;
  v68 = *(v2 + 488);
  v286 = *(v2 + 472);
  v287 = v68;
  v69 = 0.0;
  if (v286)
  {
    v303[0] = v284;
    v303[1] = v285;
    v303[2] = v286;

    v69 = (v287)(v303, v262);
    sub_188A3F5FC(&v284, &unk_1EA936338, &unk_18A650570);
  }

  v70 = CGRectGetMidX(v275);
  v334.origin.y = 0.0;
  v334.origin.x = MidX;
  v334.size.width = v69;
  v334.size.height = v269;
  v71 = v70 + CGRectGetWidth(v334) * -0.5;
  v335.origin.y = 0.0;
  v335.origin.x = v71;
  v335.size.width = v69;
  v335.size.height = v269;
  if (MinX < CGRectGetMaxX(v335))
  {
    v336.origin.y = 0.0;
    v336.origin.x = v71;
    v336.size.width = v69;
    v336.size.height = v269;
    v71 = MinX - CGRectGetWidth(v336);
  }

  v337.origin.x = v71;
  v337.origin.y = 0.0;
  v337.size.width = v69;
  v337.size.height = v269;
  if (CGRectGetMinX(v337) < v43)
  {
    v71 = v43;
  }

  v338.origin.y = 0.0;
  v338.origin.x = v71;
  v338.size.width = v69;
  v338.size.height = v269;
  if (MinX < CGRectGetMaxX(v338))
  {
    v339.origin.y = 0.0;
    v339.origin.x = v71;
    v339.size.width = v69;
    v339.size.height = v269;
    v69 = v69 - (MinX - CGRectGetMaxX(v339));
  }

  if (v20)
  {
    v72 = v71;
    if (v20 == 1)
    {
      v73 = CGRectGetMidY(v275);
      v340.origin.y = 0.0;
      v340.origin.x = v72;
      v340.size.width = v69;
      v340.size.height = v269;
      v74 = v73 + CGRectGetHeight(v340) * -0.5;
    }

    else
    {
      v75 = CGRectGetMaxY(v275);
      v341.origin.y = 0.0;
      v341.origin.x = v72;
      v341.size.width = v69;
      v341.size.height = v269;
      v74 = v75 - CGRectGetHeight(v341);
    }

    v71 = v72;
  }

  else
  {
    v74 = CGRectGetMinY(v275);
  }

  v245 = v58;
  v246 = v56;
  v301.origin.x = v71;
  v301.origin.y = v74;
  v301.size.width = v69;
  v301.size.height = v269;
  v342.origin.x = v71;
  v342.origin.y = v74;
  v342.size.width = v69;
  v342.size.height = v269;
  if (CGRectGetWidth(v342) > 0.0)
  {
    v343.origin.x = v71;
    v343.origin.y = v74;
    v343.size.width = v69;
    v343.size.height = v269;
    v43 = CGRectGetMaxX(v343);
  }

  v229 = v74;
  v231 = v71;
  v232 = v69;
  v268 = v43;
  v77 = a1[6];
  v76 = a1[7];
  v79 = a1[8];
  v78 = a1[9];
  v80 = a1[10];
  v81 = a1[13];
  v261 = a1[12];
  v82 = a1[14];
  v344.origin.y = v247;
  v344.origin.x = v248;
  v344.size.width = rect;
  v344.size.height = v269;
  v255 = CGRectGetMinX(v344);
  v282 = v78;
  v242 = v76;
  v243 = v77;
  if (v76 > v78)
  {
    v83 = v76;
  }

  else
  {
    v83 = v78;
  }

  v253 = v83;
  v84 = v79 <= 0.0 || v77 <= 0.0;
  v85 = v77 + 8.0;
  if (v84)
  {
    v85 = v77;
  }

  v86 = v79 + v85;
  v345.origin.y = v244;
  v345.origin.x = v245;
  v345.size.width = v246;
  v345.size.height = v269;
  v87 = CGRectGetWidth(v345);
  v88 = v270;
  if (v86 < v270)
  {
    v88 = v86;
  }

  if (v87 <= 0.0)
  {
    v89 = v86;
  }

  else
  {
    v89 = v88;
  }

  v263 = v79;
  v90 = v80 - v79 + v89;
  v91 = sub_188B460EC(v2, &v301, &v300, &v302);
  v95 = v91;
  v96 = v92;
  v97 = v93;
  v98 = *(v2 + 176);
  if (v89 <= v90)
  {
    v89 = v90;
  }

  v99 = v94;
  v100 = CGRectGetWidth(*&v91);
  if (v100 >= v89)
  {
    v100 = v89;
  }

  v258 = v100;
  v346.origin.x = v95;
  v346.origin.y = v96;
  v346.size.width = v97;
  v346.size.height = v99;
  v101 = CGRectGetWidth(v346);
  v218 = v99;
  v219 = v97;
  v220 = v96;
  v221 = v95;
  if (v98 == 1)
  {
    if (v81 > v82)
    {
      v102 = v81;
    }

    else
    {
      v102 = v82;
    }

    if (v101 < v102)
    {
      v102 = v101;
    }

    if (*(v3 + 608) == 255)
    {
      v103 = v95;
    }

    else
    {
      v103 = v95 + 8.0;
    }

    v104 = v258;
    if (v258 - (v103 - v95) >= v80)
    {
      v105 = v80;
    }

    else
    {
      v105 = v258 - (v103 - v95);
    }

    v106 = v102;
    v271 = v95;
    v241 = v95;
    v107 = v261;
  }

  else
  {
    if (v82 > v81)
    {
      v108 = v82;
    }

    else
    {
      v108 = v81;
    }

    if (v101 >= v108)
    {
      v101 = v108;
    }

    v259 = v101;
    v347.origin.x = v95;
    v347.origin.y = v96;
    v347.size.width = v97;
    v347.size.height = v99;
    v109 = CGRectGetMinX(v347);
    v348.origin.y = v96;
    v110 = v109;
    v348.origin.x = v95;
    v348.size.width = v97;
    v348.size.height = v99;
    v272 = CGRectGetMaxX(v348);
    v111 = CGRectGetMidX(v275);
    v349.origin.y = 0.0;
    v349.origin.x = v255;
    v349.size.width = v258;
    v349.size.height = v253;
    v112 = v111 + CGRectGetWidth(v349) * -0.5;
    if (v110 > v112)
    {
      v113 = v110;
    }

    else
    {
      v113 = v112;
    }

    v251 = CGRectGetMidX(v275);
    v350.origin.x = 0.0;
    v350.origin.y = 0.0;
    v350.size.width = v259;
    v350.size.height = v261;
    v114 = CGRectGetWidth(v350);
    v351.origin.y = 0.0;
    v256 = v113;
    v351.origin.x = v113;
    v351.size.width = v258;
    v351.size.height = v253;
    v95 = v110;
    v104 = v258;
    if (v272 >= CGRectGetMaxX(v351))
    {
      v115 = v110 > v251 + v114 * -0.5 ? v110 : v251 + v114 * -0.5;
      v352.origin.y = 0.0;
      v352.origin.x = v115;
      v352.size.width = v259;
      v352.size.height = v261;
      v116 = v272 < CGRectGetMaxX(v352);
      v95 = v116 ? v110 : v256;
      if (!v116)
      {
        v110 = v115;
      }
    }

    v271 = v110;
    v353.origin.y = 0.0;
    v353.origin.x = v95;
    v353.size.width = v258;
    v353.size.height = v253;
    v241 = CGRectGetMinX(v353);
    v354.origin.y = 0.0;
    v354.origin.x = v95;
    v354.size.width = v258;
    v354.size.height = v253;
    v117 = CGRectGetMinX(v354);
    if (*(v3 + 608) == 255)
    {
      v103 = v117;
    }

    else
    {
      v103 = v117 + 8.0;
    }

    v355.origin.y = 0.0;
    v355.origin.x = v95;
    v355.size.width = v258;
    v355.size.height = v253;
    v118 = CGRectGetMaxX(v355);
    v356.origin.y = 0.0;
    v356.origin.x = v103;
    v356.size.width = v263;
    v356.size.height = v282;
    v105 = v118 - CGRectGetMinX(v356);
    v106 = v259;
    v107 = v261;
  }

  v119 = *(v3 + 184);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v119, *&NSDirectionalEdgeInsetsZero.top), vceqq_f64(*(v3 + 200), *&NSDirectionalEdgeInsetsZero.bottom)))) & 1) == 0)
  {
    if (v119.f64[1] > v103)
    {
      v103 = *(v3 + 192);
    }

    *v264 = *(v3 + 200);
    v120 = CGRectGetMaxX(*(v3 + 32));
    v357.origin.y = 0.0;
    v357.origin.x = v103;
    v357.size.width = v105;
    v357.size.height = v282;
    v121 = v120 - CGRectGetMaxX(v357);
    if (v121 < v264[1])
    {
      v105 = v105 - (v264[1] - v121);
    }

    v104 = v258;
  }

  v122 = v269 * 0.5 + CGRectGetMinY(v275);
  if (v6)
  {
    v123 = v271;
  }

  else
  {
    v123 = v271;
    if (*(v3 + 216))
    {
      v358.origin.y = v224;
      v358.origin.x = v225;
      v358.size.height = v222;
      v358.size.width = v223;
      v122 = v122 + CGRectGetHeight(v358) + *(v3 + 224);
      v123 = v271;
    }
  }

  v273 = v123;
  v124 = 0;
  v125 = v106;
  v126 = v107;
  v260 = v106;
  v240 = v105;
  v257 = v103;
  v226 = v95;
  if (CGRectGetWidth(*&v123) == 0.0)
  {
    v228 = 0.0;
    v359.origin.y = 0.0;
    v359.origin.x = v95;
    v359.size.width = v104;
    v127 = v253;
    v359.size.height = v253;
    v128 = v122 - CGRectGetHeight(v359) * 0.5;
    v360.origin.y = 0.0;
    v360.origin.x = v241;
    v360.size.height = v242;
    v360.size.width = v243;
    v227 = v122 - CGRectGetHeight(v360) * 0.5;
    v361.origin.y = 0.0;
    v361.origin.x = v103;
    v129 = v105;
    v361.size.width = v105;
    v361.size.height = v282;
    v265 = v122 - CGRectGetHeight(v361) * 0.5;
  }

  else
  {
    v362.origin.y = 0.0;
    v362.origin.x = v103;
    v362.size.width = v105;
    v362.size.height = v282;
    v130 = CGRectGetHeight(v362);
    v363.origin.y = 0.0;
    v363.origin.x = v241;
    v363.size.width = v243;
    v363.size.height = v242;
    v131 = CGRectGetHeight(v363);
    if (v130 <= v131)
    {
      v130 = v131;
    }

    v364.origin.y = 0.0;
    v364.origin.x = v273;
    v364.size.width = v106;
    v364.size.height = v107;
    v132 = v122 + (CGRectGetHeight(v364) + v130) * -0.5;
    v365.origin.x = v103;
    v365.origin.y = v132;
    v365.size.width = v105;
    v365.size.height = v282;
    v133 = CGRectGetHeight(v365);
    v366.origin.x = v241;
    v366.origin.y = v132;
    v366.size.width = v243;
    v129 = v105;
    v366.size.height = v242;
    v127 = v253;
    v134 = CGRectGetHeight(v366);
    if (v133 <= v134)
    {
      v133 = v134;
    }

    v367.origin.x = v95;
    v367.origin.y = v132;
    v367.size.width = v258;
    v367.size.height = v253;
    v135 = CGRectGetHeight(v367);
    if (v133 > v135)
    {
      v135 = v133;
    }

    v227 = v132;
    v228 = v132 + v135;
    v265 = v132;
    v128 = v132;
  }

  v136 = v239;
  v137 = *(v3 + 648);
  v138 = 0.0;
  v252 = 0.0;
  v254 = 0.0;
  v139 = 0.0;
  v250 = 0.0;
  if (v137 != 2)
  {
    v140 = *(v3 + 656);
    v141 = *(v3 + 664);
    v142 = *(v3 + 672);
    v143 = *(v3 + 680);
    if (v137)
    {
      if (*(v3 + 680))
      {
        v144 = MinX;
        if (v143 == 1)
        {
          v145 = *(v3 + 672);
          sub_188C57860(*(v3 + 664), v145, 1);
        }

        else
        {
          v169 = sub_188C57860(*(v3 + 664), *(v3 + 672), 2);
          v141(v169, 0.0, v269, 50.0, 50.0);
          v145 = v170;
        }
      }

      else
      {
        sub_188C57860(*(v3 + 664), *(v3 + 672), 0);
        LODWORD(v160) = 1112014848;
        LODWORD(v161) = 1112014848;
        [v141 systemLayoutSizeFittingSize:0.0 withHorizontalFittingPriority:v269 verticalFittingPriority:{v160, v161}];
        v145 = v162;
        v144 = MinX;
      }

      v171 = CGRectGetMidY(v275);
      sub_188F5FD7C(v137, v140, v141, v142, v143);
      v139 = v171 + *&v145 * -0.5;
      v252 = *&v145;
      v254 = v144 - v268;
      v250 = v268;
      goto LABEL_163;
    }

    v146 = *(v3 + 584);
    sub_188C57860(*(v3 + 664), *(v3 + 672), *(v3 + 680));
    v147 = v258;
    v148 = v226;
    if (v146 == 255)
    {
      v149 = v128;
    }

    else
    {
      v148 = v257;
      v149 = v265;
    }

    if (v146 != 255)
    {
      v147 = v129;
    }

    v150 = v282;
    if (v146 == 255)
    {
      v150 = v127;
    }

    v151 = CGRectGetMinX(*&v148);
    v368.origin.y = v220;
    v368.origin.x = v221;
    v368.size.height = v218;
    v368.size.width = v219;
    v152 = v151 - *&v140;
    v153 = fmin(CGRectGetMaxX(v368) - (v151 - *&v140), 280.0);
    if (v146 != 255)
    {
      v369.origin.x = v257;
      v369.origin.y = v265;
      v369.size.width = v129;
      v369.size.height = v282;
      v154 = CGRectGetMaxX(v369);
      v370.origin.y = 0.0;
      v370.size.height = 0.0;
      v370.origin.x = v152;
      v370.size.width = v153;
      v155 = v154 - CGRectGetMinX(v370);
      if (v153 <= v155)
      {
        v153 = v155;
      }
    }

    sub_188C57860(v141, v142, v143);
    v371.size.height = 0.0;
    v371.origin.x = v152;
    v371.origin.y = 0.0;
    v371.size.width = v153;
    v156 = CGRectGetWidth(v371);
    if (v143)
    {
      if (v143 == 1)
      {
        v159 = *&v142;
LABEL_162:
        v175 = CGRectGetMidY(v275);
        v250 = v152;
        v252 = v159;
        v372.origin.x = v152;
        v372.origin.y = 0.0;
        v254 = v153;
        v372.size.width = v153;
        v372.size.height = v159;
        v176 = CGRectGetHeight(v372);
        sub_188F5FD7C(v137, v140, v141, v142, v143);
        v139 = v175 + v176 * -0.5;
LABEL_163:
        v136 = v239;
        goto LABEL_164;
      }

      v172 = v156;
      v173 = sub_188C57860(v141, v142, 2);
      v141(v173, v172, v269, 50.0, 50.0);
      v159 = v174;
      sub_188F5FD7C(v137, v140, v141, v142, 2);
      v164 = v137;
      v165 = v140;
      v166 = v141;
      v167 = v142;
      v168 = 2;
    }

    else
    {
      LODWORD(v157) = 1112014848;
      LODWORD(v158) = 1112014848;
      [v141 systemLayoutSizeFittingSize:v156 withHorizontalFittingPriority:v269 verticalFittingPriority:{v157, v158}];
      v159 = v163;
      v164 = v137;
      v165 = v140;
      v166 = v141;
      v167 = v142;
      v168 = 0;
    }

    sub_188F5FD7C(v164, v165, v166, v167, v168);
    goto LABEL_162;
  }

LABEL_164:
  if (v6)
  {
    v177 = v265;
  }

  else
  {
    v177 = v265;
    if (*(v3 + 216) == 2)
    {
      v373.origin.y = v224;
      v373.origin.x = v225;
      v373.size.height = v222;
      v373.size.width = v223;
      v138 = CGRectGetHeight(v373) + *(v3 + 224) + 0.0;
    }
  }

  v178 = v233 + v138;
  v179 = v136 + v138;
  v266 = v177;
  if (*(v3 + 584) == 255)
  {
    v278 = v139;
  }

  else
  {
    v374.origin.x = v257;
    v374.origin.y = v177;
    v374.size.width = v129;
    v374.size.height = v282;
    v180 = CGRectGetMidY(v374);
    v375.origin.x = v250;
    v375.size.height = v252;
    v375.origin.y = v139;
    v375.size.width = v254;
    v278 = v180 + CGRectGetHeight(v375) * -0.5;
  }

  v181 = v247 + v138;
  v182 = v229 + v138;
  v230 = v244 + v138;
  v184 = *(v3 + 40);
  v183 = *(v3 + 48);
  v280 = *(v3 + 56);
  v185 = *(v3 + 24);
  v186 = *(v3 + 32);
  __src[0] = UIRectIntegralWithScale(v234, v178, v236, v235, v185);
  __src[1] = v187;
  __src[2] = v188;
  __src[3] = v189;
  __src[4] = UIRectIntegralWithScale(v238, v179, v237, v269, v185);
  __src[5] = v190;
  __src[6] = v191;
  __src[7] = v192;
  __src[8] = UIRectIntegralWithScale(v248, v181, rect, v269, v185);
  __src[9] = v193;
  __src[10] = v194;
  __src[11] = v195;
  __src[12] = UIRectIntegralWithScale(v231, v182, v232, v269, v185);
  __src[13] = v196;
  __src[14] = v197;
  __src[15] = v198;
  __src[16] = UIRectIntegralWithScale(v245, v230, v246, v269, v185);
  __src[17] = v199;
  __src[18] = v200;
  __src[19] = v201;
  __src[20] = UIRectIntegralWithScale(v241, v227, v243, v242, v185);
  __src[21] = v202;
  __src[22] = v203;
  __src[23] = v204;
  __src[24] = UIRectIntegralWithScale(v257, v266, v240, v282, v185);
  __src[25] = v205;
  __src[26] = v206;
  __src[27] = v207;
  __src[28] = UIRectIntegralWithScale(v186, v184, v183, v280, v185);
  __src[29] = v208;
  __src[30] = v209;
  __src[31] = v210;
  __src[32] = UIRectIntegralWithScale(v250, v278, v254, v252, v185);
  __src[33] = v211;
  __src[34] = v212;
  __src[35] = v213;
  __src[36] = UIRectIntegralWithScale(v273, v228, v260, v261, v185);
  __src[37] = v214;
  __src[38] = v215;
  __src[39] = v216;
  if (*(v3 + 248))
  {
    sub_188F5F840(v186, v184, v183, v280);
  }

  return memcpy(a2, __src, 0x140uLL);
}

uint64_t sub_188B412BC(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F9A8, &qword_18A673010);
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v57 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F9B0, &qword_18A673018);
  MEMORY[0x1EEE9AC00](v68);
  v5 = &v57 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F9B8, &qword_18A673020);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F9A0, &unk_18A673000);
  v69 = a1;
  sub_18A4A8A58();
  v11 = sub_188A34360(&qword_1ED48CC00, &qword_1EA93F9B8, &qword_18A673020, MEMORY[0x1E69E7BC8]);
  sub_18A4A7818();
  sub_18A4A7878();
  if (v72 == v71[0])
  {
    return (*(v7 + 8))(v10, v6);
  }

  v67 = v2;
  v65 = v11;
  v13 = sub_18A4A78C8();
  v15 = *v14;
  v16 = *(v14 + 8);
  v13(v71, 0);
  v17 = *(v7 + 8);
  v66 = v6;
  v17(v10, v6);
  sub_18A4A8A58();
  v18 = v70;
  sub_188B421E0(1);
  sub_188B41938(v18, v5);
  v19 = *(v68 + 36);
  v20 = *v18;
  sub_188A3F5FC(v18, &qword_1EA93F9A8, &qword_18A673010);
  *(v19 + v5) = v20;
  if (v20 != *(v5 + 8))
  {
    v64 = *(v5 + 8);
    v63 = *v5;
    v10 = *v58;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

  v21 = v16;
  v19 = v58;
  while (1)
  {
    sub_188A3F5FC(v5, &qword_1EA93F9B0, &qword_18A673018);
    v70 = *v19;
    if (v21 != *(v70 + 2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_188B428F0(v70);
      }

      v5 = 40 * v21;
      v42 = 40 * v15;
      while (1)
      {
        if (v15 != v21)
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v43 = *(v70 + 2);
          if (v15 >= v43)
          {
            goto LABEL_46;
          }

          if (v21 >= v43)
          {
            goto LABEL_47;
          }

          v44 = v70;
          v45 = &v70[v42];
          v19 = *&v70[v42 + 32];
          v16 = *&v70[v42 + 40];
          v46 = *&v70[v42 + 48];
          v47 = *&v70[v42 + 56];
          v20 = v70[v42 + 64];
          v48 = v70[v42 + 65];
          v10 = &v70[v5];
          v49 = *&v70[v5 + 40];
          v50 = *&v70[v5 + 48];
          v51 = *&v70[v5 + 56];
          v52 = v70[v5 + 64];
          v53 = v70[v5 + 65];
          *(v45 + 4) = *&v70[v5 + 32];
          *(v45 + 5) = v49;
          *(v45 + 6) = v50;
          *(v45 + 7) = v51;
          v45[64] = v52;
          v45[65] = v53;
          v69 = *(v44 + 2);

          if (v21 >= v69)
          {
            goto LABEL_48;
          }

          *(v10 + 4) = v19;
          *(v10 + 5) = v16;
          *(v10 + 6) = v46;
          *(v10 + 7) = v47;
          v10[64] = v20;
          v10[65] = v48;
        }

        v54 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v55 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_44;
        }

        ++v21;
        v5 += 40;
        v42 += 40;
        ++v15;
        if (v55 == *(v70 + 2))
        {
          v56 = v70;
          *v58 = v70;
          v21 = *(v56 + 2);
          v15 = v54;
          goto LABEL_36;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
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
      __break(1u);
      goto LABEL_50;
    }

LABEL_36:
    v20 = v58;
    if (v21 >= v15)
    {
      return sub_188B42338(v15, v21);
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v10 = sub_188B428F0(v10);
LABEL_6:
    v22 = *(v67 + 40);
    v61 = v5;
    v62 = v22;
    v23 = v64;
    v60 = v19;
    do
    {
      v72 = v20;
      v24 = v62;
      v71[0] = v63;
      v71[1] = v23;
      v25 = v5;
      v5 = v66;
      sub_18A4A7828();
      v26 = sub_18A4A78C8();
      v21 = v27[1];
      v69 = *v27;
      v26(v71, 0);
      v20 = (v25 + v24);
      sub_18A4A7888();
      v28 = v69;
      if (v16 != v69)
      {
        if (v16 >= v69)
        {
          goto LABEL_49;
        }

        v59 = v21;
        v67 = 40 * v15;
        v68 = 40 * v16;
        v29 = v10;
        while (1)
        {
          if (v15 != v16)
          {
            if ((v15 & 0x8000000000000000) != 0)
            {
              goto LABEL_39;
            }

            v30 = *(v10 + 2);
            if (v15 >= v30)
            {
              goto LABEL_40;
            }

            if (v16 >= v30)
            {
              goto LABEL_41;
            }

            v70 = v15;
            v31 = &v29[v67];
            v5 = *&v29[v67 + 32];
            v32 = *&v29[v67 + 40];
            v19 = *&v29[v67 + 48];
            v33 = *&v29[v67 + 56];
            v20 = v29[v67 + 64];
            v34 = v29[v67 + 65];
            v35 = &v29[v68];
            v36 = *&v29[v68 + 40];
            v37 = *&v29[v68 + 48];
            v38 = *&v29[v68 + 56];
            v39 = v29[v68 + 64];
            v40 = v29[v68 + 65];
            *(v31 + 4) = *&v29[v68 + 32];
            *(v31 + 5) = v36;
            *(v31 + 6) = v37;
            *(v31 + 7) = v38;
            v31[64] = v39;
            v31[65] = v40;
            v15 = *(v10 + 2);

            if (v16 >= v15)
            {
              goto LABEL_42;
            }

            *(v35 + 4) = v5;
            *(v35 + 5) = v32;
            *(v35 + 6) = v19;
            *(v35 + 7) = v33;
            v35[64] = v20;
            v35[65] = v34;

            v28 = v69;
            v15 = v70;
          }

          v41 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          ++v16;
          v29 += 40;
          ++v15;
          if (v28 == v16)
          {
            v15 = v41;
            v5 = v61;
            v21 = v59;
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v5 = v61;
LABEL_8:
      v19 = v60;
      v20 = *(v60 + v5);
      v16 = v21;
      v23 = v64;
    }

    while (v20 != v64);
    v19 = v58;
    *v58 = v10;
  }
}

uint64_t sub_188B41938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F9A8, &qword_18A673010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_188B419A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934208, &qword_18A653BE0);
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

char *sub_188B41AC8()
{
  v1 = v0[1];
  if (!v1)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v11 = v0[7];
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = *v0;
  v3 = v0[3];
  v4 = v0[5];
  v5 = *(v0 + 8);
  v6 = v0[2];

  v7 = sub_188B419A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_188B419A8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[48 * v9];
  *(v10 + 4) = v2;
  *(v10 + 5) = v1;
  *(v10 + 6) = v6;
  *(v10 + 7) = v3;
  v10[64] = v5 & 1;
  *(v10 + 9) = v4;
  v11 = v0[7];
  if (v11)
  {
LABEL_7:
    v12 = v0[6];
    v13 = v0[9];
    v14 = v0[11];
    v15 = *(v0 + 20);
    v16 = v0[8];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_188B419A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v18 = *(v7 + 2);
    v17 = *(v7 + 3);
    if (v18 >= v17 >> 1)
    {
      v7 = sub_188B419A8((v17 > 1), v18 + 1, 1, v7);
    }

    *(v7 + 2) = v18 + 1;
    v19 = &v7[48 * v18];
    *(v19 + 4) = v12;
    *(v19 + 5) = v11;
    *(v19 + 6) = v16;
    *(v19 + 7) = v13;
    v19[64] = v15 & 1;
    *(v19 + 9) = v14;
  }

LABEL_12:
  v20 = v0[13];
  if (v20)
  {
    v21 = v0[12];
    v22 = v0[15];
    v23 = v0[17];
    v24 = *(v0 + 32);
    v25 = v0[14];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_188B419A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v27 = *(v7 + 2);
    v26 = *(v7 + 3);
    if (v27 >= v26 >> 1)
    {
      v7 = sub_188B419A8((v26 > 1), v27 + 1, 1, v7);
    }

    *(v7 + 2) = v27 + 1;
    v28 = &v7[48 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v20;
    *(v28 + 6) = v25;
    *(v28 + 7) = v22;
    v28[64] = v24 & 1;
    *(v28 + 9) = v23;
  }

  v29 = v0[19];
  if (v29)
  {
    v30 = v0[18];
    v31 = v0[21];
    v32 = v0[23];
    v33 = *(v0 + 44);
    v34 = v0[20];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_188B419A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v36 = *(v7 + 2);
    v35 = *(v7 + 3);
    if (v36 >= v35 >> 1)
    {
      v7 = sub_188B419A8((v35 > 1), v36 + 1, 1, v7);
    }

    *(v7 + 2) = v36 + 1;
    v37 = &v7[48 * v36];
    *(v37 + 4) = v30;
    *(v37 + 5) = v29;
    *(v37 + 6) = v34;
    *(v37 + 7) = v31;
    v37[64] = v33 & 1;
    *(v37 + 9) = v32;
  }

  v38 = v0[25];
  if (v38)
  {
    v39 = v0[24];
    v40 = v0[27];
    v41 = v0[29];
    v42 = *(v0 + 56);
    v43 = v0[26];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_188B419A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    if (v45 >= v44 >> 1)
    {
      v7 = sub_188B419A8((v44 > 1), v45 + 1, 1, v7);
    }

    *(v7 + 2) = v45 + 1;
    v46 = &v7[48 * v45];
    *(v46 + 4) = v39;
    *(v46 + 5) = v38;
    *(v46 + 6) = v43;
    *(v46 + 7) = v40;
    v46[64] = v42 & 1;
    *(v46 + 9) = v41;
  }

  v47 = v0[31];
  if (v47)
  {
    v48 = v0[30];
    v49 = v0[33];
    v50 = v0[35];
    v51 = *(v0 + 68);
    v52 = v0[32];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_188B419A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v54 = *(v7 + 2);
    v53 = *(v7 + 3);
    if (v54 >= v53 >> 1)
    {
      v7 = sub_188B419A8((v53 > 1), v54 + 1, 1, v7);
    }

    *(v7 + 2) = v54 + 1;
    v55 = &v7[48 * v54];
    *(v55 + 4) = v48;
    *(v55 + 5) = v47;
    *(v55 + 6) = v52;
    *(v55 + 7) = v49;
    v55[64] = v51 & 1;
    *(v55 + 9) = v50;
  }

  v56 = v0[37];
  if (v56)
  {
    v57 = v0[36];
    v58 = v0[39];
    v59 = v0[41];
    v60 = *(v0 + 80);
    v61 = v0[38];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_188B419A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v63 = *(v7 + 2);
    v62 = *(v7 + 3);
    if (v63 >= v62 >> 1)
    {
      v7 = sub_188B419A8((v62 > 1), v63 + 1, 1, v7);
    }

    *(v7 + 2) = v63 + 1;
    v64 = &v7[48 * v63];
    *(v64 + 4) = v57;
    *(v64 + 5) = v56;
    *(v64 + 6) = v61;
    *(v64 + 7) = v58;
    v64[64] = v60 & 1;
    *(v64 + 9) = v59;
  }

  v65 = v0[43];
  if (v65)
  {
    v66 = v0[42];
    v67 = v0[45];
    v68 = v0[47];
    v69 = *(v0 + 92);
    v70 = v0[44];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_188B419A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v72 = *(v7 + 2);
    v71 = *(v7 + 3);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v7 = sub_188B419A8((v71 > 1), v72 + 1, 1, v7);
    }

    *(v7 + 2) = v73;
    v74 = &v7[48 * v72];
    *(v74 + 4) = v66;
    *(v74 + 5) = v65;
    *(v74 + 6) = v70;
    *(v74 + 7) = v67;
    v74[64] = v69 & 1;
    *(v74 + 9) = v68;
LABEL_49:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v75 = 0;
      v76 = *(v7 + 2);
      v77 = 48;
      while (v76 - 1 == v75)
      {
LABEL_51:
        ++v75;
        v77 += 48;
        if (v73 == v75)
        {
          return v7;
        }
      }

      if (v75 < v76)
      {
        break;
      }

      __break(1u);
LABEL_57:
      v7 = sub_189212B9C(v7);
    }

    *&v7[v77] = v0[48];
    goto LABEL_51;
  }

  v73 = *(v7 + 2);
  if (v73)
  {
    goto LABEL_49;
  }

  return v7;
}

void sub_188B4210C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * a1;
  swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  v13 = (v8 + 40 * a3);
  v14 = (v7 + 32 + 40 * a2);
  v15 = 40 * v12;
  v16 = &v14[40 * v12];
  if (v13 != v14 || v13 >= v16)
  {
    memmove(v13, v14, v15);
  }

  v18 = *(v7 + 16);
  v9 = __OFADD__(v18, v10);
  v19 = v18 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v19;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_188B421E0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F9B8, &qword_18A673020);
    sub_188A34360(&qword_1ED48CC00, &qword_1EA93F9B8, &qword_18A673020, MEMORY[0x1E69E7BC8]);
    sub_18A4A7818();
    sub_18A4A7878();
    sub_18A4A7858();
    if (v4)
    {
      sub_18A4A7878();
    }

    else
    {
      v6 = v3;
    }

    result = sub_18A4A7878();
    if (v5 >= v6)
    {
      sub_18A4A78B8();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}
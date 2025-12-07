void sub_18B7FE620()
{
  v1 = sub_18B7C07CC();
  v2 = *&v1[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v3 = (v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets);
  v4 = &v2[qword_1EA9F8560];
  v5 = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets + 16);
  *v4 = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets);
  *(v4 + 1) = v5;
  [v2 setNeedsLayout];

  v6 = sub_18B7C5C10();
  sub_18B7C9974();
  v15 = v7;

  v8 = &v15[qword_1EA9F7FF8];
  v9 = *v3;
  v10 = v3[1];
  v11 = *&v15[qword_1EA9F7FF8 + 112];
  v16[6] = *&v15[qword_1EA9F7FF8 + 96];
  v16[7] = v11;
  v16[8] = *&v15[qword_1EA9F7FF8 + 128];
  v17 = *&v15[qword_1EA9F7FF8 + 144];
  v12 = *&v15[qword_1EA9F7FF8 + 48];
  v16[2] = *&v15[qword_1EA9F7FF8 + 32];
  v16[3] = v12;
  v13 = *&v15[qword_1EA9F7FF8 + 80];
  v16[4] = *&v15[qword_1EA9F7FF8 + 64];
  v16[5] = v13;
  v14 = *&v15[qword_1EA9F7FF8 + 16];
  v16[0] = *&v15[qword_1EA9F7FF8];
  v16[1] = v14;
  *v8 = v9;
  *(v8 + 1) = v10;
  sub_18B7CBBC4(v16);
}

void sub_18B7FE7A8(double *a1)
{
  v2 = v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentMetrics;
  if (*(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentMetrics) != *a1 || (*(v2 + 8) == a1[1] ? (v3 = *(v2 + 16) == a1[2]) : (v3 = 0), v3 ? (v4 = *(v2 + 24) == a1[3]) : (v4 = 0), !v4 || *(v2 + 32) != a1[4] || *(v2 + 40) != a1[5]))
  {
    v5 = sub_18B7C07CC();
    v9 = *&v5[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    v6 = &v9[qword_1EA9F8568];
    v7 = *(v2 + 16);
    v8 = *(v2 + 32);
    *v6 = *v2;
    *(v6 + 1) = v7;
    *(v6 + 2) = v8;
    [v9 setNeedsLayout];
  }
}

void sub_18B7FE8AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = (*(v4 + OBJC_IVAR___SFTabSwitcher_wrapped) + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_capsuleReferenceFrame);
  v5->origin.x = a1;
  v5->origin.y = a2;
  v5->size.width = a3;
  v5->size.height = a4;
  v6 = sub_18B7C07CC();
  v10 = *&v6[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  IsNull = CGRectIsNull(*v5);
  Width = 0.0;
  if (!IsNull)
  {
    Width = CGRectGetWidth(*v5);
  }

  v9 = &v10[qword_1EA9F8568];
  v9[14] = Width;
  *(v9 + 120) = IsNull;
  [v10 setNeedsLayout];
}

void sub_18B7FEA50(double a1)
{
  v2 = sub_18B7C07CC();
  v5 = *&v2[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v3 = a1;
  if (a1 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = &v5[qword_1EA9F8568];
  v4[14] = v3;
  *(v4 + 120) = a1 == 0.0;
  [v5 setNeedsLayout];
}

double SFEdgeInsetsForInsetingRectToRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v19 = MinY - CGRectGetMinY(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetMinX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMaxY(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetMaxY(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMaxX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetMaxX(v27);
  return v19;
}

Swift::Void __swiftcall SFEditableEffectView.layoutSubviews()()
{
  v8.super_class = SFEditableEffectView;
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = [v0 effect];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___SFEditableEffectView_effectViews];
    v3 = OBJC_IVAR___SFEditableEffect_layers;
    v4 = v1;
    swift_beginAccess();
    v5 = *&v4[v3];
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18B801588(v2, v5);
  }

  v6 = [v0 maskView];
  if (v6)
  {
    v7 = v6;
    [v0 bounds];
    [v7 setFrame_];
  }
}

void sub_18B801588(unint64_t a1, uint64_t a2)
{
  v5 = _s5LayerVMa(0);
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40E8, &qword_18BC40498);
  v8 = MEMORY[0x1EEE9AC00](v26);
  v10 = &v23 - v9;
  if (a1 >> 62)
  {
LABEL_16:
    v21 = sub_18BC219A8();
    v22 = *(a2 + 16);
    v27 = v21;
    if (v21 == v22)
    {
      v28 = sub_18BC219A8();
      if (v28)
      {
LABEL_4:
        v12 = 0;
        v23 = a1 & 0xFFFFFFFFFFFFFF8;
        v24 = a1 & 0xC000000000000001;
        do
        {
          if (v24)
          {
            v15 = MEMORY[0x18CFFD010](v12, a1, v8);
          }

          else
          {
            if (v12 >= *(v23 + 16))
            {
              __break(1u);
              goto LABEL_16;
            }

            v15 = *(a1 + 8 * v12 + 32);
          }

          v16 = v15;
          if (v27 == v12)
          {

            return;
          }

          v17 = a2;
          v18 = *(v26 + 48);
          sub_18B9876B0(a2 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v12, &v10[v18]);
          sub_18B9875F0(&v10[v18], v7);
          [v2 bounds];
          [v16 setFrame_];
          v19 = [v16 maskView];
          if (v19)
          {
            v20 = v19;
            [v2 bounds];
            [v20 setFrame_];
          }

          ++v12;
          v13 = [v16 subviews];
          sub_18B7B0AC0(0, &qword_1EA9D46F0, 0x1E69DD250);
          v14 = sub_18BC20D98();

          sub_18B801588(v14, *(v7 + 10));

          sub_18B987654(v7);
          a2 = v17;
        }

        while (v28 != v12);
      }
    }
  }

  else
  {
    v11 = *(a2 + 16);
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v27;
    if (v27 == v11 && v28)
    {
      goto LABEL_4;
    }
  }
}

uint64_t _s5LayerVMa(uint64_t a1)
{
  result = qword_1EA9D3DD8;
  if (!qword_1EA9D3DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B8018C0(uint64_t a1)
{
  sub_18B801A84(319, &qword_1EA9D3DE8, &unk_1EA9D91D0, 0x1E69DC888);
  if (v1 <= 0x3F)
  {
    sub_18B801B30(319, &qword_1ED6511A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_18B801B30(319, &qword_1EA9D3DF0, &type metadata for SFFilter, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_18B801A84(319, &qword_1EA9D3DF8, &qword_1ED6514F0, 0x1E69DCAB8);
        if (v4 <= 0x3F)
        {
          sub_18B801B80(319);
          if (v5 <= 0x3F)
          {
            sub_18B801B30(319, &qword_1EA9D3E08, &type metadata for RoundedRectangleReflection, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_18BC1EC08();
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

void sub_18B801A84(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    v6 = sub_18B7B0AC0(255, a3, a4);
    v9 = type metadata accessor for SFCodableWithKeyedArchiver(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_18B801AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_18B801B30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_18B801B80(uint64_t a1)
{
  if (!qword_1EA9D3E00)
  {
    _s5LayerVMa(255);
    v1 = sub_18BC20E78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA9D3E00);
    }
  }
}

void sub_18B801CC0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_18B7DE654();
    [v3 presentationValue];
    v5 = v4;

    v6 = 0.0;
    if (v5 > 0.1)
    {
      v6 = v5;
    }

    if (v5 >= 1.0)
    {
      v7 = v2[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred];
    }

    else
    {
      v7 = 0;
    }

    sub_18B801D6C(v7, v2, v6);
  }
}

void sub_18B801D6C(uint64_t a1, void *a2, double a3)
{
  v4 = sub_18BC1EEA8();
  v5 = sub_18BC20B98();
  [a2 _setPresentationValue_forKey_];

  v6 = sub_18BC20EC8();
  v7 = sub_18BC20B98();
  [a2 _setPresentationValue_forKey_];
}

void sub_18B801E50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = _s4ItemVMa(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemToPresentToAfterNextLayoutPass;
  swift_beginAccess();
  sub_18B7CA054(v1 + v12, v7, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_18B988BAC(v7, &qword_1EA9D7CD0, &unk_18BC49EB0);
    *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsResetLayoutAfterMovingToWindow) = 0;
    (*(v9 + 56))(v4, 1, 1, v8);
    swift_beginAccess();
    sub_18B7FD070(v4, v1 + v12, &qword_1EA9D7CD0, &unk_18BC49EB0);
LABEL_16:
    swift_endAccess();
    return;
  }

  sub_18B82FE24(v7, v11, _s4ItemVMa);
  if (qword_1EA9D22A0 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v13 = sub_18BC1F2C8();
  __swift_project_value_buffer(v13, qword_1EA9F7E98);
  v14 = sub_18BC1F2A8();
  v15 = sub_18BC21258();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_18B7AC000, v14, v15, "Performing deferred presentation", v16, 2u);
    MEMORY[0x18CFFEEE0](v16, -1, -1);
  }

  sub_18BB030DC(v11, 1);
  v17 = sub_18B7C5C10();
  v18 = &v17[OBJC_IVAR___SFTabOverviewDisplayItem_state];
  v19 = *&v17[OBJC_IVAR___SFTabOverviewDisplayItem_state];
  v20 = v17[OBJC_IVAR___SFTabOverviewDisplayItem_state + 8];
  v21 = v17[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];
  v22 = *&v17[OBJC_IVAR___SFTabOverviewDisplayItem_state + 16];
  v23 = v17[OBJC_IVAR___SFTabOverviewDisplayItem_state + 24];
  v24 = *&v17[OBJC_IVAR___SFTabOverviewDisplayItem_state + 32];
  *v18 = 0;
  v18[8] = 0;
  v18[9] = 1;
  *(v18 + 2) = 0x3FF0000000000000;
  v18[24] = 0;
  *(v18 + 4) = 0x3FF0000000000000;
  v25 = 256;
  if (!v21)
  {
    v25 = 0;
  }

  v39[0] = v19;
  v39[1] = v25 | v20;
  v39[2] = v22;
  v39[3] = v23;
  v39[4] = v24;
  sub_18B9E2784(v39);

  v26 = sub_18B7C07CC();
  v27 = *&v26[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v28 = *&v27[qword_1EA9F8558];
  sub_18BC1E1A8();

  v29 = *(v28 + 24);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (!v30)
  {
    *(v28 + 24) = v31;
    if (!v31)
    {
      swift_beginAccess();
      v32 = *(*(v28 + 16) + 16);
      if (v32)
      {
        v36 = sub_18BC1E3F8();
        v33 = v36 + 40;
        do
        {
          v34 = *(v33 - 8);
          v38[0] = *(v28 + 24) > 0;
          sub_18BC1E1A8();
          v34(v38);

          v33 += 16;
          --v32;
        }

        while (v32);
      }
    }

    sub_18BC1E1A8();
    sub_18BB0AD54("performing deferred presentation", 32, 2u);

    sub_18B7DFF64(v11, _s4ItemVMa);
    *(v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsResetLayoutAfterMovingToWindow) = 0;
    v35 = v37;
    (*(v9 + 56))(v37, 1, 1, v8);
    swift_beginAccess();
    sub_18B7FD070(v35, v1 + v12, &qword_1EA9D7CD0, &unk_18BC49EB0);
    goto LABEL_16;
  }

  __break(1u);
}

void __deviceUsesLargeIcons_block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1;
  v4 = v3;

  if (v2 == 428.0 && v4 == 926.0)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 == 430.0;
    if (v4 != 932.0)
    {
      v5 = 0;
    }
  }

  deviceUsesLargeIcons_result = v5;
}

id headerSupplementaryItemLayout()
{
  v0 = MEMORY[0x1E6995588];
  v1 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v2 = [MEMORY[0x1E6995558] estimatedDimension:44.0];
  v3 = [v0 sizeWithWidthDimension:v1 heightDimension:v2];

  v4 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v3 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
  [v4 setExtendsBoundary:1];

  return v4;
}

void sub_18B802DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_1(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id __dynamicAlteranteColor_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sf_alternateUserInterfaceStyle];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v3 sf_traitCollectionWithAlternateUserInterfaceColorAsPrimary];
    v7 = [v5 resolvedColorWithTraitCollection:v6];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

double sub_18B8043A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  sub_18BC1E1A8();
  v5(a2, a3);

  return result;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSiriReadThis()
{
  if (WBS_LOG_CHANNEL_PREFIXSiriReadThis_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSiriReadThis_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSiriReadThis_log;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_18B804BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id databaseURLForFileName(NSString *a1)
{
  v1 = a1;
  v2 = _SFSafariNonContaineredSettingsDirectoryPath();
  v3 = MEMORY[0x1E695DFF8];
  v4 = [v2 stringByAppendingPathComponent:v1];
  v5 = [v4 stringByResolvingSymlinksInPath];
  v6 = [v3 fileURLWithPath:v5 isDirectory:0];

  return v6;
}

id _SFSafariNonContaineredSettingsDirectoryPath()
{
  if (_SFSafariNonContaineredSettingsDirectoryPath::onceToken != -1)
  {
    _SFSafariNonContaineredSettingsDirectoryPath_cold_1();
  }

  v1 = _SFSafariNonContaineredSettingsDirectoryPath::path;

  return v1;
}

void __debugShadows_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  debugShadows_flag = [v0 integerForKey:@"DebugStartPageCellShadows"];
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6 error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 execute];
    [v7 invalidate];
    if ((v10 - 100) >= 2 && v10 != 0)
    {
      [v5 reportErrorWithCode:v10 statement:objc_msgSend(v7 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v12 = v8;
      *a2 = v9;
    }

    v10 = [v9 code];
  }

  return v10;
}

id SafariShared::WBSSQLiteDatabaseFetch<>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v3 query:v4];
  v6 = [v5 fetch];

  return v6;
}

void sub_18B805F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  _Block_object_dispose((v39 - 144), 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(id *this)
{
  SafariShared::SuddenTerminationDisabler::enableSuddenTermination(this);
}

id SafariShared::WBSSQLiteDatabaseFetch<SFBrowserWindowType>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:v5 query:v6];
  [v7 bindInt64:*a3 atParameterIndex:1];
  v8 = [v7 fetch];

  return v8;
}

id SFDefaultBrowserSelectionStateKey(uint64_t a1, uint64_t a2)
{
  IsPad = _SFDeviceIsPad(a1, a2);
  v3 = MEMORY[0x1E69C9378];
  if (!IsPad)
  {
    v3 = MEMORY[0x1E69C9370];
  }

  v4 = *v3;

  return v4;
}

void sub_18B8071C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_18B807350()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B807388()
{

  return swift_deallocObject();
}

unint64_t sub_18B8073C4()
{
  result = qword_1EA9D9440;
  if (!qword_1EA9D9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9440);
  }

  return result;
}

unint64_t sub_18B80741C()
{
  result = qword_1EA9DB8A0;
  if (!qword_1EA9DB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8A0);
  }

  return result;
}

unint64_t sub_18B807474()
{
  result = qword_1EA9DB8A8;
  if (!qword_1EA9DB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8A8);
  }

  return result;
}

uint64_t sub_18B8074C8(uint64_t a1)
{
  v2 = sub_18B8073C4();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B8075C4()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B8075FC()
{

  return swift_deallocObject();
}

unint64_t sub_18B807638()
{
  result = qword_1EA9D6910;
  if (!qword_1EA9D6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6910);
  }

  return result;
}

unint64_t sub_18B807690()
{
  result = qword_1EA9DA5C8;
  if (!qword_1EA9DA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA5C8);
  }

  return result;
}

unint64_t sub_18B8076E8()
{
  result = qword_1EA9DA5D0;
  if (!qword_1EA9DA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA5D0);
  }

  return result;
}

uint64_t sub_18B80773C(uint64_t a1)
{
  v2 = sub_18B807638();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18B80783C()
{
  result = qword_1EA9D9448;
  if (!qword_1EA9D9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9448);
  }

  return result;
}

unint64_t sub_18B807894()
{
  result = qword_1EA9DB8E8;
  if (!qword_1EA9DB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8E8);
  }

  return result;
}

unint64_t sub_18B8078EC()
{
  result = qword_1EA9DB8F0;
  if (!qword_1EA9DB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB8F0);
  }

  return result;
}

uint64_t sub_18B807940(uint64_t a1)
{
  v2 = sub_18B80783C();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18B807A40()
{
  result = qword_1EA9D6EA8;
  if (!qword_1EA9D6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6EA8);
  }

  return result;
}

unint64_t sub_18B807A98()
{
  result = qword_1EA9D6EB0;
  if (!qword_1EA9D6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6EB0);
  }

  return result;
}

unint64_t sub_18B807AF0()
{
  result = qword_1EA9D6EB8;
  if (!qword_1EA9D6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6EB8);
  }

  return result;
}

uint64_t sub_18B807B44(uint64_t a1)
{
  v2 = sub_18B807A40();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18B807C40()
{
  result = qword_1EA9DA538;
  if (!qword_1EA9DA538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA538);
  }

  return result;
}

unint64_t sub_18B807C98()
{
  result = qword_1EA9DA5E0;
  if (!qword_1EA9DA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA5E0);
  }

  return result;
}

unint64_t sub_18B807CF0()
{
  result = qword_1EA9DA5E8;
  if (!qword_1EA9DA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA5E8);
  }

  return result;
}

uint64_t sub_18B807D44(uint64_t a1)
{
  v2 = sub_18B807C40();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B807E40()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B807E78()
{

  return swift_deallocObject();
}

unint64_t sub_18B807EB0()
{
  result = qword_1EA9D4528;
  if (!qword_1EA9D4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4528);
  }

  return result;
}

unint64_t sub_18B807F08()
{
  result = qword_1EA9D45A8;
  if (!qword_1EA9D45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D45A8);
  }

  return result;
}

unint64_t sub_18B807F60()
{
  result = qword_1EA9D45B0;
  if (!qword_1EA9D45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D45B0);
  }

  return result;
}

uint64_t sub_18B807FB4(uint64_t a1)
{
  v2 = sub_18B807EB0();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

id sub_18B808024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(sub_18BC1F038());
  a3();
  v7 = sub_18BC1F028();

  return v7;
}

unint64_t sub_18B8080C8()
{
  result = qword_1EA9D76C8;
  if (!qword_1EA9D76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76C8);
  }

  return result;
}

unint64_t sub_18B808120()
{
  result = qword_1EA9D76D0;
  if (!qword_1EA9D76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76D0);
  }

  return result;
}

unint64_t sub_18B808178()
{
  result = qword_1EA9D76D8;
  if (!qword_1EA9D76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76D8);
  }

  return result;
}

uint64_t sub_18B8081CC(uint64_t a1)
{
  v2 = sub_18B8080C8();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18B80823C()
{
  result = qword_1EA9D6F10;
  if (!qword_1EA9D6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6F10);
  }

  return result;
}

unint64_t sub_18B808294()
{
  result = qword_1EA9D6F00;
  if (!qword_1EA9D6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6F00);
  }

  return result;
}

unint64_t sub_18B8082EC()
{
  result = qword_1EA9D6F08;
  if (!qword_1EA9D6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6F08);
  }

  return result;
}

uint64_t sub_18B808340(uint64_t a1)
{
  v2 = sub_18B80823C();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B80843C()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B808474()
{

  return swift_deallocObject();
}

unint64_t sub_18B8084B0()
{
  result = qword_1EA9D76E8;
  if (!qword_1EA9D76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76E8);
  }

  return result;
}

unint64_t sub_18B808508()
{
  result = qword_1EA9D76F0;
  if (!qword_1EA9D76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76F0);
  }

  return result;
}

unint64_t sub_18B808560()
{
  result = qword_1EA9D76F8;
  if (!qword_1EA9D76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D76F8);
  }

  return result;
}

uint64_t sub_18B8085B4(uint64_t a1)
{
  v2 = sub_18B8084B0();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18B8086B4()
{
  result = qword_1EA9D7708;
  if (!qword_1EA9D7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7708);
  }

  return result;
}

unint64_t sub_18B80870C()
{
  result = qword_1EA9D7710;
  if (!qword_1EA9D7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7710);
  }

  return result;
}

unint64_t sub_18B808764()
{
  result = qword_1EA9D7718;
  if (!qword_1EA9D7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7718);
  }

  return result;
}

uint64_t sub_18B8087B8(uint64_t a1)
{
  v2 = sub_18B8086B4();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B8088B4()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B8088EC()
{

  return swift_deallocObject();
}

unint64_t sub_18B808924()
{
  result = qword_1EA9D9BC0;
  if (!qword_1EA9D9BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9BC0);
  }

  return result;
}

unint64_t sub_18B80897C()
{
  result = qword_1EA9D9C38;
  if (!qword_1EA9D9C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9C38);
  }

  return result;
}

unint64_t sub_18B8089D4()
{
  result = qword_1EA9D9C40;
  if (!qword_1EA9D9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9C40);
  }

  return result;
}

uint64_t sub_18B808A28(uint64_t a1)
{
  v2 = sub_18B808924();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B808AFC()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_18B808B34()
{
  result = qword_1EA9D6928;
  if (!qword_1EA9D6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6928);
  }

  return result;
}

unint64_t sub_18B808B8C()
{
  result = qword_1EA9D7370;
  if (!qword_1EA9D7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7370);
  }

  return result;
}

unint64_t sub_18B808BE4()
{
  result = qword_1EA9D7378;
  if (!qword_1EA9D7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7378);
  }

  return result;
}

uint64_t sub_18B808C38(uint64_t a1)
{
  v2 = sub_18B808B34();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B808D34()
{

  return swift_deallocObject();
}

unint64_t sub_18B808D6C()
{
  result = qword_1EA9D6930;
  if (!qword_1EA9D6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6930);
  }

  return result;
}

unint64_t sub_18B808DC4()
{
  result = qword_1EA9D7388;
  if (!qword_1EA9D7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7388);
  }

  return result;
}

unint64_t sub_18B808E1C()
{
  result = qword_1EA9D7390;
  if (!qword_1EA9D7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7390);
  }

  return result;
}

uint64_t sub_18B808E70(uint64_t a1)
{
  v2 = sub_18B808D6C();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18B808F6C()
{
  result = qword_1EA9D4D70;
  if (!qword_1EA9D4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4D70);
  }

  return result;
}

unint64_t sub_18B808FC4()
{
  result = qword_1EA9DA730;
  if (!qword_1EA9DA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA730);
  }

  return result;
}

unint64_t sub_18B80901C()
{
  result = qword_1EA9DA738;
  if (!qword_1EA9DA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA738);
  }

  return result;
}

uint64_t sub_18B809070(uint64_t a1)
{
  v2 = sub_18B808F6C();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B80916C()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B8091A4()
{

  return swift_deallocObject();
}

unint64_t sub_18B8091E0()
{
  result = qword_1EA9D4D68;
  if (!qword_1EA9D4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4D68);
  }

  return result;
}

unint64_t sub_18B809238()
{
  result = qword_1EA9DA718;
  if (!qword_1EA9DA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA718);
  }

  return result;
}

unint64_t sub_18B809290()
{
  result = qword_1EA9DA720;
  if (!qword_1EA9DA720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA720);
  }

  return result;
}

uint64_t sub_18B8092E4(uint64_t a1)
{
  v2 = sub_18B8091E0();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B8093E0()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B809418()
{

  return swift_deallocObject();
}

unint64_t sub_18B809450()
{
  result = qword_1EA9DB208;
  if (!qword_1EA9DB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB208);
  }

  return result;
}

unint64_t sub_18B8094A8()
{
  result = qword_1EA9DB210;
  if (!qword_1EA9DB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB210);
  }

  return result;
}

unint64_t sub_18B809500()
{
  result = qword_1EA9DB218;
  if (!qword_1EA9DB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB218);
  }

  return result;
}

uint64_t sub_18B809554(uint64_t a1)
{
  v2 = sub_18B809450();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B809650()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B809688()
{

  return swift_deallocObject();
}

unint64_t sub_18B8096C0()
{
  result = qword_1EA9D8940;
  if (!qword_1EA9D8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8940);
  }

  return result;
}

unint64_t sub_18B809718()
{
  result = qword_1EA9D8950;
  if (!qword_1EA9D8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8950);
  }

  return result;
}

unint64_t sub_18B809770()
{
  result = qword_1EA9D8958;
  if (!qword_1EA9D8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8958);
  }

  return result;
}

uint64_t sub_18B8097C4(uint64_t a1)
{
  v2 = sub_18B8096C0();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B8098C0()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B8098F8()
{

  return swift_deallocObject();
}

unint64_t sub_18B809930()
{
  result = qword_1EA9D6DC8;
  if (!qword_1EA9D6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6DC8);
  }

  return result;
}

unint64_t sub_18B809988()
{
  result = qword_1EA9D6DD0;
  if (!qword_1EA9D6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6DD0);
  }

  return result;
}

unint64_t sub_18B8099E0()
{
  result = qword_1EA9D6DD8;
  if (!qword_1EA9D6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6DD8);
  }

  return result;
}

uint64_t sub_18B809A34(uint64_t a1)
{
  v2 = sub_18B809930();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B809B30()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B809B68()
{

  return swift_deallocObject();
}

unint64_t sub_18B809BA0()
{
  result = qword_1EA9D4860;
  if (!qword_1EA9D4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4860);
  }

  return result;
}

unint64_t sub_18B809BF8()
{
  result = qword_1EA9D4868;
  if (!qword_1EA9D4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4868);
  }

  return result;
}

unint64_t sub_18B809C50()
{
  result = qword_1EA9D4870;
  if (!qword_1EA9D4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4870);
  }

  return result;
}

uint64_t sub_18B809CA4(uint64_t a1)
{
  v2 = sub_18B809BA0();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18B809DA4()
{
  result = qword_1EA9D9150;
  if (!qword_1EA9D9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9150);
  }

  return result;
}

unint64_t sub_18B809DFC()
{
  result = qword_1EA9DAA00;
  if (!qword_1EA9DAA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DAA00);
  }

  return result;
}

unint64_t sub_18B809E54()
{
  result = qword_1EA9DAA08;
  if (!qword_1EA9DAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DAA08);
  }

  return result;
}

uint64_t sub_18B809EA8(uint64_t a1)
{
  v2 = sub_18B809DA4();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

unint64_t sub_18B809F18()
{
  result = qword_1EA9D7748;
  if (!qword_1EA9D7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7748);
  }

  return result;
}

unint64_t sub_18B809F70()
{
  result = qword_1EA9D7738;
  if (!qword_1EA9D7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7738);
  }

  return result;
}

unint64_t sub_18B809FC8()
{
  result = qword_1EA9D7740;
  if (!qword_1EA9D7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7740);
  }

  return result;
}

uint64_t sub_18B80A01C(uint64_t a1)
{
  v2 = sub_18B809F18();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B80A118()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B80A150()
{

  return swift_deallocObject();
}

unint64_t sub_18B80A188()
{
  result = qword_1EA9D4740;
  if (!qword_1EA9D4740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4740);
  }

  return result;
}

unint64_t sub_18B80A1E0()
{
  result = qword_1EA9D7448;
  if (!qword_1EA9D7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7448);
  }

  return result;
}

unint64_t sub_18B80A238()
{
  result = qword_1EA9D7450;
  if (!qword_1EA9D7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7450);
  }

  return result;
}

uint64_t sub_18B80A28C(uint64_t a1)
{
  v2 = sub_18B80A188();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B80A388()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B80A3C0()
{

  return swift_deallocObject();
}

unint64_t sub_18B80A3F8()
{
  result = qword_1EA9D8F80;
  if (!qword_1EA9D8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8F80);
  }

  return result;
}

unint64_t sub_18B80A450()
{
  result = qword_1EA9DBF18;
  if (!qword_1EA9DBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBF18);
  }

  return result;
}

unint64_t sub_18B80A4A8()
{
  result = qword_1EA9DBF20;
  if (!qword_1EA9DBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBF20);
  }

  return result;
}

uint64_t sub_18B80A4FC(uint64_t a1)
{
  v2 = sub_18B80A3F8();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t sub_18B80A5F8()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B80A630()
{

  return swift_deallocObject();
}

unint64_t sub_18B80A668()
{
  result = qword_1EA9D5800;
  if (!qword_1EA9D5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5800);
  }

  return result;
}

unint64_t sub_18B80A6C0()
{
  result = qword_1EA9D5818;
  if (!qword_1EA9D5818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5818);
  }

  return result;
}

unint64_t sub_18B80A718()
{
  result = qword_1EA9D5820;
  if (!qword_1EA9D5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5820);
  }

  return result;
}

uint64_t sub_18B80A76C(uint64_t a1)
{
  v2 = sub_18B80A668();

  return MEMORY[0x1EEDB2D88](a1, v2);
}

uint64_t _s12MobileSafari17SFTipsCoordinatorC19configureTipsCenteryyFZ_0()
{
  v0 = sub_18BC201E8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_18BC20218();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D7D10, &unk_18BC49F00);
  sub_18BC20238();
  *(swift_allocObject() + 16) = xmmword_18BC3E400;
  sub_18BC20208();
  sub_18BC20228();
  (*(v5 + 8))(v7, v4);
  sub_18BC201D8();
  sub_18BC201F8();
  (*(v1 + 8))(v3, v0);
  sub_18BC202D8();
}

id SFTipsCoordinator.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____SFTipsCoordinator_webSearchTipAvailable] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____SFTipsCoordinator_webSearchTipManager;
  type metadata accessor for WebSearchTipManager();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = 0;
  *&v2[v4] = v5;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

double _s12MobileSafari17SFTipsCoordinatorC14startObservingyyF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10, &qword_18BC426D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_18BC202C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v33 = [objc_opt_self() safari_browserDefaults];
  v11 = sub_18BC20B98();
  v12 = [v33 BOOLForKey_];

  if (v12)
  {
    if (qword_1EA9D22C0 != -1)
    {
      swift_once();
    }

    v13 = sub_18BC1F2C8();
    __swift_project_value_buffer(v13, qword_1EA9F7EF8);
    v14 = sub_18BC1F2A8();
    v15 = sub_18BC21218();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_18B7AC000, v14, v15, "Web search tip invalidated by defaults override", v16, 2u);
      MEMORY[0x18CFFEEE0](v16, -1, -1);
    }

    v17 = v33;
  }

  else
  {
    sub_18B80B174();
    sub_18BC20088();
    (*(v5 + 32))(v7, v10, v4);
    v19 = (*(v5 + 88))(v7, v4);
    v20 = *MEMORY[0x1E6982B68];
    (*(v5 + 8))(v7, v4);
    if (v19 == v20)
    {
      if (qword_1EA9D22C0 != -1)
      {
        swift_once();
      }

      v21 = sub_18BC1F2C8();
      __swift_project_value_buffer(v21, qword_1EA9F7EF8);
      v22 = sub_18BC1F2A8();
      v23 = sub_18BC21218();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_18B7AC000, v22, v23, "Web search tip is already invalidated", v24, 2u);
        MEMORY[0x18CFFEEE0](v24, -1, -1);
      }
    }

    else
    {
      v25 = *(v0 + OBJC_IVAR____SFTipsCoordinator_webSearchTipManager);
      v26 = sub_18BC20F48();
      (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_18BC20F28();
      sub_18BC1E1A8();
      v28 = sub_18BC20F18();
      v29 = swift_allocObject();
      v30 = MEMORY[0x1E69E85E0];
      v29[2] = v28;
      v29[3] = v30;
      v29[4] = v27;

      v31 = sub_18B97E1A4(0, 0, v3, &unk_18BC4DBF0, v29);

      *(v25 + 16) = v31;
    }
  }

  return result;
}

uint64_t sub_18B80B0FC()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B80B134()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_18B80B174()
{
  result = qword_1EA9D9590;
  if (!qword_1EA9D9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9590);
  }

  return result;
}

unint64_t sub_18B80B1CC()
{
  result = qword_1EA9D9598;
  if (!qword_1EA9D9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9598);
  }

  return result;
}

uint64_t sub_18B80B23C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D95A0, &qword_18BC4DB60);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D95A8, &qword_18BC4DB68);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D95B0, &unk_18BC4DB70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18BC3E400;
  v9 = sub_18BC201A8();
  v10 = MEMORY[0x1E6982AC0];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  __swift_allocate_boxed_opaque_existential_0Tm((v8 + 32));
  sub_18BC201B8();
  v11 = sub_18BC20188();
  v12 = MEMORY[0x1E6982A88];
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  __swift_allocate_boxed_opaque_existential_0Tm((v8 + 72));
  sub_18BC20198();
  sub_18BC20148();

  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x18CFFB670](v7, v4, OpaqueTypeConformance2);
  v16[0] = v4;
  v16[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_18BC20168();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_18B80B4B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048, &unk_18BC44E60);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = sub_18BC20248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9D2440 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EA9F82C8);
  (*(v1 + 16))(v3, v8, v0);
  sub_18BC20138();
  sub_18B80B760(&qword_1EA9D6050, MEMORY[0x1E6982A50]);
  sub_18B80B760(&qword_1EA9D6058, MEMORY[0x1E6982A48]);
  sub_18BC20258();
  sub_18BC20118();
  (*(v5 + 8))(v7, v4);
  v9 = sub_18BC1E3F8();

  return v9;
}

uint64_t sub_18B80B6F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048, &unk_18BC44E60);
  __swift_allocate_value_buffer(v0, qword_1EA9F82C8);
  __swift_project_value_buffer(v0, qword_1EA9F82C8);
  return sub_18BC20278();
}

uint64_t sub_18B80B760(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18BC20138();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B80B7A4@<X0>(uint64_t *a2@<X8>)
{
  v34 = a2;
  v2 = sub_18BC1E838();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6080, &qword_18BC44F80);
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6088, &qword_18BC44F88);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6090, &qword_18BC44F90);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6098, &qword_18BC44F98);
  v15 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v17 = &v28 - v16;
  sub_18B7B0B08(&qword_1EA9D60A0, &qword_1EA9D6088, &qword_18BC44F88, MEMORY[0x1E6968DA8]);
  sub_18BC1E858();
  swift_getKeyPath();
  sub_18BC1E818();

  (*(v8 + 8))(v10, v7);
  swift_getKeyPath();
  v18 = MEMORY[0x1E6968D58];
  sub_18B7B0B08(&qword_1EA9D60A8, &qword_1EA9D6090, &qword_18BC44F90, MEMORY[0x1E6968D58]);
  sub_18BC1E818();

  (*(v12 + 8))(v14, v11);
  v37 = 5;
  v19 = v30;
  sub_18BC1E848();
  v21 = v31;
  v20 = v32;
  v22 = v33;
  (*(v32 + 104))(v31, *MEMORY[0x1E6968C38], v33);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D60B0, &qword_18BC45008);
  v24 = v34;
  v34[3] = v23;
  v24[4] = sub_18B80BD84();
  __swift_allocate_boxed_opaque_existential_0Tm(v24);
  sub_18B7B0B08(&qword_1EA9D60E0, &qword_1EA9D6098, &qword_18BC44F98, v18);
  sub_18B7B0B08(&qword_1EA9D60E8, &qword_1EA9D6080, &qword_18BC44F80, MEMORY[0x1E6968D20]);
  v25 = v29;
  v26 = v35;
  sub_18BC1E828();
  (*(v20 + 8))(v21, v22);
  (*(v36 + 8))(v19, v26);
  return (*(v15 + 8))(v17, v25);
}

uint64_t sub_18B80BD34@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048, &unk_18BC44E60);
  result = sub_18BC20288();
  *a1 = result;
  return result;
}

unint64_t sub_18B80BD84()
{
  result = qword_1EA9D60B8;
  if (!qword_1EA9D60B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D60B0, &qword_18BC45008);
    sub_18B80BE3C();
    sub_18B7B0B08(&qword_1EA9D60D8, &qword_1EA9D6080, &qword_18BC44F80, MEMORY[0x1E69829E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D60B8);
  }

  return result;
}

unint64_t sub_18B80BE3C()
{
  result = qword_1EA9D60C0;
  if (!qword_1EA9D60C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D6098, &qword_18BC44F98);
    sub_18B80BEC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D60C0);
  }

  return result;
}

unint64_t sub_18B80BEC0()
{
  result = qword_1EA9D60C8;
  if (!qword_1EA9D60C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D6090, &qword_18BC44F90);
    sub_18B7B0B08(&qword_1EA9D60D0, &qword_1EA9D6088, &qword_18BC44F88, MEMORY[0x1E69829F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D60C8);
  }

  return result;
}

id _SFCustomUserAgentStringIfNeeded()
{
  if (_SFCustomUserAgentStringIfNeeded::once != -1)
  {
    _SFCustomUserAgentStringIfNeeded_cold_1();
  }

  v1 = _SFCustomUserAgentStringIfNeeded::customUserAgentString;

  return v1;
}

void sub_18B80C0B8()
{
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_highlightView];
  v2 = objc_opt_self();
  v3 = sub_18BC20B98();
  v4 = [v2 sf:v3 colorNamed:?];

  [v1 setBackgroundColor_];
  [v0 setContextMenuInteractionEnabled_];
  v5 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_systemSnapshotBackgroundView];
  v6 = [v2 secondarySystemBackgroundColor];
  [v5 setBackgroundColor_];

  [v5 setClipsToBounds_];
  v7 = [v5 layer];
  [v7 setCompositingFilter_];

  [v0 addSubview_];
  v8 = objc_allocWithZone(MEMORY[0x1E69DCAA0]);
  v9 = v0;
  v10 = [v8 initWithTarget:v9 action:sel_didReceiveHover_];
  [v9 addGestureRecognizer_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v9 action:sel_didReceiveTap];
  [v9 addGestureRecognizer_];

  sub_18B80C2D4();
  sub_18BC21378();
  MEMORY[0x18CFFCA40]();
  swift_unknownObjectRelease();

  sub_18B80C320();
}

unint64_t sub_18B80C2D4()
{
  result = qword_1EA9D7978;
  if (!qword_1EA9D7978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D7978);
  }

  return result;
}

void sub_18B80C320()
{
  v1 = &v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration];
  if (v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration + 32] == 1)
  {
    sub_18BAAA2EC();
  }

  else
  {
    sub_18B80C514();
  }

  v2 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_backgroundView;
  v3 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_backgroundView];
  if (v3)
  {
    [v3 _setContinuousCornerRadius_];
    v4 = *&v0[v2];
    if (v4)
    {
      if (*(v1 + 1))
      {
        v5 = v4;
        sub_18BC1E3F8();
        v6 = sub_18BC20B98();
      }

      else
      {
        v5 = v4;
        v6 = 0;
      }

      [v5 _setGroupName_];
    }
  }

  [*&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_highlightView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_systemSnapshotBackgroundView] _setContinuousCornerRadius_];
  v7 = [objc_opt_self() labelColor];
  [v0 setTintColor_];

  [v0 setTintAdjustmentMode_];
  v8 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_shadowView];
  if (v8)
  {
    v12 = v8;
    v9 = [v0 traitCollection];
    v10 = [v9 userInterfaceStyle];

    v11 = 0.5;
    if (v10 == 2)
    {
      v11 = 1.0;
    }

    [v12 setAlpha_];
  }
}

void sub_18B80C514()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_backgroundView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_shadowView;
  v5 = *(v0 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_shadowView);
  if (v5)
  {
    [v5 removeFromSuperview];
    v5 = *(v0 + v4);
  }

  *(v0 + v4) = 0;
}

void sub_18B80C598(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = _s4ItemVMa_0(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_18B80CA2C(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_18BB2C098();
      goto LABEL_7;
    }

    sub_18B80CEDC(v18, a4 & 1);
    v24 = sub_18B80CA2C(a3);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B7EC67C(a3, v12, _s4ItemVMa_0);
      sub_18BB32AD8(v15, v12, a1, a2, v21);
      return;
    }

LABEL_15:
    sub_18BC22078();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 16 * v15;
  v23 = *v22;
  *v22 = a1;
  *(v22 + 8) = a2;
}

id sub_18B80C750(uint64_t a1, __int16 a2, uint64_t a3, void *a4)
{
  v28[3] = &_s7ContentVN;
  v28[4] = &off_1EFF233D0;
  LOWORD(v28[0]) = a2 & 0x101;
  v28[1] = a3;
  swift_beginAccess();
  v6 = a4[4];
  v7 = *(v6 + 16);
  sub_18BC1E3F8();
  if (v7)
  {
    sub_18BC1E3F8();
    v8 = sub_18B80CA2C(a1);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 16 * v8);

      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v11 = sub_18B81FCD4(a1);
  AssociatedConformanceWitness = v12;
  swift_endAccess();
  if (v11)
  {
    ObjectType = swift_getObjectType();
    v26[0] = v11;
    v15 = *(AssociatedConformanceWitness + 16);
    v16 = v11;
    v15(ObjectType, AssociatedConformanceWitness);
    v17 = [v16 layer];

    [v17 clearHasBeenCommitted];
  }

  else
  {
    v18 = a4[15];
    v19 = a4[16];
    __swift_project_boxed_opaque_existential_1Tm(a4 + 12, v18);
    v20 = (*(v19 + 72))(v18, v19);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = v20;
  }

  swift_beginAccess();
  v10 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = a4[4];
  a4[4] = 0x8000000000000000;
  sub_18B80C598(v10, AssociatedConformanceWitness, a1, isUniquelyReferenced_nonNull_native);
  a4[4] = v27;
  swift_endAccess();
  v22 = a4[15];
  v23 = a4[16];
  __swift_project_boxed_opaque_existential_1Tm(a4 + 12, v22);
  v24 = a4[2];
  sub_18BC1E1A8();
  v24(v26, a1);

  sub_18B80D714(v10, v26, v28, v22, v23);

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v10;
}

uint64_t sub_18B80CA58(uint64_t a1)
{
  v2 = v1;
  sub_18BC22178();
  sub_18BC22178();
  v3 = _s4ItemVMa_0(0);
  sub_18BC1EC08();
  sub_18B7D11E4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  v4 = *(v1 + *(v3 + 28));
  sub_18BC22178();
  if (v4)
  {
    v5 = v4;
    sub_18BC215D8();
  }

  sub_18BC22178();
  sub_18BC22178();
  if (!*(v2 + *(v3 + 40) + 8))
  {
    return sub_18BC22178();
  }

  sub_18BC22178();

  return sub_18BC20C28();
}

uint64_t sub_18B80CBB8(uint64_t a1, uint64_t (*a2)(void *), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_18BC22158();
  a2(v8);
  v5 = sub_18BC221A8();

  return a3(a1, v5);
}

unint64_t sub_18B80CC38(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v28 = _s4ItemVMa_0(0);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v3 + 32);
  v10 = a2 & ~v9;
  if ((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      sub_18B815318(*(v3 + 48) + v13 * v10, v8, _s4ItemVMa_0);
      if (v12 != *v8 || v8[1] != a1[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        goto LABEL_4;
      }

      v14 = v28[7];
      v15 = *&v8[v14];
      v16 = *&a1[v14];
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_4;
        }

        v27 = sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
        v26 = v16;
        v17 = v15;
        v18 = sub_18BC215C8();

        if ((v18 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v16)
      {
        goto LABEL_4;
      }

      if (v8[v28[8]] == a1[v28[8]] && v8[v28[9]] == a1[v28[9]])
      {
        v19 = v28[10];
        v20 = &v8[v19];
        v21 = *&v8[v19 + 8];
        v22 = &a1[v19];
        v23 = *(v22 + 1);
        if (v21)
        {
          if (v23 && (*v20 == *v22 && v21 == v23 || (sub_18BC21FD8() & 1) != 0))
          {
LABEL_20:
            sub_18B8154A0(v8, _s4ItemVMa_0);
            return v10;
          }
        }

        else if (!v23)
        {
          goto LABEL_20;
        }
      }

LABEL_4:
      sub_18B8154A0(v8, _s4ItemVMa_0);
      v10 = (v10 + 1) & v11;
    }

    while (((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_18B80CEDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = _s4ItemVMa_0(0);
  v41 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71D0, &unk_18BC4E110);
  v42 = v4;
  v8 = sub_18BC21D78();
  v9 = v8;
  if (*(v7 + 16))
  {
    v39 = v2;
    v40 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v19 = (v14 - 1) & v14;
LABEL_15:
      v22 = v18 | (v10 << 6);
      v23 = *(v7 + 48);
      v44 = *(v41 + 72);
      v45 = v19;
      v24 = v23 + v44 * v22;
      if (v42)
      {
        sub_18B80D424(v24, v6, _s4ItemVMa_0);
        v43 = *(*(v7 + 56) + 16 * v22);
      }

      else
      {
        sub_18B8152B0(v24, v6, _s4ItemVMa_0);
        v43 = *(*(v7 + 56) + 16 * v22);
        v25 = v43;
      }

      sub_18BC22158();
      sub_18BC22178();
      sub_18BC22178();
      v26 = v46;
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      v27 = *&v6[*(v26 + 28)];
      sub_18BC22178();
      if (v27)
      {
        v28 = v27;
        sub_18BC215D8();
      }

      v29 = v46;
      sub_18BC22178();
      sub_18BC22178();
      if (*&v6[*(v29 + 40) + 8])
      {
        sub_18BC22178();
        sub_18BC20C28();
      }

      else
      {
        sub_18BC22178();
      }

      v7 = v40;
      v30 = sub_18BC221A8();
      v31 = -1 << *(v9 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v16 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v16 + 8 * v33);
          if (v37 != -1)
          {
            v17 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v32) & ~*(v16 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      sub_18B80D424(v6, *(v9 + 48) + v44 * v17, _s4ItemVMa_0);
      *(*(v9 + 56) + 16 * v17) = v43;
      ++*(v9 + 16);
      v14 = v45;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v18 = __clz(__rbit64(v21));
        v19 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_39;
    }

    v38 = 1 << *(v7 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v11, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_39:
  *v3 = v9;
}

uint64_t sub_18B80D354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B80D3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B80D424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_18B80D494()
{
  result = qword_1EA9D3970;
  if (!qword_1EA9D3970)
  {
    sub_18BC1EC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3970);
  }

  return result;
}

uint64_t sub_18B80D4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B80D554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B80D5BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a5[6];
  v14 = a6(0);
  result = sub_18B80D424(a2, v13 + *(*(v14 - 8) + 72) * a1, a7);
  v16 = (a5[7] + 16 * a1);
  *v16 = a3;
  v16[1] = a4;
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t sub_18B80D684@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = _s4ItemVMa_0(0);
  a2[4] = sub_18B7F4EE4(&qword_1EA9DBEA0, _s4ItemVMa_0, &unk_18BC489F0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return sub_18B7EC6E4(a1, boxed_opaque_existential_0Tm, _s4ItemVMa_0);
}

uint64_t sub_18B80D714(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18BC21848();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v30 - v10;
  v36 = AssociatedTypeWitness;
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v30 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = sub_18BC21848();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  v18 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  swift_getAssociatedTypeWitness();
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    v23 = result;
    sub_18B80DBC4(v37, v38);
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4098, &qword_18BC40470);
    if (swift_dynamicCast())
    {
      (*(v18 + 56))(v17, 0, 1, v13);
      (*(v18 + 32))(v21, v17, v13);
      sub_18B80DBC4(v33, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA690, &unk_18BC510C0);
      v25 = v34;
      v26 = v36;
      if (swift_dynamicCast())
      {
        v27 = v35;
        (*(v35 + 56))(v25, 0, 1, v26);
        v28 = *(v27 + 32);
        v37 = v24;
        v29 = v30;
        v28(v30, v25, v26);
        (*(a5 + 96))(v23, v21, v29, a4, a5);

        (*(v27 + 8))(v29, v26);
        return (*(v18 + 8))(v21, v13);
      }

      else
      {
        (*(v18 + 8))(v21, v13);

        (*(v35 + 56))(v25, 1, 1, v26);
        return (*(v31 + 8))(v25, v32);
      }
    }

    else
    {

      (*(v18 + 56))(v17, 1, 1, v13);
      return (*(v15 + 8))(v17, v14);
    }
  }

  return result;
}

uint64_t sub_18B80DBC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_18B80DC28(uint64_t result, int a2, int a3)
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

void sub_18B80DC64(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_0(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = *&Strong[qword_1ED651620 + 16];
  v28[0] = *&Strong[qword_1ED651620];
  v28[1] = v9;
  v29 = Strong[qword_1ED651620 + 32];
  v30 = v28[0];
  sub_18B7CA054(&v30, v27, &qword_1EA9D4C90, &qword_18BC42978);

  sub_18BAAA09C(v28);
  if (*(a2 + *(v5 + 40)) == 1)
  {
    v10 = (a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_tapHandler);
    v11 = *(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_tapHandler);
    v12 = *(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_tapHandler + 8);
    *v10 = 0;
    v10[1] = 0;
    sub_18B7B171C(v11, v12);
  }

  else
  {
    v13 = swift_allocObject();
    v14 = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    sub_18B80DF38(a2, &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    sub_18B80DF9C(&v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15);
    v17 = (a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_tapHandler);
    v18 = *(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_tapHandler);
    v19 = *(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_tapHandler + 8);
    *v17 = sub_18BA48CCC;
    v17[1] = v16;
    sub_18BC1E1A8();
    sub_18B7B171C(v18, v19);
  }

  v20 = *(a1 + OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_systemSnapshotBackgroundView);
  v21 = [v20 superview];
  v22 = swift_unknownObjectUnownedLoadStrong();
  v23 = *&v22[qword_1ED651698];

  if (!v21)
  {

    goto LABEL_8;
  }

  sub_18B7B0AC0(0, &qword_1EA9D46F0, 0x1E69DD250);
  v24 = sub_18BC215C8();

  if ((v24 & 1) == 0)
  {
LABEL_8:
    v25 = swift_unknownObjectUnownedLoadStrong();
    v26 = *&v25[qword_1ED651698];

    [v26 addSubview_];
  }
}

uint64_t sub_18B80DF38(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B80DF9C(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void __plainBlurEffect_block_invoke()
{
  v0 = [MEMORY[0x1E69DC730] _effectWithBlurRadius:22.5 scale:0.25];
  v1 = plainBlurEffect_effect;
  plainBlurEffect_effect = v0;
}

uint64_t sub_18B80E04C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v96 = a4;
  v13 = _s4ItemVMa_0(0);
  v86 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v79 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - v16;
  v18 = sub_18BC1EDD8();
  v94 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v78 - v21;
  v103 = a6;
  v104 = a7;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v102);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0Tm, a3, a6);
  v24 = *((*MEMORY[0x1E69E7D40] & *a5) + 0x98);
  swift_beginAccess();
  v25 = *(a5 + v24);
  if (*(v25 + 16))
  {
    sub_18BC1E3F8();
    v90 = a1;
    v81 = a2;
    v26 = sub_18B7C4104(a1, a2);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      sub_18BC1E1A8();

      v29 = __swift_project_boxed_opaque_existential_1Tm(v102, v103);
      v97 = &v78;
      v30 = MEMORY[0x1EEE9AC00](v29);
      (*(v32 + 16))(&v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0Tm(v99);
      sub_18BC20CC8();
      v95 = &v96[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content];
      swift_beginAccess();
      v97 = v28;
      swift_beginAccess();
      v87 = (v94 + 32);
      v88 = (v94 + 48);
      v82 = a5;
      v83 = (v94 + 8);
      v33 = v89;
      v84 = v22;
      v85 = v18;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v99, AssociatedTypeWitness);
        sub_18BC21868();
        if ((*v88)(v22, 1, v18) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v99);
          return __swift_destroy_boxed_opaque_existential_1Tm(v102);
        }

        (*v87)(v33, v22, v18);
        v53 = *(v95 + 1);
        v54 = sub_18BC1EDE8();
        if ((v54 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v54 >= *(v53 + 16))
        {
          goto LABEL_28;
        }

        v55 = *(v86 + 80);
        sub_18B80EBD8(v53 + ((v55 + 32) & ~v55) + *(v86 + 72) * v54, v17, _s4ItemVMa_0);
        v56 = sub_18BC1EDE8();
        sub_18B812F3C(v56, v105);
        v57 = v97;
        if (*(v97[10] + 16))
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18B80CA2C(v17);
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        v60 = v90;
        v111 = v105[0];
        v112 = v105[1];
        v113[0] = (v59 | v106) & 1;
        *&v113[1] = v107;
        *&v113[64] = *&v110[15];
        *&v113[49] = *v110;
        *&v113[33] = v109;
        *&v113[17] = v108;
        if (v107 & 1) != 0 || *(v57[7] + 16) && (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18B80CA2C(v17), v62 = v61, , , (v62) || (v63 = v57[15], v64 = v57[16], __swift_project_boxed_opaque_existential_1Tm(v57 + 12, v63), v65 = v97[2], sub_18BC1E1A8(), v65(v98, v17), v60 = v90, , v57 = v97, v66 = sub_18B814A2C(v98, v63, v64), __swift_destroy_boxed_opaque_existential_1Tm(v98), (v66))
        {
          if (v95[1])
          {
            v67 = 256;
          }

          else
          {
            v67 = 0;
          }

          v68 = sub_18B80C750(v17, v67 | *v95, v53, v57);
          v94 = v69;
          v71 = v70;
          v72 = (*((*MEMORY[0x1E69E7D40] & *a5) + 0x210))(v17, v60, v81);
          v73 = [v68 superview];
          if (!v73 || (v74 = v73, sub_18B7F4394(), v75 = v72, v76 = sub_18BC215C8(), v74, v75, (v76 & 1) == 0))
          {
            [v72 addSubview_];
          }

          v34 = 0x8000000000000010;
          v91 = v71 & 1;
          if ((v71 & 1) == 0)
          {
            v34 = 0x8000000000000008;
          }

          v92 = v34;
          v35 = v17;
          v36 = v17;
          v37 = v79;
          sub_18B80EBD8(v35, v79, _s4ItemVMa_0);
          v38 = (v55 + 152) & ~v55;
          v39 = (v38 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
          v93 = v72;
          v40 = (v38 + v80 + 23) & 0xFFFFFFFFFFFFFFF8;
          v41 = swift_allocObject();
          v42 = v94;
          *(v41 + 16) = v68;
          *(v41 + 24) = v42;
          v43 = *&v113[48];
          *(v41 + 96) = *&v113[32];
          *(v41 + 112) = v43;
          *(v41 + 128) = *&v113[64];
          v44 = v112;
          *(v41 + 32) = v111;
          *(v41 + 48) = v44;
          v45 = *&v113[16];
          *(v41 + 64) = *v113;
          *(v41 + 80) = v45;
          *(v41 + 144) = v97;
          v46 = v37;
          v17 = v36;
          sub_18B80EC40(v46, v41 + v38, _s4ItemVMa_0);
          v47 = v41 + v39;
          v48 = v96;
          *v47 = v96;
          *(v47 + 8) = v91;
          a5 = v82;
          *(v41 + v40) = v82;
          sub_18BC1E1A8();
          v49 = v68;
          v50 = v48;
          v51 = a5;
          v52 = v92;
          sub_18B80ECB4(sub_18B80F494, v41, v92);

          sub_18B7EBAE8(v52);
        }

        else
        {
          sub_18B7F4620(&v111);
          sub_18B814EEC(v17);
        }

        sub_18B812EDC(v17, _s4ItemVMa_0);
        v33 = v89;
        v18 = v85;
        (*v83)(v89, v85);
        v22 = v84;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18B80E970()
{
  v1 = (_s4ItemVMa_0(0) - 8);
  v2 = (*(*v1 + 80) + 152) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  v6 = v0 + v2;
  v7 = v1[8];
  v8 = sub_18BC1EC08();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return swift_deallocObject();
}

id sub_18B80EAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + qword_1ED6515F0 + 7) == 1)
  {
    if (a2 == 0x46656C7573706163 && a3 == 0xEE00736E654C726FLL || (sub_18BC21FD8() & 1) != 0)
    {
      v3 = *(v3 + qword_1ED651668);
      v4 = &OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView4Lens_contentView;
    }

    else
    {
      v4 = &qword_1ED651680;
    }
  }

  else
  {
    v4 = &qword_1ED651660;
  }

  v5 = *(v3 + *v4);

  return v5;
}

uint64_t sub_18B80EB70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B80EBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B80EC40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_18B80ECB4(void (*a1)(void), void *a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = a1;
    v13[4] = a2;
    v28 = sub_18B7E767C;
    v29 = v13;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_18B7B0DB0;
    v27 = &block_descriptor_29_0;
    v9 = _Block_copy(&v24);
    sub_18B7D8090(a3);
    sub_18BC1E1A8();

    v28 = CGRectMake;
    v29 = 0;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_18B8043A0;
    v27 = &block_descriptor_32_2;
    v14 = _Block_copy(&v24);

    [v12 _animateUsingSpringBehavior_tracking_animations_completion_];
    v11 = v14;
    goto LABEL_5;
  }

  if (a3 >> 62 == 1)
  {
    v6 = a3 & 0x3FFFFFFFFFFFFFFFLL;
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = a1;
    v8[4] = a2;
    v28 = sub_18B7D80AC;
    v29 = v8;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_18B7B0DB0;
    v27 = &block_descriptor_19_1;
    v9 = _Block_copy(&v24);
    sub_18B7D8090(a3);
    sub_18BC1E1A8();

    v28 = CGRectMake;
    v29 = 0;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_18B8043A0;
    v27 = &block_descriptor_22_2;
    v10 = _Block_copy(&v24);

    [v7 _animateUsingSpringBehavior_tracking_animations_completion_];
    v11 = v10;
LABEL_5:
    _Block_release(v11);
    v15 = v9;
LABEL_6:
    _Block_release(v15);
    return;
  }

  if (a3 == 0x8000000000000000)
  {
    v16 = objc_opt_self();
    v28 = a1;
    v29 = a2;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_18B7B0DB0;
    v27 = &block_descriptor_10_1;
    v17 = _Block_copy(&v24);
    sub_18BC1E1A8();

    v28 = CGRectMake;
    v29 = 0;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_18B8043A0;
    v27 = &block_descriptor_13_2;
    v18 = _Block_copy(&v24);

    [v16 _animateByRetargetingAnimations_completion_];
    _Block_release(v18);
    v15 = v17;
    goto LABEL_6;
  }

  if (a3 == 0x8000000000000008)
  {
    a1();
  }

  else
  {
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_18B7D1EC4;
    *(v21 + 24) = v20;
    v28 = sub_18B7D1E94;
    v29 = v21;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_18B7E3BF4;
    v27 = &block_descriptor_7_1;
    v22 = _Block_copy(&v24);
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v19 performWithoutAnimation_];
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_18B80F1D4()
{

  return swift_deallocObject();
}

uint64_t sub_18B80F234(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, void *, uint64_t, char *))
{
  v3 = *(a1(0) - 8);
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[18];
  v7 = v2 + ((*(v3 + 80) + 152) & ~*(v3 + 80));

  return a2(v4, v5, v2 + 4, v6, v7);
}

id sub_18B80F3F4()
{
  v1 = *(_s4ItemVMa_0(0) - 8);
  v2 = (*(v1 + 80) + 152) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[18];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6[8];
  v8 = *v6;

  return sub_18B80FC58(v3, v4, (v0 + 4), v5, v0 + v2, v8, v7);
}

void sub_18B80F540()
{
  v1 = v0;
  sub_18B7F40F4(v0);
  v2 = sub_18B80FFCC();
  v3 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isTrackingTouchForHighlight;
  v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isTrackingTouchForHighlight] = v2 & 1;
  v4 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_highlightView];
  v5 = [objc_opt_self() isSolariumEnabled];
  v6 = 0.0;
  if ((v5 & 1) == 0)
  {
    v6 = 1.0;
    if (v1[v3] != 1 && (v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuIsShowing] & 1) == 0)
    {
      v6 = 0.0;
      if (v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isHovered])
      {
        v6 = 0.5;
      }
    }
  }

  [v4 setAlpha_];
  v7 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView;
  v8 = *&v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView];
  if (v8)
  {
    type metadata accessor for CapsuleInteractiveInsertionView();
    if (swift_dynamicCastClass())
    {
      v9 = v8;
      v10 = sub_18BB11BF8();
      v11 = sub_18BA8375C();
      [v11 setConstant_];

      v12 = sub_18BB11C94();
      v13 = sub_18BA83804();
      [v13 setConstant_];
    }
  }

  [v1 setSelected_];
  v14 = *&v1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_systemSnapshotBackgroundView];
  sub_18B7F40F4(v14);
  [v14 setAlpha_];
  v15 = *&v1[v7];
  if (v15)
  {
    v16 = v15;
    if (sub_18B825080())
    {
      v17 = [objc_opt_self() tertiaryLabelColor];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    [v16 setTintColor_];
  }
}

uint64_t sub_18B80F8C4(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7170, &unk_18BC477A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TabIconPool.Request(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v22 - v15);
  result = swift_beginAccess();
  v18 = *(v1 + 72);
  if (*(v18 + 16))
  {
    sub_18BC1E3F8();
    v19 = sub_18B857EE4(v23);
    if (v20)
    {
      sub_18BA6669C(*(v18 + 56) + *(v11 + 72) * v19, v13, type metadata accessor for TabIconPool.Request);

      sub_18B80D3BC(v13, v16, type metadata accessor for TabIconPool.Request);
      (*(v7 + 16))(v9, v23, v6);
      (*(v11 + 56))(v5, 1, 1, v10);
      swift_beginAccess();
      sub_18BAD238C(v5, v9);
      swift_endAccess();
      v21 = *(v2 + 80);
      __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
      [v21 cancelRequestWithToken_];
      swift_unknownObjectRelease();
      return sub_18BA66640(v16);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_18B80FBA8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  if (*(v3 + 16))
  {
    sub_18BC1E3F8();
    v4 = sub_18B857EE4(a1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      sub_18BC1E3F8();

      v7 = sub_18BA61748(v6, type metadata accessor for TabIconRegistration);

      return v7;
    }
  }

  return 0;
}

id sub_18B80FC58(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  ObjectType = swift_getObjectType();
  v21[0] = a1;
  (*(*(a2 + 8) + 8))(a3, ObjectType);
  v21[3] = &_s7ContentVN;
  v21[4] = &off_1EFF233D0;
  LOBYTE(v21[0]) = *(a6 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content);
  v15 = *(a6 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8);
  BYTE1(v21[0]) = *(a6 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 1);
  v21[1] = v15;
  v16 = a4[15];
  v17 = a4[16];
  __swift_project_boxed_opaque_existential_1Tm(a4 + 12, v16);
  v18 = a4[2];
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  v18(v20, a5);

  sub_18B810470(a1, v20, v21, v7, v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return [a1 layoutIfNeeded];
}

uint64_t sub_18B80FDA4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 104);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_18B7C4104(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_18B7F44EC(*(v3 + 56) + 40 * v4, v8);
  result = swift_dynamicCast();
  if (result)
  {
    return v7;
  }

  return result;
}

uint64_t sub_18B80FE34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18BC1EC08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18B80FF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_18B81001C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18BC1DE78();
  MEMORY[0x1EEE9AC00](v4);
  sub_18BC20BD8();
  sub_18B8102A0(&qword_1EA9D78C8, MEMORY[0x1E6959D90], MEMORY[0x1E6959DA8]);
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D78D0, &qword_18BC49B38);
  sub_18B81034C();
  sub_18BC21908();
  v6 = objc_allocWithZone(sub_18BC1F018());
  sub_18B81041C();
  v7 = sub_18BC1EFF8();
  sub_18BC21508();
}

void sub_18B810188(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (v3)
  {

    sub_18B84BE74(a1);

    sub_18B810E38(a1);
  }
}

uint64_t sub_18B8102A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18B81034C()
{
  result = qword_1EA9D78D8;
  if (!qword_1EA9D78D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D78D0, &qword_18BC49B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D78D8);
  }

  return result;
}

unint64_t sub_18B8103B0()
{
  result = qword_1EA9D4EF8;
  if (!qword_1EA9D4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D4EF8);
  }

  return result;
}

unint64_t sub_18B81041C()
{
  result = qword_1EA9D78E0;
  if (!qword_1EA9D78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D78E0);
  }

  return result;
}

uint64_t sub_18B810470(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v35 = a3;
  v34 = a4;
  v39 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18BC21848();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v30 - v11;
  v38 = AssociatedTypeWitness;
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v31 = &v30 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_18BC21848();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v19 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  swift_getAssociatedTypeWitness();
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    v24 = result;
    sub_18B80DBC4(v39, v40);
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4098, &qword_18BC40470);
    if (swift_dynamicCast())
    {
      v39 = v25;
      (*(v19 + 56))(v18, 0, 1, v14);
      (*(v19 + 32))(v22, v18, v14);
      sub_18B80DBC4(v35, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA690, &unk_18BC510C0);
      v26 = v36;
      v27 = v38;
      if (swift_dynamicCast())
      {
        v28 = v37;
        (*(v37 + 56))(v26, 0, 1, v27);
        v29 = v31;
        (*(v28 + 32))(v31, v26, v27);
        (*(a6 + 64))(v24, v22, v29, v34 & 1, a5, a6);

        (*(v28 + 8))(v29, v27);
        return (*(v19 + 8))(v22, v14);
      }

      else
      {
        (*(v19 + 8))(v22, v14);

        (*(v37 + 56))(v26, 1, 1, v27);
        return (*(v32 + 8))(v26, v33);
      }
    }

    else
    {

      (*(v19 + 56))(v18, 1, 1, v14);
      return (*(v16 + 8))(v18, v15);
    }
  }

  return result;
}

uint64_t sub_18B810930@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  return sub_18BC1E3F8();
}

double sub_18B8109C8(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s4ItemVMa_0(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + *(v10 + 32)) & 1) == 0 && *(a2 + v6[9]) != 1)
  {
    v11 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView;
    v18 = *&a1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView];
    if (v18 && (type metadata accessor for CapsuleTabGroupView(), (v19 = swift_dynamicCastClass()) != 0))
    {
      v20 = v19;
      v21 = v18;
      v22 = v20;
    }

    else
    {
      v22 = [objc_allocWithZone(type metadata accessor for CapsuleTabGroupView()) init];
    }

    v49 = v8;
    v53 = v3;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v24 = Strong[qword_1ED6515F0];

    v50 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v7;
    if (v24 == 1)
    {
      v25 = *(a2 + v6[7]);
      v26 = v25;
    }

    else
    {
      v25 = 0;
    }

    v27 = swift_unknownObjectUnownedLoadStrong();
    v28 = v27[qword_1ED6515F0 + 3];

    v29 = v6[10];
    v51 = a2;
    v30 = (a2 + v29);
    v31 = *v30;
    v32 = v30[1];
    v52 = v22;
    v33 = &v22[OBJC_IVAR___SFCapsuleTabGroupView_configuration];
    v34 = *&v22[OBJC_IVAR___SFCapsuleTabGroupView_configuration];
    v35 = v33[8];
    v36 = *(v33 + 2);
    v37 = *(v33 + 3);
    *v33 = v25;
    v33[8] = v28;
    *(v33 + 2) = v31;
    *(v33 + 3) = v32;
    v47 = v25;
    swift_bridgeObjectRetain_n();
    if ((sub_18B8124D0(v25, v28, v31, v32, v34, v35, v36, v37) & 1) == 0)
    {
      sub_18B7E3454();
    }

    v12 = *&a1[v11];
    v9 = v50;
    a2 = v51;
    v7 = v48;
    v38 = v52;
    if (v12)
    {
      if (v52 == v12)
      {
LABEL_24:
        *&a1[v11] = v38;
        v17 = &off_1EFF2F1D8;
        goto LABEL_25;
      }

      [v12 removeFromSuperview];
    }

    v39 = v38;
    [a1 addSubview_];
    [a1 setNeedsLayout];

    v12 = *&a1[v11];
    goto LABEL_24;
  }

  v11 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView;
  v12 = *&a1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView];
  if (v12 && (type metadata accessor for CapsuleInteractiveInsertionView(), (v13 = swift_dynamicCastClass()) != 0))
  {
    v14 = v13;
    v15 = v12;
  }

  else
  {
    type metadata accessor for CapsuleInteractiveInsertionView();
    v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v12 = *&a1[v11];
    if (!v12)
    {
LABEL_9:
      v16 = v14;
      [a1 addSubview_];
      [a1 setNeedsLayout];

      v12 = *&a1[v11];
      goto LABEL_10;
    }
  }

  if (v14 != v12)
  {
    v12 = v12;
    [v12 removeFromSuperview];
    goto LABEL_9;
  }

LABEL_10:
  *&a1[v11] = v14;
  v17 = &off_1EFF26BE0;
LABEL_25:
  *&a1[v11 + 8] = v17;

  v40 = swift_allocObject();
  v41 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  sub_18B80DF38(a2, v9);
  v42 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  sub_18B80DF9C(v9, v43 + v42);
  v44 = &a1[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuProvider];
  *v44 = sub_18BA48E4C;
  *(v44 + 1) = v43;

  return result;
}

unint64_t sub_18B810DE4()
{
  result = qword_1EA9DB388;
  if (!qword_1EA9DB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB388);
  }

  return result;
}

void sub_18B810E38(uint64_t a1)
{
  v2 = v1;
  v160 = a1;
  v3 = *v1;
  v5 = *(v3 + 608);
  v6 = *(v3 + 616);
  v7 = *(v3 + 624);
  *&v184 = *(v3 + 600);
  v4 = *&v184;
  *(&v184 + 1) = v5;
  v173 = v5;
  *&v185 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v185 + 1) = v6;
  v174 = v7;
  *&v186 = v7;
  *(&v186 + 1) = sub_18B8103B0();
  v172 = *(&v186 + 1);
  v152 = type metadata accessor for SFFluidCollectionView.Element(0, &v184);
  v8 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v151 = v135 - v9;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v135 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v170 = sub_18BC21848();
  v15 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v169 = v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v135 - v19;
  v150 = (*(v3 + 456))(v18);
  if (v150)
  {
    v149 = sub_18B81280C();
    v146 = v21;
    v22 = (*v2 + 848);
    v144 = *v22;
    v143 = v22;
    v144();
    sub_18B81393C();
    v24 = v23;

    sub_18B810930(&v184);
    v168 = *(&v184 + 1);
    v166 = v184;
    *&v161 = v8;
    v159 = v10;
    v167 = v15;
    v25 = v186;
    sub_18BC1E1A8();

    v142 = v25;
    v181 = v25;
    v141 = *(&v25 + 1);
    v26 = sub_18BC1F0E8();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x18CFFC1E0](&v184, v26, WitnessTable);
    v181 = v184;
    sub_18BC21D48();
    sub_18BC21D18();
    v168 = sub_18BC21D38();
    v167 += 4;
    v166 = TupleTypeMetadata2 - 8;
    v165 = (v159 + 4);
    v162 = (v159 + 1);
    v159 += 2;
    v157 = (v161 + 8);
    v135[1] = v146 + 72;
    v135[0] = v146 + 80;
    v140 = "luidTabOverviewGridLayout.swift";
    v171 = v2;
    v164 = TupleTypeMetadata2;
    for (i = v20; ; v20 = i)
    {
      v28 = v169;
      sub_18BC21D28();
      (*v167)(v20, v28, v170);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v20, 1, TupleTypeMetadata2) == 1)
      {

        CGRectGetWidth(*(v2 + 82));
        v144();
        sub_18B813D18();
        v129 = v128;
        v131 = v130;

        swift_unknownObjectRelease();
        v132 = v160;
        *(v160 + 40) = v129;
        *(v132 + 48) = v131;
        return;
      }

      (*v165)(v13, &v20[*(TupleTypeMetadata2 + 48)], v4);
      sub_18B810930(&v184);
      v181 = v184;
      v182 = v185;
      v183 = v186;
      v175 = *&v4;
      v176 = v173;
      v177 = &type metadata for SFFluidTabOverviewSupplementary;
      v29 = v6;
      v178 = v6;
      v179 = v174;
      v180 = v172;
      v30 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, &v175);
      SFFluidCollectionView.DataSource.Snapshot.items(in:)(v13, v30);
      v31 = v13;

      v32 = sub_18BC20E28();

      if (v32 >= 1)
      {
        *&v184 = 0;
        v33 = v173;
        SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x6548726564616568, 0xEC00000074686769, &v184, v4, v173, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E7DE0], v6, &v181, v174, v172);
        v35 = *(&v181 + 1);
        v34 = *&v181;
        v36 = v182;
        v155 = *v159;
        v37 = v151;
        v155(v151, v13, v4);
        v38 = v152;
        swift_storeEnumTagMultiPayload();
        v175 = v34;
        v176 = v35;
        v177 = v36;
        *&v184 = v4;
        *(&v184 + 1) = v33;
        *&v185 = &type metadata for SFFluidTabOverviewSupplementary;
        *(&v185 + 1) = v29;
        v39 = v174;
        v40 = v172;
        *&v186 = v174;
        *(&v186 + 1) = v172;
        v156 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics(0, &v184);
        SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v175, v37, v156, MEMORY[0x1E69E7DE0], &v184);

        v158 = *v157;
        v158(v37, v38);
        v41 = *&v184;
        *&v181 = 1;
        v153 = v29;
        SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x736E6D756C6F63, 0xE700000000000000, &v181, v4, v33, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E6530], v29, &v184, v39, v40);
        v161 = v184;
        v42 = v185;
        v43 = v155;
        v155(v37, v31, v4);
        swift_storeEnumTagMultiPayload();
        v181 = v161;
        *&v182 = v42;
        SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v181, v37, v156, MEMORY[0x1E69E6530], &v175);

        v158(v37, v38);
        v145 = *&v175;
        type metadata accessor for UIEdgeInsets(0);
        *&v161 = v44;
        v45 = v172;
        sub_18B85E0CC(v4, v173, &type metadata for SFFluidTabOverviewSupplementary, v29, v174, v172, 0x496E6F6974636573, &v184, 0xED0000737465736ELL);
        v47 = *(&v184 + 1);
        v46 = v184;
        v43(v37, v31, v4);
        v154 = v185;
        v148 = v186;
        swift_storeEnumTagMultiPayload();
        v181 = __PAIR128__(v47, v46);
        v183 = v148;
        v182 = v154;
        v48 = v156;
        SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v181, v37, v156, v161, &v175);

        v158(v37, v38);
        sub_18B85E0CC(v4, v173, &type metadata for SFFluidTabOverviewSupplementary, v153, v174, v45, 0x65736E496D657469, &v184, 0xEA00000000007374);
        v50 = *(&v184 + 1);
        v49 = v184;
        v155(v37, v31, v4);
        v154 = v185;
        v148 = v186;
        swift_storeEnumTagMultiPayload();
        v181 = __PAIR128__(v50, v49);
        v183 = v148;
        v182 = v154;
        SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v181, v37, v48, v161, &v175);

        v51 = v158;
        v158(v37, v38);
        UIEdgeInsetsAdd();
        v53 = v52;
        v55 = v54;
        v57 = v56;
        *&v181 = 0;
        v133 = v45;
        v58 = MEMORY[0x1E69E7DE0];
        SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(1500408173, 0xE400000000000000, &v181, v4, v173, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E7DE0], v153, &v184, v174, v133);
        v60 = *(&v184 + 1);
        v59 = v184;
        v61 = v185;
        *&v154 = v31;
        v155(v37, v31, v4);
        swift_storeEnumTagMultiPayload();
        v175 = v24;
        v181 = __PAIR128__(v60, v59);
        v62 = v145;
        *&v182 = v61;
        sub_18B85D588(&v175, &v181, v37, v156, v58);
        v51(v37, v38);

        v63 = v171;
        Width = CGRectGetWidth(*(v171 + 656));
        if (__OFSUB__(v62, 1))
        {
          __break(1u);
          return;
        }

        v65 = v4;
        v66 = Width - (v53 + v57);
        v67 = (*v63 + 776);
        *&v148 = *v67;
        v147 = v67;
        v68 = (v148)();
        v136 = v62;
        v69 = (v66 - v68 * (v62 - 1)) / v62;
        v70 = CGRectGetWidth(*(v63 + 656));
        v71 = v70 * (*(*v63 + 920))();
        if (v71 < v69)
        {
          v69 = v71;
        }

        v139 = v24;
        v138 = v41;
        v137 = v55;
        if (v149)
        {
          ObjectType = swift_getObjectType();
          v73 = v146;
          v74 = *(v146 + 72);
          swift_unknownObjectRetain();
          v75 = v150;
          v76 = v154;
          v77 = v74(v150, v63, v154, ObjectType, v73);
          v78 = swift_unknownObjectRelease();
          if (v77 == 0.0)
          {
            sub_18B85EFFC(v76);
            v80 = v69 / v79;
            v81 = swift_getObjectType();
            v82 = *(v73 + 80);
            swift_unknownObjectRetain();
            v83 = v82(v75, v63, v76, v81, v73);
            v78 = swift_unknownObjectRelease();
            v77 = v80 + v83;
          }

          v62 = v145;
          v65 = v4;
        }

        else
        {
          v76 = v154;
          sub_18B85EFFC(v154);
          v77 = v69 / v84;
        }

        v85 = v148;
        v86 = v69 + (v148)(v78);
        v85();
        *&v88 = v77 + v87;
        sub_18B85F31C(v160, v76, v62, v63, v86, v53);
        sub_18B85F5E8(v76);
        v90 = v89;
        type metadata accessor for CGSize(0);
        v92 = v91;
        v181 = 0uLL;
        v93 = v172;
        v94 = v29;
        SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x657A695374696E75, 0xE800000000000000, &v181, v65, v173, &type metadata for SFFluidTabOverviewSupplementary, v91, v29, &v184, v174, v172);
        v96 = *(&v184 + 1);
        v95 = v184;
        v97 = v185;
        *&v161 = v65;
        v98 = v151;
        v155(v151, v154, v161);
        v99 = v152;
        swift_storeEnumTagMultiPayload();
        v175 = v86;
        v176 = v88;
        v181 = __PAIR128__(v96, v95);
        v182 = v97;
        v100 = v156;
        sub_18B85D588(&v175, &v181, v98, v156, v92);
        v158(v98, v99);

        v181 = 0uLL;
        SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x657A69536D657469, 0xE800000000000000, &v181, v161, v173, &type metadata for SFFluidTabOverviewSupplementary, v92, v94, &v184, v174, v93);
        v102 = *(&v184 + 1);
        v101 = v184;
        v104 = *(&v185 + 1);
        v103 = v185;
        v105 = v155;
        v155(v98, v154, v161);
        swift_storeEnumTagMultiPayload();
        v175 = v69;
        v176 = *&v77;
        v181 = __PAIR128__(v102, v101);
        v182 = __PAIR128__(v104, v103);
        sub_18B85D588(&v175, &v181, v98, v100, v92);
        v158(v98, v99);

        type metadata accessor for CGPoint(0);
        v107 = v106;
        v181 = 0uLL;
        v108 = v172;
        v109 = v174;
        v110 = v173;
        SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x66664F736D657469, 0xEB00000000746573, &v181, v161, v173, &type metadata for SFFluidTabOverviewSupplementary, v106, v153, &v184, v174, v172);
        v112 = *(&v184 + 1);
        v111 = v184;
        v113 = v185;
        v105(v98, v154, v161);
        swift_storeEnumTagMultiPayload();
        v114 = v139;
        v115 = v138;
        CGRectMake();
        v175 = v116;
        v176 = v117;
        v181 = __PAIR128__(v112, v111);
        v182 = v113;
        sub_18B85D588(&v175, &v181, v98, v156, v107);
        v158(v98, v99);

        *&v181 = 0;
        v134 = v108;
        v118 = v110;
        v13 = v154;
        v119 = MEMORY[0x1E69E7DE0];
        v120 = v153;
        SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0xD000000000000018, v140 | 0x8000000000000000, &v181, v161, v118, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E7DE0], v153, &v184, v109, v134);
        v122 = *(&v184 + 1);
        v121 = v184;
        v123 = v185;
        v155(v98, v13, v161);
        swift_storeEnumTagMultiPayload();
        v175 = v69 * v90 / CGRectGetWidth(*(v171 + 656));
        v181 = __PAIR128__(v122, v121);
        v2 = v171;
        *&v182 = v123;
        sub_18B85D588(&v175, &v181, v98, v156, v119);
        v4 = *&v161;
        v158(v98, v99);
        v6 = v120;

        v124 = sub_18B85F6BC(v13);
        v125 = *&v88 * ceil(v124 / v136);
        (v148)();
        v127 = v126;
        (*v162)(v13, v4);
        v24 = v115 + v137 + v114 + v125 - v127;
      }

      else
      {
        (*v162)(v13, v4);
        v2 = v171;
      }

      TupleTypeMetadata2 = v164;
    }
  }
}

uint64_t sub_18B8124D0(uint64_t result, int a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (!a5)
    {
      return 0;
    }

    v9 = result;
    v12 = a3;
    v13 = a4;
    v14 = a7;
    v15 = a8;
    sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
    v16 = a5;
    v17 = v9;
    LOBYTE(v9) = sub_18BC215C8();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }

    a8 = v15;
    a7 = v14;
    a4 = v13;
    a3 = v12;
    if ((a2 ^ a6))
    {
      return result;
    }

LABEL_8:
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (sub_18BC21FD8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  if (!a5 && ((a2 ^ a6) & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

unint64_t sub_18B8125F0()
{
  result = qword_1EA9DB3A8;
  if (!qword_1EA9DB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB3A8);
  }

  return result;
}

void sub_18B812690()
{
  v1 = *&v0[OBJC_IVAR___SFCapsuleTabGroupView_disclosureIndicator];
  v2 = [v0 tintColor];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 colorWithProminence_];

    [v1 setTintColor_];
    v5 = *&v0[OBJC_IVAR___SFCapsuleTabGroupView_titleLabel];
    v6 = [v0 tintColor];
    [v5 setTextColor_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_18B8127B8()
{
  result = qword_1EA9DB3B0;
  if (!qword_1EA9DB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB3B0);
  }

  return result;
}

void *sub_18B81280C()
{
  v1 = *v0;
  result = (*(*v0 + 456))();
  if (result)
  {
    v3 = result;
    v4 = sub_18B812A74();

    if (v4)
    {
      v5 = *(v1 + 600);
      swift_getExtendedExistentialTypeMetadata();
      swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        return v5;
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

void sub_18B812940()
{
  v6.receiver = v0;
  v6.super_class = _s11CapsuleViewCMa();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_highlightView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }

  sub_18B812B88();
  v4 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_shadowView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 frameWithContentWithFrame_];
    [v5 setFrame_];
  }
}

unint64_t sub_18B812AE8()
{
  result = qword_1EA9DB3B8;
  if (!qword_1EA9DB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB3B8);
  }

  return result;
}

uint64_t _s7SectionVMa_1(uint64_t a1)
{
  result = qword_1EA9D8B20;
  if (!qword_1EA9D8B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B812B88()
{
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView];
  if (v1)
  {
    v2 = v0;
    v3 = *&v0[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView + 8];
    v4 = v1;
    v5 = 1.0;
    if (([v2 isSelected] & 1) == 0)
    {
      ObjectType = swift_getObjectType();
      if ((*(v3 + 8))(ObjectType, v3))
      {
        v5 = *&v2[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration + 24];
      }
    }

    v7 = swift_getObjectType();
    [v4 setAlpha_];
    v8 = v4;
    [v2 bounds];
    [v8 setFrame_];

    (*(v3 + 24))([v2 isSelected], v7, v3);
    v9 = v8;
    UIEdgeInsetsMakeWithEdges();
    [v9 setLayoutMargins_];
  }
}

id sub_18B812D28(char a1)
{
  *(v1 + OBJC_IVAR___SFCapsuleTabGroupView_isSelected) = a1;
  v2 = 0.0;
  if (a1)
  {
    v2 = 1.0;
  }

  return [*(v1 + OBJC_IVAR___SFCapsuleTabGroupView_disclosureIndicator) setAlpha_];
}

uint64_t sub_18B812D78(uint64_t a1, uint64_t a2)
{
  result = sub_18B812E34(&qword_1EA9D4F08, a2, type metadata accessor for TabOverview, &unk_18BC42E20);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18B812DD0()
{
  result = qword_1EA9DB390;
  if (!qword_1EA9DB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB390);
  }

  return result;
}

uint64_t sub_18B812E34(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_18B812E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B812EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B812F3C@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5378, &unk_18BC432C0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v79 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380, &unk_18BC46510);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v79 - v11;
  v86 = _s4ItemVMa_0(0);
  v13 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v79 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v79 - v16;
  v17 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  v83 = v17;
  sub_18B80DBC4(v3 + v17, &v103);
  v19 = *(&v104 + 1);
  v18 = v105;
  __swift_project_boxed_opaque_existential_1Tm(&v103, *(&v104 + 1));
  v20 = (*(v18 + 120))(a1, v19, v18);
  v22 = v21;
  v24 = v23;
  Height = v25;
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v103);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v28 = *(v3 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8);
  if (*(v28 + 16) <= a1)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v29 = v28 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v30 = *(v13 + 72);
  v82 = a1;
  v31 = v85;
  sub_18B80DF38(v29 + v30 * a1, v85);
  v32 = sub_18B7F3A2C(MEMORY[0x1E69E7CC0]);
  *&v90 = v20;
  *(&v90 + 1) = v22;
  *&v91 = v24;
  *(&v91 + 1) = Height;
  LOWORD(v92[0]) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v92 + 8) = _Q0;
  *(&v92[1] + 1) = 0;
  *&v93 = 0;
  *(&v93 + 1) = 0x3FF0000000000000;
  v94 = 0uLL;
  *&v95 = 0;
  *(&v95 + 1) = v32;
  sub_18B80DF38(v31, v12);
  v38 = v86;
  (*(v13 + 56))(v12, 0, 1, v86);
  v39 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_highlightedItem;
  swift_beginAccess();
  v40 = *(v5 + 48);
  sub_18B7CA054(v12, v7, &unk_1EA9D5380, &unk_18BC46510);
  v81 = v3;
  sub_18B7CA054(v3 + v39, &v7[v40], &unk_1EA9D5380, &unk_18BC46510);
  v41 = *(v13 + 48);
  if (v41(v7, 1, v38) != 1)
  {
    v47 = v80;
    sub_18B7CA054(v7, v80, &unk_1EA9D5380, &unk_18BC46510);
    if (v41(&v7[v40], 1, v38) != 1)
    {
      v48 = v79;
      sub_18B80DF9C(&v7[v40], v79);
      v49 = sub_18B81B8AC(v47, v48);
      sub_18B813CBC(v48);
      sub_18B988BAC(v12, &unk_1EA9D5380, &unk_18BC46510);
      sub_18B813CBC(v47);
      sub_18B988BAC(v7, &unk_1EA9D5380, &unk_18BC46510);
      v45 = v84;
      v43 = v85;
      v46 = v83;
      v44 = v81;
      if (v49)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_18B813FB0(0x696C686769487369, 0xED00006465746867, &v103);
      sub_18B988BAC(&v103, &qword_1EA9D4080, &qword_18BC40460);
      goto LABEL_12;
    }

    sub_18B988BAC(v12, &unk_1EA9D5380, &unk_18BC46510);
    sub_18B813CBC(v47);
    v43 = v85;
    v44 = v81;
LABEL_8:
    sub_18B988BAC(v7, &qword_1EA9D5378, &unk_18BC432C0);
    v46 = v83;
    v45 = v84;
    goto LABEL_9;
  }

  sub_18B988BAC(v12, &unk_1EA9D5380, &unk_18BC46510);
  v42 = v41(&v7[v40], 1, v38);
  v43 = v85;
  v44 = v81;
  if (v42 != 1)
  {
    goto LABEL_8;
  }

  sub_18B988BAC(v7, &unk_1EA9D5380, &unk_18BC46510);
  v46 = v83;
  v45 = v84;
LABEL_11:
  LOBYTE(v96) = 1;
  sub_18BC21A68();
  v50 = *(&v95 + 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v96 = v50;
  sub_18B7F3BB8(&v103, 0x696C686769487369, 0xED00006465746867, isUniquelyReferenced_nonNull_native);
  *(&v95 + 1) = v96;
LABEL_12:
  sub_18B80DBC4(v44 + v46, &v103);
  v52 = *(&v104 + 1);
  v53 = v105;
  __swift_project_boxed_opaque_existential_1Tm(&v103, *(&v104 + 1));
  v54 = (*(v53 + 136))(v82, v52, v53);
  __swift_destroy_boxed_opaque_existential_1Tm(&v103);
  if (v54)
  {
    LOBYTE(v96) = 1;
    sub_18BC21A68();
    v55 = *(&v95 + 1);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *&v96 = v55;
    sub_18B7F3BB8(&v103, 0x7463656C65537369, 0xEA00000000006465, v56);
    v57 = v96;
  }

  else
  {
    sub_18B813FB0(0x7463656C65537369, 0xEA00000000006465, &v103);
    sub_18B988BAC(&v103, &qword_1EA9D4080, &qword_18BC40460);
    v57 = *(&v95 + 1);
  }

  v110.origin.x = v20;
  v110.origin.y = v22;
  v110.size.width = v24;
  v110.size.height = Height;
  *&v96 = CGRectGetWidth(v110);
  sub_18B7F3B64();
  sub_18BC21A68();
  v58 = swift_isUniquelyReferenced_nonNull_native();
  *&v96 = v57;
  sub_18B7F3BB8(&v103, 0x64656C6165766572, 0xED00006874646957, v58);
  v59 = v96;
  *(&v95 + 1) = v96;
  v60 = *(v43 + *(v86 + 32));
  if (v60)
  {
    if (*(*(v44 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_configuration + 8) + 40) == 3)
    {
      LOBYTE(v96) = 1;
      sub_18BC21A68();
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *&v96 = v59;
      sub_18B7F3BB8(&v103, 0x6D6D694473657375, 0xEE00746E69546465, v61);
      *(&v95 + 1) = v96;
LABEL_20:
      v107 = v93;
      v108 = v94;
      v109 = v95;
      v103 = v90;
      v104 = v91;
      v105 = v92[0];
      v106 = v92[1];
      sub_18B8141CC(&v103, &v96);
      sub_18B7F4620(&v103);
      v22 = *(&v96 + 1);
      v20 = *&v96;
      Height = *(&v97 + 1);
      v24 = *&v97;
      v93 = v100;
      v94 = v101;
      v95 = v102;
      v90 = v96;
      v91 = v97;
      v92[0] = v98;
      v92[1] = v99;
      goto LABEL_21;
    }

    sub_18B813FB0(0x6D6D694473657375, 0xEE00746E69546465, &v103);
    sub_18B988BAC(&v103, &qword_1EA9D4080, &qword_18BC40460);
    if (v60)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_18B813FB0(0x6D6D694473657375, 0xEE00746E69546465, &v103);
    sub_18B988BAC(&v103, &qword_1EA9D4080, &qword_18BC40460);
  }

LABEL_21:
  sub_18B80DBC4(v44 + v46, v87);
  v62 = v88;
  v63 = v89;
  __swift_project_boxed_opaque_existential_1Tm(v87, v88);
  v64 = sub_18BA72398(v62, v63);
  v66 = v65;
  v68 = v67;
  v70 = v69;
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  if (*(v44 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics + 48) == 1)
  {
    v111.origin.x = v64;
    v111.origin.y = v66;
    v111.size.width = v68;
    v111.size.height = v70;
    MaxX = CGRectGetMaxX(v111);
    v112.origin.x = v20;
    v112.origin.y = v22;
    v112.size.width = v24;
    v112.size.height = Height;
    v72 = MaxX - CGRectGetMaxX(v112);
    v113.origin.x = v20;
    v113.origin.y = v22;
    v113.size.width = v24;
    v113.size.height = Height;
    MinY = CGRectGetMinY(v113);
    v114.origin.x = v20;
    v114.origin.y = v22;
    v114.size.width = v24;
    v114.size.height = Height;
    Width = CGRectGetWidth(v114);
    v115.origin.x = v20;
    v115.origin.y = v22;
    v115.size.width = v24;
    v115.size.height = Height;
    Height = CGRectGetHeight(v115);
    v20 = v72;
    v22 = MinY;
    v24 = Width;
  }

  *&v90 = v20;
  *(&v90 + 1) = v22;
  *&v91 = v24;
  *(&v91 + 1) = Height;
  v116.origin.x = v20;
  v116.origin.y = v22;
  v116.size.width = v24;
  v116.size.height = Height;
  v75 = CGRectIntersectsRect(v116, *(v44 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 32));
  result = sub_18B813CBC(v43);
  BYTE1(v92[0]) = v75;
  v76 = v94;
  v45[4] = v93;
  v45[5] = v76;
  v45[6] = v95;
  v77 = v91;
  *v45 = v90;
  v45[1] = v77;
  v78 = v92[1];
  v45[2] = v92[0];
  v45[3] = v78;
  return result;
}

unint64_t sub_18B8139B0()
{
  result = qword_1EA9DB3C0;
  if (!qword_1EA9DB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB3C0);
  }

  return result;
}

uint64_t sub_18B813A04()
{
  v1 = *v0;
  if (v0[76])
  {
    v2 = v0[76];
  }

  else
  {
    v3 = v0;
    v5 = v1[76];
    v6 = v1[77];
    v7 = v1[78];
    v10[0] = v1[75];
    v4 = v10[0];
    v10[1] = v5;
    v10[2] = v6;
    v10[3] = v7;
    type metadata accessor for SFFluidCollectionView.LargeTitleAndSearchBarLayout(0, v10);
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = v5;
    v8[4] = v6;
    v8[5] = v7;
    v8[6] = v0;
    v2 = sub_18B85CE4C(sub_18B84DDF4, v8);
    swift_unownedRelease();
    v3[76] = v2;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v2;
}

uint64_t sub_18B813B14()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

unint64_t sub_18B813B50()
{
  result = qword_1EA9DB3D8;
  if (!qword_1EA9DB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB3D8);
  }

  return result;
}

void sub_18B813BA4()
{
  if (v0[32] != 1 || (v0[97]) && v0[33] == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong safeAreaInsets];
    }
  }
}

uint64_t sub_18B813C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380, &unk_18BC46510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B813CBC(uint64_t a1)
{
  v2 = _s4ItemVMa_0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_18B813D18()
{
  sub_18B813E2C(v5);
  v6.origin.x = UIEdgeInsetsInsetRect(v5[4], v5[5], v5[6], v5[7], v5[0], v5[1]);
  Height = CGRectGetHeight(v6);
  v2 = 0.0;
  if (*(v0 + 33) == 1 && *(v0 + 96) == 1 && (*(v0 + 97) & 1) == 0)
  {
    v2 = *(v0 + 88);
  }

  v3 = Height + v2;
  if (*(v0 + 152) != 1 || (v4 = v3, *(v0 + 153) == 1))
  {
    v4 = 1.79769313e308;
  }

  if (v3 > v4)
  {
    __break(1u);
  }
}

unint64_t sub_18B813DD8()
{
  result = qword_1EA9DB398;
  if (!qword_1EA9DB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DB398);
  }

  return result;
}

void sub_18B813E2C(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong adjustedContentInset];
    v51 = v5;
    v52 = v4;
    v49 = v7;
    v50 = v6;
    [v3 bounds];
    v47 = v9;
    v48 = v8;
    v45 = v11;
    v46 = v10;
    sub_18B7E0E4C();
    v43 = v13;
    v44 = v12;
    v15 = v14;
    v17 = v16;
    [v3 contentSize];
    v19 = v18;
    v21 = v20;
    [v3 frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = [v3 isTracking];

    v31 = v21;
    v32 = v19;
    v34 = v43;
    v33 = v44;
    v36 = v45;
    v35 = v46;
    v38 = v47;
    v37 = v48;
    v40 = v49;
    v39 = v50;
    v42 = v51;
    v41 = v52;
  }

  else
  {
    v30 = 0;
    v41 = *MEMORY[0x1E69DDCE0];
    v42 = *(MEMORY[0x1E69DDCE0] + 8);
    v39 = *(MEMORY[0x1E69DDCE0] + 16);
    v40 = *(MEMORY[0x1E69DDCE0] + 24);
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v33 = *MEMORY[0x1E69DDCE0];
    v34 = v42;
    v15 = v39;
    v17 = v40;
    v32 = 0;
    v31 = 0;
    v23 = 0;
    v25 = 0;
    v27 = 0;
    v29 = 0;
  }

  *a1 = v41;
  *(a1 + 8) = v42;
  *(a1 + 16) = v39;
  *(a1 + 24) = v40;
  *(a1 + 32) = v37;
  *(a1 + 40) = v38;
  *(a1 + 48) = v35;
  *(a1 + 56) = v36;
  *(a1 + 64) = v33;
  *(a1 + 72) = v34;
  *(a1 + 80) = v15;
  *(a1 + 88) = v17;
  *(a1 + 96) = v32;
  *(a1 + 104) = v31;
  *(a1 + 112) = v23;
  *(a1 + 120) = v25;
  *(a1 + 128) = v27;
  *(a1 + 136) = v29;
  *(a1 + 144) = v30;
}

double sub_18B813FB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_18B7C4104(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18B848D98();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *v11;
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    *(a3 + 32) = *(v11 + 32);
    sub_18BB5B3BC(v8, v10, v12);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_18B8140D8(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_18B814144(a3);
  v6 = v5;

  return v6;
}

id sub_18B814144(SEL *a1)
{
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = v3[6];
  v7[0] = v3[5];
  v7[1] = v4;
  v7[2] = v3[7];
  v5 = type metadata accessor for SFFluidCollectionView(0, v7);
  v8.receiver = v1;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, *a1);
}

void sub_18B8141CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 56);
  v63 = *(a1 + 40);
  v64 = v6;
  v7 = *(a1 + 88);
  v65 = *(a1 + 72);
  v66 = v7;
  v8 = *(a1 + 24);
  v61 = *(a1 + 8);
  v62 = v8;
  v9 = *(a1 + 104);
  v10 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v2 + v10, v58);
  v11 = v59;
  v12 = v60;
  __swift_project_boxed_opaque_existential_1Tm(v58, v59);
  v13 = *(v12 + 200);
  sub_18B81407C(a1, v55);
  v14 = v13(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  v15 = *(v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_interactiveInsertionInfo);
  sub_18B80DBC4(v2 + v10, v55);
  v16 = v56;
  v17 = v57;
  __swift_project_boxed_opaque_existential_1Tm(v55, v56);
  sub_18BA72188(v16, v17);
  v19 = v18;
  sub_18B80DBC4(v3 + v10, v58);
  v20 = v59;
  v21 = v60;
  __swift_project_boxed_opaque_existential_1Tm(v58, v59);
  v22 = (*(v21 + 184))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  if (v22 < 0.0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (v22 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  v24 = v23 * 0.67;
  v26 = *a1;
  v25 = *(a1 + 8);
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v29 = v14 + v15;
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  v30 = 0.0;
  if (v19 > 0.0)
  {
    v30 = v24;
  }

  v31 = v29 + v30 + v26;
  sub_18B80DBC4(v3 + v10, v55);
  v32 = v56;
  v33 = v57;
  __swift_project_boxed_opaque_existential_1Tm(v55, v56);
  v34 = (*(v33 + 192))(v32, v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  *v58 = v34;
  sub_18B7F3B64();
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58[0] = v9;
  sub_18B7F3BB8(v55, 0xD000000000000014, 0x800000018BC6AF60, isUniquelyReferenced_nonNull_native);
  v36 = v58[0];
  sub_18B80DBC4(v3 + v10, v55);
  v37 = v56;
  v38 = v57;
  __swift_project_boxed_opaque_existential_1Tm(v55, v56);
  v39 = sub_18BA72244(v37, v38);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  v67.origin.x = v39;
  v67.origin.y = v41;
  v67.size.width = v43;
  v67.size.height = v45;
  MaxX = CGRectGetMaxX(v67);
  v68.origin.x = v31;
  v68.origin.y = v25;
  v68.size.width = v27;
  v68.size.height = v28;
  MinX = CGRectGetMinX(v68);
  v69.origin.x = v31;
  v69.origin.y = v25;
  v69.size.width = v27;
  v69.size.height = v28;
  Width = CGRectGetWidth(v69);
  if (Width < 0.0)
  {
    goto LABEL_14;
  }

  v49 = MaxX - MinX;
  if (MaxX - MinX <= 0.0)
  {
    v49 = 0.0;
  }

  if (Width >= v49)
  {
    Width = v49;
  }

  *v58 = Width;
  sub_18BC21A68();
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v58[0] = v36;
  sub_18B7F3BB8(v55, 0x64656C6165766572, 0xED00006874646957, v50);
  *a2 = v31;
  v51 = v64;
  *(a2 + 40) = v63;
  *(a2 + 56) = v51;
  v52 = v66;
  *(a2 + 72) = v65;
  *(a2 + 88) = v52;
  v53 = v62;
  *(a2 + 8) = v61;
  v54 = v58[0];
  *(a2 + 24) = v53;
  *(a2 + 104) = v54;
}

uint64_t sub_18B814624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v5 = sub_18BC1EC08();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EBE8();
  return a4(v7);
}

void sub_18B8146B8(uint64_t a1)
{
  v2 = v1;
  if ((*(*v1 + 432))())
  {
    v5 = v4;
    v6 = (*(*v1 + 456))();
    if (v6)
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      [(*(v5 + 16))(ObjectType v5)];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      swift_unknownObjectRelease();
      v1[82] = v10;
      v1[83] = v12;
      v1[84] = v14;
      v1[85] = v16;
      v24 = v7;
      v17 = [v7 traitCollection];
      v18 = [v17 preferredContentSizeCategory];

      LOBYTE(v17) = sub_18BC21438();
      v2[648] = v17 & 1;
      v19 = *(*v2 + 848);
      v19();
      sub_18B810930(&v29);
      v25[0] = v29;
      v25[1] = v30;
      v26 = v31;
      v27 = v32;
      v28 = v33;
      sub_18B84AB9C(v25);

      (v19)(v20);
      LOBYTE(v18) = sub_18B84CBF8();

      if ((v18 & 1) == 0)
      {
        *(a1 + 56) = 0;
      }

      sub_18B816518(&v29);
      v21 = v30;

      if (v21 == 1)
      {
        sub_18B810188(a1);
      }

      MEMORY[0x1EEE9AC00](v22);
      v23[2] = a1;
      v23[3] = v2;
      sub_18B815500(sub_18B84D760, v23);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_18B814A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_18BC21848();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20[-v9 - 8];
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-v13 - 8];
  sub_18B80DBC4(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4098, &qword_18BC40470);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    v17 = (*(a3 + 80))(v14, a2, a3);
    (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    v16(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v10, v7);
    v17 = 0;
  }

  return v17 & 1;
}

id sub_18B814C7C(uint64_t a1)
{
  v3 = _s4PageVMa(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v4[10];
  v8 = sub_18BC1EC08();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  *v6 = 0;
  *&v6[v4[11]] = 0;
  v6[v4[12]] = 0;
  v6[v4[13]] = 0;
  v6[v4[14]] = 0;
  v6[v4[15]] = 1;
  *&v6[v4[16]] = xmmword_18BC42B60;
  v6[v4[17]] = 3;
  v10 = &v6[v4[18]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *&v6[v4[19]] = MEMORY[0x1E69E7CC0];
  v11 = &v6[v4[20]];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = CGRectMake;
  *(v11 + 5) = 0;
  v12 = &v6[v4[21]];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = type metadata accessor for SFTabSwitcherPageInternal(0);
  v14 = objc_allocWithZone(v13);
  sub_18B8162EC(v6, v14 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped, _s4PageVMa);
  v19.receiver = v14;
  v19.super_class = v13;
  v15 = objc_msgSendSuper2(&v19, sel_init);
  sub_18B8165D8(v6, _s4PageVMa);
  *&v1[OBJC_IVAR___SFTabSwitcherPage__internal] = v15;
  v18.receiver = v1;
  v18.super_class = SFTabSwitcherPage;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v9 + 8))(a1, v8);
  return v16;
}

void sub_18B814EEC(uint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v7 = v1[2];
  sub_18BC1E1A8();
  v7(v23, a1);

  swift_beginAccess();
  v8 = v1[4];
  if (*(v8 + 16))
  {
    sub_18BC1E3F8();
    v9 = sub_18B80CA2C(a1);
    if (v10)
    {
      v11 = *(v8 + 56) + 16 * v9;
      v12 = *(v11 + 8);
      v13 = *v11;

      v14 = v2[15];
      v15 = v2[16];
      __swift_project_boxed_opaque_existential_1Tm(v2 + 12, v14);
      v16 = v13;
      LOBYTE(v14) = sub_18B86EA9C(v16, v23, v14, v15);

      if ((v14 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v23);

        return;
      }

      sub_18B7EC6E4(a1, v6, _s4ItemVMa_0);
      swift_beginAccess();
      sub_18BAD2CF8(0, 0, v6);
      swift_endAccess();
      v17 = v2[15];
      v18 = v2[16];
      __swift_project_boxed_opaque_existential_1Tm(v2 + 12, v17);
      v19 = v16;
      sub_18B86ED4C(v19, v23, v17, v18);

      [v19 setHidden_];
      [v19 _removeAllRetargetableAnimations_];
      swift_beginAccess();
      v20 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v2[17];
      v2[17] = 0x8000000000000000;
      sub_18B80C598(v20, v12, a1, isUniquelyReferenced_nonNull_native);
      v2[17] = v22;
      swift_endAccess();
    }

    else
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

uint64_t sub_18B815160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18B815248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B8152B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B815318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B815380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B8153E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B815440(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B8154A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_18B815500(void (*a1)(uint64_t *), uint64_t a2)
{
  v108 = a2;
  v107 = a1;
  v3 = *(*v2 + 608);
  v91 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v102 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v90 - v6;
  v8 = *(v7 + 600);
  v103 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v90 - v12;
  v14 = *(v13 + 616);
  v15 = *(v13 + 624);
  v16 = sub_18B8103B0();
  *&v116 = v8;
  *(&v116 + 1) = v3;
  *&v117 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v117 + 1) = v14;
  v110 = v14;
  v118 = v15;
  v119 = v16;
  v17 = type metadata accessor for SFFluidCollectionView.Element(0, &v116);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v90 - v22);
  sub_18B816518(&v116);
  v24 = BYTE8(v116);

  if (v24 == 1)
  {
    v99 = v2;
    sub_18B810930(&v116);
    v112 = v116;
    v113 = v117;
    v114 = v118;
    v115 = v119;
    swift_storeEnumTagMultiPayload();
    v105 = v8;
    v111[0] = v8;
    v111[1] = v3;
    v101 = v3;
    v111[2] = &type metadata for SFFluidTabOverviewSupplementary;
    v111[3] = v110;
    v111[4] = v15;
    v111[5] = v16;
    v98 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, v111);
    v25 = SFFluidCollectionView.DataSource.Snapshot.supplementaries(for:)(v23, v98);
    v109 = *(v18 + 8);
    v110 = v18 + 8;
    v109(v23, v17);

    v26 = 0;
    v27 = 1 << *(v25 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v25 + 56);
    v30 = (v27 + 63) >> 6;
    while (v29)
    {
      v31 = v26;
LABEL_10:
      v32 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      sub_18B833990(*(v25 + 48) + 40 * (v32 | (v31 << 6)), &v116);
      swift_getTupleTypeMetadata2();
      v33 = swift_allocBox();
      v34 = v116;
      v35 = v117;
      *(v36 + 32) = v118;
      *v36 = v34;
      *(v36 + 16) = v35;
      swift_storeEnumTagMultiPayload();
      *v23 = v33;
      swift_storeEnumTagMultiPayload();
      v107(v23);
      v109(v23, v17);
    }

    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v30)
      {

        sub_18B810930(&v116);
        v47 = v118;
        v48 = v119;
        sub_18BC1E1A8();

        v49 = v48;
        v96 = *(v48 + 16);
        if (v96)
        {
          v90 = v47;
          v50 = 0;
          v95 = (v103 + 32);
          v104 = (v103 + 16);
          v93 = (v103 + 8);
          v51 = v105;
          v52 = v106;
          v94 = v49;
LABEL_25:
          v53 = v97;
          sub_18BC21C08();
          v100 = (v50 + 1);
          (*v95)(v52, v53, v51);
          sub_18B810930(&v116);
          v112 = v116;
          v113 = v117;
          v114 = v118;
          v115 = v119;
          v103 = *v104;
          (v103)(v23, v52, v51);
          swift_storeEnumTagMultiPayload();
          v54 = SFFluidCollectionView.DataSource.Snapshot.supplementaries(for:)(v23, v98);
          v109(v23, v17);

          v55 = 0;
          v56 = 1 << *(v54 + 32);
          if (v56 < 64)
          {
            v57 = ~(-1 << v56);
          }

          else
          {
            v57 = -1;
          }

          v58 = v57 & *(v54 + 56);
          v59 = (v56 + 63) >> 6;
          while (v58)
          {
            v60 = v55;
LABEL_34:
            v61 = __clz(__rbit64(v58));
            v58 &= v58 - 1;
            sub_18B833990(*(v54 + 48) + 40 * (v61 | (v60 << 6)), &v116);
            TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
            v63 = swift_allocBox();
            v64 = *(TupleTypeMetadata2 + 48);
            v65 = v116;
            v66 = v117;
            *(v67 + 32) = v118;
            *v67 = v65;
            *(v67 + 16) = v66;
            (v103)(v67 + v64, v106, v105);
            swift_storeEnumTagMultiPayload();
            *v23 = v63;
            swift_storeEnumTagMultiPayload();
            v107(v23);
            v109(v23, v17);
          }

          while (1)
          {
            v60 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            if (v60 >= v59)
            {
              v52 = v106;
              v51 = v105;
              (*v93)(v106, v105);

              v50 = v100;
              if (v100 == v96)
              {
                goto LABEL_37;
              }

              goto LABEL_25;
            }

            v58 = *(v54 + 56 + 8 * v60);
            ++v55;
            if (v58)
            {
              v55 = v60;
              goto LABEL_34;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_37:

          sub_18B810930(&v116);
          v68 = *(&v116 + 1);
          v69 = v117;
          sub_18BC1E1A8();

          v103 = *(v69 + 2);
          if (!v103)
          {
LABEL_51:

            goto LABEL_52;
          }

          v95 = v68;
          v70 = 0;
          v100 = (v91 + 32);
          v106 = (v91 + 16);
          v96 = (v91 + 8);
          v71 = v101;
          v72 = v102;
          v97 = v69;
LABEL_40:
          v73 = v92;
          sub_18BC21C08();
          v104 = (v70 + 1);
          (*v100)(v72, v73, v71);
          v74 = *v106;
          (*v106)(v23, v72, v71);
          swift_storeEnumTagMultiPayload();
          v107(v23);
          v75 = v109;
          v109(v23, v17);
          sub_18B810930(&v116);
          v112 = v116;
          v113 = v117;
          v114 = v118;
          v115 = v119;
          v105 = v74;
          v74(v23, v72, v71);
          swift_storeEnumTagMultiPayload();
          v76 = SFFluidCollectionView.DataSource.Snapshot.supplementaries(for:)(v23, v98);
          v75(v23, v17);

          v77 = 0;
          v78 = 1 << *(v76 + 32);
          if (v78 < 64)
          {
            v79 = ~(-1 << v78);
          }

          else
          {
            v79 = -1;
          }

          v80 = v79 & *(v76 + 56);
          v81 = (v78 + 63) >> 6;
          while (v80)
          {
            v82 = v77;
LABEL_49:
            v83 = __clz(__rbit64(v80));
            v80 &= v80 - 1;
            sub_18B833990(*(v76 + 48) + 40 * (v83 | (v82 << 6)), &v116);
            v84 = swift_getTupleTypeMetadata2();
            v85 = swift_allocBox();
            v86 = *(v84 + 48);
            v87 = v116;
            v88 = v117;
            *(v89 + 32) = v118;
            *v89 = v87;
            *(v89 + 16) = v88;
            v105(v89 + v86, v102, v101);
            swift_storeEnumTagMultiPayload();
            *v23 = v85;
            swift_storeEnumTagMultiPayload();
            v107(v23);
            v109(v23, v17);
          }

          while (1)
          {
            v82 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            if (v82 >= v81)
            {
              v72 = v102;
              v71 = v101;
              (*v96)(v102, v101);

              v70 = v104;
              if (v104 == v103)
              {
                goto LABEL_51;
              }

              goto LABEL_40;
            }

            v80 = *(v76 + 56 + 8 * v82);
            ++v77;
            if (v80)
            {
              v77 = v82;
              goto LABEL_49;
            }
          }
        }

        __break(1u);
        break;
      }

      v29 = *(v25 + 56 + 8 * v31);
      ++v26;
      if (v29)
      {
        v26 = v31;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    sub_18B816518(&v116);
    v37 = 0;
    v38 = v116;
    v40 = v116 + 56;
    v39 = *(v116 + 56);
    v41 = 1 << *(v116 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & v39;
    v44 = (v41 + 63) >> 6;
    v109 = (v18 + 16);
    v110 = v18;
    if ((v42 & v39) != 0)
    {
      do
      {
        v45 = v37;
LABEL_20:
        v46 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        (*(v18 + 16))(v20, *(v38 + 48) + *(v18 + 72) * (v46 | (v45 << 6)), v17);
        v107(v20);
        (*(v18 + 8))(v20, v17);
      }

      while (v43);
    }

    while (1)
    {
      v45 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v45 >= v44)
      {
LABEL_52:

        return;
      }

      v43 = *(v40 + 8 * v45);
      ++v37;
      if (v43)
      {
        v37 = v45;
        goto LABEL_20;
      }
    }
  }

  __break(1u);
}

uint64_t sub_18B816284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B8162EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B816354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v9 = sub_18BC1ED38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a5;
  sub_18BBC84C8(v12);
  if (sub_18BC1ED08())
  {
    return (*(v10 + 8))(v12, v9);
  }

  sub_18B81D298(v12, v19);
  v15 = v20;
  v16 = v21;
  v17 = __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  sub_18B80E04C(a2, a3, v17, v13, a1, v15, v16);
  (*(v10 + 8))(v12, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

uint64_t sub_18B8164C4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_18B816518@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v1 + 73);
  v5 = *(v1 + 74);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  *(a1 + 10) = v5;
  return sub_18BC1E3F8();
}

uint64_t sub_18B816578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B8165D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B816638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_18B8166B4(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v11 = _s14ScrollPositionOMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&a3[*a4];
  v15 = *a5;
  swift_beginAccess();
  sub_18B8162EC(v14 + v15, v13, a6);
  swift_storeEnumTagMultiPayload();
  v16 = objc_allocWithZone(SFTabSwitcherScrollPosition);
  v17 = a3;
  result = sub_18B8185BC(v13);
  if (result)
  {
    v19 = result;

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SFFluidCollectionView.DataSource.Snapshot.supplementaries(for:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  v7 = *(a2 + 32);
  v8[0] = *(a2 + 16);
  v8[1] = v7;
  v9 = v2;
  v10 = v3;
  type metadata accessor for SFFluidCollectionView.Element(0, v8);
  sub_18BC210E8();
  swift_getWitnessTable();
  sub_18BC20A28();
  result = *&v8[0];
  if (!*&v8[0])
  {
    v5 = sub_18BC20DE8();
    if (sub_18BC20E28())
    {
      v6 = sub_18BB32DD8(v5, v7, v3);

      return v6;
    }

    else
    {

      return MEMORY[0x1E69E7CD0];
    }
  }

  return result;
}

uint64_t sub_18B8168DC(uint64_t a1, uint64_t a2, char *a3, char *a4, void (*a5)(char *, uint64_t, __n128))
{
  v122 = a5;
  v118 = a4;
  v127 = a2;
  v123 = sub_18BC1ED38();
  v125 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v114 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v109 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v110 = &v109 - v12;
  v111 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v124 = &v109 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB778, &qword_18BC53DB8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v109 - v21;
  v120 = a3;
  v23 = *&a3[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
  aBlock[0] = *&a4[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
  v113 = v23;
  *&v128 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB780, &qword_18BC53DC0);
  sub_18B7B0B08(&qword_1EA9DB788, &qword_1EA9DB780, &qword_18BC53DC0, MEMORY[0x1E69E6310]);
  sub_18B82BA44(&qword_1EA9DB790, _s4ItemVMa_0, &unk_18BC489C8);
  sub_18BC20AA8();
  sub_18B82BA44(&qword_1EA9DBEA0, _s4ItemVMa_0, &unk_18BC489F0);
  sub_18BC21DF8();
  v24 = *(v17 + 8);
  v116 = v17 + 8;
  v115 = v24;
  v24(v19, v16);
  v25 = *(v17 + 16);
  v121 = v22;
  v25(v19, v22, v16);
  v26 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v27 = swift_allocObject();
  v28 = v119;
  *(v27 + 2) = v119;
  *(v27 + 3) = a1;
  v126 = a1;
  *(v27 + 4) = v127;
  v29 = *(v17 + 32);
  v117 = v16;
  v29(&v27[v26], v19, v16);
  v30 = v118;
  *&v27[(v18 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v118;
  v31 = objc_opt_self();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_18B81CF2C;
  *(v32 + 24) = v27;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_18B9D53AC;
  *(v33 + 24) = v32;
  v132 = sub_18B9D53B0;
  v133 = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  v131 = &block_descriptor_250;
  v34 = _Block_copy(aBlock);
  v119 = v28;
  sub_18BC1E3F8();
  v35 = v30;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v31 performWithoutAnimation_];
  _Block_release(v34);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_22:
    isEscapingClosureAtFileLocation = sub_18B9B5814(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
    *(v35 + 3) = isEscapingClosureAtFileLocation;
    goto LABEL_4;
  }

  v118 = v35;
  v37 = v124;
  sub_18BBC8CA8(v124);
  sub_18B7CA054(v122, aBlock, &unk_1EA9D5060, &unk_18BC41870);
  if (!v131)
  {
    sub_18B988BAC(aBlock, &unk_1EA9D5060, &unk_18BC41870);
    v57 = v125;
    v58 = v126;
    v59 = *(v125 + 16);
    v60 = v111 + 7;
    v56 = v123;
    goto LABEL_8;
  }

  v38 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v131);
  v39 = v125;
  v40 = v110;
  v41 = v123;
  v109 = *(v125 + 16);
  v109(v110, v37, v123);
  v42 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v111 += 7;
  v43 = (v111 + v42) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v119;
  v46 = v126;
  v47 = v127;
  *(v44 + 2) = v119;
  *(v44 + 3) = v46;
  *(v44 + 4) = v47;
  (*(v39 + 32))(&v44[v42], v40, v41);
  v48 = v120;
  *&v44[v43] = v120;
  v35 = *v38;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_18BBCEE48;
  *(v32 + 24) = v44;
  swift_beginAccess();
  isEscapingClosureAtFileLocation = *(v35 + 3);
  v49 = v45;
  sub_18BC1E3F8();
  v50 = v48;
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v35 + 3) = isEscapingClosureAtFileLocation;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v53 = *(isEscapingClosureAtFileLocation + 16);
  v52 = *(isEscapingClosureAtFileLocation + 24);
  v54 = v126;
  if (v53 >= v52 >> 1)
  {
    isEscapingClosureAtFileLocation = sub_18B9B5814((v52 > 1), v53 + 1, 1, isEscapingClosureAtFileLocation);
  }

  *(isEscapingClosureAtFileLocation + 16) = v53 + 1;
  v55 = isEscapingClosureAtFileLocation + 16 * v53;
  *(v55 + 32) = sub_18B9D53B0;
  *(v55 + 40) = v32;
  *(v35 + 3) = isEscapingClosureAtFileLocation;
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v56 = v123;
  v37 = v124;
  v57 = v125;
  v58 = v54;
  v59 = v109;
  v60 = v111;
LABEL_8:
  v61 = v112;
  v59(v112, v37, v56);
  v62 = v114;
  v59(v114, v61, v56);
  v63 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v64 = (v60 + v63) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v66 = v119;
  *(v65 + 16) = v119;
  (*(v57 + 32))(v65 + v63, v61, v56);
  v67 = v113;
  *(v65 + v64) = v113;
  v68 = (v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8));
  v69 = v127;
  *v68 = v58;
  v68[1] = v69;
  sub_18B7CA054(v122, &v128, &unk_1EA9D5060, &unk_18BC41870);
  if (!v129)
  {
    v107 = v66;
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18B988BAC(&v128, &unk_1EA9D5060, &unk_18BC41870);
    sub_18B819BBC(v62, v67, v58, v69);

    v108 = *(v57 + 8);
    v108(v62, v56);
    v108(v124, v56);
    return v115(v121, v117);
  }

  v70 = v65;
  v72 = *(v57 + 8);
  v71 = v57 + 8;
  v73 = v66;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v122 = v72;
  (v72)(v62, v56);
  sub_18B7C3FA4(&v128, aBlock);
  sub_18BAC5ECC();
  v75 = v74;
  sub_18BAC5ECC();
  v77 = v76;
  v78 = sub_18BC1E3F8();
  sub_18BBF1CEC(v78, v75);
  v80 = v79;
  v81 = *((*MEMORY[0x1E69E7D40] & *v73) + 0x98);
  swift_beginAccess();
  v82 = *(v73 + v81);
  if (!*(v82 + 16))
  {
    goto LABEL_24;
  }

  sub_18BC1E3F8();
  v83 = v126;
  v84 = sub_18B7C4104(v126, v69);
  if ((v85 & 1) == 0)
  {

LABEL_24:
    result = sub_18BC21CF8();
    __break(1u);
    return result;
  }

  v86 = *(*(v82 + 56) + 8 * v84);
  sub_18BC1E1A8();

  swift_beginAccess();
  sub_18BBF03E0(v80);
  swift_endAccess();
  v87 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v131);
  v88 = swift_allocObject();
  v88[2] = v86;
  v88[3] = v80;
  v88[4] = v73;
  v88[5] = v83;
  v88[6] = v69;
  v89 = *v87;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_18BBCEE30;
  *(v90 + 24) = v88;
  swift_beginAccess();
  v91 = *(v89 + 32);
  v73;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  v92 = swift_isUniquelyReferenced_nonNull_native();
  *(v89 + 32) = v91;
  v125 = v71;
  if ((v92 & 1) == 0)
  {
    v91 = sub_18B9B5814(0, v91[2] + 1, 1, v91);
    *(v89 + 32) = v91;
  }

  v94 = v91[2];
  v93 = v91[3];
  if (v94 >= v93 >> 1)
  {
    v91 = sub_18B9B5814((v93 > 1), v94 + 1, 1, v91);
  }

  v91[2] = v94 + 1;
  v95 = &v91[2 * v94];
  v95[4] = sub_18B9D53B0;
  v95[5] = v90;
  *(v89 + 32) = v91;
  swift_endAccess();

  sub_18BBE9088(v126, v127, v77, v120);

  v96 = *__swift_project_boxed_opaque_existential_1Tm(aBlock, v131);
  v97 = swift_allocObject();
  *(v97 + 16) = sub_18BBCEE18;
  *(v97 + 24) = v70;
  swift_beginAccess();
  v98 = *(v96 + 32);
  sub_18BC1E1A8();
  v99 = swift_isUniquelyReferenced_nonNull_native();
  *(v96 + 32) = v98;
  if ((v99 & 1) == 0)
  {
    v98 = sub_18B9B5814(0, v98[2] + 1, 1, v98);
    *(v96 + 32) = v98;
  }

  v100 = v123;
  v101 = v117;
  v102 = v121;
  v104 = v98[2];
  v103 = v98[3];
  if (v104 >= v103 >> 1)
  {
    v98 = sub_18B9B5814((v103 > 1), v104 + 1, 1, v98);
  }

  v98[2] = v104 + 1;
  v105 = &v98[2 * v104];
  v105[4] = sub_18B9D53B0;
  v105[5] = v97;
  *(v96 + 32) = v98;
  swift_endAccess();

  (v122)(v124, v100);
  v115(v102, v101);
  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_18B817604()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB778, &qword_18BC53DB8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B8176F0()
{
  v1 = sub_18BC1ED38();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_18B8177EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v91 = a4;
  v9 = _s7ContentVMa_4(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18B7C2E68();
  [v12 bounds];
  v14 = v13;
  v16 = v15;

  if (v14 == 0.0 && v16 == 0.0)
  {
    sub_18BBC32E4();
  }

  v17 = sub_18B7EBEFC();
  v103 = v17;
  v18 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1C0))(&v102, a1);
  v19 = sub_18B7C2E68();
  [v19 contentSize];
  v21 = v20;
  v23 = v22;

  if (v21 <= 0.0)
  {
    v21 = 0.0;
  }

  if (v23 <= 0.0)
  {
    v23 = 0.0;
  }

  v24 = *((*v18 & *v5) + 0x80);
  [*(v5 + v24) contentSize];
  if (v26 != v21 || v25 != v23)
  {
    [*(v5 + v24) setContentSize_];
  }

  v28 = *(v5 + v24);
  [v28 adjustedContentInset];
  v90 = v29;
  v89 = v30;
  v88 = v31;
  v87 = v32;
  [v28 bounds];
  v86 = v33;
  v85 = v34;
  v84 = v35;
  v83 = v36;
  sub_18B7E0E4C();
  v82 = v37;
  v81 = v38;
  v40 = v39;
  v42 = v41;
  [v28 contentSize];
  v44 = v43;
  v46 = v45;
  [v28 frame];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = [v28 isTracking];

  v56 = v102;
  v57 = v102 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
  v58 = v89;
  *v57 = v90;
  *(v57 + 8) = v58;
  v59 = v87;
  *(v57 + 16) = v88;
  *(v57 + 24) = v59;
  v60 = v85;
  *(v57 + 32) = v86;
  *(v57 + 40) = v60;
  v61 = v83;
  *(v57 + 48) = v84;
  *(v57 + 56) = v61;
  v62 = v81;
  *(v57 + 64) = v82;
  *(v57 + 72) = v62;
  *(v57 + 80) = v40;
  *(v57 + 88) = v42;
  *(v57 + 96) = v44;
  *(v57 + 104) = v46;
  *(v57 + 112) = v48;
  *(v57 + 120) = v50;
  *(v57 + 128) = v52;
  *(v57 + 136) = v54;
  *(v57 + 144) = v55;
  sub_18B7CA054(a2, &v94, &unk_1EA9D53A0, &qword_18BC4BFB0);
  if (v94)
  {
    v98 = v94;
    v99 = v95;
    v100 = v96;
    v101 = v97;
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
  }

  sub_18B7CA054(&v98, &v94, &unk_1EA9D53A0, &qword_18BC4BFB0);
  if (v94)
  {
    sub_18B988BAC(&v94, &unk_1EA9D53A0, &qword_18BC4BFB0);
  }

  (*((*v18 & *v5) + 0x228))(&v103, &v102, &v98, a3);
  v63 = *((*v18 & *v5) + 0x68);
  swift_beginAccess();
  *(v5 + v63) = v56;
  sub_18BC1E1A8();

  if (v91)
  {
    v64 = *(v5 + *((*v18 & *v5) + 0x70));
    sub_18BBCF730(v17 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v11, _s7ContentVMa_4);
    sub_18BC1E1A8();
    v64(v11, a1, a3);

    sub_18B81D138(v11, _s7ContentVMa_4);
  }

  v65 = *(v56 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_itemTypes);
  v66 = *(v65 + 16);
  if (v66)
  {
    sub_18BC1E3F8();
    v67 = (v65 + 40);
    do
    {
      v68 = *(v67 - 1);
      v69 = *v67;
      sub_18BC1E3F8();
      sub_18B818824(v68, v69, v17, v56, a3);

      v67 += 2;
      --v66;
    }

    while (v66);
  }

  [v5 setNeedsLayout];
  v70 = swift_allocObject();
  *(v70 + 16) = v5;
  sub_18B7CA054(a3, &v92, &unk_1EA9D5060, &unk_18BC41870);
  if (v93)
  {
    sub_18B7C3FA4(&v92, &v94);
    v71 = *__swift_project_boxed_opaque_existential_1Tm(&v94, *(&v95 + 1));
    v72 = swift_allocObject();
    *(v72 + 16) = sub_18B848F4C;
    *(v72 + 24) = v70;
    swift_beginAccess();
    v73 = *(v71 + 24);
    v74 = v5;
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v71 + 24) = v73;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v73 = sub_18B9B5814(0, v73[2] + 1, 1, v73);
      *(v71 + 24) = v73;
    }

    v77 = v73[2];
    v76 = v73[3];
    if (v77 >= v76 >> 1)
    {
      v73 = sub_18B9B5814((v76 > 1), v77 + 1, 1, v73);
    }

    v73[2] = v77 + 1;
    v78 = &v73[2 * v77];
    v78[4] = sub_18B9D53B0;
    v78[5] = v72;
    *(v71 + 24) = v73;
    swift_endAccess();

    sub_18B988BAC(&v98, &unk_1EA9D53A0, &qword_18BC4BFB0);
    __swift_destroy_boxed_opaque_existential_1Tm(&v94);
  }

  else
  {
    v79 = v5;
    sub_18B988BAC(&v92, &unk_1EA9D5060, &unk_18BC41870);
    [v79 layoutIfNeeded];

    sub_18B988BAC(&v98, &unk_1EA9D53A0, &qword_18BC4BFB0);
  }
}

uint64_t sub_18B817F1C()
{

  return swift_deallocObject();
}

uint64_t sub_18B817F54()
{

  return swift_deallocObject();
}

uint64_t sub_18B817F94(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 1320);
  v6 = v4[166];
  v7 = v4[167];
  v8 = v4[168];
  v9 = sub_18B8103B0();
  v48 = v5;
  *&v54 = v5;
  *(&v54 + 1) = v6;
  *&v55 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v55 + 1) = v7;
  v47 = v7;
  v46 = v8;
  *v56 = v8;
  *&v56[8] = v9;
  v40 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, &v54);
  v10 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v39 = sub_18BC21848();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v44 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  sub_18B8146B8(a1);
  v21 = *(*v2 + 1384);
  v43 = *v2 + 1384;
  v42 = v21;
  v21();
  v41 = *(v17 + 48);
  v22 = v41(v16, 1, v6);
  v45 = v9;
  if (v22 == 1)
  {
    v23 = v38;
    v24 = v39;
    (*(v38 + 8))(v16, v39);
    (*(*(v40 - 8) + 56))(v12, 1, 1);
    sub_18B81A3DC(v12);
  }

  else
  {
    (*(v17 + 32))(v20, v16, v6);
    v25 = a1[1];
    v52[0] = *a1;
    v52[1] = v25;
    v27 = *a1;
    v26 = a1[1];
    v53[0] = a1[2];
    *(v53 + 9) = *(a1 + 41);
    v49 = v27;
    v50 = v26;
    v51[0] = a1[2];
    *(v51 + 9) = *(a1 + 41);
    *&v54 = v48;
    *(&v54 + 1) = v6;
    *&v55 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v55 + 1) = v47;
    *v56 = v46;
    *&v56[8] = v9;
    v28 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v54);
    v29 = *(v28 - 1);
    (*(v29 + 16))(&v54, v52, v28);
    SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v20, v28, v12);
    v54 = v49;
    v55 = v50;
    *v56 = v51[0];
    *&v56[9] = *(v51 + 9);
    (*(v29 + 8))(&v54, v28);
    (*(*(v40 - 8) + 56))(v12, 0, 1);
    sub_18B81A3DC(v12);
    (*(v17 + 8))(v20, v6);
    v24 = v39;
    v23 = v38;
  }

  sub_18B816518(&v54);
  v30 = BYTE8(v54);

  if (v30)
  {
    v31 = 0;
  }

  else
  {
    sub_18B816518(&v54);
    v31 = v54;
  }

  *&v54 = v48;
  *(&v54 + 1) = v6;
  *&v55 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v55 + 1) = v47;
  *v56 = v46;
  *&v56[8] = v45;
  v32 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v54);
  SFFluidCollectionView.LayoutSnapshot.applyTransform(to:_:)(v31, sub_18B850BFC, v2, v32);

  v34 = v44;
  (v42)(v33);
  v35 = v41(v34, 1, v6) == 1;
  result = (*(v23 + 8))(v34, v24);
  *(a1 + 56) = v35;
  return result;
}

id sub_18B8185BC(uint64_t a1)
{
  v3 = _s14ScrollPositionOMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = sub_18B819580(a1, v5);
  sub_18B8165D8(v5, _s14ScrollPositionOMa);
  if (v6)
  {
    v7 = sub_18B8165D8(a1, _s14ScrollPositionOMa);
    type metadata accessor for SFTabSwitcherScrollPosition(v7);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_18B8162EC(a1, v5, _s14ScrollPositionOMa);
    v9 = type metadata accessor for SFTabSwitcherScrollPositionInternal(0);
    v10 = objc_allocWithZone(v9);
    sub_18B8162EC(v5, v10 + OBJC_IVAR____TtC12MobileSafari35SFTabSwitcherScrollPositionInternal_wrapped, _s14ScrollPositionOMa);
    v14.receiver = v10;
    v14.super_class = v9;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    sub_18B8165D8(v5, _s14ScrollPositionOMa);
    *&v1[OBJC_IVAR___SFTabSwitcherScrollPosition__internal] = v11;
    v13.receiver = v1;
    v13.super_class = SFTabSwitcherScrollPosition;
    v12 = objc_msgSendSuper2(&v13, sel_init);
    sub_18B8165D8(a1, _s14ScrollPositionOMa);
    return v12;
  }
}

uint64_t sub_18B818778@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 1352);
  swift_beginAccess();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_18B818824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v114 = a5;
  v112 = a4;
  v118 = a1;
  v119 = a2;
  v115 = sub_18BC1ED38();
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v107 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v101 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v101 - v13;
  v104 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v101 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7A8, &qword_18BC53DD8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v101 - v22;
  v113 = a3;
  v24 = *(a3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content);
  aBlock[0] = *(a4 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content);
  v106 = v24;
  *&v120 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7B0, &unk_18BC53DE0);
  sub_18B7B0B08(&qword_1EA9DB7B8, &qword_1EA9DB7B0, &unk_18BC53DE0, MEMORY[0x1E69E6310]);
  sub_18B82BA44(&unk_1EA9DB7C0, _s4ItemVMa_4, &unk_18BC461F0);
  sub_18BC20AA8();
  sub_18B82BA44(&qword_1EA9D48A0, _s4ItemVMa_4, &unk_18BC46218);
  sub_18BC21DF8();
  v25 = *(v18 + 8);
  v109 = v18 + 8;
  v108 = v25;
  v25(v20, v17);
  (*(v18 + 16))(v20, v23, v17);
  v26 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v27 = swift_allocObject();
  v28 = v118;
  v29 = v119;
  *(v27 + 2) = v6;
  *(v27 + 3) = v28;
  *(v27 + 4) = v29;
  v30 = *(v18 + 32);
  v110 = v17;
  v30(&v27[v26], v20, v17);
  *&v27[(v19 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v112;
  v111 = objc_opt_self();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_18BBCF34C;
  *(v31 + 24) = v27;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_18B9D53AC;
  *(v32 + 24) = v31;
  v124 = sub_18B9D53B0;
  v125 = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  v123 = &block_descriptor_292_0;
  v33 = _Block_copy(aBlock);
  v34 = v6;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v111 performWithoutAnimation_];
  _Block_release(v33);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_22:
    v6 = sub_18B9B5814(0, v6[2] + 1, 1, v6);
    *(isEscapingClosureAtFileLocation + 24) = v6;
    goto LABEL_4;
  }

  v111 = v34;
  v36 = v116;
  v103 = v23;
  sub_18BBC8AB0(v116);
  sub_18B7CA054(v114, aBlock, &unk_1EA9D5060, &unk_18BC41870);
  if (!v123)
  {
    sub_18B988BAC(aBlock, &unk_1EA9D5060, &unk_18BC41870);
    v53 = v117;
    v54 = *(v117 + 16);
    v55 = v104 + 7;
    v52 = v115;
    goto LABEL_8;
  }

  v37 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v123);
  v38 = v117;
  v39 = v102;
  v40 = v115;
  v101 = *(v117 + 16);
  v101(v102, v36, v115);
  v41 = (*(v38 + 80) + 40) & ~*(v38 + 80);
  v104 += 7;
  v42 = (v104 + v41) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v111;
  v45 = v118;
  v46 = v119;
  *(v43 + 2) = v111;
  *(v43 + 3) = v45;
  *(v43 + 4) = v46;
  (*(v38 + 32))(&v43[v41], v39, v40);
  *&v43[v42] = v113;
  isEscapingClosureAtFileLocation = *v37;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_18BBCF67C;
  *(v31 + 24) = v43;
  swift_beginAccess();
  v6 = *(isEscapingClosureAtFileLocation + 24);
  v47 = v44;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(isEscapingClosureAtFileLocation + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v50 = v6[2];
  v49 = v6[3];
  if (v50 >= v49 >> 1)
  {
    v6 = sub_18B9B5814((v49 > 1), v50 + 1, 1, v6);
  }

  v6[2] = v50 + 1;
  v51 = &v6[2 * v50];
  v51[4] = sub_18B9D53B0;
  v51[5] = v31;
  *(isEscapingClosureAtFileLocation + 24) = v6;
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v52 = v115;
  v36 = v116;
  v53 = v117;
  v54 = v101;
  v55 = v104;
LABEL_8:
  v56 = v105;
  v54(v105, v36, v52);
  v57 = v107;
  v54(v107, v56, v52);
  v58 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v59 = (v55 + v58) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v111;
  *(v60 + 16) = v111;
  (*(v53 + 32))(v60 + v58, v56, v52);
  v62 = v106;
  *(v60 + v59) = v106;
  v63 = (v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
  v65 = v118;
  v64 = v119;
  *v63 = v118;
  v63[1] = v64;
  sub_18B7CA054(v114, &v120, &unk_1EA9D5060, &unk_18BC41870);
  if (!v121)
  {
    v99 = v61;
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18B988BAC(&v120, &unk_1EA9D5060, &unk_18BC41870);
    sub_18BBC73D4(v57, v62, v65, v64);

    v100 = *(v53 + 8);
    v100(v57, v52);
    v100(v116, v52);
    return v108(v103, v110);
  }

  v114 = v60;
  v67 = *(v53 + 8);
  v66 = v53 + 8;
  v68 = v61;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v111 = v67;
  (v67)(v57, v52);
  sub_18B7C3FA4(&v120, aBlock);
  v69 = sub_18B9F2E8C();
  v70 = sub_18B9F2E8C();
  v71 = sub_18BC1E3F8();
  sub_18BBF1AEC(v71, v69);
  v73 = v72;
  v74 = *((*MEMORY[0x1E69E7D40] & *v68) + 0x98);
  swift_beginAccess();
  v75 = *(v68 + v74);
  if (!*(v75 + 16))
  {
    goto LABEL_24;
  }

  v117 = v66;
  sub_18BC1E3F8();
  v76 = sub_18B7C4104(v65, v64);
  v77 = v114;
  if ((v78 & 1) == 0)
  {

LABEL_24:
    result = sub_18BC21CF8();
    __break(1u);
    return result;
  }

  v79 = *(*(v75 + 56) + 8 * v76);
  sub_18BC1E1A8();

  swift_beginAccess();
  sub_18BBEFB58(v73);
  swift_endAccess();
  v80 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v123);
  v81 = swift_allocObject();
  v81[2] = v79;
  v81[3] = v73;
  v81[4] = v68;
  v81[5] = v65;
  v81[6] = v64;
  v82 = *v80;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_18BBCF56C;
  *(v83 + 24) = v81;
  swift_beginAccess();
  v84 = *(v82 + 32);
  v68;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  v85 = swift_isUniquelyReferenced_nonNull_native();
  *(v82 + 32) = v84;
  if ((v85 & 1) == 0)
  {
    v84 = sub_18B9B5814(0, v84[2] + 1, 1, v84);
    *(v82 + 32) = v84;
  }

  v87 = v84[2];
  v86 = v84[3];
  if (v87 >= v86 >> 1)
  {
    v84 = sub_18B9B5814((v86 > 1), v87 + 1, 1, v84);
  }

  v84[2] = v87 + 1;
  v88 = &v84[2 * v87];
  v88[4] = sub_18B9D53B0;
  v88[5] = v83;
  *(v82 + 32) = v84;
  swift_endAccess();

  sub_18BBE8890(v118, v119, v70, v113);

  v89 = *__swift_project_boxed_opaque_existential_1Tm(aBlock, v123);
  v90 = swift_allocObject();
  *(v90 + 16) = sub_18BBCF504;
  *(v90 + 24) = v77;
  swift_beginAccess();
  v91 = *(v89 + 32);
  sub_18BC1E1A8();
  v92 = swift_isUniquelyReferenced_nonNull_native();
  *(v89 + 32) = v91;
  if ((v92 & 1) == 0)
  {
    v91 = sub_18B9B5814(0, v91[2] + 1, 1, v91);
    *(v89 + 32) = v91;
  }

  v93 = v110;
  v94 = v103;
  v96 = v91[2];
  v95 = v91[3];
  if (v96 >= v95 >> 1)
  {
    v91 = sub_18B9B5814((v95 > 1), v96 + 1, 1, v91);
  }

  v91[2] = v96 + 1;
  v97 = &v91[2 * v96];
  v97[4] = sub_18B9D53B0;
  v97[5] = v90;
  *(v89 + 32) = v91;
  swift_endAccess();

  (v111)(v116, v115);
  v108(v94, v93);
  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_18B819580(uint64_t a1, uint64_t a2)
{
  v28 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s14ScrollPositionOMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBF78, &unk_18BC55FA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  v18 = *(v17 + 56);
  sub_18B81A374(a1, &v27 - v15, _s14ScrollPositionOMa);
  sub_18B81A374(a2, &v16[v18], _s14ScrollPositionOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_18B81A374(v16, v13, _s14ScrollPositionOMa);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_18B81FAE0(&v16[v18], v7, _s4ItemVMa);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7CC9CC(v7, _s4ItemVMa);
      v22 = v13;
      v23 = _s4ItemVMa;
      goto LABEL_13;
    }

    v24 = _s4ItemVMa;
    v25 = v13;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_18B81A374(v16, v10, _s14ScrollPositionOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v27;
      sub_18B81FAE0(&v16[v18], v27, _s4PageVMa);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7CC9CC(v20, _s4PageVMa);
      v22 = v10;
      v23 = _s4PageVMa;
LABEL_13:
      sub_18B7CC9CC(v22, v23);
      sub_18B7CC9CC(v16, _s14ScrollPositionOMa);
      return updated & 1;
    }

    v24 = _s4PageVMa;
    v25 = v10;
LABEL_10:
    sub_18B7CC9CC(v25, v24);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_11:
    sub_18B81A4E8(v16);
    updated = 0;
    return updated & 1;
  }

  sub_18B7CC9CC(v16, _s14ScrollPositionOMa);
  updated = 1;
  return updated & 1;
}

uint64_t sub_18B819950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

int *sub_18B819A10(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v4)
  {
    v4 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (v4 <= 8)
  {
    v4 = 8;
  }

  v5 = (((((((((((((((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if ((((((((((((((((v4 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    v9 = a2 & 0x7FFFFFFF;
    if ((((((((((((((((v4 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if ((((((((((((((((v4 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

LABEL_30:
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_30;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_31:
    *((((((((((((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

void sub_18B819BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = _s4ItemVMa_0(0);
  v60 = *(v67 - 1);
  MEMORY[0x1EEE9AC00](v67);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v56 - v11;
  v66 = sub_18BC1ECC8();
  v12 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6F8, &qword_18BC53D60);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v57 = v4;
  v18 = *(v4 + v17);
  if (*(v18 + 16))
  {
    sub_18BC1E3F8();
    v19 = sub_18B7C4104(a3, a4);
    if (v20)
    {
      v61 = a2;
      v21 = *(*(v18 + 56) + 8 * v19);
      sub_18BC1E1A8();

      sub_18BC1ECD8();
      v64 = *(v14 + 36);
      swift_beginAccess();
      v63 = sub_18BC1ED38();
      v22 = sub_18B82BA44(&qword_1EA9DB700, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
      v62 = (v12 + 8);
      v23 = v69;
      v59 = v16;
      v68 = v21;
      v58 = v22;
      while (1)
      {
        v24 = v65;
        sub_18BC21158();
        sub_18B82BA44(&unk_1EA9DB708, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
        v25 = v66;
        v26 = sub_18BC20AE8();
        (*v62)(v24, v25);
        if (v26)
        {
          sub_18B988BAC(v16, &qword_1EA9DB6F8, &qword_18BC53D60);

          return;
        }

        v27 = sub_18BC211C8();
        v29 = *v28;
        v27(v70, 0);
        sub_18BC21168();
        if ((v29 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v29 >= *(v61 + 16))
        {
          goto LABEL_35;
        }

        v30 = *(v60 + 72);
        sub_18BBCF730(v61 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + v30 * v29, v23, _s4ItemVMa_0);
        if (!*(v21[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18B80CA2C(v23), v32 = v31, , , (v32 & 1) == 0))
        {
          v33 = v21[15];
          v34 = v21[16];
          __swift_project_boxed_opaque_existential_1Tm(v21 + 12, v33);
          v35 = v68[2];
          sub_18BC1E1A8();
          v35(v70, v23);

          v21 = v68;
          v36 = sub_18B814A2C(v70, v33, v34);
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          if ((v36 & 1) == 0)
          {
            v37 = sub_18B7D292C();
            sub_18BAC5ECC();
            v39 = v38;

            if (!*(v39 + 16) || (sub_18BC22158(), sub_18B80CA58(v70), v40 = sub_18BC221A8(), v41 = -1 << *(v39 + 32), v42 = v40 & ~v41, ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0))
            {
LABEL_4:

              v21 = v68;
              v23 = v69;
              sub_18B814EEC(v69);
              goto LABEL_5;
            }

            v43 = ~v41;
            v44 = *v69;
            while (2)
            {
              sub_18BBCF730(*(v39 + 48) + v42 * v30, v9, _s4ItemVMa_0);
              if (v44 == *v9 && v9[1] == v69[1] && (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) != 0)
              {
                v45 = v67[7];
                v46 = *&v9[v45];
                v47 = *&v69[v45];
                if (v46)
                {
                  if (v47)
                  {
                    sub_18B7B0AC0(0, &qword_1ED6514F0, 0x1E69DCAB8);
                    v48 = v47;
                    v49 = v46;
                    v50 = sub_18BC215C8();

                    if (v50)
                    {
                      goto LABEL_23;
                    }
                  }
                }

                else if (!v47)
                {
LABEL_23:
                  if (v9[v67[8]] == v69[v67[8]] && v9[v67[9]] == v69[v67[9]])
                  {
                    v51 = v67[10];
                    v52 = &v9[v51];
                    v53 = *&v9[v51 + 8];
                    v54 = &v69[v51];
                    v55 = *(v54 + 1);
                    if (v53)
                    {
                      if (v55 && (*v52 == *v54 && v53 == v55 || (sub_18BC21FD8() & 1) != 0))
                      {
LABEL_32:

                        sub_18B81D138(v9, _s4ItemVMa_0);
                        v21 = v68;
                        v23 = v69;
                        break;
                      }
                    }

                    else if (!v55)
                    {
                      goto LABEL_32;
                    }
                  }
                }
              }

              sub_18B81D138(v9, _s4ItemVMa_0);
              v42 = (v42 + 1) & v43;
              if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
              {
                goto LABEL_4;
              }

              continue;
            }
          }
        }

LABEL_5:
        sub_18B81D138(v23, _s4ItemVMa_0);
        v16 = v59;
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }
  }

  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18B81A374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B81A3DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1368);
  swift_beginAccess();
  v5 = sub_18B8103B0();
  v8 = *(v3 + 1320);
  v9 = &type metadata for SFFluidTabOverviewSupplementary;
  v10 = *(v3 + 1336);
  v11 = v5;
  type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, &v8);
  v6 = sub_18BC21848();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_18B81A4E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBF78, &unk_18BC55FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_18B81A588(__int16 a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, __n128), char a5)
{
  v6 = v5;
  v109 = a1 & 0x101;
  v110 = a2;
  v8 = sub_18B7C2E68();
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x1E69E7D40];
  if (v10 == 0.0 && v12 == 0.0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x290))();
  }

  v14 = sub_18B7D292C();
  v108 = v14;
  (*((*v13 & *v6) + 0x1C0))(&v107, &v109);
  v15 = v107;
  v16 = &v107[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation];
  swift_beginAccess();
  sub_18B80DBC4(v16, &v111);
  v17 = *(&v112 + 1);
  v18 = v113;
  __swift_project_boxed_opaque_existential_1Tm(&v111, *(&v112 + 1));
  v19 = (*(v18 + 112))(v17, v18);
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_1Tm(&v111);
  v22 = sub_18B7C2E68();
  [v22 contentSize];
  v24 = v23;
  v26 = v25;

  if (v24 > v19)
  {
    v19 = v24;
  }

  if (v26 > v21)
  {
    v21 = v26;
  }

  v27 = *((*v13 & *v6) + 0x80);
  [*(v6 + v27) contentSize];
  if (v29 != v19 || v28 != v21)
  {
    [*(v6 + v27) setContentSize_];
  }

  v31 = *(v6 + v27);
  [v31 adjustedContentInset];
  v93 = v33;
  v94 = v32;
  v91 = v35;
  v92 = v34;
  [v31 bounds];
  v89 = v37;
  v90 = v36;
  v87 = v39;
  v88 = v38;
  sub_18B7E0E4C();
  v85 = v41;
  v86 = v40;
  v43 = v42;
  v45 = v44;
  [v31 contentSize];
  v47 = v46;
  v49 = v48;
  [v31 frame];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = [v31 isTracking];

  v59 = &v15[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState];
  *v59 = v94;
  *(v59 + 1) = v93;
  *(v59 + 2) = v92;
  *(v59 + 3) = v91;
  *(v59 + 4) = v90;
  *(v59 + 5) = v89;
  *(v59 + 6) = v88;
  *(v59 + 7) = v87;
  *(v59 + 8) = v86;
  *(v59 + 9) = v85;
  *(v59 + 10) = v43;
  *(v59 + 11) = v45;
  *(v59 + 12) = v47;
  *(v59 + 13) = v49;
  *(v59 + 14) = v51;
  *(v59 + 15) = v53;
  *(v59 + 16) = v55;
  *(v59 + 17) = v57;
  v59[144] = v58;
  v120 = v58;
  v112 = *(v59 + 1);
  v116 = *(v59 + 5);
  v115 = *(v59 + 4);
  v114 = *(v59 + 3);
  v113 = *(v59 + 2);
  v119 = *(v59 + 8);
  v118 = *(v59 + 7);
  v117 = *(v59 + 6);
  v111 = *v59;
  swift_beginAccess();
  v60 = *(v16 + 24);
  v61 = *(v16 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v16, v60);
  (*(v61 + 72))(&v111, v60, v61);
  swift_endAccess();
  sub_18B7CA054(a3, &v99, &unk_1EA9D53A0, &qword_18BC4BFB0);
  if (v99)
  {
    v103 = v99;
    v104 = v100;
    v105 = v101;
    v106 = v102;
  }

  else
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
  }

  v62 = MEMORY[0x1E69E7D40];
  sub_18B7CA054(&v103, &v99, &unk_1EA9D53A0, &qword_18BC4BFB0);
  if (v99)
  {
    sub_18B988BAC(&v99, &unk_1EA9D53A0, &qword_18BC4BFB0);
  }

  (*((*v62 & *v6) + 0x228))(&v108, &v107, &v103, a4);
  v63 = *((*v62 & *v6) + 0x68);
  swift_beginAccess();
  v64 = *(v6 + v63);
  *(v6 + v63) = v15;
  v65 = v15;

  if (a5)
  {
    v66 = *(v6 + *((*v62 & *v6) + 0x70));
    v67 = v14[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 1];
    v68 = *&v14[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
    LOBYTE(v99) = v14[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content];
    BYTE1(v99) = v67;
    *(&v99 + 1) = v68;
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    v66(&v99, &v109, a4);
  }

  v69 = &unk_1EFF1A728;
  if (!v65[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_configuration + 7])
  {
    v69 = &unk_1EFF1A768;
  }

  v70 = *v69;
  if (*v69)
  {
    if (v65[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_configuration + 7])
    {
      v71 = &unk_1EFF1A718;
    }

    else
    {
      v71 = &unk_1EFF1A758;
    }

    v72 = (v71 + 40);
    do
    {
      v73 = *(v72 - 1);
      v74 = *v72;
      sub_18BC1E3F8();
      sub_18B8168DC(v73, v74, v14, v65, a4);

      v72 += 2;
      --v70;
    }

    while (v70);
  }

  [v6 setNeedsLayout];
  v75 = swift_allocObject();
  *(v75 + 16) = v6;
  sub_18B7CA054(a4, &v97, &unk_1EA9D5060, &unk_18BC41870);
  if (v98)
  {
    sub_18B7C3FA4(&v97, &v99);
    v76 = *__swift_project_boxed_opaque_existential_1Tm(&v99, *(&v100 + 1));
    v77 = swift_allocObject();
    *(v77 + 16) = sub_18B848FAC;
    *(v77 + 24) = v75;
    swift_beginAccess();
    v78 = *(v76 + 24);
    v79 = v6;
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v76 + 24) = v78;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v78 = sub_18B9B5814(0, v78[2] + 1, 1, v78);
      *(v76 + 24) = v78;
    }

    v82 = v78[2];
    v81 = v78[3];
    if (v82 >= v81 >> 1)
    {
      v78 = sub_18B9B5814((v81 > 1), v82 + 1, 1, v78);
    }

    v78[2] = v82 + 1;
    v83 = &v78[2 * v82];
    v83[4] = sub_18B9D53B0;
    v83[5] = v77;
    *(v76 + 24) = v78;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v99);
  }

  else
  {
    v84 = v6;
    sub_18B988BAC(&v97, &unk_1EA9D5060, &unk_18BC41870);
    [v84 layoutIfNeeded];
  }

  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x1D0))(&v108, &v107, &v103, a4);

  sub_18B988BAC(&v103, &unk_1EA9D53A0, &qword_18BC4BFB0);
}

uint64_t sub_18B81AD70(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  v7 = (((((((((((((((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32;
  v8 = v7 & 0xFFFFFFF8;
  v9 = a2 - 2147483646;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (v11 == 4)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  else if (v11 == 2)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
LABEL_7:
      v5 = *((((((((((((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return (v8 | v13) ^ 0x80000000;
}

uint64_t sub_18B81AEC8(uint64_t a1)
{
  sub_18BC22158();
  sub_18B80CA58(v2);
  return sub_18BC221A8();
}

void SFFluidCollectionView.LayoutSnapshot.applyTransform(to:_:)(uint64_t a1, void (*a2)(char *), uint64_t a3, void *a4)
{
  v43 = a2;
  v44 = a3;
  v6 = a4[2];
  v7 = a4[3];
  v8 = a4[4];
  v9 = a4[5];
  v10 = a4[6];
  v11 = a4[7];
  v45 = a4;
  v56 = v6;
  v57 = v7;
  v58 = v8;
  v59 = v9;
  v60 = v10;
  v61 = v11;
  v12 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, &v56);
  v42 = sub_18BC21848();
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v52 = &v37 - v13;
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v37 - v15;
  v56 = v6;
  v57 = v7;
  v58 = v8;
  v59 = v9;
  v60 = v10;
  v61 = v11;
  v16 = type metadata accessor for SFFluidCollectionView.Element(0, &v56);
  v54 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v37 - v17;
  v55 = v4;
  v53 = v12;
  v46 = v18;
  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v20 = *v4;
    swift_getWitnessTable();
    v56 = v20;
    sub_18BC209B8();
    sub_18BC1E3F8();
    swift_getWitnessTable();
    v19 = sub_18BC210F8();
  }

  v21 = v19 + 56;
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v19 + 56);
  v25 = (v22 + 63) >> 6;
  v49 = v54 + 8;
  v50 = v54 + 16;
  v48 = (v39 + 6);
  v40 = (v39 + 4);
  ++v39;
  ++v38;
  sub_18BC1E3F8();
  v26 = 0;
  v28 = v54;
  v27 = v55;
  v47 = v19;
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v30 >= v25)
    {

      return;
    }

    v24 = *(v21 + 8 * v30);
    ++v26;
    if (v24)
    {
      while (1)
      {
        v31 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v32 = v51;
        v33 = v46;
        (*(v28 + 16))(v51, *(v19 + 48) + *(v28 + 72) * (v31 | (v30 << 6)), v46);
        v34 = v27;
        swift_getWitnessTable();
        v35 = v52;
        v36 = v53;
        sub_18BC20A28();
        (*(v28 + 8))(v32, v33);
        if ((*v48)(v35, 1, v36) == 1)
        {
          (*v38)(v35, v42);
          v26 = v30;
          v19 = v47;
          v27 = v34;
          if (!v24)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v29 = v41;
          (*v40)(v41, v35, v36);
          v43(v29);
          SFFluidCollectionView.LayoutSnapshot.insert(_:)(v29, v45);
          v27 = v55;
          (*v39)(v29, v36);
          v26 = v30;
          v19 = v47;
          if (!v24)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v30 = v26;
      }
    }
  }

  __break(1u);
}

void sub_18B81B430(uint64_t *a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 112);
  v8 = *(*v2 + 120);
  v37 = *(*v2 + 80);
  *&v38 = v37;
  v36 = v4;
  *(&v38 + 1) = v4;
  v35 = v5;
  v39 = v5;
  *&v40 = v6;
  v34 = v7;
  *(&v40 + 1) = v7;
  *&v41 = v8;
  v32 = type metadata accessor for SFFluidCollectionView.Element(0, &v38);
  v9 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = v30 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1[5];
  *&v38 = v12;
  *(&v38 + 1) = v13;
  v39 = v14;
  *&v40 = v15;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18B849A44(&v38);
  *(v2 + 91) = 1;
  swift_beginAccess();
  v18 = *(v2 + 72) == 1;
  v33 = v8;
  if (v18)
  {
    sub_18B84A364(v37, v36, v35, v6, v34, v8, &v38);
  }

  else
  {
    sub_18B81D198(&v38);
  }

  v43 = v38;
  v44 = v39;
  v45 = v40;
  v46 = v41;
  v47 = v42;
  swift_beginAccess();
  if (*(v2 + 72))
  {
LABEL_17:
    (*(*v2 + 392))(&v43);
    sub_18B81BA44(&v43);
  }

  else
  {
    v31 = v6;
    swift_beginAccess();
    v19 = *(v2 + 64);
    v20 = 1 << *(v19 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v19 + 56);
    v23 = (v20 + 63) >> 6;
    v30[2] = v9 + 16;
    v30[1] = v9 + 8;
    sub_18BC1E3F8();
    v24 = 0;
    v25 = v32;
    while (v22)
    {
      v26 = v24;
      v27 = v33;
LABEL_14:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v9 + 16))(v11, *(v19 + 48) + *(v9 + 72) * (v28 | (v26 << 6)), v25);
      *&v38 = v37;
      *(&v38 + 1) = v36;
      v39 = v35;
      *&v40 = v31;
      *(&v40 + 1) = v34;
      *&v41 = v27;
      v29 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v38);
      SFFluidCollectionView.LayoutSnapshot.removeAttributes(for:)(v11, v29);
      (*(v9 + 8))(v11, v25);
    }

    v27 = v33;
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        goto LABEL_17;
      }

      v22 = *(v19 + 56 + 8 * v26);
      ++v24;
      if (v22)
      {
        v24 = v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

BOOL sub_18B81B8AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v5 = _s4ItemVMa_0(0);
  if ((_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[7];
  v7 = *&a1[v6];
  v8 = *&a2[v6];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    sub_18B7E7DC4();
    v9 = v8;
    v10 = v7;
    v11 = sub_18BC215C8();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (a1[v5[8]] != a2[v5[8]] || a1[v5[9]] != a2[v5[9]])
  {
    return 0;
  }

  v12 = v5[10];
  v13 = &a1[v12];
  v14 = *&a1[v12 + 8];
  v15 = &a2[v12];
  v16 = *(v15 + 1);
  if (v14)
  {
    return v16 && (*v13 == *v15 && v14 == v16 || (sub_18BC21FD8() & 1) != 0);
  }

  return !v16;
}

void sub_18B81BA44(_OWORD *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  v9[0] = *(v1 + 96);
  v9[1] = v4;
  v10[0] = *(v1 + 128);
  *(v10 + 9) = *(v1 + 137);
  v5 = a1[1];
  *(v1 + 96) = *a1;
  *(v1 + 112) = v5;
  *(v1 + 128) = a1[2];
  *(v1 + 137) = *(a1 + 41);
  v6 = v3[6];
  v8[0] = v3[5];
  v8[1] = v6;
  v8[2] = v3[7];
  v7 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, v8);
  (*(*(v7 - 8) + 8))(v9, v7);
  sub_18B81BBBC();
}

void sub_18B81BBBC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 96);
  v6 = v2[13];
  v7 = v2[14];
  v8 = v2[15];
  *&v98 = v3;
  *(&v98 + 1) = v4;
  *&v99 = v5;
  *(&v99 + 1) = v6;
  *v100 = v7;
  *&v100[8] = v8;
  v84 = type metadata accessor for SFFluidCollectionView.Element(0, &v98);
  v86 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v65 - v9;
  *&v98 = v3;
  *(&v98 + 1) = v4;
  v90 = v5;
  *&v99 = v5;
  *(&v99 + 1) = v6;
  v88 = v7;
  *v100 = v7;
  *&v100[8] = v8;
  v87 = v8;
  v10 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v98);
  v74 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  v85 = v4;
  v13 = *(v4 - 8);
  v66 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v65 - v15;
  v73 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v65 - v21;
  type metadata accessor for CGRect(255);
  v23 = v22;
  swift_getTupleTypeMetadata2();
  v24 = sub_18BC20DE8();
  v89 = v6;
  v25 = *(v6 + 8);
  v92 = v3;
  v81 = v23;
  v93 = v25;
  v26 = sub_18B7C29AC(v24, v3, v23, v25);

  swift_beginAccess();
  *(v1 + 160) = v26;

  sub_18B810930(&v98);
  v27 = *v100;
  sub_18BC1E1A8();

  v70 = *(*(&v27 + 1) + 16);
  if (!v70)
  {
LABEL_20:

    return;
  }

  v65 = v27;
  v28 = 0;
  v69 = (v73 + 32);
  v80 = (v13 + 16);
  v77 = (v13 + 32);
  v76 = (v86 + 8);
  v75 = (v73 + 16);
  ++v74;
  v67 = (v73 + 8);
  v29 = v92;
  v30 = v85;
  v31 = v91;
  v79 = v10;
  v78 = v13;
  v68 = *(&v27 + 1);
  while (1)
  {
    v33 = v71;
    v72 = v28;
    sub_18BC21C08();
    (*v69)(v31, v33, v29);
    sub_18B810930(&v98);
    v95 = v98;
    v96 = v99;
    *v97 = *v100;
    v101 = v29;
    v102 = v30;
    v103 = v90;
    v104 = v89;
    v105 = v88;
    v106 = v87;
    v34 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, &v101);
    v35 = SFFluidCollectionView.DataSource.Snapshot.items(in:)(v31, v34);
    v73 = *(&v95 + 1);

    if (sub_18BC20E28())
    {
      break;
    }

    v29 = v92;
LABEL_4:
    v32 = v72 + 1;
    v31 = v91;
    (*v67)(v91, v29);
    v28 = v32;
    if (v32 == v70)
    {
      goto LABEL_20;
    }
  }

  v36 = 0;
  v29 = v92;
  v86 = v35;
  while (1)
  {
    v37 = sub_18BC20E08();
    sub_18BC20DC8();
    if ((v37 & 1) == 0)
    {
      break;
    }

    (*(v13 + 16))(v94, v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v36, v30);
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_21;
    }

LABEL_9:
    sub_18B81D198(&v95);
    v39 = v1;
    v40 = v83;
    (*v77)(v83, v94, v30);
    v41 = v30;
    v42 = v84;
    swift_storeEnumTagMultiPayload();
    v101 = v29;
    v102 = v41;
    v103 = v90;
    v104 = v89;
    v105 = v88;
    v106 = v87;
    v43 = v29;
    v44 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v101);
    sub_18B860EBC(v40, v44, v12);
    v45 = v40;
    v1 = v39;
    (*v76)(v45, v42);
    v98 = v95;
    v99 = v96;
    *v100 = *v97;
    *&v100[9] = *&v97[9];
    (*(*(v44 - 1) + 8))(&v98, v44);
    swift_beginAccess();
    v46 = *(v39 + 160);
    v47 = *(v46 + 16);
    sub_18BC1E3F8();
    v48 = v91;
    if (v47 && (v49 = sub_18B84FAF0(v91, v43, v93), (v50 & 1) != 0))
    {
      v51 = *(v46 + 56) + 32 * v49;
      v52 = *v51;
      v53 = *(v51 + 8);
      v54 = *(v51 + 16);
      v55 = *(v51 + 24);

      v56 = v79;
    }

    else
    {
      v56 = v79;
      v52 = SFFluidCollectionView.LayoutAttributes.frame.getter(v79);
      v53 = v57;
      v54 = v58;
      v55 = v59;
    }

    v29 = v92;
    (*v75)(v82, v48, v92);
    v109.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v56);
    v109.origin.y = v60;
    v109.size.width = v61;
    v109.size.height = v62;
    v107.origin.x = v52;
    v107.origin.y = v53;
    v107.size.width = v54;
    v107.size.height = v55;
    v108 = CGRectUnion(v107, v109);
    *&v95 = v108.origin.x;
    *(&v95 + 1) = *&v108.origin.y;
    *&v96 = v108.size.width;
    *(&v96 + 1) = *&v108.size.height;
    v97[0] = 0;
    swift_beginAccess();
    sub_18BC209F8();
    sub_18BC20A38();
    swift_endAccess();
    (*v74)(v12, v56);
    v35 = v86;
    v30 = v85;
    v63 = sub_18BC20E28();
    v13 = v78;
    if (v38 == v63)
    {

      goto LABEL_4;
    }

    ++v36;
  }

  v64 = sub_18BC21B08();
  if (v66 != 8)
  {
    goto LABEL_22;
  }

  *&v98 = v64;
  (*v80)(v94, &v98, v30);
  swift_unknownObjectRelease();
  v38 = v36 + 1;
  if (!__OFADD__(v36, 1))
  {
    goto LABEL_9;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_18B81C6D0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  if (*(v0 + *(v3 + 0x1C0)) == 1)
  {
    sub_18B81FB48(__src);
    memcpy(__dst, __src, 0x139uLL);
    if (sub_18B81CA10(__dst) != 1)
    {
      v4 = *((*v2 & *v0) + 0x1D8);
      swift_beginAccess();
      v5 = *(v1 + v4);
      memcpy(v15, __dst, 0x139uLL);
      v6 = *(*v5 + 416);
      sub_18BC1E1A8();
      v6(v15);

      v7 = *(v3 + 96);
      v16 = *(v3 + 80);
      v17 = v7;
      v18 = *(v3 + 112);
      type metadata accessor for SFFluidCollectionView.Update(255, &v16);
      v8 = sub_18BC21848();
      (*(*(v8 - 8) + 8))(__src, v8);
      *(v1 + *((*v2 & *v1) + 0x1C0) + 2) = 1;
    }

    v9 = v1 + *((*v2 & *v1) + 0x1C0);
    *v9 = 0;
    swift_beginAccess();
    sub_18B8498E0();
    v16 = v15[0];
    v17 = v15[1];
    v18 = v15[2];
    sub_18BC1E1A8();
    sub_18B81B430(&v16);

    [v1 safeAreaInsets];
    v10 = (v1 + *((*v2 & *v1) + 0x170));
    *v10 = v11;
    v10[1] = v12;
    v10[2] = v13;
    v10[3] = v14;
    v9[1] = 1;
    sub_18B81CF54();
  }

  else
  {

    sub_18B81CF54();
  }
}

uint64_t sub_18B81CA10(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18B81CA28(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = _s14ScrollPositionOMa(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v45 = &v40 - v12;
  v47 = _s11TransactionVMa(0);
  *&v13 = MEMORY[0x1EEE9AC00](v47).n128_u64[0];
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a3;
  v16 = [a1 animationSettings];
  if (v16)
  {
    v17 = *&v16[OBJC_IVAR___SFAnimationSettings_wrapped];
    v18 = v16;
    type metadata accessor for RetargetableTransitionCoordinator();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E7CC0];
    *(v19 + 24) = MEMORY[0x1E69E7CC0];
    sub_18BC1E1A8();

    *(v19 + 32) = v20;
    *(v19 + 40) = 1;
    *(v19 + 16) = v17;
  }

  else
  {
    v19 = 0;
  }

  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v21 = v47;
  v22 = *(v47 + 20);
  v23 = _s4ItemVMa(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v42 = v23;
  v43 = v22;
  v40 = v24 + 56;
  v41 = v25;
  (v25)(&v15[v22], 1, 1);
  v44 = *(v21 + 28);
  swift_storeEnumTagMultiPayload();
  v46 = v19;
  v26 = 0;
  if (v19)
  {
    v26 = type metadata accessor for RetargetableTransitionCoordinator();
    v27 = &off_1EFF27FD8;
  }

  else
  {
    v27 = 0;
    v50[1] = 0;
    v50[2] = 0;
  }

  v50[0] = v19;
  v50[3] = v26;
  v50[4] = v27;
  sub_18BC1E1A8();
  sub_18B7FD070(v50, v15, &unk_1EA9D5060, &unk_18BC41870);
  v28 = [a1 insertedItemToDismissTo];
  if (v28)
  {
    v29 = v28;
    v30 = *&v28[OBJC_IVAR___SFTabSwitcherItem__internal];
    v31 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
    swift_beginAccess();
    v32 = v30 + v31;
    v33 = v45;
    sub_18B8162EC(v32, v45, _s4ItemVMa);

    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v45;
  }

  v41(v33, v34, 1, v42);
  v35 = *(v47 + 24);
  sub_18B7FD070(v33, &v15[v43], &qword_1EA9D7CD0, &unk_18BC49EB0);
  v15[v35] = [a1 prefersDetachedTransition];
  v36 = [a1 targetScrollPosition];
  if (v36)
  {
    v37 = v36;
    sub_18B8162EC(*&v36[OBJC_IVAR___SFTabSwitcherScrollPosition__internal] + OBJC_IVAR____TtC12MobileSafari35SFTabSwitcherScrollPositionInternal_wrapped, v7, _s14ScrollPositionOMa);

    sub_18B81F9A8(v7, v10, _s14ScrollPositionOMa);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
  }

  sub_18B81FC54(v10, &v15[v44], _s14ScrollPositionOMa);
  sub_18BAF3ED8(v15, sub_18BA93828, v48);
  if (v46)
  {
    v38 = *(v19 + 16);
    swift_retain_n();
    sub_18B7D8090(v38);
    sub_18B7EAA64(sub_18B9EB460, v19, sub_18B9EB538, v19, v38);

    sub_18B7EBAE8(v38);
    *(v19 + 40) = 0;
  }

  return sub_18B8165D8(v15, _s11TransactionVMa);
}

void sub_18B81CF54()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*MEMORY[0x1E69E7D40] & *v0);
  swift_beginAccess();
  sub_18B81D198(v12);
  sub_18B81D8B4(v12);
  v4 = *((*v2 & *v0) + 0xE0);
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  if (v6)
  {
    v7 = *(v1 + *((*v2 & *v1) + 0xE8));
    MEMORY[0x1EEE9AC00](v5);
    v11[2] = v6;
    swift_beginAccess();
    v8 = v6;
    sub_18BC1E3F8();
    v9 = v3[6];
    v12[0] = v3[5];
    v12[1] = v9;
    v12[2] = v3[7];
    v10 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, v12);
    SFFluidCollectionView.LayoutSnapshot.applyTransform(to:_:)(v7, sub_18BB694EC, v11, v10);

    swift_endAccess();
  }
}

uint64_t sub_18B81D138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B81D198@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  v11[0] = *(v1 + 96);
  v11[1] = v4;
  v12[0] = *(v1 + 128);
  v5 = v12[0];
  *(v12 + 9) = *(v1 + 137);
  v6 = *(v12 + 9);
  *a1 = v11[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 41) = v6;
  v7 = v3[6];
  v10[0] = v3[5];
  v10[1] = v7;
  v10[2] = v3[7];
  v8 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, v10);
  return (*(*(v8 - 8) + 16))(v10, v11, v8);
}

uint64_t sub_18B81D298@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v50 = a1;
  v46 = a2;
  v3 = sub_18BC1EDD8();
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v45 - v9;
  v10 = sub_18BC1ED38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = *(*(v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8) + 16);
  sub_18B82BA44(&qword_1EA9DB6E8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18BC218F8();
  if (v17)
  {
    v18 = 0;
    do
    {
      v19 = v18 + 1;
      v53[0] = v18;
      sub_18BC218D8();
      v18 = v19;
    }

    while (v17 != v19);
  }

  v20 = *(v11 + 32);
  v20(v16, v13, v10);
  v21 = type metadata accessor for SingleElementIndexPathSequence(0);
  v54 = v21;
  v55 = sub_18B82BA44(&qword_1EA9DB6F0, type metadata accessor for SingleElementIndexPathSequence, &unk_18BC48780);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v53);
  sub_18BC1ECA8();
  v20(boxed_opaque_existential_0Tm + *(v21 + 20), v16, v10);
  v23 = __swift_project_boxed_opaque_existential_1Tm(v53, v54);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = __swift_allocate_boxed_opaque_existential_0Tm(v56);
  sub_18BBCEB04(v26, v28, type metadata accessor for SingleElementIndexPathSequence);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  v29 = 0;
  v30 = (v49 + 48);
  v31 = (v49 + 32);
  v32 = (v49 + 8);
  v47 = (v49 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  v48 = v5;
  do
  {
    __swift_mutable_project_boxed_opaque_existential_1(v56, AssociatedTypeWitness);
    sub_18BC21868();
    v36 = v52;
    if ((*v30)(v52, 1, v3) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8, &qword_18BC46528);
      v44 = v46;
      v46[3] = v43;
      result = sub_18B7B0B08(&qword_1EA9D6B00, &qword_1EA9D6AF8, &qword_18BC46528, MEMORY[0x1E69E6328]);
      v44[4] = result;
      *v44 = v33;
      return result;
    }

    v37 = *v31;
    v38 = v51;
    (*v31)(v51, v36, v3);
    if (sub_18BC1ED18())
    {
      (*v47)(v5, v38, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_18B81F634(0, v33[2] + 1, 1, v33);
      }

      v40 = v33[2];
      v39 = v33[3];
      if (v40 >= v39 >> 1)
      {
        v33 = sub_18B81F634((v39 > 1), v40 + 1, 1, v33);
      }

      v41 = v49;
      (*(v49 + 8))(v51, v3);
      v33[2] = v40 + 1;
      v42 = v33 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40;
      v5 = v48;
      result = v37(v42, v48, v3);
    }

    else
    {
      result = (*v32)(v38, v3);
    }
  }

  while (!__OFADD__(v29++, 1));
  __break(1u);
  return result;
}

uint64_t sub_18B81D8B4(_OWORD *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = (v1 + *(v3 + 0x1D0));
  swift_beginAccess();
  v5 = v4[1];
  v11[0] = *v4;
  v11[1] = v5;
  v12[0] = v4[2];
  *(v12 + 9) = *(v4 + 41);
  v6 = a1[1];
  *v4 = *a1;
  v4[1] = v6;
  v4[2] = a1[2];
  *(v4 + 41) = *(a1 + 41);
  v7 = *(v3 + 96);
  v10[0] = *(v3 + 80);
  v10[1] = v7;
  v10[2] = *(v3 + 112);
  v8 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, v10);
  return (*(*(v8 - 8) + 8))(v11, v8);
}

void sub_18B81D9D4()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9CA0, &unk_18BC42FB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v224 = &v181 - v6;
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken(0);
  v234 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v218 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = *(*((v3 & v1) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](v8);
  v184 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v181 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v217 = &v181 - v13;
  v14 = *((v3 & v1) + 0x50);
  v227 = *(v4 + 96);
  v15 = *((v3 & v1) + 0x70);
  v17 = v16;
  v18 = *((v3 & v1) + 0x78);
  *&v252[0] = v14;
  *(&v252[0] + 1) = v16;
  v252[1] = v227;
  *&v252[2] = v15;
  *(&v252[2] + 1) = v18;
  v19 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, v252);
  v186 = sub_18BC21848();
  v230 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v216 = &v181 - v20;
  v239 = v19;
  v21 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v215 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v191 = &v181 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v221 = &v181 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v194 = &v181 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v237 = &v181 - v31;
  *&v252[0] = v14;
  *(&v252[0] + 1) = v17;
  v252[1] = v227;
  *&v252[2] = v15;
  *(&v252[2] + 1) = v18;
  v226 = type metadata accessor for SFFluidCollectionView.Element(0, v252);
  v235 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226 - 8);
  v214 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v199 = &v181 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v213 = &v181 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v236 = &v181 - v38;
  *&v252[0] = v14;
  *(&v252[0] + 1) = v17;
  v252[1] = v227;
  *&v252[2] = v15;
  *(&v252[2] + 1) = v18;
  v39 = type metadata accessor for SFFluidCollectionView(0, v252);
  v253.receiver = v0;
  v253.super_class = v39;
  objc_msgSendSuper2(&v253, sel_layoutSubviews, v39);
  v228 = sub_18B849650();
  [v0 _setAutomaticContentOffsetAdjustmentEnabled_];
  sub_18B81C6D0();
  [v0 contentSize];
  v41 = v40;
  v43 = v42;
  sub_18B81F838(v252);
  v44 = *(&v252[2] + 1);
  v45 = *&v252[3];
  v249[0] = v252[0];
  v249[1] = v252[1];
  v250[0] = v252[2];
  *(v250 + 9) = *(&v252[2] + 9);
  *&v251[0] = v14;
  *(&v251[0] + 1) = v17;
  v251[1] = v227;
  v229 = v15;
  *&v251[2] = v15;
  *(&v251[2] + 1) = v18;
  v46 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, v251);
  v47 = *(v46 - 1);
  v201 = *(v47 + 8);
  v202 = v46;
  v200 = v47 + 8;
  v201(v249);
  v238 = v0;
  sub_18B81FB48(v251);
  memcpy(v252, v251, 0x139uLL);
  v48 = sub_18B81CA10(v252);
  v49 = *&v227;
  v231 = v17;
  if (v48 == 1)
  {
    v50 = v21;
    v51 = v18;
LABEL_8:
    v188 = 0;
    goto LABEL_9;
  }

  *&v243[0] = v14;
  *(&v243[0] + 1) = v17;
  v243[1] = v227;
  *&v243[2] = v229;
  *(&v243[2] + 1) = v18;
  type metadata accessor for SFFluidCollectionView.Update(255, v243);
  v52 = sub_18BC21848();
  (*(*(v52 - 8) + 8))(v251, v52);
  v51 = v18;
  if (![v238 _isAutomaticContentOffsetAdjustmentEnabled] || (objc_msgSend(objc_opt_self(), sel__isInAnimationBlock) & 1) != 0 || v41 == v44 && v43 == v45)
  {
    v50 = v21;
    goto LABEL_8;
  }

  v50 = v21;
  v180 = v44 < v41 || v45 < v43;
  v188 = v180;
LABEL_9:
  v53 = v238;
  v54 = [v238 panGestureRecognizer];
  sub_18B81F838(v243);
  v55 = BYTE8(v243[3]);
  v247[0] = v243[0];
  v247[1] = v243[1];
  v248[0] = v243[2];
  *(v248 + 9) = *(&v243[2] + 9);
  (v201)(v247, v202);
  [v54 setEnabled_];

  sub_18B8200DC();
  v56 = v53 + *((*MEMORY[0x1E69E7D40] & *v53) + 0x168);
  v57 = v56[10];
  v58 = *(v56 + 4);
  if (sub_18BC1E3F8())
  {

    if (((v58 | (v57 << 16)) & 0x10000) != 0)
    {
      sub_18B81C6D0();
    }
  }

  v59 = v238;
  v60 = sub_18B820C10(v238);
  v61 = v59 + *((*MEMORY[0x1E69E7D40] & *v59) + 0x178);
  *v61 = v60;
  *(v61 + 1) = v62;
  if (v228)
  {
    *&v243[0] = v14;
    *(&v243[0] + 1) = v231;
    v243[1] = v227;
    *&v243[2] = v229;
    *(&v243[2] + 1) = v51;
    v63 = _s8ItemInfoCMa(0, v243);
    v64 = sub_18BC20DE8();
    if (sub_18BC20E28())
    {
      WitnessTable = swift_getWitnessTable();
      v66 = sub_18BB32DD8(v64, v63, WitnessTable);
    }

    else
    {
      v66 = MEMORY[0x1E69E7CD0];
    }

    v69 = v226;

    v67 = v227;
    v68 = v231;
  }

  else
  {
    v66 = 0;
    v67 = v227;
    v68 = v231;
    v69 = v226;
  }

  v246 = v66;
  v192 = v51;
  v193 = v14;
  *&v243[0] = v14;
  *(&v243[0] + 1) = v68;
  v243[1] = v67;
  *&v243[2] = v229;
  *(&v243[2] + 1) = v51;
  v70 = _s8ItemInfoCMa(0, v243);
  v71 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v72 = swift_getWitnessTable();
    v73 = sub_18BB32DD8(v71, v70, v72);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CD0];
  }

  v245 = v73;
  v74 = v231;
  v75 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v76 = sub_18BB32DD8(v75, v74, *(v229 + 8));
  }

  else
  {
    v76 = MEMORY[0x1E69E7CD0];
  }

  v244 = v76;
  v77 = v238;
  sub_18B821348();
  sub_18B823C10();
  v78 = *((*MEMORY[0x1E69E7D40] & *v77) + 0x100);
  swift_beginAccess();
  v79 = *(v77 + v78);
  if ((v79 & 0xC000000000000001) != 0)
  {
    sub_18BC1E3F8();
    sub_18BC21958();
    swift_getWitnessTable();
    sub_18BC210A8();
    v79 = v254;
    v80 = v255;
    v81 = v256;
    v82 = v257;
    v83 = v258;
  }

  else
  {
    v84 = -1 << *(v79 + 32);
    v80 = v79 + 56;
    v85 = ~v84;
    v86 = -v84;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    else
    {
      v87 = -1;
    }

    v83 = v87 & *(v79 + 56);
    sub_18BC1E3F8();
    v81 = v85;
    v82 = 0;
  }

  v88 = v236;
  v187 = v81;
  v89 = (v81 + 64) >> 6;
  v232 = (v235 + 2);
  ++v235;
  v203 = (v50 + 32);
  v225 = (v50 + 16);
  v185 = (v230 + 8);
  v198 = (v233 + 32);
  v197 = v229 + 24;
  v182 = (v233 + 16);
  v196 = (v233 + 8);
  v210 = (v234 + 48);
  v211 = (v50 + 48);
  v223 = (v50 + 8);
  v209 = (v50 + 24);
  *(&v90 + 1) = *(&v227 + 1);
  v189 = *(&v227 + 1);
  v190 = v227;
  *&v90 = 136642819;
  v195 = v90;
  v212 = v70;
  v222 = v80;
  v207 = v89;
  v208 = v79;
  if ((v79 & 0x8000000000000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  if (!sub_18BC219D8() || (sub_18BC21FA8(), swift_unknownObjectRelease(), v91 = *&v243[0], v92 = v82, v93 = v83, !*&v243[0]))
  {
LABEL_79:
    v149 = v231;
    sub_18B7D2E34(v79);
    *&v238[*((*MEMORY[0x1E69E7D40] & *v238) + 0x80)] = v244;

    if (v246)
    {
      sub_18BB4C28C(v246);
    }

    sub_18B81FB48(v242);
    memcpy(v243, v242, 0x139uLL);
    if (sub_18B81CA10(v243) == 1)
    {
      memcpy(v241, v242, 0x139uLL);
      *&v240[0] = v193;
      *(&v240[0] + 1) = v149;
      v240[1] = v227;
      *&v240[2] = v229;
      *(&v240[2] + 1) = v192;
      type metadata accessor for SFFluidCollectionView.Update(255, v240);
      v150 = sub_18BC21848();
      (*(*(v150 - 8) + 8))(v241, v150);
    }

    else
    {
      v151 = v242[3];
      memcpy(v241, v242, 0x139uLL);
      sub_18BC1E1A8();
      *&v240[0] = v193;
      *(&v240[0] + 1) = v149;
      v240[1] = v227;
      *&v240[2] = v229;
      *(&v240[2] + 1) = v192;
      type metadata accessor for SFFluidCollectionView.Update(255, v240);
      v152 = sub_18BC21848();
      (*(*(v152 - 8) + 8))(v241, v152);
      v153 = v238;
      v154 = *((*MEMORY[0x1E69E7D40] & *v238) + 0x1D8);
      v155 = swift_beginAccess();
      if (v151 != *&v153[v154])
      {
        v156 = (*(*v151 + 456))(v155);
        if (v156)
        {
          v157 = v156;
          v158 = v238;
          v159 = sub_18BC215C8();

          if (v159)
          {
            (*(*v151 + 440))(0, 0);
            (*(*v151 + 464))(0);
          }
        }
      }
    }

    sub_18B81F588(v241);
    memcpy(v240, v241, 0x139uLL);
    v160 = v238;
    sub_18B824F78(v240);
    v161 = v160 + *((*MEMORY[0x1E69E7D40] & *v160) + 0x168);
    *v161 = 0;
    v161[10] = 0;
    *(v161 + 4) = 0;

    v162 = v245;
    swift_getWitnessTable();
    if (sub_18BC21098())
    {
    }

    else
    {
      v163 = objc_opt_self();
      v164 = swift_allocObject();
      *&v165 = v193;
      *(&v165 + 1) = v149;
      v166 = v227;
      *(v164 + 16) = v165;
      *(v164 + 32) = v166;
      v167 = v192;
      *(v164 + 48) = v229;
      *(v164 + 56) = v167;
      *(v164 + 64) = v162;
      *&v240[2] = sub_18BB66BB8;
      *(&v240[2] + 1) = v164;
      *&v240[0] = MEMORY[0x1E69E9820];
      *(&v240[0] + 1) = 1107296256;
      *&v240[1] = sub_18B7B0DB0;
      *(&v240[1] + 1) = &block_descriptor_49;
      v168 = _Block_copy(v240);

      [v163 _performWithoutRetargetingAnimations_];
      _Block_release(v168);
    }

    v169 = v188;
    sub_18B825434();
    sub_18B826338(v170);
    if (v169)
    {
      v171 = objc_opt_self();
      v172 = swift_allocObject();
      v173 = v238;
      *(v172 + 16) = v238;
      *(v172 + 24) = v44;
      *(v172 + 32) = v45;
      *&v240[2] = sub_18BB66BD0;
      *(&v240[2] + 1) = v172;
      *&v240[0] = MEMORY[0x1E69E9820];
      *(&v240[0] + 1) = 1107296256;
      *&v240[1] = sub_18B7B0DB0;
      *(&v240[1] + 1) = &block_descriptor_7_0;
      v174 = _Block_copy(v240);
      v175 = v173;

      *&v240[2] = CGRectMake;
      *(&v240[2] + 1) = 0;
      *&v240[0] = MEMORY[0x1E69E9820];
      *(&v240[0] + 1) = 1107296256;
      *&v240[1] = sub_18BA89100;
      *(&v240[1] + 1) = &block_descriptor_10_0;
      v176 = _Block_copy(v240);
      [v171 _animateUsingDefaultTimingWithOptions_animations_completion_];
      _Block_release(v176);
      _Block_release(v174);
    }

    else if (v41 != v44 || v43 != v45)
    {
      [v238 setContentSize_];
    }

    if (sub_18B812A74())
    {
      v178 = v177;
      ObjectType = swift_getObjectType();
      (*(v178 + 176))(v238, ObjectType, v178);
      swift_unknownObjectRelease();
    }

    return;
  }

  while (1)
  {
    v230 = v93;
    v96 = *(*v91 + 184);
    swift_beginAccess();
    v97 = *v232;
    v233 = v96;
    v97(v88, v91 + v96, v69);
    if (qword_1EA9D2280 != -1)
    {
      swift_once();
    }

    v98 = sub_18BC1F2C8();
    __swift_project_value_buffer(v98, qword_1EA9F7E38);
    v99 = v213;
    v97(v213, v88, v69);
    v100 = sub_18BC1F2A8();
    v101 = v69;
    v102 = sub_18BC21228();
    if (os_log_type_enabled(v100, v102))
    {
      v103 = swift_slowAlloc();
      v204 = v103;
      v104 = swift_slowAlloc();
      v205 = v100;
      v206 = v104;
      *&v243[0] = v104;
      *v103 = v195;
      v105 = v199;
      v97(v199, v99, v101);
      v220 = v97;
      v106 = *v235;
      v234 = v106;
      (v106)(v99, v101);
      v107 = SFFluidCollectionView.Element.description.getter(v101);
      v109 = v108;
      (v106)(v105, v101);
      v97 = v220;
      v110 = sub_18B7EA850(v107, v109, v243);

      v111 = v204;
      v112 = v205;
      *(v204 + 1) = v110;
      v113 = v111;
      _os_log_impl(&dword_18B7AC000, v112, v102, "Laying out %{sensitive}s", v111, 0xCu);
      v114 = v206;
      __swift_destroy_boxed_opaque_existential_1Tm(v206);
      MEMORY[0x18CFFEEE0](v114, -1, -1);
      MEMORY[0x18CFFEEE0](v113, -1, -1);
    }

    else
    {
      v234 = *v235;
      (v234)(v99, v101);
    }

    v115 = v224;
    v116 = v216;
    v117 = v221;
    v118 = v211;
    v220 = *(*v91 + 200);
    if (*(v220 + v91) == 1)
    {
      swift_beginAccess();
      sub_18BC1E1A8();
      sub_18BA70A08(v236, v116);

      v119 = *v118;
      if ((*v118)(v116, 1, v239) == 1)
      {
        v120 = v194;
        v121 = v239;
        (*v225)(v194, v91 + v233, v239);
        v122 = v119(v116, 1, v121);
        v115 = v224;
        v123 = v120;
        v69 = v226;
        if (v122 != 1)
        {
          (*v185)(v116, v186);
        }
      }

      else
      {
        v123 = v194;
        (*v203)(v194, v116, v239);
        v69 = v226;
      }

      (*v203)(v237, v123, v239);
      v124 = v236;
    }

    else
    {
      sub_18B81F838(v241);
      v124 = v236;
      v125 = v202;
      sub_18B860EBC(v236, v202, v237);
      v243[0] = v241[0];
      v243[1] = v241[1];
      v243[2] = v241[2];
      *(&v243[2] + 9) = *(&v241[2] + 9);
      (v201)(v243, v125);
      v69 = v226;
    }

    v126 = v214;
    v97(v214, v124, v69);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v127 = v126;
      v128 = v231;
      (*v198)(v217, v127, v231);
      if (((*(v229 + 24))(v128) & 1) != 0 || (*(v220 + v91) & 1) != 0 || !sub_18BB4C190(v237))
      {
        (*v196)(v217, v231);
      }

      else
      {
        v129 = v217;
        v130 = v231;
        (*v182)(v184, v217, v231);
        sub_18BC210E8();
        v131 = v183;
        sub_18BC21078();
        v132 = *v196;
        (*v196)(v131, v130);
        v133 = v129;
        v69 = v226;
        v117 = v221;
        v132(v133, v130);
      }
    }

    else
    {
      (v234)(v126, v69);
    }

    v134 = *(*v91 + 152);
    swift_beginAccess();
    v135 = *v225;
    (*v225)(v117, v91 + v134, v239);
    sub_18BB48550(v115);
    if ((*v210)(v115, 1, updated) == 1)
    {
      sub_18B988BAC(v115, &unk_1EA9D9CA0, &unk_18BC42FB0);
      v136 = v215;
      v137 = v233;
    }

    else
    {
      v138 = v117;
      sub_18B85A83C(v115, v218, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
      v137 = v233;
      if (v228 & 1) != 0 && (v139 = v191, v140 = v239, v135(v191, v91 + v233, v239), v141 = SFFluidCollectionView.LayoutAttributes.hasAnimatableChanges(from:)(v237, v140), v142 = v140, v69 = v226, (*v223)(v139, v142), (v141) && (sub_18BC1E3F8(), swift_getWitnessTable(), v143 = sub_18BC210B8(), , (v143 & 1) == 0))
      {
        v148 = v218;
        sub_18BABEA24(v218);
        v144 = v148;
      }

      else
      {
        v144 = v218;
      }

      sub_18BB69570(v144, type metadata accessor for SFFluidCollectionViewTrackedUpdateToken);
      v136 = v215;
      v117 = v138;
    }

    swift_beginAccess();
    (*v209)(v91 + v137, v237, v239);
    swift_endAccess();
    sub_18BABE7E4(v136);
    if ((v228 & 1) == 0)
    {
LABEL_74:
      *&v241[0] = v91;
      swift_getWitnessTable();
      sub_18BC210E8();
      sub_18BC21078();
      goto LABEL_75;
    }

    if ((SFFluidCollectionView.LayoutAttributes.hasAnimatableChanges(from:)(v136, v239) & 1) != 0 && (sub_18BB4C190(v136) || sub_18BB4C190(v117)))
    {
      if (v246)
      {
        goto LABEL_74;
      }
    }

    else if (!*(v91 + *(*v91 + 208)) || (static SFFluidCollectionView.LayoutAttributes.== infix(_:_:)(v117, v136, v193, v231, v190, v189, v229, v192) & 1) == 0)
    {
      goto LABEL_74;
    }

LABEL_75:

    v145 = *v223;
    v146 = v136;
    v147 = v239;
    (*v223)(v146, v239);
    v145(v117, v147);
    v145(v237, v147);
    v88 = v236;
    (v234)(v236, v69);
    v82 = v92;
    v83 = v230;
    v89 = v207;
    v79 = v208;
    v80 = v222;
    if (v208 < 0)
    {
      goto LABEL_31;
    }

LABEL_34:
    v94 = v83;
    v92 = v82;
    if (!v83)
    {
      break;
    }

LABEL_39:
    v93 = (v94 - 1) & v94;
    v91 = *(*(v79 + 48) + ((v92 << 9) | (8 * __clz(__rbit64(v94)))));
    sub_18BC1E1A8();
    if (!v91)
    {
      goto LABEL_79;
    }
  }

  v95 = v82;
  while (1)
  {
    v92 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      break;
    }

    if (v92 >= v89)
    {
      goto LABEL_79;
    }

    v94 = *(v80 + 8 * v92);
    ++v95;
    if (v94)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
}
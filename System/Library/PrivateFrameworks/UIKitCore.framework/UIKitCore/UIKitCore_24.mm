void sub_188D8176C()
{
  v1 = v0;
  v2 = sub_1890DF270();
  [v2 value];
  v4 = v3;

  v5 = sub_188C84C30();
  sub_188D70240(&selRef__value);
  v7 = v6;

  v8 = v4 + v7;
  v9 = OBJC_IVAR____UIMagicMorphView____lazy_storage___insets;
  v10 = *&v1[OBJC_IVAR____UIMagicMorphView____lazy_storage___insets];
  sub_188D70240(&selRef__value);
  v12 = v11;

  v13 = v8 + v12;
  v14 = sub_1890DF348();
  [v14 value];
  v16 = v15;

  v17 = *&v1[v9];
  sub_188D70240(&selRef__value);
  v19 = v18;

  v20 = v16 + v19;
  v47 = v9;
  v21 = *&v1[v9];
  sub_188D70240(&selRef__value);
  v23 = v22;

  v24 = v20 + v23;
  Center = UIRectGetCenter(0.0, 0.0, v13);
  v27 = v26;
  v28 = OBJC_IVAR____UIMagicMorphView_clippingView;
  [*&v1[OBJC_IVAR____UIMagicMorphView_clippingView] setBounds_];
  [*&v1[v28] setCenter_];
  v29 = [*&v1[v28] layer];
  v30 = sub_188C8530C();
  sub_188D62EA4([v30 _value], objc_msgSend(v30, sel__length), v49);

  [v29 setCornerRadii_];
  v31 = [v1 layer];
  v32 = *&v1[OBJC_IVAR____UIMagicMorphView____lazy_storage___cornerRadii];
  sub_188D62EA4([v32 _value], objc_msgSend(v32, sel__length), v49);

  v48[0] = v49[0];
  v48[1] = v49[1];
  v48[2] = v49[2];
  v48[3] = v49[3];
  [v31 setCornerRadii_];

  v33 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v34 = v1;
  v35 = *&v1[v33];
  if (v35 >> 62)
  {
    goto LABEL_15;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
    while (v36 >= 1)
    {

      v37 = 0;
      while (1)
      {
        v38 = (v35 & 0xC000000000000001) != 0 ? sub_188E494B4(v37, v35) : *(v35 + 8 * v37 + 32);
        v39 = v38;
        v40 = *&v34[v47];
        v41 = *&v38[OBJC_IVAR____UIMagicMorphDestination_transformView];
        v42 = v40;
        v43 = [v42 _value];
        v44 = [v42 _length];
        if (!v44)
        {
          break;
        }

        v45 = v44;
        v46 = *v43;

        if (v45 < 4)
        {
          goto LABEL_14;
        }

        ++v37;
        [v41 setCenter_];

        if (v36 == v37)
        {

          return;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v36 = sub_18A4A7F68();
      if (!v36)
      {
        return;
      }
    }

    __break(1u);
  }
}

id sub_188D81B18()
{
  v1 = [objc_allocWithZone(_UIShadowProperties) init];
  v2 = [v0 shadowSettings];
  if (!v2)
  {
    v5 = [v0 _destinationPreview];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 view];

      v8 = [(UIView *)v7 _typedStorage];
      sub_188A6852C(v10);

      if (v10[3])
      {
        sub_188A53994(v10, &v11);
        sub_188ACE668(v10);
      }

      else
      {
        sub_188A3F5FC(v10, &unk_1EA933EC0, &qword_18A65E090);
        v11 = 0u;
        v12 = 0u;
        v13 = 0;
      }

      if (*(&v12 + 1))
      {
        sub_188A3F5FC(&v11, &unk_1EA93C9A0, qword_18A6513A0);
        return v1;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }

    sub_188A3F5FC(&v11, &unk_1EA93C9A0, qword_18A6513A0);
    [v1 setRadius_];
    [v1 setOpacity_];
    return v1;
  }

  v3 = v2;
  [v2 radius];
  [v1 setRadius_];
  [v3 offset];
  [v1 setOffset_];
  v4 = [v3 color];
  [v1 setColor_];

  [v3 opacity];
  [v1 setOpacity_];

  return v1;
}

void sub_188D81DB4()
{
  v1 = [v0 _shadowProperties];
  if (v1)
  {
    v9 = v1;
    v2 = [v0 expanded];
    v3 = &selRef_expandedShadowStyle;
    if (!v2)
    {
      v3 = &selRef_collapsedShadowStyle;
    }

    if ([v0 *v3])
    {
      v4 = [v0 expanded];
      v5 = &selRef_expandedShadowIntensity;
      if (!v4)
      {
        v5 = &selRef_collapsedShadowIntensity;
      }

      [v0 *v5];
    }

    else
    {
      v6 = 0.0;
    }

    v8 = [v9 updatedShadowWithIntensity_];
    [v8 applyToView_];
  }

  else
  {
    v7 = [v0 layer];
    [v7 setShadowRadius_];

    v9 = [v0 layer];
    [v9 setShadowOpacity_];
  }
}

__n128 sub_188D81F20@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 alwaysCompact];
  v5 = &selRef_collapsedPreview;
  if (!v4)
  {
    v5 = &selRef_expandedPreview;
  }

  v6 = [v1 *v5];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 _outlineShape];
    [v8 cornerRadius];
    v10 = v9;
    v11 = [v8 cornerCurve];
    v12 = [v8 cornerMask];
    if (([v2 alwaysCompact] & 1) == 0)
    {
      v13 = *MEMORY[0x1E69796E8];

      v12 = 15;
      v11 = v13;
    }

    v14 = [v7 parameters];
    v15 = [v14 visiblePath];

    if (v15)
    {
    }

    else if (v10 == 0.0)
    {
      v16 = [v2 traitCollection];
      v17 = [v16 userInterfaceIdiom];

      v18 = _UIContextMenuGetPlatformMetrics(v17);
      v19 = 13.0;
      if (([v2 alwaysCompact] & 1) == 0)
      {
        [v18 previewPlatterCornerRadius];
        v19 = v20;
      }

      if (v10 <= v19)
      {
        v10 = v19;
      }
    }

    if ([v2 alwaysCompact])
    {
      v21 = [v2 morphView];
      [v21 bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v41.origin.x = v23;
      v41.origin.y = v25;
      v41.size.width = v27;
      v41.size.height = v29;
      Width = CGRectGetWidth(v41);
      [v7 size];
      v10 = v10 * (Width / v31);
      v12 = 15;
    }

    _UICACornerRadiiMakeWithRadiusAndMask(v12, &v37, v10);
    v35 = v38;
    v36 = v37;
    v33 = v40;
    v34 = v39;
  }

  else
  {
    CACornerRadiiMake_0(&v37);
    v35 = v38;
    v36 = v37;
    v33 = v40;
    v34 = v39;
    v11 = *MEMORY[0x1E69796E8];
  }

  *a1 = v36;
  *(a1 + 16) = v35;
  result = v33;
  *(a1 + 32) = v34;
  *(a1 + 48) = v33;
  *(a1 + 64) = v11;
  return result;
}

void sub_188D82378()
{
  v3 = v0;
  v196 = *MEMORY[0x1E69E9840];
  v160 = [v0 resolvedSourcePreview];
  v4 = [v0 uiController];
  v5 = [v4 menuView];

  v152 = v5;
  v151 = [v5 rootListView];
  v158 = [v3 contentPlatterView];
  v6 = [v3 uiController];
  v156 = [v6 platterContainerView];

  LODWORD(v6) = [v3 isDismissTransition];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v186 = 0;
  v8 = sub_188D83DBC(v194);
  v9 = &selRef_allowsTickValuesOnly;
  v153 = v7;
  v154 = v3;
  v157 = v6;
  if ((v6 & 1) == 0)
  {
    v27 = [v3 presentationAlongsideAnimator];
    v28 = *(v7 + 16);
    *(v7 + 16) = v27;

    v29 = [v3 morphPreviewFromAttachmentPoint];
    if (!v29)
    {
      v29 = v160;
      if (!v158)
      {
        goto LABEL_18;
      }

      v30 = v158;
      if (![v30 alwaysCompact] || (objc_msgSend(v29, sel__sourceViewIsInViewHierarchy) & 1) != 0)
      {

LABEL_18:
        if ([v3 sourcePreviewMorphsToMenu])
        {
          v31 = objc_opt_self();
          v32 = swift_allocObject();
          *(v32 + 16) = v3;
          *(v32 + 24) = v29;
          *&v189[0] = sub_188D71D5C;
          *(&v189[0] + 1) = v32;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v188 = sub_188A4A8F0;
          *(&v188 + 1) = &block_descriptor_46_3;
          v33 = _Block_copy(&aBlock);
          v29 = v29;
          v34 = v3;

          [v31 _performWithoutRetargetingAnimations_];
          _Block_release(v33);
        }

        goto LABEL_36;
      }

      v50 = [v29 target];
      v51 = [v29 retargetedPreviewWithTarget_];

      [v51 _setSourceHostingBehavior_];
      v29 = v51;
    }

LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18A64B710;
    *(v2 + 32) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9409F8, &qword_18A675D48);
    v52 = swift_allocObject();
    *(v52 + 32) = v158;
    *(v52 + 40) = v151;
    v155 = MEMORY[0x1E69E7CC0];
    *&aBlock = MEMORY[0x1E69E7CC0];
    v53 = v158;
    v54 = v151;
    for (i = 0; i != 2; ++i)
    {
      v56 = *(v52 + 8 * i + 32);
      if (v56)
      {
        v57 = v56;
        MEMORY[0x18CFE2450]();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
        v155 = aBlock;
      }
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0, &qword_18A653940);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v146 = 0;
    v147 = 0;
    v191 = v194[6];
    v192 = v194[7];
    v193 = v195;
    v189[0] = v194[2];
    v189[1] = v194[3];
    v189[2] = v194[4];
    v190 = v194[5];
    v149 = 1;
    aBlock = v194[0];
    v188 = v194[1];
    goto LABEL_46;
  }

  v9 = &selRef__isDictationButtonVisible;
  v149 = [v3 _isDismissingToDrag];
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = &v186;
  *(v11 + 24) = v3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_18921C3EC;
  *(v12 + 24) = v11;
  v147 = v11;
  *&v189[0] = sub_188E3FE50;
  *(&v189[0] + 1) = v12;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v188 = sub_188A4A968;
  *(&v188 + 1) = &block_descriptor_56_2;
  v13 = _Block_copy(&aBlock);
  v14 = v3;

  [v10 performWithoutAnimation_];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_155;
  }

  v16 = [v14 dismissalAlongsideAnimator];
  v17 = *(v7 + 16);
  *(v7 + 16) = v16;

  [v14 _dismissedMenuLayout];
  v181 = v173;
  v182 = v174;
  v183 = v175;
  v184 = v176;
  v177 = v169;
  v178 = v170;
  v179 = v171;
  v180 = v172;
  sub_189114EFC(&v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9409F8, &qword_18A675D48);
  v18 = swift_allocObject();
  *(v18 + 32) = v158;
  *(v18 + 40) = v151;
  v19 = MEMORY[0x1E69E7CC0];
  *&aBlock = MEMORY[0x1E69E7CC0];
  v20 = v158;
  v21 = v151;
  v22 = 0;
  do
  {
    v23 = v22 + 4;
    while (1)
    {
      v24 = *(v18 + 8 * v23);
      v25 = v24;
      v26 = [v25 window];
      if (v26)
      {
        break;
      }

LABEL_6:
      if (++v23 == 6)
      {
        goto LABEL_20;
      }
    }

    if (!v24)
    {
      goto LABEL_6;
    }

    MEMORY[0x18CFE2450]();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    v22 = v23 - 3;
    sub_18A4A75F8();
    v19 = aBlock;
  }

  while (v23 != 5);
LABEL_20:
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0, &qword_18A653940);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v19 >> 62)
  {
    goto LABEL_158;
  }

  sub_18A4A8738();
  v2 = v19;
  while (2)
  {
    v3 = v154;

    v35 = [v14 morphPreviewFromAttachmentPoint];
    v7 = v153;
    if (v35)
    {
LABEL_23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_18A64B710;
      v155 = v36;
      *(v36 + 32) = v35;
    }

    else
    {
      if (v186)
      {
        v47 = v186;
        v35 = v47;
        if ((v149 & 1) == 0 && ([v47 _isLikelyOpaque] & 1) == 0)
        {
          v48 = [v35 parameters];
          v49 = [objc_opt_self() clearColor];
          [v48 _setOverrideBackgroundColor_];
        }

        goto LABEL_23;
      }

      v155 = MEMORY[0x1E69E7CC0];
    }

    v37 = [v14 uiController];
    [v37 endSourcePreviewHidingIfNeeded];

    if ([v14 *(v9 + 104)])
    {
      v9 = &selRef_allowsTickValuesOnly;
      if (v186)
      {
        *&v192 = 0;
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        memset(v189, 0, sizeof(v189));
        aBlock = 0u;
        v38 = v186;
        _UIContextMenuGetFromPreview(v38, &aBlock, v189, (&v189[2] + 8), v156);
        __asm { FMOV            V0.2D, #0.5 }

        *(&v189[1] + 8) = _Q0;
        v168 = v192;
        v161 = aBlock;
        v162 = v188;
        v166 = v190;
        v167 = v191;
        v163 = v189[0];
        v164 = v189[1];
        v165 = v189[2];
        v44 = 1.0;
        if ([v38 _previewMode] != 4)
        {
          v45 = [v14 uiController];
          v46 = [v45 flocker];

          if (v46)
          {
          }

          else
          {
            v44 = 0.8;
          }
        }

        [v38 _setPreviewMode_];
        v58 = [v38 view];
        v189[2] = v165;
        v190 = v166;
        v191 = v167;
        *&v192 = v168;
        aBlock = v161;
        v188 = v162;
        v189[0] = v163;
        v189[1] = v164;
        *(&v192 + 1) = v44;
        _UIContextMenuItemLayoutApply(&aBlock, v58, 0);
      }

      v191 = v183;
      v192 = v184;
      v193 = v185;
      v189[0] = v179;
      v189[1] = v180;
      v189[2] = v181;
      v190 = v182;
      aBlock = v177;
      v188 = v178;
      v146 = sub_18921C3EC;
    }

    else
    {
      v191 = v183;
      v192 = v184;
      v193 = v185;
      v189[0] = v179;
      v189[1] = v180;
      v189[2] = v181;
      v190 = v182;
      aBlock = v177;
      v188 = v178;
      v146 = sub_18921C3EC;
      v9 = 0x1E713D000;
    }

LABEL_46:
    v1 = &selRef_minimumContainerInsets;
    v59 = [v3 morphAnimation];
    if (!v59)
    {
      type metadata accessor for _UILiquidMorphAnimation();
      v69 = objc_allocWithZone(v68);

      _UILiquidMorphAnimation.init(morphables:)(v70);
      v72 = v71;
      [v3 setMorphAnimation_];

      goto LABEL_56;
    }

    v60 = [v3 morphAnimation];
    if (!v60)
    {
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
      goto LABEL_194;
    }

    v61 = v60;
    v62 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations;
    swift_beginAccess();
    v63 = *&v61[v62];

    if (v63 >> 62)
    {
      goto LABEL_153;
    }

    v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:

    if (v64)
    {
      goto LABEL_56;
    }

    v65 = [v3 v1[190]];
    if (!v65)
    {
      goto LABEL_196;
    }

    v14 = v65;
    v66 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations;
    swift_beginAccess();
    v67 = *(v14 + v66);
    if (v67 >> 62)
    {
      goto LABEL_178;
    }

    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

LABEL_179:
    if (v2 >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088, &qword_18A65DB18);
      v136 = sub_18A4A83B8();
    }

    else
    {
      v135 = v2 & 0xFFFFFFFFFFFFFF8;

      sub_18A4A8738();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088, &qword_18A65DB18);
      v136 = v2;
      if (!swift_dynamicCastMetatype())
      {
        v137 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v136 = v2;
        if (v137)
        {
          v138 = v135 + 32;
          while (swift_dynamicCastObjCProtocolConditional())
          {
            v138 += 8;
            if (!--v137)
            {
              v136 = v2;
              goto LABEL_181;
            }
          }

          v136 = v135 | 1;
        }
      }
    }

LABEL_181:
    *(v14 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_currentMorphables) = v136;

LABEL_56:
    v73 = [v3 v1[190]];
    if (!v73)
    {
      __break(1u);
LABEL_190:
      __break(1u);
    }

    v74 = v73;
    v75 = *&v73[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedGroupCompletion];

    v145 = v75;
    [v75 increment];
    if (v186)
    {
      v76 = [v186 target];
      isEscapingClosureAtFileLocation = [v76 container];
    }

    else
    {
      isEscapingClosureAtFileLocation = 0;
    }

    v159 = v157 ^ 1;
    v77 = [v3 uiController];
    v78 = [v77 platterTransitionView];

    if (isEscapingClosureAtFileLocation)
    {
      if (v78)
      {
        sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
        v79 = sub_18A4A7C88();
      }

      else
      {
        v79 = 0;
      }

      v78 = isEscapingClosureAtFileLocation;
LABEL_67:
    }

    else
    {
      if (v78)
      {
        v79 = 0;
        goto LABEL_67;
      }

      v79 = 1;
    }

    LODWORD(v148) = v79;
    if (![v3 *(v9 + 544)] || (v79 & 1) != 0)
    {
      v81 = [v3 v1[190]];
      if (!v81)
      {
        goto LABEL_192;
      }

      v82 = v81;
      v83 = swift_allocObject();
      *(v83 + 16) = v159;
      *(v83 + 24) = v156;
      *(v83 + 32) = v7;
      LOWORD(v177) = 0;
      *(&v177 + 1) = 0;
      *&v178 = 0;
      BYTE8(v178) = 1;
      *&v179 = 0;
      BYTE8(v179) = 1;
      swift_retain_n();
      v84 = v156;
      sub_1891CF2E4(v155, &v177, sub_18921C9F0, v7, sub_18921C9F8, v83);

      goto LABEL_90;
    }

    if (v157)
    {
      v80 = [v3 stashedDismissalPivot];
      if (!v80)
      {
        v80 = [v3 sourcePreview];
        if (!v80)
        {
LABEL_77:
          v80 = v160;
        }
      }
    }

    else
    {
      v80 = [v3 sourcePreview];
      if (!v80)
      {
        goto LABEL_77;
      }
    }

    v14 = v80;
    v85 = [v3 v1[190]];
    if (!v85)
    {
      goto LABEL_193;
    }

    v12 = v85;
    if (v2 >> 62)
    {
      goto LABEL_156;
    }

    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_157:
      __break(1u);
LABEL_158:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A00, &unk_18A652778);
      v2 = sub_18A4A83B8();

      continue;
    }

    break;
  }

  while (2)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      isEscapingClosureAtFileLocation = sub_188E4A284(0, v2);
LABEL_84:
      v86 = v155;
      if (v155 >> 62)
      {
        v87 = sub_18A4A7F68();
        v86 = v155;
        if (v87)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v87 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v87)
        {
LABEL_86:
          if ((v86 & 0xC000000000000001) != 0)
          {
            goto LABEL_163;
          }

          if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v88 = *(v86 + 32);
            swift_unknownObjectRetain();
            goto LABEL_89;
          }

          __break(1u);
LABEL_165:
          v127 = v87;
          v115 = sub_18A4A7F68();
          v87 = v127;
          v114 = v148;
          if (v115)
          {
            goto LABEL_128;
          }

          goto LABEL_166;
        }
      }

      __break(1u);
      goto LABEL_162;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      isEscapingClosureAtFileLocation = *(v2 + 32);
      swift_unknownObjectRetain();
      goto LABEL_84;
    }

LABEL_162:
    __break(1u);
LABEL_163:
    v88 = sub_188E4A284(0, v86);
LABEL_89:
    v89 = swift_allocObject();
    *(v89 + 16) = v159;
    *(v89 + 24) = v156;
    *(v89 + 32) = v7;
    swift_retain_n();
    v90 = v156;
    sub_1891D0198(isEscapingClosureAtFileLocation, v88, v14, sub_18921C370, v7, sub_18921C3CC, v89);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v1 = &selRef_minimumContainerInsets;
LABEL_90:
    v91 = [v3 v1[190]];
    if (!v91)
    {
      goto LABEL_190;
    }

    isEscapingClosureAtFileLocation = v91;
    v92 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_reparentingViews;
    swift_beginAccess();
    v14 = *(isEscapingClosureAtFileLocation + v92);

    v150 = v2;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v93 = 0;
      v94 = 0;
      v3 = 0;
      v14 = sub_18A4A8338() | 0x8000000000000000;
    }

    else
    {
      v95 = -1 << *(v14 + 32);
      v93 = v14 + 64;
      v94 = ~v95;
      v96 = -v95;
      if (v96 < 64)
      {
        v97 = ~(-1 << v96);
      }

      else
      {
        v97 = -1;
      }

      v3 = v97 & *(v14 + 64);
    }

    v7 = 0;
    v1 = ((v94 + 64) >> 6);
    v2 = &selRef_setUndockedWithOffset_animated_;
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_104;
    }

    while (1)
    {
      v98 = v7;
      v99 = v3;
      v9 = v7;
      if (!v3)
      {
        while (1)
        {
          v9 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            break;
          }

          if (v9 >= v1)
          {
            goto LABEL_108;
          }

          v99 = *(v93 + 8 * v9);
          ++v98;
          if (v99)
          {
            goto LABEL_102;
          }
        }

        __break(1u);
        goto LABEL_123;
      }

LABEL_102:
      isEscapingClosureAtFileLocation = (v99 - 1) & v99;
      v100 = *(*(v14 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v99)))));
      if (!v100)
      {
        break;
      }

      while (1)
      {
        [v100 setUserInteractionEnabled_];

        v7 = v9;
        v3 = isEscapingClosureAtFileLocation;
        if ((v14 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_104:
        if (sub_18A4A8378())
        {
          v102 = v101;
          swift_unknownObjectRelease();
          *&v169 = v102;
          type metadata accessor for _UIReparentingView();
          swift_dynamicCast();
          v100 = v177;
          v9 = v7;
          isEscapingClosureAtFileLocation = v3;
          if (v177)
          {
            continue;
          }
        }

        goto LABEL_108;
      }
    }

LABEL_108:
    v103 = sub_1891D7EE8(v14);
    v9 = v153;
    v3 = v154;
    v7 = v150;
    if (v152)
    {
      v183 = v191;
      v184 = v192;
      v185 = v193;
      v179 = v189[0];
      v180 = v189[1];
      v181 = v189[2];
      v182 = v190;
      v177 = aBlock;
      v178 = v188;
      if (sub_188D749E4(&v177) != 1)
      {
        v104 = v152;
        v169 = v177;
        v170 = v178;
        v171 = v179;
        v172 = v180;
        v173 = v181;
        v174 = v182;
        v175 = v183;
        v176 = v184;
        _UIContextMenuItemLayoutApply(&v169, v104, 0);
        [v104 layoutIfNeeded];
      }
    }

    [v154 _setBackgroundVisible_];
    v105 = [v154 animationProgress];
    v106 = v105;
    v107 = 1.0;
    if (v157)
    {
      v107 = 0.0;
    }

    [v105 setValue_];

    v108 = [v154 _accessoryViews];
    sub_188A34624(0, &qword_1EA930348, off_1E70EB308);
    isEscapingClosureAtFileLocation = sub_18A4A7548();

    if (!(isEscapingClosureAtFileLocation >> 62))
    {
      v12 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_124;
      }

      goto LABEL_115;
    }

LABEL_123:
    v12 = sub_18A4A7F68();
    if (!v12)
    {
      goto LABEL_124;
    }

LABEL_115:
    if (v12 < 1)
    {
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      if (!sub_18A4A7F68())
      {
        goto LABEL_157;
      }

      continue;
    }

    break;
  }

  v109 = 0;
  v1 = (isEscapingClosureAtFileLocation & 0xC000000000000001);
  do
  {
    if (v1)
    {
      v110 = sub_188E4B4C4(v109, isEscapingClosureAtFileLocation);
    }

    else
    {
      v110 = *(isEscapingClosureAtFileLocation + 8 * v109 + 32);
    }

    v111 = v110;
    ++v109;
    [v3 _updateAccessoryAttachment_];
  }

  while (v12 != v109);
LABEL_124:

  v14 = &selRef_minimumContainerInsets;
  if ((v148 & 1) == 0)
  {
    goto LABEL_167;
  }

  [v156 setAlpha_];
  v112 = [v3 morphAnimation];
  if (!v112)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v113 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations;
  v148 = v112;
  swift_beginAccess();
  v114 = v148;
  v87 = *&v148[v113];
  if (v87 >> 62)
  {
    goto LABEL_165;
  }

  v115 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v115)
  {
LABEL_128:
    v142 = v87;
    v143 = v87 & 0xC000000000000001;
    v139 = v87 + 32;
    v140 = v87 & 0xFFFFFFFFFFFFFF8;

    v116 = 0;
    v141 = v115;
    while (1)
    {
      if (v143)
      {
        v117 = sub_188E4A0E4(v116, v142);
      }

      else
      {
        if (v116 >= *(v140 + 16))
        {
          __break(1u);
LABEL_178:
          if (!sub_18A4A7F68())
          {
            goto LABEL_179;
          }

LABEL_54:

          goto LABEL_56;
        }

        v117 = *(v139 + 8 * v116);
      }

      v118 = v117;
      _VF = __OFADD__(v116, 1);
      v119 = v116 + 1;
      if (_VF)
      {
        goto LABEL_152;
      }

      v144 = v119;
      v120 = *&v117[OBJC_IVAR____UIMagicMorphAnimation_morphView];
      v121 = OBJC_IVAR____UIMagicMorphView_destinations;
      swift_beginAccess();
      v122 = *(v120 + v121);
      if (v122 >> 62)
      {
        v123 = sub_18A4A7F68();
      }

      else
      {
        v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v123)
      {
        v3 = 0;
        v9 = v122 & 0xC000000000000001;
        while (1)
        {
          if (v9)
          {
            v124 = sub_188E494B4(v3, v122);
          }

          else
          {
            if (v3 >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_151;
            }

            v124 = *(v122 + 8 * v3 + 32);
          }

          v7 = v124;
          v125 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
          v1 = [*(v7 + OBJC_IVAR____UIMagicMorphDestination_preview) view];
          v2 = [v160 view];
          v126 = sub_18A4A7C88();

          if (v126)
          {

            sub_1890DEC38();

            v3 = v154;
            v14 = 0x1E718D000;
            goto LABEL_167;
          }

          ++v3;
          if (v125 == v123)
          {
            goto LABEL_129;
          }
        }

        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        v64 = sub_18A4A7F68();
        goto LABEL_50;
      }

LABEL_129:

      v116 = v144;
      v9 = v153;
      v3 = v154;
      v7 = v150;
      v14 = 0x1E718D000;
      if (v144 == v141)
      {

        goto LABEL_167;
      }
    }
  }

LABEL_166:

LABEL_167:
  if (!((v158 == 0) | v149 & 1))
  {
    v128 = v158;
    [v128 setHideChromeWhenCollapsed_];
    [v128 setCollapsedShadowIntensity_];
  }

  v129 = [v3 uiController];
  v130 = [v129 flocker];

  if (!v130)
  {

LABEL_176:
    [v145 complete];

    v134 = v186;

    sub_188A55B8C(v146, v147);
    return;
  }

  if ((v157 & 1) == 0)
  {

    [v130 flock];
LABEL_175:

    goto LABEL_176;
  }

  v131 = [v3 *(v14 + 1520)];
  if (v131)
  {
    v132 = v131;

    v133 = *&v132[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedGroupCompletion];

    [v130 setGroupCompletion_];
    [v130 unflockToDrag:objc_msgSend(v3 animated:{sel__isDismissingToDrag), 1}];
    goto LABEL_175;
  }

LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
}

uint64_t sub_188D83CEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188D83D38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188D83D78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_188D83DBC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

id sub_188D83DDC()
{
  v1 = [v0 resolvedSourcePreview];
  v2 = [v1 target];
  v3 = [v2 container];

  v4 = [v3 window];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v0 uiController];
  v6 = [v5 menuStyle];

  [v6 _preferredMenuAttachmentPoint];
  v8 = v7;
  v10 = v9;

  if (_UICGPointIsNull(v8, v10))
  {
    if (![v0 isCompactMenu] || (objc_msgSend(v0, sel_sourcePreviewMorphsToMenu) & 1) != 0)
    {
LABEL_5:

      return 0;
    }

    v12 = [v1 target];
    [v12 center];
    v8 = v13;
    v10 = v14;
  }

  v15 = [v0 uiController];
  v16 = [v15 platterContainerView];

  v17 = [v1 target];
  v18 = [v17 container];

  [v18 convertPoint:v16 toCoordinateSpace:{v8, v10}];
  v20 = v19;
  v22 = v21;

  v23 = [objc_allocWithZone(UIPreviewTarget) initWithContainer:v16 center:{v20, v22}];
  v24 = [objc_allocWithZone(UIView) initWithFrame_];
  v25 = [v16 traitCollection];
  v26 = [v25 userInterfaceStyle];

  [v24 setOverrideUserInterfaceStyle_];
  v27 = [v24 layer];
  [v27 setCornerRadius_];

  v28 = [objc_allocWithZone(UIPreviewParameters) init];
  v29 = [objc_opt_self() clearColor];
  [v28 setBackgroundColor_];

  v30 = [objc_allocWithZone(UITargetedPreview) initWithView:v24 parameters:v28 target:v23];
  return v30;
}

void sub_188D84160(void *a1, uint64_t a2)
{
  v3 = [a1 uiController];
  [v3 hideSourcePreview_];
}

id sub_188D841C4()
{
  v1 = OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject____lazy_storage___assertionController;
  v2 = *(v0 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject____lazy_storage___assertionController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCE5UIKitCSo6UIViewP33_DB0EE11DEDEE6C8426C15FCDB740980229AlphaOverrideAssertionSubject____lazy_storage___assertionController);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIAssertionController) initWithAssertionSubject_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id _SharedAssertionLogger()
{
  if (qword_1ED49EE98 != -1)
  {
    dispatch_once(&qword_1ED49EE98, &__block_literal_global_337);
  }

  v1 = _MergedGlobals_1166;

  return v1;
}

double sub_188D84318()
{
  [v0 alpha];
  if (v1 == 0.0)
  {
    if (![v0 backgroundSuppressionAssertion])
    {
      v2 = [v0 sourceView];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 _suppressBackground];
      }

      else
      {
        v4 = 0;
      }

      [v0 setBackgroundSuppressionAssertion_];
    }

    swift_unknownObjectRelease();
  }

  else
  {

    [v0 setBackgroundSuppressionAssertion_];
  }

  return result;
}

uint64_t sub_188D8440C()
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v1 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v2 = sub_188C4E254(&type metadata for SwiftUIGlassInfoTraitDefinition, sub_188C4E57C, 0);
  os_unfair_lock_unlock(v1[2]);
  v3 = [v0 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9332F8, &unk_18A648D80);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

id sub_188D845C8()
{
  v1 = OBJC_IVAR____UIMagicMorphAnimation____lazy_storage___geometryTrackingDisplayLink;
  v2 = *(v0 + OBJC_IVAR____UIMagicMorphAnimation____lazy_storage___geometryTrackingDisplayLink);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____UIMagicMorphAnimation____lazy_storage___geometryTrackingDisplayLink);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIWeakDisplayLinkTarget) initWithTarget:v0 action:sel_geometryTrackingDisplayLinkDidFire_];
    v5 = [objc_opt_self() displayLinkAction];
    v6 = [objc_opt_self() displayLinkWithTarget:v4 selector:v5];
    [v6 setPaused_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void UIMM_HFR(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __UIMM_HFR_block_invoke;
  v3[3] = &unk_1E70F0F78;
  v4 = a1;
  v1 = a1;
  [UIView _modifyAnimationsByDecomposingGeometricTypes:1 animations:v3];
  v2 = v4;
}

void UIMM_HFR_0(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __UIMM_HFR_block_invoke_0;
  v3[3] = &unk_1E70F0F78;
  v4 = a1;
  v1 = a1;
  [UIView _modifyAnimationsByDecomposingGeometricTypes:1 animations:v3];
  v2 = v4;
}

void sub_188D849D4()
{
  v1 = *(v0 + OBJC_IVAR____UIMagicMorphAnimation_currentItem);
  if (!v1)
  {
    return;
  }

  v2 = *&v1[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
  v3 = v1[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_tracksPresentationLayer];
  v4 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView;
  v5 = *&v1[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView];
  if (v5)
  {
    v6 = *&v1[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView];
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____UIMagicMorphAnimation_morphView);
  }

  v7 = v1;
  v8 = v2;
  v9 = v5;
  if ([v8 _sourceViewIsInViewHierarchy])
  {
    v10 = [v8 view];
    v11 = [v10 superview];

    if (v11)
    {
      v12 = [v8 view];
      v13 = v12;
      if (!v3)
      {
        goto LABEL_24;
      }

      v14 = v7;
      v15 = [v12 _outermostLayer];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 presentationLayer];

        v7 = v14;
        if (v17)
        {
          v18 = v17;
LABEL_26:
          v107 = v7;
          v43 = v18;
          [v43 position];
          v45 = v44;
          v47 = v46;
          [v43 anchorPoint];
          v49 = v48;
          v51 = v50;
          [v43 bounds];
          v53 = _UIRectOriginAdjustedForAnchorPoint(v45, v47, v49, v51, v52);
          v55 = v54;
          [v43 bounds];
          v57 = v56;
          v59 = v58;
          [v13 _cropInsets];
          v64 = UIRectInset(v53, v55, v57, v59, v60, v63, v62, v61);
          v66 = v65;
          v68 = v67;
          if (*&v1[v4])
          {
            v69 = swift_allocObject();
LABEL_28:
            Center = UIRectGetCenter(v64, v66, v68);
            v72 = 0;
LABEL_29:
            *(v69 + 16) = Center;
            *(v69 + 24) = v71;
            v73 = (~*&Center & 0x7FF0000000000000) != 0 || (*&Center & 0xFFFFFFFFFFFFFLL) == 0;
            if (!v73 || ((~v71 & 0x7FF0000000000000) == 0 ? (v74 = (v71 & 0xFFFFFFFFFFFFFLL) == 0) : (v74 = 1), !v74))
            {
              [v6 center];
              *(v69 + 16) = v75;
              *(v69 + 24) = v76;
            }

            v105 = objc_opt_self();
            v77 = swift_allocObject();
            v77[2] = v6;
            v77[3] = v69;
            v77[4] = v8;
            v77[5] = v43;
            v77[6] = v13;
            v77[7] = v72;
            *&v123 = sub_188D7BE38;
            *(&v123 + 1) = v77;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v122 = sub_188A4A8F0;
            *(&v122 + 1) = &block_descriptor_79_0;
            v78 = _Block_copy(&aBlock);
            v79 = v72;
            v80 = v8;
            v81 = v6;

            v82 = v13;

            *&v123 = signpost_c2_entryLock_start;
            *(&v123 + 1) = 0;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v122 = sub_188C3DD6C;
            *(&v122 + 1) = &block_descriptor_82_0;
            v83 = _Block_copy(&aBlock);
            [v105 _animateByRetargetingAnimations_completion_];

            _Block_release(v83);
            _Block_release(v78);

            return;
          }

          v72 = [v11 _window];
          v69 = swift_allocObject();
          if (!v72)
          {
            goto LABEL_28;
          }

          if ((v3 & 1) == 0)
          {
LABEL_55:
            [v11 convertPoint:0 toView:{UIRectGetCenter(v64, v66, v68)}];
            goto LABEL_29;
          }

          v84 = [v11 _outermostLayer];
          if (v84)
          {
            v85 = v84;
            v86 = [v84 presentationLayer];

            if (v86)
            {
              v87 = UIRectGetCenter(v64, v66, v68);
              v89 = v88;
              v90 = [v72 layer];
              [v86 convertPoint:v90 toLayer:{v87, v89}];
              v92 = v91;
              v94 = v93;

              Center = v92;
              v71 = v94;
              goto LABEL_29;
            }

            goto LABEL_55;
          }

LABEL_58:
          __break(1u);
          return;
        }

LABEL_24:
        v18 = [v13 _outermostLayer];
        if (!v18)
        {
          v18 = [v13 layer];
        }

        goto LABEL_26;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }
  }

  sub_18923B9EC(&aBlock);
  v114[0] = aBlock;
  v114[1] = v122;
  v114[2] = v123;
  v115 = v124;
  v19 = v125;
  v118 = v127;
  v119 = v128;
  *v120 = v129[0];
  *&v120[9] = *(v129 + 9);
  v117 = v126;
  v116 = v125;
  if (sub_188F36334(v114) != 1 && (v19 & 1) == 0)
  {

    return;
  }

  v106 = v7;
  v20 = [v8 target];
  v21 = [v20 container];

  v22 = [v8 target];
  [v22 center];
  v24 = v23;
  v26 = v25;

  v27 = [v8 overridePositionTrackingView];
  if (v27)
  {
    v28 = v27;

    [v28 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v24 = UIRectGetCenter(v30, v32, v34);
    v26 = v35;
    v21 = v28;
  }

  if (!v3)
  {
    goto LABEL_18;
  }

  v36 = [v21 _outermostLayer];
  if (!v36)
  {
    __break(1u);
    goto LABEL_57;
  }

  v37 = v36;
  v38 = [v36 presentationLayer];

  if (!v38)
  {
LABEL_18:
    v39 = [v21 _outermostLayer];
    if (!v39)
    {
      v39 = [v21 layer];
    }

    v38 = v39;
  }

  if (!*&v1[v4])
  {
    v40 = [v21 window];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 layer];
    }

    else
    {
      v42 = 0;
    }

    [v38 convertPoint:v42 toLayer:{v24, v26}];
    v24 = v95;
    v26 = v96;
  }

  v97 = swift_allocObject();
  *(v97 + 16) = v24;
  *(v97 + 24) = v26;
  if ((~*&v24 & 0x7FF0000000000000) == 0 && (*&v24 & 0xFFFFFFFFFFFFFLL) != 0 || (~*&v26 & 0x7FF0000000000000) == 0 && (*&v26 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    [v6 center];
    *(v97 + 16) = v98;
    *(v97 + 24) = v99;
  }

  v100 = objc_opt_self();
  v101 = swift_allocObject();
  *(v101 + 16) = v6;
  *(v101 + 24) = v97;
  v112 = sub_188F36350;
  v113 = v101;
  v108 = MEMORY[0x1E69E9820];
  v109 = 1107296256;
  v110 = sub_188A4A8F0;
  v111 = &block_descriptor_69_1;
  v102 = _Block_copy(&v108);
  v103 = v6;

  v112 = signpost_c2_entryLock_start;
  v113 = 0;
  v108 = MEMORY[0x1E69E9820];
  v109 = 1107296256;
  v110 = sub_188C3DD6C;
  v111 = &block_descriptor_72_2;
  v104 = _Block_copy(&v108);
  [v100 _animateByRetargetingAnimations_completion_];

  _Block_release(v104);
  _Block_release(v102);
}

uint64_t sub_188D85344()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188D85384()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188D853FC()
{
  v1 = *(v0 + 21);
  v2 = *(v1 + 16);
  v3 = 32;
  while (v2)
  {
    v4 = ~*(v1 + v3) & 0x7FF0000000000000;
    v3 += 8;
    --v2;
    if (!v4)
    {
LABEL_8:
      v9 = 1;
      return v9 & 1;
    }
  }

  v5 = *(v0 + 20);
  v6 = *(v5 + 16);
  v7 = 32;
  while (v6)
  {
    v8 = ~*(v5 + v7) & 0x7FF0000000000000;
    v7 += 8;
    --v6;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  sub_188D7EBC0(*(v0 + 19), v1);
  v19 = v10;

  sub_188D7EC98(v11);

  v12 = v0[18];

  sub_188D85638(v12);

  sub_188D7EC98(v13);

  sub_188D85564(v19, v5);
  v15 = *(v14 + 16);
  v16 = 32;
  while (v15)
  {
    v17 = ~*(v14 + v16) & 0x7FF0000000000000;
    v16 += 8;
    --v15;
    if (!v17)
    {
      v9 = 1;
      goto LABEL_14;
    }
  }

  v9 = sub_188BD69E4(MEMORY[0x1E69E7CC0], v14, 0.000001);
LABEL_14:

  return v9 & 1;
}

void sub_188D85564(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v3 <= v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    v7 = sub_18A4A75D8();
    *(v7 + 16) = v4;
    bzero((v7 + 32), 8 * v4);
    v8 = 0;
    v9 = a2 + 32;
    do
    {
      if (v8 >= v2)
      {
        if (v8 >= v3)
        {
          __break(1u);
          return;
        }

        v10 = *(v9 + 8 * v8);
      }

      else
      {
        v10 = *(a1 + 32 + 8 * v8);
        if (v8 < v3)
        {
          v10 = v10 + *(v9 + 8 * v8);
        }
      }

      *(v7 + 8 * v8++ + 32) = v10;
    }

    while (v4 != v8);
  }
}

void sub_188D85638(double a1)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_188D75E50(v2);
    }

    if (v3 > *(v2 + 2))
    {
      __break(1u);
      return;
    }

    if (v3 >= 4)
    {
      v4 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      v5 = (v2 + 48);
      v6 = v3 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v7 = vmulq_n_f64(*v5, a1);
        v5[-1] = vmulq_n_f64(v5[-1], a1);
        *v5 = v7;
        v5 += 2;
        v6 -= 4;
      }

      while (v6);
      if (v3 == v4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
    }

    v8 = v3 - v4;
    v9 = &v2[8 * v4 + 32];
    do
    {
      *v9 = *v9 * a1;
      ++v9;
      --v8;
    }

    while (v8);
LABEL_12:
    *v1 = v2;
  }
}

double sub_188D85708(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);

  return result;
}

void sub_188D857AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion);

    [v5 complete];
  }
}

unint64_t sub_188D85AE4()
{
  result = qword_1EA9310E8;
  if (!qword_1EA9310E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9310E8);
  }

  return result;
}

void sub_188D85B38(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1890DEA5C();
  v7 = v6;
  v8 = &selRef_presentationValue;
  if ((a2 & 1) == 0)
  {
    v8 = &selRef_value;
  }

  [v6 *v8];
  v10 = v9;

  if (*(v3 + OBJC_IVAR____UIMagicMorphView_crossBlurWhenMorphing) == 1)
  {
    _UILerp_1(v10, 4.0, 0.0);
    v11 = _UILerp_1(v10, 2.0, 1.0);
    v12 = v10;
    goto LABEL_21;
  }

  if (*(v3 + OBJC_IVAR____UIMagicMorphView_allDestinationsAreOpaque) != 1)
  {
LABEL_14:
    v11 = 1.0;
    v12 = fmin(v10 / 0.65, 1.0);
    if (v12 >= 0.0)
    {
      if ((~*&v12 & 0x7FF0000000000000) == 0 && (*&v12 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v12 = 0.0;
      }
    }

    else
    {
      v12 = 0.0;
    }

LABEL_21:
    v17 = *(a1 + OBJC_IVAR____UIMagicMorphDestination_transformView);
    CATransform3DMakeScale(&v38, v11, v11, 1.0);
    v39 = v38;
    if (a2)
    {
      v18 = sub_18A4A2D28();
      v19 = sub_18A4A7258();
      [v17 _setPresentationValue_forKey_];

      v20 = sub_18A4A2D28();
      v21 = sub_18A4A7258();
      [v17 _setPresentationValue_forKey_];

      v22 = *&v17[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView];
      if (v22)
      {
        v23 = *&v17[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView];
      }

      else
      {
        v32 = *&v17[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview];
        if (!v32)
        {
          goto LABEL_35;
        }

        v33 = [v32 view];
        if (!v33)
        {
          goto LABEL_35;
        }

        v23 = v33;
        v22 = 0;
      }

      v24 = v22;
      v25 = sub_18A4A7928();
      v26 = sub_18A4A7258();
      [v23 _setPresentationValue_forKey_];
    }

    else
    {
      v27 = v17;
      [v27 setAlpha_];
      v28 = [v27 layer];

      v29 = sub_18A4A2D28();
      v30 = sub_18A4A7258();
      [v28 setValue:v29 forKeyPath:v30];

      v31 = *&v27[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView];
      if (v31)
      {
        v26 = *&v27[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView];
      }

      else
      {
        v34 = *&v27[OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_sourcePreview];
        if (v34)
        {
          v26 = [v34 view];
        }

        else
        {
          v26 = 0;
        }
      }

      v35 = v31;
      v37 = v38;
      [v26 setTransform3D_];
    }

LABEL_35:
    return;
  }

  v13 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (v14 >> 62)
  {
    v15 = sub_18A4A7F68();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 1.0;
  if (!v15)
  {
    v11 = 1.0;
    goto LABEL_21;
  }

  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
LABEL_38:

    v36 = sub_188E494B4(v16, v14);
    swift_unknownObjectRelease();

    v11 = 1.0;
    if (v36 != a1)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = 1.0;
    if (*(v14 + 8 * v16 + 32) != a1)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void sub_188D86100(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>, double a7@<D0>)
{
  v8 = v7;
  v156 = a4;
  v157 = a2;
  v154 = a1;
  v155 = a6;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F8, &qword_18A650D90);
  v153 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v151 = &v147 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936810, &qword_18A650F58);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v147 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v147 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v147 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365F0, &qword_18A650D88);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v147 - v28;
  v152 = a3;
  *(v8 + 24) = a3;
  v30 = *(a5 + 16);
  if (v30)
  {
    v31 = *(v156 + 16);
    if (v31)
    {
      if (v31 != v30)
      {

        *(v8 + 32) = 0;

        *v8 = 0;
        *(v8 + 8) = 0;

        *(v8 + 16) = 0;
        sub_188AA72A8(v157, &v187);
        if (BYTE8(v188[4]))
        {
          if (BYTE8(v188[4]) == 2)
          {
            v32 = v187;
            v33 = BYTE8(v187);
            v34 = v155;
            *v155 = 0;
            *(v34 + 40) = 0;
            sub_188C84EF8();

            sub_18A4A49B8();
            v35 = *(v25 + 64);
            *(v34 + 8) = v32;
            *(v34 + 16) = a5;
            *(v34 + 24) = a5;
            *(v34 + 32) = a5;
            *(v34 + v35) = v33;
            swift_storeEnumTagMultiPayload();
LABEL_33:
            swift_bridgeObjectRetain_n();
            return;
          }

          sub_188AA7808(&v187);
          v50 = MEMORY[0x1E69E7CC0];
          v51 = v155;
          *v155 = a5;
          *(v51 + 8) = v50;
          goto LABEL_21;
        }

        v174 = v188[1];
        v175 = v188[2];
        v176 = v188[3];
        *&v177 = *&v188[4];
        v172 = v187;
        v173 = v188[0];
        v194 = 0u;
        v195 = 0u;
        v196 = 0u;
        v197 = 0uLL;
        BYTE8(v198) = 0;
        *&v198 = 0;
        v199 = 0uLL;
        BYTE8(v200) = 0;
        *&v200 = 0;
        DWORD2(v202) = 0;
        v201 = MEMORY[0x1E69E7CC0];
        *&v202 = 0;
        *&v203 = 0x3FF0000000000000;
        *(&v203 + 1) = a5;
        *(&v204 + 1) = a5;
        *&v204 = MEMORY[0x1E69E7CC0];
        *(&v205 + 1) = MEMORY[0x1E69E7CC0];
        *&v205 = a5;
        swift_bridgeObjectRetain_n();
        sub_188AA79A0(&v172, 1);
        if ((*(&v174 + 1) & 0x8000000000000000) == 0)
        {
          goto LABEL_42;
        }

        v44 = *&v177;
        if (*&v177 <= 0.0)
        {
          goto LABEL_42;
        }

        a7 = *&v172;
        sub_188D7EBC0(a5, a5);
        v46 = v45;
        v36 = *(v45 + 16);
        if (!v36)
        {
          v47 = v45;
LABEL_41:
          sub_188D85564(v204, v47);
          v66 = v65;

          *&v204 = v66;
LABEL_42:
          v67 = v203;
          v68 = v155;
          v155[8] = v202;
          v68[9] = v67;
          v69 = v205;
          v68[10] = v204;
          v68[11] = v69;
          v70 = v199;
          v68[4] = v198;
          v68[5] = v70;
          v71 = v201;
          v68[6] = v200;
          v68[7] = v71;
          v72 = v195;
          *v68 = v194;
          v68[1] = v72;
          v73 = v197;
          v68[2] = v196;
          v68[3] = v73;
          swift_storeEnumTagMultiPayload();
          return;
        }

        v47 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_188D75E50(v46);
        }

        if (v36 <= *(v47 + 2))
        {
          v48 = 6.28318531 / a7 * (6.28318531 / a7) * v44;
          if (v36 > 3)
          {
            v49 = v36 & 0x7FFFFFFFFFFFFFFCLL;
            v60 = (v47 + 48);
            v61 = v36 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v62 = vmulq_n_f64(*v60, v48);
              v60[-1] = vmulq_n_f64(v60[-1], v48);
              *v60 = v62;
              v60 += 2;
              v61 -= 4;
            }

            while (v61);
            if (v36 == v49)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v49 = 0;
          }

          v63 = v36 - v49;
          v64 = &v47[8 * v49 + 32];
          do
          {
            *v64 = v48 * *v64;
            ++v64;
            --v63;
          }

          while (v63);
LABEL_40:

          goto LABEL_41;
        }

        __break(1u);
        goto LABEL_120;
      }
    }
  }

  v149 = v27;
  v150 = v15;
  v15 = a5;
  v36 = v157;
  sub_188AA72A8(v157, &v187);
  if (BYTE8(v188[4]) == 2)
  {
    v37 = v187;
    v38 = BYTE8(v187);
    sub_188A3F29C(v154, v24, &qword_1EA936810, &qword_18A650F58);
    if ((*(v153 + 48))(v24, 1, v158) == 1)
    {
      v39 = v38;
      sub_188A3F5FC(v24, &qword_1EA936810, &qword_18A650F58);
      v40 = v15;
    }

    else
    {
      v40 = v15;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_188A3F704(v24, v29, &qword_1EA9365F0, &qword_18A650D88);
        sub_188EF7E8C(v37, v15);

        sub_188A3F704(v29, v155, &qword_1EA9365F0, &qword_18A650D88);
        swift_storeEnumTagMultiPayload();
        return;
      }

      v39 = v38;
      sub_188A3F5FC(v24, &qword_1EA9365F8, &qword_18A650D90);
    }

    v57 = v155;
    *v155 = 0;
    *(v57 + 40) = 0;
    sub_188C84EF8();

    sub_18A4A49B8();
    v58 = *(v25 + 64);
    v59 = v156;
    *(v57 + 8) = v37;
    *(v57 + 16) = v59;
    *(v57 + 24) = v59;
    *(v57 + 32) = v40;
    *(v57 + v58) = v39;
    swift_storeEnumTagMultiPayload();
    goto LABEL_33;
  }

  sub_188AA7808(&v187);
  sub_188AA72A8(v36, &v187);
  if (BYTE8(v188[4]) == 1)
  {
    v174 = v188[1];
    v175 = v188[2];
    v176 = v188[3];
    v172 = v187;
    v173 = v188[0];
    sub_188A5EBAC(&v172, &v187);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936558, &qword_18A650D08);
    swift_dynamicCast();
    sub_188A5EBAC((&v174 + 8), &v160);
    swift_dynamicCast();
    v41 = v159[0];
    v42 = v184;
    v43 = v155;
    *v155 = v184;
    *(v43 + 8) = v41;
    *(v43 + 16) = v41;
    *(v43 + 24) = xmmword_18A650B90;
    *(v43 + 40) = v42;
    swift_storeEnumTagMultiPayload();

LABEL_22:

    return;
  }

  sub_188AA7808(&v187);
  v52 = v158;
  v46 = v18;
  if (v152)
  {
    v44 = CACurrentMediaTime();
    v53 = v44 - *v8;
    if (a7 * 0.9 < v53)
    {
      if (*v8 != 0.0)
      {
        v18 = (v8 + 32);
        if (*(v8 + 32))
        {
          *&v187 = v15;
          v54 = *(v8 + 16);

          if (v54)
          {

            sub_188D7EBC0(v15, v54);
            v56 = v55;

            *&v187 = v56;
          }

          sub_188D85638(1.0 / v53);
          sub_188D85638(0.25);
          v74 = *v18;
          if (!*v18)
          {
            goto LABEL_57;
          }

          v25 = v187;
          v24 = *(v187 + 16);

          if (!v24)
          {
LABEL_56:
            sub_188D85564(v74, v25);
            v87 = v86;

            *v18 = v87;
LABEL_57:

            v52 = v158;
            goto LABEL_58;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_47:
            if (v24 > *(v25 + 16))
            {
              __break(1u);
LABEL_122:
              v125 = sub_188D75E50(v46);
              goto LABEL_105;
            }

            if (v24 > 3)
            {
              v75 = v24 & 0x7FFFFFFFFFFFFFFCLL;
              v76 = (v25 + 48);
              __asm { FMOV            V0.2D, #0.75 }

              v82 = v24 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v83 = vmulq_f64(*v76, _Q0);
                v76[-1] = vmulq_f64(v76[-1], _Q0);
                *v76 = v83;
                v76 += 2;
                v82 -= 4;
              }

              while (v82);
              if (v24 == v75)
              {
                goto LABEL_55;
              }
            }

            else
            {
              v75 = 0;
            }

            v84 = v24 - v75;
            v85 = (v25 + 8 * v75 + 32);
            do
            {
              *v85 = *v85 * 0.75;
              ++v85;
              --v84;
            }

            while (v84);
LABEL_55:
            v74 = *v18;
            goto LABEL_56;
          }

LABEL_120:
          v25 = sub_188D75E50(v25);
          goto LABEL_47;
        }

        *v18 = MEMORY[0x1E69E7CC0];
      }

LABEL_58:

      *(v8 + 8) = v156;
      *v8 = v44;
    }
  }

  v88 = *(v8 + 16);
  *(v8 + 16) = v15;
  sub_188A3F29C(v154, v21, &qword_1EA936810, &qword_18A650F58);
  v89 = *(v153 + 48);
  v90 = v89(v21, 1, v52);
  v148 = v15;
  if (v90 == 1)
  {

    v91 = &qword_1EA936810;
    v92 = &qword_18A650F58;
LABEL_63:
    sub_188A3F5FC(v21, v91, v92);
    v93 = v157;
    goto LABEL_64;
  }

  if (swift_getEnumCaseMultiPayload())
  {

    v91 = &qword_1EA9365F8;
    v92 = &qword_18A650D90;
    goto LABEL_63;
  }

  v113 = *(v21 + 7);
  v189 = *(v21 + 6);
  v190 = v113;
  v191 = *(v21 + 8);
  v114 = *(v21 + 3);
  v188[1] = *(v21 + 2);
  v188[2] = v114;
  v115 = *(v21 + 5);
  v188[3] = *(v21 + 4);
  v188[4] = v115;
  v116 = *(v21 + 1);
  v187 = *v21;
  v188[0] = v116;
  v117 = *(v21 + 18);
  v118 = *(v21 + 19);
  v119 = *(v21 + 20);
  *(v193 + 8) = *(v21 + 168);
  v120 = *(v21 + 23);
  *&v192 = v117;
  *(&v192 + 1) = v118;
  *(&v193[1] + 1) = v120;
  *&v193[0] = v119;
  v93 = v157;
  sub_188AA72A8(v157, &v184);
  if (v186 == 3 && v184 == 1)
  {
    v121 = vorrq_s8(vorrq_s8(*&v185[8], *&v185[40]), vorrq_s8(*&v185[24], *&v185[56]));
    if (!(*&vorr_s8(*v121.i8, *&vextq_s8(v121, v121, 8uLL)) | *v185 | *(&v184 + 1)))
    {
      v122 = v148;

      sub_188AA7808(&v184);

      *(&v192 + 1) = v122;
LABEL_118:
      v135 = v193[0];
      v136 = v193[1];
      v170 = v193[0];
      v171 = v193[1];
      v137 = v188[3];
      v138 = v188[4];
      v164 = v188[3];
      v165 = v188[4];
      v139 = v189;
      v140 = v190;
      v166 = v189;
      v167 = v190;
      v141 = v187;
      v142 = v188[0];
      v160 = v187;
      v161 = v188[0];
      v143 = v188[1];
      v144 = v188[2];
      v162 = v188[1];
      v163 = v188[2];
      v145 = v192;
      v168 = v191;
      v169 = v192;
      v146 = v155;
      v155[8] = v191;
      v146[9] = v145;
      v146[10] = v135;
      v146[11] = v136;
      v146[4] = v137;
      v146[5] = v138;
      v146[6] = v139;
      v146[7] = v140;
      *v146 = v141;
      v146[1] = v142;
      v146[2] = v143;
      v146[3] = v144;
      swift_storeEnumTagMultiPayload();
      v180 = v191;
      v181 = v192;
      v182 = v193[0];
      v183 = v193[1];
      v176 = v188[3];
      v177 = v188[4];
      v178 = v189;
      v179 = v190;
      v172 = v187;
      v173 = v188[0];
      v174 = v188[1];
      v175 = v188[2];
      sub_188A3F29C(&v160, v159, &qword_1EA936820, &qword_18A650F68);
      sub_188A3F5FC(&v172, &qword_1EA936820, &qword_18A650F68);
      return;
    }
  }

  sub_188AA7808(&v184);
  sub_188AA72A8(v93, &v160);
  if (BYTE8(v165))
  {
    sub_188AA7808(&v160);
    v180 = v191;
    v181 = v192;
    v182 = v193[0];
    v183 = v193[1];
    v176 = v188[3];
    v177 = v188[4];
    v178 = v189;
    v179 = v190;
    v172 = v187;
    v173 = v188[0];
    v174 = v188[1];
    v175 = v188[2];
    sub_188A3F5FC(&v172, &qword_1EA936820, &qword_18A650F68);
    v52 = v158;
LABEL_64:
    sub_188A3F29C(v154, v46, &qword_1EA936810, &qword_18A650F58);
    if (v89(v46, 1, v52) == 1)
    {
      v94 = &qword_1EA936810;
      v95 = &qword_18A650F58;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v96 = *(v46 + 8);
        sub_188AA72A8(v93, &v187);
        if (BYTE8(v188[4]) == 3 && (v97 = vorrq_s8(vorrq_s8(*(v188 + 8), *(&v188[2] + 8)), vorrq_s8(*(&v188[1] + 8), *(&v188[3] + 8))), !(*&vorr_s8(*v97.i8, *&vextq_s8(v97, v97, 8uLL)) | *&v188[0] | *(&v187 + 1) | v187)) || (sub_188AA7808(&v187), sub_188AA72A8(v93, &v187), BYTE8(v188[4]) == 3) && v187 == 1 && (v98 = vorrq_s8(vorrq_s8(*(v188 + 8), *(&v188[2] + 8)), vorrq_s8(*(&v188[1] + 8), *(&v188[3] + 8))), !(*&vorr_s8(*v98.i8, *&vextq_s8(v98, v98, 8uLL)) | *&v188[0] | *(&v187 + 1))))
        {

          sub_188AA7808(&v187);
          v99 = v155;
          *v155 = v148;
          *(v99 + 8) = v96;
LABEL_21:
          swift_storeEnumTagMultiPayload();
          goto LABEL_22;
        }

        sub_188AA7808(&v187);
        sub_188AA72A8(v93, &v187);
        if (!BYTE8(v188[4]))
        {

          sub_188D75474(v93, v156, v96, v148, v155);
          swift_bridgeObjectRelease_n();

LABEL_94:

          return;
        }

        sub_188AA7808(&v187);
LABEL_75:
        v100 = v150;
        sub_188A3F29C(v154, v150, &qword_1EA936810, &qword_18A650F58);
        if (v89(v100, 1, v52) == 1)
        {
          sub_188A3F5FC(v100, &qword_1EA936810, &qword_18A650F58);
          v101 = 0;
          v102 = v148;
        }

        else
        {
          v103 = v151;
          sub_188A3F29C(v100, v151, &qword_1EA9365F8, &qword_18A650D90);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v102 = v148;
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              v112 = v149;
              sub_188A3F704(v103, v149, &qword_1EA9365F0, &qword_18A650D88);
              v101 = sub_188EF5584();
              v111 = v150;
              v93 = v157;
              sub_188A3F5FC(v112, &qword_1EA9365F0, &qword_18A650D88);
            }

            else
            {
              v111 = v100;
              v101 = *(v103 + 8);
            }
          }

          else if (EnumCaseMultiPayload)
          {

            v111 = v150;

            v101 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v105 = *(v103 + 144);
            v191 = *(v103 + 128);
            v192 = v105;
            v106 = *(v103 + 176);
            v193[0] = *(v103 + 160);
            v193[1] = v106;
            v107 = *(v103 + 80);
            v188[3] = *(v103 + 64);
            v188[4] = v107;
            v108 = *(v103 + 112);
            v189 = *(v103 + 96);
            v190 = v108;
            v109 = *(v103 + 16);
            v187 = *v103;
            v188[0] = v109;
            v110 = *(v103 + 48);
            v188[1] = *(v103 + 32);
            v188[2] = v110;
            v111 = v100;
            v101 = *&v193[0];

            sub_188A3F5FC(&v187, &qword_1EA936820, &qword_18A650F68);
          }

          sub_188A3F5FC(v111, &qword_1EA9365F8, &qword_18A650D90);
        }

        sub_188D75474(v93, v156, v101, v102, v155);

        goto LABEL_94;
      }

      v94 = &qword_1EA9365F8;
      v95 = &qword_18A650D90;
    }

    sub_188A3F5FC(v46, v94, v95);
    goto LABEL_75;
  }

  v18 = v119;
  *&v185[16] = v162;
  *&v185[32] = v163;
  *&v185[48] = v164;
  *&v185[64] = v165;
  v184 = v160;
  *v185 = v161;
  v123 = *(&v162 + 1);
  v36 = v148;
  if ((v152 & 1) == 0)
  {
    if ((*(&v162 + 1) & 0x8000000000000000) != 0 && *&v185[56] > 0.0)
    {
      sub_188F0AC68(&v193[1], *(v8 + 32), *&v185[56]);
    }

    *(v8 + 32) = 0;
    *v8 = 0;
  }

  if ((v123 & 0x8000000000000000) == 0 || (v44 = *&v185[64], *&v185[64] <= 0.0) || !v88)
  {
LABEL_117:
    sub_188AA79A0(&v184, 0);

    *(&v192 + 1) = v36;
    goto LABEL_118;
  }

  a7 = *&v184;

  sub_188D7EBC0(v36, v88);
  v46 = v124;
  v15 = *(v124 + 16);
  if (!v15)
  {
    v125 = v124;
LABEL_116:
    sub_188D85564(v18, v125);
    v134 = v133;

    *&v193[0] = v134;
    goto LABEL_117;
  }

  v125 = v46;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_122;
  }

LABEL_105:
  if (v15 <= *(v125 + 2))
  {
    v126 = 6.28318531 / a7 * (6.28318531 / a7) * v44;
    if (v15 > 3)
    {
      v127 = v15 & 0x7FFFFFFFFFFFFFFCLL;
      v128 = (v125 + 48);
      v129 = v15 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v130 = vmulq_n_f64(*v128, v126);
        v128[-1] = vmulq_n_f64(v128[-1], v126);
        *v128 = v130;
        v128 += 2;
        v129 -= 4;
      }

      while (v129);
      if (v15 == v127)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v127 = 0;
    }

    v131 = v15 - v127;
    v132 = &v125[8 * v127 + 32];
    do
    {
      *v132 = v126 * *v132;
      ++v132;
      --v131;
    }

    while (v131);
LABEL_115:

    goto LABEL_116;
  }

  __break(1u);
}

void sub_188D872A4(uint64_t a1)
{
  v1 = sub_18A4A6E18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A6E58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  sub_188A34624(0, &qword_1ED490540, 0x1E69E9610);
  *&v111 = sub_18A4A7A68();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v114.m21 = sub_188D764D4;
  *&v114.m22 = v11;
  *&v114.m11 = MEMORY[0x1E69E9820];
  *&v114.m12 = 1107296256;
  *&v114.m13 = sub_188A4A8F0;
  *&v114.m14 = &block_descriptor_141_1;
  v12 = _Block_copy(&v114);

  sub_18A4A6E38();
  *&v114.m11 = MEMORY[0x1E69E7CC0];
  sub_188D7609C();
  *&v110 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0, &qword_18A64F960);
  sub_188BA3728();
  sub_18A4A7EB8();
  v13 = v111;
  MEMORY[0x18CFE29D0](0, v8, v4, v12);
  _Block_release(v12);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v110);
  v14 = sub_1890DF270();
  [v14 presentationValue];
  v16 = v15;

  v17 = sub_1890DF348();
  [v17 presentationValue];
  v19 = v18;

  v20 = sub_188C84C30();
  sub_188D70240(&selRef__presentationValue);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v103 = v24;
  v104 = v22;
  v105 = v19;
  v106 = v16;
  UIRectInset(0.0, 0.0, v16, v19, -v22, -v28, -v26, -v24);
  v30 = v29;
  v32 = v31;
  UIRectGetCenter(0.0, 0.0, v29);
  v33 = OBJC_IVAR____UIMagicMorphView_lock;
  v34 = *&v10[OBJC_IVAR____UIMagicMorphView_lock];

  os_unfair_lock_lock(v34 + 4);

  v35 = sub_18A4A7BC8();
  v36 = sub_18A4A7258();
  [v10 _setPresentationValue_forKey_];

  v37 = OBJC_IVAR____UIMagicMorphView_clippingView;
  v38 = *&v10[OBJC_IVAR____UIMagicMorphView_clippingView];
  v39 = sub_18A4A7BC8();
  v40 = sub_18A4A7258();
  [v38 _setPresentationValue_forKey_];

  v41 = *&v10[v37];
  v42 = sub_18A4A7BE8();
  v43 = sub_18A4A7258();
  [v41 _setPresentationValue_forKey_];

  v44 = sub_188C8530C();
  sub_188D62EA4([v44 _presentationValue], objc_msgSend(v44, sel__length), v113);

  v115.origin.x = 0.0;
  v115.origin.y = 0.0;
  v115.size.width = v30;
  v115.size.height = v32;
  v45 = CGRectGetWidth(v115) * 0.5;
  v116.origin.x = 0.0;
  v116.origin.y = 0.0;
  v116.size.width = v30;
  v116.size.height = v32;
  v46 = CGRectGetHeight(v116) * 0.5;
  if (v46 >= v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = v46;
  }

  v48 = v113[1];
  *&v111 = _UIClamp(v113[0], v47);
  *&v110 = _UIClamp(v48, v47);
  v49 = v113[3];
  v109 = _UIClamp(v113[2], v47);
  v50 = _UIClamp(v49, v47);
  v51 = v113[5];
  v52 = _UIClamp(v113[4], v47);
  v53 = _UIClamp(v51, v47);
  v54 = v113[7];
  v55 = _UIClamp(v113[6], v47);
  v56 = _UIClamp(v54, v47);
  v57 = objc_opt_self();
  *&v114.m11 = v111;
  *&v114.m12 = v110;
  v114.m13 = v109;
  v114.m14 = v50;
  v114.m21 = v52;
  v114.m22 = v53;
  v114.m23 = v55;
  v114.m24 = v56;
  v58 = [v57 valueWithCACornerRadii_];
  v59 = sub_18A4A7258();
  [v10 _setPresentationValue_forKey_];

  v60 = *&v10[v37];
  v61 = sub_18A4A7258();
  [v60 _setPresentationValue_forKey_];

  v62 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v63 = *&v10[v62];
  if (*&v63 >> 62)
  {
    v98 = *&v10[v62];
    v99 = sub_18A4A7F68();
    v63 = v98;
    v64 = v99;
    if (v99)
    {
      goto LABEL_7;
    }

LABEL_29:

LABEL_30:
    os_unfair_lock_unlock((*&v10[v33] + 16));

    return;
  }

  v64 = *((*&v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v64)
  {
    goto LABEL_29;
  }

LABEL_7:
  if (v64 >= 1)
  {
    v101 = v58;
    v102 = v33;
    v65 = OBJC_IVAR____UIMagicMorphView_currentMorphingAxis;
    v107 = *&v63 & 0xC000000000000001;
    v66 = v63;

    v67 = *&v66;
    v68 = 0;
    v108 = v64;
    v109 = v66;
    while (1)
    {
      if (v107)
      {
        v73 = sub_188E494B4(v68, v67);
      }

      else
      {
        v73 = *(v67 + 8 * v68 + 32);
      }

      v74 = v73;
      v75 = *&v73[OBJC_IVAR____UIMagicMorphDestination_previewSize];
      v76 = *&v73[OBJC_IVAR____UIMagicMorphDestination_previewSize + 8];
      v77 = *&v73[OBJC_IVAR____UIMagicMorphDestination_insets];
      v78 = *&v73[OBJC_IVAR____UIMagicMorphDestination_insets + 8];
      v79 = *&v73[OBJC_IVAR____UIMagicMorphDestination_insets + 16];
      v80 = *&v73[OBJC_IVAR____UIMagicMorphDestination_insets + 24];
      v81 = *&v73[OBJC_IVAR____UIMagicMorphDestination_transformView];
      v120.origin.x = UIRectInset(0.0, 0.0, v75, v76, v77, v80, v79, v78);
      x = v120.origin.x;
      y = v120.origin.y;
      width = v120.size.width;
      height = v120.size.height;
      v86 = *&v10[v65];
      v87 = 1.0;
      v88 = 1.0;
      if (CGRectGetWidth(v120) != 0.0)
      {
        v121.origin.x = 0.0;
        v121.origin.y = 0.0;
        v121.size.height = v105;
        v121.size.width = v106;
        v89 = CGRectGetWidth(v121);
        v122.origin.x = x;
        v122.origin.y = y;
        v122.size.width = width;
        v122.size.height = height;
        v88 = v89 / CGRectGetWidth(v122);
      }

      v123.origin.x = x;
      v123.origin.y = y;
      v123.size.width = width;
      v123.size.height = height;
      if (CGRectGetHeight(v123) == 0.0)
      {
        if (v86 != 2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v124.origin.x = 0.0;
        v124.origin.y = 0.0;
        v124.size.height = v105;
        v124.size.width = v106;
        v90 = CGRectGetHeight(v124);
        v125.origin.x = x;
        v125.origin.y = y;
        v125.size.width = width;
        v125.size.height = height;
        v87 = v90 / CGRectGetHeight(v125);
        if (v86 != 2)
        {
LABEL_18:
          if (v86 == 1)
          {
            v87 = v88;
          }

          goto LABEL_22;
        }
      }

      v88 = v87;
LABEL_22:
      CGAffineTransformMakeScale(v112, v88, v87);
      v111 = *&v112[0].a;
      v110 = *&v112[0].d;
      CATransform3DMakeAffineTransform(&v114, v112);
      v91 = sub_18A4A7928();
      v92 = sub_18A4A7258();
      [v81 _setPresentationValue_forKey_];

      v93 = *&v10[v65];
      if (v93 == 1)
      {
        v117.origin.x = 0.0;
        v117.origin.y = 0.0;
        v117.size.width = v30;
        v117.size.height = v32;
        CGRectGetMidX(v117);
        v118.origin.x = 0.0;
        v118.origin.y = 0.0;
        v118.size.width = v30;
        v118.size.height = v32;
        CGRectGetMidX(v118);
        v119.origin.x = 0.0;
        v119.origin.y = 0.0;
        v119.size.width = v30;
        v119.size.height = v32;
        CGRectGetHeight(v119);
      }

      else
      {
        v94 = 0;
        v95 = 0;
        v96 = v30;
        v97 = v32;
        if (v93 == 2)
        {
          CGRectGetWidth(*&v94);
          v94 = 0;
          v95 = 0;
          v96 = v30;
          v97 = v32;
        }

        CGRectGetWidth(*&v94);
      }

      ++v68;
      v69 = sub_18A4A7BC8();
      v70 = sub_18A4A7258();
      [v81 _setPresentationValue_forKey_];

      v71 = sub_18A4A7BE8();
      v72 = sub_18A4A7258();
      [v81 _setPresentationValue_forKey_];

      v67 = *&v109;
      if (v108 == v68)
      {

        v33 = v102;
        goto LABEL_30;
      }
    }
  }

  __break(1u);
}

void sub_188D87D5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong accessoryAnimationBlock];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 animationProgress];
      [v5 presentationValue];
      v7 = v6;

      v4[2](v4, v7);
      _Block_release(v4);
    }
  }
}

void sub_188D87E30()
{
  v1 = v0;
  v2 = [v0 layer];
  v3 = [v2 presentationLayer];

  v46 = v3;
  if (v3)
  {
    v4 = OBJC_IVAR____UIMagicMorphView_milestones;
    swift_beginAccess();
    v5 = *&v1[v4];
    v8 = *(v5 + 64);
    v7 = v5 + 64;
    v6 = v8;
    v9 = 1 << *(*&v1[v4] + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v6;
    v12 = (v9 + 63) >> 6;
    v45 = *&v1[v4];

    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v44 = v14;
    while (v11)
    {
LABEL_13:
      v16 = __clz(__rbit64(v11)) | (v13 << 6);
      v17 = (*(v45 + 48) + 16 * v16);
      v18 = v17[1];
      v43 = *v17;
      v19 = *(*(v45 + 56) + 8 * v16);
      v20 = v19[OBJC_IVAR____UIMagicMorphMilestone_property];

      v21 = v19;
      [v46 frame];
      if (v20)
      {
        Height = CGRectGetHeight(*&v22);
      }

      else
      {
        Height = CGRectGetWidth(*&v22);
      }

      v11 &= v11 - 1;
      v27 = *&v21[OBJC_IVAR____UIMagicMorphMilestone_value];
      v14 = v44;
      if (v21[OBJC_IVAR____UIMagicMorphMilestone_comparisonResult] == 1)
      {
        if (Height <= v27)
        {
          goto LABEL_18;
        }
      }

      else if (v27 <= Height)
      {
LABEL_18:
        v28 = *&v21[OBJC_IVAR____UIMagicMorphMilestone_action];

        v28(v29);
        v14 = v44;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_188C8D8B4(0, *(v44 + 2) + 1, 1, v44);
        }

        v31 = *(v14 + 2);
        v30 = *(v14 + 3);
        if (v31 >= v30 >> 1)
        {
          v14 = sub_188C8D8B4((v30 > 1), v31 + 1, 1, v14);
        }

        *(v14 + 2) = v31 + 1;
        v32 = &v14[16 * v31];
        *(v32 + 4) = v43;
        *(v32 + 5) = v18;
        goto LABEL_5;
      }
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v15);
      ++v13;
      if (v11)
      {
        v13 = v15;
        goto LABEL_13;
      }
    }

    v33 = *(v14 + 2);
    if (!v33)
    {
LABEL_31:

      return;
    }

    v34 = 0;
    v35 = (v14 + 40);
    while (v34 < *(v14 + 2))
    {
      v37 = *(v35 - 1);
      v36 = *v35;
      swift_beginAccess();

      v38 = sub_188B0944C(v37, v36);
      if (v39)
      {
        v40 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *&v1[v4];
        *&v1[v4] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_188FA07F8();
        }

        sub_188C578C4();
        *&v1[v4] = v42;
      }

      ++v34;
      swift_endAccess();

      v35 += 2;
      if (v33 == v34)
      {
        goto LABEL_31;
      }
    }

LABEL_34:
    __break(1u);
  }
}

void sub_188D881C8(void *a1, char *a2, double a3, double a4)
{
  [a1 bounds];
  Height = CGRectGetHeight(v34);
  [a1 bounds];
  Width = CGRectGetWidth(v35);
  v10 = [a2 glowContainer];
  v11 = objc_allocWithZone(_s14LittleGlowViewCMa());
  v12 = swift_retain_n();
  v13 = sub_188F4C4CC(v12);
  [v10 addSubview_];

  v14 = *&v10[OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow];
  *&v10[OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow] = v13;

  v15 = [a2 glowContainer];
  v16 = *&v15[OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow];
  v17 = v16;

  if (v16)
  {
    if (Width >= Height)
    {
      v18 = Height;
    }

    else
    {
      v18 = Width;
    }

    v19 = v18 * 1.5;
    if (v19 <= 160.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 160.0;
    }

    [v17 setBounds_];
  }

  v21 = [a2 glowContainer];
  v22 = *&v21[OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow];
  v23 = v22;

  if (v22)
  {
    [v23 setCenter_];
  }

  v24 = [a2 glowContainer];
  v25 = *&v24[OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow];
  v26 = v25;

  if (v25)
  {
    [v26 setAlpha_];
  }

  v27 = [a2 glowContainer];
  v31 = [v27 window];

  v28 = v31;
  if (!v31)
  {
    v29 = [a2 glowContainer];
    v30 = *&v29[OBJC_IVAR____UIFlexInteractionGlowContainerView_bigGlow];

    [v30 setAlpha_];
    v32 = [a2 glowContainer];
    [(UIView *)a1 _backing_addPrivateSubview:v32];
    v28 = v32;
  }
}

double sub_188D88AB8@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  *(a4 + 648) = v6;
  *(a4 + 664) = v5;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  *(a4 + 584) = v8;
  *(a4 + 600) = v9;
  v10 = a2[3];
  v12 = a2[4];
  v11 = a2[5];
  *(a4 + 616) = v12;
  *(a4 + 632) = v11;
  v13 = a2[1];
  v14 = *a2;
  *(a4 + 552) = *a2;
  *(a4 + 568) = v13;
  v15 = *(a3 + 112);
  *(a4 + 376) = *(a3 + 96);
  *(a4 + 392) = v15;
  v16 = *(a3 + 48);
  *(a4 + 312) = *(a3 + 32);
  *(a4 + 328) = v16;
  v17 = *(a3 + 80);
  *(a4 + 344) = *(a3 + 64);
  *(a4 + 360) = v17;
  v18 = *(a3 + 16);
  *(a4 + 280) = *a3;
  *(a4 + 296) = v18;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 512) = 0u;
  *(a4 + 528) = 0u;
  *(a4 + 480) = 0u;
  *(a4 + 496) = 0u;
  *(a4 + 448) = 0u;
  *(a4 + 464) = 0u;
  *(a4 + 416) = 0u;
  *(a4 + 432) = 0u;
  *(a4 + 824) = 0u;
  *(a4 + 840) = 0u;
  *(a4 + 856) = 0u;
  *(a4 + 872) = 0u;
  *(a4 + 888) = 0u;
  *(a4 + 904) = 0u;
  *(a4 + 920) = 0u;
  *(a4 + 936) = 0u;
  v19 = a2[7];
  *(a4 + 784) = v6;
  *(a4 + 800) = v19;
  *(a4 + 720) = v8;
  *(a4 + 736) = v10;
  *(a4 + 752) = v12;
  *(a4 + 768) = v4;
  *(a4 + 240) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 48) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 104) = 0;
  *(a4 + 96) = 0;
  *(a4 + 248) = 0;
  *(a4 + 256) = 0;
  *(a4 + 264) = 0;
  *(a4 + 272) = 0x3FF0000000000000;
  *(a4 + 680) = *(a2 + 128);
  *(a4 + 408) = *(a3 + 128);
  *(a4 + 544) = 0;
  *(a4 + 952) = 0;
  *(a4 + 816) = *(a2 + 128);
  *(a4 + 688) = v14;
  *(a4 + 704) = v7;
  return sub_188AB3484(a1, 1);
}

void ___configureDefaultStatisticHandling_block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v1 = _configureDefaultStatisticHandling_statisticInfo;
  _configureDefaultStatisticHandling_statisticInfo = v0;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___configureDefaultStatisticHandling_block_invoke_19;
  aBlock[3] = &unk_1E7127FF8;
  v10 = &__block_literal_global_16_8;
  v2 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___configureDefaultStatisticHandling_block_invoke_2_21;
  v7[3] = &unk_1E7127FF8;
  v8 = &__block_literal_global_16_8;
  v3 = _Block_copy(v7);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___configureDefaultStatisticHandling_block_invoke_3;
  v5[3] = &unk_1E7127FF8;
  v6 = &__block_literal_global_16_8;
  v4 = _Block_copy(v5);
  v2[2](v2, @"UIButton", _buttonTapStatisticWithSuffix_UIButton);
  v2[2](v2, @"_UIButtonBarButton", _buttonTapStatisticWithSuffix_SubclassName);
  v2[2](v2, @"UITabBarButton", _buttonTapStatisticWithSuffix_SubclassName);
  v2[2](v2, @"UIToolbarButton", _buttonTapStatisticWithSuffix_SubclassName);
  v2[2](v2, @"UITableViewCellDetailDisclosureView", _buttonTapStatisticWithSuffix_SubclassName);
  v2[2](v2, @"UITableViewCellEditControl", _buttonTapStatisticWithSuffix_SubclassName);
  v2[2](v2, @"UITableViewCellReorderControl", _controlTapStatisticWithSuffix_SubclassName);
  v2[2](v2, @"UITableViewCellReorderControl", _controlTapStatisticWithSuffix_SubclassName);
  v2[2](v2, @"_UIActionSlider", _controlTapStatisticWithSuffix_SubclassName);
  v3[2](v3, @"UIStepper", _controlValueChangeStatisticWithSuffix_SubclassName);
  v3[2](v3, @"UIPageControl", _controlValueChangeStatisticWithSuffix_SubclassName);
  v3[2](v3, @"UITableViewIndex", _controlValueChangeStatisticWithSuffix_SubclassName);
  v3[2](v3, @"UIPickerView", _controlValueChangeStatisticWithSuffix_SubclassName);
  v3[2](v3, @"UISwitch", _controlValueChangeStatisticWithSuffix_SubclassName);
  v3[2](v3, @"UISegmentedControl", _controlValueChangeStatisticWithSuffix_SubclassName);
  v4[2](v4, @"UISlider", _sliderInteractionDurationStatisticWithSuffix_SubclassName);
  v4[2](v4, @"UIMovieScrubber", _sliderInteractionDurationStatisticWithSuffix_SubclassName);
}

void ___configureDefaultStatisticHandling_block_invoke_2(uint64_t a1, void *a2, const char *a3, void (*a4)(void))
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = NSClassFromString(v6);
  if (v7)
  {
    v8 = v7;
    InstanceMethod = class_getInstanceMethod(v7, a3);
    TypeEncoding = method_getTypeEncoding(InstanceMethod);
    class_addMethod(v8, a3, a4, TypeEncoding);
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v12 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "unable to lookup class named '%@' to use for statistics", &v13, 0xCu);
    }
  }

  else
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_VisualizeMaterials_block_invoke___s_category_7) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "unable to lookup class named '%@' to use for statistics", &v13, 0xCu);
    }
  }
}

id getAppleSpellClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED49ADF0;
  v7 = qword_1ED49ADF0;
  if (!qword_1ED49ADF0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAppleSpellClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getAppleSpellClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188D8A444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAppleSpellClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49ADF8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ProofReaderLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7127438;
    v8 = 0;
    qword_1ED49ADF8 = _sl_dlopen();
  }

  if (!qword_1ED49ADF8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ProofReaderLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UITextChecker.m" lineNumber:68 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AppleSpell");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAppleSpellClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UITextChecker.m" lineNumber:69 description:{@"Unable to find class %s", "AppleSpell"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49ADF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKeyboardShowsTransliterationCandidatesForCurrentInputMode()
{
  v0 = UIKeyboardGetCurrentInputMode();
  v1 = UIKeyboardShowsTransliterationCandidatesForInputMode(v0);

  return v1;
}

uint64_t UIKeyboardPredictionEnabledForCurrentInputMode()
{
  v0 = UIKeyboardGetCurrentInputMode();
  v1 = TIInputModeGetNormalizedIdentifier();

  v2 = TIGetInputModeProperties();
  v3 = [v2 objectForKey:*MEMORY[0x1E69D97A8]];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t UIKeyboardAutocorrectionRequiredForInputMode(void *a1)
{
  v1 = a1;
  if (UIKeyboardShowsTransliterationCandidatesForInputMode(v1))
  {
    v2 = 1;
  }

  else
  {
    v3 = UIKeyboardAutocorrectionRequiredForInputMode___dict;
    if (!UIKeyboardAutocorrectionRequiredForInputMode___dict)
    {
      v4 = objc_alloc(MEMORY[0x1E695DF90]);
      v5 = [v4 initWithObjectsAndKeys:{@"zh_Hans-Pinyin", MEMORY[0x1E695E118], @"zh_Hant-Pinyin", MEMORY[0x1E695E118], @"zh_Hant-Zhuyin", MEMORY[0x1E695E118], @"ja_JP-Romaji", MEMORY[0x1E695E118], @"ja_JP-Kana", 0}];
      v6 = UIKeyboardAutocorrectionRequiredForInputMode___dict;
      UIKeyboardAutocorrectionRequiredForInputMode___dict = v5;

      v3 = UIKeyboardAutocorrectionRequiredForInputMode___dict;
    }

    v7 = TIInputModeGetNormalizedIdentifier();
    v8 = [v3 objectForKey:v7];

    if (v8)
    {
      v2 = [v8 BOOLValue];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t UIKeyboardAutomaticIsOnScreen()
{
  v0 = +[UIPeripheralHost sharedInstance];
  v1 = [v0 isOnScreen];

  return v1;
}

void *UIKBMoreKeyStringForActiveInputMode(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 displayString];
  if ([v3 visualStyle] != 101)
  {
    v6 = [v4 displayTypeHint];
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        v7 = @"";
        goto LABEL_40;
      }

      if (v6 == 6)
      {
        v7 = @"symbols";
        goto LABEL_40;
      }

      if (v6 != 8)
      {
LABEL_13:
        if ([UIKeyboardActiveUserSelectableInputModes count] < 2 || ((objc_msgSend(v3, "visualStyling") & 0x3F) == 1 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x18 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x19 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x1A || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x17) && !objc_msgSend(v3, "isFloating"))
        {
          goto LABEL_38;
        }

        goto LABEL_36;
      }

      v8 = UIKeyboardGetJapaneseAIUStringForActiveInputMode();
    }

    else
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          if (v6 == 4)
          {
            v7 = @"123";
LABEL_40:

            v5 = v7;
            goto LABEL_41;
          }

          goto LABEL_13;
        }

        if ([v3 visualStyle] != 301)
        {
          if ((([v3 visualStyling] & 0x3F) == 1 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x18 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x19 || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x1A || (objc_msgSend(v3, "visualStyling") & 0x3F) == 0x17) && (objc_msgSend(v3, "isFloating") & 1) == 0)
          {
            v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
            v12 = [v11 preferencesActions];
            [v12 rivenSizeFactor:1.0];
            if (v13 <= 1.0 || [UIKeyboardActiveUserSelectableInputModes count] < 2)
            {

              goto LABEL_38;
            }

            v14 = +[UIDictationController fetchCurrentInputModeSupportsDictation];

            if (!v14)
            {
LABEL_38:
              v8 = UIKeyboardGetNumbersSymbolsStringForActiveInputMode();
              goto LABEL_39;
            }
          }

          else if ([UIKeyboardActiveUserSelectableInputModes count] <= 1 && !+[UIDictationController fetchCurrentInputModeSupportsDictation](UIDictationController, "fetchCurrentInputModeSupportsDictation"))
          {
            if (UIKBKeyboardIsURLKeyboard(v3))
            {
              v9 = MEMORY[0x1E696AEC0];
              v10 = UIKeyboardGetNumbersStringForActiveInputMode();
              [v9 stringWithFormat:@"@%@", v10];
              v7 = LABEL_44:;

              v5 = v10;
              goto LABEL_40;
            }

            if (UIKBKeyboardIsEmailKeyboard(v3))
            {
              v17 = MEMORY[0x1E696AEC0];
              v10 = UIKeyboardGetNumbersStringForActiveInputMode();
              [v17 stringWithFormat:@"_%@", v10];
              goto LABEL_44;
            }

            goto LABEL_38;
          }
        }

LABEL_36:
        v8 = UIKeyboardGetNumbersStringForActiveInputMode();
        goto LABEL_39;
      }

      v8 = UIKeyboardGetABCStringForActiveInputMode();
    }

LABEL_39:
    v7 = v8;
    goto LABEL_40;
  }

LABEL_41:
  v15 = v5;

  return v5;
}

id UIKeyboardGetNumbersStringForActiveInputMode()
{
  if (_ShouldLocalizeNumbersForPreferredLocale())
  {
    v0 = UIKeyboardGetNumberFormatterForPreferredLocale();
    v1 = [v0 stringFromNumber:&unk_1EFE30E98];

    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v1];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"UI-Numbers", v1];
    v4 = UIKeyboardGetCurrentInputMode();
    v5 = UIKeyboardLocalizedString(v3, v4, 0, v2);
  }

  else
  {
    v1 = UIKeyboardGetCurrentInputMode();
    v5 = UIKeyboardLocalizedString(@"UI-Numbers", v1, 0, @"123");
  }

  return v5;
}

uint64_t _ShouldLocalizeNumbersForPreferredLocale()
{
  v0 = UIKeyboardGetCurrentInputMode();
  v1 = [MEMORY[0x1E695DF58] preferredLocale];
  v2 = UIKeyboardInputModeLanguageMatchesLocaleLanguage(v0, v1);

  return v2;
}

uint64_t UIKeyboardGetNumberFormatterForPreferredLocale()
{
  v0 = [MEMORY[0x1E695DF58] preferredLocale];
  v1 = v0;
  if (qword_1ED49EF00)
  {
    v2 = qword_1ED49EEF8;
    v3 = [v0 localeIdentifier];
    LOBYTE(v2) = objc_msgSend_isEqualToString_(v2);

    if ((v2 & 1) == 0)
    {
      [qword_1ED49EF00 setLocale:v1];
      v4 = [v1 localeIdentifier];
      v5 = [v4 copy];
      v6 = qword_1ED49EEF8;
      qword_1ED49EEF8 = v5;
    }
  }

  else
  {
    v7 = objc_opt_new();
    v8 = qword_1ED49EF00;
    qword_1ED49EF00 = v7;

    [qword_1ED49EF00 setLocale:v1];
    v9 = [v1 localeIdentifier];
    v10 = [v9 copy];
    v11 = qword_1ED49EEF8;
    qword_1ED49EEF8 = v10;

    [qword_1ED49EF00 setNumberStyle:0];
  }

  v12 = qword_1ED49EF00;
  v13 = qword_1ED49EF00;

  return v12;
}

id UIKeyboardGetSupportedHardwareKeyboardsForInputMode(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = TIGetHardwareLayoutsForInputMode();
  if (v2 && (UIKeyboardInputModeIsNonLinguistic(v1) & 1) == 0)
  {
    v6[0] = @"Automatic";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v3 = [v4 arrayByAddingObjectsFromArray:v2];
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

id UIKeyboardGetDefaultSoftwareKeyboardForInputMode(void *a1)
{
  v1 = UIKeyboardGetSupportedSoftwareKeyboardsForInputMode(a1);
  v2 = [v1 objectAtIndex:0];

  return v2;
}

id UIKeyboardInputModeGetIdentifierFromComponents(void *a1)
{
  v1 = a1;
  v2 = TIInputModeGetNormalizedIdentifierFromComponents();
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [v1 objectForKey:@"sw"];
  if ([v4 length])
  {
    v5 = [@"sw=" stringByAppendingString:v4];
    [v3 addObject:v5];
  }

  v6 = [v1 objectForKey:@"hw"];
  if ([v6 length])
  {
    v7 = [@"hw=" stringByAppendingString:v6];
    [v3 addObject:v7];
  }

  if (_os_feature_enabled_impl())
  {
    v8 = [v1 objectForKey:@"ml"];
    if ([v8 length])
    {
      v9 = [@"ml=" stringByAppendingString:v8];
      [v3 addObject:v9];
    }
  }

  if ([v3 count])
  {
    v10 = [v3 componentsJoinedByString:@""];;
    v11 = [v2 stringByAppendingFormat:@"@%@", v10];

    v2 = v11;
  }

  return v2;
}

uint64_t _UITextInputTraitsAllowedInputModeExcludeLastAndCurrentInputModes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 lastUsedInputMode];
  if (objc_msgSend_isEqual_(v3))
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 currentInputMode];
    if ((objc_msgSend_isEqual_(v3) & 1) != 0 || ![v3 isAllowedForTraits:v4])
    {
      v7 = 0;
    }

    else
    {
      v9 = [v4 keyboardType];
      v7 = 1;
      if (v9 <= 0xB && ((1 << v9) & 0x930) != 0 || v9 == 127)
      {
        v7 = _AllowedNumberPadInputMode(v3);
      }
    }
  }

  return v7;
}

uint64_t UIKeyboardHas10KeyChineseKeyboard()
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v0 = UIKeyboardActiveInputModes;
  v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = KBStarLayoutString(*(*(&v8 + 1) + 8 * i));
        if ([v5 hasPrefix:{@"Pinyin10-", v8}] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"Wubihua-"))
        {

          v6 = 1;
          goto LABEL_13;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v6 = 0;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:

  return v6;
}

id UIKeyboardInputModeGetDecimalSeparator(void *a1)
{
  v1 = MEMORY[0x1E695DF58];
  v2 = a1;
  v3 = [v1 currentLocale];
  v4 = UIKeyboardInputModeGetNumericLocale(v2);

  v5 = [v3 numberingSystem];
  v6 = [v4 numberingSystem];
  isEqualToString = objc_msgSend_isEqualToString_(v5);

  if (isEqualToString)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  v9 = [v8 objectForKey:*MEMORY[0x1E695D990]];

  return v9;
}

id UIKeyboardTopLevelDomainVariants(void *a1, uint64_t a2)
{
  v3 = a1;
  if (![v3 length])
  {
    v4 = UIKeyboardGetCurrentInputMode();

    v3 = v4;
  }

  v5 = UIKeyboardVariants(@"UI-TopLevelDomain", v3, a2);
  v6 = v5;
  if ((a2 & 8) != 0)
  {
    v8 = UIKeyboardGetDomainForCurrentLocale();
    v7 = _insertAdditionalPopup(v6, v8, 0);
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

id UIKeyboardVariants(void *a1, void *a2, uint64_t a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v51 = a1;
  v4 = a2;
  v47 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" "];
  if (!UIKeyboardVariants___cache)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = UIKeyboardVariants___cache;
    UIKeyboardVariants___cache = v5;
  }

  v7 = [MEMORY[0x1E696AD60] string];
  [v7 appendString:v4];
  [v7 appendString:@":"];
  [v7 appendString:v51];
  [v7 appendFormat:@":%d", a3];
  [v7 appendFormat:@":%ld", UIKeyboardGetCurrentIdiom()];
  if ((a3 & 8) != 0)
  {
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v8 = UIKeyboardActiveInputModes;
    v9 = [v8 countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v9)
    {
      v10 = *v76;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v76 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [v7 appendString:@":"];
          v12 = TIInputModeGetLanguageWithRegion();
          [v7 appendString:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = [MEMORY[0x1E695DF58] preferredLocale];
  v50 = [v13 objectForKey:*MEMORY[0x1E695D978]];

  if (v50)
  {
    [v7 appendString:@":"];
    [v7 appendString:v50];
  }

  v14 = [UIKeyboardVariants___cache objectForKey:v7];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    if ([v51 hasPrefix:@"Roman-Accent-"])
    {
      v16 = [v51 length];
      v48 = [@"Roman-Accent-" length];
      v45 = v16 - [@"Roman-Accent-" length];
      v17 = [v51 rangeOfString:@"-" options:2 range:v48];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __UIKeyboardVariants_block_invoke;
      aBlock[3] = &unk_1E7117400;
      v74 = v16;
      v18 = v51;
      v73 = v18;
      v19 = _Block_copy(aBlock);
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_21:
        v20 = 0;
        v21 = v45;
      }

      else
      {
        while ((v19[2](v19, v17) & 1) == 0)
        {
          v17 = [v18 rangeOfString:@"-" options:2 range:{v17 + 1, v16 - (v17 + 1)}];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_21;
          }
        }

        v20 = [v18 substringToIndex:v17];
        v21 = v17 - v48;
      }

      v22 = [v18 substringWithRange:{v48, v21}];
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v49 = [MEMORY[0x1E695DF90] dictionary];
    v23 = [MEMORY[0x1E695DF70] array];
    v24 = [MEMORY[0x1E695DF70] array];
    v44 = v22;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__134;
    v70 = __Block_byref_object_dispose__134;
    v71 = 0;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __UIKeyboardVariants_block_invoke_2;
    v58[3] = &unk_1E7117428;
    v59 = v51;
    v25 = v20;
    v60 = v25;
    v65 = (a3 & 0x20) != 0;
    v61 = v23;
    v62 = v47;
    v46 = v24;
    v63 = v46;
    v64 = &v66;
    v26 = v61;
    v27 = v44;
    v28 = _Block_copy(v58);
    if (a3)
    {
      v29 = TIInputModeGetBaseLanguage();
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v29, v50];
      v28[2](v28, v30, 0);
    }

    if ((a3 & 2) != 0)
    {
      v28[2](v28, v4, 1);
    }

    if ((a3 & 4) != 0)
    {
      v28[2](v28, @"default", 0);
    }

    if ((a3 & 8) != 0)
    {
      v43 = v26;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v31 = v8;
      v32 = [v31 countByEnumeratingWithState:&v54 objects:v79 count:16];
      if (v32)
      {
        v33 = *v55;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v55 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = *(*(&v54 + 1) + 8 * j);
            if ((UIKeyboardInputModesEqual(v35, v4) & 1) == 0)
            {
              v28[2](v28, v35, 0);
            }
          }

          v32 = [v31 countByEnumeratingWithState:&v54 objects:v79 count:16];
        }

        while (v32);
      }

      v27 = v44;
      v26 = v43;
    }

    if (v27)
    {
      v36 = [v26 indexOfObject:v27];
      if (v36 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((a3 & 0x10) != 0)
        {
          [v26 removeObjectsInRange:{v36, objc_msgSend(v26, "count") - v36}];
          [v46 removeObjectsInRange:{v36, objc_msgSend(v26, "count") - v36}];
        }

        else
        {
          v53 = [v26 objectAtIndex:v36];
          [v26 removeObjectAtIndex:v36];
          [v26 insertObject:v53 atIndex:0];
          v37 = [v46 objectAtIndex:v36];
          [v46 removeObjectAtIndex:v36];
          [v46 insertObject:v37 atIndex:0];
        }
      }
    }

    if (![v67[5] caseInsensitiveCompare:@"left"] || !objc_msgSend(v67[5], "caseInsensitiveCompare:", @"strictly-left") || !objc_msgSend(v67[5], "caseInsensitiveCompare:", @"fixed-left"))
    {
      [v26 _kb_reverse];
      [v46 _kb_reverse];
    }

    v38 = [v26 indexOfObject:@"Đ"];
    v39 = [v26 indexOfObject:@"Ð"];
    if (v38 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v40 = v39;
      if (v39 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v26 replaceObjectAtIndex:v38 withObject:@"đ"];
        [v26 replaceObjectAtIndex:v40 withObject:@"ð"];
      }
    }

    [v49 setObject:v26 forKey:@"Keycaps"];
    [v49 setObject:v46 forKey:@"Strings"];
    v41 = v67[5];
    if (!v41)
    {
      v67[5] = &stru_1EFB14550;
      v41 = v67[5];
    }

    [v49 setObject:v41 forKey:@"Direction"];
    if (v49)
    {
      [UIKeyboardVariants___cache setObject:v49 forKey:v7];
    }

    v15 = v49;

    _Block_object_dispose(&v66, 8);
  }

  return v15;
}

void sub_188D8DF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __UIKeyboardVariants_block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v20 = a2;
  v5 = UIKeyboardLocalizedObject(*(a1 + 32), v20, 0, 0, 0);
  if (*(a1 + 40))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = UIKeyboardLocalizedObject(*(a1 + 40), v20, 0, 0, 0);

      v5 = v6;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = a3 && (*(a1 + 80) & 1) == 0 && [*(a1 + 48) count] != 0;
    v8 = [v5 objectForKeyedSubscript:@"Keycaps"];
    v9 = [v8 componentsSeparatedByCharactersInSet:*(a1 + 56)];

    v10 = [v5 objectForKeyedSubscript:@"Strings"];
    v11 = [v10 componentsSeparatedByCharactersInSet:*(a1 + 56)];

    v12 = [v9 count];
    if (v12 == [v11 count])
    {
      if ([v9 count])
      {
        v13 = 0;
        while (1)
        {
          v14 = [v9 objectAtIndexedSubscript:v13];
          v15 = [v11 objectAtIndexedSubscript:v13];
          if (*(a1 + 80) & 1) == 0 && (([*(a1 + 48) containsObject:v14] & 1) != 0 || (objc_msgSend(*(a1 + 64), "containsObject:", v15)))
          {
            goto LABEL_19;
          }

          v16 = *(a1 + 48);
          if (!v7)
          {
            break;
          }

          [v16 insertObject:v14 atIndex:0];
          [*(a1 + 64) insertObject:v15 atIndex:0];
          v7 = 1;
LABEL_20:

          if (++v13 >= [v9 count])
          {
            goto LABEL_21;
          }
        }

        [v16 addObject:v14];
        [*(a1 + 64) addObject:v15];
LABEL_19:
        v7 = 0;
        goto LABEL_20;
      }

LABEL_21:
      if (!*(*(*(a1 + 72) + 8) + 40))
      {
        v17 = [v5 objectForKeyedSubscript:@"Direction"];
        v18 = *(*(a1 + 72) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;
      }
    }

    else
    {
      NSLog(&cfstr_KeycapsAndStri.isa, v20, *(a1 + 32));
    }
  }
}

uint64_t UIKeyboardCurrentInputModeIsKoreanEnglishBilingual()
{
  v0 = +[UIKeyboardInputModeController sharedInputModeController];
  v1 = [v0 currentInputMode];
  IsKoreanEnglishBilingual = UIKeyboardInputModeIsKoreanEnglishBilingual(v1);

  return IsKoreanEnglishBilingual;
}

uint64_t UIKeyboardInputModeIsKoreanEnglishBilingual(void *a1)
{
  v1 = [a1 softwareLayout];
  if (_os_feature_enabled_impl())
  {
    isEqualToString = objc_msgSend_isEqualToString_(v1);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

void _SwiftUITextAnimationProviderClass()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = _MergedGlobals_1091;
  v9 = _MergedGlobals_1091;
  if (!_MergedGlobals_1091)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getSwiftUITextAnimationProviderClassSymbolLoc_block_invoke;
    v5[3] = &unk_1E70F2F20;
    v5[4] = &v6;
    __getSwiftUITextAnimationProviderClassSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = v0();

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class<NSTextAnimationProvider> _SwiftUITextAnimationProviderClass(void)"];
    [v3 handleFailureInFunction:v4 file:@"UITextAnimationsBridge.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_188D8F82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UITextAnimationsNewRenderController()
{
  _SwiftUITextAnimationProviderClass();
  v1 = v0;
  v2 = MEMORY[0x1E695D920];
  if (!v0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *v2;
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<NSCustomTextRendering>  _Nonnull UITextAnimationsNewRenderController(void)"];
    [v3 raise:v4 format:{@"[SwiftUI] Missing SPI: %@.", v5}];
  }

  v6 = [v1 animationRenderer];
  if (!v6)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *v2;
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<NSCustomTextRendering>  _Nonnull UITextAnimationsNewRenderController(void)"];
    [v7 raise:v8 format:{@"[SwiftUI] Returned nil: %@.", v9}];
  }

  return v6;
}

void *__getSwiftUITextAnimationProviderClassSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED49DD28)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SwiftUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7108930;
    v7 = 0;
    qword_1ED49DD28 = _sl_dlopen();
  }

  v2 = qword_1ED49DD28;
  if (!qword_1ED49DD28)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SwiftUILibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"UITextAnimationsBridge.m" lineNumber:22 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "SwiftUITextAnimationProviderClass");
  *(*(a1[4] + 8) + 24) = result;
  _MergedGlobals_1091 = *(*(a1[4] + 8) + 24);
  return result;
}

id _UIKeyboardTaskBreadcrumbEmpty()
{
  if (_MergedGlobals_1196 != -1)
  {
    dispatch_once(&_MergedGlobals_1196, &__block_literal_global_387);
  }

  v0 = _Block_copy(qword_1ED49F430);

  return v0;
}

id UITextInputSessionLog()
{
  if (UITextInputSessionLog_onceToken != -1)
  {
    dispatch_once(&UITextInputSessionLog_onceToken, &__block_literal_global_280);
  }

  v1 = UITextInputSessionLog___instance;

  return v1;
}

id getAFUIPanelClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED498B08;
  v7 = qword_1ED498B08;
  if (!qword_1ED498B08)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAFUIPanelClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getAFUIPanelClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188D91970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFUIPanelClass_block_invoke(uint64_t a1)
{
  if (!qword_1ED498B10)
  {
    qword_1ED498B10 = _sl_dlopen();
  }

  result = objc_getClass("AFUIPanel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED498B08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _usesiPadStyle()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return +[UIKeyboardImpl isFloating]^ 1;
  }

  else
  {
    return 0;
  }
}

BOOL UIInputViewSetAreConstraintsEqualEnough(void *a1, void *a2)
{
  v4 = [a1 firstItem];
  if (v4 != [a2 firstItem])
  {
    return 0;
  }

  v5 = [a1 firstAttribute];
  if (v5 != [a2 firstAttribute])
  {
    return 0;
  }

  v6 = [a1 relation];
  if (v6 != [a2 relation])
  {
    return 0;
  }

  v7 = [a1 secondItem];
  if (v7 != [a2 secondItem])
  {
    return 0;
  }

  v9 = [a1 secondAttribute];
  return v9 == [a2 secondAttribute];
}

id getIATextInputActionsAnalyticsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getIATextInputActionsAnalyticsClass_softClass;
  v6 = getIATextInputActionsAnalyticsClass_softClass;
  if (!getIATextInputActionsAnalyticsClass_softClass)
  {
    InputAnalyticsLibraryCore_0();
    v4[3] = objc_getClass("IATextInputActionsAnalytics");
    getIATextInputActionsAnalyticsClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_188D978CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t InputAnalyticsLibraryCore(uint64_t a1)
{
  if (!InputAnalyticsLibraryCore_frameworkLibrary)
  {
    InputAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return InputAnalyticsLibraryCore_frameworkLibrary;
}

void InputAnalyticsLibraryCore_0()
{
  if (!InputAnalyticsLibraryCore_frameworkLibrary_0)
  {
    InputAnalyticsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }
}

uint64_t InputAnalyticsLibraryCore_1(uint64_t a1)
{
  if (!InputAnalyticsLibraryCore_frameworkLibrary_1)
  {
    InputAnalyticsLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  return InputAnalyticsLibraryCore_frameworkLibrary_1;
}

void __UITextInputSessionLog_block_invoke()
{
  v0 = os_log_create("com.apple.inputAnalytics", "UITextInputSession");
  v1 = UITextInputSessionLog___instance;
  UITextInputSessionLog___instance = v0;
}

__CFString *StringFromCGRect(double a1, double a2, double a3, double a4)
{
  v4 = CFStringCreateWithFormat(0, 0, @"{{%.*g, %.*g}, {%.*g, %.*g}}", 17, *&a1, 17, *&a2, 17, *&a3, 17, *&a4);

  return v4;
}

uint64_t _UITextInputActionsSourceFromTextInputSource(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18A683050[a1 - 1];
  }
}

uint64_t _UITextInputActionsTypeFromTextInputSource(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18A683090[a1 - 1];
  }
}

Class __getTIInputModeFunctionsClass_block_invoke(uint64_t a1)
{
  if (!qword_1ED49E708)
  {
    qword_1ED49E708 = _sl_dlopen();
  }

  result = objc_getClass("TIInputModeFunctions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49E700 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

unint64_t SubviewUsesClassicLayout(void *a1)
{
  v1 = a1;
  if ([v1 translatesAutoresizingMaskIntoConstraints])
  {
    v2 = ([v1 autoresizingMask] >> 4) & 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    if (([v4 allowsSelfSizing] & 1) != 0 || (objc_msgSend(v1, "intrinsicContentSize"), v5 != -1.0))
    {
      v2 = 0;
    }

    else
    {
      v2 = [v1 _hasAutolayoutHeightConstraint] ^ 1;
    }
  }

  return v2;
}

__CFString *_UIKeyboardWindowStateToString(uint64_t a1)
{
  v1 = @"Disabled";
  if (a1 == 1)
  {
    v1 = @"Enabled";
  }

  if (a1 == 2)
  {
    return @"ForceEnabled";
  }

  else
  {
    return v1;
  }
}

id GetInputViewController(uint64_t a1)
{
  v1 = [UIViewController viewControllerForView:a1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id FindHeightConstraint(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [a1 constraints];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 identifier];
        isEqualToString = objc_msgSend_isEqualToString_(v7);

        if (isEqualToString)
        {
          v9 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

id _UIInputWindowControllerLogger()
{
  if (qword_1ED49BF48 != -1)
  {
    dispatch_once(&qword_1ED49BF48, &__block_literal_global_1137);
  }

  v1 = qword_1ED49BF40;

  return v1;
}

void __TIGetTranslucentKeyboardValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"TranslucentKeyboard" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

double MillimeterSizeToPointSize(double a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 _nativePointsPerMillimeter];
  v4 = v3;

  return a1 * v4;
}

double _UIKBGetDockItemTouchPaddingForCurrentDevice()
{
  v0 = [objc_opt_self() mainScreen];
  v1 = [v0 _screenType];

  if (v1 != -1 && _UIScreenIsPhyiscallyLargePhone(v1))
  {
    _UIScreenScaleForType(v1);
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 _nativePointsPerMillimeter];
  v4 = v3;

  return v4 * -2.162;
}

BOOL _UIScreenIsPhyiscallyLargePhone(unint64_t a1)
{
  if (a1 == -1)
  {
    return 0;
  }

  if (_UIUserInterfaceIdiomForType(a1))
  {
    return 0;
  }

  _UIScreenReferenceBoundsSizeForType(a1);
  return v3 > 874.0;
}

void __TIGetKeyboardPlaceholderDebugOverlayValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardPlaceholderDebugOverlay" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void __TIGetKeyboardPlaceholderDebugOverlayValue_block_invoke_0()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardPlaceholderDebugOverlay" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void __getTUIKeyboardStateClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardState");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardStateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardSceneDelegate.m" lineNumber:84 description:{@"Unable to find class %s", "TUIKeyboardState"}];

    __break(1u);
  }
}

Class __getTUIKeyboardStateClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49B1E0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TextInputUILibraryCore_block_invoke_15;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71162A0;
    v8 = 0;
    qword_1ED49B1E0 = _sl_dlopen();
  }

  if (!qword_1ED49B1E0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TextInputUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIInputViewSetPlacement.m" lineNumber:43 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUIKeyboardState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardStateClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIInputViewSetPlacement.m" lineNumber:45 description:{@"Unable to find class %s", "TUIKeyboardState"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_19_5 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getTUIKeyboardStateClass_block_invoke_1(uint64_t a1)
{
  TextInputUILibrary_8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardState");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardStateClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardStateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardMotionSupport.m" lineNumber:52 description:{@"Unable to find class %s", "TUIKeyboardState"}];

    __break(1u);
  }
}

void __getTUIKeyboardStateClass_block_invoke_2(uint64_t a1)
{
  TextInputUILibrary_9();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardState");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardStateClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardStateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UITrackingElementWindowController.m" lineNumber:73 description:{@"Unable to find class %s", "TUIKeyboardState"}];

    __break(1u);
  }
}

void __getTUIKeyboardStateClass_block_invoke_3(uint64_t a1)
{
  TextInputUILibrary_10();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardState");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardStateClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardStateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardTrackingCoordinator.m" lineNumber:23 description:{@"Unable to find class %s", "TUIKeyboardState"}];

    __break(1u);
  }
}

void __getTUIKeyboardStateClass_block_invoke_4(uint64_t a1)
{
  TextInputUILibrary_11();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardState");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardStateClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardStateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIInputLayoutHostingItem.m" lineNumber:38 description:{@"Unable to find class %s", "TUIKeyboardState"}];

    __break(1u);
  }
}

id getTUIKeyboardStateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIKeyboardStateClass_softClass;
  v7 = getTUIKeyboardStateClass_softClass;
  if (!getTUIKeyboardStateClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIKeyboardStateClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIKeyboardStateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188D9F2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUIKeyboardStateClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIKeyboardStateClass_softClass_0;
  v7 = getTUIKeyboardStateClass_softClass_0;
  if (!getTUIKeyboardStateClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIKeyboardStateClass_block_invoke_1;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIKeyboardStateClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188D9F39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUIKeyboardStateClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIKeyboardStateClass_softClass_1;
  v7 = getTUIKeyboardStateClass_softClass_1;
  if (!getTUIKeyboardStateClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIKeyboardStateClass_block_invoke_2;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIKeyboardStateClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188D9F47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUIKeyboardStateClass_2()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIKeyboardStateClass_softClass_2;
  v7 = getTUIKeyboardStateClass_softClass_2;
  if (!getTUIKeyboardStateClass_softClass_2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIKeyboardStateClass_block_invoke_3;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIKeyboardStateClass_block_invoke_3(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188D9F55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getTUIKeyboardAnimationInfoClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardAnimationInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardAnimationInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardAnimationInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardSceneDelegate.m" lineNumber:83 description:{@"Unable to find class %s", "TUIKeyboardAnimationInfo"}];

    __break(1u);
  }
}

void __getTUIKeyboardAnimationInfoClass_block_invoke_0(uint64_t a1)
{
  TextInputUILibrary_7();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardAnimationInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardAnimationInfoClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardAnimationInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIInputWindowController.m" lineNumber:87 description:{@"Unable to find class %s", "TUIKeyboardAnimationInfo"}];

    __break(1u);
  }
}

void __getTUIKeyboardAnimationInfoClass_block_invoke_1(uint64_t a1)
{
  TextInputUILibrary_8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardAnimationInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardAnimationInfoClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardAnimationInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardMotionSupport.m" lineNumber:51 description:{@"Unable to find class %s", "TUIKeyboardAnimationInfo"}];

    __break(1u);
  }
}

void __getTUIKeyboardAnimationInfoClass_block_invoke_2(uint64_t a1)
{
  TextInputUILibrary_9();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardAnimationInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardAnimationInfoClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardAnimationInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UITrackingElementWindowController.m" lineNumber:72 description:{@"Unable to find class %s", "TUIKeyboardAnimationInfo"}];

    __break(1u);
  }
}

void __getTUIKeyboardAnimationInfoClass_block_invoke_3(uint64_t a1)
{
  TextInputUILibrary_10();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardAnimationInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardAnimationInfoClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardAnimationInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardTrackingCoordinator.m" lineNumber:24 description:{@"Unable to find class %s", "TUIKeyboardAnimationInfo"}];

    __break(1u);
  }
}

void sub_188D9FFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getTUIKeyboardTrackingProviderClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUIKeyboardTrackingProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUIKeyboardTrackingProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKeyboardTrackingProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardSceneDelegate.m" lineNumber:85 description:{@"Unable to find class %s", "TUIKeyboardTrackingProvider"}];

    __break(1u);
  }
}

id _UIKeyboardLayoutGuideLogger()
{
  if (qword_1ED49A3F0 != -1)
  {
    dispatch_once(&qword_1ED49A3F0, &__block_literal_global_280_1);
  }

  v1 = _MergedGlobals_3_21;

  return v1;
}

BOOL sub_188DA084C(id a1, CGFloat a2, CGFloat a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong window];
    if (v9 && (v10 = v9, v9, v10 == a1))
    {
      [a1 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [a1 screen];
      [v20 scale];
      memset(&v27, 0, 32);
      v27.is_nil = 1;
      if (a3 > 0.0)
      {
        v27.value.size.width = a2;
        v27.value.size.height = a3;
        v27.is_nil = 0;
        v22 = 1.0 / v21;
        v28.origin.x = v13;
        v28.origin.y = v15;
        v28.size.width = v17;
        v28.size.height = v19;
        MaxX = CGRectGetMaxX(v28);
        v29.origin.x = v13;
        v29.origin.y = v15;
        v29.size.width = v17;
        v29.size.height = v19;
        v27.value.origin.x = MaxX - a2;
        v27.value.origin.y = CGRectGetMaxY(v29) - a3;
        sub_1891C6F90(v22);
      }

      v24 = *(v3 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardSeed) + 1;
      *(v3 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardSeed) = v24;
      v25 = v8;
      sub_188F93ABC(&v27, v25, a2, a3);

      v11 = UIHostingViewBase.setKeyboardFrame(_:seed:)(&v27, v24);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    return 0;
  }

  return v11;
}

void sub_188DA1A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UIKeyboardExtendedLog()
{
  if (_UIKeyboardExtendedLog_onceToken != -1)
  {
    dispatch_once(&_UIKeyboardExtendedLog_onceToken, &__block_literal_global_5_2);
  }

  v1 = _UIKeyboardExtendedLog_log;

  return v1;
}

void sub_188DA2BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188DA52B8(char a1, double a2)
{
  *&v6 = a2;
  v7 = a2;
  v3 = a2;
  if (a1)
  {
    v3 = 0.0;
  }

  BYTE8(v6) = 0;
  v8 = 0;
  v9 = v3;
  v10 = a1;
  v11 = v3;
  v12 = a1;
  v13 = MEMORY[0x1E69E7CC0];
  v4 = UIView.cornerConfiguration.setter(&v6);

  return [v2 setClipsToBounds_];
}

void sub_188DA7EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIApplicationIsKeyboardMediaService()
{
  if (qword_1EA992EA8 != -1)
  {
    dispatch_once(&qword_1EA992EA8, &__block_literal_global_1249_0);
  }

  return byte_1EA992DAE;
}

void __TIGetKeyboardCachingDisabledValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardCachingDisabled" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

id _UIPopoverPresentationControllerSourceItemUpCast(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *__UITraitCollectionAllowedClassesForObjectTraitCoding_block_invoke()
{
  v14 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  result = [v14 initWithObjects:{v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  qword_1ED49EBD8 = result;
  return result;
}

void __UIScenePresentationLog_block_invoke()
{
  v0 = os_log_create("com.apple.FrontBoard", "ScenePresentation");
  v1 = UIScenePresentationLog___instance;
  UIScenePresentationLog___instance = v0;
}

double _UIConvertSceneRectToWindow(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = [(UIWindow *)v12 _fbsScene];
  if (v13 != v11)
  {
    if (v11)
    {
      v14 = [v11 settings];
      [v14 frame];
      v16 = v15;
      v18 = v17;
      v21 = _UIWindowConvertRectFromOrientationToOrientation([v14 interfaceOrientation], 1, a3, a4, a5, a6, v19, v20);
      a5 = v22;
      a6 = v23;
      a3 = v16 + v21;
      a4 = v18 + v24;
    }

    if (v13)
    {
      v25 = [v13 settings];
      [v25 frame];
      a3 = _UIWindowConvertRectFromOrientationToOrientation(1, [v25 interfaceOrientation], a3 - v26, a4 - v27, a5, a6, v28, v29);
      a4 = v30;
      a5 = v31;
      a6 = v32;
    }
  }

  v33 = [v12 layer];
  [v33 convertRect:0 fromLayer:{a3, a4, a5, a6}];
  v35 = v34;

  return v35;
}

void sub_188DACA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _UIPortraitFrameForSceneHosting(void *a1)
{
  v1 = a1;
  v2 = [v1 _window];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [(UIView *)v1 __viewDelegate];
    v4 = [v5 _window];
  }

  [v1 bounds];
  v7 = v6;
  v8 = [v4 _windowHostingScene];
  v9 = [v8 _screen];

  if (v9)
  {
    [v1 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v9 fixedCoordinateSpace];
    [v1 convertRect:v18 toCoordinateSpace:{v11, v13, v15, v17}];
    v7 = v19;
  }

  if (v4)
  {
    [v4 interfaceOrientation];
  }

  return v7;
}

double _UIHomeAffordanceSceneReferenceFrameIntersectionWithView(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 _window];
  v11 = [a1 _window];
  v12 = [v11 _windowHostingScene];

  if (!v12)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UIHomeAffordanceSceneReferenceFrameIntersectionWithView(CGRect, UIView * _Nonnull const __strong)"}];
    [v36 handleFailureInFunction:v37 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:291 description:{@"Invalid conversion attempt with view not in scene: %@", a1}];

    goto LABEL_3;
  }

  [a1 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [a1 superview];
  [v10 convertRect:v21 fromView:{v14, v16, v18, v20}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v10 _convertRectToSceneReferenceSpace:{v23, v25, v27, v29}];
  v40.origin.x = v30;
  v40.origin.y = v31;
  v40.size.width = v32;
  v40.size.height = v33;
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  v39 = CGRectIntersection(v38, v40);
  x = v39.origin.x;
  if (CGRectIsNull(v39))
  {
LABEL_3:
    x = *MEMORY[0x1E695F058];
  }

  return x;
}

void *InputAnalyticsLibrary()
{
  v5 = 0;
  v0 = InputAnalyticsLibraryCore(&v5);
  if (!v0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *InputAnalyticsLibrary(void)"];
    [v1 handleFailureInFunction:v4 file:@"_UISignalAnalytics.m" lineNumber:20 description:{@"%s", v5}];

    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = v5;
  if (v5)
  {
LABEL_5:
    free(v2);
  }

  return v1;
}

void *InputAnalyticsLibrary_0()
{
  v5 = 0;
  v0 = InputAnalyticsLibraryCore_1(&v5);
  if (!v0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *InputAnalyticsLibrary(void)"];
    [v1 handleFailureInFunction:v4 file:@"_UISmartReplyFeedbackManager.m" lineNumber:30 description:{@"%s", v5}];

    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = v5;
  if (v5)
  {
LABEL_5:
    free(v2);
  }

  return v1;
}

void getIAChannelSmartReplies()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getIAChannelSmartRepliesSymbolLoc_ptr;
  v9 = getIAChannelSmartRepliesSymbolLoc_ptr;
  if (!getIAChannelSmartRepliesSymbolLoc_ptr)
  {
    v1 = InputAnalyticsLibrary_0();
    v7[3] = dlsym(v1, "IAChannelSmartReplies");
    getIAChannelSmartRepliesSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIAChannelSmartReplies(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UISmartReplyFeedbackManager.m" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_188DB05A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _significantTimeChange()
{
  if (pthread_main_np() == 1)
  {

    ___significantTimeChange_block_invoke();
  }

  else
  {
    v0 = MEMORY[0x1E69E96A0];

    dispatch_async(v0, &__block_literal_global_3869);
  }
}

uint64_t ___significantTimeChange_block_invoke()
{
  [MEMORY[0x1E695DFE8] resetSystemTimeZone];
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"_UIApplicationSignificantTimeChangeNotification" object:UIApp userInfo:0];

  v1 = UIApp;

  return [v1 significantTimeChange];
}

void sub_188DB2130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188DB3474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __screenBlanked(uint64_t a1, uint64_t a2)
{
  v3 = qos_class_main();
  v4 = dispatch_get_global_queue(v3, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____screenBlanked_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v4, block);
}

uint64_t ___getTritiumVendorDefinedEvent_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  IntegerValue = IOHIDEventGetIntegerValue();
  result = IOHIDEventGetIntegerValue();
  if (IntegerValue == 65376 && result == 11)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

id _UIFocusEnvironmentRootAncestorEnvironment(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<UIFocusEnvironment>  _Nonnull _UIFocusEnvironmentRootAncestorEnvironment(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v7 handleFailureInFunction:v8 file:@"UIFocusEnvironment.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v2 = v1;
  v3 = _UIFocusEnvironmentParentEnvironment(v2);

  v4 = v2;
  if (v3)
  {
    v5 = v2;
    do
    {
      v4 = v3;

      v3 = _UIFocusEnvironmentParentEnvironment(v4);

      v5 = v4;
    }

    while (v3);
  }

  return v4;
}

NSString *__cdecl NSStringFromCGAffineTransform(CGAffineTransform *transform)
{
  v1 = CFStringCreateWithFormat(0, 0, @"[%.*g, %.*g, %.*g, %.*g, %.*g, %.*g]", 17, *&transform->a, 17, *&transform->b, 17, *&transform->c, 17, *&transform->d, 17, *&transform->tx, 17, *&transform->ty);

  return v1;
}

uint64_t _UITouchesContainsTouchFromCarTouchpad(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = *v11;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v10 + 1) + 8 * i);
        if ([v5 type] == 1)
        {
          v6 = [v5 view];
          v7 = [v6 traitCollection];
          v8 = [v7 userInterfaceIdiom];

          if (v8 == 3)
          {
            v2 = 1;
            goto LABEL_12;
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

void forwardMethod2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  v8 = a1;
  v9 = [v8 nextResponder];

  if (v9 && v9 != v8)
  {
    ([v9 methodForSelector:a2])(v9, a2, v10, v7);
  }
}

double _UIControlMostlyInsideEdgeInsets()
{
  if (_MergedGlobals_15_2 == 1)
  {
    return *&qword_1ED49BFD8;
  }

  v1 = +[UIDevice currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if ((v2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v0 = -25.0;
  }

  else
  {
    v0 = -70.0;
  }

  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = -25.0;
  }

  else
  {
    v5 = -70.0;
  }

  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = -25.0;
  }

  else
  {
    v8 = -70.0;
  }

  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v11 = -25.0;
  }

  else
  {
    v11 = -70.0;
  }

  qword_1ED49BFD8 = *&v0;
  unk_1ED49BFE0 = *&v5;
  qword_1ED49BFE8 = *&v8;
  unk_1ED49BFF0 = *&v11;
  _MergedGlobals_15_2 = 1;
  return v0;
}

uint64_t _UIFocusEnvironmentIsAncestorOfEnvironment(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___UIFocusEnvironmentIsAncestorOfEnvironment_block_invoke;
    v8[3] = &unk_1E70FFB40;
    v9 = v3;
    v10 = &v11;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(v5, v8);
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  return v6 & 1;
}

void sub_188DB5850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIViewTouchShouldBegin(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (!a3 || a3 == a4)
  {
    return 1;
  }

  v7 = MEMORY[0x1E695DFD8];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 setWithObject:a1];
  v12 = [v8 touchesShouldBegin:v11 withEvent:v10 inContentView:v9];

  return v12;
}

uint64_t _UIFocusEnvironmentIsEligibleForFocusInteraction(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _UIFocusEnvironmentIsEligibleForFocusInteraction(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"UIFocusEnvironment.m" lineNumber:227 description:@"Cannot determine the focus interaction eligibility for a nil focus environment."];
  }

  if (_UIFocusItemIsViewOrRespondsToSelector(v1, sel__isEligibleForFocusInteraction))
  {
    v2 = [v1 _isEligibleForFocusInteraction];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t _UIFocusItemIsViewOrRespondsToSelector(void *a1, uint64_t a2)
{
  v2 = a1;
  if (_IsKindOfUIView(v2))
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

__CFString *_UIStringFromFocusHeading(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x1E696AD60] string];
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___UIStringFromFocusHeading_block_invoke;
    v8[3] = &unk_1E7108228;
    v3 = v2;
    v9 = v3;
    v10 = v11;
    v4 = _Block_copy(v8);
    v5 = v4;
    if (v1)
    {
      (*(v4 + 2))(v4, @"Up");
    }

    if ((v1 & 2) != 0)
    {
      (v5)[2](v5, @"Down");
    }

    if ((v1 & 4) != 0)
    {
      (v5)[2](v5, @"Left");
    }

    if ((v1 & 8) != 0)
    {
      (v5)[2](v5, @"Right");
    }

    if ((v1 & 0x20) != 0)
    {
      (v5)[2](v5, @"Previous");
    }

    if ((v1 & 0x10) != 0)
    {
      (v5)[2](v5, @"Next");
    }

    if ((v1 & 0x100) != 0)
    {
      (v5)[2](v5, @"First");
    }

    if ((v1 & 0x200) != 0)
    {
      (v5)[2](v5, @"Last");
    }

    v6 = v3;

    _Block_object_dispose(v11, 8);
  }

  else
  {
    v6 = @"None";
  }

  return v6;
}

void sub_188DB7F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UITreeFirstCommonAncestor(void *a1, void *a2, const char *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_18;
  }

  if (v5 == v6)
  {
    v8 = v5;
    goto LABEL_18;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:514 capacity:20];
  v10 = 1;
  v11 = 1;
  v12 = v7;
  v13 = v5;
  while (!v11)
  {
    v13 = 0;
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_8:
    v12 = 0;
LABEL_12:
    v11 = v13 != 0;
    v10 = v12 != 0;
    if (!(v13 | v12))
    {
      v8 = 0;
      goto LABEL_17;
    }
  }

  if ([v9 containsObject:v13])
  {
    goto LABEL_16;
  }

  [v9 addObject:v13];
  v13 = [v13 a3];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (([v9 containsObject:v12] & 1) == 0)
  {
    [v9 addObject:v12];
    v12 = [v12 a3];
    goto LABEL_12;
  }

  v13 = v12;
LABEL_16:
  v8 = v13;
LABEL_17:

LABEL_18:

  return v8;
}

id _UIFocusEnvironmentEffectivePreferredFocusEnvironments(void *a1, _BYTE *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<id<UIFocusEnvironment>> * _Nonnull _UIFocusEnvironmentEffectivePreferredFocusEnvironments(__strong id<UIFocusEnvironment> _Nonnull, BOOL * _Nullable)"}];
    [v13 handleFailureInFunction:v14 file:@"UIFocusEnvironment.m" lineNumber:471 description:@"Cannot determine effective preferred focus environments for a nil environment."];
  }

  v4 = _UIFocusEnvironmentPreferredFocusEnvironments(v3);
  v5 = [v4 count];
  v6 = dyld_program_sdk_at_least();
  if (v5)
  {
    if (v6 && [v4 indexOfObjectIdenticalTo:v3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v4 arrayByAddingObject:v3];
      goto LABEL_11;
    }

    IsKindOfUIView = 0;
    if (!a2)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a2 = IsKindOfUIView;
    goto LABEL_13;
  }

  if (v6)
  {
    v17[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
LABEL_11:
    v9 = v7;

    IsKindOfUIView = 0;
    v4 = v9;
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v11 = __UIFocusEnvironmentPreferredFocusedView(v3, &v15);
  if (v11 || v15 != 1)
  {
    v16 = v3;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];

    IsKindOfUIView = 0;
    v4 = v12;
  }

  else if (a2)
  {
    IsKindOfUIView = _IsKindOfUIView(v3);
  }

  else
  {
    IsKindOfUIView = 0;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v4;
}

id _UIFocusEnvironmentPreferredFocusEnvironments(void *a1)
{
  v1 = a1;
  IsViewOrViewControllerOrRespondsToSelector = _UIFocusEnvironmentIsViewOrViewControllerOrRespondsToSelector(v1, sel_preferredFocusEnvironments);
  v3 = MEMORY[0x1E695E0F0];
  if (IsViewOrViewControllerOrRespondsToSelector)
  {
    v4 = [v1 preferredFocusEnvironments];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v3 = v6;
  }

  return v3;
}

uint64_t _UIFocusEnvironmentIsViewOrViewControllerOrRespondsToSelector(void *a1, uint64_t a2)
{
  v2 = a1;
  if (_IsKindOfUIView(v2) & 1) != 0 || ([v2 __isKindOfUIViewController])
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

void _enumeratePreferredFocusEnvironments(void *a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_35:
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _enumeratePreferredFocusEnvironments(_UIFocusEnvironmentPreferenceEnumerator *__strong, _UIFocusEnvironmentPreferenceEnumerationContext *__strong, void (^__strong)(__strong id<_UIFocusEnvironmentPreferenceEnumerationContext>, _UIFocusEnvironmentPreferenceEnumerationResult *), _UIFocusEnvironmentPreferenceEnumerationResult *)"}];
    [v25 handleFailureInFunction:v26 file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:475 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (a4)
    {
      goto LABEL_4;
    }

LABEL_36:
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _enumeratePreferredFocusEnvironments(_UIFocusEnvironmentPreferenceEnumerator *__strong, _UIFocusEnvironmentPreferenceEnumerationContext *__strong, void (^__strong)(__strong id<_UIFocusEnvironmentPreferenceEnumerationContext>, _UIFocusEnvironmentPreferenceEnumerationResult *), _UIFocusEnvironmentPreferenceEnumerationResult *)"}];
    [v27 handleFailureInFunction:v28 file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:476 description:{@"Invalid parameter not satisfying: %@", @"result"}];

    goto LABEL_4;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _enumeratePreferredFocusEnvironments(_UIFocusEnvironmentPreferenceEnumerator *__strong, _UIFocusEnvironmentPreferenceEnumerationContext *__strong, void (^__strong)(__strong id<_UIFocusEnvironmentPreferenceEnumerationContext>, _UIFocusEnvironmentPreferenceEnumerationResult *), _UIFocusEnvironmentPreferenceEnumerationResult *)"}];
  [v23 handleFailureInFunction:v24 file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"enumerator"}];

  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_3:
  if (!a4)
  {
    goto LABEL_36;
  }

LABEL_4:
  v34 = 0;
  v10 = [v8 isInPreferredSubtree];
  if (v9 && (v10 & 1) != 0)
  {
    v9[2](v9, v8, &v34);
    if (v34 == 3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = [v8 debugStack];
    v12 = v11;
    if (v9 && v11)
    {
      v13 = [v8 isPreferredByItself];

      if (v13)
      {
        goto LABEL_13;
      }

      v12 = [v8 debugStack];
      v14 = [off_1E70ECC50 messageWithString:@"Not visiting node. Outside of preferred subtree."];
      [v12 addMessage:v14];
    }
  }

LABEL_13:
  if ([v8 prefersNothingFocused])
  {
LABEL_14:
    *a4 = 3;
    goto LABEL_15;
  }

  if (v34 != 1)
  {
    if (v34 == 2)
    {
      *a4 = 2;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = [v8 preferredEnvironments];
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v29 = 0;
          [v8 pushEnvironment:v20];
          _enumeratePreferredFocusEnvironments(v7, v8, v9, &v29);
          [v8 popEnvironment];
          if ((v29 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            *a4 = v29;
            goto LABEL_29;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_29:

    if ([v8 isInPreferredSubtree] && *a4 != 3)
    {
      v21 = [v7 didVisitAllPreferencesForEnvironmentHandler];
      v22 = v21;
      if (v21)
      {
        (*(v21 + 16))(v21, v8, a4);
      }
    }
  }

LABEL_15:
}

id __UIFocusEnvironmentPreferredFocusedView(void *a1, _BYTE *a2)
{
  v3 = a1;
  IsViewOrViewControllerOrRespondsToSelector = _UIFocusEnvironmentIsViewOrViewControllerOrRespondsToSelector(v3, sel_preferredFocusedView);
  v5 = IsViewOrViewControllerOrRespondsToSelector;
  if (!IsViewOrViewControllerOrRespondsToSelector)
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = [v3 preferredFocusedView];
  if (a2)
  {
LABEL_5:
    *a2 = v5;
  }

LABEL_6:

  return v6;
}

id _UIFocusItemSafeCast(void *a1)
{
  v1 = a1;
  if ((_IsKindOfUIView(v1) & 1) != 0 || [v1 conformsToProtocol:&unk_1EFE40ED8])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _UIFocusItemCanBecomeFocused(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIFocusItemCanBecomeFocused(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull)"}];
    [v9 handleFailureInFunction:v10 file:@"UIFocusItem.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  if ([v3 canBecomeFocused])
  {
    v5 = [v4 behavior];
    v6 = [v5 disablesFocusabilityForItemsContainingFocus];

    if (v6)
    {
      v7 = [v4 _focusedItemIsContainedInEnvironment:v3 includeSelf:0] ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t _UIFocusItemIsFocusedOrFocusableInFocusSystem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusedOrFocusableInFocusSystem(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull)"}];
    [v8 handleFailureInFunction:v9 file:@"UIFocusItem.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusedOrFocusableInFocusSystem(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull)"}];
    [v10 handleFailureInFunction:v11 file:@"UIFocusItem.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    goto LABEL_3;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  IsFocusedOrFocusableInFocusSystem = __UIFocusItemIsFocusedOrFocusableInFocusSystem(v3, v5, 1, 1);

  return IsFocusedOrFocusableInFocusSystem;
}

uint64_t __UIFocusItemIsFocusedOrFocusableInFocusSystem(void *a1, void *a2, int a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL __UIFocusItemIsFocusedOrFocusableInFocusSystem(__strong id<UIFocusItem>, UIFocusSystem *__strong, BOOL, BOOL)"}];
    [v16 handleFailureInFunction:v17 file:@"UIFocusItem.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL __UIFocusItemIsFocusedOrFocusableInFocusSystem(__strong id<UIFocusItem>, UIFocusSystem *__strong, BOOL, BOOL)"}];
  [v18 handleFailureInFunction:v19 file:@"UIFocusItem.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

LABEL_3:
  if (_UIFocusItemCanBecomeFocused(v7, v9))
  {
    IsEligibleForFocusInteraction = _UIFocusEnvironmentIsEligibleForFocusInteraction(v7);
  }

  else
  {
    IsEligibleForFocusInteraction = 0;
  }

  v11 = 0;
  if ((IsEligibleForFocusInteraction & 1) == 0 && a4)
  {
    v12 = [v9 focusedItem];
    v11 = v12 == v7;
  }

  v13 = IsEligibleForFocusInteraction | v11;
  if (v13 == 1 && a3)
  {
    v14 = [UIFocusSystem focusSystemForEnvironment:v7];
    v13 = v14 == v9;
  }

  return v13;
}

void _UITreeBreadthFirstTraversal(void *a1, const char *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v6)
  {
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UITreeBreadthFirstTraversal(id<NSFastEnumeration>  _Nullable __strong, SEL _Nonnull, BOOL (^ _Nonnull __strong)(id  _Nonnull __strong, BOOL * _Nonnull))"}];
    [v17 handleFailureInFunction:v18 file:@"_UICommonAlgorithms.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"visitor != NULL"}];

    if (!v5)
    {
      goto LABEL_20;
    }
  }

  v24 = 0;
  v19 = v5;
  v7 = [MEMORY[0x1E695DF70] arrayWithObject:v5];
  if ([v7 count])
  {
    v8 = 0;
    do
    {
      v9 = [v7 objectAtIndexedSubscript:v8];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            if (v6[2](v6, v15, &v24))
            {
              if (v24)
              {
                goto LABEL_18;
              }

              v16 = [v15 a2];
              if (v16)
              {
                [v7 addObject:v16];
              }
            }

            else if (v24)
            {
              goto LABEL_18;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

LABEL_18:

      ++v8;
    }

    while (v8 < [v7 count]);
  }

  v5 = v19;
LABEL_20:
}

BOOL _UIFocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic, _UIInternalPreferencesRevisionVar == _UIInternalPreference_FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic, @"FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic;
    }

    while (v0 != _UIInternalPreference_FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic);
  }

  return byte_1EA95E444 && v1;
}

uint64_t _UIFocusEnvironmentIsEligibleForFocusOcclusion(void *a1, _BYTE *a2)
{
  v3 = a1;
  if (!v3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIFocusEnvironmentIsEligibleForFocusOcclusion(__strong id<UIFocusEnvironment> _Nonnull, BOOL * _Nullable)"}];
    [v7 handleFailureInFunction:v8 file:@"UIFocusEnvironment.m" lineNumber:239 description:@"Cannot determine the focus occlusion eligibility for a nil focus environment."];
  }

  IsEligibleForFocusInteraction = _UIFocusEnvironmentIsEligibleForFocusInteraction(v3);
  if (a2)
  {
    *a2 = IsEligibleForFocusInteraction;
  }

  if (IsEligibleForFocusInteraction)
  {
    v5 = 1;
  }

  else if (_UIFocusItemIsViewOrRespondsToSelector(v3, sel__isEligibleForFocusOcclusion))
  {
    v5 = [v3 _isEligibleForFocusOcclusion];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _recursiveExamineAppearancesForTraitCollections(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (([(UITraitCollection *)a2 _containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:v9]& 1) != 0)
          {
            v6 = 1;
            return v6 & 1;
          }
        }

        else
        {
          v10 = [a1 objectForKey:v9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = _recursiveExamineAppearancesForTraitCollections(v10, a2);
          }
        }
      }

      v5 = [a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t _UISceneLiveResizeSnapshotsEnabled()
{
  result = _UILiveSceneResizeEnabled();
  if (result)
  {
    v1 = +[_UISceneLiveResizePrototypeSettingsDomain rootSettings];
    v2 = [v1 snapshottingEnabled];

    return v2;
  }

  return result;
}

double _UIFocusAnimationNormalizedDurationScaleFactorInContext(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = 1.0;
  if (v1)
  {
    v4 = 0.0;
    v5 = 0.0;
    if (fabs(_UIFocusAnimationDestinationViewDistanceOffscreen(v1)) < 2.22044605e-16)
    {
      [v2 _focusVelocity];
      v7 = v6;
      [v2 _focusVelocity];
      v5 = hypot(v7, v8);
    }

    if (!_UIInternalPreferenceUsesDefault_1(&unk_1ED48AEC0, @"FocusAnimationNormalizedDurationScaleFactorSlowThreshold"))
    {
      v4 = *&qword_1ED48AEC8;
    }

    v9 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AED0, @"FocusAnimationNormalizedDurationScaleFactorFastThreshold");
    if (v5 >= v4)
    {
      v10 = *&qword_1ED48AED8;
      if (v9)
      {
        v10 = 30000.0;
      }

      v3 = fmin(fmax(1.0 - (v5 - v4) / v10, 0.0), 1.0);
    }
  }

  return v3;
}

double _UIFocusAnimationDestinationViewDistanceOffscreen(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [a1 nextFocusedItem];
  v2 = [_UIFocusSystemSceneComponent sceneComponentForEnvironment:v1];
  v3 = [v2 _windowScene];
  v4 = [v3 _coordinateSpace];

  v5 = _UIFocusItemFrameInCoordinateSpace(v1, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v4 bounds];
  v16 = UIDistanceBetweenRects(v5, v7, v9, v11, v12, v13, v14, v15);

  return v16;
}

long double UIDistanceBetweenRects(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (CGRectIsNull(*&a1))
  {
    return 1.79769313e308;
  }

  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  if (CGRectIsNull(v30))
  {
    return 1.79769313e308;
  }

  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  v40.origin.x = a5;
  v40.origin.y = a6;
  v40.size.width = a7;
  v40.size.height = a8;
  v17 = CGRectIntersectsRect(v31, v40);
  result = 0.0;
  if (!v17)
  {
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    MinX = CGRectGetMinX(v32);
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    MinY = CGRectGetMinY(v33);
    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    MaxX = CGRectGetMaxX(v34);
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    MaxY = CGRectGetMaxY(v35);
    v36.origin.x = a5;
    v36.origin.y = a6;
    v36.size.width = a7;
    v36.size.height = a8;
    v19 = CGRectGetMinX(v36);
    v37.origin.x = a5;
    v37.origin.y = a6;
    v37.size.width = a7;
    v37.size.height = a8;
    v20 = CGRectGetMinY(v37);
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = a7;
    v38.size.height = a8;
    v21 = CGRectGetMaxX(v38);
    v39.origin.x = a5;
    v39.origin.y = a6;
    v39.size.width = a7;
    v39.size.height = a8;
    v22 = CGRectGetMaxY(v39);
    if (v21 <= MinX && v22 <= MinY)
    {
      v23 = MinX - v21;
LABEL_9:
      v24 = MinY - v22;
      v25 = v23;
LABEL_14:

      return hypot(v25, v24);
    }

    if (v21 > MinX || MaxY > v20)
    {
      if (MaxX <= v19 && v22 <= MinY)
      {
        v23 = v19 - MaxX;
        goto LABEL_9;
      }

      if (MaxX > v19 || MaxY > v20)
      {
        if (v21 <= MinX)
        {
          return MinX - v21;
        }

        if (MaxX <= v19)
        {
          return v19 - MaxX;
        }

        if (v22 <= MinY)
        {
          return MinY - v22;
        }

        if (MaxY <= v20)
        {
          return v20 - MaxY;
        }

        return 1.79769313e308;
      }

      v25 = v19 - MaxX;
    }

    else
    {
      v25 = MinX - v21;
    }

    v24 = v20 - MaxY;
    goto LABEL_14;
  }

  return result;
}

id _UIFocusBehaviorForEnvironment(uint64_t a1)
{
  if (a1)
  {
    v1 = [UIFocusSystem focusSystemForEnvironment:a1];
    [v1 behavior];
  }

  else
  {
    v1 = +[UITraitCollection _fallbackTraitCollection];
    _UIFocusBaseBehaviorForTraitCollection(v1);
  }
  v2 = ;

  return v2;
}

double _UIVectorForFocusHeading(char a1)
{
  result = -1.0;
  v2 = 0.0;
  if ((a1 & 4) != 0)
  {
    v2 = -1.0;
  }

  if ((a1 & 8) != 0)
  {
    v2 = 1.0;
  }

  if ((a1 & 0x20) == 0)
  {
    result = v2;
  }

  if ((a1 & 0x10) != 0)
  {
    return 1.0;
  }

  return result;
}

double _UIFocusItemFrameInCoordinateSpace(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    goto LABEL_8;
  }

  if (_UIFocusItemIsViewOrRespondsToSelector(v3, sel__focusRegionFrameInCoordinateSpace_))
  {
    [v3 _focusRegionFrameInCoordinateSpace:v5];
    v7 = v6;
    goto LABEL_9;
  }

  if ((_UIFocusItemIsViewOrRespondsToSelector(v3, sel_frame) & 1) == 0)
  {
LABEL_8:
    v7 = *MEMORY[0x1E695F050];
    goto LABEL_9;
  }

  v8 = _UIParentCoordinateSpaceForFocusItem(v3);
  if (v8)
  {
    [v3 frame];
    [v8 convertRect:v5 toCoordinateSpace:?];
    v7 = v9;
  }

  else
  {
    v7 = *MEMORY[0x1E695F050];
  }

LABEL_9:
  return v7;
}

id _forceUnwrappedScene(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (os_variant_has_internal_diagnostics())
  {
    if (!WeakRetained)
    {
      v3 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "Scene component is not attached to a scene.", buf, 2u);
      }
    }
  }

  else if (!WeakRetained)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Assert", &_forceUnwrappedScene___s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Scene component is not attached to a scene.", v5, 2u);
    }
  }

  return WeakRetained;
}

id _UIIntelligenceSystemLightView.init(frame:preferringAudioReactivity:)(char a1, double a2, double a3, double a4, double a5)
{
  v5[OBJC_IVAR____UIIntelligenceSystemLightView_preferAudioReactivity] = a1;
  v10 = [objc_allocWithZone(_UIIntelligenceLightSourceSceneSpecification) init];
  v11 = sub_18A4A7258();
  v12 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];

  v19.receiver = v5;
  v19.super_class = _UIIntelligenceSystemLightView;
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_serviceIdentity_sceneSpecification_, v12, v10, a2, a3, a4, a5);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[4] = sub_188DBED0C;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_188DBEC74;
  v18[3] = &block_descriptor_51;
  v15 = _Block_copy(v18);
  v16 = v13;

  [v16 set:v15 connectionActionProvider:?];
  _Block_release(v15);

  return v16;
}

uint64_t sub_188DBCA14()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188DBCAD8(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DEF8, &qword_18A669398);
    v15 = v5;
    v16 = &off_1EFAE9B58;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
    a1 = sub_18A4A87E8();
    if (a2 < 0)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    a1 = sub_18A4A8A38();
    v7 = (boxed_opaque_existential_0 + v5[9]);
    *v7 = a1;
    v7[1] = v8;
    if (!a2)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    sub_18A4A8A28();
    a1 = sub_18A4A8A18();
    if (a1)
    {
LABEL_10:
      *(boxed_opaque_existential_0 + v5[10]) = a2;
      *(boxed_opaque_existential_0 + v5[11]) = MEMORY[0x1E69E7CC0];
      sub_188A5EBAC(&v14, v3 + OBJC_IVAR____UISimpleTimedInhibitor__inhibitor);
      v13.receiver = v3;
      v13.super_class = _UISimpleTimedInhibitor;
      return objc_msgSendSuper2(&v13, sel_init);
    }

    __break(1u);
  }

  if (!a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DF00, &unk_18A6693A0);
    v15 = v5;
    v16 = &off_1EFAE9B58;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
    a1 = sub_18A4A87D8();
    if ((a2 & 0x8000000000000000) == 0)
    {
      a1 = sub_18A4A8A38();
      v9 = (boxed_opaque_existential_0 + v5[9]);
      *v9 = a1;
      v9[1] = v10;
      if (a2)
      {
        sub_18A4A8A28();
        a1 = sub_18A4A8A18();
        if (a1)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  v12 = a1;
  type metadata accessor for _UISimpleTimedInhibitorClockType(0);
  *&v14 = v12;
  result = sub_18A4A8768();
  __break(1u);
  return result;
}

void sub_188DBCCD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64E3F0;
  *(v1 + 32) = CGColorCreateGenericGray(1.0, 0.3);
  *(v1 + 40) = CGColorCreateGenericGray(1.0, 0.0);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  type metadata accessor for CGColor(0);
  v3 = sub_18A4A7518();

  v4 = CGGradientCreateWithColors(DeviceGray, v3, 0);

  if (v4)
  {
    v5 = fmax(*(v0 + OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_radius), 4.0);
    v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize_];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    *(v7 + 32) = v5;
    *(v7 + 40) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_188DBCFC0;
    *(v8 + 24) = v7;
    v14[4] = sub_188A86D40;
    v14[5] = v8;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_188DBDF04;
    v14[3] = &block_descriptor_12;
    v9 = _Block_copy(v14);
    v10 = v4;

    v11 = [v6 imageWithActions_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    else
    {
      v12 = *(v0 + OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_emitterCell);
      v13 = [v11 CGImage];
      [v12 setContents_];
    }
  }
}

uint64_t sub_188DBCF78()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

char *_UISoftOutlineView.init(frame:configuration:)(_OWORD *a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_shapeView;
  *&v5[v11] = [objc_allocWithZone(UIView) init];
  v12 = &v5[OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_configuration];
  *(v12 + 41) = *(a1 + 41);
  v13 = a1[2];
  *(v12 + 1) = a1[1];
  *(v12 + 2) = v13;
  *v12 = *a1;
  type metadata accessor for _UISoftOutlineView();
  v15 = v14;
  v24.receiver = v5;
  v24.super_class = v14;
  v16 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a2, a3, a4, a5);
  v17 = OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_shapeView;
  v18 = *(v16 + OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_shapeView);
  v19 = v16;
  v20 = v18;
  [v19 bounds];
  [v20 setFrame_];

  [v19 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480, &unk_18A653360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for UITraitActiveAppearance;
  *(inited + 40) = &protocol witness table for UITraitActiveAppearance;
  v23[3] = v15;
  v23[0] = v19;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_setDeallocating();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  sub_188DBE5BC();

  return v19;
}

void sub_188DBD174()
{
  v1 = sub_188DBE97C();
  v3 = v2;
  v4 = *(v0 + OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_shapeView);
  v5 = [v4 layer];
  v6 = [v1 CGColor];
  [v5 setBorderColor_];

  v7 = [v4 layer];
  v8 = [v3 CGColor];
  [v7 setShadowColor_];
}

void sub_188DBD280()
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    [v0 setMaskView_];
    v1 = [v0 layer];
    v2 = sub_18A4A7258();
    v15 = [v1 animationForKey_];

    v3 = v15;
    if (!v15)
    {
      v4 = sub_18A4A7258();
      v5 = [objc_opt_self() animationWithKeyPath_];

      v6 = sub_18A4A77F8();
      [v5 setFromValue_];

      v7 = sub_18A4A2D28();
      [v5 setToValue_];

      v8 = v5;
      [v8 setDuration_];
      LODWORD(v9) = 2139095040;
      [v8 setRepeatCount_];
      [v8 setAutoreverses_];
      v10 = [objc_opt_self() functionWithName_];
      [v8 setTimingFunction_];

      [v8 setFillMode_];
      [v8 setRemovedOnCompletion_];

      v11 = [v0 layer];
      v16 = sub_18A4A7258();
      [v11 addAnimation:v8 forKey:v16];

      v3 = v16;
    }

    goto LABEL_5;
  }

  v12 = [v0 layer];
  v13 = sub_18A4A7258();
  [v12 removeAnimationForKey_];

  v3 = [v0 maskView];
  if (v3)
  {
LABEL_5:

    return;
  }

  v14 = *&v0[OBJC_IVAR____TtC5UIKit19_UILatencyLightView_emitterMaskView];

  [v0 setMaskView_];
}

Swift::Void __swiftcall _UILatencyLightView._setParticleScaleOverTime(_:)(Swift::OpaquePointer a1)
{
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9356B8, &qword_18A64F238);
  v2[0] = a1._rawValue;

  sub_188DBE084(v2, 0xD00000000000003ELL, 0x800000018A68DC60);
  sub_188A553EC(v2);
}

char *sub_188DBD944(uint64_t *a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_emitterCell;
  *&v7[v16] = [objc_allocWithZone(MEMORY[0x1E6979360]) init];
  *&v7[OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_radius] = a7;
  v17 = &v7[OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_duration];
  *v17 = v14;
  v17[8] = v15;
  v7[OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_reverse] = a2;
  type metadata accessor for _UILatencyLightView.EmitterMaskView();
  v56.receiver = v7;
  v56.super_class = v18;
  v19 = objc_msgSendSuper2(&v56, sel_initWithFrame_, a3, a4, a5, a6);
  v20 = *(v19 + OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_emitterCell);
  v21 = OBJC_IVAR____TtCC5UIKit19_UILatencyLightViewP33_EC16FCD6D726BF32B6086EE652C76F4615EmitterMaskView_emitterCell;
  v22 = v19;
  v23 = v20;
  v24 = sub_18A4A7258();
  [v23 setName_];

  v55 = v21;
  LODWORD(v25) = 1123024896;
  [*(v19 + v21) setBirthRate_];
  LODWORD(v26) = 1.0;
  [*(v19 + v21) setLifetime_];
  sub_188DBCCD8();
  v27 = *MEMORY[0x1E6979760];
  v28 = [objc_allocWithZone(MEMORY[0x1E6979358]) initWithType_];
  v29 = sub_18A4A7258();
  [v28 &selRef:v29 setNeedsPunchout:?];

  v30 = sub_18A4A7258();
  v31 = sub_18A4A7258();
  [v28 setValue:v30 forKey:v31];

  v32 = sub_18A4A7518();
  v33 = sub_18A4A7258();
  [v28 setValue:v32 forKey:v33];

  v34 = [objc_allocWithZone(MEMORY[0x1E6979358]) initWithType_];
  v35 = sub_18A4A7258();
  [v34 setName_];

  v36 = sub_18A4A7258();
  v37 = sub_18A4A7258();
  [v34 setValue:v36 forKey:v37];

  v38 = sub_18A4A7518();
  v39 = sub_18A4A7258();
  [v34 setValue:v38 forKey:v39];

  v40 = *(v19 + v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_18A64E3F0;
  *(v41 + 32) = v28;
  *(v41 + 40) = v34;
  sub_188A34624(0, &unk_1EA92E830, 0x1E6979358);
  v42 = v40;
  v43 = v28;
  v44 = v34;
  v45 = sub_18A4A7518();

  [v42 setEmitterBehaviors_];

  v46 = [v22 layer];
  objc_opt_self();
  v47 = swift_dynamicCastObjCClassUnconditional();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_18A64B710;
  v49 = *(v19 + v55);
  *(v48 + 32) = v49;
  sub_188A34624(0, &unk_1EA92E870, 0x1E6979360);
  v50 = v49;
  v51 = sub_18A4A7518();

  [v47 setEmitterCells_];

  v52 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEmitterMode_];

  v53 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEmitterShape_];

  return v22;
}

void sub_188DBDF04(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_188DBDF50(void *a1, CGGradient *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = [a1 CGContext];
  v11.x = a3;
  v11.y = a4;
  v12.x = a3;
  v12.y = a4;
  CGContextDrawRadialGradient(v9, a2, v11, 0.0, v12, a5, 0);
}

Swift::Void __swiftcall _UILatencyLightView._setParticleBirthRate(_:)(Swift::Float a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v3 = a1;
  v4 = [v2 initWithFloat_];
  v5[3] = sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
  v5[0] = v4;
  sub_188DBE084(v5, 0xD000000000000022, 0x800000018A68DC00);
  sub_188A553EC(v5);
}

void sub_188DBE084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(v3 + OBJC_IVAR____TtC5UIKit19_UILatencyLightView_emitterMaskView) layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  sub_188C85D28(a1, v15);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_0(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_18A4A86A8();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_18A4A7258();
  [v6 setValue:v13 forKeyPath:v14];

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall _UILatencyLightView._setParticleLifetime(_:)(Swift::Float a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v3 = a1;
  v4 = [v2 initWithFloat_];
  v5[3] = sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
  v5[0] = v4;
  sub_188DBE084(v5, 0xD000000000000021, 0x800000018A68DC30);
  sub_188A553EC(v5);
}

Swift::Void __swiftcall _UILatencyLightView._setDuration(_:)(Swift::Float a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v3 = a1;
  v4 = [v2 initWithFloat_];
  v5[3] = sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
  v5[0] = v4;
  sub_188DBE084(v5, 0x4472657474696D65, 0xEF6E6F6974617275);
  sub_188A553EC(v5);
}

char *_UILatencyLightView.init(frame:configuration:duration:)(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *a1;
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v15 = *(a1 + 4);
  v16 = *(a1 + 5);
  v17 = a1[56];
  v18 = *(a2 + 8);
  v19 = v15 * 2.8;
  v31 = *(a1 + 6);
  if (!a1[56])
  {
    v20 = *(a1 + 2);
    if (!*a1)
    {
      goto LABEL_11;
    }

    if (v12 != 2)
    {
LABEL_10:
      v20 = 0.0;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v17 == 1)
  {
    if (v12 != 2)
    {
      v20 = *(a1 + 2);
      if (v12 != 1)
      {
        goto LABEL_10;
      }

LABEL_11:
      v21 = v19 + v16 + v20;
      goto LABEL_12;
    }

LABEL_8:
    v20 = v13 * 0.5;
    goto LABEL_11;
  }

  v21 = v13 + v19 + v16 + v19 + v16;
LABEL_12:
  v22 = v21 * 0.5;
  *&v32 = *a2;
  BYTE8(v32) = v18;
  type metadata accessor for _UILatencyLightView.EmitterMaskView();
  v24 = objc_allocWithZone(v23);
  *(v6 + OBJC_IVAR____TtC5UIKit19_UILatencyLightView_emitterMaskView) = sub_188DBD944(&v32, 0, a3, a4, a5, a6, v22);
  LOBYTE(v32) = v12;
  *(&v32 + 1) = *(a1 + 1);
  *(&v32 + 1) = *(a1 + 1);
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v36 = v16;
  v37 = v31;
  v38 = v17;
  v25 = _UISoftOutlineView.init(frame:configuration:)(&v32, a3, a4, a5, a6);
  v26 = *&v25[OBJC_IVAR____TtC5UIKit19_UILatencyLightView_emitterMaskView];
  v27 = v25;
  v28 = v26;
  [v27 bounds];
  [v28 setFrame_];

  v29 = [objc_opt_self() defaultCenter];
  [v29 addObserver:v27 selector:sel_updateMasking name:@"UIAccessibilityReduceMotionStatusDidChangeNotification" object:0];

  sub_188DBD280();
  return v27;
}

void sub_188DBE5BC()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_shapeView];
  v2 = [v1 layer];
  v3 = &v0[OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_configuration];
  swift_beginAccess();
  [v2 setBorderWidth_];

  v4 = *v3;
  v5 = [v1 layer];
  v6 = v5;
  if (v4)
  {
    if (v4 == 1)
    {
      v7 = v3[2];
    }

    else
    {
      v7 = v3[2] * 0.5;
    }
  }

  else
  {
    v7 = 0.0;
  }

  [v5 setBorderOffset_];

  v8 = 1.0;
  if (v3[4] <= 0.0)
  {
    if (v3[5] <= 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }
  }

  v9 = [v1 layer];
  [v9 setShadowRadius_];

  v10 = [v1 layer];
  [v10 setShadowOffset_];

  v11 = [v1 layer];
  *&v12 = v8;
  [v11 setShadowOpacity_];

  v13 = v3[6];
  v14 = [v1 layer];
  v15 = v14;
  v16 = v13 > 0.0;
  if (v13 <= 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 2.0;
  }

  [v14 setWantsExtendedDynamicRangeContent_];

  v18 = [v1 layer];
  [v18 setAllowsLimitedHeadroom_];

  v19 = [v1 layer];
  [v19 setContentsMaximumDesiredEDR_];

  v20 = *(v3 + 56);
  v21 = [v1 layer];
  v22 = v21;
  if (!v20)
  {
    [v21 setMasksToBounds_];

    v25 = [v1 layer];
LABEL_19:
    v26 = v25;
    [v26 setInvertsMask_];

    [v1 setMaskView_];
    goto LABEL_20;
  }

  if (v20 != 1)
  {
    [v21 setMasksToBounds_];

    v25 = [v1 layer];
    goto LABEL_19;
  }

  [v21 setMasksToBounds_];

  v23 = [v1 layer];
  [v23 setInvertsMask_];

  v24 = [v1 maskView];
  if (v24)
  {
  }

  else
  {
    v27 = [objc_allocWithZone(UIView) init];
    v28 = [objc_opt_self() blackColor];
    [v27 setBackgroundColor_];

    [v1 setMaskView_];
    [v0 setNeedsLayout];
  }

LABEL_20:
  sub_188DC0394();
  sub_188DBD174();
}

id sub_188DBE97C()
{
  v1 = &v0[OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_configuration];
  swift_beginAccess();
  v2 = v1[1];
  v3 = [v0 traitCollection];
  v4 = [v2 resolvedColorWithTraitCollection_];

  v5 = v1[3];
  v6 = [v0 traitCollection];
  v7 = [v5 resolvedColorWithTraitCollection_];

  if (*(v1 + 6) > 0.0)
  {
    v8 = [v0 window];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 screen];

      [v10 potentialEDRHeadroom];
      v12 = v11;

      sub_188DC755C(v24);
      if ((v25 & 1) == 0)
      {
        v13 = *v24;
        v14 = *&v24[1];
        v16 = *&v24[2];
        v15 = *&v24[3];
        sub_188DC755C(v26);
        if ((v27 & 1) == 0)
        {
          v22 = *&v26[2];
          v23 = *&v26[3];
          v17 = *v26;
          v18 = *&v26[1];
          v19 = (v12 + -1.0) * *(v1 + 6) + 1.0;
          v20 = [objc_allocWithZone(UIColor) initWithRed:v13 * v19 green:v14 * v19 blue:v16 * v19 alpha:v15];
          [objc_allocWithZone(UIColor) initWithRed:v17 * v19 green:v18 * v19 blue:v22 * v19 alpha:v23];

          return v20;
        }
      }
    }
  }

  return v4;
}

Swift::Void __swiftcall _UILatencyLightView._setParticleOpacityOverTime(_:)(Swift::OpaquePointer a1)
{
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9356B8, &qword_18A64F238);
  v2[0] = a1._rawValue;

  sub_188DBE084(v2, 0xD000000000000040, 0x800000018A68DCA0);
  sub_188A553EC(v2);
}

id sub_188DBEC74(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_188A34624(0, &qword_1ED48FD98, 0x1E698E5F0);
    sub_188D06B5C();
    v4 = sub_18A4A7798();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unsigned __int8 *sub_188DBED14(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result[OBJC_IVAR____UIIntelligenceSystemLightView_preferAudioReactivity];

    sub_188EBA480(v2, 0, 0);
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x1E698E5F0]) initWithInfo:v3 responder:0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64B710;
    *(inited + 32) = v5;
    sub_188DBF8A0(inited);
    v8 = v7;
    swift_setDeallocating();
    swift_arrayDestroy();
    return v8;
  }

  return result;
}

void sub_188DBEE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D88, &unk_18A64FF50);
  MEMORY[0x1EEE9AC00](v10);
  type metadata accessor for _BoxedCodableValue();
  if (a2)
  {
    v12 = v11;
    sub_188DBF454(a1, a2, a3, a4);
    sub_188DBF498(0, 0, 0, 0);
    sub_188DBF498(a1, a2, a3, a4);
    v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F670, &qword_18A64FF80);
    v13 = swift_allocObject();
    v22[0] = v13;
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a4;
    v14 = objc_allocWithZone(v12);
    sub_188A55598(v22, v21);
    sub_188DBF454(a1, a2, a3, a4);
    v17 = sub_188DBF4DC(v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v22[0] = &type metadata for _UISceneConnectionOptionCoder._DefinitionIDSetting;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F660, &qword_18A64FF88);
    sub_18A4A7308();
    v19 = sub_18A4A7258();

    v20 = MEMORY[0x18CFE4050](v19);

    [v5 setObject:v18 forSetting:v20];
  }

  else
  {
    sub_188DBF454(a1, 0, a3, a4);
    sub_188DBF498(0, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F660, &qword_18A64FF88);
    sub_18A4A7308();
    v15 = sub_18A4A7258();

    v16 = MEMORY[0x18CFE4050](v15);

    [v5 setObject:0 forSetting:v16];
  }
}

uint64_t sub_188DBF3EC()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

double sub_188DBF454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double sub_188DBF498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t (**sub_188DBF4DC(void *a1))(void *)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if ((*(ObjectType + 136))(a1))
  {
    v5 = &v2[OBJC_IVAR____TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox_contents];
    sub_188A55598(a1, &v2[OBJC_IVAR____TtC5UIKitP33_255CA08DD239FA8856FF3210D2BF9D939_ValueBox_contents]);
    v5[32] = 1;
    v6 = type metadata accessor for _ValueBox();
    v10.receiver = v2;
    v10.super_class = v7;
    ObjectType = objc_msgSendSuper2(&v10, sel_init, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    sub_189095BC0();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for _ValueBox();
    swift_deallocPartialClassInstance();
  }

  return ObjectType;
}

uint64_t sub_188DBF5E4(uint64_t a1)
{
  sub_188A55598(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B768, &unk_18A6627B8);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    return v2;
  }

  return result;
}

double sub_188DBF67C(uint64_t a1, unint64_t a2)
{
  sub_188DBF82C(a1, a2);
  sub_188DBF840(a1, a2);
  if (a2 >> 60 == 15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F650, &unk_18A671B00);
    sub_18A4A7308();
    v5 = sub_18A4A7258();

    v6 = MEMORY[0x18CFE4050](v5);

    [v2 setObject:0 forSetting:{v6, &type metadata for _UISceneConnectionOptionCoder._PayloadDataSetting}];
  }

  else
  {
    sub_188DBF840(0, 0xF000000000000000);
    v11 = a2;
    sub_188DBF7D8(a1, a2);
    v8 = sub_18A4A8778();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F650, &unk_18A671B00);
    sub_18A4A7308();
    v9 = sub_18A4A7258();

    v10 = MEMORY[0x18CFE4050](v9);

    [v2 setObject:v8 forSetting:{v10, &type metadata for _UISceneConnectionOptionCoder._PayloadDataSetting, v11}];
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_188DBF7D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_188DBF82C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_188DBF7D8(result, a2);
  }

  return result;
}

double sub_188DBF840(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_188DC0F30(a1, a2);
  }

  return result;
}

unint64_t sub_188DBF854()
{
  result = qword_1EA930800;
  if (!qword_1EA930800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA930800);
  }

  return result;
}

void sub_188DBF8A0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_18A4A7F68())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349E0, &qword_18A64D528);
      v3 = sub_18A4A8088();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_18A4A7F68();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_188E4A9D8(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_18A4A7C78();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_188A34624(0, &qword_1ED48FD98, 0x1E698E5F0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_18A4A7C88();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_18A4A7C78();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_188A34624(0, &qword_1ED48FD98, 0x1E698E5F0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_18A4A7C88();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_188DC0394()
{
  v1 = sub_18A4A2C58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_configuration];
  swift_beginAccess();
  if (*v5)
  {
    if (*v5 == 1)
    {
      v6 = v5[5];
      v7 = v6 + v5[2];
    }

    else
    {
      v7 = v5[2] * 0.5 + v5[5];
      v6 = v7;
    }
  }

  else
  {
    v7 = v5[5];
    v6 = v5[2] + v7;
  }

  v8 = *&v0[OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_shapeView];
  v9 = [v8 layer];
  [v9 cornerRadius];
  v11 = v10;

  v94 = v11 - v6;
  v12 = [v8 layer];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v98.origin.x = v14;
  v98.origin.y = v16;
  v98.size.width = v18;
  v98.size.height = v20;
  v99 = CGRectInset(v98, v6, v6);
  x = v99.origin.x;
  y = v99.origin.y;
  width = v99.size.width;
  height = v99.size.height;
  v22 = [v8 layer];
  [v22 cornerRadius];
  v24 = v23;

  v25 = [v8 layer];
  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v100.origin.x = v27;
  v100.origin.y = v29;
  v100.size.width = v31;
  v100.size.height = v33;
  v101 = CGRectInset(v100, -v7, -v7);
  v34 = v101.origin.x;
  v35 = v101.origin.y;
  v36 = v101.size.width;
  v37 = v101.size.height;
  v38 = *(v5 + 56);
  v39 = [v0 layer];
  v40 = v39;
  if (v38)
  {
    v41 = v24 + v7;
    if (v38 == 1)
    {
      v42 = [v39 cornerCurve];

      if (v41 == 0.0)
      {
        v102.origin.x = v34;
        v102.origin.y = v35;
        v102.size.width = v36;
        v102.size.height = v37;
        v43 = CGPathCreateWithRect(v102, 0);
LABEL_38:
        v71 = v43;

LABEL_60:
        v73 = 0;
        goto LABEL_61;
      }

      v54 = sub_18A4A7288();
      v56 = v55;
      if (v54 == sub_18A4A7288() && v56 == v57)
      {
      }

      else
      {
        v70 = sub_18A4A86C8();

        if ((v70 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v43 = CGPathCreateWithContinuousRoundedRect();
      if (v43)
      {
        goto LABEL_38;
      }

LABEL_37:
      v109.origin.x = v34;
      v109.origin.y = v35;
      v109.size.width = v36;
      v109.size.height = v37;
      v43 = CGPathCreateWithRoundedRect(v109, v41, v41, 0);
      goto LABEL_38;
    }

    [v39 cornerRadius];
    v48 = v47;

    if (v48 <= 0.0)
    {
      v50 = v94;
    }

    else
    {
      v104.origin.x = x;
      v104.origin.y = y;
      v104.size.width = width;
      v104.size.height = height;
      v49 = CGRectGetWidth(v104);
      v50 = v94;
      if (v49 == v50 + v50 || (v105.origin.x = x, v105.origin.y = y, v105.size.width = width, v105.size.height = height, CGRectGetHeight(v105) == v50 + v50))
      {
        if (v50 + -1.0 > 1.0)
        {
          v50 = v50 + -1.0;
        }

        else
        {
          v50 = 1.0;
        }
      }

      v106.origin.x = v34;
      v106.origin.y = v35;
      v106.size.width = v36;
      v106.size.height = v37;
      if (CGRectGetWidth(v106) == v41 + v41 || (v107.origin.x = v34, v107.origin.y = v35, v107.size.width = v36, v107.size.height = v37, CGRectGetHeight(v107) == v41 + v41))
      {
        if (v41 + -1.0 > 1.0)
        {
          v41 = v41 + -1.0;
        }

        else
        {
          v41 = 1.0;
        }
      }
    }

    v92 = v34;
    v93 = v36;
    if (v50 == 0.0)
    {
      v51 = v35;
      v52 = v37;
      v108.origin.x = x;
      v108.origin.y = y;
      v108.size.width = width;
      v108.size.height = height;
      v53 = CGPathCreateWithRect(v108, 0);
      goto LABEL_49;
    }

    v66 = sub_18A4A7288();
    v68 = v67;
    if (v66 == sub_18A4A7288() && v68 == v69)
    {
      v51 = v35;
      v52 = v37;
    }

    else
    {
      v51 = v35;
      v52 = v37;
      v74 = sub_18A4A86C8();

      if ((v74 & 1) == 0)
      {
        v76 = y;
        v77 = width;
        v75 = x;
LABEL_48:
        v112.origin.x = v75;
        v112.origin.y = v76;
        v112.size.width = v77;
        v112.size.height = height;
        v53 = CGPathCreateWithRoundedRect(v112, v50, v50, 0);
LABEL_49:
        v78 = v53;
        if (v41 != 0.0)
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }
    }

    v75 = x;
    v76 = y;
    v77 = width;
    v78 = CGPathCreateWithContinuousRoundedRect();
    if (v78)
    {
      if (v41 != 0.0)
      {
LABEL_50:
        v80 = sub_18A4A7288();
        v82 = v81;
        if (v80 == sub_18A4A7288() && v82 == v83)
        {
        }

        else
        {
          v84 = sub_18A4A86C8();

          if ((v84 & 1) == 0)
          {
            v86 = v92;
            v85 = v93;
LABEL_57:
            v113.origin.x = v86;
            v113.origin.y = v51;
            v113.size.width = v85;
            v113.size.height = v52;
            v79 = CGPathCreateWithRoundedRect(v113, v41, v41, 0);
            goto LABEL_58;
          }
        }

        v86 = v92;
        v85 = v93;
        v87 = CGPathCreateWithContinuousRoundedRect();
        if (v87)
        {
LABEL_59:
          (*(v2 + 104))(v4, *MEMORY[0x1E695EEB8], v1);
          v71 = sub_18A4A7CD8();

          (*(v2 + 8))(v4, v1);
          goto LABEL_60;
        }

        goto LABEL_57;
      }

LABEL_46:
      v111.origin.x = v92;
      v111.size.width = v93;
      v111.origin.y = v51;
      v111.size.height = v52;
      v79 = CGPathCreateWithRect(v111, 0);
LABEL_58:
      v87 = v79;
      goto LABEL_59;
    }

    goto LABEL_48;
  }

  v44 = [v39 cornerCurve];

  v45 = v94;
  if (v94 != 0.0)
  {
    v58 = sub_18A4A7288();
    v60 = v59;
    v61 = sub_18A4A7288();
    v64 = y;
    v63 = width;
    v65 = x;
    if (v58 == v61 && v60 == v62)
    {
    }

    else
    {
      v72 = sub_18A4A86C8();

      if ((v72 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v46 = CGPathCreateWithContinuousRoundedRect();
    if (v46)
    {
      goto LABEL_42;
    }

LABEL_41:
    v110.origin.x = v65;
    v110.origin.y = v64;
    v110.size.width = v63;
    v110.size.height = height;
    v46 = CGPathCreateWithRoundedRect(v110, v45, v45, 0);
    goto LABEL_42;
  }

  v103.origin.x = x;
  v103.origin.y = y;
  v103.size.width = width;
  v103.size.height = height;
  v46 = CGPathCreateWithRect(v103, 0);
LABEL_42:
  v71 = v46;

  v73 = 1;
LABEL_61:
  v88 = v71;
  v89 = [v8 layer];
  [v89 setShadowPath_];

  v90 = [v8 layer];
  [v90 setInvertsShadow_];
}

uint64_t sub_188DC0EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_188DC0EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_188DC0F30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t __UIFaultDebugAssertLog()
{
  if (qword_1ED4A25B8 != -1)
  {
    dispatch_once(&qword_1ED4A25B8, &__block_literal_global_647);
  }

  return qword_1ED4A25B0;
}

id _UIFocusEnvironmentCombinedPreferredFocusEnvironments(void *a1, void *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<id<UIFocusEnvironment>> * _Nonnull _UIFocusEnvironmentCombinedPreferredFocusEnvironments(id<UIFocusEnvironment>  _Nonnull __strong, NSArray<id<UIFocusEnvironment>> * _Nonnull __strong, _UIPreferredFocusedViewPrioritizationType)"}];
    [v13 handleFailureInFunction:v14 file:@"_UIFocusPlatformHelper.m" lineNumber:208 description:@"Cannot determine combined preferred focus environments for a nil environment."];
  }

  if (!v6)
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  if (a3 == 2)
  {
    v7 = __UIFocusEnvironmentPreferredFocusedView(v5, 0);
    if (v7 && [v6 indexOfObjectIdenticalTo:v7] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v6 arrayByAddingObject:v7];

      v6 = v11;
    }
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_16;
    }

    v7 = __UIFocusEnvironmentPreferredFocusedView(v5, 0);
    if (v7)
    {
      v8 = [v6 firstObject];

      if (v7 != v8)
      {
        v15[0] = v7;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        v10 = [v9 arrayByAddingObjectsFromArray:v6];

        v6 = v10;
      }
    }

    else if ((dyld_program_sdk_at_least() & 1) == 0)
    {

      v6 = MEMORY[0x1E695E0F0];
    }
  }

LABEL_16:

  return v6;
}

id _UIFocusEnvironmentPreferredFocusMapContainer(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<_UIFocusRegionContainer>  _Nullable _UIFocusEnvironmentPreferredFocusMapContainer(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"UIFocusEnvironment.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__81;
  v11 = __Block_byref_object_dispose__81;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___UIFocusEnvironmentPreferredFocusMapContainer_block_invoke;
  v6[3] = &unk_1E71080D8;
  v6[4] = &v7;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v1, v6);
  v2 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_188DC1BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_UIFocusRegionContainerProxy *_UIFocusRegionContainerFromEnvironmentAndContainer(uint64_t a1, uint64_t a2)
{
  v2 = [_UIFocusEnvironmentContainerTuple tupleWithOwningEnvironment:a1 itemContainer:a2];
  v3 = [v2 owningEnvironment];
  v4 = [v2 itemContainer];
  v5 = v4;
  if (v3 == v4 && [v4 conformsToProtocol:&unk_1EFFA7750])
  {
    v6 = v5;
  }

  else
  {
    v6 = [[_UIFocusRegionContainerProxy alloc] initWithEnvironmentContainer:v2];
  }

  v7 = v6;

  return v7;
}

uint64_t _UIFocusItemContainerIsScrollableContainer(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 conformsToProtocol:&unk_1EFE89228];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *_UIBuiltinTraitStorageDescriptionForIntegerTraitName(unint64_t a1, void *a2)
{
  isEqualToString = objc_msgSend_isEqualToString_(a2, a2, @"_UITraitNameUserInterfaceIdiom");
  v6 = a1 + 1;
  if (isEqualToString)
  {
    v7 = v6 >= 0xC;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v10 = off_1E711C6B8;
    return v10[v6];
  }

  if (objc_msgSend_isEqualToString_(a2))
  {

    return _NSStringFromUIUserInterfaceStyle(a1);
  }

  if (objc_msgSend_isEqualToString_(a2))
  {
    v6 = a1 + 1;
    if (a1 + 1 < 3)
    {
      v10 = off_1E711C718;
      return v10[v6];
    }
  }

  if (((objc_msgSend_isEqualToString_(a2) & 1) != 0 || objc_msgSend_isEqualToString_(a2)) && a1 < 3)
  {
    v9 = off_1E711C730;
    return v9[a1];
  }

  if (objc_msgSend_isEqualToString_(a2) && a1 < 3)
  {
    v9 = off_1E711C748;
    return v9[a1];
  }

  if (!objc_msgSend_isEqualToString_(a2))
  {
    if (objc_msgSend_isEqualToString_(a2))
    {
      v6 = a1 + 1;
      if (a1 + 1 < 3)
      {
        v10 = off_1E711C760;
        return v10[v6];
      }
    }

    if (objc_msgSend_isEqualToString_(a2))
    {
      v6 = a1 + 1;
      if (a1 + 1 < 3)
      {
        v10 = off_1E711C778;
        return v10[v6];
      }
    }

    if (objc_msgSend_isEqualToString_(a2))
    {
      v6 = a1 + 1;
      if (a1 + 1 < 3)
      {
        v10 = off_1E711C790;
        return v10[v6];
      }
    }

    if (objc_msgSend_isEqualToString_(a2))
    {
      v6 = a1 + 1;
      if (a1 + 1 < 3)
      {
        v10 = off_1E711C7A8;
        return v10[v6];
      }
    }

    if (objc_msgSend_isEqualToString_(a2))
    {
      v6 = a1 + 1;
      if (a1 + 1 < 4)
      {
        v10 = off_1E711C7C0;
        return v10[v6];
      }
    }

    if (objc_msgSend_isEqualToString_(a2) && a1 < 3)
    {
      v9 = off_1E711C7E0;
    }

    else if (objc_msgSend_isEqualToString_(a2) && a1 < 3)
    {
      v9 = off_1E711C7F8;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(a2) || a1 >= 4)
      {
        if (objc_msgSend_isEqualToString_(a2) && (v6 = a1 + 1, a1 + 1 < 8))
        {
          v10 = off_1E711C830;
        }

        else if (objc_msgSend_isEqualToString_(a2) && (v6 = a1 + 1, a1 + 1 < 3))
        {
          v10 = off_1E711C870;
        }

        else
        {
          if (objc_msgSend_isEqualToString_(a2))
          {
            switch(a1)
            {
              case 0xFFFFFFFFFFFFFFFFLL:
                return @"Unspecified";
              case 2uLL:
                return @"Enabled";
              case 1uLL:
                return @"Disabled";
            }
          }

          if (objc_msgSend_isEqualToString_(a2) && (v6 = a1 + 1, a1 + 1 < 3))
          {
            v10 = off_1E711C888;
          }

          else if (objc_msgSend_isEqualToString_(a2) && (v6 = a1 + 1, a1 + 1 < 4))
          {
            v10 = off_1E711C8A0;
          }

          else
          {
            if (!objc_msgSend_isEqualToString_(a2))
            {
              return 0;
            }

            v6 = a1 + 1;
            if (a1 + 1 >= 5)
            {
              return 0;
            }

            v10 = off_1E711C8C0;
          }
        }

        return v10[v6];
      }

      v9 = off_1E711C810;
    }

    return v9[a1];
  }

  v11 = _NSStringFromUIContentSizeCategory(a1);
  v12 = [(__CFString *)v11 rangeOfString:@"UICTContentSizeCategory" options:8];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(__CFString *)v11 rangeOfString:@"_UICTContentSizeCategory" options:8];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return v11;
    }
  }

  return [(__CFString *)v11 substringFromIndex:v12 + v13];
}
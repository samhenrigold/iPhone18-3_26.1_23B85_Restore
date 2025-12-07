@interface AVMobileChromelessControlsView
- (AVMobileChromelessControlsLayoutConfiguration)layoutConfiguration;
- (AVMobileChromelessControlsView)init;
- (AVMobileChromelessControlsViewDelegate)delegate;
- (CGRect)contentIntersection;
- (double)_controlsExpansionYOffset;
- (double)_layoutContentTabsInFrame:(uint64_t)frame withConfiguration:(double)configuration canFitState:(double)state;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated;
- (void)layoutSubviews;
- (void)setAuxiliaryControlsView:(id)view;
- (void)setBackgroundView:(id)view;
- (void)setContentIntersection:(CGRect)intersection;
- (void)setContentTabsView:(id)view;
- (void)setDisplayModeControlsView:(id)view;
- (void)setLayoutAllowed:(BOOL)allowed;
- (void)setLayoutConfiguration:(AVMobileChromelessControlsLayoutConfiguration *)configuration;
- (void)setLiveEdgeContentTagView:(id)view;
- (void)setPlaybackControlsView:(id)view;
- (void)setTimelineView:(id)view;
- (void)setTitlebarView:(id)view;
- (void)setVolumeControlsView:(id)view;
@end

@implementation AVMobileChromelessControlsView

- (AVMobileChromelessControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVMobileChromelessControlsLayoutConfiguration)layoutConfiguration
{
  p_layoutConfiguration = &self->_layoutConfiguration;
  v5 = *&self->_layoutConfiguration.controlsPadding;
  *&retstr->includedControls = *&self->_layoutConfiguration.includedControls;
  *&retstr->controlsPadding = v5;
  result = self->_layoutConfiguration.pinnedAuxiliaryControls;
  retstr->pinnedAuxiliaryControls = result;
  *&retstr->contentTabPresented = *&p_layoutConfiguration->contentTabPresented;
  *&retstr->timelineSliderInsets.left = *&p_layoutConfiguration->timelineSliderInsets.left;
  *&retstr->timelineSliderInsets.right = *&p_layoutConfiguration->timelineSliderInsets.right;
  retstr->contentTabPresentationHeight = p_layoutConfiguration->contentTabPresentationHeight;
  return result;
}

- (CGRect)contentIntersection
{
  x = self->_contentIntersection.origin.x;
  y = self->_contentIntersection.origin.y;
  width = self->_contentIntersection.size.width;
  height = self->_contentIntersection.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setContentIntersection:(CGRect)intersection
{
  height = intersection.size.height;
  width = intersection.size.width;
  y = intersection.origin.y;
  x = intersection.origin.x;
  p_contentIntersection = &self->_contentIntersection;
  if (!CGRectEqualToRect(self->_contentIntersection, intersection))
  {
    p_contentIntersection->origin.x = x;
    p_contentIntersection->origin.y = y;
    p_contentIntersection->size.width = width;
    p_contentIntersection->size.height = height;
    traitCollection = [(AVMobileChromelessControlsView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {

      [(AVMobileChromelessControlsView *)self setNeedsLayout];
    }
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated
{
  if (self->_displayModeControlsView == invalidated || self->_volumeControlsView == invalidated)
  {
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v216 = *MEMORY[0x1E69E9840];
  if (![(AVMobileChromelessControlsView *)self layoutAllowed])
  {
    goto LABEL_140;
  }

  traitCollection = [(AVMobileChromelessControlsView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1 && !CGRectIsNull(self->_contentIntersection))
  {
    y = self->_contentIntersection.origin.y;
    x = self->_contentIntersection.origin.x;
    height = self->_contentIntersection.size.height;
    width = self->_contentIntersection.size.width;
  }

  else
  {
    [(AVMobileChromelessControlsView *)self bounds];
    y = v5;
    x = v4;
    height = v7;
    width = v6;
  }

  layoutMarginsGuide = [(AVMobileChromelessControlsView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  rect.origin.x = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  includedControls = self->_layoutConfiguration.includedControls;
  v17 = *&self->_layoutConfiguration.expanded;
  controlsPadding = self->_layoutConfiguration.controlsPadding;
  auxiliaryControlsPlacement = self->_layoutConfiguration.auxiliaryControlsPlacement;
  v19 = self->_layoutConfiguration.pinnedAuxiliaryControls;
  contentTabPresented = self->_layoutConfiguration.contentTabPresented;
  contentTabTransitioning = self->_layoutConfiguration.contentTabTransitioning;
  v202 = *(&self->_layoutConfiguration.contentTabTransitioning + 1);
  *v203 = *(&self->_layoutConfiguration.timelineSliderInsets.left + 2);
  contentTabsPresentationLayout = self->_layoutConfiguration.contentTabsPresentationLayout;
  *&v203[14] = self->_layoutConfiguration.timelineSliderInsets.right;
  contentTabPresentationHeight = self->_layoutConfiguration.contentTabPresentationHeight;
  v23 = v19;
  v201 = 0;
  v24 = v15;
  if (contentTabPresented)
  {
    v24 = v15;
    if (contentTabsPresentationLayout == 1)
    {
      v217.origin.x = rect.origin.x;
      v217.origin.y = v11;
      v217.size.width = v13;
      v217.size.height = v15;
      v24 = v15 - (contentTabPresentationHeight - CGRectGetMinY(v217));
    }
  }

  v179 = v17;
  *&rect.origin.y = v23;
  v25 = self->_playbackControlsView;
  effectiveUserInterfaceLayoutDirection = [(AVMobileChromelessControlsView *)self effectiveUserInterfaceLayoutDirection];
  [(AVMobileChromelessPlaybackControlsView *)v25 intrinsicContentSize];
  if ((includedControls & 8) != 0)
  {
    v28 = v27;
    v29 = v27;
    v30 = v24;
    v31 = vabds_f32(v29, v30);
    if (v29 < v30 || v31 < 0.00000011921)
    {
      v33 = v11 + (v24 - v28) * 0.5;
      v181 = v13;
      [(UIView *)v25 avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:rect.origin.x, v33, v13, v28];
      BYTE4(v201) = 1;

      v218.origin.x = rect.origin.x;
      v218.origin.y = v11;
      v218.size.width = v13;
      v218.size.height = v15;
      MinY = CGRectGetMinY(v218);
      v219.origin.x = rect.origin.x;
      v219.origin.y = v11;
      v219.size.width = v13;
      v219.size.height = v15;
      MaxY = CGRectGetMaxY(v219);
      v220.origin.x = rect.origin.x;
      v220.origin.y = v33;
      v220.size.width = v13;
      v220.size.height = v28;
      r1 = CGRectGetMinY(v220);
      v221.origin.x = rect.origin.x;
      v221.origin.y = v33;
      v221.size.width = v13;
      v221.size.height = v28;
      v36 = CGRectGetMaxY(v221);
      v170 = contentTabTransitioning;
      v222.origin.y = controlsPadding + v36;
      v222.size.height = MaxY - v36 - controlsPadding;
      v222.origin.x = rect.origin.x;
      v175 = v222.origin.y;
      v176 = v222.size.height;
      v222.size.width = v13;
      v166 = CGRectGetMinY(v222);
      v172 = *&rect.origin.y;
      v37 = self->_displayModeControlsView;
      v38 = self->_volumeControlsView;
      effectiveUserInterfaceLayoutDirection2 = [(AVMobileChromelessControlsView *)self effectiveUserInterfaceLayoutDirection];
      [(AVMobileChromelessDisplayModeControlsView *)v37 intrinsicContentSize];
      v41 = v40;
      v174 = MinY;
      [(AVMobileChromelessVolumeControlsView *)v38 intrinsicContentSize];
      if (v41 >= v42)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      [(AVMobileChromelessDisplayModeControlsView *)v37 sizeThatFits:v13 * 0.5, v43];
      v45 = v44;
      v171 = auxiliaryControlsPlacement;
      v173 = v13;
      _controlsExpansionYOffset = [(AVMobileChromelessControlsView *)self _controlsExpansionYOffset];
      v47 = *MEMORY[0x1E695F058];
      v177 = *(MEMORY[0x1E695F058] + 8);
      v49 = *(MEMORY[0x1E695F058] + 16);
      v48 = *(MEMORY[0x1E695F058] + 24);
      v50 = v43 <= r1 - v174 - controlsPadding;
      v51 = v50 & (includedControls >> 2);
      if (v51 == 1)
      {
        r1a = *(MEMORY[0x1E695F058] + 24);
        [(UIView *)v37 avkit_setFrame:effectiveUserInterfaceLayoutDirection2 inLayoutDirection:rect.origin.x, v174 - _controlsExpansionYOffset, v45, v43];
        v223.origin.x = v47;
        v223.origin.y = v177;
        v223.size.width = v49;
        v223.size.height = r1a;
        v235.origin.x = rect.origin.x;
        v235.origin.y = v174 - _controlsExpansionYOffset;
        v235.size.width = v45;
        v235.size.height = v43;
        v224 = CGRectUnion(v223, v235);
        v177 = v224.origin.y;
        v47 = v224.origin.x;
        v49 = v224.size.width;
        v48 = v224.size.height;
      }

      v52 = v50 & (includedControls >> 1);
      if (v52)
      {
        v53 = v47;
        [(AVMobileChromelessVolumeControlsView *)v38 intrinsicContentSize];
        if (v54 >= v173 - v45)
        {
          v55 = v173 - v45;
        }

        else
        {
          v55 = v54;
        }

        [(UIView *)v38 avkit_setFrame:effectiveUserInterfaceLayoutDirection2 inLayoutDirection:rect.origin.x + v173 - v55, v174 - _controlsExpansionYOffset, v55, v43];
        v225.origin.x = v53;
        v225.origin.y = v177;
        v225.size.width = v49;
        v225.size.height = v48;
        v236.origin.x = rect.origin.x + v173 - v55;
        v236.origin.y = v174 - _controlsExpansionYOffset;
        v236.size.width = v55;
        v236.size.height = v43;
        v226 = CGRectUnion(v225, v236);
        v177 = v226.origin.y;
        v47 = v226.origin.x;
        v49 = v226.size.width;
        v48 = v226.size.height;
      }

      BYTE2(v201) = v51;
      HIBYTE(v201) = v52;

      v56 = v172;
      if ((contentTabPresented || v170) && self->_contentTabsView && (includedControls & 0x40) != 0)
      {
        v57 = v47;
        v227.origin.x = v47;
        v227.origin.y = v177;
        v227.size.width = v49;
        v227.size.height = v48;
        v58 = controlsPadding + CGRectGetMaxY(v227);
        v190 = includedControls;
        v191 = v179;
        v192 = controlsPadding;
        v193 = v171;
        v194 = v172;
        v195 = contentTabPresented;
        v196 = v170;
        v197 = v202;
        *v198 = *v203;
        *&v198[14] = *&v203[14];
        v199 = contentTabsPresentationLayout;
        v200 = contentTabPresentationHeight;
        v59 = [(AVMobileChromelessControlsView *)&self->super.super.super.super.isa _layoutContentTabsInFrame:&v201 withConfiguration:rect.origin.x canFitState:v58, v181, v15 - v48];
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v66 = v57;
        v228.origin.x = v57;
        v228.origin.y = v177;
        v228.size.width = v49;
        v228.size.height = v48;
        v67 = CGRectGetMaxY(v228);
        v229.origin.x = v59;
        v229.origin.y = v61;
        v229.size.width = v63;
        v229.size.height = v65;
        v68 = CGRectGetMinY(v229);
        v230.origin.x = v66;
        v230.origin.y = v177;
        v230.size.width = v49;
        v230.size.height = v48;
        v175 = controlsPadding + v67;
        v176 = v68 - controlsPadding - CGRectGetMaxY(v230) - controlsPadding;
      }

      else if ((includedControls & 0x40) != 0)
      {
        v69 = self->_auxiliaryControlsView;
        v70 = self->_timelineView;
        v71 = self->_titlebarView;
        v72 = self->_layoutConfiguration.includedControls;
        v73 = self->_layoutConfiguration.controlsPadding;
        v178 = self->_layoutConfiguration.auxiliaryControlsPlacement;
        v74 = self->_layoutConfiguration.pinnedAuxiliaryControls;
        [(AVMobileChromelessTimelineView *)v70 intrinsicContentSize];
        v76 = v75;
        [(AVMobileTitlebarView *)v71 intrinsicContentSize];
        v78 = v77;
        [(AVMobileAuxiliaryControlsView *)v69 sizeFittingControls:v74];
        v80 = v79;

        v81 = (v72 & 0x10) == 0;
        if (v72)
        {
          v82 = v76;
        }

        else
        {
          v82 = 0.0;
        }

        if (v82 >= v80)
        {
          v83 = v82;
        }

        else
        {
          v83 = v80;
        }

        v84 = v178 != 1 || (v72 & 0x10) == 0;
        if (v178 == 1)
        {
          v81 = 1;
        }

        if (!v84)
        {
          v82 = v83;
        }

        if ((v72 & 0x20) != 0)
        {
          v85 = v78;
        }

        else
        {
          v85 = 0.0;
        }

        if (v85 >= v80)
        {
          v86 = v85;
        }

        else
        {
          v86 = v80;
        }

        if (!v81)
        {
          v85 = v86;
        }

        v87 = v85 == 0.0 || v82 == 0.0;
        v88 = v82 + v85 + 0.0;
        if (!v87)
        {
          v88 = v73 + v88;
        }

        if (v88 >= v176)
        {
          v56 = v172;
        }

        else
        {
          v190 = includedControls;
          v191 = v179;
          v192 = controlsPadding;
          v56 = v172;
          v193 = v171;
          v194 = v172;
          v195 = contentTabPresented;
          v196 = v170;
          v197 = v202;
          *v198 = *v203;
          *&v198[14] = *&v203[14];
          v199 = contentTabsPresentationLayout;
          v200 = contentTabPresentationHeight;
          v231.origin.x = [(AVMobileChromelessControlsView *)&self->super.super.super.super.isa _layoutContentTabsInFrame:&v201 withConfiguration:rect.origin.x canFitState:v175, v181, v176];
          v89 = v231.origin.x;
          v90 = v231.origin.y;
          v91 = v231.size.width;
          v92 = v231.size.height;
          v93 = BYTE1(v201);
          if (v93 == CGRectEqualToRect(v231, *MEMORY[0x1E695F050]))
          {
            v94 = _AVLog();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              v164 = BYTE1(v201);
              v234.origin.x = v89;
              v234.origin.y = v90;
              v234.size.width = v91;
              v234.size.height = v92;
              v165 = NSStringFromCGRect(v234);
              *buf = 67109378;
              *&buf[4] = v164;
              LOWORD(v210) = 2112;
              *(&v210 + 2) = v165;
              _os_log_error_impl(&dword_18B49C000, v94, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. Fitting state and layout rect for content tabs UI does not match. canFitContentTabs: %d  contentTabsLayoutFrame: %@", buf, 0x12u);
            }
          }

          if (BYTE1(v201) == 1)
          {
            v232.origin.x = v89;
            v232.origin.y = v90;
            v232.size.width = v91;
            v232.size.height = v92;
            v175 = v166;
            v176 = CGRectGetMinY(v232) - v166 - controlsPadding;
          }
        }
      }

      v95 = v56;
      v96 = self->_auxiliaryControlsView;
      v97 = self->_liveEdgeContentTagView;
      v98 = self->_timelineView;
      v99 = self->_titlebarView;
      effectiveUserInterfaceLayoutDirection3 = [(AVMobileChromelessControlsView *)self effectiveUserInterfaceLayoutDirection];
      v101 = v95;
      [(AVMobileChromelessTimelineView *)v98 intrinsicContentSize];
      if (v176 >= v102)
      {
        v103 = v102;
      }

      else
      {
        v103 = v176;
      }

      [(AVMobileTitlebarView *)v99 intrinsicContentSize];
      v105 = v104;
      [(AVMobileContentTagView *)v97 intrinsicContentSize];
      v107 = v106;
      _controlsExpansionYOffset2 = [(AVMobileChromelessControlsView *)self _controlsExpansionYOffset];
      v180 = v107;
      [(AVMobileAuxiliaryControlsView *)v96 sizeFittingControls:v101];
      v111 = v109;
      v112 = v110;
      v113 = includedControls & 1;
      v114 = v175 + v176;
      if (includedControls)
      {
        v115 = v175 + v176 - v103;
      }

      else
      {
        v115 = v175 + v176;
      }

      if (includedControls)
      {
        v116 = v176 - (v103 - controlsPadding);
      }

      else
      {
        v116 = v176;
      }

      v117 = 0.0;
      if ((includedControls & 0x10) == 0)
      {
LABEL_76:
        v118 = 0;
        v119 = 1;
LABEL_77:
        v120 = v181;
LABEL_104:
        v140 = v119 & (includedControls >> 5);
        if (v116 >= v105)
        {
          v141 = v140;
        }

        else
        {
          v141 = 0;
        }

        if (v113)
        {
          [(UIView *)v98 avkit_setFrame:effectiveUserInterfaceLayoutDirection3 inLayoutDirection:rect.origin.x, _controlsExpansionYOffset2 + v115, v120, v103];
        }

        if (v118)
        {
          [(UIView *)v96 avkit_setFrame:effectiveUserInterfaceLayoutDirection3 inLayoutDirection:rect.origin.x + v173 - v111, _controlsExpansionYOffset2 + v117, v111, v112];
        }

        if (v141)
        {
          [(UIView *)v99 avkit_setFrame:effectiveUserInterfaceLayoutDirection3 inLayoutDirection:rect.origin.x, _controlsExpansionYOffset2 + v115 - controlsPadding - v105, v181, v105];
        }

        LOBYTE(v201) = v118;
        if (v116 >= v180)
        {
          v142 = v113;
        }

        else
        {
          v142 = 0;
        }

        BYTE3(v201) = v142;
        BYTE5(v201) = v113;
        BYTE6(v201) = v141;

        goto LABEL_117;
      }

      if (v171 == 1 || (v116 >= v110 ? (v121 = v181 < v109) : (v121 = 1), v121))
      {
        if (v171 != 1)
        {
          v118 = 0;
          v119 = 0;
          goto LABEL_77;
        }

        v129 = v173 + -150.0;
        v130 = v109;
        if ((v129 > v130 || vabds_f32(v129, v130) < 0.00000011921) && ((v131 = v176, v132 = v110, v131 > v132) || vabds_f32(v131, v132) < 0.00000011921))
        {
          v134 = v112;
          v133 = v111;
        }

        else
        {
          [(AVMobileAuxiliaryControlsView *)v96 sizeFittingControls:MEMORY[0x1E695E0F0]];
          v135 = v133;
          if (v129 <= v135 && vabds_f32(v129, v135) >= 0.00000011921 || ((v136 = v116, v137 = v134, v138 = vabds_f32(v136, v137), v136 <= v137) ? (v139 = v138 < 0.00000011921) : (v139 = 1), !v139))
          {
            v118 = 0;
            v119 = 1;
            v120 = v181;
            v117 = 0.0;
            goto LABEL_104;
          }

          v117 = 0.0;
          if (v133 == *MEMORY[0x1E695F060] && v134 == *(MEMORY[0x1E695F060] + 8))
          {
            goto LABEL_76;
          }
        }

        if (v134 >= v103)
        {
          v163 = v134;
        }

        else
        {
          v163 = v103;
        }

        v116 = v176 - v163 - controlsPadding;
        v120 = v173 - (controlsPadding + v133);
        v117 = v114 - v163 + (v163 - v134) * 0.5;
        v115 = v114 - v163 + (v163 - v103) * 0.5;
        v118 = 1;
        v111 = v133;
        v112 = v134;
      }

      else
      {
        v122 = [(AVMobileTitlebarView *)v99 title:v181];

        if (v122)
        {
          [(AVMobileTitlebarView *)v99 intrinsicContentSize];
          v124 = v123;
          [(AVMobileTitlebarView *)v99 titleLabelCenterYOffset];
          v126 = v125;
          v233.origin.x = 0.0;
          v233.origin.y = 0.0;
          v233.size.width = v111;
          v233.size.height = v112;
          MidY = CGRectGetMidY(v233);
          v128 = controlsPadding;
          v117 = v115 - controlsPadding - (v124 - v126) - MidY;
        }

        else
        {
          v128 = controlsPadding;
          v117 = v115 - v112 - controlsPadding;
        }

        v120 = v181;
        v118 = 1;
        v181 = v173 - (v111 + v128 * 1.5);
      }

      v119 = 1;
      goto LABEL_104;
    }
  }

  BYTE4(v201) = 0;

LABEL_117:
  v143 = v201;
  *buf = self->_auxiliaryControlsView;
  *&v210 = self->_contentTabsView;
  *(&v210 + 1) = self->_displayModeControlsView;
  v211 = self->_liveEdgeContentTagView;
  v212 = self->_playbackControlsView;
  v213 = self->_timelineView;
  v214 = self->_titlebarView;
  v215 = self->_volumeControlsView;
  v204 = v143 & 1;
  v144 = vdupq_n_s64(v143);
  *v144.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v144, xmmword_18B6EC430), vshlq_u64(v144, xmmword_18B6EC420))), 0x1000100010001);
  v205 = vuzp1_s8(*v144.i8, *v144.i8).u32[0];
  v206 = BYTE5(v143) & 1;
  v207 = BYTE6(v143) & 1;
  v208 = HIBYTE(v143) & 1;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 8; ++i)
  {
    v148 = *&buf[8 * i];
    v149 = v148;
    if (v148)
    {
      v150 = *(&v204 + i);
      if ([v148 isHidden] == v150)
      {
        [v149 setHidden:v150 ^ 1u];
        if (v150)
        {
          v151 = array2;
        }

        else
        {
          v151 = array;
        }

        [v151 addObject:v149];
      }
    }
  }

  if ([array count])
  {
    v152 = array;
    v153 = v152;
    if (v152)
    {
      if ([v152 count])
      {
        delegate = [(AVMobileChromelessControlsView *)self delegate];
        v155 = objc_opt_respondsToSelector();

        if (v155)
        {
          delegate2 = [(AVMobileChromelessControlsView *)self delegate];
          [delegate2 chromelessControlsView:self didDetachControlsViews:v153];
        }
      }
    }
  }

  if ([array2 count])
  {
    v157 = array2;
    v158 = v157;
    if (v157)
    {
      if ([v157 count])
      {
        delegate3 = [(AVMobileChromelessControlsView *)self delegate];
        v160 = objc_opt_respondsToSelector();

        if (v160)
        {
          delegate4 = [(AVMobileChromelessControlsView *)self delegate];
          [delegate4 chromelessControlsView:self didAttachControlsViews:v158];
        }
      }
    }
  }

  for (j = 56; j != -8; j -= 8)
  {
  }

  [(AVMobileChromelessBackgroundGradientView *)self->_backgroundView setFrame:x, y, width, height];
LABEL_140:
  *&rect.size.width = self;
  *&rect.size.height = AVMobileChromelessControlsView;
  [(CGSize *)&rect.size layoutSubviews];
}

- (double)_layoutContentTabsInFrame:(uint64_t)frame withConfiguration:(double)configuration canFitState:(double)state
{
  v14 = self[63];
  v15 = a2[2];
  [self layoutMargins];
  v48 = v16;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  effectiveUserInterfaceLayoutDirection = [self effectiveUserInterfaceLayoutDirection];
  _controlsExpansionYOffset = [(AVMobileChromelessControlsView *)self _controlsExpansionYOffset];
  configurationCopy = configuration;
  v46 = v22;
  v44 = a6;
  v50.origin.y = a7;
  [v14 intrinsicContentSize];
  v26 = v25;
  v27 = *(MEMORY[0x1E695F050] + 8);
  v49 = v15 + v25 + 50.0;
  v50.origin.x = *MEMORY[0x1E695F050];
  v28 = *(MEMORY[0x1E695F050] + 16);
  v29 = *a2;
  if (v50.origin.y < v49)
  {
    goto LABEL_15;
  }

  r1 = *(MEMORY[0x1E695F050] + 24);
  v30 = state + v50.origin.y;
  v31 = state + v50.origin.y - v25;
  if ((v29 & 0x40) != 0)
  {
    v30 = v30 - v25;
  }

  v43 = v30;
  if ((v29 & 0x40) != 0 && v14)
  {
    v32 = a2[11] - v25 - v15 - v20;
    if (v32 >= v50.origin.y - v25 - v15)
    {
      v32 = v50.origin.y - v25 - v15;
    }

    if (v32 >= 50.0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 50.0;
    }

    [self layoutMargins];
    if (*(a2 + 41))
    {
      if ((a2[5] & 1) == 0)
      {
        v43 = v31 - (v15 - v48);
        v33 = v15 - v20 + v33;
LABEL_18:
        [v14 setFadeDistance:v34];
        goto LABEL_19;
      }
    }

    else if ((a2[5] & 1) == 0)
    {
      goto LABEL_18;
    }

    v43 = v31 - (v15 + v33 - v48);
    v33 = v15 + v20 + v26 + v33;
    v34 = 0.0;
    goto LABEL_18;
  }

  v33 = v25;
  if ((v29 & 0x40) == 0)
  {
LABEL_15:
    v35 = *MEMORY[0x1E695F050];
    goto LABEL_25;
  }

LABEL_19:
  [self[63] setLayoutMargins:{v48, v18, v20, v46, r1}];
  [self[63] avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:{configurationCopy - v18, _controlsExpansionYOffset + v43, v46 + v44 + v18, v33}];
  v52.origin.x = v50.origin.x;
  v52.origin.y = v27;
  v52.size.width = v28;
  v52.size.height = r1a;
  v54.origin.x = configurationCopy - v18;
  v54.origin.y = _controlsExpansionYOffset + v43;
  v54.size.width = v46 + v44 + v18;
  v54.size.height = v33;
  *&v35 = CGRectUnion(v52, v54);
  if (*(a2 + 40) == 1)
  {
    [self bounds];
    MaxY = CGRectGetMaxY(v53);
    if (*(a2 + 40) == 1 && MaxY - (_controlsExpansionYOffset + v43) != a2[11])
    {
      v37 = _AVLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18B49C000, v37, OS_LOG_TYPE_ERROR, "The content tabs layout frame height does not match the given contentTabsPresentationHeight.", buf, 2u);
      }
    }
  }

LABEL_25:
  if (frame)
  {
    v38 = (v29 >> 6) & 1;
    if (v50.origin.y < v49)
    {
      LOBYTE(v38) = 0;
    }

    *(frame + 1) = v38;
  }

  else
  {
    v39 = _AVLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v50.size.width) = 0;
      _os_log_error_impl(&dword_18B49C000, v39, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. AVMobileChromelessControlsViewCanFitState cannot be nil.", &v50.size, 2u);
    }
  }

  return v35;
}

- (double)_controlsExpansionYOffset
{
  objc_msgSend_layoutConfiguration(self, a2, 0);

  return 0.0;
}

- (void)setVolumeControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessVolumeControlsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: volumeControlsView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_volumeControlsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: volumeControlsView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    volumeControlsView = self->_volumeControlsView;
  }

  else
  {
    volumeControlsView = 0;
  }

  if (volumeControlsView != viewCopy)
  {
    [(AVMobileChromelessVolumeControlsView *)volumeControlsView removeFromSuperview];
    objc_storeStrong(&self->_volumeControlsView, view);
    [(AVView *)self->_volumeControlsView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_volumeControlsView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setTitlebarView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileTitlebarView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: titlebarView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_titlebarView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: titlebarView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    titlebarView = self->_titlebarView;
  }

  else
  {
    titlebarView = 0;
  }

  if (titlebarView != viewCopy)
  {
    [(AVMobileTitlebarView *)titlebarView removeFromSuperview];
    objc_storeStrong(&self->_titlebarView, view);
    [(AVView *)self->_titlebarView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_titlebarView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setTimelineView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessTimelineView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: timelineView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_timelineView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: timelineView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    timelineView = self->_timelineView;
  }

  else
  {
    timelineView = 0;
  }

  if (timelineView != viewCopy)
  {
    [(AVMobileChromelessTimelineView *)timelineView removeFromSuperview];
    objc_storeStrong(&self->_timelineView, view);
    [(AVView *)self->_timelineView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_timelineView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setPlaybackControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessPlaybackControlsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: playbackControlsView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_playbackControlsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: playbackControlsView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    playbackControlsView = self->_playbackControlsView;
  }

  else
  {
    playbackControlsView = 0;
  }

  if (playbackControlsView != viewCopy)
  {
    [(AVMobileChromelessPlaybackControlsView *)playbackControlsView removeFromSuperview];
    objc_storeStrong(&self->_playbackControlsView, view);
    [(AVView *)self->_playbackControlsView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_playbackControlsView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setLiveEdgeContentTagView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileContentTagView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: liveEdgeContentTagView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_liveEdgeContentTagView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: liveEdgeContentTagView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    liveEdgeContentTagView = self->_liveEdgeContentTagView;
  }

  else
  {
    liveEdgeContentTagView = 0;
  }

  if (liveEdgeContentTagView != viewCopy)
  {
    [(AVMobileContentTagView *)liveEdgeContentTagView removeFromSuperview];
    objc_storeStrong(&self->_liveEdgeContentTagView, view);
    [(AVMobileContentTagView *)self->_liveEdgeContentTagView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_liveEdgeContentTagView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setDisplayModeControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessDisplayModeControlsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: displayModeControlsView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_displayModeControlsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: displayModeControlsView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    displayModeControlsView = self->_displayModeControlsView;
  }

  else
  {
    displayModeControlsView = 0;
  }

  if (displayModeControlsView != viewCopy)
  {
    [(AVMobileChromelessDisplayModeControlsView *)displayModeControlsView removeFromSuperview];
    objc_storeStrong(&self->_displayModeControlsView, view);
    [(AVView *)self->_displayModeControlsView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_displayModeControlsView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setContentTabsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessContentTabsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: contentTabView is already a subview of another view.", v9, 2u);
    }
  }

  contentTabsView = self->_contentTabsView;
  if (contentTabsView != viewCopy)
  {
    [(AVMobileChromelessContentTabsView *)contentTabsView removeFromSuperview];
    objc_storeStrong(&self->_contentTabsView, view);
    [(AVMobileChromelessControlsView *)self addSubview:self->_contentTabsView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileChromelessBackgroundGradientView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: backgroundView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_backgroundView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: backgroundView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    backgroundView = self->_backgroundView;
  }

  else
  {
    backgroundView = 0;
  }

  if (backgroundView != viewCopy)
  {
    [(AVMobileChromelessBackgroundGradientView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    [(AVMobileChromelessControlsView *)self addSubview:self->_backgroundView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileAuxiliaryControlsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: auxiliaryControlsView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_auxiliaryControlsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: auxiliaryControlsView should only be set once on an AVMobileChromelessControlsView.", v10, 2u);
    }

    auxiliaryControlsView = self->_auxiliaryControlsView;
  }

  else
  {
    auxiliaryControlsView = 0;
  }

  if (auxiliaryControlsView != viewCopy)
  {
    [(AVMobileAuxiliaryControlsView *)auxiliaryControlsView removeFromSuperview];
    objc_storeStrong(&self->_auxiliaryControlsView, view);
    [(AVView *)self->_auxiliaryControlsView setHidden:1];
    [(AVMobileChromelessControlsView *)self addSubview:self->_auxiliaryControlsView];
    [(AVMobileChromelessControlsView *)self setNeedsLayout];
  }
}

- (void)setLayoutConfiguration:(AVMobileChromelessControlsLayoutConfiguration *)configuration
{
  includedControls = self->_layoutConfiguration.includedControls;
  expanded = self->_layoutConfiguration.expanded;
  controlsPadding = self->_layoutConfiguration.controlsPadding;
  p_layoutConfiguration = &self->_layoutConfiguration;
  pinnedAuxiliaryControls = self->_layoutConfiguration.pinnedAuxiliaryControls;
  p_pinnedAuxiliaryControls = &self->_layoutConfiguration.pinnedAuxiliaryControls;
  v10 = pinnedAuxiliaryControls;
  p_contentTabPresented = &p_layoutConfiguration->contentTabPresented;
  v13 = configuration->pinnedAuxiliaryControls;
  v14 = &configuration->contentTabPresented;
  v19 = expanded == configuration->expanded && includedControls == configuration->includedControls && p_layoutConfiguration->auxiliaryControlsPlacement == configuration->auxiliaryControlsPlacement && controlsPadding == configuration->controlsPadding && v10 == v13 && p_layoutConfiguration->contentTabPresented == configuration->contentTabPresented;
  if (!v19 || p_layoutConfiguration->contentTabPresentationHeight != configuration->contentTabPresentationHeight)
  {
    v20 = *&configuration->controlsPadding;
    *&p_layoutConfiguration->includedControls = *&configuration->includedControls;
    *&p_layoutConfiguration->controlsPadding = v20;
    objc_storeStrong(p_pinnedAuxiliaryControls, configuration->pinnedAuxiliaryControls);
    v21 = *v14;
    v22 = *(v14 + 1);
    v23 = *(v14 + 2);
    *(p_contentTabPresented + 6) = *(v14 + 6);
    *(p_contentTabPresented + 1) = v22;
    *(p_contentTabPresented + 2) = v23;
    *p_contentTabPresented = v21;
    p_pinnedAuxiliaryControls = [(AVMobileChromelessControlsView *)self setNeedsLayout];
    v13 = configuration->pinnedAuxiliaryControls;
  }

  MEMORY[0x1EEE66BB8](p_pinnedAuxiliaryControls, v13);
}

- (void)setLayoutAllowed:(BOOL)allowed
{
  if (self->_layoutAllowed != allowed)
  {
    self->_layoutAllowed = allowed;
    if (allowed)
    {
      [(AVMobileChromelessControlsView *)self setNeedsLayout];
    }
  }
}

- (AVMobileChromelessControlsView)init
{
  v6.receiver = self;
  v6.super_class = AVMobileChromelessControlsView;
  v2 = [(AVMobileChromelessControlsView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 600) = 0u;
    *(v2 + 616) = 0u;
    v4 = *(v2 + 79);
    *(v2 + 79) = 0;

    v3->_layoutConfiguration.contentTabPresentationHeight = 0.0;
    *&v3->_layoutConfiguration.timelineSliderInsets.right = 0u;
    *&v3->_layoutConfiguration.timelineSliderInsets.left = 0u;
    *&v3->_layoutConfiguration.contentTabPresented = 0u;
    v3->_layoutAllowed = 1;
  }

  return v3;
}

@end
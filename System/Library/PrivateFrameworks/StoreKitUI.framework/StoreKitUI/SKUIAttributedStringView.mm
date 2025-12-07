@interface SKUIAttributedStringView
+ (CGSize)sizeWithLayout:(id)layout treatment:(int64_t)treatment;
- (BOOL)_touchInsideLinkText:(CGPoint)text linkTextRange:(_NSRange *)range;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (SKUIAttributedStringView)initWithFrame:(CGRect)frame;
- (SKUILinkHandler)linkDelegate;
- (void)_reloadTopInset;
- (void)_setTouchInside:(BOOL)inside;
- (void)_setTrackingTouch:(BOOL)touch;
- (void)_setupTapLocatorContainer;
- (void)drawRect:(CGRect)rect;
- (void)setBadgePlacement:(int64_t)placement;
- (void)setFirstLineTopInset:(int64_t)inset;
- (void)setLayout:(id)layout;
- (void)setRequiredBadges:(id)badges;
- (void)setStringTreatment:(int64_t)treatment;
- (void)setTextColor:(id)color;
- (void)setTextColorFollowsTintColor:(BOOL)color;
- (void)setTreatmentColor:(id)color;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)viewWasRecycled;
@end

@implementation SKUIAttributedStringView

- (SKUIAttributedStringView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIAttributedStringView initWithFrame:];
  }

  v11.receiver = self;
  v11.super_class = SKUIAttributedStringView;
  height = [(SKUIAttributedStringView *)&v11 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    [(SKUIAttributedStringView *)height setContentMode:3];
  }

  return v9;
}

- (void)viewWasRecycled
{
  layout = self->_layout;
  self->_layout = 0;

  layoutManager = self->_layoutManager;
  self->_layoutManager = 0;

  requiredBadges = self->_requiredBadges;
  self->_requiredBadges = 0;

  textColor = self->_textColor;
  self->_textColor = 0;

  textContainer = self->_textContainer;
  self->_textContainer = 0;

  textStorage = self->_textStorage;
  self->_textStorage = 0;

  treatmentColor = self->_treatmentColor;
  self->_treatmentColor = 0;
}

+ (CGSize)sizeWithLayout:(id)layout treatment:(int64_t)treatment
{
  layoutCopy = layout;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIAttributedStringView sizeWithLayout:treatment:];
  }

  [layoutCopy boundingSize];
  v8 = v6;
  v9 = v7;
  if (treatment == 1)
  {
    v8 = v6 + 14.0;
    v10 = v7 + 6.0;
    v11 = layoutCopy;
    attributedString = [v11 attributedString];
    v13 = [attributedString attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];

    [v11 baselineOffset];
    v15 = v14;
    [v13 capHeight];
    v17 = v15 - v16;
    [v13 _bodyLeading];
    v19 = v17 - v18 * ([v11 numberOfLines] - 1);
    [v11 topInset];
    v21 = v20;

    v22 = v21 + v19;
    v23 = ceilf(v22);

    v9 = v10 - v23;
  }

  v24 = v8;
  v25 = v9;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)setBadgePlacement:(int64_t)placement
{
  if (self->_badgePlacement != placement)
  {
    self->_badgePlacement = placement;
    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)setFirstLineTopInset:(int64_t)inset
{
  if (self->_firstLineTopInset != inset)
  {
    self->_firstLineTopInset = inset;
    [(SKUIAttributedStringView *)self _reloadTopInset];

    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)setLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_layout != layoutCopy)
  {
    v8 = layoutCopy;
    objc_storeStrong(&self->_layout, layout);
    textStorage = self->_textStorage;
    if (textStorage)
    {
      if (v8)
      {
        attributedString = [(SKUIAttributedStringLayout *)v8 attributedString];
        [(NSTextStorage *)textStorage setAttributedString:attributedString];
      }

      else
      {
        [(NSTextStorage *)textStorage deleteCharactersInRange:0, [(NSTextStorage *)textStorage length]];
      }
    }

    [(SKUIAttributedStringView *)self _reloadTopInset];
    [(SKUIAttributedStringView *)self setNeedsDisplay];
    layoutCopy = v8;
  }
}

- (void)setRequiredBadges:(id)badges
{
  if (self->_requiredBadges != badges)
  {
    v4 = [badges copy];
    requiredBadges = self->_requiredBadges;
    self->_requiredBadges = v4;

    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)setStringTreatment:(int64_t)treatment
{
  if (self->_stringTreatment != treatment)
  {
    self->_stringTreatment = treatment;
    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    [(SKUIAttributedStringView *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (void)setTextColorFollowsTintColor:(BOOL)color
{
  if (self->_textColorFollowsTintColor != color)
  {
    self->_textColorFollowsTintColor = color;
    if (!self->_textColor)
    {
      [(SKUIAttributedStringView *)self setNeedsDisplay];
    }
  }
}

- (void)setTreatmentColor:(id)color
{
  colorCopy = color;
  if (self->_treatmentColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_treatmentColor, color);
    [(SKUIAttributedStringView *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (NSString)description
{
  attributedString = [(SKUIAttributedStringLayout *)self->_layout attributedString];
  string = [attributedString string];

  v5 = [string length];
  v6 = MEMORY[0x277CCACA8];
  if (v5 > 0x13)
  {
    v11.receiver = self;
    v11.super_class = SKUIAttributedStringView;
    v7 = [(SKUIAttributedStringView *)&v11 description];
    v9 = [string substringToIndex:20];
    v8 = [v6 stringWithFormat:@"%@: %@...", v7, v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SKUIAttributedStringView;
    v7 = [(SKUIAttributedStringView *)&v12 description];
    v8 = [v6 stringWithFormat:@"%@: %@", v7, string];
  }

  return v8;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  anyObject = [beganCopy anyObject];
  [anyObject locationInView:self];
  if ([(SKUIAttributedStringView *)self _touchInsideLinkText:&self->_trackingRange linkTextRange:?])
  {
    [(SKUIAttributedStringView *)self _setTrackingTouch:1];
    [(SKUIAttributedStringView *)self _setTouchInside:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SKUIAttributedStringView;
    [(SKUIAttributedStringView *)&v9 touchesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if (self->_trackingTouch)
  {
    anyObject = [moved anyObject];
    [anyObject locationInView:self];
    [(SKUIAttributedStringView *)self _setTouchInside:[(SKUIAttributedStringView *)self _touchInsideLinkText:&self->_trackingRange linkTextRange:?]];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SKUIAttributedStringView;
    [(SKUIAttributedStringView *)&v6 touchesMoved:moved withEvent:event];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (self->_trackingTouch)
  {
    anyObject = [ended anyObject];
    [anyObject locationInView:self];
    if ([(SKUIAttributedStringView *)self _touchInsideLinkText:&self->_trackingRange linkTextRange:?])
    {
      WeakRetained = objc_loadWeakRetained(&self->_linkDelegate);
      v6 = [WeakRetained conformsToProtocol:&unk_282999BF8];

      if (v6)
      {
        v7 = objc_loadWeakRetained(&self->_linkDelegate);
        [v7 linkTapped:self range:{self->_trackingRange.location, self->_trackingRange.length}];
      }
    }

    [(SKUIAttributedStringView *)self _setTrackingTouch:0];
    [(SKUIAttributedStringView *)self _setTouchInside:0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SKUIAttributedStringView;
    [(SKUIAttributedStringView *)&v9 touchesEnded:ended withEvent:event];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if (self->_trackingTouch)
  {
    [(SKUIAttributedStringView *)self _setTrackingTouch:0, event];

    [(SKUIAttributedStringView *)self _setTouchInside:0];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SKUIAttributedStringView;
    [(SKUIAttributedStringView *)&v5 touchesCancelled:cancelled withEvent:event];
  }
}

- (void)drawRect:(CGRect)rect
{
  v194 = *MEMORY[0x277D85DE8];
  v4 = [(SKUIAttributedStringView *)self bounds:rect.origin.x];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection(v4, v13);
  rect.origin.x = *MEMORY[0x277CBF3A0];
  v15 = v8 + self->_calculatedTopInset;
  [(SKUIAttributedStringLayout *)self->_layout topInset];
  v17 = v15 + v16;
  [(SKUIAttributedStringLayout *)self->_layout edgeInsetsForShadow];
  v19.f64[1] = v18;
  v21.f64[1] = v20;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v19, *MEMORY[0x277D768C8]), vceqq_f64(v21, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
  {
    [(SKUIAttributedStringLayout *)self->_layout edgeInsetsForShadow];
    v17 = v17 + v22;
    [(SKUIAttributedStringLayout *)self->_layout edgeInsetsForShadow];
    rect.origin.x = rect.origin.x + v23;
  }

  [(SKUIAttributedStringLayout *)self->_layout boundingSize];
  v26 = self->_badgePlacement == 1;
  if (v12 < v25 || self->_badgePlacement == 1)
  {
    v25 = v12;
  }

  v171 = v25;
  if (v10 < v24)
  {
    v26 = 1;
  }

  if (v26)
  {
    v28 = v10;
  }

  else
  {
    v28 = v24;
  }

  if (self->_stringTreatment == 1)
  {
    treatmentColor = self->_treatmentColor;
    if (treatmentColor)
    {
      [(UIColor *)treatmentColor set];
      v30 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v6 cornerRadius:{v8, v10, v12, 6.0}];
      [v30 fill];

      v31 = self->_layout;
      attributedString = [(SKUIAttributedStringLayout *)v31 attributedString];
      v33 = [attributedString attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];

      [(SKUIAttributedStringLayout *)v31 baselineOffset];
      v35 = v34;
      [v33 capHeight];
      v37 = v35 - v36;
      [v33 _bodyLeading];
      v39 = v37 - v38 * ([(SKUIAttributedStringLayout *)v31 numberOfLines]- 1);
      [(SKUIAttributedStringLayout *)v31 topInset];
      v41 = v40;

      v42 = v41 + v39;
      v43 = ceilf(v42);

      [(SKUIAttributedStringLayout *)self->_layout topInset];
      *&v44 = v44 + (v12 - (v171 - v43)) * 0.5 - v43 * 0.5;
      v17 = floorf(*&v44);
      rect.origin.x = 7.0;
    }
  }

  attributedString2 = [(SKUIAttributedStringLayout *)self->_layout attributedString];
  if (attributedString2)
  {
    v46 = attributedString2;
    v47 = [(NSArray *)self->_requiredBadges count];
    v169 = v47;
    v172 = v28;
    if (v47 < 1)
    {
      v48 = *MEMORY[0x277CBF3A8];
      v53 = *(MEMORY[0x277CBF3A8] + 8);
    }

    else
    {
      rect.origin.y = v6;
      v48 = ((v47 - 1) * 4.0);
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v49 = self->_requiredBadges;
      v50 = [(NSArray *)v49 countByEnumeratingWithState:&v186 objects:v193 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v187;
        v53 = 0.0;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v187 != v52)
            {
              objc_enumerationMutation(v49);
            }

            [*(*(&v186 + 1) + 8 * i) badgeSize];
            if (v53 < v56)
            {
              v53 = v56;
            }

            v48 = v48 + v55;
          }

          v51 = [(NSArray *)v49 countByEnumeratingWithState:&v186 objects:v193 count:16];
        }

        while (v51);
      }

      else
      {
        v53 = 0.0;
      }

      if (!self->_badgePlacement)
      {
        [(SKUIAttributedStringLayout *)self->_layout firstBaselineOffset];
        v59 = v58;
        v60 = v172;
        v61 = v10;
        if (v172 >= v10 - v48 + -4.0 - rect.origin.x)
        {
          v60 = v10 - v48 + -4.0 - rect.origin.x;
        }

        v172 = v60;
        if (ShouldReverseLayoutDirection)
        {
          y = rect.origin.y;
          v63 = v8;
          v64 = v12;
          MaxX = CGRectGetMaxX(*(&v61 - 2));
          v196.origin.x = rect.origin.x;
          v196.origin.y = v17;
          v196.size.width = v60;
          v196.size.height = v171;
          rect.origin.y = MaxX - CGRectGetWidth(v196);
          v197.origin.x = rect.origin.x;
          v197.origin.y = v17;
          v197.size.width = v60;
          v66 = v171;
          v197.size.height = v171;
          rect.origin.x = rect.origin.y - CGRectGetMinX(v197);
        }

        else
        {
          v66 = v171;
        }

        if (v53 > v59)
        {
          v67 = v53 - v59 + 3.0;
          v17 = v17 + ceilf(v67);
        }

        v57 = v66;
        goto LABEL_40;
      }
    }

    v57 = v171;
LABEL_40:
    if (self->_textColorFollowsTintColor)
    {
      tintColor = [(SKUIAttributedStringView *)self tintColor];
    }

    else
    {
      tintColor = self->_textColor;
    }

    v69 = tintColor;
    if (tintColor)
    {
      v70 = [v46 mutableCopy];
      [v70 addAttribute:*MEMORY[0x277D740C0] value:v69 range:{0, objc_msgSend(v70, "length")}];

      v46 = v70;
    }

    if (self->_containsLinks)
    {
      v71 = [v46 mutableCopy];
      v72 = [v46 length];
      v184[0] = MEMORY[0x277D85DD0];
      v184[1] = 3221225472;
      v184[2] = __37__SKUIAttributedStringView_drawRect___block_invoke;
      v184[3] = &unk_2781FFEB8;
      v184[4] = self;
      v73 = v71;
      v185 = v73;
      [v46 enumerateAttributesInRange:0 options:v72 usingBlock:{0, v184}];
      v74 = v73;

      self->_textBounds.origin.x = rect.origin.x;
      self->_textBounds.origin.y = v17;
      self->_textBounds.size.width = v172 + 10.0;
      self->_textBounds.size.height = v57;
      textContainer = self->_textContainer;
      if (textContainer)
      {
        [(NSTextContainer *)textContainer setContainerSize:?];
      }
    }

    else
    {
      v74 = v46;
    }

    shadow = [(SKUIAttributedStringLayout *)self->_layout shadow];
    v170 = v17;
    if (shadow)
    {
      v77 = [v74 mutableCopy];
      [v77 removeAttribute:*MEMORY[0x277D74138] range:{0, objc_msgSend(v77, "length")}];

      CurrentContext = UIGraphicsGetCurrentContext();
      [shadow shadowOffset];
      v79 = v57;
      v81 = v80;
      v83 = v82;
      [shadow shadowBlurRadius];
      v85 = v84;
      shadowColor = [shadow shadowColor];
      cGColor = [shadowColor CGColor];
      v195.width = v81;
      v57 = v79;
      v195.height = v83;
      v88 = v85;
      v17 = v170;
      CGContextSetShadowWithColor(CurrentContext, v195, v88, cGColor);

      v74 = v77;
    }

    if (self->_badgePlacement == 1)
    {
      stringDrawingContext = [v74 mutableCopy];
      v182 = 0;
      v183 = [v74 length];
      v90 = [stringDrawingContext length] - 1;
      v91 = [stringDrawingContext attribute:*MEMORY[0x277D740A8] atIndex:v90 effectiveRange:&v182];
      v164 = v91;
      if (v91)
      {
        [v91 descender];
      }

      else
      {
        v92 = 0.0;
      }

      rect.origin.y = v92;
      v96 = *MEMORY[0x277D74118];
      v97 = [stringDrawingContext attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:&v182];
      v165 = shadow;
      v166 = v74;
      v163 = v97;
      if (v97 && (v98 = v97, [v97 lineBreakMode]))
      {
        lineBreakMode = [v98 lineBreakMode];
        v100 = [v98 mutableCopy];
        [v100 setLineBreakMode:0];
        [stringDrawingContext addAttribute:v96 value:v100 range:{v182, v183}];

        v101 = 1;
      }

      else
      {
        v101 = 0;
        lineBreakMode = 4;
      }

      v167 = v69;
      v168 = v10;
      v102 = [objc_alloc(MEMORY[0x277D742D8]) initWithAttributedString:stringDrawingContext];
      v103 = objc_alloc_init(MEMORY[0x277D74238]);
      v162 = v102;
      [v102 addLayoutManager:v103];
      v104 = [objc_alloc(MEMORY[0x277D74278]) initWithSize:{v172, v57}];
      [v104 setLineFragmentPadding:0.0];
      if (v101)
      {
        [v104 setLineBreakMode:lineBreakMode];
      }

      [v103 addTextContainer:v104];
      v105 = [v103 glyphRangeForTextContainer:v104];
      v107 = v106;
      v181[0] = v105;
      v181[1] = v106;
      [v103 lineFragmentUsedRectForGlyphAtIndex:v90 effectiveRange:v181];
      v109 = v108;
      v111 = v110;
      v113 = v112;
      v115 = v114;
      [v103 locationForGlyphAtIndex:v90];
      v117 = v116;
      v198.origin.x = v109;
      v198.origin.y = v111;
      v161 = v113;
      v198.size.width = v113;
      v198.size.height = v115;
      MaxY = CGRectGetMaxY(v198);
      v199.size.width = v172;
      v199.origin.x = rect.origin.x;
      v199.origin.y = v170;
      v199.size.height = v57;
      if (v48 > CGRectGetMaxX(v199) - v117)
      {
        v200.origin.x = rect.origin.x;
        v159 = v109;
        v200.size.height = v171;
        v200.origin.y = v170;
        v200.size.width = v172;
        v160 = CGRectGetMaxX(v200) - (v48 + 4.0);
        v201.origin.x = v109;
        v201.origin.y = v111;
        v201.size.width = v161;
        v201.size.height = v115;
        v118 = rect.origin.y + CGRectGetMaxY(v201) - v53;
        v202.origin.x = rect.origin.x;
        v202.origin.y = v170;
        v202.size.height = v171;
        v202.size.width = v172;
        v57 = v171;
        v119 = [MEMORY[0x277D75208] bezierPathWithRect:{v160, v118, CGRectGetMaxX(v202) - v160, v53}];
        v192 = v119;
        v120 = [MEMORY[0x277CBEA60] arrayWithObjects:&v192 count:1];
        [v104 setExclusionPaths:v120];

        v117 = v160 + -4.0;
      }

      v94 = v117;
      [v103 drawGlyphsForGlyphRange:v105 atPoint:{v107, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *&v159}];

      v10 = v168;
      v17 = v170;
      v95 = v172;
      v69 = v167;
      shadow = v165;
      v74 = v166;
    }

    else
    {
      v94 = *MEMORY[0x277CBF348];
      MaxY = *(MEMORY[0x277CBF348] + 8);
      stringDrawingContext = [(SKUIAttributedStringLayout *)self->_layout stringDrawingContext];
      v95 = v172;
      [v74 drawWithRect:33 options:stringDrawingContext context:{rect.origin.x, v17, v172, v57}];
      rect.origin.y = 0.0;
    }

    if (v169 >= 1)
    {
      if (self->_badgePlacement == 1)
      {
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        v121 = self->_requiredBadges;
        v122 = [(NSArray *)v121 countByEnumeratingWithState:&v177 objects:v191 count:16];
        if (v122)
        {
          v123 = v122;
          v124 = v74;
          v125 = v94 + 4.0;
          v126 = *v178;
          do
          {
            for (j = 0; j != v123; ++j)
            {
              if (*v178 != v126)
              {
                objc_enumerationMutation(v121);
              }

              v128 = *(*(&v177 + 1) + 8 * j);
              [v128 badgeSize];
              v130 = v129;
              v132 = v131;
              image = [v128 image];
              if (image)
              {
                v134 = v125;
                v135 = roundf(v134);
                mainScreen = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen scale];
                *&v137 = rect.origin.y + MaxY - v132 + 1.0 / v137;
                v138 = roundf(*&v137);

                [image drawInRect:{v135, v138, v130, v132}];
              }

              v125 = v125 + v130 + 4.0;
            }

            v123 = [(NSArray *)v121 countByEnumeratingWithState:&v177 objects:v191 count:16];
          }

          while (v123);
          v74 = v124;
        }
      }

      else
      {
        [(SKUIAttributedStringLayout *)self->_layout firstBaselineOffset];
        v140 = v139;
        if (ShouldReverseLayoutDirection)
        {
          v203.origin.x = rect.origin.x;
          v203.origin.y = v17;
          v203.size.width = v95;
          v203.size.height = v57;
          v141 = fmax(CGRectGetMinX(v203) + -4.0 - v48, 0.0);
        }

        else
        {
          v204.size.height = v57;
          v141 = v10 - v48;
          v204.origin.x = rect.origin.x;
          v204.origin.y = v17;
          v204.size.width = v95;
          v142 = CGRectGetMaxX(v204) + 4.0;
          if (v10 - v48 >= v142)
          {
            v141 = v142;
          }
        }

        v175 = 0u;
        v176 = 0u;
        rect.size = 0u;
        v174 = 0u;
        v121 = self->_requiredBadges;
        v143 = [(NSArray *)v121 countByEnumeratingWithState:&rect.size objects:v190 count:16];
        if (v143)
        {
          v144 = v143;
          v145 = shadow;
          v146 = v74;
          v147 = *v174;
          v148 = v17 + v140;
          do
          {
            for (k = 0; k != v144; ++k)
            {
              if (*v174 != v147)
              {
                objc_enumerationMutation(v121);
              }

              v150 = *(*&rect.size.height + 8 * k);
              [v150 badgeSize];
              v152 = v151;
              v154 = v153;
              image2 = [v150 image];
              v156 = image2;
              if (image2)
              {
                v157 = v148 - v154;
                [image2 drawInRect:{v141, roundf(v157), v152, v154}];
              }

              v158 = v152 + 4.0;
              if (ShouldReverseLayoutDirection)
              {
                v158 = -(v48 + -4.0);
              }

              v141 = v141 + v158;
            }

            v144 = [(NSArray *)v121 countByEnumeratingWithState:&rect.size objects:v190 count:16];
          }

          while (v144);
          v74 = v146;
          shadow = v145;
        }
      }
    }
  }
}

void __37__SKUIAttributedStringView_drawRect___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v7 = [v14 objectForKey:@"SKUILinkAttributeName"];

  if (v7)
  {
    if ((v8 = *(a1 + 32), *(v8 + 456) != 1) || *(v8 + 480) != 1 || ((v9 = (v8 + 464), v11 = *v9, v10 = v9[1], a3 == v11) ? (v12 = a4 == v10) : (v12 = 0), !v12))
    {
      v13 = [v14 objectForKey:@"SKUILinkColorAttributeName"];
      if (!v13)
      {
        v13 = [*(a1 + 32) tintColor];
      }

      [*(a1 + 40) addAttribute:*MEMORY[0x277D740C0] value:v13 range:{a3, a4}];
    }
  }
}

- (void)_setupTapLocatorContainer
{
  if (!self->_textContainer)
  {
    v3 = [objc_alloc(MEMORY[0x277D74278]) initWithSize:{self->_textBounds.size.width, self->_textBounds.size.height}];
    textContainer = self->_textContainer;
    self->_textContainer = v3;

    v5 = objc_alloc_init(MEMORY[0x277D74238]);
    layoutManager = self->_layoutManager;
    self->_layoutManager = v5;

    [(NSLayoutManager *)self->_layoutManager addTextContainer:self->_textContainer];
    v7 = objc_alloc_init(MEMORY[0x277D742D8]);
    textStorage = self->_textStorage;
    self->_textStorage = v7;

    [(NSTextStorage *)self->_textStorage addLayoutManager:self->_layoutManager];
    v9 = objc_alloc(MEMORY[0x277CCAB48]);
    attributedString = [(SKUIAttributedStringLayout *)self->_layout attributedString];
    v13 = [v9 initWithAttributedString:attributedString];

    v11 = objc_alloc_init(MEMORY[0x277D74240]);
    v12 = [v13 length];
    [v13 addAttribute:*MEMORY[0x277D74118] value:v11 range:{0, v12}];
    [(NSTextStorage *)self->_textStorage setAttributedString:v13];
  }
}

- (BOOL)_touchInsideLinkText:(CGPoint)text linkTextRange:(_NSRange *)range
{
  if (!self->_containsLinks)
  {
    return 0;
  }

  y = text.y;
  x = text.x;
  [(SKUIAttributedStringView *)self bounds];
  v16.x = x;
  v16.y = y;
  if (!CGRectContainsPoint(v17, v16))
  {
    return 0;
  }

  attributedString = [(SKUIAttributedStringLayout *)self->_layout attributedString];
  v9 = [attributedString length];
  if (v9 < 1)
  {
    v14 = 0;
  }

  else
  {
    v10 = v9;
    [(SKUIAttributedStringView *)self _setupTapLocatorContainer];
    [(NSLayoutManager *)self->_layoutManager enumerateLineFragmentsForGlyphRange:0 usingBlock:v10, &__block_literal_global_54];
    v11 = self->_textBounds.origin.y;
    v12 = y + v11;
    if (v11 == 0.0)
    {
      v12 = y;
    }

    v13 = [attributedString attribute:@"SKUILinkAttributeName" atIndex:-[NSLayoutManager characterIndexForGlyphAtIndex:](self->_layoutManager longestEffectiveRange:"characterIndexForGlyphAtIndex:" inRange:{-[NSLayoutManager glyphIndexForPoint:inTextContainer:](self->_layoutManager, "glyphIndexForPoint:inTextContainer:", self->_textContainer, x, v12)), range, 0, v10}];

    v14 = v13 != 0;
  }

  return v14;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v42 = *MEMORY[0x277D85DE8];
  layout = self->_layout;
  if (layout)
  {
    [(SKUIAttributedStringLayout *)layout boundingSize:fits.width];
    v7 = v6;
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v8 = v5 + self->_calculatedTopInset;
  if (self->_stringTreatment == 1)
  {
    v7 = v7 + 14.0;
    v9 = v8 + 6.0;
    v10 = self->_layout;
    attributedString = [(SKUIAttributedStringLayout *)v10 attributedString];
    v12 = [attributedString attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];

    [(SKUIAttributedStringLayout *)v10 baselineOffset];
    v14 = v13;
    [v12 capHeight];
    v16 = v14 - v15;
    [v12 _bodyLeading];
    v18 = v16 - v17 * ([(SKUIAttributedStringLayout *)v10 numberOfLines]- 1);
    [(SKUIAttributedStringLayout *)v10 topInset];
    v20 = v19;

    v21 = v20 + v18;
    v22 = ceilf(v21);

    v8 = v9 - v22;
  }

  v23 = [(NSArray *)self->_requiredBadges count];
  if (v23 >= 1)
  {
    v24 = v23;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = self->_requiredBadges;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      v29 = 0.0;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v37 + 1) + 8 * i) badgeSize];
          v7 = v7 + v32;
          if (v29 < v31)
          {
            v29 = v31;
          }
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v27);
    }

    else
    {
      v29 = 0.0;
    }

    v7 = v7 + (v24 * 4.0);
    if (self->_badgePlacement != 1)
    {
      [(SKUIAttributedStringLayout *)self->_layout firstBaselineOffset];
      if (v29 > v33)
      {
        v34 = v29 - v33 + 3.0;
        v8 = v8 + ceilf(v34);
      }
    }
  }

  v35 = v7;
  v36 = v8;
  result.height = v36;
  result.width = v35;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SKUIAttributedStringView;
  [(SKUIAttributedStringView *)&v3 tintColorDidChange];
  if (self->_textColorFollowsTintColor)
  {
    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)_reloadTopInset
{
  self->_calculatedTopInset = 0.0;
  layout = self->_layout;
  if (layout)
  {
    if (self->_firstLineTopInset)
    {
      v4 = layout;
      attributedString = [(SKUIAttributedStringLayout *)v4 attributedString];
      v6 = [attributedString attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];

      [(SKUIAttributedStringLayout *)v4 baselineOffset];
      v8 = v7;
      [v6 capHeight];
      v10 = v8 - v9;
      [v6 _bodyLeading];
      v12 = v10 - v11 * ([(SKUIAttributedStringLayout *)v4 numberOfLines]- 1);
      [(SKUIAttributedStringLayout *)v4 topInset];
      v14 = v13;

      v15 = v14 + v12;
      v16 = ceilf(v15);

      self->_calculatedTopInset = self->_firstLineTopInset - v16;
    }
  }
}

- (void)_setTrackingTouch:(BOOL)touch
{
  if (self->_trackingTouch != touch)
  {
    self->_trackingTouch = touch;
    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (void)_setTouchInside:(BOOL)inside
{
  if (self->_touchInside != inside)
  {
    self->_touchInside = inside;
    [(SKUIAttributedStringView *)self setNeedsDisplay];
  }
}

- (SKUILinkHandler)linkDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_linkDelegate);

  return WeakRetained;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAttributedStringView initWithFrame:]";
}

+ (void)sizeWithLayout:treatment:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIAttributedStringView sizeWithLayout:treatment:]";
}

@end
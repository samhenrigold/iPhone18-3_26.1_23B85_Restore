@interface SKUISectionHeaderView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)_sizeForViewElement:(id)element width:(double)width context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForButton:(id)button context:(id)context;
+ (id)_attributedStringForLabel:(id)label context:(id)context;
+ (id)_linesForViewElement:(id)element width:(double)width buttonSize:(CGSize)size context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUISectionHeaderView)initWithFrame:(CGRect)frame;
- (void)_buttonAction:(id)action;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation SKUISectionHeaderView

- (SKUISectionHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUISectionHeaderView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUISectionHeaderView;
  height = [(SKUIViewReuseView *)&v20 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    views = height->_views;
    height->_views = v17;
  }

  return height;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUISectionHeaderView *)v5 prefetchResourcesForViewElement:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUISectionHeaderView preferredSizeForViewElement:context:];
  }

  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUISectionHeaderView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  button = [elementCopy button];
  v37 = elementCopy;
  titleLabels = [elementCopy titleLabels];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v20 = [titleLabels countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(titleLabels);
        }

        v24 = *(*(&v38 + 1) + 8 * i);
        v25 = [self _attributedStringForLabel:v24 context:contextCopy];
        [labelLayoutCache requestLayoutForLabel:v24 attributedString:v25 width:width];
      }

      v21 = [titleLabels countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v21);
  }

  if (button)
  {
    v26 = width * 0.3;
    v27 = vcvtps_s32_f32(v26);
    style = [button style];
    if ([style elementAlignment] == 1)
    {
      v29 = [titleLabels count];

      if (!v29)
      {
        style2 = [v37 style];
        [style2 elementPadding];
        v32 = v31;
        v34 = v33;

        v27 = (width - (v34 + v32));
      }
    }

    else
    {
    }

    v35 = [self _attributedStringForButton:button context:contextCopy];
    [labelLayoutCache requestLayoutForButton:button attributedString:v35 width:v27];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUISectionHeaderView *)v10 sizeThatFitsWidth:v11 viewElement:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  button = [elementCopy button];
  if (button)
  {
    v19 = width * 0.3;
    [self _sizeForViewElement:button width:contextCopy context:vcvtps_s32_f32(v19)];
    v21 = v20;
    v23 = v22 + 10.0;
  }

  else
  {
    v23 = *MEMORY[0x277CBF3A8];
    v21 = *(MEMORY[0x277CBF3A8] + 8);
  }

  titleLabels = [elementCopy titleLabels];
  v25 = titleLabels;
  if (width <= 600.0)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v40 = [titleLabels countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v59;
      v30 = 0.0;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v59 != v42)
          {
            objc_enumerationMutation(v25);
          }

          [self _sizeForViewElement:*(*(&v58 + 1) + 8 * i) width:contextCopy context:width];
          v30 = v30 + v44;
        }

        v41 = [v25 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v41);
    }

    else
    {
      v30 = 0.0;
    }
  }

  else
  {
    v47 = titleLabels;
    v48 = button;
    v49 = elementCopy;
    v26 = [self _linesForViewElement:elementCopy width:contextCopy buttonSize:width context:{v23, v21}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v55;
      v30 = 0.0;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v55 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v54 + 1) + 8 * j);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v33 = v32;
          v34 = [v33 countByEnumeratingWithState:&v50 objects:v62 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v51;
            v37 = 0.0;
            do
            {
              for (k = 0; k != v35; ++k)
              {
                if (*v51 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                [self _sizeForViewElement:*(*(&v50 + 1) + 8 * k) width:contextCopy context:width];
                if (v37 < v39)
                {
                  v37 = v39;
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v50 objects:v62 count:16];
            }

            while (v35);
          }

          else
          {
            v37 = 0.0;
          }

          v30 = v30 + v37;
        }

        v28 = [v26 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v28);
    }

    else
    {
      v30 = 0.0;
    }

    button = v48;
    elementCopy = v49;
    v25 = v47;
  }

  if (v30 >= v21)
  {
    v21 = v30;
  }

  widthCopy = width;
  v46 = v21;
  result.height = v46;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  objc_storeStrong(&self->_header, element);
  [objc_opt_class() sizeThatFitsWidth:elementCopy viewElement:contextCopy context:width];
  self->_lastFitSize.width = v11;
  self->_lastFitSize.height = v12;
  [(NSMapTable *)self->_views removeAllObjects];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3010000000;
  v26 = &unk_215F8ACD7;
  v27 = *MEMORY[0x277CBF3A8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SKUISectionHeaderView_reloadWithViewElement_width_context___block_invoke;
  v17[3] = &unk_2781FA4A8;
  v13 = elementCopy;
  widthCopy = width;
  v18 = v13;
  selfCopy = self;
  v14 = contextCopy;
  v20 = v14;
  v21 = &v23;
  [(SKUIViewReuseView *)self modifyUsingBlock:v17];
  if (width <= 600.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = [objc_opt_class() _linesForViewElement:self->_header width:v14 buttonSize:width context:{v24[4], v24[5]}];
  }

  lines = self->_lines;
  self->_lines = v15;

  _Block_object_dispose(&v23, 8);
}

void __61__SKUISectionHeaderView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) button];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 64) * 0.3;
  v7 = vcvtps_s32_f32(v6);
  v8 = [v4 style];
  if ([v8 elementAlignment] != 1)
  {

    goto LABEL_6;
  }

  v9 = [*(*(a1 + 40) + 480) titleLabels];
  v10 = [v9 count];

  if (v10)
  {
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  v11 = [*(a1 + 32) style];
  [v11 elementPadding];
  v13 = v12;
  v15 = v14;

  v7 = (*(a1 + 64) - (v13 + v15));
  v16 = 1;
LABEL_7:
  v17 = [v3 addButtonWithElement:v5 width:*(a1 + 48) context:v7];
  [v17 addTarget:*(a1 + 40) action:sel__buttonAction_ forControlEvents:64];
  LODWORD(v18) = -0.5;
  [v17 setCharge:v18];
  [*(*(a1 + 40) + 488) setObject:v17 forKey:v5];
  [v17 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v19 = *(*(a1 + 56) + 8);
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  if ((v16 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 32) = *(*(*(a1 + 56) + 8) + 32) + 10.0;
  }

LABEL_10:
  v22 = [*(a1 + 32) titleLabels];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v29 + 1) + 8 * i);
        v28 = [v3 addLabelViewWithElement:v27 width:*(a1 + 48) context:*(a1 + 64)];
        [*(*(a1 + 40) + 488) setObject:v28 forKey:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v24);
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SKUISectionHeaderView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SKUISectionHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  button = [(SKUIHeaderViewElement *)self->_header button];
  style = [button style];
  if ([style elementAlignment] == 1)
  {
    titleLabels = [(SKUIHeaderViewElement *)self->_header titleLabels];
    v14 = [titleLabels count] == 0;
  }

  else
  {
    v14 = 0;
  }

  v53 = v4;
  if (button)
  {
    v15 = [(NSMapTable *)self->_views objectForKey:button];
    [v15 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v17 = v16;
    v19 = v18;
    if (v14)
    {
      style2 = [button style];
      [style2 elementPadding];
      v22 = v21;
      v24 = v23;

      v25 = v24 + self->_contentInset.left;
      top = v22 + self->_contentInset.top;
    }

    else
    {
      v86.origin.x = v4;
      v86.origin.y = v6;
      v86.size.width = v8;
      v86.size.height = v10;
      v25 = CGRectGetMaxX(v86) - self->_contentInset.right - v17;
      top = self->_contentInset.top;
    }

    v34 = v17;
    v35 = v19;
    v87 = CGRectIntegral(*&v25);
    x = v87.origin.x;
    y = v87.origin.y;
    width = v87.size.width;
    height = v87.size.height;
    v36 = v4;
    v27 = v6;
    v37 = v6;
    v28 = v8;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v87.origin.x, v87.origin.y, v87.size.width, v87.size.height, v36, v37, v8, v10, v38, v39);
    [v15 setFrame:?];
    v29 = v10;
    if (!v14)
    {
      x = x + -10.0;
      width = width + 10.0;
    }
  }

  else
  {
    v27 = v6;
    v28 = v8;
    v29 = v10;
    v15 = 0;
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  titleLabels2 = [(SKUIHeaderViewElement *)self->_header titleLabels];
  if (self->_lastFitSize.width <= 600.0)
  {
    v78 = 0;
    v79 = &v78;
    v43 = self->_contentInset.top;
    v80 = 0x2020000000;
    v81 = v43;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __39__SKUISectionHeaderView_layoutSubviews__block_invoke;
    v66[3] = &unk_2781FA4D0;
    v66[4] = self;
    v68 = &v78;
    v70 = v53;
    v71 = v27;
    v72 = v28;
    v73 = v29;
    v74 = x;
    v75 = y;
    v76 = width;
    v77 = height;
    v67 = button;
    v69 = &v82;
    [titleLabels2 enumerateObjectsUsingBlock:v66];

    _Block_object_dispose(&v78, 8);
  }

  else
  {
    v78 = 0;
    v79 = &v78;
    v41 = self->_contentInset.top;
    v80 = 0x2020000000;
    v81 = v41;
    lines = self->_lines;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __39__SKUISectionHeaderView_layoutSubviews__block_invoke_2;
    v54[3] = &unk_2781FA4F8;
    v54[4] = self;
    v58 = v53;
    v59 = v27;
    v60 = v28;
    v61 = v29;
    v55 = button;
    v56 = &v78;
    v62 = x;
    v63 = y;
    v64 = width;
    v65 = height;
    v57 = &v82;
    [(NSArray *)lines enumerateObjectsUsingBlock:v54];

    _Block_object_dispose(&v78, 8);
  }

  if (v15 != 0 && !v14)
  {
    [v15 frame];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = self->_contentInset.top;
    v51 = v83[3];
    [v15 baselineOffset];
    *&v52 = v50 + v51 - v52;
    [v15 setFrame:{v45, roundf(*&v52), v47, v49}];
  }

  _Block_object_dispose(&v82, 8);
}

void __39__SKUISectionHeaderView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = [*(*(a1 + 32) + 488) objectForKey:?];
  [v5 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v8 = v7;
  v9 = v6;
  v10 = *(*(*(a1 + 48) + 8) + 24);
  v11 = *(*(a1 + 32) + 432);
  v12 = *(a1 + 80) - *(*(a1 + 32) + 448);
  v13 = v12 - v11;
  if (*(a1 + 40))
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    v15 = v12 - v11;
    v16 = v6;
    if (CGRectIntersectsRect(*(a1 + 96), *&v11))
    {
      v12 = *(a1 + 96);
    }
  }

  v17 = *(*(a1 + 32) + 432);
  v18 = v12 - v17;
  if (v8 >= v12 - v17)
  {
    v8 = v12 - v17;
  }

  v19 = [v33 style];
  v20 = SKUIViewElementAlignmentForStyle(v19);

  if (v20 > 5)
  {
    v21 = *MEMORY[0x277CBF3A0];
  }

  else if (((1 << v20) & 0x33) != 0)
  {
    v21 = *(*(a1 + 32) + 432);
  }

  else if (v20 == 2)
  {
    v29 = *(*(a1 + 32) + 432);
    v30 = (v13 - v8) * 0.5;
    v31 = floorf(v30);
    v21 = v29 + v31;
    if (*(a1 + 40))
    {
      v38.origin.x = v29 + v31;
      v38.origin.y = v10;
      v38.size.width = v8;
      v38.size.height = v9;
      if (CGRectIntersectsRect(v38, *(a1 + 96)))
      {
        v32 = (v18 - v8) * 0.5;
        v21 = *(*(a1 + 32) + 432) + floorf(v32);
      }
    }
  }

  else
  {
    v21 = v12 - v8;
  }

  v35.origin.x = v21;
  v35.origin.y = v10;
  v35.size.width = v8;
  v35.size.height = v9;
  v36 = CGRectIntegral(v35);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v36.origin.x, v36.origin.y, v36.size.width, v36.size.height, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), v26, v27);
  [v5 setFrame:?];
  if (!a3)
  {
    [v5 baselineOffset];
    *(*(*(a1 + 56) + 8) + 24) = v28;
  }

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  *(*(*(a1 + 48) + 8) + 24) = CGRectGetMaxY(v37);
}

void __39__SKUISectionHeaderView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*(a1 + 32) + 432);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF390] + 16);
    v13 = *(MEMORY[0x277CBF390] + 24);
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v17 = [*(*(a1 + 32) + 488) objectForKey:*(*(&v42 + 1) + 8 * i)];
        [v17 sizeThatFits:{v12, v13}];
        v49.size.width = v18;
        v49.size.height = v19;
        v49.origin.x = v10;
        v49.origin.y = v11;
        v50 = CGRectIntegral(v49);
        height = v50.size.height;
        [v17 setFrame:{v50.origin.x, v50.origin.y, v50.size.width}];
        [v17 baselineOffset];
        if (v14 < v21)
        {
          v14 = v21;
        }

        if (v15 < height)
        {
          v15 = height;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v8);
  }

  else
  {
    v14 = 0.0;
    v15 = 0.0;
  }

  v22 = *(a1 + 80) - *(*(a1 + 32) + 448);
  if (*(a1 + 40))
  {
    v52.origin.x = *(*(a1 + 32) + 432);
    v52.size.width = v22 - v52.origin.x;
    v52.origin.y = *(*(*(a1 + 48) + 8) + 24);
    v52.size.height = v15;
    if (CGRectIntersectsRect(*(a1 + 96), v52))
    {
      v22 = *(a1 + 96);
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = v5;
  v24 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v39;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(a1 + 32) + 488) objectForKey:{*(*(&v38 + 1) + 8 * j), v38}];
        [v28 frame];
        v30 = v29;
        v32 = v31;
        v33 = v14 + *(*(*(a1 + 48) + 8) + 24);
        v34 = [v28 baselineOffset];
        *&v36 = v33 - v36;
        v37 = roundf(*&v36);
        if (v30 >= v22 - v6)
        {
          v30 = v22 - v6;
        }

        SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v6, v37, v30, v32, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), v34, v35);
        [v28 setFrame:?];
        v51.origin.x = v6;
        v51.origin.y = v37;
        v51.size.width = v30;
        v51.size.height = v32;
        v6 = CGRectGetMaxX(v51) + 10.0;
      }

      v25 = [v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v25);
  }

  if (!a3)
  {
    *(*(*(a1 + 56) + 8) + 24) = v14;
  }

  *(*(*(a1 + 48) + 8) + 24) = v15 + *(*(*(a1 + 48) + 8) + 24);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_lastFitSize.width;
  height = self->_lastFitSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_buttonAction:(id)action
{
  v28 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = 488;
  v6 = self->_views;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v21 = *v24;
    do
    {
      v10 = 0;
      v22 = v8;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = [*(&self->super.super.super.super.isa + v5) objectForKey:v11];

        if (v12 == actionCopy)
        {
          v13 = SKUICollectionViewCellForView(self);
          v14 = SKUICollectionViewForView(v13);
          delegate = [v14 delegate];
          if (objc_opt_respondsToSelector())
          {
            [v14 indexPathForCell:v13];
            selfCopy = self;
            v17 = v6;
            v18 = v5;
            v20 = v19 = actionCopy;
            [delegate collectionView:v14 didConfirmButtonElement:v11 withClickInfo:0 forItemAtIndexPath:v20];

            actionCopy = v19;
            v5 = v18;
            v6 = v17;
            self = selfCopy;
            v9 = v21;
          }

          else
          {
            [v11 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
          }

          v8 = v22;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }
}

+ (id)_attributedStringForButton:(id)button context:(id)context
{
  buttonCopy = button;
  contextCopy = context;
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v8 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [buttonCopy style];
  }

  v10 = style;

  v11 = SKUIViewElementFontWithStyle(v10);
  if (!v11)
  {
    v12 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] addingSymbolicTraits:2 options:0];
    v11 = [MEMORY[0x277D74300] fontWithDescriptor:v12 size:0.0];
  }

  tintColor = [contextCopy tintColor];
  v14 = SKUIViewElementPlainColorWithStyle(v10, tintColor);

  if (!v14)
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
  }

  buttonText = [buttonCopy buttonText];
  v16 = [buttonText attributedStringWithDefaultFont:v11 foregroundColor:v14 style:v10];

  return v16;
}

+ (id)_attributedStringForLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  style = [labelCopy style];
  v8 = [contextCopy aggregateValueForKey:@"SKUISectionHeaderStyleKey"];
  integerValue = [v8 integerValue];

  v10 = SKUIViewElementFontWithStyle(style);
  tintColor = [contextCopy tintColor];

  v12 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  labelViewStyle = [labelCopy labelViewStyle];
  if (labelViewStyle > 5)
  {
    goto LABEL_17;
  }

  if (((1 << labelViewStyle) & 0x1B) == 0)
  {
    if (!v10)
    {
      if (integerValue != 1)
      {
        v10 = SKUIFontPreferredFontForTextStyle(1, v14);
        if (v12)
        {
          goto LABEL_17;
        }

LABEL_11:
        labelColor = [MEMORY[0x277D75348] labelColor];
LABEL_16:
        v12 = labelColor;
        goto LABEL_17;
      }

      v17 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] addingSymbolicTraits:2 options:0];
      v10 = [MEMORY[0x277D74300] fontWithDescriptor:v17 size:0.0];
    }

    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (v10)
  {
    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  if (integerValue == 1)
  {
    v10 = SKUIFontPreferredFontForTextStyle(8, v14);
    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v10 = SKUIFontPreferredFontForTextStyle(21, v14);
  if (!v12)
  {
LABEL_5:
    if (integerValue != 1)
    {
      v15 = MEMORY[0x277D75348];
      v16 = 0.6;
LABEL_15:
      labelColor = [v15 colorWithWhite:0.0 alpha:v16];
      goto LABEL_16;
    }

LABEL_14:
    v15 = MEMORY[0x277D75348];
    v16 = 0.8;
    goto LABEL_15;
  }

LABEL_17:
  v19 = SKUIViewElementAlignmentForStyle(style);
  v21 = SKUIViewElementNSTextAlignmentForIKElementAlignment(v19, v20);
  text = [labelCopy text];
  v23 = [text attributedStringWithDefaultFont:v10 foregroundColor:v12 textAlignment:v21 style:style];

  return v23;
}

+ (id)_linesForViewElement:(id)element width:(double)width buttonSize:(CGSize)size context:(id)context
{
  width = size.width;
  contextCopy = context;
  elementCopy = element;
  v12 = objc_alloc_init(SKUIViewElementHorizontalLayout);
  [(SKUIViewElementHorizontalLayout *)v12 setElementSpacing:10.0];
  [(SKUIViewElementHorizontalLayout *)v12 setLayoutWidth:width - width];
  titleLabels = [elementCopy titleLabels];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__SKUISectionHeaderView__linesForViewElement_width_buttonSize_context___block_invoke;
  v17[3] = &unk_2781FA520;
  widthCopy = width;
  v18 = contextCopy;
  selfCopy = self;
  v14 = contextCopy;
  v15 = [(SKUIViewElementHorizontalLayout *)v12 layoutViewElements:titleLabels usingSizingBlock:v17];

  return v15;
}

+ (CGSize)_sizeForViewElement:(id)element width:(double)width context:(id)context
{
  [context sizeForViewElement:element width:width];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)initWithFrame:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUISectionHeaderView initWithFrame:]";
}

+ (void)prefetchResourcesForViewElement:(uint64_t)a3 reason:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUISectionHeaderView prefetchResourcesForViewElement:reason:context:]";
}

+ (void)preferredSizeForViewElement:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUISectionHeaderView preferredSizeForViewElement:context:]";
}

+ (void)requestLayoutForViewElement:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUISectionHeaderView requestLayoutForViewElement:width:context:]";
}

+ (void)sizeThatFitsWidth:(uint64_t)a3 viewElement:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUISectionHeaderView sizeThatFitsWidth:viewElement:context:]";
}

@end
@interface SKUIOfferView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForButton:(id)button context:(id)context;
+ (id)_attributedStringForLabel:(id)label context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)_shouldHideNoticesWithBuyButtonDescriptor:(id)descriptor context:(id)context;
- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)offerViewStateDescription;
- (SKUIOfferView)initWithFrame:(CGRect)frame;
- (SKUIOfferViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_buttonAction:(id)action;
- (void)_cancelConfirmationAction:(id)action;
- (void)_sendWillAnimate;
- (void)_showConfirmationAction:(id)action;
- (void)itemOfferButtonDidAnimateTransition:(id)transition;
- (void)itemOfferButtonWillAnimateTransition:(id)transition;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUIOfferView

- (SKUIOfferView)initWithFrame:(CGRect)frame
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
        [(SKUIOfferView *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v24.receiver = self;
  v24.super_class = SKUIOfferView;
  height = [(SKUIViewReuseView *)&v24 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    buttonElements = height->_buttonElements;
    height->_buttonElements = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    metadataViews = height->_metadataViews;
    height->_metadataViews = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    offerButtonViews = height->_offerButtonViews;
    height->_offerButtonViews = v21;

    [(SKUIOfferView *)height setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(SKUIOfferView *)height setPreservesSuperviewLayoutMargins:0];
  }

  return height;
}

- (NSString)offerViewStateDescription
{
  offerButtonViews = [(SKUIOfferView *)self offerButtonViews];
  v4 = [offerButtonViews count];

  if (v4 == 1)
  {
    offerButtonViews2 = [(SKUIOfferView *)self offerButtonViews];
    firstObject = [offerButtonViews2 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      offerButtonStateDescription = [firstObject offerButtonStateDescription];
    }

    else
    {
      offerButtonStateDescription = &stru_2827FFAC8;
    }
  }

  else
  {
    offerButtonStateDescription = &stru_2827FFAC8;
  }

  return offerButtonStateDescription;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIOfferView *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__SKUIOfferView_prefetchResourcesForViewElement_reason_context___block_invoke;
  v20[3] = &unk_2781F95A0;
  v17 = contextCopy;
  v22 = &v24;
  reasonCopy = reason;
  v21 = v17;
  [elementCopy enumerateChildrenUsingBlock:v20];
  v18 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return v18;
}

void *__64__SKUIOfferView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIOfferView preferredSizeForViewElement:context:];
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
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIOfferView *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  *&v27[3] = width;
  labelLayoutCache = [contextCopy labelLayoutCache];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__SKUIOfferView_requestLayoutForViewElement_width_context___block_invoke;
  v21[3] = &unk_278200DD0;
  selfCopy = self;
  v19 = contextCopy;
  v22 = v19;
  v20 = labelLayoutCache;
  widthCopy = width;
  v23 = v20;
  v24 = v27;
  [elementCopy enumerateChildrenUsingBlock:v21];

  _Block_object_dispose(v27, 8);
}

void __59__SKUIOfferView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 elementType];
  if (v3 > 137)
  {
    if (v3 == 138)
    {
      v5 = v9;
      v6 = [*(a1 + 56) _attributedStringForLabel:v5 context:*(a1 + 32)];
      v7 = [v5 labelViewStyle];
      v8 = *(a1 + 40);
      if (v7 == 3)
      {
        [v8 requestLayoutForLabel:v5 attributedString:v6 width:*(*(*(a1 + 48) + 8) + 24)];
        *(*(*(a1 + 48) + 8) + 24) = *(a1 + 64);
      }

      else
      {
        [v8 requestLayoutForLabel:v5 attributedString:v6 width:*(a1 + 64)];
      }

      goto LABEL_12;
    }

    if (v3 != 141)
    {
      goto LABEL_13;
    }

LABEL_7:
    v5 = [*(a1 + 56) _attributedStringForButton:v9 context:*(a1 + 32)];
    [*(a1 + 40) requestLayoutForButton:v9 attributedString:v5 width:*(a1 + 64)];
LABEL_12:

    goto LABEL_13;
  }

  if (v3 == 12)
  {
    goto LABEL_7;
  }

  if (v3 == 13)
  {
    [*(a1 + 32) sizeForItemOfferButton:v9];
    *(*(*(a1 + 48) + 8) + 24) = v4 + 10.0;
  }

LABEL_13:
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIOfferView *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = MEMORY[0x277CBF3A8];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3010000000;
  v78 = 0;
  v79 = 0;
  v77 = &unk_215F8ACD7;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  *&v73[3] = width;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3010000000;
  v67 = &unk_215F8ACD7;
  v68 = xmmword_215F40690;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3010000000;
  v58 = &unk_215F8ACD7;
  v59 = *MEMORY[0x277CBF3A8];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __55__SKUIOfferView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v40[3] = &unk_278200DF8;
  v18 = contextCopy;
  widthCopy = width;
  v41 = v18;
  v43 = &v55;
  v44 = &v60;
  v45 = &v64;
  v46 = v73;
  v47 = &v69;
  v19 = elementCopy;
  v42 = v19;
  v48 = &v51;
  v49 = &v74;
  [v19 enumerateChildrenUsingBlock:v40];
  v21 = *v17;
  v20 = v17[1];
  if (v75[4] == *v17 && v75[5] == v20)
  {
    v22 = v65;
  }

  else
  {
    isCompactModeEnabled = [v19 isCompactModeEnabled];
    v22 = v65;
    if (isCompactModeEnabled)
    {
      v65[4] = v75[4] + 10.0 + v65[4];
    }

    else
    {
      v65[5] = v75[5] + 3.0 + v65[5];
    }
  }

  if (v22[5] >= v56[5])
  {
    v24 = v22[5];
  }

  else
  {
    v24 = v56[5];
  }

  v25 = v70[3];
  v26 = v21;
  if (v25 >= 1)
  {
    v26 = v21 + 10.0;
    if (v61[3] <= 0)
    {
      v26 = v21;
    }

    v27 = v25 - 1;
    if (v27)
    {
      v26 = v26 + (v27 * 20.0);
    }
  }

  v28 = v26 + v22[4] + v56[4];
  if (v28 < width)
  {
    width = v28;
  }

  attributes = [v19 attributes];
  v30 = [attributes objectForKey:@"supportsPlayButton"];
  if ([v30 BOOLValue])
  {
    v31 = *(v52 + 24);

    if ((v31 & 1) == 0)
    {
      v32 = *&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_0;
      v33 = *&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_1;
      if (*&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_0 == v21 && *&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_1 == v20)
      {
        blackColor = [MEMORY[0x277D75348] blackColor];
        v35 = [SKUIItemOfferButton playImageWithTintColor:blackColor];
        [v35 size];
        sizeThatFitsWidth_viewElement_context__sPlayButtonSize_0 = v36;
        sizeThatFitsWidth_viewElement_context__sPlayButtonSize_1 = v37;

        v32 = *&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_0;
        v33 = *&sizeThatFitsWidth_viewElement_context__sPlayButtonSize_1;
      }

      width = width + v32 + 20.0;
      if (v33 >= v24)
      {
        v24 = v33;
      }
    }
  }

  else
  {
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(v73, 8);
  _Block_object_dispose(&v74, 8);

  widthCopy2 = width;
  v39 = v24;
  result.height = v39;
  result.width = widthCopy2;
  return result;
}

void __55__SKUIOfferView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v34 = a2;
  v3 = [v34 elementType];
  if (v3 > 49)
  {
    if (v3 != 141)
    {
      if (v3 != 138)
      {
        if (v3 != 50)
        {
          goto LABEL_31;
        }

        goto LABEL_13;
      }

      v7 = v34;
      v12 = [v7 labelViewStyle];
      v13 = [*(a1 + 32) labelLayoutCache];
      v14 = v13;
      if (v12 == 3)
      {
        [v13 sizeForLabel:v7 width:*(*(*(a1 + 96) + 8) + 32)];
        v16 = v15;
        v18 = v17;

        v19 = *(*(a1 + 96) + 8);
        v20 = *(v19 + 40);
        if (v20 < v18)
        {
          v20 = v18;
        }

        *(v19 + 40) = v20;
        v21 = *(*(a1 + 96) + 8);
        v22 = *(v21 + 32);
        if (v22 < v16)
        {
          v22 = v16;
        }

        *(v21 + 32) = v22;
        *(*(*(a1 + 72) + 8) + 24) = *(a1 + 104);
      }

      else
      {
        [v13 sizeForLabel:v7 width:*(a1 + 104)];
        v24 = v23;
        v26 = v25;

        *(*(*(a1 + 48) + 8) + 40) = v26 + *(*(*(a1 + 48) + 8) + 40);
        v27 = *(*(a1 + 48) + 8);
        v28 = *(v27 + 32);
        if (v28 < v24)
        {
          v28 = v24;
        }

        *(v27 + 32) = v28;
        ++*(*(*(a1 + 56) + 8) + 24);
      }

LABEL_30:

      goto LABEL_31;
    }

LABEL_8:
    [*(a1 + 32) sizeForViewElement:v34 width:*(a1 + 104)];
    v6 = *(*(a1 + 64) + 8);
    if (*(v6 + 40) >= v5)
    {
      v5 = *(v6 + 40);
    }

    *(v6 + 40) = v5;
    *(*(*(a1 + 64) + 8) + 32) = v4 + *(*(*(a1 + 64) + 8) + 32);
    *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 64) + 8) + 32);
    ++*(*(*(a1 + 80) + 8) + 24);
    v7 = [*(a1 + 40) attributes];
    v8 = [v7 objectForKey:@"supportsPlayButton"];
    if ([v8 BOOLValue] && (*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_31;
      }

      v30 = [v34 itemIdentifier];
      if (!v30)
      {
        goto LABEL_31;
      }

      v31 = v30;
      v32 = +[SKUIItemStateCenter defaultCenter];
      v7 = [v32 stateForItemWithIdentifier:v31];

      v33 = ([v7 state] >> 6) & 1;
      if (!v7)
      {
        LOBYTE(v33) = 0;
      }

      *(*(*(a1 + 88) + 8) + 24) = v33;
    }

    else
    {
    }

    goto LABEL_30;
  }

  if (v3 != 12)
  {
    if (v3 != 13)
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

LABEL_13:
  [*(a1 + 32) sizeForViewElement:v34 width:*(a1 + 104)];
  *(*(*(a1 + 48) + 8) + 40) = v10 + *(*(*(a1 + 48) + 8) + 40);
  v11 = *(*(a1 + 48) + 8);
  if (*(v11 + 32) >= v9)
  {
    v9 = *(v11 + 32);
  }

  *(v11 + 32) = v9;
  ++*(*(*(a1 + 56) + 8) + 24);
LABEL_31:
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  buttonElements = [(SKUIOfferView *)self buttonElements];
  [buttonElements removeAllObjects];

  buyButtonDescriptorToButton = [(SKUIOfferView *)self buyButtonDescriptorToButton];
  [buyButtonDescriptorToButton removeAllObjects];

  metadataViews = [(SKUIOfferView *)self metadataViews];
  [metadataViews removeAllObjects];

  offerButtonViews = [(SKUIOfferView *)self offerButtonViews];
  [offerButtonViews removeAllObjects];

  [(SKUIOfferView *)self setHlsID:0];
  hlsPlayButton = [(SKUIOfferView *)self hlsPlayButton];
  [hlsPlayButton removeFromSuperview];

  [(SKUIOfferView *)self setHlsPlayButton:0];
  [(SKUIOfferView *)self setShowingConfirmation:0];
  [(SKUIOfferView *)self setNotices:0];
  -[SKUIOfferView setCompactModeEnabled:](self, "setCompactModeEnabled:", [elementCopy isCompactModeEnabled]);
  style = [elementCopy style];
  elementAlignment = [style elementAlignment];

  if (elementAlignment == 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = 1;
  }

  [(SKUIOfferView *)self setAlignment:v17];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__SKUIOfferView_reloadWithViewElement_width_context___block_invoke;
  v20[3] = &unk_2781F95C8;
  widthCopy = width;
  v21 = elementCopy;
  v22 = contextCopy;
  selfCopy = self;
  v18 = contextCopy;
  v19 = elementCopy;
  [(SKUIViewReuseView *)self modifyUsingBlock:v20];
}

void __53__SKUIOfferView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__103;
  v29[4] = __Block_byref_object_dispose__103;
  v30 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SKUIOfferView_reloadWithViewElement_width_context___block_invoke_27;
  v10[3] = &unk_278200E20;
  v5 = v3;
  v11 = v5;
  v20 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v12 = v6;
  v13 = v7;
  v15 = v33;
  v16 = v29;
  v17 = v31;
  v14 = *(a1 + 32);
  v18 = &v21;
  v19 = &v25;
  [v4 enumerateChildrenUsingBlock:v10];
  v8 = v26[3];
  v9 = v8 < 1 || v8 < v22[3];
  *(*(a1 + 48) + 440) = v9;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
}

void __53__SKUIOfferView_reloadWithViewElement_width_context___block_invoke_27(uint64_t a1, void *a2)
{
  v46 = a2;
  v3 = [v46 elementType];
  v4 = 0;
  v5 = 1;
  if (v3 <= 49)
  {
    if (v3 == 12)
    {
LABEL_24:
      v6 = [*(a1 + 32) addButtonWithElement:v46 width:*(a1 + 40) context:*(a1 + 104)];
      [v6 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
      [v6 addTarget:0 action:sel_skuiadvertising_advertSelectionEventShouldBeForwarded_ forControlEvents:64];
      if (v6)
      {
LABEL_25:
        v31 = 96;
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          v31 = 88;
        }

        v7 = v6;
        ++*(*(*(a1 + v31) + 8) + 24);
        v30 = [*(a1 + 48) metadataViews];
        [v30 addObject:v6];
        v4 = 0;
        v6 = 0;
        v8 = 0;
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1;
    if (v3 != 13)
    {
      goto LABEL_45;
    }

LABEL_8:
    v9 = [*(a1 + 32) addButtonWithElement:v46 width:*(a1 + 40) context:*(a1 + 104)];
    [v9 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:0x20000];
    [v9 addTarget:*(a1 + 48) action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
    [v9 addTarget:*(a1 + 48) action:sel__showConfirmationAction_ forControlEvents:0x40000];
    [v9 addTarget:0 action:sel_skuiadvertising_advertSelectionEventShouldBeForwarded_ forControlEvents:64];
    LODWORD(v10) = -0.5;
    [v9 setCharge:v10];
    [v9 setItemOfferDelegate:*(a1 + 48)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v9);
    v4 = v9;
    v11 = *(a1 + 48);
    v12 = [v46 buyButtonDescriptor];
    *(*(*(a1 + 80) + 8) + 24) = [v11 _shouldHideNoticesWithBuyButtonDescriptor:v12 context:*(a1 + 40)];

    if (!v4)
    {
      v6 = 0;
LABEL_44:
      v7 = 0;
      v8 = 1;
      goto LABEL_45;
    }

    v13 = [v46 buyButtonDescriptor];
    if (v13)
    {
      v14 = [*(a1 + 48) buyButtonDescriptorToButton];

      if (!v14)
      {
        v15 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:517 capacity:1];
        [*(a1 + 48) setBuyButtonDescriptorToButton:v15];
      }

      v16 = [*(a1 + 48) buyButtonDescriptorToButton];
      [v16 setObject:v4 forKey:v13];
    }

    v17 = [*(a1 + 56) attributes];
    v18 = [(SKUIStoreIdentifier *)v17 objectForKey:@"supportsPlayButton"];
    if ([v18 BOOLValue])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_22:

        v30 = [*(a1 + 48) offerButtonViews];
        [v30 addObject:v4];
        v5 = 0;
        v6 = 0;
        v7 = 0;
        goto LABEL_23;
      }

      v17 = -[SKUIStoreIdentifier initWithLongLong:]([SKUIStoreIdentifier alloc], "initWithLongLong:", [v46 itemIdentifier]);
      if (!v17)
      {
LABEL_21:

        goto LABEL_22;
      }

      v20 = +[SKUIItemStateCenter defaultCenter];
      v18 = [v20 stateForItemWithStoreIdentifier:v17];

      v21 = [v18 state];
      if ([v46 buttonViewType] == 3 && (!v18 || (v21 & 0x40) == 0))
      {
        v22 = objc_alloc_init(MEMORY[0x277D75220]);
        [v22 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
        v23 = objc_opt_class();
        v24 = [*(a1 + 48) backgroundColor];
        v25 = [v23 playTintColorForBackgroundColor:v24];

        v26 = [objc_opt_class() playImageWithTintColor:v25];
        [v22 setImage:v26 forState:0];

        v27 = [objc_opt_class() playHighlightImageWithTintColor:v25];
        [v22 setImage:v27 forState:1];

        [v22 setAdjustsImageWhenHighlighted:1];
        [v22 sizeToFit];
        [v22 setEnabled:{objc_msgSend(v46, "isEnabled")}];
        [*(a1 + 48) addSubview:v22];
        [*(a1 + 48) setHlsPlayButton:v22];
        v28 = [(SKUIStoreIdentifier *)v17 numberValue];
        [*(a1 + 48) setHlsID:v28];

        v29 = [*(a1 + 48) buttonElements];
        [v29 setObject:v46 forKey:v22];
      }
    }

    goto LABEL_21;
  }

  if (v3 == 141)
  {
    goto LABEL_8;
  }

  if (v3 == 138)
  {
    if ([v46 labelViewStyle] == 3)
    {
      v32 = *(*(*(a1 + 72) + 8) + 40);
      if (v32)
      {
        [v32 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
        v34 = v33 + 10.0;
      }

      else
      {
        v34 = *(a1 + 104);
      }

      v6 = [*(a1 + 32) addLabelViewWithElement:v46 width:*(a1 + 40) context:v34];
      if (v6)
      {
        if (!*(*(*(a1 + 72) + 8) + 40))
        {
          goto LABEL_25;
        }

        v35 = [*(a1 + 48) notices];

        if (!v35)
        {
          v36 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
          [*(a1 + 48) setNotices:v36];
        }

        v37 = [*(a1 + 48) notices];
        [v37 setObject:v6 forKey:*(*(*(a1 + 72) + 8) + 40)];

        if (*(*(*(a1 + 80) + 8) + 24) == 1)
        {
          [v6 setHidden:1];
        }

        v4 = 0;
        v7 = 0;
        v38 = *(*(a1 + 72) + 8);
        v30 = *(v38 + 40);
        *(v38 + 40) = 0;
LABEL_23:
        v8 = 1;
LABEL_28:

        goto LABEL_45;
      }
    }

    else
    {
      v6 = [*(a1 + 32) addLabelViewWithElement:v46 width:*(a1 + 40) context:*(a1 + 104)];
      if (v6)
      {
        goto LABEL_25;
      }
    }

LABEL_43:
    v4 = 0;
    goto LABEL_44;
  }

  v6 = 0;
  v7 = 0;
  v8 = 1;
  if (v3 == 50)
  {
    goto LABEL_24;
  }

LABEL_45:
  v39 = [*(a1 + 48) hlsPlayButton];

  if (v39)
  {
    v40 = [*(a1 + 48) offerButtonViews];
    v41 = [*(a1 + 48) hlsPlayButton];
    [v40 addObject:v41];
  }

  v42 = [v46 elementType];
  if (SKUIIKViewElementTypeIsButton(v42, v43))
  {
    if ((v8 & 1) == 0)
    {
      v44 = [*(a1 + 48) buttonElements];
      [v44 setObject:v46 forKey:v7];
    }

    if ((v5 & 1) == 0)
    {
      v45 = [*(a1 + 48) buttonElements];
      [v45 setObject:v46 forKey:v4];
    }
  }
}

- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  v30 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  contextCopy = context;
  clientContext = [contextCopy clientContext];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  buyButtonDescriptorToButton = [(SKUIOfferView *)self buyButtonDescriptorToButton];
  v9 = [buyButtonDescriptorToButton countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v9)
  {

LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v26;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(buyButtonDescriptorToButton);
      }

      v14 = *(*(&v25 + 1) + 8 * i);
      if ([v14 canPersonalizeUsingItemState:stateCopy])
      {
        buyButtonDescriptorToButton2 = [(SKUIOfferView *)self buyButtonDescriptorToButton];
        v16 = [buyButtonDescriptorToButton2 objectForKey:v14];

        [v16 setValuesUsingBuyButtonDescriptor:v14 itemState:stateCopy clientContext:clientContext animated:animatedCopy];
        notices = [(SKUIOfferView *)self notices];

        if (notices)
        {
          notices2 = [(SKUIOfferView *)self notices];
          v19 = [notices2 objectForKey:v16];

          if (v19)
          {
            [v19 setHidden:{-[SKUIOfferView _shouldHideNoticesWithBuyButtonDescriptor:context:](self, "_shouldHideNoticesWithBuyButtonDescriptor:context:", v14, contextCopy)}];
          }
        }

        v11 = 1;
      }
    }

    v10 = [buyButtonDescriptorToButton countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v10);

  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

  [(SKUIOfferView *)self setNeedsLayout];
  v20 = 1;
LABEL_18:

  return v20;
}

- (void)layoutSubviews
{
  v164 = *MEMORY[0x277D85DE8];
  if (![(SKUIOfferView *)self isShowingConfirmation])
  {
    [(SKUIOfferView *)self layoutMargins];
    v4 = v3;
    v6 = v5;
    [(SKUIOfferView *)self bounds];
    v138 = v4;
    v140 = v7;
    v9 = v8;
    v11 = v10;
    v142 = v12;
    v13 = *MEMORY[0x277CBF3A8];
    v156 = 0u;
    v157 = 0u;
    v14 = v12 - v4 - v6;
    v158 = 0u;
    v159 = 0u;
    offerButtonViews = [(SKUIOfferView *)self offerButtonViews];
    v16 = [offerButtonViews countByEnumeratingWithState:&v156 objects:v163 count:16];
    v17 = MEMORY[0x277CBF3A0];
    v143 = v11;
    if (v16)
    {
      v18 = v16;
      v19 = 0;
      v20 = *v157;
      v21 = *MEMORY[0x277CBF3A0];
      v22 = *(MEMORY[0x277CBF3A0] + 8);
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v157 != v20)
          {
            objc_enumerationMutation(offerButtonViews);
          }

          v24 = *(*(&v156 + 1) + 8 * i);
          if (([v24 isHidden] & 1) == 0)
          {
            [v24 sizeThatFits:{v142, v11}];
            v26 = v25;
            [v24 setFrame:{v21, v22, v25, v27}];
            v13 = v13 + v26;
            ++v19;
          }
        }

        v18 = [offerButtonViews countByEnumeratingWithState:&v156 objects:v163 count:16];
      }

      while (v18);

      if (v19 >= 1)
      {
        if (v19 != 1)
        {
          v13 = v13 + ((v19 - 1) * 20.0);
        }

        v14 = v14 - (v13 + 10.0);
      }
    }

    else
    {
    }

    v28 = 0.0;
    v152 = 0u;
    v153 = 0u;
    if ([(SKUIOfferView *)self isCompactModeEnabled])
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v14;
    }

    v134 = v29;
    v154 = 0uLL;
    v155 = 0uLL;
    metadataViews = [(SKUIOfferView *)self metadataViews];
    v31 = [metadataViews countByEnumeratingWithState:&v152 objects:v162 count:16];
    v32 = v142;
    if (v31)
    {
      v33 = v31;
      v34 = *v153;
      v35 = *v17;
      v36 = v17[1];
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v153 != v34)
          {
            objc_enumerationMutation(metadataViews);
          }

          v38 = *(*(&v152 + 1) + 8 * j);
          v39 = [v38 sizeThatFits:{v142, v143}];
          v43 = v42;
          if (v41 >= v134)
          {
            v44 = v134;
          }

          else
          {
            v44 = v41;
          }

          SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v35, v36, v44, v42, v140, v9, v142, v143, v39, v40);
          [v38 setFrame:?];
          v28 = v28 + v43;
        }

        v33 = [metadataViews countByEnumeratingWithState:&v152 objects:v162 count:16];
      }

      while (v33);
    }

    metadataPosition = self->_metadataPosition;
    v46 = v138 + v13 + 10.0;
    if (!metadataPosition)
    {
      v46 = v138;
    }

    v133 = v46;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    offerButtonViews2 = [(SKUIOfferView *)self offerButtonViews];
    v48 = [offerButtonViews2 countByEnumeratingWithState:&v148 objects:v161 count:16];
    v49 = v140;
    if (v48)
    {
      v50 = v48;
      if (metadataPosition)
      {
        v51 = v138;
      }

      else
      {
        v51 = v138 + v134 + 10.0;
      }

      v52 = *v149;
      v126 = *v17;
      rect = v17[1];
      v124 = v17[3];
      v125 = v17[2];
      v141 = v9;
      v128 = v28;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v149 != v52)
          {
            objc_enumerationMutation(offerButtonViews2);
          }

          v54 = *(*(&v148 + 1) + 8 * k);
          if ([v54 isHidden])
          {
            v9 = v141;
            v32 = v142;
          }

          else
          {
            frame = [v54 frame];
            v57 = v56;
            v59 = v58;
            v60 = (v143 - v58) * 0.5;
            v61 = floorf(v60);
            SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v51, v61, v56, v58, v49, v141, v142, v143, frame, v62);
            [v54 setFrame:?];
            notices = [(SKUIOfferView *)self notices];
            v64 = [notices objectForKey:v54];

            v137 = v59;
            v139 = v57;
            v132 = v61;
            if (v64)
            {
              v65 = v51;
              isCompactModeEnabled = [(SKUIOfferView *)self isCompactModeEnabled];
              [v64 sizeThatFits:{v57 + 10.0, 1.79769313e308}];
              v69 = v68;
              if (v67 >= v57 + 10.0)
              {
                v70 = v57 + 10.0;
              }

              else
              {
                v70 = v67;
              }

              v131 = v70;
              v136 = v68;
              if (isCompactModeEnabled)
              {
                v165.origin.x = v51;
                v165.origin.y = v61;
                v165.size.width = v57;
                v165.size.height = v59;
                MidY = CGRectGetMidY(v165);
                v166.origin.x = v65;
                v166.origin.y = rect;
                v166.size.width = v70;
                v166.size.height = v69;
                v129 = MidY + CGRectGetHeight(v166) * -0.5;
                SKUIRectByApplyingUserInterfaceLayoutDirectionInRect(v65, v129, v70, v69, v140, v141, v142, v143, v72, v73);
                [v64 setFrame:?];
                v167.origin.x = v65;
                v167.origin.y = v129;
                v167.size.width = v70;
                v167.size.height = v69;
                MaxY = CGRectGetMaxY(v167);
                v168.origin.x = v65;
                v168.origin.y = v129;
                v168.size.width = v70;
                v75 = v143;
                v168.size.height = v69;
                v76 = v65 + CGRectGetWidth(v168) + 10.0;
                v77 = v61;
                v79 = v141;
                v78 = v142;
                SKUIRectByApplyingUserInterfaceLayoutDirectionInRect(v76, v77, v57, v137, v140, v141, v142, v143, v80, v81);
                [v54 setFrame:?];
                v135 = v65;
                v130 = v76;
                v82 = v140;
              }

              else
              {
                v83 = v51 + (v57 - v70) * 0.5;
                v84 = floorf(v83);
                v130 = v51;
                v169.origin.x = v51;
                v169.origin.y = v61;
                v85 = v84;
                v135 = v84;
                v169.size.width = v57;
                v169.size.height = v59;
                v86 = CGRectGetMaxY(v169) + 3.0;
                v87 = v85;
                v79 = v141;
                v78 = v142;
                SKUIRectByApplyingUserInterfaceLayoutDirectionInRect(v87, v86, v70, v69, v140, v141, v142, v143, v88, v89);
                [v64 setFrame:?];
                v170.origin.x = v135;
                v170.size.height = v136;
                v129 = v86;
                v170.origin.y = v86;
                v170.size.width = v70;
                v75 = v143;
                v82 = v140;
                MaxY = CGRectGetMaxY(v170);
              }
            }

            else
            {
              v82 = v49;
              v130 = v51;
              MaxY = 0.0;
              v131 = v125;
              v129 = rect;
              v135 = v126;
              v136 = v124;
              v79 = v141;
              v78 = v142;
              v75 = v143;
            }

            v171.origin.x = v82;
            v171.origin.y = v79;
            v171.size.width = v78;
            v171.size.height = v75;
            v90 = CGRectGetMaxY(v171);
            if (MaxY <= v90)
            {
              v99 = v129;
              v92 = v130;
              v95 = v137;
              v94 = v139;
              v102 = v131;
              v96 = v132;
              v100 = v135;
              v104 = v136;
            }

            else
            {
              v91 = MaxY - v90;
              v92 = v130;
              v172.origin.x = v130;
              v172.origin.y = v132;
              v93 = v75;
              v95 = v137;
              v94 = v139;
              v172.size.width = v139;
              v172.size.height = v137;
              v96 = fmax(round(CGRectGetMinY(v172) - v91), 0.0);
              SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v130, v96, v139, v137, v82, v79, v78, v93, v97, v98);
              [v54 setFrame:?];
              v173.origin.x = v130;
              v173.origin.y = v96;
              v173.size.width = v139;
              v173.size.height = v137;
              v99 = CGRectGetMaxY(v173) + 3.0;
              v100 = v135;
              v101 = v82;
              v102 = v131;
              v103 = v79;
              v104 = v136;
              SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v135, v99, v131, v136, v101, v103, v142, v143, v105, v106);
              [v64 setFrame:?];
            }

            v174.origin.x = v92;
            v174.origin.y = v96;
            v174.size.width = v94;
            v174.size.height = v95;
            MaxX = CGRectGetMaxX(v174);
            v175.origin.x = v100;
            v175.origin.y = v99;
            v175.size.width = v102;
            v175.size.height = v104;
            v108 = CGRectGetMaxX(v175);
            if (MaxX >= v108)
            {
              v108 = MaxX;
            }

            v51 = v108 + 20.0;

            v9 = v141;
            v32 = v142;
            v49 = v140;
            v28 = v128;
          }
        }

        v50 = [offerButtonViews2 countByEnumeratingWithState:&v148 objects:v161 count:16];
      }

      while (v50);
    }

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    metadataViews2 = [(SKUIOfferView *)self metadataViews];
    v110 = [metadataViews2 countByEnumeratingWithState:&v144 objects:v160 count:16];
    if (v110)
    {
      v111 = v110;
      v112 = (v143 - v28) * 0.5;
      v113 = floorf(v112);
      v114 = *v145;
      do
      {
        for (m = 0; m != v111; ++m)
        {
          if (*v145 != v114)
          {
            objc_enumerationMutation(metadataViews2);
          }

          v116 = *(*(&v144 + 1) + 8 * m);
          [v116 frame];
          v118 = v117;
          v120 = v119;
          alignment = [(SKUIOfferView *)self alignment];
          if (alignment == 3)
          {
            v123 = v134 + v133 - v118;
          }

          else
          {
            v123 = v133;
          }

          SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v123, v113, v118, v120, v49, v9, v32, v143, alignment, v122);
          [v116 setFrame:?];
          v176.origin.x = v123;
          v176.origin.y = v113;
          v176.size.width = v118;
          v176.size.height = v120;
          v113 = CGRectGetMaxY(v176);
        }

        v111 = [metadataViews2 countByEnumeratingWithState:&v144 objects:v160 count:16];
      }

      while (v111);
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v62 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  metadataViews = [(SKUIOfferView *)self metadataViews];
  v8 = [metadataViews countByEnumeratingWithState:&v56 objects:v61 count:16];
  v9 = v6;
  v10 = v5;
  if (v8)
  {
    v11 = v8;
    v12 = *v57;
    v9 = v6;
    v10 = v5;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v57 != v12)
        {
          objc_enumerationMutation(metadataViews);
        }

        [*(*(&v56 + 1) + 8 * i) sizeThatFits:{width, height}];
        v9 = v9 + v15;
        if (v10 < v14)
        {
          v10 = v14;
        }
      }

      v11 = [metadataViews countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v11);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  offerButtonViews = [(SKUIOfferView *)self offerButtonViews];
  v17 = [offerButtonViews countByEnumeratingWithState:&v52 objects:v60 count:16];
  v18 = v6;
  v19 = v5;
  v49 = v6;
  v50 = v5;
  if (v17)
  {
    v20 = v17;
    v21 = *v53;
    v18 = v6;
    v19 = v5;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(offerButtonViews);
        }

        v23 = *(*(&v52 + 1) + 8 * j);
        [v23 sizeThatFits:{width, height}];
        v26 = v25;
        if (v18 < v24)
        {
          v18 = v24;
        }

        notices = [(SKUIOfferView *)self notices];
        v28 = [notices objectForKey:v23];

        if (v28)
        {
          isCompactModeEnabled = [(SKUIOfferView *)self isCompactModeEnabled];
          [v28 sizeThatFits:{v26, 1.79769313e308}];
          v32 = v6 >= v31 ? v6 : v31;
          v6 = isCompactModeEnabled ? v31 : v32;
          if (isCompactModeEnabled)
          {
            v5 = v30;
          }
        }

        v19 = v19 + v26 + 10.0;
      }

      v20 = [offerButtonViews countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v20);
  }

  if (v5 != v50 || v6 != v49)
  {
    if ([(SKUIOfferView *)self isCompactModeEnabled])
    {
      v19 = v19 + v5 + 10.0;
      if (v6 >= v18)
      {
        v18 = v6;
      }
    }

    else
    {
      v18 = v18 + v6 + 3.0;
    }
  }

  offerButtonViews2 = [(SKUIOfferView *)self offerButtonViews];
  v35 = [offerButtonViews2 count];

  metadataViews2 = [(SKUIOfferView *)self metadataViews];
  v37 = [metadataViews2 count];

  v38 = v35 <= 0 || v37 == 0;
  v39 = v10 + v19 + 10.0;
  if (v38)
  {
    v39 = v10 + v19;
  }

  if (v35 >= 2)
  {
    v40 = v39 + ((v35 - 1) * 20.0);
  }

  else
  {
    v40 = v39;
  }

  if (v9 >= v18)
  {
    v41 = v9;
  }

  else
  {
    v41 = v18;
  }

  [(SKUIOfferView *)self layoutMargins];
  v44 = v41 + v43 + v42;
  v47 = v40 + v45 + v46;
  v48 = v44;
  result.height = v48;
  result.width = v47;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  hlsPlayButton = [(SKUIOfferView *)self hlsPlayButton];
  if (hlsPlayButton && (v9 = hlsPlayButton, -[SKUIOfferView hlsPlayButton](self, "hlsPlayButton"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEnabled], v10, v9, v11) && (-[SKUIOfferView hlsPlayButton](self, "hlsPlayButton"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "frame"), v24 = CGRectInset(v23, -10.0, -11.0), v13 = v24.origin.x, v14 = v24.origin.y, width = v24.size.width, height = v24.size.height, v12, v25.origin.x = v13, v25.origin.y = v14, v25.size.width = width, v25.size.height = height, v22.x = x, v22.y = y, CGRectContainsPoint(v25, v22)))
  {
    hlsPlayButton2 = [(SKUIOfferView *)self hlsPlayButton];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SKUIOfferView;
    hlsPlayButton2 = [(SKUIOfferView *)&v20 hitTest:eventCopy withEvent:x, y];
  }

  v18 = hlsPlayButton2;

  return v18;
}

- (void)itemOfferButtonDidAnimateTransition:(id)transition
{
  transitionCopy = transition;
  if ([(SKUIOfferView *)self isShowingConfirmation])
  {
    isShowingConfirmation = [transitionCopy isShowingConfirmation];
  }

  else
  {
    isShowingConfirmation = 0;
  }

  [(SKUIOfferView *)self setShowingConfirmation:isShowingConfirmation];
  delegate = [(SKUIOfferView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate offerViewDidAnimateTransition:self];
  }
}

- (void)itemOfferButtonWillAnimateTransition:(id)transition
{
  v83 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  delegate = [(SKUIOfferView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [delegate offerViewAnimateTransition:self])
  {
    [transitionCopy frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    offerButtonViews = [(SKUIOfferView *)self offerButtonViews];
    v15 = [offerButtonViews indexOfObjectIdenticalTo:transitionCopy];

    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      metadataPosition = self->_metadataPosition;
      v84.origin.x = v7;
      v84.origin.y = v9;
      v84.size.width = v11;
      v84.size.height = v13;
      MaxX = CGRectGetMaxX(v84);
      v18 = [transitionCopy sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
      v20 = v19;
      v22 = v21;
      ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection(v18, v23);
      if (metadataPosition)
      {
        if (ShouldReverseLayoutDirection)
        {
          v7 = MaxX - v20;
        }

        [transitionCopy setFrame:{v7, v9, v20, v22}];
        offerButtonViews2 = [(SKUIOfferView *)self offerButtonViews];
        v26 = [offerButtonViews2 count];

        if (storeShouldReverseLayoutDirection(v27, v28))
        {
          v29 = v7 + -20.0;
        }

        else
        {
          v86.origin.x = v7;
          v86.origin.y = v9;
          v86.size.width = v20;
          v86.size.height = v22;
          v29 = CGRectGetMaxX(v86);
        }

        v33 = v15 + 1;
        if (v33 < v26)
        {
          do
          {
            offerButtonViews3 = [(SKUIOfferView *)self offerButtonViews];
            v35 = [offerButtonViews3 objectAtIndex:v33];

            if (([v35 isHidden] & 1) == 0)
            {
              frame = [v35 frame];
              v38 = v37;
              v40 = v39;
              v42 = v41;
              if (storeShouldReverseLayoutDirection(frame, v43))
              {
                v44 = v40;
              }

              else
              {
                v44 = -20.0;
              }

              [v35 setFrame:{v29 - v44, v38, v40, v42}];
            }

            ++v33;
          }

          while (v26 != v33);
        }

        if ([(SKUIOfferView *)self alignment]!= 3)
        {
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          metadataViews = [(SKUIOfferView *)self metadataViews];
          v46 = [metadataViews countByEnumeratingWithState:&v78 objects:v82 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v79;
            do
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v79 != v48)
                {
                  objc_enumerationMutation(metadataViews);
                }

                v50 = *(*(&v78 + 1) + 8 * i);
                frame2 = [v50 frame];
                v53 = v52;
                v55 = v54;
                v57 = v56;
                v59 = v58;
                v61 = storeShouldReverseLayoutDirection(frame2, v60);
                v62 = v29;
                if (v61)
                {
                  v87.origin.x = v53;
                  v87.origin.y = v55;
                  v87.size.width = v57;
                  v87.size.height = v59;
                  v62 = v29 - CGRectGetWidth(v87);
                }

                [v50 setFrame:{v62 + 10.0, v55, v57, v59}];
              }

              v47 = [metadataViews countByEnumeratingWithState:&v78 objects:v82 count:16];
            }

            while (v47);
          }
        }
      }

      else
      {
        if (!ShouldReverseLayoutDirection)
        {
          v7 = MaxX - v20;
        }

        v30 = [transitionCopy setFrame:{v7, v9, v20, v22}];
        if (storeShouldReverseLayoutDirection(v30, v31))
        {
          v85.origin.x = v7;
          v85.origin.y = v9;
          v85.size.width = v20;
          v85.size.height = v22;
          v32 = CGRectGetMaxX(v85);
        }

        else
        {
          v32 = v7 + -20.0;
        }

        if (v15 >= 1)
        {
          v63 = v15 + 1;
          do
          {
            offerButtonViews4 = [(SKUIOfferView *)self offerButtonViews];
            v65 = [offerButtonViews4 objectAtIndex:v63 - 2];

            if (([v65 isHidden] & 1) == 0)
            {
              frame3 = [v65 frame];
              v68 = v67;
              v70 = v69;
              v72 = v71;
              if (storeShouldReverseLayoutDirection(frame3, v73))
              {
                v74 = -20.0;
              }

              else
              {
                v74 = v70;
              }

              v75 = v32 - v74;
              v76 = [v65 setFrame:{v75, v68, v70, v72}];
              if (storeShouldReverseLayoutDirection(v76, v77))
              {
                v88.origin.x = v75;
                v88.origin.y = v68;
                v88.size.width = v70;
                v88.size.height = v72;
                v32 = CGRectGetMaxX(v88) + 20.0;
              }

              else
              {
                v32 = v75 + -20.0;
              }
            }

            --v63;
          }

          while (v63 > 1);
        }
      }
    }
  }

  -[SKUIOfferView setShowingConfirmation:](self, "setShowingConfirmation:", [transitionCopy isShowingConfirmation]);
}

- (void)_buttonAction:(id)action
{
  v20[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  buttonElements = [(SKUIOfferView *)self buttonElements];
  v6 = [buttonElements objectForKey:actionCopy];

  hlsPlayButton = [(SKUIOfferView *)self hlsPlayButton];

  if (hlsPlayButton == actionCopy && v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277D69C68]);
    hlsID = [(SKUIOfferView *)self hlsID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __31__SKUIOfferView__buttonAction___block_invoke;
    v16[3] = &unk_278200E48;
    v17 = v6;
    v18 = hlsID;
    v10 = hlsID;
    [v8 isRemovedSystemApplicationWithBundleIdentifier:@"com.apple.tv" completionBlock:v16];

    delegate = v17;
LABEL_12:

    goto LABEL_13;
  }

  if (v6)
  {
    v8 = SKUICollectionViewCellForView(self);
    v10 = SKUICollectionViewForView(v8);
    delegate = [v10 delegate];
    offerViewStateDescription = [(SKUIOfferView *)self offerViewStateDescription];

    if (offerViewStateDescription)
    {
      v19 = @"action";
      offerViewStateDescription2 = [(SKUIOfferView *)self offerViewStateDescription];
      v20[0] = offerViewStateDescription2;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    }

    else
    {
      v14 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [v10 indexPathForCell:v8];
      [delegate collectionView:v10 didConfirmButtonElement:v6 withClickInfo:v14 forItemAtIndexPath:v15];
    }

    else
    {
      [v6 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:v14 completionBlock:0];
    }

    goto LABEL_12;
  }

LABEL_13:
}

void __31__SKUIOfferView__buttonAction___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__SKUIOfferView__buttonAction___block_invoke_2;
  v7[3] = &unk_278200AB8;
  v11 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __31__SKUIOfferView__buttonAction___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1 && !*(a1 + 32))
  {
    v6 = @"adam-identifier";
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 48), "longLongValue")}];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v2 dispatchEvent:@"playbackDisabledEvent" eventAttribute:@"onPlay" canBubble:1 isCancelable:0 extraInfo:v4 completionBlock:0];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"videos://play?adam-id=%lld&allowCloudPlayback=1", objc_msgSend(*(a1 + 48), "longLongValue")];
    v1 = [MEMORY[0x277CBEBC0] URLWithString:?];
    SKUIMetricsOpenSensitiveURL(v1, 0);
  }
}

- (void)_cancelConfirmationAction:(id)action
{
  actionCopy = action;
  [(SKUIOfferView *)self setShowingConfirmation:0];
  [(SKUIOfferView *)self bringSubviewToFront:actionCopy];
  [(SKUIOfferView *)self _sendWillAnimate];
  [actionCopy setShowingConfirmation:0 animated:1];
}

- (void)_showConfirmationAction:(id)action
{
  v10[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  buttonElements = [(SKUIOfferView *)self buttonElements];
  v6 = [buttonElements objectForKey:actionCopy];

  if (v6)
  {
    v9 = @"action";
    offerViewStateDescription = [(SKUIOfferView *)self offerViewStateDescription];
    v10[0] = offerViewStateDescription;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v6 dispatchEvent:@"buyInitiate" eventAttribute:@"onbuyinitiate" canBubble:1 isCancelable:1 extraInfo:v8 completionBlock:0];
  }

  [(SKUIOfferView *)self bringSubviewToFront:actionCopy];
  [(SKUIOfferView *)self _sendWillAnimate];
  [actionCopy setShowingConfirmation:1 animated:1];
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
    v11 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
  }

  tintColor = [contextCopy tintColor];
  v13 = SKUIViewElementPlainColorWithStyle(v10, tintColor);

  if (!v13)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  v14 = [buttonCopy buttonViewType] == 9;
  buttonText = [buttonCopy buttonText];
  v16 = [buttonText attributedStringWithDefaultFont:v11 foregroundColor:v13 textAlignment:v14 style:v10];

  return v16;
}

+ (id)_attributedStringForLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  style = [labelCopy style];
  v8 = SKUIViewElementFontWithStyle(style);
  tintColor = [contextCopy tintColor];

  v10 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  labelViewStyle = [labelCopy labelViewStyle];
  if (labelViewStyle > 5)
  {
    goto LABEL_20;
  }

  if (((1 << labelViewStyle) & 0x13) != 0)
  {
    if (v8)
    {
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
      if (!v10)
      {
LABEL_11:
        blackColor = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
LABEL_19:
        v10 = blackColor;
      }
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  if (((1 << labelViewStyle) & 0x24) != 0)
  {
    if (v8)
    {
      if (v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
      if (v10)
      {
        goto LABEL_20;
      }
    }

    blackColor = [MEMORY[0x277D75348] blackColor];
    goto LABEL_19;
  }

  if (!v8)
  {
    v8 = [MEMORY[0x277D74300] systemFontOfSize:7.0];
  }

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  v13 = 1;
LABEL_21:
  text = [labelCopy text];
  v15 = [text attributedStringWithDefaultFont:v8 foregroundColor:v10 textAlignment:v13 style:style];

  return v15;
}

- (void)_sendWillAnimate
{
  delegate = [(SKUIOfferView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate offerViewWillAnimateTransition:self];
  }
}

- (BOOL)_shouldHideNoticesWithBuyButtonDescriptor:(id)descriptor context:(id)context
{
  descriptorCopy = descriptor;
  itemIdentifier = [descriptorCopy itemIdentifier];
  storeIdentifier = [descriptorCopy storeIdentifier];

  if (!storeIdentifier && itemIdentifier)
  {
    storeIdentifier = [[SKUIStoreIdentifier alloc] initWithLongLong:itemIdentifier];
  }

  v10 = 0;
  if (storeIdentifier)
  {
    v7 = +[SKUIItemStateCenter defaultCenter];
    v8 = [v7 stateForItemWithStoreIdentifier:storeIdentifier];

    v9 = [v8 state] & 0xF;
    if (v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (SKUIOfferViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithFrame:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIOfferView initWithFrame:]";
}

+ (void)prefetchResourcesForViewElement:(uint64_t)a3 reason:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIOfferView prefetchResourcesForViewElement:reason:context:]";
}

+ (void)preferredSizeForViewElement:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIOfferView preferredSizeForViewElement:context:]";
}

+ (void)requestLayoutForViewElement:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIOfferView requestLayoutForViewElement:width:context:]";
}

+ (void)sizeThatFitsWidth:(uint64_t)a3 viewElement:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIOfferView sizeThatFitsWidth:viewElement:context:]";
}

@end
@interface SKUIKeyValueInfoListCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (double)titleColumnWidthWithViewElement:(id)element width:(double)width context:(id)context;
+ (id)_attributedStringForButton:(id)button context:(id)context;
+ (id)_attributedStringForLabel:(id)label context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (SKUIKeyValueInfoListCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_buttonAction:(id)action;
- (void)_imageTapAction:(id)action;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SKUIKeyValueInfoListCollectionViewCell

- (SKUIKeyValueInfoListCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v8 initWithFrame:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIKeyValueInfoListCollectionViewCell;
  height = [(SKUIViewReuseCollectionViewCell *)&v20 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    valueViews = height->_valueViews;
    height->_valueViews = v17;
  }

  return height;
}

+ (double)titleColumnWidthWithViewElement:(id)element width:(double)width context:(id)context
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
        [(SKUIKeyValueInfoListCollectionViewCell *)v10 titleColumnWidthWithViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  titleElement = [elementCopy titleElement];
  if (titleElement)
  {
    v19 = [self _attributedStringForLabel:titleElement context:contextCopy];
    v20 = width * 0.4;
    labelLayoutCache = [contextCopy labelLayoutCache];
    [labelLayoutCache requestLayoutForLabel:titleElement attributedString:v19 width:vcvtms_s32_f32(v20)];
    [labelLayoutCache sizeForLabel:titleElement width:floorf(v20)];
    *&v22 = v22;
    v23 = ceilf(*&v22);
  }

  else
  {
    v23 = 0.0;
  }

  return v23;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  valueElements = [elementCopy valueElements];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [valueElements countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(valueElements);
        }

        v20 |= [contextCopy prefetchResourcesForViewElement:*(*(&v24 + 1) + 8 * i) reason:reason];
      }

      v19 = [valueElements countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20 & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v4 preferredSizeForViewElement:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v10 requestLayoutForViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v19 = [contextCopy aggregateValueForKey:@"SKUIKVILTCWK"];
  [v19 floatValue];
  v21 = v20;

  v33 = elementCopy;
  valueElements = [elementCopy valueElements];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = [valueElements countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = width - v21 + -14.0;
    v26 = v25;
    v27 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(valueElements);
        }

        v29 = *(*(&v34 + 1) + 8 * i);
        elementType = [v29 elementType];
        if (elementType <= 134)
        {
          if (elementType == 8)
          {
            [labelLayoutCache requestLayoutForBadge:v29 width:width];
            continue;
          }

          if (elementType == 12)
          {
            goto LABEL_22;
          }

          if (elementType != 62)
          {
            continue;
          }

          v32 = SKUIHorizontalListView;
        }

        else if (elementType > 140)
        {
          if (elementType == 141)
          {
LABEL_22:
            v31 = [self _attributedStringForButton:v29 context:contextCopy];
            [labelLayoutCache requestLayoutForButton:v29 attributedString:v31 width:v26];
LABEL_23:

            continue;
          }

          if (elementType != 144)
          {
            continue;
          }

          v32 = SKUITomatoRatingView;
        }

        else
        {
          if (elementType != 135)
          {
            if (elementType != 138)
            {
              continue;
            }

            v31 = [self _attributedStringForLabel:v29 context:contextCopy];
            [labelLayoutCache requestLayoutForLabel:v29 attributedString:v31 width:v26];
            goto LABEL_23;
          }

          v32 = SKUIStarRatingViewElementView;
        }

        [(__objc2_class *)v32 requestLayoutForViewElement:v29 width:contextCopy context:v25];
      }

      v24 = [valueElements countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v24);
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  titleElement = [elementCopy titleElement];
  v18 = 0.0;
  v19 = 0.0;
  if (titleElement)
  {
    v20 = width * 0.4;
    [contextCopy sizeForViewElement:titleElement width:floorf(v20)];
    v19 = v21;
  }

  v22 = [contextCopy aggregateValueForKey:@"SKUIKVILTCWK"];
  [v22 floatValue];
  v24 = v23;

  valueElements = [elementCopy valueElements];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = [valueElements countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = width - v24 + -14.0;
    v29 = *v35;
    do
    {
      v30 = 0;
      do
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(valueElements);
        }

        [contextCopy sizeForViewElement:*(*(&v34 + 1) + 8 * v30) width:v28];
        v18 = v18 + v31;
        ++v30;
      }

      while (v27 != v30);
      v27 = [valueElements countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v27);
  }

  if (v19 < v18)
  {
    v19 = v18;
  }

  widthCopy = width;
  v33 = v19;
  result.height = v33;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v10 = [contextCopy aggregateValueForKey:@"SKUIKVILTCWK"];
  [v10 floatValue];
  self->_titleColumnWidth = v11;

  titleView = self->_titleView;
  self->_titleView = 0;

  [(NSMapTable *)self->_valueViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SKUIKeyValueInfoListCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v15[3] = &unk_2781F95C8;
  v16 = elementCopy;
  selfCopy = self;
  widthCopy = width;
  v18 = contextCopy;
  v13 = contextCopy;
  v14 = elementCopy;
  [(SKUIViewReuseCollectionViewCell *)self modifyUsingBlock:v15];
}

void __78__SKUIKeyValueInfoListCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) titleElement];
  v5 = *(a1 + 56) * 0.4;
  v32 = v4;
  v6 = [v3 addLabelViewWithElement:floorf(v5) width:? context:?];
  v7 = *(a1 + 40);
  v8 = *(v7 + 832);
  *(v7 + 832) = v6;

  v9 = *(a1 + 56);
  v10 = *(*(a1 + 40) + 824);
  v11 = [*(a1 + 32) valueElements];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = v9 - v10 + -14.0;
    v15 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        v18 = [v17 elementType];
        v19 = 0;
        if (v18 > 134)
        {
          if (v18 <= 140)
          {
            if (v18 == 135)
            {
              v20 = [v3 addStarRatingViewWithViewElement:v17 width:*(a1 + 48) context:v14];
            }

            else
            {
              if (v18 != 138)
              {
                goto LABEL_42;
              }

              v20 = [v3 addLabelViewWithElement:v17 width:*(a1 + 48) context:v14];
            }

LABEL_34:
            v19 = v20;
            v23 = 0;
            if (!v20)
            {
              goto LABEL_36;
            }

LABEL_35:
            [*(*(a1 + 40) + 840) setObject:v17 forKey:v19];
            goto LABEL_36;
          }

          if (v18 != 141)
          {
            if (v18 == 144)
            {
              v20 = [v3 addTomatoRatingViewWithViewElement:v17 width:*(a1 + 48) context:v14];
              goto LABEL_34;
            }

            if (v18 != 152)
            {
              goto LABEL_42;
            }

            v21 = [v3 addImageViewWithVideoElement:v17 context:*(a1 + 48)];
LABEL_28:
            v24 = v21;
LABEL_31:
            v23 = v24;
            v19 = v24;
            if (v24)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }
        }

        else if (v18 <= 48)
        {
          if (v18 == 8)
          {
            v21 = [v3 addBadgeViewWithElement:v17 width:*(a1 + 48) context:v14];
            goto LABEL_28;
          }

          if (v18 != 12)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v18 == 49)
          {
            v25 = [v3 addImageViewWithElement:v17 context:*(a1 + 48)];
            v26 = [v25 tapRecognizer];
            [v26 addTarget:*(a1 + 40) action:sel__imageTapAction_];

            v24 = v25;
            goto LABEL_31;
          }

          if (v18 != 50)
          {
            if (v18 != 62)
            {
              goto LABEL_42;
            }

            v20 = [v3 addHorizontalListWithElement:v17 width:*(a1 + 48) context:v14];
            goto LABEL_34;
          }
        }

        v22 = [v3 addButtonWithElement:v17 width:*(a1 + 48) context:v14];
        [v22 addTarget:*(a1 + 40) action:sel__buttonAction_ forControlEvents:64];
        v19 = v22;
        if ([v17 elementType] == 50)
        {
          v23 = v19;
        }

        else
        {
          v23 = 0;
        }

        if (v19)
        {
          goto LABEL_35;
        }

LABEL_36:
        if (v23)
        {
          v27 = [*(a1 + 48) imageResourceCacheKeyForViewElement:v17];
          if (v27)
          {
            v28 = *(*(a1 + 40) + 848);
            if (!v28)
            {
              v29 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
              v30 = *(a1 + 40);
              v31 = *(v30 + 848);
              *(v30 + 848) = v29;

              v28 = *(*(a1 + 40) + 848);
            }

            [v28 setObject:v27 forKey:v23];
          }
        }

LABEL_42:
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  contextCopy = context;
  requestIdentifier = [request requestIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = imageCopy;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15, v22];
        v17 = [contextCopy requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == requestIdentifier)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            imageView = [v15 imageView];
            imageCopy = v22;
            [imageView setImage:v22];
          }

          else
          {
            imageCopy = v22;
            [v15 setImage:v22];
          }

          v19 = 1;
          goto LABEL_16;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v19 = 0;
    imageCopy = v22;
  }

  else
  {
    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (void)layoutSubviews
{
  selfCopy = self;
  v72 = *MEMORY[0x277D85DE8];
  v70.receiver = self;
  v70.super_class = SKUIKeyValueInfoListCollectionViewCell;
  [(SKUICollectionViewCell *)&v70 layoutSubviews];
  contentView = [(SKUIKeyValueInfoListCollectionViewCell *)selfCopy contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  contentInset = [(SKUIViewReuseCollectionViewCell *)selfCopy contentInset];
  MaxY = v13;
  v16 = v15;
  v62 = v17;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection(contentInset, v18);
  y = *(MEMORY[0x277CBF3A0] + 8);
  titleView = selfCopy->_titleView;
  rect = y;
  if (titleView)
  {
    [(SKUIAttributedStringView *)titleView firstBaselineOffset];
    v58 = v22;
    [(SKUIAttributedStringView *)selfCopy->_titleView sizeThatFits:selfCopy->_titleColumnWidth, 1.79769313e308];
    v24 = v23;
    v26 = v25;
    if (ShouldReverseLayoutDirection)
    {
      v73.origin.x = v5;
      v73.origin.y = v7;
      v73.size.width = v9;
      v73.size.height = v11;
      v27 = CGRectGetMaxX(v73) - v16 - selfCopy->_titleColumnWidth;
    }

    else
    {
      v27 = v16 + selfCopy->_titleColumnWidth - v23;
    }

    v30 = MaxY;
    v31 = v24;
    v32 = v26;
    v74 = CGRectIntegral(*&v27);
    y = v74.origin.y;
    height = v74.size.height;
    [(SKUIAttributedStringView *)selfCopy->_titleView setFrame:v74.origin.x];
    if (ShouldReverseLayoutDirection)
    {
      goto LABEL_8;
    }

LABEL_5:
    v28 = v16 + selfCopy->_titleColumnWidth;
    v29 = 14.0;
    goto LABEL_9;
  }

  height = *(MEMORY[0x277CBF3A0] + 24);
  v58 = 0.0;
  if ((ShouldReverseLayoutDirection & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_8:
  v75.origin.x = v5;
  v75.origin.y = v7;
  v75.size.width = v9;
  v75.size.height = v11;
  v28 = CGRectGetMaxX(v75) - v16 - selfCopy->_titleColumnWidth;
  v29 = -14.0;
LABEL_9:
  v33 = v28 + v29;
  [(SKUIViewReuseCollectionViewCell *)selfCopy allExistingViews];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v69 = 0u;
  v34 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = 0;
    v37 = v9 - v62 - v33;
    v38 = floorf(v37);
    v39 = *v67;
    v59 = y + v58;
    v61 = *v67;
    do
    {
      v40 = 0;
      v63 = v35;
      do
      {
        if (*v67 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v66 + 1) + 8 * v40);
        if (v41 != selfCopy->_titleView)
        {
          [*(*(&v66 + 1) + 8 * v40) sizeThatFits:{v38, 1.79769313e308}];
          v43 = v42;
          v45 = v44;
          v46 = v33;
          if (ShouldReverseLayoutDirection)
          {
            v76.origin.x = v33;
            v76.origin.y = rect;
            v76.size.width = v43;
            v76.size.height = v45;
            v46 = v33 - CGRectGetWidth(v76);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v47 = ShouldReverseLayoutDirection;
            v48 = v41;
            [(SKUIAttributedStringView *)v48 firstBaselineOffset];
            v50 = v49;
            v51 = selfCopy;
            usesTallCharacterSet = [(SKUIAttributedStringView *)selfCopy->_titleView usesTallCharacterSet];
            usesTallCharacterSet2 = [(SKUIAttributedStringView *)v48 usesTallCharacterSet];

            if (v36)
            {
              ShouldReverseLayoutDirection = v47;
              selfCopy = v51;
              v39 = v61;
              v35 = v63;
LABEL_27:
              [(SKUIAttributedStringView *)v41 setFrame:v46, MaxY, v43, v45];
              v77.origin.x = v46;
              v77.origin.y = MaxY;
              v77.size.width = v43;
              v77.size.height = v45;
              MaxY = CGRectGetMaxY(v77);
              ++v36;
              goto LABEL_28;
            }

            v54 = usesTallCharacterSet == usesTallCharacterSet2;
            ShouldReverseLayoutDirection = v47;
            selfCopy = v51;
            v39 = v61;
            v35 = v63;
            if (!v54)
            {
              v55 = MaxY + v58 - v50;
              v56 = floorf(v55);
              goto LABEL_26;
            }
          }

          else if (v36)
          {
            goto LABEL_27;
          }

          MaxY = rect;
          if (v45 >= height)
          {
            goto LABEL_27;
          }

          v57 = v59 - v45;
          v56 = ceilf(v57);
LABEL_26:
          MaxY = v56;
          goto LABEL_27;
        }

LABEL_28:
        ++v40;
      }

      while (v35 != v40);
      v35 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v35);
  }
}

- (void)_buttonAction:(id)action
{
  v4 = [(NSMapTable *)self->_valueViews objectForKey:action];
  if (v4)
  {
    v8 = v4;
    v5 = SKUICollectionViewForView(self);
    delegate = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 indexPathForCell:self];
      [delegate collectionView:v5 didConfirmButtonElement:v8 withClickInfo:0 forItemAtIndexPath:v7];
    }

    else
    {
      [v8 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }

    v4 = v8;
  }
}

- (void)_imageTapAction:(id)action
{
  valueViews = self->_valueViews;
  view = [action view];
  v5 = [(NSMapTable *)valueViews objectForKey:view];

  [v5 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

+ (id)_attributedStringForButton:(id)button context:(id)context
{
  buttonCopy = button;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v7 _attributedStringForButton:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v16 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [buttonCopy style];
  }

  v18 = style;

  v20 = SKUIViewElementFontWithStyle(v18);
  if (!v20)
  {
    v20 = SKUIFontPreferredFontForTextStyle(5, v19);
  }

  tintColor = [contextCopy tintColor];
  v22 = SKUIViewElementPlainColorWithStyle(v18, tintColor);

  if (!v22)
  {
    v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  buttonText = [buttonCopy buttonText];
  v24 = [buttonText attributedStringWithDefaultFont:v20 foregroundColor:v22 style:v18];

  return v24;
}

+ (id)_attributedStringForLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIKeyValueInfoListCollectionViewCell *)v7 _attributedStringForLabel:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  style = [labelCopy style];
  v17 = SKUIViewElementFontWithStyle(style);
  if (!v17)
  {
    v17 = SKUIFontPreferredFontForTextStyle(5, v16);
  }

  tintColor = [contextCopy tintColor];
  v19 = SKUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v19)
  {
    v20 = [labelCopy labelViewStyle] == 5;
    v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:dbl_215F3FDA0[v20]];
  }

  text = [labelCopy text];
  v22 = [text attributedStringWithDefaultFont:v17 foregroundColor:v19 style:style];

  return v22;
}

- (void)initWithFrame:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIKeyValueInfoListCollectionViewCell initWithFrame:]";
}

+ (void)titleColumnWidthWithViewElement:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIKeyValueInfoListCollectionViewCell titleColumnWidthWithViewElement:width:context:]";
}

+ (void)prefetchResourcesForViewElement:(uint64_t)a3 reason:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIKeyValueInfoListCollectionViewCell prefetchResourcesForViewElement:reason:context:]";
}

+ (void)preferredSizeForViewElement:(uint64_t)a3 context:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIKeyValueInfoListCollectionViewCell preferredSizeForViewElement:context:]";
}

+ (void)requestLayoutForViewElement:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIKeyValueInfoListCollectionViewCell requestLayoutForViewElement:width:context:]";
}

+ (void)sizeThatFitsWidth:(uint64_t)a3 viewElement:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIKeyValueInfoListCollectionViewCell sizeThatFitsWidth:viewElement:context:]";
}

+ (void)_attributedStringForButton:(uint64_t)a3 context:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIKeyValueInfoListCollectionViewCell _attributedStringForButton:context:]";
}

+ (void)_attributedStringForLabel:(uint64_t)a3 context:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIKeyValueInfoListCollectionViewCell _attributedStringForLabel:context:]";
}

@end
@interface ICDocCamThumbnailCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGRect)compactFrameForThumbnailAtIndexPath:(id)path withSize:(CGSize)size;
- (CGRect)frameForThumbnailAtIndexPath:(id)path;
- (CGSize)collectionViewContentSize;
- (CGSize)frameSizeForImageSize:(CGSize)size;
- (CGSize)itemSize;
- (ICDocCamThumbnailCollectionViewLayout)init;
- (ICDocCamThumbnailCollectionViewLayout)initWithCoder:(id)coder;
- (ICDocCamThumbnailViewLayoutDelegate)delegate;
- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)kind atIndexPath:(id)path;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingDecorationElementOfKind:(id)kind atIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareLayout;
- (void)prepareLayout:(BOOL)layout;
- (void)setup;
@end

@implementation ICDocCamThumbnailCollectionViewLayout

- (ICDocCamThumbnailCollectionViewLayout)init
{
  v5.receiver = self;
  v5.super_class = ICDocCamThumbnailCollectionViewLayout;
  v2 = [(ICDocCamThumbnailCollectionViewLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICDocCamThumbnailCollectionViewLayout *)v2 setup];
  }

  return v3;
}

- (ICDocCamThumbnailCollectionViewLayout)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICDocCamThumbnailCollectionViewLayout;
  v3 = [(ICDocCamThumbnailCollectionViewLayout *)&v6 init];
  v4 = v3;
  if (v3)
  {
    [(ICDocCamThumbnailCollectionViewLayout *)v3 setup];
  }

  return v4;
}

- (void)setup
{
  +[_TtC14DocumentCamera22DCLiquidGlassConstants thumbnailHeight];
  v6.size.height = v3;
  v6.size.width = 46.3636364;
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v7 = CGRectIntegral(v6);
  [(ICDocCamThumbnailCollectionViewLayout *)self setItemSize:v7.size.width, v7.size.height];
  [(ICDocCamThumbnailCollectionViewLayout *)self registerClass:objc_opt_class() forDecorationViewOfKind:@"Decoration.Shadow"];
  v4 = objc_opt_class();

  [(ICDocCamThumbnailCollectionViewLayout *)self registerClass:v4 forDecorationViewOfKind:@"Decoration.Badge"];
}

- (void)prepareLayout
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v4 = [currentDevice userInterfaceIdiom] == 0;

  [(ICDocCamThumbnailCollectionViewLayout *)self setCompactLayout:v4];
  compactLayout = [(ICDocCamThumbnailCollectionViewLayout *)self compactLayout];

  [(ICDocCamThumbnailCollectionViewLayout *)self prepareLayout:compactLayout];
}

- (void)prepareLayout:(BOOL)layout
{
  layoutCopy = layout;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  collectionView = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  v52 = numberOfSections;
  if (numberOfSections >= 1)
  {
    v7 = 0;
    v8 = 0x277CCA000uLL;
    v53 = dictionary2;
    do
    {
      collectionView2 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
      v10 = [collectionView2 numberOfItemsInSection:v7];

      v54 = v10 - 1;
      if (v10 >= 1)
      {
        v11 = 0;
        do
        {
          v12 = [*(v8 + 2672) indexPathForItem:v11 inSection:v7];
          v13 = [(UICollectionViewLayoutAttributes *)ICDocCamThumbnailViewLayoutAttributes layoutAttributesForCellWithIndexPath:v12];
          objc_opt_class();
          objc_opt_isKindOfClass();
          if (layoutCopy)
          {
            v14 = [*(v8 + 2672) indexPathForItem:v54 inSection:v7];
            delegate = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
            collectionView3 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
            [delegate collectionView:collectionView3 imageSizeAtIndex:{objc_msgSend(v14, "item")}];
            v18 = v17;
            v20 = v19;

            dictionary2 = v53;
            [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v18, v20];
            v22 = v21;
            v24 = v23;
            [(ICDocCamThumbnailCollectionViewLayout *)self compactFrameForThumbnailAtIndexPath:v12 withSize:?];
            [v13 setFrame:?];
            [v13 setImageWidth:v22];
            [v13 setImageHeight:v24];
            v25 = v10 != 2 && v10 != 1;
            [v13 setRenderShadow:v10 == 1];
            [v13 setHidden:v25];
          }

          else
          {
            delegate2 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
            collectionView4 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
            [delegate2 collectionView:collectionView4 imageSizeAtIndex:{objc_msgSend(v12, "item")}];
            v29 = v28;
            v31 = v30;

            [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v29, v31];
            v33 = v32;
            v35 = v34;
            [(ICDocCamThumbnailCollectionViewLayout *)self frameForThumbnailAtIndexPath:v12];
            [v13 setFrame:?];
            [v13 setImageWidth:v33];
            [v13 setImageHeight:v35];
            [v13 setRenderShadow:1];
            [v13 setHidden:0];
          }

          [v13 setZIndex:{objc_msgSend(v12, "item")}];
          [dictionary2 setObject:v13 forKeyedSubscript:v12];

          ++v11;
          --v10;
          v8 = 0x277CCA000;
        }

        while (v10);
      }

      ++v7;
    }

    while (v7 != v52);
    if (!layoutCopy)
    {
      v36 = 0;
      while (2)
      {
        collectionView5 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
        v38 = [collectionView5 numberOfItemsInSection:v36];

        v39 = v38 - 2;
        if (v38 >= 2)
        {
          v40 = 0;
          do
          {
            v41 = [MEMORY[0x277CCAA70] indexPathForItem:v40 inSection:v36];
            v42 = [MEMORY[0x277CCAA70] indexPathForItem:++v40 inSection:v36];
            v43 = [dictionary2 objectForKeyedSubscript:v41];
            v44 = dictionary2;
            v45 = v43;
            v46 = [v44 objectForKeyedSubscript:v42];
            [v45 frame];
            v48 = v47;
            [v46 frame];
            v50 = v48 - v49;
            if (v50 < 0.0)
            {
              v50 = -v50;
            }

            if (v50 < 8.0)
            {
              [(ICDocCamThumbnailCollectionViewLayout *)self setCompactLayout:1];
              [(ICDocCamThumbnailCollectionViewLayout *)self prepareLayout:1];

              dictionary2 = v53;
              goto LABEL_25;
            }

            dictionary2 = v53;
          }

          while (v40 - 1 != v39);
          if (++v36 != v52)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:@"ICDocCamThumbnailCellKind"];
  [(ICDocCamThumbnailCollectionViewLayout *)self setLayoutInfo:dictionary];
LABEL_25:
}

- (CGSize)frameSizeForImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(ICDocCamThumbnailCollectionViewLayout *)self itemSize];
  v8 = v7;
  if (width > height)
  {
    [(ICDocCamThumbnailCollectionViewLayout *)self itemSize];
    v10 = v9;
    v6 = v8;
    v8 = v10;
  }

  v11 = v8;
  result.height = v11;
  result.width = v6;
  return result;
}

- (CGRect)compactFrameForThumbnailAtIndexPath:(id)path withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = 0.0;
  if ([MEMORY[0x277D74248] dc_isRTL])
  {
    collectionView = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    [collectionView frame];
    v10 = v9;

    v7 = v10 - width;
  }

  [(ICDocCamThumbnailCollectionViewLayout *)self itemSize];
  v12 = v11 - height + 0.0;
  v13 = v7;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (CGRect)frameForThumbnailAtIndexPath:(id)path
{
  v166 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  collectionView = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  v6 = [collectionView numberOfItemsInSection:0];

  if (v6)
  {
    delegate = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
    collectionView2 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    [delegate collectionView:collectionView2 imageSizeAtIndex:{objc_msgSend(pathCopy, "item")}];
    v10 = v9;
    v12 = v11;

    [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v10, v12];
    v14 = v13;
    v16 = v15;
    delegate2 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
    rootView = [delegate2 rootView];

    [rootView frame];
    v20 = v19 * 0.5;
    v22 = v21 * 0.5;
    collectionView3 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    [rootView convertPoint:collectionView3 toView:{v20, v22}];
    v25 = v24;

    if ([MEMORY[0x277D74248] dc_isRTL])
    {
      collectionView4 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
      [collectionView4 frame];
      v28 = v27;

      v29 = DCDebugInterfaceEnabled();
      if ((v29 & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "userInterfaceIdiom"), v30, v31 == 1))
      {
        MEMORY[0x28223BE20](v29);
        v32 = (&v163 - 2 * v6);
        v33 = v6 - 1;
        if (v6 < 1)
        {
          v45 = 0.0;
        }

        else
        {
          v164 = rootView;
          v165 = &v163;
          v34 = 0;
          v35 = 0;
          v36 = v32 + 1;
          do
          {
            delegate3 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
            collectionView5 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
            [delegate3 collectionView:collectionView5 imageSizeAtIndex:v35];
            v40 = v39;
            v42 = v41;

            [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v40, v42];
            *(v36 - 1) = v43;
            *v36 = v44;
            v34 = (v43 + v34);
            ++v35;
            v36 += 2;
          }

          while (v6 != v35);
          v45 = v34;
          rootView = v164;
        }

        collectionView6 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
        [collectionView6 frame];
        v67 = v66;

        v68 = fmin((v67 - v45) / v33, 10.0);
        v47 = v25 + ((v45 + v68 * v33) / 2) - *v32;
        item = [pathCopy item];
        if (item >= v33)
        {
          v70 = v33;
        }

        else
        {
          v70 = item;
        }

        if (v70 >= 1)
        {
          v71 = 0;
          v72 = v32 + 2;
          do
          {
            v73 = *v72;
            v72 += 2;
            v47 = v47 - (v68 + v73);
            item2 = [pathCopy item];
            if (item2 >= v33)
            {
              v75 = v33;
            }

            else
            {
              v75 = item2;
            }

            ++v71;
          }

          while (v71 < v75);
        }
      }

      else
      {
        v165 = &v163;
        MEMORY[0x28223BE20](v29);
        v91 = (&v163 - 2 * v6);
        v92 = v6 - 1;
        if (v6 < 1)
        {
          v104 = 0.0;
        }

        else
        {
          v164 = rootView;
          v93 = 0;
          v94 = 0;
          v95 = v91 + 1;
          do
          {
            delegate4 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
            collectionView7 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
            [delegate4 collectionView:collectionView7 imageSizeAtIndex:v94];
            v99 = v98;
            v101 = v100;

            [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v99, v101];
            *(v95 - 1) = v102;
            *v95 = v103;
            v93 = (v102 + v93);
            ++v94;
            v95 += 2;
          }

          while (v6 != v94);
          v104 = v93;
          rootView = v164;
        }

        v119 = (v104 + v92 * 10.0);
        collectionView8 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
        [collectionView8 frame];
        v122 = v121;

        v123 = (v119 / 2);
        v124 = v25 + v123;
        if (v25 >= v123 && v124 <= v122)
        {
          v47 = v124 - *v91;
          item3 = [pathCopy item];
          if (item3 >= v92)
          {
            v136 = v92;
          }

          else
          {
            v136 = item3;
          }

          if (v136 >= 1)
          {
            v137 = 0;
            v138 = v91 + 2;
            do
            {
              v139 = *v138;
              v138 += 2;
              v47 = v47 - (v139 + 10.0);
              item4 = [pathCopy item];
              if (item4 >= v92)
              {
                v141 = v92;
              }

              else
              {
                v141 = item4;
              }

              ++v137;
            }

            while (v137 < v141);
          }
        }

        else
        {
          v47 = v28 - *v91;
          item5 = [pathCopy item];
          if (item5 >= v92)
          {
            v127 = v92;
          }

          else
          {
            v127 = item5;
          }

          if (v127 >= 1)
          {
            v128 = 0;
            v129 = fmin((v122 - (v119 - v92 * 10.0)) / v92, 10.0);
            v130 = v91 + 2;
            do
            {
              v131 = *v130;
              v130 += 2;
              v132 = v47 - (v129 + v131);
              if (v132 <= v47)
              {
                v47 = v132;
              }

              else
              {
                v47 = v47;
              }

              item6 = [pathCopy item];
              if (item6 >= v92)
              {
                v134 = v92;
              }

              else
              {
                v134 = item6;
              }

              ++v128;
            }

            while (v128 < v134);
          }
        }
      }
    }

    else
    {
      v48 = DCDebugInterfaceEnabled();
      if ((v48 & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "userInterfaceIdiom"), v49, v50 == 1))
      {
        MEMORY[0x28223BE20](v48);
        v51 = (&v163 - 2 * v6);
        v52 = v6 - 1;
        if (v6 < 1)
        {
          v64 = 0.0;
        }

        else
        {
          v164 = rootView;
          v165 = &v163;
          v53 = 0;
          v54 = 0;
          v55 = v51 + 1;
          do
          {
            delegate5 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
            collectionView9 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
            [delegate5 collectionView:collectionView9 imageSizeAtIndex:v54];
            v59 = v58;
            v61 = v60;

            [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v59, v61];
            *(v55 - 1) = v62;
            *v55 = v63;
            v53 = (v62 + v53);
            ++v54;
            v55 += 2;
          }

          while (v6 != v54);
          v64 = v53;
          rootView = v164;
        }

        collectionView10 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
        [collectionView10 frame];
        v78 = v77;

        v79 = fmin((v78 - v64) / v52, 10.0);
        v47 = v25 - ((v64 + v79 * v52) / 2);
        item7 = [pathCopy item];
        if (item7 >= v6)
        {
          v81 = v6;
        }

        else
        {
          v81 = item7;
        }

        if (v81 >= 1)
        {
          for (i = 0; i < v85; ++i)
          {
            v83 = *v51;
            v51 += 2;
            v47 = v47 + v79 + v83;
            item8 = [pathCopy item];
            if (item8 >= v6)
            {
              v85 = v6;
            }

            else
            {
              v85 = item8;
            }
          }
        }
      }

      else
      {
        MEMORY[0x28223BE20](v48);
        v105 = (&v163 - 2 * v6);
        v106 = v6 - 1;
        if (v6 < 1)
        {
          v118 = 0.0;
        }

        else
        {
          v164 = rootView;
          v165 = &v163;
          v107 = 0;
          v108 = 0;
          v109 = v105 + 1;
          do
          {
            delegate6 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
            collectionView11 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
            [delegate6 collectionView:collectionView11 imageSizeAtIndex:v107];
            v113 = v112;
            v115 = v114;

            [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v113, v115];
            *(v109 - 1) = v116;
            *v109 = v117;
            v108 = (v116 + v108);
            ++v107;
            v109 += 2;
          }

          while (v6 != v107);
          v118 = v108;
          rootView = v164;
        }

        v142 = (v118 + v106 * 10.0);
        v143 = (v142 / 2);
        v47 = v25 - v143;
        collectionView12 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
        [collectionView12 frame];
        v146 = v145;

        v147 = v25 + v143;
        if (v25 - v143 >= 0.0 && v147 <= v146)
        {
          item9 = [pathCopy item];
          if (item9 >= v6)
          {
            v158 = v6;
          }

          else
          {
            v158 = item9;
          }

          if (v158 >= 1)
          {
            for (j = 0; j < v162; ++j)
            {
              v160 = *v105;
              v105 += 2;
              v47 = v47 + v160 + 10.0;
              item10 = [pathCopy item];
              if (item10 >= v6)
              {
                v162 = v6;
              }

              else
              {
                v162 = item10;
              }
            }
          }
        }

        else
        {
          item11 = [pathCopy item];
          if (item11 >= v6)
          {
            v150 = v6;
          }

          else
          {
            v150 = item11;
          }

          if (v150 < 1)
          {
            v47 = 0.0;
          }

          else
          {
            v151 = 0;
            v152 = fmin((v146 - (v142 - v106 * 10.0)) / v106, 10.0);
            v47 = 0.0;
            do
            {
              v153 = *v105;
              v105 += 2;
              v154 = v47 + v152 + v153;
              if (v154 >= v47)
              {
                v47 = v154;
              }

              else
              {
                v47 = v47;
              }

              item12 = [pathCopy item];
              if (item12 >= v6)
              {
                v156 = v6;
              }

              else
              {
                v156 = item12;
              }

              ++v151;
            }

            while (v151 < v156);
          }
        }
      }
    }

    [(ICDocCamThumbnailCollectionViewLayout *)self itemSize];
    v46 = v86 - v16 + 0.0;
  }

  else
  {
    v47 = *MEMORY[0x277CBF3A0];
    v46 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v87 = v47;
  v88 = v46;
  v89 = v14;
  v90 = v16;
  result.size.height = v90;
  result.size.width = v89;
  result.origin.y = v88;
  result.origin.x = v87;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v8 = MEMORY[0x277CBEB18];
  layoutInfo = [(ICDocCamThumbnailCollectionViewLayout *)self layoutInfo];
  v26 = [v8 arrayWithCapacity:{objc_msgSend(layoutInfo, "count")}];

  layoutInfo2 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutInfo];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__ICDocCamThumbnailCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v20[3] = &unk_278F94128;
  *&v20[5] = x;
  *&v20[6] = y;
  *&v20[7] = width;
  *&v20[8] = height;
  v20[4] = &v21;
  [layoutInfo2 enumerateKeysAndObjectsUsingBlock:v20];

  collectionView = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  v12 = [collectionView numberOfItemsInSection:0];

  compactLayout = [(ICDocCamThumbnailCollectionViewLayout *)self compactLayout];
  if (v12 > 1 && compactLayout)
  {
    v15 = [MEMORY[0x277CCAA70] indexPathForItem:v12 - 1 inSection:0];
    v16 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForDecorationViewOfKind:@"Decoration.Shadow" atIndexPath:v15];
    [v22[5] dc_addNonNilObject:v16];
    v17 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForDecorationViewOfKind:@"Decoration.Badge" atIndexPath:v15];
    [v22[5] dc_addNonNilObject:v17];
  }

  v18 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v18;
}

uint64_t __75__ICDocCamThumbnailCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__ICDocCamThumbnailCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2;
  v5[3] = &unk_278F94100;
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v5[4] = *(a1 + 32);
  return [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __75__ICDocCamThumbnailCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  [v8 frame];
  v10.origin.x = v4;
  v10.origin.y = v5;
  v10.size.width = v6;
  v10.size.height = v7;
  if (CGRectIntersectsRect(*(a1 + 40), v10))
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  layoutInfo = [(ICDocCamThumbnailCollectionViewLayout *)self layoutInfo];
  v6 = [layoutInfo objectForKeyedSubscript:@"ICDocCamThumbnailCellKind"];
  v7 = [v6 objectForKeyedSubscript:pathCopy];

  return v7;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  collectionView = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  v9 = [collectionView numberOfItemsInSection:0];

  v10 = 0;
  if ([(ICDocCamThumbnailCollectionViewLayout *)self compactLayout]&& v9 >= 2)
  {
    v10 = [MEMORY[0x277D75308] layoutAttributesForDecorationViewOfKind:kindCopy withIndexPath:pathCopy];
    layoutInfo = [(ICDocCamThumbnailCollectionViewLayout *)self layoutInfo];
    v12 = [layoutInfo objectForKeyedSubscript:@"ICDocCamThumbnailCellKind"];
    v13 = [v12 objectForKeyedSubscript:pathCopy];

    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    dc_isRTL = [MEMORY[0x277D74248] dc_isRTL];
    if ([kindCopy isEqualToString:@"Decoration.Shadow"])
    {
      v23 = -2.0;
      if (dc_isRTL)
      {
        v23 = 2.0;
      }

      [v10 setFrame:{v15 + v23, v17 + 2.0, v19, v21}];
      v24 = -1;
    }

    else
    {
      if (!+[DCSettings _isSolariumEnabled](DCSettings, "_isSolariumEnabled") || ![kindCopy isEqualToString:@"Decoration.Badge"])
      {
        goto LABEL_12;
      }

      v25 = v15;
      v26 = v17;
      v27 = v19;
      v28 = v21;
      if (dc_isRTL)
      {
        MinX = CGRectGetMinX(*&v25);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v25);
      }

      v31 = MinX;
      [v13 frame];
      [v10 setCenter:{v31, CGRectGetMinY(v33)}];
      +[ICDocCamThumbnailBadgeDecorationView sizeThatFitsCount:](ICDocCamThumbnailBadgeDecorationView, "sizeThatFitsCount:", [pathCopy item] + 1);
      [v10 setSize:?];
      v24 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [v10 setZIndex:v24];
LABEL_12:
  }

  return v10;
}

- (CGSize)collectionViewContentSize
{
  collectionView = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  collectionView2 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  [collectionView2 bounds];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  if (![(ICDocCamThumbnailCollectionViewLayout *)self transitioning])
  {
    return 1;
  }

  collectionView = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v17 = CGRectGetWidth(v19);
  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  return v17 != CGRectGetWidth(v20);
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  v22 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  v20.receiver = self;
  v20.super_class = ICDocCamThumbnailCollectionViewLayout;
  [(ICDocCamThumbnailCollectionViewLayout *)&v20 prepareForCollectionViewUpdates:updatesCopy];
  array = [MEMORY[0x277CBEB18] array];
  [(ICDocCamThumbnailCollectionViewLayout *)self setDeleteIndexPaths:array];

  array2 = [MEMORY[0x277CBEB18] array];
  [(ICDocCamThumbnailCollectionViewLayout *)self setInsertIndexPaths:array2];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = updatesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 updateAction] == 1)
        {
          deleteIndexPaths = [(ICDocCamThumbnailCollectionViewLayout *)self deleteIndexPaths];
          indexPathBeforeUpdate = [v12 indexPathBeforeUpdate];
        }

        else
        {
          if ([v12 updateAction])
          {
            continue;
          }

          deleteIndexPaths = [(ICDocCamThumbnailCollectionViewLayout *)self insertIndexPaths];
          indexPathBeforeUpdate = [v12 indexPathAfterUpdate];
        }

        v15 = indexPathBeforeUpdate;
        [deleteIndexPaths addObject:indexPathBeforeUpdate];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = ICDocCamThumbnailCollectionViewLayout;
  [(ICDocCamThumbnailCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
  [(ICDocCamThumbnailCollectionViewLayout *)self setDeleteIndexPaths:0];
  [(ICDocCamThumbnailCollectionViewLayout *)self setInsertIndexPaths:0];
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  v36.receiver = self;
  v36.super_class = ICDocCamThumbnailCollectionViewLayout;
  v5 = [(ICDocCamThumbnailCollectionViewLayout *)&v36 initialLayoutAttributesForAppearingItemAtIndexPath:pathCopy];
  insertIndexPaths = [(ICDocCamThumbnailCollectionViewLayout *)self insertIndexPaths];
  v7 = [insertIndexPaths containsObject:pathCopy];

  if (v7)
  {
    if (!v5)
    {
      v5 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:pathCopy];
    }

    [v5 setAlpha:1.0];
    delegate = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
    collectionView = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    [delegate collectionView:collectionView imageSizeAtIndex:{objc_msgSend(pathCopy, "item")}];
    v11 = v10;
    v13 = v12;

    delegate2 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
    [delegate2 targetViewRect];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [MEMORY[0x277D755B8] dc_aspectFitImageFrameForViewWithFrame:v16 imageSize:{v18, v20, v22, v11, v13}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    collectionView2 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    superview = [collectionView2 superview];
    v32Superview = [superview superview];

    collectionView3 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    [v32Superview convertRect:collectionView3 toView:{v24, v26, v28, v30}];
    [v5 setFrame:?];
  }

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = ICDocCamThumbnailCollectionViewLayout;
  v5 = [(ICDocCamThumbnailCollectionViewLayout *)&v11 finalLayoutAttributesForDisappearingItemAtIndexPath:pathCopy];
  deleteIndexPaths = [(ICDocCamThumbnailCollectionViewLayout *)self deleteIndexPaths];
  v7 = [deleteIndexPaths containsObject:pathCopy];

  if (v7)
  {
    if (!v5)
    {
      v5 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:pathCopy];
    }

    [v5 setAlpha:0.0];
    [v5 setCenter:{0.0, 0.0}];
    CATransform3DMakeScale(&v10, 0.1, 0.1, 1.0);
    v9 = v10;
    [v5 setTransform3D:&v9];
  }

  return 0;
}

- (id)initialLayoutAttributesForAppearingDecorationElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = ICDocCamThumbnailCollectionViewLayout;
  v8 = [(ICDocCamThumbnailCollectionViewLayout *)&v17 initialLayoutAttributesForAppearingDecorationElementOfKind:kindCopy atIndexPath:pathCopy];
  if ([kindCopy isEqualToString:@"Decoration.Shadow"])
  {
    if (!v8)
    {
      v8 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForDecorationViewOfKind:kindCopy atIndexPath:pathCopy];
    }

    [v8 setAlpha:1.0];
    v9 = *(MEMORY[0x277CD9DE8] + 80);
    v16[4] = *(MEMORY[0x277CD9DE8] + 64);
    v16[5] = v9;
    v10 = *(MEMORY[0x277CD9DE8] + 112);
    v16[6] = *(MEMORY[0x277CD9DE8] + 96);
    v16[7] = v10;
    v11 = *(MEMORY[0x277CD9DE8] + 16);
    v16[0] = *MEMORY[0x277CD9DE8];
    v16[1] = v11;
    v12 = *(MEMORY[0x277CD9DE8] + 48);
    v16[2] = *(MEMORY[0x277CD9DE8] + 32);
    v16[3] = v12;
    [v8 setTransform3D:v16];
    [v8 frame];
    v14 = v13;
    [v8 frame];
    [v8 setFrame:v14];
  }

  return 0;
}

- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = ICDocCamThumbnailCollectionViewLayout;
  v8 = [(ICDocCamThumbnailCollectionViewLayout *)&v19 finalLayoutAttributesForDisappearingDecorationElementOfKind:kindCopy atIndexPath:pathCopy];
  deleteIndexPaths = [(ICDocCamThumbnailCollectionViewLayout *)self deleteIndexPaths];
  v10 = [deleteIndexPaths containsObject:pathCopy];

  if (v10 && [kindCopy isEqualToString:@"Decoration.Shadow"])
  {
    if (!v8)
    {
      v8 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForDecorationViewOfKind:kindCopy atIndexPath:pathCopy];
    }

    [v8 setAlpha:0.0];
    v11 = *(MEMORY[0x277CD9DE8] + 80);
    v18[4] = *(MEMORY[0x277CD9DE8] + 64);
    v18[5] = v11;
    v12 = *(MEMORY[0x277CD9DE8] + 112);
    v18[6] = *(MEMORY[0x277CD9DE8] + 96);
    v18[7] = v12;
    v13 = *(MEMORY[0x277CD9DE8] + 16);
    v18[0] = *MEMORY[0x277CD9DE8];
    v18[1] = v13;
    v14 = *(MEMORY[0x277CD9DE8] + 48);
    v18[2] = *(MEMORY[0x277CD9DE8] + 32);
    v18[3] = v14;
    [v8 setTransform3D:v18];
    [v8 frame];
    v16 = v15;
    [v8 frame];
    [v8 setFrame:v16];
  }

  return v8;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (ICDocCamThumbnailViewLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
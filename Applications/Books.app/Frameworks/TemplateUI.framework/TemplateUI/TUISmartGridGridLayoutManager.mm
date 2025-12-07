@interface TUISmartGridGridLayoutManager
+ (void)configureContentLayout:(id)layout configuration:(id)configuration;
+ (void)configureScrollLayout:(id)layout configuration:(id)configuration;
- (CGSize)contentLayoutSize;
- (CGSize)layoutSize;
- (TUISmartGridGridLayoutManager)initWithContent:(id)content;
- (double)widthForColumnSpan:(unint64_t)span;
- (id).cxx_construct;
- (unint64_t)ruleLayoutAxis;
- (void)appendAdornmentRenderModelsCompatibleWithKind:(unint64_t)kind transform:(CGAffineTransform *)transform context:(id)context box:(id)box toModels:(id)models;
- (void)appendAnchorsToSet:(id)set forLayout:(id)layout inRoot:(id)root;
- (void)appendHoverRegions:(id)regions transform:(CGAffineTransform *)transform;
- (void)layoutContent:(id)content;
@end

@implementation TUISmartGridGridLayoutManager

- (TUISmartGridGridLayoutManager)initWithContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = TUISmartGridGridLayoutManager;
  v6 = [(TUISmartGridGridLayoutManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_content, content);
  }

  return v7;
}

+ (void)configureScrollLayout:(id)layout configuration:(id)configuration
{
  layoutCopy = layout;
  configurationCopy = configuration;
  [configurationCopy width];
  [layoutCopy setContainingWidth:?];
  objc_msgSend_height(configurationCopy);
  [layoutCopy setContainingHeight:?];
}

+ (void)configureContentLayout:(id)layout configuration:(id)configuration
{
  layoutCopy = layout;
  configurationCopy = configuration;
  [configurationCopy width];
  [layoutCopy setContainingWidth:?];
}

- (double)widthForColumnSpan:(unint64_t)span
{
  if (span)
  {
    return -(self->_computedColumnSpacing - (self->_computedColumnWidth + self->_computedColumnSpacing) * span);
  }

  else
  {
    return 0.0;
  }
}

- (unint64_t)ruleLayoutAxis
{
  if (self->_list)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)layoutContent:(id)content
{
  contentCopy = content;
  computedLayoutDirection = [contentCopy computedLayoutDirection];
  [(TUISmartGridLayoutConfiguration *)self->_configuration width];
  v6 = v5;
  [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  self->_computedColumns = [TUISmartGridBox columnsWithConfiguration:self->_configuration];
  v15 = objc_msgSend_columnSpacing(self->_configuration);
  self->_computedColumnSpacing = TUILengthValueWithDefault(v15, v16, 0.0);
  [TUISmartGridBox columnWidthWithConfiguration:self->_configuration columns:self->_computedColumns spacing:?];
  self->_computedColumnWidth = v17;
  v18 = objc_msgSend_rowSpacing(self->_configuration);
  self->_computedRowSpacing = TUILengthValueWithDefault(v18, v19, 0.0);
  v20 = objc_msgSend_children(contentCopy);
  sub_63EE4(&v136, v20, self->_content, 1);

  computedColumns = self->_computedColumns;
  v140 = 1;
  begin = self->_scrollAnchors.__begin_;
  if (begin != self->_scrollAnchors.__end_)
  {
    self->_scrollAnchors.__end_ = begin;
  }

  p_cellBounds = &self->_cellBounds;
  sub_61808(&self->_cellBounds, self->_cellBounds.__begin_, self->_cellBounds.__end_);
  v22 = computedColumns;
  v23 = v140;
  computedColumnWidth = self->_computedColumnWidth;
  computedColumnSpacing = self->_computedColumnSpacing;
  computedRowSpacing = self->_computedRowSpacing;
  controller = [contentCopy controller];
  [controller contentsScale];
  v29 = computedColumnWidth;
  v30 = computedColumnSpacing;
  if (computedColumnSpacing != 0.0)
  {
    v29 = computedColumnWidth;
    v30 = computedColumnSpacing;
    if (v22 >= 2)
    {
      v29 = computedColumnWidth;
      if (v28 > 0.0)
      {
        v29 = floor(computedColumnWidth * v28) / v28;
      }

      v30 = ((computedColumnWidth - v29) * v22 + computedColumnSpacing * (v22 - 1)) / (v22 - 1);
    }
  }

  self->_columnSystem._containerWidth = v6;
  self->_columnSystem._columns = v22;
  self->_columnSystem._rows = v23;
  self->_columnSystem._insets.top = v8;
  self->_columnSystem._insets.left = v10;
  self->_columnSystem._insets.bottom = v12;
  self->_columnSystem._insets.right = v14;
  self->_columnSystem._specifiedColumnWidth = computedColumnWidth;
  self->_columnSystem._specifiedColumnSpacing = computedColumnSpacing;
  self->_columnSystem._computedColumnWidth = v29;
  self->_columnSystem._computedColumnSpacing = v30;
  self->_columnSystem._rowSpacing = computedRowSpacing;
  self->_columnSystem._layoutDirection = computedLayoutDirection;
  self->_columnSystem._contentsScale = v28;
  self->_columnSystem._columnsPerPage = 0;

  verticalPlacement = [(TUISmartGridLayoutConfiguration *)self->_configuration verticalPlacement];
  if (verticalPlacement >= 7)
  {
    v32 = 5;
  }

  else
  {
    v32 = dword_24CD10[verticalPlacement];
  }

  v120 = v32;
  v33 = sub_618AC(&v136, &dword_4 + 2);
  if (v138[1] == v33)
  {
    v126 = CGSizeZero;
    v127 = 0u;
    v128 = 0u;
    sub_61DD8(&self->_cellDividers, &v126);
    *&v124.width = &v127 + 8;
    sub_63928(&v124);
  }

  else
  {
    v34.n128_f64[0] = sub_61938(&self->_columnSystem, 0, 1uLL);
    v35.n128_u64[0] = 0x7FF8000000000000;
    sub_673FC(&v122, 0, *(v33 + 5), *(v33 + 6), v34, v35);
    v37 = v36;
    v39 = v38;
    v33[9] = v36;
    v33[10] = v38;
    sub_61AFC(v33, 1);
    v40 = objc_opt_new();
    sub_61C34(&v136, v33, v40);
    v126.width = v37;
    v126.height = v39;
    v127 = v40;
    v128 = 0uLL;
    v41 = v40;
    sub_61DD8(&self->_cellDividers, &v126);
    *&v124.width = &v127 + 8;
    sub_63928(&v124);
  }

  containerWidth = self->_columnSystem._containerWidth;
  v43 = containerWidth - sub_61E30(&self->_columnSystem);
  v44 = v43 * 0.5;
  v45 = v43 <= 0.0;
  v46 = 0.0;
  if (v45)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = v44;
  }

  v49 = v136;
  v48 = v137;
  if (v136 != v137)
  {
    v116 = v137;
    v118 = 0.0;
    while (1)
    {
      v50 = v49[3];
      v51 = v49[4];
      while (v50 != v51)
      {
        v52 = *(v50 + 32);
        if ([v52 role] == &dword_0 + 3)
        {
        }

        else
        {
          v53 = *(v50 + 32);
          role = [v53 role];

          if (role != &dword_4)
          {
            goto LABEL_25;
          }
        }

        *v50 = 0;
        v55 = self->_computedColumns;
        *(v50 + 8) = 0;
        *(v50 + 16) = v55;
        *(v50 + 24) = 1;
LABEL_25:
        v50 += 96;
      }

      *&v124.width = &v136;
      v124.height = v118;
      v125 = (*&v118 + 1);
      sub_67714(&v124);
      *&v122 = &v136;
      *(&v122 + 1) = *&v118 + 1;
      v123 = (*&v118 + 1);
      sub_67714(&v122);
      v126 = v124;
      v127 = v125;
      v128 = v122;
      v129 = v123;
      v130 = v47;
      v131 = v8;
      v132 = 0;
      v134 = 0;
      v135 = 0;
      __p = 0;
      sub_61F88(&v126, &self->_columnSystem, &v136, 0);
      v57 = v56;
      v117 = *&v118 + 1;
      if (__p)
      {
        v134 = __p;
        operator delete(__p);
      }

      v58 = v8 + v57;
      v59 = *v49;
      v60 = v49[1];
      if (*v49 == v60)
      {
        v61 = 0;
      }

      else
      {
        v61 = 0;
        v62 = 0;
        v63 = self->_computedColumns;
        if (v63 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v64 = -1;
        }

        else
        {
          v64 = v63 - 1;
        }

        v65 = *v49;
        do
        {
          if (v64 < v62)
          {
            if (v61 >= 1)
            {
              sub_62474(&self->_cellDividers, &self->_columnSystem, v59, v65, v47, v58);
            }

            *&v126.width = v59;
            *&v126.height = v65;
            *&v127 = v47;
            *(&v127 + 1) = v58;
            v130 = 0.0;
            v131 = 0.0;
            *(&v129 + 1) = 0;
            LODWORD(v128) = v120;
            v66 = v136;
            v67 = 1;
            while (v66 != v137)
            {
              for (i = *v66; i != v66[1]; i += 96)
              {
                v69 = *(i + 48);
                if ((*(i + 56) - v69) >> 6 > v67)
                {
                  v67 = (*(i + 56) - v69) >> 6;
                }
              }

              v66 += 11;
            }

            sub_62580(&v126, &self->_columnSystem, &v136, v67);
            v71 = v70;
            v72 = self->_computedRowSpacing;
            if (*(&v129 + 1))
            {
              v130 = *(&v129 + 1);
              operator delete(*(&v129 + 1));
            }

            v62 = 0;
            v58 = v58 + v71 + v72;
            ++v61;
            v59 = v65;
          }

          if (self->_list)
          {
            v73 = self->_computedColumns;
          }

          else
          {
            v73 = 1;
          }

          v74 = v73 + v62;
          if (v64 >= v62)
          {
            v75 = 1;
          }

          else
          {
            v73 = 0;
            v75 = 0;
          }

          if (v64 >= v62)
          {
            v76 = v62;
          }

          else
          {
            v76 = 0;
          }

          if (v64 >= v62)
          {
            v62 = v74;
          }

          *v65 = v76;
          v65[1] = 0;
          v65[2] = v73;
          v65[3] = v75;
          v65 += 12;
        }

        while (v65 != v60);
        if (v59 != v65)
        {
          if (v61 >= 1)
          {
            sub_62474(&self->_cellDividers, &self->_columnSystem, v59, v65, v47, v58);
          }

          *&v126.width = v59;
          *&v126.height = v65;
          *&v127 = v47;
          *(&v127 + 1) = v58;
          v130 = 0.0;
          v131 = 0.0;
          *(&v129 + 1) = 0;
          LODWORD(v128) = v120;
          v77 = v136;
          v78 = 1;
          while (v77 != v137)
          {
            for (j = *v77; j != v77[1]; j += 96)
            {
              v80 = *(j + 48);
              if ((*(j + 56) - v80) >> 6 > v78)
              {
                v78 = (*(j + 56) - v80) >> 6;
              }
            }

            v77 += 11;
          }

          sub_62580(&v126, &self->_columnSystem, &v136, v78);
          v82 = v81;
          v83 = self->_computedRowSpacing;
          if (*(&v129 + 1))
          {
            v130 = *(&v129 + 1);
            operator delete(*(&v129 + 1));
          }

          v58 = v58 + v82 + v83;
          ++v61;
        }
      }

      v84 = *v49;
      v85 = v49[1];
      while (v84 != v85)
      {
        if ((*(v84 + 40) & 1) == 0)
        {
          v87 = *(v84 + 48);
          v86 = *(v84 + 56);
          if (v87 == v86)
          {
            origin = CGRectNull.origin;
            size = CGRectNull.size;
          }

          else
          {
            origin = v87[2];
            size = vsubq_f64(vaddq_f64(v86[-2], v86[-1]), origin);
          }

          v90 = origin;
          origin.x = size.height;
          v121 = size;
          y = origin.y;
          if (!CGRectIsNull(*(&size - 1)))
          {
            v92 = *(v84 + 32);
            end = self->_cellBounds.__end_;
            cap = self->_cellBounds.__cap_;
            if (end >= cap)
            {
              v96 = 0xCCCCCCCCCCCCCCCDLL * ((end - p_cellBounds->__begin_) >> 3);
              v97 = v96 + 1;
              if (v96 + 1 > 0x666666666666666)
              {
                sub_4050();
              }

              v98 = 0xCCCCCCCCCCCCCCCDLL * ((cap - p_cellBounds->__begin_) >> 3);
              if (2 * v98 > v97)
              {
                v97 = 2 * v98;
              }

              if (v98 >= 0x333333333333333)
              {
                v99 = 0x666666666666666;
              }

              else
              {
                v99 = v97;
              }

              *&v128 = &self->_cellBounds;
              if (v99)
              {
                sub_68FF4(p_cellBounds, v99);
              }

              v100 = 40 * v96;
              v126.width = 0.0;
              *&v126.height = v100;
              *(&v127 + 1) = 0;
              *v100 = v92;
              *(v100 + 8) = v90;
              *(v100 + 24) = v121;
              *&v127 = 40 * v96 + 40;
              sub_68F2C(p_cellBounds, &v126);
              v95 = self->_cellBounds.__end_;
              sub_6904C(&v126);
            }

            else
            {
              *end = v92;
              *(end + 8) = v90;
              v95 = end + 40;
              *(end + 24) = v121;
            }

            self->_cellBounds.__end_ = v95;
          }
        }

        v84 += 96;
      }

      if (v61 > 0)
      {
        v58 = v58 - self->_computedRowSpacing;
      }

      *&v124.width = &v136;
      v124.height = v118;
      v125 = v117;
      sub_690A0(&v124);
      *&v122 = &v136;
      *(&v122 + 1) = *&v118 + 1;
      v123 = v117;
      sub_690A0(&v122);
      v126 = v124;
      v127 = v125;
      v128 = v122;
      v129 = v123;
      v130 = v47;
      v131 = v58;
      v132 = 0;
      v134 = 0;
      v135 = 0;
      __p = 0;
      v46 = sub_62984(&v126, &self->_columnSystem, &v136, 0);
      v102 = v101;
      if (__p)
      {
        v134 = __p;
        operator delete(__p);
      }

      v8 = v58 + v102;
      v49 += 11;
      ++*&v118;
      if (v49 == v116)
      {
        v49 = v136;
        v48 = v137;
        break;
      }
    }
  }

  while (v49 != v48)
  {
    v104 = *v49;
    v103 = v49[1];
    while (v104 != v103)
    {
      if (*(v104 + 16))
      {
        v105 = *(v104 + 24) == 0;
      }

      else
      {
        v105 = 1;
      }

      v106 = v105;
      sub_62E70(v104, v106);
      v104 += 96;
    }

    v108 = v49[3];
    v107 = v49[4];
    while (v108 != v107)
    {
      if (*(v108 + 16))
      {
        v109 = *(v108 + 24) == 0;
      }

      else
      {
        v109 = 1;
      }

      v110 = v109;
      sub_61AFC(v108, v110);
      v108 += 96;
    }

    v49 += 11;
  }

  objc_msgSend_height(self->_configuration, v46);
  v112 = v111;
  objc_msgSend_specifiedHeight(self->_configuration);
  if ((v113 & 0x6000000000000) == 0x2000000000000)
  {
    v114 = v12 + v8;
  }

  else
  {
    v114 = v112;
  }

  self->_contentLayoutSize.width = v6;
  self->_contentLayoutSize.height = v12 + v8;
  self->_layoutSize.width = v6;
  self->_layoutSize.height = v114;
  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }

  *&v126.width = v138;
  sub_63A20(&v126);
  *&v126.width = &v136;
  sub_63C64(&v126);
}

- (void)appendAnchorsToSet:(id)set forLayout:(id)layout inRoot:(id)root
{
  setCopy = set;
  layoutCopy = layout;
  rootCopy = root;
  if ([setCopy axis] == &dword_0 + 2)
  {
    width = self->_contentLayoutSize.width;
    v15 = 0;
    if (layoutCopy)
    {
      objc_msgSend_computedTransformInAncestorLayout_(layoutCopy, 0);
    }

    begin = self->_scrollAnchors.__begin_;
    end = self->_scrollAnchors.__end_;
    if (begin != end)
    {
      v14 = width * 0.5;
      do
      {
        [setCopy appendScrollAnchor:{*begin++ * 0.0 + 0.0 * v14 + 0.0, v15}];
      }

      while (begin != end);
    }
  }
}

- (void)appendAdornmentRenderModelsCompatibleWithKind:(unint64_t)kind transform:(CGAffineTransform *)transform context:(id)context box:(id)box toModels:(id)models
{
  contextCopy = context;
  boxCopy = box;
  modelsCopy = models;
  v15 = *&transform->c;
  v21 = *&transform->a;
  v22 = v15;
  v23 = *&transform->tx;
  sub_6320C(&self->_cellDividers, kind, &v21, contextCopy, modelsCopy);
  if (kind >= 4 && [contextCopy debugVisualLayout])
  {
    width = self->_contentLayoutSize.width;
    height = self->_contentLayoutSize.height;
    identifier = [boxCopy identifier];
    v19 = *&transform->c;
    v21 = *&transform->a;
    v22 = v19;
    v23 = *&transform->tx;
    height = [TUISmartGridDebugRenderModel renderModelWithSize:&self->_columnSystem columnSystem:identifier identifier:&v21 transform:width, height];

    [modelsCopy addObject:height];
  }
}

- (void)appendHoverRegions:(id)regions transform:(CGAffineTransform *)transform
{
  regionsCopy = regions;
  begin = self->_cellBounds.__begin_;
  for (i = self->_cellBounds.__end_; begin != i; begin += 5)
  {
    v9 = *begin;
    v10 = begin[1];
    v11 = begin[2];
    v12 = begin[3];
    v13 = begin[4];
    v14 = v9;
    v15 = *&transform->c;
    *&v27.a = *&transform->a;
    *&v27.c = v15;
    *&v27.tx = *&transform->tx;
    v16 = v10;
    *&v15 = v11;
    v17 = v12;
    v18 = v13;
    v28 = CGRectApplyAffineTransform(*(&v15 - 8), &v27);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    v23 = [TUIHoverIdentifier alloc];
    identifier = [v14 identifier];
    v25 = [(TUIHoverIdentifier *)v23 initWithName:@"cell" identifier:identifier];

    height = [[TUIHoverRegion alloc] initWithBounds:x, y, width, height];
    [regionsCopy setObject:height forKeyedSubscript:v25];
  }
}

- (CGSize)layoutSize
{
  width = self->_layoutSize.width;
  height = self->_layoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)contentLayoutSize
{
  width = self->_contentLayoutSize.width;
  height = self->_contentLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 56) = CGSizeZero;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 15) = 0;
  v2 = *&UIEdgeInsetsZero.bottom;
  *(self + 8) = *&UIEdgeInsetsZero.top;
  *(self + 9) = v2;
  *(self + 27) = 0;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 24) = 0;
  *(self + 25) = 0;
  return self;
}

@end
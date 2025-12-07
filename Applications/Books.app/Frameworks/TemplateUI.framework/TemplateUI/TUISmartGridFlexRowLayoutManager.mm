@interface TUISmartGridFlexRowLayoutManager
+ (void)configureContentLayout:(id)layout configuration:(id)configuration;
+ (void)configureScrollLayout:(id)layout configuration:(id)configuration;
- (BOOL)shouldInvalidateRenderModelForScrollLayout;
- (CGSize)contentLayoutSize;
- (CGSize)layoutSize;
- (TUISmartGridFlexRowLayoutManager)initWithContent:(id)content;
- (UIEdgeInsets)scrollGradientFraction;
- (UIEdgeInsets)scrollGradientInsets;
- (id).cxx_construct;
- (id)scrollPolicy;
- (void)appendAdornmentRenderModelsCompatibleWithKind:(unint64_t)kind transform:(CGAffineTransform *)transform context:(id)context box:(id)box toModels:(id)models;
- (void)appendAnchorsToSet:(id)set forLayout:(id)layout inRoot:(id)root;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models;
- (void)appendHoverRegions:(id)regions transform:(CGAffineTransform *)transform;
- (void)appendNonScrollableAdornmentRenderModelsCompatibleWithKind:(unint64_t)kind transform:(CGAffineTransform *)transform context:(id)context box:(id)box toModels:(id)models;
- (void)layoutContent:(id)content;
- (void)positionContainerLayout:(id)layout;
@end

@implementation TUISmartGridFlexRowLayoutManager

- (TUISmartGridFlexRowLayoutManager)initWithContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = TUISmartGridFlexRowLayoutManager;
  v6 = [(TUISmartGridFlexRowLayoutManager *)&v9 init];
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
  [configurationCopy contentInsets];
  v7 = v6;
  v9 = v8;
  if ([configurationCopy paginated])
  {
    [configurationCopy width];
    v11 = v10 - v7 - v9;
  }

  else
  {
    [configurationCopy width];
  }

  [layoutCopy setContainingWidth:v11];
}

+ (void)configureContentLayout:(id)layout configuration:(id)configuration
{
  layoutCopy = layout;
  configurationCopy = configuration;
  [configurationCopy contentInsets];
  v7 = v6;
  v9 = v8;
  if ([configurationCopy paginated])
  {
    [configurationCopy width];
    v11 = v10 - v7 - v9;
  }

  else
  {
    [configurationCopy width];
  }

  [layoutCopy setContainingWidth:v11];
}

- (void)positionContainerLayout:(id)layout
{
  layoutCopy = layout;
  paginated = [(TUISmartGridLayoutConfiguration *)self->_configuration paginated];
  v5 = 0.0;
  if (paginated)
  {
    [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
    v5 = v6;
  }

  [layoutCopy setComputedOrigin:{v5, 0.0}];
}

- (BOOL)shouldInvalidateRenderModelForScrollLayout
{
  paginated = [(TUISmartGridLayoutConfiguration *)self->_configuration paginated];
  if (paginated)
  {
    LOBYTE(paginated) = self->_scrollPolicy == 0;
  }

  return paginated;
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
  v18 = objc_msgSend_children(contentCopy);
  sub_63EE4(&v146, v18, self->_content, 1);

  v19 = v146;
  v20 = v147;
  if (v146 != v147)
  {
    v21 = 0;
    do
    {
      v22 = *v19;
      v23 = v19[1];
      while (v22 != v23)
      {
        *v22 = v21;
        *(v22 + 24) = 1;
        *(v22 + 8) = xmmword_24CD00;
        ++v21;
        v22 += 96;
      }

      v19 += 11;
    }

    while (v19 != v20);
  }

  computedColumnSpacing = self->_computedColumnSpacing;
  v135.n128_u64[0] = v6;
  v135.n128_f64[1] = v8;
  v136 = v10;
  v137 = v12;
  v138 = v14;
  v139 = computedColumnSpacing;
  v140 = 0;
  v141 = computedLayoutDirection;
  paginated = 0;
  v144 = 0;
  v145 = 0;
  v143 = 0;
  paginated = [(TUISmartGridLayoutConfiguration *)self->_configuration paginated];
  v26 = v8;
  v28 = v146;
  v27 = v147;
  v29 = 0;
  if (v147 != v146)
  {
    v30 = v146 + 1;
    while (*v30 == *(v30 - 1))
    {
      v29 = (v29 + 1);
      v30 += 11;
      if ((0x2E8BA2E8BA2E8BA3 * (v147 - v146)) == v29)
      {
        v29 = (0x2E8BA2E8BA2E8BA3 * (v147 - v146));
        break;
      }
    }
  }

  v131[0] = &v146;
  v131[1] = v29;
  v131[2] = 0;
  v131[3] = &v146;
  v131[5] = 0;
  v131[6] = 0;
  v131[4] = (0x2E8BA2E8BA2E8BA3 * (v147 - v146));
  v131[7] = v135.n128_u64[1];
  v31 = 0uLL;
  v132 = 0u;
  *__p = 0u;
  v134 = 0u;
  v32 = 1;
  if (v147 != v146)
  {
    do
    {
      v33 = *v28;
      v34 = v28[1];
      while (v33 != v34)
      {
        v35 = *(v33 + 48);
        v36 = *(v33 + 56);
        if (v35 == v36)
        {
          v37 = 0;
        }

        else
        {
          v37 = 0;
          do
          {
            if (*v35)
            {
              span = [*v35 span];
              if (span <= 1)
              {
                v39 = 1;
              }

              else
              {
                v39 = span;
              }
            }

            else
            {
              v39 = 1;
            }

            v37 += v39;
            v35 += 8;
          }

          while (v35 != v36);
        }

        if (v37 > v32)
        {
          v32 = v37;
        }

        v33 += 96;
      }

      v28 += 11;
    }

    while (v28 != v27);
  }

  v40 = sub_93D58(v131, &v135, &v146, v32, v31, v25);
  v42 = v41;
  v43 = v137;
  v44 = v146;
  v45 = v147;
  while (v44 != v45)
  {
    v46 = *v44;
    v47 = v44[1];
    while (v46 != v47)
    {
      if (*(v46 + 16))
      {
        v48 = *(v46 + 24) == 0;
      }

      else
      {
        v48 = 1;
      }

      v49 = v48;
      sub_62E70(v46, v49);
      v46 += 96;
    }

    v50 = v44[3];
    v51 = v44[4];
    while (v50 != v51)
    {
      sub_61AFC(v50, 1);
      v50 += 96;
    }

    v44 += 11;
  }

  p_cells = &self->_cells;
  sub_94A5C(&self->_cells, self->_cells.__begin_, self->_cells.__end_);
  selfCopy = self;
  v53 = objc_opt_new();
  v54 = v146;
  for (i = v147; v54 != i; v54 += 11)
  {
    v57 = *v54;
    v56 = v54[1];
    while (v57 != v56)
    {
      if ((*(v57 + 40) & 1) == 0)
      {
        v59 = *(v57 + 48);
        v58 = *(v57 + 56);
        if (v59 == v58)
        {
          origin = CGRectNull.origin;
          size = CGRectNull.size;
        }

        else
        {
          origin = v59[2];
          size = vsubq_f64(vaddq_f64(v58[-2], v58[-1]), origin);
        }

        y = origin.y;
        height = size.height;
        v126 = size;
        v64 = origin;
        if (!CGRectIsNull(*&origin.x))
        {
          v65 = *(v57 + 32);
          identifier = [v65 identifier];
          v127.width = v64.x;
          v127.height = y;
          v128 = v126;
          *&v129 = identifier;
          sub_94AF4(p_cells, &v127);

          v67 = objc_opt_new();
          sub_67064(&v146, v57, v67);
          v68 = [v67 copy];
          [v53 addObject:v68];
        }
      }

      v57 += 96;
    }
  }

  v69 = [v53 copy];
  v70 = *(v124 + 104);
  *(v124 + 104) = v69;

  v71 = sub_618AC(&v146, &dword_4 + 1);
  v74 = v71;
  if (v148[1] == v71)
  {
    v127 = CGSizeZero;
    v128 = 0;
    v129 = 0u;
    sub_61DD8(v124 + 56, &v127);
    v155[0] = &v128.height;
    sub_63928(v155);
  }

  else
  {
    v72.n128_u64[0] = 0x7FF8000000000000;
    v73.n128_f64[0] = v42;
    v75 = sub_96CF8(&v130, 0, *(v71 + 40), *(v71 + 48), v72, v73);
    v77 = v76;
    v74[9] = v75;
    v74[10] = v76;
    sub_61AFC(v74, 1);
    v78 = objc_opt_new();
    sub_61C34(&v146, v74, v78);
    v79 = v78;
    v127.width = v75;
    v127.height = v77;
    v128 = v79;
    v129 = 0uLL;
    sub_61DD8(v124 + 56, &v127);
    v155[0] = &v128.height;
    sub_63928(v155);

    v80 = 0xCCCCCCCCCCCCCCCDLL * ((*(v124 + 40) - *(v124 + 32)) >> 3);
    v81 = -0.5;
    if (v141 == &dword_0 + 2)
    {
      v81 = 0.5;
    }

    if (v80 >= 2)
    {
      v82 = v139 * v81;
      v83 = 1;
      v84 = 72;
      do
      {
        v85 = [*(*p_cells + v84) tui_identifierByAppendingString:@"divider"];
        if (v141 == &dword_0 + 2)
        {
          v86 = v136 + v138;
          if (paginated)
          {
            v86 = 0.0;
          }

          v87 = *(v144 - 1) - *v143 - v139 + v86 - *(v143 + v83);
        }

        else
        {
          v87 = *(v143 + v83);
        }

        sub_6858C((v124 + 56), v85, v82 + v87, v8);

        ++v83;
        v84 += 40;
      }

      while (v80 != v83);
    }
  }

  v88 = *(v124 + 120);
  if (v88)
  {
    cells = [v88 cells];
    v91 = *cells;
    v90 = cells[1];
    v92 = *(v124 + 32);
    if (v90 - *cells == *(v124 + 40) - v92)
    {
      while (v91 != v90)
      {
        if (!CGRectEqualToRect(*v91, *v92))
        {
          goto LABEL_75;
        }

        v93 = *(v91 + 32);
        if (v93 != *(v92 + 32) && ![v93 isEqual:?])
        {
          goto LABEL_75;
        }

        v91 += 40;
        v92 += 40;
      }
    }

    else
    {
LABEL_75:
      v94 = *(v124 + 120);
      *(v124 + 120) = 0;
    }
  }

  v95 = *(v124 + 8);
  v97 = *(v124 + 16);
  v96 = (v124 + 8);
  if (v95 != v97)
  {
    *(v124 + 16) = v95;
    v97 = v95;
  }

  if (paginated == 1)
  {
    v99 = *(&v132 + 1);
    v98 = v132;
    if (v132 != *(&v132 + 1))
    {
      v100 = 0;
      do
      {
        if (v141 == &dword_0 + 2)
        {
          v101 = v136 + v138;
          if (paginated)
          {
            v101 = 0.0;
          }

          v102 = *(v144 - 1) - *v143 - v139 + v101 - *(v143 + v100);
        }

        else
        {
          v102 = *(v143 + v100);
        }

        v127.width = v102;
        sub_94B48((v124 + 8), &v127);
        v104 = *v98;
        v103 = v98[1];
        v98 += 3;
        v100 += (v103 - v104) >> 4;
      }

      while (v98 != v99);
    }
  }

  else
  {
    if (v141 == &dword_0 + 2)
    {
      v105 = -v136;
    }

    else
    {
      v105 = v136;
    }

    v106 = *(v124 + 32);
    v107 = *(v124 + 40);
    if (v106 != v107)
    {
      v108 = 0;
      do
      {
        if (v141 == &dword_0 + 2)
        {
          v109 = v136 + v138;
          if (paginated)
          {
            v109 = 0.0;
          }

          v110 = *(v144 - 1) - *v143 - v139 + v109 - *(v143 + v108);
        }

        else
        {
          v110 = *(v143 + v108);
        }

        v111 = v110 - v105;
        v112 = *(v124 + 24);
        if (v97 >= v112)
        {
          v113 = *v96;
          v114 = v97 - *v96;
          v115 = v114 >> 3;
          v116 = (v114 >> 3) + 1;
          if (v116 >> 61)
          {
            sub_4050();
          }

          v117 = v112 - v113;
          if (v117 >> 2 > v116)
          {
            v116 = v117 >> 2;
          }

          if (v117 >= 0x7FFFFFFFFFFFFFF8)
          {
            v118 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v118 = v116;
          }

          if (v118)
          {
            sub_65004(v124 + 8, v118);
          }

          *(8 * v115) = v111;
          v97 = (8 * v115 + 8);
          memcpy(0, v113, v114);
          v119 = *(v124 + 8);
          *(v124 + 8) = 0;
          *(v124 + 16) = v97;
          *(v124 + 24) = 0;
          if (v119)
          {
            operator delete(v119);
          }
        }

        else
        {
          *v97++ = v111;
        }

        *(v124 + 16) = v97;
        v106 += 40;
        v108 += 8;
      }

      while (v106 != v107);
    }
  }

  sub_95A1C(&v127);
  sub_94C28(&v127, &__p[1], &v146, &v135, &v146, CGPointZero.x, CGPointZero.y);
  v120 = [*&v127.width copy];
  v121 = v26 + v42 + v43;
  v122 = *(v124 + 112);
  *(v124 + 112) = v120;

  *(v124 + 184) = v40;
  *(v124 + 192) = v121;
  *(v124 + 168) = v6;
  *(v124 + 176) = v121;

  if (__p[1])
  {
    *&v134 = __p[1];
    operator delete(__p[1]);
  }

  *&v127.width = &v132;
  sub_95ABC(&v127);
  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  if (v153)
  {
    v154 = v153;
    operator delete(v153);
  }

  if (v151)
  {
    v152 = v151;
    operator delete(v151);
  }

  if (v149)
  {
    v150 = v149;
    operator delete(v149);
  }

  v131[0] = v148;
  sub_63A20(v131);
  v131[0] = &v146;
  sub_63C64(v131);
}

- (id)scrollPolicy
{
  if (!self->_scrollPolicy && [(TUISmartGridLayoutConfiguration *)self->_configuration paginated])
  {
    v3 = [[TUICellScrollPolicy alloc] initWithCells:&self->_cells];
    scrollPolicy = self->_scrollPolicy;
    self->_scrollPolicy = v3;
  }

  v5 = self->_scrollPolicy;

  return v5;
}

- (UIEdgeInsets)scrollGradientInsets
{
  [(TUISmartGridLayoutConfiguration *)self->_configuration gradientInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)scrollGradientFraction
{
  [(TUISmartGridLayoutConfiguration *)self->_configuration gradientFraction];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)appendAnchorsToSet:(id)set forLayout:(id)layout inRoot:(id)root
{
  setCopy = set;
  layoutCopy = layout;
  rootCopy = root;
  if ([setCopy axis] == &dword_0 + 1)
  {
    height = self->_contentLayoutSize.height;
    v15 = 0u;
    if (layoutCopy)
    {
      objc_msgSend_computedTransformInAncestorLayout_(layoutCopy);
    }

    begin = self->_scrollAnchors.__begin_;
    end = self->_scrollAnchors.__end_;
    if (begin != end)
    {
      v14 = height * 0.5;
      do
      {
        [setCopy appendScrollAnchor:{v14 * 0.0 + *&v15 * *begin++ + 0.0, v15}];
      }

      while (begin != end);
    }
  }
}

- (void)appendAdornmentRenderModelsCompatibleWithKind:(unint64_t)kind transform:(CGAffineTransform *)transform context:(id)context box:(id)box toModels:(id)models
{
  v7 = *&transform->c;
  v8[0] = *&transform->a;
  v8[1] = v7;
  v8[2] = *&transform->tx;
  sub_6320C(&self->_cellDividers, kind, v8, context, models);
}

- (void)appendNonScrollableAdornmentRenderModelsCompatibleWithKind:(unint64_t)kind transform:(CGAffineTransform *)transform context:(id)context box:(id)box toModels:(id)models
{
  contextCopy = context;
  modelsCopy = models;
  width = self->_layoutSize.width;
  height = self->_layoutSize.height;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = self->_nonScrollableAdornmentLayouts;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v17 = *v33;
    v18 = -width;
    v19 = -height;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        [v21 computedOrigin];
        v23 = v22;
        v25 = v24;
        objc_msgSend_computedTransformedSize(v21);
        memset(&v31, 0, sizeof(v31));
        CGAffineTransformMakeTranslation(&t1, v23 + v26 * 0.5 + v18 * 0.5, v25 + v27 * 0.5 + v19 * 0.5);
        v28 = *&transform->c;
        *&v29.a = *&transform->a;
        *&v29.c = v28;
        *&v29.tx = *&transform->tx;
        CGAffineTransformConcat(&v31, &t1, &v29);
        t1 = v31;
        [v21 appendRenderModelIgnoreHiddenCompatibleWithKind:kind context:contextCopy transform:&t1 toModels:modelsCopy];
      }

      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v16);
  }
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models
{
  contextCopy = context;
  modelsCopy = models;
  if (kind >= 4)
  {
    v10 = self->_cells.__end_ - self->_cells.__begin_;
    if (v10)
    {
      v11 = 0;
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 3);
      v57 = -self->_contentLayoutSize.height;
      v58 = -self->_contentLayoutSize.width;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v56 = v12;
      do
      {
        v13 = (self->_cells.__begin_ + 40 * v11);
        v15 = *v13;
        v14 = v13[1];
        v17 = v13[2];
        v16 = v13[3];
        memset(&v75, 0, sizeof(v75));
        CGAffineTransformMakeTranslation(&v75, v17 * 0.5, v16 * 0.5);
        v18 = objc_opt_new();
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v19 = [(NSArray *)self->_cellLayouts objectAtIndexedSubscript:v11];
        v20 = [v19 countByEnumeratingWithState:&v71 objects:v76 count:16];
        if (v20)
        {
          v21 = *v72;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v72 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v71 + 1) + 8 * i);
              [v23 computedOrigin];
              v25 = v24;
              v27 = v26;
              objc_msgSend_computedTransformedSize(v23);
              memset(&v70, 0, sizeof(v70));
              CGAffineTransformMakeTranslation(&t1, v25 - v15 + v28 * 0.5 + -v17 * 0.5, v27 - v14 + v29 * 0.5 + -v16 * 0.5);
              t2 = v75;
              CGAffineTransformConcat(&v70, &t1, &t2);
              t1 = v70;
              [v23 appendRenderModelCompatibleWithKind:kind context:contextCopy transform:&t1 toModels:v18];
            }

            v20 = [v19 countByEnumeratingWithState:&v71 objects:v76 count:16];
          }

          while (v20);
        }

        CGAffineTransformMakeTranslation(&t1, v15 + v17 * 0.5 + v58 * 0.5, v14 + v16 * 0.5 + v57 * 0.5);
        v30 = *&transform->c;
        *&t2.a = *&transform->a;
        *&t2.c = v30;
        *&t2.tx = *&transform->tx;
        CGAffineTransformConcat(&v70, &t1, &t2);
        v75 = v70;
        v31 = [TUIRenderModelSubviews alloc];
        v32 = [contextCopy renderModelConvertModels:v18 toKind:kind];
        v33 = [(TUIRenderModelSubviews *)v31 initWithSubmodels:v32];

        [(TUIRenderModelSubviews *)v33 setSize:v17, v16];
        v34 = [*(self->_cells.__begin_ + 5 * v11 + 4) tui_identifierByAppendingString:@"cell"];
        v35 = [TUIContainerView renderModelWithSubviewsModel:v33 style:0 identifier:v34];

        v36 = [[TUIRenderModelTransform alloc] initWithSubmodel:v35];
        y = CGPointZero.y;
        v65 = *&v75.a;
        tx = v75.tx;
        c = v75.c;
        ty = v75.ty;
        d = v75.d;
        [v35 size];
        v60 = v37;
        [v35 size];
        v39 = v38;
        a = transform->a;
        b = transform->b;
        v42 = transform->c;
        v43 = transform->d;
        v44 = transform->tx;
        v45 = transform->ty;
        [contextCopy contentsScale];
        v46 = v44 + v39 * -0.5 * v42 + a * (v60 * -0.5);
        v47 = v45 + v39 * -0.5 * v43 + b * (v60 * -0.5);
        v49 = tx + y * c + *&v65 * CGPointZero.x + TUIPointRoundedForScale(v46, v47, v48) - v46;
        v51 = ty + y * d + *(&v65 + 1) * CGPointZero.x + v50 - v47;
        t1 = v75;
        memset(&v70, 0, sizeof(v70));
        CGAffineTransformMakeTranslation(&t2, -v49, -v51);
        CGAffineTransformConcat(&v70, &t1, &t2);
        v52 = v70.tx;
        [contextCopy contentsScale];
        v70.tx = TUIFloatRoundedForScale(v52, v53);
        v54 = v70.ty;
        [contextCopy contentsScale];
        v70.ty = TUIFloatRoundedForScale(v54, v55);
        [(TUIRenderModelTransform *)v36 setCenter:v49, v51];
        t1 = v70;
        [(TUIRenderModelTransform *)v36 setTransform:&t1];
        [modelsCopy addObject:v36];

        ++v11;
      }

      while (v11 != v56);
    }
  }
}

- (void)appendHoverRegions:(id)regions transform:(CGAffineTransform *)transform
{
  regionsCopy = regions;
  begin = self->_cells.__begin_;
  for (i = self->_cells.__end_; begin != i; begin = (begin + 40))
  {
    v19 = *begin;
    v9 = *&transform->c;
    *&v18.a = *&transform->a;
    *&v18.c = v9;
    *&v18.tx = *&transform->tx;
    v20 = CGRectApplyAffineTransform(v19, &v18);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    v14 = [TUIHoverIdentifier alloc];
    v15 = *(begin + 4);
    v16 = [(TUIHoverIdentifier *)v14 initWithName:@"cell" identifier:v15];

    height = [[TUIHoverRegion alloc] initWithBounds:x, y, width, height];
    [regionsCopy setObject:height forKeyedSubscript:v16];
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
  return self;
}

@end
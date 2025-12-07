@interface TUISmartGridSwooshLayoutManager
+ (UIEdgeInsets)_additionalSafeAreaInsetsForLayout:(id)layout configuration:(id)configuration;
+ (void)configureContentLayout:(id)layout configuration:(id)configuration;
+ (void)configureScrollLayout:(id)layout configuration:(id)configuration;
- (CGSize)contentLayoutSize;
- (CGSize)layoutSize;
- (TUISmartGridSwooshLayoutManager)initWithContent:(id)content;
- (UIEdgeInsets)additionalSafeAreaInsetsForLayout:(id)layout;
- (UIEdgeInsets)scrollContentIntrinsicInsets;
- (UIEdgeInsets)scrollGradientFraction;
- (UIEdgeInsets)scrollGradientInsets;
- (double)widthForColumnSpan:(unint64_t)span;
- (id).cxx_construct;
- (unint64_t)ruleLayoutAxis;
- (void)appendAdornmentRenderModelsCompatibleWithKind:(unint64_t)kind transform:(CGAffineTransform *)transform context:(id)context box:(id)box toModels:(id)models;
- (void)appendAnchorsToSet:(id)set forLayout:(id)layout inRoot:(id)root;
- (void)appendHoverRegions:(id)regions transform:(CGAffineTransform *)transform;
- (void)appendNonScrollableAdornmentRenderModelsCompatibleWithKind:(unint64_t)kind transform:(CGAffineTransform *)transform context:(id)context box:(id)box toModels:(id)models;
- (void)layoutContent:(id)content;
- (void)positionContainerLayout:(id)layout;
@end

@implementation TUISmartGridSwooshLayoutManager

- (TUISmartGridSwooshLayoutManager)initWithContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = TUISmartGridSwooshLayoutManager;
  v6 = [(TUISmartGridSwooshLayoutManager *)&v9 init];
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
  [self _additionalSafeAreaInsetsForLayout:layoutCopy configuration:configurationCopy];
  v8 = v7;
  v10 = v9;
  [layoutCopy setComputedOrigin:{-v7, 0.0}];
  [configurationCopy width];
  v12 = v8 + v10 + v11;
  if ([configurationCopy paginated])
  {
    [configurationCopy contentInsets];
    v12 = v12 - (v13 + v14);
  }

  [layoutCopy setContainingWidth:v12];
}

+ (void)configureContentLayout:(id)layout configuration:(id)configuration
{
  layoutCopy = layout;
  configurationCopy = configuration;
  [configurationCopy width];
  v7 = v6;
  if ([configurationCopy paginated])
  {
    [configurationCopy contentInsets];
    v7 = v7 - (v8 + v9);
  }

  [layoutCopy setContainingWidth:v7];
}

+ (UIEdgeInsets)_additionalSafeAreaInsetsForLayout:(id)layout configuration:(id)configuration
{
  layoutCopy = layout;
  configurationCopy = configuration;
  [configurationCopy width];
  v8 = v7;
  controller = [layoutCopy controller];
  instantiateContext = [controller instantiateContext];
  environment = [instantiateContext environment];

  viewSafeAreaInsets = [environment viewSafeAreaInsets];
  left = v13;
  right = v15;
  if (TUISwooshUseUnboundedScroll(viewSafeAreaInsets, v17) && ([configurationCopy paginated] & 1) == 0 && (objc_msgSend(environment, "viewSizeWithinSafeArea"), v8 == v18))
  {
    bottom = 0.0;
    top = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v21 = top;
  v22 = left;
  v23 = bottom;
  v24 = right;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (void)positionContainerLayout:(id)layout
{
  layoutCopy = layout;
  [objc_opt_class() _additionalSafeAreaInsetsForLayout:layoutCopy configuration:self->_configuration];
  v5 = v4;
  if ([(TUISmartGridLayoutConfiguration *)self->_configuration paginated])
  {
    [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
    v7 = v6 - v5;
  }

  else
  {
    v7 = -v5;
  }

  [layoutCopy setComputedOrigin:{v7, 0.0}];
}

- (unint64_t)ruleLayoutAxis
{
  rows = [(TUISmartGridLayoutConfiguration *)self->_configuration rows];
  if (rows == 0x7FFFFFFFFFFFFFFFLL || rows == &dword_0 + 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (UIEdgeInsets)additionalSafeAreaInsetsForLayout:(id)layout
{
  layoutCopy = layout;
  [objc_opt_class() _additionalSafeAreaInsetsForLayout:layoutCopy configuration:self->_configuration];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)scrollContentIntrinsicInsets
{
  [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  paginated = [(TUISmartGridLayoutConfiguration *)self->_configuration paginated];
  if (paginated)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v10;
  }

  if (paginated)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  v14 = v4;
  v15 = v8;
  result.right = v12;
  result.bottom = v15;
  result.left = v13;
  result.top = v14;
  return result;
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

- (void)layoutContent:(id)content
{
  contentCopy = content;
  computedLayoutDirection = [contentCopy computedLayoutDirection];
  [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(TUISmartGridLayoutConfiguration *)self->_configuration width];
  v13 = v12;
  rows = [(TUISmartGridLayoutConfiguration *)self->_configuration rows];
  if ([(TUISmartGridLayoutConfiguration *)self->_configuration maxPages]== 0x7FFFFFFFFFFFFFFFLL)
  {
    maxPages = 0;
  }

  else
  {
    maxPages = [(TUISmartGridLayoutConfiguration *)self->_configuration maxPages];
  }

  self->_computedColumns = [TUISmartGridBox columnsWithConfiguration:self->_configuration];
  v16 = objc_msgSend_children(contentCopy);
  v18 = rows == &dword_0 + 1 || rows == 0x7FFFFFFFFFFFFFFFLL;
  sub_63EE4(&v319, v16, self->_content, v18);

  v267 = rows;
  if ([(TUISmartGridLayoutConfiguration *)self->_configuration balanceSections])
  {
    v19 = v320;
    v20 = v319;
    if (v320 != v319)
    {
      v21 = 0;
      v22 = 0x2E8BA2E8BA2E8BA3 * (v320 - v319);
      do
      {
        v23 = v20[6];
        columns = [v23 columns];

        if (columns == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = 0;
        }

        else
        {
          v25 = columns;
        }

        v21 += v25;
        v20 += 11;
      }

      while (v20 != v19);
      if (v21)
      {
        computedColumns = self->_computedColumns;
        if (v21 < computedColumns)
        {
          if (computedColumns % v22)
          {
            self->_computedColumns = v21;
          }

          else
          {
            self->_columnsPerSection = computedColumns / v22;
          }
        }
      }
    }
  }

  v27 = objc_msgSend_columnSpacing(self->_configuration);
  self->_computedColumnSpacing = TUILengthValueWithDefault(v27, v28, 0.0);
  [TUISmartGridBox columnWidthWithConfiguration:self->_configuration columns:self->_computedColumns spacing:?];
  self->_computedColumnWidth = v29;
  v30 = objc_msgSend_rowSpacing(self->_configuration);
  self->_computedRowSpacing = TUILengthValueWithDefault(v30, v31, 0.0);
  selfCopy = self;
  v259 = v7;
  v260 = v13;
  if (rows != 0x7FFFFFFFFFFFFFFFLL && rows != &dword_0 + 1)
  {
    v47 = 0;
    if (v320 != v319)
    {
      v48 = v319 + 1;
      while (*v48 == *(v48 - 1))
      {
        ++v47;
        v48 += 11;
        if (0x2E8BA2E8BA2E8BA3 * (v320 - v319) == v47)
        {
          v47 = 0x2E8BA2E8BA2E8BA3 * (v320 - v319);
          break;
        }
      }
    }

    *&v284 = &v319;
    *(&v284 + 1) = v47;
    v285.i64[0] = 0;
    v285.i64[1] = &v319;
    v286 = 0x2E8BA2E8BA2E8BA3 * (v320 - v319);
    v287 = 0;
    v291 = &v319;
    verticalPlacement = [(TUISmartGridLayoutConfiguration *)self->_configuration verticalPlacement];
    if ((verticalPlacement - 2) < 4)
    {
      v50 = verticalPlacement - 1;
    }

    else
    {
      v50 = 5;
    }

    v290 = v50;
    v51 = v319;
    v266 = v320;
    if (v319 != v320)
    {
      v52 = 0;
      v53 = selfCopy->_computedColumns * maxPages;
      while (1)
      {
        sub_D4950(__p, rows);
        columnsPerSection = selfCopy->_columnsPerSection;
        if (columnsPerSection)
        {
          if (!v53)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v55 = v51[6];
          columnsPerSection = [v55 columns];

          if (!v53)
          {
            goto LABEL_72;
          }
        }

        if (v53 > v52)
        {
          if (columnsPerSection >= v53 - v52)
          {
            columnsPerSection = (v53 - v52);
          }

          goto LABEL_74;
        }

LABEL_72:
        if (v53)
        {
          v56 = 0;
          goto LABEL_77;
        }

LABEL_74:
        if (columnsPerSection == 0x7FFFFFFFFFFFFFFFLL)
        {
          v56 = 0;
        }

        else
        {
          v56 = columnsPerSection;
        }

LABEL_77:
        v298.i64[0] = v56;
        v51[7] = v52;
        v51[8] = 0;
        v57 = *v51;
        v58 = v51[1];
        while (v57 != v58)
        {
          v59 = *(v57 + 32);
          rowSpan = [v59 rowSpan];
          v61 = *(v57 + 32);
          sub_D3D7C(__p, rowSpan, [v61 columnSpan], &v274);

          *(v57 + 8) = v274;
          *v57 = *(&v274 + 1) + v52;
          *(v57 + 16) = vextq_s8(v275, v275, 8uLL);
          v57 += 96;
        }

        v63 = *(&v297 + 1);
        v62 = v297;
        if (v297)
        {
          v65 = __p[0];
          v64 = __p[1];
          v66 = v296.i64[0];
          v67 = *(&v297 + 1);
          if (__p[1] != v296.i64[0])
          {
            v68 = __p[1];
            do
            {
              if (*v68)
              {
                --*v68;
              }

              ++v68;
            }

            while (v68 != v66);
            v67 = *(&v297 + 1);
          }

          v69 = v67 + 1;
          *&v297 = 0;
          *(&v297 + 1) = v69;
          if (v62 < v65)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v64 = __p[1];
          v66 = v296.i64[0];
          v69 = *(&v297 + 1);
        }

        v70 = -1;
        *&v274 = -1;
        if (v64 == v66)
        {
          goto LABEL_98;
        }

        v71 = v64;
        do
        {
          v72 = v71;
          if (v70 != -1)
          {
            if (*v71 >= v70)
            {
              v72 = &v274;
            }

            else
            {
              v72 = v71;
            }
          }

          v70 = *v72;
          *&v274 = *v72;
          ++v71;
        }

        while (v71 != v66);
        if (v70 == -1)
        {
LABEL_98:
          v70 = 0;
        }

        v63 = v70 + v69;
LABEL_100:
        if (v64 != v66)
        {
          v73 = 0;
LABEL_102:
          v74 = v64;
          do
          {
            while (*v74)
            {
              --*v74++;
              v73 = 1;
              if (v74 == v66)
              {
LABEL_109:
                v73 = 0;
                *&v297 = 0;
                ++*(&v297 + 1);
                goto LABEL_102;
              }
            }

            ++v74;
          }

          while (v74 != v66);
          if (v73)
          {
            goto LABEL_109;
          }
        }

        if ([(TUISmartGridLayoutConfiguration *)selfCopy->_configuration columnMultiple]&& [(TUISmartGridLayoutConfiguration *)selfCopy->_configuration truncate]&& v63 > [(TUISmartGridLayoutConfiguration *)selfCopy->_configuration columnMultiple])
        {
          v75 = *(&v297 + 1);
          if (v298.i64[0])
          {
            v75 = v298.i64[0];
          }

          if (v63 < v75)
          {
            columnMultiple = [(TUISmartGridLayoutConfiguration *)selfCopy->_configuration columnMultiple];
            v77 = v63 / columnMultiple * columnMultiple;
            v297 = 0uLL;
            if (v77 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v77 = 0;
            }

            v298.i64[0] = v77;
            v78 = *v51;
            v79 = v51[1];
            while (v78 != v79)
            {
              v80 = *(v78 + 32);
              rowSpan2 = [v80 rowSpan];
              v82 = *(v78 + 32);
              sub_D3D7C(__p, rowSpan2, [v82 columnSpan], &v274);

              *(v78 + 8) = v274;
              *v78 = *(&v274 + 1) + v52;
              *(v78 + 16) = vextq_s8(v275, v275, 8uLL);
              v78 += 96;
            }
          }
        }

        v83 = __p[1];
        if (v298.i64[0])
        {
          v84 = v298.i64[0];
        }

        else
        {
          v84 = *(&v297 + 1);
        }

        v51[9] = v84;
        v51[10] = 1;
        if (v83)
        {
          v296.i64[0] = v83;
          operator delete(v83);
        }

        v52 += v84;
        v51 += 11;
        rows = v267;
        if (v51 == v266)
        {
          goto LABEL_175;
        }
      }
    }

    v52 = 0;
LABEL_175:
    sub_D3F1C(&v319);
    v322 = v52;
    v122 = v323;
    self = selfCopy;
    computedColumnWidth = selfCopy->_computedColumnWidth;
    computedColumnSpacing = selfCopy->_computedColumnSpacing;
    computedRowSpacing = selfCopy->_computedRowSpacing;
    controller = [contentCopy controller];
    [controller contentsScale];
    v304 = v13;
    v305 = v52;
    v306 = v122;
    v307 = *&v5;
    v308 = v7;
    v309 = v9;
    v310 = v11;
    v311 = computedColumnWidth;
    v312 = computedColumnSpacing;
    v315 = computedRowSpacing;
    v316 = computedLayoutDirection;
    v317 = v127;
    v318 = 0;
    if (v52 < 2 || computedColumnSpacing == 0.0)
    {
      v313 = computedColumnWidth;
    }

    else
    {
      v128 = computedColumnWidth;
      if (v127 > 0.0)
      {
        v128 = floor(computedColumnWidth * v127) / v127;
      }

      v313 = v128;
      computedColumnSpacing = ((computedColumnWidth - v128) * v52 + computedColumnSpacing * (v52 - 1)) / (v52 - 1);
    }

    v314 = computedColumnSpacing;

    if ([(TUISmartGridLayoutConfiguration *)selfCopy->_configuration paginated])
    {
      v129 = selfCopy->_computedColumns;
      v318 = v129;
      if (!v129)
      {
        v129 = v305;
      }

      v130 = v312;
      if (v312 == 0.0 || v129 < 2)
      {
        v313 = v311;
      }

      else
      {
        v131 = v311;
        if (v317 > 0.0)
        {
          v131 = floor(v311 * v317) / v317;
        }

        v313 = v131;
        v130 = ((v311 - v131) * v129 + v312 * (v129 - 1)) / (v129 - 1);
      }

      v314 = v130;
    }

    v132 = sub_618AC(&v319, &dword_4 + 1);
    v135 = v132;
    if (v321[1] == v132)
    {
      *__p = CGSizeZero;
      v296 = 0u;
      v297 = 0u;
      sub_61DD8(&selfCopy->_cellDividers, __p);
      *&v274 = &v296.i64[1];
      sub_63928(&v274);
    }

    else
    {
      if (v318)
      {
        v136 = v313;
        v137 = v317;
        v138 = v314 + v313;
        if (v314 == 0.0)
        {
          v140 = v138 * 0.0;
          if (v317 > 0.0)
          {
            v140 = floor(v140 * v317) / v317;
          }
        }

        else
        {
          v139 = v138 - v314;
          if (v317 > 0.0)
          {
            v139 = floor(v139 * v317) / v317;
          }

          v140 = v139 - v313;
        }
      }

      else
      {
        v136 = v313;
        v137 = v317;
        v138 = v314 + v313;
        v140 = 0.0;
      }

      if (v314 == 0.0)
      {
        v144 = v138 - v314;
        if (v137 <= 0.0)
        {
          v145 = v138 * 0.0;
        }

        else
        {
          v144 = floor(v137 * v144) / v137;
          v145 = floor(v137 * (v138 * 0.0)) / v137;
        }

        v146 = 0.0;
        if (v318)
        {
          v146 = v145;
        }

        v134.n128_f64[0] = v140 + v144;
        v133.n128_f64[0] = v146 + v145;
      }

      else
      {
        v141 = v314 * -2.0 + v138 * 2.0;
        if (v137 <= 0.0)
        {
          v142 = v138 - v314;
          v143 = v138 - v314 - v136;
        }

        else
        {
          v141 = floor(v137 * v141) / v137;
          v142 = floor(v137 * (v138 - v314)) / v137;
          v143 = v142 - v136;
        }

        if (!v318)
        {
          v143 = 0.0;
        }

        v134.n128_f64[0] = v140 + v141 - v136;
        v133.n128_f64[0] = v143 + v142 - v136;
      }

      v133.n128_f64[0] = v134.n128_f64[0] - v133.n128_f64[0];
      v134.n128_u64[0] = 0x7FF8000000000000;
      sub_673FC(&v272, 0, *(v132 + 40), *(v132 + 48), v133, v134);
      v148 = v147;
      v150 = v149;
      v135[9] = v147;
      v135[10] = v149;
      sub_61AFC(v135, 1);
      v151 = objc_opt_new();
      sub_61C34(&v319, v135, v151);
      v152 = v151;
      __p[0] = v148;
      __p[1] = v150;
      v296 = v152;
      v297 = 0uLL;
      sub_61DD8(&selfCopy->_cellDividers, __p);
      *&v274 = &v296.i64[1];
      sub_63928(&v274);
    }

    v153 = v319;
    v154 = v320;
    if (v319 == v320)
    {
      v161 = v319;
LABEL_226:
      v162 = v307;
      v274 = &v319;
      v275 = (0x2E8BA2E8BA2E8BA3 * (v161 - v153));
      sub_67714(&v274);
      *&v272 = &v319;
      *(&v272 + 1) = 0x2E8BA2E8BA2E8BA3 * (v320 - v319);
      v273 = *(&v272 + 1);
      sub_67714(&v272);
      *__p = v274;
      v296 = v275;
      v297 = v272;
      v298 = v273;
      *&v299 = 0;
      *(&v299 + 1) = v162;
      LODWORD(v300) = 0;
      v303 = 0;
      v301[1] = 0;
      v302 = 0;
      sub_61F88(__p, &v304, &v319, 0);
      v164 = v163;
      v165 = v162 + v163;
      v166.n128_u64[0] = 0;
      sub_D3F90(&v284, &v304, &selfCopy->_cellDividers, v166, v162 + v163);
      v168 = v167;
      v170 = v169;
      v272 = &v319;
      v273 = (0x2E8BA2E8BA2E8BA3 * (v320 - v319));
      sub_690A0(&v272);
      *&v270 = &v319;
      *(&v270 + 1) = 0x2E8BA2E8BA2E8BA3 * (v320 - v319);
      v271 = *(&v270 + 1);
      sub_690A0(&v270);
      v258 = v168;
      v171 = v165 + v170;
      v274 = v272;
      v275 = v273;
      v276 = v270;
      v277 = v271;
      v278 = 0;
      v279 = v165 + v170;
      v280 = 0;
      v282 = 0;
      v283 = 0;
      v281 = 0;
      sub_62984(&v274, &v304, &v319, 0);
      v173 = v172;
      v174 = v309;
      sub_95A1C(&v272);
      sub_D4170(&v272, &v319, &v304, &v319, 0.0, v164, v170);
      v175 = [v272 copy];
      nonScrollableAdornmentLayouts = selfCopy->_nonScrollableAdornmentLayouts;
      selfCopy->_nonScrollableAdornmentLayouts = v175;

      if (v281)
      {
        v282 = v281;
        operator delete(v281);
      }

      v177 = v171 + v173;
      if (v301[1])
      {
        v302 = v301[1];
        operator delete(v301[1]);
      }

      v121 = v177 + v174;
      goto LABEL_231;
    }

LABEL_216:
    v155 = v153[3];
    v156 = v153[4];
    while (1)
    {
      if (v155 == v156)
      {
        v153 += 11;
        if (v153 == v154)
        {
          v161 = v320;
          v153 = v319;
          goto LABEL_226;
        }

        goto LABEL_216;
      }

      v157 = *(v155 + 32);
      if ([v157 role] == &dword_0 + 3)
      {
      }

      else
      {
        v158 = *(v155 + 32);
        role = [v158 role];

        if (role != &dword_4)
        {
          goto LABEL_222;
        }
      }

      *v155 = v153[7];
      v160 = v153[9];
      *(v155 + 8) = 0;
      *(v155 + 16) = v160;
      *(v155 + 24) = 1;
LABEL_222:
      v155 += 96;
    }
  }

  v32 = v319;
  v33 = v320;
  if (v319 != v320)
  {
    v34 = 0;
    v35 = self->_computedColumns * maxPages;
    v268 = v320;
    v265 = v35;
    while (1)
    {
      v32[7] = v34;
      v32[8] = 0;
      columns2 = self->_columnsPerSection;
      if (columns2)
      {
        if (!v35)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v37 = v32[6];
        columns2 = [v37 columns];

        if (!v35)
        {
          goto LABEL_34;
        }
      }

      if (v35 > v34)
      {
        if (columns2 >= v35 - v34)
        {
          columns2 = (v35 - v34);
        }

LABEL_36:
        if (columns2 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v38 = -1;
        }

        else
        {
          v38 = columns2 - 1;
        }

        goto LABEL_39;
      }

LABEL_34:
      if (!v35)
      {
        goto LABEL_36;
      }

      v38 = -1;
LABEL_39:
      v40 = *v32;
      v39 = v32[1];
      if (*v32 == v39)
      {
        v41 = 0;
      }

      else
      {
        v41 = 0;
        do
        {
          v42 = *(v40 + 32);
          columnSpan = [v42 columnSpan];
          v44 = v38 >= v41;
          if (v38 >= v41)
          {
            v45 = columnSpan;
          }

          else
          {
            v45 = 0;
          }

          if (v38 >= v41)
          {
            v46 = v41;
          }

          else
          {
            v46 = 0;
          }

          if (v38 >= v41)
          {
            v41 += columnSpan;
          }

          *v40 = v46 + v34;
          *(v40 + 8) = 0;
          *(v40 + 16) = v45;
          *(v40 + 24) = v44;
          v40 += 96;
        }

        while (v40 != v39);
      }

      v32[9] = v41;
      v32[10] = 1;
      v34 += v41;
      v32 += 11;
      self = selfCopy;
      v35 = v265;
      if (v32 == v268)
      {
        v32 = v319;
        v33 = v320;
        goto LABEL_129;
      }
    }
  }

  v34 = 0;
LABEL_129:
  v85 = 1;
  v322 = v34;
  v323 = 1;
  if (v32 != v33)
  {
LABEL_130:
    v86 = v32[3];
    v87 = v32[4];
    while (1)
    {
      if (v86 == v87)
      {
        v32 += 11;
        if (v32 == v33)
        {
          v34 = v322;
          v85 = v323;
          break;
        }

        goto LABEL_130;
      }

      v88 = *(v86 + 32);
      if ([v88 role] == &dword_0 + 3)
      {
      }

      else
      {
        v89 = *(v86 + 32);
        role2 = [v89 role];

        if (role2 != &dword_4)
        {
          goto LABEL_136;
        }
      }

      *v86 = v32[7];
      v91 = v32[9];
      *(v86 + 8) = 0;
      *(v86 + 16) = v91;
      *(v86 + 24) = 1;
LABEL_136:
      v86 += 96;
    }
  }

  v93 = self->_computedColumnWidth;
  v92 = self->_computedColumnSpacing;
  v94 = self->_computedRowSpacing;
  controller2 = [contentCopy controller];
  [controller2 contentsScale];
  v304 = v13;
  v305 = v34;
  v306 = v85;
  v307 = *&v5;
  v308 = v7;
  v309 = v9;
  v310 = v11;
  v311 = v93;
  v312 = v92;
  v315 = v94;
  v316 = computedLayoutDirection;
  v317 = v96;
  v318 = 0;
  if (v34 < 2 || v92 == 0.0)
  {
    v313 = v93;
  }

  else
  {
    v97 = v93;
    if (v96 > 0.0)
    {
      v97 = floor(v93 * v96) / v96;
    }

    v313 = v97;
    v92 = ((v93 - v97) * v34 + v92 * (v34 - 1)) / (v34 - 1);
  }

  v314 = v92;

  if ([(TUISmartGridLayoutConfiguration *)self->_configuration paginated])
  {
    v98 = self->_computedColumns;
    v318 = v98;
    if (!v98)
    {
      v98 = v305;
    }

    v99 = v312;
    if (v312 == 0.0 || v98 < 2)
    {
      v313 = v311;
    }

    else
    {
      v100 = v311;
      if (v317 > 0.0)
      {
        v100 = floor(v311 * v317) / v317;
      }

      v313 = v100;
      v99 = ((v311 - v100) * v98 + v312 * (v98 - 1)) / (v98 - 1);
    }

    v314 = v99;
  }

  v101 = v307;
  v274 = &v319;
  v275 = (0x2E8BA2E8BA2E8BA3 * (v320 - v319));
  sub_67714(&v274);
  *&v284 = &v319;
  *(&v284 + 1) = 0x2E8BA2E8BA2E8BA3 * (v320 - v319);
  v285 = *(&v284 + 1);
  sub_67714(&v284);
  *__p = v274;
  v296 = v275;
  v297 = v284;
  v298 = v285;
  *&v299 = 0;
  *(&v299 + 1) = v101;
  LODWORD(v300) = 0;
  v303 = 0;
  v301[1] = 0;
  v302 = 0;
  sub_61F88(__p, &v304, &v319, 0);
  v103 = v102;
  v104 = v101 + v102;
  v105 = v319;
  v106 = 0;
  if (v320 != v319)
  {
    v107 = v319 + 1;
    while (*v107 == *(v107 - 1))
    {
      ++v106;
      v107 += 11;
      if (0x2E8BA2E8BA2E8BA3 * (v320 - v319) == v106)
      {
        v106 = 0x2E8BA2E8BA2E8BA3 * (v320 - v319);
        break;
      }
    }
  }

  *&v284 = &v319;
  *(&v284 + 1) = v106;
  v285.i64[0] = 0;
  v285.i64[1] = &v319;
  v287 = 0;
  v288 = 0;
  v286 = 0x2E8BA2E8BA2E8BA3 * (v320 - v319);
  v289 = v104;
  v290 = 0;
  v293 = 0;
  v294 = 0;
  v292 = 0;
  v108 = 1;
  if (v320 != v319)
  {
    do
    {
      for (i = *v105; i != v105[1]; i += 96)
      {
        v110 = *(i + 48);
        if ((*(i + 56) - v110) >> 6 > v108)
        {
          v108 = (*(i + 56) - v110) >> 6;
        }
      }

      v105 += 11;
    }

    while (v105 != v320);
  }

  v111 = sub_D3544(&v284, &v304, &v319, v108);
  v113 = v112;
  v272 = &v319;
  v273 = (0x2E8BA2E8BA2E8BA3 * (v320 - v319));
  sub_690A0(&v272);
  *&v270 = &v319;
  *(&v270 + 1) = 0x2E8BA2E8BA2E8BA3 * (v320 - v319);
  v271 = *(&v270 + 1);
  sub_690A0(&v270);
  v114 = v104 + v113;
  v274 = v272;
  v275 = v273;
  v276 = v270;
  v277 = v271;
  v278 = 0;
  v279 = v114;
  v280 = 0;
  v282 = 0;
  v283 = 0;
  v281 = 0;
  sub_62984(&v274, &v304, &v319, 0);
  v116 = v115;
  v117 = v309;
  sub_95A1C(&v272);
  sub_D3B70(&v272, &v292, &v319, &v304, &v319, 0.0, v103);
  v118 = [v272 copy];
  v119 = self->_nonScrollableAdornmentLayouts;
  self->_nonScrollableAdornmentLayouts = v118;

  if (v281)
  {
    v282 = v281;
    operator delete(v281);
  }

  if (v292)
  {
    v293 = v292;
    operator delete(v292);
  }

  v258 = v111;
  v120 = v114 + v116;
  if (v301[1])
  {
    v302 = v301[1];
    operator delete(v301[1]);
  }

  v121 = v120 + v117;
LABEL_231:
  v257 = v121;
  v178 = v322;
  v179 = v323;
  v181 = self->_computedColumnWidth;
  v180 = self->_computedColumnSpacing;
  v182 = self->_computedRowSpacing;
  controller3 = [contentCopy controller];
  [controller3 contentsScale];
  v185 = *&v184;
  __p[0] = v260;
  __p[1] = v178;
  v296.i64[0] = v179;
  v296.i64[1] = v5;
  *&v297 = v259;
  *(&v297 + 1) = v9;
  *v298.i64 = v11;
  *&v298.i64[1] = v181;
  *&v299 = v180;
  *(&v300 + 1) = v182;
  v301[0] = computedLayoutDirection;
  v301[1] = v184;
  v302 = 0;
  if (v178 < 2 || v180 == 0.0)
  {
    *(&v299 + 1) = v181;
    v186 = v181;
    v187 = v180;
  }

  else
  {
    v186 = v181;
    if (*&v184 > 0.0)
    {
      v186 = floor(v181 * *&v184) / *&v184;
    }

    *(&v299 + 1) = v186;
    v187 = ((v181 - v186) * v178 + v180 * (v178 - 1)) / (v178 - 1);
  }

  *&v300 = v187;

  if ([(TUISmartGridLayoutConfiguration *)self->_configuration paginated])
  {
    v188 = self->_computedColumns;
    v302 = v188;
    if (v188)
    {
      v189 = v188;
    }

    else
    {
      v189 = v178;
    }

    if (v180 == 0.0 || v189 < 2)
    {
      *(&v299 + 1) = v181;
    }

    else
    {
      v190 = v181;
      if (v185 > 0.0)
      {
        v190 = floor(v181 * v185) / v185;
      }

      *(&v299 + 1) = v190;
      v180 = ((v181 - v190) * v189 + v180 * (v189 - 1)) / (v189 - 1);
      v181 = v190;
    }

    *&v300 = v180;
    v186 = v181;
    v187 = v180;
  }

  else
  {
    v188 = 0;
  }

  v254 = v188;
  v191 = v319;
  v192 = v320;
  while (v191 != v192)
  {
    v194 = *v191;
    v193 = v191[1];
    while (v194 != v193)
    {
      if (*(v194 + 16))
      {
        v195 = *(v194 + 24) == 0;
      }

      else
      {
        v195 = 1;
      }

      v196 = v195;
      sub_62E70(v194, v196);
      v194 += 96;
    }

    v198 = v191[3];
    v197 = v191[4];
    while (v198 != v197)
    {
      if (*(v198 + 16))
      {
        v199 = *(v198 + 24) == 0;
      }

      else
      {
        v199 = 1;
      }

      v200 = v199;
      sub_61AFC(v198, v200);
      v198 += 96;
    }

    v191 += 11;
  }

  v256 = v178;
  p_cellBounds = &self->_cellBounds;
  sub_61808(&self->_cellBounds, self->_cellBounds.__begin_, self->_cellBounds.__end_);
  v202 = v319;
  for (j = v320; v202 != j; v202 += 11)
  {
    v204 = *v202;
    v203 = v202[1];
    while (v204 != v203)
    {
      if ((*(v204 + 40) & 1) == 0)
      {
        v206 = *(v204 + 48);
        v205 = *(v204 + 56);
        if (v206 == v205)
        {
          origin = CGRectNull.origin;
          size = CGRectNull.size;
        }

        else
        {
          origin = v206[2];
          size = vsubq_f64(vaddq_f64(v205[-2], v205[-1]), origin);
        }

        v209 = origin;
        origin.x = size.height;
        v269 = size;
        y = origin.y;
        if (!CGRectIsNull(*(&size - 1)))
        {
          v211 = *(v204 + 32);
          end = selfCopy->_cellBounds.__end_;
          cap = selfCopy->_cellBounds.__cap_;
          if (end >= cap)
          {
            v216 = 0xCCCCCCCCCCCCCCCDLL * ((end - p_cellBounds->__begin_) >> 3);
            v217 = v216 + 1;
            if (v216 + 1 > 0x666666666666666)
            {
              sub_4050();
            }

            v218 = 0xCCCCCCCCCCCCCCCDLL * ((cap - p_cellBounds->__begin_) >> 3);
            if (2 * v218 > v217)
            {
              v217 = 2 * v218;
            }

            if (v218 >= 0x333333333333333)
            {
              v219 = 0x666666666666666;
            }

            else
            {
              v219 = v217;
            }

            *&v276 = &self->_cellBounds;
            if (v219)
            {
              sub_68FF4(p_cellBounds, v219);
            }

            v220 = 40 * v216;
            *&v274 = 0;
            *(&v274 + 1) = v220;
            v275.i64[1] = 0;
            *v220 = v211;
            *(v220 + 8) = v209;
            *(v220 + 24) = v269;
            v275.i64[0] = 40 * v216 + 40;
            sub_68F2C(p_cellBounds, &v274);
            v215 = selfCopy;
            v214 = selfCopy->_cellBounds.__end_;
            sub_6904C(&v274);
          }

          else
          {
            *end = v211;
            *(end + 8) = v209;
            v214 = end + 40;
            *(end + 24) = v269;
            v215 = selfCopy;
          }

          v215->_cellBounds.__end_ = v214;
        }
      }

      v204 += 96;
    }
  }

  begin = selfCopy->_scrollAnchors.__begin_;
  p_begin = &selfCopy->_scrollAnchors.__begin_;
  if (begin != selfCopy->_scrollAnchors.__end_)
  {
    selfCopy->_scrollAnchors.__end_ = begin;
  }

  if ([(TUISmartGridLayoutConfiguration *)selfCopy->_configuration paginated])
  {
    if (v255)
    {
      v223 = v256 - 1;
      v224 = &v256[v255 - 1];
      if (v255 <= v224)
      {
        v225 = 0;
        v226 = v186 + v187;
        v227 = v187 * -2.0;
        v228 = v223 / v255 * v255;
        v229 = v223 % v255;
        v230 = v224 / v255;
        do
        {
          v231 = v187 + v186;
          if (v187 == 0.0)
          {
            v235 = v231 * v255;
            if (v185 > 0.0)
            {
              v235 = floor(v235 * v185) / v185;
            }

            v236 = v231 * 0.0;
            if (v185 > 0.0)
            {
              v236 = floor(v236 * v185) / v185;
            }

            v234 = v235 + v236;
          }

          else
          {
            v232 = -(v187 - v231 * (v255 + 1));
            if (v185 > 0.0)
            {
              v232 = floor(v232 * v185) / v185;
            }

            v233 = v231 - v187;
            if (v185 > 0.0)
            {
              v233 = floor(v233 * v185) / v185;
            }

            v234 = v232 - v186 + v233 - v186;
          }

          if (computedLayoutDirection == &dword_0 + 2)
          {
            if (v187 == 0.0)
            {
              v240 = v226 * v228;
              if (v185 <= 0.0)
              {
                v241 = v226 * (v229 + 1) - v187;
              }

              else
              {
                v240 = floor(v240 * v185) / v185;
                v241 = floor((v226 * (v229 + 1) - v187) * v185) / v185;
              }

              v242 = v240 + v241;
            }

            else
            {
              v237 = v226 * (v228 + 1) - v187;
              if (v185 <= 0.0)
              {
                v238 = v227 + v226 * (v229 + 2);
              }

              else
              {
                v237 = floor(v237 * v185) / v185;
                v238 = floor((v227 + v226 * (v229 + 2)) * v185) / v185;
              }

              v242 = v237 - v186 + v238 - v186;
            }

            v239 = v242 - v225 * v234;
          }

          else
          {
            v239 = v234 * v225;
          }

          *&v274 = v239;
          sub_94B48(p_begin, &v274);
          ++v225;
        }

        while (v225 < v230);
      }
    }
  }

  else
  {
    v243 = v319;
    v244 = v320;
    if (v319 != v320)
    {
      if (computedLayoutDirection == &dword_0 + 2)
      {
        v245 = v11;
      }

      else
      {
        v245 = -v259;
      }

      do
      {
        v246 = *v243;
        v247 = v243[1];
        while (v246 != v247)
        {
          v248 = v246[2];
          if (v248)
          {
            v249 = v246[3] == 0;
          }

          else
          {
            v249 = 1;
          }

          if (!v249)
          {
            sub_67BF8(__p, *v246, v248, 0);
            *&v274 = v245 + v250;
            sub_94B48(p_begin, &v274);
          }

          v246 += 12;
        }

        v243 += 11;
      }

      while (v243 != v244);
    }
  }

  v251 = v300;
  *&selfCopy->_columnSystem._specifiedColumnSpacing = v299;
  *&selfCopy->_columnSystem._computedColumnSpacing = v251;
  *&selfCopy->_columnSystem._layoutDirection = *v301;
  v252 = v296;
  *&selfCopy->_columnSystem._containerWidth = *__p;
  *&selfCopy->_columnSystem._rows = v252;
  v253 = v298;
  *&selfCopy->_columnSystem._insets.left = v297;
  selfCopy->_columnSystem._columnsPerPage = v302;
  *&selfCopy->_columnSystem._insets.right = v253;
  selfCopy->_contentLayoutSize.width = v258;
  selfCopy->_contentLayoutSize.height = v257;
  *&selfCopy->_layoutSize.width = v260;
  selfCopy->_layoutSize.height = v257;
  if (v328)
  {
    v329 = v328;
    operator delete(v328);
  }

  if (v326)
  {
    v327 = v326;
    operator delete(v326);
  }

  if (v324)
  {
    v325 = v324;
    operator delete(v324);
  }

  __p[0] = v321;
  sub_63A20(__p);
  __p[0] = &v319;
  sub_63C64(__p);
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
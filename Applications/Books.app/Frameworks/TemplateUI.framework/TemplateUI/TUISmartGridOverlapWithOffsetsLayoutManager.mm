@interface TUISmartGridOverlapWithOffsetsLayoutManager
+ (void)configureContentLayout:(id)layout configuration:(id)configuration;
+ (void)configureScrollLayout:(id)layout configuration:(id)configuration;
- (CGSize)contentLayoutSize;
- (CGSize)layoutSize;
- (CGSize)scrollLayoutSizeWithSize:(CGSize)size;
- (TUISmartGridOverlapWithOffsetsLayoutManager)initWithContent:(id)content;
- (void)layoutContent:(id)content;
@end

@implementation TUISmartGridOverlapWithOffsetsLayoutManager

- (TUISmartGridOverlapWithOffsetsLayoutManager)initWithContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = TUISmartGridOverlapWithOffsetsLayoutManager;
  v6 = [(TUISmartGridOverlapWithOffsetsLayoutManager *)&v9 init];
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
  [layoutCopy setContainingHeight:NAN];
}

+ (void)configureContentLayout:(id)layout configuration:(id)configuration
{
  layoutCopy = layout;
  configurationCopy = configuration;
  [configurationCopy width];
  [layoutCopy setContainingWidth:?];
}

- (void)layoutContent:(id)content
{
  contentCopy = content;
  computedLayoutDirection = [contentCopy computedLayoutDirection];
  v5 = objc_msgSend_children(contentCopy);
  sub_63EE4(&v121, v5, self->_content, 0);

  v6 = v121;
  if (v121 == v122)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v9 = *v6;
      v8 = v6[1];
      v6 += 11;
      v7 -= 0x5555555555555555 * ((v8 - v9) >> 5);
    }

    while (v6 != v122);
  }

  [(TUISmartGridLayoutConfiguration *)self->_configuration contentInsets];
  v117 = v10;
  v12 = v11;
  v14 = v13;
  [(TUISmartGridLayoutConfiguration *)self->_configuration width];
  v16 = v15;
  additionalConfiguration = [(TUISmartGridLayoutConfiguration *)self->_configuration additionalConfiguration];
  v18 = objc_opt_class();
  v19 = [additionalConfiguration objectForKeyedSubscript:@"offsets"];
  v20 = TUIDynamicCast(v18, v19);

  v21 = objc_opt_class();
  widthSnap = [(TUISmartGridLayoutConfiguration *)self->_configuration widthSnap];
  v23 = [widthSnap identifierForValue:v16];
  v24 = TUIDynamicCast(v21, v23);

  if (v24)
  {
    v25 = objc_opt_class();
    v26 = [v20 objectForKeyedSubscript:v24];
    v120 = TUIDynamicCast(v25, v26);
  }

  else
  {
    v120 = 0;
  }

  v27 = objc_opt_class();
  v28 = [additionalConfiguration objectForKeyedSubscript:@"minHOffset"];
  v29 = TUIDynamicCast(v27, v28);

  v30 = objc_opt_class();
  v31 = [additionalConfiguration objectForKeyedSubscript:@"maxHOffset"];
  v32 = TUIDynamicCast(v30, v31);

  v33 = objc_msgSend_columnWidth(self->_configuration);
  v35 = TUILengthValueWithDefault(v33, v34, 120.0);
  v113 = [v120 count];
  v111 = v32;
  if (v29 && v32)
  {
    [v29 doubleValue];
    v37 = v36;
    [v32 doubleValue];
    v39 = v16 - v12 - v14;
    v40 = v39 - v35;
    v41 = vcvtpd_u64_f64((v39 - v35) / v37);
    if (v7 >= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = v7;
    }
  }

  else
  {
    v43 = v113;
    if (v113 >= v7)
    {
      v43 = v7;
    }

    if (v120)
    {
      v42 = v43;
    }

    else
    {
      v42 = v7;
    }

    v39 = v16 - v12 - v14;
    v40 = v39 - v35;
    v38 = 1.79769313e308;
  }

  v118 = v42;
  v44 = (v42 - 1);
  v45 = v40 / v44;
  if (v45 >= v38)
  {
    v46 = v38;
  }

  else
  {
    v46 = v45;
  }

  v47 = v39 - (v35 + v44 * v46);
  v48 = v12 + v47 * 0.5;
  v49 = v16 - v14 - v47 * 0.5;
  if (computedLayoutDirection == &dword_0 + 2)
  {
    v50 = v49;
  }

  else
  {
    v50 = v48;
  }

  v51 = objc_opt_class();
  v52 = [additionalConfiguration objectForKeyedSubscript:@"minVerticalCutoff"];
  v53 = TUIDynamicCast(v51, v52);

  if (v53)
  {
    [v53 doubleValue];
    v55 = v54;
  }

  else
  {
    v55 = 12.0;
  }

  v56 = objc_msgSend_specifiedHeight(self->_configuration);
  v57 = v121;
  v58 = 0x2E8BA2E8BA2E8BA3 * (v122 - v121);
  v110 = contentCopy;
  v108 = v24;
  v109 = v20;
  selfCopy = self;
  v106 = v16;
  v114 = v59;
  if (v122 == v121)
  {
    v62 = v56;
    v60 = 0;
  }

  else
  {
    v60 = 0;
    v61 = v121 + 1;
    while (*v61 == *(v61 - 1))
    {
      ++v60;
      v61 += 11;
      if (v58 == v60)
      {
        v62 = v56;
        v63 = 0.0;
        v64 = v118;
        goto LABEL_52;
      }
    }

    v62 = v56;
  }

  v63 = 0.0;
  v64 = v118;
  if (v60 != v58)
  {
    v65 = 0;
    v66 = 0;
    do
    {
      v67 = v57[11 * v60];
      v68 = v67 + 96 * v66;
      if (v65 >= v118)
      {
        sub_62E70(v67 + 96 * v66, 1);
      }

      else
      {
        sub_62E70(v67 + 96 * v66, 0);
        v69.n128_f64[0] = v35;
        v70.n128_u64[0] = 0x7FF8000000000000;
        sub_673FC(v130, 0, *(v68 + 48), *(v68 + 56), v69, v70);
        *(v68 + 72) = v72;
        *(v68 + 80) = v71;
        if (v63 < v71)
        {
          v63 = v71;
        }
      }

      v57 = v121;
      v73 = 0x2E8BA2E8BA2E8BA3 * (v122 - v121);
      if (v60 >= v73)
      {
        v66 = 0;
LABEL_49:
        v60 = 0x2E8BA2E8BA2E8BA3 * (v122 - v121);
      }

      else
      {
        ++v66;
        v74 = &v121[11 * v60 + 1];
        while (v66 >= 0xAAAAAAAAAAAAAAABLL * ((*v74 - *(v74 - 1)) >> 5))
        {
          v66 = 0;
          ++v60;
          v74 += 11;
          if (v73 == v60)
          {
            goto LABEL_49;
          }
        }
      }

      ++v65;
    }

    while (v66 || v60 != v73);
  }

LABEL_52:
  v75 = TUILengthValueWithDefault(v62, v114, v63 - v55 - v117);
  v76 = v75;
  v77 = v121;
  v78 = 0x2E8BA2E8BA2E8BA3 * (v122 - v121);
  v79 = 0;
  if (v122 != v121)
  {
    v80 = v121 + 1;
    while (*v80 == *(v80 - 1))
    {
      ++v79;
      v80 += 11;
      if (v78 == v79)
      {
        goto LABEL_89;
      }
    }
  }

  if (v79 != v78)
  {
    v81 = 0;
    v82 = 0;
    v112 = v55 + v75;
    v83 = -v46;
    if (computedLayoutDirection != &dword_0 + 2)
    {
      v83 = v46;
    }

    v115 = v83;
    v116 = v53;
    while (v81 != v64)
    {
      v84 = v77[11 * v79] + 96 * v82;
      v85 = *(v84 + 80);
      if (v120)
      {
        v86 = objc_opt_class();
        v113 = [v120 objectAtIndexedSubscript:v81 % v113];
        v88 = TUIDynamicCast(v86, v113);

        [v88 doubleValue];
        v90 = v89;
      }

      else
      {
        v90 = (8 * (17 * v81 % 5));
      }

      if (v76 > v85 + v90 - v55)
      {
        v90 = v112 - v85;
      }

      if (computedLayoutDirection == &dword_0 + 2)
      {
        v91 = v50 - v35;
      }

      else
      {
        v91 = v50;
      }

      v92 = *(v84 + 48);
      v93 = *(v84 + 56);
      if (v92 != v93)
      {
        v94 = v117 + v90;
        v95 = 0.0;
        do
        {
          *(v92 + 32) = v91;
          *(v92 + 40) = v94 + v95;
          v96 = *(v92 + 8);
          v97 = *(v92 + 16);
          while (v96 != v97)
          {
            v98 = *(v96 + 56);
            v99 = __p + 152 * v98;
            v100 = (v99 + 136);
            p_y = (v99 + 144);
            v102 = v98 == -1;
            if (v98 == -1)
            {
              v103 = &CGPointZero;
            }

            else
            {
              v103 = v100;
            }

            if (v102)
            {
              p_y = &CGPointZero.y;
            }

            sub_6850C((v96 + 8), v91 - v103->x + *(v96 + 72), v94 + v95 - *p_y + *(v96 + 64));
            v96 += 96;
          }

          v95 = v95 + *(v92 + 56);
          v92 += 64;
        }

        while (v92 != v93);
      }

      v77 = v121;
      v104 = 0x2E8BA2E8BA2E8BA3 * (v122 - v121);
      if (v79 >= v104)
      {
        v82 = 0;
        v79 = 0x2E8BA2E8BA2E8BA3 * (v122 - v121);
        v53 = v116;
        v64 = v118;
      }

      else
      {
        ++v82;
        v105 = &v121[11 * v79 + 1];
        v53 = v116;
        v64 = v118;
        while (v82 >= 0xAAAAAAAAAAAAAAABLL * ((*v105 - *(v105 - 1)) >> 5))
        {
          v82 = 0;
          ++v79;
          v105 += 11;
          if (v104 == v79)
          {
            v79 = 0x2E8BA2E8BA2E8BA3 * (v122 - v121);
            break;
          }
        }
      }

      ++v81;
      v50 = v50 + v115;
      if (!v82 && v79 == v104)
      {
        break;
      }
    }
  }

LABEL_89:
  selfCopy->_contentLayoutSize.width = v106;
  selfCopy->_contentLayoutSize.height = v117 + v76;
  selfCopy->_layoutSize = selfCopy->_contentLayoutSize;

  if (__p)
  {
    v129 = __p;
    operator delete(__p);
  }

  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

  v130[0] = &v123;
  sub_63A20(v130);
  v130[0] = &v121;
  sub_63C64(v130);
}

- (CGSize)scrollLayoutSizeWithSize:(CGSize)size
{
  width = self->_layoutSize.width;
  height = self->_layoutSize.height;
  result.height = height;
  result.width = width;
  return result;
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

@end
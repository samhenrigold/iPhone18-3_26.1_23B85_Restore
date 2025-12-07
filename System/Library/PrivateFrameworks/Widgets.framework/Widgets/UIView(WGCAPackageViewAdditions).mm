@interface UIView(WGCAPackageViewAdditions)
- (BOOL)wg_imageContentsDrawWithinBounds;
- (BOOL)wg_supportsBottomCornerRadiusGivenRootView:()WGCAPackageViewAdditions withCornerRadius:supportedCorners:;
- (void)_wg_innerWalkSubviewTreeWithBlock:()WGCAPackageViewAdditions stop:;
@end

@implementation UIView(WGCAPackageViewAdditions)

- (void)_wg_innerWalkSubviewTreeWithBlock:()WGCAPackageViewAdditions stop:
{
  v6 = a3;
  v7 = v6;
  if ((*a4 & 1) == 0)
  {
    v13 = 1;
    v8 = (*(v6 + 2))(v6, self, &v13);
    *a4 = v8;
    if ((v8 & 1) == 0 && v13 == 1)
    {
      subviews = [self subviews];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __75__UIView_WGCAPackageViewAdditions___wg_innerWalkSubviewTreeWithBlock_stop___block_invoke;
      v10[3] = &unk_279ED1718;
      v11 = v7;
      v12 = a4;
      [subviews enumerateObjectsUsingBlock:v10];
    }
  }
}

- (BOOL)wg_imageContentsDrawWithinBounds
{
  layer = [self layer];
  if ([layer isMemberOfClass:objc_opt_class()])
  {
    layer2 = [self layer];
    contents = [layer2 contents];

    if (contents && (v5 = CFGetTypeID(contents), v5 == CGImageGetTypeID()))
    {
      [self bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      Width = CGImageGetWidth(contents);
      _WGMainScreenScale(Width, v15);
      Height = CGImageGetHeight(contents);
      _WGMainScreenScale(Height, v17);
      BSRectWithSize();
      v25.origin.x = v18;
      v25.origin.y = v19;
      v25.size.width = v20;
      v25.size.height = v21;
      v24.origin.x = v7;
      v24.origin.y = v9;
      v24.size.width = v11;
      v24.size.height = v13;
      v22 = CGRectContainsRect(v24, v25);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)wg_supportsBottomCornerRadiusGivenRootView:()WGCAPackageViewAdditions withCornerRadius:supportedCorners:
{
  v7 = a4;
  layer = [v7 layer];
  animationKeys = [layer animationKeys];
  v10 = [animationKeys count];

  if (v10)
  {
    goto LABEL_2;
  }

  bounds = [v7 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  _WGMainScreenScale(bounds, v21);
  BSFloatRoundForScale();
  UIRectInset();
  v61 = v23;
  v62 = v22;
  v59 = v25;
  v60 = v24;
  v67.origin.x = v14;
  v67.origin.y = v16;
  v67.size.width = v18;
  v67.size.height = v20;
  CGRectGetMaxY(v67);
  v64 = v14;
  v65 = v16;
  v63 = v18;
  UIRectInset();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  superview = [self superview];
  [self frame];
  [superview convertRect:v7 toView:?];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v66 = v41;

  if ([self clipsToBounds] & 1) != 0 || (objc_msgSend(self, "wg_imageContentsDrawWithinBounds"))
  {
    v68.origin.x = v27;
    v68.origin.y = v29;
    v68.size.width = v31;
    v68.size.height = v33;
    v83.origin.x = v36;
    v83.origin.y = v38;
    v83.size.width = v40;
    v42 = v66;
    v83.size.height = v66;
    if (!CGRectIntersectsRect(v68, v83))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v42 = v66;
  }

  v69.origin.y = v65;
  v69.origin.x = v64;
  v69.size.width = v63;
  v69.size.height = v20;
  MaxY = CGRectGetMaxY(v69);
  v70.origin.x = v36;
  v70.origin.y = v38;
  v70.size.width = v40;
  v70.size.height = v42;
  if (vabdd_f64(MaxY, CGRectGetMaxY(v70)) > 2.22044605e-16)
  {
    goto LABEL_2;
  }

  v71.origin.x = v64;
  v71.origin.y = v65;
  v71.size.width = v63;
  v71.size.height = v20;
  MinX = CGRectGetMinX(v71);
  v72.origin.x = v36;
  v72.origin.y = v38;
  v72.size.width = v40;
  v72.size.height = v42;
  if (vabdd_f64(MinX, CGRectGetMinX(v72)) <= 2.22044605e-16)
  {
    v79.origin.x = v64;
    v79.origin.y = v65;
    v79.size.width = v63;
    v79.size.height = v20;
    MaxX = CGRectGetMaxX(v79);
    v80.origin.x = v36;
    v80.origin.y = v38;
    v46 = v65;
    v80.size.width = v40;
    v80.size.height = v42;
    v54 = vabdd_f64(MaxX, CGRectGetMaxX(v80));
    v45 = a5 != 0;
    if (a5 && v54 <= 2.22044605e-16)
    {
      v52 = 12;
      goto LABEL_26;
    }

    if (v54 <= 2.22044605e-16)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v45 = a5 != 0;
    v46 = v65;
  }

  v73.origin.x = v64;
  v73.origin.y = v46;
  v73.size.width = v63;
  v73.size.height = v20;
  v47 = CGRectGetMinX(v73);
  v74.origin.x = v36;
  v74.origin.y = v38;
  v74.size.width = v40;
  v74.size.height = v66;
  if (vabdd_f64(v47, CGRectGetMinX(v74)) <= 2.22044605e-16)
  {
    v81.origin.x = v36;
    v81.origin.y = v38;
    v81.size.width = v40;
    v81.size.height = v66;
    v55 = CGRectGetMaxX(v81);
    v82.origin.y = v61;
    v82.origin.x = v62;
    v82.size.height = v59;
    v82.size.width = v60;
    v56 = CGRectGetMaxX(v82);
    if (v55 <= v56 && v45)
    {
      v52 = 4;
      goto LABEL_26;
    }

    if (v55 <= v56)
    {
      goto LABEL_27;
    }
  }

  v75.origin.y = v61;
  v75.origin.x = v62;
  v75.size.height = v59;
  v75.size.width = v60;
  v48 = CGRectGetMinX(v75);
  v76.origin.x = v36;
  v76.origin.y = v38;
  v76.size.width = v40;
  v76.size.height = v66;
  if (v48 > CGRectGetMinX(v76))
  {
LABEL_2:
    v11 = 0;
    goto LABEL_28;
  }

  v77.origin.x = v64;
  v77.origin.y = v46;
  v77.size.width = v63;
  v77.size.height = v20;
  v49 = CGRectGetMaxX(v77);
  v78.origin.x = v36;
  v78.origin.y = v38;
  v78.size.width = v40;
  v78.size.height = v66;
  v50 = vabdd_f64(v49, CGRectGetMaxX(v78));
  v11 = v50 <= 2.22044605e-16;
  if (v50 <= 2.22044605e-16 && v45)
  {
    v52 = 8;
LABEL_26:
    *a5 = v52;
LABEL_27:
    v11 = 1;
  }

LABEL_28:

  return v11;
}

@end
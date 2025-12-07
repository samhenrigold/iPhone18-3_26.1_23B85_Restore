@interface TSCHPresetImagerScatter
- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)size;
- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache;
@end

@implementation TSCHPresetImagerScatter

- (UIEdgeInsets)swatchImageEdgeInsetsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_p_nativeSize(self, a2, size.width, size.height, v3);
  v7 = width / v6;
  v9 = height / v8;
  v10 = floor(height / v8 * 9.0);
  v11 = floor(v7 * 16.0);
  v12 = floor(v9 * 6.0);
  v13 = floor(v7 * 14.0);
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (void)p_drawShadowedContentIntoContext:(CGContext *)context size:(CGSize)size contentsScale:(double)scale preset:(id)preset target:(int)target shouldCache:(BOOL *)cache
{
  height = size.height;
  width = size.width;
  v131[12] = *MEMORY[0x277D85DE8];
  v12 = objc_msgSend_seriesStyles(preset, a2, size.width, size.height, scale);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, v14, v15, v16, 0);
  if (objc_msgSend_count(v12, v18, v19, v20, v21) <= 1)
  {
    v26 = v17;
  }

  else
  {
    v26 = objc_msgSend_objectAtIndexedSubscript_(v12, v22, v23, v24, v25, 1);
  }

  v31 = v26;
  objc_msgSend_p_nativeSize(self, v27, v28, v29, v30);
  v33 = width / v32;
  v35 = height / v34;
  v36 = sub_27628CE94(16.0, 9.0, 112.0, 85.0, width / v32);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v131[0] = sub_27628CEA8(26.0, 24.0, v33);
  v131[1] = v43;
  v131[2] = sub_27628CEA8(34.0, 44.0, v33);
  v131[3] = v44;
  v131[4] = sub_27628CEA8(67.0, 60.0, v33);
  v131[5] = v45;
  v131[6] = sub_27628CEA8(95.0, 75.0, v33);
  v131[7] = v46;
  v131[8] = sub_27628CEA8(106.0, 70.0, v33);
  v131[9] = v47;
  v131[10] = sub_27628CEA8(115.0, 80.0, v33);
  v131[11] = v48;
  v130[0] = sub_27628CEA8(19.0, 17.0, v33);
  v130[1] = v49;
  v130[2] = sub_27628CEA8(37.0, 36.0, v33);
  v130[3] = v50;
  v130[4] = sub_27628CEA8(45.0, 64.0, v33);
  v130[5] = v51;
  v130[6] = sub_27628CEA8(56.0, 78.0, v33);
  v130[7] = v52;
  v130[8] = sub_27628CEA8(87.0, 66.0, v33);
  v130[9] = v53;
  v130[10] = sub_27628CEA8(109.0, 83.0, v33);
  v130[11] = v54;
  if (v33 >= v35)
  {
    v55 = v35;
  }

  else
  {
    v55 = v33;
  }

  v56 = v55 * 6.0;
  if (v56 >= 1.5)
  {
    v57 = v56;
  }

  else
  {
    v57 = 1.5;
  }

  CGContextSaveGState(context);
  v60 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v58, 0.46, 1.0, v59);
  v65 = objc_msgSend_CGColor(v60, v61, v62, v63, v64);
  CGContextSetStrokeColorWithColor(context, v65);
  CGContextSetLineCap(context, kCGLineCapSquare);
  CGContextSetLineJoin(context, kCGLineJoinMiter);
  CGContextSetLineWidth(context, 1.0);
  v132.origin.x = v36;
  v132.origin.y = v38;
  v132.size.width = v40;
  v132.size.height = v42;
  MinX = CGRectGetMinX(v132);
  v133.origin.x = v36;
  v133.origin.y = v38;
  v133.size.width = v40;
  v133.size.height = v42;
  points.x = MinX;
  points.y = CGRectGetMinY(v133);
  v134.origin.x = v36;
  v134.origin.y = v38;
  v134.size.width = v40;
  v134.size.height = v42;
  MaxX = CGRectGetMaxX(v134);
  v135.origin.x = v36;
  v135.origin.y = v38;
  v135.size.width = v40;
  v135.size.height = v42;
  v127[0] = MaxX;
  v127[1] = CGRectGetMinY(v135);
  v136.origin.x = v36;
  v136.origin.y = v38;
  v136.size.width = v40;
  v136.size.height = v42;
  v68 = CGRectGetMinX(v136);
  v137.origin.x = v36;
  v137.origin.y = v38;
  v137.size.width = v40;
  v137.size.height = v42;
  v128[0] = v68;
  v128[1] = CGRectGetMinY(v137);
  v138.origin.x = v36;
  v138.origin.y = v38;
  v138.size.width = v40;
  v138.size.height = v42;
  v69 = CGRectGetMinX(v138);
  v139.origin.x = v36;
  v139.origin.y = v38;
  v139.size.width = v40;
  v139.size.height = v42;
  v129[0] = v69;
  v129[1] = CGRectGetMaxY(v139);
  sub_27628C654(context, &points.x, v127, 2, 1.0);
  sub_27628C654(context, v128, v129, 2, 1.0);
  CGContextStrokeLineSegments(context, &points, 4uLL);
  CGContextRestoreGState(context);

  CGContextSaveGState(context);
  v74 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v70, v71, v72, v73, v17, 1538, 0);
  v78 = objc_msgSend_color(v74, v75, v76, v77);
  v83 = objc_msgSend_CGColor(v78, v79, v80, v81, v82);
  CGContextSetFillColorWithColor(context, v83);

  v87 = objc_msgSend_color(v74, v84, v85, v86);
  v92 = objc_msgSend_CGColor(v87, v88, v89, v90, v91);
  CGContextSetStrokeColorWithColor(context, v92);

  for (i = 0; i != 12; i += 2)
  {
    sub_27628CB34(context, *&v131[i] - v57, *&v131[i + 1] - v57, v57 + v57, v57 + v57, 0.0);
    if (v96 < v97)
    {
      v96 = v97;
    }

    sub_27631AEFC(context, v94, v95, v96, v96);
  }

  CGContextRestoreGState(context);

  CGContextSaveGState(context);
  v102 = objc_msgSend_p_strokeFromStyle_specific_default_(self, v98, v99, v100, v101, v31, 1538, 0);
  v106 = objc_msgSend_color(v102, v103, v104, v105);
  v111 = objc_msgSend_CGColor(v106, v107, v108, v109, v110);
  CGContextSetFillColorWithColor(context, v111);

  v115 = objc_msgSend_color(v102, v112, v113, v114);
  v120 = objc_msgSend_CGColor(v115, v116, v117, v118, v119);
  CGContextSetStrokeColorWithColor(context, v120);

  for (j = 0; j != 12; j += 2)
  {
    sub_27628CB34(context, *&v130[j] - v57, *&v130[j + 1] - v57, v57 + v57, v57 + v57, 0.0);
    if (v124 < v125)
    {
      v124 = v125;
    }

    sub_27631AEFC(context, v122, v123, v124, v124);
  }

  CGContextRestoreGState(context);
}

@end
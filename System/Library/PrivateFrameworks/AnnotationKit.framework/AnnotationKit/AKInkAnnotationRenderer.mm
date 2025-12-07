@interface AKInkAnnotationRenderer
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKInkAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  [annotation rectangle];

  return CGRectInset(*&v3, -1.0, -1.0);
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  annotationCopy = annotation;
  nilCopy = nil;
  optionsCopy = options;
  CGContextSaveGState(context);
  forDisplay = [optionsCopy forDisplay];

  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:forDisplay pageControllerOrNil:nilCopy];
  drawing = [annotationCopy drawing];
  v15 = drawing;
  if (drawing)
  {
    strokes = [drawing strokes];
    v17 = [strokes count];

    if (v17)
    {
      [v15 bounds];
      v115 = v18;
      v117 = v19;
      v111 = v21;
      v113 = v20;
      [annotationCopy rectangle];
      x = v126.origin.x;
      y = v126.origin.y;
      width = v126.size.width;
      height = v126.size.height;
      MidX = CGRectGetMidX(v126);
      v127.origin.x = x;
      v127.origin.y = y;
      v127.size.width = width;
      v127.size.height = height;
      MidY = CGRectGetMidY(v127);
      originalExifOrientation = [annotationCopy originalExifOrientation];
      v29 = x;
      v30 = y;
      v31 = width;
      v32 = height;
      if (originalExifOrientation != 1)
      {
        [AKGeometryHelper inverseExifOrientation:originalExifOrientation];
        memset(&v125, 0, sizeof(v125));
        objc_msgSend_affineTransformForExifOrientation_aboutCenter_(AKGeometryHelper, MidX, MidY);
        transform = v125;
        CGContextConcatCTM(context, &transform);
        transform = v125;
        v128.origin.x = x;
        v128.origin.y = y;
        v128.size.width = width;
        v128.size.height = height;
        v129 = CGRectApplyAffineTransform(v128, &transform);
        *(&v30 - 1) = CGRectStandardize(v129);
        v29 = v33;
      }

      v98 = MidX;
      v105 = v30;
      v107 = v31;
      v109 = v32;
      v96 = MidY;
      memset(&v125, 0, sizeof(v125));
      CGContextGetCTM(&v125, context);
      v122[0] = MEMORY[0x277D85DD0];
      v122[1] = 3221225472;
      v122[2] = sub_23F451394;
      v122[3] = &unk_278C7BD28;
      v123 = v125;
      [AKGeometryHelper exifOrientationWithConversionBlock:v122];
      transform = v125;
      v130.origin.x = x;
      v130.origin.y = y;
      v130.size.width = width;
      v130.size.height = height;
      v131 = CGRectApplyAffineTransform(v130, &transform);
      v132 = CGRectStandardize(v131);
      v133 = CGRectIntegral(v132);
      rect_16 = v133.size.height;
      rect_24 = v133.size.width;
      transform = v125;
      v133.origin.x = 0.0;
      v133.origin.y = 0.0;
      v133.size.width = 1.0;
      v133.size.height = 1.0;
      v134 = CGRectApplyAffineTransform(v133, &transform);
      v34 = v134.origin.x;
      v35 = v134.origin.y;
      v36 = v134.size.width;
      v37 = v134.size.height;
      v38 = CGRectGetWidth(v134);
      v135.origin.x = v34;
      v135.origin.y = v35;
      v135.size.width = v36;
      v135.size.height = v37;
      v39 = CGRectGetHeight(v135);
      if (v38 >= v39)
      {
        v39 = v38;
      }

      rect_8 = v39;
      v136.origin.x = v29;
      v136.origin.y = v105;
      v136.size.width = v107;
      v136.size.height = v109;
      v40 = CGRectGetWidth(v136);
      v137.origin.x = v115;
      v137.origin.y = v113;
      v137.size.width = v111;
      v137.size.height = v117;
      v41 = v40 / CGRectGetWidth(v137);
      v138.origin.x = v29;
      v138.origin.y = v105;
      v138.size.width = v107;
      v138.size.height = v109;
      v42 = CGRectGetHeight(v138);
      v139.origin.x = v115;
      v139.origin.y = v113;
      v139.size.width = v111;
      v139.size.height = v117;
      v43 = v42 / CGRectGetHeight(v139);
      if (v41 < v43)
      {
        v43 = v41;
      }

      v44 = rect_8 * v43;
      Type = CGContextGetType();
      if (Type == 6 || Type == 1)
      {
        v46 = v44 * 4.16666667;
        v47 = rect_24 * 4.16666667;
        v48 = rect_16 * 4.16666667;
      }

      else
      {
        v46 = v44;
        v48 = rect_16;
        v47 = rect_24;
      }

      if (v47 >= v48)
      {
        v49 = v47;
      }

      else
      {
        v49 = v48;
      }

      [AKInkRendererHelper maxRenderingSize:*&v96];
      v51 = v50;
      v52 = v49 <= v50;
      v53 = v46 * (v50 / v49);
      if (v52)
      {
        v54 = v46;
      }

      else
      {
        v54 = v53;
      }

      v55 = [AKInkRendererHelper renderDrawing:v15 clippedToStrokeSpaceRect:v115 scale:v113, v111, v117, v54];
      if (v55)
      {
        memset(&transform, 0, sizeof(transform));
        CGAffineTransformMakeScale(&transform, v44, v44);
        v121 = transform;
        v140.origin.x = v115;
        v140.origin.y = v113;
        v140.size.width = v111;
        v140.size.height = v117;
        v141 = CGRectApplyAffineTransform(v140, &v121);
        v56 = v141.origin.x;
        v118 = v49;
        v57 = v141.origin.y;
        v58 = v141.size.width;
        v59 = v141.size.height;
        v142 = CGRectIntegral(v141);
        v116 = v51;
        v60 = v142.origin.x;
        v61 = v142.origin.y;
        v62 = v142.size.width;
        v63 = v142.size.height;
        memset(&v121, 0, sizeof(v121));
        objc_msgSend_affineTransformForExifOrientation_aboutCenter_(AKGeometryHelper, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
        v120 = v121;
        v143.origin.x = v56;
        v143.origin.y = v57;
        v143.size.width = v58;
        v143.size.height = v59;
        v144 = CGRectApplyAffineTransform(v143, &v120);
        v64 = v144.origin.x;
        v65 = v144.origin.y;
        v66 = v144.size.width;
        rect_16a = v144.size.width;
        v112 = v144.size.height;
        v120 = v121;
        v144.origin.x = v60;
        v144.origin.y = v61;
        v144.size.width = v62;
        v144.size.height = v63;
        v145 = CGRectApplyAffineTransform(v144, &v120);
        v67 = v145.origin.x;
        v68 = v145.origin.y;
        v69 = v145.size.width;
        v70 = v145.size.height;
        v145.origin.x = round(v145.size.width);
        origin = v145.origin;
        v145.origin.x = round(v145.size.height);
        v114 = v145.origin;
        v106 = v125.ty + v97 * v125.d + v125.b * v99;
        v108 = v125.tx + v97 * v125.c + v125.a * v99;
        v145.origin.x = v67;
        v71 = CGRectGetMidX(v145);
        v146.origin.x = v64;
        v146.origin.y = v65;
        v146.size.width = v66;
        v146.size.height = v112;
        rect_24a = v71 - CGRectGetMidX(v146);
        v147.origin.x = v67;
        v147.origin.y = v68;
        v147.size.width = v69;
        v147.size.height = v70;
        v72 = CGRectGetMidY(v147);
        v148.origin.x = v64;
        v148.origin.y = v65;
        v148.size.width = rect_16a;
        v148.size.height = v112;
        v73 = v106 + v72 - CGRectGetMidY(v148);
        *v74.i64 = origin.x - trunc(origin.x * 0.5) * 2.0;
        v75.f64[0] = NAN;
        v75.f64[1] = NAN;
        v76 = vnegq_f64(v75);
        v77 = round(v108 + rect_24a + 0.5) + -0.5;
        *v78.i64 = round(v108 + rect_24a);
        if (*vbslq_s8(v76, v74, origin).i64 == 0.0)
        {
          v79 = *v78.i64;
        }

        else
        {
          v79 = v77;
        }

        *v78.i64 = v114.x - trunc(v114.x * 0.5) * 2.0;
        v80 = round(v73 + 0.5) + -0.5;
        v81 = round(v73);
        if (*vbslq_s8(v76, v78, v114).i64 == 0.0)
        {
          v80 = v81;
        }

        [AKGeometryHelper rectWithSize:origin.x centeredAtPoint:v114.x, v79, v80];
        v83 = v82;
        v85 = v84;
        v87 = v86;
        v89 = v88;
        v119 = v125;
        memset(&v120, 0, sizeof(v120));
        CGAffineTransformInvert(&v120, &v119);
        v119 = v120;
        v149.origin.x = v83;
        v149.origin.y = v85;
        v149.size.width = v87;
        v149.size.height = v89;
        v150 = CGRectApplyAffineTransform(v149, &v119);
        v90 = v150.origin.x;
        v91 = v150.origin.y;
        v92 = v150.size.width;
        v93 = v150.size.height;
        if (v118 <= v116)
        {
          v94 = kCGInterpolationNone;
        }

        else
        {
          v94 = kCGInterpolationHigh;
        }

        CGContextSetInterpolationQuality(context, v94);
        akCGImage = [v55 akCGImage];
        v151.origin.x = v90;
        v151.origin.y = v91;
        v151.size.width = v92;
        v151.size.height = v93;
        CGContextDrawImage(context, v151, akCGImage);
      }
    }
  }

  CGContextRestoreGState(context);
}

@end
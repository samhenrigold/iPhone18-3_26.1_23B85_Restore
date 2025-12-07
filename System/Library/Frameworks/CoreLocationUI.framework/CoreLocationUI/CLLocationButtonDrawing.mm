@interface CLLocationButtonDrawing
+ (id)_drawingWithStyle:(id)style tag:(id)tag remote:(BOOL)remote;
- (CGSize)buttonPadding;
- (CGSize)drawingSize;
- (CGSize)engravedSize;
- (CGSize)neededSize;
- (CLLocationButtonDrawing)initWithStyle:(id)style tag:(id)tag remote:(BOOL)remote;
- (void)_computeImageMetrics;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation CLLocationButtonDrawing

- (CLLocationButtonDrawing)initWithStyle:(id)style tag:(id)tag remote:(BOOL)remote
{
  styleCopy = style;
  tagCopy = tag;
  v19.receiver = self;
  v19.super_class = CLLocationButtonDrawing;
  v11 = [(CLLocationButtonDrawing *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_style, style);
    objc_storeStrong(&v12->_currentTag, tag);
    v12->_remote = remote;
    objc_msgSend__computeImageMetrics(v12, v13, v16, v17, v14, v15);
  }

  return v12;
}

+ (id)_drawingWithStyle:(id)style tag:(id)tag remote:(BOOL)remote
{
  remoteCopy = remote;
  tagCopy = tag;
  styleCopy = style;
  v10 = [self alloc];
  v14 = objc_msgSend_initWithStyle_tag_remote_(v10, v11, v12, v13, styleCopy, tagCopy, remoteCopy);

  return v14;
}

- (CGSize)drawingSize
{
  objc_msgSend_buttonWidth(self->_currentTag, a2, v4, v5, v2, v3);
  v8 = v7.n128_f64[0];
  objc_msgSend_neededSize(self, v9, v7, v12, v10, v11);
  if (v8 < v16.n128_f64[0])
  {
    v8 = v16.n128_f64[0];
  }

  objc_msgSend_buttonHeight(self->_currentTag, v13, v16, v17, v14, v15);
  v19 = v18.n128_f64[0];
  objc_msgSend_neededSize(self, v20, v18, v23, v21, v22);
  if (v19 >= v24)
  {
    v24 = v19;
  }

  v25 = v8;
  result.height = v24;
  result.width = v25;
  return result;
}

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  CGContextSaveGState(context);
  objc_msgSend_drawingSize(self, v6, v9, v10, v7, v8);
  v12 = v11.n128_f64[0];
  v14 = v13.n128_f64[0];
  v18 = objc_msgSend_backgroundColor(self->_currentTag, v15, v11, v13, v16, v17);
  v19 = v18;
  v25 = objc_msgSend_CGColor(v19, v20, v23, v24, v21, v22);
  CGContextSetFillColorWithColor(context, v25);

  objc_msgSend_cornerRadius(self->_currentTag, v26, v29, v30, v27, v28);
  v32 = v31.n128_f64[0];
  objc_msgSend_cornerRadius(self->_currentTag, v33, v31, v36, v34, v35);
  v38 = v37;
  v152.origin.x = 0.0;
  v152.origin.y = 0.0;
  v152.size.width = v12;
  v152.size.height = v14;
  v39 = CGPathCreateWithRoundedRect(v152, v32, v38, 0);
  CGContextAddPath(context, v39);
  CGPathRelease(v39);
  CGContextFillPath(context);
  v40 = v12 * 0.5;
  objc_msgSend_engravedSize(self, v41, v44, v45, v42, v43);
  v47 = v46.n128_f64[0];
  objc_msgSend_engravedSize(self, v48, v46, v51, v49, v50);
  v53 = v52.n128_f64[0];
  v58 = objc_msgSend_textDrawing(self, v54, v52, v57, v55, v56);
  objc_msgSend_drawingSize(v58, v59, v62, v63, v60, v61);
  v65 = v64;

  v71 = objc_msgSend_glyphDrawing(self, v66, v69, v70, v67, v68);
  objc_msgSend_drawingSize(v71, v72, v75, v76, v73, v74);
  v78 = v77;

  v84 = objc_msgSend_textDrawing(self, v79, v82, v83, v80, v81);
  objc_msgSend_drawingSize(v84, v85, v88, v89, v86, v87);
  v149 = v90;

  if (objc_msgSend_layoutDirection(self->_style, v91, v94, v95, v92, v93) == 1)
  {
    objc_msgSend_engravedSize(self, v96, v99, v100, v97, v98);
    v102.n128_f64[0] = v101 * 0.5;
    v103 = v40 - v102.n128_f64[0];
    objc_msgSend_engravedSize(self, v104, v102, v107, v105, v106);
    v109.n128_f64[0] = v108 * 0.5;
    v110 = v40 + v109.n128_f64[0];
    v115 = objc_msgSend_glyphDrawing(self, v111, v109, v114, v112, v113);
    objc_msgSend_drawingSize(v115, v116, v119, v120, v117, v118);
    v122 = v110 - v121;
  }

  else
  {
    v122 = v40 - v47 * 0.5;
    v99.n128_f64[0] = v40 + v53 * 0.5;
    v103 = v99.n128_f64[0] - v65;
  }

  if (!self->_remote)
  {
    CGContextSetAlpha(context, 0.5);
  }

  v123 = v14 * 0.5;
  if (objc_msgSend_icon(self->_currentTag, v96, v99, v100, v97, v98))
  {
    v127.n128_f64[0] = v78 * 0.5;
    v129 = objc_msgSend_glyphDrawing(self, v124, v127, v128, v125, v126);
    v130.n128_f64[0] = v122;
    v131.n128_f64[0] = v123 - v78 * 0.5;
    objc_msgSend_drawInContext_atPoint_(v129, v132, v130, v131, context, v133);
  }

  CGContextRestoreGState(context);
  if (!self->_remote)
  {
    CGContextSetAlpha(context, 0.5);
  }

  if (objc_msgSend_label(self->_currentTag, v134, v137, v138, v135, v136) || !objc_msgSend_icon(self->_currentTag, v139, v142, v143, v140, v141))
  {
    v142.n128_f64[0] = *&v149 * 0.5;
    v144 = v123 - *&v149 * 0.5;
    v150 = objc_msgSend_textDrawing(self, v139, v142, v143, v140, v141);
    v145.n128_f64[0] = v103;
    v146.n128_f64[0] = v144;
    objc_msgSend_drawInContext_atPoint_(v150, v147, v145, v146, context, v148);
  }
}

- (void)_computeImageMetrics
{
  v358 = *MEMORY[0x277D85DE8];
  objc_msgSend_setRenderedSuccessfully_(self->_currentTag, a2, v3, v4, 0, v2);
  v10 = objc_msgSend_bundleWithPath_(MEMORY[0x277CCA8D8], v6, v8, v9, @"/System/Library/CoreServices/CoreGlyphs.bundle", v7);
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D02670]);
    v351 = 0;
    v15 = objc_msgSend_initWithName_fromBundle_error_(v11, v12, v13, v14, @"Assets", v10, &v351);
    v16 = v351;
    v22 = v16;
    if (v15)
    {
      v23 = v16 == 0;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_47;
    }

    objc_msgSend_fontContentSizeCategory(self->_style, v17, v20, v21, v18, v19);
    v24 = CTFontDescriptorCreateWithTextStyleAndAttributes();
    objc_msgSend_fontSize(self->_currentTag, v25, v28, v29, v26, v27);
    v31 = CTFontCreateWithFontDescriptor(v24, v30, 0);
    CFRelease(v24);
    CFAutorelease(v31);
    v37 = objc_msgSend_label(self->_currentTag, v32, v35, v36, v33, v34);
    v42 = objc_msgSend_objectAtIndexedSubscript_(&unk_284A447B8, v38, v40, v41, v37, v39);
    objc_msgSend_secureNameForStyle_(self->_currentTag, v43, v45, v46, self->_style, v44);
    v52 = objc_msgSend_localization(self->_style, v47, v50, v51, v48, v49);
    v53 = UISLocalizedStringForSecureName();

    if (objc_msgSend_isEqualToString_(v42, v54, v56, v57, v53, v55))
    {
      if (!CFBundleGetBundleWithIdentifier(@"com.apple.locationd.CoreLocationUI"))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton could not find CoreLocationUI bundle for localization", buf, 2u);
        }

        v77 = *&v53;
        goto LABEL_46;
      }

      v349 = v22;
      v63 = MEMORY[0x277CBEAF8];
      objc_msgSend_localization(self->_style, v58, v61, v62, v59, v60);
      v65 = v64 = v42;
      v70 = objc_msgSend_localeWithLocaleIdentifier_(v63, v66, v68, v69, v65, v67);
      v76 = objc_msgSend_languageCode(v70, v71, v74, v75, v72, v73);

      v42 = v64;
      v77 = COERCE_DOUBLE(CFBundleCopyLocalizedStringForLocalization());

      if (objc_msgSend_isEqualToString_(v64, v78, v80, v81, *&v77, v79))
      {
        v22 = v349;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          objc_msgSend_localization(self->_style, v82, v85, v86, v83, v84);
          v87 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412290;
          v355 = v87;
        }

        goto LABEL_46;
      }

      v22 = v349;
    }

    else
    {
      v77 = *&v53;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      objc_msgSend_localization(self->_style, v88, v91, v92, v89, v90);
      v93 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412546;
      v355 = v77;
      v356 = 2112;
      v357 = v93;
    }

    if (v77 != 0.0)
    {
      objc_msgSend_setLocalizedTitle_(self, v88, v91, v92, *&v77, v90);
    }

    v94 = *MEMORY[0x277CC4838];
    v353[0] = v31;
    v95 = *MEMORY[0x277CC49C0];
    v352[0] = v94;
    v352[1] = v95;
    v96 = objc_msgSend_tintColor(self->_currentTag, v88, v91, v92, v89, v90);
    v97 = v96;
    v353[1] = objc_msgSend_CGColor(v97, v98, v101, v102, v99, v100);
    v106 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v103, v104, v105, v353, v352, 2);

    v107 = objc_alloc(MEMORY[0x277D777F0]);
    v113.n128_f64[0] = objc_msgSend_displayScale(self->_style, v108, v111, v112, v109, v110);
    v114.n128_u64[0] = 0x7FF8000000000000;
    v116 = objc_msgSend_initWithString_attributes_lineBreakMode_textAlignment_width_scale_(v107, v115, v114, v113, *&v77, v106, 0, 0);
    objc_msgSend_setTextDrawing_(self, v117, v119, v120, v116, v118);

    v126 = objc_msgSend_textDrawing(self, v121, v124, v125, v122, v123);

    if (!v126)
    {
LABEL_45:

LABEL_46:
LABEL_47:

      goto LABEL_48;
    }

    v348 = v106;
    v350 = v42;
    v132 = objc_msgSend_icon(self->_currentTag, v127, v130, v131, v128, v129);
    v137 = objc_msgSend_objectAtIndexedSubscript_(&unk_284A447D0, v133, v135, v136, v132, v134);
    objc_msgSend_assetScaleFactor(self->_style, v138, v141, v142, v139, v140);
    v144 = v143.n128_u64[0];
    v149 = objc_msgSend_assetDeviceIdiom(self->_style, v145, v143, v148, v146, v147);
    v155 = objc_msgSend_layoutDirection(self->_style, v150, v153, v154, v151, v152);
    v156.n128_f64[0] = CTFontGetSize(v31);
    v157 = v156.n128_u64[0];
    v162 = objc_msgSend_assetAppearanceNames(self->_style, v158, v156, v161, v159, v160);
    v168 = objc_msgSend_lastObject(v162, v163, v166, v167, v164, v165);
    v169.n128_u64[0] = v144;
    v170.n128_u64[0] = v157;
    v172 = objc_msgSend_namedVectorGlyphWithName_scaleFactor_deviceIdiom_layoutDirection_glyphSize_glyphWeight_glyphPointSize_appearanceName_(v15, v171, v169, v170, v137, v149, v155, 2, 6, v168);

    if (!v172 || (v173 = objc_alloc(MEMORY[0x277D77800]), objc_msgSend_tintColor(self->_currentTag, v174, v177, v178, v175, v176), v179 = objc_claimAutoreleasedReturnValue(), v180 = v179, v186 = objc_msgSend_CGColor(v180, v181, v184, v185, v182, v183), v190 = objc_msgSend_initWithVectorGlyph_tintColor_(v173, v187, v188, v189, v172, v186), objc_msgSend_setGlyphDrawing_(self, v191, v193, v194, v190, v192), v190, v179, objc_msgSend_glyphDrawing(self, v195, v198, v199, v196, v197), v200 = objc_claimAutoreleasedReturnValue(), v200, !v200))
    {
LABEL_44:

      v42 = v350;
      v106 = v348;
      goto LABEL_45;
    }

    if (objc_msgSend_icon(self->_currentTag, v201, v204, v205, v202, v203))
    {
      if (objc_msgSend_label(self->_currentTag, v206, v209, v210, v207, v208))
      {
        objc_msgSend_fontSize(self->_currentTag, v211, v214, v215, v212, v213);
        v216.n128_u64[0] = 0.5;
        v218 = v217.n128_f64[0] * 0.5;
        v222 = objc_msgSend_textDrawing(self, v219, v217, v216, v220, v221);
        objc_msgSend_drawingSize(v222, v223, v226, v227, v224, v225);
        v229 = v228.n128_f64[0];
        v234 = objc_msgSend_glyphDrawing(self, v230, v228, v233, v231, v232);
        objc_msgSend_drawingSize(v234, v235, v238, v239, v236, v237);
        v241 = v218 + v229 + v240;

        v247 = objc_msgSend_glyphDrawing(self, v242, v245, v246, v243, v244);
        objc_msgSend_drawingSize(v247, v248, v251, v252, v249, v250);
        v254 = v253;

        v260 = objc_msgSend_textDrawing(self, v255, v258, v259, v256, v257);
        objc_msgSend_drawingSize(v260, v261, v264, v265, v262, v263);
        v267 = v266;

        if (v254 >= v267)
        {
          v272.n128_f64[0] = v254;
        }

        else
        {
          v272.n128_f64[0] = v267;
        }

        v271.n128_f64[0] = v241;
        objc_msgSend_setEngravedSize_(self, v268, v271, v272, v269, v270);
        goto LABEL_34;
      }

      v278 = objc_msgSend_glyphDrawing(self, v211, v214, v215, v212, v213);
    }

    else
    {
      v278 = objc_msgSend_textDrawing(self, v206, v209, v210, v207, v208);
    }

    v284 = v278;
    objc_msgSend_drawingSize(v278, v279, v282, v283, v280, v281);
    objc_msgSend_setEngravedSize_(self, v285, v288, v289, v286, v287);

LABEL_34:
    objc_msgSend_buttonPadding(self, v273, v276, v277, v274, v275);
    v291 = v290.n128_f64[0];
    v293 = v292.n128_f64[0];
    objc_msgSend_engravedSize(self, v294, v290, v292, v295, v296);
    v298 = v291 + v297.n128_f64[0];
    objc_msgSend_engravedSize(self, v299, v297, v302, v300, v301);
    v304.n128_f64[0] = v293 + v303;
    v305.n128_f64[0] = v298;
    objc_msgSend_setNeededSize_(self, v306, v305, v304, v307, v308);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      objc_msgSend_neededSize(self, v309, v312, v313, v310, v311);
      v342 = v341.n128_u64[0];
      objc_msgSend_neededSize(self, v343, v341, v346, v344, v345);
      *buf = 134218240;
      v355 = *&v342;
      v356 = 2048;
      v357 = v347;
      _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton neededsize %f %f", buf, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v355 = v291;
      v356 = 2048;
      v357 = v293;
      _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton buttonPadding %f %f", buf, 0x16u);
    }

    objc_msgSend_frame(self->_currentTag, v314, v317, v318, v315, v316);
    if (CGRectIsEmpty(v359) || (objc_msgSend_neededSize(self, v319, v322, v323, v320, v321), v325 = v324.n128_f64[0], objc_msgSend_buttonWidth(self->_currentTag, v326, v324, v329, v327, v328), v325 <= v333.n128_f64[0]) && (objc_msgSend_neededSize(self, v330, v333, v334, v331, v332), v336 = v335.n128_f64[0], objc_msgSend_buttonHeight(self->_currentTag, v337, v340, v335, v338, v339), v336 <= v322.n128_f64[0]))
    {
      objc_msgSend_setRenderedSuccessfully_(self->_currentTag, v319, v322, v323, 1, v321);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error: #locationButton failed due to inappropriate sizes", buf, 2u);
    }

    goto LABEL_44;
  }

LABEL_48:
}

- (CGSize)buttonPadding
{
  v6 = objc_msgSend_controlSize(self->_currentTag, a2, v4, v5, v2, v3);
  if (v6 > 2)
  {
    v8 = 20.0;
    v7 = 15.0;
  }

  else
  {
    v7 = dbl_2371BE0A0[v6];
    v8 = dbl_2371BE0B8[v6];
  }

  v9 = v8 + v8 * 0.9;
  v10 = v7 + v7 * 0.9;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)neededSize
{
  width = self->_neededSize.width;
  height = self->_neededSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)engravedSize
{
  width = self->_engravedSize.width;
  height = self->_engravedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
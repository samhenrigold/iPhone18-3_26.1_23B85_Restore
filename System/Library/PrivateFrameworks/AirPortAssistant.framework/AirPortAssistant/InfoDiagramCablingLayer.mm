@interface InfoDiagramCablingLayer
- (id)initNoWANLinkFirstFrame;
- (id)initNoWANLinkLastFrame;
- (void)commonInit;
- (void)createPathForSublayer:(id)sublayer;
- (void)dealloc;
- (void)layoutSublayers;
- (void)setIsCompactWidth:(BOOL)width;
@end

@implementation InfoDiagramCablingLayer

- (void)commonInit
{
  v206[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_setFrame_(self, a2, v2, v3, 0.0, 0.0, 10.0, 10.0);
  v8 = objc_msgSend_layer(MEMORY[0x277CD9F90], v5, v6, v7);
  objc_msgSend_setInternetOuterLineLayer_(self, v9, v8, v10);
  objc_msgSend_frame(self, v11, v12, v13);
  objc_msgSend_setFrame_(self->internetOuterLineLayer, v14, v15, v16);
  v17 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->internetOuterLineLayer, v18, v17, v19);
  objc_msgSend_setName_(self->internetOuterLineLayer, v20, @"Internet", v21);
  objc_msgSend_setDelegate_(self->internetOuterLineLayer, v22, self, v23);
  v24 = *MEMORY[0x277CDA780];
  objc_msgSend_setLineCap_(self->internetOuterLineLayer, v25, *MEMORY[0x277CDA780], v26);
  objc_msgSend_setFillColor_(self->internetOuterLineLayer, v27, 0, v28);
  objc_msgSend_addSublayer_(self, v29, self->internetOuterLineLayer, v30);
  v34 = objc_msgSend_layer(MEMORY[0x277CD9F90], v31, v32, v33);
  objc_msgSend_setInternetInnerLineLayer_(self, v35, v34, v36);
  objc_msgSend_frame(self, v37, v38, v39);
  objc_msgSend_setFrame_(self->internetInnerLineLayer, v40, v41, v42);
  v43 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->internetInnerLineLayer, v44, v43, v45);
  objc_msgSend_setName_(self->internetInnerLineLayer, v46, @"Internet", v47);
  objc_msgSend_setDelegate_(self->internetInnerLineLayer, v48, self, v49);
  objc_msgSend_setLineCap_(self->internetInnerLineLayer, v50, v24, v51);
  objc_msgSend_setFillColor_(self->internetInnerLineLayer, v52, 0, v53);
  objc_msgSend_addSublayer_(self, v54, self->internetInnerLineLayer, v55);
  v59 = objc_msgSend_layer(MEMORY[0x277CD9EB0], v56, v57, v58);
  objc_msgSend_setInternetGradientLayer_(self, v60, v59, v61);
  objc_msgSend_frame(self, v62, v63, v64);
  objc_msgSend_setFrame_(self->internetGradientLayer, v65, v66, v67);
  objc_msgSend_setName_(self->internetGradientLayer, v68, @"Gradient", v69);
  v73 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v70, v71, v72, 0.0, 0.0);
  v77 = objc_msgSend_CGColor(v73, v74, v75, v76);
  v81 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v78, v79, v80, 0.0, 1.0);
  v206[0] = v77;
  v206[1] = objc_msgSend_CGColor(v81, v82, v83, v84);
  v86 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v85, v206, 2);
  objc_msgSend_setColors_(self->internetGradientLayer, v87, v86, v88);
  objc_msgSend_setStartPoint_(self->internetGradientLayer, v89, v90, v91, 0.0, 0.5);
  objc_msgSend_setEndPoint_(self->internetGradientLayer, v92, v93, v94, 0.5, 0.5);
  objc_msgSend_setLocations_(self->internetGradientLayer, v95, &unk_2851566C0, v96);
  objc_msgSend_frame(self, v97, v98, v99);
  objc_msgSend_setBounds_(self->internetGradientLayer, v100, v101, v102);
  v106 = objc_msgSend_layer(MEMORY[0x277CD9F90], v103, v104, v105);
  objc_msgSend_setBroadbandToWANOuterLineLayer_(self, v107, v106, v108);
  objc_msgSend_frame(self, v109, v110, v111);
  objc_msgSend_setFrame_(self->broadbandToWANOuterLineLayer, v112, v113, v114);
  v115 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->broadbandToWANOuterLineLayer, v116, v115, v117);
  objc_msgSend_setName_(self->broadbandToWANOuterLineLayer, v118, @"BroadbandToWAN", v119);
  objc_msgSend_setDelegate_(self->broadbandToWANOuterLineLayer, v120, self, v121);
  objc_msgSend_setLineCap_(self->broadbandToWANOuterLineLayer, v122, v24, v123);
  objc_msgSend_setFillColor_(self->broadbandToWANOuterLineLayer, v124, 0, v125);
  objc_msgSend_addSublayer_(self, v126, self->broadbandToWANOuterLineLayer, v127);
  v131 = objc_msgSend_layer(MEMORY[0x277CD9F90], v128, v129, v130);
  objc_msgSend_setBroadbandToWANInnerLineLayer_(self, v132, v131, v133);
  objc_msgSend_frame(self, v134, v135, v136);
  objc_msgSend_setFrame_(self->broadbandToWANInnerLineLayer, v137, v138, v139);
  v140 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->broadbandToWANInnerLineLayer, v141, v140, v142);
  objc_msgSend_setName_(self->broadbandToWANInnerLineLayer, v143, @"BroadbandToWAN", v144);
  objc_msgSend_setDelegate_(self->broadbandToWANInnerLineLayer, v145, self, v146);
  objc_msgSend_setLineCap_(self->broadbandToWANInnerLineLayer, v147, v24, v148);
  objc_msgSend_setFillColor_(self->broadbandToWANInnerLineLayer, v149, 0, v150);
  objc_msgSend_addSublayer_(self, v151, self->broadbandToWANInnerLineLayer, v152);
  v156 = objc_msgSend_layer(MEMORY[0x277CD9F90], v153, v154, v155);
  objc_msgSend_setSwapArcLineLayer_(self, v157, v156, v158);
  objc_msgSend_frame(self, v159, v160, v161);
  objc_msgSend_setFrame_(self->swapArcLineLayer, v162, v163, v164);
  v165 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->swapArcLineLayer, v166, v165, v167);
  objc_msgSend_setName_(self->swapArcLineLayer, v168, @"SwapArcLine", v169);
  objc_msgSend_setDelegate_(self->swapArcLineLayer, v170, self, v171);
  v172 = *MEMORY[0x277CDA788];
  objc_msgSend_setLineCap_(self->swapArcLineLayer, v173, *MEMORY[0x277CDA788], v174);
  objc_msgSend_setFillColor_(self->swapArcLineLayer, v175, 0, v176);
  objc_msgSend_addSublayer_(self, v177, self->swapArcLineLayer, v178);
  v182 = objc_msgSend_layer(MEMORY[0x277CD9F90], v179, v180, v181);
  objc_msgSend_setSwapArcArrowLayer_(self, v183, v182, v184);
  objc_msgSend_frame(self, v185, v186, v187);
  objc_msgSend_setFrame_(self->swapArcArrowLayer, v188, v189, v190);
  v191 = sub_23EBFD680(1.0, 1.0, 1.0, 0.0);
  objc_msgSend_setBackgroundColor_(self->swapArcArrowLayer, v192, v191, v193);
  objc_msgSend_setName_(self->swapArcArrowLayer, v194, @"SwapArcArrow", v195);
  objc_msgSend_setDelegate_(self->swapArcArrowLayer, v196, self, v197);
  objc_msgSend_setLineCap_(self->swapArcArrowLayer, v198, v172, v199);
  objc_msgSend_setLineJoin_(self->swapArcArrowLayer, v200, *MEMORY[0x277CDA798], v201);
  objc_msgSend_setFillColor_(self->swapArcArrowLayer, v202, 0, v203);
  objc_msgSend_addSublayer_(self, v204, self->swapArcArrowLayer, v205);
}

- (id)initNoWANLinkFirstFrame
{
  NSLog(&cfstr_S.isa, a2, "[InfoDiagramCablingLayer initNoWANLinkFirstFrame]");
  v19.receiver = self;
  v19.super_class = InfoDiagramCablingLayer;
  v3 = [(InfoDiagramCablingLayer *)&v19 init];
  p_isa = &v3->super.super.isa;
  if (v3)
  {
    objc_msgSend_commonInit(v3, v4, v5, v6);
    v8 = sub_23EBFD680(0.556862745, 0.556862745, 0.576470588, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[9], v9, v8, v10);
    objc_msgSend_setStrokeColor_(p_isa[12], v11, v8, v12);
    CGColorRelease(v8);
    v13 = sub_23EBFD680(1.0, 1.0, 1.0, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[8], v14, v13, v15);
    objc_msgSend_setStrokeColor_(p_isa[11], v16, v13, v17);
    CGColorRelease(v13);
  }

  return p_isa;
}

- (id)initNoWANLinkLastFrame
{
  NSLog(&cfstr_S.isa, a2, "[InfoDiagramCablingLayer initNoWANLinkLastFrame]");
  v28.receiver = self;
  v28.super_class = InfoDiagramCablingLayer;
  v3 = [(InfoDiagramCablingLayer *)&v28 init];
  p_isa = &v3->super.super.isa;
  if (v3)
  {
    objc_msgSend_commonInit(v3, v4, v5, v6);
    v8 = sub_23EBFD680(0.556862745, 0.556862745, 0.576470588, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[9], v9, v8, v10);
    CGColorRelease(v8);
    v11 = sub_23EBFD680(0.0, 0.501960784, 0.992156863, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[12], v12, v11, v13);
    CGColorRelease(v11);
    v14 = sub_23EBFD680(1.0, 1.0, 1.0, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[8], v15, v14, v16);
    CGColorRelease(v14);
    v17 = sub_23EBFD680(0.549019608, 0.77254902, 0.992156863, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[11], v18, v17, v19);
    CGColorRelease(v17);
    v20 = sub_23EBFD680(0.992156863, 0.223529412, 0.207843137, 1.0);
    objc_msgSend_setStrokeColor_(p_isa[13], v21, v20, v22);
    objc_msgSend_setStrokeColor_(p_isa[14], v23, v20, v24);
    objc_msgSend_setFillColor_(p_isa[14], v25, v20, v26);
    CGColorRelease(v20);
  }

  return p_isa;
}

- (void)setIsCompactWidth:(BOOL)width
{
  internetOuterLineLayer = self->internetOuterLineLayer;
  if (width)
  {
    v7 = 4.0;
  }

  else
  {
    v7 = 5.0;
  }

  if (width)
  {
    v8 = 2.0;
  }

  else
  {
    v8 = 3.0;
  }

  objc_msgSend_setLineWidth_(internetOuterLineLayer, a2, width, v3, v7);
  objc_msgSend_setLineWidth_(self->internetInnerLineLayer, v9, v10, v11, v8);
  objc_msgSend_setLineWidth_(self->broadbandToWANOuterLineLayer, v12, v13, v14, v7);
  objc_msgSend_setLineWidth_(self->broadbandToWANInnerLineLayer, v15, v16, v17, v8);
  objc_msgSend_setLineWidth_(self->swapArcLineLayer, v18, v19, v20, v7);
  objc_msgSend_setLineWidth_(self->swapArcArrowLayer, v21, v22, v23, 4.0);
  self->isCompactWidth = width;
}

- (void)dealloc
{
  objc_msgSend_setDelegate_(self->internetInnerLineLayer, a2, 0, v2);
  objc_msgSend_setInternetInnerLineLayer_(self, v4, 0, v5);
  objc_msgSend_setDelegate_(self->internetOuterLineLayer, v6, 0, v7);
  objc_msgSend_setInternetOuterLineLayer_(self, v8, 0, v9);
  objc_msgSend_setDelegate_(self->internetGradientLayer, v10, 0, v11);
  objc_msgSend_setInternetGradientLayer_(self, v12, 0, v13);
  objc_msgSend_setDelegate_(self->broadbandToWANInnerLineLayer, v14, 0, v15);
  objc_msgSend_setBroadbandToWANInnerLineLayer_(self, v16, 0, v17);
  objc_msgSend_setDelegate_(self->broadbandToWANOuterLineLayer, v18, 0, v19);
  objc_msgSend_setBroadbandToWANOuterLineLayer_(self, v20, 0, v21);
  objc_msgSend_setDelegate_(self->swapArcLineLayer, v22, 0, v23);
  objc_msgSend_setSwapArcLineLayer_(self, v24, 0, v25);
  objc_msgSend_setDelegate_(self->swapArcArrowLayer, v26, 0, v27);
  objc_msgSend_setSwapArcArrowLayer_(self, v28, 0, v29);
  v30.receiver = self;
  v30.super_class = InfoDiagramCablingLayer;
  [(InfoDiagramCablingLayer *)&v30 dealloc];
}

- (void)layoutSublayers
{
  objc_msgSend_bounds(self, a2, v2, v3);
  NSLog(&cfstr_S.isa, "[InfoDiagramCablingLayer layoutSublayers]");
  objc_msgSend_frame(self->internetInnerLineLayer, v5, v6, v7);
  objc_msgSend_createPathForSublayer_(self, v8, self->internetInnerLineLayer, v9);
  objc_msgSend_setNeedsDisplay(self->internetInnerLineLayer, v10, v11, v12);
  objc_msgSend_frame(self->internetOuterLineLayer, v13, v14, v15);
  objc_msgSend_createPathForSublayer_(self, v16, self->internetOuterLineLayer, v17);
  objc_msgSend_setNeedsDisplay(self->internetOuterLineLayer, v18, v19, v20);
  objc_msgSend_frame(self->internetGradientLayer, v21, v22, v23);
  objc_msgSend_frame(self->broadbandToWANInnerLineLayer, v24, v25, v26);
  objc_msgSend_createPathForSublayer_(self, v27, self->broadbandToWANInnerLineLayer, v28);
  objc_msgSend_setNeedsDisplay(self->broadbandToWANInnerLineLayer, v29, v30, v31);
  objc_msgSend_frame(self->broadbandToWANOuterLineLayer, v32, v33, v34);
  objc_msgSend_createPathForSublayer_(self, v35, self->broadbandToWANOuterLineLayer, v36);
  objc_msgSend_setNeedsDisplay(self->broadbandToWANOuterLineLayer, v37, v38, v39);
  if (self->swapCabling)
  {
    objc_msgSend_frame(self->swapArcLineLayer, v40, v41, v42);
    objc_msgSend_createPathForSublayer_(self, v43, self->swapArcLineLayer, v44);
    objc_msgSend_frame(self->swapArcArrowLayer, v45, v46, v47);
    objc_msgSend_createPathForSublayer_(self, v48, self->swapArcArrowLayer, v49);
    objc_msgSend_setNeedsDisplay(self->swapArcLineLayer, v50, v51, v52);
    swapArcArrowLayer = self->swapArcArrowLayer;

    objc_msgSend_setNeedsDisplay(swapArcArrowLayer, v53, v54, v55);
  }
}

- (void)createPathForSublayer:(id)sublayer
{
  if (objc_msgSend_path(sublayer, a2, sublayer, v3))
  {
    return;
  }

  v9 = objc_msgSend_name(sublayer, v6, v7, v8);
  NSLog(&cfstr_SLayerNameIs.isa, "[InfoDiagramCablingLayer createPathForSublayer:]", v9);
  Mutable = CGPathCreateMutable();
  v14 = objc_msgSend_name(sublayer, v11, v12, v13);
  if (objc_msgSend_isEqualToString_(v14, v15, @"Internet", v16))
  {
    v20 = objc_msgSend_internetPoint(self->diagramAnchorPointDelegate, v17, v18, v19);
    v25 = sub_23EB7BE9C(v24, v20, v21, v22, v23);
    v27 = v26;
    v31 = objc_msgSend_broadbandInPoint(self->diagramAnchorPointDelegate, v28, v29, v30);
    v36 = sub_23EB7BE9C(v35, v31, v32, v33, v34);
    v38 = v37;
    CGPathMoveToPoint(Mutable, 0, v25, v27);
    CGPathAddLineToPoint(Mutable, 0, v36, v27);
    v39 = Mutable;
    v40 = v36;
    v41 = v38;
  }

  else
  {
    v42 = objc_msgSend_name(sublayer, v17, v18, v19);
    if (!objc_msgSend_isEqualToString_(v42, v43, @"BroadbandToWAN", v44))
    {
      if (self->swapCabling)
      {
        v78 = objc_msgSend_name(sublayer, v45, v46, v47);
        if (objc_msgSend_isEqualToString_(v78, v79, @"SwapArcArrow", v80))
        {
          objc_msgSend_swapArcLineEndPoint(self->diagramAnchorPointDelegate, v45, v81, v47);
          v83 = v82;
          v85 = v84;
          v86 = CGPathCreateMutable();
          CGPathMoveToPoint(v86, 0, v83 + -3.0, v85 + -3.0);
          CGPathAddLineToPoint(v86, 0, v83 + 2.5, v85 + 4.0);
          CGPathAddLineToPoint(v86, 0, v83 + 5.5, v85 + -3.0);
          CGPathCloseSubpath(v86);
          CGPathAddPath(Mutable, 0, v86);
          CGPathRelease(v86);
        }

        else if (self->swapCabling)
        {
          v87 = objc_msgSend_name(sublayer, v45, v81, v47);
          if (objc_msgSend_isEqualToString_(v87, v88, @"SwapArcLine", v89))
          {
            objc_msgSend_swapArcLineStartPoint(self->diagramAnchorPointDelegate, v45, v90, v47);
            v92 = v91;
            v94 = v93;
            objc_msgSend_swapArcLineEndPoint(self->diagramAnchorPointDelegate, v95, v96, v97);
            v99 = v98;
            v101 = v100;
            objc_msgSend_swapArcControlPoint1(self->diagramAnchorPointDelegate, v102, v103, v104);
            v106 = v105;
            v108 = v107;
            objc_msgSend_swapArcControlPoint2(self->diagramAnchorPointDelegate, v109, v110, v111);
            v113 = v112;
            v115 = v114;
            if (v92 != v99 || v94 != v101)
            {
              CGPathMoveToPoint(Mutable, 0, v92, v94);
              CGPathAddCurveToPoint(Mutable, 0, v106, v108, v113, v115, v99 + 4.0, v101);
            }
          }
        }
      }

      goto LABEL_7;
    }

    v48 = objc_msgSend_internetPoint(self->diagramAnchorPointDelegate, v45, v46, v47);
    v53 = sub_23EB7BE9C(v52, v48, v49, v50, v51);
    v55 = v54;
    v59 = objc_msgSend_broadbandOutPoint(self->diagramAnchorPointDelegate, v56, v57, v58, v53);
    v64 = sub_23EB7BE9C(v63, v59, v60, v61, v62);
    v66 = v65;
    v70 = objc_msgSend_wanConnectedBaseWANPoint(self->diagramAnchorPointDelegate, v67, v68, v69);
    v75 = sub_23EB7BE9C(v74, v70, v71, v72, v73);
    v77 = v76;
    CGPathMoveToPoint(Mutable, 0, v64, v66);
    CGPathAddLineToPoint(Mutable, 0, v64, v55);
    CGPathAddLineToPoint(Mutable, 0, v75, v55);
    v39 = Mutable;
    v40 = v75;
    v41 = v77;
  }

  CGPathAddLineToPoint(v39, 0, v40, v41);
LABEL_7:
  objc_msgSend_setPath_(sublayer, v45, Mutable, v47);

  CGPathRelease(Mutable);
}

@end
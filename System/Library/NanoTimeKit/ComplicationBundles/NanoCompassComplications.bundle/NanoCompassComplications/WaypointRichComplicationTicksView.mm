@interface WaypointRichComplicationTicksView
- (WaypointRichComplicationTicksView)initWithLargeTickCount:(int64_t)count smallTickCountPerLargeTick:(int64_t)tick largeTickSize:(CGSize)size smallTickSize:(CGSize)tickSize dialRange:(double)range startAngle:(double)angle;
- (void)_updateTicksRotationTransform;
- (void)layoutSubviews;
- (void)setHighlightColor:(id)color;
- (void)setLargeTickColor:(id)color;
- (void)setLargeTicksTransformAngle:(double)angle;
- (void)setProgress:(float)progress;
- (void)setProgressDirection:(float)direction;
- (void)setSmallTickColor:(id)color;
@end

@implementation WaypointRichComplicationTicksView

- (WaypointRichComplicationTicksView)initWithLargeTickCount:(int64_t)count smallTickCountPerLargeTick:(int64_t)tick largeTickSize:(CGSize)size smallTickSize:(CGSize)tickSize dialRange:(double)range startAngle:(double)angle
{
  height = tickSize.height;
  width = tickSize.width;
  v13 = size.height;
  v14 = size.width;
  v193.receiver = self;
  v193.super_class = WaypointRichComplicationTicksView;
  v18 = [(WaypointRichComplicationTicksView *)&v193 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v18)
  {
    v19 = objc_msgSend_clearColor(MEMORY[0x277D75348], v16, v17);
    objc_msgSend_setBackgroundColor_(v18, v20, v19);

    v18->_progress = 1.0;
    v18->_progressDirection = 1.0;
    v23 = objc_msgSend_layer(v18, v21, v22);
    v18->_largeTickCount = count;
    v18->_smallTickCountPerLargeTick = tick;
    v24 = objc_opt_new();
    largeTicksReplicatorLayer = v18->_largeTicksReplicatorLayer;
    v18->_largeTicksReplicatorLayer = v24;

    v26 = *MEMORY[0x277CDA230];
    objc_msgSend_setFillMode_(v18->_largeTicksReplicatorLayer, v27, *MEMORY[0x277CDA230]);
    objc_msgSend_setInstanceCount_(v18->_largeTicksReplicatorLayer, v28, count);
    v29 = v18->_largeTicksReplicatorLayer;
    v32 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v30, v31);
    v33 = v32;
    v36 = objc_msgSend_CGColor(v33, v34, v35);
    objc_msgSend_setInstanceColor_(v29, v37, v36);

    v38 = v18->_largeTicksReplicatorLayer;
    CATransform3DMakeRotation(&v192, angle, 0.0, 0.0, 1.0);
    objc_msgSend_setTransform_(v38, v39, &v192);
    v40 = v18->_largeTicksReplicatorLayer;
    v43 = objc_msgSend_clearColor(MEMORY[0x277D75348], v41, v42);
    v44 = v43;
    v47 = objc_msgSend_CGColor(v44, v45, v46);
    objc_msgSend_setBackgroundColor_(v40, v48, v47);

    objc_msgSend_addSublayer_(v23, v49, v18->_largeTicksReplicatorLayer);
    v50 = objc_opt_new();
    largeTickLayer = v18->_largeTickLayer;
    v18->_largeTickLayer = v50;

    v52 = v18->_largeTickLayer;
    v55 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v53, v54);
    v56 = v55;
    v59 = objc_msgSend_CGColor(v56, v57, v58);
    objc_msgSend_setBackgroundColor_(v52, v60, v59);

    objc_msgSend_setBounds_(v18->_largeTickLayer, v61, v62, 0.0, 0.0, v14, v13);
    objc_msgSend_setCornerRadius_(v18->_largeTickLayer, v63, v64, v14 * 0.5);
    objc_msgSend_addSublayer_(v18->_largeTicksReplicatorLayer, v65, v18->_largeTickLayer);
    v66 = objc_opt_new();
    highlightedLargeTicksReplicatorLayer = v18->_highlightedLargeTicksReplicatorLayer;
    v18->_highlightedLargeTicksReplicatorLayer = v66;

    objc_msgSend_setFillMode_(v18->_highlightedLargeTicksReplicatorLayer, v68, v26);
    objc_msgSend_setInstanceCount_(v18->_highlightedLargeTicksReplicatorLayer, v69, count);
    v70 = v18->_highlightedLargeTicksReplicatorLayer;
    v73 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v71, v72);
    v74 = v73;
    v77 = objc_msgSend_CGColor(v74, v75, v76);
    objc_msgSend_setInstanceColor_(v70, v78, v77);

    v79 = v18->_highlightedLargeTicksReplicatorLayer;
    CATransform3DMakeRotation(&v192, angle, 0.0, 0.0, 1.0);
    objc_msgSend_setTransform_(v79, v80, &v192);
    v81 = v18->_highlightedLargeTicksReplicatorLayer;
    v84 = objc_msgSend_clearColor(MEMORY[0x277D75348], v82, v83);
    v85 = v84;
    v88 = objc_msgSend_CGColor(v85, v86, v87);
    objc_msgSend_setBackgroundColor_(v81, v89, v88);

    objc_msgSend_insertSublayer_above_(v23, v90, v18->_highlightedLargeTicksReplicatorLayer, v18->_largeTicksReplicatorLayer);
    v91 = objc_opt_new();
    highlightedLargeTickLayer = v18->_highlightedLargeTickLayer;
    v18->_highlightedLargeTickLayer = v91;

    v93 = v18->_highlightedLargeTickLayer;
    v96 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v94, v95);
    v97 = v96;
    v100 = objc_msgSend_CGColor(v97, v98, v99);
    objc_msgSend_setBackgroundColor_(v93, v101, v100);

    objc_msgSend_setBounds_(v18->_highlightedLargeTickLayer, v102, v103, 0.0, 0.0, v14, v13);
    objc_msgSend_setCornerRadius_(v18->_highlightedLargeTickLayer, v104, v105, v14 * 0.5);
    objc_msgSend_addSublayer_(v18->_highlightedLargeTicksReplicatorLayer, v106, v18->_highlightedLargeTickLayer);
    v18->_largeTickPositionY = v13 * 0.5;
    if (width != *MEMORY[0x277CBF3A8] || height != *(MEMORY[0x277CBF3A8] + 8))
    {
      v109 = objc_opt_new();
      smallTicksReplicatorLayer = v18->_smallTicksReplicatorLayer;
      v18->_smallTicksReplicatorLayer = v109;

      objc_msgSend_setFillMode_(v18->_smallTicksReplicatorLayer, v111, v26);
      objc_msgSend_setInstanceCount_(v18->_smallTicksReplicatorLayer, v112, v18->_smallTickCountPerLargeTick * count);
      v113 = v18->_smallTicksReplicatorLayer;
      v116 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v114, v115);
      v117 = v116;
      v120 = objc_msgSend_CGColor(v117, v118, v119);
      objc_msgSend_setInstanceColor_(v113, v121, v120);

      v122 = v18->_smallTicksReplicatorLayer;
      CATransform3DMakeRotation(&v192, angle, 0.0, 0.0, 1.0);
      objc_msgSend_setTransform_(v122, v123, &v192);
      v124 = v18->_smallTicksReplicatorLayer;
      v127 = objc_msgSend_clearColor(MEMORY[0x277D75348], v125, v126);
      v128 = v127;
      v131 = objc_msgSend_CGColor(v128, v129, v130);
      objc_msgSend_setBackgroundColor_(v124, v132, v131);

      v133 = objc_opt_new();
      smallTickLayer = v18->_smallTickLayer;
      v18->_smallTickLayer = v133;

      v135 = v18->_smallTickLayer;
      v138 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v136, v137);
      v139 = v138;
      v142 = objc_msgSend_CGColor(v139, v140, v141);
      objc_msgSend_setBackgroundColor_(v135, v143, v142);

      objc_msgSend_setBounds_(v18->_smallTickLayer, v144, v145, 0.0, 0.0, width, height);
      objc_msgSend_setCornerRadius_(v18->_smallTickLayer, v146, v147, width * 0.5);
      objc_msgSend_addSublayer_(v18->_smallTicksReplicatorLayer, v148, v18->_smallTickLayer);
      v18->_smallTickPositionY = height * 0.5;
      v149 = objc_opt_new();
      highlightedSmallTicksReplicatorLayer = v18->_highlightedSmallTicksReplicatorLayer;
      v18->_highlightedSmallTicksReplicatorLayer = v149;

      objc_msgSend_setFillMode_(v18->_highlightedSmallTicksReplicatorLayer, v151, v26);
      objc_msgSend_setInstanceCount_(v18->_highlightedSmallTicksReplicatorLayer, v152, v18->_smallTickCountPerLargeTick * count);
      v153 = v18->_highlightedSmallTicksReplicatorLayer;
      v156 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v154, v155);
      v157 = v156;
      v160 = objc_msgSend_CGColor(v157, v158, v159);
      objc_msgSend_setInstanceColor_(v153, v161, v160);

      v162 = v18->_highlightedSmallTicksReplicatorLayer;
      CATransform3DMakeRotation(&v192, angle, 0.0, 0.0, 1.0);
      objc_msgSend_setTransform_(v162, v163, &v192);
      v164 = v18->_highlightedSmallTicksReplicatorLayer;
      v167 = objc_msgSend_clearColor(MEMORY[0x277D75348], v165, v166);
      v168 = v167;
      v171 = objc_msgSend_CGColor(v168, v169, v170);
      objc_msgSend_setBackgroundColor_(v164, v172, v171);

      v173 = objc_opt_new();
      highlightedSmallTickLayer = v18->_highlightedSmallTickLayer;
      v18->_highlightedSmallTickLayer = v173;

      v175 = v18->_highlightedSmallTickLayer;
      v178 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v176, v177);
      v179 = v178;
      v182 = objc_msgSend_CGColor(v179, v180, v181);
      objc_msgSend_setBackgroundColor_(v175, v183, v182);

      objc_msgSend_setBounds_(v18->_highlightedSmallTickLayer, v184, v185, 0.0, 0.0, width, height);
      objc_msgSend_setCornerRadius_(v18->_highlightedSmallTickLayer, v186, v187, width * 0.5);
      objc_msgSend_addSublayer_(v18->_highlightedSmallTicksReplicatorLayer, v188, v18->_highlightedSmallTickLayer);
      objc_msgSend_insertSublayer_below_(v23, v189, v18->_highlightedSmallTicksReplicatorLayer, v18->_highlightedLargeTicksReplicatorLayer);
      objc_msgSend_insertSublayer_below_(v23, v190, v18->_smallTicksReplicatorLayer, v18->_largeTicksReplicatorLayer);
    }

    objc_msgSend_setLargeTicksTransformAngle_(v18, v107, v108, range / count);
  }

  return v18;
}

- (void)setLargeTickColor:(id)color
{
  colorCopy = color;
  if (self->_largeTickColor != colorCopy)
  {
    v11 = colorCopy;
    objc_storeStrong(&self->_largeTickColor, color);
    largeTicksReplicatorLayer = self->_largeTicksReplicatorLayer;
    v9 = objc_msgSend_CGColor(self->_largeTickColor, v7, v8);
    objc_msgSend_setInstanceColor_(largeTicksReplicatorLayer, v10, v9);
    colorCopy = v11;
  }
}

- (void)setSmallTickColor:(id)color
{
  colorCopy = color;
  if (self->_smallTickColor != colorCopy)
  {
    v11 = colorCopy;
    objc_storeStrong(&self->_smallTickColor, color);
    smallTicksReplicatorLayer = self->_smallTicksReplicatorLayer;
    v9 = objc_msgSend_CGColor(self->_smallTickColor, v7, v8);
    objc_msgSend_setInstanceColor_(smallTicksReplicatorLayer, v10, v9);
    colorCopy = v11;
  }
}

- (void)setHighlightColor:(id)color
{
  colorCopy = color;
  if (self->_highlightColor != colorCopy)
  {
    v16 = colorCopy;
    objc_storeStrong(&self->_highlightColor, color);
    highlightedLargeTicksReplicatorLayer = self->_highlightedLargeTicksReplicatorLayer;
    v9 = objc_msgSend_CGColor(self->_highlightColor, v7, v8);
    objc_msgSend_setInstanceColor_(highlightedLargeTicksReplicatorLayer, v10, v9);
    highlightedSmallTicksReplicatorLayer = self->_highlightedSmallTicksReplicatorLayer;
    v14 = objc_msgSend_CGColor(self->_highlightColor, v12, v13);
    objc_msgSend_setInstanceColor_(highlightedSmallTicksReplicatorLayer, v15, v14);
    colorCopy = v16;
  }
}

- (void)setProgress:(float)progress
{
  progress = self->_progress;
  if (progress == progress)
  {
    return;
  }

  if (progress >= progress)
  {
    v6 = 0.05;
  }

  else
  {
    v6 = 0.25;
  }

  self->_progress = progress;
  largeTickCount = self->_largeTickCount;
  largeTickLayer = self->_largeTickLayer;
  if (!largeTickCount)
  {
    objc_msgSend_setHidden_(largeTickLayer, a2, 1);
    highlightedLargeTickLayer = self->_highlightedLargeTickLayer;
    goto LABEL_10;
  }

  objc_msgSend_setHidden_(largeTickLayer, a2, 0);
  objc_msgSend_setInstanceCount_(self->_largeTicksReplicatorLayer, v9, largeTickCount);
  highlightedLargeTickLayer = self->_highlightedLargeTickLayer;
  if (self->_progress == 0.0)
  {
LABEL_10:
    objc_msgSend_setHidden_(highlightedLargeTickLayer, v10, 1);
    goto LABEL_11;
  }

  objc_msgSend_setHidden_(highlightedLargeTickLayer, v10, 0);
  objc_msgSend_setInstanceCount_(self->_highlightedLargeTicksReplicatorLayer, v12, (((progress * largeTickCount) + 1.0) + 0.1));
LABEL_11:
  if (self->_smallTicksReplicatorLayer)
  {
    v14 = self->_smallTickCountPerLargeTick * self->_largeTickCount;
    smallTickLayer = self->_smallTickLayer;
    if (v14)
    {
      objc_msgSend_setHidden_(smallTickLayer, v13, 0);
      objc_msgSend_setInstanceCount_(self->_smallTicksReplicatorLayer, v16, v14);
    }

    else
    {
      objc_msgSend_setHidden_(smallTickLayer, v13, 1);
    }
  }

  if (self->_highlightedSmallTicksReplicatorLayer)
  {
    v17 = self->_progress;
    v18 = (v6 + (((v17 * self->_largeTickCount) * self->_smallTickCountPerLargeTick) + 1.0));
    highlightedSmallTickLayer = self->_highlightedSmallTickLayer;
    if (!v18 || v17 == 0.0)
    {

      objc_msgSend_setHidden_(highlightedSmallTickLayer, v13, 1);
    }

    else
    {
      objc_msgSend_setHidden_(highlightedSmallTickLayer, v13, 0);
      highlightedSmallTicksReplicatorLayer = self->_highlightedSmallTicksReplicatorLayer;

      objc_msgSend_setInstanceCount_(highlightedSmallTicksReplicatorLayer, v20, v18);
    }
  }
}

- (void)setProgressDirection:(float)direction
{
  v3 = direction < 0.0;
  v4 = 1.0;
  if (v3)
  {
    v4 = -1.0;
  }

  if (self->_progressDirection != v4)
  {
    self->_progressDirection = v4;
    (MEMORY[0x2821F9670])(self, sel__updateTicksRotationTransform);
  }
}

- (void)setLargeTicksTransformAngle:(double)angle
{
  if (self->_largeTicksTransformAngle != angle)
  {
    self->_largeTicksTransformAngle = angle;
    (MEMORY[0x2821F9670])(self, sel__updateTicksRotationTransform);
  }
}

- (void)_updateTicksRotationTransform
{
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], a2, 1);
  v3 = self->_largeTicksTransformAngle * self->_progressDirection;
  largeTicksReplicatorLayer = self->_largeTicksReplicatorLayer;
  CATransform3DMakeRotation(&v13, v3, 0.0, 0.0, 1.0);
  objc_msgSend_setInstanceTransform_(largeTicksReplicatorLayer, v5, &v13);
  highlightedLargeTicksReplicatorLayer = self->_highlightedLargeTicksReplicatorLayer;
  CATransform3DMakeRotation(&v13, v3, 0.0, 0.0, 1.0);
  objc_msgSend_setInstanceTransform_(highlightedLargeTicksReplicatorLayer, v7, &v13);
  smallTicksReplicatorLayer = self->_smallTicksReplicatorLayer;
  if (smallTicksReplicatorLayer)
  {
    CATransform3DMakeRotation(&v13, v3 / self->_smallTickCountPerLargeTick, 0.0, 0.0, 1.0);
    objc_msgSend_setInstanceTransform_(smallTicksReplicatorLayer, v10, &v13);
  }

  highlightedSmallTicksReplicatorLayer = self->_highlightedSmallTicksReplicatorLayer;
  if (highlightedSmallTicksReplicatorLayer)
  {
    CATransform3DMakeRotation(&v13, v3 / self->_smallTickCountPerLargeTick, 0.0, 0.0, 1.0);
    objc_msgSend_setInstanceTransform_(highlightedSmallTicksReplicatorLayer, v12, &v13);
  }

  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v8, 0);
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = WaypointRichComplicationTicksView;
  [(WaypointRichComplicationTicksView *)&v42 layoutSubviews];
  v5 = objc_msgSend_layer(self, v3, v4);
  objc_msgSend_bounds(v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v12 * 0.5;
  v17 = v14 * 0.5;
  objc_msgSend_setPosition_(self->_largeTicksReplicatorLayer, v18, v19, v12 * 0.5, v14 * 0.5);
  objc_msgSend_setBounds_(self->_largeTicksReplicatorLayer, v20, v21, v9, v11, v13, v15);
  objc_msgSend_setPosition_(self->_largeTickLayer, v22, v23, v16, self->_largeTickPositionY);
  objc_msgSend_setPosition_(self->_highlightedLargeTicksReplicatorLayer, v24, v25, v16, v17);
  objc_msgSend_setBounds_(self->_highlightedLargeTicksReplicatorLayer, v26, v27, v9, v11, v13, v15);
  objc_msgSend_setPosition_(self->_highlightedLargeTickLayer, v28, v29, v16, self->_largeTickPositionY);
  smallTicksReplicatorLayer = self->_smallTicksReplicatorLayer;
  if (smallTicksReplicatorLayer)
  {
    objc_msgSend_setPosition_(smallTicksReplicatorLayer, v30, v31, v16, v17);
    objc_msgSend_setBounds_(self->_smallTicksReplicatorLayer, v33, v34, v9, v11, v13, v15);
    objc_msgSend_setPosition_(self->_smallTickLayer, v35, v36, v16, self->_smallTickPositionY);
  }

  highlightedSmallTicksReplicatorLayer = self->_highlightedSmallTicksReplicatorLayer;
  if (highlightedSmallTicksReplicatorLayer)
  {
    objc_msgSend_setPosition_(highlightedSmallTicksReplicatorLayer, v30, v31, v16, v17);
    objc_msgSend_setBounds_(self->_highlightedSmallTicksReplicatorLayer, v38, v39, v9, v11, v13, v15);
    objc_msgSend_setPosition_(self->_highlightedSmallTickLayer, v40, v41, v16, self->_smallTickPositionY);
  }
}

@end
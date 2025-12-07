@interface TSCHChartBorderAxisLayoutItem
- (id)renderersWithRep:(id)rep;
- (void)buildSubTree;
@end

@implementation TSCHChartBorderAxisLayoutItem

- (void)buildSubTree
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_layoutSettings(self, v4, v5, v6);
  if ((v75 & 1) == 0)
  {
    v7 = [TSCHChartAxisTitleLayoutItem alloc];
    v12 = objc_msgSend_initWithParent_(v7, v8, v9, v10, v11, self);
    axisTitle = self->super._axisTitle;
    self->super._axisTitle = v12;

    objc_msgSend_addObject_(v3, v14, v15, v16, v17, self->super._axisTitle);
  }

  v18 = [TSCHChartAxisLineLayoutItem alloc];
  v23 = objc_msgSend_initWithParent_(v18, v19, v20, v21, v22, self);
  axisLine = self->super._axisLine;
  self->super._axisLine = v23;

  objc_msgSend_addObject_(v3, v25, v26, v27, v28, self->super._axisLine);
  axisPosition = self->super._axisPosition;
  if (axisPosition == 1 || axisPosition == 4)
  {
    refLineLabelPadding = self->super._refLineLabelPadding;
    self->super._refLineLabelPadding = 0;

    refLineLabels = self->super._refLineLabels;
    self->super._refLineLabels = 0;
  }

  else
  {
    v33 = [TSCHChartReferenceLineLabelPaddingLayoutItem alloc];
    v38 = objc_msgSend_referenceLineLabelAxisID(self, v34, v35, v36, v37);
    v43 = objc_msgSend_initWithParent_axisID_(v33, v39, v40, v41, v42, self, v38);
    v44 = self->super._refLineLabelPadding;
    self->super._refLineLabelPadding = v43;

    objc_msgSend_addObject_(v3, v45, v46, v47, v48, self->super._refLineLabelPadding);
    v49 = [TSCHChartReferenceLineLabelsLayoutItem alloc];
    v54 = objc_msgSend_referenceLineLabelAxisID(self, v50, v51, v52, v53);
    v59 = objc_msgSend_initWithParent_axisID_(v49, v55, v56, v57, v58, self, v54);
    v60 = self->super._refLineLabels;
    self->super._refLineLabels = v59;

    objc_msgSend_addObject_(v3, v61, v62, v63, v64, self->super._refLineLabels);
  }

  v69 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v65, v66, v67, v68, v3);
  objc_msgSend_setChildren_(self, v70, v71, v72, v73, v69);

  v74.receiver = self;
  v74.super_class = TSCHChartBorderAxisLayoutItem;
  [(TSCHChartLayoutItem *)&v74 buildSubTree];
}

- (id)renderersWithRep:(id)rep
{
  repCopy = rep;
  v5 = objc_opt_new();
  v6 = [TSCHChartBorderAxisRenderer alloc];
  v11 = objc_msgSend_initWithChartRep_layoutItem_(v6, v7, v8, v9, v10, repCopy, self);

  objc_msgSend_addObject_(v5, v12, v13, v14, v15, v11);

  return v5;
}

@end
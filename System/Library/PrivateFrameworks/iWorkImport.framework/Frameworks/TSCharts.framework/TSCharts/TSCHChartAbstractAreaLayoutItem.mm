@interface TSCHChartAbstractAreaLayoutItem
- (CGRect)calcDrawingRect;
- (CGRect)titleFrame;
@end

@implementation TSCHChartAbstractAreaLayoutItem

- (CGRect)calcDrawingRect
{
  v89 = *MEMORY[0x277D85DE8];
  v84.receiver = self;
  v84.super_class = TSCHChartAbstractAreaLayoutItem;
  [(TSCHChartLayoutItem *)&v84 calcDrawingRect];
  v76 = v4;
  v77 = v3;
  v6 = v5;
  v8 = v7;
  objc_msgSend_rootedLayoutRect(self, v9, v3, v4, v5);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v19 = objc_msgSend_model(self, v18, 0.0, v12, v14);
  v24 = objc_msgSend_seriesList(v19, v20, v21, v22, v23);

  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, v26, v27, v28, &v80, v88, 16);
  if (v29)
  {
    v32 = v29;
    v33 = *v81;
    v35 = *MEMORY[0x277CBF398];
    v34 = *(MEMORY[0x277CBF398] + 16);
    v78 = v34;
    v79 = *MEMORY[0x277CBF398];
    v36 = v13;
    v37 = v11;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v81 != v33)
        {
          objc_enumerationMutation(v24);
        }

        v39 = objc_msgSend_seriesType(*(*(&v80 + 1) + 8 * i), v30, v34.width, *&v35, v31);
        v44 = objc_msgSend_elementBuilder(v39, v40, v41, v42, v43);

        if (v44)
        {
          objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v44, v78.width, v79.x, v45);
        }

        else
        {
          v86 = 0u;
          v87 = 0u;
          v85 = 0u;
        }

        v90.origin = v79;
        v90.size = v78;
        if (!CGRectIsNull(v90))
        {
          TSUTransformedCornersOfRect();
          TSURectWithPoints();
          v101.origin.x = v47;
          v101.origin.y = v48;
          v101.size.width = v49;
          v101.size.height = v50;
          v91.origin.x = v37;
          v91.origin.y = v36;
          v91.size.width = v15;
          v91.size.height = v17;
          v92 = CGRectUnion(v91, v101);
          x = v92.origin.x;
          y = v92.origin.y;
          width = v92.size.width;
          height = v92.size.height;
          TSURectWithPoints();
          v102.origin.x = v55;
          v102.origin.y = v56;
          v102.size.width = v57;
          v102.size.height = v58;
          v93.origin.x = x;
          v93.origin.y = y;
          v93.size.width = width;
          v93.size.height = height;
          *(&v46 - 2) = CGRectUnion(v93, v102);
          v37 = v59;
          v36 = v60;
          v15 = v46;
          v17 = v61;
        }

        if (v44)
        {
          objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v44, v78.width, v79.x, v46);
        }

        else
        {
          v86 = 0u;
          v87 = 0u;
          v85 = 0u;
        }

        v94.origin = v79;
        v94.size = v78;
        if (!CGRectIsNull(v94))
        {
          TSUTransformedCornersOfRect();
          TSURectWithPoints();
          v103.origin.x = v62;
          v103.origin.y = v63;
          v103.size.width = v64;
          v103.size.height = v65;
          v95.origin.x = v37;
          v95.origin.y = v36;
          v95.size.width = v15;
          v95.size.height = v17;
          v96 = CGRectUnion(v95, v103);
          v66 = v96.origin.x;
          v67 = v96.origin.y;
          v68 = v96.size.width;
          v69 = v96.size.height;
          TSURectWithPoints();
          v104.origin.x = v70;
          v104.origin.y = v71;
          v104.size.width = v72;
          v104.size.height = v73;
          v97.origin.x = v66;
          v97.origin.y = v67;
          v97.size.width = v68;
          v97.size.height = v69;
          v98 = CGRectUnion(v97, v104);
          v37 = v98.origin.x;
          v36 = v98.origin.y;
          v15 = v98.size.width;
          v17 = v98.size.height;
        }
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v30, v34.width, *&v35, v31, &v80, v88, 16);
    }

    while (v32);
  }

  TSUSubtractPoints();
  v105.origin.x = v74;
  v105.origin.y = v75;
  v99.origin.y = v76;
  v99.origin.x = v77;
  v99.size.width = v6;
  v99.size.height = v8;
  v105.size.width = v15;
  v105.size.height = v17;
  return CGRectUnion(v99, v105);
}

- (CGRect)titleFrame
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end
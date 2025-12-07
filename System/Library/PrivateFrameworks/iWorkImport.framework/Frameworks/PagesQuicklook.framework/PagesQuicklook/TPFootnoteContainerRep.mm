@interface TPFootnoteContainerRep
- (BOOL)p_hasContent;
- (void)drawInContext:(CGContext *)context;
@end

@implementation TPFootnoteContainerRep

- (void)drawInContext:(CGContext *)context
{
  if (objc_msgSend_p_hasContent(self, a2, v6, v7, v8, v9, context, v3, v4, v5))
  {
    DeviceGray = TSUCGColorCreateDeviceGray();
    CGContextSaveGState(context);
    CGContextSetFillColorWithColor(context, DeviceGray);
    v118 = objc_msgSend_layout(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    objc_msgSend_footnoteSeparatorLineFrame(v118, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v32 = v31.n128_f64[0];
    v34 = v33.n128_f64[0];
    v36 = v35.n128_f64[0];
    v38 = v37.n128_f64[0];
    if (objc_msgSend_textLayoutShouldLayoutVertically_(v118, v39, v31, v33, v35, v37, 0, v40, v41, v42))
    {
      v36 = 0.5;
    }

    else
    {
      v38 = 0.5;
    }

    objc_opt_class();
    v52 = objc_msgSend_childReps(self, v43, v48, v49, v50, v51, v44, v45, v46, v47);
    v62 = objc_msgSend_firstObject(v52, v53, v58, v59, v60, v61, v54, v55, v56, v57);
    v63 = TSUDynamicCast();

    if (v63)
    {
      v73 = objc_msgSend_storage(v63, v64, v69, v70, v71, v72, v65, v66, v67, v68);
      v82 = objc_msgSend_writingDirectionForParagraphAtCharIndex_(v73, v74, v78, v79, v80, v81, 0, v75, v76, v77);

      if (v82 == 1)
      {
        objc_msgSend_naturalBounds(self, v83, v88, v89, v90, v91, v84, v85, v86, v87);
        v32 = v92 - v36 - v32;
      }
    }

    else
    {
      v93 = MEMORY[0x277D81150];
      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v69, v70, v71, v72, "[TPFootnoteContainerRep drawInContext:]", v66, v67, v68);
      v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v99, v100, v101, v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerRep.m", v96, v97, v98);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v104, v105, v106, v107, v108, v94, v103, 61, 0, "invalid nil value for '%{public}s'", "firstFootnoteRep");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v114, v115, v116, v117, v110, v111, v112, v113);
    }

    v120.origin.x = v32;
    v120.origin.y = v34;
    v120.size.width = v36;
    v120.size.height = v38;
    CGContextFillRect(context, v120);
    CGContextRestoreGState(context);
    CGColorRelease(DeviceGray);
  }
}

- (BOOL)p_hasContent
{
  v11 = objc_msgSend_layout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (objc_msgSend_includeFootnoteSeparatorLine(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16))
  {
    v30 = objc_msgSend_layout(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v40 = objc_msgSend_isEmpty(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35) ^ 1;
  }

  else
  {
    LOBYTE(v40) = 0;
  }

  return v40;
}

@end
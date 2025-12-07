@interface TSTStrokeOrderedLayer
- ($DE50B600744B7521845B4CEF3C5064D2)findWidthAndRangeAtIndex:(SEL)index;
- ($DE50B600744B7521845B4CEF3C5064D2)nextWidthAndRange:(SEL)range;
- (TSTStrokeOrderedLayer)initWithContext:(id)context majorStrokeLayer:(id)layer minorStrokeLayer:(id)strokeLayer;
- (id)findStrokeAndRangeAtIndex:(int64_t)index;
- (id)nextStrokeAndRange:(id)range;
- (id)p_findStrokeAndRangeAtIndex:(int64_t)index highOrderToken:(id)token updatingLowOrderToken:(id *)orderToken lowOrderLayer:(id)layer;
- (int64_t)startingIndex;
- (void)appendStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order;
- (void)enumerateRawStrokesSegmentsUsingBlock:(id)block;
- (void)enumerateStrokesUsingBlock:(id)block;
- (void)insertStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order;
- (void)invalidate;
- (void)invalidateRange:(TSTSimpleRange)range;
@end

@implementation TSTStrokeOrderedLayer

- (TSTStrokeOrderedLayer)initWithContext:(id)context majorStrokeLayer:(id)layer minorStrokeLayer:(id)strokeLayer
{
  contextCopy = context;
  layerCopy = layer;
  strokeLayerCopy = strokeLayer;
  v14 = strokeLayerCopy;
  if (layerCopy)
  {
    if (strokeLayerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTStrokeOrderedLayer initWithContext:majorStrokeLayer:minorStrokeLayer:]", v13);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 93, 0, "invalid nil value for '%{public}s'", "majorStrokeLayer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v28 = MEMORY[0x277D81150];
  v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTStrokeOrderedLayer initWithContext:majorStrokeLayer:minorStrokeLayer:]", v13);
  v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v31);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 94, 0, "invalid nil value for '%{public}s'", "minorStrokeLayer");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
LABEL_3:
  v15 = objc_msgSend_columnOrRowIndex(layerCopy, v11, v12, v13);
  v37.receiver = self;
  v37.super_class = TSTStrokeOrderedLayer;
  v16 = [(TSTStrokeLayer *)&v37 initWithContext:contextCopy columnOrRowIndex:v15];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_majorStrokeLayer, layer);
    objc_storeStrong(&v17->_minorStrokeLayer, strokeLayer);
  }

  return v17;
}

- (int64_t)startingIndex
{
  v5 = objc_msgSend_majorStrokeLayer(self, a2, v2, v3);
  v9 = objc_msgSend_startingIndex(v5, v6, v7, v8);

  v13 = objc_msgSend_minorStrokeLayer(self, v10, v11, v12);
  v17 = objc_msgSend_startingIndex(v13, v14, v15, v16);

  if (v9 >= v17)
  {
    return v17;
  }

  else
  {
    return v9;
  }
}

- (id)p_findStrokeAndRangeAtIndex:(int64_t)index highOrderToken:(id)token updatingLowOrderToken:(id *)orderToken lowOrderLayer:(id)layer
{
  tokenCopy = token;
  layerCopy = layer;
  if (orderToken)
  {
    v11 = *orderToken;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (objc_msgSend_range(tokenCopy, v13, v14, v15) <= index || (v19 = objc_msgSend_range(tokenCopy, v16, v17, v18), v19 <= objc_msgSend_range(v12, v20, v21, v22)))
  {
    v43 = objc_msgSend_range(v12, v16, v17, v18);
    if (v43 <= index)
    {
      v47 = 0;
      indexCopy = 0x7FFFFFFFFFFFFFFFLL;
      if (index != 0x7FFFFFFFFFFFFFFFLL)
      {
        v74 = &v44[v43];
        if (&v44[v43] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v47 = (v74 - index);
          if (v74 <= index)
          {
            if (index <= v74)
            {
              indexCopy = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              indexCopy = &v44[v43];
            }

            if (index <= v74)
            {
              v47 = 0;
            }

            else
            {
              v47 = (index - v74);
            }
          }

          else
          {
            indexCopy = index;
          }
        }
      }
    }

    else
    {
      v47 = v44;
      indexCopy = v43;
    }

    if (v12)
    {
      while (1)
      {
        v49 = objc_msgSend_range(tokenCopy, v44, v45, v46);
        if (v49 > indexCopy)
        {
          break;
        }

        if (&v50[v49 - 1] < &v47[indexCopy - 1])
        {
          break;
        }

        v53 = objc_msgSend_order(tokenCopy, v50, v51, v52);
        if (v53 < objc_msgSend_order(v12, v54, v55, v56))
        {
          break;
        }

        v57 = objc_msgSend_nextStrokeAndRange_(layerCopy, v50, v12, v52);

        indexCopy = objc_msgSend_range(v57, v58, v59, v60);
        v47 = v44;
        v12 = v57;
        if (!v57)
        {
          goto LABEL_18;
        }
      }

      v64 = objc_msgSend_range(tokenCopy, v50, v51, v52);
      v65 = v75;
      v78 = objc_msgSend_range(tokenCopy, v75, v76, v77);
      v80 = v79;
      v83 = objc_msgSend_range(v12, v79, v81, v82);
      if (v83 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v80)
        {
          if (v78 <= v83 && &v80[v78 - 1] >= v83)
          {
            v84 = objc_msgSend_order(tokenCopy, v61, v62, v63);
            if (v84 < objc_msgSend_order(v12, v85, v86, v87))
            {
              v88 = objc_msgSend_range(v12, v61, v62, v63);
              v65 = (v88 - objc_msgSend_range(tokenCopy, v89, v90, v91));
            }
          }
        }
      }
    }

    else
    {
LABEL_18:
      v64 = objc_msgSend_range(tokenCopy, v44, v45, v46);
      v65 = v61;
      v12 = 0;
    }

    v32 = objc_msgSend_stroke(tokenCopy, v61, v62, v63);
    v69 = objc_msgSend_order(tokenCopy, v66, v67, v68);
  }

  else
  {
    v23 = objc_msgSend_range(v12, v16, v17, v18);
    v25 = v24;
    v28 = objc_msgSend_range(tokenCopy, v24, v26, v27);
    if (v28 == 0x7FFFFFFFFFFFFFFFLL || !v25 || v23 > v28 || &v25[v23 - 1] < v28)
    {
      v32 = objc_msgSend_stroke(v12, v29, v30, v31);
      v36 = objc_msgSend_range(v12, v33, v34, v35);
      v38 = v37;
      v41 = objc_msgSend_order(v12, v37, v39, v40);
      objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v42, v32, v36, v38, v41, 0, 0);
      goto LABEL_21;
    }

    v64 = objc_msgSend_range(v12, v29, v30, v31);
    v95 = objc_msgSend_range(tokenCopy, v92, v93, v94);
    v65 = (v95 - objc_msgSend_range(v12, v96, v97, v98));
    v32 = objc_msgSend_stroke(v12, v99, v100, v101);
    v69 = objc_msgSend_order(v12, v102, v103, v104);
  }

  objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v70, v32, v64, v65, v69, 0, 0);
  v71 = LABEL_21:;

  if (orderToken)
  {
    v72 = v12;
    *orderToken = v12;
  }

  return v71;
}

- (id)findStrokeAndRangeAtIndex:(int64_t)index
{
  v6 = objc_msgSend_majorStrokeLayer(self, a2, index, v3);
  v9 = objc_msgSend_findStrokeAndRangeAtIndex_(v6, v7, index, v8);

  v13 = objc_msgSend_minorStrokeLayer(self, v10, v11, v12);
  v16 = objc_msgSend_findStrokeAndRangeAtIndex_(v13, v14, index, v15);

  if (v9 && v16)
  {
    v20 = objc_msgSend_order(v9, v17, v18, v19);
    if (v20 >= objc_msgSend_order(v16, v21, v22, v23))
    {
      v63 = v16;
      v27 = objc_msgSend_minorStrokeLayer(self, v24, v25, v26);
      v29 = objc_msgSend_p_findStrokeAndRangeAtIndex_highOrderToken_updatingLowOrderToken_lowOrderLayer_(self, v43, index, v9, &v63, v27);
      v30 = v63;
      v31 = v16;
      v16 = v63;
    }

    else
    {
      v62 = v9;
      v27 = objc_msgSend_majorStrokeLayer(self, v24, v25, v26);
      v29 = objc_msgSend_p_findStrokeAndRangeAtIndex_highOrderToken_updatingLowOrderToken_lowOrderLayer_(self, v28, index, v16, &v62, v27);
      v30 = v62;
      v31 = v9;
      v9 = v62;
    }

    v44 = v30;

    objc_msgSend_setMajorStrokeLayerToken_(v29, v45, v9, v46);
    objc_msgSend_setMinorStrokeLayerToken_(v29, v47, v16, v48);
  }

  else if (v9)
  {
    v32 = objc_msgSend_stroke(v9, v17, v18, v19);
    v36 = objc_msgSend_range(v9, v33, v34, v35);
    v38 = v37;
    v41 = objc_msgSend_order(v9, v37, v39, v40);
    v29 = objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v42, v32, v36, v38, v41, v9, 0);
  }

  else if (v16)
  {
    v51 = objc_msgSend_stroke(v16, v17, v18, v19);
    v55 = objc_msgSend_range(v16, v52, v53, v54);
    v57 = v56;
    v60 = objc_msgSend_order(v16, v56, v58, v59);
    v29 = objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v61, v51, v55, v57, v60, 0, v16);

    v9 = 0;
  }

  else
  {
    v9 = 0;
    v29 = 0;
  }

  v49 = v29;

  return v29;
}

- ($DE50B600744B7521845B4CEF3C5064D2)findWidthAndRangeAtIndex:(SEL)index
{
  v27 = objc_msgSend_findStrokeAndRangeAtIndex_(self, index, a4, v4);
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();
  v10 = v6;
  *&retstr->var0 = xmmword_2217E1B70;
  *&retstr->var1.length = xmmword_2217E1B80;
  if (v6)
  {
    v11 = objc_msgSend_stroke(v6, v7, v8, v9);
    objc_msgSend_width(v11, v12, v13, v14);
    retstr->var0 = v15;

    retstr->var3 = 0x7FFFFFFFFFFFFFFFLL;
    retstr->var1.origin = objc_msgSend_range(v10, v16, v17, v18);
    retstr->var1.length = v19;
    v22 = objc_msgSend_stroke(v10, v19, v20, v21);
    retstr->var2 = objc_msgSend_isPortalStroke(v22, v23, v24, v25);
  }

  else
  {
    retstr->var3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)nextStrokeAndRange:(id)range
{
  rangeCopy = range;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();

  v9 = objc_msgSend_majorStrokeLayerToken(v5, v6, v7, v8);
  v13 = objc_msgSend_minorStrokeLayerToken(v5, v10, v11, v12);
  v17 = objc_msgSend_range(v5, v14, v15, v16);
  if (&v18[v17] >= v17)
  {
    v21 = &v18[v17];
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v29 = 0;
    v28 = 0;
    v30 = 0;
    if (!v13)
    {
      goto LABEL_27;
    }

LABEL_13:
    v31 = objc_msgSend_range(v13, v18, v19, v20);
    v32 = &v18[v31];
    if (&v18[v31] < v31)
    {
      v32 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v21 >= v32)
    {
      v33 = objc_msgSend_minorStrokeLayer(self, v18, v19, v20);
      v28 = objc_msgSend_nextStrokeAndRange_(v33, v34, v13, v35);

      if (!v9)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v28 = v13;
      if (!v9)
      {
LABEL_22:
        if (!v9)
        {
          if (v28)
          {
            v65 = objc_msgSend_stroke(v28, v18, v19, v20);
            v69 = objc_msgSend_range(v28, v66, v67, v68);
            v71 = v70;
            v74 = objc_msgSend_order(v28, v70, v72, v73);
            v29 = objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v75, v65, v69, v71, v74, 0, v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = 0;
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    if (v28)
    {
      v36 = objc_msgSend_order(v9, v18, v19, v20);
      if (v36 >= objc_msgSend_order(v28, v37, v38, v39))
      {
        v77 = v28;
        v43 = objc_msgSend_minorStrokeLayer(self, v40, v41, v42);
        v29 = objc_msgSend_p_findStrokeAndRangeAtIndex_highOrderToken_updatingLowOrderToken_lowOrderLayer_(self, v58, v21, v9, &v77, v43);
        v45 = v77;
        v46 = v28;
        v28 = v77;
      }

      else
      {
        v76 = v9;
        v43 = objc_msgSend_majorStrokeLayer(self, v40, v41, v42);
        v29 = objc_msgSend_p_findStrokeAndRangeAtIndex_highOrderToken_updatingLowOrderToken_lowOrderLayer_(self, v44, v21, v28, &v76, v43);
        v45 = v76;
        v46 = v9;
        v9 = v76;
      }

      v59 = v45;

      objc_msgSend_setMajorStrokeLayerToken_(v29, v60, v9, v61);
      objc_msgSend_setMinorStrokeLayerToken_(v29, v62, v28, v63);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v22 = objc_msgSend_range(v9, v18, v19, v20);
  v23 = &v18[v22];
  if (&v18[v22] < v22)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v21 >= v23)
  {
    v24 = objc_msgSend_majorStrokeLayer(self, v18, v19, v20);
    v27 = objc_msgSend_nextStrokeAndRange_(v24, v25, v9, v26);

    v9 = v27;
  }

  if (v13)
  {
    goto LABEL_13;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (v9)
  {
LABEL_23:
    v47 = objc_msgSend_stroke(v9, v18, v19, v20);
    v51 = objc_msgSend_range(v9, v48, v49, v50);
    v53 = v52;
    v56 = objc_msgSend_order(v9, v52, v54, v55);
    v29 = objc_msgSend_tokenWithStroke_range_order_majorStrokeLayerToken_minorStrokeLayerToken_(TSTStrokeOrderedLayerToken, v57, v47, v51, v53, v56, v9, 0);

LABEL_26:
    v30 = v9;
  }

LABEL_27:

  return v29;
}

- ($DE50B600744B7521845B4CEF3C5064D2)nextWidthAndRange:(SEL)range
{
  origin = a4->var1.origin;
  v6 = a4->var1.length + origin;
  if (v6 >= origin)
  {
    return objc_msgSend_findWidthAndRangeAtIndex_(self, range, v6, v4);
  }

  else
  {
    return objc_msgSend_findWidthAndRangeAtIndex_(self, range, 0x7FFFFFFFFFFFFFFFLL, v4);
  }
}

- (void)enumerateStrokesUsingBlock:(id)block
{
  blockCopy = block;
  v28 = 0;
  v8 = objc_msgSend_startingIndex(self, v5, v6, v7);
  v14 = objc_msgSend_findStrokeAndRangeAtIndex_(self, v9, v8, v10);
  while (1)
  {
    v15 = objc_msgSend_stroke(v14, v11, v12, v13);
    v19 = objc_msgSend_range(v14, v16, v17, v18);
    v21 = v20;
    v24 = objc_msgSend_order(v14, v20, v22, v23);
    blockCopy[2](blockCopy, v15, v19, v21, v24, &v28);

    if (v28)
    {
      break;
    }

    v27 = objc_msgSend_nextStrokeAndRange_(self, v25, v14, v26);

    v14 = v27;
    if (v28 == 1)
    {
      goto LABEL_6;
    }
  }

  v27 = v14;
LABEL_6:
}

- (void)appendStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order
{
  strokeCopy = stroke;
  v6 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTStrokeOrderedLayer appendStroke:inRange:order:]", v8);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v9, v12, 270, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = *MEMORY[0x277CBE658];
  v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s: %s", v20, "Do not call method", "[TSTStrokeOrderedLayer appendStroke:inRange:order:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v22, v18, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (void)insertStroke:(id)stroke inRange:(TSTSimpleRange)range order:(int)order
{
  strokeCopy = stroke;
  v6 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTStrokeOrderedLayer insertStroke:inRange:order:]", v8);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v9, v12, 274, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = *MEMORY[0x277CBE658];
  v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s: %s", v20, "Do not call method", "[TSTStrokeOrderedLayer insertStroke:inRange:order:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v22, v18, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (void)invalidate
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeOrderedLayer invalidate]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 278, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", v15, "Do not call method", "[TSTStrokeOrderedLayer invalidate]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v17, v13, v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (void)invalidateRange:(TSTSimpleRange)range
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeOrderedLayer invalidateRange:]", range.length);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeOrderedLayer.m", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 282, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", v15, "Do not call method", "[TSTStrokeOrderedLayer invalidateRange:]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v17, v13, v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (void)enumerateRawStrokesSegmentsUsingBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_startingIndex(self, v4, v5, v6);
  v11 = objc_msgSend_majorStrokeLayer(self, v8, v9, v10);
  v14 = objc_msgSend_findStrokeAndRangeAtIndex_(v11, v12, v7, v13);

  v18 = objc_msgSend_minorStrokeLayer(self, v15, v16, v17);
  v21 = objc_msgSend_findStrokeAndRangeAtIndex_(v18, v19, v7, v20);

  v82 = 0;
  v25 = v14 != 0;
  v26 = v21 != 0;
  if (v14 | v21)
  {
    while (1)
    {
      v27 = objc_msgSend_range(v14, v22, v23, v24);
      if (v7 == 0x7FFFFFFFFFFFFFFFLL || !v28 || v27 > v7 || &v28[v27 - 1] < v7)
      {
        break;
      }

      v32 = v7;
      if (!v25)
      {
LABEL_24:
        v38 = 0;
        v39 = 0;
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v26)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }

LABEL_17:
      v34 = objc_msgSend_range(v14, v28, v29, v30);
      if (v32 != 0x7FFFFFFFFFFFFFFFLL && v35 && v34 <= v32 && &v35[v34 - 1] >= v32)
      {
        v47 = objc_msgSend_range(v14, v35, v36, v37);
        v7 = &v48[v47];
        v39 = objc_msgSend_stroke(v14, v48, v49, v50);
        v38 = objc_msgSend_order(v14, v51, v52, v53);
        if (!v26)
        {
LABEL_33:
          v45 = 0;
          v46 = 0;
          goto LABEL_34;
        }
      }

      else
      {
        v7 = objc_msgSend_range(v14, v35, v36, v37);
        v38 = 0;
        v39 = 0;
        if (!v26)
        {
          goto LABEL_33;
        }
      }

LABEL_25:
      v40 = objc_msgSend_range(v21, v28, v29, v30);
      if (v32 != 0x7FFFFFFFFFFFFFFFLL && v41 && v40 <= v32 && &v41[v40 - 1] >= v32)
      {
        v74 = objc_msgSend_range(v21, v41, v42, v43);
        if (v7 >= &v75[v74])
        {
          v7 = &v75[v74];
        }

        v46 = objc_msgSend_stroke(v21, v75, v76, v77);
        v45 = objc_msgSend_order(v21, v78, v79, v80);
      }

      else
      {
        v44 = objc_msgSend_range(v21, v41, v42, v43);
        v45 = 0;
        v46 = 0;
        if (v7 >= v44)
        {
          v7 = v44;
        }
      }

LABEL_34:
      v54 = v32 - v7;
      if (v32 <= v7)
      {
        v55 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v7;
      }

      if (v32 <= v7)
      {
        v54 = 0;
      }

      if (v32 < v7)
      {
        v55 = v32;
        v54 = v7 - v32;
      }

      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v55 = 0x7FFFFFFFFFFFFFFFLL;
        v54 = 0;
      }

      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v56 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v55;
      }

      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v57 = 0;
      }

      else
      {
        v57 = v54;
      }

      blockCopy[2](blockCopy, v56, v57, v39, v38, v46, v45, &v82);
      if (v25)
      {
        v61 = objc_msgSend_range(v14, v58, v59, v60);
        if (v7 >= &v58[v61])
        {
          v62 = objc_msgSend_majorStrokeLayer(self, v58, v59, v60);
          v65 = objc_msgSend_nextStrokeAndRange_(v62, v63, v14, v64);

          v14 = v65;
        }

        if (v26)
        {
LABEL_53:
          v66 = objc_msgSend_range(v21, v58, v59, v60);
          if (v7 >= &v67[v66])
          {
            v70 = objc_msgSend_minorStrokeLayer(self, v67, v68, v69);
            v73 = objc_msgSend_nextStrokeAndRange_(v70, v71, v21, v72);

            v21 = v73;
          }

          goto LABEL_57;
        }
      }

      else
      {
        v14 = 0;
        if (v26)
        {
          goto LABEL_53;
        }
      }

      v21 = 0;
LABEL_57:

      v25 = v14 != 0;
      v26 = v21 != 0;
      if (!(v14 | v21))
      {
        goto LABEL_62;
      }
    }

    v31 = objc_msgSend_range(v21, v28, v29, v30);
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || !v28 || v31 > v7 || (v32 = v7, &v28[v31 - 1] < v7))
    {
      if (v25)
      {
        v32 = objc_msgSend_range(v14, v28, v29, v30);
        if (!v26)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v32 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v26)
        {
          goto LABEL_16;
        }
      }

      v33 = objc_msgSend_range(v21, v28, v29, v30);
      if (v32 >= v33)
      {
        v32 = v33;
      }
    }

LABEL_16:
    if (!v25)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_62:
}

@end
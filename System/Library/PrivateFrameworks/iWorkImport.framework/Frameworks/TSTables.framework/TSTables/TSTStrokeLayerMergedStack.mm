@interface TSTStrokeLayerMergedStack
+ (id)mergeLeftStrokes:(id)strokes withRightStrokes:(id)rightStrokes;
+ (id)mergeTopStrokes:(id)strokes withBottomStrokes:(id)bottomStrokes;
+ (void)enumerateWidthsInLayers:(void *)layers usingBlock:(id)block;
- (TSTStrokeLayerMergedStack)initWithCopyOfMajorStrokes:(id)strokes andMinorStrokes:(id)minorStrokes;
- (double)maxWidthOfStrokesInRange:(TSTSimpleRange)range cachedMax:(double)max;
- (double)p_widthOfStrokesAtIndex:(int64_t)index;
- (id)portalledStrokeLayer;
- (unint64_t)count;
- (vector<TSTStrokeLayer)p_strokeLayerVector;
- (void)invalidateSpillStrokes;
- (void)lockForWrite;
@end

@implementation TSTStrokeLayerMergedStack

- (TSTStrokeLayerMergedStack)initWithCopyOfMajorStrokes:(id)strokes andMinorStrokes:(id)minorStrokes
{
  strokesCopy = strokes;
  minorStrokesCopy = minorStrokes;
  v163.receiver = self;
  v163.super_class = TSTStrokeLayerMergedStack;
  v11 = [(TSTStrokeLayerAbstractStack *)&v163 init];
  if (v11)
  {
    v12 = objc_msgSend_defaultStrokeLayer(minorStrokesCopy, v8, v9, v10);
    v16 = objc_msgSend_startingStrokeOrder(v12, v13, v14, v15);
    v20 = objc_msgSend_defaultStrokeLayer(strokesCopy, v17, v18, v19);
    v24 = objc_msgSend_startingStrokeOrder(v20, v21, v22, v23);

    if (v16 <= v24)
    {
      v42 = objc_msgSend_defaultStrokeLayer(minorStrokesCopy, v25, v26, v27);
      v46 = objc_msgSend_copy(v42, v43, v44, v45);
      defaultMinorStrokeLayer = v11->_defaultMinorStrokeLayer;
      v11->_defaultMinorStrokeLayer = v46;

      objc_msgSend_defaultStrokeLayer(strokesCopy, v48, v49, v50);
    }

    else
    {
      v28 = objc_msgSend_defaultStrokeLayer(strokesCopy, v25, v26, v27);
      v32 = objc_msgSend_copy(v28, v29, v30, v31);
      v33 = v11->_defaultMinorStrokeLayer;
      v11->_defaultMinorStrokeLayer = v32;

      objc_msgSend_defaultStrokeLayer(minorStrokesCopy, v34, v35, v36);
    }
    v37 = ;
    v41 = objc_msgSend_copy(v37, v38, v39, v40);
    defaultMajorStrokeLayer = v11->_defaultMajorStrokeLayer;
    v11->_defaultMajorStrokeLayer = v41;

    v58 = objc_msgSend_customStrokeLayer(strokesCopy, v52, v53, v54);
    if (v58 && (objc_msgSend_customStrokeLayer(minorStrokesCopy, v55, v56, v57), v59 = objc_claimAutoreleasedReturnValue(), v59, v58, v59))
    {
      v60 = objc_msgSend_customStrokeLayer(strokesCopy, v55, v56, v57);
      v64 = objc_msgSend_copy(v60, v61, v62, v63);

      v68 = objc_msgSend_customStrokeLayer(minorStrokesCopy, v65, v66, v67);
      customUnorderedStrokeLayer = objc_msgSend_copy(v68, v69, v70, v71);

      v73 = [TSTStrokeOrderedLayer alloc];
      v75 = objc_msgSend_initWithContext_majorStrokeLayer_minorStrokeLayer_(v73, v74, 0, v64, customUnorderedStrokeLayer);
      customOrderedStrokeLayer = v11->_customOrderedStrokeLayer;
      v11->_customOrderedStrokeLayer = v75;
    }

    else
    {
      v77 = objc_msgSend_customStrokeLayer(strokesCopy, v55, v56, v57);

      if (v77)
      {
        v64 = objc_msgSend_customStrokeLayer(strokesCopy, v78, v79, v80);
        v84 = objc_msgSend_copy(v64, v81, v82, v83);
      }

      else
      {
        v85 = objc_msgSend_customStrokeLayer(minorStrokesCopy, v78, v79, v80);

        if (!v85)
        {
LABEL_14:
          v92 = objc_msgSend_clearedStrokeLayer(minorStrokesCopy, v86, v87, v88);
          v96 = objc_msgSend_copy(v92, v93, v94, v95);
          clearedMinorStrokeLayer = v11->_clearedMinorStrokeLayer;
          v11->_clearedMinorStrokeLayer = v96;

          v101 = objc_msgSend_clearedStrokeLayer(strokesCopy, v98, v99, v100);
          v105 = objc_msgSend_copy(v101, v102, v103, v104);
          clearedMajorStrokeLayer = v11->_clearedMajorStrokeLayer;
          v11->_clearedMajorStrokeLayer = v105;

          v113 = objc_msgSend_dynamicStrokeLayer(strokesCopy, v107, v108, v109);
          if (v113 && (objc_msgSend_dynamicStrokeLayer(minorStrokesCopy, v110, v111, v112), v114 = objc_claimAutoreleasedReturnValue(), v114, v113, v114))
          {
            v115 = objc_msgSend_dynamicStrokeLayer(strokesCopy, v110, v111, v112);
            v119 = objc_msgSend_copy(v115, v116, v117, v118);

            v123 = objc_msgSend_dynamicStrokeLayer(minorStrokesCopy, v120, v121, v122);
            dynamicUnorderedStrokeLayer = objc_msgSend_copy(v123, v124, v125, v126);

            v128 = [TSTStrokeOrderedLayer alloc];
            v130 = objc_msgSend_initWithContext_majorStrokeLayer_minorStrokeLayer_(v128, v129, 0, v119, dynamicUnorderedStrokeLayer);
            dynamicOrderedStrokeLayer = v11->_dynamicOrderedStrokeLayer;
            v11->_dynamicOrderedStrokeLayer = v130;
          }

          else
          {
            v132 = objc_msgSend_dynamicStrokeLayer(strokesCopy, v110, v111, v112);

            if (v132)
            {
              v119 = objc_msgSend_dynamicStrokeLayer(strokesCopy, v133, v134, v135);
              v139 = objc_msgSend_copy(v119, v136, v137, v138);
            }

            else
            {
              v140 = objc_msgSend_dynamicStrokeLayer(minorStrokesCopy, v133, v134, v135);

              if (!v140)
              {
LABEL_23:
                v147 = objc_msgSend_spillStrokeLayer(minorStrokesCopy, v141, v142, v143);
                v151 = objc_msgSend_copy(v147, v148, v149, v150);
                spillMinorStrokeLayer = v11->_spillMinorStrokeLayer;
                v11->_spillMinorStrokeLayer = v151;

                v156 = objc_msgSend_spillStrokeLayer(strokesCopy, v153, v154, v155);
                v160 = objc_msgSend_copy(v156, v157, v158, v159);
                spillMajorStrokeLayer = v11->_spillMajorStrokeLayer;
                v11->_spillMajorStrokeLayer = v160;

                goto LABEL_24;
              }

              v119 = objc_msgSend_dynamicStrokeLayer(minorStrokesCopy, v141, v142, v143);
              v139 = objc_msgSend_copy(v119, v144, v145, v146);
            }

            dynamicUnorderedStrokeLayer = v11->_dynamicUnorderedStrokeLayer;
            v11->_dynamicUnorderedStrokeLayer = v139;
          }

          goto LABEL_23;
        }

        v64 = objc_msgSend_customStrokeLayer(minorStrokesCopy, v86, v87, v88);
        v84 = objc_msgSend_copy(v64, v89, v90, v91);
      }

      customUnorderedStrokeLayer = v11->_customUnorderedStrokeLayer;
      v11->_customUnorderedStrokeLayer = v84;
    }

    goto LABEL_14;
  }

LABEL_24:

  return v11;
}

- (vector<TSTStrokeLayer)p_strokeLayerVector
{
  selfCopy = self;
  var1 = self[9].var1;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (__PAIR128__(self[9].var2, var1) != 0 || self[10].var0 || self[10].var1 || self[10].var2 || self[11].var0 || self[11].var1 || self[11].var2)
  {
    goto LABEL_8;
  }

  var2 = self[8].var2;
  v7 = self + 9;
  var0 = self[9].var0;
  if (!var2)
  {
    if (!var0)
    {
      goto LABEL_8;
    }

LABEL_36:
    sub_221281314(retstr, v7);
    return self;
  }

  if (!var0)
  {
    v7 = (self + 208);
    goto LABEL_36;
  }

  if (var2 == var0)
  {
    goto LABEL_36;
  }

LABEL_8:
  if (self[8].var2)
  {
    sub_221281314(retstr, &self[8].var2);
  }

  if (selfCopy[9].var0)
  {
    sub_221281314(retstr, &selfCopy[9].var0);
  }

  if (selfCopy[9].var1)
  {
    sub_221281314(retstr, &selfCopy[9].var1);
  }

  if (selfCopy[9].var2)
  {
    v9 = selfCopy[9].var2;
    sub_221281314(retstr, &v9);
  }

  if (selfCopy[10].var0)
  {
    v9 = selfCopy[10].var0;
    sub_221281314(retstr, &v9);
  }

  if (selfCopy[10].var1)
  {
    v9 = selfCopy[10].var1;
    sub_221281314(retstr, &v9);
  }

  if (selfCopy[10].var2)
  {
    v9 = selfCopy[10].var2;
    sub_221281314(retstr, &v9);
  }

  if (selfCopy[11].var0)
  {
    v9 = selfCopy[11].var0;
    sub_221281314(retstr, &v9);
  }

  if (selfCopy[11].var1)
  {
    v9 = selfCopy[11].var1;
    sub_221281314(retstr, &v9);
  }

  if (selfCopy[11].var2)
  {
    v9 = selfCopy[11].var2;
    sub_221281314(retstr, &v9);
  }

  return self;
}

- (unint64_t)count
{
  v5 = objc_msgSend_defaultMinorStrokeLayer(self, a2, v2, v3);
  v9 = objc_msgSend_defaultMajorStrokeLayer(self, v6, v7, v8);
  v13 = objc_msgSend_customUnorderedStrokeLayer(self, v10, v11, v12);
  v17 = objc_msgSend_customOrderedStrokeLayer(self, v14, v15, v16);
  v21 = objc_msgSend_clearedMinorStrokeLayer(self, v18, v19, v20);
  v25 = objc_msgSend_clearedMajorStrokeLayer(self, v22, v23, v24);
  v29 = objc_msgSend_dynamicUnorderedStrokeLayer(self, v26, v27, v28);
  v33 = objc_msgSend_dynamicOrderedStrokeLayer(self, v30, v31, v32);
  v37 = objc_msgSend_spillMinorStrokeLayer(self, v34, v35, v36);
  v41 = objc_msgSend_spillMajorStrokeLayer(self, v38, v39, v40);
  v42 = v9 != 0;
  if (v5)
  {
    ++v42;
  }

  if (v13)
  {
    ++v42;
  }

  if (v17)
  {
    ++v42;
  }

  if (v21)
  {
    ++v42;
  }

  if (v25)
  {
    ++v42;
  }

  if (v29)
  {
    ++v42;
  }

  if (v33)
  {
    ++v42;
  }

  if (v37)
  {
    ++v42;
  }

  if (v41)
  {
    v43 = v42 + 1;
  }

  else
  {
    v43 = v42;
  }

  return v43;
}

- (id)portalledStrokeLayer
{
  v5 = objc_msgSend_defaultMajorStrokeLayer(self, a2, v2, v3);

  if (v5)
  {
    objc_msgSend_defaultMajorStrokeLayer(self, v6, v7, v8);
  }

  else
  {
    objc_msgSend_defaultMinorStrokeLayer(self, v6, v7, v8);
  }
  v9 = ;

  return v9;
}

- (void)invalidateSpillStrokes
{
  objc_msgSend_setSpillMinorStrokeLayer_(self, a2, 0, v2);

  MEMORY[0x2821F9670](self, sel_setSpillMajorStrokeLayer_, 0, v4);
}

+ (id)mergeTopStrokes:(id)strokes withBottomStrokes:(id)bottomStrokes
{
  strokesCopy = strokes;
  bottomStrokesCopy = bottomStrokes;
  v7 = [TSTStrokeLayerMergedStack alloc];
  v9 = objc_msgSend_initWithCopyOfMajorStrokes_andMinorStrokes_(v7, v8, strokesCopy, bottomStrokesCopy);
  objc_msgSend_lockForRead(v9, v10, v11, v12);

  return v9;
}

+ (id)mergeLeftStrokes:(id)strokes withRightStrokes:(id)rightStrokes
{
  strokesCopy = strokes;
  rightStrokesCopy = rightStrokes;
  v7 = [TSTStrokeLayerMergedStack alloc];
  v9 = objc_msgSend_initWithCopyOfMajorStrokes_andMinorStrokes_(v7, v8, strokesCopy, rightStrokesCopy);
  objc_msgSend_lockForRead(v9, v10, v11, v12);

  return v9;
}

- (double)maxWidthOfStrokesInRange:(TSTSimpleRange)range cachedMax:(double)max
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2213847C4;
  v6[3] = &unk_2784638E8;
  v6[4] = &v7;
  *&v6[5] = max;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, a2, range.origin, range.length, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (double)p_widthOfStrokesAtIndex:(int64_t)index
{
  v3 = index != 0x7FFFFFFFFFFFFFFELL;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (index == 0x7FFFFFFFFFFFFFFELL)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = index - 1;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221384954;
  v7[3] = &unk_278463910;
  v7[4] = &v8;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(self, a2, v4, 2 * v3, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

+ (void)enumerateWidthsInLayers:(void *)layers usingBlock:(id)block
{
  blockCopy = block;
  v61[0] = 0;
  v9 = *layers;
  v8 = *(layers + 1);
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = v8 - *layers;
  if (v8 != *layers)
  {
    do
    {
      v12 = objc_msgSend_startingIndex(*v9, v5, v6, v7);
      if (v12 < v10)
      {
        v10 = v12;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  v13 = v11 >> 3;
  sub_2213850A8(v60, v13, &xmmword_2217E1B70);
  *&v56 = 0x7FFFFFFFFFFFFFFFLL;
  v52 = v13;
  sub_2213851E0(__p, v13, &v56);
  if ((v61[0] & 1) == 0 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v10 & ~(v10 >> 63);
    v15 = (*(layers + 1) - *layers) >> 3;
    while (1)
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v17 = v15 - 1;
        v18 = *(*layers + 8 * (v15 - 1));
        if (!v18)
        {
          goto LABEL_24;
        }

        v19 = v60[0];
        v20 = v60[0] + 40 * v17;
        v21 = *(v20 + 4);
        v22 = *(v20 + 1);
        v56 = *v20;
        i = v22;
        v58 = v21;
        if (sub_2213FC604(&v56))
        {
          v25 = *v20;
          v26 = *(v20 + 1);
          v58 = *(v20 + 4);
          v56 = v25;
          for (i = v26; sub_2213FC604(&v56); i = v35)
          {
            if (*(v20 + 2) + *(v20 + 1) > v14)
            {
              break;
            }

            v29 = *v20;
            v30 = *(v20 + 1);
            v55 = *(v20 + 4);
            v54[0] = v29;
            v54[1] = v30;
            objc_msgSend_nextWidthAndRange_(v18, v27, v54, v28);
            v19 = v60[0];
            v20 = v60[0] + 40 * v17;
            v31 = v58;
            v32 = v56;
            v33 = i;
            *(v20 + 4) = v58;
            *v20 = v32;
            *(v20 + 1) = v33;
            v34 = *v20;
            v35 = *(v20 + 1);
            v58 = v31;
            v56 = v34;
          }
        }

        else
        {
          objc_msgSend_findWidthAndRangeAtIndex_(v18, v23, v14, v24);
          v19 = v60[0];
          v36 = v60[0] + 40 * v17;
          v37 = v56;
          v38 = i;
          *(v36 + 4) = v58;
          *v36 = v37;
          *(v36 + 1) = v38;
        }

        v39 = &v19[40 * v17];
        v40 = *v39;
        v41 = *(v39 + 1);
        v58 = *(v39 + 4);
        v56 = v40;
        i = v41;
        if (!sub_2213FC604(&v56))
        {
          *(*layers + 8 * v17) = 0;
          *(__p[0] + v17) = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_24;
        }

        v43 = *(v39 + 1);
        v44 = *(v39 + 2);
        if (v44)
        {
          if (v43 <= v14)
          {
            v45 = v44 + v43;
            if (v45 - 1 >= v14)
            {
              break;
            }
          }
        }

        *(__p[0] + v17) = v43;
        if (v16 >= v43)
        {
          v16 = v43;
        }

LABEL_24:
        if (v15 <= 1)
        {
          v61[0] = 1;
          goto LABEL_45;
        }

        --v15;
        if (v61[0])
        {
          goto LABEL_45;
        }
      }

      if (v16 >= v45)
      {
        v46 = v45;
      }

      else
      {
        v46 = v16;
      }

      v47 = v14 & ~(v14 >> 63);
      v48 = v46 - v47;
      if (v46 < v47)
      {
        v47 = 0x7FFFFFFFFFFFFFFFLL;
        v48 = 0;
      }

      v49 = v46 == v14;
      if (v46 == v14)
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v47;
      }

      if (v49)
      {
        v51 = 0;
      }

      else
      {
        v51 = v48;
      }

      if (v39[24] == 1)
      {
        objc_msgSend_enumerateWidthsInRange_usingBlock_(**layers, v42, v50, v51, blockCopy);
      }

      else
      {
        blockCopy[2](blockCopy, v50, v51, v61, *v39);
      }

      if ((v61[0] & 1) == 0)
      {
        v14 = v51 + v50;
        v15 = v52;
        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_45:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v60[0])
  {
    v60[1] = v60[0];
    operator delete(v60[0]);
  }
}

- (void)lockForWrite
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeLayerMergedStack lockForWrite]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 1112, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", v15, "Do not call method", "[TSTStrokeLayerMergedStack lockForWrite]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v17, v13, v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

@end
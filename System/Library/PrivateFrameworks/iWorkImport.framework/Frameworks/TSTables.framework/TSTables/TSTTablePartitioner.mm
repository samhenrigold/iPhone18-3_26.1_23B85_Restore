@interface TSTTablePartitioner
- (BOOL)didHint:(id)hint syncWithNextHint:(id)nextHint horizontally:(BOOL)horizontally;
- (BOOL)p_didFinishPartitioningHint:(id)hint horizontally:(BOOL)horizontally;
- (BOOL)shouldReuseLayout:(id)layout forSize:(CGSize)size parentLayout:(id)parentLayout hint:(id)hint;
- (CGRect)totalPartitionFrame;
- (CGSize)scaleToFit;
- (TSTLayout)scaledLayout;
- (TSTTableInfo)tableInfo;
- (TSTTablePartitioner)initWithInfo:(id)info;
- (TSUCellRect)calculateCellRangeForNextPartition:(unsigned __int16)partition nextPartitionRange:(TSUCellRect)range additionalHeightForCaption:(double)caption availableSizeRemaining:(CGSize)remaining previousHint:(id)hint;
- (TSUCellRect)measureCellRangeForNextPartitionOfSize:(CGSize)size previousHint:(id)hint horizontally:(BOOL)horizontally;
- (id)hintCacheKeyForHint:(id)hint;
- (id)hintCacheKeyForPartitioningPass:(id)pass andHintID:(TSUCellCoord)d;
- (id)hintForLayout:(id)layout;
- (id)layoutForHint:(id)hint parentLayout:(id)layout;
- (id)nextHintForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished;
- (id)nextLayoutForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished;
- (id)partitioningPassForFirstPartitionSize:(CGSize)size;
- (id)partitioningPassForHint:(id)hint withPreviousHint:(id)previousHint;
- (void)validateScaledLayout;
@end

@implementation TSTTablePartitioner

- (TSTTablePartitioner)initWithInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTablePartitioner initWithInfo:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 54, 0, "Incorrect info class in the table partitioner!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v41.receiver = self;
  v41.super_class = TSTTablePartitioner;
  v17 = [(TSTTablePartitioner *)&v41 init];
  v18 = v17;
  if (v17)
  {
    v19 = objc_storeWeak(&v17->_tableInfo, v5);
    v18->_firstPartitionWidth = -1.0;
    v20 = v19;
    if (objc_msgSend_isInlineWithText(v5, v21, v22, v23))
    {
      _Q0 = *MEMORY[0x277CBF3A8];
    }

    else
    {
      __asm { FMOV            V0.2D, #1.0 }
    }

    v18->_scaleToFit = _Q0;

    v29 = objc_alloc_init(MEMORY[0x277D812B8]);
    hintMatricesByCanvas = v18->_hintMatricesByCanvas;
    v18->_hintMatricesByCanvas = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    partitioningPassCache = v18->_partitioningPassCache;
    v18->_partitioningPassCache = v31;

    scaledLayout = v18->_scaledLayout;
    v18->_scaledLayout = 0;

    *&v18->_tableIsLTR = 257;
    v37 = objc_msgSend_geometry(v5, v34, v35, v36);
    objc_msgSend_setInfoGeometry_(v18, v38, v37, v39);
  }

  return v18;
}

- (void)validateScaledLayout
{
  v7 = objc_msgSend_scaledLayout(self, a2, v2, v3);
  objc_msgSend_validate(v7, v4, v5, v6);
}

- (TSUCellRect)measureCellRangeForNextPartitionOfSize:(CGSize)size previousHint:(id)hint horizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  height = size.height;
  width = size.width;
  hintCopy = hint;
  v144 = objc_msgSend_scaledLayout(self, v10, v11, v12);
  v16 = objc_msgSend_tableInfo(self, v13, v14, v15);
  v20 = objc_msgSend_layoutEngine(v16, v17, v18, v19);

  objc_msgSend_validateScaledLayout(self, v21, v22, v23);
  v143 = hintCopy;
  if (hintCopy)
  {
    v27 = objc_msgSend_cellRange(hintCopy, v24, v25, v26);
    if (v27 == 0x7FFFFFFF || (v27 & 0xFFFF00000000) == 0x7FFF00000000 || !(v28 >> 32) || !v28)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTTablePartitioner measureCellRangeForNextPartitionOfSize:previousHint:horizontally:]", v30);
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 91, 0, "Partitioner can't continue from an invalid range.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
    }

    v40 = objc_msgSend_cellRange(hintCopy, v28, v29, v30);
    tableIsLTR = self->_tableIsLTR;
    layoutIsLTR = self->_layoutIsLTR;
    if (horizontallyCopy)
    {
      if (tableIsLTR == layoutIsLTR)
      {
        v46 = v41;
      }

      else
      {
        v46 = -1;
      }

      v47 = v46 + WORD2(v40);
      v146 = objc_msgSend_cellRange(hintCopy, v41, v42, v43);
      objc_msgSend_maximumSize(hintCopy, v48, v49, v50);
      if (height == v51)
      {
        objc_msgSend_cellRange(hintCopy, v24, v25, v26);
        v145 = v24 & 0xFFFFFFFF00000000;
      }

      else
      {
        v145 = 0;
      }

      LOWORD(v52) = v47;
      LOWORD(v142) = v47;
    }

    else
    {
      if (tableIsLTR == layoutIsLTR)
      {
        v53 = 0;
      }

      else
      {
        v53 = v41 - 1;
      }

      LOWORD(v52) = v53 + WORD2(v40);
      v54 = objc_msgSend_cellRange(hintCopy, v41, v42, v43);
      if (v55 >> 32)
      {
        v58 = v54 == 0x7FFFFFFF;
      }

      else
      {
        v58 = 1;
      }

      v59 = HIDWORD(v55) + v54;
      if (v58)
      {
        v59 = 0x80000000;
      }

      v146 = v59;
      v142 = objc_msgSend_cellRange(hintCopy, v55, v56, v57) >> 32;
      objc_msgSend_maximumSize(hintCopy, v60, v61, v62);
      if (width == v63)
      {
        objc_msgSend_cellRange(hintCopy, v24, v25, v26);
        v145 = v24;
      }

      else
      {
        v145 = 0;
      }
    }
  }

  else if (self->_tableIsLTR == self->_layoutIsLTR)
  {
    LOWORD(v52) = 0;
    v145 = 0;
    v146 = 0;
    LOWORD(v142) = 0;
  }

  else
  {
    v145 = 0;
    v146 = 0;
    LOWORD(v142) = 0;
    v52 = objc_msgSend_numberOfColumns(v20, v24, v25, v26) - 1;
  }

  objc_msgSend_cellRange(v20, v24, v25, v26);
  v141 = v64;
  v67 = objc_msgSend_numberOfRows(v20, v64, v65, v66);
  v71 = objc_msgSend_numberOfColumns(v20, v68, v69, v70);
  v75 = objc_msgSend_numberOfHeaderRows(v20, v72, v73, v74);
  v76 = v20;
  v80 = objc_msgSend_numberOfHeaderColumns(v20, v77, v78, v79);
  v84 = objc_msgSend_tableInfo(self, v81, v82, v83);
  v88 = objc_msgSend_repeatingHeaderRowsEnabled(v84, v85, v86, v87);

  v92 = objc_msgSend_tableInfo(self, v89, v90, v91);
  v96 = objc_msgSend_repeatingHeaderColumnsEnabled(v92, v93, v94, v95);

  if (v88)
  {
    v97 = v144;
    if (v146)
    {
      sub_2211BC7C4(v144, 0, v71 | (v75 << 32));
      height = height - v98;
    }
  }

  else
  {
    v97 = v144;
  }

  v99 = v52;
  if (((self->_tableIsLTR == self->_layoutIsLTR) & v96) == 1)
  {
    v101 = v142;
    v100 = v143;
    if (v142)
    {
      sub_2211BC7C4(v97, 0, v80 | (v67 << 32));
      width = width - v102;
    }
  }

  else
  {
    v101 = v142;
    v100 = v143;
  }

  v103 = sub_2211B44A8(v97);
  if (!v146)
  {
    v104 = v103;
    if (TSTLayoutGetTableNameVisible(v97))
    {
      height = height - v104;
    }
  }

  if (width <= 0.0)
  {
    width = 0.0;
  }

  v148 = 0;
  v149 = &v148;
  if (height <= 0.0)
  {
    height = 0.0;
  }

  v150 = 0x2020000000;
  v151 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v109 = objc_msgSend_caption(WeakRetained, v106, v107, v108);

  if (v109)
  {
    if (!v100)
    {
      v115 = objc_alloc_init(TSTLayoutHint);
      Partition_nextPartitionRange_additionalHeightForCaption_availableSizeRemaining_previousHint = objc_msgSend_calculateCellRangeForNextPartition_nextPartitionRange_additionalHeightForCaption_availableSizeRemaining_previousHint_(self, v121, v99, v146 | (v101 << 32), v145, 0, 0.0, width, height);
      objc_msgSend_setCellRange_(v115, v123, Partition_nextPartitionRange_additionalHeightForCaption_availableSizeRemaining_previousHint, v123);
      v119 = objc_msgSend_cellRange(v115, v124, v125, v126);
      goto LABEL_49;
    }

    if ((objc_msgSend_cellRange(v100, v110, v111, v112) & 0xFFFF00000000) == 0)
    {
      v115 = objc_msgSend_copy(v100, v110, v113, v114);
      v119 = objc_msgSend_cellRange(v115, v116, v117, v118);
LABEL_49:
      objc_msgSend_setCellRange_(v115, v120, v119 & 0xFFFFFFFF00000000, v141 & 0xFFFFFFFF00000000 | v120);
      v127 = objc_loadWeakRetained(&self->_tableInfo);
      objc_msgSend_setOverrideLayoutHint_(v127, v128, v115, v129);

      v130 = objc_loadWeakRetained(&self->_tableInfo);
      v147[0] = MEMORY[0x277D85DD0];
      v147[1] = 3221225472;
      v147[2] = sub_2213B7EBC;
      v147[3] = &unk_278464150;
      v147[4] = &v148;
      objc_msgSend_performBlockWithTemporaryLayout_(v130, v131, v147, v132);

      v133 = objc_loadWeakRetained(&self->_tableInfo);
      objc_msgSend_setOverrideLayoutHint_(v133, v134, 0, v135);
    }
  }

  v136 = objc_msgSend_calculateCellRangeForNextPartition_nextPartitionRange_additionalHeightForCaption_availableSizeRemaining_previousHint_(self, v110, v99, v146 | (v101 << 32), v145, v100, v149[3], width, height);
  v138 = v137;
  _Block_object_dispose(&v148, 8);

  v139 = v136;
  v140 = v138;
  result.size = v140;
  result.origin = v139;
  return result;
}

- (TSUCellRect)calculateCellRangeForNextPartition:(unsigned __int16)partition nextPartitionRange:(TSUCellRect)range additionalHeightForCaption:(double)caption availableSizeRemaining:(CGSize)remaining previousHint:(id)hint
{
  height = remaining.height;
  width = remaining.width;
  size = range.size;
  origin = range.origin;
  partitionCopy = partition;
  v11 = objc_msgSend_scaledLayout(self, a2, partition, *&range.origin);
  v15 = objc_msgSend_tableInfo(self, v12, v13, v14);
  v19 = objc_msgSend_layoutEngine(v15, v16, v17, v18);

  v23 = objc_msgSend_tableInfo(self, v20, v21, v22);
  isInlineWithText = objc_msgSend_isInlineWithText(v23, v24, v25, v26);

  v30 = objc_msgSend_cellRange(v19, v27, v28, v29);
  v32 = v31;
  v148 = objc_msgSend_numberOfRows(v19, v31, v33, v34);
  v38 = objc_msgSend_numberOfColumns(v19, v35, v36, v37);
  range1 = objc_msgSend_numberOfHeaderRows(v19, v39, v40, v41);
  range1_12 = objc_msgSend_numberOfHeaderColumns(v19, v42, v43, v44);
  v144 = objc_msgSend_numberOfFooterRows(v19, v45, v46, v47);
  v51 = objc_msgSend_tableInfo(self, v48, v49, v50);
  v55 = objc_msgSend_repeatingHeaderColumnsEnabled(v51, v52, v53, v54);

  v56 = sub_2211BBE60(v11, origin.row | (partitionCopy << 32), 0x100000001uLL);
  v58 = v57;
  v60 = v59;
  rect = v61;
  v137 = v32 >> 32;
  v138 = v30;
  v136 = v32;
  v62 = sub_2211BC768(v11, (v30 + (v32 << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (v30 + HIDWORD(v32) - 1), 0x100000001uLL);
  v64 = v63;
  v66 = v65;
  v68 = v67;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v73 = objc_msgSend_caption(WeakRetained, v70, v71, v72);

  if (v73)
  {
    v152.origin.x = v62;
    v152.origin.y = v64;
    v152.size.width = v66;
    v152.size.height = v68;
    if (CGRectGetMaxY(v152) <= height + v58)
    {
      v153.origin.x = v62;
      v153.origin.y = v64;
      v153.size.width = v66;
      v153.size.height = v68;
      if (CGRectGetMaxY(v153) + caption > height + v58)
      {
        v154.origin.x = v62;
        v154.origin.y = v64;
        v154.size.width = v66;
        v154.size.height = v68;
        height = CGRectGetMinY(v154) - v58 + 1.0;
      }
    }
  }

  v74 = HIDWORD(*&origin);
  v140 = v38;
  if (self->_layoutIsLTR)
  {
    v75 = width + v56;
    v76 = v58 + height;
    v77 = sub_2211BB390(v11, width + v56, v58 + height);
    v78 = HIDWORD(v77);
    v80 = self->_tableIsLTR != self->_layoutIsLTR && (v77 & 0xFFFF00000000) != 0x7FFF00000000;
    if ((v80 & v55) == 1)
    {
      sub_2211BC7C4(v11, 0, range1_12 | (v148 << 32));
      v75 = v75 - v81;
      v82 = sub_2211BB390(v11, v75, v58 + height);
      row = v82;
      if ((v82 & 0xFFFF00000000) != 0x7FFF00000000 || hint != 0)
      {
        LOWORD(v78) = WORD2(v82);
      }
    }

    else
    {
      row = v77;
    }

    v157.origin.x = v56;
    v157.origin.y = v58;
    v157.size.width = v60;
    v157.size.height = rect;
    if (CGRectGetMinX(v157) <= v75)
    {
      v158.origin.x = v56;
      v158.origin.y = v58;
      v158.size.width = v60;
      v158.size.height = rect;
      if (CGRectGetMaxX(v158) >= v75)
      {
        LOWORD(v78) = partitionCopy;
      }
    }

    v159.origin.x = v56;
    v159.origin.y = v58;
    v159.size.width = v60;
    v159.size.height = rect;
    if (CGRectGetMinY(v159) > v76)
    {
      goto LABEL_44;
    }

    v160.origin.x = v56;
    v160.origin.y = v58;
    v160.size.width = v60;
    v160.size.height = rect;
    if (CGRectGetMaxY(v160) < v76)
    {
      goto LABEL_44;
    }

LABEL_43:
    row = origin.row;
    goto LABEL_44;
  }

  v155.origin.x = v56;
  v155.origin.y = v58;
  v155.size.width = v60;
  v155.size.height = rect;
  MaxX = CGRectGetMaxX(v155);
  v156.origin.x = v56;
  v156.origin.y = v58;
  v156.size.width = v60;
  v156.size.height = rect;
  v86 = MaxX - width;
  v87 = height + CGRectGetMinY(v156);
  v88 = sub_2211BB390(v11, v86, v87);
  v78 = HIDWORD(v88);
  v90 = self->_tableIsLTR != self->_layoutIsLTR && (v88 & 0xFFFF00000000) != 0x7FFF00000000;
  if ((v90 & v55) == 1)
  {
    sub_2211BC7C4(v11, 0, range1_12 | (v148 << 32));
    v86 = v86 + v91;
    v92 = sub_2211BB390(v11, v86, v87);
    row = v92;
    if ((v92 & 0xFFFF00000000) != 0x7FFF00000000 || hint != 0)
    {
      LOWORD(v78) = WORD2(v92);
    }
  }

  else
  {
    row = v88;
  }

  v161.origin.x = v56;
  v161.origin.y = v58;
  v161.size.width = v60;
  v161.size.height = rect;
  if (CGRectGetMaxX(v161) >= v86)
  {
    v162.origin.x = v56;
    v162.origin.y = v58;
    v162.size.width = v60;
    v162.size.height = rect;
    if (CGRectGetMinX(v162) <= v86)
    {
      LOWORD(v78) = partitionCopy;
    }
  }

  v163.origin.x = v56;
  v163.origin.y = v58;
  v163.size.width = v60;
  v163.size.height = rect;
  if (CGRectGetMinY(v163) <= v87)
  {
    v164.origin.x = v56;
    v164.origin.y = v58;
    v164.size.width = v60;
    v164.size.height = rect;
    if (CGRectGetMaxY(v164) >= v87)
    {
      goto LABEL_43;
    }
  }

LABEL_44:
  if (row <= origin.row)
  {
    v97 = origin.row;
  }

  else
  {
    v97 = row;
  }

  tableIsLTR = self->_tableIsLTR;
  layoutIsLTR = self->_layoutIsLTR;
  if (partitionCopy <= v78)
  {
    v100 = v78;
  }

  else
  {
    v100 = partitionCopy;
  }

  if (partitionCopy >= v78)
  {
    v101 = v78;
  }

  else
  {
    v101 = partitionCopy;
  }

  if (tableIsLTR == layoutIsLTR || v78 == 0x7FFF)
  {
    v103 = v100;
  }

  else
  {
    v103 = v101;
  }

  if (v97 == 0x7FFFFFFF)
  {
    v104 = size.numberOfColumns | ((v148 - origin.row) << 32);
  }

  else
  {
    v104 = size;
  }

  if (v103 == 0x7FFF)
  {
    if (tableIsLTR == layoutIsLTR)
    {
      v104 = v104 & 0xFFFFFFFF00000000 | (v140 - origin.column);
    }

    else
    {
      LOWORD(v74) = 0;
      v104 = (partitionCopy | v104 & 0xFFFFFFFF00000000) + 1;
    }
  }

  if (!HIDWORD(v104))
  {
    recta = v11;
    v105 = v148 + ~v144;
    v106 = (v97 - origin.row) << 32;
    if (row <= origin.row)
    {
      v106 = 0x100000000;
    }

    v107 = v104 | v106;
    if (!origin.row)
    {
      v108 = HIDWORD(v106) - 1;
      if (!HIDWORD(v107))
      {
        v108 = 0x7FFFFFFF;
      }

      if (v108 < range1)
      {
        v107 = v104 | ((range1 + 1) << 32);
      }
    }

    if (HIDWORD(v107))
    {
      v109 = origin.row == 0x7FFFFFFF;
    }

    else
    {
      v109 = 1;
    }

    if (v109)
    {
      v110 = 0x7FFFFFFF;
    }

    else
    {
      v110 = origin.row + HIDWORD(v107) - 1;
    }

    if (v110 >= v105)
    {
      v111 = !v137 || v138 == 0x7FFFFFFF;
      v112 = v111 ? 0x7FFFFFFF : v138 + v137 - 1;
      if (v112 != v110)
      {
        v113 = v74 != 0x7FFF && origin.row == 0x7FFFFFFF;
        v114.location = range1;
        if (v113)
        {
          v115.location = 0;
        }

        else
        {
          v115.location = origin.row;
        }

        v115.length = HIDWORD(v107);
        v114.length = v148 - (range1 + v144);
        length = NSIntersectionRange(v114, v115).length;
        if (length < 2)
        {
          v104 = &v136[-(*&origin << 32)] & 0xFFFFFFFF00000000 | v107;
          goto LABEL_97;
        }

        v107 = v107 | ((v105 + HIDWORD(v107) + ~v110) << 32);
      }
    }

    v104 = v107;
LABEL_97:
    v11 = recta;
  }

  if (isInlineWithText)
  {
    v116 = objc_msgSend_tableInfo(self, length, v95, v96);
    v104 = v104 & 0xFFFFFFFF00000000 | objc_msgSend_numberOfColumns(v116, v117, v118, v119);
  }

  else
  {
    if (v104)
    {
      goto LABEL_119;
    }

    v120 = self->_tableIsLTR;
    v121 = self->_layoutIsLTR;
    LODWORD(v122) = partitionCopy - v103;
    if (v120 == v121)
    {
      v122 = v103 - partitionCopy;
    }

    else
    {
      v122 = v122;
    }

    if (v120 == v121)
    {
      v123 = v74;
    }

    else
    {
      v123 = v103 + 1;
    }

    if (v122)
    {
      v104 |= v122;
    }

    else
    {
      v104 |= 1uLL;
      if (v140 <= v123)
      {
        v123 = v140 - 1;
        if (v120 == v121)
        {
          v123 = v74;
        }
      }
    }

    if (v123)
    {
      LOWORD(v74) = v123;
      goto LABEL_119;
    }

    v124 = (v104 - 1);
    if (!v104)
    {
      v124 = 0x7FFF;
    }

    if (range1_12 > v124)
    {
      LOWORD(v74) = 0;
      v104 = v104 & 0xFFFFFFFF00000000 | (range1_12 + 1);
      goto LABEL_119;
    }
  }

  LOWORD(v74) = 0;
LABEL_119:
  if (origin.row == 0x7FFFFFFFLL || v74 == 0x7FFF || !HIDWORD(v104) || !v104)
  {
    v125 = MEMORY[0x277D81150];
    v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], length, "[TSTTablePartitioner calculateCellRangeForNextPartition:nextPartitionRange:additionalHeightForCaption:availableSizeRemaining:previousHint:]", v96, v136);
    v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v128);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v130, v126, v129, 383, 0, "Partitioner measured an invalid range.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132, v133);
  }

  v134 = *&origin & 0xFFFF0000FFFFFFFFLL | (v74 << 32);
  v135 = v104;
  result.size = v135;
  result.origin = v134;
  return result;
}

- (id)nextHintForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished
{
  horizontallyCopy = horizontally;
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  hintCopy = hint;
  objc_opt_class();
  v14 = TSUDynamicCast();

  if (hintCopy && !v14)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTablePartitioner nextHintForSize:parentLayout:previousHint:horizontally:outFinished:]", v17);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 389, 0, "previousHint must be nil, or of type TSTLayoutHint.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  v27 = objc_msgSend_layout(v14, v15, v16, v17);
  if (v27)
  {
    v31 = v27;
    v32 = objc_msgSend_layout(v14, v28, v29, v30);
    v36 = objc_msgSend_info(v32, v33, v34, v35);
    WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

    if (v36 != WeakRetained)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTTablePartitioner nextHintForSize:parentLayout:previousHint:horizontally:outFinished:]", v30);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 390, 0, "Hint is for the wrong table info.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
    }
  }

  if (v14)
  {
    if (objc_msgSend_p_didFinishPartitioningHint_horizontally_(self, v28, v14, horizontallyCopy))
    {
      v50 = 0;
      goto LABEL_56;
    }

    v52 = objc_msgSend_cacheHintID(v14, v47, v48, v49);
    v51 = v52;
    v222 = HIWORD(v52);
    if (horizontallyCopy)
    {
      LOWORD(v224) = WORD2(v52) + 1;
    }

    else
    {
      v224 = HIDWORD(v52);
      v51 = v52 + 1;
    }
  }

  else
  {
    v222 = 0;
    LOWORD(v224) = 0;
    v51 = 0;
  }

  v53 = objc_msgSend_rootLayout(layoutCopy, v28, v29, v30);
  v57 = objc_msgSend_layoutController(v53, v54, v55, v56);
  v61 = objc_msgSend_canvas(v57, v58, v59, v60);

  if (!v61)
  {
    v61 = objc_msgSend_null(MEMORY[0x277CBEB68], v62, v63, v64);
  }

  v65 = objc_msgSend_objectForKey_(self->_hintMatricesByCanvas, v62, v61, v64);
  if (!v65)
  {
    v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forUncopiedKey_(self->_hintMatricesByCanvas, v66, v65, v61);
  }

  v225 = objc_alloc_init(TSTLayoutHint);
  objc_msgSend_scaleToFit(self, v67, v68, v69);
  v72 = *MEMORY[0x277CBF3A8];
  v71 = *(MEMORY[0x277CBF3A8] + 8);
  if (*MEMORY[0x277CBF3A8] == v73 && v71 == v70 && (v74 = objc_loadWeakRetained(&self->_tableInfo), isInlineWithText = objc_msgSend_isInlineWithText(v74, v75, v76, v77), v74, (isInlineWithText & 1) == 0))
  {
    objc_msgSend_setScaleToFit_(self, v79, v80, v81, 1.0, 1.0);
  }

  else
  {
    v82 = objc_loadWeakRetained(&self->_tableInfo);
    if (objc_msgSend_isInlineWithText(v82, v83, v84, v85))
    {
      if ((self->_firstPartitionWidth == width || v51 || v224) && ((objc_msgSend_scaleToFit(self, v86, v87, v88), v93 != v72) || v92 != v71))
      {
        v145 = objc_msgSend_infoGeometry(self, v89, v90, v91);
        objc_msgSend_size(v145, v146, v147, v148);
        v150 = v149;
        v152 = v151;
        objc_msgSend_tableInfo(self, v153, v154, v155);
        v220 = v51;
        v156 = v65;
        v158 = v157 = horizontallyCopy;
        v162 = objc_msgSend_geometry(v158, v159, v160, v161);
        objc_msgSend_size(v162, v163, v164, v165);
        v167 = v166;
        v169 = v168;

        horizontallyCopy = v157;
        v65 = v156;
        v51 = v220;

        if (v150 == v167 && v152 == v169)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      v97 = 1.0;
      objc_msgSend_setScaleToFit_(self, v94, v95, v96, 1.0, 1.0);
      objc_msgSend_validateScaledLayout(self, v98, v99, v100);
      v104 = objc_msgSend_scaledLayout(self, v101, v102, v103);
      v108 = objc_msgSend_computeLayoutGeometry(v104, v105, v106, v107);

      v112 = objc_msgSend_scaledLayout(self, v109, v110, v111);
      sub_2211B5074(v112, v113, v114, v115);
      v117 = v116;

      v121 = objc_msgSend_scaledLayout(self, v118, v119, v120);
      sub_2211B9750(v121, v122, v123, v124);
      v126 = v125;

      v130 = width - (v117 - v126);
      if (v126 > v130)
      {
        v97 = v130 / v126;
      }

      objc_msgSend_setScaleToFit_(self, v127, v128, v129, v97, 1.0);
      self->_firstPartitionWidth = width;
      objc_msgSend_scaleToFit(self, v131, v132, v133);
      v135 = v134;
      v137 = v136;
      v141 = objc_msgSend_scaledLayout(self, v138, v139, v140);
      objc_msgSend_setScaleToFit_(v141, v142, v143, v144, v135, v137);
    }

    else
    {
    }
  }

LABEL_35:
  v223 = horizontallyCopy;
  PartitionOfSize_previousHint_horizontally = objc_msgSend_measureCellRangeForNextPartitionOfSize_previousHint_horizontally_(self, v94, v14, horizontallyCopy, width, height);
  v174 = PartitionOfSize_previousHint_horizontally;
  v175 = v171;
  if (HIDWORD(v171))
  {
    v176 = PartitionOfSize_previousHint_horizontally == 0x7FFFFFFF;
  }

  else
  {
    v176 = 1;
  }

  if (v176)
  {
    v177 = 0x7FFFFFFF;
  }

  else
  {
    v177 = PartitionOfSize_previousHint_horizontally + HIDWORD(v171) - 1;
  }

  v178 = objc_msgSend_tableInfo(self, v171, v172, v173);
  if (v177 <= objc_msgSend_numberOfRows(v178, v179, v180, v181))
  {
    if (v175)
    {
      v185 = WORD2(v174) == 0x7FFF;
    }

    else
    {
      v185 = 1;
    }

    selfCopy = self;
    v187 = v14;
    v188 = v61;
    if (v185)
    {
      v189 = 0x7FFF;
    }

    else
    {
      v189 = v175 + WORD2(v174) - 1;
    }

    p_isa = &selfCopy->super.isa;
    v221 = v51;
    v190 = objc_msgSend_tableInfo(selfCopy, v182, v183, v184);
    v194 = layoutCopy;
    v195 = objc_msgSend_numberOfColumns(v190, v191, v192, v193);

    v196 = v195 >= v189;
    v61 = v188;
    v14 = v187;
    layoutCopy = v194;
    if (v196)
    {
      v198 = objc_loadWeakRetained(p_isa + 3);
      v202 = objc_msgSend_geometry(v198, v199, v200, v201);
      objc_msgSend_setInfoGeometry_(p_isa, v203, v202, v204);

      v197 = v225;
      objc_msgSend_setCacheHintID_(v225, v205, (v222 << 48) | (v224 << 32) | v221, v206);
      objc_msgSend_setCellRange_(v225, v207, v174, v175);
      objc_msgSend_setMaximumSize_(v225, v208, v209, v210, width, height);
      objc_msgSend_setHorizontal_(v225, v211, v223, v212);
      v214 = objc_msgSend_partitioningPassForHint_withPreviousHint_(p_isa, v213, v225, v187);
      objc_msgSend_setPartitioningPass_(v225, v215, v214, v216);

      if (finished)
      {
        *finished = objc_msgSend_p_didFinishPartitioningHint_horizontally_(p_isa, v217, v225, v223);
      }

      v50 = v225;
      goto LABEL_55;
    }
  }

  else
  {
  }

  v197 = v225;
  v50 = 0;
  if (finished)
  {
    *finished = 1;
  }

LABEL_55:

LABEL_56:

  return v50;
}

- (id)nextLayoutForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished
{
  horizontallyCopy = horizontally;
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  v16 = objc_msgSend_nextHintForSize_parentLayout_previousHint_horizontally_outFinished_(self, v14, layoutCopy, hint, horizontallyCopy, finished, width, height);
  if (v16)
  {
    v17 = objc_msgSend_layoutForHint_parentLayout_(self, v15, v16, layoutCopy);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)layoutForHint:(id)hint parentLayout:(id)layout
{
  hintCopy = hint;
  layoutCopy = layout;
  objc_opt_class();
  v11 = TSUDynamicCast();
  if (!v11)
  {
    v40 = 0;
    goto LABEL_86;
  }

  v12 = objc_msgSend_rootLayout(layoutCopy, v8, v9, v10);
  v16 = objc_msgSend_layoutController(v12, v13, v14, v15);
  v20 = objc_msgSend_canvas(v16, v17, v18, v19);

  if (!v20)
  {
    v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v21, v22, v23);
  }

  v24 = objc_msgSend_objectForKey_(self->_hintMatricesByCanvas, v21, v20, v23);
  if (!v24)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forUncopiedKey_(self->_hintMatricesByCanvas, v25, v24, v20);
  }

  v26 = v11;
  v29 = objc_msgSend_hintCacheKeyForHint_(self, v27, hintCopy, v28);
  v32 = objc_msgSend_objectForKey_(v24, v30, v29, v31);

  v36 = objc_msgSend_layout(v32, v33, v34, v35);
  v40 = v36;
  v136 = v32;
  if (v32)
  {
    v41 = objc_msgSend_cellRange(v32, v37, v38, v39);
    v133 = v42;
    v134 = v41;
    v45 = objc_msgSend_cellRange(v26, v42, v43, v44);
    v46 = v45;
    v131 = v37;
    if (v40)
    {
      objc_msgSend_scaleToFit(v40, v37, v38, v39);
      v48 = v47;
      v50 = v49;
      objc_msgSend_maximumSize(v26, v51, v52, v53);
      if (objc_msgSend_shouldReuseLayout_forSize_parentLayout_hint_(self, v54, v40, layoutCopy, v26))
      {
        v55 = 1;
        goto LABEL_18;
      }

      v129 = v46;
      v56 = v11;
      v57 = layoutCopy;
      v58 = hintCopy;
      objc_msgSend_setLayout_(v26, v37, 0, v39);

      goto LABEL_17;
    }

    v129 = v45;
    v56 = v11;
    v57 = layoutCopy;
    v58 = hintCopy;
    v48 = 1.0;
  }

  else
  {
    v46 = 0x7FFF7FFFFFFFLL;
    v48 = 1.0;
    v131 = 0;
    if (v36)
    {
      v55 = 0;
      v133 = 0;
      v134 = 0x7FFF7FFFFFFFLL;
      v50 = 1.0;
      goto LABEL_18;
    }

    v129 = 0x7FFF7FFFFFFFLL;
    v56 = v11;
    v57 = layoutCopy;
    v58 = hintCopy;
    v133 = 0;
    v134 = 0x7FFF7FFFFFFFLL;
  }

  v50 = 1.0;
LABEL_17:
  v59 = objc_msgSend_tableInfo(self, v37, v38, v39);
  v63 = objc_alloc(objc_msgSend_layoutClass(v59, v60, v61, v62));
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v40 = objc_msgSend_initWithInfo_layoutHint_(v63, v65, WeakRetained, v26);

  v55 = 0;
  hintCopy = v58;
  layoutCopy = v57;
  v11 = v56;
  v46 = v129;
LABEL_18:
  objc_msgSend_setLayout_(v26, v37, v40, v39);
  objc_msgSend_setLayoutHint_(v40, v66, v26, v67);
  sub_2211B3D94(v40);
  objc_msgSend_setIsValid_(v26, v68, 1, v69);
  if (v55)
  {
    v73 = objc_msgSend_tableInfo(self, v70, v71, v72);
    isInlineWithText = objc_msgSend_isInlineWithText(v73, v74, v75, v76);

    objc_msgSend_scaleToFit(self, v77, v78, v79);
    if (v82 != v48 || v81 != v50)
    {
      v83 = objc_msgSend_cellRange(v26, v70, v80, v72);
      sub_2211B6824(v40, v83, v84);
LABEL_82:
      objc_msgSend_invalidateSize(v40, v70, v80, v72);
      goto LABEL_83;
    }

    if (v134 == v46 && ((v134 ^ v46) & 0x101FFFF00000000) == 0 && v133 == v131)
    {
      if (!isInlineWithText)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    v128 = hintCopy;
    v85 = v46 & 0xFFFF00000000;
    if (v46 != 0x7FFFFFFF && v85 == 0x7FFF00000000)
    {
      v87 = 0;
    }

    else
    {
      v87 = WORD2(v46);
    }

    v88 = v87;
    if (v131)
    {
      v89 = WORD2(v46) == 0x7FFF;
    }

    else
    {
      v89 = 1;
    }

    if (v89)
    {
      v90 = 0x7FFF;
    }

    else
    {
      v90 = v131 + WORD2(v46) - 1;
    }

    v91 = v46 == 0x7FFFFFFF;
    if (v91 && v85 != 0x7FFF00000000)
    {
      v92 = 0;
    }

    else
    {
      v92 = v46;
    }

    v127 = v92;
    if (!(v131 >> 32))
    {
      v91 = 1;
    }

    if (v91)
    {
      v93 = 0x7FFFFFFF;
    }

    else
    {
      v93 = v46 + HIDWORD(v131) - 1;
    }

    v94 = v134 & 0xFFFF00000000;
    if (v134 != 0x7FFFFFFF && v94 == 0x7FFF00000000)
    {
      v96 = 0;
    }

    else
    {
      v96 = WORD2(v134);
    }

    if (v133)
    {
      v97 = WORD2(v134) == 0x7FFF;
    }

    else
    {
      v97 = 1;
    }

    if (v97)
    {
      v98 = 0x7FFF;
    }

    else
    {
      v98 = v133 + WORD2(v134) - 1;
    }

    v99 = v134 == 0x7FFFFFFF;
    if (v99 && v94 != 0x7FFF00000000)
    {
      v100 = 0;
    }

    else
    {
      v100 = v134;
    }

    if (!(v133 >> 32))
    {
      v99 = 1;
    }

    if (v99)
    {
      v101 = 0x7FFFFFFF;
    }

    else
    {
      v101 = v134 + HIDWORD(v133) - 1;
    }

    v132 = v93;
    if (v88 >= v96)
    {
      v104 = (v88 > v96) | isInlineWithText;
    }

    else
    {
      v135 = v100;
      v102 = v101;
      v103 = v90;
      sub_2211B69F8(v40, v88);
      v90 = v103;
      v101 = v102;
      v100 = v135;
      v104 = 1;
    }

    if (v90 <= v98)
    {
      v105 = (v90 < v98) | v104;
    }

    else
    {
      sub_2211B69F8(v40, (v98 + 1));
      v105 = 1;
    }

    hintCopy = v128;
    v106 = v127;
    if (v127 >= v100)
    {
      v107 = (v127 > v100) | v105;
    }

    else
    {
      sub_2211B6988(v40, v127);
      v107 = 1;
    }

    v108 = v132;
    if (v132 <= v101)
    {
      v109 = (v132 < v101) | v107;
    }

    else
    {
      sub_2211B6988(v40, v101 + 1);
      v109 = 1;
    }

    v110 = objc_msgSend_containedTextEditingLayout(v40, v106, v108, v72);
    if (v110)
    {
      v111 = v110;
      objc_msgSend_invalidateTextLayout(v110, v70, v80, v72);
      objc_msgSend_invalidateForAutosizingTextLayout_(v40, v112, v111, v113);

      goto LABEL_82;
    }

    if (v109)
    {
      goto LABEL_82;
    }
  }

LABEL_83:
  v114 = objc_msgSend_hintCacheKeyForHint_(self, v70, v26, v72);
  objc_msgSend_setObject_forKey_(v24, v115, v26, v114);

  v119 = objc_msgSend_horizontal(v26, v116, v117, v118);
  if (objc_msgSend_p_didFinishPartitioningHint_horizontally_(self, v120, v26, v119))
  {
    v124 = objc_msgSend_horizontal(v26, v121, v122, v123);
    objc_msgSend_p_flushCacheAfterPartitioningFinished_lastHint_horizontally_(self, v125, v24, v26, v124);
  }

LABEL_86:

  return v40;
}

- (BOOL)didHint:(id)hint syncWithNextHint:(id)nextHint horizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  nextHintCopy = nextHint;
  hintCopy = hint;
  objc_opt_class();
  v9 = TSUDynamicCast();

  objc_opt_class();
  v10 = TSUDynamicCast();

  if (v9)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || (objc_msgSend_layout(v9, v11, v12, v13), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_tableInfo(v15, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_layout(v10, v20, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend_tableInfo(v23, v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), v27, v23, v19, v15, v19 != v27))
  {
LABEL_6:
    v31 = 0;
    goto LABEL_7;
  }

  v33 = objc_msgSend_cellRange(v9, v28, v29, v30);
  if (!horizontallyCopy)
  {
    if (v34 >> 32)
    {
      v67 = v33 == 0x7FFFFFFF;
    }

    else
    {
      v67 = 1;
    }

    if (v67)
    {
      v68 = 0x80000000;
    }

    else
    {
      v68 = HIDWORD(v34) + v33;
    }

    v69 = objc_msgSend_cellRange(v10, v34, v35, v36);
    if ((v69 & 0xFFFF00000000) != 0x7FFF00000000 && v69 == 0x7FFFFFFF)
    {
      v74 = 0;
    }

    else
    {
      v74 = v69;
    }

    if (v68 != v74)
    {
      goto LABEL_6;
    }

    v75 = objc_msgSend_cellRange(v9, v70, v71, v72);
    v79 = HIDWORD(v75);
    if (v75 != 0x7FFFFFFF && (v75 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      LOWORD(v79) = 0;
    }

    v81 = v79;
    v82 = objc_msgSend_cellRange(v10, v76, v77, v78);
    v86 = HIDWORD(v82);
    if (v82 != 0x7FFFFFFF && (v82 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      LOWORD(v86) = 0;
    }

    if (v81 != v86)
    {
      goto LABEL_6;
    }

    v88 = objc_msgSend_cellRange(v9, v83, v84, v85);
    v92 = v89 + WORD2(v88) - 1;
    if (v89)
    {
      v93 = WORD2(v88) == 0x7FFF;
    }

    else
    {
      v93 = 1;
    }

    if (v93)
    {
      v92 = 0x7FFF;
    }

    v94 = v92;
    v95 = objc_msgSend_cellRange(v10, v89, v90, v91);
    v97 = v96 + WORD2(v95) - 1;
    if (v96)
    {
      v98 = WORD2(v95) == 0x7FFF;
    }

    else
    {
      v98 = 1;
    }

    if (v98)
    {
      v97 = 0x7FFF;
    }

    v66 = v94 == v97;
LABEL_81:
    v31 = v66;
    goto LABEL_7;
  }

  if (v34)
  {
    v37 = WORD2(v33) == 0x7FFF;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v38 = 0x8000;
  }

  else
  {
    v38 = (v34 + WORD2(v33) - 1) + 1;
  }

  v39 = objc_msgSend_cellRange(v10, v34, v35, v36);
  v31 = 0;
  v43 = v39 != 0x7FFFFFFF && (v39 & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v43 && WORD2(v39) == v38)
  {
    v44 = objc_msgSend_cellRange(v9, v40, v41, v42);
    if ((v44 & 0xFFFF00000000) != 0x7FFF00000000 && v44 == 0x7FFFFFFF)
    {
      v49 = 0;
    }

    else
    {
      v49 = v44;
    }

    v50 = objc_msgSend_cellRange(v10, v45, v46, v47);
    if ((v50 & 0xFFFF00000000) != 0x7FFF00000000 && v50 == 0x7FFFFFFF)
    {
      v55 = 0;
    }

    else
    {
      v55 = v50;
    }

    if (v49 != v55)
    {
      goto LABEL_6;
    }

    v56 = objc_msgSend_cellRange(v9, v51, v52, v53);
    if (v57 >> 32)
    {
      v60 = v56 == 0x7FFFFFFF;
    }

    else
    {
      v60 = 1;
    }

    if (v60)
    {
      v61 = 0x7FFFFFFF;
    }

    else
    {
      v61 = v56 + HIDWORD(v57) - 1;
    }

    v62 = objc_msgSend_cellRange(v10, v57, v58, v59);
    if (HIDWORD(v63))
    {
      v64 = v62 == 0x7FFFFFFF;
    }

    else
    {
      v64 = 1;
    }

    if (v64)
    {
      v65 = 0x7FFFFFFF;
    }

    else
    {
      v65 = v62 + HIDWORD(v63) - 1;
    }

    v66 = v61 == v65;
    goto LABEL_81;
  }

LABEL_7:

  return v31;
}

- (BOOL)p_didFinishPartitioningHint:(id)hint horizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  hintCopy = hint;
  v10 = objc_msgSend_tableInfo(self, v7, v8, v9);
  v14 = objc_msgSend_layoutEngine(v10, v11, v12, v13);

  if (!hintCopy)
  {
    v35 = 0;
    goto LABEL_61;
  }

  v18 = objc_msgSend_cellRange(v14, v15, v16, v17);
  v20 = v19;
  v21 = sub_2213A2A30(v14, hintCopy);
  v24 = v22;
  if (!horizontallyCopy)
  {
    if (HIDWORD(v20))
    {
      v36 = v18 == 0x7FFFFFFF;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      v37 = 0x7FFFFFFF;
    }

    else
    {
      v37 = v18 + HIDWORD(v20) - 1;
    }

    if (v22 >> 32)
    {
      v38 = v21 == 0x7FFFFFFF;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
      v39 = 0x7FFFFFFF;
    }

    else
    {
      v39 = v21 + HIDWORD(v22) - 1;
    }

    if (v37 < v39)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTTablePartitioner p_didFinishPartitioningHint:horizontally:]", v23);
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 674, 0, "Vertical partitioning went beyond the table bounds!");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v46, v47, v48);
    }

    v49 = v37 > v39;
    goto LABEL_58;
  }

  tableIsLTR = self->_tableIsLTR;
  layoutIsLTR = self->_layoutIsLTR;
  v28 = WORD2(v18) == 0x7FFF || v20 == 0;
  v29 = v20 - 1 + WORD2(v18);
  v30 = HIDWORD(v21);
  v31 = WORD2(v21);
  if (tableIsLTR != layoutIsLTR)
  {
    if (v28)
    {
      v50 = 0x8000;
    }

    else
    {
      v50 = (v20 - 1 + WORD2(v18)) + 1;
    }

    if (v22)
    {
      v51 = WORD2(v21) == 0x7FFF;
    }

    else
    {
      v51 = 1;
    }

    if (v51)
    {
      v52 = 0x7FFF;
    }

    else
    {
      v52 = (v22 + WORD2(v21) - 1);
    }

    if (v50 >= v52)
    {
LABEL_47:
      if (tableIsLTR != layoutIsLTR)
      {
        v35 = WORD2(v18) >= v30;
        goto LABEL_61;
      }

      goto LABEL_48;
    }

LABEL_46:
    v53 = MEMORY[0x277D81150];
    v67 = WORD2(v21);
    v66 = v28;
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTTablePartitioner p_didFinishPartitioningHint:horizontally:]", v23);
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 671, 0, "Horizontal partitioning went beyond the table bounds!");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v59, v60, v61);
    v28 = v66;
    v31 = v67;
    tableIsLTR = self->_tableIsLTR;
    layoutIsLTR = self->_layoutIsLTR;
    goto LABEL_47;
  }

  if (v28)
  {
    v32 = 0x7FFF;
  }

  else
  {
    v32 = v20 - 1 + WORD2(v18);
  }

  v33 = v22 + WORD2(v21) - 1;
  if (v22)
  {
    v34 = WORD2(v21) == 0x7FFF;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v33 = 0x7FFF;
  }

  if (v32 < v33)
  {
    goto LABEL_46;
  }

LABEL_48:
  if (v28)
  {
    v62 = 0x7FFF;
  }

  else
  {
    v62 = v29;
  }

  if (v24)
  {
    v63 = v31 == 0x7FFF;
  }

  else
  {
    v63 = 1;
  }

  if (v63)
  {
    v64 = 0x7FFF;
  }

  else
  {
    v64 = v24 + v30 - 1;
  }

  v49 = v62 > v64;
LABEL_58:
  v35 = !v49;
LABEL_61:

  return v35;
}

- (id)hintForLayout:(id)layout
{
  layoutCopy = layout;
  objc_opt_class();
  v4 = TSUDynamicCast();

  if (v4)
  {
    v8 = objc_msgSend_layoutHint(v4, v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldReuseLayout:(id)layout forSize:(CGSize)size parentLayout:(id)parentLayout hint:(id)hint
{
  layoutCopy = layout;
  parentLayoutCopy = parentLayout;
  if (parentLayoutCopy)
  {
    v15 = objc_msgSend_parent(layoutCopy, v8, v9, v10);
    if (v15)
    {
      v16 = objc_msgSend_parent(layoutCopy, v12, v13, v14);
      v17 = v16 == parentLayoutCopy;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (TSTLayout)scaledLayout
{
  scaledLayout = self->_scaledLayout;
  if (!scaledLayout)
  {
    v6 = objc_msgSend_tableInfo(self, a2, v2, v3);
    v10 = objc_alloc(objc_msgSend_layoutClass(v6, v7, v8, v9));
    WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
    v14 = objc_msgSend_initWithInfo_(v10, v12, WeakRetained, v13);
    v15 = self->_scaledLayout;
    self->_scaledLayout = v14;

    scaledLayout = self->_scaledLayout;
  }

  return scaledLayout;
}

- (CGRect)totalPartitionFrame
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_22188E88F;
  v20 = 0u;
  v21 = 0u;
  v4 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2213B9D84;
  v15[3] = &unk_278464150;
  v15[4] = &v16;
  objc_msgSend_performBlockWithTemporaryLayout_(v4, v5, v15, v6);

  v7 = v17[4];
  v8 = v17[5];
  v9 = v17[6];
  v10 = v17[7];
  _Block_object_dispose(&v16, 8);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)partitioningPassForFirstPartitionSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width == *MEMORY[0x277CBF3A8] && size.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTablePartitioner partitioningPassForFirstPartitionSize:]", v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTablePartitioner.m", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 742, 0, "partitioningPassForFirstPartitionSize: Invalid partition size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  partitioningPassCache = self->_partitioningPassCache;
  v31.width = width;
  v31.height = height;
  v18 = NSStringFromCGSize(v31);
  v21 = objc_msgSend_objectForKey_(partitioningPassCache, v19, v18, v20);

  if (!v21)
  {
    v22 = MEMORY[0x277CCABB0];
    v23 = random();
    v21 = objc_msgSend_numberWithUnsignedInt_(v22, v24, v23, v25);
    v26 = self->_partitioningPassCache;
    v32.width = width;
    v32.height = height;
    v27 = NSStringFromCGSize(v32);
    objc_msgSend_setObject_forKey_(v26, v28, v21, v27);
  }

  return v21;
}

- (id)partitioningPassForHint:(id)hint withPreviousHint:(id)previousHint
{
  hintCopy = hint;
  previousHintCopy = previousHint;
  v11 = objc_msgSend_cacheHintID(hintCopy, v8, v9, v10);
  if (previousHintCopy && (v11 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v15 = objc_msgSend_partitioningPass(previousHintCopy, v12, v13, v14);

    if (v15)
    {
      objc_msgSend_partitioningPass(previousHintCopy, v16, v17, v18);
    }

    else
    {
      objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v16, 0, v18);
    }
    v19 = ;
  }

  else
  {
    objc_msgSend_maximumSize(hintCopy, v12, v13, v14);
    v19 = objc_msgSend_partitioningPassForFirstPartitionSize_(self, v20, v21, v22);
  }

  v23 = v19;

  return v23;
}

- (id)hintCacheKeyForPartitioningPass:(id)pass andHintID:(TSUCellCoord)d
{
  v4 = MEMORY[0x277CCACA8];
  passCopy = pass;
  v6 = NSStringFromTSUCellCoord();
  v9 = objc_msgSend_stringWithFormat_(v4, v7, @"(%@,%@)", v8, passCopy, v6);

  return v9;
}

- (id)hintCacheKeyForHint:(id)hint
{
  hintCopy = hint;
  v8 = objc_msgSend_partitioningPass(hintCopy, v5, v6, v7);
  v12 = objc_msgSend_cacheHintID(hintCopy, v9, v10, v11);

  v14 = objc_msgSend_hintCacheKeyForPartitioningPass_andHintID_(self, v13, v8, v12);

  return v14;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

- (CGSize)scaleToFit
{
  width = self->_scaleToFit.width;
  height = self->_scaleToFit.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
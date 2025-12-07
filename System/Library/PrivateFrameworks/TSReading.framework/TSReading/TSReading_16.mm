uint64_t TSTTableRepDrawTableName(TSTTableRep *a1, CGContext *a2, TSTAnimation *a3)
{
  v6 = [(TSTTableRep *)a1 tableLayout];
  v38.origin.x = TSTLayoutGetFrameForTableName(v6);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  result = CGRectIsEmpty(v38);
  if ((result & 1) == 0)
  {
    result = TSTLayoutIsPartitionAlongLeft(v6);
    if (result)
    {
      v12 = [(TSTTableModel *)[(TSTTableRep *)a1 tableModel] tableName];
      if (!a1->mRecursivelyDrawingInContext && ![(TSTLayout *)v6 inPrintPreviewMode]&& (![(TSTAnimation *)a3 enabled]|| ![(TSTAnimation *)a3 drawTableName]))
      {
        [(TSDRep *)a1 setupForDrawingInLayer:a1->mOverlayTableName context:a2];
      }

      if ([(TSTEditingState *)[(TSTTableRep *)a1 editingState] editingMode]!= 7)
      {
        [-[TSTMasterLayout tableNameTextEngine](-[TSTTableRep masterLayout](a1 "masterLayout")];
      }

      result = TSTLayoutTableNameBorderEnabled(v6);
      if (result)
      {
        Space = TSTLayoutGetSpace(v6);
        [(TSTLayoutSpace *)Space lockForRead];
        v14 = [(TSTTableModel *)[(TSTTableInfo *)[(TSTTableRep *)a1 tableInfo] tableModel] tableNameBorderStroke];
        v15 = [(TSTLayout *)v6 masterLayout];
        v39.origin.x = TSTLayoutGetFrameForTableNameBorder(v6);
        v16 = v39.origin.x;
        v17 = v39.origin.y;
        v18 = v39.size.width;
        v19 = v39.size.height;
        MaxX = CGRectGetMaxX(v39);
        v36 = v16;
        v37 = v17;
        v35.x = MaxX;
        v35.y = v17;
        [(TSDStroke *)v14 width];
        v34 = v21;
        v22 = TSTLayoutSpaceStrokeWidthForDrawing(v21, v21);
        TSTLayoutSpaceAlignStrokeCoordinates(Space, &v36, &v35, &v34);
        TSTLayoutSpaceDrawSingleStroke(v14, a2, v36, v37, v35.x, v35.y, v34, v22, v23, v24, v16, v17, v18, v19);
        Range = TSTLayoutSpaceGetRange(Space);
        VisibleRow = TSTMasterLayoutNextVisibleRow(v15, Range);
        VisibleColumn = TSTMasterLayoutNextVisibleColumn(v15, BYTE2(Range));
        LODWORD(v15) = TSTMasterLayoutPreviousVisibleColumn(v15, (BYTE4(Range) + BYTE2(Range) - 1));
        v40.origin.x = TSTLayoutSpaceGetAlignedStrokeFrameForCellRange(Space, VisibleRow | (VisibleColumn << 16) | 0x1000100000000);
        v36 = v16;
        v37 = v37 - v34 * 0.5;
        v33.x = v16;
        v33.y = CGRectGetMinY(v40);
        TSTLayoutSpaceAlignStrokeCoordinates(Space, &v36, &v33, &v34);
        TSTLayoutSpaceDrawSingleStroke(v14, a2, v36, v37, v33.x, v33.y, v34, v22, v28, v29, v16, v17, v18, v19);
        v41.origin.x = TSTLayoutSpaceGetAlignedStrokeFrameForCellRange(Space, VisibleRow | (v15 << 16) | 0x1000100000000);
        v35.x = MaxX;
        v35.y = v35.y - v34 * 0.5;
        v32.x = MaxX;
        v32.y = CGRectGetMinY(v41);
        TSTLayoutSpaceAlignStrokeCoordinates(Space, &v35.x, &v32, &v34);
        TSTLayoutSpaceDrawSingleStroke(v14, a2, v35.x, v35.y, v32.x, v32.y, v34, v22, v30, v31, v16, v17, v18, v19);
        return [(TSTLayoutSpace *)Space unlock];
      }
    }
  }

  return result;
}

void TSTTableRepDrawFrozenHeaderRegion(TSTTableRep *a1, TSTLayoutSpace *a2, CALayer *a3, CGContext *a4)
{
  v8 = a2;
  if (a2)
  {
    [(TSTLayoutSpace *)a2 lockForRead];
    GridRange = TSTLayoutSpaceGetGridRange(a2);
    if (GridRange != -1 && v10 != -1 && GridRange <= v10 && HIDWORD(GridRange) != 0xFFFFFFFF && HIDWORD(v10) != 0xFFFFFFFF && HIDWORD(GridRange) <= HIDWORD(v10))
    {
      [(TSDRep *)a1 setupForDrawingInLayer:a3 context:a4];
      ClipBoundingBox = CGContextGetClipBoundingBox(a4);
      x = ClipBoundingBox.origin.x;
      y = ClipBoundingBox.origin.y;
      width = ClipBoundingBox.size.width;
      height = ClipBoundingBox.size.height;
      if (a1)
      {
        objc_msgSend_transformFromCanvas(a1);
      }

      else
      {
        memset(&v15, 0, sizeof(v15));
      }

      CGContextConcatCTM(a4, &v15);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      TSTTableRepDrawSpaceInContext(a1, a2, v17, a4);
    }

    [(TSTLayoutSpace *)a2 unlock:*&v15.a];
  }
}

void TSTTableRepDrawSpaceInContext(TSTTableRep *a1, TSTLayoutSpace *a2, CGRect a3, CGContext *a4)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] enabled])
  {
    v11 = 1;
    goto LABEL_5;
  }

  v11 = [(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] cellRangeCount];
  if (v11)
  {
LABEL_5:
    for (i = 0; v11 != i; ++i)
    {
      NearestRangeForLayoutRect = TSTLayoutSpaceGetNearestRangeForLayoutRect(a2, x, y, width, height);
      if (![(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] enabled])
      {
LABEL_32:
        if (a1->mIsZoomToEditOperationInProgress)
        {
          NearestRangeForLayoutRect = TSTCellRangeUnionCellRange(NearestRangeForLayoutRect, *&a1->mZoomToEditVisibleCellRange);
        }

        TSTTableRepDrawSpaceRangeInContext(a1, a2, NearestRangeForLayoutRect, a4);
        continue;
      }

      v14 = [(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] cellRangeAtIndex:i];
      v15 = 0;
      if (NearestRangeForLayoutRect == 0xFFFF)
      {
        goto LABEL_30;
      }

      v16 = 0xFFFFLL;
      v17 = 16711680;
      v18 = 0;
      if ((NearestRangeForLayoutRect & 0xFF0000) == 0xFF0000)
      {
        goto LABEL_31;
      }

      v15 = 0;
      if (!HIWORD(NearestRangeForLayoutRect))
      {
        goto LABEL_30;
      }

      v16 = 0xFFFFLL;
      v17 = 16711680;
      v18 = 0;
      if ((NearestRangeForLayoutRect & 0xFFFF00000000) == 0)
      {
        goto LABEL_31;
      }

      v15 = 0;
      if (v14.var0.var0 == 0xFFFF)
      {
        goto LABEL_30;
      }

      v16 = 0xFFFFLL;
      v17 = 16711680;
      v18 = 0;
      if ((*&v14 & 0xFF0000) == 0xFF0000)
      {
        goto LABEL_31;
      }

      v15 = 0;
      if (!HIWORD(*&v14))
      {
LABEL_30:
        v16 = 0xFFFFLL;
        v17 = 16711680;
        v18 = 0;
      }

      else
      {
        v16 = 0xFFFFLL;
        v17 = 16711680;
        v18 = 0;
        if ((*&v14 & 0xFFFF00000000) != 0)
        {
          v16 = 0;
          v19 = BYTE2(NearestRangeForLayoutRect) <= v14.var0.var1 ? v14.var0.var1 : BYTE2(NearestRangeForLayoutRect);
          v20 = NearestRangeForLayoutRect <= v14.var0.var0 ? v14.var0.var0 : NearestRangeForLayoutRect;
          v21 = (BYTE4(NearestRangeForLayoutRect) + BYTE2(NearestRangeForLayoutRect) - 1) >= (LOBYTE(v14.var1.var0) + v14.var0.var1 - 1) ? (LOBYTE(v14.var1.var0) + v14.var0.var1 - 1) : (BYTE4(NearestRangeForLayoutRect) + BYTE2(NearestRangeForLayoutRect) - 1);
          v22 = (NearestRangeForLayoutRect + HIWORD(NearestRangeForLayoutRect) - 1) >= (v14.var0.var0 + v14.var1.var1 - 1) ? (v14.var0.var0 + v14.var1.var1 - 1) : (NearestRangeForLayoutRect + HIWORD(NearestRangeForLayoutRect) - 1);
          v17 = 0;
          v15 = 0;
          v18 = 0;
          if (v20 <= v22 && v19 <= v21)
          {
            v18 = ((v22 - v20) << 48) + 0x1000000000000;
            v15 = (((v21 - v19) << 32) + 0x100000000) & 0xFFFF00000000;
            v17 = v19 << 16;
            v16 = v20;
          }
        }
      }

LABEL_31:
      NearestRangeForLayoutRect = v17 | v16 | v15 | v18;
      if (!TSTMasterLayoutIsEntireCellRangeHidden([(TSTTableRep *)a1 masterLayout], NearestRangeForLayoutRect))
      {
        goto LABEL_32;
      }
    }
  }
}

uint64_t TSTTableRepDrawRangeInContext(void *a1, unint64_t a2, uint64_t a3)
{
  if (BYTE2(a2) == 255)
  {
    v6 = -1;
  }

  else
  {
    v6 = BYTE2(a2);
  }

  v7 = HIDWORD(a2);
  v8 = a2;
  if (WORD2(a2))
  {
    v9 = WORD2(a2) + v6 - 1;
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  v10 = [a1 tableLayout];
  if (v8 == 0xFFFF)
  {
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = v8;
  }

  v12 = v6 | (v11 << 32);
  v13 = (((v11 << 32) + (v7 << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v13 = 0xFFFFFFFF00000000;
  }

  v14 = v13 | v9;
  v15 = [v10 spaceBundle];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __TSTTableRepDrawRangeInContext_block_invoke;
  v17[3] = &unk_279D4A328;
  v17[6] = v12;
  v17[7] = v14;
  v17[4] = a1;
  v17[5] = a3;
  return [v15 performActionOnEachLayoutSpace:v17];
}

uint64_t __TSTTableRepDrawRangeInContext_block_invoke(void *a1, TSTLayoutSpace *a2)
{
  if (![(TSTLayoutSpace *)a2 isFrozen])
  {
    v4 = TSTLayoutSpaceIntersectionGridRange(a2, a1[6], a1[7]);
    v6 = HIDWORD(v5);
    if (HIDWORD(v4) == 0xFFFFFFFF || v6 == 0xFFFFFFFF || HIDWORD(v4) > v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = ((v5 - (v4 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v5 - v4 + 1)) + 0x100000000;
    }

    if (v4 == -1 || v5 == -1 || v4 > v5)
    {
      v9 = 0;
    }

    v12 = v4 << 16;
    if (v4 == -1)
    {
      v12 = 16711680;
    }

    TSTTableRepDrawSpaceRangeInContext(a1[4], a2, v12 & 0xFFFFFFFFFFFF0000 | WORD2(v4) | (((v9 >> 16) & 0xFFFF0000 | v9) << 32), a1[5]);
  }

  return 0;
}

void TSTTableRepDrawSpaceRangeInContext(TSTTableRep *a1, TSTLayoutSpace *a2, unint64_t a3, CGContext *a4)
{
  v5 = BYTE2(a3);
  if (BYTE2(a3) == 255)
  {
    v6 = -1;
  }

  else
  {
    v6 = BYTE2(a3);
  }

  v254[16] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (WORD2(a3))
  {
    v8 = WORD2(a3) + v6 - 1;
  }

  else
  {
    v8 = -1;
  }

  if (a3 == 0xFFFF)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  v10 = ((((HIDWORD(a3) << 16) - 0x100000000) >> 32) + v9);
  GridRange = TSTLayoutSpaceGetGridRange(a2);
  v13 = 0xFFFFFFFFLL;
  if (HIWORD(a3))
  {
    v13 = v10;
  }

  if (v5 != 255 && v8 != -1 && v6 <= v8 && v7 != 0xFFFF && v13 != 0xFFFFFFFF && v13 >= v9 && GridRange != -1 && v12 != -1 && GridRange <= v12)
  {
    v14 = HIDWORD(GridRange);
    if (HIDWORD(GridRange) != 0xFFFFFFFF)
    {
      v15 = HIDWORD(v12);
      if (HIDWORD(v12) != 0xFFFFFFFF && v14 <= v15)
      {
        if (v5 <= GridRange)
        {
          v5 = GridRange;
        }

        if (v8 >= v12)
        {
          v8 = v12;
        }

        if (v5 <= v8)
        {
          if (v13 >= v15)
          {
            v17 = HIDWORD(v12);
          }

          else
          {
            v17 = v13;
          }

          if (v9 <= v14)
          {
            v9 = HIDWORD(GridRange);
          }

          if (v9 <= v17 && v9 != 0xFFFFFFFF)
          {
            TSTTableRepPrepareToDrawLayoutSpace(a1, a2, a4);
            v18 = [(TSTTableRep *)a1 masterLayout];
            [(TSTTableRep *)a1 tableModel];
            v213 = [MEMORY[0x277CBEB18] array];
            v214 = [(TSTTableRep *)a1 currentAnimation];
            Range = TSTMasterLayoutGetRange(v18);
            v20 = BYTE2(Range);
            if (BYTE2(Range) == 255)
            {
              v20 = -1;
            }

            v21 = WORD2(Range) + v20 - 1;
            if (!WORD2(Range))
            {
              v21 = 0xFFFFFFFFLL;
            }

            if (Range == 0xFFFF)
            {
              v22 = 0xFFFFFFFFLL;
            }

            else
            {
              v22 = Range;
            }

            v23 = v20 | (v22 << 32);
            v24 = (((v22 << 32) + (HIDWORD(Range) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
            if (!HIWORD(Range))
            {
              v24 = 0xFFFFFFFF00000000;
            }

            v253[0] = v23;
            v253[1] = v24 | v21;
            EntireHeaderColumnsCellRange = TSTMasterLayoutGetEntireHeaderColumnsCellRange(v18);
            v26 = BYTE2(EntireHeaderColumnsCellRange);
            if (BYTE2(EntireHeaderColumnsCellRange) == 255)
            {
              v26 = -1;
            }

            v27 = WORD2(EntireHeaderColumnsCellRange) + v26 - 1;
            if (!WORD2(EntireHeaderColumnsCellRange))
            {
              v27 = 0xFFFFFFFFLL;
            }

            if (EntireHeaderColumnsCellRange == 0xFFFF)
            {
              v28 = 0xFFFFFFFFLL;
            }

            else
            {
              v28 = EntireHeaderColumnsCellRange;
            }

            v29 = v26 | (v28 << 32);
            v30 = (((v28 << 32) + (HIDWORD(EntireHeaderColumnsCellRange) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
            if (!HIWORD(EntireHeaderColumnsCellRange))
            {
              v30 = 0xFFFFFFFF00000000;
            }

            v253[2] = v29;
            v253[3] = v30 | v27;
            EntireHeaderRowsCellRange = TSTMasterLayoutGetEntireHeaderRowsCellRange(v18);
            v32 = BYTE2(EntireHeaderRowsCellRange);
            if (BYTE2(EntireHeaderRowsCellRange) == 255)
            {
              v32 = -1;
            }

            v33 = WORD2(EntireHeaderRowsCellRange) + v32 - 1;
            if (!WORD2(EntireHeaderRowsCellRange))
            {
              v33 = 0xFFFFFFFFLL;
            }

            if (EntireHeaderRowsCellRange == 0xFFFF)
            {
              v34 = 0xFFFFFFFFLL;
            }

            else
            {
              v34 = EntireHeaderRowsCellRange;
            }

            v35 = v32 | (v34 << 32);
            v36 = (((v34 << 32) + (HIDWORD(EntireHeaderRowsCellRange) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
            if (!HIWORD(EntireHeaderRowsCellRange))
            {
              v36 = 0xFFFFFFFF00000000;
            }

            v253[4] = v35;
            v253[5] = v36 | v33;
            EntireFooterRowsCellRange = TSTMasterLayoutGetEntireFooterRowsCellRange(v18);
            v38 = 0;
            v39 = BYTE2(EntireFooterRowsCellRange);
            if (BYTE2(EntireFooterRowsCellRange) == 255)
            {
              v39 = -1;
            }

            v40 = WORD2(EntireFooterRowsCellRange) + v39 - 1;
            if (!WORD2(EntireFooterRowsCellRange))
            {
              v40 = 0xFFFFFFFFLL;
            }

            if (EntireFooterRowsCellRange == 0xFFFF)
            {
              v41 = 0xFFFFFFFFLL;
            }

            else
            {
              v41 = EntireFooterRowsCellRange;
            }

            v42 = v39 | (v41 << 32);
            v43 = (((v41 << 32) + (HIDWORD(EntireFooterRowsCellRange) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
            if (!HIWORD(EntireFooterRowsCellRange))
            {
              v43 = 0xFFFFFFFF00000000;
            }

            v253[6] = v42;
            v253[7] = v43 | v40;
            do
            {
              v45 = v253[v38];
              v44 = v253[v38 + 1];
              v47 = v45 == -1 || v44 == -1 || v45 > v44;
              if (v47 || ((v48 = HIDWORD(v45), v49 = HIDWORD(v44), HIDWORD(v45) != 0xFFFFFFFF) ? (v50 = v49 == 0xFFFFFFFF) : (v50 = 1), !v50 ? (v51 = v48 > v49) : (v51 = 1), v51 || (v5 <= v45 ? (v45 = v45) : (v45 = v5), v8 >= v44 ? (v44 = v44) : (v44 = v8), v45 > v44 || (v17 >= v49 ? (v52 = v49) : (v52 = v17), v9 <= v48 ? (v53 = v48) : (v53 = v9), v53 > v52))))
              {
                v54 = -1;
                v55 = -1;
              }

              else
              {
                v55 = v44 | (v52 << 32);
                v54 = v45 | (v53 << 32);
              }

              v253[v38] = v54;
              v253[v38 + 1] = v55;
              v38 += 2;
            }

            while (v38 != 8);
            v56 = 0;
            v57 = -1;
            LODWORD(v58) = -1;
            LODWORD(v59) = -1;
            v60 = a4;
            v61 = v214;
            do
            {
              v63 = v253[v56];
              v62 = v253[v56 + 1];
              if (v59 == -1 || v57 == -1 || v59 > v57 || v58 == -1 || (v64 = HIDWORD(v57), HIDWORD(v57) == 0xFFFFFFFF) || v64 < v58)
              {
                v57 = v253[v56 + 1];
                v59 = v253[v56];
              }

              else if (v63 == -1 || v62 == -1 || v63 > v62 || (v65 = HIDWORD(v63), HIDWORD(v63) == 0xFFFFFFFF) || (v66 = HIDWORD(v62), HIDWORD(v62) == 0xFFFFFFFF) || v65 > v66)
              {
                LODWORD(v62) = v57;
                LODWORD(v63) = v59;
                v59 = v59 | (v58 << 32);
              }

              else
              {
                if (v59 >= v63)
                {
                  v63 = v63;
                }

                else
                {
                  v63 = v59;
                }

                if (v58 >= v65)
                {
                  v67 = v65;
                }

                else
                {
                  v67 = v58;
                }

                if (v57 <= v62)
                {
                  v62 = v62;
                }

                else
                {
                  v62 = v57;
                }

                if (v64 <= v66)
                {
                  v68 = v66;
                }

                else
                {
                  v68 = HIDWORD(v57);
                }

                v57 = v62 | (v68 << 32);
                v59 = v63 | (v67 << 32);
              }

              v70 = v63 == -1 || v62 == -1 || v63 > v62;
              if (v70 || (HIDWORD(v59) <= HIDWORD(v57) ? (v71 = HIDWORD(v59) == 0xFFFFFFFF) : (v71 = 1), !v71 ? (v72 = HIDWORD(v57) == 0xFFFFFFFF) : (v72 = 1), v72))
              {
                v57 = -1;
                v59 = -1;
              }

              v58 = HIDWORD(v59);
              v56 += 2;
            }

            while (v56 != 8);
            if (v59 == -1)
            {
              goto LABEL_468;
            }

            if (v57 == -1)
            {
              goto LABEL_468;
            }

            if (v59 > v57)
            {
              goto LABEL_468;
            }

            if (v58 == 0xFFFFFFFF)
            {
              goto LABEL_468;
            }

            v73 = HIDWORD(v57);
            if (HIDWORD(v57) == 0xFFFFFFFF || v73 < v58)
            {
              goto LABEL_468;
            }

            v74 = [(TSTAnimation *)v214 enabled];
            v212 = v59;
            if (v74)
            {
              v75 = [(TSDBezierPath *)TSTLayoutSpaceGetAlignedStrokeFramePathForGridRange(a2 CGPath:v59];
              path = CGPathRetain(v75);
            }

            else
            {
              path = 0;
            }

            v76 = a1;
            if ([(TSTAnimation *)v214 drawTableName])
            {
              TSTTableRepDrawTableName(a1, a4, v214);
            }

            if ((![(TSTAnimation *)v214 enabled]|| [(TSTAnimation *)v214 drawTableBackground]) && TSTTableGetBackgroundFill())
            {
              CGContextSaveGState(a4);
              if (v74)
              {
                CGContextAddPath(a4, path);
                CGContextClip(a4);
              }

              CGContextSetBlendMode(a4, kCGBlendModeClear);
              v255.origin.x = TSTLayoutSpaceGetFrame(a2);
              CGContextFillRect(a4, v255);
              CGContextRestoreGState(a4);
            }

            v208 = v74;
            if (v212)
            {
              v77 = v212 - 1;
            }

            else
            {
              v77 = 0;
            }

            if (v58)
            {
              v78 = (v58 - 1);
            }

            else
            {
              v78 = 0;
            }

            v79 = TSTLayoutSpaceGetGridRange(a2);
            LODWORD(v81) = v57 + 1;
            v82 = -1;
            v83 = -1;
            if (v57 != -2 && v77 <= v81)
            {
              v84 = v73 + 1;
              if (v73 != 4294967294 && v84 >= v78 && v79 != -1 && v80 != -1 && v79 <= v80)
              {
                v85 = HIDWORD(v79);
                if (HIDWORD(v79) != 0xFFFFFFFF)
                {
                  v86 = HIDWORD(v80);
                  if (HIDWORD(v80) != 0xFFFFFFFF && v85 <= v86)
                  {
                    v87 = v77 <= v79 ? v79 : v77;
                    v81 = v81 >= v80 ? v80 : v81;
                    if (v87 <= v81)
                    {
                      if (v84 < v86)
                      {
                        v86 = v73 + 1;
                      }

                      if (v78 <= v85)
                      {
                        v88 = HIDWORD(v79);
                      }

                      else
                      {
                        v88 = v78;
                      }

                      if (v88 <= v86)
                      {
                        v83 = v81 | (v86 << 32);
                        v82 = v87 | (v88 << 32);
                      }
                    }
                  }
                }
              }
            }

            v209 = v83;
            v210 = v82;
            v89 = v208;
            if ([(TSTAnimation *)v214 enabled]&& ![(TSTAnimation *)v214 drawCellBackground])
            {
LABEL_228:
              if (![(TSTAnimation *)v61 enabled]|| [(TSTAnimation *)v61 drawCellContent])
              {
                CGContextSaveGState(v60);
                if (v89)
                {
                  CGContextAddPath(v60, path);
                  CGContextClip(v60);
                }

                TSTTableRepDrawCellContent(v76, a2, v212, v57, v60);
                CGContextRestoreGState(v60);
              }

              if ([(TSTAnimation *)v61 enabled]&& ![(TSTAnimation *)v61 drawStrokes])
              {
                v99 = v213;
                v100 = path;
                if (![(TSTAnimation *)v61 enabled])
                {
LABEL_449:
                  if ((!-[TSTAnimation enabled](v61, "enabled") || -[TSTAnimation drawCellContent](v61, "drawCellContent")) && [v99 count])
                  {
                    CGContextSaveGState(v60);
                    if (v89)
                    {
                      CGContextAddPath(v60, v100);
                      CGContextClip(v60);
                    }

                    v249 = 0u;
                    v250 = 0u;
                    v251 = 0u;
                    v252 = 0u;
                    v197 = [v99 countByEnumeratingWithState:&v249 objects:v254 count:16];
                    if (v197)
                    {
                      v198 = v197;
                      v199 = *v250;
                      do
                      {
                        for (i = 0; i != v198; ++i)
                        {
                          if (*v250 != v199)
                          {
                            objc_enumerationMutation(v99);
                          }

                          [*(*(&v249 + 1) + 8 * i) drawInContext:v60];
                        }

                        v198 = [v99 countByEnumeratingWithState:&v249 objects:v254 count:16];
                      }

                      while (v198);
                    }

                    CGContextRestoreGState(v60);
                  }

                  if ((![(TSTAnimation *)v61 enabled]|| [(TSTAnimation *)v61 drawTableBackground]) && TSTTableGetBackgroundFill())
                  {
                    v201 = [MEMORY[0x277D6C290] currentHandler];
                    v202 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRepDrawGridRange(TSTTableRep *, TSTLayoutSpace *, TSTGridRange, TSTAnimation *, CGContextRef)"}];
                    [v201 handleFailureInFunction:v202 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRep.mm"), 5999, @"background fill is not supported yet"}];
                  }

                  if (v100)
                  {
                    CGPathRelease(v100);
                  }

LABEL_468:
                  if (a2 && a4)
                  {
                    CGContextRestoreGState(a4);
                  }

                  goto LABEL_29;
                }

                CGContextSaveGState(v60);
                if (v89)
                {
                  CGContextAddPath(v60, path);
                  CGContextClip(v60);
                }

                v101 = v210;
                if (v210 == -1)
                {
                  v102 = v209;
                }

                else
                {
                  v102 = v209;
                  if (v209 != -1 && v210 <= v209 && HIDWORD(v210) != 0xFFFFFFFF && HIDWORD(v209) != 0xFFFFFFFF && HIDWORD(v210) <= HIDWORD(v209))
                  {
                    v102 = (v209 & 0xFFFFFFFF00000000 | (v209 + 1)) + 0x100000000;
                  }
                }

                v195 = a2;
                v196 = 1;
              }

              else
              {
                CGContextSaveGState(v60);
                v99 = v213;
                v100 = path;
                if (v89)
                {
                  CGContextAddPath(v60, path);
                  CGContextClip(v60);
                }

                v101 = v210;
                if (v210 == -1)
                {
                  v102 = v209;
                }

                else
                {
                  v102 = v209;
                  if (v209 != -1 && v210 <= v209 && HIDWORD(v210) != 0xFFFFFFFF && HIDWORD(v209) != 0xFFFFFFFF && HIDWORD(v210) <= HIDWORD(v209))
                  {
                    v102 = (v209 & 0xFFFFFFFF00000000 | (v209 + 1)) + 0x100000000;
                  }
                }

                v195 = a2;
                v196 = 0;
              }

              TSTLayoutSpaceDrawStrokes(v195, v101, v102, v196, v60);
              CGContextRestoreGState(v60);
              goto LABEL_449;
            }

            CGContextSaveGState(a4);
            if (v208)
            {
              CGContextAddPath(a4, path);
              CGContextClip(a4);
            }

            v91 = v209;
            v90 = v210;
            if (v214)
            {
              if (![(TSTAnimation *)v214 enabled]|| (v92 = [(TSTAnimation *)v214 expandBackgroundFill], v91 = v209, v90 = v210, !v92))
              {
                v90 = v212;
                v91 = v57;
              }
            }

            v216 = v90;
            v227 = HIDWORD(v90);
            v215 = HIDWORD(v91);
            v93 = [(TSTTableRep *)a1 tableLayout];
            v248 = [(TSTTableRep *)a1 masterLayout];
            v233 = v93;
            v242 = [(TSTTableInfo *)[(TSTLayout *)v93 tableInfo] tableModel];
            v94 = 0;
            if (v216 != -1 && v91 != -1 && v216 <= v91)
            {
              v94 = 0;
              if (v227 != 0xFFFFFFFF && v215 != 0xFFFFFFFF && v227 <= v215)
              {
                v94 = ((v91 - (v216 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v91 - v216 + 1)) + 0x100000000;
              }
            }

            v207 = v57;
            if (v216 == -1)
            {
              v95 = 16711680;
            }

            else
            {
              v95 = v216 << 16;
            }

            v96 = (v94 >> 16) & 0xFFFF0000;
            v223 = [(TSTMasterLayout *)v248 useBandedFill];
            v235 = objc_alloc_init(TSTCell);
            v246 = objc_alloc_init(TSTCell);
            v237 = [MEMORY[0x277CBEB68] null];
            if ([(TSTMasterLayout *)v248 isDynamicallySwappingColumns]|| [(TSTMasterLayout *)v248 isDynamicallySwappingRows])
            {
              v97 = v242;
              v98 = [(TSTTableModel *)v242 range];
              v76 = a1;
            }

            else
            {
              v98 = WORD2(v216) | ((v96 | v94) << 32) | v95;
              v76 = a1;
              v97 = v242;
            }

            v225 = TSTTableMergeRangesForCellRange(v97, v98);
            v230 = [v225 count];
            if (![(TSDCanvas *)[(TSDRep *)v76 canvas] isCanvasInteractive])
            {
              CGContextBeginTransparencyLayer(a4, 0);
            }

            if (v227 > v215)
            {
LABEL_223:
              v60 = a4;
              if (!CGRectIsEmpty(v76->mSearchSelectionBounds))
              {
                CGContextSetFillColorWithColor(a4, [objc_msgSend(MEMORY[0x277D6C2A8] "orangeColor")]);
                CGContextFillRect(a4, v76->mSearchSelectionBounds);
              }

              v61 = v214;
              v89 = v208;
              v57 = v207;
              if (![(TSDCanvas *)[(TSDRep *)v76 canvas] isCanvasInteractive])
              {
                CGContextEndTransparencyLayer(a4);
              }

              CGContextRestoreGState(a4);
              goto LABEL_228;
            }

            if (v94)
            {
              v103 = v96 == 0;
            }

            else
            {
              v103 = 1;
            }

            v104 = v103;
            v229 = v104;
            v226 = v227 + WORD2(v94) - 1;
            v224 = v95 >> 16;
            v221 = v94 + WORD1(v95) + 255;
            v106 = WORD2(v216) == 0xFFFFLL || v95 == 16711680;
            v217 = v106;
            LOWORD(VisibleRow) = v227;
            v219 = v91;
            while (1)
            {
              v108 = v242;
              v232 = VisibleRow;
              RowFill = TSTTableGetRowFill(v242, VisibleRow);
              if (v216 <= v91)
              {
                break;
              }

LABEL_258:
              VisibleRow = TSTMasterLayoutNextVisibleRow(v248, (VisibleRow + 1));
              if (VisibleRow > v215)
              {
                goto LABEL_223;
              }
            }

            v231 = RowFill;
            v110 = v216 << 16;
            v111 = v216;
            v236 = VisibleRow;
            while (1)
            {
              v244 = v110;
              v112 = v110 & 0xFF0000 | v232;
              v254[0] = 0;
              if (!v230)
              {
                break;
              }

              v234 = v234 & 0xFFFFFFFF00000000 | v112;
              [(TSTMasterLayout *)v248 modelCellIDForLayoutCellID:?];
              v113 = [v225 mergedRangeForCellID:?];
              v114 = 0;
              if (v113 == 0xFFFF || (v113 & 0xFF0000) == 0xFF0000)
              {
                goto LABEL_270;
              }

              if (!HIWORD(v113) || (v113 & 0xFFFF00000000) == 0)
              {
                break;
              }

              v220 = v220 & 0xFFFFFFFF00000000 | v113;
              v120 = [(TSTMasterLayout *)v248 layoutCellIDForModelCellID:?];
              VisibleRow = HIWORD(*&v120);
              v114 = *&v120 & 0xFF000000;
LABEL_271:
              v245 = v245 & 0xFFFFFFFF00000000 | v112;
              v116 = [(TSTMasterLayout *)v248 tableAreaForCellID:?];
              [(TSTTableModel *)v108 defaultCell:v246 forTableArea:v116];
              CellFill = TSTCellGetCellFill(v246);
              ColumnFill = TSTTableGetColumnFill(v108, VisibleRow);
              v118 = [(TSTLayout *)v233 editingSpillingTextRange];
              v119 = 0;
              if (v118 != 0xFFFF && (v118 & 0xFF0000) != 0xFF0000)
              {
                v119 = 0;
                if (HIWORD(v118))
                {
                  if ((v118 & 0xFFFF00000000) != 0)
                  {
                    if (v120.var0 >= v118)
                    {
                      v119 = 0;
                      if ((v118 + HIWORD(v118) - 1) >= v120.var0 && BYTE2(v118) <= VisibleRow)
                      {
                        v119 = (BYTE4(v118) + BYTE2(v118) - 1) >= VisibleRow;
                      }
                    }

                    else
                    {
                      v119 = 0;
                    }
                  }
                }
              }

              v241 = v112;
              v121 = v91;
              v122 = v120.var0 | (VisibleRow << 16);
              v123 = v122 | v114;
              if ([(TSTMasterLayout *)v248 isDynamicallyChangingContent])
              {
                if (v119)
                {
                  v124 = [(TSTEditingState *)[(TSTTableRep *)v76 editingState] editingCellID];
                  v125 = v124;
                  if (v124.var0 == 0xFFFF || (*&v124 & 0xFF0000) == 0xFF0000)
                  {
                    v218 = [MEMORY[0x277D6C290] currentHandler];
                    v126 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRepDrawBackgroundFill(TSTTableRep *, TSTLayoutSpace *, TSTGridRange, CGContextRef)"}];
                    [v218 handleFailureInFunction:v126 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRep.mm"), 5129, @"Valid editing spilling text range but no editing cell ID"}];
                  }
                }

                else
                {
                  v125 = v122 | v114;
                }

                v228 = v125 | v228 & 0xFFFFFFFF00000000;
                if ([(TSTLayoutDynamicContentProtocol *)[(TSTMasterLayout *)v248 dynamicContentDelegate] cell:v254 forCellID:v228])
                {
                  v127 = v254[0];
                  v76 = a1;
                  v128 = v235;
LABEL_290:
                  TSTCellCopyJustStyleAndStrokes(v127, v128);
                  goto LABEL_291;
                }

                v76 = a1;
              }

              v240 = v240 & 0xFFFFFFFF00000000 | v123;
              v128 = v235;
              v129 = TSTCellAtCellIDSuppressingFormula(v242, v123, v235, 1);
              v127 = v246;
              if (v129)
              {
                goto LABEL_290;
              }

LABEL_291:
              LOWORD(VisibleRow) = v236;
              v130 = v76->mContainedTextEditingRep && ([(TSTEditingState *)[(TSTTableRep *)v76 editingState] editingCellID]& 0xFFFFFF) == v122 || ([(TSTMasterLayout *)[(TSTTableRep *)v76 masterLayout] dynamicSuppressingConditionalStylesCellID]& 0xFFFFFF) == v122;
              LOBYTE(v249) = 0;
              CellFillAndIsDefault = TSTCellGetCellFillAndIsDefault(v128, CellFill, v130, &v249);
              v133 = (v116 == 0) & v249;
              if (((v116 == 0) & v249) != 0)
              {
                v134 = v231;
              }

              else
              {
                v134 = CellFillAndIsDefault;
              }

              if (v133 && !v231)
              {
                v134 = ColumnFill ? ColumnFill : CellFillAndIsDefault;
                if (ColumnFill == 0 && v223)
                {
                  v135 = v241 == v122 ? v236 : v120.var0;
                  v134 = CellFillAndIsDefault;
                  if ([(TSTMasterLayout *)v248 shouldRowUseBandedFill:v135])
                  {
                    v134 = [(TSTMasterLayout *)v248 bandedFillObject];
                  }
                }
              }

              if (v134)
              {
                v136 = v134 == v237;
              }

              else
              {
                v136 = 1;
              }

              v137 = v136;
              if ((v137 | v229))
              {
                v91 = v121;
              }

              else
              {
                v91 = v121;
                if (v227 <= v236 && v226 >= v236 && v224 <= v241 >> 16 && (v241 >> 16) <= v221)
                {
                  v138 = TSTMasterLayoutMergeRangeAtCellID([(TSTTableRep *)v76 masterLayout], v241);
                  v222 = v222 & 0xFFFFFFFF00000000 | v241;
                  if (v119)
                  {
                    v139 = [(TSTLayout *)v233 editingSpillingTextRange];
                    if (v139 == 0xFFFF)
                    {
                      goto LABEL_330;
                    }

                    v140 = 0xFFFFLL;
                    v141 = 16711680;
                    if ((v139 & 0xFF0000) != 0xFF0000)
                    {
                      v143 = (v139 & 0xFFFF00000000) == 0 || HIWORD(v139) == 0;
                      if (v143 || v217)
                      {
LABEL_330:
                        v140 = 0xFFFFLL;
                        v141 = 16711680;
                      }

                      else
                      {
                        v140 = 0;
                        v178 = v221;
                        v179 = BYTE2(v139);
                        if (BYTE2(v139) <= v224)
                        {
                          v179 = v224;
                        }

                        if (v139 <= v227)
                        {
                          v180 = v227;
                        }

                        else
                        {
                          v180 = v139;
                        }

                        if ((BYTE4(v139) + BYTE2(v139) - 1) < v221)
                        {
                          v178 = (BYTE4(v139) + BYTE2(v139) - 1);
                        }

                        v181 = (v139 + HIWORD(v139) - 1);
                        if (v181 >= v226)
                        {
                          v181 = v226;
                        }

                        if (v180 > v181)
                        {
                          v141 = 0;
                        }

                        else
                        {
                          v141 = 0;
                          if (v179 <= v178)
                          {
                            v141 = v179 << 16;
                            v140 = v180;
                          }
                        }
                      }
                    }

                    v144 = v141 | v140;
                    v145 = v144 == v241;
                    if (v144 == v241)
                    {
                      v146 = v139;
                    }

                    else
                    {
                      v146 = v241 | 0x1000100000000;
                    }

LABEL_334:
                    if (!v145)
                    {
                      v134 = v237;
                    }
                  }

                  else
                  {
                    v146 = v138;
                    if (v138 != 0xFFFF && (v138 & 0xFF0000) != 0xFF0000 && HIWORD(v138) && (v138 & 0xFFFF00000000) != 0)
                    {
                      if (v217)
                      {
                        v148 = 0xFFFFLL;
                        v149 = 16711680;
                      }

                      else
                      {
                        v148 = 0;
                        v182 = v221;
                        v183 = BYTE2(v138);
                        if (BYTE2(v138) <= v224)
                        {
                          v183 = v224;
                        }

                        if (v138 <= v227)
                        {
                          v184 = v227;
                        }

                        else
                        {
                          v184 = v138;
                        }

                        if ((BYTE4(v138) + BYTE2(v138) - 1) < v221)
                        {
                          v182 = (BYTE4(v138) + BYTE2(v138) - 1);
                        }

                        v185 = (v138 + HIWORD(v138) - 1);
                        if (v185 >= v226)
                        {
                          v185 = v226;
                        }

                        if (v184 > v185)
                        {
                          v149 = 0;
                        }

                        else
                        {
                          v149 = 0;
                          if (v183 <= v182)
                          {
                            v149 = v183 << 16;
                            v148 = v184;
                          }
                        }
                      }

                      v145 = (v149 | v148) == v241;
                      goto LABEL_334;
                    }

                    v146 = v241 | 0x1000100000000;
                  }

                  v150 = BYTE2(v146);
                  if (BYTE2(v146) == 255)
                  {
                    v151 = -1;
                  }

                  else
                  {
                    v151 = BYTE2(v146);
                  }

                  v152 = v146;
                  if (WORD2(v146))
                  {
                    v153 = WORD2(v146) + v151 - 1;
                  }

                  else
                  {
                    v153 = -1;
                  }

                  if (v146 == 0xFFFF)
                  {
                    v154 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v154 = v146;
                  }

                  v155 = TSTLayoutSpaceGetGridRange(a2);
                  if (HIWORD(v146))
                  {
                    v157 = ((((HIDWORD(v146) << 16) - 0x100000000) >> 32) + v154);
                  }

                  else
                  {
                    v157 = 0xFFFFFFFFLL;
                  }

                  v158 = -1;
                  if (BYTE2(v146) == 255 || v153 == -1)
                  {
                    v159 = -1;
                    v76 = a1;
                  }

                  else
                  {
                    v159 = -1;
                    v47 = v151 > v153;
                    v76 = a1;
                    if (!v47 && v152 != 0xFFFF && v157 != 0xFFFFFFFF && v157 >= v154 && v155 != -1 && v156 != -1 && v155 <= v156)
                    {
                      v160 = HIDWORD(v155);
                      if (HIDWORD(v155) != 0xFFFFFFFF)
                      {
                        v161 = HIDWORD(v156);
                        if (HIDWORD(v156) != 0xFFFFFFFF && v160 <= v161)
                        {
                          v162 = v150 <= v155 ? v155 : v150;
                          v163 = v153 >= v156 ? v156 : v153;
                          if (v162 <= v163)
                          {
                            if (v157 < v161)
                            {
                              v161 = v157;
                            }

                            if (v154 <= v160)
                            {
                              v164 = HIDWORD(v155);
                            }

                            else
                            {
                              v164 = v154;
                            }

                            if (v164 <= v161)
                            {
                              v159 = v163 | (v161 << 32);
                              v158 = v162 | (v164 << 32);
                            }
                          }
                        }
                      }
                    }
                  }

                  AlignedFrameForGridRange = TSTLayoutSpaceGetAlignedFrameForGridRange(a2, v158, v159);
                  if (v134 == v237)
                  {
                    v108 = v242;
                    v128 = v235;
                    v91 = v219;
                    LOWORD(VisibleRow) = v236;
                  }

                  else
                  {
                    v169 = AlignedFrameForGridRange;
                    v170 = v166;
                    v171 = v167;
                    v172 = v168;
                    objc_opt_class();
                    v108 = v242;
                    v128 = v235;
                    v91 = v219;
                    LOWORD(VisibleRow) = v236;
                    if (objc_opt_isKindOfClass())
                    {
                      if (![(TSDFill *)v134 isClear])
                      {
                        [(TSDFill *)v134 paintRect:a4 inContext:v169, v170, v171, v172];
                      }
                    }

                    else
                    {
                      v173 = MEMORY[0x277CCACA8];
                      v174 = HIDWORD(v158);
                      if (v158 != -1 || (v175 = @"{invalid, invalid}", v174 != 0xFFFFFFFF))
                      {
                        if (v158 == -1)
                        {
                          v204 = HIDWORD(v158);
                          v186 = MEMORY[0x277CCACA8];
                          v187 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v204];
                          v173 = v186;
                          v175 = v187;
                        }

                        else
                        {
                          v203 = v158;
                          if (v174 == 0xFFFFFFFF)
                          {
                            v176 = MEMORY[0x277CCACA8];
                            v177 = @"{%u, invalid}";
                          }

                          else
                          {
                            v206 = HIDWORD(v158);
                            v176 = MEMORY[0x277CCACA8];
                            v177 = @"{%u, %u}";
                          }

                          v188 = MEMORY[0x277CCACA8];
                          v189 = [v176 stringWithFormat:v177, v203, v206];
                          v173 = v188;
                          v175 = v189;
                        }
                      }

                      v190 = HIDWORD(v159);
                      if (v159 != -1 || (v191 = @"{invalid, invalid}", v190 != 0xFFFFFFFF))
                      {
                        if (v159 == -1)
                        {
                          v205 = HIDWORD(v159);
                          v193 = v173;
                          v191 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v205];
                          v173 = v193;
                        }

                        else
                        {
                          v192 = v173;
                          if (v190 == 0xFFFFFFFF)
                          {
                            v191 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, invalid}", v159, v206];
                          }

                          else
                          {
                            v191 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, %u}", v159, HIDWORD(v159)];
                          }

                          v173 = v192;
                        }
                      }

                      v194 = [v173 stringWithFormat:@"{%@->%@}", v175, v191];
                      v206 = v134;
                      NSLog(@"WARNING: invalid cell fill %@ %@", v194);
                    }
                  }

                  goto LABEL_339;
                }
              }

              v108 = v242;
LABEL_339:
              TSTCellClear(v128, v132);
              TSTCellClear(v246, v147);
              ++v111;
              v110 = v244 + 0x10000;
              if (v111 > v91)
              {
                goto LABEL_258;
              }
            }

            v114 = 0;
LABEL_270:
            v120.var0 = VisibleRow;
            LOBYTE(VisibleRow) = v111;
            goto LABEL_271;
          }
        }
      }
    }
  }

LABEL_29:
  [(TSDCanvas *)[(TSDRep *)a1 canvas] viewScale];
  TSTTableRepSetupUserSpaceToDeviceSpaceTransform(a1, v16, a1->mCurrentScreenScale);
}

double TSTTableRepGetImageFrameForRange(double *a1, unint64_t a2, int a3)
{
  v6 = [a1 tableLayout];
  AlignedStrokeFrameForRange = TSTLayoutGetAlignedStrokeFrameForRange(v6, a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (a3)
  {
    v28.origin.x = TSTLayoutGetAlignedStrokeFrameForTableNameBorder(v6);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    if (!CGRectIsEmpty(v28))
    {
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v33.origin.x = AlignedStrokeFrameForRange;
      v33.origin.y = v9;
      v33.size.width = v11;
      v33.size.height = v13;
      v30 = CGRectUnion(v29, v33);
      AlignedStrokeFrameForRange = v30.origin.x;
      v9 = v30.origin.y;
      v11 = v30.size.width;
      v13 = v30.size.height;
    }
  }

  memset(&v27, 0, sizeof(v27));
  TSTLayoutGetTransformToDevice(v6, &v27);
  v26 = v27;
  v31.origin.x = AlignedStrokeFrameForRange;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  v32 = CGRectApplyAffineTransform(v31, &v26);
  v18 = a1[55];
  v19 = TSDMultiplyRectScalar(v32.origin.x, v32.origin.y, v32.size.width, v32.size.height, 1.0 / v18);
  v23 = TSDRoundedRectForScale(v19, v20, v21, v22, v18);
  TSDCeilSize(v24);
  return v23;
}

double TSTTableRepGetDrawnFrameInsideImageFrameForRange(double *a1, unint64_t a2)
{
  v4 = [a1 tableLayout];
  AlignedStrokeFrameForRange = TSTLayoutGetAlignedStrokeFrameForRange(v4, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memset(&v19, 0, sizeof(v19));
  TSTLayoutGetTransformToDevice(v4, &v19);
  v18 = v19;
  v20.origin.x = AlignedStrokeFrameForRange;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v21 = CGRectApplyAffineTransform(v20, &v18);
  v12 = a1[55];
  v13 = TSDMultiplyRectScalar(v21.origin.x, v21.origin.y, v21.size.width, v21.size.height, 1.0 / v12);
  TSDRoundedRectForScale(v13, v14, v15, v16, v12);
  return *MEMORY[0x277CBF348];
}

uint64_t TSTTableRepGetImageForRange(TSTTableRep *a1, unint64_t a2)
{
  v4 = [TSTAnimation newAnimationWithLayout:[(TSTTableRep *)a1 tableLayout] andCellRange:a2];
  v5 = v4;
  ImageFrameForRange = TSTTableRepGetImageFrameForRange(a1, a2, 0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  DrawnFrameInsideImageFrameForRange = TSTTableRepGetDrawnFrameInsideImageFrameForRange(a1, a2);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(TSDCanvas *)[(TSDRep *)a1 canvas] contentsScale];
  v21 = TSDMultiplyRectScalar(ImageFrameForRange, v8, v10, v12, v20);
  v23 = v22;
  v25 = v24;
  [(TSDCanvas *)[(TSDRep *)a1 canvas] contentsScale];
  v27 = TSDMultiplyRectScalar(DrawnFrameInsideImageFrameForRange, v15, v17, v19, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = TSDBitmapContextCreate(3, v23);
  CGContextTranslateCTM(v34, 0.0, v25);
  CGContextScaleCTM(v34, 1.0, -1.0);
  v48.origin.x = v27;
  v48.origin.y = v29;
  v48.size.width = v31;
  v48.size.height = v33;
  CGContextClipToRect(v34, v48);
  [(TSDCanvas *)[(TSDRep *)a1 canvas] contentsScale];
  CGContextScaleCTM(v34, v35, v35);
  [(TSDCanvas *)[(TSDRep *)a1 canvas] viewScale];
  v37 = v36;
  CGContextTranslateCTM(v34, -ImageFrameForRange, -v8);
  [(TSTTableRep *)a1 layerFrameInScaledCanvas];
  CGContextTranslateCTM(v34, -v38, -v39);
  CGContextScaleCTM(v34, v37, v37);
  v40 = [(TSDRep *)a1 layout];
  if (v40)
  {
    objc_msgSend_transformInRoot(v40);
  }

  else
  {
    memset(&v47, 0, sizeof(v47));
  }

  CGContextConcatCTM(v34, &v47);
  if (a1)
  {
    objc_msgSend_transformFromCanvas(a1);
  }

  else
  {
    memset(&v47, 0, sizeof(v47));
  }

  CGContextConcatCTM(v34, &v47);
  [(TSTTableRep *)a1 pushAnimation:v4];
  TSTTableRepDrawRangeInContext(a1, a2, v34);
  [(TSTTableRep *)a1 popAnimation];
  Image = CGBitmapContextCreateImage(v34);
  v42 = [MEMORY[0x277D6C2F8] imageWithCGImage:Image];
  CGImageRelease(Image);
  CGContextRelease(v34);
  [(TSDCanvas *)[(TSDRep *)a1 canvas] viewScale];
  v44 = v43;
  [(TSDCanvas *)[(TSDRep *)a1 canvas] contentsScale];
  TSTTableRepSetupUserSpaceToDeviceSpaceTransform(a1, v44, v45);
  return v42;
}

uint64_t TSTTableRepPrepareToDrawLayoutSpace(TSTTableRep *a1, TSTLayoutSpace *a2, CGContextRef c)
{
  if (a2)
  {
    CGContextSaveGState(c);
    objc_msgSend_transformToCanvas(a2);
  }

  else
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRepPrepareToDrawLayoutSpace(TSTTableRep *, TSTLayoutSpace *, CGContextRef)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRep.mm"), 4786, @"invalid nil value for '%s'", "space"}];
    CGContextSaveGState(c);
    memset(&transform, 0, sizeof(transform));
  }

  CGContextConcatCTM(c, &transform);
  if ([(TSDCanvas *)[(TSDRep *)a1 canvas] isDrawingIntoPDF])
  {
    goto LABEL_5;
  }

  v10 = 0uLL;
  memset(&transform, 0, sizeof(transform));
  if (a2)
  {
    objc_msgSend_transformToDevice(a2);
    v10 = 0uLL;
  }

  *&v11.c = v10;
  *&v11.tx = v10;
  *&v11.a = v10;
  CGContextGetCTM(&v11, c);
  if (transform.a >= 0.0 && transform.d >= 0.0 && transform.ty + transform.b + transform.d * 0.0 == transform.ty + transform.d * 0.0 + transform.b * 0.0 && transform.tx + transform.c + transform.a * 0.0 == transform.tx + transform.c * 0.0 + transform.a * 0.0 && v11.b == 0.0 && v11.c == 0.0)
  {
    v8 = 1;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  [(TSTLayoutSpace *)a2 setDrawPreventAntialias:v8];
  [(TSTLayoutSpace *)a2 setDrawBlackAndWhite:0];
  result = [(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] enabled];
  if (result)
  {
    result = [(TSTAnimation *)[(TSTTableRep *)a1 currentAnimation] drawsBlackAndWhite];
    if (result)
    {
      return [(TSTLayoutSpace *)a2 setDrawBlackAndWhite:1];
    }
  }

  return result;
}

void *TSTTableRepDrawCellContent(void *a1, TSTLayoutSpace *a2, unint64_t a3, unint64_t a4, CGContext *a5)
{
  v364 = *MEMORY[0x277D85DE8];
  v323 = [a1 tableLayout];
  v10 = [v323 masterLayout];
  if (![objc_msgSend(a1 "masterLayout")] || (result = TSTTableNumberOfPopulatedCells(objc_msgSend(a1, "tableModel")), result <= 0x19))
  {
    v12 = HIDWORD(a3);
    v13 = HIDWORD(a4);
    result = [a1 isDrawingInFlippedContext];
    v300 = result;
    v14 = a4 == -1 || a3 == -1;
    v15 = v14 || a3 > a4;
    v16 = v15;
    v312 = v16;
    v17 = 0;
    if (v15)
    {
      v18 = HIDWORD(a3);
    }

    else
    {
      v18 = HIDWORD(a3);
      if (v12 != 0xFFFFFFFF && v13 != 0xFFFFFFFF && v12 <= v13)
      {
        v17 = ((a4 - (a3 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (a4 - a3 + 1)) + 0x100000000;
      }
    }

    v290 = v18;
    if (v18 <= v13)
    {
      v19 = a3 << 16;
      v310 = v19;
      if (a3 == -1)
      {
        v19 = 16711680;
      }

      v309 = (a4 - a3 + 1) | 0x100000000;
      v20 = a3 << 16;
      v22 = (~a3 & 0xFFFF00000000) != 0 && v19 != 16711680;
      v325 = v22;
      v23 = (v17 & 0xFFFF00000000) != 0;
      if (!v17)
      {
        v23 = 0;
      }

      v307 = v23;
      v289 = v19 >> 16;
      v287 = v290 + WORD2(v17) - 1;
      v288 = v17 + WORD1(v19) + 255;
      LODWORD(result) = v290;
      v275 = a5;
      v336 = a1;
      v329 = v10;
      v311 = HIDWORD(a4);
      v308 = a3 << 16;
      do
      {
        v328 = result;
        v24 = v312;
        if (result == -1)
        {
          v24 = 1;
        }

        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = v309;
        }

        v26 = v310 | (((v25 >> 16) & 0x10000 | v25) << 32) | result;
        if (v20)
        {
          v27 = result | v20;
          v357.a = 0.0;
          v317 = v317 & 0xFFFFFFFF00000000 | v27;
          v28 = [v10 cell:&v357 forCellID:?];
          v357.a = 0.0;
          if ((v28 & 1) == 0)
          {
            v296 = v296 & 0xFFFFFFFF00000000 | v27;
            v295 = v295 & 0xFFFFFFFF00000000 | TSTLayoutCellLeftOfCell(v323, v296, 0);
            v26 = TSTCellRangeUnionCellID(v26, v295);
          }
        }

        v29 = BYTE2(v26);
        v30 = HIDWORD(v26);
        v31 = (BYTE4(v26) + BYTE2(v26) - 1);
        if (v31 != TSTMasterLayoutGetTableNumberOfColumns(v10) - 1)
        {
          v32 = v26 | (v31 << 16);
          v357.a = 0.0;
          v306 = v306 & 0xFFFFFFFF00000000 | v32;
          v33 = [v10 cell:&v357 forCellID:?];
          v357.a = 0.0;
          if ((v33 & 1) == 0)
          {
            v286 = v286 & 0xFFFFFFFF00000000 | v32;
            v285 = v285 & 0xFFFFFFFF00000000 | TSTLayoutCellRightOfCell(v323, v32, 0);
            v26 = TSTCellRangeUnionCellID(v26, v285);
            v30 = HIDWORD(v26);
            v29 = BYTE2(v26);
          }
        }

        v34 = v5;
        if (v29 == 255)
        {
          v35 = -1;
        }

        else
        {
          v35 = v29;
        }

        if (v30)
        {
          v36 = v30 + v35 - 1;
        }

        else
        {
          v36 = -1;
        }

        if (v26 == 0xFFFF)
        {
          v37 = 0xFFFFFFFFLL;
        }

        else
        {
          v37 = v26;
        }

        v38 = ((((v30 << 16) - 0x100000000) >> 32) + v37);
        GridRange = TSTLayoutSpaceGetGridRange(a2);
        v41 = 0;
        LOWORD(v42) = -1;
        if (HIWORD(v26))
        {
          v43 = v38;
        }

        else
        {
          v43 = 0xFFFFFFFFLL;
        }

        v44 = -1;
        v45 = -1;
        if (v29 == 255)
        {
          v326 = -1;
          v47 = v336;
          v5 = v34;
        }

        else
        {
          v46 = v36 == -1 || v35 > v36;
          v326 = -1;
          v47 = v336;
          v5 = v34;
          if (!v46)
          {
            v41 = 0;
            LOWORD(v42) = -1;
            v45 = -1;
            if (v26 == 0xFFFF)
            {
              goto LABEL_86;
            }

            v48 = v43 != 0xFFFFFFFF && v43 >= v37;
            v326 = -1;
            if (v48)
            {
              v41 = 0;
              LOWORD(v42) = -1;
              v45 = -1;
              if (GridRange == -1 || v40 == -1)
              {
                goto LABEL_86;
              }

              v326 = -1;
              if (GridRange > v40)
              {
                goto LABEL_88;
              }

              v41 = 0;
              v49 = HIDWORD(GridRange);
              LOWORD(v42) = -1;
              v45 = -1;
              if (HIDWORD(GridRange) == 0xFFFFFFFF)
              {
                goto LABEL_86;
              }

              v50 = HIDWORD(v40);
              if (HIDWORD(v40) == 0xFFFFFFFF)
              {
                v326 = -1;
                LOWORD(v42) = -1;
              }

              else
              {
                v326 = -1;
                LOWORD(v42) = -1;
                if (v49 > v50)
                {
                  goto LABEL_88;
                }

                if (v29 <= GridRange)
                {
                  v51 = GridRange;
                }

                else
                {
                  v51 = v29;
                }

                if (v36 >= v40)
                {
                  v45 = v40;
                }

                else
                {
                  v45 = v36;
                }

                v326 = v51;
                if (v51 > v45)
                {
                  goto LABEL_85;
                }

                if (v43 >= v50)
                {
                  v43 = HIDWORD(v40);
                }

                v42 = v37 <= v49 ? HIDWORD(GridRange) : v37;
                v52 = v43 < v42;
                if (v43 < v42)
                {
LABEL_85:
                  v41 = 0;
                  LOWORD(v42) = -1;
                  v45 = -1;
LABEL_86:
                  v326 = -1;
                  goto LABEL_88;
                }

                v44 = v326;
                if (v45 == -1)
                {
                  v41 = 0;
                }

                else
                {
                  v41 = 0;
                  if (v43 == 0xFFFFFFFF)
                  {
                    v52 = 1;
                  }

                  if (v42 != 0xFFFFFFFF && !v52)
                  {
                    v41 = ((v45 - v326 + 1) | ((v43 - v42) << 32)) + 0x100000000;
                  }
                }
              }
            }
          }
        }

LABEL_88:
        v313 = v44;
        v314 = v45;
        if (v44 == -1)
        {
          v53 = 16711680;
        }

        else
        {
          v53 = v44 << 16;
        }

        v54 = (v41 >> 16) & 0xFFFF0000;
        v55 = v42;
        v56 = [[TSTLayoutCellIterator alloc] initWithLayout:v323 range:v53 & 0xFFFFFFFFFFFF0000 | ((v54 | v41) << 32) | v42 flags:1];
        v349 = [v329 isDynamicallyHidingRowsCols];
        v352 = v56;
        if (TSTLayoutCellIteratorGetNextCell(v56, v354))
        {
          v58 = v55 != 0xFFFFLL && v53 != 16711680;
          v305 = v58;
          if (v41)
          {
            v59 = v54 == 0;
          }

          else
          {
            v59 = 1;
          }

          v60 = !v59;
          v299 = v60;
          v293 = v53 >> 16;
          v294 = v55;
          v291 = v55 + WORD2(v41) - 1;
          v292 = v41 + WORD1(v53) + 255;
          v345 = 0xFFFFFFLL;
          v10 = v329;
          while (2)
          {
            v61 = v355;
            v353 = v354[1];
            v62 = HIBYTE(v354[0]);
            if (v355 == 0xFFFF)
            {
              goto LABEL_117;
            }

            v63 = (v355 & 0xFF0000) == 0xFF0000 || HIWORD(v355) == 0;
            v64 = v63 || (v355 & 0xFFFF00000000) == 0;
            if (v64 || (WORD2(v354[0]) | (BYTE6(v354[0]) << 16)) == (v355 & 0xFFFFFF))
            {
              goto LABEL_117;
            }

            v66 = v355 >> 16;
            if (v325 && v307)
            {
              v78 = 0;
              if (BYTE2(v355) <= v289)
              {
                v79 = v289;
              }

              else
              {
                v79 = BYTE2(v355);
              }

              if (v355 <= v290)
              {
                v80 = v290;
              }

              else
              {
                v80 = v355;
              }

              if ((BYTE4(v355) + BYTE2(v355) - 1) >= v288)
              {
                v81 = v288;
              }

              else
              {
                v81 = (BYTE4(v355) + BYTE2(v355) - 1);
              }

              if ((v355 + HIWORD(v355) - 1) >= v287)
              {
                v82 = v287;
              }

              else
              {
                v82 = (v355 + HIWORD(v355) - 1);
              }

              v83 = 0;
              v84 = 0;
              v85 = 0;
              if (v80 <= v82 && v79 <= v81)
              {
                v85 = ((v82 - v80) << 48) + 0x1000000000000;
                v84 = (((v81 - v79) << 32) + 0x100000000) & 0xFFFF00000000;
                v83 = v79 << 16;
                v78 = v80;
              }
            }

            else
            {
              v84 = 0;
              v85 = 0;
              v78 = 0xFFFFLL;
              v83 = 16711680;
            }

            v86 = v83 | v78 | v84 | v85;
            if (v86 == 0xFFFF || (v86 & 0xFF0000) == 0xFF0000 || !HIWORD(v86) || (v86 & 0xFFFF00000000) == 0 || v328 != v86)
            {
              goto LABEL_117;
            }

            if (v305 && v299)
            {
              v87 = 0;
              v88 = BYTE2(v355);
              if (BYTE2(v355) <= v293)
              {
                v88 = v293;
              }

              if (v355 <= v294)
              {
                v89 = v294;
              }

              else
              {
                v89 = v355;
              }

              if ((BYTE4(v355) + BYTE2(v355) - 1) >= v292)
              {
                v90 = v292;
              }

              else
              {
                v90 = (BYTE4(v355) + BYTE2(v355) - 1);
              }

              if ((v355 + HIWORD(v355) - 1) >= v291)
              {
                v91 = v291;
              }

              else
              {
                v91 = (v355 + HIWORD(v355) - 1);
              }

              v92 = 0;
              v93 = 0;
              v94 = 0;
              if (v89 <= v91 && v88 <= v90)
              {
                v94 = ((v91 - v89) << 48) + 0x1000000000000;
                v93 = (((v90 - v88) << 32) + 0x100000000) & 0xFFFF00000000;
                v92 = v88 << 16;
                v87 = v89;
              }
            }

            else
            {
              v93 = 0;
              v94 = 0;
              v87 = 0xFFFFLL;
              v92 = 16711680;
            }

            v129 = v92 | v87 | v93 | v94;
            if (v129 == 0xFFFF || (v129 & 0xFF0000) == 0xFF0000 || !HIWORD(v129) || (v129 & 0xFFFF00000000) == 0 || BYTE6(v354[0]) != BYTE2(v129))
            {
LABEL_117:
              LOBYTE(v66) = BYTE6(v354[0]);
              LOWORD(v61) = WORD2(v354[0]);
            }

            else
            {
              v62 = BYTE3(v355);
              v278 = v278 & 0xFFFFFFFF00000000 | v355;
              if (([v10 cell:&v353 forCellID:?] & 1) == 0)
              {
                v353 = objc_alloc_init(TSTCell);
                v130 = [v47 tableModel];
                v274 = v61 | v274 & 0xFFFFFFFF00000000;
                TSTCellAtCellID(v130, v61, v353);
              }
            }

            if (!v353)
            {
              goto LABEL_177;
            }

            v67 = (v66 << 16) | (v62 << 24) | v61;
            v5 = v67 | v5 & 0xFFFFFFFF00000000;
            v68 = [v10 modelCellIDForLayoutCellID:v5];
            v69 = [v10 cellIDToWPColumnCache];
            HIDWORD(v70) = v68;
            LODWORD(v70) = v68;
            v72 = [v69 objectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", (v70 >> 16) & 0xFFFF00FF)}];
            if (!v72)
            {
              if (v353 && *(&v353->mPrivate + 1) << 8 == 2304)
              {
                v73 = [(TSTRichTextPayload *)v353->mPrivate.mRichTextPayload storage];
              }

              else
              {
                v73 = NSStringFromNativeTSTCell(v353, v71);
              }

              v72 = v73;
            }

            if (v349)
            {
              r1_24 = v67 | r1_24 & 0xFFFFFFFF00000000;
              if ([v10 isDynamicallyHidingRowsColsCellID:?])
              {
                goto LABEL_177;
              }
            }

            v74 = v72;
            r1 = v353;
            v339 = HIDWORD(v354[0]);
            v344 = [v47 tableLayout];
            v75 = [v47 tableModel];
            v340 = [objc_msgSend(v47 "masterLayout")];
            v361 = 0;
            v76 = [objc_msgSend(v47 "masterLayout")];
            context = objc_autoreleasePoolPush();
            objc_opt_class();
            v351 = v72;
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [(TSWPStorage *)v72 length])
            {
              v77 = 1;
            }

            else
            {
              objc_opt_class();
              v77 = (objc_opt_isKindOfClass() & 1) != 0 && [(TSWPStorage *)v72 length]!= 0;
            }

            v95 = v67 | 0x1000100000000;
            if (([objc_msgSend(v47 "masterLayout")] & 1) == 0 && (objc_msgSend(objc_msgSend(v47, "masterLayout"), "isDynamicallyHidingRowsColsCellID:", v67) & 1) == 0)
            {
              if (![objc_msgSend(v47 "masterLayout")])
              {
                goto LABEL_184;
              }

              if (r1 && (r1->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType - 263) <= 4)
              {
                TSTCellClearValue(r1);
              }

              if (TSTTableBadgeIsDrawingControlCell(r1))
              {
LABEL_184:
                v338 = v5;
                v96 = TSTMasterLayoutMergeRangeAtCellID([v47 masterLayout], v67);
                v97 = v96;
                v98 = (~v96 & 0xFF0000) != 0 && v96 != 0xFFFF;
                v331 = v98;
                if (v98)
                {
                  v99 = (v96 & 0xFFFF00000000) != 0;
                  v100 = HIWORD(v96);
                  v101 = HIWORD(v96) != 0;
                  v102 = v77;
                  v103 = v101 && v99;
                  v104 = v47;
                  if (v101 && v99)
                  {
                    v105 = v97;
                  }

                  else
                  {
                    v105 = v67 | 0x1000100000000;
                  }

                  v106 = [v104 canvas];
                  v327 = v102;
                  if (!v102)
                  {
                    v95 = v105;
                    v47 = v336;
                    v10 = v329;
                    v5 = v338;
                    v77 = v102;
                    goto LABEL_480;
                  }

                  v322 = v106;
                  if (v103)
                  {
                    v95 = v97;
                    if (BYTE2(v97) == 255)
                    {
                      v107 = -1;
                    }

                    else
                    {
                      v107 = BYTE2(v97);
                    }

                    v108 = WORD2(v97) + v107 - 1;
                    if (!WORD2(v97))
                    {
                      v108 = 0xFFFFFFFFLL;
                    }

                    if (v97 == 0xFFFF)
                    {
                      v109 = 0xFFFFFFFFLL;
                    }

                    else
                    {
                      v109 = v97;
                    }

                    v110 = v107 | (v109 << 32);
                    v111 = (((v109 << 32) + (HIDWORD(v97) << 16)) & 0xFFFFFFFF00000000 | v108) - 0x100000000;
                    tx = TSTLayoutSpaceGetAlignedContentFrameForGridRange(a2, v110, v111);
                    ty = v112;
                    ContentFrameForGridRange = TSTLayoutSpaceGetContentFrameForGridRange(a2, v110, v111);
                    v114 = v113;
                    if ([objc_msgSend(v336 "masterLayout")])
                    {
                      v115 = [objc_msgSend(v336 "tableModel")];
                      if (HIWORD(v115))
                      {
                        if ((v115 & 0xFFFF00000000) != 0 && v115 <= v97 && (v115 + HIWORD(v115) - 1) >= v97 && BYTE2(v115) <= BYTE2(v97))
                        {
                          v116 = (BYTE4(v115) + BYTE2(v115) - 1);
                          if (v116 >= BYTE2(v97) && v116 >= (BYTE4(v97) + BYTE2(v97) - 1) && (v115 + HIWORD(v115) - 1) >= (v97 + v100 - 1))
                          {
                            rect = v97 + v100 - 1;
                            v117 = [objc_msgSend(v336 "tableModel")];
                            v118 = [objc_msgSend(v336 "masterLayout")];
                            v119 = 0;
                            if (v117 == 0xFFFF)
                            {
                              v120 = 0xFFFFLL;
                              v121 = 16711680;
                              v122 = 0;
                              a5 = v275;
                            }

                            else
                            {
                              v120 = 0xFFFFLL;
                              v121 = 16711680;
                              v122 = 0;
                              a5 = v275;
                              if ((v117 & 0xFF0000) != 0xFF0000)
                              {
                                v119 = 0;
                                if ((v117 & 0xFFFF00000000) != 0)
                                {
                                  v123 = v118 + HIWORD(v117);
                                  v120 = 0xFFFFLL;
                                  v121 = 16711680;
                                  v122 = 0;
                                  if (v118 + HIWORD(v117))
                                  {
                                    v120 = 0;
                                    v124 = BYTE2(v97);
                                    if (BYTE2(v97) <= BYTE2(v117))
                                    {
                                      v124 = BYTE2(v117);
                                    }

                                    if (v97 <= v117)
                                    {
                                      v125 = v117;
                                    }

                                    else
                                    {
                                      v125 = v97;
                                    }

                                    if ((BYTE4(v97) + BYTE2(v97) - 1) >= (BYTE4(v117) + BYTE2(v117) - 1))
                                    {
                                      v126 = (BYTE4(v117) + BYTE2(v117) - 1);
                                    }

                                    else
                                    {
                                      v126 = (BYTE4(v97) + BYTE2(v97) - 1);
                                    }

                                    if (rect >= (v117 + v123 - 1))
                                    {
                                      v127 = (v117 + v123 - 1);
                                    }

                                    else
                                    {
                                      v127 = rect;
                                    }

                                    v121 = 0;
                                    v119 = 0;
                                    v122 = 0;
                                    if (v125 <= v127 && v124 <= v126)
                                    {
                                      v122 = ((v127 - v125) << 48) + 0x1000000000000;
                                      v119 = (((v126 - v124) << 32) + 0x100000000) & 0xFFFF00000000;
                                      v121 = v124 << 16;
                                      v120 = v125;
                                    }
                                  }
                                }

                                else
                                {
                                  v120 = 0xFFFFLL;
                                  v121 = 16711680;
                                  v122 = 0;
                                }
                              }
                            }

                            v141 = v121 | v120 | v119 | v122;
                            if (BYTE2(v141) == 255)
                            {
                              v142 = -1;
                            }

                            else
                            {
                              v142 = BYTE2(v141);
                            }

                            v143 = WORD2(v141) + v142 - 1;
                            v144 = HIDWORD(v141);
                            if (!WORD2(v141))
                            {
                              v143 = 0xFFFFFFFFLL;
                            }

                            if (v141 == 0xFFFF)
                            {
                              v141 = 0xFFFFFFFFLL;
                            }

                            else
                            {
                              v141 = v141;
                            }

                            v110 = v142 | (v141 << 32);
                            v145 = (((v141 << 32) + (v144 << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
                            if (!HIWORD(v122))
                            {
                              v145 = 0xFFFFFFFF00000000;
                            }

                            v111 = v145 | v143;
                          }
                        }
                      }
                    }

                    v146 = TSTLayoutSpaceIntersectionGridRange(a2, v110, v111);
                    AlignedContentFrameForGridRange = TSTLayoutSpaceGetAlignedContentFrameForGridRange(a2, v146, v147);
                    v302 = v149;
                    v303 = AlignedContentFrameForGridRange;
                    width = v150;
                    recta = v151;
                    v47 = v336;
                    v10 = v329;
LABEL_262:
                    v360 = 0;
                    v359 = 0;
                    v358 = 1;
                    v153 = 0.0;
                    v152 = 0.0;
                    v155 = 0.0;
                    v154 = 0.0;
                    CGContextSaveGState(a5);
                    v156 = v76;
                    TSTCellTextProperties(r1, v75, v76, &v360, &v359, &v358, &v361);
                    v157 = [objc_msgSend(v47 "layout")];
                    if (objc_opt_respondsToSelector())
                    {
                      v158 = [v157 pageNumber];
                    }

                    else
                    {
                      v158 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    v77 = v327;
                    v159 = r1;
                    if (objc_opt_respondsToSelector())
                    {
                      v160 = [v157 pageCount];
                    }

                    else
                    {
                      v160 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    v324 = v156;
                    if ([objc_msgSend(v47 "masterLayout")])
                    {
                      objc_opt_class();
                      v161 = v351;
                      if (TSUDynamicCast())
                      {
                        if (r1 && *(&r1->mPrivate + 1) << 8 == 2304)
                        {
                          v163 = [(TSTRichTextPayload *)r1->mPrivate.mRichTextPayload storage];
                        }

                        else
                        {
                          v163 = NSStringFromNativeTSTCell(r1, v162);
                        }

                        v161 = v163;
                      }

                      v167 = [v47 masterLayout];
                      LODWORD(v273) = 0;
                      v166 = [v167 validateCellForDrawing:v324 cell:r1 contents:v161 wrap:v360 verticalAlignment:v358 padding:v361 layoutCacheFlags:v273 pageNumber:v158 pageCount:v160];
LABEL_280:
                      if (!v166)
                      {
                        goto LABEL_281;
                      }
                    }

                    else
                    {
                      if (v340)
                      {
                        v164 = [v47 masterLayout];
                        LODWORD(v273) = 15;
                        v165 = v156;
                        v161 = v351;
                        v166 = [v164 validateCellForDrawing:v165 cell:r1 contents:v351 wrap:v360 verticalAlignment:v358 padding:v361 layoutCacheFlags:v273 pageNumber:v158 pageCount:v160];
                        goto LABEL_280;
                      }

                      objc_opt_class();
                      v161 = v351;
                      v166 = TSUDynamicCast();
                      if (!v166)
                      {
LABEL_281:
                        v168 = [v47 masterLayout];
                        LODWORD(v273) = 15;
                        v166 = [v168 validateCellForDrawing:v324 cell:r1 contents:v161 wrap:v360 verticalAlignment:v358 padding:v361 layoutCacheFlags:v273 pageNumber:v158 pageCount:v160];
                        if (!v166)
                        {
                          v169 = [MEMORY[0x277D6C290] currentHandler];
                          v170 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTCellRange TSTTableRepDrawIndividualCellContent(TSTTableRep *, TSTLayoutSpace *, TSTGridRange, TSTCell *, TSTCellID, id, TSTCellIteratorData, TSTCellRange, BOOL, NSMutableArray *, CGContextRef)"}];
                          [v169 handleFailureInFunction:v170 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRep.mm"), 5533, @"No TSWPColumn layout rock found."}];
                          v166 = 0;
                        }
                      }
                    }

                    v320 = v166;
                    [v166 typographicBoundsForCell];
                    v175 = v173;
                    v176 = v174;
                    if (v361)
                    {
                      v315 = v174;
                      v177 = v173;
                      v178 = v171;
                      v341 = width;
                      v179 = v172;
                      [v361 topInset];
                      v181 = v180;
                      [v361 leftInset];
                      v182 = v114;
                      v184 = v183;
                      [v361 bottomInset];
                      v155 = v185;
                      [v361 rightInset];
                      v187 = v186;
                      v188 = v184;
                      v114 = v182;
                      v153 = v181;
                      v152 = TSTMasterLayoutApplyMinimumHorizontalInset(v188);
                      v154 = TSTMasterLayoutApplyMinimumHorizontalInset(v187);
                      v301 = v178 - v152;
                      v298 = v179 - v153;
                      width = v341;
                      v175 = v177 - (-v154 - v152);
                      v176 = v315 - (-v155 - v153);
                    }

                    else
                    {
                      v298 = v172;
                      v301 = v171;
                    }

                    memset(&v357, 0, sizeof(v357));
                    CGAffineTransformMakeTranslation(&v357, tx, ty);
                    v321 = v154;
                    if (v331 && HIWORD(v97) && (v97 & 0xFFFF00000000) != 0)
                    {
                      v362 = v357;
                      CGAffineTransformInvert(&transform, &v362);
                      *&v365.origin.y = v302;
                      v365.origin.x = v303;
                      v365.size.width = width;
                      v365.size.height = recta;
                      v366 = CGRectApplyAffineTransform(v365, &transform);
                      y = v366.origin.y;
                      width = v366.size.width;
                      recta = v366.size.height;
LABEL_312:
                      v5 = v338;
                      goto LABEL_457;
                    }

                    if (r1)
                    {
                      v190 = *&r1->mPrivate >> 8;
                    }

                    else
                    {
                      LOBYTE(v190) = 0;
                    }

                    v366.origin.x = *MEMORY[0x277CBF348];
                    y = *(MEMORY[0x277CBF348] + 8);
                    if (v331 && HIWORD(v97) && (v97 & 0xFFFF00000000) != 0 || v190 != 9 && v190 != 3)
                    {
                      goto LABEL_312;
                    }

                    v5 = v338;
                    if (!v360 && v175 > v114)
                    {
                      v191 = v359;
                      v192 = [v47 tableLayout];
                      v193 = v192;
                      *&v194 = 0xFFFFFFLL;
                      *(&v194 + 1) = 0xFFFFFFLL;
                      *&v362.a = v194;
                      if (BYTE2(v339) == 255)
                      {
                        v195 = 0xFFFFFFFFLL;
                      }

                      else
                      {
                        v195 = BYTE2(v339);
                      }

                      if (v339 == 0xFFFF)
                      {
                        v196 = 0xFFFFFFFFLL;
                      }

                      else
                      {
                        v196 = v339;
                      }

                      *&v197 = v195 | (v196 << 32);
                      transform.a = v197;
                      transform.b = v197;
                      transform.c = v197;
                      transform.d = v197;
                      TableNumberOfHeaderColumns = TSTMasterLayoutGetTableNumberOfHeaderColumns([v192 masterLayout]);
                      txa = v193;
                      v199 = [v193 editingSpillingTextRange];
                      v200 = 0;
                      if (v199 != 0xFFFF && (v199 & 0xFF0000) != 0xFF0000)
                      {
                        v200 = 0;
                        if (HIWORD(v199))
                        {
                          if ((v199 & 0xFFFF00000000) != 0)
                          {
                            v200 = v339 >= v199 && (v199 + HIWORD(v199) - 1) >= v339;
                          }
                        }
                      }

                      v283 = v199;
                      v332 = v191;
                      if ([txa layoutDirectionIsLeftToRight])
                      {
                        if (v191 <= 4 && ((1 << v191) & 0x15) != 0)
                        {
                          goto LABEL_317;
                        }

LABEL_326:
                        v201 = v191;
                        goto LABEL_327;
                      }

                      if ((v191 & 0xFFFFFFFB) == 0)
                      {
                        goto LABEL_328;
                      }

                      if (v191 == 1)
                      {
                        v201 = 0;
                      }

                      else
                      {
                        if (v191 != 2 && v191 != 4)
                        {
                          goto LABEL_326;
                        }

LABEL_317:
                        v201 = v191;
                      }

                      if (v314 != BYTE2(v339))
                      {
                        LOWORD(v362.a) = v339;
                        BYTE2(v362.a) = BYTE2(v339) + 1;
                        HIWORD(v362.a) = 1;
                        v202 = v314 - BYTE2(v339);
                        if (v314 <= BYTE2(v339))
                        {
                          v202 = 0;
                        }

                        WORD2(v362.a) = v202;
                      }

LABEL_327:
                      if (v201 - 1 > 1)
                      {
                        v276 = 0;
                        v207 = 0.0;
LABEL_342:
                        v277 = -1;
                      }

                      else
                      {
LABEL_328:
                        LOWORD(v362.b) = v339;
                        HIWORD(v362.b) = 1;
                        if (TableNumberOfHeaderColumns <= BYTE2(v339))
                        {
                          v203 = v326 + TableNumberOfHeaderColumns;
                        }

                        else
                        {
                          v203 = v326;
                        }

                        if (TableNumberOfHeaderColumns <= BYTE2(v339))
                        {
                          v204 = v326 + TableNumberOfHeaderColumns;
                        }

                        else
                        {
                          v204 = v313;
                        }

                        v205 = BYTE2(v339) - v203;
                        if (BYTE2(v339) <= v203)
                        {
                          v205 = 0;
                        }

                        v276 = v205;
                        v277 = v204;
                        BYTE2(v362.b) = v204;
                        WORD2(v362.b) = v205;
                        TSTLayoutSpaceGetFrameForGridRange(a2, *&v197, *&v197);
                        if (v191 == 2)
                        {
                          v207 = v206 * 0.5;
                        }

                        else
                        {
                          v207 = 0.0;
                        }

                        if (BYTE2(v339) == v326)
                        {
                          LODWORD(v362.b) = 0xFFFFFF;
                          goto LABEL_342;
                        }
                      }

                      v208 = 0;
                      rectb = 0;
                      v304 = v339 & 0xFF000000 | (BYTE2(v339) << 16) | v339;
                      v209 = BYTE2(v339) < BYTE2(v283) && v200;
                      v282 = v209;
                      v210 = BYTE2(v339) > (BYTE4(v283) + BYTE2(v283) - 1) && v200;
                      v281 = v210;
                      v342 = &v362;
                      p_transform = &transform;
                      v212 = 1;
                      v5 = v338;
                      while (1)
                      {
                        v213 = v212;
                        a = v342->a;
                        if (LOWORD(v342->a) != 0xFFFF)
                        {
                          v14 = (*&a & 0xFF0000) == 16711680;
                          v215 = *&a & 0xFFFF00000000;
                          v216 = HIWORD(*&a);
                          v217 = v14 || v216 == 0;
                          if (!v217 && v215 != 0)
                          {
                            if (v208)
                            {
                              v284 = v284 & 0xFFFFFFFF00000000 | v304;
                              v219 = TSTLayoutCellLeftOfCell(txa, v284, 1);
                              v220 = v345;
                              if (v281)
                              {
                                v220 = v345;
                                if (BYTE2(v219) < (BYTE4(v283) + BYTE2(v283) - 1))
                                {
                                  v220 = v283;
                                  v219 = v283;
                                }
                              }

                              if (v219 != 0xFFFF && (*&v219 & 0xFF0000) != 0xFF0000 && v220 != 0xFFFF && (v220 & 0xFF0000) != 0xFF0000 && HIWORD(v220) && (v220 & 0xFFFF00000000) != 0)
                              {
                                v221 = HIDWORD(v220) + WORD1(v220);
                                BYTE2(v362.b) = v221;
                                v276 += v277 + (-v221 | 0xFFFFFF00);
                                v277 = v221;
                                WORD2(v362.b) = v276;
                              }
                            }

                            else
                            {
                              v219 = TSTLayoutCellRightOfCell(txa, v304, 1);
                              v302 = v302 & 0xFFFFFFFF00000000 | v304;
                              if (v282 && BYTE2(v283) < BYTE2(v219))
                              {
                                WORD2(v362.a) = ~BYTE2(v339) + BYTE2(v283);
                              }
                            }

                            v222 = (~v219 & 0xFF0000) != 0 && v219 != 0xFFFF;
                            v223 = BYTE2(v342->a);
                            v224 = v223;
                            if ((v213 & 1) == 0)
                            {
                              v224 = v223 + WORD2(v342->a) - 1;
                            }

                            rectb |= v222;
                            v225 = BYTE2(v219);
                            if ((v213 & 1) == 0)
                            {
LABEL_381:
                              if (v224 < v223)
                              {
LABEL_401:
                                v233 = *&transform.a;
                                v232 = *&transform.b;
                                LODWORD(c_low) = LODWORD(transform.c);
                                LODWORD(d_low) = LODWORD(transform.d);
                                v236 = HIDWORD(*&transform.a);
                                v237 = HIDWORD(*&transform.b);
                                if (LODWORD(transform.a) == -1 || LODWORD(transform.b) == -1 || LODWORD(transform.a) > LODWORD(transform.b) || v236 == 0xFFFFFFFF || v237 == 0xFFFFFFFF || v236 > v237)
                                {
                                  v232 = *&transform.d;
                                  v233 = *&transform.c;
                                  a5 = v275;
                                  v47 = v336;
LABEL_419:
                                  v159 = r1;
                                  v77 = v327;
                                  goto LABEL_420;
                                }

                                v47 = v336;
                                if (LODWORD(transform.c) == -1)
                                {
                                  LODWORD(d_low) = LODWORD(transform.b);
                                  LODWORD(c_low) = LODWORD(transform.a);
                                  a5 = v275;
                                  goto LABEL_419;
                                }

                                a5 = v275;
                                v159 = r1;
                                v77 = v327;
                                if (LODWORD(transform.d) == -1 || LODWORD(transform.c) > LODWORD(transform.d) || (v271 = HIDWORD(*&transform.c), HIDWORD(*&transform.c) == 0xFFFFFFFFLL) || (v272 = HIDWORD(*&transform.d), HIDWORD(*&transform.d) == 0xFFFFFFFFLL) || v271 > v272)
                                {
                                  LODWORD(d_low) = LODWORD(transform.b);
                                  LODWORD(c_low) = LODWORD(transform.a);
                                }

                                else
                                {
                                  if (LODWORD(transform.a) >= LODWORD(transform.c))
                                  {
                                    c_low = LODWORD(transform.c);
                                  }

                                  else
                                  {
                                    c_low = LODWORD(transform.a);
                                  }

                                  if (v236 >= v271)
                                  {
                                    v236 = HIDWORD(*&transform.c);
                                  }

                                  if (LODWORD(transform.b) <= LODWORD(transform.d))
                                  {
                                    d_low = LODWORD(transform.d);
                                  }

                                  else
                                  {
                                    d_low = LODWORD(transform.b);
                                  }

                                  if (v237 <= v272)
                                  {
                                    v237 = HIDWORD(*&transform.d);
                                  }

                                  v232 = d_low | (v237 << 32);
                                  v233 = c_low | (v236 << 32);
                                }

LABEL_420:
                                if (c_low == -1 || d_low == -1 || c_low > d_low || (HIDWORD(v233) <= HIDWORD(v232) ? (v243 = HIDWORD(v233) == 0xFFFFFFFF) : (v243 = 1), !v243 ? (v244 = HIDWORD(v232) == 0xFFFFFFFF) : (v244 = 1), v244))
                                {
                                  v232 = -1;
                                  v233 = -1;
                                }

                                v245 = 0;
                                if (v233 != -1 && v232 != -1 && v233 <= v232)
                                {
                                  v245 = 0;
                                  if (HIDWORD(v233) != 0xFFFFFFFF && HIDWORD(v232) != 0xFFFFFFFF && HIDWORD(v233) <= HIDWORD(v232))
                                  {
                                    v245 = ((v232 - (v233 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v232 - v233 + 1)) + 0x100000000;
                                  }
                                }

                                v246 = v233 << 16;
                                if (v233 == -1)
                                {
                                  v246 = 16711680;
                                }

                                v247 = 0x100000000;
                                v248 = 0x1000000000000;
                                if (WORD2(v233) != 0xFFFFLL && v246 != 16711680)
                                {
                                  v249 = v245;
                                  if (v245)
                                  {
                                    v250 = (v245 >> 16) & 0xFFFF0000;
                                    if (v250)
                                    {
                                      v251 = v77;
                                      v252 = (v250 | v249) << 32;
                                      v248 = v252 & 0xFFFF000000000000;
                                      LODWORD(v304) = v246 & 0xFFFF0000 | WORD2(v233);
                                      TSTMasterLayoutSetStrokesValidForRange([v47 masterLayout], v246 & 0xFFFF000000FF0000 | WORD2(v233) | v252 & 0xFFFF000000FFFFFFLL | (v252 + 0x100000000) & 0x1FF00000000);
                                      v247 = v252 & 0xFF00000000;
                                      v77 = v251;
                                    }
                                  }
                                }

                                v253 = TSTLayoutSpaceGetContentFrameForGridRange(a2, v233, v232);
                                width = v254;
                                recta = v255;
                                if (v332 == 1)
                                {
                                  goto LABEL_452;
                                }

                                if (v332 != 2)
                                {
                                  v257 = [txa layoutDirectionIsLeftToRight];
                                  if (v332 != 4 || (v257 & 1) != 0)
                                  {
                                    goto LABEL_455;
                                  }

LABEL_452:
                                  if (width <= v114)
                                  {
                                    goto LABEL_455;
                                  }

                                  v256 = v114 - width;
LABEL_454:
                                  v258 = 0;
                                  v366.origin.x = v256;
                                  goto LABEL_456;
                                }

                                if (v254 > v114)
                                {
                                  v256 = v253 - ContentFrameForGridRange;
                                  goto LABEL_454;
                                }

LABEL_455:
                                v366.origin = *MEMORY[0x277CBF348];
LABEL_456:
                                v95 = v247 | v248 | v304;
                                y = v259;
                                v10 = v329;
                                break;
                              }

                              goto LABEL_384;
                            }

                            while (1)
                            {
                              if (v224 >= WORD2(v342->a) + v223)
                              {
                                goto LABEL_359;
                              }

LABEL_384:
                              if ((rectb & (v225 == v224)) != 0)
                              {
                                break;
                              }

                              v226 = [v336 masterLayout];
                              v227 = +[TSDStroke emptyStroke];
                              if (v213)
                              {
                                v228 = v224;
                              }

                              else
                              {
                                v228 = (v224 + 1);
                              }

                              TSTMasterLayoutSetStrokeForGridColumn(v226, v227, v228, 0, v339, v339 + 1);
                              TSTMasterLayoutSetStrokeForGridColumn([v336 masterLayout], +[TSDStroke emptyStroke](TSDStroke, "emptyStroke"), v228, 1, v339, v339 + 1);
                              p_b = &p_transform->b;
                              if (LODWORD(p_transform->b) >= v224)
                              {
                                p_b = p_transform;
                              }

                              *p_b = v224;
                              TSTLayoutSpaceGetContentFrameForGridRange(a2, *&p_transform->a, *&p_transform->b);
                              if (v191 == 2)
                              {
                                v231 = v175 * 0.5 > v230 - v207;
                              }

                              else
                              {
                                v231 = v175 > v230;
                              }

                              v5 = v338;
                              if (!v231)
                              {
                                goto LABEL_359;
                              }

                              if (v213)
                              {
                                ++v224;
                              }

                              else
                              {
                                --v224;
                              }

                              if ((v213 & 1) == 0)
                              {
                                goto LABEL_381;
                              }
                            }

                            rectb = 1;
                          }
                        }

LABEL_359:
                        v212 = 0;
                        v208 = 1;
                        p_transform = &transform.c;
                        v342 = &v362.b;
                        if ((v213 & 1) == 0)
                        {
                          goto LABEL_401;
                        }
                      }
                    }

LABEL_457:
                    r1a = v366.origin.x;
                    v260 = 0;
                    if (v95 != 0xFFFF && (v95 & 0xFF0000) != 0xFF0000)
                    {
                      v260 = 0;
                      if (HIWORD(v95))
                      {
                        if ((v95 & 0xFFFF00000000) != 0)
                        {
                          v260 = 0;
                          if (v159)
                          {
                            if ((v95 & 0xFFFFFFFF00000000) == 0x1000100000000)
                            {
                              v260 = *(&v159->mPrivate + 1) << 8 == 2304 && [(TSWPStorage *)[(TSTRichTextPayload *)v159->mPrivate.mRichTextPayload storage] listStyleCount]!= 0;
                            }
                          }
                        }
                      }
                    }

                    if ([objc_msgSend(v47 "info")])
                    {
                      [v344 parent];
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v343 = v153;
                        memset(&transform, 0, sizeof(transform));
                        v279 = v152;
                        v280 = v155;
                        v316 = v176;
                        v261 = v114;
                        if (v344)
                        {
                          objc_msgSend_transformInParent(v344);
                        }

                        else
                        {
                          memset(&v362, 0, sizeof(v362));
                        }

                        CGAffineTransformInvert(&transform, &v362);
                        [objc_msgSend(v344 "parent")];
                        v362 = transform;
                        v368 = CGRectApplyAffineTransform(v367, &v362);
                        x = v368.origin.x;
                        v263 = v368.origin.y;
                        v264 = v368.size.width;
                        height = v368.size.height;
                        v356 = v357;
                        CGAffineTransformInvert(&v362, &v356);
                        v369.origin.x = x;
                        v369.origin.y = v263;
                        v369.size.width = v264;
                        v369.size.height = height;
                        v370 = CGRectApplyAffineTransform(v369, &v362);
                        v374.origin.y = v370.origin.y;
                        v374.size.height = v370.size.height;
                        v370.origin.x = r1a;
                        v370.origin.y = y;
                        v370.size.width = width;
                        v370.size.height = recta;
                        v374.origin.x = r1a;
                        v374.size.width = width;
                        v371 = CGRectIntersection(v370, v374);
                        r1a = v371.origin.x;
                        y = v371.origin.y;
                        width = v371.size.width;
                        recta = v371.size.height;
                        v114 = v261;
                        v153 = v343;
                        v152 = v279;
                        v155 = v280;
                        v176 = v316;
                      }
                    }

                    transform = v357;
                    CGContextConcatCTM(a5, &transform);
                    v372.origin.x = r1a;
                    v372.origin.y = y;
                    v372.size.width = width;
                    v372.size.height = recta;
                    CGContextClipToRect(a5, v372);
                    if (!v360 && ((TSTCellFormatUsesAccountingStyle(v159, v266) | v260) & 1) == 0)
                    {
                      if (v359 == 2)
                      {
                        v267 = v114 * 0.5 - v175 * 0.5 - v301;
LABEL_478:
                        CGContextTranslateCTM(a5, v267, 0.0);
                      }

                      else if (v359 == 1)
                      {
                        v373.origin.x = v301;
                        v373.origin.y = v298;
                        v373.size.width = v175;
                        v373.size.height = v176;
                        v267 = v114 - CGRectGetMaxX(v373);
                        goto LABEL_478;
                      }
                    }

                    v268 = [TSTTextEngineDelegate alloc];
                    v269 = [(TSTTextEngineDelegate *)v268 initWithPadding:v358 verticalAlignment:v153, v152, v155, v321];
                    v270 = [objc_msgSend(v47 "masterLayout")];
                    [v270 setDelegate:v269];
                    [v322 viewScale];
                    [v270 drawColumn:v320 inContext:a5 isFlipped:v300 viewScale:?];
                    [v270 setDelegate:0];

                    CGContextRestoreGState(a5);
LABEL_480:
                    objc_autoreleasePoolPop(context);
                    if (!v77)
                    {
                      v95 = v345;
                    }

LABEL_176:

                    v345 = v95;
LABEL_177:
                    if (!TSTLayoutCellIteratorGetNextCell(v352, v354))
                    {
                      goto LABEL_504;
                    }

                    continue;
                  }

                  v47 = v336;
                  v10 = v329;
                }

                else
                {
                  v128 = [v47 canvas];
                  if (!v77)
                  {
                    v5 = v338;
                    goto LABEL_480;
                  }

                  v322 = v128;
                  v327 = v77;
                }

                if (BYTE2(v67) == 255)
                {
                  v131 = 0xFFFFFFFFLL;
                }

                else
                {
                  v131 = BYTE2(v67);
                }

                if (v67 == 0xFFFF)
                {
                  v132 = 0xFFFFFFFFLL;
                }

                else
                {
                  v132 = v67;
                }

                v133 = v131 | (v132 << 32);
                v134 = TSTLayoutSpaceGetAlignedContentFrameForGridRange(a2, v133, v133);
                v136 = v135;
                width = v137;
                recta = v139;
                ContentFrameForGridRange = TSTLayoutSpaceGetContentFrameForGridRange(a2, v133, v133);
                v114 = v140;
                v302 = *&v136;
                v303 = v134;
                ty = v136;
                tx = v134;
                goto LABEL_262;
              }
            }

            break;
          }

          objc_autoreleasePoolPop(context);
          goto LABEL_176;
        }

        v10 = v329;
LABEL_504:

        result = TSTMasterLayoutNextVisibleRow(v10, (v328 + 1));
        v20 = v308;
      }

      while (result <= v311);
    }
  }

  return result;
}

unint64_t TSTCellRangeUnionCellID(unint64_t a1, unint64_t a2)
{
  LOWORD(v2) = 1;
  v3 = a2 >> 16;
  v4 = a2 >> 24;
  LOWORD(v5) = 1;
  if (a1 == 0xFFFF || (a1 & 0xFF0000) == 0xFF0000 || !HIWORD(a1) || (a1 & 0xFFFF00000000) == 0)
  {
    LOWORD(a1) = a2;
    return (v4 << 24) | ((v2 | (v5 << 16)) << 32) | (v3 << 16) | a1;
  }

  if (a2 == 0xFFFF || (a2 & 0xFF0000) == 0xFF0000)
  {
    v3 = a1 >> 16;
    v4 = a1 >> 24;
    v2 = HIDWORD(a1);
LABEL_24:
    v5 = HIWORD(a1);
    return (v4 << 24) | ((v2 | (v5 << 16)) << 32) | (v3 << 16) | a1;
  }

  if (a1 <= a2 && (a1 + HIWORD(a1) - 1) >= a2 && BYTE2(a1) <= BYTE2(a2))
  {
    v2 = HIDWORD(a1);
    if ((BYTE4(a1) + BYTE2(a1) - 1) >= BYTE2(a2))
    {
      v3 = a1 >> 16;
      v4 = a1 >> 24;
      goto LABEL_24;
    }
  }

  LOBYTE(v4) = 0;
  v6 = a1 >> 16;
  if (BYTE2(a2) <= BYTE2(a1))
  {
    LOBYTE(v6) = BYTE2(a2);
  }

  if (a2 <= a1)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  v8 = HIDWORD(a1) + WORD1(a1);
  v9 = a1 + HIWORD(a1);
  LOWORD(a1) = v7;
  if (BYTE2(a2) < (v8 - 1))
  {
    LOBYTE(v3) = v8 - 1;
  }

  v10 = v9 - 1;
  if (a2 >= v10)
  {
    v10 = a2;
  }

  LOWORD(v5) = v10 - v7 + 1;
  LOWORD(v2) = v3 - v6 + 1;
  LOBYTE(v3) = v6;
  return (v4 << 24) | ((v2 | (v5 << 16)) << 32) | (v3 << 16) | a1;
}

{
  v2 = a2 >> 16;
  v3 = a2 >> 24;
  v4 = 0x10000;
  v5 = 1;
  if (a1 == 0xFFFF || (a1 & 0xFF0000) == 0xFF0000 || !HIWORD(a1) || (a1 & 0xFFFF00000000) == 0)
  {
    LOWORD(a1) = a2;
  }

  else if (a2 == 0xFFFF || (a2 & 0xFF0000) == 0xFF0000)
  {
    v2 = a1 >> 16;
    v3 = a1 >> 24;
  }

  else if (a1 <= a2 && (a1 + HIWORD(a1) - 1) >= a2 && BYTE2(a1) <= BYTE2(a2) && (BYTE4(a1) + BYTE2(a1) - 1) >= BYTE2(a2))
  {
    v2 = a1 >> 16;
    v3 = a1 >> 24;
    v4 = 0x10000;
    v5 = 1;
  }

  else
  {
    LOBYTE(v3) = 0;
    v6 = a1 >> 16;
    if (BYTE2(a2) <= BYTE2(a1))
    {
      LOBYTE(v6) = BYTE2(a2);
    }

    if (a2 <= a1)
    {
      v7 = a2;
    }

    else
    {
      v7 = a1;
    }

    v8 = HIDWORD(a1) + WORD1(a1);
    v9 = a1 + HIWORD(a1);
    LOWORD(a1) = v7;
    v10 = v8 - 1;
    if (BYTE2(a2) < v10)
    {
      LOBYTE(v2) = v10;
    }

    v11 = v9 - 1;
    if (a2 >= (v9 - 1))
    {
      v11 = a2;
    }

    v4 = ((v11 - v7) << 16) + 0x10000;
    v5 = (v2 - v6 + 1);
    LOBYTE(v2) = v6;
  }

  return (v3 << 24) | ((v4 | v5) << 32) | (v2 << 16) | a1;
}

void sub_26C9B36D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<TSTMergeRangeElem,TSTMergeRangeElemCompare,std::allocator<TSTMergeRangeElem>>::__emplace_unique_key_args<TSTMergeRangeElem,TSTMergeRangeElem const&>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *(a2 + 56);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 88);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t TSTTableRBTreeLeftRotate(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 + 8);
  *(a2 + 16) = v3;
  if (v3 != &TSTTableRBTreeNil)
  {
    *(v3 + 24) = a2;
  }

  v4 = *(a2 + 24);
  *(v2 + 24) = v4;
  v5 = v2;
  if (v4 != &TSTTableRBTreeNil)
  {
    v6 = 16;
    if (*(v4 + 8) == a2)
    {
      v6 = 8;
    }

    *(v4 + v6) = v2;
    v5 = a1;
  }

  *(v2 + 8) = a2;
  *(a2 + 24) = v2;
  return v5;
}

uint64_t TSTTableRBTreeRightRotate(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 + 16);
  *(a2 + 8) = v3;
  if (v3 != &TSTTableRBTreeNil)
  {
    *(v3 + 24) = a2;
  }

  v4 = *(a2 + 24);
  *(v2 + 24) = v4;
  v5 = v2;
  if (v4 != &TSTTableRBTreeNil)
  {
    v6 = 16;
    if (*(v4 + 8) == a2)
    {
      v6 = 8;
    }

    *(v4 + v6) = v2;
    v5 = a1;
  }

  *(v2 + 16) = a2;
  *(a2 + 24) = v2;
  return v5;
}

uint64_t TSTTableRBTreeInsertFixup(uint64_t result, TSTTableRBTreeNode_s *a2)
{
  var4 = a2->var4;
  p_var5 = &var4->var5;
  var5 = var4->var5;
  if (var5 == 1)
  {
    do
    {
      v5 = var4->var4;
      var2 = v5->var2;
      if (var4 == var2)
      {
        var3 = v5->var3;
        if (var3->var5 != 1)
        {
          v9 = var4->var3;
          if (a2 == v9)
          {
            v17 = v9->var2;
            var4->var3 = v17;
            if (v17 != &TSTTableRBTreeNil)
            {
              v17->var4 = var4;
              v5 = var4->var4;
            }

            v9->var4 = v5;
            v18 = v9;
            if (v5 != &TSTTableRBTreeNil)
            {
              if (v5->var2 == var4)
              {
                v19 = 8;
              }

              else
              {
                v19 = 16;
              }

              *(&v5->var0 + v19) = v9;
              v18 = result;
            }

            v9->var2 = var4;
            var4->var4 = v9;
            v5 = v9->var4;
            var2 = v5->var2;
            result = v18;
          }

          else
          {
            v9 = var4;
            var4 = a2;
          }

          v9->var5 = 0;
          v5->var5 = var5;
          v20 = var2->var3;
          v5->var2 = v20;
          if (v20 != &TSTTableRBTreeNil)
          {
            v20->var4 = v5;
          }

          v21 = v5->var4;
          var2->var4 = v21;
          v15 = var2;
          if (v21 != &TSTTableRBTreeNil)
          {
            if (v21->var2 == v5)
            {
              v22 = 8;
            }

            else
            {
              v22 = 16;
            }

            *(&v21->var0 + v22) = var2;
            v15 = result;
          }

          var2->var3 = v5;
          goto LABEL_44;
        }

        *p_var5 = 0;
        var3->var5 = 0;
      }

      else
      {
        if (var2->var5 != 1)
        {
          v8 = var4->var2;
          if (a2 == v8)
          {
            v10 = v8->var3;
            var4->var2 = v10;
            if (v10 != &TSTTableRBTreeNil)
            {
              v10->var4 = var4;
              v5 = var4->var4;
            }

            v8->var4 = v5;
            v11 = v8;
            if (v5 != &TSTTableRBTreeNil)
            {
              if (v5->var2 == var4)
              {
                v12 = 8;
              }

              else
              {
                v12 = 16;
              }

              *(&v5->var0 + v12) = v8;
              v11 = result;
            }

            v8->var3 = var4;
            var4->var4 = v8;
            v5 = v8->var4;
            result = v11;
          }

          else
          {
            v8 = var4;
            var4 = a2;
          }

          v8->var5 = 0;
          v5->var5 = var5;
          var2 = v5->var3;
          v13 = var2->var2;
          v5->var3 = v13;
          if (v13 != &TSTTableRBTreeNil)
          {
            v13->var4 = v5;
          }

          v14 = v5->var4;
          var2->var4 = v14;
          v15 = var2;
          if (v14 != &TSTTableRBTreeNil)
          {
            if (v14->var2 == v5)
            {
              v16 = 8;
            }

            else
            {
              v16 = 16;
            }

            *(&v14->var0 + v16) = var2;
            v15 = result;
          }

          var2->var2 = v5;
LABEL_44:
          v5->var4 = var2;
          result = v15;
          goto LABEL_45;
        }

        *p_var5 = 0;
        var2->var5 = 0;
      }

      var4 = v5;
      v5->var5 = var5;
LABEL_45:
      a2 = var4;
      var4 = var4->var4;
      p_var5 = &var4->var5;
    }

    while (var4->var5 == 1);
  }

  *(result + 32) = 0;
  return result;
}

TSTTableRBTreeNode_s *TSTTableRBTreeInsert(TSTTableRBTreeNode_s *a1, TSTTableRBTreeNode_s *a2)
{
  if (a1)
  {
    if (a1 == &TSTTableRBTreeNil)
    {
      a2->var4 = &TSTTableRBTreeNil;
      a1 = a2;
    }

    else
    {
      v2 = a1;
      do
      {
        v3 = v2;
        if (a2->var0 >= v2->var0)
        {
          v4 = 16;
        }

        else
        {
          v4 = 8;
        }

        v2 = *(&v3->var0 + v4);
      }

      while (v2 != &TSTTableRBTreeNil);
      a2->var4 = v3;
      if (a2->var0 >= v3->var0)
      {
        v3->var3 = a2;
      }

      else
      {
        v3->var2 = a2;
      }
    }

    a2->var2 = &TSTTableRBTreeNil;
    a2->var3 = &TSTTableRBTreeNil;
    a2->var5 = 1;
    return TSTTableRBTreeInsertFixup(a1, a2);
  }

  else
  {
    a2->var5 = 0;
    return a2;
  }
}

_WORD *TSTTableRBTreeNewNode(__int16 a1, __int16 a2)
{
  result = malloc_type_malloc(0x28uLL, 0x1020040D3174BDAuLL);
  *result = a1;
  result[1] = a2;
  *(result + 1) = &TSTTableRBTreeNil;
  *(result + 2) = &TSTTableRBTreeNil;
  *(result + 3) = &TSTTableRBTreeNil;
  *(result + 32) = 1;
  return result;
}

void TSTTableRBTreeFree(void **a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2 != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeFree(v2);
    }

    v3 = a1[2];
    if (v3 != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeFree(v3);
    }

    free(a1);
  }
}

TSTTableRBTreeNode_s *TSTTableRBTreeMaximum(TSTTableRBTreeNode_s *a1)
{
  do
  {
    v1 = a1;
    a1 = a1->var3;
  }

  while (a1 != &TSTTableRBTreeNil);
  return v1;
}

TSTTableRBTreeNode_s *TSTTableRBTreeMinimum(TSTTableRBTreeNode_s *a1)
{
  do
  {
    v1 = a1;
    a1 = a1->var2;
  }

  while (a1 != &TSTTableRBTreeNil);
  return v1;
}

TSTTableRBTreeNode_s **TSTTableRBTreePredecessor(TSTTableRBTreeNode_s *a1)
{
  var2 = a1->var2;
  if (var2 == &TSTTableRBTreeNil)
  {
    v3 = a1;
    while (1)
    {
      result = v3->var4;
      if (result == &TSTTableRBTreeNil)
      {
        break;
      }

      v4 = v3 == result[1];
      v3 = v3->var4;
      if (!v4)
      {
        return result;
      }
    }

    return &TSTTableRBTreeNil;
  }

  else
  {
    do
    {
      result = var2;
      var2 = var2->var3;
    }

    while (var2 != &TSTTableRBTreeNil);
  }

  return result;
}

TSTTableRBTreeNode_s **TSTTableRBTreeSuccessor(TSTTableRBTreeNode_s *a1)
{
  var3 = a1->var3;
  if (var3 == &TSTTableRBTreeNil)
  {
    v3 = a1;
    while (1)
    {
      result = v3->var4;
      if (result == &TSTTableRBTreeNil)
      {
        break;
      }

      v4 = v3 == result[2];
      v3 = v3->var4;
      if (!v4)
      {
        return result;
      }
    }

    return &TSTTableRBTreeNil;
  }

  else
  {
    do
    {
      result = var3;
      var3 = var3->var2;
    }

    while (var3 != &TSTTableRBTreeNil);
  }

  return result;
}

unsigned __int16 *TSTTableRBFirstNodeGreaterThanOrEqualTo(unsigned __int16 *result, unsigned int a2)
{
  if (!result)
  {
    return &TSTTableRBTreeNil;
  }

  if (result == &TSTTableRBTreeNil)
  {
    return 0;
  }

  do
  {
    v2 = *result;
    if (v2 == a2)
    {
      break;
    }

    if (v2 >= a2)
    {
      v3 = *(result + 1);
      if (v3 == &TSTTableRBTreeNil)
      {
        return result;
      }
    }

    else
    {
      v3 = *(result + 2);
      if (v3 == &TSTTableRBTreeNil)
      {
        v4 = result;
        while (1)
        {
          result = *(v4 + 3);
          if (result == &TSTTableRBTreeNil)
          {
            break;
          }

          v5 = v4 == *(result + 2);
          v4 = *(v4 + 3);
          if (!v5)
          {
            return result;
          }
        }

        return &TSTTableRBTreeNil;
      }
    }

    result = v3;
  }

  while (v3);
  return result;
}

unsigned __int16 *TSTTableRBFirstNodeLessThanOrEqualTo(unsigned __int16 *a1, unsigned int a2)
{
  result = &TSTTableRBTreeNil;
  if (a1 && a1 != &TSTTableRBTreeNil)
  {
    result = a1;
    while (1)
    {
      v4 = *result;
      if (v4 == a2)
      {
        break;
      }

      if (v4 >= a2)
      {
        v5 = *(result + 1);
        if (v5 == &TSTTableRBTreeNil)
        {
          v6 = result;
          while (1)
          {
            result = *(v6 + 3);
            if (result == &TSTTableRBTreeNil)
            {
              break;
            }

            v7 = v6 == *(result + 1);
            v6 = *(v6 + 3);
            if (!v7)
            {
              return result;
            }
          }

          return &TSTTableRBTreeNil;
        }
      }

      else
      {
        v5 = *(result + 2);
        if (v5 == &TSTTableRBTreeNil)
        {
          return result;
        }
      }

      result = v5;
      if (!v5)
      {
        return &TSTTableRBTreeNil;
      }
    }
  }

  return result;
}

uint64_t TSTTableRBTreeStripIDForCellIndex(unsigned __int16 *a1, unsigned int a2, unsigned __int16 *a3)
{
  v4 = TSTTableRBFirstNodeLessThanOrEqualTo(a1, a2);
  if (v4 == &TSTTableRBTreeNil)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = *v4;
  }

  return v4[1];
}

TSTTableRBTreeNode_s *TSTTableRBTreeDeleteFixup(TSTTableRBTreeNode_s *result, TSTTableRBTreeNode_s *a2)
{
  if (a2 != result)
  {
    while (!a2->var5)
    {
      var4 = a2->var4;
      var2 = var4->var2;
      if (a2 == var2)
      {
        var2 = var4->var3;
        if (var2->var5 == 1)
        {
          var2->var5 = 0;
          var4->var5 = 1;
          v10 = var2->var2;
          var4->var3 = v10;
          if (v10 != &TSTTableRBTreeNil)
          {
            v10->var4 = var4;
          }

          v11 = var4->var4;
          var2->var4 = v11;
          v12 = var2;
          if (v11 != &TSTTableRBTreeNil)
          {
            if (v11->var2 == var4)
            {
              v13 = 8;
            }

            else
            {
              v13 = 16;
            }

            *(&v11->var0 + v13) = var2;
            v12 = result;
          }

          var2->var2 = var4;
          var4->var4 = var2;
          var4 = a2->var4;
          var2 = var4->var3;
          result = v12;
        }

        v14 = var2->var2;
        var3 = var2->var3;
        if (v14->var5)
        {
          if (!var3->var5)
          {
            v14->var5 = 0;
            var2->var5 = 1;
            v23 = v14->var3;
            var2->var2 = v23;
            if (v23 != &TSTTableRBTreeNil)
            {
              v23->var4 = var2;
            }

            v24 = var2->var4;
            v14->var4 = v24;
            v25 = v14;
            if (v24 != &TSTTableRBTreeNil)
            {
              v26 = 16;
              if (v24->var2 == var2)
              {
                v26 = 8;
              }

              *(&v24->var0 + v26) = v14;
              v25 = result;
            }

            v14->var3 = var2;
            var2->var4 = v14;
            var4 = a2->var4;
            var2 = var4->var3;
            v14 = var2->var2;
            var3 = var2->var3;
            result = v25;
          }

LABEL_53:
          var2->var5 = var4->var5;
          var4->var5 = 0;
          var3->var5 = 0;
          var4->var3 = v14;
          if (v14 != &TSTTableRBTreeNil)
          {
            v14->var4 = var4;
          }

          v27 = var4->var4;
          var2->var4 = v27;
          v21 = var2;
          if (v27 != &TSTTableRBTreeNil)
          {
            v28 = 16;
            if (v27->var2 == var4)
            {
              v28 = 8;
            }

            *(&v27->var0 + v28) = var2;
            v21 = result;
          }

          var2->var2 = var4;
LABEL_60:
          var4->var4 = var2;
          var4 = v21;
          result = v21;
          goto LABEL_61;
        }

        if (var3->var5)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (var2->var5 == 1)
        {
          var2->var5 = 0;
          var4->var5 = 1;
          v4 = var2->var3;
          var4->var2 = v4;
          if (v4 != &TSTTableRBTreeNil)
          {
            v4->var4 = var4;
          }

          v5 = var4->var4;
          var2->var4 = v5;
          v6 = var2;
          if (v5 != &TSTTableRBTreeNil)
          {
            if (v5->var2 == var4)
            {
              v7 = 8;
            }

            else
            {
              v7 = 16;
            }

            *(&v5->var0 + v7) = var2;
            v6 = result;
          }

          var2->var3 = var4;
          var4->var4 = var2;
          var4 = a2->var4;
          var2 = var4->var2;
          result = v6;
        }

        v9 = var2->var2;
        v8 = var2->var3;
        if (v8->var5)
        {
          if (!v9->var5)
          {
            v8->var5 = 0;
            var2->var5 = 1;
            v16 = v8->var2;
            var2->var3 = v16;
            if (v16 != &TSTTableRBTreeNil)
            {
              v16->var4 = var2;
            }

            v17 = var2->var4;
            v8->var4 = v17;
            v18 = v8;
            if (v17 != &TSTTableRBTreeNil)
            {
              v19 = 16;
              if (v17->var2 == var2)
              {
                v19 = 8;
              }

              *(&v17->var0 + v19) = v8;
              v18 = result;
            }

            v8->var2 = var2;
            var2->var4 = v8;
            var4 = a2->var4;
            var2 = var4->var2;
            v9 = var2->var2;
            v8 = var2->var3;
            result = v18;
          }

LABEL_38:
          var2->var5 = var4->var5;
          var4->var5 = 0;
          v9->var5 = 0;
          var4->var2 = v8;
          if (v8 != &TSTTableRBTreeNil)
          {
            v8->var4 = var4;
          }

          v20 = var4->var4;
          var2->var4 = v20;
          v21 = var2;
          if (v20 != &TSTTableRBTreeNil)
          {
            v22 = 16;
            if (v20->var2 == var4)
            {
              v22 = 8;
            }

            *(&v20->var0 + v22) = var2;
            v21 = result;
          }

          var2->var3 = var4;
          goto LABEL_60;
        }

        if (v9->var5)
        {
          goto LABEL_38;
        }
      }

      var2->var5 = 1;
      a2 = var4;
      if (var4 == result)
      {
        goto LABEL_61;
      }
    }
  }

  var4 = a2;
LABEL_61:
  var4->var5 = 0;
  return result;
}

TSTTableRBTreeNode_s *TSTTableRBTreeDelete(TSTTableRBTreeNode_s *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2;
  if (v2 == &TSTTableRBTreeNil)
  {
    goto LABEL_4;
  }

  v4 = a2[2];
  if (v4 != &TSTTableRBTreeNil)
  {
    do
    {
      v3 = v4;
      v4 = v4[1];
    }

    while (v4 != &TSTTableRBTreeNil);
LABEL_4:
    v2 = v3[2];
    goto LABEL_6;
  }

  v3 = a2;
LABEL_6:
  v5 = v3[3];
  *(v2 + 24) = v5;
  v6 = v2;
  if (v5 != &TSTTableRBTreeNil)
  {
    v7 = 16;
    if (v3 == *(v5 + 8))
    {
      v7 = 8;
    }

    *(v5 + v7) = v2;
    v6 = a1;
  }

  if (v3 != a2)
  {
    *a2 = *v3;
  }

  if (!*(v3 + 32))
  {
    v6 = TSTTableRBTreeDeleteFixup(v6, v2);
  }

  free(v3);
  return v6;
}

unsigned __int16 *TSTTableRBTreeShiftCellIndices(unsigned __int16 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  if (a3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = -a3;
  }

  while (1)
  {
    if (v8 >= 0xFFFF)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRBTreeShiftCellIndices(TSTTableRBTreeNode *, UInt16, int, BOOL)"}];
      result = [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRBTree.mm"), 443, @"shiftAmount out of range"}];
    }

    if (v7 == &TSTTableRBTreeNil)
    {
      break;
    }

    v11 = *v7;
    if (v11 == a2)
    {
      v12 = a4;
    }

    else
    {
      v12 = 0;
    }

    if (v11 <= a2 && v12 == 0)
    {
      v14 = 8;
    }

    else
    {
      *v7 = v11 + a3;
      result = TSTTableRBTreeShiftCellIndices(*(v7 + 2), a2, a3, a4);
      v14 = 4;
    }

    v7 = *&v7[v14];
  }

  return result;
}

unsigned __int16 *TSTTableRBTreeFind(unsigned __int16 *a1, unsigned int a2)
{
  result = &TSTTableRBTreeNil;
  if (a1 && a1 != &TSTTableRBTreeNil)
  {
    while (1)
    {
      v4 = *a1;
      if (v4 == a2)
      {
        break;
      }

      if (v4 <= a2)
      {
        v5 = 8;
      }

      else
      {
        v5 = 4;
      }

      a1 = *&a1[v5];
      if (a1 == &TSTTableRBTreeNil)
      {
        return result;
      }
    }

    return a1;
  }

  return result;
}

unsigned __int16 *TSTTableRBTreeShiftNodesAfter(unsigned __int16 *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  if (v6 >= 0xFFFF)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRBTreeShiftNodesAfter(TSTTableRBTreeNode *, UInt16, int)"}];
    result = [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRBTree.mm"), 486, @"shiftAmount out of range"}];
  }

  if (v5 != &TSTTableRBTreeNil)
  {
    v9 = *v5;
    if (v9 <= a2)
    {
      v10 = 8;
    }

    else
    {
      *v5 = v9 + a3;
      TSTTableRBTreeShiftCellIndices(*(v5 + 2), a2, a3, 0);
      v10 = 4;
    }

    v11 = *&v5[v10];

    return TSTTableRBTreeShiftCellIndices(v11, a2, a3, 0);
  }

  return result;
}

unsigned __int16 *TSTTableRBTreeShiftNodesAtOrAfter(unsigned __int16 *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  if (v6 >= 0xFFFF)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableRBTreeShiftNodesAtOrAfter(TSTTableRBTreeNode *, UInt16, int)"}];
    result = [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRBTree.mm"), 509, @"shiftAmount out of range"}];
  }

  if (v5 != &TSTTableRBTreeNil)
  {
    v9 = *v5;
    if (v9 >= a2)
    {
      *v5 = v9 + a3;
      TSTTableRBTreeShiftCellIndices(*(v5 + 2), a2, a3, 1);
      v10 = 4;
    }

    else
    {
      v10 = 8;
    }

    v11 = *&v5[v10];

    return TSTTableRBTreeShiftCellIndices(v11, a2, a3, 1);
  }

  return result;
}

TSTTableRBTreeNode_s *TSTTableRBTreeDeleteKey(TSTTableRBTreeNode_s *result, unsigned int a2)
{
  if (result && result != &TSTTableRBTreeNil)
  {
    v2 = result;
    while (1)
    {
      var0 = v2->var0;
      if (var0 == a2)
      {
        break;
      }

      if (var0 <= a2)
      {
        v4 = 16;
      }

      else
      {
        v4 = 8;
      }

      v2 = *(&v2->var0 + v4);
      if (v2 == &TSTTableRBTreeNil)
      {
        return result;
      }
    }

    if (v2 != &TSTTableRBTreeNil)
    {
      return TSTTableRBTreeDelete(result, v2);
    }
  }

  return result;
}

uint64_t p_validateNode(unsigned int a1, unsigned __int16 a2, void *a3)
{
  v4 = a1;
  if ([a3 containsIndex:a1])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_validateNode(UInt16, UInt16, void *)"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableRBTree.mm"), 540, @"Duplicate keys in rbtree!"}];
  }

  return [a3 addIndex:v4];
}

void TSTTableRBTreeValidate(unsigned __int16 *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB58]);
  TSTTableRBTreeApply(a1, p_validateNode, v2);
}

unsigned __int16 *TSTTableRBTreeApply(unsigned __int16 *result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  if (result)
  {
    v4 = a2;
    v5 = result;
    v6 = *(result + 1);
    if (v6 != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeApply(v6, a2, a3);
      v4 = a2;
    }

    v7 = *(v5 + 2);
    if (v7 != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeApply(v7, v4, a3);
      v4 = a2;
    }

    v8 = *v5;
    v9 = v5[1];

    return v4(v8, v9, a3);
  }

  return result;
}

void TSTTableRBTreeDump(unsigned __int16 *a1)
{
  if (a1)
  {
    v2 = *(a1 + 1);
    if (v2 != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeDump(v2);
    }

    v3 = *(a1 + 2);
    if (v3 != &TSTTableRBTreeNil)
    {
      TSTTableRBTreeDump(v3);
    }

    NSLog(@"node %p: key:%d, value: %d", a1, *a1, a1[1]);
  }
}

void *TSTTableSelectionSetCellRegion(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 16) = a2;
  *(a1 + 12) = [a2 upperLeftCellID];
  result = [a2 upperLeftCellID];
  *(a1 + 32) = result;
  return result;
}

id TSTTableSelectionSetCellRange(uint64_t a1, unint64_t a2)
{
  result = [*(a1 + 16) equalsCellRange:a2];
  if ((result & 1) == 0)
  {

    *(a1 + 16) = 0;
    result = [TSTCellRegion regionFromRange:a2];
    *(a1 + 16) = result;
    *(a1 + 12) = a2;
    *(a1 + 32) = (a2 + ((a2 >> 16) & 0xFF0000) + 16711680) & 0xFF0000 | (a2 + HIWORD(a2) - 1);
  }

  return result;
}

void TSTTableSelectionAddCellRange(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 16) = [TSTCellRegion region:"region:addingRange:" addingRange:?];
}

void TSTTableSelectionSubtractCellRange(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 16) = [TSTCellRegion region:"region:subtractingRange:" subtractingRange:?];
}

void sub_26C9B8184(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_26C9B8610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t p_TSTCellRangeSplitForAdding(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = 0;
  *a3 = 0xFFFFFFLL;
  v6 = *a1;
  v7 = *a2;
  v8 = 16711680;
  v9 = 0xFFFFLL;
  if (v6 == 0xFFFFLL)
  {
    goto LABEL_27;
  }

  v10 = 0;
  if ((v6 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_28;
  }

  v5 = 0;
  if (HIWORD(v6))
  {
    v11 = (v6 & 0xFFFF00000000) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v10 = 0;
    v8 = 16711680;
    v9 = 0xFFFFLL;
    goto LABEL_28;
  }

  v8 = 16711680;
  v9 = 0xFFFFLL;
  if (v7 == 0xFFFF)
  {
    goto LABEL_27;
  }

  v10 = 0;
  if ((v7 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_28;
  }

  v5 = 0;
  v8 = 16711680;
  v9 = 0xFFFFLL;
  if (!HIWORD(v7))
  {
LABEL_27:
    v10 = 0;
    goto LABEL_28;
  }

  v10 = 0;
  if ((v7 & 0xFFFF00000000) != 0)
  {
    v9 = 0;
    if (BYTE2(v6) <= BYTE2(v7))
    {
      v12 = BYTE2(v7);
    }

    else
    {
      v12 = BYTE2(v6);
    }

    if (v6 <= v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v6;
    }

    if ((BYTE4(v6) + BYTE2(v6) - 1) >= (BYTE4(v7) + BYTE2(v7) - 1))
    {
      v14 = (BYTE4(v7) + BYTE2(v7) - 1);
    }

    else
    {
      v14 = (BYTE4(v6) + BYTE2(v6) - 1);
    }

    v15 = (v6 + HIWORD(v6) - 1);
    if (v15 >= (v7 + HIWORD(v7) - 1))
    {
      v15 = (v7 + HIWORD(v7) - 1);
    }

    v8 = 0;
    v5 = 0;
    v10 = 0;
    if (v13 <= v15 && v12 <= v14)
    {
      v10 = ((v15 - v13) << 48) + 0x1000000000000;
      v5 = (((v14 - v12) << 32) + 0x100000000) & 0xFFFF00000000;
      v8 = v12 << 16;
      v9 = v13;
    }
  }

LABEL_28:
  v16 = 0;
  v17 = v8 | v9 | v5 | v10;
  if (v17 != 0xFFFF && (v17 & 0xFF0000) != 0xFF0000)
  {
    v16 = 0;
    if (HIWORD(v17))
    {
      if ((v17 & 0xFFFF00000000) != 0)
      {
        v18 = HIWORD(v7);
        v19 = v17 - v7;
        v20 = v17 > v7;
        v21 = 0xFFFFFFLL;
        if (v17 > v7)
        {
          v21 = v7;
        }

        if (v17 < v7)
        {
          v19 = 0;
        }

        v56 = v19;
        v22 = v17 + HIWORD(v17) - 1;
        if ((v7 + HIWORD(v7) - 1) <= v22)
        {
          v23 = 0;
          v55 = 0xFFFFLL;
          v54 = 16711680;
        }

        else
        {
          v23 = v7 + HIWORD(v7) - (v17 + HIWORD(v17));
          if (v17 <= v7)
          {
            v20 = 1;
          }

          else
          {
            v20 = 2;
          }

          v54 = v7 & 0xFFFFFFFF0000;
          v55 = (HIWORD(v10) + v17);
        }

        v24 = (BYTE4(v7) + BYTE2(v7) - 1);
        if (BYTE2(v7) >= BYTE2(v17))
        {
          v27 = 0;
          v53 = 0;
          v26 = 0xFFFFLL;
          v25 = 16711680;
        }

        else
        {
          ++v20;
          v53 = (BYTE2(v17) - BYTE2(v7)) << 32;
          v25 = v7 & 0xFFFF0000;
          v26 = v7;
          v27 = HIWORD(v7);
        }

        v28 = (BYTE4(v17) + BYTE2(v17) - 1);
        if (v28 >= v24)
        {
          v18 = 0;
          v29 = 0;
          v30 = 0;
          v32 = 0xFFFFLL;
          v31 = 16711680;
        }

        else
        {
          v29 = (BYTE4(v7) + BYTE2(v7) - 1) - (BYTE4(v17) + BYTE2(v17) - 1);
          ++v20;
          v30 = v7 & 0xFF000000;
          v31 = (v28 + 1) << 16;
          v32 = v7;
        }

        if (v20 == 3)
        {
          if (v17 > v7)
          {
            if ((v7 + HIWORD(v7) - 1) > v22)
            {
              if (BYTE2(v17) > BYTE2(v7))
              {
                *(a1 + 2) = BYTE4(v17) + BYTE2(v6);
              }

              *(a1 + 4) = WORD2(v6) - WORD2(v17);
              return 1;
            }

            *a1 = v6 + HIWORD(v17);
          }

          *(a1 + 6) = HIWORD(v6) - HIWORD(v17);
          return 1;
        }

        v33 = (BYTE4(v6) + BYTE2(v6) - 1);
        if (v20 != 2)
        {
          if (v20 == 1)
          {
            v34 = (v7 + HIWORD(v7) - 1) > v22 || v17 > v7;
            if (v34 && BYTE2(v6) == BYTE2(v7) && v33 == v24 || (v28 >= v24 ? (v35 = BYTE2(v17) > BYTE2(v7)) : (v35 = 1), v35 && v6 == v7 && (v6 + HIWORD(v6) - 1) == (v7 + HIWORD(v7) - 1)))
            {
              v36 = TSTCellRangeUnionCellRange(v6, v7);
              *a1 = 0xFFFFFFLL;
              *a2 = v36;
            }

            else
            {
              v43 = v21 & 0xFFFFFFFFFFFFLL | (v56 << 48);
              v44 = v31 | v30 | v32 | (v18 << 48) | (v29 << 32);
              if (BYTE2(v17) <= BYTE2(v7))
              {
                v45 = v44;
              }

              else
              {
                v45 = v25 | (v27 << 48) | v53 | v26;
              }

              if ((v7 + HIWORD(v7) - 1) > v22)
              {
                v45 = v54 | (v23 << 48) | v55;
              }

              if (v17 <= v7)
              {
                v43 = v45;
              }

              *a2 = v43;
            }
          }

          return 1;
        }

        if (v17 > v7 && (v7 + HIWORD(v7) - 1) > v22)
        {
          *a2 = v21 & 0xFFFFFFFFFFFFLL | (v56 << 48);
          v37 = v23;
LABEL_69:
          v38 = v55;
          v39 = v54 | (v37 << 48);
LABEL_70:
          v40 = v39 | v38;
LABEL_79:
          *a3 = v40;
          return 1;
        }

        v41 = v28 >= v24;
        if (BYTE2(v17) > BYTE2(v7) && !v41)
        {
          *a2 = v25 | (v27 << 48) | v53 | v26;
          v40 = v31 | v30 | v32 | (v18 << 48) | (v29 << 32);
          goto LABEL_79;
        }

        if (v17 <= v7 || v41)
        {
          if ((v7 + HIWORD(v7) - 1) <= v22 || v41)
          {
            if (BYTE2(v17) <= BYTE2(v7) || (v7 + HIWORD(v7) - 1) <= v22)
            {
              if (v17 <= v7 || BYTE2(v17) <= BYTE2(v7))
              {
                return 1;
              }

              if ((v6 + HIWORD(v6) - 1) == (v7 + HIWORD(v7) - 1))
              {
                *a2 = v6;
                *(a2 + 2) = BYTE2(v7);
                v42 = WORD2(v6) + BYTE2(v6) - BYTE2(v7);
LABEL_98:
                *(a2 + 4) = v42;
                v46 = v21 & 0xFFFFFFFFFFFFLL | (v56 << 48);
LABEL_110:
                *a3 = v46;
                *a1 = 0xFFFFFFLL;
                return 1;
              }

              if (v33 != v24)
              {
                *a2 = v21 & 0xFFFFFFFFFFFFLL | (v56 << 48);
                v39 = v17 & 0xFFFF000000000000 | v25 | v6;
                v38 = v53;
                goto LABEL_70;
              }

              *a2 = v6;
              *a2 = v7;
              v52 = v6 - v7 + HIWORD(v6);
              goto LABEL_119;
            }

            if (v6 != v7)
            {
              if (v33 != v24)
              {
                *a2 = v25 | ((v27 - v23) << 48) | v53 | v26;
                v37 = v23;
                goto LABEL_69;
              }

              *a2 = v6;
              v52 = v23 + HIWORD(v6);
LABEL_119:
              *(a2 + 6) = v52;
              v50 = v25 | (v27 << 48);
              v49 = v53 | v26;
              goto LABEL_106;
            }

            *a2 = v6;
            *(a2 + 2) = BYTE2(v7);
            *(a2 + 4) = WORD2(v6) + BYTE2(v6) - BYTE2(v7);
            v47 = v23;
LABEL_105:
            v49 = v55;
            v50 = v54 | (v47 << 48);
LABEL_106:
            v46 = v50 | v49;
            goto LABEL_110;
          }

          if (v6 == v7)
          {
            *a2 = v6;
            *(a2 + 4) = v29 + WORD2(v6);
            v47 = v23;
            goto LABEL_105;
          }

          if (BYTE2(v6) != BYTE2(v7))
          {
            *a2 = v31 | v30 | v32 | (v29 << 32) | ((v18 - v23) << 48);
            v37 = v23;
            goto LABEL_69;
          }

          *a2 = v6;
          v48 = v23 + HIWORD(v6);
        }

        else
        {
          if ((v6 + HIWORD(v6) - 1) == (v7 + HIWORD(v7) - 1))
          {
            *a2 = v6;
            v42 = v29 + WORD2(v6);
            goto LABEL_98;
          }

          if (BYTE2(v6) != BYTE2(v7))
          {
            *a2 = v21 & 0xFFFFFFFFFFFFLL | (v56 << 48);
            v40 = v17 & 0xFFFF000000000000 | (v29 << 32) | v6 | v30 | v31;
            goto LABEL_79;
          }

          *a2 = v6;
          *a2 = v7;
          v48 = v6 - v7 + HIWORD(v6);
        }

        *(a2 + 6) = v48;
        v46 = v31 | v30 | v32 | (v18 << 48) | (v29 << 32);
        goto LABEL_110;
      }
    }
  }

  return v16;
}

void sub_26C9B91B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_26C9B9AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C9B9BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C9B9DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C9B9F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C9BA570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_26C9BA7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_26C9BAF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_26C9BB2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_26C9BCBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 72), 8);
  _Unwind_Resume(a1);
}

uint64_t TSTTableDataListAddObject(TSTTableDataList *a1, TSTTableDataObject *a2)
{
  mIDs = a1->mIDs;
  if (mIDs && (v5 = [(TSTTableDataObjectKeyDict *)mIDs keyForObject:a2], v5))
  {
    mNextID = v5;
    TSTTableDataListAddReferenceForKey(&a1->super.super.isa, v5);
  }

  else
  {
    [(TSPObject *)a1 willModify];
    mNextID = a1->mNextID;
    a1->mNextID = mNextID + 1;
    [(TSTIntegerKeyDict *)a1->mData setObject:a2 forKey:mNextID];
    v7 = a1->mIDs;
    if (v7)
    {
      [(TSTTableDataObjectKeyDict *)v7 setKey:mNextID forObject:a2];
    }
  }

  return mNextID;
}

_DWORD *TSTTableDataListAddReferenceForKey(id *a1, uint64_t a2)
{
  [a1 willModify];
  result = [a1[7] objectForKey:a2];
  v5 = result;
  if (!result)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataListAddReferenceForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    result = [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1089, @"No object with key %u!", a2}];
  }

  ++v5[2];
  return result;
}

void *TSTTableDataListPrintCFDictionary(const __CFDictionary *a1)
{
  Count = CFDictionaryGetCount(a1);
  v3 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(a1, v3, 0);
  v4 = [MEMORY[0x277CCACA8] string];
  if (Count >= 1)
  {
    v5 = v3;
    do
    {
      v6 = *v5++;
      [v4 stringByAppendingString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ : %ld\n", objc_msgSend(v6, "description"), CFDictionaryGetValue(a1, v6))}];
      --Count;
    }

    while (Count);
  }

  free(v3);
  return v4;
}

uint64_t TSTTableDataListAddString(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 1)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddString(TSTTableDataList *, NSString *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 810, @"Can only store strings in this list!"}];
  }

  v6 = [[TSTTableDataString alloc] initObjectWithString:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddConditionalStyleSet(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 9)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddConditionalStyleSet(TSTTableDataList *, TSTConditionalStyleSet *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 818, @"Can only store conditional styles in this list!"}];
  }

  v6 = [[TSTTableDataConditionalStyleSet alloc] initObjectWithConditionalStyleSet:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddCellFormat(TSTTableDataList *a1, uint64_t a2)
{
  if (*a2 == 266)
  {
    *(a2 + 16) = 0;
  }

  if (a1->mListType != 2)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddCellFormat(TSTTableDataList *, TSUFormatStruct, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 830, @"Can only store formats in this list!"}];
  }

  v6 = [TSTTableDataFormat alloc];
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v12 = *(a2 + 32);
  v8 = [(TSTTableDataFormat *)v6 initObjectWithFormat:v11];
  v9 = TSTTableDataListAddObject(a1, v8);

  return v9;
}

uint64_t TSTTableDataListAddStyle(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 4)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddStyle(TSTTableDataList *, TSSStyle *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 850, @"Can only store styles in this list!"}];
  }

  v6 = [[TSTTableDataStyle alloc] initObjectWithStyle:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddFormulaError(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 5)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddFormulaError(TSTTableDataList *, TSWPStorage *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 859, @"Can only store formula errors in this list!"}];
  }

  v6 = [[TSTTableDataFormulaError alloc] initObjectWithFormulaError:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddRichTextPayload(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 8)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddRichTextPayload(TSTTableDataList *, TSTRichTextPayload *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 868, @"Can only store text objects in this list!"}];
  }

  v6 = [[TSTTableDataRichTextPayload alloc] initObjectWithRichTextPayload:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddCommentStorage(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 10)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddCommentStorage(TSTTableDataList *, TSDCommentStorage *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 877, @"Can only store cell comment objects in this list!"}];
  }

  v6 = [[TSTTableDataCommentStorage alloc] initObjectWithCommentStorage:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddCustomFormat(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 6)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddCustomFormat(TSTTableDataList *, TSUCustomFormat *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 886, @"Can only store custom formats in this list!"}];
  }

  v6 = [[TSTTableDataCustomFormat alloc] initObjectWithCustomFormat:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

uint64_t TSTTableDataListAddMultipleChoiceListFormat(TSTTableDataList *a1, uint64_t a2)
{
  if (a1->mListType != 7)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListAddMultipleChoiceListFormat(TSTTableDataList *, TSTPopUpMenuModel *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 895, @"Can only store pop up menu model in this list!"}];
  }

  v6 = [[TSTTableDataMultipleChoiceList alloc] initObjectWithPopUpMenuModel:a2];
  v7 = TSTTableDataListAddObject(a1, v6);

  return v7;
}

void *TSTTableDataListGetStringForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 1)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSTTableDataListGetStringForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 904, @"Can only store strings in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return result[2];
  }

  return result;
}

__n128 TSTTableDataListGetCellFormatForKey@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 48) != 2)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUFormatStruct TSTTableDataListGetCellFormatForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 919, @"Can only store formats in this list!"}];
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = -1;
  v8 = [*(a1 + 56) objectForKey:a2];
  if (v8)
  {
    result = *(v8 + 16);
    v10 = *(v8 + 32);
    *a3 = result;
    *(a3 + 16) = v10;
    *(a3 + 32) = *(v8 + 48);
  }

  return result;
}

void *TSTTableDataListGetStyleForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 4)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSSStyle *TSTTableDataListGetStyleForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 951, @"Can only store styles in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return result[2];
  }

  return result;
}

void *TSTTableDataListGetConditionalStyleSetForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 9)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTConditionalStyleSet *TSTTableDataListGetConditionalStyleSetForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 966, @"Can only store conditional styles in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return result[2];
  }

  return result;
}

void *TSTTableDataListGetFormulaErrorForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 5)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPStorage *TSTTableDataListGetFormulaErrorForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 983, @"Can only store formulaErrors in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return result[2];
  }

  return result;
}

void *TSTTableDataListGetRichTextPayloadForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 8)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTRichTextPayload *TSTTableDataListGetRichTextPayloadForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 998, @"Can only store text storages in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return result[2];
  }

  return result;
}

void *TSTTableDataListGetCommentStorageForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 10)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSDCommentStorage *TSTTableDataListGetCommentStorageForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1013, @"Can only store cell comment storage objects in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return result[2];
  }

  return result;
}

void *TSTTableDataListGetCustomFormatForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 6)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUCustomFormat *TSTTableDataListGetCustomFormatForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1028, @"Can only store custom formats in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return result[2];
  }

  return result;
}

void *TSTTableDataListGetMultipleChoiceListFormatForKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 7)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTPopUpMenuModel *TSTTableDataListGetMultipleChoiceListFormatForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1044, @"Can only store pop up menu model in this list!"}];
  }

  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return result[2];
  }

  return result;
}

unsigned int *TSTTableDataListRefCountForKey(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 56) objectForKey:a2];
  if (result)
  {
    return result[2];
  }

  return result;
}

uint64_t TSTTableDataListRemoveReferenceForKey(uint64_t a1, uint64_t a2)
{
  [a1 willModify];
  v4 = [*(a1 + 56) objectForKey:a2];
  if (v4)
  {
    v5 = v4[2] - 1;
    v4[2] = v5;
    if (!v5)
    {
      v10 = v4;
      [*(a1 + 56) removeObjectForKey:a2];
      v6 = *(a1 + 64);
      if (v6)
      {
        [v6 removeKeyForObject:v10];
      }
    }

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableDataListRemoveReferenceForKey(TSTTableDataList *, TSTTableDataListKey)"}];
    return [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1099, @"No object with key %u!", a2}];
  }
}

uint64_t TSTTableDataListTransform(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 willModify];
  v6 = a1[7];

  return [v6 transformWithFunction:a2 withState:a3];
}

uint64_t TSTTableDataListGetKeyForCustomFormat(TSTTableDataList *a1, TSUCustomFormat *a2)
{
  if (!a1->mIDs)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListGetKeyForCustomFormat(TSTTableDataList *, TSUCustomFormat *)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1136, @"Can't do a reverse lookup on a list that doesn't support it!"}];
  }

  if (a1->mListType != 6)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableDataListKey TSTTableDataListGetKeyForCustomFormat(TSTTableDataList *, TSUCustomFormat *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 1137, @"Can only have custom formats in this list!"}];
  }

  v8 = [[TSTTableDataCustomFormat alloc] initObjectWithCustomFormat:a2];
  mIDs = a1->mIDs;
  if (mIDs)
  {
    v10 = [(TSTTableDataObjectKeyDict *)mIDs keyForObject:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void *TSTTableDumpTile(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  NSLog(@"%@", [a1 description]);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = a1[7];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        TSTTableDumpTileRowInfo(*(*(&v7 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void *TSTTableTileListRows(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 56);
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        NSLog(@"%@", *(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void *TSTTableTileValidate(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 56);
  result = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (result)
  {
    v2 = result;
    v3 = 0;
    LOWORD(v4) = 0;
    v5 = 0;
    v6 = 0;
    v7 = *v24;
    do
    {
      v21 = v3;
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        if (*(v9 + 536) <= v4)
        {
          v4 = v4;
        }

        else
        {
          v4 = *(v9 + 536);
        }

        if ((*(v9 + 541) & 1) == 0)
        {
          TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v23 + 1) + 8 * v8));
        }

        v10 = *(v9 + 540);
        v11 = v5;
        if (v10 > v5)
        {
          v11 = *(v9 + 540);
        }

        if (v10 != 255)
        {
          v5 = v11;
        }

        TSTTableTileRowInfoValidate();
        v6 += *(v9 + 538);
        v8 = v8 + 1;
      }

      while (v2 != v8);
      v3 = v21 + v2;
      result = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      v2 = result;
    }

    while (result);
  }

  else
  {
    LOWORD(v3) = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  if (v4 != *(a1 + 50))
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSTTableTileValidate(TSTTableTile *)"];
    result = [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 903, @"max row in tile %@ does not match maximum row index in row infos stored in tile: %hu != %hu", a1, *(a1 + 50), v4}];
  }

  if (*(a1 + 48) != v5)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSTTableTileValidate(TSTTableTile *)"];
    result = [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 907, @"max row in tile %@ does not match maximum row index in row infos stored in tile: %hu != %hu", a1, *(a1 + 48), v5}];
  }

  if (*(a1 + 64) != v3)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSTTableTileValidate(TSTTableTile *)"];
    result = [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 911, @"number of rows in tile %@ does not match number of row infos stored in tile: %hu != %hu", a1, *(a1 + 64), v3}];
  }

  if (*(a1 + 52) != v6)
  {
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSTTableTileValidate(TSTTableTile *)"];
    return [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 915, @"number of cells in tile %@ not consistent with row cell count: %hu != %hu", a1, *(a1 + 52), v6}];
  }

  return result;
}

TSTTableTileRowInfo *TSTTableTileRowInfoForTileRowIndex(TSTTableTile *a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mRowInfos = a1->mRowInfos;
  v7 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(mRowInfos);
      }

      result = *(*(&v12 + 1) + 8 * v10);
      if (result->mTileRowIndex == a2)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (a3)
    {
      [(TSPObject *)a1 willModify];
      return p_AddRowInfoWithRowIndex(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

TSTTableTileRowInfo *p_AddRowInfoWithRowIndex(TSTTableTile *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [[TSTTableTileRowInfo alloc] initWithOwner:a1 tileRowIndex:a2];
  p_InsertRowInfoWithRowIndex(a1, v4, v2);

  return v4;
}

UInt8 *TSTTableTileGetCellStorageRef(TSTTableTile *a1, uint64_t a2, uint64_t a3)
{
  if (!a1->mNumCells)
  {
    return 0;
  }

  v3 = a2;
  v4 = TSTTableTileRowInfoForTileRowIndex(a1, a3, 0);
  if (!v4)
  {
    return 0;
  }

  return TSTTableTileRowInfoCellStorageRefAtTileColumnIndex(v4, v3);
}

void TSTTableTileSetCell(TSTTableTile *a1, unsigned int a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  [(TSPObject *)a1 willModify];
  v8 = TSTTableTileRowInfoForTileRowIndex(a1, a3, 0);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = p_AddRowInfoWithRowIndex(a1, a3);
    if (!v9)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileSetCell(TSTTableTile *, TSUColumnIndex, TSURowIndex, TSTCell *)"}];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 374, @"Couldn't find row info for row index %hu", a3}];
    }
  }

  mCellCount = v9->mCellCount;
  TSTTableTileRowInfoSetCell(v9, a2, a4);
  v13 = v9->mCellCount;
  if (v13 <= mCellCount)
  {
    if (v13 >= mCellCount)
    {
      goto LABEL_10;
    }

    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  a1->mNumCells += v14;
LABEL_10:
  if (a1->mMaxColumn <= a2)
  {
    if (a4)
    {
      a1->mMaxColumn = a2;
    }

    else
    {
      a1->mMaxColumn = 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      mRowInfos = a1->mRowInfos;
      v16 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v39;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v39 != v18)
            {
              objc_enumerationMutation(mRowInfos);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            if (*(v20 + 538))
            {
              if ((*(v20 + 541) & 1) == 0)
              {
                TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v38 + 1) + 8 * i));
              }

              v21 = *(v20 + 540);
              if (v21 != 255 && v21 > a1->mMaxColumn)
              {
                a1->mMaxColumn = v21;
              }
            }
          }

          v17 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v17);
      }
    }
  }

  if (!v9->mCellCount)
  {
    mTileRowIndex = v9->mTileRowIndex;
    if (!v9->mMaxTileColumnIndexValid)
    {
      TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v9);
    }

    mMaxTileColumnIndex = v9->mMaxTileColumnIndex;
    v23 = v9;
    [(NSMutableArray *)a1->mRowInfos removeObject:v9];
    --a1->mNumRows;
    a1->mNumCells -= v9->mCellCount;

    if (mTileRowIndex >= a1->mMaxRow)
    {
      a1->mMaxRow = 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v24 = a1->mRowInfos;
      v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v39;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(*(&v38 + 1) + 8 * j) + 536);
            if (v29 > a1->mMaxRow)
            {
              a1->mMaxRow = v29;
            }
          }

          v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v26);
      }
    }

    if (mMaxTileColumnIndex != 255 && mMaxTileColumnIndex >= a1->mMaxColumn)
    {
      a1->mMaxColumn = 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v30 = a1->mRowInfos;
      v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v39;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v39 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v38 + 1) + 8 * k);
            if (*(v35 + 538))
            {
              if ((*(v35 + 541) & 1) == 0)
              {
                TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v38 + 1) + 8 * k));
              }

              v36 = *(v35 + 540);
              if (v36 != 255 && v36 > a1->mMaxColumn)
              {
                a1->mMaxColumn = v36;
              }
            }
          }

          v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v32);
      }
    }
  }
}

void TSTTableTileRemoveCell(TSTTableTile *a1, unsigned int a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a1->mMaxColumn < a2)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileRemoveCell(TSTTableTile *, TSUColumnIndex, TSURowIndex)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 408, @"column index too large"}];
  }

  if (a1->mMaxRow < a3)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileRemoveCell(TSTTableTile *, TSUColumnIndex, TSURowIndex)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 412, @"row index too large"}];
  }

  v10 = TSTTableTileRowInfoForTileRowIndex(a1, a3, 0);
  if (v10)
  {
    v11 = v10;
    [(TSPObject *)a1 willModify];
    mCellCount = v11->mCellCount;
    TSTTableTileRowInfoSetCell(v11, a2, 0);
    v13 = v11->mCellCount;
    if (v13 <= mCellCount)
    {
      if (v13 >= mCellCount)
      {
LABEL_11:
        if (a1->mMaxColumn <= a2)
        {
          v37 = v11;
          a1->mMaxColumn = 0;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          mRowInfos = a1->mRowInfos;
          v16 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v40;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v40 != v18)
                {
                  objc_enumerationMutation(mRowInfos);
                }

                v20 = *(*(&v39 + 1) + 8 * i);
                if (*(v20 + 538))
                {
                  if ((*(v20 + 541) & 1) == 0)
                  {
                    TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v39 + 1) + 8 * i));
                  }

                  v21 = *(v20 + 540);
                  if (v21 != 255 && v21 > a1->mMaxColumn)
                  {
                    a1->mMaxColumn = v21;
                  }
                }
              }

              v17 = [(NSMutableArray *)mRowInfos countByEnumeratingWithState:&v39 objects:v43 count:16];
            }

            while (v17);
          }

          v11 = v37;
        }

        if (!v11->mCellCount)
        {
          mTileRowIndex = v11->mTileRowIndex;
          if (!v11->mMaxTileColumnIndexValid)
          {
            TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v11);
          }

          mMaxTileColumnIndex = v11->mMaxTileColumnIndex;
          v23 = v11;
          [(NSMutableArray *)a1->mRowInfos removeObject:v11];
          --a1->mNumRows;
          a1->mNumCells -= v11->mCellCount;

          if (mTileRowIndex >= a1->mMaxRow)
          {
            a1->mMaxRow = 0;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v24 = a1->mRowInfos;
            v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v40;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v40 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(*(&v39 + 1) + 8 * j) + 536);
                  if (v29 > a1->mMaxRow)
                  {
                    a1->mMaxRow = v29;
                  }
                }

                v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
              }

              while (v26);
            }
          }

          if (mMaxTileColumnIndex != 255 && mMaxTileColumnIndex >= a1->mMaxColumn)
          {
            a1->mMaxColumn = 0;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v30 = a1->mRowInfos;
            v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v39 objects:v43 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v40;
              do
              {
                for (k = 0; k != v32; ++k)
                {
                  if (*v40 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v39 + 1) + 8 * k);
                  if (*(v35 + 538))
                  {
                    if ((*(v35 + 541) & 1) == 0)
                    {
                      TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v39 + 1) + 8 * k));
                    }

                    v36 = *(v35 + 540);
                    if (v36 != 255 && v36 > a1->mMaxColumn)
                    {
                      a1->mMaxColumn = v36;
                    }
                  }
                }

                v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v39 objects:v43 count:16];
              }

              while (v32);
            }
          }
        }

        return;
      }

      v14 = -1;
    }

    else
    {
      v14 = 1;
    }

    a1->mNumCells += v14;
    goto LABEL_11;
  }
}

uint64_t TSTTableTileInsertColumns(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v23 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 56);
  v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        TSTTableTileRowInfoInsertColumns(v13, v6, v5, v4);
        if ((v13[541] & 1) == 0)
        {
          TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v13);
        }

        v14 = v13[540];
        v15 = v10;
        if (v14 > v10)
        {
          v15 = v13[540];
        }

        if (v14 != 255)
        {
          v10 = v15;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 48) = v10;
  return 0;
}

uint64_t TSTTableTileRemoveColumns(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v23 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 56);
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        mCellCount = v11->mCellCount;
        TSTTableTileRowInfoRemoveColumns(v11, v4, v3);
        v13 = v11->mCellCount - mCellCount;
        if (v13)
        {
          *(a1 + 52) += v13;
        }

        if (!v11->mMaxTileColumnIndexValid)
        {
          TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v11);
        }

        mMaxTileColumnIndex = v11->mMaxTileColumnIndex;
        v15 = v8;
        if (mMaxTileColumnIndex > v8)
        {
          v15 = v11->mMaxTileColumnIndex;
        }

        if (mMaxTileColumnIndex != 255)
        {
          v8 = v15;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 48) = v8;
  return 0;
}

void TSTTableTileMoveColumns(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v27 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  if (*(a1 + 64))
  {
    v8 = *(a1 + 48);
    if (v8 >= v6 || v8 >= v5)
    {
      v10 = malloc_type_malloc(0x57FFA8uLL, 0x100004052888210uLL);
      v11 = malloc_type_malloc(0x1FFFEuLL, 0x1000040BDFB0063uLL);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v20 = a1;
      obj = *(a1 + 56);
      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            TSTTableTileRowInfoMoveColumns(v17, v6, v5, v4, v10, v11);
            if (!v17->mMaxTileColumnIndexValid)
            {
              TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v17);
            }

            mMaxTileColumnIndex = v17->mMaxTileColumnIndex;
            v19 = v14;
            if (mMaxTileColumnIndex > v14)
            {
              v19 = v17->mMaxTileColumnIndex;
            }

            if (mMaxTileColumnIndex != 255)
            {
              v14 = v19;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }

      free(v10);
      free(v11);
      *(v20 + 48) = v14;
    }
  }
}

void *TSTTableTileInsertRows(uint64_t a1, unsigned int a2, __int16 a3, int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(a1 + 56);
  result = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v13 = *(v12 + 536);
        if (v13 == a2)
        {
          v14 = a4;
        }

        else
        {
          v14 = 1;
        }

        if (v13 >= a2 && v14 != 0)
        {
          v16 = v13 + a3;
          [*(*(&v23 + 1) + 8 * v11) willModify];
          *(v12 + 536) = v16;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      result = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
      v9 = result;
    }

    while (result);
  }

  if (*(a1 + 64))
  {
    *(a1 + 50) = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = *(a1 + 56);
    result = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (result)
    {
      v18 = result;
      v19 = *v28;
      do
      {
        v20 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(*(&v27 + 1) + 8 * v20) + 536);
          if (v21 > *(a1 + 50))
          {
            *(a1 + 50) = v21;
          }

          v20 = v20 + 1;
        }

        while (v18 != v20);
        result = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
        v18 = result;
      }

      while (result);
    }
  }

  return result;
}

void TSTTableTileRemoveRows(uint64_t a1, unsigned int a2, int a3)
{
  v33 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v6 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v7 = 0;
    v8 = 0;
    v27 = a3;
    v9 = a3 + a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), (v6 + ~v7));
      v11 = ValueAtIndex[268];
      if (v11 >= a2)
      {
        v12 = ValueAtIndex;
        if (v9 <= v11)
        {
          v13 = v11 - v27;
          [ValueAtIndex willModify];
          v12[268] = v13;
        }

        else
        {
          ++v8;
          *(a1 + 52) -= ValueAtIndex[269];
          CFArrayRemoveValueAtIndex(*(a1 + 56), (v6 + ~v7));
        }
      }

      ++v7;
    }

    while (v6 != v7);
    *(a1 + 64) -= v8;
    if (*(a1 + 64))
    {
      *(a1 + 50) = 0;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = *(a1 + 56);
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(*(&v28 + 1) + 8 * i) + 536);
            if (v19 > *(a1 + 50))
            {
              *(a1 + 50) = v19;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v16);
      }

      *(a1 + 48) = 0;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v20 = *(a1 + 56);
      v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v29;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v28 + 1) + 8 * j);
            if (*(v25 + 538))
            {
              if ((*(v25 + 541) & 1) == 0)
              {
                TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v28 + 1) + 8 * j));
              }

              v26 = *(v25 + 540);
              if (v26 != 255 && v26 > *(a1 + 48))
              {
                *(a1 + 48) = v26;
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v22);
      }
    }

    else
    {
      *(a1 + 50) = 0;
      *(a1 + 48) = 0;
    }
  }
}

void TSTTableTileYankRows(uint64_t a1, unsigned int a2, int a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v7 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), (v7 + ~v8));
      v11 = ValueAtIndex[268];
      if (v11 >= a2 && a3 + a2 > v11)
      {
        ++v9;
        *(a1 + 52) -= ValueAtIndex[269];
        [a4 insertObject:ValueAtIndex atIndex:0];
        CFArrayRemoveValueAtIndex(*(a1 + 56), (v7 + ~v8));
      }

      ++v8;
    }

    while (v7 != v8);
    *(a1 + 64) -= v9;
    if (*(a1 + 64))
    {
      *(a1 + 50) = 0;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = *(a1 + 56);
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(*(&v27 + 1) + 8 * i) + 536);
            if (v18 > *(a1 + 50))
            {
              *(a1 + 50) = v18;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v15);
      }

      *(a1 + 48) = 0;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = *(a1 + 56);
      v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v28;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v27 + 1) + 8 * j);
            if (*(v24 + 538))
            {
              if ((*(v24 + 541) & 1) == 0)
              {
                TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v27 + 1) + 8 * j));
              }

              v25 = *(v24 + 540);
              if (v25 != 255 && v25 > *(a1 + 48))
              {
                *(a1 + 48) = v25;
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v21);
      }
    }

    else
    {
      *(a1 + 50) = 0;
      *(a1 + 48) = 0;
    }
  }
}

unsigned __int8 *TSTTableTileYankRow(uint64_t a1, unsigned int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 56);
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        if (v9[268] == a2)
        {
          *(a1 + 52) -= v9[269];
          v10 = v9;
          [*(a1 + 56) removeObject:v9];
          --*(a1 + 64);
          if (v10)
          {
            if (*(a1 + 50) <= a2)
            {
              v11 = v10;
              *(a1 + 50) = 0;
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v12 = *(a1 + 56);
              v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v32;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v32 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v17 = *(*(*(&v31 + 1) + 8 * j) + 536);
                    if (v17 > *(a1 + 50))
                    {
                      *(a1 + 50) = v17;
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
                }

                while (v14);
              }

              v10 = v11;
            }

            if ((v10[541] & 1) == 0)
            {
              TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v10);
            }

            if (v10[540] >= *(a1 + 48))
            {
              v26 = v10;
              *(a1 + 48) = 0;
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v18 = *(a1 + 56);
              v19 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v32;
                do
                {
                  for (k = 0; k != v20; ++k)
                  {
                    if (*v32 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v31 + 1) + 8 * k);
                    if (*(v23 + 538))
                    {
                      if ((*(v23 + 541) & 1) == 0)
                      {
                        TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v31 + 1) + 8 * k));
                      }

                      v24 = *(v23 + 540);
                      if (v24 != 255 && v24 > *(a1 + 48))
                      {
                        *(a1 + 48) = v24;
                      }
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
                }

                while (v20);
              }

              v10 = v26;
            }
          }

          return v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
  return v10;
}

void *TSTTableTileSpliceRow(TSTTableTile *a1, unsigned int a2, TSTTableTileRowInfo *a3)
{
  if (!a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileSpliceRow(TSTTableTile *, TSURowIndex, TSTTableTileRowInfo *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 703, @"Can't splice in a nil row!"}];
  }

  if ([(TSPContainedObject *)a3 owner]!= a1)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileSpliceRow(TSTTableTile *, TSURowIndex, TSTTableTileRowInfo *)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 704, @"Tile doesn't own that row!"}];
  }

  [(TSPObject *)a1 willModify];

  return p_InsertRowInfoWithRowIndex(a1, a3, a2);
}

void *p_InsertRowInfoWithRowIndex(TSTTableTile *a1, TSTTableTileRowInfo *a2, unsigned int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = 0x277D6C000uLL;
  if ([(TSPContainedObject *)a2 owner]!= a1)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_InsertRowInfoWithRowIndex(TSTTableTile *, TSTTableTileRowInfo *, TSURowIndex)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 253, @"Tile doesn't own that row!"}];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = a1;
  obj = a1->mRowInfos;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v27;
LABEL_5:
    v12 = 0;
    v22 = v10 + v9;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(*(&v26 + 1) + 8 * v12) + 536);
      if (v13 > a3)
      {
        break;
      }

      if (v13 == a3)
      {
        v14 = v5;
        v15 = [*(v5 + 656) currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void p_InsertRowInfoWithRowIndex(TSTTableTile *, TSTTableTileRowInfo *, TSURowIndex)"}];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"];
        v18 = v15;
        v5 = v14;
        [v18 handleFailureInFunction:v16 file:v17 lineNumber:263 description:@"Duplicate row indices!"];
      }

      ++v10;
      if (v9 == ++v12)
      {
        v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        v10 = v22;
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  [(TSPObject *)v24 willModify];
  result = [(NSMutableArray *)v24->mRowInfos insertObject:a2 atIndex:v10];
  ++v24->mNumRows;
  v24->mNumCells += a2->mCellCount;
  if (v24->mMaxRow < a3)
  {
    v24->mMaxRow = a3;
  }

  if (!a2->mMaxTileColumnIndexValid)
  {
    result = TSTTableTileRowInfoRecalculateMaxTileColumnIndex(a2);
  }

  mMaxTileColumnIndex = a2->mMaxTileColumnIndex;
  if (mMaxTileColumnIndex != 255)
  {
    mMaxColumn = v24->mMaxColumn;
    if (mMaxColumn == 255 || mMaxTileColumnIndex > mMaxColumn)
    {
      v24->mMaxColumn = mMaxTileColumnIndex;
    }
  }

  return result;
}

uint64_t TSTTableTileFindMidpointForRowSplit(uint64_t a1)
{
  if (*(a1 + 64) <= 1u)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSURowIndex TSTTableTileFindMidpointForRowSplit(TSTTableTile *)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 747, @"Can't split a tile with out more than one row!"}];
  }

  v4 = *([*(a1 + 56) objectAtIndex:0] + 536);
  v5 = *(a1 + 64);
  v6 = 1;
  if (v5 >= 2)
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v6);
      v8 = ValueAtIndex[268];
      if (v4 + 1 != v8)
      {
        break;
      }

      ++v6;
      v5 = *(a1 + 64);
      v4 = ValueAtIndex[268];
      if (v5 <= v6)
      {
        v4 = ValueAtIndex[268];
        goto LABEL_10;
      }
    }

    if (v8 <= v4)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSURowIndex TSTTableTileFindMidpointForRowSplit(TSTTableTile *)"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 768, @"Row indexes out of order in split!"}];
    }

    v5 = *(a1 + 64);
  }

LABEL_10:
  v11 = v6;
  if (v6 >= v5 >> 1)
  {
    LOWORD(v12) = v4;
  }

  else
  {
    do
    {
      v12 = *(CFArrayGetValueAtIndex(*(a1 + 56), v11) + 268);
      if (v12 <= v4)
      {
        v13 = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSURowIndex TSTTableTileFindMidpointForRowSplit(TSTTableTile *)"];
        [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 779, @"Row indexes out of order in split!"}];
      }

      ++v6;
      ++v11;
      v4 = v12;
    }

    while (v6 < (*(a1 + 64) >> 1));
  }

  return v12;
}

TSTTableTile *TSTTableTileSplitRows(uint64_t a1, unsigned int a2)
{
  v53 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  v31 = -[TSTTableTile initWithContext:]([TSTTableTile alloc], "initWithContext:", [a1 context]);
  if (*(a1 + 50) <= a2)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 50) - a2];
  }

  obj = v4;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = &OBJC_IVAR___TSDButtonKnob_mEnabled;
  v6 = *(a1 + 56);
  v7 = [v6 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(*(&v42 + 1) + 8 * i) + 536) >= a2)
        {
          [obj addObject:?];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v8);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v32)
  {
    v30 = *v39;
    v29 = a2;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        mTileRowIndex = v12->mTileRowIndex;
        if (!v12->mMaxTileColumnIndexValid)
        {
          TSTTableTileRowInfoRecalculateMaxTileColumnIndex(v12);
        }

        v36 = v11;
        mMaxTileColumnIndex = v12->mMaxTileColumnIndex;
        v14 = v12;
        [*(a1 + v5[929]) removeObject:v12];
        --*(a1 + 64);
        *(a1 + 52) -= v12->mCellCount;

        if (mTileRowIndex >= *(a1 + 50))
        {
          v34 = v12;
          *(a1 + 50) = 0;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v15 = *(a1 + v5[929]);
          v16 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v47;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v47 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(*(&v46 + 1) + 8 * j) + 536);
                if (v20 > *(a1 + 50))
                {
                  *(a1 + 50) = v20;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v46 objects:v52 count:16];
            }

            while (v17);
          }

          LOWORD(a2) = v29;
          v5 = &OBJC_IVAR___TSDButtonKnob_mEnabled;
          v12 = v34;
        }

        if (mMaxTileColumnIndex != 255 && mMaxTileColumnIndex >= *(a1 + 48))
        {
          v35 = v12;
          *(a1 + 48) = 0;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v21 = *(a1 + v5[929]);
          v22 = [v21 countByEnumeratingWithState:&v46 objects:v52 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v47;
            do
            {
              for (k = 0; k != v23; ++k)
              {
                if (*v47 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v46 + 1) + 8 * k);
                if (*(v26 + 538))
                {
                  if ((*(v26 + 541) & 1) == 0)
                  {
                    TSTTableTileRowInfoRecalculateMaxTileColumnIndex(*(*(&v46 + 1) + 8 * k));
                  }

                  v27 = *(v26 + 540);
                  if (v27 != 255 && v27 > *(a1 + 48))
                  {
                    *(a1 + 48) = v27;
                  }
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v46 objects:v52 count:16];
            }

            while (v23);
          }

          LOWORD(a2) = v29;
          v5 = &OBJC_IVAR___TSDButtonKnob_mEnabled;
          v12 = v35;
        }

        [(TSPContainedObject *)v12 setOwner:v31];
        [(TSPContainedObject *)v12 willModify];
        v12->mTileRowIndex = mTileRowIndex - a2;
        p_InsertRowInfoWithRowIndex(v31, v12, (mTileRowIndex - a2));
        v11 = v36 + 1;
      }

      while (v36 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v32);
  }

  return v31;
}

void *TSTTableTileMergeRows(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  [a1 willModify];
  [a2 willModify];
  if (*(a1 + 50) >= a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableTileMergeRows(TSTTableTile *, TSTTableTile *, TSURowIndex)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTile.mm"), 841, @"Overlapping tiles in tile merge!"}];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = *(a2 + 56);
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = v13[268] + a3;
        [v13 willModify];
        v13[268] = v14;
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = *(a2 + 56);
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v22 + 1) + 8 * j) setOwner:a1];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  [*(a1 + 56) addObjectsFromArray:*(a2 + 56)];
  v20 = *(a1 + 48);
  if (v20 <= *(a2 + 48))
  {
    LOBYTE(v20) = *(a2 + 48);
  }

  *(a1 + 48) = v20;
  *(a1 + 50) = *(a2 + 50) + a3;
  *(a1 + 52) += *(a2 + 52);
  *(a1 + 64) = [*(a1 + 56) count];
  result = [*(a2 + 56) removeAllObjects];
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  *(a2 + 52) = 0;
  *(a2 + 64) = 0;
  return result;
}

void *TSTTableSetDefaultRowHeight(double *a1, double a2)
{
  result = [a1 willModify];
  a1[12] = a2;
  return result;
}

double TSTTableDefaultRowHeight(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 96);
  }

  else
  {
    return 10.0;
  }
}

void *TSTTableSetDefaultColumnWidth(double *a1, double a2)
{
  result = [a1 willModify];
  a1[13] = a2;
  return result;
}

double TSTTableDefaultColumnWidth(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 104);
  }

  else
  {
    return 0.0;
  }
}

id TSTTableMergeRangesForCellRegion(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = [a2 boundingCellRange];
  v5 = TSTTableDataStoreMergeRangesForCellRange(v3, v4);
  v6 = TSTTableDataStoreMergeRangesForCellRange(v3, v4);
  if (v6)
  {
    v7 = [v5 iterator];
    if ([v7 hasNextMergeRegion])
    {
      do
      {
        v8 = [v7 nextMergeRegion];
        if (([a2 intersectsCellRange:v8] & 1) == 0)
        {
          [v6 remove:v8];
        }
      }

      while (([v7 hasNextMergeRegion] & 1) != 0);
    }
  }

  return v6;
}

id TSTSetDefaultCellForTableArea(id *a1, int a2, void *a3)
{
  if (a2 <= 2)
  {
    if (!a2)
    {

      result = a3;
      *a1 = result;
      return result;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {

        result = a3;
        a1[2] = result;
        return result;
      }

      goto LABEL_12;
    }

LABEL_10:

    result = a3;
    a1[1] = result;
    return result;
  }

  switch(a2)
  {
    case 3:
      goto LABEL_9;
    case 4:
      goto LABEL_10;
    case 5:
LABEL_9:

      result = a3;
      a1[3] = result;
      return result;
  }

LABEL_12:
  v6 = [MEMORY[0x277D6C290] currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTSetDefaultCellForTableArea(TSTDefaultCellBlock *, TSTTableArea, TSTCell *)"}];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"];

  return [v6 handleFailureInFunction:v7 file:v8 lineNumber:1651 description:@"illegal table region"];
}

uint64_t TSTTableDefaultCellForCellID(unsigned __int16 *a1, int a2, uint64_t a3)
{
  if (a2 >= a1[36])
  {
    return 3;
  }

  if (BYTE2(a2) >= a1[37])
  {
    return 3;
  }

  TSTCellCopy([a1 defaultCellForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", a2 & 0xFF000000 | (BYTE2(a2) << 16) | a2)}], a3);
  return 0;
}

uint64_t TSTCellAtCellIDSuppressingFormula(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  if (a2 >= *(a1 + 72))
  {
    return 3;
  }

  if (BYTE2(a2) >= *(a1 + 74))
  {
    return 3;
  }

  v7 = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a2 & 0xFF000000 | (BYTE2(a2) << 16) | a2);
  if (!v7)
  {
    return 1000;
  }

  [a3 inflateFromStorageRef:v7 dataStore:*(a1 + 48) suppressingFormulaInflation:a4];
  return 0;
}

uint64_t TSTTablePreflightSetCellAtCellID(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  if (a3 >= *(a1 + 72))
  {
    return 3;
  }

  v6 = BYTE2(a3);
  if (BYTE2(a3) >= *(a1 + 74))
  {
    return 3;
  }

  v8 = [a1 range];
  v9 = WORD2(v8) * HIWORD(v8);
  v10 = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")];
  if (v9 < v10 || (v12 = v10, v13 = TSTTableDataStoreCellExistsAtCellID(*(a1 + 48), a3 & 0xFF000000 | (v6 << 16) | v4), !a2) || v13)
  {
    if (!a2)
    {
      return 0;
    }
  }

  else if (TSTTableDataStoreNumberOfPopulatedCells(*(a1 + 48)) >= v12)
  {
    return 1001;
  }

  result = 0;
  v14 = *(a2 + 104);
  v15 = BYTE1(*(a2 + 8));
  if (v15 <= 5)
  {
    if (v15 == 2)
    {
      if (v14 & 0xFFFFFFFC) == 0x100 || (v14 - 262) < 9 && ((0x1BFu >> (v14 - 6)))
      {
        return 0;
      }

      v18 = (v14 & 0xFFFFFFF7) != 0x106 && v14 != 269 && (v14 - 268) < 0xFFFFFFFB;
      goto LABEL_43;
    }

    if (v15 != 3)
    {
      if (v15 == 5)
      {
        result = 0;
        if (v14 != 261 && v14 != 272)
        {
          goto LABEL_42;
        }
      }

      return result;
    }

LABEL_24:
    result = 0;
    if (v14 > 259)
    {
      if (v14 == 260 || v14 == 271)
      {
        return result;
      }
    }

    else if ((v14 + 1) < 3 || v14 == -999)
    {
      return result;
    }

    v18 = v14 != 271;
    goto LABEL_43;
  }

  switch(v15)
  {
    case 9u:
      goto LABEL_24;
    case 7u:
      if (v14 == 268)
      {
        return 0;
      }

      goto LABEL_42;
    case 6u:
      result = 0;
      if (v14 != 1 && v14 != 263)
      {
LABEL_42:
        v18 = 1;
LABEL_43:
        NSLog(@"%d", v18);
        v19 = [MEMORY[0x277D6C290] currentHandler];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUError TSTTablePreflightSetCellAtCellID(TSTTableModel *, TSTCell *, TSTCellID)"}];
        [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 1782, @"Attempting to add invalid cell to the model"}];
        return 0;
      }

      break;
  }

  return result;
}

uint64_t TSTTableSetCellAtCellIDIgnoringFormula(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = TSTTablePreflightSetCellAtCellID(a1, a2, a3);
  if (!v8)
  {
    TSTTableDataStoreSetCellAtCellID(*(a1 + 48), a2, v7);
  }

  return v8;
}

uint64_t TSTTablePreflightSetCellsWithCellMap(uint64_t a1, void *a2)
{
  v4 = [a2 count];
  v5 = TSTTableDataStoreNumberOfPopulatedCells(*(a1 + 48));
  v6 = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")];
  if (v4 + v5 < v6 || v4 == 0)
  {
    return 0;
  }

  v8 = v6;
  v9 = 0;
  for (i = v4 - 1; ; --i)
  {
    v11 = [a2 cellIDAtIndex:v9];
    v12 = [a2 cellAtIndex:v9];
    v4 = v4 & 0xFFFFFFFF00000000 | v11;
    v5 += (v12 != 0) & ~TSTTableDataStoreCellExistsAtCellID(*(a1 + 48), v4);
    if (v8 < v5)
    {
      break;
    }

    ++v9;
    if (i < v8 - v5 || i == 0)
    {
      return 0;
    }
  }

  return 1001;
}

uint64_t TSTTableSetCellsWithCellMapIgnoringFormulas(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSTTablePreflightSetCellsWithCellMap(a1, a2);
  if (!v7)
  {
    TSTTableDataStoreSetCellsWithCellMap(*(a1 + 48), a2);
  }

  return v7;
}

uint64_t TSTCellAtCellIDHoldingReadLock(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v5 = 1;
  [a4 performRead:sel_p_fetchCellHoldingReadLock_returnCode_ withTarget:a1 argument:&v6 argument2:&v5];
  return v5;
}

void TSTTableGetFormatAtCellIDForFormulaReference(void *result@<X0>, int a2@<W1>, BOOL *a3@<X2>, void *a4@<X3>, int *a5@<X8>)
{
  if (a2 >= *(result + 36) || BYTE2(a2) >= *(result + 37))
  {
    *(a5 + 4) = 0;
    *a5 = TSUInvalidFormat;
    *(a5 + 1) = unk_26CA67A30;
    return;
  }

  v9 = a2 & 0xFF000000 | (BYTE2(a2) << 16) | a2;
  v10 = TSTCellDictionaryCellAtCellID(result[35], v9);
  if (v10)
  {
    if (a3)
    {
      *a3 = (*(v10 + 48) & 0x8010) == 0;
    }

    v11 = *(v10 + 17);
    v12 = *(v10 + 120);
    *a5 = *(v10 + 104);
    *(a5 + 1) = v12;
    *(a5 + 4) = v11;
    v13 = *a5;
    if ((*a5 & 0xFFFFFFFE) != 0x108)
    {
      goto LABEL_13;
    }

    TSTCellGetFormatOfType(v10, a5[8], a5);
    goto LABEL_12;
  }

  *v14.i64 = TSTTableDataStoreGetFormatAtCellID(result[6], v9, a3, 0, a5);
  v13 = *a5;
  if ((*a5 & 0xFFFFFFFE) == 0x108)
  {
    TSTTableDataStoreGetFormatForFormatTypeAtCellID(result[6], v9, a5[8], 0, v16, v14);
    v15 = v16[1];
    *a5 = v16[0];
    *(a5 + 1) = v15;
    *(a5 + 4) = v17;
LABEL_12:
    v13 = *a5;
  }

LABEL_13:
  if (a4)
  {
    if (v13 == 270)
    {
      *a4 = [objc_msgSend(objc_msgSend(result "documentRoot")];
      v13 = *a5;
    }

    else
    {
      *a4 = 0;
    }
  }

  if ((v13 - 270) <= 2)
  {
    TSTTableDataStorePopulateCustomFormat(result[6], a5, 0.0);
  }
}

uint64_t TSTTableNumberOfComments(void *a1)
{
  v1 = [*(objc_msgSend(a1 "dataStore") + 120)];

  return TSTTableDataListGetCount(v1);
}

UInt8 *TSTTableHasCommentStorageAtCellID(uint64_t a1, int a2)
{
  result = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a2);
  if (result)
  {
    return ((result[5] >> 4) & 1);
  }

  return result;
}

UInt8 *TSTTableGetCommentStorageAtCellID(uint64_t a1, int a2)
{
  result = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a2);
  if (result)
  {
    v4 = result;
    v5 = objc_alloc_init(TSTCell);
    [(TSTCell *)v5 inflateFromStorageRef:v4 dataStore:*(a1 + 48)];
    if (v5)
    {
      mCommentStorage = v5->mPrivate.mCommentStorage;
    }

    else
    {
      mCommentStorage = 0;
    }

    v7 = mCommentStorage;

    return v7;
  }

  return result;
}

uint64_t TSTTableSetCommentStorageAtCellID(uint64_t a1, TSDCommentStorage *a2, int a3)
{
  v6 = objc_alloc_init(TSTCell);
  v7 = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a3);
  if (v7)
  {
    [(TSTCell *)v6 inflateFromStorageRef:v7 dataStore:*(a1 + 48)];
  }

  else
  {
    v6->mPrivate.mCommentStorageID = 0;
  }

  TSTCellSetCommentStorageClearingID(v6, a2, 1);
  v8 = TSTTableSetCellAtCellIDIgnoringFormula(a1, v6, a3, 1, 0);

  return v8;
}

uint64_t TSTTableRemoveCommentStorageAtCellID(uint64_t a1, int a2)
{
  v4 = objc_alloc_init(TSTCell);
  v5 = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a2);
  if (v5)
  {
    [(TSTCell *)v4 inflateFromStorageRef:v5 dataStore:*(a1 + 48)];
    mCommentStorage = v4->mPrivate.mCommentStorage;
    if (mCommentStorage)
    {

      v4->mPrivate.mCommentStorage = 0;
    }

    v4->mPrivate.mCommentStorageID = 0;
    v7 = TSTTableSetCellAtCellIDIgnoringFormula(a1, v4, a2, 1, 0);
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

BOOL TSTTableHeaderInfoForRowIsNilOrEmpty(uint64_t a1, uint64_t a2)
{
  v2 = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a2, 0, 0);
  if (!v2)
  {
    return 1;
  }

  if (*(v2 + 24) != 0.0 || *(v2 + 34) || *(v2 + 8) || *(v2 + 16))
  {
    return 0;
  }

  return *(v2 + 32) == 0;
}

BOOL TSTTableHeaderInfoForColumnIsNilOrEmpty(uint64_t a1, uint64_t a2)
{
  v2 = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a2, 0, 0);
  if (!v2)
  {
    return 1;
  }

  if (*(v2 + 24) != 0.0 || *(v2 + 34) || *(v2 + 8) || *(v2 + 16))
  {
    return 0;
  }

  return *(v2 + 32) == 0;
}

uint64_t TSTTableSetCellStyleAtRow(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a3, 1, 1);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  *(v6 + 8) = a2;
  if (*(v7 + 24) == 0.0 && !*(v7 + 34) && !*(v7 + 8) && !*(v7 + 16) && !*(v7 + 32))
  {
    TSTTableDataStoreRemoveRowHeadersAtIndex(*(a1 + 48), a3, 1);
  }

  return 0;
}

uint64_t TSTTableSetTextStyleAtRow(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a3, 1, 1);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  *(v6 + 16) = a2;
  if (*(v7 + 24) == 0.0 && !*(v7 + 34) && !*(v7 + 8) && !*(v7 + 16) && !*(v7 + 32))
  {
    TSTTableDataStoreRemoveRowHeadersAtIndex(*(a1 + 48), a3, 1);
  }

  return 0;
}

void *TSTTableGetCellStyleAtRow(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = TSTTableDataStoreHeaderInfoForRow(a1[6], a2, 0, 0);
  if (v6 && (result = *(v6 + 8)) != 0)
  {
    *a3 = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    if ([a1 numberOfHeaderRows] <= v4)
    {
      v8 = [a1 numberOfRows];
      if ((v8 - [a1 numberOfFooterRows]) >= v4)
      {

        return [a1 bodyCellStyle];
      }

      else
      {

        return [a1 footerRowCellStyle];
      }
    }

    else
    {

      return [a1 headerRowCellStyle];
    }
  }

  return result;
}

void *TSTTableGetTextStyleAtRow(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = TSTTableDataStoreHeaderInfoForRow(a1[6], a2, 0, 0);
  if (v6 && (result = *(v6 + 16)) != 0)
  {
    *a3 = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    if ([a1 numberOfHeaderRows] <= v4)
    {
      v8 = [a1 numberOfRows];
      if ((v8 - [a1 numberOfFooterRows]) >= v4)
      {

        return [a1 bodyTextStyle];
      }

      else
      {

        return [a1 footerRowTextStyle];
      }
    }

    else
    {

      return [a1 headerRowTextStyle];
    }
  }

  return result;
}

uint64_t TSTTableSetCellStyleAtColumn(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a3, 1, 1);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  *(v6 + 8) = a2;
  if (*(v7 + 24) == 0.0 && !*(v7 + 34) && !*(v7 + 8) && !*(v7 + 16) && !*(v7 + 32))
  {
    TSTTableDataStoreRemoveColumnHeadersAtIndex(*(a1 + 48), a3, 1);
  }

  return 0;
}

uint64_t TSTTableSetTextStyleAtColumn(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a3, 1, 1);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  *(v6 + 16) = a2;
  if (*(v7 + 24) == 0.0 && !*(v7 + 34) && !*(v7 + 8) && !*(v7 + 16) && !*(v7 + 32))
  {
    TSTTableDataStoreRemoveColumnHeadersAtIndex(*(a1 + 48), a3, 1);
  }

  return 0;
}

uint64_t TSTTableGetCellStyleAtColumn(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = TSTTableDataStoreHeaderInfoForColumn(a1[6], a2, 0, 0);
  if (v6 && *(v6 + 8))
  {
    *a3 = 0;
    return *(v6 + 8);
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    if ([a1 numberOfHeaderColumns] <= v4)
    {

      return [a1 bodyCellStyle];
    }

    else
    {

      return [a1 headerColumnCellStyle];
    }
  }
}

void *TSTTableGetTextStyleAtColumn(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = TSTTableDataStoreHeaderInfoForColumn(a1[6], a2, 0, 0);
  if (v6 && (result = *(v6 + 16)) != 0)
  {
    *a3 = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    if ([a1 numberOfHeaderColumns] <= v4)
    {

      return [a1 bodyTextStyle];
    }

    else
    {

      return [a1 headerColumnTextStyle];
    }
  }

  return result;
}

uint64_t TSTTableDefaultCellStyleForCellID(void *a1, unsigned int a2)
{
  v3 = [a1 tableAreaForCellID:a2];

  return [a1 defaultCellStyleForTableArea:v3];
}

uint64_t TSTTableCellStyleForCellWithEmptyStyleAtCellID(void *a1, unsigned int a2, char *a3)
{
  v10 = 0;
  CellStyleAtRow = TSTTableGetCellStyleAtRow(a1, a2, &v10 + 1);
  CellStyleAtColumn = TSTTableGetCellStyleAtColumn(a1, BYTE2(a2), &v10);
  if (HIBYTE(v10) == 1)
  {
    v8 = v10;
    if (v10)
    {
      CellStyleAtRow = [a1 defaultCellStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", a2)}];
      if (a3)
      {
        v8 = 1;
LABEL_8:
        *a3 = v8;
      }
    }

    else
    {
      CellStyleAtRow = CellStyleAtColumn;
      if (a3)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a3)
  {
    v8 = 0;
    goto LABEL_8;
  }

  return CellStyleAtRow;
}

uint64_t TSTTableDefaultTextStyleForCellID(void *a1, unsigned int a2)
{
  v3 = [a1 tableAreaForCellID:a2];

  return [a1 defaultTextStyleForTableArea:v3];
}

void *TSTTableTextStyleForCellWithEmptyStyleAtCellID(void *a1, unsigned int a2, char *a3)
{
  v10 = 0;
  TextStyleAtRow = TSTTableGetTextStyleAtRow(a1, a2, &v10 + 1);
  TextStyleAtColumn = TSTTableGetTextStyleAtColumn(a1, BYTE2(a2), &v10);
  if (HIBYTE(v10) == 1)
  {
    v8 = v10;
    if (v10)
    {
      TextStyleAtRow = [a1 defaultTextStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", a2)}];
      if (a3)
      {
        v8 = 1;
LABEL_8:
        *a3 = v8;
      }
    }

    else
    {
      TextStyleAtRow = TextStyleAtColumn;
      if (a3)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a3)
  {
    v8 = 0;
    goto LABEL_8;
  }

  return TextStyleAtRow;
}

uint64_t TSTCellStyleIsEqualToDefaultCellStyleForCellID(void *a1, void *a2, unsigned int a3)
{
  v4 = [a1 defaultCellStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", a3)}];
  if (!v4)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTCellStyleIsEqualToDefaultCellStyleForCellID(TSTTableModel *, TSTCellStyle *, TSTCellID)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2378, @"null cell style"}];
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTCellStyleIsEqualToDefaultCellStyleForCellID(TSTTableModel *, TSTCellStyle *, TSTCellID)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2383, @"null style"}];
    return 0;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:

  return [a2 isEqual:v4];
}

uint64_t TSTCellStyleIsEqualToDefaultTextStyleForCellID(void *a1, void *a2, unsigned int a3)
{
  v4 = [a1 defaultTextStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", a3)}];
  if (!v4)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTCellStyleIsEqualToDefaultTextStyleForCellID(TSTTableModel *, TSWPParagraphStyle *, TSTCellID)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2392, @"null cell style"}];
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTCellStyleIsEqualToDefaultTextStyleForCellID(TSTTableModel *, TSWPParagraphStyle *, TSTCellID)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2397, @"null style"}];
    return 0;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:

  return [a2 isEqual:v4];
}

uint64_t TSTTableSetCellStyleAtCellID(uint64_t a1, TSTCellStyle *a2, int a3)
{
  v6 = objc_alloc_init(TSTCell);
  v7 = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a3);
  if (v7)
  {
    [(TSTCell *)v6 inflateFromStorageRef:v7 dataStore:*(a1 + 48)];
  }

  else
  {
    v6->mPrivate.mCellStyleID = 0;
  }

  mCellStyle = v6->mPrivate.mCellStyle;
  if (mCellStyle != a2)
  {

    v6->mPrivate.mCellStyle = a2;
    v6->mPrivate.mCellStyleID = 0;
  }

  v9 = TSTTableSetCellAtCellIDIgnoringFormula(a1, v6, a3, 1, 0);

  return v9;
}

uint64_t TSTTableSetTextStyleAtCellID(uint64_t a1, TSWPParagraphStyle *a2, int a3)
{
  v6 = objc_alloc_init(TSTCell);
  v7 = TSTTableDataStoreCellStorageRefAtCellID(*(a1 + 48), a3);
  if (v7)
  {
    [(TSTCell *)v6 inflateFromStorageRef:v7 dataStore:*(a1 + 48)];
  }

  else
  {
    v6->mPrivate.mTextStyleID = 0;
  }

  mTextStyle = v6->mPrivate.mTextStyle;
  if (mTextStyle != a2)
  {

    v6->mPrivate.mTextStyle = a2;
    v6->mPrivate.mTextStyleID = 0;
  }

  v9 = TSTTableSetCellAtCellIDIgnoringFormula(a1, v6, a3, 1, 0);

  return v9;
}

void *TSTTableGetCellStyleAtCellID(void *a1, int a2, char *a3)
{
  v10 = 0;
  v5 = a2;
  CellStyleAtCellID = TSTTableDataStoreGetCellStyleAtCellID(a1[6], a2, &v10);
  result = v10;
  if (CellStyleAtCellID)
  {
    v8 = 1;
  }

  else
  {
    v8 = v10 == 0;
  }

  if (v8)
  {
    return TSTTableCellStyleForCellWithEmptyStyleAtCellID(a1, v5, a3);
  }

  if (a3)
  {
    v9 = [a1 defaultCellStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", v5)}];
    *a3 = [v9 isEqual:v10];
    return v10;
  }

  return result;
}

TSWPParagraphStyle *TSTTableGetTextStyleAtCellID(void *a1, int a2, char *a3)
{
  v10 = 0;
  v5 = a2;
  TextStyleAtCellID = TSTTableDataStoreGetTextStyleAtCellID(a1[6], a2, &v10);
  result = v10;
  if (TextStyleAtCellID)
  {
    v8 = 1;
  }

  else
  {
    v8 = v10 == 0;
  }

  if (v8)
  {
    return TSTTableTextStyleForCellWithEmptyStyleAtCellID(a1, v5, a3);
  }

  if (a3)
  {
    v9 = [a1 defaultTextStyleForTableArea:{objc_msgSend(a1, "tableAreaForCellID:", v5)}];
    *a3 = [v9 isEqual:v10];
    return v10;
  }

  return result;
}

uint64_t TSTTableNumberOfPopulatedCellsInRows(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  if (!a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UInt32 TSTTableNumberOfPopulatedCellsInRows(TSTTableModel *, TSURowIndex, TSUColumnRowCount)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2615, @"Invalid count argument in TSTTableNumberPopulatedCellsInColumns"}];
  }

  v8 = *(a1 + 72);
  v9 = v3 + a2;
  if (v8 <= a2 || v9 > v8)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UInt32 TSTTableNumberOfPopulatedCellsInRows(TSTTableModel *, TSURowIndex, TSUColumnRowCount)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2616, @"Bounds violation in TSTTableNumberPopulatedCellsInColumns"}];
  }

  if (v3)
  {
    v3 = 0;
    do
    {
      v13 = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a2, 0, 0);
      if (v13)
      {
        v3 = v3 + *(v13 + 34);
      }

      LOWORD(a2) = a2 + 1;
    }

    while (v9 > a2);
  }

  return v3;
}

uint64_t TSTTableNumberOfPopulatedCellsInColumns(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  if (!a3)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UInt32 TSTTableNumberOfPopulatedCellsInColumns(TSTTableModel *, TSUColumnIndex, TSUColumnRowCount)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2632, @"Invalid count argument in TSTTableNumberPopulatedCellsInColumns"}];
  }

  v8 = *(a1 + 74);
  v9 = v3 + a2;
  if (a2 >= v8 || v9 > v8)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UInt32 TSTTableNumberOfPopulatedCellsInColumns(TSTTableModel *, TSUColumnIndex, TSUColumnRowCount)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2633, @"Bounds violation in TSTTableNumberPopulatedCellsInColumns"}];
  }

  if (v3)
  {
    v3 = 0;
    do
    {
      v13 = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a2, 0, 0);
      if (v13)
      {
        v3 = v3 + *(v13 + 34);
      }

      LOBYTE(a2) = a2 + 1;
    }

    while (v9 > a2);
  }

  return v3;
}

uint64_t TSTTableCellLeftOfCell(void *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 24;
  v5 = TSTTableDataStoreMergeRangeAtCellID(a1[6], a2);
  if (v5 == 0xFFFF || (v5 & 0xFF0000) == 0xFF0000)
  {
    v7 = v2;
  }

  else if ((v5 & 0xFFFF00000000) == 0 || HIWORD(v5) == 0)
  {
    v7 = v2;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 >> 16;
  v9 = [a1 range] >> 16;
  while (v8 > v9)
  {
    LOBYTE(v8) = v8 - 1;
    if (!TSTHidingActionForColumn(a1, v8))
    {
      return (v8 << 16) | (v4 << 24) | v2;
    }
  }

  LODWORD(v4) = 0;
  LOBYTE(v8) = -1;
  LOWORD(v2) = -1;
  return (v8 << 16) | (v4 << 24) | v2;
}

uint64_t TSTTableCellRightOfCell(void *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = a2 >> 24;
  v6 = TSTTableDataStoreMergeRangeAtCellID(a1[6], a2);
  if (v6 != 0xFFFF && (v6 & 0xFF0000) != 0xFF0000 && HIWORD(v6) != 0 && (v6 & 0xFFFF00000000) != 0)
  {
    LODWORD(v4) = HIDWORD(v6) + WORD1(v6) + 255;
  }

  v9 = [a1 range];
  v10 = HIDWORD(v9) + WORD1(v9) + 255;
  while (v4 < v10)
  {
    LOBYTE(v4) = v4 + 1;
    if (!TSTHidingActionForColumn(a1, v4))
    {
      return (v4 << 16) | (v5 << 24) | v2;
    }
  }

  LODWORD(v5) = 0;
  LOBYTE(v4) = -1;
  v2 = -1;
  return (v4 << 16) | (v5 << 24) | v2;
}

uint64_t TSTTableCellAboveCell(void *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = TSTTableDataStoreMergeRangeAtCellID(a1[6], a2);
  if (v5 != 0xFFFF && (v5 & 0xFF0000) != 0xFF0000 && (v5 & 0xFFFF00000000) != 0 && HIWORD(v5) != 0)
  {
    v2 = v5;
  }

  v7 = [a1 range];
  while (v2 > v7)
  {
    if (!TSTHidingActionForRow(a1, --v2))
    {
      return v2 | (v4 << 16);
    }
  }

  LOWORD(v4) = 255;
  v2 = -1;
  return v2 | (v4 << 16);
}

uint64_t TSTTableCellBelowCell(void *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = TSTTableDataStoreMergeRangeAtCellID(a1[6], a2);
  if (v5 != 0xFFFF && (v5 & 0xFF0000) != 0xFF0000 && HIWORD(v5) != 0 && (v5 & 0xFFFF00000000) != 0)
  {
    v2 = v5 + HIWORD(v5) - 1;
  }

  v8 = [a1 range];
  v9 = v8 + HIWORD(v8) - 1;
  while (v2 < v9)
  {
    if (!TSTHidingActionForRow(a1, ++v2))
    {
      return v2 | (v4 << 16);
    }
  }

  LOWORD(v4) = 255;
  v2 = -1;
  return v2 | (v4 << 16);
}

uint64_t TSTTableColumnLeftOfColumn(void *a1, unsigned __int8 a2)
{
  v4 = [a1 range] >> 16;
  while (a2 > v4)
  {
    if (!TSTHidingActionForColumn(a1, --a2))
    {
      return a2;
    }
  }

  return -1;
}

uint64_t TSTTableColumnRightOfColumn(void *a1, unsigned __int8 a2)
{
  v4 = [a1 range];
  v5 = HIDWORD(v4) + WORD1(v4) + 255;
  while (a2 < v5)
  {
    if (!TSTHidingActionForColumn(a1, ++a2))
    {
      return a2;
    }
  }

  return -1;
}

uint64_t TSTTableRowAboveRow(void *a1, unsigned __int16 a2)
{
  v4 = [a1 range];
  while (a2 > v4)
  {
    if (!TSTHidingActionForRow(a1, --a2))
    {
      return a2;
    }
  }

  return -1;
}

uint64_t TSTTableRowBelowRow(void *a1, unsigned __int16 a2)
{
  v4 = [a1 range];
  v5 = v4 + HIWORD(v4) - 1;
  while (a2 < v5)
  {
    if (!TSTHidingActionForRow(a1, ++a2))
    {
      return a2;
    }
  }

  return -1;
}

double TSTTableHeightOfRow(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a2 == 0xFFFF)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTTableHeightOfRow(TSTTableModel *, TSURowIndex, BOOL *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2799, @"Bad row index!"}];
  }

  v8 = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a2, 0, 0);
  if (v8 && *(v8 + 24) != 0.0)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v9 = v8 + 24;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    v9 = a1 + 96;
  }

  return *v9;
}

double TSTTableWidthOfColumn(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a2 == 255)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTTableWidthOfColumn(TSTTableModel *, TSUColumnIndex, BOOL *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2819, @"Bad column index!"}];
  }

  v8 = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a2, 0, 0);
  if (v8 && *(v8 + 24) != 0.0)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v9 = v8 + 24;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    v9 = a1 + 104;
  }

  return *v9;
}

double *TSTTableSetHeightOfRow(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 == 0xFFFF)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableSetHeightOfRow(TSTTableModel *, TSURowIndex, CGFloat)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2839, @"Bad row index!"}];
  }

  if (a3 < 8.0 && a3 != 0.0)
  {
    a3 = 8.0;
  }

  result = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a2, 1, 1);
  v10 = result;
  if (!result)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableSetHeightOfRow(TSTTableModel *, TSURowIndex, CGFloat)"}];
    result = [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2849, @"invalid nil value for '%s'", "hdr"}];
  }

  v10[3] = a3;
  if (v10[3] == 0.0 && !*(v10 + 17) && !*(v10 + 1) && !*(v10 + 2) && !*(v10 + 32))
  {
    v13 = *(a1 + 48);

    return TSTTableDataStoreRemoveRowHeadersAtIndex(v13, a2, 1);
  }

  return result;
}

double *TSTTableSetWidthOfColumn(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 == 255)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableSetWidthOfColumn(TSTTableModel *, TSUColumnIndex, CGFloat)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2860, @"Bad column index!"}];
  }

  if (a3 < 8.0 && a3 != 0.0)
  {
    a3 = 8.0;
  }

  result = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a2, 1, 1);
  v10 = result;
  if (!result)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableSetWidthOfColumn(TSTTableModel *, TSUColumnIndex, CGFloat)"}];
    result = [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 2868, @"invalid nil value for '%s'", "hdr"}];
  }

  v10[3] = a3;
  if (v10[3] == 0.0 && !*(v10 + 17) && !*(v10 + 1) && !*(v10 + 2) && !*(v10 + 32))
  {
    v13 = *(a1 + 48);

    return TSTTableDataStoreRemoveColumnHeadersAtIndex(v13, a2, 1);
  }

  return result;
}

void TSTTableComputeDefaultRowHeight(double *a1)
{
  TSTTableComputeDefaultFontHeight(a1, 0);
  v3 = v2;
  if (a1)
  {
    v4 = a1[12];
  }

  else
  {
    v4 = 10.0;
  }

  if (v3 > v4)
  {
    [a1 willModify];
    a1[12] = v3;
  }
}

void *TSTTableComputeDefaultFontHeight(void *a1, uint64_t a2)
{
  result = [a1 defaultCellForTableArea:a2];
  if (result)
  {
    v3 = *(result + 7);
    v4 = [*(result + 5) valueForProperty:904];
    FontForStyle = TSWPFastCreateFontForStyle(0, v3, 0x64uLL);
    TSWPFontGetLineHeight(FontForStyle);
    [v4 topInset];
    return [v4 bottomInset];
  }

  return result;
}

uint64_t TSTTableInsertRows(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  [a1 willModify];
  result = TSTTableDataStoreInsertRows(*(a1 + 48), a2, a3, v4);
  if (!result)
  {
    *(a1 + 72) += a3;
  }

  return result;
}

uint64_t TSTTableInsertColumns(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  [a1 willModify];
  TSTTableDataStoreInsertColumns(*(a1 + 48), v6, a3, v4);
  *(a1 + 74) += a3;
  return 0;
}

uint64_t TSTTableRemoveRowsIgnoringSize(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  [a1 willModify];
  v10 = [a1 range];
  if (*(a1 + 84))
  {
    v6 = a2;
    do
    {
      if (a3 + a2 <= v6)
      {
        break;
      }

      if (!*(a1 + 88) && !*(a1 + 92))
      {
        v7 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUError TSTTableRemoveRowsIgnoringSize(TSTTableModel *, TSURowIndex, TSUColumnRowCount, BOOL)"}];
        [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3053, @"Either mNumberOfUserHiddenRows or mNumberOfFilteredRows should be larger than 0 when mNumberOfHiddenRows is larger than 0"}];
      }

      if (TSTHidingActionForRow(a1, v6))
      {
        --*(a1 + 88);
        --*(a1 + 84);
      }

      if ((TSTHidingActionForRow(a1, v6) & 2) != 0)
      {
        --*(a1 + 92);
        --*(a1 + 84);
      }

      ++v6;
    }

    while (*(a1 + 84));
  }

  [a1 p_clearDataListEntriesInRange:v10 & 0xFFFFFFFF0000 | (a3 << 48) | a2 ignoreSizeChecks:{a4, v10}];
  TSTTableDataStoreRemoveRows(*(a1 + 48), a2, a3);
  *(a1 + 72) -= a3;
  return 0;
}

uint64_t TSTTableRemoveColumnsIgnoringSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 willModify];
  v8 = [a1 range];
  if (*(a1 + 86))
  {
    v9 = a2;
    do
    {
      if (a3 + a2 <= v9)
      {
        break;
      }

      if (TSTHidingActionForColumn(a1, v9))
      {
        --*(a1 + 90);
        --*(a1 + 86);
      }

      ++v9;
    }

    while (*(a1 + 86));
  }

  [a1 p_clearDataListEntriesInRange:v8 & 0xFFFF0000FF000000 | (a3 << 32) | (a2 << 16) | v8 ignoreSizeChecks:a4];
  TSTTableDataStoreRemoveColumns(*(a1 + 48), a2, a3);
  *(a1 + 74) -= a3;
  return 0;
}

void TSTTableUpdateMergeRegionsRightOrBelowAndIncludingIndex(uint64_t *a1, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (!a1 || !a3)
  {
    return;
  }

  v8 = a1;
  v37 = a3;
  if (a4)
  {
    v9 = ([a1 numberOfColumns] - a2);
    v10 = [v8 numberOfRows];
    if (v9 >= 0xFF)
    {
      v11 = 255;
    }

    else
    {
      v11 = v9;
    }

    v12 = (v10 << 48) | (v11 << 32) | (a2 << 16);
  }

  else
  {
    v13 = [a1 numberOfColumns];
    v14 = [v8 numberOfRows];
    if (v13 >= 0xFF)
    {
      v15 = 255;
    }

    else
    {
      v15 = v13;
    }

    v12 = (v15 << 32) | ((v14 - a2) << 48) | a2;
  }

  v16 = TSTTableDataStoreMergeRangesForCellRange(v8[6], v12);
  *&v38[8] = 0;
  v39 = 0;
  v40 = 0;
  v17 = [v16 iterator];
  *v38 = a5 ^ 1u;
  v36 = v8;
  while ([v17 hasNextMergeRegion])
  {
    v18 = [v17 nextMergeRegion];
    v19 = v18;
    if (a4)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18 >= a2;
    }

    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = *v38;
    }

    if (v21 != 1 || a4 == 1 && BYTE2(v18) >= a2)
    {
      TSTTableDataStoreUnmerge(v8[6], v18);
      v22 = v19 >> 16;
      v23 = HIDWORD(v19);
      v24 = HIWORD(v19);
      if (a4)
      {
        if (a2 > BYTE2(v19) && a2 <= (BYTE4(v19) + BYTE2(v19) - 1))
        {
          LOWORD(v23) = WORD2(v19) + v37;
        }

        else
        {
          LOBYTE(v22) = BYTE2(v19) + v37;
        }
      }

      else
      {
        if (a2 <= v19 || a2 > (v19 + HIWORD(v19) - 1))
        {
          v25 = v19 + v37;
          goto LABEL_33;
        }

        v24 = (v24 + v37);
      }

      v25 = v19;
LABEL_33:
      v26 = v19 & 0xFF000000;
      v27 = v39;
      if (v39 >= v40)
      {
        v29 = (v39 - *&v38[4]) >> 3;
        if ((v29 + 1) >> 61)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        v30 = (v40 - *&v38[4]) >> 2;
        if (v30 <= v29 + 1)
        {
          v30 = v29 + 1;
        }

        if (v40 - *&v38[4] >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (v31)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v38[4], v31);
        }

        v32 = (8 * v29);
        *v32 = (v23 << 32) | (v24 << 48) | (v22 << 16) | v25 | v26;
        v28 = 8 * v29 + 8;
        v33 = (v32 - (v39 - *&v38[4]));
        memcpy(v33, *&v38[4], v39 - *&v38[4]);
        v34 = *&v38[4];
        *&v38[4] = v33;
        v39 = v28;
        v40 = 0;
        if (v34)
        {
          operator delete(v34);
        }

        v8 = v36;
      }

      else
      {
        *v39 = (v23 << 32) | (v24 << 48) | (v22 << 16) | v25 | v26;
        v28 = (v27 + 1);
      }

      v39 = v28;
    }
  }

  v35 = *&v38[4];
  if (*&v38[4] != v39)
  {
    do
    {
      TSTTableDataStoreMerge(v8[6], *v35++);
    }

    while (v35 != v39);
    v35 = *&v38[4];
  }

  if (v35)
  {
    v39 = v35;
    operator delete(v35);
  }
}

void sub_26C9CAF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSTTableMoveMergeRegionsWithColumnsOrRows(void *a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  if (a3 >= a2)
  {
    v7 = a3 - a2;
  }

  else
  {
    v7 = a2 - a3 + a4;
  }

  if (a3 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
  }

  if (a3 >= a2)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  if (a5)
  {
    v10 = [a1 numberOfRows];
    if (v7 >= 0xFFu)
    {
      v11 = 255;
    }

    else
    {
      v11 = v7;
    }

    v12 = (v11 << 32) | (v10 << 48) | (v8 << 16);
  }

  else
  {
    v13 = [a1 numberOfColumns];
    if (v13 >= 0xFF)
    {
      v14 = 255;
    }

    else
    {
      v14 = v13;
    }

    v12 = (v7 << 48) | (v14 << 32) | v8;
  }

  v15 = &OBJC_IVAR___TSDButtonKnob_mEnabled;
  result = TSTTableDataStoreMergeRangesForCellRange(a1[6], v12);
  if (result)
  {
    v17 = result;
    v18 = [result iterator];
    if ([v18 hasNextMergeRegion])
    {
      do
      {
        TSTTableDataStoreUnmerge(a1[6], [v18 nextMergeRegion]);
      }

      while (([v18 hasNextMergeRegion] & 1) != 0);
    }

    v19 = [v17 iterator];
    result = [v19 hasNextMergeRegion];
    if (result)
    {
      v40 = a3 - v9 - a2;
      v44 = v8 + v7;
      v42 = a4 + a2;
      v43 = v8;
      do
      {
        v20 = v15;
        v21 = [v19 nextMergeRegion];
        v22 = v21;
        v23 = v21 >> 16;
        if (a5)
        {
          v24 = BYTE2(v21);
          if (BYTE2(v21) < v8)
          {
            v25 = [MEMORY[0x277D6C290] currentHandler];
            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableMoveMergeRegionsWithColumnsOrRows(TSTTableModel *, TSUColumnOrRowIndex, TSUColumnOrRowIndex, TSUColumnRowCount, TSTCommandDirection)"}];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"];
            v27 = v8;
            LODWORD(v8) = v43;
            [v25 handleFailureInFunction:v27 file:v26 lineNumber:3223 description:@"Merged cell range started before first row moved."];
          }

          if (v24 + WORD2(v22) > v44)
          {
            v28 = [MEMORY[0x277D6C290] currentHandler];
            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableMoveMergeRegionsWithColumnsOrRows(TSTTableModel *, TSUColumnOrRowIndex, TSUColumnOrRowIndex, TSUColumnRowCount, TSTCommandDirection)"}];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"];
            v30 = v8;
            LODWORD(v8) = v43;
            [v28 handleFailureInFunction:v30 file:v29 lineNumber:3224 description:@"Merged cell range ended after last row moved."];
          }

          if (v24 < a2 || v24 >= v42)
          {
            if (a3 < a2)
            {
              LOBYTE(v23) = v23 + a4;
            }

            else
            {
              LOBYTE(v23) = v23 - a4;
            }
          }

          else
          {
            LOBYTE(v23) = v40 + v23;
          }

          v38 = v22;
        }

        else
        {
          v31 = v21;
          if (v21 < v8)
          {
            v8 = [MEMORY[0x277D6C290] currentHandler];
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableMoveMergeRegionsWithColumnsOrRows(TSTTableModel *, TSUColumnOrRowIndex, TSUColumnOrRowIndex, TSUColumnRowCount, TSTCommandDirection)"}];
            v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"];
            v34 = v8;
            LODWORD(v8) = v43;
            [v34 handleFailureInFunction:v32 file:v33 lineNumber:3208 description:@"Merged cell range started before first row moved."];
          }

          if (v31 + HIWORD(v22) > v44)
          {
            v35 = [MEMORY[0x277D6C290] currentHandler];
            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTTableMoveMergeRegionsWithColumnsOrRows(TSTTableModel *, TSUColumnOrRowIndex, TSUColumnOrRowIndex, TSUColumnRowCount, TSTCommandDirection)"}];
            v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"];
            v37 = v8;
            LODWORD(v8) = v43;
            [v35 handleFailureInFunction:v37 file:v36 lineNumber:3209 description:@"Merged cell range ended after last row moved."];
          }

          if (v31 < a2 || v31 >= v42)
          {
            v38 = v22 - a4;
            if (a3 < a2)
            {
              v38 = v22 + a4;
            }
          }

          else
          {
            v38 = v40 + v22;
          }
        }

        v15 = v20;
        TSTTableDataStoreMerge(*(a1 + v20[961]), v22 & 0xFFFFFFFFFF000000 | v38 | (v23 << 16));
        result = [v19 hasNextMergeRegion];
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void TSTTableMoveRows(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  [a1 willModify];
  TSTTableDataStoreMoveRows(a1[6], v6, v5, v4);
}

void TSTTableMoveColumns(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  [a1 willModify];
  TSTTableDataStoreMoveColumns(a1[6], v6, v5, a4);
}

void TSTTableSwapRows(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 willModify];
  v6 = a1[6];

  TSTTableDataStoreSwapRows(v6, a2, a3);
}

uint64_t TSTHidingActionForRow(uint64_t a1, uint64_t a2)
{
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  if (!*(a1 + 84))
  {
    if (*(a1 + 88) || *(a1 + 92))
    {
      v3 = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTHidingAction TSTHidingActionForRow(TSTTableModel *, TSURowIndex)"}];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3279, @"Both mNumberOfUserHiddenRows and mNumberOfFilteredRows should equal to 0 when mNumberOfHiddenRows is equal to 0"}];
    }

    return 0;
  }

  result = TSTTableDataStoreHeaderInfoForRow(*(a1 + 48), a2, 0, 0);
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t TSTHidingActionForColumn(uint64_t a1, uint64_t a2)
{
  if (a2 == 255)
  {
    return 0;
  }

  if (!*(a1 + 86))
  {
    if (*(a1 + 90))
    {
      v3 = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTHidingAction TSTHidingActionForColumn(TSTTableModel *, TSUColumnIndex)"}];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3300, @"mNumberOfUserHiddenColumns should equal to 0 when mNumberOfHiddenColumns is equal to 0"}];
    }

    return 0;
  }

  result = TSTTableDataStoreHeaderInfoForColumn(*(a1 + 48), a2, 0, 0);
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t TSTTableNumHiddenRowsInCellRange(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = (HIWORD(a2) + a2);
  if (v3 <= a2)
  {
    return 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (TSTHidingActionForRow(a1, v2))
      {
        ++v5;
      }

      ++v2;
    }

    while (v3 > v2);
  }

  return v5;
}

uint64_t TSTTableNumHiddenColumnsInCellRange(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 16;
  v3 = (BYTE2(a2) + BYTE4(a2));
  if (v3 <= BYTE2(a2))
  {
    return 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (TSTHidingActionForColumn(a1, v2))
      {
        ++v5;
      }

      LOBYTE(v2) = v2 + 1;
    }

    while (v3 > v2);
  }

  return v5;
}

TSTEphemeralCellMap *TSTEphemeralCellMapForOrderedCellIDs(uint64_t a1, _WORD *a2, int a3)
{
  if (!a2)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTEphemeralCellMap *TSTEphemeralCellMapForOrderedCellIDs(TSTTableModel *, TSTCellID *, int)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3425, @"No cell id array given to TSTEphemeralCellMapForOrderedCellIDs!"}];
  }

  if (a3 <= 0)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTEphemeralCellMap *TSTEphemeralCellMapForOrderedCellIDs(TSTTableModel *, TSTCellID *, int)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3426, @"Need at least one cell ID in TSTEphemeralCellMapForOrderedCellIDs."}];
  }

  v10 = [[TSTEphemeralCellMap alloc] initWithCapacity:a3];
  v11 = *a2;
  v12 = *&a2[2 * a3 - 2];
  v13 = v12 >> 16;
  v14 = 0x10000;
  v15 = 1;
  if (*a2 == 0xFFFF || (v11 & 0xFF0000) == 0xFF0000)
  {
    LODWORD(v11) = *&a2[2 * a3 - 2];
    goto LABEL_27;
  }

  if (v12 == 0xFFFF || (v12 & 0xFF0000) == 0xFF0000)
  {
    v13 = v11 >> 16;
    v14 = 0x10000;
    goto LABEL_15;
  }

  v16 = v11 >> 16;
  if (*a2 == v12)
  {
    v17 = BYTE2(*a2);
    if (BYTE2(v11) <= BYTE2(v12) && BYTE2(v11) >= BYTE2(v12))
    {
      v14 = 0x10000;
      v15 = 1;
      v13 = v11 >> 16;
LABEL_15:
      LODWORD(v12) = *a2;
      goto LABEL_27;
    }
  }

  else
  {
    v17 = BYTE2(*a2);
  }

  v18 = *&a2[2 * a3 - 2];
  if (BYTE2(v12) <= BYTE2(v11))
  {
    LOBYTE(v16) = BYTE2(*&a2[2 * a3 - 2]);
  }

  if (BYTE2(v12) >= v17)
  {
    v17 = BYTE2(*&a2[2 * a3 - 2]);
  }

  if (v18 <= v11)
  {
    v19 = *&a2[2 * a3 - 2];
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= v11)
  {
    LODWORD(v11) = *&a2[2 * a3 - 2];
  }

  v20 = v19;
  LOBYTE(v13) = v16;
  LODWORD(v11) = v11 - v19;
  LOWORD(v15) = v17 - v16 + 1;
  v14 = (v11 << 16) + 0x10000;
  v15 = v15;
  LOWORD(v11) = v20;
  LODWORD(v12) = 0;
LABEL_27:
  v21 = v12 & 0xFF000000 | ((v14 | v15) << 32) | (v13 << 16) | v11;
  v22 = [[TSTCellIterator alloc] initWithTableModel:a1 range:v21];
  if (a3 >= 1)
  {
    v23 = 0;
    do
    {
      if (!TSTCellIteratorGetNextCell(v22, v25))
      {
        break;
      }

      if (((v26 ^ *&a2[2 * v23]) & 0xFFFFFF) == 0)
      {
        v21 = v21 & 0xFFFFFFFF00000000 | v26;
        [(TSTEphemeralCellMap *)v10 addCell:v27 andCellID:v21];
        ++v23;
      }
    }

    while (v23 < a3);
  }

  return v10;
}

BOOL TSTTableHasRowHiddenForActionInRange(_WORD *a1, unint64_t a2, int a3)
{
  if (!a1[42])
  {
    return 0;
  }

  v4 = a2;
  v6 = HIWORD(a2);
  if (!a1[44] && !a1[46])
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSTTableHasRowHiddenForActionInRange(TSTTableModel *, TSTCellRange, TSTHidingAction)"}];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableModel.mm"), 3587, @"Either mNumberOfUserHiddenRows or mNumberOfFilteredRows should be larger than 0 when mNumberOfHiddenRows is larger than 0"}];
  }

  v9 = v6 + v4;
  do
  {
    v10 = v9 > v4;
    if (v9 <= v4)
    {
      break;
    }

    v11 = TSTHidingActionForRow(a1, v4++);
  }

  while ((v11 & a3) == 0);
  return v10;
}
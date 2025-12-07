double sub_2211B93F8(void *a1, double *a2)
{
  v3 = a1;
  v7 = v3;
  if (v3)
  {
    v8 = [TSTLayout alignedStrokeFrame]_0(v3, v4, v5, v6);
    v85 = v9;
    v86 = v10;
    v11 = v8;
    v13 = v12;
    v17 = sub_2211B877C(v7, v14, v15, v16);
    v21 = objc_msgSend_spaceBundle(v7, v18, v19, v20);
    v25 = objc_msgSend_space(v21, v22, v23, v24);

    v26 = sub_2211B44A8(v7);
    v30 = objc_msgSend_layoutEngine(v7, v27, v28, v29);
    isDynamicallyRowTabResizing = objc_msgSend_isDynamicallyRowTabResizing(v30, v31, v32, v33);

    if (isDynamicallyRowTabResizing)
    {
      v38 = objc_msgSend_layoutEngine(v7, v35, v36, v37);
      objc_msgSend_dynamicRowTabSize(v38, v39, v40, v41);
      v86 = v42;
    }

    v87 = 0.0;
    objc_msgSend_tabsRowWidthAndOptionalLeftGap_(v7, v35, &v87, v37);
    v84 = v43;
    v82 = v13;
    v83 = v11;
    if (objc_msgSend_layoutDirectionIsLeftToRight(v7, v44, v45, v46))
    {
      v50 = v11 - (v84 + 10.0) / v17;
    }

    else
    {
      v88.origin.x = v11;
      v88.origin.y = v85;
      v88.size.height = v86;
      v88.size.width = v13;
      v50 = 10.0 / v17 + CGRectGetMaxX(v88);
    }

    v52 = sub_2211B8FA4(v7, v47, v48, v49);
    rect = v53;
    v54 = v52;
    v56 = v55;
    v58 = v57;
    v65 = v26 + v86;
    v66 = v85 - v26;
    v67 = v84 / v17;
    if (objc_msgSend_layoutDirectionIsLeftToRight(v7, v59, v60, v61))
    {
      v68 = v87 / v17;
      if (v50 < v54 + v87 / v17)
      {
        v89.size.width = v82;
        v89.origin.x = v83;
        v89.origin.y = v85;
        v89.size.height = v86;
        MaxX = CGRectGetMaxX(v89);
        if (v54 < MaxX)
        {
          MaxX = v54;
        }

        v68 = v87 / v17;
        v50 = MaxX + v87 / v17;
      }
    }

    else
    {
      v90.origin.x = v50;
      v90.origin.y = v66;
      v80 = v84 / v17;
      v90.size.width = v84 / v17;
      v90.size.height = v65;
      v70 = CGRectGetMaxX(v90);
      v91.origin.x = v54;
      v91.origin.y = v56;
      v91.size.width = rect;
      v91.size.height = v58;
      v71 = CGRectGetMaxX(v91);
      v68 = v87 / v17;
      v72 = v70 <= v71 - v87 / v17;
      v67 = v84 / v17;
      if (!v72)
      {
        v92.origin.x = v54;
        v92.origin.y = v56;
        v92.size.width = rect;
        v92.size.height = v58;
        v50 = CGRectGetMaxX(v92) - (v84 + v87) / v17;
        v68 = v87 / v17;
        v67 = v84 / v17;
      }
    }

    if (v50 < v54 + v68)
    {
      v93.size.width = v82;
      v93.origin.x = v83;
      v93.origin.y = v85;
      v93.size.height = v86;
      v73 = CGRectGetMaxX(v93);
      if (v54 < v73)
      {
        v73 = v54;
      }

      v50 = v73 + v87 / v17;
    }

    v74 = v66 + -31.0 / v17;
    if (v74 >= v56)
    {
      v75 = v65;
    }

    else
    {
      v75 = v65 - (v56 - v74);
    }

    if (v74 >= v56)
    {
      v76 = 0.0;
    }

    else
    {
      v76 = v56 - v74;
    }

    if (v75 <= 0.0)
    {
      v51 = *MEMORY[0x277CBF3A0];
      if (!a2)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
      v77 = v66 + v56 - v74;
      if (v74 >= v56)
      {
        v77 = v66;
      }

      objc_msgSend_canvasRectForLayoutRect_(v25, v62, v63, v64, v50, v77, v67, *&v80);
      v51 = v78;
      if (!a2)
      {
        goto LABEL_32;
      }
    }

    *a2 = v76;
    goto LABEL_32;
  }

  v51 = *MEMORY[0x277CBF3A0];
LABEL_33:

  return v51;
}

double sub_2211B9750(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2211B4394(a1, a2, a3, a4);
  objc_msgSend_frame(v4, v5, v6, v7);
  v9 = v8;

  return v9;
}

double sub_2211B985C(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_spaceBundle(v1, v2, v3, v4);
  v9 = objc_msgSend_space(v5, v6, v7, v8);

  v13 = v1[45];
  if (*(v1 + 425) == 1)
  {
    v14 = sub_2211B817C(v1);
  }

  else
  {
    v14 = *MEMORY[0x277CBF348];
  }

  if ((objc_msgSend_layoutDirectionIsLeftToRight(v1, v10, v11, v12) & 1) == 0)
  {
    v14 = v1[47] - v14;
  }

  objc_msgSend_canvasStrokeFrame(v9, v15, v16, v17);
  sub_2211B44A8(v1);

  return v13 + v14;
}

double sub_2211B996C(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_spaceBundle(v1, v2, v3, v4);
  v9 = objc_msgSend_space(v5, v6, v7, v8);

  if (v1[425] == 1)
  {
    v13 = sub_2211B817C(v1);
  }

  objc_msgSend_canvasStrokeFrame(v9, v10, v11, v12, v13);
  v15 = v14;
  sub_2211B44A8(v1);

  return v15;
}

double sub_2211B9A64(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_spaceBundle(v1, v2, v3, v4);
  v9 = objc_msgSend_space(v5, v6, v7, v8);

  v14 = v1[45];
  v13 = v1[46];
  if (*(v1 + 425) == 1)
  {
    v15 = sub_2211B817C(v1);
    v17 = v16;
  }

  else
  {
    v15 = *MEMORY[0x277CBF348];
    v17 = *(MEMORY[0x277CBF348] + 8);
  }

  if ((objc_msgSend_layoutDirectionIsLeftToRight(v1, v10, v11, v12) & 1) == 0)
  {
    v15 = v1[47] - v15;
  }

  v18 = sub_2211B44A8(v1);
  objc_msgSend_canvasStrokeFrame(v9, v19, v20, v21);
  v25 = v14 + v15;
  if (v25 < v26)
  {
    objc_msgSend_canvasStrokeFrame(v9, v22, v23, v24);
    v25 = v27;
  }

  objc_msgSend_canvasStrokeFrame(v9, v22, v23, v24);
  if (v13 + v17 + v18 < v31)
  {
    objc_msgSend_canvasStrokeFrame(v9, v28, v29, v30);
  }

  return v25;
}

void sub_2211B9BC4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v6 = objc_msgSend_spaceBundle(v32, v3, v4, v5);
  v10 = objc_msgSend_space(v6, v7, v8, v9);

  v11 = sub_2211B985C(v32);
  objc_msgSend_layoutPointForCanvasPoint_(v10, v12, v13, v14, v11);
  v16 = v15;
  objc_msgSend_alignedStrokeFrame(v10, v17, v18, v19);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (objc_msgSend_layoutDirectionIsLeftToRight(v32, v28, v29, v30))
  {
    v31 = v16 - v21;
    if (v16 - v21 < 0.0)
    {
      v31 = 0.0;
    }
  }

  else
  {
    v34.origin.x = v21;
    v34.origin.y = v23;
    v34.size.width = v25;
    v34.size.height = v27;
    v31 = fmin(v16 - CGRectGetMaxX(v34), 0.0);
  }

  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  CGAffineTransformMakeTranslation(a2, v31, 0.0);
}

void sub_2211B9D04(void *a1@<X0>, CGAffineTransform *a2@<X8>)
{
  v17 = a1;
  v6 = sub_2211B9DC0(v17, v3, v4, v5);
  sub_2211B88A4(v17, v6, v10, v11, v12, v7, v8, v9);
  v14 = *(v17 + 42) - v13;
  if (*(v17 + 425) == 1)
  {
    sub_2211B817C(v17);
    v14 = v14 + v15;
  }

  if (v14 >= 0.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0.0;
  }

  CGAffineTransformMakeTranslation(a2, 0.0, v16);
}

double sub_2211B9DC0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2211B4394(a1, a2, a3, a4);
  objc_msgSend_alignedStrokeFrameForTableNameBorder(v4, v5, v6, v7);
  v9 = v8;

  return v9;
}

void sub_2211B9E30(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v6 = objc_msgSend_spaceBundle(v21, v3, v4, v5);
  v10 = objc_msgSend_space(v6, v7, v8, v9);

  v11 = sub_2211B996C(v21);
  objc_msgSend_layoutPointForCanvasPoint_(v10, v12, v13, v14, v11);
  v16 = v15;
  objc_msgSend_alignedStrokeFrame(v10, v17, v18, v19);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  CGAffineTransformMakeTranslation(a2, 0.0, fmax(v16 - v20, 0.0));
}

void sub_2211B9F18(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v6 = objc_msgSend_spaceBundle(v34, v3, v4, v5);
  v10 = objc_msgSend_space(v6, v7, v8, v9);

  v11 = sub_2211B9A64(v34);
  objc_msgSend_layoutPointForCanvasPoint_(v10, v12, v13, v14, v11);
  v16 = v15;
  v18 = v17;
  objc_msgSend_alignedStrokeFrame(v10, v19, v20, v21);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (objc_msgSend_layoutDirectionIsLeftToRight(v34, v30, v31, v32))
  {
    v33 = v16 - v23;
    if (v16 - v23 < 0.0)
    {
      v33 = 0.0;
    }
  }

  else
  {
    v36.origin.x = v23;
    v36.origin.y = v25;
    v36.size.width = v27;
    v36.size.height = v29;
    v33 = fmin(v16 - CGRectGetMaxX(v36), 0.0);
  }

  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  CGAffineTransformMakeTranslation(a2, v33, fmax(v18 - v25, 0.0));
}

BOOL sub_2211BA064(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_spaceBundle(v1, v2, v3, v4);
  v9 = objc_msgSend_space(v5, v6, v7, v8);

  v10 = v1[41];
  v11 = v1[42];
  v12 = v1[43];
  v13 = v1[44];
  v14 = sub_2211B817C(v1);
  v16 = v15;
  if (objc_msgSend_layoutDirectionIsLeftToRight(v1, v17, v18, v19))
  {
    objc_msgSend_headerColumnsWidth(v9, v20, v21, v22);
    v27 = v10 + v14 + v26;
  }

  else
  {
    objc_msgSend_headerColumnsWidth(v9, v20, v21, v22);
    v27 = v10 - (v14 + v28);
  }

  objc_msgSend_headerRowsHeight(v9, v23, v24, v25);
  v30 = v29;
  v31 = sub_2211B44A8(v1);
  objc_msgSend_canvasStrokeFrame(v9, v32, v33, v34);
  v38.origin.y = v11 + v16 + v30 + v31;
  v38.origin.x = v27;
  v38.size.width = v12;
  v38.size.height = v13;
  v35 = CGRectIntersectsRect(v37, v38);

  return v35;
}

void sub_2211BA16C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_2211BA19C(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v2, v3, v4);
  v9 = objc_msgSend_supportsFrozenHeaders(v5, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_layoutEngine(v1, v10, v11, v12);
    v17 = objc_msgSend_entireHeaderColumnsCellRange(v13, v14, v15, v16);
    isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v13, v18, v17, v18);
    if (sub_2211B4730(v1, v20, v21, v22) && sub_2211B7A08(v1, v23, v24, v25) && sub_2213A2C08(v13))
    {
      v29 = (objc_msgSend_numberOfHeaderColumns(v13, v26, v27, v28) != 0) & (isEntireCellRangeHidden ^ 1u);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

uint64_t TSTLayoutGetTableNameVisible(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 427);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

double sub_2211BA2B8(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_spaceBundle(v1, v2, v3, v4);
  v9 = objc_msgSend_space(v5, v6, v7, v8);
  v13 = sub_2211C042C(v1, v10, v11, v12);
  objc_msgSend_canvasRectForLayoutRect_(v9, v14, v15, v16, v13);
  v18 = v17;

  return v18;
}

uint64_t sub_2211BA370(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v2, v3, v4);
  v9 = objc_msgSend_supportsFrozenHeaders(v5, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_layoutEngine(v1, v10, v11, v12);
    v17 = objc_msgSend_entireHeaderRowsCellRange(v13, v14, v15, v16);
    isEntireCellRangeHidden = objc_msgSend_isEntireCellRangeHidden_(v13, v18, v17, v18);
    if (sub_2211B4730(v1, v20, v21, v22) && sub_2211B7A08(v1, v23, v24, v25) && sub_2213A2C6C(v13))
    {
      v29 = (objc_msgSend_numberOfHeaderRows(v13, v26, v27, v28) != 0) & (isEntireCellRangeHidden ^ 1u);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

double sub_2211BA638(double *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[41];
  v5 = a1[42];
  v6 = a1[43];
  v7 = a1[44];
  v8 = objc_msgSend_spaceBundle(a1, a2, a3, a4);
  v12 = objc_msgSend_space(v8, v9, v10, v11);
  objc_msgSend_layoutRectForCanvasRect_(v12, v13, v14, v15, v4, v5, v6, v7);
  v17 = v16;

  return v17;
}

uint64_t sub_2211BA6F0(void *a1)
{
  v1 = a1;
  v5 = sub_2211B4394(v1, v2, v3, v4);
  v6 = sub_2211BA768(v1, v5);

  return v6;
}

uint64_t sub_2211BA768(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_msgSend_cellRangeVisibleRect(v3, v5, v6, v7);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v15 = 0x7FFF7FFFFFFFLL;
  if (!CGRectIsEmpty(v23) && objc_msgSend_frameHasWidthAndHeight(v4, v12, v13, v14))
  {
    objc_msgSend_layoutRectForCanvasRect_(v4, v16, v17, v18, x, y, width, height);
    v15 = objc_msgSend_rangeIntersectingLayoutRect_(v4, v19, v20, v21);
  }

  return v15;
}

__n128 sub_2211BAC10(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

id sub_2211BAC20(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_tableInfo(v1, v2, v3, v4);
  if (objc_msgSend_repeatingHeaderRowsEnabled(v5, v6, v7, v8))
  {
    v12 = objc_msgSend_numberOfHeaderRows(v5, v9, v10, v11) != 0;
  }

  else
  {
    v12 = 0;
  }

  if (objc_msgSend_repeatingHeaderColumnsEnabled(v5, v9, v10, v11))
  {
    v16 = objc_msgSend_numberOfHeaderColumns(v5, v13, v14, v15) != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_2211B6DA4(v1);
  v19 = v18;
  v20 = sub_2211B6E48(v1);
  v22 = v21;
  v63 = sub_2211B7004(v1);
  v24 = v23;
  v25 = sub_2211B71BC(v1);
  v61 = v26;
  v62 = v25;
  if (!v16)
  {
    goto LABEL_54;
  }

  if (!HIDWORD(v19) || !v19 || !HIDWORD(v22) || !v22)
  {
    goto LABEL_52;
  }

  v27 = v17 & 0xFFFF00000000;
  if (v17 == 0x7FFFFFFFLL && v27 != 0x7FFF00000000)
  {
    goto LABEL_14;
  }

  v33 = v27 != 0x7FFF00000000 && v17 == 0x7FFFFFFF;
  if (v33 || v17 <= v20)
  {
    v34 = v17 + HIDWORD(v19) - 1;
    if (v17 == 0x7FFFFFFF)
    {
      v34 = 0x7FFFFFFF;
    }

    if (v34 >= v20)
    {
      if (v17 != 0x7FFFFFFFLL && v27 == 0x7FFF00000000)
      {
        v31 = v19 + 32766;
        v28 = HIDWORD(v20);
        v29 = 0x7FFF;
        goto LABEL_34;
      }

LABEL_14:
      v28 = HIDWORD(v20);
      v29 = WORD2(v17);
      if (WORD2(v17) > WORD2(v20))
      {
        goto LABEL_52;
      }

      v30 = WORD2(v17) == 0x7FFF || v19 == 0;
      v31 = v19 - 1 + WORD2(v17);
      v32 = v30 ? 0x7FFF : v19 - 1 + WORD2(v17);
      if (v32 < WORD2(v20))
      {
        goto LABEL_52;
      }

LABEL_34:
      if (v29 == 0x7FFF || v19 == 0)
      {
        v36 = 0x7FFF;
      }

      else
      {
        v36 = v31;
      }

      v37 = v28;
      v38 = v22 + v28 - 1;
      if (v37 == 0x7FFF || v22 == 0)
      {
        v38 = 0x7FFF;
      }

      if (v36 < v38)
      {
        goto LABEL_52;
      }

      v40 = v17 + HIDWORD(v19) - 1;
      if (v17 == 0x7FFFFFFF)
      {
        v40 = 0x7FFFFFFF;
      }

      v41 = v20 == 0x7FFFFFFF ? 0x7FFFFFFF : v20 + HIDWORD(v22) - 1;
      if (v40 < v41)
      {
        goto LABEL_52;
      }

LABEL_54:
      v42 = 0;
      if (!v12)
      {
        goto LABEL_102;
      }

      goto LABEL_55;
    }
  }

LABEL_52:
  v42 = objc_msgSend_region_addingRange_(TSTCellRegion, v26, 0, v20, v22);
  if (!v12)
  {
    goto LABEL_102;
  }

LABEL_55:
  if (HIDWORD(v19) && v19 && HIDWORD(v24) && v24)
  {
    v43 = v17 & 0xFFFF00000000;
    if (v17 != 0x7FFFFFFFLL || v43 == 0x7FFF00000000)
    {
      v49 = v43 != 0x7FFF00000000 && v17 == 0x7FFFFFFF;
      if (!v49 && v17 > v63)
      {
        goto LABEL_99;
      }

      v50 = v17 + HIDWORD(v19) - 1;
      if (v17 == 0x7FFFFFFF)
      {
        v50 = 0x7FFFFFFF;
      }

      if (v50 < v63)
      {
        goto LABEL_99;
      }

      if (v17 != 0x7FFFFFFFLL && v43 == 0x7FFF00000000)
      {
        v47 = v19 + 32766;
        v44 = HIDWORD(v63);
        v45 = 0x7FFF;
        goto LABEL_81;
      }
    }

    v44 = HIDWORD(v63);
    v45 = WORD2(v17);
    if (WORD2(v17) <= WORD2(v63))
    {
      v46 = WORD2(v17) == 0x7FFF || v19 == 0;
      v47 = v19 - 1 + WORD2(v17);
      v48 = v46 ? 0x7FFF : v19 - 1 + WORD2(v17);
      if (v48 >= WORD2(v63))
      {
LABEL_81:
        if (v45 == 0x7FFF || v19 == 0)
        {
          v52 = 0x7FFF;
        }

        else
        {
          v52 = v47;
        }

        v53 = v44;
        v54 = v24 + v44 - 1;
        if (v53 == 0x7FFF || v24 == 0)
        {
          v54 = 0x7FFF;
        }

        if (v52 >= v54)
        {
          v56 = v17 + HIDWORD(v19) - 1;
          if (v17 == 0x7FFFFFFF)
          {
            v56 = 0x7FFFFFFF;
          }

          v57 = v63 == 0x7FFFFFFF ? 0x7FFFFFFF : v63 + HIDWORD(v24) - 1;
          if (v56 >= v57)
          {
            goto LABEL_100;
          }
        }
      }
    }
  }

LABEL_99:
  v58 = objc_msgSend_region_addingRange_(TSTCellRegion, v26, v42, v63, v24);

  v42 = v58;
LABEL_100:
  if (v16)
  {
    v59 = objc_msgSend_region_addingRange_(TSTCellRegion, v26, v42, v62, v61);

    v42 = v59;
  }

LABEL_102:

  return v42;
}

id sub_2211BB074(void *a1)
{
  v54[7] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v5 = objc_msgSend_layoutEngine(v1, v2, v3, v4);
  isDynamicallyRepressingFrozenHeaderRows = objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v5, v6, v7, v8);

  v13 = objc_msgSend_layoutEngine(v1, v10, v11, v12);
  isDynamicallyRepressingFrozenHeaderColumns = objc_msgSend_isDynamicallyRepressingFrozenHeaderColumns(v13, v14, v15, v16);

  if ((isDynamicallyRepressingFrozenHeaderRows | isDynamicallyRepressingFrozenHeaderColumns))
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_2211B7B58(v1, v18, v19, v20);
  }

  v54[0] = v21;
  if (isDynamicallyRepressingFrozenHeaderRows)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_2211B7AFC(v1, v22, v23, v24);
  }

  v54[1] = v25;
  if (isDynamicallyRepressingFrozenHeaderColumns)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_2211B7AA0(v1, v26, v27, v28);
  }

  v54[2] = v29;
  v54[3] = TSTLayoutGetRepeatHeaderCornerSpace(v1, v30, v31, v32);
  v54[4] = TSTLayoutGetRepeatHeaderRowsSpace(v1, v33, v34, v35);
  v54[5] = TSTLayoutGetRepeatHeaderColumnsSpace(v1, v36, v37, v38);
  v54[6] = sub_2211B4394(v1, v39, v40, v41);
  if (isDynamicallyRepressingFrozenHeaderColumns)
  {
    if (isDynamicallyRepressingFrozenHeaderRows)
    {
      goto LABEL_12;
    }

LABEL_33:

    if ((isDynamicallyRepressingFrozenHeaderRows | isDynamicallyRepressingFrozenHeaderColumns))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((isDynamicallyRepressingFrozenHeaderRows & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_12:
  if (((isDynamicallyRepressingFrozenHeaderRows | isDynamicallyRepressingFrozenHeaderColumns) & 1) == 0)
  {
LABEL_13:
  }

LABEL_14:
  v47 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v42, 7, v43);
  for (i = 0; i != 7; ++i)
  {
    v49 = v54[i];
    if (!v49)
    {
      continue;
    }

    v50 = objc_msgSend_layoutSpaceType(v49, v44, v45, v46);
    if (v50 == 1)
    {
      if (!sub_2211B82D0(v1))
      {
        continue;
      }

      v51 = sub_2211B848C(v1);
LABEL_24:
      if ((v51 & 1) == 0)
      {
        continue;
      }

LABEL_25:
      objc_msgSend_addObject_(v47, v44, v54[i], v46);
      continue;
    }

    if (v50 == 2)
    {
      v51 = sub_2211B82D0(v1);
      goto LABEL_24;
    }

    if (v50 != 3 || sub_2211B848C(v1))
    {
      goto LABEL_25;
    }
  }

  for (j = 6; j != -1; --j)
  {
  }

  return v47;
}

void sub_2211BB2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, char a11)
{
  if (v12)
  {
    if (v15)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (v15)
    {
      do
      {
LABEL_4:
        v17 = *(v16 - 1);
        v16 -= 8;
      }

      while (v16 != &a11);

      _Unwind_Resume(a1);
    }
  }

  goto LABEL_4;
}

uint64_t sub_2211BB390(void *a1, CGFloat a2, double a3)
{
  v177 = *MEMORY[0x277D85DE8];
  v158 = a1;
  v156 = sub_2211B4394(v158, v3, v4, v5);
  v153 = sub_2211BB074(v158);
  if (v158 && v158[427] == 1)
  {
    v9 = objc_msgSend_layoutEngine(v158, v6, v7, v8);
    if ((objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v9, v10, v11, v12) & 1) != 0 || !sub_2211BA370(v158))
    {
    }

    else
    {
      v13 = sub_2211B848C(v158);

      if (v13)
      {
        v17 = v158;
        v18 = sub_2211B7AFC(v158, v14, v15, v16);
        if (v18)
        {
          memset(&v175, 0, sizeof(v175));
          sub_2211B9E30(v158, &v175);
          v19 = sub_2211BBD00(v158);
          v21 = v20;
          objc_msgSend_canvasFrame(v18, v22, v23, v24, v19);
          v174 = v175;
          v181 = CGRectApplyAffineTransform(v180, &v174);
          if (a3 < CGRectGetMinY(v181) && a3 > v21)
          {

            v25 = 0x7FFF7FFFFFFFLL;
            goto LABEL_156;
          }
        }
      }
    }
  }

  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  obj = v153;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v170, v176, 16);
  v17 = v158;
  if (v29)
  {
    v30 = *v171;
    v154 = vdupq_lane_s64(*&a2, 0);
    v157 = -1;
    v159 = -1;
    while (1)
    {
      v31 = 0;
      do
      {
        if (*v171 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v170 + 1) + 8 * v31);
        if (v32)
        {
          v33 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v27, *(*(&v170 + 1) + 8 * v31), v28);
          v35 = v33 == -1 || v27 == -1;
          v36 = v35 || v33 > v27;
          v37 = HIDWORD(v33);
          v38 = v27 >> 32;
          v39 = v36 || v37 == 0xFFFFFFFF;
          v40 = v39 || v38 == 0xFFFFFFFF;
          if (!v40 && v37 <= v38)
          {
            v42 = objc_msgSend_layoutSpaceType(v32, v27, v34, v28);
            v45 = v42;
            if (v42)
            {
              if (v42 > 4)
              {
                if ((v42 - 5) >= 2)
                {
                  goto LABEL_63;
                }

                v53 = 1;
LABEL_64:
                v54 = v32;
                v167 = *MEMORY[0x277CBF2C0];
                rect = *(MEMORY[0x277CBF2C0] + 32);
                rect_16 = *(MEMORY[0x277CBF2C0] + 16);
              }

              else
              {
                switch(v42)
                {
                  case 1:
                    sub_2211B9F18(v17, &v174);
                    break;
                  case 2:
                    sub_2211B9BC4(v17, &v174);
                    break;
                  case 3:
                    sub_2211B9E30(v17, &v174);
                    break;
                  default:
LABEL_63:
                    v53 = 0;
                    goto LABEL_64;
                }

                CGAffineTransformInvert(&v175, &v174);
                v167 = *&v175.a;
                v53 = 1;
                v54 = v156;
                rect = *&v175.tx;
                rect_16 = *&v175.c;
              }

              v166 = v54;
              v168 = vaddq_f64(rect, vmlaq_f64(vmulq_n_f64(rect_16, a3), v154, v167));
              if (v17[425] == 1)
              {
                if (v45 == 3)
                {
                  v69 = objc_msgSend_layout(v32, v55, v56, v57);
                  v70 = sub_2211B93F8(v69, 0);
                  v72 = v71;
                  v74 = v73;
                  v76 = v75;

                  v183.origin.x = v70;
                  v183.origin.y = v72;
                  v183.size.width = v74;
                  v183.size.height = v76;
                  v179.x = a2;
                  v179.y = a3;
                  if (CGRectContainsPoint(v183, v179))
                  {
                    v78 = objc_msgSend_layoutController(v17, v55, v77, v57);
                    v82 = objc_msgSend_canvas(v78, v79, v80, v81);
                    isAnchoredAtRight = objc_msgSend_isAnchoredAtRight(v82, v83, v84, v85);
                    v87 = -31.0;
                    if (isAnchoredAtRight)
                    {
                      v87 = 31.0;
                    }

                    rect_16b = v87;

                    v88.f64[1] = v168.f64[1];
                    v88.f64[0] = rect_16b;
                    v168 = v88;
                  }
                }

                else if (v45 == 2)
                {
                  v58 = objc_msgSend_layout(v32, v55, v56, v57);
                  v59 = sub_2211B9064(v58, 0);
                  v61 = v60;
                  v63 = v62;
                  v65 = v64;

                  v182.origin.x = v59;
                  v182.origin.y = v61;
                  v182.size.width = v63;
                  v182.size.height = v65;
                  v178.x = a2;
                  v178.y = a3;
                  v66 = CGRectContainsPoint(v182, v178);
                  v67 = v168.f64[1];
                  v68.f64[0] = v168.f64[0];
                  if (v66)
                  {
                    v67 = -31.0;
                  }

                  v68.f64[1] = v67;
                  v168 = v68;
                }
              }

              v89 = v53;
              v90 = objc_msgSend_gridPointHitByCanvasPoint_tabsViewable_(v166, v55, 0, v57);
              v96 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v91, v32, v92);
              v97 = v93;
              rect_16a = HIDWORD(v90);
              if (v45 == 4)
              {
                objc_msgSend_frame(v156, v93, v94, v95);
                objc_msgSend_canvasRectForLayoutRect_(v156, v98, v99, v100);
                recta = v101;
                v103 = v102;
                v105 = v104;
                v107 = v106;
                objc_msgSend_frame(v32, v108, v109, v110);
                objc_msgSend_canvasRectForLayoutRect_(v32, v111, v112, v113);
                v115 = v114;
                v117 = v116;
                v119 = v118;
                v121 = v120;
                v124 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v122, v32, v123);
                v126 = v125;
                v184.origin.x = v115;
                v184.origin.y = v117;
                v184.size.width = v119;
                v184.size.height = v121;
                if (v168.f64[0] <= CGRectGetMaxX(v184))
                {
                  v185.origin.x = v115;
                  v185.origin.y = v117;
                  v185.size.width = v119;
                  v185.size.height = v121;
                  if (v168.f64[0] >= CGRectGetMinX(v185) || (v186.origin.x = recta, v186.origin.y = v103, v186.size.width = v105, v186.size.height = v107, v168.f64[0] <= CGRectGetMinX(v186)))
                  {
                    v187.origin.x = v115;
                    v187.origin.y = v117;
                    v187.size.width = v119;
                    v187.size.height = v121;
                    if (v168.f64[1] <= CGRectGetMaxY(v187))
                    {
                      if (v90 == -1 && rect_16a != 0xFFFFFFFF && HIDWORD(v124) <= rect_16a && HIDWORD(v126) >= rect_16a)
                      {
                        v137 = 0;
                        v139 = 0;
                        v138 = HIDWORD(v90);
                        v130 = HIDWORD(v90);
                        if ((v89 & 1) == 0)
                        {
                          goto LABEL_115;
                        }
                      }

                      else
                      {
                        if (v126 >= v90)
                        {
                          v130 = 0;
                        }

                        else
                        {
                          v130 = -1;
                        }

                        if (v90 == -1 || v124 > v90)
                        {
                          v130 = -1;
                        }

                        if (rect_16a != 0xFFFFFFFF)
                        {
                          v130 = HIDWORD(v90);
                        }

                        if ((v89 & 1) == 0)
                        {
LABEL_113:
                          v139 = v90;
LABEL_115:
                          if (v139 != -1 && v96 <= v139 && v97 >= v139 && v130 != -1 && HIDWORD(v96) <= v130 && v97 >> 32 >= v130)
                          {
                            if (v90 == -1)
                            {
                              v150 = 0x7FFF00000000;
                            }

                            else
                            {
                              v150 = v90 << 32;
                            }

                            if (rect_16a == 0xFFFFFFFF)
                            {
                              v151 = 0x7FFFFFFFLL;
                            }

                            else
                            {
                              v151 = HIDWORD(v90);
                            }

                            v17 = v158;
                            v25 = v150 | v151;
LABEL_155:

                            goto LABEL_156;
                          }

LABEL_131:

                          v17 = v158;
                          goto LABEL_34;
                        }

LABEL_106:
                        if (v90 == -1)
                        {
                          v139 = 0;
                          goto LABEL_115;
                        }

                        v137 = v90;
                        v138 = v130;
                      }

                      if (v138 == -1)
                      {
                        v130 = 0;
                      }

                      else
                      {
                        v130 = v138;
                      }

                      v139 = v137;
                      goto LABEL_115;
                    }
                  }
                }
              }

              else if ((v45 - 5) <= 1)
              {
                objc_msgSend_canvasFrame(v32, v93, v94, v95);
                x = v188.origin.x;
                y = v188.origin.y;
                width = v188.size.width;
                height = v188.size.height;
                if (v168.f64[0] > CGRectGetMaxX(v188))
                {
                  goto LABEL_131;
                }

                v189.origin.x = x;
                v189.origin.y = y;
                v189.size.width = width;
                v189.size.height = height;
                MaxY = CGRectGetMaxY(v189);
                v130 = HIDWORD(v90);
                if (v168.f64[1] > MaxY)
                {
                  goto LABEL_131;
                }

                if ((v89 & 1) == 0)
                {
                  goto LABEL_113;
                }

                goto LABEL_106;
              }

              v130 = HIDWORD(v90);
              if ((v89 & 1) == 0)
              {
                goto LABEL_113;
              }

              goto LABEL_106;
            }

            v46 = objc_msgSend_gridPointHitByCanvasPoint_tabsViewable_(v32, v43, v17[425], v44, a2, a3);
            v47 = HIDWORD(v46);
            if (v46 > 0xFFFFFFFEFFFFFFFFLL || v46 == 0xFFFFFFFFLL)
            {
              v149 = 0x7FFF00000000;
              if (v46 != 0xFFFFFFFFLL)
              {
                v149 = v46 << 32;
              }

              if (v47 == 0xFFFFFFFFLL)
              {
                v47 = 0x7FFFFFFFLL;
              }

              v25 = v149 | v47;
              goto LABEL_155;
            }

            if (v46 != -1 && v157 == -1)
            {
              v50 = v46;
            }

            else
            {
              v50 = v157;
            }

            v157 = v50;
            v51 = v159;
            if (v47 != 0xFFFFFFFFLL && v159 == -1)
            {
              v51 = HIDWORD(v46);
            }

            v159 = v51;
          }
        }

LABEL_34:
        ++v31;
      }

      while (v29 != v31);
      v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v170, v176, 16);
      v29 = v145;
      if (!v145)
      {

        v146 = v159 == -1;
        if (v157 == -1)
        {
          goto LABEL_138;
        }

        v147 = v157 << 32;
        goto LABEL_139;
      }
    }
  }

  v159 = -1;
  v146 = 1;
LABEL_138:
  v147 = 0x7FFF00000000;
LABEL_139:
  v35 = !v146;
  v148 = 0x7FFFFFFFLL;
  if (v35)
  {
    v148 = v159;
  }

  v25 = v147 | v148;
LABEL_156:

  return v25;
}

double sub_2211BBD00(void *a1)
{
  v1 = a1;
  v2 = sub_2211C049C(v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v12 = objc_msgSend_spaceBundle(v1, v9, v10, v11);
  v16 = objc_msgSend_space(v12, v13, v14, v15);
  objc_msgSend_canvasRectForLayoutRect_(v16, v17, v18, v19, v2, v4, v6, v8);
  v21 = v20;

  return v21;
}

uint64_t sub_2211BBDD4(void *a1, double a2, double a3)
{
  v3 = a1;
  TSTLayoutGetCanvasFrame(v3);
  TSUClampPointInRect();
  v6 = sub_2211BB390(v3, v4, v5);

  return v6;
}

double sub_2211BBE60(void *a1, uint64_t a2, unint64_t a3)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = WORD2(a2);
  }

  v4 = a2 << 32;
  v5 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (a3 + v3 - 1);
  if (HIDWORD(a3))
  {
    v5 = ((v4 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  return sub_2211BBEC4(a1, v4 | v3, v6 | v5, &unk_2834A2AD0);
}

double sub_2211BBEC4(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a4;
  v9 = *MEMORY[0x277CBF398];
  v10 = *(MEMORY[0x277CBF398] + 8);
  v11 = *(MEMORY[0x277CBF398] + 24);
  rect = *(MEMORY[0x277CBF398] + 16);
  v45 = v7;
  sub_2211BB074(v7);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v51, v55, 16);
  if (v14)
  {
    v46 = 0;
    v15 = 0;
    v16 = HIDWORD(a2);
    v17 = *v52;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v51 + 1) + 8 * i);
        if (objc_msgSend_intersectsGridRange_(v19, v13, a2 | (v16 << 32), a3))
        {
          v20 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v13, a2 | (v16 << 32), a3, v19);
          x = v8[2](v8, v19, v20, v21);
          y = v23;
          width = v25;
          height = v27;
          v32 = objc_msgSend_layoutSpaceType(v19, v29, v30, v31);
          if (v32 > 1)
          {
            if (v32 == 3)
            {
              memset(&v50, 0, sizeof(v50));
              sub_2211B9E30(v45, &v50);
              v49 = v50;
              v61.origin.x = x;
              v61.origin.y = y;
              v61.size.width = width;
              v61.size.height = height;
              v62 = CGRectApplyAffineTransform(v61, &v49);
              x = v62.origin.x;
              y = v62.origin.y;
              width = v62.size.width;
              height = v62.size.height;
              objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v37, v19, v38);
              v16 = (v39 + 1);
LABEL_17:
              v15 = 1;
            }

            else
            {
              if (v32 != 2)
              {
                goto LABEL_14;
              }

              memset(&v50, 0, sizeof(v50));
              sub_2211B9BC4(v45, &v50);
              v49 = v50;
              v59.origin.x = x;
              v59.origin.y = y;
              v59.size.width = width;
              v59.size.height = height;
              v60 = CGRectApplyAffineTransform(v59, &v49);
              x = v60.origin.x;
              y = v60.origin.y;
              width = v60.size.width;
              height = v60.size.height;
              objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v34, v19, v35);
              LODWORD(a2) = v36 + 1;
              v46 = 1;
            }
          }

          else if (v32)
          {
            if (v32 == 1)
            {
              memset(&v50, 0, sizeof(v50));
              sub_2211B9F18(v45, &v50);
              v49 = v50;
              v57.origin.x = x;
              v57.origin.y = y;
              v57.size.width = width;
              v57.size.height = height;
              v58 = CGRectApplyAffineTransform(v57, &v49);
              x = v58.origin.x;
              y = v58.origin.y;
              width = v58.size.width;
              height = v58.size.height;
              v46 = 1;
              goto LABEL_17;
            }

LABEL_14:
            if (objc_msgSend_containsGridRange_(v19, v33, a2 | (v16 << 32), a3))
            {
              goto LABEL_37;
            }
          }

          v63.origin.x = v9;
          v63.origin.y = v10;
          v63.size.width = rect;
          v63.size.height = v11;
          if (CGRectIsNull(v63))
          {
            v9 = x;
            v10 = y;
            rect = width;
            v11 = height;
            continue;
          }

          if (v46)
          {
            if (!objc_msgSend_layoutDirectionIsLeftToRight(v45, v13, v40, v41))
            {
              v64.origin.x = x;
              v64.origin.y = y;
              v64.size.width = width;
              v64.size.height = height;
              MaxX = CGRectGetMaxX(v64);
              v65.origin.x = v9;
              v65.origin.y = v10;
              v65.size.width = rect;
              v65.size.height = v11;
              if (MaxX <= CGRectGetMaxX(v65))
              {
                goto LABEL_28;
              }

              v66.origin.x = x;
              v66.origin.y = y;
              v66.size.width = width;
              v66.size.height = height;
              v43 = CGRectGetMaxX(v66);
              v67.origin.x = v9;
              v67.origin.y = v10;
              v67.size.width = rect;
              v67.size.height = v11;
              width = width - (v43 - CGRectGetMaxX(v67));
              if (width >= 0.0)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }

            if (x < v9)
            {
              width = width - (v9 - x);
              if (width >= 0.0)
              {
                x = x + v9 - x;
                goto LABEL_28;
              }

LABEL_27:
              x = *MEMORY[0x277CBF398];
              y = *(MEMORY[0x277CBF398] + 8);
              width = *(MEMORY[0x277CBF398] + 16);
              height = *(MEMORY[0x277CBF398] + 24);
            }
          }

LABEL_28:
          if ((v15 & (y < v10)) == 1)
          {
            height = height - (v10 - y);
            if (height >= 0.0)
            {
              y = y + v10 - y;
            }

            else
            {
              x = *MEMORY[0x277CBF398];
              y = *(MEMORY[0x277CBF398] + 8);
              width = *(MEMORY[0x277CBF398] + 16);
              height = *(MEMORY[0x277CBF398] + 24);
            }
          }

          v68.origin.x = v9;
          v68.origin.y = v10;
          v68.size.width = rect;
          v68.size.height = v11;
          v70.origin.x = x;
          v70.origin.y = y;
          v70.size.width = width;
          v70.size.height = height;
          v69 = CGRectUnion(v68, v70);
          rect = v69.size.width;
          v9 = v69.origin.x;
          v10 = v69.origin.y;
          v11 = v69.size.height;
          continue;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v51, v55, 16);
      x = v9;
      if (!v14)
      {
        goto LABEL_37;
      }
    }
  }

  x = v9;
LABEL_37:

  return x;
}

double sub_2211BC400(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = sub_2211BBEC4(v5, a2, a3, &unk_2834A2AD0);
  v13 = sub_2211B87F0(v5, v6, v10, v11, v12, v7, v8, v9);

  return v13;
}

double sub_2211BC494(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = sub_2211BBE60(v5, a2, a3);
  v13 = sub_2211B87F0(v5, v6, v10, v11, v12, v7, v8, v9);

  return v13;
}

double sub_2211BC520(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  sub_2211BB074(a1);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v9 = v29 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v28, v32, 16);
  if (v12)
  {
    v13 = *v29;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        if (objc_msgSend_intersectsGridRange_(v15, v11, a2, a3, v28))
        {
          v16 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v11, a2, a3, v15);
          objc_msgSend_canvasStrokeFrameForGridRange_(v15, v17, v16, v17);
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          if (objc_msgSend_containsGridRange_(v15, v26, a2, a3))
          {
            x = v19;
            goto LABEL_15;
          }

          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = height;
          if (CGRectIsNull(v34))
          {
            x = v19;
            y = v21;
            width = v23;
            height = v25;
          }

          else
          {
            v35.origin.x = x;
            v35.origin.y = y;
            v35.size.width = width;
            v35.size.height = height;
            v37.origin.x = v19;
            v37.origin.y = v21;
            v37.size.width = v23;
            v37.size.height = v25;
            v36 = CGRectUnion(v35, v37);
            x = v36.origin.x;
            y = v36.origin.y;
            width = v36.size.width;
            height = v36.size.height;
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v28, v32, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return x;
}

double sub_2211BC768(void *a1, uint64_t a2, unint64_t a3)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = WORD2(a2);
  }

  v4 = a2 << 32;
  v5 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (a3 + v3 - 1);
  if (HIDWORD(a3))
  {
    v5 = ((v4 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  return sub_2211BC520(a1, v4 | v3, v6 | v5);
}

double sub_2211BC7C4(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = sub_2211BC768(v5, a2, a3);
  v13 = sub_2211B87F0(v5, v6, v10, v11, v12, v7, v8, v9);

  return v13;
}

double sub_2211BC850(void *a1, uint64_t a2, unint64_t a3)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = WORD2(a2);
  }

  v4 = a2 << 32;
  v5 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (a3 + v3 - 1);
  if (HIDWORD(a3))
  {
    v5 = ((v4 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  return sub_2211BBEC4(a1, v4 | v3, v6 | v5, &unk_2834A2AF0);
}

void sub_2211BC8C0(uint64_t a1, void *a2)
{
  v19 = a2;
  if ((objc_msgSend_isFrozen(v19, v3, v4, v5) & 1) == 0)
  {
    objc_msgSend_alignedStrokeFrame(v19, v6, v7, v8);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    IsNull = CGRectIsNull(*(*(*(a1 + 32) + 8) + 48));
    v18 = *(*(a1 + 32) + 8);
    if (IsNull)
    {
      *(v18 + 48) = v10;
      *(v18 + 56) = v12;
      *(v18 + 64) = v14;
      *(v18 + 72) = v16;
    }

    else
    {
      v21.origin.x = v10;
      v21.origin.y = v12;
      v21.size.width = v14;
      v21.size.height = v16;
      *(*(*(a1 + 32) + 8) + 48) = CGRectUnion(*(v18 + 48), v21);
    }
  }
}

double sub_2211BC9B4(void *a1, uint64_t a2, unint64_t a3)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = WORD2(a2);
  }

  v4 = a2 << 32;
  v5 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (a3 + v3 - 1);
  if (HIDWORD(a3))
  {
    v5 = ((v4 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  return sub_2211BCA14(a1, v4 | v3, v6 | v5, 0);
}

double sub_2211BCA14(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = *MEMORY[0x277CBF398];
  v9 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 24);
  rect = *(MEMORY[0x277CBF398] + 16);
  v52 = v7;
  sub_2211BB074(v7);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  obj = v59 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v58, v62, 16);
  if (v13)
  {
    v53 = 0;
    v14 = 0;
    v15 = HIDWORD(a2);
    v16 = *v59;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v59 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v58 + 1) + 8 * i);
        if (a4 == 1)
        {
          if (!objc_msgSend_intersectsRowGridRange_(*(*(&v58 + 1) + 8 * i), v12, a2 | (v15 << 32), a3))
          {
            continue;
          }

          v28 = objc_msgSend_intersectionRowGridRange_ofLayoutSpace_(TSTLayoutSpace, v12, a2 | (v15 << 32), a3, v18);
          objc_msgSend_alignedStrokeLineForRowGridRange_(v18, v29, v28, v29);
        }

        else if (a4 == 2)
        {
          if (!objc_msgSend_intersectsColumnGridRange_(*(*(&v58 + 1) + 8 * i), v12, a2 | (v15 << 32), a3))
          {
            continue;
          }

          v19 = objc_msgSend_intersectionColumnGridRange_ofLayoutSpace_(TSTLayoutSpace, v12, a2 | (v15 << 32), a3, v18);
          objc_msgSend_alignedStrokeLineForColumnGridRange_(v18, v20, v19, v20);
        }

        else
        {
          if (!objc_msgSend_intersectsGridRange_(*(*(&v58 + 1) + 8 * i), v12, a2 | (v15 << 32), a3))
          {
            continue;
          }

          v30 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v12, a2 | (v15 << 32), a3, v18);
          objc_msgSend_alignedStrokeFrameForGridRange_(v18, v31, v30, v31);
        }

        x = v24;
        y = v25;
        width = v26;
        height = v27;
        v36 = objc_msgSend_layoutSpaceType(v18, v21, v22, v23, v52);
        switch(v36)
        {
          case 1:
            memset(&v57, 0, sizeof(v57));
            sub_2211B9F18(v52, &v57);
            v56 = v57;
            v68.origin.x = x;
            v68.origin.y = y;
            v68.size.width = width;
            v68.size.height = height;
            v69 = CGRectApplyAffineTransform(v68, &v56);
            x = v69.origin.x;
            y = v69.origin.y;
            width = v69.size.width;
            height = v69.size.height;
            v53 = 1;
            goto LABEL_20;
          case 3:
            memset(&v57, 0, sizeof(v57));
            sub_2211B9E30(v52, &v57);
            v56 = v57;
            v66.origin.x = x;
            v66.origin.y = y;
            v66.size.width = width;
            v66.size.height = height;
            v67 = CGRectApplyAffineTransform(v66, &v56);
            x = v67.origin.x;
            y = v67.origin.y;
            width = v67.size.width;
            height = v67.size.height;
            objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v43, v18, v44);
            v15 = (v45 + 1);
LABEL_20:
            v14 = 1;
            break;
          case 2:
            memset(&v57, 0, sizeof(v57));
            sub_2211B9BC4(v52, &v57);
            v56 = v57;
            v64.origin.x = x;
            v64.origin.y = y;
            v64.size.width = width;
            v64.size.height = height;
            v65 = CGRectApplyAffineTransform(v64, &v56);
            x = v65.origin.x;
            y = v65.origin.y;
            width = v65.size.width;
            height = v65.size.height;
            objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v40, v18, v41);
            LODWORD(a2) = v42 + 1;
            v53 = 1;
            break;
          default:
            if (objc_msgSend_isRepeat(v18, v37, v38, v39) && (objc_msgSend_containsGridRange_(v18, v46, a2 | (v15 << 32), a3) & 1) != 0)
            {
              goto LABEL_42;
            }

            break;
        }

        v70.origin.x = v8;
        v70.origin.y = v9;
        v70.size.width = rect;
        v70.size.height = v10;
        if (CGRectIsNull(v70))
        {
          v8 = x;
          v9 = y;
          rect = width;
          v10 = height;
          continue;
        }

        if (v53)
        {
          if (!objc_msgSend_layoutDirectionIsLeftToRight(v18, v12, v47, v48))
          {
            v71.origin.x = x;
            v71.origin.y = y;
            v71.size.width = width;
            v71.size.height = height;
            MaxX = CGRectGetMaxX(v71);
            v72.origin.x = v8;
            v72.origin.y = v9;
            v72.size.width = rect;
            v72.size.height = v10;
            if (MaxX <= CGRectGetMaxX(v72))
            {
              goto LABEL_33;
            }

            v73.origin.x = x;
            v73.origin.y = y;
            v73.size.width = width;
            v73.size.height = height;
            v50 = CGRectGetMaxX(v73);
            v74.origin.x = v8;
            v74.origin.y = v9;
            v74.size.width = rect;
            v74.size.height = v10;
            width = width - (v50 - CGRectGetMaxX(v74));
            if (width >= 0.0)
            {
              goto LABEL_33;
            }

LABEL_32:
            x = *MEMORY[0x277CBF398];
            y = *(MEMORY[0x277CBF398] + 8);
            width = *(MEMORY[0x277CBF398] + 16);
            height = *(MEMORY[0x277CBF398] + 24);
            goto LABEL_33;
          }

          if (x < v8)
          {
            width = width - (v8 - x);
            if (width < 0.0)
            {
              goto LABEL_32;
            }

            x = x + v8 - x;
          }
        }

LABEL_33:
        if ((v14 & (y < v9)) == 1)
        {
          height = height - (v9 - y);
          if (height >= 0.0)
          {
            y = y + v9 - y;
          }

          else
          {
            x = *MEMORY[0x277CBF398];
            y = *(MEMORY[0x277CBF398] + 8);
            width = *(MEMORY[0x277CBF398] + 16);
            height = *(MEMORY[0x277CBF398] + 24);
          }
        }

        v75.origin.x = v8;
        v75.origin.y = v9;
        v75.size.width = rect;
        v75.size.height = v10;
        v77.origin.x = x;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        v76 = CGRectUnion(v75, v77);
        rect = v76.size.width;
        v8 = v76.origin.x;
        v9 = v76.origin.y;
        v10 = v76.size.height;
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v58, v62, 16);
      x = v8;
      if (!v13)
      {
        goto LABEL_42;
      }
    }
  }

  x = v8;
LABEL_42:

  return x;
}

id sub_2211BD990(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, CGFloat a9, double a10, double a11)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v11 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = WORD2(a2);
  }

  v12 = a2 << 32;
  v13 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v12 = 0xFFFFFFFF00000000;
  }

  v14 = (a3 + v11 - 1);
  if (HIDWORD(a3))
  {
    v13 = ((v12 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v14 = 0xFFFFFFFFLL;
  }

  v15 = sub_2211BDA14(a1, v12 | v11, v14 | v13, a4, a5, a6, a7, a8, a9, a10, a11);

  return v15;
}

id sub_2211BDA14(void *a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, CGFloat a9, double a10, double a11)
{
  v12 = a7;
  v13 = a6;
  v16 = a5;
  v20 = a1;
  v69 = a4;
  memset(&v72, 0, sizeof(v72));
  CGAffineTransformMakeScale(&v72, a9, a9);
  v70 = v20;
  if (v13)
  {
    v24 = sub_2211BCA14(v20, a2, a3, 0);
    v26 = vaddq_f64(*&v72.tx, vmlaq_n_f64(vmulq_n_f64(*&v72.c, v25), *&v72.a, v24));
  }

  else
  {
    v26 = vdupq_n_s64(0xC0F86A0000000000);
  }

  v67 = v26;
  if ((v16 & 0x2C) != 0)
  {
    v27 = sub_2211BDE48(v20, a2, a3, v69, v16, v13, v12, a9, a10, a11);
  }

  else
  {
    v27 = 0;
  }

  if ((v16 & 0x13) == 0)
  {
    goto LABEL_17;
  }

  v28 = sub_2211BE8B0(v70, a2, a3, v69, v16, v13, v12, a9, a10, a11);
  v29 = v28;
  if (v28 && v27)
  {
    v30 = objc_msgSend_first(v28, v21, v22, v23);
    v34 = objc_msgSend_second(v29, v31, v32, v33);
    v38 = objc_msgSend_first(v27, v35, v36, v37);
    v44 = objc_msgSend_second(v27, v39, v40, v41);
    if (v30 && v38)
    {
      if (a11 == 0.0)
      {
        objc_msgSend_uniteWithPolygonalBezierPath_(v30, v42, v38, v43);
      }

      else
      {
        objc_msgSend_uniteWithBezierPath_(v30, v42, v38, v43);
      }
      v45 = ;
    }

    else
    {
      if (v30)
      {
        v58 = v30;
      }

      else
      {
        v58 = v38;
      }

      v45 = v58;
    }

    v57 = v45;
    if (v34 && v44)
    {
      if (a11 == 0.0)
      {
        objc_msgSend_uniteWithPolygonalBezierPath_(v34, v46, v44, v47);
      }

      else
      {
        objc_msgSend_uniteWithBezierPath_(v34, v46, v44, v47);
      }
      v59 = ;
    }

    else
    {
      if (v34)
      {
        v60 = v34;
      }

      else
      {
        v60 = v44;
      }

      v59 = v60;
    }

    v56 = v59;

    if (!v57)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if (v28)
  {
    v48 = objc_msgSend_first(v28, v21, v22, v23);
    v52 = objc_msgSend_second(v29, v49, v50, v51);
  }

  else
  {
LABEL_17:
    v48 = objc_msgSend_first(v27, v21, v22, v23, *&v67);
    v52 = objc_msgSend_second(v27, v53, v54, v55);
    v29 = 0;
  }

  v56 = v52;
  v57 = v48;
  if (!v48)
  {
    goto LABEL_40;
  }

LABEL_36:
  if (v13)
  {
    CGAffineTransformMakeTranslation(&v71, -v67.f64[0], -v67.f64[1]);
    objc_msgSend_transformUsingAffineTransform_(v57, v61, &v71, v62);
    CGAffineTransformMakeTranslation(&v71, -v67.f64[0], -v67.f64[1]);
    objc_msgSend_transformUsingAffineTransform_(v56, v63, &v71, v64);
  }

  if (a8)
  {
    v65 = v56;
    *a8 = v56;
  }

LABEL_40:

  return v57;
}

id sub_2211BDE48(void *a1, unint64_t a2, unint64_t a3, void *a4, int a5, char a6, char a7, double a8, double a9, double a10)
{
  v18 = a1;
  v19 = a4;
  v78 = v19;
  if (objc_msgSend_isRectangle(v19, v20, v21, v22))
  {
    v26 = !sub_2211B7A50(v18, v23, v24, v25);
  }

  else
  {
    v26 = 0;
  }

  v27 = objc_msgSend_boundingCellRange(v19, v23, v24, v25);
  v31 = v28;
  if (WORD2(v27) == 0x7FFF)
  {
    v32 = -1;
  }

  else
  {
    v32 = WORD2(v27);
  }

  v81 = v32;
  v72 = objc_msgSend_array(MEMORY[0x277CBEB18], v28, v29, v30);
  v36 = objc_msgSend_array(MEMORY[0x277CBEB18], v33, v34, v35);
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = sub_2211BE574;
  v95[3] = &unk_278460AE0;
  v83 = v18;
  v96 = v83;
  v99 = a8;
  v100 = a9;
  v102 = a6;
  v103 = a7;
  v101 = a10;
  v74 = v72;
  v97 = v74;
  v75 = v36;
  v98 = v75;
  v37 = MEMORY[0x223DA1C10](v95);
  v41 = v37;
  v42 = a3 + 1;
  if (a3 + 1 >= a2)
  {
    v48 = 0;
    v84 = a2 & 0xFFFFFFFF00000000;
    v49 = 0x7FFFFFFFLL;
    v82 = HIDWORD(a2);
    if (HIDWORD(a2) != 0xFFFFFFFF)
    {
      v49 = HIDWORD(a2);
    }

    v73 = v49;
    if (v31)
    {
      v50 = v81 + v31;
    }

    else
    {
      v50 = 0;
    }

    v76 = v50;
    v70 = v88;
    v71 = v87;
    v51 = (~a5 & 0x2C) == 0 || v26;
    if (a3 == -2)
    {
      v52 = 0x7FFF;
    }

    else
    {
      v52 = a3 + 1;
    }

    v77 = v52;
    v53 = ~a3 + a2;
    while (1)
    {
      v54 = a3;
      v55 = (a2 + v48);
      v56 = v53 + v48;
      a3 = a3 & 0xFFFFFFFF00000000 | v55;
      if (v51)
      {
        break;
      }

      if (v48)
      {
        if (v56)
        {
          goto LABEL_29;
        }

        if (v42 == -1)
        {
          v80 = 0;
        }

        else
        {
          v80 = 0;
          if (v82 != 0xFFFFFFFF && HIDWORD(v54) != 0xFFFFFFFF && v82 <= HIDWORD(v54))
          {
            v80 = ((v54 - v84) & 0xFFFFFFFF00000000) + 0x100000001;
          }
        }

        v63 = objc_msgSend_layoutEngine(v83, v38, v39, v40, v70);
        v66 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(v63, v64, v77, v65);

        if (v42 == v76)
        {
          goto LABEL_51;
        }

        if ((a5 & 0x28) == 0x28)
        {
          goto LABEL_54;
        }

        if ((a5 & 8) != 0)
        {
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = sub_2211BE678;
          v89[3] = &unk_278460B08;
          v90[1] = v84 | v55;
          v90[2] = a3;
          v90[0] = v41;
          objc_msgSend_enumerateMissingRowsIntersectingCellRange_usingBlock_(v78, v69, v73 | (v66 << 32), v80, v89);
          v62 = v90;
          goto LABEL_62;
        }

        if ((a5 & 0x20) != 0)
        {
          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3221225472;
          v87[0] = sub_2211BE6A4;
          v87[1] = &unk_278460B08;
          v88[1] = v84 | v55;
          v88[2] = a3;
          v88[0] = v41;
          objc_msgSend_enumerateRowsIntersectingCellRange_usingBlock_(v78, v67, v73 | (v66 << 32), v80, v86);
          v62 = v70;
          goto LABEL_62;
        }
      }

      else
      {
        if (a2 == -1)
        {
          v79 = 0;
        }

        else
        {
          v79 = 0;
          if (v82 != 0xFFFFFFFF && HIDWORD(v54) != 0xFFFFFFFF && v82 <= HIDWORD(v54))
          {
            v79 = ((v54 - v84) & 0xFFFFFFFF00000000) + 0x100000001;
          }
        }

        v57 = objc_msgSend_layoutEngine(v83, v38, v39, v40, v70, v71);
        v60 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v57, v58, (a2 - 1), v59);

        if (v81 == a2)
        {
          goto LABEL_43;
        }

        if ((a5 & 0x24) == 0x24)
        {
          goto LABEL_54;
        }

        if ((a5 & 4) != 0)
        {
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = sub_2211BE620;
          v93[3] = &unk_278460B08;
          v94[1] = v84 | v55;
          v94[2] = a3;
          v94[0] = v41;
          objc_msgSend_enumerateMissingRowsIntersectingCellRange_usingBlock_(v78, v68, v73 | (v60 << 32), v79, v93);
          v62 = v94;
          goto LABEL_62;
        }

        if ((a5 & 0x20) != 0)
        {
          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = sub_2211BE64C;
          v91[3] = &unk_278460B08;
          v92[1] = v84 | v55;
          v92[2] = a3;
          v92[0] = v41;
          objc_msgSend_enumerateRowsIntersectingCellRange_usingBlock_(v78, v61, v73 | (v60 << 32), v79, v91);
          v62 = v92;
LABEL_62:
        }
      }

LABEL_55:
      ++v48;
      if (a2 + v48 > v42)
      {
        goto LABEL_8;
      }
    }

    if (v48)
    {
      if (v56)
      {
LABEL_29:
        if ((a5 & 0x20) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
LABEL_51:
        if ((a5 & 8) == 0)
        {
          goto LABEL_55;
        }
      }
    }

    else
    {
LABEL_43:
      if ((a5 & 4) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_54:
    v37 = v41[2](v41, v84 | v55, a3);
    goto LABEL_55;
  }

LABEL_8:
  v43 = sub_2211BE6D0(v37, v74);
  v44 = sub_2211BE6D0(v43, v75);
  v46 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v45, v43, v44);

  return v46;
}

void sub_2211BE574(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 81);
  v9 = *(a1 + 72);
  v14 = 0;
  v10 = objc_msgSend_alignedStrokeFramePathForGridRange_frameType_viewScale_inset_reoriginToZero_clipToVisibleRect_cornerRadius_outMaskPath_(v4, a2, a2, a3, 2, v7, v8, &v14, v5, v6, v9);
  v13 = v14;
  if (v10)
  {
    objc_msgSend_addObject_(*(a1 + 40), v11, v10, v12);
  }

  if (v13)
  {
    objc_msgSend_addObject_(*(a1 + 48), v11, v13, v12);
  }
}

id sub_2211BE6D0(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = a2;
  v4 = 0;
  v5 = 0;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v19, v23, 16);
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v2);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (v4)
        {
          objc_msgSend_bounds(*(*(&v19 + 1) + 8 * i), v6, v7, v8, v19);
          objc_msgSend_bounds(v4, v13, v14, v15);
          if ((TSUIntersectsRect() & 1) == 0)
          {
            objc_msgSend_appendBezierPath_(v5, v6, v12, v8);
            v16 = v12;

            v4 = v16;
          }
        }

        else
        {
          v17 = v12;

          v4 = v17;
          v5 = v4;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v6, &v19, v23, 16);
    }

    while (v9);
  }

  return v5;
}

id sub_2211BE8B0(void *a1, unint64_t a2, unint64_t a3, void *a4, int a5, char a6, char a7, double a8, double a9, double a10)
{
  v18 = a1;
  v19 = a4;
  v91 = v19;
  if (objc_msgSend_isRectangle(v19, v20, v21, v22))
  {
    v26 = !sub_2211B7A50(v18, v23, v24, v25);
  }

  else
  {
    v26 = 0;
  }

  v27 = objc_msgSend_boundingCellRange(v19, v23, v24, v25);
  v31 = v28;
  if (v27 == 0x7FFFFFFF)
  {
    v32 = 0xFFFFFFFF00000000;
  }

  else
  {
    v32 = v27 << 32;
  }

  v88 = objc_msgSend_array(MEMORY[0x277CBEB18], v28, v29, v30);
  v93 = v26;
  v36 = objc_msgSend_array(MEMORY[0x277CBEB18], v33, v34, v35);
  v37 = HIDWORD(a2);
  v38 = HIDWORD(a3);
  v106[0] = MEMORY[0x277D85DD0];
  v106[1] = 3221225472;
  v106[2] = sub_2211BEFA4;
  v106[3] = &unk_278460AE0;
  v94 = v18;
  v107 = v94;
  v110 = a8;
  v111 = a9;
  v113 = a6;
  v114 = a7;
  v112 = a10;
  v86 = v88;
  v108 = v86;
  v87 = v36;
  v109 = v87;
  v39 = MEMORY[0x223DA1C10](v106);
  v96 = v39;
  v43 = HIDWORD(a3) + 1;
  if ((HIDWORD(a3) + 1) >= HIDWORD(a2))
  {
    v49 = 0;
    v50 = &v31[v32 - 0x100000000];
    v92 = HIDWORD(v32);
    v51 = a3;
    v52 = HIDWORD(v50);
    v55 = a3 == -1 || a2 == -1 || a3 < a2;
    v56 = a2 << 32;
    v95 = a2;
    if (a2 == 0xFFFFFFFFLL)
    {
      v56 = 0x7FFF00000000;
    }

    v85 = v56;
    if (v31 >> 32)
    {
      v57 = v52 + 1;
    }

    else
    {
      v57 = 0;
    }

    v89 = v57;
    v58 = (a3 - a2 + 1) | 0x100000000;
    v59 = (~a5 & 0x13) == 0 || v93;
    v60 = HIDWORD(a3) == -2 || v55;
    if (HIDWORD(a3) == -2)
    {
      v61 = 0x7FFFFFFF;
    }

    else
    {
      v61 = HIDWORD(a3) + 1;
    }

    v90 = v61;
    if (v60)
    {
      v62 = 0;
    }

    else
    {
      v62 = v58;
    }

    v83 = v62;
    if (v37 == 0xFFFFFFFF || v55)
    {
      v64 = 0;
    }

    else
    {
      v64 = v58;
    }

    v84 = v64;
    v65 = ~v38 + HIDWORD(a2);
    while (1)
    {
      v66 = (v37 + v49);
      v67 = v65 + v49;
      v68 = v66 << 32;
      v69 = v51 | (v66 << 32);
      if (v59)
      {
        break;
      }

      if (v49)
      {
        if (v67)
        {
          goto LABEL_50;
        }

        v74 = objc_msgSend_layoutEngine(v94, v40, v41, v42);
        v77 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v74, v75, v90, v76);

        if (v43 == v89)
        {
          goto LABEL_56;
        }

        if ((a5 & 0x12) == 0x12)
        {
          goto LABEL_63;
        }

        if ((a5 & 2) != 0)
        {
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = sub_2211BF0A0;
          v100[3] = &unk_278460B08;
          v101[1] = v68 | v95;
          v101[2] = v69;
          v101[0] = v96;
          objc_msgSend_enumerateMissingColumnsIntersectingCellRange_usingBlock_(v91, v82, v85 | v77, v83, v100);
          v79 = v101;
          goto LABEL_71;
        }

        if ((a5 & 0x10) != 0)
        {
          v98[0] = MEMORY[0x277D85DD0];
          v98[1] = 3221225472;
          v98[2] = sub_2211BF0C8;
          v98[3] = &unk_278460B08;
          v99[1] = v68 | v95;
          v99[2] = v69;
          v99[0] = v96;
          objc_msgSend_enumerateColumnsIntersectingCellRange_usingBlock_(v91, v80, v85 | v77, v83, v98);
          v79 = v99;
          goto LABEL_71;
        }
      }

      else
      {
        v70 = objc_msgSend_layoutEngine(v94, v40, v41, v42);
        v73 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v70, v71, (v37 - 1), v72);

        if (v37 == v92)
        {
          goto LABEL_53;
        }

        if ((a5 & 0x11) == 0x11)
        {
          goto LABEL_63;
        }

        if (a5)
        {
          v104[0] = MEMORY[0x277D85DD0];
          v104[1] = 3221225472;
          v104[2] = sub_2211BF050;
          v104[3] = &unk_278460B08;
          v105[1] = v68 | v95;
          v105[2] = v69;
          v105[0] = v96;
          objc_msgSend_enumerateMissingColumnsIntersectingCellRange_usingBlock_(v91, v81, v85 | v73, v84, v104);
          v79 = v105;
          goto LABEL_71;
        }

        if ((a5 & 0x10) != 0)
        {
          v102[0] = MEMORY[0x277D85DD0];
          v102[1] = 3221225472;
          v102[2] = sub_2211BF078;
          v102[3] = &unk_278460B08;
          v103[1] = v68 | v95;
          v103[2] = v69;
          v103[0] = v96;
          objc_msgSend_enumerateColumnsIntersectingCellRange_usingBlock_(v91, v78, v85 | v73, v84, v102);
          v79 = v103;
LABEL_71:
        }
      }

LABEL_64:
      ++v49;
      if (v37 + v49 > v43)
      {
        goto LABEL_8;
      }
    }

    if (v49)
    {
      if (v67)
      {
LABEL_50:
        if ((a5 & 0x10) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
LABEL_56:
        if ((a5 & 2) == 0)
        {
          goto LABEL_64;
        }
      }
    }

    else
    {
LABEL_53:
      if ((a5 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

LABEL_63:
    v39 = v96[2](v96, v68 | v95, v69);
    goto LABEL_64;
  }

LABEL_8:
  v44 = sub_2211BF0F0(v39, v86);
  v45 = sub_2211BF0F0(v44, v87);
  v47 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v46, v44, v45);

  return v47;
}

void sub_2211BEFA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 81);
  v9 = *(a1 + 72);
  v14 = 0;
  v10 = objc_msgSend_alignedStrokeFramePathForGridRange_frameType_viewScale_inset_reoriginToZero_clipToVisibleRect_cornerRadius_outMaskPath_(v4, a2, a2, a3, 1, v7, v8, &v14, v5, v6, v9);
  v13 = v14;
  if (v10)
  {
    objc_msgSend_addObject_(*(a1 + 40), v11, v10, v12);
  }

  if (v13)
  {
    objc_msgSend_addObject_(*(a1 + 48), v11, v13, v12);
  }
}

id sub_2211BF0F0(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = a2;
  v4 = 0;
  v5 = 0;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v19, v23, 16);
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v2);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (v4)
        {
          objc_msgSend_bounds(*(*(&v19 + 1) + 8 * i), v6, v7, v8, v19);
          objc_msgSend_bounds(v4, v13, v14, v15);
          if ((TSUIntersectsRect() & 1) == 0)
          {
            objc_msgSend_appendBezierPath_(v5, v6, v12, v8);
            v16 = v12;

            v4 = v16;
          }
        }

        else
        {
          v17 = v12;

          v4 = v17;
          v5 = v4;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v6, &v19, v23, 16);
    }

    while (v9);
  }

  return v5;
}

double sub_2211BF2D0(void *a1, uint64_t a2, unint64_t a3)
{
  if (WORD2(a2) == 0x7FFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = WORD2(a2);
  }

  v4 = a2 << 32;
  v5 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (a3 + v3 - 1);
  if (HIDWORD(a3))
  {
    v5 = ((v4 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3)
  {
    v6 = 0xFFFFFFFFLL;
  }

  return sub_2211BBEC4(a1, v4 | v3, v6 | v5, &unk_2834A2B10);
}

uint64_t sub_2211BFB80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211BFB98(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (!objc_msgSend_intersectsCellRange_(*(a1 + 32), a2, a2, a3))
  {
    return;
  }

  if (*(a1 + 200) == 1 && (*(a1 + 201) & 1) == 0)
  {
    v4 = objc_msgSend_visiblePartOfRange_(*(a1 + 32), v6, v4, v3);
    v3 = v6;
  }

  v7 = HIDWORD(v3);
  v8 = HIDWORD(v4);
  v9 = *(a1 + 144);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v12 = *(a1 + 148);
      v13 = *(a1 + 156);
    }

    else
    {
      LODWORD(v10) = v4;
      v11 = v3;
      if (v9 != 3)
      {
        goto LABEL_27;
      }

      v12 = *(a1 + 164);
      v13 = *(a1 + 172);
    }

    v10 = sub_221119E0C(v12, v13, v4, v3);
    v8 = HIDWORD(v10);
    v7 = HIDWORD(v6);
    v11 = v6;
    goto LABEL_26;
  }

  if (!v9)
  {
    v14 = *(a1 + 148);
    if (v14 == 0x7FFFFFFF || (v14 & 0xFFFF00000000) == 0x7FFF00000000 || (v6 = *(a1 + 156), !HIDWORD(v6)) || !v6 || (v15 = sub_221119E0C(v14, v6, v4, v3), (v15 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL) || !HIDWORD(v6) || !v6 || v15 == *MEMORY[0x277D813C8] && ((*MEMORY[0x277D813C8] ^ v15) & 0x101FFFF00000000) == 0 && v6 == *(MEMORY[0x277D813C8] + 8))
    {
      v11 = v3;
    }

    else
    {
      LOWORD(v8) = v6 + WORD2(v4);
      v11 = v3 - v6;
    }

    v16 = *(a1 + 164);
    if (v16 == 0x7FFFFFFF || (v16 & 0xFFFF00000000) == 0x7FFF00000000 || (v6 = *(a1 + 172), !HIDWORD(v6)) || !v6 || (v17 = sub_221119E0C(v16, v6, v4 & 0xFFFF0000FFFFFFFFLL | (v8 << 32), v3 & 0xFFFFFFFF00000000 | v11), (v17 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL) || !HIDWORD(v6) || !v6 || v17 == *MEMORY[0x277D813C8] && ((*MEMORY[0x277D813C8] ^ v17) & 0x101FFFF00000000) == 0 && v6 == *(MEMORY[0x277D813C8] + 8))
    {
      LODWORD(v10) = v4;
    }

    else
    {
      v10 = v4 + HIDWORD(v6);
      v7 = (HIDWORD(v3) - HIDWORD(v6));
    }

    goto LABEL_27;
  }

  LODWORD(v10) = v4;
  v11 = v3;
  if (v9 == 1)
  {
    v10 = sub_221119E0C(*(a1 + 180), *(a1 + 188), v4, v3);
    v11 = v6;
    v8 = HIDWORD(v10);
    v7 = HIDWORD(v6);
LABEL_26:
    v4 = v10;
  }

LABEL_27:
  v46 = 0;
  if (v9 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = &v46;
  }

  v19 = *(a1 + 196);
  v20 = v8 << 32;
  if (v19)
  {
    sub_2211BD990(*(a1 + 40), v4 & 0xFFFF000000000000 | v10 | v20, v11 | (v7 << 32), *(a1 + 48), v19, 0, *(a1 + 200), v18, *(a1 + 72), *(a1 + 80), *(a1 + 88));
  }

  else
  {
    objc_msgSend_alignedStrokeFramePathForRange_frameType_viewScale_inset_reoriginToZero_clipToVisibleRect_cornerRadius_outMaskPath_(*(a1 + 40), v6, v4 & 0xFFFF000000000000 | v10 | v20, v11 | (v7 << 32), v19, 0, *(a1 + 200), v18, *(a1 + 72), *(a1 + 80), *(a1 + 88));
  }
  v21 = ;
  v22 = v21;
  v23 = *(a1 + 112);
  v43 = *(a1 + 96);
  v44 = v23;
  v45 = *(a1 + 128);
  objc_msgSend_transformUsingAffineTransform_(v22, v24, &v43, v25);
  v26 = *(a1 + 112);
  v43 = *(a1 + 96);
  v44 = v26;
  v45 = *(a1 + 128);
  objc_msgSend_transformUsingAffineTransform_(v46, v27, &v43, v28);
  if (v21)
  {
    v31 = *(*(a1 + 56) + 8);
    v32 = *(v31 + 40);
    if (v32)
    {
      if (*(a1 + 88) == 0.0)
      {
        objc_msgSend_uniteWithPolygonalBezierPath_(v32, v29, v21, v30);
      }

      else
      {
        objc_msgSend_uniteWithBezierPath_(v32, v29, v21, v30);
      }
      v33 = ;
      v36 = *(*(a1 + 56) + 8);
      v35 = *(v36 + 40);
      *(v36 + 40) = v33;
    }

    else
    {
      v34 = v21;
      v35 = *(v31 + 40);
      *(v31 + 40) = v34;
    }
  }

  if (v46)
  {
    v37 = *(*(a1 + 64) + 8);
    v38 = *(v37 + 40);
    if (v38)
    {
      if (*(a1 + 88) == 0.0)
      {
        objc_msgSend_uniteWithPolygonalBezierPath_(v38, v29, v46, v30);
      }

      else
      {
        objc_msgSend_uniteWithBezierPath_(v38, v29, v46, v30);
      }
      v39 = ;
      v42 = *(*(a1 + 64) + 8);
      v41 = *(v42 + 40);
      *(v42 + 40) = v39;
    }

    else
    {
      v40 = v46;
      v41 = *(v37 + 40);
      *(v37 + 40) = v40;
    }
  }
}

double sub_2211C0188(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CBF3A0];
  if (sub_2211B44A8(v1) > 0.0)
  {
    v6 = sub_2211B4394(v1, v3, v4, v5);
    v9 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v7, v6, v8);
    objc_msgSend_frameForGridRange_(v6, v10, v9, v10);
    v2 = v11;
    objc_msgSend_alignedRectForLayoutRect_(v6, v12, v13, v14);
  }

  return v2;
}

uint64_t sub_2211C027C(void *a1)
{
  v1 = a1;
  v5 = v1;
  if (v1 && v1[427] == 1)
  {
    v6 = objc_msgSend_tableInfo(v1, v2, v3, v4);
    if (objc_msgSend_tableNameBorderEnabled(v6, v7, v8, v9))
    {
      hasTableBorder = objc_msgSend_hasTableBorder(v6, v10, v11, v12);
    }

    else
    {
      hasTableBorder = 0;
    }
  }

  else
  {
    hasTableBorder = 0;
  }

  return hasTableBorder;
}

double sub_2211C031C(void *a1)
{
  v1 = a1;
  v5 = 0.0;
  if (sub_2211C027C(v1))
  {
    v6 = objc_msgSend_tableInfo(v1, v2, v3, v4);
    v10 = objc_msgSend_tableNameBorderStroke(v6, v7, v8, v9);
    objc_msgSend_width(v10, v11, v12, v13);
    v5 = v14;
  }

  return v5;
}

void sub_2211C0390(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double sub_2211C03BC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2211B4394(a1, a2, a3, a4);
  objc_msgSend_frameForTableNameBorder(v4, v5, v6, v7);
  v9 = v8;

  return v9;
}

double sub_2211C042C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2211B4394(a1, a2, a3, a4);
  objc_msgSend_strokeFrameForTableNameBorder(v4, v5, v6, v7);
  v9 = v8;

  return v9;
}

double sub_2211C049C(void *a1)
{
  v1 = a1;
  v2 = sub_2211C0188(v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (sub_2211BA370(v1) && sub_2211B848C(v1))
  {
    memset(&v11, 0, sizeof(v11));
    sub_2211B9D04(v1, &v11);
    v10 = v11;
    v12.origin.x = v2;
    v12.origin.y = v4;
    v12.size.width = v6;
    v12.size.height = v8;
    *&v2 = CGRectApplyAffineTransform(v12, &v10);
  }

  return v2;
}

uint64_t sub_2211C0634(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v9 = objc_msgSend_tableInfo(v5, v6, v7, v8);
  v13 = objc_msgSend_layoutEngine(v5, v10, v11, v12);
  v14 = v13;
  v15 = &v32;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3812000000;
  v35 = sub_2211C0894;
  v36 = nullsub_21;
  v37 = &unk_22188E88F;
  v38 = 0x7FFF7FFFFFFFLL;
  if ((a2 & 0xFFFF00000000) != 0)
  {
    v16 = a2;
    v17 = WORD2(a2) | 0x100000000;
    if (a3)
    {
      v18 = 70;
    }

    else
    {
      v18 = 68;
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2211C08A4;
    v28[3] = &unk_278460B58;
    v31 = &v32;
    v19 = v13;
    v29 = v19;
    v30 = v9;
    objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v5, v20, v16, v17, v18, 0x400000, v28);
    v22 = objc_msgSend_mergesIntersectingRange_(v19, v21, v16, v17);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_2211C0B28;
    v27[3] = &unk_278460B80;
    v27[4] = &v32;
    v27[5] = v16;
    v27[6] = v17;
    objc_msgSend_enumerateRangesUsingBlock_(v22, v23, v27, v24);

    v15 = v33;
  }

  v25 = TSUCellCoord::convertSpanningToInvalid(v15 + 6);
  _Block_object_dispose(&v32, 8);

  return v25;
}

void sub_2211C0838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, ...)
{
  va_start(va, a23);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211C08A4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v9 = v5;
  v10 = *(*(*(a1 + 48) + 8) + 48);
  if (v10 == 0x7FFFFFFF || (v10 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v12 = objc_msgSend_cell(v5, v6, v7, v8);
    v16 = objc_msgSend_valueType(v12, v13, v14, v15);

    if (v16)
    {
      v20 = objc_msgSend_cell(v9, v17, v18, v19);
      if (objc_msgSend_valueType(v20, v21, v22, v23) == 3)
      {
        v27 = objc_msgSend_cell(v9, v24, v25, v26);
        v31 = objc_msgSend_stringValue(v27, v28, v29, v30);
        v35 = objc_msgSend_length(v31, v32, v33, v34);

        if (!v35)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v9, v36, v37, v38);
    }

    else
    {
      v39 = objc_msgSend_cell(v9, v17, v18, v19);
      if (objc_msgSend_valueType(v39, v40, v41, v42) || !objc_msgSend_isDynamicallyChangingContent(*(a1 + 32), v43, v44, v45))
      {

        v56 = 0;
      }

      else
      {
        v49 = objc_msgSend_dynamicContentDelegate(*(a1 + 32), v46, v47, v48);
        v74 = 0;
        v53 = objc_msgSend_cellID(v9, v50, v51, v52);
        v55 = objc_msgSend_cell_forCellID_(v49, v54, &v74, v53);
        v56 = v74;

        if (v55)
        {
          *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v9, v57, v58, v59);
        }
      }

      v60 = *(*(*(a1 + 48) + 8) + 48);
      if (v60 == 0x7FFFFFFF || (v60 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v63 = *(a1 + 32);
        v62 = *(a1 + 40);
        v64 = objc_msgSend_cellID(v9, v57, v58, v59);
        v67 = objc_msgSend_modelCellIDForLayoutCellID_(v63, v65, v64, v66);
        v70 = objc_msgSend_mergeRangeAtCellID_(v62, v68, v67, v69);
        if (v70 != 0x7FFFFFFF && (v70 & 0xFFFF00000000) != 0x7FFF00000000 && v71 >> 32 && v71)
        {
          *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v9, v71, v72, v73);
        }
      }
    }
  }

  else
  {
    *a3 = 1;
  }

LABEL_28:
}

uint64_t sub_2211C0B28(uint64_t a1, uint64_t a2, TSUCellCoord a3, $925F2A0F20B28CD67DCCD182188DAC27 a4)
{
  v10.origin = a3;
  v10.size = a4;
  v5 = *(*(*(a1 + 32) + 8) + 48);
  result = TSUCellRect::lastColumn(&v10);
  if (v5 == 0x7FFFFFFF || (v5 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    *(*(*(a1 + 32) + 8) + 48) = *(a1 + 40) | (result << 32);
  }

  else
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 52);
    if (result > v9)
    {
      LOWORD(v9) = result;
    }

    *(v8 + 52) = v9;
  }

  return result;
}

uint64_t sub_2211C0BB8(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v9 = objc_msgSend_tableInfo(v5, v6, v7, v8);
  v13 = objc_msgSend_layoutEngine(v5, v10, v11, v12);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3812000000;
  v39 = sub_2211C0894;
  v40 = nullsub_21;
  v41 = &unk_22188E88F;
  v42 = 0x7FFF7FFFFFFFLL;
  if (WORD2(a2) < (objc_msgSend_numberOfColumns(v13, v14, v15, v16) - 1))
  {
    v20 = (a2 + 0x100000000) & 0xFFFF00000000 | a2;
    v21 = (objc_msgSend_numberOfColumns(v13, v17, v18, v19) + ~WORD2(a2)) | 0x100000000;
    if (a3)
    {
      v22 = 66;
    }

    else
    {
      v22 = 64;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2211C0E48;
    v32[3] = &unk_278460B58;
    v35 = &v36;
    v23 = v13;
    v33 = v23;
    v34 = v9;
    objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v5, v24, v20, v21, v22, 0x400000, v32);
    v26 = objc_msgSend_mergesIntersectingRange_(v23, v25, v20, v21);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2211C10FC;
    v31[3] = &unk_278460B80;
    v31[4] = &v36;
    v31[5] = v20;
    v31[6] = v21;
    objc_msgSend_enumerateRangesUsingBlock_(v26, v27, v31, v28);
  }

  v29 = TSUCellCoord::convertSpanningToInvalid(v37 + 6);
  _Block_object_dispose(&v36, 8);

  return v29;
}

void sub_2211C0DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, ...)
{
  va_start(va, a23);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211C0E48(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v9 = v5;
  v10 = *(*(*(a1 + 48) + 8) + 48);
  if (v10 != 0x7FFFFFFF && (v10 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *a3 = 1;
    goto LABEL_22;
  }

  v12 = objc_msgSend_cell(v5, v6, v7, v8);
  if (objc_msgSend_valueType(v12, v13, v14, v15))
  {
  }

  else
  {
    v22 = objc_msgSend_cell(v9, v16, v17, v18);
    hasFormula = objc_msgSend_hasFormula(v22, v23, v24, v25);

    if (!hasFormula)
    {
      v46 = objc_msgSend_cell(v9, v19, v20, v21);
      if (objc_msgSend_valueType(v46, v47, v48, v49) || !objc_msgSend_isDynamicallyChangingContent(*(a1 + 32), v50, v51, v52))
      {

        v63 = 0;
      }

      else
      {
        v56 = objc_msgSend_dynamicContentDelegate(*(a1 + 32), v53, v54, v55);
        v80 = 0;
        v60 = objc_msgSend_cellID(v9, v57, v58, v59);
        v62 = objc_msgSend_cell_forCellID_(v56, v61, &v80, v60);
        v63 = v80;

        if (v62)
        {
          *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v9, v64, v65, v66);
        }
      }

      v67 = *(*(*(a1 + 48) + 8) + 48);
      if (v67 == 0x7FFFFFFF || (v67 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v69 = *(a1 + 32);
        v68 = *(a1 + 40);
        v70 = objc_msgSend_cellID(v9, v64, v65, v66);
        v73 = objc_msgSend_modelCellIDForLayoutCellID_(v69, v71, v70, v72);
        v76 = objc_msgSend_mergeRangeAtCellID_(v68, v74, v73, v75);
        if (v76 != 0x7FFFFFFF && (v76 & 0xFFFF00000000) != 0x7FFF00000000 && v77 >> 32 && v77)
        {
          *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v9, v77, v78, v79);
        }
      }

      goto LABEL_22;
    }
  }

  v27 = objc_msgSend_cell(v9, v19, v20, v21);
  if (objc_msgSend_valueType(v27, v28, v29, v30) == 3)
  {
    v34 = objc_msgSend_cell(v9, v31, v32, v33);
    v38 = objc_msgSend_stringValue(v34, v35, v36, v37);
    v42 = objc_msgSend_length(v38, v39, v40, v41);

    if (!v42)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  *(*(*(a1 + 48) + 8) + 48) = objc_msgSend_cellID(v9, v43, v44, v45);
LABEL_22:
}

uint64_t sub_2211C10FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 48);
  if (v4 == 0x7FFFFFFF || (v4 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    *(v3 + 48) = a3 & 0xFFFF00000000 | *(result + 40);
  }

  else
  {
    v6 = HIDWORD(v4);
    if (WORD2(a3) < v6)
    {
      v6 = HIDWORD(a3);
    }

    *(v3 + 52) = v6;
  }

  return result;
}

unint64_t sub_2211C15D4(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a1 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v3 = 0;
LABEL_3:
    LODWORD(a1) = a3;
    v4 = HIDWORD(a3);
    return v3 | a1 | (v4 << 32);
  }

  v3 = 0;
  if (!HIDWORD(a2) || !a2)
  {
    goto LABEL_3;
  }

  v4 = HIDWORD(a1);
  if ((a3 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
LABEL_8:
    v3 = a1 & 0xFFFF000000000000;
    return v3 | a1 | (v4 << 32);
  }

  v6 = a1 & 0xFFFF00000000;
  if (a1 != 0x7FFFFFFFLL || v6 == 0x7FFF00000000)
  {
    v10 = a1 == 0x7FFFFFFF && v6 != 0x7FFF00000000;
    if (a1 > a3 && !v10)
    {
      goto LABEL_30;
    }

    v11 = a1 + HIDWORD(a2) - 1;
    if (a1 == 0x7FFFFFFF)
    {
      v11 = 0x7FFFFFFF;
    }

    if (v11 < a3)
    {
      goto LABEL_30;
    }

    if (a1 != 0x7FFFFFFFLL && v6 == 0x7FFF00000000)
    {
      goto LABEL_8;
    }
  }

  if (WORD2(a1) <= WORD2(a3))
  {
    v7 = a2 + WORD2(a1) - 1;
    if (WORD2(a1) == 0x7FFF || a2 == 0)
    {
      v7 = 0x7FFF;
    }

    if (v7 >= WORD2(a3))
    {
      goto LABEL_8;
    }
  }

LABEL_30:
  v3 = 0;
  if (WORD2(a1) >= WORD2(a3))
  {
    v12 = HIDWORD(a3);
  }

  else
  {
    v12 = HIDWORD(a1);
  }

  if (a1 >= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = a1;
  }

  LODWORD(a1) = v13;
  LOWORD(v4) = v12;
  return v3 | a1 | (v4 << 32);
}

unint64_t sub_2211C1FC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 == 0x7FFFFFFF || (a1 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(a2) || !a2)
  {
    v5 = HIDWORD(a3);
LABEL_48:
    v15 = a3 & 0xFFFF000000000000;
    LODWORD(a1) = a3;
    return v15 | a1 | (v5 << 32);
  }

  if (a3 == 0x7FFFFFFF || (a3 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(a4) || !a4)
  {
    v5 = HIDWORD(a1);
LABEL_50:
    v15 = a1 & 0xFFFF000000000000;
    return v15 | a1 | (v5 << 32);
  }

  if (a1 <= a3)
  {
    v4 = a1 + HIDWORD(a2) - 1;
    if (v4 >= a3 && WORD2(a1) <= WORD2(a3))
    {
      v5 = HIDWORD(a1);
      v6 = a2 + WORD2(a1) - 1;
      if (WORD2(a1) == 0x7FFF || a2 == 0)
      {
        v6 = 0x7FFF;
      }

      if (v6 >= WORD2(a3))
      {
        v8 = a4 + WORD2(a3) - 1;
        if (WORD2(a3) == 0x7FFF || a4 == 0)
        {
          v8 = 0x7FFF;
        }

        if (v6 >= v8 && v4 >= a3 + HIDWORD(a4) - 1)
        {
          goto LABEL_50;
        }
      }
    }
  }

  if (a1 >= a3)
  {
    v10 = a3 + HIDWORD(a4) - 1;
    if (v10 >= a1 && WORD2(a3) <= WORD2(a1))
    {
      v5 = HIDWORD(a3);
      v11 = a4 + WORD2(a3) - 1;
      if (WORD2(a3) == 0x7FFF || a4 == 0)
      {
        v11 = 0x7FFF;
      }

      if (v11 >= WORD2(a1))
      {
        v13 = a2 + WORD2(a1) - 1;
        if (WORD2(a1) == 0x7FFF || a2 == 0)
        {
          v13 = 0x7FFF;
        }

        if (v11 >= v13 && v10 >= a1 + HIDWORD(a2) - 1)
        {
          goto LABEL_48;
        }
      }
    }
  }

  v15 = 0;
  if (WORD2(a1) >= WORD2(a3))
  {
    LOWORD(v5) = WORD2(a3);
  }

  else
  {
    LOWORD(v5) = WORD2(a1);
  }

  v16 = a1;
  if (a1 >= a3)
  {
    v16 = a3;
  }

  LODWORD(a1) = v16;
  return v15 | a1 | (v5 << 32);
}

void sub_2211C2828(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_tableInfo(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_expandCellRangeToCoverMergedCells_(v7, v8, a2, a3);
  v11 = v10;

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = *(v13 + 312);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2211C2954;
  v16[3] = &unk_278460BA8;
  v19 = a2;
  v20 = a3;
  v16[4] = v13;
  v17 = v12;
  v18 = *(a1 + 48);
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v14, v15, v9, v11, 64, 0x80000, v16);
}

void sub_2211C2954(uint64_t a1, void *a2)
{
  v127 = a2;
  v6 = objc_msgSend_cell(v127, v3, v4, v5);
  v10 = objc_msgSend_cellID(v127, v7, v8, v9);
  v14 = objc_msgSend_mergeRange(v127, v11, v12, v13);
  v16 = v15;
  v19 = objc_msgSend_richTextStorageForLayout(v6, v15, v17, v18);
  if (objc_msgSend_valueType(v6, v20, v21, v22) != 9)
  {
    goto LABEL_82;
  }

  if (!v6)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTLayout p_prepareAttachmentCellsIfNeeded]_block_invoke_2", v24);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 5256, 0, "invalid nil value for '%{public}s'", "cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
  }

  if (v10 == 0x7FFFFFFF || (v10 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTLayout p_prepareAttachmentCellsIfNeeded]_block_invoke_2", v24);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 5257, 0, "iterator should return a valid cellID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
  }

  if (!v19)
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTLayout p_prepareAttachmentCellsIfNeeded]_block_invoke_2", v24);
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v44, v47, 5258, 0, "storage should be nil since iterator is searching with TSTCellIteratorSearchForRichText");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51);
  }

  v52 = *(a1 + 56);
  v53 = *(a1 + 64);
  if (!HIDWORD(v53) || !v53)
  {
    goto LABEL_33;
  }

  v54 = v52 & 0xFFFF00000000;
  if (v52 == 0x7FFFFFFFLL && v54 != 0x7FFF00000000)
  {
    goto LABEL_20;
  }

  v58 = v52 == 0x7FFFFFFF && v54 != 0x7FFF00000000;
  if (v52 > v10 && !v58)
  {
    goto LABEL_33;
  }

  v59 = v52 + HIDWORD(v53) - 1;
  if (v52 == 0x7FFFFFFF)
  {
    v59 = 0x7FFFFFFF;
  }

  if (v59 < v10)
  {
    goto LABEL_33;
  }

  if (v52 == 0x7FFFFFFFLL || v54 != 0x7FFF00000000)
  {
LABEL_20:
    if (WORD2(v52) <= WORD2(v10))
    {
      v55 = WORD2(v52) == 0x7FFF || v53 == 0;
      v56 = v55 ? 0x7FFF : v53 + WORD2(v52) - 1;
      if (v56 >= WORD2(v10))
      {
        goto LABEL_42;
      }
    }

LABEL_33:
    v60 = sub_221119E0C(v14, v16, v52, v53);
    if ((v60 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || !(v23 >> 32) || !v23 || v60 == *MEMORY[0x277D813C8] && ((*MEMORY[0x277D813C8] ^ v60) & 0x101FFFF00000000) == 0 && v23 == *(MEMORY[0x277D813C8] + 8))
    {
      goto LABEL_82;
    }
  }

LABEL_42:
  if (!objc_msgSend_attachmentCount(v19, v23, v52, v53))
  {
    goto LABEL_82;
  }

  v64 = objc_msgSend_layoutEngine(*(a1 + 32), v61, v62, v63);
  if (objc_msgSend_isDynamicallyHidingContentOfCellID_(v64, v65, v10, v66))
  {
    goto LABEL_81;
  }

  v70 = objc_msgSend_layoutEngine(*(a1 + 32), v67, v68, v69);
  if (objc_msgSend_isDynamicallyHidingRowsColsCellID_(v70, v71, v10, v72))
  {
LABEL_80:

LABEL_81:
    goto LABEL_82;
  }

  v76 = objc_msgSend_layoutEngine(*(a1 + 32), v73, v74, v75);
  isDynamicallyHidingTextOfCellID = objc_msgSend_isDynamicallyHidingTextOfCellID_(v76, v77, v10, v78);

  if (isDynamicallyHidingTextOfCellID)
  {
    goto LABEL_82;
  }

  v83 = *(*(a1 + 32) + 648);
  if (!HIDWORD(v83) || !v83)
  {
LABEL_70:
    v64 = objc_msgSend_cellStyle(v6, v80, v81, v82);
    v70 = objc_msgSend_textStyle(v6, v91, v92, v93);
    v96 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 720), v94, v19, v95);
    v100 = v96;
    if (!v96)
    {
LABEL_78:
      objc_msgSend_initialTextSize(*(a1 + 32), v97, v98, v99);
      v114 = [TSTWPLayout alloc];
      TSURectWithSize();
      v100 = objc_msgSend_initWithStorage_cellID_frame_(v114, v115, v19, v10);
      objc_msgSend_addObject_(*(a1 + 48), v116, v100, v117);
LABEL_79:

      goto LABEL_80;
    }

    v101 = objc_msgSend_cachedCellID(v96, v97, v98, v99);
    if (v10 == v101 && ((v101 ^ v10) & 0x101FFFF00000000) == 0)
    {
      v108 = objc_msgSend_cachedCellStyle(v100, v102, v103, v104);
      if (v64 == v108)
      {
        v109 = objc_msgSend_cachedTextStyle(v100, v105, v106, v107);
        v113 = v109;
        if (v70 == v109)
        {
          v118 = objc_msgSend_attachmentCount(v19, v110, v111, v112);

          if (v118)
          {
            objc_msgSend_invalidatePosition(v100, v119, v120, v121);
            objc_msgSend_invalidateSize(v100, v122, v123, v124);
            objc_msgSend_removeObject_(*(a1 + 40), v125, v19, v126);
            goto LABEL_79;
          }

          goto LABEL_77;
        }
      }
    }

LABEL_77:

    goto LABEL_78;
  }

  v84 = *(*(a1 + 32) + 640);
  v85 = v84 & 0xFFFF00000000;
  if (v84 == 0x7FFFFFFFLL && v85 != 0x7FFF00000000)
  {
    goto LABEL_57;
  }

  v89 = v84 == 0x7FFFFFFF && v85 != 0x7FFF00000000;
  if (v84 > v10 && !v89)
  {
    goto LABEL_70;
  }

  v90 = v84 + HIDWORD(v83) - 1;
  if (v84 == 0x7FFFFFFF)
  {
    v90 = 0x7FFFFFFF;
  }

  if (v90 < v10)
  {
    goto LABEL_70;
  }

  if (v84 == 0x7FFFFFFFLL || v85 != 0x7FFF00000000)
  {
LABEL_57:
    if (WORD2(v84) <= WORD2(v10))
    {
      v86 = WORD2(v84) == 0x7FFF || v83 == 0;
      v87 = v86 ? 0x7FFF : v83 + WORD2(v84) - 1;
      if (v87 >= WORD2(v10))
      {
        goto LABEL_82;
      }
    }

    goto LABEL_70;
  }

LABEL_82:
}

void sub_2211C2FE4(uint64_t a1, void *a2)
{
  v11 = a2;
  v5 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 720), v3, v11, v4);
  objc_msgSend_removeFromParent(v5, v6, v7, v8);
  objc_msgSend_removeObjectForKey_(*(*(a1 + 32) + 720), v9, v11, v10);
}

void sub_2211C3088(uint64_t a1, void *a2)
{
  v11 = a2;
  objc_msgSend_addChild_(*(a1 + 32), v3, v11, v4);
  v5 = *(*(a1 + 32) + 720);
  v9 = objc_msgSend_info(v11, v6, v7, v8);
  objc_msgSend_setObject_forUncopiedKey_(v5, v10, v11, v9);
}

void sub_2211C3EFC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2211C4E8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2211C50EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2211C5130(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_2211C5140(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = a2;
  if ((!objc_msgSend_isFrozen(v21, v5, v6, v7) || (!objc_msgSend_isCorner(v21, v8, v9, v10) || (*(a1 + 56) & 1) == 0) && (!objc_msgSend_isColumns(v21, v11, v12, v13) || (*(a1 + 57) & 1) == 0) && (!objc_msgSend_isRows(v21, v14, v15, v16) || (*(a1 + 58) & 1) == 0)) && objc_msgSend_intersectsGridRange_(v21, v8, *(a1 + 40), *(a1 + 48)))
  {
    v18 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v17, *(a1 + 40), *(a1 + 48), v21);
    v19 = *(*(a1 + 32) + 8);
    *(v19 + 48) = v18;
    *(v19 + 56) = v20;
    *a3 = 1;
  }
}

void sub_2211C5340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211C5384(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = a2;
  if (!objc_msgSend_isFrozen(v22, v5, v6, v7) || (!objc_msgSend_isCorner(v22, v8, v9, v10) || (*(a1 + 56) & 1) == 0) && (!objc_msgSend_isColumns(v22, v11, v12, v13) || (*(a1 + 57) & 1) == 0) && (!objc_msgSend_isRows(v22, v14, v15, v16) || (*(a1 + 58) & 1) == 0))
  {
    if (objc_msgSend_intersectsGridRange_(v22, v8, *(a1 + 40), *(a1 + 48)))
    {
      if (((v18 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v17, *(a1 + 40), *(a1 + 48), v22), v21 = *(a1 + 40), v20 = *(a1 + 48), v18 == -1) || v19 == -1 || v18 > v19 || HIDWORD(v18) == 0xFFFFFFFF || HIDWORD(v19) == 0xFFFFFFFF || HIDWORD(v18) > HIDWORD(v19)) && (v21 == -1 || v20 == -1 || v21 > v20 || HIDWORD(v21) == 0xFFFFFFFF || HIDWORD(v20) == 0xFFFFFFFF || HIDWORD(v21) > HIDWORD(v20)) || v18 == v21 && !((v21 ^ v18) >> 32) && v19 == v20 && !((v20 ^ v19) >> 32))
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a3 = 1;
      }
    }
  }
}

void sub_2211C63D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211C6428(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1 >= 0xF4240)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 382, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  if (&a2[a1] >= 0xF4241)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 383, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  return a1;
}

uint64_t sub_2211C658C(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = sub_2211B729C(v6, a1[5], a1[6]);
  if (v7)
  {
    *a3 = 1;
  }

  else if ((sub_2211B729C(v6, a1[7], a1[8]) & 1) == 0)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
  }

  return v7;
}

void sub_2211C6A30(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setViewScale_(v3, v4, v5, v6, *(a1 + 32));
  v7 = *(a1 + 56);
  v13 = *(a1 + 40);
  v14 = v7;
  v15 = *(a1 + 72);
  objc_msgSend_setTransformToCanvas_(v3, v8, &v13, v9);
  v10 = *(a1 + 104);
  v13 = *(a1 + 88);
  v14 = v10;
  v15 = *(a1 + 120);
  objc_msgSend_setUserSpaceToDeviceSpaceTransform_(v3, v11, &v13, v12);
}

void sub_2211C6ABC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setHeaderRowsRepeat_(v3, v4, *(a1 + 136), v5);
  objc_msgSend_setHeaderColumnsRepeat_(v3, v6, *(a1 + 137), v7);
  objc_msgSend_setViewScale_(v3, v8, v9, v10, *(a1 + 32));
  v11 = *(a1 + 56);
  v17 = *(a1 + 40);
  v18 = v11;
  v19 = *(a1 + 72);
  objc_msgSend_setTransformToCanvas_(v3, v12, &v17, v13);
  v14 = *(a1 + 104);
  v17 = *(a1 + 88);
  v18 = v14;
  v19 = *(a1 + 120);
  objc_msgSend_setUserSpaceToDeviceSpaceTransform_(v3, v15, &v17, v16);
}

TSCEASTStringElement *sub_2211C6B60(TSCEASTIteratorBase *a1, TSCEASTStringElement *a2)
{
  v3 = *(a1 + 15);
  if (v3 == *(a1 + 14))
  {
    return a2;
  }

  v4 = *(v3 - 8);
  if (!v4)
  {
    return a2;
  }

  v6 = 0xFFFF;
  while (1)
  {
    v7 = (*(*v4 + 80))(v4, a1);
    v11 = objc_msgSend_functionIndex(v7, v8, v9, v10);
    if (v11 > 230)
    {
      break;
    }

    if (v11 > 144)
    {
      if (v11 != 178)
      {
        if (v11 != 145)
        {
          goto LABEL_31;
        }

        goto LABEL_20;
      }
    }

    else if (v11 != 25)
    {
      if (v11 != 33)
      {
        goto LABEL_31;
      }

LABEL_20:
      v15 = TSCEASTStringElement::string(a2, a1, v12, v13);
      if (objc_msgSend_hasPrefix_(v15, v16, @"≥", v17))
      {
        v21 = objc_msgSend_rangeOfString_(v15, v18, @"≥", v19);
        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v15, v20, v21, v20, @">=");
LABEL_29:
          v31 = v22;

          v15 = v31;
        }
      }

      else
      {
        if (!objc_msgSend_hasPrefix_(v15, v18, @"≤", v19))
        {
          if (!objc_msgSend_hasPrefix_(v15, v23, @"≠", v24))
          {
            goto LABEL_30;
          }

          v30 = objc_msgSend_rangeOfString_(v15, v27, @"≠", v28);
          if (v30 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_30;
          }

          v22 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v15, v29, v30, v29, @"<>");
          goto LABEL_29;
        }

        v26 = objc_msgSend_rangeOfString_(v15, v23, @"≤", v24);
        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v15, v25, v26, v25, @"<=");
          goto LABEL_29;
        }
      }

LABEL_30:
      TSCEASTStringElement::setString(a2, v15, a1);

      goto LABEL_31;
    }

LABEL_11:
    v14 = *(a1 + 15);
    if (v14 == *(a1 + 14))
    {
      goto LABEL_31;
    }

    v4 = *(v14 + 8 * --v6);

    if (!v4)
    {
      return a2;
    }
  }

  if (v11 == 329)
  {
    goto LABEL_11;
  }

  if ((v11 - 231) < 4 || (v11 - 309) < 2)
  {
    goto LABEL_20;
  }

LABEL_31:

  return a2;
}

void sub_2211C6DBC(TSCEASTRewriter *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2211C7B98(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2211C78C8);
}

void sub_2211C92C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2211C92E8(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2211C930C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2211C9324(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v23 = v3;
  v8 = objc_msgSend_columnAggregateUid(v3, v5, v6, v7);
  v10 = v9;
  v12 = v4[7];
  v11 = v4[8];
  if (v12 >= v11)
  {
    v14 = v4[6];
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 4;
    v17 = v16 + 1;
    if ((v16 + 1) >> 60)
    {
      sub_22107C148();
    }

    v18 = v11 - v14;
    if (v18 >> 3 > v17)
    {
      v17 = v18 >> 3;
    }

    v19 = v18 >= 0x7FFFFFFFFFFFFFF0;
    v20 = 0xFFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v20 = v17;
    }

    if (v20)
    {
      sub_221086F74((v4 + 6), v20);
    }

    v21 = (16 * v16);
    *v21 = v8;
    v21[1] = v10;
    v13 = 16 * v16 + 16;
    memcpy(0, v14, v15);
    v22 = v4[6];
    v4[6] = 0;
    v4[7] = v13;
    v4[8] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v12 = v8;
    v12[1] = v9;
    v13 = (v12 + 2);
  }

  v4[7] = v13;
}

void sub_2211C9574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211C9594(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211C95AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v12._lower = objc_msgSend_columnAggregateUid(v3, v5, v6, v7);
  v12._upper = v8;
  v9 = TSKUIDStruct::NSUUIDValue(&v12);
  objc_msgSend_addObject_(v4, v10, v9, v11);
}

void sub_2211C9A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211C9A88(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v9 = objc_msgSend_aggregateAtIndex_(*(a1 + 32), v7, a3, v8);
  if ((objc_msgSend_isEqual_(v12, v10, v9, v11) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_2211C9C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211C9C74(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v49 = a2;
  v9 = objc_msgSend_aggregateAtIndex_(*(a1 + 32), v7, a3, v8);
  v13 = objc_msgSend_columnUid(v49, v10, v11, v12);
  v15 = v14;
  v21 = v13 == objc_msgSend_columnUid(v9, v14, v16, v17) && v15 == v18;
  if (!v21 || (v22 = objc_msgSend_aggregateType(v49, v18, v19, v20), v22 != objc_msgSend_aggregateType(v9, v23, v24, v25)) || (v29 = objc_msgSend_level(v49, v26, v27, v28), v29 != objc_msgSend_level(v9, v30, v31, v32)) || (v36 = objc_msgSend_showAsType(v49, v33, v34, v35), v36 != objc_msgSend_showAsType(v9, v37, v38, v39)) || (v43 = objc_msgSend_runningTotalGroupingColumnUid(v49, v40, v41, v42), v45 = v44, v43 != objc_msgSend_runningTotalGroupingColumnUid(v9, v44, v46, v47)) || v45 != v48)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_2211CAC20(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_22107C148();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2211CCACC(a1, v11);
    }

    v12 = 20 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 4);
    *v12 = v13;
    v7 = 20 * v8 + 20;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 4);
    *v5 = v6;
    v7 = v5 + 20;
  }

  *(a1 + 8) = v7;
}

void sub_2211CB094(uint64_t a1, const char *a2, TSCECellCoordSet *a3, uint64_t a4)
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(*(a1 + 32), a2, a2, a4);
  if (v6 != 0xFFFF)
  {
    v7 = v6;
    v8 = (*(a1 + 40) + 120);

    sub_2212DFD38(v8, v7, a3);
  }
}

void sub_2211CB258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15)
{
  sub_22107C800(&a14, a15);

  _Unwind_Resume(a1);
}

void sub_2211CB2B0(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(*(a1 + 32), a2, a2, a4);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x4012000000;
  v10[3] = sub_2211CB3C8;
  v10[4] = nullsub_23;
  v10[5] = &unk_22188E88F;
  v10[6] = 0;
  v11 = v6;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211CB3E0;
  v7[3] = &unk_278460D50;
  v9 = v10;
  v8 = *(a1 + 32);
  TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v7);

  _Block_object_dispose(v10, 8);
}

void sub_2211CB3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211CB3C8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

void sub_2211CB5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2211CB94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);

  _Block_object_dispose(&a20, 8);
  sub_221122744(v37 + 48);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 240), 8);
  _Block_object_dispose((v38 - 208), 8);
  sub_221122744(v38 - 160);

  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_2211CB9CC(uint64_t a1, TSUCellCoord *a2, _BYTE *a3)
{
  result = sub_2212DFCE8((*(*(a1 + 32) + 8) + 48), a2);
  if (++*(*(*(a1 + 40) + 8) + 24) >= 0x1F4uLL)
  {
    *a3 = 1;
  }

  return result;
}

TSCECellCoordSet *sub_2211CBA30(uint64_t a1, char *a2, _BYTE *a3)
{
  started = objc_msgSend_dirtyNewCellRef_forSeconds_fromStartTime_(*(*(a1 + 32) + 80), a2, a2, *(a1 + 40), *(a1 + 64));
  result = sub_2212DFCE8((*(*(a1 + 48) + 8) + 48), a2);
  if ((started & 1) == 0)
  {
    *a3 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return result;
}

void sub_2211CBCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  va_copy(va2, va1);
  v21 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  v27 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  sub_221122744(va2);

  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_2211CBD14(uint64_t a1, TSUCellCoord *a2, _BYTE *a3)
{
  result = sub_2212DFCE8((*(*(a1 + 32) + 8) + 48), a2);
  if (++*(*(*(a1 + 40) + 8) + 24) >= 0x64uLL)
  {
    *a3 = 1;
  }

  return result;
}

BOOL sub_2211CC1D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = 0;
  if (v5)
  {
    objc_msgSend_timeIntervalSinceNow(v5, a2, a3, a4);
    if (*(a1 + 40) < -v6)
    {
      return 1;
    }
  }

  return result;
}

void sub_2211CC56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSUIndexSet::~TSUIndexSet(&a9);

  _Unwind_Resume(a1);
}

void sub_2211CCACC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_22107C238();
}

void **sub_2211CCB20(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x666666666666666)
      {
        v11 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2211CCC7C(v6, v11);
    }

    sub_22107C148();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_2211CCC7C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    sub_2211CCACC(a1, a2);
  }

  sub_22107C148();
}

id sub_2211CCD30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"aggType=%d", a4, a1);

  return v4;
}

void sub_2211CD710(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2211CDA84(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2211CE458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211CE4A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    objc_msgSend_setAllowTableName_(*(a1 + 32), a2, 0, a4);
  }

  v6 = *(a2 + 1);
  v20[0] = *a2;
  v20[1] = v6;
  v9 = objc_msgSend_nameForBaseRangeRef_namingContext_(*(a1 + 40), a2, v20, *(a1 + 32));
  if (v9)
  {
    v10 = *(a1 + 48);
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      objc_msgSend_appendFormat_(v10, v7, @" | %@", v8, v9);
    }

    else
    {
      objc_msgSend_appendString_(v10, v7, v9, v8);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTRefNamer nameForBaseTractRef:namingContext:]_block_invoke", v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefNamer.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 206, 0, "invalid nil value for '%{public}s'", "baseString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }
}

void sub_2211CE7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211CE800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v5;
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_chromeRangeRefForViewRangeRef_(v6, a2, v21, a4);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    objc_msgSend_setAllowTableName_(*(a1 + 40), a2, 0, a4);
  }

  v9 = objc_msgSend_nameForChromeRangeRef_namingContext_(*(a1 + 48), a2, v20, *(a1 + 40));
  if (v9)
  {
    v10 = *(a1 + 56);
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      objc_msgSend_appendFormat_(v10, v7, @" | %@", v8, v9);
    }

    else
    {
      objc_msgSend_appendString_(v10, v7, v9, v8);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTRefNamer nameForViewTractRef:namingContext:coordMapper:]_block_invoke", v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefNamer.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 251, 0, "invalid nil value for '%{public}s'", "viewString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }
}

void sub_2211D3648(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2211D3A50(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10A1C40D9336959);

  _Unwind_Resume(a1);
}

uint64_t sub_2211D3BE4(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, char a4)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v7 = &unk_2834A2CA8;
  *(v7 + 136) = 0;
  *(v7 + 144) = a4;
  *(a1 + 152) = TSCEFormulaRewriteContext::containingTableUID(a3);
  *(a1 + 160) = v8;
  *(a1 + 96) = 1;
  return a1;
}

uint64_t sub_2211D3C6C(uint64_t a1, uint64_t a2)
{
  if (TSCEASTElement::tag(a2, a1) == 70)
  {
    *(a1 + 136) = 1;
    *(a1 + 143) = 1;
  }

  return a2;
}

uint64_t sub_2211D3CB4(uint64_t a1, uint64_t a2)
{
  *(a1 + 136) = 1;
  *(a1 + 142) = 1;
  return a2;
}

TSCEASTFunctionElement *sub_2211D3CC8(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  if (v6 > 279)
  {
    if (v6 == 285 || v6 == 280)
    {
      goto LABEL_9;
    }
  }

  else if (v6 == 23 || v6 == 130)
  {
    *(a1 + 136) = (*(*this + 48))(this, a1, v6) > 1;
    return this;
  }

  v9 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v7, v6, v8);
  if (!v9 || objc_msgSend_versionShippedIn(v9, v10, v11, v12) >= 2)
  {
LABEL_9:
    *(a1 + 68) = 257;
  }

  return this;
}

TSCEASTRelativeCoordRefElement *sub_2211D3DA0(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if ((TSCEASTElement::refFlags(a2, a1) & 1) != 0 && (*(a1 + 144) & 1) == 0 && (*(a1 + 136) & 1) == 0)
  {
    v7 = *(a1 + 152) != TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5) || *(a1 + 160) != v6;
    *(a1 + 136) = v7;
  }

  return a2;
}

void sub_2211D3E6C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_2211D3EA4(_BYTE *a1)
{
  if (a1[137] & 1) != 0 || (a1[139] & 1) != 0 || (a1[140] & 1) != 0 || (a1[138])
  {
    v1 = 1;
  }

  else
  {
    v1 = a1[143];
  }

  return v1 & 1;
}

uint64_t sub_2211D467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a4 & 0xFFFF00000000;
  v6 = a3 & 0xFFFF00000000;
  if (a3 == 0x7FFFFFFFLL || v6 == 0x7FFF00000000 || a4 == 0x7FFFFFFF || v5 == 0x7FFF00000000 || WORD2(a3) > WORD2(a4) || a3 > a4)
  {
    if (a3 != 0x7FFFFFFFLL && v6 == 0x7FFF00000000 && v5 == 0x7FFF00000000)
    {
      if (a4 == 0x7FFFFFFF || a3 > a4)
      {
        return 0x7FFF7FFFFFFFLL;
      }
    }

    else if (a3 != 0x7FFFFFFFLL || v6 == 0x7FFF00000000 || v5 == 0x7FFF00000000 || a4 != 0x7FFFFFFF || WORD2(a3) > WORD2(a4))
    {
      return 0x7FFF7FFFFFFFLL;
    }
  }

  v7 = a1 & 0xFFFF00000000;
  if (a1 == 0x7FFFFFFFLL || v7 == 0x7FFF00000000)
  {
    v8 = a2 & 0xFFFF00000000;
  }

  else
  {
    v8 = a2 & 0xFFFF00000000;
    if (a2 != 0x7FFFFFFF && v8 != 0x7FFF00000000 && WORD2(a1) <= WORD2(a2) && a1 <= a2)
    {
      goto LABEL_39;
    }
  }

  if (a1 != 0x7FFFFFFFLL && v7 == 0x7FFF00000000 && v8 == 0x7FFF00000000)
  {
    if (a2 == 0x7FFFFFFF || a1 > a2)
    {
      return a3;
    }
  }

  else if (a1 != 0x7FFFFFFFLL || v7 == 0x7FFF00000000 || v8 == 0x7FFF00000000 || a2 != 0x7FFFFFFF || WORD2(a1) > WORD2(a2))
  {
    return a3;
  }

LABEL_39:
  v10 = a1 > a3;
  a3 = 0x7FFF7FFFFFFFLL;
  if (v10)
  {
    return v4 | v7;
  }

  return a3;
}

uint64_t sub_2211D4860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 & 0xFFFF00000000;
  if (a3 == 0x7FFFFFFFLL || v4 == 0x7FFF00000000)
  {
    v5 = a4 & 0xFFFF00000000;
  }

  else
  {
    v5 = a4 & 0xFFFF00000000;
    if (a4 != 0x7FFFFFFFLL && v5 != 0x7FFF00000000 && WORD2(a3) <= WORD2(a4) && a3 <= a4)
    {
      goto LABEL_20;
    }
  }

  if (a3 != 0x7FFFFFFFLL && v4 == 0x7FFF00000000 && v5 == 0x7FFF00000000)
  {
    v6 = 0x7FFF7FFFFFFFLL;
    if (a4 == 0x7FFFFFFFLL || a3 > a4)
    {
      return v6;
    }

LABEL_20:
    v7 = a1 & 0xFFFF00000000;
    if (a1 == 0x7FFFFFFFLL || v7 == 0x7FFF00000000)
    {
      v8 = a2 & 0xFFFF00000000;
    }

    else
    {
      v8 = a2 & 0xFFFF00000000;
      if (a2 != 0x7FFFFFFF && v8 != 0x7FFF00000000 && WORD2(a1) <= WORD2(a2) && a1 <= a2)
      {
        if (WORD2(a1) <= WORD2(a3))
        {
          return 0x7FFF7FFFFFFFLL;
        }

        return v4 | a1;
      }
    }

    if (a1 != 0x7FFFFFFFLL && v7 == 0x7FFF00000000 && v8 == 0x7FFF00000000)
    {
      v6 = 0x7FFF7FFFFFFFLL;
      if (a2 == 0x7FFFFFFF || a1 > a2)
      {
        return v6;
      }
    }

    else
    {
      v6 = 0x7FFF7FFFFFFFLL;
      if (a1 != 0x7FFFFFFFLL || v7 == 0x7FFF00000000 || v8 == 0x7FFF00000000 || a2 != 0x7FFFFFFF || WORD2(a1) > WORD2(a2))
      {
        return v6;
      }
    }

    if (WORD2(a1) <= WORD2(a3))
    {
      return v6;
    }

    return v4 | a1;
  }

  v6 = 0x7FFF7FFFFFFFLL;
  if (a3 == 0x7FFFFFFFLL && v4 != 0x7FFF00000000 && v5 != 0x7FFF00000000 && a4 == 0x7FFFFFFFLL && WORD2(a3) <= WORD2(a4))
  {
    goto LABEL_20;
  }

  return v6;
}

void *sub_2211D4E3C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 8) == **(result + 6))
  {
    return objc_msgSend_endTrackingReference_(*(result + 4), a2, *(result + 5), a4);
  }

  return result;
}

void *sub_2211D5464(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 1) == **(result + 7))
  {
    v5 = *(result + 8);
    v4 = *(result + 9);
    v6 = *a2;
    v7 = WORD2(*a2);
    v10 = v7 < WORD2(v5) || v6 < v5 || v7 > WORD2(v4) || v6 > v4;
    if (v10 && ((v12 = *(result + 10), v11 = *(result + 11), v7 < WORD2(v12)) || v6 < v12 || v7 > WORD2(v11) || v6 > v11))
    {
      if ((v7 < WORD2(v5) || v6 < v5 || v7 > WORD2(v4) || v6 > v4) && (v7 < WORD2(v12) || v6 < v12 || v7 > WORD2(v11) || v6 > v11))
      {
        return objc_msgSend_endTrackingReference_(*(result + 4), a2, *(result + 5), a4);
      }
    }

    else
    {
      return TSCECellCoordSet::removeCellCoord((*(*(result + 6) + 8) + 48), a2);
    }
  }

  return result;
}

void sub_2211D576C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211D57C8(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 8) == **(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_2211D5A3C(uint64_t a1, void *a2)
{
  v10 = a2;
  objc_storeStrong((*(a1 + 32) + 80), a2);
  v7 = objc_msgSend_ownerUID(*(*(a1 + 32) + 80), v4, v5, v6);
  v8 = (*(a1 + 32) + 64);
  *v8 = v7;
  v8[1] = v9;
  *(*(a1 + 32) + 104) = 0;
}

void sub_2211D6168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  _Block_object_dispose(&a17, 8);
  sub_2210BDEC0(v30 + 48);
  _Block_object_dispose(va, 8);
  sub_221122744(v29 + 48);
  sub_221122744(v31 - 112);

  _Unwind_Resume(a1);
}

void sub_2211D620C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  v7 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(a1 + 32), a2, v6, a4);
  v9 = v8;
  v22[0] = v7;
  v22[1] = v8;
  v11 = objc_msgSend_ownerKindForOwnerID_(*(a1 + 32), v8, v6, v10);
  if (v11)
  {
    if (v11 == 7)
    {
      v14 = *(a1 + 40);
      if (v7 == v14[8] && v9 == v14[9])
      {
        v15 = objc_msgSend_trackedReferenceAtCoord_(v14, v12, *a2, v13);
        sub_2212DFCE8((*(*(a1 + 48) + 8) + 48), a2);
        if (v15)
        {
          objc_msgSend_refersToCellRefForCalculationEngine_referenceTrackerUID_(v15, v16, *(a1 + 32), *(a1 + 40) + 64);
          if (v21 != 0)
          {
            v19 = *(*(a1 + 56) + 8);
            v20 = v21;
            sub_2211D6484((v19 + 48), &v20, &v20);
          }

          objc_msgSend_endTrackingReference_(*(a1 + 40), v17, v15, v18);
        }

        else
        {
          objc_msgSend_removeFormulaAt_inOwner_(*(a1 + 32), v16, a2, v22);
        }
      }
    }
  }

  else
  {
    objc_msgSend_removeFormulaAt_inOwner_(*(a1 + 32), v12, a2, v22);
    sub_2212DFCE8((*(*(a1 + 48) + 8) + 48), a2);
  }
}

void *sub_2211D6484(void *a1, void *a2, _OWORD *a3)
{
  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t sub_2211D6EFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 32) == 1)
  {
    objc_msgSend_getCell_atCellUID_(*(v5 + 8), a2, *(v5 + 16), a1 + 48);
  }

  else
  {
    objc_msgSend_clear(*(v5 + 16), a2, a3, a4);
  }

  v9 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    v10 = objc_msgSend_formulaObject(*(v9 + 16), v6, v7, v8);

    if (!v10)
    {
      goto LABEL_8;
    }

    v9 = *(a1 + 32);
  }

  *(v9 + 33) = 1;
LABEL_8:
  objc_msgSend_setFormulaObject_(*(*(a1 + 32) + 16), v6, *(a1 + 40), v8);
  v12 = *(a1 + 32);
  v13 = v12[1];
  v14 = v12[2];
  v15 = v12[3];

  return objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_formulaReplacer_(v13, v11, v14, a1 + 48, 0, 0, v15);
}

uint64_t sub_2211D705C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 32) == 1)
  {
    objc_msgSend_getCell_atCellUID_(*(v5 + 8), a2, *(v5 + 16), a1 + 48);
    objc_msgSend_clearValue(*(*(a1 + 32) + 16), v6, v7, v8);
    objc_msgSend_setFormulaObject_(*(*(a1 + 32) + 16), v9, 0, v10);
    v14 = objc_msgSend_cellFlags(*(*(a1 + 32) + 16), v11, v12, v13);
    objc_msgSend_setCellFlags_(*(*(a1 + 32) + 16), v15, v14 & 0xFFFFFFFB, v16);
  }

  else
  {
    objc_msgSend_clear(*(v5 + 16), a2, a3, a4);
  }

  if (*(a1 + 80) == 1)
  {
    objc_msgSend_setCellFlags_(*(*(a1 + 32) + 16), v17, 4, v19);
  }

  v20 = objc_msgSend_valueType(*(a1 + 40), v17, v18, v19);
  if (v20 == 10)
  {
    goto LABEL_9;
  }

  if (v20 == 5)
  {
    v37 = *(*(a1 + 32) + 16);
    v38 = objc_msgSend_tsceValue(*(a1 + 40), v21, v22, v23);
    objc_msgSend_applyFormulaResult_(v37, v39, v38, v40);

    if (!objc_msgSend_currentFormatUsesAccountingStyle(*(*(a1 + 32) + 16), v41, v42, v43))
    {
      goto LABEL_23;
    }

    v46 = objc_msgSend_currentFormat(*(*(a1 + 32) + 16), v36, v44, v45);
    v50 = objc_msgSend_asCurrencyFormat(v46, v47, v48, v49);

    if (v50)
    {
      v53 = objc_alloc(MEMORY[0x277D80640]);
      v57 = objc_msgSend_decimalPlaces(v50, v54, v55, v56);
      v61 = objc_msgSend_negativeStyle(v50, v58, v59, v60);
      v65 = objc_msgSend_showThousandsSeparator(v50, v62, v63, v64);
      v69 = objc_msgSend_currencyCode(v50, v66, v67, v68);
      v71 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v53, v70, v57, v61, v65, 0, v69);

      objc_msgSend_setCurrentFormat_isExplicit_(*(*(a1 + 32) + 16), v72, v71, 0);
    }

    else
    {
      v76 = *(a1 + 32);
      v77 = *(v76 + 48);
      if (!v77)
      {
        v78 = objc_msgSend_documentRoot(*(v76 + 8), v51, v52, 0);
        v82 = objc_msgSend_documentLocale(v78, v79, v80, v81);
        v83 = *(a1 + 32);
        v84 = *(v83 + 48);
        *(v83 + 48) = v82;

        v76 = *(a1 + 32);
        v77 = *(v76 + 48);
      }

      v85 = *(v76 + 16);
      v71 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v51, 257, v77);
      objc_msgSend_setCurrentFormat_isExplicit_(v85, v86, v71, 0);
    }

    goto LABEL_22;
  }

  if (v20)
  {
    v73 = *(*(a1 + 32) + 16);
    v50 = objc_msgSend_tsceValue(*(a1 + 40), v21, v22, v23);
    objc_msgSend_applyFormulaResult_(v73, v74, v50, v75);
LABEL_22:

    goto LABEL_23;
  }

LABEL_9:
  v24 = *(a1 + 32);
  if (!*(v24 + 48))
  {
    v25 = objc_msgSend_documentRoot(*(v24 + 8), v21, v22, v23);
    v29 = objc_msgSend_documentLocale(v25, v26, v27, v28);
    v30 = *(a1 + 32);
    v31 = *(v30 + 48);
    *(v30 + 48) = v29;

    v24 = *(a1 + 32);
  }

  v32 = *(v24 + 56);
  if (!v32)
  {
    v33 = objc_msgSend_localizedStringForKey_value_table_(*(v24 + 48), v21, @"(blank)", &stru_2834BADA0, @"TSTables");
    v34 = *(a1 + 32);
    v35 = *(v34 + 56);
    *(v34 + 56) = v33;

    v24 = *(a1 + 32);
    v32 = *(v24 + 56);
  }

  objc_msgSend_setStringValue_(*(v24 + 16), v21, v32, v23);
LABEL_23:
  v87 = *(a1 + 32);
  v88 = *(v87 + 8);
  v89 = *(v87 + 16);

  return objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v88, v36, v89, a1 + 48, 0, 0);
}

uint64_t sub_2211D7450(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (*(v5 + 32) == 1)
  {
    objc_msgSend_getCell_atCellUID_(*(v5 + 8), a2, *(v5 + 16), a1 + 48);
    objc_msgSend_clearValue(*(*(a1 + 32) + 16), v6, v7, v8);
    objc_msgSend_setFormulaObject_(*(*(a1 + 32) + 16), v9, 0, v10);
    v14 = objc_msgSend_cellFlags(*(*(a1 + 32) + 16), v11, v12, v13);
    objc_msgSend_setCellFlags_(*(*(a1 + 32) + 16), v15, v14 & 0xFFFFFFFB, v16);
  }

  else if (*(a1 + 40))
  {
    objc_msgSend_clear(*(v5 + 16), a2, a3, a4);
  }

  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  v19 = *(v18 + 16);
  if (v17 || *(v18 + 32) == 1)
  {
    objc_msgSend_setStringValue_(*(v18 + 16), a2, v17, a4);
    v18 = *(a1 + 32);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v18 + 8);

  return objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v20, a2, v19, a1 + 48, 0, 0);
}

id sub_2211D76DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSTCellDiffArray;
  return objc_msgSendSuper2(&v3, sel_saveToArchiver_, v1);
}

id sub_2211D7810(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSTCellDiffArray;
    return objc_msgSendSuper2(&v3, sel_loadFromUnarchiver_, v2);
  }

  return result;
}

void sub_2211D7C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, TSUIndexSet *a13, TSUIndexSet *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  TSUIndexSet::~TSUIndexSet(&a9);
  TSUIndexSet::~TSUIndexSet(&a13);
  TSUIndexSet::~TSUIndexSet(&a17);

  _Unwind_Resume(a1);
}

void sub_2211D8A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211D8A48(uint64_t result, __int16 a2, __int16 a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(v4 + 24);
  v6 = a2 - v5;
  v7 = *(*(result + 40) + 8);
  v8 = *(v7 + 24);
  if (v8 >= (a2 - v5))
  {
    *(v7 + 24) = v8 - v6;
    *(*(*(result + 32) + 8) + 24) += v6 + a3;
  }

  else
  {
    *(v4 + 24) = v8 + v5;
    *(*(*(result + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void sub_2211D8BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211D8BC8(uint64_t result, int a2, int a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(v4 + 24);
  v6 = *(*(result + 40) + 8);
  v7 = *(v6 + 24);
  if (v7 >= a2 - v5)
  {
    *(v6 + 24) = v7 - (a2 - v5);
    *(*(*(result + 32) + 8) + 24) += a2 - v5 + a3;
  }

  else
  {
    *(v4 + 24) = v7 + v5;
    *(*(*(result + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void *sub_2211D8ED0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  result = objc_msgSend_containsIndex_(*(*(a1 + 32) + 120), a2, a2, a4);
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 32);
    v11 = v4;
    v8 = sub_2210C3024((v7 + 184), &v11);
    if (v8)
    {
      v4 = *(v8 + 9);
    }

    return objc_msgSend_addIndex_(*(a1 + 40), v9, v4, v10);
  }

  return result;
}

uint64_t sub_2211D9044(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  result = objc_msgSend_containsIndex_(*(*(a1 + 32) + 136), a2, a2, a4);
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 32);
    v10 = v4;
    result = sub_2211DC534((v7 + 72), &v10);
    if (result)
    {
      return objc_msgSend_addIndex_(*(a1 + 40), v8, *(result + 20), v9);
    }
  }

  return result;
}

uint64_t sub_2211D92B4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v9 = a2;
  v5 = sub_2210C3024((v4 + 144), &v9);
  if (v5)
  {
    v2 = *(v5 + 9);
  }

  return objc_msgSend_addIndex_(*(a1 + 40), v6, v2, v7);
}

unsigned int *sub_2211D9414(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  result = sub_2211DC534((v3 + 32), &v7);
  if (result)
  {
    return objc_msgSend_addIndex_(*(a1 + 40), v5, result[5], v6);
  }

  return result;
}

uint64_t sub_2211D9610(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_chromeColumnIndexForViewColumnIndex_(*(a1 + 32), a2, a2, a4);
  v8 = *(a1 + 40);

  return objc_msgSend_addIndex_(v8, v5, v6, v7);
}

uint64_t sub_2211D976C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_chromeRowIndexForViewRowIndex_(*(a1 + 32), a2, a2, a4);
  v8 = *(a1 + 40);

  return objc_msgSend_addIndex_(v8, v5, v6, v7);
}

uint64_t sub_2211D98EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(*(a1 + 32), a2, a2, a4);
  v8 = *(a1 + 40);

  return objc_msgSend_addIndex_(v8, v5, v6, v7);
}

uint64_t sub_2211D9A48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_viewRowIndexForChromeRowIndex_(*(a1 + 32), a2, a2, a4);
  v8 = *(a1 + 40);

  return objc_msgSend_addIndex_(v8, v5, v6, v7);
}

void sub_2211DB648(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, TSUIndexSet *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  TSUIndexSet::~TSUIndexSet(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_2211DB844(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4)
{
  v6 = objc_msgSend_baseRowIndexForViewRowIndex_(*(a1 + 32), a2, a2, a4);
  v9 = objc_msgSend_baseRowIndexForViewRowIndex_(*(a1 + 32), v7, a3, v8);
  v10 = *(a1 + 40);

  return MEMORY[0x2821F9670](v10, sel_swapIndex_withIndex_, v6, v9);
}

uint64_t *sub_2211DB9B8(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t **sub_2211DBBEC(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_2211DBE28(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        *(v8 + 5) = *(a2 + 5);
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2210BDA6C(a1, v9, v8 + 4);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2211DBF3C(a1, a2 + 2);
  }
}

void sub_2211DBF08(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_2211DBFC8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 8);
        *(v8 + 8) = v9;
        *(v8 + 9) = *(a2 + 9);
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2211DC0DC(a1, v9, v8 + 8);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2211DC4A8(a1, a2 + 4);
  }
}

void sub_2211DC0A8(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_2211DC0DC(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2211DC23C(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_2211DC23C(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2211DC32C(result, prime);
    }
  }
}

void sub_2211DC32C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_2211DC534(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2211DC8AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2211DCA74(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 8);
    do
    {
      if (v5)
      {
        v6 = 0;
        do
        {
          v7[2](v7, (*a1 + v4) | ((*(a1 + 4) + v6++) << 32));
          v5 = *(a1 + 8);
        }

        while (v5 > v6);
        v3 = *(a1 + 12);
      }

      ++v4;
    }

    while (v4 < v3);
  }
}

void sub_2211DCB38(id *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_clear(a1[4], a2, a3, a4);
  if (objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(a1[5], v6, a1[4], a2, 1))
  {
    return;
  }

  v10 = objc_msgSend_cellFlags(a1[4], v7, v8, v9);
  v14 = v10 & 0x8F0;
  if ((v10 & 0x8F0) != 0)
  {
    if ((v10 & 0x800) != 0)
    {
      v15 = (v10 >> 6) & 2;
      v16 = (v10 >> 3) & 2;
      v129 = vand_s8(vshl_u32(vdup_n_s32(v10), 0xFFFFFFFCFFFFFFFBLL), 0x200000002);
    }

    else
    {
      v129 = 0x200000002;
      v15 = 2;
      v16 = 2;
    }

    objc_msgSend_setCellFlags_(a1[4], v11, v10 & 0xF70F, v13);
  }

  else
  {
    v129 = 0x200000002;
    v15 = 2;
    v16 = 2;
  }

  v17 = objc_msgSend_cellStyle(a1[4], v11, v12, v13);
  v132 = v17;
  if (v17)
  {
    v21 = objc_msgSend_valueForProperty_(v17, v18, 901, v20);
    v130 = objc_msgSend_valueForProperty_(v132, v22, 902, v23);
    v26 = objc_msgSend_valueForProperty_(v132, v24, 899, v25);
    v29 = objc_msgSend_valueForProperty_(v132, v27, 900, v28);
    v30 = v29;
    if (v21 || v130 || v26 || v29)
    {
      if (v21)
      {
        if (objc_msgSend_empty(v21, v18, v19, v20))
        {
          v34 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v31, v32, v33);

          v21 = v34;
        }

        objc_msgSend_p_setLeftStroke_order_atCellID_(a1[6], v31, v21, v129.i8[0], a2);
      }

      if (v130)
      {
        if (objc_msgSend_empty(v130, v18, v19, v20))
        {
          v38 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v35, v36, v37);

          v39 = v38;
        }

        else
        {
          v39 = v130;
        }

        v131 = v39;
        objc_msgSend_p_setRightStroke_order_atCellID_(a1[6], v35, v39, v15, a2);
      }

      else
      {
        v131 = 0;
      }

      if (v26)
      {
        if (objc_msgSend_empty(v26, v18, v19, v20))
        {
          v43 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v40, v41, v42);

          v26 = v43;
        }

        objc_msgSend_p_setTopStroke_order_atCellID_(a1[6], v40, v26, v16, a2);
      }

      if (v30)
      {
        if (objc_msgSend_empty(v30, v18, v19, v20))
        {
          v47 = objc_msgSend_zeroWidthEmptyStroke(MEMORY[0x277D803C0], v44, v45, v46);

          v30 = v47;
        }

        objc_msgSend_p_setBottomStroke_order_atCellID_(a1[6], v44, v30, v129.i8[4], a2);
      }

      v128 = v21;
      v48 = objc_msgSend_overridePropertyMap(v132, v18, v19, v20);
      objc_msgSend_removeValueForProperty_(v48, v49, 901, v50);
      objc_msgSend_removeValueForProperty_(v48, v51, 902, v52);
      objc_msgSend_removeValueForProperty_(v48, v53, 899, v54);
      objc_msgSend_removeValueForProperty_(v48, v55, 900, v56);
      if (!objc_msgSend_count(v48, v57, v58, v59))
      {
        v116 = 0;
LABEL_51:
        objc_msgSend_setCellStyle_(a1[4], v60, v116, v62);

LABEL_52:
        v126 = a1[5];
        if (objc_msgSend_isEmpty(a1[4], v18, v19, v20))
        {
          objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(v126, v127, 0, a2, 0, 0);
        }

        else
        {
          objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(v126, v127, a1[4], a2, 0, 0);
        }

        goto LABEL_55;
      }

      v63 = objc_msgSend_baseStyleForVariation(v132, v60, v61, v62);
      v64 = a1[7];
      v71 = objc_msgSend_stylesheet(v63, v65, v66, v67);
      if (v64 == v71)
      {
        v87 = v48;
      }

      else
      {
        v72 = objc_msgSend_parent(a1[7], v68, v69, v70);
        v76 = objc_msgSend_stylesheet(v63, v73, v74, v75);

        if (v72 == v76)
        {
          goto LABEL_45;
        }

        v79 = objc_msgSend_defaultCellStyleForBaseCellCoord_(a1[5], v77, a2, v78);
        v83 = objc_msgSend_baseStyleForVariation(v79, v80, v81, v82);

        v87 = objc_msgSend_propertyMap(v132, v84, v85, v86);

        objc_msgSend_removeValueForProperty_(v87, v88, 901, v89);
        objc_msgSend_removeValueForProperty_(v87, v90, 902, v91);
        objc_msgSend_removeValueForProperty_(v87, v92, 899, v93);
        objc_msgSend_removeValueForProperty_(v87, v94, 900, v95);
        v96 = a1[7];
        v71 = objc_msgSend_stylesheet(v83, v97, v98, v99);
        if (v96 == v71)
        {
          v63 = v83;
        }

        else
        {
          v103 = objc_msgSend_parent(a1[7], v100, v101, v102);
          v107 = objc_msgSend_stylesheet(v83, v104, v105, v106);

          if (v103 == v107)
          {
            v48 = v87;
            v63 = v83;
            if (v83)
            {
              goto LABEL_46;
            }

            goto LABEL_50;
          }

          v109 = objc_msgSend_styleIdentifier(v83, v77, v108, v78);

          if (!v109)
          {

            v48 = v87;
            goto LABEL_50;
          }

          v113 = a1[7];
          v71 = objc_msgSend_styleIdentifier(v83, v110, v111, v112);
          v63 = objc_msgSend_cascadedStyleWithIdentifier_(v113, v114, v71, v115);
        }
      }

      v48 = v87;
LABEL_45:
      if (v63)
      {
LABEL_46:
        v116 = objc_msgSend_variationOfStyle_propertyMap_(a1[7], v77, v63, v48);

        goto LABEL_51;
      }

LABEL_50:
      v117 = MEMORY[0x277D81150];
      v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "[TSTStrokeSidecar initForUpgradeWithTableModel:]_block_invoke", v78);
      v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecar.mm", v120);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v117, v122, v118, v121, 202, 0, "No usable root style in the document stylesheet or the deprecated theme stylesheet. Dropping the cell style on the floor.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124, v125);
      v116 = 0;
      goto LABEL_51;
    }
  }

  if (v14 || objc_msgSend_isEmpty(a1[4], v18, v19, v20))
  {
    goto LABEL_52;
  }

LABEL_55:
}

void sub_2211DDF30(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v7 = objc_msgSend_cellBorder(a3, a2, a3, a4);
  if (v7)
  {
    objc_msgSend_setCellBorder_atCellID_(*(a1 + 32), v6, v7, a2);
  }
}

void sub_2211DE734(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, void *a6, int a7)
{
  v19 = a4;
  v14 = a6;
  if (v19)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  v17 = a5 < a7;
  if (a5 < a7)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (v19)
  {
    if (v17)
    {
      objc_msgSend_setStroke_inRange_order_(*(a1 + 32), v13, v19, a2, a3, v16);
    }

    else
    {
      objc_msgSend_setStroke_inRange_order_(*(a1 + 32), v13, v19, a2, a3, 1);
    }
  }

  if (v14)
  {
    objc_msgSend_setStroke_inRange_order_(*(a1 + 40), v13, v14, a2, a3, v18);
  }
}

void sub_2211DF084(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0x7FFF;
  v7 = 0x7FFFFFFF;
  if (a2 != 0x7FFFFFFF && (a2 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v5 = 0;
    if (HIDWORD(a3))
    {
      if (a3)
      {
        v5 = 0;
        v8 = *(a1 + 72);
        if (v8 != 0x7FFFFFFF && (v8 & 0xFFFF00000000) != 0x7FFF00000000)
        {
          v5 = 0;
          v9 = *(a1 + 80);
          if (HIDWORD(v9))
          {
            if (v9)
            {
              v7 = *MEMORY[0x277D813C8];
              v6 = *(MEMORY[0x277D813C8] + 4);
              v5 = *(MEMORY[0x277D813C8] + 8);
              v10 = HIDWORD(v8);
              v11 = WORD2(a2);
              if (WORD2(a2) <= WORD2(v8))
              {
                v12 = WORD2(v8);
              }

              else
              {
                v12 = WORD2(a2);
              }

              v13 = a2 + HIDWORD(a3) - 1;
              v14 = v8 + HIDWORD(v9) - 1;
              a4 = 0x7FFFFFFFLL;
              v15 = v8;
              v16 = a2;
              if (a2 <= v15)
              {
                v16 = v15;
              }

              v17 = a3 + WORD2(a2) - 1;
              a2 = 0x7FFFLL;
              if (v11 == 0x7FFF || a3 == 0)
              {
                v17 = 0x7FFF;
              }

              v19 = v9 + v10 - 1;
              if (WORD2(v8) == 0x7FFF || v9 == 0)
              {
                LOWORD(v21) = 0x7FFF;
              }

              else
              {
                LOWORD(v21) = v19;
              }

              if (v17 >= v21)
              {
                v21 = v21;
              }

              else
              {
                v21 = v17;
              }

              if (v13 < v14)
              {
                v14 = v13;
              }

              v22 = v14 >= v16;
              v23 = v14 - v16;
              if (v22 && v12 <= v21)
              {
                v5 = (v21 - v12 + 1) | ((v23 + 1) << 32);
                v7 = v16;
                v6 = v12;
              }
            }
          }
        }
      }
    }
  }

  v41 = v7;
  v42 = v6;
  if (v6 != 0x7FFF && v7 == 0x7FFFFFFF)
  {
    v25 = 0;
  }

  else
  {
    v25 = v7;
  }

  v43 = v5;
  v26 = HIDWORD(v5);
  if (v7 == 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = v7 + HIDWORD(v5);
  }

  v28 = v27 - v25;
  if (v27 > v25)
  {
    do
    {
      if (*(a1 + 40))
      {
        v29 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 88), a2, v25, a4);
        if (v29)
        {
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = sub_2211DF56C;
          v53[3] = &unk_278461048;
          v54 = *(a1 + 40);
          v55 = v25;
          objc_msgSend_enumerateStrokesInRange_usingBlock_(v29, v30, v42, v43, v53);
        }
      }

      if (*(a1 + 48))
      {
        v31 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 96), a2, v25, a4);
        if (v31)
        {
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = sub_2211DF598;
          v50[3] = &unk_278461048;
          v51 = *(a1 + 48);
          v52 = v25;
          objc_msgSend_enumerateStrokesInRange_usingBlock_(v31, v32, v42, v43, v50);
        }
      }

      ++v25;
      --v28;
    }

    while (v28);
  }

  v33 = v42 + v43;
  if (v42 == 0x7FFF)
  {
    v33 = 0x7FFF;
    v34 = v41 == 0x7FFFFFFF;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v35 = v42;
  }

  else
  {
    v35 = 0;
  }

  if (v35 < v33)
  {
    v36 = v33;
    do
    {
      if (*(a1 + 56))
      {
        v37 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 72), a2, v35, a4);
        if (v37)
        {
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = sub_2211DF5C4;
          v47[3] = &unk_278461070;
          v48 = *(a1 + 56);
          v49 = v35;
          objc_msgSend_enumerateStrokesInRange_usingBlock_(v37, v38, v41, v26, v47);
        }
      }

      if (*(a1 + 64))
      {
        v39 = objc_msgSend_pointerAtIndex_(*(*(a1 + 32) + 80), a2, v35, a4);
        if (v39)
        {
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = sub_2211DF5F0;
          v44[3] = &unk_278461070;
          v45 = *(a1 + 64);
          v46 = v35;
          objc_msgSend_enumerateStrokesInRange_usingBlock_(v39, v40, v41, v26, v44);
        }
      }

      ++v35;
    }

    while (v36 != v35);
  }
}

uint64_t sub_2211E0F48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a2 == 1)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2211E12B0;
    v8[3] = &unk_2784610C0;
    v8[4] = *(a1 + 40);
    return objc_msgSend_enumerateSeriallyUsingBlock_(v5, 1, v8, a4);
  }

  else if (a2 == 2)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2211E11D0;
    v9[3] = &unk_2784610C0;
    v9[4] = *(a1 + 40);
    return objc_msgSend_enumerateSeriallyUsingBlock_(v5, 2, v9, a4);
  }

  else if (a2 == 3)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211E10F0;
    v10[3] = &unk_2784610C0;
    v10[4] = *(a1 + 40);
    return objc_msgSend_enumerateSeriallyUsingBlock_(v5, 3, v10, a4);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2211E1390;
    v7[3] = &unk_2784610C0;
    v7[4] = *(a1 + 40);
    return objc_msgSend_enumerateSeriallyUsingBlock_(v5, a2, v7, a4);
  }
}

void sub_2211E10F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = *(a1 + 32);
  v26 = v7;
  v12 = objc_msgSend_cellBorder(v7, v9, v10, v11);
  v16 = objc_msgSend_topStroke(v12, v13, v14, v15);
  v20 = objc_msgSend_cellBorder(v26, v17, v18, v19);
  v24 = objc_msgSend_topStrokeOrder(v20, v21, v22, v23);
  objc_msgSend_p_setTopStroke_order_atCellID_(v8, v25, v16, v24, a4);
}

void sub_2211E11D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = *(a1 + 32);
  v26 = v7;
  v12 = objc_msgSend_cellBorder(v7, v9, v10, v11);
  v16 = objc_msgSend_bottomStroke(v12, v13, v14, v15);
  v20 = objc_msgSend_cellBorder(v26, v17, v18, v19);
  v24 = objc_msgSend_bottomStrokeOrder(v20, v21, v22, v23);
  objc_msgSend_p_setBottomStroke_order_atCellID_(v8, v25, v16, v24, a4);
}

void sub_2211E12B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = *(a1 + 32);
  v26 = v7;
  v12 = objc_msgSend_cellBorder(v7, v9, v10, v11);
  v16 = objc_msgSend_leftStroke(v12, v13, v14, v15);
  v20 = objc_msgSend_cellBorder(v26, v17, v18, v19);
  v24 = objc_msgSend_leftStrokeOrder(v20, v21, v22, v23);
  objc_msgSend_p_setLeftStroke_order_atCellID_(v8, v25, v16, v24, a4);
}

void sub_2211E1390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = *(a1 + 32);
  v26 = v7;
  v12 = objc_msgSend_cellBorder(v7, v9, v10, v11);
  v16 = objc_msgSend_rightStroke(v12, v13, v14, v15);
  v20 = objc_msgSend_cellBorder(v26, v17, v18, v19);
  v24 = objc_msgSend_rightStrokeOrder(v20, v21, v22, v23);
  objc_msgSend_p_setRightStroke_order_atCellID_(v8, v25, v16, v24, a4);
}

void sub_2211E1834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = a11;
  sub_22107C2C0(&a14);
  _Unwind_Resume(a1);
}

void sub_2211E18CC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_2211E34D0(a1, v5);
  }
}

void sub_2211E205C(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v4;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v28, v32, 16);
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = objc_msgSend_mutableCopy(v14, v8, v9, v10, v28);
        v19 = objc_msgSend_columnOrRowIndex(v14, v16, v17, v18);
        if (objc_msgSend_count(v5, v20, v21, v22) > v19)
        {
          v26 = objc_msgSend_columnOrRowIndex(v14, v23, v24, v25);
          objc_msgSend_replacePointerAtIndex_withPointer_(v5, v27, v26, v15);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v28, v32, 16);
    }

    while (v11);
  }
}

void sub_2211E21E8(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 40);
  v7 = objc_msgSend_leftColumnStrokes(*(a1 + 32), v4, v5, v6);
  (*(v3 + 16))(v3, v8, v7);
}

void sub_2211E2278(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 40);
  v7 = objc_msgSend_rightColumnStrokes(*(a1 + 32), v4, v5, v6);
  (*(v3 + 16))(v3, v8, v7);
}

void sub_2211E2308(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 40);
  v7 = objc_msgSend_topRowStrokes(*(a1 + 32), v4, v5, v6);
  (*(v3 + 16))(v3, v8, v7);
}

void sub_2211E2398(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 40);
  v7 = objc_msgSend_bottomRowStrokes(*(a1 + 32), v4, v5, v6);
  (*(v3 + 16))(v3, v8, v7);
}

void sub_2211E290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  v17 = TSUCheckedDynamicCast();
  objc_msgSend_setColumnOrRowIndex_(v17, v5, a3, v6);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(v9 + 88);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(v9 + 80);
  v12 = *v10;
  if (v11 < *v10)
  {
    *(v9 + 80) = v11 + 1;
    objc_msgSend_setStrongReference_message_(v8, v7, v17, *&v10[2 * v11 + 2]);
    goto LABEL_8;
  }

  if (v12 == *(v9 + 84))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 72));
    v10 = *(v9 + 88);
    v12 = *v10;
  }

  *v10 = v12 + 1;
  v13 = MEMORY[0x223DA0390](*(v9 + 72));
  v14 = *(v9 + 80);
  v15 = *(v9 + 88) + 8 * v14;
  *(v9 + 80) = v14 + 1;
  *(v15 + 8) = v13;
  objc_msgSend_setStrongReference_message_(v8, v16, v17, v13);
LABEL_8:
}

void sub_2211E2A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  v17 = TSUCheckedDynamicCast();
  objc_msgSend_setColumnOrRowIndex_(v17, v5, a3, v6);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(v9 + 40);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(v9 + 32);
  v12 = *v10;
  if (v11 < *v10)
  {
    *(v9 + 32) = v11 + 1;
    objc_msgSend_setStrongReference_message_(v8, v7, v17, *&v10[2 * v11 + 2]);
    goto LABEL_8;
  }

  if (v12 == *(v9 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 24));
    v10 = *(v9 + 40);
    v12 = *v10;
  }

  *v10 = v12 + 1;
  v13 = MEMORY[0x223DA0390](*(v9 + 24));
  v14 = *(v9 + 32);
  v15 = *(v9 + 40) + 8 * v14;
  *(v9 + 32) = v14 + 1;
  *(v15 + 8) = v13;
  objc_msgSend_setStrongReference_message_(v8, v16, v17, v13);
LABEL_8:
}

void sub_2211E2B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  v17 = TSUCheckedDynamicCast();
  objc_msgSend_setColumnOrRowIndex_(v17, v5, a3, v6);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(v9 + 112);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(v9 + 104);
  v12 = *v10;
  if (v11 < *v10)
  {
    *(v9 + 104) = v11 + 1;
    objc_msgSend_setStrongReference_message_(v8, v7, v17, *&v10[2 * v11 + 2]);
    goto LABEL_8;
  }

  if (v12 == *(v9 + 108))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 96));
    v10 = *(v9 + 112);
    v12 = *v10;
  }

  *v10 = v12 + 1;
  v13 = MEMORY[0x223DA0390](*(v9 + 96));
  v14 = *(v9 + 104);
  v15 = *(v9 + 112) + 8 * v14;
  *(v9 + 104) = v14 + 1;
  *(v15 + 8) = v13;
  objc_msgSend_setStrongReference_message_(v8, v16, v17, v13);
LABEL_8:
}

void sub_2211E2C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  v17 = TSUCheckedDynamicCast();
  objc_msgSend_setColumnOrRowIndex_(v17, v5, a3, v6);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(v9 + 64);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(v9 + 56);
  v12 = *v10;
  if (v11 < *v10)
  {
    *(v9 + 56) = v11 + 1;
    objc_msgSend_setStrongReference_message_(v8, v7, v17, *&v10[2 * v11 + 2]);
    goto LABEL_8;
  }

  if (v12 == *(v9 + 60))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 48));
    v10 = *(v9 + 64);
    v12 = *v10;
  }

  *v10 = v12 + 1;
  v13 = MEMORY[0x223DA0390](*(v9 + 48));
  v14 = *(v9 + 56);
  v15 = *(v9 + 64) + 8 * v14;
  *(v9 + 56) = v14 + 1;
  *(v15 + 8) = v13;
  objc_msgSend_setStrongReference_message_(v8, v16, v17, v13);
LABEL_8:
}

void sub_2211E31D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = objc_msgSend_strokeSidecar(*(a1 + 32), a2, a3, a4);
  v33 = objc_msgSend_strokeLayerForLeftSideOfColumn_(v6, v7, v4, v8);

  v11 = objc_msgSend_findStrokeAndRangeAtIndex_(v33, v9, *(a1 + 48), v10);
  v15 = v11;
  if (v11 && ((v16 = objc_msgSend_range(v11, v12, v13, v14), v17 = *(a1 + 48), v12) ? (v18 = v16 <= v17) : (v18 = 0), v18 && &v12[v16 - 1] >= v17))
  {
    objc_msgSend_removeIndex_(*(a1 + 40), v12, v4, v14);
    v25 = v15;
  }

  else
  {
    v19 = objc_msgSend_strokeSidecar(*(a1 + 32), v12, v13, v14);
    v22 = objc_msgSend_strokeLayerForRightSideOfColumn_(v19, v20, v4, v21);

    v25 = objc_msgSend_findStrokeAndRangeAtIndex_(v22, v23, *(a1 + 48), v24);

    if (v25)
    {
      v29 = objc_msgSend_range(v25, v26, v27, v28);
      if (v30)
      {
        v32 = *(a1 + 48);
        if (v29 <= v32 && &v30[v29 - 1] >= v32)
        {
          objc_msgSend_removeIndex_(*(a1 + 40), v30, v4, v31);
        }
      }
    }
  }
}

void sub_2211E34D0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_2211E35BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2211E3C34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_indexFromCoord_(TSTFormulaStore, a2, a3, a4);
  v8 = *(a1 + 32);

  return objc_msgSend_addIndex_(v8, v5, v6, v7);
}

void sub_2211E3E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211E3E88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2211E3EA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_indexesForRange_(*(a1 + 32), a2, a2, a3);
  v6 = *(*(a1 + 40) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  v10 = v4;
  if (v9)
  {
    objc_msgSend_addIndexes_(v8, v4, v4, v5);
  }

  else
  {
    objc_storeStrong(v7, v4);
  }
}

uint64_t sub_2211E40A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7.origin = objc_msgSend_cellRangeAtIndex_(*(a1 + 32), a2, a2, a4);
  v7.size = v5;
  result = TSUCellRect::isValid(&v7);
  if (result)
  {
    if (*(a1 + 48))
    {
      return (*(*(a1 + 40) + 16))();
    }

    result = TSUCellRect::isSingleCell(&v7);
    if ((result & 1) == 0)
    {
      return (*(*(a1 + 40) + 16))();
    }
  }

  return result;
}

uint64_t sub_2211E4244(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7.origin = objc_msgSend_cellRangeAtIndex_(*(a1 + 32), a2, a2, a4);
  v7.size = v5;
  result = TSUCellRect::isValid(&v7);
  if (result)
  {
    result = TSUCellRect::isSingleCell(&v7);
    if ((result & 1) == 0)
    {
      return (*(*(a1 + 40) + 16))();
    }
  }

  return result;
}

uint64_t sub_2211E44A4(uint64_t a1, uint64_t a2, TSUCellCoord a3, $925F2A0F20B28CD67DCCD182188DAC27 a4)
{
  v8.origin = a3;
  v8.size = a4;
  v5 = TSUCellRect::firstColumn(&v8);
  return objc_msgSend_addIndexesInRange_(*(a1 + 32), v6, v5 + 1, LOWORD(v8.size.numberOfColumns) - 1);
}

uint64_t sub_2211E44F0(uint64_t a1, uint64_t a2, TSUCellCoord a3, $925F2A0F20B28CD67DCCD182188DAC27 a4)
{
  v8.origin = a3;
  v8.size = a4;
  v5 = TSUCellRect::firstRow(&v8);
  return objc_msgSend_addIndexesInRange_(*(a1 + 32), v6, (v5 + 1), v8.size.numberOfRows - 1);
}

void sub_2211E4638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2211E4660(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2211E4684(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2211E469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4 = a3;
  *(&v4 + 1) = a4;
  sub_221083454(*(*(a1 + 32) + 8) + 48, &v4);
}

void sub_2211E480C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2211E4834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4 = a3;
  *(&v4 + 1) = a4;
  sub_221083454(*(*(a1 + 32) + 8) + 48, &v4);
}

void sub_2211E49A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2211E49CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4 = a3;
  *(&v4 + 1) = a4;
  sub_221083454(*(*(a1 + 32) + 8) + 48, &v4);
}

void sub_2211E4B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2211E4B48(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_2211E4B58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = *(*(result + 32) + 8);
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *a5 = 1;
  return result;
}

void sub_2211E4C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211E4C70(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = a3;
  v12 = a4;
  v10.origin = sub_2210AFE68(&v11, (a1 + 40));
  v10.size = v7;
  result = TSUCellRect::isEmpty(&v10);
  if ((result & 1) == 0)
  {
    if (v10.origin.row != v11 || (((v11 ^ *&v10.origin) & 0x101FFFF00000000) == 0 ? (v9 = *&v10.size == v12) : (v9 = 0), !v9))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  return result;
}

void sub_2211E4E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2211E4E44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = objc_msgSend_partiallyIntersectsModelCellRect_(*(a1 + 32), a2, a3, a4);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_2211E4F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211E4F70(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  if (a4 >> 33)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_2211E50F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_2211E5110(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  result = sub_2211E55F8((*(*(a1 + 32) + 8) + 48), v8);
  v6 = *(*(a1 + 32) + 8);
  *(v6 + 48) = result;
  *(v6 + 56) = v7;
  return result;
}

void sub_2211E5280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2211E52A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_intersectsCellRange_(*(*(*(a1 + 32) + 8) + 40), a2, a3, a4) && (objc_msgSend_containsCellRange_(*(*(*(a1 + 32) + 8) + 40), v7, a3, a4) & 1) == 0)
  {
    v9 = objc_msgSend_regionByAddingRange_(*(*(*(a1 + 32) + 8) + 40), v8, a3, a4);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_2211E5424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211E543C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  if (a4 >> 33)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_2211E5528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211E5544(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  if (a4 >> 33)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

unint64_t sub_2211E55F8(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  if (*a1 == 0x7FFFFFFF || (*a1 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v3) == 0 || v3 == 0)
  {
    v10 = HIDWORD(v6);
    v11 = v6 & 0xFFFF000000000000;
    LODWORD(v4) = v6;
  }

  else if (v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v5) == 0 || v5 == 0)
  {
    v10 = HIDWORD(v4);
    v11 = v4 & 0xFFFF000000000000;
  }

  else
  {
    if (v4 != 0x7FFFFFFF && v4 > v6)
    {
      goto LABEL_49;
    }

    v16 = v4 == 0x7FFFFFFF ? 0x7FFFFFFF : v4 + HIDWORD(v3) - 1;
    if (v16 < v6 || WORD2(v4) > WORD2(v6))
    {
      goto LABEL_49;
    }

    v17 = v3 + WORD2(v4) - 1;
    if (WORD2(v4) == 0x7FFF || v3 == 0)
    {
      v17 = 0x7FFF;
    }

    if (v17 < WORD2(v6))
    {
      goto LABEL_49;
    }

    v19 = WORD2(v6) == 0x7FFF || v5 == 0;
    v20 = v19 ? 0x7FFF : v5 + WORD2(v6) - 1;
    if (v17 < v20)
    {
      goto LABEL_49;
    }

    v21 = v6 + HIDWORD(v5) - 1;
    if (v6 == 0x7FFFFFFF)
    {
      v21 = 0x7FFFFFFF;
    }

    if (v16 >= v21)
    {
      v11 = v4 & 0xFFFF000000000000;
      v10 = HIDWORD(v4);
    }

    else
    {
LABEL_49:
      v22 = v6 + HIDWORD(v5) - 1;
      if (v4 < v6 && v6 != 0x7FFFFFFF)
      {
        goto LABEL_71;
      }

      if (v6 == 0x7FFFFFFF)
      {
        v22 = 0x7FFFFFFF;
      }

      if (v22 < v4 || WORD2(v6) > WORD2(v4))
      {
        goto LABEL_71;
      }

      v23 = v5 + WORD2(v6) - 1;
      if (WORD2(v6) == 0x7FFF || v5 == 0)
      {
        v23 = 0x7FFF;
      }

      if (v23 < WORD2(v4))
      {
        goto LABEL_71;
      }

      v25 = WORD2(v4) == 0x7FFF || v3 == 0;
      v26 = v25 ? 0x7FFF : v3 + WORD2(v4) - 1;
      if (v23 < v26)
      {
        goto LABEL_71;
      }

      v27 = v4 + HIDWORD(v3) - 1;
      if (v4 == 0x7FFFFFFF)
      {
        v27 = 0x7FFFFFFF;
      }

      if (v22 >= v27)
      {
        v11 = v6 & 0xFFFF000000000000;
        LODWORD(v4) = v6;
        v10 = HIDWORD(v6);
      }

      else
      {
LABEL_71:
        v11 = 0;
        if (WORD2(v4) >= WORD2(v6))
        {
          LOWORD(v10) = WORD2(v6);
        }

        else
        {
          LOWORD(v10) = WORD2(v4);
        }

        if (v6 == 0x7FFFFFFF)
        {
          LODWORD(v6) = 0;
        }

        if (v4 == 0x7FFFFFFF)
        {
          LODWORD(v4) = 0;
        }

        if (v4 < v6)
        {
          LODWORD(v6) = v4;
        }

        LODWORD(v4) = v6;
      }
    }
  }

  return v11 | v4 | (v10 << 32);
}

void *sub_2211E5868(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *sub_2211E5A9C(void *a1, unint64_t *a2)
{
  result = sub_2210BE30C(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

uint64_t *sub_2211E5AD4(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_2211E5B34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2211E5F18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= (*(*(a1 + 32) + 48) - *(*(a1 + 32) + 40)) >> 3)
  {
    sub_2211E631C();
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t *sub_2211E62A0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221123150(result, a4);
  }

  return result;
}

void sub_2211E6300(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2211E6334(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2211E6390(exception, a1);
  __cxa_throw(exception, off_27845D7C0, MEMORY[0x277D825F8]);
}

std::logic_error *sub_2211E6390(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_2211E6764(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTLayoutSpace;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2211EA7E0(uint64_t a1, void *a2, int a3, int a4)
{
  v21 = a2;
  objc_msgSend_width(v21, v7, v8, v9);
  v11 = v10;
  if (*(a1 + 64) >= (a3 + a4))
  {
    v12 = a3 + a4;
  }

  else
  {
    v12 = *(a1 + 64);
  }

  v13 = *(*(a1 + 32) + 8);
  if (*(v13 + 24) != -1)
  {
    if (v10 == *(*(*(a1 + 40) + 8) + 24))
    {
      *(v13 + 24) = v12;
      goto LABEL_15;
    }

    v14 = *(a1 + 48);
    LODWORD(v15) = *(*(v14 + 8) + 24);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(*(*(a1 + 56) + 8) + 24);
        v19 = *(*(*(a1 + 32) + 8) + 24);
        if (*&v18[v16 + 4] < v19 && v19 < *&v18[v16 + 12])
        {
          *(*(*(a1 + 56) + 8) + 24) = malloc_type_realloc(v18, 16 * v15 + 16, 0x1000040451B5BE8uLL);
          v20 = *(*(*(a1 + 56) + 8) + 24);
          *(v20 + 16 * *(*(*(a1 + 48) + 8) + 24)) = *(v20 + v16);
          *(*(*(*(a1 + 56) + 8) + 24) + v16 + 12) = *(*(*(a1 + 32) + 8) + 24);
          *(*(*(*(a1 + 56) + 8) + 24) + 16 * (*(*(*(a1 + 48) + 8) + 24))++ + 4) = *(*(*(a1 + 32) + 8) + 24);
          v14 = *(a1 + 48);
        }

        ++v17;
        v15 = *(*(v14 + 8) + 24);
        v16 += 16;
      }

      while (v17 < v15);
      v13 = *(*(a1 + 32) + 8);
    }
  }

  *(v13 + 24) = v12;
  *(*(*(a1 + 40) + 8) + 24) = v11;
LABEL_15:
}

void sub_2211EA9CC(uint64_t a1, void *a2, int a3, int a4)
{
  v21 = a2;
  objc_msgSend_width(v21, v7, v8, v9);
  v11 = v10;
  if (*(a1 + 64) >= (a3 + a4))
  {
    v12 = a3 + a4;
  }

  else
  {
    v12 = *(a1 + 64);
  }

  v13 = *(*(a1 + 32) + 8);
  if (*(v13 + 24) != -1)
  {
    if (v10 == *(*(*(a1 + 40) + 8) + 24))
    {
      *(v13 + 24) = v12;
      goto LABEL_15;
    }

    v14 = *(a1 + 48);
    LODWORD(v15) = *(*(v14 + 8) + 24);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(*(*(a1 + 56) + 8) + 24);
        v19 = *(*(*(a1 + 32) + 8) + 24);
        if (*&v18[v16] < v19 && v19 < *&v18[v16 + 8])
        {
          *(*(*(a1 + 56) + 8) + 24) = malloc_type_realloc(v18, 16 * v15 + 16, 0x1000040451B5BE8uLL);
          v20 = *(*(*(a1 + 56) + 8) + 24);
          *(v20 + 16 * *(*(*(a1 + 48) + 8) + 24)) = *(v20 + v16);
          *(*(*(*(a1 + 56) + 8) + 24) + v16 + 8) = *(*(*(a1 + 32) + 8) + 24);
          *(*(*(*(a1 + 56) + 8) + 24) + 16 * (*(*(*(a1 + 48) + 8) + 24))++) = *(*(*(a1 + 32) + 8) + 24);
          v14 = *(a1 + 48);
        }

        ++v17;
        v15 = *(*(v14 + 8) + 24);
        v16 += 16;
      }

      while (v17 < v15);
      v13 = *(*(a1 + 32) + 8);
    }
  }

  *(v13 + 24) = v12;
  *(*(*(a1 + 40) + 8) + 24) = v11;
LABEL_15:
}

void sub_2211EB2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);

  _Block_object_dispose((v42 - 200), 8);
  _Block_object_dispose((v42 - 168), 8);
  _Unwind_Resume(a1);
}

__n128 sub_2211EB32C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_2211EB33C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_2211EB354(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_2211EB364(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v7 = a2;
  objc_msgSend_width(v7, v8, v9, v10);
  v15 = v14;
  if (v14 != 0.0)
  {
    v17 = 0;
    v18 = a1 + 40;
LABEL_9:
    if (*(a1 + 104) <= a3)
    {
      v20 = a3;
    }

    else
    {
      v20 = *(a1 + 104);
    }

    if (*(a1 + 108) >= a3 + a4)
    {
      v21 = a3 + a4;
    }

    else
    {
      v21 = *(a1 + 108);
    }

    while (1)
    {
      v22 = *(*v18 + 8);
      v23 = *(v22 + 24);
      if (v23 < 0.0)
      {
        break;
      }

      if (v23 == v15 && !v17)
      {
        goto LABEL_18;
      }

LABEL_19:
      if (*(*(*v18 + 8) + 24) != v15 || v21 >= *(a1 + 108) || v17)
      {
        objc_msgSend_alignedStrokeLineForRowGridRange_(*(a1 + 32), v11, *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56));
        v30 = v29;
        v32 = v31;
        if (*(a1 + 112) == 1)
        {
          if (*(*(*(a1 + 56) + 8) + 24) == 1)
          {
            v33 = *(*(a1 + 64) + 8);
            *(v33 + 48) = v27;
            *(v33 + 56) = v28;
            *(*(*(a1 + 56) + 8) + 24) = 0;
          }

          TSUSubtractPoints();
        }

        v34 = *(a1 + 80);
        if (v34 != 0.0)
        {
          v35 = v30;
          v36 = v32;
          *&v27 = CGRectInset(*&v27, v34, *(a1 + 80));
          v30 = v37;
          v32 = v38;
        }

        v39 = *(a1 + 88);
        if (v39)
        {
          v40 = *v39;
          v41 = v39[2];
          *&v56.c = v39[1];
          *&v56.tx = v41;
          *&v56.a = v40;
          *&v40 = v30;
          v42 = v32;
          *&v27 = CGRectApplyAffineTransform(*&v27, &v56);
          v30 = v43;
          v32 = v44;
        }

        if (*(*(*(a1 + 72) + 8) + 40))
        {
          v47 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v24, v25, v26, v27, v28, v30, v32);
          v48 = *(*(*(a1 + 72) + 8) + 40);
          if (*(a1 + 96) == 0.0)
          {
            objc_msgSend_uniteWithPolygonalBezierPath_(v48, v45, v47, v46);
          }

          else
          {
            objc_msgSend_uniteWithBezierPath_(v48, v45, v47, v46);
          }
          v49 = ;
          v52 = *(*(a1 + 72) + 8);
          v53 = *(v52 + 40);
          *(v52 + 40) = v49;
        }

        else
        {
          v50 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v24, v25, v26, v27, v28, v30, v32);
          v51 = *(*(a1 + 72) + 8);
          v47 = *(v51 + 40);
          *(v51 + 40) = v50;
        }

        v54 = *(*v18 + 8);
        v55 = *(v54 + 24) == v15;
        *(v54 + 24) = 0xBFF0000000000000;
        if (!v55 && !v17)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    *(v22 + 24) = v15;
    *(*(*(a1 + 48) + 8) + 48) = v20;
LABEL_18:
    *(*(*(a1 + 48) + 8) + 56) = v21 - 1;
    goto LABEL_19;
  }

  v16 = objc_msgSend_mergeRangeEmptyStroke(MEMORY[0x277D803C0], v11, v12, v13);
  v17 = v16 == v7;

  v18 = a1 + 40;
  if (*(*(*(a1 + 40) + 8) + 24) != -1.0 || v16 != v7)
  {
    goto LABEL_9;
  }

LABEL_36:
}

void sub_2211EB948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);

  _Block_object_dispose((v42 - 200), 8);
  _Block_object_dispose((v42 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_2211EB9C0(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v7 = a2;
  objc_msgSend_width(v7, v8, v9, v10);
  v15 = v14;
  if (v14 != 0.0)
  {
    v17 = 0;
    v18 = a1 + 40;
LABEL_9:
    if (*(a1 + 104) <= a3)
    {
      v20 = a3;
    }

    else
    {
      v20 = *(a1 + 104);
    }

    if (*(a1 + 108) >= a3 + a4)
    {
      v21 = a3 + a4;
    }

    else
    {
      v21 = *(a1 + 108);
    }

    while (1)
    {
      v22 = *(*v18 + 8);
      v23 = *(v22 + 24);
      if (v23 < 0.0)
      {
        break;
      }

      if (v23 == v15 && !v17)
      {
        goto LABEL_18;
      }

LABEL_19:
      if (*(*(*v18 + 8) + 24) != v15 || v21 >= *(a1 + 108) || v17)
      {
        objc_msgSend_alignedStrokeLineForColumnGridRange_(*(a1 + 32), v11, *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56));
        v30 = v29;
        v32 = v31;
        if (*(a1 + 112) == 1)
        {
          if (*(*(*(a1 + 56) + 8) + 24) == 1)
          {
            v33 = *(*(a1 + 64) + 8);
            *(v33 + 48) = v27;
            *(v33 + 56) = v28;
            *(*(*(a1 + 56) + 8) + 24) = 0;
          }

          TSUSubtractPoints();
        }

        v34 = *(a1 + 80);
        if (v34 != 0.0)
        {
          v35 = v30;
          v36 = v32;
          *&v27 = CGRectInset(*&v27, v34, *(a1 + 80));
          v30 = v37;
          v32 = v38;
        }

        v39 = *(a1 + 88);
        if (v39)
        {
          v40 = *v39;
          v41 = v39[2];
          *&v56.c = v39[1];
          *&v56.tx = v41;
          *&v56.a = v40;
          *&v40 = v30;
          v42 = v32;
          *&v27 = CGRectApplyAffineTransform(*&v27, &v56);
          v30 = v43;
          v32 = v44;
        }

        if (*(*(*(a1 + 72) + 8) + 40))
        {
          v47 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v24, v25, v26, v27, v28, v30, v32);
          v48 = *(*(*(a1 + 72) + 8) + 40);
          if (*(a1 + 96) == 0.0)
          {
            objc_msgSend_uniteWithPolygonalBezierPath_(v48, v45, v47, v46);
          }

          else
          {
            objc_msgSend_uniteWithBezierPath_(v48, v45, v47, v46);
          }
          v49 = ;
          v52 = *(*(a1 + 72) + 8);
          v53 = *(v52 + 40);
          *(v52 + 40) = v49;
        }

        else
        {
          v50 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v24, v25, v26, v27, v28, v30, v32);
          v51 = *(*(a1 + 72) + 8);
          v47 = *(v51 + 40);
          *(v51 + 40) = v50;
        }

        v54 = *(*v18 + 8);
        v55 = *(v54 + 24) == v15;
        *(v54 + 24) = 0xBFF0000000000000;
        if (!v55 && !v17)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    *(v22 + 24) = v15;
    *(*(*(a1 + 48) + 8) + 52) = v20;
LABEL_18:
    *(*(*(a1 + 48) + 8) + 60) = v21 - 1;
    goto LABEL_19;
  }

  v16 = objc_msgSend_mergeRangeEmptyStroke(MEMORY[0x277D803C0], v11, v12, v13);
  v17 = v16 == v7;

  v18 = a1 + 40;
  if (*(*(*(a1 + 40) + 8) + 24) != -1.0 || v16 != v7)
  {
    goto LABEL_9;
  }

LABEL_36:
}

void sub_2211EC290(uint64_t a1, void *a2, unsigned int a3, int a4, int a5, int a6)
{
  v11 = a2;
  objc_msgSend_width(v11, v12, v13, v14);
  v117 = v17;
  width = v17;
  v18 = *(a1 + 100);
  if (v18 <= a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(a1 + 108);
  if (v20 >= a3 + a4)
  {
    v21 = a3 + a4;
  }

  else
  {
    v21 = v20;
  }

  v123.x = 0.0;
  v123.y = 0.0;
  v22 = *(a1 + 48);
  objc_msgSend_p_layoutCoordinateForGridRow_(*(a1 + 32), v15, v19, v16);
  v123.x = v22;
  v123.y = v23;
  v122.x = 0.0;
  v122.y = 0.0;
  v24 = *(a1 + 48);
  objc_msgSend_p_layoutCoordinateForGridRow_(*(a1 + 32), v25, v21, v26);
  v122.x = v24;
  v122.y = v27;
  if ((!objc_msgSend_empty(v11, v28, v29, v30) || *(a1 + 112)) && v123.y != v122.y)
  {
    if (objc_msgSend_drawBlackAndWhite(*(a1 + 32), v31, v32, v33, v123.y))
    {
      v37 = objc_msgSend_mutableCopy(v11, v34, v35, v36);
      v41 = objc_msgSend_blackColor(MEMORY[0x277D81180], v38, v39, v40);
      objc_msgSend_setColor_(v37, v42, v41, v43);

      v11 = v37;
    }

    v120 = 0.0;
    v121 = 0;
    objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v34, &v121, &v120, width);
    TSURectWithOriginAndSize();
    v126 = CGRectInset(v125, -v120, -v120);
    x = v126.origin.x;
    y = v126.origin.y;
    v46 = v126.size.width;
    height = v126.size.height;
    TSURectWithOriginAndSize();
    v128 = CGRectInset(v127, -v120, -v120);
    v50 = v128.origin.x;
    v51 = v128.origin.y;
    v52 = v128.size.width;
    v53 = v128.size.height;
    v54 = *(a1 + 116);
    if (v54)
    {
      v55 = v54 - 1;
    }

    else
    {
      v55 = 0;
    }

    LODWORD(v56) = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(*(a1 + 40), v48, v55, v49);
    v59 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(*(a1 + 40), v57, *(a1 + 116), v58);
    v60 = v59;
    v115 = height;
    v116 = v46;
    if (v56 == 0x7FFF)
    {
      v56 = 0;
    }

    else
    {
      v56 = v56;
    }

    v113 = v53;
    v114 = v52;
    v61 = x;
    v62 = y;
    if (v59 == 0x7FFF)
    {
      v60 = *(a1 + 116);
    }

    ClipBoundingBox = CGContextGetClipBoundingBox(*(a1 + 56));
    v63 = ClipBoundingBox.origin.x;
    v64 = ClipBoundingBox.origin.y;
    v65 = ClipBoundingBox.size.width;
    v66 = ClipBoundingBox.size.height;
    if (CGRectContainsPoint(ClipBoundingBox, v123) || (v130.origin.x = v63, v130.origin.y = v64, v130.size.width = v65, v130.size.height = v66, v133.origin.x = v61, v133.origin.y = v62, v133.size.height = v115, v133.size.width = v116, v68 = 0.0, CGRectIntersectsRect(v130, v133)))
    {
      objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(*(a1 + 40), v67, v19, v56, (v60 + 1));
      v68 = v69;
    }

    v131.origin.x = v63;
    v131.origin.y = v64;
    v131.size.width = v65;
    v131.size.height = v66;
    if (CGRectContainsPoint(v131, v122) || (v132.origin.x = v63, v132.origin.y = v64, v132.size.width = v65, v132.size.height = v66, v134.origin.x = v50, v134.origin.y = v51, v134.size.height = v113, v134.size.width = v114, v76 = 0.0, CGRectIntersectsRect(v132, v134)))
    {
      objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(*(a1 + 40), v70, v21, v56, (v60 + 1));
      v76 = v77;
    }

    if ((a5 - 1) <= 1 && v68 > 0.0)
    {
      v118 = 0;
      v119 = 0.0;
      objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v70, &v119, &v118, v68);
      v73 = 0.5;
      v74 = v119 * 0.5;
      v75 = v123.y;
      v78 = -(v119 * 0.5);
      if (a5 != 1)
      {
        v78 = v119 * 0.5;
      }

      v123.y = v123.y + v78;
    }

    if ((a6 - 1) <= 1 && v76 > 0.0)
    {
      v118 = 0;
      v119 = 0.0;
      objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v70, &v119, &v118, v76, v73, v74, v75);
      v79 = -(v119 * 0.5);
      if (a6 == 1)
      {
        v79 = v119 * 0.5;
      }

      v122.y = v122.y + v79;
    }

    if (objc_msgSend_drawPreventAntialias(*(a1 + 32), v70, v71, v72))
    {
      objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(*(a1 + 32), v80, &v123, &v122, &width);
      objc_msgSend_viewScale(*(a1 + 32), v83, v84, v85);
      if (v86 < 0.330000013)
      {
        width = v117;
      }
    }

    if (*(a1 + 120) == 1)
    {
      v87 = objc_msgSend_color(v11, v80, v81, v82);
      objc_msgSend_alphaComponent(v87, v88, v89, v90);
      v92 = v91;

      if (v92 > 0.0)
      {
        CGContextSaveGState(*(a1 + 56));
        CGContextBeginPath(*(a1 + 56));
        CGContextMoveToPoint(*(a1 + 56), v123.x, v123.y);
        CGContextAddLineToPoint(*(a1 + 56), v122.x, v122.y);
        CGContextSetLineWidth(*(a1 + 56), width);
        CGContextSetBlendMode(*(a1 + 56), kCGBlendModeClear);
        CGContextStrokePath(*(a1 + 56));
        CGContextRestoreGState(*(a1 + 56));
      }
    }

    else if ((objc_msgSend_empty(v11, v80, v81, v82) & 1) == 0)
    {
      objc_msgSend_strokeWidthForDrawingWithAlignedWidth_originalWidth_(*(a1 + 32), v93, v94, v95, width, v117);
      objc_msgSend_drawSingleStroke_context_beginPoint_endPoint_width_strokeWidthForDrawing_strokeFrame_(*(a1 + 32), v96, v11, *(a1 + 56), v123.x, v123.y, v122.x, v122.y, width, v97, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
    }

    if ((*(a1 + 112) - 1) <= 1)
    {
      IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(*(a1 + 32), v93, v94, v95);
      v102 = -(width * 0.5);
      if (IsLeftToRight)
      {
        v102 = width * 0.5;
      }

      v103 = v123.x + v102;
      v104 = v122.x + v102;
      v123.x = v123.x + v102;
      v122.x = v122.x + v102;
      v105 = *(a1 + 32);
      if (*(a1 + 112) == 2 && v21 == *(a1 + 108))
      {
        v106 = 2;
      }

      else
      {
        v106 = 1;
      }

      v107 = v105[74];
      v108 = v105[76];
      v109 = *(a1 + 56);
      v110 = v123.y;
      v111 = v122.y;
      v112 = objc_msgSend_layoutDirectionIsLeftToRight(v105, v99, v100, v101);
      sub_221446224(v109, v106, v112, v103, v110, v104, v111, v107 + v108);
    }
  }
}

void sub_2211EC9B4(uint64_t a1, void *a2, unsigned int a3, int a4, int a5, int a6)
{
  v11 = a2;
  objc_msgSend_width(v11, v12, v13, v14);
  v18 = v17;
  width = v17;
  v19 = *(a1 + 96);
  if (v19 <= a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(a1 + 104);
  if (v21 >= a3 + a4)
  {
    v22 = a3 + a4;
  }

  else
  {
    v22 = v21;
  }

  v127.x = 0.0;
  v127.y = 0.0;
  objc_msgSend_p_layoutCoordinateForGridColumn_(*(a1 + 32), v15, v20, v16);
  v23 = *(a1 + 48);
  v127.x = v24;
  v127.y = v23;
  v126.x = 0.0;
  v126.y = 0.0;
  objc_msgSend_p_layoutCoordinateForGridColumn_(*(a1 + 32), v25, v22, v26);
  v27 = *(a1 + 48);
  v126.x = v28;
  v126.y = v27;
  if ((objc_msgSend_layoutDirectionIsLeftToRight(*(a1 + 32), v29, v30, v31) & 1) == 0)
  {
    x = v127.x;
    v127.x = v126.x;
    v126.x = x;
  }

  if ((!objc_msgSend_empty(v11, v32, v33, v34) || *(a1 + 112)) && v127.x != v126.x)
  {
    if (objc_msgSend_drawBlackAndWhite(*(a1 + 32), v36, v37, v38, v127.x))
    {
      v42 = objc_msgSend_mutableCopy(v11, v39, v40, v41);
      v46 = objc_msgSend_blackColor(MEMORY[0x277D81180], v43, v44, v45);
      objc_msgSend_setColor_(v42, v47, v46, v48);

      v11 = v42;
    }

    v124 = 0.0;
    v125 = 0;
    objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v39, &v125, &v124, width);
    TSURectWithOriginAndSize();
    v130 = CGRectInset(v129, -v124, -v124);
    rect2 = v130.size.height;
    v49 = v130.origin.x;
    y = v130.origin.y;
    v51 = v130.size.width;
    TSURectWithOriginAndSize();
    v132 = CGRectInset(v131, -v124, -v124);
    v54 = v132.origin.x;
    v55 = v132.origin.y;
    v56 = v132.size.width;
    height = v132.size.height;
    v58 = *(a1 + 40);
    v59 = *(a1 + 116);
    v60 = v59 != 0;
    v61 = v59 - 1;
    if (v60)
    {
      v62 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v58, v52, v61, v53);
    }

    else
    {
      v62 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v58, v52, 0, v53);
    }

    LODWORD(v65) = v62;
    v66 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(*(a1 + 40), v63, *(a1 + 116), v64);
    v67 = v66;
    v117 = height;
    v118 = v56;
    v119 = v55;
    v120 = v54;
    if (v65 == 0x7FFFFFFF)
    {
      v65 = 0;
    }

    else
    {
      v65 = v65;
    }

    if (v66 == 0x7FFFFFFF)
    {
      v67 = *(a1 + 116);
    }

    ClipBoundingBox = CGContextGetClipBoundingBox(*(a1 + 56));
    v68 = ClipBoundingBox.origin.x;
    v69 = ClipBoundingBox.origin.y;
    v70 = ClipBoundingBox.size.width;
    v71 = ClipBoundingBox.size.height;
    if (CGRectContainsPoint(ClipBoundingBox, v127) || (v134.origin.x = v68, v134.origin.y = v69, v134.size.width = v70, v134.size.height = v71, v137.origin.x = v49, v137.origin.y = y, v137.size.width = v51, v137.size.height = rect2, v73 = 0.0, CGRectIntersectsRect(v134, v137)))
    {
      objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(*(a1 + 40), v72, v20, v65, (v67 + 1));
      v73 = v74;
    }

    v135.origin.x = v68;
    v135.origin.y = v69;
    v135.size.width = v70;
    v135.size.height = v71;
    if (CGRectContainsPoint(v135, v126) || (v136.origin.x = v68, v136.origin.y = v69, v136.size.width = v70, v136.size.height = v71, v138.origin.y = v119, v138.origin.x = v120, v138.size.height = v117, v138.size.width = v118, v79 = 0.0, CGRectIntersectsRect(v136, v138)))
    {
      objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(*(a1 + 40), v75, v22, v65, (v67 + 1));
      v79 = v80;
    }

    if (v73 > 0.0 && (a5 - 1) <= 1)
    {
      v122 = 0;
      v123 = 0.0;
      objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v75, &v123, &v122, v73);
      IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(*(a1 + 32), v81, v82, v83);
      v85 = v123 * 0.5;
      if (IsLeftToRight)
      {
        v78 = v127.x;
        if (a5 == 1)
        {
          v86 = v127.x - v85;
        }

        else
        {
          v86 = v127.x + v85;
        }

        v127.x = v86;
      }

      else
      {
        v78 = v126.x;
        if (a5 == 1)
        {
          v87 = v126.x + v85;
        }

        else
        {
          v87 = v126.x - v85;
        }

        v126.x = v87;
      }
    }

    if (v79 > 0.0 && (a6 - 1) <= 1)
    {
      v122 = 0;
      v123 = 0.0;
      objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(*(a1 + 32), v75, &v123, &v122, v79, v78);
      v91 = objc_msgSend_layoutDirectionIsLeftToRight(*(a1 + 32), v88, v89, v90);
      v92 = v123 * 0.5;
      if (v91)
      {
        if (a6 == 1)
        {
          v93 = v126.x + v92;
        }

        else
        {
          v93 = v126.x - v92;
        }

        v126.x = v93;
      }

      else
      {
        if (a6 == 1)
        {
          v94 = v127.x - v92;
        }

        else
        {
          v94 = v127.x + v92;
        }

        v127.x = v94;
      }
    }

    if (objc_msgSend_drawPreventAntialias(*(a1 + 32), v75, v76, v77))
    {
      objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(*(a1 + 32), v95, &v127, &v126, &width);
      objc_msgSend_viewScale(*(a1 + 32), v98, v99, v100);
      if (v101 < 0.330000013)
      {
        width = v18;
      }
    }

    if (*(a1 + 120) == 1)
    {
      v102 = objc_msgSend_color(v11, v95, v96, v97);
      objc_msgSend_alphaComponent(v102, v103, v104, v105);
      v107 = v106;

      if (v107 > 0.0)
      {
        CGContextSaveGState(*(a1 + 56));
        CGContextBeginPath(*(a1 + 56));
        CGContextMoveToPoint(*(a1 + 56), v127.x, v127.y);
        CGContextAddLineToPoint(*(a1 + 56), v126.x, v126.y);
        CGContextSetLineWidth(*(a1 + 56), width);
        CGContextSetBlendMode(*(a1 + 56), kCGBlendModeClear);
        CGContextStrokePath(*(a1 + 56));
        CGContextRestoreGState(*(a1 + 56));
      }
    }

    else if ((objc_msgSend_empty(v11, v95, v96, v97) & 1) == 0)
    {
      objc_msgSend_strokeWidthForDrawingWithAlignedWidth_originalWidth_(*(a1 + 32), v108, v109, v110, width, v18);
      objc_msgSend_drawSingleStroke_context_beginPoint_endPoint_width_strokeWidthForDrawing_strokeFrame_(*(a1 + 32), v111, v11, *(a1 + 56), v127.x, v127.y, v126.x, v126.y, width, v112, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
    }

    v113 = *(a1 + 112);
    if ((v113 - 1) <= 1)
    {
      v114 = v127.y + width * 0.5;
      v127.y = v114;
      v115 = width * 0.5 + v126.y;
      v126.y = v115;
      if (v113 == 2 && v22 == *(a1 + 104))
      {
        v116 = 2;
      }

      else
      {
        v116 = 1;
      }

      sub_2214460DC(*(a1 + 56), v116, v127.x, v114, v126.x, v115, *(*(a1 + 32) + 592) + *(*(a1 + 32) + 608));
    }
  }
}

BOOL sub_2211EFC24(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  return v3 && v4 < *(a1 + 12);
}

void sub_2211EFC48(void *a1, unsigned int a2, double a3)
{
  v5 = a1;
  v6 = *(v5 + 2);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v7)
  {
    v9 = *(v5 + 3);
    if (v8 < v9)
    {
      v10 = *(v5 + 2);
      v10[v8] = a3;
      if (v8 == v9 - 1)
      {
        v10[v8 + 1] = a3;
        *(v5 + 3) = (a3 - *v10) / v8;
      }
    }
  }
}

double sub_2211EFCD0(void *a1, unsigned int a2)
{
  v3 = a1;
  v6 = v3;
  if (v3)
  {
    v7 = v3[2];
    v8 = 0.0;
    v9 = a2 >= v7;
    v10 = a2 - v7;
    if (v9 && v10 < v3[3])
    {
      if (*(v3 + 40) == 1)
      {
        v8 = *(*(v3 + 2) + 8 * v10);
      }

      else
      {
        v8 = *(v3 + 6) - *(*(v3 + 2) + 8 * v10);
      }
    }
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "CGFloat TSTCoordinateArrayGetCoordinate(TSTCoordinateArray *__strong, TSTGridIndex)", v5);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCoordinateArray.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 120, 0, "invalid nil value for '%{public}s'", "coordinateArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    v8 = 0.0;
  }

  return v8;
}

double sub_2211EFE04(void *a1, unsigned int a2)
{
  v3 = a1;
  v6 = v3;
  if (v3)
  {
    v7 = v3[2];
    v8 = 0.0;
    v9 = a2 >= v7;
    v10 = a2 - v7;
    if (v9 && v10 < v3[3])
    {
      v8 = *(*(v3 + 2) + 8 * v10);
    }
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "CGFloat TSTCoordinateArrayGetRawCoordinate(TSTCoordinateArray *__strong, TSTGridIndex)", v5);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCoordinateArray.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 142, 0, "invalid nil value for '%{public}s'", "coordinateArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    v8 = 0.0;
  }

  return v8;
}

uint64_t sub_2211EFF18(void *a1, double a2)
{
  v3 = a1;
  v6 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  v7 = v3[3];
  if (!v7)
  {
    goto LABEL_7;
  }

  if ((v3[10] & 1) == 0)
  {
    a2 = *(v3 + 6) - a2 + -0.00999999978;
  }

  v8 = *(v3 + 2);
  v9 = *v8;
  if (a2 <= *v8)
  {
    v11 = v3[2];
    goto LABEL_9;
  }

  v10 = v7 - 1;
  if (a2 <= v8[v10] + 0.00999999978)
  {
    v13 = *(v3 + 3);
    if (v13 <= 0.0)
    {
      v14 = 0;
    }

    else
    {
      v14 = ((a2 - v9) / v13);
      v9 = v8[v14];
    }

    if (a2 >= v9)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (a2 >= v9)
    {
      v16 = v10;
    }

    else
    {
      v16 = v14;
    }

    if (a2 < v9 || a2 > v8[v14 + 1] + 0.00999999978)
    {
      goto LABEL_24;
    }

    v17 = objc_msgSend_containsIndex_(*(v3 + 4), v4, v3[2] + v14, v5);
    v11 = *(v6 + 2) + v14;
    if ((v17 & 1) == 0)
    {
      v11 = sub_2211F00E8(v6, v11);
    }

    if (v11 == -1)
    {
LABEL_24:
      v11 = 0xFFFFFFFFLL;
      while (v15 <= v16)
      {
        v18 = (v16 + v15) >> 1;
        if (a2 >= v8[v18])
        {
          v15 = v18 + 1;
          if (a2 <= v8[v18 + 1] + 0.00999999978)
          {
            v11 = *(v6 + 2) + v18;
          }
        }

        else
        {
          v16 = v18 - 1;
        }
      }

      if ((objc_msgSend_containsIndex_(*(v6 + 4), v4, v11, v5) & 1) == 0)
      {
        v11 = sub_2211F00E8(v6, v11);
      }
    }

    if (*(v6 + 40) == 1 && v11 == *(v6 + 3) + *(v6 + 2) - 1)
    {
      v11 = objc_msgSend_indexLessThanIndex_(*(v6 + 4), v4, v11, v5);
    }
  }

  else
  {
LABEL_7:
    v11 = 0xFFFFFFFFLL;
  }

LABEL_9:

  return v11;
}

uint64_t sub_2211F00E8(void *a1, unsigned int a2)
{
  v3 = a1;
  v6 = sub_2211EFCD0(v3, a2);
  v7 = v3[4];
  if (v6 <= 0.0)
  {
    v8 = objc_msgSend_indexGreaterThanIndex_(v7, v4, a2, v5);
  }

  else
  {
    v8 = objc_msgSend_indexLessThanIndex_(v7, v4, a2, v5);
  }

  v9 = v8;

  return v9;
}

uint64_t sub_2211F0154(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = *(a2 + 12) - 1;
  if (v4 >= *(a1 + 12) - 1)
  {
    v4 = *(a1 + 12) - 1;
  }

  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  if (!v5)
  {
    return 0;
  }

  memcpy(*(a1 + 16), *(a2 + 16), 8 * v5);
  result = v5 - 1;
  *a4 = *(*(a1 + 16) + 8 * result);
  return result;
}

uint64_t **sub_2211F0730(void *a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a2 + 4);
  v5 = (*a2 + (*(a2 + 2) << 16)) ^ v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_24;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (*a2 + (*(a2 + 2) << 16)) ^ v4;
    if (*&v6 <= v5)
    {
      v8 = v5 % v6.i32[0];
    }
  }

  else
  {
    v8 = (v6.i32[0] - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_24:
    operator new();
  }

  v11 = *a2;
  while (1)
  {
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v8)
    {
      goto LABEL_24;
    }

LABEL_23:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  v13 = v10[2];
  v15 = v11 == v13;
  v14 = (v13 ^ v11) & 0x101FFFF00000000;
  v15 = v15 && v14 == 0;
  if (!v15 || v4 != *(v10 + 12))
  {
    goto LABEL_23;
  }

  return v10;
}

void sub_2211F09BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

void sub_2211F120C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2211F1234(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2211F1258(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2211F1270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 8);
  v7 = v5[7];
  v6 = v5[8];
  if (v7 >= v6)
  {
    v9 = v5[6];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      sub_22107C148();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF0;
    v15 = 0xFFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_221086F74((v5 + 6), v15);
    }

    v16 = (16 * v11);
    *v16 = a2;
    v16[1] = a3;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    v17 = v5[6];
    v5[6] = 0;
    v5[7] = v8;
    v5[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v7 = a2;
    *(v7 + 1) = a3;
    v8 = (v7 + 16);
  }

  v5[7] = v8;
}

void sub_2211F147C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2211F14A4(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2211F14C8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}
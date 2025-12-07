double cropTimeAboveFacesNoMask(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, void *x0_0, double a9, double a10)
{
  v15.n128_f64[0] = combineFaceRects(x0_0);
  v16 = v15.n128_f64[0];
  v18 = v17.n128_f64[0];
  v20 = v19.n128_f64[0];
  v22 = v21.n128_f64[0];
  v23.n128_f64[0] = a7;
  if (!rectPlusCushionInsideImage(v15, v17, v19, v21, v23))
  {
    return *MEMORY[0x277CBF398];
  }

  v24 = maxRectInImageWithAnchorAtPosition(a9 / a10 / (a1 / a2), a7, 0.5, a4 + a6, v16 + v20 * 0.5, v18);
  if (!rectIsWithinRect(v16, v18, v20, v22, v24, v25, v26, v27))
  {
    return *MEMORY[0x277CBF398];
  }

  return v24;
}

double combineFaceRects(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    [v2 rectValue];
    x = v3;
    y = v5;
    width = v7;
    height = v9;

    if ([v1 count] >= 2)
    {
      v11 = 1;
      do
      {
        v12 = [v1 objectAtIndexedSubscript:v11];
        [v12 rectValue];
        v20.origin.x = v13;
        v20.origin.y = v14;
        v20.size.width = v15;
        v20.size.height = v16;
        v18.origin.x = x;
        v18.origin.y = y;
        v18.size.width = width;
        v18.size.height = height;
        v19 = CGRectUnion(v18, v20);
        x = v19.origin.x;
        y = v19.origin.y;
        width = v19.size.width;
        height = v19.size.height;

        ++v11;
      }

      while ([v1 count] > v11);
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
  }

  return x;
}

BOOL rectPlusCushionInsideImage(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = expandRect(a1.n128_f64[0], a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], a5.n128_f64[0], a5.n128_f64[0], a5.n128_f64[0]);

  return rectIsWithinRect(v5, v6, v7, v8, 0.0, 0.0, 1.0, 1.0);
}

double maxRectInImageWithAnchorAtPosition(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = (a5 - a2) / a3;
  v7 = 1.0 - a2;
  if (v6 >= (1.0 - a2 - a5) / (1.0 - a3))
  {
    v6 = (1.0 - a2 - a5) / (1.0 - a3);
  }

  v8 = v6 / a1;
  v9 = (a6 - a2) / a4;
  v10 = (v7 - a6) / (1.0 - a4);
  if (v9 < v10)
  {
    v10 = v9;
  }

  if (v10 < v8)
  {
    v6 = v6 * (v10 / v8);
  }

  return a5 - a3 * v6;
}

double cropTimeBelowFacesNoMask(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v45 = *MEMORY[0x277D85DE8];
  v15 = a1;
  v16.n128_f64[0] = combineFaceRects(v15);
  v17 = v16.n128_f64[0];
  v19 = v18.n128_f64[0];
  v21 = v20.n128_f64[0];
  v23 = v22.n128_f64[0];
  v24.n128_f64[0] = a8;
  if (!rectPlusCushionInsideImage(v16, v18, v20, v22, v24))
  {
    goto LABEL_14;
  }

  v39 = a5 * 0.3;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = a10 / a11 / (a2 / a3);
  v26 = v15;
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    v30 = 1.0;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v40 + 1) + 8 * i) rectValue];
        if (v32 + v33 * 0.3 < v30)
        {
          v30 = v32 + v33 * 0.3;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v28);
  }

  else
  {
    v30 = 1.0;
  }

  v34 = maxRectInImageWithAnchorAtPosition(v25, a8, 0.5, v39, v17 + v21 * 0.5, v30);
  if (!rectIsWithinRect(v17, v19, v21, v23, v34, v35, v36, v37))
  {
LABEL_14:
    v34 = *MEMORY[0x277CBF398];
  }

  return v34;
}

double cropTimeAboveFacesWithMask(void *a1, void *a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, uint64_t x2_0, double a11, double a12)
{
  v19 = a2;
  v20.n128_f64[0] = combineFaceRects(a1);
  v21 = v20.n128_f64[0];
  v23 = v22.n128_f64[0];
  v25 = v24.n128_f64[0];
  v27 = v26.n128_u64[0];
  v28.n128_f64[0] = a9;
  if (rectPlusCushionInsideImage(v20, v22, v24, v26, v28))
  {
    v64 = *&v27;
    v58 = a6 + a8;
    v65 = v25;
    v29 = v21 + v25 * 0.5;
    v30 = (v29 + 0.0) / (a9 + 0.5);
    v31 = (1.0 - v29) / (a9 + 0.5);
    if (v30 >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    if (1.0 / (a9 * 2.0 + 1.0) >= v23 / (a6 + a8 + a9))
    {
      v33 = v23 / (a6 + a8 + a9);
    }

    else
    {
      v33 = 1.0 / (a9 * 2.0 + 1.0);
    }

    v34 = v32 / (a11 / a12 / (a3 / a4));
    if (v34 <= v33)
    {
      v33 = v32 / (a11 / a12 / (a3 / a4));
    }

    else
    {
      v32 = v32 * (v33 / v34);
    }

    v36 = v23;
    v37 = v23 - v33 * v58;
    v38 = v21;
    v39 = v21 + (v65 - v32) * 0.5;
    v40 = *(MEMORY[0x277CBF398] + 16);
    v67.origin = *MEMORY[0x277CBF398];
    v67.size = v40;
    v62 = v36;
    v63 = v38;
    if (rectIsWithinRect(v38, v36, v65, v64, v39, v37, v32, v33))
    {
      v57 = -8.0 / a4;
      v51 = -8.0 / a3 + 1.0;
      v44 = ((0.200845666 / (a7 * a8) + -1.0) * 0.2 + 1.0) * 0.185;
      v45 = dbl_22D12D700[x2_0 == 2];
      v56 = v44 / 0.18;
      v55 = v44 / 0.18 * v45;
      v54 = v44 * 0.04 / 0.82;
      v52 = a9 + 1.0;
      v53 = v54 * v45;
      do
      {
        if (v37 <= 1.0 - v33 * v52)
        {
          v46 = v37;
        }

        else
        {
          v46 = 1.0 - v33 * v52;
        }

        v47 = iterativeVerticalFacesMaskSolver(v19, 0, v66, a9, v39, v46, v32, v33, v41, v42, v43, v63, v62, v65, v64, a5, a6, a7, a8, v57, v54, v56, v53, v55);
        v49 = v48;
        x = v67.origin.x;
        if (!CGRectIsEmpty(v67))
        {
          break;
        }

        v32 = v51 * v47;
        v33 = v51 * v49;
        v37 = v62 - v51 * v49 * v58;
        v39 = v63 + (v65 - v32) * 0.5;
      }

      while (rectIsWithinRect(v63, v62, v65, v64, v39, v37, v32, v33));
    }

    else
    {
      x = v67.origin.x;
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
  }

  return x;
}

CGFloat iterativeVerticalFacesMaskSolver(void *a1, uint64_t a2, double *a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, CGFloat a16, CGFloat a17, CGFloat a18, CGFloat a19, double a20, double a21, double a22, double a23, double a24)
{
  v31 = a1;
  v32.n128_f64[0] = a5;
  v33.n128_f64[0] = a6;
  v34.n128_f64[0] = a7;
  v35.n128_f64[0] = a8;
  v36.n128_f64[0] = a4;
  if (rectPlusCushionInsideImage(v32, v33, v34, v35, v36))
  {
    while (rectIsWithinRect(a12, a13, a14, a15, a5, a6, a7, a8))
    {
      v37.n128_f64[0] = findCoverage(a2, v31, a5, a6, a7, a8, a16, a17, a18, a19);
      if (v38.n128_f64[0] < a22 && v37.n128_f64[0] < a21)
      {
        if (v38.n128_f64[0] >= a24 && v37.n128_f64[0] >= a23)
        {
          a3[12] = a5;
          a3[13] = a6;
          a3[14] = a7;
          a3[15] = a8;
        }

        break;
      }

      a6 = a6 + a20;
      v37.n128_f64[0] = a5;
      v38.n128_f64[0] = a6;
      v39.n128_f64[0] = a7;
      v40.n128_f64[0] = a8;
      v41.n128_f64[0] = a4;
      if (!rectPlusCushionInsideImage(v37, v38, v39, v40, v41))
      {
        break;
      }
    }
  }

  return a7;
}

double cropTimeBelowFacesWithMask(void *a1, void *a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  v17 = a2;
  v18.n128_f64[0] = combineFaceRects(a1);
  v19 = v18.n128_f64[0];
  v21 = v20.n128_f64[0];
  v23 = v22.n128_f64[0];
  v25 = v24.n128_f64[0];
  v26.n128_f64[0] = a9;
  if (rectPlusCushionInsideImage(v18, v20, v22, v24, v26))
  {
    v54 = v25;
    v55 = v23;
    v27 = v19 + v23 * 0.5;
    v28 = (v27 + 0.0) / (a9 + 0.5);
    v29 = (1.0 - v27) / (a9 + 0.5);
    if (v28 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    if (1.0 / (a9 * 2.0 + 1.0) >= (v21 + v25) / (a6 - a9))
    {
      v31 = (v21 + v25) / (a6 - a9);
    }

    else
    {
      v31 = 1.0 / (a9 * 2.0 + 1.0);
    }

    v32 = v30 / (a11 / a12 / (a3 / a4));
    v53 = a4;
    if (v32 <= v31)
    {
      v31 = v30 / (a11 / a12 / (a3 / a4));
    }

    else
    {
      v30 = v30 * (v31 / v32);
    }

    v34 = v19 + (v55 - v30) * 0.5;
    v35 = *(MEMORY[0x277CBF398] + 16);
    v57.origin = *MEMORY[0x277CBF398];
    v57.size = v35;
    if (rectIsWithinRect(v19, v21, v55, v54, v34, v21, v30, v31))
    {
      v46 = 1.0 - 8.0 / a3;
      v39 = ((0.200845666 / (a7 * a8) + -1.0) * 0.2 + 1.0) * 0.185;
      v48 = v39 / 0.18;
      v49 = v39 * 0.04 / 0.82;
      v47 = v39 / 0.18 * 0.142857143;
      do
      {
        v40 = 1.0 - v31 * (a9 + 1.0);
        v41 = v40 - v31;
        if (v21 + v31 >= v40)
        {
          v41 = v21;
        }

        v42 = iterativeVerticalFacesMaskSolver(v17, 1, v56, a9, v34, v41, v30, v31, v36, v37, v38, v19, v21, v55, v54, a5, a6, a7, a8, 8.0 / v53, v49, v48, v49 * 0.142857143, v47);
        v44 = v43;
        x = v57.origin.x;
        if (!CGRectIsEmpty(v57))
        {
          break;
        }

        v30 = v46 * v42;
        v31 = v46 * v44;
        v34 = v19 + (v55 - v30) * 0.5;
      }

      while (rectIsWithinRect(v19, v21, v55, v54, v34, v21, v30, v31));
    }

    else
    {
      x = v57.origin.x;
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
  }

  return x;
}

double cropTimeLeftOfFacesWithMask(void *a1, void *a2, uint64_t a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, CGFloat a17, CGFloat a18, CGFloat a19, double a20, double a21, double a22)
{
  v28 = a2;
  v29.n128_f64[0] = combineFaceRects(a1);
  v30 = v29.n128_f64[0];
  v32 = v31.n128_f64[0];
  v34 = v33.n128_f64[0];
  v71 = v35.n128_f64[0];
  v36.n128_f64[0] = a20;
  if (rectPlusCushionInsideImage(v29, v31, v33, v35, v36))
  {
    v37 = a6 + a8;
    v63 = a5;
    v66 = a4;
    v38 = a21 / a22 / (a4 / a5);
    v39 = 1.0 / (a20 * 2.0 + 1.0);
    v40 = v34 * 1.0001 / (1.0 - (a6 + a8));
    if (v40 >= v39)
    {
      v40 = 1.0 / (a20 * 2.0 + 1.0);
    }

    v41 = v40 / v38;
    v42 = v38 * v71;
    if (v41 >= v71)
    {
      v43 = v41;
    }

    else
    {
      v43 = v71;
    }

    v68 = a6;
    if (v41 >= v71)
    {
      v44 = v40;
    }

    else
    {
      v44 = v42;
    }

    v45 = *(MEMORY[0x277CBF398] + 16);
    v73.origin = *MEMORY[0x277CBF398];
    v73.size = v45;
    v74.origin = v73.origin;
    v74.size = v45;
    v69 = v37;
    v46 = v30 - v44 * v37;
    v75.origin = v73.origin;
    v75.size = v45;
    if (rectIsWithinRect(v30, v32, v34, v71, v46, v32, v44, v43) && v44 <= v39 && v43 <= v39)
    {
      v67 = -4.0 / v66;
      v50 = -8.0 / v63;
      v64 = 8.0 / v63 + 1.0;
      v65 = v50;
      v51 = ((0.200845666 / (a8 * a9) + -1.0) * 0.2 + 1.0) * 0.185;
      v62 = v51 / 0.18;
      v60 = a20 + 1.0;
      v61 = v51 * 0.04 / 0.82;
      do
      {
        if (v46 <= 1.0 - v44 * v60)
        {
          v52 = v46;
        }

        else
        {
          v52 = 1.0 - v44 * v60;
        }

        if (v32 <= 1.0 - v43 * v60)
        {
          v53 = v32;
        }

        else
        {
          v53 = 1.0 - v43 * v60;
        }

        v54 = iterativeBidirectionalFacesMaskSolver(v28, 2, a3, 2, &v73.origin.x, a20, v52, v53, v44, v43, v47, v48, v49, v30, v32, v34, v71, v68, a7, a8, a9, a12, a13, a14, a15, a16, a17, a18, a19, v67, v65, v61, v62);
        v44 = v64 * v54;
        v43 = v64 * v55;
        v46 = v30 - v64 * v54 * v69;
      }

      while (rectIsWithinRect(v30, v32, v34, v71, v46, v32, v64 * v54, v64 * v55) && v44 <= v39 && v43 <= v39);
    }

    x = v73.origin.x;
    if (CGRectIsEmpty(v73))
    {
      x = v74.origin.x;
      if (CGRectIsEmpty(v74))
      {
        x = v75.origin.x;
        CGRectIsEmpty(v75);
      }
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
  }

  return x;
}

double positionCandidateRectForSizeLeft(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a4 - a2 * a8;
  if (a1 == 2)
  {
    return result + -(a6 - a2 * (1.0 - a8)) * -0.5;
  }

  return result;
}

double iterativeBidirectionalFacesMaskSolver(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, CGFloat a18, CGFloat a19, CGFloat a20, CGFloat a21, CGFloat a22, CGFloat a23, CGFloat a24, CGFloat a25, CGFloat a26, CGFloat a27, CGFloat a28, CGFloat a29, double a30, double a31, double a32, double a33)
{
  v42 = a1;
  v43.n128_f64[0] = a7;
  v44.n128_f64[0] = a8;
  v45.n128_f64[0] = a9;
  v46.n128_f64[0] = a10;
  v47.n128_f64[0] = a6;
  if (rectPlusCushionInsideImage(v43, v44, v45, v46, v47))
  {
    v92 = 1.79769313e308;
    v93 = 1.79769313e308;
    v88 = 1.79769313e308;
    v89 = 1.79769313e308;
    v86 = 1.79769313e308;
    v87 = 1.79769313e308;
    v84 = a6;
    while (1)
    {
      if (!rectIsWithinRect(a14, a15, a16, a17, a7, a8, a9, a10))
      {
        goto LABEL_50;
      }

      v48.n128_f64[0] = a7;
      v49.n128_f64[0] = a8;
      v50.n128_f64[0] = a9;
      v51.n128_f64[0] = a10;
      v52.n128_f64[0] = a6;
      if (rectPlusCushionInsideImage(v48, v49, v50, v51, v52))
      {
        break;
      }

LABEL_49:
      a8 = a8 + a31;
      v53.n128_f64[0] = a7;
      v54.n128_f64[0] = a8;
      v55.n128_f64[0] = a9;
      v56.n128_f64[0] = a10;
      v57.n128_f64[0] = a6;
      if (!rectPlusCushionInsideImage(v53, v54, v55, v56, v57))
      {
        goto LABEL_50;
      }
    }

    v58 = (a8 - a15 + -a17 * 0.5) / a10;
    v90 = vabdd_f64(-0.5, v58);
    v91 = vabdd_f64(-0.333333333, v58);
    v59 = a7;
    v85 = a7;
    while (1)
    {
      if (!rectIsWithinRect(a14, a15, a16, a17, v59, a8, a9, a10))
      {
        goto LABEL_49;
      }

      v94.origin.x = v59;
      v94.origin.y = a8;
      v94.size.width = a9;
      v94.size.height = a10;
      if (CGRectIsNull(v94))
      {
        v60 = 1.79769313e308;
      }

      else
      {
        if (a2 == 2)
        {
          v61 = (a18 + a20 + 1.0) * 0.5;
        }

        else
        {
          v61 = a18 * 0.5;
        }

        v60 = vabdd_f64((v59 - a14 + -a16 * 0.5) / -a9, v61);
      }

      v95.origin.x = v59;
      v95.origin.y = a8;
      v95.size.width = a9;
      v95.size.height = a10;
      if (!CGRectIsNull(v95))
      {
        if (a3 == 2)
        {
          v67 = v90;
        }

        else
        {
          v67 = 0.0;
          if (a3 == 1)
          {
            v67 = v91;
          }
        }

        if (v60 < 0.02 && v67 < 0.15)
        {
          v62.n128_f64[0] = findCoverage(a4, v42, v59, a8, a9, a10, a18, a19, a20, a21);
          if (v63.n128_f64[0] >= a33 * 0.142857143 && v63.n128_f64[0] < a33 && v62.n128_f64[0] < a32 && v62.n128_f64[0] >= a32 * 0.142857143)
          {
            v96.origin.x = v59;
            v96.origin.y = a8;
            v96.size.width = a9;
            v96.size.height = a10;
            v98.origin.x = a22;
            v98.origin.y = a23;
            v98.size.width = a24;
            v98.size.height = a25;
            v68 = v60 * 0.98;
            if (CGRectContainsRect(v96, v98))
            {
              if (v67 * 0.99 < v93 && v68 <= v92)
              {
                v70 = a5 + 5;
                v69 = a5 + 4;
                v71 = a5;
                v73 = a5 + 2;
                v72 = a5 + 1;
                v74 = a5 + 3;
                v75 = v86;
                v76 = v87;
                v77 = v88;
                v78 = v89;
                v79 = v60;
                v80 = v67;
                goto LABEL_40;
              }

              if (v60 * 0.99 >= v92)
              {
                goto LABEL_48;
              }

              v70 = a5 + 5;
              v69 = a5 + 4;
              v71 = a5;
              v73 = a5 + 2;
              v72 = a5 + 1;
              v82 = v67 * 0.98 > v93;
              v74 = a5 + 3;
              v75 = v86;
              v76 = v87;
              v77 = v88;
              v78 = v89;
              v79 = v60;
              v80 = v67;
            }

            else
            {
              v97.origin.x = v59;
              v97.origin.y = a8;
              v97.size.width = a9;
              v97.size.height = a10;
              v99.origin.x = a26;
              v99.origin.y = a27;
              v99.size.width = a28;
              v99.size.height = a29;
              v81 = CGRectContainsRect(v97, v99);
              v63.n128_f64[0] = v67 * 0.99;
              if (v81)
              {
                if (v63.n128_f64[0] < v89 && v68 <= v87)
                {
                  v70 = a5 + 11;
                  v69 = a5 + 10;
                  v72 = a5 + 7;
                  v71 = a5 + 6;
                  v74 = a5 + 9;
                  v73 = a5 + 8;
                  v75 = v86;
                  v77 = v88;
                  v76 = v60;
                  v78 = v67;
                  goto LABEL_39;
                }

                if (v60 * 0.99 >= v87)
                {
                  goto LABEL_48;
                }

                v70 = a5 + 11;
                v69 = a5 + 10;
                v72 = a5 + 7;
                v71 = a5 + 6;
                v77 = v88;
                v82 = v67 * 0.98 > v89;
                v74 = a5 + 9;
                v73 = a5 + 8;
                v75 = v86;
                v76 = v60;
                v78 = v67;
              }

              else
              {
                if (v63.n128_f64[0] < v88 && v68 <= v86)
                {
                  v70 = a5 + 17;
                  v69 = a5 + 16;
                  v72 = a5 + 13;
                  v71 = a5 + 12;
                  v74 = a5 + 15;
                  v73 = a5 + 14;
                  v75 = v60;
                  v77 = v67;
                  v76 = v87;
                  v78 = v89;
LABEL_39:
                  v79 = v92;
                  v80 = v93;
LABEL_40:
                  a7 = v85;
                  a6 = v84;
LABEL_47:
                  *v69 = v60;
                  *v70 = v67;
                  *v71 = v59;
                  v86 = v75;
                  v87 = v76;
                  *v72 = a8;
                  v88 = v77;
                  v89 = v78;
                  *v73 = a9;
                  v92 = v79;
                  v93 = v80;
                  *v74 = a10;
                  goto LABEL_14;
                }

                if (v60 * 0.99 >= v86)
                {
LABEL_48:
                  a7 = v85;
                  a6 = v84;
                  goto LABEL_14;
                }

                v70 = a5 + 17;
                v69 = a5 + 16;
                v72 = a5 + 13;
                v71 = a5 + 12;
                v76 = v87;
                v82 = v67 * 0.98 > v88;
                v74 = a5 + 15;
                v73 = a5 + 14;
                v75 = v60;
                v77 = v67;
                v78 = v89;
              }

              v79 = v92;
              v80 = v93;
            }

            a7 = v85;
            a6 = v84;
            if (!v82)
            {
              goto LABEL_47;
            }
          }
        }
      }

LABEL_14:
      v59 = v59 + a30;
      v62.n128_f64[0] = v59;
      v63.n128_f64[0] = a8;
      v64.n128_f64[0] = a9;
      v65.n128_f64[0] = a10;
      v66.n128_f64[0] = a6;
      if (!rectPlusCushionInsideImage(v62, v63, v64, v65, v66))
      {
        goto LABEL_49;
      }
    }
  }

LABEL_50:

  return a9;
}

double cropTimeRightOfFacesWithMask(void *a1, void *a2, uint64_t a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, CGFloat a17, CGFloat a18, CGFloat a19, double a20, double a21, double a22)
{
  v28 = a2;
  v29.n128_f64[0] = combineFaceRects(a1);
  v30 = v29.n128_f64[0];
  v32 = v31.n128_f64[0];
  v34 = v33.n128_f64[0];
  v68 = v35.n128_f64[0];
  v36.n128_f64[0] = a20;
  if (rectPlusCushionInsideImage(v29, v31, v35, v33, v36))
  {
    v61 = a5;
    v64 = a4;
    v37 = a21 / a22 / (a4 / a5);
    v38 = 1.0 / (a20 * 2.0 + 1.0);
    v39 = v68 * 1.0001 / (1.0 - a6);
    if (v39 >= v38)
    {
      v39 = 1.0 / (a20 * 2.0 + 1.0);
    }

    v40 = v39 / v37;
    v41 = v37 * v34;
    if (v40 >= v34)
    {
      v42 = v39;
    }

    else
    {
      v42 = v41;
    }

    v43 = *(MEMORY[0x277CBF398] + 16);
    v69.origin = *MEMORY[0x277CBF398];
    v69.size = v43;
    v70.origin = v69.origin;
    v70.size = v43;
    if (v40 >= v34)
    {
      v44 = v40;
    }

    else
    {
      v44 = v34;
    }

    v71.origin = v69.origin;
    v71.size = v43;
    if (rectIsWithinRect(v30, v32, v68, v34, v30, v32, v42, v44) && v42 <= v38 && v44 <= v38)
    {
      v65 = -4.0 / v64;
      v47 = -8.0 / v61;
      v62 = 8.0 / v61 + 1.0;
      v63 = v47;
      v48 = ((0.200845666 / (a8 * a9) + -1.0) * 0.2 + 1.0) * 0.185;
      v60 = v48 / 0.18;
      v58 = a20 + 1.0;
      v59 = v48 * 0.04 / 0.82;
      do
      {
        v49 = 1.0 - v42 * v58;
        if (v30 + v42 >= v49)
        {
          v50 = v30;
        }

        else
        {
          v50 = v49 - v42;
        }

        if (v32 <= 1.0 - v44 * v58)
        {
          v51 = v32;
        }

        else
        {
          v51 = 1.0 - v44 * v58;
        }

        v52 = iterativeBidirectionalFacesMaskSolver(v28, 1, a3, 3, &v69.origin.x, a20, v50, v51, v42, v44, v58, v45, v46, v30, v32, v68, v34, a6, a7, a8, a9, a12, a13, a14, a15, a16, a17, a18, a19, v65, v63, v59, v60);
        v42 = v62 * v52;
        v44 = v62 * v53;
      }

      while (rectIsWithinRect(v30, v32, v68, v34, v30, v32, v62 * v52, v62 * v53) && v42 <= v38 && v44 <= v38);
    }

    x = v69.origin.x;
    if (CGRectIsEmpty(v69))
    {
      x = v70.origin.x;
      if (CGRectIsEmpty(v70))
      {
        x = v71.origin.x;
        CGRectIsEmpty(v71);
      }
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
  }

  return x;
}

BOOL cropTimeLeftFacesNoMask(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CGFloat a25, double a26, double a27)
{
  v31 = a25;
  v108[4] = *MEMORY[0x277D85DE8];
  v32.n128_f64[0] = combineFaceRects(a1);
  v33 = v32.n128_f64[0];
  v35 = v34.n128_f64[0];
  v37 = v36.n128_f64[0];
  v39 = v38.n128_f64[0];
  v40.n128_f64[0] = a25;
  result = rectPlusCushionInsideImage(v32, v34, v36, v38, v40);
  if (result)
  {
    v97 = a4;
    v42 = a26 / a27 / (a3 / a4);
    v43 = a5 + a7;
    v44 = 1.0 - (a5 + a7);
    v45 = v37 * 1.0001 / v44;
    v104 = 1.0 / (a25 * 2.0 + 1.0);
    if (v45 >= v104)
    {
      v45 = 1.0 / (a25 * 2.0 + 1.0);
    }

    v46 = v45 / v42;
    v101 = a26 / a27 / (a3 / a4);
    v47 = v42 * v39;
    if (v46 < v39)
    {
      v46 = v39;
      v45 = v47;
    }

    v93 = v44;
    v94 = v45;
    v95 = v46;
    v99 = v43;
    v48 = positionCandidateRectForSizeLeft(2, v45, v46, v33, v35, v37, v39, v43);
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v96 = v48;
    v105 = v37;
    v106 = v33;
    v102 = v35;
    if (rectIsWithinRect(v33, v35, v37, v39, v48, v49, v51, v53) && rectIsWithinRect(v96, v50, v52, v54, a25, a25, v104, v104))
    {
      v91 = v52;
      v92 = v50;
      v90 = v39;
      v107[0] = a17;
      v107[1] = a18;
      v107[2] = a19;
      v107[3] = a20;
      v108[0] = a21;
      v108[1] = a22;
      v98 = 8.0 / v97 + 1.0;
      v108[2] = a23;
      v108[3] = a24;
      v55 = v107;
      v56 = 1;
      while (1)
      {
        v57 = v56;
        v58 = *v55;
        v59 = v55[1];
        v61 = v55[2];
        v60 = v55[3];
        v109.origin.x = *v55;
        v109.origin.y = v59;
        v109.size.width = v61;
        v109.size.height = v60;
        if (!CGRectIsNull(v109))
        {
          v110.origin.x = v96;
          v110.size.width = v91;
          v110.origin.y = v92;
          v110.size.height = v54;
          v113.origin.x = v58;
          v113.origin.y = v59;
          v113.size.width = v61;
          v113.size.height = v60;
          result = CGRectContainsRect(v110, v113);
          if (result)
          {
            return result;
          }

          v62 = v94;
          v63 = v95;
          v64 = v94 < v61 || v95 < v60;
          v65 = v106;
          if (v64)
          {
            v62 = v94;
            v63 = v95;
            if (v94 < v61)
            {
              v62 = v61;
            }

            if (v95 < v60)
            {
              v63 = v60;
            }

            if (v62 / v63 >= v101)
            {
              v63 = v62 / v101;
            }

            else
            {
              v62 = v101 * v63;
            }
          }

          v66 = v105;
          v67 = positionCandidateRectForSizeLeft(2, v62, v63, v106, v102, v105, v90, v99);
          v69 = v68;
          v71 = v70;
          v73 = v72;
          v111.origin.x = a25;
          v111.origin.y = a25;
          v111.size.width = 1.0 / (a25 * 2.0 + 1.0);
          v111.size.height = v111.size.width;
          v114.origin.x = v67;
          v114.origin.y = v69;
          v114.size.width = v71;
          v114.size.height = v73;
          if (CGRectContainsRect(v111, v114))
          {
            break;
          }
        }

LABEL_27:
        v56 = 0;
        v55 = v108;
        if ((v57 & 1) == 0)
        {
          v37 = v105;
          v33 = v106;
          v35 = v102;
          v39 = v90;
          v31 = a25;
          goto LABEL_29;
        }
      }

      while (1)
      {
        if (rectIsWithinRect(v65, v102, v66, v90, v67, v69, v71, v73))
        {
          result = rectIsWithinRect(v67, v69, v71, v73, a25, a25, v104, v104);
          if (result)
          {
            break;
          }
        }

        v66 = v105;
        v65 = v106;
        v67 = positionCandidateRectForSizeLeft(2, v98 * v71, v98 * v73, v106, v102, v105, v90, v99);
        v69 = v74;
        v71 = v75;
        v73 = v76;
        v112.origin.x = a25;
        v112.origin.y = a25;
        v112.size.width = 1.0 / (a25 * 2.0 + 1.0);
        v112.size.height = v112.size.width;
        v115.origin.x = v67;
        v115.origin.y = v69;
        v115.size.width = v71;
        v115.size.height = v73;
        if (!CGRectContainsRect(v112, v115))
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_29:
      v100 = v33 + v37 * 0.5;
      v77 = v39;
      v78 = v35 + v39 * 0.5;
      v79 = &cropTimeRightFacesNoMask_thirdsChoices;
      v80 = &cropTimeRightFacesNoMask_centerChoices;
      v81 = 7;
      do
      {
        if (a2 == 1)
        {
          v82 = v79;
        }

        else
        {
          v82 = v80;
        }

        v83 = maxRectInImageWithAnchorAtPosition(v101, v31, v99 + v93 * 0.5, *v82, v100, v78);
        v85 = v84;
        v87 = v86;
        v89 = v88;
        result = rectIsWithinRect(v106, v102, v105, v77, v83, v84, v86, v88);
        if (result)
        {
          result = rectIsWithinRect(v83, v85, v87, v89, v31, v31, v104, v104);
          if (result)
          {
            break;
          }
        }

        ++v79;
        ++v80;
        --v81;
      }

      while (v81);
    }
  }

  return result;
}

BOOL cropTimeRightFacesNoMask(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, CGFloat a25, double a26, double a27)
{
  v96[4] = *MEMORY[0x277D85DE8];
  v31.n128_f64[0] = combineFaceRects(a1);
  v32 = v31.n128_u64[0];
  v34 = v33.n128_f64[0];
  v36 = v35.n128_f64[0];
  v38 = v37.n128_f64[0];
  v39.n128_f64[0] = a25;
  result = rectPlusCushionInsideImage(v31, v33, v35, v37, v39);
  if (result)
  {
    v41 = *&v32;
    v84 = a4;
    v42 = a26 / a27 / (a3 / a4);
    v43 = v36 * 1.0001 / (1.0 - a5);
    v90 = v42;
    rect1 = 1.0 / (a25 * 2.0 + 1.0);
    if (v43 >= rect1)
    {
      v43 = 1.0 / (a25 * 2.0 + 1.0);
    }

    v44 = v43 / v42;
    v45 = v42 * v38;
    if (v44 >= v38)
    {
      v46 = v44;
    }

    else
    {
      v46 = v38;
    }

    if (v44 >= v38)
    {
      v47 = v43;
    }

    else
    {
      v47 = v45;
    }

    v48 = a5;
    if (a2 == 2)
    {
      v49 = v34;
      v50 = v34 + v46 * -0.5 + v38 * 0.5;
    }

    else
    {
      v49 = v34;
      v50 = v34;
      if (a2 == 1)
      {
        v50 = v34 + v46 * -0.333333333 + v38 * 0.5;
      }
    }

    v51 = v41;
    v52 = v41 + -(v36 - v47 * v48) * -0.5;
    v86 = v50;
    v87 = v48;
    v53 = v46;
    v92 = v36;
    v93 = v41;
    v94 = v38;
    if (rectIsWithinRect(v41, v49, v36, v38, v52, v50, v47, v46) && rectIsWithinRect(v52, v86, v47, v53, a25, a25, rect1, rect1))
    {
      v82 = v47;
      v83 = v53;
      v88 = v49;
      v54 = -v36;
      v95[0] = a17;
      v95[1] = a18;
      v95[2] = a19;
      v95[3] = a20;
      v96[0] = a21;
      v96[1] = a22;
      v96[2] = a23;
      v96[3] = a24;
      v55 = v95;
      v56 = 1;
      v85 = 8.0 / v84 + 1.0;
      do
      {
        v57 = v56;
        v58 = *v55;
        v59 = v55[1];
        v61 = v55[2];
        v60 = v55[3];
        v97.origin.x = *v55;
        v97.origin.y = v59;
        v97.size.width = v61;
        v97.size.height = v60;
        if (!CGRectIsNull(v97))
        {
          v98.origin.x = v52;
          v98.origin.y = v86;
          v98.size.width = v82;
          v98.size.height = v83;
          v101.origin.x = v58;
          v101.origin.y = v59;
          v101.size.width = v61;
          v101.size.height = v60;
          result = CGRectContainsRect(v98, v101);
          if (result)
          {
            return result;
          }

          v62 = v82 < v61 || v83 < v60;
          v63 = v83;
          v64 = v82;
          if (v62)
          {
            if (v82 >= v61)
            {
              v64 = v82;
            }

            else
            {
              v64 = v61;
            }

            if (v83 >= v60)
            {
              v63 = v83;
            }

            else
            {
              v63 = v60;
            }

            if (v64 / v63 >= v90)
            {
              v63 = v64 / v90;
            }

            else
            {
              v64 = v90 * v63;
            }
          }

          if (a2 == 2)
          {
            v65 = v88 + v63 * -0.5 + v94 * 0.5;
          }

          else
          {
            v65 = v88;
            if (a2 == 1)
            {
              v65 = v88 + v63 * -0.333333333 + v94 * 0.5;
            }
          }

          v66 = v93;
          v67 = v93 + (v54 + v64 * v87) * -0.5;
          v99.origin.x = a25;
          v99.origin.y = a25;
          v99.size.width = 1.0 / (a25 * 2.0 + 1.0);
          v99.size.height = v99.size.width;
          v102.origin.x = v67;
          v102.origin.y = v65;
          v102.size.width = v64;
          v102.size.height = v63;
          if (CGRectContainsRect(v99, v102))
          {
            while (1)
            {
              if (rectIsWithinRect(v66, v88, v92, v94, v67, v65, v64, v63))
              {
                result = rectIsWithinRect(v67, v65, v64, v63, a25, a25, rect1, rect1);
                if (result)
                {
                  return result;
                }
              }

              v63 = v85 * v63;
              if (a2 == 2)
              {
                break;
              }

              v65 = v88;
              if (a2 == 1)
              {
                v68 = -0.333333333;
LABEL_44:
                v65 = v88 + v63 * v68 + v94 * 0.5;
              }

              v64 = v85 * v64;
              v66 = v93;
              v67 = v93 + (v54 + v64 * v87) * -0.5;
              v100.origin.x = a25;
              v100.origin.y = a25;
              v100.size.width = 1.0 / (a25 * 2.0 + 1.0);
              v100.size.height = v100.size.width;
              v103.origin.x = v67;
              v103.origin.y = v65;
              v103.size.width = v64;
              v103.size.height = v63;
              if (!CGRectContainsRect(v100, v103))
              {
                goto LABEL_46;
              }
            }

            v68 = -0.5;
            goto LABEL_44;
          }
        }

LABEL_46:
        v56 = 0;
        v55 = v96;
      }

      while ((v57 & 1) != 0);
      v36 = v92;
      v51 = v93;
      v49 = v88;
      v38 = v94;
    }

    v89 = v51 + v36 * 0.5;
    v69 = v49;
    v70 = v49 + v38 * 0.5;
    v71 = &cropTimeRightFacesNoMask_thirdsChoices;
    v72 = &cropTimeRightFacesNoMask_centerChoices;
    v73 = 7;
    do
    {
      if (a2 == 1)
      {
        v74 = v71;
      }

      else
      {
        v74 = v72;
      }

      v75 = maxRectInImageWithAnchorAtPosition(v90, a25, v87 * 0.5, *v74, v89, v70);
      v77 = v76;
      v79 = v78;
      v81 = v80;
      result = rectIsWithinRect(v93, v69, v92, v94, v75, v76, v78, v80);
      if (result)
      {
        result = rectIsWithinRect(v75, v77, v79, v81, a25, a25, rect1, rect1);
        if (result)
        {
          break;
        }
      }

      ++v71;
      ++v72;
      --v73;
    }

    while (v73);
  }

  return result;
}

double findCoverage(uint64_t a1, void *a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v19 = a2;
  v20 = renormalizeRect(a7, a8, a9, a10, a3, a4, a5, a6);
  v24 = v20;
  v25 = v21;
  if (a1 > 1)
  {
    v27 = v22 * 0.82;
    if (a1 == 2)
    {
      v20 = v20 + v22 * 0.82;
    }

    else
    {
      v24 = v20 + v22 * 0.18;
    }

    v26 = v23;
  }

  else
  {
    v26 = v23 * 0.82;
    if (a1)
    {
      v25 = v21 + v23 * 0.18;
    }

    else
    {
      v21 = v21 + v23 * 0.82;
    }

    v27 = v22;
  }

  [v19 coverageOfTimeLabel:{v20, v21}];
  [v19 coverageOfTimeLabel:{v24, v25, v27, v26}];
  v29 = v28;

  return v29;
}

PFLCCurationScore *PFLCCurationScoreForAsset(void *a1, uint64_t a2)
{
  v125 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = objc_alloc_init(MEMORY[0x277CD9880]);
  [v3 setIncludedDetectionTypes:&unk_284052860];
  v112 = v3;
  v4 = [MEMORY[0x277CD9868] fetchFacesInAsset:v2 options:v3];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v119 objects:&v123 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v120;
    obj = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v120 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v119 + 1) + 8 * i);
        [v11 size];
        v13 = v12;
        v14 = [v2 pixelWidth];
        v15 = [v2 pixelHeight];
        if (v14 <= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        v17 = v13 * v16;
        [v11 centerX];
        v19 = fmax(v17 * -0.5 + v18 * [v2 pixelWidth], 0.0);
        [v11 centerY];
        v21 = fmax(v17 * -0.5 + v20 * [v2 pixelHeight], 0.0);
        v22 = [v2 pixelWidth];
        if (v17 >= v22 - v19)
        {
          v23 = v22 - v19;
        }

        else
        {
          v23 = v17;
        }

        v24 = [v2 pixelHeight];
        if (v17 >= v24 - v21)
        {
          v17 = v24 - v21;
        }

        CGAffineTransformMakeScale(&v124, (1.0 / [v2 pixelWidth]), (1.0 / objc_msgSend(v2, "pixelHeight")));
        v127.origin.x = v19;
        v127.origin.y = v21;
        v127.size.width = v23;
        v127.size.height = v17;
        v128 = CGRectApplyAffineTransform(v127, &v124);
        v124.b = 0.0;
        v124.c = 0.0;
        *&v124.d = xmmword_22D12D780;
        v124.a = 1.0;
        v124.ty = 1.0;
        v129 = CGRectApplyAffineTransform(v128, &v124);
        x = v129.origin.x;
        y = v129.origin.y;
        width = v129.size.width;
        height = v129.size.height;
        v30 = pflc_layout_log(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = _rectAsString(x, y, width, height);
          v32 = [v11 detectionType];
          LODWORD(v124.a) = 136315650;
          *(&v124.a + 4) = "NSArray<NSValue *> * _Nullable faceRectsForAsset(PHAsset *__strong)";
          WORD2(v124.b) = 2112;
          *(&v124.b + 6) = v31;
          HIWORD(v124.c) = 2048;
          *&v124.d = v32;
          _os_log_impl(&dword_22D126000, v30, OS_LOG_TYPE_DEFAULT, "%s: face at %@, detectionType == %ld", &v124, 0x20u);
        }

        v33 = [MEMORY[0x277CCAE60] valueWithRect:{x, y, width, height}];
        [v5 addObject:v33];
      }

      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v119 objects:&v123 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {
    v34 = pflc_layout_log(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v2 localIdentifier];
      LODWORD(v124.a) = 136315394;
      *(&v124.a + 4) = "NSArray<NSValue *> * _Nullable faceRectsForAsset(PHAsset *__strong)";
      WORD2(v124.b) = 2112;
      *(&v124.b + 6) = v35;
      _os_log_impl(&dword_22D126000, v34, OS_LOG_TYPE_DEFAULT, "%s: No PHFace data in asset %@", &v124, 0x16u);
    }
  }

  v36 = [v2 pixelWidth];
  v37 = [v2 pixelHeight];
  [v2 preferredCropRect];
  v110 = v39;
  v111 = v38;
  v108 = v41;
  v109 = v40;
  [v2 acceptableCropRect];
  v106 = v43;
  v107 = v42;
  v104 = v45;
  v105 = v44;
  v46 = [MEMORY[0x277CBEB38] dictionary];
  v101 = 0;
  if (v5)
  {
    v47 = a2 == 0;
  }

  else
  {
    v47 = 0;
  }

  if (v47)
  {
    v48 = 1;
  }

  else
  {
    v48 = a2;
  }

  v49 = *MEMORY[0x277D3B3B8] * 0.5;
  v102 = *(MEMORY[0x277D3B3C0] + 8);
  v103 = *MEMORY[0x277D3B3C0];
  v50 = *MEMORY[0x277D3B3C0] / v102;
  v51 = v36 * v49 + 0.0;
  v52 = v37 * v49 + 0.0;
  v53 = v49 * -2.0 + 1.0;
  v54 = v53 * v36;
  v55 = v53 * v37;
  v56 = v50 * v55;
  if (v50 * v55 >= v54)
  {
    v56 = v54;
  }

  v100 = v56;
  v57 = v51 + fmax((v54 - v56) * 0.5, 0.0);
  v58 = v54 / v50;
  if (v58 >= v55)
  {
    v58 = v55;
  }

  v98 = v58;
  v99 = v57;
  v113 = v37;
  v115 = v36;
  v96 = 1.0 / v36;
  v97 = v52 + fmax((v55 - v58) * 0.5, 0.0);
  v95 = 1.0 / v37;
  v116 = -1.0;
  for (j = 1; j != 9; ++j)
  {
    PFCRectForTimePosition();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v72 = PFLCCalculateLayout(0, 1, v48, v5, 0, j, v115, v113, v111, v110, v109, v108, v70, v71, v68, v69, v107, v106, v105, v104, v103, v102, v60, v62, v64, v66);
    [v72 visibleRect];
    obja = v65;
    if (CGRectIsEmpty(v130))
    {
      CGAffineTransformMakeScale(&v123, v96, v95);
      v131.origin.x = v99;
      v131.size.width = v100;
      v131.origin.y = v97;
      v131.size.height = v98;
      v132 = CGRectApplyAffineTransform(v131, &v123);
      v73 = v132.origin.x;
      v74 = v132.origin.y;
      v75 = v132.size.width;
      v76 = v132.size.height;
      v78 = pflc_layout_log(v77);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v79 = _rectAsString(v73, v74, v75, v76);
        LODWORD(v123.a) = 138412290;
        *(&v123.a + 4) = v79;
        _os_log_impl(&dword_22D126000, v78, OS_LOG_TYPE_DEFAULT, "PFLCCurationScoreForAsset: Backup crop: %@", &v123, 0xCu);
      }

      v80 = v67;

      v81 = [[PFLCLayout alloc] initWithCropScore:0 layoutScore:0.0 foregroundCoverage:0.0 visibleRect:0.0 usesMask:v73, v74, v75, v76];
      v72 = v81;
    }

    else
    {
      v80 = v67;
    }

    v82 = [PFLCCurationPositionScore alloc];
    [v72 cropScore];
    v84 = v83;
    [v72 visibleRect];
    v123.a = 1.0;
    v123.b = 0.0;
    v123.c = 0.0;
    *&v123.d = xmmword_22D12D780;
    v123.ty = 1.0;
    v134 = CGRectApplyAffineTransform(v133, &v123);
    v85 = v134.origin.x;
    v86 = v134.origin.y;
    v87 = v134.size.width;
    v88 = v134.size.height;
    v123.a = 1.0;
    v123.b = 0.0;
    v123.c = 0.0;
    *&v123.d = xmmword_22D12D780;
    v123.ty = 1.0;
    v134.origin.x = v61;
    v134.origin.y = v63;
    v134.size.width = obja;
    v134.size.height = v80;
    v135 = CGRectApplyAffineTransform(v134, &v123);
    v89 = [(PFLCCurationPositionScore *)v82 initWithCropScore:v48 cropRect:v84 timeLabelRect:v85 classification:v86, v87, v88, *&v135.origin.x, *&v135.origin.y, *&v135.size.width, *&v135.size.height];
    v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:j];
    [v46 setObject:v89 forKeyedSubscript:v90];

    [v72 cropScore];
    if (v91 > v116)
    {
      [v72 cropScore];
      v116 = v92;
      v101 = j;
    }
  }

  v93 = [[PFLCCurationScore alloc] initWithPositionScores:v46 preferredPosition:v101];

  return v93;
}

PFLCLayout *PFLCCalculateLayout(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, double a7, double a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14, void x6_0, void x7_0, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, double a19, double a20, CGFloat a21, CGFloat a22, CGFloat a23, CGFloat a24)
{
  v148 = *MEMORY[0x277D85DE8];
  v30 = a4;
  v31 = a5;
  v32 = v31;
  v33 = *MEMORY[0x277CBF3A0];
  v34 = *(MEMORY[0x277CBF3A0] + 8);
  v35 = *(MEMORY[0x277CBF3A0] + 16);
  v36 = *(MEMORY[0x277CBF3A0] + 24);
  v128 = a7;
  v121 = a19 * 0.8;
  v134 = v35;
  v136 = v36;
  rect1 = v34;
  if (!a1)
  {
    v131 = 0.0;
    v50 = 0;
    v51 = 0.0;
    v45 = *MEMORY[0x277CBF3A0];
    v122 = 0.0;
    v44 = *(MEMORY[0x277CBF3A0] + 16);
    v42 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_32;
  }

  v37 = pflc_layout_log(v31);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v143 = a3;
    _os_log_impl(&dword_22D126000, v37, OS_LOG_TYPE_DEFAULT, "PFLCCalculateLayout(%ld): trying with a mask", buf, 0xCu);
  }

  v38 = [[PFLCCoverageValidator alloc] initWithMaskImage:a1 orientation:a2];
  v41 = v38;
  if (a3 > 2)
  {
    v131 = 0.0;
    if (a3 == 3)
    {
      v46 = layoutNatureMatte(v38, a6, a7, a8, a9, a10, a11, a12, v39, v40, *&a15, *&a16, *&a17, *&a18, a19, a20, a21, a22, a23, a24);
      goto LABEL_14;
    }

    v42 = v36;
    v52 = a7;
    v44 = v35;
    v45 = v33;
    if (a3 == 4)
    {
      v46 = layoutCityScapeMatte(v38, a6, v52, a8, a9, a10, a11, a12, v39, v40, *&a15, *&a16, *&a17, *&a18, a19, a20, a21, a22, a23, a24);
      goto LABEL_14;
    }
  }

  else
  {
    v131 = 0.0;
    if (a3 == 1)
    {
      v46 = layoutPeopleMatte(v38, v30, a6, a7, a8, a9, a10, a11, a12, v39, v40, *&a15, *&a16, *&a17, *&a18, a19, a20, a21, a22, a23, a24);
      goto LABEL_14;
    }

    v42 = v36;
    v43 = a7;
    v44 = v35;
    v45 = v33;
    if (a3 == 2)
    {
      v46 = layoutPetsMatte(v38, v30, v43, a8, a9, a10, a11, a12, v32, a6, v39, v40, *&a15, *&a16, *&a17, *&a18, a19, a20, a21, a22, a23, a24);
LABEL_14:
      v45 = v46;
      v34 = v47;
      v44 = v48;
      v42 = v49;
    }
  }

  v150.origin.x = v45;
  v150.origin.y = v34;
  v150.size.width = v44;
  v150.size.height = v42;
  if (CGRectIsEmpty(v150) || !rectIsWithinRect(v45, v34, v44, v42, 0.0, 0.0, 1.0, 1.0))
  {

    v50 = 0;
    v51 = 0.0;
    v122 = 0.0;
    v45 = v33;
    v34 = rect1;
    v44 = v35;
    v42 = v136;
  }

  else
  {
    v53 = [(PFLCCoverageValidator *)v41 coverageOfTimeLabel:renormalizeRect(a21, a22, a23, a24, v45, v34, v44, v42)];
    v55 = v54;
    v56 = pflc_layout_log(v53);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = _rectAsString(v45, v34, v44, v42);
      *buf = 134218498;
      v143 = a3;
      v144 = 2112;
      v145 = v57;
      v146 = 2048;
      v147 = v55;
      _os_log_impl(&dword_22D126000, v56, OS_LOG_TYPE_DEFAULT, "PFLCCalculateLayout(%ld): found rect %@, coverage %.3f", buf, 0x20u);
    }

    v122 = v55;

    v58 = 0.0;
    if (v44 > 0.0)
    {
      v59 = v44;
    }

    else
    {
      v59 = 0.0;
    }

    if (v42 > 0.0)
    {
      v60 = v42;
    }

    else
    {
      v60 = 0.0;
    }

    v61 = (v60 + v59) * 0.1 * 0.5;
    if (v61 > 0.1)
    {
      v61 = 0.1;
    }

    v62 = 1.0 - v61;
    if (v128 * v44 < v121)
    {
      v58 = 1.0 - v128 * v44 / v121;
    }

    v63 = v62 + v58 * -0.3;

    v50 = 1;
    v131 = v63;
    v64 = v63 == 0.0;
    v51 = 1.0;
    if (!v64)
    {
      goto LABEL_81;
    }
  }

LABEL_32:
  v65 = pflc_layout_log(v31);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v143 = a3;
    _os_log_impl(&dword_22D126000, v65, OS_LOG_TYPE_DEFAULT, "PFLCCalculateLayout(%ld): trying with no mask", buf, 0xCu);
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v76 = layoutNatureNoMatte(a6, v128, a8, a9, a10, a11, a12, v72, v73, *&a15, *&a16, *&a17, *&a18, a19, a20, a21, a22, a23, a24);
      goto LABEL_46;
    }

    if (a3 == 4)
    {
      v76 = layoutCityScapeNoMatte(a6, v128, a8, a9, a10, a11, a12, v72, v73, *&a15, *&a16, *&a17, *&a18, a19, a20, a21, a22, a23, a24);
      goto LABEL_46;
    }

    v74 = v42;
    v35 = v44;
    v75 = v34;
    v76 = v45;
    if (a3 == 5)
    {
      v35 = v134;
      v74 = v136;
      v75 = rect1;
      v76 = v33;
    }
  }

  else
  {
    v74 = v136;
    v75 = rect1;
    v76 = v33;
    if (a3)
    {
      if (a3 == 1)
      {
        v76 = layoutPeopleNoMatte(v30, a6, v128, a8, a9, a10, a11, a12, v72, v73, v66, v67, v68, v69, v70, v71, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
        goto LABEL_46;
      }

      v74 = v42;
      v35 = v44;
      v75 = v34;
      v76 = v45;
      if (a3 == 2)
      {
        v76 = layoutPetsNoMatte(v30, v128, a8, a9, a10, a11, a12, v32, a6, v72, v73, v67, v68, v69, v70, v71, *&a15, *&a16, a17, a18, a19, a20, a21, a22, a23, a24);
LABEL_46:
        v35 = v77;
        v74 = v78;
      }
    }
  }

  v79 = v76;
  v80 = v75;
  v81 = v35;
  v82 = v74;
  IsEmpty = CGRectIsEmpty(*&v76);
  if (IsEmpty || !(IsEmpty = rectIsWithinRect(v79, v80, v35, v74, 0.0, 0.0, 1.0, 1.0)))
  {
    v116 = pflc_layout_log(IsEmpty);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v143 = a3;
      _os_log_impl(&dword_22D126000, v116, OS_LOG_TYPE_DEFAULT, "PFLCCalculateLayout(%ld): no rect found", buf, 0xCu);
    }

    v45 = v33;
    v34 = rect1;
    v44 = v134;
    v42 = v136;
  }

  else
  {
    v135 = v79;
    v137 = v80;
    v84 = pflc_layout_log(IsEmpty);
    v85 = v74;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v86 = _rectAsString(v79, v80, v35, v74);
      *buf = 134218242;
      v143 = a3;
      v144 = 2112;
      v145 = v86;
      _os_log_impl(&dword_22D126000, v84, OS_LOG_TYPE_DEFAULT, "PFLCCalculateLayout(%ld): found rect %@", buf, 0x16u);
    }

    v87 = 0.0;
    rect1a = v35;
    if (v35 > 0.0)
    {
      v88 = v35;
    }

    else
    {
      v88 = 0.0;
    }

    if (v74 > 0.0)
    {
      v87 = v74;
    }

    v89 = (v87 + v88) * 0.1 * 0.5;
    if (v89 > 0.1)
    {
      v89 = 0.1;
    }

    v51 = 0.9;
    v129 = 0.9 - v89;
    v90 = v30;
    v91 = [v90 count];
    v92 = 0.0;
    v93 = a19 * 0.8;
    v94 = v128;
    if (v91)
    {
      v95 = v91;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v96 = v90;
      v97 = [v96 countByEnumeratingWithState:&v138 objects:buf count:16];
      if (v97)
      {
        v98 = v97;
        v99 = *v139;
        v130 = 0.0;
        v100 = v35;
        do
        {
          for (i = 0; i != v98; ++i)
          {
            if (*v139 != v99)
            {
              objc_enumerationMutation(v96);
            }

            [*(*(&v138 + 1) + 8 * i) rectValue];
            v103 = v102;
            v105 = v104;
            v107 = v106;
            v109 = v108;
            v151.origin.x = v135;
            v151.origin.y = v137;
            v151.size.width = v100;
            v151.size.height = v85;
            v153.origin.x = v103;
            v153.origin.y = v105;
            v153.size.width = v107;
            v153.size.height = v109;
            if (!CGRectContainsRect(v151, v153))
            {
              v110 = v85;
              v111 = 1;
              while (1)
              {
                v112 = vcvtd_n_f64_u32(v111, 2uLL);
                v154.origin.x = expandRect(v103, v105, v107, v109, v112 * -0.05, v112 * -0.2, v112 * -0.1, v112 * -0.2);
                v154.origin.y = v113;
                v154.size.width = v114;
                v154.size.height = v115;
                v152.origin.x = v135;
                v152.origin.y = v137;
                v152.size.width = rect1a;
                v152.size.height = v110;
                if (CGRectContainsRect(v152, v154))
                {
                  break;
                }

                if (++v111 == 5)
                {
                  v112 = 1.25;
                  break;
                }
              }

              v130 = v130 + v112;
              v85 = v110;
              v100 = rect1a;
            }
          }

          v98 = [v96 countByEnumeratingWithState:&v138 objects:buf count:16];
        }

        while (v98);
      }

      else
      {
        v130 = 0.0;
      }

      v92 = v130 / v95;
      v94 = v128;
      v93 = a19 * 0.8;
      v51 = 0.9;
    }

    v117 = v129 + v92 * -0.3;
    v44 = rect1a;
    v118 = 1.0 - v94 * rect1a / v93;
    if (v94 * rect1a >= v93)
    {
      v118 = 0.0;
    }

    v131 = v117 + v118 * -0.3;
    v45 = v135;
    v34 = v137;
    v42 = v85;
  }

LABEL_81:
  v119 = [[PFLCLayout alloc] initWithCropScore:v50 layoutScore:v131 foregroundCoverage:v51 visibleRect:v122 usesMask:v45, v34, v44, v42];

  return v119;
}

double layoutNatureMatte(void *a1, uint64_t a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, CGFloat a17, CGFloat a18, CGFloat a19, CGFloat a20)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v21 = a1;
  v22 = *MEMORY[0x277CBF3A0];
  v23 = *MEMORY[0x277D3B3B8] * 0.5;
  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v45[0] = a11 + a13 * 0.333333333;
      v45[1] = a12;
      v45[2] = a13 * 0.666666667;
      v45[3] = a14;
      v29 = v23;
      v30 = [MEMORY[0x277CCAE60] valueWithBytes:v45 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v48 = v30;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];

      v28 = cropTimeLeftOfFacesWithMask(v26, v21, 2, a3, a4, a17, a18, a19, a20, v31, v32, a5, a6, a7, a8, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v29, a15, a16);
      goto LABEL_11;
    }

    if (a2 == 6)
    {
      *v44 = a11;
      *&v44[1] = a12;
      *&v44[2] = a13 * 0.666666667;
      *&v44[3] = a14;
      v33 = v23;
      v34 = [MEMORY[0x277CCAE60] valueWithBytes:v44 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v47 = v34;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];

      v28 = cropTimeRightOfFacesWithMask(v26, v21, 2, a3, a4, a17, a18, a19, a20, v35, v36, a5, a6, a7, a8, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v33, a15, a16);
      goto LABEL_11;
    }

    if (a2 != 7)
    {
      goto LABEL_12;
    }

LABEL_8:
    *v46 = a11;
    *&v46[1] = a12 + a14 * 0.5;
    *&v46[2] = a13;
    *&v46[3] = a14 * 0.5;
    v24 = v23;
    v25 = [MEMORY[0x277CCAE60] valueWithBytes:v46 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v49[0] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];

    v28 = cropTimeAboveFacesWithMask(v26, v21, a3, a4, a17, a18, a19, a20, v24, v27, 3, a15, a16);
LABEL_11:
    v22 = v28;

    goto LABEL_12;
  }

  if (a2 == 1 || a2 == 3)
  {
    goto LABEL_8;
  }

LABEL_12:

  return v22;
}

double layoutNatureNoMatte(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v20 = *MEMORY[0x277CBF3A0];
  v21 = *MEMORY[0x277D3B3B8] * 0.5;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 != 3)
      {
LABEL_14:
        *v57 = a10;
        *&v57[1] = a11;
        *&v57[2] = a12;
        *&v57[3] = a13;
        v38 = [MEMORY[0x277CCAE60] valueWithBytes:v57 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v61 = v38;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];

        v35 = cropTimeBelowFacesNoMask(v26, a2, a3, a16, a17, a18, a19, v21, v39, a14, a15);
        goto LABEL_16;
      }
    }

    else if (a1 != 1)
    {
      if (a1 != 2)
      {
        return v20;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v58 = a10;
    *&v58[1] = a11;
    *&v58[2] = a12;
    *&v58[3] = a13;
    v36 = [MEMORY[0x277CCAE60] valueWithBytes:v58 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v62[0] = v36;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];

    v35 = cropTimeAboveFacesNoMask(a2, a3, a16, a17, a18, a19, v21, v37, v26, a14, a15);
LABEL_16:
    v20 = v35;

    return v20;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      v56[0] = a10 + a12 * 0.333333333;
      v56[1] = a11;
      v56[2] = a12 * 0.666666667;
      v56[3] = a13;
      v43 = [MEMORY[0x277CCAE60] valueWithBytes:v56 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v60 = v43;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];

      cropTimeLeftFacesNoMask(v26, 2, a2, a3, a16, a17, a18, a19, v50, v51, v44, v45, v46, v47, v48, v49, *&a4, *&a5, *&a6, *&a7, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v21, a14, a15);
    }

    else
    {
      *v55 = a10;
      *&v55[1] = a11;
      *&v55[2] = a12 * 0.666666667;
      *&v55[3] = a13;
      v25 = [MEMORY[0x277CCAE60] valueWithBytes:v55 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v59 = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];

      cropTimeRightFacesNoMask(v26, 2, a2, a3, a16, a17, a18, a19, v33, v34, v27, v28, v29, v30, v31, v32, *&a4, *&a5, *&a6, *&a7, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v21, a14, a15);
    }

    goto LABEL_16;
  }

  if (a1 == 8)
  {
    goto LABEL_14;
  }

  if (a1 == 7)
  {
    goto LABEL_13;
  }

  return v20;
}

double layoutPeopleMatte(void *a1, void *a2, uint64_t a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, double a16, double a17, CGFloat a18, CGFloat a19, CGFloat a20, CGFloat a21)
{
  v27 = a1;
  v28 = a2;
  v29 = *MEMORY[0x277CBF3A0];
  if ([v28 count])
  {
    if (a3 > 4)
    {
      if (a3 == 5)
      {
        v34 = *MEMORY[0x277D3B3B8] * 0.5;
        v31 = expandRects(v28, 0.01, 0.01, 0.05, 0.01);
        v33 = cropTimeLeftOfFacesWithMask(v31, v27, 1, a4, a5, a18, a19, a20, a21, v35, v36, a6, a7, a8, a9, a12, a13, a14, a15, v34, a16, a17);
        goto LABEL_12;
      }

      if (a3 == 6)
      {
        v37 = *MEMORY[0x277D3B3B8] * 0.5;
        v31 = expandRects(v28, 0.01, 0.01, 0.05, 0.01);
        v33 = cropTimeRightOfFacesWithMask(v31, v27, 1, a4, a5, a18, a19, a20, a21, v38, v39, a6, a7, a8, a9, a12, a13, a14, a15, v37, a16, a17);
        goto LABEL_12;
      }

      if (a3 != 7)
      {
        goto LABEL_13;
      }

LABEL_9:
      v30 = *MEMORY[0x277D3B3B8] * 0.5;
      v31 = expandRects(v28, 0.0, 0.01, 0.02, 0.01);
      v33 = cropTimeAboveFacesWithMask(v31, v27, a4, a5, a18, a19, a20, a21, v30, v32, 1, a16, a17);
LABEL_12:
      v29 = v33;

      goto LABEL_13;
    }

    if (a3 == 1 || a3 == 3)
    {
      goto LABEL_9;
    }
  }

LABEL_13:

  return v29;
}

double layoutPeopleNoMatte(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, double a21, double a22, double a23, double a24, double a25, double a26)
{
  v31 = a1;
  x = *MEMORY[0x277CBF3A0];
  if ([v31 count])
  {
    v99 = *MEMORY[0x277D3B3B8] * 0.5;
    if (a2 <= 4)
    {
      if (a2 > 2)
      {
        if (a2 != 3)
        {
LABEL_29:
          v33 = expandRects(v31, 0.01, 0.01, 0.0, 0.01);
          v109.origin.x = cropTimeBelowFacesNoMask(v33, a3, a4, a23, a24, a25, a26, v99, v65, a21, a22);
          x = v109.origin.x;
          if (CGRectIsNull(v109))
          {
            v66 = 1;
            do
            {
              v67 = v33;
              v68 = vcvtd_n_f64_u32(v66, 2uLL);
              v33 = expandRects(v31, v68 * -0.05, v68 * -0.2, v68 * -0.1, v68 * -0.2);

              v110.origin.x = cropTimeBelowFacesNoMask(v33, a3, a4, a23, a24, a25, a26, v99, v69, a21, a22);
              x = v110.origin.x;
            }

            while (CGRectIsNull(v110) && v66++ < 4);
          }

LABEL_44:

          goto LABEL_45;
        }
      }

      else if (a2 != 1)
      {
        if (a2 != 2)
        {
          goto LABEL_45;
        }

        goto LABEL_29;
      }

LABEL_21:
      v33 = expandRects(v31, 0.0, 0.01, 0.02, 0.01);
      v107.origin.x = cropTimeAboveFacesNoMask(a3, a4, a23, a24, a25, a26, v99, v59, v33, a21, a22);
      x = v107.origin.x;
      if (CGRectIsNull(v107))
      {
        v60 = 1;
        do
        {
          v61 = v33;
          v62 = vcvtd_n_f64_u32(v60, 2uLL);
          v33 = expandRects(v31, v62 * -0.05, v62 * -0.2, v62 * -0.1, v62 * -0.2);

          v108.origin.x = cropTimeAboveFacesNoMask(a3, a4, a23, a24, a25, a26, v99, v63, v33, a21, a22);
          x = v108.origin.x;
        }

        while (CGRectIsNull(v108) && v60++ < 4);
      }

      goto LABEL_44;
    }

    if (a2 <= 6)
    {
      v100 = *&a5;
      if (a2 == 5)
      {
        v33 = expandRects(v31, 0.01, 0.01, 0.05, 0.01);
        v71 = a4;
        cropTimeLeftFacesNoMask(v33, 1, a3, a4, a23, a24, a25, a26, v78, v79, v72, v73, v74, v75, v76, v77, v100, *&a6, *&a7, *&a8, a17, a18, a19, a20, v99, a21, a22);
        x = v111.origin.x;
        if (CGRectIsNull(v111))
        {
          v104 = a3;
          v81 = *MEMORY[0x277CBF398];
          v80 = *(MEMORY[0x277CBF398] + 8);
          v98 = v71;
          v82 = *(MEMORY[0x277CBF398] + 16);
          v83 = *(MEMORY[0x277CBF398] + 24);
          v84 = 1;
          do
          {
            v85 = v33;
            v86 = vcvtd_n_f64_u32(v84, 2uLL);
            v33 = expandRects(v31, v86 * -0.05, v86 * -0.2, v86 * -0.1, v86 * -0.2);

            cropTimeLeftFacesNoMask(v33, 1, v104, v98, a23, a24, a25, a26, v93, v94, v87, v88, v89, v90, v91, v92, v81, v80, v82, v83, v81, v80, v82, v83, v99, a21, a22);
            x = v112.origin.x;
          }

          while (CGRectIsNull(v112) && v84++ < 4);
        }
      }

      else
      {
        v33 = expandRects(v31, 0.01, 0.01, 0.05, 0.01);
        v34 = a4;
        cropTimeRightFacesNoMask(v33, 1, a3, a4, a23, a24, a25, a26, v41, v42, v35, v36, v37, v38, v39, v40, v100, *&a6, *&a7, *&a8, a17, a18, a19, a20, v99, a21, a22);
        x = v105.origin.x;
        if (CGRectIsNull(v105))
        {
          v103 = a3;
          v44 = *MEMORY[0x277CBF398];
          v43 = *(MEMORY[0x277CBF398] + 8);
          v97 = v34;
          v45 = *(MEMORY[0x277CBF398] + 16);
          v46 = *(MEMORY[0x277CBF398] + 24);
          v47 = 1;
          do
          {
            v48 = v33;
            v49 = vcvtd_n_f64_u32(v47, 2uLL);
            v33 = expandRects(v31, v49 * -0.05, v49 * -0.2, v49 * -0.1, v49 * -0.2);

            cropTimeRightFacesNoMask(v33, 1, v103, v97, a23, a24, a25, a26, v56, v57, v50, v51, v52, v53, v54, v55, v44, v43, v45, v46, v44, v43, v45, v46, v99, a21, a22);
            x = v106.origin.x;
          }

          while (CGRectIsNull(v106) && v47++ < 4);
        }
      }

      goto LABEL_44;
    }

    if (a2 == 8)
    {
      goto LABEL_29;
    }

    if (a2 == 7)
    {
      goto LABEL_21;
    }
  }

LABEL_45:

  return x;
}

double layoutPetsMatte(void *a1, void *a2, double a3, double a4, CGFloat a5, CGFloat a6, double a7, CGFloat a8, uint64_t a9, uint64_t a10, double a11, double a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, double a17, double a18, CGFloat a19, CGFloat a20, CGFloat a21, CGFloat a22)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v27 = a1;
  v28 = a2;
  v48 = *MEMORY[0x277CBF3A0];
  v29 = v28;
  if ([v29 count])
  {
    v42 = a15;
    v43 = a13;
    v44 = a5;
    v49 = a3;
    v50 = a4;
    v30 = -0.2;
    v31 = v29;
  }

  else
  {
    v53.origin.x = a13;
    v53.origin.y = a14;
    v53.size.width = a15;
    v53.size.height = a16;
    if (CGRectIsEmpty(v53))
    {
      v31 = v29;
      goto LABEL_5;
    }

    v43 = a13;
    v44 = a5;
    v49 = a3;
    v50 = a4;
    *v51 = a13;
    *&v51[1] = a14;
    v42 = a15;
    *&v51[2] = a15;
    *&v51[3] = a16;
    v33 = [MEMORY[0x277CCAE60] valueWithBytes:v51 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v52[0] = v33;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];

    v30 = 0.0;
  }

  v34 = *MEMORY[0x277D3B3B8] * 0.5;
  if (a10 <= 4)
  {
    if (a10 > 2)
    {
      if (a10 != 3)
      {
LABEL_20:
        v35 = expandRects(v31, v30, 0.01, 0.0, 0.01);
        v37 = cropTimeBelowFacesWithMask(v35, v27, v49, v50, a19, a20, a21, a22, v34, v39, a17, a18);
        goto LABEL_22;
      }
    }

    else if (a10 != 1)
    {
      if (a10 != 2)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }

LABEL_19:
    v35 = expandRects(v31, v30, 0.01, 0.02, 0.01);
    v37 = cropTimeAboveFacesWithMask(v35, v27, v49, v50, a19, a20, a21, a22, v34, v38, 2, a17, a18);
LABEL_22:
    v32 = v37;

    goto LABEL_23;
  }

  if (a10 <= 6)
  {
    expandRects(v31, v30, 0.01, 0.02, 0.01);
    if (a10 == 5)
      v35 = {;
      v37 = cropTimeLeftOfFacesWithMask(v35, v27, 1, v49, v50, a19, a20, a21, a22, a7, v40, v44, a6, a7, a8, v43, a14, v42, a16, v34, a17, a18);
    }

    else
      v35 = {;
      v37 = cropTimeRightOfFacesWithMask(v35, v27, 1, v49, v50, a19, a20, a21, a22, a7, v36, v44, a6, a7, a8, v43, a14, v42, a16, v34, a17, a18);
    }

    goto LABEL_22;
  }

  if (a10 == 8)
  {
    goto LABEL_20;
  }

  if (a10 == 7)
  {
    goto LABEL_19;
  }

LABEL_5:
  v32 = v48;
LABEL_23:

  return v32;
}

double layoutPetsNoMatte(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, double a10, double a11, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, CGFloat a12, CGFloat a13, uint64_t a14, uint64_t a15, double a16, double a17, double a18, double a19, double a20, double a21)
{
  v105[1] = *MEMORY[0x277D85DE8];
  v24 = a1;
  x = *MEMORY[0x277CBF3A0];
  v26 = v24;
  v97 = a3;
  v103 = a2;
  if ([v26 count])
  {
    v92 = *&a13;
    v93 = a12;
    v27 = -0.2;
    v28 = v26;
  }

  else
  {
    v106.origin.x = a12;
    v106.origin.y = a13;
    *&v106.size.width = a14;
    *&v106.size.height = a15;
    if (CGRectIsEmpty(v106))
    {
      v28 = v26;
      goto LABEL_49;
    }

    v92 = *&a13;
    v93 = a12;
    *v104 = a12;
    *&v104[1] = a13;
    v104[2] = a14;
    v104[3] = a15;
    v29 = [MEMORY[0x277CCAE60] valueWithBytes:v104 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v105[0] = v29;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:1];

    v27 = 0.0;
  }

  if (a9 <= 4)
  {
    if (a9 > 2)
    {
      if (a9 != 3)
      {
LABEL_33:
        v101 = v27;
        v61 = *MEMORY[0x277D3B3B8] * 0.5;
        v31 = expandRects(v28, v27, 0.01, 0.0, 0.01);
        v111.origin.x = cropTimeBelowFacesNoMask(v31, a2, a3, a18, a19, a20, a21, v61, v62, a16, a17);
        x = v111.origin.x;
        if (CGRectIsNull(v111))
        {
          v63 = 1;
          do
          {
            v64 = v31;
            v65 = vcvtd_n_f64_u32(v63, 2uLL);
            v31 = expandRects(v26, v101 + v65 * -0.05, v65 * -0.2, v65 * -0.1, v65 * -0.2);

            v112.origin.x = cropTimeBelowFacesNoMask(v31, a2, a3, a18, a19, a20, a21, v61, v66, a16, a17);
            x = v112.origin.x;
          }

          while (CGRectIsNull(v112) && v63++ < 4);
        }

LABEL_48:

        goto LABEL_49;
      }
    }

    else if (a9 != 1)
    {
      if (a9 != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_33;
    }

LABEL_25:
    v100 = v27;
    v54 = *MEMORY[0x277D3B3B8] * 0.5;
    v31 = expandRects(v28, v27, 0.01, 0.02, 0.01);
    v109.origin.x = cropTimeAboveFacesNoMask(a2, a3, a18, a19, a20, a21, v54, v55, v31, a16, a17);
    x = v109.origin.x;
    if (CGRectIsNull(v109))
    {
      v56 = 1;
      do
      {
        v57 = v31;
        v58 = vcvtd_n_f64_u32(v56, 2uLL);
        v31 = expandRects(v26, v100 + v58 * -0.05, v58 * -0.2, v58 * -0.1, v58 * -0.2);

        v110.origin.x = cropTimeAboveFacesNoMask(a2, a3, a18, a19, a20, a21, v54, v59, v31, a16, a17);
        x = v110.origin.x;
      }

      while (CGRectIsNull(v110) && v56++ < 4);
    }

    goto LABEL_48;
  }

  if (a9 <= 6)
  {
    if (a9 == 5)
    {
      v102 = v27;
      v68 = *MEMORY[0x277D3B3B8] * 0.5;
      v31 = expandRects(v28, v27, 0.01, 0.02, 0.01);
      cropTimeLeftFacesNoMask(v31, 1, a2, a3, a18, a19, a20, a21, a6, v93, v69, v70, v71, v72, v73, v74, *&a4, *&a5, *&a6, *&a7, *&v93, v92, a14, a15, v68, a16, a17);
      x = v113.origin.x;
      if (CGRectIsNull(v113))
      {
        v75 = *MEMORY[0x277CBF398];
        v76 = *(MEMORY[0x277CBF398] + 8);
        v77 = *(MEMORY[0x277CBF398] + 16);
        v78 = *(MEMORY[0x277CBF398] + 24);
        v79 = 1;
        do
        {
          v80 = v31;
          v81 = vcvtd_n_f64_u32(v79, 2uLL);
          v31 = expandRects(v26, v102 + v81 * -0.05, v81 * -0.2, v81 * -0.1, v81 * -0.2);

          cropTimeLeftFacesNoMask(v31, 1, v103, v97, a18, a19, a20, a21, v88, v89, v82, v83, v84, v85, v86, v87, v75, v76, v77, v78, v75, v76, v77, v78, v68, a16, a17);
          x = v114.origin.x;
        }

        while (CGRectIsNull(v114) && v79++ < 4);
      }
    }

    else
    {
      v99 = v27;
      v30 = *MEMORY[0x277D3B3B8] * 0.5;
      v31 = expandRects(v28, v27, 0.01, 0.02, 0.01);
      cropTimeRightFacesNoMask(v31, 1, a2, a3, a18, a19, a20, a21, a6, v93, v32, v33, v34, v35, v36, v37, *&a4, *&a5, *&a6, *&a7, *&v93, v92, a14, a15, v30, a16, a17);
      x = v107.origin.x;
      if (CGRectIsNull(v107))
      {
        v38 = *MEMORY[0x277CBF398];
        v39 = *(MEMORY[0x277CBF398] + 8);
        v40 = *(MEMORY[0x277CBF398] + 16);
        v41 = *(MEMORY[0x277CBF398] + 24);
        v42 = 1;
        do
        {
          v43 = v31;
          v44 = vcvtd_n_f64_u32(v42, 2uLL);
          v31 = expandRects(v26, v99 + v44 * -0.05, v44 * -0.2, v44 * -0.1, v44 * -0.2);

          cropTimeRightFacesNoMask(v31, 1, v103, v97, a18, a19, a20, a21, v51, v52, v45, v46, v47, v48, v49, v50, v38, v39, v40, v41, v38, v39, v40, v41, v30, a16, a17);
          x = v108.origin.x;
        }

        while (CGRectIsNull(v108) && v42++ < 4);
      }
    }

    goto LABEL_48;
  }

  if (a9 == 8)
  {
    goto LABEL_33;
  }

  if (a9 == 7)
  {
    goto LABEL_25;
  }

LABEL_49:

  return x;
}

id pflc_layout_log(uint64_t a1)
{
  if (pflc_layout_log_onceToken != -1)
  {
    pflc_layout_log_cold_1();
  }

  v2 = pflc_layout_log___logger;

  return v2;
}

uint64_t __pflc_layout_log_block_invoke()
{
  pflc_layout_log___logger = os_log_create("com.apple.photosfacelayoutcore", "layout");

  return MEMORY[0x2821F96F8]();
}

__n128 makePresentationTransform@<Q0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result.n128_u64[0] = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        *a4 = 0x3FF0000000000000;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0x3FF0000000000000;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        return result;
      }

      if (a1 == 2)
      {
        result.n128_f64[0] = a2;
        *a4 = 0xBFF0000000000000;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0x3FF0000000000000;
LABEL_9:
        *(a4 + 32) = result.n128_u64[0];
        return result;
      }

      goto LABEL_21;
    }

    if (a1 != 3)
    {
      result.n128_f64[0] = a3;
      *a4 = 0x3FF0000000000000;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0xBFF0000000000000;
      goto LABEL_15;
    }

    result.n128_f64[0] = a2;
    v9 = a3;
    *a4 = 0xBFF0000000000000;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0xBFF0000000000000;
    goto LABEL_20;
  }

  if (a1 > 6)
  {
    if (a1 != 7)
    {
      if (a1 != 8)
      {
LABEL_21:
        v11 = MEMORY[0x277CBF2C0];
        v12 = *(MEMORY[0x277CBF2C0] + 16);
        *a4 = *MEMORY[0x277CBF2C0];
        *(a4 + 16) = v12;
        result = v11[2];
        *(a4 + 32) = result;
        return result;
      }

      result.n128_f64[0] = a2;
      *(a4 + 8) = xmmword_22D12D820;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
LABEL_15:
      *(a4 + 40) = result.n128_u64[0];
      return result;
    }

    result.n128_f64[0] = a3;
    v9 = a2;
    __asm { FMOV            V2.2D, #-1.0 }

    *(a4 + 8) = _Q2;
LABEL_20:
    *(a4 + 32) = result.n128_u64[0];
    *(a4 + 40) = v9;
    return result;
  }

  if (a1 != 5)
  {
    result.n128_f64[0] = a3;
    *(a4 + 8) = xmmword_22D12D830;
    goto LABEL_9;
  }

  __asm { FMOV            V0.2D, #1.0 }

  *(a4 + 8) = result;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  return result;
}

CGFloat uprightCTM@<D0>(CGImage *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  Height = CGImageGetHeight(a1);
  v6 = MEMORY[0x277CBF2C0];
  v7 = *MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v8;
  v9 = *(v6 + 32);
  *(a3 + 32) = v9;
  *&t1.a = v7;
  *&t1.c = v8;
  *&t1.tx = v9;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.a = 1.0;
  *&t2.d = xmmword_22D12D780;
  t2.ty = Height;
  CGAffineTransformConcat(a3, &t1, &t2);
  v10 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v10;
  *&t2.tx = *(a3 + 32);
  v11 = a2[1];
  *&v16.a = *a2;
  *&v16.c = v11;
  *&v16.tx = a2[2];
  CGAffineTransformConcat(&t1, &t2, &v16);
  v12 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v12;
  *(a3 + 32) = *&t1.tx;
  v13 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v13;
  *&t2.tx = *(a3 + 32);
  v16.b = 0.0;
  v16.c = 0.0;
  v16.a = 1.0;
  *&v16.d = xmmword_22D12D780;
  v16.ty = Height;
  CGAffineTransformConcat(&t1, &t2, &v16);
  v14 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v14;
  result = t1.tx;
  *(a3 + 32) = *&t1.tx;
  return result;
}

id expandRects(void *a1, double a2, double a3, double a4, double a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    v15 = a3 + a5 + 1.0;
    v16 = a2 + a4 + 1.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v25 + 1) + 8 * i) rectValue];
        v24[0] = v20 - v18 * a5;
        v24[1] = v21 - v19 * a2;
        v24[2] = v15 * v18;
        v24[3] = v16 * v19;
        v22 = [MEMORY[0x277CCAE60] valueWithBytes:v24 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        [v10 addObject:v22];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  return v10;
}

double renormalizeRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, a7, a8);
  v14 = v15;
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  return a5 + COERCE_DOUBLE(CGRectApplyAffineTransform(v16, &v14));
}

id _rectAsString(double a1, double a2, double a3, double a4)
{
  if (fmax(a3, a4) <= 1.0)
  {
    v4 = @"{ %.5f, %.5f, %.5f, %.5f }";
  }

  else
  {
    v4 = @"{ %.1f, %.1f, %.1f, %.1f }";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:v4, *&a1, *&a2, *&a3, *&a4];

  return v5;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}
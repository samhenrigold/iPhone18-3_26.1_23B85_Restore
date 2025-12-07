@interface SCRCPhotoEvaluatorBlur
+ (id)detect:(id)detect inRect:(CGRect)rect;
@end

@implementation SCRCPhotoEvaluatorBlur

+ (id)detect:(id)detect inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v87 = *MEMORY[0x277D85DE8];
  detectCopy = detect;
  if (detect_inRect__onceToken != -1)
  {
    +[SCRCPhotoEvaluatorBlur detect:inRect:];
  }

  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = width;
  v89.size.height = height;
  if (CGRectIsEmpty(v89) || (v90.origin.x = x, v90.origin.y = y, v90.size.width = width, v90.size.height = height, CGRectIsNull(v90)) || (v91.origin.x = x, v91.origin.y = y, v91.size.width = width, v91.size.height = height, CGRectIsInfinite(v91)))
  {
    v10 = [self detect:detectCopy];
    goto LABEL_7;
  }

  width = [detectCopy width];
  data = [detectCopy data];
  bytesPerPixel = [detectCopy bytesPerPixel];
  width2 = [detectCopy width];
  height = [detectCopy height];
  v77[2] = v77;
  v17 = width2 - width;
  if (v17 >= x)
  {
    v17 = x;
  }

  if (x >= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = MEMORY[0x28223BE20](height);
  v25 = (v77 - v23);
  v86 = width2;
  v78 = detectCopy;
  if (v26 < 1)
  {
    v43 = 0;
LABEL_23:
    v77[0] = v43;
    v77[1] = v77;
    v45 = vcvtd_n_f64_s64(v19 / 15 * (width2 / 15), 2uLL);
    if (v45 < 150.0)
    {
      v45 = 150.0;
    }

    v46 = v45;
    v47 = MEMORY[0x28223BE20](v19);
    MEMORY[0x28223BE20](v47);
    v53 = v77 - v52;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    if ((width2 + 14) < 0x1D)
    {
      v57 = 1;
    }

    else
    {
      v57 = v49;
    }

    v79 = v57;
    v58 = (v57 - 1);
    v82 = v51;
    v59 = v51;
    v60 = *(v48 + 808);
    v80 = v50;
    do
    {
      v61 = 0;
      v83 = v50 + 8 * v54;
      v81 = v54;
      v62 = v54 * v79;
      do
      {
        if (v46 < 1)
        {
          v68 = 0;
        }

        else
        {
          v84 = v61;
          v85 = v55;
          v63 = 0;
          v64 = v61 * v82;
          do
          {
            v65 = (rand() / v60 * v58 + 1.0);
            v66 = (v62 + v65 + (v64 + (rand() / v60 * v59)) * v86) * bytesPerPixel;
            v67 = ((21846 * (*(data + v66 + 1) + *(data + v66) + *(data + v66 + 2))) >> 16) - ((21846 * (*(data + v66 - bytesPerPixel + 1) + *(data + v66 - bytesPerPixel) + *(data + v66 - bytesPerPixel + 2))) >> 16);
            *&v53[8 * v63] = v67;
            v56 += v67;
            ++v63;
          }

          while (v46 != v63);
          v68 = 0;
          v69 = v46;
          v70 = v53;
          do
          {
            v71 = *v70++;
            v68 = ((v71 - v56 / v46) * (v71 - v56 / v46) + v68);
            --v69;
          }

          while (v69);
          v61 = v84;
          v55 = v85;
        }

        v72 = v68 / v46;
        *(v83 + 120 * v61) = v72;
        v55 += v72;
        ++v61;
      }

      while (v61 != 15);
      v50 = v80;
      v54 = v81 + 1;
    }

    while (v81 != 14);
    detectCopy = v78;
    if (v77[0] > 59)
    {
      goto LABEL_45;
    }

    v73 = 0;
    v74 = 0;
    do
    {
      if (*(v80 + v73) < 100)
      {
        ++v74;
      }

      v73 += 8;
    }

    while (v73 != 1800);
    v44 = v74 / 225.0;
    if (v44 <= 0.7)
    {
LABEL_45:
      v75 = 0;
      v76 = 0;
      do
      {
        if (*(v80 + v75) < v55 / 225)
        {
          ++v76;
        }

        v75 += 8;
      }

      while (v75 != 1800);
      v44 = v76 / 225.0;
    }

    goto LABEL_50;
  }

  v84 = v19;
  v27 = 0;
  v28 = fmax(width / 500.0, 1.0);
  v29 = (v22 - v28);
  v85 = v28;
  v30 = v28;
  v31 = v21;
  v83 = v24;
  v32 = v24;
  v33 = (v77 - v23);
  do
  {
    v34 = v20;
    v35 = (v30 + rand() / 2147483650.0 * v29);
    v36 = rand();
    v20 = v34;
    v37 = v18 + v35;
    width2 = v86;
    v38 = v37 + (v34 + (v36 / 2147483650.0 * v31)) * v86;
    v39 = ((21846 * (*(data + v38 * bytesPerPixel + 1) + *(data + v38 * bytesPerPixel) + *(data + v38 * bytesPerPixel + 2))) >> 16) - ((21846 * (*(data + (v38 - v85) * bytesPerPixel + 1) + *(data + (v38 - v85) * bytesPerPixel) + *(data + (v38 - v85) * bytesPerPixel + 2))) >> 16);
    *v33++ = v39;
    v27 += v39;
    --v32;
  }

  while (v32);
  v40 = 0;
  v41 = v83;
  do
  {
    v42 = *v25++;
    v40 = ((v42 - v27 / v83) * (v42 - v27 / v83) + v40);
    --v41;
  }

  while (v41);
  v43 = v40 / v83;
  v44 = 0.0;
  detectCopy = v78;
  v19 = v84;
  if (v43 <= 150)
  {
    goto LABEL_23;
  }

LABEL_50:
  v10 = [[SCRCPhotoEvaluatorResultBlur alloc] initWithBlurLevel:v44];
LABEL_7:

  return v10;
}

void __40__SCRCPhotoEvaluatorBlur_detect_inRect___block_invoke()
{
  Current = CFAbsoluteTimeGetCurrent();

  srand(Current);
}

@end
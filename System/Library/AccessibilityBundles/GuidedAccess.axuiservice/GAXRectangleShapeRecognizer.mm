@interface GAXRectangleShapeRecognizer
+ (id)smoothPathForFingerPath:(id)path probabilityOfMatch:(double *)match;
+ (void)_copyRectanglePointsContextsFromPath:(id)path;
@end

@implementation GAXRectangleShapeRecognizer

+ (void)_copyRectanglePointsContextsFromPath:(id)path
{
  pathCopy = path;
  [pathCopy bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [pathCopy boundsCenter];
  v13 = v12;
  v66 = v14;
  v79.origin.x = v5;
  v79.origin.y = v7;
  v79.size.width = v9;
  v79.size.height = v11;
  MinX = CGRectGetMinX(v79);
  v80.origin.x = v5;
  v80.origin.y = v7;
  v80.size.width = v9;
  v80.size.height = v11;
  MaxX = CGRectGetMaxX(v80);
  v81.origin.x = v5;
  v81.origin.y = v7;
  v81.size.width = v9;
  v81.size.height = v11;
  MinY = CGRectGetMinY(v81);
  v82.origin.x = v5;
  v82.origin.y = v7;
  v82.size.width = v9;
  v82.size.height = v11;
  MaxY = CGRectGetMaxY(v82);
  GAX_CGPointGetAngleFormedBySegmentToPoint(v19, v13, v66, MinX);
  v65 = v20;
  GAX_CGPointGetAngleFormedBySegmentToPoint(v21, v13, v66, MaxX);
  v23 = v22;
  GAX_CGPointGetAngleFormedBySegmentToPoint(v24, v13, v66, MaxX);
  v26 = v25;
  GAX_CGPointGetAngleFormedBySegmentToPoint(v27, v13, v66, MinX);
  v28 = 1;
  v78[0] = 1;
  v78[1] = v65;
  v78[2] = v23;
  v78[3] = 2;
  v78[4] = v23;
  v78[5] = v26;
  v78[6] = 3;
  v78[7] = v26;
  v78[8] = v29;
  v78[9] = 4;
  v78[10] = v29;
  v78[11] = 0x400921FB54442D18;
  v78[12] = 4;
  v78[13] = 0xC00921FB54442D18;
  v78[14] = v65;
  v76 = 0;
  v77[0] = 1;
  *&v77[1] = MinX;
  *&v77[2] = MinY;
  *&v77[3] = MaxX;
  *&v77[4] = MinY;
  v77[5] = 2;
  *&v77[6] = MaxX;
  *&v77[7] = MinY;
  *&v77[8] = MaxX;
  *&v77[9] = MaxY;
  v77[10] = 3;
  *&v77[11] = MaxX;
  *&v77[12] = MaxY;
  *&v77[13] = MinX;
  *&v77[14] = MaxY;
  v77[15] = 4;
  *&v77[16] = MinX;
  *&v77[17] = MaxY;
  *&v77[18] = MinX;
  *&v77[19] = MinY;
  v73 = 0;
  v75 = 0u;
  if (AXCArrayCreate())
  {
    v30 = 0;
    do
    {
      v31 = v30;
      if (v30 == 3)
      {
        break;
      }

      v32 = qword_42000[v30 + 1];
      v33 = AXCArrayCreate();
      *(&v73 + v32) = v33;
      v30 = v31 + 1;
    }

    while (v33);
    v28 = v31 < 3;
  }

  v34 = AXCArrayCreate();
  v35 = v34;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 1;
  v64 = pathCopy;
  if (!v28 && v34)
  {
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1DD08;
    v68[3] = &unk_5D970;
    *&v68[5] = v13;
    *&v68[6] = v66;
    v68[7] = 5;
    v68[8] = v78;
    v68[4] = &v69;
    v68[9] = &v73;
    v68[10] = v34;
    [pathCopy enumerateElementsUsingBlock:v68];
    v36 = *(&v73 + v70[3]);
    Count = AXCArrayGetCount();
    if (Count)
    {
      v38 = 0;
      for (i = 0; i != Count; ++i)
      {
        if (i >= AXCArrayGetCount())
        {
          AXCArrayGetCount();
          _AXAssert();
        }

        v67 = *(_AXCArrayGetUnderlyingArray() + v38);
        v40 = AXCArrayGetCount();
        _AXCArrayPrepareForInsertingElementAtIndex();
        *(_AXCArrayGetUnderlyingArray() + 16 * v40) = v67;
        v38 += 16;
      }
    }

    if (v36)
    {
      CFRelease(v36);
    }

    v41 = 0;
    v42 = v70[3];
    *(&v73 + v42) = v35;
    do
    {
      if (v42 == qword_42000[v41])
      {
        goto LABEL_19;
      }

      ++v41;
    }

    while (v41 != 4);
    LOBYTE(v41) = 0;
LABEL_19:
    v35 = 0;
    v43 = 0;
    while (1)
    {
      v44 = qword_42000[(v43 + v41) & 3];
      v45 = AXCArrayGetCount();
      if (v45)
      {
        if (!AXCArrayGetCount())
        {
          AXCArrayGetCount();
          _AXAssert();
        }

        _AXCArrayGetUnderlyingArray();
        v46 = v77;
        v47 = 4;
        do
        {
          if (v44 == *v46)
          {
            break;
          }

          v46 += 5;
          --v47;
        }

        while (v47);
        AX_CGPointGetDistanceToPoint();
        AX_CGPointGetDistanceToPoint();
        AX_CGPointGetDistanceToPoint();
        v49 = v48;
        if (v48 > 0.0)
        {
          v50 = 0;
          v51 = 0;
          while (1)
          {
            if (v51 >= AXCArrayGetCount())
            {
              AXCArrayGetCount();
              _AXAssert();
            }

            UnderlyingArray = _AXCArrayGetUnderlyingArray();
            v53 = *(UnderlyingArray + v50);
            v54 = *(UnderlyingArray + v50 + 8);
            AX_CGPointGetDistanceToPoint();
            v56 = v55;
            if (!v35)
            {
              v35 = AXCArrayCreate();
              if (!v35)
              {
                goto LABEL_41;
              }
            }

            v57 = AXCArrayGetCount();
            _AXCArrayPrepareForInsertingElementAtIndex();
            v58 = _AXCArrayGetUnderlyingArray() + 32 * v57;
            *v58 = v53;
            *(v58 + 8) = v54;
            ++v51;
            *(v58 + 16) = v44;
            *(v58 + 24) = v56 / v49;
            v50 += 16;
            if (v51 >= v45)
            {
              goto LABEL_35;
            }
          }
        }

        if (v35)
        {
          CFRelease(v35);
          goto LABEL_40;
        }
      }

LABEL_35:
      if (v43++ > 2)
      {
        goto LABEL_41;
      }
    }
  }

  if (v34)
  {
    CFRelease(v34);
LABEL_40:
    v35 = 0;
  }

LABEL_41:
  for (j = 0; j != 4; ++j)
  {
    v61 = qword_42000[j];
    v62 = *(&v73 + v61);
    if (v62)
    {
      CFRelease(v62);
      *(&v73 + v61) = 0;
    }
  }

  _Block_object_dispose(&v69, 8);

  return v35;
}

+ (id)smoothPathForFingerPath:(id)path probabilityOfMatch:(double *)match
{
  pathCopy = path;
  v7 = [self _copyRectanglePointsContextsFromPath:pathCopy];
  if (v7)
  {
    v8 = v7;
    matchCopy = match;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    Count = AXCArrayGetCount();
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    if (Count)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        if (v16 >= AXCArrayGetCount())
        {
          v49 = AXCArrayGetCount();
          v50 = v16;
          v48 = v8;
          _AXAssert();
        }

        UnderlyingArray = _AXCArrayGetUnderlyingArray();
        v18 = (UnderlyingArray + v15);
        v19 = *(UnderlyingArray + v15 + 16);
        v20 = *(UnderlyingArray + v15 + 24);
        if (v19 > 2)
        {
          if (v19 == 3)
          {
LABEL_14:
            v18 = (UnderlyingArray + 32 * v16 + 8);
            goto LABEL_15;
          }

          if (v19 != 4)
          {
LABEL_12:
            v21 = 0.0;
            if ((v19 - 1) >= 4)
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }
        }

        else
        {
          if (v19 == 1)
          {
            goto LABEL_14;
          }

          if (v19 != 2)
          {
            goto LABEL_12;
          }
        }

LABEL_15:
        v21 = *v18;
LABEL_16:
        v22 = (&v55 + v19);
        v23 = *v22 + v21 * v20;
        v24 = v20 + v22[1];
        *v22 = v23;
        v22[1] = v24;
LABEL_17:
        ++v16;
        v15 += 32;
        if (Count == v16)
        {
          v14 = *(&v56 + 1);
          v13 = *(&v57 + 1);
          v12 = *(&v58 + 1);
          v11 = *(&v59 + 1);
          break;
        }
      }
    }

    v25 = 0;
    if (v14 > 0.0 && v13 > 0.0 && v12 > 0.0 && v11 > 0.0)
    {
      v25 = 0;
      v26 = *&v57 / v13;
      v27 = *&v59 / v11;
      if (v26 > *&v59 / v11)
      {
        v28 = *&v56 / v14;
        v29 = *&v58 / v12;
        if (v29 > *&v56 / v14)
        {
          v30 = v26 - v27;
          v31 = v29 - v28;
          v61.origin.x = *&v59 / v11;
          v61.origin.y = *&v56 / v14;
          v61.size.width = v26 - v27;
          v61.size.height = v31;
          CGRectGetMinX(v61);
          v62.origin.x = v27;
          v62.origin.y = v28;
          v62.size.width = v30;
          v62.size.height = v31;
          CGRectGetMaxX(v62);
          v63.origin.x = v27;
          v63.origin.y = v28;
          v63.size.width = v30;
          v63.size.height = v31;
          CGRectGetMinY(v63);
          v64.origin.x = v27;
          v64.origin.y = v28;
          v64.size.width = v30;
          v64.size.height = v31;
          CGRectGetMaxY(v64);
          v65.origin.x = v27;
          v65.origin.y = v28;
          v65.size.width = v30;
          v65.size.height = v31;
          Width = CGRectGetWidth(v65);
          v52 = v28;
          v53 = v27;
          v66.origin.x = v27;
          v66.origin.y = v28;
          v51 = v30;
          v66.size.width = v30;
          v66.size.height = v31;
          Height = CGRectGetHeight(v66);
          v34 = 0.0;
          if (Count)
          {
            v35 = Height;
            v36 = 0;
            for (i = 0; i != Count; ++i)
            {
              if (i >= AXCArrayGetCount())
              {
                v49 = AXCArrayGetCount();
                v50 = i;
                v48 = v8;
                _AXAssert();
              }

              v38 = _AXCArrayGetUnderlyingArray();
              v39 = *(v38 + v36 + 16);
              v40 = *(v38 + v36 + 24);
              if (v39 == 4)
              {
                v41 = v35;
              }

              else
              {
                v41 = 0.0;
              }

              if (v39 == 3)
              {
                v41 = Width;
              }

              if (v39 == 2)
              {
                v42 = v35;
              }

              else
              {
                v42 = 0.0;
              }

              if (v39 == 1)
              {
                v42 = Width;
              }

              if (v39 <= 2)
              {
                v43 = v42;
              }

              else
              {
                v43 = v41;
              }

              AX_CGPointGetDistanceToPoint();
              Height = v44 / v43;
              v34 = v34 + Height * v40;
              v36 += 32;
            }
          }

          [self _maximumMarginOfErrorForPath:{pathCopy, Height, v48, v49, v50}];
          v25 = 0;
          if (v45 <= 0.0)
          {
            v10 = 0.0;
          }

          else
          {
            v46 = v45;
            v10 = 0.0;
            if (v34 < v45)
            {
              v25 = [UIBezierPath bezierPathWithRect:v53, v52, v51, v31];
              v10 = 1.0 - v34 / v46;
            }
          }
        }
      }
    }

    CFRelease(v8);
    match = matchCopy;
    if (matchCopy)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v25 = 0;
    v10 = 0.0;
    if (match)
    {
LABEL_50:
      *match = v10;
    }
  }

  return v25;
}

@end
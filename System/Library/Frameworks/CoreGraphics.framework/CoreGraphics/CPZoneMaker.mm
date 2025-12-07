@interface CPZoneMaker
- (BOOL)overlap:(id)overlap with:(id)with;
- (id)newZoneForStraddlersFrom:(id)from;
- (unsigned)categorizeGraphicsIn:(id)in;
- (void)addObjectsToStraddler:(id)straddler from:(id)from;
- (void)addZonesWithBoundaryIn:(id)in withBorder:(id)border;
- (void)cutHorizontalBorders:(id)borders whereObscuredByShape:(id)shape;
- (void)cutVerticalBorders:(id)borders whereObscuredByShape:(id)shape;
- (void)dealloc;
- (void)makeZonesIn:(id)in;
- (void)makeZonesWithBoundaryIn:(id)in;
- (void)mergeQualifyingRectanglesIn:(id)in;
- (void)splitByRotatation:(id)rotatation inPage:(id)page;
@end

@implementation CPZoneMaker

- (id)newZoneForStraddlersFrom:(id)from
{
  v4 = [from count];
  v5 = 0;
  if (v4)
  {
    v6 = v4 - 1;
    do
    {
      v7 = [from objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v5)
          {
            v5 = objc_alloc_init(CPZone);
            [(CPChunk *)v5 setShrinksWithChildren:0];
            [(CPZone *)v5 setIsStraddleZone:1];
          }

          [(CPChunk *)v5 add:v7];
          [from removeObjectAtIndex:v6];
        }
      }

      --v6;
    }

    while (v6 != -1);
  }

  return v5;
}

- (void)addObjectsToStraddler:(id)straddler from:(id)from
{
  v6 = [from count];
  if (v6)
  {
    v7 = v6 - 1;
    do
    {
      v8 = [from objectAtIndex:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [straddler add:v8];
          [from removeObjectAtIndex:v7];
        }
      }

      --v7;
    }

    while (v7 != -1);
  }
}

- (void)cutVerticalBorders:(id)borders whereObscuredByShape:(id)shape
{
  [shape renderedBounds];
  v56 = v7;
  v57 = v6;
  v54 = v9;
  v55 = v8;
  zOrder = [shape zOrder];
  if ([borders count])
  {
    v11 = 0;
    v12 = 0;
    v13 = fmin(v56, v54) < 0.0;
    do
    {
      v14 = [borders objectAtIndex:v11];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v56;
      v23 = v57;
      if (v13)
      {
        v58.size.width = v56;
        v58.origin.x = v57;
        v58.size.height = v54;
        v58.origin.y = v55;
        *&v23 = CGRectStandardize(v58);
      }

      v25 = v23 + v24;
      v26 = fmin(v20, v22);
      v27 = v26 < 0.0;
      if (v26 >= 0.0)
      {
        x = v16;
        width = v20;
        if (v16 >= v25)
        {
          return;
        }
      }

      else
      {
        v59.origin.x = v16;
        v59.origin.y = v18;
        v59.size.width = v20;
        v59.size.height = v22;
        if (COERCE_DOUBLE(CGRectStandardize(v59)) >= v25)
        {
          return;
        }

        v60.origin.x = v16;
        v60.origin.y = v18;
        v60.size.width = v20;
        v60.size.height = v22;
        v61 = CGRectStandardize(v60);
        x = v61.origin.x;
        width = v61.size.width;
      }

      v30 = v57;
      if (v13)
      {
        v62.size.width = v56;
        v62.origin.x = v57;
        v62.size.height = v54;
        v62.origin.y = v55;
        *&v30 = CGRectStandardize(v62);
      }

      v31 = v16;
      if (v27)
      {
        v63.origin.x = v16;
        v63.origin.y = v18;
        v63.size.width = v20;
        v63.size.height = v22;
        *&v31 = CGRectStandardize(v63);
      }

      if (v30 >= v31 || v25 <= x + width || zOrder <= [v14 zOrder])
      {
        goto LABEL_37;
      }

      v34 = v54;
      v33 = v55;
      if (v13)
      {
        v64.size.width = v56;
        v64.origin.x = v57;
        v64.size.height = v54;
        v64.origin.y = v55;
        *&v32 = CGRectStandardize(v64);
        v34 = v35;
      }

      v36 = v18;
      v37 = v22;
      if (v27)
      {
        v65.origin.x = v16;
        v38 = v33;
        v65.origin.y = v18;
        v65.size.width = v20;
        v65.size.height = v22;
        *&v32 = CGRectStandardize(v65);
        v36 = v39;
        v33 = v38;
        v37 = v40;
      }

      v41 = v55;
      if (v13)
      {
        v66.size.width = v56;
        v66.origin.x = v57;
        v53 = v33;
        v66.size.height = v54;
        v66.origin.y = v55;
        *&v32 = CGRectStandardize(v66);
        v41 = v42;
        v33 = v53;
      }

      v43 = v33 + v34;
      v44 = v36 + v37;
      if (v27)
      {
        v67.origin.x = v16;
        v67.origin.y = v18;
        v67.size.width = v20;
        v67.size.height = v22;
        *&v32 = CGRectStandardize(v67);
        if (v41 > v45)
        {
          goto LABEL_26;
        }

        v68.origin.x = v16;
        v68.origin.y = v18;
        v68.size.width = v20;
        v68.size.height = v22;
        *&v32 = CGRectStandardize(v68);
        v18 = v46;
      }

      else if (v41 > v18)
      {
LABEL_26:
        v47 = v55;
        if (v13)
        {
          v69.size.width = v56;
          v69.origin.x = v57;
          v69.size.height = v54;
          v69.origin.y = v55;
          *&v32 = CGRectStandardize(v69);
        }

        if (v47 >= v44)
        {
          goto LABEL_37;
        }

        if (v43 < v44)
        {
          v48 = [v14 copy];
          [v48 setBounds:{v16, v43, v20, v44 - v43}];
          v12 = (v12 + 1);
          [v48 addToArray:borders atIndex:v12];
        }

        v49 = v55 - v18;
        v50 = v14;
        v51 = v16;
        v52 = v18;
LABEL_35:
        [v50 setBounds:{v51, v52, v20, v49}];
        goto LABEL_37;
      }

      if (v43 > v18)
      {
        if (v43 >= v44)
        {
          [v14 removeFromArrayAtIndex:{v12, v32}];
          LODWORD(v12) = v12 - 1;
          goto LABEL_37;
        }

        v49 = v44 - v43;
        v50 = v14;
        v51 = v16;
        v52 = v43;
        goto LABEL_35;
      }

LABEL_37:
      v12 = (v12 + 1);
      v11 = v12;
    }

    while ([borders count] > v12);
  }
}

- (void)cutHorizontalBorders:(id)borders whereObscuredByShape:(id)shape
{
  [shape renderedBounds];
  v41 = v7;
  v42 = v6;
  v43 = v9;
  v44 = v8;
  zOrder = [shape zOrder];
  if ([borders count])
  {
    v11 = 0;
    v12 = 0;
    v13 = fmin(v41, v43) < 0.0;
    do
    {
      v14 = [borders objectAtIndex:v11];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v43;
      v23 = v44;
      if (v13)
      {
        v45.size.width = v41;
        v45.origin.x = v42;
        v45.size.height = v43;
        v45.origin.y = v44;
        *(&v23 - 1) = CGRectStandardize(v45);
      }

      v25 = v23 + v24;
      v26 = fmin(v20, v22);
      v27 = v26 < 0.0;
      if (v26 >= 0.0)
      {
        y = v18;
        height = v22;
        if (v18 >= v25)
        {
          return;
        }
      }

      else
      {
        v46.origin.x = v16;
        v46.origin.y = v18;
        v46.size.width = v20;
        v46.size.height = v22;
        v47 = CGRectStandardize(v46);
        if (v47.origin.y >= v25)
        {
          return;
        }

        v48.origin.x = v16;
        v48.origin.y = v18;
        v48.size.width = v20;
        v48.size.height = v22;
        v49 = CGRectStandardize(v48);
        y = v49.origin.y;
        height = v49.size.height;
      }

      v30 = v44;
      if (v13)
      {
        v50.size.width = v41;
        v50.origin.x = v42;
        v50.size.height = v43;
        v50.origin.y = v44;
        v51 = CGRectStandardize(v50);
        v30 = v51.origin.y;
      }

      v31 = v18;
      if (v27)
      {
        v52.origin.x = v16;
        v52.origin.y = v18;
        v52.size.width = v20;
        v52.size.height = v22;
        *(&v31 - 1) = CGRectStandardize(v52);
      }

      if (v30 >= v31 || v25 <= y + height || zOrder <= [v14 zOrder])
      {
        goto LABEL_33;
      }

      v33 = v41;
      v32 = v42;
      if (v13)
      {
        v53.size.width = v41;
        v53.origin.x = v42;
        v53.size.height = v43;
        v53.origin.y = v44;
        *&v32 = CGRectStandardize(v53);
      }

      v34 = v32 + v33;
      if (v27)
      {
        v54.origin.x = v16;
        v54.origin.y = v18;
        v54.size.width = v20;
        v54.size.height = v22;
        v55 = CGRectStandardize(v54);
        v35 = v55.origin.x + v55.size.width;
        v55.origin.x = v16;
        v55.origin.y = v18;
        v55.size.width = v20;
        v55.size.height = v22;
        if (v42 > COERCE_DOUBLE(CGRectStandardize(v55)))
        {
          goto LABEL_22;
        }

        v56.origin.x = v16;
        v56.origin.y = v18;
        v56.size.width = v20;
        v56.size.height = v22;
        *&v16 = CGRectStandardize(v56);
      }

      else
      {
        v35 = v16 + v20;
        if (v42 > v16)
        {
LABEL_22:
          v36 = v42;
          if (v13)
          {
            v57.size.width = v41;
            v57.origin.x = v42;
            v57.size.height = v43;
            v57.origin.y = v44;
            *&v36 = CGRectStandardize(v57);
          }

          if (v36 >= v35)
          {
            goto LABEL_33;
          }

          if (v34 < v35)
          {
            v37 = [v14 copy];
            [v37 setBounds:{v34, v18, v35 - v34, v22}];
            v12 = (v12 + 1);
            [v37 addToArray:borders atIndex:v12];
          }

          v38 = v42 - v16;
          v39 = v14;
          v40 = v16;
LABEL_31:
          [v39 setBounds:{v40, v18, v38, v22}];
          goto LABEL_33;
        }
      }

      if (v34 > v16)
      {
        if (v34 >= v35)
        {
          [v14 removeFromArrayAtIndex:v12];
          LODWORD(v12) = v12 - 1;
          goto LABEL_33;
        }

        v38 = v35 - v34;
        v39 = v14;
        v40 = v34;
        goto LABEL_31;
      }

LABEL_33:
      v12 = (v12 + 1);
      v11 = v12;
    }

    while ([borders count] > v12);
  }
}

- (void)splitByRotatation:(id)rotatation inPage:(id)page
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = [rotatation count];
  charactersInZone = [rotatation charactersInZone];
  if (charactersInZone)
  {
    v8 = charactersInZone;
    if ([charactersInZone length])
    {
      v37 = v6;
      [v8 sortBy:compareByRotation];
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = *([v8 charAtIndex:0] + 168);
      if (v10 > 350.0)
      {
        v10 = v10 + -360.0;
      }

      v45 = v10;
      [v8 splitToSubsequences:v9 whereTrue:splitRotationZonesCondition passing:&v45];
      if ([v9 count] < 2)
      {
        [v8 averageRotation];
        v27 = v26;
        [rotatation setRotationAngle:?];
        v28 = [v8 length];
        if (v28 >= 1)
        {
          v29 = v28;
          v31 = __sincos_stret(v27);
          v30.f64[0] = v31.__cosval;
          v32 = 0;
          v30.f64[1] = -v31.__sinval;
          v40 = v30;
          do
          {
            v33 = [v8 charAtIndex:v32];
            v34 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v31, v33[15]), v40, v33[14]), 0);
            *(v33 + 6) = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v31, v33[13]), v40, v33[12]), 0);
            *(v33 + 7) = v34;
            v32 = (v32 + 1);
          }

          while (v29 != v32);
        }
      }

      else
      {
        [rotatation setCharactersInZone:0];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v11 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v42;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v42 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v41 + 1) + 8 * i);
              v16 = objc_alloc_init(CPZone);
              [(CPObject *)v16 setPage:page];
              [(CPChunk *)v16 setShrinksWithChildren:0];
              [(CPZone *)v16 setCharactersInZone:v15];
              [v15 averageRotation];
              v18 = v17;
              [(CPZone *)v16 setRotationAngle:?];
              v19 = [v15 length];
              if (v19 >= 1)
              {
                v20 = v19;
                v22 = __sincos_stret(v18);
                v21.f64[0] = v22.__cosval;
                v23 = 0;
                v21.f64[1] = -v22.__sinval;
                v39 = v21;
                do
                {
                  v24 = [v15 charAtIndex:v23];
                  v25 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v22, v24[15]), v39, v24[14]), 0);
                  *(v24 + 6) = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v22, v24[13]), v39, v24[12]), 0);
                  *(v24 + 7) = v25;
                  v23 = (v23 + 1);
                }

                while (v20 != v23);
              }

              [rotatation add:v16];
            }

            v12 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
          }

          while (v12);
        }
      }

      v6 = v37;
    }
  }

  if (v6 >= 1)
  {
    v35 = 0;
    do
    {
      v36 = [rotatation childAtIndex:v35];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CPZoneMaker *)self splitByRotatation:v36 inPage:page];
      }

      v35 = (v35 + 1);
    }

    while (v6 != v35);
  }
}

- (void)makeZonesWithBoundaryIn:(id)in
{
  v199 = *MEMORY[0x1E69E9840];
  v4 = [in count];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  v178 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  v7 = objc_alloc_init(CPZoneBorder);
  [(CPZoneBorder *)v7 setSide:1 ofPage:in];
  [(CPZoneBorder *)v7 addToArray:v5];

  v8 = objc_alloc_init(CPZoneBorder);
  [(CPZoneBorder *)v8 setSide:2 ofPage:in];
  [(CPZoneBorder *)v8 addToArray:v6];

  v9 = objc_alloc_init(CPZoneBorder);
  [(CPZoneBorder *)v9 setSide:3 ofPage:in];
  [(CPZoneBorder *)v9 addToArray:v5];

  v10 = objc_alloc_init(CPZoneBorder);
  inCopy = in;
  [(CPZoneBorder *)v10 setSide:4 ofPage:in];
  [(CPZoneBorder *)v10 addToArray:v6];

  v177 = v5;
  if (v4)
  {
    v11 = 0;
    v12 = &v190 + 1;
    v167 = v4;
    v166 = &v190 + 8;
    do
    {
      v13 = [inCopy childAtIndex:{v11, v166}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        zoneGraphicType = [v13 zoneGraphicType];
        switch(zoneGraphicType)
        {
          case 3:
            path = [v13 path];
            v65 = path;
            *(v12 + 3) = 0u;
            *(v12 + 4) = 0u;
            *(v12 + 1) = 0u;
            *(v12 + 2) = 0u;
            *v12 = 0u;
            *&v190 = v13;
            if (path)
            {
              LODWORD(info) = 0;
              CGPathApply(path, &info, countElements);
              v66 = info;
            }

            else
            {
              v66 = 0;
            }

            HIDWORD(v190) = v66;
            v191 = 0u;
            v192 = 0u;
            v193 = COERCE_DOUBLE(malloc_type_malloc(16 * v66, 0x1000040451B5BE8uLL));
            LODWORD(v194) = 0;
            v195 = v5;
            v196 = v6;
            v197 = [v5 count];
            v198 = [v6 count];
            CGPathApply(v65, &v190, findLineSegments);
            free(*&v193);
            [v178 addObject:v13];
            break;
          case 2:
            [v13 bounds];
            v19 = v18;
            v21 = v20;
            v180 = v22;
            v174 = v23;
            [v13 renderedBounds];
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v31 = v30;
            [v13 lineWidth];
            v32 = 0;
            *&v190 = v25;
            *(&v190 + 1) = v27;
            *&v191 = v25;
            v194 = v27;
            *(&v191 + 1) = v31 + v27;
            *(&v192 + 1) = v31 + v27;
            *&v192 = v29 + v25;
            v193 = v29 + v25;
            v34 = v33 * 0.5;
            v35 = v21;
            v36 = v21 + v33 * 0.5;
            v37 = v19;
            v170 = v19 + v33 * 0.5;
            v172 = v36;
            do
            {
              v38 = v32++;
              v39 = *(v12 - 1);
              v40 = *v12;
              v41 = (&v190 + (v32 & 3));
              v42 = *v41;
              v43 = v41[1];
              v44 = fmax(v34 + v39 - v37 - v180, 0.0);
              v45 = v39 + v44 * -0.5;
              v46 = fmax(v172 - *v12, 0.0);
              v47 = *v12 + v46 * 0.5;
              if (v38 == 2)
              {
                v48 = v41[1];
              }

              else
              {
                v48 = *v12 + v46 * 0.5;
              }

              if (v38 == 2)
              {
                v49 = v39 + v44 * -0.5;
              }

              else
              {
                v49 = *v41;
              }

              if (v38 == 2)
              {
                v47 = *v12;
              }

              else
              {
                v45 = *(v12 - 1);
              }

              if (v38 == 2)
              {
                v50 = 4;
              }

              else
              {
                v44 = v46;
                v50 = 1;
              }

              v51 = fmax(v170 - v39, 0.0);
              v52 = fmax(v34 + v40 - v35 - v174, 0.0);
              if (v38)
              {
                v43 = v40 + v52 * -0.5;
              }

              else
              {
                v42 = v39 + v51 * 0.5;
              }

              if (v38)
              {
                v40 = v40 + v52 * -0.5;
              }

              else
              {
                v39 = v39 + v51 * 0.5;
              }

              if (v38)
              {
                v51 = v52;
                v53 = 3;
              }

              else
              {
                v53 = 2;
              }

              if (v38 <= 1)
              {
                v54 = v43;
              }

              else
              {
                v54 = v48;
              }

              if (v38 <= 1)
              {
                v55 = v42;
              }

              else
              {
                v55 = v49;
              }

              if (v38 <= 1)
              {
                v56 = v40;
              }

              else
              {
                v56 = v47;
              }

              if (v38 <= 1)
              {
                v57 = v39;
              }

              else
              {
                v57 = v45;
              }

              if (v38 <= 1)
              {
                v58 = v51;
              }

              else
              {
                v58 = v44;
              }

              if (v38 <= 1)
              {
                v59 = v53;
              }

              else
              {
                v59 = v50;
              }

              v60 = [v13 copy];
              [v60 makeLineFromVertex:v57 toVertex:{v56, v55, v54}];
              [v60 setLineWidth:v58];
              v61 = [[CPZoneBorder alloc] initWithGraphicObject:v60];

              if (!v61)
              {
                break;
              }

              v62 = objc_alloc_init(CPZoneBorderNeighbor);
              [(CPZoneBorderNeighbor *)v62 setNeighborShape:v13];
              [(CPZoneBorderNeighbor *)v62 setShapeSide:v59];
              [(CPZoneBorder *)v61 addNeighbor:v62];

              v63 = [(CPZoneBorder *)v61 isHorizontal]? v177 : v6;
              [(CPZoneBorder *)v61 addToArray:v63];

              v12 += 2;
            }

            while (v32 != 4);
            [v178 addObject:v13];
            v5 = v177;
            v4 = v167;
            v12 = v166;
            break;
          case 1:
            v15 = [[CPZoneBorder alloc] initWithGraphicObject:v13];
            if (!v15)
            {
              goto LABEL_63;
            }

            v16 = v15;
            if ([(CPZoneBorder *)v15 isHorizontal])
            {
              v17 = v5;
            }

            else
            {
              v17 = v6;
            }

            [(CPZoneBorder *)v16 addToArray:v17];

            break;
        }
      }

      v11 = (v11 + 1);
    }

    while (v11 != v4);
  }

LABEL_63:
  [v5 sortUsingSelector:sel_compareYBounds_];
  [v6 sortUsingSelector:sel_compareXBounds_];
  [v178 sortUsingSelector:sel_compareZ_];
  v67 = [v178 count];
  if (v67 >= 1)
  {
    v68 = (v67 & 0x7FFFFFFF) + 1;
    do
    {
      v69 = [v178 objectAtIndex:v68 - 2];
      if ([v69 isUprightRectangle])
      {
        fillColor = [v69 fillColor];
        if (fillColor)
        {
          v71 = (fillColor & 0x8000000000000000) != 0 ? CGTaggedColorGetAlpha(fillColor) : *(fillColor + 8 * *(fillColor + 56) + 64);
          if (v71 >= 1.0)
          {
            [(CPZoneMaker *)self cutHorizontalBorders:v5 whereObscuredByShape:v69];
            [(CPZoneMaker *)self cutVerticalBorders:v6 whereObscuredByShape:v69];
          }
        }
      }

      --v68;
    }

    while (v68 > 1);
  }

  [(CPCharSequence *)self->charactersOnPage map:cutBordersCrossingText passing:v5];
  [(CPCharSequence *)self->charactersOnPage map:cutBordersCrossingText passing:v6];
  if ([v5 count] >= 2)
  {
    v72 = 1;
    v73 = 1;
    do
    {
      v74 = [v5 objectAtIndex:v72];
      if (v73 >= 1)
      {
        v75 = v74;
        for (i = 0; i < v73; ++i)
        {
          v77 = [v5 objectAtIndex:i];
          if ([v75 continues:v77])
          {
            [v75 combine:v77];
            --i;
            --v73;
          }
        }
      }

      v72 = ++v73;
    }

    while ([v5 count] > v73);
  }

  if ([v6 count] >= 2)
  {
    v78 = 1;
    v79 = 1;
    do
    {
      v80 = [v6 objectAtIndex:v78];
      if (v79 >= 1)
      {
        v81 = v80;
        for (j = 0; j < v79; ++j)
        {
          v83 = [v6 objectAtIndex:j];
          if ([v81 continues:v83])
          {
            [v81 combine:v83];
            --j;
            --v79;
          }
        }
      }

      v78 = ++v79;
    }

    while ([v6 count] > v79);
  }

  if ([v5 count])
  {
    v84 = 0;
    v85 = 0;
    do
    {
      v86 = [v5 objectAtIndex:v84];
      if ([v86 graphicObjectCount] > 0x32 || (objc_msgSend(v86, "bounds"), v87 > 25.0))
      {
        [(CPZoneMaker *)self addZonesWithBoundaryIn:inCopy withBorder:v86];
        --v85;
      }

      v84 = ++v85;
    }

    while ([v5 count] > v85);
  }

  if ([v6 count])
  {
    v88 = 0;
    v89 = 0;
    do
    {
      v90 = [v6 objectAtIndex:v88];
      if ([v90 graphicObjectCount] > 0x32 || (objc_msgSend(v90, "bounds"), v91 > 25.0))
      {
        [(CPZoneMaker *)self addZonesWithBoundaryIn:inCopy withBorder:v90];
        --v89;
      }

      v88 = ++v89;
    }

    while ([v6 count] > v89);
  }

  v190 = 0u;
  v191 = 0u;
  if ([v5 count])
  {
    v92 = 0;
    do
    {
      v93 = [v5 objectAtIndex:v92];
      if ([v6 count])
      {
        v94 = 0;
        do
        {
          v95 = [v6 objectAtIndex:v94];
          if ([v93 intersectsWith:v95 atRect:&v190])
          {
            [CPZoneBorder addIntersectionBetweenBorder:v93 andBorder:v95 atRect:v190, v191];
          }

          ++v94;
        }

        while ([v6 count] > v94);
      }

      ++v92;
    }

    while ([v5 count] > v92);
  }

  if ([v5 count])
  {
    v96 = 0;
    v97 = 0;
    do
    {
      v98 = [v5 objectAtIndex:v96];
      if ([v98 intersectionCount] <= 1)
      {
        if ([v98 intersectionCount] == 1)
        {
          [v98 removeLooseThreadsStartingFrom:0];
          v97 = [v5 indexOfObject:v98];
        }

        [v98 removeFromArray];
        --v97;
      }

      v96 = ++v97;
    }

    while ([v5 count] > v97);
  }

  if ([v6 count])
  {
    v99 = 0;
    v100 = 0;
    do
    {
      v101 = [v6 objectAtIndex:v99];
      if ([v101 intersectionCount] <= 1)
      {
        if ([v101 intersectionCount] == 1)
        {
          [v101 removeLooseThreadsStartingFrom:0];
          v100 = [v6 indexOfObject:v101];
        }

        [v101 removeFromArray];
        --v100;
      }

      v99 = ++v100;
    }

    while ([v6 count] > v100);
  }

  if ([v5 count])
  {
    v102 = 0;
    do
    {
      v103 = [v5 objectAtIndex:v102];
      [v103 trimToLastIntersections];
      [v103 instantiateVectors];
      ++v102;
    }

    while ([v5 count] > v102);
  }

  if ([v6 count])
  {
    v104 = 0;
    do
    {
      v105 = [v6 objectAtIndex:v104];
      [v105 trimToLastIntersections];
      [v105 instantiateVectors];
      ++v104;
    }

    while ([v6 count] > v104);
  }

  v106 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  while ([v6 count])
  {
    LODWORD(info) = 0;
    v107 = [v6 count];
    v108 = v107;
    if (!v107)
    {
      break;
    }

    v109 = 0;
    while (1)
    {
      v110 = [v6 objectAtIndex:v109];
      if ([v110 hasVectorGoingForward:1 startingAtIndex:&info])
      {
        break;
      }

      if (v108 == ++v109)
      {
        goto LABEL_141;
      }
    }

    v111 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    if ([v110 extractCycleTo:v111 goingForward:1 startingAtIndex:info])
    {
      if ([CPZoneBorder clockwiseWindingNumberOfShapeWithBorders:v111]<= 0)
      {
        v112 = &off_1E6E04288;
      }

      else
      {
        v112 = off_1E6E04280;
      }

      v113 = objc_alloc_init(*v112);
      [v113 setPage:inCopy];
      [v113 setShrinksWithChildren:0];
      [v113 setZoneBorders:v111];
      [v106 addObject:v113];
    }
  }

LABEL_141:
  [v106 sortUsingSelector:sel_compareArea_];
  v114 = [v106 count];
  v115 = v114;
  v116 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v114];
  v181 = v114;
  if (v114)
  {
    v117 = 0;
    v118 = 1;
    do
    {
      v119 = [v106 objectAtIndex:v117++];
      v120 = v118;
      if (v117 >= v115)
      {
LABEL_146:
        [v116 addObject:v119];
      }

      else
      {
        while (1)
        {
          v121 = [v106 objectAtIndex:v120];
          if ([v121 contains:v119])
          {
            break;
          }

          if (v181 == ++v120)
          {
            goto LABEL_146;
          }
        }

        [v121 add:v119];
      }

      ++v118;
    }

    while (v117 != v115);
  }

  v173 = v115;
  v188 = 0;
  v122 = [(CPCharSequence *)self->charactersOnPage length];
  if (v122)
  {
    v123 = v122;
    v124 = 0;
    v125 = 0;
    v168 = v122;
    do
    {
      while (1)
      {
        v126 = [(CPCharSequence *)self->charactersOnPage charAtIndex:v124];
        findZone(&v126->var0.var0.origin.x, v116, &v188);
        parent = v188;
        if (v188)
        {
          break;
        }

LABEL_154:
        v188 = 0;
        if (!v125)
        {
          v125 = objc_alloc_init(CPZone);
          [(CPObject *)v125 setPage:inCopy];
          [(CPZone *)v125 setIsStraddleZone:1];
          [(CPChunk *)v125 setShrinksWithChildren:0];
        }

        [(CPZone *)v125 addPDFChar:v126];
        v124 = (v124 + 1);
        if (v124 >= v123)
        {
          goto LABEL_167;
        }
      }

      while (1)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        parent = [parent parent];
        if (!parent)
        {
          goto LABEL_154;
        }
      }

      v175 = v125;
      info = parent;
      v187 = v124;
      v128 = [(CPCharSequence *)self->charactersOnPage mapWithIndex:continueZone from:(v124 + 1) length:v123 - v124 - 1 passing:&info];
      v129 = v128;
      if (v128)
      {
        v130 = v123 - v124;
      }

      else
      {
        v130 = (v187 - v124);
      }

      charactersInZone = [parent charactersInZone];
      if (charactersInZone)
      {
        v132 = charactersInZone;
        v171 = [charactersInZone length];
        [(CPCharSequence *)self->charactersOnPage copyToSubsequence:v132 from:v124 length:v130];
        [parent updatedCharSequenceFrom:v171 length:v130];
      }

      else
      {
        v133 = [(CPCharSequence *)self->charactersOnPage newSubsequenceFrom:v124 length:v130];
        [parent setCharactersInZone:v133];
      }

      v188 = info;
      v124 = v187;
      v125 = v175;
      v123 = v168;
    }

    while (!v129);
  }

  else
  {
    v125 = 0;
  }

LABEL_167:
  v176 = v125;
  v134 = [v178 count];
  if (v134 >= 1)
  {
    v135 = v134 & 0x7FFFFFFF;
    do
    {
      v136 = [v178 objectAtIndex:v135 - 1];
      if ([v106 count])
      {
        v137 = 0;
        do
        {
          v138 = [v106 objectAtIndex:v137];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([v138 hasNeighborShape:v136])
            {
              [v138 swollenZoneBounds];
              v140 = v139;
              v142 = v141;
              v144 = v143;
              v146 = v145;
              [v136 bounds];
              v151 = v150;
              if (v150 != INFINITY)
              {
                v152 = v147;
                if (v147 != INFINITY)
                {
                  v153 = v148;
                  v154 = v149;
                  v200.origin.x = v140;
                  v200.origin.y = v142;
                  v200.size.width = v144;
                  v200.size.height = v146;
                  if (CGRectContainsRect(v200, *&v151))
                  {
                    [v138 add:v136];
                  }
                }
              }
            }
          }

          ++v137;
        }

        while ([v106 count] > v137);
      }
    }

    while (v135-- >= 2);
  }

  newTakeChildren = [inCopy newTakeChildren];
  v157 = v176;
  if (v181)
  {
    v158 = 0;
    do
    {
      v159 = [v106 objectAtIndex:v158];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v159 addContentFrom:newTakeChildren];
      }

      ++v158;
    }

    while (v173 != v158);
  }

  if (v176)
  {
    [(CPZoneMaker *)self addObjectsToStraddler:v176 from:newTakeChildren];
    v160 = v177;
    v161 = inCopy;
  }

  else
  {
    v157 = [(CPZoneMaker *)self newZoneForStraddlersFrom:newTakeChildren];
    v160 = v177;
    v161 = inCopy;
    if (!v157)
    {
      goto LABEL_189;
    }
  }

  [v116 addObject:v157];

LABEL_189:
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v162 = [v116 countByEnumeratingWithState:&v182 objects:v189 count:16];
  if (v162)
  {
    v163 = v162;
    v164 = *v183;
    do
    {
      for (k = 0; k != v163; ++k)
      {
        if (*v183 != v164)
        {
          objc_enumerationMutation(v116);
        }

        [(CPZoneMaker *)self splitByRotatation:*(*(&v182 + 1) + 8 * k) inPage:v161];
      }

      v163 = [v116 countByEnumeratingWithState:&v182 objects:v189 count:16];
    }

    while (v163);
  }

  [v161 addChildren:newTakeChildren];
  [v161 addChildren:v116];
}

- (void)addZonesWithBoundaryIn:(id)in withBorder:(id)border
{
  v6 = [in newTakeChildrenAmong:{objc_msgSend(border, "graphicObjects")}];
  v7 = [CPCompoundGraphic alloc];
  [border bounds];
  v8 = [(CPCompoundGraphic *)v7 initWithGraphicObjects:v6 withRenderedBounds:?];

  [(CPObject *)v8 recomputeZOrder];
  [in add:v8];

  [border removeFromArray];
}

- (void)mergeQualifyingRectanglesIn:(id)in
{
  v4 = [in count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [in childAtIndex:v6];
      if (canBeMerged(v7, v8))
      {
        fillColor = [v7 fillColor];
        if (fillColor)
        {
          v10 = fillColor;
          [v7 bounds];
          v15 = (v6 + 1);
          if (v15 < v5)
          {
            v16 = v11;
            v17 = v12;
            v18 = fmax(v13, v14);
            v19 = v18 * 0.00000011920929 + 1.17549435e-38 + v18 * 0.00000011920929 + 1.17549435e-38;
            v57 = v12 + v14 + v19;
            v58 = v14;
            v59 = v13;
            v56 = v16 + v13 + v19;
            while (1)
            {
              v20 = [in childAtIndex:{v15, *&v56}];
              if (canBeMerged(v20, v21))
              {
                fillColor2 = [v20 fillColor];
                if (fillColor2)
                {
                  if (CGColorEqualToColor(v10, fillColor2))
                  {
                    [v20 bounds];
                    v27 = v26;
                    v29 = vabdd_f64(v16, v26) < v19;
                    v28 = vabdd_f64(v59, v24);
                    v29 = v29 && v28 < v19;
                    v30 = !v29 || v17 > v19 + v23 + v25;
                    if (!v30 && v23 <= v57)
                    {
                      break;
                    }

                    v32 = v23;
                    v33 = v24;
                    v34 = v25;
                    v35 = vabdd_f64(v58, v25);
                    v36 = vabdd_f64(v17, v23) < v19 && v35 < v19;
                    v37 = !v36 || v16 > v19 + v27 + v24;
                    if (!v37 && v27 <= v56)
                    {
                      break;
                    }

                    v60.origin.x = v16;
                    v60.origin.y = v17;
                    v60.size.height = v58;
                    v60.size.width = v59;
                    v61 = CGRectInset(v60, -v19, -v19);
                    v67.origin.x = v27;
                    v67.origin.y = v32;
                    v67.size.width = v33;
                    v67.size.height = v34;
                    if (CGRectContainsRect(v61, v67))
                    {
                      break;
                    }

                    v62.origin.x = v27;
                    v62.origin.y = v32;
                    v62.size.width = v33;
                    v62.size.height = v34;
                    v63 = CGRectInset(v62, -v19, -v19);
                    v68.origin.x = v16;
                    v68.origin.y = v17;
                    v68.size.height = v58;
                    v68.size.width = v59;
                    if (CGRectContainsRect(v63, v68))
                    {
                      break;
                    }
                  }
                }
              }

              v15 = (v15 + 1);
              if (v5 == v15)
              {
                goto LABEL_39;
              }
            }

            [v7 bounds];
            v40 = v39;
            v42 = v41;
            v44 = v43;
            v46 = v45;
            [v20 bounds];
            v69.origin.x = v47;
            v69.origin.y = v48;
            v69.size.width = v49;
            v69.size.height = v50;
            v64.origin.x = v40;
            v64.origin.y = v42;
            v64.size.width = v44;
            v64.size.height = v46;
            v65 = CGRectUnion(v64, v69);
            x = v65.origin.x;
            y = v65.origin.y;
            width = v65.size.width;
            height = v65.size.height;
            Mutable = CGPathCreateMutable();
            v66.origin.x = x;
            v66.origin.y = y;
            v66.size.width = width;
            v66.size.height = height;
            CGPathAddRect(Mutable, 0, v66);
            [v7 setPath:Mutable];
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            [v20 remove];
            --v5;
            LODWORD(v6) = v6 - 1;
          }
        }
      }

LABEL_39:
      v6 = (v6 + 1);
    }

    while (v6 < v5);
  }
}

- (unsigned)categorizeGraphicsIn:(id)in
{
  v4 = [in count];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = [in childAtIndex:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v8 isNarrow] && objc_msgSend(v8, "isVisible"))
      {
        [v8 setZoneGraphicType:1];
        ++v6;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 canBeContainer] && objc_msgSend(v8, "isVisible"))
        {
          if ([v8 isUprightRectangle])
          {
            [v8 setZoneGraphicType:2];
            v6 += 4;
          }

          else
          {
            path = [v8 path];
            if (path)
            {
              v10 = path;
              if (!CGPathIsEmpty(path))
              {
                v15 = 256;
                v12 = 0x3FF0000000000000;
                v13 = 0u;
                v14 = 0u;
                CGPathApply(v10, &v12, checkRectilinear);
                if (BYTE1(v15) == 1 && (v15 & 1) != 0)
                {
                  [v8 setZoneGraphicType:3];
                  LODWORD(v12) = 0;
                  CGPathApply(v10, &v12, countElements);
                  v6 += v12;
                }
              }
            }
          }
        }
      }
    }

    v7 = (v7 + 1);
  }

  while (v5 != v7);
  return v6;
}

- (void)makeZonesIn:(id)in
{
  pDFContext = [in PDFContext];
  if (pDFContext)
  {
    v6 = pDFContext;
    v7 = *(pDFContext + 2064);
    if (v7)
    {
      v8 = -1431655765 * ((*(pDFContext + 2072) - v7) >> 6);

      v9 = [[CPCharSequence alloc] initWithSizeFor:v8];
      self->charactersOnPage = v9;
      [(CPCharSequence *)v9 addChars:*(v6 + 2064) length:v8];
      [CPObjectUtility complexityOfPage:in];
      v11 = v10;
      [in setComplexity:?];
      v12 = v11;
      if (v11 <= 0.8)
      {
        if ([(CPZoneMaker *)self categorizeGraphicsIn:in, v12]> 0x7D0)
        {
          v17 = objc_alloc_init(CPZone);
          [(CPObject *)v17 setPage:in];
          [(CPChunk *)v17 setShrinksWithChildren:0];
          [(CPZone *)v17 setIsStraddleZone:1];
          [(CPChunk *)v17 addChildrenOf:in];
          [(CPZone *)v17 setCharactersInZone:self->charactersOnPage];
          [in add:v17];
        }

        else
        {
          [(CPZoneMaker *)self mergeQualifyingRectanglesIn:in];
          [(CPZoneMaker *)self makeZonesWithBoundaryIn:in];
        }

        [CPCompoundGraphicMaker makeCompoundGraphicsInZonesOf:in];
      }

      else
      {
        newTakeChildren = [in newTakeChildren];
        v14 = [CPCompoundGraphic alloc];
        [in pageCropBox];
        v15 = [(CPCompoundGraphic *)v14 initWithGraphicObjects:newTakeChildren withRenderedBounds:?];

        [in pageCropBox];
        [(CPChunk *)v15 setBounds:?];
        v16 = objc_alloc_init(CPZone);
        [(CPObject *)v16 setPage:in];
        [(CPChunk *)v16 setShrinksWithChildren:0];
        [(CPZone *)v16 setIsStraddleZone:1];
        [(CPChunk *)v16 add:v15];

        [(CPZone *)v16 setCharactersInZone:self->charactersOnPage];
        [in add:v16];
      }

      self->charactersOnPage = 0;
      v18 = objc_alloc_init(CPBody);
      [(CPChunk *)v18 setShrinksWithChildren:0];
      [(CPChunk *)v18 addChildrenOf:in];
      [in add:v18];
      [in setHasZones:1];
      [in pageCropBox];
      [(CPChunk *)v18 setBounds:?];
    }
  }
}

- (BOOL)overlap:(id)overlap with:(id)with
{
  [overlap top];
  v7 = v6;
  [overlap bottom];
  v9 = v8;
  [with top];
  v11 = v10;
  [with bottom];
  return v11 >= v9 && v7 >= v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPZoneMaker;
  [(CPZoneMaker *)&v3 dealloc];
}

@end
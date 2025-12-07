@interface AKRoundedPath
+ (id)pathWithEllipseInRect:(CGRect)rect;
+ (id)pathWithRect:(CGRect)rect;
+ (id)pathWithRoundedRect:(CGRect)rect cornerRadius:(double)radius;
- (AKRoundedPath)initWithPoints:(CGPoint *)points count:(int64_t)count;
- (AKRoundedPath)initWithRect:(CGRect)rect cornerRadii:(id)radii smoothPillShapes:(BOOL)shapes;
- (CGRect)boundingRect;
- (void)addContinuousCornerToPath:(CGPath *)path trueCorner:(CGPoint)corner cornerRadius:(CGSize)radius corners:(unint64_t)corners portion:(unint64_t)portion clockwise:(BOOL)clockwise fullRadius:(BOOL)fullRadius;
- (void)addLineToPointX:(double)x y:(double)y;
@end

@implementation AKRoundedPath

+ (id)pathWithRect:(CGRect)rect
{
  v16[8] = *MEMORY[0x277D85DE8];
  rect = rect;
  selfCopy = self;
  v13[5] = a2;
  v13[4] = COERCE_ID(CGRectGetMinX(rect));
  v13[3] = COERCE_ID(CGRectGetMinY(rect));
  v13[2] = COERCE_ID(CGRectGetMaxX(rect));
  v13[1] = COERCE_ID(CGRectGetMaxY(rect));
  CGPointMake();
  v16[0] = v3;
  v16[1] = v4;
  CGPointMake();
  v16[2] = v5;
  v16[3] = v6;
  CGPointMake();
  v16[4] = v7;
  v16[5] = v8;
  CGPointMake();
  v16[6] = v9;
  v16[7] = v10;
  v13[0] = [[selfCopy alloc] initWithPoints:v16 count:4];
  [v13[0] closeSubpath];
  v12 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);

  return v12;
}

+ (id)pathWithEllipseInRect:(CGRect)rect
{
  v3 = objc_alloc_init(self);

  return v3;
}

- (AKRoundedPath)initWithPoints:(CGPoint *)points count:(int64_t)count
{
  v13 = a2;
  pointsCopy = points;
  countCopy = count;
  v14 = 0;
  v10.receiver = self;
  v10.super_class = AKRoundedPath;
  v8 = [(AKRoundedPath *)&v10 init];
  v14 = v8;
  objc_storeStrong(&v14, v8);
  if (v8)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    points = v14->_points;
    v14->_points = v4;
    MEMORY[0x277D82BD8](points);
    for (i = 0; i < countCopy; ++i)
    {
      [(AKRoundedPath *)v14 addLineToPointX:pointsCopy[i].x y:pointsCopy[i].y];
    }
  }

  v7 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v14, 0);
  return v7;
}

- (void)addLineToPointX:(double)x y:(double)y
{
  selfCopy = self;
  v5[3] = a2;
  v5[2] = *&x;
  v5[1] = *&y;
  v5[0] = [AKCurvePoint pointWithX:x y:y];
  points = [(AKRoundedPath *)selfCopy points];
  [(NSMutableArray *)points addObject:v5[0]];
  MEMORY[0x277D82BD8](points);
  objc_storeStrong(v5, 0);
}

- (CGRect)boundingRect
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v26 = a2;
  v25 = 1.79769313e308;
  v24 = 1.79769313e308;
  v23 = 0.0;
  v22 = 0.0;
  memset(__b, 0, sizeof(__b));
  obj = [(AKRoundedPath *)selfCopy points];
  v19 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v28 count:16];
  if (v19)
  {
    v15 = *__b[2];
    v16 = 0;
    v17 = v19;
    while (1)
    {
      v14 = v16;
      if (*__b[2] != v15)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(__b[1] + 8 * v16);
      [v21 x];
      if (v2 < v25)
      {
        [v21 x];
        v25 = v3;
      }

      [v21 x];
      if (v4 > v23)
      {
        [v21 x];
        v23 = v5;
      }

      [v21 y];
      if (v6 < v24)
      {
        [v21 y];
        v24 = v7;
      }

      [v21 y];
      if (v8 > v22)
      {
        [v21 y];
        v22 = v9;
      }

      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  CGRectMake();
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

+ (id)pathWithRoundedRect:(CGRect)rect cornerRadius:(double)radius
{
  v11[4] = *MEMORY[0x277D85DE8];
  rectCopy = rect;
  selfCopy = self;
  v8[4] = a2;
  v8[3] = *&radius;
  v8[1] = *&radius;
  v8[2] = *&radius;
  v8[0] = [MEMORY[0x277CCAE60] valueWithSize:{radius, radius}];
  v5 = [selfCopy alloc];
  v11[0] = v8[0];
  v11[1] = v8[0];
  v11[2] = v8[0];
  v11[3] = v8[0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v7 = [v5 initWithRect:rectCopy.origin.x cornerRadii:rectCopy.origin.y smoothPillShapes:{rectCopy.size.width, rectCopy.size.height}];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(v8, 0);

  return v7;
}

- (AKRoundedPath)initWithRect:(CGRect)rect cornerRadii:(id)radii smoothPillShapes:(BOOL)shapes
{
  rectCopy = rect;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, radii);
  shapesCopy = shapes;
  Mutable = CGPathCreateMutable();
  v45 = [location[0] objectAtIndex:?];
  [v45 sizeValue];
  v92 = v5;
  v93 = v6;
  v44 = [location[0] objectAtIndex:0];
  [v44 sizeValue];
  v90 = v7;
  v91 = v8;
  CGSizeMake();
  v94 = v9;
  v95 = v10;
  MEMORY[0x277D82BD8](v44);
  *&v11 = MEMORY[0x277D82BD8](v45).n128_u64[0];
  v47 = [location[0] objectAtIndex:v11];
  [v47 sizeValue];
  v86 = v12;
  v87 = v13;
  v46 = [location[0] objectAtIndex:1];
  [v46 sizeValue];
  v84 = v14;
  v85 = v15;
  CGSizeMake();
  v88 = v16;
  v89 = v17;
  MEMORY[0x277D82BD8](v46);
  *&v18 = MEMORY[0x277D82BD8](v47).n128_u64[0];
  v49 = [location[0] objectAtIndex:v18];
  [v49 sizeValue];
  v80 = v19;
  v81 = v20;
  v48 = [location[0] objectAtIndex:3];
  [v48 sizeValue];
  v78 = v21;
  v79 = v22;
  CGSizeMake();
  v82 = v23;
  v83 = v24;
  MEMORY[0x277D82BD8](v48);
  *&v25 = MEMORY[0x277D82BD8](v49).n128_u64[0];
  v51 = [location[0] objectAtIndex:v25];
  [v51 sizeValue];
  v74 = v26;
  v75 = v27;
  v50 = [location[0] objectAtIndex:2];
  [v50 sizeValue];
  v72 = v28;
  v73 = v29;
  CGSizeMake();
  v76 = v30;
  v77 = v31;
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  v71 = 3;
  v70 = 3;
  v69 = 3;
  v68 = 3;
  v67 = 0;
  v66 = 0;
  if (v94 + v88 >= rectCopy.size.width)
  {
    v65 = rectCopy.size.width * 0.5;
    v94 = rectCopy.size.width * 0.5;
    v88 = rectCopy.size.width * 0.5;
    v71 &= 1u;
    v70 &= 2u;
    v67 = 1;
  }

  if (v76 + v82 >= rectCopy.size.width)
  {
    v64 = rectCopy.size.width * 0.5;
    v76 = rectCopy.size.width * 0.5;
    v82 = rectCopy.size.width * 0.5;
    v68 &= 2u;
    v69 &= 1u;
    v67 = 1;
  }

  if (v95 + v77 >= rectCopy.size.height)
  {
    v63 = rectCopy.size.height * 0.5;
    v95 = rectCopy.size.height * 0.5;
    v77 = rectCopy.size.height * 0.5;
    v71 &= 2u;
    v68 &= 1u;
    v66 = 1;
  }

  if (v89 + v83 >= rectCopy.size.height)
  {
    v62 = rectCopy.size.height * 0.5;
    v89 = rectCopy.size.height * 0.5;
    v83 = rectCopy.size.height * 0.5;
    v70 &= 1u;
    v69 &= 2u;
    v66 = 1;
  }

  v42 = 0;
  if (!v71)
  {
    v42 = 0;
    if (!v70)
    {
      v42 = 0;
      if (!v69)
      {
        v42 = v68 == 0;
      }
    }
  }

  v61 = v42;
  if (v42 || !shapesCopy)
  {
    v67 = 0;
    v66 = 0;
  }

  CGRectGetMinX(rectCopy);
  CGRectGetMinY(rectCopy);
  CGPointMake();
  v59 = v32;
  y = v33;
  CGRectGetMaxX(rectCopy);
  CGRectGetMinY(rectCopy);
  CGPointMake();
  v57 = v34;
  v58 = v35;
  CGRectGetMinX(rectCopy);
  CGRectGetMaxY(rectCopy);
  CGPointMake();
  v55 = v36;
  v56 = v37;
  CGRectGetMaxX(rectCopy);
  CGRectGetMaxY(rectCopy);
  CGPointMake();
  x = v38;
  v54 = v39;
  if (v67)
  {
    v59 = v59 + v94 * 0.05;
    v57 = v57 - v88 * 0.05;
    v55 = v55 + v76 * 0.05;
    x = x - v82 * 0.05;
  }

  else if (v66)
  {
    y = y + v95 * 0.05;
    v58 = v58 + v89 * 0.05;
    v56 = v56 - v77 * 0.05;
    v54 = v54 - v83 * 0.05;
  }

  CGPathMoveToPoint(Mutable, 0, v59 + v94, y);
  CGPathAddLineToPoint(Mutable, 0, v57 - v88, v58);
  if (!__CGSizeEqualToSize(v88, v89, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [selfCopy addContinuousCornerToPath:Mutable trueCorner:2 cornerRadius:v70 corners:0 portion:v61 clockwise:v57 fullRadius:{v58, v88, v89}];
  }

  CGPathAddLineToPoint(Mutable, 0, x, v54 - v83);
  if (!__CGSizeEqualToSize(v82, v83, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [selfCopy addContinuousCornerToPath:Mutable trueCorner:8 cornerRadius:v69 corners:0 portion:v61 clockwise:x fullRadius:{v54, v82, v83}];
  }

  CGPathAddLineToPoint(Mutable, 0, v55 + v76, v56);
  if (!__CGSizeEqualToSize(v76, v77, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [selfCopy addContinuousCornerToPath:Mutable trueCorner:4 cornerRadius:v68 corners:0 portion:v61 clockwise:v55 fullRadius:{v56, v76, v77}];
  }

  CGPathAddLineToPoint(Mutable, 0, v59, y + v95);
  if (!__CGSizeEqualToSize(v94, v95, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [selfCopy addContinuousCornerToPath:Mutable trueCorner:1 cornerRadius:v71 corners:0 portion:v61 clockwise:v59 fullRadius:{y, v94, v95}];
  }

  CGPathAddLineToPoint(Mutable, 0, v59 + v94, y);
  v52 = objc_alloc_init(AKRoundedPath);
  [(AKRoundedPath *)v52 setCGPath:Mutable];
  CGPathRelease(Mutable);
  v41 = MEMORY[0x277D82BE0](v52);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v41;
}

- (void)addContinuousCornerToPath:(CGPath *)path trueCorner:(CGPoint)corner cornerRadius:(CGSize)radius corners:(unint64_t)corners portion:(unint64_t)portion clockwise:(BOOL)clockwise fullRadius:(BOOL)fullRadius
{
  cornerCopy = corner;
  radiusCopy = radius;
  selfCopy = self;
  v116 = a2;
  pathCopy = path;
  cornersCopy = corners;
  portionCopy = portion;
  clockwiseCopy = clockwise;
  fullRadiusCopy = fullRadius;
  v110 = 0.0;
  v109 = 50.0;
  width = radius.width;
  height = radius.height;
  if (radius.width >= radius.height)
  {
    v43 = height;
  }

  else
  {
    v43 = width;
  }

  v105 = v43;
  v108 = v43;
  v104 = v43;
  v103 = 1.0;
  if (!fullRadiusCopy)
  {
    v104 = v104 * 0.95;
    v103 = 0.980263;
  }

  v102 = v104 * (1.0 - v103);
  v101 = 0uLL;
  v101 = *MEMORY[0x277CBF348];
  switch(cornersCopy)
  {
    case 1uLL:
      v110 = 180.0;
      break;
    case 2uLL:
      v110 = 270.0;
      break;
    case 4uLL:
      v110 = 90.0;
      break;
    case 8uLL:
      v110 = 0.0;
      break;
  }

  if (portionCopy)
  {
    if (portionCopy == 1)
    {
      v109 = v109 + 20.0;
      v110 = v110 + 20.0;
      *&v101 = -v102;
    }

    else if (portionCopy == 2)
    {
      v109 = v109 + 20.0;
      *(&v101 + 1) = -v102;
    }

    else
    {
      v110 = v110 + 20.0;
      v104 = v104 / 1.528665;
    }
  }

  else
  {
    v109 = v109 + 40.0;
    *&v101 = -v102;
    *(&v101 + 1) = -v102;
  }

  *&v100 = _interiorPointForCorner(cornersCopy, *&v101);
  *(&v100 + 1) = v9;
  v101 = v100;
  v99 = 0.33 * v104 * 0.666666667;
  v98 = sqrtf(1.1089);
  v97 = v98 * v99;
  v96 = 0.33 * v99 / v98;
  v95 = v96 + v104 / v98;
  v94 = v95 * 0.67;
  v93 = v95 * 0.67 + v97 + v97 + v97 + v97;
  v92 = v95 * 0.67 + v97 + v97;
  v91 = v95 * 0.67 + v98 * v99;
  v90 = v95 * 0.67 + v96 * 0.33;
  v89 = v96;
  CGPointMake();
  v85 = v10;
  v86 = v11;
  v87 = _interiorPointForCorner(cornersCopy, v10);
  v88 = v12;
  CGPointMake();
  v81 = v13;
  v82 = v14;
  v83 = _interiorPointForCorner(cornersCopy, v13);
  v84 = v15;
  CGPointMake();
  v77 = v16;
  v78 = v17;
  v79 = _interiorPointForCorner(cornersCopy, v16);
  v80 = v18;
  CGPointMake();
  v73 = v19;
  v74 = v20;
  x = _interiorPointForCorner(cornersCopy, v19);
  y = v21;
  CGPointMake();
  v69 = v22;
  v70 = v23;
  cp2x = _interiorPointForCorner(cornersCopy, v22);
  cp2y = v24;
  CGPointMake();
  v65 = v25;
  v66 = v26;
  cp1x = _interiorPointForCorner(cornersCopy, v25);
  cp1y = v27;
  CGPointMake();
  v61 = v28;
  v62 = v29;
  v63 = _interiorPointForCorner(cornersCopy, v28);
  v64 = v30;
  CGPointMake();
  v57 = v31;
  v58 = v32;
  v59 = _interiorPointForCorner(cornersCopy, v31);
  v60 = v33;
  CGPointMake();
  v53 = v34;
  v54 = v35;
  v55 = _interiorPointForCorner(cornersCopy, v34);
  v56 = v36;
  CGPointMake();
  v49 = v37;
  v50 = v38;
  v51 = _interiorPointForCorner(cornersCopy, v37);
  v52 = v39;
  CGPointMake();
  v45 = v40;
  v46 = v41;
  v47 = _interiorPointForCorner(cornersCopy, v40);
  v48 = v42;
  memset(&__b, 0, sizeof(__b));
  CGAffineTransformMakeTranslation(&__b, *&v101, *(&v101 + 1));
  if (clockwiseCopy)
  {
    if (portionCopy)
    {
      CGPathAddCurveToPoint(pathCopy, &__b, cp1x, cp1y, cp2x, cp2y, x, y);
    }

    else
    {
      CGPathAddCurveToPoint(pathCopy, 0, v47, v48, v47, v48, v47, v48);
    }

    CGPathAddArc(pathCopy, &__b, v55, v56, v104 * v103, (v110 + v109) * 0.0174532925, v110 * 0.0174532925, 1);
    if ((portionCopy & 2) != 0)
    {
      CGPathAddCurveToPoint(pathCopy, &__b, v83, v84, v87, v88, v59, v60);
    }

    else
    {
      CGPathAddCurveToPoint(pathCopy, 0, v51, v52, v51, v52, v51, v52);
    }
  }

  else
  {
    if (portionCopy)
    {
      CGPathAddCurveToPoint(pathCopy, &__b, v87, v88, v83, v84, v79, v80);
    }

    else
    {
      CGPathAddCurveToPoint(pathCopy, 0, v51, v52, v51, v52, v51, v52);
    }

    CGPathAddArc(pathCopy, &__b, v55, v56, v104 * v103, v110 * 0.0174532925, (v110 + v109) * 0.0174532925, 0);
    if ((portionCopy & 2) != 0)
    {
      CGPathAddCurveToPoint(pathCopy, &__b, cp2x, cp2y, cp1x, cp1y, v63, v64);
    }

    else
    {
      CGPathAddCurveToPoint(pathCopy, 0, v47, v48, v47, v48, v47, v48);
    }
  }
}

@end
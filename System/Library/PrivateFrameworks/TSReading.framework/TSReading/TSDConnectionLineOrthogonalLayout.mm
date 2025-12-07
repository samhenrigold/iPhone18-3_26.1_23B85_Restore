@interface TSDConnectionLineOrthogonalLayout
- (CGPoint)axisSnapPoint:(CGPoint)result toXs:()vector<double toYs:(std:()vector<double :(std:(double)std :allocator<double>> *)a5 allocator<double>> *)a4 withThreshold:;
- (CGPoint)controlPointForPointA:(CGPoint)a pointB:(CGPoint)b andOriginalA:(CGPoint)originalA originalB:(CGPoint)originalB;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGRect)orthoRectOfLayout:(id)layout outset:(double)outset;
- (id)createConnectedPathFrom:(id)from to:(id)to withControlPoints:(CGPoint)points[3];
- (void)addEndpointSnapsToXs:(void *)xs andYs:(void *)ys;
@end

@implementation TSDConnectionLineOrthogonalLayout

- (CGRect)orthoRectOfLayout:(id)layout outset:(double)outset
{
  [layout centerForConnecting];
  v8 = v7;
  v10 = v9;
  [layout boundsForStandardKnobs];
  v13 = 0;
  if (v11 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  v15 = outset + 10.0 + v14;
  v33 = 1;
  v16 = 0.0;
  v17 = v8;
  v18 = v10;
  v19 = 0.0;
  do
  {
    v20 = +[TSDBezierPath bezierPath];
    [v20 moveToPoint:{v8, v10}];
    v21 = TSDDirectionDelta(v13);
    [v20 relativeLineToPoint:{TSDMultiplyPointScalar(v21, v22, v15)}];
    v23 = [(TSDConnectionLineAbstractLayout *)self clipPath:v20 onLayout:layout outset:0 reversed:&v33 isValid:outset];
    if (v23 && v33 == 1)
    {
      [v23 point];
      v17 = TSDGrowRectToPoint(v17, v18, v16, v19, v24, v25);
      v18 = v26;
      v16 = v27;
      v19 = v28;
    }

    ++v13;
  }

  while (v13 != 4);
  v29 = v17;
  v30 = v18;
  v31 = v16;
  v32 = v19;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (id)createConnectedPathFrom:(id)from to:(id)to withControlPoints:(CGPoint)points[3]
{
  v9 = 0;
  v81 = *MEMORY[0x277D85DE8];
  do
  {
    v10 = TSDMultiplyPointScalar(points[v9 / 2].x, points[v9 / 2].y, 10.0);
    v11 = &v78[v9];
    *v11 = v10;
    *(v11 + 1) = v12;
    v9 += 2;
  }

  while (v9 != 6);
  v76 = 0u;
  v77 = 0u;
  v13 = v78[0];
  TSDIntRectMake(v78[0], v78[1], 0, 0, &v76);
  v74 = 0u;
  v75 = 0u;
  v14 = v79;
  TSDIntRectMake(v79, v80, 0, 0, &v74);
  v65 = v76;
  v66 = v77;
  v15 = TSDIntPointFromCGPoint(v13);
  v17 = v16;
  v67 = v15;
  v68 = v16;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  v56 = v74;
  v57 = v75;
  v18 = TSDIntPointFromCGPoint(v14);
  v20 = v19;
  v58 = v18;
  v59 = v19;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0;
  if (from)
  {
    [(TSDConnectionLineAbstractLayout *)self outsetFrom];
    [(TSDConnectionLineOrthogonalLayout *)self orthoRectOfLayout:from outset:?];
    [from centerForConnecting];
    TSDIntPointFromCGPointWithScale(v25, v26, 10.0);
    v15 = v27;
    v17 = v28;
    v67 = v27;
    v68 = v28;
    v42 = v65;
    v43 = v66;
    TSDExpandShapeRectToIncludePoint(&v42, v27, v28, &v65);
    if (v66 >= 1 && *(&v66 + 1) >= 1)
    {
      *&v69 = 200;
    }
  }

  if (to)
  {
    [(TSDConnectionLineAbstractLayout *)self outsetTo];
    [(TSDConnectionLineOrthogonalLayout *)self orthoRectOfLayout:to outset:?];
    [to centerForConnecting];
    TSDIntPointFromCGPointWithScale(v33, v34, 10.0);
    v18 = v35;
    v20 = v36;
    v58 = v35;
    v59 = v36;
    v42 = v56;
    v43 = v57;
    TSDExpandShapeRectToIncludePoint(&v42, v35, v36, &v56);
    if (v57 >= 1 && *(&v57 + 1) >= 1)
    {
      *&v60 = 200;
    }
  }

  self->super.mVisibleLine = 1;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v42.n128_f64[0] = v15;
  std::vector<double>::push_back[abi:nn200100](&v53, &v42);
  v42.n128_f64[0] = v17;
  std::vector<double>::push_back[abi:nn200100](&v50, &v42);
  v42.n128_f64[0] = v18;
  std::vector<double>::push_back[abi:nn200100](&v53, &v42);
  v42.n128_f64[0] = v20;
  std::vector<double>::push_back[abi:nn200100](&v50, &v42);
  __dst = 0;
  v49 = 0;
  v47 = 0;
  if (v54 != v53)
  {
    std::vector<unsigned long>::__vallocate[abi:nn200100](&v47, (v54 - v53) >> 3);
  }

  __p = 0;
  v45 = 0;
  v46 = 0;
  if (v51 != v50)
  {
    std::vector<unsigned long>::__vallocate[abi:nn200100](&__p, (v51 - v50) >> 3);
  }

  [(TSDConnectionLineOrthogonalLayout *)self axisSnapPoint:&v47 toXs:&__p toYs:v78[2] withThreshold:v78[3], 20.0];
  v38 = v37;
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v47)
  {
    __dst = v47;
    operator delete(v47);
  }

  v39 = TSDIntPointFromCGPoint(v38);
  routePath(&v65, v39, v40, &v56);
}

- (CGPoint)controlPointForPointA:(CGPoint)a pointB:(CGPoint)b andOriginalA:(CGPoint)originalA originalB:(CGPoint)originalB
{
  objc_opt_class();
  if (!self->super.super.mResizePathSource)
  {
    [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  }

  v7 = TSUDynamicCast();
  mResizeInfoGeometry = self->super.super.mResizeInfoGeometry;
  if (mResizeInfoGeometry)
  {
    v15 = 0u;
    v17 = 0u;
    v13 = 0u;
LABEL_6:
    objc_msgSend_transform(mResizeInfoGeometry, v13, v15, v17);
    goto LABEL_7;
  }

  mResizeInfoGeometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];
  v15 = 0u;
  v17 = 0u;
  v13 = 0u;
  if (mResizeInfoGeometry)
  {
    goto LABEL_6;
  }

LABEL_7:
  [v7 getControlKnobPosition:{12, v13, v15, v17}];
  v11 = vaddq_f64(v18, vmlaq_n_f64(vmulq_n_f64(v16, v9), v14, v10));
  v12 = v11.f64[1];
  result.x = v11.f64[0];
  result.y = v12;
  return result;
}

- (CGPoint)axisSnapPoint:(CGPoint)result toXs:()vector<double toYs:(std:()vector<double :(std:(double)std :allocator<double>> *)a5 allocator<double>> *)a4 withThreshold:
{
  begin = a4->__begin_;
  end = a4->__end_;
  if (a4->__begin_ == end)
  {
    v8 = 1.79769313e308;
  }

  else
  {
    v8 = 1.79769313e308;
    do
    {
      v9 = *begin++;
      v10 = result.x - v9;
      v11 = -v8;
      if (v8 >= 0.0)
      {
        v11 = v8;
      }

      v12 = -v10;
      if (v10 >= 0.0)
      {
        v12 = v10;
      }

      if (v11 >= v12)
      {
        v8 = v10;
      }
    }

    while (begin != end);
  }

  v13 = a5->__begin_;
  v14 = a5->__end_;
  if (a5->__begin_ == v14)
  {
    v15 = 1.79769313e308;
  }

  else
  {
    v15 = 1.79769313e308;
    do
    {
      v16 = *v13++;
      v17 = result.y - v16;
      v18 = -v15;
      if (v15 >= 0.0)
      {
        v18 = v15;
      }

      v19 = -v17;
      if (v17 >= 0.0)
      {
        v19 = v17;
      }

      if (v18 >= v19)
      {
        v15 = v17;
      }
    }

    while (v13 != v14);
  }

  v20 = -v8;
  if (v8 >= 0.0)
  {
    v20 = v8;
  }

  v21 = result.x - v8;
  if (v20 < std)
  {
    result.x = v21;
  }

  v22 = -v15;
  if (v15 >= 0.0)
  {
    v22 = v15;
  }

  v23 = result.y - v15;
  if (v22 < std)
  {
    result.y = v23;
  }

  return result;
}

- (void)addEndpointSnapsToXs:(void *)xs andYs:(void *)ys
{
  mConnectedFrom = self->super.mConnectedFrom;
  if (mConnectedFrom && (v8 = [(TSDAbstractLayout *)mConnectedFrom parent], v8 == [(TSDAbstractLayout *)self parent]))
  {
    v9 = self->super.mConnectedFrom;
  }

  else
  {
    v9 = 0;
  }

  mConnectedTo = self->super.mConnectedTo;
  if (mConnectedTo && (v11 = [(TSDAbstractLayout *)mConnectedTo parent], v11 == [(TSDAbstractLayout *)self parent]))
  {
    v12 = self->super.mConnectedTo;
  }

  else
  {
    v12 = 0;
  }

  connectedPathSource = [(TSDConnectionLineAbstractLayout *)self connectedPathSource];
  v14 = connectedPathSource;
  if (v9)
  {
    [(TSDLayout *)v9 centerForConnecting];
    v38.f64[0] = v15;
    v38.f64[1] = v16;
    if (v12)
    {
LABEL_11:
      [(TSDLayout *)v12 centerForConnecting];
      v35.f64[0] = v17;
      v35.f64[1] = v18;
      goto LABEL_20;
    }
  }

  else
  {
    [(TSDConnectionLinePathSource *)connectedPathSource getControlKnobPosition:10];
    v31 = v20;
    v33 = v19;
    pureGeometry = [(TSDLayout *)self pureGeometry];
    if (pureGeometry)
    {
      objc_msgSend_transform(pureGeometry);
      v22 = v35;
      v23 = v36;
      v24 = v37;
    }

    else
    {
      v24 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
    }

    v38 = vaddq_f64(v24, vmlaq_n_f64(vmulq_n_f64(v23, v31), v22, v33));
    if (v12)
    {
      goto LABEL_11;
    }
  }

  [(TSDConnectionLinePathSource *)v14 getControlKnobPosition:11];
  v32 = v26;
  v34 = v25;
  pureGeometry2 = [(TSDLayout *)self pureGeometry];
  if (pureGeometry2)
  {
    objc_msgSend_transform(pureGeometry2);
    v28 = v35;
    v29 = v36;
    v30 = v37;
  }

  else
  {
    v30 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
  }

  v35 = vaddq_f64(v30, vmlaq_n_f64(vmulq_n_f64(v29, v32), v28, v34));
LABEL_20:
  std::vector<double>::push_back[abi:nn200100](xs, &v38);
  std::vector<double>::push_back[abi:nn200100](ys, &v38.f64[1]);
  std::vector<double>::push_back[abi:nn200100](xs, &v35);
  std::vector<double>::push_back[abi:nn200100](ys, &v35.f64[1]);
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  [(TSDConnectionLinePathSource *)[(TSDConnectionLineAbstractLayout *)self connectedPathSource] getControlKnobPosition:position];
  v7 = v6;
  if (position == 12)
  {
    v22 = v5.f64[0];
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    [(TSDConnectionLineOrthogonalLayout *)self addEndpointSnapsToXs:&v38 andYs:&v35];
    memset(&v34, 0, sizeof(v34));
    pureGeometry = [(TSDLayout *)self pureGeometry];
    if (pureGeometry)
    {
      objc_msgSend_transform(pureGeometry);
      b = v34.b;
      a = v34.a;
      d = v34.d;
      c = v34.c;
      ty = v34.ty;
      tx = v34.tx;
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
      ty = 0.0;
      tx = 0.0;
      d = 0.0;
      c = 0.0;
      b = 0.0;
      a = 0.0;
    }

    v31 = 0;
    __dst = 0;
    v33 = 0;
    if (v39 != v38)
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](&v31, (v39 - v38) >> 3);
    }

    __p = 0;
    v29 = 0;
    v30 = 0;
    if (v36 != v35)
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](&__p, (v36 - v35) >> 3);
    }

    [(TSDConnectionLineOrthogonalLayout *)self axisSnapPoint:&v31 toXs:&__p toYs:tx + v7 * c + a * v22 withThreshold:ty + v7 * d + b * v22, 2.0];
    v20 = v16;
    v23 = v15;
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      __dst = v31;
      operator delete(v31);
    }

    v26 = v34;
    CGAffineTransformInvert(&v27, &v26);
    v17 = vmlaq_n_f64(vmulq_n_f64(*&v27.c, v20), *&v27.a, v23);
    v18 = *&v27.tx;
    if (v35)
    {
      v36 = v35;
      v21 = *&v27.tx;
      v24 = v17;
      operator delete(v35);
      v18 = v21;
      v17 = v24;
    }

    v5 = vaddq_f64(v18, v17);
    if (v38)
    {
      v39 = v38;
      v25 = v5;
      operator delete(v38);
      v5 = v25;
    }

    v7 = v5.f64[1];
  }

  v19 = v7;
  result.x = v5.f64[0];
  result.y = v19;
  return result;
}

@end
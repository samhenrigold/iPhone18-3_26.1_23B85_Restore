@interface TSDConnectionLineOrthogonalLayout
- (CGPoint)axisSnapPoint:(CGPoint)result toXs:()vector<double toYs:(std:()vector<double :(std:(double)std :allocator<double>> *)a5 allocator<double>> *)a4 withThreshold:;
- (CGPoint)controlPointForPointA:(CGPoint)a pointB:(CGPoint)b andOriginalA:(CGPoint)originalA originalB:(CGPoint)originalB;
- (CGRect)orthoRectOfLayout:(id)layout outset:(double)outset;
- (id)createConnectedPathFrom:(id)from to:(id)to withControlPoints:(CGPoint)points[3];
@end

@implementation TSDConnectionLineOrthogonalLayout

- (CGRect)orthoRectOfLayout:(id)layout outset:(double)outset
{
  layoutCopy = layout;
  objc_msgSend_centerForConnecting(layoutCopy, v7, v8);
  v10 = v9;
  v12 = v11;
  v47 = 0;
  v48 = &v47;
  v49 = 0x5012000000;
  v50 = sub_2766F66BC;
  v51 = nullsub_1;
  v52 = "";
  TSURectWithOriginAndSize();
  v53 = v13;
  v54 = v14;
  v55 = v15;
  v56 = v16;
  objc_msgSend_boundsForStandardKnobs(layoutCopy, v17, v18);
  if (v19 >= v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 1;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v35 = sub_2766F66CC;
  v36 = &unk_27A6CD128;
  v41 = v10;
  v42 = v12;
  v43 = outset + 10.0 + v21;
  selfCopy = self;
  v22 = layoutCopy;
  v23 = 0;
  outsetCopy = outset;
  v38 = v22;
  v39 = v45;
  v40 = &v47;
  do
  {
    v24 = qword_276825F20[v23];
    v57 = 0;
    v35(v34, v24, &v57);
    if (v57)
    {
      break;
    }
  }

  while (v23++ != 3);
  v26 = v48[6];
  v27 = v48[7];
  v28 = v48[8];
  v29 = v48[9];

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v47, 8);

  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (id)createConnectedPathFrom:(id)from to:(id)to withControlPoints:(CGPoint)points[3]
{
  v85 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  for (i = 0; i != 6; i += 2)
  {
    TSUMultiplyPointScalar();
    v10 = &v82[i];
    *v10 = v11;
    *(v10 + 1) = v12;
  }

  v80 = 0u;
  v81 = 0u;
  v13 = v82[0];
  sub_27677AEFC(v82[0], v82[1], 0, 0, &v80);
  v78 = 0u;
  v79 = 0u;
  v14 = v83;
  sub_27677AEFC(v83, v84, 0, 0, &v78);
  v69 = v80;
  v70 = v81;
  v15 = sub_27677AECC(v13);
  v17 = v16;
  v71 = v15;
  v72 = v16;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0;
  v60 = v78;
  v61 = v79;
  v20 = sub_27677AECC(v14);
  v21 = v18;
  v62 = v20;
  v63 = v18;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  if (fromCopy)
  {
    objc_msgSend_outsetFrom(self, v18, v19);
    objc_msgSend_orthoRectOfLayout_outset_(self, v22, fromCopy);
    v23 = sub_27677AF98(&v69);
    objc_msgSend_centerForConnecting(fromCopy, v24, v25, v23);
    sub_27677AED8(v26, v27, 10.0);
    v15 = v28;
    v17 = v29;
    v71 = v28;
    v72 = v29;
    v46 = v69;
    v47 = v70;
    sub_2766F6800(&v46, v28, v29, &v69);
    if (v70 >= 1 && *(&v70 + 1) >= 1)
    {
      *&v73 = 200;
    }
  }

  if (toCopy)
  {
    objc_msgSend_outsetTo(self, v18, v19);
    objc_msgSend_orthoRectOfLayout_outset_(self, v30, toCopy);
    v31 = sub_27677AF98(&v60);
    objc_msgSend_centerForConnecting(toCopy, v32, v33, v31);
    sub_27677AED8(v34, v35, 10.0);
    v20 = v36;
    v21 = v37;
    v62 = v36;
    v63 = v37;
    v46 = v60;
    v47 = v61;
    sub_2766F6800(&v46, v36, v37, &v60);
    if (v61 >= 1 && *(&v61 + 1) >= 1)
    {
      *&v64 = 200;
    }
  }

  objc_msgSend_i_setVisibleLine_(self, v18, 1);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v46.n128_f64[0] = v15;
  sub_2766F6D98(&v57, &v46);
  v46.n128_f64[0] = v17;
  sub_2766F6D98(&v54, &v46);
  v46.n128_f64[0] = v20;
  sub_2766F6D98(&v57, &v46);
  v46.n128_f64[0] = v21;
  sub_2766F6D98(&v54, &v46);
  v38 = v82[2];
  v39 = v82[3];
  v52 = 0;
  v53 = 0;
  v51 = 0;
  sub_2766F9448(&v51, v57, v58, (v58 - v57) >> 3);
  __p = 0;
  v49 = 0;
  v50 = 0;
  sub_2766F9448(&__p, v54, v55, (v55 - v54) >> 3);
  objc_msgSend_axisSnapPoint_toXs_toYs_withThreshold_(self, v40, &v51, &__p, v38, v39, 20.0);
  v42 = v41;
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  v43 = sub_27677AECC(v42);
  sub_2766F6E78(&v69, v43, v44, &v60);
}

- (CGPoint)controlPointForPointA:(CGPoint)a pointB:(CGPoint)b andOriginalA:(CGPoint)originalA originalB:(CGPoint)originalB
{
  objc_opt_class();
  mResizePathSource = self->super.super.mResizePathSource;
  v11 = mResizePathSource;
  if (!mResizePathSource)
  {
    v6 = objc_msgSend_shapeInfo(self, v8, v9);
    v11 = objc_msgSend_pathSource(v6, v12, v13);
  }

  v16 = TSUDynamicCast();
  if (!mResizePathSource)
  {
  }

  mResizeInfoGeometry = self->super.super.mResizeInfoGeometry;
  if (mResizeInfoGeometry)
  {
    v18 = mResizeInfoGeometry;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    objc_msgSend_transform(v18, v19, v20);
  }

  else
  {
    v22 = objc_msgSend_info(self, v14, v15);
    v18 = objc_msgSend_geometry(v22, v23, v24);

    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    if (v18)
    {
      objc_msgSend_transform(v18, v21, v25);
    }
  }

  objc_msgSend_getControlKnobPosition_(v16, v21, 12);
  v30 = vaddq_f64(v33, vmlaq_n_f64(vmulq_n_f64(v32, v26), v31, v27));

  v29 = v30.f64[1];
  v28 = v30.f64[0];
  result.y = v29;
  result.x = v28;
  return result;
}

- (CGPoint)axisSnapPoint:(CGPoint)result toXs:()vector<double toYs:(std:()vector<double :(std:(double)std :allocator<double>> *)a5 allocator<double>> *)a4 withThreshold:
{
  var0 = a4->var0;
  var1 = a4->var1;
  if (a4->var0 == var1)
  {
    v8 = 1.79769313e308;
  }

  else
  {
    v8 = 1.79769313e308;
    do
    {
      v9 = *var0++;
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

    while (var0 != var1);
  }

  v13 = a5->var0;
  v14 = a5->var1;
  if (a5->var0 == v14)
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

@end
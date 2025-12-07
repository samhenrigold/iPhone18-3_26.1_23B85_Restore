@interface TSCH3DChartPieResizer
+ (float)perspectiveness;
+ (tvec2<float>)adjustLabelWrapSize:(void *)size;
- (tvec2<BOOL>)canImprove;
- (tvec2<float>)squareSize:(const void *)size;
- (tvec2<float>)updateDirectionsFromRequestedSize:(void *)size startingSize:(void *)startingSize;
- (tvec2<float>)updateResizerFromRequestedSize:(void *)size startingSize:(void *)startingSize;
- (tvec3<float>)adjust:(void *)adjust by:(float)by;
- (void)setScale:(void *)scale;
@end

@implementation TSCH3DChartPieResizer

+ (tvec2<float>)adjustLabelWrapSize:(void *)size
{
  v4 = *size;
  if (*size >= *(size + 1))
  {
    v4 = *(size + 1);
  }

  *v3 = v4;
  v3[1] = v4;
  return self;
}

+ (float)perspectiveness
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___TSCH3DChartPieResizer;
  objc_msgSendSuper2(&v4, sel_perspectiveness);
  return v2 + 0.3;
}

- (tvec2<BOOL>)canImprove
{
  v4 = v2;
  v8.receiver = self;
  v8.super_class = TSCH3DChartPieResizer;
  canImprove = [(TSCH3DChartResizer *)&v8 canImprove];
  v6 = v9 == 1 && self->_directions.var0.var0;
  v7 = v10 == 1 && self->_directions.var1.var0;
  *v4 = v6;
  v4[1] = v7;
  return canImprove;
}

- (void)setScale:(void *)scale
{
  v3 = *scale;
  if (*scale <= *(scale + 1))
  {
    v3 = *(scale + 1);
  }

  v5[0] = v3;
  v5[1] = v3;
  v5[2] = *(scale + 2);
  v4.receiver = self;
  v4.super_class = TSCH3DChartPieResizer;
  [(TSCH3DChartResizer *)&v4 setScale:v5];
}

- (tvec3<float>)adjust:(void *)adjust by:(float)by
{
  v5 = *(adjust + 2) * by;
  *v4 = vmul_n_f32(*adjust, by);
  v4[1].f32[0] = v5;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec2<float>)squareSize:(const void *)size
{
  v4 = 4;
  if (self->_directions.var0.var0)
  {
    v4 = 0;
  }

  v5 = *(size + v4);
  *v3 = v5;
  v3[1] = v5;
  return self;
}

- (tvec2<float>)updateDirectionsFromRequestedSize:(void *)size startingSize:(void *)startingSize
{
  v11 = v4;
  if (startingSize)
  {
    startingSizeCopy = startingSize;
    LODWORD(v5) = *(startingSize + 1);
  }

  else
  {
    layout = self->super._layout;
    if (layout)
    {
      startingSizeCopy = __p;
      objc_msgSend_resizingSize(layout, v5, v6, v7);
      LODWORD(v5) = HIDWORD(__p[0]);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v5 = 0.0;
      startingSizeCopy = __p;
      v48 = 0;
    }
  }

  v14 = *startingSizeCopy + 0.5;
  v15 = *&v5 + 0.5;
  LODWORD(v7) = *size;
  v16 = *(size + 1);
  *&v6 = v14 - *size;
  *&v5 = (*&v5 + 0.5) - v16;
  v17 = *&v6 != 0;
  if (v17 && *&v5 != 0)
  {
    v17 = *size < v16;
  }

  self->_directions.var0.var0 = v17;
  self->_directions.var1.var0 = !v17;
  v18 = objc_msgSend_squareSize_(self, a2, v5, v6, v7, size);
  if (byte_280A46430 == 1)
  {
    v19 = objc_opt_class();
    v20 = NSStringFromSelector(a2);
    v21 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec2(%f, %f)", *size, *(size + 1));
    if (v48 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v21, v22, v23, v24, v25, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v21, v22, v23, v24, v25, __p[0]);
    }
    v26 = ;
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    v27 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec2(%f, %f)", v14, v15);
    if (v48 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v27, v28, v29, v30, v31, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v27, v28, v29, v30, v31, __p[0]);
    }
    v32 = ;
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    v33 = MEMORY[0x277CCACA8];
    v34 = "false";
    if (self->_directions.var0.var0)
    {
      v35 = "true";
    }

    else
    {
      v35 = "false";
    }

    if (self->_directions.var1.var0)
    {
      v34 = "true";
    }

    sub_276152FD4(__p, "bvec2(%s, %s)", v35, v34);
    if (v48 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v33, v36, v37, v38, v39, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v33, v36, v37, v38, v39, __p[0]);
    }
    v40 = ;
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    v41 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec2(%f, %f)", *v11, v11[1]);
    if (v48 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v41, v42, v43, v44, v45, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v41, v42, v43, v44, v45, __p[0]);
    }
    v46 = ;
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    NSLog(&cfstr_PRequestCurren.isa, v19, self, v20, v26, v32, v40, v46);
  }

  return v18;
}

- (tvec2<float>)updateResizerFromRequestedSize:(void *)size startingSize:(void *)startingSize
{
  v11.receiver = self;
  v11.super_class = TSCH3DChartPieResizer;
  [(TSCH3DChartResizer *)&v11 updateResizerFromRequestedSize:size startingSize:?];
  return objc_msgSend_updateDirectionsFromRequestedSize_startingSize_(self, v6, v7, v8, v9, v12, startingSize);
}

@end
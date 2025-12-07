@interface PXBezierCurve
- ($1AB5FA073B851C12C2339EC22442E995)positionOnCurveAtFraction:(double)fraction;
- (_OWORD)initWithStartingPoint:(__n128)point controlPoint1:(double)point1 controlPoint2:(float64_t)point2 endPoint:(__n128)endPoint;
@end

@implementation PXBezierCurve

- ($1AB5FA073B851C12C2339EC22442E995)positionOnCurveAtFraction:(double)fraction
{
  v3 = *self->_ctrlP1;
  fractionCopy = fraction;
  v5 = vmlaq_n_f32(*self->_startP, vsubq_f32(v3, *self->_startP), fractionCopy);
  v6 = vmlaq_n_f32(v3, vsubq_f32(*self->_ctrlP2, v3), fractionCopy);
  v7 = vmlaq_n_f32(v5, vsubq_f32(v6, v5), fractionCopy);
  v8 = vmlaq_n_f32(v7, vsubq_f32(vmlaq_n_f32(v6, vsubq_f32(vmlaq_n_f32(v3, vsubq_f32(*self->_endP, v3), fractionCopy), v6), fractionCopy), v7), fractionCopy);
  v9 = v8.f32[0];
  v10 = v8.f32[1];
  v11 = v8.f32[2];
  result.var2 = v11;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (_OWORD)initWithStartingPoint:(__n128)point controlPoint1:(double)point1 controlPoint2:(float64_t)point2 endPoint:(__n128)endPoint
{
  v34.receiver = self;
  v34.super_class = PXBezierCurve;
  result = objc_msgSendSuper2(&v34, sel_init, a11, a12, a13, a14, a15, a16, a2, point.n128_f64[0], point1, point2, endPoint.n128_f64[0], a7, a8, a9);
  if (result)
  {
    v25.f64[0] = a2;
    *&v25.f64[1] = point.n128_u64[0];
    *&v26 = vcvt_f32_f64(v25);
    *v25.f64 = point1;
    *(&v26 + 1) = __PAIR64__(point.n128_u32[3], LODWORD(v25.f64[0]));
    v27.f64[0] = point2;
    *&v27.f64[1] = endPoint.n128_u64[0];
    *&v25.f64[0] = vcvt_f32_f64(v27);
    *v27.f64 = a7;
    *&v25.f64[1] = __PAIR64__(endPoint.n128_u32[3], LODWORD(v27.f64[0]));
    result[1] = v26;
    result[2] = v25;
    *&v24 = vcvt_f32_f64(a17);
    v28 = a18;
    *(&v24 + 2) = v28;
    *&v23 = vcvt_f32_f64(a19);
    v29 = a20;
    *(&v23 + 2) = v29;
    result[3] = v24;
    result[4] = v23;
  }

  return result;
}

@end
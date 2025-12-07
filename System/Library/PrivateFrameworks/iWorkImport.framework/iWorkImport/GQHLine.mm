@interface GQHLine
+ (int)handleLine:(id)line isFloating:(BOOL)floating state:(id)state;
@end

@implementation GQHLine

+ (int)handleLine:(id)line isFloating:(BOOL)floating state:(id)state
{
  floatingCopy = floating;
  geometry = [line geometry];
  [geometry naturalSize];
  v11 = v9;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  if (geometry)
  {
    v31 = v10;
    v33 = v9;
    objc_msgSend_transform(geometry);
    v12 = 0uLL;
    v10 = v31;
    v11 = v33;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
  }

  v16 = vaddq_f64(v13, vmlaq_f64(vmulq_f64(v15, v12), v12, v14));
  v32 = vaddq_f64(v13, vmlaq_n_f64(vmulq_n_f64(v15, v10), v14, v11));
  v34 = vbslq_s8(vcgtq_f64(v32, v16), v16, v32);
  v17 = sub_4F99C(v16.f64[0], v16.f64[1], *v34.i64);
  v19 = v18;
  v20 = sub_4F99C(v32.f64[0], v32.f64[1], *v34.i64);
  v22 = v20;
  v23 = v21;
  if (v17 >= v20)
  {
    v24 = v17;
  }

  else
  {
    v24 = v20;
  }

  if (v19 >= v21)
  {
    v25 = v19;
  }

  else
  {
    v25 = v21;
  }

  v26 = objc_alloc_init(GQDAffineGeometry);
  [(GQDAffineGeometry *)v26 setNaturalSize:v24, v25];
  [(GQDAffineGeometry *)v26 setSize:v24, v25];
  [(GQDAffineGeometry *)v26 setPosition:*&v34];
  xmlStrPrintf(byte_A42B8, 100, "M %f %f L %f %f", v17, v19, v22, v23);
  v27 = [[GQDBezierPath alloc] initWithPathString:byte_A42B8];
  v28 = [[GQDShape alloc] initWithGraphic:line path:v27 geometry:v26];

  v29 = [GQHShape handleShape:v28 isFloating:floatingCopy state:state];
  return v29;
}

@end
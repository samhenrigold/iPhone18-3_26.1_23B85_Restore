@interface TMLRect
+ (void)initializeJSContext:(id)context;
- (CGRect)rect;
- (TMLPoint)maxpoint;
- (TMLPoint)midpoint;
- (TMLPoint)minpoint;
- (TMLPoint)origin;
- (TMLRect)initWithRect:(CGRect)rect;
- (TMLSize)size;
- (id)applyAffineTransform:(id)transform;
- (id)applyScale:(double)scale;
- (id)atOrigin:(id)origin;
- (id)atOriginX:(double)x y:(double)y;
- (id)copyWithZone:(_NSZone *)zone;
- (id)inset:(double)inset :(double)a4;
- (id)integral;
- (id)max:(double)max :(double)a4;
- (id)min:(double)min :(double)a4;
- (id)offset:(double)offset :(double)a4;
- (id)originInset:(double)inset :(double)a4;
- (id)withHeight:(double)height;
- (id)withWidth:(double)width;
@end

@implementation TMLRect

- (TMLRect)initWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8.receiver = self;
  v8.super_class = TMLRect;
  result = [(TMLRect *)&v8 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;

  return [v4 initWithRect:{x, y, width, height}];
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  v5 = [self alloc];
  v6 = [v5 initWithRect:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [contextCopy setObject:v6 forKeyedSubscript:@"CGRectZero"];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_26F19B3C8;
  v14[3] = &unk_279DC5940;
  v14[4] = self;
  v7 = MEMORY[0x27438BB60](v14);
  [contextCopy setObject:v7 forKeyedSubscript:@"rect"];
  [contextCopy setObject:v7 forKeyedSubscript:@"CGRectMake"];

  [contextCopy setObject:&unk_287F2BA70 forKeyedSubscript:@"CGRectEqualToRect"];
  [contextCopy setObject:&unk_287F2BA90 forKeyedSubscript:@"CGRectIntersectsRect"];
  [contextCopy setObject:&unk_287F2BAB0 forKeyedSubscript:@"CGRectContainsRect"];
  [contextCopy setObject:&unk_287F2BAD0 forKeyedSubscript:@"CGRectContainsPoint"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_26F19B6C0;
  v13[3] = &unk_279DC59A0;
  v13[4] = self;
  v8 = MEMORY[0x27438BB60](v13);
  [contextCopy setObject:v8 forKeyedSubscript:@"CGRectIntersection"];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_26F19B79C;
  v12[3] = &unk_279DC59C0;
  v12[4] = self;
  v9 = MEMORY[0x27438BB60](v12);
  [contextCopy setObject:v9 forKeyedSubscript:@"CGRectInset"];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26F19B840;
  v11[3] = &unk_279DC59E0;
  v11[4] = self;
  v10 = MEMORY[0x27438BB60](v11);
  [contextCopy setObject:v10 forKeyedSubscript:@"toRect"];
}

- (TMLPoint)origin
{
  v2 = [[TMLPoint alloc] initWithPoint:self->_rect.origin.x, self->_rect.origin.y];

  return v2;
}

- (TMLSize)size
{
  v2 = [[TMLSize alloc] initWithSize:self->_rect.size.width, self->_rect.size.height];

  return v2;
}

- (id)inset:(double)inset :(double)a4
{
  v7 = objc_alloc(objc_opt_class());
  v11 = CGRectInset(self->_rect, inset, a4);
  v8 = [v7 initWithRect:{v11.origin.x, v11.origin.y, v11.size.width, v11.size.height}];

  return v8;
}

- (id)originInset:(double)inset :(double)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithRect:{self->_rect.origin.x + inset, self->_rect.origin.y + a4, self->_rect.size.width - inset, self->_rect.size.height - a4}];

  return v4;
}

- (id)offset:(double)offset :(double)a4
{
  v7 = objc_alloc(objc_opt_class());
  v11 = CGRectOffset(self->_rect, offset, a4);
  v8 = [v7 initWithRect:{v11.origin.x, v11.origin.y, v11.size.width, v11.size.height}];

  return v8;
}

- (id)withWidth:(double)width
{
  v3 = [objc_alloc(objc_opt_class()) initWithRect:{self->_rect.origin.x, self->_rect.origin.y, width, self->_rect.size.height}];

  return v3;
}

- (id)withHeight:(double)height
{
  v3 = [objc_alloc(objc_opt_class()) initWithRect:{self->_rect.origin.x, self->_rect.origin.y, self->_rect.size.width, height}];

  return v3;
}

- (id)atOriginX:(double)x y:(double)y
{
  v4 = [objc_alloc(objc_opt_class()) initWithRect:{x, y, self->_rect.size.width, self->_rect.size.height}];

  return v4;
}

- (id)atOrigin:(id)origin
{
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  [origin point];
  v7 = [objc_alloc(objc_opt_class()) initWithRect:{v5, v6, width, height}];

  return v7;
}

- (TMLPoint)minpoint
{
  v3 = [TMLPoint alloc];
  [(TMLRect *)self minx];
  v5 = v4;
  [(TMLRect *)self miny];
  v7 = [(TMLPoint *)v3 initWithPoint:v5, v6];

  return v7;
}

- (TMLPoint)midpoint
{
  v3 = [TMLPoint alloc];
  [(TMLRect *)self midx];
  v5 = v4;
  [(TMLRect *)self midy];
  v7 = [(TMLPoint *)v3 initWithPoint:v5, v6];

  return v7;
}

- (TMLPoint)maxpoint
{
  v3 = [TMLPoint alloc];
  [(TMLRect *)self maxx];
  v5 = v4;
  [(TMLRect *)self maxy];
  v7 = [(TMLPoint *)v3 initWithPoint:v5, v6];

  return v7;
}

- (id)applyAffineTransform:(id)transform
{
  transformCopy = transform;
  v5 = objc_alloc(objc_opt_class());
  if (transformCopy)
  {
    objc_msgSend_transform(transformCopy);
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  v10 = CGRectApplyAffineTransform(self->_rect, &v8);
  v6 = [v5 initWithRect:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];

  return v6;
}

- (id)integral
{
  v3 = objc_alloc(objc_opt_class());
  v7 = CGRectIntegral(self->_rect);
  v4 = [v3 initWithRect:{v7.origin.x, v7.origin.y, v7.size.width, v7.size.height}];

  return v4;
}

- (id)min:(double)min :(double)a4
{
  v7 = objc_alloc(objc_opt_class());
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  if (width <= min)
  {
    width = min;
  }

  if (height <= a4)
  {
    height = a4;
  }

  v10 = [v7 initWithRect:{self->_rect.origin.x, self->_rect.origin.y, width, height}];

  return v10;
}

- (id)max:(double)max :(double)a4
{
  v7 = objc_alloc(objc_opt_class());
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  if (width >= max)
  {
    width = max;
  }

  if (height >= a4)
  {
    height = a4;
  }

  v10 = [v7 initWithRect:{self->_rect.origin.x, self->_rect.origin.y, width, height}];

  return v10;
}

- (id)applyScale:(double)scale
{
  v4 = objc_alloc(objc_opt_class());
  if (scale <= 0.0)
  {
    v6 = *MEMORY[0x277CBF3A0];
    v5 = *(MEMORY[0x277CBF3A0] + 16);
  }

  else
  {
    v5 = vmulq_n_f64(self->_rect.size, scale);
    v6 = vmulq_n_f64(self->_rect.origin, scale);
  }

  v7 = [v4 initWithRect:{*&v6, *&v5, *&scale}];

  return v7;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
@interface TMLSize
+ (void)initializeJSContext:(id)context;
- (CGSize)size;
- (TMLSize)initWithSize:(CGSize)size;
- (id)asRect;
- (id)copyWithZone:(_NSZone *)zone;
- (id)extend:(double)extend :(double)a4;
- (id)max:(double)max :(double)a4;
- (id)min:(double)min :(double)a4;
- (id)scale:(double)scale :(double)a4;
@end

@implementation TMLSize

- (TMLSize)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = TMLSize;
  result = [(TMLSize *)&v6 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  width = self->_size.width;
  height = self->_size.height;

  return [v4 initWithSize:{width, height}];
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  v5 = [self alloc];
  v6 = [v5 initWithSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [contextCopy setObject:v6 forKeyedSubscript:@"CGSizeZero"];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_26F1A22D0;
  v8[3] = &unk_279DC5F98;
  v8[4] = self;
  v7 = MEMORY[0x27438BB60](v8);
  [contextCopy setObject:v7 forKeyedSubscript:@"size"];
  [contextCopy setObject:v7 forKeyedSubscript:@"CGSizeMake"];

  [contextCopy setObject:&unk_287F2BB30 forKeyedSubscript:@"CGSizeEqualToSize"];
}

- (id)extend:(double)extend :(double)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithSize:{self->_size.width + extend, self->_size.height + a4}];

  return v4;
}

- (id)scale:(double)scale :(double)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithSize:{self->_size.width * scale, self->_size.height * a4}];

  return v4;
}

- (id)asRect
{
  v2 = [[TMLRect alloc] initWithRect:0.0, 0.0, self->_size.width, self->_size.height];

  return v2;
}

- (id)min:(double)min :(double)a4
{
  v7 = objc_alloc(objc_opt_class());
  width = self->_size.width;
  height = self->_size.height;
  if (width <= min)
  {
    width = min;
  }

  if (height <= a4)
  {
    height = a4;
  }

  v10 = [v7 initWithSize:{width, height}];

  return v10;
}

- (id)max:(double)max :(double)a4
{
  v7 = objc_alloc(objc_opt_class());
  width = self->_size.width;
  height = self->_size.height;
  if (width >= max)
  {
    width = max;
  }

  if (height >= a4)
  {
    height = a4;
  }

  v10 = [v7 initWithSize:{width, height}];

  return v10;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
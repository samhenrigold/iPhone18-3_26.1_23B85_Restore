@interface HMIMutableFloatArray
- (HMIMutableFloatArray)init;
- (HMIMutableFloatArray)initWithData:(id)data;
- (HMIMutableFloatArray)initWithDataTensor:(id)tensor;
- (HMIMutableFloatArray)initWithFloats:(const float *)floats count:(unint64_t)count;
- (HMIMutableFloatArray)initWithValue:(float)value count:(unint64_t)count;
- (float)l2Norm;
- (id)copyWithZone:(_NSZone *)zone;
- (id)floatArrayByAdding:(id)adding;
- (id)floatArrayByScaling:(float)scaling;
- (id)floatArrayBySubtracting:(id)subtracting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)add:(id)add;
- (void)appendArray:(id)array;
- (void)subtract:(id)subtract;
@end

@implementation HMIMutableFloatArray

- (HMIMutableFloatArray)init
{
  v6.receiver = self;
  v6.super_class = HMIMutableFloatArray;
  v2 = [(HMIMutableFloatArray *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

- (HMIMutableFloatArray)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HMIMutableFloatArray;
  v5 = [(HMIMutableFloatArray *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy mutableCopy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (HMIMutableFloatArray)initWithValue:(float)value count:(unint64_t)count
{
  v4 = [(HMIMutableFloatArray *)self init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:?];
    data = v4->_data;
    v4->_data = v5;

    [(HMIMutableFloatArray *)v4 fillWithFloat:?];
  }

  return v4;
}

- (HMIMutableFloatArray)initWithFloats:(const float *)floats count:(unint64_t)count
{
  v4 = [(HMIMutableFloatArray *)self init];
  [HMIMutableFloatArray appendFloats:v4 count:"appendFloats:count:"];
  return v4;
}

- (HMIMutableFloatArray)initWithDataTensor:(id)tensor
{
  tensorCopy = tensor;
  shape = [tensorCopy shape];
  v6 = [shape countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    v9 = 1;
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(shape);
        }

        v9 *= [*(8 * i) unsignedIntegerValue];
      }

      v7 = [shape countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  [tensorCopy dataPointer];
  v11 = [HMIMutableFloatArray initWithFloats:"initWithFloats:count:" count:?];

  return v11;
}

- (void)appendArray:(id)array
{
  data = self->_data;
  data = [array data];
  [(NSMutableData *)data appendData:?];
}

- (void)subtract:(id)subtract
{
  subtractCopy = subtract;
  [subtract floats];
  [(HMIMutableFloatArray *)self floats];
  [(HMIMutableFloatArray *)self mutableFloats];
  [(HMIMutableFloatArray *)self count];

  JUMPOUT(0x2318CBC90);
}

- (void)add:(id)add
{
  addCopy = add;
  [add floats];
  [(HMIMutableFloatArray *)self floats];
  [(HMIMutableFloatArray *)self mutableFloats];
  [(HMIMutableFloatArray *)self count];

  JUMPOUT(0x2318CBC00);
}

- (float)l2Norm
{
  __C = 0.0;
  vDSP_svesq([(HMIMutableFloatArray *)self floats], 1, &__C, [(HMIMutableFloatArray *)self count]);
  return sqrtf(__C);
}

- (id)floatArrayByScaling:(float)scaling
{
  v3 = [(HMIMutableFloatArray *)self copy];
  [v3 scale:?];

  return v3;
}

- (id)floatArrayByAdding:(id)adding
{
  addingCopy = adding;
  v5 = [(HMIMutableFloatArray *)self copy];
  [v5 add:?];

  return v5;
}

- (id)floatArrayBySubtracting:(id)subtracting
{
  subtractingCopy = subtracting;
  v5 = [(HMIMutableFloatArray *)self copy];
  [v5 subtract:?];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [HMIMutableFloatArray alloc];

  return [(HMIMutableFloatArray *)v3 initWithData:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = [HMIMutableFloatArray alloc];

  return [(HMIMutableFloatArray *)v3 initWithData:?];
}

@end
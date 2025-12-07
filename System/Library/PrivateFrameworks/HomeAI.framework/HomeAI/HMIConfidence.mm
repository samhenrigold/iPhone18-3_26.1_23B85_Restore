@interface HMIConfidence
- (BOOL)isEqual:(id)equal;
- (HMIConfidence)initWithCoder:(id)coder;
- (HMIConfidence)initWithValue:(double)value levelThresholds:(id)thresholds;
- (id)shortDescription;
- (int64_t)level;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIConfidence

- (HMIConfidence)initWithValue:(double)value levelThresholds:(id)thresholds
{
  thresholdsCopy = thresholds;
  v11.receiver = self;
  v11.super_class = HMIConfidence;
  v8 = [(HMIConfidence *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_value = value;
    objc_storeStrong(&v8->_levelThresholds, thresholds);
  }

  return v9;
}

- (int64_t)level
{
  [(HMIConfidence *)self value];
  v4 = v3;
  levelThresholds = [(HMIConfidence *)self levelThresholds];
  v6 = [levelThresholds objectAtIndexedSubscript:?];
  [v6 doubleValue];
  v8 = v7;

  if (v4 >= v8)
  {
    return 2;
  }

  [(HMIConfidence *)self value];
  v10 = v9;
  levelThresholds2 = [(HMIConfidence *)self levelThresholds];
  v12 = [levelThresholds2 objectAtIndexedSubscript:?];
  [v12 doubleValue];
  v14 = v10 >= v13;

  return v14;
}

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  value = self->_value;
  level = [(HMIConfidence *)self level];
  v5 = @"Low";
  if (level == 1)
  {
    v5 = @"Medium";
  }

  if (level == 2)
  {
    v6 = @"High";
  }

  else
  {
    v6 = v5;
  }

  return [v2 stringWithFormat:*&value, -[__CFString characterAtIndex:](v6, "characterAtIndex:")];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(HMIConfidence *)self value];
      v7 = v6;
      [(HMIConfidence *)v5 value];
      v9 = v8;
      levelThresholds = [(HMIConfidence *)self levelThresholds];
      levelThresholds2 = [(HMIConfidence *)v5 levelThresholds];

      v12 = HMFEqualObjects();
      if (v7 == v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  [(HMIConfidence *)self value];
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  *v3.i64 = floor(v2 + 0.5);
  v5 = (v2 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v6), v4, v3).i64[0];
  v7 = 2654435761u * *v3.i64;
  v8 = v7 + v5;
  if (v5 <= 0.0)
  {
    v8 = 2654435761u * *v3.i64;
  }

  v9 = v7 - fabs(v5);
  if (v5 < 0.0)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

- (HMIConfidence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_value);
  [coderCopy decodeDoubleForKey:?];

  v6 = MEMORY[0x277CBEB98];
  objc_opt_class();
  objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v8 = [v6 setWithArray:?];
  v9 = NSStringFromSelector(sel_levelThresholds);
  v10 = [coderCopy decodeObjectOfClasses:? forKey:?];

  v11 = [HMIConfidence initWithValue:"initWithValue:levelThresholds:" levelThresholds:?];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(HMIConfidence *)self value];
  v5 = NSStringFromSelector(sel_value);
  [coderCopy encodeDouble:? forKey:?];

  levelThresholds = [(HMIConfidence *)self levelThresholds];
  v6 = NSStringFromSelector(sel_levelThresholds);
  [coderCopy encodeObject:? forKey:?];
}

@end
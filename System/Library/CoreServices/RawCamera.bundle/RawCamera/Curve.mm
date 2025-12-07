@interface Curve
+ (id)curve;
+ (id)curveWith:(id)with of:(id)of;
+ (id)curveWithBlock:(id)block andInverse:(id)inverse;
+ (id)curveWithBlock:(id)block domainMin:(double)min domainMax:(double)max;
+ (id)curveWithCount:(int)count domainMin:(double)min domainMax:(double)max values:(double *)values;
+ (id)curveWithCount:(int)count xvalues:(double *)xvalues yvalues:(double *)yvalues;
+ (id)curveWithGamma:(double)gamma;
+ (id)curveWithInverseOf:(id)of;
- (Curve)init;
- (Curve)initWith:(id)with of:(id)of;
- (Curve)initWithBlock:(id)block andInverse:(id)inverse;
- (Curve)initWithBlock:(id)block domainMin:(double)min domainMax:(double)max;
- (Curve)initWithCount:(int)count domainMin:(double)min domainMax:(double)max values:(double *)values;
- (Curve)initWithCount:(int)count xvalues:(double *)xvalues yvalues:(double *)yvalues;
- (Curve)initWithGamma:(double)gamma;
- (Curve)initWithInverseOf:(id)of;
@end

@implementation Curve

+ (id)curve
{
  v2 = [[Curve alloc] init];

  return v2;
}

- (Curve)init
{
  v4.receiver = self;
  v4.super_class = Curve;
  v2 = [(Curve *)&v4 init];
  [v2 setFunction:&unk_284923A60];
  [v2 setInverse:&unk_284923A80];
  *(v2 + 24) = xmmword_233909AA0;
  *(v2 + 40) = xmmword_233909AA0;
  return v2;
}

+ (id)curveWithGamma:(double)gamma
{
  if (gamma == 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [[Curve alloc] initWithGamma:gamma];
  }

  return v4;
}

- (Curve)initWithGamma:(double)gamma
{
  if (gamma == 0.0)
  {
    selfCopy2 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = Curve;
    self = [(Curve *)&v8 init];
    selfCopy2 = self;
    if (self)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = sub_23384E628;
      v7[3] = &unk_2789EF308;
      *&v7[4] = gamma;
      [(Curve *)self setFunction:v7];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = sub_23384E664;
      v6[3] = &unk_2789EF308;
      *&v6[4] = gamma;
      [(Curve *)selfCopy2 setInverse:v6];
      self = selfCopy2;
      selfCopy2 = self;
    }
  }

  return selfCopy2;
}

+ (id)curveWithInverseOf:(id)of
{
  if (of)
  {
    ofCopy = of;
    v4 = [[Curve alloc] initWithInverseOf:ofCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Curve)initWithInverseOf:(id)of
{
  ofCopy = of;
  if (ofCopy && (v16.receiver = self, v16.super_class = Curve, (self = [(Curve *)&v16 init]) != 0))
  {
    [ofCopy rangeMin];
    self->_domainMin = v5;
    [ofCopy rangeMax];
    self->_domainMax = v6;
    [ofCopy domainMin];
    self->_rangeMin = v7;
    [ofCopy domainMax];
    self->_rangeMax = v8;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23384E878;
    v14[3] = &unk_2789EF330;
    v9 = ofCopy;
    v15 = v9;
    [(Curve *)self setFunction:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23384E8CC;
    v12[3] = &unk_2789EF330;
    v13 = v9;
    [(Curve *)self setInverse:v12];
    self = self;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)curveWith:(id)with of:(id)of
{
  v4 = 0;
  if (with && of)
  {
    ofCopy = of;
    withCopy = with;
    v4 = [[Curve alloc] initWith:withCopy of:ofCopy];
  }

  return v4;
}

- (Curve)initWith:(id)with of:(id)of
{
  withCopy = with;
  ofCopy = of;
  v8 = ofCopy;
  selfCopy = 0;
  if (withCopy && ofCopy)
  {
    v23.receiver = self;
    v23.super_class = Curve;
    self = [(Curve *)&v23 init];
    if (self)
    {
      [v8 domainMin];
      self->_domainMin = v10;
      [v8 domainMax];
      self->_domainMax = v11;
      [withCopy rangeMin];
      self->_rangeMin = v12;
      [withCopy rangeMax];
      self->_rangeMax = v13;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_23384EB50;
      v20[3] = &unk_2789EF358;
      v14 = withCopy;
      v21 = v14;
      v15 = v8;
      v22 = v15;
      [(Curve *)self setFunction:v20];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_23384EBCC;
      v17[3] = &unk_2789EF358;
      v18 = v15;
      v19 = v14;
      [(Curve *)self setInverse:v17];
      self = self;

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

+ (id)curveWithBlock:(id)block andInverse:(id)inverse
{
  v4 = 0;
  if (block && inverse)
  {
    inverseCopy = inverse;
    blockCopy = block;
    v4 = [[Curve alloc] initWithBlock:blockCopy andInverse:inverseCopy];
  }

  return v4;
}

- (Curve)initWithBlock:(id)block andInverse:(id)inverse
{
  blockCopy = block;
  inverseCopy = inverse;
  v8 = inverseCopy;
  selfCopy = 0;
  if (blockCopy && inverseCopy)
  {
    v12.receiver = self;
    v12.super_class = Curve;
    v10 = [(Curve *)&v12 init];
    self = v10;
    if (v10)
    {
      [(Curve *)v10 setFunction:blockCopy];
      [(Curve *)self setInverse:v8];
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

+ (id)curveWithBlock:(id)block domainMin:(double)min domainMax:(double)max
{
  blockCopy = block;
  v9 = 0;
  if (blockCopy)
  {
    if ((*&min & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      if (max > min && (*&max & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v9 = [[Curve alloc] initWithBlock:blockCopy domainMin:min domainMax:max];
      }
    }
  }

  return v9;
}

- (Curve)initWithBlock:(id)block domainMin:(double)min domainMax:(double)max
{
  blockCopy = block;
  selfCopy = 0;
  if (blockCopy && (*&min & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&max & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v15.receiver = self;
    v15.super_class = Curve;
    v12 = [(Curve *)&v15 init];
    self = v12;
    if (v12)
    {
      *(v12 + 3) = min;
      *(v12 + 4) = max;
      *(v12 + 40) = xmmword_233909AA0;
      [v12 setFunction:blockCopy];
      v13 = sub_23384EF3C(blockCopy, min, max);
      [(Curve *)self setInverse:v13];

      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

+ (id)curveWithCount:(int)count domainMin:(double)min domainMax:(double)max values:(double *)values
{
  v7 = (*&min & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || count < 2 || values == 0;
  if (v7 || (max > min ? (v8 = (*&max & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v8 = 1), v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = [[Curve alloc] initWithCount:*&count domainMin:values domainMax:min values:max];
  }

  return v9;
}

- (Curve)initWithCount:(int)count domainMin:(double)min domainMax:(double)max values:(double *)values
{
  selfCopy = self;
  v9 = (*&min & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || count < 2 || values == 0;
  if (v9 || (max > min ? (v11 = (*&max & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v11 = 1), v11 || (v52.receiver = self, v52.super_class = Curve, (selfCopy = [(Curve *)&v52 init]) == 0)))
  {
    v34 = 0;
  }

  else
  {
    v14 = 0;
    v15 = count - 1;
    v16 = values + 1;
    v17 = count - 1;
    v18 = v17;
    do
    {
      v20 = *(v16 - 1);
      v19 = *v16;
      if (*v16 >= v20)
      {
        v21 = 4;
      }

      else
      {
        v21 = 2;
      }

      if (*v16 > v20)
      {
        v21 = 1;
      }

      v14 |= v21;
      ++v16;
      --v18;
    }

    while (v18);
    v22 = 8 * count;
    v23 = [MEMORY[0x277CBEB28] dataWithCapacity:{v22, v19}];
    mutableBytes = [v23 mutableBytes];
    v25 = 0;
    do
    {
      *(mutableBytes + v25) = values[v25 / 8];
      v25 += 8;
    }

    while (v22 != v25);
    selfCopy[3] = min;
    selfCopy[4] = max;
    v27 = *values;
    v26 = values + 1;
    v28 = v27;
    selfCopy[5] = v27;
    selfCopy[6] = v27;
    v29 = v27;
    do
    {
      v30 = *v26;
      if (v29 <= *v26)
      {
        v31 = *v26;
      }

      else
      {
        selfCopy[5] = v30;
        v31 = *v26;
        v29 = v30;
      }

      if (v28 < v31)
      {
        selfCopy[6] = v31;
        v28 = v31;
      }

      ++v26;
      --v17;
    }

    while (v17);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_23384F3BC;
    v47[3] = &unk_2789EF380;
    v32 = v23;
    v48 = v32;
    minCopy = min;
    maxCopy = max;
    v51 = v15;
    [selfCopy setFunction:v47];
    if (v14 == 1)
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_23384F454;
      v42[3] = &unk_2789EF380;
      v43 = v32;
      v46 = v15;
      minCopy2 = min;
      maxCopy2 = max;
      [selfCopy setInverse:v42];
      function = v43;
    }

    else if (v14 == 2)
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_23384F4F4;
      v37[3] = &unk_2789EF380;
      v38 = v32;
      v41 = v15;
      minCopy3 = min;
      maxCopy3 = max;
      [selfCopy setInverse:v37];
      function = v38;
    }

    else
    {
      function = [selfCopy function];
      v36 = sub_23384EF3C(function, min, max);
      [selfCopy setInverse:v36];
    }

    selfCopy = selfCopy;
    v34 = selfCopy;
  }

  return v34;
}

+ (id)curveWithCount:(int)count xvalues:(double *)xvalues yvalues:(double *)yvalues
{
  v5 = [[Curve alloc] initWithCount:*&count xvalues:xvalues yvalues:yvalues];

  return v5;
}

- (Curve)initWithCount:(int)count xvalues:(double *)xvalues yvalues:(double *)yvalues
{
  v6 = 0;
  if (count >= 2 && xvalues && yvalues)
  {
    v8 = *&count;
    v9 = [Curve curveWithCount:"curveWithCount:domainMin:domainMax:values:" domainMin:0.0 domainMax:1.0 values:?];
    v10 = [Curve curveWithInverseOf:v9];
    v11 = [Curve curveWithCount:v8 domainMin:yvalues domainMax:0.0 values:1.0];
    v6 = [Curve curveWith:v10 of:v11];
  }

  return v6;
}

@end
@interface HMITorsoClassification
- (BOOL)isEqual:(id)equal;
- (HMITorsoClassification)initWithCoder:(id)coder;
- (HMITorsoClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD confidence:(double)confidence;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMITorsoClassification

- (HMITorsoClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD confidence:(double)confidence
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = HMITorsoClassification;
  v11 = [(HMITorsoClassification *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceUUID, iD);
    objc_storeStrong(&v12->_personUUID, d);
    v12->_confidence = confidence;
  }

  return v12;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  personUUID = [(HMITorsoClassification *)self personUUID];
  v13 = [v3 initWithName:? value:?];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  sourceUUID = [(HMITorsoClassification *)self sourceUUID];
  v14 = [v5 initWithName:? value:?];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCACA8];
  [(HMITorsoClassification *)self confidence];
  v10 = [v8 stringWithFormat:v9];
  v15 = [v7 initWithName:? value:?];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sourceUUID = [(HMITorsoClassification *)self sourceUUID];
      sourceUUID2 = [(HMITorsoClassification *)v5 sourceUUID];
      v8 = HMFEqualObjects();

      if (v8 && ([(HMITorsoClassification *)self personUUID], v9 = objc_claimAutoreleasedReturnValue(), [(HMITorsoClassification *)v5 personUUID], v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
      {
        [(HMITorsoClassification *)self confidence];
        v13 = v12;
        [(HMITorsoClassification *)v5 confidence];
        v15 = vabdd_f64(v13, v14) < 2.22044605e-16;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (HMITorsoClassification)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  [coderCopy decodeDoubleForKey:?];

  v7 = [HMITorsoClassification initWithPersonUUID:"initWithPersonUUID:sourceUUID:confidence:" sourceUUID:? confidence:?];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sourceUUID = [(HMITorsoClassification *)self sourceUUID];
  [coderCopy encodeObject:? forKey:?];

  personUUID = [(HMITorsoClassification *)self personUUID];
  [coderCopy encodeObject:? forKey:?];

  [(HMITorsoClassification *)self confidence];
  [coderCopy encodeDouble:? forKey:?];
}

@end
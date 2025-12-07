@interface HMIFaceClassification
- (BOOL)isEqual:(id)equal;
- (CGRect)faceBoundingBox;
- (HMIFaceClassification)initWithCoder:(id)coder;
- (HMIFaceClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD confidence:(double)confidence fromTorsoClassification:(BOOL)classification familiarity:(int64_t)familiarity;
- (HMIFaceClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID confidence:(double)confidence familiarity:(int64_t)familiarity;
- (HMIFaceClassification)initWithUUID:(id)d name:(id)name personsModelIdentifier:(id)identifier faceBoundingBox:(CGRect)box;
- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD faceBoundingBox:(CGRect)box;
- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID faceCrop:(id)crop faceprint:(id)faceprint confidence:(double)confidence familiarity:(int64_t)familiarity;
- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID faceCrop:(id)crop faceprint:(id)faceprint confidence:(double)confidence fromTorsoClassification:(BOOL)classification familiarity:(int64_t)self0;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIFaceClassification

- (HMIFaceClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD confidence:(double)confidence fromTorsoClassification:(BOOL)classification familiarity:(int64_t)familiarity
{
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = HMIFaceClassification;
  v15 = [(HMIFaceClassification *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_personUUID, d);
    objc_storeStrong(&v16->_sourceUUID, iD);
    v16->_confidence = confidence;
    v16->_fromTorsoClassification = classification;
    v16->_familiarity = familiarity;
  }

  return v16;
}

- (HMIFaceClassification)initWithPersonUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID confidence:(double)confidence familiarity:(int64_t)familiarity
{
  uIDCopy = uID;
  v10 = [HMIFaceClassification initWithPersonUUID:"initWithPersonUUID:sourceUUID:confidence:fromTorsoClassification:familiarity:" sourceUUID:? confidence:? fromTorsoClassification:? familiarity:?];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sessionEntityUUID, uID);
  }

  return v11;
}

- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID faceCrop:(id)crop faceprint:(id)faceprint confidence:(double)confidence familiarity:(int64_t)familiarity
{
  cropCopy = crop;
  faceprintCopy = faceprint;
  v14 = [HMIFaceClassification initWithPersonUUID:"initWithPersonUUID:sourceUUID:sessionEntityUUID:confidence:familiarity:" sourceUUID:? sessionEntityUUID:? confidence:? familiarity:?];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_faceCrop, crop);
    objc_storeStrong(&v15->_faceprint, faceprint);
  }

  return v15;
}

- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD sessionEntityUUID:(id)uID faceCrop:(id)crop faceprint:(id)faceprint confidence:(double)confidence fromTorsoClassification:(BOOL)classification familiarity:(int64_t)self0
{
  result = [HMIFaceClassification initWithUUID:"initWithUUID:sourceUUID:sessionEntityUUID:faceCrop:faceprint:confidence:familiarity:" sourceUUID:? sessionEntityUUID:? faceCrop:? faceprint:? confidence:? familiarity:?];
  if (result)
  {
    result->_fromTorsoClassification = classification;
  }

  return result;
}

- (HMIFaceClassification)initWithUUID:(id)d name:(id)name personsModelIdentifier:(id)identifier faceBoundingBox:(CGRect)box
{
  v7 = MEMORY[0x277CCAD78];
  dCopy = d;
  uUID = [v7 UUID];
  v10 = [HMIFaceClassification initWithUUID:"initWithUUID:sourceUUID:faceBoundingBox:" sourceUUID:? faceBoundingBox:?];

  return v10;
}

- (HMIFaceClassification)initWithUUID:(id)d sourceUUID:(id)iD faceBoundingBox:(CGRect)box
{
  iDCopy = iD;
  dCopy = d;
  v9 = [HMIFaceCrop alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  data = [MEMORY[0x277CBEA90] data];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [HMIFaceCrop initWithUUID:v9 dataRepresentation:"initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:" dateCreated:? faceBoundingBox:?];

  v14 = [HMIFaceprint alloc];
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  data2 = [MEMORY[0x277CBEA90] data];
  uUID3 = [MEMORY[0x277CCAD78] UUID];
  uUID4 = [(HMIFaceCrop *)v13 UUID];
  v19 = [HMIFaceprint initWithUUID:v14 data:"initWithUUID:data:modelUUID:faceCropUUID:" modelUUID:? faceCropUUID:?];

  uUID5 = [MEMORY[0x277CCAD78] UUID];
  v21 = [HMIFaceClassification initWithUUID:"initWithUUID:sourceUUID:sessionEntityUUID:faceBoundingBox:facecrop:faceprint:confidence:" sourceUUID:? sessionEntityUUID:? faceBoundingBox:? facecrop:? faceprint:? confidence:?];

  return v21;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  personUUID = [(HMIFaceClassification *)self personUUID];
  v25 = [v3 initWithName:? value:?];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  sourceUUID = [(HMIFaceClassification *)self sourceUUID];
  v23 = [v4 initWithName:? value:?];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  sessionEntityUUID = [(HMIFaceClassification *)self sessionEntityUUID];
  v21 = [v5 initWithName:? value:?];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = MEMORY[0x277CCABB0];
  [(HMIFaceClassification *)self confidence];
  v20 = [v7 numberWithDouble:?];
  v19 = [v6 initWithName:? value:?];
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIFaceClassification *)self familiarity];
  v27 = [v8 initWithName:? value:?];
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  faceCrop = [(HMIFaceClassification *)self faceCrop];
  uUID = [faceCrop UUID];
  v28 = [v9 initWithName:? value:?];
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  faceprint = [(HMIFaceClassification *)self faceprint];
  uUID2 = [faceprint UUID];
  v29 = [v12 initWithName:? value:?];
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIFaceClassification *)self fromTorsoClassification];
  v16 = HMFBooleanToString();
  v30 = [v15 initWithName:? value:?];
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      personUUID = [(HMIFaceClassification *)self personUUID];
      personUUID2 = [(HMIFaceClassification *)v5 personUUID];
      v8 = HMFEqualObjects();

      sourceUUID = [(HMIFaceClassification *)self sourceUUID];
      sourceUUID2 = [(HMIFaceClassification *)v5 sourceUUID];
      v11 = HMFEqualObjects();

      v12 = v8 & v11;
      sessionEntityUUID = [(HMIFaceClassification *)self sessionEntityUUID];
      sessionEntityUUID2 = [(HMIFaceClassification *)v5 sessionEntityUUID];
      v15 = HMFEqualObjects();

      faceCrop = [(HMIFaceClassification *)self faceCrop];
      faceCrop2 = [(HMIFaceClassification *)v5 faceCrop];
      v18 = HMFEqualObjects();

      v19 = v12 & v15 & v18;
      faceprint = [(HMIFaceClassification *)self faceprint];
      faceprint2 = [(HMIFaceClassification *)v5 faceprint];
      v22 = HMFEqualObjects();

      [(HMIFaceClassification *)self confidence];
      v24 = v23;
      [(HMIFaceClassification *)v5 confidence];
      if (v24 == v25)
      {
        v26 = v19 & v22;
      }

      else
      {
        v26 = 0;
      }

      familiarity = [(HMIFaceClassification *)self familiarity];
      if (familiarity != [(HMIFaceClassification *)v5 familiarity])
      {
        v26 = 0;
      }

      fromTorsoClassification = [(HMIFaceClassification *)self fromTorsoClassification];
      fromTorsoClassification2 = [(HMIFaceClassification *)v5 fromTorsoClassification];

      v30 = v26 & (fromTorsoClassification ^ fromTorsoClassification2 ^ 1);
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (unint64_t)hash
{
  personUUID = [(HMIFaceClassification *)self personUUID];
  v4 = [personUUID hash];
  sourceUUID = [(HMIFaceClassification *)self sourceUUID];
  v6 = [sourceUUID hash];

  return v6 ^ v4;
}

- (HMIFaceClassification)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v8 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:? forKey:?];
  [coderCopy decodeDoubleForKey:?];
  [coderCopy decodeBoolForKey:?];
  v10 = [coderCopy decodeIntegerForKey:?];

  v11 = [HMIFaceClassification initWithUUID:"initWithUUID:sourceUUID:sessionEntityUUID:faceCrop:faceprint:confidence:fromTorsoClassification:familiarity:" sourceUUID:v10 sessionEntityUUID:? faceCrop:? faceprint:? confidence:? fromTorsoClassification:? familiarity:?];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  personUUID = [(HMIFaceClassification *)self personUUID];
  [coderCopy encodeObject:? forKey:?];

  sourceUUID = [(HMIFaceClassification *)self sourceUUID];
  [coderCopy encodeObject:? forKey:?];

  sessionEntityUUID = [(HMIFaceClassification *)self sessionEntityUUID];
  [coderCopy encodeObject:? forKey:?];

  faceCrop = [(HMIFaceClassification *)self faceCrop];
  [coderCopy encodeObject:? forKey:?];

  faceprint = [(HMIFaceClassification *)self faceprint];
  [coderCopy encodeObject:? forKey:?];

  [(HMIFaceClassification *)self confidence];
  [coderCopy encodeDouble:? forKey:?];
  [(HMIFaceClassification *)self fromTorsoClassification];
  [coderCopy encodeBool:? forKey:?];
  [(HMIFaceClassification *)self familiarity];
  [coderCopy encodeInteger:? forKey:?];
}

- (CGRect)faceBoundingBox
{
  objc_copyStruct(v6, &self->_faceBoundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end
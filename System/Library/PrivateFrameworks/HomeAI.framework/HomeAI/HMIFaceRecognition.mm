@interface HMIFaceRecognition
- (BOOL)isEqual:(id)equal;
- (HMIFaceRecognition)initWithCoder:(id)coder;
- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications;
- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications predictedLinkedEntityUUIDs:(id)ds;
- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications predictedLinkedEntityUUIDs:(id)ds faceQualityScore:(double)score sessionEntityAssignment:(int64_t)assignment sessionEntityUUID:(id)d;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIFaceRecognition

- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications
{
  classificationsCopy = classifications;
  faceprintCopy = faceprint;
  cropCopy = crop;
  anyObject = [classificationsCopy anyObject];
  if (anyObject)
  {
    anyObject2 = [classificationsCopy anyObject];
    sessionEntityUUID = [anyObject2 sessionEntityUUID];
  }

  else
  {
    sessionEntityUUID = [MEMORY[0x277CCAD78] UUID];
  }

  v14 = [HMIFaceRecognition initWithFaceCrop:"initWithFaceCrop:faceprint:classifications:predictedLinkedEntityUUIDs:faceQualityScore:sessionEntityAssignment:sessionEntityUUID:" faceprint:? classifications:? predictedLinkedEntityUUIDs:? faceQualityScore:? sessionEntityAssignment:? sessionEntityUUID:?];
  return v14;
}

- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications predictedLinkedEntityUUIDs:(id)ds
{
  classificationsCopy = classifications;
  dsCopy = ds;
  faceprintCopy = faceprint;
  cropCopy = crop;
  anyObject = [classificationsCopy anyObject];
  if (anyObject)
  {
    anyObject2 = [classificationsCopy anyObject];
    sessionEntityUUID = [anyObject2 sessionEntityUUID];
  }

  else
  {
    sessionEntityUUID = [MEMORY[0x277CCAD78] UUID];
  }

  v17 = [HMIFaceRecognition initWithFaceCrop:"initWithFaceCrop:faceprint:classifications:predictedLinkedEntityUUIDs:faceQualityScore:sessionEntityAssignment:sessionEntityUUID:" faceprint:? classifications:? predictedLinkedEntityUUIDs:? faceQualityScore:? sessionEntityAssignment:? sessionEntityUUID:?];
  return v17;
}

- (HMIFaceRecognition)initWithFaceCrop:(id)crop faceprint:(id)faceprint classifications:(id)classifications predictedLinkedEntityUUIDs:(id)ds faceQualityScore:(double)score sessionEntityAssignment:(int64_t)assignment sessionEntityUUID:(id)d
{
  cropCopy = crop;
  faceprintCopy = faceprint;
  classificationsCopy = classifications;
  dsCopy = ds;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = HMIFaceRecognition;
  v20 = [(HMIFaceRecognition *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_faceCrop, crop);
    objc_storeStrong(&v21->_faceprint, faceprint);
    objc_storeStrong(&v21->_classifications, classifications);
    objc_storeStrong(&v21->_predictedLinkedEntityUUIDs, ds);
    v21->_faceQualityScore = score;
    v21->_sessionEntityAssignment = assignment;
    objc_storeStrong(&v21->_sessionEntityUUID, d);
  }

  return v21;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  faceCrop = [(HMIFaceRecognition *)self faceCrop];
  uUID = [faceCrop UUID];
  v18 = [v3 initWithName:? value:?];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  faceprint = [(HMIFaceRecognition *)self faceprint];
  uUID2 = [faceprint UUID];
  v19 = [v4 initWithName:? value:?];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  classifications = [(HMIFaceRecognition *)self classifications];
  v20 = [v7 initWithName:? value:?];
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCABB0];
  [(HMIFaceRecognition *)self faceQualityScore];
  v11 = [v10 numberWithDouble:?];
  v21 = [v9 initWithName:? value:?];
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  sessionEntityUUID = [(HMIFaceRecognition *)self sessionEntityUUID];
  v22 = [v12 initWithName:? value:?];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    classifications = [(HMIFaceRecognition *)self classifications];
    classifications2 = [v6 classifications];
    if ([classifications isEqual:?])
    {
      faceCrop = [(HMIFaceRecognition *)self faceCrop];
      faceCrop2 = [v6 faceCrop];
      if ([faceCrop isEqual:?])
      {
        faceprint = [(HMIFaceRecognition *)self faceprint];
        faceprint2 = [v6 faceprint];
        if ([faceprint isEqual:?] && (v13 = -[HMIFaceRecognition sessionEntityAssignment](self, "sessionEntityAssignment"), v13 == objc_msgSend(v6, "sessionEntityAssignment")) && (-[HMIFaceRecognition faceQualityScore](self, "faceQualityScore"), v15 = v14, objc_msgSend(v6, "faceQualityScore"), v15 == v16))
        {
          sessionEntityUUID = [(HMIFaceRecognition *)self sessionEntityUUID];
          sessionEntityUUID2 = [v6 sessionEntityUUID];
          v18 = [sessionEntityUUID isEqual:?];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  faceCrop = [(HMIFaceRecognition *)self faceCrop];
  v4 = [faceCrop hash];
  faceprint = [(HMIFaceRecognition *)self faceprint];
  v6 = [faceprint hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  classifications = [(HMIFaceRecognition *)self classifications];
  [coderCopy encodeObject:? forKey:?];

  faceCrop = [(HMIFaceRecognition *)self faceCrop];
  [coderCopy encodeObject:? forKey:?];

  faceprint = [(HMIFaceRecognition *)self faceprint];
  [coderCopy encodeObject:? forKey:?];

  [(HMIFaceRecognition *)self sessionEntityAssignment];
  [coderCopy encodeInteger:? forKey:?];
  [(HMIFaceRecognition *)self faceQualityScore];
  [coderCopy encodeDouble:? forKey:?];
  sessionEntityUUID = [(HMIFaceRecognition *)self sessionEntityUUID];
  [coderCopy encodeObject:? forKey:?];

  predictedLinkedEntityUUIDs = [(HMIFaceRecognition *)self predictedLinkedEntityUUIDs];
  [coderCopy encodeObject:? forKey:?];
}

- (HMIFaceRecognition)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  v7 = MEMORY[0x277CBEB98];
  objc_opt_class();
  objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v9 = [v7 setWithArray:?];
  v10 = [coderCopy decodeObjectOfClasses:? forKey:?];

  [coderCopy decodeIntegerForKey:?];
  [coderCopy decodeDoubleForKey:?];
  objc_opt_class();
  v11 = [coderCopy decodeObjectOfClass:? forKey:?];
  v12 = MEMORY[0x277CBEB98];
  objc_opt_class();
  objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v14 = [v12 setWithArray:?];
  v15 = [coderCopy decodeObjectOfClasses:? forKey:?];

  v16 = [HMIFaceRecognition initWithFaceCrop:"initWithFaceCrop:faceprint:classifications:predictedLinkedEntityUUIDs:faceQualityScore:sessionEntityAssignment:sessionEntityUUID:" faceprint:? classifications:? predictedLinkedEntityUUIDs:? faceQualityScore:? sessionEntityAssignment:? sessionEntityUUID:?];
  return v16;
}

@end
@interface HMIFaceCrop
+ (id)faceCropFromPhotosFaceCropImageData:(id)data;
+ (id)selectBestObservation:(id)observation faceBoundingBoxFromPhotos:(CGRect)photos;
- (BOOL)isEqual:(id)equal;
- (CGRect)faceBoundingBox;
- (HMIFaceCrop)initWithCoder:(id)coder;
- (HMIFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIFaceCrop

- (HMIFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  dCopy = d;
  representationCopy = representation;
  createdCopy = created;
  if (!dCopy)
  {
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_8;
  }

  if (!representationCopy)
  {
LABEL_8:
    [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    goto LABEL_9;
  }

  v16 = createdCopy;
  if (!createdCopy)
  {
LABEL_9:
    v25 = [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    return [(HMIFaceCrop *)v25 faceCropFromPhotosFaceCropImageData:v26, v27];
  }

  v28.receiver = self;
  v28.super_class = HMIFaceCrop;
  v17 = [(HMIFaceCrop *)&v28 init];
  if (v17)
  {
    v18 = [dCopy copy];
    UUID = v17->_UUID;
    v17->_UUID = v18;

    v20 = [representationCopy copy];
    dataRepresentation = v17->_dataRepresentation;
    v17->_dataRepresentation = v20;

    v22 = [v16 copy];
    dateCreated = v17->_dateCreated;
    v17->_dateCreated = v22;

    v17->_faceBoundingBox.origin.x = x;
    v17->_faceBoundingBox.origin.y = y;
    v17->_faceBoundingBox.size.width = width;
    v17->_faceBoundingBox.size.height = height;
  }

  return v17;
}

+ (id)faceCropFromPhotosFaceCropImageData:(id)data
{
  v39 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [HMIFaceDetectorVision detectFacesInImageData:"detectFacesInImageData:error:" error:?];
  v6 = 0;
  if (v5 && [v5 count] == 1)
  {
    firstObject = [v5 firstObject];
    [firstObject unalignedBoundingBox];
    HMICGRectFlipCoordinateSpaceNormalized(v8, v9, v10, v11);

LABEL_19:
    v31 = [HMIFaceCrop alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    date = [MEMORY[0x277CBEAA8] date];
    v16 = [HMIFaceCrop initWithUUID:v31 dataRepresentation:"initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:" dateCreated:? faceBoundingBox:?];

    goto LABEL_20;
  }

  [HMIFaceUtilities faceBoundingBoxFromPhotosFaceCropData:?];
  if (!CGRectIsNull(v41))
  {
    if (v5 && [v5 count])
    {
      v17 = [objc_opt_class() selectBestObservation:? faceBoundingBoxFromPhotos:?];
      v18 = v17;
      if (v17)
      {
        [v17 unalignedBoundingBox];
        HMICGRectFlipCoordinateSpaceNormalized(v19, v20, v21, v22);
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        selfCopy = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543362;
          v36 = v30;
          _os_log_impl(&dword_22D12F000, v29, OS_LOG_TYPE_ERROR, "%{public}@No detected box overlaps with photos bounding box, falling back to photos bounding box", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v26;
        v37 = 2112;
        v38 = v6;
        _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_ERROR, "%{public}@Error while detecting face in Photos face crop, error: %@, or no box detected, falling back to photos bounding box", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
    }

    goto LABEL_19;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v15;
    _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Error, couldn't get face box from photos data, ignoring face crop", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  v16 = 0;
LABEL_20:

  return v16;
}

- (id)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uUID = [(HMIFaceCrop *)self UUID];
  v13 = [v3 initWithName:? value:?];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  dataRepresentation = [(HMIFaceCrop *)self dataRepresentation];
  v14 = [v5 initWithName:? value:?];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  dateCreated = [(HMIFaceCrop *)self dateCreated];
  v15 = [v7 initWithName:? value:?];
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIFaceCrop *)self faceBoundingBox];
  v10 = NSStringFromRect(v18);
  v16 = [v9 initWithName:? value:?];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v11;
}

+ (id)selectBestObservation:(id)observation faceBoundingBoxFromPhotos:(CGRect)photos
{
  height = photos.size.height;
  width = photos.size.width;
  y = photos.origin.y;
  x = photos.origin.x;
  observationCopy = observation;
  v9 = [observationCopy countByEnumeratingWithState:0 objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = MEMORY[0];
    v13 = 0.0;
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(observationCopy);
        }

        v15 = *(8 * i);
        [v15 unalignedBoundingBox];
        HMICGRectFlipCoordinateSpaceNormalized(v16, v17, v18, v19);
        HMICGRectIntersectionOverUnion(v20, v21, v22, v23, x, y, width, height);
        v25 = v24;
        if (v13 < v24)
        {
          v26 = v15;

          v11 = v26;
          v13 = v25;
        }
      }

      v10 = [observationCopy countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
    uUID = [(HMIFaceCrop *)self UUID];
    uUID2 = [v6 UUID];
    if ([uUID isEqual:?])
    {
      dataRepresentation = [(HMIFaceCrop *)self dataRepresentation];
      dataRepresentation2 = [v6 dataRepresentation];
      if ([dataRepresentation isEqualToData:?])
      {
        dateCreated = [(HMIFaceCrop *)self dateCreated];
        dateCreated2 = [v6 dateCreated];
        if ([dateCreated isEqualToDate:?])
        {
          [(HMIFaceCrop *)self faceBoundingBox];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          [v6 faceBoundingBox];
          v28.origin.x = v21;
          v28.origin.y = v22;
          v28.size.width = v23;
          v28.size.height = v24;
          v27.origin.x = v14;
          v27.origin.y = v16;
          v27.size.width = v18;
          v27.size.height = v20;
          v25 = CGRectEqualToRect(v27, v28);
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (unint64_t)hash
{
  uUID = [(HMIFaceCrop *)self UUID];
  v3 = [uUID hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(HMIFaceCrop *)self UUID];
  [coderCopy encodeObject:? forKey:?];

  dataRepresentation = [(HMIFaceCrop *)self dataRepresentation];
  [coderCopy encodeObject:? forKey:?];

  dateCreated = [(HMIFaceCrop *)self dateCreated];
  [coderCopy encodeObject:? forKey:?];

  [(HMIFaceCrop *)self faceBoundingBox];
  [coderCopy encodeRect:? forKey:?];
}

- (HMIFaceCrop)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];
  [coderCopy decodeRectForKey:?];
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138544130;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@ dataRepresentation: %@ dateCreated: %@", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  else
  {
    selfCopy = [HMIFaceCrop initWithUUID:"initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:" dataRepresentation:? dateCreated:? faceBoundingBox:?];
    v14 = selfCopy;
  }

  return v14;
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
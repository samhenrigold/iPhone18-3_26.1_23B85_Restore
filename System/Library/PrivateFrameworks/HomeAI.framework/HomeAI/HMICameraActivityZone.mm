@interface HMICameraActivityZone
+ (id)activityZonesFromString:(id)string isInclusion:(BOOL)inclusion;
+ (id)filterEvents:(id)events withActivityZones:(id)zones motionDetection:(id)detection insetPercentageInclusion:(float)inclusion insetPercentageExclusion:(float)exclusion;
+ (void)generateAndSubmitStats:(id)stats filteredEvents:(id)events motionDetection:(id)detection activityZones:(id)zones;
+ (void)submitCoreAnalyticsEvent:(id)event filteringLevel:(id)level numberOfDetectedObjects:(id)objects;
- (BOOL)checkIfObjectIsStaticWithBoundingBox:(CGRect)box motionDetection:(id)detection eventClass:(Class)class;
- (BOOL)containsEvent:(id)event withInsetPercentage:(float)percentage;
- (BOOL)containsVectorWithSource:(CGPoint)source destination:(CGPoint)destination;
- (BOOL)isEqual:(id)equal;
- (BOOL)overlapsWithElipseInsideRect:(CGRect)rect;
- (BOOL)overlapsWithElipseInsideRect:(CGRect)rect withInsetPercentage:(float)percentage;
- (BOOL)saveToJsonActivityZones:(id)zones motionDetection:(id)detection videoFragmentUrl:(id)url frameId:(id)id UUID:(id)d detectionID:(id)iD zoneID:(id)zoneID;
- (HMICameraActivityZone)initWithCoder:(id)coder;
- (HMICameraActivityZone)initWithPoints:(id)points isInclusion:(BOOL)inclusion;
- (NSString)description;
- (id)jsonReperesentaionOfDetectedObject:(id)object motionDetection:(id)detection eventClass:(id)class;
- (unint64_t)activityZoneType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMICameraActivityZone

- (HMICameraActivityZone)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  objc_opt_class();
  objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v7 = [v4 setWithArray:?];

  v8 = [coderCopy decodeObjectOfClasses:? forKey:?];
  [coderCopy decodeBoolForKey:?];

  v9 = [HMICameraActivityZone initWithPoints:"initWithPoints:isInclusion:" isInclusion:?];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  points = [(HMICameraActivityZone *)self points];
  [coderCopy encodeObject:? forKey:?];

  [(HMICameraActivityZone *)self isInclusion];
  [coderCopy encodeBool:? forKey:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      points = [(HMICameraActivityZone *)self points];
      points2 = [(HMICameraActivityZone *)v5 points];
      v8 = [points isEqualToArray:?];

      isInclusion = [(HMICameraActivityZone *)self isInclusion];
      LOBYTE(points) = [(HMICameraActivityZone *)v5 isInclusion];

      v10 = v8 & (isInclusion ^ points ^ 1);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  points = [(HMICameraActivityZone *)self points];
  v3 = [points hash];

  return v3;
}

- (HMICameraActivityZone)initWithPoints:(id)points isInclusion:(BOOL)inclusion
{
  pointsCopy = points;
  v11.receiver = self;
  v11.super_class = HMICameraActivityZone;
  v7 = [(HMICameraActivityZone *)&v11 init];
  if (v7)
  {
    v8 = [pointsCopy copy];
    points = v7->_points;
    v7->_points = v8;

    v7->_inclusion = inclusion;
  }

  return v7;
}

- (unint64_t)activityZoneType
{
  points = [(HMICameraActivityZone *)self points];
  if ([points count] == 5)
  {
    isInclusion = [(HMICameraActivityZone *)self isInclusion];

    if ((isInclusion & 1) == 0)
    {
      return 2;
    }
  }

  else
  {
  }

  return [(HMICameraActivityZone *)self isInclusion]^ 1;
}

- (BOOL)overlapsWithElipseInsideRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MidX = CGRectGetMidX(rect);
  v63 = x;
  v64 = y;
  v75.origin.x = x;
  v75.origin.y = y;
  v66 = width;
  v67 = height;
  v75.size.width = width;
  v75.size.height = height;
  MidY = CGRectGetMidY(v75);
  points = [(HMICameraActivityZone *)self points];
  v11 = HMICreatePathFromPoints(points);

  v71 = MidX;
  v73.x = MidX;
  v73.y = MidY;
  LOBYTE(points) = CGPathContainsPoint(v11, 0, v73, 0);
  CGPathRelease(v11);
  if (points)
  {
    return 1;
  }

  points2 = [(HMICameraActivityZone *)self points];
  v14 = [points2 count];

  if (v14 != 1)
  {
    v15 = v66 * 0.5;
    v16 = height * 0.5;
    v72 = v15 * v15;
    v68 = v16 * v16;
    v65 = v16;
    v17 = 1;
    v69 = MidY;
    do
    {
      points3 = [(HMICameraActivityZone *)self points];
      v19 = [points3 objectAtIndexedSubscript:?];
      [v19 point];
      v21 = v20 - v71;
      points4 = [(HMICameraActivityZone *)self points];
      v23 = [points4 objectAtIndexedSubscript:?];
      [v23 point];
      v25 = v24 - MidY;

      points5 = [(HMICameraActivityZone *)self points];
      v27 = [points5 objectAtIndexedSubscript:?];
      [v27 point];
      v29 = v28 - v71;
      points6 = [(HMICameraActivityZone *)self points];
      v31 = [points6 objectAtIndexedSubscript:?];
      [v31 point];
      v33 = v32 - MidY;

      if (vabdd_f64(v21, v29) >= 0.000001)
      {
        v39 = (v25 - v33) / (v21 - v29);
        v40 = v25 - v39 * v21;
        v41 = v68 + (v72 * (v39 * v39));
        v42 = ((v72 + v72) * v39) * v40;
        v43 = ((v41 * -4.0) * (v72 * ((v40 * v40) - v68))) + (v42 * v42);
        if (v43 < 0.0)
        {
          goto LABEL_33;
        }

        v44 = -v42;
        v45 = sqrt(v43);
        v46 = (v41 + v41);
        v38 = (v45 + v44) / v46;
        v34 = (v44 - v45) / v46;
        v36 = v40 + (v38 * v39);
        v70 = v40 + (v34 * v39);
      }

      else
      {
        v34 = v21;
        if ((v34 * v34) > v72)
        {
          goto LABEL_33;
        }

        v35 = (1.0 - sqrt(((v34 * v34) / v72))) * v65;
        v36 = v35;
        v37 = -v35;
        v70 = v37;
        v38 = v21;
      }

      if (v21 >= v29)
      {
        v47 = v29;
      }

      else
      {
        v47 = v21;
      }

      v48 = v47;
      if (v21 >= v29)
      {
        v49 = v21;
      }

      else
      {
        v49 = v29;
      }

      v50 = v49;
      if (v25 >= v33)
      {
        v51 = v33;
      }

      else
      {
        v51 = v25;
      }

      if (v25 < v33)
      {
        v25 = v33;
      }

      v52 = HMILessThanOrEqualWithAccuracy(v38, v50, 0.001) && HMIGreaterThanOrEqualWithAccuracy(v38, v48, 0.001);
      v53 = v25;
      v54 = HMILessThanOrEqualWithAccuracy(v36, v53, 0.001);
      if (v54)
      {
        v55 = v51;
        v54 = HMIGreaterThanOrEqualWithAccuracy(v36, v55, 0.001);
      }

      MidY = v69;
      if (v54 && v52)
      {
        return 1;
      }

      v56 = HMILessThanOrEqualWithAccuracy(v34, v50, 0.001) && HMIGreaterThanOrEqualWithAccuracy(v34, v48, 0.001);
      v57 = HMILessThanOrEqualWithAccuracy(v70, v53, 0.001);
      if (v57)
      {
        v58 = v51;
        v57 = HMIGreaterThanOrEqualWithAccuracy(v70, v58, 0.001);
      }

      if (v57 && v56)
      {
        return 1;
      }

LABEL_33:
      ++v17;
    }

    while (v14 != v17);
  }

  v76.origin.x = v63;
  v76.origin.y = v64;
  v76.size.width = v66;
  v76.size.height = v67;
  v59 = CGPathCreateWithRect(v76, 0);
  points7 = [(HMICameraActivityZone *)self points];
  v61 = [points7 objectAtIndexedSubscript:?];
  [v61 point];
  v62 = CGPathContainsPoint(v59, 0, v74, 0);

  CGPathRelease(v59);
  return v62;
}

- (BOOL)overlapsWithElipseInsideRect:(CGRect)rect withInsetPercentage:(float)percentage
{
  HMICGRectScaleAroundCenter(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, percentage);

  return [(HMICameraActivityZone *)self overlapsWithElipseInsideRect:?];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:objc_opt_class()];
  [v3 appendFormat:-[HMICameraActivityZone isInclusion](self, "isInclusion")];
  points = [(HMICameraActivityZone *)self points];
  v5 = [points countByEnumeratingWithState:? objects:? count:?];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(points);
        }

        [v3 appendFormat:*(8 * i)];
      }

      v6 = [points countByEnumeratingWithState:? objects:? count:?];
    }

    while (v6);
  }

  [v3 appendString:?];
  v9 = [v3 copy];

  return v9;
}

- (id)jsonReperesentaionOfDetectedObject:(id)object motionDetection:(id)detection eventClass:(id)class
{
  objectCopy = object;
  detectionCopy = detection;
  classCopy = class;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(HMICameraActivityZone *)self activityZoneType])
  {
    v12 = 0.21;
    [HMICameraActivityZone containsEvent:"containsEvent:withInsetPercentage:" withInsetPercentage:?];
  }

  else
  {
    [objectCopy boundingBox];
    v12 = 0.16;
    if ([HMICameraActivityZone overlapsWithElipseInsideRect:"overlapsWithElipseInsideRect:withInsetPercentage:" withInsetPercentage:?])
    {
      [objectCopy boundingBox];
      objc_opt_class();
      [HMICameraActivityZone checkIfObjectIsStaticWithBoundingBox:"checkIfObjectIsStaticWithBoundingBox:motionDetection:eventClass:" motionDetection:? eventClass:?];
    }
  }

  [objectCopy boundingBox];
  v17 = HMICGRectScaleAroundCenter(v13, v14, v15, v16, v12);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = objc_opt_class();
  if (v24 == objc_opt_class() && [(HMICameraActivityZone *)self activityZoneType]== 2)
  {
    v17 = HMICGRectDivideAlongHeight(v17, v19, v21, v23, 0.7);
    v19 = v25;
    v21 = v26;
    v23 = v27;
  }

  v44.origin.x = v17;
  v44.origin.y = v19;
  v44.size.width = v21;
  v44.size.height = v23;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v44);
  v40 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v28 = MEMORY[0x277CCABB0];
  [(HMICameraActivityZone *)self isInclusion];
  v41 = [v28 numberWithBool:?];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  [v11 addObject:?];

  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  points = [(HMICameraActivityZone *)self points];
  v32 = [points countByEnumeratingWithState:? objects:? count:?];
  if (v32)
  {
    v33 = v32;
    v34 = MEMORY[0];
    do
    {
      for (i = 0; i != v33; i = (i + 1))
      {
        if (MEMORY[0] != v34)
        {
          objc_enumerationMutation(points);
        }

        [*(8 * i) point];
        v36 = CGPointCreateDictionaryRepresentation(v43);
        [v30 addObject:?];
      }

      v33 = [points countByEnumeratingWithState:? objects:? count:?];
    }

    while (v33);
  }

  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  [v11 addObject:?];

  return v11;
}

- (BOOL)containsEvent:(id)event withInsetPercentage:(float)percentage
{
  eventCopy = event;
  [eventCopy boundingBox];
  v11 = HMICGRectScaleAroundCenter(v7, v8, v9, v10, percentage);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = objc_opt_class();

  if (v18 == objc_opt_class() && [(HMICameraActivityZone *)self activityZoneType]== 2)
  {
    v11 = HMICGRectDivideAlongHeight(v11, v13, v15, v17, 0.7);
    v13 = v19;
    v15 = v20;
    v17 = v21;
  }

  points = [(HMICameraActivityZone *)self points];
  v23 = HMICreatePathFromPoints(points);

  v28.x = v11;
  v28.y = v13;
  if (CGPathContainsPoint(v23, 0, v28, 0) && (v24 = v15 + v11, v29.x = v24, v29.y = v13, CGPathContainsPoint(v23, 0, v29, 0)) && (v25 = v17 + v13, v30.x = v24, v30.y = v25, CGPathContainsPoint(v23, 0, v30, 0)))
  {
    v31.x = v11;
    v31.y = v25;
    v26 = CGPathContainsPoint(v23, 0, v31, 0);
  }

  else
  {
    v26 = 0;
  }

  CGPathRelease(v23);
  return v26;
}

- (BOOL)saveToJsonActivityZones:(id)zones motionDetection:(id)detection videoFragmentUrl:(id)url frameId:(id)id UUID:(id)d detectionID:(id)iD zoneID:(id)zoneID
{
  v72 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  detectionCopy = detection;
  urlCopy = url;
  idCopy = id;
  dCopy = d;
  iDCopy = iD;
  zoneIDCopy = zoneID;
  objc_opt_class();
  v66 = [HMIVideoAnalyzerEvent shortNameForEventClass:?];
  absoluteString = [urlCopy absoluteString];
  LODWORD(d) = [absoluteString hasPrefix:?];

  v63 = dCopy;
  v61 = urlCopy;
  if (d)
  {
    stringByDeletingPathExtension = dCopy;
  }

  else
  {
    lastPathComponent = [urlCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  }

  v64 = idCopy;
  v62 = stringByDeletingPathExtension;
  iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:stringByDeletingPathExtension, idCopy, zoneIDCopy, iDCopy];
  v25 = MEMORY[0x277CCACA8];
  v26 = NSTemporaryDirectory();
  v27 = [v25 stringWithFormat:v26, @"analyzed-video-frames"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v29 = [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
  v30 = 0;

  v65 = detectionCopy;
  if (v29)
  {
    v58 = iDCopy;
    v59 = zoneIDCopy;
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:v27, iDCopy];
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v69 = v35;
      v70 = 2112;
      v71 = v31;
      _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_INFO, "%{public}@Activity zone file path:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v60 = zonesCopy;
    v36 = [HMICameraActivityZone jsonReperesentaionOfDetectedObject:selfCopy motionDetection:"jsonReperesentaionOfDetectedObject:motionDetection:eventClass:" eventClass:?];
    v37 = [MEMORY[0x277CCAAA0] dataWithJSONObject:? options:? error:?];
    v38 = v30;

    if (v37)
    {
      v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:? encoding:?];
      v40 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
      v41 = [v39 writeToURL:? atomically:? encoding:? error:?];
      v42 = v38;

      if ((v41 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        v43 = selfCopy;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v56 = HMFGetLogIdentifier();
          *buf = 138543618;
          v69 = v56;
          v70 = 2112;
          v71 = v42;
          _os_log_impl(&dword_22D12F000, v44, OS_LOG_TYPE_ERROR, "%{public}@Error writing activity zone results JSON to file: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
      }

      v38 = v42;
    }

    else
    {
      v51 = objc_autoreleasePoolPush();
      v52 = selfCopy;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = HMFGetLogIdentifier();
        *buf = 138543618;
        v69 = v54;
        v70 = 2112;
        v71 = v38;
        _os_log_impl(&dword_22D12F000, v53, OS_LOG_TYPE_ERROR, "%{public}@Error converting activity zone results to JSON: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v51);
      v41 = 0;
    }

    v30 = v38;
    zoneIDCopy = v59;
    zonesCopy = v60;
    v50 = v63;
    iDCopy = v58;
  }

  else
  {
    v45 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v49 = v48 = zoneIDCopy;
      *buf = 138543618;
      v69 = v49;
      v70 = 2112;
      v71 = v30;
      _os_log_impl(&dword_22D12F000, v47, OS_LOG_TYPE_ERROR, "%{public}@Error creating activity zone result directory: %@", buf, 0x16u);

      zoneIDCopy = v48;
    }

    objc_autoreleasePoolPop(v45);
    v41 = 0;
    v50 = v63;
  }

  return v41;
}

- (BOOL)checkIfObjectIsStaticWithBoundingBox:(CGRect)box motionDetection:(id)detection eventClass:(Class)class
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v44 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  if (objc_opt_class() != class)
  {
    goto LABEL_25;
  }

  array = [MEMORY[0x277CBEB18] array];
  points = [(HMICameraActivityZone *)self points];
  v14 = HMICreatePathFromPoints(points);

  motionVectors = [detectionCopy motionVectors];
  v16 = [motionVectors countByEnumeratingWithState:? objects:? count:?];
  if (v16)
  {
    v17 = v16;
    v18 = MEMORY[0];
    do
    {
      for (i = 0; i != v17; i = (i + 1))
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(motionVectors);
        }

        [*(8 * i) target];
        if (CGPathContainsPoint(v14, 0, v45, 0))
        {
          [array addObject:?];
        }
      }

      v17 = [motionVectors countByEnumeratingWithState:? objects:? count:?];
    }

    while (v17);
  }

  v20 = array;
  v21 = [v20 countByEnumeratingWithState:0 objects:? count:?];
  if (v21)
  {
    v22 = v21;
    v23 = MEMORY[0];
    v24 = 0.0;
    do
    {
      for (j = 0; j != v22; j = (j + 1))
      {
        if (MEMORY[0] != v23)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(8 * j);
        [v26 target];
        v46.x = v27;
        v46.y = v28;
        v47.origin.x = x;
        v47.origin.y = y;
        v47.size.width = width;
        v47.size.height = height;
        if (CGRectContainsPoint(v47, v46))
        {
          [v26 motion];
          v30 = v29;
          [v26 motion];
          v24 = hypot(v30, v31) + v24;
        }
      }

      v22 = [v20 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v22);
    v32 = v24;
  }

  else
  {
    v32 = 0.0;
  }

  CGPathRelease(v14);
  v33 = v32 / (height * width + 0.00000011920929);
  v34 = objc_autoreleasePoolPush();
  selfCopy = self;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v37;
    v42 = 2048;
    v43 = v33;
    _os_log_impl(&dword_22D12F000, v36, OS_LOG_TYPE_DEBUG, "%{public}@motionScore %f", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v34);
  if (v33 < 1.0)
  {
    v38 = 1;
  }

  else
  {
LABEL_25:
    v38 = 0;
  }

  return v38;
}

- (BOOL)containsVectorWithSource:(CGPoint)source destination:(CGPoint)destination
{
  y = destination.y;
  x = destination.x;
  v6 = source.y;
  v7 = source.x;
  points = [(HMICameraActivityZone *)self points];
  v9 = HMICreatePathFromPoints(points);

  v12.x = v7;
  v12.y = v6;
  v10 = 0;
  if (CGPathContainsPoint(v9, 0, v12, 0))
  {
    v13.x = x;
    v13.y = y;
    v10 = CGPathContainsPoint(v9, 0, v13, 0);
  }

  CGPathRelease(v9);
  return v10;
}

+ (id)filterEvents:(id)events withActivityZones:(id)zones motionDetection:(id)detection insetPercentageInclusion:(float)inclusion insetPercentageExclusion:(float)exclusion
{
  v71 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  zonesCopy = zones;
  detectionCopy = detection;
  if ([zonesCopy count])
  {
    firstObject = [zonesCopy firstObject];
    isInclusion = [firstObject isInclusion];

    v54 = isInclusion;
    [zonesCopy na_all:?];
    v53 = [MEMORY[0x277CBEB58] set];
    v51 = eventsCopy;
    obj = eventsCopy;
    v56 = zonesCopy;
    v58 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v58)
    {
      v57 = MEMORY[0];
      do
      {
        for (i = 0; i != v58; i = (i + 1))
        {
          if (MEMORY[0] != v57)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(8 * i);
          v18 = zonesCopy;
          v19 = [v18 countByEnumeratingWithState:? objects:? count:?];
          if (v19)
          {
            v20 = v19;
            v21 = MEMORY[0];
            while (2)
            {
              for (j = 0; j != v20; j = (j + 1))
              {
                if (MEMORY[0] != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(8 * j);
                if ([v23 activityZoneType])
                {
                  if ([v23 containsEvent:? withInsetPercentage:?])
                  {
                    v24 = objc_autoreleasePoolPush();
                    selfCopy = self;
                    v26 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                    {
                      v28 = HMFGetLogIdentifier();
                      v29 = objc_opt_class();
                      [v17 boundingBox];
                      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v73);
                      *buf = 138544386;
                      v62 = v28;
                      v63 = 2112;
                      v64 = v23;
                      v65 = 2112;
                      v66 = v29;
                      v67 = 2112;
                      v68 = *&DictionaryRepresentation;
                      v69 = 2048;
                      inclusionCopy = exclusion;
                      _os_log_impl(&dword_22D12F000, v26, OS_LOG_TYPE_INFO, "%{public}@Exclusion zone:%@ intersecting with:(%@) Object coordinate %@ insetThreshold %f", buf, 0x34u);
                    }

                    objc_autoreleasePoolPop(v24);
                    zonesCopy = v56;
                    goto LABEL_28;
                  }
                }

                else
                {
                  [v17 boundingBox];
                  if ([v23 overlapsWithElipseInsideRect:? withInsetPercentage:?])
                  {
                    [v17 boundingBox];
                    objc_opt_class();
                    if (([v23 checkIfObjectIsStaticWithBoundingBox:? motionDetection:? eventClass:?] & 1) == 0)
                    {
                      v31 = objc_autoreleasePoolPush();
                      selfCopy2 = self;
                      v33 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                      {
                        HMFGetLogIdentifier();
                        v34 = v52 = v31;
                        v35 = objc_opt_class();
                        [v17 boundingBox];
                        v36 = CGRectCreateDictionaryRepresentation(v74);
                        *buf = 138544386;
                        v62 = v34;
                        v63 = 2112;
                        v64 = v23;
                        v65 = 2112;
                        v66 = v35;
                        v67 = 2112;
                        v68 = *&v36;
                        v69 = 2048;
                        inclusionCopy = inclusion;
                        _os_log_impl(&dword_22D12F000, v33, OS_LOG_TYPE_INFO, "%{public}@Inclusion zone:%@ intersecting with:(%@) Object coordinate %@ insetThreshold %f", buf, 0x34u);

                        v31 = v52;
                      }

                      objc_autoreleasePoolPop(v31);
                      zonesCopy = v56;
                      goto LABEL_27;
                    }
                  }
                }
              }

              v20 = [v18 countByEnumeratingWithState:? objects:? count:?];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          if ((v54 & 1) == 0)
          {
LABEL_27:
            [v53 addObject:v51];
          }

LABEL_28:
          ;
        }

        v58 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v58);
    }

    v59 = v53;
    v37 = [v59 countByEnumeratingWithState:? objects:? count:?];
    if (v37)
    {
      v38 = v37;
      v39 = MEMORY[0];
      if (v54)
      {
        exclusionCopy2 = inclusion;
      }

      else
      {
        exclusionCopy2 = exclusion;
      }

      v41 = exclusionCopy2;
      do
      {
        for (k = 0; k != v38; k = (k + 1))
        {
          if (MEMORY[0] != v39)
          {
            objc_enumerationMutation(v59);
          }

          v43 = *(8 * k);
          v44 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = HMFGetLogIdentifier();
            v48 = objc_opt_class();
            [v43 boundingBox];
            v49 = CGRectCreateDictionaryRepresentation(v75);
            *buf = 138544130;
            v62 = v47;
            v63 = 2112;
            v64 = v48;
            v65 = 2112;
            v66 = v49;
            v67 = 2048;
            v68 = v41;
            _os_log_impl(&dword_22D12F000, v46, OS_LOG_TYPE_INFO, "%{public}@Events after activity zone filtering:(%@) Object coordinate %@ insetPercentage %f", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v44);
        }

        v38 = [v59 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v38);
    }

    eventsCopy = v51;
    zonesCopy = v56;
  }

  else
  {
    v59 = eventsCopy;
  }

  return v59;
}

+ (id)activityZonesFromString:(id)string isInclusion:(BOOL)inclusion
{
  stringCopy = string;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:?];
  v26 = stringCopy;
  v6 = [stringCopy componentsSeparatedByCharactersInSet:?];

  obj = v6;
  v30 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v30)
  {
    v29 = MEMORY[0];
    do
    {
      for (i = 0; i != v30; i = (i + 1))
      {
        if (MEMORY[0] != v29)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(8 * i);
        if ([v8 length])
        {
          v31 = i;
          v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:?];
          v10 = [v8 componentsSeparatedByCharactersInSet:?];

          array = [MEMORY[0x277CBEB18] array];
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:? objects:? count:?];
          if (v13)
          {
            v14 = v13;
            v15 = MEMORY[0];
            do
            {
              for (j = 0; j != v14; j = (j + 1))
              {
                if (MEMORY[0] != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(8 * j);
                if ([v17 length])
                {
                  v18 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:?];
                  v19 = [v17 componentsSeparatedByCharactersInSet:?];

                  v20 = [HMIPoint alloc];
                  v21 = [v19 objectAtIndexedSubscript:?];
                  [v21 doubleValue];
                  v22 = [v19 objectAtIndexedSubscript:?];
                  [v22 doubleValue];
                  v23 = [(HMIPoint *)v20 initWithPoint:?];

                  [array addObject:?];
                }
              }

              v14 = [v12 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v14);
          }

          v24 = [HMICameraActivityZone initWithPoints:"initWithPoints:isInclusion:" isInclusion:?];
          [v28 addObject:?];

          i = v31;
        }
      }

      v30 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v30);
  }

  return v28;
}

+ (void)submitCoreAnalyticsEvent:(id)event filteringLevel:(id)level numberOfDetectedObjects:(id)objects
{
  v7 = MEMORY[0x277CBEB38];
  objectsCopy = objects;
  levelCopy = level;
  eventCopy = event;
  dictionary = [v7 dictionary];
  [dictionary setObject:? forKeyedSubscript:?];

  [dictionary setObject:? forKeyedSubscript:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v13 = dictionary;
  v12 = dictionary;
  AnalyticsSendEventLazy();
}

+ (void)generateAndSubmitStats:(id)stats filteredEvents:(id)events motionDetection:(id)detection activityZones:(id)zones
{
  zonesCopy = zones;
  detectionCopy = detection;
  eventsCopy = events;
  statsCopy = stats;
  firstObject = [zonesCopy firstObject];
  [firstObject isInclusion];

  v15 = MEMORY[0x277CCABB0];
  [statsCopy count];
  v16 = [v15 numberWithUnsignedInteger:?];
  [self submitCoreAnalyticsEvent:? filteringLevel:? numberOfDetectedObjects:?];

  v17 = MEMORY[0x277CCABB0];
  [eventsCopy count];

  v18 = [v17 numberWithUnsignedInteger:?];
  [self submitCoreAnalyticsEvent:? filteringLevel:? numberOfDetectedObjects:?];

  v19 = [self filterEvents:? withActivityZones:? motionDetection:? insetPercentageInclusion:? insetPercentageExclusion:?];
  v20 = MEMORY[0x277CCABB0];
  [v19 count];
  v21 = [v20 numberWithUnsignedInteger:?];
  [self submitCoreAnalyticsEvent:? filteringLevel:? numberOfDetectedObjects:?];

  v24 = [self filterEvents:? withActivityZones:? motionDetection:? insetPercentageInclusion:? insetPercentageExclusion:?];

  v22 = MEMORY[0x277CCABB0];
  [v24 count];
  v23 = [v22 numberWithUnsignedInteger:?];
  [self submitCoreAnalyticsEvent:? filteringLevel:? numberOfDetectedObjects:?];
}

@end
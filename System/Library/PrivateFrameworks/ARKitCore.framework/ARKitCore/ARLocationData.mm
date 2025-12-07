@interface ARLocationData
+ (BOOL)isAltitudeValid:(id)valid;
+ (id)grabNextFromReader:(id)reader timestamp:(double *)timestamp;
- (ARLocationData)initWithCoder:(id)coder;
- (ARLocationData)initWithDictionary:(id)dictionary;
- (ARLocationData)initWithLocation:(id)location;
- (ARLocationData)initWithLocation:(id)location timestamp:(double)timestamp secure:(BOOL)secure;
- (ARLocationData)initWithMetadataWrapper:(id)wrapper;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (__n128)ecefFromlocation;
- (__n128)locationECEF;
- (__n128)locationLLA;
- (double)enuFromLocation:(_OWORD *)location@<X8>;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeToDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)setLocation:(id)location;
@end

@implementation ARLocationData

- (ARLocationData)initWithLocation:(id)location
{
  locationCopy = location;
  v11.receiver = self;
  v11.super_class = ARLocationData;
  v5 = [(ARLocationData *)&v11 init];
  if (v5)
  {
    if (initWithLocation__onceToken != -1)
    {
      [ARLocationData initWithLocation:];
    }

    v6 = mach_absolute_time();
    v7 = *&initWithLocation__machTimeFactor;
    v8 = objc_msgSend_timestamp(locationCopy);
    [v8 timeIntervalSinceNow];
    v5->_timestamp = v9 + v6 * v7;

    v5->_secure = 1;
    [(ARLocationData *)v5 setLocation:locationCopy];
  }

  return v5;
}

double __35__ARLocationData_initWithLocation___block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 * 0.000000001;
  initWithLocation__machTimeFactor = *&result;
  return result;
}

- (ARLocationData)initWithLocation:(id)location timestamp:(double)timestamp secure:(BOOL)secure
{
  result = [(ARLocationData *)self initWithLocation:location];
  if (result)
  {
    result->_timestamp = timestamp;
    result->_secure = secure;
  }

  return result;
}

- (void)setLocation:(id)location
{
  v42 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = [locationCopy copy];
  location = self->_location;
  self->_location = v5;

  [locationCopy altitudeWgs84];
  v32 = v7;
  if ([locationCopy isAltitudeWgs84Available])
  {
    [locationCopy altitudeWgs84];
    v9 = v8;
    [locationCopy altitude];
    self->_undulation = v9 - v10;
  }

  else
  {
    self->_undulation = NAN;
    if (_ARLogTechnique_onceToken_17 != -1)
    {
      [ARLocationData setLocation:];
    }

    v11 = _ARLogTechnique_logObj_17;
    if (os_log_type_enabled(_ARLogTechnique_logObj_17, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [locationCopy coordinate];
      v16 = v15;
      [locationCopy coordinate];
      *buf = 138544131;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2049;
      *&buf[24] = v16;
      LOWORD(v36) = 2049;
      *(&v36 + 2) = v17;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Getting fallback undulation for location: %{private}.06f, %{private}.06f", buf, 0x2Au);
    }

    [locationCopy coordinate];
    v20 = ARGetFallbackUndulationValue(v18, v19);
    self->_undulation = v20;
    *&v21 = ARMSLToWGS84Altitude(*&v32, v20);
    v32 = v21;
  }

  [locationCopy coordinate];
  v31 = v22;
  [locationCopy coordinate];
  *&v23 = v31;
  *(&v23 + 1) = v24;
  *self->_locationLLA = v23;
  *&self->_locationLLA[16] = v32;
  *buf = v23;
  *&buf[16] = v32;
  ARLLAToECEF(v34);
  v25 = v34[1];
  *self->_locationECEF = v34[0];
  *&self->_locationECEF[16] = v25;
  v26 = *&self->_locationLLA[16];
  v33[0] = *self->_locationLLA;
  v33[1] = v26;
  ARAnchorToECEFTransform(v33, buf);
  v27 = v39;
  *&self[1]._locationLLA[16] = v38;
  *self[1]._locationECEF = v27;
  v28 = v41;
  *&self[1]._locationECEF[16] = v40;
  *&self[2].super.isa = v28;
  v29 = *&buf[16];
  *&self[1].super.isa = *buf;
  *&self[1]._timestamp = v29;
  v30 = v37;
  *&self[1]._undulation = v36;
  *self[1]._locationLLA = v30;
}

- (double)enuFromLocation:(_OWORD *)location@<X8>
{
  if (a3)
  {
    objc_msgSend_locationECEF(a3, a2, d0_0, a6, a5.n128_f64[0]);
  }

  ARECEFToENU(v10);
  result = *v10;
  v9 = v10[1];
  *location = v10[0];
  location[1] = v9;
  return result;
}

+ (BOOL)isAltitudeValid:(id)valid
{
  validCopy = valid;
  [validCopy altitude];
  [validCopy verticalAccuracy];
  v5 = v4 >= 0.0;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_timestamp(self);
  [coderCopy encodeDouble:@"timestamp" forKey:?];
  [coderCopy encodeObject:self->_location forKey:@"location"];
}

- (ARLocationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"timestamp"];
  v6 = v5;
  v7 = [coderCopy decodeObjectForKey:@"location"];

  v8 = [(ARLocationData *)self initWithLocation:v7];
  [(ARLocationData *)v8 setTimestamp:v6];
  v8->_secure = 0;

  return v8;
}

- (id)encodeToDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_location requiringSecureCoding:1 error:0];
  v4 = [v3 base64EncodedStringWithOptions:1];
  v9[0] = @"timestamp";
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_timestamp(self);
  v6 = [v5 numberWithDouble:?];
  v9[1] = @"location";
  v10[0] = v6;
  v10[1] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (ARLocationData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"location"];

  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F4208A80];

  v10 = [v9 stringByReplacingOccurrencesOfString:@"\r" withString:&stru_1F4208A80];

  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v10 options:1];
  v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];
  v13 = [(ARLocationData *)self initWithLocation:v12];
  [(ARLocationData *)v13 setTimestamp:v7];
  v13->_secure = 0;

  return v13;
}

- (ARLocationData)initWithMetadataWrapper:(id)wrapper
{
  v7 = 0.0;
  v4 = [MEMORY[0x1E698BEB0] decodeCLLocation:wrapper timestamp:&v7];
  v5 = [(ARLocationData *)self initWithLocation:v4];
  [(ARLocationData *)v5 setTimestamp:v7];
  v5->_secure = 0;

  return v5;
}

+ (id)grabNextFromReader:(id)reader timestamp:(double *)timestamp
{
  v36 = *MEMORY[0x1E69E9840];
  readerCopy = reader;
  array = [MEMORY[0x1E695DF70] array];
  v7 = objc_autoreleasePoolPush();
  v8 = *(MEMORY[0x1E6960CA8] + 16);
  v32 = *MEMORY[0x1E6960CA8];
  v33 = v8;
  v34 = *(MEMORY[0x1E6960CA8] + 32);
  v31 = 0;
  v9 = [readerCopy grabNextCLLocation:&v32 location:0 timestamps:&v31];
  v10 = v31;
  v11 = [v9 count];
  v12 = [v10 count];
  if (v11 != v12)
  {
    if (ARShouldUseLogTypeError_onceToken_31 != -1)
    {
      [ARLocationData setLocation:];
    }

    v20 = ARShouldUseLogTypeError_internalOSVersion_31;
    v21 = _ARLogGeneral_22(v12);
    v22 = v21;
    if (v20 == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        LODWORD(time.value) = 138543362;
        *(&time.value + 4) = v24;
        v25 = "%{public}@ error: Couldn't get timestamps for location data.";
        v26 = v22;
        v27 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_1C241C000, v26, v27, v25, &time, 0xCu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v24 = NSStringFromClass(v28);
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v24;
      v25 = "Error: %{public}@ error: Couldn't get timestamps for location data.";
      v26 = v22;
      v27 = OS_LOG_TYPE_INFO;
      goto LABEL_13;
    }

    v29 = array;
    objc_autoreleasePoolPop(v7);
    goto LABEL_15;
  }

  if ([v9 count])
  {
    v13 = 0;
    do
    {
      v14 = [v9 objectAtIndex:v13];
      v15 = [v10 objectAtIndex:v13];
      [v15 doubleValue];
      v17 = v16;

      v18 = [objc_alloc(objc_opt_class()) initWithLocation:v14 timestamp:0 secure:v17];
      [array addObject:v18];

      ++v13;
    }

    while ([v9 count] > v13);
  }

  *&time.value = v32;
  time.epoch = v33;
  *timestamp = CMTimeGetSeconds(&time);

  objc_autoreleasePoolPop(v7);
  v19 = array;
LABEL_15:

  return array;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ARLocationData allocWithZone:?], "initWithLocation:", self->_location];
  objc_msgSend_timestamp(self);
  [(ARLocationData *)v4 setTimestamp:?];
  v4->_secure = self->_secure;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    if (self->_location == v5[3])
    {
      v9 = 1;
    }

    else
    {
      objc_msgSend_timestamp(self);
      v7 = v6;
      objc_msgSend_timestamp(v5);
      v9 = vabdd_f64(v7, v8) < 2.22044605e-16;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  objc_msgSend_timestamp(self);
  v8 = [v6 appendFormat:@" timestamp=%f", v7];
  if (ARInternalOSBuild(v8, v9))
  {
    [(CLLocation *)self->_location coordinate];
    v11 = v10;
    [(CLLocation *)self->_location coordinate];
    [v6 appendFormat:@" coordinates=(%f, %f)", v11, v12];
    [(CLLocation *)self->_location altitude];
    [v6 appendFormat:@" altitude=%.3f m", v13];
    [(CLLocation *)self->_location horizontalAccuracy];
    [v6 appendFormat:@" horizontalAccuracy=%.1f m", v14];
    [(CLLocation *)self->_location verticalAccuracy];
    [v6 appendFormat:@" verticalAccuracy=%.1fm", v15];
    [(CLLocation *)self->_location altitudeWgs84];
    [v6 appendFormat:@" altitudeWgs84=%.3fm", v16];
    if ([(CLLocation *)self->_location isAltitudeWgs84Available])
    {
      v17 = @"yes";
    }

    else
    {
      v17 = @"no";
    }

    [v6 appendFormat:@" wgs84Available=%@", v17];
    [(CLLocation *)self->_location horizontalAccuracy];
    [v6 appendFormat:@" accuracy=%.02fm", v18];
    if ([(CLLocation *)self->_location isCoordinateFused])
    {
      v19 = @"yes";
    }

    else
    {
      v19 = @"no";
    }

    [v6 appendFormat:@" fused=%@", v19];
    if (self->_secure)
    {
      v20 = @"yes";
    }

    else
    {
      v20 = @"no";
    }

    [v6 appendFormat:@" isSecure=%@", v20];
  }

  [v6 appendString:@">"];

  return v6;
}

- (__n128)locationLLA
{
  result = self[3];
  a2[1].n128_u64[0] = self[4].n128_u64[0];
  *a2 = result;
  return result;
}

- (__n128)locationECEF
{
  result = self[5];
  a2[1].n128_u64[0] = self[6].n128_u64[0];
  *a2 = result;
  return result;
}

- (__n128)ecefFromlocation
{
  v2 = *(self + 192);
  *(a2 + 64) = *(self + 176);
  *(a2 + 80) = v2;
  v3 = *(self + 224);
  *(a2 + 96) = *(self + 208);
  *(a2 + 112) = v3;
  v4 = *(self + 128);
  *a2 = *(self + 112);
  *(a2 + 16) = v4;
  result = *(self + 144);
  v6 = *(self + 160);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

@end
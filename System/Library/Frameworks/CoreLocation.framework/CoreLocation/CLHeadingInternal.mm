@interface CLHeadingInternal
- (CLHeadingInternal)initWithClientHeading:(id *)heading;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLHeadingInternal

- (CLHeadingInternal)initWithClientHeading:(id *)heading
{
  v9.receiver = self;
  v9.super_class = CLHeadingInternal;
  result = [(CLHeadingInternal *)&v9 init];
  if (result)
  {
    v5 = *&heading->var0;
    *&result->fHeading.z = *&heading->var2;
    *&result->fHeading.x = v5;
    v6 = *&heading->var4;
    v7 = *&heading->var6;
    v8 = *&heading->var8;
    *&result->fHeading.calibration = *&heading->var10;
    *&result->fHeading.magnitude = v8;
    *&result->fHeading.timestamp = v7;
    *&result->fHeading.trueHeading = v6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v9 = *&self->fHeading.timestamp;
  v14[2] = *&self->fHeading.trueHeading;
  v14[3] = v9;
  v14[4] = *&self->fHeading.magnitude;
  v15 = *&self->fHeading.calibration;
  v10 = *&self->fHeading.z;
  v14[0] = *&self->fHeading.x;
  v14[1] = v10;
  return objc_msgSend_initWithClientHeading_(v8, v11, v14, v12);
}

@end
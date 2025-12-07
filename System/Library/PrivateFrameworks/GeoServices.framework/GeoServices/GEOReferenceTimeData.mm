@interface GEOReferenceTimeData
- (double)currentReferenceTime;
- (timeval)kernBootTime;
@end

@implementation GEOReferenceTimeData

- (double)currentReferenceTime
{
  [(GEOReferenceTimeData *)self refTime];
  v4 = v3;
  geoTMGetKernelMonotonicClock();
  v6 = v4 + v5;
  [(GEOReferenceTimeData *)self kernTime];
  return v6 - v7;
}

- (timeval)kernBootTime
{
  v2 = *&self->_kernBoottime.tv_usec;
  tv_sec = self->_kernBoottime.tv_sec;
  result.tv_usec = v2;
  result.tv_sec = tv_sec;
  return result;
}

@end
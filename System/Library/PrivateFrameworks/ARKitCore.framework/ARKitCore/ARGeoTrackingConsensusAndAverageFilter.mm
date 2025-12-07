@interface ARGeoTrackingConsensusAndAverageFilter
- (ARGeoTrackingConsensusAndAverageFilter)initWithENUFromECEF:(uint64_t)f maxHistory:(_OWORD *)history minInlierScore:(int)score;
- (BOOL)getCurrentENUFromVIO:(double)o ENUFromVIO:(id *)iO;
- (void)dealloc;
@end

@implementation ARGeoTrackingConsensusAndAverageFilter

- (ARGeoTrackingConsensusAndAverageFilter)initWithENUFromECEF:(uint64_t)f maxHistory:(_OWORD *)history minInlierScore:(int)score
{
  v6.receiver = self;
  v6.super_class = ARGeoTrackingConsensusAndAverageFilter;
  if ([(ARGeoTrackingConsensusAndAverageFilter *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    v4 = impl[34];
    if (v4)
    {
      impl[35] = v4;
      operator delete(v4);
    }

    MEMORY[0x1C691A790](impl, 0x1020C40627BD049);
  }

  self->_impl = 0;
  v5.receiver = self;
  v5.super_class = ARGeoTrackingConsensusAndAverageFilter;
  [(ARGeoTrackingConsensusAndAverageFilter *)&v5 dealloc];
}

- (BOOL)getCurrentENUFromVIO:(double)o ENUFromVIO:(id *)iO
{
  impl = self->_impl;
  v5 = impl[128];
  if (v5 == 1)
  {
    memmove(iO, impl, 0x80uLL);
  }

  return v5;
}

@end
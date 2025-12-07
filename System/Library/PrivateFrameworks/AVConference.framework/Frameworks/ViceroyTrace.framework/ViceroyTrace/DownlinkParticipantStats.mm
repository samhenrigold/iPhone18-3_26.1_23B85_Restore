@interface DownlinkParticipantStats
- (DownlinkParticipantStats)initWithThermalLevel:(int)level andTime:(double)time useMLEnhance:(BOOL)enhance;
- (void)dealloc;
@end

@implementation DownlinkParticipantStats

- (DownlinkParticipantStats)initWithThermalLevel:(int)level andTime:(double)time useMLEnhance:(BOOL)enhance
{
  v7 = *&level;
  v13.receiver = self;
  v13.super_class = DownlinkParticipantStats;
  v8 = [(DownlinkParticipantStats *)&v13 init];
  if (v8)
  {
    v8->_streamGroupStats = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:11];
    v9 = 1;
    do
    {
      v10 = objc_alloc_init(StreamGroupStats);
      -[NSMutableDictionary setObject:forKeyedSubscript:](v8->_streamGroupStats, "setObject:forKeyedSubscript:", v10, [MEMORY[0x277CCABA8] numberWithInt:v9]);

      v9 = (v9 + 1);
    }

    while (v9 != 11);
    if (enhance)
    {
      v11 = objc_alloc_init(VCDataMLEnhance);
      v8->_mlEnhance = v11;
      [(VCDataMLEnhance *)v11 updateThermalLevel:v7 withTime:time];
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownlinkParticipantStats;
  [(DownlinkParticipantStats *)&v3 dealloc];
}

@end
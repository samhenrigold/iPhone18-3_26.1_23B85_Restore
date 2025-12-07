@interface MTRMetricData
- (MTRMetricData)init;
- (MTRMetricData)initWithMetricEvent:(const MetricEvent *)event;
- (id)description;
- (void)setDurationFromMetricData:(id)data;
@end

@implementation MTRMetricData

- (MTRMetricData)init
{
  v3 = 2;
  v4 = "";
  v5 = 0;
  return [(MTRMetricData *)self initWithMetricEvent:&v3];
}

- (MTRMetricData)initWithMetricEvent:(const MetricEvent *)event
{
  v17.receiver = self;
  v17.super_class = MTRMetricData;
  v4 = [(MTRMetricData *)&v17 init];
  v6 = v4;
  if (v4)
  {
    var0 = event->var0;
    v4->_type = event->var0;
    if (var0 >= 2)
    {
      if (var0 != 2)
      {
        goto LABEL_7;
      }

      v8 = 0;
    }

    else
    {
      v8 = (*(*off_27DF765E8 + 3))(off_27DF765E8);
    }

    v6->_timePoint.__rep_ = v8;
LABEL_7:
    v9 = *(&event->var2 + 4);
    if (v9 == 3)
    {
      v12 = MEMORY[0x277CCABB0];
      sub_2393ABB38(event, v5);
      v10 = [v12 numberWithUnsignedInteger:v13];
      v11 = 32;
    }

    else
    {
      if (v9 == 2)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{sub_2393ABB14(event, v5)}];
      }

      else
      {
        if (v9 != 1)
        {
LABEL_15:
          v15 = v6;
          goto LABEL_16;
        }

        v10 = [MEMORY[0x277CCABB0] numberWithInteger:{sub_2393ABAF0(event, v5)}];
      }

      v11 = 24;
    }

    v14 = *(&v6->super.isa + v11);
    *(&v6->super.isa + v11) = v10;

    goto LABEL_15;
  }

LABEL_16:

  return v6;
}

- (void)setDurationFromMetricData:(id)data
{
  dataCopy = data;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:(self->_timePoint.__rep_ - dataCopy[1]) / 1000000.0];
  duration = self->_duration;
  self->_duration = v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  type = self->_type;
  value = [(MTRMetricData *)self value];
  errorCode = [(MTRMetricData *)self errorCode];
  duration = [(MTRMetricData *)self duration];
  v8 = [v3 stringWithFormat:@"<MTRMetricData: Type %d, Value = %@, Error Code = %@, Duration = %@ us>", type, value, errorCode, duration];

  return v8;
}

@end
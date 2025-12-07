@interface HUDUserClientWindow
- (CGRect)frame;
- (HUDUserClientWindow)initWithFrame:(CGRect)frame;
- (id)getMetric:(id)metric;
- (void)addMetric:(id)metric after:(id)after;
- (void)removeMetrics:(id)metrics;
- (void)requestMetrics:(id)metrics;
@end

@implementation HUDUserClientWindow

- (HUDUserClientWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = HUDUserClientWindow;
  v7 = [(HUDUserClientWindow *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_frame.origin.x = x;
    v7->_frame.origin.y = y;
    v7->_frame.size.width = width;
    v7->_frame.size.height = height;
    v9 = objc_opt_new();
    map = v8->_map;
    v8->_map = v9;

    v11 = objc_opt_new();
    metrics = v8->_metrics;
    v8->_metrics = v11;
  }

  return v8;
}

- (id)getMetric:(id)metric
{
  metricCopy = metric;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_map objectForKeyedSubscript:metricCopy];
  v7 = v6;
  if (v6 && (v8 = [v6 descriptor], (v8[48] & 2) != 0) && (MTLHudIsInternalInstall(v8, v9) & 1) == 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  objc_sync_exit(selfCopy);

  return v10;
}

- (void)addMetric:(id)metric after:(id)after
{
  metricCopy = metric;
  afterCopy = after;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = -[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_map, "objectForKeyedSubscript:", *([metricCopy descriptor] + 1));

  if (v8)
  {
    NSLog(@"[libMTLHud] Metric %s already exist", [*(objc_msgSend(metricCopy "descriptor") + 1)]);
  }

  metrics = selfCopy->_metrics;
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *([metricCopy descriptor] + 10));
  v11 = [(NSMutableDictionary *)metrics objectForKeyedSubscript:v10];

  if (!v11)
  {
    if ((v11 = -[HUDUserClientMetricGroup initWithCategory:]([HUDUserClientMetricGroup alloc], "initWithCategory:", *([metricCopy descriptor] + 10)), v12 = selfCopy->_metrics, +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(objc_msgSend(metricCopy, "descriptor") + 10)), v13 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary setObject:forKeyedSubscript:](v12, "setObject:forKeyedSubscript:", v11, v13), v13, v14 = -[HUDUserClientMetricGroup category](v11, "category"), v14 == 2) && (*(HUDGetGlobalConfig(v14, v15) + 15) & 1) != 0 || (v16 = -[HUDUserClientMetricGroup category](v11, "category"), v16 == 3) && *(HUDGetGlobalConfig(v16, v17) + 14) == 1)
    {
      [(HUDUserClientMetricGroup *)v11 setEnabled:0];
    }
  }

  if (afterCopy)
  {
    for (i = 0; ; ++i)
    {
      metrics = [(HUDUserClientMetricGroup *)v11 metrics];
      v20 = [metrics count];

      if (i >= v20)
      {
        break;
      }

      metrics2 = [(HUDUserClientMetricGroup *)v11 metrics];
      v22 = [metrics2 objectAtIndexedSubscript:i];
      v23 = [*(objc_msgSend(v22 "descriptor") + 1)];

      if (v23)
      {
        if (i != 0x7FFFFFFFFFFFFFFFLL)
        {
          metrics3 = [(HUDUserClientMetricGroup *)v11 metrics];
          v25 = [metrics3 count] - 1;

          if (i < v25)
          {
            metrics4 = [(HUDUserClientMetricGroup *)v11 metrics];
            [metrics4 insertObject:metricCopy atIndex:i + 1];
            goto LABEL_19;
          }
        }

        break;
      }
    }
  }

  metrics4 = [(HUDUserClientMetricGroup *)v11 metrics];
  [metrics4 addObject:metricCopy];
LABEL_19:

  -[NSMutableDictionary setObject:forKeyedSubscript:](selfCopy->_map, "setObject:forKeyedSubscript:", metricCopy, *([metricCopy descriptor] + 1));
  objc_sync_exit(selfCopy);
}

- (void)removeMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_map objectForKeyedSubscript:metricsCopy];
  if (v5)
  {
    [(NSMutableDictionary *)selfCopy->_map removeObjectForKey:metricsCopy];
    metrics = selfCopy->_metrics;
    v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *([v5 descriptor] + 10));
    v8 = [(NSMutableDictionary *)metrics objectForKeyedSubscript:v7];

    metrics = [v8 metrics];
    [metrics removeObject:v5];
  }

  objc_sync_exit(selfCopy);
}

- (void)requestMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  (metricsCopy)[2](metricsCopy, selfCopy->_metrics);
  objc_sync_exit(selfCopy);
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
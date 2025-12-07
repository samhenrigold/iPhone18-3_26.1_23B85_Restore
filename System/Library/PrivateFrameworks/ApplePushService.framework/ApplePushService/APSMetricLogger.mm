@interface APSMetricLogger
+ (id)defaultLogger;
+ (unsigned)dualChannelStateFrom:(id)from isPiggyBacking:(BOOL)backing;
+ (void)connectionConnectedWithDuration:(id)duration interface:(int64_t)interface linkQuality:(id)quality dualChannelState:(unsigned int)state dnsResolutionTimeMilliseconds:(id)milliseconds tlsHandshakeTimeMilliseconds:(id)timeMilliseconds;
+ (void)connectionDisconnected:(int64_t)disconnected linkQuality:(id)quality reason:(unsigned int)reason;
+ (void)connectionEncounteredSSLError:(unsigned int)error interface:(int64_t)interface;
+ (void)filterSent:(id)sent connectionType:(int64_t)type;
- (APSMetricLogger)initWithDomain:(id)domain;
- (void)logMetric:(id)metric;
- (void)logMetricWithFailures:(id)failures;
@end

@implementation APSMetricLogger

- (APSMetricLogger)initWithDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = APSMetricLogger;
  v6 = [(APSMetricLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, domain);
  }

  return v7;
}

+ (id)defaultLogger
{
  v2 = [[self alloc] initWithDomain:@"com.apple.APSD"];

  return v2;
}

- (void)logMetric:(id)metric
{
  metricCopy = metric;
  domain = [(APSMetricLogger *)self domain];
  name = [metricCopy name];
  v7 = [NSString stringWithFormat:@"%@.%@", domain, name];

  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [metricCopy name];
    dictionaryRepresentation = [metricCopy dictionaryRepresentation];
    *buf = 138412546;
    v14 = name2;
    v15 = 2112;
    v16 = dictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending %@ event to CA: %@", buf, 0x16u);
  }

  v12 = metricCopy;
  v11 = metricCopy;
  AnalyticsSendEventLazy();
}

- (void)logMetricWithFailures:(id)failures
{
  failuresCopy = failures;
  [(APSMetricLogger *)self logMetric:failuresCopy];
  failureMetric = [failuresCopy failureMetric];

  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [failureMetric name];
    dictionaryRepresentation = [failureMetric dictionaryRepresentation];
    *buf = 138412546;
    v15 = name;
    v16 = 2112;
    v17 = dictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending %@ event to CA: %@", buf, 0x16u);
  }

  domain = [(APSMetricLogger *)self domain];
  name2 = [failureMetric name];
  v11 = [NSString stringWithFormat:@"%@.%@", domain, name2];

  v13 = failureMetric;
  v12 = failureMetric;
  AnalyticsSendExplodingEventLazy();
}

+ (void)filterSent:(id)sent connectionType:(int64_t)type
{
  sentCopy = sent;
  kAPSPushFilterSentMetricName = [NSString stringWithFormat:@"%@.%@", @"com.apple.APSD", kAPSPushFilterSentMetricName];
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [sentCopy topicGroupChange]);
  if (v8)
  {
    CFDictionarySetValue(v7, @"changeType", v8);
  }

  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [sentCopy reason]);
  if (v9)
  {
    CFDictionarySetValue(v7, @"reason", v9);
  }

  v10 = [NSNumber numberWithInteger:type];
  if (v10)
  {
    CFDictionarySetValue(v7, @"connectionType", v10);
  }

  triggeringTopic = [sentCopy triggeringTopic];
  if (triggeringTopic)
  {
    CFDictionarySetValue(v7, @"triggeringTopic", triggeringTopic);
  }

  v12 = +[APSLog courier];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending filter event to CA: %@", buf, 0xCu);
  }

  AnalyticsSendEvent();
}

+ (void)connectionConnectedWithDuration:(id)duration interface:(int64_t)interface linkQuality:(id)quality dualChannelState:(unsigned int)state dnsResolutionTimeMilliseconds:(id)milliseconds tlsHandshakeTimeMilliseconds:(id)timeMilliseconds
{
  v10 = *&state;
  durationCopy = duration;
  qualityCopy = quality;
  millisecondsCopy = milliseconds;
  timeMillisecondsCopy = timeMilliseconds;
  kAPSPushConnectionConnectedMetricName = [NSString stringWithFormat:@"%@.%@", @"com.apple.APSD", kAPSPushConnectionConnectedMetricName];
  v18 = +[NSMutableDictionary dictionary];
  v19 = v18;
  if (millisecondsCopy)
  {
    CFDictionarySetValue(v18, @"dnsResolutionTimeMilliseconds", millisecondsCopy);
  }

  if (timeMillisecondsCopy)
  {
    CFDictionarySetValue(v19, @"tlsHandshakeTimeMilliseconds", timeMillisecondsCopy);
  }

  if (durationCopy)
  {
    CFDictionarySetValue(v19, @"connectDuration", durationCopy);
  }

  if (qualityCopy)
  {
    CFDictionarySetValue(v19, @"linkQuality", qualityCopy);
  }

  v20 = [NSNumber numberWithUnsignedInt:v10];
  if (v20)
  {
    CFDictionarySetValue(v19, @"dualChannelState", v20);
  }

  v21 = [NSNumber numberWithInteger:interface];
  if (v21)
  {
    CFDictionarySetValue(v19, @"interface", v21);
  }

  v22 = +[APSLog courier];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending filter event to CA: %@", buf, 0xCu);
  }

  AnalyticsSendEvent();
}

+ (void)connectionDisconnected:(int64_t)disconnected linkQuality:(id)quality reason:(unsigned int)reason
{
  v5 = *&reason;
  qualityCopy = quality;
  kAPSPushConnectionDisconnectedMetricName = [NSString stringWithFormat:@"%@.%@", @"com.apple.APSD", kAPSPushConnectionDisconnectedMetricName];
  v9 = +[NSMutableDictionary dictionary];
  v10 = [NSNumber numberWithUnsignedInt:v5];
  if (v10)
  {
    CFDictionarySetValue(v9, @"disconnectReason", v10);
  }

  if (qualityCopy)
  {
    CFDictionarySetValue(v9, @"linkQuality", qualityCopy);
  }

  v11 = [NSNumber numberWithInteger:disconnected];
  if (v11)
  {
    CFDictionarySetValue(v9, @"interface", v11);
  }

  v12 = +[APSLog courier];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending disconnect event to CA: %@", buf, 0xCu);
  }

  AnalyticsSendEvent();
}

+ (void)connectionEncounteredSSLError:(unsigned int)error interface:(int64_t)interface
{
  v5 = *&error;
  kAPSPushConnectionSSLError = [NSString stringWithFormat:@"%@.%@", @"com.apple.APSD", kAPSPushConnectionSSLError];
  v7 = +[NSMutableDictionary dictionary];
  v8 = [NSNumber numberWithUnsignedInt:v5];
  if (v8)
  {
    CFDictionarySetValue(v7, @"sslError", v8);
  }

  v9 = [NSNumber numberWithInteger:interface];
  if (v9)
  {
    CFDictionarySetValue(v7, @"interface", v9);
  }

  v10 = +[APSLog courier];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending disconnect event to CA: %@", buf, 0xCu);
  }

  AnalyticsSendEvent();
}

+ (unsigned)dualChannelStateFrom:(id)from isPiggyBacking:(BOOL)backing
{
  backingCopy = backing;
  fromCopy = from;
  v6 = fromCopy;
  if (fromCopy)
  {
    if ([fromCopy isConnectedOnInterface:0] && !objc_msgSend(v6, "isConnectedOnInterface:", 1))
    {
      v7 = 2;
    }

    else if (([v6 isConnectedOnInterface:0] & 1) != 0 || (objc_msgSend(v6, "isConnectedOnInterface:", 1) & 1) == 0)
    {
      if ([v6 countConnectedInterfaces] >= 2 && backingCopy)
      {
        v7 = 4;
      }

      else if ([v6 countConnectedInterfaces] < 2 || backingCopy)
      {
        v7 = 1;
      }

      else
      {
        v7 = 5;
      }
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
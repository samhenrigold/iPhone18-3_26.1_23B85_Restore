@interface AudioAnalyticsTestReporter
- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithNewReporterID;
- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithReporterID:(int64_t)d;
- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithSessionID:(unsigned int)d serviceType:(unsigned __int16)type;
@end

@implementation AudioAnalyticsTestReporter

- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithNewReporterID
{
  initWithNewReporterID = [(AudioAnalyticsTestReporter *)self initWithNewReporterID];
  v4.receiver = initWithNewReporterID;
  v4.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  [(AudioAnalyticsReporter *)&v4 setServiceType:11];
  return initWithNewReporterID;
}

- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithReporterID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  return [(AudioAnalyticsReporter *)&v5 initWithReporterID:d];
}

- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithSessionID:(unsigned int)d serviceType:(unsigned __int16)type
{
  typeCopy = type;
  v5 = *&d;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  return [(AudioAnalyticsReporter *)&v7 initWithSessionID:v5 serviceType:typeCopy];
}

@end
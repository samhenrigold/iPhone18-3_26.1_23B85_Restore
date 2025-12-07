@interface KTEligibilityStatusReporting
- (_TtC13transparencyd28KTEligibilityStatusReporting)init;
- (_TtC13transparencyd28KTEligibilityStatusReporting)initWithPath:(id)path idsReporting:(id)reporting eligibilitySupport:(id)support configBag:(id)bag error:(id *)error;
- (void)aggregateResultWithSamples:(int64_t)samples element:(NSString *)element completionHandler:(id)handler;
- (void)clearDatabaseWithCompletionHandler:(id)handler;
- (void)clearEligibilityOverridesWithCompletionHandler:(id)handler;
- (void)clearReportOverridesWithCompletionHandler:(id)handler;
- (void)closeDatabaseWithCompletionHandler:(id)handler;
- (void)dateFirstSeenWithError:(NSError *)error element:(NSString *)element completionHandler:(id)handler;
- (void)eligibilityCheckupMetricsWithSamples:(int64_t)samples interval:(double)interval completionHandler:(id)handler;
- (void)getContinuousDaysOfSuccessWithElement:(NSString *)element completionHandler:(id)handler;
- (void)getLatestResultForElementWithElement:(NSString *)element completionHandler:(id)handler;
- (void)hasOptedInByDefaultWithCompletionHandler:(id)handler;
- (void)iCloudAnalyticsEnabledWithCompletionHandler:(id)handler;
- (void)insertHasOptedInByDefaultWithValue:(int64_t)value completionHandler:(id)handler;
- (void)insertOSVersion:(NSString *)version completionHandler:(id)handler;
- (void)insertResultWithElement:(NSString *)element samplesAgo:(int64_t)ago success:(BOOL)success completionHandler:(id)handler;
- (void)insertTimeOfLastReportWithTime:(NSDate *)time completionHandler:(id)handler;
- (void)lastRecommendationWithCompletionHandler:(id)handler;
- (void)osVersionWithCompletionHandler:(id)handler;
- (void)reportWithCompletionHandler:(id)handler;
- (void)setLastIDSRecWithRecommendation:(BOOL)recommendation completionHandler:(id)handler;
- (void)setOverrideReportValueWithReportValue:(BOOL)value completionHandler:(id)handler;
- (void)setOverrideTimeBetweenReportsWithValue:(double)value completionHandler:(id)handler;
- (void)storeWithStatus:(_TtC13transparencyd25KTEligibilityStatusResult *)status completionHandler:(id)handler;
- (void)successInfoWithElement:(NSString *)element samples:(int64_t)samples completionHandler:(id)handler;
- (void)timeOfLastReportWithCompletionHandler:(id)handler;
@end

@implementation KTEligibilityStatusReporting

- (_TtC13transparencyd28KTEligibilityStatusReporting)initWithPath:(id)path idsReporting:(id)reporting eligibilitySupport:(id)support configBag:(id)bag error:(id *)error
{
  v10 = type metadata accessor for URL();
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100008300(v12, reporting, support, bag);
}

- (void)reportWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002DCB70;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DCB78;
  v12[5] = v11;

  sub_1000EAE9C(0, 0, v7, &unk_1002DCB80, v12);
}

- (void)storeWithStatus:(_TtC13transparencyd25KTEligibilityStatusResult *)status completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = status;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCB50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DCB58;
  v14[5] = v13;
  statusCopy = status;

  sub_1000EAE9C(0, 0, v9, &unk_1002DCB60, v14);
}

- (void)iCloudAnalyticsEnabledWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002DCB30;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DCB38;
  v12[5] = v11;

  sub_1000EAE9C(0, 0, v7, &unk_1002DCB40, v12);
}

- (void)getLatestResultForElementWithElement:(NSString *)element completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = element;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCB10;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DCB18;
  v14[5] = v13;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v9, &unk_1002DCB20, v14);
}

- (void)getContinuousDaysOfSuccessWithElement:(NSString *)element completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = element;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCAF0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DCAF8;
  v14[5] = v13;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v9, &unk_1002DCB00, v14);
}

- (void)successInfoWithElement:(NSString *)element samples:(int64_t)samples completionHandler:(id)handler
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = element;
  v13[3] = samples;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCAD0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1002DCAD8;
  v16[5] = v15;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v11, &unk_1002DCAE0, v16);
}

- (void)aggregateResultWithSamples:(int64_t)samples element:(NSString *)element completionHandler:(id)handler
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = samples;
  v13[3] = element;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DCAB0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1002DCAB8;
  v16[5] = v15;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v11, &unk_1002DCAC0, v16);
}

- (void)insertOSVersion:(NSString *)version completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = version;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCA90;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DCA98;
  v14[5] = v13;
  versionCopy = version;

  sub_1000EAE9C(0, 0, v9, &unk_1002DCAA0, v14);
}

- (void)osVersionWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002DCA70;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DCA78;
  v12[5] = v11;

  sub_1000EAE9C(0, 0, v7, &unk_1002DCA80, v12);
}

- (void)insertHasOptedInByDefaultWithValue:(int64_t)value completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = value;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DCA50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DCA58;
  v14[5] = v13;

  sub_1000EAE9C(0, 0, v9, &unk_1002DCA60, v14);
}

- (void)hasOptedInByDefaultWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002DCA30;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DCA38;
  v12[5] = v11;

  sub_1000EAE9C(0, 0, v7, &unk_1002DCA40, v12);
}

- (void)timeOfLastReportWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002DCA10;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DCA18;
  v12[5] = v11;

  sub_1000EAE9C(0, 0, v7, &unk_1002DCA20, v12);
}

- (void)lastRecommendationWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002DC9F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DC9F8;
  v12[5] = v11;

  sub_1000EAE9C(0, 0, v7, &unk_1002DCA00, v12);
}

- (void)dateFirstSeenWithError:(NSError *)error element:(NSString *)element completionHandler:(id)handler
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = error;
  v13[3] = element;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DC9D0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1002DC9D8;
  v16[5] = v15;
  errorCopy = error;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v11, &unk_1002DC9E0, v16);
}

- (void)clearEligibilityOverridesWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002DC9B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DC9B8;
  v12[5] = v11;

  sub_1000EAE9C(0, 0, v7, &unk_1002DC9C0, v12);
}

- (void)clearReportOverridesWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002DC990;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DC998;
  v12[5] = v11;

  sub_1000EAE9C(0, 0, v7, &unk_1002DC9A0, v12);
}

- (void)setOverrideReportValueWithReportValue:(BOOL)value completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = value;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC970;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DC978;
  v14[5] = v13;

  sub_1000EAE9C(0, 0, v9, &unk_1002DC980, v14);
}

- (void)setLastIDSRecWithRecommendation:(BOOL)recommendation completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = recommendation;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC950;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DC958;
  v14[5] = v13;

  sub_1000EAE9C(0, 0, v9, &unk_1002DC960, v14);
}

- (void)setOverrideTimeBetweenReportsWithValue:(double)value completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = value;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC930;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DC938;
  v14[5] = v13;

  sub_1000EAE9C(0, 0, v9, &unk_1002DC940, v14);
}

- (void)insertResultWithElement:(NSString *)element samplesAgo:(int64_t)ago success:(BOOL)success completionHandler:(id)handler
{
  v11 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = element;
  *(v15 + 24) = ago;
  *(v15 + 32) = success;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1002DC910;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1002DC918;
  v18[5] = v17;
  elementCopy = element;

  sub_1000EAE9C(0, 0, v13, &unk_1002DC920, v18);
}

- (void)insertTimeOfLastReportWithTime:(NSDate *)time completionHandler:(id)handler
{
  v7 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = time;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002DC8F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002DC8F8;
  v14[5] = v13;
  timeCopy = time;

  sub_1000EAE9C(0, 0, v9, &unk_1002DC900, v14);
}

- (void)clearDatabaseWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002DC8D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DC8D8;
  v12[5] = v11;

  sub_1000EAE9C(0, 0, v7, &unk_1002DC8E0, v12);
}

- (void)closeDatabaseWithCompletionHandler:(id)handler
{
  v5 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1002DC8B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1002DC8B8;
  v12[5] = v11;

  sub_1000EAE9C(0, 0, v7, &unk_1002DC8C0, v12);
}

- (void)eligibilityCheckupMetricsWithSamples:(int64_t)samples interval:(double)interval completionHandler:(id)handler
{
  v9 = sub_100095820(&qword_100383170, &qword_1002D78E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = samples;
  *(v13 + 24) = interval;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002DC868;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1002DC878;
  v16[5] = v15;

  sub_1000EAE9C(0, 0, v11, &unk_1002DC888, v16);
}

- (_TtC13transparencyd28KTEligibilityStatusReporting)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
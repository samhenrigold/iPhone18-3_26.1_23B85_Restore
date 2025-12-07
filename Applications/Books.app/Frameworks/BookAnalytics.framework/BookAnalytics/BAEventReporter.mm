@interface BAEventReporter
+ (BAEventReporter)sharedReporter;
- (BAEventReporter)init;
- (int64_t)seriesTypeForContentID:(id)d;
- (void)emitAccountDidChangeEventWithTracker:(id)tracker type:(unint64_t)type reason:(unint64_t)reason;
- (void)emitAllInSeriesViewEventWithTracker:(id)tracker collectionID:(id)d collectionItemCount:(int64_t)count;
- (void)emitAnnotationActionEventWithTracker:(id)tracker contentData:(id)data viewData:(id)viewData;
- (void)emitBrowseCollectionScreenViewEventWithTracker:(id)tracker startDate:(id)date summaryData:(id)data;
- (void)emitCollectionDescriptionEventWithTracker:(id)tracker collectionID:(id)d;
- (void)emitCollectionScreenViewEventWithTracker:(id)tracker startDate:(id)date collectionID:(id)d collectionItemCount:(int64_t)count;
- (void)emitContextualActionSheetExposureEventWithTracker:(id)tracker startDate:(id)date propertyProvider:(id)provider;
- (void)emitDragDropEventWithContentIDs:(id)ds;
- (void)emitExitLinkTapEventWithTracker:(id)tracker url:(id)url;
- (void)emitGetStartedActionEventWithTracker:(id)tracker type:(int64_t)type;
- (void)emitInBookSearchEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData;
- (void)emitLibraryDataEditEventWithTracker:(id)tracker contentIDs:(id)ds actionType:(int64_t)type result:(BOOL)result;
- (void)emitLibraryViewEventWithTracker:(id)tracker startDate:(id)date librarySummary:(id)summary displayType:(int64_t)type sortType:(int64_t)sortType;
- (void)emitMarkAsFinishedEventWithTracker:(id)tracker contentData:(id)data markedData:(id)markedData;
- (void)emitNotificationEngagementEventWithTracker:(id)tracker engagementData:(id)data notificationData:(id)notificationData;
- (void)emitPurchaseAttemptEventWithTracker:(id)tracker contentData:(id)data purchaseData:(id)purchaseData upSellData:(id)sellData;
- (void)emitPurchaseFailEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker contentData:(BAContentData *)data purchaseData:(BAPurchaseData *)purchaseData upSellData:(BAUpSellData *)sellData failData:(BAPurchaseFailData *)failData completion:(id)completion;
- (void)emitPurchaseSuccessEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker contentData:(BAContentData *)data purchaseData:(BAPurchaseData *)purchaseData upSellData:(BAUpSellData *)sellData completion:(id)completion;
- (void)emitRatingEventWithTracker:(id)tracker rating:(id)rating contentID:(id)d contentAcquisitionType:(int64_t)type contentType:(int64_t)contentType supplementalContentCount:(id)count productionType:(int64_t)productionType;
- (void)emitReadEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker readingSessionData:(BAReadingSessionData *)data contentData:(BAContentData *)contentData readingSettingsData:(BAReadingSettingsData *)settingsData upSellData:(BAUpSellData *)sellData contentSettingsData:(BAContentSettingsData *)contentSettingsData doNotDisturbData:(BADoNotDisturbData *)disturbData startTime:(NSDate *)self0 completion:(id)self1;
- (void)emitReadingAutoNightSettingChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData isOn:(BOOL)on;
- (void)emitReadingBackgroundColorChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData backgroundColorData:(id)colorData;
- (void)emitReadingBrightnessChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData brightness:(int)brightness;
- (void)emitReadingFontChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontName:(id)name;
- (void)emitReadingFontSizeChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontSize:(float)size;
- (void)emitReadingOrientationChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData;
- (void)emitReadingScrollViewSettingChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontSize:(float)size isOn:(BOOL)on;
- (void)emitRemoveFromWantListEventWithTracker:(id)tracker contentData:(id)data;
- (void)emitRemoveFromWantListEventWithTracker:(id)tracker contentID:(id)d contentType:(int64_t)type;
- (void)emitScrubEventWithTracker:(id)tracker contentData:(id)data readingSettingsData:(id)settingsData startPosition:(id)position endPosition:(id)endPosition totalLength:(id)length;
- (void)emitShareEventWithTracker:(id)tracker propertyProvider:(id)provider;
- (void)emitShareSheetExposureEventWithTracker:(id)tracker startDate:(id)date propertyProvider:(id)provider;
- (void)emitUnifiedMessageActionEventWithTracker:(id)tracker startDate:(id)date messageType:(int64_t)type messageIdentifier:(id)identifier hasActionable:(BOOL)actionable actionIdentifier:(id)actionIdentifier placementName:(id)name;
- (void)emitUnifiedMessageExposureEventWithTracker:(id)tracker startDate:(id)date messageType:(int64_t)type messageIdentifier:(id)identifier hasActionable:(BOOL)actionable actionIdentifier:(id)actionIdentifier placementName:(id)name;
- (void)emitViewSupplementalContentWithTracker:(id)tracker contentID:(id)d sourceIsAction:(BOOL)action supplementalContentCount:(id)count;
- (void)emitWantListAddEventWithTracker:(id)tracker contentData:(id)data;
@end

@implementation BAEventReporter

- (void)emitCollectionDescriptionEventWithTracker:(id)tracker collectionID:(id)d
{
  v5 = sub_1E1780();
  v7 = v6;
  v8 = swift_allocObject();
  v8[1].super.isa = v5;
  *v8[1].dataProviders = v7;
  v9 = swift_allocObject();
  v9[1].super.isa = sub_4C768;
  *v9[1].dataProviders = v8;
  trackerCopy = tracker;

  sub_1E10C0();
  v8, v11, v12, v13, v14, v15, v16, v17;

  v9, v18, v19, v20, v21, v22, v23, v24;
}

- (void)emitLibraryDataEditEventWithTracker:(id)tracker contentIDs:(id)ds actionType:(int64_t)type result:(BOOL)result
{
  v10 = sub_1E18C0();
  selfCopy = self;
  trackerCopy = tracker;
  if (tracker)
  {
    goto LABEL_4;
  }

  v12 = sub_BFB78();
  if (v12)
  {
    trackerCopy = v12;
LABEL_4:
    v20 = swift_allocObject();
    v20[1].super.isa = v10;
    *v20[1].dataProviders = trackerCopy;
    v20[2].super.isa = type;
    v20[2].dataProviders[0] = result;
    v21 = swift_allocObject();
    v21[1].super.isa = sub_4C674;
    *v21[1].dataProviders = v20;
    trackerCopy2 = tracker;
    v23 = trackerCopy;

    sub_1E10C0();

    v20, v24, v25, v26, v27, v28, v29, v30;
    v21, v31, v32, v33, v34, v35, v36, v37;
    goto LABEL_5;
  }

  v10, v13, v14, v15, v16, v17, v18, v19;
LABEL_5:
}

- (void)emitMarkAsFinishedEventWithTracker:(id)tracker contentData:(id)data markedData:(id)markedData
{
  trackerCopy = tracker;
  dataCopy = data;
  markedDataCopy = markedData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC018emitMarkAsFinishedC05using4with10markedDatayAA9BATrackerCSg_AA014BridgedContentL0CAA0n6MarkedL0CSgtF_0(tracker, dataCopy, markedData);
}

- (void)emitRemoveFromWantListEventWithTracker:(id)tracker contentID:(id)d contentType:(int64_t)type
{
  v7 = sub_1E1780();
  v9 = v8;
  v10 = swift_allocObject();
  v10[1].super.isa = tracker;
  *v10[1].dataProviders = v7;
  v10[2].super.isa = v9;
  *v10[2].dataProviders = type;
  v11 = swift_allocObject();
  v11[1].super.isa = sub_4C670;
  *v11[1].dataProviders = v10;
  trackerCopy = tracker;

  sub_1E10C0();
  v10, v13, v14, v15, v16, v17, v18, v19;

  v11, v20, v21, v22, v23, v24, v25, v26;
}

- (void)emitRemoveFromWantListEventWithTracker:(id)tracker contentData:(id)data
{
  trackerCopy = tracker;
  dataCopy = data;
  sub_A3F08(v27);
  v7 = swift_allocObject();
  v8 = v27[3];
  *(v7 + 48) = v27[2];
  *(v7 + 64) = v8;
  v9 = v27[5];
  *(v7 + 80) = v27[4];
  *(v7 + 96) = v9;
  v10 = v27[1];
  *(v7 + 16) = v27[0];
  *(v7 + 32) = v10;
  v11 = swift_allocObject();
  v11[1].super.isa = sub_4C6FC;
  *v11[1].dataProviders = v7;
  sub_13A5C(v27, &v26);

  sub_1E10C0();
  v7, v12, v13, v14, v15, v16, v17, v18;

  v11, v19, v20, v21, v22, v23, v24, v25;
  sub_14424(v27);
}

- (void)emitWantListAddEventWithTracker:(id)tracker contentData:(id)data
{
  trackerCopy = tracker;
  dataCopy = data;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC015emitWantListAddC05using4withyAA9BATrackerCSg_AA18BridgedContentDataCtF_0(tracker);
}

+ (BAEventReporter)sharedReporter
{
  if (qword_27D138 != -1)
  {
    swift_once();
  }

  v3 = qword_281AC0;

  return v3;
}

- (int64_t)seriesTypeForContentID:(id)d
{
  v4 = sub_1E1780();
  v6 = v5;
  selfCopy = self;
  v8 = sub_7DDD0(v4, v6);

  v6, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

- (void)emitAccountDidChangeEventWithTracker:(id)tracker type:(unint64_t)type reason:(unint64_t)reason
{
  trackerCopy = tracker;
  selfCopy = self;
  sub_7DEC8(trackerCopy, type, reason);
}

- (void)emitDragDropEventWithContentIDs:(id)ds
{
  v4 = sub_1E18C0();
  selfCopy = self;
  sub_7E138(v4);

  v4, v6, v7, v8, v9, v10, v11, v12;
}

- (void)emitInBookSearchEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  sub_A6684(&v35);
  v9 = v35;
  v10 = v36;
  v11 = v37;
  v12 = v38;
  v13 = v39;
  LOBYTE(data) = v40;
  sub_A3F08(v41);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 20) = v10;
  *(v14 + 24) = v11;
  *(v14 + 28) = v12;
  *(v14 + 29) = v13;
  *(v14 + 30) = data;
  v15 = v41[5];
  *(v14 + 96) = v41[4];
  *(v14 + 112) = v15;
  v16 = v41[3];
  *(v14 + 64) = v41[2];
  *(v14 + 80) = v16;
  v17 = v41[1];
  *(v14 + 32) = v41[0];
  *(v14 + 48) = v17;
  v18 = swift_allocObject();
  v18[1].super.isa = sub_7EEEC;
  *v18[1].dataProviders = v14;
  sub_13A5C(v41, v34);

  sub_1E10C0();
  v14, v19, v20, v21, v22, v23, v24, v25;

  v18, v26, v27, v28, v29, v30, v31, v32;
  sub_14424(v41);
}

- (void)emitRatingEventWithTracker:(id)tracker rating:(id)rating contentID:(id)d contentAcquisitionType:(int64_t)type contentType:(int64_t)contentType supplementalContentCount:(id)count productionType:(int64_t)productionType
{
  v14 = sub_1E1780();
  v16 = v15;
  trackerCopy = tracker;
  ratingCopy = rating;
  countCopy = count;
  selfCopy = self;
  sub_7CA0C(tracker, ratingCopy, v14, v16, type, contentType, count, productionType);

  v16, v21, v22, v23, v24, v25, v26, v27;
}

- (void)emitShareEventWithTracker:(id)tracker propertyProvider:(id)provider
{
  trackerCopy = tracker;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_7D39C(tracker, provider);

  swift_unknownObjectRelease();
}

- (BAEventReporter)init
{
  v3 = OBJC_IVAR___BAEventReporter_dataProviders;
  sub_3D68(&qword_281B08, &qword_1EDD08);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = _swiftEmptyArrayStorage;
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for EventReporter();
  return [(BAEventReporter *)&v6 init];
}

- (void)emitReadEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker readingSessionData:(BAReadingSessionData *)data contentData:(BAContentData *)contentData readingSettingsData:(BAReadingSettingsData *)settingsData upSellData:(BAUpSellData *)sellData contentSettingsData:(BAContentSettingsData *)contentSettingsData doNotDisturbData:(BADoNotDisturbData *)disturbData startTime:(NSDate *)self0 completion:(id)self1
{
  selfCopy = self;
  contentSettingsDataCopy = contentSettingsData;
  v16 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v16 - 8);
  v18 = &selfCopy - v17;
  v19 = _Block_copy(completion);
  v20 = swift_allocObject();
  v20[2] = tracker;
  v20[3] = data;
  v20[4] = contentData;
  v20[5] = settingsData;
  v21 = selfCopy;
  v22 = contentSettingsDataCopy;
  v20[6] = sellData;
  v20[7] = v22;
  v20[8] = disturbData;
  v20[9] = time;
  v20[10] = v19;
  v20[11] = v21;
  v23 = sub_1E1900();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_1EFF00;
  v24[5] = v20;
  v25 = swift_allocObject();
  v25[1].super.isa = 0;
  *v25[1].dataProviders = 0;
  v25[2].super.isa = &unk_1EFF08;
  *v25[2].dataProviders = v24;
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  settingsDataCopy = settingsData;
  sellDataCopy = sellData;
  v31 = contentSettingsDataCopy;
  disturbDataCopy = disturbData;
  timeCopy = time;
  v34 = selfCopy;
  v35 = sub_D0848(0, 0, v18, &unk_1EFF10, v25);
  v35, v36, v37, v38, v39, v40, v41, v42;
}

- (void)emitReadingAutoNightSettingChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData isOn:(BOOL)on
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC033emitReadingAutoNightSettingChangeC05using18readingSessionData07contentN04isOnyAA9BATrackerCSg_AA07BridgedfmN0CAA0s7ContentN0CSbtF_0(tracker, dataCopy, contentDataCopy, on);
}

- (void)emitReadingBackgroundColorChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData backgroundColorData:(id)colorData
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  colorDataCopy = colorData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC032emitReadingBackgroundColorChangeC05using18readingSessionData07contentM0010backgroundhM0yAA9BATrackerCSg_AA07BridgedflM0CAA0q7ContentM0CAA0qghM0CtF_0(tracker, dataCopy, contentDataCopy, colorDataCopy);
}

- (void)emitReadingBrightnessChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData brightness:(int)brightness
{
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  trackerCopy = tracker;
  if (!tracker)
  {
    v13 = sub_BFB78();
    if (!v13)
    {
      goto LABEL_5;
    }

    trackerCopy = v13;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = dataCopy;
  *(v14 + 24) = contentDataCopy;
  *(v14 + 32) = brightness;
  v15 = swift_allocObject();
  v15[1].super.isa = sub_92C94;
  *v15[1].dataProviders = v14;
  trackerCopy2 = tracker;
  v17 = dataCopy;
  v18 = contentDataCopy;
  v19 = trackerCopy2;

  sub_1E10C0();

  v14, v20, v21, v22, v23, v24, v25, v26;
  v15, v27, v28, v29, v30, v31, v32, v33;
LABEL_5:
}

- (void)emitReadingFontChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontName:(id)name
{
  v10 = sub_1E1780();
  v12 = v11;
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC021emitReadingFontChangeC05using18readingSessionData07contentL08fontNameyAA9BATrackerCSg_AA07BridgedfkL0CAA0q7ContentL0CSStF_0(tracker, dataCopy, contentDataCopy, v10, v12);

  v12, v17, v18, v19, v20, v21, v22, v23;
}

- (void)emitReadingOrientationChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  sub_A6684(&v20);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  sub_A3F08(v13);
  _s13BookAnalytics13EventReporterC028emitReadingOrientationChangeC05using18readingSessionData07contentL0yAA9BATrackerCSg_AA0fkL0VAA07ContentL0VtF_0(tracker, &v14, v13);

  v26[2] = v13[2];
  v26[3] = v13[3];
  v26[4] = v13[4];
  v26[5] = v13[5];
  v26[0] = v13[0];
  v26[1] = v13[1];
  sub_14424(v26);
}

- (void)emitReadingFontSizeChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontSize:(float)size
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC025emitReadingFontSizeChangeC05using18readingSessionData07contentM004fontH0yAA9BATrackerCSg_AA07BridgedflM0CAA0q7ContentM0CSftF_0(tracker, size);
}

- (void)emitReadingScrollViewSettingChangeEventWithTracker:(id)tracker readingSessionData:(id)data contentData:(id)contentData fontSize:(float)size isOn:(BOOL)on
{
  trackerCopy = tracker;
  dataCopy = data;
  contentDataCopy = contentData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC034emitReadingScrollViewSettingChangeC05using18readingSessionData07contentN08fontSize4isOnyAA9BATrackerCSg_AA07BridgedfmN0CAA0u7ContentN0CSfSbtF_0(tracker, size, dataCopy, contentDataCopy, on);
}

- (void)emitAllInSeriesViewEventWithTracker:(id)tracker collectionID:(id)d collectionItemCount:(int64_t)count
{
  v7 = sub_1E1780();
  v9 = v8;
  v10 = swift_allocObject();
  v10[1].super.isa = count;
  *v10[1].dataProviders = v7;
  v10[2].super.isa = v9;
  v11 = swift_allocObject();
  v11[1].super.isa = sub_98B94;
  *v11[1].dataProviders = v10;
  trackerCopy = tracker;

  sub_1E10C0();
  v10, v13, v14, v15, v16, v17, v18, v19;

  v11, v20, v21, v22, v23, v24, v25, v26;
}

- (void)emitBrowseCollectionScreenViewEventWithTracker:(id)tracker startDate:(id)date summaryData:(id)data
{
  v7 = sub_1E09E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  sub_1E09B0();
  (*(v8 + 16))(v11, v13, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  *(&v15->super.isa + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = data;
  v16 = swift_allocObject();
  v16[1].super.isa = sub_98BB0;
  *v16[1].dataProviders = v15;
  dataCopy = data;
  trackerCopy = tracker;

  sub_1E10C0();

  v15, v19, v20, v21, v22, v23, v24, v25;
  v16, v26, v27, v28, v29, v30, v31, v32;
  (*(v8 + 8))(v13, v7);
}

- (void)emitCollectionScreenViewEventWithTracker:(id)tracker startDate:(id)date collectionID:(id)d collectionItemCount:(int64_t)count
{
  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  sub_1E09B0();
  v15 = sub_1E1780();
  v17 = v16;
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v19[1].super.isa = count;
  *v19[1].dataProviders = v15;
  v19[2].super.isa = v17;
  (*(v9 + 32))(v19 + v18, v12, v8);
  v20 = swift_allocObject();
  v20[1].super.isa = sub_98BAC;
  *v20[1].dataProviders = v19;
  trackerCopy = tracker;

  sub_1E10C0();
  v19, v22, v23, v24, v25, v26, v27, v28;
  v20, v29, v30, v31, v32, v33, v34, v35;
  (*(v9 + 8))(v14, v8);
}

- (void)emitContextualActionSheetExposureEventWithTracker:(id)tracker startDate:(id)date propertyProvider:(id)provider
{
  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E09B0();
  trackerCopy = tracker;
  swift_unknownObjectRetain();
  selfCopy = self;
  EventReporter.emitContextualActionSheetExposureEvent(using:from:with:)(tracker, v11, provider);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
}

- (void)emitLibraryViewEventWithTracker:(id)tracker startDate:(id)date librarySummary:(id)summary displayType:(int64_t)type sortType:(int64_t)sortType
{
  sortTypeCopy = sortType;
  v9 = sub_1E09E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  sub_1E09B0();
  type metadata accessor for BridgedLibraryItemTypeData();
  v16 = sub_1E18C0();
  (*(v10 + 16))(v13, v15, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = swift_allocObject();
  v18[1].super.isa = v16;
  *v18[1].dataProviders = type;
  v18[2].super.isa = sortTypeCopy;
  (*(v10 + 32))(v18 + v17, v13, v9);
  v19 = swift_allocObject();
  v19[1].super.isa = sub_98BA4;
  *v19[1].dataProviders = v18;
  trackerCopy = tracker;

  sub_1E10C0();
  v18, v21, v22, v23, v24, v25, v26, v27;
  v19, v28, v29, v30, v31, v32, v33, v34;
  (*(v10 + 8))(v15, v9);
}

- (void)emitShareSheetExposureEventWithTracker:(id)tracker startDate:(id)date propertyProvider:(id)provider
{
  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  sub_1E09B0();
  (*(v9 + 16))(v12, v14, v8);
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v16[1].super.isa = self;
  *v16[1].dataProviders = provider;
  v16[2].super.isa = tracker;
  (*(v9 + 32))(v16 + v15, v12, v8);
  v17 = swift_allocObject();
  v17[1].super.isa = sub_98BA0;
  *v17[1].dataProviders = v16;
  trackerCopy = tracker;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v20 = trackerCopy;

  sub_1E10C0();
  swift_unknownObjectRelease();

  v16, v21, v22, v23, v24, v25, v26, v27;
  v17, v28, v29, v30, v31, v32, v33, v34;
  (*(v9 + 8))(v14, v8);
}

- (void)emitUnifiedMessageExposureEventWithTracker:(id)tracker startDate:(id)date messageType:(int64_t)type messageIdentifier:(id)identifier hasActionable:(BOOL)actionable actionIdentifier:(id)actionIdentifier placementName:(id)name
{
  actionableCopy = actionable;
  typeCopy = type;
  trackerCopy = tracker;
  v11 = sub_1E09E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  sub_1E09B0();
  if (!identifier)
  {
    v43 = 0;
    if (!actionIdentifier)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = sub_1E1780();
  identifier = v18;
  if (actionIdentifier)
  {
LABEL_3:
    actionIdentifier = sub_1E18C0();
  }

LABEL_4:
  v19 = sub_1E1780();
  v21 = v20;
  (*(v12 + 16))(v15, v17, v11);
  v22 = v11;
  v23 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v43;
  v24[1].super.isa = typeCopy;
  *v24[1].dataProviders = v25;
  v24[2].super.isa = identifier;
  v24[2].dataProviders[0] = actionableCopy;
  v24[3].super.isa = actionIdentifier;
  *v24[3].dataProviders = v19;
  v24[4].super.isa = v21;
  (*(v12 + 32))(v24 + v23, v15, v22);
  v26 = trackerCopy;
  v27 = swift_allocObject();
  v27[1].super.isa = sub_98B98;
  *v27[1].dataProviders = v24;
  v28 = v26;

  sub_1E10C0();
  v24, v29, v30, v31, v32, v33, v34, v35;
  v27, v36, v37, v38, v39, v40, v41, v42;
  (*(v12 + 8))(v17, v22);
}

- (void)emitPurchaseAttemptEventWithTracker:(id)tracker contentData:(id)data purchaseData:(id)purchaseData upSellData:(id)sellData
{
  v10 = swift_allocObject();
  v10[1].super.isa = data;
  *v10[1].dataProviders = purchaseData;
  v10[2].super.isa = sellData;
  v11 = swift_allocObject();
  v11[1].super.isa = sub_D14B0;
  *v11[1].dataProviders = v10;
  dataCopy = data;
  purchaseDataCopy = purchaseData;
  sellDataCopy = sellData;
  v15 = dataCopy;
  v16 = purchaseDataCopy;
  v32 = sellDataCopy;
  trackerCopy = tracker;

  sub_1E10C0();
  v10, v18, v19, v20, v21, v22, v23, v24;

  v11, v25, v26, v27, v28, v29, v30, v31;
}

- (void)emitPurchaseSuccessEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker contentData:(BAContentData *)data purchaseData:(BAPurchaseData *)purchaseData upSellData:(BAUpSellData *)sellData completion:(id)completion
{
  v13 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  v17[2] = tracker;
  v17[3] = data;
  v17[4] = purchaseData;
  v17[5] = sellData;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_1E1900();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1F5E00;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[1].super.isa = 0;
  *v20[1].dataProviders = 0;
  v20[2].super.isa = &unk_1F5E08;
  *v20[2].dataProviders = v19;
  trackerCopy = tracker;
  dataCopy = data;
  purchaseDataCopy = purchaseData;
  sellDataCopy = sellData;
  selfCopy = self;
  v26 = sub_D0848(0, 0, v15, &unk_1F5E10, v20);
  v26, v27, v28, v29, v30, v31, v32, v33;
}

- (void)emitPurchaseFailEventWithTracker:(_TtC13BookAnalytics9BATracker *)tracker contentData:(BAContentData *)data purchaseData:(BAPurchaseData *)purchaseData upSellData:(BAUpSellData *)sellData failData:(BAPurchaseFailData *)failData completion:(id)completion
{
  v15 = sub_3D68(&qword_287EC0, &qword_205170);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = _Block_copy(completion);
  v19 = swift_allocObject();
  v19[2] = tracker;
  v19[3] = data;
  v19[4] = purchaseData;
  v19[5] = sellData;
  v19[6] = failData;
  v19[7] = v18;
  v19[8] = self;
  v20 = sub_1E1900();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1F5DC8;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[1].super.isa = 0;
  *v22[1].dataProviders = 0;
  v22[2].super.isa = &unk_1EFF08;
  *v22[2].dataProviders = v21;
  trackerCopy = tracker;
  dataCopy = data;
  purchaseDataCopy = purchaseData;
  sellDataCopy = sellData;
  failDataCopy = failData;
  selfCopy = self;
  v29 = sub_D0848(0, 0, v17, &unk_1EFF10, v22);
  v29, v30, v31, v32, v33, v34, v35, v36;
}

- (void)emitAnnotationActionEventWithTracker:(id)tracker contentData:(id)data viewData:(id)viewData
{
  trackerCopy = tracker;
  dataCopy = data;
  viewDataCopy = viewData;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC020emitAnnotationActionC05using11contentData04viewJ0yAA9BATrackerC_AA014BridgedContentJ0CAA0m4ViewJ0CtF_0();
}

- (void)emitExitLinkTapEventWithTracker:(id)tracker url:(id)url
{
  v5 = sub_1E0930();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  sub_1E0910();
  (*(v6 + 16))(v9, v11, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v9, v5);
  v14 = swift_allocObject();
  v14[1].super.isa = sub_E06D8;
  *v14[1].dataProviders = v13;
  trackerCopy = tracker;

  sub_1E10C0();
  v13, v16, v17, v18, v19, v20, v21, v22;
  v14, v23, v24, v25, v26, v27, v28, v29;
  (*(v6 + 8))(v11, v5);
}

- (void)emitGetStartedActionEventWithTracker:(id)tracker type:(int64_t)type
{
  v6 = swift_allocObject();
  v6[1].super.isa = type;
  v7 = swift_allocObject();
  v7[1].super.isa = sub_E06E4;
  *v7[1].dataProviders = v6;
  trackerCopy = tracker;

  sub_1E10C0();
  v6, v9, v10, v11, v12, v13, v14, v15;

  v7, v16, v17, v18, v19, v20, v21, v22;
}

- (void)emitNotificationEngagementEventWithTracker:(id)tracker engagementData:(id)data notificationData:(id)notificationData
{
  v8 = swift_allocObject();
  v8[1].super.isa = notificationData;
  *v8[1].dataProviders = data;
  v9 = swift_allocObject();
  v9[1].super.isa = sub_E06E0;
  *v9[1].dataProviders = v8;
  dataCopy = data;
  notificationDataCopy = notificationData;
  v11 = dataCopy;
  trackerCopy = tracker;

  sub_1E10C0();
  v8, v13, v14, v15, v16, v17, v18, v19;

  v9, v20, v21, v22, v23, v24, v25, v26;
}

- (void)emitScrubEventWithTracker:(id)tracker contentData:(id)data readingSettingsData:(id)settingsData startPosition:(id)position endPosition:(id)endPosition totalLength:(id)length
{
  trackerCopy = tracker;
  dataCopy = data;
  settingsDataCopy = settingsData;
  positionCopy = position;
  endPositionCopy = endPosition;
  lengthCopy = length;
  selfCopy = self;
  _s13BookAnalytics13EventReporterC09emitScrubC05using11contentData015readingSettingsI013startPosition03endM011totalLengthyAA9BATrackerC_AA014BridgedContentI0CAA0r7ReadingkI0CSo8NSNumberCA2RtF_0(trackerCopy, dataCopy, settingsDataCopy, positionCopy, endPositionCopy, lengthCopy);
}

- (void)emitUnifiedMessageActionEventWithTracker:(id)tracker startDate:(id)date messageType:(int64_t)type messageIdentifier:(id)identifier hasActionable:(BOOL)actionable actionIdentifier:(id)actionIdentifier placementName:(id)name
{
  v13 = sub_1E1780();
  v15 = v14;
  if (identifier)
  {
    identifier = sub_1E1780();
    v17 = v16;
    if (!actionIdentifier)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = 0;
  if (actionIdentifier)
  {
LABEL_3:
    actionIdentifier = sub_1E18C0();
  }

LABEL_4:
  v18 = sub_1E1780();
  v20 = v19;
  v21 = swift_allocObject();
  v21[1].super.isa = type;
  *v21[1].dataProviders = v13;
  v21[2].super.isa = v15;
  *v21[2].dataProviders = identifier;
  v21[3].super.isa = v17;
  v21[3].dataProviders[0] = actionable;
  v21[4].super.isa = actionIdentifier;
  *v21[4].dataProviders = v18;
  v21[5].super.isa = v20;
  v22 = swift_allocObject();
  v22[1].super.isa = sub_E06D4;
  *v22[1].dataProviders = v21;
  trackerCopy = tracker;

  sub_1E10C0();
  v21, v24, v25, v26, v27, v28, v29, v30;

  v22, v31, v32, v33, v34, v35, v36, v37;
}

- (void)emitViewSupplementalContentWithTracker:(id)tracker contentID:(id)d sourceIsAction:(BOOL)action supplementalContentCount:(id)count
{
  v10 = sub_1E1780();
  v12 = v11;
  trackerCopy = tracker;
  countCopy = count;
  selfCopy = self;
  EventReporter.emitViewSupplementalContent(using:for:sourceIsAction:with:)(tracker, v10, v12, action, count);

  v12, v16, v17, v18, v19, v20, v21, v22;
}

@end
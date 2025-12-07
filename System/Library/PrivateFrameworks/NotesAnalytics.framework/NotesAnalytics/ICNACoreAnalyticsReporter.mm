@interface ICNACoreAnalyticsReporter
+ (id)analyticsQueue;
+ (id)sharedReporter;
- (ICNACoreAnalyticsReporter)init;
- (id)consumeNoteViewApproach;
- (void)appSessionWillEnd:(id)end;
- (void)fireDeepLinkCreationEventWithNote:(id)note contentItem:(id)item;
- (void)fireNoteViewEventWithNote:(id)note noteData:(id)data noteContentData:(id)contentData;
- (void)fireSnapshotWithNoteReportToDevice:(id)device;
- (void)fireUpdateHandWritingContentEventWithNoteData:(id)data pencilIsUsed:(BOOL)used;
@end

@implementation ICNACoreAnalyticsReporter

+ (id)sharedReporter
{
  if (s_onceToken_3 != -1)
  {
    +[ICNACoreAnalyticsReporter sharedReporter];
  }

  v3 = sharedReporter_s_instance_1;

  return v3;
}

uint64_t __43__ICNACoreAnalyticsReporter_sharedReporter__block_invoke()
{
  sharedReporter_s_instance_1 = objc_alloc_init(ICNACoreAnalyticsReporter);

  return MEMORY[0x2821F96F8]();
}

- (ICNACoreAnalyticsReporter)init
{
  v5.receiver = self;
  v5.super_class = ICNACoreAnalyticsReporter;
  v2 = [(ICNAOptedInObject *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_appSessionWillEnd_ name:@"ICNASessionWillEndNotification" object:0];
  }

  return v2;
}

+ (id)analyticsQueue
{
  if (analyticsQueue_onceToken != -1)
  {
    +[ICNACoreAnalyticsReporter analyticsQueue];
  }

  v3 = analyticsQueue_sAnalyticsQueue;

  return v3;
}

void __43__ICNACoreAnalyticsReporter_analyticsQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.analytics", v2);
  v1 = analyticsQueue_sAnalyticsQueue;
  analyticsQueue_sAnalyticsQueue = v0;
}

- (id)consumeNoteViewApproach
{
  noteViewApproach = self->_noteViewApproach;
  if (noteViewApproach)
  {
    v4 = [(NSString *)noteViewApproach copy];
  }

  else
  {
    v4 = @"iOSInAppSelection";
  }

  v5 = self->_noteViewApproach;
  self->_noteViewApproach = 0;

  return v4;
}

- (void)appSessionWillEnd:(id)end
{
  analyticsQueue = [objc_opt_class() analyticsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ICNACoreAnalyticsReporter_appSessionWillEnd___block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_async(analyticsQueue, block);
}

- (void)fireUpdateHandWritingContentEventWithNoteData:(id)data pencilIsUsed:(BOOL)used
{
  usedCopy = used;
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"isSystemPaper";
  isScrapPaper = [data isScrapPaper];
  v8[1] = @"isUpdatedByApplePencil";
  v9[0] = isScrapPaper;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:usedCopy];
  v9[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  AnalyticsSendEvent();
}

- (void)fireDeepLinkCreationEventWithNote:(id)note contentItem:(id)item
{
  v12[2] = *MEMORY[0x277D85DE8];
  noteCopy = note;
  sourceIdentifier = [item sourceIdentifier];
  if (sourceIdentifier)
  {
    v7 = sourceIdentifier;
    v8 = [ICNAEventReporter maskString:sourceIdentifier withoutPrefix:@"com.apple." withMask:@"thirdPartyBundleID"];
  }

  else
  {
    v8 = @"unknown";
  }

  v11[0] = @"isDestinationNoteSystemPaper";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(noteCopy, "isSystemPaper")}];
  v11[1] = @"sourceAppBundleID";
  v12[0] = v9;
  v12[1] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  AnalyticsSendEvent();
}

- (void)fireNoteViewEventWithNote:(id)note noteData:(id)data noteContentData:(id)contentData
{
  noteCopy = note;
  dataCopy = data;
  contentDataCopy = contentData;
  analyticsQueue = [objc_opt_class() analyticsQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke;
  v15[3] = &unk_2799AFEA0;
  v16 = noteCopy;
  selfCopy = self;
  v18 = contentDataCopy;
  v19 = dataCopy;
  v12 = dataCopy;
  v13 = contentDataCopy;
  v14 = noteCopy;
  dispatch_async(analyticsQueue, v15);
}

void __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke(id *a1)
{
  v2 = [a1[4] managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke_2;
  v5[3] = &unk_2799AFEA0;
  v4 = *(a1 + 2);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  v7 = a1[6];
  v8 = a1[7];
  [v2 performBlock:v5];
}

void __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke_2(id *a1)
{
  v40[10] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] currentlyViewedNoteIdentifier];
  v3 = [a1[5] identifier];
  v4 = [v2 isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [a1[6] hasPaperKitDrawing];
    if ([v5 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      v7 = [a1[6] hasAttachmentInlineDrawingV1];
      if ([v7 BOOLValue])
      {
        v6 = 1;
      }

      else
      {
        v8 = [a1[6] hasAttachmentInlineDrawingV2];
        if ([v8 BOOLValue])
        {
          v6 = 1;
        }

        else
        {
          v9 = [a1[6] hasAttachmentFullscreenDrawing];
          v6 = [v9 BOOLValue];
        }
      }
    }

    v10 = [a1[5] textStorageWithoutCreating];
    v11 = [v10 string];
    v12 = [v11 ic_containsNonWhitespaceAndAttachmentCharacters];

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v13 = [a1[5] visibleAttachments];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke_3;
    v26[3] = &unk_2799AFE78;
    v26[4] = &v35;
    v26[5] = &v31;
    v26[6] = &v27;
    [v13 enumerateObjectsUsingBlock:v26];

    v39[0] = @"hasDrawing";
    v25 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v40[0] = v25;
    v39[1] = @"hasImage";
    v24 = [a1[6] hasAttachedPhoto];
    v40[1] = v24;
    v39[2] = @"hasOtherLinks";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:*(v28 + 24)];
    v40[2] = v14;
    v39[3] = @"hasDeeplinks";
    v15 = [MEMORY[0x277CCABB0] numberWithBool:*(v32 + 24)];
    v40[3] = v15;
    v39[4] = @"hasTable";
    v16 = [a1[6] hasTable];
    v40[4] = v16;
    v39[5] = @"hasTypedText";
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    v40[5] = v17;
    v39[6] = @"hasWebHighlights";
    v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v36 + 24)];
    v40[6] = v18;
    v39[7] = @"isSystemPaper";
    v19 = [a1[7] isScrapPaper];
    v40[7] = v19;
    v39[8] = @"noteIsNewlyCreated";
    v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "isEmpty")}];
    v40[8] = v20;
    v39[9] = @"systemPaperInvocationMethod";
    v21 = [a1[4] consumeNoteViewApproach];
    v40[9] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:10];
    AnalyticsSendEvent();

    v23 = [a1[5] identifier];
    [a1[4] setCurrentlyViewedNoteIdentifier:v23];

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
  }
}

void __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke_3(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v9 = v5;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v6 = [ICNAEventReporter attachmentHasDeepLinkSafariHighlight:v5];
    v5 = v9;
    *(*(a1[4] + 8) + 24) |= v6;
  }

  v7 = [v5 hasDeepLink];
  *(*(a1[5] + 8) + 24) |= v7;
  if ((v7 & 1) == 0 && (*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) |= [v9 isURL];
  }

  if (*(*(a1[4] + 8) + 24) == 1 && *(*(a1[5] + 8) + 24) == 1)
  {
    v8 = *(*(a1[6] + 8) + 24);
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8 & 1;
}

- (void)fireSnapshotWithNoteReportToDevice:(id)device
{
  v23[14] = *MEMORY[0x277D85DE8];
  v22[0] = @"countOfModernNotes";
  v3 = MEMORY[0x277CCABB0];
  deviceCopy = device;
  v21 = [v3 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfModernNotes"))}];
  v23[0] = v21;
  v22[1] = @"countOfModernNotesWithDeeplinks";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfModernNotesWithDeeplink"))}];
  v23[1] = v20;
  v22[2] = @"countOfModernNotesWithDrawing";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfModernNotesWithDrawing"))}];
  v23[2] = v19;
  v22[3] = @"countOfModernNotesWithImage";
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfModernNotesWithImage"))}];
  v23[3] = v18;
  v22[4] = @"countOfModernNotesWithOtherLinks";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfModernNotesWithLinks"))}];
  v23[4] = v17;
  v22[5] = @"countOfModernNotesWithTable";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfModernNotesWithTable"))}];
  v23[5] = v16;
  v22[6] = @"countOfModernNotesWithWebHighlights";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfModernNotesWithWebHighlights"))}];
  v23[6] = v5;
  v22[7] = @"countOfSystemPaper";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfScrapPapers"))}];
  v23[7] = v6;
  v22[8] = @"countOfSystemPaperWithDeeplinks";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfScrapPapersWithDeepLink"))}];
  v23[8] = v7;
  v22[9] = @"countOfSystemPaperWithDrawing";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfScrapPapersWithDrawing"))}];
  v23[9] = v8;
  v22[10] = @"countOfSystemPaperWithImage";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfScrapPapersWithImage"))}];
  v23[10] = v9;
  v22[11] = @"countOfSystemPaperWithOtherLinks";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfScrapPapersWithLinks"))}];
  v23[11] = v10;
  v22[12] = @"countOfSystemPaperWithTable";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(deviceCopy, "countOfScrapPapersWithTables"))}];
  v23[12] = v11;
  v22[13] = @"countOfSystemPaperWithWebHighlights";
  v12 = MEMORY[0x277CCABB0];
  countOfScrapPapersWithWebHighlights = [deviceCopy countOfScrapPapersWithWebHighlights];

  v14 = [v12 numberWithInteger:ICNARoundTo2SigFigsInt(countOfScrapPapersWithWebHighlights)];
  v23[13] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:14];
  AnalyticsSendEvent();
}

@end
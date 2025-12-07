@interface ICASAttachmentSnapshotData
- (ICASAttachmentSnapshotData)initWithAttachmentSnapshotSummary:(id)summary docScanSnapshotSummary:(id)snapshotSummary drawingSnapshotSummary:(id)drawingSnapshotSummary tableSnapshotSummary:(id)tableSnapshotSummary;
- (id)toDict;
@end

@implementation ICASAttachmentSnapshotData

- (ICASAttachmentSnapshotData)initWithAttachmentSnapshotSummary:(id)summary docScanSnapshotSummary:(id)snapshotSummary drawingSnapshotSummary:(id)drawingSnapshotSummary tableSnapshotSummary:(id)tableSnapshotSummary
{
  summaryCopy = summary;
  snapshotSummaryCopy = snapshotSummary;
  drawingSnapshotSummaryCopy = drawingSnapshotSummary;
  tableSnapshotSummaryCopy = tableSnapshotSummary;
  v18.receiver = self;
  v18.super_class = ICASAttachmentSnapshotData;
  v15 = [(ICASAttachmentSnapshotData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_attachmentSnapshotSummary, summary);
    objc_storeStrong(&v16->_docScanSnapshotSummary, snapshotSummary);
    objc_storeStrong(&v16->_drawingSnapshotSummary, drawingSnapshotSummary);
    objc_storeStrong(&v16->_tableSnapshotSummary, tableSnapshotSummary);
  }

  return v16;
}

- (id)toDict
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17[0] = @"attachmentSnapshotSummary";
  attachmentSnapshotSummary = [(ICASAttachmentSnapshotData *)self attachmentSnapshotSummary];
  if (attachmentSnapshotSummary)
  {
    attachmentSnapshotSummary2 = [(ICASAttachmentSnapshotData *)self attachmentSnapshotSummary];
  }

  else
  {
    attachmentSnapshotSummary2 = objc_opt_new();
  }

  v5 = attachmentSnapshotSummary2;
  v18[0] = attachmentSnapshotSummary2;
  v17[1] = @"docScanSnapshotSummary";
  docScanSnapshotSummary = [(ICASAttachmentSnapshotData *)self docScanSnapshotSummary];
  if (docScanSnapshotSummary)
  {
    docScanSnapshotSummary2 = [(ICASAttachmentSnapshotData *)self docScanSnapshotSummary];
  }

  else
  {
    docScanSnapshotSummary2 = objc_opt_new();
  }

  v8 = docScanSnapshotSummary2;
  v18[1] = docScanSnapshotSummary2;
  v17[2] = @"drawingSnapshotSummary";
  drawingSnapshotSummary = [(ICASAttachmentSnapshotData *)self drawingSnapshotSummary];
  if (drawingSnapshotSummary)
  {
    drawingSnapshotSummary2 = [(ICASAttachmentSnapshotData *)self drawingSnapshotSummary];
  }

  else
  {
    drawingSnapshotSummary2 = objc_opt_new();
  }

  v11 = drawingSnapshotSummary2;
  v18[2] = drawingSnapshotSummary2;
  v17[3] = @"tableSnapshotSummary";
  tableSnapshotSummary = [(ICASAttachmentSnapshotData *)self tableSnapshotSummary];
  if (tableSnapshotSummary)
  {
    tableSnapshotSummary2 = [(ICASAttachmentSnapshotData *)self tableSnapshotSummary];
  }

  else
  {
    tableSnapshotSummary2 = objc_opt_new();
  }

  v14 = tableSnapshotSummary2;
  v18[3] = tableSnapshotSummary2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

@end
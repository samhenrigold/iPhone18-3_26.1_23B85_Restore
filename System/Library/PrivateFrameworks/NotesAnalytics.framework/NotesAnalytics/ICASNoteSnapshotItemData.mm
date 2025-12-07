@interface ICASNoteSnapshotItemData
- (ICASNoteSnapshotItemData)initWithNoteID:(id)d noteType:(id)type collaborationStatus:(id)status collaborationType:(id)collaborationType countOfInvitees:(id)invitees countOfAcceptances:(id)acceptances countOfDocScan:(id)scan countOfInlineDrawingV1:(id)self0 countOfInlineDrawingV2:(id)self1 countOfFullscreenDrawing:(id)self2 countOfTables:(id)self3 countOfAttachmentOther:(id)self4 hasChecklist:(id)self5 isPinned:(id)self6 isLocked:(id)self7 charLength:(id)self8 creationDate:(id)self9 countOfInlineDrawingV1PencilStrokes:(id)strokes countOfInlineDrawingV1FingerStrokes:(id)fingerStrokes countOfInlineDrawingV2PencilStrokes:(id)pencilStrokes countOfInlineDrawingV2FingerStrokes:(id)v2FingerStrokes countOfFullscreenDrawingStrokes:(id)drawingStrokes;
- (id)toDict;
@end

@implementation ICASNoteSnapshotItemData

- (ICASNoteSnapshotItemData)initWithNoteID:(id)d noteType:(id)type collaborationStatus:(id)status collaborationType:(id)collaborationType countOfInvitees:(id)invitees countOfAcceptances:(id)acceptances countOfDocScan:(id)scan countOfInlineDrawingV1:(id)self0 countOfInlineDrawingV2:(id)self1 countOfFullscreenDrawing:(id)self2 countOfTables:(id)self3 countOfAttachmentOther:(id)self4 hasChecklist:(id)self5 isPinned:(id)self6 isLocked:(id)self7 charLength:(id)self8 creationDate:(id)self9 countOfInlineDrawingV1PencilStrokes:(id)strokes countOfInlineDrawingV1FingerStrokes:(id)fingerStrokes countOfInlineDrawingV2PencilStrokes:(id)pencilStrokes countOfInlineDrawingV2FingerStrokes:(id)v2FingerStrokes countOfFullscreenDrawingStrokes:(id)drawingStrokes
{
  dCopy = d;
  typeCopy = type;
  typeCopy2 = type;
  statusCopy = status;
  statusCopy2 = status;
  collaborationTypeCopy = collaborationType;
  inviteesCopy = invitees;
  acceptancesCopy = acceptances;
  scanCopy = scan;
  v1Copy = v1;
  v2Copy = v2;
  drawingCopy = drawing;
  tablesCopy = tables;
  otherCopy = other;
  checklistCopy = checklist;
  pinnedCopy = pinned;
  lockedCopy = locked;
  lengthCopy = length;
  dateCopy = date;
  strokesCopy = strokes;
  fingerStrokesCopy = fingerStrokes;
  pencilStrokesCopy = pencilStrokes;
  v2FingerStrokesCopy = v2FingerStrokes;
  drawingStrokesCopy = drawingStrokes;
  v58.receiver = self;
  v58.super_class = ICASNoteSnapshotItemData;
  v35 = [(ICASNoteSnapshotItemData *)&v58 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_noteID, d);
    objc_storeStrong(&v36->_noteType, typeCopy);
    objc_storeStrong(&v36->_collaborationStatus, statusCopy);
    objc_storeStrong(&v36->_collaborationType, collaborationType);
    objc_storeStrong(&v36->_countOfInvitees, invitees);
    objc_storeStrong(&v36->_countOfAcceptances, acceptances);
    objc_storeStrong(&v36->_countOfDocScan, scan);
    objc_storeStrong(&v36->_countOfInlineDrawingV1, v1);
    objc_storeStrong(&v36->_countOfInlineDrawingV2, v2);
    objc_storeStrong(&v36->_countOfFullscreenDrawing, drawing);
    objc_storeStrong(&v36->_countOfTables, tables);
    objc_storeStrong(&v36->_countOfAttachmentOther, other);
    objc_storeStrong(&v36->_hasChecklist, checklist);
    objc_storeStrong(&v36->_isPinned, pinned);
    objc_storeStrong(&v36->_isLocked, locked);
    objc_storeStrong(&v36->_charLength, length);
    objc_storeStrong(&v36->_creationDate, date);
    objc_storeStrong(&v36->_countOfInlineDrawingV1PencilStrokes, strokes);
    objc_storeStrong(&v36->_countOfInlineDrawingV1FingerStrokes, fingerStrokes);
    objc_storeStrong(&v36->_countOfInlineDrawingV2PencilStrokes, pencilStrokes);
    objc_storeStrong(&v36->_countOfInlineDrawingV2FingerStrokes, v2FingerStrokes);
    objc_storeStrong(&v36->_countOfFullscreenDrawingStrokes, drawingStrokes);
  }

  return v36;
}

- (id)toDict
{
  v72[22] = *MEMORY[0x277D85DE8];
  v71[0] = @"noteID";
  noteID = [(ICASNoteSnapshotItemData *)self noteID];
  if (noteID)
  {
    noteID2 = [(ICASNoteSnapshotItemData *)self noteID];
  }

  else
  {
    noteID2 = objc_opt_new();
  }

  v69 = noteID2;
  v72[0] = noteID2;
  v71[1] = @"noteType";
  noteType = [(ICASNoteSnapshotItemData *)self noteType];
  if (noteType)
  {
    noteType2 = [(ICASNoteSnapshotItemData *)self noteType];
  }

  else
  {
    noteType2 = objc_opt_new();
  }

  v67 = noteType2;
  v72[1] = noteType2;
  v71[2] = @"collaborationStatus";
  collaborationStatus = [(ICASNoteSnapshotItemData *)self collaborationStatus];
  if (collaborationStatus)
  {
    collaborationStatus2 = [(ICASNoteSnapshotItemData *)self collaborationStatus];
  }

  else
  {
    collaborationStatus2 = objc_opt_new();
  }

  v65 = collaborationStatus2;
  v72[2] = collaborationStatus2;
  v71[3] = @"collaborationType";
  collaborationType = [(ICASNoteSnapshotItemData *)self collaborationType];
  if (collaborationType)
  {
    collaborationType2 = [(ICASNoteSnapshotItemData *)self collaborationType];
  }

  else
  {
    collaborationType2 = objc_opt_new();
  }

  v63 = collaborationType2;
  v72[3] = collaborationType2;
  v71[4] = @"countOfInvitees";
  countOfInvitees = [(ICASNoteSnapshotItemData *)self countOfInvitees];
  if (countOfInvitees)
  {
    countOfInvitees2 = [(ICASNoteSnapshotItemData *)self countOfInvitees];
  }

  else
  {
    countOfInvitees2 = objc_opt_new();
  }

  v61 = countOfInvitees2;
  v72[4] = countOfInvitees2;
  v71[5] = @"countOfAcceptances";
  countOfAcceptances = [(ICASNoteSnapshotItemData *)self countOfAcceptances];
  if (countOfAcceptances)
  {
    countOfAcceptances2 = [(ICASNoteSnapshotItemData *)self countOfAcceptances];
  }

  else
  {
    countOfAcceptances2 = objc_opt_new();
  }

  v59 = countOfAcceptances2;
  v72[5] = countOfAcceptances2;
  v71[6] = @"countOfDocScan";
  countOfDocScan = [(ICASNoteSnapshotItemData *)self countOfDocScan];
  if (countOfDocScan)
  {
    countOfDocScan2 = [(ICASNoteSnapshotItemData *)self countOfDocScan];
  }

  else
  {
    countOfDocScan2 = objc_opt_new();
  }

  v57 = countOfDocScan2;
  v72[6] = countOfDocScan2;
  v71[7] = @"countOfInlineDrawingV1";
  countOfInlineDrawingV1 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1];
  if (countOfInlineDrawingV1)
  {
    countOfInlineDrawingV12 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1];
  }

  else
  {
    countOfInlineDrawingV12 = objc_opt_new();
  }

  v55 = countOfInlineDrawingV12;
  v72[7] = countOfInlineDrawingV12;
  v71[8] = @"countOfInlineDrawingV2";
  countOfInlineDrawingV2 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2];
  if (countOfInlineDrawingV2)
  {
    countOfInlineDrawingV22 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2];
  }

  else
  {
    countOfInlineDrawingV22 = objc_opt_new();
  }

  v53 = countOfInlineDrawingV22;
  v72[8] = countOfInlineDrawingV22;
  v71[9] = @"countOfFullscreenDrawing";
  countOfFullscreenDrawing = [(ICASNoteSnapshotItemData *)self countOfFullscreenDrawing];
  if (countOfFullscreenDrawing)
  {
    countOfFullscreenDrawing2 = [(ICASNoteSnapshotItemData *)self countOfFullscreenDrawing];
  }

  else
  {
    countOfFullscreenDrawing2 = objc_opt_new();
  }

  v51 = countOfFullscreenDrawing2;
  v72[9] = countOfFullscreenDrawing2;
  v71[10] = @"countOfTables";
  countOfTables = [(ICASNoteSnapshotItemData *)self countOfTables];
  if (countOfTables)
  {
    countOfTables2 = [(ICASNoteSnapshotItemData *)self countOfTables];
  }

  else
  {
    countOfTables2 = objc_opt_new();
  }

  v49 = countOfTables2;
  v72[10] = countOfTables2;
  v71[11] = @"countOfAttachmentOther";
  countOfAttachmentOther = [(ICASNoteSnapshotItemData *)self countOfAttachmentOther];
  if (countOfAttachmentOther)
  {
    countOfAttachmentOther2 = [(ICASNoteSnapshotItemData *)self countOfAttachmentOther];
  }

  else
  {
    countOfAttachmentOther2 = objc_opt_new();
  }

  v47 = countOfAttachmentOther2;
  v72[11] = countOfAttachmentOther2;
  v71[12] = @"hasChecklist";
  hasChecklist = [(ICASNoteSnapshotItemData *)self hasChecklist];
  if (hasChecklist)
  {
    hasChecklist2 = [(ICASNoteSnapshotItemData *)self hasChecklist];
  }

  else
  {
    hasChecklist2 = objc_opt_new();
  }

  v45 = hasChecklist2;
  v72[12] = hasChecklist2;
  v71[13] = @"isPinned";
  isPinned = [(ICASNoteSnapshotItemData *)self isPinned];
  if (isPinned)
  {
    isPinned2 = [(ICASNoteSnapshotItemData *)self isPinned];
  }

  else
  {
    isPinned2 = objc_opt_new();
  }

  v43 = isPinned2;
  v72[13] = isPinned2;
  v71[14] = @"isLocked";
  isLocked = [(ICASNoteSnapshotItemData *)self isLocked];
  if (isLocked)
  {
    isLocked2 = [(ICASNoteSnapshotItemData *)self isLocked];
  }

  else
  {
    isLocked2 = objc_opt_new();
  }

  v41 = isLocked2;
  v72[14] = isLocked2;
  v71[15] = @"charLength";
  charLength = [(ICASNoteSnapshotItemData *)self charLength];
  if (charLength)
  {
    charLength2 = [(ICASNoteSnapshotItemData *)self charLength];
  }

  else
  {
    charLength2 = objc_opt_new();
  }

  v39 = charLength2;
  v72[15] = charLength2;
  v71[16] = @"creationDate";
  creationDate = [(ICASNoteSnapshotItemData *)self creationDate];
  if (creationDate)
  {
    creationDate2 = [(ICASNoteSnapshotItemData *)self creationDate];
  }

  else
  {
    creationDate2 = objc_opt_new();
  }

  v37 = creationDate2;
  v72[16] = creationDate2;
  v71[17] = @"countOfInlineDrawingV1PencilStrokes";
  countOfInlineDrawingV1PencilStrokes = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1PencilStrokes];
  if (countOfInlineDrawingV1PencilStrokes)
  {
    countOfInlineDrawingV1PencilStrokes2 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1PencilStrokes];
  }

  else
  {
    countOfInlineDrawingV1PencilStrokes2 = objc_opt_new();
  }

  v22 = countOfInlineDrawingV1PencilStrokes2;
  v72[17] = countOfInlineDrawingV1PencilStrokes2;
  v71[18] = @"countOfInlineDrawingV1FingerStrokes";
  countOfInlineDrawingV1FingerStrokes = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1FingerStrokes];
  if (countOfInlineDrawingV1FingerStrokes)
  {
    countOfInlineDrawingV1FingerStrokes2 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1FingerStrokes];
  }

  else
  {
    countOfInlineDrawingV1FingerStrokes2 = objc_opt_new();
  }

  v25 = countOfInlineDrawingV1FingerStrokes2;
  v72[18] = countOfInlineDrawingV1FingerStrokes2;
  v71[19] = @"countOfInlineDrawingV2PencilStrokes";
  countOfInlineDrawingV2PencilStrokes = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2PencilStrokes];
  if (countOfInlineDrawingV2PencilStrokes)
  {
    countOfInlineDrawingV2PencilStrokes2 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2PencilStrokes];
  }

  else
  {
    countOfInlineDrawingV2PencilStrokes2 = objc_opt_new();
  }

  v28 = countOfInlineDrawingV2PencilStrokes2;
  v72[19] = countOfInlineDrawingV2PencilStrokes2;
  v71[20] = @"countOfInlineDrawingV2FingerStrokes";
  countOfInlineDrawingV2FingerStrokes = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2FingerStrokes];
  if (countOfInlineDrawingV2FingerStrokes)
  {
    countOfInlineDrawingV2FingerStrokes2 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2FingerStrokes];
  }

  else
  {
    countOfInlineDrawingV2FingerStrokes2 = objc_opt_new();
  }

  v31 = countOfInlineDrawingV2FingerStrokes2;
  v72[20] = countOfInlineDrawingV2FingerStrokes2;
  v71[21] = @"countOfFullscreenDrawingStrokes";
  countOfFullscreenDrawingStrokes = [(ICASNoteSnapshotItemData *)self countOfFullscreenDrawingStrokes];
  if (countOfFullscreenDrawingStrokes)
  {
    countOfFullscreenDrawingStrokes2 = [(ICASNoteSnapshotItemData *)self countOfFullscreenDrawingStrokes];
  }

  else
  {
    countOfFullscreenDrawingStrokes2 = objc_opt_new();
  }

  v34 = countOfFullscreenDrawingStrokes2;
  v72[21] = countOfFullscreenDrawingStrokes2;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:22];

  return v36;
}

@end
@interface ICASTranscriptInteractionItemData
- (ICASTranscriptInteractionItemData)initWithTranscriptInteractionTarget:(id)target transcriptActionType:(id)type;
- (id)toDict;
@end

@implementation ICASTranscriptInteractionItemData

- (ICASTranscriptInteractionItemData)initWithTranscriptInteractionTarget:(id)target transcriptActionType:(id)type
{
  targetCopy = target;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = ICASTranscriptInteractionItemData;
  v9 = [(ICASTranscriptInteractionItemData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transcriptInteractionTarget, target);
    objc_storeStrong(&v10->_transcriptActionType, type);
  }

  return v10;
}

- (id)toDict
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"transcriptInteractionTarget";
  transcriptInteractionTarget = [(ICASTranscriptInteractionItemData *)self transcriptInteractionTarget];
  if (transcriptInteractionTarget)
  {
    transcriptInteractionTarget2 = [(ICASTranscriptInteractionItemData *)self transcriptInteractionTarget];
  }

  else
  {
    transcriptInteractionTarget2 = objc_opt_new();
  }

  v5 = transcriptInteractionTarget2;
  v11[1] = @"transcriptActionType";
  v12[0] = transcriptInteractionTarget2;
  transcriptActionType = [(ICASTranscriptInteractionItemData *)self transcriptActionType];
  if (transcriptActionType)
  {
    transcriptActionType2 = [(ICASTranscriptInteractionItemData *)self transcriptActionType];
  }

  else
  {
    transcriptActionType2 = objc_opt_new();
  }

  v8 = transcriptActionType2;
  v12[1] = transcriptActionType2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end
@interface IMChatScrutinyController
+ (id)sharedController;
- (id)transcriptRenderingMetadataForChatIdentifier:(id)identifier;
- (void)markMessageAsCorrupt:(id)corrupt;
- (void)markMessageAsNotCorrupt:(id)corrupt;
- (void)setTranscriptRenderingMetadata:(id)metadata forChatIdentifier:(id)identifier;
@end

@implementation IMChatScrutinyController

+ (id)sharedController
{
  if (qword_1ED7677D0 != -1)
  {
    sub_1A84E4070();
  }

  v3 = qword_1ED7677E0;

  return v3;
}

- (void)markMessageAsCorrupt:(id)corrupt
{
  corruptCopy = corrupt;
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon markMessageAsCorrupt:corruptCopy setCorrupt:1];
}

- (void)markMessageAsNotCorrupt:(id)corrupt
{
  corruptCopy = corrupt;
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon markMessageAsCorrupt:corruptCopy setCorrupt:0];
}

- (id)transcriptRenderingMetadataForChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    v14 = 0;
    goto LABEL_11;
  }

  scrutinyInfo = [(IMChatScrutinyController *)self scrutinyInfo];
  v6 = [scrutinyInfo objectForKeyedSubscript:@"cid"];
  v7 = [v6 isEqualToString:identifierCopy];

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [scrutinyInfo objectForKeyedSubscript:@"latime"];
  [v8 doubleValue];
  v10 = v9;

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  if (v10 > 0.0)
  {
    v12 = v11;
    [(IMChatScrutinyController *)self _maxDurationForScrutinyMode];
    if (v12 < v10 || v12 - v10 > v13)
    {
      [(IMChatScrutinyController *)self setTranscriptRenderingMetadata:0 forChatIdentifier:identifierCopy];
LABEL_9:
      v14 = 0;
      goto LABEL_10;
    }
  }

  v14 = scrutinyInfo;
LABEL_10:

LABEL_11:

  return v14;
}

- (void)setTranscriptRenderingMetadata:(id)metadata forChatIdentifier:(id)identifier
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  if (identifierCopy && ([metadataCopy allKeys], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    v8 = [metadataCopy mutableCopy];
    [v8 setObject:identifierCopy forKeyedSubscript:@"cid"];
    v9 = MEMORY[0x1E696AD98];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v10 = [v9 numberWithDouble:?];
    [v8 setObject:v10 forKeyedSubscript:@"latime"];
  }

  else
  {
    v8 = 0;
  }

  IMSetDomainValueForKey();
}

@end
@interface SASStartCorrectedSpeechRequest
- (void)ad_setAFCorrectionContext:(id)context;
@end

@implementation SASStartCorrectedSpeechRequest

- (void)ad_setAFCorrectionContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_msgSend_objectForKey_(contextCopy);
      [(SASStartCorrectedSpeechRequest *)self setInteractionId:v4];

      v5 = objc_msgSend_objectForKey_(contextCopy);
      [(SASStartCorrectedSpeechRequest *)self setSessionId:v5];
    }
  }
}

@end
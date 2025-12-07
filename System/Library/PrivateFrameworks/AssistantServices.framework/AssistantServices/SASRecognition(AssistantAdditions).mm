@interface SASRecognition(AssistantAdditions)
- (id)af_correctionContextWithRefId:()AssistantAdditions sessionId:;
@end

@implementation SASRecognition(AssistantAdditions)

- (id)af_correctionContextWithRefId:()AssistantAdditions sessionId:
{
  v4 = 0;
  v11[2] = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v10[0] = @"interactionId";
    v10[1] = @"sessionId";
    v11[0] = a3;
    v11[1] = a4;
    v6 = MEMORY[0x1E695DF20];
    v7 = a4;
    v8 = a3;
    v4 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  return v4;
}

@end
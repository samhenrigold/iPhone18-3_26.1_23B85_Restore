@interface TIAccessibilityHandler
- (void)requestLabelForProactiveCandidateWithSlotID:(unsigned int)d completionHandler:(id)handler;
@end

@implementation TIAccessibilityHandler

- (void)requestLabelForProactiveCandidateWithSlotID:(unsigned int)d completionHandler:(id)handler
{
  v4 = *&d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = +[TIKeyboardSecureCandidateRenderer allRenderers];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * v10) accessibilityLabelForSlotID:v4];
          if (v11)
          {
            v12 = v11;
            goto LABEL_12;
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:

    handlerCopy[2](handlerCopy, v12);
  }
}

@end
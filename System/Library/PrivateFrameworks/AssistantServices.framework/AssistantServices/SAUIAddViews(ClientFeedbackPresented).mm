@interface SAUIAddViews(ClientFeedbackPresented)
- (void)_af_enumerateClientFeedbackDetails:()ClientFeedbackPresented;
@end

@implementation SAUIAddViews(ClientFeedbackPresented)

- (void)_af_enumerateClientFeedbackDetails:()ClientFeedbackPresented
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    dialogPhase = [self dialogPhase];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    views = [self views];
    v7 = [views countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(views);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __76__SAUIAddViews_ClientFeedbackPresented___af_enumerateClientFeedbackDetails___block_invoke;
          v12[3] = &unk_1E7347130;
          v13 = dialogPhase;
          v14 = v4;
          [v11 _af_enumerateClientFeedbackDetails:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [views countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

@end
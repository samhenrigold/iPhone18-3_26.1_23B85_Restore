@interface FBKSInteractionObjc
- (FBKSInteractionObjc)initWithFeatureDomain:(id)domain feedbackTitle:(id)title prefillQuestions:(id)questions attributionBundleId:(id)id modelVersion:(id)version originalAnnotatedContent:(id)content generatedAnnotatedContent:(id)annotatedContent extraContent:(id)self0;
- (void)evaluateWithAction:(int64_t)action showFeedbackForm:(BOOL)form associateWithAppleAccount:(BOOL)account completion:(id)completion;
- (void)presentedWithCompletion:(id)completion;
@end

@implementation FBKSInteractionObjc

- (FBKSInteractionObjc)initWithFeatureDomain:(id)domain feedbackTitle:(id)title prefillQuestions:(id)questions attributionBundleId:(id)id modelVersion:(id)version originalAnnotatedContent:(id)content generatedAnnotatedContent:(id)annotatedContent extraContent:(id)self0
{
  v34 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  titleCopy = title;
  questionsCopy = questions;
  idCopy = id;
  versionCopy = version;
  contentCopy = content;
  annotatedContentCopy = annotatedContent;
  extraContentCopy = extraContent;
  v24 = Log_0(extraContentCopy);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v31 = "[FBKSInteractionObjc initWithFeatureDomain:feedbackTitle:prefillQuestions:attributionBundleId:modelVersion:originalAnnotatedContent:generatedAnnotatedContent:extraContent:]";
    v32 = 2114;
    v33 = domainCopy;
    _os_log_impl(&dword_1B00C4000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s on %{public}@", buf, 0x16u);
  }

  v29.receiver = self;
  v29.super_class = FBKSInteractionObjc;
  v25 = [(FBKSInteractionObjc *)&v29 init];
  v26 = v25;
  if (v25)
  {
    if (!(contentCopy | annotatedContentCopy) && (!extraContentCopy || (v25 = [extraContentCopy count]) == 0))
    {
      v27 = Log_0(v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [FBKSInteractionObjc initWithFeatureDomain:domainCopy feedbackTitle:v27 prefillQuestions:? attributionBundleId:? modelVersion:? originalAnnotatedContent:? generatedAnnotatedContent:? extraContent:?];
      }
    }

    [(FBKSInteractionObjc *)v26 setFeatureDomain:domainCopy];
    [(FBKSInteractionObjc *)v26 setFeedbackTitle:titleCopy];
    [(FBKSInteractionObjc *)v26 setOriginalAnnotatedContent:contentCopy];
    [(FBKSInteractionObjc *)v26 setGeneratedAnnotatedContent:annotatedContentCopy];
    [(FBKSInteractionObjc *)v26 setExtraContent:extraContentCopy];
    [(FBKSInteractionObjc *)v26 setPrefillQuestions:questionsCopy];
    [(FBKSInteractionObjc *)v26 setAttributionBundleId:idCopy];
    [(FBKSInteractionObjc *)v26 setModelVersion:versionCopy];
  }

  return v26;
}

- (void)presentedWithCompletion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = Log_0(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    featureDomain = [(FBKSInteractionObjc *)self featureDomain];
    v7 = 136446466;
    v8 = "[FBKSInteractionObjc presentedWithCompletion:]";
    v9 = 2114;
    v10 = featureDomain;
    _os_log_impl(&dword_1B00C4000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s on %{public}@", &v7, 0x16u);
  }

  [_TtC15FeedbackService24ReportAConcernObjCBridge presentedWithInteraction:self completion:completionCopy];
}

- (void)evaluateWithAction:(int64_t)action showFeedbackForm:(BOOL)form associateWithAppleAccount:(BOOL)account completion:(id)completion
{
  accountCopy = account;
  formCopy = form;
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v11 = Log_0(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    featureDomain = [(FBKSInteractionObjc *)self featureDomain];
    *buf = 136446466;
    v16 = "[FBKSInteractionObjc evaluateWithAction:showFeedbackForm:associateWithAppleAccount:completion:]";
    v17 = 2114;
    v18 = featureDomain;
    _os_log_impl(&dword_1B00C4000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s on %{public}@", buf, 0x16u);
  }

  sceneId = [(FBKSInteractionObjc *)self sceneId];
  presentingBundleId = [(FBKSInteractionObjc *)self presentingBundleId];
  [_TtC15FeedbackService24ReportAConcernObjCBridge evaluateWithInteraction:self action:action showFeedbackForm:formCopy associateWithAppleAccount:accountCopy sceneID:sceneId presentingBundleId:presentingBundleId completion:completionCopy];
}

- (void)initWithFeatureDomain:(uint64_t)a1 feedbackTitle:(NSObject *)a2 prefillQuestions:attributionBundleId:modelVersion:originalAnnotatedContent:generatedAnnotatedContent:extraContent:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1B00C4000, a2, OS_LOG_TYPE_ERROR, "All annotated content inputs are nil for feature domain %{public}@", &v2, 0xCu);
}

@end
@interface FAEligiblityEvaluationRequest
- (FAEligiblityEvaluationRequest)initWithPropertyName:(id)name bundleID:(id)d;
- (unint64_t)fetchEligibilityWithError:(id *)error;
- (void)startRequestWithCompletion:(id)completion;
@end

@implementation FAEligiblityEvaluationRequest

- (FAEligiblityEvaluationRequest)initWithPropertyName:(id)name bundleID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = FAEligiblityEvaluationRequest;
  v8 = [(FAFamilyCircleRequest *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    propertyName = v8->_propertyName;
    v8->_propertyName = v9;

    v11 = [dCopy copy];
    bundleID = v8->_bundleID;
    v8->_bundleID = v11;
  }

  return v8;
}

- (void)startRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  propertyName = [(FAEligiblityEvaluationRequest *)self propertyName];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __60__FAEligiblityEvaluationRequest_startRequestWithCompletion___block_invoke;
  v12 = &unk_1E7CA49A0;
  v13 = propertyName;
  v14 = completionCopy;
  v6 = completionCopy;
  v7 = propertyName;
  v8 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:&v9];
  [v8 fetchEligibilityForPropertyName:self->_propertyName bundleID:self->_bundleID completion:{v6, v9, v10, v11, v12}];
}

void __60__FAEligiblityEvaluationRequest_startRequestWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__FAEligiblityEvaluationRequest_startRequestWithCompletion___block_invoke_cold_1(a1, v3, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (unint64_t)fetchEligibilityWithError:(id *)error
{
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__6;
  v19[3] = __Block_byref_object_dispose__6;
  v20 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__FAEligiblityEvaluationRequest_fetchEligibilityWithError___block_invoke;
  v13[3] = &unk_1E7CA5670;
  v13[4] = &v18;
  v5 = [(FAFamilyCircleRequest *)self synchronousRemoteObjectWithErrorHandler:v13];
  propertyName = self->_propertyName;
  bundleID = self->_bundleID;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__FAEligiblityEvaluationRequest_fetchEligibilityWithError___block_invoke_2;
  v12[3] = &unk_1E7CA5780;
  v12[4] = &v18;
  v12[5] = &v14;
  v8 = [v5 fetchEligibilityForPropertyName:propertyName bundleID:bundleID completion:v12];
  if (*(v19[0] + 40))
  {
    v9 = _FALogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(FAEligiblityEvaluationRequest *)v19 fetchEligibilityWithError:v9];
    }
  }

  if (error)
  {
    *error = *(v19[0] + 40);
  }

  v10 = v15[3];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

void __59__FAEligiblityEvaluationRequest_fetchEligibilityWithError___block_invoke_2(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __60__FAEligiblityEvaluationRequest_startRequestWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B70B0000, log, OS_LOG_TYPE_ERROR, "Failed to evaluate eligibility for property %@ with XPC error: %@", &v4, 0x16u);
}

- (void)fetchEligibilityWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "FARecommendationRequest - synchronous fetchRecommendation request failed with error: %@", &v3, 0xCu);
}

@end
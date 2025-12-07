@interface CDMRepetitionDetectionServiceUtils
+ (id)asrHypothesis2QRUtterance:(id)utterance;
+ (id)asrToken2QRToken:(id)token;
+ (id)buildRDRequestWithPrevTurn:(id)turn curTurn:(id)curTurn nluRequestId:(id)id resultCandidateId:(id)candidateId cdmRequestId:(id)requestId;
@end

@implementation CDMRepetitionDetectionServiceUtils

+ (id)asrHypothesis2QRUtterance:(id)utterance
{
  v24 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  asrTokens = [utteranceCopy asrTokens];
  v6 = [v4 initWithCapacity:{objc_msgSend(asrTokens, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  asrTokens2 = [utteranceCopy asrTokens];
  v8 = [asrTokens2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(asrTokens2);
        }

        v12 = [CDMRepetitionDetectionServiceUtils asrToken2QRToken:*(*(&v19 + 1) + 8 * i)];
        [v6 addObject:v12];
      }

      v9 = [asrTokens2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v13 = objc_alloc_init(MEMORY[0x1E69D1380]);
  v14 = objc_alloc_init(MEMORY[0x1E69D1230]);
  [v13 setAsrId:v14];

  utterance = [utteranceCopy utterance];
  [v13 setUtterance:utterance];

  v16 = [MEMORY[0x1E695E0F0] mutableCopy];
  [v13 setNluInternalTokens:v16];

  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v6];
  [v13 setAsrUtteranceTokens:v17];

  [utteranceCopy probability];
  [v13 setConfidence:?];

  return v13;
}

+ (id)asrToken2QRToken:(id)token
{
  v3 = MEMORY[0x1E69D1378];
  tokenCopy = token;
  v5 = objc_alloc_init(v3);
  postItnText = [tokenCopy postItnText];
  [v5 setValue:postItnText];

  [v5 setStartIndex:{objc_msgSend(tokenCopy, "beginIndex")}];
  [v5 setEndIndex:{objc_msgSend(tokenCopy, "endIndex")}];
  [tokenCopy confidenceScore];
  [v5 setAsrConfidence:?];
  phoneSequence = [tokenCopy phoneSequence];
  [v5 setPhoneSequence:phoneSequence];

  removeSpaceAfter = [tokenCopy removeSpaceAfter];
  [v5 setRemoveSpaceAfter:removeSpaceAfter];

  return v5;
}

+ (id)buildRDRequestWithPrevTurn:(id)turn curTurn:(id)curTurn nluRequestId:(id)id resultCandidateId:(id)candidateId cdmRequestId:(id)requestId
{
  v48 = *MEMORY[0x1E69E9840];
  turnCopy = turn;
  curTurnCopy = curTurn;
  idCopy = id;
  candidateIdCopy = candidateId;
  requestIdCopy = requestId;
  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v47 = "+[CDMRepetitionDetectionServiceUtils buildRDRequestWithPrevTurn:curTurn:nluRequestId:resultCandidateId:cdmRequestId:]";
    _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Preparing Repetition Detection Reqeust", buf, 0xCu);
  }

  if (!turnCopy)
  {
LABEL_12:
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v47 = "+[CDMRepetitionDetectionServiceUtils buildRDRequestWithPrevTurn:curTurn:nluRequestId:resultCandidateId:cdmRequestId:]";
      v22 = "%s Invalid Inputs for Repetition Detection";
      goto LABEL_19;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  asrOutputs = [turnCopy asrOutputs];
  v18 = [asrOutputs count];
  if (!curTurnCopy || !v18)
  {

    goto LABEL_12;
  }

  asrOutputs2 = [curTurnCopy asrOutputs];
  v20 = [asrOutputs2 count];

  if (!v20)
  {
    goto LABEL_12;
  }

  if (([curTurnCopy tapToEdit] & 1) != 0 || objc_msgSend(turnCopy, "tapToEdit"))
  {
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v47 = "+[CDMRepetitionDetectionServiceUtils buildRDRequestWithPrevTurn:curTurn:nluRequestId:resultCandidateId:cdmRequestId:]";
      v22 = "%s Current Turn or Previous Turn is Tap2Edit, skipping RD call";
LABEL_19:
      _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, v22, buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  asrOutputs3 = [turnCopy asrOutputs];
  firstObject = [asrOutputs3 firstObject];
  v21 = [CDMRepetitionDetectionServiceUtils asrHypothesis2QRUtterance:firstObject];

  v27 = objc_alloc_init(MEMORY[0x1E69D1370]);
  v45 = v21;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v29 = [v28 copy];
  [v27 setOriginalUtterances:v29];

  v30 = [MEMORY[0x1E695E0F0] mutableCopy];
  [v27 setSiriResponses:v30];

  locale = [turnCopy locale];
  [v27 setLocale:locale];

  [v27 setTap2edit:{objc_msgSend(turnCopy, "tapToEdit")}];
  v41 = v27;
  [v27 setStartTimestamp:{objc_msgSend(turnCopy, "startTimestamp")}];
  asrOutputs4 = [curTurnCopy asrOutputs];
  firstObject2 = [asrOutputs4 firstObject];
  v42 = [CDMRepetitionDetectionServiceUtils asrHypothesis2QRUtterance:firstObject2];

  v34 = objc_alloc_init(MEMORY[0x1E69D1370]);
  v44 = v42;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v36 = [v35 copy];
  [v34 setOriginalUtterances:v36];

  v37 = [MEMORY[0x1E695E0F0] mutableCopy];
  [v34 setSiriResponses:v37];

  locale2 = [curTurnCopy locale];
  [v34 setLocale:locale2];

  [v34 setTap2edit:{objc_msgSend(curTurnCopy, "tapToEdit")}];
  [v34 setStartTimestamp:{objc_msgSend(curTurnCopy, "startTimestamp")}];
  v23 = objc_alloc_init(MEMORY[0x1E69D1358]);
  [v23 setResultCandidateId:candidateIdCopy];
  [v23 setNluRequestId:idCopy];
  v43[0] = v27;
  v43[1] = v34;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v40 = [v39 mutableCopy];
  [v23 setOriginalInteractions:v40];

  [v23 setCdmRequestId:requestIdCopy];
LABEL_14:

  return v23;
}

@end
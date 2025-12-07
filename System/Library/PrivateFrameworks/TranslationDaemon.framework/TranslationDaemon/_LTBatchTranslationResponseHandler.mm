@interface _LTBatchTranslationResponseHandler
- (void)callCompletionHandlersWithError:(id)error;
- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)response;
- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)response;
@end

@implementation _LTBatchTranslationResponseHandler

- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)response
{
  v75 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = _LTOSLogTranslationEngine(responseCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    request_id = [(FTMutableBatchTranslationRequest *)self->_request request_id];
    v69 = 138543362;
    v70 = request_id;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "streamDidReceiveBatchTranslationStreamingResponse request_id %{public}@", &v69, 0xCu);
  }

  if ([responseCopy content_type] == 1)
  {
    v9 = _LTOSLogTranslationEngine(1, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      request_id2 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
      v69 = 138543362;
      v70 = request_id2;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "found BatchTranslationResponse request_id %{public}@", &v69, 0xCu);
    }

    contentAsFTBatchTranslationResponse = [responseCopy contentAsFTBatchTranslationResponse];
    v13 = contentAsFTBatchTranslationResponse;
    if (contentAsFTBatchTranslationResponse)
    {
      batchedParagraphs = self->_batchedParagraphs;
      paragraph_id = [contentAsFTBatchTranslationResponse paragraph_id];
      v16 = [(_LTBatchedParagraphsHolder *)batchedParagraphs paragraphWithId:paragraph_id];

      return_code = [v13 return_code];
      if (return_code == 200)
      {
        requestParagraph = [v16 requestParagraph];
        paragraph = [v16 paragraph];
        v22 = _LTOSLogTranslationEngine(paragraph, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          request_id3 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
          span = [v13 span];
          v25 = [span count];
          v69 = 138543618;
          v70 = request_id3;
          v71 = 2048;
          v72 = v25;
          _os_log_impl(&dword_232E53000, v22, OS_LOG_TYPE_INFO, "Succeeded request %{public}@ (%zu alignments)", &v69, 0x16u);
        }

        v28 = _LTOSLogTranslationEngine(v26, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [v13 translated_text];
          objc_claimAutoreleasedReturnValue();
          [requestParagraph text];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }

        v29 = objc_alloc(MEMORY[0x277CE1C18]);
        text = [requestParagraph text];
        v31 = [v29 initWithOspreyBatchResponse:v13 sourceText:text];

        [v31 setRoute:2];
        paragraph_id2 = [requestParagraph paragraph_id];
        [v31 setIdentifier:paragraph_id2];

        [v31 setLocale:self->_targetLocale];
        text2 = [requestParagraph text];
        [v31 setSourceString:text2];

        spans = [paragraph spans];
        span2 = [v13 span];
        [v31 updateAlignmentWithSourceSpan:spans targetSpan:span2];

        v36 = 0;
      }

      else
      {
        v53 = _LTOSLogTranslationEngine(return_code, v18);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          [v13 return_code];
          [v13 return_string];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }

        return_code2 = [v13 return_code];
        return_string = [v13 return_string];
        v36 = _LTErrorFromRemoteFailure(return_code2, return_string);

        requestParagraph = _LTOSLogTranslationEngine(v56, v57);
        if (os_log_type_enabled(requestParagraph, OS_LOG_TYPE_ERROR))
        {
          [(FTMutableBatchTranslationRequest *)self->_request request_id];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }

        v31 = 0;
      }

      completion = [v16 completion];
      v59 = completion == 0;

      if (v59)
      {
        completion2 = _LTOSLogTranslationEngine(v60, v61);
        if (os_log_type_enabled(completion2, OS_LOG_TYPE_ERROR))
        {
          [v13 paragraph_id];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }
      }

      else
      {
        completion2 = [v16 completion];
        (completion2[2].isa)(completion2, v31, v36);
      }

      v63 = self->_batchedParagraphs;
      paragraph_id3 = [v13 paragraph_id];
      [(_LTBatchedParagraphsHolder *)v63 removeParagraphWithId:paragraph_id3];
    }

    else
    {
      v52 = _LTOSLogTranslationEngine(0, v12);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
      }
    }
  }

  else
  {
    content_type = [responseCopy content_type];
    if (content_type == 2)
    {
      [(_LTBatchTranslationResponseHandler *)self setHasFinalServerResponse:1];
      contentAsFTFinalBlazarResponse = [responseCopy contentAsFTFinalBlazarResponse];
      v41 = contentAsFTFinalBlazarResponse;
      if (contentAsFTFinalBlazarResponse)
      {
        return_code3 = [contentAsFTFinalBlazarResponse return_code];
        if (return_code3 != 200)
        {
          v44 = _LTOSLogTranslationEngine(return_code3, v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [v41 return_code];
            [v41 return_str];
            objc_claimAutoreleasedReturnValue();
            [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
          }

          return_code4 = [v41 return_code];
          return_str = [v41 return_str];
          v47 = _LTErrorFromRemoteFailure(return_code4, return_str);

          v50 = _LTOSLogTranslationEngine(v48, v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            [(FTMutableBatchTranslationRequest *)self->_request request_id];
            objc_claimAutoreleasedReturnValue();
            [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
          }
        }
      }

      else
      {
        v65 = _LTOSLogTranslationEngine(0, v40);
        return_code3 = os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG);
        if (return_code3)
        {
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }
      }

      v66 = _LTOSLogTranslationEngine(return_code3, v43);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        request_id4 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
        v68 = [(_LTBatchedParagraphsHolder *)self->_batchedParagraphs count];
        v69 = 138543874;
        v70 = request_id4;
        v71 = 2048;
        v72 = v68;
        v73 = 2112;
        v74 = 0;
        _os_log_impl(&dword_232E53000, v66, OS_LOG_TYPE_INFO, "found FTFinalBlazarResponse request_id %{public}@ outstanding paragraphs %zu error %@", &v69, 0x20u);
      }

      [(_LTBatchTranslationResponseHandler *)self callCompletionHandlersWithError:0];
    }

    else
    {
      v51 = _LTOSLogTranslationEngine(content_type, v38);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
      }
    }
  }
}

- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)response
{
  responseCopy = response;
  v6 = _LTOSLogTranslationEngine(responseCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(FTMutableBatchTranslationRequest *)self->_request request_id];
    objc_claimAutoreleasedReturnValue();
    [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
  }

  [(_LTBatchTranslationResponseHandler *)self callCompletionHandlersWithError:responseCopy];
}

- (void)callCompletionHandlersWithError:(id)error
{
  v15[3] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!errorCopy)
  {
    request_id = [(FTMutableBatchTranslationRequest *)self->_request request_id];

    if (request_id)
    {
      v14[0] = @"request_id";
      request_id2 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
      v15[0] = request_id2;
      v14[1] = @"hasFinalServerResponse";
      v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasFinalServerResponse];
      v15[1] = v7;
      v14[2] = @"completionHandlerCalled";
      v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_completionHandlerCalled];
      v15[2] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

      request_id = v9;
    }

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = MEMORY[0x277CCA9B8];
    v12 = [v10 localizedStringForKey:@"MISSING_BATCH_RESPONSE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v13 = [v11 lt_errorWithCode:13 description:v12 userInfo:request_id];

    errorCopy = v13;
  }

  [(_LTBatchedParagraphsHolder *)self->_batchedParagraphs completeAllAndCleanWithError:errorCopy];
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5_3(v1, v2, v3, 1.5047e-36);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.3()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_12(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.7()
{
  OUTLINED_FUNCTION_7_1();
  *v2 = 138740227;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2117;
  *(v2 + 14) = v4;
  _os_log_debug_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEBUG, "Translation: %{sensitive}@ for %{sensitive}@", v5, 0x16u);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.8()
{
  OUTLINED_FUNCTION_6_0();
  *v1 = 138543362;
  *(v1 + 4) = v2;
  _os_log_error_impl(&dword_232E53000, v3, OS_LOG_TYPE_ERROR, "Missing paragraphBatchInfo for paragraph ID: %{public}@", v4, 0xCu);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end
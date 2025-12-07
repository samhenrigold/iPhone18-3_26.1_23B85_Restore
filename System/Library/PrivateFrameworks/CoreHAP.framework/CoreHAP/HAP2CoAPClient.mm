@interface HAP2CoAPClient
- (BOOL)connected;
- (HAP2CoAPClient)initWithSocketAddress:(const sockaddr *)address withAccessoryName:(id)name maxTransmitAttempts:(unint64_t)attempts initialACKTimeout:(double)timeout;
- (HAP2CoAPClientDelegate)delegate;
- (char)_initWithIPAddress:(unsigned int)address port:(uint64_t)port maxTransmitAttempts:(void *)attempts initialACKTimeout:(double)timeout workQueue:;
- (char)initWithSocketAddress:(void *)address withAccessoryName:(void *)name workQueue:(uint64_t)queue maxTransmitAttempts:(double)attempts initialACKTimeout:;
- (coap_session_t)shouldOpenSessionWithContext:(coap_context_t *)context;
- (dispatch_queue_t)_queueSessionCompletion;
- (double)initialACKTimeout;
- (id)openCompletion;
- (id)responseCompletionsByToken;
- (unint64_t)maxTransmitAttempts;
- (void)_callResponseCompletion:(void *)completion response:(void *)response error:;
- (void)_didOpenWithError:(uint64_t)error;
- (void)_ioThreadDidReceivePongInSession:(uint64_t)session messageID:(uint64_t)d;
- (void)_ioThreadRequestFailed:(uint64_t)failed;
- (void)_queueSessionBlock:(uint64_t)block withTimeout:(double)timeout requiresCompletion:;
- (void)alterMaxTransmitAttempts:(unint64_t)attempts initialACKTimeout:(double)timeout;
- (void)closeWithError:(id)error completion:(id)completion;
- (void)didCloseSession;
- (void)didFailToSendMessageInSession:(coap_session_t *)session messageID:(unint64_t)d message:(coap_pdu_t *)message reason:(unint64_t)reason;
- (void)didReceiveRequestInSession:(coap_session_t *)session messageID:(unint64_t)d request:(coap_pdu_t *)request response:(coap_pdu_t *)response;
- (void)didReceiveResponseInSession:(coap_session_t *)session messageID:(unint64_t)d response:(coap_pdu_t *)response;
- (void)didRegister;
- (void)didUnregister;
- (void)openWithCompletion:(id)completion;
- (void)sendRequestWithMethod:(unsigned __int8)method path:(id)path payload:(id)payload dscpPriority:(int64_t)priority completion:(id)completion;
- (void)setCloseCompletion:(uint64_t)completion;
- (void)setConnected:(BOOL)connected;
- (void)setDelegate:(id)delegate;
- (void)setInitialACKTimeout:(double)timeout;
- (void)setMaxTransmitAttempts:(unint64_t)attempts;
- (void)setOpenCompletion:(uint64_t)completion;
@end

@implementation HAP2CoAPClient

- (void)didUnregister
{
  selfCopy = self;
  if (self)
  {
    self = self->_workQueue;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HAP2CoAPClient_didUnregister__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = selfCopy;
  dispatch_async(&self->super.super, block);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_ioThread, 0);
  }
}

void __31__HAP2CoAPClient_didUnregister__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 clientDidGetUnregistered:*(a1 + 32)];
  }
}

- (void)didRegister
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  v4 = currentThread;
  if (self)
  {
    objc_storeWeak(&self->_ioThread, currentThread);

    workQueue = self->_workQueue;
  }

  else
  {

    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HAP2CoAPClient_didRegister__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __29__HAP2CoAPClient_didRegister__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 clientDidGetRegistered:*(a1 + 32)];
  }
}

- (void)_ioThreadDidReceivePongInSession:(uint64_t)session messageID:(uint64_t)d
{
  v6 = *MEMORY[0x277D85DE8];
  if (session)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v3 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEBUG))
    {
      v4 = 134217984;
      dCopy = d;
      _os_log_debug_impl(&dword_22AADC000, v3, OS_LOG_TYPE_DEBUG, "<Pong id=%lu> received", &v4, 0xCu);
    }
  }
}

- (void)didFailToSendMessageInSession:(coap_session_t *)session messageID:(unint64_t)d message:(coap_pdu_t *)message reason:(unint64_t)reason
{
  v26 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return;
  }

  if (!*&message->var0 && !message->var4 && reason == 2 && !message->var11)
  {
    [HAP2CoAPClient _ioThreadDidReceivePongInSession:message->var5 messageID:?];
    workQueue = self->_workQueue;
    *block = MEMORY[0x277D85DD0];
    *&block[8] = 3221225472;
    *&block[16] = __72__HAP2CoAPClient__ioThreadDidFailToSendMessageInSession_message_reason___block_invoke;
    v22 = &unk_2786D6CA0;
    selfCopy2 = self;
    dispatch_async(workQueue, block);
    return;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v9 = hap2Log_coap;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v17 = self->_accessoryName;
    v18 = _stringForMessage(message, 0);
    if (reason >= 5)
    {
      reason = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%lu)", reason];
    }

    else
    {
      reason = off_2786D4E90[reason];
    }

    *block = 138478339;
    *&block[4] = v17;
    *&block[12] = 2112;
    *&block[14] = v18;
    *&block[22] = 2112;
    v22 = reason;
    _os_log_error_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "[%{private}@] %@ failed to send with reason: %@", block, 0x20u);
  }

  if (reason > 2)
  {
    if (reason - 3 >= 2)
    {
      goto LABEL_19;
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = 1;
    goto LABEL_16;
  }

  if (!reason)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = 24;
LABEL_16:
    v10 = [v11 hapErrorWithCode:v12];
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v13 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
    {
      *block = 134217984;
      *&block[4] = reason;
      _os_log_error_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "Unhandled failure reason: %lu", block, 0xCu);
    }

    v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    goto LABEL_24;
  }

  if (reason == 1)
  {
    v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"HAP2 CoAP failed due to HAP2CoAPIOConsumerFailureReasonNotDeliverable" reason:@"HAP2 CoAP failed due to HAP2CoAPIOConsumerFailureReasonNotDeliverable" suggestion:0 underlyingError:0 marker:102];
    if (v10)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (reason != 2)
  {
    goto LABEL_19;
  }

  v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2104];
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_24:
  if (message->var4 == 4)
  {
    v14 = *message->var10;
  }

  else
  {
    v14 = 0;
  }

  v15 = self->_workQueue;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __72__HAP2CoAPClient__ioThreadDidFailToSendMessageInSession_message_reason___block_invoke_77;
  v22 = &unk_2786D4E70;
  v25 = v14;
  selfCopy2 = self;
  v24 = v10;
  v16 = v10;
  dispatch_async(v15, block);
}

void __72__HAP2CoAPClient__ioThreadDidFailToSendMessageInSession_message_reason___block_invoke_77(uint64_t a1)
{
  [(HAP2CoAPClient *)*(a1 + 32) _queueSessionCompletion];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  [(HAP2CoAPClient *)v3 _callResponseCompletion:v2 response:0 error:v4];
}

- (dispatch_queue_t)_queueSessionCompletion
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(result[17]);

    return [HAP2CoAPIO queueSessionCompletionForConsumer:v1];
  }

  return result;
}

- (void)_callResponseCompletion:(void *)completion response:(void *)response error:
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  responseCopy = response;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 136));
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    responseCompletionsByToken = [(HAP2CoAPClient *)self responseCompletionsByToken];
    v11 = [responseCompletionsByToken objectForKeyedSubscript:v9];

    if (v11)
    {
      responseCompletionsByToken2 = [(HAP2CoAPClient *)self responseCompletionsByToken];
      [responseCompletionsByToken2 setObject:0 forKeyedSubscript:v9];

      (v11)[2](v11, completionCopy, responseCopy);
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v13 = hap2Log_coap;
      if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = stringForToken(a2);
        v16 = 138412546;
        v17 = v15;
        v18 = 2112;
        v19 = responseCopy;
        _os_log_error_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "<Response token=%@> received after we already called its completion handler: %@", &v16, 0x16u);
      }
    }
  }
}

- (id)responseCompletionsByToken
{
  dispatch_assert_queue_V2(*(self + 136));
  v2 = *(self + 88);

  return v2;
}

- (void)didReceiveRequestInSession:(coap_session_t *)session messageID:(unint64_t)d request:(coap_pdu_t *)request response:(coap_pdu_t *)response
{
  v38 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"%@ Received Request", v12];

    v32 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v13];
    [v32 markWithFormat:@"Message id: %lu", d];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:d];
    v15 = self->_previousEventMessageIDs;
    v16 = [(NSMutableOrderedSet *)v15 containsObject:v14];

    if (v16)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v17 = hap2Log_coap;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = _stringForMessage(response, 0);
        *buf = 138412290;
        *&buf[4] = v18;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%@ received more than once", buf, 0xCu);
      }

      response->var1 = 67;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      if (coap_get_data(request, &v31, &v30))
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v19 = hap2Log_coap;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = _stringForMessage(request, 0);
          *buf = 138412546;
          *&buf[4] = v20;
          *&buf[12] = 2048;
          *&buf[14] = v31;
          _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%@ received with %lu bytes of data", buf, 0x16u);
        }

        v21 = self->_previousEventMessageIDs;
        v22 = [(NSMutableOrderedSet *)v21 count]> 5;

        if (v22)
        {
          v23 = self->_previousEventMessageIDs;
          [(NSMutableOrderedSet *)v23 removeObjectAtIndex:0];
        }

        v24 = self->_previousEventMessageIDs;
        [(NSMutableOrderedSet *)v24 addObject:v14];

        response->var1 = 67;
        v25 = [MEMORY[0x277CBEA90] dataWithBytes:v30 length:v31];
        workQueue = self->_workQueue;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __81__HAP2CoAPClient__ioThreadDidReceiveRequestInSession_messageID_request_response___block_invoke;
        v34 = &unk_2786D7078;
        v35 = v32;
        selfCopy = self;
        v37 = v25;
        v27 = v25;
        dispatch_async(workQueue, buf);
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v28 = hap2Log_coap;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = _stringForMessage(request, 0);
          *buf = 138412290;
          *&buf[4] = v29;
          _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_INFO, "%@ received, but contains no data", buf, 0xCu);
        }

        response->var0 = 3;
      }
    }

    __HMFActivityScopeLeave();
  }
}

void __81__HAP2CoAPClient__ioThreadDidReceiveRequestInSession_messageID_request_response___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  v6 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2)
  {
    dispatch_assert_queue_V2(v2[17]);
    v4 = [(dispatch_queue_t *)v2 delegate];
    v5 = v4;
    if (v4)
    {
      [v4 client:v2 didReceiveEvent:v3];
    }
  }

  [*(a1 + 32) invalidate];
  __HMFActivityScopeLeave();
}

- (void)didReceiveResponseInSession:(coap_session_t *)session messageID:(unint64_t)d response:(coap_pdu_t *)response
{
  v66 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"%@ Received Response", v11];

    v58 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v12];
    [v58 markWithFormat:@"Message id: %lu", d];
    if (response->var4 == 4)
    {
      v13 = *response->var10;
    }

    else
    {
      v13 = 0;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:d];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
    var0 = response->var0;
    if (!v13 || ([(NSMutableSet *)self->_activeTokens containsObject:v15]& 1) == 0)
    {
      if (var0 <= 1)
      {
        v20 = [(NSMutableOrderedSet *)self->_previousResponseMessageIDs containsObject:v14];
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v21 = hap2Log_coap;
        v22 = os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_INFO);
        if (v20)
        {
          if (v22)
          {
            v23 = v21;
            v24 = _stringForMessage(response, 0);
            *buf = 138412290;
            *&buf[4] = v24;
            _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_INFO, "%@ received more than once", buf, 0xCu);
          }
        }

        else
        {
          if (v22)
          {
            v25 = v21;
            v26 = _stringForMessage(response, 0);
            *buf = 138412290;
            *&buf[4] = v26;
            _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%@ received unexpectedly", buf, 0xCu);
          }

          coap_send_message_type(&session->var0, response);
        }
      }

      goto LABEL_64;
    }

    [(NSMutableSet *)self->_activeTokens removeObject:v15];
    if ([(NSMutableOrderedSet *)self->_previousResponseMessageIDs count]>= 0xB)
    {
      [(NSMutableOrderedSet *)self->_previousResponseMessageIDs removeObjectAtIndex:0];
    }

    [(NSMutableOrderedSet *)self->_previousResponseMessageIDs addObject:v14];

    v17 = stringForToken(v13);
    [v58 markWithFormat:@"Token: %@", v17];

    if (response->var0 == 3)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v18 = hap2Log_coap;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v46 = _stringForMessage(response, 1);
        *buf = 138412290;
        *&buf[4] = v46;
        _os_log_error_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%@ received RST", buf, 0xCu);
      }

      v19 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2103];
      goto LABEL_62;
    }

    if ((response->var1 & 0xE0) == 0x40)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v27 = hap2Log_coap;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_accessoryName;
        v29 = _stringForMessage(response, 1);
        *buf = 138478083;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v29;
        _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEFAULT, "[%{private}@] %@ succeeded", buf, 0x16u);
      }

      var11 = response->var11;
      if (var11 && (v31 = &response->var10[response->var8 - var11]) != 0)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v32 = hap2Log_coap;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v56 = _stringForMessage(response, 1);
          v57 = "s";
          *buf = 138412802;
          *&buf[4] = v56;
          if (v31 == 1)
          {
            v57 = "";
          }

          *&buf[12] = 2048;
          *&buf[14] = v31;
          *&buf[22] = 2080;
          v60 = v57;
          _os_log_debug_impl(&dword_22AADC000, v32, OS_LOG_TYPE_DEBUG, "%@ carries %lu byte%s of payload", buf, 0x20u);
        }

        data = [MEMORY[0x277CBEA90] dataWithBytes:var11 length:v31];
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v37 = hap2Log_coap;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v51 = _stringForMessage(response, 1);
          *buf = 138412290;
          *&buf[4] = v51;
          _os_log_debug_impl(&dword_22AADC000, v37, OS_LOG_TYPE_DEBUG, "%@ carries no payload", buf, 0xCu);
        }

        data = [MEMORY[0x277CBEA90] data];
      }

      v36 = data;
      v19 = 0;
      goto LABEL_63;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v34 = hap2Log_coap;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v47 = _stringForMessage(response, 1);
      v48 = v47;
      var1 = response->var1;
      if (var1 == 65)
      {
        v50 = &coap_error;
LABEL_74:
        v55 = v50[1];
      }

      else
      {
        v52 = &coap_error;
        v53 = 23;
        while (--v53)
        {
          v50 = v52 + 16;
          v54 = v52[16];
          v52 += 16;
          if (v54 == var1)
          {
            goto LABEL_74;
          }
        }

        v55 = 0;
      }

      *buf = 138412546;
      *&buf[4] = v47;
      *&buf[12] = 2080;
      *&buf[14] = v55;
      _os_log_error_impl(&dword_22AADC000, v34, OS_LOG_TYPE_ERROR, "%@ failed: %s", buf, 0x16u);
    }

    v35 = response->var1;
    if (v35 > 0x84)
    {
      if (response->var1 <= 0xA0u)
      {
        if (v35 != 133 && v35 != 143)
        {
          goto LABEL_68;
        }
      }

      else if (v35 != 161)
      {
        if (v35 == 163)
        {
          v38 = 19;
          goto LABEL_61;
        }

        if (v35 == 164)
        {
          v38 = 24;
LABEL_61:
          v39 = MEMORY[0x277CCACA8];
          0x1F = [MEMORY[0x277CCACA8] stringWithFormat:@"%u.%02u", v35 >> 5, v35 & 0x1F];
          v41 = [v39 stringWithFormat:@"CoAP responded with a failure code: %@", 0x1F];

          v42 = MEMORY[0x277CCA9B8];
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"COAP Response Code: %ldd", v35];
          v44 = [v42 hapErrorWithCode:v38 description:v41 reason:v43 suggestion:0 underlyingError:0];

          v19 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 description:@"Failed to communicate using CoAP" reason:0 suggestion:0 underlyingError:v44 marker:2102];

LABEL_62:
          v36 = 0;
LABEL_63:
          workQueue = self->_workQueue;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __74__HAP2CoAPClient__ioThreadDidReceiveResponseInSession_messageID_response___block_invoke;
          v60 = &unk_2786D4E48;
          v61 = v58;
          selfCopy = self;
          v65 = v13;
          v63 = v36;
          v64 = v19;
          v15 = v19;
          v14 = v36;
          dispatch_async(workQueue, buf);

LABEL_64:
          __HMFActivityScopeLeave();

          return;
        }

LABEL_68:
        v38 = 15;
        goto LABEL_61;
      }
    }

    else
    {
      if (response->var1 <= 0x7Fu)
      {
        v19 = 0;
        v36 = 0;
        if (v35 - 64 < 2 || v35 == 67)
        {
          goto LABEL_63;
        }

        goto LABEL_68;
      }

      if (v35 == 128)
      {
        v38 = 9;
        goto LABEL_61;
      }

      if (v35 != 130)
      {
        if (v35 == 132)
        {
          v38 = 14;
          goto LABEL_61;
        }

        goto LABEL_68;
      }
    }

    v38 = 3;
    goto LABEL_61;
  }
}

void __74__HAP2CoAPClient__ioThreadDidReceiveResponseInSession_messageID_response___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  v2 = *(a1 + 32);
  [(HAP2CoAPClient *)*(a1 + 40) _queueSessionCompletion];
  [(HAP2CoAPClient *)*(a1 + 40) _callResponseCompletion:*(a1 + 48) response:*(a1 + 56) error:?];
  [*(a1 + 32) invalidate];
  __HMFActivityScopeLeave();
}

- (void)didCloseSession
{
  if (self)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"%@ Close Session", v5];

    v7 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v6];
    v13 = v7;
    [(NSMutableSet *)self->_activeTokens removeAllObjects];
    [(NSMutableOrderedSet *)self->_previousResponseMessageIDs removeAllObjects];
    notificationResource = self->_notificationResource;
    if (notificationResource)
    {
      self->_notificationResource = 0;
      notificationResource->var12 = 0;
    }

    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__HAP2CoAPClient__ioThreadDidCloseSession__block_invoke;
    block[3] = &unk_2786D7050;
    v11 = v7;
    selfCopy = self;
    dispatch_async(workQueue, block);

    __HMFActivityScopeLeave();
  }
}

void __42__HAP2CoAPClient__ioThreadDidCloseSession__block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  v14 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 136));
    v3 = [(HAP2CoAPClient *)v2 openCompletion];

    if (v3)
    {
      v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:{2, v14}];
      [(HAP2CoAPClient *)v2 _didOpenWithError:v4];
    }

    else
    {
      v5 = [v2 connected];
      [v2 setConnected:0];
      dispatch_assert_queue_V2(*(v2 + 136));
      if (*(v2 + 41) == 1)
      {
        dispatch_assert_queue_V2(*(v2 + 136));
        *(v2 + 41) = 0;
        [HAP2CoAPIO unregisterConsumer:v2];
      }

      if (v5)
      {
        v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
        v7 = [(HAP2CoAPClient *)v2 responseCompletionsByToken];
        v8 = [v7 count];

        if (v8)
        {
          v9 = [(HAP2CoAPClient *)v2 responseCompletionsByToken];
          v10 = [v9 allValues];

          v11 = [(HAP2CoAPClient *)v2 responseCompletionsByToken];
          [v11 removeAllObjects];

          v16 = MEMORY[0x277D85DD0];
          v17 = 3221225472;
          v18 = __32__HAP2CoAPClient__didDisconnect__block_invoke;
          v19 = &unk_2786D4DB0;
          v20 = v6;
          [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:&v16];
        }

        v12 = [v2 delegate];
        v13 = v12;
        if (v12)
        {
          [v12 clientDidDisconnect:v2 error:v6];
        }
      }

      dispatch_assert_queue_V2(*(v2 + 136));
      v4 = MEMORY[0x231885210](*(v2 + 80));
      if (v4)
      {
        [(HAP2CoAPClient *)v2 setCloseCompletion:?];
        v4[2](v4, 0);
      }
    }
  }

  [*(a1 + 32) invalidate];
  __HMFActivityScopeLeave();
}

- (id)openCompletion
{
  dispatch_assert_queue_V2(*(self + 136));
  v2 = MEMORY[0x231885210](*(self + 72));

  return v2;
}

- (void)_didOpenWithError:(uint64_t)error
{
  v5 = a2;
  if (error)
  {
    dispatch_assert_queue_V2(*(error + 136));
    dispatch_assert_queue_V2(*(error + 136));
    if (*(error + 41) == 1)
    {
      openCompletion = [(HAP2CoAPClient *)error openCompletion];
      [(HAP2CoAPClient *)error setOpenCompletion:?];
      if (v5)
      {
        [error setConnected:0];
        dispatch_assert_queue_V2(*(error + 136));
        *(error + 41) = 0;
        [HAP2CoAPIO unregisterConsumer:error];
      }

      else
      {
        [error setConnected:1];
        mEMORY[0x277D0F860] = [MEMORY[0x277D0F860] sharedManager];
        [mEMORY[0x277D0F860] registerWoWAssertionForObject:error];
      }

      (openCompletion)[2](openCompletion, v5);
    }
  }
}

- (void)setCloseCompletion:(uint64_t)completion
{
  v3 = *(completion + 136);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = MEMORY[0x231885210](v4);

  v6 = *(completion + 80);
  *(completion + 80) = v5;
}

- (void)setOpenCompletion:(uint64_t)completion
{
  v3 = *(completion + 136);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = MEMORY[0x231885210](v4);

  v6 = *(completion + 72);
  *(completion + 72) = v5;
}

- (coap_session_t)shouldOpenSessionWithContext:(coap_context_t *)context
{
  v103 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ Open Session", v7];

  v96 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v8];
  p_address = &self->_address;
  session = coap_make_session(1, 1, 0, 0, &self->_address.size, 0, context, 0);
  v11 = session;
  if (!session)
  {
    goto LABEL_55;
  }

  ++*(session + 1);
  v97 = 0;
  v98 = 1;
  sa_family = self->_address.addr.sa.sa_family;
  if (sa_family == 30)
  {
    v13 = self->_address.addr.sin6.sin6_addr.__u6_addr8[0] == 255;
    memset(&block[4], 0, 24);
    *block = p_address->size;
    block[5] = 30;
    *&block[12] = self->_address.addr.sin6.sin6_addr;
    *&block[6] = self->_address.addr.sin.sin_port;
    *&block[28] = self->_address.addr.sin6.sin6_scope_id;
  }

  else if (sa_family == 2)
  {
    v13 = (self->_address.addr.sin.sin_addr.s_addr & 0xF0) == 224;
    memset(&block[4], 0, 28);
    *block = p_address->size;
    *&block[4] = self->_address.addr.sa;
  }

  else
  {
    memset(&block[4], 0, 28);
    *block = p_address->size;
    __memcpy_chk();
    v13 = 0;
  }

  *(v11 + 90) &= 0xEFFBu;
  v14 = socket(block[5], 2, 0);
  *(v11 + 44) = v14;
  if (v14 == -1)
  {
    if (maxlog <= 3)
    {
LABEL_54:
      *(v11 + 90) = 0;
LABEL_55:
      coap_session_release(v11);
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v35 = hap2Log_coap;
      if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        *block = 138412290;
        *&block[4] = self;
        _os_log_error_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "%@ Failed to create coap session", block, 0xCu);
      }

      v36 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      v11 = 0;
      goto LABEL_60;
    }

    v17 = "coap_socket_connect_udp: socket: %s\n";
    goto LABEL_51;
  }

  if (ioctl(v14, 0x8004667EuLL, &v98) == -1 && maxlog >= 4)
  {
    v15 = __error();
    v16 = strerror(*v15);
    coap_log_impl(4, "coap_socket_connect_udp: ioctl FIONBIO: %s\n", v16);
  }

  if (block[5] == 30)
  {
    if (!*&block[6])
    {
      *&block[6] = 13078;
    }

    if (setsockopt(*(v11 + 44), 41, 27, &v97, 4u) == -1 && maxlog >= 4)
    {
      v18 = __error();
      strerror(*v18);
      coap_log_impl(4, "coap_socket_connect_udp: setsockopt IPV6_V6ONLY: %s\n");
    }
  }

  else if (block[5] == 2)
  {
    if (!*&block[6])
    {
      *&block[6] = 13078;
    }
  }

  else if (maxlog >= 1)
  {
    coap_log_impl(1, "coap_socket_connect_udp: unsupported sa_family\n");
  }

  if (v11[21])
  {
    if (setsockopt(*(v11 + 44), 0xFFFF, 4, &v98, 4u) == -1 && maxlog >= 4)
    {
      v19 = __error();
      v20 = strerror(*v19);
      coap_log_impl(4, "coap_socket_connect_udp: setsockopt SO_REUSEADDR: %s\n", v20);
    }

    v21 = v11[21] == 2 ? 16 : *(v11 + 4);
    if (bind(*(v11 + 44), (v11 + 20), v21) == -1)
    {
      if (maxlog <= 3)
      {
        goto LABEL_52;
      }

      v17 = "coap_socket_connect_udp: bind: %s\n";
      goto LABEL_51;
    }
  }

  v22 = *(v11 + 44);
  if (v13)
  {
    if (getsockname(v22, (v11 + 140), v11 + 34) == -1 && maxlog >= 4)
    {
      v23 = __error();
      v24 = strerror(*v23);
      coap_log_impl(4, "coap_socket_connect_udp: getsockname for multicast socket: %s\n", v24);
    }

    *(v11 + 108) = 0;
    v25 = v11 + 108;
    *(v11 + 33) = 0;
    *(v11 + 116) = 0;
    *(v11 + 124) = 0;
    v26 = *block;
    *(v11 + 26) = *block;
    if (block[5] == 2)
    {
      *v25 = *&block[4];
    }

    else if (block[5] == 30)
    {
      v11[109] = 30;
      *(v11 + 116) = *&block[12];
      *(v11 + 55) = *&block[6];
      *(v11 + 33) = *&block[28];
    }

    else
    {
      memcpy(v25, &block[4], v26);
    }

    v29 = 4096;
    goto LABEL_65;
  }

  if (connect(v22, &block[4], *block) == -1)
  {
    if (maxlog <= 3)
    {
      goto LABEL_52;
    }

    v17 = "coap_socket_connect_udp: connect: %s\n";
LABEL_51:
    v32 = __error();
    v33 = strerror(*v32);
    coap_log_impl(4, v17, v33);
LABEL_52:
    v34 = *(v11 + 44);
    if (v34 != -1)
    {
      *(v11 + 23) = 0;
      *(v11 + 24) = 0;
      close(v34);
      *(v11 + 44) = -1;
    }

    goto LABEL_54;
  }

  if (getsockname(*(v11 + 44), (v11 + 140), v11 + 34) == -1 && maxlog >= 4)
  {
    v27 = __error();
    v28 = strerror(*v27);
    coap_log_impl(4, "coap_socket_connect_udp: getsockname: %s\n", v28);
  }

  v29 = 4;
  if (getpeername(*(v11 + 44), (v11 + 108), v11 + 26) == -1 && maxlog >= 4)
  {
    v30 = __error();
    v31 = strerror(*v30);
    coap_log_impl(4, "coap_socket_connect_udp: getpeername: %s\n", v31);
  }

LABEL_65:
  v40 = -1640531527;
  v41 = *(v11 + 90) | v29 | 0x11;
  *(v11 + 23) = v11;
  *(v11 + 90) = v41;
  v42 = -17973521;
  v43 = 64;
  v44 = 104;
  v45 = -1640531527;
  do
  {
    v46 = *&v11[v44 + 4] + v40;
    v47 = *&v11[v44 + 8] + v42;
    v48 = (*&v11[v44] + v45 - (v46 + v47)) ^ (v47 >> 13);
    v49 = (v46 - v47 - v48) ^ (v48 << 8);
    v50 = (v47 - v48 - v49) ^ (v49 >> 13);
    v51 = (v48 - v49 - v50) ^ (v50 >> 12);
    v52 = (v49 - v50 - v51) ^ (v51 << 16);
    v53 = (v50 - v51 - v52) ^ (v52 >> 5);
    v45 = (v51 - v52 - v53) ^ (v53 >> 3);
    v40 = (v52 - v53 - v45) ^ (v45 << 10);
    v42 = (v53 - v45 - v40) ^ (v40 >> 15);
    v43 -= 12;
    v44 += 12;
  }

  while (v43 > 0xB);
  v54 = (v45 + (v11[167] << 24) + (v11[166] << 16) + (v11[165] << 8) + v11[164] + -64 - v42 - v40) ^ ((v42 + 64) >> 13);
  v55 = (v40 + -64 - v42 - v54) ^ (v54 << 8);
  v56 = (v42 + 64 - v54 - v55) ^ (v55 >> 13);
  v57 = (v54 - v55 - v56) ^ (v56 >> 12);
  v58 = (v55 - v56 - v57) ^ (v57 << 16);
  v59 = (v56 - v57 - v58) ^ (v58 >> 5);
  v60 = (v57 - v58 - v59) ^ (v59 >> 3);
  v61 = (v59 - v60 - ((v58 - v59 - v60) ^ (v60 << 10))) ^ (((v58 - v59 - v60) ^ (v60 << 10)) >> 15);
  v62 = (v11 + 48);
  *(v11 + 11) = v11 + 104;
  *(v11 + 24) = 64;
  *(v11 + 25) = v61;
  var7 = context->var7;
  if (var7)
  {
    var0 = var7->var7.var0;
    *(v11 + 6) = var0;
    *(v11 + 8) = 0;
    v65 = *(var0 + 3);
    *(v11 + 7) = v65 - *(var0 + 4);
    *(v65 + 16) = v11;
    *(var0 + 3) = v62;
  }

  else
  {
    *(v11 + 7) = 0;
    *(v11 + 8) = 0;
    context->var7 = v11;
    v66 = malloc_type_malloc(0x40uLL, 0x10200405F856B24uLL);
    context->var7->var7.var0 = v66;
    if (!v66)
    {
      goto LABEL_116;
    }

    *(v66 + 2) = 0u;
    *(v66 + 3) = 0u;
    *v66 = 0u;
    *(v66 + 1) = 0u;
    v67 = context->var7;
    v68 = v67->var7.var0;
    *(v68 + 1) = 0x500000020;
    *(v68 + 3) = &v67->var7;
    *(v68 + 4) = 48;
    v69 = malloc_type_malloc(0x200uLL, 0x1020040EDED9539uLL);
    *context->var7->var7.var0 = v69;
    if (!v69)
    {
      goto LABEL_116;
    }

    v69[30] = 0u;
    v69[31] = 0u;
    v69[28] = 0u;
    v69[29] = 0u;
    v69[26] = 0u;
    v69[27] = 0u;
    v69[24] = 0u;
    v69[25] = 0u;
    v69[22] = 0u;
    v69[23] = 0u;
    v69[20] = 0u;
    v69[21] = 0u;
    v69[18] = 0u;
    v69[19] = 0u;
    v69[16] = 0u;
    v69[17] = 0u;
    v69[14] = 0u;
    v69[15] = 0u;
    v69[12] = 0u;
    v69[13] = 0u;
    v69[10] = 0u;
    v69[11] = 0u;
    v69[8] = 0u;
    v69[9] = 0u;
    v69[6] = 0u;
    v69[7] = 0u;
    v69[4] = 0u;
    v69[5] = 0u;
    v69[2] = 0u;
    v69[3] = 0u;
    *v69 = 0u;
    v69[1] = 0u;
    var0 = context->var7->var7.var0;
    *(var0 + 14) = -1609490463;
  }

  ++*(var0 + 4);
  v70 = *var0 + 16 * ((*(var0 + 2) - 1) & v61);
  v71 = *(v70 + 8) + 1;
  *(v70 + 8) = v71;
  v72 = *v70;
  *(v11 + 9) = 0;
  *(v11 + 10) = v72;
  if (v72)
  {
    *(v72 + 24) = v62;
  }

  *v70 = v62;
  if (v71 >= 10 * *(v70 + 12) + 10 && !(*v62)[6].i32[1])
  {
    v73 = malloc_type_malloc(32 * (*v62)[1].u32[0], 0x1020040EDED9539uLL);
    if (v73)
    {
      v74 = v73;
      bzero(v73, 32 * (*v62)[1].u32[0]);
      v75 = *v62;
      v76 = (*v62)[2].u32[0];
      v77 = (*v62)[1].u32[0];
      v78 = 2 * v77 - 1;
      if ((v78 & v76) != 0)
      {
        v79 = (v76 >> ((*v62)[1].i32[1] + 1)) + 1;
      }

      else
      {
        v79 = v76 >> ((*v62)[1].i32[1] + 1);
      }

      v75[5].i32[0] = v79;
      v75[5].i32[1] = 0;
      v80 = *v75;
      if (v77)
      {
        v81 = 0;
        for (i = 0; i != v77; ++i)
        {
          v83 = v80[2 * i];
          if (v83)
          {
            do
            {
              v84 = *(v83 + 32);
              v85 = &v74[16 * (*(v83 + 52) & v78)];
              v86 = *(v85 + 2) + 1;
              *(v85 + 2) = v86;
              if (v86 > v79)
              {
                v75[5].i32[1] = ++v81;
                *(v85 + 3) = v86 / v79;
              }

              *(v83 + 24) = 0;
              v87 = *v85;
              *(v83 + 32) = *v85;
              if (v87)
              {
                *(v87 + 24) = v83;
              }

              *v85 = v83;
              v83 = v84;
            }

            while (v84);
          }
        }
      }

      free(v80);
      v88 = *v62;
      v89 = (*v62)[1];
      v90.i32[0] = vadd_s32(v89, v89).u32[0];
      v90.i32[1] = vadd_s32(v89, 0x100000001).i32[1];
      v88[1] = v90;
      *v88 = v74;
      if (v88[5].i32[1] <= v88[2].i32[0] >> 1)
      {
        v88[6].i32[0] = 0;
      }

      else
      {
        v91 = v88[6].i32[0] + 1;
        v88[6].i32[0] = v91;
        if (v91 >= 2)
        {
          v88[6].i32[1] = 1;
        }
      }

      goto LABEL_93;
    }

LABEL_116:
    exit(-1);
  }

LABEL_93:
  if (maxlog >= 7)
  {
    coap_session_str(v11);
    coap_log_impl(7, "***%s: new outgoing session\n", &coap_session_str_szSession);
  }

  v92 = *v11;
  if ((v92 - 3) < 2)
  {
    if ((*(v11 + 90) & 0x80) != 0)
    {
      v93 = 1;
      goto LABEL_103;
    }

    if (v92 != 4)
    {
      coap_session_send_csm(v11);
      goto LABEL_104;
    }

    goto LABEL_101;
  }

  if (v92 == 2)
  {
LABEL_101:
    *(v11 + 27) = 0;
    ++*(v11 + 1);
    goto LABEL_55;
  }

  if (v92 == 1)
  {
    v93 = 4;
LABEL_103:
    v11[2] = v93;
  }

LABEL_104:
  *block = 0;
  *&block[8] = 0;
  gettimeofday(block, 0);
  *(v11 + 34) = 1000 * (*block - coap_clock_offset) + ((*&block[8] * 1.024 + 512.0) >> 10);
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v94 = hap2Log_coap;
  if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_INFO))
  {
    *block = 138412290;
    *&block[4] = self;
    _os_log_impl(&dword_22AADC000, v94, OS_LOG_TYPE_INFO, "%@ Created CoAP client session", block, 0xCu);
  }

  *(v11 + 88) = [(HAP2CoAPClient *)self maxTransmitAttempts]- 1;
  [(HAP2CoAPClient *)self initialACKTimeout];
  *(v11 + 178) = v95;
  *(v11 + 179) = (v95 * 1000.0);
  *(v11 + 90) = 6553601;
  if (maxlog >= 7)
  {
    coap_session_str(v11);
    coap_log_impl(7, "***%s: session ack_random_factor set to %d.%03d\n", &coap_session_str_szSession, *(v11 + 180), *(v11 + 181));
  }

  *(v11 + 3) = 65532;
  if (*(v11 + 2) >= 0xFFFCu)
  {
    *(v11 + 2) = 65532;
    if (maxlog >= 3)
    {
      coap_log_impl(3, "DTLS overhead exceeds MTU\n");
    }
  }

  v36 = 0;
LABEL_60:
  workQueue = self->_workQueue;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __50__HAP2CoAPClient__ioThreadOpenSessionWithContext___block_invoke;
  *&block[24] = &unk_2786D7078;
  v100 = v96;
  selfCopy = self;
  v102 = v36;
  v38 = v36;
  dispatch_async(workQueue, block);

  __HMFActivityScopeLeave();
  return v11;
}

void __50__HAP2CoAPClient__ioThreadOpenSessionWithContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  v2 = *(a1 + 32);
  [(HAP2CoAPClient *)*(a1 + 40) _didOpenWithError:?];
  [*(a1 + 32) invalidate];
  __HMFActivityScopeLeave();
}

- (void)closeWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"%@ Close", v10];

  v12 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v11];
  v21 = v12;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HAP2CoAPClient_closeWithError_completion___block_invoke;
  block[3] = &unk_2786D66C8;
  v17 = v12;
  selfCopy = self;
  v19 = errorCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = errorCopy;
  dispatch_async(workQueue, block);

  __HMFActivityScopeLeave();
}

void __44__HAP2CoAPClient_closeWithError_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  v22 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __44__HAP2CoAPClient_closeWithError_completion___block_invoke_2;
  v19 = &unk_2786D6790;
  v21 = *(a1 + 56);
  v20 = *(a1 + 32);
  v4 = v3;
  v5 = &v16;
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 136));
    [v2 setConnected:{0, v16, v17}];
    v6 = [MEMORY[0x277D0F860] sharedManager];
    [v6 deregisterWoWAssertionForObject:v2];

    dispatch_assert_queue_V2(*(v2 + 136));
    if (*(v2 + 41))
    {
      [(HAP2CoAPClient *)v2 setCloseCompletion:v5];
      v7 = v4;
      dispatch_assert_queue_V2(*(v2 + 136));
      objc_storeStrong((v2 + 96), v3);

      dispatch_assert_queue_V2(*(v2 + 136));
      *(v2 + 41) = 0;
      [HAP2CoAPIO unregisterConsumer:v2];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
      }

      v9 = v8;
      v10 = [(HAP2CoAPClient *)v2 responseCompletionsByToken];
      v11 = [v10 count];

      if (v11)
      {
        v12 = [(HAP2CoAPClient *)v2 responseCompletionsByToken];
        v13 = [v12 allValues];

        v14 = [(HAP2CoAPClient *)v2 responseCompletionsByToken];
        [v14 removeAllObjects];

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __45__HAP2CoAPClient__closeWithError_completion___block_invoke;
        v23[3] = &unk_2786D4DB0;
        v24 = v9;
        [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
      }

      v15 = [(HAP2CoAPClient *)v2 openCompletion];
      if (v15)
      {
        [(HAP2CoAPClient *)v2 setOpenCompletion:?];
        (v15)[2](v15, v9);
      }
    }

    else
    {
      (v18)(v5, 0);
    }
  }

  __HMFActivityScopeLeave();
}

uint64_t __44__HAP2CoAPClient_closeWithError_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)alterMaxTransmitAttempts:(unint64_t)attempts initialACKTimeout:(double)timeout
{
  selfCopy = self;
  if (fabs(timeout) >= 2.22044605e-16)
  {
    timeoutCopy = timeout;
  }

  else
  {
    timeoutCopy = 1.428;
  }

  if (attempts)
  {
    attemptsCopy = attempts;
  }

  else
  {
    attemptsCopy = 3;
  }

  if (self)
  {
    self = self->_propertyLock;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HAP2CoAPClient_alterMaxTransmitAttempts_initialACKTimeout___block_invoke;
  v9[3] = &unk_2786D4D60;
  v9[4] = selfCopy;
  v9[5] = attemptsCopy;
  *&v9[6] = timeoutCopy;
  [(HAP2CoAPClient *)self performWritingBlock:v9];
  if (selfCopy)
  {
    workQueue = selfCopy->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HAP2CoAPClient_alterMaxTransmitAttempts_initialACKTimeout___block_invoke_2;
  v8[3] = &unk_2786D4D60;
  v8[4] = selfCopy;
  v8[5] = attemptsCopy;
  *&v8[6] = timeoutCopy;
  dispatch_async(workQueue, v8);
}

uint64_t __61__HAP2CoAPClient_alterMaxTransmitAttempts_initialACKTimeout___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMaxTransmitAttempts:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setInitialACKTimeout:v2];
}

void __61__HAP2CoAPClient_alterMaxTransmitAttempts_initialACKTimeout___block_invoke_2(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = a1[5];
    v3 = a1[6];
    dispatch_assert_queue_V2(v1[17]);
    if (([(dispatch_queue_t *)v1 connected]& 1) != 0)
    {
      [(dispatch_queue_t *)v1 initialACKTimeout:MEMORY[0x277D85DD0]];
      [(HAP2CoAPClient *)v1 _queueSessionBlock:0 withTimeout:v4 requiresCompletion:?];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v5 = hap2Log_coap;
      if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v6) = 0;
        _os_log_error_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "Cannot alter timing values when not connected", &v6, 2u);
      }
    }
  }
}

void __62__HAP2CoAPClient__alterMaxTransmitAttempts_initialACKTimeout___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_coap;
  if (a3)
  {
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 134218240;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "Altering timing values: maxTransmitAttempts = %lu, initialACKTimeout = %f", &v9, 0x16u);
    }

    *(a3 + 352) = *(a1 + 32) - 1;
    v8 = *(a1 + 40);
    *(a3 + 356) = v8;
    *(a3 + 358) = (v8 * 1000.0);
  }

  else if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v9) = 0;
    _os_log_error_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "Cannot alter timing values without a session", &v9, 2u);
  }
}

- (void)_queueSessionBlock:(uint64_t)block withTimeout:(double)timeout requiresCompletion:
{
  v7 = a2;
  dispatch_assert_queue_V2(self[17]);
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HAP2CoAPClient__queueSessionBlock_withTimeout_requiresCompletion___block_invoke;
  v9[3] = &unk_2786D4D88;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [HAP2CoAPIO queueSessionBlockForConsumer:self sessionBlock:v9 withTimeout:block requiresCompletion:timeout];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __68__HAP2CoAPClient__queueSessionBlock_withTimeout_requiresCompletion___block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 40)))
  {
    (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)sendRequestWithMethod:(unsigned __int8)method path:(id)path payload:(id)payload dscpPriority:(int64_t)priority completion:(id)completion
{
  pathCopy = path;
  payloadCopy = payload;
  completionCopy = completion;
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 stringWithFormat:@"%@ Send Request", v17];

  v19 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v18];
  v32 = v19;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HAP2CoAPClient_sendRequestWithMethod_path_payload_dscpPriority_completion___block_invoke;
  block[3] = &unk_2786D4D38;
  v25 = v19;
  selfCopy = self;
  methodCopy = method;
  v27 = pathCopy;
  v28 = payloadCopy;
  v29 = completionCopy;
  priorityCopy = priority;
  v21 = completionCopy;
  v22 = payloadCopy;
  v23 = pathCopy;
  dispatch_async(workQueue, block);

  __HMFActivityScopeLeave();
}

void __77__HAP2CoAPClient_sendRequestWithMethod_path_payload_dscpPriority_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  v29 = *(a1 + 32);
  v21 = *(a1 + 80);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v22 = *(a1 + 72);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v25 = __77__HAP2CoAPClient_sendRequestWithMethod_path_payload_dscpPriority_completion___block_invoke_2;
  v26 = &unk_2786D4DD8;
  v28 = *(a1 + 64);
  v27 = *(a1 + 32);
  v23 = v2;
  v6 = v3;
  v7 = v4;
  v8 = v24;
  if (v5)
  {
    dispatch_assert_queue_V2(v5[17]);
    if (([(dispatch_queue_t *)v5 connected]& 1) != 0)
    {
      dispatch_assert_queue_V2(v5[17]);
      v9 = *MEMORY[0x277CDC540];
      while (1)
      {
        while (1)
        {
          LODWORD(bytes[0]) = 0;
          if (SecRandomCopyBytes(v9, 4uLL, bytes))
          {
            break;
          }

          v10 = LODWORD(bytes[0]);
          if (LODWORD(bytes[0]))
          {
            goto LABEL_8;
          }
        }

        v10 = arc4random();
        if (v10)
        {
LABEL_8:
          v11 = [(HAP2CoAPClient *)v5 responseCompletionsByToken];
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
          v13 = [v11 objectForKeyedSubscript:v12];

          if (!v13)
          {
            v14 = stringForToken(v10);
            [v7 markWithFormat:@"Token: %@", v14];

            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __87__HAP2CoAPClient__sendRequestWithMethod_path_payload_activity_dscpPriority_completion___block_invoke;
            v37[3] = &unk_2786D4DD8;
            v15 = v7;
            v38 = v15;
            v39 = v8;
            v16 = MEMORY[0x231885210](v37);
            v17 = [(HAP2CoAPClient *)v5 responseCompletionsByToken];
            v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
            [v17 setObject:v16 forKeyedSubscript:v18];

            bytes[0] = MEMORY[0x277D85DD0];
            bytes[1] = 3221225472;
            bytes[2] = __87__HAP2CoAPClient__sendRequestWithMethod_path_payload_activity_dscpPriority_completion___block_invoke_2;
            bytes[3] = &unk_2786D4E00;
            v36 = v21;
            v31 = v23;
            v32 = v6;
            v35 = v10;
            v33 = v15;
            v34 = v22;
            [(dispatch_queue_t *)v5 initialACKTimeout];
            [(HAP2CoAPClient *)v5 _queueSessionBlock:1 withTimeout:v19 requiresCompletion:?];

            v20 = v38;
            goto LABEL_11;
          }
        }
      }
    }

    v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    (v25)(v8, 0, v20);
LABEL_11:
  }

  __HMFActivityScopeLeave();
}

uint64_t __77__HAP2CoAPClient_sendRequestWithMethod_path_payload_dscpPriority_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void __87__HAP2CoAPClient__sendRequestWithMethod_path_payload_activity_dscpPriority_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) begin];
  v9 = *(a1 + 32);
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 markWithFormat:@"Failed to receive response: %@", v6, v9];
  }

  else
  {
    [v7 markWithReason:@"Received response"];
  }

  v8 = *(a1 + 32);
  [v5 length];
  [v6 domain];

  [v6 code];
  (*(*(a1 + 40) + 16))();
  __HMFActivityScopeLeave();
}

void __87__HAP2CoAPClient__sendRequestWithMethod_path_payload_activity_dscpPriority_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 68);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v6;
  v49 = v7;
  v11 = v8;
  v12 = v11;
  if (!a2)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    v13 = *(a3 + 224) + 1;
    *(a3 + 224) = v13;
    v14 = v13;
    [v11 markWithFormat:@"Message id: %lu", v13];
    v15 = coap_session_max_pdu_size(a3);
    v16 = coap_pdu_init(0, v5, v13, v15);
    if (!v16)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v34 = hap2Log_coap;
      if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      v35 = v34;
      v36 = stringForToken(v7);
      *buf = 134218242;
      v51 = v13;
      v52 = 2112;
      v53 = v36;
      _os_log_error_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "<Request id=%lu, token=%@> failed to allocate pdu", buf, 0x16u);

      goto LABEL_26;
    }

    v17 = v16;
    if (coap_add_token(v16, 4uLL, &v49))
    {
      if ([v9 length])
      {
        v18 = [v9 UTF8String];
        if (!v18)
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v41 = hap2Log_coap;
          if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_48;
          }

          v38 = v41;
          v39 = _stringForMessage(v17, 0);
          *buf = 138412546;
          v51 = v39;
          v52 = 2112;
          v53 = v9;
          v40 = "%@ failed to get utf8 for path '%@'";
          goto LABEL_47;
        }

        if (!coap_add_option(v17, 0xBu, [v9 lengthOfBytesUsingEncoding:4], v18))
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v46 = hap2Log_coap;
          if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_48;
          }

          v38 = v46;
          v39 = _stringForMessage(v17, 0);
          *buf = 138412546;
          v51 = v39;
          v52 = 2112;
          v53 = v9;
          v40 = "%@ failed to attach path '%@'";
          goto LABEL_47;
        }
      }

      if (![v10 length])
      {
        goto LABEL_12;
      }

      v19 = [v10 length];
      v20 = [v10 bytes];
      if (!v19)
      {
        goto LABEL_12;
      }

      v21 = v20;
      v22 = coap_add_data_after(v17, v19);
      if (v22)
      {
        memcpy(v22, v21, v19);
LABEL_12:
        [v12 markWithReason:@"Sending request"];
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "length")}];
        if (coap_send(a3, v17) != -1)
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v24 = hap2Log_coap;
          if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a2 + 144);
            v26 = v25;
            v27 = v24;
            coap_session_str(a3);
            v28 = _stringForMessage(v17, 0);
            *buf = 138478339;
            v51 = v25;
            v52 = 2081;
            v53 = &coap_session_str_szSession;
            v54 = 2112;
            v55 = v28;
            _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEFAULT, "[%{private}@] %{private}s: %@ sent", buf, 0x20u);
          }

          [v12 markWithReason:@"Sent Request"];
          v29 = *(a2 + 104);
          v30 = MEMORY[0x277CCABB0];
          v31 = v29;
          v32 = [v30 numberWithUnsignedInt:v7];
          [v31 addObject:v32];

          goto LABEL_50;
        }

        [v12 markWithReason:@"Send Request Failed"];
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v42 = hap2Log_coap;
        if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
        {
LABEL_49:
          [(HAP2CoAPClient *)a2 _ioThreadRequestFailed:v7];
          goto LABEL_50;
        }

        v43 = *(a2 + 144);
        v44 = v43;
        v35 = v42;
        v45 = stringForToken(v7);
        *buf = 138478339;
        v51 = v43;
        v52 = 2048;
        v53 = v14;
        v54 = 2112;
        v55 = v45;
        _os_log_error_impl(&dword_22AADC000, v35, OS_LOG_TYPE_ERROR, "[%{private}@] <Request id=%lu, token=%@> failed to send", buf, 0x20u);

LABEL_26:
        goto LABEL_49;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v47 = hap2Log_coap;
      if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
LABEL_48:
        coap_delete_pdu(v17);
        goto LABEL_49;
      }

      v38 = v47;
      v39 = _stringForMessage(v17, 0);
      v48 = [v10 length];
      *buf = 138412546;
      v51 = v39;
      v52 = 2048;
      v53 = v48;
      v40 = "%@ failed to attach payload (%lu bytes)";
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v37 = hap2Log_coap;
      if (!os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v38 = v37;
      v39 = stringForToken(v7);
      *buf = 134218242;
      v51 = v14;
      v52 = 2112;
      v53 = v39;
      v40 = "<Request id=%lu, token=%@> failed to attach token";
    }

LABEL_47:
    _os_log_error_impl(&dword_22AADC000, v38, OS_LOG_TYPE_ERROR, v40, buf, 0x16u);

    goto LABEL_48;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v33 = hap2Log_coap;
  if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v51 = a2;
    _os_log_error_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%@ Failed to retrieve session", buf, 0xCu);
  }

LABEL_50:
}

- (void)_ioThreadRequestFailed:(uint64_t)failed
{
  v2 = *(failed + 136);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__HAP2CoAPClient__ioThreadRequestFailed___block_invoke;
  v3[3] = &unk_2786D6740;
  v3[4] = failed;
  v4 = a2;
  dispatch_async(v2, v3);
}

void __41__HAP2CoAPClient__ioThreadRequestFailed___block_invoke(uint64_t a1)
{
  [(HAP2CoAPClient *)*(a1 + 32) _queueSessionCompletion];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
  [(HAP2CoAPClient *)v2 _callResponseCompletion:v3 response:0 error:v4];
}

- (void)openWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ Open", v7];

  v9 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v8];
  v16 = v9;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HAP2CoAPClient_openWithCompletion___block_invoke;
  block[3] = &unk_2786D69E0;
  v13 = v9;
  selfCopy = self;
  v15 = completionCopy;
  v11 = completionCopy;
  dispatch_async(workQueue, block);

  __HMFActivityScopeLeave();
}

void __37__HAP2CoAPClient_openWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  v9 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v5 = __37__HAP2CoAPClient_openWithCompletion___block_invoke_2;
  v6 = &unk_2786D6790;
  v2 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  v3 = v4;
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 136));
    if ([v2 connected])
    {
      (v5)(v3, 0);
    }

    else
    {
      [(HAP2CoAPClient *)v2 setOpenCompletion:v3];
      dispatch_assert_queue_V2(*(v2 + 136));
      if ((*(v2 + 41) & 1) == 0)
      {
        dispatch_assert_queue_V2(*(v2 + 136));
        *(v2 + 41) = 1;
        [HAP2CoAPIO registerConsumer:v2];
      }
    }
  }

  __HMFActivityScopeLeave();
}

uint64_t __37__HAP2CoAPClient_openWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)setInitialACKTimeout:(double)timeout
{
  selfCopy = self;
  if (self)
  {
    self = self->_propertyLock;
  }

  [(HAP2CoAPClient *)self assertOwner];
  selfCopy->_initialACKTimeout = timeout;
}

- (double)initialACKTimeout
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v11 = 0;
  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HAP2CoAPClient_initialACKTimeout__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

double __35__HAP2CoAPClient_initialACKTimeout__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setMaxTransmitAttempts:(unint64_t)attempts
{
  selfCopy = self;
  if (self)
  {
    self = self->_propertyLock;
  }

  [(HAP2CoAPClient *)self assertOwner];
  selfCopy->_maxTransmitAttempts = attempts;
}

- (unint64_t)maxTransmitAttempts
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v11 = 0;
  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HAP2CoAPClient_maxTransmitAttempts__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)setConnected:(BOOL)connected
{
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__HAP2CoAPClient_setConnected___block_invoke;
  v4[3] = &unk_2786D6768;
  v4[4] = self;
  connectedCopy = connected;
  [(HAP2PropertyLock *)propertyLock performWritingBlock:v4];
}

- (BOOL)connected
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v11 = 0;
  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__HAP2CoAPClient_connected__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__HAP2CoAPClient_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  [(HAP2PropertyLock *)propertyLock performWritingBlock:v7];
}

- (HAP2CoAPClientDelegate)delegate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__13800;
  v12 = __Block_byref_object_dispose__13801;
  v13 = 0;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__HAP2CoAPClient_delegate__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __26__HAP2CoAPClient_delegate__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_loadWeakRetained((*(a1 + 32) + 48));

  return MEMORY[0x2821F96F8]();
}

- (char)_initWithIPAddress:(unsigned int)address port:(uint64_t)port maxTransmitAttempts:(void *)attempts initialACKTimeout:(double)timeout workQueue:
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = a2;
  attemptsCopy = attempts;
  if (self)
  {
    if (address)
    {
      addressCopy = address;
    }

    else
    {
      addressCopy = 5683;
    }

    memset(v17, 0, sizeof(v17));
    if ([HAP2CoAPIO setCoapAddressFromString:v11 port:addressCopy coapAddress:v17])
    {
      self = [(HAP2CoAPClient *)self initWithSocketAddress:0 withAccessoryName:attemptsCopy workQueue:port maxTransmitAttempts:timeout initialACKTimeout:?];
      selfCopy = self;
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v15 = hap2Log_coap;
      if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_error_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "Failed to parse address from string: %@", buf, 0xCu);
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (char)initWithSocketAddress:(void *)address withAccessoryName:(void *)name workQueue:(uint64_t)queue maxTransmitAttempts:(double)attempts initialACKTimeout:
{
  addressCopy = address;
  nameCopy = name;
  v13 = a2[1];
  if (nameCopy)
  {
    v14 = nameCopy;
  }

  else
  {
    v15 = HAPDispatchQueueName(self, @"workQueue");
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_get_global_queue(17, 0);
    v14 = dispatch_queue_create_with_target_V2(v15, v16, v17);
  }

  v35.receiver = self;
  v35.super_class = HAP2CoAPClient;
  v18 = objc_msgSendSuper2(&v35, sel_init);
  v19 = v18;
  if (v18)
  {
    if (v13 == 30)
    {
      v20 = 28;
    }

    else
    {
      v20 = 16;
    }

    if (*a2)
    {
      v21 = *a2;
    }

    else
    {
      v21 = v20;
    }

    if (!queue)
    {
      queue = 3;
    }

    if (attempts <= 0.0)
    {
      attempts = 1.428;
    }

    *(v18 + 12) = 0;
    *(v18 + 28) = 0;
    *(v18 + 20) = 0;
    *(v18 + 9) = 0;
    *(v18 + 2) = 28;
    *(v18 + 2) = v21;
    memcpy(v18 + 12, a2, v21);
    v22 = [HAP2PropertyLock lockWithName:@"HAP2CoAPClient.propertyLock"];
    v23 = *(v19 + 16);
    *(v19 + 16) = v22;

    if (addressCopy)
    {
      v24 = addressCopy;
    }

    else
    {
      v24 = &stru_283E79C60;
    }

    objc_storeStrong(v19 + 18, v24);
    objc_storeStrong(v19 + 17, v14);
    *(v19 + 7) = queue;
    *(v19 + 8) = attempts;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v26 = *(v19 + 11);
    *(v19 + 11) = dictionary;

    v27 = *(v19 + 12);
    *(v19 + 12) = 0;

    v28 = [MEMORY[0x277CBEB58] set];
    v29 = *(v19 + 13);
    *(v19 + 13) = v28;

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v31 = *(v19 + 14);
    *(v19 + 14) = orderedSet;

    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    v33 = *(v19 + 15);
    *(v19 + 15) = orderedSet2;
  }

  return v19;
}

- (HAP2CoAPClient)initWithSocketAddress:(const sockaddr *)address withAccessoryName:(id)name maxTransmitAttempts:(unint64_t)attempts initialACKTimeout:(double)timeout
{
  if (self)
  {
    return [(HAP2CoAPClient *)self initWithSocketAddress:name withAccessoryName:0 workQueue:attempts maxTransmitAttempts:timeout initialACKTimeout:?];
  }

  return self;
}

@end
@interface HAPAccessoryServerBTLE200
@end

@implementation HAPAccessoryServerBTLE200

void __43___HAPAccessoryServerBTLE200_timerDidFire___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) pairingActivity];
}

void __64___HAPAccessoryServerBTLE200_securitySession_didCloseWithError___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 48);
      *buf = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Security session did close with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) submitPairVerifyMetricWithError:*(a1 + 48)];
    [*(a1 + 40) setSecuritySession:0];
    if (([*(a1 + 40) _shouldIgnoreRetryDiscoveryError:*(a1 + 48)] & 1) == 0)
    {
      [*(a1 + 40) _updateLastKeyBagIdentityIndexFailingPVWithError:*(a1 + 48)];
      v9 = [*(a1 + 40) shouldRetryPVDueToAuthenticationError:*(a1 + 48)];
      v10 = *(a1 + 40);
      if (v9)
      {
        v11 = [v10 clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64___HAPAccessoryServerBTLE200_securitySession_didCloseWithError___block_invoke_1012;
        block[3] = &unk_2786D6CA0;
        block[4] = *(a1 + 40);
        dispatch_async(v11, block);
      }

      else
      {
        [v10 _disconnectWithDisconnectionError:0 completionHandler:0];
        if (*(a1 + 48))
        {
          [*(a1 + 40) _cancelAllQueuedOperationsWithError:?];
          [*(a1 + 40) _resumeAllOperations];
          [*(a1 + 40) updateResumeSessionID:0];
        }
      }
    }
  }
}

void __53___HAPAccessoryServerBTLE200_securitySessionDidOpen___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) accessoryCache];
    [v4 setLastKeyBagIdentityIndexFailingPV:0];

    v5 = *(a1 + 40);
    v6 = [v5 identifier];
    [v5 associateAccessoryWithControllerKeyUsingAccessoryIdentifier:v6];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 32) resumeSessionID];
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Security session is open with resumeSessionID %llu", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) submitPairVerifyMetricWithError:0];
    [*(a1 + 40) updateResumeSessionID:{objc_msgSend(*(a1 + 32), "resumeSessionID")}];
    [*(a1 + 40) _notifyDelegatesOfConnectionState:1 withError:0];
    [*(a1 + 40) _resumeAllOperations];
  }
}

void __55___HAPAccessoryServerBTLE200_securitySessionIsOpening___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Security session is opening", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void __74___HAPAccessoryServerBTLE200_securitySession_didReceiveSetupExchangeData___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Request to send security session setup exchange", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) _handleSecuritySessionSetupExchangeData:*(a1 + 48)];
  }
}

void __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Auth Complete with status: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v8)
  {
    v8 = *(a1 + 40);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke_994;
  v20[3] = &unk_2786D7050;
  v20[4] = *(a1 + 32);
  v9 = v8;
  v21 = v9;
  __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke_994(v20);
  v10 = [*(a1 + 32) delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [*(a1 + 32) delegateQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke_2;
    v18[3] = &unk_2786D7050;
    v13 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v13;
    dispatch_async(v12, v18);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:didFinishAuth:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

void __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke_994(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __55___HAPAccessoryServerBTLE200_authSession_authComplete___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didFinishAuth:*(a1 + 40)];
}

void __60___HAPAccessoryServerBTLE200_authSession_confirmUUID_token___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60___HAPAccessoryServerBTLE200_authSession_confirmUUID_token___block_invoke_2;
    block[3] = &unk_2786D7078;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v5;
    v15 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:confirmUUID:token:)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }
}

void __60___HAPAccessoryServerBTLE200_authSession_confirmUUID_token___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) confirmUUID:*(a1 + 40) token:*(a1 + 48)];
}

void __65___HAPAccessoryServerBTLE200_authSession_authenticateUUID_token___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65___HAPAccessoryServerBTLE200_authSession_authenticateUUID_token___block_invoke_2;
    block[3] = &unk_2786D7078;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v5;
    v15 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:authenticateUUID:token:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }
}

void __65___HAPAccessoryServerBTLE200_authSession_authenticateUUID_token___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) authenticateUUID:*(a1 + 40) token:*(a1 + 48)];
}

void __61___HAPAccessoryServerBTLE200_authSession_validateUUID_token___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    [*(a1 + 32) _suspendConnectionIdleTimer];
    v4 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61___HAPAccessoryServerBTLE200_authSession_validateUUID_token___block_invoke_2;
    block[3] = &unk_2786D7078;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v5;
    v15 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement validateUUID:token1:token2:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }
}

void __61___HAPAccessoryServerBTLE200_authSession_validateUUID_token___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 authenticatedProtocolInfo];
  v6 = [v5 modelName];
  [v7 accessoryServer:v2 validateUUID:v3 token:v4 model:v6];
}

uint64_t __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_2;
  v4[3] = &unk_2786D4478;
  v4[4] = v2;
  return [v2 _sendProtocolInfoServiceExchangeData:v1 completion:v4];
}

void __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v10;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@SW Auth failed, sending auth exchange with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = v5;
    v12 = [v11 userInfo];
    v13 = *MEMORY[0x277CCA7E8];
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v15 = v11;
    if (v14)
    {
      v16 = [v11 userInfo];
      v15 = [v16 objectForKeyedSubscript:v13];
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_987;
    v23[3] = &unk_2786D7050;
    v23[4] = *(a1 + 32);
    v17 = v15;
    v24 = v17;
    __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_987(v23);
    v18 = [*(a1 + 32) authSession];
    [v18 resetSession];

    if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServer_didFinishAuth_])
    {
      v19 = [*(a1 + 32) delegateQueue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_2_990;
      v21[3] = &unk_2786D7050;
      v21[4] = *(a1 + 32);
      v22 = v11;
      dispatch_async(v19, v21);
    }
  }

  else
  {
    v20 = [*(a1 + 32) authSession];
    [v20 handleAuthExchangeData:v6 withHeader:0];
  }
}

void __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_987(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __63___HAPAccessoryServerBTLE200_authSession_sendAuthExchangeData___block_invoke_2_990(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didFinishAuth:*(a1 + 40)];
}

void __74___HAPAccessoryServerBTLE200__notifyDelegatesOfConnectionState_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didUpdateConnectionState:*(a1 + 48) linkLayerType:3 withError:*(a1 + 40)];
}

void __61___HAPAccessoryServerBTLE200__notifyDelegatesPairingStopped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v10 = v4;

  v5 = *(a1 + 32);
  if ([v10 isHAPError] && objc_msgSend(v10, "code") == 1)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = [*(a1 + 32) domain];
    v8 = [v6 errorWithDomain:v7 code:objc_msgSend(*(a1 + 32) userInfo:{"code"), 0}];

    v5 = v8;
  }

  v9 = [*(a1 + 40) delegate];
  [v9 accessoryServer:*(a1 + 40) didStopPairingWithError:v5];
}

void __61___HAPAccessoryServerBTLE200_tearDownSessionOnAuthCompletion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authSession];
  [v2 resetSession];

  [*(a1 + 32) setAuthenticated:1];
  [*(a1 + 32) setPairing:0];
  v3 = [*(a1 + 32) browser];
  v4 = [v3 pairSetupSession:*(a1 + 32) pairSetupType:objc_msgSend(*(a1 + 32) features:{"_getPairSetupType"), objc_msgSend(*(a1 + 32), "featureFlags")}];

  [*(a1 + 32) setPairSetupSession:v4];
}

void __45___HAPAccessoryServerBTLE200_provisionToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authSession];
  [v2 sendTokenUpdateRequest:*(a1 + 40)];
}

void __58___HAPAccessoryServerBTLE200_continueAuthAfterValidation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) authMethod] == 2)
  {
    v6 = [*(a1 + 32) authSession];
    [v6 continueAuthAfterValidation:*(a1 + 40)];

    return;
  }

  if (*(a1 + 40) != 1)
  {
    goto LABEL_14;
  }

  if ([*(a1 + 32) authMethod] == 4)
  {
    v2 = *(a1 + 32);

    [v2 _continuePairingAfterMFiCertValidation];
    return;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
LABEL_14:
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:16 description:@"Pairing Failed." reason:@"User cancelled pairing" suggestion:0 underlyingError:0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58___HAPAccessoryServerBTLE200_continueAuthAfterValidation___block_invoke_2;
    v7[3] = &unk_2786D7050;
    v7[4] = *(a1 + 32);
    v8 = v4;
    v5 = v4;
    __58___HAPAccessoryServerBTLE200_continueAuthAfterValidation___block_invoke_2(v7);
    [*(a1 + 32) _pairingCompletedWithError:v5];

    return;
  }

  v3 = *(a1 + 32);

  [v3 continuePairingAfterAuthPrompt];
}

void __58___HAPAccessoryServerBTLE200_continueAuthAfterValidation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __51___HAPAccessoryServerBTLE200_authenticateAccessory__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) authSession];
  [v1 handleAuthExchangeData:0 withHeader:0];
}

void __47___HAPAccessoryServerBTLE200_getAccessoryInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) protocolInfoServiceSignatureCharacteristics];
  v3 = [v2 instanceID];
  v4 = [HAPProtocolMessages constructInfoRequest:v3 outTID:*(*(a1 + 48) + 8) + 24];

  if (v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47___HAPAccessoryServerBTLE200_getAccessoryInfo___block_invoke_2;
    v9[3] = &unk_2786D4450;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v6;
    v11 = *(a1 + 48);
    [v5 _sendProtocolInfoServiceExchangeData:v4 completion:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }
}

void __47___HAPAccessoryServerBTLE200_getAccessoryInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 40) + 16);
LABEL_5:
    v7();
    goto LABEL_6;
  }

  v8 = [HAPProtocolMessages parseInfoResponse:v6 expectedTID:*(*(*(a1 + 48) + 8) + 24) withHeader:0];
  [*(a1 + 32) setAuthenticatedProtocolInfo:v8];

  v9 = *(a1 + 32);
  v10 = [v9 authenticatedProtocolInfo];
  LODWORD(v9) = [v9 _validateProtocolInfo:v10];

  if (v9)
  {
    v11 = [*(a1 + 32) authenticatedProtocolInfo];
    v12 = [v11 protocolVersion];
    [*(a1 + 32) setVersion:v12];

    v7 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [*(a1 + 32) authenticatedProtocolInfo];
    v20 = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Protocol Info does not match: %@ Accessory out of compliance", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = *(a1 + 40);
  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:7 userInfo:0];
  (*(v18 + 16))(v18, v19);

LABEL_6:
}

void __88___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveBackoffRequestWithTimeInterval___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 48);
      v9 = 138543618;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Pair Setup session request to backoff for %g seconds", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) setBadPairSetupCode:1];
    [*(a1 + 40) setPairSetupBackoffTimeInterval:*(a1 + 48)];
  }
}

void __73___HAPAccessoryServerBTLE200_pairSetupSessionDidReceiveInvalidSetupCode___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Pair Setup session invalid setup code", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) setBadPairSetupCode:1];
    [*(a1 + 40) setPairSetupBackoffTimeInterval:0.0];
  }
}

void __95___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveSetupCodeRequestWithCompletionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Request to get the pairing peer setup code", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) _handlePairingSetupCodeRequestWithCompletionHandler:*(a1 + 48)];
  }
}

void __69___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveProductData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 setProductData:v5];
  }
}

void __64___HAPAccessoryServerBTLE200_pairSetupSession_didStopWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 _pairingCompletedWithError:v5];
  }
}

void __75___HAPAccessoryServerBTLE200_pairSetupSession_didReceiveSetupExchangeData___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Request to send Pair Setup session setup exchange", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) _handlePairSetupSessionExchangeData:*(a1 + 48)];
  }
}

void __61___HAPAccessoryServerBTLE200_controlOutputStreamDidComplete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, 0);
    [*(a1 + 32) setCompletionHandler:0];
    v2 = v3;
  }
}

void __68___HAPAccessoryServerBTLE200_controlOutputStream_didCloseWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 40));
    [*(a1 + 32) setCompletionHandler:0];
    v2 = v3;
  }
}

void __105___HAPAccessoryServerBTLE200_controlOutputStream_didReceiveRequestToSendControlPacket_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) pendingRequests];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 controlOutputStream];

        if (v8 == v9)
        {
          [*(a1 + 32) _sendControlPacket:*(a1 + 48) forRequest:v7 completionHandler:*(a1 + 56)];
          goto LABEL_14;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    *buf = 138543618;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@No matching request for control output stream: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  if (*(a1 + 56))
  {
    v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"No matching request for control output stream." suggestion:0 underlyingError:0];
    (*(*(a1 + 56) + 16))();
LABEL_14:
  }
}

void __91___HAPAccessoryServerBTLE200_peripheral_didUpdateNotificationStateForCharacteristic_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 2)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 48);
      v13 = 138543618;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Received Notification updated confirmation for characteristics %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    if (*(a1 + 56))
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v11 = *(a1 + 56);
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Notification Update failed with error: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    v12 = [*(a1 + 40) _characteristicForCBCharacteristic:*(a1 + 48)];
    if (v12)
    {
      [*(a1 + 40) _handleHAPNotificationStateUpdateForCharacteristic:v12 error:*(a1 + 56)];
    }
  }
}

void __78___HAPAccessoryServerBTLE200_peripheral_didWriteValueForCharacteristic_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v2 = [*(a1 + 40) characteristicWriteCompletionHandlers];
    v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v20;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v19 + 1) + 8 * i);
          v8 = [v7 cbCharacteristic];
          v9 = [v8 isEqual:*(a1 + 48)];

          if (v9)
          {
            [*(a1 + 40) _handleWriteCompletionForCharacteristic:v7 error:*(a1 + 56)];

            return;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 48);
      *buf = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v15 = "%{public}@Received characteristic write confirmation from unmapped characteristic: %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_INFO;
LABEL_14:
      _os_log_impl(&dword_22AADC000, v16, v17, v15, buf, 0x16u);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v18 = *(a1 + 32);
      *buf = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v18;
      v15 = "%{public}@Received characteristic write for invalid peripheral: %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_DEBUG;
      goto LABEL_14;
    }
  }

  objc_autoreleasePoolPop(v10);
}

void *__79___HAPAccessoryServerBTLE200_peripheral_didUpdateValueForCharacteristic_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleUpdateValueForCharacteristic:v4 error:v5];
  }

  return result;
}

void *__75___HAPAccessoryServerBTLE200_peripheral_didUpdateValueForDescriptor_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleReadDescriptorValue:v4 error:v5];
  }

  return result;
}

void *__87___HAPAccessoryServerBTLE200_peripheral_didDiscoverDescriptorsForCharacteristic_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleDiscoveredCharacteristic:v4 error:v5];
  }

  return result;
}

void *__84___HAPAccessoryServerBTLE200_peripheral_didDiscoverCharacteristicsForService_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleDiscoveredCharacteristicsForService:v4 error:v5];
  }

  return result;
}

void *__59___HAPAccessoryServerBTLE200_peripheral_didModifyServices___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  result = [a1[4] state];
  if (result == 2)
  {
    result = [a1[5] count];
    if (result)
    {
      v3 = objc_autoreleasePoolPush();
      v4 = a1[6];
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = HMFGetLogIdentifier();
        v7 = a1[5];
        *buf = 138543618;
        v17 = v6;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "%{public}@Disconnecting on services changed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v3);
      if ([a1[6] isPairing])
      {
        v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:24];
        v10 = MEMORY[0x277D85DD0];
        v11 = 3221225472;
        v12 = __59___HAPAccessoryServerBTLE200_peripheral_didModifyServices___block_invoke_959;
        v13 = &unk_2786D7050;
        v14 = a1[6];
        v15 = v8;
        v9 = v8;
        __59___HAPAccessoryServerBTLE200_peripheral_didModifyServices___block_invoke_959(&v10);
        [a1[6] setPairingDisconnectionError:{v9, v10, v11, v12, v13, v14}];
      }

      return [a1[6] _disconnectWithDisconnectionError:0 completionHandler:0];
    }
  }

  return result;
}

void __59___HAPAccessoryServerBTLE200_peripheral_didModifyServices___block_invoke_959(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void *__61___HAPAccessoryServerBTLE200_peripheral_didDiscoverServices___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _handleDiscoveredServices:v4 error:v5];
  }

  return result;
}

void __83___HAPAccessoryServerBTLE200__notifyDelegateOfSentPlaintextData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) willSendPlaintextPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __96___HAPAccessoryServerBTLE200__notifyDelegateOfSentEncryptedAuthenticatedData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) willSendEncryptedAndAuthenticatedPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __87___HAPAccessoryServerBTLE200__notifyDelegateOfReceivedPlaintextData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) didReceivePlaintextPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __100___HAPAccessoryServerBTLE200__notifyDelegateOfReceivedEncryptedAuthenticatedData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) didReceiveEncryptedAndAuthenticatedPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __80___HAPAccessoryServerBTLE200__generateBroadcastKey_queue_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, double a4, uint64_t a5, void *a6)
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = v12;
  v15 = v14;
  if (!v14)
  {
    if (v11)
    {
      [WeakRetained setStateNumber:v11];
      v21 = [WeakRetained browser];
      v22 = [WeakRetained identifier];
      [v21 updateCachedStateForIdentifier:v22 stateNumber:v11];
    }

    if (v10)
    {
      if (*(a1 + 56) == 2)
      {
        v23 = [WeakRetained accessoryCache];
        v24 = [v23 peripheralInfo];
        [v24 keyUpdatedTime];
        v26 = v25;

        Current = 1.0;
        if (v26 <= 0.0)
        {
          Current = CFAbsoluteTimeGetCurrent();
        }

        v28 = [WeakRetained browser];
        v29 = [WeakRetained identifier];
        [v28 updateBroadcastKeyForIdentifier:v29 key:v10 keyUpdatedStateNumber:v11 keyUpdatedTime:Current];

        v16 = objc_autoreleasePoolPush();
        v30 = WeakRetained;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138544130;
          v51 = v31;
          v52 = 2112;
          v53 = v10;
          v54 = 2112;
          v55 = v11;
          v56 = 2048;
          v57 = Current;
          _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Saving the read broadcast key: %@, S#: %@ time: %f", buf, 0x2Au);
        }

        v15 = 0;
        goto LABEL_13;
      }

      if ([WeakRetained _validateGeneratedBroadcastKey:v10])
      {
        v38 = CFAbsoluteTimeGetCurrent();
        v39 = [WeakRetained browser];
        v40 = [WeakRetained identifier];
        [v39 updateBroadcastKeyForIdentifier:v40 key:v10 keyUpdatedStateNumber:v11 keyUpdatedTime:v38];

        v16 = objc_autoreleasePoolPush();
        v41 = WeakRetained;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138544130;
          v51 = v42;
          v52 = 2112;
          v53 = v10;
          v54 = 2112;
          v55 = v11;
          v56 = 2048;
          v57 = v38;
          _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Saving the read broadcast key: %@, S#: %@ time: %f", buf, 0x2Au);
        }

        v15 = 0;
        v32 = 1;
        goto LABEL_14;
      }
    }

    v15 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
    if (!v15)
    {
      v32 = 0;
      goto LABEL_15;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = WeakRetained;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 56)];
    *buf = 138543874;
    v51 = v19;
    v52 = 2112;
    v53 = v20;
    v54 = 2112;
    v55 = v15;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate broadcast key with type: %@. Error: %@", buf, 0x20u);
  }

LABEL_13:
  v32 = 0;
LABEL_14:

  objc_autoreleasePoolPop(v16);
LABEL_15:
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __80___HAPAccessoryServerBTLE200__generateBroadcastKey_queue_withCompletionHandler___block_invoke_865;
  v43[3] = &unk_2786D5C98;
  v33 = *(a1 + 32);
  v34 = *(a1 + 40);
  v44 = v10;
  v45 = v11;
  v48 = a4;
  v49 = v32;
  v46 = v15;
  v47 = v34;
  v35 = v15;
  v36 = v11;
  v37 = v10;
  dispatch_async(v33, v43);
}

void __79___HAPAccessoryServerBTLE200_generateBroadcastKey_queue_withCompletionHandler___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getProtocolInfoService];
  if (([v2 serviceProperties] & 4) != 0)
  {
    v5 = *(a1 + 56) == 2;
    v6 = [*(a1 + 32) accessoryCache];
    v7 = [v6 peripheralInfo];
    v4 = [v7 broadcastKey];

    v8 = [*(a1 + 32) accessoryCache];
    v9 = [v8 peripheralInfo];
    v10 = [v9 keyUpdatedStateNumber];

    v11 = [*(a1 + 32) accessoryCache];
    v12 = [v11 peripheralInfo];
    [v12 keyUpdatedTime];
    v14 = v13;

    Current = CFAbsoluteTimeGetCurrent();
    v16 = 0;
    v17 = Current - v14;
    if (!*(a1 + 56) && v14 > 0.0 && v17 <= 604800.0)
    {
      if ([*(a1 + 32) connectReason] == 3)
      {
        v16 = 0;
      }

      else
      {
        v5 = v4 == 0;
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 32);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
          *buf = 138544130;
          v38 = v21;
          v39 = 2112;
          v40 = v22;
          v41 = 2112;
          v42 = v10;
          v43 = 2048;
          v44 = v17;
          _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Rate limiting BC key generation. BC Key Info: %@ / %@ / %.2fs", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v18);
        v16 = 1;
      }
    }

    if (*(a1 + 56) == 1 && v14 > 0.0 && v17 <= 86400.0)
    {
      v5 = v4 == 0;
      v23 = objc_autoreleasePoolPush();
      v24 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
        *buf = 138544130;
        v38 = v26;
        v39 = 2112;
        v40 = v27;
        v41 = 2112;
        v42 = v10;
        v43 = 2048;
        v44 = v17;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Rate limiting BC key refresh. BC Key Info: %@ / %@ / %.2fs", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v23);
      v16 = 1;
    }

    if (!v16 || v5)
    {
      if (v5)
      {
        v29 = 2;
      }

      else
      {
        v29 = *(a1 + 56);
      }

      [*(a1 + 32) _generateBroadcastKey:v29 queue:*(a1 + 40) withCompletionHandler:*(a1 + 48)];
    }

    else
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __79___HAPAccessoryServerBTLE200_generateBroadcastKey_queue_withCompletionHandler___block_invoke_855;
      v30[3] = &unk_2786D4400;
      v28 = *(a1 + 40);
      v33 = *(a1 + 48);
      v31 = v4;
      v32 = v10;
      v34 = v14;
      dispatch_async(v28, v30);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79___HAPAccessoryServerBTLE200_generateBroadcastKey_queue_withCompletionHandler___block_invoke_2;
    block[3] = &unk_2786D6490;
    v3 = *(a1 + 40);
    v36 = *(a1 + 48);
    dispatch_async(v3, block);
    v4 = v36;
  }
}

void __79___HAPAccessoryServerBTLE200_generateBroadcastKey_queue_withCompletionHandler___block_invoke_855(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:28 description:@"Not generating BC Keys" reason:@"Key generated in recent past" suggestion:@"Report the faulty accessory" underlyingError:0];
  (*(*(a1 + 48) + 16))(*(a1 + 56));
}

void __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 56);
    *buf = 138543874;
    v41 = v6;
    v42 = 2112;
    v43 = v2;
    v44 = 2048;
    v45 = v7;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@The connection disconnected with error = %@ duration = %.3f seconds", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  if ([*(a1 + 40) connectionState] == 1 && !v2)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v11;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Received a disconnection while a connection was in progress", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Connection failed." reason:@"Connection was cancelled." suggestion:0 underlyingError:0];
  }

  [*(a1 + 40) setConnectionState:0];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke_843;
  v38[3] = &unk_2786D7050;
  v35 = *(a1 + 32);
  v12 = v35.i64[0];
  v39 = vextq_s8(v35, v35, 8uLL);
  __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke_843(v38);
  [*(a1 + 40) _notifyDelegatesOfConnectionState:0 withError:v2];
  v13 = [*(a1 + 40) connectionCompletionHandler];
  v14 = MEMORY[0x231885210]();
  v15 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v2);
  }

  [*(a1 + 40) setConnectionCompletionHandler:0];
  v16 = [*(a1 + 40) discoveryContext];

  v17 = *(a1 + 40);
  if (v16)
  {
    if (([v17 _cancelDiscoveryWithError:v2] & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ([v17 isPaired] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isPairing"))
  {
    v18 = [*(a1 + 40) operationsReceivedDuringConnectionStateChange];
    v19 = [v18 count];

    if (!v19)
    {
LABEL_19:
      [*(a1 + 40) _resetWithError:v2];
      v28 = 1;
      goto LABEL_24;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 40);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = MEMORY[0x277CCABB0];
      v25 = [*(a1 + 40) operationsReceivedDuringConnectionStateChange];
      v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
      *buf = 138543618;
      v41 = v23;
      v42 = 2112;
      v43 = v26;
      _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Rediscovering the accessory with %@ pending operations mid connection state change", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    objc_initWeak(buf, *(a1 + 40));
    v27 = *(a1 + 40);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke_848;
    v36[3] = &unk_2786D6D90;
    objc_copyWeak(&v37, buf);
    [v27 _discoverWithType:0 completionHandler:v36];
    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = *(a1 + 40);
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v32;
      _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_DEBUG, "%{public}@The accessory is unpaired and no pairing operation is in progress, not removing server on disconnection", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    [*(a1 + 40) _resetWithError:v2];
  }

  v28 = 0;
LABEL_24:
  v33 = MEMORY[0x231885210](*(a1 + 48));
  v34 = v33;
  if (v33)
  {
    (*(v33 + 16))(v33, v28);
  }
}

void __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke_843(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __77___HAPAccessoryServerBTLE200_handleDisconnectionWithError_completionHandler___block_invoke_848(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeOperationsReceivedDuringConnectionStateChangeWithError:v3];
}

void __50___HAPAccessoryServerBTLE200_isReadyForOperation___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) connectionState])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if ([*(a1 + 32) connectionState] == 3)
    {
      v2 = objc_autoreleasePoolPush();
      v3 = *(a1 + 32);
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier();
        v8 = 138543362;
        v9 = v5;
        _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory is in disconnecting state. Pending an operation block", &v8, 0xCu);
      }

      objc_autoreleasePoolPop(v2);
      v6 = [*(a1 + 32) operationsReceivedDuringConnectionStateChange];
      [v6 addObject:&__block_literal_global_836];
    }

    else if (*(a1 + 48))
    {
      v7 = *(a1 + 32);

      [v7 _kickConnectionIdleTimer];
    }
  }
}

void __71___HAPAccessoryServerBTLE200_handleConnectionWithPeripheral_withError___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled == 1 && !*(a1 + 32) && [*(a1 + 40) connectionState] == 2)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 48);
      v13 = 138543618;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v7 = "%{public}@Received a connection completion while already connected. Ignoring %@";
LABEL_15:
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_ERROR, v7, &v13, 0x16u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (!*(a1 + 32) && [*(a1 + 48) state] != 2)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v13 = 138543618;
      v14 = v5;
      v15 = 2112;
      v16 = v12;
      v7 = "%{public}@Received a connection with invalid connection state. Ignoring %@";
      goto LABEL_15;
    }

LABEL_16:

    objc_autoreleasePoolPop(v2);
    return;
  }

  v8 = [*(a1 + 40) peripheral];
  [v8 setDelegate:0];

  [*(a1 + 40) updatePeripheral:*(a1 + 48)];
  v9 = [*(a1 + 40) peripheral];
  [v9 setDelegate:*(a1 + 40)];

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);

  [v10 _handleConnectionWithError:v11];
}

void __82___HAPAccessoryServerBTLE200__disconnectWithDisconnectionError_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __57___HAPAccessoryServerBTLE200__cancelConnectionWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke(id *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] connectionState];
  v3 = [MEMORY[0x277CBEAA8] date];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke_2;
  v23 = &unk_2786D3F08;
  objc_copyWeak(v26, a1 + 6);
  v26[1] = v2;
  v4 = v3;
  v24 = v4;
  v25 = a1[5];
  v5 = MEMORY[0x231885210](&v20);
  if (v2)
  {
    if ((v2 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = a1[4];
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:{v2, v20, v21, v22, v23, v24}];
        *buf = 138543618;
        v28 = v9;
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Trying to connect but a connection is already in progress (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:4];
    }

    else
    {
      v11 = 0;
    }

    (v5)[2](v5, v11);
  }

  else
  {
    [a1[4] setConnectionCompletionHandler:{v5, v20, v21, v22, v23, v24}];
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[4] blePeripheral];
      v17 = [v16 shortDescription];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(a1[4], "connectReason")}];
      *buf = 138543874;
      v28 = v15;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Connecting to the peripheral: %@. Connection Reason: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v19 = [a1[4] browser];
    [v19 connectToBTLEAccessoryServer:a1[4]];

    [a1[4] _restartConnectionIdleTimer:15.0];
    [a1[4] setConnectionState:1];
  }

  objc_destroyWeak(v26);
}

void __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 56) != 2)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    [v5 timeIntervalSinceDate:*(a1 + 32)];
    v7 = v6;

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke_3;
    v10[3] = &unk_2786D4978;
    v10[4] = WeakRetained;
    v12 = v7;
    v11 = v3;
    __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke_3(v10);
  }

  v8 = MEMORY[0x231885210](*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

void __59___HAPAccessoryServerBTLE200_connectWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v4;
  }
}

void __70___HAPAccessoryServerBTLE200__handleSecuritySessionSetupExchangeData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v5 value];
  if (v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to send security session exchange data with error: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = v6;
LABEL_10:
    v14 = v13;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = WeakRetained;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@The security session exchange response value, %@, is invalid", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Security session setup exchange failed." reason:@"Invalid Pair Verify exchange response." suggestion:0 underlyingError:0];
    goto LABEL_10;
  }

  v14 = 0;
LABEL_11:
  v19 = [WeakRetained securitySession];
  [v19 receivedSetupExchangeData:v8 error:v14];

  [*(a1 + 32) setValue:0];
}

void __72___HAPAccessoryServerBTLE200_evaluateConnectionStateForOperation_block___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) connectionState] == 3 || (objc_msgSend(*(a1 + 32), "operationsReceivedDuringConnectionStateChange"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3))
  {
    v4 = [*(a1 + 32) operationsReceivedDuringConnectionStateChange];
    v5 = MEMORY[0x231885210](*(a1 + 40));
    [v4 addObject:v5];

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "connectionState")}];
      v12 = MEMORY[0x277CCABB0];
      v13 = [*(a1 + 32) operationsReceivedDuringConnectionStateChange];
      v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
      *buf = 138544130;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding block for operation: %@ due to connection state: %@. Count: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v15 = MEMORY[0x231885210](*(a1 + 40));
    if (v15)
    {
      v16 = v15;
      v15[2]();
      v15 = v16;
    }
  }
}

void __78___HAPAccessoryServerBTLE200__sendProtocolInfoServiceExchangeData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to send Protocol Exchange error: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if ([v5 statusCode])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = WeakRetained;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v15;
        v21 = 1024;
        LODWORD(v22) = [v5 statusCode];
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Protocol Exchange failed with status: %d", &v19, 0x12u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = *(a1 + 32);
      v17 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2108];
      (*(v16 + 16))(v16, v17, 0);
    }

    else
    {
      v18 = *(a1 + 32);
      v17 = [v5 body];
      (*(v18 + 16))(v18, 0, v17);
    }
  }
}

void __67___HAPAccessoryServerBTLE200__reallySendRequest_completionHandler___block_invoke(id *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    *buf = 138543618;
    v36 = v5;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Sending request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [a1[5] characteristic];
    v12 = [v11 type];
    v13 = [a1[5] characteristic];
    v14 = [v13 instanceID];
    v15 = [a1[5] serialize];
    *buf = 138544130;
    v36 = v10;
    v37 = 2112;
    v38 = v12;
    v39 = 2112;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Serialized Request '%@/%@' -> %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v16 = [a1[4] _maximumControlWriteLengthForRequest:a1[5]];
  if (v16)
  {
    v17 = v16;
    v18 = [HAPBTLETransactionIdentifier alloc];
    v19 = [a1[5] identifier];
    v20 = -[HAPBTLETransactionIdentifier initWithUnsignedCharValue:](v18, "initWithUnsignedCharValue:", [v19 unsignedCharValue]);

    v21 = [HAPBTLEControlOutputStream alloc];
    v22 = [a1[5] serialize];
    v23 = [(HAPBTLEControlOutputStream *)v21 initWithControlType:0 transactionIdentifier:v20 controlPayload:v22 mtuLength:v17 timeoutInterval:4.0];

    [(HAPBTLEControlOutputStream *)v23 setDelegate:a1[4]];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __67___HAPAccessoryServerBTLE200__reallySendRequest_completionHandler___block_invoke_779;
    v32 = &unk_2786D6790;
    v33 = a1[4];
    v34 = a1[6];
    [(HAPBTLEControlOutputStream *)v23 setCompletionHandler:&v29];
    [a1[4] _suspendConnectionIdleTimer];
    [a1[5] setControlOutputStream:v23];
    v24 = [a1[4] pendingRequests];
    [v24 addObject:a1[5]];

    [(HAPBTLEControlOutputStream *)v23 open];
LABEL_11:

    return;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = a1[4];
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v28;
    _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine the control write length", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v25);
  if (a1[6])
  {
    v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Control write failed." reason:@"Failed to determine the control write length" suggestion:0 underlyingError:0];
    (*(a1[6] + 2))();
    goto LABEL_11;
  }
}

void __67___HAPAccessoryServerBTLE200__reallySendRequest_completionHandler___block_invoke_779(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___HAPAccessoryServerBTLE200__reallySendRequest_completionHandler___block_invoke_2;
  v7[3] = &unk_2786D65D8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_2;
    v6[3] = &unk_2786D42B8;
    objc_copyWeak(&v9, (a1 + 56));
    v7 = v3;
    v8 = *(a1 + 40);
    [v4 _reallySendRequest:v5 completionHandler:v6];

    objc_destroyWeak(&v9);
  }
}

void __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  v4 = [WeakRetained clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_4;
  v7[3] = &unk_2786D4330;
  v7[4] = WeakRetained;
  v8 = a1[4];
  v5 = a1[5];
  v9 = v3;
  v10 = v5;
  v6 = v3;
  objc_copyWeak(&v11, a1 + 6);
  objc_copyWeak(&v12, a1 + 7);
  dispatch_async(v4, v7);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
}

void __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _pendingResponseForRequest:*(a1 + 40)];
  v4 = [*v2 pendingRequests];
  [v4 removeObject:*(v2 + 8)];

  v5 = [*v2 pendingResponses];
  [v5 removeObject:v3];

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = [*(a1 + 48) error];
    (*(v6 + 16))(v6, v3, v7);
  }

  if (![*(a1 + 32) _outstandingRequests])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Resuming connection idle timer as there are no outstanding requests", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) _resumeConnectionIdleTimer];
  }

  v12 = [*(a1 + 48) error];
  if (v12 && ([*(a1 + 32) _shouldIgnoreRetryDiscoveryError:v12] & 1) == 0)
  {
    v13 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_770;
    v14[3] = &unk_2786D4308;
    objc_copyWeak(&v15, (a1 + 64));
    objc_copyWeak(&v16, (a1 + 72));
    [v13 _disconnectWithDisconnectionError:0 completionHandler:v14];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
  }
}

void __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_770(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to disconnect from the accessory, resetting the server", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 error];
    [v6 _resetWithError:v10];
  }
}

void __76___HAPAccessoryServerBTLE200__sendRequest_shouldPrioritize_responseHandler___block_invoke_2(id *a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v7)
  {
    [a1[4] cancelWithError:v7];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277D0F920]);
    [a1[5] timeoutInterval];
    v5 = [v4 initWithTimeInterval:1 options:?];
    [v5 setDelegate:WeakRetained];
    v6 = [WeakRetained clientQueue];
    [v5 setDelegateQueue:v6];

    [a1[5] setResponseTimer:v5];
    [WeakRetained _requestResponseForRequest:a1[5]];
  }
}

void __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!v3)
  {
    v11 = [WeakRetained identifyCharacteristic];
    if (v11)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_2;
      v20[3] = &unk_2786D4290;
      v12 = &v21;
      v13 = *(a1 + 32);
      v20[4] = v5;
      v21 = v13;
      v14 = MEMORY[0x231885210](v20);
      [v5 _writeValue:MEMORY[0x277CBEC38] toCharacteristic:v11 authorizationData:0 contextData:0 options:0 completionHandler:v14];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v5;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v18;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Identify failed, missing the Identify characteristic", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      if (!*(a1 + 32))
      {
        v11 = 0;
        goto LABEL_13;
      }

      v19 = [v16 clientQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_765;
      v22[3] = &unk_2786D6490;
      v12 = &v23;
      v23 = *(a1 + 32);
      dispatch_async(v19, v22);
    }

LABEL_13:
    goto LABEL_14;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = v3;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Cancelling operation, identity discovery failed with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (*(a1 + 32))
  {
    v10 = [v7 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_758;
    block[3] = &unk_2786D65D8;
    v25 = v3;
    v26 = *(a1 + 32);
    dispatch_async(v10, block);

    v11 = v25;
    goto LABEL_13;
  }

LABEL_14:
}

void __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_758(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Identify failed." reason:@"Discovery of the Identify characteristic failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_765(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Identify failed." reason:@"Missing Identify characteristic." suggestion:0 underlyingError:0];
  (*(*(a1 + 32) + 16))();
}

void __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 40))
  {
    v5 = [*(a1 + 32) clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53___HAPAccessoryServerBTLE200_identifyWithCompletion___block_invoke_3;
    v6[3] = &unk_2786D65D8;
    v8 = *(a1 + 40);
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __72___HAPAccessoryServerBTLE200__sendPairingRequestData_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v6)
  {
    v12 = [v5 value];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = WeakRetained;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Pairing operation failed, the response value is invalid", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      if (*(a1 + 32))
      {
        v19 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Pairing operation failed." reason:@"Pairing response is invalid." suggestion:0 underlyingError:0];
        (*(*(a1 + 32) + 16))();
      }

      goto LABEL_10;
    }

    v14 = *(a1 + 32);
    if (!v14)
    {
LABEL_10:

      goto LABEL_11;
    }

    v13 = *(v14 + 16);
LABEL_9:
    v13();
    goto LABEL_10;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to write pairing request data with error: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (*(a1 + 32))
  {
    v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Pairing operation failed." reason:@"Pairing write failed." suggestion:0 underlyingError:v6];
    v13 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

LABEL_11:
}

void __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v2 = [HAPPairingUtilities createListPairingsRequest:&v22];
  v3 = v22;
  if (v2)
  {
    v4 = a1 + 4;
    objc_initWeak(location, a1[4]);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_2;
    v15 = &unk_2786D4268;
    objc_copyWeak(&v18, location);
    v16 = a1[5];
    v17 = a1[6];
    v5 = MEMORY[0x231885210](&v12);
    [*v4 _sendPairingRequestData:v2 completionHandler:{v5, v12, v13, v14, v15}];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1[4];
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v9;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to create list pairings request payload with error: %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = a1[5];
    if (v10)
    {
      v11 = a1[6];
      if (v11)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_737;
        block[3] = &unk_2786D65D8;
        v21 = v11;
        v20 = v3;
        dispatch_async(v10, block);
      }
    }
  }
}

void __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    v25 = 0;
    v8 = [HAPPairingUtilities parseListPairingsResponse:v5 error:&v25];
    v9 = v25;
    if (!v8)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v13;
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to list pairings, peer responded with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(a1 + 40);
      if (v15)
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_745;
        v21[3] = &unk_2786D69E0;
        v24 = v15;
        v22 = v8;
        v23 = v9;
        dispatch_async(v14, v21);
      }
    }

    goto LABEL_10;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = WeakRetained;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v19;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get pairings with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v20 = *(a1 + 32);
  if (v20 && *(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_738;
    block[3] = &unk_2786D65D8;
    v27 = v6;
    v28 = *(a1 + 40);
    dispatch_async(v20, block);

    v9 = v27;
LABEL_10:
  }
}

void __80___HAPAccessoryServerBTLE200_listPairingsWithCompletionQueue_completionHandler___block_invoke_738(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"List pairings failed." reason:@"List pairings write failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_735(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v8;
    v43 = 2112;
    v44 = v3;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Request to remove current controller completed with error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = v3;
  v10 = [v6 browser];
  v11 = [v6 identifier];
  [v10 deRegisterAccessoryWithIdentifier:v11];

  v12 = [v6 keyStore];
  v13 = [v6 identifier];
  v40 = 0;
  v14 = [v12 removeAccessoryKeyForName:v13 error:&v40];
  v15 = v40;

  if ((v14 & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v6;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v19;
      v43 = 2112;
      v44 = v15;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Failed to remove the current controller keychain entry with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = [v6 keyStore];
  v21 = [v6 identifier];
  v39 = v15;
  v22 = [v20 deletePeripheralIdentifierForAccessoryIdentifier:v21 error:&v39];
  v23 = v39;

  if ((v22 & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v6;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v25 identifier];
      *buf = 138543874;
      v42 = v27;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = v23;
      _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Failed to remove the peripheral keychain entry for %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
  }

  v29 = *(a1 + 32);
  if (v29)
  {
    v30 = *(a1 + 40);
    if (v30)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_736;
      block[3] = &unk_2786D6490;
      v38 = v30;
      dispatch_async(v29, block);

      v29 = *(a1 + 32);
    }
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_2;
  v33[3] = &unk_2786D6808;
  v34 = v29;
  v31 = *(a1 + 48);
  v35 = v9;
  v36 = v31;
  v32 = v9;
  [v6 _disconnectWithDisconnectionError:0 completionHandler:v33];
}

void __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __106___HAPAccessoryServerBTLE200_removePairingForCurrentControllerOnQueue_completion_serverPairingCompletion___block_invoke_3;
      v4[3] = &unk_2786D65D8;
      v6 = v3;
      v5 = *(a1 + 40);
      dispatch_async(v1, v4);
    }
  }
}

void __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryCache];
  v3 = [v2 peripheralInfo];
  [v3 resetBroadcastKeyConfig];

  v4 = *(a1 + 40);
  v24 = 0;
  v5 = [HAPPairingUtilities createRemovePairingRequestForPairingIdentity:v4 error:&v24];
  v6 = v24;
  if (v5)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_2;
    v17 = &unk_2786D5C70;
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v7 = MEMORY[0x231885210](&v14);
    [*(a1 + 32) _sendPairingRequestData:v5 completionHandler:{v7, v14, v15, v16, v17, v18}];

    v8 = v19;
LABEL_3:

    goto LABEL_4;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v12;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create remove pairing request payload with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *(a1 + 48);
  if (v13 && *(a1 + 56))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_719;
    block[3] = &unk_2786D65D8;
    v22 = v6;
    v23 = *(a1 + 56);
    dispatch_async(v13, block);

    v8 = v22;
    goto LABEL_3;
  }

LABEL_4:
}

void __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_719(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Remove pairing failed." reason:@"Failed to create remove pairing request payload." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v27 = 0;
    v7 = [HAPPairingUtilities parseRemovePairingResponse:v5 error:&v27];
    v8 = v27;
    if (v7)
    {
      v9 = *(a1 + 40);
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = *(a1 + 48);
      if (!v10)
      {
        goto LABEL_17;
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_2_734;
      v22[3] = &unk_2786D6490;
      v11 = &v23;
      v23 = v10;
      dispatch_async(v9, v22);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v20;
        v33 = 2112;
        v34 = v8;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove pairing, peer responded with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = *(a1 + 40);
      if (!v21 || !*(a1 + 48))
      {
        goto LABEL_17;
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_730;
      v24[3] = &unk_2786D65D8;
      v11 = &v25;
      v25 = v8;
      v26 = *(a1 + 48);
      dispatch_async(v21, v24);
    }

LABEL_17:
    goto LABEL_18;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v15;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove pairing with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = *(a1 + 40);
  if (v16 && *(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_726;
    block[3] = &unk_2786D65D8;
    v29 = v6;
    v30 = *(a1 + 48);
    dispatch_async(v16, block);

    v8 = v29;
    goto LABEL_17;
  }

LABEL_18:
}

void __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_726(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Remove pairing failed." reason:@"Remove pairing write failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __78___HAPAccessoryServerBTLE200_removePairing_completionQueue_completionHandler___block_invoke_730(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Remove pairing failed." reason:@"The peer failed to remove the pairing." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v23 = 0;
  v3 = [HAPPairingUtilities createAddPairingRequestForPairingIdentity:v2 error:&v23];
  v4 = v23;
  if (v3)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_2;
    v16 = &unk_2786D5C70;
    v5 = *(a1 + 48);
    v17 = *(a1 + 40);
    v18 = v5;
    v19 = *(a1 + 56);
    v6 = MEMORY[0x231885210](&v13);
    [*(a1 + 40) _sendPairingRequestData:v3 completionHandler:{v6, v13, v14, v15, v16, v17}];

    v7 = v18;
LABEL_3:

    goto LABEL_4;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create add pairing request payload with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *(a1 + 48);
  if (v12 && *(a1 + 56))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_702;
    block[3] = &unk_2786D65D8;
    v21 = v4;
    v22 = *(a1 + 56);
    dispatch_async(v12, block);

    v7 = v21;
    goto LABEL_3;
  }

LABEL_4:
}

void __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_702(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Add pairing failed." reason:@"Failed to create add pairing request payload." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v27 = 0;
    v7 = [HAPPairingUtilities parseAddPairingResponse:v5 error:&v27];
    v8 = v27;
    if (v7)
    {
      v9 = *(a1 + 40);
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = *(a1 + 48);
      if (!v10)
      {
        goto LABEL_17;
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_2_717;
      v22[3] = &unk_2786D6490;
      v11 = &v23;
      v23 = v10;
      dispatch_async(v9, v22);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v20;
        v33 = 2112;
        v34 = v8;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to add pairing, peer responded with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = *(a1 + 40);
      if (!v21 || !*(a1 + 48))
      {
        goto LABEL_17;
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_713;
      v24[3] = &unk_2786D65D8;
      v11 = &v25;
      v25 = v8;
      v26 = *(a1 + 48);
      dispatch_async(v21, v24);
    }

LABEL_17:
    goto LABEL_18;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v15;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to add pairing with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = *(a1 + 40);
  if (v16 && *(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_709;
    block[3] = &unk_2786D65D8;
    v29 = v6;
    v30 = *(a1 + 48);
    dispatch_async(v16, block);

    v8 = v29;
    goto LABEL_17;
  }

LABEL_18:
}

void __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_709(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Add pairing failed." reason:@"Add pairing write failed." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __75___HAPAccessoryServerBTLE200_addPairing_completionQueue_completionHandler___block_invoke_713(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Add pairing failed." reason:@"The peer failed to add the pairing." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  v7 = v3;
  v8 = [v7 userInfo];
  v9 = *MEMORY[0x277CCA7E8];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  v11 = v7;
  if (v10)
  {
    v12 = [v7 userInfo];
    v11 = [v12 objectForKeyedSubscript:v9];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke_2;
  v16[3] = &unk_2786D4978;
  v16[4] = *(a1 + 40);
  v18 = v6;
  v13 = v11;
  v17 = v13;
  __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke_2(v16);
  v14 = *(a1 + 40);
  if (v7)
  {
    v15 = [v14 authSession];
    [v14 authSession:v15 authComplete:v7];
  }

  else
  {
    [v14 authenticateAccessory];
  }
}

void __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 authenticatedProtocolInfo];
  v5 = [v4 modelName];
  [v6 accessoryServer:v3 validateCert:v2 model:v5];
}

void __57___HAPAccessoryServerBTLE200__pairingCompletedWithError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v4;
  }
}

void __84___HAPAccessoryServerBTLE200_tryPairingPassword_onboardingSetupPayloadString_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) setupCodeCompletionHandler];
  if (v4)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid setup code." reason:@"The setup code is nil" suggestion:0 underlyingError:0];
      v2 = *(a1 + 40);
    }

    v4[2](v4, v2, v3);
    [*(a1 + 32) setSetupCodeCompletionHandler:0];
  }

  [*(a1 + 32) _resumeConnectionIdleTimer];
}

void __82___HAPAccessoryServerBTLE200__handlePairingSetupCodeRequestWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  [v2 pairSetupBackoffTimeInterval];
  [v4 accessoryServer:v2 didReceiveBadPasswordThrottleAttemptsWithDelay:v3];
}

void __82___HAPAccessoryServerBTLE200__handlePairingSetupCodeRequestWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) promptUserForPasswordWithType:1];
}

void __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HAPPairingStateFromData(*(a1 + 32));
  v5 = [v3 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v6)
  {
    v6 = v3;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke_2;
  v9[3] = &unk_2786D7078;
  v9[4] = *(a1 + 40);
  v10 = v4;
  v11 = v6;
  v7 = v6;
  v8 = v4;
  __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke_2(v9);
}

void __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke_680(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 value];
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to send Pair Setup exchange data with error: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = v6;
LABEL_5:
    (*(*(a1 + 48) + 16))();
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    goto LABEL_11;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v16;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@The Pair Setup exchange response value, %@, is invalid", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Pairing Failed." reason:@"Invalid Pair Setup exchange response." suggestion:0 underlyingError:0];
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_11:
  v17 = [*(a1 + 32) pairSetupSession];
  [v17 receivedSetupExchangeData:v7 error:v12];

  [*(a1 + 40) setValue:0];
}

void __66___HAPAccessoryServerBTLE200__handlePairSetupSessionExchangeData___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 48) domain];

    [*(a1 + 48) code];
    v2 = v3;
  }
}

void __51___HAPAccessoryServerBTLE200_stopPairingWithError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPairing])
  {
    v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Pairing cancelled." reason:0 suggestion:0 underlyingError:0];
    v2 = [*(a1 + 32) pairSetupSession];

    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = [v3 pairSetupSession];
      [v4 stopWithError:v12];
    }

    else
    {
      [v3 _pairingCompletedWithError:v12];
    }
  }

  else if (![*(a1 + 32) pendingRemovePairing])
  {
    if (([*(a1 + 32) isPaired] & 1) != 0 || (objc_msgSend(*(a1 + 32), "keyStore"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "identifier"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "readControllerPairingKeyForAccessory:error:", v6, 0), v7 = objc_claimAutoreleasedReturnValue(), v6, v5, v7, v7))
    {
      [*(a1 + 32) setPendingRemovePairing:1];
      v8 = [*(a1 + 32) discoveryContext];
      if (!v8 || (v9 = v8, v10 = [*(a1 + 32) isSecuritySessionOpen], v9, v10))
      {
        v11 = *(a1 + 32);

        [v11 _removePairingOfAccessoryServerCancelledMidPairing];
      }
    }
  }
}

uint64_t __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke_2;
  v3[3] = &unk_2786D6CF0;
  v3[4] = v1;
  return [v1 connectWithCompletionHandler:v3];
}

void __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to connect to the accessory with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Failed to connect to accessory." reason:0 suggestion:0 underlyingError:v3];
    [*(a1 + 32) _pairingCompletedWithError:v9];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 32) authMethod];
      if (v11 > 6)
      {
        v12 = @"HAPAuthMethodUnknown";
      }

      else
      {
        v12 = off_2786D2590[v11];
      }

      v13 = v12;
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting the Pair Setup session with authMethods: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setBadPairSetupCode:0];
    v14 = [*(a1 + 32) browser];
    v9 = [v14 pairSetupSession:*(a1 + 32) pairSetupType:objc_msgSend(*(a1 + 32) features:{"_getPairSetupType"), objc_msgSend(*(a1 + 32), "featureFlags")}];

    v15 = [*(a1 + 32) browser];
    [v15 pauseScans];

    [*(a1 + 32) setPairSetupSession:v9];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke_665;
    v16[3] = &unk_2786D6CA0;
    v16[4] = *(a1 + 32);
    __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke_665(v16);
    [v9 start];
  }
}

void __60___HAPAccessoryServerBTLE200_continuePairingAfterAuthPrompt__block_invoke_665(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) _getPairSetupType];
    v2 = v3;
  }
}

void __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (!v7)
  {
    v7 = v5;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_2786D4978;
  v10[4] = *(a1 + 32);
  v12 = a2;
  v8 = v7;
  v11 = v8;
  __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke_2(v10);
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

void __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke_655(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to read the Pairing Features characteristic", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Pairing Failed." reason:@"Failed to read the Pairing Features characteristic" suggestion:0 underlyingError:v6];
    v12 = *(*(a1 + 48) + 16);
  }

  else
  {
    v13 = 0;
    *buf = 0;
    [*(a1 + 32) _parsePairingFeaturesCharacteristic:*(a1 + 40) authMethod:buf error:&v13];
    v11 = v13;
    v12 = *(*(a1 + 48) + 16);
  }

  v12();
}

void __71___HAPAccessoryServerBTLE200__getPairingFeaturesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v3;
  }
}

void __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to discover the accessory with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2 description:@"Pairing Failed." reason:@"Failed to discovery the accessory." suggestion:0 underlyingError:v3];
    [*(a1 + 32) _pairingCompletedWithError:v9];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMFBooleanToString();
      *buf = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Determining if MFi Pair Setup is supported, consentRequired: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v12 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_635;
    v13[3] = &unk_2786D41C8;
    v13[4] = v12;
    v14 = *(a1 + 40);
    [v12 _getPairingFeaturesWithCompletionHandler:v13];
  }
}

void __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_635(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v9;
      v50 = 2112;
      v51 = v5;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, failed to get the pairing features with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x277CCA9B8];
    v11 = @"Failed to get the pairing features.";
    v12 = 2;
    v13 = v5;
    goto LABEL_5;
  }

  if (a2 != 5 && a2)
  {
    v29 = *(a1 + 32);
    if (a2 != 1 || (*(a1 + 40) & 1) == 0)
    {
      [v29 continuePairingAfterAuthPrompt];
      goto LABEL_6;
    }

    if ([v29 _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
    {
      v30 = [HAPAccessoryInfo alloc];
      v31 = [*(a1 + 32) name];
      v32 = [*(a1 + 32) category];
      v33 = [(HAPAccessoryInfo *)v30 initWithName:v31 manufacturer:0 modelName:0 category:v32 certificationStatus:0 denylisted:0 ppid:0];

      v34 = [*(a1 + 32) delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_646;
      block[3] = &unk_2786D7050;
      block[4] = *(a1 + 32);
      v44 = v33;
      v35 = v33;
      dispatch_async(v34, block);

      v36 = v44;
LABEL_27:

      goto LABEL_6;
    }

    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v28;
      goto LABEL_16;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = off_2786D2590[a2];
      *buf = 138543618;
      v49 = v18;
      v50 = 2112;
      v51 = v19;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Incompatible auth %@, prompting user", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServer_requestUserPermission_accessoryInfo_error_])
    {
      v20 = [HAPAccessoryInfo alloc];
      v21 = [*(a1 + 32) name];
      v22 = [*(a1 + 32) category];
      v23 = [(HAPAccessoryInfo *)v20 initWithName:v21 manufacturer:0 modelName:0 category:v22 certificationStatus:0 denylisted:0 ppid:0];

      if (a2)
      {
        v24 = 4;
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = *(a1 + 32);
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543362;
          v49 = v40;
          _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_INFO, "%{public}@The accessory does not support pair setup auth, prompting for user permission to pair the accessory", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v37);
        v24 = 0;
      }

      v41 = [*(a1 + 32) delegateQueue];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_642;
      v45[3] = &unk_2786D4978;
      v42 = *(a1 + 32);
      v46 = v23;
      v47 = v24;
      v45[4] = v42;
      v35 = v23;
      dispatch_async(v41, v45);

      v36 = v46;
      goto LABEL_27;
    }

    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v28;
LABEL_16:
      _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Pairing failed, the pairing requires additional authentication and the delegate does not support additional authentication requests", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v25);
  v10 = MEMORY[0x277CCA9B8];
  v11 = @"The delegate is missing.";
  v12 = 9;
  v13 = 0;
LABEL_5:
  v14 = [v10 hapErrorWithCode:v12 description:@"Pairing Failed." reason:v11 suggestion:0 underlyingError:v13];
  [*(a1 + 32) _pairingCompletedWithError:v14];

LABEL_6:
}

void __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_642(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:*(a1 + 48) accessoryInfo:*(a1 + 40) error:0];
}

void __50___HAPAccessoryServerBTLE200__checkForAuthPrompt___block_invoke_646(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:3 accessoryInfo:*(a1 + 40) error:0];
}

void __54___HAPAccessoryServerBTLE200_startPairingWithRequest___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPairingActivity:*(a1 + 40)];
  [*(a1 + 32) setPairingRequest:*(a1 + 48)];
  if ([*(a1 + 32) isPaired])
  {
    v2 = @"Pairing not supported on paired accessory.";
    v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:18 description:@"Pairing not supported on paired accessory." reason:0 suggestion:0 underlyingError:0];
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  if ([*(a1 + 32) isPairing])
  {
    v2 = @"An existing pairing session is already in progress.";
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:4 description:@"An existing pairing session is already in progress." reason:0 suggestion:0 underlyingError:0];

    v3 = v4;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v2;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) _notifyDelegatesPairingStopped:v3];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting Pair Setup", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __54___HAPAccessoryServerBTLE200_startPairingWithRequest___block_invoke_624;
    v14 = &unk_2786D7050;
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    __54___HAPAccessoryServerBTLE200_startPairingWithRequest___block_invoke_624(&v11);
    [*(a1 + 32) setPairingDisconnectionError:{0, v11, v12, v13, v14, v15}];
    [*(a1 + 32) setPairing:1];
    [*(a1 + 32) _checkForAuthPrompt:{objc_msgSend(*(a1 + 48), "requiresUserConsent")}];
  }
}

void __54___HAPAccessoryServerBTLE200_startPairingWithRequest___block_invoke_624(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v4 = v2;
    [*(a1 + 40) requiresUserConsent];
    v3 = HMFBooleanToString();
    v2 = v4;
  }
}

void __97___HAPAccessoryServerBTLE200__enableBroadcastEvent_interval_forCharacteristic_completionHandler___block_invoke(void **a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to configure characteristic with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    _callCharacteristicOperationCompletion(a1[4], a1[5], 3, v6, @"Configure Characteristic request failed.");
  }

  else if ([v5 statusCode])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v15;
      v31 = 1024;
      LODWORD(v32) = [v5 statusCode];
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Configure characteristic failed with status: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = a1[4];
    v16 = a1[5];
    v18 = [MEMORY[0x277CCA9B8] hapErrorWithCode:{HAPErrorCodeFromHAPBLEStatusErrorCode(objc_msgSend(v5, "statusCode"))}];
    _callCharacteristicOperationCompletion(v17, v16, 3, v18, @"Response with failure status code");
  }

  else
  {
    v28 = 0;
    v19 = [objc_opt_class() parseCharacteristicConfigurationResponse:v5 error:&v28];
    v20 = v28;
    if (v19)
    {
      _callCharacteristicOperationCompletion(a1[4], a1[5], 3, 0, 0);
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = WeakRetained;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v24;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic configuration response with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v26 = a1[4];
      v25 = a1[5];
      v27 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
      _callCharacteristicOperationCompletion(v26, v25, 3, v27, @"Configure characteristic response invalid.");
    }
  }
}

void __84___HAPAccessoryServerBTLE200__configureCharacteristics_queue_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 instanceID];
      v12 = [v5 type];
      v14 = 138544130;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Enable event response for characteristic %@/%@ with error: %@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  [*(a1 + 40) addObject:v13];
  dispatch_group_leave(*(a1 + 48));
}

void __84___HAPAccessoryServerBTLE200__configureCharacteristics_queue_withCompletionHandler___block_invoke_607(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Completed multiple broadcast enable requests", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __84___HAPAccessoryServerBTLE200__configureCharacteristics_queue_withCompletionHandler___block_invoke_608;
      v9[3] = &unk_2786D65D8;
      v11 = v8;
      v10 = *(a1 + 40);
      dispatch_async(v7, v9);
    }
  }
}

void __83___HAPAccessoryServerBTLE200_configureCharacteristics_queue_withCompletionHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83___HAPAccessoryServerBTLE200_configureCharacteristics_queue_withCompletionHandler___block_invoke_2;
  v5[3] = &unk_2786D6650;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 56);
  [v2 _configureCharacteristics:v3 queue:v4 withCompletionHandler:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __83___HAPAccessoryServerBTLE200_configureCharacteristics_queue_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v20 = a1;
  v21 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 error];

        if (!v13)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = WeakRetained;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            v18 = [v12 characteristic];
            *buf = 138543618;
            v27 = v17;
            v28 = 2112;
            v29 = v18;
            _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Configured characteristic %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  v19 = *(v20 + 32);
  if (v19)
  {
    (*(v19 + 16))(v19, v7, v21);
  }
}

void __86___HAPAccessoryServerBTLE200__configureBroadcastKeyGeneration_service_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 64)];
    *buf = 138543874;
    v43 = v10;
    v44 = 2112;
    v45 = v11;
    v46 = 2112;
    v47 = v6;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Did configure for broadcast key generation type: %@ with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v6)
  {
    if (*(a1 + 48))
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to configure for broadcast key"];
      v15 = @"Protocol config request failed.";
      v16 = v13;
      v17 = v14;
      v18 = v6;
LABEL_11:
      v25 = [v16 hapErrorWithCode:1 description:v17 reason:v15 suggestion:0 underlyingError:v18];

      (*(*(a1 + 48) + 16))(0.0);
LABEL_20:
    }
  }

  else
  {
    if (![v5 statusCode])
    {
      v40 = 0;
      v41 = 0;
      v39 = 0;
      v26 = [objc_opt_class() parseProtocolConfigurationResponse:v5 key:&v41 stateNumber:&v40 error:&v39];
      v27 = v41;
      v28 = v40;
      v25 = v39;
      if (v26)
      {
        v29 = *(a1 + 48);
        if (v29)
        {
          Current = CFAbsoluteTimeGetCurrent();
          (*(v29 + 16))(v29, v27, v28, 1, 0, Current);
        }
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = WeakRetained;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v34 = v38 = v31;
          *buf = 138543618;
          v43 = v34;
          v44 = 2112;
          v45 = v25;
          _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse protocol configuration response with error: %@", buf, 0x16u);

          v31 = v38;
        }

        objc_autoreleasePoolPop(v31);
        if (*(a1 + 48))
        {
          v35 = MEMORY[0x277CCA9B8];
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to configure service %@.", *(a1 + 40)];
          v37 = [v35 hapErrorWithCode:12 description:v36 reason:@"Protocol config response was invalid." suggestion:0 underlyingError:v25];

          (*(*(a1 + 48) + 16))(0.0);
        }
      }

      goto LABEL_20;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = WeakRetained;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v5 statusCode];
      *buf = 138543618;
      v43 = v22;
      v44 = 1024;
      LODWORD(v45) = v23;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Protocol Config failed with status: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v19);
    if (*(a1 + 48))
    {
      v24 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Protocol Config failed"];
      v15 = @"Response with failure status code";
      v16 = v24;
      v17 = v14;
      v18 = 0;
      goto LABEL_11;
    }
  }
}

void __70___HAPAccessoryServerBTLE200__handleEventIndicationForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 error];

        if (!v11)
        {
          v12 = [v10 characteristic];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count] && objc_msgSend(*(a1 + 32), "_delegateRespondsToSelector:", sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_))
  {
    v13 = [*(a1 + 32) delegateQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70___HAPAccessoryServerBTLE200__handleEventIndicationForCharacteristic___block_invoke_2;
    v14[3] = &unk_2786D7050;
    v14[4] = *(a1 + 32);
    v15 = v4;
    dispatch_async(v13, v14);
  }
}

void __70___HAPAccessoryServerBTLE200__handleEventIndicationForCharacteristic___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 stateNumber];
  [v5 accessoryServer:v3 didUpdateValuesForCharacteristics:v2 stateNumber:v4 broadcast:0];
}

uint64_t __85___HAPAccessoryServerBTLE200__performEnableEvent_toCharacteristic_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2);
  }

  return result;
}

void __89___HAPAccessoryServerBTLE200__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to enable events on characteristic with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    [v5 setEventNotificationsEnabled:*(a1 + 56)];
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89___HAPAccessoryServerBTLE200__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_570;
      block[3] = &unk_2786D69E0;
      v16 = v11;
      v14 = v5;
      v15 = v6;
      dispatch_async(v12, block);
    }
  }
}

void __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_549(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [v5 setEventNotificationsEnabled:(*(a1 + 48) & 1) == 0];
  }

  v7 = [v5 service];
  v8 = [v7 accessory];

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 instanceID];
    v14 = [v5 instanceID];
    [v5 type];
    v18 = v9;
    v16 = v15 = v8;
    *buf = 138544386;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Enable event response for characteristic %@/%@/%@ with error: %@", buf, 0x34u);

    v8 = v15;
    v9 = v18;
  }

  objc_autoreleasePoolPop(v9);
  v17 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  if (v17)
  {
    [*(a1 + 40) addObject:v17];
  }
}

void __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_550(uint64_t a1)
{
  v2 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_2;
  v8[3] = &unk_2786D4128;
  v12 = *(a1 + 72);
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v13 = *(a1 + 80);
  v11 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v7 _readCharacteristicValues:v3 queue:v2 completionHandler:v8];
}

void __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v58;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v58 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v57 + 1) + 8 * i);
        v13 = [v12 error];

        if (v13)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = *(a1 + 32);
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v17 = v50 = v6;
            v18 = [v12 characteristic];
            v19 = [v18 shortDescription];
            [v12 error];
            v20 = v49 = v14;
            *buf = 138543874;
            v62 = v17;
            v63 = 2112;
            v64 = v19;
            v65 = 2112;
            v66 = v20;
            _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to read value for characteristic, %@, with error: %@", buf, 0x20u);

            v14 = v49;
            v6 = v50;
          }

          objc_autoreleasePoolPop(v14);
          v21 = [v12 error];

          v6 = v21;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v57 objects:v67 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v22 = objc_autoreleasePoolPush();
  v23 = *(a1 + 32);
  v24 = HMFGetOSLogHandle();
  v25 = v24;
  if (v6)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v26;
      v63 = 2112;
      v64 = v6;
      _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to read characteristic values with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v6);
    v27 = [*(a1 + 32) browser];
    v28 = [*(a1 + 32) identifier];
    [v27 removeRecentlySeenPairedPeripheralWithIdentifier:v28];
  }

  else
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      v40 = [v7 count];
      *buf = 138543618;
      v62 = v39;
      v63 = 2048;
      v64 = v40;
      _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Read values for %lu Characteristics supporting Events", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v41 = objc_autoreleasePoolPush();
    v42 = *(a1 + 32);
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      v45 = [*(a1 + 32) identifier];
      *buf = 138543618;
      v62 = v44;
      v63 = 2112;
      v64 = v45;
      _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_INFO, "%{public}@Saving accessory cache with identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    v46 = [*(a1 + 32) accessoryCache];
    [v46 save];

    if ([*(a1 + 40) count] && objc_msgSend(*(a1 + 32), "_delegateRespondsToSelector:", sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_))
    {
      v47 = [*(a1 + 32) delegateQueue];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_553;
      v55[3] = &unk_2786D7050;
      v48 = *(a1 + 40);
      v55[4] = *(a1 + 32);
      v56 = v48;
      dispatch_async(v47, v55);
    }
  }

  v29 = objc_autoreleasePoolPush();
  v30 = *(a1 + 32);
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    v33 = v32;
    v34 = @"disable";
    if (*(a1 + 80))
    {
      v34 = @"enable";
    }

    *buf = 138543618;
    v62 = v32;
    v63 = 2112;
    v64 = v34;
    _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_INFO, "%{public}@Completed multiple %@ event requests", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v29);
  v35 = *(a1 + 64);
  if (v35)
  {
    v36 = *(a1 + 48);
    if (v36)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_554;
      block[3] = &unk_2786D61A0;
      v53 = v35;
      v37 = *(a1 + 56);
      v38 = *(a1 + 72);
      v52 = v37;
      v54 = v38;
      dispatch_async(v36, block);
    }
  }
}

uint64_t __91___HAPAccessoryServerBTLE200__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_553(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v3 stateNumber];
  [v2 accessoryServer:v3 didUpdateValuesForCharacteristics:v4 stateNumber:v5 broadcast:0];

  v6 = *(a1 + 32);

  return [v6 setStateChanged:0];
}

void __105___HAPAccessoryServerBTLE200__performTimedWriteExecuteForCharacteristic_value_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v11;
      v42 = 2114;
      v43 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute write to characteristic with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    [v12 instanceID];

    [v6 domain];
    [v6 code];

    _callCharacteristicOperationCompletion(*(a1 + 40), *(a1 + 56), 2, v6, @"Execute timed write request failed.");
    goto LABEL_24;
  }

  if (![v5 statusCode])
  {
    v21 = *(a1 + 48);
    v22 = v21;
    if ((*(a1 + 72) & 2) != 0)
    {
      v38 = 0;
      v39 = v21;
      v24 = [objc_opt_class() parseWriteResponse:v5 value:&v39 error:&v38];
      v23 = v39;

      v25 = v38;
      v26 = v25;
      if ((v24 & 1) == 0)
      {
        v30 = objc_autoreleasePoolPush();
        v31 = WeakRetained;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v33;
          v42 = 2114;
          v43 = v26;
          _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic execute response with error: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        v34 = *(a1 + 40);
        v35 = *(a1 + 32);
        [v34 instanceID];

        [v26 domain];
        [v26 code];

        _callCharacteristicOperationCompletion(*(a1 + 40), *(a1 + 56), 2, v26, @"Execute timed write response invalid.");
        goto LABEL_23;
      }
    }

    else
    {
      v23 = v21;
    }

    [*(a1 + 40) setValue:v23];
    [*(a1 + 40) instanceID];

    [v5 statusCode];
    v27 = [*(a1 + 40) type];
    if (![v27 isEqualToString:@"0000001E-0000-1000-8000-0026BB765291"])
    {
      v28 = [*(a1 + 40) type];
      if (![v28 isEqualToString:@"00000032-0000-1000-8000-0026BB765291"])
      {
        v29 = [*(a1 + 40) type];
        if (![v29 isEqualToString:@"0000007C-0000-1000-8000-0026BB765291"])
        {
          v36 = [*(a1 + 40) type];
          v37 = [v36 isEqualToString:@"00000067-0000-1000-8000-0026BB765291"];

          if ((v37 & 1) == 0)
          {
            [WeakRetained markNotifyingCharacteristicUpdatedforCharacteristic:*(a1 + 40)];
          }

          goto LABEL_19;
        }
      }
    }

LABEL_19:
    _callCharacteristicOperationCompletion(*(a1 + 40), *(a1 + 56), 2, 0, 0);
LABEL_23:

    goto LABEL_24;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = WeakRetained;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v17;
    v42 = 1024;
    LODWORD(v43) = [v5 statusCode];
    _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Received response to prepare with status code: 0x%02x", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v14);
  [*(a1 + 40) instanceID];

  [v5 statusCode];
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = [MEMORY[0x277CCA9B8] hapErrorWithCode:{HAPErrorCodeFromHAPBLEStatusErrorCode(objc_msgSend(v5, "statusCode"))}];
  _callCharacteristicOperationCompletion(v18, v19, 2, v20, @"Execute response returned non-zero status code.");

LABEL_24:
}

void __138___HAPAccessoryServerBTLE200__performTimedWritePrepareWithValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v10;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare timed write to characteristic with error: %{public}@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    [v11 instanceID];

    [v6 domain];
    [v6 code];

    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = @"Prepare timed write request failed.";
    v16 = v6;
    goto LABEL_5;
  }

  if (![v5 statusCode])
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v16 = 0;
    v15 = 0;
LABEL_5:
    _callCharacteristicOperationCompletion(v13, v14, 2, v16, v15);
    goto LABEL_10;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 32);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v20;
    v26 = 1024;
    LODWORD(v27) = [v5 statusCode];
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Received response to prepare write with status code: 0x%02x", &v24, 0x12u);
  }

  objc_autoreleasePoolPop(v17);
  [*(a1 + 48) instanceID];

  [v5 statusCode];
  v22 = *(a1 + 48);
  v21 = *(a1 + 56);
  v23 = [MEMORY[0x277CCA9B8] hapErrorWithCode:{HAPErrorCodeFromHAPBLEStatusErrorCode(objc_msgSend(v5, "statusCode"))}];
  _callCharacteristicOperationCompletion(v22, v21, 2, v23, @"Prepare timed write response returned non-zero status code.");

LABEL_10:
}

void __127___HAPAccessoryServerBTLE200__performTimedWriteValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) clientQueue];
  dispatch_assert_queue_V2(v6);

  if (v5)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, *(a1 + 40), v5);
    }
  }

  else
  {
    [*(a1 + 32) _performTimedWriteExecuteForCharacteristic:v10 value:*(a1 + 48) options:*(a1 + 64) completionHandler:*(a1 + 56)];
  }

  v8 = [*(a1 + 32) requestOperationQueue];
  v9 = [v8 isSuspended];

  if (v9)
  {
    [*(a1 + 32) _resumeAllOperations];
  }
}

void __122___HAPAccessoryServerBTLE200__performWriteValue_toCharacteristic_authorizationData_contextData_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!v6)
  {
    v15 = *(a1 + 48);
    v16 = v15;
    if ((*(a1 + 72) & 2) != 0)
    {
      v31 = 0;
      v32 = v15;
      v18 = [objc_opt_class() parseWriteResponse:v5 value:&v32 error:&v31];
      v17 = v32;

      v19 = v31;
      v20 = v19;
      if ((v18 & 1) == 0)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = WeakRetained;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v34 = v28;
          v35 = 2114;
          v36 = v20;
          _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic write response with error: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v29 = *(a1 + 32);
        v30 = *(a1 + 40);
        [v29 instanceID];

        [v20 domain];
        [v20 code];

        _callCharacteristicOperationCompletion(*(a1 + 32), *(a1 + 56), 2, v20, @"Write response failed.");
        goto LABEL_15;
      }
    }

    else
    {
      v17 = v15;
    }

    [*(a1 + 32) setValue:v17];
    [*(a1 + 32) instanceID];

    [v5 statusCode];
    v21 = +[HAPMetadata getSharedInstance];
    v22 = [v21 characteristicTypesChangingTargetState];
    v23 = [*(a1 + 32) type];
    v24 = [v22 containsObject:v23];

    if ((v24 & 1) == 0)
    {
      [WeakRetained markNotifyingCharacteristicUpdatedforCharacteristic:*(a1 + 32)];
    }

    _callCharacteristicOperationCompletion(*(a1 + 32), *(a1 + 56), 2, 0, 0);
LABEL_15:

    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) shortDescription];
    *buf = 138543874;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    v37 = 2114;
    v38 = v6;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to write to characteristic: %@ with error: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v13 instanceID];

  [v6 domain];
  [v6 code];

  _callCharacteristicOperationCompletion(*(a1 + 32), *(a1 + 56), 2, v6, @"Write request failed.");
LABEL_16:
}

void __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v77 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72) > 0.0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1[4];
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 72);
      *buf = 138543618;
      v67 = v5;
      v68 = 2048;
      v69 = v6;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Request timeouts are not supported, request may not timeout within %f seconds", buf, 0x16u);

      v1 = a1;
    }

    objc_autoreleasePoolPop(v2);
  }

  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1[5], "count")}];
  v7 = dispatch_group_create();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v1[5];
  v49 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
  v9 = 0;
  if (v49)
  {
    v46 = *v63;
    *&v8 = 138544386;
    v41 = v8;
    v47 = v7;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v63 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v62 + 1) + 8 * i);
        dispatch_group_enter(v7);
        v12 = [v11 writeType] == 1;
        if ([v11 includeResponseValue])
        {
          v13 = 3;
        }

        else
        {
          v13 = 1;
        }

        v14 = [v11 timedWrite];
        v15 = v13 | 4;
        if (!v14)
        {
          v15 = v13;
        }

        v50 = v15;
        v16 = [v11 characteristic];
        [v16 instanceID];

        v17 = objc_autoreleasePoolPush();
        v18 = v1[4];
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v21 = [v11 value];
          v22 = [v11 characteristic];
          [v22 shortDescription];
          v44 = v9;
          v24 = v23 = v12;
          [v11 contextData];
          v25 = v45 = v17;
          *buf = v41;
          v67 = v20;
          v68 = 2114;
          v69 = v21;
          v70 = 2114;
          v71 = v24;
          v72 = 2050;
          v73 = v50;
          v74 = 2114;
          v75 = v25;
          _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Writing value '%{public}@' for characteristic %{public}@ with writeOptions: %{public}tu contextData: %{public}@", buf, 0x34u);

          v12 = v23;
          v9 = v44;

          v1 = a1;
          v17 = v45;
        }

        v9 |= v12;

        objc_autoreleasePoolPop(v17);
        v26 = v1[4];
        v27 = [v11 value];
        v28 = [v11 characteristic];
        v29 = [v11 authorizationData];
        v30 = [v11 contextData];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_441;
        v58[3] = &unk_2786D66A0;
        v31 = v48;
        v32 = v1[4];
        v59 = v31;
        v60 = v32;
        v7 = v47;
        v61 = v47;
        [v26 _writeValue:v27 toCharacteristic:v28 authorizationData:v29 contextData:v30 options:v50 completionHandler:v58];
      }

      v49 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v49);
  }

  v33 = [v1[4] clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_442;
  block[3] = &unk_2786D4038;
  v34 = v1[6];
  v51 = *(v1 + 2);
  v35 = v51.i64[1];
  v57 = v9 & 1;
  v36 = v1[7];
  v37.i64[0] = v34;
  v37.i64[1] = v36;
  v38 = vzip2q_s64(v51, v37);
  v37.i64[1] = v51.i64[0];
  v53 = v37;
  v54 = v38;
  v39 = v1[8];
  v55 = v48;
  v56 = v39;
  v40 = v48;
  dispatch_group_notify(v7, v33, block);
}

void __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_441(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  [*(a1 + 32) addObject:v7];
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Write response: %{public}@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_442(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) begin];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "count")}];
    v7 = HMFBooleanToString();
    *buf = 138543874;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Completed %{public}@ write requests. ShouldDisconnect: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) markWithReason:@"Calling completion handler"];
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __105___HAPAccessoryServerBTLE200_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_443;
      v14 = &unk_2786D65D8;
      v16 = v9;
      v15 = *(a1 + 64);
      dispatch_async(v8, &v11);
    }
  }

  if (*(a1 + 80) == 1)
  {
    [*(a1 + 32) markWithReason:@"Disconnecting"];
    [*(a1 + 40) _suspendConnectionIdleTimer];
    [*(a1 + 40) _handleConnectionIdleTimeout];
  }

  [*(a1 + 32) end];
  return [*(a1 + 32) invalidate];
}

void __84___HAPAccessoryServerBTLE200__readValueForCharacteristic_options_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (v6)
  {
    [a1[4] setValue:0];
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v11;
      v31 = 2114;
      v32 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to read from characteristic with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = a1[4];
    v13 = a1[5];
    [v12 instanceID];

    [v6 domain];
    [v6 code];

    _callCharacteristicOperationCompletion(a1[4], a1[6], 1, v6, @"Read request failed.");
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v14 = [objc_opt_class() parseReadResponse:v5 value:&v28 notificationContext:&v27 error:&v26];
    v15 = v28;
    v16 = v27;
    v17 = v26;
    v18 = a1[4];
    if (v14)
    {
      [v18 setValue:v15];
      [a1[4] setNotificationContext:v16];
      [a1[4] instanceID];

      [v5 statusCode];
      [WeakRetained _updatePropertiesFromCharacteristic:a1[4]];
      _callCharacteristicOperationCompletion(a1[4], a1[6], 1, 0, 0);
    }

    else
    {
      v25 = v15;
      [v18 setValue:0];
      [a1[4] setNotificationContext:0];
      v19 = objc_autoreleasePoolPush();
      v20 = WeakRetained;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v22;
        v31 = 2114;
        v32 = v17;
        _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic read response with error: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v23 = a1[4];
      v24 = a1[5];
      [v23 instanceID];

      [v17 domain];
      [v17 code];

      _callCharacteristicOperationCompletion(a1[4], a1[6], 1, v17, @"Read response invalid.");
      v15 = v25;
    }
  }
}

void __80___HAPAccessoryServerBTLE200__readCharacteristicValues_queue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 instanceID];
      v12 = [v5 type];
      v14 = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Read response for characteristic %{public}@/%{public}@ with error: %{public}@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  [*(a1 + 40) addObject:v13];
  dispatch_group_leave(*(a1 + 48));
}

void __80___HAPAccessoryServerBTLE200__readCharacteristicValues_queue_completionHandler___block_invoke_393(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Completed multiple read requests", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __80___HAPAccessoryServerBTLE200__readCharacteristicValues_queue_completionHandler___block_invoke_394;
      v8[3] = &unk_2786D65D8;
      v10 = v7;
      v9 = *(a1 + 48);
      dispatch_async(v6, v8);
    }
  }
}

void __104___HAPAccessoryServerBTLE200_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = *v2;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v6 = *v29;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        if ([v3 containsObject:v8])
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 40);
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543618;
            v33 = v20;
            v34 = 2114;
            v35 = v8;
            _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Not sending requests due to duplicate characteristic: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          [*(a1 + 48) markWithReason:@"Calling completion handler"];
          if (*(a1 + 64))
          {
            v21 = MEMORY[0x277CCA9B8];
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Duplicate characteristic read of %@.", v8];
            v23 = [v21 hapErrorWithCode:11 description:v22 reason:@"Client requested to read characteristic twice." suggestion:0 underlyingError:0];

            (*(*(a1 + 64) + 16))();
          }

          [*(a1 + 48) end];
          [*(a1 + 48) invalidate];

          goto LABEL_19;
        }

        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (*(a1 + 72) > 0.0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 72);
      *buf = 138543618;
      v33 = v12;
      v34 = 2048;
      v35 = v13;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Request timeouts are not supported, request may not timeout within %f seconds", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  objc_initWeak(buf, *(a1 + 40));
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __104___HAPAccessoryServerBTLE200_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_383;
  v24[3] = &unk_2786D3FE8;
  v16 = *(a1 + 56);
  v25 = *(a1 + 48);
  objc_copyWeak(&v27, buf);
  v26 = *(a1 + 64);
  [v14 _readCharacteristicValues:v15 queue:v16 completionHandler:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
LABEL_19:
}

void __104___HAPAccessoryServerBTLE200_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_383(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) begin];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [v5 hmf_objectsPassingTest:&__block_literal_global_386_7623];
  if ([v8 count])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Read response: '%{public}@'", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  [*(a1 + 32) markWithReason:@"Calling completion handler"];
  v13 = MEMORY[0x231885210](*(a1 + 40));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }

  [*(a1 + 32) end];
  [*(a1 + 32) invalidate];
}

BOOL __104___HAPAccessoryServerBTLE200_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  v3 = v2 == 0;

  return v3;
}

void __64___HAPAccessoryServerBTLE200__handleReadServiceSignature_error___block_invoke(id *a1)
{
  v2 = [a1[4] pairingActivity];
  if (v2)
  {
    v5 = v2;
    v3 = [a1[5] UUID];
    v4 = [v3 UUIDString];

    [a1[6] domain];
    [a1[6] code];
    v2 = v5;
  }
}

void __71___HAPAccessoryServerBTLE200__handleReadCharacteristicSignature_error___block_invoke(id *a1)
{
  v2 = [a1[4] pairingActivity];
  if (v2)
  {
    v5 = v2;
    v3 = [a1[5] UUID];
    v4 = [v3 UUIDString];

    [a1[6] domain];
    [a1[6] code];
    v2 = v5;
  }
}

void __52___HAPAccessoryServerBTLE200__readServiceSignature___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 && *(a1 + 32))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v10;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get signature from service with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) _handleReadServiceSignature:*(a1 + 32) error:v6];
  }

  else
  {
    v11 = objc_opt_class();
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v28 = 0;
    v14 = [v11 parseServiceSignatureResponse:v5 serviceInstanceID:v12 serviceType:v13 error:&v28];
    v15 = v28;
    if (v14 || !*(a1 + 32))
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v14 description];
        *buf = 138543618;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = [*(a1 + 40) discoveryContext];
      v22 = [v21 serviceSignatures];
      [v22 setObject:v14 forKey:*(a1 + 32)];

      v23 = 0;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 40);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v27;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse service signature response with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v23 = v15;
    }

    [*(a1 + 40) _handleReadServiceSignature:*(a1 + 32) error:v23];
  }
}

void __59___HAPAccessoryServerBTLE200__readCharacteristicSignature___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get signature from characteristic with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _handleReadCharacteristicSignature:*(a1 + 40) error:v6];
  }

  else
  {
    v22 = 0;
    v11 = [objc_opt_class() parseSignatureResponse:v5 error:&v22];
    v12 = v22;
    if (v11)
    {
      v13 = [*(a1 + 32) discoveryContext];
      v14 = [v13 characteristicSignatures];
      [v14 setObject:v11 forKey:*(a1 + 40)];

      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = 0;
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v21;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse characteristic signature response with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = v12;
    }

    [v15 _handleReadCharacteristicSignature:v16 error:v17];
  }
}

void __45___HAPAccessoryServerBTLE200__retryDiscovery__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "discoveryRetries")}];
    v2 = v4;
  }
}

void __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceDate:*(a1 + 32)];
  v7 = v6;

  v8 = [v3 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    v9 = v3;
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_2;
  v20 = &unk_2786D3EE0;
  v12 = *(a1 + 56);
  v21 = WeakRetained;
  v23 = v12;
  v24 = v7;
  v13 = v9;
  v22 = v13;
  __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_2(&v17);
  v14 = [WeakRetained discoveryContext];
  [v14 setDiscovering:0];

  v15 = MEMORY[0x231885210](*(a1 + 40));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 16))(v15, v3);
  }

  [WeakRetained incrementHAPBTLEMetricsDiscoveryCount];
}

void __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_213(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
      *buf = 138543874;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to connect to the accessory during discovery type: %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [*(a1 + 32) completionHandler];
    if (v10)
    {
      v11 = [v6 clientQueue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_214;
      v21[3] = &unk_2786D65D8;
      v22 = v3;
      v23 = v10;
      dispatch_async(v11, v21);
    }
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = objc_autoreleasePoolPush();
    v14 = WeakRetained;
    v15 = HMFGetOSLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v12 == 3)
    {
      if (v16)
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v17;
        _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Ack-ed accessory notification", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      [v14 _cancelDiscoveryWithError:0];
      [v14 _disconnectWithDisconnectionError:0 completionHandler:0];
    }

    else
    {
      if (v16)
      {
        v18 = HMFGetLogIdentifier();
        v19 = *(a1 + 48);
        v20 = [v14 peripheral];
        *buf = 138543874;
        v25 = v18;
        v26 = 2050;
        v27 = v19;
        v28 = 2114;
        v29 = v20;
        _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Starting attribute database discovery type: %{public}tu via %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [v14 _discoverServices];
    }
  }
}

void __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_214(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 description:@"Discovery failed." reason:@"Failed to connect." suggestion:0 underlyingError:*(a1 + 32) marker:2107];
  (*(*(a1 + 40) + 16))();
}

void __66___HAPAccessoryServerBTLE200__discoverWithType_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v5 = v2;
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
    v2 = v5;
  }
}

void *__86___HAPAccessoryServerBTLE200__readPendingDiscoveredCharacteristicTypesWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  result = [*(a1 + 32) count];
  if (!result)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_2;
  v25[3] = &unk_2786D3E90;
  objc_copyWeak(&v26, &location);
  v3 = MEMORY[0x231885210](v25);
  if ([*v2 isPaired])
  {
    if (*(a1 + 40))
    {
      v4 = [*(a1 + 32) discoveredAccessoryCharacteristicsPendingRead];
      [v4 addObjectsFromArray:*(a1 + 40)];
    }

    v5 = [*(a1 + 32) discoveryContext];
    v6 = [v5 isDiscovering];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = MEMORY[0x277CCABB0];
        v12 = [*(a1 + 32) discoveryContext];
        v13 = [v11 numberWithInteger:{objc_msgSend(v12, "discoveryType")}];
        v14 = *(a1 + 40);
        *buf = 138543874;
        v29 = v10;
        v30 = 2112;
        v31 = v13;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Discovering in progress for type: %@. Pending characteristic types to read: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v20 = [*(a1 + 32) connectReason];
      v21 = *(a1 + 32);
      if (v20 == 2)
      {
        [*(a1 + 32) setHasBeenDiscovered:1];
        [*(a1 + 32) _discoverWithType:3 completionHandler:0];
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_200;
        v22[3] = &unk_2786D3EB8;
        objc_copyWeak(&v24, &location);
        v23 = v3;
        [v21 _discoverWithType:2 completionHandler:v22];

        objc_destroyWeak(&v24);
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = @"Discovery on an unpaired accessory is not allowed";
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Discovery on an unpaired accessory is not allowed" reason:0 suggestion:0 underlyingError:0 marker:215];
    (v3)[2](v3, 0, v19);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained pendingRemovePairing] == 1)
  {
    [WeakRetained _removePairingOfAccessoryServerCancelledMidPairing];
  }

  else
  {
    [WeakRetained setHasBeenDiscovered:v5 == 0];
    if ([WeakRetained _delegateRespondsToSelector:sel_accessoryServer_didDiscoverAccessories_transaction_error_])
    {
      v7 = [WeakRetained delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_3;
      block[3] = &unk_2786D5268;
      v10 = a2;
      block[4] = WeakRetained;
      v9 = v5;
      dispatch_async(v7, block);
    }
  }
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_200(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Discovery failed" reason:0 suggestion:0 underlyingError:v3];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_2_204;
    v6[3] = &unk_2786D3EB8;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [WeakRetained _discoverWithType:0 completionHandler:v6];

    objc_destroyWeak(&v8);
  }
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_2_204(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Discovery failed" reason:0 suggestion:0 underlyingError:v3];
    (*(*(a1 + 32) + 16))(*(a1 + 32), [WeakRetained isIncompatibleUpdate], v5);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_3_205;
    v7[3] = &unk_2786D6BE0;
    objc_copyWeak(&v10, (a1 + 40));
    v6 = *(a1 + 32);
    v8 = 0;
    v9 = v6;
    [WeakRetained _readPendingDiscoveredCharacteristicTypesWithCompletion:v7];

    objc_destroyWeak(&v10);
  }
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_3_205(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained primaryAccessory];
  [v2 updateForAccessoryInformationService];

  (*(*(a1 + 40) + 16))(*(a1 + 40), [WeakRetained isIncompatibleUpdate], *(a1 + 32));
}

void __76___HAPAccessoryServerBTLE200_discoverAccessoriesAndReadCharacteristicTypes___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) delegate];
    [v2 accessoryServer:*(a1 + 32) didDiscoverAccessories:0 transaction:0 error:*(a1 + 40)];
  }

  v6 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 accessories];
  v5 = [v4 copy];
  [v6 accessoryServer:v3 didDiscoverAccessories:v5 transaction:0 error:*(a1 + 40)];
}

void __80___HAPAccessoryServerBTLE200__removePairingOfAccessoryServerCancelledMidPairing__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed accessory server that its pairing was cancelled post pair-setup with error %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) setPendingRemovePairing:2];
  v8 = [*(a1 + 32) browser];
  v9 = [v8 isPerformingGeneralScan];

  if ((v9 & 1) == 0)
  {
    v10 = [*(a1 + 32) browser];
    [v10 stopDiscoveringAccessoryServers];
  }
}

uint64_t __80___HAPAccessoryServerBTLE200__removePairingOfAccessoryServerCancelledMidPairing__block_invoke_193(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __209___HAPAccessoryServerBTLE200_initWithPeripheral_name_pairingUsername_statusFlags_stateNumber_stateChanged_connectReason_configNumber_category_setupHash_connectionIdleTime_browser_keyStore_whbStableIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained browser];
  v2 = [WeakRetained accessoryCache];
  [v1 saveCacheToDisk:v2];
}

uint64_t __41___HAPAccessoryServerBTLE200_logCategory__block_invoke()
{
  logCategory__hmf_once_v334 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end
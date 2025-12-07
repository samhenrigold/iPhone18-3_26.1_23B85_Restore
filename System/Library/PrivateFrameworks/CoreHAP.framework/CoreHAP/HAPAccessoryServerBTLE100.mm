@interface HAPAccessoryServerBTLE100
@end

@implementation HAPAccessoryServerBTLE100

uint64_t __40___HAPAccessoryServerBTLE100_disconnect__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) name];
    v7 = [*(a1 + 32) identifier];
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Disconnecting %@ %@ as a result of direct disconnect call", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _disconnect];
}

void __80___HAPAccessoryServerBTLE100_listPairingsWithCompletionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6702 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __82___HAPAccessoryServerBTLE100_removePairingForCurrentControllerOnQueue_completion___block_invoke_345(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 32) name];
    *buf = 138543874;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    v34 = 2112;
    v35 = v3;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server '%@] Request to remove current controller completed with error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) keyStore];
  v9 = [*(a1 + 32) identifier];
  v29 = 0;
  [v8 removeAccessoryKeyForName:v9 error:&v29];
  v10 = v29;

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) identifier];
      *buf = 138543874;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@After removing the accessory with 'Remove Pairing', we failed to remove accessory %@ from the keychain with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = [*(a1 + 32) keyStore];
  v16 = [*(a1 + 32) identifier];
  v28 = v10;
  v17 = [v15 deletePeripheralIdentifierForAccessoryIdentifier:v16 error:&v28];
  v18 = v28;

  if ((v17 & 1) == 0)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 32) identifier];
      *buf = 138543874;
      v31 = v21;
      v32 = 2112;
      v33 = v22;
      v34 = 2112;
      v35 = v3;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to remove the peripheral keychain entry for %@ with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    v24 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82___HAPAccessoryServerBTLE100_removePairingForCurrentControllerOnQueue_completion___block_invoke_346;
    block[3] = &unk_2786D6490;
    v27 = v23;
    dispatch_async(v24, block);
  }

  v25 = [*(a1 + 32) browser];
  [v25 disconnectFromBTLEAccessoryServer:*(a1 + 32)];
}

void __86___HAPAccessoryServerBTLE100__removePairingWithIdentifier_publicKey_queue_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Remove pairing failed." reason:@"Failed to create remove pairing request payload." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __86___HAPAccessoryServerBTLE100__removePairingWithIdentifier_publicKey_queue_completion___block_invoke_344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86___HAPAccessoryServerBTLE100__removePairingWithIdentifier_publicKey_queue_completion___block_invoke_2;
  v9[3] = &unk_2786D6790;
  v8 = *(a1 + 48);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v6 _handlePairingsWriteForCharacteristic:a2 writeError:a3 removing:1 queue:v7 completion:v9];
}

uint64_t __86___HAPAccessoryServerBTLE100__removePairingWithIdentifier_publicKey_queue_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _dequeueAndContinueOperation];
}

void __78___HAPAccessoryServerBTLE100_removePairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) addRemovePairingOperationsQueue];
  v3 = [v2 count];

  if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) identifier];
    v6 = [*(a1 + 40) publicKey];
    v7 = [v6 data];
    [v4 _removePairingWithIdentifier:v5 publicKey:v7 queue:*(a1 + 48) completion:*(a1 + 56)];
  }

  v8 = *(a1 + 32);
  v11 = [*(a1 + 40) identifier];
  v9 = [*(a1 + 40) publicKey];
  v10 = [v9 data];
  [v8 _enqueueOperation:6 identifier:v11 publicKey:v10 admin:0 queue:*(a1 + 48) completion:*(a1 + 56)];
}

void __89___HAPAccessoryServerBTLE100__addPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12 description:@"Add pairing failed." reason:@"Failed to create add pairing request payload." suggestion:0 underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __89___HAPAccessoryServerBTLE100__addPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke_334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89___HAPAccessoryServerBTLE100__addPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke_2;
  v9[3] = &unk_2786D6790;
  v8 = *(a1 + 48);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v6 _handlePairingsWriteForCharacteristic:a2 writeError:a3 removing:0 queue:v7 completion:v9];
}

uint64_t __89___HAPAccessoryServerBTLE100__addPairingWithIdentifier_publicKey_admin_queue_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _dequeueAndContinueOperation];
}

void __75___HAPAccessoryServerBTLE100_addPairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) permissions];
  v3 = [*(a1 + 40) addRemovePairingOperationsQueue];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) identifier];
    v7 = [*(a1 + 32) publicKey];
    v8 = [v7 data];
    [v5 _addPairingWithIdentifier:v6 publicKey:v8 admin:v2 & 1 queue:*(a1 + 48) completion:*(a1 + 56)];
  }

  v9 = *(a1 + 40);
  v12 = [*(a1 + 32) identifier];
  v10 = [*(a1 + 32) publicKey];
  v11 = [v10 data];
  [v9 _enqueueOperation:5 identifier:v12 publicKey:v11 admin:v2 & 1 queue:*(a1 + 48) completion:*(a1 + 56)];
}

void __53___HAPAccessoryServerBTLE100_identifyWithCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) unpairedIdentifyRequested])
  {
    v2 = *(a1 + 40);
    v5 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:15];
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    [*(a1 + 32) setUnpairedIdentifyRequested:1];
    [*(a1 + 32) _handlePairingStateMachine];
    [*(a1 + 32) _updateConnectionLifetimeTimer];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 setUnpairedIdentifyCompletionBlock:v4];
  }
}

void __60___HAPAccessoryServerBTLE100__updateConnectionLifetimeTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleConnectionLifetimeTimeout];
    WeakRetained = v2;
  }
}

uint64_t __55___HAPAccessoryServerBTLE100_updateConnectionIdleTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = 10.0;
  if (v2 == 1)
  {
    v4 = 2.0;
  }

  [v3 setIdleConnectionTimeoutInSec:v4];
  v5 = *(a1 + 32);

  return [v5 _updateConnectionLifetimeTimer];
}

void __63___HAPAccessoryServerBTLE100__handlePairSetupExchangeWithData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:*(a1 + 40)];
}

void __63___HAPAccessoryServerBTLE100__handlePairSetupExchangeWithData___block_invoke_323(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:*(a1 + 40)];
}

void __45___HAPAccessoryServerBTLE100__pairSetupStart__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:0];
}

void __45___HAPAccessoryServerBTLE100__pairSetupStart__block_invoke_322(uint64_t a1)
{
  v3 = HMErrorFromOSStatus(*(a1 + 40));
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:v3];
}

uint64_t __91___HAPAccessoryServerBTLE100_peripheral_didUpdateNotificationStateForCharacteristic_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = *(a1 + 32);
    v12 = 138543874;
    v13 = v4;
    v14 = 2080;
    v15 = "[_HAPAccessoryServerBTLE100 peripheral:didUpdateNotificationStateForCharacteristic:error:]_block_invoke";
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%{public}@%s: Received Notification Updated confirmation for characteristics %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) _updateConnectionLifetimeTimer];
  if (*(a1 + 48))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 48);
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@### Notification Update failed with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 48);
  }

  else
  {
    v10 = 0;
  }

  return [*(a1 + 40) _handleHAPNotificationStateUpdateForCharacteristic:*(a1 + 32) error:v10];
}

void __78___HAPAccessoryServerBTLE100_peripheral_didWriteValueForCharacteristic_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _updateConnectionLifetimeTimer];
  if (*(a1 + 40))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = HMFGetLogIdentifier();
      v5 = *(a1 + 40);
      v17 = 138543618;
      v18 = v4;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_ERROR, "%{public}@### Writing failed after receiving a write confirmation with error: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) pairSetupCharacteristic];
  LODWORD(v6) = [v6 isEqual:v7];

  if (v6)
  {
    v8 = [*(a1 + 32) peripheral];
    v9 = [*(a1 + 32) pairSetupCharacteristic];
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) pairVerifyCharacteristic];
    LODWORD(v10) = [v10 isEqual:v11];

    if (!v10)
    {
      v13 = *(a1 + 48);
      v14 = [*(a1 + 32) identifyCharacteristic];
      if ([v13 isEqual:v14])
      {
        v15 = [*(a1 + 32) unpairedIdentifyRequested];

        if (v15)
        {
          v8 = [*(a1 + 32) unpairedIdentifyCompletionBlock];
          [*(a1 + 32) setUnpairedIdentifyCompletionBlock:0];
          if (v8)
          {
            v8[2](v8, *(a1 + 40));
          }

          v16 = [*(a1 + 32) browser];
          [v16 disconnectFromBTLEAccessoryServer:*(a1 + 32)];

          goto LABEL_10;
        }
      }

      else
      {
      }

      [*(a1 + 32) _handleHAPWriteConfirmationForCharacteristic:*(a1 + 48) error:*(a1 + 40)];
      return;
    }

    v8 = [*(a1 + 32) peripheral];
    v9 = [*(a1 + 32) pairVerifyCharacteristic];
  }

  v12 = v9;
  [v8 readValueForCharacteristic:v9];

LABEL_10:
}

void __79___HAPAccessoryServerBTLE100_peripheral_didUpdateValueForCharacteristic_error___block_invoke(id *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  [a1[4] _updateConnectionLifetimeTimer];
  if (a1[5])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = HMFGetLogIdentifier();
      v6 = a1[5];
      v5 = a1[6];
      *buf = 138543874;
      v59 = v4;
      v60 = 2112;
      v61 = v5;
      v62 = 2112;
      v63 = v6;
      _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_ERROR, "%{public}@### Reading characteristic %@ failed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed with CBT code %d", objc_msgSend(a1[5], "code")];
    v9 = [v7 errorWithHMErrorCode:54 reason:v8 underlyingError:0];
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[6];
  v11 = [a1[4] pairSetupCharacteristic];
  LODWORD(v10) = [v10 isEqual:v11];

  if (v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v14;
      v60 = 2080;
      v61 = "[_HAPAccessoryServerBTLE100 peripheral:didUpdateValueForCharacteristic:error:]_block_invoke";
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@%s: Received pair setup data", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v15 = a1[4];
    v16 = [a1[6] value];
    v17 = [a1[4] _pairSetupHAPCharacteristic];
    [v15 _notifyDelegateOfReceivedPlaintextData:v16 forCharacteristic:v17];

    v18 = a1[4];
    v19 = [a1[6] value];
    [v18 _handlePairSetupExchangeWithData:v19];
LABEL_14:

    goto LABEL_15;
  }

  v20 = a1[6];
  v21 = [a1[4] pairVerifyCharacteristic];
  LODWORD(v20) = [v20 isEqual:v21];

  if (v20)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v24;
      v60 = 2080;
      v61 = "[_HAPAccessoryServerBTLE100 peripheral:didUpdateValueForCharacteristic:error:]_block_invoke";
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_INFO, "%{public}@%s: Received pair verify data", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v25 = a1[4];
    v26 = [a1[6] value];
    v27 = [a1[4] _pairVerifyHAPCharacteristic];
    [v25 _notifyDelegateOfReceivedPlaintextData:v26 forCharacteristic:v27];

    v28 = a1[4];
    v19 = [a1[6] value];
    [v28 _handleReceivedSecuritySessionSetupExchangeData:v19];
    goto LABEL_14;
  }

  v29 = a1[6];
  v30 = [a1[4] pairingFeaturesCharacteristic];
  LODWORD(v29) = [v29 isEqual:v30];

  v31 = a1[6];
  if (v29)
  {
    v32 = [v31 value];
    v33 = objc_autoreleasePoolPush();
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543874;
      v59 = v35;
      v60 = 2080;
      v61 = "[_HAPAccessoryServerBTLE100 peripheral:didUpdateValueForCharacteristic:error:]_block_invoke";
      v62 = 2112;
      v63 = v32;
      _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_INFO, "%{public}@%s: Received pair features data %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v33);
    if ([v32 length] == 1)
    {
      *(a1[4] + 80) = *[v32 bytes];
      [a1[4] setPairingFeaturesRead:1];
    }

    [a1[4] _handlePairingStateMachine];
  }

  else
  {
    v36 = [v31 UUID];
    v37 = [MEMORY[0x277CBE0A0] UUIDWithString:@"00000051-0000-1000-8000-0026BB765291"];
    v38 = [v36 isEqual:v37];

    if (v38)
    {
      if (a1[5] || ([a1[6] value], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "length"), v43, !v44))
      {
        v39 = 0;
      }

      else
      {
        v57 = 0;
        v45 = a1[4];
        v46 = [a1[6] value];
        v56 = 0;
        v47 = [v45 _decryptData:v46 error:&v56];
        v48 = v56;

        v39 = 0;
        if ([v47 length] == 2)
        {
          [v47 getBytes:&v57 length:2];
          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v57];
        }

        v49 = objc_autoreleasePoolPush();
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          v52 = [a1[6] service];
          v53 = [v52 UUID];
          *buf = 138543874;
          v59 = v51;
          v60 = 2112;
          v61 = v39;
          v62 = 2112;
          v63 = v53;
          _os_log_impl(&dword_22AADC000, v50, OS_LOG_TYPE_INFO, "%{public}@Read Service Instance ID value: %@ for Service-UUID: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v49);
      }

      v54 = a1[4];
      v55 = [a1[6] service];
      [v54 _handleHAPServiceDiscoveryCompletionForService:v55 withInstanceId:v39];
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v42;
        v60 = 2080;
        v61 = "[_HAPAccessoryServerBTLE100 peripheral:didUpdateValueForCharacteristic:error:]_block_invoke";
        _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_INFO, "%{public}@%s: Received HAP characteristic data", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      [a1[4] _handleUpdatedValueForBTLECharacteristic:a1[6] error:v9];
    }
  }

LABEL_15:
}

void __75___HAPAccessoryServerBTLE100_peripheral_didUpdateValueForDescriptor_error___block_invoke(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  [a1[5] setMetadataValueReadCount:{objc_msgSend(a1[5], "metadataValueReadCount") - 1}];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [a1[5] identifier];
    v7 = a1[6];
    v8 = a1[4];
    *buf = 138544130;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@] didUpdateValueForDescriptor: %@ error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  v9 = a1[5];
  v10 = a1[6];
  v11 = [v10 characteristic];
  v12 = [v11 descriptors];
  v13 = [a1[6] characteristic];
  v14 = [v9 _parseBTLECharacteristicDescriptor:v10 existingDescriptors:v12 characteristics:v13];

  if ((v14 & 1) == 0)
  {
    v15 = HMErrorFromOSStatus(4294960562);

    v2 = v15;
  }

  [a1[5] _updateConnectionLifetimeTimer];
  if ((([a1[5] metadataValueReadCount] != 0) & v14) == 0)
  {
    [a1[5] _handlePairingStateMachine];
    if ([a1[5] _delegateRespondsToSelector:sel_accessoryServer_didDiscoverAccessories_transaction_error_])
    {
      v16 = [a1[5] delegateQueue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __75___HAPAccessoryServerBTLE100_peripheral_didUpdateValueForDescriptor_error___block_invoke_318;
      v17[3] = &unk_2786D7050;
      v17[4] = a1[5];
      v18 = v2;
      dispatch_async(v16, v17);
    }
  }
}

void __75___HAPAccessoryServerBTLE100_peripheral_didUpdateValueForDescriptor_error___block_invoke_318(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 accessories];
  v4 = [v3 copy];
  [v5 accessoryServer:v2 didDiscoverAccessories:v4 transaction:0 error:*(a1 + 40)];
}

void *__87___HAPAccessoryServerBTLE100_peripheral_didDiscoverDescriptorsForCharacteristic_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) identifier];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = 138544130;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@] didDiscoverDescriptorsForCharacteristic: %@, error: %@", &v9, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _updateConnectionLifetimeTimer];
  [*(a1 + 32) setMetadataDiscoveryRequestCount:{objc_msgSend(*(a1 + 32), "metadataDiscoveryRequestCount") - 1}];
  result = [*(a1 + 32) metadataDiscoveryRequestCount];
  if (!result)
  {
    return [*(a1 + 32) _handlePairingStateMachine];
  }

  return result;
}

void __84___HAPAccessoryServerBTLE100_peripheral_didDiscoverCharacteristicsForService_error___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) identifier];
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v26 = 138544130;
    v27 = v4;
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@] didDiscoverCharacteristicsForService:%@ error %@", &v26, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _updateConnectionLifetimeTimer];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) pairingService];
  LODWORD(v8) = [v8 isEqual:v9];

  if (!v8)
  {
    v18 = *(a1 + 40);
    v19 = [*(a1 + 32) accessoryInfoService];
    if ([v18 isEqual:v19])
    {
      v20 = [*(a1 + 32) state];

      if (v20 == 6)
      {
        v21 = *(a1 + 48);
        v11 = objc_autoreleasePoolPush();
        v22 = HMFGetOSLogHandle();
        v13 = v22;
        if (v21)
        {
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_8;
          }

          v14 = HMFGetLogIdentifier();
          v15 = [*(a1 + 32) identifier];
          v26 = 138543618;
          v27 = v14;
          v28 = 2112;
          v29 = v15;
          v16 = "%{public}@[BTLE Accessory Server %@] accessory info service matched with error, disconnecting";
          goto LABEL_7;
        }

        if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v23 = HMFGetLogIdentifier();
        v24 = [*(a1 + 32) identifier];
        v26 = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = v24;
        v25 = "%{public}@[BTLE Accessory Server %@] accessory service match, running state machine";
        goto LABEL_18;
      }
    }

    else
    {
    }

    [*(a1 + 32) _handleHAPCharacteristicDiscoveryForService:*(a1 + 40) error:*(a1 + 48)];
    return;
  }

  v10 = *(a1 + 48);
  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v10)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      objc_autoreleasePoolPop(v11);
      v17 = [*(a1 + 32) browser];
      [v17 disconnectFromBTLEAccessoryServer:*(a1 + 32)];

      return;
    }

    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 32) identifier];
    v26 = 138543618;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v16 = "%{public}@[BTLE Accessory Server %@] pairing service matched with error, disconnecting";
LABEL_7:
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, v16, &v26, 0x16u);

    goto LABEL_8;
  }

  if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    goto LABEL_19;
  }

  v23 = HMFGetLogIdentifier();
  v24 = [*(a1 + 32) identifier];
  v26 = 138543618;
  v27 = v23;
  v28 = 2112;
  v29 = v24;
  v25 = "%{public}@[BTLE Accessory Server %@] pairing service match, running state machine";
LABEL_18:
  _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, v25, &v26, 0x16u);

LABEL_19:
  objc_autoreleasePoolPop(v11);
  [*(a1 + 32) _handlePairingStateMachine];
}

void *__59___HAPAccessoryServerBTLE100_peripheral_didModifyServices___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    *buf = 138543874;
    v30 = v4;
    v31 = 2112;
    v32 = objc_opt_class();
    v33 = 2080;
    v34 = "[_HAPAccessoryServerBTLE100 peripheral:didModifyServices:]_block_invoke";
    v5 = v32;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%{public}@%@ %s", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    *&v8 = 138543618;
    v23 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = [*(a1 + 32) btleServiceToHAPServiceMap];
        [v13 removeObjectForKey:v12];

        v14 = objc_autoreleasePoolPush();
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          *buf = v23;
          v30 = v16;
          v31 = 2112;
          v32 = v12;
          _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Removed BTLE service: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  result = [*(a1 + 40) count];
  if (result)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 32) identifier];
      v22 = *(a1 + 40);
      *buf = 138543874;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@] Disconnecting on services changed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    return [*(a1 + 32) _handleConnectionLifetimeTimeout];
  }

  return result;
}

void __61___HAPAccessoryServerBTLE100_peripheral_didDiscoverServices___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v10 = 138543874;
    v11 = v4;
    v12 = 2112;
    v13 = objc_opt_class();
    v14 = 2080;
    v15 = "[_HAPAccessoryServerBTLE100 peripheral:didDiscoverServices:]_block_invoke";
    v5 = v13;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%{public}@%@ %s", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _updateConnectionLifetimeTimer];
  if (*(a1 + 40))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v10 = 138543874;
      v11 = v8;
      v12 = 2080;
      v13 = "[_HAPAccessoryServerBTLE100 peripheral:didDiscoverServices:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@%s: Unable to discover services with error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    [*(a1 + 32) _handlePairingStateMachine];
  }
}

void __83___HAPAccessoryServerBTLE100__notifyDelegateOfSentPlaintextData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) willSendPlaintextPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __96___HAPAccessoryServerBTLE100__notifyDelegateOfSentEncryptedAuthenticatedData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) willSendEncryptedAndAuthenticatedPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __87___HAPAccessoryServerBTLE100__notifyDelegateOfReceivedPlaintextData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) didReceivePlaintextPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __100___HAPAccessoryServerBTLE100__notifyDelegateOfReceivedEncryptedAuthenticatedData_forCharacteristic___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBTLE:*(a1 + 32) didReceiveEncryptedAndAuthenticatedPayload:*(a1 + 40) forCharacteristic:*(a1 + 48)];
}

void __92___HAPAccessoryServerBTLE100__handleHAPServiceDiscoveryCompletionForService_withInstanceId___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 accessories];
  v4 = [v3 copy];
  [v5 accessoryServer:v2 didDiscoverAccessories:v4 transaction:0 error:*(a1 + 40)];
}

void __57___HAPAccessoryServerBTLE100__handleReadDescriptorValues__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 accessories];
  v4 = [v3 copy];
  [v5 accessoryServer:v2 didDiscoverAccessories:v4 transaction:0 error:0];
}

void __51___HAPAccessoryServerBTLE100__getAttributeDatabase__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 accessories];
  v4 = [v3 copy];
  [v5 accessoryServer:v2 didDiscoverAccessories:v4 transaction:0 error:0];
}

void __49___HAPAccessoryServerBTLE100_discoverAccessories__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) identifier];
    *buf = 138543618;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Requested accessory discovery", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) isSecuritySessionOpen])
  {
    [*(a1 + 32) _getAttributeDatabase];
  }

  else
  {
    objc_initWeak(buf, *(a1 + 32));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49___HAPAccessoryServerBTLE100_discoverAccessories__block_invoke_205;
    v6[3] = &unk_2786D6D90;
    objc_copyWeak(&v7, buf);
    [*(a1 + 32) setPairVerifyCompletionBlock:v6];
    [*(a1 + 32) setMetric_pairVerifyReason:@"noSession.discovering"];
    [*(a1 + 32) _establishSecureSession];
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __49___HAPAccessoryServerBTLE100_discoverAccessories__block_invoke_205(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v5 identifier];
      *buf = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@[BTLE Accessory Server %@] Failed to complete pair-verify - error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    if (v5 && [v5 _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      v10 = [v5 delegateQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __49___HAPAccessoryServerBTLE100_discoverAccessories__block_invoke_206;
      v11[3] = &unk_2786D7050;
      v11[4] = v5;
      v12 = v3;
      dispatch_async(v10, v11);
    }
  }

  else
  {
    [WeakRetained _getAttributeDatabase];
  }
}

void __49___HAPAccessoryServerBTLE100_discoverAccessories__block_invoke_206(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:*(a1 + 40)];
}

void __64___HAPAccessoryServerBTLE100_securitySession_didCloseWithError___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [*(a1 + 40) identifier];
      v8 = *(a1 + 48);
      *buf = 138543874;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Security session did close with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) setSecuritySessionOpening:0];
    [*(a1 + 40) setSecuritySessionOpen:0];
    v9 = [*(a1 + 40) shouldRetryPVDueToAuthenticationError:*(a1 + 48)];
    v10 = *(a1 + 40);
    if (v9)
    {
      v11 = [v10 clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64___HAPAccessoryServerBTLE100_securitySession_didCloseWithError___block_invoke_204;
      block[3] = &unk_2786D6CA0;
      block[4] = *(a1 + 40);
      dispatch_async(v11, block);
    }

    else
    {
      v12 = [v10 browser];
      [v12 disconnectFromBTLEAccessoryServer:*(a1 + 40)];

      v13 = [*(a1 + 40) pairVerifyCompletionBlock];

      if (v13)
      {
        v14 = [*(a1 + 40) pairVerifyCompletionBlock];
        v14[2](v14, 0);

        [*(a1 + 40) setPairVerifyCompletionBlock:0];
      }
    }
  }
}

uint64_t __64___HAPAccessoryServerBTLE100_securitySession_didCloseWithError___block_invoke_204(uint64_t a1)
{
  [*(a1 + 32) setState:8];
  v2 = *(a1 + 32);

  return [v2 _reallyEstablishSecureSession];
}

void __53___HAPAccessoryServerBTLE100_securitySessionDidOpen___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [*(a1 + 40) identifier];
      v12 = 138543618;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Security session is open", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *(a1 + 40);
    v9 = [v8 identifier];
    [v8 associateAccessoryWithControllerKeyUsingAccessoryIdentifier:v9];

    [*(a1 + 40) setSecuritySessionOpening:0];
    [*(a1 + 40) setSecuritySessionOpen:1];
    v10 = [*(a1 + 40) pairVerifyCompletionBlock];

    if (v10)
    {
      v11 = [*(a1 + 40) pairVerifyCompletionBlock];
      v11[2](v11, 0);

      [*(a1 + 40) setPairVerifyCompletionBlock:0];
    }
  }
}

void __55___HAPAccessoryServerBTLE100_securitySessionIsOpening___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [*(a1 + 40) identifier];
      v8 = 138543618;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Security session is opening", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) setSecuritySessionOpening:1];
  }
}

void __74___HAPAccessoryServerBTLE100_securitySession_didReceiveSetupExchangeData___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [*(a1 + 40) identifier];
      v13 = 138543618;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Request to send security session setup exchange", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [*(a1 + 40) pairVerifyCharacteristic];
    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = [v9 _pairVerifyHAPCharacteristic];
      [v9 _notifyDelegateOfSentPlaintextData:v10 forCharacteristic:v11];

      [*(a1 + 40) _updateConnectionLifetimeTimer];
      v12 = [*(a1 + 40) peripheral];
      [v12 writeValue:*(a1 + 48) forCharacteristic:v8 type:0];
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:-6723 userInfo:0];
      [*(a1 + 32) receivedSetupExchangeData:0 error:v12];
    }
  }
}

void __77___HAPAccessoryServerBTLE100__handleUpdatedValueForBTLECharacteristic_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_])
  {
    v4 = [*(a1 + 32) delegateQueue];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __77___HAPAccessoryServerBTLE100__handleUpdatedValueForBTLECharacteristic_error___block_invoke_2;
    v8 = &unk_2786D7050;
    v9 = *(a1 + 32);
    v10 = v3;
    dispatch_async(v4, &v5);

    [*(a1 + 32) _updateConnectionLifetimeTimer];
  }
}

void __77___HAPAccessoryServerBTLE100__handleUpdatedValueForBTLECharacteristic_error___block_invoke_188(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void __77___HAPAccessoryServerBTLE100__handleUpdatedValueForBTLECharacteristic_error___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 accessoryServer:v3 didUpdateValuesForCharacteristics:v4 stateNumber:0 broadcast:0];
}

void __90___HAPAccessoryServerBTLE100__readCharacteristicValues_completionQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [v5 service];
    v8 = [v7 accessory];

    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v8 serverIdentifier];
      v13 = [v5 instanceID];
      v14 = [v5 type];
      v17 = 138544386;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Read response for characteristic %@/%@ with error: %@", &v17, 0x34u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = *(a1 + 32);
    [v5 instanceID];

    [v6 domain];
    [v6 code];
  }

  else
  {
    [v5 instanceID];
  }

  v16 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  [*(a1 + 40) addObject:v16];
  dispatch_group_leave(*(a1 + 48));
}

void __90___HAPAccessoryServerBTLE100__readCharacteristicValues_completionQueue_completionHandler___block_invoke_179(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) identifier];
    v6 = [*(a1 + 32) name];
    *buf = 138543874;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory %@ %@] Completed multiple read requests", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __90___HAPAccessoryServerBTLE100__readCharacteristicValues_completionQueue_completionHandler___block_invoke_180;
      v9[3] = &unk_2786D65D8;
      v11 = v8;
      v10 = *(a1 + 48);
      dispatch_async(v7, v9);
    }
  }
}

void __81___HAPAccessoryServerBTLE100_readValueForCharacteristic_queue_completionHandler___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81___HAPAccessoryServerBTLE100_readValueForCharacteristic_queue_completionHandler___block_invoke_2;
  v5[3] = &unk_2786D6678;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 56);
  [v2 _readValueForCharacteristic:v3 completionQueue:v4 completionHandler:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __81___HAPAccessoryServerBTLE100_readValueForCharacteristic_queue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [WeakRetained identifier];
    v12 = [WeakRetained name];
    v13 = [v5 value];
    v15 = 138544386;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server '%@' '%@'] Read value '%@' for characteristic %@", &v15, 0x34u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }
}

void __104___HAPAccessoryServerBTLE100_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) > 0.0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = HMFGetLogIdentifier();
      v5 = [*(a1 + 32) identifier];
      v6 = [*(a1 + 32) name];
      v7 = *(a1 + 64);
      *buf = 138544130;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory %@ %@] Request timeouts are not supported, request may not timeout within %f seconds", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v2);
  }

  objc_initWeak(buf, *(a1 + 32));
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __104___HAPAccessoryServerBTLE100_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_166;
  v11[3] = &unk_2786D6650;
  objc_copyWeak(&v13, buf);
  v12 = *(a1 + 56);
  [v8 _readCharacteristicValues:v9 completionQueue:v10 completionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __104___HAPAccessoryServerBTLE100_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_166(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v22 = a1;
  v23 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v24 = *v28;
    v25 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 error];

        if (!v12)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [WeakRetained identifier];
            v17 = [WeakRetained name];
            v18 = [v11 characteristic];
            v19 = [v18 value];
            v20 = [v11 characteristic];
            *buf = 138544386;
            v32 = v15;
            v33 = 2112;
            v34 = v16;
            v35 = 2112;
            v36 = v17;
            v37 = 2112;
            v38 = v19;
            v39 = 2112;
            v40 = v20;
            _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server '%@' '%@'] Read value '%@' for characteristic %@", buf, 0x34u);

            v9 = v24;
            v6 = v25;
          }

          objc_autoreleasePoolPop(v13);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v8);
  }

  v21 = *(v22 + 32);
  if (v21)
  {
    (*(v21 + 16))(v21, v6, v23);
  }
}

void __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@### Failed to write characteristic with error %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v10 = *(a1 + 56);
    [v5 instanceID];

    [v6 domain];
    [v6 code];
  }

  else
  {
    [v5 setValue:*(a1 + 32)];
    if ([*(a1 + 40) properties])
    {
      v11 = [*(a1 + 48) browser];
      v12 = [*(a1 + 48) identifier];
      [v11 markNotifyingCharacteristicUpdatedForIdentifier:v12];
    }

    [v5 instanceID];
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    v14 = *(a1 + 64);
    if (v14)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __106___HAPAccessoryServerBTLE100__writeValue_forCharacteristic_authorizationData_withCompletionHandler_queue___block_invoke_164;
      block[3] = &unk_2786D69E0;
      v18 = v13;
      v16 = v5;
      v17 = v6;
      dispatch_async(v14, block);
    }
  }
}

void __81___HAPAccessoryServerBTLE100__writeCharacteristicValues_queue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [v5 service];
    v8 = [v7 accessory];

    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v8 serverIdentifier];
      v13 = [v5 instanceID];
      v14 = [v5 type];
      v16 = 138544386;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Write response for characteristic %@/%@ with error: %@", &v16, 0x34u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v15 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  [*(a1 + 32) addObject:v15];
  dispatch_group_leave(*(a1 + 40));
}

void __81___HAPAccessoryServerBTLE100__writeCharacteristicValues_queue_completionHandler___block_invoke_146(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) identifier];
    v6 = [*(a1 + 32) name];
    *buf = 138543874;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory %@ %@] Completed multiple write requests", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81___HAPAccessoryServerBTLE100__writeCharacteristicValues_queue_completionHandler___block_invoke_147;
    v9[3] = &unk_2786D65D8;
    v11 = v7;
    v10 = *(a1 + 48);
    dispatch_async(v8, v9);
  }
}

uint64_t __105___HAPAccessoryServerBTLE100_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) > 0.0)
  {
    v1 = objc_autoreleasePoolPush();
    v2 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = HMFGetLogIdentifier();
      v4 = [*(a1 + 32) identifier];
      v5 = [*(a1 + 32) name];
      v6 = *(a1 + 64);
      *buf = 138544130;
      v27 = v3;
      v28 = 2112;
      v29 = v4;
      v30 = 2112;
      v31 = v5;
      v32 = 2048;
      v33 = v6;
      _os_log_impl(&dword_22AADC000, v2, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory %@ %@] Request timeouts are not supported, request may not timeout within %f seconds", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v1);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 40);
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v15 = [*(a1 + 32) identifier];
          v16 = [v11 value];
          v17 = [v11 characteristic];
          *buf = 138544130;
          v27 = v14;
          v28 = 2112;
          v29 = v15;
          v30 = 2112;
          v31 = v16;
          v32 = 2112;
          v33 = v17;
          _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory Server %@] Writing value '%@' to characteristic '%@'", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return [*(a1 + 32) _writeCharacteristicValues:*(a1 + 40) queue:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:18];
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:v3];
}

void __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_137(uint64_t a1)
{
  v6 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:54];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 accessories];
  v5 = [v4 copy];
  [v2 accessoryServer:v3 didDiscoverAccessories:v5 transaction:0 error:v6];
}

void __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_138(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void __65___HAPAccessoryServerBTLE100__handleDisconnectionWithCompletion___block_invoke_139(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  v2[2](v2, *(a1 + 40));
}

uint64_t __71___HAPAccessoryServerBTLE100_handleConnectionWithPeripheral_withError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updatePeripheral:*(a1 + 40)];
  v2 = [*(a1 + 32) peripheral];
  [v2 setDelegate:*(a1 + 32)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);

  return [v3 _handleConnectionWithError:v4];
}

void __87___HAPAccessoryServerBTLE100__handleHAPNotificationStateUpdateForCharacteristic_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];

  if (v2)
  {
    v3 = [*(a1 + 32) handler];
    (*(v3 + 2))(v3, *(a1 + 40), *(a1 + 48));
  }
}

void __89___HAPAccessoryServerBTLE100__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@### Failed to enable events on characteristic with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    [v5 setEventNotificationsEnabled:*(a1 + 48)];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89___HAPAccessoryServerBTLE100__enableEvent_forCharacteristic_withCompletionHandler_queue___block_invoke_134;
      block[3] = &unk_2786D69E0;
      v15 = v10;
      v13 = v5;
      v14 = v6;
      dispatch_async(v11, block);
    }
  }
}

void __91___HAPAccessoryServerBTLE100__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [HAPCharacteristicResponseTuple responseTupleForCharacteristic:v5 error:v6];
  if (v7)
  {
    if (v6)
    {
      v8 = [v5 service];
      v9 = [v8 accessory];

      v10 = objc_autoreleasePoolPush();
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v9 serverIdentifier];
        v14 = [v5 instanceID];
        [v5 type];
        v15 = v16 = v10;
        *buf = 138544386;
        v18 = v12;
        v19 = 2112;
        v20 = v13;
        v21 = 2112;
        v22 = v14;
        v23 = 2112;
        v24 = v15;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@[BTLE Accessory Server %@] Enable event response for characteristic %@/%@ with error: %@", buf, 0x34u);

        v10 = v16;
      }

      objc_autoreleasePoolPop(v10);
    }

    [*(a1 + 32) addObject:v7];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __91___HAPAccessoryServerBTLE100__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_110(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) identifier];
    v6 = [*(a1 + 32) name];
    *buf = 138543874;
    v18 = v4;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory %@ %@] Completed multiple enable event requests", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91___HAPAccessoryServerBTLE100__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_111;
    block[3] = &unk_2786D65D8;
    v16 = v7;
    v15 = *(a1 + 48);
    dispatch_async(v8, block);
  }

  if (*(a1 + 72) == 1)
  {
    v9 = *(a1 + 56);
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __91___HAPAccessoryServerBTLE100__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_2;
    v12[3] = &unk_2786D6560;
    v12[4] = v11;
    v13 = v9;
    [v11 _readCharacteristicValues:v13 completionQueue:v10 completionHandler:v12];
  }
}

void __91___HAPAccessoryServerBTLE100__enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 32) identifier];
    v11 = [*(a1 + 32) name];
    *buf = 138544130;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v11;
    v33 = 2048;
    v34 = [v5 count];
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@[BTLE Accessory %@ %@] Read values for %lu events enabled characteristics", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        v19 = [v18 error];

        if (!v19)
        {
          v20 = [v18 characteristic];
          [v12 addObject:v20];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  if ([v12 count] && objc_msgSend(*(a1 + 32), "_delegateRespondsToSelector:", sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_))
  {
    v21 = [*(a1 + 32) delegate];
    [v21 accessoryServer:*(a1 + 32) didUpdateValuesForCharacteristics:*(a1 + 40) stateNumber:0 broadcast:0];
  }
}

void __51___HAPAccessoryServerBTLE100_stopPairingWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStartPairingRequested:0];
  [*(a1 + 32) setDisconnecting:1];
  v2 = [*(a1 + 32) browser];
  [v2 disconnectFromBTLEAccessoryServer:*(a1 + 32)];
}

void __58___HAPAccessoryServerBTLE100_continueAuthAfterValidation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:*(a1 + 40)];
}

void __49___HAPAccessoryServerBTLE100__checkForAuthPrompt__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) requestUserPermission:0 accessoryInfo:*(a1 + 40) error:0];
}

void __49___HAPAccessoryServerBTLE100__checkForAuthPrompt__block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:18];
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:v3];
}

void __60___HAPAccessoryServerBTLE100_continuePairingAfterAuthPrompt__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unpairedIdentifyRequested];
  v3 = *(a1 + 32);
  if (v2)
  {
    if ([v3 _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      v4 = [*(a1 + 32) delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60___HAPAccessoryServerBTLE100_continuePairingAfterAuthPrompt__block_invoke_2;
      block[3] = &unk_2786D6CA0;
      block[4] = *(a1 + 32);
      dispatch_async(v4, block);
    }
  }

  else
  {

    [v3 _handlePairingStateMachine];
  }
}

void __60___HAPAccessoryServerBTLE100_continuePairingAfterAuthPrompt__block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:14];
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:v3];
}

void __54___HAPAccessoryServerBTLE100_startPairingWithRequest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPairingActivity:0];
  v2 = [*(a1 + 32) unpairedIdentifyRequested];
  v3 = *(a1 + 32);
  if (v2)
  {
    if ([v3 _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
    {
      v4 = [*(a1 + 32) delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54___HAPAccessoryServerBTLE100_startPairingWithRequest___block_invoke_2;
      block[3] = &unk_2786D6CA0;
      block[4] = *(a1 + 32);
      dispatch_async(v4, block);
    }
  }

  else
  {
    [v3 setStartPairingRequested:1];
    [*(a1 + 32) setPairingRequest:*(a1 + 40)];
    v5 = *(a1 + 32);

    [v5 _handlePairingStateMachine];
  }
}

void __54___HAPAccessoryServerBTLE100_startPairingWithRequest___block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:14];
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:v3];
}

void __83___HAPAccessoryServerBTLE100_configureCharacteristics_queue_withCompletionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Broadcast Key configuration failed" reason:@"Not supported for 1.0 accessories" suggestion:0 underlyingError:0];
    (*(*(a1 + 32) + 16))();
  }
}

void __79___HAPAccessoryServerBTLE100_generateBroadcastKey_queue_withCompletionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1 description:@"Broadcast Key configuration failed" reason:@"Not supported for 1.0 accessories" suggestion:0 underlyingError:0];
    (*(*(a1 + 32) + 16))(0.0);
  }
}

void __41___HAPAccessoryServerBTLE100_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10.receiver = *(a1 + 40);
  v10.super_class = _HAPAccessoryServerBTLE100;
  v3 = objc_msgSendSuper2(&v10, sel_description);
  [v2 appendFormat:@"%@\n", v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) peripheral];
  [v4 appendFormat:@"Peripheral: %@\n", v5];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) state];
  if ((v7 - 1) > 0xB)
  {
    v8 = @"Unknown State";
  }

  else
  {
    v8 = off_2786D6DD8[v7 - 1];
  }

  v9 = v8;
  [v6 appendFormat:@"State: %@\n", v9];
}

@end
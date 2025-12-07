void sub_10007013C(uint64_t a1)
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

void sub_100070254(uint64_t a1)
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

void sub_100070398(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%{public}@Request to send Pair Setup session setup exchange", &v7, 0xCu);
    }

    [*(a1 + 40) _handlePairSetupSessionExchangeData:*(a1 + 48)];
  }
}

void sub_100070AEC(uint64_t a1)
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

void sub_100070C2C(uint64_t a1)
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

void sub_100070D6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Request to get the pairing peer setup code", &v7, 0xCu);
    }

    [*(a1 + 40) _handlePairingSetupCodeRequestWithCompletionHandler:*(a1 + 48)];
  }
}

void sub_100070F14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Pair Setup session invalid setup code", &v7, 0xCu);
    }

    [*(a1 + 40) setBadPairSetupCode:1];
    [*(a1 + 40) setPairSetupBackoffTimeInterval:0.0];
  }
}

void sub_1000710E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) pairSetupSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = *(a1 + 48);
      v8 = 138543618;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Pair Setup session request to backoff for %g seconds", &v8, 0x16u);
    }

    [*(a1 + 40) setBadPairSetupCode:1];
    [*(a1 + 40) setPairSetupBackoffTimeInterval:*(a1 + 48)];
  }
}

void sub_1000712D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000712E8(uint64_t a1)
{
  v2 = [*(a1 + 32) protocolInfoServiceSignatureCharacteristics];
  v3 = [v2 instanceID];
  v4 = [HAPProtocolMessages constructInfoRequest:v3 outTID:*(*(a1 + 48) + 8) + 24];

  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100071428;
    v9[3] = &unk_100274488;
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
    v8 = [NSError errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }
}

void sub_100071428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);
LABEL_5:

    v4();
    return;
  }

  v5 = [HAPProtocolMessages parseInfoResponse:a3 expectedTID:*(*(*(a1 + 48) + 8) + 24) withHeader:0];
  [*(a1 + 32) setAuthenticatedProtocolInfo:v5];

  v6 = *(a1 + 32);
  v7 = [v6 authenticatedProtocolInfo];
  LODWORD(v6) = [v6 _validateProtocolInfo:v7];

  v8 = *(a1 + 32);
  if (v6)
  {
    v9 = [v8 authenticatedProtocolInfo];
    v10 = [v9 protocolVersion];
    [*(a1 + 32) setVersion:v10];

    v4 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  v11 = v8;
  v12 = sub_10007FAA0(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = sub_10007FAFC(v11);
    v14 = [*(a1 + 32) authenticatedProtocolInfo];
    v17 = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Protocol Info does not match: %@ Accessory out of compliance", &v17, 0x16u);
  }

  v15 = *(a1 + 40);
  v16 = [NSError errorWithDomain:@"HAPErrorDomain" code:7 userInfo:0];
  (*(v15 + 16))(v15, v16);
}

void sub_100071934(uint64_t a1)
{
  v1 = [*(a1 + 32) authSession];
  [v1 handleAuthExchangeData:0 withHeader:0];
}

void sub_100071AE0(uint64_t a1)
{
  [*(a1 + 32) setWaitingForAuth:0];
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
    v4 = [NSError hapErrorWithcode:16 description:@"Pairing Failed." reason:@"User cancelled pairing" suggestion:0 underlyingError:0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100071C84;
    v7[3] = &unk_100273370;
    v7[4] = *(a1 + 32);
    v8 = v4;
    v5 = v4;
    sub_100071C84(v7);
    [*(a1 + 32) _pairingCompletedWithError:v5];

    return;
  }

  v3 = *(a1 + 32);

  [v3 continuePairingAfterAuthPrompt];
}

void sub_100071C84(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [*(a1 + 40) domain];
      v6 = [*(a1 + 40) code];
      v7 = 138543874;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to authenticate accessory with error: %{key:errorDomain}@ %{key:errorCode}ld", &v7, 0x20u);
    }
  }
}

void sub_100071EF8(uint64_t a1)
{
  v2 = [*(a1 + 32) authSession];
  [v2 sendTokenUpdateRequest:*(a1 + 40)];
}

void sub_100071FD4(uint64_t a1)
{
  v2 = [*(a1 + 32) authSession];
  [v2 resetSession];

  [*(a1 + 32) setAuthenticated:1];
  [*(a1 + 32) setPairing:0];
  v3 = [*(a1 + 32) _getPairSetupType];
  v4 = [*(a1 + 32) browser];
  v5 = [v4 pairSetupSession:*(a1 + 32) pairSetupType:v3 enhancedEncryption:{objc_msgSend(*(a1 + 32), "enhancedEncryption")}];

  [*(a1 + 32) setPairSetupSession:v5];
}

void sub_1000721CC(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NSUnderlyingErrorKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v9 = v4;

  v5 = *(a1 + 32);
  if ([v9 isHAPError] && objc_msgSend(v9, "code") == 1)
  {
    v6 = [*(a1 + 32) domain];
    v7 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v6, [*(a1 + 32) code], 0);

    v5 = v7;
  }

  v8 = [*(a1 + 40) delegate];
  [v8 accessoryServer:*(a1 + 40) didStopPairingWithError:v5];
}

id sub_1000723AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100072420;
  v4[3] = &unk_1002744D8;
  v4[4] = v2;
  return [v2 _sendProtocolInfoServiceExchangeData:v1 completion:v4];
}

void sub_100072420(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = v7;
    v9 = sub_10007FAA0(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_10007FAFC(v8);
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@SW Auth failed, sending auth exchange with error: %@", buf, 0x16u);
    }

    v11 = v5;
    v12 = [v11 userInfo];
    v13 = [v12 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v14 = v11;
    if (v13)
    {
      v15 = [v11 userInfo];
      v14 = [v15 objectForKeyedSubscript:NSUnderlyingErrorKey];
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000726C4;
    v22[3] = &unk_100273370;
    v22[4] = *(a1 + 32);
    v16 = v14;
    v23 = v16;
    sub_1000726C4(v22);
    v17 = [*(a1 + 32) authSession];
    [v17 resetSession];

    if ([*(a1 + 32) _delegateRespondsToSelector:"accessoryServer:didFinishAuth:"])
    {
      v18 = [*(a1 + 32) delegateQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000727DC;
      v20[3] = &unk_100273370;
      v20[4] = *(a1 + 32);
      v21 = v11;
      dispatch_async(v18, v20);
    }
  }

  else
  {
    v19 = [v7 authSession];
    [v19 handleAuthExchangeData:v6 withHeader:0];
  }
}

void sub_1000726C4(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [*(a1 + 40) domain];
      v6 = [*(a1 + 40) code];
      v7 = 138543874;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send auth data to accessory with error: %{key:errorDomain}@ %{key:errorCode}ld", &v7, 0x20u);
    }
  }
}

void sub_1000727DC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didFinishAuth:*(a1 + 40)];
}

void sub_100072930(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 _suspendConnectionIdleTimer];
    [*(a1 + 32) setWaitingForAuth:1];
    v5 = [*(a1 + 32) delegateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100072B10;
    block[3] = &unk_100273748;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v6;
    v15 = *(a1 + 48);
    dispatch_async(v5, block);
  }

  else
  {
    v7 = v4;
    v8 = sub_10007FAA0(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement validateUUID:token1:token2:", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [NSError errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }
}

void sub_100072B10(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 authenticatedProtocolInfo];
  v6 = [v5 modelName];
  [v7 accessoryServer:v2 validateUUID:v3 token:v4 model:v6];
}

void sub_100072CB0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 delegateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100072E7C;
    block[3] = &unk_100273748;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v6;
    v15 = *(a1 + 48);
    dispatch_async(v5, block);
  }

  else
  {
    v7 = v4;
    v8 = sub_10007FAA0(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:authenticateUUID:token:", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [NSError errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }
}

void sub_100072E7C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) authenticateUUID:*(a1 + 40) token:*(a1 + 48)];
}

void sub_100072FD4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 delegateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000731A0;
    block[3] = &unk_100273748;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v6;
    v15 = *(a1 + 48);
    dispatch_async(v5, block);
  }

  else
  {
    v7 = v4;
    v8 = sub_10007FAA0(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:confirmUUID:token:)", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = [NSError errorWithDomain:@"HAPErrorDomain" code:1 userInfo:0];
    [v10 authSession:v11 authComplete:v12];
  }
}

void sub_1000731A0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) confirmUUID:*(a1 + 40) token:*(a1 + 48)];
}

void sub_1000732AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10007FAA0(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = sub_10007FAFC(v2);
    v5 = *(a1 + 40);
    *buf = 138543618;
    v22 = v4;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}@Auth Complete with status: %@", buf, 0x16u);
  }

  v6 = [*(a1 + 40) userInfo];
  v7 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (!v7)
  {
    v7 = *(a1 + 40);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100073550;
  v19[3] = &unk_100273370;
  v19[4] = *(a1 + 32);
  v8 = v7;
  v20 = v8;
  sub_100073550(v19);
  v9 = [*(a1 + 32) delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = *(a1 + 32);
  if (v10)
  {
    v12 = [v11 delegateQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100073668;
    v17[3] = &unk_100273370;
    v13 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v13;
    dispatch_async(v12, v17);
  }

  else
  {
    v14 = v11;
    v15 = sub_10007FAA0(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_10007FAFC(v14);
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement accessoryServer:didFinishAuth:", buf, 0xCu);
    }
  }
}

void sub_100073550(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingActivity];
  if (v2)
  {
    v3 = sub_10007FAA0(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10007FAFC(0);
      v5 = [*(a1 + 40) domain];
      v6 = [*(a1 + 40) code];
      v7 = 138543874;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@Authenticating accessory with error: %{key:errorDomain}@ %{key:errorCode}ld", &v7, 0x20u);
    }
  }
}

void sub_100073668(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didFinishAuth:*(a1 + 40)];
}

void sub_100073C9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Request to send security session setup exchange", &v7, 0xCu);
    }

    [*(a1 + 40) _handleSecuritySessionSetupExchangeData:*(a1 + 48)];
  }
}

void sub_100073E44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Security session is opening", &v7, 0xCu);
    }
  }
}

void sub_100073FE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) accessoryCache];
    [v4 setLastKeyBagIdentityIndexFailingPV:0];

    v5 = *(a1 + 40);
    v6 = [v5 identifier];
    [v5 associateAccessoryWithControllerKeyUsingAccessoryIdentifier:v6];

    v7 = *(a1 + 40);
    v8 = sub_10007FAA0(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = sub_10007FAFC(v7);
      v10 = [*(a1 + 32) resumeSessionID];
      v11 = 138543618;
      v12 = v9;
      v13 = 2048;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}@Security session is open with resumeSessionID %llu", &v11, 0x16u);
    }

    [*(a1 + 40) submitPairVerifyMetricWithError:0];
    [*(a1 + 40) updateResumeSessionID:{objc_msgSend(*(a1 + 32), "resumeSessionID")}];
    [*(a1 + 40) _resumeAllOperations];
  }
}

void sub_1000742BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) securitySession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = sub_10007FAA0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_10007FAFC(v4);
      v7 = *(a1 + 48);
      *buf = 138543618;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Security session did close with error: %@", buf, 0x16u);
    }

    [*(a1 + 40) submitPairVerifyMetricWithError:*(a1 + 48)];
    [*(a1 + 40) setSecuritySession:0];
    if (([*(a1 + 40) _shouldIgnoreRetryDiscoveryError:*(a1 + 48)] & 1) == 0)
    {
      v8 = [*(a1 + 40) keyBag];
      v9 = [v8 getCurrentIndexInBag];

      v10 = [*(a1 + 40) shouldRetryPVDueToAuthenticationError:*(a1 + 48)];
      v11 = *(a1 + 40);
      if (v10)
      {
        v12 = [v11 accessoryCache];
        v13 = [NSNumber numberWithInteger:v9];
        [v12 setLastKeyBagIdentityIndexFailingPV:v13];

        v14 = [*(a1 + 40) clientQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000744D8;
        block[3] = &unk_100273348;
        block[4] = *(a1 + 40);
        dispatch_async(v14, block);
      }

      else
      {
        [v11 disconnectWithCompletionHandler:0];
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

void sub_100074758(uint64_t a1)
{
  v1 = [*(a1 + 32) pairingActivity];
  if (v1)
  {
    v2 = sub_10007FAA0(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_10007FAFC(0);
      v4 = 138543874;
      v5 = v3;
      v6 = 2112;
      v7 = @"HAPErrorDomain";
      v8 = 2048;
      v9 = 24;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@Disconnecting from accessory due to connection timeout with                                             error: %{key:errorDomain}@ %{key:errorCode}ld", &v4, 0x20u);
    }
  }
}

void sub_100074970(id a1)
{
  v1 = sub_10007F9D4(@"BLEServer2x", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACC08;
  qword_1002ACC08 = v1;
}

__CFString *sub_10007685C(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_100274550[a1 - 1];
  }

  return v2;
}

uint64_t sub_1000768B4(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"uint8"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"uint16"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"uint32"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"uint64"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"int8"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"int16"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"int"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"int64"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"BOOL"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"float"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"string"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"data"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"tlv8"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"array"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"dict"])
  {
    v2 = 15;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *sub_100076ABC(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_1002745C8[a1 - 1];
  }

  return v2;
}

void sub_1000789E4(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"Characteristic is a required paramter." suggestion:0 underlyingError:0];
  (*(*(a1 + 40) + 16))();
}

void sub_100078A64(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  (*(*(a1 + 40) + 16))();
}

void sub_100078AE4(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:14 description:@"Read failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0];
  (*(*(a1 + 40) + 16))();
}

void sub_100078B64(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v11 = v5;
    v6 = [a2 firstObject];
    v7 = [v6 characteristic];
    if ([v7 isEqual:*(a1 + 32)])
    {
      v8 = [v6 error];

      if (v8)
      {
        v9 = [v6 error];
LABEL_7:
        v10 = v9;
        (*(*(a1 + 40) + 16))();

        v5 = v11;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v9 = v11;
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100078FBC(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"One or more target characteristics are required." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100079108(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100079254(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:14 description:@"Read failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000797E8(uint64_t a1)
{
  v4 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"Characteristic write request is a required paramter." suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_100079880(uint64_t a1)
{
  v4 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_100079918(uint64_t a1)
{
  v4 = [NSError hapErrorWithcode:13 description:@"Write failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_1000799B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v14 = v5;
    v6 = [a2 firstObject];
    v7 = [v6 characteristic];
    v8 = [*(a1 + 32) characteristic];
    if ([v7 isEqual:v8])
    {
      v9 = [v6 error];

      if (v9)
      {
        v10 = [v6 error];
LABEL_7:
        v11 = v10;
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) characteristic];
        (*(v12 + 16))(v12, v13, v11);

        v5 = v14;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v10 = v14;
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100079E44(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"One or more target characteristic writes are required." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100079F90(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10007A0DC(uint64_t a1)
{
  v2 = [NSError hapErrorWithcode:13 description:@"Write failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0];
  v3 = sub_10007FAA0(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_10007FAFC(0);
    v5 = [v2 domain];
    v6 = 138543874;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = [v2 code];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@%{key:errorDomain}@, %{key:errorCode}ld", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10007BF10(id a1)
{
  v1 = sub_10007F9D4(@"HAPAccessory", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACC28;
  qword_1002ACC28 = v1;
}

void sub_10007C3A0(id a1)
{
  v1 = objc_alloc_init(HAPPowerManager);
  v2 = qword_1002ACC30;
  qword_1002ACC30 = v1;
}

void sub_10007C8C0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegatesMap];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) delegatesMap];
  [v3 setObject:*(a1 + 48) forKey:*(a1 + 40)];
}

void sub_10007C9C8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegatesMap];
  [v2 removeObjectForKey:*(a1 + 40)];
}

id sub_10007CD10(uint64_t a1)
{
  HIDWORD(v3) = a1 + 536870288;
  LODWORD(v3) = a1 + 536870288;
  v2 = v3 >> 4;
  if (v2 < 0xC && ((0xA07u >> v2) & 1) != 0)
  {
    v4 = *(&off_1002746A0 + v2);
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Missing string for IOSystemMessage: 0x%X", a1];
  }

  return v4;
}

void sub_10007CDEC(id a1)
{
  v1 = sub_10007F9D4(@"HAPPowerManager", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACC48;
  qword_1002ACC48 = v1;
}

uint64_t sub_10007E584(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v3 = sub_10007FAA0(0);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v4 = sub_10007FAFC(0);
    v7 = 138543362;
    v8 = v4;
    v5 = "%{public}@### Type name is nil";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, v5, &v7, 0xCu);

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = sub_10007FAA0(0);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v4 = sub_10007FAFC(0);
    v7 = 138543362;
    v8 = v4;
    v5 = "%{public}@### Type name is not a string";
    goto LABEL_11;
  }

  if (![v1 length])
  {
    v3 = sub_10007FAA0(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = sub_10007FAFC(0);
      v7 = 138543362;
      v8 = v4;
      v5 = "%{public}@### Type name is an empty string";
      goto LABEL_11;
    }

LABEL_12:

    v2 = 0;
    goto LABEL_13;
  }

  v2 = 1;
LABEL_13:

  return v2;
}

id sub_10007E724(void *a1)
{
  v1 = a1;
  v2 = [[NSUUID alloc] initWithUUIDString:v1];
  if (v2)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-1000-8000-4D69736D6574"];
    v4 = [v2 isEqual:v3];

    if (v4)
    {
      v5 = sub_10007FAA0(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = sub_10007FAFC(0);
        *buf = 138543362;
        *&buf[4] = v6;
        v7 = "%{public}@### UUID type is using the HAP Base UUID";
        v8 = v5;
        v9 = 12;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v10 = [v2 UUIDString];
  }

  else
  {
    if ([v1 characterAtIndex:0] == 48)
    {
      v5 = sub_10007FAA0(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = sub_10007FAFC(0);
        *buf = 138543618;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v1;
        v7 = "%{public}@### UUID type %@ starts with a '0'";
        v8 = v5;
        v9 = 22;
        goto LABEL_8;
      }

LABEL_9:

      v10 = 0;
      goto LABEL_11;
    }

    memset(v30, 0, sizeof(v30));
    [v1 UTF8String];
    v12 = NormalizeUUIDString();
    if (v12)
    {
      v13 = v12;
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      memset(buf, 0, sizeof(buf));
      DebugGetErrorString();
      v5 = sub_10007FAA0(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_10007FAFC(0);
        v16 = 138544130;
        v17 = v14;
        v18 = 1024;
        v19 = v13;
        v20 = 2080;
        v21 = buf;
        v22 = 2112;
        v23 = v1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@### Error: %d(%s) creating UUID string from type: %@.", &v16, 0x26u);
      }

      goto LABEL_9;
    }

    v15 = [NSString stringWithUTF8String:v30];
    v10 = [v15 uppercaseString];
  }

LABEL_11:

  return v10;
}

uint64_t sub_10007EA14(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v1 doubleValue];
      v3 = floor(v2);
      [v1 doubleValue];
      if (v3 == ceil(v4))
      {
        if ([v1 unsignedLongLongValue])
        {
          v8 = 1;
          goto LABEL_12;
        }

        v5 = sub_10007FAA0(0);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = sub_10007FAFC(0);
          v10 = 138543362;
          v11 = v6;
          v7 = "%{public}@### instance ID is not > 0";
          goto LABEL_10;
        }
      }

      else
      {
        v5 = sub_10007FAA0(0);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = sub_10007FAFC(0);
          v10 = 138543362;
          v11 = v6;
          v7 = "%{public}@### instance ID is not an integer";
LABEL_10:
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v7, &v10, 0xCu);
        }
      }
    }

    else
    {
      v5 = sub_10007FAA0(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = sub_10007FAFC(0);
        v10 = 138543362;
        v11 = v6;
        v7 = "%{public}@### instance ID is not a number";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v5 = sub_10007FAA0(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_10007FAFC(0);
      v10 = 138543362;
      v11 = v6;
      v7 = "%{public}@### nil instance ID";
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

uint64_t sub_10007EC2C(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqualToString:a2] ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007EC60(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 1;
    if (v3 && v4)
    {
      if (CFNumberIsFloatType(v3) || CFNumberIsFloatType(v5))
      {
        [v3 floatValue];
        v8 = v7;
        [v5 floatValue];
        v6 = vabds_f32(v8, v9) >= 0.00000011921;
      }

      else
      {
        v6 = [v3 isEqualToNumber:v5] ^ 1;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_10007ED18(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqualToArray:a2] ^ 1;
  }

  else
  {
    return 0;
  }
}

os_log_t sub_10007F9D4(void *a1, id a2)
{
  v4 = a2;
  v5 = a1;
  v6 = [a2 UTF8String];
  v7 = [v5 UTF8String];

  v8 = os_log_create(v6, v7);

  return v8;
}

os_log_t sub_10007FA4C()
{
  v0 = os_log_create([@"com.apple.dockaccessoryd" UTF8String], objc_msgSend(@"HAP", "UTF8String"));

  return v0;
}

id sub_10007FAA0(uint64_t a1)
{
  v1 = objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [v1 logCategory];
  }

  else
  {
    sub_10007FA4C();
  }
  v2 = ;

  return v2;
}

__CFString *sub_10007FAFC(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 logIdentifier];
    v3 = [NSString stringWithFormat:@"[%@] ", v2];
  }

  else
  {
    v3 = &stru_10027BDA0;
  }

  return v3;
}

DKMInterval *__cdecl sub_1000823E4(id a1, NSNumber *a2, NSNumber *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[DKMInterval positiveInfinityEnd];
  v7 = [(NSNumber *)v4 isEqual:v6];

  if (v7)
  {
    [DKMInterval openOpenIntervalFromStart:v5 toEnd:v4];
  }

  else
  {
    [DKMInterval openClosedIntervalFromStart:v5 toEnd:v4];
  }
  v8 = ;

  return v8;
}

__CFString *HAPCharacteristicValueTransitionTypesAsString(unint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPCharacteristicValueTransitionTypeLinear";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPCharacteristicValueTransitionTypeLinearDerived";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

void sub_1000852C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = sub_10007FAA0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543618;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to send hello control message (%@)", &v7, 0x16u);
    }
  }
}

void sub_1000854E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = sub_10007FAA0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_10007FAFC(v4);
      v7 = 138543618;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to send version control message (%@)", &v7, 0x16u);
    }
  }
}

__CFString *HAPCharacteristicValueTransitionEndBehaviorAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HAPCharacteristicValueTransitionEndBehaviorLoop";
    }

    else
    {
      v2 = [NSString stringWithFormat:@"Unknown HAPCharacteristicValueTransitionEndBehavior %ld", a1];
    }
  }

  else
  {
    v2 = @"HAPCharacteristicValueTransitionEndBehaviorNoChange";
  }

  return v2;
}

__CFString *HAPCharacteristicValueTransitionLinearStartConditionAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [NSString stringWithFormat:@"Unknown HAPCharacteristicValueTransitionLinearStartCondition %ld", a1];
  }

  else
  {
    v2 = off_100274978[a1];
  }

  return v2;
}

__CFString *HAPFirmwareUpdateStateAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [NSString stringWithFormat:@"Unknown HAPFirmwareUpdateState %ld", a1];
  }

  else
  {
    v2 = off_100274990[a1];
  }

  return v2;
}

void sub_100086574(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_100086674(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_100088068(uint64_t a1, void *a2)
{
  v5 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  v4 = v5;
  if (!v5 && *(a1 + 56) == 1)
  {
    [*(a1 + 40) disconnect];
    [*(a1 + 40) refreshKeyBag];
    v4 = 0;
  }
}

void sub_1000887BC(uint64_t a1)
{
  v2 = [*(a1 + 32) internalDelegates];
  [v2 addObject:*(a1 + 40)];
}

void sub_1000888C4(uint64_t a1)
{
  v2 = [*(a1 + 32) internalDelegates];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1000889CC(uint64_t a1)
{
  v15 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) internalDelegates];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_initWeak(&location, *(*(&v10 + 1) + 8 * v5));
        if ((v15 & 1) == 0)
        {
          v6 = objc_loadWeakRetained(&location);
          v7 = v6 == 0;

          if (!v7)
          {
            v8 = *(a1 + 40);
            v9 = objc_loadWeakRetained(&location);
            (*(v8 + 16))(v8, v9, &v15);
          }
        }

        objc_destroyWeak(&location);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v3);
  }
}

id sub_100088B40(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];

  TLV8Get();

  return 0;
}

__CFString *HAPDiagnosticsSnapshotAudioAsString(unint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPDiagnosticsSnapshotAudioAudioRecording";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPDiagnosticsSnapshotAudioAudioClips";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

__CFString *HAPDiagnosticsSnapshotOptionsAsString(unint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPDiagnosticsSnapshotOptionDelay";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPDiagnosticsSnapshotOptionConfigurableMaxSize";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

__CFString *HAPDiagnosticsSnapshotTypeAsString(unint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = 1;
  v4 = a1;
  do
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      v5 = @"HAPDiagnosticsSnapshotTypeManufacturerSnapshot";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_9;
      }

      v5 = @"HAPDiagnosticsSnapshotTypeADKSnapshot";
    }

    v4 &= ~v3;
    [v2 addObject:v5];
LABEL_9:
    v3 *= 2;
  }

  while (v3 - 1 < a1);
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"Unknown options %lu", v4];
    [v2 addObject:v6];
  }

LABEL_12:
  if ([v2 count])
  {
    v7 = [v2 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

DataStream *__cdecl sub_10008B324(id a1, DataStreamTransport *a2, HAPSecuritySessionEncryption *a3, OS_dispatch_queue *a4, NSString *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [[DataStream alloc] initWithTransport:v11 sessionEncryption:v10 workQueue:v9 logIdentifier:v8];

  return v12;
}

id sub_10008B5E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10008B650;
  v3[3] = &unk_1002736F8;
  v3[4] = v1;
  return [v1 _readRequiredTransportCharacteristicsIfNeededWithCompletion:v3];
}

void sub_10008B650(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (v4)
  {
    v7 = v6;
    v8 = sub_10007FAA0(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      v10 = [*(a1 + 32) accessory];
      v11 = [v10 identifier];
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to read the required transport characteristics for: %@ with error: %@", &v12, 0x20u);
    }
  }

  else
  {
    [v6 _handleAccessoryConnected];
  }
}

void sub_10008B7FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (v4)
  {
    v7 = v6;
    v8 = sub_10007FAA0(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_10007FAFC(v7);
      v10 = [*(a1 + 32) accessory];
      v11 = [v10 identifier];
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to read the required transport characteristics for: %@ with error: %@", &v12, 0x20u);
    }
  }

  else
  {
    [v6 _handleAccessoryConnected];
  }
}

void sub_10008C3B0(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [*(a1 + 40) accessory];
  v6 = [v4 isEqual:v5];

  v7 = *(a1 + 40);
  v8 = sub_10007FAA0(v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_10007FAFC(v7);
      v11 = [v4 shortDescription];
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory with HDS service is no longer connected: %@. Removing any transports that were active", &v15, 0x16u);
    }

    v12 = *(a1 + 40);
    v7 = [NSError dkErrorWithCode:30];
    [v12 _cancelStreamTransportWithError:v7];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(v7);
      v14 = [*(a1 + 40) accessory];
      v15 = 138543874;
      v16 = v13;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Disconnected accessory: %@ did not match self.accessory :%@", &v15, 0x20u);
    }
  }
}

void sub_10008CF00(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultDataStream];

  if (v2 || ([*(a1 + 32) _initiateStreamSetup], objc_msgSend(*(a1 + 32), "setupInProgress"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 32) pendingSocketRequests];
    v5 = [[DKPendingSocketRequest alloc] initWithApplicationProtocolName:*(a1 + 40) completion:*(a1 + 48)];
    [v4 addObject:v5];

    v6 = [*(a1 + 32) setupInProgress];

    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = v7;
      v9 = sub_10007FAA0(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = sub_10007FAFC(v8);
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Waiting for DataStream setup before processing stream socket request", buf, 0xCu);
      }
    }

    else
    {

      [v7 _processPendingSocketRequests];
    }
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = [NSError dkErrorWithCode:4];
    (*(v11 + 16))(v11, 0);
  }
}

void sub_10008E70C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[DataStreamBulkSendProtocol protocolName];
  v4 = [v2 _getActiveProtocolWithName:v3];

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 openSessionForFileType:*(a1 + 40) reason:*(a1 + 48) metadata:*(a1 + 56) queue:*(a1 + 64) callback:*(a1 + 72)];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = sub_10007FAA0(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = sub_10007FAFC(v8);
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@DataStreamBulkSendProtocol not registered; cannot start bulk send session", &v12, 0xCu);
    }

    v11 = [NSError dkErrorWithCode:1];
    (*(*(a1 + 72) + 16))();
  }
}

void sub_10008E928(uint64_t a1)
{
  v2 = [NSError errorWithDomain:HMFErrorDomain code:2 userInfo:&off_100282550];
  [*(a1 + 32) _cancelStreamTransportWithError:v2];
}

void sub_10009172C(id a1)
{
  v1 = sub_10007F9D4(@"HAPKeyBag", @"com.apple.dockaccessoryd");
  v2 = qword_1002ACC68;
  qword_1002ACC68 = v1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v115 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v117 = &v114 - v8;
  v9 = __chkstk_darwin(v7);
  v116 = &v114 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v114 - v12;
  v14 = __chkstk_darwin(v11);
  v114 = &v114 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v114 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v114 - v20;
  qword_1002B1970 = 0x302E303233;
  *algn_1002B1978 = 0xE500000000000000;
  sub_100093D84(v19, qword_1002A6690);
  v22 = sub_100093DE8(v3, qword_1002A6690);
  v118 = "";
  Logger.init(subsystem:category:)();
  type metadata accessor for DockCoreManager();
  v23 = static DockCoreManager.debugAllowed.getter() & 1;
  byte_1002B1980 = v23;
  v25 = type metadata accessor for ServiceDelegate(0, v24);
  v26 = objc_allocWithZone(v25);
  v26[OBJC_IVAR____TtC14dockaccessoryd15ServiceDelegate_debugAllowed] = v23;
  v122.receiver = v26;
  v122.super_class = v25;
  qword_1002B1988 = objc_msgSendSuper2(&v122, "init");
  qword_1002B1990 = 0;
  if (byte_1002B1980 != 1)
  {
    v30 = v4;
    v121 = *(v4 + 16);
    v121(v18, v22, v3);
    v31 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v31, v34))
    {
      goto LABEL_8;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v31, v34, "dockaccesoryd: debug not allowed", v35, 2u);
    goto LABEL_6;
  }

  v28 = [objc_allocWithZone(type metadata accessor for DebugServiceDelegate(0 v27))];
  v29 = qword_1002B1990;
  qword_1002B1990 = v28;

  v30 = v4;
  v121 = *(v4 + 16);
  v121(v21, v22, v3);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "dockaccesoryd: debug allowed, creating debug port", v33, 2u);
    v18 = v21;
LABEL_6:

    goto LABEL_8;
  }

  v18 = v21;
LABEL_8:

  v120 = *(v30 + 8);
  v120(v18, v3);
  qword_1002B1998 = [objc_allocWithZone(type metadata accessor for PairingServiceDelegate(0 v36))];
  qword_1002B19A0 = [objc_allocWithZone(type metadata accessor for CertificationServiceDelegate(0 v37))];
  qword_1002B19A8 = [objc_allocWithZone(type metadata accessor for CameraCaptureServiceDelegate(0 v38))];
  v39 = type metadata accessor for DockKitFeatures();
  v126 = v39;
  v127 = sub_100095854(&qword_1002A6808, &type metadata accessor for DockKitFeatures, &protocol conformance descriptor for DockKitFeatures);
  v40 = sub_100093E20(&aBlock);
  (*(*(v39 - 8) + 104))(v40, enum case for DockKitFeatures.Daemon(_:), v39);
  LOBYTE(v39) = isFeatureEnabled(_:)();
  sub_100095808(&aBlock);
  v119 = v30 + 8;
  if ((v39 & 1) == 0)
  {
    v121(v114, v22, v3);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "dockaccessoryd: daemon features disabled", v113, 2u);
    }

    v120(v114, v3);
    exit(-1);
  }

  v41 = v13;
  v121(v13, v22, v3);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136315138;
    v47 = qword_1002B1970;
    v46 = *algn_1002B1978;

    v48 = sub_1000952D4(v47, v46, &aBlock);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "dockaccessoryd: starting up, dockaccessoryd version %s", v44, 0xCu);
    sub_100095808(v45);
  }

  v49 = v120;
  v120(v41, v3);
  v50 = v116;
  v51 = v22;
  v121(v116, v22, v3);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = v50;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_1000952D4(0x302E303233, 0xE500000000000000, &aBlock);
    _os_log_impl(&_mh_execute_header, v52, v53, "dockkit core version: %s", v55, 0xCu);
    sub_100095808(v56);
    v49 = v120;

    v57 = v54;
  }

  else
  {

    v57 = v50;
  }

  v49(v57, v3);
  if (qword_1002A6710 != -1)
  {
    swift_once();
  }

  v58 = sub_100151CB0();

  if (v58)
  {
    v121(v117, v51, v3);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Database path exists - checking if we need to migrate data", v61, 2u);
    }

    v49(v117, v3);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v64 = sub_1000FF338(v62, v63);

    if (v64)
    {
      v121(v115, v51, v3);
      v65 = v64;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *v68 = 138412290;
        *(v68 + 4) = v65;
        *v69 = v64;
        v70 = v65;
        _os_log_impl(&_mh_execute_header, v66, v67, "FAILED data migration: %@", v68, 0xCu);
        sub_100095C84(v69, &unk_1002A6F60, &unk_10023C4E0);
        v49 = v120;
      }

      else
      {
        v70 = v66;
        v66 = v65;
      }

      v49(v115, v3);
    }
  }

  v71 = objc_allocWithZone(NSXPCListener);
  v72 = String._bridgeToObjectiveC()();
  v73 = [v71 initWithMachServiceName:v72];

  qword_1002B19B0 = v73;
  [v73 setDelegate:qword_1002B1988];
  v74 = objc_allocWithZone(NSXPCListener);
  v75 = String._bridgeToObjectiveC()();
  v76 = [v74 initWithMachServiceName:v75];

  qword_1002B19B8 = v76;
  [v76 setDelegate:qword_1002B1998];
  v77 = objc_allocWithZone(NSXPCListener);
  v78 = String._bridgeToObjectiveC()();
  v79 = [v77 initWithMachServiceName:v78];

  qword_1002B19C0 = v79;
  [v79 setDelegate:qword_1002B19A0];
  v80 = objc_allocWithZone(NSXPCListener);
  v81 = String._bridgeToObjectiveC()();
  v82 = [v80 initWithMachServiceName:v81];

  qword_1002B19C8 = v82;
  [v82 setDelegate:qword_1002B19A8];
  qword_1002B19D0 = 0;
  if (byte_1002B1980 == 1)
  {
    v83 = objc_allocWithZone(NSXPCListener);
    v84 = String._bridgeToObjectiveC()();
    v85 = [v83 initWithMachServiceName:v84];

    v86 = qword_1002B19D0;
    qword_1002B19D0 = v85;

    if (qword_1002B19D0)
    {
      [qword_1002B19D0 setDelegate:qword_1002B1990];
    }
  }

  if (qword_1002A67A0 != -1)
  {
    swift_once();
  }

  v87 = qword_1002B1EB8;
  v88 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan);
  if (v88)
  {
    v89 = qword_1002A6780;

    if (v89 != -1)
    {
      swift_once();
    }

    v90 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v126 = type metadata accessor for AccessoryManager(0);
    v127 = &off_100276690;
    aBlock = v90;
    swift_beginAccess();
    v91 = v90;
    sub_100095204(&aBlock, v88 + 80);
    swift_endAccess();

    v87 = qword_1002B1EB8;
    if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
    {

      sub_1000F2E4C(1);

      v87 = qword_1002B1EB8;
    }
  }

  v92 = *(v87 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue);
  v127 = sub_10009282C;
  v128 = 0;
  aBlock = _NSConcreteStackBlock;
  v124 = 1107296256;
  v125 = sub_100092A98;
  v126 = &unk_1002750C0;
  v93 = _Block_copy(&aBlock);
  v94 = v92;
  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", v94, v93);
  _Block_release(v93);

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v95 = *(*(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue);
  v127 = sub_100092AF8;
  v128 = 0;
  aBlock = _NSConcreteStackBlock;
  v124 = 1107296256;
  v125 = sub_100092A98;
  v126 = &unk_1002750E8;
  v96 = _Block_copy(&aBlock);
  v97 = v95;
  xpc_set_event_stream_handler("com.apple.dockaccessoryd.pairsetup", v97, v96);
  _Block_release(v96);

  v98 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_keystore);
  aBlock = 0;
  v99 = [v98 getOrCreateLocalPairingIdentity:&aBlock];
  if (v99)
  {
    v100 = v99;
    v101 = aBlock;
  }

  else
  {
    v102 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1002A66F0 != -1)
  {
    swift_once();
  }

  qword_1002B19D8 = qword_1002B1B98;
  v103 = *(qword_1002B1B98 + 24);

  if (v103)
  {
    sub_100138758(v104, v105);
  }

  else
  {
    v106 = sub_100138F54(v104, v105);
    v108 = sub_100138758(v106, v107);
    sub_1001396D0(v108, v109);
  }

  qword_1002B19E0 = sub_1000935EC();
  if (qword_1002B19D0)
  {
    [qword_1002B19D0 resume];
  }

  [qword_1002B19B0 resume];
  [qword_1002B19B8 resume];
  [qword_1002B19C0 resume];
  [qword_1002B19C8 resume];
  CFRunLoopRun();
  return 0;
}

const char *sub_10009282C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100093DE8(v6, &unk_1002A6690);
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v11 = String.init(cString:)();
    v13 = v12;
    v14 = v11 == 0xD000000000000010 && 0x800000010022E8B0 == v12;
    if (v14 || (v15 = v11, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
    }

    else
    {
      (*(v5 + 16))(v8, v9, v4);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v22 = v19;
        *v18 = 136315138;
        v20 = sub_1000952D4(v15, v13, &v22);

        *(v18 + 4) = v20;
        sub_100095808(v19);
      }

      else
      {
      }

      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

uint64_t sub_100092A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

const char *sub_100092AF8(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v59 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  __chkstk_darwin(v5 - 8);
  v63 = v55 - v6;
  v66 = type metadata accessor for URL();
  v64 = *(v66 - 8);
  v7 = __chkstk_darwin(v66);
  v56 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[1] = v8;
  __chkstk_darwin(v7);
  v65 = v55 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v55 - v16;
  v18 = sub_100093DE8(v15, &unk_1002A6690);
  v20 = v11 + 16;
  v19 = *(v11 + 16);
  v19(v17, v18, v10);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v55[0] = v19;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "NFC XPC event!", v23, 2u);
    v19 = v55[0];
  }

  v24 = *(v11 + 8);
  v24(v17, v10);
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v19(v14, v18, v10);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v55[0] = v24;
      v29 = v28;
      v30 = a1;
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v29 = 136315138;
      v32 = String.init(cString:)();
      v20 = sub_1000952D4(v32, v33, &aBlock);

      *(v29 + 4) = v20;
      sub_100095808(v31);
      a1 = v30;

      (v55[0])(v14, v10);
    }

    else
    {

      v24(v14, v10);
    }

    v74 = sub_1001F29A8(_swiftEmptyArrayStorage);
    type = xpc_get_type(a1);
    if (type != XPC_TYPE_DICTIONARY.getter())
    {
    }

    v35 = swift_allocObject();
    *(v35 + 16) = &v74;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_100095C40;
    *(v36 + 24) = v35;
    v72 = sub_100095C58;
    v73 = v36;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_100093594;
    v71 = &unk_1002753F8;
    v37 = _Block_copy(&aBlock);
    v38 = v73;

    xpc_dictionary_apply(a1, v37);
    _Block_release(v37);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
    }

    else
    {
      if (!*(v74 + 16))
      {
        goto LABEL_19;
      }

      sub_10016D4D0(7107189, 0xE300000000000000);
      if ((v39 & 1) == 0)
      {
        goto LABEL_19;
      }

      v40 = v63;
      URL.init(string:)();

      v36 = v64;
      v20 = v66;
      if ((*(v64 + 48))(v40, 1, v66) == 1)
      {
        sub_100095C84(v40, &qword_1002A6B70, &unk_10023C9C0);
LABEL_19:
      }

      v38 = *(v36 + 32);
      v38(v65, v40, v20);
      if (qword_1002A67A0 == -1)
      {
LABEL_14:
        if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
        {

          sub_1000F2E4C(5);
        }

        v63 = v35;
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v41 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v42 = *&v41[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
        v43 = v56;
        (*(v36 + 16))(v56, v65, v20);
        v44 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        v45 = swift_allocObject();
        v46 = v20;
        v47 = v36;
        v48 = v45;
        *(v45 + 16) = v41;
        v38((v45 + v44), v43, v46);
        v72 = sub_100095DA8;
        v73 = v48;
        aBlock = _NSConcreteStackBlock;
        v69 = 1107296256;
        v70 = sub_100147FC8;
        v71 = &unk_100275448;
        v49 = _Block_copy(&aBlock);
        v50 = v41;
        v51 = v42;
        v52 = v57;
        static DispatchQoS.unspecified.getter();
        v67 = _swiftEmptyArrayStorage;
        sub_100095854(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
        v53 = v59;
        v54 = v62;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v49);

        (*(v61 + 8))(v53, v54);
        (*(v58 + 8))(v52, v60);
        (*(v47 + 8))(v65, v66);

        goto LABEL_19;
      }
    }

    swift_once();
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1000934C4(uint64_t a1, xpc_object_t object, uint64_t *a3)
{
  type = xpc_get_type(object);
  if (type == XPC_TYPE_STRING.getter() && xpc_string_get_string_ptr(object))
  {
    v6 = String.init(cString:)();
    v8 = v7;
    v9 = String.init(cString:)();
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a3;
    *a3 = 0x8000000000000000;
    sub_1001EB3C8(v9, v11, v6, v8, isUniquelyReferenced_nonNull_native);

    *a3 = v14;
  }

  return 1;
}

uint64_t sub_100093594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_1000935EC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = SIG_IGN.getter();
  signal(15, v8);
  sub_100095B94(0, &unk_1002A6B50, OS_dispatch_source_ptr);
  sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  aBlock[4] = sub_100093864;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100275380;
  v11 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100093A00();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v11);
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  OS_dispatch_source.resume()();
  return v10;
}

uint64_t sub_100093864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100093DE8(v5, &unk_1002A6690);
  (*(v4 + 16))(v7, v8, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Asked to terminate, cleaning up transactions", v11, 2u);
  }

  v12 = (*(v4 + 8))(v7, v3);
  if (qword_1002A6780 != -1)
  {
    v12 = swift_once();
  }

  sub_1001926C4(v12, v13);
  sub_10019AE80();
  return sub_100185C54(v14, v15);
}

uint64_t sub_100093A00()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100095854(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t variable initialization expression of AppLayoutMonitor.delegateQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_100095854(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t *sub_100093D84(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100093DE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100093E20(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

double variable initialization expression of MotionValidator._startupConstants@<D0>(uint64_t a1@<X8>)
{
  sub_100095274(&unk_1002A6840, &unk_10023E5A0);
  v2 = swift_allocObject();
  v2[1] = xmmword_10023AAC0;
  v2[2] = xmmword_10023AAD0;
  v2[3] = xmmword_10023AAE0;
  *a1 = xmmword_10023AAF0;
  *(a1 + 16) = 0x3FC3333333333333;
  *(a1 + 24) = 5;
  *(a1 + 32) = 0x3FC3333333333333;
  *(a1 + 40) = v2;
  result = 0.1;
  *(a1 + 48) = xmmword_10023AB00;
  return result;
}

uint64_t variable initialization expression of DockDetector.dockStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DockStatus.Undocked(_:);
  v3 = type metadata accessor for DockStatus();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t variable initialization expression of DeviceLockMonitor.lock()
{
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of DeviceLockMonitor.delegateQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_100095854(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

_DWORD *sub_10009436C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_10009437C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_100094470(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000944E4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10009455C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000945DC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100094628(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_1000946A8(uint64_t a1)
{
  sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError, &unk_10023BC2C);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_100094714(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError, &unk_10023BC2C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100094780(void *a1, uint64_t a2)
{
  v4 = sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError, &unk_10023BC2C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100094834(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError, &unk_10023BC2C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000948B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100094914@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100094940(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D80, type metadata accessor for FileAttributeKey, &unk_10023BBA8);
  v3 = sub_100095854(&qword_1002A6D88, type metadata accessor for FileAttributeKey, &unk_10023B5E0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000949FC(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D70, type metadata accessor for DeviceType, &unk_10023B7C0);
  v3 = sub_100095854(&qword_1002A6D78, type metadata accessor for DeviceType, &unk_10023B760);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094AB8(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D60, type metadata accessor for ObjectType, &unk_10023B918);
  v3 = sub_100095854(&qword_1002A6D68, type metadata accessor for ObjectType, &unk_10023B8B8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094B74(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D50, type metadata accessor for URLResourceKey, &unk_10023BB18);
  v3 = sub_100095854(&qword_1002A6D58, type metadata accessor for URLResourceKey, &unk_10023BAB8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094C30(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6DB0, type metadata accessor for Key, &unk_10023BBEC);
  v3 = sub_100095854(&qword_1002A6DB8, type metadata accessor for Key, &unk_10023B24C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094CEC(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6DA0, type metadata accessor for EventType, &unk_10023B3A4);
  v3 = sub_100095854(&qword_1002A6DA8, type metadata accessor for EventType, &unk_10023B34C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094DA8@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100094DF0(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D90, type metadata accessor for ID, &unk_10023B4E4);
  v3 = sub_100095854(&qword_1002A6D98, type metadata accessor for ID, &unk_10023B48C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100094EAC(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D10, type metadata accessor for MFAAError, &unk_10023B1AC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100094F18(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D10, type metadata accessor for MFAAError, &unk_10023B1AC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100094F88(uint64_t a1)
{
  v2 = sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError, &unk_10023BC2C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100094FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100095854(&qword_1002A6D48, type metadata accessor for MFAAError, &unk_10023BC2C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100095078()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000950B4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100095108()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_10009517C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100095204(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A6810, &unk_10023AB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100095274(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000952BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000952D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000953A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100095B34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100095808(v11);
  return v7;
}

unint64_t sub_1000953A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000954AC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id *sub_1000954AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000954F8(a1, a2);
  sub_100095628(&off_100274B80);
  return v3;
}

id *sub_1000954F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1001F7A30();
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy((v6 + 32), v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy((v7 + 32), v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1001F7A30();
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100095628(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100095714(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id *sub_100095714(id *result, int64_t a2, char a3, id *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100095808(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100095854(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009589C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Angle2DStamped(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Angle2DStamped(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Angle2DStamped(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100095968(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100095988(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100095A48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100095A68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100095B34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100095B94(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100095BDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10009589C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100095C84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100095274(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100095CE4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100095F10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 sub_100095F40(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100095F4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100095F6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_100095FAC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000967D8()
{
  result = qword_1002A6D38;
  if (!qword_1002A6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A6D38);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Angle2D(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for JarvisEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JarvisEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100096938(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000969EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  sub_100093D84(v3, qword_1002A6EA0);
  sub_100093DE8(v3, qword_1002A6EA0);
  return Logger.init(subsystem:category:)();
}

id sub_100096A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger;
  Logger.init(subsystem:category:)();
  v10 = &v4[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy];
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateTimer] = 0;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_MANUAL_FWUP_TIMEOUT] = 0x408F400000000000;
  (*(v6 + 16))(v8, &v4[v9], v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "cert interface open", v13, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v14 = type metadata accessor for dockCertHandler(0);
  v16.receiver = v4;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_100096C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v13;
  *(v8 + 64) = v15;
  *(v8 + 184) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for Errors();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 96) = v10;
  *(v8 + 104) = *(v10 - 8);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();

  return (_swift_task_switch)(sub_100096DE0, 0, 0);
}

uint64_t sub_100096DE0()
{
  sub_1000A470C();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100096E78;

  return sub_1000F77BC(v1, v2);
}

uint64_t sub_100096E78()
{

  return (_swift_task_switch)(sub_100096F74, 0, 0);
}

uint64_t sub_100096F74(uint64_t a1, uint64_t a2)
{
  v3 = *(v2[2] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager);
  v2[17] = v3;
  if (v3)
  {
    type metadata accessor for AccessoryDiagnosticsOptions(0, a2);
    swift_allocObject();

    v5 = sub_100106520(v4);
    v2[18] = v5;
    v6 = swift_task_alloc();
    v2[19] = v6;
    *v6 = v2;
    v6[1] = sub_100097290;

    return sub_1000C7C54(v5, v7);
  }

  else
  {
    (*(v2[13] + 16))(v2[15], v2[3] + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v2[12]);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Diagnostics manager is nil", v11, 2u);
    }

    v12 = v2[15];
    v13 = v2[12];
    v14 = v2[13];
    v16 = v2[10];
    v15 = v2[11];
    v17 = v2[9];
    v18 = v2[4];

    (*(v14 + 8))(v12, v13);
    *v15 = 0xD00000000000001ALL;
    v15[1] = 0x800000010022F210;
    (*(v16 + 104))(v15, enum case for Errors.NotFound(_:), v17);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v16 + 16))(v19, v15, v17);
    v20 = _convertErrorToNSError(_:)();
    v18(0xFFFFFFFFLL, v20);

    (*(v16 + 8))(v15, v17);

    v21 = v2[1];

    return v21();
  }
}

uint64_t sub_100097290(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v7 = sub_1000974A8;
  }

  else
  {
    *(v6 + 168) = a2;
    *(v6 + 176) = a1;
    v7 = sub_1000973C4;
  }

  return (_swift_task_switch)(v7, 0, 0);
}

uint64_t sub_1000973C4()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = String._bridgeToObjectiveC()();

  [v3 diagnosticsFeedbackWithProcessID:v1 info:v2 path:v4 err:0];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000974A8()
{
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 24) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 96));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Diagnostics transfer failed: %@", v3, 0xCu);
    sub_100095C84(v4, &unk_1002A6F60, &unk_10023C4E0);
  }

  v6 = v1;
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  v10 = *(v0 + 184);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);

  (*(v7 + 8))(v8, v9);
  v13 = _convertErrorToNSError(_:)();
  [v12 diagnosticsFeedbackWithProcessID:v10 info:v11 path:0 err:v13];

  v14 = *(v0 + 8);

  return v14();
}

void sub_100097794(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy);
    v3 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy + 8);
    v4 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy + 16);
    v5 = Strong;
    sub_10009ABF8(v2, v3);

    if (v2)
    {
      swift_unknownObjectRetain();
      v6 = String._bridgeToObjectiveC()();
      sub_1000A1168();
      swift_allocError();
      *v7 = 0xD000000000000020;
      *(v7 + 8) = 0x800000010022F290;
      *(v7 + 16) = 7;
      v8 = _convertErrorToNSError(_:)();

      [v2 fwUpdateFeedbackWithProcessID:v4 info:v3 message:v6 complete:1 err:v8];

      swift_unknownObjectRelease_n();
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy;
    v12 = *(v9 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy);
    v11 = *(v9 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy + 8);
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    v13 = v9;
    sub_10009ABB8(v12, v11);
  }
}

uint64_t sub_1000979F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 336) = a6;
  *(v6 + 216) = a4;
  *(v6 + 224) = a5;
  *(v6 + 200) = a2;
  *(v6 + 208) = a3;
  v7 = type metadata accessor for UUID();
  *(v6 + 232) = v7;
  *(v6 + 240) = *(v7 - 8);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v6 + 264) = v8;
  *(v6 + 272) = *(v8 - 8);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();

  return (_swift_task_switch)(sub_100097B44, 0, 0);
}

uint64_t sub_100097B44()
{
  v66 = v0;
  v1 = [*(v0 + 208) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095274(&qword_1002A6F58, &qword_10023BEB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(*(v0 + 272) + 16))(*(v0 + 304), *(v0 + 216) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 264));
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 304);
    v21 = *(v0 + 264);
    v22 = *(v0 + 272);
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "nsxpc proxy is nil", v23, 2u);
    }

    (*(v22 + 8))(v20, v21);
    goto LABEL_25;
  }

  v59 = *(v0 + 176);
  *(v0 + 312) = v59;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v60 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v61 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v2 = *&v61[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v3 = v61;
    v4 = v2;
    OS_dispatch_semaphore.wait()();

    v5 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v62 = v3;
    v6 = *&v3[v5];
    v7 = *(v6 + 16);

    v63 = v7;
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = v6 + 32;
    v10 = (*(v0 + 240) + 8);
    while (v8 < *(v6 + 16))
    {
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
      v13 = *(v0 + 232);
      sub_1000A097C(v9, v0 + 56);
      v14 = *(*sub_1000A09E0((v0 + 56), *(v0 + 80)) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v14) = static UUID.== infix(_:_:)();
      v15 = *v10;
      (*v10)(v12, v13);
      v15(v11, v13);
      if (v14)
      {

        v24 = *&v61[v60];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v0 + 56, v0 + 16);
        sub_100095808((v0 + 56));
        goto LABEL_13;
      }

      ++v8;
      sub_100095808((v0 + 56));
      v9 += 40;
      if (v63 == v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_8:

  v16 = *&v61[v60];
  OS_dispatch_semaphore.signal()();

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_13:

  if (!*(v0 + 40))
  {
    sub_100095C84(v0 + 16, &unk_1002A6F40, &unk_10023BE90);
    goto LABEL_21;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    (*(*(v0 + 272) + 16))(*(v0 + 280), *(v0 + 216) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 264));
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 272);
    v44 = *(v0 + 280);
    v45 = *(v0 + 264);
    if (v42)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Accessory record not found", v46, 2u);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v43 + 8))(v44, v45);
    goto LABEL_25;
  }

  v25 = *(v0 + 184);
  *(v0 + 320) = v25;
  if (*(v25 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) != 2)
  {

    goto LABEL_21;
  }

  v26 = *(v0 + 264);
  v27 = *(v0 + 272);
  v28 = *(v0 + 216);
  if (*(v0 + 200))
  {
    (*(v27 + 16))(*(v0 + 288), v28 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v26);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 288);
    v34 = *(v0 + 264);
    v33 = *(v0 + 272);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v64 = v34;
      v65 = swift_slowAlloc();
      v36 = v65;
      *v35 = 136315138;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = sub_1000952D4(v37, v38, &v65);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "Device connection failed: %s", v35, 0xCu);
      sub_100095808(v36);

      (*(v33 + 8))(v32, v64);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    v56 = *(v0 + 336);
    v57 = *(v0 + 224);
    v58 = _convertErrorToNSError(_:)();
    [v59 haltFeedbackWithProcessID:v56 info:v57 success:0 complete:1 err:v58];
    swift_unknownObjectRelease();

LABEL_25:

    v47 = *(v0 + 8);

    return v47();
  }

  (*(v27 + 16))(*(v0 + 296), v28 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v26);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Device connected, initiating halt request", v51, 2u);
  }

  v52 = *(v0 + 296);
  v53 = *(v0 + 264);
  v54 = *(v0 + 272);

  (*(v54 + 8))(v52, v53);
  v55 = swift_task_alloc();
  *(v0 + 328) = v55;
  *v55 = v0;
  v55[1] = sub_10009835C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 340, 0, 0, 0x2928746C6168, 0xE600000000000000, sub_1000A1158, v25, &type metadata for Bool);
}

uint64_t sub_10009835C()
{

  return (_swift_task_switch)(sub_100098458, 0, 0);
}

uint64_t sub_100098458()
{
  [*(v0 + 312) haltFeedbackWithProcessID:*(v0 + 336) info:*(v0 + 224) success:*(v0 + 340) complete:1 err:0];

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100098530(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = a4 + *a4;
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_10009862C;

  return (v10)(a6, 0);
}

uint64_t sub_10009862C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000987E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 336) = a6;
  *(v6 + 216) = a4;
  *(v6 + 224) = a5;
  *(v6 + 200) = a2;
  *(v6 + 208) = a3;
  v7 = type metadata accessor for UUID();
  *(v6 + 232) = v7;
  *(v6 + 240) = *(v7 - 8);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v6 + 264) = v8;
  *(v6 + 272) = *(v8 - 8);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();

  return (_swift_task_switch)(sub_10009893C, 0, 0);
}

uint64_t sub_10009893C()
{
  v66 = v0;
  v1 = [*(v0 + 208) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095274(&qword_1002A6F58, &qword_10023BEB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(*(v0 + 272) + 16))(*(v0 + 304), *(v0 + 216) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 264));
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 304);
    v21 = *(v0 + 264);
    v22 = *(v0 + 272);
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "nsxpc proxy is nil", v23, 2u);
    }

    (*(v22 + 8))(v20, v21);
    goto LABEL_25;
  }

  v59 = *(v0 + 176);
  *(v0 + 312) = v59;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v60 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v61 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v2 = *&v61[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v3 = v61;
    v4 = v2;
    OS_dispatch_semaphore.wait()();

    v5 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v62 = v3;
    v6 = *&v3[v5];
    v7 = *(v6 + 16);

    v63 = v7;
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = v6 + 32;
    v10 = (*(v0 + 240) + 8);
    while (v8 < *(v6 + 16))
    {
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
      v13 = *(v0 + 232);
      sub_1000A097C(v9, v0 + 56);
      v14 = *(*sub_1000A09E0((v0 + 56), *(v0 + 80)) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v14) = static UUID.== infix(_:_:)();
      v15 = *v10;
      (*v10)(v12, v13);
      v15(v11, v13);
      if (v14)
      {

        v24 = *&v61[v60];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v0 + 56, v0 + 16);
        sub_100095808((v0 + 56));
        goto LABEL_13;
      }

      ++v8;
      sub_100095808((v0 + 56));
      v9 += 40;
      if (v63 == v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_8:

  v16 = *&v61[v60];
  OS_dispatch_semaphore.signal()();

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_13:

  if (!*(v0 + 40))
  {
    sub_100095C84(v0 + 16, &unk_1002A6F40, &unk_10023BE90);
    goto LABEL_21;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    (*(*(v0 + 272) + 16))(*(v0 + 280), *(v0 + 216) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 264));
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 272);
    v44 = *(v0 + 280);
    v45 = *(v0 + 264);
    if (v42)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Accessory record not found", v46, 2u);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v43 + 8))(v44, v45);
    goto LABEL_25;
  }

  v25 = *(v0 + 184);
  *(v0 + 320) = v25;
  if (*(v25 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) != 2)
  {

    goto LABEL_21;
  }

  v26 = *(v0 + 264);
  v27 = *(v0 + 272);
  v28 = *(v0 + 216);
  if (*(v0 + 200))
  {
    (*(v27 + 16))(*(v0 + 288), v28 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v26);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 288);
    v34 = *(v0 + 264);
    v33 = *(v0 + 272);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v64 = v34;
      v65 = swift_slowAlloc();
      v36 = v65;
      *v35 = 136315138;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = sub_1000952D4(v37, v38, &v65);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "Device connection failed: %s", v35, 0xCu);
      sub_100095808(v36);

      (*(v33 + 8))(v32, v64);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    v56 = *(v0 + 336);
    v57 = *(v0 + 224);
    v58 = _convertErrorToNSError(_:)();
    [v59 rebootFeedbackWithProcessID:v56 info:v57 success:0 complete:1 err:v58];
    swift_unknownObjectRelease();

LABEL_25:

    v47 = *(v0 + 8);

    return v47();
  }

  (*(v27 + 16))(*(v0 + 296), v28 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v26);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Device connected, initiating reboot request", v51, 2u);
  }

  v52 = *(v0 + 296);
  v53 = *(v0 + 264);
  v54 = *(v0 + 272);

  (*(v54 + 8))(v52, v53);
  v55 = swift_task_alloc();
  *(v0 + 328) = v55;
  *v55 = v0;
  v55[1] = sub_100099158;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 340, 0, 0, 0x2928746F6F626572, 0xE800000000000000, sub_1000A0F30, v25, &type metadata for Bool);
}

uint64_t sub_100099158()
{

  return (_swift_task_switch)(sub_100099254, 0, 0);
}

uint64_t sub_100099254()
{
  [*(v0 + 312) rebootFeedbackWithProcessID:*(v0 + 336) info:*(v0 + 224) success:*(v0 + 340) complete:1 err:0];

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009932C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = a4 + *a4;
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_1000A139C;

  return (v10)(a6, 0);
}

uint64_t sub_100099568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v13;
  *(v8 + 160) = a8;
  *(v8 + 168) = v14;
  *(v8 + 144) = a6;
  *(v8 + 152) = a7;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  v9 = type metadata accessor for Errors();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return (_swift_task_switch)(sub_1000996A8, 0, 0);
}

uint64_t sub_1000996A8()
{
  sub_1000A470C();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_100099740;

  return sub_1000FA6C8(v1, v2);
}

uint64_t sub_100099740()
{

  return (_swift_task_switch)(sub_10009983C, 0, 0);
}

uint64_t sub_10009983C()
{
  v1 = *(v0[16] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager);
  v0[30] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_100099B24;

    return sub_1000E871C();
  }

  else
  {
    (*(v0[26] + 16))(v0[28], v0[17] + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v0[25]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Accessory description manager is nil", v6, 2u);
    }

    v7 = v0[28];
    v8 = v0[25];
    v9 = v0[26];
    v11 = v0[23];
    v10 = v0[24];
    v12 = v0[22];
    v13 = v0[18];

    (*(v9 + 8))(v7, v8);
    *v10 = 0xD00000000000001ALL;
    v10[1] = 0x800000010022F210;
    (*(v11 + 104))(v10, enum case for Errors.NotFound(_:), v12);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v11 + 16))(v14, v10, v12);
    v15 = _convertErrorToNSError(_:)();
    v13(0xFFFFFFFFLL, 0, v15);

    (*(v11 + 8))(v10, v12);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100099B24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[32] = a1;
  v4[33] = a2;
  v4[34] = v2;

  if (v2)
  {
    v5 = sub_100099E80;
  }

  else
  {
    v5 = sub_100099C3C;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_100099C3C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  sub_1000A0CD8(v2, v1);
  sub_10016282C(v2, v1);
  v4 = v3;
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  if (!v4)
  {
    *(v0 + 96) = v5;
    *(v0 + 104) = v6;
    sub_1000A0CD8(v5, v6);
    sub_100095274(&unk_1002A9C00, &unk_10023BED0);
    if (swift_dynamicCast())
    {
      sub_1000A0D80((v0 + 56), v0 + 16);
      sub_1000A09E0((v0 + 16), *(v0 + 40));
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_1000A0D2C(*(v0 + 256), *(v0 + 264));
        sub_1000A09E0((v0 + 16), *(v0 + 40));
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        sub_100095808((v0 + 16));
        goto LABEL_9;
      }

      sub_100095808((v0 + 16));
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_100095C84(v0 + 56, &unk_1002A6F70, &unk_10023CE60);
    }

    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    sub_100162514(v8, v7);
    v5 = v8;
    v6 = v7;
  }

  sub_1000A0D2C(v5, v6);
LABEL_9:
  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  v11 = *(v0 + 280);
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v14 = String._bridgeToObjectiveC()();

  [v13 accessoryDescriptionFeedbackWithProcessID:v11 info:v12 accessoryDescription:v14 err:0];

  sub_1000A0D2C(v10, v9);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100099E80()
{
  (*(*(v0 + 208) + 16))(*(v0 + 216), *(v0 + 136) + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, *(v0 + 200));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Accessory Description transfer request failed with %@", v3, 0xCu);
    sub_100095C84(v4, &unk_1002A6F60, &unk_10023C4E0);
  }

  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = *(v0 + 280);
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);

  (*(v7 + 8))(v6, v8);
  v12 = _convertErrorToNSError(_:)();
  [v11 accessoryDescriptionFeedbackWithProcessID:v9 info:v10 accessoryDescription:0 err:v12];

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10009A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return (_swift_task_switch)(sub_10009A0C4, 0, 0);
}

uint64_t sub_10009A0C4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10009A1C4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0xD000000000000010, 0x800000010022F150, sub_1000A0B18, v2, &type metadata for Bool);
}

uint64_t sub_10009A1C4()
{

  return (_swift_task_switch)(sub_10009A2DC, 0, 0);
}

void sub_10009A314(void *a1, int a2, void *a3, void *aBlock, void (*a5)(void *, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(a3, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t type metadata accessor for dockCertHandler(uint64_t a1)
{
  result = qword_1002A6EE0;
  if (!qword_1002A6EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009A4B4(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10009A564(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = v4 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy;
  v7 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy);
  if (v7)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 8);
    v11 = swift_unknownObjectRetain();
    sub_10009ABF8(v11, v10);
    v12 = String._bridgeToObjectiveC()();
    if (a4)
    {
      a4 = _convertErrorToNSError(_:)();
    }

    [v7 fwUpdateFeedbackWithProcessID:v9 info:v10 message:v12 complete:a3 & 1 err:a4];

    swift_unknownObjectRelease_n();
  }

  if (a3)
  {
    v13 = *v6;
    v14 = *(v6 + 8);
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;

    sub_10009ABB8(v13, v14);
  }
}

void sub_10009A694(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v3 = *v1;
    v4 = *(*v1 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateTimer);
    *(*v1 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateTimer) = 0;

    v5 = v3 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy;
    v6 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy);
    v7 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy + 8);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;

    sub_10009ABB8(v6, v7);
  }
}

uint64_t sub_10009A6FC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v27 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66A8 != -1)
  {
    swift_once();
  }

  v12 = sub_100093DE8(v8, qword_1002A6EA0);
  (*(v9 + 16))(v11, v12, v8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28[0] = v16;
    v28[1] = a2;
    *v15 = 67109378;
    *(v15 + 4) = v27;
    *(v15 + 8) = 2080;
    v28[2] = a3;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v17 = String.init<A>(describing:)();
    v19 = sub_1000952D4(v17, v18, v28);

    *(v15 + 10) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, a5, v15, 0x12u);
    sub_100095808(v16);
  }

  (*(v9 + 8))(v11, v8);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v20 = qword_1002B1CF0;
  v21 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v22 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v22 + 4);

  swift_beginAccess();
  v23 = sub_1001E4BFC(v27);
  swift_endAccess();

  v24 = *(v20 + v21);

  os_unfair_lock_unlock(v24 + 4);
}

id sub_10009AAB0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_10009AB0C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10009AB20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009AB68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10009ABB8(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

id sub_10009ABF8(id result, void *a2)
{
  if (result)
  {
    swift_unknownObjectRetain();

    return a2;
  }

  return result;
}

uint64_t sub_10009AC38(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v33 = a2;
  v4 = type metadata accessor for UUID();
  v31[4] = *(v4 - 8);
  v31[5] = v4;
  __chkstk_darwin(v4);
  v31[3] = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v31 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v31 - v17;
  __chkstk_darwin(v16);
  v20 = v31 - v19;
  v21 = type metadata accessor for Errors();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v23(v20, 1, 1, v21);
  if (a1)
  {
    v34 = v8;
    v24 = qword_1002A6780;
    v25 = a1;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    sub_1000CE0B8(v25);
    v32 = v25;

    sub_1000A090C(v20, v12);
    v28 = (*(v22 + 48))(v12, 1, v21);
    v29 = v32;
    if (v28 == 1)
    {
      sub_100095C84(v12, &unk_1002A6F30, &unk_10023C4D0);
      v27 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v27 = v38;
    }

    (*(v37 + 16))(v37, 1, v27);
  }

  else
  {
    sub_100095C84(v20, &unk_1002A6F30, &unk_10023C4D0);
    *v18 = 0xD000000000000012;
    *(v18 + 1) = 0x800000010022F110;
    (*(v22 + 104))(v18, enum case for Errors.NotFound(_:), v21);
    v23(v18, 0, 1, v21);
    sub_1000A089C(v18, v20);
    sub_1000A090C(v20, v15);
    if ((*(v22 + 48))(v15, 1, v21) == 1)
    {
      sub_100095C84(v15, &unk_1002A6F30, &unk_10023C4D0);
      v27 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v27 = v38;
    }

    (*(v37 + 16))(v37, 0, v27);
  }

  return sub_100095C84(v20, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10009B3A4(void *a1, uint64_t a2, char *a3, void (**a4)(const void *, uint64_t, void *))
{
  v126 = a2;
  v135 = a1;
  v6 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v6 - 8);
  v125 = &v123 - v7;
  v8 = type metadata accessor for Errors();
  v138 = *(v8 - 8);
  v139 = v8;
  __chkstk_darwin(v8);
  v137 = (&v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = type metadata accessor for UUID();
  v127 = *(v141 - 8);
  v10 = __chkstk_darwin(v141);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v123 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v129 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v130 = &v123 - v20;
  v21 = __chkstk_darwin(v19);
  v128 = &v123 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v123 - v24;
  __chkstk_darwin(v23);
  v27 = &v123 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  v29 = objc_opt_self();
  v140 = a4;
  _Block_copy(a4);
  v30 = [v29 currentConnection];
  if (!v30)
  {
    (*(v16 + 16))(v27, &a3[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v15);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed fetching current NSXPCConnection, cannot construct client", v54, 2u);
    }

    (*(v16 + 8))(v27, v15);
    v56 = v137;
    v55 = v138;
    *v137 = 0xD000000000000029;
    v56[1] = 0x800000010022F170;
    v57 = v139;
    (*(v55 + 104))(v56, enum case for Errors.XPCNil(_:), v139);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v55 + 16))(v58, v56, v57);
    v59 = _convertErrorToNSError(_:)();
    v140[2](v140, 0xFFFFFFFFLL, v59);

    goto LABEL_41;
  }

  v132 = a3;
  v133 = v16;
  v131 = v15;
  v134 = v28;
  v136 = v30;
  LODWORD(a3) = [v30 processIdentifier];
  if (qword_1002A6780 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v31 = qword_1002B1CF0;
    v32 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v33 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v33 + 4);

    v34 = *(v31 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v35 = *(v31 + v32);
    v36 = v34;

    os_unfair_lock_unlock(v35 + 4);

    if (!v34)
    {
      v60 = v133;
      v61 = v131;
      (*(v133 + 16))(v25, &v132[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v131);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "No accessory connected. Cannot initiate accessory diagnostics", v64, 2u);
      }

      (*(v60 + 8))(v25, v61);
      v66 = v137;
      v65 = v138;
      *v137 = 0xD000000000000016;
      v66[1] = 0x800000010022F1A0;
      v67 = v139;
      (*(v65 + 104))(v66, enum case for Errors.AccessoryNotReachable(_:), v139);
      sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v65 + 16))(v68, v66, v67);
      v69 = _convertErrorToNSError(_:)();
      v140[2](v140, 0xFFFFFFFFLL, v69);

      (*(v65 + 8))(v66, v67);
      goto LABEL_25;
    }

    v142 = dispatch thunk of DockCoreAccessory.info.getter();

    v37 = v135;
    if (!v135)
    {
      goto LABEL_7;
    }

    type metadata accessor for DockCoreInfo();
    v38 = v37;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      v77 = v133;
      v78 = v128;
      v79 = v131;
      (*(v133 + 16))(v128, &v132[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v131);
      v80 = v38;
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v83 = 138412290;
        *(v83 + 4) = v80;
        *v84 = v37;
        v85 = v80;
        _os_log_impl(&_mh_execute_header, v81, v82, "%@ is not connected", v83, 0xCu);
        sub_100095C84(v84, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v77 + 8))(v78, v79);
      *&v144 = 0;
      *(&v144 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(19);
      v86 = [v80 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      *&v144 = v87;
      *(&v144 + 1) = v89;
      v90._object = 0x800000010022F1F0;
      v90._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v90);
      v91 = *(&v144 + 1);
      v93 = v137;
      v92 = v138;
      *v137 = v144;
      v93[1] = v91;
      v94 = v139;
      (*(v92 + 104))(v93, enum case for Errors.AccessoryNotReachable(_:), v139);
      sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v92 + 16))(v95, v93, v94);
      v96 = _convertErrorToNSError(_:)();
      v140[2](v140, 0xFFFFFFFFLL, v96);

      (*(v92 + 8))(v93, v94);
LABEL_25:
    }

LABEL_7:
    LODWORD(v135) = a3;
    v39 = [v136 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100095274(&qword_1002A6F58, &qword_10023BEB0);
    if (!swift_dynamicCast())
    {
      v70 = v133;
      v71 = v130;
      v72 = v131;
      (*(v133 + 16))(v130, &v132[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v131);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "nsxpc proxy is nil", v75, 2u);

        v76 = v136;
      }

      else
      {

        v76 = v142;
      }

      (*(v70 + 8))(v71, v72);
    }

    v130 = v143[0];
    v40 = *(v31 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v123 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v41 = *&v40[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v124 = v40;
    v42 = v40;
    v43 = v41;
    OS_dispatch_semaphore.wait()();

    v44 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v128 = v42;
    v25 = *&v42[v44];
    v45 = *(v25 + 2);

    if (!v45)
    {
      break;
    }

    a3 = 0;
    v46 = (v25 + 32);
    v47 = (v127 + 8);
    while (a3 < *(v25 + 2))
    {
      sub_1000A097C(v46, v143);
      v48 = *(*sub_1000A09E0(v143, v143[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v48) = static UUID.== infix(_:_:)();
      v49 = *v47;
      v50 = v141;
      (*v47)(v12, v141);
      v49(v14, v50);
      if (v48)
      {

        v97 = *&v124[v123];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v143, &v144);
        sub_100095808(v143);
        goto LABEL_29;
      }

      ++a3;
      sub_100095808(v143);
      v46 += 40;
      if (v45 == a3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_13:

  v51 = *&v124[v123];
  OS_dispatch_semaphore.signal()();

  v146 = 0;
  v144 = 0u;
  v145 = 0u;
LABEL_29:

  v98 = v134;
  v99 = v131;
  v100 = v133;
  if (*(&v145 + 1))
  {
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory(0);
    v101 = swift_dynamicCast();
    v102 = v132;
    if (v101)
    {
      if (*(v143[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2 && (v103 = *(v143[0] + 16)) != 0 && (v104 = *&v103[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
      {
        v105 = v143[0];
        v106 = v103;
        if ([v104 state] == 2)
        {
          v107 = type metadata accessor for TaskPriority();
          v108 = v125;
          (*(*(v107 - 8) + 56))(v125, 1, 1, v107);
          v109 = swift_allocObject();
          *(v109 + 16) = 0;
          *(v109 + 24) = 0;
          *(v109 + 32) = v105;
          *(v109 + 40) = v102;
          *(v109 + 48) = sub_1000A11BC;
          *(v109 + 56) = v98;
          v110 = v130;
          *(v109 + 64) = v126;
          *(v109 + 72) = v110;
          v111 = v135;
          *(v109 + 80) = v135;
          v112 = v142;
          *(v109 + 88) = v142;

          v113 = v102;

          swift_unknownObjectRetain();
          v114 = v112;
          sub_1001B6410(0, 0, v108, &unk_10023BF30, v109);

          v140[2](v140, v111, 0);

          return swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100095C84(&v144, &unk_1002A6F40, &unk_10023BE90);
    v102 = v132;
  }

  v116 = &v102[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger];
  v117 = v129;
  (*(v100 + 16))(v129, v116, v99);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&_mh_execute_header, v118, v119, "accessory does not exist and/or is not paired", v120, 2u);
  }

  (*(v100 + 8))(v117, v99);
  v56 = v137;
  v55 = v138;
  *v137 = 0xD00000000000002DLL;
  v56[1] = 0x800000010022F1C0;
  v57 = v139;
  (*(v55 + 104))(v56, enum case for Errors.NotFound(_:), v139);
  sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
  swift_allocError();
  (*(v55 + 16))(v121, v56, v57);
  v122 = _convertErrorToNSError(_:)();
  v140[2](v140, 0xFFFFFFFFLL, v122);
  swift_unknownObjectRelease();

LABEL_41:
  (*(v55 + 8))(v56, v57);
}

uint64_t sub_10009C520(uint64_t a1, void *a2, char *a3, void *a4, char *a5, uint64_t a6)
{
  v147 = a6;
  v142 = a3;
  v143 = a4;
  v141 = a2;
  v140 = a1;
  v7 = type metadata accessor for UUID();
  v144 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v121 - v11;
  v13 = type metadata accessor for Errors();
  v145 = *(v13 - 8);
  v146 = v13;
  __chkstk_darwin(v13);
  v15 = (&v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v21 = __chkstk_darwin(&v121 - v20);
  v22 = __chkstk_darwin(v21);
  v24 = &v121 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v121 - v26;
  v28 = __chkstk_darwin(v25);
  v33 = &v121 - v29;
  if (*&a5[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy] || *&a5[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateTimer])
  {
    (*(v17 + 16))(&v121 - v29, &a5[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v16);
    v34 = Logger.logObject.getter();
    v35 = v16;
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v149 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1000952D4(0xD00000000000003FLL, 0x800000010022F230, &v149);
      _os_log_impl(&_mh_execute_header, v34, v36, "%s", v37, 0xCu);
      sub_100095808(v38);
    }

    (*(v17 + 8))(v33, v35);
    *v15 = 0xD00000000000003FLL;
    v15[1] = 0x800000010022F230;
    v39 = &enum case for Errors.OperationInProgress(_:);
LABEL_6:
    v41 = v145;
    v40 = v146;
    (*(v145 + 104))(v15, *v39, v146);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v41 + 16))(v42, v15, v40);
    v43 = _convertErrorToNSError(_:)();
    (*(v147 + 16))(v147, 0xFFFFFFFFLL, v43);

    (*(v41 + 8))(v15, v40);
  }

  v134 = v28;
  v135 = v32;
  v132 = v31;
  v130 = &a5[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateProxy];
  v131 = OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_fwUpdateTimer;
  v133 = v30;
  v136 = a5;
  v45 = [objc_opt_self() currentConnection];
  if (!v45)
  {
    (*(v17 + 16))(v27, &v136[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v16);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Failed fetching current NSXPCConnection, cannot construct client", v69, 2u);
    }

    (*(v17 + 8))(v27, v16);
    *v15 = 0xD000000000000029;
    v15[1] = 0x800000010022F170;
    v39 = &enum case for Errors.XPCNil(_:);
    goto LABEL_6;
  }

  v46 = v45;
  v47 = [v45 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100095274(&qword_1002A6F58, &qword_10023BEB0);
  if (swift_dynamicCast())
  {
    v128 = v16;
    v129 = v148[0];
    v123 = [v46 processIdentifier];
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v48 = qword_1002B1CF0;
    v49 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v50 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v50 + 4);

    v51 = *(v48 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v52 = *(v48 + v49);
    v53 = v51;

    os_unfair_lock_unlock(v52 + 4);

    if (v51)
    {
      v126 = v46;
      v122 = v48;
      v121 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
      v54 = *(v48 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v127 = v53;
      v139 = dispatch thunk of DockCoreAccessory.info.getter();
      v124 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v55 = *&v54[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      OS_dispatch_semaphore.wait()();

      v56 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v125 = v54;
      v57 = *&v54[v56];
      v58 = *(v57 + 16);
      v59 = v57;

      v138 = v17;
      v137 = v58;
      if (v58)
      {
        v60 = 0;
        v61 = v59 + 32;
        v62 = v144 + 8;
        while (v60 < *(v59 + 16))
        {
          sub_1000A097C(v61, v148);
          v63 = *(*sub_1000A09E0(v148, v148[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v63) = static UUID.== infix(_:_:)();
          v64 = *v62;
          (*v62)(v10, v7);
          v64(v12, v7);
          if (v63)
          {

            v73 = v125;
            v74 = *&v125[v124];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v148, &v149);
            sub_100095808(v148);

            v17 = v138;
            goto LABEL_26;
          }

          ++v60;
          sub_100095808(v148);
          v61 += 40;
          v17 = v138;
          if (v137 == v60)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

LABEL_18:

      v65 = v125;
      v66 = *&v125[v124];
      OS_dispatch_semaphore.signal()();

      v151 = 0;
      v149 = 0u;
      v150 = 0u;

LABEL_26:
      v61 = v129;
      v75 = v127;
      v46 = v126;
      if (*(&v150 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory(0);
        if (swift_dynamicCast())
        {
          v76 = v148[0];
          v77 = *(v148[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData + 8);
          if (v77 && (v78 = *(v148[0] + 16)) != 0)
          {
            v79 = *&v78[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
            if (v79)
            {
              v80 = *(v148[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_productData);

              v81 = v78;
              if ([v79 state] == 2)
              {
                v144 = v81;
                v146 = v76;
                v82 = v17;
                v83 = OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger;
                v84 = v128;
                v145 = *(v82 + 16);
                (v145)(v134, &v136[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v128);
                v85 = Logger.logObject.getter();
                v86 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v85, v86))
                {
                  v87 = swift_slowAlloc();
                  *v87 = 0;
                  _os_log_impl(&_mh_execute_header, v85, v86, "Device is connected, now initiating firmware update", v87, 2u);
                }

                v88 = *(v138 + 8);
                v138 += 8;
                v88(v134, v84);
                v89 = *(*(v122 + v121) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_firmwareUpdateManager);
                v90 = sub_10014B4AC(v140, v141, v142, v143, v80, v77);
                v139 = v89;
                v100 = v99;
                v143 = v90;

                (v145)(v132, &v136[v83], v84);
                v12 = v89;
                v101 = v146;

                v102 = Logger.logObject.getter();
                v103 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v102, v103))
                {
                  v104 = swift_slowAlloc();
                  v142 = v12;
                  v105 = v104;
                  v106 = swift_slowAlloc();
                  *v105 = 138412546;
                  v107 = *(v101 + 24);
                  *(v105 + 4) = v107;
                  *v106 = v107;
                  *(v105 + 12) = 2048;
                  *(v105 + 14) = 0x404E000000000000;
                  v108 = v107;
                  _os_log_impl(&_mh_execute_header, v102, v103, "Setting accessory reachable %@ after %f secs", v105, 0x16u);
                  sub_100095C84(v106, &unk_1002A6F60, &unk_10023C4E0);
                  v61 = v129;

                  v12 = v142;
                }

                v88(v132, v128);
                sub_10014E948(v101, 1, v143, v100);

                v109 = *&v12[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer];
                *&v12[OBJC_IVAR____TtC14dockaccessoryd30AccessoryFirmwareUpdateManager_reachabilityTimer] = 0;

                *(&v150 + 1) = type metadata accessor for dockCertHandler(0);
                v151 = &off_100275928;
                *&v149 = v136;
                v110 = v136;
                sub_10014B6CC(&v149, v146);
LABEL_47:
                v111 = v12;
                sub_100095808(&v149);
                v112 = *(v146 + 24);
                v113 = v130;
                v114 = *v130;
                v115 = v130[1];
                *v130 = v61;
                v113[1] = v112;
                v116 = v123;
                *(v113 + 4) = v123;
                swift_unknownObjectRetain();
                v117 = v112;
                sub_10009ABB8(v114, v115);
                swift_allocObject();
                swift_unknownObjectWeakInit();
                v118 = objc_allocWithZone(type metadata accessor for RepeatingTimer());

                v119 = RepeatingTimer.init(interval:fireOnce:queue:_:)();

                v120 = *&v136[v131];
                *&v136[v131] = v119;

                (*(v147 + 16))(v147, v116, 0);
                return swift_unknownObjectRelease();
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {

        sub_100095C84(&v149, &unk_1002A6F40, &unk_10023BE90);
      }
    }

    v91 = v128;
    (*(v17 + 16))(v135, &v136[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v128);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "No accessory connected, try again", v94, 2u);
    }

    (*(v17 + 8))(v135, v91);
    *v15 = 0xD000000000000016;
    v15[1] = 0x800000010022F1A0;
    v96 = v145;
    v95 = v146;
    (*(v145 + 104))(v15, enum case for Errors.AccessoryNotReachable(_:), v146);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v96 + 16))(v97, v15, v95);
    v98 = _convertErrorToNSError(_:)();
    (*(v147 + 16))(v147, 0xFFFFFFFFLL, v98);
    swift_unknownObjectRelease();

    (*(v96 + 8))(v15, v95);
  }

  (*(v17 + 16))(v24, &v136[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v16);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v71, "nsxpc proxy is nil", v72, 2u);
  }

  return (*(v17 + 8))(v24, v16);
}

uint64_t sub_10009D82C(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = a8;
  v89 = a7;
  v88 = a6;
  v101 = a5;
  v104 = a4;
  v105 = a3;
  v106 = a1;
  v9 = type metadata accessor for Errors();
  v100 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v12 - 8);
  v87 = &v85 - v13;
  v14 = type metadata accessor for UUID();
  v102 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v85 - v18;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v92 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v103 = &v85 - v25;
  __chkstk_darwin(v24);
  v27 = &v85 - v26;
  v28 = [objc_opt_self() currentConnection];
  if (v28)
  {
    v29 = v28;
    v96 = v21;
    v97 = v20;
    v30 = [v28 processIdentifier];
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = a2;
    v32 = v106;
    *(v31 + 32) = v106;
    v98 = v31;
    v91 = v30;
    *(v31 + 40) = v30;
    v33 = qword_1002A6780;
    v95 = v29;
    v93 = a2;
    v106 = v32;
    if (v33 != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v94 = qword_1002B1CF0;
      v86 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager;
      v34 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v99 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v100 = v34;
      v35 = *&v34[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      v36 = v34;
      v37 = v35;
      OS_dispatch_semaphore.wait()();

      v38 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v104 = v36;
      v39 = *&v36[v38];
      v40 = *(v39 + 16);

      if (!v40)
      {
        break;
      }

      v41 = 0;
      v42 = v39 + 32;
      v43 = (v102 + 8);
      while (v41 < *(v39 + 16))
      {
        sub_1000A097C(v42, v107);
        v44 = *(*sub_1000A09E0(v107, v107[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v44) = static UUID.== infix(_:_:)();
        v45 = *v43;
        (*v43)(v17, v14);
        v45(v19, v14);
        if (v44)
        {

          v55 = *&v100[v99];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v107, &v108);
          sub_100095808(v107);
          goto LABEL_13;
        }

        ++v41;
        sub_100095808(v107);
        v42 += 40;
        if (v40 == v41)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_33:
      swift_once();
    }

LABEL_8:

    v46 = *&v100[v99];
    OS_dispatch_semaphore.signal()();

    v110 = 0;
    v108 = 0u;
    v109 = 0u;
LABEL_13:

    v56 = v98;
    v57 = v97;
    v58 = v96;
    v59 = v103;
    v60 = v94;
    v61 = v106;
    if (*(&v109 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory(0);
      if (swift_dynamicCast())
      {
        if (*(v107[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2)
        {
          v62 = *(v107[0] + 16);
          if (v62)
          {
            v63 = *&v62[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
            if (v63)
            {
              v64 = v62;
              if ([v63 state] == 2)
              {
                v65 = type metadata accessor for TaskPriority();
                v66 = v87;
                (*(*(v65 - 8) + 56))(v87, 1, 1, v65);
                v67 = swift_allocObject();
                v67[2] = 0;
                v67[3] = 0;
                v67[4] = v89;
                v67[5] = v56;
                v67[6] = v64;
                v68 = v64;

                sub_1001B6410(0, 0, v66, v90, v67);

                goto LABEL_27;
              }
            }
          }
        }
      }
    }

    else
    {
      sub_100095C84(&v108, &unk_1002A6F40, &unk_10023BE90);
    }

    v69 = sub_1001884E4(v61);
    if (!v69)
    {
      v81 = v92;
      (*(v58 + 16))(v92, &v93[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v57);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "accessory does not exist and/or is not paired ", v84, 2u);
      }

      (*(v58 + 8))(v81, v57);
      v80 = *(v105 + 16);
      goto LABEL_31;
    }

    (*(v58 + 16))(v59, &v93[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v57);
    v70 = v61;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      *(v73 + 4) = v70;
      *v74 = v70;
      v75 = v70;
      _os_log_impl(&_mh_execute_header, v71, v72, "%@ not connected, connecting and deferring callback for later", v73, 0xCu);
      sub_100095C84(v74, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v58 + 8))(v59, v57);
    v76 = *(v60 + v86);
    sub_100095274(&qword_1002A7390, &qword_10023BEF0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_10023BDA0;
    *(v77 + 32) = v70;
    v78 = v70;

    v79 = v76;
    sub_1000CED88(v77, v101, v56);

LABEL_27:

    v80 = *(v105 + 16);
LABEL_31:
    v80();
  }

  v47 = v100;
  v48 = v9;
  (*(v21 + 16))(v27, &a2[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v20);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Failed fetching current NSXPCConnection, cannot construct client", v51, 2u);
  }

  (*(v21 + 8))(v27, v20);
  *v11 = 0xD000000000000029;
  v11[1] = 0x800000010022F170;
  (*(v47 + 13))(v11, enum case for Errors.XPCNil(_:), v48);
  sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
  swift_allocError();
  (*(v47 + 2))(v52, v11, v48);
  v53 = _convertErrorToNSError(_:)();
  (*(v105 + 16))(v105, 0xFFFFFFFFLL, 0, v53);

  (*(v47 + 1))(v11, v48);
}

uint64_t sub_10009E338(void *a1, char *a2, void (**a3)(const void *, uint64_t, void, void *))
{
  v133 = a1;
  v5 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v5 - 8);
  v124 = &v121 - v6;
  v7 = type metadata accessor for Errors();
  v136 = *(v7 - 8);
  v137 = v7;
  __chkstk_darwin(v7);
  v135 = (&v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = type metadata accessor for UUID();
  v125 = *(v139 - 8);
  v9 = __chkstk_darwin(v139);
  v11 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v121 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v127 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v128 = &v121 - v19;
  v20 = __chkstk_darwin(v18);
  v126 = &v121 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v121 - v23;
  __chkstk_darwin(v22);
  v26 = &v121 - v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  v28 = objc_opt_self();
  v138 = a3;
  _Block_copy(a3);
  v29 = [v28 currentConnection];
  if (!v29)
  {
    (*(v15 + 16))(v26, &a2[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v14);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Failed fetching current NSXPCConnection, cannot construct client", v53, 2u);
    }

    (*(v15 + 8))(v26, v14);
    v55 = v135;
    v54 = v136;
    *v135 = 0xD000000000000029;
    v55[1] = 0x800000010022F170;
    v56 = v137;
    (*(v54 + 104))(v55, enum case for Errors.XPCNil(_:), v137);
    sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v54 + 16))(v57, v55, v56);
    v58 = _convertErrorToNSError(_:)();
    v138[2](v138, 0xFFFFFFFFLL, 0, v58);

    goto LABEL_41;
  }

  v130 = a2;
  v131 = v15;
  v129 = v14;
  v132 = v27;
  v134 = v29;
  LODWORD(a2) = [v29 processIdentifier];
  if (qword_1002A6780 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v30 = qword_1002B1CF0;
    v31 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v32 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v32 + 4);

    v33 = *(v30 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v34 = *(v30 + v31);
    v35 = v33;

    os_unfair_lock_unlock(v34 + 4);

    if (!v33)
    {
      v59 = v131;
      v60 = v129;
      (*(v131 + 16))(v24, &v130[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v129);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "No accessory connected. Cannot initiate accessory description transfer", v63, 2u);
      }

      (*(v59 + 8))(v24, v60);
      v65 = v135;
      v64 = v136;
      *v135 = 0xD000000000000016;
      v65[1] = 0x800000010022F1A0;
      v66 = v137;
      (*(v64 + 104))(v65, enum case for Errors.AccessoryNotReachable(_:), v137);
      sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v64 + 16))(v67, v65, v66);
      v68 = _convertErrorToNSError(_:)();
      v138[2](v138, 0xFFFFFFFFLL, 0, v68);

      (*(v64 + 8))(v65, v66);
      goto LABEL_25;
    }

    v140 = dispatch thunk of DockCoreAccessory.info.getter();

    v36 = v133;
    if (!v133)
    {
      goto LABEL_7;
    }

    type metadata accessor for DockCoreInfo();
    v37 = v36;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      v76 = v131;
      v77 = v126;
      v78 = v129;
      (*(v131 + 16))(v126, &v130[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v129);
      v79 = v37;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138412290;
        *(v82 + 4) = v79;
        *v83 = v36;
        v84 = v79;
        _os_log_impl(&_mh_execute_header, v80, v81, "%@ is not connected", v82, 0xCu);
        sub_100095C84(v83, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v76 + 8))(v77, v78);
      *&v142 = 0;
      *(&v142 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(19);
      v85 = [v79 description];
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      *&v142 = v86;
      *(&v142 + 1) = v88;
      v89._object = 0x800000010022F1F0;
      v89._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v89);
      v90 = *(&v142 + 1);
      v92 = v135;
      v91 = v136;
      *v135 = v142;
      v92[1] = v90;
      v93 = v137;
      (*(v91 + 104))(v92, enum case for Errors.AccessoryNotReachable(_:), v137);
      sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v91 + 16))(v94, v92, v93);
      v95 = _convertErrorToNSError(_:)();
      v138[2](v138, 0xFFFFFFFFLL, 0, v95);

      (*(v91 + 8))(v92, v93);
LABEL_25:
    }

LABEL_7:
    LODWORD(v133) = a2;
    v38 = [v134 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100095274(&qword_1002A6F58, &qword_10023BEB0);
    if (!swift_dynamicCast())
    {
      v69 = v131;
      v70 = v128;
      v71 = v129;
      (*(v131 + 16))(v128, &v130[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger], v129);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "nsxpc proxy is nil", v74, 2u);

        v75 = v134;
      }

      else
      {

        v75 = v140;
      }

      (*(v69 + 8))(v70, v71);
    }

    v128 = v141[0];
    v39 = *(v30 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v122 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v40 = *&v39[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v123 = v39;
    v41 = v39;
    v42 = v40;
    OS_dispatch_semaphore.wait()();

    v43 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v126 = v41;
    v24 = *&v41[v43];
    v44 = *(v24 + 2);

    if (!v44)
    {
      break;
    }

    a2 = 0;
    v45 = (v24 + 32);
    v46 = (v125 + 8);
    while (a2 < *(v24 + 2))
    {
      sub_1000A097C(v45, v141);
      v47 = *(*sub_1000A09E0(v141, v141[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v47) = static UUID.== infix(_:_:)();
      v48 = *v46;
      v49 = v139;
      (*v46)(v11, v139);
      v48(v13, v49);
      if (v47)
      {

        v96 = *&v123[v122];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v141, &v142);
        sub_100095808(v141);
        goto LABEL_29;
      }

      ++a2;
      sub_100095808(v141);
      v45 += 40;
      if (v44 == a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_13:

  v50 = *&v123[v122];
  OS_dispatch_semaphore.signal()();

  v144 = 0;
  v142 = 0u;
  v143 = 0u;
LABEL_29:

  v97 = v132;
  v98 = v129;
  v99 = v131;
  if (*(&v143 + 1))
  {
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory(0);
    v100 = swift_dynamicCast();
    v101 = v130;
    if (v100)
    {
      if (*(v141[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2 && (v102 = *(v141[0] + 16)) != 0 && (v103 = *&v102[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
      {
        v104 = v141[0];
        v105 = v102;
        if ([v103 state] == 2)
        {
          v106 = type metadata accessor for TaskPriority();
          v107 = v124;
          (*(*(v106 - 8) + 56))(v124, 1, 1, v106);
          v108 = swift_allocObject();
          *(v108 + 16) = 0;
          *(v108 + 24) = 0;
          *(v108 + 32) = v104;
          *(v108 + 40) = v101;
          *(v108 + 48) = sub_1000A0B5C;
          *(v108 + 56) = v97;
          *(v108 + 64) = v128;
          v109 = v133;
          *(v108 + 72) = v133;
          v110 = v140;
          *(v108 + 80) = v140;

          v111 = v101;

          swift_unknownObjectRetain();
          v112 = v110;
          sub_1001B6410(0, 0, v107, &unk_10023BEC0, v108);

          v138[2](v138, v109, 1, 0);

          return swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100095C84(&v142, &unk_1002A6F40, &unk_10023BE90);
    v101 = v130;
  }

  v114 = &v101[OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger];
  v115 = v127;
  (*(v99 + 16))(v127, v114, v98);
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    *v118 = 0;
    _os_log_impl(&_mh_execute_header, v116, v117, "accessory does not exist and/or is not paired", v118, 2u);
  }

  (*(v99 + 8))(v115, v98);
  v55 = v135;
  v54 = v136;
  *v135 = 0xD00000000000002DLL;
  v55[1] = 0x800000010022F1C0;
  v56 = v137;
  (*(v54 + 104))(v55, enum case for Errors.NotFound(_:), v137);
  sub_1000A1340(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
  swift_allocError();
  (*(v54 + 16))(v119, v55, v56);
  v120 = _convertErrorToNSError(_:)();
  v138[2](v138, 0xFFFFFFFFLL, 0, v120);
  swift_unknownObjectRelease();

LABEL_41:
  (*(v54 + 8))(v55, v56);
}

uint64_t sub_10009F4B0(void *a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v77 = a2;
  v4 = type metadata accessor for Logger();
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin(v4);
  v82 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v6 - 8);
  v66 = &v65 - v7;
  v83 = type metadata accessor for UUID();
  v75 = *(v83 - 8);
  v8 = __chkstk_darwin(v83);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v65 - v11;
  v13 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v14 = __chkstk_darwin(v13 - 8);
  v78 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v65 = &v65 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v65 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v65 - v22;
  __chkstk_darwin(v21);
  v25 = &v65 - v24;
  v26 = type metadata accessor for Errors();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v28(v25, 1, 1, v26);
  if (a1)
  {
    v67 = v28;
    v68 = v27 + 56;
    v76 = v23;
    v69 = v27;
    v70 = v26;
    v71 = v25;
    v29 = qword_1002A6780;
    v30 = a1;
    if (v29 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v31 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v72 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v32 = *&v31[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      v73 = v31;
      v33 = v31;
      v34 = v32;
      OS_dispatch_semaphore.wait()();

      v35 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v74 = v33;
      v36 = *&v33[v35];
      v37 = *(v36 + 16);

      v84 = v30;
      if (!v37)
      {
        break;
      }

      v38 = 0;
      v39 = v36 + 32;
      v40 = (v75 + 8);
      v41 = v83;
      while (v38 < *(v36 + 16))
      {
        sub_1000A097C(v39, v85);
        v42 = *(*sub_1000A09E0(v85, v85[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v42) = static UUID.== infix(_:_:)();
        v43 = *v40;
        (*v40)(v10, v41);
        v43(v12, v41);
        if (v42)
        {

          v47 = *&v73[v72];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v85, &v86);
          sub_100095808(v85);
          goto LABEL_12;
        }

        ++v38;
        sub_100095808(v85);
        v39 += 40;
        v30 = v84;
        if (v37 == v38)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_31:
      swift_once();
    }

LABEL_8:

    v44 = *&v73[v72];
    OS_dispatch_semaphore.signal()();

    v88 = 0;
    v86 = 0u;
    v87 = 0u;
LABEL_12:

    v49 = v80;
    v48 = v81;
    v25 = v71;
    v50 = v70;
    v51 = v69;
    v52 = v79;
    v53 = v76;
    if (*(&v87 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory(0);
      if (swift_dynamicCast())
      {
        v54 = v85[0];
        if (*(v85[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2)
        {
          v55 = type metadata accessor for TaskPriority();
          v56 = v66;
          (*(*(v55 - 8) + 56))(v66, 1, 1, v55);
          v57 = swift_allocObject();
          v57[2] = 0;
          v57[3] = 0;
          v57[4] = v54;

          sub_1001B6710(0, 0, v56, &unk_10023BEA8, v57);

          v58 = v65;
          sub_1000A090C(v25, v65);
          if ((*(v51 + 48))(v58, 1, v50) == 1)
          {
            sub_100095C84(v58, &unk_1002A6F30, &unk_10023C4D0);
            v46 = 0;
          }

          else
          {
            sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
            swift_dynamicCast();
            v46 = v86;
          }

          (*(v48 + 16))(v48, 1, v46);

          goto LABEL_27;
        }
      }
    }

    else
    {
      sub_100095C84(&v86, &unk_1002A6F40, &unk_10023BE90);
    }

    (*(v52 + 16))(v82, v77 + OBJC_IVAR____TtC14dockaccessoryd15dockCertHandler_logger, v49);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Accessory record not found", v61, 2u);
      v53 = v76;
    }

    (*(v52 + 8))(v82, v49);
    sub_100095C84(v25, &unk_1002A6F30, &unk_10023C4D0);
    *v53 = 0xD00000000000001ALL;
    *(v53 + 1) = 0x800000010022F130;
    (*(v51 + 104))(v53, enum case for Errors.NotFound(_:), v50);
    v67(v53, 0, 1, v50);
    sub_1000A089C(v53, v25);
    v62 = v78;
    sub_1000A090C(v25, v78);
    if ((*(v51 + 48))(v62, 1, v50) == 1)
    {
      sub_100095C84(v62, &unk_1002A6F30, &unk_10023C4D0);
      v63 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v63 = v86;
    }

    (*(v48 + 16))(v48, 0, v63);

    v46 = v84;
  }

  else
  {
    v45 = v81;
    sub_100095C84(v25, &unk_1002A6F30, &unk_10023C4D0);
    *v23 = 0xD000000000000012;
    *(v23 + 1) = 0x800000010022F110;
    (*(v27 + 104))(v23, enum case for Errors.NotFound(_:), v26);
    v28(v23, 0, 1, v26);
    sub_1000A089C(v23, v25);
    sub_1000A090C(v25, v20);
    if ((*(v27 + 48))(v20, 1, v26) == 1)
    {
      sub_100095C84(v20, &unk_1002A6F30, &unk_10023C4D0);
      v46 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v46 = v86;
    }

    (*(v45 + 16))(v45, 0, v46);
  }

LABEL_27:

  return sub_100095C84(v25, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10009FF20(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v53 - v8;
  v10 = [a1 processIdentifier];
  v11 = String._bridgeToObjectiveC()();
  v12 = [a1 valueForEntitlement:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  aBlock = v69;
  v66 = v70;
  if (*(&v70 + 1))
  {
    v13 = swift_dynamicCast();
    if (v13)
    {
      v15 = v63;
    }

    else
    {
      v15 = 0;
    }

    if (v13)
    {
      v16 = v64;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    v15 = 0;
    v16 = 0;
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v58 = sub_10019B91C(a1, v14);
  v18 = v17;
  if (qword_1002A66A8 != -1)
  {
    swift_once();
  }

  v19 = sub_100093DE8(v3, qword_1002A6EA0);
  v20 = *(v4 + 16);
  v60 = v19;
  v61 = v4 + 16;
  v59 = v20;
  (v20)(v9);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v62 = v9;
  v23 = v22;

  v24 = os_log_type_enabled(v21, v23);
  v57 = v15;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v56 = v4;
    v26 = v25;
    v53 = swift_slowAlloc();
    *&v69 = v53;
    *v26 = 67109634;
    *(v26 + 4) = v10;
    *(v26 + 8) = 2080;
    *&aBlock = v15;
    *(&aBlock + 1) = v16;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v55 = v7;
    v27 = String.init<A>(describing:)();
    v54 = v16;
    v29 = v3;
    v30 = v10;
    v31 = sub_1000952D4(v27, v28, &v69);

    *(v26 + 10) = v31;
    *(v26 + 18) = 2080;
    *&aBlock = v58;
    *(&aBlock + 1) = v18;
    v7 = v55;
    v32 = String.init<A>(describing:)();
    v34 = sub_1000952D4(v32, v33, &v69);
    v16 = v54;

    *(v26 + 20) = v34;
    v10 = v30;
    v3 = v29;
    _os_log_impl(&_mh_execute_header, v21, v23, "new connection from pid %d, appID entitlement %s, appID %s", v26, 0x1Cu);
    swift_arrayDestroy();

    v35 = v56;

    v36 = *(v35 + 8);
    v36(v62, v29);
  }

  else
  {

    v36 = *(v4 + 8);
    v36(v62, v3);
  }

  v37 = String._bridgeToObjectiveC()();
  v38 = [a1 valueForEntitlement:v37];

  if (v38)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  aBlock = v69;
  v66 = v70;
  if (*(&v70 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v63)
    {
      v39 = objc_opt_self();
      v62 = [v39 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore22DockDaemonCertProtocol_];
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = v10;
      v42 = v57;
      *(v41 + 24) = v57;
      *(v41 + 32) = v16;
      *(v41 + 40) = v40;
      v67 = sub_1000A07EC;
      v68 = v41;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v66 = sub_100147FC8;
      *(&v66 + 1) = &unk_100275990;
      v43 = _Block_copy(&aBlock);

      [a1 setInvalidationHandler:v43];
      _Block_release(v43);
      v44 = swift_allocObject();
      *(v44 + 16) = v10;
      *(v44 + 24) = v42;
      *(v44 + 32) = v16;
      *(v44 + 40) = v40;
      v67 = sub_1000A0870;
      v68 = v44;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v66 = sub_100147FC8;
      *(&v66 + 1) = &unk_1002759E0;
      v45 = _Block_copy(&aBlock);

      [a1 setInterruptionHandler:v45];
      _Block_release(v45);
      v46 = v62;
      [a1 setExportedInterface:v62];
      v47 = [v39 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore22DockClientCertProtocol_];
      [a1 setRemoteObjectInterface:v47];
      v48 = [objc_allocWithZone(type metadata accessor for dockCertHandler(0)) init];
      [a1 setExportedObject:v48];
      [a1 resume];

      return 1;
    }
  }

  else
  {

    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
  }

  v59(v7, v60, v3);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 67109120;
    *(v52 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v50, v51, "process %d is not entitled for certification. Add entitlements and try again", v52, 8u);
  }

  v36(v7, v3);
  [a1 invalidate];
  return 0;
}

uint64_t sub_1000A07B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A0830()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A089C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A090C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A097C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000A09E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000A0A24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A0A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009862C;

  return sub_10009A0A4(a1, v4, v5, v6);
}

uint64_t sub_1000A0B24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A0B7C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000A0BDC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000A139C;

  return sub_100099568(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000A0CD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000A0D2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000A0D80(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000A0D9C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000A139C;

  return sub_1000987E8(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1000A0E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A139C;

  return sub_10009932C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000A0F38()
{

  return _swift_deallocObject(v0, 44, 7);
}

uint64_t sub_1000A0F80(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000A139C;

  return sub_1000979F0(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1000A1048()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A1090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A139C;

  return sub_100098530(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1000A1168()
{
  result = qword_1002A6F80;
  if (!qword_1002A6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A6F80);
  }

  return result;
}

uint64_t sub_1000A11D4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000A123C(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A139C;

  return sub_100096C98(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_1000A1340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000A13A8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v44 = a1;
  v45 = a5;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 != 12 || !a7)
  {
    return;
  }

  v17 = (v7 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID);
  v18 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID) == a6 && *(v7 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID + 8) == a7;
  if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return;
  }

  v19 = *(v14 + 16);
  v43 = v7;
  v19(v16, v7 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_logger, v13);

  v20 = Logger.logObject.getter();
  v21 = a2;
  v22 = static os_log_type_t.default.getter();

  v42 = v22;
  if (!os_log_type_enabled(v20, v22))
  {

    (*(v14 + 8))(v16, v13);
    v31 = v43;
    goto LABEL_13;
  }

  v40 = v20;
  v41 = a4;
  v23 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v47 = v39;
  *v23 = 136316162;
  if (!v21)
  {

    __break(1u);
    goto LABEL_23;
  }

  v38 = v21;
  *(v23 + 4) = sub_1000952D4(v44, v21, &v47);
  *(v23 + 12) = 2080;
  v46 = 12;
  type metadata accessor for ACCEndpoint_TransportType_t(0);
  v24 = String.init<A>(describing:)();
  v26 = sub_1000952D4(v24, v25, &v47);

  *(v23 + 14) = v26;
  *(v23 + 22) = 1024;
  *(v23 + 24) = v41;
  *(v23 + 28) = 2080;
  if (!v45)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v27 = Dictionary.description.getter();
  v29 = sub_1000952D4(v27, v28, &v47);

  *(v23 + 30) = v29;
  *(v23 + 38) = 2080;
  *(v23 + 40) = sub_1000952D4(a6, a7, &v47);
  v30 = v40;
  _os_log_impl(&_mh_execute_header, v40, v42, "Inductive accessory attached: %s, transport %s, protocol %u, properties %s, connection %s", v23, 0x30u);
  swift_arrayDestroy();

  (*(v14 + 8))(v16, v13);
  a4 = v41;
  v31 = v43;
  v21 = v38;
LABEL_13:
  *v17 = a6;
  v17[1] = a7;

  v32 = *(v31 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_connectionDelegate);
  if (v32 && ([v32 respondsToSelector:"accessoryEndpointAttached:transportType:protocol:properties:forConnection:"] & 1) != 0)
  {
    swift_unknownObjectRetain();
    if (v21)
    {
      v33 = String._bridgeToObjectiveC()();
      if (v45)
      {
LABEL_17:
        v34 = a4;
        v35.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
LABEL_20:
        v36 = String._bridgeToObjectiveC()();
        [v32 accessoryEndpointAttached:v33 transportType:12 protocol:v34 properties:v35.super.isa forConnection:v36];
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      v33 = 0;
      if (v45)
      {
        goto LABEL_17;
      }
    }

    v34 = a4;
    v35.super.isa = 0;
    goto LABEL_20;
  }
}

void sub_1000A18F0(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = *(v6 + 16);
  v42 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_logger;
  v43 = v12;
  v41 = v6 + 16;
  v12(&v37 - v10, &v2[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_logger], v5);

  v44 = v2;
  v13 = v2;
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v45 = v13;
  if (v17)
  {
    v38 = v9;
    v39 = v5;
    v40 = v6;
    v18 = a1;
    v19 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v19 = 136315394;

    if (!v14)
    {
      __break(1u);
      return;
    }

    *(v19 + 4) = sub_1000952D4(v18, v14, &v46);
    *(v19 + 12) = 2080;
    v20 = *&v13[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID];
    v21 = *&v13[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID + 8];

    v22 = sub_1000952D4(v20, v21, &v46);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "acessory detached %s %s", v19, 0x16u);
    swift_arrayDestroy();

    a1 = v18;

    v5 = v39;
    v6 = v40;
    v23 = *(v40 + 8);
    v23(v11, v39);
    v9 = v38;
  }

  else
  {

    v23 = *(v6 + 8);
    v23(v11, v5);
    if (!v14)
    {
      return;
    }
  }

  v24 = &v45[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID];
  v25 = *&v45[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID] == a1 && *&v45[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID + 8] == v14;
  if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v43(v9, &v44[v42], v5);

    v26 = v14;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v27, v28);
    v37 = v26;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v40 = v6;
      v31 = v30;
      v32 = v9;
      v33 = swift_slowAlloc();
      v46 = v33;
      *v31 = 136315138;
      *(v31 + 4) = sub_1000952D4(a1, v26, &v46);
      _os_log_impl(&_mh_execute_header, v27, v28, "acessory detached %s", v31, 0xCu);
      sub_100095808(v33);

      v34 = v32;
    }

    else
    {

      v34 = v9;
    }

    v23(v34, v5);
    v35 = *&v45[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_connectionDelegate];
    if (v35)
    {
      if ([*&v45[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_connectionDelegate] respondsToSelector:{"accessoryConnectionDetached:", v37}])
      {
        swift_unknownObjectRetain();
        v36 = String._bridgeToObjectiveC()();
        [v35 accessoryConnectionDetached:v36];
        swift_unknownObjectRelease();
      }
    }

    *v24 = 0;
    *(v24 + 1) = 0xE000000000000000;
  }
}

id sub_1000A1DD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenConnect;
  if (*&v3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenConnect] != -1)
  {
    (*(v5 + 16))(&v21 - v9, &v3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_logger], v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "De-registering for MFI4 connection notifications", v14, 2u);
    }

    (*(v5 + 8))(v10, v4);
    notify_cancel(*&v3[v11]);
    *&v3[v11] = -1;
  }

  v15 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenDisconnect;
  if (*&v3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenDisconnect] != -1)
  {
    (*(v5 + 16))(v8, &v3[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_logger], v4);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "De-registering for MFI4 disconnection notifications", v18, 2u);
    }

    (*(v5 + 8))(v8, v4);
    notify_cancel(*&v3[v15]);
    *&v3[v15] = -1;
  }

  v19 = type metadata accessor for AccessoryHandler(0);
  v21.receiver = v3;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, "dealloc");
}

uint64_t type metadata accessor for AccessoryHandler(uint64_t a1)
{
  result = qword_1002A6FD8;
  if (!qword_1002A6FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000A21AC()
{
  v1 = &v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_passedMFI4Auth];
  *v1 = 0xD00000000000002FLL;
  *(v1 + 1) = 0x800000010022F650;
  v2 = &v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_MFI4AccessoryDisconnected];
  *v2 = 0xD00000000000003ALL;
  *(v2 + 1) = 0x800000010022F680;
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenConnect] = -1;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_tokenDisconnect] = -1;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_connectionDelegate] = 0;
  v3 = &v0[OBJC_IVAR____TtC14dockaccessoryd16AccessoryHandler_currentInductiveConnectionUUID];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AccessoryHandler(0);
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1000A22CC(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A2384(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000A23A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000A23BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000A2410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000A2470(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_100093D84(v2, qword_1002A6FF0);
  sub_100093DE8(v2, qword_1002A6FF0);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_1000A24FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000A2570()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_BYTE *sub_1000A25B4@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1000A25E0(unint64_t a1)
{
  result = DockCoreAccessoryType.init(rawValue:)();
  if (v3)
  {
    return 0;
  }

  if (a1 >> 15)
  {
    __break(1u);
  }

  else if (a1 > 0x7F)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000A2650(uint64_t a1, void *a2)
{
  v61._countAndFlagsBits = a1;
  v61._object = a2;

  result = String.init<A>(_:)();
  v4 = HIBYTE(v3) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_111:

    return 0;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = sub_10017C5E0(result, v3);
    v59 = v58;

    if (v59)
    {
      return 0;
    }

    goto LABEL_91;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v61._countAndFlagsBits = result;
    v61._object = (v3 & 0xFFFFFFFFFFFFFFLL);
    if (result == 43)
    {
      if (v4)
      {
        v5 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          v19 = &v61._countAndFlagsBits + 1;
          while (1)
          {
            v20 = *v19;
            v21 = v20 - 48;
            if ((v20 - 48) >= 0xA)
            {
              if ((v20 - 65) < 0x1A)
              {
                v21 = v20 - 55;
              }

              else
              {
                if ((v20 - 97) > 0x19)
                {
                  goto LABEL_89;
                }

                v21 = v20 - 87;
              }
            }

            if (!is_mul_ok(v8, 0x24uLL))
            {
              break;
            }

            v12 = __CFADD__(36 * v8, v21);
            v8 = 36 * v8 + v21;
            if (v12)
            {
              break;
            }

            ++v19;
            if (!--v5)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_89;
      }

LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v24 = &v61;
        while (1)
        {
          countAndFlagsBits_low = LOBYTE(v24->_countAndFlagsBits);
          v26 = countAndFlagsBits_low - 48;
          if ((countAndFlagsBits_low - 48) >= 0xA)
          {
            if ((countAndFlagsBits_low - 65) < 0x1A)
            {
              v26 = countAndFlagsBits_low - 55;
            }

            else
            {
              if ((countAndFlagsBits_low - 97) > 0x19)
              {
                goto LABEL_89;
              }

              v26 = countAndFlagsBits_low - 87;
            }
          }

          if (!is_mul_ok(v8, 0x24uLL))
          {
            break;
          }

          v12 = __CFADD__(36 * v8, v26);
          v8 = 36 * v8 + v26;
          if (v12)
          {
            break;
          }

          v24 = (v24 + 1);
          if (!--v4)
          {
            LOBYTE(v5) = 0;
            goto LABEL_90;
          }
        }
      }

      goto LABEL_89;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v13 = &v61._countAndFlagsBits + 1;
        while (1)
        {
          v14 = *v13;
          v15 = v14 - 48;
          if ((v14 - 48) >= 0xA)
          {
            if ((v14 - 65) < 0x1A)
            {
              v15 = v14 - 55;
            }

            else
            {
              if ((v14 - 97) > 0x19)
              {
                goto LABEL_89;
              }

              v15 = v14 - 87;
            }
          }

          if (!is_mul_ok(v8, 0x24uLL))
          {
            break;
          }

          v12 = 36 * v8 >= v15;
          v8 = 36 * v8 - v15;
          if (!v12)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_90;
          }
        }
      }

      goto LABEL_89;
    }

    goto LABEL_121;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    v5 = v60;
  }

  v7 = *result;
  if (v7 == 43)
  {
    if (v5 >= 1)
    {
      if (--v5)
      {
        if (result)
        {
          v8 = 0;
          v16 = (result + 1);
          while (1)
          {
            v17 = *v16;
            v18 = v17 - 48;
            if ((v17 - 48) >= 0xA)
            {
              if ((v17 - 65) < 0x1A)
              {
                v18 = v17 - 55;
              }

              else
              {
                if ((v17 - 97) > 0x19)
                {
                  goto LABEL_89;
                }

                v18 = v17 - 87;
              }
            }

            if (!is_mul_ok(v8, 0x24uLL))
            {
              goto LABEL_89;
            }

            v12 = __CFADD__(36 * v8, v18);
            v8 = 36 * v8 + v18;
            if (v12)
            {
              goto LABEL_89;
            }

            ++v16;
            if (!--v5)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_77;
      }

      goto LABEL_89;
    }

    goto LABEL_122;
  }

  if (v7 == 45)
  {
    if (v5 >= 1)
    {
      if (--v5)
      {
        if (result)
        {
          v8 = 0;
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9;
            v11 = v10 - 48;
            if ((v10 - 48) >= 0xA)
            {
              if ((v10 - 65) < 0x1A)
              {
                v11 = v10 - 55;
              }

              else
              {
                if ((v10 - 97) > 0x19)
                {
                  goto LABEL_89;
                }

                v11 = v10 - 87;
              }
            }

            if (!is_mul_ok(v8, 0x24uLL))
            {
              goto LABEL_89;
            }

            v12 = 36 * v8 >= v11;
            v8 = 36 * v8 - v11;
            if (!v12)
            {
              goto LABEL_89;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_90;
            }
          }
        }

LABEL_77:
        v8 = 0;
        LOBYTE(v5) = 0;
        goto LABEL_90;
      }

      goto LABEL_89;
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v5)
  {
    if (result)
    {
      v8 = 0;
      while (1)
      {
        v22 = *result;
        v23 = v22 - 48;
        if ((v22 - 48) >= 0xA)
        {
          if ((v22 - 65) < 0x1A)
          {
            v23 = v22 - 55;
          }

          else
          {
            if ((v22 - 97) > 0x19)
            {
              goto LABEL_89;
            }

            v23 = v22 - 87;
          }
        }

        if (!is_mul_ok(v8, 0x24uLL))
        {
          goto LABEL_89;
        }

        v12 = __CFADD__(36 * v8, v23);
        v8 = 36 * v8 + v23;
        if (v12)
        {
          goto LABEL_89;
        }

        ++result;
        if (!--v5)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_77;
  }

LABEL_89:
  v8 = 0;
  LOBYTE(v5) = 1;
LABEL_90:
  LOBYTE(v64) = v5;
  v27 = v5;

  if (v27)
  {
    return 0;
  }

LABEL_91:
  v61._countAndFlagsBits = v8;
  sub_1000A44D8();
  v28 = String.init<A>(_:radix:uppercase:)();
  object = v29;
  v64 = 0;
  v65 = 0xE000000000000000;
  v31 = v29 & 0x2000000000000000;
  v32 = HIBYTE(v29) & 0xF;
  v33 = v28 & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v29) & 0xF;
  }

  else
  {
    v34 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
    goto LABEL_111;
  }

  countAndFlagsBits = v28;
  if (String.count.getter() > 11)
  {
    goto LABEL_98;
  }

  result = String.count.getter();
  v36 = 12 - result;
  if (!__OFSUB__(12, result))
  {
    v37._countAndFlagsBits = 48;
    v37._object = 0xE100000000000000;
    v61 = String.init(repeating:count:)(v37, v36);

    v38._countAndFlagsBits = countAndFlagsBits;
    v38._object = object;
    String.append(_:)(v38);

    object = v61._object;
    countAndFlagsBits = v61._countAndFlagsBits;
    v31 = v61._object & 0x2000000000000000;
    v32 = (v61._object >> 56) & 0xF;
    v33 = v61._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_98:
    v39 = 0;
    if (v31)
    {
      v40 = v32;
    }

    else
    {
      v40 = v33;
    }

    v61._countAndFlagsBits = countAndFlagsBits;
    v61._object = object;
    v62 = 0;
    v63 = v40;
    while (1)
    {
      v44 = String.Iterator.next()();
      v43 = v44.value._countAndFlagsBits;
      if (!v44.value._object)
      {
        break;
      }

      if ((v39 & 1) == 0)
      {
        v45 = v64 & 0xFFFFFFFFFFFFLL;
        if ((v65 & 0x2000000000000000) != 0)
        {
          v45 = HIBYTE(v65) & 0xF;
        }

        if (v45)
        {
          v46._countAndFlagsBits = 58;
          v46._object = 0xE100000000000000;
          String.append(_:)(v46);
          v43 = v44.value._countAndFlagsBits;
        }
      }

      v41 = v44.value._object;
      String.append(_:)(*&v43);

      if (__OFADD__(v39++, 1))
      {
        __break(1u);
        goto LABEL_111;
      }
    }

    v48 = v64;
    v47 = v65;

    v49 = sub_100140998(v48, v47);
    if (v50 >> 60 == 15)
    {
      v51 = v49;

      return v51;
    }

    v52 = v49;
    v53 = v50;
    sub_1000A0CD8(v49, v50);
    v54 = sub_1001007C0(v52, v53);
    result = sub_100140D04(v54, v55);
    if (v56 >> 60 != 15)
    {
      v57 = result;
      sub_1000A452C(v52, v53);

      return v57;
    }

    goto LABEL_125;
  }

LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_1000A2C54@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v199 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = objc_allocWithZone(NSURLComponents);
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = [v11 initWithURL:v13 resolvingAgainstBaseURL:1];

  v16 = *(v8 + 8);
  v16(v10, v7);
  if (v15)
  {
    v17 = [v15 scheme];
    if (v17)
    {
      v194 = v5;
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = [v15 host];
      if (v22)
      {
        v195 = v15;
        v196 = a1;
        v23 = v22;
        v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = String.lowercased()();
        v27 = v26._countAndFlagsBits == 1801727352 && v26._object == 0xE400000000000000;
        v197 = v16;
        if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v26._countAndFlagsBits == 0x2D74696B6B636F64 ? (v62 = v26._object == 0xED00007075746573) : (v62 = 0), v62))
        {
        }

        else
        {
          v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v64 = v195;
          if ((v63 & 1) == 0)
          {

            if (qword_1002A66B0 == -1)
            {
              goto LABEL_69;
            }

            goto LABEL_292;
          }
        }

        v28 = v198;
        sub_100162A44(2, v198, v25);

        v29 = static String._fromSubstring(_:)();
        v19 = v30;

        v191 = sub_10013BB2C(2uLL, v28, v25);
        v192 = v31;
        v193 = v32;
        v34 = v33;

        v35 = HIBYTE(v19) & 0xF;
        v36 = v29 & 0xFFFFFFFFFFFFLL;
        if ((v19 & 0x2000000000000000) != 0)
        {
          v37 = HIBYTE(v19) & 0xF;
        }

        else
        {
          v37 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          if ((v19 & 0x1000000000000000) == 0)
          {
            if ((v19 & 0x2000000000000000) != 0)
            {
              v202 = v29;
              v203 = v19 & 0xFFFFFFFFFFFFFFLL;
              if (v29 == 43)
              {
                if (!v35)
                {
                  goto LABEL_284;
                }

                if (--v35)
                {
                  v40 = 0;
                  v74 = &v202 + 1;
                  while (1)
                  {
                    v75 = *v74;
                    v76 = v75 - 48;
                    if ((v75 - 48) >= 0xA)
                    {
                      if ((v75 - 65) < 0x1A)
                      {
                        v76 = v75 - 55;
                      }

                      else
                      {
                        if ((v75 - 97) > 0x19)
                        {
                          goto LABEL_120;
                        }

                        v76 = v75 - 87;
                      }
                    }

                    if (!is_mul_ok(v40, 0x24uLL))
                    {
                      break;
                    }

                    v44 = __CFADD__(36 * v40, v76);
                    v40 = 36 * v40 + v76;
                    if (v44)
                    {
                      break;
                    }

                    ++v74;
                    if (!--v35)
                    {
                      goto LABEL_121;
                    }
                  }
                }
              }

              else if (v29 == 45)
              {
                if (!v35)
                {
LABEL_282:
                  __break(1u);
                  goto LABEL_283;
                }

                if (--v35)
                {
                  v40 = 0;
                  v59 = &v202 + 1;
                  while (1)
                  {
                    v60 = *v59;
                    v61 = v60 - 48;
                    if ((v60 - 48) >= 0xA)
                    {
                      if ((v60 - 65) < 0x1A)
                      {
                        v61 = v60 - 55;
                      }

                      else
                      {
                        if ((v60 - 97) > 0x19)
                        {
                          goto LABEL_120;
                        }

                        v61 = v60 - 87;
                      }
                    }

                    if (!is_mul_ok(v40, 0x24uLL))
                    {
                      break;
                    }

                    v44 = 36 * v40 >= v61;
                    v40 = 36 * v40 - v61;
                    if (!v44)
                    {
                      break;
                    }

                    ++v59;
                    if (!--v35)
                    {
                      goto LABEL_121;
                    }
                  }
                }
              }

              else if (v35)
              {
                v40 = 0;
                v79 = &v202;
                while (1)
                {
                  v80 = *v79;
                  v81 = v80 - 48;
                  if ((v80 - 48) >= 0xA)
                  {
                    if ((v80 - 65) < 0x1A)
                    {
                      v81 = v80 - 55;
                    }

                    else
                    {
                      if ((v80 - 97) > 0x19)
                      {
                        goto LABEL_120;
                      }

                      v81 = v80 - 87;
                    }
                  }

                  if (!is_mul_ok(v40, 0x24uLL))
                  {
                    break;
                  }

                  v44 = __CFADD__(36 * v40, v81);
                  v40 = 36 * v40 + v81;
                  if (v44)
                  {
                    break;
                  }

                  v79 = (v79 + 1);
                  if (!--v35)
                  {
                    goto LABEL_121;
                  }
                }
              }

              goto LABEL_120;
            }

            if ((v29 & 0x1000000000000000) != 0)
            {
              v38 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
LABEL_279:
              v38 = _StringObject.sharedUTF8.getter();
            }

            v39 = *v38;
            if (v39 == 43)
            {
              if (v36 < 1)
              {
LABEL_283:
                __break(1u);
LABEL_284:
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
LABEL_288:
                __break(1u);
                goto LABEL_289;
              }

              v35 = v36 - 1;
              if (v36 == 1)
              {
                goto LABEL_120;
              }

              if (v38)
              {
                v40 = 0;
                v71 = v38 + 1;
                while (1)
                {
                  v72 = *v71;
                  v73 = v72 - 48;
                  if ((v72 - 48) >= 0xA)
                  {
                    if ((v72 - 65) < 0x1A)
                    {
                      v73 = v72 - 55;
                    }

                    else
                    {
                      if ((v72 - 97) > 0x19)
                      {
                        goto LABEL_120;
                      }

                      v73 = v72 - 87;
                    }
                  }

                  if (!is_mul_ok(v40, 0x24uLL))
                  {
                    goto LABEL_120;
                  }

                  v44 = __CFADD__(36 * v40, v73);
                  v40 = 36 * v40 + v73;
                  if (v44)
                  {
                    goto LABEL_120;
                  }

                  ++v71;
                  if (!--v35)
                  {
                    goto LABEL_121;
                  }
                }
              }
            }

            else if (v39 == 45)
            {
              if (v36 < 1)
              {
LABEL_281:
                __break(1u);
                goto LABEL_282;
              }

              v35 = v36 - 1;
              if (v36 == 1)
              {
                goto LABEL_120;
              }

              if (v38)
              {
                v40 = 0;
                v41 = v38 + 1;
                while (1)
                {
                  v42 = *v41;
                  v43 = v42 - 48;
                  if ((v42 - 48) >= 0xA)
                  {
                    if ((v42 - 65) < 0x1A)
                    {
                      v43 = v42 - 55;
                    }

                    else
                    {
                      if ((v42 - 97) > 0x19)
                      {
                        goto LABEL_120;
                      }

                      v43 = v42 - 87;
                    }
                  }

                  if (!is_mul_ok(v40, 0x24uLL))
                  {
                    goto LABEL_120;
                  }

                  v44 = 36 * v40 >= v43;
                  v40 = 36 * v40 - v43;
                  if (!v44)
                  {
                    goto LABEL_120;
                  }

                  ++v41;
                  if (!--v35)
                  {
                    goto LABEL_121;
                  }
                }
              }
            }

            else
            {
              if (!v36)
              {
LABEL_120:
                v40 = 0;
                LOBYTE(v35) = 1;
LABEL_121:
                LOBYTE(v206) = v35;
                if (v35)
                {
                  goto LABEL_126;
                }

                goto LABEL_125;
              }

              if (v38)
              {
                v40 = 0;
                while (1)
                {
                  v77 = *v38;
                  v78 = v77 - 48;
                  if ((v77 - 48) >= 0xA)
                  {
                    if ((v77 - 65) < 0x1A)
                    {
                      v78 = v77 - 55;
                    }

                    else
                    {
                      if ((v77 - 97) > 0x19)
                      {
                        goto LABEL_120;
                      }

                      v78 = v77 - 87;
                    }
                  }

                  if (!is_mul_ok(v40, 0x24uLL))
                  {
                    goto LABEL_120;
                  }

                  v44 = __CFADD__(36 * v40, v78);
                  v40 = 36 * v40 + v78;
                  if (v44)
                  {
                    goto LABEL_120;
                  }

                  ++v38;
                  if (!--v36)
                  {
                    LOBYTE(v35) = 0;
                    goto LABEL_121;
                  }
                }
              }
            }

            v40 = 0;
            LOBYTE(v35) = 0;
            goto LABEL_121;
          }

          v40 = sub_10017C5E0(v29, v19);
          v83 = v82;

          if ((v83 & 1) == 0)
          {
LABEL_125:
            v84 = sub_1000A25E0(v40);
            if (v85 == 2)
            {
              goto LABEL_126;
            }

            v92 = v34;
            v188 = v85;
            v189 = v84;

            v93 = String.count.getter();

            v94 = v93 - 2;
            v29 = v197;
            if (!__OFSUB__(v93, 2))
            {
              v34 = v196;
              if (v94 >= 1)
              {
                if (v94 < 0xA)
                {

                  if (qword_1002A66B0 != -1)
                  {
                    swift_once();
                  }

                  v95 = type metadata accessor for Logger();
                  sub_100093DE8(v95, qword_1002A6FF0);
                  v96 = Logger.logObject.getter();
                  v97 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v96, v97))
                  {
                    v48 = 2;
                    v98 = swift_slowAlloc();
                    *v98 = 0;
                    v99 = "Unable to parse setup URI: Invalid address encoding length";
LABEL_145:
                    _os_log_impl(&_mh_execute_header, v96, v97, v99, v98, 2u);

                    result = (v29)(v34, v7);
                    goto LABEL_45;
                  }

                  goto LABEL_146;
                }

                v64 = v92;

                v101 = v191;
                v21 = v192;
                v102 = v193;
                v103 = Substring.index(_:offsetBy:limitedBy:)();
                if (v104)
                {
                  v105 = v102;
                }

                else
                {
                  v105 = v103;
                }

                if (v105 >> 14 < v101 >> 14)
                {
                  __break(1u);
                }

                else
                {
                  v186 = v4;
                  Substring.subscript.getter();

                  v21 = static String._fromSubstring(_:)();
                  v19 = v106;
                  v107 = v193;

                  v108 = Substring.index(_:offsetBy:limitedBy:)();
                  if (v109)
                  {
                    v108 = v107;
                  }

                  if (v107 >> 14 >= v108 >> 14)
                  {
                    v110 = Substring.subscript.getter();
                    v112 = v111;
                    v198 = v113;
                    v115 = v114;

                    v193 = v21;
                    v116 = sub_1000A2650(v21, v19);
                    if (v117 >> 60 == 15)
                    {

                      if (qword_1002A66B0 != -1)
                      {
                        swift_once();
                      }

                      v118 = type metadata accessor for Logger();
                      sub_100093DE8(v118, qword_1002A6FF0);

                      v66 = Logger.logObject.getter();
                      v119 = static os_log_type_t.error.getter();

                      v120 = os_log_type_enabled(v66, v119);
                      v64 = v195;
                      v121 = v19;
                      v122 = v193;
                      if (v120)
                      {
                        v123 = swift_slowAlloc();
                        v124 = swift_slowAlloc();
                        v202 = v124;
                        *v123 = 136315138;
                        v125 = sub_1000952D4(v122, v121, &v202);

                        *(v123 + 4) = v125;
                        _os_log_impl(&_mh_execute_header, v66, v119, "Unable to parse setup URI: Invalid address encoding %s", v123, 0xCu);
                        sub_100095808(v124);

                        goto LABEL_130;
                      }

                      goto LABEL_131;
                    }

                    v34 = v116;
                    v29 = v117;

                    v206 = xmmword_10023BF90;
                    v126 = v112 >> 14;
                    v192 = v110 >> 14;
                    if (v110 >> 14 == v112 >> 14)
                    {
                      v127 = v186;
                      goto LABEL_276;
                    }

                    v128 = v112;
                    v187 = &v202 + 1;
                    v184 = xmmword_10023BFA0;
                    v129 = v110;
                    v130 = v198;
                    v131 = v115;
                    v127 = v186;
LABEL_163:
                    v185 = v126;
                    v193 = v131;
                    if (Substring.distance(from:to:)() < 13)
                    {
                      goto LABEL_276;
                    }

                    v132 = v129;
                    v19 = v127;
                    v4 = v193;
                    v191 = v132;
                    v190 = v128;
                    v198 = v130;
                    while (1)
                    {

                      v133 = Substring.index(_:offsetBy:limitedBy:)();
                      if (v134)
                      {
                        v135 = v128;
                      }

                      else
                      {
                        v135 = v133;
                      }

                      if (v192 > v135 >> 14)
                      {
                        __break(1u);
                        goto LABEL_279;
                      }

                      Substring.subscript.getter();

                      v136 = static String._fromSubstring(_:)();
                      v138 = v137;

                      v139 = HIBYTE(v138) & 0xF;
                      v140 = v136 & 0xFFFFFFFFFFFFLL;
                      if ((v138 & 0x2000000000000000) != 0)
                      {
                        v141 = HIBYTE(v138) & 0xF;
                      }

                      else
                      {
                        v141 = v136 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v141)
                      {

                        goto LABEL_260;
                      }

                      if ((v138 & 0x1000000000000000) == 0)
                      {
                        break;
                      }

                      v144 = sub_10017C5E0(v136, v138);
                      v162 = v163;
LABEL_259:

                      if ((v162 & 1) == 0)
                      {
                        sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
                        v164 = swift_allocObject();
                        *(v164 + 16) = v184;
                        *(v164 + 32) = v144;
                        v165 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
                        v204 = v165;
                        v205 = sub_1000A4474();
                        v202 = v164;
                        v166 = sub_1000A09E0(&v202, v165);
                        v167 = *v166;
                        v168 = *(*v166 + 16);
                        if (v168)
                        {
                          if (v168 <= 0xE)
                          {
                            memset(__dst, 0, sizeof(__dst));
                            v201 = v168;
                            memcpy(__dst, (v167 + 32), v168);
                            v171 = *__dst;
                            v172 = v182 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v201 << 16)) << 32);
                            v182 = v172;
                          }

                          else
                          {
                            type metadata accessor for __DataStorage();
                            swift_allocObject();
                            v169 = __DataStorage.init(bytes:length:)();
                            v170 = v169;
                            if (v168 >= 0x7FFFFFFF)
                            {
                              type metadata accessor for Data.RangeReference();
                              v171 = swift_allocObject();
                              *(v171 + 16) = 0;
                              *(v171 + 24) = v168;
                              v172 = v170 | 0x8000000000000000;
                            }

                            else
                            {
                              v171 = v168 << 32;
                              v172 = v169 | 0x4000000000000000;
                            }
                          }
                        }

                        else
                        {
                          v171 = 0;
                          v172 = 0xC000000000000000;
                        }

                        sub_100095808(&v202);
                        v192 = v171;
                        v183 = v172;
                        Data.append(_:)();
                        v173 = v190;
                        v174 = Substring.index(_:offsetBy:limitedBy:)();
                        if (v175)
                        {
                          v174 = v173;
                        }

                        if (v185 < v174 >> 14)
                        {
                          __break(1u);
                        }

                        v129 = Substring.subscript.getter();
                        v128 = v176;
                        v130 = v177;
                        v179 = v178;

                        sub_1000A0D2C(v192, v183);
                        v126 = v128 >> 14;
                        v131 = v179;
                        v192 = v129 >> 14;
                        v127 = v186;
                        if (v129 >> 14 == v128 >> 14)
                        {
LABEL_276:

                          v57 = *(&v206 + 1);
                          v56 = v206;
                          v48 = v188 & 0x1010101;
                          sub_1000A0CD8(v206, *(&v206 + 1));
                          v180 = v199;
                          static Date.now.getter();
                          Date.timeIntervalSince1970.getter();
                          v58 = v181;

                          v197(v196, v7);
                          (*(v194 + 8))(v180, v127);
                          result = sub_1000A0D2C(v206, *(&v206 + 1));
                          v55 = v189;
                          goto LABEL_134;
                        }

                        goto LABEL_163;
                      }

LABEL_260:
                      v128 = v190;
                      v4 = v193;
                      if (Substring.distance(from:to:)() < 13)
                      {
                        v127 = v19;
                        goto LABEL_276;
                      }
                    }

                    if ((v138 & 0x2000000000000000) != 0)
                    {
                      v202 = v136;
                      v203 = v138 & 0xFFFFFFFFFFFFFFLL;
                      if (v136 == 43)
                      {
                        if (!v139)
                        {
                          goto LABEL_288;
                        }

                        if (--v139)
                        {
                          v144 = 0;
                          v154 = v187;
                          while (1)
                          {
                            v155 = *v154;
                            v156 = v155 - 48;
                            if ((v155 - 48) >= 0xA)
                            {
                              if ((v155 - 65) < 0x1A)
                              {
                                v156 = v155 - 55;
                              }

                              else
                              {
                                if ((v155 - 97) > 0x19)
                                {
                                  goto LABEL_257;
                                }

                                v156 = v155 - 87;
                              }
                            }

                            if (!is_mul_ok(v144, 0x24uLL))
                            {
                              break;
                            }

                            v44 = __CFADD__(36 * v144, v156);
                            v144 = 36 * v144 + v156;
                            if (v44)
                            {
                              break;
                            }

                            ++v154;
                            if (!--v139)
                            {
                              goto LABEL_258;
                            }
                          }
                        }
                      }

                      else if (v136 == 45)
                      {
                        if (!v139)
                        {
                          goto LABEL_285;
                        }

                        if (--v139)
                        {
                          v144 = 0;
                          v148 = v187;
                          while (1)
                          {
                            v149 = *v148;
                            v150 = v149 - 48;
                            if ((v149 - 48) >= 0xA)
                            {
                              if ((v149 - 65) < 0x1A)
                              {
                                v150 = v149 - 55;
                              }

                              else
                              {
                                if ((v149 - 97) > 0x19)
                                {
                                  goto LABEL_257;
                                }

                                v150 = v149 - 87;
                              }
                            }

                            if (!is_mul_ok(v144, 0x24uLL))
                            {
                              break;
                            }

                            v44 = 36 * v144 >= v150;
                            v144 = 36 * v144 - v150;
                            if (!v44)
                            {
                              break;
                            }

                            ++v148;
                            if (!--v139)
                            {
                              goto LABEL_258;
                            }
                          }
                        }
                      }

                      else if (v139)
                      {
                        v144 = 0;
                        v159 = &v202;
                        while (1)
                        {
                          v160 = *v159;
                          v161 = v160 - 48;
                          if ((v160 - 48) >= 0xA)
                          {
                            if ((v160 - 65) < 0x1A)
                            {
                              v161 = v160 - 55;
                            }

                            else
                            {
                              if ((v160 - 97) > 0x19)
                              {
                                goto LABEL_257;
                              }

                              v161 = v160 - 87;
                            }
                          }

                          if (!is_mul_ok(v144, 0x24uLL))
                          {
                            break;
                          }

                          v44 = __CFADD__(36 * v144, v161);
                          v144 = 36 * v144 + v161;
                          if (v44)
                          {
                            break;
                          }

                          v159 = (v159 + 1);
                          if (!--v139)
                          {
                            goto LABEL_258;
                          }
                        }
                      }

                      goto LABEL_257;
                    }

                    if ((v136 & 0x1000000000000000) != 0)
                    {
                      v142 = ((v138 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    }

                    else
                    {
                      v142 = _StringObject.sharedUTF8.getter();
                    }

                    v143 = *v142;
                    if (v143 == 43)
                    {
                      if (v140 < 1)
                      {
                        goto LABEL_286;
                      }

                      v139 = v140 - 1;
                      if (v140 == 1)
                      {
                        goto LABEL_257;
                      }

                      if (v142)
                      {
                        v144 = 0;
                        v151 = v142 + 1;
                        while (1)
                        {
                          v152 = *v151;
                          v153 = v152 - 48;
                          if ((v152 - 48) >= 0xA)
                          {
                            if ((v152 - 65) < 0x1A)
                            {
                              v153 = v152 - 55;
                            }

                            else
                            {
                              if ((v152 - 97) > 0x19)
                              {
                                goto LABEL_257;
                              }

                              v153 = v152 - 87;
                            }
                          }

                          if (!is_mul_ok(v144, 0x24uLL))
                          {
                            goto LABEL_257;
                          }

                          v44 = __CFADD__(36 * v144, v153);
                          v144 = 36 * v144 + v153;
                          if (v44)
                          {
                            goto LABEL_257;
                          }

                          ++v151;
                          if (!--v139)
                          {
                            goto LABEL_258;
                          }
                        }
                      }
                    }

                    else if (v143 == 45)
                    {
                      if (v140 < 1)
                      {
                        goto LABEL_287;
                      }

                      v139 = v140 - 1;
                      if (v140 == 1)
                      {
                        goto LABEL_257;
                      }

                      if (v142)
                      {
                        v144 = 0;
                        v145 = v142 + 1;
                        while (1)
                        {
                          v146 = *v145;
                          v147 = v146 - 48;
                          if ((v146 - 48) >= 0xA)
                          {
                            if ((v146 - 65) < 0x1A)
                            {
                              v147 = v146 - 55;
                            }

                            else
                            {
                              if ((v146 - 97) > 0x19)
                              {
                                goto LABEL_257;
                              }

                              v147 = v146 - 87;
                            }
                          }

                          if (!is_mul_ok(v144, 0x24uLL))
                          {
                            goto LABEL_257;
                          }

                          v44 = 36 * v144 >= v147;
                          v144 = 36 * v144 - v147;
                          if (!v44)
                          {
                            goto LABEL_257;
                          }

                          ++v145;
                          if (!--v139)
                          {
                            goto LABEL_258;
                          }
                        }
                      }
                    }

                    else
                    {
                      if (!v140)
                      {
LABEL_257:
                        v144 = 0;
                        LOBYTE(v139) = 1;
                        goto LABEL_258;
                      }

                      if (v142)
                      {
                        v144 = 0;
                        while (1)
                        {
                          v157 = *v142;
                          v158 = v157 - 48;
                          if ((v157 - 48) >= 0xA)
                          {
                            if ((v157 - 65) < 0x1A)
                            {
                              v158 = v157 - 55;
                            }

                            else
                            {
                              if ((v157 - 97) > 0x19)
                              {
                                goto LABEL_257;
                              }

                              v158 = v157 - 87;
                            }
                          }

                          if (!is_mul_ok(v144, 0x24uLL))
                          {
                            goto LABEL_257;
                          }

                          v44 = __CFADD__(36 * v144, v158);
                          v144 = 36 * v144 + v158;
                          if (v44)
                          {
                            goto LABEL_257;
                          }

                          ++v142;
                          if (!--v140)
                          {
                            LOBYTE(v139) = 0;
                            goto LABEL_258;
                          }
                        }
                      }
                    }

                    v144 = 0;
                    LOBYTE(v139) = 0;
LABEL_258:
                    __dst[0] = v139;
                    v162 = v139;
                    goto LABEL_259;
                  }
                }

                __break(1u);
LABEL_292:
                swift_once();
LABEL_69:
                v65 = type metadata accessor for Logger();
                sub_100093DE8(v65, qword_1002A6FF0);

                v66 = Logger.logObject.getter();
                v67 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v66, v67))
                {
                  v68 = swift_slowAlloc();
                  v69 = swift_slowAlloc();
                  v202 = v69;
                  *v68 = 136315138;
                  v70 = sub_1000952D4(v19, v21, &v202);

                  *(v68 + 4) = v70;
                  _os_log_impl(&_mh_execute_header, v66, v67, "Unable to parse setup URI: %s not a DockKit URI", v68, 0xCu);
                  sub_100095808(v69);

LABEL_130:

LABEL_132:
                  result = (v197)(v196, v7);
                  goto LABEL_133;
                }

                goto LABEL_131;
              }

              if (qword_1002A66B0 == -1)
              {
LABEL_143:
                v100 = type metadata accessor for Logger();
                sub_100093DE8(v100, qword_1002A6FF0);
                v96 = Logger.logObject.getter();
                v97 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v96, v97))
                {
                  v48 = 2;
                  v98 = swift_slowAlloc();
                  *v98 = 0;
                  v99 = "Unable to parse setup URI: Invalid setup payload length";
                  goto LABEL_145;
                }

LABEL_146:

                result = (v29)(v34, v7);
                goto LABEL_133;
              }

LABEL_289:
              swift_once();
              goto LABEL_143;
            }

            __break(1u);
            goto LABEL_281;
          }
        }

LABEL_126:

        if (qword_1002A66B0 != -1)
        {
          swift_once();
        }

        v86 = type metadata accessor for Logger();
        sub_100093DE8(v86, qword_1002A6FF0);

        v66 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();

        v88 = os_log_type_enabled(v66, v87);
        v64 = v195;
        if (v88)
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v202 = v90;
          *v89 = 136315138;
          v91 = sub_1000952D4(v29, v19, &v202);

          *(v89 + 4) = v91;
          _os_log_impl(&_mh_execute_header, v66, v87, "Unable to parse setup URI: Invalid setup header encoding %s", v89, 0xCu);
          sub_100095808(v90);

          goto LABEL_130;
        }

LABEL_131:

        goto LABEL_132;
      }
    }

    if (qword_1002A66B0 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100093DE8(v50, qword_1002A6FF0);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v48 = 2;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Unable to parse setup URI: Invalid URI format", v53, 2u);

      goto LABEL_44;
    }

LABEL_47:
    result = (v16)(a1, v7);
LABEL_133:
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v34 = 0;
    v29 = 0;
    v58 = 0;
    v48 = 2;
    goto LABEL_134;
  }

  if (qword_1002A66B0 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100093DE8(v45, qword_1002A6FF0);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v46, v47))
  {

    goto LABEL_47;
  }

  v48 = 2;
  v49 = swift_slowAlloc();
  *v49 = 0;
  _os_log_impl(&_mh_execute_header, v46, v47, "Unable to parse setup URI: Invalid URI format", v49, 2u);

LABEL_44:
  result = (v16)(a1, v7);
LABEL_45:
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v34 = 0;
  v29 = 0;
  v58 = 0;
LABEL_134:
  *a2 = v55;
  *(a2 + 1) = v56;
  *(a2 + 2) = v57;
  *(a2 + 3) = v48;
  *(a2 + 4) = v34;
  *(a2 + 5) = v29;
  *(a2 + 6) = v58;
  return result;
}
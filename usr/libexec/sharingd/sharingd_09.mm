void sub_1002705B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained airDropController:*(a1 + 32) didChange:*(*(a1 + 32) + 24)];
}

uint64_t SDAutoUnlockAuthPromptRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v27 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_40;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_40:
          *(a1 + 32) = v23;
          goto LABEL_41;
        }

        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadData();
        v15 = 16;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100271888(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@: loadIconHandler is nil.", &v2, 0xCu);
}

id sub_1002721A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a4)
  {
    return [a10 notifyClient:a4];
  }

  else
  {
    return [a10 parseResults:a6 port:__rev16(a7) txtLen:a8 txtRecord:a9 interface:a3];
  }
}

id sub_1002729F8(uint64_t a1)
{
  v2 = +[SDAutoUnlockWiFiManager sharedManager];
  v3 = [*(a1 + 32) wifiRequest];
  [v2 cancelWiFiRequest:v3];

  v4 = *(a1 + 32);

  return [v4 setWifiRequest:0];
}

id sub_100272B30(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked to complete attempt if necessary", buf, 2u);
  }

  [*(a1 + 32) setShouldWaitToCompleteUnlock:0];
  v3 = [*(a1 + 32) prewarmIdleStartDate];
  [v3 timeIntervalSinceNow];
  [*(a1 + 32) setPrewarmIdleTime:-v4];

  result = [*(a1 + 32) isWaitingToCompleteUnlock];
  if (result)
  {
    result = [*(a1 + 32) isAuthenticatingForSiri];
    if ((result & 1) == 0)
    {
      v6 = auto_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Completing waiting unlock attempt", v7, 2u);
      }

      return [*(a1 + 32) consumeAuthTokenIfReady];
    }
  }

  return result;
}

void sub_100272CB8(uint64_t a1)
{
  if ([*(a1 + 32) isWaitingToCompleteUnlock])
  {
    v2 = auto_unlock_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Tearing down AWDL", v6, 2u);
    }

    [*(a1 + 32) cancelWiFiRequest];
    v3 = objc_alloc_init(SDAutoUnlockCleanUpAWDL);
    [(SDAutoUnlockCleanUpAWDL *)v3 setVersion:1];
    v4 = *(a1 + 32);
    v5 = [(SDAutoUnlockCleanUpAWDL *)v3 data];
    [v4 sendData:v5 type:15 completionHandler:&stru_1008D6670];
  }
}

void sub_100272D8C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10027B940();
    }
  }
}

id sub_100273278(uint64_t a1)
{
  v2 = +[SDAutoUnlockWiFiManager sharedManager];
  v3 = [*(a1 + 32) wifiRequest];
  [v2 cancelWiFiRequest:v3];

  v4 = *(a1 + 32);

  return [v4 setWifiRequest:0];
}

void sub_100274F58(uint64_t a1)
{
  v2 = [*(a1 + 32) autoUnlockDevice];
  v3 = [v2 supportsApproveIcon];

  if (v3)
  {
    [*(a1 + 32) setImageData:*(a1 + 40)];
    [*(a1 + 32) setImageHash:*(a1 + 48)];
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) deviceID];
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Image data updated (%@)", &v17, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = [v6 appName];
    [v6 sendAuthPromptRequestWithImageHash:v7 appName:v8];

    v9 = [*(a1 + 32) iconTransferStore];
    v10 = [*(a1 + 32) imageHash];
    v11 = [*(a1 + 32) deviceID];
    [*(a1 + 32) setImageDataAlreadyCached:{objc_msgSend(v9, "imageCachedForHash:device:", v10, v11)}];

    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) imageDataAlreadyCached];
      v14 = @"NO";
      if (v13)
      {
        v14 = @"YES";
      }

      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Image already cached: %@", &v17, 0xCu);
    }

    v15 = *(a1 + 32);
    v16 = [v15 imageData];
    [v15 sendAuthPromptImageDataIfReady:v16];
  }

  else
  {
    v16 = auto_unlock_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not updating icon, watch doesn't support icons", &v17, 2u);
    }
  }
}

void sub_100275244(uint64_t a1)
{
  *(*(a1 + 32) + 301) = *(a1 + 40);
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if ([*(a1 + 32) chosenDevice])
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = [*(a1 + 32) deviceID];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Chosen device updated: %@ (%@)", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [v5 imageData];
  [v5 sendAuthPromptImageDataIfReady:v6];
}

void sub_1002762D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002762F4(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Confirmation timer fired", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained notifyDelegateWithError:*(a1 + 32)];
}

id sub_1002764DC(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) rangingDisabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setInRange:1];
    [*(a1 + 32) setDistance:&off_100910608];
    v4 = *(a1 + 32);

    return [v4 handlePeerInRange];
  }

  v6 = [v3 wifiRequest];
  v7 = [v6 wifiRangingResults];
  [*(a1 + 32) setWifiRangingResults:v7];

  v8 = [*(a1 + 32) wifiRequest];
  v9 = [v8 wifiRangingError];
  v10 = [v9 domain];
  [*(a1 + 32) setWifiErrorDomain:v10];

  v11 = [*(a1 + 32) wifiRequest];
  v12 = [v11 wifiRangingError];
  [*(a1 + 32) setWifiRangingErrorCode:{objc_msgSend(v12, "code")}];

  v13 = +[NSDate date];
  v14 = [*(a1 + 32) rangingStart];
  [v13 timeIntervalSinceDate:v14];
  [*(a1 + 32) setRangingInterval:?];

  v15 = auto_unlock_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) wifiErrorDomain];
    v18 = *(a1 + 48);
    *buf = 138412802;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    v26 = 1024;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "AWDL ranging results returned %@, domain: %@, error %d", buf, 0x1Cu);
  }

  if (*(a1 + 48))
  {
    goto LABEL_8;
  }

  if (![*(a1 + 32) peerInRange:*(a1 + 40)])
  {
    if (!*(a1 + 48))
    {
      return [*(a1 + 32) handlePeerOutOfRange];
    }

LABEL_8:
    [*(a1 + 32) setRangingTimedOut:1];
    [*(a1 + 32) setRangingErrorString:@"Ranging Timeout"];
    if ([*(a1 + 32) wifiRangingErrorCode])
    {
      v19 = [*(a1 + 32) rangingErrorString];
      v20 = -[NSObject stringByAppendingFormat:](v19, "stringByAppendingFormat:", @" (%ld)", [*(a1 + 32) wifiRangingErrorCode]);
      [*(a1 + 32) setRangingErrorString:v20];
    }

    else
    {
      v19 = auto_unlock_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10027B9EC();
      }
    }

    return [*(a1 + 32) handlePeerOutOfRange];
  }

  v21 = auto_unlock_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Peer in range", buf, 2u);
  }

  [*(a1 + 32) setInRange:1];
  return [*(a1 + 32) handlePeerInRange];
}

void sub_100278EDC(id a1, id a2)
{
  v2 = a2;
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting wifi request", v4, 2u);
  }

  v2[2](v2, 1);
}

void sub_100278F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) wifiRequest];
    *buf = 136315650;
    v15 = "[SDAutoUnlockLockSession startAWDL]_block_invoke";
    v16 = 2112;
    v17 = v6;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s AWDL started request:%@ error:%d", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (a3)
  {
    [WeakRetained invalidateResponseTimer];

    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = SFAutoUnlockErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"AWDL network failed to start";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [NSError errorWithDomain:v9 code:192 userInfo:v10];
    [v8 notifyDelegateWithError:v11];
  }

  else
  {
    [WeakRetained handleAWDLUp];
  }
}

void sub_1002790F4(uint64_t a1, uint64_t a2)
{
  v4 = auto_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Peer found (awdl up same time : %@)", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handlePeerFound:a2];
}

void sub_1002791D4(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ranging started", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleRangingStarted];
}

void sub_100279254(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = auto_unlock_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ranging completed", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [v5 code];

  [WeakRetained handleRangingResults:v6 errorCode:v9];
}

void sub_100279310(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleWiFiRequestInvalidated];
}

void sub_100279AF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setAttemptError:v3];
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10027BF84();
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }
  }
}

void sub_100279E08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) invalidateResponseTimer];
    v3 = *(a1 + 32);
    v4 = SFAutoUnlockErrorDomain;
    v7 = NSLocalizedDescriptionKey;
    v8 = @"Auth prompt request failed";
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:v4 code:200 userInfo:v5];
    [v3 notifyDelegateWithError:v6];
  }
}

void sub_10027A3DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error sending image data %@", buf, 0xCu);
    }

    [*(a1 + 32) invalidateResponseTimer];
    v5 = *(a1 + 32);
    v6 = SFAutoUnlockErrorDomain;
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Image data message failed";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [NSError errorWithDomain:v6 code:202 userInfo:v7];
    [v5 notifyDelegateWithError:v8];
  }
}

void sub_10027A6C0(uint64_t a1)
{
  [*(a1 + 32) setErrorType:5];
  [*(a1 + 32) invalidateResponseTimer];
  v2 = *(a1 + 32);
  v3 = SFAutoUnlockErrorDomain;
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Exchange response failed";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v5 = [NSError errorWithDomain:v3 code:103 userInfo:v4];
  [v2 notifyDelegateWithError:v5];
}

void sub_10027AB98(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    [*(a1 + 40) setAttemptError:?];
    [*(a1 + 40) invalidateConfirmationTimer];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
LABEL_7:
    [v4 notifyDelegateWithError:v5];
    goto LABEL_8;
  }

  v6 = *(a1 + 40);
  if (v3)
  {
    [v6 setAttemptError:v3];
    [*(a1 + 40) invalidateConfirmationTimer];
    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error sending confirmation", v14, 2u);
    }

    [*(a1 + 40) lockKeyBagIfNeeded];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    goto LABEL_7;
  }

  v8 = [v6 canceled];
  v9 = *(a1 + 40);
  if (v8)
  {
    [v9 invalidateConfirmationTimer];
    v10 = SFAutoUnlockErrorDomain;
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Attempt Cancelled";
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [NSError errorWithDomain:v10 code:118 userInfo:v11];

    [*(a1 + 40) notifyDelegateWithError:v12];
  }

  else if ([v9 supportsConfirmationACK])
  {
    v13 = auto_unlock_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Waiting for confirmation ack", v14, 2u);
    }
  }

  else
  {
    [*(a1 + 40) handleConfirmationACK];
  }

LABEL_8:
}

void sub_10027B940()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027B9B0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027B9EC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BA28()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027BB0C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027BB7C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BBB8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BBF4(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 attemptType];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected attempt type: %d", v3, 8u);
}

void sub_10027BC80()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BCBC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027BD2C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BDDC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027BE4C(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Skip ranging is %d", v2, 8u);
}

void sub_10027BF48()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027BF84()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10027BFF4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027C030()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10027C448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10027C470(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10027D5F4(a1);
  }
}

void sub_10027C694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10027C6B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10027D5F4(a1);
  }
}

void sub_10027CD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_10027CD58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 onqueue_connectionInvalidated:v4];

    WeakRetained = v4;
  }
}

void sub_10027CFA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  dispatch_queue_set_specific(*(*(a1 + 40) + 32), "SDXPCDaemonConnection", v2, 0);
  [*(a1 + 48) invoke];
  dispatch_queue_set_specific(*(*(a1 + 40) + 32), "SDXPCDaemonConnection", 0, 0);

  CFRelease(v2);
}

void sub_10027D5F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained sd_description];
  sub_100008A4C();
  sub_1000088E8(&_mh_execute_header, v3, v4, "Failed to get remote object proxy for %@ (%@)", v5, v6, v7, v8);
}

uint64_t sub_10027D6D8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009734F8);
  v1 = sub_10000C4AC(v0, qword_1009734F8);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10027D7A0(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10027D900, 0, 0);
}

uint64_t sub_10027D900()
{
  v1 = v0;
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v2 = static NSUserDefaults.airdrop.getter();
  v3 = SFAirDropUserDefaults.overrideReceivedFilesPathiOS.getter();

  if (v3)
  {
    v4 = v0 + 31;
    URL.init(fileURLWithPath:)();
    sub_10028088C(&qword_100974740, &qword_1007F6608);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = NSFileProtectionKey;
    *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v6 = NSFileProtectionKey;
    v7 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v8 = sub_10027FB0C(inited);
    swift_setDeallocating();
    sub_100005508(inited + 32, &qword_100974748, &qword_1007F6610);
    v9 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    sub_1003CDFEC(v8);

    type metadata accessor for FileAttributeKey(0);
    sub_100280C30(&qword_100974750, type metadata accessor for FileAttributeKey, &unk_1007F74CC);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v1[21] = 0;
    v14 = [v9 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:isa error:v1 + 21];

    v15 = v1[21];
    if (v14)
    {
      (*(v1[28] + 32))(v1[22], *v4, v1[27]);
LABEL_7:
      v38 = v15;

      v39 = v1[1];
      goto LABEL_13;
    }

    v40 = v1[31];
LABEL_11:
    v43 = v1[27];
    v44 = v1[28];
    v45 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v44 + 8))(v40, v43);
    goto LABEL_12;
  }

  v16 = sub_1001F17F4();
  if (v16)
  {
    v18 = v0 + 30;
    v17 = v1[30];
    v20 = v1[28];
    v19 = v1[29];
    v21 = v1[26];
    v22 = v1[24];
    v23 = v1[25];
    v48 = v1[27];
    v24 = v16;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = *(v20 + 32);
    v47(v17, v19, v48);
    v1[14] = 0xD000000000000011;
    v1[15] = 0x8000000100788A20;
    v25 = enum case for URL.DirectoryHint.isDirectory(_:);
    v49 = *(v23 + 104);
    v49(v21, enum case for URL.DirectoryHint.isDirectory(_:), v22);
    sub_10001229C();
    URL.append<A>(path:directoryHint:)();
    v26 = *(v23 + 8);
    v26(v21, v22);
    v1[16] = UUID.uuidString.getter();
    v1[17] = v27;
    v49(v21, v25, v22);
    URL.append<A>(path:directoryHint:)();
    v26(v21, v22);

    v1[18] = 0x73656C6946;
    v1[19] = 0xE500000000000000;
    v49(v21, v25, v22);
    URL.append<A>(path:directoryHint:)();
    v26(v21, v22);
    sub_10028088C(&qword_100974740, &qword_1007F6608);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_1007F5670;
    *(v28 + 32) = NSFileProtectionKey;
    *(v28 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v29 = NSFileProtectionKey;
    v30 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v31 = sub_10027FB0C(v28);
    swift_setDeallocating();
    sub_100005508(v28 + 32, &qword_100974748, &qword_1007F6610);
    v32 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v33);
    v35 = v34;
    sub_1003CDFEC(v31);

    type metadata accessor for FileAttributeKey(0);
    sub_100280C30(&qword_100974750, type metadata accessor for FileAttributeKey, &unk_1007F74CC);
    v36 = Dictionary._bridgeToObjectiveC()().super.isa;

    v1[20] = 0;
    v37 = [v32 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:v36 error:v1 + 20];

    v15 = v1[20];
    if (v37)
    {
      v47(v1[22], *v18, v1[27]);
      goto LABEL_7;
    }

    v40 = v1[30];
    goto LABEL_11;
  }

  v41 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100280C30(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v41 - 8) + 104))(v42, enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:), v41);
  swift_willThrow();
LABEL_12:

  v39 = v1[1];
LABEL_13:

  return v39();
}

id variable initialization expression of SDB389BubbleMonitor.bubbleScanner()
{
  v0 = objc_allocWithZone(SFDeviceDiscovery);

  return [v0 init];
}

id sub_10027E114(void *a1, SEL *a2)
{
  v2 = [objc_opt_self() *a2];

  return v2;
}

id variable initialization expression of SDAirDropService.bleController()
{
  if (qword_100973AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A0CA0;

  return v1;
}

uint64_t variable initialization expression of SDAirDropService.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_100280C30(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_1002808D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of SDAirDropHashStoreCDB.reader()
{
  sub_1000276B4(0, &qword_100973C78, NSData_ptr);
  v0 = objc_allocWithZone(CUKeyValueStoreReader);
  swift_getObjCClassFromMetadata();

  return [v0 initWithKeyType:? valueType:?];
}

id variable initialization expression of SDB389SetupAgent.queue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = CUMainQueue();

  return v3;
}

_DWORD *sub_10027E4F8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_10027E508()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10027E57C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10027E5C0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10027E638(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10027E6B8@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

Swift::Int sub_10027E6FC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10027E760(uint64_t a1, uint64_t a2)
{
  v4 = sub_100280C30(&qword_1009744A0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10027E7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10027E844()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10027E88C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10027E8E0(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974918, type metadata accessor for LAError, &unk_1007F754C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10027E94C(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974918, type metadata accessor for LAError, &unk_1007F754C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10027E9B8(void *a1, uint64_t a2)
{
  v4 = sub_100280C30(&qword_100974918, type metadata accessor for LAError, &unk_1007F754C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10027EA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100280C30(&qword_100974918, type metadata accessor for LAError, &unk_1007F754C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10027EAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10027EB48(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974750, type metadata accessor for FileAttributeKey, &unk_1007F74CC);
  v3 = sub_100280C30(&qword_100974998, type metadata accessor for FileAttributeKey, &unk_1007F7128);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10027EC04(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974988, type metadata accessor for FileProtectionType, &unk_1007F729C);
  v3 = sub_100280C30(&qword_100974990, type metadata accessor for FileProtectionType, &unk_1007F723C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10027ECC0(uint64_t a1)
{
  v2 = sub_100280C30(&qword_1009745F8, type metadata accessor for Name, &unk_1007F60CC);
  v3 = sub_100280C30(&qword_100974600, type metadata accessor for Name, &unk_1007F606C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10027ED7C(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974608, type metadata accessor for URLResourceKey, &unk_1007F5AFC);
  v3 = sub_100280C30(&unk_100974610, type metadata accessor for URLResourceKey, &unk_1007F5A9C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10027EE38@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10027EE80(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974978, type metadata accessor for PFMediaCapabilitiesOutOfBandHintsKey, &unk_1007F748C);
  v3 = sub_100280C30(&qword_100974980, type metadata accessor for PFMediaCapabilitiesOutOfBandHintsKey, &unk_1007F73EC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10027EF3C(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974920, type metadata accessor for LAError, &unk_1007F76A0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10027EFA8(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974920, type metadata accessor for LAError, &unk_1007F76A0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10027F014(uint64_t a1)
{
  v2 = sub_100280C30(&qword_100974918, type metadata accessor for LAError, &unk_1007F754C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10027F080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100280C30(&qword_100974918, type metadata accessor for LAError, &unk_1007F754C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10027F104()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10027F140(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10027F194(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10027F208(void *a1, uint64_t *a2)
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

void sub_10027F290()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for URL();
  isa = v52[-1].isa;
  v5 = __chkstk_darwin(v52);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = sub_1001F17F4();
  if (v10)
  {
    v11 = v10;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *&v57[0] = 0xD000000000000011;
    *(&v57[0] + 1) = 0x8000000100788A20;
    (*(v1 + 104))(v3, enum case for URL.DirectoryHint.isDirectory(_:), v0);
    sub_10001229C();
    URL.append<A>(path:directoryHint:)();
    (*(v1 + 8))(v3, v0);
    v50 = objc_opt_self();
    v12 = [v50 defaultManager];
    v49 = v9;
    URL.relativePath.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v12 enumeratorAtPath:v13];

    v51 = v14;
    if (v14)
    {
      v16 = (isa + 8);
      *&v15 = 136315138;
      v48 = v15;
      *&v15 = 136315394;
      v47 = v15;
      v17 = v49;
      while (1)
      {
        if ([v51 nextObject])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v55 = 0u;
          v56 = 0u;
        }

        v57[0] = v55;
        v57[1] = v56;
        if (!*(&v56 + 1))
        {
          (*v16)(v17, v52);

          sub_100005508(v57, &unk_1009746F0, &qword_1007F90B0);
          return;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v19 = v53;
        v20 = v54;
        if (qword_1009734F0 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_10000C4AC(v21, qword_1009734F8);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *&v57[0] = v25;
          *v24 = v48;
          *(v24 + 4) = sub_10000C4E4(v19, v20, v57);
          _os_log_impl(&_mh_execute_header, v22, v23, "Removing stale AirDrop download %s", v24, 0xCu);
          sub_10000C60C(v25);
          v17 = v49;
        }

        v26 = [v50 defaultManager];
        URL.appendingPathComponent(_:)();
        URL._bridgeToObjectiveC()(v27);
        v29 = v28;
        (*v16)(v7, v52);
        *&v57[0] = 0;
        v30 = [v26 removeItemAtURL:v29 error:v57];

        if (v30)
        {
          v18 = *&v57[0];
        }

        else
        {
          v31 = *&v57[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();

          swift_errorRetain();
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *&v57[0] = v36;
            *v34 = v47;
            v37 = sub_10000C4E4(v19, v20, v57);

            *(v34 + 4) = v37;
            *(v34 + 12) = 2112;
            swift_errorRetain();
            v38 = _swift_stdlib_bridgeErrorToNSError();
            *(v34 + 14) = v38;
            *v35 = v38;
            _os_log_impl(&_mh_execute_header, v32, v33, "Failed to delete file %s %@", v34, 0x16u);
            sub_100005508(v35, &qword_100975400, &qword_1007F65D0);
            v17 = v49;

            sub_10000C60C(v36);
          }

          else
          {
          }
        }
      }

      (*v16)(v17, v52);
    }

    else
    {
      if (qword_1009734F0 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000C4AC(v43, qword_1009734F8);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Failed to create enumerator for AirDropHashDB directory", v46, 2u);
      }

      (*(isa + 1))(v49, v52);
    }
  }

  else
  {
    if (qword_1009734F0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000C4AC(v39, qword_1009734F8);
    v52 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v52, v40, "Unable to get downloads real path failed to cleanup directory", v41, 2u);
    }

    v42 = v52;
  }
}

unint64_t sub_10027FB0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_100974758, &qword_1007F6618);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1005818A4();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10027FC04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10028088C(&qword_100974548, &qword_1007F6500);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LODWORD(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_100570798(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100570798(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10027FD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&unk_1009744B0, &unk_1007F9630);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, v13, &qword_1009832B0, &unk_1007F64D0);
      result = sub_100570754(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000106E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10027FE68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009744D8, &unk_1007F64F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v11, &qword_1009744E0, &qword_1007F8960);
      v5 = v11;
      result = sub_100570804(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000106E0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10027FF90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009745B8, &unk_1007F6510);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100012854(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100280094(uint64_t a1)
{
  v2 = sub_10028088C(&unk_1009745D0, &unk_1007F6530);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10028088C(&qword_100976310, &unk_10080AFF0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v9, v5, &unk_1009745D0, &unk_1007F6530);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100012854(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for RegistrationState(0);
      result = sub_1002826A8(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for RegistrationState);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10028027C(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009745C0, &qword_1007F6520);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10028088C(&qword_1009745C8, &qword_1007F6528);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v9, v5, &qword_1009745C0, &qword_1007F6520);
      result = sub_10000EBD4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100280464(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009746C8, &qword_1007F65A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10028088C(&qword_1009746D0, &qword_1007F65B0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v9, v5, &qword_1009746C8, &qword_1007F65A8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100012854(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
      result = sub_1002826A8(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100280660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_100974970, &unk_1007F9750);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100570804(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100280758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10028088C(&qword_100974550, &qword_1007F6508);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_10000DA98(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_10000DA98(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10028088C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1002808D4()
{
  result = qword_100973C70;
  if (!qword_100973C70)
  {
    sub_100280938(&unk_10097A630, &unk_1007F5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973C70);
  }

  return result;
}

uint64_t sub_100280938(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_100280A7C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100280A88(uint64_t a1, int a2)
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

uint64_t sub_100280AA8(uint64_t result, int a2, int a3)
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

__n128 sub_100280B24(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100280B38(uint64_t a1, int a2)
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

uint64_t sub_100280B58(uint64_t result, int a2, int a3)
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

uint64_t sub_100280C30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002811D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&unk_100976420, &qword_1007F6600);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100012854(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002812E0(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100974710, &qword_1007F65E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10028088C(&qword_100974718, &unk_1007F65F0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v9, v5, &qword_100974710, &qword_1007F65E8);
      result = sub_100570848(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for SFAirDropSend.Transfer();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100281500(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009746D8, &qword_1007F65B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10028088C(&unk_1009746E0, &unk_1007F65C0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v9, v5, &qword_1009746D8, &qword_1007F65B8);
      result = sub_10000EBD4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for SFNWInterfaceType();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100281720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_100974630, &unk_1007F6570);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v11, &qword_100974638, &qword_1007FB620);
      v5 = v11;
      result = sub_10000FFF8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000106E0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100281848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009746B8, &qword_1007F6598);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v11, &qword_1009746C0, &qword_1007F65A0);
      v5 = v11;
      result = sub_1005818A4();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000106E0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100281970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009745E0, &qword_1007F6540);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100012854(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100281A80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10028088C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100012854(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100281B7C(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100974700, &qword_1007F65D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10028088C(&qword_1009762A0, &qword_1007F65E0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v9, v5, &unk_100974700, &qword_1007F65D8);
      result = sub_100570848(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for SFAirDropReceive.Transfer();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100281DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_100974770, &unk_1007F6630);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v11, &qword_100974778, &unk_1008075F0);
      v5 = v11;
      result = sub_1005818A4();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000106E0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100281ED8(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100974760, &unk_1007F6620);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10028088C(&unk_100976450, &unk_1007F9720);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v9, v5, &unk_100974760, &unk_1007F6620);
      result = sub_100570988(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for URL();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002820D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10028088C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100012854(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002821C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009762D0, &unk_1007F9440);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100012854(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002822DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009745E8, &qword_1007F6548);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      sub_10000FF90(i, &v11, &qword_1009745F0, &unk_1007F6550);
      v5 = v11;
      result = sub_100570AEC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_1000106E0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10028241C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_10028088C(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_10028088C(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_10000FF90(v16, v12, a2, v27);
      result = sub_10000EBD4(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100282600(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100282638(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100282670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1002826A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_100282710(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100282884(uint64_t a1, int a2)
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

uint64_t sub_1002828A4(uint64_t result, int a2, int a3)
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

unint64_t sub_100283208()
{
  result = qword_100974948;
  if (!qword_100974948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974948);
  }

  return result;
}

Swift::Int sub_1002836B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002836FC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100283740()
{
  if (*v0)
  {
    return 0x49746361746E6F63;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_10028377C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100283868(uint64_t a1)
{
  v2 = sub_10028662C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002838A4(uint64_t a1)
{
  v2 = sub_10028662C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002838E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10028088C(&qword_100974C68, &qword_1007F7E80);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10002CDC0(a1, a1[3]);
  sub_10028662C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

Swift::Int sub_100283A74()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100283ADC(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100283B2C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100283B90@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100285320(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100283BE0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100283C84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64497344746C61;
  if (v2 != 1)
  {
    v4 = 0x726F727265;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C646E6168;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64497344746C61;
  if (*a2 != 1)
  {
    v8 = 0x726F727265;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C646E6168;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100283D7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100283E18(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100283EA0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100283F38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100285504(*a1);
  *a2 = result;
  return result;
}

void sub_100283F68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64497344746C61;
  if (v2 != 1)
  {
    v5 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C646E6168;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100283FC0()
{
  v1 = 0x64497344746C61;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C646E6168;
  }
}

unint64_t sub_100284014@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100285504(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100284048(uint64_t a1)
{
  v2 = sub_1002865D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100284084(uint64_t a1)
{
  v2 = sub_1002865D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002840C0()
{
  _StringGuts.grow(_:)(51);
  v1._object = 0x8000000100788E90;
  v1._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x44495344746C6120;
  v2._object = 0xE900000000000020;
  String.append(_:)(v2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._countAndFlagsBits = 0x6F43726F72726520;
  v3._object = 0xEC000000203A6564;
  String.append(_:)(v3);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return 0;
}

uint64_t sub_1002841C8(void *a1)
{
  v3 = sub_10028088C(&qword_100974C50, &qword_1007F7E70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002CDC0(a1, a1[3]);
  sub_1002865D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_10028436C()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

void sub_10028443C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v4)
    {
LABEL_3:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_1002844D8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (!v2)
  {
    Hasher._combine(_:)(0);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

double sub_10028459C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1002857B0(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1002845FC(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_100285270(&v5, &v7) & 1;
}

Swift::Int sub_100284654()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100284728(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002847E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002848B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100285A04(*a1);
  *a2 = result;
  return result;
}

void sub_1002848E8(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000065646F43;
  v3 = 0x8000000100788100;
  v4 = 0xD000000000000019;
  if (*v1 != 2)
  {
    v4 = 0x655270756B6F6F6CLL;
    v3 = 0xED000073746C7573;
  }

  if (*v1)
  {
    v2 = 0xEF6567617373654DLL;
  }

  if (*v1 <= 1u)
  {
    v5 = 0x65736E6F70736572;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_10028498C()
{
  v1 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v1 = 0x655270756B6F6F6CLL;
  }

  if (*v0 <= 1u)
  {
    return 0x65736E6F70736572;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100284A18@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100285A04(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100284A4C(uint64_t a1)
{
  v2 = sub_100286464();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100284A88(uint64_t a1)
{
  v2 = sub_100286464();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100284AC4()
{
  _StringGuts.grow(_:)(87);
  v0._countAndFlagsBits = 0xD00000000000001ELL;
  v0._object = 0x8000000100788EB0;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._object = 0x8000000100788ED0;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000100788EF0;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x73746C7573657220;
  v5._object = 0xEA0000000000203ALL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  return 0;
}

uint64_t sub_100284C58(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100974C28, &qword_1007F7E60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10002CDC0(a1, a1[3]);
  sub_100286464();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 32);
    v10[15] = 3;
    sub_10028088C(&qword_100974C10, &qword_1007F7E58);
    sub_10028650C(&qword_100974C30, sub_100286584, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_100284E9C()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v2);
  sub_10028517C(v6, v4);
  return Hasher._finalize()();
}

void sub_100284F40(uint64_t a1)
{
  v2 = v1;
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  Hasher._combine(_:)(*v2);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v4);

  sub_10028517C(a1, v6);
}

Swift::Int sub_100284FCC(uint64_t a1)
{
  v2 = *v1;
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v3);
  sub_10028517C(v7, v5);
  return Hasher._finalize()();
}

double sub_10028506C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1002861D4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1002850D0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = a1[1] == a2[1] && v3 == v6;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 != v7)
  {
    return 0;
  }

  return sub_1003115C8(v5, v8);
}

void sub_10028517C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 72);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;

      String.hash(into:)();
      if (v5)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!v7)
        {
LABEL_9:
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v6);
          goto LABEL_4;
        }
      }

      Hasher._combine(_:)(0);
LABEL_4:

      v4 += 48;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_100285270(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a2 + 40);
  if (a1[5])
  {
    if (*(a2 + 40))
    {
      return 1;
    }
  }

  else
  {
    if (a1[4] != *(a2 + 32))
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100285320(void *a1)
{
  v3 = sub_10028088C(&qword_100974C58, &qword_1007F7E78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_10028662C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000C60C(a1);
  return v7;
}

unint64_t sub_100285504(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D68B0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100285550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v4 = sub_100570754(v18), (v5 & 1) == 0))
  {

    result = sub_100285E74(v18);
LABEL_13:
    v6 = 0;
    v7 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  sub_10000C5B0(*(a1 + 56) + 32 * v4, &v19);
  sub_100285E74(v18);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v6 = 0x656C646E6168;
  v7 = 0xE600000000000000;
  v19 = 0x64497344746C61;
  v20 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v8 = sub_100570754(v18), (v9 & 1) != 0))
  {
    sub_10000C5B0(*(a1 + 56) + 32 * v8, &v19);
    sub_100285E74(v18);
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = 0x656C646E6168;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_100285E74(v18);
    v11 = 0;
    v12 = 0;
  }

  v19 = 0x726F727265;
  v20 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v16 = sub_100570754(v18), (v17 & 1) != 0))
  {
    sub_10000C5B0(*(a1 + 56) + 32 * v16, &v19);
    sub_100285E74(v18);

    result = swift_dynamicCast();
    v14 = 0x656C646E6168;
    if (!result)
    {
      v14 = 0;
    }

    v15 = result ^ 1;
  }

  else
  {

    result = sub_100285E74(v18);
    v14 = 0;
    v15 = 1;
  }

LABEL_14:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_1002857B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_100974C40, &qword_1007F7E68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_1002865D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_10000C60C(a1);
  *a2 = v22;
  *(a2 + 8) = v11;
  v18 = v21;
  *(a2 + 16) = v20;
  *(a2 + 24) = v18;
  *(a2 + 32) = v13;
  *(a2 + 40) = v16 & 1;
  return result;
}

unint64_t sub_100285A04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D6918, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100285A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  strcpy(v37, "responseCode");
  BYTE5(v37[1]) = 0;
  HIWORD(v37[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v6 = sub_100570754(&v38), (v7 & 1) == 0))
  {
    sub_100285E74(&v38);
    goto LABEL_6;
  }

  sub_10000C5B0(*(a1 + 56) + 32 * v6, v37);
  sub_100285E74(&v38);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = v36[0];
LABEL_7:
  v37[0] = 0x65736E6F70736572;
  v37[1] = 0xEF6567617373654DLL;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v9 = sub_100570754(&v38), (v10 & 1) != 0))
  {
    sub_10000C5B0(*(a1 + 56) + 32 * v9, v37);
    sub_100285E74(&v38);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v36[0];
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v36[1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_100285E74(&v38);
    v12 = 0;
    v13 = 0;
  }

  v37[0] = 0xD000000000000019;
  v37[1] = 0x8000000100788100;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v14 = sub_100570754(&v38), (v15 & 1) != 0))
  {
    sub_10000C5B0(*(a1 + 56) + 32 * v14, v37);
    sub_100285E74(&v38);
    if (swift_dynamicCast())
    {
      a2 = v36[0];
    }
  }

  else
  {
    sub_100285E74(&v38);
  }

  strcpy(v36, "lookupResults");
  HIWORD(v36[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v16 = sub_100570754(&v38), (v17 & 1) == 0))
  {

    result = sub_100285E74(&v38);
LABEL_35:
    v22 = _swiftEmptyArrayStorage;
LABEL_36:
    *a3 = v8;
    a3[1] = v12;
    a3[2] = v13;
    a3[3] = a2;
    a3[4] = v22;
    return result;
  }

  sub_10000C5B0(*(a1 + 56) + 32 * v16, v37);
  sub_100285E74(&v38);

  sub_10028088C(&qword_100974BE0, &qword_1007F7B20);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_35;
  }

  v19 = 0;
  v20 = v36[0];
  v21 = *(v36[0] + 16);
  v22 = _swiftEmptyArrayStorage;
LABEL_25:
  v23 = v19;
  while (1)
  {
    if (v21 == v23)
    {

      goto LABEL_36;
    }

    if (v23 >= *(v20 + 16))
    {
      break;
    }

    v19 = v23 + 1;

    result = sub_100285550(v24, &v38);
    v25 = v39;
    v23 = v19;
    if (v39)
    {
      v30 = v38;
      v33 = v41;
      v34 = v40;
      v32 = v42;
      v31 = v43;
      result = swift_isUniquelyReferenced_nonNull_native();
      v35 = a2;
      if ((result & 1) == 0)
      {
        result = sub_10028E0AC(0, *(v22 + 2) + 1, 1, v22);
        v22 = result;
      }

      v27 = *(v22 + 2);
      v26 = *(v22 + 3);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        result = sub_10028E0AC((v26 > 1), v27 + 1, 1, v22);
        v28 = v27 + 1;
        v22 = result;
      }

      *(v22 + 2) = v28;
      v29 = &v22[48 * v27];
      *(v29 + 4) = v30;
      *(v29 + 5) = v25;
      *(v29 + 6) = v34;
      *(v29 + 7) = v33;
      *(v29 + 8) = v32;
      v29[72] = v31 & 1;
      a2 = v35;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_100285EC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100285EDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100285F24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100285F7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100285F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100285FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100286034(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10028607C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002860D0()
{
  result = qword_100974BE8;
  if (!qword_100974BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974BE8);
  }

  return result;
}

unint64_t sub_100286128()
{
  result = qword_100974BF0;
  if (!qword_100974BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974BF0);
  }

  return result;
}

unint64_t sub_100286180()
{
  result = qword_100974BF8;
  if (!qword_100974BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974BF8);
  }

  return result;
}

uint64_t sub_1002861D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10028088C(&qword_100974C00, &qword_1007F7E50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_100286464();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v19 = v10;
  v22 = 2;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10028088C(&qword_100974C10, &qword_1007F7E58);
  v21 = 3;
  sub_10028650C(&qword_100974C18, sub_1002864B8, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v20;
  result = sub_10000C60C(a1);
  v15 = v18;
  v16 = v19;
  *a2 = v9;
  a2[1] = v16;
  a2[2] = v12;
  a2[3] = v15;
  a2[4] = v13;
  return result;
}

unint64_t sub_100286464()
{
  result = qword_100974C08;
  if (!qword_100974C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C08);
  }

  return result;
}

unint64_t sub_1002864B8()
{
  result = qword_100974C20;
  if (!qword_100974C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C20);
  }

  return result;
}

uint64_t sub_10028650C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&qword_100974C10, &qword_1007F7E58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100286584()
{
  result = qword_100974C38;
  if (!qword_100974C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C38);
  }

  return result;
}

unint64_t sub_1002865D8()
{
  result = qword_100974C48;
  if (!qword_100974C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C48);
  }

  return result;
}

unint64_t sub_10028662C()
{
  result = qword_100974C60;
  if (!qword_100974C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C60);
  }

  return result;
}

uint64_t _s12FetchRequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12FetchRequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s18BatchFetchResponseV14ResultResponseV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18BatchFetchResponseV14ResultResponseV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s18BatchFetchResponseV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18BatchFetchResponseV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100286A78()
{
  result = qword_100974C70;
  if (!qword_100974C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C70);
  }

  return result;
}

unint64_t sub_100286AD0()
{
  result = qword_100974C78;
  if (!qword_100974C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C78);
  }

  return result;
}

unint64_t sub_100286B28()
{
  result = qword_100974C80;
  if (!qword_100974C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C80);
  }

  return result;
}

unint64_t sub_100286B80()
{
  result = qword_100974C88;
  if (!qword_100974C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C88);
  }

  return result;
}

unint64_t sub_100286BD8()
{
  result = qword_100974C90;
  if (!qword_100974C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C90);
  }

  return result;
}

unint64_t sub_100286C30()
{
  result = qword_100974C98;
  if (!qword_100974C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C98);
  }

  return result;
}

unint64_t sub_100286C88()
{
  result = qword_100974CA0;
  if (!qword_100974CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974CA0);
  }

  return result;
}

unint64_t sub_100286CE0()
{
  result = qword_100974CA8;
  if (!qword_100974CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974CA8);
  }

  return result;
}

unint64_t sub_100286D38()
{
  result = qword_100974CB0;
  if (!qword_100974CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974CB0);
  }

  return result;
}

uint64_t sub_100286D94()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100974CB8);
  v1 = sub_10000C4AC(v0, qword_100974CB8);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100286E5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_10000C5B0((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id sub_100286EAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_10000C5B0(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_1000106E0(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_100005508(&v18, &qword_100974CD8, &qword_1007F8238);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100286FFC@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_10028088C(&qword_100974CE0, &qword_1007F8240);
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v40 = &v40 - v3;
  v49 = type metadata accessor for SFNWInterfaceType();
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&qword_100974CE8, &qword_1007F8248);
  v11 = __chkstk_darwin(v10 - 8);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v43 = &v40 - v14;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  if (v19)
  {
    v42 = v1[2];
    v20 = v17;
LABEL_11:
    v41 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v7 + 16))(v9, *(v15 + 48) + *(v7 + 72) * v24, v6);
    (*(v4 + 16))(v48, *(v15 + 56) + *(v4 + 72) * v24, v49);
    v25 = v6;
    v26 = v45;
    v27 = *(v45 + 48);
    v28 = *(v7 + 32);
    v29 = v43;
    v28(v43, v9, v25);
    (*(v4 + 32))(v29 + v27, v48, v49);
    v30 = v44;
    (*(v44 + 56))(v29, 0, 1, v26);
    v31 = v41;
    v18 = v42;
    v23 = v20;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v18;
    v1[3] = v23;
    v1[4] = v31;
    v32 = v1[5];
    v33 = v46;
    sub_10002C4E4(v29, v46, &qword_100974CE8, &qword_1007F8248);
    v34 = 1;
    v35 = (*(v30 + 48))(v33, 1, v26);
    v36 = v47;
    if (v35 != 1)
    {
      v37 = v33;
      v38 = v40;
      sub_10002C4E4(v37, v40, &qword_100974CE0, &qword_1007F8240);
      v32(v38);
      sub_100005508(v38, &qword_100974CE0, &qword_1007F8240);
      v34 = 0;
    }

    v39 = sub_10028088C(&qword_1009746D8, &qword_1007F65B8);
    return (*(*(v39 - 8) + 56))(v36, v34, 1, v39);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v29 = v43;
        v30 = v44;
        v26 = v45;
        (*(v44 + 56))(v43, 1, 1, v45);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v42 = v1[2];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10028748C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_100286EAC(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_1000106E0(v41, v39);
  v13 = *a5;
  result = sub_10000FFF8(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1005712AC(v19, a4 & 1);
    result = sub_10000FFF8(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CFString(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_100010C84();
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    sub_10000C60C(v24);
    sub_1000106E0(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_1000106E0(v39, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_100286EAC(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_1000106E0(v41, v39);
        v30 = *a5;
        result = sub_10000FFF8(v12);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_1005712AC(v34, 1);
          result = sub_10000FFF8(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = result;

          v29 = (v36[7] + 32 * v28);
          sub_10000C60C(v29);
          sub_1000106E0(v39, v29);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_1000106E0(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_100286EAC(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_100027D64(v42);
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_10028776C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CFString(0);
  sub_10000FE00();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = Dictionary._bridgeToObjectiveC()().super.isa;
  v6 = SecItemUpdate(isa, v5);

  if (v6 == -25300)
  {
    goto LABEL_16;
  }

  if (!v6)
  {
    if (qword_100973510 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100974CB8);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v10 + 4) = v12;
      v11->super.isa = v12.super.isa;
      *(v10 + 12) = 2112;
      v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v10 + 14) = v13;
      v11[1].super.isa = v13.super.isa;
      _os_log_impl(&_mh_execute_header, v8, v9, "Updated keychain item: %@ with %@", v10, 0x16u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();
    }

    return;
  }

  if (qword_100973510 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100974CB8);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412802;
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v17 + 4) = v19;
    v18->super.isa = v19.super.isa;
    *(v17 + 12) = 2112;
    v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v17 + 14) = v20;
    v18[1].super.isa = v20.super.isa;
    *(v17 + 22) = 1024;
    *(v17 + 24) = v6;
    _os_log_impl(&_mh_execute_header, v15, v16, "Failed to update keychain item: %@ with %@, error: %d, will try to delete and re-add", v17, 0x1Cu);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();
  }

  v21 = Dictionary._bridgeToObjectiveC()().super.isa;
  v22 = SecItemDelete(v21);

  if (!v22)
  {
LABEL_16:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = a1;
    sub_10028748C(a2, sub_100286E5C, 0, isUniquelyReferenced_nonNull_native, &v70);

    if (qword_100973510 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000C4AC(v37, qword_100974CB8);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v40 = 136315650;

      v69 = v39;
      v41 = Dictionary.description.getter();
      v43 = v42;

      v44 = sub_10000C4E4(v41, v43, &v70);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2112;
      v45.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v40 + 14) = v45;
      v68->super.isa = v45.super.isa;
      *(v40 + 22) = 2080;
      v46 = Dictionary.description.getter();
      v48 = sub_10000C4E4(v46, v47, &v70);

      *(v40 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v38, v69, "Adding newItem=%s query=%@ update=%s", v40, 0x20u);
      sub_100005508(v68, &qword_100975400, &qword_1007F65D0);

      swift_arrayDestroy();
    }

    v49 = Dictionary._bridgeToObjectiveC()().super.isa;

    v50 = SecItemAdd(v49, 0);

    v51 = Logger.logObject.getter();
    if (v50)
    {
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412546;

        v55 = Dictionary._bridgeToObjectiveC()().super.isa;

        *(v53 + 4) = v55;
        *v54 = v55;
        *(v53 + 12) = 1024;
        *(v53 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v51, v52, "Failed to add keychain item: %@, error:%d", v53, 0x12u);
        sub_100005508(v54, &qword_100975400, &qword_1007F65D0);
      }

      v70 = 0;
      v71 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);
      v56._object = 0x8000000100788F90;
      v56._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v56);

      v57 = Dictionary._bridgeToObjectiveC()().super.isa;

      v72 = v57;
      type metadata accessor for CFDictionary(0);
      _print_unlocked<A, B>(_:_:)();

      v58._countAndFlagsBits = 0x3A726F727265202CLL;
      v58._object = 0xE800000000000000;
      String.append(_:)(v58);
      LODWORD(v72) = v50;
      v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v59);

      v60 = sub_100010F88(10, v70, v71);
      v62 = v61;
      sub_1000115C8();
      swift_allocError();
      *v63 = v60;
      *(v63 + 8) = v62;
      swift_willThrow();
    }

    else
    {
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v65 = 138412290;

        v67 = Dictionary._bridgeToObjectiveC()().super.isa;

        *(v65 + 4) = v67;
        *v66 = v67;
        _os_log_impl(&_mh_execute_header, v51, v64, "Added keychain item: %@", v65, 0xCu);
        sub_100005508(v66, &qword_100975400, &qword_1007F65D0);
      }
    }
  }

  else
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v25 + 4) = v27;
      v26->super.isa = v27.super.isa;
      *(v25 + 12) = 1024;
      *(v25 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to delete keychain item: %@, error: %d", v25, 0x12u);
      sub_100005508(v26, &qword_100975400, &qword_1007F65D0);
    }

    _StringGuts.grow(_:)(44);
    v28._countAndFlagsBits = 0xD000000000000020;
    v28._object = 0x8000000100788F60;
    String.append(_:)(v28);
    v29 = Dictionary._bridgeToObjectiveC()().super.isa;
    type metadata accessor for CFDictionary(0);
    _print_unlocked<A, B>(_:_:)();

    v30._countAndFlagsBits = 0x3A726F727265202CLL;
    v30._object = 0xE800000000000000;
    String.append(_:)(v30);
    v72 = __PAIR64__(HIDWORD(v29), v22);
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32 = sub_100010F88(10, 0, 0xE000000000000000);
    v34 = v33;
    sub_1000115C8();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
    swift_willThrow();
  }
}

uint64_t sub_100288320()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100974CF0);
  v1 = sub_10000C4AC(v0, qword_100974CF0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002883E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_100288598, v6, 0);
}

uint64_t sub_100288598()
{
  v53 = v0;
  v1 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v1 < 2)
  {
    goto LABEL_3;
  }

  v2 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  if (v2)
  {
    goto LABEL_3;
  }

  v6 = SFAirDropReceive.AskRequest.files.getter();
  v7 = v6;
  v8 = *(v6 + 16);
  if (!v8)
  {

LABEL_3:
    v3 = 0;
    goto LABEL_4;
  }

  v9 = 0;
  v10 = v0[11];
  v48 = *(v10 + 16);
  v11 = v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v46 = (v10 + 8);
  v42 = *(v10 + 72);
  v44 = v8 - 1;
  v12 = 1;
  v51 = v0;
  do
  {
    v13 = v0[12];
    v14 = v0[10];
    v48(v13, v11, v14);
    SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = SFIsePub();

    SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
    (*v46)(v13, v14);
    v17 = String._bridgeToObjectiveC()();

    LOBYTE(v14) = SFIsPDF();

    if ((v14 & 1) == 0 && (v16 & 1) == 0)
    {

      v3 = 0;
      v0 = v51;
      goto LABEL_4;
    }

    if (v12)
    {
      v0 = v51;
      if (v44 == v9)
      {

        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v0 = v51;
      if (v44 == v9)
      {

LABEL_20:
        v18 = objc_allocWithZone(LSApplicationRecord);
        v19 = sub_10066F3F8(0xD000000000000010, 0x8000000100788310, 1);
        v40 = v0[3];
        v41 = *(v40 + 16);
        *(v40 + 16) = v19;

        goto LABEL_24;
      }

      v16 = 0;
    }

    ++v9;
    v11 += v42;
    v12 = v16;
  }

  while (v9 < *(v7 + 16));
  __break(1u);
  swift_once();
  v21 = v0[8];
  v20 = v0[9];
  v22 = v0[7];
  v23 = v0[2];
  v24 = type metadata accessor for Logger();
  sub_10000C4AC(v24, qword_100974CF0);
  (*(v21 + 16))(v20, v23, v22);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[8];
  v29 = v0[9];
  v30 = v0[7];
  if (v27)
  {
    v32 = v0[5];
    v31 = v0[6];
    v33 = v51[4];
    v45 = v0[7];
    v34 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v52 = v50;
    *v34 = 136315394;
    v47 = v25;
    SFAirDropReceive.AskRequest.id.getter();
    sub_1002891F4();
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v26;
    v37 = v36;
    v0 = v51;
    (*(v32 + 8))(v31, v33);
    (*(v28 + 8))(v29, v45);
    v38 = sub_10000C4E4(v35, v37, &v52);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2112;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v39;
    *v49 = v39;
    _os_log_impl(&_mh_execute_header, v47, v43, "Failed to get Books app for ask request %s: %@", v34, 0x16u);
    sub_10028924C(v49);

    sub_10000C60C(v50);
  }

  else
  {

    (*(v28 + 8))(v29, v30);
  }

LABEL_24:
  v3 = *(v0[3] + 16) != 0;
LABEL_4:

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100288A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100288ECC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100288F30@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandleriBooksItems();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100288F68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1002883E8(a1);
}

uint64_t sub_100289000(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100289124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_100005C04;

  return sub_1003D0964(a1, a2, a3, v8, v9, v10);
}

unint64_t sub_1002891F4()
{
  result = qword_100977BF0;
  if (!qword_100977BF0)
  {
    type metadata accessor for SFAirDrop.TransferIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977BF0);
  }

  return result;
}

uint64_t sub_10028924C(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100975400, &qword_1007F65D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002892B4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100974DE0);
  sub_10000C4AC(v0, qword_100974DE0);
  return static Logger.airDropNWClient.getter();
}

void *SFAirDropReceive.AskRequest.init(recordID:initialInfo:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v179 = a3;
  v161 = a4;
  v157 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription();
  v156 = *(v157 - 1);
  __chkstk_darwin(v157);
  v155 = (&v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v154 = type metadata accessor for String.Encoding();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_100974DF8, &qword_10080F350);
  v9 = __chkstk_darwin(v8 - 8);
  v159 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v162 = &v131 - v11;
  v165 = type metadata accessor for SFAirDrop.TransferType();
  v163 = *(v165 - 8);
  v12 = __chkstk_darwin(v165);
  v160 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v164 = &v131 - v14;
  v166 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v172 = *(v166 - 8);
  __chkstk_darwin(v166);
  v167 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v16 - 8);
  v168 = (&v131 - v17);
  v173 = type metadata accessor for URL();
  v171 = *(v173 - 1);
  v18 = __chkstk_darwin(v173);
  v169 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v170 = &v131 - v20;
  v174 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v176 = *(v174 - 8);
  v21 = __chkstk_darwin(v174);
  v158 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v175 = &v131 - v23;
  v24 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v24);
  v26 = &v131 - v25;
  v27 = type metadata accessor for UUID();
  v177 = *(v27 - 8);
  v28 = __chkstk_darwin(v27);
  v30 = &v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v131 - v31;
  UUID.init(uuidString:)();
  v182 = 0;
  v183 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v182 = 0xD000000000000013;
  v183 = 0x8000000100789090;
  v33._countAndFlagsBits = a1;
  v33._object = a2;
  String.append(_:)(v33);
  v34 = v178;
  Optional.tryUnwrap(_:file:line:)();
  v35 = v34;
  if (v34)
  {
    sub_100005508(v26, &unk_100976120, &qword_1007F9260);
  }

  v178 = "UUID from recordID ";
  v151 = a2;
  sub_100005508(v26, &unk_100976120, &qword_1007F9260);

  v37 = v177;
  (*(v177 + 16))(v30, v32, v27);
  v38 = v175;
  SFAirDrop.TransferIdentifier.init(_:)();
  if (!kSFOperationVerifiableIdentityKey)
  {
    __break(1u);
LABEL_115:
    result = kSFOperationSenderIDKey;
    if (!kSFOperationSenderIDKey)
    {
      goto LABEL_173;
    }

    v138 = v182;
    v139 = v183;
    result = NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    if (v38)
    {

      goto LABEL_127;
    }

LABEL_120:
    v103 = v182;
    v102 = v183;
    if (!v183)
    {
      v103 = 63;
    }

    v136 = v103;
    if (!v183)
    {
      v102 = 0xE100000000000000;
    }

    v137 = v102;
    if (!kSFOperationSenderNodeKey)
    {
      goto LABEL_174;
    }

    SFNodeGetTypeID();
    NSDictionary.sf_optionalValue<A>(_:as:cfTypeID:file:line:)();
    if (!v38)
    {
      if (v182)
      {
        v104 = SFNodeCopyContactIdentifier();
        if (v104)
        {
          v105 = v104;
          v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v135 = v106;

          goto LABEL_134;
        }
      }

LABEL_133:
      v134 = 0;
      v135 = 0;
LABEL_134:
      NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
      v150 = v38;
      if (v38)
      {

        goto LABEL_136;
      }

LABEL_139:
      v133 = v183;
      if (!v183)
      {
        goto LABEL_151;
      }

      v107 = v182;
      v108 = v152;
      static String.Encoding.utf8.getter();
      v132 = v107;
      v109 = String.data(using:allowLossyConversion:)();
      v111 = v110;
      (v153[1])(v108, v154);
      v180 = v109;
      v181 = v111;
      sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
      v112 = v150;
      Optional.tryUnwrap(_:file:line:)();
      v150 = v112;
      if (!v112)
      {
LABEL_143:
        sub_10028BCC0(v180, v181);
        v113 = v182;
        v114 = v183;
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_10000CE2C(&qword_100974E18, &type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription, &protocol conformance descriptor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
        v153 = v113;
        v154 = v114;
        v115 = v150;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        v150 = v115;
        if (v115)
        {

          if (qword_100973520 != -1)
          {
            goto LABEL_171;
          }

          goto LABEL_145;
        }

        goto LABEL_148;
      }

      sub_10028BCC0(v180, v181);
LABEL_136:
      (*(v163 + 8))(v164, v165);
      (*(v176 + 8))(v37, v174);
      return (*(v177 + 8))(v148, v149);
    }

LABEL_127:

    goto LABEL_128;
  }

  v39 = v32;
  v40 = v179;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v41 = v176;
  result = kSFOperationSenderIsMeKey;
  if (!kSFOperationSenderIsMeKey)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v42 = v182;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v148 = v39;
  v149 = v27;
  v43 = v182;
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v44 = static NSUserDefaults.airdrop.getter();
  v45 = SFAirDropUserDefaults.alwaysAutoAccept.getter();

  if (v45)
  {
    v144 = 1;
    v46 = v177;
    v37 = v172;
  }

  else
  {
    v37 = v172;
    if (!kSFOperationAutoAcceptKey)
    {
      __break(1u);
      goto LABEL_139;
    }

    NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    v46 = v177;
    v144 = v182;
  }

  v145 = v43;
  if (!kSFOperationItemsKey)
  {
    __break(1u);
    goto LABEL_133;
  }

  v47 = sub_1000276B4(0, &qword_1009765C0, NSArray_ptr);
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v143 = v47;
  v48 = v182;
  v142 = v42;
  if (v182)
  {
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    v49 = NSArray.tryCastElements<A>(as:)();
    v150 = 0;
    v141 = v48;
    if (v49 >> 62)
    {
      v80 = v49;
      v62 = _CocoaArrayWrapper.endIndex.getter();
      v49 = v80;
      if (v62)
      {
LABEL_18:
        v63 = 0;
        v169 = (v49 & 0xC000000000000001);
        v147 = (v49 & 0xFFFFFFFFFFFFFF8);
        v64 = _swiftEmptyArrayStorage;
        v146 = v62;
        do
        {
          if (v169)
          {
            v48 = v49;
            v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v66 = (v63 + 1);
            if (__OFADD__(v63, 1))
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (v63 >= v147[2])
            {
              goto LABEL_51;
            }

            v48 = v49;
            v65 = *(v49 + 8 * v63 + 32);
            v66 = (v63 + 1);
            if (__OFADD__(v63, 1))
            {
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              swift_once();
              v50 = type metadata accessor for Logger();
              sub_10000C4AC(v50, qword_100974DE0);
              swift_errorRetain();
              v41 = v48;
              v51 = Logger.logObject.getter();
              v52 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = swift_slowAlloc();
                v54 = swift_slowAlloc();
                v55 = swift_slowAlloc();
                v141 = v48;
                v56 = v55;
                v182 = v55;
                *v53 = 136315394;
                swift_getErrorValue();
                v57 = Error.localizedDescription.getter();
                v59 = sub_10000C4E4(v57, v58, &v182);

                *(v53 + 4) = v59;
                v40 = v179;
                *(v53 + 12) = 2112;
                *(v53 + 14) = v41;
                *v54 = v141;
                v60 = v41;
                _os_log_impl(&_mh_execute_header, v51, v52, "Failed to get items as strings, trying again as URLs {error: %s, rawURLItems: %@}", v53, 0x16u);
                sub_100005508(v54, &qword_100975400, &qword_1007F65D0);

                sub_10000C60C(v56);
              }

              sub_1000276B4(0, &unk_100974E30, NSURL_ptr);
              v61 = NSArray.tryCastElements<A>(as:)();
              v147 = 0;
              v46 = v61;
              if (!(v61 >> 62))
              {
                v71 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_33;
              }

              goto LABEL_92;
            }
          }

          v67 = String.init(_:)(v65);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_10028E1C8(0, *(v64 + 2) + 1, 1, v64);
          }

          v69 = *(v64 + 2);
          v68 = *(v64 + 3);
          v70 = v64;
          v40 = (v69 + 1);
          if (v69 >= v68 >> 1)
          {
            v70 = sub_10028E1C8((v68 > 1), v69 + 1, 1, v64);
          }

          v64 = v70;
          *(v70 + 2) = v40;
          *&v70[16 * v69 + 32] = v67;
          ++v63;
          v35 = v150;
          v37 = v172;
          v49 = v48;
        }

        while (v66 != v146);
        goto LABEL_56;
      }
    }

    else
    {
      v62 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v62)
      {
        goto LABEL_18;
      }
    }

    v64 = _swiftEmptyArrayStorage;
LABEL_56:

    v169 = *(v64 + 2);
    if (v169)
    {
      v40 = 0;
      v147 = (v171 + 48);
      v146 = (v171 + 32);
      v81 = v64 + 40;
      v82 = _swiftEmptyArrayStorage;
      v46 = v168;
      do
      {
        if (v40 >= *(v64 + 2))
        {
          __break(1u);
          goto LABEL_90;
        }

        URL.init(string:)();

        v83 = v173;
        if ((*v147)(v46, 1, v173) == 1)
        {
          sub_100005508(v46, &unk_100974E00, &qword_1007F8940);
        }

        else
        {
          v84 = *v146;
          (*v146)(v170, v46, v83);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_10028F3DC(0, *(v82 + 2) + 1, 1, v82, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
          }

          v86 = *(v82 + 2);
          v85 = *(v82 + 3);
          if (v86 >= v85 >> 1)
          {
            v82 = sub_10028F3DC((v85 > 1), v86 + 1, 1, v82, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
          }

          *(v82 + 2) = v86 + 1;
          v84(&v82[((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v86]);
          v46 = v168;
        }

        ++v40;
        v81 += 16;
        v35 = v150;
      }

      while (v169 != v40);
    }

    else
    {
      v82 = _swiftEmptyArrayStorage;
    }

    v173 = sub_1002929F0(v82);

    v38 = v175;
    v40 = v179;
    v46 = v177;
    goto LABEL_69;
  }

  v173 = &_swiftEmptySetSingleton;
LABEL_69:
  v79 = v145;
  while (1)
  {
    if (!kSFOperationFilesKey)
    {
      __break(1u);
      goto LABEL_143;
    }

    NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    if (v35)
    {

      (*(v41 + 8))(v38, v174);
      return (*(v46 + 8))(v148, v149);
    }

    v87 = v182;
    if (!v182)
    {
      v89 = &_swiftEmptySetSingleton;
      goto LABEL_96;
    }

    sub_1000276B4(0, &qword_100974E20, NSDictionary_ptr);
    v88 = NSArray.tryCastElements<A>(as:)();
    v41 = v88;
    v168 = v87;
    if (v88 >> 62)
    {
      break;
    }

    v90 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v90)
    {
      goto LABEL_94;
    }

LABEL_78:
    v38 = 0;
    v182 = _swiftEmptyArrayStorage;
    v171 = v90;
    result = sub_10028FAF8(0, v90 & ~(v90 >> 63), 0);
    if (v171 < 0)
    {
      __break(1u);
      goto LABEL_119;
    }

    v91 = 0;
    v92 = v182;
    v169 = (v41 & 0xFFFFFFFFFFFFFF8);
    v170 = (v37 + 4);
    while (1)
    {
      v93 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      v40 = v167;
      if ((v41 & 0xC000000000000001) != 0)
      {
        v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v91 >= *(v169 + 2))
        {
          goto LABEL_91;
        }

        v94 = *(v41 + 8 * v91 + 32);
      }

      sub_10028BF2C(v94, v40);
      v40 = v79;
      v182 = v92;
      v96 = v92[2];
      v95 = v92[3];
      if (v96 >= v95 >> 1)
      {
        sub_10028FAF8((v95 > 1), v96 + 1, 1);
        v92 = v182;
      }

      v92[2] = v96 + 1;
      (v172[4])(v92 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + v172[9] * v96, v167, v166);
      ++v91;
      v46 = v177;
      if (v93 == v171)
      {

        v38 = v175;
        goto LABEL_95;
      }
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    v71 = _CocoaArrayWrapper.endIndex.getter();
LABEL_33:
    v146 = v41;
    if (v71)
    {
      v72 = 0;
      v170 = (v46 & 0xC000000000000001);
      v168 = (v46 & 0xFFFFFFFFFFFFFF8);
      v48 = (v171 + 32);
      v73 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v170)
        {
          v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v74 = v169;
          v40 = (v72 + 1);
          if (__OFADD__(v72, 1))
          {
            goto LABEL_52;
          }
        }

        else
        {
          v74 = v169;
          if (v72 >= v168[2])
          {
            goto LABEL_53;
          }

          v75 = *(v46 + 8 * v72 + 32);
          v40 = (v72 + 1);
          if (__OFADD__(v72, 1))
          {
            goto LABEL_52;
          }
        }

        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_10028F3DC(0, v73[2] + 1, 1, v73, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
        }

        v77 = v73[2];
        v76 = v73[3];
        if (v77 >= v76 >> 1)
        {
          v73 = sub_10028F3DC((v76 > 1), v77 + 1, 1, v73, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
        }

        v73[2] = v77 + 1;
        (*(v171 + 32))(v73 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v77, v74, v173);
        ++v72;
        v78 = v40 == v71;
        v40 = v179;
        if (v78)
        {
          goto LABEL_49;
        }
      }
    }

    v73 = _swiftEmptyArrayStorage;
LABEL_49:

    v173 = sub_1002929F0(v73);

    v35 = v147;
    v41 = v176;
    v46 = v177;
    v38 = v175;
    v79 = v145;
    v37 = v172;
  }

  v90 = _CocoaArrayWrapper.endIndex.getter();
  if (v90)
  {
    goto LABEL_78;
  }

LABEL_94:

  v92 = _swiftEmptyArrayStorage;
LABEL_95:
  v89 = sub_100292B8C(v92);

LABEL_96:
  v97 = v89[2];

  v172 = v89;
  if (v97 || !v173[2])
  {
    v98 = &enum case for SFAirDrop.TransferType.files(_:);
  }

  else
  {
    v98 = &enum case for SFAirDrop.TransferType.links(_:);
  }

  v37 = v163;
  (*(v163 + 104))(v164, *v98, v165);
  if (!kSFOperationItemsDescriptionKey)
  {
    __break(1u);
LABEL_148:
    sub_100026AC0(v153, v154);

    (v156[4])(v162, v155, v157);
    v125 = 0;
    goto LABEL_152;
  }

  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  if (!kSFOperationBundleIDKey)
  {
    __break(1u);
LABEL_159:
    if (!v182)
    {
LABEL_164:
      v178 = 0;
      goto LABEL_165;
    }

    v178 = sub_100117BD4(v182);
    if (v178)
    {
      swift_unknownObjectRelease();
      v127 = v178;
LABEL_165:
      v128 = v176;
      (*(v176 + 16))(v158, v37, v174);
      v129 = v163;
      (*(v163 + 16))(v160, v164, v165);
      sub_10000FF90(v162, v159, &qword_100974DF8, &qword_10080F350);
      v130 = v178;
      SFAirDropReceive.AskRequest.init(id:type:transferTypes:canAutoAccept:verifiableIdentity:senderIsMe:contactIdentifier:senderBundleID:senderComputerName:senderModelName:senderEmail:senderEmailHash:senderCompositeName:senderFirstName:senderLastName:senderID:senderIcon:smallPreviewImage:previewImage:itemsDescription:itemsDescriptionAdvanced:urlItems:items:customPayload:)();

      sub_100005508(v162, &qword_100974DF8, &qword_10080F350);
      (*(v129 + 8))(v164, v165);
      (*(v128 + 8))(v175, v174);
      return (*(v177 + 8))(v148, v149);
    }

LABEL_163:
    swift_unknownObjectRelease();
    goto LABEL_164;
  }

  v99 = v183;
  NSDictionary.sf_value<A>(_:as:file:line:)();
  v171 = v99;
  if (!kSFOperationSenderComputerNameKey)
  {
    __break(1u);
    goto LABEL_163;
  }

  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v100 = v182;
  if (!v183)
  {
    v100 = 63;
  }

  v170 = v100;
  if (!kSFOperationSenderModelNameKey)
  {
    __break(1u);
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v37 = v38;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v101 = v182;
  if (!v183)
  {
    v101 = 63;
  }

  v169 = v101;
  if (!kSFOperationSenderEmailKey)
  {
    goto LABEL_167;
  }

  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v38 = 0;
  if (!kSFOperationSenderEmailHashKey)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v167 = v182;
  v168 = v183;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  if (!kSFOperationSenderCompositeNameKey)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v147 = v182;
  v166 = v183;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  if (kSFOperationSenderFirstNameKey)
  {
    v143 = v182;
    v146 = v183;
    NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    result = kSFOperationSenderLastNameKey;
    if (kSFOperationSenderLastNameKey)
    {
      v140 = v182;
      v141 = v183;
      NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
      goto LABEL_115;
    }

    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

LABEL_170:
  __break(1u);
LABEL_171:
  swift_once();
LABEL_145:
  v116 = type metadata accessor for Logger();
  sub_10000C4AC(v116, qword_100974DE0);
  swift_errorRetain();

  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.fault.getter();

  LODWORD(v152) = v118;
  v155 = v117;
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v182 = v131;
    *v119 = 136315394;
    swift_getErrorValue();
    v120 = Error.localizedDescription.getter();
    v122 = sub_10000C4E4(v120, v121, &v182);

    *(v119 + 4) = v122;
    *(v119 + 12) = 2080;
    v123 = sub_10000C4E4(v132, v133, &v182);

    *(v119 + 14) = v123;
    v124 = v155;
    _os_log_impl(&_mh_execute_header, v155, v152, "Failed to decode advanced items description {error: %s, itemsDescription: %s}", v119, 0x16u);
    swift_arrayDestroy();

    sub_100026AC0(v153, v154);
  }

  else
  {
    sub_100026AC0(v153, v154);
  }

  v150 = 0;
LABEL_151:
  v125 = 1;
LABEL_152:
  result = (v156[7])(v162, v125, 1, v157);
  if (!kSFOperationSmallFileIconKey)
  {
    goto LABEL_175;
  }

  type metadata accessor for CGImage(0);
  v126 = v150;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  if (!v126)
  {
    result = kSFOperationFileIconKey;
    if (!kSFOperationFileIconKey)
    {
      goto LABEL_176;
    }

    v157 = v182;
    result = NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    if (!kSFOperationSenderIconKey)
    {
LABEL_177:
      __break(1u);
      return result;
    }

    v156 = v182;

    NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    v150 = 0;
    goto LABEL_159;
  }

  sub_100005508(v162, &qword_100974DF8, &qword_10080F350);
LABEL_128:
  (*(v163 + 8))(v164, v165);
  (*(v176 + 8))(v37, v174);
  return (*(v177 + 8))(v148, v149);
}

uint64_t sub_10028BCC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100026AC0(result, a2);
  }

  return result;
}

void sub_10028BCD4(uint64_t a1)
{
  sub_1000276B4(0, &qword_100974E40, SFAirDropTransferItem_ptr);
  sub_100027D9C(&qword_100974E48, &qword_100974E40, SFAirDropTransferItem_ptr);
  v2 = 0;
  v9[1] = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_10046D844(v9, *(*(a1 + 56) + ((v7 << 9) | (8 * v8))));
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10028BE10(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_10046DAAC(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10028BF2C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v4 = type metadata accessor for URL.DirectoryHint();
  v103 = *(v4 - 8);
  v104 = v4;
  __chkstk_darwin(v4);
  v102 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v6 - 8);
  v99 = v80 - v7;
  v8 = type metadata accessor for URL();
  v100 = *(v8 - 8);
  v101 = v8;
  __chkstk_darwin(v8);
  v98 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&qword_100975180, &qword_100805430);
  v11 = __chkstk_darwin(v10);
  v12 = __chkstk_darwin(v11);
  v108 = v80 - v13;
  v14 = __chkstk_darwin(v12);
  v93 = v80 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v80 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v80 - v20;
  v22 = __chkstk_darwin(v19);
  v95 = v80 - v23;
  v24 = __chkstk_darwin(v22);
  v105 = v80 - v25;
  __chkstk_darwin(v24);
  v27 = v80 - v26;
  v110 = type metadata accessor for UTType();
  v112 = *(v110 - 8);
  v28 = __chkstk_darwin(v110);
  v107 = v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v96 = v80 - v31;
  v32 = __chkstk_darwin(v30);
  v97 = v80 - v33;
  v34 = __chkstk_darwin(v32);
  v106 = v80 - v35;
  v36 = __chkstk_darwin(v34);
  __chkstk_darwin(v36);
  v109 = v80 - v37;
  if (!kSFOperationFileNameKey)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  NSDictionary.sf_value<A>(_:as:file:line:)();
  if (v2)
  {

    return;
  }

  v92 = "UUID from recordID ";
  v90 = v21;
  v91 = v18;
  if (!kSFOperationFileTypeKey)
  {
    goto LABEL_29;
  }

  v39 = v111[0];
  v38 = v111[1];
  NSDictionary.sf_value<A>(_:as:file:line:)();
  v88 = v39;
  v89 = v38;
  if (!kSFOperationFileBomPathKey)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v40 = v111[0];
  v41 = v111[1];
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v86 = v40;
  v87 = v41;
  v42 = v111[0];
  if (!v111[1])
  {
    v42 = 4271950;
  }

  v85 = v42;
  if (v111[1])
  {
    v43 = v111[1];
  }

  else
  {
    v43 = 0xE300000000000000;
  }

  if (!kSFOperationFileIsDirectoryKey)
  {
    goto LABEL_31;
  }

  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v84 = a1;
  v83 = v10;
  if (!kSFOperationConvertMediaFormatsKey)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v44 = LOBYTE(v111[0]);
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v81 = v43;
  v80[1] = v44;
  v80[0] = LOBYTE(v111[0]);
  v45 = v87;

  v46 = v86;
  UTType.init(_:)();
  v111[0] = 0;
  v111[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  HIWORD(v111[1]) = -4864;
  v47._countAndFlagsBits = v46;
  v47._object = v45;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 96;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  Optional.tryUnwrap(_:file:line:)();
  v82 = 0;
  sub_100005508(v27, &qword_100975180, &qword_100805430);
  v49 = v110;

  v50 = v112;
  v51 = *(v112 + 32);
  v52 = v109;
  v51();
  if (UTType.isDynamic.getter())
  {
    v53 = v100;
    v54 = v101;
    (*(v100 + 56))(v99, 1, 1, v101);
    (*(v103 + 104))(v102, enum case for URL.DirectoryHint.inferFromPath(_:), v104);

    v55 = v98;
    URL.init(filePath:directoryHint:relativeTo:)();
    v56 = URL.pathExtension.getter();
    v58 = v57;
    (*(v53 + 8))(v55, v54);

    static UTType.data.getter();
    v59 = v105;
    UTType.init(filenameExtension:conformingTo:)();
    v111[0] = 0;
    v111[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v111[0] = 0xD00000000000001BLL;
    v111[1] = 0x8000000100789160;
    v60._countAndFlagsBits = v56;
    v60._object = v58;
    String.append(_:)(v60);
    v61 = v59;

    v62 = v97;
    v63 = v82;
    Optional.tryUnwrap(_:file:line:)();
    v64 = v63;
    if (v63)
    {

      sub_100005508(v61, &qword_100975180, &qword_100805430);
      (*(v112 + 8))(v109, v110);
      return;
    }

    sub_100005508(v61, &qword_100975180, &qword_100805430);

    v66 = v106;
    v49 = v110;
    (v51)(v106, v62, v110);
    v65 = v66;
    v50 = v112;
  }

  else
  {
    v65 = v106;
    (*(v50 + 16))(v106, v52, v49);
    v64 = v82;
  }

  if (!kSFOperationtFileSubTypeKey)
  {
    goto LABEL_33;
  }

  v67 = v84;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  if (v64)
  {

    v68 = *(v50 + 8);
    v68(v65, v49);
    v68(v109, v49);
  }

  else
  {
    v69 = v111[1];
    if (v111[1])
    {
      v70 = v111[0];

      v71 = v91;
      UTType.init(_:)();
      v111[0] = 0;
      v111[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      HIWORD(v111[1]) = -4864;
      v72._countAndFlagsBits = v70;
      v72._object = v69;
      String.append(_:)(v72);

      v73._countAndFlagsBits = 96;
      v73._object = 0xE100000000000000;
      String.append(_:)(v73);
      v74 = v90;
      Optional.tryUnwrap(_:file:line:)();
      sub_100005508(v71, &qword_100975180, &qword_100805430);

      v75 = v112;
      (*(v112 + 56))(v74, 0, 1, v49);
      v76 = v74;
      v77 = v95;
      v50 = v75;
      sub_10002C4E4(v76, v95, &qword_100975180, &qword_100805430);
    }

    else
    {
      v77 = v95;
      (*(v50 + 56))(v95, 1, 1, v49);
    }

    v78 = v93;
    sub_10000FF90(v77, v93, &qword_100975180, &qword_100805430);
    if ((*(v50 + 48))(v78, 1, v49) == 1)
    {
      sub_100005508(v78, &qword_100975180, &qword_100805430);
    }

    else
    {
      UTType.identifier.getter();
      (*(v50 + 8))(v78, v49);
    }

    UTType.identifier.getter();
    SFAirDropReceive.AskRequest.ItemInfo.init(convertMediaFormats:fileBomPath:fileIsDirectory:fileName:fileSubType:fileType:)();

    sub_100005508(v95, &qword_100975180, &qword_100805430);
    v79 = *(v50 + 8);
    v79(v65, v49);
    v79(v109, v49);
  }
}

unint64_t sub_10028D050()
{
  v0 = sub_10027FD18(_swiftEmptyArrayStorage);
  *&v26 = kSFOperationConvertMediaFormatsKey;
  v1 = kSFOperationConvertMediaFormatsKey;
  sub_10028088C(&unk_100975620, &qword_1007F89E0);
  sub_100294298();
  AnyHashable.init<A>(_:)();
  v27 = &type metadata for Bool;
  LOBYTE(v26) = SFAirDropReceive.AskRequest.ItemInfo.convertMediaFormats.getter() & 1;
  sub_1000106E0(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v25, v28, isUniquelyReferenced_nonNull_native);
  sub_100285E74(v28);
  *&v26 = kSFOperationFileNameKey;
  v3 = kSFOperationFileNameKey;
  AnyHashable.init<A>(_:)();
  v4 = SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
  v27 = &type metadata for String;
  *&v26 = v4;
  *(&v26 + 1) = v5;
  sub_1000106E0(&v26, v25);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v25, v28, v6);
  sub_100285E74(v28);
  *&v26 = kSFOperationFileTypeKey;
  v7 = kSFOperationFileTypeKey;
  AnyHashable.init<A>(_:)();
  v8 = SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
  v27 = &type metadata for String;
  *&v26 = v8;
  *(&v26 + 1) = v9;
  sub_1000106E0(&v26, v25);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v25, v28, v10);
  sub_100285E74(v28);
  v11 = SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    *&v26 = kSFOperationtFileSubTypeKey;
    v15 = kSFOperationtFileSubTypeKey;
    AnyHashable.init<A>(_:)();
    v27 = &type metadata for String;
    *&v26 = v13;
    *(&v26 + 1) = v14;
    sub_1000106E0(&v26, v25);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1005789A0(v25, v28, v16);
    sub_100285E74(v28);
  }

  *&v26 = kSFOperationFileBomPathKey;
  v17 = kSFOperationFileBomPathKey;
  AnyHashable.init<A>(_:)();
  v18 = SFAirDropReceive.AskRequest.ItemInfo.fileBomPath.getter();
  v27 = &type metadata for String;
  *&v26 = v18;
  *(&v26 + 1) = v19;
  sub_1000106E0(&v26, v25);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v25, v28, v20);
  sub_100285E74(v28);
  *&v26 = kSFOperationFileIsDirectoryKey;
  v21 = kSFOperationFileIsDirectoryKey;
  AnyHashable.init<A>(_:)();
  v22 = SFAirDropReceive.AskRequest.ItemInfo.fileIsDirectory.getter();
  v27 = &type metadata for Bool;
  LOBYTE(v26) = v22 & 1;
  sub_1000106E0(&v26, v25);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v25, v28, v23);
  sub_100285E74(v28);
  return v0;
}

uint64_t SFAirDropTransferMetaData.init(transfer:)(uint64_t a1)
{
  v2 = v1;
  v100 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDropReceive.AskRequest();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v79 - v10;
  v12 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropReceive.Transfer.state.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 != enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    goto LABEL_6;
  }

  v17 = *(v13 + 96);
  v13 += 96;
  v17(v15, v12);
  v18 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v18 - 8) + 8))(v15, v18);
  do
  {
    SFAirDropReceive.Transfer.askRequest.getter();
    v19 = SFAirDropReceive.AskRequest.urlItems.getter();
    (*(v6 + 8))(v11, v5);
    v11 = *(v19 + 16);
    if (!v11)
    {

      goto LABEL_16;
    }

    v12 = sub_10028F6B0(*(v19 + 16), 0, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
    v20 = *(type metadata accessor for URL() - 8);
    v21 = sub_100291948(&v101, &v12[(*(v20 + 80) + 32) & ~*(v20 + 80)], v11, v19);
    v16 = sub_100027D64(v101);
    if (v21 == v11)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_6:
    if (v16 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
    {
      (*(v13 + 96))(v15, v12);
      v22 = sub_10028088C(&qword_100974E88, &unk_100808F30);
      v12 = *&v15[*(v22 + 48)];
      v23 = *(v22 + 80);
      v24 = type metadata accessor for SFAirDrop.DeclineAction();
      goto LABEL_12;
    }

    if (v16 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:) || v16 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentIntervention(_:))
    {
      (*(v13 + 96))(v15, v12);
      v25 = sub_10028088C(&qword_100974E80, &qword_100808F40);
      v12 = *&v15[*(v25 + 48)];
      v23 = *(v25 + 64);
LABEL_11:
      v24 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
LABEL_12:
      (*(*(v24 - 8) + 8))(&v15[v23], v24);
LABEL_13:
      v26 = type metadata accessor for SFAirDropReceive.ItemDestination();
LABEL_14:
      (*(*(v26 - 8) + 8))(v15, v26);
      goto LABEL_17;
    }

    if (v16 == enum case for SFAirDropReceive.Transfer.State.importing(_:))
    {
      (*(v13 + 96))(v15, v12);
      v12 = *&v15[*(sub_10028088C(&qword_100974E78, &qword_1007F82D8) + 48)];
      goto LABEL_13;
    }

    if (v16 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
    {
      (*(v13 + 96))(v15, v12);
      v68 = sub_10028088C(&unk_10097C670, &qword_100805110);
      v12 = *&v15[*(v68 + 48)];

      v23 = *(v68 + 80);
      goto LABEL_11;
    }

    if (v16 == enum case for SFAirDropReceive.Transfer.State.opening(_:))
    {
      (*(v13 + 96))(v15, v12);
      v12 = *&v15[*(sub_10028088C(&unk_100974E60, &qword_100808EC0) + 48)];

      goto LABEL_13;
    }

    if (v16 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
    {
      (*(v13 + 96))(v15, v12);
      v69 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
      v70 = *(v69 + 48);

      v12 = *&v15[*(v69 + 80)];

      v71 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v71 - 8) + 8))(&v15[v70], v71);
      v26 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
      goto LABEL_14;
    }
  }

  while (v16 == enum case for SFAirDropReceive.Transfer.State.created(_:));
  (*(v13 + 8))(v15, v12);
LABEL_16:
  v12 = _swiftEmptyArrayStorage;
LABEL_17:
  v93 = v2;
  v94 = v6;
  v95 = v5;
  SFAirDropReceive.Transfer.askRequest.getter();
  v27 = SFAirDropReceive.AskRequest.files.getter();
  v92 = sub_100293364(v27, v12);

  v28 = SFAirDropReceive.AskRequest.files.getter();
  v29 = *(v28 + 16);
  v96 = v9;
  v97 = a1;
  if (v29)
  {
    v101 = _swiftEmptyArrayStorage;
    sub_10028FB3C(0, v29, 0);
    v30 = v101;
    v31 = v98 + 16;
    v98 = *(v98 + 16);
    v32 = *(v31 + 64);
    v91 = v28;
    v33 = v28 + ((v32 + 32) & ~v32);
    v34 = *(v31 + 56);
    v35 = (v31 - 8);
    do
    {
      v36 = v99;
      v37 = v100;
      (v98)(v99, v33, v100);
      v38 = sub_10028D050();
      (*v35)(v36, v37);
      v101 = v30;
      v40 = v30[2];
      v39 = v30[3];
      if (v40 >= v39 >> 1)
      {
        sub_10028FB3C((v39 > 1), v40 + 1, 1);
        v30 = v101;
      }

      v30[2] = v40 + 1;
      v30[v40 + 4] = v38;
      v33 += v34;
      --v29;
    }

    while (v29);
  }

  LODWORD(v100) = SFAirDropReceive.AskRequest.canAutoAccept.getter();
  LODWORD(v99) = SFAirDropReceive.Transfer.didAutoAccept.getter();
  LODWORD(v98) = SFAirDropReceive.AskRequest.verifiableIdentity.getter();
  LODWORD(v91) = SFAirDropReceive.AskRequest.senderIsMe.getter();
  SFAirDropReceive.AskRequest.contactIdentifier.getter();
  if (v41)
  {
    v90 = String._bridgeToObjectiveC()();
  }

  else
  {
    v90 = 0;
  }

  SFAirDropReceive.AskRequest.senderBundleID.getter();
  v89 = String._bridgeToObjectiveC()();

  SFAirDropReceive.AskRequest.senderComputerName.getter();
  v88 = String._bridgeToObjectiveC()();

  SFAirDropReceive.AskRequest.senderEmail.getter();
  if (v42)
  {
    v86 = String._bridgeToObjectiveC()();
  }

  else
  {
    v86 = 0;
  }

  SFAirDropReceive.AskRequest.senderEmailHash.getter();
  if (v43)
  {
    v84 = String._bridgeToObjectiveC()();
  }

  else
  {
    v84 = 0;
  }

  SFAirDropReceive.AskRequest.senderCompositeName.getter();
  if (v44)
  {
    v87 = String._bridgeToObjectiveC()();
  }

  else
  {
    v87 = 0;
  }

  SFAirDropReceive.AskRequest.senderFirstName.getter();
  if (v45)
  {
    v85 = String._bridgeToObjectiveC()();
  }

  else
  {
    v85 = 0;
  }

  SFAirDropReceive.AskRequest.senderLastName.getter();
  if (v46)
  {
    v83 = String._bridgeToObjectiveC()();
  }

  else
  {
    v83 = 0;
  }

  SFAirDropReceive.AskRequest.senderID.getter();
  v47 = String._bridgeToObjectiveC()();

  v48 = SFAirDropReceive.AskRequest.senderIcon.getter();
  v49 = SFAirDropReceive.AskRequest.smallPreviewImage.getter();
  v50 = SFAirDropReceive.AskRequest.previewImage.getter();
  SFAirDropReceive.AskRequest.itemsDescription.getter();
  if (v51)
  {
    v52 = String._bridgeToObjectiveC()();
  }

  else
  {
    v52 = 0;
  }

  v80 = v52;
  v81 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1000276B4(0, &qword_100974E40, SFAirDropTransferItem_ptr);
  sub_100027D9C(&qword_100974E48, &qword_100974E40, SFAirDropTransferItem_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v82 = isa;

  sub_10028088C(&unk_100974E50, &qword_1007FD600);
  v54 = Array._bridgeToObjectiveC()().super.isa;
  v93 = v54;

  v77 = isa;
  v78 = v54;
  v76 = v52;
  v75 = v50;
  v79 = v49;
  v73 = v48;
  v74 = v49;
  v55 = v48;
  v56 = v47;
  v72 = v47;
  v57 = v83;
  v58 = v85;
  v59 = v87;
  v60 = v99 & 1;
  v99 = v50;
  v61 = v84;
  v62 = v86;
  v63 = v88;
  v64 = v89;
  v65 = v90;
  v100 = [v81 initWithTransferTypes:2 canAutoAccept:v100 & 1 didAutoAccept:v60 verifiableIdentity:v98 & 1 senderIsMe:v91 & 1 contactIdentifier:v90 senderBundleID:v89 senderComputerName:v88 senderEmail:v86 senderEmailHash:v84 senderCompositeName:v87 senderFirstName:v85 senderLastName:v83 senderID:v72 senderIcon:v73 smallPreviewImage:v74 previewImage:v75 itemsDescription:v76 itemsDescriptionAdvanced:0 items:v77 rawFiles:v78];

  v66 = type metadata accessor for SFAirDropReceive.Transfer();
  (*(*(v66 - 8) + 8))(v97, v66);
  (*(v94 + 8))(v96, v95);
  return v100;
}

void sub_10028DF18(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, char a5, uint64_t a6)
{
  String.append(_:)(*&a1);
  v9._countAndFlagsBits = 47;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  swift_beginAccess();
  v10 = *(a6 + 16);
  if (*(v10 + 16) && (v11 = sub_100012854(0, 0xE000000000000000), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = v13;

    [v14 incrementCount];
  }

  else
  {
    swift_endAccess();
    v15 = String._bridgeToObjectiveC()();
    if (a4)
    {
      a4 = String._bridgeToObjectiveC()();
    }

    v16 = [objc_allocWithZone(SFAirDropTransferItem) initWithType:v15 subtype:a4 isFile:a5 & 1];

    swift_beginAccess();
    sub_1002AFA6C(v16, 0, 0xE000000000000000);
    swift_endAccess();
  }
}

char *sub_10028E0AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&qword_1009750B8, &qword_1007F8448);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10028E1C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10028E320(void *result, int64_t a2, char a3, void *a4)
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
    sub_10028088C(&qword_100974ED8, &qword_1007F8300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10028088C(&qword_100974EE0, &qword_1007F8308);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10028E4B8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10028088C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_10028E5A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&qword_100974EE8, &qword_10080B560);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10028E6A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&qword_100974EB8, &qword_1008050D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10028E848(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&qword_100974ED0, &qword_1007F82F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10028E93C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&qword_1009750B0, &qword_1007F8440);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10028EACC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&unk_100974F20, &qword_1007F8338);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_10028EC9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10028088C(a5, a6);
  v16 = *(sub_10028088C(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10028088C(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_10028EEAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&unk_100985A50, &qword_1007F8340);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10028EFE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&qword_100975030, &qword_1007F83D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10028F104(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&qword_100975078, &qword_1007F8418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10028F234(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10028088C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10028088C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10028F3DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10028088C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10028F5DC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_10028F6B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028088C(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10028F7AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028088C(&qword_1009750E0, &qword_1007F8458);
  v4 = *(sub_10028088C(&qword_1009750E8, &qword_1007FBB20) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10028F8B4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028088C(&qword_100974F70, &unk_100804260);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10028F93C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028088C(&qword_100987510, &qword_1007F83C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

char *sub_10028F9C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10028088C(&unk_100987410, &unk_1007FB010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_10028FAB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

void *sub_10028FAF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_100974EF0, &qword_1007F8310, &type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo);
  *v3 = result;
  return result;
}

void *sub_10028FB3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002901C8(a1, a2, a3, *v3, &qword_100974EF8, &qword_1007F8318, &unk_100974E50, &qword_1007FD600);
  *v3 = result;
  return result;
}

char *sub_10028FB7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002900B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FB9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002901C8(a1, a2, a3, *v3, &qword_100974F00, &qword_1007F8320, &qword_100974F08, &unk_1007F8990);
  *v3 = result;
  return result;
}

char *sub_10028FBDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002902FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FBFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100290408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FC1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100290550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FC3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100290644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FC5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_100975130, &qword_1007F8488, &type metadata accessor for SFSandboxTokenURLPair);
  *v3 = result;
  return result;
}

char *sub_10028FCA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100290748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FCC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100290854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FCE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291800(a1, a2, a3, *v3, &unk_100974FF0, &qword_1007F83B0, &unk_10097F090, &unk_100804740);
  *v3 = result;
  return result;
}

void *sub_10028FD20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291800(a1, a2, a3, *v3, &unk_100974F40, &qword_1007F8358, &unk_100985A70, &unk_10080CDC0);
  *v3 = result;
  return result;
}

void *sub_10028FD60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_100974F30, &qword_1007F8348, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

void *sub_10028FDA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_100974F38, &qword_1007F8350, &type metadata accessor for SFAirDropReceive.Transfer);
  *v3 = result;
  return result;
}
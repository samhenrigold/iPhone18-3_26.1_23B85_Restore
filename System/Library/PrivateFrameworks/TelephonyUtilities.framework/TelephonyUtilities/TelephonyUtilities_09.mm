uint64_t sub_100229020(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 8) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100229BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100229C6C;
    v9[3] = &unk_100619D88;
    v7 = v5;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    dispatch_async(v6, v9);
  }
}

id sub_100229DB0(id a1, NSDictionary *a2)
{
  v2 = [(NSDictionary *)a2 _stringForKey:@"uri"];
  if ([v2 _appearsToBeDSID])
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 _stripFZIDPrefix];
  }

  v4 = v3;

  return v4;
}

uint64_t sub_10022A638(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10022AC88(id a1)
{
  v1 = os_log_create("com.apple.calls.callservicesd", "Default");
  v2 = qword_1006ACEF8;
  qword_1006ACEF8 = v1;
}

id sub_10022ACCC(uint64_t a1)
{
  if (qword_1006ACF10 != -1)
  {
    sub_10047D1A0();
  }

  v2 = qword_1006ACF08;

  return v2;
}

void sub_10022AD10(id a1)
{
  v1 = os_log_create("com.apple.calls.callservicesd", "IDSMessageProxy");
  v2 = qword_1006ACF08;
  qword_1006ACF08 = v1;
}

void sub_10022AD54(id a1)
{
  v1 = os_log_create("com.apple.calls.callservicesd", "Reporting");
  v2 = qword_1006ACF18;
  qword_1006ACF18 = v1;
}

id sub_10022AD98(uint64_t a1)
{
  if (qword_1006ACF30 != -1)
  {
    sub_10047D1B4();
  }

  v2 = qword_1006ACF28;

  return v2;
}

void sub_10022ADDC(id a1)
{
  v1 = os_log_create("com.apple.calls.callservicesd", "AnsweringMachine");
  v2 = qword_1006ACF28;
  qword_1006ACF28 = v1;
}

void sub_10022AE20(id a1)
{
  v1 = os_log_create("com.apple.calls.callservicesd", "Audio");
  v2 = qword_1006ACF38;
  qword_1006ACF38 = v1;
}

id sub_10022AE64(uint64_t a1)
{
  if (qword_1006ACF50 != -1)
  {
    sub_10047D1DC();
  }

  v2 = qword_1006ACF48;

  return v2;
}

void sub_10022AEA8(id a1)
{
  v1 = os_log_create("com.apple.calls.callservicesd", "Simulated");
  v2 = qword_1006ACF48;
  qword_1006ACF48 = v1;
}

id sub_10022AEEC(uint64_t a1)
{
  if (qword_1006ACF60 != -1)
  {
    sub_10047D1F0();
  }

  v2 = qword_1006ACF58;

  return v2;
}

void sub_10022AF30(id a1)
{
  v1 = os_log_create("com.apple.copresence.latency", "CSD");
  v2 = qword_1006ACF58;
  qword_1006ACF58 = v1;
}

void sub_10022AF9C(void *a1)
{
  v1 = a1;
  if (qword_1006ACF70 != -1)
  {
    sub_10047D204();
  }

  v2 = getCTGreenTeaOsLogHandle();
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138543618;
    v5 = @"MobilePhone";
    v6 = 2114;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "(%{public}@) %{public}@", &v4, 0x16u);
  }
}

void sub_10022B084(void *a1, int a2)
{
  v3 = a1;
  v4 = [LSApplicationRecord csd_applicationRecordForBundleIdentifier:v3];
  v5 = [v4 localizedNameWithPreferredLocalizations:&off_10063EE78];
  [v3 UTF8String];

  ct_green_tea_logger_create_static();
  v6 = getCTGreenTeaOsLogHandle();
  v7 = v6;
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = @"stopped";
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    if (a2)
    {
      v8 = @"started";
    }

    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "<%@>[%@][com.apple.callservicesd]:Screen Share %@", &v9, 0x20u);
  }
}

id sub_10022B1C8(uint64_t a1)
{
  if (qword_1006ACF80 != -1)
  {
    sub_10047D218();
  }

  v2 = qword_1006ACF78;

  return v2;
}

void sub_10022B20C(id a1)
{
  v1 = os_log_create("com.apple.calls.callservicesd", "CommunicationTrust");
  v2 = qword_1006ACF78;
  qword_1006ACF78 = v1;
}

uint64_t sub_10022B5E0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___CSDMessagingConversationParticipantDidLeaveContext__version;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___CSDMessagingConversationParticipantDidLeaveContext__version;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
    while (1)
    {
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___CSDMessagingConversationParticipantDidLeaveContext__leaveReason;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___CSDMessagingConversationParticipantDidLeaveContext__leaveReason;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_10022CAA4(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1006ACF88;
  qword_1006ACF88 = v1;
}

void sub_10022CC1C(uint64_t a1)
{
  v2 = [CSDKeychainPasswordItem alloc];
  v3 = +[CSDKeychainPasswordItem serviceName];
  v4 = +[CSDKeychainPasswordItem accessGroupName];
  v5 = [(CSDKeychainPasswordItem *)v2 initWithService:v3 account:@"lastKnownFaceTimeCallerID" accessGroup:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  objc_initWeak(&location, *(a1 + 32));
  v8 = [[CSDDeviceLockStateObserver alloc] initWithQueue:*(*(a1 + 32) + 24)];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(a1 + 32) + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10022CD78;
  v12[3] = &unk_10061A740;
  objc_copyWeak(&v13, &location);
  [v11 performBlockAfterFirstUnlock:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_10022CD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10022CD78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _initializeLastKnownCallerID];
    WeakRetained = v2;
  }
}

void sub_10022CEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10022CF84(uint64_t a1)
{
  v2 = [*(a1 + 32) faceTimeIMAccount];
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v5 = [v2 hasAlias:v4];
  if ((v5 & 1) == 0)
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v3;
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding %@ as an alias on account %@", &v11, 0x16u);
    }

    v5 = [v2 addAlias:*v3];
    if ((v5 & 1) == 0)
    {
      v8 = sub_100004778(v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10047D2A4(v3, v2, v8);
      }
    }
  }

  v9 = sub_100004778(v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *v3;
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating display name to %@ on account %@", &v11, 0x16u);
  }

  [v2 setDisplayName:*v3];
}

void sub_10022D9AC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v3 = TUStringsAreEqualOrNil();
  if ((v3 & 1) == 0)
  {
    v4 = sub_100004778(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 138412546;
      v7 = v2;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FaceTime caller ID changed from %@ to %@", &v6, 0x16u);
    }

    [*(a1 + 32) _saveLastKnownFaceTimeCallerID];
    dispatch_async(&_dispatch_main_q, &stru_10061F228);
  }
}

void sub_10022DABC(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"CSDFaceTimeIMAccountCallerIDChangedNotification" object:0];
}

void sub_10022F768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10022F7A4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained ctEmergencyCallbackModeStatusChangedWithUserInfo:a2];
}

void sub_10023041C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_100004778(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10047D6E8();
    }
  }
}

void sub_100230600(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_100004778(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10047D75C();
    }
  }
}

void sub_100231F4C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 client:*(a1 + 32) capabilitiesDidChange:*(a1 + 40)];
}

void sub_1002320BC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 emergencyCallbackModeDidChangeForAllSubscriptionsForClient:*(a1 + 32)];
}

uint64_t sub_100233C8C(uint64_t a1, void *a2)
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
        v79 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v79 & 0x7F) << v5;
        if ((v79 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 24) |= 0x200u;
            while (1)
            {
              v85 = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v85 & 0x7F) << v46;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_131;
              }
            }

            v20 = (v48 != 0) & ~[a2 hasError];
LABEL_131:
            v77 = 20;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_120:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_145;
            }

            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 24) |= 8u;
            while (1)
            {
              v84 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v84 & 0x7F) << v33;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_125;
              }
            }

            v20 = (v35 != 0) & ~[a2 hasError];
LABEL_125:
            v77 = 14;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v58 = 0;
              v59 = 0;
              v60 = 0;
              *(a1 + 24) |= 4u;
              while (1)
              {
                v83 = 0;
                v61 = [a2 position] + 1;
                if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                {
                  v63 = [a2 data];
                  [v63 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v60 |= (v83 & 0x7F) << v58;
                if ((v83 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v11 = v59++ >= 9;
                if (v11)
                {
                  LOBYTE(v20) = 0;
                  goto LABEL_135;
                }
              }

              v20 = (v60 != 0) & ~[a2 hasError];
LABEL_135:
              v77 = 13;
              break;
            case 9:
              v70 = 0;
              v71 = 0;
              v72 = 0;
              *(a1 + 24) |= 0x20u;
              while (1)
              {
                v82 = 0;
                v73 = [a2 position] + 1;
                if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                {
                  v75 = [a2 data];
                  [v75 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v72 |= (v82 & 0x7F) << v70;
                if ((v82 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                v11 = v71++ >= 9;
                if (v11)
                {
                  LOBYTE(v20) = 0;
                  goto LABEL_143;
                }
              }

              v20 = (v72 != 0) & ~[a2 hasError];
LABEL_143:
              v77 = 16;
              break;
            case 0xA:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              *(a1 + 24) |= 0x80u;
              while (1)
              {
                v81 = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v81 & 0x7F) << v21;
                if ((v81 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  LOBYTE(v20) = 0;
                  goto LABEL_139;
                }
              }

              v20 = (v23 != 0) & ~[a2 hasError];
LABEL_139:
              v77 = 18;
              break;
            default:
              goto LABEL_120;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v80 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v80 & 0x7F) << v39;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_129;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_129:
          *(a1 + 8) = v45;
          goto LABEL_145;
        }

        if (v13 != 2)
        {
          goto LABEL_120;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 24) |= 0x100u;
        while (1)
        {
          v89 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v89 & 0x7F) << v27;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_123;
          }
        }

        v20 = (v29 != 0) & ~[a2 hasError];
LABEL_123:
        v77 = 19;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v52 = 0;
            v53 = 0;
            v54 = 0;
            *(a1 + 24) |= 0x40u;
            while (1)
            {
              v88 = 0;
              v55 = [a2 position] + 1;
              if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
              {
                v57 = [a2 data];
                [v57 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v54 |= (v88 & 0x7F) << v52;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v11 = v53++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_133;
              }
            }

            v20 = (v54 != 0) & ~[a2 hasError];
LABEL_133:
            v77 = 17;
            break;
          case 4:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 24) |= 0x10u;
            while (1)
            {
              v87 = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v87 & 0x7F) << v64;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_141;
              }
            }

            v20 = (v66 != 0) & ~[a2 hasError];
LABEL_141:
            v77 = 15;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 2u;
            while (1)
            {
              v86 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v86 & 0x7F) << v14;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_137;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_137:
            v77 = 12;
            break;
          default:
            goto LABEL_120;
        }
      }

      *(a1 + v77) = v20;
LABEL_145:
      v78 = [a2 position];
    }

    while (v78 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100235AE4(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_34;
          case 2:
            v16 = objc_alloc_init(CSDMessagingHandle);
            objc_storeStrong((a1 + 16), v16);
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !sub_1000D1450(v16, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_35;
          case 3:
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_34;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_34;
        }

        if (v13 == 7)
        {
          v14 = PBReaderReadString();
          v15 = 24;
          goto LABEL_34;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 48;
LABEL_34:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
LABEL_35:

          goto LABEL_36;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 8;
          goto LABEL_34;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100236810(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[IMLockdownManager sharedInstance];
  v14 = [v13 isInternalInstall];

  if (v14)
  {
    v15 = [*(a1 + 32) signatureWithDomain:@"FaceTime" type:v9 subType:v10 subtypeContext:v11 detectedProcess:@"callservicesd" triggerThresholdValues:0];
    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Capturing snapshot for signature %@ and payload %@", &v17, 0x16u);
    }

    [*(a1 + 32) snapshotWithSignature:v15 duration:0 event:v12 payload:&stru_10061F2B0 reply:0.0];
  }
}

void sub_10023698C(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v4 = [v3 BOOLValue];

  v6 = sub_100004778(v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Captured snapshot: %@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10047DAE0(v2, v7);
  }
}

void sub_100237F90(uint64_t a1)
{
  v1 = [[CSDReportingController alloc] initWithQueue:*(a1 + 32)];
  v2 = qword_1006ACF98;
  qword_1006ACF98 = v1;
}

void sub_1002381E4(uint64_t a1)
{
  v3 = +[TUCallCenter sharedInstance];
  v2 = [v3 conversationManager];
  [v2 addDelegate:*(a1 + 32) queue:*(a1 + 40)];
}

void sub_100238460(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = sub_100004778(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Call screening changed for call: %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 40) reporters];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 reportingController:*(a1 + 40) screeningChangedForCall:v2];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1002386A0(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = sub_100004778(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Receptionist state changed for call: %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 40) reporters];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 reportingController:*(a1 + 40) receptionistStateChangedForCall:v2];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1002388E0(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = sub_100004778(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Call status changed for call: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 40) reporters];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 40);
          v11 = +[TUCallCenter sharedInstance];
          [v9 reportingController:v10 statusChangedForCall:v2 totalCallCount:{objc_msgSend(v11, "currentAudioAndVideoCallCount")}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_100238B44(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(a1 + 40) reporters];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 reportingController:*(a1 + 40) recordingEndedForSession:v2];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_100239D10(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "call: %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 40) reporters];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = sub_100004778(v5);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "reporter: %@", buf, 0xCu);
        }

        v5 = objc_opt_respondsToSelector();
        if (v5)
        {
          v5 = [v9 reportingController:*(a1 + 40) createOneToOneFTReportingSessionForCallWithUUID:*(a1 + 32) withReportingHierarchyToken:*(a1 + 48) withVideo:*(a1 + 56)];
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = v5;
    }

    while (v5);
  }
}

void sub_100239FA8(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "createConversationReportingSession using conversation: %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 40) reporters];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = sub_100004778(v5);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "reporter: %@", buf, 0xCu);
        }

        v5 = objc_opt_respondsToSelector();
        if (v5)
        {
          v5 = [v9 reportingController:*(a1 + 40) createConversationReportingSessionForConversation:*(a1 + 32)];
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = v5;
    }

    while (v5);
  }
}

void sub_10023D488(uint64_t a1)
{
  [*(a1 + 32) updateEnabled];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"handleAXSVoiceOverTouchEnabledNotification:" name:kAXSVoiceOverTouchEnabledNotification object:0];
}

void sub_10023D954(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_10023DA3C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

uint64_t sub_10023E640(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [v3 shouldFilterIncomingCall:*(a1 + 32) from:*(a1 + 40)], v4))
  {
    v5 = sub_100004778(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) UUID];
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ reported blocked call with UUID %@", &v9, 0x16u);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_10023E754(id a1, CSDCallFilter *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sub_10023E7A0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [v3 shouldFilterIncomingCall:*(a1 + 32) from:*(a1 + 40)], (v4 & 1) == 0))
  {
    v6 = sub_100004778(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) UUID];
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ reported known call update with UUID %@", &v9, 0x16u);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_10023F288(uint64_t a1, void *a2)
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
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
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
          v21 = objc_alloc_init(CSDMessagingConversationLinkGeneratorDescriptor);
          [a1 addGeneratorDescriptors:v21];
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !sub_1001B2458(v21, a2))
          {
LABEL_56:

            return 0;
          }

          goto LABEL_47;
        }

        if (v13 == 4)
        {
          v21 = objc_alloc_init(CSDMessagingLinkSyncCheckInGeneratorDescriptorInfo);
          [a1 addGenerateDescriptorInfos:v21];
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !sub_100229020(v21, a2))
          {
            goto LABEL_56;
          }

LABEL_47:
          PBReaderRecallMark();

          goto LABEL_54;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31 & 0x7F) << v22;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_53;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_53:
          *(a1 + 24) = v28;
          goto LABEL_54;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31 & 0x7F) << v14;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_49;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_49:
          *(a1 + 28) = v20;
          goto LABEL_54;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10024054C(uint64_t a1)
{
  v3 = [NSPredicate predicateWithFormat:@"outgoingLocalParticipantUUID == %@", *(a1 + 32)];
  v2 = [*(a1 + 40) chManager];
  [v2 setOutgoingLocalParticipantUUID:*(a1 + 48) forRecentCallsMatchingPredicate:v3];
}

void sub_1002406B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10024079C;
    block[3] = &unk_10061A678;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v16 = v10;
    v17 = v11;
    dispatch_async(v6, block);
  }
}

void sub_1002408EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002409B0;
    v9[3] = &unk_100619D88;
    v7 = v5;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    dispatch_async(v6, v9);
  }
}

void sub_100240ED4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v12 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [v5 URI];
    v7 = [v6 prefixedURI];
    v8 = [TUHandle normalizedHandleWithDestinationID:v7];

    v9 = *(a1 + 32);
    v10 = [v12 properties];
    v11 = [v10 expirationDate];
    (*(v9 + 16))(v9, v8, v11, 0);
  }
}

void sub_1002416B0(uint64_t a1)
{
  v2 = sub_100004778([*(a1 + 32) _update]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    v5 = *(v3 + 64);
    v6 = 138412802;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ initialized for service %@ with the following devices: %@", &v6, 0x20u);
  }
}

void sub_1002426B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 normalizedValue];
  v8 = [IDSURI URIWithPrefixedURI:v6];

  v7 = [[IDSFirewallEntry alloc] initWithURI:v8 andLastSeenDate:v5];
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }
}

void sub_100242B78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding firewall entries1 %@", buf, 0xCu);
  }

  v10 = sub_100004778(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v5 || v6)
  {
    if (v11)
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to retrieve firewall with error: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding firewall entries2 %@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100242D44;
    v14[3] = &unk_10061A4C0;
    v15 = v13;
    [v5 donateEntries:v15 withCompletion:v14];
    v10 = v15;
  }
}

void sub_100242D44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100004778(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to add firewall entries: %@ to firewall with error: %@", &v7, 0x16u);
    }
  }
}

void sub_100242EDC(id a1, IDSFirewall *a2, NSError *a3)
{
  v4 = a3;
  v5 = v4;
  if (!a2 || v4)
  {
    v6 = sub_100004778(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to retrieve firewall with error: %@", &v7, 0xCu);
    }
  }

  else
  {
    [(IDSFirewall *)a2 removeAllEntries:&stru_10061F830];
  }
}

void sub_100242FA8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_100004778(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to remove all firewall entries with error: %@", &v5, 0xCu);
    }
  }
}

void sub_1002431BC(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v20 = a3;
  v22 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v25 + 1) + 8 * i) normalizedValue];
        v11 = [IDSURI URIWithUnprefixedURI:v10];

        v12 = [IDSFirewallEntry alloc];
        v13 = +[NSDate date];
        v14 = [v12 initWithURI:v11 andLastSeenDate:v13];

        if (v14)
        {
          [v22 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  v16 = sub_100004778(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Removing firewall entries: %@", buf, 0xCu);
  }

  if (!v21 || v20)
  {
    v19 = sub_100004778(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to retrieve firewall with error: %@", buf, 0xCu);
    }
  }

  else
  {
    v18 = [v22 copy];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100243490;
    v23[3] = &unk_10061A4C0;
    v24 = v22;
    [v21 removeEntries:v18 withCompletion:v23];

    v19 = v24;
  }
}

void sub_100243490(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100004778(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to remove firewall entries: %@ to firewall with error: %@", &v7, 0x16u);
    }
  }
}

void sub_100243D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100243E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100243F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10024409C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10024452C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = sub_100004778(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] IDS failed to retrieve pseudonym with error %@", &v8, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_100244AF0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0, 0, a3);
  }

  else
  {
    v7 = [a2 properties];
    v6 = [v7 expirationDate];
    (*(v3 + 16))(v3, 1, v6, 0);
  }
}

uint64_t sub_100244F70(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100245680(id a1)
{
  v1 = CFPreferencesCopyAppValue(@"pairedDeviceUniqueIDOverride", TUBundleIdentifierTelephonyUtilitiesFramework);
  v2 = qword_1006ACFA8;
  qword_1006ACFA8 = v1;
}

void sub_100245CD8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if (a3)
  {
    v5 = a3;
    v6 = [[CSDMessagingRelayMessage alloc] initWithData:v5];

    v7 = [(CSDMessagingRelayMessage *)v6 inviteData];
    a3 = [v7 relayInviteDictionary];
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100247F18(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, 1);
  }

  return result;
}

void sub_100248AC0(id *a1)
{
  v2 = +[CSDRelayIDSService sharedInstance];
  v3 = [v2 devices];

  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    do
    {
      v9 = 0;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        v11 = [a1[4] provider];
        v12 = [v10 canReceiveMessagesForCallProvider:v11];

        if (v12)
        {
          v13 = [v10 destination];
          [v4 addObject:v13];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v7);
  }

  v14 = [a1[5] _sendMessageOptionsWithTimeout:15.0];
  v15 = +[CSDRelayIDSService sharedInstance];
  v16 = [v15 service];
  v17 = a1 + 6;
  v18 = [a1[6] data];
  v41 = 0;
  v42 = 0;
  v35 = v14;
  v19 = [v16 sendData:v18 toDestinations:v4 priority:300 options:v14 identifier:&v42 error:&v41];
  v36 = v42;
  v20 = v41;

  v22 = sub_100004778(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*v17 typeString];
    *buf = 138413058;
    v48 = v23;
    v49 = 2112;
    v50 = v36;
    v51 = 2112;
    v52 = v35;
    v53 = 2112;
    v54 = v4;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending %@ message with identifier %@ and options %@ to destinations %@", buf, 0x2Au);
  }

  v25 = sub_100004778(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *v17;
    *buf = 138412546;
    v48 = v36;
    v49 = 2112;
    v50 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "identifier %@ message %@", buf, 0x16u);
  }

  v28 = sub_100004778(v27);
  v29 = v28;
  if (v19)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [*v17 typeString];
      *buf = 138412290;
      v48 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Successfully sent %@ message", buf, 0xCu);
    }

    if (a1[7])
    {
      v31 = +[TUCallCenter sharedInstance];
      v32 = [v31 queue];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100248F9C;
      v39[3] = &unk_10061A7E0;
      v33 = &v40;
      v40 = a1[7];
      v34 = v39;
LABEL_23:
      dispatch_async(v32, v34);
    }
  }

  else
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10047DC7C(a1 + 6);
    }

    if (a1[7])
    {
      v31 = +[TUCallCenter sharedInstance];
      v32 = [v31 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100248FB0;
      block[3] = &unk_10061A7E0;
      v33 = &v38;
      v38 = a1[7];
      v34 = block;
      goto LABEL_23;
    }
  }
}

void sub_100249A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v28 + 80));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100249ABC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = sub_100004778(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "... but we were told to ignore the invite", v11, 2u);
    }
  }

  else
  {
    v4 = *(*(*(a1 + 72) + 8) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100249C24;
    block[3] = &unk_10061F918;
    objc_copyWeak(&v16, (a1 + 80));
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v13 = v10;
    v14 = v9;
    v15 = *(a1 + 64);
    dispatch_async(v4, block);

    objc_destroyWeak(&v16);
  }
}

void sub_100249C24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = sub_100004778(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "... so we are going to handle the session's message", v13, 2u);
    }

    v5 = [*(a1 + 32) identifiersForSessionInvitationWithMessage:*(a1 + 40)];
    v6 = [CSDIDSDualSessionProvider alloc];
    v7 = *(a1 + 48);
    v8 = +[TUCallCenter sharedInstance];
    v9 = [v8 queue];
    v10 = [(CSDIDSDualSessionProvider *)v6 initWithSession:v7 queue:v9];

    v11 = -[CSDRelayIDSDualSession initAsReceiverWithSessionProvider:remoteDestination:remoteDevice:remoteProtocolVersion:identifiers:]([CSDRelayIDSDualSession alloc], "initAsReceiverWithSessionProvider:remoteDestination:remoteDevice:remoteProtocolVersion:identifiers:", v10, *(a1 + 56), *(a1 + 64), [*(a1 + 40) protocolVersion], v5);
    [v11 setInvitationTimeout:{objc_msgSend(*(a1 + 32), "timeoutForInvitationWithMessage:", *(a1 + 40))}];
    [v11 setDelegate:v3];
    v12 = [v3 sessions];
    [v12 addObject:v11];

    [*(a1 + 32) messenger:v3 handledMessage:*(a1 + 40) fromDestination:*(a1 + 56) device:*(a1 + 64)];
  }
}

void sub_10024A850(id *a1)
{
  v2 = +[FTServerBag sharedInstance];
  v3 = a1[4];
  v4 = v3[10];
  v3[10] = v2;

  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = a1[4];
  v7 = v6[6];
  v6[6] = v5;

  v8 = a1[4];
  v9 = v8[11];
  v8[11] = &stru_10061F998;

  objc_storeStrong(a1[4] + 1, a1[5]);
  [*(a1[4] + 1) setDelegate:?];
  objc_storeStrong(a1[4] + 2, a1[6]);
  v10 = +[NSMutableDictionary dictionary];
  v11 = a1[4];
  v12 = v11[3];
  v11[3] = v10;

  v13 = +[NSMapTable strongToStrongObjectsMapTable];
  v14 = a1[4];
  v15 = v14[4];
  v14[4] = v13;

  objc_storeStrong(a1[4] + 5, a1[7]);
  v16 = [[CSDClientManager alloc] initWithSerialQueue:*(a1[4] + 7)];
  v17 = a1[4];
  v18 = v17[9];
  v17[9] = v16;

  v19 = [a1[4] clientManager];
  [v19 setRequiredConnectionCapability:@"access-moments"];

  v20 = +[TUMomentsControllerXPCClient momentsControllerClientXPCInterface];
  v21 = [a1[4] clientManager];
  [v21 setRemoteObjectInterface:v20];

  v22 = +[TUMomentsControllerXPCClient momentsControllerServerXPCInterface];
  v23 = [a1[4] clientManager];
  [v23 setExportedInterface:v22];

  v24 = a1[4];
  v25 = [v24 clientManager];
  [v25 setExportedObject:v24];

  objc_initWeak(&location, a1[4]);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10024AC94;
  v32[3] = &unk_10061AEF8;
  objc_copyWeak(&v33, &location);
  v26 = [a1[4] clientManager];
  [v26 setInterruptionHandler:v32];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10024AD64;
  v30[3] = &unk_10061AEF8;
  objc_copyWeak(&v31, &location);
  v27 = [a1[4] clientManager];
  [v27 setInvalidationHandler:v30];

  v28 = [a1[4] clientManager];
  v29 = [v28 asynchronousExportedObjectProxy];
  [TUMomentsControllerXPCClient setAsynchronousServer:v29];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

void sub_10024AB4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

CSDAVCMoments *__cdecl sub_10024AB7C(id a1, int64_t a2, NSString *a3, CSDAVCMomentsDelegate *a4, OS_dispatch_queue *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "videoStreamToken: %ld", &v14, 0xCu);
  }

  v12 = [[_TtC13callservicesd13CSDAVCMoments alloc] initWithStreamToken:a2 requesterID:v10 delegate:v9 dispatchQueue:v8];

  return v12;
}

void sub_10024AC94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Moments XPC connection interrupted from client %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleClientDisconnected:v3];
}

void sub_10024AD64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Moments XPC connection invalidated from client %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleClientDisconnected:v3];
}

void sub_10024B190(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    *buf = 67109632;
    *v39 = v3;
    *&v39[4] = 2048;
    *&v39[6] = v4;
    *&v39[14] = 1024;
    *&v39[16] = TUAllowLocalVideoRecording();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mediaType: %d, token: %ld localVideoRecordingEnabled: %d", buf, 0x18u);
  }

  v5 = [*(a1 + 32) serverBag];
  if ([v5 isMomentsDisabled])
  {

    goto LABEL_17;
  }

  v6 = [objc_opt_class() isFaceTimePhotosAvailable];

  if (!v6)
  {
LABEL_17:
    v10 = [NSString stringWithFormat:@"Asked to start moments request but moments is disabled by server bag"];
    v30 = NSLocalizedDescriptionKey;
    v31 = v10;
    v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v18 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.csdmomentscontroller" code:1 userInfo:v21];

    v11 = sub_100004778(v22);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10047AE2C();
    }

LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v7 = *(a1 + 64) - 1;
  if (v7 > 2)
  {
    v10 = [NSString stringWithFormat:@"Asked to start moments request with invalid media type %d", *(a1 + 64)];
    v32 = NSLocalizedDescriptionKey;
    v33 = v10;
    v23 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v18 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.csdmomentscontroller" code:1 userInfo:v23];

    v11 = sub_100004778(v24);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10047AE2C();
    }

    goto LABEL_19;
  }

  v8 = [*(a1 + 32) sessionsByToken];
  v9 = [NSNumber numberWithInteger:*(a1 + 56)];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 moments];
    if (TUAllowLocalVideoRecording())
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v13 = [v11 newRequestWithMediaType:(v7 + 1) mode:v12 requesteeID:*(a1 + 40)];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 transactionID];
      v16 = [[CSDMomentsRequest alloc] initWithAVCRequest:v14 session:v10];
      [v10 setActiveRequest:v16 forTransactionID:v15];
      if ((TUAllowLocalVideoRecording() & 1) == 0)
      {
        [*(a1 + 32) _startTimeoutForMomentsRequestWithTransactionID:v15];
      }

      v29 = 0;
      v17 = [v14 startWithError:&v29];
      v18 = v29;
      v19 = sub_100004778(v18);
      v20 = v19;
      if (v17)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v39 = v14;
          *&v39[8] = 2112;
          *&v39[10] = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Successfully started AVCMomentsRequest: %@, transactionID %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10047DD14();
      }
    }

    else
    {
      v16 = [NSString stringWithFormat:@"Could not start request for mediaType: %d streamToken: %ld. [AVCMoments newRequestWithMediaType:] returned nil.", *(a1 + 64), *(a1 + 56)];
      v36 = NSLocalizedDescriptionKey;
      v37 = v16;
      v27 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v18 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.csdmomentscontroller" code:1 userInfo:v27];

      v20 = sub_100004778(v28);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10047DD7C();
      }

      v15 = 0;
    }
  }

  else
  {
    v11 = [NSString stringWithFormat:@"Could not start request for mediaType: %d streamToken: %ld. No session has been registered for requested stream token.", *(a1 + 64), *(a1 + 56)];
    v34 = NSLocalizedDescriptionKey;
    v35 = v11;
    v25 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v18 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.csdmomentscontroller" code:1 userInfo:v25];

    v14 = sub_100004778(v26);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v39 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] %@", buf, 0xCu);
    }

    v15 = 0;
  }

LABEL_20:
  (*(*(a1 + 48) + 16))();
}

void sub_10024B864(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "transactionID: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) sessionForTransactionID:*(a1 + 32)];
  v5 = [v4 activeRequestsByTransactionID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    v7 = [v6 avcRequest];
    v16 = 0;
    v8 = [v7 endWithError:&v16];
    v9 = v16;

    v11 = sub_100004778(v10);
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully ended request %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10047DDE4();
    }
  }

  else
  {
    v12 = [NSString stringWithFormat:@"Could not find request for transaction ID %@", *(a1 + 32)];
    v17 = NSLocalizedDescriptionKey;
    v18 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.csdmomentscontroller" code:1 userInfo:v13];

    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10047AE2C();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10024BC34(uint64_t a1)
{
  v2 = [*(a1 + 32) availabilityWithRemoteAvailable:*(a1 + 80)];
  v3 = +[NSSet set];
  v4 = [*(a1 + 32) sessionsByToken];
  v5 = [NSNumber numberWithInteger:*(a1 + 72)];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v8 = [v6 moments];
    v9 = sub_10024C1A8([v8 capabilities]);

    v10 = sub_100004778([v6 setRemoteIDSDestinations:*(a1 + 40)]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 72);
      v39 = 138412546;
      v40 = v6;
      v41 = 2048;
      v42 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updating remoteIDSDestinations and returning registered session: %@ for streamToken: %ld", &v39, 0x16u);
    }

    goto LABEL_26;
  }

  if (v2 != 3)
  {
    v10 = sub_100004778(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 67109120;
      LODWORD(v40) = v2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FaceTime Photos is not available. Availability is %d", &v39, 8u);
    }

    goto LABEL_19;
  }

  v12 = *(a1 + 40);
  v10 = sub_100004778(v7);
  v13 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (v13)
    {
      v39 = 67109120;
      LODWORD(v40) = 3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] FaceTime Photos availability is %d but remoteIDSDestination is nil so changing availability to Unavailabile", &v39, 8u);
    }

    v2 = 1;
LABEL_19:
    v9 = v3;
    goto LABEL_26;
  }

  if (v13)
  {
    v14 = *(a1 + 72);
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v39 = 134218498;
    v40 = v14;
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Registering stream token %ld, requesterID %@ and remoteIDSDestinations %@ with new moments object", &v39, 0x20u);
  }

  v17 = [*(a1 + 32) momentsGenerator];
  v18 = *(a1 + 72);
  v19 = *(a1 + 48);
  v20 = *(a1 + 32);
  v21 = [v20 queue];
  v10 = (v17)[2](v17, v18, v19, v20, v21);

  v9 = sub_10024C1A8([v10 capabilities]);

  v23 = sub_100004778(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138412546;
    v40 = v10;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Registered new moments object %@ with supported media types: %@", &v39, 0x16u);
  }

  if ([v9 count]|| (v24 = TUAllowLocalVideoRecording(), v24))
  {
    v25 = [CSDMomentsControllerSession alloc];
    if (TUAllowLocalVideoRecording())
    {
      v26 = &__NSDictionary0__struct;
    }

    else
    {
      v26 = *(a1 + 40);
    }

    v27 = [*(a1 + 32) callCenterObserver];
    v28 = [(CSDMomentsControllerSession *)v25 initWithMoments:v10 remoteIDSDestinations:v26 callCenterObserver:v27];

    v29 = [*(a1 + 32) sessionsByToken];
    v30 = [NSNumber numberWithInteger:*(a1 + 72)];
    [v29 setObject:v28 forKeyedSubscript:v30];

    v31 = [*(a1 + 32) streamTokensByCSDClient];
    v32 = [v31 objectForKey:*(a1 + 56)];

    v33 = [*(a1 + 32) streamTokensByCSDClient];
    v34 = v33;
    if (v32)
    {
      v35 = [v33 objectForKey:*(a1 + 56)];
      v36 = [NSNumber numberWithInteger:*(a1 + 72)];
      [v35 addObject:v36];
    }

    else
    {
      v35 = [NSNumber numberWithInteger:*(a1 + 72)];
      v36 = [NSMutableArray arrayWithObject:v35];
      [v34 setObject:v36 forKey:*(a1 + 56)];
    }
  }

  else
  {
    v28 = sub_100004778(v24);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v38 = *(a1 + 72);
      v39 = 138412802;
      v40 = v9;
      v41 = 2112;
      v42 = v10;
      v43 = 2048;
      v44 = v38;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "unexpected supportedMediaTypes: %@, moments: %@, streamToken: %ld", &v39, 0x20u);
    }
  }

  v2 = 3;
LABEL_26:

  v37 = [[TUMomentsCapabilities alloc] initWithAvailability:v2 supportedMediaTypes:v9];
  (*(*(a1 + 64) + 16))();
}

id sub_10024C1A8(char a1)
{
  v2 = +[NSMutableSet set];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:&off_10063EDE0];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:&off_10063EDF8];
  if ((a1 & 2) != 0)
  {
LABEL_4:
    [v3 addObject:&off_10063EE10];
  }

LABEL_5:
  v4 = [v3 copy];

  return v4;
}

void sub_10024C35C(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked to unregister stream token: %ld", &v8, 0xCu);
  }

  v4 = [*(a1 + 32) streamTokensByCSDClient];
  v5 = [v4 objectForKey:*(a1 + 40)];

  v6 = [NSNumber numberWithInteger:*(a1 + 56)];
  [v5 removeObject:v6];

  if (![v5 count])
  {
    v7 = [*(a1 + 32) streamTokensByCSDClient];
    [v7 removeObjectForKey:*(a1 + 40)];
  }

  [*(a1 + 32) unregisterStreamToken:*(a1 + 56)];
  (*(*(a1 + 48) + 16))();
}

void sub_10024C558(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 addLocalClientObject:*(a1 + 40)];
}

void sub_10024C660(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 removeLocalClientObject:*(a1 + 40)];
}

void sub_10024CA20(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a3;
  [v5 didUpdateCapabilities:v3 forVideoStreamToken:{objc_msgSend(v4, "streamToken")}];
}

void sub_10024CD54(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 requesterID];
  [v4 willCaptureRemoteRequestFromRequesterID:v5];
}

void sub_10024D978(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 64);
    v6 = *(a1 + 48);
    *buf = 138413058;
    v51 = v3;
    v52 = 2112;
    v53 = v4;
    v54 = 1024;
    *v55 = v5;
    *&v55[4] = 2112;
    *&v55[6] = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "url: %@ metadata: %@ isZipped: %d fromIDSDestination: %@", buf, 0x26u);
  }

  v7 = (a1 + 56);
  v8 = [*(a1 + 56) serverBag];
  if (([v8 isMomentsDisabled] & 1) == 0)
  {
    v10 = [objc_opt_class() isFaceTimePhotosAvailable];

    if (!v10)
    {
      goto LABEL_17;
    }

    v11 = [*(a1 + 40) objectForKeyedSubscript:@"CSDMomentsControllerMetadataKeyTransactionID"];
    if (!v11)
    {
      v32 = sub_100004778(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10047E57C();
      }

      [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
      goto LABEL_39;
    }

    v12 = [*v7 sessionForTransactionID:v11];
    v13 = [v12 activeRequestsByTransactionID];
    v14 = [v13 objectForKeyedSubscript:v11];

    v15 = [v14 avcRequest];
    v16 = [v12 remoteRequesteeIDSDestinationFor:v15];

    v18 = sub_100004778(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v14 avcRequest];
      v20 = [v19 requesterID];
      *buf = 138412802;
      v51 = v12;
      v52 = 2112;
      v53 = v20;
      v54 = 2112;
      *v55 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "session: %@ request: %@ remoteIDSDestination: %@", buf, 0x20u);
    }

    if (!v12 || !v14 || !v16)
    {
      v33 = sub_100004778(v21);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10047E3C0(v11, (a1 + 56));
      }

      [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
      goto LABEL_38;
    }

    v49 = 0;
    v22 = [v16 _stripPotentialTokenURIWithToken:&v49];
    v23 = v49;
    v24 = *(a1 + 48);
    v48 = 0;
    v25 = [v24 _stripPotentialTokenURIWithToken:&v48];
    v26 = v48;
    v27 = v26;
    if (v23 && v26)
    {
      v28 = [v23 isEqualToData:v26];
      if (!v28)
      {
        v38 = sub_100004778(v28);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_10047E468(a1 + 48, v12);
        }

        [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
        goto LABEL_37;
      }

      if (*(a1 + 64) == 1)
      {
        v29 = [*(a1 + 56) fileTransferController];
        v30 = *(a1 + 32);
        v42 = _NSConcreteStackBlock;
        v43 = 3221225472;
        v44 = sub_10024DECC;
        v45 = &unk_10061FA88;
        v46 = *(a1 + 56);
        v47 = v30;
        [v29 unzipArchiveAtURL:v47 completion:&v42];
      }

      else
      {
        v39 = sub_100004778(v28);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_10047E510();
        }

        [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
      }

      [v12 removeActiveRequestForTransactionID:{v11, v42, v43, v44, v45, v46}];
      v40 = *v7;
      v35 = [v12 moments];
      [v40 cleanUpForMomentIfNecessary:v35];
    }

    else
    {
      v34 = [v14 avcRequest];
      v35 = [v12 remoteRequesteeIDSDestinationFor:v34];

      v37 = sub_100004778(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 48);
        *buf = 138413058;
        v51 = v35;
        v52 = 2112;
        v53 = v23;
        v54 = 2112;
        *v55 = v41;
        *&v55[8] = 2112;
        *&v55[10] = v27;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Could not convert remote IDS destination %@ (token=%@) and/or from IDS destination %@ (token=%@) to token data", buf, 0x2Au);
      }

      [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
    }

LABEL_37:
LABEL_38:

LABEL_39:
    return;
  }

LABEL_17:
  v31 = sub_100004778(v9);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_10047E5E8();
  }

  [*(a1 + 56) deleteContentsAtURL:*(a1 + 32)];
}

void sub_10024DECC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024DF94;
  block[3] = &unk_100619E58;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

id sub_10024DF94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100004778(a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unzipped resource to URL: %@", &v7, 0xCu);
    }

    [*(a1 + 40) _handleReceivedResourcesAtDirectoryURL:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10047E628();
    }
  }

  return [*(a1 + 40) deleteContentsAtURL:*(a1 + 48)];
}

void sub_10024EC1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[TUMomentDescriptor alloc] initWithPhotosAppAssetIdentifier:v3];

  v5 = [*(a1 + 32) queue];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10024ECFC;
  v10 = &unk_100619D88;
  v11 = *(a1 + 32);
  v12 = v4;
  v6 = v4;
  dispatch_async(v5, &v7);

  [*(a1 + 32) deleteContentsAtURL:{*(a1 + 40), v7, v8, v9, v10, v11}];
}

void sub_10024EE4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[TUMomentDescriptor alloc] initWithPhotosAppAssetIdentifier:v3];

  v5 = [*(a1 + 32) queue];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10024EF2C;
  v10 = &unk_100619D88;
  v11 = *(a1 + 32);
  v12 = v4;
  v6 = v4;
  dispatch_async(v5, &v7);

  [*(a1 + 32) deleteContentsAtURL:{*(a1 + 40), v7, v8, v9, v10, v11}];
}

void sub_10024F0EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10047E834();
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }
}

void sub_10024F300(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10047E8B0();
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5);
  }
}

void sub_10024F498(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionForTransactionID:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100004778(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Timeout reached for active request for transaction ID %@", &v8, 0xCu);
    }

    [v3 removeActiveRequestForTransactionID:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = [v3 moments];
    [v6 cleanUpForMomentIfNecessary:v7];
  }
}

void sub_10024F91C(id a1)
{
  if (!qword_1006ACFC0)
  {
    v1 = objc_alloc_init(CSDMomentsControllerLocalCapabilities);
    v2 = qword_1006ACFC0;
    qword_1006ACFC0 = v1;
  }
}

void sub_10024FA54(id a1)
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PreserveFaceTimePhotosFiles", TUBundleIdentifierTelephonyUtilitiesFramework, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = AppBooleanValue == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  byte_1006ACFC8 = v3;
}

void sub_100253098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a39);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1002530E4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 recentsController];
  v8 = [v7 incomingCallFilter];
  v9 = [v8 systemAllowsCallsFromSourceAddress:v6 providerIdentifier:v5];

  return v9;
}

id sub_100253168(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recentsController];
  v5 = [v4 incomingCallFilter];
  v6 = [v5 callDirectoryAllowsCallFromSourceAddress:v3];

  return v6;
}

id sub_1002531D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recentsController];
  v5 = [v4 incomingCallFilter];
  v6 = [v5 liveLookupExtensionsAllowCallFromHandle:v3];

  return v6;
}

id sub_100253238(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recentsController];
  v5 = [v4 incomingCallFilter];
  v6 = [v5 blockedByExtension:v3];

  return v6;
}

id sub_1002532C0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 callCenter];
  v7 = [v6 shouldPreferRelayOverDirectSecondaryCallingForProvider:v5 isVideo:a3];

  return v7;
}

id sub_100253320(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained callFilterController];
    v10 = [v9 shouldFilterIncomingCall:v5 from:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_1002533B0(id a1)
{
  v1 = +[FTDeviceSupport sharedInstance];
  v2 = [v1 deviceType];

  if (v2 != 2)
  {
    v6 = +[CSDRelayIDSService sharedInstance];
    v4 = [v6 devices];

    if ([v4 count])
    {
LABEL_6:
      v7 = objc_alloc_init(NSMutableArray);
      v8 = objc_alloc_init(NSMutableArray);
      v9 = objc_alloc_init(NSMutableArray);
      v10 = objc_alloc_init(NSMutableArray);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = v4;
      v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v29 + 1) + 8 * i);
            v17 = [v16 deviceType];
            v18 = v7;
            if (v17 != 2)
            {
              v19 = [v16 deviceType];
              v18 = v9;
              if (v19 != 1)
              {
                if ([v16 deviceType] == 4)
                {
                  v18 = v8;
                }

                else
                {
                  v18 = v10;
                }
              }
            }

            [v18 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v13);
      }

      v20 = +[FTDeviceSupport sharedInstance];
      v21 = [v20 deviceType];

      if (v21 != 4)
      {
        goto LABEL_22;
      }

      v23 = sub_100004778(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "we are an ipad with no phones or ipads, we are auto answer device", buf, 2u);
      }

      if (![v7 count])
      {
        v5 = [v8 count]== 0;
      }

      else
      {
LABEL_22:
        v5 = 0;
      }

LABEL_30:
      goto LABEL_31;
    }

    v24 = +[FTDeviceSupport sharedInstance];
    if ([v24 deviceType] == 4)
    {
    }

    else
    {
      v26 = +[FTDeviceSupport sharedInstance];
      v27 = [v26 deviceType];

      if (v27 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = sub_100004778(v25);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "no other devices, we are auto answer device", buf, 2u);
    }

    v5 = 1;
    goto LABEL_30;
  }

  v4 = sub_100004778(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "we are an iphone, we are auto answer device", buf, 2u);
  }

  v5 = 1;
LABEL_31:

  return v5;
}

uint64_t sub_1002536FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained callFilterSIMFocus];
    v10 = [v9 shouldAllowIncomingCall:v5 from:v6];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

id sub_10025378C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = [v7 UUID];
    v11 = [v7 tuCallUpdateWithProvider:v8 withCallUUID:v10];

    [v11 setAnsweringMachineAvailable:a4];
    v12 = [v11 isEligibleForScreening];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL sub_100253844(id a1)
{
  v1 = +[NSProcessInfo processInfo];
  v2 = [v1 isLowPowerModeEnabled];

  return v2;
}

void sub_100253884(uint64_t a1)
{
  [*(a1 + 32) restorePersistedBargeCallsIfNecessary];
  v2 = [[CSDDeviceLockStateObserver alloc] initWithQueue:*(a1 + 40)];
  [*(a1 + 32) setLockStateObserver:v2];

  objc_initWeak(&location, *(a1 + 32));
  v3 = [*(a1 + 32) lockStateObserver];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025398C;
  v4[3] = &unk_10061A740;
  objc_copyWeak(&v5, &location);
  [v3 performBlockAfterFirstUnlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_100253968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10025398C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained restorePersistedBargeCallsIfNecessary];
    [v2 setLockStateObserver:0];
    WeakRetained = v2;
  }
}

void sub_100256150(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004778(a1);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10047F088(a1, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performed TUCallTranslationRequest %@", &v13, 0xCu);
  }
}

void sub_100256F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100256F74(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = [v2 fetchCurrentProcessStatesForBundleIdentifier:v3];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) integerValue] == 3)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

id sub_100257918(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6.receiver = *(a1 + 64);
  v6.super_class = CSDProviderCallDataSource;
  return objc_msgSendSuper2(&v6, "answerCall:withRequest:whileDisconnectingCalls:andHoldingCalls:", v2, v3, v4, v1);
}

id sub_100257A1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = CSDProviderCallDataSource;
  return objc_msgSendSuper2(&v4, "holdCalls:whileUnholdingCalls:", v2, v1);
}

id sub_100257B1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = CSDProviderCallDataSource;
  return objc_msgSendSuper2(&v4, "groupCalls:withCalls:", v2, v1);
}

id sub_100257C1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = CSDProviderCallDataSource;
  return objc_msgSendSuper2(&v4, "ungroupCall:fromOtherCallsInGroup:", v2, v1);
}

id sub_100257D68(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6.receiver = *(a1 + 64);
  v6.super_class = CSDProviderCallDataSource;
  return objc_msgSendSuper2(&v6, "disconnectCalls:whileHoldingCalls:andUnholdingCalls:andUngroupingCalls:", v2, v3, v4, v1);
}

id sub_100257E58(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 49);
  v5.receiver = *(a1 + 40);
  v5.super_class = CSDProviderCallDataSource;
  return objc_msgSendSuper2(&v5, "setUplinkMuted:forCalls:userInitiated:", v1, v2, v3);
}

id sub_100257F38(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = CSDProviderCallDataSource;
  return objc_msgSendSuper2(&v4, "setTTYType:forCalls:", v1, v2);
}

void sub_10025800C(uint64_t a1)
{
  v2 = [*(a1 + 32) callSourceManager];
  v3 = [*(a1 + 40) provider];
  v4 = [v3 identifier];
  v10 = [v2 callSourceWithIdentifier:v4];

  v5 = objc_alloc_init(CXSendMMIOrUSSDCodeAction);
  v6 = [*(a1 + 40) handle];
  v7 = [v6 value];
  [v5 setCode:v7];

  [v5 setTtyType:{sub_100122CA8(objc_msgSend(*(a1 + 40), "ttyType"))}];
  v8 = [*(a1 + 40) localSenderIdentityUUID];
  [v5 setSenderIdentityUUID:v8];

  v9 = [*(a1 + 32) callSourceManager];
  [v9 addAction:v5 toUncommittedTransactionForCallSource:v10];
}

void sub_1002581F8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [CXHandoffContext providerIdentifierForHandoffActivityUserInfo:*(a1 + 32)];
  v4 = [*(a1 + 40) callSourceManager];
  v5 = [v4 callSourceWithIdentifier:v3];

  v6 = [[CXHandoffContext alloc] initWithHandoffActivityUserInfo:*v2];
  if (v6)
  {
    v7 = [[CSDProviderCall alloc] initWithHandoffContext:v6 backingCallSource:v5];
    v8 = [*(a1 + 40) callStateController];
    [v8 setCallDelegatesIfNeeded:v7];

    v9 = [CXPullCallAction alloc];
    v10 = [(CSDProviderCall *)v7 uniqueProxyIdentifierUUID];
    v11 = [v9 initWithCallUUID:v10];

    [v11 setHandoffContext:v6];
    v12 = [*(a1 + 40) callSourceManager];
    [v12 addAction:v11 toUncommittedTransactionForCallSource:v5];

    v13 = objc_alloc_init(CSDPulledCallContext);
    [(CSDPulledCallContext *)v13 setCall:v7];
    [(CSDPulledCallContext *)v13 setCompletionHandler:*(a1 + 48)];
    v14 = [*(a1 + 40) pendingPulledCallContexts];
    v15 = [(CSDProviderCall *)v7 uniqueProxyIdentifierUUID];
    [v14 setObject:v13 forKeyedSubscript:v15];
  }

  else
  {
    v16 = sub_100004778(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10047F0F8((a1 + 32), v16, v17, v18, v19, v20, v21, v22);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100258A68(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) performCallAction:*(*(&v7 + 1) + 8 * v6) forCall:{*(a1 + 48), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10025B3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10025B54C(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Running codeBlock", &v12, 2u);
  }

  [*(a1 + 32) clearPendingCallInfoForUUID:*(a1 + 40)];
  v3 = [*(a1 + 32) callContainer];
  v4 = [*(a1 + 40) UUIDString];
  v5 = [v3 callWithUniqueProxyIdentifier:v4];

  if (*(a1 + 88) == 1 && v5)
  {
    [*(a1 + 48) updateFilteredOutReasonForCall:v5 WithError:*(*(*(a1 + 80) + 8) + 40)];
    v6 = *(*(a1 + 80) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  v8 = (*(*(a1 + 72) + 16))();
  if (*(*(*(a1 + 80) + 8) + 40) && *(a1 + 89) == 1)
  {
    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 80) + 8) + 40);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] There is an error: %@, but we are still asked to report call to clients", &v12, 0xCu);
    }

    v11 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:*(a1 + 56) UUID:*(a1 + 40) update:*(a1 + 64) originatingUIType:45];
    [v11 setDisconnectedReason:21];
    [v11 setSupportsRecents:*(a1 + 90)];
    [v11 setLocalUserInHomeCountry:*(a1 + 91)];
    [v11 setAnsweringMachineAvailable:*(a1 + 92)];
    [v11 setIdentifiedSpamInCallerName:*(a1 + 93)];
    [*(a1 + 32) setCallDelegatesIfNeeded:v11];
    [*(a1 + 48) updateFilteredOutReasonForCall:v11 WithError:*(*(*(a1 + 80) + 8) + 40)];
    [*(a1 + 32) propertiesChangedForCall:v11];
  }
}

void sub_10025DE08(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v42 = v3;
    v43 = 2112;
    v44 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Call source manager %@ completed transaction group %@", buf, 0x16u);
  }

  v34 = [*(a1 + 48) _allowRevertingStateForCompletedTransactionGroup:*(a1 + 40)];
  v35 = [*(a1 + 48) callStateController];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [*(a1 + 40) allActions];
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v37;
    *&v7 = 138412546;
    v33 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [*(a1 + 48) pendingPulledCallContexts];
          v14 = [v12 callUUID];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (v15)
          {
            v17 = [v12 state];
            v18 = sub_100004778(v17);
            v19 = v18;
            if (v17 == 1)
            {
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v42 = v12;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Pull call action fulfilled: %@", buf, 0xCu);
              }

              v20 = [v15 call];
              v21 = [v12 dateConnected];
              [v20 setDateConnected:v21];

              [v35 propertiesChangedForCall:v20];
            }

            else
            {
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v42 = v12;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Pull call action failed: %@", buf, 0xCu);
              }

              v20 = 0;
            }

            v28 = [v15 completionHandler];
            (v28)[2](v28, v20);

            v29 = [*(a1 + 48) pendingPulledCallContexts];
            v30 = [v12 callUUID];
            [v29 setObject:0 forKeyedSubscript:v30];

LABEL_27:
LABEL_28:

            goto LABEL_29;
          }

          v20 = sub_100004778(v16);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }

          v27 = [*(a1 + 48) pendingPulledCallContexts];
          *buf = v33;
          v42 = v12;
          v43 = 2112;
          v44 = v27;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find pulled call context for completed pull call action %@. All contexts: %@", buf, 0x16u);
          goto LABEL_33;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v12 = v11;
          v23 = *(a1 + 48);
          v24 = [v12 callUUID];
          v15 = [v23 _callWithUUID:v24];

          v20 = sub_100004778(v25);
          v26 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          if (v15)
          {
            if (v26)
            {
              *buf = 138412290;
              v42 = v15;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Call action completed for call: %@", buf, 0xCu);
            }

            [*(a1 + 48) _processCompletedCallAction:v12 forCall:v15 allowRevertingState:v34 isOnenessActive:0];
            goto LABEL_28;
          }

          if (!v26)
          {
            goto LABEL_27;
          }

          v27 = [*(a1 + 48) calls];
          *buf = v33;
          v42 = v12;
          v43 = 2112;
          v44 = v27;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for completed call action: %@. All calls: %@", buf, 0x16u);
LABEL_33:

          goto LABEL_27;
        }

        v12 = sub_100004778(isKindOfClass);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Action completed: %@", buf, 0xCu);
        }

LABEL_29:

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v31 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
      v8 = v31;
    }

    while (v31);
  }

  v32 = +[CSDReportingController sharedInstance];
  [v32 reportTransactionGroupCompleted:*(a1 + 40)];
}

void sub_10025E3E0(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) callSourceManager];
    v4 = [v3 callSources];
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Call sources changed: %@", buf, 0xCu);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [*(a1 + 32) calls];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138412546;
    v22 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 backingCallSource];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 isConnected];
          if ((v14 & 1) == 0)
          {
            v15 = sub_100004778(v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v20 = [v11 backingCallSource];
              *buf = v22;
              v28 = v11;
              v29 = 2112;
              v30 = v20;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Ending call %@ since its backing call source %@ is no longer connected", buf, 0x16u);
            }

            v16 = objc_alloc_init(CXCallFailureContext);
            [v16 setFailureReason:3];
            v17 = *(a1 + 32);
            v18 = [v11 backingCallSource];
            v19 = [v11 uniqueProxyIdentifierUUID];
            [v17 callSource:v18 reportedCallWithUUID:v19 endedAtDate:0 privateReason:1 failureContext:v16];
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v8);
  }

  v21 = [*(a1 + 32) callSourceFetcher];
  [v21 handleCallSourcesChanged];
}

void sub_10025E85C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using call source %@ for requested transaction %@", &v11, 0x16u);
    }

    [*(a1 + 40) _processRequestedTransaction:*(a1 + 32) fromCallSource:v3 completion:*(a1 + 48)];
  }

  else
  {
    if (v5)
    {
      v7 = [*(a1 + 40) callSourceManager];
      v8 = [v7 callSources];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested transaction because no call source was found. All call sources: %@", &v11, 0xCu);
    }

    v9 = *(a1 + 48);
    v10 = [NSError cx_requestTransactionErrorWithCode:2];
    (*(v9 + 16))(v9, v10);
  }
}

id sub_10025F18C(id a1, TUHandle *a2)
{
  v2 = a2;
  v3 = [SCAParticipant alloc];
  v4 = [(TUHandle *)v2 value];
  v5 = [(TUHandle *)v2 value];

  v6 = [NSSet setWithObject:v5];
  v7 = [v3 initWithDisplayName:v4 handles:v6];

  return v7;
}

void sub_100260DD4(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100260E94;
  block[3] = &unk_10061FDD8;
  objc_copyWeak(&v6, (a1 + 48));
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void sub_100260E94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained invalidate];
    [*(a1 + 32) removeClient:v5];
    v3 = v5;
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
      v3 = v5;
    }
  }
}

id sub_100261040(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = [*(a1 + 32) exportedObject];
  [*(a1 + 40) setTarget:v3];

  [*(a1 + 32) setLocalClientActive:1];
  [*(a1 + 40) invoke];
  v4 = *(a1 + 32);

  return [v4 setLocalClientActive:0];
}

void sub_100261260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100261280(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _xpcClientForConnection:*(a1 + 40)];
  v4 = [*v2 isClientAllowed:v3];
  *(*(*(v2 + 16) + 8) + 24) = v4;
  v5 = *(*(*(v2 + 16) + 8) + 24);
  v6 = sub_100004778(v4);
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*v2 machServiceName];
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Accepting XPC client for %@: %@", &v9, 0x16u);
    }

    [*(a1 + 32) addClient:v3];
    [*(a1 + 40) resume];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10047F1EC(v2, v3, v7);
    }
  }
}

void sub_100264160(NSObject *a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  dispatch_assert_queue_V2(v6[3]);
  switch(a2)
  {
    case 2:
      v10 = sub_100004778(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] btSession terminated, attempting reconnect...", v12, 2u);
      }

      v6[1] = 0;
      v11 = *(v6 + 33);
      [(dispatch_queue_t *)v6 _ensureStopped];
      if (v11 == 1)
      {
        [(dispatch_queue_t *)v6 _ensureStarted];
      }

      goto LABEL_15;
    case 1:
      v9 = sub_100004778(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "btSession detached", v13, 2u);
      }

      v6[1] = 0;
      [(dispatch_queue_t *)v6 _ensureStopped];
LABEL_15:
      CFRelease(v6);
      break;
    case 0:
      v8 = sub_100004778(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "btSession attached", buf, 2u);
      }

      v6[1] = a1;
      if (*(v6 + 33) == 1)
      {
        [(dispatch_queue_t *)v6 _ensureStarted];
      }

      else
      {
        [(dispatch_queue_t *)v6 _ensureStopped];
      }

      break;
  }
}

void sub_1002642E4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *a6)
{
  v8 = a6;
  dispatch_assert_queue_V2(*(v8 + 3));
  if (a4 == 104 && a3 == 2 && (*(v8 + 32) & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(v8 + 2);
    [WeakRetained didObserveBluetoothHangupCommand];

    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Observed a hangup event, forwarding to delegate", v12, 2u);
    }
  }
}

void sub_100264614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100264630(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = sub_100004778(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412546;
      v5 = v2;
      v6 = 2112;
      v7 = @"com.apple.backboard.proximity.changed";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v4, 0x16u);
    }

    [v2 updateCovered];
  }
}

void sub_100264854(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100264920;
    block[3] = &unk_100619F48;
    v7 = v5;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    v12 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

void sub_100265740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100265758(uint64_t a1)
{
  result = [*(a1 + 32) _isWaitingToJoinForConversationUUID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_100265A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100265A28(uint64_t a1)
{
  v5 = [*(a1 + 32) callUUIDsByConversationUUID];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100265E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100265E5C(uint64_t a1)
{
  v5 = [*(a1 + 32) conversationUUIDsByCallUUID];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100266038(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received notification that AVAudioClient has been activated, notifying conversation", v4, 2u);
  }

  [*(a1 + 32) setAudioSessionActive:1];
  return [*(a1 + 32) startAudioForConversationsIfNecessary];
}

id sub_1002675BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 handle];
  if ([v4 isEquivalentToHandle:*(a1 + 32)])
  {
    v5 = [v3 association];
    v6 = [v5 handle];
    v7 = [*(a1 + 40) localMember];
    v8 = [v7 handle];
    v9 = [v6 isEquivalentToHandle:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_100267680(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CXMember alloc];
  v7 = [v3 handle];

  v5 = [CXHandle handleWithTUHandle:v7];
  v6 = [v4 initWithHandle:v5];
  [v2 addObject:v6];
}

void sub_100267734(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CXMember alloc];
  v6 = [CXHandle handleWithTUHandle:v3];

  v5 = [v4 initWithHandle:v6];
  [v2 addObject:v5];
}

void sub_1002677D0(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100004778(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10047F3A8(a1, v4, v5);
    }

    goto LABEL_9;
  }

  v6 = [a1[4] invitationResolver];
  v7 = a1[5];
  v8 = [v7 localMember];
  v9 = [v8 handle];
  v10 = [v6 shouldStartRingingTimeoutForConversation:v7 handle:v9];

  v11 = [a1[4] featureFlags];
  if ([v11 nearbyFaceTimeEnabled])
  {
    v12 = [a1[6] nearbyMode] == 0;

    if ((v12 & v10) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v10)
  {
LABEL_8:
    v13 = dispatch_time(0, 30000000000);
    v14 = [a1[4] queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100267984;
    block[3] = &unk_100619E58;
    v15 = a1[5];
    v16 = a1[4];
    v18 = v15;
    v19 = v16;
    v20 = a1[7];
    dispatch_after(v13, v14, block);

    v5 = v18;
LABEL_9:
  }

LABEL_10:
}

void sub_100267984(uint64_t a1)
{
  v2 = [*(a1 + 32) UUID];
  v3 = [*(a1 + 40) callUUIDsByConversationUUID];
  v4 = [v3 objectForKeyedSubscript:v2];
  if (![v4 isEqual:*(a1 + 48)])
  {

LABEL_7:
    goto LABEL_8;
  }

  v5 = [*(a1 + 40) _isWaitingToJoinForConversationUUID:v2];

  if (v5)
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ending ringing call for conversation with UUID: %@", &v8, 0xCu);
    }

    [*(a1 + 40) leaveConversation:*(a1 + 32) withCallUUID:*(a1 + 48) reason:3];
    [*(a1 + 40) setWaitingToJoin:0 forConversationUUID:v2];
    v3 = [*(a1 + 40) provider];
    [v3 reportCallWithUUID:*(a1 + 48) endedAtDate:0 reason:3];
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100269B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100269B9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = sub_100004778(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) UUID];
      v6 = *(a1 + 40);
      v28 = 138412546;
      v29 = v5;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking whether to leave conversation with UUID %@: removedActiveParticipant %@.", &v28, 0x16u);
    }

    v7 = [*(a1 + 48) conversationsByUUID];
    v8 = [*(a1 + 32) UUID];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v11 = [*(a1 + 56) shouldAutomaticallyLeaveConversation:v9];
      if (!v11)
      {
LABEL_19:

        goto LABEL_20;
      }

      v12 = sub_100004778(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) UUID];
        v14 = *(a1 + 40);
        v28 = 138412546;
        v29 = v13;
        v30 = 2112;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ending call since U+1 conversation with UUID %@: removedActiveParticipant %@.", &v28, 0x16u);
      }

      v15 = [*(a1 + 56) callUUIDsByConversationUUID];
      v16 = [v9 UUID];
      v17 = [v15 objectForKeyedSubscript:v16];

      if (v17)
      {
        v18 = [v3 provider];
        v19 = +[NSDate date];
        [v18 reportCallWithUUID:v17 endedAtDate:v19 reason:2];

        [v3 cleanupConversationWithCallUUID:v17];
      }

      else
      {
        v21 = [v3 featureFlags];
        v22 = [v21 avLessSharePlayEnabled];

        if (v22)
        {
          v23 = [*(a1 + 32) avMode];
          if (v23)
          {
            v24 = sub_100004778(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = *(a1 + 32);
              v28 = 138412290;
              v29 = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't find call to end for conversation %@. Falling back to leaving conversation directly.", &v28, 0xCu);
            }
          }

          v26 = *(a1 + 48);
          v27 = [v9 UUID];
          [v26 leaveConversationWithUUID:v27];
        }
      }
    }

    else
    {
      v17 = sub_100004778(v10);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [*(a1 + 32) UUID];
        v28 = 138412290;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No conversation found in conversation manager with UUID %@ so we are not checking whether to end the call after a participant left", &v28, 0xCu);
      }
    }

    goto LABEL_19;
  }

LABEL_20:
}

BOOL sub_10026A094(id a1, TUConversationMember *a2)
{
  v2 = a2;
  v3 = [(TUConversationMember *)v2 association];
  if (v3)
  {
    v4 = [(TUConversationMember *)v2 association];
    v5 = [v4 isPrimary];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

int main(int argc, const char **argv, const char **envp)
{
  qword_1006BA0B0 = 0;
  v3 = objc_autoreleasePoolPush();
  sub_10026D5B4(v3);
  objc_autoreleasePoolPop(v3);
  v4 = qword_1006BA0B0;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 currentRunLoop];
  [v7 run];

  exit(0);
}

void sub_10026D5B4(uint64_t a1)
{
  v1 = sub_100004778(a1);
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("callservicesd launched", 22, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);

  v3 = [objc_allocWithZone(CSDDaemon) init];
  v4 = qword_1006BA0B0;
  qword_1006BA0B0 = v3;
}

unint64_t sub_10026D654(unsigned int a1)
{
  v2 = *v1;
  v3 = *v1 & a1;
  if (v3)
  {
    *v1 = v2 & ~a1;
    v4 = v2 & a1;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

unint64_t sub_10026D694(unsigned int a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1 | (((v2 & a1) == 0) << 32);
}

uint64_t sub_10026D704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10026D758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t variable initialization expression of ConversationCallCoordinator._conversationStream()
{
  sub_10026D814(&unk_1006A62E0, &unk_10057A3F0);
  sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
  sub_10026D85C();
  return AsyncBroadcastStream.__allocating_init<>(_:)();
}

uint64_t sub_10026D814(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10026D85C()
{
  result = qword_1006A62F0;
  if (!qword_1006A62F0)
  {
    sub_100006AF0(255, &unk_1006A0C80, TUConversation_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A62F0);
  }

  return result;
}

uint64_t variable initialization expression of ConversationCallCoordinator._conversationStateStream()
{
  sub_10026D814(&unk_1006A0C90, &unk_1005814C0);
  type metadata accessor for TUConversationState(0);
  sub_10026D958(&unk_1006A6300, type metadata accessor for TUConversationState, &unk_10057B164);
  return AsyncBroadcastStream.__allocating_init<>(_:)();
}

uint64_t sub_10026D958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t variable initialization expression of ConversationCallCoordinator.tearDownContinuation()
{
  sub_10026D814(&unk_1006A0CA0, &unk_10057A400);
  v0 = sub_100008D20();

  return sub_10000AF74(v0, v1, v2, v3);
}

uint64_t variable initialization expression of CSDConversationSpatialPersonaResolver.localParticipantNearbyClusterUUID()
{
  type metadata accessor for UUID();
  v0 = sub_100008D20();

  return sub_10000AF74(v0, v1, v2, v3);
}

uint64_t variable initialization expression of LetMeInRequestorKeyAgreement.requestKey()
{
  type metadata accessor for SymmetricKey();
  v0 = sub_100008D20();

  return sub_10000AF74(v0, v1, v2, v3);
}

uint64_t variable initialization expression of NearbySessionManager.queue()
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100008A24();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v6 = v5 - v4;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100007B98();
  __chkstk_darwin(v7);
  sub_100007FDC();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_100007FDC();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100018094();
  sub_10026D958(v9, v10, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  v11 = sub_10026DC50();
  sub_100015E64(v11);
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_10000FCA8(36, 0x8000000100561400);
}

unint64_t sub_10026DC50()
{
  result = qword_1006A0CC0;
  if (!qword_1006A0CC0)
  {
    sub_10026DCB4(&qword_1006A31B0, &unk_10057E920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A0CC0);
  }

  return result;
}

uint64_t sub_10026DCB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of SmartHoldingController.analyticsHelper()
{
  v0 = objc_allocWithZone(type metadata accessor for SmartHoldingAnalyticsHelper(0));

  return [v0 init];
}

uint64_t variable initialization expression of ConversationCallCoordinationManager.operationManager()
{
  type metadata accessor for OperationManager();
  swift_allocObject();
  return OperationManager.init()();
}

uint64_t sub_10026DDC4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100017054();
  sub_10026D958(v1, v2, &protocol conformance descriptor for UUID);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of ConversationCallCoordinationManager.callCoordinatorMap()
{
  type metadata accessor for UUID();
  type metadata accessor for ConversationCallCoordinator(0);
  sub_100017054();
  sub_10026D958(v0, v1, &protocol conformance descriptor for UUID);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of CSDAnalyticsManager.queue()
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100008A24();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v6 = v5 - v4;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100007B98();
  __chkstk_darwin(v7);
  sub_100007FDC();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_100007FDC();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  sub_100018094();
  sub_10026D958(v9, v10, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  v11 = sub_10026DC50();
  sub_100015E64(v11);
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_10000FCA8(46, 0x8000000100561430);
}

id variable initialization expression of CSDAnalyticsManager.tuFeatureFlags()
{
  v0 = objc_allocWithZone(TUFeatureFlags);

  return [v0 init];
}

id variable initialization expression of CSDAnalyticsManager.callDirectoryManager()
{
  v0 = objc_allocWithZone(CXCallDirectoryExtensionManager);

  return [v0 init];
}

__n128 sub_10026E1BC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10026E1C8(uint64_t result, int a2, int a3)
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

uint64_t sub_10026E264(uint64_t a1, int a2)
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

uint64_t sub_10026E284(uint64_t result, int a2, int a3)
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

uint64_t sub_10026E2CC(uint64_t a1, int a2)
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

uint64_t sub_10026E2EC(uint64_t result, int a2, int a3)
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

void sub_10026E3B0(uint64_t a1@<X8>)
{
  sub_10005712C();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_10026E408@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of CSDConversationSpatialPersonaResolver.localGenerationCounter();
  *a1 = result;
  return result;
}

uint64_t sub_10026E430(uint64_t a1)
{
  v2 = sub_100007FCC(a1);
  result = sub_10039C360(v2, v3);
  *v1 = result;
  return result;
}

Swift::Int sub_10026E478(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10026E510()
{
  v1 = sub_100009EAC();
  result = j_j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

Swift::Int sub_10026E5DC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10026E650@<X0>(_DWORD *a1@<X8>)
{
  result = _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
  *a1 = result;
  return result;
}

uint64_t sub_10026E678@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10026D644(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10026E6A8@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10039C364(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10026E6D8@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10026D64C(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_10026E710@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026D654(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_10026E744@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026D694(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_10026E790@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10026D6D0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10026E7E8()
{
  v1 = sub_100009EAC();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_10026E858(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_10026E8C4@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10026E8F0(uint64_t a1)
{
  v2 = sub_10026D958(&qword_1006A1DA0, type metadata accessor for Name, &unk_10057C7BC);
  v3 = sub_10026D958(&qword_1006A1DA8, type metadata accessor for Name, &unk_10057C3B0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10026E9AC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10026D704(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10026EC14(uint64_t a1)
{
  v2 = sub_10026D958(&qword_1006A1DC0, type metadata accessor for Category, &unk_10057B8B4);
  v3 = sub_10026D958(&qword_1006A1DC8, type metadata accessor for Category, &unk_10057B85C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10026ECD0(uint64_t a1)
{
  v2 = sub_10026D958(&qword_1006A1DB0, type metadata accessor for Mode, &unk_10057B9F4);
  v3 = sub_10026D958(&qword_1006A1DB8, type metadata accessor for Mode, &unk_10057B99C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10026ED8C(uint64_t a1)
{
  v2 = sub_10026D958(&qword_1006A1D80, type metadata accessor for NLTag, &unk_10057C72C);
  v3 = sub_10026D958(&qword_1006A1D88, type metadata accessor for NLTag, &unk_10057C6CC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10026EE48@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10026EE90(uint64_t a1)
{
  v2 = sub_10026D958(&qword_1006A1D90, type metadata accessor for NLTagScheme, &unk_10057C5D4);
  v3 = sub_10026D958(&qword_1006A1D98, type metadata accessor for NLTagScheme, &unk_10057C574);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10026EF4C(uint64_t a1)
{
  v2 = sub_10026D958(&qword_1006A19A0, type metadata accessor for CLFCommunicationLimit, &unk_10057B09C);
  v3 = sub_10026D958(&qword_1006A19A8, type metadata accessor for CLFCommunicationLimit, &unk_10057B03C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10026F0E0(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

__n128 sub_10026F148(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10026F15C(uint64_t a1, int a2)
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

uint64_t sub_10026F17C(uint64_t result, int a2, int a3)
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

__n128 sub_10026F414(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10026F428(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 sub_10026F488(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 sub_10026F4EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_10026F534(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10026FCB8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

Swift::Int sub_10026FD38(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_10026FD80(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hashValue.getter();

  return v1;
}

uint64_t sub_10026FDB8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

NSString sub_10026FE30(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t sub_10026FF3C(char a1)
{
  if ((a1 - 2) > 6u)
  {
    return 3;
  }

  else
  {
    return dword_10057CA30[(a1 - 2)];
  }
}

uint64_t sub_10026FF68(char a1, char a2)
{
  switch(a1)
  {
    case 2:
      if (a2 == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 3:
      if (a2 == 3)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 4:
      if (a2 != 4)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 5:
      if (a2 != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 6:
      if (a2 != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 7:
      if (a2 != 7)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 8:
      if (a2 != 8)
      {
        goto LABEL_15;
      }

LABEL_13:
      v2 = 1;
      break;
    default:
      if ((a2 - 2) < 7u)
      {
LABEL_15:
        v2 = 0;
      }

      else
      {
        v2 = a2 ^ a1 ^ 1;
      }

      break;
  }

  return v2 & 1;
}

uint64_t sub_1002700A4()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v19 = _typeName(_:qualified:)();
  v20 = v7;
  v8._countAndFlagsBits = 40;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  strcpy(&v18, "state: ");
  v18._object = 0xE700000000000000;
  v17 = *(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_stateMachine);
  v9._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v9);

  sub_100008000();
  String.append(_:)(v18);

  v18._countAndFlagsBits = 0x203A64697575;
  v18._object = 0xE600000000000000;
  v10 = *(v3 + 16);
  v10(v6, v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_uuid, v1);
  v11._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v11);

  sub_100008000();
  String.append(_:)(v18);

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(&v18, "requestUUID: ");
  HIWORD(v18._object) = -4864;
  v10(v6, v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_requestUUID, v1);
  v12._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v12);

  sub_100008000();
  String.append(_:)(v18);

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v18._countAndFlagsBits = 0xD000000000000014;
  v18._object = 0x8000000100562640;
  v17 = *(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_isInitiatedLocally);
  v13._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v13);

  sub_100008000();
  String.append(_:)(v18);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return v19;
}

id sub_1002703C4()
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v2 - 8);
  sub_100007BAC();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v7 = sub_10000F450();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007BAC();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  result = 0;
  if (*(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_stateMachine) != 8)
  {
    v18 = *(v9 + 16);
    v18(&v24 - v15, v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_uuid, v7);
    v25 = sub_1002705E0();
    v19 = *(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_callUUID + 8);
    v24 = *(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_callUUID);
    v18(v13, v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_requestUUID, v7);
    sub_100270E18(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_dateStartedRecording, v1);
    sub_100270E18(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_dateEndedRecording, v5);
    sub_10000A560();
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = *(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_isInitiatedLocally);
    v23 = objc_allocWithZone(TUPodcastRecordingSession);

    return sub_100270E88(v16, v25, v24, v19, v13, v1, v5, v21 & v7, v22);
  }

  return result;
}

uint64_t sub_1002705E0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 5;
  }

  v2 = Strong;
  if ([Strong status] == 5)
  {

    return 5;
  }

  v3 = [v2 status];

  if (v3 == 6)
  {
    return 5;
  }

  v5 = *(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_stateMachine);

  return sub_10026FF3C(v5);
}

id sub_1002706C8()
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v2 - 8);
  sub_100007BAC();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v7 = sub_10000F450();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007BAC();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v26[-v15];
  v18 = *(v9 + 16);
  v17 = v18;
  v18(&v26[-v15], v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_uuid, v7);
  v27 = sub_1002705E0();
  v19 = *(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_callUUID);
  v20 = *(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_callUUID + 8);
  v18(v13, v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_requestUUID, v7);
  sub_100270E18(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_dateStartedRecording, v1);
  sub_100270E18(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_dateEndedRecording, v5);
  sub_10000A560();
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v0 + OBJC_IVAR___CSDPodcastCallRecordingSession_isInitiatedLocally);
  v24 = objc_allocWithZone(TUPodcastRecordingSession);

  return sub_100270E88(v16, v27, v19, v20, v13, v1, v5, v22 & v17, v23);
}

id sub_10027090C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastCallRecordingSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PodcastCallRecordingSession(uint64_t a1)
{
  result = qword_1006A20B8;
  if (!qword_1006A20B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100270AC8(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100270C44(319, &qword_1006A9D10, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      sub_100270C44(319, &qword_1006A20C8, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100270C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PodcastCallRecordingStateMachine(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 9;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 7;
  }

  else
  {
    v5 = -8;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PodcastCallRecordingStateMachine(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100270E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100270E88(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();

  v15.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = type metadata accessor for Date();
  isa = 0;
  if (sub_100015468(a6, 1, v16) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v16 - 8) + 8))(a6, v16);
  }

  if (sub_100015468(a7, 1, v16) == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v16 - 8) + 8))(a7, v16);
  }

  BYTE1(v23) = a9 & 1;
  LOBYTE(v23) = a8 & 1;
  v19 = [v26 initWithUUID:v13.super.isa state:a2 callUUID:v14 requestUUID:v15.super.isa recordingStartedDate:isa recordingEndedDate:v18 isRedisclosing:v23 isInitiatedLocally:?];

  v20 = type metadata accessor for UUID();
  v21 = *(*(v20 - 8) + 8);
  v21(a5, v20);
  v21(a1, v20);
  return v19;
}

unint64_t getEnumTagSinglePayload for PodcastCallRecordingSessionState(unint64_t result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
LABEL_17:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = (v6 + 2147483646) & 0x7FFFFFFF;
      result = v7 - 6;
      if (v7 > 6)
      {
        return result;
      }
    }

    return 0;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = (*result | (v5 << 8)) - 8;
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PodcastCallRecordingSessionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF8)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF7)
  {
    v7 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100271208(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100271224(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

id sub_10027124C()
{
  v0 = [objc_opt_self() sharedPreferences];

  return v0;
}

id sub_10027128C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for Locale();
  sub_100007FEC();
  v111 = v7;
  v112 = v6;
  v8 = __chkstk_darwin(v6);
  v109 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v110 = &v102 - v10;
  v11 = type metadata accessor for LanguageManager();
  sub_100007FEC();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  LanguageManager.languageIdentifier(for:)();
  (*(v13 + 8))(v16, v11);
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 fallbackLanguageFor:v18];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = type metadata accessor for SynthesisVoice();
  v24 = objc_allocWithZone(v23);

  v114 = SynthesisVoice.init(language:name:)();
  v25 = *(v4 + 40);
  v26 = v25();
  v27 = [v26 outputVoice];

  if (v27)
  {
    v29 = sub_10001B8C8(v27, &selRef_name);
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      v33 = sub_10001B8C8(v27, &selRef_languageCode);
      if (v34)
      {
        v35 = v33;
        v108 = v32;
        v36 = v33 == v20 && v34 == v22;
        v37 = v34;
        if (v36 || (v113 = v23, v38 = a1, v39 = v33, v40 = _stringCompareWithSmolCheck(_:_:expecting:)(), v35 = v39, a1 = v38, v23 = v113, (v40 & 1) != 0))
        {
          v106 = v35;
          v41 = v37;
          v113 = v31;

          if (qword_1006A0B28 != -1)
          {
            sub_100008018();
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          sub_10000AF9C(v42, qword_1006BA5F8);
          v44 = v110;
          v43 = v111;
          v45 = a1;
          v46 = v112;
          v104 = *(v111 + 16);
          v104(v110, v45, v112);
          v47 = v108;

          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();

          v105 = v49;
          v107 = v48;
          if (os_log_type_enabled(v48, v49))
          {
            v50 = v43;
            v51 = sub_100005E84();
            v102 = swift_slowAlloc();
            v116 = v47;
            v117 = v102;
            *v51 = 136315650;
            v115 = v113;

            v52 = String.init<A>(reflecting:)();
            v53 = v44;
            v55 = sub_10002741C(v52, v54, &v117);
            v103 = v41;
            v56 = v55;

            *(v51 + 4) = v56;
            *(v51 + 12) = 2080;
            v104(v109, v44, v46);
            v57 = String.init<A>(reflecting:)();
            v59 = v58;
            (*(v50 + 8))(v53, v46);
            v60 = sub_10002741C(v57, v59, &v117);
            v61 = v103;

            *(v51 + 14) = v60;
            *(v51 + 22) = 2080;
            *(v51 + 24) = sub_10002741C(v106, v61, &v117);
            v62 = v107;
            _os_log_impl(&_mh_execute_header, v107, v105, "Current default voice: %s matches mapped device locale: %s, languageCode: %s", v51, 0x20u);
            swift_arrayDestroy();
            sub_100009ED0();

            sub_100009ED0();
          }

          else
          {

            (*(v43 + 8))(v44, v46);
          }

          v63 = objc_allocWithZone(v23);
          v64 = SynthesisVoice.init(language:name:)();

          goto LABEL_27;
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

  v65 = *(v4 + 72);
  v66 = (v25)(v28);
  v67 = [v66 outputVoice];

  v68 = sub_100274D5C(v67, v20, v22, v65);
  if (v68)
  {
    v113 = v23;
    if (qword_1006A0B28 != -1)
    {
      sub_100008018();
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_10000AF9C(v69, qword_1006BA5F8);

    v70 = v68;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = sub_100005E84();
      v112 = swift_slowAlloc();
      v117 = v112;
      *v73 = 136315650;
      v74 = v25();
      v75 = [v74 outputVoice];

      v76 = sub_100291074(v75);
      v78 = v77;

      v79 = sub_10002741C(v76, v78, &v117);

      *(v73 + 4) = v79;
      *(v73 + 12) = 2080;
      v115 = v20;
      v116 = v22;

      v80 = String.init<A>(reflecting:)();
      v82 = sub_10002741C(v80, v81, &v117);

      *(v73 + 14) = v82;
      *(v73 + 22) = 2080;
      v115 = v70;
      sub_100006AF0(0, &qword_1006A21D8, AFVoiceInfo_ptr);
      v83 = v70;
      v84 = String.init<A>(reflecting:)();
      v86 = sub_10002741C(v84, v85, &v117);

      *(v73 + 24) = v86;
      _os_log_impl(&_mh_execute_header, v71, v72, "Best matching Siri voice to %s in language %s is %s", v73, 0x20u);
      swift_arrayDestroy();
      sub_100009ED0();

      sub_100009ED0();
    }

    v87 = v113;
    result = sub_10001B8C8(v70, &selRef_languageCode);
    if (!v89)
    {
      __break(1u);
      return result;
    }

    sub_10001B8C8(v70, &selRef_name);
    v90 = objc_allocWithZone(v87);
    v91 = SynthesisVoice.init(language:name:)();

    v64 = v91;
  }

  else
  {

    v64 = v114;
  }

LABEL_27:
  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v92 = type metadata accessor for Logger();
  sub_10000AF9C(v92, qword_1006BA5F8);
  v93 = v64;
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();

  if (sub_10000F96C())
  {
    v96 = sub_100005274();
    v97 = sub_100005E84();
    v115 = v97;
    *v96 = 136315138;
    v117 = v93;
    v98 = v93;
    v99 = String.init<A>(reflecting:)();
    v101 = sub_10002741C(v99, v100, &v115);

    *(v96 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v94, v95, "voiceToFetch: %s", v96, 0xCu);
    sub_100009B7C(v97);
    sub_100009ED0();

    sub_100009ED0();
  }

  return v93;
}

void sub_100271C00()
{
  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v2 = static OS_dispatch_queue.main.getter();
  v3 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_100274E34;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100272204;
  v6[3] = &unk_100621E68;
  v4 = _Block_copy(v6);

  v5 = String.utf8CString.getter();

  swift_beginAccess();
  notify_register_dispatch((v5 + 32), (v1 + 88), v2, v4);
  swift_endAccess();

  _Block_release(v4);
}

uint64_t sub_100271D60()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 88));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100271DCC()
{
  sub_100271D60();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_100271E24()
{
  os_unfair_lock_lock((v0 + 80));
  v1 = *(v0 + 84);
  os_unfair_lock_unlock((v0 + 80));
  return v1;
}

void sub_100271E58(char a1)
{
  os_unfair_lock_lock((v1 + 80));
  *(v1 + 84) = a1;

  os_unfair_lock_unlock((v1 + 80));
}

void sub_100271E98()
{
  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Preferences changed handler not set!", v2, 2u);
    sub_100009ED0();
  }
}

uint64_t sub_100271F70()
{
  v0 = [objc_opt_self() tu_defaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100272018(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() tu_defaults];
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = String._bridgeToObjectiveC()();
  [v3 setValue:v4 forKey:v5];

  swift_unknownObjectRelease();
}

uint64_t sub_1002720D8(uint64_t a1, uint64_t a2)
{
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Siri output voice changed and the call screening needs to be regenerated!", v5, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 96);

    v7(v8);
  }

  return result;
}

uint64_t sub_100272204(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_100272258()
{
  v1 = *(v0 + 32);
  URL.path(percentEncoded:)(0);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 fileExistsAtPath:v2];

  return v3;
}

id sub_1002722C4(uint64_t a1, void *a2)
{
  v4 = v3;
  v51 = a1;
  v6 = type metadata accessor for URL();
  sub_100007FEC();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v15 = *(v2 + 32);
  URL._bridgeToObjectiveC()(&v48);
  v17 = v16;
  clients = 0;
  v50 = v15;
  v18 = [v15 removeItemAtURL:v16 error:&clients];

  if (v18)
  {
    v19 = clients;
  }

  else
  {
    v20 = clients;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v4 = 0;
  }

  v21 = v12;
  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000AF9C(v22, qword_1006BA5F8);
  v23 = *(v8 + 16);
  v23(v14, v51, v6);
  v23(v21, a2, v6);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v49 = v4;
    v27 = v26;
    v48._clients = swift_slowAlloc();
    clients = v48._clients;
    *v27 = 136446466;
    sub_10002F13C(&qword_1006A3BD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    HIDWORD(v48._baseURL) = v25;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v48._reserved = a2;
    v30 = v29;
    v48._urlString = &v24->isa;
    v31 = *(v8 + 8);
    v31(v14, v6);
    v32 = sub_10002741C(v28, v30, &clients);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2082;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v31(v21, v6);
    v36 = sub_10002741C(v33, v35, &clients);

    *(v27 + 14) = v36;
    urlString = v48._urlString;
    _os_log_impl(&_mh_execute_header, v48._urlString, BYTE4(v48._baseURL), "Copying file from %{public}s to %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {

    v39 = *(v8 + 8);
    v39(v21, v6);
    v39(v14, v6);
  }

  URL._bridgeToObjectiveC()(v38);
  v41 = v40;
  URL._bridgeToObjectiveC()(v42);
  v44 = v43;
  clients = 0;
  v45 = [v50 copyItemAtURL:v41 toURL:v43 error:&clients];

  if (v45)
  {
    return clients;
  }

  v47 = clients;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10027270C()
{
  sub_100006810();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v1[7] = sub_100005E9C();
  sub_100007BBC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1002727A0()
{
  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5F8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_10000F96C())
  {
    v5 = v0[5];
    v6 = sub_100005274();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    sub_10000E4D4(&_mh_execute_header, v9, v10, "SynthesizeAudioFile: voice: %{public}@");
    sub_1000099A4(v7, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_100009ED0();
  }

  v11 = v0[7];
  v12 = v0[5];
  v13 = v0[2];

  v14 = objc_allocWithZone(type metadata accessor for SynthesisRequest());
  v15 = v12;

  v16 = SynthesisRequest.init(text:voice:)();
  v0[8] = v16;
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 16))(v11, v13, v17);
  sub_10000AF74(v11, 0, 1, v17);
  dispatch thunk of BaseRequest.outputPath.setter();
  SynthesizingRequestProtocol.privacySensitive.setter();
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_100005274();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "synthesizeAudioFile: request: %{public}@", v21, 0xCu);
    sub_1000099A4(v22, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_100009ED0();
  }

  v24 = swift_task_alloc();
  v0[9] = v24;
  *v24 = v0;
  v24[1] = sub_100272AA0;

  return sub_100289D74();
}

uint64_t sub_100272AA0()
{
  sub_100006810();
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100007BC8();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100272BA4()
{
  sub_100006810();

  sub_10000E8DC();

  return v1();
}

uint64_t sub_100272C04()
{
  sub_100006810();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100272C6C()
{
  sub_100006810();
  v1[3] = v2;
  v1[4] = v0;
  sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v1[5] = sub_100005E9C();
  v3 = type metadata accessor for Locale();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = sub_100005E9C();
  sub_100007BBC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100272D4C()
{
  v23 = v0;
  v2 = v0[5];
  v3 = v0[6];
  sub_100274DC4(v0[3], v2);
  if (sub_100015468(v2, 1, v3) == 1)
  {
    v4 = v0[5];
    v5 = v0[6];
    static Locale.current.getter();
    if (sub_100015468(v4, 1, v5) != 1)
    {
      sub_1000099A4(v0[5], &qword_1006A5360, &qword_10057CB80);
    }
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
  }

  sub_100007BBC();
  v9 = sub_10027128C(v6, v7, v8);
  v0[9] = v9;
  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA5F8);
  v11 = v9;
  v12 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_10000F96C())
  {
    sub_100005274();
    v13 = sub_10000681C();
    v22 = v13;
    *v1 = 136446210;
    v0[2] = v11;
    type metadata accessor for SynthesisVoice();
    v14 = v11;
    v15 = String.init<A>(reflecting:)();
    v17 = sub_10002741C(v15, v16, &v22);

    *(v1 + 4) = v17;
    sub_10000E4D4(&_mh_execute_header, v18, v19, "Searching for SynthesisVoice matching voice %{public}s");
    sub_100009B7C(v13);
    sub_100009ED0();

    sub_100009ED0();
  }

  v20 = swift_task_alloc();
  v0[10] = v20;
  *v20 = v0;
  v20[1] = sub_100272F90;

  return sub_1002890AC(v11);
}

uint64_t sub_100272F90()
{
  sub_10000C698();
  v3 = v2;
  v4 = *v1;
  sub_100007BC8();
  *v5 = v4;
  v6 = *v1;
  sub_100007BC8();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v3;
  }

  sub_100007BBC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1002730A8()
{
  sub_10000C698();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 96);

  return v4(v5);
}

uint64_t sub_100273144()
{
  sub_10000C698();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002731DC()
{
  sub_100006810();
  v1[32] = v2;
  v1[33] = v0;
  v3 = type metadata accessor for Locale();
  v1[34] = v3;
  v1[35] = *(v3 - 8);
  v1[36] = sub_100005E9C();
  sub_100007BBC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10027328C()
{
  v64 = v0;
  if (sub_100271E24() & 1) != 0 || (dispatch thunk of SynthesisVoice.footprint.getter(), (static SynthesisVoice.Footprint.< infix(_:_:)()))
  {
    if (qword_1006A0B28 != -1)
    {
      sub_100008018();
      swift_once();
    }

    v1 = v0[32];
    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA5F8);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[32];
      v7 = sub_100005274();
      v8 = sub_100005E84();
      v63 = v8;
      *v7 = 136315138;
      v0[31] = v6;
      type metadata accessor for SynthesisVoice();
      v9 = v6;
      v10 = String.init<A>(reflecting:)();
      v12 = sub_10002741C(v10, v11, &v63);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "currentVoice %s is neural or we are already fetching speech assets, no need to fetch new voice", v7, 0xCu);
      sub_100009B7C(v8);
      sub_100009ED0();

      sub_100009ED0();
    }

    goto LABEL_8;
  }

  if (qword_1006A0B28 != -1)
  {
    sub_100008018();
    swift_once();
  }

  v15 = v0[32];
  v16 = type metadata accessor for Logger();
  v0[37] = sub_10000AF9C(v16, qword_1006BA5F8);
  v17 = v15;
  v18 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_10000F96C())
  {
    v19 = v0[32];
    sub_100005274();
    v20 = sub_10000681C();
    v63 = v20;
    *v17 = 136315138;
    v0[30] = v19;
    type metadata accessor for SynthesisVoice();
    v21 = v19;
    v22 = String.init<A>(reflecting:)();
    v24 = sub_10002741C(v22, v23, &v63);

    *(v17 + 1) = v24;
    sub_10000E4D4(&_mh_execute_header, v25, v26, "currentVoice %s is of type compact. We should download a neural voice");
    sub_100009B7C(v20);
    sub_100009ED0();

    sub_100009ED0();
  }

  dispatch thunk of SynthesisVoice.language.getter();
  Locale.init(identifier:)();
  sub_100007BBC();
  v30 = sub_10027128C(v27, v28, v29);
  v0[38] = v30;
  v31 = sub_10000D6CC();
  v32(v31);
  sub_10026D814(&qword_1006A21A8, &unk_10057CB50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057CA70;
  *(inited + 32) = 1;
  *(inited + 40) = dispatch thunk of SynthesisVoice.language.getter();
  *(inited + 48) = v34;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = 0;
  v35 = dispatch thunk of SynthesisVoice.name.getter();
  v37 = v36;
  v38 = sub_10026D814(&qword_1006ABFF0, &qword_100588080);
  *(inited + 80) = v35;
  *(inited + 88) = v37;
  *(inited + 104) = v38;
  *(inited + 112) = 3;
  v39 = sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v0[39] = v39;
  v40 = sub_10000C1AC(v39);
  *(v40 + 16) = xmmword_10057CA80;
  sub_100006AF0(0, &qword_1006A21B0, TTSAssetTechnology_ptr);
  *(v40 + 32) = static TTSAssetTechnology.neural.getter();
  v41 = sub_10001B784(v40, sub_1002F7104, sub_1002743B4);
  v42 = sub_10026D814(&qword_1006A21B8, &qword_10057CB68);
  *(inited + 120) = v41;
  *(inited + 144) = v42;
  *(inited + 152) = 5;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = 1;
  type metadata accessor for TTSAssetProperty(0);
  sub_10002F13C(&unk_1006A7550, type metadata accessor for TTSAssetProperty, &unk_10057C870);
  v0[26] = Dictionary.init(dictionaryLiteral:)();
  v0[40] = type metadata accessor for TTSAsset();
  v43 = sub_10000C1AC(v39);
  *(v43 + 16) = xmmword_10057CA80;
  v0[41] = sub_100006AF0(0, &qword_1006A21C0, TTSAssetType_ptr);

  *(v43 + 32) = static TTSAssetType.gryphonVoice.getter();
  v44 = static TTSAsset.bestAsset(ofTypes:matching:)();

  if (v44)
  {

    v45 = v30;
    v46 = v44;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v49 = 136315394;
      v50 = dispatch thunk of SynthesisVoice.name.getter();
      v52 = sub_10001E478(v50, v51);
      v54 = v53;

      v55 = sub_10002741C(v52, v54, &v63);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v0[29] = v46;
      v56 = v46;
      v57 = String.init<A>(reflecting:)();
      v59 = sub_10002741C(v57, v58, &v63);

      *(v49 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v47, v48, "%s found asset on disk : %s", v49, 0x16u);
      swift_arrayDestroy();
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {
    }

LABEL_8:

    sub_10000E8DC();

    return v13();
  }

  v0[42] = *(v0[33] + 56);
  v60 = sub_10000C1AC(v39);
  v0[43] = v60;
  *(v60 + 16) = xmmword_10057CA80;
  *(v60 + 32) = v30;
  v61 = v30;
  v62 = swift_task_alloc();
  v0[44] = v62;
  *v62 = v0;
  v62[1] = sub_1002739A8;

  return sub_10028A32C();
}

uint64_t sub_1002739A8()
{
  sub_10000C698();
  v2 = *v1;
  sub_100007BC8();
  *v3 = v2;

  if (v0)
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100273AE4()
{
  v31 = v0;
  v1 = v0[39];
  v30[3] = &type metadata for Bool;
  LOBYTE(v30[0]) = 0;
  sub_100381904();
  v2 = sub_10000C1AC(v1);
  *(v2 + 16) = xmmword_10057CA80;
  *(v2 + 32) = static TTSAssetType.gryphonVoice.getter();
  v3 = v0[26];
  v4 = static TTSAsset.bestAsset(ofTypes:matching:)();
  v0[45] = v4;

  if (v4)
  {

    v5 = v4;
    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_10000F96C())
    {
      sub_100005274();
      v7 = sub_10000681C();
      v30[0] = v7;
      *v2 = 136315138;
      v0[28] = v5;
      v8 = v5;
      v9 = String.init<A>(reflecting:)();
      v11 = sub_10002741C(v9, v10, v30);

      *(v2 + 4) = v11;
      sub_10000E4D4(&_mh_execute_header, v12, v13, "Staring download of %s");
      sub_100009B7C(v7);
      sub_100009ED0();

      sub_100009ED0();
    }

    v14 = [objc_opt_self() mainBundle];
    v15 = sub_100021AEC(v14);
    v17 = v16;
    v0[46] = v16;
    sub_100271E58(1);
    v18 = swift_task_alloc();
    v0[47] = v18;
    *v18 = v0;
    v18[1] = sub_100273E34;

    return sub_10028AD78(v5, v15, v17, 1, sub_100274290, 0);
  }

  else
  {

    v20 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    v21 = sub_10000F96C();
    v22 = v0[38];
    if (v21)
    {
      sub_100005274();
      v23 = sub_10000681C();
      v30[0] = v23;
      *v2 = 136446210;
      v0[27] = v3;
      sub_10026D814(&qword_1006A21C8, &qword_10057CB70);
      v24 = String.init<A>(reflecting:)();
      v26 = sub_10002741C(v24, v25, v30);

      *(v2 + 4) = v26;
      sub_10000E4D4(&_mh_execute_header, v27, v28, "Failed to find best asset for filter %{public}s");
      sub_100009B7C(v23);
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {
    }

    sub_10000E8DC();

    return v29();
  }
}

uint64_t sub_100273E34()
{
  sub_10000C698();
  v3 = v2;
  sub_100007BC8();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 384) = v0;

  if (!v0)
  {
  }

  sub_100007BBC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100273F70()
{
  sub_100006810();
  v1 = *(v0 + 360);

  sub_10000E8DC();

  return v2();
}

uint64_t sub_100273FD8()
{
  sub_100006810();
  v1 = *(v0 + 360);

  v2 = *(v0 + 8);

  return v2();
}

void *sub_1002740A4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_100022DDC(v9);
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v6;
}

void *sub_100274144(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1002F5F28(*(a1 + 16), 0);
  type metadata accessor for PendingMembershipInfo(0);
  sub_1002F6BDC();
  v4 = v3;
  sub_100022DDC(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

void sub_100274290(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = a1 * 100.0 / a2;
  }

  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA5F8);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, oslog, v4, "TTS model download progress: %f", v5, 0xCu);
  }
}

uint64_t sub_1002743B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10000B6F4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_100006AF0(0, &qword_1006A21B0, TTSAssetTechnology_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_100274E3C(&qword_1006A21D0, &qword_1006A21B8, &qword_10057CB68);
        for (i = 0; i != v7; ++i)
        {
          sub_10026D814(&qword_1006A21B8, &qword_10057CB68);
          v9 = sub_100024CFC(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100274634(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10000B6F4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_100274E3C(&qword_1006A2218, &qword_1006A2210, &qword_10057CBA0);
        for (i = 0; i != v7; ++i)
        {
          sub_10026D814(&qword_1006A2210, &qword_10057CBA0);
          v9 = sub_100024CFC(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002749C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10000B6F4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_100006AF0(0, &unk_1006A30C0, NSPredicate_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_100274E3C(&qword_1006A2228, &qword_1006A2220, &qword_10057CBA8);
        for (i = 0; i != v7; ++i)
        {
          sub_10026D814(&qword_1006A2220, &qword_10057CBA8);
          v9 = sub_100024CFC(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100274D5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a4 voiceSimilarToVoice:a1 inSiriSessionLanguage:v6];

  return v7;
}

uint64_t sub_100274DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100274E3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10026DCB4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_100274ECC(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100274F30(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100274F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *(a3 - 8);
  v6 = __chkstk_darwin(a1);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v30 = v10;
  v12 = type metadata accessor for AudioInterruptionProviderIdentifier(255, v11, v10, v10);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = __chkstk_darwin(TupleTypeMetadata2 - 8);
  v16 = &v28 - v15;
  v17 = *(v14 + 56);
  v18 = *(v12 - 8);
  v19 = *(v18 + 16);
  v19(&v28 - v15, a1, v12);
  v19(&v16[v17], a2, v12);
  LODWORD(a2) = sub_100015468(&v16[v17], 1, a3);
  v20 = sub_100015468(v16, 1, a3);
  if (a2 != 1)
  {
    if (v20 != 1)
    {
      v22 = v31;
      v23 = *(v31 + 32);
      v23(v9, v16, a3);
      v24 = &v16[v17];
      v25 = v29;
      v23(v29, v24, a3);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v22 + 8);
      v26(v25, a3);
      v26(v9, a3);
      return v21 & 1;
    }

    (*(v31 + 8))(&v16[v17], a3);
    goto LABEL_6;
  }

  if (v20 != 1)
  {
LABEL_6:
    (*(v18 + 8))(v16, v12);
    v21 = 0;
    return v21 & 1;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_100275240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10026FEC0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100275270@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10039C360(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1002752A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10026FF30(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1002752D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026FEA8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100275304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026FE98(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100275340@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10026FEF8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100275398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10026D700();
  *a1 = result;
  return result;
}

void *sub_1002753C0()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100275400()
{
  sub_1002753C0();

  return _swift_deallocClassInstance(v0, 88, 7);
}

unint64_t sub_10027546C()
{
  result = qword_1006A2310;
  if (!qword_1006A2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2310);
  }

  return result;
}

unint64_t sub_1002754C4()
{
  result = qword_1006A2318;
  if (!qword_1006A2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2318);
  }

  return result;
}

unint64_t sub_10027551C()
{
  result = qword_1006A2320;
  if (!qword_1006A2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2320);
  }

  return result;
}

unint64_t sub_100275574()
{
  result = qword_1006A2328;
  if (!qword_1006A2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2328);
  }

  return result;
}

uint64_t sub_1002755D0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_10027562C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_100015468(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1002757A4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = *(v8 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            if (a2 >= v9)
            {
              if (v11 <= 3)
              {
                v22 = ~(-1 << (8 * v11));
              }

              else
              {
                v22 = -1;
              }

              if (v11)
              {
                v23 = v22 & (a2 - v9);
                if (v11 <= 3)
                {
                  v24 = v11;
                }

                else
                {
                  v24 = 4;
                }

                bzero(a1, v11);
                switch(v24)
                {
                  case 2:
                    *a1 = v23;
                    break;
                  case 3:
                    *a1 = v23;
                    a1[2] = BYTE2(v23);
                    break;
                  case 4:
                    *a1 = v23;
                    break;
                  default:
                    *a1 = v23;
                    break;
                }
              }
            }

            else
            {
              v21 = a2 + 1;

              sub_10000AF74(a1, v21, v9, v7);
            }
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        break;
      case 2:
        *&a1[v12] = v19;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v12] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t getEnumTagSinglePayload for AudioInterruptionPriority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AudioInterruptionPriority(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100275BC0()
{
  result = qword_1006A23D0;
  if (!qword_1006A23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A23D0);
  }

  return result;
}

id CSDConversationManager.activityAuthorizationState(presentAlertIfIncapable:)(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = [v1 queue];
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = [v1 activeConversation];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 allParticipantsSupportSharePlay];
      if (v11 & 1) == 0 && (a1)
      {
        [v1 _displaySharePlayUnableToStartAlert];
      }

      v12 = [v10 tuConversation];
      v13 = 1;
    }

    else
    {
      v13 = [v1 hasActiveActivitySessionContainer];
      v12 = 0;
      v11 = 1;
    }

    v14 = objc_allocWithZone(type metadata accessor for ActivityAuthorizationState());
    v15 = sub_100275F30(v11, v13, v12);

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100275F00()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesdP33_F407A95BB69D886CF1FD5E5E27BE56B126ActivityAuthorizationState_activeConversation);
  v2 = v1;
  return v1;
}

id sub_100275F30(char a1, char a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC13callservicesdP33_F407A95BB69D886CF1FD5E5E27BE56B126ActivityAuthorizationState_isSharePlayCapable] = a1;
  v3[OBJC_IVAR____TtC13callservicesdP33_F407A95BB69D886CF1FD5E5E27BE56B126ActivityAuthorizationState_hasActiveActivitySessionContainer] = a2;
  *&v3[OBJC_IVAR____TtC13callservicesdP33_F407A95BB69D886CF1FD5E5E27BE56B126ActivityAuthorizationState_activeConversation] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for ActivityAuthorizationState();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100275FE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAuthorizationState();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100276028()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v8);
  sub_100006688();
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  sub_100035CA0();
  sub_100285FC4(v12, v13, v14, &qword_10057D580);
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_100015468(v11, 1, v15);

  if (v16 == 1)
  {
    sub_100009A04(v11, &qword_1006A5310, &qword_10057D580);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000F49C();
    (*(v17 + 8))(v11, v15);
  }

  v18 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      sub_10000C0EC();
      v22 = String.utf8CString.getter() + 32;
      sub_100007C2C();
      v23 = swift_allocObject();
      *(v23 + 16) = v3;
      *(v23 + 24) = v1;

      sub_10026D814(&qword_1006A25C8, &qword_10057D120);
      v24 = (v21 | v19);
      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v24 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      v26[1] = 7;
      v26[2] = v24;
      v26[3] = v22;
      swift_task_create();
      sub_10000667C();

      sub_100009A04(v5, &qword_1006A5310, &qword_10057D580);

      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_100009A04(v5, &qword_1006A5310, &qword_10057D580);
  sub_100007C2C();
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  *(v25 + 24) = v1;
  sub_10026D814(&qword_1006A25C8, &qword_10057D120);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  swift_task_create();
LABEL_13:
  sub_100005EDC();
}

void sub_1002762F0()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v8);
  sub_100006688();
  __chkstk_darwin(v9);
  v11 = v24 - v10;
  sub_100285FC4(v5, v24 - v10, &qword_1006A5310, &qword_10057D580);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100015468(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100009A04(v11, &qword_1006A5310, &qword_10057D580);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000F49C();
    v14 = sub_10000BB1C();
    v15(v14);
  }

  v16 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      sub_10000C0EC();
      v20 = String.utf8CString.getter() + 32;
      sub_100007C2C();
      v21 = swift_allocObject();
      *(v21 + 16) = v3;
      *(v21 + 24) = v1;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v22 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v24[1] = 7;
      v24[2] = v22;
      v24[3] = v20;
      sub_100018614();
      swift_task_create();

      sub_100009A04(v5, &qword_1006A5310, &qword_10057D580);

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_100009A04(v5, &qword_1006A5310, &qword_10057D580);
  sub_100007C2C();
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = v1;
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  sub_100018614();
  swift_task_create();
LABEL_14:
  sub_100005EDC();
}

uint64_t sub_1002765A0()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A24E0);
  v1 = sub_100006B30();
  sub_1000075F0(v1, v2);
  if (qword_1006A0B78 != -1)
  {
    swift_once();
  }

  sub_10000AF9C(v0, qword_1006BA6E8);
  sub_10000F49C();
  v4 = *(v3 + 16);

  return v4(qword_1006A24E0);
}

Swift::Int sub_10027665C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_1002766BC(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
    case 4:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10027674C(char a1)
{
  result = 0x636972656E6567;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1002767F8()
{
  v2 = v0;
  v3 = type metadata accessor for UUID();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007BAC();
  v9 = (v7 - v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v79 - v12;
  __chkstk_darwin(v11);
  v15 = &v79 - v14;
  v16 = OBJC_IVAR___CSDConversationCallCoordinator__tuConversation;
  sub_1002866E0();
  swift_beginAccess();
  v17 = *(v2 + v16);
  if (v17)
  {
    return v17;
  }

  v89 = v9;
  v90 = v13;
  v91 = v5;
  v18 = (v2 + OBJC_IVAR___CSDConversationCallCoordinator_identityProvider);
  sub_100009B14((v2 + OBJC_IVAR___CSDConversationCallCoordinator_identityProvider), *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_identityProvider + 24));
  v19 = sub_1003D1628();
  if (v1)
  {
    return v18;
  }

  v20 = v19;
  sub_100009B14(v18, v18[3]);
  v22 = sub_1003D16D0();
  v83 = 0;
  v88 = v15;
  v23 = sub_10000B6F4(v20);
  v86 = v22;
  v87 = v3;
  if (!v23)
  {

    v28 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v24 = v23;
  v92 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v20 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      [objc_allocWithZone(TUConversationMember) initWithHandle:v26];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v24 != v25);

    v28 = v92;
    v22 = v86;
    v3 = v87;
LABEL_15:
    v84 = sub_1002F1D1C(v28);
    v29 = [objc_allocWithZone(TUConversationMember) initWithHandle:v22];
    v30 = *(v91 + 16);
    v31 = v88;
    v30(v88, v2 + OBJC_IVAR___CSDConversationCallCoordinator_callUUID, v3);
    v32 = v90;
    if (qword_1006A0770 != -1)
    {
      sub_10000802C();
      swift_once();
    }

    v85 = v29;
    v33 = type metadata accessor for Logger();
    sub_10000AF9C(v33, qword_1006A24E0);
    v34 = sub_100005EC4();
    v82 = v30;
    v30(v34, v31, v3);
    v81 = v29;
    v35 = v32;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      sub_100007BFC();
      v38 = swift_slowAlloc();
      v79 = v38;
      sub_100015070();
      v80 = swift_slowAlloc();
      v92 = v80;
      *v38 = 136315138;
      sub_100009EDC();
      sub_100286020(v39, v40, &protocol conformance descriptor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v44 = sub_10000BB1C();
      v90 = v45;
      v45(v44);
      sub_10002741C(v41, v43, &v92);
      sub_100005EC4();

      v46 = v79;
      *(v79 + 1) = v35;
      _os_log_impl(&_mh_execute_header, v36, v37, "[CSDConversationCallCoordinator] Creating conversation with groupUUID: %s", v46, 0xCu);
      sub_100009B7C(v80);
      sub_10000E50C();

      sub_100009ED0();
    }

    else
    {

      v47 = sub_10000BB1C();
      v90 = v48;
      v48(v47);
    }

    v49 = *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager);
    v50 = v88;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    sub_100035CA0();
    sub_100006AF0(v52, v53, v54);
    sub_100035CA0();
    sub_10000CE3C(v55, v56, v57);
    sub_100006B3C();
    v58 = Set._bridgeToObjectiveC()().super.isa;

    v59 = v49;
    v60 = v85;
    v61 = [v59 findOrCreateConversationWithGroupUUID:isa messagesGroupUUID:0 remoteMembers:v58 otherInvitedHandles:0 localMember:v85 remotePushTokens:0 link:0 activity:0 avMode:1 presentationMode:0 conversationProvider:*(v2 + OBJC_IVAR___CSDConversationCallCoordinator_conversationProvider) screenSharingRequest:0];

    if (v61)
    {
      v90(v50, v87);

      *(v2 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) = 1;
      v62 = *(v2 + v16);
      *(v2 + v16) = v61;
      v18 = v61;
    }

    else
    {
      v63 = v89;
      v18 = v87;
      v82(v89, v50, v87);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        sub_100007BFC();
        v66 = swift_slowAlloc();
        sub_100015070();
        v67 = swift_slowAlloc();
        v92 = v67;
        *v66 = 136315138;
        sub_100009EDC();
        sub_100286020(v68, v69, &protocol conformance descriptor for UUID);
        v70 = v63;
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10028670C();
        v71 = sub_100006F1C();
        v72 = v90;
        v90(v71, v87);
        v73 = sub_100027E34();
        sub_10002741C(v73, v74, v75);
        sub_100005EC4();
        v60 = v85;

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v64, v65, "[CSDConversationCallCoordinator] Failed to create conversation with groupUUID: %s", v66, 0xCu);
        sub_100009B7C(v67);
        sub_100009ED0();

        v18 = v87;
        sub_100009ED0();
      }

      else
      {

        v76 = sub_100006F1C();
        v72 = v90;
        v90(v76, v18);
      }

      v77 = v86;
      sub_100286294();
      sub_100006104();
      swift_allocError();
      *v78 = 0;
      swift_willThrow();

      v72(v88, v18);
    }

    return v18;
  }

  __break(1u);
  return result;
}
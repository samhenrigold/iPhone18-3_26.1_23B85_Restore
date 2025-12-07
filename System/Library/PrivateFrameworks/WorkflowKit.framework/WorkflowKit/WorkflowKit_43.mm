uint64_t WFPBRunShortcutErrorEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 > 6)
      {
        if (v13 == 7)
        {
          v21 = PBReaderReadString();
          v22 = 48;
        }

        else
        {
          if (v13 != 8)
          {
LABEL_38:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_44;
          }

          v21 = PBReaderReadString();
          v22 = 16;
        }

        goto LABEL_43;
      }

      if (v13 == 5)
      {
        v21 = PBReaderReadString();
        v22 = 8;
LABEL_43:
        v24 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_44;
      }

      if (v13 != 6)
      {
        goto LABEL_38;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 60) |= 1u;
      while (1)
      {
        v27 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27 & 0x7F) << v14;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_47;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_47:
      *(a1 + 56) = v20;
LABEL_44:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v21 = PBReaderReadString();
        v22 = 40;
        break;
      case 3:
        v21 = PBReaderReadString();
        v22 = 32;
        break;
      case 4:
        v21 = PBReaderReadString();
        v22 = 24;
        break;
      default:
        goto LABEL_38;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

__CFString *WFStringForDialogPresentationMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E8375AE8[a1];
  }
}

uint64_t WFPBShowFocusConfigurationEventReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E8375B00[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFREPBRunRequestProgressReadFrom(uint64_t a1, void *a2)
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
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
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

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

Class initUIImageSymbolConfiguration()
{
  if (UIKitLibrary_sOnce != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_13628);
  }

  result = objc_getClass("UIImageSymbolConfiguration");
  classUIImageSymbolConfiguration = result;
  getUIImageSymbolConfigurationClass = UIImageSymbolConfigurationFunction;
  return result;
}

void *__UIKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib = result;
  return result;
}

Class initUIColor()
{
  if (UIKitLibrary_sOnce != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_13628);
  }

  result = objc_getClass("UIColor");
  classUIColor = result;
  getUIColorClass = UIColorFunction;
  return result;
}

void sub_1CA74DE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13635(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA74E220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA74E45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA74E9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getISIconClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getISIconClass_softClass;
  v7 = getISIconClass_softClass;
  if (!getISIconClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getISIconClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getISIconClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA74EAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getISImageDescriptorClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISImageDescriptor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISImageDescriptorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNImage+Workflow.m" lineNumber:24 description:{@"Unable to find class %s", "ISImageDescriptor"}];

    __break(1u);
  }
}

void *__getkISImageDescriptorTableUINameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorTableUIName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorTableUINameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IconServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IconServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8375B98;
    v6 = 0;
    IconServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore_frameworkLibrary;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IconServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"LNImage+Workflow.m" lineNumber:22 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __IconServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void __getISIconClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISIcon");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getISIconClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LNImage+Workflow.m" lineNumber:23 description:{@"Unable to find class %s", "ISIcon"}];

    __break(1u);
  }
}

uint64_t __WFPresentResumeSyncConfirmationAlertWithUserInterfaceIfNeeded_block_invoke_2()
{
  [WFCloudKitSyncSession setZoneWasPurged:0];
  [WFCloudKitSyncSession setIgnoresUserDeletedZoneErrors:1];

  return [WFCloudKitSyncSession setSyncEnabled:0];
}

uint64_t __WFPresentResumeSyncConfirmationAlertWithUserInterfaceIfNeeded_block_invoke()
{
  [WFCloudKitSyncSession setZoneWasPurged:0];
  [WFCloudKitSyncSession setIgnoresUserDeletedZoneErrors:1];
  result = +[WFCloudKitSyncSession isSyncEnabled];
  if (result)
  {

    return notify_post("com.apple.shortcuts.daemon-wakeup-request");
  }

  return result;
}

uint64_t WFRemoteExecuteActionIfApplicable(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if ([v11 requiresRemoteExecution])
  {
    v17 = +[WFRemoteExecutionCoordinator sharedCoordinator];
    v18 = [v17 hasPairedDevice];
    if (v18)
    {
      v19 = [[WFRemoteExecutionRunRequest alloc] initWithAction:v11 workflowControllerState:v12];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __WFRemoteExecuteActionIfApplicable_block_invoke;
      v21[3] = &unk_1E8375BE8;
      v22 = v11;
      v23 = v15;
      v24 = v17;
      v25 = v16;
      [v24 sendRunRequest:v19 userInterface:v13 parameterInputProvider:v14 completionHandler:v21];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __WFRemoteExecuteActionIfApplicable_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  [*(a1 + 32) setDidRunRemotely:1];
  v6 = [v20 error];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  v10 = objc_opt_new();
  [v10 setSource:*(a1 + 40)];
  v11 = [*(a1 + 48) pairedDeviceModelIdentifier];
  [v10 setDestinationType:v11];

  v12 = [*(a1 + 32) identifier];
  [v10 setActionIdentifier:v12];

  [v10 setCompleted:v5 != 0];
  [v10 track];
  if (v5)
  {
    v13 = objc_alloc_init(WFRemoteExecutionErrorEvent);
    [(WFRemoteExecutionErrorEvent *)v13 setSource:*(a1 + 40)];
    v14 = [*(a1 + 48) pairedDeviceModelIdentifier];
    [(WFRemoteExecutionErrorEvent *)v13 setDestinationType:v14];

    v15 = [v9 domain];
    [(WFRemoteExecutionErrorEvent *)v13 setErrorDomain:v15];

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "code")}];
    v17 = [v16 stringValue];
    [(WFRemoteExecutionErrorEvent *)v13 setErrorCode:v17];

    [(WFEvent *)v13 track];
  }

  v18 = *(a1 + 56);
  if (v20)
  {
    v19 = [v20 output];
    (*(v18 + 16))(v18, v19, v9);
  }

  else
  {
    (*(v18 + 16))(v18, 0, v9);
  }
}

uint64_t WFPBShowWidgetConfigurationEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 24;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 8;
LABEL_36:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = PBReaderReadString();
            v22 = 16;
            goto LABEL_36;
          case 4:
            v21 = PBReaderReadString();
            v22 = 32;
            goto LABEL_36;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_42;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_42:
            *(a1 + 40) = v20;
            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFREPBStopRequestReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBBrowseGalleryCategoryEventReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___WFPBBrowseGalleryCategoryEvent__galleryCategoryIdentifier;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___WFPBBrowseGalleryCategoryEvent__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__15279(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA75D834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFMigrateContactFieldValueParameterValue(void *a1, unsigned int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [a1 objectForKey:@"Value"];
  v3 = [v2 objectForKey:@"WFContactFieldValues"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v3;
    v14 = v2;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v9 objectForKey:@"WFContactProperty"];
            v11 = [v10 isEqual:&unk_1F4A9A228];

            if (v11)
            {
              v12 = [MEMORY[0x1E696AD98] numberWithInt:a2];
              [v9 setObject:v12 forKey:@"WFContactProperty"];

              [v9 setObject:&unk_1F4A9A240 forKey:@"WFContactMultivalue"];
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v3 = v13;
    v2 = v14;
  }
}

uint64_t WFREPBAceCommandRequestResponseReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadData();
        v15 = 8;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(WFREPBError);
    objc_storeStrong((a1 + 16), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !WFREPBErrorReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

id WFContactPropertySetFromContactFieldProperties(void *a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = [a1 if_compactMap:&__block_literal_global_15736];
  v3 = [v1 setWithArray:v2];

  return v3;
}

void *__WFContactPropertySetFromContactFieldProperties_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_isEqualToString_(v2))
  {
    v3 = &unk_1F4A9A258;
  }

  else if (objc_msgSend_isEqualToString_(v2))
  {
    v3 = &unk_1F4A9A270;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void WFAddEntriesToDictionary(void *a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = a1;
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 definitionByAddingEntriesInDictionary:v11];
  }

  else
  {
    v9 = [[WFParameterDefinition alloc] initWithDictionary:v11];
  }

  v10 = v9;
  [v6 setObject:v9 forKeyedSubscript:v5];
}

void sub_1CA76BBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA76BDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16341(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id initUIApplicationDidBecomeActiveNotification()
{
  if (UIKitLibrary_sOnce_16345 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_16345, &__block_literal_global_16346);
  }

  v0 = dlsym(UIKitLibrary_sLib_16347, "UIApplicationDidBecomeActiveNotification");
  if (!v0)
  {
    __assert_rtn("initUIApplicationDidBecomeActiveNotification", "WFInterchangeAppRegistry.m", 25, "constant");
  }

  objc_storeStrong(&constantUIApplicationDidBecomeActiveNotification, *v0);
  getUIApplicationDidBecomeActiveNotification = UIApplicationDidBecomeActiveNotificationFunction;
  v1 = constantUIApplicationDidBecomeActiveNotification;

  return v1;
}

void *__UIKitLibrary_block_invoke_16352()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_16347 = result;
  return result;
}

id WFEnforceClass_17313(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Could not create bookmark (%@) for data backed file value falling back to URL backing", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void sub_1CA7710BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPSandboxingURLWrapperClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __FileProviderLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8376080;
    v8 = 0;
    FileProviderLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFFileValue.m" lineNumber:26 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("FPSandboxingURLWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFPSandboxingURLWrapperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFFileValue.m" lineNumber:27 description:{@"Unable to find class %s", "FPSandboxingURLWrapper"}];

LABEL_10:
    __break(1u);
  }

  getFPSandboxingURLWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FileProviderLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WFPBRenameShortcutEventReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___WFPBRenameShortcutEvent__source;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___WFPBRenameShortcutEvent__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id WFDisplayNameForDeviceIdiom(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = @"iPad";
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_23;
        }

        v6 = @"Mac";
      }

      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v6 = @"Apple Vision Pro";
    }

    else
    {
      if (a1 != 6)
      {
        goto LABEL_23;
      }

      v6 = @"HomePod";
    }
  }

  else
  {
    if (a1 != 3)
    {
LABEL_12:
      isEqualToString = objc_msgSend_isEqualToString_(v3);
      v8 = @"iPod touch";
      if (a1 != 4)
      {
        v8 = @"iPhone or iPod touch";
      }

      if (!a1)
      {
        v8 = @"iPhone";
      }

      if (isEqualToString)
      {
        v6 = v8;
      }

      else
      {
        v6 = @"iPhone or iPod touch";
      }

      goto LABEL_22;
    }

    v6 = @"Apple Watch";
  }

LABEL_22:
  v5 = WFLocalizedString(v6);
LABEL_23:

  return v5;
}

void sub_1CA7751D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18089(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA777478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18191(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA777D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id WFContentLocationByAccessResourceIdentifier()
{
  v33[30] = *MEMORY[0x1E69E9840];
  v32[0] = @"WFAddToReadingListAccessResource";
  v31 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0F10]];
  v33[0] = v31;
  v32[1] = @"WFAppleMusicAccessResource";
  v30 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0ED0]];
  v33[1] = v30;
  v32[2] = @"WFCameraAccessResource";
  v29 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E50]];
  v33[2] = v29;
  v32[3] = @"WFCalendarAccessResource";
  v28 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E48]];
  v33[3] = v28;
  v32[4] = @"WFContactAccessResource";
  v27 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E58]];
  v33[4] = v27;
  v32[5] = @"WFEvernoteAccessResource";
  v26 = [MEMORY[0x1E6996F90] evernoteLocation];
  v33[5] = v26;
  v32[6] = @"WFHealthKitAccessResource";
  v25 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E88]];
  v33[6] = v25;
  v32[7] = @"WFHomeKitAccessResource";
  v24 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E90]];
  v33[7] = v24;
  v32[8] = @"WFiCloudDriveAccessResource";
  v23 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E68]];
  v33[8] = v23;
  v32[9] = @"WFImgurAccessResource";
  v22 = [MEMORY[0x1E6996F90] imgurLocation];
  v33[9] = v22;
  v32[10] = @"WFInstapaperAccessResource";
  v21 = [MEMORY[0x1E6996F90] instapaperLocation];
  v33[10] = v21;
  v32[11] = @"WFLocalNotificationAccessResource";
  v20 = [MEMORY[0x1E6996D78] notificationLocation];
  v33[11] = v20;
  v32[12] = @"WFLocationAccessResource";
  v19 = [MEMORY[0x1E6996D78] locationLocation];
  v33[12] = v19;
  v32[13] = @"WFMessagesAccessResource";
  v18 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EB8]];
  v33[13] = v18;
  v32[14] = @"WFMicrophoneAccessResource";
  v17 = [MEMORY[0x1E6996D78] microphoneLocation];
  v33[14] = v17;
  v32[15] = @"WFPhotoAccessResource";
  v16 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EF0]];
  v33[15] = v16;
  v32[16] = @"WFPinboardAccessResource";
  v15 = [MEMORY[0x1E6996F90] pinboardLocation];
  v33[16] = v15;
  v32[17] = @"WFPocketAccessResource";
  v14 = [MEMORY[0x1E6996F90] pocketLocation];
  v33[17] = v14;
  v32[18] = @"WFPodcastsAccessResource";
  v13 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EF8]];
  v33[18] = v13;
  v32[19] = @"WFReminderAccessResource";
  v12 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0F08]];
  v33[19] = v12;
  v32[20] = @"WFRequestPaymentAccessResource";
  v0 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0FA0]];
  v33[20] = v0;
  v32[21] = @"WFRunShortcutsAccessResource";
  v1 = [MEMORY[0x1E6996D78] shortcutsAppLocation];
  v33[21] = v1;
  v32[22] = @"WFScreenshotAccessResource";
  v2 = [MEMORY[0x1E6996C90] screenshotLocation];
  v33[22] = v2;
  v32[23] = @"WFSendEmailAccessResource";
  v3 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EA0]];
  v33[23] = v3;
  v32[24] = @"WFShortcutsAccessResource";
  v4 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0FB0] promptingBehaviour:1];
  v33[24] = v4;
  v32[25] = @"WFSpeechRecognitionAccessResource";
  v5 = [MEMORY[0x1E6996D78] speechRecognitionLocation];
  v33[25] = v5;
  v32[26] = @"WFStartCallAccessResource";
  v6 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EC0]];
  v33[26] = v6;
  v32[27] = @"WFTrelloAccessResource";
  v7 = [MEMORY[0x1E6996F90] trelloLocation];
  v33[27] = v7;
  v32[28] = @"WFTumblrAccessResource";
  v8 = [MEMORY[0x1E6996F90] tumblrLocation];
  v33[28] = v8;
  v32[29] = @"WFWallpaperModificationAccessResource";
  v9 = [MEMORY[0x1E6996D78] wallpaperLocation];
  v33[29] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:30];

  return v11;
}

id WFContentLocationToActionIdentifierMapping()
{
  v31[28] = *MEMORY[0x1E69E9840];
  v29 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E48]];
  v30[0] = v29;
  v31[0] = &unk_1F4A9B1E8;
  v28 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E58]];
  v30[1] = v28;
  v31[1] = &unk_1F4A9B200;
  v27 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E88]];
  v30[2] = v27;
  v31[2] = &unk_1F4A9B218;
  v26 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E90]];
  v30[3] = v26;
  v31[3] = &unk_1F4A9B230;
  v25 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EA0]];
  v30[4] = v25;
  v31[4] = &unk_1F4A9B248;
  v24 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EB8]];
  v30[5] = v24;
  v31[5] = &unk_1F4A9B260;
  v23 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EC0]];
  v30[6] = v23;
  v31[6] = &unk_1F4A9B278;
  v22 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0ED0]];
  v30[7] = v22;
  v31[7] = &unk_1F4A9B290;
  v21 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EE8]];
  v30[8] = v21;
  v31[8] = &unk_1F4A9B2A8;
  v20 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EF0]];
  v30[9] = v20;
  v31[9] = &unk_1F4A9B2C0;
  v19 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0EF8]];
  v30[10] = v19;
  v31[10] = &unk_1F4A9B2D8;
  v18 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0F08]];
  v30[11] = v18;
  v31[11] = &unk_1F4A9B2F0;
  v17 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0F10]];
  v30[12] = v17;
  v31[12] = &unk_1F4A9B308;
  v16 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0FA0]];
  v30[13] = v16;
  v31[13] = &unk_1F4A9B320;
  v15 = [MEMORY[0x1E6996F90] evernoteLocation];
  v30[14] = v15;
  v31[14] = &unk_1F4A9B338;
  v14 = [MEMORY[0x1E6996F90] imgurLocation];
  v30[15] = v14;
  v31[15] = &unk_1F4A9B350;
  v13 = [MEMORY[0x1E6996F90] instapaperLocation];
  v30[16] = v13;
  v31[16] = &unk_1F4A9B368;
  v12 = [MEMORY[0x1E6996D78] notificationLocation];
  v30[17] = v12;
  v31[17] = &unk_1F4A9B380;
  v0 = [MEMORY[0x1E6996D78] locationLocation];
  v30[18] = v0;
  v31[18] = &unk_1F4A9B398;
  v1 = [MEMORY[0x1E6996D78] microphoneLocation];
  v30[19] = v1;
  v31[19] = &unk_1F4A9B3B0;
  v2 = [MEMORY[0x1E6996F90] pinboardLocation];
  v30[20] = v2;
  v31[20] = &unk_1F4A9B3C8;
  v3 = [MEMORY[0x1E6996F90] pocketLocation];
  v30[21] = v3;
  v31[21] = &unk_1F4A9B3E0;
  v4 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0FB0] promptingBehaviour:1];
  v30[22] = v4;
  v31[22] = &unk_1F4A9B3F8;
  v5 = [MEMORY[0x1E6996C90] screenshotLocation];
  v30[23] = v5;
  v31[23] = &unk_1F4A9B410;
  v6 = [MEMORY[0x1E6996D78] speechRecognitionLocation];
  v30[24] = v6;
  v31[24] = &unk_1F4A9B428;
  v7 = [MEMORY[0x1E6996F90] trelloLocation];
  v30[25] = v7;
  v31[25] = &unk_1F4A9B440;
  v8 = [MEMORY[0x1E6996F90] tumblrLocation];
  v30[26] = v8;
  v31[26] = &unk_1F4A9B458;
  v9 = [MEMORY[0x1E6996D78] wallpaperLocation];
  v30[27] = v9;
  v31[27] = &unk_1F4A9B470;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:28];

  return v11;
}

uint64_t WFPBAddShortcutEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_36;
        }

        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v27 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27 & 0x7F) << v16;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_44:
          *(a1 + 8) = v22;
          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_36;
          case 5:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_36;
          case 6:
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_36:
            v23 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA77E3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19437(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getWFWFRecordLogObject()
{
  if (getWFWFRecordLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWFRecordLogObject_onceToken, &__block_literal_global_19665);
  }

  v1 = getWFWFRecordLogObject_log;

  return v1;
}

void __getWFWFRecordLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "WFRecord");
  v1 = getWFWFRecordLogObject_log;
  getWFWFRecordLogObject_log = v0;
}

id WFShortcutPackageFileFailedToSignShortcutFileError()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A578];
  v1 = WFLocalizedString(@"Failed to sign shortcut");
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [v0 errorWithDomain:@"WFWorkflowErrorDomain" code:4 userInfo:v2];

  return v3;
}

void sub_1CA784378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(a10 + 16))(a10, a2, a3, a4, a5, a6, a7, a8);
  (*(a12 + 16))();
  (*(v12 + 16))(v12);
  _Unwind_Resume(a1);
}

id WFShortcutPackageFileInvalidShortcutFileError()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A578];
  v1 = WFLocalizedString(@"Invalid shortcut file");
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [v0 errorWithDomain:@"WFWorkflowErrorDomain" code:3 userInfo:v2];

  return v3;
}

void sub_1CA784ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(a13 + 16))(a13, a2, a3, a4, a5, a6, a7, a8);
  (*(v13 + 16))(v13);
  _Unwind_Resume(a1);
}

id WFShortcutPackageFileFailedToExtractShortcutFileError()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A578];
  v1 = WFLocalizedString(@"Failed to extract the shortcut file data");
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [v0 errorWithDomain:@"WFWorkflowErrorDomain" code:6 userInfo:v2];

  return v3;
}

void sub_1CA7853A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 144), 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20357(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFPBPersonalAutomationSuggestionEventReadFrom(uint64_t a1, void *a2)
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
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 != 3)
          {
            if (v13 != 4)
            {
              goto LABEL_63;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              v42 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v42 & 0x7F) << v16;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_66;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_66:
            v37 = 58;
LABEL_71:
            *(a1 + v37) = v22;
            goto LABEL_72;
          }

          v14 = PBReaderReadString();
          v15 = 40;
        }

        else if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_63;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              v41 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v41 & 0x7F) << v29;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_70;
              }
            }

            v22 = (v31 != 0) & ~[a2 hasError];
LABEL_70:
            v37 = 57;
          }

          else
          {
            if (v13 != 6)
            {
LABEL_63:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_72;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              v40 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v40 & 0x7F) << v23;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_68;
              }
            }

            v22 = (v25 != 0) & ~[a2 hasError];
LABEL_68:
            v37 = 56;
          }

          goto LABEL_71;
        }

        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 8:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          case 9:
            v14 = PBReaderReadString();
            v15 = 48;
            break;
          default:
            goto LABEL_63;
        }
      }

      v35 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_72:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA78928C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v36 = objc_begin_catch(a1);
    v37 = getWFTestHarnessLogObject();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      *(v33 - 192) = 136315394;
      v38 = v33 - 192;
      *(v38 + 4) = "[WFHarnessTestRunDescriptor loadTestCaseWithError:]";
      *(v33 - 180) = 2112;
      *(v38 + 14) = v36;
      _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_FAULT, "%s Exception thrown while constructing and calling test invocation method: %@", (v33 - 192), 0x16u);
    }

    if (v32)
    {
      *v32 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    }

    objc_end_catch();
    JUMPOUT(0x1CA788A7CLL);
  }

  (*(a14 + 16))();
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20765(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA78A1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20844(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL WFErrorIsRemoteQuarantineDenialError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if (objc_msgSend_isEqualToString_(v2))
  {
    v3 = [v1 code] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id WFAddRecoveryOptionsToRemoteQuarantineDenialError(void *a1, void *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (WFErrorIsRemoteQuarantineDenialError(v3))
  {
    v5 = [v3 userInfo];
    v6 = [v5 mutableCopy];

    v7 = WFLocalizedString(@"Cancel");
    v20[0] = v7;
    v8 = WFLocalizedString(@"Delete");
    v20[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A590]];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6997068]];

    v11 = objc_alloc(MEMORY[0x1E6996CB8]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __WFAddRecoveryOptionsToRemoteQuarantineDenialError_block_invoke;
    v17[3] = &unk_1E8376740;
    v19 = 1;
    v18 = v4;
    v12 = [v11 initWithHandlerBlock:v17];
    [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A8A8]];
    [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6997138]];
    v13 = MEMORY[0x1E696ABC0];
    v14 = [v3 domain];
    v15 = [v13 errorWithDomain:v14 code:objc_msgSend(v3 userInfo:{"code"), v6}];
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

void __WFAddRecoveryOptionsToRemoteQuarantineDenialError_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a1 + 40) == a3)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = a5;
    v7(v6);
    v8[2](v8, 1, 0);
  }
}

void sub_1CA78BF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21068(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA78F288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA7901C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA790928(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1CA791F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA79401C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAFIsPersistentSiriAvailableSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AssistantServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8376A70;
    v7 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AssistantServicesLibraryCore_frameworkLibrary;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFAssistantServicesWrapper.m" lineNumber:13 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "AFIsPersistentSiriAvailable");
  *(*(a1[4] + 8) + 24) = result;
  getAFIsPersistentSiriAvailableSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1CA794428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1CA795190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22356(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA799E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getWFLaunchAngelLogObject()
{
  if (getWFLaunchAngelLogObject_onceToken != -1)
  {
    dispatch_once(&getWFLaunchAngelLogObject_onceToken, &__block_literal_global_22766);
  }

  v1 = getWFLaunchAngelLogObject_log;

  return v1;
}

void __getWFLaunchAngelLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "LaunchAngel");
  v1 = getWFLaunchAngelLogObject_log;
  getWFLaunchAngelLogObject_log = v0;
}

uint64_t WFBundleIdentifierIsTerminalApp(void *a1)
{
  v1 = WFBundleIdentifierIsTerminalApp_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFBundleIdentifierIsTerminalApp_onceToken, &__block_literal_global_22864);
  }

  v3 = [WFBundleIdentifierIsTerminalApp_terminals containsObject:v2];

  return v3;
}

void __WFBundleIdentifierIsTerminalApp_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.Terminal", @"com.googlecode.iterm2", @"dev.warp.Warp-Stable", @"dev.commandline.waveterm", @"org.alacritty", @"dev.archipelago", @"org.contourterminal.Contour", @"com.yourcompany.cool-retro-term", @"com.mitchellh.ghostty", @"co.zeit.hyper", @"net.kovidgoyal.kitty", @"com.raphaelamorim.rio", @"org.tabby", @"app.termora", @"com.github.wez.wezterm", 0}];
  v1 = WFBundleIdentifierIsTerminalApp_terminals;
  WFBundleIdentifierIsTerminalApp_terminals = v0;
}

id WFLaunchDeniedErrorForLocalizedTerminalAppName(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v2 = MEMORY[0x1E696AEC0];
  v3 = a1;
  v4 = WFLocalizedString(@"The action could not run because it attempted to open a file in “%@”, but “Allow Running Scripts” is disabled in the Shortcuts settings.");
  v5 = [v2 stringWithFormat:v4, v3, v9];

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v1 errorWithDomain:@"WFActionErrorDomain" code:12 userInfo:v6];

  return v7;
}

uint64_t WFPBRemoteWidgetConfigurationEventReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E8376DF8[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

Class initUIPasteboard()
{
  if (UIKitLibrary_sOnce_23061 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_23061, &__block_literal_global_23062);
  }

  result = objc_getClass("UIPasteboard");
  classUIPasteboard = result;
  getUIPasteboardClass = UIPasteboardFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_23066()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_23068 = result;
  return result;
}

void __getPRSServiceClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRSServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPosterService.m" lineNumber:31 description:{@"Unable to find class %s", "PRSService"}];

    __break(1u);
  }
}

void PosterBoardServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PosterBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8376E98;
    v5 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFPosterService.m" lineNumber:30 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1CA79DF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRSExternalSystemServiceClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSExternalSystemService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSExternalSystemServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRSExternalSystemServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFPosterService.m" lineNumber:32 description:{@"Unable to find class %s", "PRSExternalSystemService"}];

    __break(1u);
  }
}

id WFSanitizedPostersError(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = [v3 domain];
  if ([v5 hasPrefix:@"com.apple.PosterBoard"])
  {
  }

  else
  {
    v7 = [v3 domain];
    isEqualToString = objc_msgSend_isEqualToString_(v7);

    if (!isEqualToString)
    {
      v6 = v3;
      goto LABEL_10;
    }
  }

  v9 = getWFActionsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "WFSanitizedPostersError";
    v23 = 2112;
    v24 = v4;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s %@ failed with error: %@, being remapped to user-facing error", buf, 0x20u);
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = WFLocalizedString(@"Unable to %@");
  v12 = [v10 localizedStringWithFormat:v11, v4];

  v13 = MEMORY[0x1E696ABC0];
  v14 = *MEMORY[0x1E696A588];
  v20[0] = v12;
  v15 = *MEMORY[0x1E696A578];
  v19[0] = v14;
  v19[1] = v15;
  v16 = WFLocalizedString(@"An unknown error occurred while performing the operation.");
  v20[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v6 = [v13 errorWithDomain:@"com.apple.shortcuts.poster-service" code:1 userInfo:v17];

LABEL_10:

  return v6;
}

void sub_1CA79E9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getALCityManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AppSupportLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AppSupportLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8376F10;
    v8 = 0;
    AppSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppSupportLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppSupportLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFTimeZonePickerParameter.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ALCityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getALCityManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFTimeZonePickerParameter.m" lineNumber:19 description:{@"Unable to find class %s", "ALCityManager"}];

LABEL_10:
    __break(1u);
  }

  getALCityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppSupportLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppSupportLibraryCore_frameworkLibrary = result;
  return result;
}

id WFINObjectFromSerializedRepresentation(void *a1, objc_class *a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = WFEnforceClass_1501(v3, v4);

  v6 = [v5 objectForKeyedSubscript:@"Identifier"];
  v7 = objc_opt_class();
  v8 = WFEnforceClass_1501(v6, v7);

  v9 = [v5 objectForKeyedSubscript:@"DisplayString"];
  v10 = objc_opt_class();
  v11 = WFEnforceClass_1501(v9, v10);

  if (v11)
  {
    v12 = [a2 alloc];
    v13 = [v12 wf_initWithIdentifier:v8 displayString:v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id WFSerializedRepresentationFromWFINObject(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 spokenPhrase];
  [v2 setObject:v3 forKey:@"DisplayString"];

  v4 = [v1 vocabularyIdentifier];

  [v2 setValue:v4 forKey:@"Identifier"];

  return v2;
}

id WFRunnerFailureErrorMessage(void *a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = WFLocalizedString(@"Couldn’t Run “%@”");
    v4 = [v2 localizedStringWithFormat:v3, v1];
  }

  else
  {
    v4 = WFLocalizedString(@"Couldn’t run shortcut");
  }

  v5 = WFLocalizedString(@"The action couldn’t run because the runner quit unexpectedly.");
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E6997158];
  v8 = *MEMORY[0x1E696A578];
  v12[0] = *MEMORY[0x1E696A588];
  v12[1] = v8;
  v13[0] = v4;
  v13[1] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 errorWithDomain:v7 code:1 userInfo:v9];

  return v10;
}

void sub_1CA7AC3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24935(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getWFActionRegistryLogObject()
{
  if (getWFActionRegistryLogObject_onceToken != -1)
  {
    dispatch_once(&getWFActionRegistryLogObject_onceToken, &__block_literal_global_25468);
  }

  v1 = getWFActionRegistryLogObject_log;

  return v1;
}

void __getWFActionRegistryLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "ActionRegistry");
  v1 = getWFActionRegistryLogObject_log;
  getWFActionRegistryLogObject_log = v0;
}

uint64_t __Block_byref_object_copy__25502(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA7B4364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose((v50 - 160), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFErrorIsExpiredCertificateError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    IsExpiredCertificateError = 0;
    goto LABEL_8;
  }

  v3 = [v1 domain];
  if (!objc_msgSend_isEqualToString_(v3))
  {

    goto LABEL_7;
  }

  v4 = [v2 code];

  if (v4 != -67818)
  {
LABEL_7:
    v6 = [v2 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    IsExpiredCertificateError = WFErrorIsExpiredCertificateError(v7);

    goto LABEL_8;
  }

  IsExpiredCertificateError = 1;
LABEL_8:

  return IsExpiredCertificateError;
}

void sub_1CA7B6B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getREMDisplayNameUtilsClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMDisplayNameUtils");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMDisplayNameUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMDisplayNameUtilsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFRemindersListPickerParameter.m" lineNumber:26 description:{@"Unable to find class %s", "REMDisplayNameUtils"}];

    __break(1u);
  }
}

void ReminderKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_25830)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ReminderKitLibraryCore_block_invoke_25831;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E83777B0;
    v5 = 0;
    ReminderKitLibraryCore_frameworkLibrary_25830 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_25830)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFRemindersListPickerParameter.m" lineNumber:24 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ReminderKitLibraryCore_block_invoke_25831(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_25830 = result;
  return result;
}

id getREMStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getREMStoreClass_softClass;
  v7 = getREMStoreClass_softClass;
  if (!getREMStoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getREMStoreClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getREMStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA7B7448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getREMStoreClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("REMStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREMStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFRemindersListPickerParameter.m" lineNumber:25 description:{@"Unable to find class %s", "REMStore"}];

    __break(1u);
  }
}

void sub_1CA7B9E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26657(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void WFMigratePaymentActionCurrencyAmount(void *a1)
{
  v10 = a1;
  v1 = [v10 objectForKeyedSubscript:@"WFVenmoActionAmount"];
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v1 objectForKey:@"WFSerializationType"], v2 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v2), v2, (isEqualToString & 1) == 0))
    {
      v4 = [(WFVariableSubstitutableParameterState *)[WFNumberStringSubstitutableState alloc] initWithSerializedRepresentation:v1 variableProvider:0 parameter:0];
      v5 = [WFQuantityParameterState alloc];
      v6 = [MEMORY[0x1E695DF58] currentLocale];
      v7 = [v6 currencyCode];
      v8 = [(WFQuantityParameterState *)v5 initWithMagnitudeState:v4 unitString:v7];

      v9 = [(WFQuantityParameterState *)v8 serializedRepresentation];
      [v10 setObject:v9 forKeyedSubscript:@"WFVenmoActionAmount"];
    }
  }
}

id WFLinkActionSerializedParametersForWFAction(void *a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v49 = a1;
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSString *, id<WFPropertyListObject>> * _Nonnull WFLinkActionSerializedParametersForWFAction(WFAction * _Nullable __strong, LNAction * _Nonnull __strong, LNActionMetadata * _Nonnull __strong)"}];
    [v43 handleFailureInFunction:v44 file:@"WFLinkAction.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"lnAction"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v45 = [MEMORY[0x1E696AAA8] currentHandler];
  v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSString *, id<WFPropertyListObject>> * _Nonnull WFLinkActionSerializedParametersForWFAction(WFAction * _Nullable __strong, LNAction * _Nonnull __strong, LNActionMetadata * _Nonnull __strong)"}];
  [v45 handleFailureInFunction:v46 file:@"WFLinkAction.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];

LABEL_3:
  v47 = objc_opt_new();
  v8 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v9 = [v5 parameters];
  v10 = [v9 countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v63;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v62 + 1) + 8 * i);
        v15 = [v14 value];
        v16 = [v14 identifier];
        [v8 setObject:v15 forKeyedSubscript:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v11);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [v7 parameters];
  v53 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v53)
  {
    v51 = v5;
    v52 = *v59;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v59 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v58 + 1) + 8 * j);
        v19 = [v18 valueType];
        v20 = [v5 identifier];
        v21 = [v19 wf_parameterDefinitionWithParameterMetadata:v18 actionIdentifier:v20];

        if (v21)
        {
          v22 = [v18 name];
          v23 = [v49 parameterDefinitions];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v54 objects:v66 count:16];
          v26 = v22;
          if (v25)
          {
            v27 = v25;
            v50 = v21;
            v28 = *v55;
            while (2)
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v55 != v28)
                {
                  objc_enumerationMutation(v24);
                }

                v30 = *(*(&v54 + 1) + 8 * k);
                v31 = [v30 objectForKey:@"Key"];
                if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  if (objc_msgSend_isEqualToString_(v31))
                  {
                    v32 = [v30 objectForKey:@"KeyForSerialization"];
                    v33 = v32;
                    if (v32)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v34 = v33;
                      }

                      else
                      {
                        v34 = 0;
                      }
                    }

                    else
                    {
                      v34 = 0;
                    }

                    v5 = v51;
                    v35 = v34;

                    if (v35)
                    {
                      v36 = v35;
                    }

                    else
                    {
                      v36 = v31;
                    }

                    v26 = v36;

                    goto LABEL_38;
                  }
                }

                else
                {

                  v31 = 0;
                }
              }

              v27 = [v24 countByEnumeratingWithState:&v54 objects:v66 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }

            v26 = v22;
            v5 = v51;
LABEL_38:
            v21 = v50;
          }

          v37 = [v8 objectForKeyedSubscript:v22];
          if (v37)
          {
            v38 = v21;
            v39 = [v21 parameterStateFromLinkValue:v37];
            v40 = [v39 serializedRepresentation];
            if (v40)
            {
              [v47 setObject:v40 forKeyedSubscript:v26];
            }

            v21 = v38;
            v5 = v51;
          }
        }
      }

      v53 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v53);
  }

  v41 = [v47 copy];

  return v41;
}

void RunningBoardServicesLibrary_27608()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary_27611)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __RunningBoardServicesLibraryCore_block_invoke_27612;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8377D28;
    v5 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary_27611 = _sl_dlopen();
  }

  if (!RunningBoardServicesLibraryCore_frameworkLibrary_27611)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFWorkflowController.m" lineNumber:41 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke_27612(uint64_t a1)
{
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary_27611 = result;
  return result;
}

void sub_1CA7C6034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27632(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFSupportedCharacteristicsForHMService(void *a1)
{
  v1 = [a1 characteristicsSupportedForShortcutConditions];
  v2 = [v1 allObjects];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_28398];

  return v3;
}

uint64_t __WFSupportedCharacteristicsForHMService_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDescription];
  v6 = [v4 localizedDescription];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

id WFUnitForHMCharacteristic(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 units];

  v3 = getHMCharacteristicMetadataUnitsCelsius();
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  if (isEqualToString)
  {
    v5 = [MEMORY[0x1E696B080] celsius];
LABEL_15:
    v18 = v5;
    goto LABEL_16;
  }

  v6 = getHMCharacteristicMetadataUnitsFahrenheit();
  v7 = objc_msgSend_isEqualToString_(v2);

  if (v7)
  {
    v5 = [MEMORY[0x1E696B080] fahrenheit];
    goto LABEL_15;
  }

  v8 = getHMCharacteristicMetadataUnitsArcDegree();
  v9 = objc_msgSend_isEqualToString_(v2);

  if (v9)
  {
    v5 = [MEMORY[0x1E696AFE0] degrees];
    goto LABEL_15;
  }

  v10 = getHMCharacteristicMetadataUnitsSeconds();
  v11 = objc_msgSend_isEqualToString_(v2);

  if (v11)
  {
    v5 = [MEMORY[0x1E696B008] seconds];
    goto LABEL_15;
  }

  v12 = getHMCharacteristicMetadataUnitsLux();
  v13 = objc_msgSend_isEqualToString_(v2);

  if (v13)
  {
    v5 = [MEMORY[0x1E696B048] lux];
    goto LABEL_15;
  }

  v14 = getHMCharacteristicMetadataUnitsPartsPerMillion();
  v15 = objc_msgSend_isEqualToString_(v2);

  if (v15)
  {
    v5 = [MEMORY[0x1E696B000] partsPerMillion];
    goto LABEL_15;
  }

  v16 = getHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter();
  v17 = objc_msgSend_isEqualToString_(v2);

  if (v17)
  {
    v5 = [MEMORY[0x1E696AFF0] wf_microgramsPerCubicMeter];
    goto LABEL_15;
  }

  v18 = 0;
LABEL_16:

  return v18;
}

id initHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsMicrogramsPerCubicMeter");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter", "WFHomeUtilities.m", 56, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter, *v0);
  getHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter = HMCharacteristicMetadataUnitsMicrogramsPerCubicMeterFunction;
  v1 = constantHMCharacteristicMetadataUnitsMicrogramsPerCubicMeter;

  return v1;
}

void *__HomeKitLibrary_block_invoke_28409()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_28404 = result;
  return result;
}

id initHMCharacteristicMetadataUnitsPartsPerMillion()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsPartsPerMillion");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsPartsPerMillion", "WFHomeUtilities.m", 55, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsPartsPerMillion, *v0);
  getHMCharacteristicMetadataUnitsPartsPerMillion = HMCharacteristicMetadataUnitsPartsPerMillionFunction;
  v1 = constantHMCharacteristicMetadataUnitsPartsPerMillion;

  return v1;
}

id initHMCharacteristicMetadataUnitsLux()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsLux");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsLux", "WFHomeUtilities.m", 54, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsLux, *v0);
  getHMCharacteristicMetadataUnitsLux = HMCharacteristicMetadataUnitsLuxFunction;
  v1 = constantHMCharacteristicMetadataUnitsLux;

  return v1;
}

id initHMCharacteristicMetadataUnitsSeconds()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsSeconds");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsSeconds", "WFHomeUtilities.m", 53, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsSeconds, *v0);
  getHMCharacteristicMetadataUnitsSeconds = HMCharacteristicMetadataUnitsSecondsFunction;
  v1 = constantHMCharacteristicMetadataUnitsSeconds;

  return v1;
}

id initHMCharacteristicMetadataUnitsArcDegree()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsArcDegree");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsArcDegree", "WFHomeUtilities.m", 52, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsArcDegree, *v0);
  getHMCharacteristicMetadataUnitsArcDegree = HMCharacteristicMetadataUnitsArcDegreeFunction;
  v1 = constantHMCharacteristicMetadataUnitsArcDegree;

  return v1;
}

id initHMCharacteristicMetadataUnitsFahrenheit()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsFahrenheit");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsFahrenheit", "WFHomeUtilities.m", 51, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsFahrenheit, *v0);
  getHMCharacteristicMetadataUnitsFahrenheit = HMCharacteristicMetadataUnitsFahrenheitFunction;
  v1 = constantHMCharacteristicMetadataUnitsFahrenheit;

  return v1;
}

id initHMCharacteristicMetadataUnitsCelsius()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataUnitsCelsius");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataUnitsCelsius", "WFHomeUtilities.m", 50, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataUnitsCelsius, *v0);
  getHMCharacteristicMetadataUnitsCelsius = HMCharacteristicMetadataUnitsCelsiusFunction;
  v1 = constantHMCharacteristicMetadataUnitsCelsius;

  return v1;
}

uint64_t WFHMCharacteristicIsBooleanFormat(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 format];
  v3 = getHMCharacteristicMetadataFormatBool_28417();
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

id initHMCharacteristicMetadataFormatBool_28419()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataFormatBool");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatBool", "WFHomeUtilities.m", 38, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatBool_28422, *v0);
  getHMCharacteristicMetadataFormatBool_28417 = HMCharacteristicMetadataFormatBoolFunction_28424;
  v1 = constantHMCharacteristicMetadataFormatBool_28422;

  return v1;
}

id WFBooleanLocalizedDescriptionForHMCharacteristic(void *a1, int a2)
{
  v3 = [a1 characteristicType];
  v4 = getHMCharacteristicTypePowerState();
  isEqualToString = objc_msgSend_isEqualToString_(v3);

  if (isEqualToString)
  {
    v6 = @"Is Off";
    v7 = @"Is On";
LABEL_21:
    if (a2)
    {
      v26 = v7;
    }

    else
    {
      v26 = v6;
    }

    v27 = WFLocalizedString(v26);
    goto LABEL_25;
  }

  v8 = getHMCharacteristicTypeObstructionDetected();
  v9 = objc_msgSend_isEqualToString_(v3);

  if (v9)
  {
    v6 = @"Is Not Obstructed";
    v7 = @"Is Obstructed";
    goto LABEL_21;
  }

  v10 = getHMCharacteristicTypeOutletInUse();
  v11 = objc_msgSend_isEqualToString_(v3);

  if (v11)
  {
    v6 = @"Outlet Is Not In Use";
    v7 = @"Outlet Is In Use";
    goto LABEL_21;
  }

  v12 = getHMCharacteristicTypeAudioFeedback();
  v13 = objc_msgSend_isEqualToString_(v3);

  if (v13)
  {
    v6 = @"Audio Feedback Is Disabled";
    v7 = @"Audio Feedback Is Enabled";
    goto LABEL_21;
  }

  v14 = getHMCharacteristicTypeAdminOnlyAccess();
  v15 = objc_msgSend_isEqualToString_(v3);

  if (v15)
  {
    v6 = @"Admin Access Is Not Required";
    v7 = @"Admin Access Is Required";
    goto LABEL_21;
  }

  v16 = getHMCharacteristicTypeMotionDetected();
  v17 = objc_msgSend_isEqualToString_(v3);

  if (v17)
  {
    v6 = @"Motion Is Not Detected";
    v7 = @"Motion Is Detected";
    goto LABEL_21;
  }

  v18 = getHMCharacteristicTypeStatusActive();
  v19 = objc_msgSend_isEqualToString_(v3);

  if (v19)
  {
    v6 = @"Is Not Active";
    v7 = @"Is Active";
    goto LABEL_21;
  }

  v20 = getHMCharacteristicTypeMute();
  v21 = objc_msgSend_isEqualToString_(v3);

  if (v21)
  {
    v6 = @"Is Not Muted";
    v7 = @"Is Muted";
    goto LABEL_21;
  }

  v22 = getHMCharacteristicTypeNightVision();
  v23 = objc_msgSend_isEqualToString_(v3);

  if (v23)
  {
    v6 = @"Night Vision Is Not Enabled";
    v7 = @"Night Vision Is Enabled";
    goto LABEL_21;
  }

  v24 = getHMCharacteristicTypeImageMirroring();
  v25 = objc_msgSend_isEqualToString_(v3);

  if (v25)
  {
    v6 = @"Image Is Not Mirrored";
    v7 = @"Image Is Mirrored";
    goto LABEL_21;
  }

  v27 = 0;
LABEL_25:

  return v27;
}

id initHMCharacteristicTypeImageMirroring()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeImageMirroring");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeImageMirroring", "WFHomeUtilities.m", 48, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeImageMirroring, *v0);
  getHMCharacteristicTypeImageMirroring = HMCharacteristicTypeImageMirroringFunction;
  v1 = constantHMCharacteristicTypeImageMirroring;

  return v1;
}

id initHMCharacteristicTypeNightVision()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeNightVision");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeNightVision", "WFHomeUtilities.m", 47, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeNightVision, *v0);
  getHMCharacteristicTypeNightVision = HMCharacteristicTypeNightVisionFunction;
  v1 = constantHMCharacteristicTypeNightVision;

  return v1;
}

id initHMCharacteristicTypeMute()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeMute");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeMute", "WFHomeUtilities.m", 46, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeMute, *v0);
  getHMCharacteristicTypeMute = HMCharacteristicTypeMuteFunction;
  v1 = constantHMCharacteristicTypeMute;

  return v1;
}

id initHMCharacteristicTypeStatusActive()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeStatusActive");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeStatusActive", "WFHomeUtilities.m", 45, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeStatusActive, *v0);
  getHMCharacteristicTypeStatusActive = HMCharacteristicTypeStatusActiveFunction;
  v1 = constantHMCharacteristicTypeStatusActive;

  return v1;
}

id initHMCharacteristicTypeMotionDetected()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeMotionDetected");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeMotionDetected", "WFHomeUtilities.m", 44, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeMotionDetected, *v0);
  getHMCharacteristicTypeMotionDetected = HMCharacteristicTypeMotionDetectedFunction;
  v1 = constantHMCharacteristicTypeMotionDetected;

  return v1;
}

id initHMCharacteristicTypeAdminOnlyAccess()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeAdminOnlyAccess");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeAdminOnlyAccess", "WFHomeUtilities.m", 43, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeAdminOnlyAccess, *v0);
  getHMCharacteristicTypeAdminOnlyAccess = HMCharacteristicTypeAdminOnlyAccessFunction;
  v1 = constantHMCharacteristicTypeAdminOnlyAccess;

  return v1;
}

id initHMCharacteristicTypeAudioFeedback()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeAudioFeedback");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeAudioFeedback", "WFHomeUtilities.m", 42, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeAudioFeedback, *v0);
  getHMCharacteristicTypeAudioFeedback = HMCharacteristicTypeAudioFeedbackFunction;
  v1 = constantHMCharacteristicTypeAudioFeedback;

  return v1;
}

id initHMCharacteristicTypeOutletInUse()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeOutletInUse");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeOutletInUse", "WFHomeUtilities.m", 41, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeOutletInUse, *v0);
  getHMCharacteristicTypeOutletInUse = HMCharacteristicTypeOutletInUseFunction;
  v1 = constantHMCharacteristicTypeOutletInUse;

  return v1;
}

id initHMCharacteristicTypeObstructionDetected()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypeObstructionDetected");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypeObstructionDetected", "WFHomeUtilities.m", 40, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypeObstructionDetected, *v0);
  getHMCharacteristicTypeObstructionDetected = HMCharacteristicTypeObstructionDetectedFunction;
  v1 = constantHMCharacteristicTypeObstructionDetected;

  return v1;
}

id initHMCharacteristicTypePowerState()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicTypePowerState");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicTypePowerState", "WFHomeUtilities.m", 39, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicTypePowerState, *v0);
  getHMCharacteristicTypePowerState = HMCharacteristicTypePowerStateFunction;
  v1 = constantHMCharacteristicTypePowerState;

  return v1;
}

BOOL WFHMCharacteristicIsEnumeration(void *a1)
{
  v2 = [a1 metadata];
  v3 = [v2 validValues];
  v4 = [v3 count];

  if (!v4)
  {
    v6 = [v2 format];
    v7 = getHMCharacteristicMetadataFormatUInt8_28527();
    isEqualToString = objc_msgSend_isEqualToString_(v6);
    if ((isEqualToString & 1) != 0 || (getHMCharacteristicMetadataFormatInt_28528(), v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend_isEqualToString_(v6)))
    {
      v9 = [v2 minimumValue];
      if (v9)
      {
        v10 = v9;
        v11 = [v2 maximumValue];
        if (v11)
        {
          v12 = v11;
          v13 = [v2 stepValue];
          if (v13)
          {
            v14 = v13;
            v15 = [v2 units];
            v5 = v15 == 0;

            if (isEqualToString)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }
        }
      }

      v5 = 0;
      if (isEqualToString)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  v5 = 1;
LABEL_16:

  return v5;
}

id initHMCharacteristicMetadataFormatInt_28530()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataFormatInt");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatInt", "WFHomeUtilities.m", 58, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatInt_28533, *v0);
  getHMCharacteristicMetadataFormatInt_28528 = HMCharacteristicMetadataFormatIntFunction_28535;
  v1 = constantHMCharacteristicMetadataFormatInt_28533;

  return v1;
}

id initHMCharacteristicMetadataFormatUInt8_28537()
{
  if (HomeKitLibrary_sOnce_28403 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_28403, &__block_literal_global_266);
  }

  v0 = dlsym(HomeKitLibrary_sLib_28404, "HMCharacteristicMetadataFormatUInt8");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt8", "WFHomeUtilities.m", 59, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt8_28540, *v0);
  getHMCharacteristicMetadataFormatUInt8_28527 = HMCharacteristicMetadataFormatUInt8Function_28542;
  v1 = constantHMCharacteristicMetadataFormatUInt8_28540;

  return v1;
}

id WFFormattedCharacteristicValueForCharacteristic(void *a1)
{
  v1 = a1;
  if (WFHMCharacteristicIsEnumeration(v1) && ([v1 value], v2 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v2, (isKindOfClass & 1) != 0))
  {
    if (HomeLibrary_sOnce_28545 != -1)
    {
      dispatch_once(&HomeLibrary_sOnce_28545, &__block_literal_global_288);
    }

    v4 = [MEMORY[0x1E696AC40] hf_valueFormatterForCharacteristic:v1 options:0];
    v5 = [v1 value];
    v6 = [v4 stringForObjectValue:v5];
  }

  else
  {
    v6 = [v1 value];
  }

  return v6;
}

void *__HomeLibrary_block_invoke_28547()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_28549 = result;
  return result;
}

id WFWFWorkflowControllerStateDefaultSerializedURLFromContext(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFF8] wf_savedShortcutStatesURL];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v4 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:0 attributes:0 error:&v9];
  v5 = v9;

  if (v4 & 1) != 0 || ([v5 vc_isFileAlreadyExists])
  {
    v6 = [v1 identifier];
    v7 = [v2 URLByAppendingPathComponent:v6];
  }

  else
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v11 = "WFWFWorkflowControllerStateDefaultSerializedURLFromContext";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Unable to create folder for workflow controller states: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

Class initUIFont()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  result = objc_getClass("UIFont");
  classUIFont = result;
  getUIFontClass = UIFontFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_28815()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_28817 = result;
  return result;
}

Class initUIFontDescriptor()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  result = objc_getClass("UIFontDescriptor");
  classUIFontDescriptor = result;
  getUIFontDescriptorClass = UIFontDescriptorFunction;
  return result;
}

id initUIFontDescriptorVisibleNameAttribute()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  v0 = dlsym(UIKitLibrary_sLib_28817, "UIFontDescriptorVisibleNameAttribute");
  if (!v0)
  {
    __assert_rtn("initUIFontDescriptorVisibleNameAttribute", "WFFontDescriptor.m", 26, "constant");
  }

  objc_storeStrong(&constantUIFontDescriptorVisibleNameAttribute, *v0);
  getUIFontDescriptorVisibleNameAttribute = UIFontDescriptorVisibleNameAttributeFunction;
  v1 = constantUIFontDescriptorVisibleNameAttribute;

  return v1;
}

id initUIFontDescriptorFaceAttribute()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  v0 = dlsym(UIKitLibrary_sLib_28817, "UIFontDescriptorFaceAttribute");
  if (!v0)
  {
    __assert_rtn("initUIFontDescriptorFaceAttribute", "WFFontDescriptor.m", 24, "constant");
  }

  objc_storeStrong(&constantUIFontDescriptorFaceAttribute, *v0);
  getUIFontDescriptorFaceAttribute = UIFontDescriptorFaceAttributeFunction;
  v1 = constantUIFontDescriptorFaceAttribute;

  return v1;
}

id initUIFontDescriptorNameAttribute()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  v0 = dlsym(UIKitLibrary_sLib_28817, "UIFontDescriptorNameAttribute");
  if (!v0)
  {
    __assert_rtn("initUIFontDescriptorNameAttribute", "WFFontDescriptor.m", 23, "constant");
  }

  objc_storeStrong(&constantUIFontDescriptorNameAttribute, *v0);
  getUIFontDescriptorNameAttribute = UIFontDescriptorNameAttributeFunction;
  v1 = constantUIFontDescriptorNameAttribute;

  return v1;
}

id initUIFontDescriptorFamilyAttribute()
{
  if (UIKitLibrary_sOnce_28810 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_28810, &__block_literal_global_28811);
  }

  v0 = dlsym(UIKitLibrary_sLib_28817, "UIFontDescriptorFamilyAttribute");
  if (!v0)
  {
    __assert_rtn("initUIFontDescriptorFamilyAttribute", "WFFontDescriptor.m", 25, "constant");
  }

  objc_storeStrong(&constantUIFontDescriptorFamilyAttribute, *v0);
  getUIFontDescriptorFamilyAttribute = UIFontDescriptorFamilyAttributeFunction;
  v1 = constantUIFontDescriptorFamilyAttribute;

  return v1;
}

id WFEnforceClass_29244(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s The current content attribution set has public disclosure level, no approval required.", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void sub_1CA7D8DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29403(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFCreateDocumentInteractionController(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [getUIDocumentInteractionControllerSubclass() interactionControllerWithURL:v4];

  UIDocumentInteractionControllerSubclass = getUIDocumentInteractionControllerSubclass();
  InstanceVariable = class_getInstanceVariable(UIDocumentInteractionControllerSubclass, "_wf_openCompletionHandler");
  v8 = [v3 copy];

  object_setIvarWithStrongDefault(v5, InstanceVariable, v8);

  return v5;
}

id getUIDocumentInteractionControllerSubclass()
{
  if (getUIDocumentInteractionControllerSubclass_onceToken != -1)
  {
    dispatch_once(&getUIDocumentInteractionControllerSubclass_onceToken, &__block_literal_global_29406);
  }

  v1 = getUIDocumentInteractionControllerSubclass_dynamicSubclass;

  return v1;
}

void __getUIDocumentInteractionControllerSubclass_block_invoke()
{
  UIDocumentInteractionControllerClass = getUIDocumentInteractionControllerClass();
  getUIDocumentInteractionControllerSubclass_dynamicSubclass = objc_allocateClassPair(UIDocumentInteractionControllerClass, "_WFUIDocumentInteractionController", 0);
  class_addIvar(getUIDocumentInteractionControllerSubclass_dynamicSubclass, "_wf_openCompletionHandler", 8uLL, 3u, "@");
  class_addMethod(getUIDocumentInteractionControllerSubclass_dynamicSubclass, sel_openResourceOperationDidComplete_, WFOpenOperationDidComplete, "v@:@");
  class_addMethod(getUIDocumentInteractionControllerSubclass_dynamicSubclass, sel_openResourceOperation_didFailWithError_, WFOpenOperationDidFailWithError, "v@:@@");
  v1 = getUIDocumentInteractionControllerSubclass_dynamicSubclass;

  objc_registerClassPair(v1);
}

void WFOpenOperationDidFailWithError(void *a1)
{
  v1 = a1;
  UIDocumentInteractionControllerSubclass = getUIDocumentInteractionControllerSubclass();
  InstanceVariable = class_getInstanceVariable(UIDocumentInteractionControllerSubclass, "_wf_openCompletionHandler");
  v5 = object_getIvar(v1, InstanceVariable);
  object_setIvar(v1, InstanceVariable, 0);

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
    v4 = v5;
  }
}

void WFOpenOperationDidComplete(void *a1)
{
  v1 = a1;
  UIDocumentInteractionControllerSubclass = getUIDocumentInteractionControllerSubclass();
  InstanceVariable = class_getInstanceVariable(UIDocumentInteractionControllerSubclass, "_wf_openCompletionHandler");
  v5 = object_getIvar(v1, InstanceVariable);
  object_setIvar(v1, InstanceVariable, 0);

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
    v4 = v5;
  }
}

Class initUIDocumentInteractionController()
{
  if (UIKitLibrary_sOnce_29414 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_29414, &__block_literal_global_44);
  }

  result = objc_getClass("UIDocumentInteractionController");
  classUIDocumentInteractionController = result;
  getUIDocumentInteractionControllerClass = UIDocumentInteractionControllerFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_29416()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_29417 = result;
  return result;
}

void sub_1CA7D93F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA7DA8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaItemCollectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaItemCollectionClass_softClass;
  v7 = getMPMediaItemCollectionClass_softClass;
  if (!getMPMediaItemCollectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaItemCollectionClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getMPMediaItemCollectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA7DA9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaItemClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemDescriptor+Library.m" lineNumber:16 description:{@"Unable to find class %s", "MPMediaItem"}];

    __break(1u);
  }
}

void *MediaPlayerLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8378168;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFMediaItemDescriptor+Library.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

void __getMPMediaItemCollectionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItemCollection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaItemCollectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemDescriptor+Library.m" lineNumber:17 description:{@"Unable to find class %s", "MPMediaItemCollection"}];

    __break(1u);
  }
}

void sub_1CA7DB4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaPropertyPredicateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaPropertyPredicateClass_softClass;
  v7 = getMPMediaPropertyPredicateClass_softClass;
  if (!getMPMediaPropertyPredicateClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaPropertyPredicateClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getMPMediaPropertyPredicateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA7DB5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaPlaylistPropertyNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaPlaylistPropertyName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t WFGroupingPropertyForMediaType(void *a1)
{
  v8[7] = *MEMORY[0x1E69E9840];
  v7[0] = @"Album";
  v7[1] = @"Playlist";
  v8[0] = &unk_1F4A9A4E0;
  v8[1] = &unk_1F4A9A4F8;
  v7[2] = @"Song";
  v7[3] = @"Artist";
  v8[2] = &unk_1F4A9A510;
  v8[3] = &unk_1F4A9A528;
  v7[4] = @"Genre";
  v7[5] = @"Compilation";
  v8[4] = &unk_1F4A9A540;
  v8[5] = &unk_1F4A9A4E0;
  v7[6] = @"Composer";
  v8[6] = &unk_1F4A9A558;
  v1 = MEMORY[0x1E695DF20];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v8 forKeys:v7 count:7];
  v4 = [v3 objectForKeyedSubscript:v2];

  v5 = [v4 integerValue];
  return v5;
}

void getMPMediaItemPropertyTitle()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaItemPropertyTitleSymbolLoc_ptr;
  v9 = getMPMediaItemPropertyTitleSymbolLoc_ptr;
  if (!getMPMediaItemPropertyTitleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v7[3] = dlsym(v1, "MPMediaItemPropertyTitle");
    getMPMediaItemPropertyTitleSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyTitle(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMediaItemDescriptor+Library.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA7DB890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaItemPropertyAlbumTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyAlbumTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyAlbumArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyAlbumArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyComposerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyComposerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMPMediaQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaQueryClass_softClass;
  v7 = getMPMediaQueryClass_softClass;
  if (!getMPMediaQueryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaQueryClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getMPMediaQueryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA7DBB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaQueryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemDescriptor+Library.m" lineNumber:18 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void *__getMPMediaItemPropertyTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getMPMediaPropertyPredicateClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemDescriptor+Library.m" lineNumber:15 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void sub_1CA7DC368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaPlaylistPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyAlbumPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyArtistPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyArtistPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyArtistPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getMPMediaItemPropertyGenrePersistentID()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaItemPropertyGenrePersistentIDSymbolLoc_ptr;
  v9 = getMPMediaItemPropertyGenrePersistentIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyGenrePersistentIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v7[3] = dlsym(v1, "MPMediaItemPropertyGenrePersistentID");
    getMPMediaItemPropertyGenrePersistentIDSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyGenrePersistentID(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMediaItemDescriptor+Library.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA7DC618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getMPMediaItemPropertyComposerPersistentID()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr;
  v9 = getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v7[3] = dlsym(v1, "MPMediaItemPropertyComposerPersistentID");
    getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyComposerPersistentID(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMediaItemDescriptor+Library.m" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA7DC77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaItemPropertyComposerPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyComposerPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyComposerPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyGenrePersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPMediaItemPropertyGenrePersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyGenrePersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFEnforceClass_29964(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Showing internal apps in WFAppPickerParameter because the Show Internal Apps in Open App default is on", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void sub_1CA7DDC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA7DE0EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id WFEnforceClass_30212(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "identifier=%{signpost.description:attribute}@", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id WFSerializedParametersForDonatedIntent(void *a1, int a2, char a3, void *a4, void *a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v44 = a4;
  v41 = a5;
  v8 = [v7 _codableDescription];
  if (([v8 isConfigurable] & 1) == 0 && (objc_msgSend(v8, "isEligibleForWidgets") & 1) == 0 && !a2)
  {
    v29 = 0;
    goto LABEL_39;
  }

  v39 = v8;
  v40 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = [v8 displayOrderedAttributes];
  v10 = [v9 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    v42 = v7;
LABEL_4:
    v13 = 0;
    while (1)
    {
      if (*v47 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v46 + 1) + 8 * v13);
      v15 = [v14 propertyName];
      isEqualToString = objc_msgSend_isEqualToString_(v15);

      if (isEqualToString)
      {
        goto LABEL_26;
      }

      v17 = [v14 propertyName];
      v18 = [v7 valueForKey:v17];

      if (v18)
      {
        if (([v14 isConfigurable] & 1) == 0 && (a2 & 1) == 0)
        {
          if ((a3 & 1) == 0)
          {
            v30 = getWFGeneralLogObject();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v7 launchId];
              v33 = [v7 _className];
              v34 = [v14 propertyName];
              *buf = 136315906;
              v51 = "WFSerializedParametersForDonatedIntent";
              v52 = 2114;
              v53 = v32;
              v54 = 2114;
              v55 = v33;
              v56 = 2114;
              v57 = v34;
              _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_DEFAULT, "%s Skipping migration for donated intent: %{public}@ - %{public}@, because the intent has a value for %{public}@, but that parameter isn't configurable, so data loss would occur.", buf, 0x2Au);

              v7 = v42;
            }

            v29 = 0;
            v8 = v39;
            v28 = v40;
            goto LABEL_38;
          }

          goto LABEL_25;
        }

        v19 = [v14 propertyName];
        v20 = [v44 objectForKey:v19];

        if (v20)
        {
          break;
        }
      }

LABEL_25:

LABEL_26:
      if (v11 == ++v13)
      {
        v27 = [v9 countByEnumeratingWithState:&v46 objects:v60 count:16];
        v11 = v27;
        if (v27)
        {
          goto LABEL_4;
        }

        goto LABEL_31;
      }
    }

    if ([v14 supportsDynamicEnumeration])
    {
      v21 = [[WFCodableAttributeBackedSubstitutableState alloc] initWithValue:v18 codableAttribute:v14 stringLocalizer:v41];
      v22 = [(WFCodableAttributeBackedSubstitutableState *)v21 serializedRepresentation];
    }

    else
    {
      v23 = [v20 definition];
      v21 = [v14 wf_parameterStateForIntentValue:v18 parameterDefinition:v23];

      if (!v21)
      {
LABEL_23:

        v7 = v42;
        goto LABEL_24;
      }

      [v20 stateClass];
      v24 = objc_opt_class();
      if (([v24 isSubclassOfClass:objc_opt_class()] & 1) == 0)
      {
        v25 = objc_opt_class();
        [v20 stateClass];
        if (([v25 isSubclassOfClass:objc_opt_class()] & 1) == 0)
        {
          v26 = getWFGeneralLogObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            v38 = NSStringFromClass([v20 stateClass]);
            v36 = [v20 key];
            v37 = [v14 propertyName];
            *buf = 136316162;
            v51 = "WFSerializedParametersForDonatedIntent";
            v52 = 2114;
            v53 = v21;
            v54 = 2114;
            v55 = v38;
            v56 = 2114;
            v57 = v36;
            v58 = 2114;
            v59 = v37;
            _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_FAULT, "%s Incorrect parameter state type found when converting donated intent to custom intent: %{public}@, expected %{public}@. Parameter: %{public}@, Intent slot: %{public}@", buf, 0x34u);
          }

LABEL_22:

          goto LABEL_23;
        }
      }

      v22 = [(WFCodableAttributeBackedSubstitutableState *)v21 serializedRepresentation];
      v7 = v42;
    }

    if (!v22)
    {
LABEL_24:

      goto LABEL_25;
    }

    v26 = [v20 key];
    [v40 setObject:v22 forKey:v26];
    v21 = v22;
    goto LABEL_22;
  }

LABEL_31:

  v28 = v40;
  v29 = v40;
  v8 = v39;
LABEL_38:

LABEL_39:

  return v29;
}

uint64_t __Block_byref_object_copy__30291(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void WFMigrateDropboxAction(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  [v6 setObject:a2 forKey:@"WFWorkflowActionIdentifier"];
  v7 = [v6 objectForKey:@"WFWorkflowActionParameters"];

  [v7 setObject:@"Dropbox" forKey:@"WFFileStorageService"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __WFMigrateDropboxAction_block_invoke;
  v9[3] = &unk_1E837B748;
  v10 = v7;
  v8 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
}

void __WFMigrateDropboxAction_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 wf_popObjectForKey:a2];
  [v4 setValue:v6 forKey:v5];
}

Class __getWTWritingToolsControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!WritingToolsUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __WritingToolsUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8378348;
    v8 = 0;
    WritingToolsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WritingToolsUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WritingToolsUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFWritingToolsAvailabilityResource.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("WTWritingToolsController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWTWritingToolsControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFWritingToolsAvailabilityResource.m" lineNumber:24 description:{@"Unable to find class %s", "WTWritingToolsController"}];

LABEL_10:
    __break(1u);
  }

  getWTWritingToolsControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WritingToolsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  WritingToolsUILibraryCore_frameworkLibrary = result;
  return result;
}

id WFGallerySharingURLForIdentifier(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.icloud.com/shortcuts"];
  v3 = v2;
  if (v1)
  {
    v4 = WFGallerySharingIdentifierForRecordName(v1);
    v5 = [v3 URLByAppendingPathComponent:v4];
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

id WFGallerySharingIdentifierForRecordName(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F4A1C408];
  v2 = [v1 lowercaseString];

  return v2;
}

void initTCCAccessRequest(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (TCCLibrary_sOnce != -1)
  {
    dispatch_once(&TCCLibrary_sOnce, &__block_literal_global_31797);
  }

  v5 = dlsym(TCCLibrary_sLib, "TCCAccessRequest");
  softLinkTCCAccessRequest = v5;
  v6 = v7;
  if (v5)
  {
    (v5)(a1, a2, v7);
    v6 = v7;
  }
}

void sub_1CA7ED208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31932(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void getEKEventStoreChangedNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEKEventStoreChangedNotificationSymbolLoc_ptr;
  v9 = getEKEventStoreChangedNotificationSymbolLoc_ptr;
  if (!getEKEventStoreChangedNotificationSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getEKEventStoreChangedNotificationSymbolLoc_block_invoke;
    v5[3] = &unk_1E837FAC0;
    v5[4] = &v6;
    __getEKEventStoreChangedNotificationSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = *v0;

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNotificationName getEKEventStoreChangedNotification(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFCalendarPickerParameter.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA7ED850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getEKEventStoreChangedNotificationSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __EventKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E83784B8;
    v7 = 0;
    EventKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = EventKitLibraryCore_frameworkLibrary;
  if (!EventKitLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EventKitLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFCalendarPickerParameter.m" lineNumber:21 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "EKEventStoreChangedNotification");
  *(*(a1[4] + 8) + 24) = result;
  getEKEventStoreChangedNotificationSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __EventKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1CA7EFCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNContactClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_32362)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ContactsLibraryCore_block_invoke_32363;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E83784F8;
    v8 = 0;
    ContactsLibraryCore_frameworkLibrary_32362 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_32362)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFMessageTrigger.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CNContact");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNContactClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFMessageTrigger.m" lineNumber:17 description:{@"Unable to find class %s", "CNContact"}];

LABEL_10:
    __break(1u);
  }

  getCNContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_32363(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_32362 = result;
  return result;
}

void sub_1CA7F1710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getUIImageSymbolConfigurationClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIImageSymbolConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageSymbolConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIImageSymbolConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFExternalDisplayTrigger.m" lineNumber:18 description:{@"Unable to find class %s", "UIImageSymbolConfiguration"}];

    __break(1u);
  }
}

void __getUIImageClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIImageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFExternalDisplayTrigger.m" lineNumber:19 description:{@"Unable to find class %s", "UIImage"}];

    __break(1u);
  }
}

void UIKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8378520;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFExternalDisplayTrigger.m" lineNumber:17 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WFREPBRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 16;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBAddAutomationActionEventReadFrom(uint64_t a1, void *a2)
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
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v27 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_40;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_40:
          *(a1 + 16) = v24;
          goto LABEL_41;
        }

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
        v15 = 8;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadString();
        v15 = 32;
      }

      v17 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBRunActionEventReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v91) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v91 & 0x7F) << v6;
      if ((v91 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 80;
        goto LABEL_128;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 136;
        goto LABEL_128;
      case 5u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 172) |= 0x200u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v91 & 0x7F) << v41;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_155;
          }
        }

        v47 = (v43 != 0) & ~[a2 hasError];
LABEL_155:
        v89 = 168;
        goto LABEL_172;
      case 6u:
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_128;
      case 7u:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_128;
      case 8u:
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_128;
      case 9u:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 172) |= 0x400u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v91 & 0x7F) << v68;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v12 = v69++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_169;
          }
        }

        v47 = (v70 != 0) & ~[a2 hasError];
LABEL_169:
        v89 = 169;
        goto LABEL_172;
      case 0xAu:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 172) |= 0x800u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v91 & 0x7F) << v74;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_171;
          }
        }

        v47 = (v76 != 0) & ~[a2 hasError];
LABEL_171:
        v89 = 170;
LABEL_172:
        *(a1 + v89) = v47;
        continue;
      case 0xBu:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_128;
      case 0xCu:
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_128;
      case 0xDu:
        v14 = PBReaderReadString();
        v15 = 48;
        goto LABEL_128;
      case 0xEu:
        v14 = PBReaderReadString();
        v15 = 160;
        goto LABEL_128;
      case 0xFu:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 172) |= 1u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v91 & 0x7F) << v54;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_163;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v56;
        }

LABEL_163:
        v88 = 40;
        goto LABEL_177;
      case 0x10u:
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_128;
      case 0x11u:
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_128;
      case 0x12u:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_128;
      case 0x13u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_128;
      case 0x14u:
        v14 = PBReaderReadString();
        v15 = 120;
LABEL_128:
        v81 = *(a1 + v15);
        *(a1 + v15) = v14;

        continue;
      case 0x15u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 172) |= 0x80u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v91 & 0x7F) << v16;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_141;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_141:
        v88 = 116;
        goto LABEL_177;
      case 0x16u:
        *(a1 + 172) |= 0x100u;
        v91 = 0;
        v60 = [a2 position] + 4;
        if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 4, v61 <= objc_msgSend(a2, "length")))
        {
          v90 = [a2 data];
          [v90 getBytes:&v91 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 128) = v91;
        continue;
      case 0x17u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 172) |= 2u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v91 & 0x7F) << v82;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_176;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v84;
        }

LABEL_176:
        v88 = 72;
        goto LABEL_177;
      case 0x18u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 172) |= 8u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v91 & 0x7F) << v23;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_145;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_145:
        v88 = 100;
        goto LABEL_177;
      case 0x19u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 172) |= 0x20u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v91 & 0x7F) << v48;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_159;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v50;
        }

LABEL_159:
        v88 = 108;
        goto LABEL_177;
      case 0x1Au:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 172) |= 0x10u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v91 & 0x7F) << v35;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_153;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v37;
        }

LABEL_153:
        v88 = 104;
        goto LABEL_177;
      case 0x1Bu:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 172) |= 0x40u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v91 & 0x7F) << v62;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v12 = v63++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_167;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v64;
        }

LABEL_167:
        v88 = 112;
        goto LABEL_177;
      case 0x1Cu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 172) |= 4u;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v91) = 0;
      v32 = [a2 position] + 1;
      if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
      {
        v34 = [a2 data];
        [v34 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v31 |= (v91 & 0x7F) << v29;
      if ((v91 & 0x80) == 0)
      {
        break;
      }

      v29 += 7;
      v12 = v30++ >= 9;
      if (v12)
      {
        v22 = 0;
        goto LABEL_149;
      }
    }

    if ([a2 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v31;
    }

LABEL_149:
    v88 = 96;
LABEL_177:
    *(a1 + v88) = v22;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTLEqualObjects(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

__CFString *WFActionIdentifierForSelectingContentOfType(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nullable WFActionIdentifierForSelectingContentOfType(Class  _Nonnull __unsafe_unretained)"];
    [v4 handleFailureInFunction:v5 file:@"WFActionRegistry+ContentSelection.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"contentItemClass"}];
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.file.select";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.ask";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.date";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.selectphoto";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.selectcontacts";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.selectemail";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.exportsong";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.selectphone";
  }

  return 0;
}

id WFDefinitionDirectoryURLForBundleIdentifier(void *a1, void *a2)
{
  v2 = WFDefinitionDirectoryURLsForBundleIdentifier(a1, a2, 0);
  v3 = [v2 anyObject];

  return v3;
}

id WFDefinitionDirectoryURLsForBundleIdentifier(void *a1, void *a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = [v5 URLByAppendingPathComponent:v6];
  [v7 addObject:v8];

  if (a3)
  {
    v9 = [MEMORY[0x1E696E748] sharedResolver];
    v10 = [v9 counterpartIdentifiersForLocalIdentifier:v6];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [v5 URLByAppendingPathComponent:*(*(&v17 + 1) + 8 * i)];
          [v7 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

uint64_t WFIsSyncedIntentDefinitionURL(void *a1)
{
  v1 = a1;
  v2 = WFSyncedDefinitionDirectoryURL();
  IsTransitivelyContainedInDirectory = WFFileIsTransitivelyContainedInDirectory(v2, v1);

  v6 = WFBundledDefinitionDirectoryURL(v4, v5);
  v7 = WFFileIsTransitivelyContainedInDirectory(v6, v1);

  v8 = [v1 pathExtension];

  LODWORD(v1) = objc_msgSend_isEqualToString_(v8);
  return v1 & (IsTransitivelyContainedInDirectory || v7);
}

BOOL WFFileIsTransitivelyContainedInDirectory(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v11 = 2;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  [v5 getRelationship:&v11 ofDirectoryAtURL:v3 toItemAtURL:v4 error:&v10];
  v6 = v10;

  if (v6 && ([v6 vc_isFileNotFound] & 1) == 0)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v13 = "WFFileIsTransitivelyContainedInDirectory";
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Error getting relationship between directory (%@) and file (%@): %@", buf, 0x2Au);
    }
  }

  v8 = v11 == 0;

  return v8;
}

void sub_1CA7FF954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWFUserSettingsClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!WebContentAnalysisLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __WebContentAnalysisLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8378980;
    v8 = 0;
    WebContentAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebContentAnalysisLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebContentAnalysisLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFScreenTimeHelper.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("WFUserSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFUserSettingsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFScreenTimeHelper.m" lineNumber:17 description:{@"Unable to find class %s", "WFUserSettings"}];

LABEL_10:
    __break(1u);
  }

  getWFUserSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WebContentAnalysisLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  WebContentAnalysisLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WFREPBAskWhenRunRequestResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
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
      if ((v12 >> 3) == 4)
      {
        break;
      }

      if (v13 == 3)
      {
        v15 = objc_alloc_init(WFREPBKeyValuePair);
        [a1 addInputtedStates:v15];
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !WFREPBKeyValuePairReadFrom(v15, a2))
        {
          goto LABEL_31;
        }

LABEL_26:
        PBReaderRecallMark();
        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 24);
        *(a1 + 24) = v14;
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(WFREPBError);
    objc_storeStrong((a1 + 8), v15);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !WFREPBErrorReadFrom(v15, a2))
    {
LABEL_31:

      return 0;
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA800EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNFHardwareManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!NearFieldLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __NearFieldLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8378998;
    v8 = 0;
    NearFieldLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NearFieldLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NearFieldLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFNFCTrigger.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("NFHardwareManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNFHardwareManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFNFCTrigger.m" lineNumber:19 description:{@"Unable to find class %s", "NFHardwareManager"}];

LABEL_10:
    __break(1u);
  }

  getNFHardwareManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NearFieldLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NearFieldLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1CA802AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA802D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35573(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFPBGallerySessionSearchEventReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___WFPBGallerySessionSearchEvent__sessionIdentifier;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___WFPBGallerySessionSearchEvent__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

Class initHFTriggerActionSetsBuilder_35832()
{
  if (HomeLibrary_sOnce_35833 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_35833, &__block_literal_global_310);
  }

  result = objc_getClass("HFTriggerActionSetsBuilder");
  classHFTriggerActionSetsBuilder_35835 = result;
  getHFTriggerActionSetsBuilderClass_35823 = HFTriggerActionSetsBuilderFunction_35837;
  return result;
}

void *__HomeLibrary_block_invoke_35839()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_35841 = result;
  return result;
}

void sub_1CA804DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35843(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id initHMErrorDomain()
{
  if (HomeKitLibrary_sOnce_35860 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_35860, &__block_literal_global_35861);
  }

  v0 = dlsym(HomeKitLibrary_sLib_35862, "HMErrorDomain");
  if (!v0)
  {
    __assert_rtn("initHMErrorDomain", "WFHomeAccessoryAction.m", 40, "constant");
  }

  objc_storeStrong(&constantHMErrorDomain, *v0);
  getHMErrorDomain = HMErrorDomainFunction;
  v1 = constantHMErrorDomain;

  return v1;
}

void *__HomeKitLibrary_block_invoke_35868()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_35862 = result;
  return result;
}

void __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 64) == 1 && (v7 = [v5 numberOfItems], v7 != objc_msgSend(*(a1 + 32), "numberOfItems")))
  {
    v12 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v25 = "WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke";
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Number of items in output don't match number of items in input -- can't overwrite", buf, 0xCu);
    }

    v13 = objc_alloc(MEMORY[0x1E69E0DD8]);
    v14 = *(a1 + 32);
    v15 = WFBackgroundShortcutRunnerError(8, 0);
    v11 = [v13 initWithOutput:v14 files:0 runError:v15 reversalState:0];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) items];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_188;
    v20[3] = &unk_1E8378A88;
    v23 = *(a1 + 64);
    v9 = v5;
    v10 = *(a1 + 56);
    v21 = v9;
    v22 = v10;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_3;
    v16[3] = &unk_1E837E9D0;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    [v8 if_mapAsynchronously:v20 completionHandler:v16];

    v11 = v21;
  }
}

void __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_188(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (*(a1 + 48) == 1)
  {
    v9 = [*(a1 + 32) items];
    v10 = [v9 objectAtIndexedSubscript:a3];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_2;
    v13[3] = &unk_1E8378A60;
    v11 = v8;
    v12 = *(a1 + 40);
    v15 = v11;
    v16 = v12;
    v14 = v7;
    [v10 getFileRepresentation:v13 forType:0];
  }

  else
  {
    WFGenerateContextualActionFile(*(a1 + 40), v7, 0, v8);
  }
}

void __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_3(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = a2;
    v7 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315394;
      v14 = "WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_3";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Error mapping shortcut output into contextual action files: %@", &v13, 0x16u);
    }

    v8 = objc_alloc(MEMORY[0x1E69E0DD8]);
    v9 = a1[4];
    v10 = WFBackgroundShortcutRunnerError(8, v5);
    v11 = [v8 initWithOutput:v9 files:v6 runError:v10 reversalState:0];
  }

  else
  {
    v12 = MEMORY[0x1E69E0DD8];
    v10 = a2;
    v11 = [[v12 alloc] initWithOutput:a1[4] files:v10 runError:0 reversalState:a1[5]];
  }

  (*(a1[6] + 16))();
}

void __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_2(void *a1, void *a2)
{
  if (a2)
  {
    WFGenerateContextualActionFile(a1[6], a1[4], a2, a1[5]);
  }

  else
  {
    (*(a1[5] + 16))();
  }
}

void WFGenerateContextualActionFile(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = [v7 wfType];
  v11 = [v7 fileURL];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __WFGenerateContextualActionFile_block_invoke;
  v15[3] = &unk_1E8378AD8;
  v18 = v8;
  v19 = a1;
  v16 = v7;
  v17 = v11;
  v12 = v11;
  v13 = v7;
  v14 = v8;
  [v9 getFileRepresentation:v15 forType:v10];
}

void __WFGenerateContextualActionFile_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 wfType];
    v8 = [v7 utType];

    v9 = *(a1 + 56);
    if (v9)
    {
      if (v9 != 1)
      {
LABEL_27:

        goto LABEL_28;
      }

      v10 = MEMORY[0x1E6996F68];
      v11 = [v5 filename];
      v12 = [v10 proposedSharedTemporaryFileURLForFilename:v11];

      v37 = v6;
      LOBYTE(v11) = [v5 writeToFileURL:v12 overwriting:0 error:&v37];
      v13 = v37;

      if ((v11 & 1) == 0)
      {
        v19 = getWFGeneralLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v39 = "WFGenerateContextualActionFile_block_invoke";
          v40 = 2112;
          v41 = v13;
          _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Error writing contextual action output file: %@", buf, 0x16u);
        }

        (*(*(a1 + 48) + 16))();
        goto LABEL_26;
      }

      v14 = [objc_alloc(MEMORY[0x1E69E0A38]) initWithFileURL:v12 type:v8];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v15 = [*(a1 + 32) fileSize];
      v16 = [v5 fileSize];
      if (v15 >= 1 && v16 <= 0)
      {
        v17 = getWFContextualActionsLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v39 = "WFGenerateContextualActionFile_block_invoke";
          _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_FAULT, "%s [Circuit Breaker] Trying to overwrite the input file with empty data. Aborting.", buf, 0xCu);
        }

        v18 = *(a1 + 48);
        v12 = WFBackgroundShortcutRunnerError(9, 0);
        (*(v18 + 16))(v18, 0, v12);
        v13 = v6;
        goto LABEL_26;
      }

      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = [*(a1 + 40) lastPathComponent];
      v20 = *(a1 + 40);
      v36 = v6;
      v21 = [v12 URLForDirectory:99 inDomain:1 appropriateForURL:v20 create:1 error:&v36];
      v13 = v36;

      if (v21)
      {
        v22 = [MEMORY[0x1E6996F68] proposedFileURLForFilename:v14 inDirectory:v21];
        v23 = *(a1 + 40);
        v34 = v13;
        v35 = v22;
        v24 = [v12 replaceItemAtURL:v22 withItemAtURL:v23 backupItemName:0 options:1 resultingItemURL:&v35 error:&v34];
        v25 = v35;

        v26 = v34;
        if (v24)
        {
          v27 = [v5 fileURL];
          v32 = v26;
          v33 = v25;
          v28 = [v12 replaceItemAtURL:v25 withItemAtURL:v27 backupItemName:0 options:0 resultingItemURL:&v33 error:&v32];
          v31 = v33;

          v29 = v32;
          if (v28)
          {
            v26 = v29;
            v30 = [objc_alloc(MEMORY[0x1E69E0A38]) initWithFileURL:v31 type:v8];
            (*(*(a1 + 48) + 16))();
          }

          else
          {
            (*(*(a1 + 48) + 16))();
            v26 = v29;
          }

          v25 = v31;
        }

        else
        {
          (*(*(a1 + 48) + 16))();
        }

        v13 = v26;
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

LABEL_26:
    v6 = v13;
    goto LABEL_27;
  }

  (*(*(a1 + 48) + 16))();
LABEL_28:
}

void WFBackgroundShortcutRunnerMakeAllActionsResult(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = MEMORY[0x1E69E0950];
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [[v6 alloc] initWithActionOutputs:v9 runError:v8];

  v7[2](v7, v10);
}

Class initHMService()
{
  if (HomeKitLibrary_sOnce_36695 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_36695, &__block_literal_global_36696);
  }

  result = objc_getClass("HMService");
  classHMService = result;
  getHMServiceClass = HMServiceFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke_36700()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_36702 = result;
  return result;
}

id WFEnforceClass_37066(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s A custom icon was specified (%@) but we could not find the icon in our image assets", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

__CFString *WFExecutionPlatformForDeviceIdiom(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E8378E58[a1];
  }
}

uint64_t WFDeviceIdiomForExecutionPlatform(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 5;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

void sub_1CA80E87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaPropertyPredicateClass_block_invoke_37193(uint64_t a1)
{
  MediaPlayerLibrary_37213();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass_37192 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFiTunesObjectContentItem.m" lineNumber:24 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void __getMPMediaQueryClass_block_invoke_37196(uint64_t a1)
{
  MediaPlayerLibrary_37213();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass_37195 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFiTunesObjectContentItem.m" lineNumber:23 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void MediaPlayerLibrary_37213()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_37223)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke_37224;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8379040;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_37223 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_37223)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFiTunesObjectContentItem.m" lineNumber:21 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaPlayerLibraryCore_block_invoke_37224(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_37223 = result;
  return result;
}

void sub_1CA80EDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37235(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFPossibleArtworkURLsForArtworkURL(void *a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E69E0AF8];
  v3 = [v1 lastPathComponent];
  v4 = [v2 typeFromFilename:v3];
  v5 = [v4 conformsToUTType:*MEMORY[0x1E6982E58]];

  if (v5)
  {
    v6 = [v1 URLByDeletingPathExtension];
    v7 = [v6 URLByAppendingPathExtension:@"png"];

    v11[0] = v7;
    v11[1] = v1;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  }

  else
  {
    v10 = v1;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  }

  return v8;
}

void sub_1CA80F7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

void *WFGetFavoritedActionIDs()
{
  v0 = [MEMORY[0x1E695E000] workflowUserDefaults];
  v1 = [v0 stringArrayForKey:@"WFActionFavorites"];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;

  return v3;
}

uint64_t WFActionIsFavorite(void *a1)
{
  v1 = a1;
  v2 = WFGetFavoritedActionIDs();
  v3 = [v2 containsObject:v1];

  return v3;
}

void WFActionSetFavorite(void *a1, int a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695E000] workflowUserDefaults];
  v5 = MEMORY[0x1E695DFA0];
  v6 = [v4 objectForKey:@"WFActionFavorites"];
  v7 = [v5 orderedSetWithArray:v6];

  v8 = [v7 containsObject:v3];
  if (a2)
  {
    [v7 addObject:v3];
  }

  else
  {
    [v7 removeObject:v3];
  }

  if (v8 != a2)
  {
    v9 = [v7 array];
    [v4 setObject:v9 forKey:@"WFActionFavorites"];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = @"ActionID";
    v13[0] = v3;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v10 postNotificationName:@"WFActionFavoritesChangedNotification" object:0 userInfo:v11];
  }
}

uint64_t WFPBAddAutomationEventReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_66;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            v15 = 72;
            goto LABEL_66;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = PBReaderReadString();
              v15 = 40;
              goto LABEL_66;
            case 4:
              v14 = PBReaderReadString();
              v15 = 64;
              goto LABEL_66;
            case 5:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 84) |= 1u;
              while (1)
              {
                v41 = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v41 & 0x7F) << v16;
                if ((v41 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_76;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v18;
              }

LABEL_76:
              *(a1 + 8) = v22;
              goto LABEL_67;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_66;
          case 0xA:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 84) |= 4u;
            while (1)
            {
              v43 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v43 & 0x7F) << v30;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_72;
              }
            }

            v29 = (v32 != 0) & ~[a2 hasError];
LABEL_72:
            v39 = 81;
            goto LABEL_79;
          case 0xB:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 84) |= 2u;
            while (1)
            {
              v42 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v42 & 0x7F) << v23;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_78;
              }
            }

            v29 = (v25 != 0) & ~[a2 hasError];
LABEL_78:
            v39 = 80;
LABEL_79:
            *(a1 + v39) = v29;
            goto LABEL_67;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_66;
          case 7:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_66;
          case 8:
            v14 = PBReaderReadString();
            v15 = 16;
LABEL_66:
            v36 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_67;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_67:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBRemoteExecutionEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          case 2:
            v14 = PBReaderReadString();
            v15 = 40;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          default:
            goto LABEL_36;
        }

        goto LABEL_40;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_40;
      }

      if (v13 != 6)
      {
LABEL_36:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 52) |= 1u;
      while (1)
      {
        v27 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v27 & 0x7F) << v16;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_44;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_44:
      *(a1 + 48) = v22;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 24;
LABEL_40:
    v24 = *(a1 + v15);
    *(a1 + v15) = v14;

    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA8161D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38109(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA816A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 192), 8);
  _Block_object_dispose((v36 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1CA817504(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id WFMaximumBundleVersion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = WFCompareBundleVersions(v3, v4);
  if (v5)
  {
    if (v5 == 2)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id WFConvertToBundleString(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", objc_msgSend(v1, "unsignedLongLongValue")];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

uint64_t WFREPBDialogRequestResponseReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadData();
        v15 = 8;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(WFREPBError);
    objc_storeStrong((a1 + 16), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !WFREPBErrorReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

Class initHFTriggerActionSetsBuilder_39045()
{
  if (HomeLibrary_sOnce_39046 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_39046, &__block_literal_global_281);
  }

  result = objc_getClass("HFTriggerActionSetsBuilder");
  classHFTriggerActionSetsBuilder_39048 = result;
  getHFTriggerActionSetsBuilderClass_39043 = HFTriggerActionSetsBuilderFunction_39050;
  return result;
}

void *__HomeLibrary_block_invoke_39052()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_39054 = result;
  return result;
}

Class initHMActionSet()
{
  if (HomeKitLibrary_sOnce_39056 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_39056, &__block_literal_global_277);
  }

  result = objc_getClass("HMActionSet");
  classHMActionSet = result;
  getHMActionSetClass = HMActionSetFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke_39059()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_39061 = result;
  return result;
}

uint64_t WFPBGlyphSelectionEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
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
            LOBYTE(v23) = 0;
            goto LABEL_35;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_35:
        *(a1 + 24) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_36;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFActionShouldBeIncludedInSummary(void *a1)
{
  v1 = WFActionShouldBeIncludedInSummary_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFActionShouldBeIncludedInSummary_onceToken, &__block_literal_global_466);
  }

  v3 = WFActionShouldBeIncludedInSummary_ignoredActionIdentifiers;
  v4 = [v2 identifier];

  v5 = [v3 containsObject:v4];
  return v5 ^ 1u;
}

void __WFActionShouldBeIncludedInSummary_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4A9B590];
  v1 = WFActionShouldBeIncludedInSummary_ignoredActionIdentifiers;
  WFActionShouldBeIncludedInSummary_ignoredActionIdentifiers = v0;
}

id WFVariableSubstitutableParameterStateUpcast(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"WFVariableSubstitutableParameterState * _Nonnull WFVariableSubstitutableParameterStateUpcast(id<WFParameterState>  _Nonnull __strong)"];
    [v3 handleFailureInFunction:v4 file:@"WFVariableSubstitutableParameterState.m" lineNumber:201 description:@"State passed to WFVariableSubstitutableParameterStateUpcast must be a subclass of WFVariableSubstitutableParameterState"];
  }

  return v1;
}

id WFVariableSubstitutableParameterStateDowncast(void *a1, uint64_t a2)
{
  v2 = a1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t WFPBGallerySessionStartEventReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___WFPBGallerySessionStartEvent__sessionIdentifier;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___WFPBGallerySessionStartEvent__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA82EA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41507(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA82F3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA82FD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1CA83040C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 200), 8);
  _Block_object_dispose((v31 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1CA830AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

id WFTriggerNotificationUserInfo(void *a1, void *a2, void *a3)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary * _Nonnull WFTriggerNotificationUserInfo(NSString * _Nonnull __strong, NSArray<WFIcon *> * _Nullable __strong, NSArray<NSString *> * _Nullable __strong)"}];
    [v15 handleFailureInFunction:v16 file:@"WFTriggerManager.m" lineNumber:512 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];
  }

  v24[0] = @"source";
  v24[1] = @"triggerID";
  v25[0] = @"trigger";
  v25[1] = v5;
  v24[2] = @"pendingIDs";
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v25[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v10 = [v9 mutableCopy];

  if (v6)
  {
    v17 = 0;
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v17];
    v12 = v17;
    if (v11)
    {
      [v10 setObject:v11 forKeyedSubscript:@"actionIconsData"];
    }

    else
    {
      v13 = getWFTriggersLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v19 = "WFTriggerNotificationUserInfo";
        v20 = 2114;
        v21 = v6;
        v22 = 2114;
        v23 = v12;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Failed to archive action icons: %{public}@ error: %{public}@", buf, 0x20u);
      }
    }
  }

  return v10;
}

id WFTriggerNotificationUserInfoForDisabling(void *a1, void *a2)
{
  v33[5] = *MEMORY[0x1E69E9840];
  v33[0] = @"trigger";
  v32[0] = @"source";
  v32[1] = @"triggerID";
  v3 = a2;
  v4 = a1;
  v5 = [v4 identifier];
  v33[1] = v5;
  v32[2] = @"triggerTitle";
  v6 = [v4 trigger];
  v7 = [v6 localizedDisplayName];
  v33[2] = v7;
  v32[3] = @"triggerDescription";
  v8 = [v4 trigger];
  v9 = [v8 localizedDescriptionWithConfigurationSummary];
  v33[3] = v9;
  v32[4] = @"triggerClassName";
  v10 = [v4 trigger];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v33[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:5];
  v14 = [v13 mutableCopy];

  v15 = [v3 actions];
  v16 = [v3 actions];

  v17 = [v16 count];
  if (v17 >= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v15 subarrayWithRange:{0, v18}];

  v20 = [v19 if_compactMap:&__block_literal_global_354];
  if (v20)
  {
    v25 = 0;
    v21 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v25];
    v22 = v25;
    if (v21)
    {
      [v14 setObject:v21 forKeyedSubscript:@"actionIconsData"];
    }

    else
    {
      v23 = getWFTriggersLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v27 = "WFTriggerNotificationUserInfoForDisabling";
        v28 = 2114;
        v29 = v20;
        v30 = 2114;
        v31 = v22;
        _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s Failed to archive action icons: %{public}@ error: %{public}@", buf, 0x20u);
      }
    }
  }

  return v14;
}

id WFAllTriggerNotificationUserInfoForDisablingTriggers(void *a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSDictionary * _Nonnull WFAllTriggerNotificationUserInfoForDisablingTriggers(NSArray<NSDictionary *> * _Nonnull __strong)"];
    [v4 handleFailureInFunction:v5 file:@"WFTriggerManager.m" lineNumber:565 description:{@"Invalid parameter not satisfying: %@", @"triggerUserInfo"}];
  }

  v6[0] = @"triggerAndActionIcons";
  v6[1] = @"source";
  v7[0] = v1;
  v7[1] = @"trigger";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v2;
}

id WFTriggerDisplayInfoToDisableFromNotificationUserInfo(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315138;
    v14 = "WFTriggerDisplayInfoToDisableFromNotificationUserInfo";
    v8 = "%s Can't get trigger display info from nil userInfo";
    v9 = v6;
    v10 = 12;
LABEL_9:
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, v8, &v13, v10);
    goto LABEL_13;
  }

  v3 = [v1 objectForKeyedSubscript:@"source"];
  isEqualToString = objc_msgSend_isEqualToString_(v3);

  if ((isEqualToString & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315394;
    v14 = "WFTriggerDisplayInfoToDisableFromNotificationUserInfo";
    v15 = 2114;
    v16 = v2;
    v8 = "%s This userInfo wasn't from a trigger notification: %{public}@";
    v9 = v6;
    v10 = 22;
    goto LABEL_9;
  }

  v5 = [v2 objectForKey:@"triggerAndActionIcons"];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 if_compactMap:&__block_literal_global_360];
    goto LABEL_14;
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "WFTriggerDisplayInfoToDisableFromNotificationUserInfo";
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s No trigger info for disabling triggers found!", &v13, 0xCu);
  }

  v6 = 0;
LABEL_13:
  v7 = 0;
LABEL_14:

  return v7;
}

WFTriggerDisplayInfo *__WFTriggerDisplayInfoToDisableFromNotificationUserInfo_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"triggerTitle"];
  v4 = [v2 objectForKey:@"triggerDescription"];
  v5 = WFActionIconsFromNotificationUserInfo(v2);
  v6 = [v2 objectForKey:@"triggerClassName"];

  v7 = NSClassFromString(v6);
  v8 = [[WFTriggerDisplayInfo alloc] initWithLocalizedTitle:v3 localizedDescription:v4 actionIcons:v5 triggerClass:v7];

  return v8;
}

id WFActionIconsFromNotificationUserInfo(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "WFActionIconsFromNotificationUserInfo";
      v13 = "%s Can't get actionIcons from nil userInfo";
      v14 = v5;
      v15 = 12;
LABEL_10:
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }

LABEL_11:
    v10 = 0;
    goto LABEL_20;
  }

  v3 = [v1 objectForKeyedSubscript:@"source"];
  isEqualToString = objc_msgSend_isEqualToString_(v3);

  if ((isEqualToString & 1) == 0)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "WFActionIconsFromNotificationUserInfo";
      v22 = 2114;
      v23 = v2;
      v13 = "%s This userInfo wasn't from a trigger notification: %{public}@";
      v14 = v5;
      v15 = 22;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = [v2 objectForKeyedSubscript:@"actionIconsData"];
  if (v5)
  {
    v6 = MEMORY[0x1E696ACD0];
    v7 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v9 = [v7 setWithArray:v8];
    v18 = 0;
    v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:&v18];
    v11 = v18;

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v16 = getWFTriggersLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "WFActionIconsFromNotificationUserInfo";
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Failed to unarchive action icons: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "WFActionIconsFromNotificationUserInfo";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s No Data", buf, 0xCu);
    }

    v10 = 0;
  }

LABEL_20:

  return v10;
}

id WFTriggerIDFromNotificationUserInfo(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:@"source"];
    isEqualToString = objc_msgSend_isEqualToString_(v3);

    if (isEqualToString)
    {
      v5 = [v2 objectForKey:@"triggerID"];
      goto LABEL_10;
    }

    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "WFTriggerIDFromNotificationUserInfo";
      v13 = 2114;
      v14 = v2;
      v7 = "%s This userInfo wasn't from a trigger notification: %{public}@";
      v8 = v6;
      v9 = 22;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "WFTriggerIDFromNotificationUserInfo";
      v7 = "%s Can't get triggerID from nil userInfo";
      v8 = v6;
      v9 = 12;
LABEL_8:
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, v7, &v11, v9);
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

id WFTriggerIDsToDisableFromNotificationUserInfo(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315138;
    v14 = "WFTriggerIDsToDisableFromNotificationUserInfo";
    v8 = "%s Can't get triggerIDs to dissable from nil userInfo";
    v9 = v6;
    v10 = 12;
LABEL_9:
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, v8, &v13, v10);
    goto LABEL_13;
  }

  v3 = [v1 objectForKeyedSubscript:@"source"];
  isEqualToString = objc_msgSend_isEqualToString_(v3);

  if ((isEqualToString & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315394;
    v14 = "WFTriggerIDsToDisableFromNotificationUserInfo";
    v15 = 2114;
    v16 = v2;
    v8 = "%s This userInfo wasn't from a trigger notification: %{public}@";
    v9 = v6;
    v10 = 22;
    goto LABEL_9;
  }

  v5 = [v2 objectForKey:@"triggerAndActionIcons"];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 if_compactMap:&__block_literal_global_363];
    goto LABEL_14;
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "WFTriggerIDsToDisableFromNotificationUserInfo";
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s No trigger info for disabling triggers found!", &v13, 0xCu);
  }

  v6 = 0;
LABEL_13:
  v7 = 0;
LABEL_14:

  return v7;
}

id WFPendingTriggerEventIDsFromNotificationUserInfo(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:@"source"];
    isEqualToString = objc_msgSend_isEqualToString_(v3);

    if (isEqualToString)
    {
      v5 = [v2 objectForKey:@"pendingIDs"];
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v11 = v6;

      goto LABEL_15;
    }

    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "WFPendingTriggerEventIDsFromNotificationUserInfo";
      v15 = 2114;
      v16 = v2;
      v8 = "%s This userInfo wasn't from a trigger notification: %{public}@";
      v9 = v7;
      v10 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "WFPendingTriggerEventIDsFromNotificationUserInfo";
      v8 = "%s Can't get triggerID from nil userInfo";
      v9 = v7;
      v10 = 12;
LABEL_11:
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, v8, &v13, v10);
    }
  }

  v11 = 0;
LABEL_15:

  return v11;
}
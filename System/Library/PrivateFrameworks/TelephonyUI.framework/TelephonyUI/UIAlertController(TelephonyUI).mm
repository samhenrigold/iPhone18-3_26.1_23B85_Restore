@interface UIAlertController(TelephonyUI)
+ (id)callEndStewieControllerWithDialRequest:()TelephonyUI dialAction:title:buttonTitle:;
+ (id)enableWiFiCallingAlertControllerWithPreferredStyle:()TelephonyUI;
+ (id)networkUnavailableAlertControllerWithCallProvider:()TelephonyUI dialType:senderIdentityUUID:;
+ (id)telephonyAccountUnavailableAlertControllerWithSenderIdentities:()TelephonyUI preferredStyle:completion:;
@end

@implementation UIAlertController(TelephonyUI)

+ (id)enableWiFiCallingAlertControllerWithPreferredStyle:()TelephonyUI
{
  supportsWiFiCalling = [MEMORY[0x1E69D8A48] supportsWiFiCalling];
  if (supportsWiFiCalling)
  {
    v6 = TelephonyUIBundle(supportsWiFiCalling, v5);
    v7 = TUStringKeyForNetwork();
    v8 = [v6 localizedStringForKey:v7 value:&stru_1F2CA8008 table:@"General"];

    v11 = TelephonyUIBundle(v9, v10);
    v12 = TUStringKeyForNetwork();
    v13 = [v11 localizedStringForKey:v12 value:&stru_1F2CA8008 table:@"General"];

    mEMORY[0x1E699BE90] = [MEMORY[0x1E699BE90] sharedInstance];
    wiFiActiveAndReachable = [mEMORY[0x1E699BE90] wiFiActiveAndReachable];

    v16 = 0;
    if (([MEMORY[0x1E69D8A48] isWiFiCallingEnabled] & 1) == 0 && wiFiActiveAndReachable)
    {
      v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v8 preferredStyle:a3];
      v17 = [TPAlertAction actionWithType:5];
      [v16 addAction:v17];

      v18 = [TPAlertAction actionWithType:1];
      [v16 addAction:v18];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)networkUnavailableAlertControllerWithCallProvider:()TelephonyUI dialType:senderIdentityUUID:
{
  v7 = a3;
  v8 = a5;
  v10 = TelephonyUIBundle(v8, v9);
  v11 = [v10 localizedStringForKey:@"ALERT_TITLE_NETWORK_UNAVAILABLE" value:&stru_1F2CA8008 table:@"General"];

  isTelephonyProvider = [v7 isTelephonyProvider];
  v14 = 0x1E699B000uLL;
  if (isTelephonyProvider)
  {
    v15 = TelephonyUIBundle(isTelephonyProvider, v13);
    v16 = [v15 localizedStringForKey:@"ALERT_MESSAGE_TELEPHONY_NO_LOCAL_CELLULAR" value:&stru_1F2CA8008 table:@"General"];

    if (v8)
    {
      v17 = [MEMORY[0x1E69D8A48] senderIdentityCapabilitiesWithUUID:v8];
      v18 = v17;
      if (a4 == 1)
      {
        canAttemptEmergencyCallsWithoutCellularConnection = [v17 canAttemptEmergencyCallsWithoutCellularConnection];
      }

      else
      {
        canAttemptEmergencyCallsWithoutCellularConnection = [v17 canAttemptTelephonyCallsWithoutCellularConnection];
      }

      v43 = canAttemptEmergencyCallsWithoutCellularConnection;

      if (v43)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    if (a4 == 1)
    {
      canAttemptEmergencyCallsWithoutCellularConnection2 = [MEMORY[0x1E69D8A48] canAttemptEmergencyCallsWithoutCellularConnection];
      if ((canAttemptEmergencyCallsWithoutCellularConnection2 & 1) == 0)
      {
LABEL_18:
        supportsWiFiCalling = [MEMORY[0x1E69D8A48] supportsWiFiCalling];
        if (supportsWiFiCalling)
        {
          v49 = TelephonyUIBundle(supportsWiFiCalling, v48);
          v50 = TUStringKeyForNetwork();
          v51 = [v49 localizedStringForKey:v50 value:&stru_1F2CA8008 table:@"General"];

          if ([MEMORY[0x1E69D8A48] isWiFiCallingEnabled])
          {
            mEMORY[0x1E699BE90] = [MEMORY[0x1E699BE90] sharedInstance];
            networkReachable = [mEMORY[0x1E699BE90] networkReachable];

            if (networkReachable)
            {
              v40 = 0;
            }

            else
            {
              v40 = 8;
            }
          }

          else
          {
            v40 = 16;
          }

          v16 = v51;
        }

        else
        {
          v40 = 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
      canAttemptEmergencyCallsWithoutCellularConnection2 = [MEMORY[0x1E69D8A48] canAttemptTelephonyCallsWithoutCellularConnection];
      if (!canAttemptEmergencyCallsWithoutCellularConnection2)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    v44 = TelephonyUIBundle(canAttemptEmergencyCallsWithoutCellularConnection2, v42);
    v45 = TUStringKeyForNetwork();
    v46 = [v44 localizedStringForKey:v45 value:&stru_1F2CA8008 table:@"General"];

    v40 = 8;
    v16 = v46;
    goto LABEL_26;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  displayAppBundleIdentifier = [v7 displayAppBundleIdentifier];
  v22 = [mEMORY[0x1E699BE70] wifiAllowedForBundleId:displayAppBundleIdentifier];

  v23 = MEMORY[0x1E696AEC0];
  v26 = TelephonyUIBundle(v24, v25);
  v27 = TUStringKeyForNetwork();
  v28 = [v26 localizedStringForKey:v27 value:&stru_1F2CA8008 table:@"General"];
  localizedName = [v7 localizedName];
  v16 = [v23 stringWithFormat:v28, localizedName];

  mEMORY[0x1E699BE70]2 = [MEMORY[0x1E699BE70] sharedInstance];
  displayAppBundleIdentifier2 = [v7 displayAppBundleIdentifier];
  LODWORD(v28) = [mEMORY[0x1E699BE70]2 nonWifiAvailableForBundleId:displayAppBundleIdentifier2];

  if (v28)
  {
    v34 = MEMORY[0x1E696AEC0];
    v35 = TelephonyUIBundle(v32, v33);
    v36 = TUStringKeyForNetwork();
    v37 = [v35 localizedStringForKey:v36 value:&stru_1F2CA8008 table:@"General"];
    localizedName2 = [v7 localizedName];
    v39 = [v34 stringWithFormat:v37, localizedName2];

    v16 = v39;
  }

  if (v22)
  {
    v40 = 8;
  }

  else
  {
    v40 = 32;
  }

  v14 = 0x1E699B000;
LABEL_26:
  v54 = objc_alloc_init(MEMORY[0x1E698B6B0]);
  if ([v54 airplaneMode])
  {
    LOBYTE(v40) = v40 | 2;
    goto LABEL_31;
  }

  sharedInstance = [*(v14 + 3696) sharedInstance];
  displayAppBundleIdentifier3 = [v7 displayAppBundleIdentifier];
  v57 = [sharedInstance nonWifiAvailableForBundleId:displayAppBundleIdentifier3];

  if (v57)
  {
    LOBYTE(v40) = v40 | 4;
    goto LABEL_31;
  }

  if (v40)
  {
LABEL_31:
    v58 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:v16 preferredStyle:1];
    if ((v40 & 8) != 0)
    {
      v62 = [TPAlertAction actionWithType:4];
      [v58 addAction:v62];

      if ((v40 & 0x10) == 0)
      {
LABEL_33:
        if ((v40 & 2) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_43;
      }
    }

    else if ((v40 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    v63 = [TPAlertAction actionWithType:5];
    [v58 addAction:v63];

    if ((v40 & 2) == 0)
    {
LABEL_34:
      if ((v40 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    }

LABEL_43:
    v64 = [TPAlertAction actionWithType:2];
    [v58 addAction:v64];

    if ((v40 & 4) == 0)
    {
LABEL_35:
      if ((v40 & 0x20) == 0)
      {
LABEL_37:
        v60 = [TPAlertAction actionWithType:1];
        [v58 addAction:v60];

        goto LABEL_38;
      }

LABEL_36:
      v59 = [TPAlertAction actionWithType:6];
      [v58 addAction:v59];

      goto LABEL_37;
    }

LABEL_44:
    v65 = [TPAlertAction actionWithType:3];
    [v58 addAction:v65];

    if ((v40 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v58 = 0;
LABEL_38:

  return v58;
}

+ (id)telephonyAccountUnavailableAlertControllerWithSenderIdentities:()TelephonyUI preferredStyle:completion:
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v52 = a5;
  v9 = TelephonyUIBundle(v52, v8);
  v10 = [v9 localizedStringForKey:@"TELEPHONY_ACCOUNT_UNAVAILABLE_ALERT_TITLE" value:&stru_1F2CA8008 table:@"General"];

  v11 = [v7 count];
  v13 = &off_1B48EB000;
  if (v11 >= 2)
  {
    v14 = MEMORY[0x1E69DC650];
    v15 = TelephonyUIBundle(v11, v12);
    v16 = [v15 localizedStringForKey:@"TELEPHONY_ACCOUNT_UNAVAILABLE_ALERT_MESSAGE" value:&stru_1F2CA8008 table:@"General"];
    v50 = v10;
    v17 = [v14 alertControllerWithTitle:v10 message:v16 preferredStyle:a4];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v7;
    v18 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v61;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          v22 = v17;
          if (*v61 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v60 + 1) + 8 * i);
          v24 = MEMORY[0x1E69DC648];
          localizedName = [v23 localizedName];
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __123__UIAlertController_TelephonyUI__telephonyAccountUnavailableAlertControllerWithSenderIdentities_preferredStyle_completion___block_invoke;
          v58[3] = &unk_1E7C0C1C0;
          v26 = v52;
          v58[4] = v23;
          v59 = v26;
          v27 = [v24 actionWithTitle:localizedName style:0 handler:v58];

          v17 = v22;
          [v22 addAction:v27];
        }

        v19 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v19);
    }

    actions = [v17 actions];
    firstObject = [actions firstObject];
    [v17 setPreferredAction:firstObject];

    v10 = v50;
    v13 = &off_1B48EB000;
    goto LABEL_12;
  }

  v30 = [v7 count];
  if (v30 == 1)
  {
    v32 = MEMORY[0x1E69DC650];
    v33 = TelephonyUIBundle(1, v31);
    v34 = [v33 localizedStringForKey:@"TELEPHONY_ACCOUNT_UNAVAILABLE_ALERT_MESSAGE_SINGLE" value:&stru_1F2CA8008 table:@"General"];
    v35 = [v32 alertControllerWithTitle:v10 message:v34 preferredStyle:a4];

    v36 = MEMORY[0x1E69DC648];
    v39 = TelephonyUIBundle(v37, v38);
    v17 = v35;
    v40 = [v39 localizedStringForKey:@"TELEPHONY_ACCOUNT_UNAVAILABLE_ALERT_ACTION_TITLE_CALL" value:&stru_1F2CA8008 table:@"General"];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __123__UIAlertController_TelephonyUI__telephonyAccountUnavailableAlertControllerWithSenderIdentities_preferredStyle_completion___block_invoke_2;
    v55[3] = &unk_1E7C0C1C0;
    v57 = v52;
    v56 = v7;
    v41 = [v36 actionWithTitle:v40 style:0 handler:v55];

    [v35 addAction:v41];
    actions2 = [v35 actions];
    firstObject2 = [actions2 firstObject];
    [v35 setPreferredAction:firstObject2];

    actions = v57;
LABEL_12:

    goto LABEL_14;
  }

  v17 = 0;
LABEL_14:
  v44 = MEMORY[0x1E69DC648];
  v45 = TelephonyUIBundle(v30, v31);
  v46 = [v45 localizedStringForKey:@"TELEPHONY_ACCOUNT_UNAVAILABLE_ALERT_ACTION_TITLE_CANCEL" value:&stru_1F2CA8008 table:@"General"];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = *(v13 + 233);
  v53[2] = __123__UIAlertController_TelephonyUI__telephonyAccountUnavailableAlertControllerWithSenderIdentities_preferredStyle_completion___block_invoke_3;
  v53[3] = &unk_1E7C0C1E8;
  v54 = v52;
  v47 = v52;
  v48 = [v44 actionWithTitle:v46 style:1 handler:v53];

  [v17 addAction:v48];

  return v17;
}

+ (id)callEndStewieControllerWithDialRequest:()TelephonyUI dialAction:title:buttonTitle:
{
  v8 = a4;
  v9 = MEMORY[0x1E69DC650];
  v10 = a6;
  v11 = [v9 alertControllerWithTitle:a5 message:0 preferredStyle:0];
  v12 = MEMORY[0x1E69DC648];
  v14 = TelephonyUIBundle(v11, v13);
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F2CA8008 table:@"General"];
  v16 = [v12 actionWithTitle:v15 style:1 handler:&__block_literal_global_0];

  [v11 addAction:v16];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__UIAlertController_TelephonyUI__callEndStewieControllerWithDialRequest_dialAction_title_buttonTitle___block_invoke_2;
  v20[3] = &unk_1E7C0C1E8;
  v21 = v8;
  v17 = v8;
  v18 = [TPAlertAction actionWithTitle:v10 style:0 handler:v20];

  [v11 addAction:v18];

  return v11;
}

@end
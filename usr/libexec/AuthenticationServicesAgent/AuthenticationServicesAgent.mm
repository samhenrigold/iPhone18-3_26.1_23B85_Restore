uint64_t AuthenticationServicesAgentMain()
{
  v0 = objc_autoreleasePoolPush();
  WBSSetUpAccessToAppDataContainerWithIdentifier();
  v1 = objc_alloc_init(PublicKeyCredentialManager);
  v2 = [[ASCAgentListener alloc] initWithPublicKeyCredentialManager:v1];
  v3 = qword_100035CE0;
  qword_100035CE0 = v2;

  v4 = [ASAgentAutoFillListener alloc];
  v5 = [qword_100035CE0 signInEventCollector];
  v6 = [v4 initWithPublicKeyCredentialManager:v1 signInEventCollector:v5];
  v7 = qword_100035CE8;
  qword_100035CE8 = v6;

  v8 = objc_alloc_init(_ASAgentCredentialSharingGroupsListener);
  v9 = qword_100035CF0;
  qword_100035CF0 = v8;

  v10 = [[_ASAgentPeriodicMaintenanceActivity alloc] initRegisteringActivityHandler:1];
  v11 = qword_100035CF8;
  qword_100035CF8 = v10;

  v12 = objc_alloc_init(_ASAgentCredentialExchangeListener);
  v13 = qword_100035D00;
  qword_100035D00 = v12;

  v14 = objc_alloc_init(_ASAgentCredentialUpdateListener);
  v15 = qword_100035D08;
  qword_100035D08 = v14;

  v16 = objc_alloc_init(_ASAgentFileVaultRecoveryKeyListener);
  v17 = qword_100035D10;
  qword_100035D10 = v16;

  objc_autoreleasePoolPop(v0);
  WBSRunLoopRunUntilTerminationSignal();
  return 0;
}

void sub_100001F64(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001FCAC(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_100002090(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001FD24(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_1000021BC(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001FD9C(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_100002314(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001FE14(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_10000235C(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001FE8C(v2);
  }
}

void sub_1000024A8(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001FED0(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_1000024F0(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001FE8C(v2);
  }
}

void sub_1000025E8(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001FF48(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_1000026EC(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001FFC0(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_100002854(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100020038(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

id sub_10000289C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 24);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
    v4 = *(a1 + 40);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;

    v2 = *(a1 + 40);
  }

  v6 = *(v2 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
    v7 = *(a1 + 40);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;

    v2 = *(a1 + 40);
  }

  result = [*(v2 + 72) cancel];
  *(*(a1 + 40) + 40) = 1;
  return result;
}

void sub_100002B18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_100002E5C(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Exclude credentials matched.", v3, 2u);
  }
}

WebAuthenticationAssertionResponse *__cdecl sub_100002FE0(id a1, _WKWebAuthenticationAssertionResponse *a2)
{
  v2 = a2;
  v3 = [[WebAuthenticationAssertionResponse alloc] initWithWKResponse:v2];

  return v3;
}

void sub_100003038(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 wkResponse];
  (*(v2 + 16))(v2, v3);
}

id sub_100003400(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 48);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v2 = [*(a1 + 40) testOptions];
    v6 = v2 != 0;
  }

  v7 = qword_100035D28;
  v8 = v4;
  if (v7 != -1)
  {
    sub_100020124();
  }

  v9 = &qword_100035D20;
  if (!v6)
  {
    v9 = &qword_100035D18;
  }

  v10 = *v9;
  v11 = [v8 accessGroup];

  v12 = [v10 containsObject:v11];
  if ((v5 & 1) == 0)
  {
  }

  if (v12)
  {
    v28 = sub_100003680(v8);
    [*(a1 + 48) setObject:v8 forKeyedSubscript:v28];
    v13 = [v8 userHandle];
    v27 = [v13 base64EncodedStringWithOptions:0];

    v14 = [v8 group];
    v15 = [*(a1 + 40) relyingPartyIdentifier];
    v26 = [NSURLCredentialStorage safari_customTitleForPasskeyWithUserHandle:v27 relyingPartyID:v15 groupID:v14];

    v16 = [ASCPlatformPublicKeyCredentialLoginChoice alloc];
    v25 = [v8 name];
    v17 = [v8 displayName];
    v18 = [*(a1 + 40) relyingPartyIdentifier];
    v19 = *(a1 + 56);
    v20 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v21 = [v20 cachedGroupWithID:v14];
    v22 = [v21 displayName];
    v23 = [v16 initWithName:v25 displayName:v17 customTitle:v26 identifier:v28 userHandle:v27 relyingPartyIdentifier:v18 publicKeyCredentialOperationUUID:v19 groupID:v14 groupName:v22];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

id sub_100003680(void *a1)
{
  v1 = a1;
  v2 = [v1 credentialID];
  v3 = [v2 base64EncodedStringWithOptions:0];

  v4 = [WBSPublicKeyCredentialIdentifier alloc];
  v5 = [v1 group];

  v6 = [v4 initWithCredentialID:v3 groupID:v5];

  return v6;
}

void sub_100003720(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000037CC;
  v6[3] = &unk_100031390;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1000037E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 arrayByAddingObjectsFromArray:*(a1 + 40)];
  [v3 didFetchPlatformLoginChoices:v4];

  v5 = [*(a1 + 48) activity];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000038BC;
  block[3] = &unk_100031290;
  v7 = *(a1 + 48);
  v6 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  os_activity_apply(v5, block);
}

void sub_1000038BC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  v2 = [*(a1 + 40) sourceApplicationIdentifier];
  [v1 newPasskeysAvailableForApplicationIdentifier:v2];
}

id sub_100003914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003680(v3);
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  v5 = [ASCSecurityKeyPublicKeyCredentialLoginChoice alloc];
  v6 = [v3 name];
  v7 = [v3 displayName];

  v8 = [v5 initWithName:v6 displayName:v7 identifier:v4 publicKeyCredentialOperationUUID:*(a1 + 40)];

  return v8;
}

void sub_1000039D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003A84;
  v6[3] = &unk_100031390;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100003C10(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 uuid];
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing operation %{public}@ with result %ld.", &v8, 0x16u);
  }
}

void sub_100003DFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 authenticatedLAContext];
    v7 = [*(a1 + 32) uuid];
    v8 = 134218242;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Providing LAContext %p for operation %{public}@.", &v8, 0x16u);
  }
}

void sub_100004000(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 uuid];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Requesting PIN for security key for operation %{public}@.", &v7, 0xCu);
  }
}

void sub_1000041DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 uuid];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Requesting New PIN for security key for operation %{public}@.", &v7, 0xCu);
  }
}

void sub_100004934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004980(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100004998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [v3 appIDForSecurityKeys];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = [*(a1 + 32) _asToWKCredentialAssertionOptions:v4];

  return v8;
}

void sub_100004A1C(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100020138();
  }
}

void sub_100004A58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  if (v5)
  {
    v8 = v22;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v9 = sub_100004C1C;
    v10 = v5;
  }

  else
  {
    v8 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v9 = sub_100004CD0;
    v10 = v6;
  }

  v8[2] = v9;
  v8[3] = &unk_100031148;
  v8[4] = v10;
  os_activity_apply(v7, v8);

  v11 = [*(a1 + 32) overrideError];
  v12 = v11;
  if (!v5 && v6 && v11)
  {
    v13 = [*(a1 + 32) activity];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100004D14;
    v18 = &unk_100031290;
    v19 = v6;
    v14 = v12;
    v20 = v14;
    os_activity_apply(v13, &v15);

    v6 = v14;
  }

  [*(a1 + 40) didCompleteAssertionWithCredential:v5 error:{v6, v15, v16, v17, v18}];
}

void sub_100004C1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    v4 = 138543362;
    v5 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Assertion completed: %{public}@.", &v4, 0xCu);
  }
}

void sub_100004CD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10002016C(a1, v3);
  }
}

void sub_100004D14(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 safari_privacyPreservingDescription];
    v7 = [*(a1 + 40) safari_privacyPreservingDescription];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Replacing error %{public}@ with %{public}@", &v8, 0x16u);
  }
}

void sub_100004DFC(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1000251C8[v2];
  }

  v4 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v5 = [v4 clientDataHash];

  v6 = *(a1 + 48);
  if (*(a1 + 40))
  {
    [v6 test_getAssertionWithMediationRequirement:v3 clientDataJSON:*(a1 + 56) options:*(a1 + 64) operation:*(a1 + 72) completionHandler:*(a1 + 88)];
  }

  else
  {
    v7 = [v6 _newPanelForOperation:*(a1 + 72)];
    v8 = *(a1 + 64);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004F60;
    v11[3] = &unk_1000314A0;
    v12 = *(a1 + 80);
    v9 = *(a1 + 56);
    v10 = *(a1 + 48);
    v13 = v9;
    v14 = v10;
    v15 = *(a1 + 32);
    v16 = *(a1 + 88);
    [v7 getAssertionWithMediationRequirement:v3 clientDataHash:v5 options:v8 completionHandler:v11];
  }
}

void sub_100004F60(uint64_t a1, void *a2, void *a3)
{
  v37 = a2;
  v6 = a3;
  if (!v37)
  {
    v3 = 0;
    goto LABEL_10;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v37;
  v10 = v7;
  v11 = v8;
  v12 = [v9 attachment];
  if (v12 < 2)
  {
    v36 = [v9 extensionOutputsCBOR];
    v34 = [ASCPlatformPublicKeyCredentialAssertion alloc];
    v32 = [v9 authenticatorData];
    v13 = [v9 signature];
    v14 = [v9 userHandle];
    v15 = [v9 rawId];
    sub_10000A5B0([v9 attachment]);
    v16 = v6;
    v17 = v11;
    v19 = v18 = v10;
    LOBYTE(v31) = 0;
    v3 = [v34 initWithRelyingPartyIdentifier:v18 authenticatorData:v32 signature:v13 userHandle:v14 rawClientDataJSON:v17 credentialID:v15 extensions:0 attachment:v19 isExternal:v31];

    v10 = v18;
    v11 = v17;
    v6 = v16;

LABEL_8:
    v27 = v36;
    goto LABEL_9;
  }

  if (v12 == 2)
  {
    v36 = [v9 extensionOutputsCBOR];
    v33 = [ASCSecurityKeyPublicKeyCredentialAssertion alloc];
    v20 = [v9 authenticatorData];
    v21 = [v9 signature];
    v22 = [v9 userHandle];
    v23 = [v9 rawId];
    sub_10000A5B0([v9 attachment]);
    v35 = v6;
    v24 = v11;
    v26 = v25 = v10;
    LOBYTE(v31) = 0;
    v3 = [v33 initWithRelyingPartyIdentifier:v25 authenticatorData:v20 signature:v21 userHandle:v22 rawClientDataJSON:v24 credentialID:v23 extensionOutputsCBOR:v36 attachment:v26 appID:v31];

    v10 = v25;
    v11 = v24;
    v6 = v35;

    goto LABEL_8;
  }

  v27 = [v9 extensionOutputsCBOR];
LABEL_9:

  v28 = *(a1 + 48);
  v29 = [*(a1 + 56) objectAtIndexedSubscript:0];
  v30 = [v9 extensionOutputsCBOR];
  [v28 handleExtensionsIfNeededForCredential:v3 withAssertionOptions:v29 webKitExtensionOutputs:v30];

LABEL_10:
  (*(*(a1 + 64) + 16))();
}

void sub_100005238(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Not requesting platform credentials.", v3, 2u);
  }
}

void sub_100005298(id a1)
{
  v2 = sub_10000A644(a1, v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Platform authenticator not available.", v3, 2u);
  }
}

void sub_100005578(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_100020210(a1, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_100005BF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Requested AutoFill passkeys for operation %{public}@ after already selecting an assertion. Ignoring.", &v5, 0xCu);
  }
}

void sub_100005F74(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1000202F0(a1, v3);
  }
}

void sub_1000060E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v3;
    v7 = [v4 safari_privacyPreservingDescription];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to cancel operation %{public}@, override error: %{public}@", &v8, 0x16u);
  }
}

void sub_10000685C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006880(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  [*(a1 + 32) addObjectsFromArray:v4];

  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

WBSWebBrowserPasskey *__cdecl sub_1000068F4(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [(NSDictionary *)v2 safari_BOOLForKey:_WKLocalAuthenticatorCredentialSynchronizableKey];
  v4 = [(NSDictionary *)v2 safari_stringForKey:_WKLocalAuthenticatorCredentialGroupKey];
  v5 = [v4 length];

  if ((v3 & 1) != 0 || v5)
  {
    v7 = [(NSDictionary *)v2 safari_stringForKey:_WKLocalAuthenticatorCredentialNameKey];
    v8 = [(NSDictionary *)v2 safari_stringForKey:_WKLocalAuthenticatorCredentialRelyingPartyIDKey];
    v9 = [(NSDictionary *)v2 safari_dataForKey:_WKLocalAuthenticatorCredentialIDKey];
    v10 = [(NSDictionary *)v2 safari_dataForKey:_WKLocalAuthenticatorCredentialUserHandleKey];
    v6 = [[WBSWebBrowserPasskey alloc] initWithName:v7 relyingParty:v8 credentialID:v9 userHandle:v10 customTitle:0 providerName:@"Apple Passwords"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100006A3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = a1;
  os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v18 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v18)
  {
    v16 = *v23;
    do
    {
      v4 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(v17 + 32);
        v5 = *(*(&v22 + 1) + 8 * v4);
        v19 = [WBSWebBrowserPasskey alloc];
        v20 = [v5 user];
        v6 = [v5 serviceIdentifier];
        v7 = [v5 credentialID];
        v8 = [v7 safari_base64DecodedData];
        v9 = [v5 userHandle];
        v10 = [v9 safari_base64DecodedData];
        v11 = [v5 owningExtensionState];
        v12 = [v11 localizedDisplayName];
        v13 = v6;
        v14 = [v19 initWithName:v20 relyingParty:v6 credentialID:v8 userHandle:v10 customTitle:0 providerName:v12];
        [v21 addObject:v14];

        v4 = v4 + 1;
      }

      while (v18 != v4);
      v18 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  os_unfair_lock_unlock((*(*(v17 + 48) + 8) + 32));
  dispatch_group_leave(*(v17 + 40));
}

id sub_100006E48(uint64_t a1, void *a2)
{
  v3 = [a2 safari_dataForKey:_WKLocalAuthenticatorCredentialIDKey];
  v4 = [v3 isEqualToData:*(a1 + 32)];

  return v4;
}

void sub_100007538(uint64_t a1, void *a2)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 relyingPartyIdentifier];
        if ([v9 isEqualToString:*(a1 + 32)])
        {
          v10 = [v8 credentialIdentity];
          v11 = [v10 credentialID];
          v12 = [v11 isEqualToString:*(a1 + 40)];

          if (v12)
          {
            v16 = [*(a1 + 48) assertionOptions];

            v17 = *(a1 + 48);
            if (v16)
            {
              v18 = [v17 assertionOptions];
              v19 = [v18 extensions];

              if (v19)
              {
                v20 = [[ASPasskeyAssertionCredentialExtensionInput alloc] initWithCoreExtensions:v19];
              }

              else
              {
                v20 = 0;
              }

              v22 = [[ASPasskeyCredentialRequest alloc] initWithLoginChoice:v8 assertionExtensionInput:v20];
            }

            else
            {
              v21 = [v17 creationOptions];
              v19 = [v21 extensions];

              if (v19)
              {
                v20 = [[ASPasskeyRegistrationCredentialExtensionInput alloc] initWithCoreExtensions:v19];
              }

              else
              {
                v20 = 0;
              }

              v22 = [[ASPasskeyCredentialRequest alloc] initWithLoginChoice:v8 registrationExtensionInput:v20];
            }

            v23 = v22;

            (*(*(a1 + 56) + 16))();
            goto LABEL_25;
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = sub_10000A644(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_10002044C(a1, v15);
  }

  (*(*(a1 + 56) + 16))();
LABEL_25:
}

NSString *__cdecl sub_100007C50(id a1, ASCPublicKeyCredentialDescriptor *a2)
{
  v2 = [(ASCPublicKeyCredentialDescriptor *)a2 credentialID];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

void sub_100007CA4(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007D70;
  v5[3] = &unk_100031650;
  v8 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = [a2 safari_mapAndFilterObjectsUsingBlock:v5];
  (*(*(a1 + 48) + 16))();
}

id sub_100007D70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1 && (v5 = *(a1 + 32), [v3 credentialID], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend(v5, "containsObject:", v6), v6, !v5))
  {
    v15 = 0;
  }

  else
  {
    v7 = [ASCPlatformPublicKeyCredentialLoginChoice alloc];
    v8 = [*(a1 + 40) uuid];
    v9 = [*(a1 + 40) assertionOptions];
    v10 = [v9 clientDataHash];
    v11 = [*(a1 + 40) assertionOptions];
    v12 = [v11 userVerificationPreference];
    v13 = [*(a1 + 40) creationOptions];
    v14 = [v13 supportedAlgorithmIdentifiers];
    v15 = [v7 initWithCredentialIdentity:v4 publicKeyCredentialOperationUUID:v8 clientDataHash:v10 userVerificationPreference:v12 supportedAlgorithms:v14];
  }

  return v15;
}

_WKPublicKeyCredentialParameters *__cdecl sub_1000087CC(id a1, NSNumber *a2)
{
  v2 = a2;
  v3 = [[_WKPublicKeyCredentialParameters alloc] initWithAlgorithm:v2];

  return v3;
}

uint64_t sub_100008824(void *a1)
{
  v1 = a1;
  if (([v1 isEqualToString:ASAuthorizationPublicKeyCredentialAttestationKindNone] & 1) == 0)
  {
    if ([v1 isEqualToString:ASAuthorizationPublicKeyCredentialAttestationKindIndirect])
    {
      v2 = 1;
      goto LABEL_9;
    }

    if ([v1 isEqualToString:ASAuthorizationPublicKeyCredentialAttestationKindDirect])
    {
      v2 = 2;
      goto LABEL_9;
    }

    v3 = [v1 isEqualToString:ASAuthorizationPublicKeyCredentialAttestationKindEnterprise];
    if (v3)
    {
      v2 = 3;
      goto LABEL_9;
    }

    v6 = sub_10000A644(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring unknown attestation preference %{public}@", &v7, 0xCu);
    }
  }

  v2 = 0;
LABEL_9:

  return v2;
}

id sub_100008958(void *a1, int a2)
{
  v3 = a1;
  v4 = [_WKPublicKeyCredentialDescriptor alloc];
  v5 = [v3 credentialID];
  v6 = [v4 initWithIdentifier:v5];

  if (a2)
  {
    [v6 setTransports:&off_100031EE0];
  }

  else
  {
    v7 = [v3 transports];
    if ([v7 count])
    {
      v8 = [PublicKeyCredentialManager wkSecurityKeyTransportsFromASTransports:v7];
      [v6 setTransports:v8];
    }
  }

  return v6;
}

uint64_t sub_100008A30(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:ASAuthorizationPublicKeyCredentialUserVerificationPreferenceRequired])
  {
    v2 = 0;
  }

  else
  {
    if (([v1 isEqualToString:ASAuthorizationPublicKeyCredentialUserVerificationPreferencePreferred] & 1) == 0)
    {
      v3 = [v1 isEqualToString:ASAuthorizationPublicKeyCredentialUserVerificationPreferenceDiscouraged];
      if (v3)
      {
        v2 = 2;
        goto LABEL_7;
      }

      v6 = sub_10000A644(v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543362;
        v8 = v1;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring unknown user verification preference %{public}@", &v7, 0xCu);
      }
    }

    v2 = 1;
  }

LABEL_7:

  return v2;
}

void sub_100009048(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  v8 = v7;
  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009224;
    block[3] = &unk_100031798;
    block[4] = *(a1 + 48);
    os_activity_apply(v7, block);
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000092C4;
    v19[3] = &unk_100031148;
    v20 = v6;
    os_activity_apply(v8, v19);

    v8 = v20;
  }

  v9 = [*(a1 + 32) overrideError];
  v10 = v9;
  if (!v5 && v6 && v9)
  {
    v11 = [*(a1 + 32) activity];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100009308;
    v16 = &unk_100031290;
    v17 = v6;
    v12 = v10;
    v18 = v12;
    os_activity_apply(v11, &v13);

    v6 = v12;
  }

  [*(a1 + 40) didCompleteRegistrationWithCredential:v5 error:{v6, v13, v14, v15, v16}];
}

void sub_100009224(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Completed registration: %lu.", &v5, 0xCu);
  }
}

void sub_1000092C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100020614(a1, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_100009308(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 safari_privacyPreservingDescription];
    v7 = [*(a1 + 40) safari_privacyPreservingDescription];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Replacing error %{public}@ with %{public}@", &v8, 0x16u);
  }
}

void sub_1000093F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _newPanelForOperation:*(a1 + 40)];
  if (*(a1 + 104))
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 56) clientDataHash];
    [v4 test_makeCredentialWithMediationRequirement:v3 clientDataHash:v5 options:*(a1 + 64) testOptions:*(a1 + 48) clientDataJSON:*(a1 + 72) completionHandler:*(a1 + 88)];
  }

  else
  {
    v6 = [*(a1 + 56) clientDataHash];
    v7 = *(a1 + 64);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000955C;
    v10[3] = &unk_1000317E8;
    v16 = *(a1 + 96);
    v11 = *(a1 + 80);
    v8 = *(a1 + 72);
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    v14 = *(a1 + 56);
    v15 = *(a1 + 88);
    [v2 makeCredentialWithMediationRequirement:v3 clientDataHash:v6 options:v7 completionHandler:v10];
  }
}

void sub_10000955C(void *a1, void *a2, void *a3)
{
  v26 = a2;
  v6 = a3;
  if (!v26)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v7 = a1[9];
  v8 = a1[4];
  v9 = a1[5];
  v10 = v26;
  v25 = v8;
  v11 = v9;
  v12 = [v10 transports];
  v13 = [PublicKeyCredentialManager asTransportsFromWKTransports:v12];

  v14 = [v10 extensionOutputsCBOR];
  if (v7 == 2)
  {
    v20 = [ASCSecurityKeyPublicKeyCredentialRegistration alloc];
    v16 = [v10 attestationObject];
    v17 = [v10 rawId];
    v18 = sub_10000A5B0([v10 attachment]);
    v19 = [v20 initWithRelyingPartyIdentifier:v25 attestationObject:v16 rawClientDataJSON:v11 credentialID:v17 transports:v13 extensionOutputsCBOR:v14 attachment:v18];
    goto LABEL_7;
  }

  if (v7 == 1)
  {
    v15 = [ASCPlatformPublicKeyCredentialRegistration alloc];
    v16 = [v10 attestationObject];
    v17 = [v10 rawId];
    v18 = sub_10000A5B0([v10 attachment]);
    LOBYTE(v24) = 0;
    v19 = [v15 initWithRelyingPartyIdentifier:v25 attestationObject:v16 rawClientDataJSON:v11 credentialID:v17 transports:v13 extensions:0 attachment:v18 isExternal:v24];
LABEL_7:
    v3 = v19;
  }

  v21 = a1[6];
  v22 = a1[7];
  v23 = [v10 extensionOutputsCBOR];
  [v21 handleExtensionsIfNeededForCredential:v3 withRegistrationOptions:v22 webKitExtensionOutputs:v23];

LABEL_9:
  (*(a1[8] + 16))();
}

void sub_1000098B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v3;
    v7 = [v4 uuid];
    v8 = 134218242;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating panel %p for %{public}@.", &v8, 0x16u);
  }
}

void sub_100009B6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 uuid];
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Beginning operation %{public}@ for %{public}@.", &v8, 0x16u);
  }
}

void sub_100009D34(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A644(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tearing down operation %{public}@.", &v5, 0xCu);
  }
}

void sub_10000A520(id a1)
{
  v1 = [NSSet setWithObjects:@"com.apple.webkit.webauthn", 0];
  v2 = qword_100035D18;
  qword_100035D18 = v1;

  qword_100035D20 = [qword_100035D18 safari_mapAndFilterObjectsUsingBlock:&stru_100031870];

  _objc_release_x1();
}

id sub_10000A5B0(id a1)
{
  if (a1 <= 2)
  {
    a1 = **(&off_100031890 + a1);
  }

  return a1;
}

void sub_10000A5F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_10000A628(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_10000A644(uint64_t a1, uint64_t a2)
{
  if (qword_100035D38[0] != -1)
  {
    sub_100020754();
  }

  return qword_100035D30;
}

void sub_10000A67C(id a1)
{
  qword_100035D30 = os_log_create("com.apple.AuthenticationServices", "Authorization");

  _objc_release_x1();
}

id sub_10000A9B4(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t sub_10000AA1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

id WebAuthenticationAssertionResponse.init(wkResponse:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWKResponse:a1];

  return v2;
}

{
  v2 = sub_10000B6DC(a1);

  return v2;
}

id WebAuthenticationAssertionResponse.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_10000AE68(uint64_t a1)
{
  v2 = type metadata accessor for WBSKeychainPasskey.Metadata.DataKeys();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WBSKeychainPasskey.Metadata.StringKeys();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v62 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v54 - v8;
  v10 = type metadata accessor for WBSKeychainPasskey.Metadata();
  v11 = *(v10 - 1);
  v12 = __chkstk_darwin(v10);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = &v54 - v17;
  v19 = a1;
  WBSKeychainPasskey.metadata.getter();
  v58 = *(v5 + 104);
  v58(v9, enum case for WBSKeychainPasskey.Metadata.StringKeys.name(_:), v4);
  v59 = WBSKeychainPasskey.Metadata.subscript.getter();
  v21 = v20;
  v22 = *(v5 + 8);
  v61 = v4;
  v57 = v22;
  v22(v9, v4);
  v23 = *(v11 + 8);
  v66 = v10;
  (v23)(v18, v10);
  if (v21)
  {
    v56 = v21;
    v24 = v19;
    WBSKeychainPasskey.metadata.getter();
    v26 = v64;
    v25 = v65;
    v27 = v23;
    v28 = v63;
    (v64[13])(v63, enum case for WBSKeychainPasskey.Metadata.DataKeys.userHandle(_:), v65);
    v55 = WBSKeychainPasskey.Metadata.subscript.getter();
    v30 = v29;
    v26[1](v28, v25);
    v27(v16, v66);
    v65 = v30;
    if (v30 >> 60 == 15)
    {
      v31 = type metadata accessor for WBSKeychainPasskey();
      (*(*(v31 - 8) + 8))(v24, v31);

      return 0;
    }

    else
    {
      v63 = v27;
      v64 = String._bridgeToObjectiveC()();
      v34 = v60;
      WBSKeychainPasskey.metadata.getter();
      v35 = v61;
      v36 = v62;
      v58(v62, enum case for WBSKeychainPasskey.Metadata.StringKeys.displayName(_:), v61);
      WBSKeychainPasskey.Metadata.subscript.getter();
      v38 = v37;
      v57(v36, v35);
      (v63)(v34, v66);
      if (v38)
      {
      }

      v66 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v39 = String._bridgeToObjectiveC()();

      v40 = v55;
      v41 = v65;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v43 = WBSKeychainPasskey.isSynchronizable.getter();
      WBSKeychainPasskey.group.getter();
      v44 = String._bridgeToObjectiveC()();

      v45 = WBSKeychainPasskey.credentialID.getter();
      v47 = v46;
      v48 = v24;
      v49 = Data._bridgeToObjectiveC()().super.isa;
      sub_10000B954(v45, v47);
      WBSKeychainPasskey.accessGroup.getter();
      v50 = String._bridgeToObjectiveC()();

      v51 = v64;
      v52 = [v66 initWithName:v64 displayName:v39 userHandle:isa synchronizable:v43 & 1 group:v44 credentialID:v49 accessGroup:v50];
      sub_10000B9A8(v40, v41);

      v53 = type metadata accessor for WBSKeychainPasskey();
      (*(*(v53 - 8) + 8))(v48, v53);
      return v52;
    }
  }

  else
  {
    v33 = type metadata accessor for WBSKeychainPasskey();
    (*(*(v33 - 8) + 8))(v19, v33);
    return 0;
  }
}

Swift::Int sub_10000B4C4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000B52C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

id sub_10000B598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse;
  *&v13[OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse] = 0;
  v17 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle];
  *v17 = xmmword_100025200;
  v18 = OBJC_IVAR___WebAuthenticationAssertionResponse_laContext;
  *&v13[OBJC_IVAR___WebAuthenticationAssertionResponse_laContext] = 0;
  *&v13[v16] = 0;
  v19 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_name];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_displayName];
  *v20 = a3;
  v20[1] = a4;
  v21 = *v17;
  v22 = *(v17 + 1);
  *v17 = a5;
  *(v17 + 1) = a6;
  sub_10000B9BC(a5, a6);
  sub_10000B9A8(v21, v22);
  v13[OBJC_IVAR___WebAuthenticationAssertionResponse_synchronizable] = a7;
  v23 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_group];
  *v23 = a8;
  v23[1] = a9;
  v24 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID];
  *v24 = a10;
  v24[1] = a11;
  v25 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_accessGroup];
  *v25 = a12;
  v25[1] = a13;
  v26 = *&v13[v18];
  *&v13[v18] = 0;
  sub_10000B9BC(a10, a11);

  v28.receiver = v13;
  v28.super_class = WebAuthenticationAssertionResponse;
  return objc_msgSendSuper2(&v28, "init");
}

id sub_10000B6DC(void *a1)
{
  v2 = OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse;
  *&v1[OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse] = 0;
  v3 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle];
  *&v1[OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle] = xmmword_100025200;
  v4 = OBJC_IVAR___WebAuthenticationAssertionResponse_laContext;
  *&v1[OBJC_IVAR___WebAuthenticationAssertionResponse_laContext] = 0;
  *&v1[v2] = a1;
  v5 = a1;
  v6 = [v5 name];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_name];
  *v10 = v7;
  v10[1] = v9;
  v11 = [v5 displayName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_displayName];
  *v15 = v12;
  v15[1] = v14;
  v16 = [v5 userHandle];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = *v3;
  v22 = v3[1];
  *v3 = v18;
  v3[1] = v20;
  sub_10000B9A8(v21, v22);
  v23 = [v5 synchronizable];
  v1[OBJC_IVAR___WebAuthenticationAssertionResponse_synchronizable] = v23;
  v24 = [v5 group];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_group];
  *v28 = v25;
  v28[1] = v27;
  v29 = [v5 credentialID];
  v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID];
  *v33 = v30;
  v33[1] = v32;
  v34 = [v5 accessGroup];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_accessGroup];
  *v38 = v35;
  v38[1] = v37;
  v39 = *&v1[v4];
  *&v1[v4] = 0;

  v41.receiver = v1;
  v41.super_class = WebAuthenticationAssertionResponse;
  return objc_msgSendSuper2(&v41, "init");
}

unint64_t type metadata accessor for WebAuthenticationAssertionResponse()
{
  result = qword_100035878;
  if (!qword_100035878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035878);
  }

  return result;
}

void sub_10000B954(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_10000B9A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_10000B954(a1, a2);
  }
}

void sub_10000B9BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_10000BA38(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10000BAEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BB30()
{
  v0 = type metadata accessor for Logger();
  sub_10000BBB4(v0, qword_100036040);
  sub_10000BC18(v0, qword_100036040);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10000BBB4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000BC18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000BC50()
{
  v0 = type metadata accessor for SymmetricKeySize();
  sub_10000BBB4(v0, qword_100036058);
  sub_10000BC18(v0, qword_100036058);
  return static SymmetricKeySize.bits256.getter();
}

uint64_t sub_10000BC9C()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = type metadata accessor for WBSPasskeyStore();
  v6[0] = sub_10001F88C(0, &qword_100035A90, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_100018E68(&qword_100035A98, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_10000D1D4(&qword_100035AA0, &qword_1000254B0);
  sub_10001F9F8(&qword_100035AA8, &qword_100035AA0, &qword_1000254B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  result = WBSPasskeyStore.__allocating_init(forTesting:queue:)();
  qword_100036070 = result;
  return result;
}

Swift::Int sub_10000BF34()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000BFA0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void PublicKeyCredentialManager.handleExtensionsIfNeeded(for:options:webKitExtensionOutputs:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v108 = a3;
  v101 = a2;
  v7 = sub_10000D1D4(&qword_1000359C0, &qword_1000253A0);
  __chkstk_darwin(v7 - 8);
  v94 = v85 - v8;
  v9 = sub_10000D1D4(&qword_1000359C8, &qword_1000253A8);
  __chkstk_darwin(v9 - 8);
  v102 = v85 - v10;
  v105 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.PRF();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v93 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.OperationResult();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = (v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.Operation();
  v104 = *(v100 - 8);
  __chkstk_darwin(v100);
  v88 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10000D1D4(&qword_1000359D0, &qword_1000253B0);
  __chkstk_darwin(v97);
  v106 = v85 - v14;
  v15 = sub_10000D1D4(&qword_1000359D8, &qword_1000253B8);
  __chkstk_darwin(v15 - 8);
  v96 = v85 - v16;
  v17 = sub_10000D1D4(&qword_1000359E0, &qword_1000253C0);
  v18 = __chkstk_darwin(v17 - 8);
  v95 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v107 = v85 - v21;
  __chkstk_darwin(v20);
  v99 = v85 - v22;
  v23 = sub_10000D1D4(&qword_1000359E8, &qword_1000253C8);
  __chkstk_darwin(v23 - 8);
  v92 = v85 - v24;
  v25 = sub_10000D1D4(&qword_1000359F0, &qword_1000253D0);
  __chkstk_darwin(v25 - 8);
  v27 = v85 - v26;
  v28 = type metadata accessor for ASCTAPLargeBlobExtensionOutput();
  v87 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ASCTAPExtensionOutput();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = v85 - v36;
  objc_opt_self();
  v110 = a1;
  v38 = swift_dynamicCastObjCClass();
  v109 = a4;
  v39 = a4 >> 60;
  if (v38 && v39 <= 0xE)
  {
    v40 = v38;
    type metadata accessor for CBORDecoder();
    swift_allocObject();
    swift_unknownObjectRetain();
    v42 = v108;
    v41 = v109;
    sub_100018EB0(v108, v109);
    CBORDecoder.init()();
    sub_100018E68(&qword_100035A00, &type metadata accessor for ASCTAPExtensionOutput, &protocol conformance descriptor for ASCTAPExtensionOutput);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();

    v44 = ASCTAPExtensionOutput.appID.getter();
    if (v44 == 2)
    {
      (*(v32 + 8))(v37, v31);
      swift_unknownObjectRelease();
      sub_10000B9A8(v42, v41);
    }

    else
    {
      [v40 setAppID:v44 & 1];
      swift_unknownObjectRelease();
      sub_10000B9A8(v42, v41);
      (*(v32 + 8))(v37, v31);
    }

    return;
  }

  objc_opt_self();
  v98 = swift_dynamicCastObjCClass();
  if (!v98)
  {
    return;
  }

  swift_unknownObjectRetain();
  v43 = &PublicKeyCredentialOperation__metaData;
  v86 = [v98 extensions];
  if (!v86)
  {
    v86 = [objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs()) init];
  }

  v85[1] = v4;
  if (v39 <= 0xE)
  {
    type metadata accessor for CBORDecoder();
    swift_allocObject();
    sub_10000B9BC(v108, v109);
    CBORDecoder.init()();
    sub_100018E68(&qword_100035A00, &type metadata accessor for ASCTAPExtensionOutput, &protocol conformance descriptor for ASCTAPExtensionOutput);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();

    ASCTAPExtensionOutput.largeBlob.getter();
    v45 = v87;
    if ((*(v87 + 48))(v27, 1, v28) == 1)
    {
      (*(v32 + 8))(v35, v31);
      sub_10000B9A8(v108, v109);
      sub_10001FAE8(v27, &qword_1000359F0, &qword_1000253D0);
    }

    else
    {
      (*(v45 + 32))(v30, v27, v28);
      ASCTAPLargeBlobExtensionOutput.toASCAssertion()();
      dispatch thunk of ASCPublicKeyCredentialAssertionExtensionOutputs.largeBlob.setter();
      sub_10000B9A8(v108, v109);
      (*(v45 + 8))(v30, v28);
      (*(v32 + 8))(v35, v31);
    }
  }

  v46 = v101;
  v47 = [v101 relyingPartyIdentifier];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  if (v48 == 0x6F632E656C707061 && v50 == 0xE90000000000006DLL)
  {

    v51 = v103;
    v52 = v100;
    v53 = v99;
    v54 = v107;
  }

  else
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v56 = v105;
    v51 = v103;
    v52 = v100;
    v53 = v99;
    v54 = v107;
    if ((v55 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v57 = [v46 extensions];
  v58 = v96;
  dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.largeBlob.getter();

  v59 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob();
  v60 = 1;
  if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
  {
    ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.operation.getter();
    v60 = 0;
  }

  sub_10001FAE8(v58, &qword_1000359D8, &qword_1000253B8);
  v61 = v104;
  v62 = *(v104 + 56);
  v62(v53, v60, 1, v52);
  (*(v61 + 104))(v54, enum case for ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.Operation.read(_:), v52);
  v62(v54, 0, 1, v52);
  v63 = *(v97 + 48);
  v64 = v54;
  v65 = v106;
  sub_10001F93C(v53, v106, &qword_1000359E0, &qword_1000253C0);
  sub_10001F93C(v64, v65 + v63, &qword_1000359E0, &qword_1000253C0);
  v66 = *(v61 + 48);
  if (v66(v65, 1, v52) == 1)
  {
    sub_10001FAE8(v64, &qword_1000359E0, &qword_1000253C0);
    v67 = v106;
    sub_10001FAE8(v53, &qword_1000359E0, &qword_1000253C0);
    v68 = v66(v67 + v63, 1, v52);
    v56 = v105;
    if (v68 == 1)
    {
      sub_10001FAE8(v67, &qword_1000359E0, &qword_1000253C0);
      v43 = &PublicKeyCredentialOperation__metaData;
LABEL_28:
      v76 = _sSo26PublicKeyCredentialManagerC27AuthenticationServicesAgentE21appleAccountLargeBlob3for10Foundation4DataVSgSo09ASCPublicbC16AssertionOptionsC_tF_0(v46);
      v77 = v89;
      *v89 = v76;
      v77[1] = v78;
      (*(v90 + 104))(v77, enum case for ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.OperationResult.read(_:), v91);
      v79 = v92;
      ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.init(result:)();
      v80 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob();
      (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
      dispatch thunk of ASCPublicKeyCredentialAssertionExtensionOutputs.largeBlob.setter();
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v69 = v95;
  sub_10001F93C(v65, v95, &qword_1000359E0, &qword_1000253C0);
  if (v66(v65 + v63, 1, v52) == 1)
  {
    sub_10001FAE8(v107, &qword_1000359E0, &qword_1000253C0);
    v67 = v106;
    sub_10001FAE8(v53, &qword_1000359E0, &qword_1000253C0);
    (*(v104 + 8))(v69, v52);
    v56 = v105;
LABEL_26:
    sub_10001FAE8(v67, &qword_1000359D0, &qword_1000253B0);
    v43 = &PublicKeyCredentialOperation__metaData;
    goto LABEL_29;
  }

  v70 = v104;
  v71 = v65 + v63;
  v72 = v88;
  (*(v104 + 32))(v88, v71, v52);
  sub_100018E68(&qword_1000359F8, &type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.Operation, &protocol conformance descriptor for ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.Operation);
  v73 = v65;
  v74 = dispatch thunk of static Equatable.== infix(_:_:)();
  v75 = *(v70 + 8);
  v75(v72, v52);
  sub_10001FAE8(v107, &qword_1000359E0, &qword_1000253C0);
  sub_10001FAE8(v53, &qword_1000359E0, &qword_1000253C0);
  v75(v95, v52);
  sub_10001FAE8(v73, &qword_1000359E0, &qword_1000253C0);
  v43 = &PublicKeyCredentialOperation__metaData;
  v56 = v105;
  if (v74)
  {
    goto LABEL_28;
  }

LABEL_29:
  v81 = [v46 v43[52].ivar_lyt];
  v82 = v102;
  dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.prf.getter();

  if ((*(v51 + 48))(v82, 1, v56) == 1)
  {
    sub_10001FAE8(v82, &qword_1000359C8, &qword_1000253A8);
    v83 = v86;
  }

  else
  {
    v84 = v93;
    (*(v51 + 32))(v93, v82, v56);
    sub_10000D220(v98, v94);
    v83 = v86;
    dispatch thunk of ASCPublicKeyCredentialAssertionExtensionOutputs.prf.setter();
    (*(v51 + 8))(v84, v56);
  }

  [v98 setExtensions:v83];
  swift_unknownObjectRelease();
}

{
  v64 = a4;
  v60 = a3;
  v61 = a2;
  v6 = sub_10000D1D4(&qword_100035A08, &qword_1000253D8);
  v7 = __chkstk_darwin(v6 - 8);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v48 - v9;
  v10 = sub_10000D1D4(&qword_100035A10, &qword_1000253E0);
  v11 = __chkstk_darwin(v10 - 8);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v48 - v13;
  v14 = sub_10000D1D4(&qword_100035A18, &qword_1000253E8);
  __chkstk_darwin(v14 - 8);
  v16 = &v48 - v15;
  v17 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs.PRF();
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  __chkstk_darwin(v17);
  v57 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000D1D4(&qword_100035A20, &unk_1000253F0);
  __chkstk_darwin(v20 - 8);
  v21 = sub_10000D1D4(&qword_1000359F0, &qword_1000253D0);
  __chkstk_darwin(v21 - 8);
  v23 = &v48 - v22;
  v24 = type metadata accessor for ASCTAPLargeBlobExtensionOutput();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ASCTAPExtensionOutput();
  v54 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v49 = v25;
    v50 = v4;
    v32 = v31;
    swift_unknownObjectRetain();
    v58 = v32;
    v59 = [v32 extensions];
    if (!v59)
    {
      v59 = [objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs()) init];
    }

    if (v64 >> 60 != 15)
    {
      v51 = a1;
      v33 = v64;
      type metadata accessor for CBORDecoder();
      swift_allocObject();
      sub_10000B9BC(v60, v33);
      CBORDecoder.init()();
      sub_100018E68(&qword_100035A00, &type metadata accessor for ASCTAPExtensionOutput, &protocol conformance descriptor for ASCTAPExtensionOutput);
      dispatch thunk of CBORDecoder.decode<A>(_:from:)();

      ASCTAPExtensionOutput.largeBlob.getter();
      v34 = v49;
      if ((*(v49 + 48))(v23, 1, v24) == 1)
      {
        (*(v54 + 8))(v30, v28);
        sub_10000B9A8(v60, v64);
        sub_10001FAE8(v23, &qword_1000359F0, &qword_1000253D0);
      }

      else
      {
        (*(v34 + 32))(v27, v23, v24);
        ASCTAPLargeBlobExtensionOutput.toASCRegistration()();
        dispatch thunk of ASCPublicKeyCredentialRegistrationExtensionOutputs.largeBlob.setter();
        sub_10000B9A8(v60, v64);
        (*(v34 + 8))(v27, v24);
        (*(v54 + 8))(v30, v28);
      }

      a1 = v51;
    }

    v35 = [v61 extensions];
    dispatch thunk of ASCPublicKeyCredentialRegistrationExtensionInputs.prf.getter();

    v37 = v62;
    v36 = v63;
    if ((*(v63 + 48))(v16, 1, v62) == 1)
    {
      sub_10001FAE8(v16, &qword_100035A18, &qword_1000253E8);
    }

    else
    {
      v38 = v57;
      (*(v36 + 32))(v57, v16, v37);
      if (ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.shouldCheckForSupport.getter())
      {
        v51 = a1;
        v39 = v56;
        sub_10000E070(v58, v56);
        v40 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF();
        v41 = *(v40 - 8);
        v42 = *(v41 + 48);
        if (v42(v39, 1, v40) == 1)
        {
          v43 = type metadata accessor for SymmetricKey();
          v44 = *(*(v43 - 8) + 56);
          v44(v52, 1, 1, v43);
          v44(v53, 1, 1, v43);
          v36 = v63;
          v45 = v55;
          v46 = v56;
          v38 = v57;
          ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF.init(isSupported:secret1:secret2:)();
          if (v42(v46, 1, v40) != 1)
          {
            sub_10001FAE8(v46, &qword_100035A10, &qword_1000253E0);
          }
        }

        else
        {
          v45 = v55;
          (*(v41 + 32))(v55, v39, v40);
        }

        (*(v41 + 56))(v45, 0, 1, v40);
        v47 = v59;
        dispatch thunk of ASCPublicKeyCredentialRegistrationExtensionOutputs.prf.setter();
        (*(v36 + 8))(v38, v37);
        goto LABEL_19;
      }

      (*(v36 + 8))(v38, v37);
    }

    v47 = v59;
LABEL_19:
    [v58 setExtensions:v47];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000D1D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000D220@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000D1D4(&qword_100035C08, &qword_100025598);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_10000D1D4(&qword_100035C10, &qword_1000255A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v42 = sub_10000D1D4(&qword_100035C18, &qword_1000255A8);
  __chkstk_darwin(v42);
  v11 = &v38 - v10;
  v12 = sub_10000D1D4(&qword_100035A08, &qword_1000253D8);
  v13 = __chkstk_darwin(v12 - 8);
  v41 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v40 = &v38 - v15;
  v16 = type metadata accessor for SymmetricKey();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v38 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v39 = &v38 - v20;
  v21 = [a1 credentialID];
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  ASCPublicKeyCredentialAssertionExtensionInputs.PRF.inputValues.getter();
  v25 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.perCredentialInputValues.getter();
  sub_10001182C(v22, v24, v6, v25, v9);

  sub_10000B954(v22, v24);
  sub_10001FAE8(v6, &qword_100035C08, &qword_100025598);
  v26 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
  if ((*(*(v26 - 8) + 48))(v9, 1, v26) == 1)
  {
    sub_10001FAE8(v9, &qword_100035C10, &qword_1000255A0);
    v27 = 1;
  }

  else
  {
    v28 = *(v26 + 48);
    v29 = v42;
    v30 = *(v42 + 48);
    v31 = a2;
    v32 = *(v17 + 32);
    v32(v11, v9, v16);
    sub_10001F8D4(&v9[v28], &v11[v30], &qword_100035A08, &qword_1000253D8);
    v33 = *(v29 + 48);
    v34 = v39;
    v32(v39, v11, v16);
    a2 = v31;
    v35 = v40;
    sub_10001F8D4(&v11[v33], v40, &qword_100035A08, &qword_1000253D8);
    (*(v17 + 16))(v38, v34, v16);
    sub_10001F93C(v35, v41, &qword_100035A08, &qword_1000253D8);
    ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.init(secret1:secret2:)();
    sub_10001FAE8(v35, &qword_100035A08, &qword_1000253D8);
    (*(v17 + 8))(v34, v16);
    v27 = 0;
  }

  v36 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF();
  return (*(*(v36 - 8) + 56))(a2, v27, 1, v36);
}

uint64_t sub_10000E070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_10000D1D4(&qword_100035C08, &qword_100025598);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = sub_10000D1D4(&qword_100035C10, &qword_1000255A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v38 = sub_10000D1D4(&qword_100035C18, &qword_1000255A8);
  __chkstk_darwin(v38);
  v10 = &v38 - v9;
  v11 = sub_10000D1D4(&qword_100035A08, &qword_1000253D8);
  v12 = __chkstk_darwin(v11 - 8);
  v41 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v40 = &v38 - v15;
  __chkstk_darwin(v14);
  v39 = &v38 - v16;
  v17 = type metadata accessor for SymmetricKey();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 credentialID];
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.inputValues.getter();
  v25 = ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.perCredentialInputValues.getter();
  sub_10001182C(v22, v24, v5, v25, v8);

  sub_10000B954(v22, v24);
  sub_10001FAE8(v5, &qword_100035C08, &qword_100025598);
  v26 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
  if ((*(*(v26 - 8) + 48))(v8, 1, v26) == 1)
  {
    sub_10001FAE8(v8, &qword_100035C10, &qword_1000255A0);
    v27 = 1;
    v28 = v42;
  }

  else
  {
    v29 = *(v26 + 48);
    v30 = v38;
    v31 = *(v38 + 48);
    v32 = *(v18 + 32);
    v32(v10, v8, v17);
    sub_10001F8D4(&v8[v29], &v10[v31], &qword_100035A08, &qword_1000253D8);
    v33 = *(v30 + 48);
    v32(v20, v10, v17);
    v34 = v39;
    sub_10001F8D4(&v10[v33], v39, &qword_100035A08, &qword_1000253D8);
    v35 = v40;
    (*(v18 + 16))(v40, v20, v17);
    (*(v18 + 56))(v35, 0, 1, v17);
    sub_10001F93C(v34, v41, &qword_100035A08, &qword_1000253D8);
    v28 = v42;
    ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF.init(isSupported:secret1:secret2:)();
    sub_10001FAE8(v34, &qword_100035A08, &qword_1000253D8);
    (*(v18 + 8))(v20, v17);
    v27 = 0;
  }

  v36 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF();
  return (*(*(v36 - 8) + 56))(v28, v27, 1, v36);
}

void sub_10000E544(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(uint64_t, void *, uint64_t, unint64_t))
{
  if (a5)
  {
    swift_unknownObjectRetain();
    v10 = a4;
    v11 = a1;
    v12 = a5;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    swift_unknownObjectRetain();
    v16 = a4;
    v17 = a1;
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  a6(a3, a4, v13, v15);
  sub_10000B9A8(v13, v15);
  swift_unknownObjectRelease();
}

uint64_t sub_10000E630(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = Data._Representation.subscript.getter();
  v4 = 0;
  return v3 | (v4 << 8);
}

Class sub_10000E6E8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, unint64_t, id))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = a5(v11, v13, v9);
  v16 = v15;
  sub_10000B954(v11, v13);

  v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10000B954(v14, v16);

  return v17.super.isa;
}

uint64_t sub_10000E96C(int a1, void *a2, void *a3, void *a4, void *a5, void *aBlock, void *a7)
{
  v7[3] = a4;
  v7[4] = a7;
  v7[2] = a3;
  v7[5] = _Block_copy(aBlock);
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v7[6] = v18;
  v7[7] = v20;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v7[8] = v21;
  v7[9] = v23;
  v24 = swift_task_alloc();
  v7[10] = v24;
  *v24 = v7;
  v24[1] = sub_10000EAA4;

  return sub_10001A0B8(v14, v21, v23);
}

uint64_t sub_10000EAA4(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = v5[7];
  v11 = v5[6];
  v12 = v5[5];
  sub_10000B954(v5[8], v5[9]);
  sub_10000B954(v11, v10);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (v12)[2](v12, 0, v13);

    _Block_release(v12);
  }

  else
  {
    v12[2](v12, a1, 0);
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_10000ECE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Data.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = a3 + 56;
  v8 = -1 << *(a3 + 32);
  v9 = v6 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v78 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v76 = v14;
  v74 = (a1 >> 32) - a1;
  v75 = a1 >> 32;
  v77 = v10;
  while (1)
  {
    v15 = (*(a3 + 48) + 16 * v9);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || a2 >> 62 != 3;
      if (((v21 | v78) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_37;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_147;
      }

      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_146;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_34:
        v26 = BYTE6(a2);
        if (v11)
        {
          v26 = HIDWORD(a1) - a1;
          if (v76)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v11 != 2)
    {
      if (!v22)
      {
        return 1;
      }

      goto LABEL_14;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_145;
    }

LABEL_40:
    if (v22 != v26)
    {
      goto LABEL_14;
    }

    if (v22 < 1)
    {
      return 1;
    }

    if (v18 > 1)
    {
      break;
    }

    if (!v18)
    {
      *__s1 = v17;
      *&__s1[8] = v16;
      __s1[10] = BYTE2(v16);
      __s1[11] = BYTE3(v16);
      __s1[12] = BYTE4(v16);
      __s1[13] = BYTE5(v16);
      if (!v11)
      {
        goto LABEL_93;
      }

      if (v11 != 1)
      {
        v49 = *(a1 + 16);
        v71 = *(a1 + 24);
        sub_10000B9BC(v17, v16);
        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v50 = __DataStorage._offset.getter();
          if (__OFSUB__(v49, v50))
          {
            goto LABEL_162;
          }

          v44 += v49 - v50;
        }

        v25 = __OFSUB__(v71, v49);
        v46 = v71 - v49;
        if (v25)
        {
          goto LABEL_154;
        }

        v47 = __DataStorage._length.getter();
        if (!v44)
        {
          goto LABEL_169;
        }

LABEL_100:
        if (v47 >= v46)
        {
          v42 = v46;
        }

        else
        {
          v42 = v47;
        }

        result = __s1;
        v51 = v44;
        goto LABEL_136;
      }

      if (v75 < a1)
      {
        goto LABEL_151;
      }

      sub_10000B9BC(v17, v16);
      v29 = __DataStorage._bytes.getter();
      if (!v29)
      {
        goto LABEL_172;
      }

      v30 = v29;
      v31 = __DataStorage._offset.getter();
      if (__OFSUB__(a1, v31))
      {
        goto LABEL_157;
      }

      v32 = (a1 - v31 + v30);
      result = __DataStorage._length.getter();
      if (!v32)
      {
        goto LABEL_173;
      }

LABEL_108:
      if (result >= v74)
      {
        v55 = (a1 >> 32) - a1;
      }

      else
      {
        v55 = result;
      }

      v56 = __s1;
      v57 = v32;
      goto LABEL_139;
    }

    if (v17 > v17 >> 32)
    {
      goto LABEL_148;
    }

    sub_10000B9BC(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v40))
      {
        goto LABEL_150;
      }

      v35 += v17 - v40;
    }

    __DataStorage._length.getter();
    v7 = a3 + 56;
    if (v11 == 2)
    {
      v69 = v35;
      v63 = *(a1 + 16);
      v73 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v64 = __DataStorage._offset.getter();
        if (__OFSUB__(v63, v64))
        {
          goto LABEL_165;
        }

        v37 += v63 - v64;
      }

      v25 = __OFSUB__(v73, v63);
      v65 = v73 - v63;
      if (v25)
      {
        goto LABEL_160;
      }

      v66 = __DataStorage._length.getter();
      if (v66 >= v65)
      {
        v62 = v65;
      }

      else
      {
        v62 = v66;
      }

      result = v69;
      if (!v69)
      {
        goto LABEL_180;
      }

      if (!v37)
      {
        goto LABEL_179;
      }

LABEL_133:
      if (result == v37)
      {
LABEL_143:
        sub_10000B954(v17, v16);
        return 1;
      }

      v42 = v62;
      goto LABEL_135;
    }

    if (v11 == 1)
    {
      if (v75 < a1)
      {
        goto LABEL_159;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v41 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v41))
        {
          goto LABEL_166;
        }

        v37 += a1 - v41;
      }

      result = __DataStorage._length.getter();
      v39 = (a1 >> 32) - a1;
      if (result < v74)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_182;
      }

      if (!v37)
      {
        goto LABEL_181;
      }

LABEL_83:
      if (v35 == v37)
      {
        goto LABEL_143;
      }

      v42 = v39;
      result = v35;
LABEL_135:
      v51 = v37;
LABEL_136:
      v67 = memcmp(result, v51, v42);
      sub_10000B954(v17, v16);
      v7 = a3 + 56;
      goto LABEL_140;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_171;
    }

LABEL_138:
    v57 = __s1;
    v56 = v35;
    v55 = BYTE6(a2);
LABEL_139:
    v67 = memcmp(v56, v57, v55);
    sub_10000B954(v17, v16);
LABEL_140:
    v10 = v77;
    if (!v67)
    {
      return 1;
    }

LABEL_14:
    v9 = (v9 + 1) & v10;
    if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_10000B9BC(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_149;
      }

      v35 += v34 - v36;
    }

    result = __DataStorage._length.getter();
    v7 = a3 + 56;
    if (v11 == 2)
    {
      v68 = v35;
      v58 = *(a1 + 16);
      v72 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v59 = __DataStorage._offset.getter();
        if (__OFSUB__(v58, v59))
        {
          goto LABEL_163;
        }

        v37 += v58 - v59;
      }

      v25 = __OFSUB__(v72, v58);
      v60 = v72 - v58;
      if (v25)
      {
        goto LABEL_158;
      }

      v61 = __DataStorage._length.getter();
      if (v61 >= v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v61;
      }

      result = v68;
      if (!v68)
      {
        goto LABEL_178;
      }

      if (!v37)
      {
        goto LABEL_177;
      }

      goto LABEL_133;
    }

    if (v11 == 1)
    {
      if (v75 < a1)
      {
        goto LABEL_153;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v38))
        {
          goto LABEL_164;
        }

        v37 += a1 - v38;
      }

      result = __DataStorage._length.getter();
      v39 = (a1 >> 32) - a1;
      if (result < v74)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_176;
      }

      if (!v37)
      {
        goto LABEL_175;
      }

      goto LABEL_83;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_174;
    }

    goto LABEL_138;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v11)
  {
LABEL_93:
    __s2 = a1;
    v80 = a2;
    v81 = BYTE2(a2);
    v82 = BYTE3(a2);
    v83 = BYTE4(a2);
    v84 = BYTE5(a2);
    v48 = memcmp(__s1, &__s2, BYTE6(a2));
    v10 = v77;
    if (!v48)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v70 = *(a1 + 24);
    sub_10000B9BC(v17, v16);
    v44 = __DataStorage._bytes.getter();
    if (v44)
    {
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v45))
      {
        goto LABEL_161;
      }

      v44 += v43 - v45;
    }

    v25 = __OFSUB__(v70, v43);
    v46 = v70 - v43;
    if (v25)
    {
      goto LABEL_155;
    }

    v47 = __DataStorage._length.getter();
    if (!v44)
    {
      goto LABEL_170;
    }

    goto LABEL_100;
  }

  if (v75 < a1)
  {
    goto LABEL_152;
  }

  sub_10000B9BC(v17, v16);
  v52 = __DataStorage._bytes.getter();
  if (v52)
  {
    v53 = v52;
    v54 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v54))
    {
      goto LABEL_156;
    }

    v32 = (a1 - v54 + v53);
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_168;
    }

    goto LABEL_108;
  }

  __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  result = __DataStorage._length.getter();
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_10000F5A8(uint64_t a1, void *a2)
{
  v3 = sub_10001F664((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10000F60C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_10000D1D4(&qword_100035B90, &qword_100025528);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ASCTAPAuthData.Flags();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_100018E68(&qword_100035B50, &type metadata accessor for ASCTAPAuthData.Flags, &protocol conformance descriptor for ASCTAPAuthData.Flags);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_100018E68(&qword_100035B98, &type metadata accessor for ASCTAPAuthData.Flags, &protocol conformance descriptor for ASCTAPAuthData.Flags);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_10001F8D4(v7, v27, &qword_100035B90, &qword_100025528);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_10000FAB8(int a1, void *a2, void *a3, void *a4, void *aBlock, void *a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a3;
  v6[5] = _Block_copy(aBlock);
  v11 = a2;
  v12 = a3;
  v13 = a4;
  a6;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v6[6] = v14;
  v6[7] = v16;
  v17 = swift_task_alloc();
  v6[8] = v17;
  *v17 = v6;
  v17[1] = sub_10000FBD8;

  return sub_10001B5D4(v14, v16, v12, v13);
}

uint64_t sub_10000FBD8(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = v5[5];
  sub_10000B954(v5[6], v5[7]);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    v10[2](v10, a1, 0);
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10000FF68(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_100010050;

  return sub_10001DB9C(v5, v7);
}

uint64_t sub_100010050(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v7 = *v1;

  sub_10001F88C(0, &qword_100035A78, WBSWebBrowserPasskey_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

Swift::Bool __swiftcall PublicKeyCredentialManager.passkeyExists(relyingParty:username:)(Swift::String relyingParty, Swift::String username)
{
  object = username._object;
  countAndFlagsBits = username._countAndFlagsBits;
  v2 = relyingParty._object;
  v3 = relyingParty._countAndFlagsBits;
  v37 = type metadata accessor for WBSKeychainPasskey.Metadata.StringKeys();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for WBSKeychainPasskey.Metadata();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WBSKeychainPasskey();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000105AC(v3, v2);
  v34 = v13[2];
  if (v34)
  {
    v14 = 0;
    v32 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v29 = enum case for WBSKeychainPasskey.Metadata.StringKeys.name(_:);
    v27 = (v4 + 8);
    v28 = (v4 + 104);
    v15 = (v6 + 8);
    v30 = v10 + 16;
    v31 = (v10 + 8);
    v33 = v13;
    v16 = v36;
    while (v14 < v13[2])
    {
      v17 = v10;
      (*(v10 + 16))(v12, &v32[*(v10 + 72) * v14], v9);
      WBSKeychainPasskey.metadata.getter();
      v18 = v9;
      v19 = v37;
      (*v28)(v16, v29, v37);
      v20 = WBSKeychainPasskey.Metadata.subscript.getter();
      v22 = v21;
      (*v27)(v16, v19);
      (*v15)(v8, v35);
      if (v22)
      {
        if (v20 == countAndFlagsBits && v22 == object)
        {

          (*v31)(v12, v18);
LABEL_13:

          LOBYTE(v13) = 1;
          return v13;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v9 = v18;
        (*v31)(v12, v18);
        if (v23)
        {
          goto LABEL_13;
        }
      }

      else
      {
        (*v31)(v12, v18);
        v9 = v18;
      }

      ++v14;
      v13 = v33;
      v10 = v17;
      if (v34 == v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    LOBYTE(v13) = 0;
  }

  return v13;
}

void *sub_1000105AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D1D4(&qword_100035BE8, &qword_100025580);
  __chkstk_darwin(v4 - 8);
  v57 = &v51 - v5;
  v54 = type metadata accessor for WBSKeychainPasskey();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D1D4(&qword_100035BF0, &qword_100025588);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100025340;
  type metadata accessor for CFString(0);
  v9 = v8;
  *(v7 + 32) = kSecClass;
  *(v7 + 56) = v8;
  *(v7 + 64) = kSecClassKey;
  *(v7 + 120) = v8;
  *(v7 + 88) = v8;
  *(v7 + 96) = kSecAttrSynchronizable;
  *(v7 + 128) = 1;
  *(v7 + 152) = &type metadata for Bool;
  *(v7 + 160) = kSecAttrLabel;
  *(v7 + 184) = v8;
  *(v7 + 192) = a1;
  *(v7 + 200) = a2;
  *(v7 + 248) = v8;
  *(v7 + 216) = &type metadata for String;
  *(v7 + 224) = kSecUseDataProtectionKeychain;
  *(v7 + 256) = 1;
  *(v7 + 312) = v8;
  *(v7 + 280) = &type metadata for Bool;
  *(v7 + 288) = kSecReturnAttributes;
  *(v7 + 320) = 1;
  *(v7 + 376) = v8;
  *(v7 + 344) = &type metadata for Bool;
  *(v7 + 352) = kSecAttrAccessGroup;
  v10 = kSecClass;
  v11 = kSecClassKey;
  v12 = kSecAttrSynchronizable;
  v13 = kSecAttrLabel;

  v14 = kSecUseDataProtectionKeychain;
  v15 = kSecReturnAttributes;
  v16 = kSecAttrAccessGroup;
  v17 = [v58 isForTesting];
  v18 = 0xD000000000000019;
  if (v17)
  {
    v18 = 0xD000000000000021;
    v19 = "com.apple.webkit.webauthn";
  }

  else
  {
    v19 = "Should not be reached";
  }

  *(v7 + 384) = v18;
  *(v7 + 392) = v19 | 0x8000000000000000;
  *(v7 + 408) = &type metadata for String;
  *(v7 + 416) = kSecMatchLimit;
  *(v7 + 472) = v9;
  *(v7 + 440) = v9;
  *(v7 + 448) = kSecMatchLimitAll;
  sub_10001F88C(0, &qword_100035BF8, NSMutableDictionary_ptr);
  v20 = kSecMatchLimit;
  v21 = kSecMatchLimitAll;
  v22 = NSDictionary.init(dictionaryLiteral:)();
  result = 0;
  v23 = SecItemCopyMatching(v22, &result);
  if (v23)
  {
    LODWORD(v24) = v23;
    if (qword_1000357F0 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_6;
  }

  v29 = v57;
  if (!result || (v60 = result, swift_unknownObjectRetain(), sub_10000D1D4(&qword_100035C00, &qword_100025590), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000BC18(v44, qword_100036040);
    v26 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v45))
    {
      goto LABEL_40;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138477827;
    swift_beginAccess();
    if (result)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
        v49 = v48;
LABEL_38:
        *(v46 + 4) = v48;
        *v47 = v49;
        _os_log_impl(&_mh_execute_header, v26, v45, "Unexpected keychain response: %{private}@", v46, 0xCu);
        sub_10001FAE8(v47, &qword_100035A40, "zT");

LABEL_39:

LABEL_40:

        swift_unknownObjectRelease();
        return _swiftEmptyArrayStorage;
      }

      swift_unknownObjectRelease();
    }

    v48 = 0;
    v49 = 0;
    goto LABEL_38;
  }

  v30 = v59;
  if (v59 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v54;
  v33 = v55;
  v52 = v22;
  if (v31)
  {
    v34 = 0;
    v35 = v30 & 0xC000000000000001;
    v36 = (v56 + 48);
    v57 = (v56 + 32);
    v58 = (v30 & 0xFFFFFFFFFFFFFF8);
    v24 = _swiftEmptyArrayStorage;
    v53 = v30 & 0xC000000000000001;
    while (1)
    {
      if (v35)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v34 >= *(v58 + 2))
        {
          goto LABEL_43;
        }

        v37 = *(v30 + 8 * v34 + 32);
        v22 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          swift_once();
LABEL_6:
          v25 = type metadata accessor for Logger();
          sub_10000BC18(v25, qword_100036040);
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 67240192;
            *(v28 + 4) = v24;
            _os_log_impl(&_mh_execute_header, v26, v27, "Could not fetch passkey: %{public}d", v28, 8u);
            goto LABEL_39;
          }

          goto LABEL_40;
        }
      }

      WBSKeychainPasskey.init(keychainDictionary:)();
      if ((*v36)(v29, 1, v32) == 1)
      {
        sub_10001FAE8(v29, &qword_100035BE8, &qword_100025580);
      }

      else
      {
        v38 = v31;
        v39 = v30;
        v40 = *v57;
        (*v57)(v33, v29, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_100013D84(0, v24[2] + 1, 1, v24);
        }

        v42 = v24[2];
        v41 = v24[3];
        if (v42 >= v41 >> 1)
        {
          v24 = sub_100013D84((v41 > 1), v42 + 1, 1, v24);
        }

        v24[2] = v42 + 1;
        v33 = v55;
        v43 = v24 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v42;
        v32 = v54;
        v40(v43, v55, v54);
        v30 = v39;
        v31 = v38;
        v35 = v53;
      }

      ++v34;
      if (v22 == v31)
      {
        goto LABEL_35;
      }
    }
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_35:

  swift_unknownObjectRelease();
  return v24;
}

uint64_t sub_100010EA8(unint64_t a1)
{
  v3 = sub_10000D1D4(&qword_1000359C8, &qword_1000253A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v48 - v4;
  v6 = sub_10000D1D4(&qword_100035A58, &qword_100025440);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for ASCTAPUserVerificationRequirement();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v48 - v14;
  v51 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v50 = v8;
    v65 = _swiftEmptyArrayStorage;
    v8 = (v15 & ~(v15 >> 63));
    v17 = v1;
    v1 = &v65;
    result = sub_100016A88(0, v8, 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v49 = v17;
      v19 = a1;
      a1 = 0;
      v16 = v65;
      v62 = v19 & 0xC000000000000001;
      v63 = v19;
      v57 = v19 & 0xFFFFFFFFFFFFFF8;
      v58 = enum case for ASCTAPUserVerificationRequirement.required(_:);
      v61 = (v10 + 104);
      v54 = ASAuthorizationPublicKeyCredentialUserVerificationPreferenceRequired;
      v52 = ASAuthorizationPublicKeyCredentialUserVerificationPreferenceDiscouraged;
      v53 = enum case for ASCTAPUserVerificationRequirement.preferred(_:);
      v59 = v10 + 32;
      v60 = v15;
      v55 = v13;
      v56 = v9;
      while (1)
      {
        if (v62)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((a1 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            v15 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }

          if (a1 >= *(v57 + 16))
          {
            goto LABEL_46;
          }

          v20 = *(v63 + 8 * a1 + 32);
        }

        v21 = v20;
        v1 = [v20 extensions];
        dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.prf.getter();

        v22 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.PRF();
        v23 = (*(*(v22 - 8) + 48))(v5, 1, v22);
        sub_10001FAE8(v5, &qword_1000359C8, &qword_1000253A8);
        if (v23 != 1)
        {
          break;
        }

        v24 = [v21 userVerificationPreference];
        if (v24)
        {
          v1 = v24;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
          if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
          {

LABEL_24:
            v29 = *v61;
LABEL_25:
            v13 = v55;
            v9 = v56;
LABEL_26:
            v30 = v13;
            v31 = v58;
            goto LABEL_27;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v33 = v1;

          if (v32)
          {

            goto LABEL_24;
          }

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1 = v38;
          if (v34 == v37 && v36 == v38)
          {

            goto LABEL_24;
          }

          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v29 = *v61;
          if (v41)
          {
            goto LABEL_25;
          }

          v13 = v55;
          v9 = v56;
        }

        else
        {
          v29 = *v61;
        }

        v30 = v13;
        v31 = v53;
LABEL_27:
        v29(v30, v31, v9);

        v65 = v16;
        v40 = v16[2];
        v39 = v16[3];
        v8 = (v40 + 1);
        if (v40 >= v39 >> 1)
        {
          v1 = &v65;
          sub_100016A88((v39 > 1), v40 + 1, 1);
          v16 = v65;
        }

        ++a1;
        v16[2] = v8;
        (*(v10 + 32))(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v40, v13, v9);
        if (v60 == a1)
        {

          a1 = v63;
          v8 = v50;
          goto LABEL_33;
        }
      }

      v29 = *v61;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_33:
  sub_100011508(v16, v8);

  result = (*(v10 + 48))(v8, 1, v9);
  if (result != 1)
  {
    result = (*(v10 + 32))(v64, v8, v9);
    if (v51)
    {
      v42 = v9;
      result = _CocoaArrayWrapper.endIndex.getter();
      v43 = result;
      if (!result)
      {
        return (*(v10 + 8))(v64, v42);
      }
    }

    else
    {
      v42 = v9;
      v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        return (*(v10 + 8))(v64, v42);
      }
    }

    if (v43 < 1)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v44 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v45 = *(a1 + 8 * v44 + 32);
      }

      v46 = v45;
      ++v44;
      ASCTAPUserVerificationRequirement.rawValue.getter();
      v47 = String._bridgeToObjectiveC()();

      [v46 setUserVerificationPreference:v47];
    }

    while (v43 != v44);
    return (*(v10 + 8))(v64, v42);
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_100011508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ASCTAPUserVerificationRequirement();
  v5 = __chkstk_darwin(*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_100018E68(&qword_100035A60, &type metadata accessor for ASCTAPUserVerificationRequirement, &protocol conformance descriptor for ASCTAPUserVerificationRequirement);
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10001182C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v140 = a5;
  v130 = a3;
  v131 = a4;
  v144 = a2;
  v6 = sub_10000D1D4(&qword_100035A08, &qword_1000253D8);
  __chkstk_darwin(v6 - 8);
  v122 = &v110 - v7;
  v121 = sub_10000D1D4(&qword_100035C28, &qword_1000255B8);
  __chkstk_darwin(v121);
  v120 = &v110 - v8;
  v9 = sub_10000D1D4(&qword_100035C08, &qword_100025598);
  __chkstk_darwin(v9 - 8);
  v129 = &v110 - v10;
  v11 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues();
  v12 = *(v11 - 8);
  v135 = v11;
  v136 = v12;
  __chkstk_darwin(v11);
  v138 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for SymmetricKeySize();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SymmetricKey();
  v133 = *(v15 - 8);
  v134 = v15;
  v16 = __chkstk_darwin(v15);
  v132 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v119 = &v110 - v19;
  __chkstk_darwin(v18);
  v125 = &v110 - v20;
  v139 = type metadata accessor for WBSKeychainPasskey.Metadata();
  v142 = *(v139 - 8);
  v21 = __chkstk_darwin(v139);
  v124 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v110 - v23;
  v143 = type metadata accessor for WBSKeychainPasskey.Metadata.DataKeys();
  v25 = *(v143 - 8);
  v26 = __chkstk_darwin(v143);
  v123 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v110 - v29;
  __chkstk_darwin(v28);
  v32 = &v110 - v31;
  v33 = sub_10000D1D4(&qword_100035BE8, &qword_100025580);
  __chkstk_darwin(v33 - 8);
  v35 = &v110 - v34;
  v36 = type metadata accessor for WBSKeychainPasskey();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v110 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = a1;
  sub_10001274C(0, v35);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    v40 = v140;
    sub_10001FAE8(v35, &qword_100035BE8, &qword_100025580);
    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000BC18(v41, qword_100036040);
    v42 = v137;
    v43 = v144;
    sub_10000B9BC(v137, v144);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    sub_10000B954(v42, v43);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v145 = v47;
      *v46 = 141558275;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      v48 = Data.hexString()();
      v49 = sub_100014068(v48._countAndFlagsBits, v48._object, &v145);

      *(v46 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v44, v45, "Could not find passkey with credentialID %{private,mask.hash}s).", v46, 0x16u);
      sub_10001F5C4(v47);
    }

    v50 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
    v51 = *(*(v50 - 8) + 56);
    v52 = v40;
    goto LABEL_23;
  }

  v116 = v30;
  v118 = v37;
  v53 = *(v37 + 32);
  v141 = v36;
  v53(v39, v35, v36);
  v54 = enum case for WBSKeychainPasskey.Metadata.DataKeys.prfCredRandomWithUV(_:);
  v55 = *(v25 + 104);
  v56 = v143;
  v55(v32, enum case for WBSKeychainPasskey.Metadata.DataKeys.prfCredRandomWithUV(_:), v143);
  WBSKeychainPasskey.metadata.getter();
  v115 = WBSKeychainPasskey.Metadata.subscript.getter();
  v58 = v57;
  v59 = v142 + 8;
  v60 = v24;
  v61 = v139;
  v112 = *(v142 + 8);
  v112(v60, v139);
  v62 = *(v25 + 8);
  v114 = v25 + 8;
  v111 = v62;
  v62(v32, v56);
  v113 = v54;
  v117 = v55;
  if (v58 >> 60 == 15)
  {
    v142 = v59;
    v55(v116, v54, v143);
    if (qword_1000357F8 != -1)
    {
      swift_once();
    }

    v63 = v128;
    v64 = sub_10000BC18(v128, qword_100036058);
    (*(v127 + 16))(v126, v64, v63);
    v65 = v125;
    SymmetricKey.init(size:)();
    SymmetricKey.rawData.getter();
    (*(v133 + 8))(v65, v134);
    v66 = WBSKeychainPasskey.metadata.modify();
    WBSKeychainPasskey.Metadata.subscript.setter();
    v66(&v145, 0);
    v67 = sub_1000190CC();
    v68 = v139;
    if ((v67 & 1) == 0)
    {
      if (qword_1000357F0 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_10000BC18(v69, qword_100036040);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();
      v72 = os_log_type_enabled(v70, v71);
      v73 = v140;
      v74 = v118;
      if (v72)
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "Could not save PRF seeds to keychain.", v75, 2u);
      }

      (*(v74 + 8))(v39, v141);
      v50 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
      v51 = *(*(v50 - 8) + 56);
      v52 = v73;
      goto LABEL_23;
    }
  }

  else
  {
    v76 = v58;
    v68 = v61;
    sub_10000B9A8(v115, v76);
  }

  v77 = v68;
  v78 = v131;
  if (v131 && *(v131 + 16) && (v79 = sub_1000146C4(v137, v144, &Data.hash(into:), sub_100015404), (v80 & 1) != 0))
  {
    v81 = v135;
    (*(v136 + 16))(v138, *(v78 + 56) + *(v136 + 72) * v79, v135);
    v82 = v143;
    v83 = v117;
  }

  else
  {
    v84 = v129;
    sub_10001F93C(v130, v129, &qword_100035C08, &qword_100025598);
    v81 = v135;
    v85 = v136;
    v86 = (*(v136 + 48))(v84, 1, v135);
    v82 = v143;
    v83 = v117;
    if (v86 == 1)
    {
      (*(v118 + 8))(v39, v141);
      sub_10001FAE8(v84, &qword_100035C08, &qword_100025598);
      v50 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
      v51 = *(*(v50 - 8) + 56);
      v52 = v140;
LABEL_23:
      v87 = 1;
      return v51(v52, v87, 1, v50);
    }

    (*(v85 + 32))(v138, v84, v81);
  }

  v88 = v123;
  v83(v123, v113, v82);
  v89 = v124;
  v144 = v39;
  v90 = v88;
  WBSKeychainPasskey.metadata.getter();
  v91 = WBSKeychainPasskey.Metadata.subscript.getter();
  v93 = v92;
  result = (v112)(v89, v77);
  if (v93 >> 60 != 15)
  {
    v111(v90, v82);
    v145 = v91;
    v146 = v93;
    v95 = v119;
    SymmetricKey.init<A>(data:)();
    v145 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt1.getter();
    v146 = v96;
    type metadata accessor for SHA256();
    sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    sub_10001F9A4();
    static HMAC.authenticationCode<A>(for:using:)();
    sub_10000B954(v145, v146);
    sub_10001F9F8(&qword_100035C38, &qword_100035C28, &qword_1000255B8, &protocol conformance descriptor for HashedAuthenticationCode<A>);
    SymmetricKey.init<A>(data:)();
    v97 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt2.getter();
    v99 = v140;
    if (v98 >> 60 == 15)
    {
      v100 = 1;
      v101 = v122;
    }

    else
    {
      v145 = v97;
      v146 = v98;
      v102 = v97;
      v103 = v98;
      static HMAC.authenticationCode<A>(for:using:)();
      v101 = v122;
      SymmetricKey.init<A>(data:)();
      v104 = v103;
      v81 = v135;
      sub_10000B9A8(v102, v104);
      v100 = 0;
    }

    v105 = v141;
    v107 = v133;
    v106 = v134;
    (*(v133 + 8))(v95, v134);
    (*(v136 + 8))(v138, v81);
    (*(v118 + 8))(v144, v105);
    (*(v107 + 56))(v101, v100, 1, v106);
    v108 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
    v109 = *(v108 + 48);
    (*(v107 + 32))(v99, v132, v106);
    sub_10001F8D4(v101, v99 + v109, &qword_100035A08, &qword_1000253D8);
    v51 = *(*(v108 - 8) + 56);
    v52 = v99;
    v87 = 0;
    v50 = v108;
    return v51(v52, v87, 1, v50);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001274C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() isCredentialExchangeEnabled];
  sub_10000D1D4(&qword_100035BF0, &qword_100025588);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100025350;
  type metadata accessor for CFString(0);
  *(v4 + 32) = kSecClass;
  *(v4 + 56) = v5;
  *(v4 + 64) = kSecClassKey;
  *(v4 + 120) = v5;
  *(v4 + 88) = v5;
  *(v4 + 96) = kSecAttrSynchronizable;
  *(v4 + 128) = 1;
  *(v4 + 184) = v5;
  *(v4 + 152) = &type metadata for Bool;
  *(v4 + 160) = kSecUseDataProtectionKeychain;
  *(v4 + 192) = 1;
  *(v4 + 248) = v5;
  *(v4 + 216) = &type metadata for Bool;
  *(v4 + 224) = kSecReturnAttributes;
  *(v4 + 256) = 1;
  *(v4 + 312) = v5;
  *(v4 + 280) = &type metadata for Bool;
  *(v4 + 288) = kSecReturnPersistentRef;
  *(v4 + 320) = 1;
  *(v4 + 376) = v5;
  *(v4 + 344) = &type metadata for Bool;
  *(v4 + 352) = kSecAttrAccessGroup;
  v6 = kSecClass;
  v7 = kSecClassKey;
  v8 = kSecAttrSynchronizable;
  v9 = kSecUseDataProtectionKeychain;
  v10 = kSecReturnAttributes;
  v11 = kSecReturnPersistentRef;
  v12 = kSecAttrAccessGroup;
  v13 = [v2 isForTesting];
  v14 = 0xD000000000000019;
  if (v13)
  {
    v14 = 0xD000000000000021;
    v15 = "com.apple.webkit.webauthn";
  }

  else
  {
    v15 = "Should not be reached";
  }

  *(v4 + 408) = &type metadata for String;
  *(v4 + 384) = v14;
  *(v4 + 392) = v15 | 0x8000000000000000;
  sub_10001F88C(0, &qword_100035BF8, NSMutableDictionary_ptr);
  v16 = NSDictionary.init(dictionaryLiteral:)();
  if (v3)
  {
    v17 = kSecAttrAlias;
    if (kSecAttrAlias)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v17 = kSecAttrApplicationLabel;
LABEL_8:
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v16 __swift_setObject:isa forKeyedSubscript:v17];

  if (a1)
  {
    v19 = String._bridgeToObjectiveC()();
    [v16 __swift_setObject:v19 forKeyedSubscript:v12];
  }

  result = 0;
  v20 = v16;
  v21 = SecItemCopyMatching(v20, &result);
  v22 = v21;
  if (v21 == -25300)
  {
    v23 = v3;
  }

  else
  {
    v23 = 0;
  }

  if (v23 != 1)
  {
LABEL_16:

    if (v22)
    {
      if (qword_1000357F0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000BC18(v25, qword_100036040);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_35;
      }

      v28 = swift_slowAlloc();
      *v28 = 67240192;
      *(v28 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not fetch passkey: %{public}d", v28, 8u);
      goto LABEL_34;
    }

    if (result)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        WBSKeychainPasskey.init(keychainDictionary:)();

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000BC18(v29, qword_100036040);
    v26 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v30))
    {
LABEL_35:

      v35 = type metadata accessor for WBSKeychainPasskey();
      (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
      return swift_unknownObjectRelease();
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138477827;
    swift_beginAccess();
    if (result)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v34 = v33;
LABEL_33:
        *(v31 + 4) = v33;
        *v32 = v34;
        _os_log_impl(&_mh_execute_header, v26, v30, "Unexpected keychain response: %{private}@", v31, 0xCu);
        sub_10001FAE8(v32, &qword_100035A40, "zT");

LABEL_34:

        goto LABEL_35;
      }

      swift_unknownObjectRelease();
    }

    v33 = 0;
    v34 = 0;
    goto LABEL_33;
  }

  if (kSecAttrAlias)
  {
    [(__CFDictionary *)v20 __swift_setObject:0 forKeyedSubscript:?];
    v24 = Data._bridgeToObjectiveC()().super.isa;
    [(__CFDictionary *)v20 __swift_setObject:v24 forKeyedSubscript:kSecAttrApplicationLabel];

    v22 = SecItemCopyMatching(v20, &result);
    goto LABEL_16;
  }

  __break(1u);
  return v21;
}

void sub_100012D1C(unint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    v7 = qword_1000357F0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000BC18(v8, qword_100036040);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Received blob", v11, 2u);
    }

    v12 = sub_10000D1D4(&qword_100035CC8, &qword_100025648);
    v52 = v12;
LABEL_13:
    v51[0] = v6;
    v26 = objc_opt_self();
    sub_10001F664(v51, v12);
    v27 = _bridgeAnythingToObjectiveC<A>(_:)();
    v50[0] = 0;
    v28 = [v26 dataWithJSONObject:v27 options:0 error:v50];
    swift_unknownObjectRelease();
    v29 = v50[0];
    if (v28)
    {
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = Data.base64EncodedData(options:)();
      v35 = v34;
      sub_10000B954(v30, v32);
      sub_10001F5C4(v51);
      swift_beginAccess();
      v36 = *(a4 + 16);
      v37 = *(a4 + 24);
      *(a4 + 16) = v33;
      *(a4 + 24) = v35;
      sub_10000B9A8(v36, v37);
    }

    else
    {
      v38 = v29;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000357F0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000BC18(v39, qword_100036040);
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v50[0] = v43;
        *v42 = 136315138;
        swift_getErrorValue();
        v44 = Error.loggerDescription()();
        v45 = sub_100014068(v44._countAndFlagsBits, v44._object, v50);

        *(v42 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v40, v41, "Unable to verify Apple ID passkey: %s", v42, 0xCu);
        sub_10001F5C4(v43);
      }

      else
      {
      }

      sub_10001F5C4(v51);
    }

    dispatch_group_leave(a3);
    return;
  }

  if (a2)
  {
    swift_errorRetain();
    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000BC18(v13, qword_100036040);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.loggerDescription()();
      v19 = sub_100014068(v18._countAndFlagsBits, v18._object, v50);

      *(v16 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Received error: %s", v16, 0xCu);
      sub_10001F5C4(v17);
    }

    sub_10000D1D4(&qword_100035C90, &qword_100025600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100025360;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x8000000100025130;
    v21 = _convertErrorToNSError(_:)();
    v22 = [v21 description];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(inited + 48) = v23;
    *(inited + 56) = v25;
    v6 = sub_100018250(inited);
    swift_setDeallocating();
    sub_10001FAE8(inited + 32, &qword_100035C98, qword_100025608);
    v12 = sub_10000D1D4(&qword_100035CC0, &qword_100025640);
    v52 = v12;

    goto LABEL_13;
  }

  if (qword_1000357F0 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_10000BC18(v46, qword_100036040);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Did not receive error", v49, 2u);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_1000133D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000D1D4(&qword_100035CB0, &qword_100025630);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_100013484(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_100017CAC(v10, v9, a2, a3);
    if (!a1 || v11 >= a1)
    {
      v12 = sub_100017D60(v10, a1, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    sub_10000B954(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }
}

uint64_t sub_1000135D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001FCA8;

  return v6();
}

uint64_t sub_1000136BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000137A4;

  return v7();
}

uint64_t sub_1000137A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100013898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000D1D4(&qword_100035A70, &qword_100025450);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10001F93C(a3, v23 - v10, &qword_100035A70, &qword_100025450);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10001FAE8(v11, &qword_100035A70, &qword_100025450);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10001FAE8(a3, &qword_100035A70, &qword_100025450);

    return v21;
  }

LABEL_8:
  sub_10001FAE8(a3, &qword_100035A70, &qword_100025450);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100013B94(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100013C8C;

  return v6(a1);
}

uint64_t sub_100013C8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100013D84(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000D1D4(&qword_100035A88, &qword_1000254A8);
  v10 = *(type metadata accessor for WBSKeychainPasskey() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WBSKeychainPasskey() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100013F5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D1D4(&qword_100035A48, &qword_100025438);
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

unint64_t sub_100014068(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014134(v11, 0, 0, 1, a1, a2);
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
    sub_10001F4E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001F5C4(v11);
  return v7;
}

unint64_t sub_100014134(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100014240(a5, a6);
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

void *sub_100014240(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001428C(a1, a2);
  sub_1000143BC(&off_100031960);
  return v3;
}

void *sub_10001428C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000144A8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
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
        v7 = sub_1000144A8(v10, 0);
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

uint64_t sub_1000143BC(uint64_t result)
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

  result = sub_10001451C(result, v11, 1, v3);
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

void *sub_1000144A8(uint64_t a1, uint64_t a2)
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

  sub_10000D1D4(&qword_100035C88, &qword_1000255F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001451C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D1D4(&qword_100035C88, &qword_1000255F8);
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

unint64_t sub_100014610(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100018E68(&qword_100035C78, type metadata accessor for CFString, &unk_1000252A4);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000152F8(a1, v2);
}

uint64_t sub_1000146C4(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t sub_100014758(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100015C68(a1, v4);
}

Swift::Int sub_10001479C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000D1D4(&qword_100035BE0, &qword_100025578);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10001F88C(0, &qword_100035BC0, CBOR_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100014C88(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_1000149C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000D1D4(&qword_100035CB8, &qword_100025638);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100014C88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000D1D4(&qword_100035BE0, &qword_100025578);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100014EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000146C4(a3, a4, &String.hash(into:), sub_100015240);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000149C8(v18, a5 & 1);
      v13 = sub_1000146C4(a3, a4, &String.hash(into:), sub_100015240);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100015D3C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

id sub_1000150C8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100014758(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100014C88(v13, a3 & 1);
      v8 = sub_100014758(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_10001F88C(0, &qword_100035BC0, CBOR_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100015EB4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

unint64_t sub_100015240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000152F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100018E68(&qword_100035C78, type metadata accessor for CFString, &unk_1000252A4);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100015404(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_10000B9BC(v17, v16);
      v35 = __DataStorage._bytes.getter();
      if (v35)
      {
        v40 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      __DataStorage._length.getter();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v60 = __DataStorage._offset.getter();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = __DataStorage._length.getter();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v41 = __DataStorage._offset.getter();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = __DataStorage._length.getter();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_10000B9BC(v17, v16);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v49 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = __DataStorage._length.getter();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_10000B9BC(v17, v16);
    v29 = __DataStorage._bytes.getter();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_10000B954(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_10000B9BC(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = __DataStorage._length.getter();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = __DataStorage._length.getter();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = __DataStorage._length.getter();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_10000B954(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_10000B954(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_10000B9BC(v17, v16);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = __DataStorage._length.getter();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_10000B9BC(v17, v16);
  v51 = __DataStorage._bytes.getter();
  if (v51)
  {
    v52 = v51;
    v53 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  __DataStorage._length.getter();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

unint64_t sub_100015C68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10001F88C(0, &qword_100035BC0, CBOR_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_100015D3C()
{
  v1 = v0;
  sub_10000D1D4(&qword_100035CB8, &qword_100025638);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100015EB4()
{
  v1 = v0;
  sub_10000D1D4(&qword_100035BE0, &qword_100025578);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

_BYTE *sub_100016014@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100019E24(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100019EDC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100019F58(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1000160A8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_141:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v82;
    sub_10000B9BC(a2, a3);
    sub_100017014(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v82 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = a3 >> 62;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v88 = v14;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v85 = v15;
  v84 = v6;
  v80 = (a2 >> 32) - a2;
  v81 = a2 >> 32;
  v86 = v6 + 56;
  v87 = v11;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || a3 >> 62 != 3;
      if (((v22 | v88) & 1) == 0)
      {
        v75 = 0;
        v76 = 0xC000000000000000;
LABEL_142:
        sub_10000B954(v75, v76);
LABEL_143:
        v77 = *(*(v6 + 48) + 16 * v10);
        *a1 = v77;
        sub_10000B9BC(v77, *(&v77 + 1));
        return 0;
      }

LABEL_36:
      v23 = 0;
      if (v12 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_147;
      }

      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_146;
      }

      v23 = v23;
      if (v12 <= 1)
      {
LABEL_33:
        v27 = BYTE6(a3);
        if (v12)
        {
          v27 = HIDWORD(a2) - a2;
          if (v85)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v12 != 2)
    {
      if (!v23)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_145;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_140;
    }

    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      if (v18 > v18 >> 32)
      {
        goto LABEL_148;
      }

      sub_10000B9BC(v18, v17);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v41 = v40;
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v42))
        {
          goto LABEL_150;
        }

        v39 = (v18 - v42 + v41);
      }

      else
      {
        v39 = 0;
      }

      __DataStorage._length.getter();
      v11 = v87;
      if (v12 == 2)
      {
        v67 = *(a2 + 16);
        v79 = *(a2 + 24);
        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v68 = __DataStorage._offset.getter();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_164;
          }

          v49 += v67 - v68;
        }

        v26 = __OFSUB__(v79, v67);
        v69 = v79 - v67;
        if (v26)
        {
          goto LABEL_160;
        }

        result = __DataStorage._length.getter();
        if (result >= v69)
        {
          v52 = v69;
        }

        else
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_176;
        }

        v8 = v86;
        v11 = v87;
        if (!v49)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v12 != 1)
        {
          v8 = v86;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v39)
          {
            goto LABEL_171;
          }

          goto LABEL_138;
        }

        if (v81 < a2)
        {
          goto LABEL_159;
        }

        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v53 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v53))
          {
            goto LABEL_166;
          }

          v49 += a2 - v53;
        }

        result = __DataStorage._length.getter();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_180;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_179;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v18;
    *&__s1[8] = v17;
    __s1[10] = BYTE2(v17);
    __s1[11] = BYTE3(v17);
    __s1[12] = BYTE4(v17);
    __s1[13] = BYTE5(v17);
    if (!v12)
    {
      goto LABEL_69;
    }

    if (v12 == 1)
    {
      if (v81 < a2)
      {
        goto LABEL_152;
      }

      sub_10000B9BC(v18, v17);
      v30 = __DataStorage._bytes.getter();
      if (!v30)
      {
        goto LABEL_174;
      }

      v31 = v30;
      v32 = __DataStorage._offset.getter();
      if (__OFSUB__(a2, v32))
      {
        goto LABEL_156;
      }

      v33 = (a2 - v32 + v31);
      v34 = __DataStorage._length.getter();
      if (!v33)
      {
        goto LABEL_172;
      }

      goto LABEL_109;
    }

    v55 = *(a2 + 16);
    v54 = *(a2 + 24);
    sub_10000B9BC(v18, v17);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v56 = __DataStorage._offset.getter();
      if (__OFSUB__(v55, v56))
      {
        goto LABEL_161;
      }

      v45 += v55 - v56;
    }

    v26 = __OFSUB__(v54, v55);
    v47 = v54 - v55;
    if (v26)
    {
      goto LABEL_153;
    }

    v48 = __DataStorage._length.getter();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v48 >= v47)
    {
      v57 = v47;
    }

    else
    {
      v57 = v48;
    }

    v58 = memcmp(__s1, v45, v57);
    sub_10000B954(v18, v17);
    v8 = v86;
    v11 = v87;
    if (!v58)
    {
LABEL_140:
      v75 = a2;
      v76 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v18 + 16);
    sub_10000B9BC(v18, v17);
    v36 = __DataStorage._bytes.getter();
    if (v36)
    {
      v37 = v36;
      v38 = __DataStorage._offset.getter();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_149;
      }

      v39 = (v35 - v38 + v37);
    }

    else
    {
      v39 = 0;
    }

    __DataStorage._length.getter();
    v11 = v87;
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        if (v81 < a2)
        {
          goto LABEL_155;
        }

        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v50 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v50))
          {
            goto LABEL_165;
          }

          v49 += a2 - v50;
        }

        result = __DataStorage._length.getter();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_178;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_177;
        }

        goto LABEL_135;
      }

      v8 = v86;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v39)
      {
        goto LABEL_169;
      }

LABEL_138:
      v72 = __s1;
      v71 = v39;
      v70 = BYTE6(a3);
LABEL_139:
      v73 = memcmp(v71, v72, v70);
      sub_10000B954(v18, v17);
      v6 = v84;
      if (!v73)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v64 = *(a2 + 16);
    v78 = *(a2 + 24);
    v49 = __DataStorage._bytes.getter();
    if (v49)
    {
      v65 = __DataStorage._offset.getter();
      if (__OFSUB__(v64, v65))
      {
        goto LABEL_163;
      }

      v49 += v64 - v65;
    }

    v26 = __OFSUB__(v78, v64);
    v66 = v78 - v64;
    if (v26)
    {
      goto LABEL_158;
    }

    result = __DataStorage._length.getter();
    if (result >= v66)
    {
      v52 = v66;
    }

    else
    {
      v52 = result;
    }

    if (!v39)
    {
      goto LABEL_182;
    }

    v8 = v86;
    v11 = v87;
    if (!v49)
    {
      goto LABEL_181;
    }

LABEL_135:
    if (v39 == v49)
    {
      sub_10000B954(v18, v17);
      sub_10000B954(a2, a3);
      v6 = v84;
      goto LABEL_143;
    }

    v70 = v52;
    v71 = v39;
    v72 = v49;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v12)
  {
LABEL_69:
    __s2 = a2;
    v90 = a3;
    v91 = BYTE2(a3);
    v92 = BYTE3(a3);
    v93 = BYTE4(a3);
    v94 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    sub_10000B9BC(v18, v17);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v44, v46))
      {
        goto LABEL_162;
      }

      v45 += v44 - v46;
    }

    v26 = __OFSUB__(v43, v44);
    v47 = v43 - v44;
    if (v26)
    {
      goto LABEL_154;
    }

    v48 = __DataStorage._length.getter();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_173;
    }

    goto LABEL_100;
  }

  if (v81 < a2)
  {
    goto LABEL_151;
  }

  sub_10000B9BC(v18, v17);
  v59 = __DataStorage._bytes.getter();
  if (v59)
  {
    v60 = v59;
    v61 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v61))
    {
      goto LABEL_157;
    }

    v33 = (a2 - v61 + v60);
    v34 = __DataStorage._length.getter();
    if (!v33)
    {
      goto LABEL_168;
    }

LABEL_109:
    if (v34 >= v80)
    {
      v62 = (a2 >> 32) - a2;
    }

    else
    {
      v62 = v34;
    }

    v63 = memcmp(__s1, v33, v62);
    sub_10000B954(v18, v17);
    v8 = v86;
    if (!v63)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  result = __DataStorage._length.getter();
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

void *sub_100016A24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100016BD8(a1, a2, a3, *v3, &qword_100035A88, &qword_1000254A8, &type metadata accessor for WBSKeychainPasskey);
  *v3 = result;
  return result;
}

char *sub_100016A68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100016ACC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100016A88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100016BD8(a1, a2, a3, *v3, &qword_100035A68, &qword_100025448, &type metadata accessor for ASCTAPUserVerificationRequirement);
  *v3 = result;
  return result;
}

char *sub_100016ACC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D1D4(&qword_100035B88, &qword_100025520);
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

void *sub_100016BD8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10000D1D4(a5, a6);
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

Swift::Int sub_100016DB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000D1D4(&qword_100035B80, &qword_100025518);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_100017014(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_100016DB4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100017914();
      goto LABEL_143;
    }

    sub_100017A70(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  a3 = v11 & ~v13;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v71 = *v80;
    *(*v80 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v72 = (*(v71 + 48) + 16 * a3);
    *v72 = a1;
    v72[1] = a2;
    v73 = *(v71 + 16);
    v30 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (!v30)
    {
      *(v71 + 16) = v74;
      return;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v14 = ~v13;
  v15 = a2 >> 62;
  if (a1)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2 == 0xC000000000000000;
  }

  v17 = !v16;
  v84 = v17;
  v79 = v10;
  v18 = __OFSUB__(HIDWORD(a1), a1);
  v81 = v18;
  v77 = (a1 >> 32) - a1;
  v78 = a1 >> 32;
  v82 = v14;
  v83 = v10 + 56;
  while (1)
  {
    v19 = (*(v10 + 48) + 16 * a3);
    v21 = *v19;
    v20 = v19[1];
    v22 = v20 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || a2 >> 62 != 3;
      if (((v25 | v84) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_32;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      v30 = __OFSUB__(v36, v37);
      v26 = v36 - v37;
      if (v30)
      {
        goto LABEL_147;
      }
    }

    else if (v22)
    {
      LODWORD(v26) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_148;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(v20);
    }

LABEL_33:
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (!v26)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v29 = *(a1 + 16);
      v28 = *(a1 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v27 = BYTE6(a2);
      if (v15)
      {
        v27 = HIDWORD(a1) - a1;
        if (v81)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v26 == v27)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v14;
    if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_185;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      *__s1 = v21;
      *&__s1[8] = v20;
      __s1[10] = BYTE2(v20);
      __s1[11] = BYTE3(v20);
      __s1[12] = BYTE4(v20);
      __s1[13] = BYTE5(v20);
      if (!v15)
      {
        goto LABEL_97;
      }

      if (v15 == 1)
      {
        if (v78 < a1)
        {
          goto LABEL_152;
        }

        sub_10000B9BC(v21, v20);
        v31 = __DataStorage._bytes.getter();
        if (!v31)
        {
          goto LABEL_175;
        }

        v32 = v31;
        v33 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v33))
        {
          goto LABEL_158;
        }

        v34 = a1 - v33 + v32;
        v35 = __DataStorage._length.getter();
        if (!v34)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v35 >= v77)
        {
          v56 = (a1 >> 32) - a1;
        }

        else
        {
          v56 = v35;
        }

LABEL_114:
        v60 = __s1;
        v61 = v34;
LABEL_140:
        v70 = memcmp(v60, v61, v56);
        sub_10000B954(v21, v20);
LABEL_141:
        v14 = v82;
        v12 = v83;
        if (!v70)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v54 = *(a1 + 16);
      v53 = *(a1 + 24);
      sub_10000B9BC(v21, v20);
      v34 = __DataStorage._bytes.getter();
      if (v34)
      {
        v55 = __DataStorage._offset.getter();
        if (__OFSUB__(v54, v55))
        {
          goto LABEL_162;
        }

        v34 += v54 - v55;
      }

      v30 = __OFSUB__(v53, v54);
      v51 = v53 - v54;
      if (v30)
      {
        goto LABEL_156;
      }

      v52 = __DataStorage._length.getter();
      v10 = v79;
      if (!v34)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v52 >= v51)
      {
        v56 = v51;
      }

      else
      {
        v56 = v52;
      }

      goto LABEL_114;
    }

    if (v21 > v21 >> 32)
    {
      goto LABEL_149;
    }

    sub_10000B9BC(v21, v20);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v21, v45))
      {
        goto LABEL_151;
      }

      v39 += v21 - v45;
    }

    __DataStorage._length.getter();
    if (v15 == 2)
    {
      v66 = *(a1 + 16);
      v76 = *(a1 + 24);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v67 = __DataStorage._offset.getter();
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_166;
        }

        v41 += v66 - v67;
      }

      v30 = __OFSUB__(v76, v66);
      v68 = v76 - v66;
      if (v30)
      {
        goto LABEL_161;
      }

      v69 = __DataStorage._length.getter();
      if (v69 >= v68)
      {
        v44 = v68;
      }

      else
      {
        v44 = v69;
      }

      if (!v39)
      {
        goto LABEL_177;
      }

      if (!v41)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v78 < a1)
      {
        goto LABEL_160;
      }

      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v46 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v46))
        {
          goto LABEL_167;
        }

        v41 += a1 - v46;
      }

      v47 = __DataStorage._length.getter();
      v44 = (a1 >> 32) - a1;
      if (v47 < v77)
      {
        v44 = v47;
      }

      if (!v39)
      {
        goto LABEL_181;
      }

      if (!v41)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v22 == 2)
  {
    v38 = *(v21 + 16);
    sub_10000B9BC(v21, v20);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v38, v40))
      {
        goto LABEL_150;
      }

      v39 += v38 - v40;
    }

    __DataStorage._length.getter();
    if (v15 == 2)
    {
      v62 = *(a1 + 16);
      v75 = *(a1 + 24);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v62, v63))
        {
          goto LABEL_164;
        }

        v41 += v62 - v63;
      }

      v30 = __OFSUB__(v75, v62);
      v64 = v75 - v62;
      if (v30)
      {
        goto LABEL_159;
      }

      v65 = __DataStorage._length.getter();
      if (v65 >= v64)
      {
        v44 = v64;
      }

      else
      {
        v44 = v65;
      }

      if (!v39)
      {
        goto LABEL_183;
      }

      if (!v41)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v78 < a1)
      {
        goto LABEL_155;
      }

      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v42))
        {
          goto LABEL_165;
        }

        v41 += a1 - v42;
      }

      v43 = __DataStorage._length.getter();
      v44 = (a1 >> 32) - a1;
      if (v43 < v77)
      {
        v44 = v43;
      }

      if (!v39)
      {
        goto LABEL_179;
      }

      if (!v41)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v39 == v41)
      {
        goto LABEL_184;
      }

      v70 = memcmp(v39, v41, v44);
      sub_10000B954(v21, v20);
      v10 = v79;
      goto LABEL_141;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_170;
    }

LABEL_139:
    v61 = __s1;
    v60 = v39;
    v56 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v15)
  {
LABEL_97:
    __s2 = a1;
    v86 = a2;
    v87 = BYTE2(a2);
    v88 = BYTE3(a2);
    v89 = BYTE4(a2);
    v90 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, BYTE6(a2)))
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v15 == 2)
  {
    v49 = *(a1 + 16);
    v48 = *(a1 + 24);
    sub_10000B9BC(v21, v20);
    v34 = __DataStorage._bytes.getter();
    if (v34)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_163;
      }

      v34 += v49 - v50;
    }

    v30 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v30)
    {
      goto LABEL_154;
    }

    v52 = __DataStorage._length.getter();
    v10 = v79;
    if (!v34)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v78 < a1)
  {
    goto LABEL_153;
  }

  sub_10000B9BC(v21, v20);
  v57 = __DataStorage._bytes.getter();
  if (v57)
  {
    v58 = v57;
    v59 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v59))
    {
      goto LABEL_157;
    }

    v34 = a1 - v59 + v58;
    v35 = __DataStorage._length.getter();
    if (!v34)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  __DataStorage._length.getter();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __DataStorage._length.getter();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_10000B954(v21, v20);
LABEL_185:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100017914()
{
  v1 = v0;
  sub_10000D1D4(&qword_100035B80, &qword_100025518);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        sub_10000B9BC(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

Swift::Int sub_100017A70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000D1D4(&qword_100035B80, &qword_100025518);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      sub_10000B9BC(v18, v19);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100017CAC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_100017D60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100017DC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000180DC(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000180DC(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100017FA4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000181BC(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000181BC(v4, v5);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_1000180DC(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000181BC(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100018250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D1D4(&qword_100035CB8, &qword_100025638);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000146C4(v5, v6, &String.hash(into:), sub_100015240);
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

unint64_t sub_10001838C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D1D4(&qword_100035CD0, &unk_100025650);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1000146C4(v5, v6, &String.hash(into:), sub_100015240);
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

uint64_t _sSo26PublicKeyCredentialManagerC27AuthenticationServicesAgentE21appleAccountLargeBlob3for10Foundation4DataVSgSo09ASCPublicbC16AssertionOptionsC_tF_0(void *a1)
{
  v2 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.PRF();
  v55 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000D1D4(&qword_1000359C8, &qword_1000253A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = sub_10000D1D4(&qword_100035C08, &qword_100025598);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000357F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000BC18(v13, qword_100036040);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetching Apple ID passkey token.", v16, 2u);
  }

  v17 = [a1 clientDataHash];
  if (!v17)
  {
    v29 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v29, v32, "Could not find clientDataHash", v33, 2u);
    }

    goto LABEL_17;
  }

  v18 = v17;
  v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [objc_opt_self() defaultStore];
  if (!v21)
  {
    v21 = [objc_allocWithZone(ACAccountStore) init];
  }

  v57 = v21;
  v22 = [v21 aa_primaryAppleAccount];
  if (!v22 || (v23 = v22, v24 = [v22 aa_altDSID], v23, !v24))
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Could not determine altDSID", v31, 2u);
    }

    sub_10000B954(v58, v20);
LABEL_17:

    return 0;
  }

  v53 = [objc_allocWithZone(AKAppleIDPasskeySetupContext) initWithAltDSID:v24];

  sub_10000D1D4(&qword_100035C90, &qword_100025600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100025370;
  strcpy((inited + 32), "clientDataHash");
  *(inited + 47) = -18;
  *(inited + 48) = Data.base64URLEncodedString(includePadding:)(1);
  *(inited + 64) = 1701869940;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = 0x79656B73736170;
  *(inited + 88) = 0xE700000000000000;
  v26 = sub_100018250(inited);
  swift_setDeallocating();
  sub_10000D1D4(&qword_100035C98, qword_100025608);
  swift_arrayDestroy();
  v27 = [a1 extensions];
  dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.prf.getter();

  v28 = v55;
  if ((*(v55 + 48))(v7, 1, v2))
  {
    sub_10001FAE8(v7, &qword_1000359C8, &qword_1000253A8);
    (*(v56 + 56))(v10, 1, 1, v11);
  }

  else
  {
    (*(v28 + 16))(v4, v7, v2);
    sub_10001FAE8(v7, &qword_1000359C8, &qword_1000253A8);
    ASCPublicKeyCredentialAssertionExtensionInputs.PRF.inputValues.getter();
    (*(v28 + 8))(v4, v2);
    v35 = v56;
    if ((*(v56 + 48))(v10, 1, v11) != 1)
    {
      v47 = v54;
      (*(v35 + 32))(v54, v10, v11);
      v48 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt1.getter();
      v50 = v49;
      v51 = Data.base64URLEncodedString(includePadding:)(1);
      sub_10000B954(v48, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v26;
      sub_100014EF0(v51._countAndFlagsBits, v51._object, 0x6E65747845667270, 0xEC0000006E6F6973, isUniquelyReferenced_nonNull_native);
      (*(v35 + 8))(v47, v11);
      goto LABEL_20;
    }
  }

  sub_10001FAE8(v10, &qword_100035C08, &qword_100025598);
LABEL_20:
  sub_10000D1D4(&qword_100035CA0, &qword_100025620);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_100025360;
  *(v36 + 32) = 6582369;
  *(v36 + 40) = 0xE300000000000000;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v36 + 48) = isa;
  sub_10001838C(v36);
  swift_setDeallocating();
  sub_10001FAE8(v36 + 32, &qword_100035CA8, &qword_100025628);
  sub_10000D1D4(&qword_100035CB0, &qword_100025630);
  v38 = Dictionary._bridgeToObjectiveC()().super.isa;

  v39 = v53;
  [v53 setAppProvidedData:v38];

  v40 = [objc_allocWithZone(AKAppleIDPasskeyController) init];
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100025200;
  v42 = dispatch_group_create();
  dispatch_group_enter(v42);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v41;
  aBlock[4] = sub_10001FAC8;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000133D4;
  aBlock[3] = &unk_100031C08;
  v44 = _Block_copy(aBlock);
  v45 = v42;

  [v40 verifyAppleIDPasskeyWithContext:v39 completion:v44];
  _Block_release(v44);
  OS_dispatch_group.wait()();

  sub_10000B954(v58, v20);
  swift_beginAccess();
  v46 = *(v41 + 16);
  sub_100018EB0(v46, *(v41 + 24));

  return v46;
}

uint64_t sub_100018E68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100018EB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_10000B9BC(a1, a2);
  }
}

unint64_t sub_100018EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D1D4(&qword_100035C80, &qword_1000255F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_10000B9BC(v5, v6);
      result = sub_100014610(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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

unint64_t sub_100018FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D1D4(&qword_100035C70, &qword_1000255E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_100018EB0(v5, v6);
      result = sub_100014610(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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

uint64_t sub_1000190CC()
{
  v0 = type metadata accessor for WBSKeychainPasskey.Metadata();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = WBSKeychainPasskey.persistentRef.getter();
  if (v5 >> 60 == 15)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  sub_10000D1D4(&qword_100035C40, &qword_1000255C0);
  inited = swift_initStackObject();
  v27 = xmmword_100025360;
  *(inited + 16) = xmmword_100025360;
  *(inited + 32) = kSecValuePersistentRef;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  v9 = kSecValuePersistentRef;
  sub_100018EB0(v6, v7);
  sub_100018EC4(inited);
  swift_setDeallocating();
  sub_10001FAE8(inited + 32, &unk_100035C48, &qword_1000255C8);
  type metadata accessor for CFString(0);
  sub_100018E68(&qword_100035950, type metadata accessor for CFString, &unk_1000252D0);
  v28 = v6;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10000D1D4(&qword_100035C58, &qword_1000255D0);
  v10 = swift_initStackObject();
  *(v10 + 16) = v27;
  *(v10 + 32) = kSecAttrApplicationTag;
  v11 = kSecAttrApplicationTag;
  WBSKeychainPasskey.metadata.getter();
  v12 = WBSKeychainPasskey.Metadata.toCBOR()();
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  *(v10 + 40) = v12;
  *(v10 + 48) = v14;
  sub_100018FC8(v10);
  swift_setDeallocating();
  sub_10001FAE8(v10 + 32, &qword_100035C60, &qword_1000255D8);
  sub_10000D1D4(&qword_100035C68, &qword_1000255E0);
  v15 = isa;
  v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = SecItemUpdate(v15, v16.super.isa);
  if (v17)
  {
    v18 = v17;
    v19 = v28;
    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000BC18(v20, qword_100036040);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67240192;
      *(v23 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not update passkey: %{public}d", v23, 8u);
    }

    sub_10000B9A8(v19, v7);

    return 0;
  }

  sub_10000B9A8(v28, v7);
  return 1;
}

uint64_t sub_100019478(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = [v8 decodeFromData:isa keepKeyOrdering:1];

  if (!v10)
  {
    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000BC18(v27, qword_100036040);
    v10 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v10, v28, "Could not encode extensions", v29, 2u);
    }

    goto LABEL_20;
  }

  result = sub_10000E630(a1, a2);
  if ((result & 0x100) == 0)
  {
    v12 = result;
    sub_10000B9BC(a1, a2);
    sub_100013484(1uLL, a1, a2, v39);
    v13 = v39[0];
    v14 = v39[1];
    v15 = Data._bridgeToObjectiveC()().super.isa;
    sub_10000B954(v13, v14);
    v16 = [v8 decodeFromData:v15 keepKeyOrdering:1];

    if (v16)
    {
      v17 = [v16 dictionary];

      if (v17)
      {
        sub_10001F88C(0, &qword_100035BC0, CBOR_ptr);
        sub_10001F824();
        v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = [v8 cborWithInteger:a5];
        if ((v18 & 0xC000000000000001) != 0)
        {
          if (v18 < 0)
          {
            v20 = v18;
          }

          else
          {
            v20 = v18 & 0xFFFFFFFFFFFFFF8;
          }

          v21 = v10;
          v22 = __CocoaDictionary.count.getter();
          if (__OFADD__(v22, 1))
          {
            __break(1u);
          }

          v18 = sub_10001479C(v20, v22 + 1);
        }

        else
        {
          v30 = v10;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39[0] = v18;
        sub_1000150C8(v10, v19, isUniquelyReferenced_nonNull_native);

        v32 = Dictionary._bridgeToObjectiveC()().super.isa;

        v33 = [v8 cborWithDictionary:v32];

        v34 = [objc_opt_self() dataWithCBOR:v33 encodingKeyOrder:1];
        v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v40 = v35;
        v41 = v37;
        v38 = sub_10000D1D4(&qword_100035BD0, &qword_100025570);
        v39[3] = v38;
        v39[4] = sub_10001F9F8(&qword_100035BD8, &qword_100035BD0, &qword_100025570, &protocol conformance descriptor for <A> CollectionOfOne<A>);
        LOBYTE(v39[0]) = v12;
        sub_10001F664(v39, v38);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_10001F5C4(v39);

        return v40;
      }
    }

    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000BC18(v23, qword_100036040);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected command format", v26, 2u);
    }

LABEL_20:
    sub_10000B9BC(a1, a2);
    return a1;
  }

  __break(1u);
  return result;
}
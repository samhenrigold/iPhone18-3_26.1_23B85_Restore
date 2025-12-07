void sub_1001A5E64(uint64_t a1, char a2, id obj, void *a4)
{
  v23 = a1;
  v22 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19[1] = a1;
  v11 = [v20 domain];
  v12 = 0;
  if ([v11 isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    v12 = [v20 code] == -7052;
  }

  _objc_release(v11);
  if (v12)
  {
    v19[0] = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v19[0];
      type = v18;
      sub_10001CEEC(v17);
      _os_log_impl(&_mh_execute_header, log, type, "Upgrade Token requires server UI.", v17, 2u);
    }

    objc_storeStrong(v19, 0);
    goto LABEL_13;
  }

  if (!v20)
  {
LABEL_13:
    v5 = [AKAuthenticationServerResponse alloc];
    v4 = location;
    v6 = [*(a1 + 32) username];
    v13 = [(AKAuthenticationServerResponse *)v5 initWithServerResponse:v4 forAppleID:?];
    _objc_release(v6);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }

    objc_storeStrong(&v13, 0);
    v14 = 0;
    goto LABEL_16;
  }

  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v24, v20);
    _os_log_error_impl(&_mh_execute_header, v16, v15, "Upgrade Token request failed: %@", v24, 0xCu);
  }

  objc_storeStrong(&v16, 0);
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  v14 = 1;
LABEL_16:
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&location, 0);
}

void sub_1001A63E8(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13[1] = a1;
  if (v14)
  {
    v13[0] = _AKLogSystem();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v17, v14);
      _os_log_error_impl(&_mh_execute_header, v13[0], v12, "Upgrade Token request with server failed! Error: %@", v17, 0xCu);
    }

    objc_storeStrong(v13, 0);
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }
  }

  else
  {
    oslog = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v10;
      sub_10001CEEC(v9);
      _os_log_impl(&_mh_execute_header, v4, v5, "Successful Upgrade Token!", v9, 2u);
    }

    objc_storeStrong(&oslog, 0);
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_1001A72A8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27 = 0;
  objc_storeStrong(&v27, a3);
  v26 = a1;
  v25[8] = 0;
  *v25 = [location[0] BOOLValue];
  if (v25[0])
  {
    v24 = _AKLogSystem();
    v23 = 2;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      log = v24;
      type = v23;
      sub_10001CEEC(v22);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Plt upgrade enabled, plt can be sent for token upgrade", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v10 = [*(a1 + 32) concreteAuthenticationContext];
    v3 = [v10 passwordlessToken];
    v4 = *&v25[1];
    *&v25[1] = v3;
    _objc_release(v4);
    _objc_release(v10);
  }

  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1001A7648(v29, v25[0] & 1, v27);
    _os_log_debug_impl(&_mh_execute_header, v21, v20, "Fetch PLT upgrade config completed with status - %d and error -%{private}@", v29, 0x12u);
  }

  objc_storeStrong(&v21, 0);
  if (*(a1 + 40) || *(a1 + 48) || *&v25[1] || *(a1 + 56))
  {
    v5 = *(a1 + 64);
    v15.receiver = *(a1 + 32);
    v15.super_class = AKTokenUpgradeRequestProvider;
    objc_msgSendSuper2(&v15, "buildRequestWithCompletion:", v5);
    v16 = 0;
  }

  else
  {
    v19 = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v19;
      v9 = v18;
      sub_10001CEEC(v17);
      _os_log_impl(&_mh_execute_header, v8, v9, "Attempt to perform authentication without an upgrade token!", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    if (*(a1 + 64))
    {
      v6 = *(a1 + 64);
      v7 = [NSError ak_errorWithCode:-7044];
      (*(v6 + 16))(v6, 0);
      _objc_release(v7);
    }

    v16 = 1;
  }

  objc_storeStrong(&v25[1], 0);
  if (!v16)
  {
    v16 = 0;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1001A7648(uint64_t result, int a2, uint64_t a3)
{
  *result = 3;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 65;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

void sub_1001A8438(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v6 = *(a1[4] + 8);
  v7 = [v6 authKitAccount:0];
  [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.federatedAuth" account:v6 error:?];
  _objc_release(v7);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1001A8574(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29[1] = a1;
  v29[0] = [location[0] url];
  if (v29[0])
  {
    v28 = [[NSMutableURLRequest alloc] initWithURL:v29[0]];
    v10 = [*(a1[4] + 1) username];
    [v28 setValue:? forHTTPHeaderField:?];
    _objc_release(v10);
    v11 = [a1[5] federatedAuthSamlRequest];
    v27 = [v11 objectForKeyedSubscript:@"RelayState"];
    _objc_release(v11);
    if (v27)
    {
      [v28 setValue:v27 forHTTPHeaderField:@"X-Apple-I-FA-Relay-State"];
    }

    [*(a1[4] + 1) set_shouldSendGrandSlamTokensForRemoteUI:0];
    v26 = [AKDServerUIContext serverUIContextFromResponse:a1[5] authContext:*(a1[4] + 1) urlRequest:v28 urlConfiguration:location[0]];
    [v26 setShouldPreventDismissAfterUserSkip:1];
    v5 = [v26 requestConfiguration];
    [v5 setPresentationType:2];
    _objc_release(v5);
    v6 = [AKDServerUIController alloc];
    v7 = +[AKAuthenticationUILiaison sharedInstance];
    v25 = [AKDServerUIController initWithLiaison:v6 client:"initWithLiaison:client:delegate:" delegate:?];
    _objc_release(v7);
    v9 = v25;
    v8 = v26;
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_1001A89EC;
    v21 = &unk_100321CD0;
    v22 = _objc_retain(a1[4]);
    v23 = _objc_retain(a1[5]);
    v24 = _objc_retain(a1[6]);
    [(AKDServerUIController *)v9 showServerUIWithContext:v8 completion:&v17];
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      sub_10001CEEC(v14);
      _os_log_error_impl(&_mh_execute_header, log, type, "Missing URL bag entry for federated account, attempting IDP flow...", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    [a1[4] _showIdentityProviderUIFromResponse:a1[5] completion:a1[6]];
  }

  objc_storeStrong(v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void sub_1001A89EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9[1] = a1;
  v7 = [v10 domain];
  v8 = 0;
  if ([v7 isEqualToString:AKAppleIDAuthenticationErrorDomain])
  {
    v8 = [v10 code] == -7038;
  }

  _objc_release(v7);
  if (v8)
  {
    [*(a1 + 32) _showIdentityProviderUIFromResponse:*(a1 + 40) completion:*(a1 + 48)];
  }

  else if ([v10 ak_isUserCancelError])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9[0] = [NSError ak_errorWithCode:-7019 underlyingError:v10];
    (*(*(a1 + 48) + 16))();
    objc_storeStrong(v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_1001A901C(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14[1] = a1;
  if (v15)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = v16;
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1001A9180;
    v13 = &unk_1003220F0;
    v14[0] = _objc_retain(*(a1 + 40));
    [v5 _handleIdentityProviderResponsePayload:v4 completion:&v9];
    objc_storeStrong(v14, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_1001A9180(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  (*(a1[4] + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1001A960C(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9[1] = a1;
  if (v10)
  {
    (*(a1[4] + 16))();
  }

  else
  {
    v9[0] = [AAFSerialization dictionaryFromObject:v11 ofType:@"application/x-plist"];
    v4 = [AKAuthenticationServerResponse alloc];
    v8 = [(AKAuthenticationServerResponse *)v4 initWithServerResponse:location[0] responseBody:v9[0]];
    (*(a1[4] + 16))();
    objc_storeStrong(&v8, 0);
    objc_storeStrong(v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1001A97A8(_BYTE *a1, _BYTE *a2)
{
  v2 = "7eyGIcfX6HqnxGPbnhvbtU7Y4zU=";
  if (*a1 == 1)
  {
    v3 = "7eyGIcfX6HqnxGPbnhvbtU7Y4zU=";
  }

  else
  {
    v3 = "vqgSmpPcYFoWFxzzjgtTPJiAo1o=";
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = "application/json";
  }

  if (*a2 != 1)
  {
    v2 = "vqgSmpPcYFoWFxzzjgtTPJiAo1o=";
  }

  if (*a2)
  {
    v5 = v2;
  }

  else
  {
    v5 = "application/json";
  }

  if ((v4 | 0x8000000000000000) == (v5 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

Swift::Int sub_1001A9868()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001A98F4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001A996C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001A99F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001AD130(*a1);
  *a2 = result;
  return result;
}

void sub_1001A9A24(void *a1@<X8>)
{
  v2 = "application/json";
  v3 = "7eyGIcfX6HqnxGPbnhvbtU7Y4zU=";
  if (*v1 != 1)
  {
    v3 = "vqgSmpPcYFoWFxzzjgtTPJiAo1o=";
  }

  if (*v1)
  {
    v2 = v3;
  }

  *a1 = 0xD00000000000002CLL;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1001A9ADC(void *a1, uint64_t a2)
{
  v42 = a2;
  v4 = sub_1001AD17C(&qword_100372070, &qword_10029C6D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &object - v7;
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1001AD2E4(v9, qword_1003776B0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Starting passkey verification.", v12, 2u);
  }

  v13 = [a1 appProvidedData];
  if (v13)
  {
    v14 = v13;
    sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = sub_1001CCAC8(v15);

    v49 = v16;
    v17 = *(v2 + 16);
    v18 = [v17 requestProvider];
    type metadata accessor for AppleIDPasskeyRequestProvider();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;
      v41 = v2;
      if (!*(v16 + 16))
      {
        goto LABEL_24;
      }

      v21 = sub_10023A350(6582369, 0xE300000000000000);
      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }

      sub_1000087A8(*(v16 + 56) + 32 * v21, &aBlock);
      sub_1001AD17C(&qword_100372078, &qword_10029C6D8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      countAndFlagsBits = v43._countAndFlagsBits;
      if (*(v43._countAndFlagsBits + 16) && (v24 = sub_10023A350(0x6E65747845667270, 0xEC0000006E6F6973), (v25 & 1) != 0))
      {
        sub_1000087A8(*(countAndFlagsBits + 56) + 32 * v24, &aBlock);

        if (swift_dynamicCast())
        {
          object = v43._object;
          v26 = _findStringSwitchCase(cases:string:)(&off_100325F30, v43);

          if (v26)
          {
            if (v26 == 1)
            {
              v27 = "7eyGIcfX6HqnxGPbnhvbtU7Y4zU=";
              v28 = 1;
            }

            else
            {
              if (v26 != 2)
              {
                *(v41 + 48) = 3;
                goto LABEL_24;
              }

              v27 = "vqgSmpPcYFoWFxzzjgtTPJiAo1o=";
              v28 = 2;
            }
          }

          else
          {
            v28 = 0;
            v27 = "application/json";
          }

          *(v41 + 48) = v28;
          if ((v27 | 0x8000000000000000) == 0x80000001002A9670)
          {

LABEL_30:
            sub_1001F9D14(0x6E65747845667270, 0xEC0000006E6F6973, &aBlock);
            sub_100011F94(&aBlock, &qword_100372080, &qword_10029C6E0);
            v16 = v49;
            goto LABEL_24;
          }

          LODWORD(object) = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (object)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
      }

LABEL_24:
      swift_unknownObjectRetain();
      sub_1001CCD28(v16);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v20 setAuthKitBody:isa];
      swift_unknownObjectRelease();

      (*(v5 + 16))(v8, v42, v4);
      v37 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v38 = swift_allocObject();
      (*(v5 + 32))(v38 + v37, v8, v4);
      *(v38 + ((v6 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
      v47 = sub_1001AD31C;
      v48 = v38;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v45 = sub_100234B90;
      v46 = &unk_100326220;
      v39 = _Block_copy(&aBlock);

      [v17 executeRequestWithCompletion:v39];
      _Block_release(v39);

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed to verify passkey. Request provider type mismatch.", v35, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    v43._countAndFlagsBits = -12007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001AC62C(&qword_100372040, type metadata accessor for AppleIDPasskeyError, &unk_10029C588);
    _BridgedStoredNSError.init(_:userInfo:)();
    v43._countAndFlagsBits = aBlock;
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to verify passkey. Missing required parameters.", v31, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    v43._countAndFlagsBits = -120012;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001AC62C(&qword_100372040, type metadata accessor for AppleIDPasskeyError, &unk_10029C588);
    _BridgedStoredNSError.init(_:userInfo:)();
    v43._countAndFlagsBits = aBlock;
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1001AA408(void *a1, void *aBlock, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v5 = a1;

  return _swift_task_switch(sub_1001AA498, 0, 0);
}

uint64_t sub_1001AA498()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = sub_1001AD17C(&unk_100372060, &unk_10029C6C0);
  *v2 = v0;
  v2[1] = sub_1001AA5A4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000021, 0x80000001002A97D0, sub_1001AD2B8, v1, v3);
}

uint64_t sub_1001AA5A4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1001AA78C;
  }

  else
  {

    v2 = sub_1001AA6C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AA6C0()
{
  v1 = v0[3];

  sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = v0[5];
  (v3)[2](v3, isa, 0);

  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001AA78C()
{
  v1 = v0[3];

  v2 = _convertErrorToNSError(_:)();

  v3 = v0[5];
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001AA844()
{

  return swift_deallocClassInstance();
}

void sub_1001AA89C(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = [objc_opt_self() dictionaryFromObject:isa ofType:@"application/json"];
  swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_8:
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_1003776B0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_13;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Failed to verify passkey. Missing response.";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

LABEL_13:

    type metadata accessor for AppleIDPasskeyError(0);
    v15 = -12007;
LABEL_43:
    *&v54 = v15;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001AC62C(&qword_100372040, type metadata accessor for AppleIDPasskeyError, &unk_10029C588);
    _BridgedStoredNSError.init(_:userInfo:)();
    *&v54 = v56;
    sub_1001AD17C(&qword_100372070, &qword_10029C6D0);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v54 + 1) = v7;
  AnyHashable.init<A>(_:)();
  if (*(v6 + 16))
  {
    v8 = sub_10023A30C(&v56);
    if (v9)
    {
      sub_1000087A8(*(v6 + 56) + 32 * v8, &v54);
      sub_1001AD3EC(&v56);

      sub_100011F94(&v54, &qword_100372080, &qword_10029C6E0);
      goto LABEL_8;
    }
  }

  sub_1001AD3EC(&v56);
  v54 = 0u;
  v55 = 0u;
  sub_100011F94(&v54, &qword_100372080, &qword_10029C6E0);
  if (!a1)
  {
    v54 = 0u;
    v55 = 0u;
    goto LABEL_27;
  }

  v16 = [a1 allHeaderFields];
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v52 + 1) = v18;
  AnyHashable.init<A>(_:)();
  if (*(v17 + 16) && (v19 = sub_10023A30C(&v56), (v20 & 1) != 0))
  {
    sub_1000087A8(*(v17 + 56) + 32 * v19, &v52);
    sub_1001AD3EC(&v56);

    if (*(&v53 + 1))
    {
      sub_1000122C0(&v52, &v54);
      goto LABEL_27;
    }
  }

  else
  {

    sub_1001AD3EC(&v56);
    v52 = 0u;
    v53 = 0u;
  }

  v21 = [a1 allHeaderFields];
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.lowercased()();

  AnyHashable.init<A>(_:)();
  if (!*(v22 + 16) || (v23 = sub_10023A30C(&v56), (v24 & 1) == 0))
  {

    sub_1001AD3EC(&v56);
    v54 = 0u;
    v55 = 0u;
    if (!*(&v53 + 1))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  sub_1000087A8(*(v22 + 56) + 32 * v23, &v54);
  sub_1001AD3EC(&v56);

  if (*(&v53 + 1))
  {
LABEL_26:
    sub_100011F94(&v52, &qword_100372080, &qword_10029C6E0);
  }

LABEL_27:
  if (!*(&v55 + 1))
  {
    sub_100011F94(&v54, &qword_100372080, &qword_10029C6E0);
    goto LABEL_38;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1001AD2E4(v47, qword_1003776B0);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to verify passkeys. Missing GS token.", v50, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    v15 = -120014;
    goto LABEL_43;
  }

  v25 = String._bridgeToObjectiveC()();

  v26 = [objc_opt_self() tokenWithBase64String:v25];

  if (!v26)
  {
LABEL_47:
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1001AD2E4(v51, qword_1003776B0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_13;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Failed to verify passkeys. Base64 decoding GS token failed.";
    goto LABEL_12;
  }

  v27 = [v26 stringValue];
  if (!v27)
  {
    v28 = v26;
LABEL_46:

    goto LABEL_47;
  }

  v28 = v27;
  v29 = [v26 name];
  if (!v29)
  {

    goto LABEL_46;
  }

  v30 = v29;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  sub_1001AD17C(&qword_100372088, &qword_10029C6E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10029BEB0;
  *(inited + 32) = v31;
  v35 = inited + 32;
  *(inited + 40) = v33;
  *(inited + 48) = v28;
  v36 = sub_10023A548(inited);
  swift_setDeallocating();
  sub_100011F94(v35, &unk_100372090, &unk_10029C6F0);
  *&v52 = v36;
  sub_1001AB1C0(&v52);
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1001AD2E4(v37, qword_1003776B0);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v56 = v41;
    *v40 = 136315138;
    swift_beginAccess();
    sub_1001AD440();

    v42 = Dictionary.description.getter();
    v44 = v43;

    v45 = sub_10024B050(v42, v44, &v56);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "Finished passkey verification with result %s.", v40, 0xCu);
    sub_1001AD48C(v41);
  }

  swift_beginAccess();

  sub_1001CCFF0(v46);

  sub_1001AD17C(&qword_100372070, &qword_10029C6D0);
  CheckedContinuation.resume(returning:)();
}

void sub_1001AB1C0(id *a1)
{
  if (*(v1 + 48) - 1 > 1)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1001AD2E4(v9, qword_1003776B0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Create shared key is not supported", v11, 2u);
    }
  }

  else
  {
    v3 = [*(v1 + 40) createRandomSharedKey];
    if (v3)
    {
      sub_1001CD4E4(v3, 0xD00000000000001FLL, 0x80000001002A9860);
    }

    v4 = *(v1 + 32);
    v15 = 0;
    v5 = [v4 lastKnownMID:&v15];
    v6 = v15;
    if (v5)
    {
      v7 = v5;
      v8 = v15;
      if (v6)
      {
LABEL_6:

        return;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v6;
      v7 = String._bridgeToObjectiveC()();

      if (v6)
      {
        goto LABEL_6;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *a1;
    sub_100231698(v7, 0xD000000000000018, 0x80000001002A9840, isUniquelyReferenced_nonNull_native);
    *a1 = v15;
  }
}

uint64_t variable initialization expression of URLBagFeatureFlag.cachedURL@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t getEnumTagSinglePayload for AppleIDPasskeyPRFExtensionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppleIDPasskeyPRFExtensionType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001AB6E4(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372010, type metadata accessor for AppleIDPasskeyError, &unk_10029C118);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001AB750(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372010, type metadata accessor for AppleIDPasskeyError, &unk_10029C118);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001AB7BC(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372040, type metadata accessor for AppleIDPasskeyError, &unk_10029C588);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001AB828(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100371FD0, type metadata accessor for SignInWithAppleError, &unk_10029C230);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001AB894(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100371FD0, type metadata accessor for SignInWithAppleError, &unk_10029C230);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001AB900(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372690, type metadata accessor for SignInWithAppleError, &unk_10029C488);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001AB96C(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372150, type metadata accessor for DeviceListError, &unk_10029C918);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001AB9D8(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372150, type metadata accessor for DeviceListError, &unk_10029C918);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001ABA44(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372180, type metadata accessor for DeviceListError, &unk_10029CCE8);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001ABAB0(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372118, type metadata accessor for PrivateEmailError, &unk_10029CA68);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001ABB1C(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372118, type metadata accessor for PrivateEmailError, &unk_10029CA68);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001ABB88(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372148, type metadata accessor for PrivateEmailError, &unk_10029CBE8);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001ABBF4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1001ABC6C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1001ABCEC@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1001ABD40(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372040, type metadata accessor for AppleIDPasskeyError, &unk_10029C588);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001ABDAC(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372040, type metadata accessor for AppleIDPasskeyError, &unk_10029C588);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001ABE18(void *a1, uint64_t a2)
{
  v4 = sub_1001AC62C(&qword_100372040, type metadata accessor for AppleIDPasskeyError, &unk_10029C588);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001ABEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AC62C(&qword_100372040, type metadata accessor for AppleIDPasskeyError, &unk_10029C588);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1001ABF34(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372690, type metadata accessor for SignInWithAppleError, &unk_10029C488);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001ABFA0(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372690, type metadata accessor for SignInWithAppleError, &unk_10029C488);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001AC00C(void *a1, uint64_t a2)
{
  v4 = sub_1001AC62C(&qword_100372690, type metadata accessor for SignInWithAppleError, &unk_10029C488);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001AC09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AC62C(&qword_100372690, type metadata accessor for SignInWithAppleError, &unk_10029C488);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1001AC128(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372180, type metadata accessor for DeviceListError, &unk_10029CCE8);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001AC194(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372180, type metadata accessor for DeviceListError, &unk_10029CCE8);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001AC200(void *a1, uint64_t a2)
{
  v4 = sub_1001AC62C(&qword_100372180, type metadata accessor for DeviceListError, &unk_10029CCE8);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001AC290(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AC62C(&qword_100372180, type metadata accessor for DeviceListError, &unk_10029CCE8);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1001AC31C(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372148, type metadata accessor for PrivateEmailError, &unk_10029CBE8);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001AC388(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372148, type metadata accessor for PrivateEmailError, &unk_10029CBE8);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001AC3F4(void *a1, uint64_t a2)
{
  v4 = sub_1001AC62C(&qword_100372148, type metadata accessor for PrivateEmailError, &unk_10029CBE8);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001AC484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AC62C(&qword_100372148, type metadata accessor for PrivateEmailError, &unk_10029CBE8);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1001AC500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001AC560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001AC62C(&qword_100372040, type metadata accessor for AppleIDPasskeyError, &unk_10029C588);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001AC62C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001AC674(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372048, type metadata accessor for AKURLBagKey, &unk_10029C400);
  v3 = sub_1001AC62C(&unk_100372050, type metadata accessor for AKURLBagKey, &unk_10029C3A8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001AC730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001AC62C(&qword_100372690, type metadata accessor for SignInWithAppleError, &unk_10029C488);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_1001AC800()
{
  result = qword_100371FB0;
  if (!qword_100371FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100371FB0);
  }

  return result;
}

uint64_t sub_1001AC8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001AC62C(&qword_100372180, type metadata accessor for DeviceListError, &unk_10029CCE8);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001AC968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001AC62C(&qword_100372148, type metadata accessor for PrivateEmailError, &unk_10029CBE8);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001AC9EC@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1001ACA34(uint64_t a1)
{
  v2 = sub_1001AC62C(&qword_100372188, type metadata accessor for Scope, &unk_10029CB60);
  v3 = sub_1001AC62C(&qword_100372190, type metadata accessor for Scope, &unk_10029CB08);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1001ACAF0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1001ACB2C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1001ACB80(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

unint64_t sub_1001ACDB8()
{
  result = qword_100371FF8;
  if (!qword_100371FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100371FF8);
  }

  return result;
}

uint64_t sub_1001AD0A8(void *a1, uint64_t *a2)
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

unint64_t sub_1001AD130(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100325F30, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001AD17C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001AD1C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100011B1C;

  return sub_1001AA408(v2, v3, v4);
}

uint64_t sub_1001AD278()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001AD2E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1001AD31C(void *a1, uint64_t a2, unint64_t a3)
{
  sub_1001AD17C(&qword_100372070, &qword_10029C6D0);

  sub_1001AA89C(a1, a2, a3);
}

unint64_t sub_1001AD440()
{
  result = qword_100372950;
  if (!qword_100372950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100372950);
  }

  return result;
}

uint64_t sub_1001AD48C(void *a1)
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

uint64_t sub_1001AD50C(uint64_t a1, int a2)
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

uint64_t sub_1001AD52C(uint64_t result, int a2, int a3)
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

__n128 sub_1001AD590(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1001AD59C(uint64_t a1, int a2)
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

uint64_t sub_1001AD5BC(uint64_t result, int a2, int a3)
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

void sub_1001ADAA0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_1001ADD0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v8 = 0;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AccountSharingRequestProvider();
  v4 = objc_msgSendSuper2(&v7, "validateResponseData:error:", isa, &v8);

  if (v4)
  {
    return v8;
  }

  v6 = v8;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return swift_willThrow();
}

id sub_1001AE18C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AccountSharingRequestProvider();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001AE1E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100013B34(result, a2);
  }

  return result;
}

uint64_t sub_1001AE43C(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1001AE518;

  return sub_1001B0268(a2);
}

uint64_t sub_1001AE518(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v12 = *(v9 + 8);

  return v12();
}

id sub_1001AE7C0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001AE888()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001AE94C;

  return sub_1001AE43C(v2, v3, v5, v4);
}

uint64_t sub_1001AE94C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001AEA40(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1001B1078((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_1001AEB18()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001AEB58(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1001AEB78, 0, 0);
}

uint64_t sub_1001AEB78()
{
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = sub_1001AD2E4(v1, qword_1003776B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start passkey registration.", v4, 2u);
  }

  v5 = v0[18];
  v6 = v0[19];

  v7 = *(v6 + OBJC_IVAR___AKAppleIDPasskeyEnrollController_registrationProvider);
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_1001AED60;
  v8 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372280, &qword_10029CEF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001B8454;
  v0[13] = &unk_100326550;
  v0[14] = v8;
  [v7 performRegistrationRequestWith:v5 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001AED60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1001AEE8C;
  }

  else
  {
    v2 = sub_1001AEE70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AEE8C(uint64_t a1)
{
  swift_willThrow();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed passkey registration with error: %@.", v4, 0xCu);
    sub_1001B10BC(v5, &unk_1003726A0, &unk_10029CFA0);
  }

  swift_willThrow();
  v7 = *(v1 + 8);

  return v7(0);
}

uint64_t sub_1001AEFE8(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return _swift_task_switch(sub_1001AF008, 0, 0);
}

uint64_t sub_1001AF008()
{
  v19 = v0;
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = type metadata accessor for Logger();
  v0[23] = sub_1001AD2E4(v2, qword_1003776B0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = [v6 relyingPartyIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10024B050(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Setting up AppleID passkey for %s", v7, 0xCu);
    sub_1001AD48C(v8);
  }

  v14 = v0[21];
  v15 = *(v0[22] + OBJC_IVAR___AKAppleIDPasskeyEnrollController_credentialProvider);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001AF28C;
  v16 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372290, &qword_10029CF18);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001B113C;
  v0[13] = &unk_100326528;
  v0[14] = v16;
  [v15 createCredentialWith:v14 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001AF28C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1001AF850;
  }

  else
  {
    v2 = sub_1001AF39C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AF39C()
{
  v1 = v0[18];
  v0[25] = v1;
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully created credential - %@", v5, 0xCu);
    sub_1001B10BC(v6, &unk_1003726A0, &unk_10029CFA0);
  }

  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_1001AF510;

  return sub_1001AEB58(v2);
}

uint64_t sub_1001AF510(char a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_1001AF6A4;
  }

  else
  {
    *(v4 + 224) = a1 & 1;
    v5 = sub_1001AF63C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001AF63C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 224);

  return v1(v2);
}

uint64_t sub_1001AF6A4()
{
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create passkey %@.", v3, 0xCu);
    sub_1001B10BC(v4, &unk_1003726A0, &unk_10029CFA0);
  }

  type metadata accessor for AppleIDPasskeyError(0);
  *(v0 + 160) = -120011;
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B1020();
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_1001AF850(uint64_t a1)
{
  swift_willThrow();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create passkey %@.", v4, 0xCu);
    sub_1001B10BC(v5, &unk_1003726A0, &unk_10029CFA0);
  }

  type metadata accessor for AppleIDPasskeyError(0);
  *(v1 + 160) = -120011;
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B1020();
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v7 = *(v1 + 8);

  return v7(0);
}

uint64_t sub_1001AFA18()
{
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = sub_1001AD2E4(v1, qword_1003776B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start passkey challenge.", v4, 2u);
  }

  v5 = v0[19];

  v6 = *(v5 + OBJC_IVAR___AKAppleIDPasskeyEnrollController_challengeProvider);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001AFBFC;
  v7 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372288, &unk_10029CF00);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001B1138;
  v0[13] = &unk_100326500;
  v0[14] = v7;
  [v6 performChallengeRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001AFBFC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1001B0110;
  }

  else
  {
    v2 = sub_1001AFD0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AFD0C(uint64_t a1)
{
  v2 = v1[18];
  v1[22] = v2;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished passkey challenge.", v5, 2u);
  }

  v6 = swift_task_alloc();
  v1[23] = v6;
  *v6 = v1;
  v6[1] = sub_1001AFE20;

  return sub_1001AEFE8(v2);
}

uint64_t sub_1001AFE20(char a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_1001AFFB4;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v5 = sub_1001AFF4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001AFF4C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 200);

  return v1(v2);
}

uint64_t sub_1001AFFB4()
{
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create passkey challenge %@.", v3, 0xCu);
    sub_1001B10BC(v4, &unk_1003726A0, &unk_10029CFA0);
  }

  swift_willThrow();
  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_1001B0110(uint64_t a1)
{
  swift_willThrow();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create passkey challenge %@.", v4, 0xCu);
    sub_1001B10BC(v5, &unk_1003726A0, &unk_10029CFA0);
  }

  swift_willThrow();
  v7 = *(v1 + 8);

  return v7(0);
}

uint64_t sub_1001B0268(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 185) = a1;
  return _swift_task_switch(sub_1001B028C, 0, 0);
}

uint64_t sub_1001B028C()
{
  v1 = *(*(v0 + 160) + OBJC_IVAR___AKAppleIDPasskeyEnrollController_passkeyValidator);
  v2 = *(v0 + 185);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 184;
  *(v0 + 24) = sub_1001B03C4;
  v3 = swift_continuation_init();
  *(v0 + 136) = sub_1001AD17C(&qword_100372280, &qword_10029CEF0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001B8454;
  *(v0 + 104) = &unk_1003264D8;
  *(v0 + 112) = v3;
  [v1 canCreatePasskeyWithForced:v2 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001B03C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1001B0708;
  }

  else
  {
    v2 = sub_1001B04D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B04D4()
{
  if (*(v0 + 184) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 176) = v1;
    *v1 = v0;
    v1[1] = sub_1001B0600;

    return sub_1001AF9F8();
  }

  else
  {
    type metadata accessor for AppleIDPasskeyError(0);
    *(v0 + 152) = -12002;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3(0);
  }
}

uint64_t sub_1001B0600(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1001B0708(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2(0);
}

id sub_1001B0778(void *a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v8 = result;
    v9 = [result startPasskeyRegistrationURL];

    if (v9)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = type metadata accessor for URL();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
      sub_1001B10BC(v6, &qword_100372298, &qword_10029CF30);
      v11 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
      v12 = [a1 altDSID];
      if (!v12)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = String._bridgeToObjectiveC()();
      }

      [v11 setAltDSID:v12];

      v13 = [objc_allocWithZone(type metadata accessor for AppleIDPasskeyRequestProvider()) initWithContext:v11 urlBagKey:AKURLBagKeyStartPasskeyRegistration];
      [v13 setAuthenticatedRequest:1];
      [v13 setClient:a2];
      v14 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v13];
      v15 = [objc_opt_self() sharedInstance];
      v16 = type metadata accessor for AppleIDPasskeyChallengeProvider();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR___AKAppleIDPasskeyChallengeProvider_serviceController] = v14;
      *&v17[OBJC_IVAR___AKAppleIDPasskeyChallengeProvider_accountManager] = v15;
      v28.receiver = v17;
      v28.super_class = v16;
      v18 = v14;
      v19 = v15;
      v20 = objc_msgSendSuper2(&v28, "init");
    }

    else
    {
      v21 = type metadata accessor for URL();
      (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
      sub_1001B10BC(v6, &qword_100372298, &qword_10029CF30);
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1001AD2E4(v22, qword_1003776B0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        type metadata accessor for AppleIDPasskeyError(0);
        v29 = -120013;
        sub_1001E4150(_swiftEmptyArrayStorage);
        sub_1001B1020();
        _BridgedStoredNSError.init(_:userInfo:)();
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&_mh_execute_header, v23, v24, "Missing passkey start registration url %@.", v25, 0xCu);
        sub_1001B10BC(v26, &unk_1003726A0, &unk_10029CFA0);
      }

      return 0;
    }

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001B0BCC(void *a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v8 = result;
    v9 = [result finishPasskeyRegistrationURL];

    if (v9)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = type metadata accessor for URL();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
      sub_1001B10BC(v6, &qword_100372298, &qword_10029CF30);
      v11 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
      v12 = [a1 altDSID];
      if (!v12)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = String._bridgeToObjectiveC()();
      }

      [v11 setAltDSID:v12];

      v13 = [objc_allocWithZone(type metadata accessor for AppleIDPasskeyRequestProvider()) initWithContext:v11 urlBagKey:AKURLBagKeyFinishPasskeyRegistration];
      [v13 setAuthenticatedRequest:1];
      [v13 setClient:a2];
      v14 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v13];
      v15 = [objc_opt_self() sharedInstance];
      v16 = type metadata accessor for AppleIDPasskeyRegistrationProvider();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR___AKAppleIDPasskeyRegistrationProvider_serviceController] = v14;
      *&v17[OBJC_IVAR___AKAppleIDPasskeyRegistrationProvider_accountManager] = v15;
      v28.receiver = v17;
      v28.super_class = v16;
      v18 = v14;
      v19 = v15;
      v20 = objc_msgSendSuper2(&v28, "init");
    }

    else
    {
      v21 = type metadata accessor for URL();
      (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
      sub_1001B10BC(v6, &qword_100372298, &qword_10029CF30);
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1001AD2E4(v22, qword_1003776B0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        type metadata accessor for AppleIDPasskeyError(0);
        v29 = -120013;
        sub_1001E4150(_swiftEmptyArrayStorage);
        sub_1001B1020();
        _BridgedStoredNSError.init(_:userInfo:)();
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&_mh_execute_header, v23, v24, "Missing passkey finish registration url %@.", v25, 0xCu);
        sub_1001B10BC(v26, &unk_1003726A0, &unk_10029CFA0);
      }

      return 0;
    }

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001B1020()
{
  result = qword_100372040;
  if (!qword_100372040)
  {
    type metadata accessor for AppleIDPasskeyError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100372040);
  }

  return result;
}

void *sub_1001B1078(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1001B10BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001AD17C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1001B122C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001B12C0;

  return sub_1001B1874();
}

uint64_t sub_1001B12C0(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 33) = a1 & 1;

    return _swift_task_switch(sub_1001B1414, 0, 0);
  }
}

uint64_t sub_1001B1414()
{
  if (*(v0 + 33) != 1)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1001AD2E4(v12, qword_1003776B0);
    v8 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v8, v13))
    {
      goto LABEL_31;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Passkey eligibility checks didn't meet preconditions.";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v8, v13, v15, v14, 2u);

    goto LABEL_31;
  }

  if (![*(*(v0 + 16) + OBJC_IVAR___AKAppleIDPasskeyValidator_device) isUnlocked])
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1001AD2E4(v16, qword_1003776B0);
    v8 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v8, v13))
    {
      goto LABEL_31;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Passkey eligibility check failed -  Device is in locked state.";
    goto LABEL_30;
  }

  v1 = *(*(v0 + 16) + OBJC_IVAR___AKAppleIDPasskeyValidator_accountManager);
  v2 = [v1 primaryAuthKitAccount];
  if (!v2)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1001AD2E4(v18, qword_1003776B0);
    v8 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v13))
    {
      goto LABEL_31;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Passkey eligibility check failed - missing primary account.";
    goto LABEL_30;
  }

  v3 = v2;
  if ((*(v0 + 32) & 1) == 0)
  {
    v4 = [v1 passkeyPresentForAccount:v2];
    if (!v4 || (v5 = v4, v6 = [v4 BOOLValue], v5, v6))
    {
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1001AD2E4(v7, qword_1003776B0);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_25;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Server already has a valid passkey registered.";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);

LABEL_25:

LABEL_31:
      v19 = 0;
      goto LABEL_32;
    }
  }

  if (sub_1001B3A80(&selRef_passkeyRegistrationAttemptDateForAccount_, "Last registration was attempted within a day.", "Last registration was attempted more than a day ago. Continuing with registration", "No Previous regisration attempts recorded on this device. Continuing with registration"))
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1001AD2E4(v17, qword_1003776B0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_25;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Recently attempted passkey registration. Skipping registration.";
    goto LABEL_24;
  }

  v19 = 1;
  v8 = v3;
LABEL_32:

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_1001B1894()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR___AKAppleIDPasskeyValidator_accountManager);
  v3 = [v2 passkeyEligibleForAccount:*(v1 + OBJC_IVAR___AKAppleIDPasskeyValidator_account)];
  v0[3] = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  if (![v3 BOOLValue])
  {

LABEL_9:
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_1003776B0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Passkey eligibility check failed - passkeyEligible server flag is false", v13, 2u);
    }

    goto LABEL_23;
  }

  if (sub_1001B2E38())
  {
    v5 = [v2 primaryAuthKitAccount];
    v0[4] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v0[2];
      v8 = swift_task_alloc();
      v0[5] = v8;
      *(v8 + 16) = v7;
      *(v8 + 24) = v6;
      v9 = swift_task_alloc();
      v0[6] = v9;
      *v9 = v0;
      v9[1] = sub_1001B1C48;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 8, 0, 0, 0xD000000000000013, 0x80000001002AA370, sub_1001B4F20, v8, &type metadata for Bool);
    }

    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1001AD2E4(v18, qword_1003776B0);
    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v15))
    {
      goto LABEL_22;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Passkey eligibility check failed - Primary account not found";
  }

  else
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1001AD2E4(v14, qword_1003776B0);
    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v15))
    {
      goto LABEL_22;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Passkey eligibility check failed - Passkey not supported";
  }

  _os_log_impl(&_mh_execute_header, v11, v15, v17, v16, 2u);

LABEL_22:

LABEL_23:
  v19 = v0[1];

  return v19(0);
}

uint64_t sub_1001B1C48()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1001B1DD0;
  }

  else
  {

    v2 = sub_1001B1D64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B1D64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001B1DD0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1001B1FCC(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1001B2088;

  return sub_1001B122C(a1);
}

uint64_t sub_1001B2088(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1001B2218(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  return _swift_task_switch(sub_1001B223C, 0, 0);
}

uint64_t sub_1001B223C()
{
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 24) = sub_1001AD2E4(v1, qword_1003776B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing eligibility checks before unenrolling...", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR___AKAppleIDPasskeyValidator_accountManager);
  v7 = [v6 primaryAuthKitAccount];
  *(v0 + 32) = v7;
  if (!v7)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Passkey eligibility check failed - missing primary account.", v15, 2u);
    }

    goto LABEL_26;
  }

  v8 = v7;
  if (*(v0 + 64))
  {
LABEL_7:
    v9 = [v6 passkeyPresentForAccount:v8];
    *(v0 + 40) = v9;
    if (v9)
    {
      v10 = v9;
      if ([v9 BOOLValue])
      {
        v11 = swift_task_alloc();
        *(v0 + 48) = v11;
        *v11 = v0;
        v11[1] = sub_1001B267C;

        return sub_1001B1874();
      }
    }

    v13 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v13, v22))
    {
      goto LABEL_25;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Server already has no passkey registered. Nothing to unenroll";
    goto LABEL_24;
  }

  v16 = [v6 passkeysInKeychainCountForAccount:v7];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 integerValue];
    v13 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    v20 = os_log_type_enabled(v13, v19);
    if (v18)
    {
      if (v20)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v13, v19, "Keychain has an AppleID passkey. Unenroll not required.", v21, 2u);
      }

      goto LABEL_25;
    }

    if (v20)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v13, v19, "Keychain has no AppleID passkey", v26, 2u);
    }

    goto LABEL_7;
  }

  v13 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "No passkeyCount saved. Skipping unenroll";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v13, v22, v24, v23, 2u);
  }

LABEL_25:

LABEL_26:
  v25 = *(v0 + 8);

  return v25(0);
}

uint64_t sub_1001B267C(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1001B28A8;
  }

  else
  {
    *(v4 + 65) = a1 & 1;
    v5 = sub_1001B27A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001B27A8(uint64_t a1)
{
  v2 = *(v1 + 65);
  if (v2 == 1)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v3, v5);
    v7 = *(v1 + 32);
    v4 = *(v1 + 40);
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, v5, "Did not meet passkey eligibility criteria.", v8, 2u);
    }
  }

  v9 = *(v1 + 8);

  return v9(v2);
}

uint64_t sub_1001B28A8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1001B2A98(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1001B56EC;

  return sub_1001B2218(a1);
}

uint64_t sub_1001B2B54()
{
  if ((sub_1001B2E38() & 1) == 0)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1001AD2E4(v2, qword_1003776B0);
    v3 = v0;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    v8 = *&v3[OBJC_IVAR___AKAppleIDPasskeyValidator_account];
    *(v6 + 4) = v8;
    *v7 = v8;
    *(v6 + 12) = 2112;
    type metadata accessor for AppleIDPasskeyError(0);
    v9 = v8;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    v7[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Account %@ is not passkey supported. Error %@", v6, 0x16u);
    sub_1001AD17C(&unk_1003726A0, &unk_10029CFA0);
    swift_arrayDestroy();

    goto LABEL_12;
  }

  if ([*&v0[OBJC_IVAR___AKAppleIDPasskeyValidator_cdpFactory] isManateeAvailable])
  {
    return 1;
  }

  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1001AD2E4(v11, qword_1003776B0);
  v12 = v0;
  v4 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = *&v12[OBJC_IVAR___AKAppleIDPasskeyValidator_account];
    *(v14 + 4) = v16;
    *v15 = v16;
    v17 = v16;
    _os_log_impl(&_mh_execute_header, v4, v13, "Account %@ is not passkey supported. Keychain sync is not enabled.", v14, 0xCu);
    sub_1001B4EB8(v15);

LABEL_12:
  }

LABEL_13:

  return 0;
}

uint64_t sub_1001B2E38()
{
  if (![*&v0[OBJC_IVAR___AKAppleIDPasskeyValidator_featureManager] isAppleIDPasskeyFeatureEnabled])
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1001AD2E4(v8, qword_1003776B0);
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v9))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Passkey not supported - Feature flag is disabled.";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v3, v9, v11, v10, 2u);
LABEL_22:

LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  if ((sub_1001B4C68() & 1) == 0)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1001AD2E4(v12, qword_1003776B0);
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v9))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Passkey not supported - Not a primary account";
    goto LABEL_21;
  }

  if (![*&v0[OBJC_IVAR___AKAppleIDPasskeyValidator_device] isProtectedWithPasscode])
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1001AD2E4(v13, qword_1003776B0);
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v9))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Passkey not supported - Device is not passcode protected.";
    goto LABEL_21;
  }

  v1 = *&v0[OBJC_IVAR___AKAppleIDPasskeyValidator_account];
  v2 = [*&v0[OBJC_IVAR___AKAppleIDPasskeyValidator_accountManager] DSIDForAccount:v1];
  if (!v2)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1001AD2E4(v15, qword_1003776B0);
    v16 = v0;
    v3 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v3, v17))
    {
      goto LABEL_23;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v1;
    *v19 = v1;
    v20 = v1;
    _os_log_impl(&_mh_execute_header, v3, v17, "Passkey not supported - Missing DSID for account %@.", v18, 0xCu);
    sub_1001B4EB8(v19);

    goto LABEL_22;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR___AKAppleIDPasskeyValidator_cdpFactory];
  v5 = [v2 stringValue];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [v4 isCDPEnabledForDSID:v5];

  if ((v6 & 1) == 0)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1001AD2E4(v21, qword_1003776B0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Passkey not supported - CDP is not enabled", v24, 2u);
    }

    goto LABEL_23;
  }

  v7 = 1;
LABEL_24:

  return v7;
}

id sub_1001B3320()
{
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = sub_1001AD2E4(v1, qword_1003776B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing eligibility checks for passkeys cleanup...", v4, 2u);
  }

  result = [objc_opt_self() sharedBag];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result isPasskeyCleanupDisabled];

  if (v7)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "isPasskeyCleanupDisabled is set to YES. Skipping cleanup.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (sub_1001B3A80(&selRef_passkeysDeletionAttemptDateForAccount_, "Last passkeys cleanup was attempted within a day.", "Last passkeys cleanup was attempted more than a day ago. Continuing...", "No Previous passkeys cleanup attempts recorded on this device. Continuing..."))
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Recently attempted passkey cleanup. Skipping for now.";
      goto LABEL_12;
    }

LABEL_13:

    v12 = v0[1];

    return v12(0);
  }

  v13 = swift_task_alloc();
  v0[4] = v13;
  *v13 = v0;
  v13[1] = sub_1001B35DC;

  return sub_1001B1874();
}

uint64_t sub_1001B35DC(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 65) = a1 & 1;

    return _swift_task_switch(sub_1001B3730, 0, 0);
  }
}

uint64_t sub_1001B3730(uint64_t a1)
{
  if (*(v1 + 65) == 1)
  {
    v2 = *(v1 + 16);
    v3 = swift_task_alloc();
    *(v1 + 40) = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    *(v1 + 48) = v4;
    *v4 = v1;
    v4[1] = sub_1001B38E0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 64, 0, 0, 0xD000000000000016, 0x80000001002AA330, sub_1001B4E24, v3, &type metadata for Bool);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Passkey cleanup eligibility check failed - didn't meet passkey eligibility criteria", v7, 2u);
    }

    v8 = *(v1 + 8);

    return v8(0);
  }
}

uint64_t sub_1001B38E0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1001B3A18;
  }

  else
  {

    v2 = sub_1001B39FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B3A18()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1001B3A80(SEL *a1, const char *a2, const char *a3, const char *a4)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = [*(v4 + OBJC_IVAR___AKAppleIDPasskeyValidator_accountManager) *a1];
  if (!v16)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1001AD2E4(v26, qword_1003776B0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, a4, v29, 2u);
    }

    return 0;
  }

  v17 = v16;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v13, v9);
  if (v19 >= 86400.0)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1001AD2E4(v30, qword_1003776B0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, a3, v33, 2u);
    }

    v20(v15, v9);
    return 0;
  }

  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1001AD2E4(v21, qword_1003776B0);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, a2, v24, 2u);
  }

  v20(v15, v9);
  return 1;
}

void sub_1001B3E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + OBJC_IVAR___AKAppleIDPasskeyValidator_authenticationController);
  v9 = *(a2 + OBJC_IVAR___AKAppleIDPasskeyValidator_account);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_1001B4E2C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001B4458;
  aBlock[3] = &unk_1003265A0;
  v12 = _Block_copy(aBlock);

  [v8 appleIDPasskeysForAccount:v9 withCompletion:v12];
  _Block_release(v12);
}

uint64_t sub_1001B3FFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1001AD2E4(v2, qword_1003776B0);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Passkey cleanup eligibility check failed - error %@", v5, 0xCu);
      sub_1001B4EB8(v6);
    }

    sub_1001AD17C(&qword_100372300, &unk_10029CF90);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1 || (v8 = *(a1 + 16)) == 0)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1001AD2E4(v13, qword_1003776B0);
    v10 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, v14, "Passkey cleanup not required - No passkeys found in iCloud keychain", v15, 2u);
    }

    goto LABEL_19;
  }

  if (v8 == 1)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1001AD2E4(v9, qword_1003776B0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Passkey cleanup not required. No duplicate passkeys found.", v12, 2u);
    }

LABEL_19:

    type metadata accessor for AppleIDPasskeyError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    sub_1001AD17C(&qword_100372300, &unk_10029CF90);
    return CheckedContinuation.resume(throwing:)();
  }

  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1001AD2E4(v17, qword_1003776B0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Passkey cleanup required - duplicate passkeys found", v20, 2u);
  }

  sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001B4458(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1001AD17C(&qword_100372308, &qword_10029E2A0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1001B466C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1001B56F0;

  return sub_1001B3300();
}

id sub_1001B4744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIDPasskeyValidator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001B4838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  v10 = *(a2 + OBJC_IVAR___AKAppleIDPasskeyValidator_authenticationController);
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1001B4FBC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001B8520;
  aBlock[3] = &unk_1003265F0;
  v13 = _Block_copy(aBlock);

  [v10 canCreateiCloudKeychainPasskeyForAccount:a3 withCompletion:v13];
  _Block_release(v13);
}

uint64_t sub_1001B49FC(char a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1001AD2E4(v2, qword_1003776B0);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Passkey eligibility check failed - canCreateiCloudKeychainPasskey error %@", v5, 0xCu);
      sub_1001B4EB8(v6);
    }

    sub_1001AD17C(&qword_100372300, &unk_10029CF90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1001AD2E4(v9, qword_1003776B0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Passkey eligibility check failed - Not eligible to create passkey in keychain", v12, 2u);
      }
    }

    sub_1001AD17C(&qword_100372300, &unk_10029CF90);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001B4C68()
{
  v1 = *&v0[OBJC_IVAR___AKAppleIDPasskeyValidator_accountManager];
  v2 = *&v0[OBJC_IVAR___AKAppleIDPasskeyValidator_account];
  v3 = [v1 altDSIDForAccount:v2];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 iCloudAccountForAltDSID:v3];

    if (v5)
    {
      v6 = [v1 isPrimaryiCloudAccount:v5];

      if (v6)
      {
        return 1;
      }
    }
  }

  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1001AD2E4(v8, qword_1003776B0);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v2;
    *v13 = v2;
    v14 = v2;
    _os_log_impl(&_mh_execute_header, v10, v11, "Not a primary account %@.", v12, 0xCu);
    sub_1001B4EB8(v13);
  }

  return 0;
}

uint64_t sub_1001B4E2C(uint64_t a1, uint64_t a2)
{
  sub_1001AD17C(&qword_100372300, &unk_10029CF90);

  return sub_1001B3FFC(a1, a2);
}

uint64_t sub_1001B4EB8(uint64_t a1)
{
  v2 = sub_1001AD17C(&unk_1003726A0, &unk_10029CFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B4F28()
{
  v1 = sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001B4FBC(char a1, uint64_t a2)
{
  sub_1001AD17C(&qword_100372300, &unk_10029CF90);

  return sub_1001B49FC(a1, a2);
}

uint64_t sub_1001B5048()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001B56F8;

  return sub_1001B466C(v2, v3);
}

uint64_t sub_1001B50F4()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001B5704;

  return sub_1001B2A98(v2, v4, v3);
}

uint64_t sub_1001B51A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001B56FC;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001B5268(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001B5700;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001B5334()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001B5374()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001B5428;

  return sub_1001B1FCC(v2, v4, v3);
}

uint64_t sub_1001B5428()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001B551C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001B5708;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1001B55DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001B561C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001B570C;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1001B5714(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;

  return _swift_task_switch(sub_1001B57A4, 0, 0);
}

uint64_t sub_1001B57A4()
{
  v105 = v0;
  if (![*(*(v0 + 120) + 24) isSiwaCredentialSharingEnabled])
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1001AD2E4(v27, qword_100377698);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Feature flag SiwaCredentialSharingEnabled is not enabled", v30, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 24) = -16001;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_18;
  }

  sub_1001B6904();
  v1 = [*(v0 + 112) signInWithAppleAccount];
  *(v0 + 128) = v1;
  if (!v1)
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1001AD2E4(v33, qword_100377698);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "No SIWA account set in context.", v36, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 40) = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
LABEL_18:
    swift_willThrow();
    goto LABEL_19;
  }

  v2 = v1;
  v3 = [v1 shareInfo];
  *(v0 + 136) = v3;
  if (!v3)
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1001AD2E4(v37, qword_100377698);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "ShareInfo is missing in the account.", v40, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 56) = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    goto LABEL_19;
  }

  v4 = v3;
  v5 = [*(v0 + 112) currentGroupID];
  if (!v5)
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1001AD2E4(v41, qword_100377698);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "No currentGroupID set in context.", v44, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 72) = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    goto LABEL_58;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  *(v0 + 144) = v8;
  if (![v4 isCurrentUser])
  {
    if ([*(v0 + 112) _simulateAccountSharingResponse])
    {
      v45 = *(v0 + 120);

      v46 = *(v45 + 32);
      *(v0 + 96) = 0;
      v47 = [v46 removeSharedAccount:v2 error:v0 + 96];
      v48 = *(v0 + 96);
      if (v47)
      {
        v49 = v48;

        goto LABEL_41;
      }

      v50 = v48;
      goto LABEL_57;
    }

    v103 = v7;
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1001AD2E4(v51, qword_100377698);
    v52 = v2;
    v53 = v4;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();

    v101 = v52;
    if (os_log_type_enabled(v54, v55))
    {
      v99 = v9;
      v56 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v56 = 136315394;
      v57 = [v52 clientID];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v53;
      v61 = v60;

      v62 = sub_10024B050(v58, v61, &v104);

      *(v56 + 4) = v62;
      *(v56 + 12) = 2080;
      v63 = [v59 participantID];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = sub_10024B050(v64, v66, &v104);
      v53 = v59;

      *(v56 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v54, v55, "Unsharing %s belonging to %s", v56, 0x16u);
      swift_arrayDestroy();

      v9 = v99;
    }

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Fetching shareToken...", v70, 2u);
    }

    v71 = *(v0 + 120);

    v72 = *(v71 + 32);
    *(v0 + 80) = 0;
    v73 = [v72 shareTokenForAccount:v101 inGroup:v6 error:v0 + 80];

    v74 = *(v0 + 80);
    if (v73)
    {
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;
      *(v0 + 176) = v76;
      v78 = v74;

      *(v0 + 88) = 0;
      v79 = [v72 removeSharedAccount:v101 error:v0 + 88];
      v80 = *(v0 + 88);
      if (v79)
      {
        sub_1001B75A4((*(v0 + 120) + 40), *(*(v0 + 120) + 64));
        v81 = v80;
        v82 = [v101 clientID];
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        *(v0 + 184) = v85;
        v86 = swift_task_alloc();
        *(v0 + 192) = v86;
        *v86 = v0;
        v86[1] = sub_1001B66D0;
        v87 = v103;
        v88 = v83;
        v89 = v85;
        v90 = v9;
        v91 = v75;
        v92 = v77;
        goto LABEL_53;
      }

      v98 = v80;
    }

    else
    {
      v98 = v74;
    }

    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_19:
    v31 = *(v0 + 8);
LABEL_20:

    return v31();
  }

  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1001AD2E4(v10, qword_100377698);
  v2 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v102 = v7;
    v104 = v100;
    *v13 = 136315138;
    v14 = [v2 clientID];
    v15 = v2;
    v16 = v9;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = v17;
    v9 = v16;
    v2 = v15;
    v21 = sub_10024B050(v20, v19, &v104);

    *(v13 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "Unsharing %s belonging to current user", v13, 0xCu);
    sub_1001B75E8(v100);
    v7 = v102;
  }

  v22 = *(*(v0 + 120) + 32);
  *(v0 + 104) = 0;
  v23 = [v22 removeSharedAccount:v2 error:v0 + 104];
  v24 = *(v0 + 104);
  if (!v23)
  {
    v50 = v24;

LABEL_57:
    _convertNSErrorToError(_:)();

LABEL_58:
    swift_willThrow();

    goto LABEL_19;
  }

  v25 = *(v0 + 112);
  v26 = v24;
  if ([v25 _simulateAccountSharingResponse])
  {

LABEL_41:
    v31 = *(v0 + 8);
    goto LABEL_20;
  }

  sub_1001B75A4((*(v0 + 120) + 40), *(*(v0 + 120) + 64));
  v93 = [v2 clientID];
  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v95;

  *(v0 + 152) = v96;
  v97 = swift_task_alloc();
  *(v0 + 160) = v97;
  *v97 = v0;
  v97[1] = sub_1001B6424;
  v88 = v94;
  v89 = v96;
  v87 = v7;
  v90 = v9;
  v91 = 0;
  v92 = 0;
LABEL_53:

  return sub_1001BE538(v88, v89, v87, v90, v91, v92);
}

uint64_t sub_1001B6424()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1001B663C;
  }

  else
  {
    v2 = sub_1001B65A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B65A8()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001B663C()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001B66D0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1001B6870;
  }

  else
  {
    v2 = sub_1001B7634;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B6870()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001B6904()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Entitlement Check", v4, 2u);
  }

  v5 = *(v0 + 16);
  if (([v5 hasInternalAccess] & 1) != 0 || objc_msgSend(v5, "hasPrivateAccess"))
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Client has necessary permission for accounts unsharing", v8, 2u);
    }
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Client doesn't have access to perform account unsharing", v11, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_1001B6B50(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return _swift_task_switch(sub_1001B6B70, 0, 0);
}

uint64_t sub_1001B6B70()
{
  if ([*(*(v0 + 184) + 24) isSiwaCredentialSharingEnabled])
  {
    sub_1001B6904();
    v1 = [*(v0 + 176) currentGroupID];
    *(v0 + 192) = v1;
    if (v1)
    {
      v2 = *(v0 + 176);
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
      *(v0 + 200) = v4;
      if ([v2 _simulateAccountSharingResponse])
      {

        v6 = *(v0 + 192);
        v7 = *(*(v0 + 184) + 32);
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_1001B7244;
        v8 = swift_continuation_init();
        *(v0 + 136) = sub_1001AD17C(&qword_1003723E8, &qword_10029ED70);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1001B742C;
        *(v0 + 104) = &unk_100326798;
        *(v0 + 112) = v8;
        [v7 removeAllAccountsBelongingToCurrentUserFrom:v6 completionHandler:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

      else
      {
        sub_1001B75A4((*(v0 + 184) + 40), *(*(v0 + 184) + 64));
        v18 = swift_task_alloc();
        *(v0 + 208) = v18;
        *v18 = v0;
        v18[1] = sub_1001B6FBC;

        return sub_1001BF300(v3, v5);
      }
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1001AD2E4(v14, qword_100377698);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No currentGroupID set in context.", v17, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 168) = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1001AD2E4(v9, qword_100377698);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Feature flag SiwaCredentialSharingEnabled is not enabled", v12, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 152) = -16001;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
  }

  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1001B6FBC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 192);

    v5 = *(v3 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_1001B7120, 0, 0);
  }
}

uint64_t sub_1001B7120()
{
  v1 = v0[24];
  v2 = *(v0[23] + 32);
  v0[2] = v0;
  v0[3] = sub_1001B7244;
  v3 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_1003723E8, &qword_10029ED70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001B742C;
  v0[13] = &unk_100326798;
  v0[14] = v3;
  [v2 removeAllAccountsBelongingToCurrentUserFrom:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001B7244()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1001B73B8;
  }

  else
  {
    v2 = sub_1001B7354;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B7354()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001B73B8(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1001B742C(uint64_t a1, void *a2)
{
  v3 = *sub_1001B75A4((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return _swift_continuation_throwingResumeWithError(v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1001B74D8()
{
  swift_unknownObjectRelease();
  sub_1001B75E8((v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_1001B754C()
{
  result = qword_100372690;
  if (!qword_100372690)
  {
    type metadata accessor for SignInWithAppleError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100372690);
  }

  return result;
}

void *sub_1001B75A4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1001B75E8(void *a1)
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

uint64_t sub_1001B7634()
{

  return sub_1001B65A8();
}

uint64_t sub_1001B770C()
{
  v1 = [v0 code];
  if (qword_100371B90 != -1)
  {
    swift_once();
  }

  v2 = qword_1003723F0;
  if (v1 != [qword_1003723F0 code])
  {
    return 0;
  }

  v3 = [v0 domain];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = [v2 domain];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1001AD2E4(v14, qword_100377668);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "We got a nil error from ObjC. Treating as success", v17, 2u);
  }

  return 1;
}

id sub_1001B7914(uint64_t a1)
{
  v5 = 0;
  result = [v1 keychainItemForDescriptor:a1 error:&v5];
  if (v5)
  {
    v3 = result;
    v4 = v5;

    swift_willThrow();
    return 0;
  }

  return result;
}

void *sub_1001B7A18(id a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [a1 setSynchronizable:1];
    v5 = String._bridgeToObjectiveC()();
    [a1 setSharingGroup:v5];
  }

  v17 = 0;
  v6 = [v3 keychainItemsForDescriptor:a1 error:&v17];
  if (v17)
  {
    v7 = v17;

    swift_willThrow();
    v8 = _convertErrorToNSError(_:)();
    v9 = [v8 domain];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if ([v8 code] != -25300)
    {
LABEL_14:
      swift_willThrow();

      return v12;
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1001B81FC();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v12;
}

void sub_1001B7D88(uint64_t a1, SEL *a2, const char *a3, const char *a4, ...)
{
  v25 = 0;
  [v4 *a2];
  v7 = v25;
  if (v25)
  {
    swift_willThrow();
    v8 = v7;
    v9 = _convertErrorToNSError(_:)();
    if (sub_1001B770C())
    {
      if (qword_100371BC8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1001AD2E4(v10, qword_100377668);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 2u);
      }
    }

    else
    {
      if (qword_100371BC8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1001AD2E4(v18, qword_100377668);
      v19 = v9;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        *(v22 + 4) = v19;
        *v23 = v19;
        v24 = v19;
        _os_log_impl(&_mh_execute_header, v20, v21, a4, v22, 0xCu);
        sub_1001B4EB8(v23);
      }

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1001AD2E4(v14, qword_100377668);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, a3, v17, 2u);
    }
  }
}

uint64_t sub_1001B80CC(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5, const char *a6, const char *a7, ...)
{
  v11 = a3;
  v12 = a1;
  sub_1001B7D88(v11, a5, a6, a7);

  return 1;
}

void sub_1001B8184()
{
  v0 = objc_allocWithZone(NSError);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithDomain:v1 code:0 userInfo:0];

  qword_1003723F0 = v2;
}

unint64_t sub_1001B81FC()
{
  result = qword_1003723F8;
  if (!qword_1003723F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003723F8);
  }

  return result;
}

id sub_1001B8248(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_allocWithZone(AAFKeychainItemDescriptor) init];
  [v6 setItemClass:1];
  [v6 setItemAccessible:2];
  [v6 setInvisible:2];
  [v6 setSynchronizable:1];
  [v6 setUseDataProtection:2];
  v7 = String._bridgeToObjectiveC()();
  [v6 setAccount:v7];

  if (a4)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v6 setLabel:v8];

  if (a4)
  {
    v9._countAndFlagsBits = a3;
    v9._object = a4;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
  }

  v11 = String._bridgeToObjectiveC()();

  [v6 setService:v11];

  return v6;
}

uint64_t sub_1001B83F0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001B8454(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_1001B8520(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1001B8628()
{
  v1[3] = v0;
  v2 = type metadata accessor for Date();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001B8714, 0, 0);
}

uint64_t sub_1001B8714()
{
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_1001AD2E4(v1, qword_1003776B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing passkey cleanup if necessary...", v4, 2u);
  }

  v5 = v0[3];

  v6 = *(v5 + OBJC_IVAR___AKAppleIDPasskeyCleanupController_accountManager);
  v0[8] = v6;
  v7 = [v6 primaryAuthKitAccount];
  v0[9] = v7;
  if (v7)
  {
    v8 = v7;
    v9 = [v6 altDSIDForAccount:v7];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v0[10] = v11;
      v0[11] = v13;
      v14 = swift_task_alloc();
      v0[12] = v14;
      *v14 = v0;
      v14[1] = sub_1001B8AAC;

      return sub_1001B963C(v8);
    }

    v19 = v8;
    v16 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v8;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v16, v20, "Passkeys cleanup failed - altDSID not found for account %@.", v21, 0xCu);
      sub_1001B4EB8(v22);
    }

    else
    {

      v16 = v19;
    }
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Passkeys cleanup failed - missing primary account.", v18, 2u);
    }
  }

  v24 = v0[1];

  return v24(0);
}

uint64_t sub_1001B8AAC(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_1001B9450;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v5 = sub_1001B8C00;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001B8C00()
{
  if (*(v0 + 144) == 1)
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v3, v5);
    [v2 setPasskeysDeletionAttemptDate:isa forAccount:v1];

    *(v0 + 16) = 0;
    v7 = [v2 saveAccount:v1 error:v0 + 16];
    v8 = *(v0 + 16);
    if (v7)
    {
      v9 = v8;
      v10 = swift_task_alloc();
      *(v0 + 112) = v10;
      *v10 = v0;
      v10[1] = sub_1001B8EB0;
      v12 = *(v0 + 80);
      v11 = *(v0 + 88);

      return sub_1001B9BDC(v12, v11);
    }

    v20 = *(v0 + 72);
    v21 = v8;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    v19 = *(v0 + 8);
  }

  else
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 72);
    if (v16)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Passkey cleanup skipped", v18, 2u);
    }

    v19 = *(v0 + 8);
  }

  return v19(0);
}

uint64_t sub_1001B8EB0(char a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1001B94F4;
  }

  else
  {
    *(v4 + 145) = a1 & 1;
    v5 = sub_1001B9004;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001B9004()
{
  if (*(v0 + 145) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_1001B91C4;
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);

    return sub_1001BA0A4(v3, v2);
  }

  else
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 72);
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Passkey cleanup failed - unable to unenroll passkey", v9, 2u);
    }

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_1001B91C4(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1001B9598;
  }

  else
  {

    *(v4 + 146) = a1 & 1;
    v5 = sub_1001B9320;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001B9320(uint64_t a1)
{
  v2 = *(v1 + 146);
  if (v2 == 1)
  {
    v3 = *(v1 + 72);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 72);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Passkey cleanup failed - unable to enroll passkey", v7, 2u);
    }
  }

  v8 = *(v1 + 8);

  return v8(v2);
}

uint64_t sub_1001B9450()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1001B94F4()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1001B9598()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1001B963C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1001B965C, 0, 0);
}

uint64_t sub_1001B965C()
{
  v1 = *(v0[19] + OBJC_IVAR___AKAppleIDPasskeyCleanupController_passkeyValidator);
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1001B9784;
  v2 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372280, &qword_10029CEF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001B8454;
  v0[13] = &unk_100326850;
  v0[14] = v2;
  [v1 canDeleteAllPasskeysWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001B9784()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1001B9B04;
  }

  else
  {
    v2 = sub_1001B9894;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B9894()
{
  if (v0[12].i8[0] == 1)
  {
    v1 = swift_task_alloc();
    v0[10].i64[1] = v1;
    v1[1] = vextq_s8(v0[9], v0[9], 8uLL);
    v2 = swift_task_alloc();
    v0[11].i64[0] = v2;
    *v2 = v0;
    v2[1] = sub_1001B99CC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[12].i8[1], 0, 0, 0xD000000000000017, 0x80000001002AA530, sub_1001BB290, v1, &type metadata for Bool);
  }

  else
  {
    v3 = v0->i64[1];

    return v3(0);
  }
}

uint64_t sub_1001B99CC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1001B9B74;
  }

  else
  {

    v2 = sub_1001B9AE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B9B04(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2(0);
}

uint64_t sub_1001B9B74()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1001B9BDC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_1001B9C00, 0, 0);
}

uint64_t sub_1001B9C00()
{
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_1003776B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Begin passkey unenroll", v4, 2u);
  }

  v5 = objc_allocWithZone(AKAppleIDPasskeySetupContext);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithAltDSID:v6];
  v0[3].super_class = v7;

  v8 = sub_100206718(v7, 0, 1);
  v0[4].receiver = v8;
  v9 = *(v0[3].receiver + OBJC_IVAR___AKAppleIDPasskeyCleanupController_passkeyValidator);
  v10 = v8;
  v11 = type metadata accessor for AppleIDPasskeyUnenrollController();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR___AKAppleIDPasskeyUnenrollController_passkeyValidator] = v9;
  *&v12[OBJC_IVAR___AKAppleIDPasskeyUnenrollController_unenrollProvider] = v10;
  v0[1].receiver = v12;
  v0[1].super_class = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v0[4].super_class = objc_msgSendSuper2(v0 + 1, "init");
  v13 = swift_task_alloc();
  v0[5].receiver = v13;
  *v13 = v0;
  v13[1] = sub_1001B9E88;

  return sub_100206B80(1);
}

uint64_t sub_1001B9E88(char a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1001BA02C;
  }

  else
  {
    *(v4 + 96) = a1 & 1;
    v5 = sub_1001B9FB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001B9FB4()
{
  v1 = *(v0 + 56);

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);
  v3 = *(v0 + 96);

  return v2(v3);
}

uint64_t sub_1001BA02C()
{
  v1 = *(v0 + 56);

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1001BA0A4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_1001BA0C8, 0, 0);
}

uint64_t sub_1001BA0C8()
{
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_1003776B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Begin passkey enroll", v4, 2u);
  }

  v5 = objc_allocWithZone(AKAppleIDPasskeySetupContext);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithAltDSID:v6];
  v0[5].super_class = v7;

  v8 = sub_1001B0778(v7, 0);
  v0[6].receiver = v8;
  if (v8)
  {
    v9 = v8;
    v10 = sub_1001B0BCC(v7, 0);
    v0[6].super_class = v10;
    if (v10)
    {
      v11 = v10;
      receiver = v0[5].receiver;
      v13 = [objc_allocWithZone(AKAppleIDPasskeyAuthenticationController) init];
      v14 = type metadata accessor for AppleIDPasskeyCredentialProvider();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR___AKAppleIDPasskeyCredentialProvider_authorizationController] = v13;
      v0[1].receiver = v15;
      v0[1].super_class = v14;
      v16 = objc_msgSendSuper2(v0 + 1, "init");
      v0[7].receiver = v16;
      v17 = *&receiver[OBJC_IVAR___AKAppleIDPasskeyCleanupController_passkeyValidator];
      v18 = type metadata accessor for AppleIDPasskeyEnrollController();
      v19 = objc_allocWithZone(v18);
      *&v19[OBJC_IVAR___AKAppleIDPasskeyEnrollController_passkeyValidator] = v17;
      *&v19[OBJC_IVAR___AKAppleIDPasskeyEnrollController_challengeProvider] = v9;
      *&v19[OBJC_IVAR___AKAppleIDPasskeyEnrollController_credentialProvider] = v16;
      *&v19[OBJC_IVAR___AKAppleIDPasskeyEnrollController_registrationProvider] = v11;
      v0[2].receiver = v19;
      v0[2].super_class = v18;
      v20 = v9;
      v21 = v16;
      v22 = v11;
      swift_unknownObjectRetain();
      v0[7].super_class = objc_msgSendSuper2(v0 + 2, "init");
      v23 = swift_task_alloc();
      v0[8].receiver = v23;
      *v23 = v0;
      v23[1] = sub_1001BA4A4;

      return sub_1001B0268(1);
    }
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed passkey enroll - missing provider", v27, 2u);
  }

  type metadata accessor for AppleIDPasskeyError(0);
  v0[3].super_class = -120018;
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B1020();
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  super_class = v0->super_class;

  return super_class(0);
}

uint64_t sub_1001BA4A4(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1001BA658;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v5 = sub_1001BA5D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001BA5D0()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);

  v5 = *(v0 + 8);
  v6 = *(v0 + 144);

  return v5(v6);
}

uint64_t sub_1001BA658()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_1001BA854(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1001BA8FC;

  return sub_1001B8628();
}

uint64_t sub_1001BA8FC(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

void sub_1001BAA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  v10 = *(a2 + OBJC_IVAR___AKAppleIDPasskeyCleanupController_authenticationController);
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1001BB298;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001B8520;
  aBlock[3] = &unk_1003268A0;
  v13 = _Block_copy(aBlock);

  [v10 deleteAllPasskeysForAccount:a3 withCompletion:v13];
  _Block_release(v13);
}

uint64_t sub_1001BAC50(char a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1001AD2E4(v2, qword_1003776B0);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Passkeys deletion failed - error %@", v5, 0xCu);
      sub_1001B4EB8(v6);
    }

    sub_1001AD17C(&qword_100372300, &unk_10029CF90);
    return CheckedContinuation.resume(throwing:)();
  }

  if ((a1 & 1) == 0)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1001AD2E4(v13, qword_1003776B0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Passkeys deletion failed", v16, 2u);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    sub_1001AD17C(&qword_100372300, &unk_10029CF90);
    return CheckedContinuation.resume(throwing:)();
  }

  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1001AD2E4(v8, qword_1003776B0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Successfully deleted all passkeys including duplicates.", v11, 2u);
  }

  sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  return CheckedContinuation.resume(returning:)();
}

id sub_1001BAFF8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001BB0B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BB15C;

  return sub_1001BA854(v2, v3);
}

uint64_t sub_1001BB15C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001BB250()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001BB298(char a1, uint64_t a2)
{
  sub_1001AD17C(&qword_100372300, &unk_10029CF90);

  return sub_1001BAC50(a1, a2);
}

uint64_t sub_1001BB324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001BB340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;

  return _swift_task_switch(sub_1001BB3D8, 0, 0);
}

uint64_t sub_1001BB3D8()
{
  v1 = *(v0[13] + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v0[8] = 0;
  LODWORD(v1) = [v1 removeAllAccountsBelongingToParticipantWithParticipantID:v2 from:v3 error:v0 + 8];

  v4 = v0[8];
  if (v1)
  {
    v5 = v0[12];
    v6 = v0[11];
    sub_1001BB81C((v0[13] + 24), *(v0[13] + 48));
    sub_1001AD17C(&qword_1003725B0, &qword_10029D9C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10029BEB0;
    *(inited + 32) = v6;
    *(inited + 40) = v5;
    v8 = v4;

    v9 = sub_1001DD830(inited);
    v0[14] = v9;
    swift_setDeallocating();
    sub_1001BB860(inited + 32);
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_1001BB600;

    return sub_1001DFD48(v9);
  }

  else
  {
    v12 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1001BB600()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001BB76C()
{
  swift_unknownObjectRelease();
  sub_1001BB7D0((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1001BB7D0(void *a1)
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

void *sub_1001BB81C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1001BB90C(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1001BB92C, 0, 0);
}

uint64_t sub_1001BB92C()
{
  v41 = v0;
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_1003776B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start passkey status.", v4, 2u);
  }

  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  v7 = *(v6 + OBJC_IVAR___AKAppleIDPasskeyStatusController_accountManager);
  v8 = [v5 altDSID];
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = [v7 authKitAccountWithAltDSID:v8];

  if (v9)
  {
    v10 = sub_10023A55C(_swiftEmptyArrayStorage);
    v11 = [v7 passkeyEligibleForAccount:v9];
    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      v15 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = v10;
      sub_1001BBE6C(v15, v12, v14, isUniquelyReferenced_nonNull_native, v40);

      v10 = v40[0];
    }

    v17 = [v7 passkeyPresentForAccount:v9];
    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      v21 = v17;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = v10;
      sub_1001BBE6C(v21, v18, v20, v22, v40);

      v10 = v40[0];
    }

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Finish passkey status.", v25, 2u);
    }

    v26 = *(v0 + 8);

    return v26(v10);
  }

  else
  {
    v28 = *(v0 + 32);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 32);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v32 = 136315138;
      v34 = [v31 altDSID];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_10024B050(v35, v37, v40);

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "Passkey status failed. Account not found for altDSID %s.", v32, 0xCu);
      sub_1001AD48C(v33);
    }

    type metadata accessor for AppleIDPasskeyError(0);
    *(v0 + 24) = -120017;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B1020();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v39 = *(v0 + 8);

    return v39();
  }
}

id sub_1001BBE00(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001BBE6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_10023A350(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100230EAC(v16, a4 & 1);
      v11 = sub_10023A350(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100231F34();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1001BBFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;

  return _swift_task_switch(sub_1001BC07C, 0, 0);
}

uint64_t sub_1001BC07C()
{
  v1 = *(*(v0 + 216) + 16);
  *(v0 + 224) = [v1 requestProvider];
  type metadata accessor for AccountRevokingRequestProvider();
  v2 = swift_dynamicCastClass();
  *(v0 + 232) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 208);
    v20 = *(v0 + 200);
    v21 = v1;
    v5 = [*(v0 + 192) clientID];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v0 + 104) = &type metadata for String;
    *(v0 + 80) = v6;
    *(v0 + 88) = v8;
    sub_1000122C0((v0 + 80), (v0 + 144));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000133C8((v0 + 144), 0x695F746E65696C63, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
    *(v0 + 104) = &type metadata for String;
    *(v0 + 80) = v20;
    *(v0 + 88) = v4;
    sub_1000122C0((v0 + 80), (v0 + 144));

    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000133C8((v0 + 144), 0x64695F6D616574, 0xE700000000000000, v10);
    *(v0 + 104) = &type metadata for Int;
    *(v0 + 80) = 1;
    sub_1000122C0((v0 + 80), (v0 + 144));
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000133C8((v0 + 144), 0x747865746E6F63, 0xE700000000000000, v11);
    swift_unknownObjectRetain();
    sub_1001CCD28(&_swiftEmptyDictionarySingleton);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 setAuthKitBody:isa];

    swift_unknownObjectRelease();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1001BC52C;
    v13 = swift_continuation_init();
    *(v0 + 136) = sub_1001AD17C(&qword_100372C80, &qword_10029E350);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001CD6E4;
    *(v0 + 104) = &unk_1003268E8;
    *(v0 + 112) = v13;
    [v21 executeRequestWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1001AD2E4(v14, qword_100377698);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to revoke due to an invalid request", v17, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18(0);
  }
}

uint64_t sub_1001BC52C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1001BCBB0;
  }

  else
  {
    v2 = sub_1001BC668;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BC668()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 80) = 0;
  v5 = [v1 validateResponseData:isa error:v0 + 80];

  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = Data._bridgeToObjectiveC()().super.isa;
    v10 = [v7 dictionaryFromObject:v9 ofType:@"application/xml"];

    if (v10)
    {
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 25445;
      *(v0 + 184) = 0xE200000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v11 + 16) && (v12 = sub_10023A30C(v0 + 80), (v13 & 1) != 0))
      {
        sub_1000087A8(*(v11 + 56) + 32 * v12, v0 + 144);
        sub_1001AD3EC(v0 + 80);

        if ((swift_dynamicCast() & 1) != 0 && !*(v0 + 176))
        {
          if (qword_100371BD8 != -1)
          {
            swift_once();
          }

          v14 = type metadata accessor for Logger();
          sub_1001AD2E4(v14, qword_100377698);
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v15, v16, "Account revoke succeeded with IdMS", v17, 2u);
          }

          swift_unknownObjectRelease();
          sub_100013B34(v3, v2);

          v18 = *(v0 + 8);
          v19 = 1;
          goto LABEL_24;
        }
      }

      else
      {

        sub_1001AD3EC(v0 + 80);
      }
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1001AD2E4(v21, qword_100377698);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Account revoke failed. Invalid response data", v24, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16008;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
  }

  else
  {
    v20 = v6;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  sub_100013B34(v3, v2);
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1001AD2E4(v25, qword_100377698);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    swift_errorRetain();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v30;
    *v29 = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "Account revoke failed. Error occurred while executing the request - %@", v28, 0xCu);
    sub_1001B4EB8(v29);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v18 = *(v0 + 8);
  v19 = 0;
LABEL_24:

  return v18(v19);
}

uint64_t sub_1001BCBB0(uint64_t a1)
{
  swift_willThrow();
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Account revoke failed. Error occurred while executing the request - %@", v5, 0xCu);
    sub_1001B4EB8(v6);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v8 = *(v1 + 8);

  return v8(0);
}

uint64_t sub_1001BCD78()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001BCE30(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1001BCE50, 0, 0);
}

uint64_t sub_1001BCE50()
{
  v36 = v0;
  v1 = [*(v0 + 32) altDSID];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1001AD2E4(v6, qword_100377668);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 40);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35[0] = v12;
      *v11 = 136315394;
      v13 = (*(*v10 + 88))(v12);
      v15 = sub_10024B050(v13, v14, v35);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_10024B050(v3, v5, v35);
      _os_log_impl(&_mh_execute_header, v7, v8, "DeviceListBaseProvider - Begin clearing %s for altDSID %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v16 = *(v0 + 40);
    sub_1001BE34C(v3, v5);
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    strcpy(v35, "DELETE FROM ");
    BYTE5(v35[1]) = 0;
    HIWORD(v35[1]) = -5120;
    v18._countAndFlagsBits = (*(*v16 + 88))(v17);
    String.append(_:)(v18);

    v19._object = 0x80000001002AA6A0;
    v19._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v19);
    v21 = v35[0];
    v20 = v35[1];
    *(v0 + 48) = v35[1];
    sub_1001AD17C(&unk_100374270, &qword_10029DE30);
    v22 = swift_allocObject();
    *(v0 + 56) = v22;
    *(v22 + 16) = xmmword_10029BEB0;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 32) = v3;
    *(v22 + 40) = v5;
    v23 = swift_task_alloc();
    *(v0 + 64) = v23;
    *v23 = v0;
    v23[1] = sub_1001BD384;

    return sub_1001BD4F8(v21, v20, v22);
  }

  else
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1001AD2E4(v25, qword_100377668);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 40);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v29 = 136315138;
      v31 = (*(*v28 + 88))(v30);
      v33 = sub_10024B050(v31, v32, v35);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "DeviceListBaseProvider - Context altDSID is nil, cannot clear %s", v29, 0xCu);
      sub_1001AD48C(v30);
    }

    type metadata accessor for DeviceListError(0);
    *(v0 + 24) = -14011;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001BE2F4();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v34 = *(v0 + 8);

    return v34(0);
  }
}

uint64_t sub_1001BD384(char a1)
{
  v4 = *v2;

  v5 = *(v4 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1001BD4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;

  return _swift_task_switch(sub_1001BD58C, 0, 0);
}

uint64_t sub_1001BD58C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() queryWithString:v1];
  v0[7] = v2;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[2] = 0;
  [v2 bindParameters:isa error:v0 + 2];

  v4 = v0[2];
  if (v4)
  {
    v5 = qword_100371BC8;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1001AD2E4(v7, qword_100377668);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v4;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "DeviceListBaseProvider - SQL parameter binding failed: %@", v11, 0xCu);
      sub_1001B4EB8(v12);
    }

    swift_willThrow();
    v14 = v0[1];

    return v14(0);
  }

  else
  {
    v16 = v0[6];
    v17 = swift_task_alloc();
    v0[8] = v17;
    *(v17 + 16) = v16;
    *(v17 + 24) = v2;
    v18 = swift_task_alloc();
    v0[9] = v18;
    *v18 = v0;
    v18[1] = sub_1001BD8BC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 11, 0, 0, 0xD000000000000016, 0x80000001002AA680, sub_1001BE250, v17, &type metadata for Bool);
  }
}

uint64_t sub_1001BD8BC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1001BDAA0;
  }

  else
  {

    v2 = sub_1001BDA0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BDA0C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001BDAA0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1001BDB3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1001AD17C(&qword_100372300, &unk_10029CF90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v9, a1, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v6 + 32))(v13 + v12, v9, v5);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1001BE258;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100234C58;
  aBlock[3] = &unk_100326990;
  v14 = _Block_copy(aBlock);
  v15 = a3;

  [v10 performBlockAndWait:v14];
  _Block_release(v14);
}

uint64_t sub_1001BDD48(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);
    v30 = 0;
    if ([v5 performQuery:a3 error:&v30])
    {
      v6 = qword_100371BC8;
      v7 = v30;
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1001AD2E4(v8, qword_100377668);
      v9 = a3;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v9;
        *v13 = v9;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, v11, "DeviceListBaseProvider - Finished query: %@", v12, 0xCu);
        sub_1001B4EB8(v13);
      }

      LOBYTE(v30) = 1;
      sub_1001AD17C(&qword_100372300, &unk_10029CF90);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      v20 = v30;
      v21 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100371BC8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1001AD2E4(v22, qword_100377668);
      v23 = a3;
      swift_errorRetain();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412546;
        swift_errorRetain();
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v28;
        *(v26 + 12) = 2112;
        *(v26 + 14) = v23;
        *v27 = v28;
        v27[1] = v23;
        v29 = v23;
        _os_log_impl(&_mh_execute_header, v24, v25, "Error %@ executing query: %@", v26, 0x16u);
        sub_1001AD17C(&unk_1003726A0, &unk_10029CFA0);
        swift_arrayDestroy();
      }

      v30 = v21;
      sub_1001AD17C(&qword_100372300, &unk_10029CF90);
      CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1001AD2E4(v15, qword_100377668);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "DeviceListBaseProvider - Missing instance", v18, 2u);
    }

    type metadata accessor for DeviceListError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001BE2F4();
    _BridgedStoredNSError.init(_:userInfo:)();
    sub_1001AD17C(&qword_100372300, &unk_10029CF90);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1001BE1F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001BE258()
{
  v1 = *(sub_1001AD17C(&qword_100372300, &unk_10029CF90) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001BDD48(v3, v0 + v2, v4);
}

unint64_t sub_1001BE2F4()
{
  result = qword_100372180;
  if (!qword_100372180)
  {
    type metadata accessor for DeviceListError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100372180);
  }

  return result;
}

void sub_1001BE34C(uint64_t a1, unint64_t a2)
{
  v12 = [objc_opt_self() sharedInstance];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v12 authKitAccountWithAltDSID:v4];

  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
    [v12 setDeviceListVersion:v6 forAccount:v5];
  }

  else
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1001AD2E4(v7, qword_100377668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10024B050(a1, a2, &v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing authkit account for altDSID %s", v10, 0xCu);
      sub_1001AD48C(v11);
    }
  }
}

uint64_t sub_1001BE538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[30] = a6;
  v7[31] = v6;
  v7[28] = a4;
  v7[29] = a5;
  v7[26] = a2;
  v7[27] = a3;
  v7[25] = a1;

  return _swift_task_switch(sub_1001BE5D4, 0, 0);
}

uint64_t sub_1001BE5D4()
{
  v1 = *(v0[31] + 16);
  v0[32] = [v1 requestProvider];
  type metadata accessor for AccountSharingRequestProvider();
  v2 = swift_dynamicCastClass();
  v0[33] = v2;
  if (v2)
  {
    v3 = v2;
    v24 = v1;
    v25 = v0 + 18;
    v26 = v0 + 10;
    v4 = v0[30];
    v6 = v0[27];
    v5 = v0[28];
    v8 = v0[25];
    v7 = v0[26];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002316AC(v6, v5, 0x64695F70756F7267, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002316AC(v8, v7, 0xD000000000000011, 0x80000001002AA760, v10);
    v11 = &_swiftEmptyDictionarySingleton;
    v0[24] = &_swiftEmptyDictionarySingleton;
    if (v4)
    {
      v13 = v0[29];
      v12 = v0[30];

      sub_1001CD5DC(v13, v12, 0x745F646572616873, 0xEC0000006E656B6FLL);
      v11 = v0[24];
    }

    sub_1001AD17C(&qword_100372828, &qword_10029D3E8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10029BEB0;
    *(v14 + 32) = v11;
    v0[13] = sub_1001AD17C(&qword_100372830, &qword_10029D3F0);
    v0[10] = v14;
    sub_1000122C0(v26, v25);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000133C8(v25, 0x6E695F70756F7267, 0xEA00000000006F66, v15);
    swift_unknownObjectRetain();
    sub_1001CCD28(&_swiftEmptyDictionarySingleton);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 setAuthKitBody:isa];

    swift_unknownObjectRelease();
    v0[2] = v0;
    v0[7] = v25;
    v0[3] = sub_1001BEABC;
    v17 = swift_continuation_init();
    v0[17] = sub_1001AD17C(&qword_100372C80, &qword_10029E350);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001CD6E4;
    v0[13] = &unk_1003269D8;
    v0[14] = v17;
    [v24 executeRequestWithCompletion:v26];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1001AD2E4(v18, qword_100377698);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to unshare due to an invalid request", v21, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[18] = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1001BEABC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1001BF13C;
  }

  else
  {
    v2 = sub_1001BEBF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BEBF8()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 80) = 0;
  v5 = [v1 validateResponseData:isa error:v0 + 80];

  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = Data._bridgeToObjectiveC()().super.isa;
    v10 = [v7 dictionaryFromObject:v9 ofType:@"application/json"];

    if (v10)
    {
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 25445;
      *(v0 + 184) = 0xE200000000000000;
      AnyHashable.init<A>(_:)();
      if (!*(v11 + 16) || (v12 = sub_10023A30C(v0 + 80), (v13 & 1) == 0))
      {

        sub_1001AD3EC(v0 + 80);
LABEL_10:
        if (qword_100371BD8 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_1001AD2E4(v15, qword_100377698);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Successfully unshared account", v18, 2u);
        }

        swift_unknownObjectRelease();
        sub_100013B34(v3, v2);

        v19 = *(v0 + 8);
        goto LABEL_26;
      }

      sub_1000087A8(*(v11 + 56) + 32 * v12, v0 + 144);
      sub_1001AD3EC(v0 + 80);

      if ((swift_dynamicCast() & 1) == 0 || !*(v0 + 176))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (qword_100371BD8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1001AD2E4(v20, qword_100377698);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Unshare account request failed. Invalid response data", v23, 2u);
      }
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16008;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
  }

  else
  {
    v14 = v6;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  sub_100013B34(v3, v2);
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1001AD2E4(v24, qword_100377698);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "Unshare account request failed. Error occurred while executing the request - %@", v27, 0xCu);
    sub_1001B4EB8(v28);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v19 = *(v0 + 8);
LABEL_26:

  return v19();
}

uint64_t sub_1001BF13C(uint64_t a1)
{
  swift_willThrow();
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unshare account request failed. Error occurred while executing the request - %@", v5, 0xCu);
    sub_1001B4EB8(v6);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_1001BF300(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;

  return _swift_task_switch(sub_1001BF394, 0, 0);
}

uint64_t sub_1001BF394()
{
  v1 = *(*(v0 + 208) + 16);
  *(v0 + 216) = [v1 requestProvider];
  type metadata accessor for AccountSharingRequestProvider();
  v2 = swift_dynamicCastClass();
  *(v0 + 224) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 192);
    v5 = *(v0 + 200);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v1;
    sub_1002316AC(v4, v5, 0x64695F70756F7267, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    sub_1001AD17C(&qword_100372828, &qword_10029D3E8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10029BEB0;
    *(v7 + 32) = &_swiftEmptyDictionarySingleton;
    *(v0 + 104) = sub_1001AD17C(&qword_100372830, &qword_10029D3F0);
    *(v0 + 80) = v7;
    sub_1000122C0((v0 + 80), (v0 + 144));
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000133C8((v0 + 144), 0x6E695F70756F7267, 0xEA00000000006F66, v8);
    swift_unknownObjectRetain();
    sub_1001CCD28(&_swiftEmptyDictionarySingleton);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 setAuthKitBody:isa];

    swift_unknownObjectRelease();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1001BF7E0;
    v10 = swift_continuation_init();
    *(v0 + 136) = sub_1001AD17C(&qword_100372C80, &qword_10029E350);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001CD6E4;
    *(v0 + 104) = &unk_100326A28;
    *(v0 + 112) = v10;
    [v17 executeRequestWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1001AD2E4(v11, qword_100377698);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to unshare due to an invalid request", v14, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1001BF7E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1001BFE60;
  }

  else
  {
    v2 = sub_1001BF91C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BF91C()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 80) = 0;
  v5 = [v1 validateResponseData:isa error:v0 + 80];

  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = Data._bridgeToObjectiveC()().super.isa;
    v10 = [v7 dictionaryFromObject:v9 ofType:@"application/json"];

    if (v10)
    {
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 25445;
      *(v0 + 184) = 0xE200000000000000;
      AnyHashable.init<A>(_:)();
      if (!*(v11 + 16) || (v12 = sub_10023A30C(v0 + 80), (v13 & 1) == 0))
      {

        sub_1001AD3EC(v0 + 80);
LABEL_10:
        if (qword_100371BD8 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_1001AD2E4(v15, qword_100377698);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Successfully unshared all accounts in the group", v18, 2u);
        }

        swift_unknownObjectRelease();
        sub_100013B34(v3, v2);

        v19 = *(v0 + 8);
        goto LABEL_26;
      }

      sub_1000087A8(*(v11 + 56) + 32 * v12, v0 + 144);
      sub_1001AD3EC(v0 + 80);

      if ((swift_dynamicCast() & 1) == 0 || !*(v0 + 176))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (qword_100371BD8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1001AD2E4(v20, qword_100377698);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Unshare account request failed. Invalid response data", v23, 2u);
      }
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16008;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
  }

  else
  {
    v14 = v6;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  sub_100013B34(v3, v2);
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1001AD2E4(v24, qword_100377698);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "Unshare account request failed. Error occurred while executing the request - %@", v27, 0xCu);
    sub_1001B4EB8(v28);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v19 = *(v0 + 8);
LABEL_26:

  return v19();
}

uint64_t sub_1001BFE60(uint64_t a1)
{
  swift_willThrow();
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unshare account request failed. Error occurred while executing the request - %@", v5, 0xCu);
    sub_1001B4EB8(v6);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_1001C0024(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;

  return _swift_task_switch(sub_1001C00B4, 0, 0);
}

uint64_t sub_1001C00B4()
{
  v1 = *(v0[25] + 16);
  v0[26] = [v1 requestProvider];
  type metadata accessor for AccountSharingRequestProvider();
  v2 = swift_dynamicCastClass();
  v0[27] = v2;
  if (!v2)
  {
    swift_unknownObjectRelease();
    if (qword_100371BD8 == -1)
    {
LABEL_13:
      v19 = type metadata accessor for Logger();
      sub_1001AD2E4(v19, qword_100377698);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to unshare due to an invalid request", v22, 2u);
      }

      type metadata accessor for SignInWithAppleError(0);
      v0[18] = -16007;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001B754C();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      v23 = v0[1];

      return v23();
    }

LABEL_24:
    swift_once();
    goto LABEL_13;
  }

  v28 = v2;
  v29 = v1;
  v30 = v0 + 18;
  v31 = v0 + 10;
  v32 = v0;
  v3 = v0[24];
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_1001AD17C(&qword_100372838, &qword_10029D400);
    v5 = (v3 + 40);
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v0 = *(v5 - 1);
      v7 = *v5;
      v8 = static _DictionaryStorage.allocate(capacity:)();

      v9 = sub_10023A350(0x64695F70756F7267, 0xE800000000000000);
      v11 = v10;

      if (v11)
      {
        break;
      }

      v8[(v9 >> 6) + 8] |= 1 << v9;
      v12 = (v8[6] + 16 * v9);
      *v12 = 0x64695F70756F7267;
      v12[1] = 0xE800000000000000;
      v13 = (v8[7] + 16 * v9);
      *v13 = v0;
      v13[1] = v7;
      v14 = v8[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_23;
      }

      v8[2] = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10020E6FC(0, v6[2] + 1, 1, v6);
      }

      v18 = v6[2];
      v17 = v6[3];
      if (v18 >= v17 >> 1)
      {
        v6 = sub_10020E6FC((v17 > 1), v18 + 1, 1, v6);
      }

      v6[2] = v18 + 1;
      v6[v18 + 4] = v8;
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_19:
  v32[13] = sub_1001AD17C(&qword_100372830, &qword_10029D3F0);
  v32[10] = v6;
  sub_1000122C0(v31, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000133C8(v30, 0x6E695F70756F7267, 0xEA00000000006F66, isUniquelyReferenced_nonNull_native);
  swift_unknownObjectRetain();
  sub_1001CCD28(&_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v28 setAuthKitBody:isa];

  swift_unknownObjectRelease();
  v32[2] = v32;
  v32[7] = v30;
  v32[3] = sub_1001C05F4;
  v27 = swift_continuation_init();
  v32[17] = sub_1001AD17C(&qword_100372C80, &qword_10029E350);
  v32[10] = _NSConcreteStackBlock;
  v32[11] = 1107296256;
  v32[12] = sub_1001CD6E4;
  v32[13] = &unk_100326A00;
  v32[14] = v27;
  [v29 executeRequestWithCompletion:v31];

  return _swift_continuation_await(v32 + 2);
}

uint64_t sub_1001C05F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1001C0C74;
  }

  else
  {
    v2 = sub_1001C0730;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C0730()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 80) = 0;
  v5 = [v1 validateResponseData:isa error:v0 + 80];

  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = Data._bridgeToObjectiveC()().super.isa;
    v10 = [v7 dictionaryFromObject:v9 ofType:@"application/json"];

    if (v10)
    {
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 25445;
      *(v0 + 184) = 0xE200000000000000;
      AnyHashable.init<A>(_:)();
      if (!*(v11 + 16) || (v12 = sub_10023A30C(v0 + 80), (v13 & 1) == 0))
      {

        sub_1001AD3EC(v0 + 80);
LABEL_10:
        if (qword_100371BD8 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_1001AD2E4(v15, qword_100377698);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Successfully unshared groups", v18, 2u);
        }

        swift_unknownObjectRelease();
        sub_100013B34(v3, v2);

        v19 = *(v0 + 8);
        goto LABEL_26;
      }

      sub_1000087A8(*(v11 + 56) + 32 * v12, v0 + 144);
      sub_1001AD3EC(v0 + 80);

      if ((swift_dynamicCast() & 1) == 0 || !*(v0 + 176))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (qword_100371BD8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1001AD2E4(v20, qword_100377698);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Unshare groups failed. Invalid response data", v23, 2u);
      }
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 144) = -16008;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
  }

  else
  {
    v14 = v6;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  sub_100013B34(v3, v2);
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1001AD2E4(v24, qword_100377698);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "Unshare groups failed. Error occurred while executing the request - %@", v27, 0xCu);
    sub_1001B4EB8(v28);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v19 = *(v0 + 8);
LABEL_26:

  return v19();
}

uint64_t sub_1001C0C74(uint64_t a1)
{
  swift_willThrow();
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unshare groups failed. Error occurred while executing the request - %@", v5, 0xCu);
    sub_1001B4EB8(v6);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_1001C0E38()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

NSString sub_1001C0EB4()
{
  result = String._bridgeToObjectiveC()();
  qword_100377620 = result;
  return result;
}

NSString sub_1001C0EEC()
{
  result = String._bridgeToObjectiveC()();
  qword_100377628 = result;
  return result;
}

id sub_1001C0F3C()
{
  result = [objc_allocWithZone(type metadata accessor for ProximityAuthFlowController()) init];
  static ProximityAuthFlowController.shared = result;
  return result;
}

id ProximityAuthFlowController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *ProximityAuthFlowController.shared.unsafeMutableAddressor()
{
  if (qword_100371BA8 != -1)
  {
    swift_once();
  }

  return &static ProximityAuthFlowController.shared;
}

id static ProximityAuthFlowController.shared.getter()
{
  if (qword_100371BA8 != -1)
  {
    swift_once();
  }

  v1 = static ProximityAuthFlowController.shared;

  return v1;
}

void sub_1001C1108(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

void sub_1001C11C0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___AKProximityAuthFlowController_server))
  {
    sub_1001C1420();
    v2 = [objc_opt_self() sharedInstance];
    if (v2)
    {
      v3 = v2;
      v4 = *(a1 + OBJC_IVAR___AKProximityAuthFlowController_context);
      v5 = *(a1 + OBJC_IVAR___AKProximityAuthFlowController_client);
      aBlock[4] = sub_1001C1B68;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001C1530;
      aBlock[3] = &unk_100326B60;
      v6 = _Block_copy(aBlock);
      v7 = v5;
      v8 = v4;

      [v3 dismissProximityPairingUIForContext:v8 client:v7 completion:v6];
      _Block_release(v6);

      sub_1001C15E0();
    }
  }

  else
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1001AD2E4(v9, static Logger.akd);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Proximity Auth not in progress", v12, 2u);
    }

    v13 = [objc_allocWithZone(NSError) initWithDomain:AKAppleIDProximityAuthErrorDomain code:-13005 userInfo:0];
    sub_1001C1B68(0, v13);
  }
}

void sub_1001C1420()
{
  v1 = v0;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, static Logger.akd);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stop Device Discovery for Proximity Apple ID Authentication", v5, 2u);
  }

  v6 = OBJC_IVAR___AKProximityAuthFlowController_server;
  v7 = *(v1 + OBJC_IVAR___AKProximityAuthFlowController_server);
  if (v7)
  {
    [v7 invalidate];
    v7 = *(v1 + v6);
  }

  *(v1 + v6) = 0;
}

uint64_t sub_1001C1530(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1001C15E0()
{
  v1 = *(v0 + OBJC_IVAR___AKProximityAuthFlowController_context);
  *(v0 + OBJC_IVAR___AKProximityAuthFlowController_context) = 0;

  v2 = (v0 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
  v3 = *(v0 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
  v4 = *(v0 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_1001C45B0(v3, v4);
  v5 = (v0 + OBJC_IVAR___AKProximityAuthFlowController_proxAuthCompletion);
  v6 = *(v0 + OBJC_IVAR___AKProximityAuthFlowController_proxAuthCompletion);
  v7 = *(v0 + OBJC_IVAR___AKProximityAuthFlowController_proxAuthCompletion + 8);
  *v5 = 0;
  v5[1] = 0;
  sub_1001C45B0(v6, v7);
  *(v0 + OBJC_IVAR___AKProximityAuthFlowController_pairingInProgress) = 0;
  v8 = *(v0 + OBJC_IVAR___AKProximityAuthFlowController_cbManager);
  *(v0 + OBJC_IVAR___AKProximityAuthFlowController_cbManager) = 0;

  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1001AD2E4(v9, static Logger.akd);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Posting ProximityAppleIDSignInEndNotification...", v12, 2u);
  }

  sub_1001C51C0();
  v13 = [swift_getObjCClassFromMetadata() defaultCenter];
  v14 = v13;
  if (qword_100371BA0 != -1)
  {
    swift_once();
    v13 = v14;
  }

  [v13 postNotificationName:qword_100377628 object:0];
}

void sub_1001C1814(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___AKProximityAuthFlowController_server];
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1001AD2E4(v15, static Logger.akd);
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = ObjectIdentifier.debugDescription.getter();
      v22 = sub_10024B050(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Token matches current server, ending proximity authentication: %s", v18, 0xCu);
      sub_1001C52B8(v19);
    }

    sub_1001C11C0(v2);
  }

  else
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1001AD2E4(v5, static Logger.akd);
    swift_unknownObjectRetain();
    v6 = v1;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = ObjectIdentifier.debugDescription.getter();
      v11 = sub_10024B050(v9, v10, &v24);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      sub_1001AD17C(&unk_1003728B8, &unk_10029D468);
      v12 = Optional.debugDescription.getter();
      v14 = sub_10024B050(v12, v13, &v24);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Not ending authentication because token does not match current server: %s != %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1001C1B68(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1001AD2E4(v2, static Logger.akd);

    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    sub_1001AD17C(&qword_1003728B0, &qword_10029D460);
    v6 = Dictionary.description.getter();
    v8 = sub_10024B050(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Ended proximity authentication with results: %s", v4, 0xCu);
    sub_1001C52B8(v5);

    goto LABEL_6;
  }

  if (!a2)
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1001AD2E4(v14, static Logger.akd);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v15))
    {
      goto LABEL_16;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v15, "Ended proximity authentication without results or an error", v16, 2u);
LABEL_6:

LABEL_16:

    return;
  }

  swift_errorRetain();
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1001AD2E4(v9, static Logger.akd);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, oslog, v10, "Ended proximity authentication with error: %@", v11, 0xCu);
    sub_1001B4EB8(v12);

    goto LABEL_16;
  }
}

void sub_1001C1F60(uint64_t a1)
{
  v2 = v1;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1001AD2E4(v4, static Logger.akd);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Initiating pairing flow...", v7, 2u);
  }

  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = *&v2[OBJC_IVAR___AKProximityAuthFlowController_context];
    v11 = *&v2[OBJC_IVAR___AKProximityAuthFlowController_client];
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    v17[4] = sub_1001C45F4;
    v17[5] = v12;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_1001C1530;
    v17[3] = &unk_100326B38;
    v13 = _Block_copy(v17);
    v14 = v11;
    v15 = v2;
    v16 = v10;

    [v9 presentProximityPairingUIForContext:v16 client:v14 event:a1 completion:v13];
    _Block_release(v13);
  }
}

void sub_1001C2168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1001AD2E4(v6, static Logger.akd);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Proximity pairing UI called completion...", v9, 2u);
  }

  if (a2)
  {
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Proximity UI finished with error...invalidating server", v12, 2u);
    }

    sub_1001C1420();
    v13 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
    if (v13)
    {
      v14 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion + 8);
      swift_errorRetain();
      sub_1001C45FC(v13, v14);
      v13(a1, a2);

      sub_1001C45B0(v13, v14);
    }

    sub_1001C15E0();
  }
}

void sub_1001C23C8(uint64_t a1)
{
  if (!*&v1[OBJC_IVAR___AKProximityAuthFlowController_server])
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, static Logger.akd);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_15;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Proximity Auth not in progress, nothing to do ..";
    goto LABEL_14;
  }

  if (v1[OBJC_IVAR___AKProximityAuthFlowController_pairingInProgress] == 1)
  {
    v3 = [objc_opt_self() sharedInstance];
    if (v3)
    {
      v4 = v3;
      v5 = *&v1[OBJC_IVAR___AKProximityAuthFlowController_client];
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      aBlock[4] = sub_1001C45EC;
      aBlock[5] = v6;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001C1530;
      aBlock[3] = &unk_100326AE8;
      v7 = _Block_copy(aBlock);
      v8 = v5;
      v9 = v1;

      [v4 dismissProximityPairingUIForContext:a1 client:v8 completion:v7];
      _Block_release(v7);
    }

    return;
  }

  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1001AD2E4(v14, static Logger.akd);
  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Skipping endbroadcast, pairing view already in progress ..";
LABEL_14:
    _os_log_impl(&_mh_execute_header, oslog, v11, v13, v12, 2u);
  }

LABEL_15:
}

void sub_1001C2684()
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1001AD2E4(v0, static Logger.akd);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Dismissed Proximity Pairing UI up ..", v3, 2u);
  }

  sub_1001C1420();
  sub_1001C15E0();
}

void sub_1001C27D4()
{
  v0[OBJC_IVAR___AKProximityAuthFlowController_authInProgress] = 1;
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR___AKProximityAuthFlowController_server];
    if (v3)
    {
      v4 = [v3 messageSessionTemplate];
    }

    else
    {
      v4 = 0;
    }

    v5 = *&v0[OBJC_IVAR___AKProximityAuthFlowController_client];
    v6 = *&v0[OBJC_IVAR___AKProximityAuthFlowController_context];
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v12[4] = sub_1001C45E4;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1001C1530;
    v12[3] = &unk_100326A98;
    v8 = _Block_copy(v12);
    v9 = v6;
    v10 = v0;
    v11 = v5;

    [v2 activateProximitySession:v4 client:v11 context:v9 completion:v8];
    _Block_release(v8);
  }
}

void sub_1001C2964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1001AD2E4(v6, static Logger.akd);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Proximity based authentication finished, calling end authentication", v9, 2u);
  }

  *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authInProgress) = 0;
  sub_1001C1420();
  v10 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
  if (v10)
  {
    v11 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion + 8);

    v10(a1, a2);
    sub_1001C45B0(v10, v11);
  }

  sub_1001C15E0();
}

Swift::Void __swiftcall ProximityAuthFlowController.centralManagerDidUpdateState(_:)(CBCentralManager a1)
{
  if ((*(v1 + OBJC_IVAR___AKProximityAuthFlowController_pairingInProgress) & 1) == 0)
  {
    v2 = v1;
    v3 = [(objc_class *)a1.super.super.isa state];
    if ((v3 - 3) >= 2)
    {
      if (v3 == 5)
      {
        if (qword_100371BB0 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_1001AD2E4(v13, static Logger.akd);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "Bluetooth powered On", v16, 2u);
        }

        if ((*(v2 + OBJC_IVAR___AKProximityAuthFlowController_authInProgress) & 1) == 0)
        {

          sub_1001C2EA4();
        }
      }

      else
      {
        if (qword_100371BB0 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_1001AD2E4(v17, static Logger.akd);
        oslog = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(oslog, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, oslog, v18, "Bluetooth state unknown", v19, 2u);
        }
      }
    }

    else
    {
      if (qword_100371BB0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1001AD2E4(v4, static Logger.akd);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Bluetooth powered off, cannot proceed with prox auth", v7, 2u);
      }

      if ((*(v2 + OBJC_IVAR___AKProximityAuthFlowController_authInProgress) & 1) == 0)
      {
        v8 = *(v2 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
        if (v8)
        {
          v9 = *(v2 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion + 8);
          v10 = objc_allocWithZone(NSError);

          v11 = String._bridgeToObjectiveC()();
          v12 = [v10 initWithDomain:v11 code:-13010 userInfo:0];

          v8(0, v12);
          sub_1001C45B0(v8, v9);
        }

        sub_1001C1420();

        sub_1001C15E0();
      }
    }
  }
}

void sub_1001C2EA4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___AKProximityAuthFlowController_server];
  if (v2)
  {
    v3 = v2;
    [v3 setPersistentPairing:0];
    [v3 setPasswordType:2];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v36 = sub_1001C5304;
    v37 = v4;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1001C402C;
    v35 = &unk_100326C28;
    v5 = _Block_copy(&aBlock);
    v6 = v1;

    [v3 setEventHandler:v5];
    _Block_release(v5);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v36 = sub_1001C5328;
    v37 = v7;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1001C4094;
    v35 = &unk_100326C78;
    v8 = _Block_copy(&aBlock);
    v9 = v6;

    [v3 setPasswordTypeChangedHandler:v8];
    _Block_release(v8);

    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, static Logger.akd);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Start Device Discovery for Proximity Apple ID Authentication", v13, 2u);
    }

    [v3 activate];
    v14 = [objc_opt_self() sharedInstance];
    if (v14)
    {
      v15 = v14;
      v16 = *&v9[OBJC_IVAR___AKProximityAuthFlowController_context];
      v17 = *&v9[OBJC_IVAR___AKProximityAuthFlowController_client];
      v18 = swift_allocObject();
      *(v18 + 16) = v9;
      v36 = sub_1001C534C;
      v37 = v18;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_1001C1530;
      v35 = &unk_100326CC8;
      v19 = _Block_copy(&aBlock);
      v20 = v17;
      v21 = v9;
      v22 = v16;

      [v15 presentProximityBroadcastUIForContext:v22 client:v20 completion:v19];

      _Block_release(v19);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1001AD2E4(v23, static Logger.akd);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Server not found, cannot begin broadcasting...", v26, 2u);
    }

    v27 = *&v1[OBJC_IVAR___AKProximityAuthFlowController_authCompletion];
    if (v27)
    {
      v28 = *&v1[OBJC_IVAR___AKProximityAuthFlowController_authCompletion + 8];
      v29 = objc_allocWithZone(NSError);

      v30 = String._bridgeToObjectiveC()();
      v31 = [v29 initWithDomain:v30 code:-13001 userInfo:0];

      v27(0, v31);
      sub_1001C45B0(v27, v28);
    }
  }
}

id ProximityAuthFlowController.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___AKProximityAuthFlowController_client] = 0;
  *&v2[OBJC_IVAR___AKProximityAuthFlowController_context] = 0;
  v4 = &v2[OBJC_IVAR___AKProximityAuthFlowController_authCompletion];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR___AKProximityAuthFlowController_proxAuthCompletion];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR___AKProximityAuthFlowController_server] = 0;
  *&v2[OBJC_IVAR___AKProximityAuthFlowController_cbManager] = 0;
  v2[OBJC_IVAR___AKProximityAuthFlowController_pairingInProgress] = 0;
  v2[OBJC_IVAR___AKProximityAuthFlowController_authInProgress] = 0;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id ProximityAuthFlowController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001C35BC(void *a1)
{
  v2 = v1;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1001AD2E4(v4, static Logger.akd);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Handler invoked with SetupKit event %@", v8, 0xCu);
    sub_1001B4EB8(v9);
  }

  v11 = [v5 eventType];
  if (v11 <= 109)
  {
    if (v11 == 30 || v11 == 41)
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Invalidated/connection ended in flowcontroller...", v17, 2u);
      }

      sub_1001C3B24();
    }
  }

  else
  {
    if (v11 == 300)
    {
      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v18, "Basic Config updated...", v19, 2u);
      }

LABEL_30:

      return;
    }

    if (v11 != 140)
    {
      if (v11 == 110)
      {
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "Received Setupkit event to present pairing flow", v14, 2u);
        }

        *(v2 + OBJC_IVAR___AKProximityAuthFlowController_pairingInProgress) = 1;

        sub_1001C1F60(v5);
      }

      return;
    }

    v20 = [v5 error];
    if (v20)
    {
      v21 = v20;
      oslog = v20;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = oslog;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&_mh_execute_header, v22, v23, "Proximity UI finished with error %@...invalidating server", v24, 0xCu);
        sub_1001B4EB8(v25);
      }

      *(v2 + OBJC_IVAR___AKProximityAuthFlowController_pairingInProgress) = 0;
      sub_1001C1420();
      v28 = v2 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion;
      v29 = *(v2 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
      if (v29)
      {
        v30 = *(v28 + 8);
        v31 = oslog;
        sub_1001C45FC(v29, v30);
        v29(0, v21);

        sub_1001C45B0(v29, v30);
        return;
      }

      goto LABEL_30;
    }

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Proceeding to perform authentication...", v34, 2u);
    }

    sub_1001C27D4();
  }
}

void sub_1001C3B24()
{
  if (v0[OBJC_IVAR___AKProximityAuthFlowController_authInProgress])
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1001AD2E4(v1, static Logger.akd);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Proximity setup is already in progress, messageSession termination will handle clean up, nothing to do ...", v3, 2u);
    }
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    if (v4)
    {
      v5 = v4;
      v6 = *&v0[OBJC_IVAR___AKProximityAuthFlowController_context];
      v7 = *&v0[OBJC_IVAR___AKProximityAuthFlowController_client];
      v8 = swift_allocObject();
      *(v8 + 16) = v0;
      aBlock[4] = sub_1001C5354;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001C1530;
      aBlock[3] = &unk_100326D40;
      v9 = _Block_copy(aBlock);
      v10 = v7;
      v11 = v0;
      v12 = v6;

      [v5 showProximityErrorForContext:v12 client:v10 completion:v9];
      _Block_release(v9);
    }
  }
}

void sub_1001C3D50(int a1)
{
  v2 = v1;
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1001AD2E4(v4, static Logger.akd);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Password type changed...", v7, 2u);
  }

  oslog = Logger.logObject.getter();
  if (a1 == 3)
  {
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Password type changed to 8 digit", v9, 2u);
    }

    v10 = [objc_opt_self() sharedInstance];
    if (v10)
    {
      v11 = v10;
      v12 = *(v2 + OBJC_IVAR___AKProximityAuthFlowController_context);
      v13 = *(v2 + OBJC_IVAR___AKProximityAuthFlowController_client);
      aBlock[4] = sub_1001C4220;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001B8520;
      aBlock[3] = &unk_100326CF0;
      v14 = _Block_copy(aBlock);
      v15 = v13;
      v16 = v12;
      [v11 presentProximityPinCodeUIForContext:v16 client:v15 completion:v14];
      _Block_release(v14);
    }
  }

  else
  {
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Unsupported password type", v18, 2u);
    }
  }
}

void sub_1001C402C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1001C4094(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1001C40E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1001AD2E4(v6, static Logger.akd);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Proximity Broadcast UI finished", v9, 2u);
  }

  sub_1001C1420();
  v10 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
  if (v10)
  {
    v11 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion + 8);

    v10(a1, a2);
    sub_1001C45B0(v10, v11);
  }

  sub_1001C15E0();
}

void sub_1001C4220(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1001AD2E4(v2, static Logger.akd);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Error displaying prox PIN code UI.", v4, 2u);
    }
  }

  else
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1001AD2E4(v5, static Logger.akd);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Prox PIN Code UI presented.", v7, 2u);
    }
  }
}

void sub_1001C43DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1001AD2E4(v4, static Logger.akd);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Show Proximity Pairing error up ..", v7, 2u);
  }

  v8 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
  if (v8)
  {
    v9 = *(a3 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion + 8);
    v10 = objc_allocWithZone(NSError);

    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithDomain:v11 code:-130011 userInfo:0];

    v8(0, v12);
    sub_1001C45B0(v8, v9);
  }

  sub_1001C1420();
  sub_1001C15E0();
}

uint64_t sub_1001C4564(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1001C45B0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001C45FC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

_BYTE *sub_1001C460C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1001C46A0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1001C4758(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1001C47D4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1001C46A0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1001C4758(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1001C47D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1001C4858(uint64_t a1)
{
  v9 = sub_1001AD17C(&qword_1003728D0, qword_10029D478);
  v10 = sub_1001C520C();
  v8[0] = a1;
  v2 = sub_1001BB81C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1001C460C(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1001C52B8(v8);
  return v5;
}

void *sub_1001C4908(void *a1, void *a2, void *a3, uint64_t a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v11 = OBJC_IVAR___AKProximityAuthFlowController_server;
  if (*(a4 + OBJC_IVAR___AKProximityAuthFlowController_server))
  {
    _Block_copy(a5);
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1001AD2E4(v12, static Logger.akd);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Proximity Auth is already in progress...", v15, 2u);
    }

    v16 = objc_allocWithZone(NSError);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 initWithDomain:v17 code:-13003 userInfo:0];

    v19 = _convertErrorToNSError(_:)();
    (a5)[2](a5, 0, v19);

    return 0;
  }

  else
  {
    v20 = OBJC_IVAR___AKProximityAuthFlowController_client;
    v21 = *(a4 + OBJC_IVAR___AKProximityAuthFlowController_client);
    _Block_copy(a5);
    *(a4 + v20) = a1;

    v22 = *(a4 + OBJC_IVAR___AKProximityAuthFlowController_context);
    *(a4 + OBJC_IVAR___AKProximityAuthFlowController_context) = a2;
    v23 = a1;

    v24 = *(a4 + v11);
    *(a4 + v11) = a3;
    v25 = a2;

    v26 = a3;
    v27 = [v25 protoAccountContext];
    if (v27)
    {

      if (qword_100371BB0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1001AD2E4(v28, static Logger.akd);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 16777472;
        v31[4] = 1;
        _os_log_impl(&_mh_execute_header, v29, v30, "We have a proto account context, setting the nearby action data to child setup: %hhu", v31, 5u);
      }

      [v26 setNearbyActionType:95];
      v32 = &off_100325FC0;
    }

    else
    {
      if (qword_100371BB0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1001AD2E4(v33, static Logger.akd);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Non proto account context, setting the nearby action data to default: None", v36, 2u);
      }

      v32 = _swiftEmptyArrayStorage;
    }

    v37 = sub_1001C4858(v32);
    v39 = v38;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100013B34(v37, v39);
    [v26 setNearbyActionExtraData:isa];

    v41 = (a4 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
    v42 = *(a4 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion);
    v43 = *(a4 + OBJC_IVAR___AKProximityAuthFlowController_authCompletion + 8);
    *v41 = sub_1001C5380;
    v41[1] = v10;
    sub_1001C45B0(v42, v43);
    v44 = objc_allocWithZone(CBCentralManager);

    v45 = [v44 initWithDelegate:a4 queue:0];
    v46 = *(a4 + OBJC_IVAR___AKProximityAuthFlowController_cbManager);
    *(a4 + OBJC_IVAR___AKProximityAuthFlowController_cbManager) = v45;

    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1001AD2E4(v47, static Logger.akd);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Posting ProximityAppleIDSignInBeganNotification...", v50, 2u);
    }

    sub_1001C51C0();
    v51 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_100371B98 != -1)
    {
      swift_once();
    }

    [v51 postNotificationName:qword_100377620 object:0];

    swift_unknownObjectRetain();
  }

  return a3;
}

void sub_1001C4EC4(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + OBJC_IVAR___AKProximityAuthFlowController_server);
  _Block_copy(a2);
  if (v5)
  {
    sub_1001C1420();
    v6 = [objc_opt_self() sharedInstance];
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + OBJC_IVAR___AKProximityAuthFlowController_context);
      v9 = *(a1 + OBJC_IVAR___AKProximityAuthFlowController_client);
      aBlock[4] = sub_1001C51B8;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001C1530;
      aBlock[3] = &unk_100326BB0;
      v10 = _Block_copy(aBlock);
      v11 = v9;

      v12 = v8;

      [v7 dismissProximityPairingUIForContext:v12 client:v11 completion:v10];
      _Block_release(v10);

      sub_1001C15E0();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1001AD2E4(v13, static Logger.akd);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Proximity Auth not in progress", v16, 2u);
    }

    v17 = [objc_allocWithZone(NSError) initWithDomain:AKAppleIDProximityAuthErrorDomain code:-13005 userInfo:0];
    v18 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v18);
  }
}

unint64_t sub_1001C51C0()
{
  result = qword_1003728C8;
  if (!qword_1003728C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003728C8);
  }

  return result;
}

unint64_t sub_1001C520C()
{
  result = qword_1003728D8;
  if (!qword_1003728D8)
  {
    sub_1001C5270(&qword_1003728D0, qword_10029D478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003728D8);
  }

  return result;
}

uint64_t sub_1001C5270(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001C52B8(void *a1)
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

id sub_1001C53B8(Class isa, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = Data._bridgeToObjectiveC()().super.isa;
  }

  v8 = 0;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AccountRevokingRequestProvider();
  v4 = [(objc_class *)&v7 validateResponseData:v3 error:&v8];

  if (v4)
  {
    return v8;
  }

  v6 = v8;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return swift_willThrow();
}

id sub_1001C5838(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AccountRevokingRequestProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_1001C58A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001C5918(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t *sub_1001C595C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_1001C5B4C(void *a1)
{
  v2 = v1;
  sub_1001AD440();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = String._bridgeToObjectiveC()();
    v10 = [a1 decodeIntegerForKey:v9];

    if (v10 < 2)
    {
      *&v2[OBJC_IVAR___AKBiscuitToken_identifier] = v10;
      v11 = &v2[OBJC_IVAR___AKBiscuitToken_value];
      *v11 = v6;
      v11[1] = v8;
      v14.receiver = v2;
      v14.super_class = type metadata accessor for BiscuitToken();
      v12 = objc_msgSendSuper2(&v14, "init");

      return v12;
    }
  }

  type metadata accessor for BiscuitToken();
  swift_deallocPartialClassInstance();
  return 0;
}
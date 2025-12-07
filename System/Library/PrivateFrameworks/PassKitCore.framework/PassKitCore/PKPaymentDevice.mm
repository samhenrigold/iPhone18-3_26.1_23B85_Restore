@interface PKPaymentDevice
+ (id)clientHardwarePlatformInfoHTTPHeader;
+ (id)clientInfoHTTPHeader;
- (PKPaymentDevice)initWithCallbackQueue:(id)queue;
- (id)configurationData;
- (id)trustedDeviceEnrollmentInfo;
- (void)SEPParingInformationWithCompletion:(id)completion;
- (void)_executeDeviceMetadataFetchTasksCompletionHandlers;
- (void)_finishLocationFixWithLocation:(id)location;
- (void)_populateDeviceMetadata:(id)metadata withFields:(unint64_t)fields completion:(id)completion;
- (void)configurationDataWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)paymentDeviceMetadataFields:(unint64_t)fields completion:(id)completion;
- (void)provisioningDataIncludingDeviceMetadata:(BOOL)metadata withCompletionHandler:(id)handler;
- (void)queueConnectionToTrustedServiceManagerForPushTopic:(id)topic withCompletion:(id)completion;
- (void)registrationDataWithAuthToken:(id)token completionHandler:(id)handler;
- (void)rewrapDataWithCompletionHandler:(id)handler;
- (void)setRegistrationRegionMap:(id)map primaryRegionTopic:(id)topic;
- (void)signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletionHandler:(id)handler;
- (void)signatureForAuthToken:(id)token completion:(id)completion;
@end

@implementation PKPaymentDevice

+ (id)clientInfoHTTPHeader
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PKPaymentDevice_clientInfoHTTPHeader__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED6D16E0 != -1)
  {
    dispatch_once(&qword_1ED6D16E0, block);
  }

  v2 = _MergedGlobals_186;

  return v2;
}

+ (id)clientHardwarePlatformInfoHTTPHeader
{
  if (qword_1ED6D16E8 != -1)
  {
    dispatch_once(&qword_1ED6D16E8, &__block_literal_global_4);
  }

  v3 = qword_1ED6D16D8;

  return v3;
}

- (PKPaymentDevice)initWithCallbackQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = PKPaymentDevice;
  v6 = [(PKPaymentDevice *)&v14 init];
  if (v6)
  {
    v7 = +[PKSecureElement sharedSecureElement];
    secureElement = v6->_secureElement;
    v6->_secureElement = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    metdataFetchTasks = v6->_metdataFetchTasks;
    v6->_metdataFetchTasks = v9;

    objc_storeStrong(&v6->_callbackQueue, queue);
    v11 = dispatch_queue_create("PKPaymentDevice", 0);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v11;
  }

  return v6;
}

- (void)dealloc
{
  locationFixTimeout = self->_locationFixTimeout;
  if (locationFixTimeout)
  {
    dispatch_source_cancel(locationFixTimeout);
  }

  v4.receiver = self;
  v4.super_class = PKPaymentDevice;
  [(PKPaymentDevice *)&v4 dealloc];
}

void __39__PKPaymentDevice_clientInfoHTTPHeader__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = PKProductType();
  v23 = [v1 stringWithFormat:@"%@", v2];

  v3 = PKClientHTTPHeaderOSPartOverride();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = MGCopyAnswer();
    v8 = PKOSVersion();
    v9 = PKDeviceBuildVersion();
    v5 = [v6 stringWithFormat:@"%@%@;%@", v7, v8, v9];;
  }

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 infoDictionary];
  v12 = *MEMORY[0x1E695E500];
  v13 = [v11 objectForKey:*MEMORY[0x1E695E500]];

  v14 = [MEMORY[0x1E696AAE8] mainBundle];
  v15 = [v14 infoDictionary];
  v16 = [v15 objectForKey:v12];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v10 bundleIdentifier];
  v19 = [v14 bundleIdentifier];
  v20 = [v17 stringWithFormat:@"%@/%@ (%@/%@)", v18, v13, v19, v16];

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@> <%@> <%@>", v23, v5, v20];
  v22 = _MergedGlobals_186;
  _MergedGlobals_186 = v21;
}

void __55__PKPaymentDevice_clientHardwarePlatformInfoHTTPHeader__block_invoke()
{
  v0 = PKClientHTTPHeaderHardwarePlatformOverride();
  v3 = v0;
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = PKHardwarePlatform();
  }

  v2 = qword_1ED6D16D8;
  qword_1ED6D16D8 = v1;
}

- (void)queueConnectionToTrustedServiceManagerForPushTopic:(id)topic withCompletion:(id)completion
{
  topicCopy = topic;
  completionCopy = completion;
  v8 = completionCopy;
  secureElement = self->_secureElement;
  if (secureElement)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__PKPaymentDevice_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke;
    v12[3] = &unk_1E79C4888;
    v12[4] = self;
    v13 = completionCopy;
    [(PKSecureElement *)secureElement connectToServerWithPushTopic:topicCopy completion:v12];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "No secure element, cannot connect to server with push topic.", v11, 2u);
    }

    if (v8)
    {
      v8[2](v8, 0, 0);
    }
  }
}

void __85__PKPaymentDevice_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 56);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __85__PKPaymentDevice_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke_2;
    v5[3] = &unk_1E79C4748;
    v7 = a2;
    v6 = v2;
    v4 = v5;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke;
    block[3] = &unk_1E79C4428;
    v9 = v4;
    dispatch_async(v3, block);
  }
}

void __85__PKPaymentDevice_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  }

  v3 = v2;
  (*(*(a1 + 32) + 16))();
}

- (void)registrationDataWithAuthToken:(id)token completionHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke;
    aBlock[3] = &unk_1E79C4D60;
    v14 = tokenCopy;
    selfCopy = self;
    v16 = handlerCopy;
    v8 = _Block_copy(aBlock);
    v9 = v8;
    secureElement = self->_secureElement;
    if (secureElement)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_399;
      v11[3] = &unk_1E79C5090;
      v12 = v8;
      [(PKSecureElement *)secureElement initializeSecureElementIfNecessaryWithHandler:v11];
    }

    else
    {
      v8[2](v8);
    }
  }
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PKPaymentDeviceRegistrationData);
  [(PKPaymentDeviceRegistrationData *)v2 setAuthorizationHeader:*(a1 + 32)];
  -[PKPaymentDeviceRegistrationData setDevSigned:](v2, "setDevSigned:", [*(*(a1 + 40) + 32) isProductionSigned] ^ 1);
  v3 = PKProductType();
  [(PKPaymentDeviceRegistrationData *)v2 setProductType:v3];

  v4 = PKSerialNumber();
  [(PKPaymentDeviceRegistrationData *)v2 setDeviceSerialNumber:v4];

  v5 = PKMLBSerialNumber();
  [(PKPaymentDeviceRegistrationData *)v2 setDeviceMLBSerialNumber:v5];

  v6 = [*(*(a1 + 40) + 32) primarySecureElementIdentifier];
  [(PKPaymentDeviceRegistrationData *)v2 setSecureElementIdentifier:v6];

  [(PKPaymentDeviceRegistrationData *)v2 setWalletDeleted:PKCurrentPassbookState() > 1];
  v7 = dispatch_group_create();
  v8 = v7;
  v9 = *(a1 + 40);
  if (*(v9 + 32))
  {
    dispatch_group_enter(v7);
    v10 = *(*(a1 + 40) + 32);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_2;
    v29[3] = &unk_1E79C5018;
    v11 = v2;
    v30 = v11;
    v12 = v8;
    v31 = v12;
    [v10 stateInformationWithCompletion:v29];
    dispatch_group_enter(v12);
    v13 = *(a1 + 32);
    v14 = *(*(a1 + 40) + 32);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_3;
    v26[3] = &unk_1E79C5040;
    v15 = v11;
    v27 = v15;
    v16 = v12;
    v28 = v16;
    [v14 signatureForAuthToken:v13 completion:v26];
    dispatch_group_enter(v16);
    v17 = *(*(a1 + 40) + 32);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_4;
    v23[3] = &unk_1E79C5068;
    v24 = v15;
    v25 = v16;
    [v17 signedPlatformDataWithCompletion:v23];

    v9 = *(a1 + 40);
  }

  v18 = *(v9 + 56);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_5;
  v20[3] = &unk_1E79C4A40;
  v21 = v2;
  v22 = *(a1 + 48);
  v19 = v2;
  dispatch_group_notify(v8, v18, v20);
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSecureElementStateInformation:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSignedAuthToken:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setPlatformData:a2];
  [*(a1 + 32) setPlatformDataSignature:v6];

  v7 = *(a1 + 40);

  dispatch_group_leave(v7);
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_5(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) secureElementIdentifier];
  if (v2 && (v3 = v2, [*(a1 + 32) secureElementStateInformation], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) secureElementStateInformation];
      v9 = [*(a1 + 32) secureElementIdentifier];
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Discarding invalid registration data: Secure Element State Information=%p SEID=%p", &v10, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_399(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPaymentDevice: se-sep sync failed!!! Proceeding with registration...", v10, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)signData:(id)data signatureEntanglementMode:(unint64_t)mode withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (dataCopy)
  {
    if (PKRunningInPassd() && self->_secureElement)
    {
      v10 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEBUG, "PKPaymentDevice: signData called in passd", buf, 2u);
      }

      secureElement = self->_secureElement;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __76__PKPaymentDevice_signData_signatureEntanglementMode_withCompletionHandler___block_invoke;
      v15[3] = &unk_1E79C50B8;
      v16 = handlerCopy;
      [(PKSecureElement *)secureElement signChallenge:dataCopy signatureEntanglementMode:mode completion:v15];
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEBUG, "PKPaymentDevice: signData called, forwarding to passd", buf, 2u);
      }

      v13 = +[PKPassLibrary sharedInstance];
      [v13 signData:dataCopy signatureEntanglementMode:mode withCompletionHandler:handlerCopy];
    }
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v14, OS_LOG_TYPE_ERROR, "PKPaymentDevice: signData, no challenge provided to sign", buf, 2u);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    }
  }
}

void __76__PKPaymentDevice_signData_signatureEntanglementMode_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEBUG, "PKPaymentDevice: signData completed", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6, 0);
  }
}

- (void)signatureForAuthToken:(id)token completion:(id)completion
{
  v23[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  completionCopy = completion;
  v8 = completionCopy;
  if (tokenCopy)
  {
    secureElement = self->_secureElement;
    if (secureElement)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __52__PKPaymentDevice_signatureForAuthToken_completion___block_invoke;
      v18[3] = &unk_1E79C50E0;
      v19 = completionCopy;
      [(PKSecureElement *)secureElement signatureForAuthToken:tokenCopy completion:v18];
      v10 = v19;
LABEL_12:

      goto LABEL_13;
    }

    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "No secure element, cannot sign authToken", v17, 2u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"No secure element, cannot sign authToken";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = [v15 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v16];

    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_11:
    (v8)[2](v8, 0, v10);
    goto LABEL_12;
  }

  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "No authToken provided to sign", v17, 2u);
  }

  if (v8)
  {
    v12 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21 = @"No authToken provided to sign";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v10 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v13];

    goto LABEL_11;
  }

LABEL_13:
}

uint64_t __52__PKPaymentDevice_signatureForAuthToken_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)rewrapDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E79C5108;
    aBlock[4] = self;
    v12 = handlerCopy;
    v6 = _Block_copy(aBlock);
    v7 = v6;
    secureElement = self->_secureElement;
    if (secureElement)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke_411;
      v9[3] = &unk_1E79C5130;
      v10 = v6;
      [(PKSecureElement *)secureElement signedPlatformDataWithCompletion:v9];
    }

    else
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

void __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E79C4A40;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) platformData];
  if (v2 && (v3 = v2, [*(a1 + 32) platformDataSignature], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Rewrap data not available", v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke_411(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(PKPaymentDevicePlatfomData);
  [(PKPaymentDevicePlatfomData *)v7 setPlatformData:v6];

  [(PKPaymentDevicePlatfomData *)v7 setPlatformDataSignature:v5];
  (*(*(a1 + 32) + 16))();
}

- (id)configurationData
{
  configurationData = self->_configurationData;
  if (!configurationData)
  {
    v4 = objc_alloc_init(PKPaymentDeviceConfigurationData);
    primarySecureElementIdentifier = [(PKSecureElement *)self->_secureElement primarySecureElementIdentifier];
    [(PKPaymentDeviceConfigurationData *)v4 setSecureElementIdentifier:primarySecureElementIdentifier];

    [(PKPaymentDeviceConfigurationData *)v4 setDevSigned:[(PKSecureElement *)self->_secureElement isProductionSigned]^ 1];
    primaryJSBLSequenceCounter = [(PKSecureElement *)self->_secureElement primaryJSBLSequenceCounter];
    [(PKPaymentDeviceConfigurationData *)v4 setPrimaryJSBLSequenceCounter:primaryJSBLSequenceCounter];

    v7 = self->_configurationData;
    self->_configurationData = v4;

    configurationData = self->_configurationData;
  }

  return configurationData;
}

- (id)trustedDeviceEnrollmentInfo
{
  v3 = PKUniqueDeviceIdentifier();
  v4 = objc_alloc_init(PKTrustedDeviceEnrollmentInfo);
  v5 = PKAssignedDeviceName();
  [(PKTrustedDeviceEnrollmentInfo *)v4 setDeviceName:v5];

  v6 = PKSerialNumber();
  [(PKTrustedDeviceEnrollmentInfo *)v4 setDeviceSerialNumber:v6];

  [(PKTrustedDeviceEnrollmentInfo *)v4 setDeviceUDID:v3];
  v7 = PKProductType();
  [(PKTrustedDeviceEnrollmentInfo *)v4 setProductType:v7];

  secureElement = self->_secureElement;
  if (secureElement)
  {
    primarySecureElementIdentifier = [(PKSecureElement *)secureElement primarySecureElementIdentifier];
    [(PKTrustedDeviceEnrollmentInfo *)v4 setSecureElementIdentifier:primarySecureElementIdentifier];

    [(PKTrustedDeviceEnrollmentInfo *)v4 setSupportsAccessExpressMode:[(PKSecureElement *)self->_secureElement supportsExpressModeForExpressPassType:2]];
  }

  return v4;
}

- (void)provisioningDataIncludingDeviceMetadata:(BOOL)metadata withCompletionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (metadataCopy)
    {
      v7 = 498;
    }

    else
    {
      v7 = 256;
    }

    v8 = objc_alloc_init(PKPaymentDeviceProvisioningData);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__PKPaymentDevice_provisioningDataIncludingDeviceMetadata_withCompletionHandler___block_invoke;
    v10[3] = &unk_1E79C5158;
    v11 = v8;
    v12 = handlerCopy;
    v9 = v8;
    [(PKPaymentDevice *)self _populateDeviceMetadata:v9 withFields:v7 completion:v10];
  }
}

- (void)paymentDeviceMetadataFields:(unint64_t)fields completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = objc_alloc_init(PKPaymentDeviceMetadata);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PKPaymentDevice_paymentDeviceMetadataFields_completion___block_invoke;
    v8[3] = &unk_1E79C5180;
    v9 = completionCopy;
    [(PKPaymentDevice *)self _populateDeviceMetadata:v7 withFields:fields completion:v8];
  }
}

- (void)_populateDeviceMetadata:(id)metadata withFields:(unint64_t)fields completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    if (metadataCopy && fields)
    {
      internalQueue = self->_internalQueue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke;
      v13[3] = &unk_1E79C4D88;
      fieldsCopy = fields;
      v14 = metadataCopy;
      selfCopy = self;
      v16 = v10;
      v12 = v13;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __dispatch_async_ar_block_invoke;
      block[3] = &unk_1E79C4428;
      v19 = v12;
      dispatch_async(internalQueue, block);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke(PKPaymentWebServiceLocalProxyTargetDevice *a1, const char *a2, void *a3)
{
  handlerQueue = a1[2]._handlerQueue;
  if ((handlerQueue & 0x10) != 0)
  {
    v5 = a1[1]._handlerQueue;
    v6 = PKAssignedDeviceName();
    [(OS_dispatch_queue *)v5 setDeviceName:v6];

    handlerQueue = a1[2]._handlerQueue;
    if ((handlerQueue & 8) == 0)
    {
LABEL_3:
      if ((handlerQueue & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((handlerQueue & 8) == 0)
  {
    goto LABEL_3;
  }

  v7 = a1[1]._handlerQueue;
  v8 = PKSerialNumber();
  [(OS_dispatch_queue *)v7 setSerialNumber:v8];

  handlerQueue = a1[2]._handlerQueue;
  if ((handlerQueue & 2) == 0)
  {
LABEL_4:
    if ((handlerQueue & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = a1[1]._handlerQueue;
  v10 = PKUniqueDeviceIdentifier();
  [(OS_dispatch_queue *)v9 setUniqueDeviceIdentifier:v10];

  handlerQueue = a1[2]._handlerQueue;
  if ((handlerQueue & 4) == 0)
  {
LABEL_5:
    if ((handlerQueue & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v11 = a1[1]._handlerQueue;
  v12 = PKUniqueChipIdentifier();
  [(OS_dispatch_queue *)v11 setUniqueChipIdentifier:v12];

  handlerQueue = a1[2]._handlerQueue;
  if ((handlerQueue & 1) == 0)
  {
LABEL_6:
    if ((handlerQueue & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v13 = a1[1]._handlerQueue;
  v14 = [(objc_class *)a1[1]._connection[4].super.isa primarySecureElementIdentifier];
  [(OS_dispatch_queue *)v13 setSecureElementIdentifier:v14];

  handlerQueue = a1[2]._handlerQueue;
  if ((handlerQueue & 0x100) == 0)
  {
LABEL_7:
    if ((handlerQueue & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v15 = a1[1]._handlerQueue;
  v16 = [(objc_class *)a1[1]._connection[4].super.isa primaryJSBLSequenceCounter];
  [(OS_dispatch_queue *)v15 setPrimaryJSBLSequenceCounter:v16];

  handlerQueue = a1[2]._handlerQueue;
  if ((handlerQueue & 0x20) == 0)
  {
LABEL_8:
    if ((handlerQueue & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v17 = PKDevicePhoneNumber();
  if ([v17 length])
  {
    [(OS_dispatch_queue *)a1[1]._handlerQueue setPhoneNumber:v17];
  }

  if ((a1[2]._handlerQueue & 0x40) != 0)
  {
LABEL_19:
    v18 = PKDevicePhoneNumberSignature();
    v19 = v18;
    if (v18)
    {
      v20 = a1[1]._handlerQueue;
      v21 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69654F0]];
      [(OS_dispatch_queue *)v20 setSignedPhoneNumber:v21];

      v22 = a1[1]._handlerQueue;
      v23 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69654F8]];
      [(OS_dispatch_queue *)v22 setSignedPhoneNumberVersion:v23];
    }
  }

LABEL_22:
  v24 = MEMORY[0x1E695FBE8];
  v25 = PKPassKitCoreBundle();
  v26 = [v25 bundlePath];
  v27 = [v24 authorizationStatusForBundlePath:v26];

  if ([MEMORY[0x1E695FBE8] locationServicesEnabled] && (v27 - 3) <= 0xFFFFFFFD && (-[NSXPCConnection skipLocationCheck](a1[1]._connection, "skipLocationCheck") & 1) == 0 && (a1[2]._handlerQueue & 0x80) != 0)
  {
    v32 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Can determine device location.", buf, 2u);
    }

    connection = a1[1]._connection;
    if (!connection[1].super.isa)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_416;
      block[3] = &unk_1E79C4E28;
      block[4] = connection;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Requesting when in user authorization for PassKitCore", buf, 2u);
    }

    [(objc_class *)a1[1]._connection[1].super.isa requestWhenInUseAuthorization];
    v34 = [(objc_class *)a1[1]._connection[1].super.isa location];
    v31 = v34;
    if (!a1[1]._connection[3].super.isa && v34 && _LocationMeetsAccuracyCriteria(v34))
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Immediately retrieved location", buf, 2u);
      }

      [(OS_dispatch_queue *)a1[1]._handlerQueue setLocation:v31];
      isa = a1[1]._connection[7].super.isa;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_420;
      v50[3] = &unk_1E79C44A0;
      v52 = a1[2].super.isa;
      v51 = a1[1]._handlerQueue;
      v36 = v50;
      *buf = MEMORY[0x1E69E9820];
      v57 = 3221225472;
      v58 = __dispatch_async_ar_block_invoke;
      v59 = &unk_1E79C4428;
      v60 = v36;
      dispatch_async(isa, buf);

      v37 = v52;
    }

    else
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Start updating location…", buf, 2u);
      }

      v37 = objc_alloc_init(PKPaymentDeviceMetadataFetchTask);
      [(PKPaymentDeviceMetadataFetchTask *)v37 setDeviceMetadata:a1[1]._handlerQueue];
      [(PKPaymentDeviceMetadataFetchTask *)v37 setRequestedFields:a1[2]._handlerQueue];
      [(PKPaymentDeviceMetadataFetchTask *)v37 setRemaningFields:128];
      [(PKPaymentDeviceMetadataFetchTask *)v37 setCompletion:a1[2].super.isa];
      [(objc_class *)a1[1]._connection[6].super.isa addObject:v37];
      v38 = a1[1]._connection;
      if (!v38[3].super.isa)
      {
        v39 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v38[8].super.isa);
        v40 = a1[1]._connection;
        v41 = v40[3].super.isa;
        v40[3].super.isa = v39;

        v42 = a1[1]._connection[3].super.isa;
        v43 = dispatch_walltime(0, 10000000000);
        dispatch_source_set_timer(v42, v43, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        v44 = a1[1]._connection;
        v45 = v44[3].super.isa;
        objc_initWeak(buf, v44);
        v46 = a1[1]._connection[3].super.isa;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_419;
        handler[3] = &unk_1E79C51A8;
        objc_copyWeak(v54, buf);
        v54[1] = v45;
        dispatch_source_set_event_handler(v46, handler);
        dispatch_resume(a1[1]._connection[3].super.isa);
        [(objc_class *)a1[1]._connection[1].super.isa startUpdatingLocation];
        objc_destroyWeak(v54);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    v28 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Returning device metadata without location", buf, 2u);
    }

    v29 = a1[1]._connection[7].super.isa;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_421;
    v47[3] = &unk_1E79C44A0;
    v49 = a1[2].super.isa;
    v48 = a1[1]._handlerQueue;
    v30 = v47;
    *buf = MEMORY[0x1E69E9820];
    v57 = 3221225472;
    v58 = __dispatch_async_ar_block_invoke;
    v59 = &unk_1E79C4428;
    v60 = v30;
    dispatch_async(v29, buf);

    v31 = v49;
  }
}

void __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_416(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695FBE8]);
  v7 = PKPassKitCoreBundle();
  v3 = [v7 bundlePath];
  v4 = [v2 initWithEffectiveBundlePath:v3 delegate:*(a1 + 32) onQueue:MEMORY[0x1E69E96A0]];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;
}

void __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_419(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 3);
    if (v5)
    {
      if (*(a1 + 40) == v5)
      {
        v6 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Location did time out", v7, 2u);
        }

        [v4 _finishLocationFixWithLocation:0];
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)setRegistrationRegionMap:(id)map primaryRegionTopic:(id)topic
{
  v13 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  topicCopy = topic;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = mapCopy;
    v11 = 2112;
    v12 = topicCopy;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Setting registration information on Secure Element %@ primaryRegionTopic %@", &v9, 0x16u);
  }

  [(PKSecureElement *)self->_secureElement setRegistrationInformation:mapCopy primaryRegionTopic:topicCopy];
}

- (void)SEPParingInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  secureElement = self->_secureElement;
  if (secureElement)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PKPaymentDevice_SEPParingInformationWithCompletion___block_invoke;
    v9[3] = &unk_1E79C5090;
    v10 = completionCopy;
    [(PKSecureElement *)secureElement SEPPairingInfoWithCompletion:v9];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "No secure element, cannot return SEP Pairing info", v8, 2u);
    }

    if (v5)
    {
      v5[2](v5, 0, 0, 0);
    }
  }
}

uint64_t __54__PKPaymentDevice_SEPParingInformationWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v32 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  locationsCopy = locations;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Location did update", buf, 2u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = locationsCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v31 count:16];
  v11 = v9;
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = v10;
  v13 = 0;
  v14 = *v23;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v23 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v22 + 1) + 8 * i);
      if (_LocationMeetsAccuracyCriteria(v16))
      {
        v17 = v16;

        v13 = v17;
      }
    }

    v12 = [v9 countByEnumeratingWithState:&v22 objects:v31 count:16];
  }

  while (v12);

  if (v13)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Found candidate location", buf, 2u);
    }

    internalQueue = self->_internalQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__PKPaymentDevice_locationManager_didUpdateLocations___block_invoke;
    v20[3] = &unk_1E79C4DD8;
    v20[4] = self;
    v21 = v13;
    v19 = v20;
    *buf = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __dispatch_async_ar_block_invoke;
    v29 = &unk_1E79C4428;
    v30 = v19;
    v11 = v13;
    dispatch_async(internalQueue, buf);

LABEL_16:
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  code = [error code];
  v8 = PKLogFacilityTypeGetObject(7uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (code)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Location did fail", buf, 2u);
    }

    internalQueue = self->_internalQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__PKPaymentDevice_locationManager_didFailWithError___block_invoke;
    v14[3] = &unk_1E79C4E28;
    v14[4] = self;
    v11 = v14;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __dispatch_async_ar_block_invoke;
    v16 = &unk_1E79C4428;
    v17 = v11;
    dispatch_async(internalQueue, buf);
  }

  else
  {
    if (v9)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = managerCopy;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@: Location Manager %@ unable to retreve location, will retry.", buf, 0x16u);
    }
  }
}

- (void)_finishLocationFixWithLocation:(id)location
{
  v20 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_metdataFetchTasks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        remaningFields = [v10 remaningFields];
        if ((remaningFields & 0x80) != 0)
        {
          [v10 setRemaningFields:remaningFields & 0xFFFFFFFFFFFFFF7FLL];
          if (locationCopy)
          {
            deviceMetadata = [v10 deviceMetadata];
            [deviceMetadata setLocation:locationCopy];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  locationFixTimeout = self->_locationFixTimeout;
  if (locationFixTimeout)
  {
    dispatch_source_cancel(locationFixTimeout);
    v14 = self->_locationFixTimeout;
    self->_locationFixTimeout = 0;
  }

  [(PKPaymentDevice *)self _executeDeviceMetadataFetchTasksCompletionHandlers];
}

- (void)_executeDeviceMetadataFetchTasksCompletionHandlers
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_metdataFetchTasks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v16 = v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 remaningFields])
        {
          [(NSMutableArray *)v3 addObject:v9];
        }

        else
        {
          completion = [v9 completion];
          v11 = completion;
          if (completion)
          {
            callbackQueue = self->_callbackQueue;
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v18[0] = __69__PKPaymentDevice__executeDeviceMetadataFetchTasksCompletionHandlers__block_invoke;
            v18[1] = &unk_1E79C44A0;
            v13 = completion;
            v18[2] = v9;
            v19 = v13;
            v14 = v17;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __dispatch_async_ar_block_invoke;
            block[3] = &unk_1E79C4428;
            v25 = v14;
            dispatch_async(callbackQueue, block);
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  metdataFetchTasks = self->_metdataFetchTasks;
  self->_metdataFetchTasks = v3;
}

void __69__PKPaymentDevice__executeDeviceMetadataFetchTasksCompletionHandlers__block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Calling device metadata completion handler", v5, 2u);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) deviceMetadata];
  (*(v3 + 16))(v3, v4);
}

- (void)configurationDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    callbackQueue = self->_callbackQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PKPaymentDevice_configurationDataWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E79C44A0;
    v8[4] = self;
    v9 = handlerCopy;
    v7 = v8;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke;
    block[3] = &unk_1E79C4428;
    v11 = v7;
    dispatch_async(callbackQueue, block);
  }
}

void __58__PKPaymentDevice_configurationDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) configurationData];
  (*(v1 + 16))(v1, v2, 0);
}

@end
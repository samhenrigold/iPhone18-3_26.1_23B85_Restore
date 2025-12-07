@interface DisplayPaymentSheetOperation
- (BOOL)_isChallengeReadyToBeSigned;
- (BOOL)_presentPaymentSheetWithPaymentRequest:(id)request error:(id *)error;
- (CGImage)_createDefaultImageWithImageRef:(CGImage *)ref size:(CGSize)size borderPath:(CGPath *)path;
- (CGImage)_createImageMaskRefWithSize:(CGSize)size andPath:(CGPath *)path;
- (CGImage)_createImageRefWithURL:(id)l adornmentStyle:(int64_t)style designVersion:(id)version;
- (CGImage)_createMaskedImageRefForImageRef:(CGImage *)ref withPathRef:(CGPath *)pathRef andAdornmentStyle:(int64_t)style;
- (CGImage)_createRGBImageRefForGreyScaleImageRef:(CGImage *)ref width:(unint64_t)width height:(unint64_t)height;
- (CGImage)_createRatingImageWithStringValue:(id)value assetScale:(float *)scale;
- (CGImage)_createResizedImageWithOriginalImage:(CGImage *)image targetHeight:(double)height;
- (CGPath)_createBorderPathForAdornmentStyle:(int64_t)style iconWidth:(double)width iconHeight:(double)height designVersion:(id)version;
- (DisplayPaymentSheetOperation)initWithPaymentSheet:(id)sheet;
- (float)_challengeSigningDelay;
- (id)_metricsDialogEvent;
- (id)_paymentRequest;
- (int64_t)_imageTypeForURL:(id)l;
- (int64_t)_paymentSheetStyle;
- (unint64_t)_paymentRequestorTypeForPayeeType:(int64_t)type;
- (void)_completeWithSuccess:(BOOL)success error:(id)error;
- (void)_loadURLBag;
- (void)_postMetricsWithDialogEvent:(id)event;
- (void)dealloc;
- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationController:(id)controller didEncounterAuthorizationEvent:(unint64_t)event;
- (void)paymentAuthorizationController:(id)controller willFinishWithError:(id)error;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
- (void)run;
- (void)setLocalAuthAccessControlRef:(__SecAccessControl *)ref;
@end

@implementation DisplayPaymentSheetOperation

- (DisplayPaymentSheetOperation)initWithPaymentSheet:(id)sheet
{
  sheetCopy = sheet;
  v14.receiver = self;
  v14.super_class = DisplayPaymentSheetOperation;
  v6 = [(DisplayPaymentSheetOperation *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_didAuthorizePayment = 0;
    v6->_didBiometricsLockout = 0;
    v6->_didCancelHomeButton = 0;
    v8 = dispatch_queue_create("com.apple.itunesstored.DisplayPaymentSheetOperation.dispatchQueue", 0);
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v8;

    fpanID = v7->_fpanID;
    v7->_fpanID = 0;

    v7->_isASNPurchase = 0;
    objc_storeStrong(&v7->_paymentSheet, sheet);
    v11 = objc_alloc_init(NSMutableArray);
    userActions = v7->_userActions;
    v7->_userActions = v11;

    v7->_assetScaleIndex = -1;
    v7->_assetScaleRef = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v7->_imageArrayIndex = -1;
    v7->_imageArrayRef = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v7->_inlineImageArrayIndex = -1;
    v7->_inlineImageArrayRef = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v7->_tintArrayIndex = -1;
    v7->_tintArrayRef = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  }

  return v7;
}

- (void)dealloc
{
  [(PKPaymentAuthorizationController *)self->_controller setDelegate:0];
  [(PKPaymentAuthorizationController *)self->_controller setPrivateDelegate:0];
  assetScaleRef = self->_assetScaleRef;
  if (assetScaleRef)
  {
    CFRelease(assetScaleRef);
  }

  imageArrayRef = self->_imageArrayRef;
  if (imageArrayRef)
  {
    CFRelease(imageArrayRef);
  }

  inlineImageArrayRef = self->_inlineImageArrayRef;
  if (inlineImageArrayRef)
  {
    CFRelease(inlineImageArrayRef);
  }

  localAuthAccessControlRef = self->_localAuthAccessControlRef;
  if (localAuthAccessControlRef)
  {
    CFRelease(localAuthAccessControlRef);
  }

  tintArrayRef = self->_tintArrayRef;
  if (tintArrayRef)
  {
    CFRelease(tintArrayRef);
  }

  v8.receiver = self;
  v8.super_class = DisplayPaymentSheetOperation;
  [(DisplayPaymentSheetOperation *)&v8 dealloc];
}

- (void)setLocalAuthAccessControlRef:(__SecAccessControl *)ref
{
  localAuthAccessControlRef = self->_localAuthAccessControlRef;
  if (localAuthAccessControlRef)
  {
    CFRelease(localAuthAccessControlRef);
  }

  self->_localAuthAccessControlRef = CFRetain(ref);
}

- (void)run
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = objc_opt_class();
  paymentSheet = self->_paymentSheet;
  v9 = v7;
  shouldUppercaseText = [(SSPaymentSheet *)paymentSheet shouldUppercaseText];
  v11 = @"NO";
  if (shouldUppercaseText)
  {
    v11 = @"YES";
  }

  v48 = 138543618;
  v49 = v7;
  v50 = 2114;
  v51 = v11;
  v12 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Should use client-driven upper-casing: %{public}@", &v48, 22);

  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4];
    free(v12);
    v44 = oSLogObject;
    SSFileLog();
LABEL_14:
  }

  authenticationContext = self->_authenticationContext;
  if (authenticationContext)
  {
    username = [(AKAppleIDAuthenticationContext *)authenticationContext username];

    if (!username)
    {
      v37 = +[SSLogConfig sharedDaemonConfig];
      if (!v37)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        LODWORD(v39) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v39) = shouldLog2;
      }

      oSLogObject2 = [v37 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v39 = v39;
      }

      else
      {
        v39 &= 2u;
      }

      if (v39)
      {
        v41 = objc_opt_class();
        v48 = 138543362;
        v49 = v41;
        v42 = v41;
        LODWORD(v46) = 12;
        v43 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: Payment sheet failed for no username", &v48, v46);

        if (!v43)
        {
LABEL_68:

          v25 = ISError();
          [(DisplayPaymentSheetOperation *)self _completeWithSuccess:0 error:v25];
          goto LABEL_69;
        }

        oSLogObject2 = [NSString stringWithCString:v43 encoding:4];
        free(v43);
        SSFileLog();
      }

      goto LABEL_68;
    }
  }

  _paymentRequest = [(DisplayPaymentSheetOperation *)self _paymentRequest];
  if (!_paymentRequest)
  {
    v25 = ISError();
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      LODWORD(v34) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v34) = shouldLog3;
    }

    oSLogObject3 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v34 = v34;
    }

    else
    {
      v34 &= 2u;
    }

    if (!v34)
    {
      goto LABEL_53;
    }

    v35 = objc_opt_class();
    v48 = 138543362;
    v49 = v35;
    v31 = v35;
    LODWORD(v46) = 12;
    v32 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: Failed to configure payment request", &v48, v46);
    goto LABEL_51;
  }

  v16 = +[SSLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    LODWORD(v18) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v18) = shouldLog4;
  }

  oSLogObject4 = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v18;
  }

  else
  {
    v18 &= 2u;
  }

  if (v18)
  {
    v20 = objc_opt_class();
    v21 = v20;
    v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_paymentRequest requestType]);
    v48 = 138543618;
    v49 = v20;
    v50 = 2114;
    v51 = v22;
    LODWORD(v46) = 22;
    v23 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: Created payment request with requestType: %{public}@", &v48, v46);

    if (!v23)
    {
      goto LABEL_30;
    }

    oSLogObject4 = [NSString stringWithCString:v23 encoding:4];
    free(v23);
    v45 = oSLogObject4;
    SSFileLog();
  }

LABEL_30:
  v47 = 0;
  v24 = [(DisplayPaymentSheetOperation *)self _presentPaymentSheetWithPaymentRequest:_paymentRequest error:&v47];
  v25 = v47;
  if ((v24 & 1) == 0)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      LODWORD(v28) = shouldLog5 | 2;
    }

    else
    {
      LODWORD(v28) = shouldLog5;
    }

    oSLogObject3 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v28 = v28;
    }

    else
    {
      v28 &= 2u;
    }

    if (!v28)
    {
      goto LABEL_53;
    }

    v30 = objc_opt_class();
    v48 = 138543618;
    v49 = v30;
    v50 = 2114;
    v51 = v25;
    v31 = v30;
    LODWORD(v46) = 22;
    v32 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: Failed to present payment sheet with error: %{public}@", &v48, v46);
LABEL_51:
    v36 = v32;

    if (!v36)
    {
LABEL_54:

      [(DisplayPaymentSheetOperation *)self _completeWithSuccess:0 error:v25];
      goto LABEL_55;
    }

    oSLogObject3 = [NSString stringWithCString:v36 encoding:4];
    free(v36);
    SSFileLog();
LABEL_53:

    goto LABEL_54;
  }

LABEL_55:

LABEL_69:
}

- (void)_completeWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  v11 = objc_opt_class();
  v12 = @"NO";
  v27 = 138543874;
  v28 = v11;
  v29 = 2114;
  if (successCopy)
  {
    v12 = @"YES";
  }

  v30 = v12;
  v31 = 2114;
  v32 = errorCopy;
  v13 = v11;
  v14 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Completion block with success: %{public}@, error: %{public}@", &v27, 32);

  if (v14)
  {
    oSLogObject = [NSString stringWithCString:v14 encoding:4];
    free(v14);
    v24 = oSLogObject;
    SSFileLog();
LABEL_14:
  }

  _metricsDialogEvent = [(DisplayPaymentSheetOperation *)self _metricsDialogEvent];
  v16 = _metricsDialogEvent;
  if (_metricsDialogEvent)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F237C;
    block[3] = &unk_100327238;
    block[4] = self;
    v26 = _metricsDialogEvent;
    dispatch_async(dispatchQueue, block);
  }

  [(PKPaymentAuthorizationController *)self->_controller setDelegate:0, v24];
  [(PKPaymentAuthorizationController *)self->_controller setPrivateDelegate:0];
  [(DisplayPaymentSheetOperation *)self setError:errorCopy];
  [(DisplayPaymentSheetOperation *)self setSuccess:successCopy];
  completionHandlerForAutoEnrollment = [(DisplayPaymentSheetOperation *)self completionHandlerForAutoEnrollment];
  v19 = completionHandlerForAutoEnrollment;
  if (completionHandlerForAutoEnrollment)
  {
    (*(completionHandlerForAutoEnrollment + 16))(completionHandlerForAutoEnrollment, self->_signedChallenge, self->_passwordEquivalentToken, self->_didAuthorizePayment, self->_paymentTokenData, self->_fpanID, errorCopy);
  }

  else
  {
    completionHandler = [(DisplayPaymentSheetOperation *)self completionHandler];
    v21 = completionHandler;
    if (completionHandler)
    {
      (*(completionHandler + 16))(completionHandler, self->_signedChallenge, self->_passwordEquivalentToken, self->_didAuthorizePayment, errorCopy);
    }
  }

  [(DisplayPaymentSheetOperation *)self setCompletionHandler:0];
  [(DisplayPaymentSheetOperation *)self setCompletionHandlerForAutoEnrollment:0];
  containerCompletionHandler = [(DisplayPaymentSheetOperation *)self containerCompletionHandler];
  v23 = containerCompletionHandler;
  if (containerCompletionHandler)
  {
    (*(containerCompletionHandler + 16))(containerCompletionHandler);
  }

  [(DisplayPaymentSheetOperation *)self setContainerCompletionHandler:0];
}

- (int64_t)_imageTypeForURL:(id)l
{
  absoluteString = [l absoluteString];
  lowercaseString = [absoluteString lowercaseString];

  if ([lowercaseString hasSuffix:@"jpg"])
  {
    v5 = 2;
  }

  else
  {
    v5 = [lowercaseString hasSuffix:@"png"];
  }

  return v5;
}

- (BOOL)_isChallengeReadyToBeSigned
{
  challenge = [(DisplayPaymentSheetOperation *)self challenge];
  if (challenge)
  {
    accountIdentifier = [(DisplayPaymentSheetOperation *)self accountIdentifier];
    if (accountIdentifier && [(DisplayPaymentSheetOperation *)self localAuthAccessControlRef])
    {
      localAuthContext = [(DisplayPaymentSheetOperation *)self localAuthContext];
      if (localAuthContext)
      {
        localAuthOptions = [(DisplayPaymentSheetOperation *)self localAuthOptions];
        v7 = localAuthOptions != 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_loadURLBag
{
  v3 = objc_alloc_init(ISLoadURLBagOperation);
  v16 = 0;
  v4 = [(DisplayPaymentSheetOperation *)self runSubOperation:v3 returningError:&v16];
  v5 = v16;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    uRLBag = [v3 URLBag];
    urlBag = self->_urlBag;
    self->_urlBag = uRLBag;
    goto LABEL_18;
  }

  urlBag = +[SSLogConfig sharedDaemonConfig];
  if (!urlBag)
  {
    urlBag = +[SSLogConfig sharedConfig];
  }

  shouldLog = [urlBag shouldLog];
  if ([urlBag shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog;
  }

  oSLogObject = [urlBag OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = objc_opt_class();
  v17 = 138543618;
  v18 = v12;
  v19 = 2114;
  v20 = v6;
  v13 = v12;
  v14 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Failed to load URL bag with error: %{public}@", &v17, 22);

  if (v14)
  {
    oSLogObject = [NSString stringWithCString:v14 encoding:4];
    free(v14);
    SSFileLog();
LABEL_16:
  }

LABEL_18:
}

- (id)_paymentRequest
{
  v3 = ISWeakLinkedClassForString();
  v237 = ISWeakLinkedClassForString();
  v238 = ISWeakLinkedClassForString();
  v4 = objc_alloc_init(v3);
  [v4 setAccesssControlRef:{-[DisplayPaymentSheetOperation localAuthAccessControlRef](self, "localAuthAccessControlRef")}];
  authenticationContext = [(DisplayPaymentSheetOperation *)self authenticationContext];
  [v4 setAppleIDAuthenticationContext:authenticationContext];

  localAuthContext = [(DisplayPaymentSheetOperation *)self localAuthContext];
  externalizedContext = [localAuthContext externalizedContext];
  [v4 setExternalizedContext:externalizedContext];

  paymentSheet = [(DisplayPaymentSheetOperation *)self paymentSheet];
  LODWORD(externalizedContext) = [paymentSheet isApplePayClassic];

  v9 = &CFDictionaryGetValue_ptr;
  if (externalizedContext)
  {
    paymentSheet2 = [(DisplayPaymentSheetOperation *)self paymentSheet];
    merchantSession = [paymentSheet2 merchantSession];

    v12 = +[SSLogConfig sharedDaemonConfig];
    v13 = v12;
    if (merchantSession)
    {
      if (!v12)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v15 = shouldLog | 2;
      }

      else
      {
        v15 = shouldLog;
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v15;
      }

      else
      {
        v17 = v15 & 2;
      }

      if (v17)
      {
        v18 = objc_opt_class();
        v261 = 138543362;
        v262 = v18;
        v19 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Setting request type to apple-pay-classic", &v261, 12);

        if (!v19)
        {
LABEL_15:
          v20 = 0;
          goto LABEL_40;
        }

        oSLogObject = [NSString stringWithCString:v19 encoding:4];
        free(v19);
        v228 = oSLogObject;
        SSFileLog();
      }

      goto LABEL_15;
    }

    if (!v12)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v28 = shouldLog2 | 2;
    }

    else
    {
      v28 = shouldLog2;
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 2;
    }

    if (!v29)
    {
      goto LABEL_38;
    }

    v25 = objc_opt_class();
    v261 = 138543362;
    v262 = v25;
    v26 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Attempted apple-pay-classic but failed for no merchant Session, setting request type to CoF instead", &v261, 12);
  }

  else
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v22 = shouldLog3 | 2;
    }

    else
    {
      v22 = shouldLog3;
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 2;
    }

    if (!v24)
    {
      goto LABEL_38;
    }

    v25 = objc_opt_class();
    v261 = 138543362;
    v262 = v25;
    v26 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Setting request type to CoF", &v261, 12);
  }

  v30 = v26;

  if (v30)
  {
    oSLogObject2 = [NSString stringWithCString:v30 encoding:4];
    free(v30);
    v228 = oSLogObject2;
    SSFileLog();
LABEL_38:
  }

  v20 = 1;
LABEL_40:

  [v4 setRequestType:v20];
  externalizedContext2 = [v4 externalizedContext];
  if (externalizedContext2)
  {
  }

  else
  {
    appleIDAuthenticationContext = [v4 appleIDAuthenticationContext];

    if (!appleIDAuthenticationContext)
    {
      self->_isASNPurchase = 1;
    }
  }

  v33 = self->_paymentSheet;
  currencyCode = [(SSPaymentSheet *)v33 currencyCode];
  [v4 setCurrencyCode:currencyCode];

  countryCode = [(SSPaymentSheet *)v33 countryCode];
  [v4 setCountryCode:countryCode];

  if ([(SSPaymentSheet *)v33 titleType]== 2)
  {
    if ([(SSPaymentSheet *)v33 isApplePayClassic])
    {
      [v4 setRequestor:{-[DisplayPaymentSheetOperation _paymentRequestorTypeForPayeeType:](self, "_paymentRequestorTypeForPayeeType:", -[SSPaymentSheet payeeType](v33, "payeeType"))}];
      title = [(SSPaymentSheet *)v33 title];
      [v4 setLocalizedNavigationTitle:title];

      goto LABEL_51;
    }

    v40 = v4;
    v39 = 0;
  }

  else
  {
    title2 = [(SSPaymentSheet *)v33 title];
    [v4 setLocalizedNavigationTitle:title2];

    v38 = [(DisplayPaymentSheetOperation *)self _paymentRequestorTypeForPayeeType:[(SSPaymentSheet *)v33 payeeType]];
    if (!v38)
    {
      goto LABEL_51;
    }

    v39 = v38;
    v40 = v4;
  }

  [v40 setRequestor:{v39, v228}];
LABEL_51:
  v41 = +[SSLogConfig sharedDaemonConfig];
  if (!v41)
  {
    v41 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v41 shouldLog];
  if ([v41 shouldLogToDisk])
  {
    v43 = shouldLog4 | 2;
  }

  else
  {
    v43 = shouldLog4;
  }

  oSLogObject3 = [v41 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v43;
  }

  else
  {
    v45 = v43 & 2;
  }

  v241 = v33;
  if (!v45)
  {
    goto LABEL_62;
  }

  v46 = objc_opt_class();
  v47 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 requestor]);
  localizedNavigationTitle = [v4 localizedNavigationTitle];
  v261 = 138543874;
  v262 = v46;
  v263 = 2114;
  v264 = v47;
  v265 = 2114;
  v266 = localizedNavigationTitle;
  LODWORD(v232) = 32;
  v49 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%{public}@: Configured payment request with requestor: %{public}@, localizedTitle: %{public}@", &v261, v232);

  v33 = v241;
  if (v49)
  {
    oSLogObject3 = [NSString stringWithCString:v49 encoding:4];
    free(v49);
    v229 = oSLogObject3;
    SSFileLog();
LABEL_62:
  }

  if ((+[ISBiometricStore shouldUseAutoEnrollment](ISBiometricStore, "shouldUseAutoEnrollment") & 1) != 0 || +[ISBiometricStore shouldUseApplePayClassic])
  {
    if (![AMSBiometrics isActionSupported:4 withAccessControl:self->_localAuthAccessControlRef, v229])
    {
      merchantSession2 = [AMSBiometrics ACLVersionForAccessControl:self->_localAuthAccessControlRef];
      countryCode2 = +[SSLogConfig sharedDaemonConfig];
      if (!countryCode2)
      {
        countryCode2 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [countryCode2 shouldLog];
      if ([countryCode2 shouldLogToDisk])
      {
        LODWORD(v61) = shouldLog5 | 2;
      }

      else
      {
        LODWORD(v61) = shouldLog5;
      }

      oSLogObject4 = [countryCode2 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v61;
      }

      else
      {
        v61 &= 2u;
      }

      if (v61)
      {
        v63 = objc_opt_class();
        v261 = 138543618;
        v262 = v63;
        v263 = 2114;
        v264 = merchantSession2;
        LODWORD(v232) = 22;
        v64 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: Skipping merchant session for incorrect ACL version: %{public}@", &v261, v232);

        if (!v64)
        {
LABEL_149:

          goto LABEL_150;
        }

        oSLogObject4 = [NSString stringWithCString:v64 encoding:4];
        free(v64);
        v229 = oSLogObject4;
        SSFileLog();
      }

LABEL_148:

      goto LABEL_149;
    }

    merchantSession2 = [(SSPaymentSheet *)v33 merchantSession];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v51 = +[SSLogConfig sharedDaemonConfig];
      if (!v51)
      {
        v51 = +[SSLogConfig sharedConfig];
      }

      shouldLog6 = [v51 shouldLog];
      if ([v51 shouldLogToDisk])
      {
        LODWORD(v66) = shouldLog6 | 2;
      }

      else
      {
        LODWORD(v66) = shouldLog6;
      }

      oSLogObject5 = [v51 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v66 = v66;
      }

      else
      {
        v66 &= 2u;
      }

      if (v66)
      {
        v68 = objc_opt_class();
        v261 = 138543362;
        v262 = v68;
        LODWORD(v232) = 12;
        v69 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%{public}@: No merchant session in server response.", &v261, v232);

        if (!v69)
        {
          goto LABEL_117;
        }

        oSLogObject5 = [NSString stringWithCString:v69 encoding:4];
        free(v69);
        v229 = oSLogObject5;
        SSFileLog();
      }

LABEL_117:
      if (![(SSPaymentSheet *)v33 isApplePayClassic])
      {
LABEL_150:

        goto LABEL_151;
      }

      countryCode2 = [(SSPaymentSheet *)v33 countryCode];
      if (countryCode2)
      {
        v75 = [NSSet setWithObject:countryCode2];
        [v4 setSupportedCountries:v75];
        goto LABEL_133;
      }

      v75 = +[SSLogConfig sharedDaemonConfig];
      if (!v75)
      {
        v75 = +[SSLogConfig sharedConfig];
      }

      shouldLog7 = [v75 shouldLog];
      if ([v75 shouldLogToDisk])
      {
        LODWORD(v77) = shouldLog7 | 2;
      }

      else
      {
        LODWORD(v77) = shouldLog7;
      }

      oSLogObject6 = [v75 OSLogObject];
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
      {
        v77 = v77;
      }

      else
      {
        v77 &= 2u;
      }

      if (v77)
      {
        v79 = objc_opt_class();
        v261 = 138543362;
        v262 = v79;
        LODWORD(v232) = 12;
        v80 = _os_log_send_and_compose_impl(v77, 0, 0, 0, &_mh_execute_header, oSLogObject6, 16, "%{public}@: Failed to find Apple Pay Classic country code", &v261, v232);

        if (!v80)
        {
          v33 = v241;
LABEL_133:

          oSLogObject4 = +[ISBiometricStore applePayClassicNetworks];
          if (oSLogObject4)
          {
            [v4 setSupportedNetworks:oSLogObject4];
            goto LABEL_148;
          }

          v81 = +[SSLogConfig sharedDaemonConfig];
          if (!v81)
          {
            v81 = +[SSLogConfig sharedConfig];
          }

          shouldLog8 = [v81 shouldLog];
          if ([v81 shouldLogToDisk])
          {
            LODWORD(v83) = shouldLog8 | 2;
          }

          else
          {
            LODWORD(v83) = shouldLog8;
          }

          oSLogObject7 = [v81 OSLogObject];
          if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
          {
            v83 = v83;
          }

          else
          {
            v83 &= 2u;
          }

          if (v83)
          {
            v85 = objc_opt_class();
            v261 = 138543362;
            v262 = v85;
            LODWORD(v232) = 12;
            v86 = _os_log_send_and_compose_impl(v83, 0, 0, 0, &_mh_execute_header, oSLogObject7, 16, "%{public}@: Failed to find Apple Pay Classic payment networks", &v261, v232);

            v9 = &CFDictionaryGetValue_ptr;
            if (!v86)
            {
LABEL_147:

              v33 = v241;
              goto LABEL_148;
            }

            oSLogObject7 = [NSString stringWithCString:v86 encoding:4];
            free(v86);
            v229 = oSLogObject7;
            SSFileLog();
          }

          goto LABEL_147;
        }

        oSLogObject6 = [NSString stringWithCString:v80 encoding:4];
        free(v80);
        v229 = oSLogObject6;
        SSFileLog();
        v33 = v241;
      }

      goto LABEL_133;
    }

    v51 = [objc_alloc(ISWeakLinkedClassForString()) initWithDictionary:merchantSession2];
    v52 = +[SSLogConfig sharedDaemonConfig];
    v53 = v52;
    if (v51)
    {
      if (!v52)
      {
        v53 = +[SSLogConfig sharedConfig];
      }

      shouldLog9 = [v53 shouldLog];
      if ([v53 shouldLogToDisk])
      {
        LODWORD(v55) = shouldLog9 | 2;
      }

      else
      {
        LODWORD(v55) = shouldLog9;
      }

      oSLogObject8 = [v53 OSLogObject];
      if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v55;
      }

      else
      {
        v55 &= 2u;
      }

      if (v55)
      {
        v57 = objc_opt_class();
        v261 = 138543362;
        v262 = v57;
        LODWORD(v232) = 12;
        v58 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &_mh_execute_header, oSLogObject8, 0, "%{public}@: Attaching merchant session to payment request", &v261, v232);

        v33 = v241;
        if (!v58)
        {
LABEL_80:

          [v4 setMerchantSession:v51];
          [v4 setMerchantCapabilities:13];
          self->_didAttemptDualActionBuy = 1;
          goto LABEL_117;
        }

        oSLogObject8 = [NSString stringWithCString:v58 encoding:4];
        free(v58);
        v229 = oSLogObject8;
        SSFileLog();
      }

      goto LABEL_80;
    }

    if (!v52)
    {
      v53 = +[SSLogConfig sharedConfig];
    }

    shouldLog10 = [v53 shouldLog];
    if ([v53 shouldLogToDisk])
    {
      LODWORD(v71) = shouldLog10 | 2;
    }

    else
    {
      LODWORD(v71) = shouldLog10;
    }

    oSLogObject9 = [v53 OSLogObject];
    if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
    {
      v71 = v71;
    }

    else
    {
      v71 &= 2u;
    }

    if (v71)
    {
      v73 = objc_opt_class();
      v261 = 138543362;
      v262 = v73;
      LODWORD(v232) = 12;
      v74 = _os_log_send_and_compose_impl(v71, 0, 0, 0, &_mh_execute_header, oSLogObject9, 16, "%{public}@: Failed to configure PKPaymentMerchantSession", &v261, v232);

      v33 = v241;
      if (!v74)
      {
LABEL_116:

        goto LABEL_117;
      }

      oSLogObject9 = [NSString stringWithCString:v74 encoding:4];
      free(v74);
      v229 = oSLogObject9;
      SSFileLog();
    }

    goto LABEL_116;
  }

LABEL_151:
  v87 = objc_opt_new();
  salableInfoLabel = [(SSPaymentSheet *)v33 salableInfoLabel];

  selfCopy = self;
  v240 = v87;
  if (!salableInfoLabel)
  {
    goto LABEL_244;
  }

  v89 = objc_alloc_init(v238);
  [(SSPaymentSheet *)v33 salableIconURL];
  v235 = v233 = v89;
  if (v235)
  {
    if ([(SSPaymentSheet *)self->_paymentSheet payeeType]== 3 && ![(SSPaymentSheet *)self->_paymentSheet salableIconType])
    {
      v91 = 1;
    }

    else
    {
      v90 = [(SSPaymentSheet *)self->_paymentSheet salableIconType]- 1;
      if (v90 > 3)
      {
        v91 = 0;
      }

      else
      {
        v91 = qword_1002A8F50[v90];
      }
    }

    paymentSheet3 = [(DisplayPaymentSheetOperation *)self paymentSheet];
    designVersion = [paymentSheet3 designVersion];
    v94 = [(DisplayPaymentSheetOperation *)self _createImageRefWithURL:v235 adornmentStyle:v91 designVersion:designVersion];

    if (v94)
    {
      CFArrayAppendValue(self->_imageArrayRef, v94);
      v95 = self->_imageArrayIndex + 1;
      self->_imageArrayIndex = v95;
      [v89 setImage:{CFArrayGetValueAtIndex(self->_imageArrayRef, v95)}];
      CGImageRelease(v94);
      goto LABEL_174;
    }

    v96 = +[SSLogConfig sharedDaemonConfig];
    if (!v96)
    {
      v96 = +[SSLogConfig sharedConfig];
    }

    shouldLog11 = [v96 shouldLog];
    if ([v96 shouldLogToDisk])
    {
      v98 = shouldLog11 | 2;
    }

    else
    {
      v98 = shouldLog11;
    }

    oSLogObject10 = [v96 OSLogObject];
    if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_ERROR))
    {
      v100 = v98;
    }

    else
    {
      v100 = v98 & 2;
    }

    if (v100)
    {
      v101 = objc_opt_class();
      v261 = 138543618;
      v262 = v101;
      v263 = 2114;
      v264 = v235;
      LODWORD(v232) = 22;
      v102 = _os_log_send_and_compose_impl(v100, 0, 0, 0, &_mh_execute_header, oSLogObject10, 16, "%{public}@: Failed to load salable icon image at URL: %{public}@", &v261, v232);

      if (!v102)
      {
LABEL_173:

        goto LABEL_174;
      }

      oSLogObject10 = [NSString stringWithCString:v102 encoding:4];
      free(v102);
      v229 = oSLogObject10;
      SSFileLog();
    }

    goto LABEL_173;
  }

LABEL_174:
  v234 = v4;
  inlineImages = [(SSPaymentSheet *)v33 inlineImages];
  v104 = [inlineImages count];
  v105 = +[SSLogConfig sharedDaemonConfig];
  v106 = v105;
  if (!v104)
  {
    if (!v105)
    {
      v106 = +[SSLogConfig sharedConfig];
    }

    shouldLog12 = [v106 shouldLog];
    if ([v106 shouldLogToDisk])
    {
      v115 = shouldLog12 | 2;
    }

    else
    {
      v115 = shouldLog12;
    }

    oSLogObject11 = [v106 OSLogObject];
    if (os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_DEFAULT))
    {
      v117 = v115;
    }

    else
    {
      v117 = v115 & 2;
    }

    if (v117)
    {
      v118 = objc_opt_class();
      v261 = 138543362;
      v262 = v118;
      LODWORD(v232) = 12;
      v119 = _os_log_send_and_compose_impl(v117, 0, 0, 0, &_mh_execute_header, oSLogObject11, 0, "%{public}@: No inline images to display", &v261, v232);

      if (!v119)
      {
LABEL_200:

        goto LABEL_201;
      }

      oSLogObject11 = [NSString stringWithCString:v119 encoding:4];
      free(v119);
      v230 = oSLogObject11;
      SSFileLog();
    }

    goto LABEL_200;
  }

  if (!v105)
  {
    v106 = +[SSLogConfig sharedConfig];
  }

  shouldLog13 = [v106 shouldLog];
  if ([v106 shouldLogToDisk])
  {
    v108 = shouldLog13 | 2;
  }

  else
  {
    v108 = shouldLog13;
  }

  oSLogObject12 = [v106 OSLogObject];
  if (os_log_type_enabled(oSLogObject12, OS_LOG_TYPE_DEFAULT))
  {
    v110 = v108;
  }

  else
  {
    v110 = v108 & 2;
  }

  if (!v110)
  {
    goto LABEL_186;
  }

  v111 = objc_opt_class();
  v112 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [inlineImages count]);
  v261 = 138543618;
  v262 = v111;
  v263 = 2114;
  v264 = v112;
  LODWORD(v232) = 22;
  v113 = _os_log_send_and_compose_impl(v110, 0, 0, 0, &_mh_execute_header, oSLogObject12, 0, "%{public}@: Found %{public}@ inline images", &v261, v232);

  if (v113)
  {
    oSLogObject12 = [NSString stringWithCString:v113 encoding:4];
    free(v113);
    v230 = oSLogObject12;
    SSFileLog();
LABEL_186:
  }

  v258[0] = _NSConcreteStackBlock;
  v258[1] = 3221225472;
  v258[2] = sub_1000F4C74;
  v258[3] = &unk_100328AF8;
  v258[4] = self;
  [inlineImages enumerateObjectsUsingBlock:v258];
LABEL_201:
  salableInfoLabel2 = [(SSPaymentSheet *)v33 salableInfoLabel];
  if ([inlineImages count])
  {
    v120 = 0;
    while (1)
    {
      if (v120 <= self->_inlineImageArrayIndex)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_inlineImageArrayRef, v120);
        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
        v131 = CGImageDestinationCreateWithData(Mutable, kUTTypePNG, 1uLL, 0);
        CGImageDestinationAddImage(v131, ValueAtIndex, 0);
        if (CGImageDestinationFinalize(v131))
        {
          v132 = [NSNumber numberWithLong:v120];
          v132 = [NSString stringWithFormat:@"%@", v132];

          self = selfCopy;
          if (v120 <= selfCopy->_assetScaleIndex)
          {
            [CFArrayGetValueAtIndex(selfCopy->_assetScaleRef v120)];
          }

          if (v120 <= selfCopy->_tintArrayIndex)
          {
            CFArrayGetValueAtIndex(selfCopy->_tintArrayRef, v120);
          }

          oSLogObject13 = salableInfoLabel2;
          salableInfoLabel2 = SSPaymentSheetImagePlaceholderReplaceTagWithImageDataAndTint();
LABEL_235:

LABEL_236:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v9 = &CFDictionaryGetValue_ptr;
          if (v131)
          {
            CFRelease(v131);
          }

          goto LABEL_240;
        }

        v132 = [v9[412] sharedDaemonConfig];
        if (!v132)
        {
          v132 = +[SSLogConfig sharedConfig];
        }

        shouldLog14 = [v132 shouldLog];
        if ([v132 shouldLogToDisk])
        {
          v135 = shouldLog14 | 2;
        }

        else
        {
          v135 = shouldLog14;
        }

        oSLogObject13 = [v132 OSLogObject];
        if (os_log_type_enabled(oSLogObject13, OS_LOG_TYPE_ERROR))
        {
          v137 = v135;
        }

        else
        {
          v137 = v135 & 2;
        }

        if (v137)
        {
          v138 = objc_opt_class();
          v261 = 138543362;
          v262 = v138;
          LODWORD(v232) = 12;
          v139 = _os_log_send_and_compose_impl(v137, 0, 0, 0, &_mh_execute_header, oSLogObject13, 16, "%{public}@: Failed to finalized inline rating image", &v261, v232);

          if (!v139)
          {
            self = selfCopy;
            goto LABEL_236;
          }

          oSLogObject13 = [NSString stringWithCString:v139 encoding:4];
          free(v139);
          v229 = oSLogObject13;
          SSFileLog();
        }

        self = selfCopy;
        goto LABEL_235;
      }

      sharedDaemonConfig = [v9[412] sharedDaemonConfig];
      if (!sharedDaemonConfig)
      {
        sharedDaemonConfig = [v9[412] sharedConfig];
      }

      shouldLog15 = [sharedDaemonConfig shouldLog];
      if ([sharedDaemonConfig shouldLogToDisk])
      {
        shouldLog15 |= 2u;
      }

      oSLogObject14 = [sharedDaemonConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject14, OS_LOG_TYPE_DEFAULT))
      {
        v124 = shouldLog15;
      }

      else
      {
        v124 = shouldLog15 & 2;
      }

      if (!v124)
      {
        goto LABEL_214;
      }

      v125 = objc_opt_class();
      v126 = [NSNumber numberWithLong:v120];
      v127 = [NSNumber numberWithLong:self->_inlineImageArrayIndex];
      v261 = 138412802;
      v262 = v125;
      v263 = 2112;
      v264 = v126;
      v265 = 2112;
      v266 = v127;
      LODWORD(v232) = 32;
      v128 = _os_log_send_and_compose_impl(v124, 0, 0, 0, &_mh_execute_header, oSLogObject14, 0, "%@: Array out of bounds warning for tag: %@, index: %@", &v261, v232);

      if (v128)
      {
        break;
      }

LABEL_215:

      self = selfCopy;
      v9 = &CFDictionaryGetValue_ptr;
LABEL_240:
      if (++v120 >= [inlineImages count])
      {
        goto LABEL_243;
      }
    }

    oSLogObject14 = [NSString stringWithCString:v128 encoding:4];
    free(v128);
    v229 = oSLogObject14;
    SSFileLog();
LABEL_214:

    goto LABEL_215;
  }

LABEL_243:
  v140 = SSPaymentSheetImagePlaceholderRemoveAllTags();

  v141 = [[NSAttributedString alloc] initWithString:&stru_10033CC30];
  [v233 setTitle:v141];

  [v233 setLabel:v140];
  v87 = v240;
  [v240 addObject:v233];

  v4 = v234;
  v33 = v241;
LABEL_244:
  ratingHeader = [(SSPaymentSheet *)v33 ratingHeader];
  ratingValue = [(SSPaymentSheet *)v33 ratingValue];
  v144 = ratingValue;
  v246 = ratingHeader;
  if (ratingHeader && ratingValue)
  {
    v145 = objc_alloc_init(v238);
    v146 = [[NSAttributedString alloc] initWithString:v246];
    [v145 setTitle:v146];

    v147 = [[NSAttributedString alloc] initWithString:v144];
    [v145 setLabel:v147];

    [v87 addObject:v145];
  }

  flexList = [(SSPaymentSheet *)v33 flexList];
  if (flexList)
  {
    v255[0] = _NSConcreteStackBlock;
    v255[1] = 3221225472;
    v255[2] = sub_1000F5380;
    v255[3] = &unk_100328B20;
    v255[4] = self;
    v257 = v238;
    v256 = v87;
    [(__CFString *)flexList enumerateObjectsUsingBlock:v255];
  }

  allocator = v144;
  attributedList = [(SSPaymentSheet *)v33 attributedList];
  type = flexList;
  v242 = attributedList;
  if (attributedList)
  {
    v150 = attributedList;
    v252[0] = _NSConcreteStackBlock;
    v252[1] = 3221225472;
    v252[2] = sub_1000F5790;
    v252[3] = &unk_100328B98;
    v254 = v237;
    sharedDaemonConfig2 = objc_alloc_init(NSMutableArray);
    v253 = sharedDaemonConfig2;
    [v150 enumerateObjectsUsingBlock:v252];
    paymentSheet4 = [(DisplayPaymentSheetOperation *)selfCopy paymentSheet];
    paymentSummary = [paymentSheet4 paymentSummary];

    paymentSheet5 = [(DisplayPaymentSheetOperation *)selfCopy paymentSheet];
    v155 = paymentSheet5;
    if (paymentSummary)
    {
      paymentSummary2 = [paymentSheet5 paymentSummary];
    }

    else
    {
      storeName = [paymentSheet5 storeName];

      if (storeName)
      {
        v155 = [NSBundle bundleForClass:objc_opt_class()];
        v165 = [v155 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
        v166 = objc_opt_self();
        paymentSheet6 = [v166 paymentSheet];
        storeName2 = [paymentSheet6 storeName];
        v168 = [NSString stringWithFormat:@"%@ %@", v165, storeName2];

        v33 = v241;
        goto LABEL_267;
      }

      v155 = [NSBundle bundleForClass:objc_opt_class()];
      paymentSummary2 = [v155 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
    }

    v168 = paymentSummary2;
LABEL_267:

    paymentSheet7 = [(DisplayPaymentSheetOperation *)selfCopy paymentSheet];
    price = [paymentSheet7 price];
    v171 = price;
    if (price)
    {
      v172 = price;
    }

    else
    {
      v172 = &off_10034BDF0;
    }

    v173 = v172;

    objc_msgSend_decimalValue(v173);
    v174 = [NSDecimalNumber decimalNumberWithDecimal:&v261];
    v175 = [v237 summaryItemWithLabel:v168 amount:v174];

    [sharedDaemonConfig2 addObject:v175];
    v163 = [sharedDaemonConfig2 copy];

    oSLogObject15 = v253;
    v87 = v240;
    goto LABEL_271;
  }

  sharedDaemonConfig2 = [v9[412] sharedDaemonConfig];
  if (!sharedDaemonConfig2)
  {
    sharedDaemonConfig2 = [v9[412] sharedConfig];
  }

  shouldLog16 = [sharedDaemonConfig2 shouldLog];
  if ([sharedDaemonConfig2 shouldLogToDisk])
  {
    v159 = shouldLog16 | 2;
  }

  else
  {
    v159 = shouldLog16;
  }

  oSLogObject15 = [sharedDaemonConfig2 OSLogObject];
  if (os_log_type_enabled(oSLogObject15, OS_LOG_TYPE_DEFAULT))
  {
    v161 = v159;
  }

  else
  {
    v161 = v159 & 2;
  }

  if (v161)
  {
    v162 = objc_opt_class();
    v261 = 138543362;
    v262 = v162;
    LODWORD(v232) = 12;
    v163 = _os_log_send_and_compose_impl(v161, 0, 0, 0, &_mh_execute_header, oSLogObject15, 0, "%{public}@: Skipping attributedList for no items", &v261, v232);

    if (!v163)
    {
      goto LABEL_272;
    }

    oSLogObject15 = [NSString stringWithCString:v163 encoding:4];
    free(v163);
    v231 = oSLogObject15;
    SSFileLog();
  }

  v163 = 0;
LABEL_271:

LABEL_272:
  paymentSheet8 = [(DisplayPaymentSheetOperation *)selfCopy paymentSheet];
  designVersion2 = [paymentSheet8 designVersion];
  v178 = AMSPaymentSheetDesignVersion_2_0;
  v179 = [designVersion2 isEqualToNumber:AMSPaymentSheetDesignVersion_2_0];

  if (v179)
  {
    goto LABEL_292;
  }

  accountHeader = [(SSPaymentSheet *)v33 accountHeader];
  if (accountHeader)
  {
    v181 = v163;
    accountName = [(DisplayPaymentSheetOperation *)selfCopy accountName];
    v183 = [SSPaymentSheet stringWithFormattedUsernameForString:SSPaymentSheetAppleIDUppercaseReplacementPattern username:accountName];
    if (v183)
    {
      sharedDaemonConfig3 = objc_alloc_init(v238);
      v185 = [[NSAttributedString alloc] initWithString:accountHeader];
      [sharedDaemonConfig3 setTitle:v185];

      v186 = [[NSAttributedString alloc] initWithString:v183];
      [sharedDaemonConfig3 setLabel:v186];

      [v240 addObject:sharedDaemonConfig3];
LABEL_290:
      v163 = v181;

      v9 = &CFDictionaryGetValue_ptr;
      v87 = v240;
      goto LABEL_291;
    }

    v187 = v4;
    sharedDaemonConfig3 = [v9[412] sharedDaemonConfig];
    if (!sharedDaemonConfig3)
    {
      sharedDaemonConfig3 = +[SSLogConfig sharedConfig];
    }

    shouldLog17 = [sharedDaemonConfig3 shouldLog];
    if ([sharedDaemonConfig3 shouldLogToDisk])
    {
      shouldLog17 |= 2u;
    }

    oSLogObject16 = [sharedDaemonConfig3 OSLogObject];
    if (os_log_type_enabled(oSLogObject16, OS_LOG_TYPE_ERROR))
    {
      v190 = shouldLog17;
    }

    else
    {
      v190 = shouldLog17 & 2;
    }

    if (v190)
    {
      v191 = objc_opt_class();
      v261 = 138543362;
      v262 = v191;
      LODWORD(v232) = 12;
      v192 = _os_log_send_and_compose_impl(v190, 0, 0, 0, &_mh_execute_header, oSLogObject16, 16, "%{public}@: Failed to obtain or format account name", &v261, v232);

      if (!v192)
      {
        v4 = v187;
        goto LABEL_289;
      }

      oSLogObject16 = [NSString stringWithCString:v192 encoding:4];
      free(v192);
      v231 = oSLogObject16;
      SSFileLog();
    }

    v4 = v187;

LABEL_289:
    v33 = v241;
    goto LABEL_290;
  }

LABEL_291:

LABEL_292:
  [v4 setPaymentContentItems:{v87, v231}];
  v236 = v163;
  if ([v163 count])
  {
    [v4 setPaymentSummaryItems:v163];
    [v4 setPaymentSummaryPinned:1];
    [v4 setSuppressTotal:1];
  }

  else
  {
    paymentSummary3 = [(SSPaymentSheet *)v33 paymentSummary];
    storeName3 = [(SSPaymentSheet *)v33 storeName];
    v239 = storeName3;
    v195 = v4;
    if (paymentSummary3)
    {
      v197 = paymentSummary3;
    }

    else
    {
      v197 = storeName3;
      if (storeName3)
      {
        v198 = [NSBundle bundleForClass:objc_opt_class()];
        v199 = [v198 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
        v197 = [NSString stringWithFormat:@"%@ %@", v199, v197];

        v33 = v241;
      }

      else
      {
        v200 = [NSBundle bundleForClass:objc_opt_class()];
        v197 = [v200 localizedStringForKey:@"CONFIRMATION_TITLE_PAY" value:&stru_10033CC30 table:@"Mesa"];
      }
    }

    price2 = [(SSPaymentSheet *)v33 price];
    v202 = price2;
    v203 = &off_10034BDF0;
    if (price2)
    {
      v203 = price2;
    }

    v204 = v203;

    objc_msgSend_decimalValue(v204);
    v205 = [NSDecimalNumber decimalNumberWithDecimal:&v261];
    [v237 summaryItemWithLabel:v197 amount:v205];
    v207 = v206 = v33;

    v208 = objc_alloc_init(NSMutableArray);
    priceSectionItems = [(SSPaymentSheet *)v206 priceSectionItems];
    v249[0] = _NSConcreteStackBlock;
    v249[1] = 3221225472;
    v249[2] = sub_1000F5C2C;
    v249[3] = &unk_100328BC0;
    v251 = v237;
    v210 = v208;
    v250 = v210;
    [priceSectionItems enumerateObjectsUsingBlock:v249];
    if (paymentSummary3 && priceSectionItems)
    {
      [v195 setLocalizedSummaryItemsTitle:paymentSummary3];
    }

    [v210 addObject:v207];
    [v195 setPaymentSummaryItems:v210];
    price3 = [(SSPaymentSheet *)v241 price];
    if (!price3 || (v212 = price3, v213 = [(SSPaymentSheet *)v241 shouldSuppressPrice], v212, v213))
    {
      [v195 setSuppressTotal:1];
    }

    v4 = v195;
    v9 = &CFDictionaryGetValue_ptr;
    v87 = v240;
    v33 = v241;
  }

  confirmationTitleType = [(SSPaymentSheet *)v33 confirmationTitleType];
  if (confirmationTitleType <= 5)
  {
    [v4 setConfirmationStyle:confirmationTitleType];
  }

  designVersion3 = [(SSPaymentSheet *)v33 designVersion];
  v216 = [designVersion3 isEqualToNumber:v178];

  v217 = allocator;
  if (v216)
  {
    [v4 setClientViewSourceIdentifier:@"AMSUIPaymentSheetViewProvider"];
    v248 = 0;
    v218 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v248];
    v219 = v248;
    if (v219)
    {
      sharedDaemonConfig4 = [v9[412] sharedDaemonConfig];
      if (!sharedDaemonConfig4)
      {
        sharedDaemonConfig4 = [v9[412] sharedConfig];
      }

      shouldLog18 = [sharedDaemonConfig4 shouldLog];
      if ([sharedDaemonConfig4 shouldLogToDisk])
      {
        shouldLog18 |= 2u;
      }

      oSLogObject17 = [sharedDaemonConfig4 OSLogObject];
      if (os_log_type_enabled(oSLogObject17, OS_LOG_TYPE_ERROR))
      {
        v223 = shouldLog18;
      }

      else
      {
        v223 = shouldLog18 & 2;
      }

      if (v223)
      {
        v224 = objc_opt_class();
        v261 = 138543618;
        v262 = v224;
        v263 = 2114;
        v264 = v219;
        LODWORD(v232) = 22;
        v225 = _os_log_send_and_compose_impl(v223, 0, 0, 0, &_mh_execute_header, oSLogObject17, 16, "%{public}@: Failed to serialize payment request: %{public}@", &v261, v232);

        if (!v225)
        {
          v87 = v240;
          v33 = v241;
          goto LABEL_326;
        }

        oSLogObject17 = [NSString stringWithCString:v225 encoding:4];
        free(v225);
        SSFileLog();
      }

      v33 = v241;

      v87 = v240;
    }

    else
    {
      if (!v218)
      {
LABEL_327:

        goto LABEL_328;
      }

      v259 = @"AMSPaymentSheetPaymentRequest";
      v260 = v218;
      sharedDaemonConfig4 = [NSDictionary dictionaryWithObjects:&v260 forKeys:&v259 count:1];
      [v4 setClientViewSourceParameter:sharedDaemonConfig4];
    }

LABEL_326:

    v217 = allocator;
    goto LABEL_327;
  }

LABEL_328:
  v226 = v4;

  return v4;
}

- (unint64_t)_paymentRequestorTypeForPayeeType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1002A8F70[type - 1];
  }
}

- (int64_t)_paymentSheetStyle
{
  localAuthContext = [(DisplayPaymentSheetOperation *)self localAuthContext];
  if (localAuthContext)
  {
    v4 = localAuthContext;
    authenticationContext = [(DisplayPaymentSheetOperation *)self authenticationContext];

    if (authenticationContext)
    {
      return 1;
    }
  }

  authenticationContext2 = [(DisplayPaymentSheetOperation *)self authenticationContext];

  if (authenticationContext2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (BOOL)_presentPaymentSheetWithPaymentRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (v9)
  {
    LODWORD(location[0]) = 138543362;
    *(location + 4) = objc_opt_class();
    v11 = *(location + 4);
    v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Attempting to create authorization controller", location, 12);

    if (v12)
    {
      v13 = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      v34 = v13;
      SSFileLog();
    }
  }

  else
  {
  }

  v14 = [objc_alloc(ISWeakLinkedClassForString()) initWithPaymentRequest:requestCopy];
  controller = self->_controller;
  self->_controller = v14;

  if (self->_controller)
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog2;
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v20;
      v21 = v20;
      LODWORD(v35) = 12;
      v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Attempting to present payment sheet", location, v35);

      if (!v22)
      {
LABEL_26:

        [(PKPaymentAuthorizationController *)self->_controller setDelegate:self];
        [(PKPaymentAuthorizationController *)self->_controller setPrivateDelegate:self];
        objc_initWeak(location, self);
        v23 = self->_controller;
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000F62A4;
        v36[3] = &unk_100328BE8;
        objc_copyWeak(&v37, location);
        v36[4] = self;
        [(PKPaymentAuthorizationController *)v23 presentWithCompletion:v36];
        objc_destroyWeak(&v37);
        objc_destroyWeak(location);
        v24 = 0;
        goto LABEL_40;
      }

      oSLogObject2 = [NSString stringWithCString:v22 encoding:4];
      free(v22);
      SSFileLog();
    }

    goto LABEL_26;
  }

  v24 = ISError();
  v25 = +[SSLogConfig sharedDaemonConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    LODWORD(v27) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v27) = shouldLog3;
  }

  oSLogObject3 = [v25 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v27 = v27;
  }

  else
  {
    v27 &= 2u;
  }

  if (!v27)
  {
    goto LABEL_38;
  }

  v29 = objc_opt_class();
  LODWORD(location[0]) = 138543362;
  *(location + 4) = v29;
  v30 = v29;
  LODWORD(v35) = 12;
  v31 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: Failed to create authorization controller", location, v35);

  if (v31)
  {
    oSLogObject3 = [NSString stringWithCString:v31 encoding:4];
    free(v31);
    SSFileLog();
LABEL_38:
  }

LABEL_40:
  if (error)
  {
    v32 = v24;
    *error = v24;
  }

  return v24 == 0;
}

- (float)_challengeSigningDelay
{
  v3 = +[ISDevice sharedInstance];
  deviceBiometricStyle = [v3 deviceBiometricStyle];

  if (!self->_touchIDDelayEnabled || deviceBiometricStyle != 2)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      *v32 = 138543362;
      *&v32[4] = objc_opt_class();
      v10 = *&v32[4];
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Challenge singing delay disabled", v32, 12, *v32, *&v32[8]);
      goto LABEL_15;
    }

LABEL_47:

    v13 = 0.0;
    goto LABEL_48;
  }

  urlBag = self->_urlBag;
  if (urlBag || ([(DisplayPaymentSheetOperation *)self _loadURLBag], (urlBag = self->_urlBag) != 0))
  {
    v6 = [(ISURLBag *)urlBag valueForKey:@"touchIDChallengeSigningDelay"];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      oSLogObject = +[SSLogConfig sharedDaemonConfig];
      if (!oSLogObject)
      {
        oSLogObject = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [oSLogObject shouldLog];
      if ([oSLogObject shouldLogToDisk])
      {
        LODWORD(v25) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v25) = shouldLog2;
      }

      v9OSLogObject = [oSLogObject OSLogObject];
      if (os_log_type_enabled(v9OSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v25;
      }

      else
      {
        v25 &= 2u;
      }

      if (v25)
      {
        *v32 = 138543362;
        *&v32[4] = objc_opt_class();
        v27 = *&v32[4];
        v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, v9OSLogObject, 0, "%{public}@: No bag key found for challenge signing delay", v32, 12);

        if (!v28)
        {
          goto LABEL_47;
        }

        v9OSLogObject = [NSString stringWithCString:v28 encoding:4];
        free(v28);
        SSFileLog();
      }

      goto LABEL_47;
    }

    [v6 floatValue];
    v13 = 0.0;
    if (v16 <= 0.0)
    {
      goto LABEL_48;
    }

    v17 = v16;
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v20) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v20) = shouldLog3;
    }

    oSLogObject2 = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      *v32 = 138543618;
      *&v32[4] = objc_opt_class();
      *&v32[12] = 2114;
      *&v32[14] = v6;
      v22 = *&v32[4];
      v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Challenge signing delay value found: %{public}@", v32, 22);

      if (!v23)
      {
LABEL_34:

        v13 = v17;
        goto LABEL_48;
      }

      oSLogObject2 = [NSString stringWithCString:v23 encoding:4];
      free(v23);
      SSFileLog();
    }

    goto LABEL_34;
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v31) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v31) = shouldLog4;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v31 = v31;
  }

  else
  {
    v31 &= 2u;
  }

  if (!v31)
  {
    goto LABEL_47;
  }

  *v32 = 138543362;
  *&v32[4] = objc_opt_class();
  v10 = *&v32[4];
  v11 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Bag failed to load for challenge signing delay", v32, 12, *v32, *&v32[8]);
LABEL_15:
  v12 = v11;

  v13 = 0.0;
  if (v12)
  {
    v14 = [NSString stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
  }

LABEL_48:

  return v13;
}

- (id)_metricsDialogEvent
{
  v3 = objc_alloc_init(NSMutableDictionary);
  _paymentSheetStyle = [(DisplayPaymentSheetOperation *)self _paymentSheetStyle];
  if (_paymentSheetStyle == 3)
  {
    v5 = SSAuthorizationMetricsKeyEventType;
    v6 = &off_10034BE68;
  }

  else
  {
    if (_paymentSheetStyle != 2)
    {
      if (_paymentSheetStyle == 1)
      {
        [v3 setObject:&off_10034BE08 forKeyedSubscript:SSAuthorizationMetricsKeyEventType];
        if (self->_didAuthorizePayment)
        {
          [v3 setObject:&off_10034BE38 forKeyedSubscript:SSAuthorizationMetricsKeyBiometricMatchState];
        }

        else
        {
          [v3 setObject:&off_10034BE20 forKeyedSubscript:SSAuthorizationMetricsKeyBiometricMatchState];
          if (self->_didCancelHomeButton)
          {
            v9 = 32;
          }

          else
          {
            v9 = 8;
          }

          v10 = [SSAuthorizationMetricsController userActionDictionaryForBiometricMatchState:v9 didBiometricsLockout:self->_didBiometricsLockout];
          if (v10)
          {
            [(NSMutableArray *)self->_userActions addObject:v10];
          }
        }

        if (self->_didAttemptDualActionBuy)
        {
          if (self->_paymentTokenData)
          {
            v11 = &SSMetricsDialogEventResultSuccess;
          }

          else
          {
            v11 = &SSMetricsDialogEventResultFailure;
          }

          [v3 setObject:*v11 forKeyedSubscript:SSAuthorizationMetricsKeyDualAction];
        }
      }

      goto LABEL_26;
    }

    v5 = SSAuthorizationMetricsKeyEventType;
    v6 = &off_10034BE50;
  }

  [v3 setObject:v6 forKeyedSubscript:v5];
  if (!self->_didAuthorizePayment)
  {
    if (self->_didCancelHomeButton)
    {
      v7 = 9;
    }

    else
    {
      v7 = 4;
    }

    v8 = [SSAuthorizationMetricsController userActionDictionaryForUserAction:v7 didBiometricsLockout:self->_didBiometricsLockout];
    if (v8)
    {
      [(NSMutableArray *)self->_userActions addObject:v8];
    }
  }

LABEL_26:
  paymentSheet = [(DisplayPaymentSheetOperation *)self paymentSheet];
  buyParams = [paymentSheet buyParams];

  if (buyParams)
  {
    [v3 setObject:buyParams forKeyedSubscript:SSAuthorizationMetricsKeyBuyParams];
  }

  dialogId = [(DisplayPaymentSheetOperation *)self dialogId];
  if (dialogId)
  {
    [v3 setObject:dialogId forKeyedSubscript:SSAuthorizationMetricsKeyDialogID];
  }

  userAgent = [(DisplayPaymentSheetOperation *)self userAgent];
  if (userAgent)
  {
    [v3 setObject:userAgent forKeyedSubscript:SSAuthorizationMetricsKeyUserAgent];
  }

  v16 = [SSAuthorizationMetricsController authorizationDialogEventForParameters:v3];
  [v16 setUserActions:self->_userActions];

  return v16;
}

- (void)_postMetricsWithDialogEvent:(id)event
{
  eventCopy = event;
  urlBag = self->_urlBag;
  if (urlBag || ([(DisplayPaymentSheetOperation *)self _loadURLBag], (urlBag = self->_urlBag) != 0))
  {
    v6 = [(ISURLBag *)urlBag valueForKey:SSMetricsURLBagKey];
    if ([v6 count])
    {
      objc_initWeak(location, self);
      v7 = [[SSMetricsConfiguration alloc] initWithGlobalConfiguration:v6];
      v8 = objc_alloc_init(SSMetricsController);
      [v8 setGlobalConfiguration:v7];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000F72C0;
      v24[3] = &unk_100328C10;
      objc_copyWeak(&v25, location);
      [v8 insertEvent:eventCopy withCompletionHandler:v24];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000F7470;
      v22[3] = &unk_100328C10;
      objc_copyWeak(&v23, location);
      [v8 flushUnreportedEventsWithCompletionHandler:v22];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&v25);

      objc_destroyWeak(location);
    }

    else
    {
      v9 = +[SSLogConfig sharedDaemonConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        LODWORD(v11) = shouldLog | 2;
      }

      else
      {
        LODWORD(v11) = shouldLog;
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v11 = v11;
      }

      else
      {
        v11 &= 2u;
      }

      if (v11)
      {
        LODWORD(location[0]) = 138543362;
        *(location + 4) = objc_opt_class();
        v13 = *(location + 4);
        v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Metrics failed with no bag key", location, 12);

        if (v14)
        {
          v15 = [NSString stringWithCString:v14 encoding:4];
          free(v14);
          SSFileLog();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog2;
    }

    oSLogObject2 = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = objc_opt_class();
      v19 = *(location + 4);
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: Metrics failed with no bag", location, 12);

      if (v20)
      {
        v21 = [NSString stringWithCString:v20 encoding:4];
        free(v20);
        SSFileLog();
      }
    }

    else
    {
    }
  }
}

- (CGImage)_createDefaultImageWithImageRef:(CGImage *)ref size:(CGSize)size borderPath:(CGPath *)path
{
  height = size.height;
  width = size.width;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v10 = CGBitmapContextCreate(0, width, height, 8uLL, vcvtd_n_u64_f64(width, 2uLL), DeviceRGB, 2u);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = width;
  v15.size.height = height;
  CGContextDrawImage(v10, v15, ref);
  v14[0] = xmmword_1002A8F10;
  v14[1] = unk_1002A8F20;
  v11 = CGColorCreate(DeviceRGB, v14);
  CGContextSetStrokeColorWithColor(v10, v11);
  CGContextSetLineWidth(v10, 1.0);
  CGContextAddPath(v10, path);
  CGContextDrawPath(v10, kCGPathStroke);
  Image = CGBitmapContextCreateImage(v10);
  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(v11);
  CGContextRelease(v10);
  return Image;
}

- (CGPath)_createBorderPathForAdornmentStyle:(int64_t)style iconWidth:(double)width iconHeight:(double)height designVersion:(id)version
{
  versionCopy = version;
  v10 = versionCopy;
  if (style == 4)
  {
    v23.size.width = width + -1.0;
    v23.size.height = height + -1.0;
    v23.origin.x = 0.5;
    v23.origin.y = 0.5;
    v21 = CGPathCreateWithRoundedRect(v23, (width + -1.0) * 0.5, (height + -1.0) * 0.5, 0);
    MutableCopy = CGPathCreateMutableCopy(v21);
    CGPathRelease(v21);
  }

  else if (style == 1)
  {
    v13 = [versionCopy isEqualToNumber:AMSPaymentSheetDesignVersion_2_0];
    v14 = 0.236842111;
    if (v13)
    {
      v14 = 0.185185185;
    }

    v15 = v14 * width;
    MutableCopy = CGPathCreateMutable();
    v16 = v15 + 0.0 + 0.5;
    CGPathMoveToPoint(MutableCopy, 0, 0.5, v16);
    v17 = height - v15 + -0.5;
    CGPathAddLineToPoint(MutableCopy, 0, 0.5, v17);
    v18 = height + -0.5;
    CGPathAddQuadCurveToPoint(MutableCopy, 0, 0.5, v18, v16, v18);
    v19 = width - v15 + -0.5;
    CGPathAddLineToPoint(MutableCopy, 0, v19, v18);
    v20 = width + -0.5;
    CGPathAddQuadCurveToPoint(MutableCopy, 0, v20, v18, v20, v17);
    CGPathAddLineToPoint(MutableCopy, 0, v20, v16);
    CGPathAddQuadCurveToPoint(MutableCopy, 0, v20, 0.5, v19, 0.5);
    CGPathAddLineToPoint(MutableCopy, 0, v16, 0.5);
    CGPathAddQuadCurveToPoint(MutableCopy, 0, 0.5, 0.5, 0.5, v16);
  }

  else if (style)
  {
    MutableCopy = 0;
  }

  else
  {
    MutableCopy = CGPathCreateMutable();
    CGPathMoveToPoint(MutableCopy, 0, 0.5, 0.5);
    CGPathAddLineToPoint(MutableCopy, 0, 0.5, height + -0.5);
    v12 = width + -0.5;
    CGPathAddLineToPoint(MutableCopy, 0, v12, height + -0.5);
    CGPathAddLineToPoint(MutableCopy, 0, v12, 0.5);
    CGPathAddLineToPoint(MutableCopy, 0, 0.5, 0.5);
  }

  return MutableCopy;
}

- (CGImage)_createImageMaskRefWithSize:(CGSize)size andPath:(CGPath *)path
{
  height = size.height;
  width = size.width;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v8 = CGBitmapContextCreate(0, width, height, 8uLL, 0, DeviceGray, 7u);
  v19 = xmmword_1002A8F00;
  v9 = CGColorCreate(DeviceGray, &v19);
  CGContextSetFillColorWithColor(v8, v9);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = width;
  v20.size.height = height;
  CGContextFillRect(v8, v20);
  CGContextBeginPath(v8);
  CGContextAddPath(v8, path);
  CGContextClip(v8);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = width;
  v21.size.height = height;
  CGContextClearRect(v8, v21);
  Image = CGBitmapContextCreateImage(v8);
  v11 = CGImageGetWidth(Image);
  v12 = CGImageGetHeight(Image);
  BitsPerComponent = CGImageGetBitsPerComponent(Image);
  BitsPerPixel = CGImageGetBitsPerPixel(Image);
  BytesPerRow = CGImageGetBytesPerRow(Image);
  DataProvider = CGImageGetDataProvider(Image);
  v17 = CGImageMaskCreate(v11, v12, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, 0, 0);
  CGImageRelease(Image);
  CGColorRelease(v9);
  CGContextRelease(v8);
  CGColorSpaceRelease(DeviceGray);
  return v17;
}

- (CGImage)_createImageRefWithURL:(id)l adornmentStyle:(int64_t)style designVersion:(id)version
{
  lCopy = l;
  versionCopy = version;
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v12) = shouldLog | 2;
  }

  else
  {
    LODWORD(v12) = shouldLog;
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v78 = 138543618;
  v79 = objc_opt_class();
  v80 = 2114;
  v81 = lCopy;
  v14 = v79;
  v15 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Begin loading image resource at: %{public}@", &v78, 22);

  if (v15)
  {
    oSLogObject = [NSString stringWithCString:v15 encoding:4];
    free(v15);
    v71 = oSLogObject;
    SSFileLog();
LABEL_12:
  }

  v16 = objc_alloc_init(SSMutableURLRequestProperties);
  [v16 setHTTPMethod:@"GET"];
  [v16 setITunesStoreRequest:1];
  [v16 setURL:lCopy];
  v17 = objc_alloc_init(ISStoreURLOperation);
  v18 = +[ISDataProvider provider];
  [v17 setDataProvider:v18];

  [v17 setNeedsAuthentication:0];
  [v17 setNeedsURLBag:0];
  [v17 setRequestProperties:v16];
  v77 = 0;
  [(DisplayPaymentSheetOperation *)self runSubOperation:v17 returningError:&v77];
  v19 = v77;
  if (!v19 && ([v17 success] & 1) != 0)
  {
    v76 = versionCopy;
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = shouldLog2 | 2;
    }

    else
    {
      v22 = shouldLog2;
    }

    oSLogObject2 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 2;
    }

    if (v24)
    {
      v25 = objc_opt_class();
      v78 = 138543618;
      v79 = v25;
      v80 = 2114;
      v81 = lCopy;
      v26 = v25;
      LODWORD(v73) = 22;
      v27 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Finished loading image resource at: %{public}@", &v78, v73);

      if (!v27)
      {
        goto LABEL_27;
      }

      oSLogObject2 = [NSString stringWithCString:v27 encoding:4];
      free(v27);
      v72 = oSLogObject2;
      SSFileLog();
    }

LABEL_27:
    dataProvider = [v17 dataProvider];
    output = [dataProvider output];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = 0;
      goto LABEL_44;
    }

    v30 = CGDataProviderCreateWithCFData(output);
    v31 = [(DisplayPaymentSheetOperation *)self _imageTypeForURL:lCopy];
    if (v31 >= 2)
    {
      if (v31 != 2)
      {
        v42 = 0;
        if (!v30)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      v32 = CGImageCreateWithJPEGDataProvider(v30, 0, 1, kCGRenderingIntentDefault);
    }

    else
    {
      v32 = CGImageCreateWithPNGDataProvider(v30, 0, 1, kCGRenderingIntentDefault);
    }

    v42 = v32;
    if (!v30)
    {
LABEL_49:
      v43 = CGImageGetWidth(v42);
      Height = CGImageGetHeight(v42);
      v45 = v43;
      v46 = Height;
      if (style <= 1)
      {
        if (!style)
        {
          [(DisplayPaymentSheetOperation *)self paymentSheet];
          v68 = v67 = v42;
          designVersion = [v68 designVersion];
          v47 = [(DisplayPaymentSheetOperation *)self _createBorderPathForAdornmentStyle:0 iconWidth:designVersion iconHeight:v45 designVersion:v46];

          v42 = v67;
          v66 = [(DisplayPaymentSheetOperation *)self _createDefaultImageWithImageRef:v67 size:v47 borderPath:v45, v46];
LABEL_74:
          v41 = v66;
          if (v47)
          {
            CGPathRelease(v47);
          }

LABEL_76:
          versionCopy = v76;
          if (v41)
          {
            if (v42)
            {
              CGImageRelease(v42);
            }
          }

          else
          {
            v41 = v42;
          }

          goto LABEL_80;
        }

        if (style == 1)
        {
          v52 = [v76 isEqualToNumber:AMSPaymentSheetDesignVersion_2_0];
          v53 = 0.236842111;
          if (v52)
          {
            v53 = 0.185185185;
          }

          v54 = v53 * v45;
          v55 = v53 * v46;
          v85.origin.x = 0.0;
          v85.origin.y = 0.0;
          v85.size.width = v43;
          v85.size.height = v46;
          v47 = CGPathCreateWithRoundedRect(v85, v54, v55, 0);
          selfCopy3 = self;
          v49 = v42;
          v50 = v47;
          v51 = 1;
          goto LABEL_72;
        }
      }

      else
      {
        switch(style)
        {
          case 2:
            v56 = Height;
            width = v43;
            Mutable = CGPathCreateMutable();
            CGPathMoveToPoint(Mutable, 0, 0.0, v45 * 0.032);
            CGPathAddLineToPoint(Mutable, 0, 0.0, v46 - v45 * 0.032);
            CGPathAddArcToPoint(Mutable, 0, 0.0, v46, v45 * 0.032, v46, v45 * 0.032);
            CGPathAddLineToPoint(Mutable, 0, v45 - v45 * 0.473684222, v46);
            CGPathAddArcToPoint(Mutable, 0, v43, v46, v43, v46 - v45 * 0.473684222, v45 * 0.473684222);
            CGPathAddLineToPoint(Mutable, 0, v43, v45 * 0.032);
            CGPathAddArcToPoint(Mutable, 0, v43, 0.0, v45 - v45 * 0.032, 0.0, v45 * 0.032);
            CGPathAddLineToPoint(Mutable, 0, v45 * 0.032, 0.0);
            CGPathAddArcToPoint(Mutable, 0, 0.0, 0.0, 0.0, v45 * 0.032, v45 * 0.032);
            Copy = CGPathCreateCopy(Mutable);
            image = [(DisplayPaymentSheetOperation *)self _createMaskedImageRefForImageRef:v42 withPathRef:Copy andAdornmentStyle:2];
            if (Mutable)
            {
              CGPathRelease(Mutable);
            }

            if (Copy)
            {
              CGPathRelease(Copy);
            }

            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            v60 = CGBitmapContextCreate(0, width, v56, 8uLL, 4 * width, DeviceRGB, 2u);
            CGContextSetRGBFillColor(v60, 0.0, 0.0, 0.0, 0.0);
            v86.origin.x = 0.0;
            v86.origin.y = 0.0;
            v86.size.width = v45;
            v86.size.height = v46;
            CGContextFillRect(v60, v86);
            CGContextSetRGBFillColor(v60, 0.827000022, 0.827000022, 0.827000022, 1.0);
            v87.origin.x = 0.0;
            v87.origin.y = 0.0;
            v87.size.width = v45;
            v87.size.height = v46;
            v61 = CGPathCreateWithRoundedRect(v87, v45 * 0.0579999983, v46 * 0.0579999983, 0);
            CGContextBeginPath(v60);
            CGContextAddPath(v60, v61);
            CGContextFillPath(v60);
            if (DeviceRGB)
            {
              CGColorSpaceRelease(DeviceRGB);
            }

            if (v61)
            {
              CGPathRelease(v61);
            }

            v88.size.width = v45 + v45 * 0.0813999996 * -2.0;
            v88.size.height = v46 + v46 * 0.0813999996 * -2.0;
            v88.origin.x = v45 * 0.0813999996;
            v88.origin.y = v46 * 0.0813999996;
            CGContextDrawImage(v60, v88, image);
            CGImageRelease(image);
            v62 = v45 * 0.0813999996 * 0.550000012;
            v63 = v46 * 0.0813999996 * 0.550000012;
            v64 = v45 - v45 * 0.0813999996 - v62;
            v65 = v46 - v46 * 0.0813999996 - v63;
            CGContextSetRGBStrokeColor(v60, 0.707, 0.707, 0.707, 1.0);
            CGContextSetLineWidth(v60, (width * 0.020833));
            CGContextMoveToPoint(v60, v64, v63 + v65);
            CGContextAddLineToPoint(v60, v64, v65 - v63);
            CGContextStrokePath(v60);
            CGContextMoveToPoint(v60, v64 - v62, v65);
            CGContextAddLineToPoint(v60, v62 + v64, v65);
            CGContextStrokePath(v60);
            v41 = CGBitmapContextCreateImage(v60);
            if (v60)
            {
              CGContextRelease(v60);
            }

            goto LABEL_76;
          case 3:
            v89.origin.y = v46 * 0.125;
            v89.size.height = v46 * 0.75;
            v89.origin.x = 0.0;
            v89.size.width = v43;
            v47 = CGPathCreateWithRoundedRect(v89, v46 * 0.375, v46 * 0.375, 0);
            selfCopy3 = self;
            v49 = v42;
            v50 = v47;
            v51 = 3;
            goto LABEL_72;
          case 4:
            v84.origin.x = 0.0;
            v84.origin.y = 0.0;
            v84.size.width = v43;
            v84.size.height = Height;
            v47 = CGPathCreateWithRoundedRect(v84, v45 * 0.5, v46 * 0.5, 0);
            selfCopy3 = self;
            v49 = v42;
            v50 = v47;
            v51 = 4;
LABEL_72:
            v66 = [(DisplayPaymentSheetOperation *)selfCopy3 _createMaskedImageRefForImageRef:v49 withPathRef:v50 andAdornmentStyle:v51, v72];
            goto LABEL_74;
        }
      }

      v41 = v42;
LABEL_44:
      versionCopy = v76;
      goto LABEL_80;
    }

LABEL_48:
    CFRelease(v30);
    goto LABEL_49;
  }

  output = +[SSLogConfig sharedDaemonConfig];
  if (!output)
  {
    output = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [(__CFData *)output shouldLog];
  if ([(__CFData *)output shouldLogToDisk])
  {
    v34 = shouldLog3 | 2;
  }

  else
  {
    v34 = shouldLog3;
  }

  oSLogObject3 = [(__CFData *)output OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 & 2;
  }

  if (v36)
  {
    v37 = versionCopy;
    v38 = objc_opt_class();
    v78 = 138543874;
    v79 = v38;
    v80 = 2114;
    v81 = lCopy;
    v82 = 2114;
    v83 = v19;
    v39 = v38;
    LODWORD(v73) = 32;
    v40 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: Failed to load image resource at: %{public}@, error: %{public}@", &v78, v73);

    if (!v40)
    {
      v41 = 0;
      versionCopy = v37;
      goto LABEL_80;
    }

    oSLogObject3 = [NSString stringWithCString:v40 encoding:4];
    free(v40);
    SSFileLog();
    versionCopy = v37;
  }

  v41 = 0;
LABEL_80:

  return v41;
}

- (CGImage)_createMaskedImageRefForImageRef:(CGImage *)ref withPathRef:(CGPath *)pathRef andAdornmentStyle:(int64_t)style
{
  Width = CGImageGetWidth(ref);
  Height = CGImageGetHeight(ref);
  v11 = Width;
  v12 = Height;
  ColorSpace = CGImageGetColorSpace(ref);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == 1)
  {
    Copy = CGImageCreateCopy(ref);
    goto LABEL_5;
  }

  v15 = Model;
  if (!Model)
  {
    Copy = [(DisplayPaymentSheetOperation *)self _createRGBImageRefForGreyScaleImageRef:ref width:Width height:Height];
LABEL_5:
    v17 = Copy;
    goto LABEL_17;
  }

  v18 = +[SSLogConfig sharedConfig];
  shouldLog = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    LODWORD(v20) = shouldLog | 2;
  }

  else
  {
    LODWORD(v20) = shouldLog;
  }

  oSLogObject = [v18 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v20 = v20;
  }

  else
  {
    v20 &= 2u;
  }

  if (!v20)
  {
    goto LABEL_15;
  }

  v22 = objc_opt_class();
  v39 = v22;
  v23 = [NSNumber numberWithInt:v15];
  *components = 138412546;
  *&components[4] = v22;
  *&components[12] = 2114;
  *&components[14] = v23;
  v24 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%@: Warning: Attempting to mask image with an unsupported color model: %{public}@", components, 22);

  if (v24)
  {
    oSLogObject = [NSString stringWithCString:v24 encoding:4];
    free(v24);
    v38 = oSLogObject;
    SSFileLog();
LABEL_15:
  }

  v17 = 0;
LABEL_17:
  v25 = [(DisplayPaymentSheetOperation *)self _createImageMaskRefWithSize:pathRef andPath:v11, v12, v38];
  v26 = CGImageCreateWithMask(v17, v25);
  v27 = CGImageGetWidth(v26);
  v28 = CGImageGetHeight(v26);
  BitsPerComponent = CGImageGetBitsPerComponent(v26);
  BytesPerRow = CGImageGetBytesPerRow(v26);
  v31 = CGBitmapContextCreate(0, v27, v28, BitsPerComponent, BytesPerRow, ColorSpace, 1u);
  CGContextSetRGBFillColor(v31, 1.0, 0.0, 0.0, 0.0);
  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  v41.size.width = v11;
  v41.size.height = v12;
  CGContextFillRect(v31, v41);
  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  v42.size.width = v11;
  v42.size.height = v12;
  CGContextDrawImage(v31, v42, v26);
  paymentSheet = [(DisplayPaymentSheetOperation *)self paymentSheet];
  designVersion = [paymentSheet designVersion];
  v34 = [(DisplayPaymentSheetOperation *)self _createBorderPathForAdornmentStyle:style iconWidth:designVersion iconHeight:v11 designVersion:v12];

  if (v34)
  {
    *components = xmmword_1002A8F10;
    *&components[16] = unk_1002A8F20;
    v35 = CGColorCreate(ColorSpace, components);
    CGContextSetStrokeColorWithColor(v31, v35);
    CGContextSetLineWidth(v31, 1.0);
    CGContextAddPath(v31, v34);
    CGContextDrawPath(v31, kCGPathStroke);
    CGPathRelease(v34);
    CGColorRelease(v35);
  }

  Image = CGBitmapContextCreateImage(v31);
  CGContextRelease(v31);
  CGImageRelease(v25);
  CGImageRelease(v26);
  CGImageRelease(v17);
  return Image;
}

- (CGImage)_createRatingImageWithStringValue:(id)value assetScale:(float *)scale
{
  valueCopy = value;
  v5 = +[AMSDevice screenScale];
  [v5 floatValue];
  v7 = v6;

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *components = xmmword_1002A8F30;
  v28 = unk_1002A8F40;
  v9 = CGColorCreate(DeviceRGB, components);
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontLabel, v7 * 9.0, 0);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kCTFontAttributeName, UIFontForLanguage);
  CFDictionaryAddValue(Mutable, kCTForegroundColorAttributeName, v9);
  v12 = CFAttributedStringCreate(0, valueCopy, Mutable);
  v13 = CTFramesetterCreateWithAttributedString(v12);
  v14 = [(__CFString *)valueCopy length];

  v30.width = 1.79769313e308;
  v29.location = 0;
  v29.length = v14;
  v30.height = 1.79769313e308;
  v15 = CTFramesetterSuggestFrameSizeWithConstraints(v13, v29, 0, v30, 0);
  height = v15.height;
  v17 = ceilf(height);
  v18 = v17 * 0.352941176;
  width = v15.width;
  v20 = ceilf(width) + ceilf(v18) * 2.0;
  v21 = CGBitmapContextCreate(0, v20, vcvtps_u32_f32(height), 8uLL, vcvtd_n_u64_f64(v20, 3uLL), DeviceRGB, 2u);
  CGContextSetShouldAntialias(v21, 1);
  CGContextSetInterpolationQuality(v21, kCGInterpolationHigh);
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = v20;
  v31.size.height = v17;
  v32 = CGRectInset(v31, 1.0, 1.0);
  v22 = CGPathCreateWithRoundedRect(v32, 6.0, 6.0, 0);
  CGContextAddPath(v21, v22);
  CGContextSetStrokeColorWithColor(v21, v9);
  CGContextSetLineWidth(v21, 1.0);
  CGContextStrokePath(v21);
  v23 = CTLineCreateWithAttributedString(v12);
  CGContextSetTextPosition(v21, v20 * 0.5 - v15.width * 0.5, v17 * 0.5 + v15.height * -0.25 + -1.0);
  CTLineDraw(v23, v21);
  Image = CGBitmapContextCreateImage(v21);
  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(v9);
  CGContextRelease(v21);
  CGPathRelease(v22);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (UIFontForLanguage)
  {
    CFRelease(UIFontForLanguage);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (scale)
  {
    *scale = v7;
  }

  return Image;
}

- (CGImage)_createResizedImageWithOriginalImage:(CGImage *)image targetHeight:(double)height
{
  Width = CGImageGetWidth(image);
  v7 = Width / CGImageGetHeight(image) * height;
  v8 = vcvtas_u32_f32(v7);
  heightCopy = height;
  v10 = vcvtas_u32_f32(heightCopy);
  ColorSpace = CGImageGetColorSpace(image);
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  v13 = (CGImageGetBytesPerRow(image) / Width * v8);
  AlphaInfo = CGImageGetAlphaInfo(image);
  v15 = CGBitmapContextCreate(0, v8, v10, BitsPerComponent, v13, ColorSpace, AlphaInfo);
  ClipBoundingBox = CGContextGetClipBoundingBox(v15);
  CGContextDrawImage(v15, ClipBoundingBox, image);
  Image = CGBitmapContextCreateImage(v15);
  CGContextRelease(v15);
  return Image;
}

- (CGImage)_createRGBImageRefForGreyScaleImageRef:(CGImage *)ref width:(unint64_t)width height:(unint64_t)height
{
  widthCopy = width;
  heightCopy = height;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  Width = CGImageGetWidth(ref);
  Height = CGImageGetHeight(ref);
  v12 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * width, DeviceRGB, 1u);
  CGContextSetRGBFillColor(v12, 0.0, 0.0, 0.0, 1.0);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = widthCopy;
  v15.size.height = heightCopy;
  CGContextFillRect(v12, v15);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = widthCopy;
  v16.size.height = heightCopy;
  CGContextDrawImage(v12, v16, ref);
  Image = CGBitmapContextCreateImage(v12);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v12);
  return Image;
}

- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler
{
  paymentCopy = payment;
  handlerCopy = handler;
  self->_didAuthorizePayment = 1;
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v105 = 138543362;
    v106 = objc_opt_class();
    v13 = v106;
    v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: [AUTH] Payment sheet did authorize payment", &v105, 12);

    if (!v14)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v14 encoding:4];
    free(v14);
    v92 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  authKitAuthenticationResults = [paymentCopy authKitAuthenticationResults];

  if (authKitAuthenticationResults)
  {
    authKitAuthenticationResults2 = [paymentCopy authKitAuthenticationResults];
    v17 = [authKitAuthenticationResults2 valueForKey:AKAuthenticationPasswordKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [SSAuthorizationMetricsController userActionDictionaryForUserAction:6 didBiometricsLockout:self->_didBiometricsLockout];
      if (v18)
      {
        [(NSMutableArray *)self->_userActions addObject:v18];
      }

      v19 = handlerCopy;
      objc_storeStrong(&self->_passwordEquivalentToken, v17);
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v22 = shouldLog2 | 2;
      }

      else
      {
        v22 = shouldLog2;
      }

      oSLogObject2 = [v20 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 2;
      }

      if (v24)
      {
        v25 = objc_opt_class();
        v105 = 138543362;
        v106 = v25;
        v26 = v25;
        LODWORD(v94) = 12;
        v27 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: [AUTH] Did authorize payment with AuthKit", &v105, v94);
        goto LABEL_56;
      }
    }

    else
    {
      if (!self->_isASNPurchase)
      {
        v19 = handlerCopy;
        v34 = ISError();
        v20 = +[SSLogConfig sharedDaemonConfig];
        if (!v20)
        {
          v20 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v20 shouldLog];
        if ([v20 shouldLogToDisk])
        {
          v61 = shouldLog3 | 2;
        }

        else
        {
          v61 = shouldLog3;
        }

        oSLogObject2 = [v20 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v62 = v61;
        }

        else
        {
          v62 = v61 & 2;
        }

        if (!v62)
        {
          v18 = 0;
          v50 = 1;
          goto LABEL_83;
        }

        v63 = objc_opt_class();
        v105 = 138543362;
        v106 = v63;
        v64 = v63;
        LODWORD(v94) = 12;
        v49 = _os_log_send_and_compose_impl(v62, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%{public}@: [AUTH] AuthKit authorization did fail", &v105, v94);

        v18 = 0;
        v50 = 1;
        if (!v49)
        {
LABEL_84:

          handlerCopy = v19;
LABEL_85:
          if (v34)
          {
            v104 = v34;
            v59 = [NSArray arrayWithObjects:&v104 count:1];
          }

          else
          {
            v59 = &__NSArray0__struct;
          }

          goto LABEL_88;
        }

        goto LABEL_82;
      }

      v18 = [SSAuthorizationMetricsController userActionDictionaryForUserAction:1 didBiometricsLockout:self->_didBiometricsLockout];
      if (v18)
      {
        [(NSMutableArray *)self->_userActions addObject:v18];
      }

      v19 = handlerCopy;
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v46 = shouldLog4 | 2;
      }

      else
      {
        v46 = shouldLog4;
      }

      oSLogObject2 = [v20 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v46;
      }

      else
      {
        v47 = v46 & 2;
      }

      if (v47)
      {
        v48 = objc_opt_class();
        v105 = 138543362;
        v106 = v48;
        v26 = v48;
        LODWORD(v94) = 12;
        v27 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: [AUTH] Did authorize payment with A/S/N", &v105, v94);
LABEL_56:
        v49 = v27;

        v50 = 0;
        v34 = 0;
        if (!v49)
        {
          goto LABEL_84;
        }

LABEL_82:
        oSLogObject2 = [NSString stringWithCString:v49 encoding:4];
        free(v49);
        SSFileLog();
        goto LABEL_83;
      }
    }

    v50 = 0;
    v34 = 0;
LABEL_83:

    goto LABEL_84;
  }

  if ([(DisplayPaymentSheetOperation *)self _isChallengeReadyToBeSigned])
  {
    v98 = handlerCopy;
    v99 = paymentCopy;
    v18 = [SSAuthorizationMetricsController userActionDictionaryForBiometricMatchState:2 didBiometricsLockout:self->_didBiometricsLockout];
    if (v18)
    {
      [(NSMutableArray *)self->_userActions addObject:v18];
    }

    v28 = +[DaemonBiometricKeychain sharedInstance];
    challenge = [(DisplayPaymentSheetOperation *)self challenge];
    accountIdentifier = [(DisplayPaymentSheetOperation *)self accountIdentifier];
    localAuthContext = [(DisplayPaymentSheetOperation *)self localAuthContext];
    localAuthOptions = [(DisplayPaymentSheetOperation *)self localAuthOptions];
    v103 = 0;
    v97 = v28;
    v33 = [v28 signDataWithKeychain:challenge accountIdentifier:accountIdentifier purpose:0 localAuthContext:localAuthContext localAuthOptions:localAuthOptions error:&v103];
    v34 = v103;

    v96 = v33;
    if (v34)
    {
      [(DisplayPaymentSheetOperation *)self setError:v34];
      v35 = +[SSLogConfig sharedDaemonConfig];
      if (!v35)
      {
        v35 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [v35 shouldLog];
      if ([v35 shouldLogToDisk])
      {
        v37 = shouldLog5 | 2;
      }

      else
      {
        v37 = shouldLog5;
      }

      oSLogObject3 = [v35 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v39 = v37;
      }

      else
      {
        v39 = v37 & 2;
      }

      if (v39)
      {
        v40 = objc_opt_class();
        v105 = 138543618;
        v106 = v40;
        v107 = 2114;
        v108 = v34;
        v41 = v40;
        LODWORD(v94) = 22;
        v42 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: [AUTH] Failed to sign challenge with error: %{public}@", &v105, v94);
LABEL_41:
        v43 = v42;

        v44 = v99;
        if (!v43)
        {
LABEL_105:

          v95 = 0;
          v50 = 1;
LABEL_106:
          token = [v44 token];
          paymentData = [token paymentData];

          v74 = +[SSLogConfig sharedDaemonConfig];
          token2 = v74;
          if (!paymentData)
          {
            if (!v74)
            {
              token2 = +[SSLogConfig sharedConfig];
            }

            shouldLog6 = [token2 shouldLog];
            if ([token2 shouldLogToDisk])
            {
              v87 = shouldLog6 | 2;
            }

            else
            {
              v87 = shouldLog6;
            }

            oSLogObject4 = [token2 OSLogObject];
            if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
            {
              v88 = v87;
            }

            else
            {
              v88 = v87 & 2;
            }

            if (v88)
            {
              v89 = objc_opt_class();
              v105 = 138543362;
              v106 = v89;
              v90 = v89;
              LODWORD(v94) = 12;
              v91 = _os_log_send_and_compose_impl(v88, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%{public}@: [AUTH] Skipping payment token", &v105, v94);

              if (!v91)
              {
LABEL_121:

                handlerCopy = v98;
                paymentCopy = v99;
                if (v95)
                {
                  goto LABEL_89;
                }

                goto LABEL_85;
              }

              oSLogObject4 = [NSString stringWithCString:v91 encoding:4];
              free(v91);
              SSFileLog();
            }

LABEL_120:

            goto LABEL_121;
          }

          if (!v74)
          {
            token2 = +[SSLogConfig sharedConfig];
          }

          shouldLog7 = [token2 shouldLog];
          if ([token2 shouldLogToDisk])
          {
            v77 = shouldLog7 | 2;
          }

          else
          {
            v77 = shouldLog7;
          }

          oSLogObject5 = [token2 OSLogObject];
          if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
          {
            v79 = v77;
          }

          else
          {
            v79 = v77 & 2;
          }

          if (v79)
          {
            v80 = objc_opt_class();
            v105 = 138543362;
            v106 = v80;
            v81 = v80;
            LODWORD(v94) = 12;
            v82 = _os_log_send_and_compose_impl(v79, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%{public}@: [AUTH] Saving payment token", &v105, v94);

            if (!v82)
            {
LABEL_119:

              token2 = [v99 token];
              oSLogObject4 = [token2 paymentData];
              v84 = [oSLogObject4 copy];
              paymentTokenData = self->_paymentTokenData;
              self->_paymentTokenData = v84;

              goto LABEL_120;
            }

            oSLogObject5 = [NSString stringWithCString:v82 encoding:4];
            free(v82);
            SSFileLog();
          }

          goto LABEL_119;
        }

        oSLogObject3 = [NSString stringWithCString:v43 encoding:4];
        free(v43);
        v93 = oSLogObject3;
        SSFileLog();
LABEL_104:

        goto LABEL_105;
      }
    }

    else
    {
      v44 = v99;
      if (v33)
      {
        self->_didAuthorizePayment = 0;
        [(DisplayPaymentSheetOperation *)self _challengeSigningDelay];
        v67 = dispatch_time(0, (v66 * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000F9CAC;
        block[3] = &unk_100328C38;
        block[4] = self;
        v101 = v33;
        v102 = v98;
        dispatch_after(v67, &_dispatch_main_q, block);

        v50 = 0;
        v34 = 0;
        v95 = 1;
        goto LABEL_106;
      }

      v34 = ISError();
      [(DisplayPaymentSheetOperation *)self setError:v34];
      v35 = +[SSLogConfig sharedDaemonConfig];
      if (!v35)
      {
        v35 = +[SSLogConfig sharedConfig];
      }

      shouldLog8 = [v35 shouldLog];
      if ([v35 shouldLogToDisk])
      {
        v69 = shouldLog8 | 2;
      }

      else
      {
        v69 = shouldLog8;
      }

      oSLogObject3 = [v35 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v70 = v69;
      }

      else
      {
        v70 = v69 & 2;
      }

      if (v70)
      {
        v71 = objc_opt_class();
        v105 = 138543362;
        v106 = v71;
        v41 = v71;
        LODWORD(v94) = 12;
        v42 = _os_log_send_and_compose_impl(v70, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: [AUTH] Failed to sign challenge", &v105, v94);
        goto LABEL_41;
      }
    }

    v44 = v99;
    goto LABEL_104;
  }

  self->_didAuthorizePayment = 0;
  v51 = +[SSLogConfig sharedDaemonConfig];
  if (!v51)
  {
    v51 = +[SSLogConfig sharedConfig];
  }

  shouldLog9 = [v51 shouldLog];
  if ([v51 shouldLogToDisk])
  {
    v53 = shouldLog9 | 2;
  }

  else
  {
    v53 = shouldLog9;
  }

  oSLogObject6 = [v51 OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
  {
    v55 = v53;
  }

  else
  {
    v55 = v53 & 2;
  }

  if (!v55)
  {
    goto LABEL_69;
  }

  v56 = objc_opt_class();
  v105 = 138543362;
  v106 = v56;
  v57 = v56;
  LODWORD(v94) = 12;
  v58 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &_mh_execute_header, oSLogObject6, 16, "%{public}@: [AUTH] Unknown error occured when authorizing payment", &v105, v94);

  if (v58)
  {
    oSLogObject6 = [NSString stringWithCString:v58 encoding:4];
    free(v58);
    SSFileLog();
LABEL_69:
  }

  v18 = 0;
  v34 = 0;
  v59 = &__NSArray0__struct;
  v50 = 1;
LABEL_88:
  v65 = [objc_alloc(ISWeakLinkedClassForString()) initWithStatus:v50 errors:v59];
  (*(handlerCopy + 2))(handlerCopy, v65);

LABEL_89:
}

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  self->_didFinishPayment = 1;
  finishCopy = finish;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v12 = 138543362;
  v13 = objc_opt_class();
  v9 = v13;
  v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Payment sheet did finish", &v12, 12);

  if (v10)
  {
    oSLogObject = [NSString stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog();
LABEL_12:
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000FA1DC;
  v11[3] = &unk_100327110;
  v11[4] = self;
  [finishCopy dismissWithCompletion:v11];
  [finishCopy setDelegate:0];
}

- (void)paymentAuthorizationController:(id)controller didEncounterAuthorizationEvent:(unint64_t)event
{
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [NSNumber numberWithUnsignedInteger:event];
    v20 = 138543618;
    v21 = v10;
    v22 = 2114;
    v23 = v12;
    v13 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Did encounter authorization event: %{public}@", &v20, 22);

    if (!v13)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    v19 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  if (event > 4)
  {
    if (event > 6)
    {
      if (event == 7)
      {
        didBiometricsLockout = self->_didBiometricsLockout;
        v16 = 8;
      }

      else
      {
        if (event != 8)
        {
          return;
        }

        didBiometricsLockout = self->_didBiometricsLockout;
        v16 = 7;
      }
    }

    else
    {
      if (event != 5)
      {
        v14 = 171;
LABEL_21:
        self->ISOperation_opaque[v14] = 1;
        return;
      }

      didBiometricsLockout = self->_didBiometricsLockout;
      v16 = 5;
    }
  }

  else
  {
    if (event <= 2)
    {
      if (event != 1)
      {
        if (event != 2)
        {
          return;
        }

        v14 = 170;
        goto LABEL_21;
      }

      v17 = [SSAuthorizationMetricsController userActionDictionaryForBiometricMatchState:16 didBiometricsLockout:self->_didBiometricsLockout];
      goto LABEL_32;
    }

    didBiometricsLockout = self->_didBiometricsLockout;
    if (event == 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }
  }

  v17 = [SSAuthorizationMetricsController userActionDictionaryForUserAction:v16 didBiometricsLockout:didBiometricsLockout, v19];
LABEL_32:
  v18 = v17;
  if (v17)
  {
    [(NSMutableArray *)self->_userActions addObject:v17];
  }
}

- (void)paymentAuthorizationController:(id)controller willFinishWithError:(id)error
{
  errorCopy = error;
  controllerCopy = controller;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = objc_opt_class();
  v12 = v11;
  localizedDescription = [errorCopy localizedDescription];
  v15 = 138543618;
  v16 = v11;
  v17 = 2114;
  v18 = localizedDescription;
  v14 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Payment sheet will finish with error: %{public}@", &v15, 22);

  if (v14)
  {
    oSLogObject = [NSString stringWithCString:v14 encoding:4];
    free(v14);
    SSFileLog();
LABEL_12:
  }

  [controllerCopy setPrivateDelegate:0];
}

@end
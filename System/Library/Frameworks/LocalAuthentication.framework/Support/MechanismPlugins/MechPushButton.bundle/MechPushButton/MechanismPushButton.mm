@interface MechanismPushButton
- (BOOL)_attemptToAddCredentialWithError:(id *)error;
- (BOOL)_checkDoublePressRequirementEnabled;
- (BOOL)_pollingAddCredentialWithError:(id *)error;
- (BOOL)checkCredentialValid;
- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error;
- (MechanismPushButton)initWithACMContextRecord:(id)record secondary:(BOOL)secondary axMode:(BOOL)mode request:(id)request;
- (MechanismPushButton)initWithParams:(id)params request:(id)request;
- (const)_acmPolicyToVerifyCredentialValidity;
- (double)expirationTimeout;
- (id)descriptionFlags;
- (void)_intentWaiting:(BOOL)waiting;
- (void)monitor:(id)monitor axApplePayConfirmation:(BOOL)confirmation;
- (void)monitor:(id)monitor doubleTapDetected:(BOOL)detected;
- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply;
- (void)willFinish;
@end

@implementation MechanismPushButton

- (MechanismPushButton)initWithParams:(id)params request:(id)request
{
  requestCopy = request;
  paramsCopy = params;
  v8 = [paramsCopy objectForKeyedSubscript:@"AcmContextRecord"];
  v9 = [paramsCopy objectForKeyedSubscript:@"Secondary"];
  bOOLValue = [v9 BOOLValue];
  v11 = [paramsCopy objectForKeyedSubscript:@"AXMode"];

  v12 = -[MechanismPushButton initWithACMContextRecord:secondary:axMode:request:](self, "initWithACMContextRecord:secondary:axMode:request:", v8, bOOLValue, [v11 BOOLValue], requestCopy);
  return v12;
}

- (MechanismPushButton)initWithACMContextRecord:(id)record secondary:(BOOL)secondary axMode:(BOOL)mode request:(id)request
{
  if (secondary)
  {
    v9 = 9;
  }

  else
  {
    v9 = 5;
  }

  v14.receiver = self;
  v14.super_class = MechanismPushButton;
  v10 = [(MechanismPushButton *)&v14 initWithEventIdentifier:v9 remoteViewController:0 acmContextRecord:record request:request];
  if (v10)
  {
    v11 = +[PushButtonMonitor sharedInstance];
    pushButtonMonitor = v10->_pushButtonMonitor;
    v10->_pushButtonMonitor = v11;

    v10->_secondary = secondary;
    v10->_axMode = mode;
  }

  return v10;
}

- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error
{
  v5.receiver = self;
  v5.super_class = MechanismPushButton;
  return [(MechanismPushButton *)&v5 isAvailableForPurpose:purpose error:error];
}

- (id)descriptionFlags
{
  v7.receiver = self;
  v7.super_class = MechanismPushButton;
  descriptionFlags = [(MechanismPushButton *)&v7 descriptionFlags];
  if ([(MechanismPushButton *)self secondary])
  {
    v4 = [descriptionFlags arrayByAddingObject:@"sec"];

    descriptionFlags = v4;
  }

  if ([(MechanismPushButton *)self axMode])
  {
    v5 = [descriptionFlags arrayByAddingObject:@"ax"];

    descriptionFlags = v5;
  }

  return descriptionFlags;
}

- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply
{
  hintsCopy = hints;
  delegateCopy = delegate;
  v10 = [(MechanismPushButton *)self fenceReplyWithTouchIdAssertions:reply];
  v37.receiver = self;
  v37.super_class = MechanismPushButton;
  [(MechanismPushButton *)&v37 runWithHints:hintsCopy eventsDelegate:delegateCopy reply:v10];

  v11 = [[LACACMHelper alloc] initWithACMContext:{-[MechanismPushButton acmContext](self, "acmContext")}];
  acmHelper = self->_acmHelper;
  self->_acmHelper = v11;

  request = [(MechanismPushButton *)self request];
  if ([request isPurposeInAppPayment] && +[DaemonUtils deviceSupportsSecureDoubleClick](DaemonUtils, "deviceSupportsSecureDoubleClick"))
  {
    v14 = +[DaemonUtils deviceHasPearl];

    if (v14)
    {
      goto LABEL_9;
    }

    v15 = self->_acmHelper;
    v36 = 0;
    v16 = [(LACACMHelper *)v15 verifyRequirementOfType:21 policy:[LACACMHelper error:"acmPolicyForPolicy:" acmPolicyForPolicy:?], &v36];
    v17 = v36;
    request = v17;
    if (v16)
    {
      v18 = sub_14EC(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ will not be required because biometry match was attempted, simulating credential present", buf, 0xCu);
      }

      v44 = &off_4350;
      v45 = &__kCFBooleanTrue;
      v19 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      [(MechanismPushButton *)self noResponseEventWithParams:v19];

      parent = [(MechanismPushButton *)self parent];
      [parent companionStateChanged:self newState:1];
      goto LABEL_30;
    }
  }

LABEL_9:
  if (![(MechanismPushButton *)self secondary])
  {
    delegate = [(PushButtonMonitor *)self->_pushButtonMonitor delegate];
    otherDelegate = self->_otherDelegate;
    self->_otherDelegate = delegate;
  }

  [(PushButtonMonitor *)self->_pushButtonMonitor setDelegate:self];
  v23 = [hintsCopy objectForKeyedSubscript:@"MechanismIndex"];
  request = v23;
  if (v23)
  {
    intValue = [v23 intValue];
  }

  else
  {
    intValue = 1;
  }

  secondary = [(MechanismPushButton *)self secondary];
  v26 = intValue + secondary;
  v27 = sub_14EC(secondary);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v42 = 1024;
    v43 = v26;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ running as index:%d", buf, 0x12u);
  }

  request2 = [(MechanismPushButton *)self request];
  isPurposeInAppPayment = [request2 isPurposeInAppPayment];

  if (isPurposeInAppPayment && v26 == 1)
  {
    v30 = @"it can't be reused for in-app payment";
LABEL_21:
    [(PushButtonMonitor *)self->_pushButtonMonitor consumeDoubleTapWithReason:v30];
    goto LABEL_22;
  }

  if ([(MechanismPushButton *)self policy]== &stru_3D8.vmaddr + 7)
  {
    v30 = @"it can't be reused for DoublePressBypass";
    goto LABEL_21;
  }

LABEL_22:
  if (+[DaemonUtils deviceHasTouchIDAndSecureDoublePress]&& [(MechanismPushButton *)self policy]!= &stru_3D8.vmaddr + 7)
  {
    bOOLValue = 1;
  }

  else
  {
    policyOptions = [(MechanismPushButton *)self policyOptions];
    v32 = [policyOptions objectForKeyedSubscript:&off_4368];
    bOOLValue = [v32 BOOLValue];
  }

  pushButtonMonitor = self->_pushButtonMonitor;
  if (self->_axMode)
  {
    if (([(PushButtonMonitor *)pushButtonMonitor axDoubleTapDetected]& 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_32:
    v35 = self->_pushButtonMonitor;
    if (self->_axMode)
    {
      [(MechanismPushButton *)self monitor:v35 axApplePayConfirmation:1];
    }

    else
    {
      [(MechanismPushButton *)self monitor:v35 doubleTapDetected:1];
    }

    goto LABEL_35;
  }

  if (([(PushButtonMonitor *)pushButtonMonitor doubleTapDetected]| bOOLValue))
  {
    goto LABEL_32;
  }

LABEL_28:
  if ([(MechanismPushButton *)self _checkDoublePressRequirementEnabled])
  {
    [(MechanismPushButton *)self _intentWaiting:1];
    v38 = &off_4350;
    v39 = &__kCFBooleanFalse;
    parent = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    [(MechanismPushButton *)self noResponseEventWithParams:parent];
LABEL_30:
  }

LABEL_35:
}

- (BOOL)_checkDoublePressRequirementEnabled
{
  policyOptions = [(MechanismPushButton *)self policyOptions];
  v4 = [policyOptions objectForKeyedSubscript:&off_4368];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = [LAErrorHelper errorWithCode:-1023 message:@"Double press is required."];
    [(MechanismPushButton *)self failAuthenticationWithError:v6];
  }

  return bOOLValue ^ 1;
}

- (void)willFinish
{
  [(MechanismPushButton *)self _intentWaiting:0];
  [(PushButtonMonitor *)self->_pushButtonMonitor stop];
  delegate = [(PushButtonMonitor *)self->_pushButtonMonitor delegate];

  if (delegate == self)
  {
    [(PushButtonMonitor *)self->_pushButtonMonitor setDelegate:0];
  }

  prearmAssertion = self->_prearmAssertion;
  self->_prearmAssertion = 0;
}

- (BOOL)_pollingAddCredentialWithError:(id *)error
{
  v21 = 0;
  v5 = [(MechanismPushButton *)self _attemptToAddCredentialWithError:&v21];
  v6 = v21;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
    v9 = 1;
LABEL_12:
    if (v9 >= 2)
    {
      v16 = sub_14EC(v6);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        secondary = [(MechanismPushButton *)self secondary];
        v18 = "primary";
        *buf = 138543874;
        selfCopy2 = self;
        if (secondary)
        {
          v18 = "secondary";
        }

        v24 = 2080;
        v25 = v18;
        v26 = 1024;
        v27 = v9;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ has successfully added the %s credential at attempt #%d", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v11 = sub_14EC(v6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        secondary2 = [(MechanismPushButton *)self secondary];
        *buf = 138544386;
        v15 = "primary";
        if (secondary2)
        {
          v15 = "secondary";
        }

        selfCopy2 = self;
        v24 = 2080;
        v25 = v15;
        v26 = 1024;
        v27 = v10 + 1;
        v28 = 1024;
        v29 = 5;
        v30 = 2114;
        v31 = v7;
        _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%{public}@ has failed to add the %s credential at attempt %d/%d: %{public}@", buf, 0x2Cu);
      }

      usleep(0x7530u);
      if (v10 == 4)
      {
        break;
      }

      v21 = v7;
      v12 = [(MechanismPushButton *)self _attemptToAddCredentialWithError:&v21];
      v13 = v21;

      ++v10;
      v7 = v13;
      if (v12)
      {
        v8 = v10 < 5;
        v9 = v10 + 1;
        v7 = v13;
        goto LABEL_12;
      }
    }

    v8 = 0;
  }

  if (error)
  {
    v19 = v7;
    *error = v7;
  }

  return v8;
}

- (BOOL)_attemptToAddCredentialWithError:(id *)error
{
  acmHelper = self->_acmHelper;
  if ([(MechanismPushButton *)self secondary])
  {
    v6 = 16;
  }

  else
  {
    v6 = 5;
  }

  v18 = 0;
  v7 = [(LACACMHelper *)acmHelper addCredential:v6 scope:1 error:&v18];
  v8 = v18;
  if (!v7)
  {
    v13 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  _acmPolicyToVerifyCredentialValidity = [(MechanismPushButton *)self _acmPolicyToVerifyCredentialValidity];
  if (!_acmPolicyToVerifyCredentialValidity)
  {
    v13 = 1;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = _acmPolicyToVerifyCredentialValidity;
  v11 = self->_acmHelper;
  if ([(MechanismPushButton *)self secondary])
  {
    v12 = 19;
  }

  else
  {
    v12 = 11;
  }

  v17 = v8;
  v13 = [(LACACMHelper *)v11 verifyRequirementOfType:v12 policy:v10 mustBePresent:0 parameters:0 flags:0 error:&v17];
  v14 = v17;

  v8 = v14;
  if (error)
  {
LABEL_12:
    v15 = v8;
    *error = v8;
  }

LABEL_13:

  return v13;
}

- (const)_acmPolicyToVerifyCredentialValidity
{
  if (![(MechanismPushButton *)self policy])
  {
    v5 = [LACAccessControlOperation alloc];
    request = [(MechanismPushButton *)self request];
    aclOperation = [request aclOperation];
    v8 = [v5 initWithTypeErasedOperation:aclOperation];

    request2 = [(MechanismPushButton *)self request];
    v10 = [request2 acl];
    LODWORD(request) = [LACAccessControl checkACL:v10 hasConstraint:@"pbtna" forOperation:v8];

    if (request)
    {
      v12 = sub_14EC(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543618;
        selfCopy2 = self;
        v25 = 2082;
        v26 = "pbtna";
        v13 = "%{public}@ will honor '%{public}s' value in ACL";
        v14 = v12;
        v15 = 22;
LABEL_11:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v13, &v23, v15);
      }
    }

    else
    {
      request3 = [(MechanismPushButton *)self request];
      options = [request3 options];
      v18 = [NSNumber numberWithInteger:LACPolicyOptionPushButtonUseMaxPreArmAge];
      v19 = [options objectForKey:v18];
      bOOLValue = [v19 BOOLValue];

      if (!bOOLValue)
      {
        v22 = "Oslo";
        goto LABEL_14;
      }

      v12 = sub_14EC(v21);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543362;
        selfCopy2 = self;
        v13 = "%{public}@ will honor LAOptionPushButtonUseMaxPreArmAge request";
        v14 = v12;
        v15 = 12;
        goto LABEL_11;
      }
    }

    v22 = 0;
LABEL_14:

    return v22;
  }

  policy = [(MechanismPushButton *)self policy];

  return [LACACMHelper acmPolicyForPolicy:policy];
}

- (void)_intentWaiting:(BOOL)waiting
{
  if (self->_intentWaiting != waiting)
  {
    waitingCopy = waiting;
    if ([(MechanismPushButton *)self isRunning])
    {
      self->_intentWaiting = waitingCopy;
      v5 = @"com.apple.LocalAuthentication.intent.not-waiting";
      if (waitingCopy)
      {
        v5 = @"com.apple.LocalAuthentication.intent.waiting";
      }

      v6 = v5;
      v7 = sub_14EC(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        selfCopy = self;
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ is posting %{public}@", &v11, 0x16u);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, v6, 0, 0, 1u);
      if (waitingCopy && ![(MechanismPushButton *)self axMode])
      {
        [(PushButtonMonitor *)self->_pushButtonMonitor start];
        prearmAssertion = [(PushButtonMonitor *)self->_pushButtonMonitor prearmAssertion];
        prearmAssertion = self->_prearmAssertion;
        self->_prearmAssertion = prearmAssertion;
      }
    }
  }
}

- (void)monitor:(id)monitor doubleTapDetected:(BOOL)detected
{
  detectedCopy = detected;
  monitorCopy = monitor;
  if ([(MechanismPushButton *)self axMode])
  {
    goto LABEL_11;
  }

  if (!detectedCopy)
  {
    self->_credentialValid = 0;
LABEL_6:
    if (![(MechanismPushButton *)self _checkDoublePressRequirementEnabled])
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  [(MechanismPushButton *)self checkCredentialValid];
  if (!self->_credentialValid)
  {
    goto LABEL_6;
  }

LABEL_7:
  v12 = &off_4350;
  v7 = [NSNumber numberWithBool:[(MechanismPushButton *)self isCredentialValid]];
  v13 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [(MechanismPushButton *)self noResponseEventWithParams:v8];

  [(MechanismPushButton *)self _intentWaiting:[(MechanismPushButton *)self isCredentialValid]^ 1];
  parent = [(MechanismPushButton *)self parent];
  [parent companionStateChanged:self newState:{-[MechanismPushButton isCredentialValid](self, "isCredentialValid")}];

  parent2 = [(MechanismPushButton *)self parent];
  preCompanion = [parent2 preCompanion];

  if ([(MechanismPushButton *)self isCredentialValid]&& preCompanion != self)
  {
    [(MechanismPushButton *)self succeedAuthenticationWithDefaultResult];
  }

  [(PushButtonDelegate *)self->_otherDelegate monitor:monitorCopy doubleTapDetected:detectedCopy];
LABEL_11:
}

- (void)monitor:(id)monitor axApplePayConfirmation:(BOOL)confirmation
{
  confirmationCopy = confirmation;
  monitorCopy = monitor;
  if ([(MechanismPushButton *)self axMode])
  {
    v11 = &off_4350;
    v7 = [NSNumber numberWithBool:confirmationCopy];
    v12 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [(MechanismPushButton *)self noResponseEventWithParams:v8];

    [(MechanismPushButton *)self _intentWaiting:confirmationCopy ^ 1];
    parent = [(MechanismPushButton *)self parent];

    if (parent)
    {
      parent2 = [(MechanismPushButton *)self parent];
      [parent2 companionStateChanged:self newState:confirmationCopy];
    }

    else
    {
      [(MechanismPushButton *)self succeedAuthenticationWithDefaultResult];
    }

    [(PushButtonDelegate *)self->_otherDelegate monitor:monitorCopy axApplePayConfirmation:confirmationCopy];
  }
}

- (double)expirationTimeout
{
  request = [(MechanismPushButton *)self request];
  isPurposeApplePay = [request isPurposeApplePay];

  result = 30.0;
  if ((isPurposeApplePay & 1) == 0)
  {
    policy = [(MechanismPushButton *)self policy];
    result = 60.0;
    if (policy == &stru_3D8.vmaddr + 7)
    {
      return 120.0;
    }
  }

  return result;
}

- (BOOL)checkCredentialValid
{
  if (self->_axMode)
  {
    v3 = +[PushButtonMonitor sharedInstance];
    self->_credentialValid = [v3 axDoubleTapDetected];

    return [(MechanismPushButton *)self isCredentialValid];
  }

  else
  {
    v8 = 0;
    v5 = [(MechanismPushButton *)self _pollingAddCredentialWithError:&v8];
    v6 = v8;
    self->_credentialValid = v5;
    if ([(MechanismPushButton *)self isCredentialValid])
    {
      [(PushButtonMonitor *)self->_pushButtonMonitor adviseDoubleTap];
    }

    isCredentialValid = [(MechanismPushButton *)self isCredentialValid];

    return isCredentialValid;
  }
}

@end
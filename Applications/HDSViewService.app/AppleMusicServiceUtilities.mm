@interface AppleMusicServiceUtilities
- (void)registerDevice:(id)device model:(id)model callback:(id)callback;
- (void)serviceEnabled:(id)enabled;
@end

@implementation AppleMusicServiceUtilities

- (void)serviceEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = +[ICMusicSubscriptionStatusController sharedStatusController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008FA4;
  v6[3] = &unk_1000EDD00;
  v7 = enabledCopy;
  v5 = enabledCopy;
  [v4 getSubscriptionStatusWithCompletionHandler:v6];
}

- (void)registerDevice:(id)device model:(id)model callback:(id)callback
{
  deviceCopy = device;
  modelCopy = model;
  callbackCopy = callback;
  amsDeviceRegistrationPromise = [(AppleMusicServiceUtilities *)self amsDeviceRegistrationPromise];
  if (!deviceCopy || amsDeviceRegistrationPromise)
  {
  }

  else if (modelCopy)
  {
    if (dword_100101508 <= 40 && (dword_100101508 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100101508, "[AppleMusicServiceUtilities registerDevice:model:callback:]", 40, "AMSDeviceOfferRegistrationTask: serial number %{private}%@ (%@)", deviceCopy, modelCopy);
    }

    v22 = +[AMSDeviceOfferRegistrationTask createBagForSubProfile];
    v12 = +[ACAccountStore ams_sharedAccountStore];
    ams_activeiTunesAccount = [v12 ams_activeiTunesAccount];

    v14 = [[AMSDeviceOfferRegistrationTask alloc] initWithAccount:ams_activeiTunesAccount bag:v22];
    v15 = [[AMSDeviceOfferRegistrationItem alloc] initWithSerialNumber:deviceCopy model:modelCopy validationData:0];
    v16 = [AMSDeviceOfferRegistrationGroup alloc];
    v28 = v15;
    v17 = [NSArray arrayWithObjects:&v28 count:1];
    v18 = [v16 initWithRegistrationItems:v17];

    [v18 setValidationOptions:5];
    v27 = v18;
    v19 = [NSArray arrayWithObjects:&v27 count:1];
    [v14 setRegistrationGroups:v19];

    perform = [v14 perform];
    [(AppleMusicServiceUtilities *)self setAmsDeviceRegistrationPromise:perform];

    objc_initWeak(&location, self);
    amsDeviceRegistrationPromise2 = [(AppleMusicServiceUtilities *)self amsDeviceRegistrationPromise];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100009394;
    v23[3] = &unk_1000EDD28;
    v24 = callbackCopy;
    objc_copyWeak(&v25, &location);
    [amsDeviceRegistrationPromise2 addFinishBlock:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

@end
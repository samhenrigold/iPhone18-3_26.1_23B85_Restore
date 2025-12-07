@interface IDSOffGridMessenger
- (void)__im_donateHandlesForMessagingKeys:(id)keys fromURI:(id)i priority:(int64_t)priority isInitial:(BOOL)initial completion:(id)completion;
- (void)__im_sendRelayDeliveryReceiptForMessageID:(id)d senderURI:(id)i options:(id)options topLevelFields:(id)fields completion:(id)completion;
- (void)__im_sendServiceUpdateMessageWithPreferredService:(int64_t)service recipientURI:(id)i fromURI:(id)rI options:(id)options completion:(id)completion;
@end

@implementation IDSOffGridMessenger

- (void)__im_donateHandlesForMessagingKeys:(id)keys fromURI:(id)i priority:(int64_t)priority isInitial:(BOOL)initial completion:(id)completion
{
  initialCopy = initial;
  keysCopy = keys;
  iCopy = i;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v15 = getIDSOffGridDeliveryHandlesDonationOptionsClass_softClass;
    v22 = getIDSOffGridDeliveryHandlesDonationOptionsClass_softClass;
    if (!getIDSOffGridDeliveryHandlesDonationOptionsClass_softClass)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __getIDSOffGridDeliveryHandlesDonationOptionsClass_block_invoke;
      v18[3] = &unk_65790;
      v18[4] = &v19;
      __getIDSOffGridDeliveryHandlesDonationOptionsClass_block_invoke(v18);
      v15 = v20[3];
    }

    v16 = v15;
    _Block_object_dispose(&v19, 8);
    v17 = objc_alloc_init(v15);
    [v17 setPriority:priority];
    if (objc_opt_respondsToSelector())
    {
      [v17 setIsInitialDonation:initialCopy];
    }

    [(IDSOffGridMessenger *)self donateHandlesForMessagingKeys:keysCopy fromURI:iCopy options:v17 completion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)__im_sendServiceUpdateMessageWithPreferredService:(int64_t)service recipientURI:(id)i fromURI:(id)rI options:(id)options completion:(id)completion
{
  iCopy = i;
  rICopy = rI;
  optionsCopy = options;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v16 = getIDSOffGridServiceUpdateMessageClass_softClass;
    v25 = getIDSOffGridServiceUpdateMessageClass_softClass;
    if (!getIDSOffGridServiceUpdateMessageClass_softClass)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __getIDSOffGridServiceUpdateMessageClass_block_invoke;
      v21[3] = &unk_65790;
      v21[4] = &v22;
      __getIDSOffGridServiceUpdateMessageClass_block_invoke(v21);
      v16 = v23[3];
    }

    v17 = v16;
    _Block_object_dispose(&v22, 8);
    v18 = [[v16 alloc] initWithPreferredServiceType:service senderURI:rICopy recipientURI:iCopy];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __149__IDSOffGridMessenger_ForwardDeclareSubstitute_127513240____im_sendServiceUpdateMessageWithPreferredService_recipientURI_fromURI_options_completion___block_invoke;
    v19[3] = &unk_65740;
    v20 = completionCopy;
    [(IDSOffGridMessenger *)self sendServiceUpdateMessage:v18 options:0 completion:v19];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

- (void)__im_sendRelayDeliveryReceiptForMessageID:(id)d senderURI:(id)i options:(id)options topLevelFields:(id)fields completion:(id)completion
{
  dCopy = d;
  iCopy = i;
  optionsCopy = options;
  fieldsCopy = fields;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v17 = getIDSOffGridServerMessageClass_softClass;
    v26 = getIDSOffGridServerMessageClass_softClass;
    if (!getIDSOffGridServerMessageClass_softClass)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = __getIDSOffGridServerMessageClass_block_invoke;
      v22[3] = &unk_65790;
      v22[4] = &v23;
      __getIDSOffGridServerMessageClass_block_invoke(v22);
      v17 = v24[3];
    }

    v18 = v17;
    _Block_object_dispose(&v23, 8);
    v19 = [[v17 alloc] initWithSenderURI:iCopy recipientURI:iCopy topLevelFields:fieldsCopy];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __145__IDSOffGridMessenger_ForwardDeclareSubstitute_137971787____im_sendRelayDeliveryReceiptForMessageID_senderURI_options_topLevelFields_completion___block_invoke;
    v20[3] = &unk_65768;
    v21 = completionCopy;
    [(IDSOffGridMessenger *)self sendServerMessage:v19 options:optionsCopy completion:v20];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

@end
@interface JSAAccountController
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)presentGiftViewControllerForAdamID:(NSString *)d options:(NSDictionary *)options completion:(id)completion;
- (void)presentGiftViewControllerForAdamID:(id)d :(id)a4 :(id)a5;
- (void)presentRedeemViewControllerForRedemptionCode:(NSString *)code options:(NSDictionary *)options completion:(id)completion;
- (void)presentRedeemViewControllerForRedemptionCode:(id)code :(id)a4 :(id)a5;
- (void)reauthenticateSignIn:(id)in :(id)a4;
- (void)showAccountViewControllerWithUrl:(id)url :(id)a4 :(id)a5;
- (void)signIn:(id)in;
- (void)signInEnablingAccountCreation:(BOOL)creation completion:(id)completion;
- (void)signOut:(id)out;
- (void)viewAppleID:(id)d :(id)a4;
@end

@implementation JSAAccountController

- (void)signInEnablingAccountCreation:(BOOL)creation completion:(id)completion
{
  v7 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = creation;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_8468C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_A17E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_A17E8;
  v14[5] = v13;
  selfCopy = self;
  sub_55564(0, 0, v9, &unk_A17F0, v14);
}

- (void)presentGiftViewControllerForAdamID:(NSString *)d options:(NSDictionary *)options completion:(id)completion
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_8468C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_A17C0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_A17C8;
  v16[5] = v15;
  dCopy = d;
  optionsCopy = options;
  selfCopy = self;
  sub_55564(0, 0, v11, &unk_A17D0, v16);
}

- (void)presentRedeemViewControllerForRedemptionCode:(NSString *)code options:(NSDictionary *)options completion:(id)completion
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = code;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_8468C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_A1778;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_A11F8;
  v16[5] = v15;
  codeCopy = code;
  optionsCopy = options;
  selfCopy = self;
  sub_55564(0, 0, v11, &unk_A1200, v16);
}

- (void)presentGiftViewControllerForAdamID:(id)d :(id)a4 :(id)a5
{
  v5 = a5;
  if (d)
  {
    v8 = sub_843AC();
    v10 = v9;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v10 = 0;
  if (a5)
  {
LABEL_3:
    v5 = sub_8434C();
  }

LABEL_4:
  v11 = a4;
  selfCopy = self;
  v13.value._countAndFlagsBits = v8;
  v13.value._object = v10;
  v15.value._rawValue = v5;
  AccountController.presentGiftViewController(for:_:_:)(v13, v11, v15);
}

- (void)presentRedeemViewControllerForRedemptionCode:(id)code :(id)a4 :(id)a5
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  if (a4)
  {
    a4 = sub_8434C();
  }

  v12 = sub_8468C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = code;
  v13[5] = self;
  v13[6] = a4;
  v13[7] = a5;
  codeCopy = code;
  v15 = a5;
  selfCopy = self;
  sub_2D4A4(0, 0, v11, &unk_A1758, v13);
}

- (void)viewAppleID:(id)d :(id)a4
{
  v6 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (a4)
  {
    a4 = sub_8434C();
  }

  v9 = sub_8468C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a4;
  v10[5] = d;
  dCopy = d;
  sub_2D4A4(0, 0, v8, &unk_A1750, v10);
}

- (void)signIn:(id)in
{
  v5 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = objc_allocWithZone(AMSAuthenticateOptions);
  inCopy = in;
  selfCopy = self;
  v11 = [v8 init];
  [v11 setEnableAccountCreation:1];
  v12 = sub_8468C();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = selfCopy;
  v13[5] = v11;
  v13[6] = inCopy;
  sub_2D4A4(0, 0, v7, &unk_A1748, v13);
}

- (void)signOut:(id)out
{
  outCopy = out;
  selfCopy = self;
  AccountController.signOut(_:)(outCopy);
}

- (void)reauthenticateSignIn:(id)in :(id)a4
{
  if (in)
  {
    v6 = sub_8434C();
  }

  else
  {
    v6 = 0;
  }

  v7 = a4;
  selfCopy = self;
  v11.value._rawValue = v6;
  v11.is_nil = v7;
  AccountController.reauthenticateSignIn(with:_:)(v11, v9);
}

- (void)showAccountViewControllerWithUrl:(id)url :(id)a4 :(id)a5
{
  v8 = sub_843AC();
  v10 = v9;
  if (a5)
  {
    a5 = sub_8434C();
  }

  v11 = a4;
  selfCopy = self;
  _s5JSApp17AccountControllerC04showb4ViewC04with__ySS_So7JSValueCSDys11AnyHashableVypGSgtF_0(v8, v10, v11, a5);
}

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  taskCopy = task;
  requestCopy = request;
  selfCopy = self;
  sub_568E0(requestCopy, sub_56C20, v9);
}

@end
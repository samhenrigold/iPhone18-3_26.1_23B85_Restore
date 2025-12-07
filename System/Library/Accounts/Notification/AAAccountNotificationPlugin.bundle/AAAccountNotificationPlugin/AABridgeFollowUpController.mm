@interface AABridgeFollowUpController
+ (void)dismissBridgeAppleIDFollowUp;
@end

@implementation AABridgeFollowUpController

+ (void)dismissBridgeAppleIDFollowUp
{
  v26[1] = *MEMORY[0x29EDCA608];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v5 = qword_2A1795060;
  v25 = qword_2A1795060;
  if (!qword_2A1795060)
  {
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = sub_29C84BDA0;
    v21[3] = &unk_29F329678;
    v21[4] = &v22;
    sub_29C84BDA0(v21, a2, v2, v3, v4);
    v5 = v23[3];
  }

  v6 = v5;
  _Block_object_dispose(&v22, 8);
  v7 = [v5 alloc];
  v11 = objc_msgSend_initWithClientIdentifier_(v7, v8, @"com.apple.Bridge", v9, v10);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v12, @"%@.%@", v13, v14, @"com.apple.Bridge", @"AppleID-FollowUp");
  v26[0] = v15;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v16, v26, 1, v17);
  objc_msgSend_clearPendingFollowUpItemsWithUniqueIdentifiers_completion_(v11, v19, v18, &unk_2A23CBE78, v20);
}

@end
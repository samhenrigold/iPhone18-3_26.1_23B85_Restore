@interface PCSAccountManager
- (PCSAccountManager)initWithDSID:(id)d;
- (unint64_t)accountStatus;
@end

@implementation PCSAccountManager

- (PCSAccountManager)initWithDSID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = PCSAccountManager;
  v6 = [(PCSAccountManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dsid, d);
    v8 = v7;
  }

  return v7;
}

- (unint64_t)accountStatus
{
  v13[1] = *MEMORY[0x1E69E9840];
  dsid = [(PCSAccountManager *)self dsid];
  v4 = PCSCurrentPersonaMatchesDSID(dsid);

  if (v4)
  {
    v12 = kPCSSetupDSID[0];
    dsid2 = [(PCSAccountManager *)self dsid];
    v13[0] = dsid2;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v11 = 0;
    v7 = PCSIdentitySetCreate(v6, 0, &v11);
    if (v7)
    {
      v8 = v7;
      IsICDP = PCSIdentitySetIsICDP(v7, 0);
    }

    else
    {
      v8 = v11;
      if (!v11)
      {
        IsICDP = 1;
        goto LABEL_8;
      }

      v11 = 0;
      IsICDP = 1;
    }

    CFRelease(v8);
LABEL_8:

    return IsICDP;
  }

  return 2;
}

@end
@interface NSError
@end

@implementation NSError

void __57__NSError_CPLAdditions___cplSafeUserInfoForXPCDidChange___block_invoke()
{
  v6[10] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696A598];
  v6[0] = *MEMORY[0x1E696A588];
  v6[1] = v0;
  v1 = *MEMORY[0x1E696A8A8];
  v6[2] = *MEMORY[0x1E696A590];
  v6[3] = v1;
  v2 = *MEMORY[0x1E696A8F8];
  v6[4] = *MEMORY[0x1E696A478];
  v6[5] = v2;
  v3 = *MEMORY[0x1E696A368];
  v6[6] = *MEMORY[0x1E696A998];
  v6[7] = v3;
  v6[8] = @"CPLErrorLearnMoreLink";
  v6[9] = @"CPLErrorServerGeneratedLocalizedDescription";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:10];
  v5 = _cplSafeUserInfoForXPCDidChange__safeKeys;
  _cplSafeUserInfoForXPCDidChange__safeKeys = v4;
}

void __50__NSError_CPLAdditions__cplShortDomainDescription__block_invoke()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E696A250];
  v3[1] = @"CloudPhotoLibraryErrorDomain";
  v4[0] = @"cocoa";
  v4[1] = @"cpl";
  v0 = *MEMORY[0x1E696A798];
  v3[2] = *MEMORY[0x1E696A768];
  v3[3] = v0;
  v4[2] = @"os";
  v4[3] = @"posix";
  v3[4] = *MEMORY[0x1E696A5A0];
  v3[5] = @"CKErrorDomain";
  v4[4] = @"mach";
  v4[5] = @"cloudkit";
  v3[6] = @"CKInternalErrorDomain";
  v3[7] = @"CKUnderlyingErrorDomain";
  v4[6] = @"cloudkit-internal";
  v4[7] = @"cloudkit-internal";
  v3[8] = @"SqliteErrorDomain";
  v4[8] = @"sqlite";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v2 = cplShortDomainDescription_wellKnownDomainToShortDomain;
  cplShortDomainDescription_wellKnownDomainToShortDomain = v1;
}

@end
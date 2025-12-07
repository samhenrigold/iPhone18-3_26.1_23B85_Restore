@interface CloudKit_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
+ (void)initializeJSContext:(id)context;
@end

@implementation CloudKit_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1A7B74;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9148 != -1)
  {
    dispatch_once(&qword_2806D9148, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  [self defineConstants:contextCopy];
  [contextCopy setObject:&unk_287F2BC70 forKeyedSubscript:@"CKRecordIDWithName"];
  [contextCopy setObject:&unk_287F2BC90 forKeyedSubscript:@"CKRecordWithType"];
  [contextCopy setObject:&unk_287F2BCB0 forKeyedSubscript:@"CKRecordWithTypeID"];
  [contextCopy setObject:&unk_287F2BCD0 forKeyedSubscript:@"CKReferenceWithRecord"];
  [contextCopy setObject:&unk_287F2BCF0 forKeyedSubscript:@"CKReferenceWithRecordID"];
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:*MEMORY[0x277CBBF50] forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"CKErrorDomain" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBBFB0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKPartialErrorsByItemIDKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBBFD8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKRecordChangedErrorAncestorRecordKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBBFE8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKRecordChangedErrorServerRecordKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBBFE0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKRecordChangedErrorClientRecordKey" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBBF68] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorRetryAfterKey" descriptor:dictionary];
  [dictionary setObject:&unk_287F55808 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorInternalError" descriptor:dictionary];
  [dictionary setObject:&unk_287F55820 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorPartialFailure" descriptor:dictionary];
  [dictionary setObject:&unk_287F55838 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorNetworkFailure" descriptor:dictionary];
  [dictionary setObject:&unk_287F55850 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorNetworkUnavailable" descriptor:dictionary];
  [dictionary setObject:&unk_287F55868 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorBadContainer" descriptor:dictionary];
  [dictionary setObject:&unk_287F55880 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorServiceUnavailable" descriptor:dictionary];
  [dictionary setObject:&unk_287F55898 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorRequestRateLimited" descriptor:dictionary];
  [dictionary setObject:&unk_287F558B0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorMissingEntitlement" descriptor:dictionary];
  [dictionary setObject:&unk_287F558C8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorNotAuthenticated" descriptor:dictionary];
  [dictionary setObject:&unk_287F558E0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorPermissionFailure" descriptor:dictionary];
  [dictionary setObject:&unk_287F558F8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorUnknownItem" descriptor:dictionary];
  [dictionary setObject:&unk_287F55910 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorInvalidArguments" descriptor:dictionary];
  [dictionary setObject:&unk_287F55928 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorServerRecordChanged" descriptor:dictionary];
  [dictionary setObject:&unk_287F55940 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorServerRejectedRequest" descriptor:dictionary];
  [dictionary setObject:&unk_287F55958 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorAssetFileNotFound" descriptor:dictionary];
  [dictionary setObject:&unk_287F55970 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorAssetFileModified" descriptor:dictionary];
  [dictionary setObject:&unk_287F55988 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorIncompatibleVersion" descriptor:dictionary];
  [dictionary setObject:&unk_287F559A0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorConstraintViolation" descriptor:dictionary];
  [dictionary setObject:&unk_287F559B8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorOperationCancelled" descriptor:dictionary];
  [dictionary setObject:&unk_287F559D0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorChangeTokenExpired" descriptor:dictionary];
  [dictionary setObject:&unk_287F559E8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorBatchRequestFailed" descriptor:dictionary];
  [dictionary setObject:&unk_287F55A00 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorZoneBusy" descriptor:dictionary];
  [dictionary setObject:&unk_287F55A18 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorBadDatabase" descriptor:dictionary];
  [dictionary setObject:&unk_287F55A30 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorQuotaExceeded" descriptor:dictionary];
  [dictionary setObject:&unk_287F55A48 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorZoneNotFound" descriptor:dictionary];
  [dictionary setObject:&unk_287F55A60 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorLimitExceeded" descriptor:dictionary];
  [dictionary setObject:&unk_287F55A78 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorUserDeletedZone" descriptor:dictionary];
  [dictionary setObject:&unk_287F55A90 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorTooManyParticipants" descriptor:dictionary];
  [dictionary setObject:&unk_287F55AA8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorAlreadyShared" descriptor:dictionary];
  [dictionary setObject:&unk_287F55AC0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorReferenceViolation" descriptor:dictionary];
  [dictionary setObject:&unk_287F55AD8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorManagedAccountRestricted" descriptor:dictionary];
  [dictionary setObject:&unk_287F55AF0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorParticipantMayNeedVerification" descriptor:dictionary];
  [dictionary setObject:&unk_287F55B08 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorServerResponseLost" descriptor:dictionary];
  [dictionary setObject:&unk_287F55B20 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKErrorAssetNotAvailable" descriptor:dictionary];
  [dictionary setObject:&unk_287F55B38 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKAccountStatusCouldNotDetermine" descriptor:dictionary];
  [dictionary setObject:&unk_287F55808 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKAccountStatusAvailable" descriptor:dictionary];
  [dictionary setObject:&unk_287F55820 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKAccountStatusRestricted" descriptor:dictionary];
  [dictionary setObject:&unk_287F55850 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKAccountStatusNoAccount" descriptor:dictionary];
  [dictionary setObject:&unk_287F55B50 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKReferenceActionNone" descriptor:dictionary];
  [dictionary setObject:&unk_287F55B68 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKReferenceActionDeleteSelf" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CBC058] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"CKRecordTypeUserRecord" descriptor:dictionary];
}

@end
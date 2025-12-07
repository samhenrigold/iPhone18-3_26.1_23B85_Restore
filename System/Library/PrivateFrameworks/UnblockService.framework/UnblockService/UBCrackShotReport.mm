@interface UBCrackShotReport
- (UBCrackShotReport)initWithPid:(int)pid procName:(id)name bundleID:(id)d exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason issueType:(int64_t)type;
- (id)reportNamePrefix;
@end

@implementation UBCrackShotReport

- (UBCrackShotReport)initWithPid:(int)pid procName:(id)name bundleID:(id)d exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason issueType:(int64_t)type
{
  v13.receiver = self;
  v13.super_class = UBCrackShotReport;
  v9 = [(OSACrackShotReport *)&v13 initWithPid:*&pid procName:name bundleID:d exitSnapshot:snapshot reason:reason];
  v10 = v9;
  if (v9)
  {
    v9->_issueType = type;
    v11 = v9;
  }

  return v10;
}

- (id)reportNamePrefix
{
  v9.receiver = self;
  v9.super_class = UBCrackShotReport;
  reportNamePrefix = [(OSACrackShotReport *)&v9 reportNamePrefix];
  [(UBCrackShotReport *)self issueType];
  v4 = UBIssueTypeCopyDescription();
  v5 = v4;
  if (v4)
  {
    v6 = _UBCopySanitizedString(v4, 1, &stru_288046330);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unblock_%@_%@", v6, reportNamePrefix];

  return v7;
}

@end
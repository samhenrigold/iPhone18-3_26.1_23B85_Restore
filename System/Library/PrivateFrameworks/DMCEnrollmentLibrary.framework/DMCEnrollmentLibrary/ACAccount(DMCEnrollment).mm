@interface ACAccount(DMCEnrollment)
- (uint64_t)dmc_isUnremovableRemotelyManagedAccount;
@end

@implementation ACAccount(DMCEnrollment)

- (uint64_t)dmc_isUnremovableRemotelyManagedAccount
{
  dmc_remoteManagementAccount = [self dmc_remoteManagementAccount];
  v2 = dmc_remoteManagementAccount;
  if (dmc_remoteManagementAccount && ([dmc_remoteManagementAccount dmc_managementProfileIdentifier], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "length"), v3, v4) && (objc_msgSend(MEMORY[0x277D24648], "sharedConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isProfileLocked"), v5, v6))
  {
    mEMORY[0x277D24640] = [MEMORY[0x277D24640] sharedConfiguration];
    v8 = [mEMORY[0x277D24640] isProvisionallyEnrolled] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
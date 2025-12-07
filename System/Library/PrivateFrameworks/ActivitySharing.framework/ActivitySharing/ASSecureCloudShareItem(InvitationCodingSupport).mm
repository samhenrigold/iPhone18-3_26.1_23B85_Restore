@interface ASSecureCloudShareItem(InvitationCodingSupport)
- (void)codableShareItem;
@end

@implementation ASSecureCloudShareItem(InvitationCodingSupport)

- (void)codableShareItem
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_23E4FA000, a2, OS_LOG_TYPE_ERROR, "Error archiving share item error: %{public}@", &v2, 0xCu);
}

@end
@interface IMFocusStateManager
@end

@implementation IMFocusStateManager

void __80__IMFocusStateManager_ChatKit__updateFocusStateForCurrentFocusFilterActionAsync__block_invoke(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Finished updating focus filter action", v3, 2u);
    }
  }
}

@end
@interface PKPeerPaymentConnectToIMDaemonController
@end

@implementation PKPeerPaymentConnectToIMDaemonController

void ___PKPeerPaymentConnectToIMDaemonController_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Connecting to IMDaemonController", buf, 2u);
  }

  v3 = [MEMORY[0x1E69A5B50] sharedInstance];
  [v3 addListenerID:@"PKPeerPaymentUIUtilities" capabilities:(*MEMORY[0x1E69A6280] | *MEMORY[0x1E69A6260]) | *MEMORY[0x1E69A6268]];

  v4 = [MEMORY[0x1E69A5B50] sharedInstance];
  [v4 blockUntilConnected];

  v5 = [MEMORY[0x1E69A5B50] sharedInstance];
  [v5 _setBlocksConnectionAtResume:1];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Connected to IMDaemonController", v6, 2u);
  }
}

@end
@interface PKPaymentWebServiceContext(NanoPassKit)
- (id)npkPossiblyOverriddenPeerPaymentServiceURL;
@end

@implementation PKPaymentWebServiceContext(NanoPassKit)

- (id)npkPossiblyOverriddenPeerPaymentServiceURL
{
  v12 = *MEMORY[0x277D85DE8];
  peerPaymentServiceURL = [self peerPaymentServiceURL];
  v2 = PKPeerPaymentServiceOverrideURL();
  v3 = v2;
  if (v2)
  {
    v4 = pk_Payment_log(v2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_Payment_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Using overridden peer payment service url '%@' for registration.", &v10, 0xCu);
      }
    }

    v8 = v3;

    peerPaymentServiceURL = v8;
  }

  return peerPaymentServiceURL;
}

@end
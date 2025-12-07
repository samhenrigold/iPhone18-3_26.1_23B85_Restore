@interface EPPairingAgent
- (CBPairingAgent)agent;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
@end

@implementation EPPairingAgent

- (CBPairingAgent)agent
{
  manager = [(EPPairingAgent *)self manager];
  agent = [manager agent];

  return agent;
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  agentCopy = agent;
  unpairCopy = unpair;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    v10 = sub_1000A98C0(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = sub_1000A98C0(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        identifier = [unpairCopy identifier];
        v17 = 138412802;
        v18 = v15;
        v19 = 2048;
        v20 = ownerDelegate;
        v21 = 2112;
        v22 = identifier;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling pairingAgent:peerDidUnpair: on %@[%p] with peer %@", &v17, 0x20u);
      }
    }

    [ownerDelegate pairingAgent:agentCopy peerDidUnpair:unpairCopy];
  }
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  agentCopy = agent;
  pairingCopy = pairing;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    v10 = sub_1000A98C0(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = sub_1000A98C0(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        identifier = [pairingCopy identifier];
        v17 = 138412802;
        v18 = v15;
        v19 = 2048;
        v20 = ownerDelegate;
        v21 = 2112;
        v22 = identifier;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling pairingAgent:peerDidCompletePairing: on %@[%p] with peer %@", &v17, 0x20u);
      }
    }

    [ownerDelegate pairingAgent:agentCopy peerDidCompletePairing:pairingCopy];
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    v13 = sub_1000A98C0(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v16 = sub_1000A98C0(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        identifier = [pairingCopy identifier];
        v20 = 138413058;
        v21 = v18;
        v22 = 2048;
        v23 = ownerDelegate;
        v24 = 2112;
        v25 = identifier;
        v26 = 2112;
        v27 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Calling pairingAgent:peerDidFailToCompletePairing: on %@[%p] with peer %@ error %@", &v20, 0x2Au);
      }
    }

    [ownerDelegate pairingAgent:agentCopy peerDidFailToCompletePairing:pairingCopy error:errorCopy];
  }
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  v14 = objc_opt_respondsToSelector();
  if (v14)
  {
    v15 = sub_1000A98C0(v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v18 = sub_1000A98C0(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        identifier = [pairingCopy identifier];
        v22 = [EPDevice stringFromCBPairingType:type];
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = 138413570;
        v26 = v20;
        v27 = 2048;
        v28 = ownerDelegate;
        v29 = 2112;
        v30 = identifier;
        v31 = 2112;
        v32 = v22;
        v33 = 2112;
        v34 = passkeyCopy;
        v35 = 2112;
        v36 = v24;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling pairingAgent:peerDidRequestPairing:type:passkey: on %@[%p] with peer %@ type=%@ passkey=%@ peer=%@", &v25, 0x3Eu);
      }
    }

    [ownerDelegate pairingAgent:agentCopy peerDidRequestPairing:pairingCopy type:type passkey:passkeyCopy];
  }
}

@end
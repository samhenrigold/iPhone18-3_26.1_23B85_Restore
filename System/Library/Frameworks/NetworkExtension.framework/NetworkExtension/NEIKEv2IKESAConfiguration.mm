@interface NEIKEv2IKESAConfiguration
- (NEIKEv2IKESAConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (void)setProposals:(id)proposals;
@end

@implementation NEIKEv2IKESAConfiguration

- (void)setProposals:(id)proposals
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [proposals copy];
  proposals = self->_proposals;
  self->_proposals = v4;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_proposals;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        ++v9;
        if (v12)
        {
          *(v12 + 8) = v9;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  localEndpoint = [(NEIKEv2IKESAConfiguration *)self localEndpoint];
  v6 = [localEndpoint copy];
  [v4 setLocalEndpoint:v6];

  remoteEndpoint = [(NEIKEv2IKESAConfiguration *)self remoteEndpoint];
  v8 = [remoteEndpoint copy];
  [v4 setRemoteEndpoint:v8];

  outgoingInterfaceName = [(NEIKEv2IKESAConfiguration *)self outgoingInterfaceName];
  v10 = [outgoingInterfaceName copy];
  [v4 setOutgoingInterfaceName:v10];

  [v4 setRandomizeLocalPort:{-[NEIKEv2IKESAConfiguration randomizeLocalPort](self, "randomizeLocalPort")}];
  [v4 setServerMode:{-[NEIKEv2IKESAConfiguration serverMode](self, "serverMode")}];
  [v4 setAllowRedirect:{-[NEIKEv2IKESAConfiguration allowRedirect](self, "allowRedirect")}];
  [v4 setDisableSwitchToNATTPorts:{-[NEIKEv2IKESAConfiguration disableSwitchToNATTPorts](self, "disableSwitchToNATTPorts")}];
  [v4 setAllowTCPEncapsulation:{-[NEIKEv2IKESAConfiguration allowTCPEncapsulation](self, "allowTCPEncapsulation")}];
  [v4 setUseTLSForTCPEncapsulation:{-[NEIKEv2IKESAConfiguration useTLSForTCPEncapsulation](self, "useTLSForTCPEncapsulation")}];
  [v4 setForceUDPEncapsulation:{-[NEIKEv2IKESAConfiguration forceUDPEncapsulation](self, "forceUDPEncapsulation")}];
  [v4 setPreferInitiatorProposalOrder:{-[NEIKEv2IKESAConfiguration preferInitiatorProposalOrder](self, "preferInitiatorProposalOrder")}];
  [v4 setTcpEncapsulationPort:{-[NEIKEv2IKESAConfiguration tcpEncapsulationPort](self, "tcpEncapsulationPort")}];
  [v4 setNonceSize:{-[NEIKEv2IKESAConfiguration nonceSize](self, "nonceSize")}];
  [v4 setStrictNonceSizeChecks:{-[NEIKEv2IKESAConfiguration strictNonceSizeChecks](self, "strictNonceSizeChecks")}];
  redirectedFromServer = [(NEIKEv2IKESAConfiguration *)self redirectedFromServer];
  v12 = [redirectedFromServer copy];
  [v4 setRedirectedFromServer:v12];

  proposals = [(NEIKEv2IKESAConfiguration *)self proposals];

  if (proposals)
  {
    v14 = objc_alloc(MEMORY[0x1E695DEC8]);
    proposals2 = [(NEIKEv2IKESAConfiguration *)self proposals];
    v16 = [v14 initWithArray:proposals2 copyItems:1];
    [v4 setProposals:v16];
  }

  customIKESAInitPayloads = [(NEIKEv2IKESAConfiguration *)self customIKESAInitPayloads];

  if (customIKESAInitPayloads)
  {
    v18 = objc_alloc(MEMORY[0x1E695DEC8]);
    customIKESAInitPayloads2 = [(NEIKEv2IKESAConfiguration *)self customIKESAInitPayloads];
    v20 = [v18 initWithArray:customIKESAInitPayloads2 copyItems:1];
    [v4 setCustomIKESAInitPayloads:v20];
  }

  customIKESAInitVendorPayloads = [(NEIKEv2IKESAConfiguration *)self customIKESAInitVendorPayloads];

  if (customIKESAInitVendorPayloads)
  {
    v22 = objc_alloc(MEMORY[0x1E695DEC8]);
    customIKESAInitVendorPayloads2 = [(NEIKEv2IKESAConfiguration *)self customIKESAInitVendorPayloads];
    v24 = [v22 initWithArray:customIKESAInitVendorPayloads2 copyItems:1];
    [v4 setCustomIKESAInitVendorPayloads:v24];
  }

  [v4 setMaximumPacketSize:{-[NEIKEv2IKESAConfiguration maximumPacketSize](self, "maximumPacketSize")}];
  [v4 setHeaderOverhead:{-[NEIKEv2IKESAConfiguration headerOverhead](self, "headerOverhead")}];
  [v4 setRequestChildlessSA:{-[NEIKEv2IKESAConfiguration requestChildlessSA](self, "requestChildlessSA")}];
  [v4 setRequestPPK:{-[NEIKEv2IKESAConfiguration requestPPK](self, "requestPPK")}];
  extraSupportedSignatureHashes = [(NEIKEv2IKESAConfiguration *)self extraSupportedSignatureHashes];

  if (extraSupportedSignatureHashes)
  {
    v26 = objc_alloc(MEMORY[0x1E695DFD8]);
    extraSupportedSignatureHashes2 = [(NEIKEv2IKESAConfiguration *)self extraSupportedSignatureHashes];
    v28 = [v26 initWithSet:extraSupportedSignatureHashes2 copyItems:1];
    [v4 setExtraSupportedSignatureHashes:v28];
  }

  supportedSecurePasswordMethods = [(NEIKEv2IKESAConfiguration *)self supportedSecurePasswordMethods];

  if (supportedSecurePasswordMethods)
  {
    v30 = objc_alloc(MEMORY[0x1E695DFD8]);
    supportedSecurePasswordMethods2 = [(NEIKEv2IKESAConfiguration *)self supportedSecurePasswordMethods];
    v32 = [v30 initWithSet:supportedSecurePasswordMethods2 copyItems:1];
    [v4 setSupportedSecurePasswordMethods:v32];
  }

  return v4;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  localEndpoint = [(NEIKEv2IKESAConfiguration *)self localEndpoint];
  [v7 appendPrettyObject:localEndpoint withName:@"Local Endpoint" andIndent:v5 options:options];

  remoteEndpoint = [(NEIKEv2IKESAConfiguration *)self remoteEndpoint];
  [v7 appendPrettyObject:remoteEndpoint withName:@"Remote Endpoint" andIndent:v5 options:options];

  outgoingInterfaceName = [(NEIKEv2IKESAConfiguration *)self outgoingInterfaceName];
  [v7 appendPrettyObject:outgoingInterfaceName withName:@"Outgoing Interface" andIndent:v5 options:options];

  [v7 appendPrettyBOOL:-[NEIKEv2IKESAConfiguration randomizeLocalPort](self withName:"randomizeLocalPort") andIndent:@"Randomize Local Port" options:{v5, options}];
  proposals = [(NEIKEv2IKESAConfiguration *)self proposals];
  [v7 appendPrettyObject:proposals withName:@"Proposals" andIndent:v5 options:options];

  customIKESAInitPayloads = [(NEIKEv2IKESAConfiguration *)self customIKESAInitPayloads];
  [v7 appendPrettyObject:customIKESAInitPayloads withName:@"Custom Payloads" andIndent:v5 options:options];

  customIKESAInitVendorPayloads = [(NEIKEv2IKESAConfiguration *)self customIKESAInitVendorPayloads];
  [v7 appendPrettyObject:customIKESAInitVendorPayloads withName:@"Vendor Payloads" andIndent:v5 options:options];

  redirectedFromServer = [(NEIKEv2IKESAConfiguration *)self redirectedFromServer];
  [v7 appendPrettyObject:redirectedFromServer withName:@"Redirected From" andIndent:v5 options:options];

  [v7 appendPrettyBOOL:-[NEIKEv2IKESAConfiguration allowRedirect](self withName:"allowRedirect") andIndent:@"Allow Redirect" options:{v5, options}];
  [v7 appendPrettyBOOL:-[NEIKEv2IKESAConfiguration disableSwitchToNATTPorts](self withName:"disableSwitchToNATTPorts") andIndent:@"Disable NAT Ports" options:{v5, options}];
  [v7 appendPrettyBOOL:-[NEIKEv2IKESAConfiguration forceUDPEncapsulation](self withName:"forceUDPEncapsulation") andIndent:@"Force UDP Encapsulation" options:{v5, options}];
  [v7 appendPrettyBOOL:-[NEIKEv2IKESAConfiguration serverMode](self withName:"serverMode") andIndent:@"Server Mode" options:{v5, options}];
  [v7 appendPrettyBOOL:-[NEIKEv2IKESAConfiguration preferInitiatorProposalOrder](self withName:"preferInitiatorProposalOrder") andIndent:@"Prefer Initiator Proposal Order" options:{v5, options}];
  [v7 appendPrettyInt:-[NEIKEv2IKESAConfiguration nonceSize](self withName:"nonceSize") andIndent:@"Nonce Size" options:{v5, options}];
  [v7 appendPrettyBOOL:-[NEIKEv2IKESAConfiguration requestPPK](self withName:"requestPPK") andIndent:@"Request PPK" options:{v5, options}];
  extraSupportedSignatureHashes = [(NEIKEv2IKESAConfiguration *)self extraSupportedSignatureHashes];
  [v7 appendPrettyObject:extraSupportedSignatureHashes withName:@"Extra Supported Signature Hashes" andIndent:v5 options:options];

  return v7;
}

- (NEIKEv2IKESAConfiguration)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2IKESAConfiguration;
  v2 = [(NEIKEv2IKESAConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(NEIKEv2IKESAConfiguration *)v2 setNonceSize:16];
    [(NEIKEv2IKESAConfiguration *)v3 setMaximumPacketSize:0];
    [(NEIKEv2IKESAConfiguration *)v3 setHeaderOverhead:0xFFFFFFFFLL];
    v4 = v3;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v7, 2u);
    }
  }

  return v3;
}

@end
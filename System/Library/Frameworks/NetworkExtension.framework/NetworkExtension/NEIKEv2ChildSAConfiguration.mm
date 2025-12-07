@interface NEIKEv2ChildSAConfiguration
- (NEIKEv2ChildSAConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (void)setProposals:(id)proposals;
@end

@implementation NEIKEv2ChildSAConfiguration

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
  [v4 setMode:{-[NEIKEv2ChildSAConfiguration mode](self, "mode")}];
  [v4 setReplayWindowSize:{-[NEIKEv2ChildSAConfiguration replayWindowSize](self, "replayWindowSize")}];
  [v4 setSequencePerTrafficClass:{-[NEIKEv2ChildSAConfiguration sequencePerTrafficClass](self, "sequencePerTrafficClass")}];
  [v4 setPreferInitiatorProposalOrder:{-[NEIKEv2ChildSAConfiguration preferInitiatorProposalOrder](self, "preferInitiatorProposalOrder")}];
  proposals = [(NEIKEv2ChildSAConfiguration *)self proposals];

  if (proposals)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    proposals2 = [(NEIKEv2ChildSAConfiguration *)self proposals];
    v8 = [v6 initWithArray:proposals2 copyItems:1];
    [v4 setProposals:v8];
  }

  localTrafficSelectors = [(NEIKEv2ChildSAConfiguration *)self localTrafficSelectors];

  if (localTrafficSelectors)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    localTrafficSelectors2 = [(NEIKEv2ChildSAConfiguration *)self localTrafficSelectors];
    v12 = [v10 initWithArray:localTrafficSelectors2 copyItems:1];
    [v4 setLocalTrafficSelectors:v12];
  }

  remoteTrafficSelectors = [(NEIKEv2ChildSAConfiguration *)self remoteTrafficSelectors];

  if (remoteTrafficSelectors)
  {
    v14 = objc_alloc(MEMORY[0x1E695DEC8]);
    remoteTrafficSelectors2 = [(NEIKEv2ChildSAConfiguration *)self remoteTrafficSelectors];
    v16 = [v14 initWithArray:remoteTrafficSelectors2 copyItems:1];
    [v4 setRemoteTrafficSelectors:v16];
  }

  return v4;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  ChildSAModeString = NEIKEv2CreateChildSAModeString([(NEIKEv2ChildSAConfiguration *)self mode]);
  [v7 appendPrettyObject:ChildSAModeString withName:@"Mode" andIndent:v5 options:options];

  [v7 appendPrettyInt:-[NEIKEv2ChildSAConfiguration replayWindowSize](self withName:"replayWindowSize") andIndent:@"Replay Window Size" options:{v5, options}];
  [v7 appendPrettyBOOL:-[NEIKEv2ChildSAConfiguration sequencePerTrafficClass](self withName:"sequencePerTrafficClass") andIndent:@"Sequence Per Traffic Class" options:{v5, options}];
  [v7 appendPrettyBOOL:-[NEIKEv2ChildSAConfiguration preferInitiatorProposalOrder](self withName:"preferInitiatorProposalOrder") andIndent:@"Prefer Initiator Proposal Order" options:{v5, options}];
  [v7 appendPrettyBOOL:-[NEIKEv2ChildSAConfiguration opportunisticPFS](self withName:"opportunisticPFS") andIndent:@"Opportunistic PFS" options:{v5, options}];
  proposals = [(NEIKEv2ChildSAConfiguration *)self proposals];
  [v7 appendPrettyObject:proposals withName:@"Proposals" andIndent:v5 options:options];

  localTrafficSelectors = [(NEIKEv2ChildSAConfiguration *)self localTrafficSelectors];
  [v7 appendPrettyObject:localTrafficSelectors withName:@"Local Traffic Selectors" andIndent:v5 options:options];

  remoteTrafficSelectors = [(NEIKEv2ChildSAConfiguration *)self remoteTrafficSelectors];
  [v7 appendPrettyObject:remoteTrafficSelectors withName:@"Remote Traffic Selectors" andIndent:v5 options:options];

  return v7;
}

- (NEIKEv2ChildSAConfiguration)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2ChildSAConfiguration;
  v2 = [(NEIKEv2ChildSAConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(NEIKEv2ChildSAConfiguration *)v2 setReplayWindowSize:4];
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
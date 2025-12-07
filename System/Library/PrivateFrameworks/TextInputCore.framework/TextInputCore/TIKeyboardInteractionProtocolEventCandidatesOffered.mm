@interface TIKeyboardInteractionProtocolEventCandidatesOffered
- (NSString)description;
- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCandidatesOffered:(id)offered keyboardState:(id)state;
- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCoder:(id)coder;
- (void)adjustSourceMaskForCandidate:(id)candidate;
- (void)encodeWithCoder:(id)coder;
- (void)sendTo:(id)to;
@end

@implementation TIKeyboardInteractionProtocolEventCandidatesOffered

- (NSString)description
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_string(MEMORY[0x277CCAB68], a2);
  corrections = [(TIAutocorrectionList *)self->_candidates corrections];
  autocorrection = [corrections autocorrection];
  if (autocorrection)
  {
    v6 = autocorrection;
    corrections2 = [(TIAutocorrectionList *)self->_candidates corrections];
    autocorrection2 = [corrections2 autocorrection];
    candidate = [autocorrection2 candidate];
    v10 = [candidate length];

    if (v10)
    {
      corrections3 = [(TIAutocorrectionList *)self->_candidates corrections];
      autocorrection3 = [corrections3 autocorrection];
      candidate2 = [autocorrection3 candidate];
      [v3 appendString:candidate2];

      [v3 appendString:@": "];
    }
  }

  else
  {
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  predictions = [(TIAutocorrectionList *)self->_candidates predictions];
  v15 = [predictions countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(predictions);
        }

        candidate3 = [*(*(&v22 + 1) + 8 * i) candidate];
        [v3 appendString:candidate3];

        [v3 appendString:@" "];
      }

      v16 = [predictions countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Candidates Offered: %@>", v3];

  return v20;
}

- (void)sendTo:(id)to
{
  candidates = self->_candidates;
  toCopy = to;
  keyboardState = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [toCopy candidatesOffered:candidates keyboardState:keyboardState];
}

- (void)adjustSourceMaskForCandidate:(id)candidate
{
  candidateCopy = candidate;
  usageTrackingMask = [candidateCopy usageTrackingMask];
  sourceMask = [candidateCopy sourceMask];
  if ((usageTrackingMask & 0x40000) != 0)
  {
    v5 = 0x20000;
  }

  else
  {
    v5 = 0x8000;
  }

  v6 = v5 | sourceMask & 0xFFFFFFFE;
  if ((usageTrackingMask & 0x40000) != 0)
  {
    v7 = 0x40000;
  }

  else
  {
    v7 = 0x10000;
  }

  if ((sourceMask & 1) == 0)
  {
    v6 = sourceMask;
  }

  v8 = v6 & 0xFFFFFFFD | v7;
  if ((v6 & 2) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  [candidateCopy setSourceMask:v9];
}

- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = TIKeyboardInteractionProtocolEventCandidatesOffered;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidates"];
    candidates = v5->_candidates;
    v5->_candidates = v6;
  }

  corrections = [(TIAutocorrectionList *)v5->_candidates corrections];
  autocorrection = [corrections autocorrection];
  [(TIKeyboardInteractionProtocolEventCandidatesOffered *)v5 adjustSourceMaskForCandidate:autocorrection];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  predictions = [(TIAutocorrectionList *)v5->_candidates predictions];
  v11 = [predictions countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(predictions);
        }

        [(TIKeyboardInteractionProtocolEventCandidatesOffered *)v5 adjustSourceMaskForCandidate:*(*(&v16 + 1) + 8 * i)];
      }

      v12 = [predictions countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInteractionProtocolEventCandidatesOffered;
  coderCopy = coder;
  [(TIKeyboardInteractionProtocolBase *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_candidates forKey:{@"candidates", v5.receiver, v5.super_class}];
}

- (TIKeyboardInteractionProtocolEventCandidatesOffered)initWithCandidatesOffered:(id)offered keyboardState:(id)state
{
  offeredCopy = offered;
  v11.receiver = self;
  v11.super_class = TIKeyboardInteractionProtocolEventCandidatesOffered;
  v8 = [(TIKeyboardInteractionProtocolBase *)&v11 initWithKeyboardState:state];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_candidates, offered);
  }

  return v9;
}

@end
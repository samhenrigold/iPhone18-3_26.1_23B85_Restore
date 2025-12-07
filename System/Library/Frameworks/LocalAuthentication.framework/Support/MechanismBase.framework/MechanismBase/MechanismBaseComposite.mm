@interface MechanismBaseComposite
- (BOOL)canRecoverFromAvailabilityError:(id)error request:(id)request;
- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error;
- (MechanismBaseComposite)initWithEventIdentifier:(int64_t)identifier remoteViewController:(int64_t)controller k:(unint64_t)k ofSubmechanisms:(id)submechanisms request:(id)request;
@end

@implementation MechanismBaseComposite

- (MechanismBaseComposite)initWithEventIdentifier:(int64_t)identifier remoteViewController:(int64_t)controller k:(unint64_t)k ofSubmechanisms:(id)submechanisms request:(id)request
{
  v30 = *MEMORY[0x277D85DE8];
  submechanismsCopy = submechanisms;
  v28.receiver = self;
  v28.super_class = MechanismBaseComposite;
  v14 = [(MechanismBase *)&v28 initWithEventIdentifier:identifier remoteViewController:controller cachedExternalizationDelegate:0 request:request];
  v15 = v14;
  if (v14)
  {
    v14->_k = k;
    objc_storeStrong(&v14->_submechanisms, submechanisms);
    v16 = [(NSArray *)v15->_submechanisms count];
    v15->_n = v16;
    k = v15->_k;
    v15->_AND = k == v16;
    v15->_OR = k < v16;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v15->_submechanisms;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v24 + 1) + 8 * i) setParent:{v15, v24}];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v20);
    }
  }

  return v15;
}

- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(MechanismBaseComposite *)self isAND])
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    submechanisms = [(MechanismBaseComposite *)self submechanisms];
    v8 = [submechanisms countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(submechanisms);
        }

        if (![*(*(&v22 + 1) + 8 * v11) isAvailableForPurpose:purpose error:error])
        {
          goto LABEL_19;
        }

        if (v9 == ++v11)
        {
          v9 = [submechanisms countByEnumeratingWithState:&v22 objects:v27 count:16];
          v12 = 1;
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_21;
        }
      }
    }

LABEL_20:
    v12 = 1;
    goto LABEL_21;
  }

  v20 = 0uLL;
  v21 = 0uLL;
  *(&v18 + 1) = 0;
  v19 = 0uLL;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v13 = [submechanisms countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
LABEL_13:
    v16 = 0;
    while (1)
    {
      if (*v19 != v15)
      {
        objc_enumerationMutation(submechanisms);
      }

      if ([*(*(&v18 + 1) + 8 * v16) isAvailableForPurpose:purpose error:error])
      {
        goto LABEL_20;
      }

      if (v14 == ++v16)
      {
        v14 = [submechanisms countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v14)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

LABEL_19:
  v12 = 0;
LABEL_21:

  return v12;
}

- (BOOL)canRecoverFromAvailabilityError:(id)error request:(id)request
{
  v43 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  requestCopy = request;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v9 = [submechanisms count];

  if (v9)
  {
    isAND = [(MechanismBaseComposite *)self isAND];
    if (isAND)
    {
      v39 = 0uLL;
      v40 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      submechanisms2 = [(MechanismBaseComposite *)self submechanisms];
      v12 = [submechanisms2 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (!v12)
      {
        v21 = 1;
        goto LABEL_28;
      }

      v13 = v12;
      v14 = *v38;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(submechanisms2);
        }

        v16 = *(*(&v37 + 1) + 8 * v15);
        purpose = [requestCopy purpose];
        v36 = 0;
        v18 = [v16 isAvailableForPurpose:purpose error:&v36];
        v19 = v36;
        v20 = v19;
        if ((v18 & 1) == 0 && (![v19 isEqual:errorCopy] || !objc_msgSend(v16, "canRecoverFromAvailabilityError:request:", errorCopy, requestCopy)))
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [submechanisms2 countByEnumeratingWithState:&v37 objects:v42 count:16];
          v21 = 1;
          if (v13)
          {
            goto LABEL_5;
          }

          goto LABEL_28;
        }
      }
    }

    else
    {
      v34 = 0uLL;
      v35 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      submechanisms2 = [(MechanismBaseComposite *)self submechanisms];
      v22 = [submechanisms2 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (!v22)
      {
LABEL_25:
        v21 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v23 = v22;
      v24 = *v33;
LABEL_17:
      v25 = 0;
      while (1)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(submechanisms2);
        }

        v26 = *(*(&v32 + 1) + 8 * v25);
        purpose2 = [requestCopy purpose];
        v31 = 0;
        v28 = [v26 isAvailableForPurpose:purpose2 error:&v31];
        v29 = v31;
        v20 = v29;
        if (v28 & 1) != 0 || [v29 isEqual:errorCopy] && (objc_msgSend(v26, "canRecoverFromAvailabilityError:request:", errorCopy, requestCopy))
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [submechanisms2 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v23)
          {
            goto LABEL_17;
          }

          goto LABEL_25;
        }
      }
    }

    v21 = !isAND;

    goto LABEL_28;
  }

  v21 = 1;
LABEL_29:

  return v21;
}

@end
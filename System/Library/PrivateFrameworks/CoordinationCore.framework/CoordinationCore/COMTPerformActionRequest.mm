@interface COMTPerformActionRequest
- (COMTPerformActionRequest)initWithActions:(id)actions;
- (COMTPerformActionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTPerformActionRequest

- (COMTPerformActionRequest)initWithActions:(id)actions
{
  actionsCopy = actions;
  v9.receiver = self;
  v9.super_class = COMTPerformActionRequest;
  v5 = [(COMessageChannelRequest *)&v9 init];
  if (v5)
  {
    v6 = [actionsCopy copy];
    actions = v5->_actions;
    v5->_actions = v6;
  }

  return v5;
}

- (COMTPerformActionRequest)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = COMTPerformActionRequest;
  v5 = [(COMessageChannelRequest *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"PA"];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v17 = 0;
            goto LABEL_13;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v15 = [v10 copy];
    actions = v5->_actions;
    v5->_actions = v15;
  }

  v17 = v5;
LABEL_13:

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COMTPerformActionRequest;
  coderCopy = coder;
  [(COMessageChannelRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COMTPerformActionRequest *)self actions:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"PA"];
}

@end
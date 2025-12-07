@interface AMSUIWebConditionalButtonModel
- (AMSUIWebConditionalButtonModel)initWithJSObject:(id)object context:(id)context;
- (NSString)description;
@end

@implementation AMSUIWebConditionalButtonModel

- (AMSUIWebConditionalButtonModel)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  if (!objectCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v19.receiver = self, v19.super_class = AMSUIWebConditionalButtonModel, (self = -[AMSUIWebConditionalButtonModel init](&v19, sel_init)) != 0) && (([objectCopy objectForKeyedSubscript:@"hideOnPush"], v9 = objc_claimAutoreleasedReturnValue(), (objc_opt_respondsToSelector() & 1) == 0) ? (v10 = 0) : (v10 = objc_msgSend(v9, "BOOLValue")), (self->_hideOnPush = v10, objc_msgSend(objectCopy, "objectForKeyedSubscript:", @"hideOnModal"), v11 = objc_claimAutoreleasedReturnValue(), (objc_opt_respondsToSelector() & 1) == 0) ? (v12 = 0) : (v12 = objc_msgSend(v11, "BOOLValue")), (self->_hideOnModal = v12, objc_msgSend(objectCopy, "objectForKeyedSubscript:", @"button"), v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v14 = 0) : (v14 = v13), v13, v15 = -[AMSUIWebButtonModel initWithJSObject:context:]([AMSUIWebButtonModel alloc], "initWithJSObject:context:", v14, contextCopy), button = self->_button, self->_button = v15, button, v17 = self->_button, v14, v11, v9, !v17))
  {
    selfCopy = 0;
  }

  else
  {
    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSString)description
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"button";
  button = [(AMSUIWebConditionalButtonModel *)self button];
  v10[0] = button;
  v9[1] = @"hideOnPush";
  if ([(AMSUIWebConditionalButtonModel *)self hideOnPush])
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v10[1] = v4;
  v9[2] = @"hideOnModal";
  if ([(AMSUIWebConditionalButtonModel *)self hideOnModal])
  {
    v5 = @"true";
  }

  else
  {
    v5 = @"false";
  }

  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = [v6 description];

  return v7;
}

@end
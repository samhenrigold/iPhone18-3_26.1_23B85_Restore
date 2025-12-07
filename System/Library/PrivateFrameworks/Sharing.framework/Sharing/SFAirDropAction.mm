@interface SFAirDropAction
+ (id)testActionWithTitle:(id)title actionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (SFAirDropAction)initWithCoder:(id)coder;
- (SFAirDropAction)initWithTransferIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier title:(id)title singleItemTitle:(id)itemTitle type:(int64_t)type;
- (SFAirDropAction)initWithTransferIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier title:(id)title singleItemTitle:(id)itemTitle type:(int64_t)type handler:(id)handler;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)triggerAction;
@end

@implementation SFAirDropAction

- (SFAirDropAction)initWithTransferIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier title:(id)title singleItemTitle:(id)itemTitle type:(int64_t)type
{
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  titleCopy = title;
  itemTitleCopy = itemTitle;
  v27.receiver = self;
  v27.super_class = SFAirDropAction;
  v16 = [(SFAirDropAction *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    v18 = [identifierCopy copy];
    transferIdentifier = v17->_transferIdentifier;
    v17->_transferIdentifier = v18;

    v20 = [actionIdentifierCopy copy];
    actionIdentifier = v17->_actionIdentifier;
    v17->_actionIdentifier = v20;

    v22 = [titleCopy copy];
    localizedTitle = v17->_localizedTitle;
    v17->_localizedTitle = v22;

    v24 = [itemTitleCopy copy];
    singleItemLocalizedTitle = v17->_singleItemLocalizedTitle;
    v17->_singleItemLocalizedTitle = v24;

    *&v17->_minRequiredTransferState = xmmword_1A998F010;
    *&v17->_requiresUnlockedUI = 257;
  }

  return v17;
}

- (SFAirDropAction)initWithTransferIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier title:(id)title singleItemTitle:(id)itemTitle type:(int64_t)type handler:(id)handler
{
  handlerCopy = handler;
  v15 = [(SFAirDropAction *)self initWithTransferIdentifier:identifier actionIdentifier:actionIdentifier title:title singleItemTitle:itemTitle type:type];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__SFAirDropAction_initWithTransferIdentifier_actionIdentifier_title_singleItemTitle_type_handler___block_invoke;
  v18[3] = &unk_1E788CFA8;
  v19 = handlerCopy;
  v16 = handlerCopy;
  [(SFAirDropAction *)v15 setActionHandler:v18];

  return v15;
}

- (SFAirDropAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFAirDropAction *)self initWithTransferIdentifier:&stru_1F1D30528 actionIdentifier:&stru_1F1D30528 title:&stru_1F1D30528 singleItemTitle:&stru_1F1D30528 type:1];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferIdentifier"];
    v7 = [v6 copy];
    transferIdentifier = v5->_transferIdentifier;
    v5->_transferIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    v10 = [v9 copy];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    v13 = [v12 copy];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"singleItemLocalizedTitle"];
    v16 = [v15 copy];
    singleItemLocalizedTitle = v5->_singleItemLocalizedTitle;
    v5->_singleItemLocalizedTitle = v16;

    v5->_minRequiredTransferState = [coderCopy decodeIntegerForKey:@"minRequiredTransferState"];
    v5->_maxTransferState = [coderCopy decodeIntegerForKey:@"maxTransferState"];
    v5->_requiresUnlockedUI = [coderCopy decodeBoolForKey:@"requiresUnlockedUI"];
    v5->_shouldUpdateUserResponse = [coderCopy decodeBoolForKey:@"shouldUpdateUserResponse"];
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  transferIdentifier = self->_transferIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:transferIdentifier forKey:@"transferIdentifier"];
  [coderCopy encodeObject:self->_actionIdentifier forKey:@"actionIdentifier"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_singleItemLocalizedTitle forKey:@"singleItemLocalizedTitle"];
  [coderCopy encodeInteger:self->_minRequiredTransferState forKey:@"minRequiredTransferState"];
  [coderCopy encodeInteger:self->_maxTransferState forKey:@"maxTransferState"];
  [coderCopy encodeBool:self->_requiresUnlockedUI forKey:@"requiresUnlockedUI"];
  [coderCopy encodeBool:self->_shouldUpdateUserResponse forKey:@"shouldUpdateUserResponse"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (id)description
{
  v27 = 0;
  v3 = objc_opt_class();
  NSAppendPrintF(&v27, "<%@", v3);
  v4 = v27;
  v26 = v4;
  NSAppendPrintF(&v26, ", transferIdentifier: %@", self->_transferIdentifier);
  v5 = v26;

  v25 = v5;
  NSAppendPrintF(&v25, ", actionIdentifier: %@", self->_actionIdentifier);
  v6 = v25;

  v24 = v6;
  NSAppendPrintF(&v24, ", title: %@", self->_localizedTitle);
  v7 = v24;

  v23 = v7;
  NSAppendPrintF(&v23, ", singleItemTitle: %@", self->_singleItemLocalizedTitle);
  v8 = v23;

  v22 = v8;
  v9 = SFAirDropTransferStateToString(self->_minRequiredTransferState);
  v10 = SFAirDropTransferStateToString(self->_maxTransferState);
  NSAppendPrintF(&v22, ", requiredTransferState: %@-%@", v9, v10);
  v11 = v22;

  v21 = v11;
  if (self->_requiresUnlockedUI)
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  NSAppendPrintF(&v21, ", requiresUnlockedUI: %s", v12);
  v13 = v21;

  v20 = v13;
  if (self->_shouldUpdateUserResponse)
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  NSAppendPrintF(&v20, ", shouldUpdateUserResponse: %s", v14);
  v15 = v20;

  v19 = v15;
  NSAppendPrintF(&v19, ">");
  v16 = v19;
  v17 = v19;

  return v16;
}

- (unint64_t)hash
{
  transferIdentifier = [(SFAirDropAction *)self transferIdentifier];
  v4 = [transferIdentifier hash];
  actionIdentifier = [(SFAirDropAction *)self actionIdentifier];
  v6 = [actionIdentifier hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    transferIdentifier = [(SFAirDropAction *)self transferIdentifier];
    transferIdentifier2 = [v5 transferIdentifier];
    if ([transferIdentifier isEqual:transferIdentifier2])
    {
      actionIdentifier = [(SFAirDropAction *)self actionIdentifier];
      actionIdentifier2 = [v5 actionIdentifier];
      v10 = [actionIdentifier isEqual:actionIdentifier2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)triggerAction
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SFAirDropAction.m" lineNumber:117 description:@"Cannot trigger action on action not associated with a Transfer"];
}

+ (id)testActionWithTitle:(id)title actionHandler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v7 = [SFAirDropAction alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString2 = [uUID2 UUIDString];
  v12 = [(SFAirDropAction *)v7 initWithTransferIdentifier:uUIDString actionIdentifier:uUIDString2 title:titleCopy singleItemTitle:titleCopy type:1];

  [(SFAirDropAction *)v12 setActionHandler:handlerCopy];

  return v12;
}

@end
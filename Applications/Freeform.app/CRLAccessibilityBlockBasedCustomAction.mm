@interface CRLAccessibilityBlockBasedCustomAction
+ (void)addActionToArray:(id)array withName:(id)name categoryName:(id)categoryName actionBlock:(id)block;
- (BOOL)_performActionBlock;
- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)name actionBlock:(id)block identifier:(id)identifier;
- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)name categoryName:(id)categoryName actionBlock:(id)block;
@end

@implementation CRLAccessibilityBlockBasedCustomAction

+ (void)addActionToArray:(id)array withName:(id)name categoryName:(id)categoryName actionBlock:(id)block
{
  arrayCopy = array;
  nameCopy = name;
  categoryNameCopy = categoryName;
  blockCopy = block;
  ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks(blockCopy, v12);
  if (!arrayCopy)
  {
    if (ShouldPerformValidationChecks)
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(ShouldPerformValidationChecks);
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Array cannot be nil!", v15, v16, v17, v18, v19, v21))
      {
        abort();
      }
    }
  }

  v20 = [[CRLAccessibilityBlockBasedCustomAction alloc] initWithName:nameCopy categoryName:categoryNameCopy actionBlock:blockCopy];
  [arrayCopy addObject:v20];
}

- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)name actionBlock:(id)block identifier:(id)identifier
{
  nameCopy = name;
  blockCopy = block;
  identifierCopy = identifier;
  if (CRLAccessibilityShouldPerformValidationChecks(identifierCopy, v11))
  {
    if (![identifierCopy length])
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(0);
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"An identifier is required to prevent issues with UIAccessibility!", v13, v14, v15, v16, v17, v24.receiver))
      {
        abort();
      }
    }
  }

  v24.receiver = self;
  v24.super_class = CRLAccessibilityBlockBasedCustomAction;
  v18 = [(CRLAccessibilityBlockBasedCustomAction *)&v24 initWithName:nameCopy target:self selector:"_performActionBlock"];
  if (v18)
  {
    v19 = [blockCopy copy];
    actionBlock = v18->_actionBlock;
    v18->_actionBlock = v19;

    v21 = [identifierCopy copy];
    identifier = v18->_identifier;
    v18->_identifier = v21;
  }

  return v18;
}

- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)name categoryName:(id)categoryName actionBlock:(id)block
{
  categoryNameCopy = categoryName;
  v9 = [(CRLAccessibilityBlockBasedCustomAction *)self initWithName:name actionBlock:block];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(CRLAccessibilityBlockBasedCustomAction *)v9 setLocalizedActionRotorCategory:categoryNameCopy];
  }

  return v9;
}

- (BOOL)_performActionBlock
{
  actionBlock = self->_actionBlock;
  if (actionBlock)
  {
    LOBYTE(actionBlock) = actionBlock[2]();
  }

  return actionBlock;
}

@end
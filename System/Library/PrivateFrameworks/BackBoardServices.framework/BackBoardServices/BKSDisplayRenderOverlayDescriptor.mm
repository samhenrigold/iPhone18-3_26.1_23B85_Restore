@interface BKSDisplayRenderOverlayDescriptor
+ (BKSDisplayRenderOverlayDescriptor)descriptorWithName:(id)name display:(id)display;
+ (id)_classesRequiredToDecode;
- (BKSDisplayRenderOverlayDescriptor)initWithCoder:(id)coder;
- (BKSDisplayRenderOverlayDescriptor)initWithName:(id)name display:(id)display;
- (BOOL)isEqual:(id)equal;
- (CADisplay)display;
- (id)_initWithName:(id)name displayUUID:(id)d;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)_appendDescriptionToFormatterCore:(id)core;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSDisplayRenderOverlayDescriptor

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSDisplayRenderOverlayDescriptor *)self descriptionBuilderWithMultilinePrefix:?];
  build = [v3 build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:?];
  [(BKSDisplayRenderOverlayDescriptor *)self _appendDescriptionToFormatterCore:?];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSDisplayRenderOverlayDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v5 = objc_opt_class();
  v6 = formatterCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = v8;
    [v10 appendProem:v9 block:{3221225472, __66__BKSDisplayRenderOverlayDescriptor_appendDescriptionToFormatter___block_invoke, &unk_1E6F47C78, self}];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  display = [(BKSDisplayRenderOverlayDescriptor *)self display];
  name = [display name];
  v6 = [name hash] + self->_interfaceOrientation;

  return &v6[v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E698E6A0];
  objc_opt_class();
  v17 = [v5 builderWithObject:? ofExpectedClass:?];
  v22 = equalCopy;
  v16 = [v17 appendString:? counterpart:?];
  display = [(BKSDisplayRenderOverlayDescriptor *)self display];
  name = [display name];
  v21 = v22;
  v8 = [v16 appendString:? counterpart:?];
  v20 = v21;
  v9 = [v8 appendInteger:? counterpart:?];
  v19 = v20;
  v10 = [v9 appendBool:? counterpart:?];
  v18 = v19;
  v11 = [v10 appendObject:? counterpart:?];
  v12 = v18;
  v13 = [v11 appendBool:? counterpart:?];
  v14 = [v13 isEqual];

  return v14;
}

id __45__BKSDisplayRenderOverlayDescriptor_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) display];
  v2 = [v1 name];

  return v2;
}

- (BKSDisplayRenderOverlayDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  v7 = [BKSDisplayRenderOverlayDescriptor _initWithName:"_initWithName:displayUUID:" displayUUID:?];
  if (v7)
  {
    [coderCopy decodeIntegerForKey:?];
    BSInterfaceOrientationIsValid();
    [(BKSDisplayRenderOverlayDescriptor *)v7 setInterfaceOrientation:?];
    [coderCopy decodeBoolForKey:?];
    [(BKSDisplayRenderOverlayDescriptor *)v7 setLockBacklight:?];
    objc_opt_class();
    v8 = [coderCopy decodeObjectOfClass:? forKey:?];
    [(BKSDisplayRenderOverlayDescriptor *)v7 setProgressIndicatorProperties:?];

    [coderCopy decodeBoolForKey:?];
    [(BKSDisplayRenderOverlayDescriptor *)v7 _setInterstitial:?];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
}

- (void)_appendDescriptionToFormatterCore:(id)core
{
  coreCopy = core;
  v4 = [coreCopy appendObject:? withName:?];
  display = [(BKSDisplayRenderOverlayDescriptor *)self display];
  name = [display name];

  if (name)
  {
    v7 = [coreCopy appendObject:? withName:?];
  }

  if (self->_displayUUID)
  {
    v8 = [coreCopy appendObject:? withName:?];
  }

  if (self->_interfaceOrientation)
  {
    v9 = [coreCopy appendInteger:? withName:?];
  }

  if (self->_lockBacklight)
  {
    [coreCopy appendString:? withName:?];
  }

  if (self->_interstitial)
  {
    [coreCopy appendString:? withName:?];
  }

  if (self->_progressIndicatorProperties)
  {
    v10 = [coreCopy appendObject:? withName:?];
  }
}

- (CADisplay)display
{
  p_display = &self->_display;
  display = self->_display;
  if (display)
  {
LABEL_14:
    mainDisplay = display;
    goto LABEL_15;
  }

  if (self->_displayUUID)
  {
    displays = [getCADisplayClass_8958() displays];
    v5 = [displays countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(displays);
          }

          v9 = *(8 * i);
          uniqueId = [v9 uniqueId];
          v11 = BSEqualStrings();

          if (v11)
          {
            objc_storeStrong(p_display, v9);
            goto LABEL_13;
          }
        }

        v6 = [displays countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    display = *p_display;
    goto LABEL_14;
  }

  mainDisplay = [getCADisplayClass_8958() mainDisplay];
LABEL_15:

  return mainDisplay;
}

- (BKSDisplayRenderOverlayDescriptor)initWithName:(id)name display:(id)display
{
  nameCopy = name;
  displayCopy = display;
  v8 = displayCopy;
  if (nameCopy)
  {
    if (displayCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"name" object:? file:? lineNumber:? description:?];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:@"display" object:? file:? lineNumber:? description:?];

LABEL_3:
  uniqueId = [v8 uniqueId];
  v10 = [BKSDisplayRenderOverlayDescriptor _initWithName:"_initWithName:displayUUID:" displayUUID:?];

  if (v10)
  {
    objc_storeStrong(&v10->_display, display);
  }

  return v10;
}

- (id)_initWithName:(id)name displayUUID:(id)d
{
  nameCopy = name;
  dCopy = d;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"name" object:? file:? lineNumber:? description:?];
  }

  v15.receiver = self;
  v15.super_class = BKSDisplayRenderOverlayDescriptor;
  v8 = [(BKSDisplayRenderOverlayDescriptor *)&v15 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [dCopy copy];
    displayUUID = v8->_displayUUID;
    v8->_displayUUID = v11;

    *&v8->_lockBacklight = 1;
  }

  return v8;
}

+ (id)_classesRequiredToDecode
{
  v2 = MEMORY[0x1E695DFD8];
  objc_opt_class();
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

+ (BKSDisplayRenderOverlayDescriptor)descriptorWithName:(id)name display:(id)display
{
  displayCopy = display;
  nameCopy = name;
  v7 = [objc_alloc(objc_opt_class()) initWithName:? display:?];

  return v7;
}

@end
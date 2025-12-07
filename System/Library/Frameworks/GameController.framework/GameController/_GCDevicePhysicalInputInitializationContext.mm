@interface _GCDevicePhysicalInputInitializationContext
- (uint64_t)viewConfiguration;
- (uint64_t)viewProperties;
- (uint64_t)viewState;
- (unint64_t)view:(id)view allocateObjectSlot:(unsigned __int8)slot withCopyOfValueFromView:(id)fromView slot:(unint64_t)a6;
- (unint64_t)view:(id)view allocatePrimitiveSlot:(unsigned __int8)slot withCopyOfValueFromView:(id)fromView slot:(unint64_t)a6;
- (unint64_t)view:(id)view makeReferenceToView:(id)toView;
- (void)_stateMagic:(void *)result;
- (void)dealloc;
- (void)initWithViewConfiguration:(_GCDevicePhysicalInputMutableStateTable *)configuration viewProperties:(_GCDevicePhysicalInputMutableStateTable *)properties viewState:;
@end

@implementation _GCDevicePhysicalInputInitializationContext

- (void)dealloc
{
  CFRelease(self->_views);
  self->_views = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  self->_viewConfiguration = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  self->_viewProperties = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  self->_viewState = 0;
  self->_implementation = 0;
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputInitializationContext;
  [(_GCDevicePhysicalInputInitializationContext *)&v3 dealloc];
}

- (unint64_t)view:(id)view makeReferenceToView:(id)toView
{
  v5 = [objc_opt_class() withTemplate:toView context:self];
  Count = CFArrayGetCount(self->_views);
  CFArrayAppendValue(self->_views, v5);
  return Count | 0x30000000000;
}

- (void)initWithViewConfiguration:(_GCDevicePhysicalInputMutableStateTable *)configuration viewProperties:(_GCDevicePhysicalInputMutableStateTable *)properties viewState:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputInitializationContext;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  memset(&callBacks, 0, sizeof(callBacks));
  v7[2] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
  if (a2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (configuration)
    {
LABEL_5:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }
    }
  }

  else if (configuration)
  {
    goto LABEL_5;
  }

  if (properties)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }
  }

  if (!a2)
  {
    a2 = objc_opt_new();
  }

  v7[3] = a2;
  if (!configuration)
  {
    configuration = objc_opt_new();
  }

  v7[4] = configuration;
  if (!properties)
  {
    properties = objc_opt_new();
  }

  v7[5] = properties;
  return v7;
}

- (uint64_t)viewConfiguration
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)viewProperties
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)viewState
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (void)_stateMagic:(void *)result
{
  if (result)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();

    return [a2 magic];
  }

  return result;
}

- (unint64_t)view:(id)view allocatePrimitiveSlot:(unsigned __int8)slot withCopyOfValueFromView:(id)fromView slot:(unint64_t)a6
{
  slotCopy = slot;
  v13 = OUTLINED_FUNCTION_6_2(self, a2, view, slot);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v13 != HIWORD(a6))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      [currentHandler handleFailureInMethod:a2 object:self file:@"_GCDevicePhysicalInputBase.m" lineNumber:195 description:{@"<%@ %p> is allocating a new slot with a copy of the value from %@, in a slot that is not part of the existing state table.", NSStringFromClass(v15), view, fromView}];
    }
  }

  else
  {
    allocatePrimitiveSlot = [(_GCDevicePhysicalInputMutableStateTable *)v6 allocatePrimitiveSlot];
    [v6 setPrimitiveValue:objc_msgSend(-[_GCDevicePhysicalInputView dataSource](fromView) atIndex:{"view:primitiveValueForSlot:", fromView, v18), allocatePrimitiveSlot}];
    return (v13 << 48) | (slotCopy << 32) | allocatePrimitiveSlot | 0x10000000000;
  }

  return a6;
}

- (unint64_t)view:(id)view allocateObjectSlot:(unsigned __int8)slot withCopyOfValueFromView:(id)fromView slot:(unint64_t)a6
{
  slotCopy = slot;
  v13 = OUTLINED_FUNCTION_6_2(self, a2, view, slot);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v13 != HIWORD(a6))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      [currentHandler handleFailureInMethod:a2 object:self file:@"_GCDevicePhysicalInputBase.m" lineNumber:235 description:{@"<%@ %p> is allocating a new slot with a copy of the value from %@, in a slot that is not part of the existing state table.", NSStringFromClass(v15), view, fromView}];
    }
  }

  else
  {
    allocateObjectSlot = [(_GCDevicePhysicalInputMutableStateTable *)v6 allocateObjectSlot];
    [v6 setObjectValue:objc_msgSend(-[_GCDevicePhysicalInputView dataSource](fromView) atIndex:"view:objectValueForSlot:" policy:{fromView, v18), allocateObjectSlot, 769}];
    return (v13 << 48) | (slotCopy << 32) | allocateObjectSlot | 0x20000000000;
  }

  return a6;
}

@end
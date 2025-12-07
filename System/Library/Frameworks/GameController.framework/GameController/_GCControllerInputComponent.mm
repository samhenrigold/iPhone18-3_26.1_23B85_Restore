@interface _GCControllerInputComponent
- (_GCControllerInputComponent)initWithIdentifier:(id)identifier templateFacadeParameters:(id)parameters templateElementParameters:(id)elementParameters;
- (void)handleGamepadEvent:(id)event;
- (void)setController:(id)controller;
- (void)setSettingsProfile:(id)profile;
@end

@implementation _GCControllerInputComponent

- (_GCControllerInputComponent)initWithIdentifier:(id)identifier templateFacadeParameters:(id)parameters templateElementParameters:(id)elementParameters
{
  v27[2] = *MEMORY[0x1E69E9840];
  elementParametersCopy = elementParameters;
  parametersCopy = parameters;
  identifierCopy = identifier;
  v11 = [objc_alloc(objc_msgSend(objc_opt_class() "viewClass"))];

  v12 = MEMORY[0x1E695DFD8];
  v13 = [elementParametersCopy gc_arrayByTransformingElementsUsingBlock:&__block_literal_global_49];
  v14 = [v12 setWithArray:v13];

  v15 = [_GCDevicePhysicalInput alloc];
  v16 = [MEMORY[0x1E695DFD8] set];
  v17 = [(_GCDevicePhysicalInput *)v15 initWithFacade:v11 elements:v14 attributes:v16];

  v18 = [_GCDevicePhysicalInput alloc];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:@"unmapped"];
  v20 = [(_GCDevicePhysicalInput *)v18 initWithFacade:v11 elements:v14 attributes:v19];

  v27[0] = v17;
  v27[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v26.receiver = self;
  v26.super_class = _GCControllerInputComponent;
  v22 = [(_GCDevicePhysicalInputComponent *)&v26 initWithIdentifier:identifierCopy physicalInputs:v21];

  v23 = [elementParametersCopy copy];
  templateElementParameters = v22->_templateElementParameters;
  v22->_templateElementParameters = v23;

  return v22;
}

- (void)setController:(id)controller
{
  controllerCopy = controller;
  [(_GCDevicePhysicalInputComponent *)self setDevice:controllerCopy];
  handlerQueue = [controllerCopy handlerQueue];

  [(_GCDevicePhysicalInputComponent *)self setDispatchQueue:handlerQueue];
}

- (void)handleGamepadEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([(NSArray *)self->_eventRemappingActions count])
  {
    v5 = [[_GCGamepadEventImpl alloc] initWithGamepadEvent:eventCopy];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = self->_eventRemappingActions;
    objc_sync_exit(selfCopy);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v5 = eventCopy;
  }

  v13.receiver = self;
  v13.super_class = _GCControllerInputComponent;
  [(_GCDevicePhysicalInputComponent *)&v13 handleGamepadEvent:v5];
}

- (void)setSettingsProfile:(id)profile
{
  profileCopy = profile;
  defaultPhysicalInput = [(_GCDevicePhysicalInputComponent *)&self->super.super.isa defaultPhysicalInput];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (profileCopy && (isKindOfClass & 1) != 0)
  {
    underlyingCollection = [(GCDeviceCollection *)&self->super.super.isa underlyingCollection];
    queue = [(_GCDevicePhysicalInputGroup *)underlyingCollection queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50___GCControllerInputComponent_setSettingsProfile___block_invoke;
    block[3] = &unk_1E8419BC0;
    v11 = profileCopy;
    selfCopy = self;
    v13 = defaultPhysicalInput;
    dispatch_async(queue, block);
  }
}

@end
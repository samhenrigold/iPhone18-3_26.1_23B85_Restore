@interface GCHapticCapabilities
- (GCHapticCapabilities)init;
- (GCHapticCapabilities)initWithCoder:(id)coder;
- (GCHapticCapabilities)initWithIdentifier:(id)identifier hapticEnginesInfo:(id)info hapticCapabilityGraph:(id)graph;
- (void)encodeWithCoder:(id)coder;
- (void)initializeHapticEngines;
- (void)removeHapticEngines;
- (void)setController:(id)controller;
@end

@implementation GCHapticCapabilities

- (GCHapticCapabilities)initWithIdentifier:(id)identifier hapticEnginesInfo:(id)info hapticCapabilityGraph:(id)graph
{
  identifierCopy = identifier;
  infoCopy = info;
  graphCopy = graph;
  v17.receiver = self;
  v17.super_class = GCHapticCapabilities;
  v11 = [(GCHapticCapabilities *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copyWithZone:0];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    array = [MEMORY[0x1E695DEC8] array];
    hapticEngines = v11->_hapticEngines;
    v11->_hapticEngines = array;

    objc_storeStrong(&v11->_hapticEnginesInfo, info);
    objc_storeStrong(&v11->_capabilityGraph, graph);
  }

  return v11;
}

- (GCHapticCapabilities)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(GCHapticCapabilities *)self initWithIdentifier:uUID hapticEnginesInfo:0 hapticCapabilityGraph:0];

  return v4;
}

- (void)initializeHapticEngines
{
  v4 = getGCLogger(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *self = 0;
    *a2 = 0;
    _os_log_error_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_ERROR, "Unable to create CHHapticEngine!", self, 2u);
  }
}

- (void)removeHapticEngines
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_initialized)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_hapticEngines;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * v7++) stopWithCompletionHandler:{&__block_literal_global_10, v10}];
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    v8 = objc_opt_new();
    hapticEngines = self->_hapticEngines;
    self->_hapticEngines = v8;

    self->_initialized = 0;
  }
}

- (void)setController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_controller, controllerCopy);
  [(GCDeviceHaptics *)self->_deviceHaptics setController:controllerCopy];
}

- (GCHapticCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = GCHapticCapabilities;
  v5 = [(GCHapticCapabilities *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v7 = GCIPCObjectIdentifier_Classes(v5);
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"hapticEnginesInfo"];
    hapticEnginesInfo = v6->_hapticEnginesInfo;
    v6->_hapticEnginesInfo = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"capabilityGraphDict"];
    v21 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v20];
    capabilityGraph = v6->_capabilityGraph;
    v6->_capabilityGraph = v21;

    v23 = [[GCDeviceHaptics alloc] initWithCapabilityGraph:v6->_capabilityGraph];
    deviceHaptics = v6->_deviceHaptics;
    v6->_deviceHaptics = v23;

    array = [MEMORY[0x1E695DEC8] array];
    hapticEngines = v6->_hapticEngines;
    v6->_hapticEngines = array;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  capabilityGraph = self->_capabilityGraph;
  coderCopy = coder;
  jsonDictionaryRepresentation = [(GCHapticCapabilityGraph *)capabilityGraph jsonDictionaryRepresentation];
  [coderCopy encodeObject:jsonDictionaryRepresentation forKey:@"capabilityGraphDict"];

  [coderCopy encodeObject:self->_hapticEnginesInfo forKey:@"hapticEnginesInfo"];
  identifier = [(GCHapticCapabilities *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

@end
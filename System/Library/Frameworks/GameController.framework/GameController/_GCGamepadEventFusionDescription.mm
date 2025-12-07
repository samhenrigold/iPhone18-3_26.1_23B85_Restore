@interface _GCGamepadEventFusionDescription
- (_GCGamepadEventFusionDescription)initWithCoder:(id)coder;
- (_GCGamepadEventFusionDescription)initWithConfiguration:(id)configuration sources:(id)sources;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCGamepadEventFusionDescription

- (_GCGamepadEventFusionDescription)initWithConfiguration:(id)configuration sources:(id)sources
{
  configurationCopy = configuration;
  sourcesCopy = sources;
  v14.receiver = self;
  v14.super_class = _GCGamepadEventFusionDescription;
  v9 = [(_GCGamepadEventFusionDescription *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, configuration);
    v11 = [sourcesCopy copy];
    sourcesDescription = v10->_sourcesDescription;
    v10->_sourcesDescription = v11;
  }

  return v10;
}

- (_GCGamepadEventFusionDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _GCGamepadEventFusionDescription;
  v5 = [(_GCGamepadEventFusionDescription *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"config"];
    config = v5->_config;
    v5->_config = v6;

    v9 = _GCGamepadEventSourceDescription_Classes(v8);
    v10 = [v9 setByAddingObject:objc_opt_class()];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"sources"];
    sourcesDescription = v5->_sourcesDescription;
    v5->_sourcesDescription = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourcesDescription = self->_sourcesDescription;
  coderCopy = coder;
  [coderCopy encodeObject:sourcesDescription forKey:@"sources"];
  [coderCopy encodeObject:self->_config forKey:@"config"];
}

- (id)materializeWithContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  materializedObject = self->_materializedObject;
  if (!materializedObject)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_sourcesDescription, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_sourcesDescription;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) materializeWithContext:{contextCopy, v18}];
          if (!v13)
          {

            v6 = 0;
            goto LABEL_13;
          }

          v14 = v13;
          [v7 addObject:v13];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = [[_GCGamepadEventFusion alloc] initWithConfiguration:self->_config sources:v7];
    v16 = self->_materializedObject;
    self->_materializedObject = v15;

    materializedObject = self->_materializedObject;
  }

  v6 = materializedObject;
LABEL_13:

  return v6;
}

@end
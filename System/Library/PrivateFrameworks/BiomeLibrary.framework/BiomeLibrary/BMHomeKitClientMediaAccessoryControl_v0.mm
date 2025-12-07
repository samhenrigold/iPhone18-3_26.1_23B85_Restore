@interface BMHomeKitClientMediaAccessoryControl_v0
- (id)accessoryState;
@end

@implementation BMHomeKitClientMediaAccessoryControl_v0

- (id)accessoryState
{
  v25 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = BMHomeKitClientMediaAccessoryControl_v0;
  accessoryState = [(BMHomeKitClientMediaAccessoryControl *)&v23 accessoryState];
  v18 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = accessoryState;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [BMHomeKitAccessoryState_v0 alloc];
        mediaPropertyType = [v7 mediaPropertyType];
        valueType = [v7 valueType];
        dataValue = [v7 dataValue];
        stringValue = [v7 stringValue];
        v13 = MEMORY[0x1E696AD98];
        [v7 numValue];
        v14 = [v13 numberWithDouble:?];
        v15 = [(BMHomeKitAccessoryState *)v8 initWithMediaPropertyType:mediaPropertyType valueType:valueType dataValue:dataValue stringValue:stringValue numValue:v14];
        [v18 addObject:v15];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  return v18;
}

@end
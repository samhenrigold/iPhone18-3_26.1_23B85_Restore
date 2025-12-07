@interface BMHomeKitClientMediaAccessoryControlEvent_v1
- (BMHomeKitClientMediaAccessoryControlEvent_v1)initWithProto:(id)proto;
@end

@implementation BMHomeKitClientMediaAccessoryControlEvent_v1

- (BMHomeKitClientMediaAccessoryControlEvent_v1)initWithProto:(id)proto
{
  v43 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = protoCopy;
      v5 = protoCopy;
      v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v34 = v5;
      accessoryStates = [v5 accessoryStates];
      v9 = [accessoryStates countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = v9;
      v11 = *v39;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(accessoryStates);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          valueType = [v13 valueType];
          if (valueType == 3)
          {
            goto LABEL_13;
          }

          if (valueType == 2)
          {
            stringValue = [v13 stringValue];
            mediaPropertyType = [v13 mediaPropertyType];
            [v37 setObject:stringValue forKey:mediaPropertyType];

LABEL_13:
            v20 = MEMORY[0x1E696AD98];
            [v13 numValue];
            dataValue = [v20 numberWithDouble:?];
            mediaPropertyType2 = [v13 mediaPropertyType];
            v17 = v6;
            goto LABEL_14;
          }

          if (valueType != 1)
          {
            goto LABEL_15;
          }

          dataValue = [v13 dataValue];
          mediaPropertyType2 = [v13 mediaPropertyType];
          v17 = v7;
LABEL_14:
          [v17 setObject:dataValue forKey:mediaPropertyType2];

LABEL_15:
        }

        v10 = [accessoryStates countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (!v10)
        {
LABEL_17:

          v21 = [BMHomeKitClientBase alloc];
          v22 = v34;
          base = [v34 base];
          v36 = [(BMHomeKitClientBase *)v21 initWithProto:base];
          accessoryUniqueIdentifier = [v34 accessoryUniqueIdentifier];
          accessoryMediaRouteIdentifier = [v34 accessoryMediaRouteIdentifier];
          zoneUniqueIdentifiers = [v34 zoneUniqueIdentifiers];
          roomUniqueIdentifier = [v34 roomUniqueIdentifier];
          accessoryName = [v34 accessoryName];
          roomName = [v34 roomName];
          zoneNames = [v34 zoneNames];
          homeName = [v34 homeName];
          self = [(BMHomeKitClientMediaAccessoryControlEvent *)self initWithBase:v36 accessoryUniqueIdentifier:accessoryUniqueIdentifier accessoryStateString:v37 accessoryStateNumber:v6 accessoryStateData:v7 accessoryMediaRouteIdentifier:accessoryMediaRouteIdentifier zoneUniqueIdentifiers:zoneUniqueIdentifiers roomUniqueIdentifier:roomUniqueIdentifier accessoryName:accessoryName roomName:roomName zoneNames:zoneNames homeName:homeName];

          selfCopy = self;
          protoCopy = v35;
          goto LABEL_22;
        }
      }
    }

    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [BMHomeKitClientMediaAccessoryControlEvent initWithProto:?];
    }

    selfCopy = 0;
LABEL_22:
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end
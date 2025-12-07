@interface AFCoreAnalyticsCrossDeviceEvent
- (AFCoreAnalyticsCrossDeviceEvent)initWithNearbyDevicesLoggingID:(id)d;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setTargetedDeviceContextIdentifier:(id)identifier withAction:(id)action payload:(id)payload;
- (void)addCoreAnalyticsDeviceTargetedWithContextIdentifier:(id)identifier commandResultDescription:(id)description;
- (void)addNearbyDeviceContexts:(id)contexts proximityInfo:(id)info;
@end

@implementation AFCoreAnalyticsCrossDeviceEvent

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16.receiver = self;
  v16.super_class = AFCoreAnalyticsCrossDeviceEvent;
  v5 = [(AFCoreAnalyticsCrossDeviceEvent *)&v16 description];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = [(NSString *)self->_nearbyDevicesLoggingID description];
  v8 = [v6 initWithFormat:@"nearbyDevicesLoggingID = %@", v7];
  v17[0] = v8;
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [(NSMutableDictionary *)self->_nearbyDevicesPayloads description];
  v11 = [v9 initWithFormat:@"nearbyDevicesPayloads = %@", v10];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v13 = [v12 componentsJoinedByString:{@", "}];
  v14 = [v4 initWithFormat:@"%@ {%@}", v5, v13];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AFCoreAnalyticsCrossDeviceEvent allocWithZone:?], "initWithNearbyDevicesLoggingID:", self->_nearbyDevicesLoggingID];
  [(AFCoreAnalyticsCrossDeviceEvent *)v4 setNearbyDevicesPayloads:self->_nearbyDevicesPayloads];
  return v4;
}

- (void)addCoreAnalyticsDeviceTargetedWithContextIdentifier:(id)identifier commandResultDescription:(id)description
{
  identifierCopy = identifier;
  descriptionCopy = description;
  nearbyDevicesPayloads = self->_nearbyDevicesPayloads;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __112__AFCoreAnalyticsCrossDeviceEvent_addCoreAnalyticsDeviceTargetedWithContextIdentifier_commandResultDescription___block_invoke;
  v11[3] = &unk_1E7344F58;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = descriptionCopy;
  v9 = descriptionCopy;
  v10 = identifierCopy;
  [(NSMutableDictionary *)nearbyDevicesPayloads enumerateKeysAndObjectsUsingBlock:v11];
}

void __112__AFCoreAnalyticsCrossDeviceEvent_addCoreAnalyticsDeviceTargetedWithContextIdentifier_commandResultDescription___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v9;
  if (!v9)
  {
    v4 = [v8 proximity];
    v11 = @"primary";
    if (objc_msgSend_isEqualToString_(v4))
    {

      goto LABEL_7;
    }

    v10 = *(a1 + 32);
  }

  v12 = [v10 UUIDString];
  isEqualToString = objc_msgSend_isEqualToString_(v12);

  if (v9)
  {
    if (!isEqualToString)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (isEqualToString)
  {
LABEL_7:
    [*(a1 + 40) _setTargetedDeviceContextIdentifier:v14 withAction:*(a1 + 48) payload:v8];
    *a4 = 1;
  }

LABEL_8:
}

- (void)_setTargetedDeviceContextIdentifier:(id)identifier withAction:(id)action payload:(id)payload
{
  actionCopy = action;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__AFCoreAnalyticsCrossDeviceEvent__setTargetedDeviceContextIdentifier_withAction_payload___block_invoke;
  v12[3] = &unk_1E7344F30;
  v13 = actionCopy;
  v9 = actionCopy;
  identifierCopy = identifier;
  v11 = [payload mutatedCopyWithMutator:v12];
  [(NSMutableDictionary *)self->_nearbyDevicesPayloads setObject:v11 forKey:identifierCopy];
}

- (void)addNearbyDeviceContexts:(id)contexts proximityInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v7 = MEMORY[0x1E695DF90];
    contextsCopy = contexts;
    v9 = objc_alloc_init(v7);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__AFCoreAnalyticsCrossDeviceEvent_addNearbyDeviceContexts_proximityInfo___block_invoke;
    v11[3] = &unk_1E7344F08;
    v12 = infoCopy;
    selfCopy = self;
    v14 = v9;
    v10 = v9;
    [contextsCopy enumerateObjectsUsingBlock:v11];

    [(AFCoreAnalyticsCrossDeviceEvent *)self setNearbyDevicesPayloads:v10];
  }
}

void __73__AFCoreAnalyticsCrossDeviceEvent_addNearbyDeviceContexts_proximityInfo___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 deviceInfo];
  v5 = [v4 assistantIdentifier];

  if (!v5 || ([*(a1 + 32) objectForKey:v5], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "integerValue"), v6, v5, !v7))
  {
    v8 = [v3 deviceInfo];
    v9 = [v8 idsDeviceUniqueIdentifier];

    if (v9)
    {
      v10 = [*(a1 + 32) objectForKey:v9];
      v7 = [v10 integerValue];
    }

    else
    {
      v7 = 0;
    }
  }

  v11 = AFCoreAnalyticsPayloadCreateForDeviceContext(v3, v7, *(*(a1 + 40) + 8));
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v16 = v12;
    v17 = [v3 identifier];
    v18 = [v17 UUIDString];
    v19 = 136315650;
    v20 = "[AFCoreAnalyticsCrossDeviceEvent addNearbyDeviceContexts:proximityInfo:]_block_invoke";
    v21 = 2112;
    v22 = v18;
    v23 = 2112;
    v24 = v11;
    _os_log_debug_impl(&dword_1912FE000, v16, OS_LOG_TYPE_DEBUG, "%s payload for %@: %@", &v19, 0x20u);
  }

  v13 = *(a1 + 48);
  v14 = [v3 identifier];
  v15 = [v14 UUIDString];
  [v13 setObject:v11 forKey:v15];
}

- (AFCoreAnalyticsCrossDeviceEvent)initWithNearbyDevicesLoggingID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = AFCoreAnalyticsCrossDeviceEvent;
  v5 = [(AFCoreAnalyticsCrossDeviceEvent *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    nearbyDevicesLoggingID = v5->_nearbyDevicesLoggingID;
    v5->_nearbyDevicesLoggingID = v6;
  }

  return v5;
}

@end
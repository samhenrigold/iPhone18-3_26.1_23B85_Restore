@interface ClientHearingAccessProfile
- (ClientHearingAccessProfile)init;
- (id)getSecondBinauraldHearingAid:(id)aid;
- (void)HAPReadActivePresetIndex:(id)index;
- (void)HAPReadHearingAidFeatures:(id)features;
- (void)HAPReadPresetsRequest:(id)request withStartIndex:(unsigned __int8)index withNumPresets:(unsigned __int8)presets;
- (void)HAPSendReadPresetsRequest:(id)request withStartIndex:(unsigned __int8)index withNumPresets:(unsigned __int8)presets;
- (void)HAPSendSetActivePreset:(id)preset withIndex:(unsigned __int8)index syncLocally:(BOOL)locally;
- (void)HAPSendSetNextPreset:(id)preset syncLocally:(BOOL)locally;
- (void)HAPSendSetPreviousPreset:(id)preset syncLocally:(BOOL)locally;
- (void)HAPSendWritePresetName:(id)name withIndex:(unsigned __int8)index withName:(id)withName;
- (void)HAPSetActivePreset:(id)preset withIndex:(unsigned __int8)index;
- (void)HAPSetNextPreset:(id)preset;
- (void)HAPSetPreviousPreset:(id)preset;
- (void)HAPWritePresetName:(id)name withIndex:(unsigned __int8)index withName:(id)withName;
- (void)addAcceptorToSet:(id)set;
- (void)peripheralDisconnected:(id)disconnected;
- (void)processActivePresetIndex:(unsigned __int8)index withIdentifier:(id)identifier;
- (void)processHearingAidFeatures:(id)features;
- (void)processPresetControlPointResult:(unsigned __int8)result withIdentifier:(id)identifier;
- (void)processPresetNameChanged:(unsigned __int8)changed withIdentifier:(id)identifier;
- (void)processPresetRecordAdded:(unsigned __int8)added withIdentifier:(id)identifier;
- (void)processPresetRecordAvailable:(unsigned __int8)available withIdentifier:(id)identifier;
- (void)processPresetRecordDeleted:(unsigned __int8)deleted withIdentifier:(id)identifier;
- (void)processPresetRecordUnavailable:(unsigned __int8)unavailable withIdentifier:(id)identifier;
- (void)processReadPresetsResponse:(unsigned __int8)response withIdentifier:(id)identifier;
@end

@implementation ClientHearingAccessProfile

- (ClientHearingAccessProfile)init
{
  v6.receiver = self;
  v6.super_class = ClientHearingAccessProfile;
  v2 = [(ClientCommonAudioProfile *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    binauralHearingAidSet = v2->_binauralHearingAidSet;
    v2->_binauralHearingAidSet = v3;
  }

  return v2;
}

- (void)addAcceptorToSet:(id)set
{
  setCopy = set;
  v18.receiver = self;
  v18.super_class = ClientHearingAccessProfile;
  [(ClientCommonAudioProfile *)&v18 addAcceptorToSet:setCopy];
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  peripheral = [setCopy peripheral];
  identifier = [peripheral identifier];
  v8 = [coordinatedSet objectForKey:identifier];

  if (v8)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004AC74;
    v17[3] = &unk_100095990;
    v17[4] = self;
    [setCopy setPresetControlPointResultHandler:v17];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10004AC84;
    v16[3] = &unk_1000959B8;
    v16[4] = self;
    [setCopy setHearingAidFeaturesHandler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004AC90;
    v15[3] = &unk_100095990;
    v15[4] = self;
    [setCopy setActivePresetIndexHandler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004ACA0;
    v14[3] = &unk_100095990;
    v14[4] = self;
    [setCopy setReadPresetsResponseHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004ACB0;
    v13[3] = &unk_100095990;
    v13[4] = self;
    [setCopy setPresetNameChangedHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004ACC0;
    v12[3] = &unk_100095990;
    v12[4] = self;
    [setCopy setPresetRecordAddedHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004ACD0;
    v11[3] = &unk_100095990;
    v11[4] = self;
    [setCopy setPresetRecordDeletedHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004ACE0;
    v10[3] = &unk_100095990;
    v10[4] = self;
    [setCopy setPresetRecordAvailableHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004ACF0;
    v9[3] = &unk_100095990;
    v9[4] = self;
    [setCopy setPresetRecordUnavailableHandler:v9];
  }
}

- (void)peripheralDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  binauralHearingAidSet = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
  identifier = [disconnectedCopy identifier];
  v7 = [binauralHearingAidSet containsObject:identifier];

  if (v7)
  {
    binauralHearingAidSet2 = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
    identifier2 = [disconnectedCopy identifier];
    [binauralHearingAidSet2 removeObject:identifier2];

    v10 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      identifier3 = [disconnectedCopy identifier];
      *buf = 138412290;
      v15 = identifier3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Hearing Aid %@ removed from our Binaural Hearing Aid Set", buf, 0xCu);
    }
  }

  v13.receiver = self;
  v13.super_class = ClientHearingAccessProfile;
  [(ClientCommonAudioProfile *)&v13 peripheralDisconnected:disconnectedCopy];
}

- (void)processPresetControlPointResult:(unsigned __int8)result withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [coordinatedSet objectForKey:identifierCopy];
}

- (void)processHearingAidFeatures:(id)features
{
  featuresCopy = features;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [coordinatedSet objectForKey:featuresCopy];

  if (v6)
  {
    hasInterface = [v6 hasInterface];
    binauralHearingAid = [hasInterface binauralHearingAid];

    if (binauralHearingAid)
    {
      binauralHearingAidSet = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
      v10 = [binauralHearingAidSet containsObject:featuresCopy];

      if (v10)
      {
        goto LABEL_9;
      }

      binauralHearingAidSet2 = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
      [binauralHearingAidSet2 addObject:featuresCopy];

      v12 = qword_1000A9FE0;
      if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *v15 = 138412290;
      *&v15[4] = featuresCopy;
      v13 = "Hearing Aid %@ added to our Binaural Hearing Aid Set";
    }

    else
    {
      v12 = qword_1000A9FE0;
      if (!os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:
        v14 = [LEAudioXPCSession instance:*v15];
        [v14 supportedFeaturesUpdated:v6];

        goto LABEL_10;
      }

      *v15 = 138412290;
      *&v15[4] = featuresCopy;
      v13 = "Hearing Aid %@ not part of any Binaural Hearing Aid Set";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v15, 0xCu);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)processActivePresetIndex:(unsigned __int8)index withIdentifier:(id)identifier
{
  indexCopy = index;
  identifierCopy = identifier;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v14 = [coordinatedSet objectForKey:identifierCopy];

  v8 = v14;
  if (v14)
  {
    hasInterface = [v14 hasInterface];
    presets = [hasInterface presets];
    v11 = [NSNumber numberWithInt:indexCopy];
    v12 = [presets objectForKey:v11];

    if (v12)
    {
      [v12 printHASPresetRecord];
      v13 = +[LEAudioXPCSession instance];
      [v13 activePresetUpdated:v14 withIndex:indexCopy];
    }

    v8 = v14;
  }
}

- (void)processReadPresetsResponse:(unsigned __int8)response withIdentifier:(id)identifier
{
  responseCopy = response;
  identifierCopy = identifier;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v8 = [coordinatedSet objectForKey:identifierCopy];

  if (v8)
  {
    hasInterface = [v8 hasInterface];
    presets = [hasInterface presets];
    v11 = [NSNumber numberWithInt:responseCopy];
    v12 = [presets objectForKey:v11];

    if (v12)
    {
      [v12 printHASPresetRecord];
      if ([v12 isLast])
      {
        v13 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Read all presets", v15, 2u);
        }

        v14 = +[LEAudioXPCSession instance];
        [v14 presetsUpdated:v8];
      }
    }
  }
}

- (void)processPresetNameChanged:(unsigned __int8)changed withIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v14 = [coordinatedSet objectForKey:identifierCopy];

  v8 = v14;
  if (v14)
  {
    hasInterface = [v14 hasInterface];
    presets = [hasInterface presets];
    v11 = [NSNumber numberWithInt:changedCopy];
    v12 = [presets objectForKey:v11];

    if (v12)
    {
      [v12 printHASPresetRecord];
      v13 = +[LEAudioXPCSession instance];
      [v13 presetNameUpdated:v14 withIndex:changedCopy];
    }

    v8 = v14;
  }
}

- (void)processPresetRecordAdded:(unsigned __int8)added withIdentifier:(id)identifier
{
  addedCopy = added;
  identifierCopy = identifier;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v14 = [coordinatedSet objectForKey:identifierCopy];

  v8 = v14;
  if (v14)
  {
    hasInterface = [v14 hasInterface];
    presets = [hasInterface presets];
    v11 = [NSNumber numberWithInt:addedCopy];
    v12 = [presets objectForKey:v11];

    if (v12)
    {
      [v12 printHASPresetRecord];
      v13 = +[LEAudioXPCSession instance];
      [v13 presetsUpdated:v14];
    }

    v8 = v14;
  }
}

- (void)processPresetRecordDeleted:(unsigned __int8)deleted withIdentifier:(id)identifier
{
  deletedCopy = deleted;
  identifierCopy = identifier;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v14 = [coordinatedSet objectForKey:identifierCopy];

  v8 = v14;
  if (v14)
  {
    hasInterface = [v14 hasInterface];
    presets = [hasInterface presets];
    v11 = [NSNumber numberWithInt:deletedCopy];
    v12 = [presets objectForKey:v11];

    if (v12)
    {
      [v12 printHASPresetRecord];
      v13 = +[LEAudioXPCSession instance];
      [v13 presetsUpdated:v14];
    }

    v8 = v14;
  }
}

- (void)processPresetRecordAvailable:(unsigned __int8)available withIdentifier:(id)identifier
{
  availableCopy = available;
  identifierCopy = identifier;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v13 = [coordinatedSet objectForKey:identifierCopy];

  v8 = v13;
  if (v13)
  {
    hasInterface = [v13 hasInterface];
    presets = [hasInterface presets];
    v11 = [NSNumber numberWithInt:availableCopy];
    v12 = [presets objectForKey:v11];

    if (v12)
    {
      [v12 printHASPresetRecord];
    }

    v8 = v13;
  }
}

- (void)processPresetRecordUnavailable:(unsigned __int8)unavailable withIdentifier:(id)identifier
{
  unavailableCopy = unavailable;
  identifierCopy = identifier;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v13 = [coordinatedSet objectForKey:identifierCopy];

  v8 = v13;
  if (v13)
  {
    hasInterface = [v13 hasInterface];
    presets = [hasInterface presets];
    v11 = [NSNumber numberWithInt:unavailableCopy];
    v12 = [presets objectForKey:v11];

    if (v12)
    {
      [v12 printHASPresetRecord];
    }

    v8 = v13;
  }
}

- (void)HAPReadPresetsRequest:(id)request withStartIndex:(unsigned __int8)index withNumPresets:(unsigned __int8)presets
{
  presetsCopy = presets;
  indexCopy = index;
  requestCopy = request;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v11 = [coordinatedSet objectForKey:requestCopy];

  if (v11)
  {
    hasInterface = [v11 hasInterface];

    if (hasInterface)
    {
      [v11 sendReadPresetsRequest:indexCopy withNumPresets:presetsCopy];
    }
  }
}

- (void)HAPWritePresetName:(id)name withIndex:(unsigned __int8)index withName:(id)withName
{
  indexCopy = index;
  nameCopy = name;
  withNameCopy = withName;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v11 = [coordinatedSet objectForKey:nameCopy];

  if (v11)
  {
    hasInterface = [v11 hasInterface];

    if (hasInterface)
    {
      hasInterface2 = [v11 hasInterface];
      binauralHearingAid = [hasInterface2 binauralHearingAid];

      if (binauralHearingAid && ([v11 hasInterface], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "independentPresets"), v15, (v16 & 1) == 0))
      {
        peripheral = [v11 peripheral];
        identifier = [peripheral identifier];
        v19 = [(ClientHearingAccessProfile *)self getSecondBinauraldHearingAid:identifier];

        if (v19)
        {
          binauralHearingAidSet = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
          v21 = [(ClientCommonAudioProfile *)self getOrderedAccessSet:binauralHearingAidSet];

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v29;
            do
            {
              v26 = 0;
              do
              {
                if (*v29 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                [*(*(&v28 + 1) + 8 * v26) sendWritePresetName:indexCopy withName:{withNameCopy, v28}];
                v26 = v26 + 1;
              }

              while (v24 != v26);
              v24 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
            }

            while (v24);
          }
        }

        else
        {
          v27 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
            sub_10005ED50(v27);
          }
        }
      }

      else
      {
        [v11 sendWritePresetName:indexCopy withName:withNameCopy];
      }
    }
  }
}

- (void)HAPSetActivePreset:(id)preset withIndex:(unsigned __int8)index
{
  indexCopy = index;
  presetCopy = preset;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v8 = [coordinatedSet objectForKey:presetCopy];

  if (v8)
  {
    hasInterface = [v8 hasInterface];

    if (hasInterface)
    {
      hasInterface2 = [v8 hasInterface];
      presetSyncSupported = [hasInterface2 presetSyncSupported];

      if (presetSyncSupported)
      {
        [v8 sendSetActivePresetSyncLocally:indexCopy];
        goto LABEL_21;
      }

      hasInterface3 = [v8 hasInterface];
      binauralHearingAid = [hasInterface3 binauralHearingAid];

      if (binauralHearingAid)
      {
        peripheral = [v8 peripheral];
        identifier = [peripheral identifier];
        v16 = [(ClientHearingAccessProfile *)self getSecondBinauraldHearingAid:identifier];

        if (v16)
        {
          hasInterface4 = [v16 hasInterface];
          presetSyncSupported2 = [hasInterface4 presetSyncSupported];

          if (presetSyncSupported2)
          {
            [v16 sendSetActivePresetSyncLocally:indexCopy];
LABEL_20:

            goto LABEL_21;
          }

          hasInterface5 = [v8 hasInterface];
          independentPresets = [hasInterface5 independentPresets];

          if ((independentPresets & 1) == 0)
          {
            binauralHearingAidSet = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
            v22 = [(ClientCommonAudioProfile *)self getOrderedAccessSet:binauralHearingAidSet];

            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v23 = v22;
            v24 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v29;
              do
              {
                for (i = 0; i != v25; i = i + 1)
                {
                  if (*v29 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  [*(*(&v28 + 1) + 8 * i) sendSetActivePreset:{indexCopy, v28}];
                }

                v25 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
              }

              while (v25);
            }

            goto LABEL_20;
          }
        }
      }

      [v8 sendSetActivePreset:indexCopy];
    }
  }

LABEL_21:
}

- (void)HAPSetNextPreset:(id)preset
{
  presetCopy = preset;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [coordinatedSet objectForKey:presetCopy];

  if (v6)
  {
    hasInterface = [v6 hasInterface];

    if (hasInterface)
    {
      hasInterface2 = [v6 hasInterface];
      presetSyncSupported = [hasInterface2 presetSyncSupported];

      if (presetSyncSupported)
      {
        [v6 sendSetNextPresetSyncLocally];
        goto LABEL_21;
      }

      hasInterface3 = [v6 hasInterface];
      binauralHearingAid = [hasInterface3 binauralHearingAid];

      if (binauralHearingAid)
      {
        peripheral = [v6 peripheral];
        identifier = [peripheral identifier];
        v14 = [(ClientHearingAccessProfile *)self getSecondBinauraldHearingAid:identifier];

        if (v14)
        {
          hasInterface4 = [v14 hasInterface];
          presetSyncSupported2 = [hasInterface4 presetSyncSupported];

          if (presetSyncSupported2)
          {
            [v14 sendSetNextPresetSyncLocally];
LABEL_20:

            goto LABEL_21;
          }

          hasInterface5 = [v6 hasInterface];
          independentPresets = [hasInterface5 independentPresets];

          if ((independentPresets & 1) == 0)
          {
            binauralHearingAidSet = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
            v20 = [(ClientCommonAudioProfile *)self getOrderedAccessSet:binauralHearingAidSet];

            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v21 = v20;
            v22 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v27;
              do
              {
                for (i = 0; i != v23; i = i + 1)
                {
                  if (*v27 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  [*(*(&v26 + 1) + 8 * i) sendSetNextPreset];
                }

                v23 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
              }

              while (v23);
            }

            goto LABEL_20;
          }
        }
      }

      [v6 sendSetNextPreset];
    }
  }

LABEL_21:
}

- (void)HAPSetPreviousPreset:(id)preset
{
  presetCopy = preset;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v6 = [coordinatedSet objectForKey:presetCopy];

  if (v6)
  {
    hasInterface = [v6 hasInterface];

    if (hasInterface)
    {
      hasInterface2 = [v6 hasInterface];
      presetSyncSupported = [hasInterface2 presetSyncSupported];

      if (presetSyncSupported)
      {
        [v6 sendSetPreviousPresetSyncLocally];
        goto LABEL_21;
      }

      hasInterface3 = [v6 hasInterface];
      binauralHearingAid = [hasInterface3 binauralHearingAid];

      if (binauralHearingAid)
      {
        peripheral = [v6 peripheral];
        identifier = [peripheral identifier];
        v14 = [(ClientHearingAccessProfile *)self getSecondBinauraldHearingAid:identifier];

        if (v14)
        {
          hasInterface4 = [v14 hasInterface];
          presetSyncSupported2 = [hasInterface4 presetSyncSupported];

          if (presetSyncSupported2)
          {
            [v14 sendSetPreviousPresetSyncLocally];
LABEL_20:

            goto LABEL_21;
          }

          hasInterface5 = [v6 hasInterface];
          independentPresets = [hasInterface5 independentPresets];

          if ((independentPresets & 1) == 0)
          {
            binauralHearingAidSet = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
            v20 = [(ClientCommonAudioProfile *)self getOrderedAccessSet:binauralHearingAidSet];

            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v21 = v20;
            v22 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v27;
              do
              {
                for (i = 0; i != v23; i = i + 1)
                {
                  if (*v27 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  [*(*(&v26 + 1) + 8 * i) sendSetPreviousPreset];
                }

                v23 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
              }

              while (v23);
            }

            goto LABEL_20;
          }
        }
      }

      [v6 sendSetPreviousPreset];
    }
  }

LABEL_21:
}

- (void)HAPReadActivePresetIndex:(id)index
{
  indexCopy = index;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [coordinatedSet objectForKey:indexCopy];

  if (v7)
  {
    hasInterface = [v7 hasInterface];

    if (hasInterface)
    {
      [v7 sendReadActivePresetIndex];
    }
  }
}

- (void)HAPReadHearingAidFeatures:(id)features
{
  featuresCopy = features;
  coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
  v7 = [coordinatedSet objectForKey:featuresCopy];

  if (v7)
  {
    hasInterface = [v7 hasInterface];

    if (hasInterface)
    {
      [v7 sendReadHearingAidFeatures];
    }
  }
}

- (void)HAPSendReadPresetsRequest:(id)request withStartIndex:(unsigned __int8)index withNumPresets:(unsigned __int8)presets
{
  presetsCopy = presets;
  indexCopy = index;
  requestCopy = request;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [requestCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(requestCopy);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
        v15 = [coordinatedSet objectForKey:v13];

        if (v15)
        {
          [v15 sendReadPresetsRequest:indexCopy withNumPresets:presetsCopy];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [requestCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)HAPSendWritePresetName:(id)name withIndex:(unsigned __int8)index withName:(id)withName
{
  indexCopy = index;
  nameCopy = name;
  withNameCopy = withName;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [nameCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(nameCopy);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
        v16 = [coordinatedSet objectForKey:v14];

        if (v16)
        {
          [v16 sendWritePresetName:indexCopy withName:withNameCopy];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [nameCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)HAPSendSetActivePreset:(id)preset withIndex:(unsigned __int8)index syncLocally:(BOOL)locally
{
  locallyCopy = locally;
  indexCopy = index;
  presetCopy = preset;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [presetCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(presetCopy);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
        v15 = [coordinatedSet objectForKey:v13];

        if (v15)
        {
          if (locallyCopy)
          {
            [v15 sendSetActivePresetSyncLocally:indexCopy];
          }

          else
          {
            [v15 sendSetActivePreset:indexCopy];
          }
        }
      }

      v10 = [presetCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)HAPSendSetNextPreset:(id)preset syncLocally:(BOOL)locally
{
  locallyCopy = locally;
  presetCopy = preset;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [presetCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(presetCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
        v13 = [coordinatedSet objectForKey:v11];

        if (v13)
        {
          if (locallyCopy)
          {
            [v13 sendSetNextPresetSyncLocally];
          }

          else
          {
            [v13 sendSetNextPreset];
          }
        }
      }

      v8 = [presetCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)HAPSendSetPreviousPreset:(id)preset syncLocally:(BOOL)locally
{
  locallyCopy = locally;
  presetCopy = preset;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [presetCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(presetCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
        v13 = [coordinatedSet objectForKey:v11];

        if (v13)
        {
          if (locallyCopy)
          {
            [v13 sendSetPreviousPresetSyncLocally];
          }

          else
          {
            [v13 sendSetPreviousPreset];
          }
        }
      }

      v8 = [presetCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)getSecondBinauraldHearingAid:(id)aid
{
  aidCopy = aid;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  binauralHearingAidSet = [(ClientHearingAccessProfile *)self binauralHearingAidSet];
  v6 = [binauralHearingAidSet countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(binauralHearingAidSet);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v10 != aidCopy)
        {
          coordinatedSet = [(ClientCommonAudioProfile *)self coordinatedSet];
          v11 = [coordinatedSet objectForKey:v10];

          goto LABEL_11;
        }
      }

      v7 = [binauralHearingAidSet countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

@end
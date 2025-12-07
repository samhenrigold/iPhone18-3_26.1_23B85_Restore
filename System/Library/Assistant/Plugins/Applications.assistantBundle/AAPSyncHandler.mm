@interface AAPSyncHandler
+ (void)_checkIfResetIsNeededForKey:(id)key withStartAnchorString:(id)string validity:(id)validity lastState:(id)state completion:(id)completion;
- (AAPSyncHandler)init;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info configuration:(id)configuration;
- (void)dealloc;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)sourceIsReady:(id)ready;
- (void)syncDidEnd;
@end

@implementation AAPSyncHandler

- (AAPSyncHandler)init
{
  v6.receiver = self;
  v6.super_class = AAPSyncHandler;
  v2 = [(AAPSyncHandler *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create([[NSString UTF8String:@"%@.state"] stringWithFormat:?];
    v2->_stateQueue = v3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_37C0;
    block[3] = &unk_20840;
    block[4] = v2;
    dispatch_async(v3, block);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_stateQueue);

  v3.receiver = self;
  v3.super_class = AAPSyncHandler;
  [(AAPSyncHandler *)&v3 dealloc];
}

+ (void)_checkIfResetIsNeededForKey:(id)key withStartAnchorString:(id)string validity:(id)validity lastState:(id)state completion:(id)completion
{
  v50 = 0;
  v11 = [AAPSyncAnchor anchorFromStringRepresentation:string error:&v50];
  v12 = +[LSApplicationWorkspace defaultWorkspace];
  if (v12)
  {
    *buf = 0;
    v49 = 0;
    [v12 getKnowledgeUUID:buf andSequenceNumber:&v49];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [objc_msgSend(*buf "UUIDString")];
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_F9B4();
      }

      v13 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = +[AAPSyncPrimitiveAnchor anchorFromIndex:](AAPSyncPrimitiveAnchor, "anchorFromIndex:", [v49 unsignedIntegerValue]);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_FA28();
      }

      v15 = 0;
    }
  }

  else
  {
    v14 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_FA9C(v14);
    }

    v15 = 0;
    v13 = 0;
  }

  if ((objc_msgSend_isEqualToString_(@"com.apple.siri.applications") & 1) == 0)
  {
    [NSException raise:@"wrong syncKey" format:@"expecting %@", @"com.apple.siri.applications"];
    goto LABEL_39;
  }

  if (string && !v11)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_FB20();
    }

    goto LABEL_39;
  }

  if (!v13 || ([state validity], !objc_msgSend_isEqualToString_(v13)) || !objc_msgSend_isEqualToString_(v13))
  {
    v45 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      validity = [state validity];
      *buf = 136315906;
      *&buf[4] = "+[AAPSyncHandler _checkIfResetIsNeededForKey:withStartAnchorString:validity:lastState:completion:]";
      v52 = 2114;
      v53 = v13;
      v54 = 2114;
      v55 = validity;
      v56 = 2114;
      validityCopy = validity;
      v42 = "%s com.apple.siri.applications: validity check failed: MI-'%{public}@' Internal-'%{public}@' Sync-'%{public}@'";
      v43 = v45;
      v44 = 42;
      goto LABEL_44;
    }

LABEL_39:
    v11 = 0;
    v46 = 1;
    goto LABEL_40;
  }

  v16 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
  {
    sub_FB94(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  version = [state version];
  v25 = AFSiriLogContextPlugin;
  v26 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG);
  if (version != &dword_4)
  {
    if (v26)
    {
      sub_FC0C(state);
    }

    goto LABEL_39;
  }

  if (v26)
  {
    sub_FCB0(v25, v27, v28, v29, v30, v31, v32, v33);
  }

  keyAnchor = [state keyAnchor];
  v35 = [keyAnchor isNewerThanAnchor:v15];
  if (!v15 || (v35 & 1) != 0)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_FD28();
    }

    goto LABEL_39;
  }

  v48 = keyAnchor;
  startAnchor = [state startAnchor];
  v37 = [v11 isOlderThanAnchor:startAnchor];
  v38 = [v11 isNewerThanAnchor:v15];
  if (startAnchor)
  {
    v39 = 1;
  }

  else
  {
    v39 = (v11 != 0) & v38;
  }

  v40 = AFSiriLogContextPlugin;
  v41 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG);
  if (v39 == 1 && ((v37 | v38) & 1) != 0)
  {
    if (v41)
    {
      *buf = 136316162;
      *&buf[4] = "+[AAPSyncHandler _checkIfResetIsNeededForKey:withStartAnchorString:validity:lastState:completion:]";
      v52 = 2114;
      v53 = startAnchor;
      v54 = 2114;
      v55 = v11;
      v56 = 2114;
      validityCopy = v48;
      v58 = 2114;
      v59 = v15;
      v42 = "%s com.apple.siri.applications: startAnchor check failed: lastStart=%{public}@ start=%{public}@ lastKey=%{public}@ key=%{public}@";
      v43 = v40;
      v44 = 52;
LABEL_44:
      _os_log_debug_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, v42, buf, v44);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (v41)
  {
    *buf = 136316162;
    *&buf[4] = "+[AAPSyncHandler _checkIfResetIsNeededForKey:withStartAnchorString:validity:lastState:completion:]";
    v52 = 2114;
    v53 = startAnchor;
    v54 = 2114;
    v55 = v11;
    v56 = 2114;
    validityCopy = v48;
    v58 = 2114;
    v59 = v15;
    _os_log_debug_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: startAnchor checks out:  lastStart=%{public}@ start=%{public}@ lastKey=%{public}@ key=%{public}@", buf, 0x34u);
  }

  v46 = 0;
LABEL_40:
  (*(completion + 2))(completion, v46, v11, v15, v13);
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info configuration:(id)configuration
{
  stateQueue = self->_stateQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3E28;
  v9[3] = &unk_20890;
  v9[4] = self;
  v9[5] = key;
  v9[6] = anchor;
  v9[7] = validity;
  v9[8] = info;
  v9[9] = configuration;
  dispatch_sync(stateQueue, v9);
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  v12 = 0;
  v7 = [AAPSyncAnchor anchorFromStringRepresentation:anchor error:&v12];
  v8 = v7;
  if (anchor && !v7)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_FEE0();
    }

LABEL_5:
    [info setPostAnchor:anchor];
    return;
  }

  processor = self->_processor;
  if (!processor)
  {
    source = self->_source;
    v11 = AFSiriLogContextPlugin;
    if (source)
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_FF54(v11);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[AAPSyncHandler getChangeAfterAnchor:changeInfo:]";
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: nothing to do - terminating sync", buf, 0xCu);
    }

    goto LABEL_5;
  }

  [(AAPSyncMetaDataProcessor *)processor processNextChange:info afterAnchor:v8];
}

- (void)syncDidEnd
{
  v2 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[AAPSyncHandler syncDidEnd]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: sync did end", &v3, 0xCu);
  }
}

- (void)sourceIsReady:(id)ready
{
  stateQueue = self->_stateQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4594;
  v4[3] = &unk_208B8;
  v4[4] = ready;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

@end
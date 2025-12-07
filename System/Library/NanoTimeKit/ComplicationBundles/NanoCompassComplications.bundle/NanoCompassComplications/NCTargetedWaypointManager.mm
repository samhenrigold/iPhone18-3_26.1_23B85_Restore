@interface NCTargetedWaypointManager
+ (id)sharedManager;
- (NCTargetedWaypointManager)init;
- (id)fetchTargetedWaypointUUID;
- (void)_loadTargetedWaypointUUID;
- (void)setTargetedWaypointUUID:(id)d;
@end

@implementation NCTargetedWaypointManager

+ (id)sharedManager
{
  if (qword_27E1C4A98 != -1)
  {
    sub_23BD65548();
  }

  v3 = qword_27E1C4A90;

  return v3;
}

- (NCTargetedWaypointManager)init
{
  v7.receiver = self;
  v7.super_class = NCTargetedWaypointManager;
  v2 = [(NCTargetedWaypointManager *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend__loadTargetedWaypointUUID(v2, v3, v4);
  }

  return v5;
}

- (void)setTargetedWaypointUUID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = dCopy;
  targetedWaypointUUID = self->_targetedWaypointUUID;
  p_targetedWaypointUUID = &self->_targetedWaypointUUID;
  v8 = targetedWaypointUUID;
  if (targetedWaypointUUID != dCopy && (objc_msgSend_isEqual_(dCopy, v6, v8) & 1) == 0)
  {
    objc_storeStrong(p_targetedWaypointUUID, d);
    v11 = objc_alloc(MEMORY[0x277CBEBD0]);
    v13 = objc_msgSend_initWithSuiteName_(v11, v12, @"com.apple.compass");
    v14 = *p_targetedWaypointUUID;
    v15 = NCLogForCategory(7uLL);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v17 = *p_targetedWaypointUUID;
        v23 = 136315394;
        v24 = "[NCTargetedWaypointManager setTargetedWaypointUUID:]";
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_DEFAULT, "%s: setting target waypoint default to %@.", &v23, 0x16u);
      }

      v20 = objc_msgSend_UUIDString(*p_targetedWaypointUUID, v18, v19);
      objc_msgSend_setObject_forKey_(v13, v21, v20, @"TargetedWaypointUUID");
    }

    else
    {
      if (v16)
      {
        v23 = 136315138;
        v24 = "[NCTargetedWaypointManager setTargetedWaypointUUID:]";
        _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_DEFAULT, "%s: target waypoint uuid is nil, removing from defaults.", &v23, 0xCu);
      }

      objc_msgSend_removeObjectForKey_(v13, v22, @"TargetedWaypointUUID");
    }
  }
}

- (id)fetchTargetedWaypointUUID
{
  objc_msgSend__loadTargetedWaypointUUID(self, a2, v2);
  targetedWaypointUUID = self->_targetedWaypointUUID;

  return targetedWaypointUUID;
}

- (void)_loadTargetedWaypointUUID
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v13 = objc_msgSend_initWithSuiteName_(v3, v4, @"com.apple.compass");
  objc_msgSend_synchronize(v13, v5, v6);
  v8 = objc_msgSend_objectForKey_(v13, v7, @"TargetedWaypointUUID");
  v9 = v8;
  if (v8)
  {
    v10 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = objc_msgSend_initWithUUIDString_(v10, v11, v9);
  }

  targetedWaypointUUID = self->_targetedWaypointUUID;
  self->_targetedWaypointUUID = v8;
}

@end
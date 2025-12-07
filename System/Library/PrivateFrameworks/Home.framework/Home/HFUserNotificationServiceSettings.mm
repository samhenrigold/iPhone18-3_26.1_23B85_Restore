@interface HFUserNotificationServiceSettings
+ (id)combinedConditionForBulletinBoardNotifications:(id)notifications;
- (HFUserNotificationServiceSettings)initWithBulletinBoardNotifications:(id)notifications;
- (HFUserNotificationServiceSettings)initWithNotificationsEnabled:(BOOL)enabled condition:(id)condition smartCameraNotificationCondition:(id)notificationCondition;
- (id)applySettingsToBulletinBoardNotifications:(id)notifications;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HFUserNotificationServiceSettings

- (HFUserNotificationServiceSettings)initWithBulletinBoardNotifications:(id)notifications
{
  v46 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  if ([notificationsCopy count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v34 = notificationsCopy;
    obj = notificationsCopy;
    v39 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    v5 = 0;
    v6 = 0;
    if (v39)
    {
      v38 = *v41;
      v35 = *MEMORY[0x277CD0EC0];
      v36 = *MEMORY[0x277CD0E38];
      do
      {
        v7 = 0;
        do
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v40 + 1) + 8 * v7);
          isEnabled = [v8 isEnabled];
          objc_opt_class();
          v10 = v8;
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;

          if (v12)
          {
            cameraUserSettings = [v12 cameraUserSettings];
            if ([cameraUserSettings accessModeForPresenceType:3] == 2)
            {
              v14 = 1;
            }

            else
            {
              cameraUserSettings2 = [v12 cameraUserSettings];
              v14 = [cameraUserSettings2 accessModeForPresenceType:4] == 2;
            }

            condition = [v12 condition];

            if (condition)
            {
              v20 = 1;
            }

            else
            {
              v20 = !v14;
            }

            if (v20)
            {
              self->_smartDetectionNotificationsEnabled = [v10 isEnabled];
            }

            else
            {
              v21 = +[HFCameraSignificantEventConfiguration defaultSmartMotionConfiguration];
              predicateRepresentation = [v21 predicateRepresentation];

              [(HFUserNotificationServiceSettings *)self setSmartCameraNotificationCondition:predicateRepresentation];
              v44 = v12;
              v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
              v24 = [(HFUserNotificationServiceSettings *)self applySettingsToBulletinBoardNotifications:v23];

              self->_smartDetectionNotificationsEnabled = 1;
            }

            condition2 = [v10 condition];

            v5 = condition2;
          }

          else
          {
            v15 = objc_msgSend_service(v10);
            serviceType = [v15 serviceType];
            v17 = [serviceType isEqualToString:v36];

            if (v17)
            {
              self->_doorbellNotificationsEnabled = [v10 isEnabled];
            }

            else
            {
              v26 = objc_msgSend_service(v10);
              serviceType2 = [v26 serviceType];
              v28 = [serviceType2 isEqualToString:v35];

              if (v28)
              {
                self->_motionNotificationsEnabled = [v10 isEnabled];
              }
            }
          }

          v6 |= isEnabled;

          ++v7;
        }

        while (v39 != v7);
        v29 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        v39 = v29;
      }

      while (v29);
    }

    v30 = [obj na_filter:&__block_literal_global_167];
    v31 = [objc_opt_class() combinedConditionForBulletinBoardNotifications:v30];
    self = [(HFUserNotificationServiceSettings *)self initWithNotificationsEnabled:v6 & 1 condition:v31 smartCameraNotificationCondition:v5];

    selfCopy = self;
    notificationsCopy = v34;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

BOOL __72__HFUserNotificationServiceSettings_initWithBulletinBoardNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v5 == 0;
}

- (HFUserNotificationServiceSettings)initWithNotificationsEnabled:(BOOL)enabled condition:(id)condition smartCameraNotificationCondition:(id)notificationCondition
{
  conditionCopy = condition;
  notificationConditionCopy = notificationCondition;
  v14.receiver = self;
  v14.super_class = HFUserNotificationServiceSettings;
  v11 = [(HFUserNotificationServiceSettings *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_notificationsEnabled = enabled;
    objc_storeStrong(&v11->_notificationCondition, condition);
    objc_storeStrong(&v12->_smartCameraNotificationCondition, notificationCondition);
  }

  return v12;
}

- (id)applySettingsToBulletinBoardNotifications:(id)notifications
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HFUserNotificationServiceSettings_applySettingsToBulletinBoardNotifications___block_invoke;
  v7[3] = &unk_277DFE750;
  v7[4] = self;
  v3 = [notifications na_map:v7];
  v4 = [MEMORY[0x277D2C900] combineAllFutures:v3];
  v5 = [v4 flatMap:&__block_literal_global_8_7];

  return v5;
}

id __79__HFUserNotificationServiceSettings_applySettingsToBulletinBoardNotifications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_msgSend_service(v3);
  v5 = [v4 serviceType];
  v6 = [v5 isEqualToString:*MEMORY[0x277CD0E38]];

  v7 = objc_msgSend_service(v3);
  v8 = [v7 serviceType];
  v9 = [v8 isEqualToString:*MEMORY[0x277CD0EC0]];

  objc_opt_class();
  v10 = v3;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = *(a1 + 32);
  if (v12)
  {
    [v10 setEnabled:{objc_msgSend(v13, "areSmartDetectionNotificationsEnabled")}];
    v14 = [*(a1 + 32) smartCameraNotificationCondition];
  }

  else
  {
    if (v6)
    {
      v15 = [v13 areDoorbellNotificationsEnabled];
    }

    else if (v9)
    {
      v15 = [v13 areMotionNotificationsEnabled];
    }

    else
    {
      v15 = [v13 areNotificationsEnabled];
    }

    [v10 setEnabled:v15];
    v14 = [*(a1 + 32) notificationCondition];
  }

  v16 = v14;
  [v10 setCondition:v14];

  v17 = MEMORY[0x277D2C900];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__HFUserNotificationServiceSettings_applySettingsToBulletinBoardNotifications___block_invoke_2;
  v21[3] = &unk_277DF2C68;
  v22 = v10;
  v18 = v10;
  v19 = [v17 futureWithErrorOnlyHandlerAdapterBlock:v21];

  return v19;
}

+ (id)combinedConditionForBulletinBoardNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v4 = [notificationsCopy na_filter:&__block_literal_global_10_8];
  if ([v4 count] > 1)
  {
    firstObject = [v4 firstObject];
    condition = [firstObject condition];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__HFUserNotificationServiceSettings_combinedConditionForBulletinBoardNotifications___block_invoke_2;
    v12[3] = &unk_277DFE778;
    firstObject2 = condition;
    v13 = firstObject2;
    if ([v4 na_all:v12])
    {
      condition2 = firstObject2;
    }

    else
    {
      v9 = MEMORY[0x277CCA920];
      v10 = [notificationsCopy na_map:&__block_literal_global_14_8];
      condition2 = [v9 orPredicateWithSubpredicates:v10];
    }
  }

  else
  {
    firstObject2 = [notificationsCopy firstObject];
    condition2 = [firstObject2 condition];
  }

  return condition2;
}

BOOL __84__HFUserNotificationServiceSettings_combinedConditionForBulletinBoardNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 condition];
  v3 = v2 != 0;

  return v3;
}

uint64_t __84__HFUserNotificationServiceSettings_combinedConditionForBulletinBoardNotifications___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 condition];
  v4 = v2;
  v5 = v3;
  if (v4 == v5)
  {
    v6 = 1;
  }

  else if (v4)
  {
    v6 = [v4 isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFUserNotificationServiceSettings alloc];
  areNotificationsEnabled = [(HFUserNotificationServiceSettings *)self areNotificationsEnabled];
  notificationCondition = [(HFUserNotificationServiceSettings *)self notificationCondition];
  smartCameraNotificationCondition = [(HFUserNotificationServiceSettings *)self smartCameraNotificationCondition];
  v8 = [(HFUserNotificationServiceSettings *)v4 initWithNotificationsEnabled:areNotificationsEnabled condition:notificationCondition smartCameraNotificationCondition:smartCameraNotificationCondition];

  [(HFUserNotificationServiceSettings *)v8 setDoorbellNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areDoorbellNotificationsEnabled]];
  [(HFUserNotificationServiceSettings *)v8 setSmartDetectionNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areSmartDetectionNotificationsEnabled]];
  [(HFUserNotificationServiceSettings *)v8 setMotionNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areMotionNotificationsEnabled]];
  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HFMutableUserNotificationServiceSettings alloc];
  areNotificationsEnabled = [(HFUserNotificationServiceSettings *)self areNotificationsEnabled];
  notificationCondition = [(HFUserNotificationServiceSettings *)self notificationCondition];
  smartCameraNotificationCondition = [(HFUserNotificationServiceSettings *)self smartCameraNotificationCondition];
  v8 = [(HFUserNotificationServiceSettings *)v4 initWithNotificationsEnabled:areNotificationsEnabled condition:notificationCondition smartCameraNotificationCondition:smartCameraNotificationCondition];

  [(HFUserNotificationServiceSettings *)v8 setDoorbellNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areDoorbellNotificationsEnabled]];
  [(HFUserNotificationServiceSettings *)v8 setSmartDetectionNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areSmartDetectionNotificationsEnabled]];
  [(HFUserNotificationServiceSettings *)v8 setMotionNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areMotionNotificationsEnabled]];
  return v8;
}

@end
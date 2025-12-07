@interface REMAccountCapabilities
- (BOOL)isEqual:(id)equal;
- (REMAccountCapabilities)initWithAccountType:(int64_t)type;
- (unint64_t)hash;
@end

@implementation REMAccountCapabilities

- (REMAccountCapabilities)initWithAccountType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = REMAccountCapabilities;
  result = [(REMAccountCapabilities *)&v5 init];
  if (!result)
  {
    return result;
  }

  if (type <= 3)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        if (type == 3)
        {
          *&result->_supportsSubtasks = 0;
          *&result->_supportsFlagged = 0;
          result->_supportsLocation = 1;
          *&result->_supportsListShareesMutation = 1;
          result->_supportsMoveAcrossSharedLists = 0;
          *&result->_supportsEventKitSync = 16842753;
          result->_defaultReminderPriorityLevel = 0;
          *&result->_supportsReminderActions = 1;
          *&result->_supportsHourlyRecurrence = 0;
          result->_insertsCompletedRecurrentCloneAtTail = 1;
          *&result->_supportsMultipleDateAlarmsOnRecurrence = 16777217;
          *&result->_supportsCustomSmartLists = 0;
          *&result->_supportsDeletionByTTL = 0;
        }

        return result;
      }

      goto LABEL_10;
    }

    *&result->_supportsSubtasks = 0;
    *&result->_supportsFlagged = 0;
    result->_supportsLocation = 1;
    *&result->_supportsEventKitSync = 1;
    *&result->_supportsListShareesMutation = 256;
    result->_supportsMoveAcrossSharedLists = 1;
    result->_defaultReminderPriorityLevel = 0;
    *&result->_supportsReminderActions = 1;
    *&result->_supportsHourlyRecurrence = 0;
    *&result->_supportsMultipleDateAlarmsOnRecurrence = 0;
LABEL_16:
    *&result->_supportsAssignments = 0;
    *&result->_supportsRecentlyDeletedList = 0;
    return result;
  }

  if (type == 4)
  {
    *&result->_supportsSubtasks = 0;
    result->_supportsListAppearance = 0;
    *&result->_supportsGroups = 0x1000000000000;
    result->_supportsMoveAcrossSharedLists = 0;
    *&result->_supportsCalDAVNotifications = 65792;
    result->_defaultReminderPriorityLevel = 2;
    *&result->_supportsReminderActions = 0;
LABEL_15:
    *&result->_supportsMultipleDateAlarmsOnRecurrence = 1;
    goto LABEL_16;
  }

  if (type == 5)
  {
    *&result->_supportsSubtasks = 256;
    *&result->_supportsFlagged = 257;
    result->_supportsLocation = 1;
    *&result->_supportsEventKitSync = 0;
    *&result->_supportsListShareesMutation = 256;
    result->_supportsMoveAcrossSharedLists = 1;
    result->_defaultReminderPriorityLevel = 0;
    *&result->_supportsReminderActions = 1;
    *&result->_supportsHourlyRecurrence = 1;
    goto LABEL_15;
  }

  if (type != 6)
  {
    return result;
  }

LABEL_10:
  *&result->_supportsSubtasks = 257;
  result->_supportsListAppearance = 1;
  *&result->_supportsGroups = 0x100010101010101;
  *&result->_supportsCalDAVNotifications = 16777472;
  result->_supportsMoveAcrossSharedLists = 0;
  result->_defaultReminderPriorityLevel = 0;
  *&result->_supportsReminderActions = 16843009;
  result->_insertsCompletedRecurrentCloneAtTail = 0;
  *&result->_supportsMultipleDateAlarmsOnRecurrence = 16843008;
  *&result->_supportsCustomSmartLists = 16843009;
  *&result->_supportsDeletionByTTL = 16843009;
  if (type == 6)
  {
    result->_supportsTemplates = 0;
    result->_supportsPinnedLists = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0
    && (v5 = -[REMAccountCapabilities supportsSubtasks](self, "supportsSubtasks"), v5 == [equalCopy supportsSubtasks])
    && (v6 = -[REMAccountCapabilities supportsAttachments](self, "supportsAttachments"), v6 == [equalCopy supportsAttachments])
    && (v7 = -[REMAccountCapabilities supportsListAppearance](self, "supportsListAppearance"), v7 == [equalCopy supportsListAppearance])
    && (v8 = -[REMAccountCapabilities supportsCloudKitSync](self, "supportsCloudKitSync"), v8 == [equalCopy supportsCloudKitSync])
    && (v9 = -[REMAccountCapabilities supportsEventKitSync](self, "supportsEventKitSync"), v9 == [equalCopy supportsEventKitSync])
    && (v10 = -[REMAccountCapabilities supportsGroups](self, "supportsGroups"), v10 == [equalCopy supportsGroups])
    && (v11 = -[REMAccountCapabilities supportsFlagged](self, "supportsFlagged"), v11 == [equalCopy supportsFlagged])
    && (v12 = -[REMAccountCapabilities supportsLocation](self, "supportsLocation"), v12 == [equalCopy supportsLocation])
    && (v13 = -[REMAccountCapabilities supportsPersonTrigger](self, "supportsPersonTrigger"), v13 == [equalCopy supportsPersonTrigger])
    && (v14 = -[REMAccountCapabilities supportsCalDAVNotifications](self, "supportsCalDAVNotifications"), v14 == [equalCopy supportsCalDAVNotifications])
    && (v15 = -[REMAccountCapabilities supportsListSharees](self, "supportsListSharees"), v15 == [equalCopy supportsListSharees])
    && (v16 = -[REMAccountCapabilities supportsListShareesMutation](self, "supportsListShareesMutation"), v16 == [equalCopy supportsListShareesMutation])
    && (v17 = -[REMAccountCapabilities supportsMoveAcrossLists](self, "supportsMoveAcrossLists"), v17 == [equalCopy supportsMoveAcrossLists])
    && (v18 = -[REMAccountCapabilities supportsMoveAcrossSharedLists](self, "supportsMoveAcrossSharedLists"), v18 == [equalCopy supportsMoveAcrossSharedLists])
    && (v19 = -[REMAccountCapabilities supportsCRDTs](self, "supportsCRDTs"), v19 == [equalCopy supportsCRDTs])
    && (v20 = -[REMAccountCapabilities defaultReminderPriorityLevel](self, "defaultReminderPriorityLevel"), v20 == [equalCopy defaultReminderPriorityLevel])
    && (v21 = -[REMAccountCapabilities supportsHandoff](self, "supportsHandoff"), v21 == [equalCopy supportsHandoff])
    && (v22 = -[REMAccountCapabilities supportsReminderActions](self, "supportsReminderActions"), v22 == [equalCopy supportsReminderActions])
    && (v23 = -[REMAccountCapabilities supportsHourlyRecurrence](self, "supportsHourlyRecurrence"), v23 == [equalCopy supportsHourlyRecurrence])
    && (v24 = -[REMAccountCapabilities supportsMultipleDateAlarmsOnRecurrence](self, "supportsMultipleDateAlarmsOnRecurrence"), v24 == [equalCopy supportsMultipleDateAlarmsOnRecurrence])
    && (v25 = -[REMAccountCapabilities supportsAssignments](self, "supportsAssignments"), v25 == [equalCopy supportsAssignments])
    && (v26 = -[REMAccountCapabilities supportsHashtags](self, "supportsHashtags"), v26 == [equalCopy supportsHashtags])
    && (v27 = -[REMAccountCapabilities insertsCompletedRecurrentCloneAtTail](self, "insertsCompletedRecurrentCloneAtTail"), v27 == [equalCopy insertsCompletedRecurrentCloneAtTail])
    && (v28 = -[REMAccountCapabilities supportsCustomSmartLists](self, "supportsCustomSmartLists"), v28 == [equalCopy supportsCustomSmartLists])
    && (v29 = -[REMAccountCapabilities supportsGroceriesList](self, "supportsGroceriesList"), v29 == [equalCopy supportsGroceriesList])
    && (v30 = -[REMAccountCapabilities supportsTemplates](self, "supportsTemplates"), v30 == [equalCopy supportsTemplates])
    && (v31 = -[REMAccountCapabilities supportsPinnedLists](self, "supportsPinnedLists"), v31 == [equalCopy supportsPinnedLists])
    && (v32 = -[REMAccountCapabilities supportsTextStyling](self, "supportsTextStyling"), v32 == [equalCopy supportsTextStyling])
    && (v33 = -[REMAccountCapabilities supportsDeletionByTTL](self, "supportsDeletionByTTL"), v33 == [equalCopy supportsDeletionByTTL])
    && (v34 = -[REMAccountCapabilities supportsSections](self, "supportsSections"), v34 == [equalCopy supportsSections])
    && (v35 = -[REMAccountCapabilities supportsDueDateDeltaAlerts](self, "supportsDueDateDeltaAlerts"), v35 == [equalCopy supportsDueDateDeltaAlerts])
    && (v36 = -[REMAccountCapabilities supportsRecentlyDeletedList](self, "supportsRecentlyDeletedList"), v36 == [equalCopy supportsRecentlyDeletedList]))
  {
    supportsUrgentAlert = [(REMAccountCapabilities *)self supportsUrgentAlert];
    v37 = supportsUrgentAlert ^ [equalCopy supportsUrgentAlert] ^ 1;
  }

  else
  {
    LOBYTE(v37) = 0;
  }

  return v37;
}

- (unint64_t)hash
{
  if ([(REMAccountCapabilities *)self supportsSubtasks])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | [(REMAccountCapabilities *)self supportsAttachments];
  if ([(REMAccountCapabilities *)self supportsListAppearance])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | (4 * v4) | [(REMAccountCapabilities *)self supportsCloudKitSync];
  if ([(REMAccountCapabilities *)self supportsEventKitSync])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | (4 * v6) | [(REMAccountCapabilities *)self supportsGroups];
  if ([(REMAccountCapabilities *)self supportsFlagged])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | (4 * v8) | [(REMAccountCapabilities *)self supportsLocation];
  if ([(REMAccountCapabilities *)self supportsPersonTrigger])
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | (4 * v10) | [(REMAccountCapabilities *)self supportsCalDAVNotifications];
  if ([(REMAccountCapabilities *)self supportsListSharees])
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | (4 * v12) | [(REMAccountCapabilities *)self supportsListShareesMutation];
  if ([(REMAccountCapabilities *)self supportsMoveAcrossLists])
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 | (4 * v14) | [(REMAccountCapabilities *)self supportsMoveAcrossSharedLists];
  if ([(REMAccountCapabilities *)self supportsCRDTs])
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | (4 * v16);
  if ([(REMAccountCapabilities *)self defaultReminderPriorityLevel])
  {
    ++v18;
  }

  if ([(REMAccountCapabilities *)self supportsHandoff])
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | (4 * v18) | [(REMAccountCapabilities *)self supportsReminderActions];
  if ([(REMAccountCapabilities *)self supportsHourlyRecurrence])
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 | (4 * v20) | [(REMAccountCapabilities *)self supportsMultipleDateAlarmsOnRecurrence];
  if ([(REMAccountCapabilities *)self supportsAssignments])
  {
    v23 = 2;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 | (4 * v22) | [(REMAccountCapabilities *)self supportsHashtags];
  if ([(REMAccountCapabilities *)self insertsCompletedRecurrentCloneAtTail])
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 | (4 * v24) | [(REMAccountCapabilities *)self supportsCustomSmartLists];
  if ([(REMAccountCapabilities *)self supportsGroceriesList])
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 | (4 * v26) | [(REMAccountCapabilities *)self supportsTemplates];
  if ([(REMAccountCapabilities *)self supportsPinnedLists])
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29 | (4 * v28) | [(REMAccountCapabilities *)self supportsTextStyling];
  if ([(REMAccountCapabilities *)self supportsDeletionByTTL])
  {
    v31 = 2;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31 | (4 * v30) | [(REMAccountCapabilities *)self supportsSections];
  if ([(REMAccountCapabilities *)self supportsDueDateDeltaAlerts])
  {
    v33 = 2;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33 | (4 * v32) | [(REMAccountCapabilities *)self supportsRecentlyDeletedList];
  return [(REMAccountCapabilities *)self supportsUrgentAlert]| (2 * v34);
}

@end
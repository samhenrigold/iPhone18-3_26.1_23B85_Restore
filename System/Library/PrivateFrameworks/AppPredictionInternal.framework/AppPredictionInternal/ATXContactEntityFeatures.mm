@interface ATXContactEntityFeatures
- (ATXContactEntityFeatures)init;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
@end

@implementation ATXContactEntityFeatures

- (ATXContactEntityFeatures)init
{
  v17.receiver = self;
  v17.super_class = ATXContactEntityFeatures;
  v2 = [(ATXContactEntityFeatures *)&v17 init];
  v3 = v2;
  if (v2)
  {
    modeCountOfNotificationsClearedForEntity = v2->_modeCountOfNotificationsClearedForEntity;
    v2->_modeCountOfNotificationsClearedForEntity = &unk_283A57560;

    globalCountOfNotificationsClearedForEntity = v3->_globalCountOfNotificationsClearedForEntity;
    v3->_globalCountOfNotificationsClearedForEntity = &unk_283A57560;

    localNotificationsClearedRateForEntity = v3->_localNotificationsClearedRateForEntity;
    v3->_localNotificationsClearedRateForEntity = &unk_283A57560;

    globalNotificationsClearedRateForEntity = v3->_globalNotificationsClearedRateForEntity;
    v3->_globalNotificationsClearedRateForEntity = &unk_283A57560;

    ratioOfLocalToGlobalNotificationsClearedRateForEntity = v3->_ratioOfLocalToGlobalNotificationsClearedRateForEntity;
    v3->_ratioOfLocalToGlobalNotificationsClearedRateForEntity = &unk_283A57560;

    classConditionalOfNotificationsClearedForEntity = v3->_classConditionalOfNotificationsClearedForEntity;
    v3->_classConditionalOfNotificationsClearedForEntity = &unk_283A57560;

    globalCountOfNotificationsReceivedForEntity = v3->_globalCountOfNotificationsReceivedForEntity;
    v3->_globalCountOfNotificationsReceivedForEntity = &unk_283A57560;

    modeCountOfNotificationsReceivedForEntity = v3->_modeCountOfNotificationsReceivedForEntity;
    v3->_modeCountOfNotificationsReceivedForEntity = &unk_283A57560;

    localPopularityOfNotificationsReceivedForEntity = v3->_localPopularityOfNotificationsReceivedForEntity;
    v3->_localPopularityOfNotificationsReceivedForEntity = &unk_283A57560;

    globalPopularityOfNotificationsReceivedForEntity = v3->_globalPopularityOfNotificationsReceivedForEntity;
    v3->_globalPopularityOfNotificationsReceivedForEntity = &unk_283A57560;

    ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = v3->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
    v3->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = &unk_283A57560;

    classConditionalOfNotificationsReceivedForEntity = v3->_classConditionalOfNotificationsReceivedForEntity;
    v3->_classConditionalOfNotificationsReceivedForEntity = &unk_283A57560;
  }

  return v3;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v35.receiver = self;
  v35.super_class = ATXContactEntityFeatures;
  v5 = [(ATXContactEntityFeatures *)&v35 init];
  if (v5)
  {
    v6 = [nCopy objectForKeyedSubscript:@"isFavorite"];
    v5->_isFavoriteContact = [v6 BOOLValue];

    v7 = [nCopy objectForKeyedSubscript:@"isVIP"];
    v5->_isVIPContact = [v7 BOOLValue];

    v8 = [nCopy objectForKeyedSubscript:@"isEmergency"];
    v5->_isEmergencyContact = [v8 BOOLValue];

    v9 = [nCopy objectForKeyedSubscript:@"isICloudFamilyMember"];
    v5->_isICloudFamilyMember = [v9 BOOLValue];

    v10 = [nCopy objectForKeyedSubscript:@"modeCountOfNotificationsClearedForEntity"];
    modeCountOfNotificationsClearedForEntity = v5->_modeCountOfNotificationsClearedForEntity;
    v5->_modeCountOfNotificationsClearedForEntity = v10;

    v12 = [nCopy objectForKeyedSubscript:@"globalCountOfNotificationsClearedForEntity"];
    globalCountOfNotificationsClearedForEntity = v5->_globalCountOfNotificationsClearedForEntity;
    v5->_globalCountOfNotificationsClearedForEntity = v12;

    v14 = [nCopy objectForKeyedSubscript:@"localNotificationsClearedRateForEntity"];
    localNotificationsClearedRateForEntity = v5->_localNotificationsClearedRateForEntity;
    v5->_localNotificationsClearedRateForEntity = v14;

    v16 = [nCopy objectForKeyedSubscript:@"globalNotificationsClearedRateForEntity"];
    globalNotificationsClearedRateForEntity = v5->_globalNotificationsClearedRateForEntity;
    v5->_globalNotificationsClearedRateForEntity = v16;

    v18 = [nCopy objectForKeyedSubscript:@"ratioOfLocalToGlobalNotificationsClearedRateForEntity"];
    ratioOfLocalToGlobalNotificationsClearedRateForEntity = v5->_ratioOfLocalToGlobalNotificationsClearedRateForEntity;
    v5->_ratioOfLocalToGlobalNotificationsClearedRateForEntity = v18;

    v20 = [nCopy objectForKeyedSubscript:@"classConditionalOfNotificationsClearedForEntity"];
    classConditionalOfNotificationsClearedForEntity = v5->_classConditionalOfNotificationsClearedForEntity;
    v5->_classConditionalOfNotificationsClearedForEntity = v20;

    v22 = [nCopy objectForKeyedSubscript:@"globalCountOfNotificationsReceivedForEntity"];
    globalCountOfNotificationsReceivedForEntity = v5->_globalCountOfNotificationsReceivedForEntity;
    v5->_globalCountOfNotificationsReceivedForEntity = v22;

    v24 = [nCopy objectForKeyedSubscript:@"modeCountOfNotificationsReceivedForEntity"];
    modeCountOfNotificationsReceivedForEntity = v5->_modeCountOfNotificationsReceivedForEntity;
    v5->_modeCountOfNotificationsReceivedForEntity = v24;

    v26 = [nCopy objectForKeyedSubscript:@"localPopularityOfNotificationsReceivedForEntity"];
    localPopularityOfNotificationsReceivedForEntity = v5->_localPopularityOfNotificationsReceivedForEntity;
    v5->_localPopularityOfNotificationsReceivedForEntity = v26;

    v28 = [nCopy objectForKeyedSubscript:@"globalPopularityOfNotificationsReceivedForEntity"];
    globalPopularityOfNotificationsReceivedForEntity = v5->_globalPopularityOfNotificationsReceivedForEntity;
    v5->_globalPopularityOfNotificationsReceivedForEntity = v28;

    v30 = [nCopy objectForKeyedSubscript:@"ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity"];
    ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = v5->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
    v5->_ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = v30;

    v32 = [nCopy objectForKeyedSubscript:@"classConditionalOfNotificationsReceivedForEntity"];
    classConditionalOfNotificationsReceivedForEntity = v5->_classConditionalOfNotificationsReceivedForEntity;
    v5->_classConditionalOfNotificationsReceivedForEntity = v32;
  }

  return v5;
}

- (id)jsonRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  v12[0] = @"isFavorite";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFavoriteContact];
  v13[0] = v3;
  v12[1] = @"isVIP";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isVIPContact];
  v13[1] = v4;
  v12[2] = @"isEmergency";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEmergencyContact];
  v13[2] = v5;
  v12[3] = @"isICloudFamilyMember";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isICloudFamilyMember];
  modeCountOfNotificationsClearedForEntity = self->_modeCountOfNotificationsClearedForEntity;
  globalCountOfNotificationsClearedForEntity = self->_globalCountOfNotificationsClearedForEntity;
  v13[3] = v6;
  v13[4] = modeCountOfNotificationsClearedForEntity;
  v12[4] = @"modeCountOfNotificationsClearedForEntity";
  v12[5] = @"globalCountOfNotificationsClearedForEntity";
  v13[5] = globalCountOfNotificationsClearedForEntity;
  v14 = *&self->_localNotificationsClearedRateForEntity;
  v12[6] = @"localNotificationsClearedRateForEntity";
  v12[7] = @"globalNotificationsClearedRateForEntity";
  v12[8] = @"ratioOfLocalToGlobalNotificationsClearedRateForEntity";
  v12[9] = @"classConditionalOfNotificationsClearedForEntity";
  classConditionalOfNotificationsClearedForEntity = self->_classConditionalOfNotificationsClearedForEntity;
  ratioOfLocalToGlobalNotificationsClearedRateForEntity = self->_ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  v16 = classConditionalOfNotificationsClearedForEntity;
  v17 = *&self->_globalCountOfNotificationsReceivedForEntity;
  v12[10] = @"globalCountOfNotificationsReceivedForEntity";
  v12[11] = @"modeCountOfNotificationsReceivedForEntity";
  localPopularityOfNotificationsReceivedForEntity = self->_localPopularityOfNotificationsReceivedForEntity;
  v12[12] = @"localPopularityOfNotificationsReceivedForEntity";
  v12[13] = @"globalPopularityOfNotificationsReceivedForEntity";
  v19 = *&self->_globalPopularityOfNotificationsReceivedForEntity;
  v12[14] = @"ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity";
  v12[15] = @"classConditionalOfNotificationsReceivedForEntity";
  classConditionalOfNotificationsReceivedForEntity = self->_classConditionalOfNotificationsReceivedForEntity;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:16];

  return v10;
}

@end
@interface BLTPBBulletin
+ (id)_handleThumbnailResponse:(id)response attachmentMetadata:(id)metadata transcodedAttachmentSaveURL:(id)l wantsData:(BOOL)data imageContentType:(id)type;
+ (id)bulletinWithBBBulletin:(id)bulletin sockPuppetAppBundleID:(id)d observer:(id)observer feed:(unint64_t)feed teamID:(id)iD universalSectionID:(id)sectionID shouldUseExpirationDate:(BOOL)date replyToken:(id)self0 gizmoLegacyPublisherBulletinID:(id)self1 gizmoLegacyCategoryID:(id)self2 gizmoSectionID:(id)self3 gizmoSectionSubtype:(id)self4 useUserInfoForContext:(BOOL)self5 removeSubtitleForOlderWatches:(BOOL)self6;
+ (void)_addAttachmentsFromBBBulletin:(id)bulletin toBLTPBBulletin:(id)bBulletin observer:(id)observer attachOption:(unint64_t)option completion:(id)completion;
+ (void)_attachmentFromBBAttachmentMetadata:(id)metadata bulletin:(id)bulletin observer:(id)observer fileOption:(unint64_t)option attachOption:(unint64_t)attachOption completion:(id)completion;
+ (void)bulletinWithBBBulletin:(id)bulletin sockPuppetAppBundleID:(id)d observer:(id)observer feed:(unint64_t)feed teamID:(id)iD universalSectionID:(id)sectionID shouldUseExpirationDate:(BOOL)date replyToken:(id)self0 gizmoLegacyPublisherBulletinID:(id)self1 gizmoLegacyCategoryID:(id)self2 gizmoSectionID:(id)self3 gizmoSectionSubtype:(id)self4 useUserInfoForContext:(BOOL)self5 removeSubtitleForOlderWatches:(BOOL)self6 attachOption:(unint64_t)self7 completion:(id)self8;
- (BOOL)isEqual:(id)equal;
- (id)attachmentKey:(id)key;
- (id)attachmentURLURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)publisherMatchID;
- (unint64_t)hash;
- (void)addAdditionalAttachments:(id)attachments;
- (void)addPeopleIDs:(id)ds;
- (void)addSubsectionIDs:(id)ds;
- (void)addSupplementaryActions:(id)actions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAttachmentType:(BOOL)type;
- (void)setHasContainsUpdateIcon:(BOOL)icon;
- (void)setHasContainsUpdatedAttachment:(BOOL)attachment;
- (void)setHasHasCriticalIcon:(BOOL)icon;
- (void)setHasHasSubordinateIcon:(BOOL)icon;
- (void)setHasIgnoresQuietMode:(BOOL)mode;
- (void)setHasInterruptionLevel:(BOOL)level;
- (void)setHasIsHighlight:(BOOL)highlight;
- (void)setHasLoading:(BOOL)loading;
- (void)setHasPreemptsPresentedAlert:(BOOL)alert;
- (void)setHasPriorityNotificationStatus:(BOOL)status;
- (void)setHasPublicationDate:(BOOL)date;
- (void)setHasRequiredExpirationDate:(BOOL)date;
- (void)setHasSectionSubtype:(BOOL)subtype;
- (void)setHasSoundAlertType:(BOOL)type;
- (void)setHasSoundAudioVolume:(BOOL)volume;
- (void)setHasSoundMaximumDuration:(BOOL)duration;
- (void)setHasSoundShouldIgnoreRingerSwitch:(BOOL)switch;
- (void)setHasSoundShouldRepeat:(BOOL)repeat;
- (void)setHasSuppressDelayForForwardedBulletins:(BOOL)bulletins;
- (void)setHasTurnsOnDisplay:(BOOL)display;
- (void)writeTo:(id)to;
@end

@implementation BLTPBBulletin

- (void)addSupplementaryActions:(id)actions
{
  actionsCopy = actions;
  supplementaryActions = self->_supplementaryActions;
  v8 = actionsCopy;
  if (!supplementaryActions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_supplementaryActions;
    self->_supplementaryActions = v6;

    actionsCopy = v8;
    supplementaryActions = self->_supplementaryActions;
  }

  [(NSMutableArray *)supplementaryActions addObject:actionsCopy];
}

- (void)setHasSectionSubtype:(BOOL)subtype
{
  if (subtype)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasPublicationDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasSoundAlertType:(BOOL)type
{
  if (type)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasAttachmentType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasContainsUpdatedAttachment:(BOOL)attachment
{
  if (attachment)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasLoading:(BOOL)loading
{
  if (loading)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasTurnsOnDisplay:(BOOL)display
{
  if (display)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)addSubsectionIDs:(id)ds
{
  dsCopy = ds;
  subsectionIDs = self->_subsectionIDs;
  v8 = dsCopy;
  if (!subsectionIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subsectionIDs;
    self->_subsectionIDs = v6;

    dsCopy = v8;
    subsectionIDs = self->_subsectionIDs;
  }

  [(NSMutableArray *)subsectionIDs addObject:dsCopy];
}

- (void)addPeopleIDs:(id)ds
{
  dsCopy = ds;
  peopleIDs = self->_peopleIDs;
  v8 = dsCopy;
  if (!peopleIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_peopleIDs;
    self->_peopleIDs = v6;

    dsCopy = v8;
    peopleIDs = self->_peopleIDs;
  }

  [(NSMutableArray *)peopleIDs addObject:dsCopy];
}

- (void)setHasIgnoresQuietMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)addAdditionalAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  additionalAttachments = self->_additionalAttachments;
  v8 = attachmentsCopy;
  if (!additionalAttachments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_additionalAttachments;
    self->_additionalAttachments = v6;

    attachmentsCopy = v8;
    additionalAttachments = self->_additionalAttachments;
  }

  [(NSMutableArray *)additionalAttachments addObject:attachmentsCopy];
}

- (void)setHasRequiredExpirationDate:(BOOL)date
{
  if (date)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasSoundMaximumDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasSoundShouldRepeat:(BOOL)repeat
{
  if (repeat)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasSoundShouldIgnoreRingerSwitch:(BOOL)switch
{
  if (switch)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasHasCriticalIcon:(BOOL)icon
{
  if (icon)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasSoundAudioVolume:(BOOL)volume
{
  if (volume)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasPreemptsPresentedAlert:(BOOL)alert
{
  if (alert)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasSuppressDelayForForwardedBulletins:(BOOL)bulletins
{
  if (bulletins)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasContainsUpdateIcon:(BOOL)icon
{
  if (icon)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasInterruptionLevel:(BOOL)level
{
  if (level)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasHasSubordinateIcon:(BOOL)icon
{
  if (icon)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasPriorityNotificationStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasIsHighlight:(BOOL)highlight
{
  if (highlight)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBBulletin;
  v4 = [(BLTPBBulletin *)&v8 description];
  dictionaryRepresentation = [(BLTPBBulletin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v102 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  bulletinID = self->_bulletinID;
  if (bulletinID)
  {
    [dictionary setObject:bulletinID forKey:@"bulletinID"];
  }

  sectionID = self->_sectionID;
  if (sectionID)
  {
    [v4 setObject:sectionID forKey:@"sectionID"];
  }

  sectionDisplayName = self->_sectionDisplayName;
  if (sectionDisplayName)
  {
    [v4 setObject:sectionDisplayName forKey:@"sectionDisplayName"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  messageTitle = self->_messageTitle;
  if (messageTitle)
  {
    [v4 setObject:messageTitle forKey:@"messageTitle"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [v4 setObject:v11 forKey:@"date"];
  }

  attachment = self->_attachment;
  if (attachment)
  {
    [v4 setObject:attachment forKey:@"attachment"];
  }

  if ([(NSMutableArray *)self->_supplementaryActions count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_supplementaryActions, "count")}];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v14 = self->_supplementaryActions;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v96 objects:v101 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v97;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v97 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation = [*(*(&v96 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v96 objects:v101 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"supplementaryActions"];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_feed];
  [v4 setObject:v20 forKey:@"feed"];

  snoozeAction = self->_snoozeAction;
  if (snoozeAction)
  {
    dictionaryRepresentation2 = [(BLTPBAction *)snoozeAction dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"snoozeAction"];
  }

  recordID = self->_recordID;
  if (recordID)
  {
    [v4 setObject:recordID forKey:@"recordID"];
  }

  publisherBulletinID = self->_publisherBulletinID;
  if (publisherBulletinID)
  {
    [v4 setObject:publisherBulletinID forKey:@"publisherBulletinID"];
  }

  dismissAction = self->_dismissAction;
  if (dismissAction)
  {
    dictionaryRepresentation3 = [(BLTPBAction *)dismissAction dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"dismissAction"];
  }

  if (*(&self->_has + 1))
  {
    v27 = [MEMORY[0x277CCABB0] numberWithInt:self->_sectionSubtype];
    [v4 setObject:v27 forKey:@"sectionSubtype"];
  }

  sockPuppetAppBundleID = self->_sockPuppetAppBundleID;
  if (sockPuppetAppBundleID)
  {
    [v4 setObject:sockPuppetAppBundleID forKey:@"sockPuppetAppBundleID"];
  }

  category = self->_category;
  if (category)
  {
    [v4 setObject:category forKey:@"category"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:self->_publicationDate];
    [v4 setObject:v30 forKey:@"publicationDate"];
  }

  v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_includesSound];
  [v4 setObject:v31 forKey:@"includesSound"];

  teamID = self->_teamID;
  if (teamID)
  {
    [v4 setObject:teamID forKey:@"teamID"];
  }

  context = self->_context;
  if (context)
  {
    [v4 setObject:context forKey:@"context"];
  }

  universalSectionID = self->_universalSectionID;
  if (universalSectionID)
  {
    [v4 setObject:universalSectionID forKey:@"universalSectionID"];
  }

  alertSuppressionContexts = self->_alertSuppressionContexts;
  if (alertSuppressionContexts)
  {
    [v4 setObject:alertSuppressionContexts forKey:@"alertSuppressionContexts"];
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    v36 = [MEMORY[0x277CCABB0] numberWithInt:self->_soundAlertType];
    [v4 setObject:v36 forKey:@"soundAlertType"];
  }

  soundAccountIdentifier = self->_soundAccountIdentifier;
  if (soundAccountIdentifier)
  {
    [v4 setObject:soundAccountIdentifier forKey:@"soundAccountIdentifier"];
  }

  soundToneIdentifier = self->_soundToneIdentifier;
  if (soundToneIdentifier)
  {
    [v4 setObject:soundToneIdentifier forKey:@"soundToneIdentifier"];
  }

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_attachmentType];
    [v4 setObject:v83 forKey:@"attachmentType"];

    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_58:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_135;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_58;
  }

  v84 = [MEMORY[0x277CCABB0] numberWithBool:self->_containsUpdatedAttachment];
  [v4 setObject:v84 forKey:@"containsUpdatedAttachment"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_59:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_135:
  v85 = [MEMORY[0x277CCABB0] numberWithBool:self->_loading];
  [v4 setObject:v85 forKey:@"loading"];

  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_60:
    v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_turnsOnDisplay];
    [v4 setObject:v40 forKey:@"turnsOnDisplay"];
  }

LABEL_61:
  subsectionIDs = self->_subsectionIDs;
  if (subsectionIDs)
  {
    [v4 setObject:subsectionIDs forKey:@"subsectionIDs"];
  }

  dismissalID = self->_dismissalID;
  if (dismissalID)
  {
    [v4 setObject:dismissalID forKey:@"dismissalID"];
  }

  attachmentURL = self->_attachmentURL;
  if (attachmentURL)
  {
    [v4 setObject:attachmentURL forKey:@"attachmentURL"];
  }

  peopleIDs = self->_peopleIDs;
  if (peopleIDs)
  {
    [v4 setObject:peopleIDs forKey:@"peopleIDs"];
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v45 = [MEMORY[0x277CCABB0] numberWithBool:self->_ignoresQuietMode];
    [v4 setObject:v45 forKey:@"ignoresQuietMode"];
  }

  categoryID = self->_categoryID;
  if (categoryID)
  {
    [v4 setObject:categoryID forKey:@"categoryID"];
  }

  contextNulls = self->_contextNulls;
  if (contextNulls)
  {
    [v4 setObject:contextNulls forKey:@"contextNulls"];
  }

  alertSuppressionContextsNulls = self->_alertSuppressionContextsNulls;
  if (alertSuppressionContextsNulls)
  {
    [v4 setObject:alertSuppressionContextsNulls forKey:@"alertSuppressionContextsNulls"];
  }

  threadID = self->_threadID;
  if (threadID)
  {
    [v4 setObject:threadID forKey:@"threadID"];
  }

  attachmentID = self->_attachmentID;
  if (attachmentID)
  {
    [v4 setObject:attachmentID forKey:@"attachmentID"];
  }

  if ([(NSMutableArray *)self->_additionalAttachments count])
  {
    v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_additionalAttachments, "count")}];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v52 = self->_additionalAttachments;
    v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v92 objects:v100 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v93;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v93 != v55)
          {
            objc_enumerationMutation(v52);
          }

          dictionaryRepresentation4 = [*(*(&v92 + 1) + 8 * j) dictionaryRepresentation];
          [v51 addObject:dictionaryRepresentation4];
        }

        v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v92 objects:v100 count:16];
      }

      while (v54);
    }

    [v4 setObject:v51 forKey:@"additionalAttachments"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v58 = [MEMORY[0x277CCABB0] numberWithDouble:self->_requiredExpirationDate];
    [v4 setObject:v58 forKey:@"requiredExpirationDate"];
  }

  replyToken = self->_replyToken;
  if (replyToken)
  {
    [v4 setObject:replyToken forKey:@"replyToken"];
  }

  v60 = self->_has;
  if ((*&v60 & 0x20) != 0)
  {
    v86 = [MEMORY[0x277CCABB0] numberWithDouble:self->_soundMaximumDuration];
    [v4 setObject:v86 forKey:@"soundMaximumDuration"];

    v60 = self->_has;
    if ((*&v60 & 0x80000) == 0)
    {
LABEL_96:
      if ((*&v60 & 0x40000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_139;
    }
  }

  else if ((*&v60 & 0x80000) == 0)
  {
    goto LABEL_96;
  }

  v87 = [MEMORY[0x277CCABB0] numberWithBool:{self->_soundShouldRepeat, v92}];
  [v4 setObject:v87 forKey:@"soundShouldRepeat"];

  v60 = self->_has;
  if ((*&v60 & 0x40000) == 0)
  {
LABEL_97:
    if ((*&v60 & 0x1000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_140;
  }

LABEL_139:
  v88 = [MEMORY[0x277CCABB0] numberWithBool:{self->_soundShouldIgnoreRingerSwitch, v92}];
  [v4 setObject:v88 forKey:@"soundShouldIgnoreRingerSwitch"];

  v60 = self->_has;
  if ((*&v60 & 0x1000) == 0)
  {
LABEL_98:
    if ((*&v60 & 0x10) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_141;
  }

LABEL_140:
  v89 = [MEMORY[0x277CCABB0] numberWithBool:{self->_hasCriticalIcon, v92}];
  [v4 setObject:v89 forKey:@"hasCriticalIcon"];

  v60 = self->_has;
  if ((*&v60 & 0x10) == 0)
  {
LABEL_99:
    if ((*&v60 & 0x20000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_142;
  }

LABEL_141:
  v90 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_soundAudioVolume, v92}];
  [v4 setObject:v90 forKey:@"soundAudioVolume"];

  v60 = self->_has;
  if ((*&v60 & 0x20000) == 0)
  {
LABEL_100:
    if ((*&v60 & 0x100000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

LABEL_142:
  v91 = [MEMORY[0x277CCABB0] numberWithBool:{self->_preemptsPresentedAlert, v92}];
  [v4 setObject:v91 forKey:@"preemptsPresentedAlert"];

  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_101:
    v61 = [MEMORY[0x277CCABB0] numberWithBool:{self->_suppressDelayForForwardedBulletins, v92}];
    [v4 setObject:v61 forKey:@"suppressDelayForForwardedBulletins"];
  }

LABEL_102:
  icon = self->_icon;
  if (icon)
  {
    dictionaryRepresentation5 = [(BLTPBSectionIcon *)icon dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"icon"];
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    v64 = [MEMORY[0x277CCABB0] numberWithBool:self->_containsUpdateIcon];
    [v4 setObject:v64 forKey:@"containsUpdateIcon"];
  }

  header = self->_header;
  if (header)
  {
    [v4 setObject:header forKey:@"header"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_interruptionLevel];
    [v4 setObject:v66 forKey:@"interruptionLevel"];
  }

  communicationContext = self->_communicationContext;
  if (communicationContext)
  {
    dictionaryRepresentation6 = [(BLTPBCommunicationContext *)communicationContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation6 forKey:@"communicationContext"];
  }

  contentType = self->_contentType;
  if (contentType)
  {
    [v4 setObject:contentType forKey:@"contentType"];
  }

  filterCriteria = self->_filterCriteria;
  if (filterCriteria)
  {
    [v4 setObject:filterCriteria forKey:@"filterCriteria"];
  }

  followActivityAction = self->_followActivityAction;
  if (followActivityAction)
  {
    dictionaryRepresentation7 = [(BLTPBAction *)followActivityAction dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation7 forKey:@"followActivityAction"];
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v73 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasSubordinateIcon];
    [v4 setObject:v73 forKey:@"hasSubordinateIcon"];
  }

  summary = self->_summary;
  if (summary)
  {
    [v4 setObject:summary forKey:@"summary"];
  }

  threadSummary = self->_threadSummary;
  if (threadSummary)
  {
    [v4 setObject:threadSummary forKey:@"threadSummary"];
  }

  attributedMessage = self->_attributedMessage;
  if (attributedMessage)
  {
    [v4 setObject:attributedMessage forKey:@"attributedMessage"];
  }

  eventBehavior = self->_eventBehavior;
  if (eventBehavior)
  {
    [v4 setObject:eventBehavior forKey:@"eventBehavior"];
  }

  v78 = self->_has;
  if ((*&v78 & 2) != 0)
  {
    v79 = [MEMORY[0x277CCABB0] numberWithDouble:self->_priorityNotificationStatus];
    [v4 setObject:v79 forKey:@"priorityNotificationStatus"];

    v78 = self->_has;
  }

  if ((*&v78 & 0x8000) != 0)
  {
    v80 = [MEMORY[0x277CCABB0] numberWithBool:self->_isHighlight];
    [v4 setObject:v80 forKey:@"isHighlight"];
  }

  v81 = v4;

  return v4;
}

- (void)writeTo:(id)to
{
  v48 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_bulletinID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sectionDisplayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_attachment)
  {
    PBDataWriterWriteDataField();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = self->_supplementaryActions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v7);
  }

  PBDataWriterWriteUint32Field();
  if (self->_snoozeAction)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_recordID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_publisherBulletinID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_dismissAction)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_has + 1))
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_sockPuppetAppBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  PBDataWriterWriteBOOLField();
  if (self->_teamID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_context)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_universalSectionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alertSuppressionContexts)
  {
    PBDataWriterWriteDataField();
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_soundAccountIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_soundToneIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_56:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_141;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_56;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_57:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_141:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_58:
    PBDataWriterWriteBOOLField();
  }

LABEL_59:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = self->_subsectionIDs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v13);
  }

  if (self->_dismissalID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_attachmentURL)
  {
    PBDataWriterWriteStringField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = self->_peopleIDs;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      v20 = 0;
      do
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteStringField();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v18);
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_categoryID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contextNulls)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_alertSuppressionContextsNulls)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_threadID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_attachmentID)
  {
    PBDataWriterWriteStringField();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = self->_additionalAttachments;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        PBDataWriterWriteSubmessage();
        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v23);
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_replyToken)
  {
    PBDataWriterWriteStringField();
  }

  v26 = self->_has;
  if ((*&v26 & 0x20) != 0)
  {
    PBDataWriterWriteDoubleField();
    v26 = self->_has;
    if ((*&v26 & 0x80000) == 0)
    {
LABEL_102:
      if ((*&v26 & 0x40000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_145;
    }
  }

  else if ((*&v26 & 0x80000) == 0)
  {
    goto LABEL_102;
  }

  PBDataWriterWriteBOOLField();
  v26 = self->_has;
  if ((*&v26 & 0x40000) == 0)
  {
LABEL_103:
    if ((*&v26 & 0x1000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_146;
  }

LABEL_145:
  PBDataWriterWriteBOOLField();
  v26 = self->_has;
  if ((*&v26 & 0x1000) == 0)
  {
LABEL_104:
    if ((*&v26 & 0x10) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_147;
  }

LABEL_146:
  PBDataWriterWriteBOOLField();
  v26 = self->_has;
  if ((*&v26 & 0x10) == 0)
  {
LABEL_105:
    if ((*&v26 & 0x20000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_148;
  }

LABEL_147:
  PBDataWriterWriteDoubleField();
  v26 = self->_has;
  if ((*&v26 & 0x20000) == 0)
  {
LABEL_106:
    if ((*&v26 & 0x100000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

LABEL_148:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_107:
    PBDataWriterWriteBOOLField();
  }

LABEL_108:
  if (self->_icon)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_header)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_communicationContext)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_contentType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_filterCriteria)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_followActivityAction)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_summary)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_threadSummary)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_attributedMessage)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_eventBehavior)
  {
    PBDataWriterWriteDataField();
  }

  v27 = self->_has;
  if ((*&v27 & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v27 = self->_has;
  }

  if ((*&v27 & 0x8000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v26 = toCopy;
  if (self->_bulletinID)
  {
    [toCopy setBulletinID:?];
    toCopy = v26;
  }

  if (self->_sectionID)
  {
    [v26 setSectionID:?];
    toCopy = v26;
  }

  if (self->_sectionDisplayName)
  {
    [v26 setSectionDisplayName:?];
    toCopy = v26;
  }

  if (self->_title)
  {
    [v26 setTitle:?];
    toCopy = v26;
  }

  if (self->_subtitle)
  {
    [v26 setSubtitle:?];
    toCopy = v26;
  }

  if (self->_messageTitle)
  {
    [v26 setMessageTitle:?];
    toCopy = v26;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_date;
    *(toCopy + 110) |= 1u;
  }

  if (self->_attachment)
  {
    [v26 setAttachment:?];
  }

  if ([(BLTPBBulletin *)self supplementaryActionsCount])
  {
    [v26 clearSupplementaryActions];
    supplementaryActionsCount = [(BLTPBBulletin *)self supplementaryActionsCount];
    if (supplementaryActionsCount)
    {
      v6 = supplementaryActionsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BLTPBBulletin *)self supplementaryActionsAtIndex:i];
        [v26 addSupplementaryActions:v8];
      }
    }
  }

  v9 = v26;
  *(v26 + 50) = self->_feed;
  if (self->_snoozeAction)
  {
    [v26 setSnoozeAction:?];
    v9 = v26;
  }

  if (self->_recordID)
  {
    [v26 setRecordID:?];
    v9 = v26;
  }

  if (self->_publisherBulletinID)
  {
    [v26 setPublisherBulletinID:?];
    v9 = v26;
  }

  if (self->_dismissAction)
  {
    [v26 setDismissAction:?];
    v9 = v26;
  }

  if (*(&self->_has + 1))
  {
    v9[76] = self->_sectionSubtype;
    v9[110] |= 0x100u;
  }

  if (self->_sockPuppetAppBundleID)
  {
    [v26 setSockPuppetAppBundleID:?];
    v9 = v26;
  }

  if (self->_category)
  {
    [v26 setCategory:?];
    v9 = v26;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v9 + 3) = *&self->_publicationDate;
    v9[110] |= 4u;
  }

  *(v9 + 429) = self->_includesSound;
  if (self->_teamID)
  {
    [v26 setTeamID:?];
    v9 = v26;
  }

  if (self->_context)
  {
    [v26 setContext:?];
    v9 = v26;
  }

  if (self->_universalSectionID)
  {
    [v26 setUniversalSectionID:?];
    v9 = v26;
  }

  if (self->_alertSuppressionContexts)
  {
    [v26 setAlertSuppressionContexts:?];
    v9 = v26;
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    v9[84] = self->_soundAlertType;
    v9[110] |= 0x200u;
  }

  if (self->_soundAccountIdentifier)
  {
    [v26 setSoundAccountIdentifier:?];
    v9 = v26;
  }

  if (self->_soundToneIdentifier)
  {
    [v26 setSoundToneIdentifier:?];
    v9 = v26;
  }

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    v9[24] = self->_attachmentType;
    v9[110] |= 0x40u;
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_53:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_54;
      }

LABEL_131:
      *(v9 + 431) = self->_loading;
      v9[110] |= 0x10000u;
      if ((*&self->_has & 0x200000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_53;
  }

  *(v9 + 425) = self->_containsUpdatedAttachment;
  v9[110] |= 0x800u;
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    goto LABEL_131;
  }

LABEL_54:
  if ((*&has & 0x200000) != 0)
  {
LABEL_55:
    *(v9 + 436) = self->_turnsOnDisplay;
    v9[110] |= 0x200000u;
  }

LABEL_56:
  if ([(BLTPBBulletin *)self subsectionIDsCount])
  {
    [v26 clearSubsectionIDs];
    subsectionIDsCount = [(BLTPBBulletin *)self subsectionIDsCount];
    if (subsectionIDsCount)
    {
      v12 = subsectionIDsCount;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(BLTPBBulletin *)self subsectionIDsAtIndex:j];
        [v26 addSubsectionIDs:v14];
      }
    }
  }

  if (self->_dismissalID)
  {
    [v26 setDismissalID:?];
  }

  if (self->_attachmentURL)
  {
    [v26 setAttachmentURL:?];
  }

  if ([(BLTPBBulletin *)self peopleIDsCount])
  {
    [v26 clearPeopleIDs];
    peopleIDsCount = [(BLTPBBulletin *)self peopleIDsCount];
    if (peopleIDsCount)
    {
      v16 = peopleIDsCount;
      for (k = 0; k != v16; ++k)
      {
        v18 = [(BLTPBBulletin *)self peopleIDsAtIndex:k];
        [v26 addPeopleIDs:v18];
      }
    }
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v26 + 428) = self->_ignoresQuietMode;
    *(v26 + 110) |= 0x4000u;
  }

  if (self->_categoryID)
  {
    [v26 setCategoryID:?];
  }

  if (self->_contextNulls)
  {
    [v26 setContextNulls:?];
  }

  if (self->_alertSuppressionContextsNulls)
  {
    [v26 setAlertSuppressionContextsNulls:?];
  }

  if (self->_threadID)
  {
    [v26 setThreadID:?];
  }

  if (self->_attachmentID)
  {
    [v26 setAttachmentID:?];
  }

  if ([(BLTPBBulletin *)self additionalAttachmentsCount])
  {
    [v26 clearAdditionalAttachments];
    additionalAttachmentsCount = [(BLTPBBulletin *)self additionalAttachmentsCount];
    if (additionalAttachmentsCount)
    {
      v20 = additionalAttachmentsCount;
      for (m = 0; m != v20; ++m)
      {
        v22 = [(BLTPBBulletin *)self additionalAttachmentsAtIndex:m];
        [v26 addAdditionalAttachments:v22];
      }
    }
  }

  v23 = v26;
  if ((*&self->_has & 8) != 0)
  {
    *(v26 + 4) = *&self->_requiredExpirationDate;
    *(v26 + 110) |= 8u;
  }

  if (self->_replyToken)
  {
    [v26 setReplyToken:?];
    v23 = v26;
  }

  v24 = self->_has;
  if ((*&v24 & 0x20) != 0)
  {
    v23[6] = *&self->_soundMaximumDuration;
    *(v23 + 110) |= 0x20u;
    v24 = self->_has;
    if ((*&v24 & 0x80000) == 0)
    {
LABEL_90:
      if ((*&v24 & 0x40000) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_135;
    }
  }

  else if ((*&v24 & 0x80000) == 0)
  {
    goto LABEL_90;
  }

  *(v23 + 434) = self->_soundShouldRepeat;
  *(v23 + 110) |= 0x80000u;
  v24 = self->_has;
  if ((*&v24 & 0x40000) == 0)
  {
LABEL_91:
    if ((*&v24 & 0x1000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_136;
  }

LABEL_135:
  *(v23 + 433) = self->_soundShouldIgnoreRingerSwitch;
  *(v23 + 110) |= 0x40000u;
  v24 = self->_has;
  if ((*&v24 & 0x1000) == 0)
  {
LABEL_92:
    if ((*&v24 & 0x10) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_137;
  }

LABEL_136:
  *(v23 + 426) = self->_hasCriticalIcon;
  *(v23 + 110) |= 0x1000u;
  v24 = self->_has;
  if ((*&v24 & 0x10) == 0)
  {
LABEL_93:
    if ((*&v24 & 0x20000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_138;
  }

LABEL_137:
  v23[5] = *&self->_soundAudioVolume;
  *(v23 + 110) |= 0x10u;
  v24 = self->_has;
  if ((*&v24 & 0x20000) == 0)
  {
LABEL_94:
    if ((*&v24 & 0x100000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

LABEL_138:
  *(v23 + 432) = self->_preemptsPresentedAlert;
  *(v23 + 110) |= 0x20000u;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_95:
    *(v23 + 435) = self->_suppressDelayForForwardedBulletins;
    *(v23 + 110) |= 0x100000u;
  }

LABEL_96:
  if (self->_icon)
  {
    [v26 setIcon:?];
    v23 = v26;
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(v23 + 424) = self->_containsUpdateIcon;
    *(v23 + 110) |= 0x400u;
  }

  if (self->_header)
  {
    [v26 setHeader:?];
    v23 = v26;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(v23 + 60) = self->_interruptionLevel;
    *(v23 + 110) |= 0x80u;
  }

  if (self->_communicationContext)
  {
    [v26 setCommunicationContext:?];
    v23 = v26;
  }

  if (self->_contentType)
  {
    [v26 setContentType:?];
    v23 = v26;
  }

  if (self->_filterCriteria)
  {
    [v26 setFilterCriteria:?];
    v23 = v26;
  }

  if (self->_followActivityAction)
  {
    [v26 setFollowActivityAction:?];
    v23 = v26;
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v23 + 427) = self->_hasSubordinateIcon;
    *(v23 + 110) |= 0x2000u;
  }

  if (self->_summary)
  {
    [v26 setSummary:?];
    v23 = v26;
  }

  if (self->_threadSummary)
  {
    [v26 setThreadSummary:?];
    v23 = v26;
  }

  if (self->_attributedMessage)
  {
    [v26 setAttributedMessage:?];
    v23 = v26;
  }

  if (self->_eventBehavior)
  {
    [v26 setEventBehavior:?];
    v23 = v26;
  }

  v25 = self->_has;
  if ((*&v25 & 2) != 0)
  {
    v23[2] = *&self->_priorityNotificationStatus;
    *(v23 + 110) |= 2u;
    v25 = self->_has;
  }

  if ((*&v25 & 0x8000) != 0)
  {
    *(v23 + 430) = self->_isHighlight;
    *(v23 + 110) |= 0x8000u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v128 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bulletinID copyWithZone:zone];
  v7 = *(v5 + 120);
  *(v5 + 120) = v6;

  v8 = [(NSString *)self->_sectionID copyWithZone:zone];
  v9 = *(v5 + 296);
  *(v5 + 296) = v8;

  v10 = [(NSString *)self->_sectionDisplayName copyWithZone:zone];
  v11 = *(v5 + 288);
  *(v5 + 288) = v10;

  v12 = [(NSString *)self->_title copyWithZone:zone];
  v13 = *(v5 + 408);
  *(v5 + 408) = v12;

  v14 = [(NSString *)self->_subtitle copyWithZone:zone];
  v15 = *(v5 + 360);
  *(v5 + 360) = v14;

  v16 = [(NSString *)self->_messageTitle copyWithZone:zone];
  v17 = *(v5 + 248);
  *(v5 + 248) = v16;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 440) |= 1u;
  }

  v18 = [(NSData *)self->_attachment copyWithZone:zone];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v20 = self->_supplementaryActions;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v120 objects:v127 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v121;
    do
    {
      v24 = 0;
      do
      {
        if (*v121 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v120 + 1) + 8 * v24) copyWithZone:zone];
        [v5 addSupplementaryActions:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v120 objects:v127 count:16];
    }

    while (v22);
  }

  *(v5 + 200) = self->_feed;
  v26 = [(BLTPBAction *)self->_snoozeAction copyWithZone:zone];
  v27 = *(v5 + 312);
  *(v5 + 312) = v26;

  v28 = [(NSString *)self->_recordID copyWithZone:zone];
  v29 = *(v5 + 272);
  *(v5 + 272) = v28;

  v30 = [(NSString *)self->_publisherBulletinID copyWithZone:zone];
  v31 = *(v5 + 264);
  *(v5 + 264) = v30;

  v32 = [(BLTPBAction *)self->_dismissAction copyWithZone:zone];
  v33 = *(v5 + 176);
  *(v5 + 176) = v32;

  if (*(&self->_has + 1))
  {
    *(v5 + 304) = self->_sectionSubtype;
    *(v5 + 440) |= 0x100u;
  }

  v34 = [(NSString *)self->_sockPuppetAppBundleID copyWithZone:zone];
  v35 = *(v5 + 320);
  *(v5 + 320) = v34;

  v36 = [(NSString *)self->_category copyWithZone:zone];
  v37 = *(v5 + 128);
  *(v5 + 128) = v36;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_publicationDate;
    *(v5 + 440) |= 4u;
  }

  *(v5 + 429) = self->_includesSound;
  v38 = [(NSString *)self->_teamID copyWithZone:zone];
  v39 = *(v5 + 384);
  *(v5 + 384) = v38;

  v40 = [(NSData *)self->_context copyWithZone:zone];
  v41 = *(v5 + 160);
  *(v5 + 160) = v40;

  v42 = [(NSString *)self->_universalSectionID copyWithZone:zone];
  v43 = *(v5 + 416);
  *(v5 + 416) = v42;

  v44 = [(NSData *)self->_alertSuppressionContexts copyWithZone:zone];
  v45 = *(v5 + 64);
  *(v5 + 64) = v44;

  if ((*(&self->_has + 1) & 2) != 0)
  {
    *(v5 + 336) = self->_soundAlertType;
    *(v5 + 440) |= 0x200u;
  }

  v46 = [(NSString *)self->_soundAccountIdentifier copyWithZone:zone];
  v47 = *(v5 + 328);
  *(v5 + 328) = v46;

  v48 = [(NSString *)self->_soundToneIdentifier copyWithZone:zone];
  v49 = *(v5 + 344);
  *(v5 + 344) = v48;

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    *(v5 + 96) = self->_attachmentType;
    *(v5 + 440) |= 0x40u;
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_18:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_67;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_18;
  }

  *(v5 + 425) = self->_containsUpdatedAttachment;
  *(v5 + 440) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_19:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_67:
  *(v5 + 431) = self->_loading;
  *(v5 + 440) |= 0x10000u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_20:
    *(v5 + 436) = self->_turnsOnDisplay;
    *(v5 + 440) |= 0x200000u;
  }

LABEL_21:
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v51 = self->_subsectionIDs;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v116 objects:v126 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v117;
    do
    {
      v55 = 0;
      do
      {
        if (*v117 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v116 + 1) + 8 * v55) copyWithZone:zone];
        [v5 addSubsectionIDs:v56];

        ++v55;
      }

      while (v53 != v55);
      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v116 objects:v126 count:16];
    }

    while (v53);
  }

  v57 = [(NSString *)self->_dismissalID copyWithZone:zone];
  v58 = *(v5 + 184);
  *(v5 + 184) = v57;

  v59 = [(NSString *)self->_attachmentURL copyWithZone:zone];
  v60 = *(v5 + 104);
  *(v5 + 104) = v59;

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v61 = self->_peopleIDs;
  v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v112 objects:v125 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v113;
    do
    {
      v65 = 0;
      do
      {
        if (*v113 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = [*(*(&v112 + 1) + 8 * v65) copyWithZone:zone];
        [v5 addPeopleIDs:v66];

        ++v65;
      }

      while (v63 != v65);
      v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v112 objects:v125 count:16];
    }

    while (v63);
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v5 + 428) = self->_ignoresQuietMode;
    *(v5 + 440) |= 0x4000u;
  }

  v67 = [(NSString *)self->_categoryID copyWithZone:zone];
  v68 = *(v5 + 136);
  *(v5 + 136) = v67;

  v69 = [(NSData *)self->_contextNulls copyWithZone:zone];
  v70 = *(v5 + 168);
  *(v5 + 168) = v69;

  v71 = [(NSData *)self->_alertSuppressionContextsNulls copyWithZone:zone];
  v72 = *(v5 + 72);
  *(v5 + 72) = v71;

  v73 = [(NSString *)self->_threadID copyWithZone:zone];
  v74 = *(v5 + 392);
  *(v5 + 392) = v73;

  v75 = [(NSString *)self->_attachmentID copyWithZone:zone];
  v76 = *(v5 + 88);
  *(v5 + 88) = v75;

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v77 = self->_additionalAttachments;
  v78 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v108 objects:v124 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v109;
    do
    {
      v81 = 0;
      do
      {
        if (*v109 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = [*(*(&v108 + 1) + 8 * v81) copyWithZone:{zone, v108}];
        [v5 addAdditionalAttachments:v82];

        ++v81;
      }

      while (v79 != v81);
      v79 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v108 objects:v124 count:16];
    }

    while (v79);
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_requiredExpirationDate;
    *(v5 + 440) |= 8u;
  }

  v108 = [(NSString *)self->_replyToken copyWithZone:zone, v108];
  v84 = *(v5 + 280);
  *(v5 + 280) = v108;

  v85 = self->_has;
  if ((*&v85 & 0x20) != 0)
  {
    *(v5 + 48) = self->_soundMaximumDuration;
    *(v5 + 440) |= 0x20u;
    v85 = self->_has;
    if ((*&v85 & 0x80000) == 0)
    {
LABEL_48:
      if ((*&v85 & 0x40000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_71;
    }
  }

  else if ((*&v85 & 0x80000) == 0)
  {
    goto LABEL_48;
  }

  *(v5 + 434) = self->_soundShouldRepeat;
  *(v5 + 440) |= 0x80000u;
  v85 = self->_has;
  if ((*&v85 & 0x40000) == 0)
  {
LABEL_49:
    if ((*&v85 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v5 + 433) = self->_soundShouldIgnoreRingerSwitch;
  *(v5 + 440) |= 0x40000u;
  v85 = self->_has;
  if ((*&v85 & 0x1000) == 0)
  {
LABEL_50:
    if ((*&v85 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 426) = self->_hasCriticalIcon;
  *(v5 + 440) |= 0x1000u;
  v85 = self->_has;
  if ((*&v85 & 0x10) == 0)
  {
LABEL_51:
    if ((*&v85 & 0x20000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 40) = self->_soundAudioVolume;
  *(v5 + 440) |= 0x10u;
  v85 = self->_has;
  if ((*&v85 & 0x20000) == 0)
  {
LABEL_52:
    if ((*&v85 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_74:
  *(v5 + 432) = self->_preemptsPresentedAlert;
  *(v5 + 440) |= 0x20000u;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_53:
    *(v5 + 435) = self->_suppressDelayForForwardedBulletins;
    *(v5 + 440) |= 0x100000u;
  }

LABEL_54:
  v86 = [(BLTPBSectionIcon *)self->_icon copyWithZone:zone];
  v87 = *(v5 + 232);
  *(v5 + 232) = v86;

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(v5 + 424) = self->_containsUpdateIcon;
    *(v5 + 440) |= 0x400u;
  }

  v88 = [(NSString *)self->_header copyWithZone:zone];
  v89 = *(v5 + 224);
  *(v5 + 224) = v88;

  if ((*&self->_has & 0x80) != 0)
  {
    *(v5 + 240) = self->_interruptionLevel;
    *(v5 + 440) |= 0x80u;
  }

  v90 = [(BLTPBCommunicationContext *)self->_communicationContext copyWithZone:zone];
  v91 = *(v5 + 144);
  *(v5 + 144) = v90;

  v92 = [(NSString *)self->_contentType copyWithZone:zone];
  v93 = *(v5 + 152);
  *(v5 + 152) = v92;

  v94 = [(NSString *)self->_filterCriteria copyWithZone:zone];
  v95 = *(v5 + 208);
  *(v5 + 208) = v94;

  v96 = [(BLTPBAction *)self->_followActivityAction copyWithZone:zone];
  v97 = *(v5 + 216);
  *(v5 + 216) = v96;

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v5 + 427) = self->_hasSubordinateIcon;
    *(v5 + 440) |= 0x2000u;
  }

  v98 = [(NSData *)self->_summary copyWithZone:zone];
  v99 = *(v5 + 368);
  *(v5 + 368) = v98;

  v100 = [(NSData *)self->_threadSummary copyWithZone:zone];
  v101 = *(v5 + 400);
  *(v5 + 400) = v100;

  v102 = [(NSData *)self->_attributedMessage copyWithZone:zone];
  v103 = *(v5 + 112);
  *(v5 + 112) = v102;

  v104 = [(NSData *)self->_eventBehavior copyWithZone:zone];
  v105 = *(v5 + 192);
  *(v5 + 192) = v104;

  v106 = self->_has;
  if ((*&v106 & 2) != 0)
  {
    *(v5 + 16) = self->_priorityNotificationStatus;
    *(v5 + 440) |= 2u;
    v106 = self->_has;
  }

  if ((*&v106 & 0x8000) != 0)
  {
    *(v5 + 430) = self->_isHighlight;
    *(v5 + 440) |= 0x8000u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_223;
  }

  bulletinID = self->_bulletinID;
  if (bulletinID | *(equalCopy + 15))
  {
    if (![(NSString *)bulletinID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  sectionID = self->_sectionID;
  if (sectionID | *(equalCopy + 37))
  {
    if (![(NSString *)sectionID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  sectionDisplayName = self->_sectionDisplayName;
  if (sectionDisplayName | *(equalCopy + 36))
  {
    if (![(NSString *)sectionDisplayName isEqual:?])
    {
      goto LABEL_223;
    }
  }

  title = self->_title;
  if (title | *(equalCopy + 51))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_223;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(equalCopy + 45))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_223;
    }
  }

  messageTitle = self->_messageTitle;
  if (messageTitle | *(equalCopy + 31))
  {
    if (![(NSString *)messageTitle isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v11 = *(equalCopy + 110);
  if (*&self->_has)
  {
    if ((v11 & 1) == 0 || self->_date != *(equalCopy + 1))
    {
      goto LABEL_223;
    }
  }

  else if (v11)
  {
    goto LABEL_223;
  }

  attachment = self->_attachment;
  if (attachment | *(equalCopy + 10) && ![(NSData *)attachment isEqual:?])
  {
    goto LABEL_223;
  }

  supplementaryActions = self->_supplementaryActions;
  if (supplementaryActions | *(equalCopy + 47))
  {
    if (![(NSMutableArray *)supplementaryActions isEqual:?])
    {
      goto LABEL_223;
    }
  }

  if (self->_feed != *(equalCopy + 50))
  {
    goto LABEL_223;
  }

  snoozeAction = self->_snoozeAction;
  if (snoozeAction | *(equalCopy + 39))
  {
    if (![(BLTPBAction *)snoozeAction isEqual:?])
    {
      goto LABEL_223;
    }
  }

  recordID = self->_recordID;
  if (recordID | *(equalCopy + 34))
  {
    if (![(NSString *)recordID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  publisherBulletinID = self->_publisherBulletinID;
  if (publisherBulletinID | *(equalCopy + 33))
  {
    if (![(NSString *)publisherBulletinID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  dismissAction = self->_dismissAction;
  if (dismissAction | *(equalCopy + 22))
  {
    if (![(BLTPBAction *)dismissAction isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v18 = *(equalCopy + 110);
  if (*(&self->_has + 1))
  {
    if ((v18 & 0x100) == 0 || self->_sectionSubtype != *(equalCopy + 76))
    {
      goto LABEL_223;
    }
  }

  else if ((v18 & 0x100) != 0)
  {
    goto LABEL_223;
  }

  sockPuppetAppBundleID = self->_sockPuppetAppBundleID;
  if (sockPuppetAppBundleID | *(equalCopy + 40) && ![(NSString *)sockPuppetAppBundleID isEqual:?])
  {
    goto LABEL_223;
  }

  category = self->_category;
  if (category | *(equalCopy + 16))
  {
    if (![(NSString *)category isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v21 = *(equalCopy + 110);
  if ((*&self->_has & 4) != 0)
  {
    if ((v21 & 4) == 0 || self->_publicationDate != *(equalCopy + 3))
    {
      goto LABEL_223;
    }
  }

  else if ((v21 & 4) != 0)
  {
    goto LABEL_223;
  }

  if (self->_includesSound)
  {
    if ((*(equalCopy + 429) & 1) == 0)
    {
      goto LABEL_223;
    }
  }

  else if (*(equalCopy + 429))
  {
    goto LABEL_223;
  }

  teamID = self->_teamID;
  if (teamID | *(equalCopy + 48) && ![(NSString *)teamID isEqual:?])
  {
    goto LABEL_223;
  }

  context = self->_context;
  if (context | *(equalCopy + 20))
  {
    if (![(NSData *)context isEqual:?])
    {
      goto LABEL_223;
    }
  }

  universalSectionID = self->_universalSectionID;
  if (universalSectionID | *(equalCopy + 52))
  {
    if (![(NSString *)universalSectionID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  alertSuppressionContexts = self->_alertSuppressionContexts;
  if (alertSuppressionContexts | *(equalCopy + 8))
  {
    if (![(NSData *)alertSuppressionContexts isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v26 = *(equalCopy + 110);
  if ((*(&self->_has + 1) & 2) != 0)
  {
    if ((v26 & 0x200) == 0 || self->_soundAlertType != *(equalCopy + 84))
    {
      goto LABEL_223;
    }
  }

  else if ((v26 & 0x200) != 0)
  {
    goto LABEL_223;
  }

  soundAccountIdentifier = self->_soundAccountIdentifier;
  if (soundAccountIdentifier | *(equalCopy + 41) && ![(NSString *)soundAccountIdentifier isEqual:?])
  {
    goto LABEL_223;
  }

  soundToneIdentifier = self->_soundToneIdentifier;
  if (soundToneIdentifier | *(equalCopy + 43))
  {
    if (![(NSString *)soundToneIdentifier isEqual:?])
    {
      goto LABEL_223;
    }
  }

  has = self->_has;
  v30 = *(equalCopy + 110);
  if ((*&has & 0x40) != 0)
  {
    if ((v30 & 0x40) == 0 || self->_attachmentType != *(equalCopy + 24))
    {
      goto LABEL_223;
    }
  }

  else if ((v30 & 0x40) != 0)
  {
    goto LABEL_223;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v30 & 0x800) == 0)
    {
      goto LABEL_223;
    }

    if (self->_containsUpdatedAttachment)
    {
      if ((*(equalCopy + 425) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(equalCopy + 425))
    {
      goto LABEL_223;
    }
  }

  else if ((v30 & 0x800) != 0)
  {
    goto LABEL_223;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v30 & 0x10000) == 0)
    {
      goto LABEL_223;
    }

    if (self->_loading)
    {
      if ((*(equalCopy + 431) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(equalCopy + 431))
    {
      goto LABEL_223;
    }
  }

  else if ((v30 & 0x10000) != 0)
  {
    goto LABEL_223;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v30 & 0x200000) == 0)
    {
      goto LABEL_223;
    }

    if (self->_turnsOnDisplay)
    {
      if ((*(equalCopy + 436) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(equalCopy + 436))
    {
      goto LABEL_223;
    }
  }

  else if ((v30 & 0x200000) != 0)
  {
    goto LABEL_223;
  }

  subsectionIDs = self->_subsectionIDs;
  if (subsectionIDs | *(equalCopy + 44) && ![(NSMutableArray *)subsectionIDs isEqual:?])
  {
    goto LABEL_223;
  }

  dismissalID = self->_dismissalID;
  if (dismissalID | *(equalCopy + 23))
  {
    if (![(NSString *)dismissalID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  attachmentURL = self->_attachmentURL;
  if (attachmentURL | *(equalCopy + 13))
  {
    if (![(NSString *)attachmentURL isEqual:?])
    {
      goto LABEL_223;
    }
  }

  peopleIDs = self->_peopleIDs;
  if (peopleIDs | *(equalCopy + 32))
  {
    if (![(NSMutableArray *)peopleIDs isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v35 = *(equalCopy + 110);
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    if ((v35 & 0x4000) == 0)
    {
      goto LABEL_223;
    }

    if (self->_ignoresQuietMode)
    {
      if ((*(equalCopy + 428) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(equalCopy + 428))
    {
      goto LABEL_223;
    }
  }

  else if ((v35 & 0x4000) != 0)
  {
    goto LABEL_223;
  }

  categoryID = self->_categoryID;
  if (categoryID | *(equalCopy + 17) && ![(NSString *)categoryID isEqual:?])
  {
    goto LABEL_223;
  }

  contextNulls = self->_contextNulls;
  if (contextNulls | *(equalCopy + 21))
  {
    if (![(NSData *)contextNulls isEqual:?])
    {
      goto LABEL_223;
    }
  }

  alertSuppressionContextsNulls = self->_alertSuppressionContextsNulls;
  if (alertSuppressionContextsNulls | *(equalCopy + 9))
  {
    if (![(NSData *)alertSuppressionContextsNulls isEqual:?])
    {
      goto LABEL_223;
    }
  }

  threadID = self->_threadID;
  if (threadID | *(equalCopy + 49))
  {
    if (![(NSString *)threadID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  attachmentID = self->_attachmentID;
  if (attachmentID | *(equalCopy + 11))
  {
    if (![(NSString *)attachmentID isEqual:?])
    {
      goto LABEL_223;
    }
  }

  additionalAttachments = self->_additionalAttachments;
  if (additionalAttachments | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)additionalAttachments isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v42 = self->_has;
  v43 = *(equalCopy + 110);
  if ((*&v42 & 8) != 0)
  {
    if ((v43 & 8) == 0 || self->_requiredExpirationDate != *(equalCopy + 4))
    {
      goto LABEL_223;
    }
  }

  else if ((v43 & 8) != 0)
  {
    goto LABEL_223;
  }

  replyToken = self->_replyToken;
  if (replyToken | *(equalCopy + 35))
  {
    if (![(NSString *)replyToken isEqual:?])
    {
      goto LABEL_223;
    }

    v42 = self->_has;
  }

  v45 = *(equalCopy + 110);
  if ((*&v42 & 0x20) != 0)
  {
    if ((v45 & 0x20) == 0 || self->_soundMaximumDuration != *(equalCopy + 6))
    {
      goto LABEL_223;
    }
  }

  else if ((v45 & 0x20) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v42 & 0x80000) != 0)
  {
    if ((v45 & 0x80000) == 0)
    {
      goto LABEL_223;
    }

    if (self->_soundShouldRepeat)
    {
      if ((*(equalCopy + 434) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(equalCopy + 434))
    {
      goto LABEL_223;
    }
  }

  else if ((v45 & 0x80000) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v42 & 0x40000) != 0)
  {
    if ((v45 & 0x40000) == 0)
    {
      goto LABEL_223;
    }

    if (self->_soundShouldIgnoreRingerSwitch)
    {
      if ((*(equalCopy + 433) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(equalCopy + 433))
    {
      goto LABEL_223;
    }
  }

  else if ((v45 & 0x40000) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v42 & 0x1000) != 0)
  {
    if ((v45 & 0x1000) == 0)
    {
      goto LABEL_223;
    }

    if (self->_hasCriticalIcon)
    {
      if ((*(equalCopy + 426) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(equalCopy + 426))
    {
      goto LABEL_223;
    }
  }

  else if ((v45 & 0x1000) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v42 & 0x10) != 0)
  {
    if ((v45 & 0x10) == 0 || self->_soundAudioVolume != *(equalCopy + 5))
    {
      goto LABEL_223;
    }
  }

  else if ((v45 & 0x10) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v42 & 0x20000) != 0)
  {
    if ((v45 & 0x20000) == 0)
    {
      goto LABEL_223;
    }

    if (self->_preemptsPresentedAlert)
    {
      if ((*(equalCopy + 432) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(equalCopy + 432))
    {
      goto LABEL_223;
    }
  }

  else if ((v45 & 0x20000) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v42 & 0x100000) != 0)
  {
    if ((v45 & 0x100000) == 0)
    {
      goto LABEL_223;
    }

    if (self->_suppressDelayForForwardedBulletins)
    {
      if ((*(equalCopy + 435) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(equalCopy + 435))
    {
      goto LABEL_223;
    }
  }

  else if ((v45 & 0x100000) != 0)
  {
    goto LABEL_223;
  }

  icon = self->_icon;
  if (icon | *(equalCopy + 29))
  {
    if (![(BLTPBSectionIcon *)icon isEqual:?])
    {
      goto LABEL_223;
    }

    v42 = self->_has;
  }

  v47 = *(equalCopy + 110);
  if ((*&v42 & 0x400) != 0)
  {
    if ((v47 & 0x400) == 0)
    {
      goto LABEL_223;
    }

    if (self->_containsUpdateIcon)
    {
      if ((*(equalCopy + 424) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(equalCopy + 424))
    {
      goto LABEL_223;
    }
  }

  else if ((v47 & 0x400) != 0)
  {
    goto LABEL_223;
  }

  header = self->_header;
  if (header | *(equalCopy + 28))
  {
    if (![(NSString *)header isEqual:?])
    {
      goto LABEL_223;
    }

    v42 = self->_has;
  }

  v49 = *(equalCopy + 110);
  if ((*&v42 & 0x80) != 0)
  {
    if ((v49 & 0x80) == 0 || self->_interruptionLevel != *(equalCopy + 60))
    {
      goto LABEL_223;
    }
  }

  else if ((v49 & 0x80) != 0)
  {
    goto LABEL_223;
  }

  communicationContext = self->_communicationContext;
  if (communicationContext | *(equalCopy + 18) && ![(BLTPBCommunicationContext *)communicationContext isEqual:?])
  {
    goto LABEL_223;
  }

  contentType = self->_contentType;
  if (contentType | *(equalCopy + 19))
  {
    if (![(NSString *)contentType isEqual:?])
    {
      goto LABEL_223;
    }
  }

  filterCriteria = self->_filterCriteria;
  if (filterCriteria | *(equalCopy + 26))
  {
    if (![(NSString *)filterCriteria isEqual:?])
    {
      goto LABEL_223;
    }
  }

  followActivityAction = self->_followActivityAction;
  if (followActivityAction | *(equalCopy + 27))
  {
    if (![(BLTPBAction *)followActivityAction isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v54 = *(equalCopy + 110);
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    if ((v54 & 0x2000) == 0)
    {
      goto LABEL_223;
    }

    if (self->_hasSubordinateIcon)
    {
      if ((*(equalCopy + 427) & 1) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (*(equalCopy + 427))
    {
      goto LABEL_223;
    }
  }

  else if ((v54 & 0x2000) != 0)
  {
    goto LABEL_223;
  }

  summary = self->_summary;
  if (summary | *(equalCopy + 46) && ![(NSData *)summary isEqual:?])
  {
    goto LABEL_223;
  }

  threadSummary = self->_threadSummary;
  if (threadSummary | *(equalCopy + 50))
  {
    if (![(NSData *)threadSummary isEqual:?])
    {
      goto LABEL_223;
    }
  }

  attributedMessage = self->_attributedMessage;
  if (attributedMessage | *(equalCopy + 14))
  {
    if (![(NSData *)attributedMessage isEqual:?])
    {
      goto LABEL_223;
    }
  }

  eventBehavior = self->_eventBehavior;
  if (eventBehavior | *(equalCopy + 24))
  {
    if (![(NSData *)eventBehavior isEqual:?])
    {
      goto LABEL_223;
    }
  }

  v59 = self->_has;
  v60 = *(equalCopy + 110);
  if ((*&v59 & 2) != 0)
  {
    if ((v60 & 2) == 0 || self->_priorityNotificationStatus != *(equalCopy + 2))
    {
      goto LABEL_223;
    }
  }

  else if ((v60 & 2) != 0)
  {
    goto LABEL_223;
  }

  if ((*&v59 & 0x8000) == 0)
  {
    v61 = (*(equalCopy + 110) & 0x8000) == 0;
    goto LABEL_224;
  }

  if ((v60 & 0x8000) != 0)
  {
    if (self->_isHighlight)
    {
      if (*(equalCopy + 430))
      {
        goto LABEL_239;
      }
    }

    else if (!*(equalCopy + 430))
    {
LABEL_239:
      v61 = 1;
      goto LABEL_224;
    }
  }

LABEL_223:
  v61 = 0;
LABEL_224:

  return v61;
}

- (unint64_t)hash
{
  v104 = [(NSString *)self->_bulletinID hash];
  v103 = [(NSString *)self->_sectionID hash];
  v102 = [(NSString *)self->_sectionDisplayName hash];
  v101 = [(NSString *)self->_title hash];
  v100 = [(NSString *)self->_subtitle hash];
  v99 = [(NSString *)self->_messageTitle hash];
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v3.i64 = floor(date + 0.5);
    v7 = (date - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v98 = v5;
  v95 = [(NSData *)self->_attachment hash];
  v94 = [(NSMutableArray *)self->_supplementaryActions hash];
  feed = self->_feed;
  v97 = [(BLTPBAction *)self->_snoozeAction hash];
  v93 = [(NSString *)self->_recordID hash];
  v92 = [(NSString *)self->_publisherBulletinID hash];
  v91 = [(BLTPBAction *)self->_dismissAction hash];
  if (*(&self->_has + 1))
  {
    v90 = 2654435761 * self->_sectionSubtype;
  }

  else
  {
    v90 = 0;
  }

  v88 = [(NSString *)self->_sockPuppetAppBundleID hash];
  v87 = [(NSString *)self->_category hash];
  if ((*&self->_has & 4) != 0)
  {
    publicationDate = self->_publicationDate;
    if (publicationDate < 0.0)
    {
      publicationDate = -publicationDate;
    }

    *v9.i64 = floor(publicationDate + 0.5);
    v13 = (publicationDate - *v9.i64) * 1.84467441e19;
    *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v10, v9).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  v89 = v11;
  includesSound = self->_includesSound;
  v86 = [(NSString *)self->_teamID hash];
  v85 = [(NSData *)self->_context hash];
  v83 = [(NSString *)self->_universalSectionID hash];
  v82 = [(NSData *)self->_alertSuppressionContexts hash];
  if ((*(&self->_has + 1) & 2) != 0)
  {
    v81 = 2654435761 * self->_soundAlertType;
  }

  else
  {
    v81 = 0;
  }

  v80 = [(NSString *)self->_soundAccountIdentifier hash];
  v79 = [(NSString *)self->_soundToneIdentifier hash];
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    v78 = 2654435761 * self->_attachmentType;
    if ((*&has & 0x800) != 0)
    {
LABEL_25:
      v77 = 2654435761 * self->_containsUpdatedAttachment;
      if ((*&has & 0x10000) != 0)
      {
        goto LABEL_26;
      }

LABEL_30:
      v76 = 0;
      if ((*&has & 0x200000) != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v78 = 0;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_25;
    }
  }

  v77 = 0;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  v76 = 2654435761 * self->_loading;
  if ((*&has & 0x200000) != 0)
  {
LABEL_27:
    v75 = 2654435761 * self->_turnsOnDisplay;
    goto LABEL_32;
  }

LABEL_31:
  v75 = 0;
LABEL_32:
  v74 = [(NSMutableArray *)self->_subsectionIDs hash];
  v73 = [(NSString *)self->_dismissalID hash];
  v72 = [(NSString *)self->_attachmentURL hash];
  v71 = [(NSMutableArray *)self->_peopleIDs hash];
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v70 = 2654435761 * self->_ignoresQuietMode;
  }

  else
  {
    v70 = 0;
  }

  v69 = [(NSString *)self->_categoryID hash];
  v68 = [(NSData *)self->_contextNulls hash];
  v67 = [(NSData *)self->_alertSuppressionContextsNulls hash];
  v66 = [(NSString *)self->_threadID hash];
  v65 = [(NSString *)self->_attachmentID hash];
  v64 = [(NSMutableArray *)self->_additionalAttachments hash];
  if ((*&self->_has & 8) != 0)
  {
    requiredExpirationDate = self->_requiredExpirationDate;
    if (requiredExpirationDate < 0.0)
    {
      requiredExpirationDate = -requiredExpirationDate;
    }

    *v16.i64 = floor(requiredExpirationDate + 0.5);
    v20 = (requiredExpirationDate - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v17, v16).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  v63 = v18;
  v62 = [(NSString *)self->_replyToken hash];
  v24 = self->_has;
  if ((*&v24 & 0x20) != 0)
  {
    soundMaximumDuration = self->_soundMaximumDuration;
    if (soundMaximumDuration < 0.0)
    {
      soundMaximumDuration = -soundMaximumDuration;
    }

    *v22.i64 = floor(soundMaximumDuration + 0.5);
    v27 = (soundMaximumDuration - *v22.i64) * 1.84467441e19;
    *v23.i64 = *v22.i64 - trunc(*v22.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v22 = vbslq_s8(vnegq_f64(v28), v23, v22);
    v25 = 2654435761u * *v22.i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((*&v24 & 0x80000) != 0)
  {
    v59 = 2654435761 * self->_soundShouldRepeat;
    if ((*&v24 & 0x40000) != 0)
    {
LABEL_53:
      v58 = 2654435761 * self->_soundShouldIgnoreRingerSwitch;
      if ((*&v24 & 0x1000) != 0)
      {
        goto LABEL_54;
      }

LABEL_61:
      v60 = 0;
      if ((*&v24 & 0x10) != 0)
      {
        goto LABEL_55;
      }

LABEL_62:
      v32 = 0;
      goto LABEL_63;
    }
  }

  else
  {
    v59 = 0;
    if ((*&v24 & 0x40000) != 0)
    {
      goto LABEL_53;
    }
  }

  v58 = 0;
  if ((*&v24 & 0x1000) == 0)
  {
    goto LABEL_61;
  }

LABEL_54:
  v60 = 2654435761 * self->_hasCriticalIcon;
  if ((*&v24 & 0x10) == 0)
  {
    goto LABEL_62;
  }

LABEL_55:
  soundAudioVolume = self->_soundAudioVolume;
  if (soundAudioVolume < 0.0)
  {
    soundAudioVolume = -soundAudioVolume;
  }

  *v22.i64 = floor(soundAudioVolume + 0.5);
  v30 = (soundAudioVolume - *v22.i64) * 1.84467441e19;
  *v23.i64 = *v22.i64 - trunc(*v22.i64 * 5.42101086e-20) * 1.84467441e19;
  v31.f64[0] = NAN;
  v31.f64[1] = NAN;
  v32 = 2654435761u * *vbslq_s8(vnegq_f64(v31), v23, v22).i64;
  if (v30 >= 0.0)
  {
    if (v30 > 0.0)
    {
      v32 += v30;
    }
  }

  else
  {
    v32 -= fabs(v30);
  }

LABEL_63:
  if ((*&v24 & 0x20000) != 0)
  {
    v56 = 2654435761 * self->_preemptsPresentedAlert;
  }

  else
  {
    v56 = 0;
  }

  v61 = v25;
  v57 = v32;
  if ((*&v24 & 0x100000) != 0)
  {
    v55 = 2654435761 * self->_suppressDelayForForwardedBulletins;
  }

  else
  {
    v55 = 0;
  }

  v54 = [(BLTPBSectionIcon *)self->_icon hash];
  if ((*(&self->_has + 1) & 4) != 0)
  {
    v53 = 2654435761 * self->_containsUpdateIcon;
  }

  else
  {
    v53 = 0;
  }

  v52 = [(NSString *)self->_header hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v51 = 2654435761 * self->_interruptionLevel;
  }

  else
  {
    v51 = 0;
  }

  v50 = [(BLTPBCommunicationContext *)self->_communicationContext hash];
  v33 = [(NSString *)self->_contentType hash];
  v34 = [(NSString *)self->_filterCriteria hash];
  v35 = [(BLTPBAction *)self->_followActivityAction hash];
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v36 = 2654435761 * self->_hasSubordinateIcon;
  }

  else
  {
    v36 = 0;
  }

  v37 = [(NSData *)self->_summary hash];
  v38 = [(NSData *)self->_threadSummary hash];
  v39 = [(NSData *)self->_attributedMessage hash];
  v40 = [(NSData *)self->_eventBehavior hash];
  v43 = self->_has;
  if ((*&v43 & 2) != 0)
  {
    priorityNotificationStatus = self->_priorityNotificationStatus;
    if (priorityNotificationStatus < 0.0)
    {
      priorityNotificationStatus = -priorityNotificationStatus;
    }

    *v41.i64 = floor(priorityNotificationStatus + 0.5);
    v46 = (priorityNotificationStatus - *v41.i64) * 1.84467441e19;
    *v42.i64 = *v41.i64 - trunc(*v41.i64 * 5.42101086e-20) * 1.84467441e19;
    v47.f64[0] = NAN;
    v47.f64[1] = NAN;
    v44 = 2654435761u * *vbslq_s8(vnegq_f64(v47), v42, v41).i64;
    if (v46 >= 0.0)
    {
      if (v46 > 0.0)
      {
        v44 += v46;
      }
    }

    else
    {
      v44 -= fabs(v46);
    }
  }

  else
  {
    v44 = 0;
  }

  if ((*&v43 & 0x8000) != 0)
  {
    v48 = 2654435761 * self->_isHighlight;
  }

  else
  {
    v48 = 0;
  }

  return v103 ^ v104 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v95 ^ v94 ^ (2654435761 * feed) ^ v97 ^ v93 ^ v92 ^ v91 ^ v90 ^ v88 ^ v87 ^ v89 ^ (2654435761 * includesSound) ^ v86 ^ v85 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v59 ^ v58 ^ v60 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v44 ^ v48;
}

- (void)mergeFrom:(id)from
{
  v58 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 15))
  {
    [(BLTPBBulletin *)self setBulletinID:?];
  }

  if (*(fromCopy + 37))
  {
    [(BLTPBBulletin *)self setSectionID:?];
  }

  if (*(fromCopy + 36))
  {
    [(BLTPBBulletin *)self setSectionDisplayName:?];
  }

  if (*(fromCopy + 51))
  {
    [(BLTPBBulletin *)self setTitle:?];
  }

  if (*(fromCopy + 45))
  {
    [(BLTPBBulletin *)self setSubtitle:?];
  }

  if (*(fromCopy + 31))
  {
    [(BLTPBBulletin *)self setMessageTitle:?];
  }

  if (*(fromCopy + 440))
  {
    self->_date = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 10))
  {
    [(BLTPBBulletin *)self setAttachment:?];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = *(fromCopy + 47);
  v6 = [v5 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BLTPBBulletin *)self addSupplementaryActions:*(*(&v50 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v7);
  }

  self->_feed = *(fromCopy + 50);
  snoozeAction = self->_snoozeAction;
  v11 = *(fromCopy + 39);
  if (snoozeAction)
  {
    if (v11)
    {
      [(BLTPBAction *)snoozeAction mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(BLTPBBulletin *)self setSnoozeAction:?];
  }

  if (*(fromCopy + 34))
  {
    [(BLTPBBulletin *)self setRecordID:?];
  }

  if (*(fromCopy + 33))
  {
    [(BLTPBBulletin *)self setPublisherBulletinID:?];
  }

  dismissAction = self->_dismissAction;
  v13 = *(fromCopy + 22);
  if (dismissAction)
  {
    if (v13)
    {
      [(BLTPBAction *)dismissAction mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(BLTPBBulletin *)self setDismissAction:?];
  }

  if (*(fromCopy + 441))
  {
    self->_sectionSubtype = *(fromCopy + 76);
    *&self->_has |= 0x100u;
  }

  if (*(fromCopy + 40))
  {
    [(BLTPBBulletin *)self setSockPuppetAppBundleID:?];
  }

  if (*(fromCopy + 16))
  {
    [(BLTPBBulletin *)self setCategory:?];
  }

  if ((*(fromCopy + 440) & 4) != 0)
  {
    self->_publicationDate = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

  self->_includesSound = *(fromCopy + 429);
  if (*(fromCopy + 48))
  {
    [(BLTPBBulletin *)self setTeamID:?];
  }

  if (*(fromCopy + 20))
  {
    [(BLTPBBulletin *)self setContext:?];
  }

  if (*(fromCopy + 52))
  {
    [(BLTPBBulletin *)self setUniversalSectionID:?];
  }

  if (*(fromCopy + 8))
  {
    [(BLTPBBulletin *)self setAlertSuppressionContexts:?];
  }

  if ((*(fromCopy + 441) & 2) != 0)
  {
    self->_soundAlertType = *(fromCopy + 84);
    *&self->_has |= 0x200u;
  }

  if (*(fromCopy + 41))
  {
    [(BLTPBBulletin *)self setSoundAccountIdentifier:?];
  }

  if (*(fromCopy + 43))
  {
    [(BLTPBBulletin *)self setSoundToneIdentifier:?];
  }

  v14 = *(fromCopy + 110);
  if ((v14 & 0x40) != 0)
  {
    self->_attachmentType = *(fromCopy + 24);
    *&self->_has |= 0x40u;
    v14 = *(fromCopy + 110);
    if ((v14 & 0x800) == 0)
    {
LABEL_62:
      if ((v14 & 0x10000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_119;
    }
  }

  else if ((v14 & 0x800) == 0)
  {
    goto LABEL_62;
  }

  self->_containsUpdatedAttachment = *(fromCopy + 425);
  *&self->_has |= 0x800u;
  v14 = *(fromCopy + 110);
  if ((v14 & 0x10000) == 0)
  {
LABEL_63:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_119:
  self->_loading = *(fromCopy + 431);
  *&self->_has |= 0x10000u;
  if ((*(fromCopy + 110) & 0x200000) != 0)
  {
LABEL_64:
    self->_turnsOnDisplay = *(fromCopy + 436);
    *&self->_has |= 0x200000u;
  }

LABEL_65:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = *(fromCopy + 44);
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v47;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(BLTPBBulletin *)self addSubsectionIDs:*(*(&v46 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v17);
  }

  if (*(fromCopy + 23))
  {
    [(BLTPBBulletin *)self setDismissalID:?];
  }

  if (*(fromCopy + 13))
  {
    [(BLTPBBulletin *)self setAttachmentURL:?];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v20 = *(fromCopy + 32);
  v21 = [v20 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v43;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(BLTPBBulletin *)self addPeopleIDs:*(*(&v42 + 1) + 8 * k)];
      }

      v22 = [v20 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v22);
  }

  if ((*(fromCopy + 441) & 0x40) != 0)
  {
    self->_ignoresQuietMode = *(fromCopy + 428);
    *&self->_has |= 0x4000u;
  }

  if (*(fromCopy + 17))
  {
    [(BLTPBBulletin *)self setCategoryID:?];
  }

  if (*(fromCopy + 21))
  {
    [(BLTPBBulletin *)self setContextNulls:?];
  }

  if (*(fromCopy + 9))
  {
    [(BLTPBBulletin *)self setAlertSuppressionContextsNulls:?];
  }

  if (*(fromCopy + 49))
  {
    [(BLTPBBulletin *)self setThreadID:?];
  }

  if (*(fromCopy + 11))
  {
    [(BLTPBBulletin *)self setAttachmentID:?];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = *(fromCopy + 7);
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v39;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(BLTPBBulletin *)self addAdditionalAttachments:*(*(&v38 + 1) + 8 * m), v38];
      }

      v27 = [v25 countByEnumeratingWithState:&v38 objects:v54 count:16];
    }

    while (v27);
  }

  if ((*(fromCopy + 440) & 8) != 0)
  {
    self->_requiredExpirationDate = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 35))
  {
    [(BLTPBBulletin *)self setReplyToken:?];
  }

  v30 = *(fromCopy + 110);
  if ((v30 & 0x20) != 0)
  {
    self->_soundMaximumDuration = *(fromCopy + 6);
    *&self->_has |= 0x20u;
    v30 = *(fromCopy + 110);
    if ((v30 & 0x80000) == 0)
    {
LABEL_108:
      if ((v30 & 0x40000) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_123;
    }
  }

  else if ((v30 & 0x80000) == 0)
  {
    goto LABEL_108;
  }

  self->_soundShouldRepeat = *(fromCopy + 434);
  *&self->_has |= 0x80000u;
  v30 = *(fromCopy + 110);
  if ((v30 & 0x40000) == 0)
  {
LABEL_109:
    if ((v30 & 0x1000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_124;
  }

LABEL_123:
  self->_soundShouldIgnoreRingerSwitch = *(fromCopy + 433);
  *&self->_has |= 0x40000u;
  v30 = *(fromCopy + 110);
  if ((v30 & 0x1000) == 0)
  {
LABEL_110:
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_125;
  }

LABEL_124:
  self->_hasCriticalIcon = *(fromCopy + 426);
  *&self->_has |= 0x1000u;
  v30 = *(fromCopy + 110);
  if ((v30 & 0x10) == 0)
  {
LABEL_111:
    if ((v30 & 0x20000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_126;
  }

LABEL_125:
  self->_soundAudioVolume = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v30 = *(fromCopy + 110);
  if ((v30 & 0x20000) == 0)
  {
LABEL_112:
    if ((v30 & 0x100000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

LABEL_126:
  self->_preemptsPresentedAlert = *(fromCopy + 432);
  *&self->_has |= 0x20000u;
  if ((*(fromCopy + 110) & 0x100000) != 0)
  {
LABEL_113:
    self->_suppressDelayForForwardedBulletins = *(fromCopy + 435);
    *&self->_has |= 0x100000u;
  }

LABEL_114:
  icon = self->_icon;
  v32 = *(fromCopy + 29);
  if (icon)
  {
    if (v32)
    {
      [(BLTPBSectionIcon *)icon mergeFrom:?];
    }
  }

  else if (v32)
  {
    [(BLTPBBulletin *)self setIcon:?];
  }

  if ((*(fromCopy + 441) & 4) != 0)
  {
    self->_containsUpdateIcon = *(fromCopy + 424);
    *&self->_has |= 0x400u;
  }

  if (*(fromCopy + 28))
  {
    [(BLTPBBulletin *)self setHeader:?];
  }

  if ((*(fromCopy + 440) & 0x80) != 0)
  {
    self->_interruptionLevel = *(fromCopy + 60);
    *&self->_has |= 0x80u;
  }

  communicationContext = self->_communicationContext;
  v34 = *(fromCopy + 18);
  if (communicationContext)
  {
    if (v34)
    {
      [(BLTPBCommunicationContext *)communicationContext mergeFrom:?];
    }
  }

  else if (v34)
  {
    [(BLTPBBulletin *)self setCommunicationContext:?];
  }

  if (*(fromCopy + 19))
  {
    [(BLTPBBulletin *)self setContentType:?];
  }

  if (*(fromCopy + 26))
  {
    [(BLTPBBulletin *)self setFilterCriteria:?];
  }

  followActivityAction = self->_followActivityAction;
  v36 = *(fromCopy + 27);
  if (followActivityAction)
  {
    if (v36)
    {
      [(BLTPBAction *)followActivityAction mergeFrom:?];
    }
  }

  else if (v36)
  {
    [(BLTPBBulletin *)self setFollowActivityAction:?];
  }

  if ((*(fromCopy + 441) & 0x20) != 0)
  {
    self->_hasSubordinateIcon = *(fromCopy + 427);
    *&self->_has |= 0x2000u;
  }

  if (*(fromCopy + 46))
  {
    [(BLTPBBulletin *)self setSummary:?];
  }

  if (*(fromCopy + 50))
  {
    [(BLTPBBulletin *)self setThreadSummary:?];
  }

  if (*(fromCopy + 14))
  {
    [(BLTPBBulletin *)self setAttributedMessage:?];
  }

  if (*(fromCopy + 24))
  {
    [(BLTPBBulletin *)self setEventBehavior:?];
  }

  v37 = *(fromCopy + 110);
  if ((v37 & 2) != 0)
  {
    self->_priorityNotificationStatus = *(fromCopy + 2);
    *&self->_has |= 2u;
    v37 = *(fromCopy + 110);
  }

  if ((v37 & 0x8000) != 0)
  {
    self->_isHighlight = *(fromCopy + 430);
    *&self->_has |= 0x8000u;
  }
}

+ (id)bulletinWithBBBulletin:(id)bulletin sockPuppetAppBundleID:(id)d observer:(id)observer feed:(unint64_t)feed teamID:(id)iD universalSectionID:(id)sectionID shouldUseExpirationDate:(BOOL)date replyToken:(id)self0 gizmoLegacyPublisherBulletinID:(id)self1 gizmoLegacyCategoryID:(id)self2 gizmoSectionID:(id)self3 gizmoSectionSubtype:(id)self4 useUserInfoForContext:(BOOL)self5 removeSubtitleForOlderWatches:(BOOL)self6
{
  v298 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  dCopy = d;
  observerCopy = observer;
  iDCopy = iD;
  sectionIDCopy = sectionID;
  tokenCopy = token;
  bulletinIDCopy = bulletinID;
  categoryIDCopy = categoryID;
  gizmoSectionIDCopy = gizmoSectionID;
  subtypeCopy = subtype;
  v23 = +[BLTPBActionFactory sharedInstance];
  v24 = MEMORY[0x277CBEB18];
  supplementaryActions = [bulletinCopy supplementaryActions];
  v26 = [v24 arrayWithCapacity:{objc_msgSend(supplementaryActions, "count")}];

  v284 = 0u;
  v285 = 0u;
  v282 = 0u;
  v283 = 0u;
  supplementaryActions2 = [bulletinCopy supplementaryActions];
  v28 = [supplementaryActions2 countByEnumeratingWithState:&v282 objects:v297 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v283;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v283 != v30)
        {
          objc_enumerationMutation(supplementaryActions2);
        }

        v32 = [v23 actionWithBBAction:*(*(&v282 + 1) + 8 * i)];
        if (v32)
        {
          [v26 addObject:v32];
        }
      }

      v29 = [supplementaryActions2 countByEnumeratingWithState:&v282 objects:v297 count:16];
    }

    while (v29);
  }

  snoozeAction = [bulletinCopy snoozeAction];
  v240 = [v23 actionWithBBAction:snoozeAction];

  dismissAction = [bulletinCopy dismissAction];
  v239 = [v23 actionWithBBAction:dismissAction];

  v35 = objc_alloc_init(BLTPBBulletin);
  bulletinID = [bulletinCopy bulletinID];
  v37 = nilForNSNull(bulletinID);
  [(BLTPBBulletin *)v35 setBulletinID:v37];

  sectionID = gizmoSectionIDCopy;
  if (!gizmoSectionIDCopy)
  {
    sectionID = [bulletinCopy sectionID];
  }

  v39 = nilForNSNull(sectionID);
  [(BLTPBBulletin *)v35 setSectionID:v39];

  if (!gizmoSectionIDCopy)
  {
  }

  sectionDisplayName = [bulletinCopy sectionDisplayName];
  v41 = nilForNSNull(sectionDisplayName);
  [(BLTPBBulletin *)v35 setSectionDisplayName:v41];

  recordID = [bulletinCopy recordID];
  v43 = nilForNSNull(recordID);
  [(BLTPBBulletin *)v35 setRecordID:v43];

  publisherBulletinID = bulletinIDCopy;
  if (!bulletinIDCopy)
  {
    publisherBulletinID = [bulletinCopy publisherBulletinID];
  }

  v45 = nilForNSNull(publisherBulletinID);
  [(BLTPBBulletin *)v35 setPublisherBulletinID:v45];

  if (!bulletinIDCopy)
  {
  }

  v235 = bulletinIDCopy;
  if (subtypeCopy)
  {
    integerValue = [subtypeCopy integerValue];
  }

  else
  {
    integerValue = [bulletinCopy sectionSubtype];
  }

  [(BLTPBBulletin *)v35 setSectionSubtype:integerValue];
  [(BLTPBBulletin *)v35 setFeed:feed];
  dismissalID = [bulletinCopy dismissalID];
  v48 = nilForNSNull(dismissalID);
  [(BLTPBBulletin *)v35 setDismissalID:v48];

  if (categoryIDCopy)
  {
    v49 = nilForNSNull(categoryIDCopy);
  }

  else
  {
    categoryID = [bulletinCopy categoryID];
    v49 = nilForNSNull(categoryID);
  }

  [(BLTPBBulletin *)v35 setCategoryID:v49];
  if (([MEMORY[0x277D2BCC8] activePairedDeviceSupportsSendingOnlyCategoryID] & 1) == 0)
  {
    [(BLTPBBulletin *)v35 setCategory:v49];
  }

  v233 = v49;
  threadID = [bulletinCopy threadID];
  v52 = nilForNSNull(threadID);
  [(BLTPBBulletin *)v35 setThreadID:v52];

  if (date)
  {
    expirationDate = [bulletinCopy expirationDate];
    [expirationDate timeIntervalSince1970];
    [(BLTPBBulletin *)v35 setRequiredExpirationDate:?];
  }

  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAddBulletinReplyToken])
  {
    [(BLTPBBulletin *)v35 setReplyToken:tokenCopy];
  }

  subsectionIDs = [bulletinCopy subsectionIDs];
  v55 = [subsectionIDs count];

  if (v55)
  {
    v56 = MEMORY[0x277CBEB18];
    subsectionIDs2 = [bulletinCopy subsectionIDs];
    v58 = [v56 arrayWithCapacity:{objc_msgSend(subsectionIDs2, "count")}];

    v280 = 0u;
    v281 = 0u;
    v278 = 0u;
    v279 = 0u;
    subsectionIDs3 = [bulletinCopy subsectionIDs];
    v60 = [subsectionIDs3 countByEnumeratingWithState:&v278 objects:v296 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v279;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v279 != v62)
          {
            objc_enumerationMutation(subsectionIDs3);
          }

          [v58 addObject:*(*(&v278 + 1) + 8 * j)];
        }

        v61 = [subsectionIDs3 countByEnumeratingWithState:&v278 objects:v296 count:16];
      }

      while (v61);
    }

    [(BLTPBBulletin *)v35 setSubsectionIDs:v58];
  }

  peopleIDs = [bulletinCopy peopleIDs];
  v65 = [peopleIDs mutableCopy];
  [(BLTPBBulletin *)v35 setPeopleIDs:v65];

  date = [bulletinCopy date];

  if (date)
  {
    date2 = [bulletinCopy date];
    [date2 timeIntervalSince1970];
    [(BLTPBBulletin *)v35 setDate:?];
  }

  title = [bulletinCopy title];
  v69 = nilForNSNull(title);

  subtitle = [bulletinCopy subtitle];
  v71 = nilForNSNull(subtitle);

  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsDisplayingSubtitle])
  {
    v238 = v69;
  }

  else
  {
    if (v69 && v71)
    {
      v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", v69, v71];

      v238 = v72;
      v69 = v72;
    }

    else
    {
      if (v69)
      {
        v73 = v69;
      }

      else
      {
        v73 = v71;
      }

      v238 = v73;
    }

    if (watches)
    {

      v71 = 0;
    }
  }

  summary = [bulletinCopy summary];
  if (summary)
  {
    v75 = summary;
    v76 = MEMORY[0x277CCAAB0];
    summary2 = [bulletinCopy summary];
    v277 = 0;
    v78 = [v76 archivedDataWithRootObject:summary2 requiringSecureCoding:1 error:&v277];
    v79 = v277;
    v80 = v78;

    if (v79)
    {
      v82 = blt_ids_log(v81);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        +[BLTPBBulletin(BBBulletin) bulletinWithBBBulletin:sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:];
      }
    }

    if (v80)
    {
      [(BLTPBBulletin *)v35 setSummary:v80];
    }
  }

  threadSummary = [bulletinCopy threadSummary];
  if (threadSummary)
  {
    v84 = threadSummary;
    v85 = MEMORY[0x277CCAAB0];
    threadSummary2 = [bulletinCopy threadSummary];
    v276 = 0;
    v87 = [v85 archivedDataWithRootObject:threadSummary2 requiringSecureCoding:1 error:&v276];
    v88 = v276;
    v89 = v87;

    if (v88)
    {
      v91 = blt_ids_log(v90);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        +[BLTPBBulletin(BBBulletin) bulletinWithBBBulletin:sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:];
      }
    }

    if (v89)
    {
      [(BLTPBBulletin *)v35 setThreadSummary:v89];
    }
  }

  attributedMessage = [bulletinCopy attributedMessage];
  if (attributedMessage)
  {
    v93 = attributedMessage;
    v94 = MEMORY[0x277CCAAB0];
    attributedMessage2 = [bulletinCopy attributedMessage];
    v275 = 0;
    v96 = [v94 archivedDataWithRootObject:attributedMessage2 requiringSecureCoding:1 error:&v275];
    v97 = v275;
    v98 = v96;

    if (v97)
    {
      v100 = blt_ids_log(v99);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        +[BLTPBBulletin(BBBulletin) bulletinWithBBBulletin:sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:];
      }
    }

    if (v98)
    {
      [(BLTPBBulletin *)v35 setAttributedMessage:v98];
    }
  }

  eventBehavior = [bulletinCopy eventBehavior];
  if (eventBehavior)
  {
    v102 = eventBehavior;
    v103 = MEMORY[0x277CCAAB0];
    eventBehavior2 = [bulletinCopy eventBehavior];
    v274 = 0;
    v105 = [v103 archivedDataWithRootObject:eventBehavior2 requiringSecureCoding:1 error:&v274];
    v106 = v274;
    v107 = v105;

    if (v106)
    {
      v109 = blt_ids_log(v108);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        +[BLTPBBulletin(BBBulletin) bulletinWithBBBulletin:sockPuppetAppBundleID:observer:feed:teamID:universalSectionID:shouldUseExpirationDate:replyToken:gizmoLegacyPublisherBulletinID:gizmoLegacyCategoryID:gizmoSectionID:gizmoSectionSubtype:useUserInfoForContext:removeSubtitleForOlderWatches:];
      }
    }

    if (v107)
    {
      [(BLTPBBulletin *)v35 setEventBehavior:v107];
    }
  }

  header = [bulletinCopy header];
  v111 = nilForNSNull(header);
  [(BLTPBBulletin *)v35 setHeader:v111];

  [(BLTPBBulletin *)v35 setTitle:v238];
  [(BLTPBBulletin *)v35 setSubtitle:v71];
  message = [bulletinCopy message];
  v113 = nilForNSNull(message);
  [(BLTPBBulletin *)v35 setMessageTitle:v113];

  -[BLTPBBulletin setLoading:](v35, "setLoading:", [bulletinCopy isLoading]);
  -[BLTPBBulletin setTurnsOnDisplay:](v35, "setTurnsOnDisplay:", [bulletinCopy turnsOnDisplay]);
  [(BLTPBBulletin *)v35 setSnoozeAction:v240];
  [(BLTPBBulletin *)v35 setDismissAction:v239];
  [(BLTPBBulletin *)v35 setSupplementaryActions:v26];
  [(BLTPBBulletin *)v35 setSockPuppetAppBundleID:dCopy];
  if ([bulletinCopy suppressDelayForForwardedBulletins])
  {
    [(BLTPBBulletin *)v35 setSuppressDelayForForwardedBulletins:1];
  }

  publishDate = [bulletinCopy publishDate];
  [publishDate timeIntervalSince1970];
  [(BLTPBBulletin *)v35 setPublicationDate:?];
  sound = [bulletinCopy sound];
  [(BLTPBBulletin *)v35 setIncludesSound:sound != 0];
  alertConfiguration = [sound alertConfiguration];
  -[BLTPBBulletin setSoundAlertType:](v35, "setSoundAlertType:", [alertConfiguration type]);

  alertConfiguration2 = [sound alertConfiguration];
  topic = [alertConfiguration2 topic];
  v118 = nilForNSNull(topic);
  [(BLTPBBulletin *)v35 setSoundAccountIdentifier:v118];

  alertConfiguration3 = [sound alertConfiguration];
  toneIdentifier = [alertConfiguration3 toneIdentifier];
  v121 = nilForNSNull(toneIdentifier);
  [(BLTPBBulletin *)v35 setSoundToneIdentifier:v121];

  blt_boundedWaitForActivePairedDevice = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  bltVersion = [blt_boundedWaitForActivePairedDevice bltVersion];

  if (bltVersion >= 6)
  {
    v124 = bltVersion;
    alertConfiguration4 = [sound alertConfiguration];
    if ([alertConfiguration4 shouldRepeat])
    {
      v126 = [bulletinCopy blt_isVOIPCall] ^ 1;
    }

    else
    {
      v126 = 0;
    }

    [(BLTPBBulletin *)v35 setSoundShouldRepeat:v126];
    alertConfiguration5 = [sound alertConfiguration];
    -[BLTPBBulletin setSoundShouldIgnoreRingerSwitch:](v35, "setSoundShouldIgnoreRingerSwitch:", [alertConfiguration5 shouldIgnoreRingerSwitch]);

    alertConfiguration6 = [sound alertConfiguration];
    [alertConfiguration6 maximumDuration];
    [(BLTPBBulletin *)v35 setSoundMaximumDuration:?];

    bltVersion = v124;
  }

  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsCriticalAndGroupingSettings])
  {
    -[BLTPBBulletin setHasCriticalIcon:](v35, "setHasCriticalIcon:", [bulletinCopy hasCriticalIcon]);
    alertConfiguration7 = [sound alertConfiguration];
    [alertConfiguration7 audioVolume];
    [(BLTPBBulletin *)v35 setSoundAudioVolume:v130];
  }

  [(BLTPBBulletin *)v35 setTeamID:iDCopy];
  -[BLTPBBulletin setIgnoresQuietMode:](v35, "setIgnoresQuietMode:", [bulletinCopy ignoresQuietMode]);
  -[BLTPBBulletin setPreemptsPresentedAlert:](v35, "setPreemptsPresentedAlert:", [bulletinCopy preemptsPresentedAlert]);
  bltContext = [bulletinCopy bltContext];
  v132 = bltContext;
  v234 = categoryIDCopy;
  v232 = v71;
  v230 = sound;
  if (bltContext && bltVersion <= 7)
  {
    contextCopy2 = context;
    v247 = bltContext;
    v134 = [bltContext mutableCopy];
    [v134 removeObjectForKey:@"userInfo"];
    if (bltVersion == 7)
    {
      [MEMORY[0x277CE1F78] notificationForBulletin:bulletinCopy];
      v270 = 0u;
      v271 = 0u;
      v272 = 0u;
      v227 = v273 = 0u;
      request = [v227 request];
      content = [request content];
      attachments = [content attachments];

      v138 = [attachments countByEnumeratingWithState:&v270 objects:v295 count:16];
      if (v138)
      {
        v139 = v138;
        v140 = *v271;
        do
        {
          for (k = 0; k != v139; ++k)
          {
            if (*v271 != v140)
            {
              objc_enumerationMutation(attachments);
            }

            [*(*(&v270 + 1) + 8 * k) blt_preEncodeShouldAddNotificationAttachmentOptions];
          }

          v139 = [attachments countByEnumeratingWithState:&v270 objects:v295 count:16];
        }

        while (v139);
      }

      bs_secureEncoded = [v227 bs_secureEncoded];
      v266 = 0u;
      v267 = 0u;
      v268 = 0u;
      v269 = 0u;
      request2 = [v227 request];
      content2 = [request2 content];
      attachments2 = [content2 attachments];

      v146 = [attachments2 countByEnumeratingWithState:&v266 objects:v294 count:16];
      if (v146)
      {
        v147 = v146;
        v148 = *v267;
        do
        {
          for (m = 0; m != v147; ++m)
          {
            if (*v267 != v148)
            {
              objc_enumerationMutation(attachments2);
            }

            [*(*(&v266 + 1) + 8 * m) blt_postEncodeNotificationAttachmentOptions];
          }

          v147 = [attachments2 countByEnumeratingWithState:&v266 objects:v294 count:16];
        }

        while (v147);
      }

      bltVersion = 7;
      contextCopy2 = context;
      if (v227 && bs_secureEncoded)
      {
        goto LABEL_111;
      }

      v151 = blt_ids_log(v150);
      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v289 = bulletinCopy;
        v290 = 2112;
        v291 = v227;
        v292 = 2112;
        v293 = bs_secureEncoded;
        _os_log_error_impl(&dword_241FB3000, v151, OS_LOG_TYPE_ERROR, "Error getting a plist serialazable UNNotification from BBBulletin,  bulletin=%@ UNNotification=%@  plistSeriazableData=%@", buf, 0x20u);
      }

      if (bs_secureEncoded)
      {
LABEL_111:
        [v134 setObject:bs_secureEncoded forKeyedSubscript:@"UNBulletinContextArchivedUserNotification"];
      }
    }

    v152 = v134;

    if (contextCopy2 || (v153 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsUserNotificationListDestination], !v153) || (v153 = objc_msgSend(MEMORY[0x277D2BCC8], "activePairedDeviceSupportsNoLocalRemoteNotificationInBulletinContext"), v132 = v152, (v153 & 1) == 0))
    {
      if (v152 && ([MEMORY[0x277CE1F78] notificationForBulletin:bulletinCopy], v154 = objc_claimAutoreleasedReturnValue(), v154, v154))
      {
        if (contextCopy2)
        {
          request3 = [v154 request];
          [request3 content];
          v157 = v156 = bltVersion;
          userInfo = [v157 userInfo];

          bltVersion = v156;
          v132 = userInfo;
        }

        else
        {
          v159 = [v152 mutableCopy];
          v226 = bltVersion;
          if (([MEMORY[0x277D2BCC8] activePairedDeviceSupportsUserNotificationListDestination] & 1) == 0)
          {
            request4 = [v154 request];
            content3 = [request4 content];

            if (content3)
            {
              v248 = v159;
              request5 = [v154 request];
              v164 = [request5 destinations] & 6;

              v166 = blt_ids_log(v165);
              if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v289) = v164 != 0;
                _os_log_impl(&dword_241FB3000, v166, OS_LOG_TYPE_DEFAULT, "Adding back shouldAddToNotificationsList: %{BOOL}u", buf, 8u);
              }

              v225 = v164;

              v264 = 0u;
              v265 = 0u;
              v262 = 0u;
              v263 = 0u;
              v228 = content3;
              attachments3 = [content3 attachments];
              v168 = [attachments3 countByEnumeratingWithState:&v262 objects:v287 count:16];
              if (v168)
              {
                v169 = v168;
                v170 = *v263;
                do
                {
                  for (n = 0; n != v169; ++n)
                  {
                    if (*v263 != v170)
                    {
                      objc_enumerationMutation(attachments3);
                    }

                    [*(*(&v262 + 1) + 8 * n) blt_preEncodeShouldAddNotificationAttachmentOptions];
                  }

                  v169 = [attachments3 countByEnumeratingWithState:&v262 objects:v287 count:16];
                }

                while (v169);
              }

              content3 = v228;
              [v228 blt_preEncodeShouldAddToNotificationsList:v225 != 0];
              bs_secureEncoded2 = [v154 bs_secureEncoded];
              [v248 setObject:bs_secureEncoded2 forKeyedSubscript:@"UNBulletinContextArchivedUserNotification"];

              [v228 blt_postEncode];
              v260 = 0u;
              v261 = 0u;
              v258 = 0u;
              v259 = 0u;
              attachments4 = [v228 attachments];
              v174 = [attachments4 countByEnumeratingWithState:&v258 objects:v286 count:16];
              if (v174)
              {
                v175 = v174;
                v176 = *v259;
                do
                {
                  for (ii = 0; ii != v175; ++ii)
                  {
                    if (*v259 != v176)
                    {
                      objc_enumerationMutation(attachments4);
                    }

                    [*(*(&v258 + 1) + 8 * ii) blt_postEncodeNotificationAttachmentOptions];
                  }

                  v175 = [attachments4 countByEnumeratingWithState:&v258 objects:v286 count:16];
                }

                while (v175);
                v159 = v248;
                content3 = v228;
              }

              else
              {
                v159 = v248;
              }
            }

            else
            {
              attachments4 = blt_ids_log(v162);
              if (os_log_type_enabled(attachments4, OS_LOG_TYPE_ERROR))
              {
                [BLTPBBulletin(BBBulletin) bulletinWithBBBulletin:v154 sockPuppetAppBundleID:attachments4 observer:? feed:? teamID:? universalSectionID:? shouldUseExpirationDate:? replyToken:? gizmoLegacyPublisherBulletinID:? gizmoLegacyCategoryID:? gizmoSectionID:? gizmoSectionSubtype:? useUserInfoForContext:? removeSubtitleForOlderWatches:?];
              }
            }

            bltVersion = v226;
          }

          if (([MEMORY[0x277D2BCC8] activePairedDeviceSupportsNoLocalRemoteNotificationInBulletinContext] & 1) == 0)
          {
            v249 = v159;
            request6 = [v154 request];
            trigger = [request6 trigger];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v182 = blt_ids_log(v181);
            v183 = os_log_type_enabled(v182, OS_LOG_TYPE_INFO);
            if (isKindOfClass)
            {
              if (v183)
              {
                *buf = 0;
                _os_log_impl(&dword_241FB3000, v182, OS_LOG_TYPE_INFO, "Adding back remoteNotification to bulletin context for paired watch", buf, 2u);
              }

              request7 = [v154 request];
              content4 = [request7 content];
              userInfo2 = [content4 userInfo];
              v159 = v249;
              [v249 setObject:userInfo2 forKey:@"remoteNotification"];
            }

            else
            {
              if (v183)
              {
                *buf = 0;
                _os_log_impl(&dword_241FB3000, v182, OS_LOG_TYPE_INFO, "Adding back localNotification to bulletin context for paired watch", buf, 2u);
              }

              request7 = (*(*MEMORY[0x277D772E0] + 16))();
              content4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:request7 requiringSecureCoding:1 error:0];
              v159 = v249;
              [v249 setObject:content4 forKey:@"localNotification"];
            }

            bltVersion = v226;
          }

          v132 = v159;
        }
      }

      else
      {
        v154 = blt_ids_log(v153);
        if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241FB3000, v154, OS_LOG_TYPE_DEFAULT, "Changes to bulletin context were requested but context does not contain a valid UNNotification. No changes will be made to bulletin context.", buf, 2u);
        }

        v132 = v152;
      }
    }
  }

  v250 = v132;
  if (bltVersion > 7)
  {
    v255 = 0;
    v190 = &v255;
    v191 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v132 requiringSecureCoding:1 error:&v255];
  }

  else
  {
    activePairedDeviceSupportsNSNullPListExtenion = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsNSNullPListExtenion];
    v188 = activePairedDeviceSupportsNSNullPListExtenion;
    if (activePairedDeviceSupportsNSNullPListExtenion)
    {
      v189 = &v257;
    }

    else
    {
      v189 = 0;
    }

    if (activePairedDeviceSupportsNSNullPListExtenion)
    {
      v257 = 0;
    }

    v256 = 0;
    v190 = &v256;
    v191 = [BLTObjectSerializer serializeObject:v132 nulls:v189 error:&v256];
    if (v188)
    {
      v192 = v257;
      v190 = &v256;
      goto LABEL_168;
    }
  }

  v192 = 0;
LABEL_168:
  v193 = *v190;
  v194 = v193;
  v229 = v191;
  if (v193)
  {
    v195 = blt_ids_log(v193);
    if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v289 = v194;
      v290 = 2112;
      v291 = v191;
      v292 = 2112;
      v293 = bulletinCopy;
      _os_log_error_impl(&dword_241FB3000, v195, OS_LOG_TYPE_ERROR, "Error serializing bulletin context: %@, %@, %@", buf, 0x20u);
    }
  }

  else
  {
    [(BLTPBBulletin *)v35 setContext:v191];
    [(BLTPBBulletin *)v35 setContextNulls:v192];
  }

  v196 = MEMORY[0x277CBEB18];
  alertSuppressionContexts = [bulletinCopy alertSuppressionContexts];
  v198 = [v196 arrayWithCapacity:{objc_msgSend(alertSuppressionContexts, "count")}];

  alertSuppressionContexts2 = [bulletinCopy alertSuppressionContexts];
  v253[0] = MEMORY[0x277D85DD0];
  v253[1] = 3221225472;
  v253[2] = __289__BLTPBBulletin_BBBulletin__bulletinWithBBBulletin_sockPuppetAppBundleID_observer_feed_teamID_universalSectionID_shouldUseExpirationDate_replyToken_gizmoLegacyPublisherBulletinID_gizmoLegacyCategoryID_gizmoSectionID_gizmoSectionSubtype_useUserInfoForContext_removeSubtitleForOlderWatches___block_invoke;
  v253[3] = &unk_278D32E30;
  v200 = v198;
  v254 = v200;
  [alertSuppressionContexts2 enumerateObjectsUsingBlock:v253];

  activePairedDeviceSupportsNSNullPListExtenion2 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsNSNullPListExtenion];
  v202 = activePairedDeviceSupportsNSNullPListExtenion2;
  if (activePairedDeviceSupportsNSNullPListExtenion2)
  {
    v203 = &v252;
  }

  else
  {
    v203 = 0;
  }

  if (activePairedDeviceSupportsNSNullPListExtenion2)
  {
    v252 = 0;
  }

  v251 = v194;
  v204 = [BLTObjectSerializer serializeObject:v200 nulls:v203 error:&v251];
  if (v202)
  {
    v205 = v252;
  }

  else
  {
    v205 = 0;
  }

  v206 = v251;

  if (v206)
  {
    v208 = blt_ids_log(v207);
    if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v289 = v206;
      v290 = 2112;
      v291 = v204;
      v292 = 2112;
      v293 = bulletinCopy;
      _os_log_error_impl(&dword_241FB3000, v208, OS_LOG_TYPE_ERROR, "Error serializing alert suppression contexts: %@, %@, %@", buf, 0x20u);
    }
  }

  else
  {
    [(BLTPBBulletin *)v35 setAlertSuppressionContexts:v204];
    [(BLTPBBulletin *)v35 setAlertSuppressionContextsNulls:v205];
  }

  sectionDisplayName2 = [(BLTPBBulletin *)v35 sectionDisplayName];

  if (!sectionDisplayName2)
  {
    v210 = MEMORY[0x277CC1E88];
    sectionID2 = [(BLTPBBulletin *)v35 sectionID];
    v212 = [v210 bundleProxyForIdentifier:sectionID2];

    if (v212)
    {
      localizedName = [v212 localizedName];
      [(BLTPBBulletin *)v35 setSectionDisplayName:localizedName];
    }
  }

  [(BLTPBBulletin *)v35 setUniversalSectionID:sectionIDCopy];
  if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsIconsPerNotification])
  {
    icon = [bulletinCopy icon];
    v215 = BLTPBSectionIconFromBBSectionIcon(icon, 0);
    [(BLTPBBulletin *)v35 setIcon:v215];
  }

  contentType = [bulletinCopy contentType];
  [(BLTPBBulletin *)v35 setContentType:contentType];

  -[BLTPBBulletin setInterruptionLevel:](v35, "setInterruptionLevel:", [bulletinCopy interruptionLevel]);
  communicationContext = [bulletinCopy communicationContext];
  blt_protobuf = [communicationContext blt_protobuf];
  [(BLTPBBulletin *)v35 setCommunicationContext:blt_protobuf];

  filterCriteria = [bulletinCopy filterCriteria];
  [(BLTPBBulletin *)v35 setFilterCriteria:filterCriteria];

  followActivityAction = [bulletinCopy followActivityAction];

  if (followActivityAction)
  {
    followActivityAction2 = [bulletinCopy followActivityAction];
    v222 = [v23 actionWithBBAction:followActivityAction2];
    [(BLTPBBulletin *)v35 setFollowActivityAction:v222];
  }

  -[BLTPBBulletin setHasSubordinateIcon:](v35, "setHasSubordinateIcon:", [bulletinCopy hasSubordinateIcon]);
  -[BLTPBBulletin setPriorityNotificationStatus:](v35, "setPriorityNotificationStatus:", [bulletinCopy priorityNotificationStatus]);
  -[BLTPBBulletin setIsHighlight:](v35, "setIsHighlight:", [bulletinCopy isHighlight]);
  v223 = v35;

  return v35;
}

+ (void)bulletinWithBBBulletin:(id)bulletin sockPuppetAppBundleID:(id)d observer:(id)observer feed:(unint64_t)feed teamID:(id)iD universalSectionID:(id)sectionID shouldUseExpirationDate:(BOOL)date replyToken:(id)self0 gizmoLegacyPublisherBulletinID:(id)self1 gizmoLegacyCategoryID:(id)self2 gizmoSectionID:(id)self3 gizmoSectionSubtype:(id)self4 useUserInfoForContext:(BOOL)self5 removeSubtitleForOlderWatches:(BOOL)self6 attachOption:(unint64_t)self7 completion:(id)self8
{
  completionCopy = completion;
  observerCopy = observer;
  bulletinCopy = bulletin;
  LOWORD(v29) = __PAIR16__(watches, context);
  LOBYTE(v28) = date;
  v26 = [self bulletinWithBBBulletin:bulletinCopy sockPuppetAppBundleID:d observer:observerCopy feed:feed teamID:iD universalSectionID:sectionID shouldUseExpirationDate:v28 replyToken:token gizmoLegacyPublisherBulletinID:bulletinID gizmoLegacyCategoryID:categoryID gizmoSectionID:gizmoSectionID gizmoSectionSubtype:subtype useUserInfoForContext:v29 removeSubtitleForOlderWatches:?];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __313__BLTPBBulletin_BBBulletin__bulletinWithBBBulletin_sockPuppetAppBundleID_observer_feed_teamID_universalSectionID_shouldUseExpirationDate_replyToken_gizmoLegacyPublisherBulletinID_gizmoLegacyCategoryID_gizmoSectionID_gizmoSectionSubtype_useUserInfoForContext_removeSubtitleForOlderWatches_attachOption_completion___block_invoke;
  v32[3] = &unk_278D32E58;
  v33 = completionCopy;
  v27 = completionCopy;
  [self _addAttachmentsFromBBBulletin:bulletinCopy toBLTPBBulletin:v26 observer:observerCopy attachOption:option completion:v32];
}

uint64_t __313__BLTPBBulletin_BBBulletin__bulletinWithBBBulletin_sockPuppetAppBundleID_observer_feed_teamID_universalSectionID_shouldUseExpirationDate_replyToken_gizmoLegacyPublisherBulletinID_gizmoLegacyCategoryID_gizmoSectionID_gizmoSectionSubtype_useUserInfoForContext_removeSubtitleForOlderWatches_attachOption_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)publisherMatchID
{
  publisherBulletinID = [(BLTPBBulletin *)self publisherBulletinID];
  v4 = publisherBulletinID;
  if (publisherBulletinID)
  {
    recordID = publisherBulletinID;
  }

  else
  {
    recordID = [(BLTPBBulletin *)self recordID];
  }

  v6 = recordID;

  return v6;
}

- (id)attachmentKey:(id)key
{
  keyCopy = key;
  v5 = MEMORY[0x277CCACA8];
  sectionID = [(BLTPBBulletin *)self sectionID];
  publisherMatchID = [(BLTPBBulletin *)self publisherMatchID];
  v8 = publisherMatchID;
  if (keyCopy)
  {
    [v5 stringWithFormat:@"%@--%@--%@", sectionID, publisherMatchID, keyCopy];
  }

  else
  {
    [v5 stringWithFormat:@"%@--%@", sectionID, publisherMatchID, v11];
  }
  v9 = ;

  return v9;
}

- (id)attachmentURLURL
{
  attachmentURL = [(BLTPBBulletin *)self attachmentURL];
  if (attachmentURL)
  {
    v4 = MEMORY[0x277CBEBC0];
    attachmentURL2 = [(BLTPBBulletin *)self attachmentURL];
    v6 = [v4 URLWithString:attachmentURL2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_attachmentFromBBAttachmentMetadata:(id)metadata bulletin:(id)bulletin observer:(id)observer fileOption:(unint64_t)option attachOption:(unint64_t)attachOption completion:(id)completion
{
  v119 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  bulletinCopy = bulletin;
  observerCopy = observer;
  completionCopy = completion;
  if (!completionCopy)
  {
    +[BLTPBBulletin(BBBulletin) _attachmentFromBBAttachmentMetadata:bulletin:observer:fileOption:attachOption:completion:];
  }

  v18 = completionCopy;
  type = [metadataCopy type];
  v20 = attachOption == 1;
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke;
  v109[3] = &unk_278D32E80;
  v113 = type;
  v21 = metadataCopy;
  v110 = v21;
  v115 = attachOption == 2;
  v22 = bulletinCopy;
  v111 = v22;
  v23 = v18;
  v112 = v23;
  optionCopy = option;
  v24 = MEMORY[0x245D067A0](v109);
  v25 = v24;
  if (attachOption == 2)
  {
    goto LABEL_39;
  }

  if (type == 1)
  {
    v26 = blt_ids_log(v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_impl(&dword_241FB3000, v26, OS_LOG_TYPE_INFO, "%@ Image attachment processing", buf, 0xCu);
    }

    if (!option)
    {
      goto LABEL_39;
    }

    v27 = [v21 URL];
    if (!v27)
    {
      goto LABEL_39;
    }

    blt_boundedWaitForActivePairedDevice = v27;
    v29 = [v21 URL];
    null = [MEMORY[0x277CBEB68] null];
    v31 = null;
    if (v29 == null)
    {
    }

    else
    {
      [v21 URL];
      v32 = v89 = observerCopy;
      [v32 path];
      v87 = blt_boundedWaitForActivePairedDevice;
      v33 = v20;
      selfCopy = self;
      v36 = v35 = v29;

      observerCopy = v89;
      v37 = selfCopy;
      v38 = v33;

      if (!v36)
      {
LABEL_39:
        v25[2](v25, 0);
        goto LABEL_40;
      }

      blt_boundedWaitForActivePairedDevice = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
      v39 = MEMORY[0x277CBEBC0];
      v40 = [v21 URL];
      path = [v40 path];
      v42 = [v39 fileURLWithPath:path];

      v43 = BLTFileURLInAttachmentsPath(v22, v21);
      v88 = v42;
      v44 = [BLTImageAttachmentInfo imageAttachmentInfoForImageURL:v42];
      v45 = v44;
      if (!v44 || ([v44 contentType], v46 = objc_claimAutoreleasedReturnValue(), v46, !v46))
      {
        v79 = blt_ids_log(v44);
        v66 = v88;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          +[BLTPBBulletin(BBBulletin) _attachmentFromBBAttachmentMetadata:bulletin:observer:fileOption:attachOption:completion:];
        }

        (*(v23 + 2))(v23, 0, 0);
        goto LABEL_44;
      }

      v86 = v43;
      v47 = blt_ids_log(v44);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        publisherBulletinID = [v22 publisherBulletinID];
        *buf = 138412546;
        *&buf[4] = publisherBulletinID;
        v117 = 2112;
        v118 = v88;
        _os_log_impl(&dword_241FB3000, v47, OS_LOG_TYPE_INFO, "%@ Image attachment processing: %@", buf, 0x16u);
      }

      if (blt_boundedWaitForActivePairedDevice && v86)
      {
        v49 = [blt_boundedWaitForActivePairedDevice valueForProperty:*MEMORY[0x277D2BBE8]];
        [v49 floatValue];
        v51 = v50;

        v52 = [blt_boundedWaitForActivePairedDevice valueForProperty:*MEMORY[0x277D2BBF0]];
        [v52 CGSizeValue];
        v54 = v53;
        v56 = v55;

        v57 = v54 / v51;
        v58 = v56 / v51;
        v59 = [v45 size];
        if (v60 <= 0.0 || (v59 = [v45 size], v57 <= v61) || (v59 = objc_msgSend(v45, "size"), v62 <= 0.0) || (v59 = objc_msgSend(v45, "size"), v58 <= v63))
        {
          v85 = v38;
          v80 = blt_ids_log(v59);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
          {
            publisherBulletinID2 = [v22 publisherBulletinID];
            *buf = 138412546;
            *&buf[4] = publisherBulletinID2;
            v117 = 2112;
            v118 = v88;
            _os_log_impl(&dword_241FB3000, v80, OS_LOG_TYPE_INFO, "%@ Image attachment will be sent scaled: %@", buf, 0x16u);
          }

          v84 = [objc_alloc(MEMORY[0x277CDAAD8]) initWithFileAtURL:v88 size:4 scale:v57 representationTypes:{v58, v51}];
          [v84 setMinimumDimension:50.0];
          mEMORY[0x277CDAAE0] = [MEMORY[0x277CDAAE0] sharedGenerator];
          contentType = [v45 contentType];
          v95[0] = MEMORY[0x277D85DD0];
          v95[1] = 3221225472;
          v95[2] = __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_97;
          v95[3] = &unk_278D32EF8;
          v100 = v37;
          v96 = v21;
          v97 = v86;
          v101 = v85;
          v98 = v45;
          v99 = v25;
          v66 = v88;
          [mEMORY[0x277CDAAE0] saveBestRepresentationForRequest:v84 toFileAtURL:v97 withContentType:contentType completionHandler:v95];

          v43 = v86;
        }

        else
        {
          v64 = blt_ids_log(v59);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            publisherBulletinID3 = [v22 publisherBulletinID];
            *buf = 138412546;
            *&buf[4] = publisherBulletinID3;
            v117 = 2112;
            v118 = v88;
            _os_log_impl(&dword_241FB3000, v64, OS_LOG_TYPE_INFO, "%@ Image attachment will be sent without scaling: %@", buf, 0x16u);
          }

          v102[0] = MEMORY[0x277D85DD0];
          v102[1] = 3221225472;
          v102[2] = __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_94;
          v102[3] = &unk_278D32EA8;
          v107 = v37;
          v103 = v21;
          v66 = v88;
          v104 = v88;
          v108 = v38;
          v105 = v45;
          v106 = v25;
          BLTDispatchWorkQueue(v102);

          v43 = v86;
        }

LABEL_44:

        observerCopy = v89;
        goto LABEL_40;
      }

      v29 = v88;
      observerCopy = v89;
    }

    goto LABEL_37;
  }

  v67 = [v21 URL];
  blt_boundedWaitForActivePairedDevice = v67;
  if ((type & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
LABEL_38:

    goto LABEL_39;
  }

  v68 = [v21 URL];
  if (!blt_boundedWaitForActivePairedDevice)
  {
    blt_boundedWaitForActivePairedDevice = v68;
    goto LABEL_38;
  }

  v90 = observerCopy;
  v69 = MEMORY[0x277CCAA00];
  blt_boundedWaitForActivePairedDevice = v68;
  defaultManager = [v69 defaultManager];
  absoluteURL = [blt_boundedWaitForActivePairedDevice absoluteURL];

  path2 = [absoluteURL path];
  *buf = 0;
  v73 = [defaultManager attributesOfItemAtPath:path2 error:buf];
  fileSize = [v73 fileSize];

  if (fileSize <= 0x100000)
  {
    observerCopy = v90;
    goto LABEL_38;
  }

  v75 = BLTFileURLInAttachmentsPath(v22, v21);
  observerCopy = v90;
  if (!v75)
  {
    v29 = blt_general_log(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [BLTPBBulletin(BBBulletin) _attachmentFromBBAttachmentMetadata:v22 bulletin:v29 observer:? fileOption:? attachOption:? completion:?];
    }

LABEL_37:

    goto LABEL_38;
  }

  v76 = v75;
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_100;
  v91[3] = &unk_278D32F20;
  v92 = blt_boundedWaitForActivePairedDevice;
  v93 = v75;
  v94 = v25;
  v77 = v76;
  v78 = blt_boundedWaitForActivePairedDevice;
  [BLTAVUtil transcodeURL:v78 outURL:v77 maxBytes:0x100000 completion:v91];

LABEL_40:
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 56);
  if ((v5 - 1) <= 2)
  {
    v6 = "Video";
    if (v5 == 3)
    {
      v6 = "Sound";
    }

    if (v5 == 1)
    {
      v7 = "Image";
    }

    else
    {
      v7 = v6;
    }

    v8 = blt_ids_log(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v36 = 136315138;
      v37 = v7;
      _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_INFO, "%s attachment will be sent with bulletin", &v36, 0xCu);
    }

    v9 = objc_alloc_init(BLTPBBulletinAttachment);
    v10 = [*(a1 + 32) UUID];
    v11 = [v10 UUIDString];
    [(BLTPBBulletinAttachment *)v9 setIdentifier:v11];

    v12 = [(BLTPBBulletinAttachment *)v9 setType:*(a1 + 56)];
    if ((*(a1 + 72) & 1) == 0)
    {
      v12 = [*(a1 + 32) URL];
      if (v12)
      {
        v13 = v12;
        v14 = [*(a1 + 32) URL];
        v15 = [MEMORY[0x277CBEB68] null];

        if (v14 != v15)
        {
          v16 = blt_ids_log(v12);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v36 = 136315138;
            v37 = v7;
            _os_log_impl(&dword_241FB3000, v16, OS_LOG_TYPE_INFO, "%s retrieved url", &v36, 0xCu);
          }

          v17 = BLTTranscodedFileURLForBulletin(*(a1 + 40), *(a1 + 32));
          v18 = v17;
          if (v17)
          {
            v19 = [v17 absoluteString];
            [(BLTPBBulletinAttachment *)v9 setURL:v19];
          }

          else
          {
            v19 = [*(a1 + 32) URL];
            v22 = [v19 absoluteString];
            [(BLTPBBulletinAttachment *)v9 setURL:v22];
          }
        }
      }
    }

    if (*(a1 + 72) != 1)
    {
      v23 = *(a1 + 64);
      if (v23 != 2)
      {
        if (v23 != 1 || ([(BLTPBBulletinAttachment *)v9 uRL], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
        {
          v25 = *(a1 + 56);
          if (v25 == 3)
          {
            v27 = blt_ids_log(v12);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v36 = 136315138;
              v37 = v7;
              _os_log_impl(&dword_241FB3000, v27, OS_LOG_TYPE_INFO, "%s retrieving data", &v36, 0xCu);
            }

            v28 = [*(a1 + 32) URL];
            if (v28)
            {
              v29 = v28;
              v30 = [*(a1 + 32) URL];
              v31 = [MEMORY[0x277CBEB68] null];

              if (v30 != v31)
              {
                v32 = MEMORY[0x277CBEA90];
                v33 = [*(a1 + 32) URL];
                v34 = [v32 dataWithContentsOfURL:v33];

                (*(*(a1 + 48) + 16))();
              }
            }

            goto LABEL_39;
          }

          if (v25 == 1)
          {
            v26 = *(*(a1 + 48) + 16);
LABEL_38:
            v26();
LABEL_39:

            goto LABEL_40;
          }

          if (!v9)
          {
            v35 = blt_ids_log(v12);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
            {
              __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_cold_1(v7, v35);
            }
          }
        }
      }
    }

    v26 = *(*(a1 + 48) + 16);
    goto LABEL_38;
  }

  v20 = blt_ids_log(v3);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 56);
    v36 = 134217984;
    v37 = v21;
    _os_log_impl(&dword_241FB3000, v20, OS_LOG_TYPE_INFO, "Attachment data will be ignored for attachment type %ld", &v36, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_40:
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_94(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 72);
  v6 = [*(a1 + 48) contentType];
  v7 = [v2 _handleThumbnailResponse:0 attachmentMetadata:v3 transcodedAttachmentSaveURL:v4 wantsData:v5 imageContentType:v6];

  (*(*(a1 + 56) + 16))();
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_97(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_2;
  v11[3] = &unk_278D32ED0;
  v15 = *(a1 + 64);
  v12 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 72);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  BLTDispatchWorkQueue(v11);
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 80);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) contentType];
  v8 = [v2 _handleThumbnailResponse:v3 attachmentMetadata:v4 transcodedAttachmentSaveURL:v6 wantsData:v5 imageContentType:v7];

  (*(*(a1 + 64) + 16))();
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = blt_general_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_100_cold_1(a1, v4, v5);
    }
  }

  (*(*(a1 + 48) + 16))();
}

+ (id)_handleThumbnailResponse:(id)response attachmentMetadata:(id)metadata transcodedAttachmentSaveURL:(id)l wantsData:(BOOL)data imageContentType:(id)type
{
  dataCopy = data;
  v33 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  metadataCopy = metadata;
  lCopy = l;
  typeCopy = type;
  v15 = typeCopy;
  if (responseCopy)
  {
    path = blt_general_log(typeCopy);
    if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
    {
      [BLTPBBulletin(BBBulletin) _handleThumbnailResponse:responseCopy attachmentMetadata:metadataCopy transcodedAttachmentSaveURL:? wantsData:? imageContentType:?];
    }

    v17 = 0;
  }

  else
  {
    v18 = blt_ids_log(typeCopy);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = lCopy;
      _os_log_impl(&dword_241FB3000, v18, OS_LOG_TYPE_INFO, "_handleThumbnailResponse: Image attachment generated and saved to file URL %@", &v27, 0xCu);
    }

    if (!dataCopy)
    {
      v17 = 0;
      goto LABEL_18;
    }

    path = [(UIImage *)lCopy path];
    v19 = [MEMORY[0x277D755B8] imageWithContentsOfFile:path];
    identifier = [*MEMORY[0x277CE1E10] identifier];
    v21 = [v15 isEqualToString:identifier];

    v23 = blt_ids_log(v22);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v21)
    {
      if (v24)
      {
        v27 = 138412802;
        v28 = v19;
        v29 = 2112;
        v30 = path;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_241FB3000, v23, OS_LOG_TYPE_INFO, "_handleThumbnailResponse: PNG is being added manually, backwards compatibility for older watches image: %@ filepath: %@ imageContentType: %@", &v27, 0x20u);
      }

      v25 = UIImagePNGRepresentation(v19);
    }

    else
    {
      if (v24)
      {
        v27 = 138412802;
        v28 = v19;
        v29 = 2112;
        v30 = path;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_241FB3000, v23, OS_LOG_TYPE_INFO, "_handleThumbnailResponse: JPEG attachment is being added manually, backwards compatibility for older watches image: %@ filepath: %@ imageContentType: %@", &v27, 0x20u);
      }

      v25 = UIImageJPEGRepresentation(v19, 0.899999976);
    }

    v17 = v25;
  }

LABEL_18:

  return v17;
}

+ (void)_addAttachmentsFromBBBulletin:(id)bulletin toBLTPBBulletin:(id)bBulletin observer:(id)observer attachOption:(unint64_t)option completion:(id)completion
{
  bulletinCopy = bulletin;
  bBulletinCopy = bBulletin;
  observerCopy = observer;
  completionCopy = completion;
  activePairedDeviceSupportsMultipleAttachments = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsMultipleAttachments];
  primaryAttachment = [bulletinCopy primaryAttachment];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __108__BLTPBBulletin_BBBulletin___addAttachmentsFromBBBulletin_toBLTPBBulletin_observer_attachOption_completion___block_invoke;
  v22[3] = &unk_278D32F70;
  v29 = option == 1;
  v30 = activePairedDeviceSupportsMultipleAttachments;
  v23 = bBulletinCopy;
  v24 = bulletinCopy;
  selfCopy = self;
  optionCopy = option;
  v25 = observerCopy;
  v26 = completionCopy;
  v18 = completionCopy;
  v19 = observerCopy;
  v20 = bulletinCopy;
  v21 = bBulletinCopy;
  [self _attachmentFromBBAttachmentMetadata:primaryAttachment bulletin:v20 observer:v19 fileOption:activePairedDeviceSupportsMultipleAttachments attachOption:option completion:v22];
}

void __108__BLTPBBulletin_BBBulletin___addAttachmentsFromBBBulletin_toBLTPBBulletin_observer_attachOption_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 identifier];
  [v7 setAttachmentID:v8];

  [*(a1 + 32) setAttachmentType:{objc_msgSend(v5, "type")}];
  if (*(a1 + 80))
  {
    if (!v6)
    {
      v6 = [v5 uRL];

      if (v6)
      {
        v9 = MEMORY[0x277CBEA90];
        v10 = MEMORY[0x277CBEBC0];
        v11 = [v5 uRL];
        v12 = [v10 URLWithString:v11];
        v6 = [v9 dataWithContentsOfURL:v12];
      }
    }

    goto LABEL_9;
  }

  if (*(a1 + 81) == 1)
  {
    v13 = [v5 uRL];
    if (v13)
    {

LABEL_10:
      v14 = *(a1 + 32);
      v15 = [v5 uRL];
      [v14 setAttachmentURL:v15];

      goto LABEL_11;
    }
  }

  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  [*(a1 + 32) setAttachment:v6];
LABEL_11:
  if (*(a1 + 81) == 1 && ([*(a1 + 40) additionalAttachments], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v17))
  {
    v29 = v6;
    v30 = v5;
    v18 = dispatch_group_create();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [*(a1 + 40) additionalAttachments];
    v19 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v32 = *v40;
      do
      {
        v21 = 0;
        do
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v39 + 1) + 8 * v21);
          dispatch_group_enter(v18);
          v23 = *(a1 + 40);
          v24 = *(a1 + 48);
          v26 = *(a1 + 64);
          v25 = *(a1 + 72);
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __108__BLTPBBulletin_BBBulletin___addAttachmentsFromBBBulletin_toBLTPBBulletin_observer_attachOption_completion___block_invoke_2;
          v36[3] = &unk_278D32F48;
          v37 = *(a1 + 32);
          v38 = v18;
          [v26 _attachmentFromBBAttachmentMetadata:v22 bulletin:v23 observer:v24 fileOption:2 attachOption:v25 completion:v36];

          ++v21;
        }

        while (v20 != v21);
        v20 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v20);
    }

    v28 = BLTWorkQueue(v27);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__BLTPBBulletin_BBBulletin___addAttachmentsFromBBBulletin_toBLTPBBulletin_observer_attachOption_completion___block_invoke_3;
    block[3] = &unk_278D31478;
    v35 = *(a1 + 56);
    v34 = *(a1 + 32);
    dispatch_group_notify(v18, v28, block);

    v6 = v29;
    v5 = v30;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __108__BLTPBBulletin_BBBulletin___addAttachmentsFromBBBulletin_toBLTPBBulletin_observer_attachOption_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addAdditionalAttachments:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_fault_impl(&dword_241FB3000, a2, OS_LOG_TYPE_FAULT, "%s could not be retrieved from BulletinBoard!", &v2, 0xCu);
}

void __118__BLTPBBulletin_BBBulletin___attachmentFromBBAttachmentMetadata_bulletin_observer_fileOption_attachOption_completion___block_invoke_100_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_241FB3000, log, OS_LOG_TYPE_ERROR, "Error transcoding %@ to %@: %@", &v5, 0x20u);
}

@end
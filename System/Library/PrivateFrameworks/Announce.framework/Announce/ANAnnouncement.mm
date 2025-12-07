@interface ANAnnouncement
+ (id)messageFromData:(id)data data:(id)a4;
+ (id)messageWithoutDataFromMessage:(id)message;
+ (unint64_t)sourceFromString:(id)string;
- (ANAnnouncement)init;
- (ANAnnouncement)initWithCoder:(id)coder;
- (ANAnnouncement)initWithMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateWithContentsOfAnnouncement:(id)announcement;
- (NSData)fileData;
- (NSDictionary)metadata;
- (NSString)description;
- (id)_generateGroupID;
- (id)_stringForAction:(unint64_t)action;
- (id)_stringForDataType:(unint64_t)type;
- (id)_uuidFromUUIDs:(id)ds;
- (id)copy;
- (id)message;
- (id)messageForCompanion;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)processAudioTranscription:(id)transcription;
- (void)removeAudioFileDataItems;
- (void)setCmStartTime:(id *)time;
@end

@implementation ANAnnouncement

- (ANAnnouncement)init
{
  v13.receiver = self;
  v13.super_class = ANAnnouncement;
  v2 = [(ANAnnouncement *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_statusFlags = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v3->_identifier;
    v3->_identifier = uUIDString;

    v7 = objc_opt_new();
    announcer = v3->_announcer;
    v3->_announcer = v7;

    messageVersion = v3->_messageVersion;
    v3->_messageVersion = @"1.0";

    v3->_action = 0;
    *&v3->_productType = 0;
    v3->_productTypeOverride = 0;
    v3->_deviceClass = +[ANDevice deviceClass];
    date = [MEMORY[0x277CBEAA8] date];
    creationTimestamp = v3->_creationTimestamp;
    v3->_creationTimestamp = date;

    v3->_source = 0;
  }

  return v3;
}

- (NSString)description
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  listeners = [(ANAnnouncement *)self listeners];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(listeners, "count")}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  listeners2 = [(ANAnnouncement *)self listeners];
  v7 = [listeners2 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(listeners2);
        }

        info = [*(*(&v37 + 1) + 8 * i) info];
        [v5 addObject:info];
      }

      v8 = [listeners2 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x277CBEB18];
  dataItems = [(ANAnnouncement *)self dataItems];
  v14 = [v12 arrayWithCapacity:{objc_msgSend(dataItems, "count")}];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  dataItems2 = [(ANAnnouncement *)self dataItems];
  v16 = [dataItems2 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(dataItems2);
        }

        info2 = [*(*(&v33 + 1) + 8 * j) info];
        [v14 addObject:info2];
      }

      v17 = [dataItems2 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v17);
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v21 setObject:self->_messageVersion forKeyedSubscript:@"MessageVersion"];
  [v21 setObject:self->_filePath forKeyedSubscript:@"File"];
  info3 = [(ANParticipant *)self->_announcer info];
  [v21 setObject:info3 forKeyedSubscript:@"Announcer"];

  [v21 setObject:v5 forKeyedSubscript:@"Listeners"];
  [v21 setObject:self->_playbackDeadline forKeyedSubscript:@"PlaybackDeadline"];
  v23 = [(ANAnnouncement *)self _stringForAction:self->_action];
  [v21 setObject:v23 forKeyedSubscript:@"Action"];

  [v21 setObject:self->_identifier forKeyedSubscript:@"AnnouncementID"];
  [v21 setObject:self->_groupID forKeyedSubscript:@"GroupID"];
  [v21 setObject:self->_sender forKeyedSubscript:@"Sender"];
  message = [(ANLocation *)self->_location message];
  [v21 setObject:message forKeyedSubscript:@"Location"];

  v25 = [MEMORY[0x277CCABB0] numberWithLong:*&self->_productType];
  [v21 setObject:v25 forKeyedSubscript:@"ProductType"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_productTypeOverride];
  [v21 setObject:v26 forKeyedSubscript:@"ProductTypeOverride"];

  v27 = [MEMORY[0x277CCABB0] numberWithInt:self->_deviceClass];
  [v21 setObject:v27 forKeyedSubscript:@"DeviceClass"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSString length](self->_transcriptionText, "length")}];
  [v21 setObject:v28 forKeyedSubscript:@"AudioTranscription"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_statusFlags];
  [v21 setObject:v29 forKeyedSubscript:@"StatusFlags"];

  [v21 setObject:v14 forKeyedSubscript:@"DataItems"];
  [v21 setObject:self->_creationTimestamp forKeyedSubscript:@"CreationTimestamp"];
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_source];
  [v21 setObject:v30 forKeyedSubscript:@"Source"];

  v31 = [v21 description];

  return v31;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v11 = 0;
  if (equalCopy)
  {
    identifier = [equalCopy identifier];
    if (identifier)
    {
      v7 = identifier;
      identifier2 = [(ANAnnouncement *)self identifier];
      identifier3 = [v5 identifier];
      v10 = [identifier2 isEqual:identifier3];

      if (v10)
      {
        v11 = 1;
      }
    }
  }

  return v11;
}

- (unint64_t)hash
{
  identifier = [(ANAnnouncement *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)copy
{
  v3 = objc_opt_new();
  identifier = [(ANAnnouncement *)self identifier];
  v5 = v3[2];
  v3[2] = identifier;

  messageVersion = [(ANAnnouncement *)self messageVersion];
  [v3 setMessageVersion:messageVersion];

  announcer = [(ANAnnouncement *)self announcer];
  v8 = [announcer copy];
  [v3 setAnnouncer:v8];

  listeners = [(ANAnnouncement *)self listeners];
  v10 = [listeners copy];
  [v3 setListeners:v10];

  playbackDeadline = [(ANAnnouncement *)self playbackDeadline];
  [v3 setPlaybackDeadline:playbackDeadline];

  [v3 setAction:{-[ANAnnouncement action](self, "action")}];
  groupID = [(ANAnnouncement *)self groupID];
  v13 = v3[3];
  v3[3] = groupID;

  [v3 setProductType:{-[ANAnnouncement productType](self, "productType")}];
  [v3 setProductTypeOverride:{-[ANAnnouncement productTypeOverride](self, "productTypeOverride")}];
  [v3 setDeviceClass:{-[ANAnnouncement deviceClass](self, "deviceClass")}];
  location = [(ANAnnouncement *)self location];
  v15 = [location copy];
  [v3 setLocation:v15];

  transcriptionText = [(ANAnnouncement *)self transcriptionText];
  [v3 setTranscriptionText:transcriptionText];

  dataItems = [(ANAnnouncement *)self dataItems];
  v18 = [dataItems copy];
  [v3 setDataItems:v18];

  creationTimestamp = [(ANAnnouncement *)self creationTimestamp];
  v20 = [creationTimestamp copy];
  [v3 setCreationTimestamp:v20];

  [v3 setSource:{-[ANAnnouncement source](self, "source")}];
  receiptTimestamp = [(ANAnnouncement *)self receiptTimestamp];
  v22 = v3[18];
  v3[18] = receiptTimestamp;

  objc_msgSend_cmStartTime(self);
  v24 = v26;
  v25 = v27;
  [v3 setCmStartTime:&v24];
  [v3 setMachStartTime:{-[ANAnnouncement machStartTime](self, "machStartTime")}];
  return v3;
}

- (NSData)fileData
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  dataItems = [(ANAnnouncement *)self dataItems];
  data = [dataItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (data)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != data; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(dataItems);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 type] == 1)
        {
          data = [v6 data];
          goto LABEL_11;
        }
      }

      data = [dataItems countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (data)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return data;
}

- (BOOL)updateWithContentsOfAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  announcer = [(ANAnnouncement *)self announcer];
  homeKitID = [announcer homeKitID];
  if (homeKitID && (-[ANAnnouncement announcer](self, "announcer"), announcer3 = objc_claimAutoreleasedReturnValue(), [announcer3 homeKitID], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
  {

    v10 = 0;
  }

  else
  {
    announcer2 = [announcementCopy announcer];
    homeKitID2 = [announcer2 homeKitID];

    if (homeKitID)
    {
    }

    if (!homeKitID2)
    {
      v10 = 0;
      goto LABEL_10;
    }

    announcer = [announcementCopy announcer];
    homeKitID = [announcer homeKitID];
    announcer3 = [(ANAnnouncement *)self announcer];
    [announcer3 setHomeKitID:homeKitID];
    v10 = 1;
  }

LABEL_10:
  announcer4 = [(ANAnnouncement *)self announcer];
  userID = [announcer4 userID];
  if (userID)
  {
    announcer3 = [(ANAnnouncement *)self announcer];
    homeKitID2 = [announcer3 userID];
    if ([homeKitID2 length])
    {

LABEL_17:
      goto LABEL_18;
    }
  }

  announcer5 = [announcementCopy announcer];
  userID2 = [announcer5 userID];

  if (userID)
  {
  }

  if (userID2)
  {
    announcer4 = [announcementCopy announcer];
    userID = [announcer4 userID];
    announcer3 = [(ANAnnouncement *)self announcer];
    [announcer3 setUserID:userID];
    v10 = 1;
    goto LABEL_17;
  }

LABEL_18:
  transcriptionText = [(ANAnnouncement *)self transcriptionText];
  if (transcriptionText)
  {
    userID = [(ANAnnouncement *)self transcriptionText];
    if ([userID length])
    {

LABEL_25:
      goto LABEL_26;
    }
  }

  announcer3 = [announcementCopy transcriptionText];

  if (transcriptionText)
  {
  }

  if (announcer3)
  {
    transcriptionText = [announcementCopy transcriptionText];
    [(ANAnnouncement *)self setTranscriptionText:transcriptionText];
    v10 = 1;
    goto LABEL_25;
  }

LABEL_26:
  announcer6 = [(ANAnnouncement *)self announcer];
  name = [announcer6 name];
  if (name)
  {
    announcer3 = [(ANAnnouncement *)self announcer];
    homeKitID2 = [announcer3 name];
    if ([homeKitID2 length])
    {

LABEL_33:
      goto LABEL_34;
    }
  }

  announcer7 = [announcementCopy announcer];
  name2 = [announcer7 name];

  if (name)
  {
  }

  if (name2)
  {
    announcer6 = [announcementCopy announcer];
    name = [announcer6 name];
    announcer3 = [(ANAnnouncement *)self announcer];
    [announcer3 setName:name];
    v10 = 1;
    goto LABEL_33;
  }

LABEL_34:

  return v10;
}

- (void)removeAudioFileDataItems
{
  v17 = *MEMORY[0x277D85DE8];
  dataItems = [(ANAnnouncement *)self dataItems];
  v4 = [dataItems mutableCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  dataItems2 = [(ANAnnouncement *)self dataItems];
  v6 = [dataItems2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(dataItems2);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 type] == 1)
        {
          [v4 removeObject:v10];
        }
      }

      v7 = [dataItems2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  [(ANAnnouncement *)self setDataItems:v11];
}

+ (unint64_t)sourceFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"com.apple.siri.SiriAnnounceExtensions.AnnounceIntentExtension"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"com.apple.Home"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"com.apple.NanoHome"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"com.apple.assistant.assistantd"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"com.apple.SoundBoard"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"com.apple.SiriHeadlessService"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"com.apple.Home.HomeUtilNotification"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"com.apple.Home.HomeControlService"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"com.apple.homehubd"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ANAnnouncement)initWithMessage:(id)message
{
  v61 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v59.receiver = self;
  v59.super_class = ANAnnouncement;
  v5 = [(ANAnnouncement *)&v59 init];
  if (!v5)
  {
LABEL_28:
    v45 = v5;
    goto LABEL_29;
  }

  v6 = [messageCopy objectForKeyedSubscript:@"MessageVersion"];
  v7 = v6;
  if (v6 && [v6 isEqualToString:@"1.0"])
  {
    objc_storeStrong(&v5->_messageVersion, v7);
    v8 = [messageCopy objectForKeyedSubscript:@"Action"];
    v9 = v8;
    if (v8)
    {
      v5->_action = [v8 unsignedIntegerValue];
    }

    v10 = [messageCopy objectForKeyedSubscript:@"ProductType"];
    v11 = v10;
    if (v10)
    {
      *&v5->_productType = [v10 unsignedIntValue];
    }

    v12 = [messageCopy objectForKeyedSubscript:@"ProductTypeOverride"];
    v13 = v12;
    if (v12)
    {
      v5->_productTypeOverride = [v12 unsignedIntegerValue];
    }

    v52 = v13;
    v53 = v11;
    v54 = v9;
    v14 = [messageCopy objectForKeyedSubscript:@"DeviceClass"];
    v15 = v14;
    if (v14)
    {
      v5->_deviceClass = [v14 integerValue];
    }

    v51 = v15;
    v16 = [messageCopy objectForKeyedSubscript:@"PlaybackDeadline"];
    playbackDeadline = v5->_playbackDeadline;
    v5->_playbackDeadline = v16;

    v18 = [messageCopy objectForKeyedSubscript:@"AnnouncementID"];
    identifier = v5->_identifier;
    v5->_identifier = v18;

    v20 = [messageCopy objectForKeyedSubscript:@"GroupID"];
    groupID = v5->_groupID;
    v5->_groupID = v20;

    v50 = [messageCopy objectForKeyedSubscript:@"Announcer"];
    v22 = [[ANParticipant alloc] initWithMessage:v50];
    announcer = v5->_announcer;
    v5->_announcer = v22;

    v24 = [messageCopy objectForKeyedSubscript:@"Listeners"];
    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v24, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v26 = v24;
    v27 = [v26 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v56;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v56 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[ANParticipant alloc] initWithMessage:*(*(&v55 + 1) + 8 * i)];
          [v25 addObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v28);
    }

    if ([v25 count])
    {
      objc_storeStrong(&v5->_listeners, v25);
    }

    v32 = [messageCopy objectForKeyedSubscript:@"Location"];
    v33 = [[ANLocation alloc] initWithMessage:v32];
    location = v5->_location;
    v5->_location = v33;

    v35 = [messageCopy objectForKeyedSubscript:@"DataItems"];
    v36 = [ANAnnouncementDataItem strictSecureDecodeFromData:v35];
    dataItems = v5->_dataItems;
    v5->_dataItems = v36;

    v38 = [messageCopy objectForKeyedSubscript:@"File"];
    filePath = v5->_filePath;
    v5->_filePath = v38;

    v40 = [messageCopy objectForKeyedSubscript:@"CreationTimestamp"];
    creationTimestamp = v5->_creationTimestamp;
    v5->_creationTimestamp = v40;

    v42 = [messageCopy objectForKeyedSubscript:@"ReceiptTimestamp"];
    v43 = v42;
    if (v42)
    {
      date = v42;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    receiptTimestamp = v5->_receiptTimestamp;
    v5->_receiptTimestamp = date;

    v5->_statusFlags = 0;
    v47 = [messageCopy objectForKeyedSubscript:@"Source"];
    v48 = v47;
    if (v47)
    {
      v5->_source = [v47 unsignedIntegerValue];
    }

    goto LABEL_28;
  }

  v45 = 0;
LABEL_29:

  return v45;
}

- (id)message
{
  v27 = *MEMORY[0x277D85DE8];
  _generateGroupID = [(ANAnnouncement *)self _generateGroupID];
  groupID = self->_groupID;
  self->_groupID = _generateGroupID;

  dataItems = self->_dataItems;
  v22 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dataItems requiringSecureCoding:0 error:&v22];
  v7 = v22;
  v8 = v7;
  if (v7)
  {
    v9 = ANLogHandleAnnouncement(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      identifier = [(ANAnnouncement *)self identifier];
      *buf = 138412546;
      v24 = &stru_2836DAA20;
      v25 = 2112;
      v26 = identifier;
      _os_log_impl(&dword_2237C8000, v9, OS_LOG_TYPE_ERROR, "%@Failed to archive data for Announcement %@", buf, 0x16u);
    }
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v11 setObject:self->_messageVersion forKeyedSubscript:@"MessageVersion"];
  [v11 setObject:v6 forKeyedSubscript:@"DataItems"];
  message = [(ANParticipant *)self->_announcer message];
  [v11 setObject:message forKeyedSubscript:@"Announcer"];

  [v11 setObject:self->_playbackDeadline forKeyedSubscript:@"PlaybackDeadline"];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_action];
  [v11 setObject:v13 forKeyedSubscript:@"Action"];

  [v11 setObject:self->_identifier forKeyedSubscript:@"AnnouncementID"];
  groupID = [(ANAnnouncement *)self groupID];
  [v11 setObject:groupID forKeyedSubscript:@"GroupID"];

  v15 = [MEMORY[0x277CCABB0] numberWithLong:*&self->_productType];
  [v11 setObject:v15 forKeyedSubscript:@"ProductType"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_productTypeOverride];
  [v11 setObject:v16 forKeyedSubscript:@"ProductTypeOverride"];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_deviceClass];
  [v11 setObject:v17 forKeyedSubscript:@"DeviceClass"];

  message2 = [(ANLocation *)self->_location message];
  [v11 setObject:message2 forKeyedSubscript:@"Location"];

  [v11 setObject:self->_transcriptionText forKeyedSubscript:@"AudioTranscription"];
  [v11 setObject:self->_creationTimestamp forKeyedSubscript:@"CreationTimestamp"];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_source];
  [v11 setObject:v19 forKeyedSubscript:@"Source"];

  v20 = [v11 copy];

  return v20;
}

- (id)messageForCompanion
{
  v3 = MEMORY[0x277CBEB38];
  message = [(ANAnnouncement *)self message];
  v5 = [v3 dictionaryWithDictionary:message];

  messageForCompanion = [(ANParticipant *)self->_announcer messageForCompanion];
  [v5 setObject:messageForCompanion forKeyedSubscript:@"Announcer"];

  v7 = [v5 copy];

  return v7;
}

- (NSDictionary)metadata
{
  v3 = MEMORY[0x277CBEB38];
  message = [(ANAnnouncement *)self message];
  v5 = [v3 dictionaryWithDictionary:message];

  [v5 setObject:self->_filePath forKeyedSubscript:@"File"];
  [v5 setObject:self->_receiptTimestamp forKeyedSubscript:@"ReceiptTimestamp"];
  [v5 setObject:0 forKeyedSubscript:@"DataItems"];
  v6 = [v5 copy];

  return v6;
}

+ (id)messageWithoutDataFromMessage:(id)message
{
  v3 = [message mutableCopy];
  [v3 setObject:0 forKeyedSubscript:@"DataItems"];
  v4 = [v3 copy];

  return v4;
}

+ (id)messageFromData:(id)data data:(id)a4
{
  v5 = a4;
  v6 = [data mutableCopy];
  [v6 setObject:v5 forKeyedSubscript:@"DataItems"];

  v7 = [v6 copy];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  messageVersion = self->_messageVersion;
  coderCopy = coder;
  [coderCopy encodeObject:messageVersion forKey:@"MessageVersion"];
  [coderCopy encodeObject:self->_filePath forKey:@"File"];
  [coderCopy encodeObject:self->_announcer forKey:@"Announcer"];
  [coderCopy encodeObject:self->_listeners forKey:@"Listeners"];
  [coderCopy encodeObject:self->_playbackDeadline forKey:@"PlaybackDeadline"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_action];
  [coderCopy encodeObject:v6 forKey:@"Action"];

  [coderCopy encodeObject:self->_identifier forKey:@"AnnouncementID"];
  [coderCopy encodeObject:self->_groupID forKey:@"GroupID"];
  [coderCopy encodeObject:self->_sender forKey:@"Sender"];
  [coderCopy encodeObject:self->_location forKey:@"Location"];
  v7 = [MEMORY[0x277CCABB0] numberWithLong:*&self->_productType];
  [coderCopy encodeObject:v7 forKey:@"ProductType"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_productTypeOverride];
  [coderCopy encodeObject:v8 forKey:@"ProductTypeOverride"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_deviceClass];
  [coderCopy encodeObject:v9 forKey:@"DeviceClass"];

  [coderCopy encodeObject:self->_transcriptionText forKey:@"AudioTranscription"];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_statusFlags];
  [coderCopy encodeObject:v10 forKey:@"StatusFlags"];

  [coderCopy encodeObject:self->_dataItems forKey:@"DataItems"];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_source];
  [coderCopy encodeObject:v11 forKey:@"Source"];
}

- (ANAnnouncement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = ANAnnouncement;
  v5 = [(ANAnnouncement *)&v48 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MessageVersion"];
    messageVersion = v5->_messageVersion;
    v5->_messageVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Action"];
    v9 = v8;
    if (v8)
    {
      v5->_action = [v8 unsignedIntegerValue];
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    v11 = v10;
    if (v10)
    {
      *&v5->_productType = [v10 integerValue];
    }

    v47 = v11;
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductTypeOverride"];
    v13 = v12;
    if (v12)
    {
      v5->_productTypeOverride = [v12 unsignedIntegerValue];
    }

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceClass"];
    v15 = v14;
    if (v14)
    {
      v5->_deviceClass = [v14 integerValue];
    }

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusFlags"];
    v17 = v16;
    if (v16)
    {
      v5->_statusFlags = [v16 integerValue];
    }

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PlaybackDeadline"];
    playbackDeadline = v5->_playbackDeadline;
    v5->_playbackDeadline = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"File"];
    filePath = v5->_filePath;
    v5->_filePath = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnnouncementID"];
    identifier = v5->_identifier;
    v5->_identifier = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GroupID"];
    groupID = v5->_groupID;
    v5->_groupID = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Announcer"];
    announcer = v5->_announcer;
    v5->_announcer = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Location"];
    location = v5->_location;
    v5->_location = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Sender"];
    sender = v5->_sender;
    v5->_sender = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AudioTranscription"];
    transcriptionText = v5->_transcriptionText;
    v5->_transcriptionText = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Source"];
    v35 = v34;
    if (v34)
    {
      v5->_source = [v34 unsignedIntegerValue];
    }

    v36 = MEMORY[0x277CBEB98];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"Listeners"];
    listeners = v5->_listeners;
    v5->_listeners = v39;

    v41 = MEMORY[0x277CBEB98];
    v42 = objc_opt_class();
    v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
    v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"DataItems"];
    dataItems = v5->_dataItems;
    v5->_dataItems = v44;
  }

  return v5;
}

- (id)_stringForAction:(unint64_t)action
{
  if (action > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_2784E1CE0[action];
  }
}

- (id)_stringForDataType:(unint64_t)type
{
  if (type > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2784E1D10[type];
  }
}

- (id)_generateGroupID
{
  v3 = objc_opt_new();
  location = [(ANAnnouncement *)self location];
  homeUUID = [location homeUUID];

  if (homeUUID)
  {
    [v3 addObject:homeUUID];
  }

  location2 = [(ANAnnouncement *)self location];
  zoneUUIDs = [location2 zoneUUIDs];

  if (zoneUUIDs)
  {
    [v3 addObjectsFromArray:zoneUUIDs];
  }

  location3 = [(ANAnnouncement *)self location];
  roomUUIDs = [location3 roomUUIDs];

  if (roomUUIDs)
  {
    [v3 addObjectsFromArray:roomUUIDs];
  }

  v10 = [(ANAnnouncement *)self _uuidFromUUIDs:v3];
  uUIDString = [v10 UUIDString];

  return uUIDString;
}

- (id)_uuidFromUUIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v17 = 0uLL;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [dsCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(dsCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v15 = 0uLL;
        [v8 getUUIDBytes:&v15];
        v17 = veorq_s8(v17, v15);
      }

      v5 = [dsCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v17];

  return v9;
}

- (void)processAudioTranscription:(id)transcription
{
  v18 = *MEMORY[0x277D85DE8];
  transcriptionCopy = transcription;
  if (processAudioTranscription__onceToken != -1)
  {
    [ANAnnouncement processAudioTranscription:];
  }

  supportsOnDeviceRecognition = [processAudioTranscription__recognizer supportsOnDeviceRecognition];
  if (supportsOnDeviceRecognition)
  {
    v6 = objc_alloc(MEMORY[0x277CDCF08]);
    v7 = MEMORY[0x277CBEBC0];
    filePath = [(ANAnnouncement *)self filePath];
    v9 = [v7 fileURLWithPath:filePath];
    v10 = [v6 initWithURL:v9];

    [v10 setRequiresOnDeviceRecognition:1];
    [v10 setShouldReportPartialResults:0];
    v11 = processAudioTranscription__recognizer;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__ANAnnouncement_processAudioTranscription___block_invoke_115;
    v14[3] = &unk_2784E1CC0;
    v14[4] = self;
    v15 = transcriptionCopy;
    v12 = [v11 recognitionTaskWithRequest:v10 resultHandler:v14];
  }

  else
  {
    v13 = ANLogHandleAnnouncement(supportsOnDeviceRecognition);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = &stru_2836DAA20;
      _os_log_impl(&dword_2237C8000, v13, OS_LOG_TYPE_DEFAULT, "%@On device recognition not available, not processing", buf, 0xCu);
    }

    if (transcriptionCopy)
    {
      (*(transcriptionCopy + 2))(transcriptionCopy, 0);
    }
  }
}

uint64_t __44__ANAnnouncement_processAudioTranscription___block_invoke()
{
  processAudioTranscription__recognizer = objc_alloc_init(MEMORY[0x277CDCF00]);

  return MEMORY[0x2821F96F8]();
}

void __44__ANAnnouncement_processAudioTranscription___block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ANLogHandleAnnouncement(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 transcriptions];
    v23 = 138412802;
    v24 = &stru_2836DAA20;
    v25 = 2048;
    v26 = [v8 count];
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_DEFAULT, "%@Received transcription result: (%lu transcriptions) %@", &v23, 0x20u);
  }

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v5)
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = [v5 bestTranscription];
    v13 = [v12 formattedString];
    v14 = [v11 initWithString:v13];
    [*(a1 + 32) setTranscriptionText:v14];

    v15 = [*(a1 + 32) transcriptionText];
    v16 = [v15 dataUsingEncoding:4];

    v17 = [[ANAnnouncementDataItem alloc] initWithData:v16 type:2];
    v18 = MEMORY[0x277CBEB18];
    v19 = [*(a1 + 32) dataItems];
    v20 = [v18 arrayWithArray:v19];

    [v20 addObject:v17];
    v21 = [v20 copy];
    [*(a1 + 32) setDataItems:v21];
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, v10);
  }
}

- (void)setCmStartTime:(id *)time
{
  v3 = *&time->var0;
  self->_cmStartTime.epoch = time->var3;
  *&self->_cmStartTime.value = v3;
}

@end
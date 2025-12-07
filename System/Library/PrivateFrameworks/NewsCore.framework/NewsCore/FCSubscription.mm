@interface FCSubscription
+ (id)pendingSubscriptionWithSubscriptionID:(id)d url:(id)url title:(id)title pollingURL:(id)l dateAdded:(id)added;
+ (id)subscriptionWithSubscriptionID:(id)d dictionaryRepresentation:(id)representation;
+ (id)subscriptionWithSubscriptionID:(id)d tagID:(id)iD type:(unint64_t)type order:(id)order origin:(unint64_t)origin groupID:(id)groupID dateAdded:(id)added notificationsEnabled:(BOOL)self0 zone:(unint64_t)self1;
- (FCSubscription)initWithSubscriptionID:(id)d tagID:(id)iD groupID:(id)groupID dateAdded:(id)added subscriptionType:(unint64_t)type order:(id)order origin:(unint64_t)origin notificationsEnabled:(BOOL)self0 zone:(unint64_t)self1;
- (FCSubscription)initWithSubscriptionID:(id)d url:(id)url title:(id)title pollingURL:(id)l dateAdded:(id)added;
- (id)asCKRecord;
- (id)asReorderableTagSubscription;
- (id)copyWithOrder:(id)order;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)comparePriority:(id)priority;
- (unint64_t)priority;
@end

@implementation FCSubscription

- (id)asReorderableTagSubscription
{
  if ([(FCSubscription *)self subscriptionType])
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)subscriptionWithSubscriptionID:(id)d tagID:(id)iD type:(unint64_t)type order:(id)order origin:(unint64_t)origin groupID:(id)groupID dateAdded:(id)added notificationsEnabled:(BOOL)self0 zone:(unint64_t)self1
{
  addedCopy = added;
  groupIDCopy = groupID;
  orderCopy = order;
  iDCopy = iD;
  dCopy = d;
  LOBYTE(v25) = enabled;
  v23 = [[self alloc] initWithSubscriptionID:dCopy tagID:iDCopy groupID:groupIDCopy dateAdded:addedCopy subscriptionType:type order:orderCopy origin:origin notificationsEnabled:v25 zone:zone];

  return v23;
}

+ (id)pendingSubscriptionWithSubscriptionID:(id)d url:(id)url title:(id)title pollingURL:(id)l dateAdded:(id)added
{
  if (url)
  {
    addedCopy = added;
    lCopy = l;
    titleCopy = title;
    urlCopy = url;
    dCopy = d;
    v16 = [[FCSubscription alloc] initWithSubscriptionID:dCopy url:urlCopy title:titleCopy pollingURL:lCopy dateAdded:addedCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (FCSubscription)initWithSubscriptionID:(id)d tagID:(id)iD groupID:(id)groupID dateAdded:(id)added subscriptionType:(unint64_t)type order:(id)order origin:(unint64_t)origin notificationsEnabled:(BOOL)self0 zone:(unint64_t)self1
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  obj = iD;
  iDCopy = iD;
  groupIDCopy = groupID;
  addedCopy = added;
  orderCopy = order;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptionID != nil"];
    *buf = 136315906;
    v36 = "[FCSubscription initWithSubscriptionID:tagID:groupID:dateAdded:subscriptionType:order:origin:notificationsEnabled:zone:]";
    v37 = 2080;
    v38 = "FCSubscription.m";
    v39 = 1024;
    v40 = 89;
    v41 = 2114;
    v42 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (iDCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v36 = "[FCSubscription initWithSubscriptionID:tagID:groupID:dateAdded:subscriptionType:order:origin:notificationsEnabled:zone:]";
    v37 = 2080;
    v38 = "FCSubscription.m";
    v39 = 1024;
    v40 = 90;
    v41 = 2114;
    v42 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!addedCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dateAdded != nil"];
    *buf = 136315906;
    v36 = "[FCSubscription initWithSubscriptionID:tagID:groupID:dateAdded:subscriptionType:order:origin:notificationsEnabled:zone:]";
    v37 = 2080;
    v38 = "FCSubscription.m";
    v39 = 1024;
    v40 = 91;
    v41 = 2114;
    v42 = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v34.receiver = self;
  v34.super_class = FCSubscription;
  v23 = [(FCSubscription *)&v34 init];
  v24 = v23;
  if (v23)
  {
    if (iDCopy)
    {
      objc_storeStrong(&v23->_tagID, obj);
      v24->_subscriptionType = type;
      v25 = [orderCopy copy];
      order = v24->_order;
      v24->_order = v25;

      v24->_subscriptionOrigin = origin;
      objc_storeStrong(&v24->_subscriptionID, d);
      v27 = [addedCopy copy];
      dateAdded = v24->_dateAdded;
      v24->_dateAdded = v27;

      v24->_notificationsEnabled = enabled;
      objc_storeStrong(&v24->_groupID, groupID);
      v24->_zone = zone;
    }

    else
    {

      v24 = 0;
    }
  }

  return v24;
}

- (FCSubscription)initWithSubscriptionID:(id)d url:(id)url title:(id)title pollingURL:(id)l dateAdded:(id)added
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  urlCopy = url;
  titleCopy = title;
  lCopy = l;
  addedCopy = added;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptionID != nil"];
    *buf = 136315906;
    v27 = "[FCSubscription initWithSubscriptionID:url:title:pollingURL:dateAdded:]";
    v28 = 2080;
    v29 = "FCSubscription.m";
    v30 = 1024;
    v31 = 117;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (addedCopy)
    {
      goto LABEL_6;
    }
  }

  else if (addedCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dateAdded != nil"];
    *buf = 136315906;
    v27 = "[FCSubscription initWithSubscriptionID:url:title:pollingURL:dateAdded:]";
    v28 = 2080;
    v29 = "FCSubscription.m";
    v30 = 1024;
    v31 = 118;
    v32 = 2114;
    v33 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v25.receiver = self;
  v25.super_class = FCSubscription;
  v18 = [(FCSubscription *)&v25 init];
  v19 = v18;
  if (v18)
  {
    if (urlCopy && lCopy)
    {
      objc_storeStrong(&v18->_url, url);
      objc_storeStrong(&v19->_title, title);
      objc_storeStrong(&v19->_pollingURL, l);
      v19->_subscriptionType = 1;
      objc_storeStrong(&v19->_subscriptionID, d);
      v20 = [addedCopy copy];
      dateAdded = v19->_dateAdded;
      v19->_dateAdded = v20;
    }

    else
    {
      dateAdded = v18;
      v19 = 0;
    }
  }

  return v19;
}

- (unint64_t)priority
{
  subscriptionType = [(FCSubscription *)self subscriptionType];
  if (subscriptionType > 5)
  {
    return 0;
  }

  else
  {
    return qword_1B681A6D0[subscriptionType];
  }
}

- (int64_t)comparePriority:(id)priority
{
  priorityCopy = priority;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(priorityCopy, "priority")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCSubscription priority](self, "priority")}];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    dateAdded = [priorityCopy dateAdded];
    dateAdded2 = [(FCSubscription *)self dateAdded];
    v7 = [dateAdded compare:dateAdded2];

    if (!v7)
    {
      if ([(FCSubscription *)self subscriptionType])
      {
        v7 = 1;
      }

      else
      {
        v7 = -1;
      }
    }
  }

  return v7;
}

- (id)asCKRecord
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(FCSubscription *)self isDeprecated])
  {
    v3 = 0;
    goto LABEL_22;
  }

  if (qword_1EDB27048 != -1)
  {
    dispatch_once(&qword_1EDB27048, &__block_literal_global_34);
  }

  v4 = [(FCSubscription *)self zone];
  v5 = &_MergedGlobals_143;
  if (v4 == 1)
  {
    v5 = &qword_1EDB27040;
  }

  v6 = *v5;
  v7 = objc_alloc(MEMORY[0x1E695BA70]);
  subscriptionID = [(FCSubscription *)self subscriptionID];
  v9 = [v7 initWithRecordName:subscriptionID zoneID:v6];

  v3 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"Subscription" recordID:v9];
  dateAdded = [(FCSubscription *)self dateAdded];
  [v3 setObject:dateAdded forKeyedSubscript:@"dateAdded"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{FCCKSubscriptionOriginFromFCSubscriptionOrigin(-[FCSubscription subscriptionOrigin](self, "subscriptionOrigin"))}];
  [v3 setObject:v11 forKeyedSubscript:@"subscriptionOrigin"];

  if (![(FCSubscription *)self subscriptionType])
  {
    [v3 setObject:@"tag" forKeyedSubscript:@"subscriptionType"];
    tagID = [(FCSubscription *)self tagID];
    [v3 setObject:tagID forKeyedSubscript:@"tagID"];

    order = [(FCSubscription *)self order];
    [v3 setObject:order forKeyedSubscript:@"subscriptionOrder"];

    tagID2 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCSubscription notificationsEnabled](self, "notificationsEnabled")}];
    v15 = FCCKSubscriptionNotificationsEnabledKey;
    goto LABEL_19;
  }

  if ([(FCSubscription *)self subscriptionType]!= 2)
  {
    if ([(FCSubscription *)self subscriptionType]== 3)
    {
      v18 = FCCKSubscriptionTypeAutoFavoriteTag;
    }

    else if ([(FCSubscription *)self subscriptionType]== 4)
    {
      v18 = FCCKSubscriptionTypeGroupableTag;
    }

    else
    {
      if ([(FCSubscription *)self subscriptionType]!= 5)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        tagID2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unrecognized subscription type"];
        v20 = 136315906;
        v21 = "[FCSubscription asCKRecord]";
        v22 = 2080;
        v23 = "FCSubscription.m";
        v24 = 1024;
        v25 = 275;
        v26 = 2114;
        v27 = tagID2;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v20, 0x26u);
        goto LABEL_20;
      }

      v18 = FCCKSubscriptionTypeIgnoredTag;
    }

    [v3 setObject:*v18 forKeyedSubscript:@"subscriptionType"];
    tagID2 = [(FCSubscription *)self tagID];
    v15 = FCCKSubscriptionTagIDKey;
LABEL_19:
    [v3 setObject:tagID2 forKeyedSubscript:*v15];
LABEL_20:

    goto LABEL_21;
  }

  [v3 setObject:@"mutedTag" forKeyedSubscript:@"subscriptionType"];
  tagID3 = [(FCSubscription *)self tagID];
  [v3 setObject:tagID3 forKeyedSubscript:@"tagID"];

  groupID = [(FCSubscription *)self groupID];

  if (groupID)
  {
    tagID2 = [(FCSubscription *)self groupID];
    v15 = FCCKSubscriptionGroupIDKey;
    goto LABEL_19;
  }

LABEL_21:

LABEL_22:

  return v3;
}

uint64_t __28__FCSubscription_asCKRecord__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = *MEMORY[0x1E695B728];
  v2 = [v0 initWithZoneName:@"Subscriptions" ownerName:*MEMORY[0x1E695B728]];
  v3 = _MergedGlobals_143;
  _MergedGlobals_143 = v2;

  v4 = [objc_alloc(MEMORY[0x1E695BA90]) initWithZoneName:@"SensitiveSubscriptions" ownerName:v1];
  v5 = qword_1EDB27040;
  qword_1EDB27040 = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  subscriptionID = [(FCSubscription *)self subscriptionID];
  v5 = [(FCSubscription *)self subscriptionType]- 1;
  if (v5 > 4)
  {
    v6 = @"tag";
  }

  else
  {
    v6 = off_1E7C3B8E0[v5];
  }

  order = [(FCSubscription *)self order];
  dateAdded = [(FCSubscription *)self dateAdded];
  v9 = [v3 stringWithFormat:@"{id: %@ type: %@ order: %@ dateAdded: %@ notifications: %d}", subscriptionID, v6, order, dateAdded, -[FCSubscription notificationsEnabled](self, "notificationsEnabled")];

  return v9;
}

- (id)copyWithOrder:(id)order
{
  v24 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  if ([(FCSubscription *)self subscriptionType]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected equality between %s and %s", "self.subscriptionType", "FCSubscriptionTypeTag"];
    *buf = 136315906;
    v17 = "[FCSubscription copyWithOrder:]";
    v18 = 2080;
    v19 = "FCSubscription.m";
    v20 = 1024;
    v21 = 303;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_alloc(objc_opt_class());
  subscriptionID = [(FCSubscription *)self subscriptionID];
  tagID = [(FCSubscription *)self tagID];
  groupID = [(FCSubscription *)self groupID];
  dateAdded = [(FCSubscription *)self dateAdded];
  subscriptionType = [(FCSubscription *)self subscriptionType];
  subscriptionOrigin = [(FCSubscription *)self subscriptionOrigin];
  LOBYTE(v15) = [(FCSubscription *)self notificationsEnabled];
  v12 = [v5 initWithSubscriptionID:subscriptionID tagID:tagID groupID:groupID dateAdded:dateAdded subscriptionType:subscriptionType order:orderCopy origin:subscriptionOrigin notificationsEnabled:v15 zone:{-[FCSubscription zone](self, "zone")}];

  return v12;
}

+ (id)subscriptionWithSubscriptionID:(id)d dictionaryRepresentation:(id)representation
{
  dCopy = d;
  representationCopy = representation;
  v7 = [representationCopy objectForKeyedSubscript:@"subscriptionType"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [representationCopy objectForKeyedSubscript:@"subscriptionOrder"];
  v10 = [representationCopy objectForKeyedSubscript:@"subscriptionOrigin"];
  unsignedIntegerValue2 = [v10 unsignedIntegerValue];

  v12 = [representationCopy objectForKeyedSubscript:@"zone"];
  unsignedIntegerValue3 = [v12 unsignedIntegerValue];

  v14 = [representationCopy objectForKeyedSubscript:@"dateAdded"];
  if (unsignedIntegerValue == 2)
  {
    v17 = [representationCopy objectForKeyedSubscript:@"tagID"];
    v18 = [representationCopy objectForKeyedSubscript:@"groupID"];
    LOBYTE(v25) = 0;
    v19 = [FCSubscription subscriptionWithSubscriptionID:dCopy tagID:v17 type:2 order:v9 origin:unsignedIntegerValue2 groupID:v18 dateAdded:v14 notificationsEnabled:v25 zone:unsignedIntegerValue3];

    goto LABEL_13;
  }

  if (!unsignedIntegerValue)
  {
    v15 = [representationCopy objectForKeyedSubscript:@"notificationsEnabled"];
    bOOLValue = [v15 BOOLValue];

    v17 = [representationCopy objectForKeyedSubscript:@"tagID"];
    LOBYTE(v25) = bOOLValue;
    [FCSubscription subscriptionWithSubscriptionID:dCopy tagID:v17 type:0 order:v9 origin:unsignedIntegerValue2 groupID:0 dateAdded:v14 notificationsEnabled:v25 zone:unsignedIntegerValue3];
    v19 = LABEL_7:;
    goto LABEL_13;
  }

  if ((unsignedIntegerValue - 3) <= 2)
  {
    v17 = [representationCopy objectForKeyedSubscript:@"tagID"];
    LOBYTE(v25) = 0;
    [FCSubscription subscriptionWithSubscriptionID:dCopy tagID:v17 type:unsignedIntegerValue order:v9 origin:unsignedIntegerValue2 groupID:0 dateAdded:v14 notificationsEnabled:v25 zone:unsignedIntegerValue3];
    goto LABEL_7;
  }

  v17 = [representationCopy objectForKeyedSubscript:@"pollingURL"];
  v20 = [representationCopy objectForKeyedSubscript:@"url"];
  if ([v17 length] && objc_msgSend(v20, "length"))
  {
    v21 = [MEMORY[0x1E695DFF8] URLWithString:v17];
    v22 = [MEMORY[0x1E695DFF8] URLWithString:v20];
    v23 = [representationCopy objectForKeyedSubscript:@"title"];
    v19 = [FCSubscription pendingSubscriptionWithSubscriptionID:dCopy url:v22 title:v23 pollingURL:v21 dateAdded:v14];
  }

  else
  {
    v19 = 0;
  }

LABEL_13:

  return v19;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(FCSubscription *)self isTypeTag]|| [(FCSubscription *)self isTypeMutedTag]|| [(FCSubscription *)self isTypeAutoFavoriteTag]|| [(FCSubscription *)self isTypeGroupableTag]|| [(FCSubscription *)self isTypeIgnoredTag])
  {
    tagID = [(FCSubscription *)self tagID];

    if (tagID)
    {
      tagID2 = [(FCSubscription *)self tagID];
      [dictionary setObject:tagID2 forKey:@"tagID"];

      order = [(FCSubscription *)self order];
      [dictionary fc_safelySetObjectAllowingNil:order forKey:@"subscriptionOrder"];

      dateAdded = [(FCSubscription *)self dateAdded];
      [dictionary setObject:dateAdded forKey:@"dateAdded"];

      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{FCCKSubscriptionOriginFromFCSubscriptionOrigin(-[FCSubscription subscriptionOrigin](self, "subscriptionOrigin"))}];
      [dictionary setObject:v8 forKey:@"subscriptionOrigin"];

      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCSubscription subscriptionType](self, "subscriptionType")}];
      [dictionary setObject:v9 forKey:@"subscriptionType"];

      v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCSubscription notificationsEnabled](self, "notificationsEnabled")}];
      [dictionary setObject:v10 forKey:@"notificationsEnabled"];

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCSubscription zone](self, "zone")}];
      [dictionary setObject:v11 forKey:@"zone"];

      groupID = [(FCSubscription *)self groupID];

      if (groupID)
      {
        groupID2 = [(FCSubscription *)self groupID];
        [dictionary setObject:groupID2 forKey:@"groupID"];
LABEL_9:
      }
    }
  }

  else if ([(FCSubscription *)self isTypePending])
  {
    v16 = [(FCSubscription *)self url];

    if (v16)
    {
      v17 = [(FCSubscription *)self url];
      absoluteString = [v17 absoluteString];
      [dictionary setObject:absoluteString forKey:@"url"];

      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCSubscription subscriptionType](self, "subscriptionType")}];
      [dictionary setObject:v19 forKey:@"subscriptionType"];

      dateAdded2 = [(FCSubscription *)self dateAdded];
      [dictionary setObject:dateAdded2 forKey:@"dateAdded"];

      title = [(FCSubscription *)self title];

      if (title)
      {
        title2 = [(FCSubscription *)self title];
        [dictionary setObject:title2 forKey:@"title"];
      }

      pollingURL = [(FCSubscription *)self pollingURL];

      if (pollingURL)
      {
        groupID2 = [(FCSubscription *)self pollingURL];
        absoluteString2 = [groupID2 absoluteString];
        [dictionary setObject:absoluteString2 forKey:@"pollingURL"];

        goto LABEL_9;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    groupID2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
    v25 = 136315906;
    v26 = "[FCSubscription(SubscriptionList) dictionaryRepresentation]";
    v27 = 2080;
    v28 = "FCSubscriptionList.m";
    v29 = 1024;
    v30 = 1515;
    v31 = 2114;
    v32 = groupID2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v25, 0x26u);
    goto LABEL_9;
  }

  v14 = [dictionary copy];

  return v14;
}

@end
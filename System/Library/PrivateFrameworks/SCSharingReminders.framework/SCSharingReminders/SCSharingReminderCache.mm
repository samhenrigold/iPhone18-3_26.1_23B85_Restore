@interface SCSharingReminderCache
+ (id)cacheWithState:(id *)state;
+ (id)new;
- ($036EC2AD71A582527DAFF881AF25695D)toCacheState;
- (BOOL)isEqual:(id)equal;
- (NSArray)ignoredIdentifiers;
- (NSArray)scheduledReminders;
- (SCSharingReminderCache)initWithCoder:(id)coder;
- (id)description;
- (id)ignoredIdentifiersForType:(id)type;
- (id)initFromState:(id *)state;
- (id)remindersDueBy:(id)by;
- (void)addIgnoredIdentifiers:(id)identifiers withType:(id)type;
- (void)addSharingReminders:(id)reminders;
- (void)deliverGeneralSharingReminderAfter:(double)after;
- (void)encodeWithCoder:(id)coder;
- (void)removeRemindersWithIdentifiers:(id)identifiers;
- (void)removeSharingReminders:(id)reminders wereDelivered:(BOOL)delivered;
@end

@implementation SCSharingReminderCache

+ (id)new
{
  v7 = xmmword_279B394C8;
  v8 = unk_279B394D8;
  result = [SCSharingReminderCache alloc];
  v3[0] = 0;
  v4 = 0;
  v5 = MEMORY[0x277CBEBF8];
  v6 = MEMORY[0x277CBEC10];
  if (result)
  {
    return [result initFromState:v3];
  }

  return result;
}

+ (id)cacheWithState:(id *)state
{
  v16 = *MEMORY[0x277D85DE8];
  var1 = state->var1;
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [var1 laterDate:v5];
  v7 = [v6 isEqualToDate:state->var1];

  if (v7)
  {
    v9 = SCLogger(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = localizedDateStringFromUTC(state->var1);
      [(SCSharingReminderCache *)v10 cacheWithState:buf, v9];
    }
  }

  else
  {
    v11 = [SCSharingReminderCache alloc];
    __copy_constructor_8_8_t0w1_s8_s16_s24(v14, state);
    if (v11)
    {
      v12 = [(SCSharingReminderCache *)v11 initFromState:v14];
      goto LABEL_8;
    }

    v9 = v14[3];
  }

  v12 = 0;
LABEL_8:
  __destructor_8_s8_s16_s24(state);

  return v12;
}

- (id)initFromState:(id *)state
{
  v12.receiver = self;
  v12.super_class = SCSharingReminderCache;
  v4 = [(SCSharingReminderCache *)&v12 init];
  if (v4)
  {
    v5 = objc_opt_new();
    scheduledSharingReminders = v4->_scheduledSharingReminders;
    v4->_scheduledSharingReminders = v5;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sharingRemindersByType = v4->_sharingRemindersByType;
    v4->_sharingRemindersByType = dictionary;

    v4->_consecutiveNotificationCount = state->var0;
    objc_storeStrong(&v4->_lastFiredDate, state->var1);
    v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:state->var3];
    ignorableIdentifiersByType = v4->_ignorableIdentifiersByType;
    v4->_ignorableIdentifiersByType = v9;

    [(SCSharingReminderCache *)v4 addSharingReminders:state->var2];
  }

  __destructor_8_s8_s16_s24(state);
  return v4;
}

- (void)addSharingReminders:(id)reminders
{
  v27 = *MEMORY[0x277D85DE8];
  remindersCopy = reminders;
  v5 = remindersCopy;
  if (remindersCopy && [remindersCopy count])
  {
    scheduledSharingReminders = [(SCSharingReminderCache *)self scheduledSharingReminders];
    [scheduledSharingReminders addObjectsFromArray:v5];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          type = [v12 type];
          sharingRemindersByType = [(SCSharingReminderCache *)self sharingRemindersByType];
          v15 = [sharingRemindersByType valueForKey:type];

          if (!v15)
          {
            sharingRemindersByType2 = [(SCSharingReminderCache *)self sharingRemindersByType];
            orderedSet = [MEMORY[0x277CBEB40] orderedSet];
            [sharingRemindersByType2 setValue:orderedSet forKey:type];
          }

          sharingRemindersByType3 = [(SCSharingReminderCache *)self sharingRemindersByType];
          v19 = [sharingRemindersByType3 valueForKey:type];

          [v19 addObject:v12];
          sharingRemindersByType4 = [(SCSharingReminderCache *)self sharingRemindersByType];
          [sharingRemindersByType4 setValue:v19 forKey:type];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v5 = v21;
  }
}

- (void)removeSharingReminders:(id)reminders wereDelivered:(BOOL)delivered
{
  deliveredCopy = delivered;
  v38 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = reminders;
  v30 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v30)
  {
    v6 = *v32;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        scheduledSharingReminders = [(SCSharingReminderCache *)self scheduledSharingReminders];
        v10 = [scheduledSharingReminders indexOfObject:v8];

        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          scheduledSharingReminders2 = SCLogger(v11);
          if (os_log_type_enabled(scheduledSharingReminders2, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v36 = v8;
            _os_log_impl(&dword_262556000, scheduledSharingReminders2, OS_LOG_TYPE_INFO, "Asked to remove a reminder that cache doesn't have: [%@]", buf, 0xCu);
          }
        }

        else
        {
          scheduledSharingReminders2 = [(SCSharingReminderCache *)self scheduledSharingReminders];
          [scheduledSharingReminders2 removeObjectAtIndex:v10];
        }

        type = [v8 type];
        sharingRemindersByType = [(SCSharingReminderCache *)self sharingRemindersByType];
        v15 = [sharingRemindersByType objectForKey:type];

        if (!v15)
        {
          sharingRemindersByType2 = SCLogger(v16);
          if (!os_log_type_enabled(sharingRemindersByType2, OS_LOG_TYPE_INFO))
          {
            goto LABEL_18;
          }

          *buf = 138412290;
          v36 = v8;
          v19 = sharingRemindersByType2;
          v20 = "Asked to remove a reminder type that cache type map doesn't have: [%@]";
          goto LABEL_16;
        }

        v17 = [v15 indexOfObject:v8];
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          sharingRemindersByType2 = SCLogger(0x7FFFFFFFFFFFFFFFLL);
          if (!os_log_type_enabled(sharingRemindersByType2, OS_LOG_TYPE_INFO))
          {
            goto LABEL_18;
          }

          *buf = 138412290;
          v36 = v8;
          v19 = sharingRemindersByType2;
          v20 = "Asked to remove a reminder that cache type map doesn't have: [%@]";
LABEL_16:
          _os_log_impl(&dword_262556000, v19, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
          goto LABEL_18;
        }

        [v15 removeObjectAtIndex:v17];
        sharingRemindersByType2 = [(SCSharingReminderCache *)self sharingRemindersByType];
        [sharingRemindersByType2 setObject:v15 forKey:type];
LABEL_18:

        if (deliveredCopy)
        {
          v21 = v6;
          v22 = deliveredCopy;
          v23 = [MEMORY[0x277CBEAA8] now];
          [(SCSharingReminderCache *)self setLastFiredDate:v23];

          identifier = [v8 identifier];
          ignorableIdentifiersByType = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
          orderedSet = [ignorableIdentifiersByType valueForKey:type];

          if (!orderedSet)
          {
            orderedSet = [MEMORY[0x277CBEB40] orderedSet];
          }

          v27 = [orderedSet containsObject:identifier];
          if (v27)
          {
            ignorableIdentifiersByType2 = SCLogger(v27);
            if (os_log_type_enabled(ignorableIdentifiersByType2, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v36 = v8;
              _os_log_error_impl(&dword_262556000, ignorableIdentifiersByType2, OS_LOG_TYPE_ERROR, "@Delivered a reminder: %@ whose identifier is already in our delivered list", buf, 0xCu);
            }
          }

          else
          {
            [orderedSet addObject:identifier];
            ignorableIdentifiersByType2 = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
            [ignorableIdentifiersByType2 setObject:orderedSet forKey:type];
          }

          deliveredCopy = v22;
          v6 = v21;
        }
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v30);
  }
}

- (void)removeRemindersWithIdentifiers:(id)identifiers
{
  v25 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = SCLogger(identifiersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = identifiersCopy;
    _os_log_impl(&dword_262556000, v5, OS_LOG_TYPE_INFO, "Removing sharing reminders with the following identifiers: %@", buf, 0xCu);
  }

  scheduledSharingReminders = [(SCSharingReminderCache *)self scheduledSharingReminders];
  v7 = [scheduledSharingReminders valueForKey:@"identifier"];

  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [identifiersCopy indexOfObject:{*(*(&v18 + 1) + 8 * v13), v18}];
        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v14;
          scheduledSharingReminders2 = [(SCSharingReminderCache *)self scheduledSharingReminders];
          v17 = [scheduledSharingReminders2 objectAtIndexedSubscript:v15];
          [array addObject:v17];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(SCSharingReminderCache *)self removeSharingReminders:array wereDelivered:0];
}

- (void)deliverGeneralSharingReminderAfter:(double)after
{
  if (after >= 0.0)
  {
    sharingRemindersByType = [(SCSharingReminderCache *)self sharingRemindersByType];
    v7 = [sharingRemindersByType valueForKey:@"com.apple.safetycheckd.general"];
    array = [v7 array];

    v8 = [array count];
    if (v8 >= 2)
    {
      v9 = SCLogger(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(SCSharingReminderCache *)array deliverGeneralSharingReminderAfter:v9];
      }
    }

    [(SCSharingReminderCache *)self removeSharingReminders:array wereDelivered:0];
  }

  else
  {
    array = SCLogger(self);
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      [(SCSharingReminderCache *)array deliverGeneralSharingReminderAfter:after];
    }
  }
}

- (id)remindersDueBy:(id)by
{
  v21 = *MEMORY[0x277D85DE8];
  byCopy = by;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  scheduledSharingReminders = [(SCSharingReminderCache *)self scheduledSharingReminders];
  v7 = [scheduledSharingReminders countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(scheduledSharingReminders);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        scheduledDate = [v11 scheduledDate];
        v13 = [scheduledDate earlierDate:byCopy];
        scheduledDate2 = [v11 scheduledDate];

        if (v13 == scheduledDate2)
        {
          [array addObject:v11];
        }
      }

      v8 = [scheduledSharingReminders countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return array;
}

- (NSArray)scheduledReminders
{
  scheduledSharingReminders = [(SCSharingReminderCache *)self scheduledSharingReminders];
  array = [scheduledSharingReminders array];

  return array;
}

- ($036EC2AD71A582527DAFF881AF25695D)toCacheState
{
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  retstr->var0 = [(SCSharingReminderCache *)self consecutiveNotificationCount];
  retstr->var1 = [(SCSharingReminderCache *)self lastFiredDate];
  scheduledSharingReminders = [(SCSharingReminderCache *)self scheduledSharingReminders];
  retstr->var2 = [scheduledSharingReminders copy];
  ignorableIdentifiersByType = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  retstr->var3 = [ignorableIdentifiersByType copy];

  return result;
}

- (void)addIgnoredIdentifiers:(id)identifiers withType:(id)type
{
  identifiersCopy = identifiers;
  typeCopy = type;
  ignorableIdentifiersByType = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  orderedSet = [ignorableIdentifiersByType valueForKey:typeCopy];

  if (!orderedSet)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  }

  [orderedSet addObjectsFromArray:identifiersCopy];
  ignorableIdentifiersByType2 = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  [ignorableIdentifiersByType2 setValue:orderedSet forKey:typeCopy];
}

- (id)ignoredIdentifiersForType:(id)type
{
  typeCopy = type;
  ignorableIdentifiersByType = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  v6 = [ignorableIdentifiersByType valueForKey:typeCopy];

  array = [v6 array];

  return array;
}

- (NSArray)ignoredIdentifiers
{
  v18 = *MEMORY[0x277D85DE8];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  ignorableIdentifiersByType = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  allValues = [ignorableIdentifiersByType allValues];

  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        allObjects = [*(*(&v13 + 1) + 8 * i) allObjects];
        [orderedSet addObjectsFromArray:allObjects];
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  array = [orderedSet array];

  return array;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  scheduledSharingReminders = [(SCSharingReminderCache *)self scheduledSharingReminders];
  array = [scheduledSharingReminders array];
  [coderCopy encodeObject:array forKey:@"scheduledSharingReminders"];

  ignorableIdentifiersByType = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  [coderCopy encodeObject:ignorableIdentifiersByType forKey:@"deliveredIdentifiersMap"];

  [coderCopy encodeInteger:-[SCSharingReminderCache consecutiveNotificationCount](self forKey:{"consecutiveNotificationCount"), @"consecutiveNotificationCount"}];
  lastFiredDate = [(SCSharingReminderCache *)self lastFiredDate];
  [coderCopy encodeObject:lastFiredDate forKey:@"lastFiredDate"];
}

- (SCSharingReminderCache)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = SCSharingReminderCache;
  v5 = [(SCSharingReminderCache *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"scheduledSharingReminders"];

    v10 = [MEMORY[0x277CBEB40] orderedSetWithArray:v9];
    scheduledSharingReminders = v5->_scheduledSharingReminders;
    v5->_scheduledSharingReminders = v10;

    v12 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"deliveredIdentifiersMap"];
    ignorableIdentifiersByType = v5->_ignorableIdentifiersByType;
    v5->_ignorableIdentifiersByType = v15;

    v5->_consecutiveNotificationCount = [coderCopy decodeIntegerForKey:@"consecutiveNotificationCount"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFiredDate"];
    lastFiredDate = v5->_lastFiredDate;
    v5->_lastFiredDate = v17;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      consecutiveNotificationCount = [(SCSharingReminderCache *)v5 consecutiveNotificationCount];
      if (consecutiveNotificationCount == -[SCSharingReminderCache consecutiveNotificationCount](self, "consecutiveNotificationCount") && (-[SCSharingReminderCache scheduledSharingReminders](v5, "scheduledSharingReminders"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hash], -[SCSharingReminderCache scheduledSharingReminders](self, "scheduledSharingReminders"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hash"), v9, v7, v8 == v10) && (objc_msgSend(MEMORY[0x277CBEA80], "currentCalendar"), v11 = objc_claimAutoreleasedReturnValue(), -[SCSharingReminderCache lastFiredDate](v5, "lastFiredDate"), v12 = objc_claimAutoreleasedReturnValue(), -[SCSharingReminderCache lastFiredDate](self, "lastFiredDate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isDate:inSameDayAsDate:", v12, v13), v13, v12, v11, v14))
      {
        ignoredIdentifiers = [(SCSharingReminderCache *)v5 ignoredIdentifiers];
        ignoredIdentifiers2 = [(SCSharingReminderCache *)self ignoredIdentifiers];
        v17 = [ignoredIdentifiers isEqualToArray:ignoredIdentifiers2];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  scheduledSharingReminders = [(SCSharingReminderCache *)self scheduledSharingReminders];
  consecutiveNotificationCount = [(SCSharingReminderCache *)self consecutiveNotificationCount];
  lastFiredDate = [(SCSharingReminderCache *)self lastFiredDate];
  v7 = localizedDateStringFromUTC(lastFiredDate);
  ignoredIdentifiers = [(SCSharingReminderCache *)self ignoredIdentifiers];
  v9 = [v3 stringWithFormat:@"[SCSharingReminderCache] Reminders: %@ notification count: %lu last fired date: %@ ignored: %@", scheduledSharingReminders, consecutiveNotificationCount, v7, ignoredIdentifiers];

  return v9;
}

+ (void)cacheWithState:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_262556000, log, OS_LOG_TYPE_ERROR, "Error: initiating cache with a nonsensical last fired date [%@]", buf, 0xCu);
}

- (void)deliverGeneralSharingReminderAfter:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&dword_262556000, a2, OS_LOG_TYPE_DEBUG, "Expected 0 or 1 general sharing reminder while resetting but found: %lu", &v3, 0xCu);
}

- (void)deliverGeneralSharingReminderAfter:(os_log_t)log .cold.2(os_log_t log, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&dword_262556000, log, OS_LOG_TYPE_ERROR, "@Cache was asked to deliver a sharing reminder in the past: %ld", &v2, 0xCu);
}

@end
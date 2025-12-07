@interface FTPersistentDataSource
- (BOOL)addConversationLinkDescriptors:(id)descriptors error:(id *)error;
- (BOOL)addConversationLinkDescriptors:(id)descriptors managedObjectContext:(id)context error:(id *)error;
- (BOOL)addOrUpdateConversationLinkDescriptors:(id)descriptors error:(id *)error;
- (BOOL)addOrUpdateConversationLinkDescriptors:(id)descriptors managedObjectContext:(id)context error:(id *)error;
- (BOOL)addOrUpdateKey:(id)key forIntegerValue:(int64_t)value stringValue:(id)stringValue managedObjectContext:(id)context error:(id *)error;
- (BOOL)setInteger:(int64_t)integer forKey:(id)key error:(id *)error;
- (BOOL)setString:(id)string forKey:(id)key error:(id *)error;
- (FTPersistentDataSource)initWithStoreType:(int64_t)type;
- (id)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error;
- (id)conversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error;
- (id)keyValueForKey:(id)key managedObjectContext:(id)context error:(id *)error;
- (id)stringForKey:(id)key error:(id *)error;
- (int64_t)integerForKey:(id)key error:(id *)error;
- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason error:(id *)error;
- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason managedObjectContext:(id)context error:(id *)error;
- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (unint64_t)setActivated:(BOOL)activated withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)setActivated:(BOOL)activated withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (unint64_t)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (unint64_t)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (unint64_t)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (void)addConversationLinkDescriptors:(id)descriptors completion:(id)completion;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addOrUpdateConversationLinkDescriptors:(id)descriptors completion:(id)completion;
- (void)conversationLinkDescriptorCountWithPredicate:(id)predicate completion:(id)completion;
- (void)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset completion:(id)completion;
- (void)deleteConversationLink:(id)link deleteReason:(int64_t)reason inContext:(id)context;
- (void)integerForKey:(id)key completion:(id)completion;
- (void)notifyDelegatesConversationLinkDescriptorsDidChange;
- (void)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason completion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate completion:(id)completion;
- (void)removeLinkFromDatabase:(id)database inContext:(id)context;
- (void)setActivated:(BOOL)activated withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion;
- (void)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion;
- (void)setInteger:(int64_t)integer forKey:(id)key completion:(id)completion;
- (void)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion;
- (void)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion;
- (void)setString:(id)string forKey:(id)key completion:(id)completion;
- (void)stringForKey:(id)key completion:(id)completion;
@end

@implementation FTPersistentDataSource

- (BOOL)addConversationLinkDescriptors:(id)descriptors error:(id *)error
{
  descriptorsCopy = descriptors;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000037B0;
  v23 = sub_1000037C0;
  v24 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000037C8;
  v14[3] = &unk_100018460;
  v17 = &v25;
  v14[4] = self;
  v9 = descriptorsCopy;
  v15 = v9;
  v10 = managedObjectContext;
  v16 = v10;
  v18 = &v19;
  [v10 performBlockAndWait:v14];
  if (error)
  {
    v11 = v20[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (void)addConversationLinkDescriptors:(id)descriptors completion:(id)completion
{
  descriptorsCopy = descriptors;
  completionCopy = completion;
  if ([descriptorsCopy count])
  {
    persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
    managedObjectContext = [persistentContainer managedObjectContext];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003958;
    v11[3] = &unk_100018488;
    v11[4] = self;
    v12 = descriptorsCopy;
    v13 = managedObjectContext;
    v14 = completionCopy;
    v10 = managedObjectContext;
    [v10 performBlock:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (BOOL)addOrUpdateConversationLinkDescriptors:(id)descriptors error:(id *)error
{
  descriptorsCopy = descriptors;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000037B0;
  v24 = sub_1000037C0;
  v25 = 0;
  v8 = FTCServiceLog(descriptorsCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = descriptorsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addOrUpdateConversationLinkDescriptors: %@", buf, 0xCu);
  }

  if ([descriptorsCopy count])
  {
    persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
    managedObjectContext = [persistentContainer managedObjectContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003C10;
    v15[3] = &unk_100018460;
    v18 = &v26;
    v15[4] = self;
    v16 = descriptorsCopy;
    v11 = managedObjectContext;
    v17 = v11;
    v19 = &v20;
    [v11 performBlockAndWait:v15];
    if (error)
    {
      v12 = v21[5];
      if (v12)
      {
        *error = v12;
      }
    }
  }

  v13 = *(v27 + 24);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v13 & 1;
}

- (void)addOrUpdateConversationLinkDescriptors:(id)descriptors completion:(id)completion
{
  descriptorsCopy = descriptors;
  completionCopy = completion;
  if ([descriptorsCopy count])
  {
    persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
    managedObjectContext = [persistentContainer managedObjectContext];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003DA0;
    v11[3] = &unk_100018488;
    v11[4] = self;
    v12 = descriptorsCopy;
    v13 = managedObjectContext;
    v14 = completionCopy;
    v10 = managedObjectContext;
    [v10 performBlock:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000037B0;
  v23 = sub_1000037C0;
  v24 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003FC8;
  v14[3] = &unk_100018460;
  v17 = &v25;
  v14[4] = self;
  v9 = predicateCopy;
  v15 = v9;
  v10 = managedObjectContext;
  v16 = v10;
  v18 = &v19;
  [v10 performBlockAndWait:v14];
  if (error)
  {
    v11 = v20[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v26[3];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (void)conversationLinkDescriptorCountWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004134;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = predicateCopy;
  v15 = managedObjectContext;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = managedObjectContext;
  v12 = predicateCopy;
  [v11 performBlock:v13];
}

- (id)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error
{
  predicateCopy = predicate;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1000037B0;
  v38 = sub_1000037C0;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000037B0;
  v32 = sub_1000037C0;
  v33 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v15 = FTCServiceLog(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = predicateCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "conversationLinkDescriptorsWithPredicate: %@", buf, 0xCu);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100004430;
  v21[3] = &unk_1000184B0;
  v24 = &v34;
  v21[4] = self;
  v16 = predicateCopy;
  v22 = v16;
  v17 = managedObjectContext;
  limitCopy = limit;
  offsetCopy = offset;
  v23 = v17;
  v25 = &v28;
  [v17 performBlockAndWait:v21];
  if (error)
  {
    v18 = v29[5];
    if (v18)
    {
      *error = v18;
    }
  }

  v19 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v19;
}

- (void)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000045C0;
  v17[3] = &unk_1000184D8;
  v17[4] = self;
  v18 = predicateCopy;
  limitCopy = limit;
  offsetCopy = offset;
  v19 = managedObjectContext;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = managedObjectContext;
  v16 = predicateCopy;
  [v15 performBlock:v17];
}

- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason error:(id *)error
{
  predicateCopy = predicate;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0x7FFFFFFFFFFFFFFFLL;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000037B0;
  v26 = sub_1000037C0;
  v27 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000047FC;
  v16[3] = &unk_100018500;
  v19 = &v28;
  v16[4] = self;
  v11 = predicateCopy;
  v17 = v11;
  reasonCopy = reason;
  v12 = managedObjectContext;
  v18 = v12;
  v20 = &v22;
  [v12 performBlockAndWait:v16];
  if (error)
  {
    v13 = v23[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = v29[3];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

- (void)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004970;
  v15[3] = &unk_100018528;
  v15[4] = self;
  v16 = predicateCopy;
  v18 = completionCopy;
  reasonCopy = reason;
  v17 = managedObjectContext;
  v12 = completionCopy;
  v13 = managedObjectContext;
  v14 = predicateCopy;
  [v13 performBlock:v15];
}

- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000037B0;
  v23 = sub_1000037C0;
  v24 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100004B9C;
  v14[3] = &unk_100018460;
  v17 = &v25;
  v14[4] = self;
  v9 = predicateCopy;
  v15 = v9;
  v10 = managedObjectContext;
  v16 = v10;
  v18 = &v19;
  [v10 performBlockAndWait:v14];
  if (error)
  {
    v11 = v20[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v26[3];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004D08;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = predicateCopy;
  v15 = managedObjectContext;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = managedObjectContext;
  v12 = predicateCopy;
  [v11 performBlock:v13];
}

- (unint64_t)setActivated:(BOOL)activated withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0x7FFFFFFFFFFFFFFFLL;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000037B0;
  v29 = sub_1000037C0;
  v30 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004F48;
  v18[3] = &unk_100018550;
  v21 = &v31;
  v18[4] = self;
  activatedCopy = activated;
  revisionCopy = revision;
  v13 = predicateCopy;
  v19 = v13;
  v14 = managedObjectContext;
  v20 = v14;
  v22 = &v25;
  [v14 performBlockAndWait:v18];
  if (error)
  {
    v15 = v26[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v32[3];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v16;
}

- (void)setActivated:(BOOL)activated withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000050D0;
  v17[3] = &unk_100018578;
  activatedCopy = activated;
  v20 = completionCopy;
  revisionCopy = revision;
  v17[4] = self;
  v18 = predicateCopy;
  v19 = managedObjectContext;
  v14 = completionCopy;
  v15 = managedObjectContext;
  v16 = predicateCopy;
  [v15 performBlock:v17];
}

- (unint64_t)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error
{
  dateCopy = date;
  predicateCopy = predicate;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000037B0;
  v31 = sub_1000037C0;
  v32 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005334;
  v20[3] = &unk_1000185A0;
  v24 = &v33;
  v20[4] = self;
  v14 = dateCopy;
  v21 = v14;
  revisionCopy = revision;
  v15 = predicateCopy;
  v22 = v15;
  v16 = managedObjectContext;
  v23 = v16;
  v25 = &v27;
  [v16 performBlockAndWait:v20];
  if (error)
  {
    v17 = v28[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = v34[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (void)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion
{
  dateCopy = date;
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000054D4;
  v19[3] = &unk_1000185C8;
  v19[4] = self;
  v20 = dateCopy;
  v21 = predicateCopy;
  v22 = managedObjectContext;
  v23 = completionCopy;
  revisionCopy = revision;
  v15 = completionCopy;
  v16 = managedObjectContext;
  v17 = predicateCopy;
  v18 = dateCopy;
  [v16 performBlock:v19];
}

- (unint64_t)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error
{
  handlesCopy = handles;
  predicateCopy = predicate;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000037B0;
  v31 = sub_1000037C0;
  v32 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005738;
  v20[3] = &unk_1000185A0;
  v24 = &v33;
  v20[4] = self;
  v14 = handlesCopy;
  v21 = v14;
  revisionCopy = revision;
  v15 = predicateCopy;
  v22 = v15;
  v16 = managedObjectContext;
  v23 = v16;
  v25 = &v27;
  [v16 performBlockAndWait:v20];
  if (error)
  {
    v17 = v28[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = v34[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (void)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion
{
  handlesCopy = handles;
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000058D8;
  v19[3] = &unk_1000185C8;
  v19[4] = self;
  v20 = handlesCopy;
  v21 = predicateCopy;
  v22 = managedObjectContext;
  v23 = completionCopy;
  revisionCopy = revision;
  v15 = completionCopy;
  v16 = managedObjectContext;
  v17 = predicateCopy;
  v18 = handlesCopy;
  [v16 performBlock:v19];
}

- (unint64_t)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error
{
  nameCopy = name;
  predicateCopy = predicate;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000037B0;
  v31 = sub_1000037C0;
  v32 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005B3C;
  v20[3] = &unk_1000185A0;
  v24 = &v33;
  v20[4] = self;
  v14 = nameCopy;
  v21 = v14;
  revisionCopy = revision;
  v15 = predicateCopy;
  v22 = v15;
  v16 = managedObjectContext;
  v23 = v16;
  v25 = &v27;
  [v16 performBlockAndWait:v20];
  if (error)
  {
    v17 = v28[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = v34[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (void)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion
{
  nameCopy = name;
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005CDC;
  v19[3] = &unk_1000185C8;
  v19[4] = self;
  v20 = nameCopy;
  v21 = predicateCopy;
  v22 = managedObjectContext;
  v23 = completionCopy;
  revisionCopy = revision;
  v15 = completionCopy;
  v16 = managedObjectContext;
  v17 = predicateCopy;
  v18 = nameCopy;
  [v16 performBlock:v19];
}

- (BOOL)addConversationLinkDescriptors:(id)descriptors managedObjectContext:(id)context error:(id *)error
{
  descriptorsCopy = descriptors;
  contextCopy = context;
  if (![descriptorsCopy count])
  {
    goto LABEL_15;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = descriptorsCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [FTManagedConversationLink managedConversationLinkForTUConversationLinkDescriptor:*(*(&v18 + 1) + 8 * i) inManagedObjectContext:contextCopy, v18];
        if (v15)
        {
          [contextCopy insertObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if (![contextCopy hasChanges])
  {
    goto LABEL_15;
  }

  if (![contextCopy save:error])
  {
    [contextCopy rollback];
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  [(FTPersistentDataSource *)self notifyDelegatesConversationLinkDescriptorsDidChange];
  v16 = 1;
LABEL_16:

  return v16;
}

- (BOOL)addOrUpdateConversationLinkDescriptors:(id)descriptors managedObjectContext:(id)context error:(id *)error
{
  descriptorsCopy = descriptors;
  contextCopy = context;
  if (![descriptorsCopy count])
  {
LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

  selfCopy = self;
  v36 = descriptorsCopy;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = descriptorsCopy;
  v39 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v39)
  {
    v10 = *v45;
    v11 = &stru_10001D000;
    v37 = contextCopy;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        fetchRequest = [&v11[199].attr fetchRequest];
        pseudonym = [v13 pseudonym];
        v16 = [NSPredicate tu_predicateForConversationLinkDescriptorsWithPseudonym:pseudonym];
        [fetchRequest setPredicate:v16];

        v17 = [contextCopy executeFetchRequest:fetchRequest error:error];
        v18 = [v17 count];
        if (v18)
        {
          v20 = FTCServiceLog(v18, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v50 = v17;
            v51 = 2112;
            v52 = v13;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "update managedObjects: %@ with link: %@", buf, 0x16u);
          }

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v21 = v17;
          v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = v10;
            errorCopy = error;
            v26 = *v41;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v41 != v26)
                {
                  objc_enumerationMutation(v21);
                }

                [*(*(&v40 + 1) + 8 * j) updateWithDescriptor:v13];
              }

              v23 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v23);
            error = errorCopy;
            v10 = v24;
            contextCopy = v37;
            v11 = &stru_10001D000;
          }
        }

        else
        {
          v21 = [&v11[199].attr managedConversationLinkForTUConversationLinkDescriptor:v13 inManagedObjectContext:contextCopy];
          v29 = FTCServiceLog(v21, v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v50 = v21;
            v51 = 2112;
            v52 = contextCopy;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "add managedConversationLink: %@ to managedObjectContext: %@", buf, 0x16u);
          }

          if (v21)
          {
            [contextCopy insertObject:v21];
          }
        }
      }

      v39 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v39);
  }

  if (![contextCopy hasChanges])
  {
    v30 = 0;
    descriptorsCopy = v36;
    goto LABEL_32;
  }

  descriptorsCopy = v36;
  if (![contextCopy save:error])
  {
    rollback = [contextCopy rollback];
    v33 = FTCServiceLog(rollback, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10000CC48(obj, v33);
    }

    goto LABEL_31;
  }

  [(FTPersistentDataSource *)selfCopy notifyDelegatesConversationLinkDescriptorsDidChange];
  v30 = 1;
LABEL_32:

  return v30;
}

- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  predicateCopy = predicate;
  v9 = +[FTManagedConversationLink fetchRequest];
  [v9 setPredicate:predicateCopy];

  v10 = [contextCopy countForFetchRequest:v9 error:error];
  return v10;
}

- (id)conversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error
{
  predicateCopy = predicate;
  contextCopy = context;
  v13 = +[FTManagedConversationLink fetchRequest];
  [v13 setFetchLimit:limit];
  [v13 setFetchOffset:offset];
  [v13 setPredicate:predicateCopy];
  [v13 setRelationshipKeyPathsForPrefetching:&off_100018D78];
  [v13 setRelationshipKeyPathsForPrefetching:&off_100018D90];
  [v13 setReturnsObjectsAsFaults:0];
  v14 = [contextCopy executeFetchRequest:v13 error:error];
  v15 = v14;
  if (v14)
  {
    v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          tuConversationLinkDescriptor = [*(*(&v27 + 1) + 8 * i) tuConversationLinkDescriptor];
          [v16 addObject:tuConversationLinkDescriptor];
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v19);
    }

    v23 = [v16 copy];
    v25 = FTCServiceLog(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v23;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "get conversationLinkDescriptors: %@", buf, 0xCu);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason managedObjectContext:(id)context error:(id *)error
{
  predicateCopy = predicate;
  contextCopy = context;
  v12 = +[FTManagedConversationLink fetchRequest];
  [v12 setPredicate:predicateCopy];
  v13 = [contextCopy executeFetchRequest:v12 error:error];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(FTPersistentDataSource *)self deleteConversationLink:*(*(&v28 + 1) + 8 * v18) deleteReason:reason inContext:contextCopy];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  if (![contextCopy hasChanges])
  {
    goto LABEL_15;
  }

  updatedObjects = [contextCopy updatedObjects];
  v20 = [updatedObjects count];
  deletedObjects = [contextCopy deletedObjects];
  v22 = [deletedObjects count];

  if (![contextCopy save:error])
  {
    rollback = [contextCopy rollback];
    v26 = FTCServiceLog(rollback, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10000CCC0(v26);
    }

LABEL_15:
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  v23 = v20 + v22;
  [(FTPersistentDataSource *)self notifyDelegatesConversationLinkDescriptorsDidChange];
LABEL_16:

  return v23;
}

- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  predicateCopy = predicate;
  contextCopy = context;
  v10 = +[FTManagedConversationLink fetchRequest];
  [v10 setPredicate:predicateCopy];
  v11 = [contextCopy executeFetchRequest:v10 error:error];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_15;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(FTPersistentDataSource *)self removeLinkFromDatabase:*(*(&v26 + 1) + 8 * v16) inContext:contextCopy];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  if (![contextCopy hasChanges])
  {
    goto LABEL_15;
  }

  updatedObjects = [contextCopy updatedObjects];
  v18 = [updatedObjects count];
  deletedObjects = [contextCopy deletedObjects];
  v20 = [deletedObjects count];

  if (![contextCopy save:error])
  {
    rollback = [contextCopy rollback];
    v24 = FTCServiceLog(rollback, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10000CD04(v24);
    }

LABEL_15:
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  v21 = v18 + v20;
  [(FTPersistentDataSource *)self notifyDelegatesConversationLinkDescriptorsDidChange];
LABEL_16:

  return v21;
}

- (void)deleteConversationLink:(id)link deleteReason:(int64_t)reason inContext:(id)context
{
  linkCopy = link;
  deletionDate = [linkCopy deletionDate];

  if (deletionDate)
  {
    v10 = FTCServiceLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      deleteReason = [linkCopy deleteReason];
      deletionDate2 = [linkCopy deletionDate];
      pseudonym = [linkCopy pseudonym];
      v20 = 134218754;
      reasonCopy2 = reason;
      v22 = 2048;
      v23 = deleteReason;
      v24 = 2112;
      v25 = deletionDate2;
      v26 = 2112;
      v27 = pseudonym;
      v14 = "deleteConversationLink: current reason: %ld, link is already deleted with reason: %ld, deletionDate: %@ for %@";
      v15 = v10;
      v16 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v20, v16);
    }
  }

  else
  {
    v17 = +[NSDate date];
    [linkCopy setDeletionDate:v17];

    v18 = [linkCopy setDeleteReason:reason];
    v10 = FTCServiceLog(v18, v19);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      deletionDate2 = [linkCopy deletionDate];
      pseudonym = [linkCopy pseudonym];
      v20 = 134218498;
      reasonCopy2 = reason;
      v22 = 2112;
      v23 = deletionDate2;
      v24 = 2112;
      v25 = pseudonym;
      v14 = "deleteConversationLink: reason: %ld, deletionDate: %@ for %@";
      v15 = v10;
      v16 = 32;
      goto LABEL_6;
    }
  }
}

- (void)removeLinkFromDatabase:(id)database inContext:(id)context
{
  databaseCopy = database;
  v6 = [context deleteObject:databaseCopy];
  v8 = FTCServiceLog(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = databaseCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "removeLinkFromDatabase: remove link: %@", &v9, 0xCu);
  }
}

- (unint64_t)setActivated:(BOOL)activated withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  activatedCopy = activated;
  predicateCopy = predicate;
  contextCopy = context;
  v14 = +[FTManagedConversationLink fetchRequest];
  [v14 setPredicate:predicateCopy];
  v15 = [contextCopy executeFetchRequest:v14 error:error];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_15;
  }

  selfCopy = self;
  errorCopy = error;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        [v21 setActivated:activatedCopy];
        if (revision >= 1)
        {
          [v21 setOriginatorRevision:revision];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v18);
  }

  if (![contextCopy hasChanges])
  {
    goto LABEL_15;
  }

  updatedObjects = [contextCopy updatedObjects];
  v23 = [updatedObjects count];

  if (![contextCopy save:errorCopy])
  {
    [contextCopy rollback];
LABEL_15:
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  [(FTPersistentDataSource *)selfCopy notifyDelegatesConversationLinkDescriptorsDidChange];
LABEL_16:

  return v23;
}

- (unint64_t)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  dateCopy = date;
  predicateCopy = predicate;
  contextCopy = context;
  v15 = +[FTManagedConversationLink fetchRequest];
  [v15 setPredicate:predicateCopy];
  v16 = [contextCopy executeFetchRequest:v15 error:error];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_15;
  }

  selfCopy = self;
  errorCopy = error;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        [v22 setExpirationDate:dateCopy];
        if (revision >= 1)
        {
          [v22 setOriginatorRevision:revision];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  if (![contextCopy hasChanges])
  {
    goto LABEL_15;
  }

  updatedObjects = [contextCopy updatedObjects];
  v24 = [updatedObjects count];

  if (![contextCopy save:errorCopy])
  {
    [contextCopy rollback];
LABEL_15:
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  [(FTPersistentDataSource *)selfCopy notifyDelegatesConversationLinkDescriptorsDidChange];
LABEL_16:

  return v24;
}

- (unint64_t)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  handlesCopy = handles;
  predicateCopy = predicate;
  contextCopy = context;
  v15 = +[FTManagedConversationLink fetchRequest];
  [v15 setPredicate:predicateCopy];
  v16 = [contextCopy executeFetchRequest:v15 error:error];
  if (v16)
  {
    selfCopy = self;
    errorCopy = error;
    v29 = predicateCopy;
    v30 = handlesCopy;
    v17 = [FTManagedHandle managedHandlesForTUHandles:handlesCopy inManagedObjectContext:contextCopy];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          [v23 setInvitedHandles:v17];
          if (revision >= 1)
          {
            [v23 setOriginatorRevision:revision];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v20);
    }

    if ([contextCopy hasChanges])
    {
      updatedObjects = [contextCopy updatedObjects];
      v25 = [updatedObjects count];

      handlesCopy = v30;
      if ([contextCopy save:errorCopy])
      {
        [(FTPersistentDataSource *)selfCopy notifyDelegatesConversationLinkDescriptorsDidChange];
      }

      else
      {
        [contextCopy rollback];
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      handlesCopy = v30;
    }

    predicateCopy = v29;
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v25;
}

- (unint64_t)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  nameCopy = name;
  predicateCopy = predicate;
  contextCopy = context;
  v15 = +[FTManagedConversationLink fetchRequest];
  [v15 setPredicate:predicateCopy];
  v16 = [contextCopy executeFetchRequest:v15 error:error];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_15;
  }

  selfCopy = self;
  errorCopy = error;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        [v22 setName:nameCopy];
        if (revision >= 1)
        {
          [v22 setOriginatorRevision:revision];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  if (![contextCopy hasChanges])
  {
    goto LABEL_15;
  }

  updatedObjects = [contextCopy updatedObjects];
  v24 = [updatedObjects count];

  if (![contextCopy save:errorCopy])
  {
    [contextCopy rollback];
LABEL_15:
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  [(FTPersistentDataSource *)selfCopy notifyDelegatesConversationLinkDescriptorsDidChange];
LABEL_16:

  return v24;
}

- (void)notifyDelegatesConversationLinkDescriptorsDidChange
{
  delegateController = [(FTPersistentDataSource *)self delegateController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000743C;
  v4[3] = &unk_100018618;
  v4[4] = self;
  [delegateController enumerateDelegatesUsingBlock:v4];
}

- (FTPersistentDataSource)initWithStoreType:(int64_t)type
{
  v13.receiver = self;
  v13.super_class = FTPersistentDataSource;
  v4 = [(FTPersistentDataSource *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(TUDelegateController);
    delegateController = v4->_delegateController;
    v4->_delegateController = v5;

    v7 = [[FTPersistentContainer alloc] initWithStoreType:type];
    persistentContainer = v4->_persistentContainer;
    v4->_persistentContainer = v7;

    v11 = FTCServiceLog(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10000CD48(v11);
    }

    [(FTPersistentContainer *)v4->_persistentContainer loadPersistentStoresWithCompletionHandler:&stru_100018670];
  }

  return v4;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(FTPersistentDataSource *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(FTPersistentDataSource *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

- (BOOL)setInteger:(int64_t)integer forKey:(id)key error:(id *)error
{
  keyCopy = key;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100007E78;
  v25 = sub_100007E88;
  v26 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007E90;
  v15[3] = &unk_100018500;
  v18 = &v27;
  v15[4] = self;
  v11 = keyCopy;
  v16 = v11;
  integerCopy = integer;
  v12 = managedObjectContext;
  v17 = v12;
  v19 = &v21;
  [v12 performBlockAndWait:v15];
  if (error)
  {
    *error = v22[5];
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (void)setInteger:(int64_t)integer forKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008008;
  v15[3] = &unk_100018528;
  v15[4] = self;
  v16 = keyCopy;
  v18 = completionCopy;
  integerCopy = integer;
  v17 = managedObjectContext;
  v12 = completionCopy;
  v13 = managedObjectContext;
  v14 = keyCopy;
  [v13 performBlock:v15];
}

- (void)integerForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008184;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = keyCopy;
  v15 = managedObjectContext;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = managedObjectContext;
  v12 = keyCopy;
  [v11 performBlock:v13];
}

- (int64_t)integerForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100007E78;
  v22 = sub_100007E88;
  v23 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000083C4;
  v13[3] = &unk_1000186C0;
  v13[4] = self;
  v9 = keyCopy;
  v14 = v9;
  v10 = managedObjectContext;
  v15 = v10;
  v16 = &v18;
  v17 = &v24;
  [v10 performBlockAndWait:v13];
  if (error)
  {
    *error = v19[5];
  }

  v11 = v25[3];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (BOOL)setString:(id)string forKey:(id)key error:(id *)error
{
  stringCopy = string;
  keyCopy = key;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100007E78;
  v27 = sub_100007E88;
  v28 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100008614;
  v17[3] = &unk_1000186E8;
  v21 = &v29;
  v17[4] = self;
  v12 = keyCopy;
  v18 = v12;
  v13 = stringCopy;
  v19 = v13;
  v14 = managedObjectContext;
  v20 = v14;
  v22 = &v23;
  [v14 performBlockAndWait:v17];
  if (error)
  {
    *error = v24[5];
  }

  v15 = *(v30 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (void)setString:(id)string forKey:(id)key completion:(id)completion
{
  stringCopy = string;
  keyCopy = key;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000087AC;
  v17[3] = &unk_100018710;
  v17[4] = self;
  v18 = keyCopy;
  v19 = stringCopy;
  v20 = managedObjectContext;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = managedObjectContext;
  v15 = stringCopy;
  v16 = keyCopy;
  [v14 performBlock:v17];
}

- (void)stringForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008928;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = keyCopy;
  v15 = managedObjectContext;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = managedObjectContext;
  v12 = keyCopy;
  [v11 performBlock:v13];
}

- (id)stringForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100007E78;
  v28 = sub_100007E88;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100007E78;
  v22 = sub_100007E88;
  v23 = 0;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008BC4;
  v13[3] = &unk_1000186C0;
  v13[4] = self;
  v9 = keyCopy;
  v14 = v9;
  v10 = managedObjectContext;
  v15 = v10;
  v16 = &v18;
  v17 = &v24;
  [v10 performBlockAndWait:v13];
  if (error)
  {
    *error = v19[5];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (id)keyValueForKey:(id)key managedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  keyCopy = key;
  v9 = +[FTManagedKeyValue fetchRequest];
  keyCopy = [NSPredicate predicateWithFormat:@"key == %@", keyCopy];

  [v9 setPredicate:keyCopy];
  [v9 setReturnsObjectsAsFaults:0];
  v11 = [contextCopy executeFetchRequest:v9 error:error];

  if (v11)
  {
    firstObject = [v11 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)addOrUpdateKey:(id)key forIntegerValue:(int64_t)value stringValue:(id)stringValue managedObjectContext:(id)context error:(id *)error
{
  keyCopy = key;
  stringValueCopy = stringValue;
  contextCopy = context;
  v14 = +[FTManagedKeyValue fetchRequest];
  keyCopy = [NSPredicate predicateWithFormat:@"key == %@", keyCopy];
  [v14 setPredicate:keyCopy];

  [v14 setReturnsObjectsAsFaults:0];
  v16 = [contextCopy executeFetchRequest:v14 error:error];
  if ([v16 count])
  {
    firstObject = [v16 firstObject];
    if (!firstObject)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  if (managedObjectModel)
  {
    entitiesByName = [managedObjectModel entitiesByName];
    v22 = [entitiesByName objectForKeyedSubscript:@"KeyValue"];

    if (v22)
    {
      v25 = [[FTManagedKeyValue alloc] initWithEntity:v22 insertIntoManagedObjectContext:contextCopy];
    }

    else
    {
      v27 = FTCServiceLog(v23, v24);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v29 = @"KeyValue";
        v30 = 2112;
        v31 = contextCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Could not find entity description with name %@ in managed object context %@. Falling back to convenience initializer.", buf, 0x16u);
      }

      v25 = [[FTManagedKeyValue alloc] initWithContext:contextCopy];
    }

    firstObject = v25;
    if (v25)
    {
      [contextCopy insertObject:v25];
    }
  }

  else
  {
    firstObject = 0;
  }

  if (firstObject)
  {
LABEL_3:
    [firstObject setKey:keyCopy];
    [firstObject setStringValue:stringValueCopy];
    [firstObject setIntegerValue:value];
  }

LABEL_4:
  if (![contextCopy hasChanges])
  {
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  if (([contextCopy save:error] & 1) == 0)
  {
    [contextCopy rollback];
    goto LABEL_11;
  }

  v18 = 1;
LABEL_12:

  return v18;
}

@end
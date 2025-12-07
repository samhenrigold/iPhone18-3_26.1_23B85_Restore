@interface MFMailboxUidTransformer
+ (BOOL)isMailbox:(id)mailbox equalTo:(id)to uidToMailboxMap:(id)map;
- (MFMailboxUidTransformer)init;
- (id)_transformMailboxUid:(void *)uid parent:(void *)parent uidToMailboxMap:(void *)map objectIDToUidMap:;
- (id)transformMailboxUid:(id)uid uidToMailboxMap:(id)map objectIDToUidMap:(id)uidMap;
@end

@implementation MFMailboxUidTransformer

- (MFMailboxUidTransformer)init
{
  v3.receiver = self;
  v3.super_class = MFMailboxUidTransformer;
  return [(MFMailboxUidTransformer *)&v3 init];
}

+ (BOOL)isMailbox:(id)mailbox equalTo:(id)to uidToMailboxMap:(id)map
{
  mailboxCopy = mailbox;
  toCopy = to;
  mapCopy = map;
  name = [mailboxCopy name];
  displayNameUsingSpecialNames = [toCopy displayNameUsingSpecialNames];
  if (![name isEqual:displayNameUsingSpecialNames])
  {
    v16 = 0;
    goto LABEL_17;
  }

  objectID = [mailboxCopy objectID];
  v15 = [objectID url];
  if (v15 || ([toCopy URL], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    objectID2 = [mailboxCopy objectID];
    v7 = [objectID2 url];
    v5 = [toCopy URL];
    if (([v7 isEqual:v5] & 1) == 0)
    {

      v16 = 0;
      goto LABEL_14;
    }

    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  type = [mailboxCopy type];
  if (type == [toCopy type] && (v18 = objc_msgSend(mailboxCopy, "canContainMessages"), v18 == objc_msgSend(toCopy, "isStore")))
  {
    if (mapCopy)
    {
      parent = [mailboxCopy parent];
      parent2 = [toCopy parent];
      v21 = [mapCopy objectForKey:parent2];
      v22 = parent;
      v16 = parent == v21;

      if (!v25)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (v25)
  {
LABEL_13:
  }

LABEL_14:
  if (!v15)
  {
  }

LABEL_17:
  return v16;
}

- (id)transformMailboxUid:(id)uid uidToMailboxMap:(id)map objectIDToUidMap:(id)uidMap
{
  v5 = [(MFMailboxUidTransformer *)self _transformMailboxUid:uid parent:0 uidToMailboxMap:map objectIDToUidMap:uidMap];

  return v5;
}

- (id)_transformMailboxUid:(void *)uid parent:(void *)parent uidToMailboxMap:(void *)map objectIDToUidMap:
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a2;
  uidCopy = uid;
  parentCopy = parent;
  mapCopy = map;
  v35 = v9;
  if (self)
  {
    displayNameUsingSpecialNames = [v9 displayNameUsingSpecialNames];
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    children = [v9 children];
    v13 = [v11 initWithCapacity:{objc_msgSend(children, "count") + 1}];

    v14 = objc_alloc(MEMORY[0x1E699AE08]);
    representedAccount = [v9 representedAccount];
    identifier = [representedAccount identifier];
    v33 = [v14 initWithRepresentedObjectID:identifier];

    objectID = [v9 objectID];
    if (objectID)
    {
      v17 = objc_alloc(MEMORY[0x1E699AD18]);
      type = [v9 type];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __88__MFMailboxUidTransformer__transformMailboxUid_parent_uidToMailboxMap_objectIDToUidMap___block_invoke;
      v41[3] = &unk_1E7AA6238;
      v19 = v9;
      v42 = v19;
      v43 = uidCopy;
      v20 = [v17 initWithObjectID:objectID repository:0 name:displayNameUsingSpecialNames accountIdentifier:v33 type:type builder:v41];
      if (parentCopy)
      {
        [parentCopy setObject:v20 forKey:v19];
      }

      if (mapCopy)
      {
        objectID2 = [v20 objectID];
        [mapCopy setObject:v19 forKey:objectID2];
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      children2 = [v19 children];
      v23 = [children2 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (v23)
      {
        v24 = *v38;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(children2);
            }

            v26 = *(*(&v37 + 1) + 8 * i);
            v27 = objc_autoreleasePoolPush();
            v28 = [(MFMailboxUidTransformer *)self _transformMailboxUid:v26 parent:v20 uidToMailboxMap:parentCopy objectIDToUidMap:mapCopy];
            [v13 addObjectsFromArray:v28];

            objc_autoreleasePoolPop(v27);
          }

          v23 = [children2 countByEnumeratingWithState:&v37 objects:v44 count:16];
        }

        while (v23);
      }

      [v13 addObject:v20];
      v29 = [v13 copy];
    }

    else
    {
      v29 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void __88__MFMailboxUidTransformer__transformMailboxUid_parent_uidToMailboxMap_objectIDToUidMap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setCanContainMessages:{objc_msgSend(*(a1 + 32), "isStore")}];
  [v3 setParent:*(a1 + 40)];
}

@end
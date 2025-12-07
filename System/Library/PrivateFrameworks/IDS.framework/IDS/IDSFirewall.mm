@interface IDSFirewall
- (IDSFirewall)initWithService:(id)service queue:(id)queue;
- (id)_removeInvalidEntries:(id)entries;
- (id)description;
- (void)currentDonatedEntries:(id)entries;
- (void)currentEntries:(id)entries;
- (void)donateEntries:(id)entries withCompletion:(id)completion;
- (void)populateImpactedServices:(id)services;
- (void)recentlyBlockedEntries:(id)entries;
- (void)removeAllDonatedEntries:(id)entries;
- (void)removeAllEntries:(id)entries;
- (void)removeDonatedEntries:(id)entries withCompletion:(id)completion;
- (void)removeEntries:(id)entries withCompletion:(id)completion;
- (void)replaceAllEntriesWithEntries:(id)entries withCompletion:(id)completion;
- (void)replaceDonatedEntriesWithEntries:(id)entries withCompletion:(id)completion;
- (void)setQueue:(id)queue;
@end

@implementation IDSFirewall

- (IDSFirewall)initWithService:(id)service queue:(id)queue
{
  serviceCopy = service;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = IDSFirewall;
  v8 = [(IDSFirewall *)&v15 init];
  if (v8)
  {
    v9 = +[IDSInternalQueueController sharedInstance];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A4C28C;
    v11[3] = &unk_1E743E620;
    v12 = v8;
    v13 = serviceCopy;
    v14 = queueCopy;
    [v9 performBlock:v11 waitUntilDone:1];
  }

  return v8;
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A4C414;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  [v5 performBlock:v7 waitUntilDone:1];
}

- (void)populateImpactedServices:(id)services
{
  v18 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  if (!servicesCopy)
  {
    sub_195B2A7C8(a2, self);
  }

  queue = self->_queue;
  v7 = +[IDSLogging IDSService];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v8)
    {
      service = self->_service;
      *buf = 138412290;
      v17 = service;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "IDSFirewall populateImpactedServices for service %@", buf, 0xCu);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195A4C61C;
    v14[3] = &unk_1E743F368;
    v14[4] = self;
    v15 = servicesCopy;
    v10 = MEMORY[0x19A8BBEF0](v14);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195A4C768;
    v12[3] = &unk_1E743F8A0;
    v12[4] = self;
    v13 = v10;
    v11 = v10;
    [IDSXPCDaemonController performDaemonControllerTask:v12];
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v17 = "[IDSFirewall populateImpactedServices:]";
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
    }
  }
}

- (void)donateEntries:(id)entries withCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  completionCopy = completion;
  queue = self->_queue;
  v9 = +[IDSLogging IDSService];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v10)
    {
      service = self->_service;
      *buf = 138412546;
      v24 = service;
      v25 = 2112;
      v26 = entriesCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ donateEntries %@", buf, 0x16u);
    }

    v12 = [(IDSFirewall *)self _removeInvalidEntries:entriesCopy];

    if ([v12 count])
    {
      v13 = self->_service;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_195A4CC98;
      v17[3] = &unk_1E743FE38;
      entriesCopy = v12;
      v18 = entriesCopy;
      selfCopy = self;
      v20 = completionCopy;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_195A4CE04;
      v15[3] = &unk_1E743F138;
      v15[4] = self;
      v16 = v20;
      sub_195A4CBB0(v13, v17, v15);

      v9 = v18;
    }

    else
    {
      v14 = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A4CB9C;
      block[3] = &unk_1E743E850;
      v22 = completionCopy;
      dispatch_async(v14, block);
      v9 = v22;
      entriesCopy = v12;
    }
  }

  else if (v10)
  {
    *buf = 136315138;
    v24 = "[IDSFirewall donateEntries:withCompletion:]";
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }
}

- (void)removeDonatedEntries:(id)entries withCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  completionCopy = completion;
  queue = self->_queue;
  v9 = +[IDSLogging IDSService];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v10)
    {
      service = self->_service;
      *buf = 138412546;
      v24 = service;
      v25 = 2112;
      v26 = entriesCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ removeDonatedEntries %@", buf, 0x16u);
    }

    v12 = [(IDSFirewall *)self _removeInvalidEntries:entriesCopy];

    if ([v12 count])
    {
      v13 = self->_service;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_195A4D17C;
      v17[3] = &unk_1E743FE38;
      entriesCopy = v12;
      v18 = entriesCopy;
      selfCopy = self;
      v20 = completionCopy;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_195A4D2E8;
      v15[3] = &unk_1E743F138;
      v15[4] = self;
      v16 = v20;
      sub_195A4CBB0(v13, v17, v15);

      v9 = v18;
    }

    else
    {
      v14 = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A4D168;
      block[3] = &unk_1E743E850;
      v22 = completionCopy;
      dispatch_async(v14, block);
      v9 = v22;
      entriesCopy = v12;
    }
  }

  else if (v10)
  {
    *buf = 136315138;
    v24 = "[IDSFirewall removeDonatedEntries:withCompletion:]";
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }
}

- (void)removeEntries:(id)entries withCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  completionCopy = completion;
  queue = self->_queue;
  v9 = +[IDSLogging IDSService];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v10)
    {
      service = self->_service;
      *buf = 138412546;
      v24 = service;
      v25 = 2112;
      v26 = entriesCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ removeEntries %@", buf, 0x16u);
    }

    v12 = [(IDSFirewall *)self _removeInvalidEntries:entriesCopy];

    if ([v12 count])
    {
      v13 = self->_service;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_195A4D660;
      v17[3] = &unk_1E743FE38;
      entriesCopy = v12;
      v18 = entriesCopy;
      selfCopy = self;
      v20 = completionCopy;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_195A4D7CC;
      v15[3] = &unk_1E743F138;
      v15[4] = self;
      v16 = v20;
      sub_195A4CBB0(v13, v17, v15);

      v9 = v18;
    }

    else
    {
      v14 = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A4D64C;
      block[3] = &unk_1E743E850;
      v22 = completionCopy;
      dispatch_async(v14, block);
      v9 = v22;
      entriesCopy = v12;
    }
  }

  else if (v10)
  {
    *buf = 136315138;
    v24 = "[IDSFirewall removeEntries:withCompletion:]";
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }
}

- (void)replaceDonatedEntriesWithEntries:(id)entries withCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  completionCopy = completion;
  queue = self->_queue;
  v9 = +[IDSLogging IDSService];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v10)
    {
      service = self->_service;
      *buf = 138412546;
      v21 = service;
      v22 = 2112;
      v23 = entriesCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ replaceDonatedEntriesWithEntries %@", buf, 0x16u);
    }

    v12 = [(IDSFirewall *)self _removeInvalidEntries:entriesCopy];

    if ([v12 count])
    {
      v13 = self->_service;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_195A4DAD8;
      v16[3] = &unk_1E743FE38;
      entriesCopy = v12;
      v17 = entriesCopy;
      selfCopy = self;
      v19 = completionCopy;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_195A4DC48;
      v14[3] = &unk_1E743F138;
      v14[4] = self;
      v15 = v19;
      sub_195A4CBB0(v13, v16, v14);
    }

    else
    {
      [(IDSFirewall *)self removeAllDonatedEntries:completionCopy];
      entriesCopy = v12;
    }
  }

  else
  {
    if (v10)
    {
      *buf = 136315138;
      v21 = "[IDSFirewall replaceDonatedEntriesWithEntries:withCompletion:]";
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
    }
  }
}

- (void)replaceAllEntriesWithEntries:(id)entries withCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  completionCopy = completion;
  queue = self->_queue;
  v9 = +[IDSLogging IDSService];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v10)
    {
      service = self->_service;
      *buf = 138412546;
      v21 = service;
      v22 = 2112;
      v23 = entriesCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ replaceAllEntriesWithEntries %@", buf, 0x16u);
    }

    v12 = [(IDSFirewall *)self _removeInvalidEntries:entriesCopy];

    if ([v12 count])
    {
      v13 = self->_service;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_195A4DF50;
      v16[3] = &unk_1E743FE38;
      entriesCopy = v12;
      v17 = entriesCopy;
      selfCopy = self;
      v19 = completionCopy;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_195A4E0C0;
      v14[3] = &unk_1E743F138;
      v14[4] = self;
      v15 = v19;
      sub_195A4CBB0(v13, v16, v14);
    }

    else
    {
      [(IDSFirewall *)self removeAllEntries:completionCopy];
      entriesCopy = v12;
    }
  }

  else
  {
    if (v10)
    {
      *buf = 136315138;
      v21 = "[IDSFirewall replaceAllEntriesWithEntries:withCompletion:]";
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
    }
  }
}

- (void)currentDonatedEntries:(id)entries
{
  v16 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  queue = self->_queue;
  v6 = +[IDSLogging IDSService];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v7)
    {
      service = self->_service;
      *buf = 138412290;
      v15 = service;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall currentEntries for service %@", buf, 0xCu);
    }

    v9 = self->_service;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195A4E43C;
    v12[3] = &unk_1E743FE88;
    v12[4] = self;
    v13 = entriesCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A4E5C4;
    v10[3] = &unk_1E743FE60;
    v10[4] = self;
    v11 = v13;
    sub_195A4E354(v9, v12, v10);

    v6 = v13;
  }

  else if (v7)
  {
    *buf = 136315138;
    v15 = "[IDSFirewall currentDonatedEntries:]";
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }
}

- (void)currentEntries:(id)entries
{
  v16 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  queue = self->_queue;
  v6 = +[IDSLogging IDSService];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v7)
    {
      service = self->_service;
      *buf = 138412290;
      v15 = service;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall currentEntries for service %@", buf, 0xCu);
    }

    v9 = self->_service;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195A4E884;
    v12[3] = &unk_1E743FE88;
    v12[4] = self;
    v13 = entriesCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A4EA0C;
    v10[3] = &unk_1E743FE60;
    v10[4] = self;
    v11 = v13;
    sub_195A4E354(v9, v12, v10);

    v6 = v13;
  }

  else if (v7)
  {
    *buf = 136315138;
    v15 = "[IDSFirewall currentEntries:]";
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }
}

- (void)removeAllDonatedEntries:(id)entries
{
  v16 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  queue = self->_queue;
  v6 = +[IDSLogging IDSService];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v7)
    {
      service = self->_service;
      *buf = 138412290;
      v15 = service;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ removeAllDonatedEntries", buf, 0xCu);
    }

    v9 = self->_service;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195A4ECCC;
    v12[3] = &unk_1E743FE88;
    v12[4] = self;
    v13 = entriesCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A4EE28;
    v10[3] = &unk_1E743F138;
    v10[4] = self;
    v11 = v13;
    sub_195A4CBB0(v9, v12, v10);

    v6 = v13;
  }

  else if (v7)
  {
    *buf = 136315138;
    v15 = "[IDSFirewall removeAllDonatedEntries:]";
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }
}

- (void)removeAllEntries:(id)entries
{
  v16 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  queue = self->_queue;
  v6 = +[IDSLogging IDSService];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v7)
    {
      service = self->_service;
      *buf = 138412290;
      v15 = service;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ removeAllEntries", buf, 0xCu);
    }

    v9 = self->_service;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195A4F0BC;
    v12[3] = &unk_1E743FE88;
    v12[4] = self;
    v13 = entriesCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A4F218;
    v10[3] = &unk_1E743F138;
    v10[4] = self;
    v11 = v13;
    sub_195A4CBB0(v9, v12, v10);

    v6 = v13;
  }

  else if (v7)
  {
    *buf = 136315138;
    v15 = "[IDSFirewall removeAllEntries:]";
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }
}

- (void)recentlyBlockedEntries:(id)entries
{
  v16 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  queue = self->_queue;
  v6 = +[IDSLogging IDSService];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v7)
    {
      service = self->_service;
      *buf = 138412290;
      v15 = service;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall recentlyBlockedEntries for service %@", buf, 0xCu);
    }

    v9 = self->_service;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195A4F4AC;
    v12[3] = &unk_1E743FE88;
    v12[4] = self;
    v13 = entriesCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A4F634;
    v10[3] = &unk_1E743FE60;
    v10[4] = self;
    v11 = v13;
    sub_195A4E354(v9, v12, v10);

    v6 = v13;
  }

  else if (v7)
  {
    *buf = 136315138;
    v15 = "[IDSFirewall recentlyBlockedEntries:]";
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  service = [(IDSFirewall *)self service];
  queue = [(IDSFirewall *)self queue];
  impactedServiceIdentifiers = [(IDSFirewall *)self impactedServiceIdentifiers];
  v7 = [v3 stringWithFormat:@"<IDSFirewall %p>: Service %@ Queue %@ ImpactedServices %@", self, service, queue, impactedServiceIdentifiers];

  return v7;
}

- (id)_removeInvalidEntries:(id)entries
{
  v22 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = entriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 uri];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 uri];
          prefixedURI = [v13 prefixedURI];

          if (prefixedURI)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];

  return v15;
}

@end
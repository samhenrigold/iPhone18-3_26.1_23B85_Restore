@interface ECIMAPAccount
- (BOOL)compactWhenClosingMailboxes;
- (BOOL)hasServerDefinedAllMailMailbox;
- (BOOL)hasServerDefinedArchiveMailbox;
- (BOOL)hasServerDefinedDraftsMailbox;
- (BOOL)hasServerDefinedJunkMailbox;
- (BOOL)hasServerDefinedSentMailbox;
- (BOOL)hasServerDefinedTrashMailbox;
- (BOOL)ignoreServerDefinedArchiveMailbox;
- (BOOL)ignoreServerDefinedDraftsMailbox;
- (BOOL)ignoreServerDefinedJunkMailbox;
- (BOOL)ignoreServerDefinedSentMailbox;
- (BOOL)ignoreServerDefinedTrashMailbox;
- (BOOL)needsGmailLablesCleanup;
- (BOOL)queriedUserToSetPathPrefix;
- (BOOL)shouldUseGmailLabelStores;
- (BOOL)shouldUseGmailLabelStoresIsSet;
- (id)_hostnameFromParentAccount:(id)account;
- (id)portNumberObject;
- (id)usesSSLObject;
- (int64_t)daysBetweenSyncs;
- (void)setCompactWhenClosingMailboxes:(BOOL)mailboxes;
- (void)setDaysBetweenSyncs:(int64_t)syncs;
- (void)setHasServerDefinedAllMailMailbox:(BOOL)mailbox;
- (void)setHasServerDefinedArchiveMailbox:(BOOL)mailbox;
- (void)setHasServerDefinedDraftsMailbox:(BOOL)mailbox;
- (void)setHasServerDefinedJunkMailbox:(BOOL)mailbox;
- (void)setHasServerDefinedSentMailbox:(BOOL)mailbox;
- (void)setHasServerDefinedTrashMailbox:(BOOL)mailbox;
- (void)setIgnoreServerDefinedArchiveMailbox:(BOOL)mailbox;
- (void)setIgnoreServerDefinedDraftsMailbox:(BOOL)mailbox;
- (void)setIgnoreServerDefinedJunkMailbox:(BOOL)mailbox;
- (void)setIgnoreServerDefinedSentMailbox:(BOOL)mailbox;
- (void)setIgnoreServerDefinedTrashMailbox:(BOOL)mailbox;
- (void)setNeedsGmailLablesCleanup:(BOOL)cleanup;
- (void)setQueriedUserToSetPathPrefix:(BOOL)prefix;
- (void)setShouldUseGmailLabelStores:(BOOL)stores;
@end

@implementation ECIMAPAccount

- (BOOL)compactWhenClosingMailboxes
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"CompactWhenClosingMailboxes"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setCompactWhenClosingMailboxes:(BOOL)mailboxes
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailboxes];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (int64_t)daysBetweenSyncs
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"DaysBetweenSyncs"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setDaysBetweenSyncs:(int64_t)syncs
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:syncs];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)queriedUserToSetPathPrefix
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"QueriedUserToSetPathPrefix"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setQueriedUserToSetPathPrefix:(BOOL)prefix
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:prefix];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)shouldUseGmailLabelStores
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"ShouldUseGmailLabelStores"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setShouldUseGmailLabelStores:(BOOL)stores
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:stores];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)shouldUseGmailLabelStoresIsSet
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"ShouldUseGmailLabelStores"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)needsGmailLablesCleanup
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"NeedsGmailLabelsCleanup"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setNeedsGmailLablesCleanup:(BOOL)cleanup
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:cleanup];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)hasServerDefinedAllMailMailbox
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"HasServerDefinedAllMailMailbox"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setHasServerDefinedAllMailMailbox:(BOOL)mailbox
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailbox];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)hasServerDefinedArchiveMailbox
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"HasServerDefinedArchiveMailbox"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setHasServerDefinedArchiveMailbox:(BOOL)mailbox
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailbox];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)hasServerDefinedDraftsMailbox
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"HasServerDefinedDraftsMailbox"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setHasServerDefinedDraftsMailbox:(BOOL)mailbox
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailbox];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)hasServerDefinedJunkMailbox
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"HasServerDefinedJunkMailbox"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setHasServerDefinedJunkMailbox:(BOOL)mailbox
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailbox];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)hasServerDefinedSentMailbox
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"HasServerDefinedSentMailbox"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setHasServerDefinedSentMailbox:(BOOL)mailbox
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailbox];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)hasServerDefinedTrashMailbox
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"HasServerDefinedTrashMailbox"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setHasServerDefinedTrashMailbox:(BOOL)mailbox
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailbox];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)ignoreServerDefinedArchiveMailbox
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"IgnoreServerDefinedArchiveMailbox"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setIgnoreServerDefinedArchiveMailbox:(BOOL)mailbox
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailbox];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)ignoreServerDefinedDraftsMailbox
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"IgnoreServerDefinedDraftsMailbox"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setIgnoreServerDefinedDraftsMailbox:(BOOL)mailbox
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailbox];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)ignoreServerDefinedJunkMailbox
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"IgnoreServerDefinedJunkMailbox"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setIgnoreServerDefinedJunkMailbox:(BOOL)mailbox
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailbox];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)ignoreServerDefinedSentMailbox
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"IgnoreServerDefinedSentMailbox"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setIgnoreServerDefinedSentMailbox:(BOOL)mailbox
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailbox];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (BOOL)ignoreServerDefinedTrashMailbox
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"IgnoreServerDefinedTrashMailbox"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setIgnoreServerDefinedTrashMailbox:(BOOL)mailbox
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mailbox];
  [ECAccount setDataClassProperty:"setDataClassProperty:forKey:" forKey:?];
}

- (id)_hostnameFromParentAccount:(id)account
{
  v3 = [account propertiesForDataclass:*MEMORY[0x277CB9150]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CB8AD0]];

  return v4;
}

- (id)portNumberObject
{
  v12.receiver = self;
  v12.super_class = ECIMAPAccount;
  portNumberObject = [(ECAccount *)&v12 portNumberObject];
  if (!portNumberObject)
  {
    systemAccount = [(ECAccount *)self systemAccount];
    parentAccount = [systemAccount parentAccount];

    v6 = [parentAccount propertiesForDataclass:*MEMORY[0x277CB9150]];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CB8AD8]];

    if (v7)
    {
      standardPorts = [(ECAccount *)self standardPorts];
      if ([standardPorts containsObject:v7])
      {
      }

      else
      {
        standardSSLPorts = [(ECAccount *)self standardSSLPorts];
        v10 = [standardSSLPorts containsObject:v7];

        if ((v10 & 1) == 0)
        {
          portNumberObject = v7;
          goto LABEL_7;
        }
      }
    }

    portNumberObject = 0;
LABEL_7:
  }

  return portNumberObject;
}

- (id)usesSSLObject
{
  v9.receiver = self;
  v9.super_class = ECIMAPAccount;
  usesSSLObject = [(ECAccount *)&v9 usesSSLObject];
  if (!usesSSLObject)
  {
    systemAccount = [(ECAccount *)self systemAccount];
    parentAccount = [systemAccount parentAccount];

    v6 = [parentAccount propertiesForDataclass:*MEMORY[0x277CB9150]];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CB8AE0]];

    if ([v7 BOOLValue])
    {
      usesSSLObject = v7;
    }

    else
    {
      usesSSLObject = 0;
    }
  }

  return usesSSLObject;
}

@end
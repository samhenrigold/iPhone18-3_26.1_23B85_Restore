@interface SGRealtimeSuggestionsTuple
- (id)combinedSuggestions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)suggestionsCount;
@end

@implementation SGRealtimeSuggestionsTuple

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_msgSend_count(self->_contacts);
  v5 = objc_msgSend_count(self->_events);
  v6 = objc_msgSend_count(self->_reminders);
  v7 = objc_msgSend_count(self->_deliveries);
  v8 = objc_msgSend_count(self->_invalidatedIdentifiers);
  v9 = objc_msgSend_count(self->_walletOrders);
  v10 = [v3 initWithFormat:@"<SGRealtimeSuggestionsTuple c:%tu e:%tu r:%tu d:%tu i:%tu o:%tu p:%tu>", v4, v5, v6, v7, v8, v9, objc_msgSend_count(self->_walletPasses)];

  return v10;
}

- (id)combinedSuggestions
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_contacts)
  {
    [v3 addObjectsFromArray:?];
  }

  if (self->_events)
  {
    [v4 addObjectsFromArray:?];
  }

  if (self->_reminders)
  {
    [v4 addObjectsFromArray:?];
  }

  if (self->_deliveries)
  {
    [v4 addObjectsFromArray:?];
  }

  if (self->_walletOrders)
  {
    [v4 addObjectsFromArray:?];
  }

  if (self->_walletPasses)
  {
    [v4 addObjectsFromArray:?];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setContacts:self->_contacts];
  [v4 setEvents:self->_events];
  [v4 setReminders:self->_reminders];
  [v4 setDeliveries:self->_deliveries];
  [v4 setInvalidatedIdentifiers:self->_invalidatedIdentifiers];
  [v4 setWalletOrders:self->_walletOrders];
  [v4 setWalletPasses:self->_walletPasses];
  return v4;
}

- (unint64_t)suggestionsCount
{
  contacts = [(SGRealtimeSuggestionsTuple *)self contacts];
  v4 = objc_msgSend_count(contacts);
  events = [(SGRealtimeSuggestionsTuple *)self events];
  v6 = objc_msgSend_count(events) + v4;
  reminders = [(SGRealtimeSuggestionsTuple *)self reminders];
  v8 = objc_msgSend_count(reminders);
  deliveries = [(SGRealtimeSuggestionsTuple *)self deliveries];
  v10 = v6 + v8 + objc_msgSend_count(deliveries);
  walletOrders = [(SGRealtimeSuggestionsTuple *)self walletOrders];
  v12 = objc_msgSend_count(walletOrders);
  walletPasses = [(SGRealtimeSuggestionsTuple *)self walletPasses];
  v14 = v12 + objc_msgSend_count(walletPasses);

  return v10 + v14;
}

@end
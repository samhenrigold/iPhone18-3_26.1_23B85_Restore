@interface CalAssistantGetDefaultCalendar
- (id)eventStore;
- (void)performWithCompletion:(id)completion;
- (void)setEventStore:(id)store;
@end

@implementation CalAssistantGetDefaultCalendar

- (id)eventStore
{
  eventStore = self->_eventStore;
  if (!eventStore)
  {
    v4 = objc_msgSend__ca_eventStoreWithError_(MEMORY[0x277CC5A40], a2, 0);
    v5 = self->_eventStore;
    self->_eventStore = v4;

    eventStore = self->_eventStore;
  }

  return eventStore;
}

- (void)setEventStore:(id)store
{
  storeCopy = store;
  if (self->_eventStore != storeCopy)
  {
    v6 = storeCopy;
    objc_storeStrong(&self->_eventStore, store);
    storeCopy = v6;
  }
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_2334B11EC(completionCopy, v5);
  v8 = objc_msgSend_eventStore(self, v6, v7);
  v11 = objc_msgSend_acquireDefaultCalendarForNewEvents(v8, v9, v10);

  v14 = objc_msgSend_source(v11, v12, v13);
  v17 = objc_msgSend_externalID(v14, v15, v16);
  v20 = objc_msgSend_title(v14, v18, v19);
  v23 = objc_msgSend_sourceType(v14, v21, v22) != 0;
  v24 = objc_alloc_init(MEMORY[0x277D471E0]);
  objc_msgSend_setAccountIdentifier_(v24, v25, v17);
  v27 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v26, v23);
  objc_msgSend_setRemote_(v24, v28, v27);

  objc_msgSend_setStrict_(v24, v29, 0);
  objc_msgSend_setAccountName_(v24, v30, v20);
  v31 = objc_alloc(MEMORY[0x277D471C0]);
  v36 = objc_msgSend_initWithAceCalendarSource_(v31, v32, v24);
  v35 = objc_msgSend_dictionary(v36, v33, v34);
  completionCopy[2](completionCopy, v35);
}

@end
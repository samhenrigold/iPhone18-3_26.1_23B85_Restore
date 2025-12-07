@interface CalAssistantEventDelete
- (id)_deleteEvent:(id)event;
- (id)_validateEvent:(id)event;
- (id)eventStore;
- (void)performWithCompletion:(id)completion;
- (void)setEventStore:(id)store;
@end

@implementation CalAssistantEventDelete

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
  sub_2334B11EC(v6, v7);
  v8 = qword_27DE0DD38;
  if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B4C94(v8);
  }

  v9 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
  {
    sub_2334B4D24(v9);
  }

  v12 = objc_msgSend_identifier(self, v10, v11);
  v16 = objc_msgSend__validateEvent_(self, v13, v12);
  if (!v16)
  {
    v16 = objc_msgSend__deleteEvent_(self, v14, v12);
  }

  v17 = objc_msgSend_dictionary(v16, v14, v15);
  completionCopy[2](completionCopy, v17);
}

- (id)_validateEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = objc_msgSend_identifier(eventCopy, v6, v7);

    if (v8)
    {
      v11 = 0;
      goto LABEL_15;
    }

    sub_2334B11EC(v9, v10);
    v15 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B4F5C(v15);
    }

    v16 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
    {
      sub_2334B4FEC(v16);
    }

    v14 = @"No Event ID was specified";
  }

  else
  {
    sub_2334B11EC(isKindOfClass, v6);
    v12 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B4DC8(v12, self, eventCopy);
    }

    v13 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
    {
      sub_2334B4E90(v13, self, eventCopy);
    }

    v14 = @"Expected SACalendarEvent object.";
  }

  v17 = objc_alloc(MEMORY[0x277D47208]);
  v11 = objc_msgSend_initWithReason_(v17, v18, v14);
LABEL_15:

  return v11;
}

- (id)_deleteEvent:(id)event
{
  eventCopy = event;
  v7 = objc_msgSend_identifier(eventCopy, v5, v6);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v8, v7);

    v7 = v10;
  }

  v11 = objc_msgSend_eventStore(self, v8, v9);
  v13 = objc_msgSend__eventWithURI_checkValid_(v11, v12, v7, 1);

  if (!v13)
  {
    sub_2334B11EC(v14, v15);
    v39 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5360(v39);
    }

    v40 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
    {
      sub_2334B53F0(v40);
    }

    v41 = objc_alloc(MEMORY[0x277D47208]);
    v43 = objc_msgSend_initWithReason_(v41, v42, @"Event not found");
    goto LABEL_21;
  }

  isEditable = objc_msgSend_isEditable(v13, v15, v16);
  if ((isEditable & 1) == 0)
  {
    sub_2334B11EC(isEditable, v18);
    v44 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5090(v44);
    }

    v45 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5120(v45);
    }

    v46 = objc_alloc(MEMORY[0x277D47208]);
    v43 = objc_msgSend_initWithReason_(v46, v47, @"Can't delete a read only event.");
LABEL_21:
    v38 = v43;
    goto LABEL_24;
  }

  v20 = objc_msgSend_includeRecurrences(eventCopy, v18, v19);
  v23 = objc_msgSend_BOOLValue(v20, v21, v22);

  v26 = objc_msgSend_eventStore(self, v24, v25);
  v49 = 0;
  objc_msgSend_removeEvent_span_commit_error_(v26, v27, v13, v23, 1, &v49);
  v28 = v49;

  if (v28)
  {
    sub_2334B11EC(v29, v30);
    v31 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B51C4(v31, self, v28);
    }

    v32 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5294(v32, self, v28);
    }

    v33 = objc_alloc(MEMORY[0x277D47208]);
    v36 = objc_msgSend_localizedDescription(v28, v34, v35);
    v38 = objc_msgSend_initWithReason_(v33, v37, v36);
  }

  else
  {
    v38 = objc_alloc_init(MEMORY[0x277D472B0]);
  }

LABEL_24:

  return v38;
}

@end
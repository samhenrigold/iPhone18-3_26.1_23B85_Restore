@interface XRMobileAgent
+ (void)initialize;
- (id)activateUsingCompletionOperationAtStop:(id)stop activationTicket:(id)ticket;
- (void)__park;
- (void)activateAtStop:(id)stop activationTicket:(id)ticket activationQoS:(unsigned int)s finalDestination:(id)destination finalTicket:(id)finalTicket;
- (void)executeStopOnItinerary:(id)itinerary;
- (void)goodbye;
- (void)hello;
@end

@implementation XRMobileAgent

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_opt_new();
    v3 = qword_27EE869F8;
    qword_27EE869F8 = v2;

    v4 = objc_opt_new();
    v5 = qword_27EE86A00;
    qword_27EE86A00 = v4;

    if (objc_msgSend_internalSignposts(XRFeatureFlag, v6, v7, v8, v9))
    {
      qword_27EE86478 = os_log_create("com.apple.dt.utilities", "Mobile Agent");

      MEMORY[0x2821F96F8]();
    }
  }
}

- (void)activateAtStop:(id)stop activationTicket:(id)ticket activationQoS:(unsigned int)s finalDestination:(id)destination finalTicket:(id)finalTicket
{
  v9 = *&s;
  stopCopy = stop;
  ticketCopy = ticket;
  destinationCopy = destination;
  finalTicketCopy = finalTicket;
  if (!stopCopy)
  {
    sub_2480B3F00(a2, self, v15, v16, v17);
  }

  if (self->_itinerary)
  {
    sub_2480B3F7C();
  }

  v19 = objc_opt_new();
  itinerary = self->_itinerary;
  self->_itinerary = v19;

  objc_msgSend_setFinalDestination_(self->_itinerary, v21, destinationCopy, v22, v23);
  objc_msgSend_setFinalDestinationTicket_(self->_itinerary, v24, finalTicketCopy, v25, v26);
  objc_msgSend_setNextStop_mode_ticket_desiredQoS_(self->_itinerary, v27, stopCopy, @"Activating", ticketCopy, v9);
  objc_msgSend_goodbye(self, v28, v29, v30, v31);
}

- (void)__park
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = qword_27EE86478;
  v4 = os_signpost_id_make_with_pointer(qword_27EE86478, self);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      mode = self->_mode;
      v9 = 138412290;
      v10 = mode;
      _os_signpost_emit_with_name_impl(&dword_248087000, v3, OS_SIGNPOST_EVENT, v5, "Mobile Agent Parked", "Parked in mode %@", &v9, 0xCu);
    }
  }

  ticket = self->_ticket;
  self->_ticket = 0;

  itinerary = self->_itinerary;
  self->_itinerary = 0;

  self->_movementType = 0;
}

- (void)executeStopOnItinerary:(id)itinerary
{
  itineraryCopy = itinerary;
  v8 = objc_msgSend_mode(self, v4, v5, v6, v7);
  v12 = v8;
  if (v8 != @"Activating" && (v8 == @"Failed" || v8 == @"Finished"))
  {
    objc_msgSend_finishedWithMode_(itineraryCopy, v9, v8, v10, v11);
  }
}

- (void)hello
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  movementType = self->_movementType;
  if ((movementType - 1) >= 2)
  {
    if (!movementType)
    {
      abort();
    }
  }

  else
  {
    v5 = qword_27EE86478;
    v6 = os_signpost_id_make_with_pointer(qword_27EE86478, self);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        v12 = objc_msgSend_agentDiagnosticsName(self, v8, v9, v10, v11);
        mode = self->_mode;
        v14 = self->_movementType;
        v33 = 138412802;
        v34 = v12;
        v35 = 2112;
        v36 = mode;
        v37 = 1024;
        v38 = v14;
        _os_signpost_emit_with_name_impl(&dword_248087000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Mobile Agent Exec", "Agent %@ executing mode %@.  Movement type is %d", &v33, 0x1Cu);
      }
    }

    objc_msgSend_executeStopOnItinerary_(self, v15, self->_itinerary, v16, v17);
    v18 = qword_27EE86478;
    v19 = os_signpost_id_make_with_pointer(qword_27EE86478, self);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = v19;
      if (os_signpost_enabled(v18))
      {
        v25 = objc_msgSend_nextMovementType(self, v21, v22, v23, v24);
        v33 = 67109120;
        LODWORD(v34) = v25;
        _os_signpost_emit_with_name_impl(&dword_248087000, v18, OS_SIGNPOST_INTERVAL_END, v20, "Mobile Agent Exec", "Finished with next movement type %d", &v33, 8u);
      }
    }

    if ((objc_msgSend_updated(self->_itinerary, v26, v27, v28, v29) & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2480B3FA8(self, &self->_itinerary, v30, v31, v32);
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)goodbye
{
  if (self->_movementType == 3)
  {
    objc_msgSend_deactivated(self, a2, v2, v3, v4);

    MEMORY[0x2821F9670](self, sel___park, v6, v7, v8);
  }

  else
  {
    itinerary = self->_itinerary;

    objc_msgSend__visitNextStop_(itinerary, a2, self, v3, v4);
  }
}

- (id)activateUsingCompletionOperationAtStop:(id)stop activationTicket:(id)ticket
{
  ticketCopy = ticket;
  stopCopy = stop;
  v9 = objc_opt_new();
  if (stopCopy)
  {
    objc_msgSend_activateAtStop_activationTicket_finalDestination_finalTicket_(self, v8, stopCopy, ticketCopy, qword_27EE86A00, v9);
  }

  else
  {
    objc_msgSend_activateAtStop_activationTicket_finalDestination_finalTicket_(self, v8, qword_27EE869F8, ticketCopy, qword_27EE86A00, v9);
  }

  return v9;
}

@end
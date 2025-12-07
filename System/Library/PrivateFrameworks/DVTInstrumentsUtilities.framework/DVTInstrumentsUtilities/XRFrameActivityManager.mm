@interface XRFrameActivityManager
+ (void)initialize;
- (XRFrameActivityManager)init;
- (XRFrameActivityManager)initWithRing:(id)ring;
- (id).cxx_construct;
- (id)scheduleActivityAsOperation:(id)operation;
- (void)_acquiredMinorFrame:(unsigned __int8)frame;
- (void)_reevaluateArrivingAgent:(id)agent;
- (void)_yieldingMinorFrame:(unsigned __int8)frame;
- (void)dealloc;
- (void)setupVisitDuringMinorFrame:(id)frame agent:(id)agent mode:(id)mode ticket:(id)ticket;
@end

@implementation XRFrameActivityManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v6 = objc_msgSend_internalSignposts(XRFeatureFlag, v2, v3, v4, v5);
    byte_27EE869B8 = v6;
    if (v6)
    {
      qword_27EE863B0 = sub_2480A8210(v6);

      MEMORY[0x2821F96F8]();
    }
  }
}

- (XRFrameActivityManager)initWithRing:(id)ring
{
  ringCopy = ring;
  v20.receiver = self;
  v20.super_class = XRFrameActivityManager;
  if ([(XRFrameActivityManager *)&v20 init])
  {
    v5 = objc_opt_class();
    objc_msgSend__establishesAffinity(v5, v6, v7, v8, v9);
    v10 = objc_opt_class();
    objc_msgSend_enableConcurrentActivities(v10, v11, v12, v13, v14);
    if (ringCopy)
    {
      objc_msgSend__parent(ringCopy, v15, v16, v17, v18);
    }

    sub_2480A14C4();
  }

  return 0;
}

- (XRFrameActivityManager)init
{
  v3.receiver = self;
  v3.super_class = XRFrameActivityManager;
  return [(XRFrameActivityManager *)&v3 init];
}

- (void)dealloc
{
  ptr = self->_managerImpl.__ptr_;
  if (ptr)
  {
    sub_2480A9030(ptr, 0);
  }

  v4 = self->_secondTierManagerImpl.__ptr_;
  if (v4 && v4 != self->_managerImpl.__ptr_)
  {
    sub_2480A9030(v4, 0);
  }

  v5.receiver = self;
  v5.super_class = XRFrameActivityManager;
  [(XRFrameActivityManager *)&v5 dealloc];
}

- (id)scheduleActivityAsOperation:(id)operation
{
  operationCopy = operation;
  v5 = [XRFrameActivityBlockAgent alloc];
  v9 = objc_msgSend_initWithBlock_(v5, v6, operationCopy, v7, v8);
  objc_msgSend_activateAtStop_activationTicket_finalDestination_finalTicket_(v9, v10, self, 0, 0, 0);
  v15 = objc_msgSend_operationRepresentation(v9, v11, v12, v13, v14);

  return v15;
}

- (void)setupVisitDuringMinorFrame:(id)frame agent:(id)agent mode:(id)mode ticket:(id)ticket
{
  frameCopy = frame;
  agentCopy = agent;
  modeCopy = mode;
  ticketCopy = ticket;
  if ((objc_msgSend_holdsItinerary_(agentCopy, v14, frameCopy, v15, v16) & 1) == 0)
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18, v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"XRFrameActivityManager.mm", 164, @"Invalid parameter not satisfying: %@", @"[agent holdsItinerary:itinerary]");
  }

  objc_msgSend_setNextStop_mode_ticket_(frameCopy, v17, self, modeCopy, ticketCopy);
}

- (void)_reevaluateArrivingAgent:(id)agent
{
  agentCopy = agent;
  v9 = objc_msgSend_desiredQoS(agentCopy, v5, v6, v7, v8);
  v10 = 24;
  if (v9 > 0x18)
  {
    v10 = 8;
  }

  v11 = *(&self->super.isa + v10);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2480A109C;
  v13[3] = &unk_278EFC288;
  v13[4] = self;
  v12 = agentCopy;
  v14 = v12;
  sub_2480A8B28(v11, v13);
}

- (void)_acquiredMinorFrame:(unsigned __int8)frame
{
  frameCopy = frame;
  v16 = *MEMORY[0x277D85DE8];
  self->_currentSlot = frame;
  v5 = qword_27EE863B0;
  v6 = v5;
  ringSignpostID = self->_ringSignpostID;
  if (ringSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v15[0] = 67109120;
    v15[1] = objc_msgSend_agentStopDiagnosticsTypeCode(self, v8, v9, v10, v11);
    _os_signpost_emit_with_name_impl(&dword_248087000, v6, OS_SIGNPOST_INTERVAL_BEGIN, ringSignpostID, "Manager Active", "Stop kind: %d", v15, 8u);
  }

  objc_msgSend_enteringMinorFrame_(self, v12, frameCopy, v13, v14);
}

- (void)_yieldingMinorFrame:(unsigned __int8)frame
{
  frameCopy = frame;
  v16 = *MEMORY[0x277D85DE8];
  v5 = qword_27EE863B0;
  v6 = v5;
  ringSignpostID = self->_ringSignpostID;
  if (ringSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v15[0] = 67109120;
    v15[1] = objc_msgSend_agentStopDiagnosticsTypeCode(self, v8, v9, v10, v11);
    _os_signpost_emit_with_name_impl(&dword_248087000, v6, OS_SIGNPOST_INTERVAL_END, ringSignpostID, "Manager Active", "Stop kind: %d", v15, 8u);
  }

  objc_msgSend_yieldingMinorFrame_(self, v12, frameCopy, v13, v14);
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end
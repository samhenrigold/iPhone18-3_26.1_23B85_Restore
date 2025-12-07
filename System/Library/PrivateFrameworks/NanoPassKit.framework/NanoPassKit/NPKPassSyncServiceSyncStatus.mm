@interface NPKPassSyncServiceSyncStatus
- (BOOL)shouldSyncWithCurrentIncomingChange:(id)change currentOutgoingChange:(id)outgoingChange currentDate:(id)date;
- (void)reset;
@end

@implementation NPKPassSyncServiceSyncStatus

- (BOOL)shouldSyncWithCurrentIncomingChange:(id)change currentOutgoingChange:(id)outgoingChange currentDate:(id)date
{
  v46 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  outgoingChangeCopy = outgoingChange;
  dateCopy = date;
  v12 = pk_Sync_log(dateCopy);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Sync_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      lastKnownIncomingChange = self->_lastKnownIncomingChange;
      incomingChangeDate = self->_incomingChangeDate;
      lastKnownOutgoingChange = self->_lastKnownOutgoingChange;
      outgoingChangeDate = self->_outgoingChangeDate;
      v35 = 138413570;
      *v36 = changeCopy;
      *&v36[8] = 2112;
      v37 = lastKnownIncomingChange;
      v38 = 2112;
      v39 = incomingChangeDate;
      v40 = 2112;
      v41 = outgoingChangeCopy;
      v42 = 2112;
      v43 = lastKnownOutgoingChange;
      v44 = 2112;
      v45 = outgoingChangeDate;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Evaluating whether to sync now\n\tCurrent incoming change: %@\n\tPrevious incoming change: %@\n\tPrevious incoming change date: %@\n\tCurrent outgoing change: %@\n\tPrevious outgoing change: %@\n\tPrevious outgoing change date: %@", &v35, 0x3Eu);
    }
  }

  v20 = self->_lastKnownIncomingChange;
  if (!changeCopy)
  {
    self->_lastKnownIncomingChange = 0;

    v23 = self->_incomingChangeDate;
    self->_incomingChangeDate = 0;

    goto LABEL_11;
  }

  if (PKEqualObjects())
  {
    v21 = self->_incomingChangeDate;
    if (v21)
    {
      [(NSDate *)v21 timeIntervalSinceDate:dateCopy];
      if (fabs(v22) < 60.0)
      {
        goto LABEL_13;
      }
    }

LABEL_11:
    v24 = 1;
    goto LABEL_14;
  }

  objc_storeStrong(&self->_lastKnownIncomingChange, change);
  objc_storeStrong(&self->_incomingChangeDate, date);
LABEL_13:
  v24 = 0;
LABEL_14:
  v25 = self->_lastKnownOutgoingChange;
  if (!outgoingChangeCopy)
  {
    self->_lastKnownOutgoingChange = 0;

    v28 = self->_outgoingChangeDate;
    self->_outgoingChangeDate = 0;

    goto LABEL_20;
  }

  if (PKEqualObjects())
  {
    v26 = self->_outgoingChangeDate;
    if (v26)
    {
      v26 = [(NSDate *)v26 timeIntervalSinceDate:dateCopy];
      if (fabs(v27) < 60.0)
      {
        goto LABEL_22;
      }
    }

LABEL_20:
    v29 = 1;
    goto LABEL_23;
  }

  objc_storeStrong(&self->_lastKnownOutgoingChange, outgoingChange);
  objc_storeStrong(&self->_outgoingChangeDate, date);
LABEL_22:
  v29 = 0;
LABEL_23:
  v30 = pk_Sync_log(v26);
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

  if (v31)
  {
    v33 = pk_Sync_log(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 67109376;
      *v36 = v24;
      *&v36[4] = 1024;
      *&v36[6] = v29;
      _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Evaluated whether to sync now\n\tIncoming change allows sync: %d\n\tOutgoing change allows sync: %d", &v35, 0xEu);
    }
  }

  return v24 & v29;
}

- (void)reset
{
  lastKnownIncomingChange = self->_lastKnownIncomingChange;
  self->_lastKnownIncomingChange = 0;

  incomingChangeDate = self->_incomingChangeDate;
  self->_incomingChangeDate = 0;

  lastKnownOutgoingChange = self->_lastKnownOutgoingChange;
  self->_lastKnownOutgoingChange = 0;

  outgoingChangeDate = self->_outgoingChangeDate;
  self->_outgoingChangeDate = 0;
}

@end
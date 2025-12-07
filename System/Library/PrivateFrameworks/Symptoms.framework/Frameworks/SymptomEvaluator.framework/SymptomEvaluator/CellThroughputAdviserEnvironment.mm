@interface CellThroughputAdviserEnvironment
- (CellThroughputAdviserEnvironment)initWithQueue:(id)queue;
- (void)dealloc;
- (void)handleEvent:(id)event forEventName:(id)name;
- (void)infoHighThroughputStateChanged:(id)changed;
- (void)monitorSDMActivations:(BOOL)activations;
@end

@implementation CellThroughputAdviserEnvironment

- (CellThroughputAdviserEnvironment)initWithQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = CellThroughputAdviserEnvironment;
  v3 = [(ThroughputAdviserEnvironment *)&v8 initWithQueue:queue];
  if (v3)
  {
    v4 = +[CellThroughputAdviser sharedInstance];
    cellThroughputAdviser = v3->_cellThroughputAdviser;
    v3->_cellThroughputAdviser = v4;

    v6 = +[CoreTelephonyShim sharedInstance];
    [v6 addDelegate:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[CoreTelephonyShim sharedInstance];
  [v3 removeDelegate:self];

  if (self->_registeredWithAnalyticsObserver)
  {
    v4 = +[SymptomsCAObserver sharedInstance];
    [v4 removeDelegate:self withQueue:0 completion:0];

    self->_registeredWithAnalyticsObserver = 0;
  }

  v5.receiver = self;
  v5.super_class = CellThroughputAdviserEnvironment;
  [(CellThroughputAdviserEnvironment *)&v5 dealloc];
}

- (void)infoHighThroughputStateChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  unsignedShortValue = [changed unsignedShortValue];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v10 = unsignedShortValue;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CellSDM: Received BB high throughput enable/disable notification: high throughput state = %{public}d", buf, 8u);
  }

  queue = [(ThroughputAdviserEnvironment *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__CellThroughputAdviserEnvironment_infoHighThroughputStateChanged___block_invoke;
  v7[3] = &unk_27898A3A0;
  v7[4] = self;
  v8 = unsignedShortValue;
  dispatch_async(queue, v7);
}

- (void)monitorSDMActivations:(BOOL)activations
{
  if (activations)
  {
    if (self->_registeredWithAnalyticsObserver)
    {
      return;
    }

    v4 = +[SymptomsCAObserver sharedInstance];
    queue = [(ThroughputAdviserEnvironment *)self queue];
    [v4 addDelegate:self forEvents:&unk_2847EEC70 withQueue:queue completion:0];

    v6 = 1;
  }

  else
  {
    if (!self->_registeredWithAnalyticsObserver)
    {
      return;
    }

    v4 = +[SymptomsCAObserver sharedInstance];
    [v4 removeDelegate:self withQueue:0 completion:0];
    v6 = 0;
  }

  self->_registeredWithAnalyticsObserver = v6;
}

- (void)handleEvent:(id)event forEventName:(id)name
{
  v51 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  nameCopy = name;
  v7 = nameCopy;
  if (nameCopy && [nameCopy isEqualToString:@"com.apple.Baseband.cellularNrSDMActivation"])
  {
    v8 = eventCopy;
    v9 = flowScrutinyLogHandle;
    if (v8)
    {
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        log = v9;
        v26 = [v8 objectForKeyedSubscript:@"timestamp"];
        v25 = [v8 objectForKeyedSubscript:@"timestamp"];
        v10 = [v8 objectForKeyedSubscript:@"subs_id"];
        v24 = [v8 objectForKeyedSubscript:@"fr1_meas_disabled"];
        v11 = [v24 BOOLValue] ^ 1;
        v22 = [v8 objectForKeyedSubscript:@"prev_fr1_meas_disabled"];
        v19 = [v22 BOOLValue] ^ 1;
        v21 = [v8 objectForKeyedSubscript:@"fr2_meas_disabled"];
        v18 = [v21 BOOLValue] ^ 1;
        v20 = [v8 objectForKeyedSubscript:@"prev_fr2_meas_disabled"];
        v17 = [v20 BOOLValue] ^ 1;
        v12 = [v8 objectForKeyedSubscript:@"trigger_cause"];
        v13 = [v8 objectForKeyedSubscript:@"ap_nr_recomm"];
        v14 = [v8 objectForKeyedSubscript:@"ap_nr_recomm_conf_factor"];
        v15 = [v8 objectForKeyedSubscript:@"is_rrc_connected"];
        v16 = [v8 objectForKeyedSubscript:@"duration_in_prev_state"];
        *buf = 138415106;
        v28 = v26;
        v29 = 2112;
        v30 = v25;
        v31 = 2112;
        v32 = v10;
        v33 = 1024;
        v34 = v11;
        v35 = 1024;
        v36 = v19;
        v37 = 1024;
        v38 = v18;
        v39 = 1024;
        v40 = v17;
        v41 = 2112;
        v42 = v12;
        v43 = 2112;
        v44 = v13;
        v45 = 2112;
        v46 = v14;
        v47 = 2112;
        v48 = v15;
        v49 = 2112;
        v50 = v16;
        _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "CellularNrSDMActivation: ap-time %@ bb-time %@ subscriber-id %@ new-fr1 %d prev-fr1 %d new-fr2 %d prev-fr2 %d trigger-cause %@ ap-recomm %@ ap-conf %@ rrc-connected %@ prev-duration %@", buf, 0x6Au);
      }
    }

    else if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Nil payload for AWD event CellularNrSDMActivation", buf, 2u);
    }
  }
}

@end
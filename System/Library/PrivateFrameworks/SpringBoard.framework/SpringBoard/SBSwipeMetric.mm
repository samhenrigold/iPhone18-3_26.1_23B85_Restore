@interface SBSwipeMetric
- (SBSwipeMetric)init;
@end

@implementation SBSwipeMetric

uint64_t __21__SBSwipeMetric_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 33)
  {
    return 0;
  }

  v4 = [a3 eventPayload];
  v5 = *(a1 + 32) + 24;
  *v5 = CGPointFromState(v4);
  *(v5 + 8) = v6;
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67648]];
  *(*(a1 + 32) + 40) = [v7 unsignedIntegerValue];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67658]];
  [v8 doubleValue];
  *(*(a1 + 32) + 48) = v9 * 1000.0;

  return 1;
}

- (SBSwipeMetric)init
{
  v16.receiver = self;
  v16.super_class = SBSwipeMetric;
  v2 = [(SBAnalyticsStateMachineEventHandler *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __21__SBSwipeMetric_init__block_invoke;
    v14[3] = &unk_2783BD218;
    v4 = v2;
    v15 = v4;
    v5 = [SBAnalyticsStateMachineEdge edgeFromState:0 transition:v14];
    [(SBAnalyticsStateMachineEventHandler *)v4 addEdge:v5];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __21__SBSwipeMetric_init__block_invoke_2;
    v12 = &unk_2783BD218;
    v6 = v4;
    v13 = v6;
    v7 = [SBAnalyticsStateMachineEdge edgeFromState:1 transition:&v9];
    [(SBAnalyticsStateMachineEventHandler *)v6 addEdge:v7, v9, v10, v11, v12];
  }

  return v3;
}

uint64_t __21__SBSwipeMetric_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  if (a2 != 34)
  {
    return 1;
  }

  v4 = [a3 eventPayload];
  v5 = CGPointFromState(v4);
  v7 = v6;
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67628]];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67638]];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67640]];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67630]];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v4 objectForKeyedSubscript:*MEMORY[0x277D67650]];
  [v19 doubleValue];
  v21 = v20;

  v22 = +[SBDefaults localDefaults];
  v23 = [v22 appSwitcherDefaults];

  v24 = [v23 bottomEdgeGestureSwipeCount];
  v25 = SBLogSystemGestureHome([v23 setBottomEdgeGestureSwipeCount:v24 + 1]);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v54 = 134217984;
    v55 = v24;
    _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_INFO, "----SWIPE BEGIN %lu----", &v54, 0xCu);
  }

  v27 = SBLogSystemGestureHome(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = NSStringFromCGPoint(*(*(a1 + 32) + 24));
    v54 = 138543362;
    v55 = v28;
    _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_INFO, "initialLocation: %{public}@", &v54, 0xCu);
  }

  v30 = SBLogSystemGestureHome(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v59.x = v5;
    v59.y = v7;
    v31 = NSStringFromCGPoint(v59);
    v54 = 138543362;
    v55 = v31;
    _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_INFO, "finalLocation: %{public}@", &v54, 0xCu);
  }

  v33 = SBLogSystemGestureHome(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = *(*(a1 + 32) + 40) - 1;
    if (v34 > 3)
    {
      v35 = @"unknown";
    }

    else
    {
      v35 = off_2783BD238[v34];
    }

    v54 = 138543362;
    v55 = v35;
    _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_INFO, "orientation: %{public}@", &v54, 0xCu);
  }

  v38 = SBLogSystemGestureHome(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    if (v9 > 3)
    {
      v39 = @"home";
    }

    else
    {
      v39 = off_2783BD258[v9];
    }

    v54 = 138543362;
    v55 = v39;
    _os_log_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_INFO, "finalAction: %{public}@", &v54, 0xCu);
  }

  v41 = SBLogSystemGestureHome(v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v54 = 134217984;
    v55 = v21;
    _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_INFO, "peakSpeed: %g", &v54, 0xCu);
  }

  v43 = SBLogSystemGestureHome(v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v54 = 134218240;
    v55 = v12;
    v56 = 2048;
    v57 = v15;
    _os_log_impl(&dword_21ED4E000, v43, OS_LOG_TYPE_INFO, "liftOffVelocity: (%g, %g)", &v54, 0x16u);
  }

  v45 = SBLogSystemGestureHome(v44);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v54 = 134217984;
    v55 = v18;
    _os_log_impl(&dword_21ED4E000, v45, OS_LOG_TYPE_INFO, "liftOffAngle: %g", &v54, 0xCu);
  }

  v47 = SBLogSystemGestureHome(v46);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = *(*(a1 + 32) + 48);
    v54 = 134217984;
    v55 = v48;
    _os_log_impl(&dword_21ED4E000, v47, OS_LOG_TYPE_INFO, "timestampDelta: %g", &v54, 0xCu);
  }

  v50 = SBLogSystemGestureHome(v49);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    [v4 timestamp];
    v54 = 134217984;
    v55 = v51;
    _os_log_impl(&dword_21ED4E000, v50, OS_LOG_TYPE_INFO, "timestamp: %g", &v54, 0xCu);
  }

  v53 = SBLogSystemGestureHome(v52);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = 134217984;
    v55 = v24;
    _os_log_impl(&dword_21ED4E000, v53, OS_LOG_TYPE_INFO, "----SWIPE END %lu----", &v54, 0xCu);
  }

  return 0;
}

@end
@interface ACHActivityTriggerGenerator
+ (unint64_t)allPossibleTriggers;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)_incrementWithInitialState:(SEL)state forGoalType:(id *)type dataProvider:(int64_t)provider goalMetHandler:(id)handler;
- (ACHActivityTriggerGenerator)initWithPauseRingsCoordinator:(id)coordinator;
- (unint64_t)_triggersForNewActivityDataWithGoalType:(int64_t)type dataProvider:(id)provider goalMetHandler:(id)handler;
@end

@implementation ACHActivityTriggerGenerator

+ (unint64_t)allPossibleTriggers
{
  v2 = ACHGoalCompletionTrigger(0);
  v3 = ACHGoalCompletionTrigger(3);
  v4 = ACHGoalCompletionTrigger(1);
  return v2 | v3 | v4 | ACHGoalCompletionTrigger(2) | 0x3C9;
}

- (ACHActivityTriggerGenerator)initWithPauseRingsCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = ACHActivityTriggerGenerator;
  v6 = [(ACHActivityTriggerGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pauseRingsCoordinator, coordinator);
  }

  return v7;
}

- (unint64_t)_triggersForNewActivityDataWithGoalType:(int64_t)type dataProvider:(id)provider goalMetHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v11 = 0uLL;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  if (providerCopy)
  {
    objc_msgSend_currentStateForGoalType_(providerCopy);
    v11 = 0uLL;
  }

  v35 = v11;
  v36 = v11;
  v33 = v11;
  v34 = v11;
  v31 = v11;
  v32 = v11;
  v29 = v11;
  v30 = v11;
  v28 = v11;
  objc_msgSend__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler_(self, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  v27[6] = v34;
  v27[7] = v35;
  v27[8] = v36;
  v27[2] = v30;
  v27[3] = v31;
  v27[4] = v32;
  v27[5] = v33;
  v27[0] = v28;
  v27[1] = v29;
  [providerCopy setNewState:v27 forGoalType:type];
  todayActivitySummary = [providerCopy todayActivitySummary];
  isPaused = [todayActivitySummary isPaused];

  if ((isPaused & 1) == 0)
  {
    if (LOBYTE(v36.f64[0]) == 1)
    {
      v16 = ACHGoalCompletionTrigger(type);
      if ([providerCopy allGoalsMetToday])
      {
        v17 = v16 | 0x40;
      }

      else
      {
        v17 = v16;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = type == 3 || type == 0;
    if (v18)
    {
      v14.f64[0] = v30.f64[0];
      if (v30.f64[0] > 2.22044605e-16)
      {
        v14 = vrndmq_f64(vdivq_f64(v29, vdupq_lane_s64(*&v30.f64[0], 0)));
        v18 = v14.f64[1] == v14.f64[0];
        v14.f64[0] = 1.0;
        v19 = v18 || v14.f64[1] <= 1.0;
        v20 = 8;
        if (v19)
        {
          v20 = 0;
        }

        v17 |= v20;
      }
    }

    switch(type)
    {
      case 1:
        v21 = 256;
        break;
      case 2:
LABEL_37:
        v15 = v17 | BYTE1(v36.f64[0]);
        goto LABEL_38;
      case 3:
        v21 = 512;
        break;
      default:
        v21 = 128;
        break;
    }

    todayActivitySummary2 = [providerCopy todayActivitySummary];
    if ([todayActivitySummary2 activityMoveMode] == 2 && -[ACHActivityTriggerGenerator _goalTypeIsMoveType:](self, "_goalTypeIsMoveType:", type))
    {
      v23 = &v35;
    }

    else
    {
      v23 = &v34.f64[1];
    }

    v24 = *v23;

    if (v29.f64[1] <= v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v21;
    }

    v17 |= v25;
    goto LABEL_37;
  }

  v15 = 0;
LABEL_38:
  objc_autoreleasePoolPop(v10);

  return v15;
}

- ($A5E8A54F69D71102DC6A95EAED28A9DA)_incrementWithInitialState:(SEL)state forGoalType:(id *)type dataProvider:(int64_t)provider goalMetHandler:(id)handler
{
  v141 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v92 = a7;
  providerCopy = provider;
  v91 = ACHGoalDisplayName(provider);
  if (![handlerCopy todayIndex])
  {
    v29 = *&type->var14;
    *&retstr->var12 = *&type->var12;
    *&retstr->var14 = v29;
    *&retstr->var16 = *&type->var16;
    v30 = *&type->var6;
    *&retstr->var4 = *&type->var4;
    *&retstr->var6 = v30;
    v31 = *&type->var10;
    *&retstr->var8 = *&type->var8;
    *&retstr->var10 = v31;
    v32 = *&type->var2;
    *&retstr->var0 = *&type->var0;
    *&retstr->var2 = v32;
    goto LABEL_61;
  }

  v123 = 0;
  v124 = &v123;
  v11 = *&type->var14;
  v133 = *&type->var12;
  v134 = v11;
  v135 = *&type->var16;
  v12 = *&type->var6;
  v129 = *&type->var4;
  v130 = v12;
  v13 = *&type->var10;
  v131 = *&type->var8;
  v132 = v13;
  v14 = *&type->var2;
  v127 = *&type->var0;
  v128 = v14;
  v126 = &unk_221E74077;
  v93 = *(&v127 + 1) - v127;
  v125 = 0xB010000000;
  if ((*(&v127 + 1) - v127 + 86399) >= 0x2A2FF)
  {
    *&v128 = 0;
  }

  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  [handlerCopy todayIndex];
  v95 = _HKActivityCacheDateComponentsFromCacheIndex();
  v15 = [hk_gregorianCalendar dateFromComponents:?];
  v16 = [hk_gregorianCalendar hk_dateBySubtractingDays:1 fromDate:v15];
  v17 = _HKCacheIndexFromDate();
  [v95 year];
  [v95 month];
  v89 = ACHDateComponentsForYearMonthDay();
  v18 = ACHStartOfFitnessWeekBeforeDateInCalendar();
  v19 = [hk_gregorianCalendar components:28 fromDate:v18];
  v77 = v16;
  v78 = v18;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  pauseRings = [features pauseRings];

  v23 = v92;
  v24 = v92[2](v92, v124[9], v124[10]);
  v25 = v23[2](v23, v124[6], v124[8]);
  v87 = v23[2](v23, v124[7], v124[8]);
  if (!pauseRings)
  {
    v83 = 0;
    ringsPausedToday = 0;
    v28 = 0;
    if (v17 >= *(v124 + 4))
    {
      v26 = *(v124 + 4);
    }

    else
    {
      v26 = v17;
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v81 = 0;
    goto LABEL_16;
  }

  ringsPausedToday = [handlerCopy ringsPausedToday];
  if (v17 >= *(v124 + 4))
  {
    v26 = *(v124 + 4);
  }

  else
  {
    v26 = v17;
  }

  pauseRingsCoordinator = [(ACHActivityTriggerGenerator *)self pauseRingsCoordinator];
  v83 = [pauseRingsCoordinator isPausedForActivitySummaryCacheIndexStart:v26 end:v17];

  v28 = ringsPausedToday;
  if (v25)
  {
    goto LABEL_15;
  }

LABEL_9:
  v81 = v87 & (ringsPausedToday ^ 1);
LABEL_16:
  if (v93 > 172799)
  {
    v33 = 1;
  }

  else
  {
    v33 = v24 ^ 1;
  }

  year = [v19 year];
  if (year == [v95 year] && (v35 = objc_msgSend(v19, "month"), v35 == objc_msgSend(v95, "month")))
  {
    v36 = [v19 day];
    v82 = v36 == [v95 day];
  }

  else
  {
    v82 = 0;
  }

  year2 = [v89 year];
  if (year2 == [v95 year] && (v38 = objc_msgSend(v89, "month"), v38 == objc_msgSend(v95, "month")))
  {
    v39 = [v89 day];
    v80 = v39 == [v95 day];
  }

  else
  {
    v80 = 0;
  }

  v40 = ACHLogAwardEngine();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    todayIndex = [handlerCopy todayIndex];
    *buf = 134217984;
    *v137 = todayIndex;
    _os_log_impl(&dword_221DDC000, v40, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Today's Index: %ld", buf, 0xCu);
  }

  v79 = v28;

  v42 = ACHLogAwardEngine();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v137 = v95;
    _os_log_impl(&dword_221DDC000, v42, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Today's Date Components: %@", buf, 0xCu);
  }

  v43 = ACHLogAwardEngine();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = @"NO";
    if (pauseRings)
    {
      v44 = @"YES";
    }

    *buf = 138412290;
    *v137 = v44;
    _os_log_impl(&dword_221DDC000, v43, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Pause Rings Feature Enabled: %@", buf, 0xCu);
  }

  v45 = ACHLogAwardEngine();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = @"NO";
    if (ringsPausedToday)
    {
      v46 = @"YES";
    }

    *buf = 138412290;
    *v137 = v46;
    _os_log_impl(&dword_221DDC000, v45, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Today is paused: %@", buf, 0xCu);
  }

  v47 = ACHLogAwardEngine();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = *(v124 + 4);
    *buf = 134217984;
    *v137 = v48;
    _os_log_impl(&dword_221DDC000, v47, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Last Checked Summary Index: %lld", buf, 0xCu);
  }

  v49 = ACHLogAwardEngine();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = @"NO";
    *buf = 134218498;
    *v137 = v26;
    if (v83)
    {
      v50 = @"YES";
    }

    *&v137[8] = 2048;
    v138 = v17;
    v139 = 2112;
    v140 = v50;
    _os_log_impl(&dword_221DDC000, v49, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Paused since last checked index (%lld -> %lld): %@", buf, 0x20u);
  }

  v51 = ACHLogAwardEngine();
  v52 = v33 & (v83 ^ 1);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v137 = v52;
    *&v137[4] = 1024;
    *&v137[6] = v82;
    LOWORD(v138) = 1024;
    *(&v138 + 2) = v80;
    _os_log_impl(&dword_221DDC000, v51, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Should Reset Streak [All, Week, Month]: [%{BOOL}d, %{BOOL}d, %{BOOL}d]", buf, 0x14u);
  }

  v76 = v52;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke;
  aBlock[3] = &unk_278492028;
  v53 = v91;
  v120 = v53;
  v121 = &v123;
  v122 = v93 / 86400;
  v84 = _Block_copy(aBlock);
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_307;
  v113[3] = &unk_278492050;
  v54 = v53;
  v114 = v54;
  v117 = &v123;
  v118 = v93 / 86400;
  v55 = v15;
  v115 = v55;
  v56 = v19;
  v116 = v56;
  v57 = _Block_copy(v113);
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_308;
  v107[3] = &unk_278492050;
  v58 = v54;
  v108 = v58;
  v111 = &v123;
  v112 = v93 / 86400;
  v59 = v55;
  v109 = v59;
  v60 = v89;
  v110 = v60;
  v61 = _Block_copy(v107);
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309;
  v104[3] = &unk_278490FE8;
  v106 = &v123;
  v105 = v58;
  v62 = _Block_copy(v104);
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_310;
  v101[3] = &unk_278492078;
  v102 = v87;
  v101[4] = &v123;
  v103 = v79;
  v63 = _Block_copy(v101);
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_2;
  v96[3] = &unk_278490980;
  v64 = handlerCopy;
  v97 = v64;
  selfCopy = self;
  v99 = &v123;
  v100 = providerCopy;
  v65 = _Block_copy(v96);
  if (v93 > 86399)
  {
    if (v76)
    {
      v84[2]();
    }

    if ((ringsPausedToday & 1) == 0)
    {
      ++*(v124 + 16);
      v65[2](v65);
    }
  }

  if (v80)
  {
    v61[2](v61);
  }

  if (v82)
  {
    v57[2](v57);
  }

  if (v81)
  {
    v62[2](v62);
  }

  v63[2](v63);
  todayIndex2 = [v64 todayIndex];
  v67 = v124;
  v68 = v124;
  *(v124 + 4) = todayIndex2;
  v69 = v68 + 4;
  v70 = v87;
  if (v87)
  {
    v70 = v81 & (ringsPausedToday ^ 1);
  }

  *(v67 + 160) = v70;
  *(v67 + 161) = (v93 - 86400) < 0x15180;
  v71 = v69[7];
  *&retstr->var12 = v69[6];
  *&retstr->var14 = v71;
  v72 = v69[3];
  *&retstr->var4 = v69[2];
  *&retstr->var6 = v72;
  v73 = v69[5];
  *&retstr->var8 = v69[4];
  *&retstr->var10 = v73;
  v74 = v69[1];
  *&retstr->var0 = *v69;
  *&retstr->var2 = v74;
  *&retstr->var16 = v69[8];

  _Block_object_dispose(&v123, 8);
LABEL_61:

  return result;
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = ACHLogAwardEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 88) = 0;
  *(*(*(a1 + 40) + 8) + 96) = 0;
  *(*(*(a1 + 40) + 8) + 104) = 0;
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_307(uint64_t a1, uint64_t a2)
{
  v3 = ACHLogAwardEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_307_cold_1();
  }

  *(*(*(a1 + 56) + 8) + 96) = 0;
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_308(uint64_t a1, uint64_t a2)
{
  v3 = ACHLogAwardEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_308_cold_1();
  }

  *(*(*(a1 + 56) + 8) + 104) = 0;
}

double __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  ++*(*(*(a1 + 40) + 8) + 88);
  ++*(*(*(a1 + 40) + 8) + 96);
  ++*(*(*(a1 + 40) + 8) + 104);
  ++*(*(*(a1 + 40) + 8) + 120);
  v3 = ACHLogAwardEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_1();
  }

  v4 = *(*v2 + 8);
  if (*(v4 + 88) > *(v4 + 112))
  {
    v5 = ACHLogAwardEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_2();
    }

    *(*(*v2 + 8) + 112) = *(*(*v2 + 8) + 88);
    v4 = *(*v2 + 8);
  }

  result = *(v4 + 64);
  if (result > *(v4 + 152))
  {
    v7 = ACHLogAwardEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_3();
    }

    v8 = *(*v2 + 8);
    result = *(v8 + 64);
    *(v8 + 152) = result;
  }

  return result;
}

uint64_t __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_310(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = *(*(result + 32) + 8);
    v2 = *(v1 + 64);
    if (v2 > *(v1 + 152) && (*(result + 41) & 1) == 0)
    {
      *(v1 + 152) = v2;
    }
  }

  return result;
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) yesterdayActivitySummary];
  if ([v2 activityMoveMode] == 2)
  {
    v3 = [*(a1 + 40) _goalTypeIsMoveType:*(a1 + 56)];

    if (v3)
    {
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 72);
      if (v5 > *(v4 + 144) + 2.22044605e-16)
      {
        *(v4 + 144) = v5;
      }

      return;
    }
  }

  else
  {
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 72);
  if (v7 > *(v6 + 136) + 2.22044605e-16)
  {
    *(v6 + 136) = v7;
  }
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_cold_1()
{
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v7 = 2114;
  v8 = v0;
  v9 = v1;
  v10 = v2;
  v11 = 2114;
  v12 = v0;
  v13 = v1;
  v14 = v3;
  v15 = v1;
  v16 = v4;
  _os_log_debug_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEBUG, "[ACHActivityTriggerGenerator] Resetting current %{public}@ streak of %ld days, current week %{public}@ streak of %ld days, and current month %{public}@ streak of %ld after advancing %ld days", v6, 0x48u);
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_307_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_221DDC000, v0, OS_LOG_TYPE_DEBUG, "[ACHActivityTriggerGenerator] Resetting current Week %{public}@ streak of %ld days after advancing %ld days. Today = %@, startOfFitnessWeekDate = %@", v1, 0x34u);
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_308_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_221DDC000, v0, OS_LOG_TYPE_DEBUG, "[ACHActivityTriggerGenerator] Resetting current Month %{public}@ streak of %ld days after advancing %ld days. Today = %@, start of month = %@", v1, 0x34u);
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x3Eu);
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_2()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_3()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end
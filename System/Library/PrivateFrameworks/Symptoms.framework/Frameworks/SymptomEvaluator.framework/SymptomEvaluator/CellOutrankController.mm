@interface CellOutrankController
+ (CellOutrankController)sharedInstance;
- (BOOL)applyPolicyDelta;
- (BOOL)removeAllPolicies;
- (BOOL)updatePolicy;
- (CellOutrankController)init;
- (double)cellOutrankIconSetDuration;
- (double)cellOutrankPossibleDuration;
- (id)getState:(BOOL)state;
- (void)_foregroundAppActivity:(id)activity uuid:(id)uuid isForeground:(BOOL)foreground;
- (void)_updateExploitNumbers;
- (void)assertFallbackForClient:(id)client process:(id)process;
- (void)assessIconState;
- (void)checkInvariants:(id)invariants;
- (void)cleanupNEPolicy;
- (void)deleteAllAssertionTrackers;
- (void)deleteAssertionTracker:(id)tracker;
- (void)didSampleFlows;
- (void)ensureMaintenanceTimer;
- (void)reportABCCase:(id)case;
- (void)restoreDefaults;
- (void)setCellInterfaceName:(id)name;
- (void)setCellOutrankEffective:(BOOL)effective;
- (void)setCellOutranksWiFi:(BOOL)fi;
- (void)setConfiguration:(id)configuration;
- (void)setCurrentUsage:(unsigned int)usage;
- (void)setQueue:(id)queue;
- (void)unassertFallbackForClient:(id)client;
@end

@implementation CellOutrankController

- (void)assessIconState
{
  v53 = *MEMORY[0x277D85DE8];
  [(CellOutrankController *)self checkInvariants:@"assessIconState entry"];
  if (![(CellOutrankController *)self cellOutranksWiFi])
  {
    if ([(FlowBasedIconAdviser *)self->_flowBasedIconAdviser flowBasedIconRecommendationValid])
    {
      if ([(FlowBasedIconAdviser *)self->_flowBasedIconAdviser flowBasedIconRecommendation])
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      if ([(CellOutrankController *)self currentUsage]!= v19)
      {
        v20 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          *buf = 136315394;
          *v48 = currentUsageString([(CellOutrankController *)self currentUsage]);
          *&v48[8] = 2080;
          v49 = currentUsageString(v19);
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "COSMCtrl assessIconState: no longer in Outrank, current usage %s -> %s", buf, 0x16u);
        }

        [(CellOutrankController *)self setCurrentUsage:v19];
      }

      cellOutrankEffective = [(CellOutrankController *)self cellOutrankEffective];
      if (cellOutrankEffective != [(FlowBasedIconAdviser *)self->_flowBasedIconAdviser flowBasedIconRecommendation])
      {
        v23 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          cellOutrankEffective2 = [(CellOutrankController *)self cellOutrankEffective];
          flowBasedIconRecommendation = [(FlowBasedIconAdviser *)self->_flowBasedIconAdviser flowBasedIconRecommendation];
          *buf = 67109376;
          *v48 = cellOutrankEffective2;
          *&v48[4] = 1024;
          *&v48[6] = flowBasedIconRecommendation;
          _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "COSMCtrl assessIconState: no longer in Outrank, cellOutrankEffective %d -> %d", buf, 0xEu);
        }

        [(CellOutrankController *)self setCellOutrankEffective:[(FlowBasedIconAdviser *)self->_flowBasedIconAdviser flowBasedIconRecommendation]];
      }
    }

    if (![(FlowBasedIconAdviser *)self->_flowBasedIconAdviser active])
    {
      v27 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "COSMCtrl assessIconState on leaving outrank, start _flowBasedIconAdviser", buf, 2u);
      }

      [(FlowBasedIconAdviser *)self->_flowBasedIconAdviser setActive:1];
    }

    return;
  }

  if (!self->_cellOutranksWiFi)
  {
    goto LABEL_15;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v3 = self->_activeApps;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = *v44;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v44 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v43 + 1) + 8 * i);
      v9 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:v8, v43];
      if ([v9 isForeground])
      {
        if ([v9 connectionCount] >= 1)
        {
          v28 = 1;
          [v9 setForegroundSessionActivity:1];
          if ([(CellOutrankController *)self cellOutrankEffective])
          {
LABEL_64:
            [(CellOutrankController *)self setCurrentUsage:v28];

            return;
          }

          v29 = outrankLogHandle;
          if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
            connectionCount = [v9 connectionCount];
            bundleName = [v9 bundleName];
            *buf = 134218498;
            *v48 = connectionCount;
            *&v48[8] = 2114;
            v49 = v8;
            v50 = 2114;
            v51 = bundleName;
            _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "COSMCtrl assessIconState: set cellOutrankEffective because of assertion count %lld on %{public}@  %{public}@", buf, 0x20u);

LABEL_61:
          }
        }

        else
        {
          if (![v9 foregroundSessionActivity])
          {
            cellIconAlwaysSetApps = self->_cellIconAlwaysSetApps;
            bundleName2 = [v9 bundleName];
            LODWORD(cellIconAlwaysSetApps) = [(NSSet *)cellIconAlwaysSetApps containsObject:bundleName2];

            if (!cellIconAlwaysSetApps)
            {
              goto LABEL_12;
            }

            v33 = outrankLogHandle;
            if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v34 = v33;
              bundleName3 = [v9 bundleName];
              *buf = 138543362;
              *v48 = bundleName3;
              _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "COSMCtrl _set cellOutrankEffective because bundle name requires icon when in outrank, %{public}@", buf, 0xCu);
            }

            v28 = 2;
            goto LABEL_63;
          }

          if ([(CellOutrankController *)self cellOutrankEffective])
          {
            v28 = 1;
            goto LABEL_64;
          }

          v41 = outrankLogHandle;
          if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v41;
            bundleName4 = [v9 bundleName];
            *buf = 138543618;
            *v48 = v8;
            *&v48[8] = 2114;
            v49 = bundleName4;
            _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "COSMCtrl assessIconState: set cellOutrankEffective because of session activity %{public}@  %{public}@", buf, 0x16u);

            goto LABEL_61;
          }
        }

        v28 = 1;
LABEL_63:
        [(CellOutrankController *)self setCellOutrankEffective:1];
        goto LABEL_64;
      }

LABEL_12:
    }

    v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_14:

LABEL_15:
  if (![(FlowBasedIconAdviser *)self->_flowBasedIconAdviser active])
  {
    v12 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "COSMCtrl assessIconState icon start _flowBasedIconAdviser", buf, 2u);
    }

    [(FlowBasedIconAdviser *)self->_flowBasedIconAdviser setActive:1];
  }

  if ([(FlowBasedIconAdviser *)self->_flowBasedIconAdviser flowBasedIconRecommendationValid])
  {
    if ([(FlowBasedIconAdviser *)self->_flowBasedIconAdviser flowBasedIconRecommendation])
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    if ([(CellOutrankController *)self currentUsage]!= v13)
    {
      flowBasedIconRecommendation2 = [(FlowBasedIconAdviser *)self->_flowBasedIconAdviser flowBasedIconRecommendation];
      v15 = outrankLogHandle;
      v16 = os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT);
      if (flowBasedIconRecommendation2)
      {
        if (v16)
        {
          v17 = v15;
          cellOutrankEffective3 = [(CellOutrankController *)self cellOutrankEffective];
          *buf = 67109120;
          *v48 = cellOutrankEffective3;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "COSMCtrl assessIconState icon background flows, state %d -> 1", buf, 8u);
        }
      }

      else if (v16)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "COSMCtrl assessIconState take down icon due to idle flows", buf, 2u);
      }

      [(CellOutrankController *)self setCellOutrankEffective:flowBasedIconRecommendation2];
      [(CellOutrankController *)self setCurrentUsage:v13];
    }

    cellOutrankEffective4 = [(CellOutrankController *)self cellOutrankEffective];
    if (cellOutrankEffective4 != [(FlowBasedIconAdviser *)self->_flowBasedIconAdviser flowBasedIconRecommendation])
    {
      v37 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        v38 = v37;
        cellOutrankEffective5 = [(CellOutrankController *)self cellOutrankEffective];
        flowBasedIconRecommendation3 = [(FlowBasedIconAdviser *)self->_flowBasedIconAdviser flowBasedIconRecommendation];
        *buf = 67109376;
        *v48 = cellOutrankEffective5;
        *&v48[4] = 1024;
        *&v48[6] = flowBasedIconRecommendation3;
        _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_ERROR, "COSMCtrl assessIconState: mismatched cellOutrankEffective %d flow checks say %d", buf, 0xEu);
      }

      [(CellOutrankController *)self reportABCCase:@"Mismatched icon states"];
    }
  }

  [(CellOutrankController *)self checkInvariants:@"assessIconState exit"];
}

- (void)_updateExploitNumbers
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = self->_activeApps;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v24;
    *&v5 = 138412290;
    v22 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:*(*(&v23 + 1) + 8 * i), v22, v23];
        if ([v9 isForeground])
        {
          if ([v9 countedAsExploitingOutrank])
          {
            v10 = outrankLogHandle;
            if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v11 = v10;
              bundleName = [v9 bundleName];
              *buf = v22;
              v28 = bundleName;
              _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "COSMCtrl _updateExploitNumbers already counted exploit %@", buf, 0xCu);
            }
          }

          else
          {
            countedAsNonExploitingOutrank = [v9 countedAsNonExploitingOutrank];
            foregroundSessionActivity = [v9 foregroundSessionActivity];
            if (!countedAsNonExploitingOutrank)
            {
              if (foregroundSessionActivity)
              {
                [v9 setCountedAsExploitingOutrank:1];
                ++self->_numAppsExploitingOutrank;
                v20 = outrankLogHandle;
                if (!os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_20;
                }

                v16 = v20;
                bundleName2 = [v9 bundleName];
                *buf = v22;
                v28 = bundleName2;
                v18 = v16;
                v19 = "COSMCtrl _updateExploitNumbers new count as exploit %@";
              }

              else
              {
                [v9 setCountedAsNonExploitingOutrank:1];
                ++self->_numAppsNonExploitingOutrank;
                v21 = outrankLogHandle;
                if (!os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_20;
                }

                v16 = v21;
                bundleName2 = [v9 bundleName];
                *buf = v22;
                v28 = bundleName2;
                v18 = v16;
                v19 = "COSMCtrl _updateExploitNumbers new count as non exploit %@";
              }

              goto LABEL_19;
            }

            if (foregroundSessionActivity)
            {
              [v9 setCountedAsNonExploitingOutrank:0];
              [v9 setCountedAsExploitingOutrank:1];
              *&self->_numAppsExploitingOutrank = vadd_s32(*&self->_numAppsExploitingOutrank, 0xFFFFFFFF00000001);
              v15 = outrankLogHandle;
              if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
              {
                v16 = v15;
                bundleName2 = [v9 bundleName];
                *buf = v22;
                v28 = bundleName2;
                v18 = v16;
                v19 = "COSMCtrl _updateExploitNumbers move from non-exploit -> exploit %@";
LABEL_19:
                _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, v19, buf, 0xCu);
              }
            }
          }
        }

LABEL_20:
      }

      v6 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
  }
}

uint64_t __47__CellOutrankController_ensureMaintenanceTimer__block_invoke_102(uint64_t a1)
{
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "COSMCtrl ensureMaintenanceTimer expiry for eviction timer", v4, 2u);
  }

  *(*(a1 + 32) + 108) = 0;
  [*(a1 + 32) applyPolicyDelta];
  return [*(a1 + 32) ensureMaintenanceTimer];
}

- (BOOL)applyPolicyDelta
{
  v111 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSMCtrl applyPolicyDelta entry", buf, 2u);
  }

  [(CellOutrankController *)self checkInvariants:@"applyPolicyDelta entry"];
  [(NSMutableDictionary *)self->_activeApps allKeys];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v102 = 0u;
  v93 = [obj countByEnumeratingWithState:&v99 objects:v110 count:16];
  if (!v93)
  {
    v81 = 0;
    goto LABEL_66;
  }

  v91 = 0;
  v7 = 0;
  v8 = *v100;
  *&v6 = 138412290;
  v86 = v6;
  v87 = *v100;
  do
  {
    v9 = 0;
    do
    {
      if (*v100 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v99 + 1) + 8 * v9);
      v11 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:v10, v86];
      v12 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v13 = v12;
        bundleName = [v11 bundleName];
        policyId = [v11 policyId];
        v16 = v9;
        isForeground = [v11 isForeground];
        foregroundSessionActivity = [v11 foregroundSessionActivity];
        *buf = 138544386;
        *v105 = v10;
        *&v105[8] = 2114;
        v106 = bundleName;
        *v107 = 2048;
        *&v107[2] = policyId;
        v108 = 1024;
        *v109 = isForeground;
        v9 = v16;
        *&v109[4] = 1024;
        *&v109[6] = foregroundSessionActivity;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "COSMCtrl applyPolicyDelta for %{public}@ -> %{public}@  policy id %llu  fg %d fg-activity %d", buf, 0x2Cu);
      }

      policyId2 = [v11 policyId];
      isForeground2 = [v11 isForeground];
      if (policyId2)
      {
        if ((isForeground2 & 1) == 0)
        {
          [v11 stateChangeTime];
          if (v21 + self->_activeAppsCacheGracePeriod < v4)
          {
            v22 = -[NEPolicySession removePolicyWithID:](self->_nePolicySession, "removePolicyWithID:", [v11 policyId]);
            v23 = outrankLogHandle;
            if (v22)
            {
              if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v24 = v23;
                policyId3 = [v11 policyId];
                bundleName2 = [v11 bundleName];
                *buf = 134218242;
                *v105 = policyId3;
                *&v105[8] = 2114;
                v106 = bundleName2;
                _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "COSMCtrl applyPolicyDelta remove policy %llu from %{public}@", buf, 0x16u);
              }
            }

            else
            {
              if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
              {
                v75 = v23;
                policyId4 = [v11 policyId];
                *buf = 134217984;
                *v105 = policyId4;
                _os_log_impl(&dword_23255B000, v75, OS_LOG_TYPE_ERROR, "COSMCtrl applyPolicyDelta fail to remove policy %llu", buf, 0xCu);
              }

              LODWORD(v91) = v91 + 1;
            }

            [v11 setPolicyId:0];
            v7 = (v7 + 1);
            v50 = HIDWORD(v91) - 1;
LABEL_50:
            HIDWORD(v91) = v50;
          }
        }
      }

      else if (isForeground2)
      {
        if (self->_cellOutranksWiFi)
        {
          policy = [v11 policy];

          if (!policy)
          {
            v89 = v9;
            v28 = v7;
            v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v30 = [MEMORY[0x277CD92E0] effectiveApplication:v10];
            [v29 addObject:v30];

            v31 = objc_alloc(MEMORY[0x277CD92D8]);
            nePolicyOrderSeqno = self->_nePolicyOrderSeqno;
            self->_nePolicyOrderSeqno = nePolicyOrderSeqno + 1;
            v33 = MEMORY[0x277CD92E8];
            agentUUID = [(NEPathControllerNetworkAgent *)self->_neAgent agentUUID];
            v35 = [v33 netAgentUUID:agentUUID];
            v36 = [v31 initWithOrder:nePolicyOrderSeqno result:v35 conditions:v29];
            [v11 setPolicy:v36];

            policy2 = [v11 policy];

            if (!policy2)
            {
              v38 = outrankLogHandle;
              if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = v86;
                *v105 = v29;
                _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_ERROR, "COSMCtrl applyPolicyDelta: initWithOrder fails for conditions %{pubilc}@", buf, 0xCu);
              }

              LODWORD(v91) = v91 + 1;
            }

            v7 = v28;

            v8 = v87;
            v9 = v89;
          }

          policy3 = [v11 policy];

          if (policy3)
          {
            nePolicySession = self->_nePolicySession;
            policy4 = [v11 policy];
            [v11 setPolicyId:{-[NEPolicySession addPolicy:](nePolicySession, "addPolicy:", policy4)}];

            policyId5 = [v11 policyId];
            v43 = outrankLogHandle;
            if (policyId5)
            {
              if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v44 = v43;
                policyId6 = [v11 policyId];
                policy5 = [v11 policy];
                [v11 bundleName];
                v47 = v11;
                v49 = v48 = v9;
                *buf = 134218754;
                *v105 = policyId6;
                *&v105[8] = 2114;
                v106 = policy5;
                *v107 = 2114;
                *&v107[2] = v10;
                v108 = 2114;
                *v109 = v49;
                _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEFAULT, "COSMCtrl applyPolicyDelta policy id %llu for %{public}@ on  %{public}@ -> %{public}@", buf, 0x2Au);

                v9 = v48;
                v11 = v47;
              }

              v7 = (v7 + 1);
              v50 = HIDWORD(v91) + 1;
              goto LABEL_50;
            }

            if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
            {
              v77 = v43;
              policy6 = [v11 policy];
              *buf = 138543362;
              *v105 = policy6;
              _os_log_impl(&dword_23255B000, v77, OS_LOG_TYPE_ERROR, "COSMCtrl applyPolicyDelta fail to add policy %{public}@@", buf, 0xCu);
            }

            LODWORD(v91) = v91 + 1;
          }
        }
      }

      else
      {
        [v11 stateChangeTime];
        if (v51 + self->_activeAppsCacheGracePeriod >= v4)
        {
          v52 = outrankLogHandle;
          if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
          {
            v53 = v52;
            bundleName3 = [v11 bundleName];
            [v11 stateChangeTime];
            v56 = dateStringMillisecondsFromReferenceInterval(v55 + self->_activeAppsCacheGracePeriod);
            dateStringMillisecondsFromReferenceInterval(v4);
            v57 = v11;
            v59 = v58 = v9;
            *buf = 138543874;
            *v105 = bundleName3;
            *&v105[8] = 2114;
            v106 = v56;
            *v107 = 2114;
            *&v107[2] = v59;
            _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_ERROR, "COSMCtrl applyPolicyDelta unexpected absence of policy on appRecord %{public}@ bg time + grace %{public}@  now %{public}@", buf, 0x20u);

            v9 = v58;
            v11 = v57;
          }
        }

        [v11 stateChangeTime];
        if (v60 + self->_activeAppsCacheGracePeriod < v4)
        {
          [v11 stateChangeTime];
          if (v61 + self->_activeAppsCacheRetainPeriod < v4)
          {
            v94 = v11;
            v90 = v9;
            v88 = v7;
            allKeys = [(NSMutableDictionary *)self->_activeFallbackClients allKeys];
            v95 = 0u;
            v96 = 0u;
            v97 = 0u;
            v98 = 0u;
            v63 = [allKeys countByEnumeratingWithState:&v95 objects:v103 count:16];
            if (v63)
            {
              v64 = v63;
              v65 = *v96;
              do
              {
                for (i = 0; i != v64; ++i)
                {
                  if (*v96 != v65)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v67 = *(*(&v95 + 1) + 8 * i);
                  v68 = [(NSMutableDictionary *)self->_activeFallbackClients objectForKeyedSubscript:v67];
                  processUUID = [v68 processUUID];
                  v70 = [processUUID isEqual:v10];

                  if (v70)
                  {
                    v71 = outrankLogHandle;
                    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v72 = v71;
                      bundleName4 = [v94 bundleName];
                      v74 = [v68 count];
                      *buf = 138544130;
                      *v105 = v67;
                      *&v105[8] = 2114;
                      v106 = v10;
                      *v107 = 2114;
                      *&v107[2] = bundleName4;
                      v108 = 2048;
                      *v109 = v74;
                      _os_log_impl(&dword_23255B000, v72, OS_LOG_TYPE_DEFAULT, "COSMCtrl applyPolicyDelta: age out assertion tracker %{public}@ -> %{public}@ -> %{public}@  count %llu", buf, 0x2Au);
                    }

                    [(CellOutrankController *)self deleteAssertionTracker:v67];
                  }
                }

                v64 = [allKeys countByEnumeratingWithState:&v95 objects:v103 count:16];
              }

              while (v64);
            }

            [(NSMutableDictionary *)self->_activeApps setObject:0 forKeyedSubscript:v10];

            v7 = v88;
            v8 = v87;
            v9 = v90;
            v11 = v94;
          }
        }
      }

      ++v9;
    }

    while (v9 != v93);
    v79 = [obj countByEnumeratingWithState:&v99 objects:v110 count:16];
    v93 = v79;
  }

  while (v79);
  if (v7 < 1)
  {
    v81 = v91;
  }

  else
  {
    apply = [(NEPolicySession *)self->_nePolicySession apply];
    v81 = v91;
    if (apply)
    {
      self->_nePolicyCount += HIDWORD(v91);
      [(FlowBasedIconAdviser *)self->_flowBasedIconAdviser setNePolicyCount:[(FlowBasedIconAdviser *)self->_flowBasedIconAdviser nePolicyCount]+ HIDWORD(v91)];
    }

    else
    {
      v81 = v91 + 1;
      v82 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v82, OS_LOG_TYPE_ERROR, "COSMCtrl applyPolicyDelta fail to apply accumulated policies", buf, 2u);
      }
    }

    v83 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      nePolicyCount = self->_nePolicyCount;
      *buf = 67110144;
      *v105 = v7;
      *&v105[4] = 1024;
      *&v105[6] = HIDWORD(v91);
      LOWORD(v106) = 1024;
      *(&v106 + 2) = nePolicyCount;
      HIWORD(v106) = 1024;
      *v107 = v81;
      *&v107[4] = 1024;
      *&v107[6] = apply;
      _os_log_impl(&dword_23255B000, v83, OS_LOG_TYPE_DEFAULT, "COSMCtrl applyPolicyDelta exit,  numChanges %d  delta %d policy count %d errCount %d apply result %d", buf, 0x20u);
    }
  }

LABEL_66:
  [(CellOutrankController *)self checkInvariants:@"applyPolicyDelta exit"];

  return v81 == 0;
}

- (void)ensureMaintenanceTimer
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    graceTimerRunning = self->_graceTimerRunning;
    evictionTimerRunning = self->_evictionTimerRunning;
    *buf = 67109376;
    *v51 = graceTimerRunning;
    *&v51[4] = 1024;
    *&v51[6] = evictionTimerRunning;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "COSMCtrl ensureMaintenanceTimer grace %d evict %d", buf, 0xEu);
  }

  if (self->_evictionTimerRunning && self->_graceTimerRunning)
  {
    return;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = self->_activeApps;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (!v7)
  {

    v9 = 0;
    v10 = 0;
    goto LABEL_40;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v47;
  selfCopy = self;
  obj = v6;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v47 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:*(*(&v46 + 1) + 8 * i)];
      if ([v14 isForeground])
      {
        goto LABEL_21;
      }

      v15 = v9;
      v16 = v10;
      if ([v14 policyId])
      {
        if (v10)
        {
          [v10 stateChangeTime];
          v18 = v17;
          [v14 stateChangeTime];
          v19 = v10;
          v16 = v14;
          if (v18 > v20)
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        }

        v19 = 0;
        v16 = v14;
LABEL_20:
        v24 = v14;

        v9 = v15;
        v10 = v16;
        goto LABEL_21;
      }

      if (!v9)
      {
        v19 = 0;
        v15 = v14;
        goto LABEL_20;
      }

      [v9 stateChangeTime];
      v22 = v21;
      [v14 stateChangeTime];
      v19 = v9;
      v15 = v14;
      if (v22 > v23)
      {
        goto LABEL_20;
      }

LABEL_21:

      self = selfCopy;
    }

    v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  }

  while (v8);

  if (!selfCopy->_graceTimerRunning && v10)
  {
    [v10 stateChangeTime];
    v26 = v25 + selfCopy->_activeAppsCacheGracePeriod + 0.5;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v26 <= v27)
    {
      v28 = 1.0;
    }

    else
    {
      v28 = v26 - v27;
    }

    v29 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      bundleName = [v10 bundleName];
      *buf = 134218242;
      *v51 = v28;
      *&v51[8] = 2114;
      v52 = bundleName;
      _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "COSMCtrl ensureMaintenanceTimer set delay %.3f for grace timer on %{public}@", buf, 0x16u);
    }

    v32 = dispatch_time(0, (v28 * 1000000000.0));
    queue = [(CellOutrankController *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__CellOutrankController_ensureMaintenanceTimer__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_after(v32, queue, block);

    self->_graceTimerRunning = 1;
  }

  if (!self->_evictionTimerRunning && v9)
  {
    [v9 stateChangeTime];
    v35 = v34 + self->_activeAppsCacheRetainPeriod + 0.5;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v35 <= v36)
    {
      v37 = 1.0;
    }

    else
    {
      v37 = v35 - v36;
    }

    v38 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      bundleName2 = [v9 bundleName];
      *buf = 134218242;
      *v51 = v37;
      *&v51[8] = 2114;
      v52 = bundleName2;
      _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEFAULT, "COSMCtrl ensureMaintenanceTimer set delay %.3f for eviction timer on %{public}@", buf, 0x16u);
    }

    v41 = dispatch_time(0, (v37 * 1000000000.0));
    queue2 = [(CellOutrankController *)self queue];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __47__CellOutrankController_ensureMaintenanceTimer__block_invoke_102;
    v44[3] = &unk_27898A0C8;
    v44[4] = self;
    dispatch_after(v41, queue2, v44);

    self->_evictionTimerRunning = 1;
  }

LABEL_40:
}

- (void)didSampleFlows
{
  [(FlowBasedIconAdviser *)self->_flowBasedIconAdviser didSampleFlows];

  [(CellOutrankController *)self assessIconState];
}

uint64_t __47__CellOutrankController_ensureMaintenanceTimer__block_invoke(uint64_t a1)
{
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "COSMCtrl ensureMaintenanceTimer expiry for grace timer", v4, 2u);
  }

  *(*(a1 + 32) + 107) = 0;
  [*(a1 + 32) applyPolicyDelta];
  return [*(a1 + 32) ensureMaintenanceTimer];
}

- (BOOL)removeAllPolicies
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    activeApps = self->_activeApps;
    v5 = v3;
    *buf = 67109120;
    LODWORD(v45) = [(NSMutableDictionary *)activeApps count];
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "COSMCtrl removeAllPolicies, active app count is %d", buf, 8u);
  }

  nePolicySession = self->_nePolicySession;
  if (!nePolicySession)
  {
    v8 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "COSMCtrl removeAllPolicies finds policies already torn down";
      goto LABEL_10;
    }

LABEL_11:
    v34 = 1;
    goto LABEL_18;
  }

  if (([(NEPolicySession *)nePolicySession removeAllPolicies]& 1) != 0)
  {
    apply = [(NEPolicySession *)self->_nePolicySession apply];
    v8 = outrankLogHandle;
    if (apply)
    {
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "COSMCtrl removeAllPolicies success with NEPolicySession policy removal";
LABEL_10:
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = self->_nePolicySession;
      *buf = 138543362;
      v45 = v12;
      v11 = "COSMCtrl removeAllPolicies failure to apply on %{public}@";
      goto LABEL_16;
    }
  }

  else
  {
    v8 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = self->_nePolicySession;
      *buf = 138543362;
      v45 = v10;
      v11 = "COSMCtrl removeAllPolicies failure to remove from %{public}@";
LABEL_16:
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
    }
  }

  v34 = 0;
LABEL_18:
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = self->_activeApps;
  v14 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:*(*(&v39 + 1) + 8 * i)];
        v19 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
        {
          v20 = v19;
          policyId = [v18 policyId];
          bundleName = [v18 bundleName];
          *buf = 134218242;
          v45 = policyId;
          v46 = 2114;
          v47 = bundleName;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "COSMCtrl removeAllPolicies,  remove policy %llu from %{public}@", buf, 0x16u);
        }

        [v18 setPolicyId:0];
        [v18 setPolicy:0];
      }

      v15 = [(NSMutableDictionary *)v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v15);
  }

  [(CellOutrankController *)self deleteAllAssertionTrackers];
  allKeys = [(NSMutableDictionary *)self->_activeApps allKeys];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = [allKeys countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(allKeys);
        }

        v28 = *(*(&v35 + 1) + 8 * j);
        v29 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:v28];
        if (([v29 isForeground] & 1) == 0)
        {
          v30 = outrankLogHandle;
          if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
          {
            v31 = v30;
            bundleName2 = [v29 bundleName];
            *buf = 138543362;
            v45 = bundleName2;
            _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_INFO, "COSMCtrl remove non-foreground appRecord for %{public}@", buf, 0xCu);
          }

          [(NSMutableDictionary *)self->_activeApps setObject:0 forKeyedSubscript:v28];
        }
      }

      v25 = [allKeys countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v25);
  }

  self->_nePolicyCount = 0;
  [(FlowBasedIconAdviser *)self->_flowBasedIconAdviser setNePolicyCount:0];

  return v34;
}

- (BOOL)updatePolicy
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_neAgent && self->_neAgentRegistration && self->_nePolicySession)
  {
    if (self->_cellOutranksWiFi)
    {
      applyPolicyDelta = [(CellOutrankController *)self applyPolicyDelta];
    }

    else
    {
      applyPolicyDelta = [(CellOutrankController *)self removeAllPolicies];
    }

    v8 = applyPolicyDelta;
    v10 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v11 = 67109120;
      LODWORD(v12) = v8;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "COSMCtrl updatePolicy returns %d", &v11, 8u);
    }
  }

  else
  {
    v4 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      neAgent = self->_neAgent;
      neAgentRegistration = self->_neAgentRegistration;
      nePolicySession = self->_nePolicySession;
      v11 = 134218496;
      v12 = neAgent;
      v13 = 2048;
      v14 = neAgentRegistration;
      v15 = 2048;
      v16 = nePolicySession;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "COSMCtrl updatePolicy called with NE policies not set, agent %p registration %p session %p", &v11, 0x20u);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)cleanupNEPolicy
{
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "COSMCtrl cleanupNEPolicy", v8, 2u);
  }

  [(CellOutrankController *)self removeAllPolicies];
  neAgentRegistration = self->_neAgentRegistration;
  if (neAgentRegistration)
  {
    [(NWNetworkAgentRegistration *)neAgentRegistration unregisterNetworkAgent];
    v5 = self->_neAgentRegistration;
    self->_neAgentRegistration = 0;
  }

  nePolicySession = self->_nePolicySession;
  self->_nePolicySession = 0;

  neAgent = self->_neAgent;
  self->_neAgent = 0;

  ++self->_neAgentInstanceNumber;
  self->_nePolicyOrderSeqno = 0;
  [(CellOutrankController *)self deleteAllAssertionTrackers];
}

- (void)setCellInterfaceName:(id)name
{
  v50 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v43 = nameCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSMCtrl setCellInterfaceName %{public}@", buf, 0xCu);
  }

  cellInterfaceName = self->_cellInterfaceName;
  if (cellInterfaceName != nameCopy)
  {
    if (cellInterfaceName)
    {
      [(CellOutrankController *)self cleanupNEPolicy];
    }

    if (nameCopy)
    {
      v7 = objc_alloc(MEMORY[0x277CD92C8]);
      v8 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceName:nameCopy];
      v9 = [v7 initWithAdvisoryInterface:v8 advisoryMode:4];
      neAgent = self->_neAgent;
      self->_neAgent = v9;

      if (self->_neAgent)
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        [(NEPathControllerNetworkAgent *)self->_neAgent setAgentUUID:uUID];

        [(NEPathControllerNetworkAgent *)self->_neAgent setActive:1];
        [(NEPathControllerNetworkAgent *)self->_neAgent setVoluntary:0];
        [(NEPathControllerNetworkAgent *)self->_neAgent setUserActivated:0];
        [(NEPathControllerNetworkAgent *)self->_neAgent setKernelActivated:0];
        v12 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v13 = self->_neAgent;
          *buf = 138543362;
          v43 = v13;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "COSMCtrl setCellInterfaceName created _neAgent %{public}@", buf, 0xCu);
        }

        v14 = [objc_alloc(MEMORY[0x277CD91E0]) initWithNetworkAgentClass:objc_opt_class()];
        neAgentRegistration = self->_neAgentRegistration;
        self->_neAgentRegistration = v14;

        v16 = outrankLogHandle;
        if (self->_neAgentRegistration)
        {
          if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v17 = self->_neAgentRegistration;
            *buf = 138543362;
            v43 = v17;
            _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "COSMCtrl setCellInterfaceName created _neAgentRegistration %{public}@", buf, 0xCu);
          }

          if (([(NWNetworkAgentRegistration *)self->_neAgentRegistration registerNetworkAgent:self->_neAgent]& 1) == 0)
          {
            v28 = outrankLogHandle;
            if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "COSMCtrl setCellInterfaceName unable to registerNetworkAgent", buf, 2u);
            }

            v29 = self->_neAgentRegistration;
            self->_neAgentRegistration = 0;

            goto LABEL_33;
          }

          v18 = objc_alloc_init(MEMORY[0x277CD92F0]);
          nePolicySession = self->_nePolicySession;
          self->_nePolicySession = v18;

          if (self->_nePolicySession)
          {
            if (!self->_cellOutranksWiFi || [(CellOutrankController *)self applyPolicyDelta])
            {
              v20 = self->_neAgentInstanceNumber + 1;
              self->_neAgentInstanceNumber = v20;
              objc_initWeak(buf, self);
              v21 = self->_neAgent;
              v39[0] = MEMORY[0x277D85DD0];
              v39[1] = 3221225472;
              v39[2] = __46__CellOutrankController_setCellInterfaceName___block_invoke;
              v39[3] = &unk_27898B6E8;
              objc_copyWeak(&v40, buf);
              v41 = v20;
              [(NEPathControllerNetworkAgent *)v21 setAssertHandler:v39];
              v22 = self->_neAgent;
              v36[0] = MEMORY[0x277D85DD0];
              v36[1] = 3221225472;
              v36[2] = __46__CellOutrankController_setCellInterfaceName___block_invoke_119;
              v36[3] = &unk_27898B710;
              objc_copyWeak(&v37, buf);
              v38 = v20;
              [(NEPathControllerNetworkAgent *)v22 setUnassertHandler:v36];
              v23 = outrankLogHandle;
              if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *v35 = 0;
                _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "COSMCtrl setCellInterfaceName success in applying new NE policy", v35, 2u);
              }

              objc_destroyWeak(&v37);
              objc_destroyWeak(&v40);
              objc_destroyWeak(buf);
              goto LABEL_34;
            }

            v16 = outrankLogHandle;
            if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v25 = "COSMCtrl setCellInterfaceName unable to applyPolicyDelta";
              goto LABEL_31;
            }

LABEL_33:
            [(CellOutrankController *)self cleanupNEPolicy];
LABEL_34:
            v30 = outrankLogHandle;
            if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v31 = self->_neAgent;
              v32 = self->_neAgentRegistration;
              v33 = self->_nePolicySession;
              *buf = 138544130;
              v43 = nameCopy;
              v44 = 2114;
              v45 = v31;
              v46 = 2114;
              v47 = v32;
              v48 = 2114;
              v49 = v33;
              _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEBUG, "COSMCtrl setCellInterfaceName for %{public}@ gives _neAgent %{public}@ _neAgentRegistration %{public}@ _nePolicySession %{public}@", buf, 0x2Au);
            }

            goto LABEL_36;
          }

          v16 = outrankLogHandle;
          if (!os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_33;
          }

          *buf = 0;
          v25 = "COSMCtrl setCellInterfaceName unable to create _nePolicySession";
        }

        else
        {
          if (!os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_33;
          }

          *buf = 0;
          v25 = "COSMCtrl setCellInterfaceName unable to create _neAgentRegistration";
        }

LABEL_31:
        v26 = v16;
        v27 = 2;
        goto LABEL_32;
      }

      v24 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v43 = nameCopy;
        v25 = "COSMCtrl setCellInterfaceName unable to create neAgent on interface %{public}@";
        v26 = v24;
        v27 = 12;
LABEL_32:
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
        goto LABEL_33;
      }

      goto LABEL_33;
    }
  }

LABEL_36:
  v34 = self->_cellInterfaceName;
  self->_cellInterfaceName = nameCopy;
}

void __46__CellOutrankController_setCellInterfaceName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__CellOutrankController_setCellInterfaceName___block_invoke_2;
    v10[3] = &unk_27898A758;
    v14 = *(a1 + 40);
    v11 = v8;
    v12 = v5;
    v13 = v6;
    dispatch_async(v9, v10);
  }
}

void __46__CellOutrankController_setCellInterfaceName___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 == [*(a1 + 32) neAgentInstanceNumber])
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v3 assertFallbackForClient:v4 process:v5];
  }

  else
  {
    v6 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 56);
      v8 = *(a1 + 32);
      v9 = v6;
      v10 = [v8 neAgentInstanceNumber];
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13[0] = 67109890;
      v13[1] = v7;
      v14 = 1024;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "COSMCtrl _neAgent setUnassertHandler instance number %d mismatch current %d on assert %{public}@ -> %{public}@", v13, 0x22u);
    }
  }
}

void __46__CellOutrankController_setCellInterfaceName___block_invoke_119(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__CellOutrankController_setCellInterfaceName___block_invoke_2_120;
    block[3] = &unk_27898A7A8;
    v10 = *(a1 + 40);
    v8 = v5;
    v9 = v3;
    dispatch_async(v6, block);
  }
}

void __46__CellOutrankController_setCellInterfaceName___block_invoke_2_120(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 == [*(a1 + 32) neAgentInstanceNumber])
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 unassertFallbackForClient:v4];
  }

  else
  {
    v5 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = [v7 neAgentInstanceNumber];
      v10 = *(a1 + 40);
      v11[0] = 67109634;
      v11[1] = v6;
      v12 = 1024;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "COSMCtrl _neAgent setUnassertHandler instance number %d mismatch current %d on unassert %{public}@", v11, 0x18u);
    }
  }
}

- (void)setCellOutranksWiFi:(BOOL)fi
{
  fiCopy = fi;
  v30 = *MEMORY[0x277D85DE8];
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    cellOutranksWiFi = self->_cellOutranksWiFi;
    *buf = 67109376;
    v24 = cellOutranksWiFi;
    v25 = 1024;
    LODWORD(v26) = fiCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSMCtrl setCellOutranksWiFi %d -> %d", buf, 0xEu);
  }

  if (self->_cellOutranksWiFi != fiCopy)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8 = v7;
    if (fiCopy)
    {
      self->_numAppsExploitingOutrank = 0;
      self->_numAppsNonExploitingOutrank = 0;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = self->_activeApps;
      v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v13), v19];
            [v14 setCountedAsExploitingOutrank:0];
            [v14 setCountedAsNonExploitingOutrank:0];

            ++v13;
          }

          while (v11 != v13);
          v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v19 objects:v29 count:16];
        }

        while (v11);
      }
    }

    else
    {
      self->_cellOutrankAccumulatedDuration = self->_cellOutrankAccumulatedDuration + v7 - self->_cellOutrankChangeTime;
    }

    self->_cellOutrankChangeTime = v8;
    self->_cellOutranksWiFi = fiCopy;
    if (self->_neAgent && self->_neAgentRegistration && self->_nePolicySession)
    {
      [(CellOutrankController *)self updatePolicy];
    }

    else
    {
      v15 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        v16 = self->_cellOutranksWiFi;
        neAgent = self->_neAgent;
        nePolicySession = self->_nePolicySession;
        *buf = 67109632;
        v24 = v16;
        v25 = 2048;
        v26 = neAgent;
        v27 = 2048;
        v28 = nePolicySession;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "COSMCtrl setCellOutranksWiFi  -> %d, unable to change policy, agent %p session %p", buf, 0x1Cu);
      }
    }

    [(CellOutrankController *)self assessIconState];
  }
}

- (void)setCellOutrankEffective:(BOOL)effective
{
  effectiveCopy = effective;
  v16 = *MEMORY[0x277D85DE8];
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    cellOutrankEffective = self->_cellOutrankEffective;
    *buf = 67109376;
    v13 = cellOutrankEffective;
    v14 = 1024;
    v15 = effectiveCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSMCtrl setCellOutrankEffective %d -> %d", buf, 0xEu);
  }

  if (self->_cellOutrankEffective != effectiveCopy)
  {
    self->_cellOutrankEffective = effectiveCopy;
    if (!self->_cellIconSettingDampening)
    {
      v7 = 208;
      if (effectiveCopy)
      {
        v7 = 200;
      }

      v8 = *(&self->super.isa + v7);
      self->_cellIconSettingDampening = 1;
      v9 = dispatch_time(0, (v8 * 1000000000.0));
      queue = [(CellOutrankController *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__CellOutrankController_setCellOutrankEffective___block_invoke;
      block[3] = &unk_27898A0C8;
      block[4] = self;
      dispatch_after(v9, queue, block);
    }
  }
}

void __49__CellOutrankController_setCellOutrankEffective___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 105);
    LODWORD(v3) = *(v3 + 106);
    v11 = 67109376;
    *v12 = v4;
    *&v12[4] = 1024;
    *&v12[6] = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "COSMCtrl setCellOutrankEffective after dampening, effective %d last signalled %d", &v11, 0xEu);
  }

  *(*(a1 + 32) + 76) = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 105);
  if (*(v5 + 106) != v6)
  {
    *(v5 + 106) = v6;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8 = *(a1 + 32);
    if (*(v8 + 106) == 1)
    {
      ++*(v8 + 168);
      *(*(a1 + 32) + 112) = v7;
    }

    else
    {
      *(v8 + 128) = *(v8 + 128) + v7 - *(v8 + 112);
    }

    notify_set_state(*(*(a1 + 32) + 72), *(*(a1 + 32) + 106));
    notify_post("com.apple.symptoms.celloutrankeffective");
    v9 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 106);
      v11 = 136315394;
      *v12 = "com.apple.symptoms.celloutrankeffective";
      *&v12[8] = 1024;
      v13 = v10;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "COSMCtrl setCellOutrankIcon  sent %s notification with contents %d", &v11, 0x12u);
    }
  }
}

- (void)setCurrentUsage:(unsigned int)usage
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    *v15 = currentUsageString(usage);
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSMCtrl setCurrentUsage %s", &v14, 0xCu);
  }

  if (self->_currentUsage == usage)
  {
LABEL_16:
    if (usage == 5)
    {
      return;
    }

    goto LABEL_17;
  }

  v6 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    currentUsage = self->_currentUsage;
    v8 = currentUsageString(currentUsage);
    v9 = currentUsageString(usage);
    v14 = 67109890;
    *v15 = currentUsage;
    *&v15[4] = 2080;
    *&v15[6] = v8;
    v16 = 1024;
    usageCopy = usage;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "COSMCtrl setCurrentUsage %d (%s)-> %d (%s)", &v14, 0x22u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = self->_currentUsage;
  if (v11 == 1)
  {
    v12 = 144;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_11;
    }

    v12 = 152;
  }

  *(&self->super.isa + v12) = v10 - self->_cellCurrentUsageTimerStartTime + *(&self->super.isa + v12);
LABEL_11:
  self->_cellCurrentUsageTimerStartTime = v10;
  if (usage - 1 >= 2)
  {
    goto LABEL_16;
  }

  if ([(FlowBasedIconAdviser *)self->_flowBasedIconAdviser active])
  {
    v13 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "COSMCtrl setCurrentUsage stop _flowBasedIconAdviser", &v14, 2u);
    }

    [(FlowBasedIconAdviser *)self->_flowBasedIconAdviser setActive:0];
  }

LABEL_17:
  self->_currentUsage = usage;
}

- (double)cellOutrankPossibleDuration
{
  cellOutrankAccumulatedDuration = self->_cellOutrankAccumulatedDuration;
  if (self->_cellOutranksWiFi)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    return cellOutrankAccumulatedDuration + v4 - self->_cellOutrankChangeTime;
  }

  return cellOutrankAccumulatedDuration;
}

- (double)cellOutrankIconSetDuration
{
  cellIconAccumulatedDuration = self->_cellIconAccumulatedDuration;
  if (self->_cellOutrankIcon)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    return cellIconAccumulatedDuration + v4 - self->_cellIconChangeTime;
  }

  return cellIconAccumulatedDuration;
}

- (void)deleteAllAssertionTrackers
{
  v19 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_activeFallbackClients allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v13;
    *&v5 = 138543362;
    v11 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = v11;
          v17 = v9;
          _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "COSMCtrl deleteAllAssertionTrackers, remove connection %{public}@", buf, 0xCu);
        }

        [(CellOutrankController *)self deleteAssertionTracker:v9, v11];
        ++v8;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)deleteAssertionTracker:(id)tracker
{
  v22 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  v5 = [(NSMutableDictionary *)self->_activeFallbackClients objectForKeyedSubscript:trackerCopy];
  v6 = v5;
  if (v5)
  {
    if (![v5 hasAppRecord])
    {
      v12 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = trackerCopy;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "COSMCtrl: deleteAssertionTracker tracker with no AppRecord %@ -> %@", &v16, 0x16u);
      }

      goto LABEL_19;
    }

    activeApps = self->_activeApps;
    processUUID = [v6 processUUID];
    v9 = [(NSMutableDictionary *)activeApps objectForKeyedSubscript:processUUID];

    if (v9)
    {
      if ([v9 connectionCount] >= 1)
      {
        [v9 setConnectionCount:{objc_msgSend(v9, "connectionCount") - 1}];
        [v9 setClosedConnectionCount:{objc_msgSend(v9, "closedConnectionCount") + 1}];
        v10 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v16 = 138412802;
          v17 = trackerCopy;
          v18 = 2112;
          v19 = v6;
          v20 = 2112;
          v21 = v9;
          _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "COSMCtrl: deleteAssertionTracker %@ -> %@  -> %@", &v16, 0x20u);
        }

        goto LABEL_18;
      }

      v15 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412802;
        v17 = trackerCopy;
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "COSMCtrl: deleteAssertionTracker %@ -> %@ preventing negative assertion count on %@", &v16, 0x20u);
      }

      v14 = @"Negative assertion count";
    }

    else
    {
      v13 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "COSMCtrl: deleteAssertionTracker %@ no AppRecord despite assertion hasAppRecord", &v16, 0xCu);
      }

      v14 = @"Missing expected AppRecord";
    }

    [(CellOutrankController *)self reportABCCase:v14];
LABEL_18:

LABEL_19:
    [(NSMutableDictionary *)self->_activeFallbackClients setObject:0 forKeyedSubscript:trackerCopy];
    goto LABEL_20;
  }

  v11 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = trackerCopy;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "COSMCtrl: deleteAssertionTracker no action as %@ -> <nil>", &v16, 0xCu);
  }

LABEL_20:
}

- (void)assertFallbackForClient:(id)client process:(id)process
{
  v33 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  processCopy = process;
  v8 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:processCopy];
  v9 = outrankLogHandle;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      bundleName = [v8 bundleName];
    }

    else
    {
      bundleName = @"<unknown>";
    }

    v25 = 138543874;
    v26 = clientCopy;
    v27 = 2114;
    v28 = processCopy;
    v29 = 2114;
    v30 = bundleName;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "COSMCtrl assertFallbackForClient %{public}@ -> %{public}@ %{public}@", &v25, 0x20u);
    if (v8)
    {
    }
  }

  v11 = [(NSMutableDictionary *)self->_activeFallbackClients objectForKeyedSubscript:clientCopy];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_activeFallbackClients objectForKeyedSubscript:clientCopy];
    processUUID = [(NEClientAssertionTracker *)v12 processUUID];
    v14 = [processCopy isEqual:processUUID];

    if (v14)
    {
      [(NEClientAssertionTracker *)v12 setCount:[(NEClientAssertionTracker *)v12 count]+ 1];
    }

    else
    {
      v17 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        processUUID2 = [(NEClientAssertionTracker *)v12 processUUID];
        v20 = [(NEClientAssertionTracker *)v12 count];
        v25 = 138544130;
        v26 = clientCopy;
        v27 = 2114;
        v28 = processCopy;
        v29 = 2114;
        v30 = processUUID2;
        v31 = 2048;
        v32 = v20;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "COSMCtrl: assertFallbackForClient changed process uuid for parent %{public}@ -> %{public}@ when already -> %{public}@ with count %llu, disposing", &v25, 0x2Au);
      }

      [(CellOutrankController *)self deleteAssertionTracker:clientCopy];
    }
  }

  else
  {
    v12 = objc_alloc_init(NEClientAssertionTracker);
    [(NEClientAssertionTracker *)v12 setProcessUUID:processCopy];
    [(NEClientAssertionTracker *)v12 setCount:1];
    [(NSMutableDictionary *)self->_activeFallbackClients setObject:v12 forKeyedSubscript:clientCopy];
    v15 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:processCopy];
    if (v15)
    {
      [(NEClientAssertionTracker *)v12 setHasAppRecord:1];
      [v15 setConnectionCount:{objc_msgSend(v15, "connectionCount") + 1}];
      v16 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v25 = 138412290;
        v26 = v15;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "COSMCtrl assertFallbackForClient bump connection count for appRecord %@", &v25, 0xCu);
      }
    }
  }

  [(CellOutrankController *)self applyPolicyDelta];
  if (!self->_cellOutrankEffective)
  {
    [(CellOutrankController *)self assessIconState];
  }

  v21 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    activeFallbackClients = self->_activeFallbackClients;
    v23 = v21;
    v24 = [(NSMutableDictionary *)activeFallbackClients objectForKeyedSubscript:clientCopy];
    v25 = 138543874;
    v26 = clientCopy;
    v27 = 2114;
    v28 = processCopy;
    v29 = 2114;
    v30 = v24;
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "COSMCtrl assertFallbackForClient exit, %{public}@ -> %{public}@, entry %{public}@", &v25, 0x20u);
  }
}

- (void)unassertFallbackForClient:(id)client
{
  v22 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v5 = [(NSMutableDictionary *)self->_activeFallbackClients objectForKeyedSubscript:clientCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_activeFallbackClients objectForKeyedSubscript:clientCopy];
    activeApps = self->_activeApps;
    processUUID = [v6 processUUID];
    v9 = [(NSMutableDictionary *)activeApps objectForKeyedSubscript:processUUID];

    v10 = outrankLogHandle;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      processUUID2 = [v6 processUUID];
      if (v9)
      {
        bundleName = [v9 bundleName];
      }

      else
      {
        bundleName = @"<unknown>";
      }

      v14 = 138544130;
      v15 = clientCopy;
      v16 = 2114;
      v17 = processUUID2;
      v18 = 2114;
      v19 = bundleName;
      v20 = 2048;
      v21 = [v6 count];
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "COSMCtrl unassertFallbackForClient %{public}@ -> %{public}@ %{public}@  count %llu", &v14, 0x2Au);
      if (v9)
      {
      }
    }

    [v6 setCount:{objc_msgSend(v6, "count") - 1}];
    if (![v6 count])
    {
      [(CellOutrankController *)self deleteAssertionTracker:clientCopy];
    }
  }

  else
  {
    v13 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = clientCopy;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "COSMCtrl: unassertFallbackForClient possible dup remove of client %{public}@", &v14, 0xCu);
    }
  }

  if (self->_cellOutrankEffective)
  {
    [(CellOutrankController *)self assessIconState];
  }
}

- (void)_foregroundAppActivity:(id)activity uuid:(id)uuid isForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  v48 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  uuidCopy = uuid;
  v10 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v38 = uuidCopy;
    v39 = 2114;
    v40 = activityCopy;
    v41 = 1024;
    LODWORD(v42) = foregroundCopy;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "COSMCtrl _foregroundAppActivity entry for %{public}@ -> %{public}@  fg %d", buf, 0x1Cu);
  }

  if (uuidCopy)
  {
    v11 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:uuidCopy];
LABEL_5:
    if (v11)
    {
      bundleName = [(ForegroundAppRecord *)v11 bundleName];
      v13 = [activityCopy isEqual:bundleName];

      if ((v13 & 1) == 0)
      {
        v14 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v38 = uuidCopy;
          v39 = 2114;
          v40 = activityCopy;
          v41 = 2114;
          v42 = v11;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "COSMCtrl _foregroundAppActivity uuid %{public}@  -> %{public}@  but cache has %{public}@", buf, 0x20u);
        }

        [(CellOutrankController *)self reportABCCase:@"Cache bundle name mismatch"];
        goto LABEL_43;
      }
    }

    else
    {
      v11 = objc_alloc_init(ForegroundAppRecord);
      [(ForegroundAppRecord *)v11 setBundleName:activityCopy];
      [(NSMutableDictionary *)self->_activeApps setObject:v11 forKeyedSubscript:uuidCopy];
    }

    [(ForegroundAppRecord *)v11 setIsForeground:foregroundCopy];
    if (foregroundCopy)
    {
      if (self->_neAgent && self->_neAgentRegistration && self->_nePolicySession && self->_cellOutranksWiFi)
      {
        [(CellOutrankController *)self updatePolicy];
      }

      goto LABEL_41;
    }

    if ([(ForegroundAppRecord *)v11 foregroundSessionActivity])
    {
      if ([(ForegroundAppRecord *)v11 countedAsExploitingOutrank])
      {
        goto LABEL_40;
      }

      [(ForegroundAppRecord *)v11 setCountedAsExploitingOutrank:1];
      ++self->_numAppsExploitingOutrank;
      v24 = outrankLogHandle;
      if (!os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_40;
      }

      *buf = 138412290;
      v38 = activityCopy;
      v25 = "COSMCtrl _foregroundAppActivity count exploiting for %@";
    }

    else
    {
      if ([(ForegroundAppRecord *)v11 countedAsNonExploitingOutrank])
      {
        goto LABEL_40;
      }

      [(ForegroundAppRecord *)v11 setCountedAsNonExploitingOutrank:1];
      ++self->_numAppsNonExploitingOutrank;
      v24 = outrankLogHandle;
      if (!os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_40;
      }

      *buf = 138412290;
      v38 = activityCopy;
      v25 = "COSMCtrl _foregroundAppActivity count non-exploiting for %@";
    }

    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, v25, buf, 0xCu);
LABEL_40:
    [(ForegroundAppRecord *)v11 setForegroundSessionActivity:0];
    [(CellOutrankController *)self ensureMaintenanceTimer];
LABEL_41:
    [(CellOutrankController *)self assessIconState];
    v28 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v29 = v28;
      policyId = [(ForegroundAppRecord *)v11 policyId];
      foregroundSessionActivity = [(ForegroundAppRecord *)v11 foregroundSessionActivity];
      *buf = 138544386;
      v38 = uuidCopy;
      v39 = 2114;
      v40 = activityCopy;
      v41 = 2048;
      v42 = policyId;
      v43 = 1024;
      v44 = foregroundCopy;
      v45 = 1024;
      v46 = foregroundSessionActivity;
      _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "COSMCtrl _foregroundAppActivity exit for %{public}@ -> %{public}@  policy id %llu  fg %d fg-activity %d", buf, 0x2Cu);
    }

    goto LABEL_43;
  }

  v32 = foregroundCopy;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = self->_activeApps;
  v16 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
LABEL_12:
    v19 = 0;
    while (1)
    {
      if (*v34 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v33 + 1) + 8 * v19);
      v21 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:v20];
      bundleName2 = [v21 bundleName];
      v23 = [activityCopy isEqualToString:bundleName2];

      if (v23)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v33 objects:v47 count:16];
        if (v17)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    v26 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v38 = activityCopy;
      v39 = 2114;
      v40 = v20;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "COSMCtrl _foregroundAppActivity incoming bundle %{public}@ has nil supplied UUID, finds existing %{public}@", buf, 0x16u);
    }

    uuidCopy = v20;
    v11 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:uuidCopy];

    foregroundCopy = v32;
    if (uuidCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
LABEL_18:

    v11 = 0;
  }

  v27 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v38 = activityCopy;
    _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "COSMCtrl _foregroundAppActivity incoming bundle %{public}@ has nil supplied UUID, no existing entries so skip", buf, 0xCu);
  }

  uuidCopy = 0;
LABEL_43:
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy && !self->_queue)
  {
    objc_storeStrong(&self->_queue, queue);
    v6 = [[FlowBasedIconAdviser alloc] initWithQueue:queueCopy];
    flowBasedIconAdviser = self->_flowBasedIconAdviser;
    self->_flowBasedIconAdviser = v6;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __34__CellOutrankController_setQueue___block_invoke;
    v11[3] = &unk_27898A690;
    v11[4] = self;
    v9 = [defaultCenter addObserverForName:@"kAppStateStatsNotificationAppForegroundStateChanged" object:0 queue:0 usingBlock:v11];
    foregroundAppObserver = self->_foregroundAppObserver;
    self->_foregroundAppObserver = v9;
  }
}

void __34__CellOutrankController_setQueue___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"kAppStateKeyForegroundActivityState"];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKeyedSubscript:@"kAppStateKeyForegroundActivityBundleName"];
  v8 = [v4 objectForKeyedSubscript:@"kAppStateKeyForegroundActivityBundleUUID"];
  v9 = v8;
  if (v7)
  {
    v10 = *(*(a1 + 32) + 8);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __34__CellOutrankController_setQueue___block_invoke_138;
    v14[3] = &unk_27898A378;
    v15 = v8;
    v11 = v7;
    v18 = v6;
    v12 = *(a1 + 32);
    v16 = v11;
    v17 = v12;
    dispatch_async(v10, v14);
  }

  else
  {
    v13 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v3;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "COSMCtrl foregroundAppObserver gets incomplete %{public}@", buf, 0xCu);
    }
  }
}

uint64_t __34__CellOutrankController_setQueue___block_invoke_138(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "COSMCtrl foregroundAppObserver gets %{public}@ for %{public}@ state %d", &v7, 0x1Cu);
  }

  return [*(a1 + 48) _foregroundAppActivity:*(a1 + 40) uuid:*(a1 + 32) isForeground:*(a1 + 56)];
}

- (CellOutrankController)init
{
  v11.receiver = self;
  v11.super_class = CellOutrankController;
  v2 = [(CellOutrankController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeApps = v2->_activeApps;
    v2->_activeApps = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeFallbackClients = v2->_activeFallbackClients;
    v2->_activeFallbackClients = v5;

    v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_2847EEB08];
    cellIconAlwaysSetApps = v2->_cellIconAlwaysSetApps;
    v2->_cellIconAlwaysSetApps = v7;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v2->_cellOutrankChangeTime = v9;
    notify_register_check("com.apple.symptoms.celloutrankeffective", &v2->_outrankEffectiveToken);
    notify_set_state(v2->_outrankEffectiveToken, 0);
    notify_post("com.apple.symptoms.celloutrankeffective");
    [(CellOutrankController *)v2 restoreDefaults];
  }

  return v2;
}

+ (CellOutrankController)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CellOutrankController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_9 != -1)
  {
    dispatch_once(&sharedInstance_pred_9, block);
  }

  v2 = sharedInstance_sharedInstance_9;

  return v2;
}

uint64_t __39__CellOutrankController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_9;
  sharedInstance_sharedInstance_9 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)restoreDefaults
{
  *&self->_activeAppsCacheRetainPeriod = vdupq_n_s64(0x4072C00000000000uLL);
  __asm { FMOV            V0.2D, #0.5 }

  *&self->_cellIconOnDebounceInterval = _Q0;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy extractKey:@"backgroundAppGracePeriod" toDouble:&self->_activeAppsCacheGracePeriod defaultTo:300.0];
  [configurationCopy extractKey:@"backgroundAppRetainPeriod" toDouble:&self->_activeAppsCacheRetainPeriod defaultTo:300.0];
  [configurationCopy extractKey:@"iconOnDampening" toDouble:&self->_cellIconOnDebounceInterval defaultTo:0.5];
  [configurationCopy extractKey:@"iconOffDampening" toDouble:&self->_cellIconOffDebounceInterval defaultTo:0.5];
  v5 = [configurationCopy objectForKey:@"restoreDefaults"];

  if (v5)
  {
    [(CellOutrankController *)self restoreDefaults];
  }
}

- (id)getState:(BOOL)state
{
  stateCopy = state;
  v71 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  i = 0x277CCA000uLL;
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSMCtrl interface %@ _nePolicyCount %d grace-tmr %d evict-tmr %d", self->_cellInterfaceName, self->_nePolicyCount, self->_graceTimerRunning, self->_evictionTimerRunning];
  [v5 addObject:v7];

  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  [(CellOutrankController *)self cellOutrankPossibleDuration];
  v10 = v9;
  cellOutrankIconSetEvents = [(CellOutrankController *)self cellOutrankIconSetEvents];
  [(CellOutrankController *)self cellOutrankIconSetDuration];
  v13 = v12;
  numForegroundAppsExploitingOutrank = [(CellOutrankController *)self numForegroundAppsExploitingOutrank];
  [(CellOutrankController *)self cellOutrankFGExploitDuration];
  v16 = v15;
  numForegroundAppsNonExploitingOutrank = [(CellOutrankController *)self numForegroundAppsNonExploitingOutrank];
  [(CellOutrankController *)self cellOutrankFGNonExploitDuration];
  v19 = [v8 initWithFormat:@"COSMCtrl outrank duration %.3f num icon settings %d total duration %.3f fg-exploit %d %.3f fg-non-exploit %d %.3f", v10, cellOutrankIconSetEvents, v13, numForegroundAppsExploitingOutrank, v16, numForegroundAppsNonExploitingOutrank, v18];
  [v5 addObject:v19];

  if (self->_activeAppsCacheGracePeriod != 300.0)
  {
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSMCtrl _activeAppsCacheGracePeriod override %.3f -> %.3f", 0x4072C00000000000, *&self->_activeAppsCacheGracePeriod];
    [v5 addObject:v20];
  }

  if (self->_activeAppsCacheRetainPeriod != 300.0)
  {
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSMCtrl _activeAppsCacheRetainPeriod override %.3f -> %.3f", 0x4072C00000000000, *&self->_activeAppsCacheRetainPeriod];
    [v5 addObject:v21];
  }

  if (self->_cellIconOnDebounceInterval != 0.5)
  {
    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSMCtrl _cellIconOnDebounceInterval override %.3f -> %.3f", 0x3FE0000000000000, *&self->_cellIconOnDebounceInterval];
    [v5 addObject:v22];
  }

  if (self->_cellIconOffDebounceInterval != 0.5)
  {
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSMCtrl _cellIconOffDebounceInterval override %.3f -> %.3f", 0x3FE0000000000000, *&self->_cellIconOffDebounceInterval];
    [v5 addObject:v23];
  }

  if (self->_outrankFlowMonitorMinSamplePeriod != 2.0)
  {
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSMCtrl _outrankFlowMonitorMinSamplePeriod override %.3f -> %.3f", 0x4000000000000000, *&self->_outrankFlowMonitorMinSamplePeriod];
    [v5 addObject:v24];
  }

  if (self->_outrankFlowMonitorSamplePeriodThroughputThreshold != 0.000001)
  {
    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSMCtrl _outrankFlowMonitorSamplePeriodThroughputThreshold override %.3f -> %.3f", 0x3EB0C6F7A0B5ED8DLL, *&self->_outrankFlowMonitorSamplePeriodThroughputThreshold];
    [v5 addObject:v25];
  }

  v52 = stateCopy;
  if (stateCopy)
  {
    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSMCtrl agent %@", self->_neAgent];
    [v5 addObject:v26];

    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSMCtrl registration %@", self->_neAgentRegistration];
    [v5 addObject:v27];

    v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"COSMCtrl session %@", self->_nePolicySession];
    [v5 addObject:v28];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = self->_activeApps;
  selfCopy = self;
  v60 = v5;
  v56 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v56)
  {
    v55 = *v66;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v66 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v65 + 1) + 8 * i);
        v30 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:v29];
        v57 = objc_alloc(MEMORY[0x277CCACA8]);
        bundleName = [v30 bundleName];
        isForeground = [v30 isForeground];
        v33 = @"<distant-future>";
        if ((isForeground & 1) == 0)
        {
          [v30 stateChangeTime];
          v33 = dateStringMillisecondsFromReferenceInterval(v34);
          v54 = v33;
        }

        v35 = [v57 initWithFormat:@"COSMCtrl Foreground App Record %@ -> %@ state-change-at %@ fg %d fg-activity %d policy %llu connections %llu closed %llu", v29, bundleName, v33, objc_msgSend(v30, "isForeground"), objc_msgSend(v30, "foregroundSessionActivity"), objc_msgSend(v30, "policyId"), objc_msgSend(v30, "connectionCount"), objc_msgSend(v30, "closedConnectionCount")];
        v5 = v60;
        [v60 addObject:v35];

        if ((isForeground & 1) == 0)
        {
        }

        self = selfCopy;
      }

      v56 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v56);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v58 = self->_activeFallbackClients;
  v36 = [(NSMutableDictionary *)v58 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v62;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v62 != v38)
        {
          objc_enumerationMutation(v58);
        }

        v40 = *(*(&v61 + 1) + 8 * j);
        v41 = [(NSMutableDictionary *)self->_activeFallbackClients objectForKeyedSubscript:v40];
        activeApps = self->_activeApps;
        processUUID = [v41 processUUID];
        v44 = [(NSMutableDictionary *)activeApps objectForKeyedSubscript:processUUID];

        v45 = objc_alloc(MEMORY[0x277CCACA8]);
        processUUID2 = [v41 processUUID];
        if (v44)
        {
          i = [v44 bundleName];
          v47 = i;
        }

        else
        {
          v47 = @"<unknown>";
        }

        v48 = [v45 initWithFormat:@"COSMCtrl Assertion tracker %@ -> %@ -> %@  count %llu", v40, processUUID2, v47, objc_msgSend(v41, "count")];
        v5 = v60;
        [v60 addObject:v48];

        if (v44)
        {
        }

        self = selfCopy;
      }

      v37 = [(NSMutableDictionary *)v58 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v37);
  }

  flowBasedIconAdviser = self->_flowBasedIconAdviser;
  if (flowBasedIconAdviser)
  {
    v50 = [(FlowBasedIconAdviser *)flowBasedIconAdviser getState:v52];
    [v5 addObjectsFromArray:v50];
  }

  return v5;
}

- (void)checkInvariants:(id)invariants
{
  v41 = *MEMORY[0x277D85DE8];
  invariantsCopy = invariants;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_activeApps;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [(NSMutableDictionary *)self->_activeApps objectForKeyedSubscript:*(*(&v29 + 1) + 8 * i)];
        v8 += [v11 connectionCount];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v29 objects:v40 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = self->_activeFallbackClients;
  v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v25 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v26;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [(NSMutableDictionary *)self->_activeFallbackClients objectForKeyedSubscript:*(*(&v25 + 1) + 8 * j)];
        v15 += [v18 hasAppRecord];
      }

      v14 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v25 objects:v39 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  if (v8 != v15)
  {
    v19 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      v34 = v8;
      v35 = 1024;
      v36 = v15;
      v37 = 2112;
      v38 = invariantsCopy;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "COSMCtrl invariant check failure, via apps %d via trackers %d for %@", buf, 0x18u);
    }
  }

  if ([(CellOutrankController *)self numForegroundAppsExploitingOutrank]< 0 || [(CellOutrankController *)self numForegroundAppsNonExploitingOutrank]< 0)
  {
    v20 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      numForegroundAppsExploitingOutrank = [(CellOutrankController *)self numForegroundAppsExploitingOutrank];
      numForegroundAppsNonExploitingOutrank = [(CellOutrankController *)self numForegroundAppsNonExploitingOutrank];
      *buf = 67109376;
      v34 = numForegroundAppsExploitingOutrank;
      v35 = 1024;
      v36 = numForegroundAppsNonExploitingOutrank;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "COSMCtrl invariant check failure, via exploit count %d non-exploit %d", buf, 0xEu);
    }
  }

  else if (v8 == v15)
  {
    goto LABEL_29;
  }

  invariantsCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invariant check failure on %@", invariantsCopy];
  [(CellOutrankController *)self reportABCCase:invariantsCopy];

LABEL_29:
}

- (void)reportABCCase:(id)case
{
  caseCopy = case;
  v4 = +[CellOutrankHandler sharedInstance];
  [v4 reportOutrankABCCase:caseCopy singleShot:1];
}

@end
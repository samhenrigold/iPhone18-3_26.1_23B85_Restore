@interface FigClusterSynchronizationManager
@end

@implementation FigClusterSynchronizationManager

double __FigClusterSynchronizationManager_ClientIsPlaying_block_invoke(uint64_t a1)
{
  shouldDisableOdeonStereoClockLink = figClusterSynchManager_shouldDisableOdeonStereoClockLink();
  if (shouldDisableOdeonStereoClockLink)
  {
    if (dword_1EAF17140)
    {
      v11 = OUTLINED_FUNCTION_4_64(shouldDisableOdeonStereoClockLink, v3, v4, v5, v6, v7, v8, v9, v33, v36, v39, v42, SBYTE2(v42), SBYTE3(v42), SHIDWORD(v42));
      v19 = OUTLINED_FUNCTION_88_4(v11, v12, v13, v14, v15, v16, v17, v18, v34, v37, v40, v43, v45, v46, v47);
      if (OUTLINED_FUNCTION_77_0(v19))
      {
        LODWORD(v48) = 136315138;
        OUTLINED_FUNCTION_1_82();
        OUTLINED_FUNCTION_2_79(v20, v21, v22, v23, &dword_1962D5000, v24, v25, "<<<< FigClusterSynchronizationManager >>>> %s: Member of Home Theater Cluster, ensuring ClusterSyncManager is stopped.", v35, v38, v41, v44, v48, v49, v50);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_420(v28, v29, v30, v31, v32);
    }

    return figClusterSynchManager_ensureStopped();
  }

  else
  {
    v26 = _MergedGlobals_58;
    if (*(a1 + 40) != _MergedGlobals_58)
    {
      _MergedGlobals_58 = 1;
      *(*(*(a1 + 32) + 8) + 24) = figClusterSynchManager_ensureStarted();
      if (!*(*(*(a1 + 32) + 8) + 24) && qword_1ED4CAAF0 && *(a1 + 40) != v26)
      {
        v27 = qword_1ED4CAAF8;

        CFSetApplyFunction(v27, figClusterSynchManager_AddPort, 0);
      }
    }
  }

  return result;
}

@end
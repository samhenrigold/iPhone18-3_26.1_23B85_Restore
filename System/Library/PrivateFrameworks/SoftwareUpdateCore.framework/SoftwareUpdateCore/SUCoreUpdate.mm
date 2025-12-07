@interface SUCoreUpdate
+ (id)_generateStateTable;
- (SUCoreUpdate)initWithDelegate:(id)delegate updateDescriptor:(id)descriptor updateUUID:(id)d withCallbackQueue:(id)queue;
- (id)copyCurrentState;
- (id)previousRollback;
- (id)rollbackAvailable;
- (id)updateDelegate;
- (int64_t)actionAdvanceBrainLoadSuccess:(id)success error:(id *)error;
- (int64_t)actionAdvanceDownloadPreflighted:(id)preflighted error:(id *)error;
- (int64_t)actionAdvanceSUDownloaded:(id)downloaded error:(id *)error;
- (int64_t)actionAdvanceSuspended:(id)suspended error:(id *)error;
- (int64_t)actionApplyUpdate:(id)update error:(id *)error;
- (int64_t)actionCancelPrepare:(id)prepare error:(id *)error;
- (int64_t)actionCheckSpace:(id)space error:(id *)error;
- (int64_t)actionChooseErrorSpaceCheck:(id)check error:(id *)error;
- (int64_t)actionDecideApplyUpdate:(id)update error:(id *)error;
- (int64_t)actionDecideBeginRollback:(id)rollback error:(id *)error;
- (int64_t)actionDecideCancelBeforeRollback:(id)rollback error:(id *)error;
- (int64_t)actionDecideDownloadSU:(id)u error:(id *)error;
- (int64_t)actionDecideDownloadSpaceCheck:(id)check error:(id *)error;
- (int64_t)actionDecideLoadBrain:(id)brain error:(id *)error;
- (int64_t)actionDecidePreflightDownloadSU:(id)u error:(id *)error;
- (int64_t)actionDecidePrepareUpdate:(id)update error:(id *)error;
- (int64_t)actionDecideResumeUpdate:(id)update error:(id *)error;
- (int64_t)actionDecideRollbackUpdate:(id)update error:(id *)error;
- (int64_t)actionDecideSuspendUpdate:(id)update error:(id *)error;
- (int64_t)actionDownloadSU:(id)u error:(id *)error;
- (int64_t)actionLoadBrain:(id)brain error:(id *)error;
- (int64_t)actionLoadBrainRollback:(id)rollback error:(id *)error;
- (int64_t)actionPreflightDownloadSU:(id)u error:(id *)error;
- (int64_t)actionPrepareUpdate:(id)update error:(id *)error;
- (int64_t)actionRemovePrepared:(id)prepared error:(id *)error;
- (int64_t)actionRemoveSU:(id)u error:(id *)error;
- (int64_t)actionReportAnomalyAPI:(id)i error:(id *)error;
- (int64_t)actionReportAnomalyAPIEnd:(id)end error:(id *)error;
- (int64_t)actionReportApplied:(id)applied error:(id *)error;
- (int64_t)actionReportApplyFailed:(id)failed error:(id *)error;
- (int64_t)actionReportApplyProgress:(id)progress error:(id *)error;
- (int64_t)actionReportAttemptFailure:(id)failure error:(id *)error;
- (int64_t)actionReportBrainLoadProgress:(id)progress error:(id *)error;
- (int64_t)actionReportBrainLoadSuccess:(id)success error:(id *)error;
- (int64_t)actionReportCanceled:(id)canceled error:(id *)error;
- (int64_t)actionReportDownloadPreflighted:(id)preflighted error:(id *)error;
- (int64_t)actionReportDownloadProgress:(id)progress error:(id *)error;
- (int64_t)actionReportDownloadStalled:(id)stalled error:(id *)error;
- (int64_t)actionReportPrepareProgress:(id)progress error:(id *)error;
- (int64_t)actionReportPrepared:(id)prepared error:(id *)error;
- (int64_t)actionReportResumeCurrentFailed:(id)failed error:(id *)error;
- (int64_t)actionReportResumeCurrentSuccess:(id)success error:(id *)error;
- (int64_t)actionReportRollbackFailed:(id)failed error:(id *)error;
- (int64_t)actionReportRollbackSuccess:(id)success error:(id *)error;
- (int64_t)actionReportSUDownloaded:(id)downloaded error:(id *)error;
- (int64_t)actionResumeCurrentUpdate:(id)update error:(id *)error;
- (int64_t)actionResumeUpdate:(id)update error:(id *)error;
- (int64_t)actionRollbackUpdateApply:(id)apply error:(id *)error;
- (int64_t)actionRollbackUpdateDecideApply:(id)apply error:(id *)error;
- (int64_t)actionRollbackUpdateDecideResume:(id)resume error:(id *)error;
- (int64_t)actionRollbackUpdateDecideSuspend:(id)suspend error:(id *)error;
- (int64_t)actionRollbackUpdatePrepare:(id)prepare error:(id *)error;
- (int64_t)actionRollbackUpdateResume:(id)resume error:(id *)error;
- (int64_t)actionRollbackUpdateSuspend:(id)suspend error:(id *)error;
- (int64_t)actionSuspendUpdate:(id)update error:(id *)error;
- (int64_t)actionUnknownAction:(id)action error:(id *)error;
- (int64_t)actionUpdateTarget:(id)target error:(id *)error;
- (int64_t)actionUpdateTargetReconfig:(id)reconfig error:(id *)error;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (void)_adjustTarget:(int64_t)target withPolicy:(id)policy;
- (void)_applyAttemptFailed:(id)failed;
- (void)_cleanupAfterAttempt;
- (void)_eventAfterReachingPhase:(int64_t)phase;
- (void)_eventAfterReachingRollbackPhase:(int64_t)phase;
- (void)_rollbackAttemptFailed:(id)failed withError:(id)error;
- (void)_trackUpdateAnomaly:(id)anomaly result:(int64_t)result description:(id)description;
- (void)_trackUpdateError:(id)error forReason:(id)reason error:(id)a5;
- (void)_updateAnomaly:(id)anomaly;
- (void)_updateApplied;
- (void)_updateApplyProgress:(id)progress;
- (void)_updateAssetDownloadPreflighted;
- (void)_updateAssetDownloadProgress:(id)progress;
- (void)_updateAssetDownloadStalled:(id)stalled;
- (void)_updateAssetDownloaded:(id)downloaded;
- (void)_updateAttemptFailed:(id)failed;
- (void)_updateBrainLoadProgress:(id)progress;
- (void)_updateBrainLoadStalled:(id)stalled;
- (void)_updateBrainLoaded:(id)loaded;
- (void)_updateCanceled;
- (void)_updateCurrentResumeFailed:(id)failed;
- (void)_updateCurrentResumed;
- (void)_updatePrepareProgress:(id)progress;
- (void)_updatePrepared:(id)prepared;
- (void)_updateRolledBack:(id)back;
- (void)anomaly:(id)anomaly;
- (void)cancelCurrentUpdate;
- (void)downloadFailed:(id)failed;
- (void)downloadProgress:(id)progress;
- (void)downloadStalled:(id)stalled;
- (void)downloaded:(id)downloaded;
- (void)msuApplied;
- (void)msuApplyFailed:(id)failed;
- (void)msuApplyProgress:(id)progress;
- (void)msuBrainLoadFailed:(id)failed;
- (void)msuBrainLoadProgress:(id)progress;
- (void)msuBrainLoadStalled:(id)stalled;
- (void)msuBrainLoaded:(id)loaded;
- (void)msuPrepareFailed:(id)failed;
- (void)msuPrepareProgress:(id)progress;
- (void)msuPrepared:(id)prepared;
- (void)msuRemoveFailed:(id)failed;
- (void)msuRemoved;
- (void)msuResumeFailed:(id)failed;
- (void)msuResumed;
- (void)msuRollbackApplyFailed:(id)failed;
- (void)msuRollbackApplySuccess;
- (void)msuRollbackFailed:(id)failed;
- (void)msuRollbackPrepareSuccess;
- (void)msuRollbackResumeSuccess;
- (void)msuRollbackSuspendSuccess;
- (void)msuSUDownloadPreflightFailed:(id)failed;
- (void)msuSUDownloadPreflighted;
- (void)msuSuspendFailed:(id)failed;
- (void)msuSuspended;
- (void)preSUStagingFinished:(id)finished;
- (void)resumeCurrentUpdate;
- (void)targetApplied:(id)applied;
- (void)targetBrainLoaded:(id)loaded;
- (void)targetDownloadPreflighted:(id)preflighted;
- (void)targetDownloaded:(id)downloaded;
- (void)targetPrepared:(id)prepared;
- (void)targetRollback:(id)rollback;
- (void)updateRemoveFailed:(id)failed;
- (void)updateRemoved;
@end

@implementation SUCoreUpdate

+ (id)_generateStateTable
{
  v1728[27] = *MEMORY[0x277D85DE8];
  v1727[0] = @"ReadyToBegin";
  v1725[0] = @"TargetBrainLoaded";
  v1723 = *MEMORY[0x277D644B8];
  v2 = v1723;
  v1724 = @"DecideLoadBrain";
  v513 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1724 forKeys:&v1723 count:1];
  v1726[0] = v513;
  v1725[1] = @"TargetDownloadPreflighted";
  v1721 = v2;
  v1722 = @"DecideLoadBrain";
  v512 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1722 forKeys:&v1721 count:1];
  v1726[1] = v512;
  v1725[2] = @"TargetDownloaded";
  v1719 = v2;
  v1720 = @"DecideLoadBrain";
  v511 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1720 forKeys:&v1719 count:1];
  v1726[2] = v511;
  v1725[3] = @"TargetPrepared";
  v1717 = v2;
  v1718 = @"DecideLoadBrain";
  v510 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1718 forKeys:&v1717 count:1];
  v1726[3] = v510;
  v1725[4] = @"TargetApplied";
  v1715 = v2;
  v1716 = @"DecideLoadBrain";
  v509 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1716 forKeys:&v1715 count:1];
  v1726[4] = v509;
  v1725[5] = @"TargetRollback";
  v1713 = v2;
  v1714 = @"DecideBeginRollback";
  v508 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1714 forKeys:&v1713 count:1];
  v1726[5] = v508;
  v1725[6] = @"ResumeCurrentUpdate";
  v1711 = v2;
  v1712 = @"ReportAnomalyAPIEnd";
  v507 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1712 forKeys:&v1711 count:1];
  v1726[6] = v507;
  v1725[7] = @"CancelCurrentUpdate";
  v1709 = v2;
  v1710 = @"ReportCanceled";
  v506 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1710 forKeys:&v1709 count:1];
  v1726[7] = v506;
  v1725[8] = @"PerformLoadBrain";
  v1707[0] = *MEMORY[0x277D64800];
  v3 = v1707[0];
  v1707[1] = v2;
  v1708[0] = @"LoadingBrain";
  v1708[1] = @"LoadBrain";
  v505 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1708 forKeys:v1707 count:2];
  v1726[8] = v505;
  v1725[9] = @"BrainLoadSuccessAtTarget";
  v1705[0] = v3;
  v1705[1] = v2;
  v1706[0] = @"BrainLoaded";
  v1706[1] = @"ReportBrainLoadSuccess";
  v504 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1706 forKeys:v1705 count:2];
  v1726[9] = v504;
  v1725[10] = @"PerformPreflightDownloadSU";
  v1703[0] = v3;
  v1703[1] = v2;
  v1704[0] = @"PreflightingDownloadSU";
  v1704[1] = @"PreflightDownloadSU";
  v503 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1704 forKeys:v1703 count:2];
  v1726[10] = v503;
  v1725[11] = @"PreflightSuccessAtTarget";
  v1701[0] = v3;
  v1701[1] = v2;
  v1702[0] = @"SUDownloadPreflighted";
  v1702[1] = @"ReportDownloadPreflighted";
  v502 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1702 forKeys:v1701 count:2];
  v1726[11] = v502;
  v1725[12] = @"PerformDownloadSpaceCheck";
  v1699[0] = v3;
  v1699[1] = v2;
  v1700[0] = @"CheckingSpaceForInstall";
  v1700[1] = @"CheckSpace";
  v501 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1700 forKeys:v1699 count:2];
  v1726[12] = v501;
  v1725[13] = @"PerformDownloadSU";
  v1697[0] = v3;
  v1697[1] = v2;
  v1698[0] = @"DownloadingSU";
  v1698[1] = @"DownloadSU";
  v500 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1698 forKeys:v1697 count:2];
  v1726[13] = v500;
  v1725[14] = @"DownloadSuccessAtTarget";
  v1695[0] = v3;
  v1695[1] = v2;
  v1696[0] = @"SUDownloaded";
  v1696[1] = @"ReportSUDownloaded";
  v499 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1696 forKeys:v1695 count:2];
  v1726[14] = v499;
  v1725[15] = @"PerformPrepare";
  v1693[0] = v3;
  v1693[1] = v2;
  v1694[0] = @"Preparing";
  v1694[1] = @"PrepareUpdate";
  v498 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1694 forKeys:v1693 count:2];
  v1726[15] = v498;
  v1725[16] = @"PerformSuspend";
  v1691[0] = v3;
  v1691[1] = v2;
  v1692[0] = @"Suspending";
  v1692[1] = @"SuspendUpdate";
  v497 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1692 forKeys:v1691 count:2];
  v1726[16] = v497;
  v1725[17] = @"SuspendSuccessAtTarget";
  v1689[0] = v3;
  v1689[1] = v2;
  v1690[0] = @"Prepared";
  v1690[1] = @"ReportPrepared";
  v496 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1690 forKeys:v1689 count:2];
  v1726[17] = v496;
  v1725[18] = @"PerformResume";
  v1687[0] = v3;
  v1687[1] = v2;
  v1688[0] = @"Resuming";
  v1688[1] = @"ResumeUpdate";
  v495 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1688 forKeys:v1687 count:2];
  v1726[18] = v495;
  v1725[19] = @"ResumeSuccessAtTarget";
  v1685[0] = v3;
  v1685[1] = v2;
  v1686[0] = @"Prepared";
  v1686[1] = @"ReportPrepared";
  v494 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1686 forKeys:v1685 count:2];
  v1726[19] = v494;
  v1725[20] = @"PerformApply";
  v1683[0] = v3;
  v1683[1] = v2;
  v1684[0] = @"Applying";
  v1684[1] = @"ApplyUpdate";
  v493 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1684 forKeys:v1683 count:2];
  v1726[20] = v493;
  v1725[21] = @"ApplySuccess";
  v1681[0] = v3;
  v1681[1] = v2;
  v1682[0] = @"AwaitingReboot";
  v1682[1] = @"ReportApplied";
  v492 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1682 forKeys:v1681 count:2];
  v1726[21] = v492;
  v1725[22] = @"RB_BeginRollback";
  v1679[0] = v3;
  v1679[1] = v2;
  v1680[0] = @"RB_ReadyToBegin";
  v1680[1] = @"LoadBrainRollback";
  v491 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1680 forKeys:v1679 count:2];
  v1726[22] = v491;
  v1725[23] = @"RB_PerformLoadBrain";
  v1677[0] = v3;
  v1677[1] = v2;
  v1678[0] = @"RB_LoadingBrain";
  v1678[1] = @"LoadBrain";
  v490 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1678 forKeys:v1677 count:2];
  v1726[23] = v490;
  v1725[24] = @"RB_PerformRollbackPrepare";
  v1675[0] = v3;
  v1675[1] = v2;
  v1676[0] = @"RB_RollingBackPrepare";
  v1676[1] = @"RollbackUpdatePrepare";
  v489 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1676 forKeys:v1675 count:2];
  v1726[24] = v489;
  v1725[25] = @"RB_PerformRollbackSuspend";
  v1673[0] = v3;
  v1673[1] = v2;
  v1674[0] = @"RB_RollingBackSuspend";
  v1674[1] = @"RollbackUpdateSuspend";
  v488 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1674 forKeys:v1673 count:2];
  v1726[25] = v488;
  v1725[26] = @"RB_PerformRollbackResume";
  v1671[0] = v3;
  v1671[1] = v2;
  v1672[0] = @"RB_RollingBackResume";
  v1672[1] = @"RollbackUpdateResume";
  v487 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1672 forKeys:v1671 count:2];
  v1726[26] = v487;
  v1725[27] = @"RB_PerformRollbackApply";
  v1669[0] = v3;
  v1669[1] = v2;
  v1670[0] = @"RB_RollingBackApply";
  v1670[1] = @"RollbackUpdateApply";
  v486 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1670 forKeys:v1669 count:2];
  v1726[27] = v486;
  v1725[28] = @"RB_RollbackAppleSuccess";
  v1667[0] = v3;
  v1667[1] = v2;
  v1668[0] = @"AwaitingReboot";
  v1668[1] = @"ReportRollbackSucceeded";
  v485 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1668 forKeys:v1667 count:2];
  v1726[28] = v485;
  v484 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1726 forKeys:v1725 count:29];
  v1728[0] = v484;
  v1727[1] = @"LoadingBrain";
  v1665[0] = @"TargetBrainLoaded";
  v1663 = v2;
  v1664 = @"UpdateTarget";
  v483 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1664 forKeys:&v1663 count:1];
  v1666[0] = v483;
  v1665[1] = @"TargetDownloadPreflighted";
  v1661 = v2;
  v1662 = @"UpdateTarget";
  v482 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1662 forKeys:&v1661 count:1];
  v1666[1] = v482;
  v1665[2] = @"TargetDownloaded";
  v1659 = v2;
  v1660 = @"UpdateTarget";
  v481 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1660 forKeys:&v1659 count:1];
  v1666[2] = v481;
  v1665[3] = @"TargetPrepared";
  v1657 = v2;
  v1658 = @"UpdateTarget";
  v480 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1658 forKeys:&v1657 count:1];
  v1666[3] = v480;
  v1665[4] = @"TargetApplied";
  v1655 = v2;
  v1656 = @"UpdateTarget";
  v479 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1656 forKeys:&v1655 count:1];
  v1666[4] = v479;
  v1665[5] = @"TargetRollback";
  v1653 = v3;
  v1654 = @"RB_LoadingBrain";
  v478 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1654 forKeys:&v1653 count:1];
  v1666[5] = v478;
  v1665[6] = @"ResumeCurrentUpdate";
  v1651 = v2;
  v1652 = @"ReportAnomalyAPI";
  v477 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1652 forKeys:&v1651 count:1];
  v1666[6] = v477;
  v1665[7] = @"CancelCurrentUpdate";
  v1649 = v3;
  v1650 = @"Canceling";
  v476 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1650 forKeys:&v1649 count:1];
  v1666[7] = v476;
  v1665[8] = @"BrainLoadProgress";
  v1647 = v2;
  v1648 = @"ReportBrainLoadProgress";
  v475 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1648 forKeys:&v1647 count:1];
  v1666[8] = v475;
  v1665[9] = @"BrainLoadSuccess";
  v1645 = v2;
  v1646 = @"AdvanceBrainLoadSuccess";
  v474 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1646 forKeys:&v1645 count:1];
  v1666[9] = v474;
  v1665[10] = @"BrainLoadFailed";
  v1643 = v2;
  v1644 = @"ChooseErrorSpaceCheck";
  v473 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1644 forKeys:&v1643 count:1];
  v1666[10] = v473;
  v1665[11] = @"BrainLoadSuccessAtTarget";
  v1641 = v3;
  v1642 = @"BrainLoaded";
  v472 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1642 forKeys:&v1641 count:1];
  v1666[11] = v472;
  v1665[12] = @"PerformPreflightDownloadSU";
  v1639[0] = v3;
  v1639[1] = v2;
  v1640[0] = @"PreflightingDownloadSU";
  v1640[1] = @"PreflightDownloadSU";
  v471 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1640 forKeys:v1639 count:2];
  v1666[12] = v471;
  v1665[13] = @"PreflightSuccessAtTarget";
  v1637[0] = v3;
  v1637[1] = v2;
  v1638[0] = @"SUDownloadPreflighted";
  v1638[1] = @"ReportDownloadPreflighted";
  v470 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1638 forKeys:v1637 count:2];
  v1666[13] = v470;
  v1665[14] = @"PerformDownloadSpaceCheck";
  v1635[0] = v3;
  v1635[1] = v2;
  v1636[0] = @"CheckingSpaceForInstall";
  v1636[1] = @"CheckSpace";
  v469 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1636 forKeys:v1635 count:2];
  v1666[14] = v469;
  v1665[15] = @"PerformDownloadSU";
  v1633[0] = v3;
  v1633[1] = v2;
  v1634[0] = @"DownloadingSU";
  v1634[1] = @"DownloadSU";
  v468 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1634 forKeys:v1633 count:2];
  v1666[15] = v468;
  v1665[16] = @"DownloadSuccessAtTarget";
  v1631[0] = v3;
  v1631[1] = v2;
  v1632[0] = @"SUDownloaded";
  v1632[1] = @"ReportSUDownloaded";
  v467 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1632 forKeys:v1631 count:2];
  v1666[16] = v467;
  v1665[17] = @"PerformPrepare";
  v1629[0] = v3;
  v1629[1] = v2;
  v1630[0] = @"Preparing";
  v1630[1] = @"PrepareUpdate";
  v466 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1630 forKeys:v1629 count:2];
  v1666[17] = v466;
  v1665[18] = @"PerformSuspend";
  v1627[0] = v3;
  v1627[1] = v2;
  v1628[0] = @"Suspending";
  v1628[1] = @"SuspendUpdate";
  v465 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1628 forKeys:v1627 count:2];
  v1666[18] = v465;
  v1665[19] = @"SuspendSuccessAtTarget";
  v1625[0] = v3;
  v1625[1] = v2;
  v1626[0] = @"Prepared";
  v1626[1] = @"ReportPrepared";
  v464 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1626 forKeys:v1625 count:2];
  v1666[19] = v464;
  v1665[20] = @"PerformResume";
  v1623[0] = v3;
  v1623[1] = v2;
  v1624[0] = @"Resuming";
  v1624[1] = @"ResumeUpdate";
  v463 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1624 forKeys:v1623 count:2];
  v1666[20] = v463;
  v1665[21] = @"ResumeSuccessAtTarget";
  v1621[0] = v3;
  v1621[1] = v2;
  v1622[0] = @"Prepared";
  v1622[1] = @"ReportPrepared";
  v462 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1622 forKeys:v1621 count:2];
  v1666[21] = v462;
  v1665[22] = @"PerformApply";
  v1619[0] = v3;
  v1619[1] = v2;
  v1620[0] = @"Applying";
  v1620[1] = @"ApplyUpdate";
  v461 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1620 forKeys:v1619 count:2];
  v1666[22] = v461;
  v1665[23] = @"ApplySuccess";
  v1617[0] = v3;
  v1617[1] = v2;
  v1618[0] = @"AwaitingReboot";
  v1618[1] = @"ReportApplied";
  v460 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1618 forKeys:v1617 count:2];
  v1666[23] = v460;
  v1665[24] = @"PerformErrorSpaceCheck";
  v1615[0] = v3;
  v1615[1] = v2;
  v1616[0] = @"CheckingSpaceAfterError";
  v1616[1] = @"CheckSpace";
  v459 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1616 forKeys:v1615 count:2];
  v1666[24] = v459;
  v1665[25] = @"SkipErrorSpaceCheck";
  v1613[0] = v3;
  v1613[1] = v2;
  v1614[0] = @"ReadyToBegin";
  v1614[1] = @"ReportAttemptFailure";
  v458 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1614 forKeys:v1613 count:2];
  v1666[25] = v458;
  v457 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1666 forKeys:v1665 count:26];
  v1728[1] = v457;
  v1727[2] = @"BrainLoaded";
  v1611[0] = @"TargetBrainLoaded";
  v1609 = v2;
  v1610 = @"UpdateTarget";
  v456 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1610 forKeys:&v1609 count:1];
  v1612[0] = v456;
  v1611[1] = @"TargetDownloadPreflighted";
  v1607 = v2;
  v1608 = @"DecidePreflightDownloadSU";
  v455 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1608 forKeys:&v1607 count:1];
  v1612[1] = v455;
  v1611[2] = @"TargetDownloaded";
  v1605 = v2;
  v1606 = @"DecidePreflightDownloadSU";
  v454 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1606 forKeys:&v1605 count:1];
  v1612[2] = v454;
  v1611[3] = @"TargetPrepared";
  v1603 = v2;
  v1604 = @"DecidePreflightDownloadSU";
  v453 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1604 forKeys:&v1603 count:1];
  v1612[3] = v453;
  v1611[4] = @"TargetApplied";
  v1601 = v2;
  v1602 = @"DecidePreflightDownloadSU";
  v452 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1602 forKeys:&v1601 count:1];
  v1612[4] = v452;
  v1611[5] = @"TargetRollback";
  v1599[0] = v3;
  v1599[1] = v2;
  v1600[0] = @"RB_BrainLoaded";
  v1600[1] = @"DecideBeginRollback";
  v451 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1600 forKeys:v1599 count:2];
  v1612[5] = v451;
  v1611[6] = @"ResumeCurrentUpdate";
  v1597 = v2;
  v1598 = @"ReportAnomalyAPIEnd";
  v450 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1598 forKeys:&v1597 count:1];
  v1612[6] = v450;
  v1611[7] = @"CancelCurrentUpdate";
  v1595[0] = v3;
  v1595[1] = v2;
  v1596[0] = @"ReadyToBegin";
  v1596[1] = @"ReportCanceled";
  v449 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1596 forKeys:v1595 count:2];
  v1612[7] = v449;
  v1611[8] = @"PerformPreflightDownloadSU";
  v1593[0] = v3;
  v1593[1] = v2;
  v1594[0] = @"PreflightingDownloadSU";
  v1594[1] = @"PreflightDownloadSU";
  v448 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1594 forKeys:v1593 count:2];
  v1612[8] = v448;
  v1611[9] = @"PreflightSuccessAtTarget";
  v1591[0] = v3;
  v1591[1] = v2;
  v1592[0] = @"SUDownloadPreflighted";
  v1592[1] = @"ReportDownloadPreflighted";
  v447 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1592 forKeys:v1591 count:2];
  v1612[9] = v447;
  v1611[10] = @"PerformDownloadSpaceCheck";
  v1589[0] = v3;
  v1589[1] = v2;
  v1590[0] = @"CheckingSpaceForInstall";
  v1590[1] = @"CheckSpace";
  v446 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1590 forKeys:v1589 count:2];
  v1612[10] = v446;
  v1611[11] = @"PerformDownloadSU";
  v1587[0] = v3;
  v1587[1] = v2;
  v1588[0] = @"DownloadingSU";
  v1588[1] = @"DownloadSU";
  v445 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1588 forKeys:v1587 count:2];
  v1612[11] = v445;
  v1611[12] = @"DownloadSuccessAtTarget";
  v1585[0] = v3;
  v1585[1] = v2;
  v1586[0] = @"SUDownloaded";
  v1586[1] = @"ReportSUDownloaded";
  v444 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1586 forKeys:v1585 count:2];
  v1612[12] = v444;
  v1611[13] = @"PerformPrepare";
  v1583[0] = v3;
  v1583[1] = v2;
  v1584[0] = @"Preparing";
  v1584[1] = @"PrepareUpdate";
  v443 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1584 forKeys:v1583 count:2];
  v1612[13] = v443;
  v1611[14] = @"PerformSuspend";
  v1581[0] = v3;
  v1581[1] = v2;
  v1582[0] = @"Suspending";
  v1582[1] = @"SuspendUpdate";
  v442 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1582 forKeys:v1581 count:2];
  v1612[14] = v442;
  v1611[15] = @"SuspendSuccessAtTarget";
  v1579[0] = v3;
  v1579[1] = v2;
  v1580[0] = @"Prepared";
  v1580[1] = @"ReportPrepared";
  v441 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1580 forKeys:v1579 count:2];
  v1612[15] = v441;
  v1611[16] = @"PerformResume";
  v1577[0] = v3;
  v1577[1] = v2;
  v1578[0] = @"Resuming";
  v1578[1] = @"ResumeUpdate";
  v440 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1578 forKeys:v1577 count:2];
  v1612[16] = v440;
  v1611[17] = @"ResumeSuccessAtTarget";
  v1575[0] = v3;
  v1575[1] = v2;
  v1576[0] = @"Prepared";
  v1576[1] = @"ReportPrepared";
  v439 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1576 forKeys:v1575 count:2];
  v1612[17] = v439;
  v1611[18] = @"PerformApply";
  v1573[0] = v3;
  v1573[1] = v2;
  v1574[0] = @"Applying";
  v1574[1] = @"ApplyUpdate";
  v438 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1574 forKeys:v1573 count:2];
  v1612[18] = v438;
  v1611[19] = @"ApplySuccess";
  v1571[0] = v3;
  v1571[1] = v2;
  v1572[0] = @"AwaitingReboot";
  v1572[1] = @"ReportApplied";
  v437 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1572 forKeys:v1571 count:2];
  v1612[19] = v437;
  v436 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1612 forKeys:v1611 count:20];
  v1728[2] = v436;
  v1727[3] = @"PreflightingDownloadSU";
  v1569[0] = @"TargetBrainLoaded";
  v1567 = v2;
  v1568 = @"ReportAnomalyAPI";
  v435 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1568 forKeys:&v1567 count:1];
  v1570[0] = v435;
  v1569[1] = @"TargetDownloadPreflighted";
  v1565 = v2;
  v1566 = @"UpdateTarget";
  v434 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1566 forKeys:&v1565 count:1];
  v1570[1] = v434;
  v1569[2] = @"TargetDownloaded";
  v1563 = v2;
  v1564 = @"UpdateTarget";
  v433 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1564 forKeys:&v1563 count:1];
  v1570[2] = v433;
  v1569[3] = @"TargetPrepared";
  v1561 = v2;
  v1562 = @"UpdateTarget";
  v432 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1562 forKeys:&v1561 count:1];
  v1570[3] = v432;
  v1569[4] = @"TargetApplied";
  v1559 = v2;
  v1560 = @"UpdateTarget";
  v431 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1560 forKeys:&v1559 count:1];
  v1570[4] = v431;
  v1569[5] = @"TargetRollback";
  v1557 = v2;
  v1558 = @"DecideCancelBeforeRollback";
  v430 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1558 forKeys:&v1557 count:1];
  v1570[5] = v430;
  v1569[6] = @"ResumeCurrentUpdate";
  v1555 = v2;
  v1556 = @"ReportAnomalyAPI";
  v429 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1556 forKeys:&v1555 count:1];
  v1570[6] = v429;
  v1569[7] = @"CancelCurrentUpdate";
  v1553 = v3;
  v1554 = @"Canceling";
  v428 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1554 forKeys:&v1553 count:1];
  v1570[7] = v428;
  v1569[8] = @"PreflightSuccess";
  v1551 = v2;
  v1552 = @"AdvanceDownloadPreflighted";
  v427 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1552 forKeys:&v1551 count:1];
  v1570[8] = v427;
  v1569[9] = @"PreflightFailed";
  v1549 = v2;
  v1550 = @"ChooseErrorSpaceCheck";
  v426 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1550 forKeys:&v1549 count:1];
  v1570[9] = v426;
  v1569[10] = @"PreflightSuccessAtTarget";
  v1547 = v3;
  v1548 = @"SUDownloadPreflighted";
  v425 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1548 forKeys:&v1547 count:1];
  v1570[10] = v425;
  v1569[11] = @"PerformDownloadSpaceCheck";
  v1545[0] = v3;
  v1545[1] = v2;
  v1546[0] = @"CheckingSpaceForInstall";
  v1546[1] = @"CheckSpace";
  v424 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1546 forKeys:v1545 count:2];
  v1570[11] = v424;
  v1569[12] = @"PerformDownloadSU";
  v1543[0] = v3;
  v1543[1] = v2;
  v1544[0] = @"DownloadingSU";
  v1544[1] = @"DownloadSU";
  v423 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1544 forKeys:v1543 count:2];
  v1570[12] = v423;
  v1569[13] = @"DownloadSuccessAtTarget";
  v1541[0] = v3;
  v1541[1] = v2;
  v1542[0] = @"SUDownloaded";
  v1542[1] = @"ReportSUDownloaded";
  v422 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1542 forKeys:v1541 count:2];
  v1570[13] = v422;
  v1569[14] = @"PerformPrepare";
  v1539[0] = v3;
  v1539[1] = v2;
  v1540[0] = @"Preparing";
  v1540[1] = @"PrepareUpdate";
  v421 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1540 forKeys:v1539 count:2];
  v1570[14] = v421;
  v1569[15] = @"PerformSuspend";
  v1537[0] = v3;
  v1537[1] = v2;
  v1538[0] = @"Suspending";
  v1538[1] = @"SuspendUpdate";
  v420 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1538 forKeys:v1537 count:2];
  v1570[15] = v420;
  v1569[16] = @"SuspendSuccessAtTarget";
  v1535[0] = v3;
  v1535[1] = v2;
  v1536[0] = @"Prepared";
  v1536[1] = @"ReportPrepared";
  v419 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1536 forKeys:v1535 count:2];
  v1570[16] = v419;
  v1569[17] = @"PerformResume";
  v1533[0] = v3;
  v1533[1] = v2;
  v1534[0] = @"Resuming";
  v1534[1] = @"ResumeUpdate";
  v418 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1534 forKeys:v1533 count:2];
  v1570[17] = v418;
  v1569[18] = @"ResumeSuccessAtTarget";
  v1531[0] = v3;
  v1531[1] = v2;
  v1532[0] = @"Prepared";
  v1532[1] = @"ReportPrepared";
  v417 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1532 forKeys:v1531 count:2];
  v1570[18] = v417;
  v1569[19] = @"PerformApply";
  v1529[0] = v3;
  v1529[1] = v2;
  v1530[0] = @"Applying";
  v1530[1] = @"ApplyUpdate";
  v416 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1530 forKeys:v1529 count:2];
  v1570[19] = v416;
  v1569[20] = @"ApplySuccess";
  v1527[0] = v3;
  v1527[1] = v2;
  v1528[0] = @"AwaitingReboot";
  v1528[1] = @"ReportApplied";
  v415 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1528 forKeys:v1527 count:2];
  v1570[20] = v415;
  v1569[21] = @"RB_CancelNonRollbackUpdate";
  v1525 = v3;
  v1526 = @"RB_Canceling";
  v414 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1526 forKeys:&v1525 count:1];
  v1570[21] = v414;
  v1569[22] = @"RB_BeginRollback";
  v1523[0] = v3;
  v1523[1] = v2;
  v1524[0] = @"RB_ReadyToBegin";
  v1524[1] = @"LoadBrainRollback";
  v413 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1524 forKeys:v1523 count:2];
  v1570[22] = v413;
  v1569[23] = @"RB_PerformLoadBrain";
  v1521[0] = v3;
  v1521[1] = v2;
  v1522[0] = @"RB_LoadingBrain";
  v1522[1] = @"LoadBrain";
  v412 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1522 forKeys:v1521 count:2];
  v1570[23] = v412;
  v1569[24] = @"RB_PerformRollbackPrepare";
  v1519[0] = v3;
  v1519[1] = v2;
  v1520[0] = @"RB_RollingBackPrepare";
  v1520[1] = @"RollbackUpdatePrepare";
  v411 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1520 forKeys:v1519 count:2];
  v1570[24] = v411;
  v1569[25] = @"RB_PerformRollbackSuspend";
  v1517[0] = v3;
  v1517[1] = v2;
  v1518[0] = @"RB_RollingBackSuspend";
  v1518[1] = @"RollbackUpdateSuspend";
  v410 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1518 forKeys:v1517 count:2];
  v1570[25] = v410;
  v1569[26] = @"RB_PerformRollbackResume";
  v1515[0] = v3;
  v1515[1] = v2;
  v1516[0] = @"RB_RollingBackResume";
  v1516[1] = @"RollbackUpdateResume";
  v409 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1516 forKeys:v1515 count:2];
  v1570[26] = v409;
  v1569[27] = @"RB_PerformRollbackApply";
  v1513[0] = v3;
  v1513[1] = v2;
  v1514[0] = @"RB_RollingBackApply";
  v1514[1] = @"RollbackUpdateApply";
  v408 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1514 forKeys:v1513 count:2];
  v1570[27] = v408;
  v1569[28] = @"RB_RollbackAppleSuccess";
  v1511[0] = v3;
  v1511[1] = v2;
  v1512[0] = @"AwaitingReboot";
  v1512[1] = @"ReportRollbackSucceeded";
  v407 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1512 forKeys:v1511 count:2];
  v1570[28] = v407;
  v1569[29] = @"PerformErrorSpaceCheck";
  v1509[0] = v3;
  v1509[1] = v2;
  v1510[0] = @"CheckingSpaceAfterError";
  v1510[1] = @"CheckSpace";
  v406 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1510 forKeys:v1509 count:2];
  v1570[29] = v406;
  v1569[30] = @"SkipErrorSpaceCheck";
  v1507[0] = v3;
  v1507[1] = v2;
  v1508[0] = @"ReadyToBegin";
  v1508[1] = @"ReportAttemptFailure";
  v405 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1508 forKeys:v1507 count:2];
  v1570[30] = v405;
  v404 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1570 forKeys:v1569 count:31];
  v1728[3] = v404;
  v1727[4] = @"SUDownloadPreflighted";
  v1505[0] = @"TargetBrainLoaded";
  v1503 = v2;
  v1504 = @"ReportAnomalyAPIEnd";
  v403 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1504 forKeys:&v1503 count:1];
  v1506[0] = v403;
  v1505[1] = @"TargetDownloadPreflighted";
  v1501 = v2;
  v1502 = @"UpdateTarget";
  v402 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1502 forKeys:&v1501 count:1];
  v1506[1] = v402;
  v1505[2] = @"TargetDownloaded";
  v1499 = v2;
  v1500 = @"DecideDownloadSpaceCheck";
  v401 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1500 forKeys:&v1499 count:1];
  v1506[2] = v401;
  v1505[3] = @"TargetPrepared";
  v1497 = v2;
  v1498 = @"DecideDownloadSpaceCheck";
  v400 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1498 forKeys:&v1497 count:1];
  v1506[3] = v400;
  v1505[4] = @"TargetApplied";
  v1495 = v2;
  v1496 = @"DecideDownloadSpaceCheck";
  v399 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1496 forKeys:&v1495 count:1];
  v1506[4] = v399;
  v1505[5] = @"TargetRollback";
  v1493[0] = v3;
  v1493[1] = v2;
  v1494[0] = @"RB_ReadyToBegin";
  v1494[1] = @"LoadBrainRollback";
  v398 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1494 forKeys:v1493 count:2];
  v1506[5] = v398;
  v1505[6] = @"ResumeCurrentUpdate";
  v1491 = v2;
  v1492 = @"ReportAnomalyAPIEnd";
  v397 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1492 forKeys:&v1491 count:1];
  v1506[6] = v397;
  v1505[7] = @"CancelCurrentUpdate";
  v1489[0] = v3;
  v1489[1] = v2;
  v1490[0] = @"ReadyToBegin";
  v1490[1] = @"ReportCanceled";
  v396 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1490 forKeys:v1489 count:2];
  v1506[7] = v396;
  v1505[8] = @"PerformDownloadSpaceCheck";
  v1487[0] = v3;
  v1487[1] = v2;
  v1488[0] = @"CheckingSpaceForInstall";
  v1488[1] = @"CheckSpace";
  v395 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1488 forKeys:v1487 count:2];
  v1506[8] = v395;
  v1505[9] = @"PerformDownloadSU";
  v1485[0] = v3;
  v1485[1] = v2;
  v1486[0] = @"DownloadingSU";
  v1486[1] = @"DownloadSU";
  v394 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1486 forKeys:v1485 count:2];
  v1506[9] = v394;
  v1505[10] = @"DownloadSuccessAtTarget";
  v1483[0] = v3;
  v1483[1] = v2;
  v1484[0] = @"SUDownloaded";
  v1484[1] = @"ReportSUDownloaded";
  v393 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1484 forKeys:v1483 count:2];
  v1506[10] = v393;
  v1505[11] = @"PerformPrepare";
  v1481[0] = v3;
  v1481[1] = v2;
  v1482[0] = @"Preparing";
  v1482[1] = @"PrepareUpdate";
  v392 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1482 forKeys:v1481 count:2];
  v1506[11] = v392;
  v1505[12] = @"PerformSuspend";
  v1479[0] = v3;
  v1479[1] = v2;
  v1480[0] = @"Suspending";
  v1480[1] = @"SuspendUpdate";
  v391 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1480 forKeys:v1479 count:2];
  v1506[12] = v391;
  v1505[13] = @"SuspendSuccessAtTarget";
  v1477[0] = v3;
  v1477[1] = v2;
  v1478[0] = @"Prepared";
  v1478[1] = @"ReportPrepared";
  v390 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1478 forKeys:v1477 count:2];
  v1506[13] = v390;
  v1505[14] = @"PerformResume";
  v1475[0] = v3;
  v1475[1] = v2;
  v1476[0] = @"Resuming";
  v1476[1] = @"ResumeUpdate";
  v389 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1476 forKeys:v1475 count:2];
  v1506[14] = v389;
  v1505[15] = @"ResumeSuccessAtTarget";
  v1473[0] = v3;
  v1473[1] = v2;
  v1474[0] = @"Prepared";
  v1474[1] = @"ReportPrepared";
  v388 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1474 forKeys:v1473 count:2];
  v1506[15] = v388;
  v1505[16] = @"PerformApply";
  v1471[0] = v3;
  v1471[1] = v2;
  v1472[0] = @"Applying";
  v1472[1] = @"ApplyUpdate";
  v387 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1472 forKeys:v1471 count:2];
  v1506[16] = v387;
  v1505[17] = @"ApplySuccess";
  v1469[0] = v3;
  v1469[1] = v2;
  v1470[0] = @"AwaitingReboot";
  v1470[1] = @"ReportApplied";
  v386 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1470 forKeys:v1469 count:2];
  v1506[17] = v386;
  v385 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1506 forKeys:v1505 count:18];
  v1728[4] = v385;
  v1727[5] = @"CheckingSpaceForInstall";
  v1467[0] = @"TargetBrainLoaded";
  v1465 = v2;
  v1466 = @"ReportAnomalyAPI";
  v384 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1466 forKeys:&v1465 count:1];
  v1468[0] = v384;
  v1467[1] = @"TargetDownloadPreflighted";
  v1463 = v2;
  v1464 = @"ReportAnomalyAPI";
  v383 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1464 forKeys:&v1463 count:1];
  v1468[1] = v383;
  v1467[2] = @"TargetDownloaded";
  v1461 = v2;
  v1462 = @"UpdateTarget";
  v382 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1462 forKeys:&v1461 count:1];
  v1468[2] = v382;
  v1467[3] = @"TargetPrepared";
  v1459 = v2;
  v1460 = @"UpdateTarget";
  v381 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1460 forKeys:&v1459 count:1];
  v1468[3] = v381;
  v1467[4] = @"TargetApplied";
  v1457 = v2;
  v1458 = @"UpdateTarget";
  v380 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1458 forKeys:&v1457 count:1];
  v1468[4] = v380;
  v1467[5] = @"TargetRollback";
  v1455 = v2;
  v1456 = @"DecideCancelBeforeRollback";
  v379 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1456 forKeys:&v1455 count:1];
  v1468[5] = v379;
  v1467[6] = @"ResumeCurrentUpdate";
  v1453 = v2;
  v1454 = @"ReportAnomalyAPI";
  v378 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1454 forKeys:&v1453 count:1];
  v1468[6] = v378;
  v1467[7] = @"CancelCurrentUpdate";
  v1451 = v3;
  v1452 = @"Canceling";
  v377 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1452 forKeys:&v1451 count:1];
  v1468[7] = v377;
  v1467[8] = @"SpaceCheckHaveSpace";
  v1449 = v2;
  v1450 = @"DecideDownloadSU";
  v376 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1450 forKeys:&v1449 count:1];
  v1468[8] = v376;
  v1467[9] = @"SpaceCheckNoSpace";
  v1447[0] = v3;
  v1447[1] = v2;
  v1448[0] = @"ReadyToBegin";
  v1448[1] = @"ReportAttemptFailure";
  v375 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1448 forKeys:v1447 count:2];
  v1468[9] = v375;
  v1467[10] = @"SpaceCheckFailed";
  v1445[0] = v3;
  v1445[1] = v2;
  v1446[0] = @"ReadyToBegin";
  v1446[1] = @"ReportAttemptFailure";
  v374 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1446 forKeys:v1445 count:2];
  v1468[10] = v374;
  v1467[11] = @"PerformDownloadSU";
  v1443[0] = v3;
  v1443[1] = v2;
  v1444[0] = @"DownloadingSU";
  v1444[1] = @"DownloadSU";
  v373 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1444 forKeys:v1443 count:2];
  v1468[11] = v373;
  v1467[12] = @"DownloadSuccessAtTarget";
  v1441[0] = v3;
  v1441[1] = v2;
  v1442[0] = @"SUDownloaded";
  v1442[1] = @"ReportSUDownloaded";
  v372 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1442 forKeys:v1441 count:2];
  v1468[12] = v372;
  v1467[13] = @"PerformPrepare";
  v1439[0] = v3;
  v1439[1] = v2;
  v1440[0] = @"Preparing";
  v1440[1] = @"PrepareUpdate";
  v371 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1440 forKeys:v1439 count:2];
  v1468[13] = v371;
  v1467[14] = @"PerformSuspend";
  v1437[0] = v3;
  v1437[1] = v2;
  v1438[0] = @"Suspending";
  v1438[1] = @"SuspendUpdate";
  v370 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1438 forKeys:v1437 count:2];
  v1468[14] = v370;
  v1467[15] = @"SuspendSuccessAtTarget";
  v1435[0] = v3;
  v1435[1] = v2;
  v1436[0] = @"Prepared";
  v1436[1] = @"ReportPrepared";
  v369 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1436 forKeys:v1435 count:2];
  v1468[15] = v369;
  v1467[16] = @"PerformResume";
  v1433[0] = v3;
  v1433[1] = v2;
  v1434[0] = @"Resuming";
  v1434[1] = @"ResumeUpdate";
  v368 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1434 forKeys:v1433 count:2];
  v1468[16] = v368;
  v1467[17] = @"ResumeSuccessAtTarget";
  v1431[0] = v3;
  v1431[1] = v2;
  v1432[0] = @"Prepared";
  v1432[1] = @"ReportPrepared";
  v367 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1432 forKeys:v1431 count:2];
  v1468[17] = v367;
  v1467[18] = @"PerformApply";
  v1429[0] = v3;
  v1429[1] = v2;
  v1430[0] = @"Applying";
  v1430[1] = @"ApplyUpdate";
  v366 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1430 forKeys:v1429 count:2];
  v1468[18] = v366;
  v1467[19] = @"ApplySuccess";
  v1427[0] = v3;
  v1427[1] = v2;
  v1428[0] = @"AwaitingReboot";
  v1428[1] = @"ReportApplied";
  v365 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1428 forKeys:v1427 count:2];
  v1468[19] = v365;
  v1467[20] = @"RB_CancelNonRollbackUpdate";
  v1425 = v3;
  v1426 = @"RB_Canceling";
  v364 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1426 forKeys:&v1425 count:1];
  v1468[20] = v364;
  v1467[21] = @"RB_BeginRollback";
  v1423[0] = v3;
  v1423[1] = v2;
  v1424[0] = @"RB_ReadyToBegin";
  v1424[1] = @"LoadBrainRollback";
  v363 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1424 forKeys:v1423 count:2];
  v1468[21] = v363;
  v1467[22] = @"RB_PerformLoadBrain";
  v1421[0] = v3;
  v1421[1] = v2;
  v1422[0] = @"RB_LoadingBrain";
  v1422[1] = @"LoadBrain";
  v362 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1422 forKeys:v1421 count:2];
  v1468[22] = v362;
  v1467[23] = @"RB_PerformRollbackPrepare";
  v1419[0] = v3;
  v1419[1] = v2;
  v1420[0] = @"RB_RollingBackPrepare";
  v1420[1] = @"RollbackUpdatePrepare";
  v361 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1420 forKeys:v1419 count:2];
  v1468[23] = v361;
  v1467[24] = @"RB_PerformRollbackSuspend";
  v1417[0] = v3;
  v1417[1] = v2;
  v1418[0] = @"RB_RollingBackSuspend";
  v1418[1] = @"RollbackUpdateSuspend";
  v360 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1418 forKeys:v1417 count:2];
  v1468[24] = v360;
  v1467[25] = @"RB_PerformRollbackResume";
  v1415[0] = v3;
  v1415[1] = v2;
  v1416[0] = @"RB_RollingBackResume";
  v1416[1] = @"RollbackUpdateResume";
  v359 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1416 forKeys:v1415 count:2];
  v1468[25] = v359;
  v1467[26] = @"RB_PerformRollbackApply";
  v1413[0] = v3;
  v1413[1] = v2;
  v1414[0] = @"RB_RollingBackApply";
  v1414[1] = @"RollbackUpdateApply";
  v358 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1414 forKeys:v1413 count:2];
  v1468[26] = v358;
  v1467[27] = @"RB_RollbackAppleSuccess";
  v1411[0] = v3;
  v1411[1] = v2;
  v1412[0] = @"AwaitingReboot";
  v1412[1] = @"ReportRollbackSucceeded";
  v357 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1412 forKeys:v1411 count:2];
  v1468[27] = v357;
  v356 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1468 forKeys:v1467 count:28];
  v1728[5] = v356;
  v1727[6] = @"DownloadingSU";
  v1409[0] = @"TargetBrainLoaded";
  v1407 = v2;
  v1408 = @"ReportAnomalyAPI";
  v355 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1408 forKeys:&v1407 count:1];
  v1410[0] = v355;
  v1409[1] = @"TargetDownloadPreflighted";
  v1405 = v2;
  v1406 = @"ReportAnomalyAPI";
  v354 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1406 forKeys:&v1405 count:1];
  v1410[1] = v354;
  v1409[2] = @"TargetDownloaded";
  v1403 = v2;
  v1404 = @"UpdateTargetReconfig";
  v353 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1404 forKeys:&v1403 count:1];
  v1410[2] = v353;
  v1409[3] = @"TargetPrepared";
  v1401 = v2;
  v1402 = @"UpdateTargetReconfig";
  v352 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1402 forKeys:&v1401 count:1];
  v1410[3] = v352;
  v1409[4] = @"TargetApplied";
  v1399 = v2;
  v1400 = @"UpdateTargetReconfig";
  v351 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1400 forKeys:&v1399 count:1];
  v1410[4] = v351;
  v1409[5] = @"TargetRollback";
  v1397 = v2;
  v1398 = @"DecideCancelBeforeRollback";
  v350 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1398 forKeys:&v1397 count:1];
  v1410[5] = v350;
  v1409[6] = @"ResumeCurrentUpdate";
  v1395 = v2;
  v1396 = @"ReportAnomalyAPI";
  v349 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1396 forKeys:&v1395 count:1];
  v1410[6] = v349;
  v1409[7] = @"CancelCurrentUpdate";
  v1393[0] = v3;
  v1393[1] = v2;
  v1394[0] = @"Canceling";
  v1394[1] = @"RemoveSU";
  v348 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1394 forKeys:v1393 count:2];
  v1410[7] = v348;
  v1409[8] = @"DownloadProgress";
  v1391 = v2;
  v1392 = @"ReportDownloadProgress";
  v347 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1392 forKeys:&v1391 count:1];
  v1410[8] = v347;
  v1409[9] = @"DownloadStalled";
  v1389[0] = v3;
  v1389[1] = v2;
  v1390[0] = @"DownloadSUStalled";
  v1390[1] = @"ReportDownloadStalled";
  v346 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1390 forKeys:v1389 count:2];
  v1410[9] = v346;
  v1409[10] = @"DownloadSuccess";
  v1387 = v2;
  v1388 = @"AdvanceSUDownloaded";
  v345 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1388 forKeys:&v1387 count:1];
  v1410[10] = v345;
  v1409[11] = @"DownloadFailed";
  v1385 = v2;
  v1386 = @"ChooseErrorSpaceCheck";
  v344 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1386 forKeys:&v1385 count:1];
  v1410[11] = v344;
  v1409[12] = @"DownloadSuccessAtTarget";
  v1383 = v3;
  v1384 = @"SUDownloaded";
  v343 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1384 forKeys:&v1383 count:1];
  v1410[12] = v343;
  v1409[13] = @"PerformPrepare";
  v1381[0] = v3;
  v1381[1] = v2;
  v1382[0] = @"Preparing";
  v1382[1] = @"PrepareUpdate";
  v342 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1382 forKeys:v1381 count:2];
  v1410[13] = v342;
  v1409[14] = @"PerformSuspend";
  v1379[0] = v3;
  v1379[1] = v2;
  v1380[0] = @"Suspending";
  v1380[1] = @"SuspendUpdate";
  v341 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1380 forKeys:v1379 count:2];
  v1410[14] = v341;
  v1409[15] = @"SuspendSuccessAtTarget";
  v1377[0] = v3;
  v1377[1] = v2;
  v1378[0] = @"Prepared";
  v1378[1] = @"ReportPrepared";
  v340 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1378 forKeys:v1377 count:2];
  v1410[15] = v340;
  v1409[16] = @"PerformResume";
  v1375[0] = v3;
  v1375[1] = v2;
  v1376[0] = @"Resuming";
  v1376[1] = @"ResumeUpdate";
  v339 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1376 forKeys:v1375 count:2];
  v1410[16] = v339;
  v1409[17] = @"ResumeSuccessAtTarget";
  v1373[0] = v3;
  v1373[1] = v2;
  v1374[0] = @"Prepared";
  v1374[1] = @"ReportPrepared";
  v338 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1374 forKeys:v1373 count:2];
  v1410[17] = v338;
  v1409[18] = @"PerformApply";
  v1371[0] = v3;
  v1371[1] = v2;
  v1372[0] = @"Applying";
  v1372[1] = @"ApplyUpdate";
  v337 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1372 forKeys:v1371 count:2];
  v1410[18] = v337;
  v1409[19] = @"ApplySuccess";
  v1369[0] = v3;
  v1369[1] = v2;
  v1370[0] = @"AwaitingReboot";
  v1370[1] = @"ReportApplied";
  v336 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1370 forKeys:v1369 count:2];
  v1410[19] = v336;
  v1409[20] = @"RB_CancelNonRollbackUpdate";
  v1367[0] = v3;
  v1367[1] = v2;
  v1368[0] = @"RB_Canceling";
  v1368[1] = @"RemoveSU";
  v335 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1368 forKeys:v1367 count:2];
  v1410[20] = v335;
  v1409[21] = @"RB_BeginRollback";
  v1365[0] = v3;
  v1365[1] = v2;
  v1366[0] = @"RB_ReadyToBegin";
  v1366[1] = @"LoadBrainRollback";
  v334 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1366 forKeys:v1365 count:2];
  v1410[21] = v334;
  v1409[22] = @"RB_PerformLoadBrain";
  v1363[0] = v3;
  v1363[1] = v2;
  v1364[0] = @"RB_LoadingBrain";
  v1364[1] = @"LoadBrain";
  v333 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1364 forKeys:v1363 count:2];
  v1410[22] = v333;
  v1409[23] = @"RB_PerformRollbackPrepare";
  v1361[0] = v3;
  v1361[1] = v2;
  v1362[0] = @"RB_RollingBackPrepare";
  v1362[1] = @"RollbackUpdatePrepare";
  v332 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1362 forKeys:v1361 count:2];
  v1410[23] = v332;
  v1409[24] = @"RB_PerformRollbackSuspend";
  v1359[0] = v3;
  v1359[1] = v2;
  v1360[0] = @"RB_RollingBackSuspend";
  v1360[1] = @"RollbackUpdateSuspend";
  v331 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1360 forKeys:v1359 count:2];
  v1410[24] = v331;
  v1409[25] = @"RB_PerformRollbackResume";
  v1357[0] = v3;
  v1357[1] = v2;
  v1358[0] = @"RB_RollingBackResume";
  v1358[1] = @"RollbackUpdateResume";
  v330 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1358 forKeys:v1357 count:2];
  v1410[25] = v330;
  v1409[26] = @"RB_PerformRollbackApply";
  v1355[0] = v3;
  v1355[1] = v2;
  v1356[0] = @"RB_RollingBackApply";
  v1356[1] = @"RollbackUpdateApply";
  v329 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1356 forKeys:v1355 count:2];
  v1410[26] = v329;
  v1409[27] = @"RB_RollbackAppleSuccess";
  v1353[0] = v3;
  v1353[1] = v2;
  v1354[0] = @"AwaitingReboot";
  v1354[1] = @"ReportRollbackSucceeded";
  v328 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1354 forKeys:v1353 count:2];
  v1410[27] = v328;
  v1409[28] = @"PerformErrorSpaceCheck";
  v1351[0] = v3;
  v1351[1] = v2;
  v1352[0] = @"CheckingSpaceAfterError";
  v1352[1] = @"CheckSpace";
  v327 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1352 forKeys:v1351 count:2];
  v1410[28] = v327;
  v1409[29] = @"SkipErrorSpaceCheck";
  v1349[0] = v3;
  v1349[1] = v2;
  v1350[0] = @"ReadyToBegin";
  v1350[1] = @"ReportAttemptFailure";
  v326 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1350 forKeys:v1349 count:2];
  v1410[29] = v326;
  v325 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1410 forKeys:v1409 count:30];
  v1728[6] = v325;
  v1727[7] = @"DownloadSUStalled";
  v1347[0] = @"TargetBrainLoaded";
  v1345 = v2;
  v1346 = @"ReportAnomalyAPI";
  v324 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1346 forKeys:&v1345 count:1];
  v1348[0] = v324;
  v1347[1] = @"TargetDownloadPreflighted";
  v1343 = v2;
  v1344 = @"ReportAnomalyAPI";
  v323 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1344 forKeys:&v1343 count:1];
  v1348[1] = v323;
  v1347[2] = @"TargetDownloaded";
  v1341 = v2;
  v1342 = @"UpdateTargetReconfig";
  v322 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1342 forKeys:&v1341 count:1];
  v1348[2] = v322;
  v1347[3] = @"TargetPrepared";
  v1339 = v2;
  v1340 = @"UpdateTargetReconfig";
  v320 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1340 forKeys:&v1339 count:1];
  v1348[3] = v320;
  v1347[4] = @"TargetApplied";
  v1337 = v2;
  v1338 = @"UpdateTargetReconfig";
  v319 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1338 forKeys:&v1337 count:1];
  v1348[4] = v319;
  v1347[5] = @"TargetRollback";
  v1335 = v2;
  v1336 = @"DecideCancelBeforeRollback";
  v318 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1336 forKeys:&v1335 count:1];
  v1348[5] = v318;
  v1347[6] = @"ResumeCurrentUpdate";
  v1333 = v2;
  v1334 = @"ReportAnomalyAPI";
  v317 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1334 forKeys:&v1333 count:1];
  v1348[6] = v317;
  v1347[7] = @"CancelCurrentUpdate";
  v1331[0] = v3;
  v1331[1] = v2;
  v1332[0] = @"Canceling";
  v1332[1] = @"RemoveSU";
  v316 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1332 forKeys:v1331 count:2];
  v1348[7] = v316;
  v1347[8] = @"DownloadProgress";
  v1329[0] = v3;
  v1329[1] = v2;
  v1330[0] = @"DownloadingSU";
  v1330[1] = @"ReportDownloadProgress";
  v315 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1330 forKeys:v1329 count:2];
  v1348[8] = v315;
  v1347[9] = @"DownloadStalled";
  v1327 = v2;
  v1328 = *MEMORY[0x277D647D0];
  v535 = v1328;
  v314 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1328 forKeys:&v1327 count:1];
  v1348[9] = v314;
  v1347[10] = @"DownloadSuccess";
  v1325 = v2;
  v1326 = @"AdvanceSUDownloaded";
  v313 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1326 forKeys:&v1325 count:1];
  v1348[10] = v313;
  v1347[11] = @"DownloadFailed";
  v1323 = v2;
  v1324 = @"ChooseErrorSpaceCheck";
  v312 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1324 forKeys:&v1323 count:1];
  v1348[11] = v312;
  v1347[12] = @"DownloadSuccessAtTarget";
  v1321 = v3;
  v1322 = @"SUDownloaded";
  v311 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1322 forKeys:&v1321 count:1];
  v1348[12] = v311;
  v1347[13] = @"PerformPrepare";
  v1319[0] = v3;
  v1319[1] = v2;
  v1320[0] = @"Preparing";
  v1320[1] = @"PrepareUpdate";
  v310 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1320 forKeys:v1319 count:2];
  v1348[13] = v310;
  v1347[14] = @"PerformSuspend";
  v1317[0] = v3;
  v1317[1] = v2;
  v1318[0] = @"Suspending";
  v1318[1] = @"SuspendUpdate";
  v309 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1318 forKeys:v1317 count:2];
  v1348[14] = v309;
  v1347[15] = @"SuspendSuccessAtTarget";
  v1315[0] = v3;
  v1315[1] = v2;
  v1316[0] = @"Prepared";
  v1316[1] = @"ReportPrepared";
  v308 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1316 forKeys:v1315 count:2];
  v1348[15] = v308;
  v1347[16] = @"PerformResume";
  v1313[0] = v3;
  v1313[1] = v2;
  v1314[0] = @"Resuming";
  v1314[1] = @"ResumeUpdate";
  v307 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1314 forKeys:v1313 count:2];
  v1348[16] = v307;
  v1347[17] = @"ResumeSuccessAtTarget";
  v1311[0] = v3;
  v1311[1] = v2;
  v1312[0] = @"Prepared";
  v1312[1] = @"ReportPrepared";
  v306 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1312 forKeys:v1311 count:2];
  v1348[17] = v306;
  v1347[18] = @"PerformApply";
  v1309[0] = v3;
  v1309[1] = v2;
  v1310[0] = @"Applying";
  v1310[1] = @"ApplyUpdate";
  v305 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1310 forKeys:v1309 count:2];
  v1348[18] = v305;
  v1347[19] = @"ApplySuccess";
  v1307[0] = v3;
  v1307[1] = v2;
  v1308[0] = @"AwaitingReboot";
  v1308[1] = @"ReportApplied";
  v304 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1308 forKeys:v1307 count:2];
  v1348[19] = v304;
  v1347[20] = @"RB_CancelNonRollbackUpdate";
  v1305[0] = v3;
  v1305[1] = v2;
  v1306[0] = @"RB_Canceling";
  v1306[1] = @"RemoveSU";
  v303 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1306 forKeys:v1305 count:2];
  v1348[20] = v303;
  v1347[21] = @"RB_BeginRollback";
  v1303[0] = v3;
  v1303[1] = v2;
  v1304[0] = @"RB_ReadyToBegin";
  v1304[1] = @"LoadBrainRollback";
  v302 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1304 forKeys:v1303 count:2];
  v1348[21] = v302;
  v1347[22] = @"RB_PerformLoadBrain";
  v1301[0] = v3;
  v1301[1] = v2;
  v1302[0] = @"RB_LoadingBrain";
  v1302[1] = @"LoadBrain";
  v300 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1302 forKeys:v1301 count:2];
  v1348[22] = v300;
  v1347[23] = @"RB_PerformRollbackPrepare";
  v1299[0] = v3;
  v1299[1] = v2;
  v1300[0] = @"RB_RollingBackPrepare";
  v1300[1] = @"RollbackUpdatePrepare";
  v299 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1300 forKeys:v1299 count:2];
  v1348[23] = v299;
  v1347[24] = @"RB_PerformRollbackSuspend";
  v1297[0] = v3;
  v1297[1] = v2;
  v1298[0] = @"RB_RollingBackSuspend";
  v1298[1] = @"RollbackUpdateSuspend";
  v298 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1298 forKeys:v1297 count:2];
  v1348[24] = v298;
  v1347[25] = @"RB_PerformRollbackResume";
  v1295[0] = v3;
  v1295[1] = v2;
  v1296[0] = @"RB_RollingBackResume";
  v1296[1] = @"RollbackUpdateResume";
  v297 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1296 forKeys:v1295 count:2];
  v1348[25] = v297;
  v1347[26] = @"RB_PerformRollbackApply";
  v1293[0] = v3;
  v1293[1] = v2;
  v1294[0] = @"RB_RollingBackApply";
  v1294[1] = @"RollbackUpdateApply";
  v296 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1294 forKeys:v1293 count:2];
  v1348[26] = v296;
  v1347[27] = @"RB_RollbackAppleSuccess";
  v1291[0] = v3;
  v1291[1] = v2;
  v1292[0] = @"AwaitingReboot";
  v1292[1] = @"ReportRollbackSucceeded";
  v295 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1292 forKeys:v1291 count:2];
  v1348[27] = v295;
  v1347[28] = @"PerformErrorSpaceCheck";
  v1289[0] = v3;
  v1289[1] = v2;
  v1290[0] = @"CheckingSpaceAfterError";
  v1290[1] = @"CheckSpace";
  v294 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1290 forKeys:v1289 count:2];
  v1348[28] = v294;
  v1347[29] = @"SkipErrorSpaceCheck";
  v1287[0] = v3;
  v1287[1] = v2;
  v1288[0] = @"ReadyToBegin";
  v1288[1] = @"ReportAttemptFailure";
  v293 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1288 forKeys:v1287 count:2];
  v1348[29] = v293;
  v292 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1348 forKeys:v1347 count:30];
  v1728[7] = v292;
  v1727[8] = @"SUDownloaded";
  v1285[0] = @"TargetBrainLoaded";
  v1283 = v2;
  v1284 = @"ReportAnomalyAPIEnd";
  v537 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1284 forKeys:&v1283 count:1];
  v1286[0] = v537;
  v1285[1] = @"TargetDownloadPreflighted";
  v1281 = v2;
  v1282 = @"ReportAnomalyAPIEnd";
  v291 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1282 forKeys:&v1281 count:1];
  v1286[1] = v291;
  v1285[2] = @"TargetDownloaded";
  v1279 = v2;
  v1280 = @"UpdateTarget";
  v290 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1280 forKeys:&v1279 count:1];
  v1286[2] = v290;
  v1285[3] = @"TargetPrepared";
  v1277 = v2;
  v1278 = @"DecidePrepareUpdate";
  v289 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1278 forKeys:&v1277 count:1];
  v1286[3] = v289;
  v1285[4] = @"TargetApplied";
  v1275 = v2;
  v1276 = @"DecidePrepareUpdate";
  v288 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1276 forKeys:&v1275 count:1];
  v1286[4] = v288;
  v1285[5] = @"TargetRollback";
  v1273 = v2;
  v1274 = @"DecideCancelBeforeRollback";
  v287 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1274 forKeys:&v1273 count:1];
  v1286[5] = v287;
  v1285[6] = @"ResumeCurrentUpdate";
  v1271 = v2;
  v1272 = @"ReportAnomalyAPIEnd";
  v286 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1272 forKeys:&v1271 count:1];
  v1286[6] = v286;
  v1285[7] = @"CancelCurrentUpdate";
  v1269[0] = v3;
  v1269[1] = v2;
  v1270[0] = @"Canceling";
  v1270[1] = @"RemoveSU";
  v285 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1270 forKeys:v1269 count:2];
  v1286[7] = v285;
  v1285[8] = @"PerformPrepare";
  v1267[0] = v3;
  v1267[1] = v2;
  v1268[0] = @"Preparing";
  v1268[1] = @"PrepareUpdate";
  v284 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1268 forKeys:v1267 count:2];
  v1286[8] = v284;
  v1285[9] = @"PerformSuspend";
  v1265[0] = v3;
  v1265[1] = v2;
  v1266[0] = @"Suspending";
  v1266[1] = @"SuspendUpdate";
  v283 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1266 forKeys:v1265 count:2];
  v1286[9] = v283;
  v1285[10] = @"SuspendSuccessAtTarget";
  v1263[0] = v3;
  v1263[1] = v2;
  v1264[0] = @"Prepared";
  v1264[1] = @"ReportPrepared";
  v282 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1264 forKeys:v1263 count:2];
  v1286[10] = v282;
  v1285[11] = @"PerformResume";
  v1261[0] = v3;
  v1261[1] = v2;
  v1262[0] = @"Resuming";
  v1262[1] = @"ResumeUpdate";
  v281 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1262 forKeys:v1261 count:2];
  v1286[11] = v281;
  v1285[12] = @"ResumeSuccessAtTarget";
  v1259[0] = v3;
  v1259[1] = v2;
  v1260[0] = @"Prepared";
  v1260[1] = @"ReportPrepared";
  v280 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1260 forKeys:v1259 count:2];
  v1286[12] = v280;
  v1285[13] = @"PerformApply";
  v1257[0] = v3;
  v1257[1] = v2;
  v1258[0] = @"Applying";
  v1258[1] = @"ApplyUpdate";
  v279 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1258 forKeys:v1257 count:2];
  v1286[13] = v279;
  v1285[14] = @"ApplySuccess";
  v1255[0] = v3;
  v1255[1] = v2;
  v1256[0] = @"AwaitingReboot";
  v1256[1] = @"ReportApplied";
  v278 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1256 forKeys:v1255 count:2];
  v1286[14] = v278;
  v1285[15] = @"RB_CancelNonRollbackUpdate";
  v1253[0] = v3;
  v1253[1] = v2;
  v1254[0] = @"RB_Canceling";
  v1254[1] = @"RemoveSU";
  v277 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1254 forKeys:v1253 count:2];
  v1286[15] = v277;
  v1285[16] = @"RB_BeginRollback";
  v1251[0] = v3;
  v1251[1] = v2;
  v1252[0] = @"RB_ReadyToBegin";
  v1252[1] = @"LoadBrainRollback";
  v276 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1252 forKeys:v1251 count:2];
  v1286[16] = v276;
  v1285[17] = @"RB_PerformLoadBrain";
  v1249[0] = v3;
  v1249[1] = v2;
  v1250[0] = @"RB_LoadingBrain";
  v1250[1] = @"LoadBrain";
  v275 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1250 forKeys:v1249 count:2];
  v1286[17] = v275;
  v1285[18] = @"RB_PerformRollbackPrepare";
  v1247[0] = v3;
  v1247[1] = v2;
  v1248[0] = @"RB_RollingBackPrepare";
  v1248[1] = @"RollbackUpdatePrepare";
  v274 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1248 forKeys:v1247 count:2];
  v1286[18] = v274;
  v1285[19] = @"RB_PerformRollbackSuspend";
  v1245[0] = v3;
  v1245[1] = v2;
  v1246[0] = @"RB_RollingBackSuspend";
  v1246[1] = @"RollbackUpdateSuspend";
  v273 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1246 forKeys:v1245 count:2];
  v1286[19] = v273;
  v1285[20] = @"RB_PerformRollbackResume";
  v1243[0] = v3;
  v1243[1] = v2;
  v1244[0] = @"RB_RollingBackResume";
  v1244[1] = @"RollbackUpdateResume";
  v272 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1244 forKeys:v1243 count:2];
  v1286[20] = v272;
  v1285[21] = @"RB_PerformRollbackApply";
  v1241[0] = v3;
  v1241[1] = v2;
  v1242[0] = @"RB_RollingBackApply";
  v1242[1] = @"RollbackUpdateApply";
  v271 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1242 forKeys:v1241 count:2];
  v1286[21] = v271;
  v1285[22] = @"RB_RollbackAppleSuccess";
  v1239[0] = v3;
  v1239[1] = v2;
  v1240[0] = @"AwaitingReboot";
  v1240[1] = @"ReportRollbackSucceeded";
  v270 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1240 forKeys:v1239 count:2];
  v1286[22] = v270;
  v269 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1286 forKeys:v1285 count:23];
  v1728[8] = v269;
  v1727[9] = @"Preparing";
  v1237[0] = @"TargetBrainLoaded";
  v1235 = v2;
  v1236 = @"ReportAnomalyAPI";
  v268 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1236 forKeys:&v1235 count:1];
  v1238[0] = v268;
  v1237[1] = @"TargetDownloadPreflighted";
  v1233 = v2;
  v1234 = @"ReportAnomalyAPI";
  v267 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1234 forKeys:&v1233 count:1];
  v1238[1] = v267;
  v1237[2] = @"TargetDownloaded";
  v1231 = v2;
  v1232 = @"ReportAnomalyAPI";
  v266 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1232 forKeys:&v1231 count:1];
  v1238[2] = v266;
  v1237[3] = @"TargetPrepared";
  v1229 = v2;
  v1230 = @"UpdateTarget";
  v265 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1230 forKeys:&v1229 count:1];
  v1238[3] = v265;
  v1237[4] = @"TargetApplied";
  v1227 = v2;
  v1228 = @"UpdateTarget";
  v264 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1228 forKeys:&v1227 count:1];
  v1238[4] = v264;
  v1237[5] = @"TargetRollback";
  v1225 = v2;
  v1226 = @"DecideCancelBeforeRollback";
  v263 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1226 forKeys:&v1225 count:1];
  v1238[5] = v263;
  v1237[6] = @"ResumeCurrentUpdate";
  v1223 = v2;
  v1224 = @"ReportAnomalyAPI";
  v262 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1224 forKeys:&v1223 count:1];
  v1238[6] = v262;
  v1237[7] = @"CancelCurrentUpdate";
  v1221[0] = v3;
  v1221[1] = v2;
  v1222[0] = @"Canceling";
  v1222[1] = @"CancelPrepare";
  v261 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1222 forKeys:v1221 count:2];
  v1238[7] = v261;
  v1237[8] = @"PrepareProgress";
  v1219 = v2;
  v1220 = @"ReportPrepareProgress";
  v260 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1220 forKeys:&v1219 count:1];
  v1238[8] = v260;
  v1237[9] = @"PrepareSuccess";
  v1217 = v2;
  v1218 = @"DecideSuspendUpdate";
  v259 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1218 forKeys:&v1217 count:1];
  v1238[9] = v259;
  v1237[10] = @"PrepareFailed";
  v1215[0] = v3;
  v1215[1] = v2;
  v1216[0] = @"RemovingSU";
  v1216[1] = @"RemoveSU";
  v258 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1216 forKeys:v1215 count:2];
  v1238[10] = v258;
  v1237[11] = @"PerformSuspend";
  v1213[0] = v3;
  v1213[1] = v2;
  v1214[0] = @"Suspending";
  v1214[1] = @"SuspendUpdate";
  v541 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1214 forKeys:v1213 count:2];
  v1238[11] = v541;
  v1237[12] = @"SuspendSuccessAtTarget";
  v1211[0] = v3;
  v1211[1] = v2;
  v1212[0] = @"Prepared";
  v1212[1] = @"ReportPrepared";
  v257 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1212 forKeys:v1211 count:2];
  v1238[12] = v257;
  v1237[13] = @"PerformResume";
  v1209[0] = v3;
  v1209[1] = v2;
  v1210[0] = @"Resuming";
  v1210[1] = @"ResumeUpdate";
  v256 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1210 forKeys:v1209 count:2];
  v1238[13] = v256;
  v1237[14] = @"ResumeSuccessAtTarget";
  v1207[0] = v3;
  v1207[1] = v2;
  v1208[0] = @"Prepared";
  v1208[1] = @"ReportPrepared";
  v255 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1208 forKeys:v1207 count:2];
  v1238[14] = v255;
  v1237[15] = @"PerformApply";
  v1205[0] = v3;
  v1205[1] = v2;
  v1206[0] = @"Applying";
  v1206[1] = @"ApplyUpdate";
  v254 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1206 forKeys:v1205 count:2];
  v1238[15] = v254;
  v1237[16] = @"ApplySuccess";
  v1203[0] = v3;
  v1203[1] = v2;
  v1204[0] = @"AwaitingReboot";
  v1204[1] = @"ReportApplied";
  v253 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1204 forKeys:v1203 count:2];
  v1238[16] = v253;
  v1237[17] = @"RB_CancelNonRollbackUpdate";
  v1201[0] = v3;
  v1201[1] = v2;
  v1202[0] = @"RB_Canceling";
  v1202[1] = @"CancelPrepare";
  v252 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1202 forKeys:v1201 count:2];
  v1238[17] = v252;
  v1237[18] = @"RB_BeginRollback";
  v1199[0] = v3;
  v1199[1] = v2;
  v1200[0] = @"RB_ReadyToBegin";
  v1200[1] = @"LoadBrainRollback";
  v251 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1200 forKeys:v1199 count:2];
  v1238[18] = v251;
  v1237[19] = @"RB_PerformLoadBrain";
  v1197[0] = v3;
  v1197[1] = v2;
  v1198[0] = @"RB_LoadingBrain";
  v1198[1] = @"LoadBrain";
  v250 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1198 forKeys:v1197 count:2];
  v1238[19] = v250;
  v1237[20] = @"RB_PerformRollbackPrepare";
  v1195[0] = v3;
  v1195[1] = v2;
  v1196[0] = @"RB_RollingBackPrepare";
  v1196[1] = @"RollbackUpdatePrepare";
  v249 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1196 forKeys:v1195 count:2];
  v1238[20] = v249;
  v1237[21] = @"RB_PerformRollbackSuspend";
  v1193[0] = v3;
  v1193[1] = v2;
  v1194[0] = @"RB_RollingBackSuspend";
  v1194[1] = @"RollbackUpdateSuspend";
  v248 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1194 forKeys:v1193 count:2];
  v1238[21] = v248;
  v1237[22] = @"RB_PerformRollbackResume";
  v1191[0] = v3;
  v1191[1] = v2;
  v1192[0] = @"RB_RollingBackResume";
  v1192[1] = @"RollbackUpdateResume";
  v247 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1192 forKeys:v1191 count:2];
  v1238[22] = v247;
  v1237[23] = @"RB_PerformRollbackApply";
  v1189[0] = v3;
  v1189[1] = v2;
  v1190[0] = @"RB_RollingBackApply";
  v1190[1] = @"RollbackUpdateApply";
  v246 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1190 forKeys:v1189 count:2];
  v1238[23] = v246;
  v1237[24] = @"RB_RollbackAppleSuccess";
  v1187[0] = v3;
  v1187[1] = v2;
  v1188[0] = @"AwaitingReboot";
  v1188[1] = @"ReportRollbackSucceeded";
  v245 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1188 forKeys:v1187 count:2];
  v1238[24] = v245;
  v244 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1238 forKeys:v1237 count:25];
  v1728[9] = v244;
  v1727[10] = @"Suspending";
  v1185[0] = @"TargetBrainLoaded";
  v1183 = v2;
  v1184 = @"ReportAnomalyAPI";
  v243 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1184 forKeys:&v1183 count:1];
  v1186[0] = v243;
  v1185[1] = @"TargetDownloadPreflighted";
  v1181 = v2;
  v1182 = @"ReportAnomalyAPI";
  v242 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1182 forKeys:&v1181 count:1];
  v1186[1] = v242;
  v1185[2] = @"TargetDownloaded";
  v1179 = v2;
  v1180 = @"ReportAnomalyAPI";
  v241 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1180 forKeys:&v1179 count:1];
  v1186[2] = v241;
  v1185[3] = @"TargetPrepared";
  v1177 = v2;
  v1178 = @"UpdateTarget";
  v240 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1178 forKeys:&v1177 count:1];
  v1186[3] = v240;
  v1185[4] = @"TargetApplied";
  v1175 = v2;
  v1176 = @"UpdateTarget";
  v239 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1176 forKeys:&v1175 count:1];
  v1186[4] = v239;
  v1185[5] = @"TargetRollback";
  v1173 = v2;
  v1174 = @"DecideCancelBeforeRollback";
  v238 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1174 forKeys:&v1173 count:1];
  v1186[5] = v238;
  v1185[6] = @"ResumeCurrentUpdate";
  v1171 = v2;
  v1172 = @"ReportAnomalyAPI";
  v237 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1172 forKeys:&v1171 count:1];
  v1186[6] = v237;
  v1185[7] = @"CancelCurrentUpdate";
  v1169 = v3;
  v1170 = @"Canceling";
  v236 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1170 forKeys:&v1169 count:1];
  v1186[7] = v236;
  v1185[8] = @"SuspendSuccess";
  v1167 = v2;
  v1168 = @"AdvanceSuspended";
  v235 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1168 forKeys:&v1167 count:1];
  v1186[8] = v235;
  v1185[9] = @"SuspendFailed";
  v1165[0] = v3;
  v1165[1] = v2;
  v1166[0] = @"RemovingSU";
  v1166[1] = @"RemoveSU";
  v234 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1166 forKeys:v1165 count:2];
  v1186[9] = v234;
  v1185[10] = @"SuspendSuccessAtTarget";
  v1163[0] = v3;
  v1163[1] = v2;
  v1164[0] = @"Prepared";
  v1164[1] = @"ReportPrepared";
  v233 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1164 forKeys:v1163 count:2];
  v1186[10] = v233;
  v1185[11] = @"PerformResume";
  v1161[0] = v3;
  v1161[1] = v2;
  v1162[0] = @"Resuming";
  v1162[1] = @"ResumeUpdate";
  v232 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1162 forKeys:v1161 count:2];
  v1186[11] = v232;
  v1185[12] = @"ResumeSuccessAtTarget";
  v1159[0] = v3;
  v1159[1] = v2;
  v1160[0] = @"Prepared";
  v1160[1] = @"ReportPrepared";
  v231 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1160 forKeys:v1159 count:2];
  v1186[12] = v231;
  v1185[13] = @"PerformApply";
  v1157[0] = v3;
  v1157[1] = v2;
  v1158[0] = @"Applying";
  v1158[1] = @"ApplyUpdate";
  v230 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1158 forKeys:v1157 count:2];
  v1186[13] = v230;
  v1185[14] = @"ApplySuccess";
  v1155[0] = v3;
  v1155[1] = v2;
  v1156[0] = @"AwaitingReboot";
  v1156[1] = @"ReportApplied";
  v229 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1156 forKeys:v1155 count:2];
  v1186[14] = v229;
  v1185[15] = @"RB_CancelNonRollbackUpdate";
  v1153 = v3;
  v1154 = @"RB_Canceling";
  v228 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1154 forKeys:&v1153 count:1];
  v1186[15] = v228;
  v1185[16] = @"RB_BeginRollback";
  v1151[0] = v3;
  v1151[1] = v2;
  v1152[0] = @"RB_ReadyToBegin";
  v1152[1] = @"LoadBrainRollback";
  v227 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1152 forKeys:v1151 count:2];
  v1186[16] = v227;
  v1185[17] = @"RB_PerformLoadBrain";
  v1149[0] = v3;
  v1149[1] = v2;
  v1150[0] = @"RB_LoadingBrain";
  v1150[1] = @"LoadBrain";
  v226 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1150 forKeys:v1149 count:2];
  v1186[17] = v226;
  v1185[18] = @"RB_PerformRollbackPrepare";
  v1147[0] = v3;
  v1147[1] = v2;
  v1148[0] = @"RB_RollingBackPrepare";
  v1148[1] = @"RollbackUpdatePrepare";
  v225 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1148 forKeys:v1147 count:2];
  v1186[18] = v225;
  v1185[19] = @"RB_PerformRollbackSuspend";
  v1145[0] = v3;
  v1145[1] = v2;
  v1146[0] = @"RB_RollingBackSuspend";
  v1146[1] = @"RollbackUpdateSuspend";
  v224 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1146 forKeys:v1145 count:2];
  v1186[19] = v224;
  v1185[20] = @"RB_PerformRollbackResume";
  v1143[0] = v3;
  v1143[1] = v2;
  v1144[0] = @"RB_RollingBackResume";
  v1144[1] = @"RollbackUpdateResume";
  v223 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1144 forKeys:v1143 count:2];
  v1186[20] = v223;
  v1185[21] = @"RB_PerformRollbackApply";
  v1141[0] = v3;
  v1141[1] = v2;
  v1142[0] = @"RB_RollingBackApply";
  v1142[1] = @"RollbackUpdateApply";
  v222 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1142 forKeys:v1141 count:2];
  v1186[21] = v222;
  v1185[22] = @"RB_RollbackAppleSuccess";
  v1139[0] = v3;
  v1139[1] = v2;
  v1140[0] = @"AwaitingReboot";
  v1140[1] = @"ReportRollbackSucceeded";
  v221 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1140 forKeys:v1139 count:2];
  v1186[22] = v221;
  v220 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1186 forKeys:v1185 count:23];
  v1728[10] = v220;
  v1727[11] = @"Prepared";
  v1137[0] = @"TargetBrainLoaded";
  v1135 = v2;
  v1136 = @"ReportAnomalyAPIEnd";
  v219 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1136 forKeys:&v1135 count:1];
  v1138[0] = v219;
  v1137[1] = @"TargetDownloadPreflighted";
  v1133 = v2;
  v1134 = @"ReportAnomalyAPIEnd";
  v218 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1134 forKeys:&v1133 count:1];
  v1138[1] = v218;
  v1137[2] = @"TargetDownloaded";
  v1131 = v2;
  v1132 = @"ReportAnomalyAPIEnd";
  v217 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1132 forKeys:&v1131 count:1];
  v1138[2] = v217;
  v1137[3] = @"TargetPrepared";
  v1129 = v2;
  v1130 = @"UpdateTarget";
  v216 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1130 forKeys:&v1129 count:1];
  v1138[3] = v216;
  v1137[4] = @"TargetApplied";
  v1127 = v2;
  v1128 = @"DecideResumeUpdate";
  v215 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1128 forKeys:&v1127 count:1];
  v1138[4] = v215;
  v1137[5] = @"TargetRollback";
  v1125 = v2;
  v1126 = @"DecideCancelBeforeRollback";
  v214 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1126 forKeys:&v1125 count:1];
  v1138[5] = v214;
  v1137[6] = @"ResumeCurrentUpdate";
  v1123[0] = v3;
  v1123[1] = v2;
  v1124[0] = @"ResumingCurrent";
  v1124[1] = @"ResumeCurrentUpdate";
  v213 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1124 forKeys:v1123 count:2];
  v1138[6] = v213;
  v1137[7] = @"CancelCurrentUpdate";
  v1121[0] = v3;
  v1121[1] = v2;
  v1122[0] = @"Canceling";
  v1122[1] = @"RemovePrepared";
  v212 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1122 forKeys:v1121 count:2];
  v1138[7] = v212;
  v1137[8] = @"PerformResume";
  v1119[0] = v3;
  v1119[1] = v2;
  v1120[0] = @"Resuming";
  v1120[1] = @"ResumeUpdate";
  v211 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1120 forKeys:v1119 count:2];
  v1138[8] = v211;
  v1137[9] = @"ResumeSuccessAtTarget";
  v1117 = v2;
  v1118 = @"ReportPrepared";
  v210 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1118 forKeys:&v1117 count:1];
  v1138[9] = v210;
  v1137[10] = @"PerformApply";
  v1115[0] = v3;
  v1115[1] = v2;
  v1116[0] = @"Applying";
  v1116[1] = @"ApplyUpdate";
  v209 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1116 forKeys:v1115 count:2];
  v1138[10] = v209;
  v1137[11] = @"ApplySuccess";
  v1113[0] = v3;
  v1113[1] = v2;
  v1114[0] = @"AwaitingReboot";
  v1114[1] = @"ReportApplied";
  v208 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1114 forKeys:v1113 count:2];
  v1138[11] = v208;
  v1137[12] = @"RB_CancelNonRollbackUpdate";
  v1111[0] = v3;
  v1111[1] = v2;
  v1112[0] = @"RB_Canceling";
  v1112[1] = @"RemovePrepared";
  v207 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1112 forKeys:v1111 count:2];
  v1138[12] = v207;
  v1137[13] = @"RB_BeginRollback";
  v1109[0] = v3;
  v1109[1] = v2;
  v1110[0] = @"RB_ReadyToBegin";
  v1110[1] = @"LoadBrainRollback";
  v206 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1110 forKeys:v1109 count:2];
  v1138[13] = v206;
  v1137[14] = @"RB_PerformLoadBrain";
  v1107[0] = v3;
  v1107[1] = v2;
  v1108[0] = @"RB_LoadingBrain";
  v1108[1] = @"LoadBrain";
  v205 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1108 forKeys:v1107 count:2];
  v1138[14] = v205;
  v1137[15] = @"RB_PerformRollbackPrepare";
  v1105[0] = v3;
  v1105[1] = v2;
  v1106[0] = @"RB_RollingBackPrepare";
  v1106[1] = @"RollbackUpdatePrepare";
  v204 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1106 forKeys:v1105 count:2];
  v1138[15] = v204;
  v1137[16] = @"RB_PerformRollbackSuspend";
  v1103[0] = v3;
  v1103[1] = v2;
  v1104[0] = @"RB_RollingBackSuspend";
  v1104[1] = @"RollbackUpdateSuspend";
  v203 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1104 forKeys:v1103 count:2];
  v1138[16] = v203;
  v1137[17] = @"RB_PerformRollbackResume";
  v1101[0] = v3;
  v1101[1] = v2;
  v1102[0] = @"RB_RollingBackResume";
  v1102[1] = @"RollbackUpdateResume";
  v202 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1102 forKeys:v1101 count:2];
  v1138[17] = v202;
  v1137[18] = @"RB_PerformRollbackApply";
  v1099[0] = v3;
  v1099[1] = v2;
  v1100[0] = @"RB_RollingBackApply";
  v1100[1] = @"RollbackUpdateApply";
  v201 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1100 forKeys:v1099 count:2];
  v1138[18] = v201;
  v1137[19] = @"RB_RollbackAppleSuccess";
  v1097[0] = v3;
  v1097[1] = v2;
  v1098[0] = @"AwaitingReboot";
  v1098[1] = @"ReportRollbackSucceeded";
  v200 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1098 forKeys:v1097 count:2];
  v1138[19] = v200;
  v199 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1138 forKeys:v1137 count:20];
  v1728[11] = v199;
  v1727[12] = @"ResumingCurrent";
  v1095[0] = @"TargetBrainLoaded";
  v1093 = v2;
  v1094 = @"ReportAnomalyAPI";
  v198 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1094 forKeys:&v1093 count:1];
  v1096[0] = v198;
  v1095[1] = @"TargetDownloadPreflighted";
  v1091 = v2;
  v1092 = @"ReportAnomalyAPI";
  v197 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1092 forKeys:&v1091 count:1];
  v1096[1] = v197;
  v1095[2] = @"TargetDownloaded";
  v1089 = v2;
  v1090 = @"ReportAnomalyAPI";
  v196 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1090 forKeys:&v1089 count:1];
  v1096[2] = v196;
  v1095[3] = @"TargetPrepared";
  v1087 = v2;
  v1088 = @"UpdateTarget";
  v195 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1088 forKeys:&v1087 count:1];
  v1096[3] = v195;
  v1095[4] = @"TargetApplied";
  v1085[0] = v3;
  v1085[1] = v2;
  v1086[0] = @"Resuming";
  v1086[1] = @"UpdateTarget";
  v194 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1086 forKeys:v1085 count:2];
  v1096[4] = v194;
  v1095[5] = @"TargetRollback";
  v1083 = v2;
  v1084 = @"DecideCancelBeforeRollback";
  v193 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1084 forKeys:&v1083 count:1];
  v1096[5] = v193;
  v1095[6] = @"ResumeCurrentUpdate";
  v1081 = v2;
  v1082 = @"ReportAnomalyAPI";
  v192 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1082 forKeys:&v1081 count:1];
  v1096[6] = v192;
  v1095[7] = @"CancelCurrentUpdate";
  v1079 = v3;
  v1080 = @"Canceling";
  v191 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1080 forKeys:&v1079 count:1];
  v1096[7] = v191;
  v1095[8] = @"ResumeSuccess";
  v1077[0] = v3;
  v1077[1] = v2;
  v1078[0] = @"Prepared";
  v1078[1] = @"ReportResumeCurrentSuccess";
  v190 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1078 forKeys:v1077 count:2];
  v1096[8] = v190;
  v1095[9] = @"ResumeFailed";
  v1075[0] = v3;
  v1075[1] = v2;
  v1076[0] = @"Prepared";
  v1076[1] = @"ReportResumeCurrentFailed";
  v189 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1076 forKeys:v1075 count:2];
  v1096[9] = v189;
  v1095[10] = @"RB_CancelNonRollbackUpdate";
  v1073 = v3;
  v1074 = @"RB_Canceling";
  v188 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1074 forKeys:&v1073 count:1];
  v1096[10] = v188;
  v1095[11] = @"RB_BeginRollback";
  v1071[0] = v3;
  v1071[1] = v2;
  v1072[0] = @"RB_ReadyToBegin";
  v1072[1] = @"LoadBrainRollback";
  v187 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1072 forKeys:v1071 count:2];
  v1096[11] = v187;
  v1095[12] = @"RB_PerformLoadBrain";
  v1069[0] = v3;
  v1069[1] = v2;
  v1070[0] = @"RB_LoadingBrain";
  v1070[1] = @"LoadBrain";
  v186 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1070 forKeys:v1069 count:2];
  v1096[12] = v186;
  v1095[13] = @"RB_PerformRollbackPrepare";
  v1067[0] = v3;
  v1067[1] = v2;
  v1068[0] = @"RB_RollingBackPrepare";
  v1068[1] = @"RollbackUpdatePrepare";
  v185 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1068 forKeys:v1067 count:2];
  v1096[13] = v185;
  v1095[14] = @"RB_PerformRollbackSuspend";
  v1065[0] = v3;
  v1065[1] = v2;
  v1066[0] = @"RB_RollingBackSuspend";
  v1066[1] = @"RollbackUpdateSuspend";
  v184 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1066 forKeys:v1065 count:2];
  v1096[14] = v184;
  v1095[15] = @"RB_PerformRollbackResume";
  v1063[0] = v3;
  v1063[1] = v2;
  v1064[0] = @"RB_RollingBackResume";
  v1064[1] = @"RollbackUpdateResume";
  v183 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1064 forKeys:v1063 count:2];
  v1096[15] = v183;
  v1095[16] = @"RB_PerformRollbackApply";
  v1061[0] = v3;
  v1061[1] = v2;
  v1062[0] = @"RB_RollingBackApply";
  v1062[1] = @"RollbackUpdateApply";
  v182 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1062 forKeys:v1061 count:2];
  v1096[16] = v182;
  v1095[17] = @"RB_RollbackAppleSuccess";
  v1059[0] = v3;
  v1059[1] = v2;
  v1060[0] = @"AwaitingReboot";
  v1060[1] = @"ReportRollbackSucceeded";
  v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1060 forKeys:v1059 count:2];
  v1096[17] = v181;
  v180 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1096 forKeys:v1095 count:18];
  v1728[12] = v180;
  v1727[13] = @"Resuming";
  v1057[0] = @"TargetBrainLoaded";
  v1055 = v2;
  v1056 = @"ReportAnomalyAPI";
  v552 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1056 forKeys:&v1055 count:1];
  v1058[0] = v552;
  v1057[1] = @"TargetDownloadPreflighted";
  v1053 = v2;
  v1054 = @"ReportAnomalyAPI";
  v179 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1054 forKeys:&v1053 count:1];
  v1058[1] = v179;
  v1057[2] = @"TargetDownloaded";
  v1051 = v2;
  v1052 = @"ReportAnomalyAPI";
  v178 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1052 forKeys:&v1051 count:1];
  v1058[2] = v178;
  v1057[3] = @"TargetPrepared";
  v1049 = v2;
  v1050 = @"UpdateTarget";
  v177 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1050 forKeys:&v1049 count:1];
  v1058[3] = v177;
  v1057[4] = @"TargetApplied";
  v1047 = v2;
  v1048 = @"ReportAnomalyAPI";
  v176 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1048 forKeys:&v1047 count:1];
  v1058[4] = v176;
  v1057[5] = @"TargetRollback";
  v1045 = v2;
  v1046 = @"DecideCancelBeforeRollback";
  v175 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1046 forKeys:&v1045 count:1];
  v1058[5] = v175;
  v1057[6] = @"ResumeCurrentUpdate";
  v1043 = v2;
  v1044 = @"ReportAnomalyAPI";
  v174 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1044 forKeys:&v1043 count:1];
  v1058[6] = v174;
  v1057[7] = @"CancelCurrentUpdate";
  v1041 = v3;
  v1042 = @"Canceling";
  v173 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1042 forKeys:&v1041 count:1];
  v1058[7] = v173;
  v1057[8] = @"ResumeSuccess";
  v1039 = v2;
  v1040 = @"DecideApplyUpdate";
  v172 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1040 forKeys:&v1039 count:1];
  v1058[8] = v172;
  v1057[9] = @"ResumeFailed";
  v1037[0] = v3;
  v1037[1] = v2;
  v1038[0] = @"Prepared";
  v1038[1] = @"ReportApplyFailed";
  v171 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1038 forKeys:v1037 count:2];
  v1058[9] = v171;
  v1057[10] = @"ResumeSuccessAtTarget";
  v1035[0] = v3;
  v1035[1] = v2;
  v1036[0] = @"Prepared";
  v1036[1] = @"ReportPrepared";
  v560 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1036 forKeys:v1035 count:2];
  v1058[10] = v560;
  v1057[11] = @"PerformApply";
  v1033[0] = v3;
  v1033[1] = v2;
  v1034[0] = @"Applying";
  v1034[1] = @"ApplyUpdate";
  v561 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1034 forKeys:v1033 count:2];
  v1058[11] = v561;
  v1057[12] = @"ApplySuccess";
  v1031[0] = v3;
  v1031[1] = v2;
  v1032[0] = @"AwaitingReboot";
  v1032[1] = @"ReportApplied";
  v554 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1032 forKeys:v1031 count:2];
  v1058[12] = v554;
  v1057[13] = @"RB_CancelNonRollbackUpdate";
  v1029 = v3;
  v1030 = @"RB_Canceling";
  v170 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1030 forKeys:&v1029 count:1];
  v1058[13] = v170;
  v1057[14] = @"RB_BeginRollback";
  v1027[0] = v3;
  v1027[1] = v2;
  v1028[0] = @"RB_ReadyToBegin";
  v1028[1] = @"LoadBrainRollback";
  v168 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1028 forKeys:v1027 count:2];
  v1058[14] = v168;
  v1057[15] = @"RB_PerformLoadBrain";
  v1025[0] = v3;
  v1025[1] = v2;
  v1026[0] = @"RB_LoadingBrain";
  v1026[1] = @"LoadBrain";
  v167 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1026 forKeys:v1025 count:2];
  v1058[15] = v167;
  v1057[16] = @"RB_PerformRollbackPrepare";
  v1023[0] = v3;
  v1023[1] = v2;
  v1024[0] = @"RB_RollingBackPrepare";
  v1024[1] = @"RollbackUpdatePrepare";
  v166 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1024 forKeys:v1023 count:2];
  v1058[16] = v166;
  v1057[17] = @"RB_PerformRollbackSuspend";
  v1021[0] = v3;
  v1021[1] = v2;
  v1022[0] = @"RB_RollingBackSuspend";
  v1022[1] = @"RollbackUpdateSuspend";
  v165 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1022 forKeys:v1021 count:2];
  v1058[17] = v165;
  v1057[18] = @"RB_PerformRollbackResume";
  v1019[0] = v3;
  v1019[1] = v2;
  v1020[0] = @"RB_RollingBackResume";
  v1020[1] = @"RollbackUpdateResume";
  v164 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1020 forKeys:v1019 count:2];
  v1058[18] = v164;
  v1057[19] = @"RB_PerformRollbackApply";
  v1017[0] = v3;
  v1017[1] = v2;
  v1018[0] = @"RB_RollingBackApply";
  v1018[1] = @"RollbackUpdateApply";
  v163 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1018 forKeys:v1017 count:2];
  v1058[19] = v163;
  v1057[20] = @"RB_RollbackAppleSuccess";
  v1015[0] = v3;
  v1015[1] = v2;
  v1016[0] = @"AwaitingReboot";
  v1016[1] = @"ReportRollbackSucceeded";
  v162 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1016 forKeys:v1015 count:2];
  v1058[20] = v162;
  v161 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1058 forKeys:v1057 count:21];
  v1728[13] = v161;
  v1727[14] = @"Applying";
  v1013[0] = @"TargetBrainLoaded";
  v1011 = v2;
  v1012 = @"ReportAnomalyAPI";
  v551 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1012 forKeys:&v1011 count:1];
  v1014[0] = v551;
  v1013[1] = @"TargetDownloadPreflighted";
  v1009 = v2;
  v1010 = @"ReportAnomalyAPI";
  v160 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1010 forKeys:&v1009 count:1];
  v1014[1] = v160;
  v1013[2] = @"TargetDownloaded";
  v1007 = v2;
  v1008 = @"ReportAnomalyAPI";
  v159 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1008 forKeys:&v1007 count:1];
  v1014[2] = v159;
  v1013[3] = @"TargetPrepared";
  v1005 = v2;
  v1006 = @"ReportAnomalyAPI";
  v158 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1006 forKeys:&v1005 count:1];
  v1014[3] = v158;
  v1013[4] = @"TargetApplied";
  v1003 = v2;
  v1004 = @"ReportAnomalyAPI";
  v157 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1004 forKeys:&v1003 count:1];
  v1014[4] = v157;
  v1013[5] = @"TargetRollback";
  v1001 = v2;
  v1002 = @"ReportAnomalyAPI";
  v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1002 forKeys:&v1001 count:1];
  v1014[5] = v156;
  v1013[6] = @"ResumeCurrentUpdate";
  v999 = v2;
  v1000 = @"ReportAnomalyAPI";
  v155 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1000 forKeys:&v999 count:1];
  v1014[6] = v155;
  v1013[7] = @"CancelCurrentUpdate";
  v997 = v2;
  v998 = @"ReportAnomalyAPI";
  v154 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v998 forKeys:&v997 count:1];
  v1014[7] = v154;
  v1013[8] = @"ApplyProgress";
  v995 = v2;
  v996 = @"ReportApplyProgress";
  v153 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v996 forKeys:&v995 count:1];
  v1014[8] = v153;
  v1013[9] = @"ApplySuccess";
  v993[0] = v3;
  v993[1] = v2;
  v994[0] = @"AwaitingReboot";
  v994[1] = @"ReportApplied";
  v559 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v994 forKeys:v993 count:2];
  v1014[9] = v559;
  v1013[10] = @"ApplyFailed";
  v991[0] = v3;
  v991[1] = v2;
  v992[0] = @"Prepared";
  v992[1] = @"ReportApplyFailed";
  v558 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v992 forKeys:v991 count:2];
  v1014[10] = v558;
  v549 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1014 forKeys:v1013 count:11];
  v1728[14] = v549;
  v1727[15] = @"AwaitingReboot";
  v989[0] = @"TargetBrainLoaded";
  v987 = v2;
  v988 = @"ReportAnomalyAPIEnd";
  v152 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v988 forKeys:&v987 count:1];
  v990[0] = v152;
  v989[1] = @"TargetDownloadPreflighted";
  v985 = v2;
  v986 = @"ReportAnomalyAPIEnd";
  v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v986 forKeys:&v985 count:1];
  v990[1] = v151;
  v989[2] = @"TargetDownloaded";
  v983 = v2;
  v984 = @"ReportAnomalyAPIEnd";
  v150 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v984 forKeys:&v983 count:1];
  v990[2] = v150;
  v989[3] = @"TargetPrepared";
  v981 = v2;
  v982 = @"ReportAnomalyAPIEnd";
  v149 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v982 forKeys:&v981 count:1];
  v990[3] = v149;
  v989[4] = @"TargetApplied";
  v979 = v2;
  v980 = @"ReportAnomalyAPIEnd";
  v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v980 forKeys:&v979 count:1];
  v990[4] = v148;
  v989[5] = @"TargetRollback";
  v977 = v2;
  v978 = @"ReportAnomalyAPIEnd";
  v147 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v978 forKeys:&v977 count:1];
  v990[5] = v147;
  v989[6] = @"ResumeCurrentUpdate";
  v975 = v2;
  v976 = @"ReportAnomalyAPIEnd";
  v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v976 forKeys:&v975 count:1];
  v990[6] = v146;
  v989[7] = @"CancelCurrentUpdate";
  v973 = v2;
  v974 = @"ReportAnomalyAPIEnd";
  v530 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v974 forKeys:&v973 count:1];
  v990[7] = v530;
  v145 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v990 forKeys:v989 count:8];
  v1728[15] = v145;
  v1727[16] = @"RemovingSU";
  v971[0] = @"TargetBrainLoaded";
  v969 = v2;
  v970 = @"ReportAnomalyAPI";
  v538 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v970 forKeys:&v969 count:1];
  v972[0] = v538;
  v971[1] = @"TargetDownloadPreflighted";
  v967 = v2;
  v968 = @"ReportAnomalyAPI";
  v144 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v968 forKeys:&v967 count:1];
  v972[1] = v144;
  v971[2] = @"TargetDownloaded";
  v965 = v2;
  v966 = @"ReportAnomalyAPI";
  v143 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v966 forKeys:&v965 count:1];
  v972[2] = v143;
  v971[3] = @"TargetPrepared";
  v963 = v2;
  v964 = @"ReportAnomalyAPI";
  v142 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v964 forKeys:&v963 count:1];
  v972[3] = v142;
  v971[4] = @"TargetApplied";
  v961 = v2;
  v962 = v535;
  v141 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v962 forKeys:&v961 count:1];
  v972[4] = v141;
  v971[5] = @"TargetRollback";
  v959 = v3;
  v960 = @"RB_Canceling";
  v140 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v960 forKeys:&v959 count:1];
  v972[5] = v140;
  v971[6] = @"ResumeCurrentUpdate";
  v957 = v2;
  v958 = @"ReportAnomalyAPI";
  v139 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v958 forKeys:&v957 count:1];
  v972[6] = v139;
  v971[7] = @"CancelCurrentUpdate";
  v955 = v3;
  v956 = @"Canceling";
  v138 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v956 forKeys:&v955 count:1];
  v972[7] = v138;
  v971[8] = @"SURemoved";
  v953 = v2;
  v954 = @"ChooseErrorSpaceCheck";
  v528 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v954 forKeys:&v953 count:1];
  v972[8] = v528;
  v971[9] = @"PerformErrorSpaceCheck";
  v951[0] = v3;
  v951[1] = v2;
  v952[0] = @"CheckingSpaceAfterError";
  v952[1] = @"CheckSpace";
  v534 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v952 forKeys:v951 count:2];
  v972[9] = v534;
  v971[10] = @"SkipErrorSpaceCheck";
  v949[0] = v3;
  v949[1] = v2;
  v950[0] = @"ReadyToBegin";
  v950[1] = @"ReportAttemptFailure";
  v527 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v950 forKeys:v949 count:2];
  v972[10] = v527;
  v519 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v972 forKeys:v971 count:11];
  v1728[16] = v519;
  v1727[17] = @"CheckingSpaceAfterError";
  v947[0] = @"TargetBrainLoaded";
  v945 = v2;
  v946 = v535;
  v529 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v946 forKeys:&v945 count:1];
  v948[0] = v529;
  v947[1] = @"TargetDownloadPreflighted";
  v943 = v2;
  v944 = v535;
  v137 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v944 forKeys:&v943 count:1];
  v948[1] = v137;
  v947[2] = @"TargetDownloaded";
  v941 = v2;
  v942 = v535;
  v136 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v942 forKeys:&v941 count:1];
  v948[2] = v136;
  v947[3] = @"TargetPrepared";
  v939 = v2;
  v940 = v535;
  v135 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v940 forKeys:&v939 count:1];
  v948[3] = v135;
  v947[4] = @"TargetApplied";
  v937 = v2;
  v938 = v535;
  v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v938 forKeys:&v937 count:1];
  v948[4] = v134;
  v947[5] = @"TargetRollback";
  v935 = v2;
  v936 = @"DecideCancelBeforeRollback";
  v543 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v936 forKeys:&v935 count:1];
  v948[5] = v543;
  v947[6] = @"ResumeCurrentUpdate";
  v933 = v2;
  v934 = @"ReportAnomalyAPI";
  v133 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v934 forKeys:&v933 count:1];
  v948[6] = v133;
  v947[7] = @"CancelCurrentUpdate";
  v931 = v3;
  v932 = @"Canceling";
  v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v932 forKeys:&v931 count:1];
  v948[7] = v132;
  v947[8] = @"SpaceCheckHaveSpace";
  v929[0] = v3;
  v929[1] = v2;
  v930[0] = @"ReadyToBegin";
  v930[1] = @"ReportAttemptFailure";
  v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v930 forKeys:v929 count:2];
  v948[8] = v131;
  v947[9] = @"SpaceCheckNoSpace";
  v927[0] = v3;
  v927[1] = v2;
  v928[0] = @"ReadyToBegin";
  v928[1] = @"ReportAttemptFailure";
  v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v928 forKeys:v927 count:2];
  v948[9] = v130;
  v947[10] = @"SpaceCheckFailed";
  v925[0] = v3;
  v925[1] = v2;
  v926[0] = @"ReadyToBegin";
  v926[1] = @"ReportAttemptFailure";
  v533 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v926 forKeys:v925 count:2];
  v948[10] = v533;
  v947[11] = @"RB_CancelNonRollbackUpdate";
  v923 = v3;
  v924 = @"RB_Canceling";
  v544 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v924 forKeys:&v923 count:1];
  v948[11] = v544;
  v947[12] = @"RB_BeginRollback";
  v921[0] = v3;
  v921[1] = v2;
  v922[0] = @"RB_ReadyToBegin";
  v922[1] = @"LoadBrainRollback";
  v129 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v922 forKeys:v921 count:2];
  v948[12] = v129;
  v947[13] = @"RB_PerformLoadBrain";
  v919[0] = v3;
  v919[1] = v2;
  v920[0] = @"RB_LoadingBrain";
  v920[1] = @"LoadBrain";
  v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v920 forKeys:v919 count:2];
  v948[13] = v128;
  v947[14] = @"RB_PerformRollbackPrepare";
  v917[0] = v3;
  v917[1] = v2;
  v918[0] = @"RB_RollingBackPrepare";
  v918[1] = @"RollbackUpdatePrepare";
  v127 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v918 forKeys:v917 count:2];
  v948[14] = v127;
  v947[15] = @"RB_PerformRollbackSuspend";
  v915[0] = v3;
  v915[1] = v2;
  v916[0] = @"RB_RollingBackSuspend";
  v916[1] = @"RollbackUpdateSuspend";
  v126 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v916 forKeys:v915 count:2];
  v948[15] = v126;
  v947[16] = @"RB_PerformRollbackResume";
  v913[0] = v3;
  v913[1] = v2;
  v914[0] = @"RB_RollingBackResume";
  v914[1] = @"RollbackUpdateResume";
  v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v914 forKeys:v913 count:2];
  v948[16] = v125;
  v947[17] = @"RB_PerformRollbackApply";
  v911[0] = v3;
  v911[1] = v2;
  v912[0] = @"RB_RollingBackApply";
  v912[1] = @"RollbackUpdateApply";
  v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v912 forKeys:v911 count:2];
  v948[17] = v124;
  v947[18] = @"RB_RollbackAppleSuccess";
  v909[0] = v3;
  v909[1] = v2;
  v910[0] = @"AwaitingReboot";
  v910[1] = @"ReportRollbackSucceeded";
  v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v910 forKeys:v909 count:2];
  v948[18] = v123;
  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v948 forKeys:v947 count:19];
  v1728[17] = v122;
  v1727[18] = @"Canceling";
  v907[0] = @"TargetBrainLoaded";
  v905 = v2;
  v906 = @"ReportAnomalyAPI";
  v553 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v906 forKeys:&v905 count:1];
  v908[0] = v553;
  v907[1] = @"TargetDownloadPreflighted";
  v903 = v2;
  v904 = @"ReportAnomalyAPI";
  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v904 forKeys:&v903 count:1];
  v908[1] = v121;
  v907[2] = @"TargetDownloaded";
  v901 = v2;
  v902 = @"ReportAnomalyAPI";
  v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v902 forKeys:&v901 count:1];
  v908[2] = v120;
  v907[3] = @"TargetPrepared";
  v899 = v2;
  v900 = @"ReportAnomalyAPI";
  v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v900 forKeys:&v899 count:1];
  v908[3] = v119;
  v907[4] = @"TargetApplied";
  v897 = v2;
  v898 = @"ReportAnomalyAPI";
  v118 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v898 forKeys:&v897 count:1];
  v908[4] = v118;
  v907[5] = @"TargetRollback";
  v895 = v3;
  v896 = @"RB_Canceling";
  v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v896 forKeys:&v895 count:1];
  v908[5] = v117;
  v907[6] = @"ResumeCurrentUpdate";
  v893 = v2;
  v894 = @"ReportAnomalyAPI";
  v116 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v894 forKeys:&v893 count:1];
  v908[6] = v116;
  v907[7] = @"CancelCurrentUpdate";
  v891 = v2;
  v892 = @"ReportAnomalyAPI";
  v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v892 forKeys:&v891 count:1];
  v908[7] = v115;
  v907[8] = @"BrainLoadProgress";
  v889 = v2;
  v890 = v535;
  v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v890 forKeys:&v889 count:1];
  v908[8] = v114;
  v907[9] = @"BrainLoadSuccess";
  v887[0] = v3;
  v887[1] = v2;
  v888[0] = @"ReadyToBegin";
  v888[1] = @"ReportCanceled";
  v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v888 forKeys:v887 count:2];
  v908[9] = v113;
  v907[10] = @"BrainLoadFailed";
  v885[0] = v3;
  v885[1] = v2;
  v886[0] = @"ReadyToBegin";
  v886[1] = @"ReportCanceled";
  v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v886 forKeys:v885 count:2];
  v908[10] = v112;
  v907[11] = @"PreflightSuccess";
  v883[0] = v3;
  v883[1] = v2;
  v884[0] = @"ReadyToBegin";
  v884[1] = @"ReportCanceled";
  v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v884 forKeys:v883 count:2];
  v908[11] = v111;
  v907[12] = @"PreflightFailed";
  v881[0] = v3;
  v881[1] = v2;
  v882[0] = @"ReadyToBegin";
  v882[1] = @"ReportCanceled";
  v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v882 forKeys:v881 count:2];
  v908[12] = v110;
  v907[13] = @"PrepareProgress";
  v879 = v2;
  v880 = v535;
  v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v880 forKeys:&v879 count:1];
  v908[13] = v109;
  v907[14] = @"PrepareSuccess";
  v877 = v2;
  v878 = @"RemovePrepared";
  v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v878 forKeys:&v877 count:1];
  v908[14] = v108;
  v907[15] = @"PrepareFailed";
  v875 = v2;
  v876 = @"RemoveSU";
  v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v876 forKeys:&v875 count:1];
  v908[15] = v107;
  v907[16] = @"SuspendSuccess";
  v873 = v2;
  v874 = @"RemovePrepared";
  v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v874 forKeys:&v873 count:1];
  v908[16] = v106;
  v907[17] = @"SuspendFailed";
  v871 = v2;
  v872 = @"RemovePrepared";
  v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v872 forKeys:&v871 count:1];
  v908[17] = v105;
  v907[18] = @"ResumeSuccess";
  v869 = v2;
  v870 = @"RemovePrepared";
  v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v870 forKeys:&v869 count:1];
  v908[18] = v104;
  v907[19] = @"ResumeFailed";
  v867 = v2;
  v868 = @"RemovePrepared";
  v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v868 forKeys:&v867 count:1];
  v908[19] = v103;
  v907[20] = @"PrepareRemoved";
  v865 = v2;
  v866 = @"RemoveSU";
  v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v866 forKeys:&v865 count:1];
  v908[20] = v102;
  v907[21] = @"DownloadProgress";
  v863 = v2;
  v864 = v535;
  v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v864 forKeys:&v863 count:1];
  v908[21] = v101;
  v907[22] = @"DownloadStalled";
  v861 = v2;
  v862 = v535;
  v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v862 forKeys:&v861 count:1];
  v908[22] = v100;
  v907[23] = @"DownloadSuccess";
  v859 = v2;
  v860 = v535;
  v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v860 forKeys:&v859 count:1];
  v908[23] = v99;
  v907[24] = @"DownloadFailed";
  v857 = v2;
  v858 = v535;
  v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v858 forKeys:&v857 count:1];
  v908[24] = v98;
  v907[25] = @"SURemoved";
  v855[0] = v3;
  v855[1] = v2;
  v856[0] = @"ReadyToBegin";
  v856[1] = @"ReportCanceled";
  v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v856 forKeys:v855 count:2];
  v908[25] = v97;
  v907[26] = @"SpaceCheckHaveSpace";
  v853[0] = v3;
  v853[1] = v2;
  v854[0] = @"ReadyToBegin";
  v854[1] = @"ReportCanceled";
  v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v854 forKeys:v853 count:2];
  v908[26] = v96;
  v907[27] = @"SpaceCheckNoSpace";
  v851[0] = v3;
  v851[1] = v2;
  v852[0] = @"ReadyToBegin";
  v852[1] = @"ReportCanceled";
  v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v852 forKeys:v851 count:2];
  v908[27] = v95;
  v907[28] = @"SpaceCheckFailed";
  v849[0] = v3;
  v849[1] = v2;
  v850[0] = @"ReadyToBegin";
  v850[1] = @"ReportCanceled";
  v524 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v850 forKeys:v849 count:2];
  v908[28] = v524;
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v908 forKeys:v907 count:29];
  v1728[18] = v94;
  v1727[19] = @"RB_Canceling";
  v847[0] = @"TargetBrainLoaded";
  v845 = v2;
  v846 = @"ReportAnomalyAPI";
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v846 forKeys:&v845 count:1];
  v848[0] = v93;
  v847[1] = @"TargetDownloadPreflighted";
  v843 = v2;
  v844 = @"ReportAnomalyAPI";
  v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v844 forKeys:&v843 count:1];
  v848[1] = v92;
  v847[2] = @"TargetDownloaded";
  v841 = v2;
  v842 = @"ReportAnomalyAPI";
  v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v842 forKeys:&v841 count:1];
  v848[2] = v91;
  v847[3] = @"TargetPrepared";
  v839 = v2;
  v840 = @"ReportAnomalyAPI";
  v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v840 forKeys:&v839 count:1];
  v848[3] = v90;
  v847[4] = @"TargetApplied";
  v837 = v2;
  v838 = @"ReportAnomalyAPI";
  v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v838 forKeys:&v837 count:1];
  v848[4] = v89;
  v847[5] = @"TargetRollback";
  v835 = v2;
  v836 = @"ReportAnomalyAPI";
  v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
  v848[5] = v88;
  v847[6] = @"ResumeCurrentUpdate";
  v833 = v2;
  v834 = @"ReportAnomalyAPI";
  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v834 forKeys:&v833 count:1];
  v848[6] = v87;
  v847[7] = @"CancelCurrentUpdate";
  v831 = v2;
  v832 = @"ReportAnomalyAPI";
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v832 forKeys:&v831 count:1];
  v848[7] = v86;
  v847[8] = @"BrainLoadProgress";
  v829 = v2;
  v830 = v535;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v830 forKeys:&v829 count:1];
  v848[8] = v85;
  v847[9] = @"BrainLoadSuccess";
  v827[0] = v3;
  v827[1] = v2;
  v828[0] = @"RB_ReadyToBegin";
  v828[1] = @"LoadBrainRollback";
  v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v828 forKeys:v827 count:2];
  v848[9] = v84;
  v847[10] = @"BrainLoadFailed";
  v825[0] = v3;
  v825[1] = v2;
  v826[0] = @"RB_ReadyToBegin";
  v826[1] = @"LoadBrainRollback";
  v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v826 forKeys:v825 count:2];
  v848[10] = v83;
  v847[11] = @"PreflightSuccess";
  v823[0] = v3;
  v823[1] = v2;
  v824[0] = @"RB_ReadyToBegin";
  v824[1] = @"LoadBrainRollback";
  v515 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v824 forKeys:v823 count:2];
  v848[11] = v515;
  v847[12] = @"PreflightFailed";
  v821[0] = v3;
  v821[1] = v2;
  v822[0] = @"RB_ReadyToBegin";
  v822[1] = @"LoadBrainRollback";
  v516 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v822 forKeys:v821 count:2];
  v848[12] = v516;
  v847[13] = @"PrepareProgress";
  v819 = v2;
  v820 = v535;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v820 forKeys:&v819 count:1];
  v848[13] = v82;
  v847[14] = @"PrepareSuccess";
  v817 = v2;
  v818 = @"RemovePrepared";
  v540 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v818 forKeys:&v817 count:1];
  v848[14] = v540;
  v847[15] = @"PrepareFailed";
  v815 = v2;
  v816 = @"RemoveSU";
  v539 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v816 forKeys:&v815 count:1];
  v848[15] = v539;
  v847[16] = @"SuspendSuccess";
  v813 = v2;
  v814 = @"RemovePrepared";
  v546 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v814 forKeys:&v813 count:1];
  v848[16] = v546;
  v847[17] = @"SuspendFailed";
  v811 = v2;
  v812 = @"RemovePrepared";
  v545 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v812 forKeys:&v811 count:1];
  v848[17] = v545;
  v847[18] = @"ResumeSuccess";
  v809 = v2;
  v810 = @"RemovePrepared";
  v550 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v810 forKeys:&v809 count:1];
  v848[18] = v550;
  v847[19] = @"ResumeFailed";
  v807 = v2;
  v808 = @"RemovePrepared";
  v548 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v808 forKeys:&v807 count:1];
  v848[19] = v548;
  v847[20] = @"PrepareRemoved";
  v805 = v2;
  v806 = @"RemoveSU";
  v547 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v806 forKeys:&v805 count:1];
  v848[20] = v547;
  v847[21] = @"DownloadProgress";
  v803 = v2;
  v804 = v535;
  v532 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v804 forKeys:&v803 count:1];
  v848[21] = v532;
  v847[22] = @"DownloadStalled";
  v801 = v2;
  v802 = v535;
  v531 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v802 forKeys:&v801 count:1];
  v848[22] = v531;
  v847[23] = @"DownloadSuccess";
  v799 = v2;
  v800 = v535;
  v521 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v800 forKeys:&v799 count:1];
  v848[23] = v521;
  v847[24] = @"DownloadFailed";
  v797 = v2;
  v798 = v535;
  v536 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v798 forKeys:&v797 count:1];
  v848[24] = v536;
  v847[25] = @"SpaceCheckHaveSpace";
  v795 = v2;
  v796 = @"DecideBeginRollback";
  v520 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v796 forKeys:&v795 count:1];
  v848[25] = v520;
  v847[26] = @"SpaceCheckNoSpace";
  v793 = v2;
  v794 = @"DecideBeginRollback";
  v525 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v794 forKeys:&v793 count:1];
  v848[26] = v525;
  v847[27] = @"SpaceCheckFailed";
  v791 = v2;
  v792 = @"DecideBeginRollback";
  v526 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v792 forKeys:&v791 count:1];
  v848[27] = v526;
  v847[28] = @"SURemoved";
  v789 = v2;
  v790 = @"DecideBeginRollback";
  v562 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v790 forKeys:&v789 count:1];
  v848[28] = v562;
  v847[29] = @"RB_BeginRollback";
  v787[0] = v3;
  v787[1] = v2;
  v788[0] = @"RB_ReadyToBegin";
  v788[1] = @"LoadBrainRollback";
  v557 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v788 forKeys:v787 count:2];
  v848[29] = v557;
  v847[30] = @"RB_PerformLoadBrain";
  v785[0] = v3;
  v785[1] = v2;
  v786[0] = @"RB_LoadingBrain";
  v786[1] = @"LoadBrain";
  v518 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v786 forKeys:v785 count:2];
  v848[30] = v518;
  v847[31] = @"RB_PerformRollbackPrepare";
  v783[0] = v3;
  v783[1] = v2;
  v784[0] = @"RB_RollingBackPrepare";
  v784[1] = @"RollbackUpdatePrepare";
  v514 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v784 forKeys:v783 count:2];
  v848[31] = v514;
  v847[32] = @"RB_PerformRollbackSuspend";
  v781[0] = v3;
  v781[1] = v2;
  v782[0] = @"RB_RollingBackSuspend";
  v782[1] = @"RollbackUpdateSuspend";
  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v782 forKeys:v781 count:2];
  v848[32] = v81;
  v847[33] = @"RB_PerformRollbackResume";
  v779[0] = v3;
  v779[1] = v2;
  v780[0] = @"RB_RollingBackResume";
  v780[1] = @"RollbackUpdateResume";
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v780 forKeys:v779 count:2];
  v848[33] = v80;
  v847[34] = @"RB_PerformRollbackApply";
  v777[0] = v3;
  v777[1] = v2;
  v778[0] = @"RB_RollingBackApply";
  v778[1] = @"RollbackUpdateApply";
  v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v778 forKeys:v777 count:2];
  v848[34] = v79;
  v847[35] = @"RB_RollbackAppleSuccess";
  v775[0] = v3;
  v775[1] = v2;
  v776[0] = @"AwaitingReboot";
  v776[1] = @"ReportRollbackSucceeded";
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v776 forKeys:v775 count:2];
  v848[35] = v78;
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v848 forKeys:v847 count:36];
  v1728[19] = v77;
  v1727[20] = @"RB_ReadyToBegin";
  v773[0] = @"TargetBrainLoaded";
  v771 = v2;
  v772 = @"ReportAnomalyAPI";
  v556 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v772 forKeys:&v771 count:1];
  v774[0] = v556;
  v773[1] = @"TargetDownloadPreflighted";
  v769 = v2;
  v770 = @"ReportAnomalyAPI";
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v770 forKeys:&v769 count:1];
  v774[1] = v76;
  v773[2] = @"TargetDownloaded";
  v767 = v2;
  v768 = @"ReportAnomalyAPI";
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v768 forKeys:&v767 count:1];
  v774[2] = v75;
  v773[3] = @"TargetPrepared";
  v765 = v2;
  v766 = @"ReportAnomalyAPI";
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v766 forKeys:&v765 count:1];
  v774[3] = v74;
  v773[4] = @"TargetApplied";
  v763 = v2;
  v764 = @"ReportAnomalyAPI";
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v764 forKeys:&v763 count:1];
  v774[4] = v73;
  v773[5] = @"TargetRollback";
  v761 = v2;
  v762 = @"LoadBrainRollback";
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v762 forKeys:&v761 count:1];
  v774[5] = v72;
  v773[6] = @"ResumeCurrentUpdate";
  v759 = v2;
  v760 = @"ReportAnomalyAPI";
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v760 forKeys:&v759 count:1];
  v774[6] = v71;
  v773[7] = @"CancelCurrentUpdate";
  v757 = v2;
  v758 = @"ReportAnomalyAPI";
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v758 forKeys:&v757 count:1];
  v774[7] = v70;
  v773[8] = @"RB_PerformLoadBrain";
  v755[0] = v3;
  v755[1] = v2;
  v756[0] = @"RB_LoadingBrain";
  v756[1] = @"LoadBrain";
  v564 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v756 forKeys:v755 count:2];
  v774[8] = v564;
  v773[9] = @"RB_PerformRollbackPrepare";
  v753[0] = v3;
  v753[1] = v2;
  v754[0] = @"RB_RollingBackPrepare";
  v754[1] = @"RollbackUpdatePrepare";
  v563 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v754 forKeys:v753 count:2];
  v774[9] = v563;
  v773[10] = @"RB_PerformRollbackSuspend";
  v751[0] = v3;
  v751[1] = v2;
  v752[0] = @"RB_RollingBackSuspend";
  v752[1] = @"RollbackUpdateSuspend";
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v752 forKeys:v751 count:2];
  v774[10] = v69;
  v773[11] = @"RB_PerformRollbackResume";
  v749[0] = v3;
  v749[1] = v2;
  v750[0] = @"RB_RollingBackResume";
  v750[1] = @"RollbackUpdateResume";
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v750 forKeys:v749 count:2];
  v774[11] = v68;
  v773[12] = @"RB_PerformRollbackApply";
  v747[0] = v3;
  v747[1] = v2;
  v748[0] = @"RB_RollingBackApply";
  v748[1] = @"RollbackUpdateApply";
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v748 forKeys:v747 count:2];
  v774[12] = v67;
  v773[13] = @"RB_RollbackAppleSuccess";
  v745[0] = v3;
  v745[1] = v2;
  v746[0] = @"AwaitingReboot";
  v746[1] = @"ReportRollbackSucceeded";
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v746 forKeys:v745 count:2];
  v774[13] = v66;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v774 forKeys:v773 count:14];
  v1728[20] = v65;
  v1727[21] = @"RB_LoadingBrain";
  v743[0] = @"TargetBrainLoaded";
  v741 = v2;
  v742 = @"ReportAnomalyAPI";
  v555 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v742 forKeys:&v741 count:1];
  v744[0] = v555;
  v743[1] = @"TargetDownloadPreflighted";
  v739 = v2;
  v740 = @"ReportAnomalyAPI";
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v740 forKeys:&v739 count:1];
  v744[1] = v64;
  v743[2] = @"TargetDownloaded";
  v737 = v2;
  v738 = @"ReportAnomalyAPI";
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v738 forKeys:&v737 count:1];
  v744[2] = v63;
  v743[3] = @"TargetPrepared";
  v735 = v2;
  v736 = @"ReportAnomalyAPI";
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v736 forKeys:&v735 count:1];
  v744[3] = v62;
  v743[4] = @"TargetApplied";
  v733 = v2;
  v734 = @"ReportAnomalyAPI";
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v734 forKeys:&v733 count:1];
  v744[4] = v61;
  v743[5] = @"TargetRollback";
  v731 = v2;
  v732 = @"ReportAnomalyAPI";
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v732 forKeys:&v731 count:1];
  v744[5] = v60;
  v743[6] = @"ResumeCurrentUpdate";
  v729 = v2;
  v730 = @"ReportAnomalyAPI";
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v730 forKeys:&v729 count:1];
  v744[6] = v59;
  v743[7] = @"CancelCurrentUpdate";
  v727 = v3;
  v728 = @"RB_Canceling";
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v728 forKeys:&v727 count:1];
  v744[7] = v58;
  v743[8] = @"BrainLoadProgress";
  v725 = v2;
  v726 = @"ReportBrainLoadProgress";
  v523 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v726 forKeys:&v725 count:1];
  v744[8] = v523;
  v743[9] = @"BrainLoadSuccess";
  v723[0] = v3;
  v723[1] = v2;
  v724[0] = @"RB_BrainLoaded";
  v724[1] = @"DecideRollbackUpdate";
  v517 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v724 forKeys:v723 count:2];
  v744[9] = v517;
  v743[10] = @"BrainLoadFailed";
  v721[0] = v3;
  v721[1] = v2;
  v722[0] = @"ReadyToBegin";
  v722[1] = @"ReportRollbackFailed";
  v522 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v722 forKeys:v721 count:2];
  v744[10] = v522;
  v321 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v744 forKeys:v743 count:11];
  v1728[21] = v321;
  v1727[22] = @"RB_BrainLoaded";
  v719[0] = @"TargetBrainLoaded";
  v717 = v2;
  v718 = @"ReportAnomalyAPI";
  v301 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v718 forKeys:&v717 count:1];
  v720[0] = v301;
  v719[1] = @"TargetDownloadPreflighted";
  v715 = v2;
  v716 = @"ReportAnomalyAPI";
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v716 forKeys:&v715 count:1];
  v720[1] = v57;
  v719[2] = @"TargetDownloaded";
  v713 = v2;
  v714 = @"ReportAnomalyAPI";
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v714 forKeys:&v713 count:1];
  v720[2] = v56;
  v719[3] = @"TargetPrepared";
  v711 = v2;
  v712 = @"ReportAnomalyAPI";
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v712 forKeys:&v711 count:1];
  v720[3] = v55;
  v719[4] = @"TargetApplied";
  v709 = v2;
  v710 = @"ReportAnomalyAPI";
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v710 forKeys:&v709 count:1];
  v720[4] = v54;
  v719[5] = @"TargetRollback";
  v707 = v2;
  v708 = @"UpdateTarget";
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v708 forKeys:&v707 count:1];
  v720[5] = v53;
  v719[6] = @"ResumeCurrentUpdate";
  v705 = v2;
  v706 = @"ReportAnomalyAPI";
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v706 forKeys:&v705 count:1];
  v720[6] = v52;
  v719[7] = @"CancelCurrentUpdate";
  v703[0] = v3;
  v703[1] = v2;
  v704[0] = @"RB_Canceling";
  v704[1] = @"RemoveSU";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v704 forKeys:v703 count:2];
  v720[7] = v51;
  v719[8] = @"RB_PerformRollbackPrepare";
  v701[0] = v3;
  v701[1] = v2;
  v702[0] = @"RB_RollingBackPrepare";
  v702[1] = @"RollbackUpdatePrepare";
  v566 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v702 forKeys:v701 count:2];
  v720[8] = v566;
  v719[9] = @"RB_PerformRollbackSuspend";
  v699[0] = v3;
  v699[1] = v2;
  v700[0] = @"RB_RollingBackSuspend";
  v700[1] = @"RollbackUpdateSuspend";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v700 forKeys:v699 count:2];
  v720[9] = v50;
  v719[10] = @"RB_PerformRollbackResume";
  v697[0] = v3;
  v697[1] = v2;
  v698[0] = @"RB_RollingBackResume";
  v698[1] = @"RollbackUpdateResume";
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v698 forKeys:v697 count:2];
  v720[10] = v49;
  v719[11] = @"RB_PerformRollbackApply";
  v695[0] = v3;
  v695[1] = v2;
  v696[0] = @"RB_RollingBackApply";
  v696[1] = @"RollbackUpdateApply";
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v696 forKeys:v695 count:2];
  v720[11] = v48;
  v719[12] = @"RB_RollbackAppleSuccess";
  v693[0] = v3;
  v693[1] = v2;
  v694[0] = @"AwaitingReboot";
  v694[1] = @"ReportRollbackSucceeded";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v694 forKeys:v693 count:2];
  v720[12] = v47;
  v719[13] = @"RB_RollbackFailed";
  v691[0] = v3;
  v691[1] = v2;
  v692[0] = @"ReadyToBegin";
  v692[1] = @"ReportRollbackFailed";
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v692 forKeys:v691 count:2];
  v720[13] = v46;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v720 forKeys:v719 count:14];
  v1728[22] = v45;
  v1727[23] = @"RB_RollingBackPrepare";
  v689[0] = @"TargetBrainLoaded";
  v687 = v2;
  v688 = @"ReportAnomalyAPI";
  v565 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v688 forKeys:&v687 count:1];
  v690[0] = v565;
  v689[1] = @"TargetDownloadPreflighted";
  v685 = v2;
  v686 = @"ReportAnomalyAPI";
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v686 forKeys:&v685 count:1];
  v690[1] = v44;
  v689[2] = @"TargetDownloaded";
  v683 = v2;
  v684 = @"ReportAnomalyAPI";
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v684 forKeys:&v683 count:1];
  v690[2] = v43;
  v689[3] = @"TargetPrepared";
  v681 = v2;
  v682 = @"ReportAnomalyAPI";
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v682 forKeys:&v681 count:1];
  v690[3] = v42;
  v689[4] = @"TargetApplied";
  v679 = v2;
  v680 = @"ReportAnomalyAPI";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v680 forKeys:&v679 count:1];
  v690[4] = v41;
  v689[5] = @"TargetRollback";
  v677 = v2;
  v678 = @"UpdateTarget";
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v678 forKeys:&v677 count:1];
  v690[5] = v40;
  v689[6] = @"ResumeCurrentUpdate";
  v675 = v2;
  v676 = @"ReportAnomalyAPI";
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v676 forKeys:&v675 count:1];
  v690[6] = v39;
  v689[7] = @"CancelCurrentUpdate";
  v673[0] = v3;
  v673[1] = v2;
  v674[0] = @"RB_Canceling";
  v674[1] = @"RemoveSU";
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v674 forKeys:v673 count:2];
  v690[7] = v38;
  v689[8] = @"PrepareProgress";
  v671 = v2;
  v672 = @"ReportPrepareProgress";
  v542 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v672 forKeys:&v671 count:1];
  v690[8] = v542;
  v689[9] = @"RB_RollbackPrepareSuccess";
  v669 = v2;
  v670 = @"RollbackUpdateDecideSuspend";
  v169 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v670 forKeys:&v669 count:1];
  v690[9] = v169;
  v689[10] = @"RB_PerformRollbackSuspend";
  v667[0] = v3;
  v667[1] = v2;
  v668[0] = @"RB_RollingBackSuspend";
  v668[1] = @"RollbackUpdateSuspend";
  v568 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v668 forKeys:v667 count:2];
  v690[10] = v568;
  v689[11] = @"RB_PerformRollbackResume";
  v665[0] = v3;
  v665[1] = v2;
  v666[0] = @"RB_RollingBackResume";
  v666[1] = @"RollbackUpdateResume";
  v567 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v666 forKeys:v665 count:2];
  v690[11] = v567;
  v689[12] = @"RB_PerformRollbackApply";
  v663[0] = v3;
  v663[1] = v2;
  v664[0] = @"RB_RollingBackApply";
  v664[1] = @"RollbackUpdateApply";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v664 forKeys:v663 count:2];
  v690[12] = v37;
  v689[13] = @"RB_RollbackAppleSuccess";
  v661[0] = v3;
  v661[1] = v2;
  v662[0] = @"AwaitingReboot";
  v662[1] = @"ReportRollbackSucceeded";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v662 forKeys:v661 count:2];
  v690[13] = v36;
  v689[14] = @"RB_RollbackFailed";
  v659[0] = v3;
  v659[1] = v2;
  v660[0] = @"ReadyToBegin";
  v660[1] = @"ReportRollbackFailed";
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v660 forKeys:v659 count:2];
  v690[14] = v35;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v690 forKeys:v689 count:15];
  v1728[23] = v34;
  v1727[24] = @"RB_RollingBackSuspend";
  v657[0] = @"TargetBrainLoaded";
  v655 = v2;
  v656 = @"ReportAnomalyAPI";
  v570 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v656 forKeys:&v655 count:1];
  v658[0] = v570;
  v657[1] = @"TargetDownloadPreflighted";
  v653 = v2;
  v654 = @"ReportAnomalyAPI";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v654 forKeys:&v653 count:1];
  v658[1] = v33;
  v657[2] = @"TargetDownloaded";
  v651 = v2;
  v652 = @"ReportAnomalyAPI";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v652 forKeys:&v651 count:1];
  v658[2] = v32;
  v657[3] = @"TargetPrepared";
  v649 = v2;
  v650 = @"ReportAnomalyAPI";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v650 forKeys:&v649 count:1];
  v658[3] = v31;
  v657[4] = @"TargetApplied";
  v647 = v2;
  v648 = @"ReportAnomalyAPI";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v648 forKeys:&v647 count:1];
  v658[4] = v30;
  v657[5] = @"TargetRollback";
  v645 = v2;
  v646 = @"UpdateTarget";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v646 forKeys:&v645 count:1];
  v658[5] = v29;
  v657[6] = @"ResumeCurrentUpdate";
  v643 = v2;
  v644 = @"ReportAnomalyAPI";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v644 forKeys:&v643 count:1];
  v658[6] = v28;
  v657[7] = @"CancelCurrentUpdate";
  v641[0] = v3;
  v641[1] = v2;
  v642[0] = @"RB_Canceling";
  v642[1] = @"RemoveSU";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v642 forKeys:v641 count:2];
  v658[7] = v27;
  v657[8] = @"RB_RollbackSuspendSuccess";
  v639 = v2;
  v640 = @"RollbackUpdateDecideResume";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v640 forKeys:&v639 count:1];
  v658[8] = v26;
  v657[9] = @"RB_PerformRollbackResume";
  v637[0] = v3;
  v637[1] = v2;
  v638[0] = @"RB_RollingBackResume";
  v638[1] = @"RollbackUpdateResume";
  v574 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v638 forKeys:v637 count:2];
  v658[9] = v574;
  v657[10] = @"RB_PerformRollbackApply";
  v635[0] = v3;
  v635[1] = v2;
  v636[0] = @"RB_RollingBackApply";
  v636[1] = @"RollbackUpdateApply";
  v571 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v636 forKeys:v635 count:2];
  v658[10] = v571;
  v657[11] = @"RB_RollbackAppleSuccess";
  v633[0] = v3;
  v633[1] = v2;
  v634[0] = @"AwaitingReboot";
  v634[1] = @"ReportRollbackSucceeded";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v634 forKeys:v633 count:2];
  v658[11] = v25;
  v657[12] = @"RB_RollbackFailed";
  v631[0] = v3;
  v631[1] = v2;
  v632[0] = @"ReadyToBegin";
  v632[1] = @"ReportRollbackFailed";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v632 forKeys:v631 count:2];
  v658[12] = v24;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v658 forKeys:v657 count:13];
  v1728[24] = v23;
  v1727[25] = @"RB_RollingBackResume";
  v629[0] = @"TargetBrainLoaded";
  v627 = v2;
  v628 = @"ReportAnomalyAPI";
  v573 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v628 forKeys:&v627 count:1];
  v630[0] = v573;
  v629[1] = @"TargetDownloadPreflighted";
  v625 = v2;
  v626 = @"ReportAnomalyAPI";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v626 forKeys:&v625 count:1];
  v630[1] = v22;
  v629[2] = @"TargetDownloaded";
  v623 = v2;
  v624 = @"ReportAnomalyAPI";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v624 forKeys:&v623 count:1];
  v630[2] = v21;
  v629[3] = @"TargetPrepared";
  v621 = v2;
  v622 = @"ReportAnomalyAPI";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v622 forKeys:&v621 count:1];
  v630[3] = v20;
  v629[4] = @"TargetApplied";
  v619 = v2;
  v620 = @"ReportAnomalyAPI";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v620 forKeys:&v619 count:1];
  v630[4] = v19;
  v629[5] = @"TargetRollback";
  v617 = v2;
  v618 = @"UpdateTarget";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v618 forKeys:&v617 count:1];
  v630[5] = v18;
  v629[6] = @"ResumeCurrentUpdate";
  v615 = v2;
  v616 = @"ReportAnomalyAPI";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v616 forKeys:&v615 count:1];
  v630[6] = v17;
  v629[7] = @"CancelCurrentUpdate";
  v613[0] = v3;
  v613[1] = v2;
  v614[0] = @"RB_Canceling";
  v614[1] = @"RemoveSU";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v614 forKeys:v613 count:2];
  v630[7] = v16;
  v629[8] = @"RB_RollbackResumeSuccess";
  v611 = v2;
  v612 = @"RollbackUpdateDecideApply";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v612 forKeys:&v611 count:1];
  v630[8] = v15;
  v629[9] = @"RB_PerformRollbackApply";
  v609[0] = v3;
  v609[1] = v2;
  v610[0] = @"RB_RollingBackApply";
  v610[1] = @"RollbackUpdateApply";
  v575 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v610 forKeys:v609 count:2];
  v630[9] = v575;
  v629[10] = @"RB_RollbackAppleSuccess";
  v607[0] = v3;
  v607[1] = v2;
  v608[0] = @"AwaitingReboot";
  v608[1] = @"ReportRollbackSucceeded";
  v572 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v608 forKeys:v607 count:2];
  v630[10] = v572;
  v629[11] = @"RB_RollbackFailed";
  v605[0] = v3;
  v605[1] = v2;
  v606[0] = @"ReadyToBegin";
  v606[1] = @"ReportRollbackFailed";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v606 forKeys:v605 count:2];
  v630[11] = v14;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v630 forKeys:v629 count:12];
  v1728[25] = v13;
  v1727[26] = @"RB_RollingBackApply";
  v603[0] = @"TargetBrainLoaded";
  v601 = v2;
  v602 = @"ReportAnomalyAPI";
  v569 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v602 forKeys:&v601 count:1];
  v604[0] = v569;
  v603[1] = @"TargetDownloadPreflighted";
  v599 = v2;
  v600 = @"ReportAnomalyAPI";
  v579 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v600 forKeys:&v599 count:1];
  v604[1] = v579;
  v603[2] = @"TargetDownloaded";
  v597 = v2;
  v598 = @"ReportAnomalyAPI";
  v577 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v598 forKeys:&v597 count:1];
  v604[2] = v577;
  v603[3] = @"TargetPrepared";
  v595 = v2;
  v596 = @"ReportAnomalyAPI";
  v576 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v596 forKeys:&v595 count:1];
  v604[3] = v576;
  v603[4] = @"TargetApplied";
  v593 = v2;
  v594 = @"ReportAnomalyAPI";
  v578 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v594 forKeys:&v593 count:1];
  v604[4] = v578;
  v603[5] = @"TargetRollback";
  v591 = v2;
  v592 = @"UpdateTarget";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v592 forKeys:&v591 count:1];
  v604[5] = v4;
  v603[6] = @"ResumeCurrentUpdate";
  v589 = v2;
  v590 = @"ReportAnomalyAPI";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v590 forKeys:&v589 count:1];
  v604[6] = v5;
  v603[7] = @"CancelCurrentUpdate";
  v587[0] = v3;
  v587[1] = v2;
  v588[0] = @"RB_Canceling";
  v588[1] = @"RemoveSU";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v588 forKeys:v587 count:2];
  v604[7] = v6;
  v603[8] = @"RB_RollbackAppleSuccess";
  v585[0] = v3;
  v585[1] = v2;
  v586[0] = @"AwaitingReboot";
  v586[1] = @"ReportRollbackSucceeded";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v586 forKeys:v585 count:2];
  v604[8] = v7;
  v603[9] = @"RB_RollbackApplyFailed";
  v583[0] = v3;
  v583[1] = v2;
  v584[0] = @"ReadyToBegin";
  v584[1] = @"ReportRollbackFailed";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v584 forKeys:v583 count:2];
  v604[9] = v8;
  v603[10] = @"RB_RollbackFailed";
  v581[0] = v3;
  v581[1] = v2;
  v582[0] = @"ReadyToBegin";
  v582[1] = @"ReportRollbackFailed";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v582 forKeys:v581 count:2];
  v604[10] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v604 forKeys:v603 count:11];
  v1728[26] = v10;
  v580 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1728 forKeys:v1727 count:27];

  v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v580 copyItems:1];

  return v11;
}

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  actionCopy = action;
  infoCopy = info;
  if ([actionCopy isEqualToString:*MEMORY[0x277D647D0]])
  {
    v13 = 0;
  }

  else
  {
    if ([actionCopy isEqualToString:@"DecideLoadBrain"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideLoadBrain:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"LoadBrain"])
    {
      v14 = [(SUCoreUpdate *)self actionLoadBrain:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportBrainLoadProgress"])
    {
      v14 = [(SUCoreUpdate *)self actionReportBrainLoadProgress:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AdvanceBrainLoadSuccess"])
    {
      v14 = [(SUCoreUpdate *)self actionAdvanceBrainLoadSuccess:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportBrainLoadSuccess"])
    {
      v14 = [(SUCoreUpdate *)self actionReportBrainLoadSuccess:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DecidePreflightDownloadSU"])
    {
      v14 = [(SUCoreUpdate *)self actionDecidePreflightDownloadSU:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"PreflightDownloadSU"])
    {
      v14 = [(SUCoreUpdate *)self actionPreflightDownloadSU:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AdvanceDownloadPreflighted"])
    {
      v14 = [(SUCoreUpdate *)self actionAdvanceDownloadPreflighted:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadPreflighted"])
    {
      v14 = [(SUCoreUpdate *)self actionReportDownloadPreflighted:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DecideDownloadSpaceCheck"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideDownloadSpaceCheck:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ChooseErrorSpaceCheck"])
    {
      v14 = [(SUCoreUpdate *)self actionChooseErrorSpaceCheck:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"CheckSpace"])
    {
      v14 = [(SUCoreUpdate *)self actionCheckSpace:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DecideDownloadSU"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideDownloadSU:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DownloadSU"])
    {
      v14 = [(SUCoreUpdate *)self actionDownloadSU:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadProgress"])
    {
      v14 = [(SUCoreUpdate *)self actionReportDownloadProgress:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadStalled"])
    {
      v14 = [(SUCoreUpdate *)self actionReportDownloadStalled:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AdvanceSUDownloaded"])
    {
      v14 = [(SUCoreUpdate *)self actionAdvanceSUDownloaded:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportSUDownloaded"])
    {
      v14 = [(SUCoreUpdate *)self actionReportSUDownloaded:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DecidePrepareUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionDecidePrepareUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"PrepareUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionPrepareUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportPrepareProgress"])
    {
      v14 = [(SUCoreUpdate *)self actionReportPrepareProgress:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DecideSuspendUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideSuspendUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"SuspendUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionSuspendUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"AdvanceSuspended"])
    {
      v14 = [(SUCoreUpdate *)self actionAdvanceSuspended:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportPrepared"])
    {
      v14 = [(SUCoreUpdate *)self actionReportPrepared:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ResumeCurrentUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionResumeCurrentUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportResumeCurrentSuccess"])
    {
      v14 = [(SUCoreUpdate *)self actionReportResumeCurrentSuccess:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportResumeCurrentFailed"])
    {
      v14 = [(SUCoreUpdate *)self actionReportResumeCurrentFailed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DecideResumeUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideResumeUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ResumeUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionResumeUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DecideApplyUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideApplyUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportApplyProgress"])
    {
      v14 = [(SUCoreUpdate *)self actionReportApplyProgress:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ApplyUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionApplyUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportApplyFailed"])
    {
      v14 = [(SUCoreUpdate *)self actionReportApplyFailed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportApplied"])
    {
      v14 = [(SUCoreUpdate *)self actionReportApplied:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DecideCancelBeforeRollback"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideCancelBeforeRollback:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DecideBeginRollback"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideBeginRollback:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"LoadBrainRollback"])
    {
      v14 = [(SUCoreUpdate *)self actionLoadBrainRollback:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DecideRollbackUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideRollbackUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RollbackUpdatePrepare"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdatePrepare:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RollbackUpdateDecideSuspend"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateDecideSuspend:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RollbackUpdateSuspend"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateSuspend:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RollbackUpdateDecideResume"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateDecideResume:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RollbackUpdateResume"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateResume:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RollbackUpdateDecideApply"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateDecideApply:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RollbackUpdateApply"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateApply:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRollbackFailed"])
    {
      v14 = [(SUCoreUpdate *)self actionReportRollbackFailed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRollbackSucceeded"])
    {
      v14 = [(SUCoreUpdate *)self actionReportRollbackSuccess:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportAttemptFailure"])
    {
      v14 = [(SUCoreUpdate *)self actionReportAttemptFailure:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RemovePrepared"])
    {
      v14 = [(SUCoreUpdate *)self actionRemovePrepared:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RemoveSU"])
    {
      v14 = [(SUCoreUpdate *)self actionRemoveSU:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"CancelPrepare"])
    {
      v14 = [(SUCoreUpdate *)self actionCancelPrepare:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportCanceled"])
    {
      v14 = [(SUCoreUpdate *)self actionReportCanceled:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"UpdateTarget"])
    {
      v14 = [(SUCoreUpdate *)self actionUpdateTarget:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"UpdateTargetReconfig"])
    {
      v14 = [(SUCoreUpdate *)self actionUpdateTargetReconfig:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportAnomalyAPI"])
    {
      v14 = [(SUCoreUpdate *)self actionReportAnomalyAPI:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportAnomalyAPIEnd"])
    {
      v14 = [(SUCoreUpdate *)self actionReportAnomalyAPIEnd:infoCopy error:error];
    }

    else
    {
      v14 = [(SUCoreUpdate *)self actionUnknownAction:actionCopy error:error];
    }

    v13 = v14;
  }

  return v13;
}

- (int64_t)actionUpdateTarget:(id)target error:(id *)error
{
  targetCopy = target;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [targetCopy targetPhase];
  policy = [targetCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  return 0;
}

- (int64_t)actionUpdateTargetReconfig:(id)reconfig error:(id *)error
{
  reconfigCopy = reconfig;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [reconfigCopy targetPhase];
  policy = [reconfigCopy policy];
  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];

  policy2 = [reconfigCopy policy];

  if (policy2)
  {
    downloadControl = [(SUCoreUpdate *)self downloadControl];
    policy3 = [reconfigCopy policy];
    [downloadControl alterPolicy:policy3];
  }

  return 0;
}

- (int64_t)actionDecideLoadBrain:(id)brain error:(id *)error
{
  brainCopy = brain;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [brainCopy targetPhase];
  policy = [brainCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:2];
  return 0;
}

- (int64_t)actionLoadBrain:(id)brain error:(id *)error
{
  brainCopy = brain;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [brainCopy targetPhase];
  policy = [brainCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self setFailedAttemptError:0];
  msuControl = [(SUCoreUpdate *)self msuControl];
  policy2 = [(SUCoreUpdate *)self policy];
  [msuControl loadBrain:policy2];

  return 0;
}

- (int64_t)actionDecidePreflightDownloadSU:(id)u error:(id *)error
{
  uCopy = u;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [uCopy targetPhase];
  policy = [uCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:3];
  return 0;
}

- (int64_t)actionPreflightDownloadSU:(id)u error:(id *)error
{
  uCopy = u;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [uCopy targetPhase];
  policy = [uCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  msuControl = [(SUCoreUpdate *)self msuControl];
  policy2 = [(SUCoreUpdate *)self policy];
  [msuControl preflightDownloadSU:policy2];

  return 0;
}

- (int64_t)actionDecideDownloadSU:(id)u error:(id *)error
{
  uCopy = u;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [uCopy targetPhase];
  policy = [uCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:5];
  return 0;
}

- (int64_t)actionDownloadSU:(id)u error:(id *)error
{
  uCopy = u;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [uCopy targetPhase];
  policy = [uCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  updateDescriptor = [(SUCoreUpdate *)self updateDescriptor];
  if ([updateDescriptor descriptorType] == 1)
  {
    goto LABEL_4;
  }

  updateDescriptor2 = [(SUCoreUpdate *)self updateDescriptor];
  if ([updateDescriptor2 descriptorType] == 3)
  {

LABEL_4:
    goto LABEL_5;
  }

  updateDescriptor3 = [(SUCoreUpdate *)self updateDescriptor];
  descriptorType = [updateDescriptor3 descriptorType];

  if (descriptorType != 5)
  {
    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    updateDescriptor4 = [(SUCoreUpdate *)self updateDescriptor];
    v20 = +[SUCoreDescriptor nameForDescriptorType:](SUCoreDescriptor, "nameForDescriptorType:", [updateDescriptor4 descriptorType]);
    downloadControl2 = [v18 initWithFormat:@"Descriptor is not of required type (SUCoreDescriptorTypeAsset, SUCoreDescriptorTypeSFRAsset, or SUCoreDescriptorTypeSplatAsset) for downloading, found %@", v20];

    [(SUCoreUpdate *)self _trackUpdateAnomaly:@"DOWNLOAD_SU" result:8116 description:downloadControl2];
    goto LABEL_7;
  }

LABEL_5:
  downloadControl = [(SUCoreUpdate *)self downloadControl];

  if (!downloadControl)
  {
    [(SUCoreUpdate *)self _trackUpdateAnomaly:@"DOWNLOAD_SU" result:8116 description:@"SUCoreUpdateDownloader instance not available when about to call download"];
    return 0;
  }

  downloadControl2 = [(SUCoreUpdate *)self downloadControl];
  policy2 = [(SUCoreUpdate *)self policy];
  [downloadControl2 downloadUpdateWithPolicy:policy2];

LABEL_7:
  return 0;
}

- (int64_t)actionDecidePrepareUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [updateCopy targetPhase];
  policy = [updateCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:6];
  return 0;
}

- (int64_t)actionPrepareUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [updateCopy targetPhase];
  policy = [updateCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  msuControl = [(SUCoreUpdate *)self msuControl];
  policy2 = [(SUCoreUpdate *)self policy];
  [msuControl prepareUpdate:policy2];

  return 0;
}

- (int64_t)actionDecideSuspendUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [updateCopy targetPhase];
  policy = [updateCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:7];
  return 0;
}

- (int64_t)actionSuspendUpdate:(id)update error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:update];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  msuControl = [(SUCoreUpdate *)self msuControl];
  [msuControl suspendUpdate];

  return 0;
}

- (int64_t)actionDecideResumeUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [updateCopy targetPhase];
  policy = [updateCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:8];
  return 0;
}

- (int64_t)actionResumeUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [updateCopy targetPhase];
  policy = [updateCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  msuControl = [(SUCoreUpdate *)self msuControl];
  policy2 = [(SUCoreUpdate *)self policy];
  [msuControl resumeUpdate:policy2];

  return 0;
}

- (int64_t)actionResumeCurrentUpdate:(id)update error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:update];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  msuControl = [(SUCoreUpdate *)self msuControl];
  policy = [(SUCoreUpdate *)self policy];
  [msuControl resumeUpdate:policy];

  return 0;
}

- (int64_t)actionDecideApplyUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [updateCopy targetPhase];
  policy = [updateCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:9];
  return 0;
}

- (int64_t)actionApplyUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [updateCopy targetPhase];
  policy = [updateCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  msuControl = [(SUCoreUpdate *)self msuControl];
  policy2 = [(SUCoreUpdate *)self policy];
  [msuControl applyUpdate:policy2];

  return 0;
}

- (int64_t)actionDecideCancelBeforeRollback:(id)rollback error:(id *)error
{
  rollbackCopy = rollback;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [rollbackCopy targetPhase];
  policy = [rollbackCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:1];
  return 0;
}

- (int64_t)actionDecideBeginRollback:(id)rollback error:(id *)error
{
  rollbackCopy = rollback;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [rollbackCopy targetPhase];
  policy = [rollbackCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:2];
  return 0;
}

- (int64_t)actionLoadBrainRollback:(id)rollback error:(id *)error
{
  rollbackCopy = rollback;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [rollbackCopy targetPhase];
  policy = [rollbackCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:3];
  return 0;
}

- (int64_t)actionDecideRollbackUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [updateCopy targetPhase];
  policy = [updateCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:4];
  return 0;
}

- (int64_t)actionRollbackUpdatePrepare:(id)prepare error:(id *)error
{
  prepareCopy = prepare;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [prepareCopy targetPhase];
  policy = [prepareCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  msuControl = [(SUCoreUpdate *)self msuControl];
  policy2 = [(SUCoreUpdate *)self policy];
  [msuControl rollbackUpdatePrepare:policy2];

  return 0;
}

- (int64_t)actionRollbackUpdateDecideSuspend:(id)suspend error:(id *)error
{
  suspendCopy = suspend;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [suspendCopy targetPhase];
  policy = [suspendCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:5];
  return 0;
}

- (int64_t)actionRollbackUpdateSuspend:(id)suspend error:(id *)error
{
  suspendCopy = suspend;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [suspendCopy targetPhase];
  policy = [suspendCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  msuControl = [(SUCoreUpdate *)self msuControl];
  policy2 = [(SUCoreUpdate *)self policy];
  [msuControl rollbackUpdateSuspend:policy2];

  return 0;
}

- (int64_t)actionRollbackUpdateDecideResume:(id)resume error:(id *)error
{
  resumeCopy = resume;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [resumeCopy targetPhase];
  policy = [resumeCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:6];
  return 0;
}

- (int64_t)actionRollbackUpdateResume:(id)resume error:(id *)error
{
  resumeCopy = resume;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [resumeCopy targetPhase];
  policy = [resumeCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  msuControl = [(SUCoreUpdate *)self msuControl];
  policy2 = [(SUCoreUpdate *)self policy];
  [msuControl rollbackUpdateResume:policy2];

  return 0;
}

- (int64_t)actionRollbackUpdateDecideApply:(id)apply error:(id *)error
{
  applyCopy = apply;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [applyCopy targetPhase];
  policy = [applyCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:7];
  return 0;
}

- (int64_t)actionRollbackUpdateApply:(id)apply error:(id *)error
{
  applyCopy = apply;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [applyCopy targetPhase];
  policy = [applyCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  msuControl = [(SUCoreUpdate *)self msuControl];
  policy2 = [(SUCoreUpdate *)self policy];
  [msuControl rollbackUpdateApply:policy2];

  return 0;
}

- (int64_t)actionDecideDownloadSpaceCheck:(id)check error:(id *)error
{
  checkCopy = check;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  targetPhase = [checkCopy targetPhase];
  policy = [checkCopy policy];

  [(SUCoreUpdate *)self _adjustTarget:targetPhase withPolicy:policy];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:4];
  return 0;
}

- (int64_t)actionChooseErrorSpaceCheck:(id)check error:(id *)error
{
  checkCopy = check;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policy = [(SUCoreUpdate *)self policy];
  LODWORD(extendedStateQueue) = [policy checkAvailableSpace];

  updateFSM2 = [(SUCoreUpdate *)self updateFSM];
  v10 = updateFSM2;
  v11 = kSU_E_PerformErrorSpaceCheck;
  if (!extendedStateQueue)
  {
    v11 = kSU_E_SkipErrorSpaceCheck;
  }

  [updateFSM2 followupEvent:*v11 withInfo:checkCopy];

  return 0;
}

- (int64_t)actionCheckSpace:(id)space error:(id *)error
{
  spaceCopy = space;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  updateDescriptor = [(SUCoreUpdate *)self updateDescriptor];
  msuPrepareSize = [updateDescriptor msuPrepareSize];

  if (msuPrepareSize)
  {
    updateDescriptor2 = [(SUCoreUpdate *)self updateDescriptor];
    totalRequiredFreeSpace = [updateDescriptor2 totalRequiredFreeSpace];
    updateDescriptor3 = [(SUCoreUpdate *)self updateDescriptor];
    v13 = totalRequiredFreeSpace - [updateDescriptor3 msuPrepareSize];
  }

  else
  {
    v13 = 0;
  }

  updateDescriptor4 = [(SUCoreUpdate *)self updateDescriptor];
  totalRequiredFreeSpace2 = [updateDescriptor4 totalRequiredFreeSpace];

  if (_os_feature_enabled_impl())
  {
    updateDescriptor5 = [(SUCoreUpdate *)self updateDescriptor];
    totalRequiredFreeSpace2 = [updateDescriptor5 totalSnapshotRequiredFreeSpace];
  }

  policy = [(SUCoreUpdate *)self policy];
  cacheDeleteUrgency = [policy cacheDeleteUrgency];
  policy2 = [(SUCoreUpdate *)self policy];
  updateVolumePath = [policy2 updateVolumePath];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __39__SUCoreUpdate_actionCheckSpace_error___block_invoke;
  v23[3] = &unk_27892E068;
  v23[4] = self;
  v24 = spaceCopy;
  v21 = spaceCopy;
  [SUCoreSpace checkAvailableSpace:totalRequiredFreeSpace2 allowPurgeWithUrgency:cacheDeleteUrgency purgingFromBase:updateVolumePath minimalRequiredFreeSpace:v13 completion:v23];

  return 0;
}

void __39__SUCoreUpdate_actionCheckSpace_error___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = a5;
  if (v20)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 40) error];

    if (!v8)
    {
      v9 = [[SUCoreUpdateParam alloc] initWithError:v20];

      v7 = v9;
    }

    v10 = *(a1 + 32);
    v11 = [v7 error];
    [v10 _trackUpdateError:@"checkAvailableSpace" forReason:@"unable to check available space" error:v11];

    v12 = [*(a1 + 32) updateFSM];
    [v12 postEvent:@"SpaceCheckFailed" withInfo:v7];
  }

  else if (a2)
  {
    v7 = [*(a1 + 32) updateFSM];
    [v7 postEvent:@"SpaceCheckHaveSpace" withInfo:*(a1 + 40)];
  }

  else
  {
    v7 = *(a1 + 40);
    v13 = [*(a1 + 40) error];

    if (!v13)
    {
      v14 = [MEMORY[0x277D643F8] sharedCore];
      v15 = [v14 buildError:8600 underlying:0 description:@"insufficient space to perform update"];

      v16 = [[SUCoreUpdateParam alloc] initWithError:v15];
      v7 = v16;
    }

    v17 = *(a1 + 32);
    v18 = [v7 error];
    [v17 _trackUpdateError:@"checkAvailableSpace" forReason:@"insufficient space to perform update" error:v18];

    v19 = [*(a1 + 32) updateFSM];
    [v19 postEvent:@"SpaceCheckNoSpace" withInfo:*(a1 + 40)];
  }
}

- (int64_t)actionRemoveSU:(id)u error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [(SUCoreUpdate *)self updateFSM:u];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  updateDescriptor = [(SUCoreUpdate *)self updateDescriptor];
  if ([updateDescriptor descriptorType] == 1)
  {
    goto LABEL_4;
  }

  updateDescriptor2 = [(SUCoreUpdate *)self updateDescriptor];
  if ([updateDescriptor2 descriptorType] == 3)
  {

LABEL_4:
    goto LABEL_5;
  }

  updateDescriptor3 = [(SUCoreUpdate *)self updateDescriptor];
  descriptorType = [updateDescriptor3 descriptorType];

  if (descriptorType != 5)
  {
    updateDescriptor4 = [(SUCoreUpdate *)self updateDescriptor];
    if ([updateDescriptor4 descriptorType] == 2)
    {
    }

    else
    {
      updateDescriptor5 = [(SUCoreUpdate *)self updateDescriptor];
      descriptorType2 = [updateDescriptor5 descriptorType];

      if (descriptorType2 != 4)
      {
        v26 = objc_alloc(MEMORY[0x277CCACA8]);
        updateDescriptor6 = [(SUCoreUpdate *)self updateDescriptor];
        v28 = +[SUCoreDescriptor nameForDescriptorType:](SUCoreDescriptor, "nameForDescriptorType:", [updateDescriptor6 descriptorType]);
        v29 = [v26 initWithFormat:@"Unable to determine a known descriptor type for removal, found %@", v28];

        [(SUCoreUpdate *)self _trackUpdateAnomaly:@"REMOVE_SU" result:8116 description:v29];
        return 0;
      }
    }

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      updateDescriptor7 = [(SUCoreUpdate *)self updateDescriptor];
      v24 = +[SUCoreDescriptor nameForDescriptorType:](SUCoreDescriptor, "nameForDescriptorType:", [updateDescriptor7 descriptorType]);
      *buf = 138543618;
      selfCopy2 = self;
      v32 = 2114;
      v33 = v24;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@: Not removing descriptor of type %{public}@; posting removed event", buf, 0x16u);
    }

    updateFSM = [(SUCoreUpdate *)self updateFSM];
    v25 = objc_alloc_init(SUCoreUpdateParam);
    [updateFSM followupEvent:@"SURemoved" withInfo:v25];

    goto LABEL_9;
  }

LABEL_5:
  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    updateDescriptor8 = [(SUCoreUpdate *)self updateDescriptor];
    v12 = +[SUCoreDescriptor nameForDescriptorType:](SUCoreDescriptor, "nameForDescriptorType:", [updateDescriptor8 descriptorType]);
    *buf = 138543618;
    selfCopy2 = self;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing descriptor of type %{public}@", buf, 0x16u);
  }

  downloadControl = [(SUCoreUpdate *)self downloadControl];

  if (!downloadControl)
  {
    [(SUCoreUpdate *)self _trackUpdateAnomaly:@"REMOVE_SU" result:8116 description:@"SUCoreUpdateDownloader instance not available when about to call to remove asset"];
    return 0;
  }

  updateFSM = [(SUCoreUpdate *)self downloadControl];
  [updateFSM removeUpdate];
LABEL_9:

  return 0;
}

- (int64_t)actionCancelPrepare:(id)prepare error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:prepare];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  msuControl = [(SUCoreUpdate *)self msuControl];
  [msuControl cancelPrepare];

  return 0;
}

- (int64_t)actionRemovePrepared:(id)prepared error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:prepared];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  msuControl = [(SUCoreUpdate *)self msuControl];
  [msuControl removePrepared];

  return 0;
}

- (int64_t)actionReportBrainLoadProgress:(id)progress error:(id *)error
{
  progressCopy = progress;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadProgress = [progressCopy downloadProgress];
  LODWORD(extendedStateQueue) = [downloadProgress isStalled];

  downloadProgress2 = [progressCopy downloadProgress];

  if (extendedStateQueue)
  {
    [(SUCoreUpdate *)self _updateBrainLoadStalled:downloadProgress2];
  }

  else
  {
    [(SUCoreUpdate *)self _updateBrainLoadProgress:downloadProgress2];
  }

  return 0;
}

- (int64_t)actionAdvanceBrainLoadSuccess:(id)success error:(id *)error
{
  successCopy = success;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadProgress = [successCopy downloadProgress];

  [(SUCoreUpdate *)self _updateBrainLoaded:downloadProgress];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:3];
  return 0;
}

- (int64_t)actionReportBrainLoadSuccess:(id)success error:(id *)error
{
  successCopy = success;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadProgress = [successCopy downloadProgress];

  [(SUCoreUpdate *)self _updateBrainLoaded:downloadProgress];
  return 0;
}

- (int64_t)actionAdvanceDownloadPreflighted:(id)preflighted error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:preflighted];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreUpdate *)self _updateAssetDownloadPreflighted];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:4];
  return 0;
}

- (int64_t)actionReportDownloadPreflighted:(id)preflighted error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:preflighted];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreUpdate *)self _updateAssetDownloadPreflighted];
  return 0;
}

- (int64_t)actionReportDownloadProgress:(id)progress error:(id *)error
{
  progressCopy = progress;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadProgress = [progressCopy downloadProgress];

  [(SUCoreUpdate *)self _updateAssetDownloadProgress:downloadProgress];
  return 0;
}

- (int64_t)actionReportDownloadStalled:(id)stalled error:(id *)error
{
  stalledCopy = stalled;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadProgress = [stalledCopy downloadProgress];

  [(SUCoreUpdate *)self _updateAssetDownloadStalled:downloadProgress];
  return 0;
}

- (int64_t)actionAdvanceSUDownloaded:(id)downloaded error:(id *)error
{
  downloadedCopy = downloaded;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadProgress = [downloadedCopy downloadProgress];

  [(SUCoreUpdate *)self _updateAssetDownloaded:downloadProgress];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:6];
  return 0;
}

- (int64_t)actionReportSUDownloaded:(id)downloaded error:(id *)error
{
  downloadedCopy = downloaded;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadProgress = [downloadedCopy downloadProgress];

  [(SUCoreUpdate *)self _updateAssetDownloaded:downloadProgress];
  return 0;
}

- (int64_t)actionReportPrepareProgress:(id)progress error:(id *)error
{
  progressCopy = progress;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  prepareProgress = [progressCopy prepareProgress];

  [(SUCoreUpdate *)self _updatePrepareProgress:prepareProgress];
  return 0;
}

- (int64_t)actionAdvanceSuspended:(id)suspended error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:suspended];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreUpdate *)self _eventAfterReachingPhase:8];
  return 0;
}

- (int64_t)actionReportPrepared:(id)prepared error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:prepared];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v7 = objc_alloc(MEMORY[0x277D64488]);
  LODWORD(v8) = 1.0;
  v9 = [v7 initWithPhase:*MEMORY[0x277D64850] isStalled:0 portionComplete:v8 remaining:0.0];
  [(SUCoreUpdate *)self _updatePrepared:v9];

  return 0;
}

- (int64_t)actionReportResumeCurrentSuccess:(id)success error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:success];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreUpdate *)self _updateCurrentResumed];
  return 0;
}

- (int64_t)actionReportResumeCurrentFailed:(id)failed error:(id *)error
{
  failedCopy = failed;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  error = [failedCopy error];

  [(SUCoreUpdate *)self _updateCurrentResumeFailed:error];
  return 0;
}

- (int64_t)actionReportApplyProgress:(id)progress error:(id *)error
{
  progressCopy = progress;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  applyProgress = [progressCopy applyProgress];

  [(SUCoreUpdate *)self _updateApplyProgress:applyProgress];
  return 0;
}

- (int64_t)actionReportApplied:(id)applied error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:applied];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreUpdate *)self _updateApplied];
  return 0;
}

- (int64_t)actionReportRollbackSuccess:(id)success error:(id *)error
{
  successCopy = success;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  rollback = [successCopy rollback];

  [(SUCoreUpdate *)self _updateRolledBack:rollback];
  return 0;
}

- (int64_t)actionReportApplyFailed:(id)failed error:(id *)error
{
  failedCopy = failed;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  error = [failedCopy error];

  [(SUCoreUpdate *)self _applyAttemptFailed:error];
  return 0;
}

- (int64_t)actionReportAttemptFailure:(id)failure error:(id *)error
{
  failureCopy = failure;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  error = [failureCopy error];

  [(SUCoreUpdate *)self _updateAttemptFailed:error];
  [(SUCoreUpdate *)self _cleanupAfterAttempt];
  return 0;
}

- (int64_t)actionReportCanceled:(id)canceled error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:canceled];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreUpdate *)self _updateCanceled];
  [(SUCoreUpdate *)self _cleanupAfterAttempt];
  return 0;
}

- (int64_t)actionReportRollbackFailed:(id)failed error:(id *)error
{
  failedCopy = failed;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  rollback = [failedCopy rollback];
  error = [failedCopy error];

  [(SUCoreUpdate *)self _rollbackAttemptFailed:rollback withError:error];
  return 0;
}

- (int64_t)actionReportAnomalyAPI:(id)i error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:i];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v8 = [mEMORY[0x277D643F8] buildError:8115 underlying:0 description:@"API call not valid for current state"];

  [(SUCoreUpdate *)self _updateAnomaly:v8];
  return 0;
}

- (int64_t)actionReportAnomalyAPIEnd:(id)end error:(id *)error
{
  v5 = [(SUCoreUpdate *)self updateFSM:end];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v8 = [mEMORY[0x277D643F8] buildError:8115 underlying:0 description:@"API call not valid for current resting state"];

  [(SUCoreUpdate *)self _updateAnomaly:v8];
  updateTransaction = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];

  return 0;
}

- (int64_t)actionUnknownAction:(id)action error:(id *)error
{
  v5 = MEMORY[0x277CCACA8];
  actionCopy = action;
  actionCopy = [[v5 alloc] initWithFormat:@"unknown action(%@)", actionCopy];

  updateFSM = [(SUCoreUpdate *)self updateFSM];
  diag = [updateFSM diag];
  [diag dumpTracked:actionCopy dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v11 = [mEMORY[0x277D643F8] buildError:8116 underlying:0 description:actionCopy];

  [(SUCoreUpdate *)self _updateAnomaly:v11];
  return 0;
}

- (SUCoreUpdate)initWithDelegate:(id)delegate updateDescriptor:(id)descriptor updateUUID:(id)d withCallbackQueue:(id)queue
{
  delegateCopy = delegate;
  descriptorCopy = descriptor;
  dCopy = d;
  queueCopy = queue;
  v75.receiver = self;
  v75.super_class = SUCoreUpdate;
  v14 = [(SUCoreUpdate *)&v75 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_21;
  }

  objc_storeStrong(&v14->_updateDescriptor, descriptor);
  objc_storeWeak(&v15->_updateDelegate, delegateCopy);
  objc_storeStrong(&v15->_updateUUID, d);
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v17 = [mEMORY[0x277D643F8] selectDelegateCallbackQueue:queueCopy];
  clientDelegateCallbackQueue = v15->_clientDelegateCallbackQueue;
  v15->_clientDelegateCallbackQueue = v17;

  policy = v15->_policy;
  v15->_targetPhase = 1;
  v15->_policy = 0;

  failedAttemptError = v15->_failedAttemptError;
  v15->_failedAttemptError = 0;

  v21 = objc_alloc_init(SUCoreRollback);
  rollbackControl = v15->_rollbackControl;
  v15->_rollbackControl = v21;

  eligibleRollback = [(SUCoreRollback *)v15->_rollbackControl eligibleRollback];
  rollbackDescriptor = v15->_rollbackDescriptor;
  v15->_rollbackDescriptor = eligibleRollback;

  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  releaseType = [mEMORY[0x277D64418] releaseType];

  if (releaseType)
  {
    v27 = releaseType;
  }

  else
  {
    v27 = @"user";
  }

  v28 = v15->_rollbackDescriptor;
  if (!v28 || ![(SUCoreRollbackDescriptor *)v28 rollbackEligible])
  {
    if (!v15->_updateDescriptor)
    {
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[Update]Initializing SUCoreUpdate without an SUCoreDescriptor nor SUCoreRollbackDescriptor instance. Returning nil SUCoreUpdate", buf, 2u);
      }

      goto LABEL_25;
    }

LABEL_12:
    v71 = queueCopy;
    v73 = delegateCopy;
    v41 = objc_alloc(MEMORY[0x277CCACA8]);
    updateUUID = v15->_updateUUID;
    mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
    buildVersion = [mEMORY[0x277D64418]2 buildVersion];
    productBuildVersion = [(SUCoreDescriptor *)v15->_updateDescriptor productBuildVersion];
    releaseType2 = [(SUCoreDescriptor *)v15->_updateDescriptor releaseType];
    fullReplacement = [(SUCoreDescriptor *)v15->_updateDescriptor fullReplacement];
    v48 = @"incr";
    if (fullReplacement)
    {
      v48 = @"full";
    }

    v72 = v27;
    v49 = [v41 initWithFormat:@"UUID(%@) %@(%@)->%@(%@) %@", updateUUID, buildVersion, v27, productBuildVersion, releaseType2, v48];
    updateName = v15->_updateName;
    v15->_updateName = v49;

    updateDescriptor = [(SUCoreUpdate *)v15 updateDescriptor];
    if ([updateDescriptor descriptorType] != 1)
    {
      updateDescriptor2 = [(SUCoreUpdate *)v15 updateDescriptor];
      if ([updateDescriptor2 descriptorType] != 3)
      {
        updateDescriptor3 = [(SUCoreUpdate *)v15 updateDescriptor];
        descriptorType = [updateDescriptor3 descriptorType];

        if (descriptorType != 5)
        {
          mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
          oslog2 = [mEMORY[0x277D64460]2 oslog];

          queueCopy = v71;
          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[Update] Descriptor type does not indicate SUCoreDescriptorTypeAsset or SUCoreDescriptorTypeSFRAsset or SUCoreDescriptorTypeSplatAsset, no SUCoreUpdateDownloader instance will be initialized", buf, 2u);
          }

          v53 = 0;
          goto LABEL_19;
        }

LABEL_18:
        v53 = [[SUCoreUpdateDownloader alloc] initWithDelegate:v15 forUpdate:descriptorCopy updateUUID:dCopy];
        queueCopy = v71;
LABEL_19:
        downloadControl = v15->_downloadControl;
        v15->_downloadControl = v53;

        v55 = [[SUCoreMSU alloc] initWithDelegate:v15];
        msuControl = v15->_msuControl;
        v15->_msuControl = v55;

        [(SUCoreMSU *)v15->_msuControl assignDescriptor:descriptorCopy updateUUID:dCopy];
        goto LABEL_20;
      }
    }

    goto LABEL_18;
  }

  if (v15->_updateDescriptor)
  {
    goto LABEL_12;
  }

  v73 = delegateCopy;
  v70 = objc_alloc(MEMORY[0x277CCACA8]);
  v29 = v15->_updateUUID;
  productBuildVersion2 = [(SUCoreRollbackDescriptor *)v15->_rollbackDescriptor productBuildVersion];
  releaseType3 = [(SUCoreRollbackDescriptor *)v15->_rollbackDescriptor releaseType];
  mEMORY[0x277D64418]3 = [MEMORY[0x277D64418] sharedDevice];
  buildVersion2 = [mEMORY[0x277D64418]3 buildVersion];
  v72 = v27;
  v34 = [v70 initWithFormat:@"UUID(%@) %@(%@)->%@(%@)", v29, productBuildVersion2, releaseType3, buildVersion2, v27];
  v35 = v15->_updateName;
  v15->_updateName = v34;

  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog3 = [mEMORY[0x277D64460]3 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[Update] Initializing with rollback descriptor. No SUCoreUpdateDownloader instance will be initialized", buf, 2u);
  }

  v38 = v15->_downloadControl;
  v15->_downloadControl = 0;

  v39 = [[SUCoreMSU alloc] initWithDelegate:v15];
  v40 = v15->_msuControl;
  v15->_msuControl = v39;

  [(SUCoreMSU *)v15->_msuControl assignRollbackDescriptor:v15->_rollbackDescriptor updateUUID:dCopy];
LABEL_20:
  _generateStateTable = [objc_opt_class() _generateStateTable];
  stateTable = v15->_stateTable;
  v15->_stateTable = _generateStateTable;

  v59 = [objc_alloc(MEMORY[0x277D64458]) initMachine:@"update" ofInstance:v15->_updateName withTable:v15->_stateTable startingIn:@"ReadyToBegin" usingDelegate:v15 registeringAllInfoClass:objc_opt_class()];
  updateFSM = v15->_updateFSM;
  v15->_updateFSM = v59;

  v61 = v15->_updateFSM;
  delegateCopy = v73;
  if (!v61)
  {
LABEL_25:
    v62 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v62 = v15;
LABEL_26:

  return v62;
}

- (void)targetBrainLoaded:(id)loaded
{
  loadedCopy = loaded;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SUCoreUpdate_targetBrainLoaded___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = loadedCopy;
  v8 = loadedCopy;
  v9 = v5;
  dispatch_async(extendedStateQueue, block);
}

void __34__SUCoreUpdate_targetBrainLoaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:3 withPolicy:*(a1 + 48)];
  [v4 postEvent:@"TargetBrainLoaded" withInfo:v3];
}

- (void)targetDownloadPreflighted:(id)preflighted
{
  preflightedCopy = preflighted;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUCoreUpdate_targetDownloadPreflighted___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = preflightedCopy;
  v8 = preflightedCopy;
  v9 = v5;
  dispatch_async(extendedStateQueue, block);
}

void __42__SUCoreUpdate_targetDownloadPreflighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:4 withPolicy:*(a1 + 48)];
  [v4 postEvent:@"TargetDownloadPreflighted" withInfo:v3];
}

- (void)targetDownloaded:(id)downloaded
{
  downloadedCopy = downloaded;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUCoreUpdate_targetDownloaded___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = downloadedCopy;
  v8 = downloadedCopy;
  v9 = v5;
  dispatch_async(extendedStateQueue, block);
}

void __33__SUCoreUpdate_targetDownloaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:6 withPolicy:*(a1 + 48)];
  [v4 postEvent:@"TargetDownloaded" withInfo:v3];
}

- (void)targetPrepared:(id)prepared
{
  preparedCopy = prepared;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SUCoreUpdate_targetPrepared___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = preparedCopy;
  v8 = preparedCopy;
  v9 = v5;
  dispatch_async(extendedStateQueue, block);
}

void __31__SUCoreUpdate_targetPrepared___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:9 withPolicy:*(a1 + 48)];
  [v4 postEvent:@"TargetPrepared" withInfo:v3];
}

- (void)targetApplied:(id)applied
{
  appliedCopy = applied;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SUCoreUpdate_targetApplied___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = appliedCopy;
  v8 = appliedCopy;
  v9 = v5;
  dispatch_async(extendedStateQueue, block);
}

void __30__SUCoreUpdate_targetApplied___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:10 withPolicy:*(a1 + 48)];
  [v4 postEvent:@"TargetApplied" withInfo:v3];
}

- (void)targetRollback:(id)rollback
{
  rollbackCopy = rollback;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SUCoreUpdate_targetRollback___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = rollbackCopy;
  v8 = rollbackCopy;
  v9 = v5;
  dispatch_async(extendedStateQueue, block);
}

void __31__SUCoreUpdate_targetRollback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v6 = [*(a1 + 32) updateFSM];
  v3 = [SUCoreUpdateParam alloc];
  v4 = [*(a1 + 32) rollbackControl];
  v5 = [(SUCoreUpdateParam *)v3 initWithRollback:v4 withPolicy:*(a1 + 48)];
  [v6 postEvent:@"TargetRollback" withInfo:v5];
}

- (void)resumeCurrentUpdate
{
  v3 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUCoreUpdate_resumeCurrentUpdate__block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  dispatch_async(extendedStateQueue, v7);
}

void __35__SUCoreUpdate_resumeCurrentUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:1 withPolicy:0];
  [v4 postEvent:@"ResumeCurrentUpdate" withInfo:v3];
}

- (void)cancelCurrentUpdate
{
  v3 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUCoreUpdate_cancelCurrentUpdate__block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  dispatch_async(extendedStateQueue, v7);
}

void __35__SUCoreUpdate_cancelCurrentUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v3 = [MEMORY[0x277D643F8] sharedCore];
  v6 = [v3 buildError:8124 underlying:0 description:@"update attempt was canceled"];

  [*(a1 + 32) _trackUpdateError:@"cancelCurrentUpdate" forReason:0 error:v6];
  v4 = [*(a1 + 32) updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initTargetPhase:1 withPolicy:0];
  [v4 postEvent:@"CancelCurrentUpdate" withInfo:v5];
}

- (id)copyCurrentState
{
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  copyCurrentState = [updateFSM copyCurrentState];

  return copyCurrentState;
}

- (id)rollbackAvailable
{
  rollbackControl = [(SUCoreUpdate *)self rollbackControl];
  eligibleRollback = [rollbackControl eligibleRollback];

  return eligibleRollback;
}

- (id)previousRollback
{
  rollbackControl = [(SUCoreUpdate *)self rollbackControl];
  previousRollback = [rollbackControl previousRollback];

  return previousRollback;
}

- (void)_updateBrainLoadProgress:(id)progress
{
  v16 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__SUCoreUpdate__updateBrainLoadProgress___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = progressCopy;
    dispatch_async(clientDelegateCallbackQueue, v10);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = progressCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateBrainLoadProgress:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }
}

void __41__SUCoreUpdate__updateBrainLoadProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateBrainLoadProgress:*(a1 + 40)];
}

- (void)_updateBrainLoadStalled:(id)stalled
{
  v16 = *MEMORY[0x277D85DE8];
  stalledCopy = stalled;
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__SUCoreUpdate__updateBrainLoadStalled___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = stalledCopy;
    dispatch_async(clientDelegateCallbackQueue, v10);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = stalledCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateBrainLoadStalled:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }
}

void __40__SUCoreUpdate__updateBrainLoadStalled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateBrainLoadStalled:*(a1 + 40)];
}

- (void)_updateBrainLoaded:(id)loaded
{
  v18 = *MEMORY[0x277D85DE8];
  loadedCopy = loaded;
  if ([(SUCoreUpdate *)self targetPhase]> 3)
  {
    updateTransaction = 0;
  }

  else
  {
    updateTransaction = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__SUCoreUpdate__updateBrainLoaded___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v12 = loadedCopy;
    v13 = updateTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = loadedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateBrainLoaded:) so not reporting progress=%{public}@", buf, 0x16u);
    }

    if (updateTransaction)
    {
      [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
    }
  }
}

void __35__SUCoreUpdate__updateBrainLoaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateBrainLoaded:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_updateAssetDownloadPreflighted
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(SUCoreUpdate *)self targetPhase]> 4)
  {
    updateTransaction = 0;
  }

  else
  {
    updateTransaction = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__SUCoreUpdate__updateAssetDownloadPreflighted__block_invoke;
    v9[3] = &unk_27892D478;
    v9[4] = self;
    v10 = updateTransaction;
    dispatch_async(clientDelegateCallbackQueue, v9);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAssetDownloadPreflighted) so not reporting", buf, 0xCu);
    }

    if (updateTransaction)
    {
      [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
    }
  }
}

void __47__SUCoreUpdate__updateAssetDownloadPreflighted__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAssetDownloadPreflighted];

  if (*(a1 + 40))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_updateAssetDownloadProgress:(id)progress
{
  v16 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__SUCoreUpdate__updateAssetDownloadProgress___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = progressCopy;
    dispatch_async(clientDelegateCallbackQueue, v10);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = progressCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAssetDownloadProgress:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }
}

void __45__SUCoreUpdate__updateAssetDownloadProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAssetDownloadProgress:*(a1 + 40)];
}

- (void)_updateAssetDownloadStalled:(id)stalled
{
  v16 = *MEMORY[0x277D85DE8];
  stalledCopy = stalled;
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__SUCoreUpdate__updateAssetDownloadStalled___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = stalledCopy;
    dispatch_async(clientDelegateCallbackQueue, v10);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = stalledCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAssetDownloadStalled:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }
}

void __44__SUCoreUpdate__updateAssetDownloadStalled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAssetDownloadStalled:*(a1 + 40)];
}

- (void)_updateAssetDownloaded:(id)downloaded
{
  v18 = *MEMORY[0x277D85DE8];
  downloadedCopy = downloaded;
  if ([(SUCoreUpdate *)self targetPhase]> 6)
  {
    updateTransaction = 0;
  }

  else
  {
    updateTransaction = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SUCoreUpdate__updateAssetDownloaded___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v12 = downloadedCopy;
    v13 = updateTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = downloadedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAssetDownloaded:) so not reporting progress=%{public}@", buf, 0x16u);
    }

    if (updateTransaction)
    {
      [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
    }
  }
}

void __39__SUCoreUpdate__updateAssetDownloaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAssetDownloaded:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_updatePrepareProgress:(id)progress
{
  v16 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__SUCoreUpdate__updatePrepareProgress___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = progressCopy;
    dispatch_async(clientDelegateCallbackQueue, v10);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = progressCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updatePrepareProgress:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }
}

void __39__SUCoreUpdate__updatePrepareProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updatePrepareProgress:*(a1 + 40)];
}

- (void)_updatePrepared:(id)prepared
{
  v18 = *MEMORY[0x277D85DE8];
  preparedCopy = prepared;
  if ([(SUCoreUpdate *)self targetPhase]> 7)
  {
    updateTransaction = 0;
  }

  else
  {
    updateTransaction = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__SUCoreUpdate__updatePrepared___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v12 = preparedCopy;
    v13 = updateTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = preparedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updatePrepared:) so not reporting progress=%{public}@", buf, 0x16u);
    }

    if (updateTransaction)
    {
      [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
    }
  }
}

void __32__SUCoreUpdate__updatePrepared___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updatePrepared:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_updateCurrentResumed
{
  v13 = *MEMORY[0x277D85DE8];
  updateTransaction = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__SUCoreUpdate__updateCurrentResumed__block_invoke;
    v9[3] = &unk_27892D478;
    v9[4] = self;
    v10 = updateTransaction;
    dispatch_async(clientDelegateCallbackQueue, v9);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateCurrentResumed) so not reporting", buf, 0xCu);
    }

    if (updateTransaction)
    {
      [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
    }
  }
}

void __37__SUCoreUpdate__updateCurrentResumed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateCurrentResumed];

  if (*(a1 + 40))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_updateCurrentResumeFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  updateTransaction = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    failedAttemptError = [(SUCoreUpdate *)self failedAttemptError];
    if (!failedAttemptError)
    {
      failedAttemptError = failedCopy;
    }

    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SUCoreUpdate__updateCurrentResumeFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedAttemptError;
    v15 = updateTransaction;
    v10 = failedAttemptError;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateCurrentResumeFailed:) so not reporting error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
  }
}

uint64_t __43__SUCoreUpdate__updateCurrentResumeFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateCurrentResumeFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"update.Transaction"];
}

- (void)_updateApplyProgress:(id)progress
{
  v16 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__SUCoreUpdate__updateApplyProgress___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = progressCopy;
    dispatch_async(clientDelegateCallbackQueue, v10);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = progressCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateApplyProgress:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }
}

void __37__SUCoreUpdate__updateApplyProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateApplyProgress:*(a1 + 40)];
}

- (void)_updateApplied
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(SUCoreUpdate *)self targetPhase]> 10)
  {
    updateTransaction = 0;
  }

  else
  {
    updateTransaction = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  updateDescriptor = [(SUCoreUpdate *)self updateDescriptor];
  splatOnly = [updateDescriptor splatOnly];

  if (splatOnly)
  {
    updateDescriptor2 = [(SUCoreUpdate *)self updateDescriptor];
    date = [MEMORY[0x277CBEAA8] date];
    [updateDescriptor2 setSplatInstallDate:date];
  }

  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __30__SUCoreUpdate__updateApplied__block_invoke;
    v13[3] = &unk_27892D478;
    v13[4] = self;
    v14 = updateTransaction;
    dispatch_async(clientDelegateCallbackQueue, v13);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateApplied:) so not reporting", buf, 0xCu);
    }

    if (updateTransaction)
    {
      [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
    }
  }
}

void __30__SUCoreUpdate__updateApplied__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateApplied];

  if (*(a1 + 40))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_applyAttemptFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  updateTransaction = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    failedAttemptError = [(SUCoreUpdate *)self failedAttemptError];
    if (!failedAttemptError)
    {
      failedAttemptError = failedCopy;
    }

    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__SUCoreUpdate__applyAttemptFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedAttemptError;
    v15 = updateTransaction;
    v10 = failedAttemptError;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(applyAttemptFailed:) so not reporting error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
  }
}

uint64_t __36__SUCoreUpdate__applyAttemptFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 applyAttemptFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"update.Transaction"];
}

- (void)_updateAttemptFailed:(id)failed
{
  v20 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  updateTransaction = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    failedAttemptError = [(SUCoreUpdate *)self failedAttemptError];
    if (!failedAttemptError)
    {
      failedAttemptError = failedCopy;
    }

    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__SUCoreUpdate__updateAttemptFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v14 = failedAttemptError;
    v15 = updateTransaction;
    v10 = failedAttemptError;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAttemptFailed:) so not reporting error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
  }
}

uint64_t __37__SUCoreUpdate__updateAttemptFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAttemptFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"update.Transaction"];
}

- (void)_updateCanceled
{
  v13 = *MEMORY[0x277D85DE8];
  updateTransaction = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__SUCoreUpdate__updateCanceled__block_invoke;
    v9[3] = &unk_27892D478;
    v9[4] = self;
    v10 = updateTransaction;
    dispatch_async(clientDelegateCallbackQueue, v9);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateCanceled) so not reporting", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
  }
}

uint64_t __31__SUCoreUpdate__updateCanceled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateCanceled];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"update.Transaction"];
}

- (void)_updateAnomaly:(id)anomaly
{
  v16 = *MEMORY[0x277D85DE8];
  anomalyCopy = anomaly;
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__SUCoreUpdate__updateAnomaly___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = anomalyCopy;
    dispatch_async(clientDelegateCallbackQueue, v10);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = anomalyCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAnomaly:) so not reporting error=%{public}@", buf, 0x16u);
    }
  }
}

void __31__SUCoreUpdate__updateAnomaly___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAnomaly:*(a1 + 40)];
}

- (void)_updateRolledBack:(id)back
{
  v17 = *MEMORY[0x277D85DE8];
  backCopy = back;
  if ([(SUCoreUpdate *)self targetPhase]> 11)
  {
    updateTransaction = 0;
  }

  else
  {
    updateTransaction = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__SUCoreUpdate__updateRolledBack___block_invoke;
    block[3] = &unk_27892D340;
    v12 = backCopy;
    selfCopy = self;
    v14 = updateTransaction;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateRolledBack:) so not reporting", buf, 0xCu);
    }

    if (updateTransaction)
    {
      [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
    }
  }
}

void __34__SUCoreUpdate__updateRolledBack___block_invoke(uint64_t a1)
{
  [*(a1 + 32) rollbackCompleted];
  v2 = [*(a1 + 40) updateDelegate];
  [v2 updateRolledBack:*(a1 + 32)];

  if (*(a1 + 48))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_rollbackAttemptFailed:(id)failed withError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  errorCopy = error;
  updateTransaction = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    failedAttemptError = [(SUCoreUpdate *)self failedAttemptError];
    if (!failedAttemptError)
    {
      failedAttemptError = errorCopy;
    }

    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__SUCoreUpdate__rollbackAttemptFailed_withError___block_invoke;
    v16[3] = &unk_27892E090;
    v16[4] = self;
    v17 = failedCopy;
    v18 = failedAttemptError;
    v19 = updateTransaction;
    v13 = failedAttemptError;
    dispatch_async(clientDelegateCallbackQueue, v16);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v22 = 2114;
      v23 = errorCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(rollbackAttemptFailed:) so not reporting error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:updateTransaction withName:@"update.Transaction"];
  }
}

uint64_t __49__SUCoreUpdate__rollbackAttemptFailed_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 rollbackAttemptFailed:*(a1 + 40) withError:*(a1 + 48)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 56);

  return [v3 endTransaction:v4 withName:@"update.Transaction"];
}

- (void)msuBrainLoadProgress:(id)progress
{
  progressCopy = progress;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithDownloadProgress:progressCopy];

  [updateFSM postEvent:@"BrainLoadProgress" withInfo:v5];
}

- (void)msuBrainLoadStalled:(id)stalled
{
  v12 = *MEMORY[0x277D85DE8];
  stalledCopy = stalled;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    updateName = [(SUCoreUpdate *)self updateName];
    v8 = 138543618;
    v9 = updateName;
    v10 = 2114;
    v11 = stalledCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[UPDATE(%{public}@)] msuBrainLoadStalled - not being reported to policy layer progress=%{public}@", &v8, 0x16u);
  }
}

- (void)msuBrainLoaded:(id)loaded
{
  loadedCopy = loaded;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithDownloadProgress:loadedCopy];

  [updateFSM postEvent:@"BrainLoadSuccess" withInfo:v5];
}

- (void)msuBrainLoadFailed:(id)failed
{
  failedCopy = failed;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuBrainLoadFailed" forReason:0 error:failedCopy];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:failedCopy];

  [updateFSM postEvent:@"BrainLoadFailed" withInfo:v5];
}

- (void)msuSUDownloadPreflighted
{
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [updateFSM postEvent:@"PreflightSuccess" withInfo:v2];
}

- (void)msuSUDownloadPreflightFailed:(id)failed
{
  failedCopy = failed;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuSUDownloadPreflightFailed" forReason:0 error:failedCopy];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:failedCopy];

  [updateFSM postEvent:@"PreflightFailed" withInfo:v5];
}

- (void)msuPrepareProgress:(id)progress
{
  progressCopy = progress;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithPrepareProgress:progressCopy];

  [updateFSM postEvent:@"PrepareProgress" withInfo:v5];
}

- (void)msuPrepared:(id)prepared
{
  preparedCopy = prepared;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithPrepareProgress:preparedCopy];

  [updateFSM postEvent:@"PrepareSuccess" withInfo:v5];
}

- (void)msuPrepareFailed:(id)failed
{
  failedCopy = failed;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuPrepareFailed" forReason:0 error:failedCopy];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:failedCopy];

  [updateFSM postEvent:@"PrepareFailed" withInfo:v5];
}

- (void)msuSuspended
{
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [updateFSM postEvent:@"SuspendSuccess" withInfo:v2];
}

- (void)msuSuspendFailed:(id)failed
{
  failedCopy = failed;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuSuspendFailed" forReason:0 error:failedCopy];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:failedCopy];

  [updateFSM postEvent:@"SuspendFailed" withInfo:v5];
}

- (void)msuResumed
{
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [updateFSM postEvent:@"ResumeSuccess" withInfo:v2];
}

- (void)msuResumeFailed:(id)failed
{
  failedCopy = failed;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuResumeFailed" forReason:0 error:failedCopy];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:failedCopy];

  [updateFSM postEvent:@"ResumeFailed" withInfo:v5];
}

- (void)msuApplyProgress:(id)progress
{
  progressCopy = progress;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithApplyProgress:progressCopy];

  [updateFSM postEvent:@"ApplyProgress" withInfo:v5];
}

- (void)msuApplied
{
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [updateFSM postEvent:@"ApplySuccess" withInfo:v2];
}

- (void)msuApplyFailed:(id)failed
{
  failedCopy = failed;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuApplyFailed" forReason:0 error:failedCopy];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:failedCopy];

  [updateFSM postEvent:@"ApplyFailed" withInfo:v5];
}

- (void)msuRollbackPrepareSuccess
{
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v3 = [SUCoreUpdateParam alloc];
  rollbackControl = [(SUCoreUpdate *)self rollbackControl];
  v5 = [(SUCoreUpdateParam *)v3 initWithRollback:rollbackControl withError:0];
  [updateFSM postEvent:@"RB_RollbackPrepareSuccess" withInfo:v5];
}

- (void)msuRollbackSuspendSuccess
{
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v3 = [SUCoreUpdateParam alloc];
  rollbackControl = [(SUCoreUpdate *)self rollbackControl];
  v5 = [(SUCoreUpdateParam *)v3 initWithRollback:rollbackControl withError:0];
  [updateFSM postEvent:@"RB_RollbackSuspendSuccess" withInfo:v5];
}

- (void)msuRollbackResumeSuccess
{
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v3 = [SUCoreUpdateParam alloc];
  rollbackControl = [(SUCoreUpdate *)self rollbackControl];
  v5 = [(SUCoreUpdateParam *)v3 initWithRollback:rollbackControl withError:0];
  [updateFSM postEvent:@"RB_RollbackResumeSuccess" withInfo:v5];
}

- (void)msuRollbackApplySuccess
{
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v3 = [SUCoreUpdateParam alloc];
  rollbackControl = [(SUCoreUpdate *)self rollbackControl];
  v5 = [(SUCoreUpdateParam *)v3 initWithRollback:rollbackControl withError:0];
  [updateFSM postEvent:@"RB_RollbackAppleSuccess" withInfo:v5];
}

- (void)msuRollbackApplyFailed:(id)failed
{
  failedCopy = failed;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuRollbackApplyFailed" forReason:0 error:failedCopy];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:failedCopy];

  [updateFSM postEvent:@"RB_RollbackApplyFailed" withInfo:v5];
}

- (void)msuRollbackFailed:(id)failed
{
  failedCopy = failed;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuRollbackFailed" forReason:0 error:failedCopy];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [SUCoreUpdateParam alloc];
  rollbackControl = [(SUCoreUpdate *)self rollbackControl];
  v7 = [(SUCoreUpdateParam *)v5 initWithRollback:rollbackControl withError:failedCopy];

  [updateFSM postEvent:@"RB_RollbackFailed" withInfo:v7];
}

- (void)msuRemoved
{
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [updateFSM postEvent:@"SURemoved" withInfo:v2];
}

- (void)msuRemoveFailed:(id)failed
{
  failedCopy = failed;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuRemoveFailed" forReason:0 error:failedCopy];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:failedCopy];

  [updateFSM postEvent:@"SURemoved" withInfo:v5];
}

- (void)downloadProgress:(id)progress
{
  progressCopy = progress;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithDownloadProgress:progressCopy];

  [updateFSM postEvent:@"DownloadProgress" withInfo:v5];
}

- (void)downloadStalled:(id)stalled
{
  stalledCopy = stalled;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithDownloadProgress:stalledCopy];

  [updateFSM postEvent:@"DownloadStalled" withInfo:v5];
}

- (void)preSUStagingFinished:(id)finished
{
  v16 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  updateDelegate = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    clientDelegateCallbackQueue = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__SUCoreUpdate_preSUStagingFinished___block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = finishedCopy;
    dispatch_async(clientDelegateCallbackQueue, v10);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = finishedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(preSUStagingFinished:) so not reporting psusOutcome=%{public}@", buf, 0x16u);
    }
  }
}

void __37__SUCoreUpdate_preSUStagingFinished___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 preSUStagingFinished:*(a1 + 40)];
}

- (void)downloaded:(id)downloaded
{
  downloadedCopy = downloaded;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithDownloadProgress:downloadedCopy];

  [updateFSM postEvent:@"DownloadSuccess" withInfo:v5];
}

- (void)downloadFailed:(id)failed
{
  failedCopy = failed;
  [(SUCoreUpdate *)self _trackUpdateError:@"maDownloadFailed" forReason:0 error:failedCopy];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:failedCopy];

  [updateFSM postEvent:@"DownloadFailed" withInfo:v5];
}

- (void)updateRemoved
{
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [updateFSM postEvent:@"SURemoved" withInfo:v2];
}

- (void)updateRemoveFailed:(id)failed
{
  failedCopy = failed;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  diag = [updateFSM diag];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ remove failed (reported as removed)", self];
  [diag trackAnomaly:@"MA-DELEGATE" forReason:v7 withResult:objc_msgSend(failedCopy withError:{"code"), failedCopy}];

  [(SUCoreUpdate *)self _trackUpdateError:@"maAssetRemoveFailed" forReason:0 error:failedCopy];
  updateFSM2 = [(SUCoreUpdate *)self updateFSM];
  v8 = [[SUCoreUpdateParam alloc] initWithError:failedCopy];

  [updateFSM2 postEvent:@"SURemoved" withInfo:v8];
}

- (void)anomaly:(id)anomaly
{
  anomalyCopy = anomaly;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  diag = [updateFSM diag];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ anomaly", self];
  [diag trackAnomaly:@"MA-DELEGATE" forReason:v6 withResult:objc_msgSend(anomalyCopy withError:{"code"), anomalyCopy}];
}

- (void)_adjustTarget:(int64_t)target withPolicy:(id)policy
{
  v20 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (target)
  {
    if ([(SUCoreUpdate *)self targetPhase]<= target)
    {
      [(SUCoreUpdate *)self setTargetPhase:target];
      if (!policyCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [SUCoreUpdateParam targetPhaseName:target];
    v11 = [SUCoreUpdateParam targetPhaseName:[(SUCoreUpdate *)self targetPhase]];
    v12 = [v9 initWithFormat:@"target requested(%@) when targeting(%@) [no change to target]", v10, v11];

    [(SUCoreUpdate *)self _trackUpdateAnomaly:@"TARGET" result:8116 description:v12];
  }

  if (!policyCopy)
  {
    goto LABEL_10;
  }

LABEL_7:
  [(SUCoreUpdate *)self setPolicy:policyCopy];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    policy = [(SUCoreUpdate *)self policy];
    *buf = 138543618;
    selfCopy = self;
    v18 = 2112;
    v19 = policy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ adjusted policy: %@", buf, 0x16u);
  }

LABEL_10:
}

- (void)_eventAfterReachingPhase:(int64_t)phase
{
  v73 = *MEMORY[0x277D85DE8];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (phase > 5)
  {
    if (phase > 7)
    {
      if (phase != 8)
      {
        if (phase != 9)
        {
          if (phase != 10)
          {
            return;
          }

LABEL_60:
          if ([(SUCoreUpdate *)self targetPhase]>= 11)
          {
            v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"after reaching applied phase encountered invalid target phase(%ld)", -[SUCoreUpdate targetPhase](self, "targetPhase")];
            [(SUCoreUpdate *)self _trackUpdateAnomaly:@"[REACHED_PHASE]" result:8116 description:v63];
LABEL_70:

            return;
          }

          v14 = kSU_E_ApplySuccess;
LABEL_68:
          v64 = *v14;
          if (!v64)
          {
            return;
          }

          v63 = v64;
          updateFSM2 = [(SUCoreUpdate *)self updateFSM];
          v66 = objc_alloc_init(SUCoreUpdateParam);
          [updateFSM2 followupEvent:v63 withInfo:v66];

          goto LABEL_70;
        }

LABEL_54:
        if ([(SUCoreUpdate *)self targetPhase]< 10)
        {
          v14 = kSU_E_ResumeSuccessAtTarget;
          goto LABEL_68;
        }

        policy = [(SUCoreUpdate *)self policy];
        applyPolicy = [policy applyPolicy];
        skipPhase = [applyPolicy skipPhase];

        if (!skipPhase)
        {
          v14 = kSU_E_PerformApply;
          goto LABEL_68;
        }

        mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
        oslog = [mEMORY[0x277D64460] oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v61 = [SUCoreUpdateParam targetPhaseName:phase];
          v62 = [SUCoreUpdateParam targetPhaseName:10];
          *buf = 138543874;
          selfCopy8 = self;
          v69 = 2114;
          v70 = v61;
          v71 = 2114;
          v72 = v62;
          _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped apply of update", buf, 0x20u);
        }

        goto LABEL_60;
      }

LABEL_48:
      if ([(SUCoreUpdate *)self targetPhase]< 9)
      {
        v14 = kSU_E_SuspendSuccessAtTarget;
        goto LABEL_68;
      }

      policy2 = [(SUCoreUpdate *)self policy];
      resumePolicy = [policy2 resumePolicy];
      skipPhase2 = [resumePolicy skipPhase];

      if (!skipPhase2)
      {
        v14 = kSU_E_PerformResume;
        goto LABEL_68;
      }

      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog2 = [mEMORY[0x277D64460]2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [SUCoreUpdateParam targetPhaseName:phase];
        v55 = [SUCoreUpdateParam targetPhaseName:9];
        *buf = 138543874;
        selfCopy8 = self;
        v69 = 2114;
        v70 = v54;
        v71 = 2114;
        v72 = v55;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped resume of suspended update", buf, 0x20u);
      }

      goto LABEL_54;
    }

    if (phase != 6)
    {
LABEL_44:
      policy3 = [(SUCoreUpdate *)self policy];
      suspendPolicy = [policy3 suspendPolicy];
      skipPhase3 = [suspendPolicy skipPhase];

      if (!skipPhase3)
      {
        v14 = kSU_E_PerformSuspend;
        goto LABEL_68;
      }

      mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]3 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [SUCoreUpdateParam targetPhaseName:phase];
        v48 = [SUCoreUpdateParam targetPhaseName:8];
        *buf = 138543874;
        selfCopy8 = self;
        v69 = 2114;
        v70 = v47;
        v71 = 2114;
        v72 = v48;
        _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped suspend of prepared update", buf, 0x20u);
      }

      goto LABEL_48;
    }

LABEL_38:
    if ([(SUCoreUpdate *)self targetPhase]< 7)
    {
      v14 = kSU_E_DownloadSuccessAtTarget;
      goto LABEL_68;
    }

    policy4 = [(SUCoreUpdate *)self policy];
    preparePolicy = [policy4 preparePolicy];
    skipPhase4 = [preparePolicy skipPhase];

    if (!skipPhase4)
    {
      v14 = kSU_E_PerformPrepare;
      goto LABEL_68;
    }

    mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
    oslog4 = [mEMORY[0x277D64460]4 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [SUCoreUpdateParam targetPhaseName:phase];
      v41 = [SUCoreUpdateParam targetPhaseName:7];
      *buf = 138543874;
      selfCopy8 = self;
      v69 = 2114;
      v70 = v40;
      v71 = 2114;
      v72 = v41;
      _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped prepare of update", buf, 0x20u);
    }

    goto LABEL_44;
  }

  if (phase > 3)
  {
    if (phase != 4)
    {
LABEL_34:
      policy5 = [(SUCoreUpdate *)self policy];
      softwareUpdateDownloadPolicy = [policy5 softwareUpdateDownloadPolicy];
      skipPhase5 = [softwareUpdateDownloadPolicy skipPhase];

      if (!skipPhase5)
      {
        v14 = kSU_E_PerformDownloadSU;
        goto LABEL_68;
      }

      mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
      oslog5 = [mEMORY[0x277D64460]5 oslog];

      if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [SUCoreUpdateParam targetPhaseName:phase];
        v34 = [SUCoreUpdateParam targetPhaseName:6];
        *buf = 138543874;
        selfCopy8 = self;
        v69 = 2114;
        v70 = v33;
        v71 = 2114;
        v72 = v34;
        _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped download of SU asset", buf, 0x20u);
      }

      goto LABEL_38;
    }

LABEL_25:
    if ([(SUCoreUpdate *)self targetPhase]< 5)
    {
      v14 = kSU_E_PreflightSuccessAtTarget;
      goto LABEL_68;
    }

    policy6 = [(SUCoreUpdate *)self policy];
    checkAvailableSpace = [policy6 checkAvailableSpace];

    if (checkAvailableSpace)
    {
      v14 = kSU_E_PerformDownloadSpaceCheck;
      goto LABEL_68;
    }

    mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
    oslog6 = [mEMORY[0x277D64460]6 oslog];

    if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [SUCoreUpdateParam targetPhaseName:phase];
      v27 = [SUCoreUpdateParam targetPhaseName:5];
      *buf = 138543874;
      selfCopy8 = self;
      v69 = 2114;
      v70 = v26;
      v71 = 2114;
      v72 = v27;
      _os_log_impl(&dword_23193C000, oslog6, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped check of available filesystem space", buf, 0x20u);
    }

    goto LABEL_34;
  }

  if (phase == 2)
  {
    policy7 = [(SUCoreUpdate *)self policy];
    loadBrainPolicy = [policy7 loadBrainPolicy];
    skipPhase6 = [loadBrainPolicy skipPhase];

    if (!skipPhase6)
    {
      v14 = kSU_E_PerformLoadBrain;
      goto LABEL_68;
    }

    mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
    oslog7 = [mEMORY[0x277D64460]7 oslog];

    if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [SUCoreUpdateParam targetPhaseName:2];
      v13 = [SUCoreUpdateParam targetPhaseName:3];
      *buf = 138543874;
      selfCopy8 = self;
      v69 = 2114;
      v70 = v12;
      v71 = 2114;
      v72 = v13;
      _os_log_impl(&dword_23193C000, oslog7, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped load of update brain", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (phase == 3)
  {
LABEL_19:
    if ([(SUCoreUpdate *)self targetPhase]< 4)
    {
      v14 = kSU_E_BrainLoadSuccessAtTarget;
      goto LABEL_68;
    }

    policy8 = [(SUCoreUpdate *)self policy];
    downloadPreflightPolicy = [policy8 downloadPreflightPolicy];
    skipPhase7 = [downloadPreflightPolicy skipPhase];

    if (!skipPhase7)
    {
      v14 = kSU_E_PerformPreflightDownloadSU;
      goto LABEL_68;
    }

    mEMORY[0x277D64460]8 = [MEMORY[0x277D64460] sharedLogger];
    oslog8 = [mEMORY[0x277D64460]8 oslog];

    if (os_log_type_enabled(oslog8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [SUCoreUpdateParam targetPhaseName:phase];
      v21 = [SUCoreUpdateParam targetPhaseName:4];
      *buf = 138543874;
      selfCopy8 = self;
      v69 = 2114;
      v70 = v20;
      v71 = 2114;
      v72 = v21;
      _os_log_impl(&dword_23193C000, oslog8, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped preflight of SU asset download", buf, 0x20u);
    }

    goto LABEL_25;
  }
}

- (void)_eventAfterReachingRollbackPhase:(int64_t)phase
{
  v77 = *MEMORY[0x277D85DE8];
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (phase <= 4)
  {
    if (phase <= 2)
    {
      if (phase == 1)
      {
        policy = [(SUCoreUpdate *)self policy];
        rollbackPolicy = [policy rollbackPolicy];
        skipCancelPreviousUpdate = [rollbackPolicy skipCancelPreviousUpdate];

        if (!skipCancelPreviousUpdate)
        {
          v14 = kSU_E_RB_CancelNonRollbackUpdate;
          goto LABEL_60;
        }

        mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
        oslog = [mEMORY[0x277D64460] oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [SUCoreUpdateParam targetRollbackPhaseName:1];
          v13 = [SUCoreUpdateParam targetRollbackPhaseName:2];
          *buf = 138543874;
          selfCopy7 = self;
          v73 = 2114;
          v74 = v12;
          v75 = 2114;
          v76 = v13;
          _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped cancel previous update of SU asset download before rollback", buf, 0x20u);
        }
      }

      else if (phase != 2)
      {
        return;
      }

      v14 = kSU_E_RB_BeginRollback;
LABEL_60:
      v67 = *v14;
      if (!v67)
      {
        return;
      }

      v68 = v67;
      updateFSM2 = [(SUCoreUpdate *)self updateFSM];
      v70 = objc_alloc_init(SUCoreUpdateParam);
      [updateFSM2 followupEvent:v68 withInfo:v70];

      goto LABEL_63;
    }

    if (phase == 3)
    {
      policy2 = [(SUCoreUpdate *)self policy];
      loadBrainPolicy = [policy2 loadBrainPolicy];
      skipPhase = [loadBrainPolicy skipPhase];

      if (!skipPhase)
      {
        v14 = kSU_E_RB_PerformLoadBrain;
        goto LABEL_60;
      }

      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog2 = [mEMORY[0x277D64460]2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [SUCoreUpdateParam targetRollbackPhaseName:3];
        v21 = [SUCoreUpdateParam targetRollbackPhaseName:4];
        *buf = 138543874;
        selfCopy7 = self;
        v73 = 2114;
        v74 = v20;
        v75 = 2114;
        v76 = v21;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped load of update brain", buf, 0x20u);
      }
    }

    policy3 = [(SUCoreUpdate *)self policy];
    rollbackPolicy2 = [policy3 rollbackPolicy];
    performPhase = [rollbackPolicy2 performPhase];

    if ((performPhase & 1) == 0)
    {
      mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]3 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    policy4 = [(SUCoreUpdate *)self policy];
    rollbackPolicy3 = [policy4 rollbackPolicy];
    performRollbackPreparePhase = [rollbackPolicy3 performRollbackPreparePhase];

    if (performRollbackPreparePhase)
    {
      v14 = kSU_E_RB_PerformRollbackPrepare;
      goto LABEL_60;
    }

    mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
    oslog4 = [mEMORY[0x277D64460]4 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [SUCoreUpdateParam targetRollbackPhaseName:phase];
      v33 = [SUCoreUpdateParam targetRollbackPhaseName:5];
      *buf = 138543874;
      selfCopy7 = self;
      v73 = 2114;
      v74 = v32;
      v75 = 2114;
      v76 = v33;
      _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped rollback prepare phase", buf, 0x20u);
    }

    goto LABEL_33;
  }

  if (phase <= 6)
  {
    if (phase != 5)
    {
LABEL_41:
      policy5 = [(SUCoreUpdate *)self policy];
      rollbackPolicy4 = [policy5 rollbackPolicy];
      performPhase2 = [rollbackPolicy4 performPhase];

      if ((performPhase2 & 1) == 0)
      {
        mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]5 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        goto LABEL_57;
      }

      policy6 = [(SUCoreUpdate *)self policy];
      rollbackPolicy5 = [policy6 rollbackPolicy];
      performRollbackResumePhase = [rollbackPolicy5 performRollbackResumePhase];

      if (performRollbackResumePhase)
      {
        v14 = kSU_E_RB_PerformRollbackResume;
        goto LABEL_60;
      }

      mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
      oslog5 = [mEMORY[0x277D64460]6 oslog];

      if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [SUCoreUpdateParam targetRollbackPhaseName:phase];
        v55 = [SUCoreUpdateParam targetRollbackPhaseName:7];
        *buf = 138543874;
        selfCopy7 = self;
        v73 = 2114;
        v74 = v54;
        v75 = 2114;
        v76 = v55;
        _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped rollback resume phase", buf, 0x20u);
      }

      goto LABEL_49;
    }

LABEL_33:
    policy7 = [(SUCoreUpdate *)self policy];
    rollbackPolicy6 = [policy7 rollbackPolicy];
    performPhase3 = [rollbackPolicy6 performPhase];

    if ((performPhase3 & 1) == 0)
    {
      mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]7 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    policy8 = [(SUCoreUpdate *)self policy];
    rollbackPolicy7 = [policy8 rollbackPolicy];
    performRollbackSuspendPhase = [rollbackPolicy7 performRollbackSuspendPhase];

    if (performRollbackSuspendPhase)
    {
      v14 = kSU_E_RB_PerformRollbackSuspend;
      goto LABEL_60;
    }

    mEMORY[0x277D64460]8 = [MEMORY[0x277D64460] sharedLogger];
    oslog6 = [mEMORY[0x277D64460]8 oslog];

    if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [SUCoreUpdateParam targetRollbackPhaseName:phase];
      v44 = [SUCoreUpdateParam targetRollbackPhaseName:6];
      *buf = 138543874;
      selfCopy7 = self;
      v73 = 2114;
      v74 = v43;
      v75 = 2114;
      v76 = v44;
      _os_log_impl(&dword_23193C000, oslog6, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped rollback suspend phase", buf, 0x20u);
    }

    goto LABEL_41;
  }

  if (phase == 7)
  {
LABEL_49:
    policy9 = [(SUCoreUpdate *)self policy];
    rollbackPolicy8 = [policy9 rollbackPolicy];
    performPhase4 = [rollbackPolicy8 performPhase];

    if (performPhase4)
    {
      policy10 = [(SUCoreUpdate *)self policy];
      rollbackPolicy9 = [policy10 rollbackPolicy];
      performRollbackApplyPhase = [rollbackPolicy9 performRollbackApplyPhase];

      if (performRollbackApplyPhase)
      {
        v14 = kSU_E_RB_PerformRollbackApply;
        goto LABEL_60;
      }

      mEMORY[0x277D64460]9 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]9 oslog];

      if (!os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      v63 = [SUCoreUpdateParam targetRollbackPhaseName:phase];
      v64 = [SUCoreUpdateParam targetRollbackPhaseName:8];
      *buf = 138543874;
      selfCopy7 = self;
      v73 = 2114;
      v74 = v63;
      v75 = 2114;
      v76 = v64;
      v65 = "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped rollback apply phase";
      goto LABEL_56;
    }

    mEMORY[0x277D64460]10 = [MEMORY[0x277D64460] sharedLogger];
    oslog3 = [mEMORY[0x277D64460]10 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_53:
      v63 = [SUCoreUpdateParam targetRollbackPhaseName:phase];
      v64 = [SUCoreUpdateParam targetRollbackPhaseName:8];
      *buf = 138543874;
      selfCopy7 = self;
      v73 = 2114;
      v74 = v63;
      v75 = 2114;
      v76 = v64;
      v65 = "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped rollback phase";
LABEL_56:
      _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, v65, buf, 0x20u);
    }

LABEL_57:

    goto LABEL_58;
  }

  if (phase == 8)
  {
LABEL_58:
    if ([(SUCoreUpdate *)self targetPhase]>= 9)
    {
      v68 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"after reaching rollback complete phase encountered invalid target phase(%ld)", -[SUCoreUpdate targetPhase](self, "targetPhase")];
      [(SUCoreUpdate *)self _trackUpdateAnomaly:@"[REACHED_PHASE]" result:8116 description:v68];
LABEL_63:

      return;
    }

    v14 = kSU_E_RB_RollbackApplySuccess;
    goto LABEL_60;
  }
}

- (void)_trackUpdateAnomaly:(id)anomaly result:(int64_t)result description:(id)description
{
  descriptionCopy = description;
  anomalyCopy = anomaly;
  updateFSM = [(SUCoreUpdate *)self updateFSM];
  extendedStateQueue = [updateFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v17 = [mEMORY[0x277D643F8] buildError:result underlying:0 description:descriptionCopy];

  updateFSM2 = [(SUCoreUpdate *)self updateFSM];
  diag = [updateFSM2 diag];
  anomalyCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[UPDATE] %@", anomalyCopy];

  descriptionCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ %@", self, descriptionCopy];
  [diag trackAnomaly:anomalyCopy forReason:descriptionCopy withResult:result withError:v17];

  [(SUCoreUpdate *)self _updateAnomaly:v17];
}

- (void)_trackUpdateError:(id)error forReason:(id)reason error:(id)a5
{
  errorCopy = error;
  v9 = a5;
  if (v9)
  {
    v10 = @"general";
    if (errorCopy)
    {
      v10 = errorCopy;
    }

    v11 = v10;
    reasonCopy = reason;
    failedAttemptError = [(SUCoreUpdate *)self failedAttemptError];

    if (!failedAttemptError)
    {
      [(SUCoreUpdate *)self setFailedAttemptError:v9];
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [SUCoreUpdate _trackUpdateError:v11 forReason:oslog error:?];
      }
    }

    updateFSM = [(SUCoreUpdate *)self updateFSM];
    diag = [updateFSM diag];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[UPDATE] %@", v11];
    [diag trackError:v18 forReason:reasonCopy withResult:objc_msgSend(v9 withError:{"code"), v9}];
  }

  else
  {
    v19 = MEMORY[0x277CCACA8];
    reasonCopy2 = reason;
    v21 = [v19 alloc];
    v22 = @"no reason provided";
    if (reasonCopy2)
    {
      v22 = reasonCopy2;
    }

    v11 = [v21 initWithFormat:@"tracking update error when no error provided (%@)", v22];

    [(SUCoreUpdate *)self _trackUpdateAnomaly:errorCopy result:8101 description:v11];
  }
}

- (void)_cleanupAfterAttempt
{
  [(SUCoreUpdate *)self setTargetPhase:1];

  [(SUCoreUpdate *)self setPolicy:0];
}

- (id)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (void)_trackUpdateError:(void *)a1 forReason:(uint64_t)a2 error:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [a1 failedAttemptError];
  v7 = 138543874;
  v8 = a1;
  v9 = 2114;
  v10 = a2;
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&dword_23193C000, a3, OS_LOG_TYPE_ERROR, "%{public}@ first error for update attempt {%{public}@} error: %{public}@", &v7, 0x20u);
}

@end
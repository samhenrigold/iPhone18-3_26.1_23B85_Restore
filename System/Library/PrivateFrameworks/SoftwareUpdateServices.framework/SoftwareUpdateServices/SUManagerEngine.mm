@interface SUManagerEngine
+ (BOOL)shouldHideInstallAlertForCoreDescriptor:(id)descriptor;
+ (id)SUDescriptorFromCoreDescriptor:(id)descriptor;
+ (id)SUDescriptorFromRollbackDescriptor:(id)descriptor;
+ (id)_generateStateTable;
+ (id)rollbackDescriptorForSUCoreRollbackDescriptor:(id)descriptor;
+ (int)softwareUpdateTypeForDescriptor:(id)descriptor;
+ (unint64_t)SUCoreAudienceTypeToSUSAudienceType:(int64_t)type;
+ (unint64_t)SUCorePreferredTypeToSUSPreferenceType:(int64_t)type;
+ (unint64_t)upgradeTypeForCoreDescriptor:(id)descriptor;
- (BOOL)_queue_createBrainLoadLockAssertion:(id *)assertion;
- (BOOL)isBrainNetworkError:(id)error;
- (BOOL)isBrainReloadError:(id)error;
- (SUManagerEngine)initWithDelegate:(id)delegate;
- (SUManagerEngineDelegate)managerDelegate;
- (id)SUOperationProgressFromSUCoreProgress:(id)progress;
- (id)availableRollback;
- (id)previousRollback;
- (id)rollbackPolicy;
- (id)updatePolicy;
- (int64_t)actionUnknownAction:(id)action error:(id *)error;
- (int64_t)action_ActivatedHelper:(BOOL)helper;
- (int64_t)action_ArmInstallOrFail:(id)fail error:(id *)error;
- (int64_t)action_BrainLoaded:(id)loaded error:(id *)error;
- (int64_t)action_Cancel:(id)cancel error:(id *)error;
- (int64_t)action_CanceledDownloadRequested:(id)requested error:(id *)error;
- (int64_t)action_CheckLockAndNetwork:(id)network error:(id *)error;
- (int64_t)action_DownloadAndPrepare:(id)prepare error:(id *)error;
- (int64_t)action_HandleCanceledPendingRollback:(id)rollback error:(id *)error;
- (int64_t)action_HandlePendingDownload:(id)download error:(id *)error;
- (int64_t)action_HandlePendingRollback:(id)rollback error:(id *)error;
- (int64_t)action_InstallArmed:(id)armed error:(id *)error;
- (int64_t)action_InstallUpdate:(id)update error:(id *)error;
- (int64_t)action_LoadBrain:(id)brain error:(id *)error;
- (int64_t)action_NewDownloadPending:(id)pending error:(id *)error;
- (int64_t)action_Prepare:(id)prepare error:(id *)error;
- (int64_t)action_ReloadBrain:(id)brain error:(id *)error;
- (int64_t)action_RemoveAll:(id)all error:(id *)error;
- (int64_t)action_RemoveAllPreserveCache:(id)cache error:(id *)error;
- (int64_t)action_RemovePreserving:(id)preserving error:(id *)error;
- (int64_t)action_ReportApplyFailed:(id)failed error:(id *)error;
- (int64_t)action_ReportApplyFailedRemoveAll:(id)all error:(id *)error;
- (int64_t)action_ReportAwaitingReboot:(id)reboot error:(id *)error;
- (int64_t)action_ReportDownloadAwaitingReboot:(id)reboot error:(id *)error;
- (int64_t)action_ReportDownloadFailedNoUpdate:(id)update error:(id *)error;
- (int64_t)action_ReportDownloadFailedRemoveAll:(id)all error:(id *)error;
- (int64_t)action_ReportDownloadFailedRollingBack:(id)back error:(id *)error;
- (int64_t)action_ReportDownloadInstalling:(id)installing error:(id *)error;
- (int64_t)action_ReportDownloadProgress:(id)progress error:(id *)error;
- (int64_t)action_ReportInstallAwaitingReboot:(id)reboot error:(id *)error;
- (int64_t)action_ReportInstallFailedNoUpdate:(id)update error:(id *)error;
- (int64_t)action_ReportInstallFailedRollingBack:(id)back error:(id *)error;
- (int64_t)action_ReportPrepared:(id)prepared error:(id *)error;
- (int64_t)action_ReportPreparedSet:(id)set error:(id *)error;
- (int64_t)action_ReportRemoveAwaitingReboot:(id)reboot error:(id *)error;
- (int64_t)action_ReportRemoveFailedRollingBack:(id)back error:(id *)error;
- (int64_t)action_ReportRemoveInstalling:(id)installing error:(id *)error;
- (int64_t)action_ReportRollbackAwaitingReboot:(id)reboot error:(id *)error;
- (int64_t)action_ReportRollbackFailed:(id)failed error:(id *)error;
- (int64_t)action_ReportRollbackInstalling:(id)installing error:(id *)error;
- (int64_t)action_ReportRollbackSucceeded:(id)succeeded error:(id *)error;
- (int64_t)action_Resume:(id)resume error:(id *)error;
- (int64_t)action_RollbackUpdate:(id)update error:(id *)error;
- (int64_t)loadBrainHelper:(id)helper;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (void)_queue_cancelLockAssertion;
- (void)_updatePolicyFactoryMetricEventFields:(id)fields updateUUID:(id)d cleanupLevel:(id)level;
- (void)actionHelper_ReportApplyFailed:(id)failed;
- (void)actionHelper_ReportDownloadFailedRollingBack;
- (void)actionHelper_ReportInstallFailedNoUpdate;
- (void)actionHelper_ReportInstallFailedRollingBack;
- (void)actionHelper_ReportPrepared:(BOOL)prepared;
- (void)actionHelper_ReportRemoveFailedRollingBack;
- (void)actionHelper_ReportRollbackCompleted:(id)completed withError:(id)error;
- (void)activateLoadingPersisted:(id)persisted;
- (void)applyAttemptFailed:(id)failed;
- (void)cancelLockAssertion;
- (void)createBrainLoadLockAssertion:(id)assertion;
- (void)downloadUpdate:(id)update;
- (void)installUpdate:(id)update;
- (void)notifyRollbackStarted:(id)started;
- (void)onUnlock;
- (void)pathSatisficationStatusChangedTo:(BOOL)to;
- (void)refreshInstallTonightConfig:(id)config;
- (void)removeUpdateKeepingDocAssets:(BOOL)assets;
- (void)resetPolicy;
- (void)rollbackAttemptFailed:(id)failed withError:(id)error;
- (void)rollbackUpdateWithOptions:(id)options;
- (void)updateAnomaly:(id)anomaly;
- (void)updateApplied;
- (void)updateAssetDownloadPreflighted;
- (void)updateAssetDownloadProgress:(id)progress;
- (void)updateAssetDownloadStalled:(id)stalled;
- (void)updateAssetDownloaded:(id)downloaded;
- (void)updateAttemptFailed:(id)failed;
- (void)updateBrainLoadProgress:(id)progress;
- (void)updateBrainLoadStalled:(id)stalled;
- (void)updateBrainLoaded:(id)loaded;
- (void)updateCanceled;
- (void)updatePrepareProgress:(id)progress;
- (void)updatePrepared:(id)prepared;
- (void)updateRolledBack:(id)back;
@end

@implementation SUManagerEngine

+ (id)_generateStateTable
{
  v457[18] = *MEMORY[0x277D85DE8];
  v456[0] = *MEMORY[0x277D643F0];
  v454[0] = @"DownloadAndPrepare";
  v452 = *MEMORY[0x277D644B0];
  v2 = v452;
  v453 = @"ReportDownloadFailedNoUpdate";
  v159 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v453 forKeys:&v452 count:1];
  v455[0] = v159;
  v454[1] = @"InstallUpdate";
  v450 = v2;
  v451 = @"ReportInstallFailedNoUpdate";
  v158 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v451 forKeys:&v450 count:1];
  v455[1] = v158;
  v454[2] = @"RollbackRequested";
  v448 = v2;
  v449 = *MEMORY[0x277D64380];
  v126 = v449;
  v157 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v449 forKeys:&v448 count:1];
  v455[2] = v157;
  v454[3] = @"ActivateNoPersisted";
  v446[0] = *MEMORY[0x277D647F8];
  v3 = v446[0];
  v446[1] = v2;
  v447[0] = @"RemovingAll";
  v447[1] = @"RemoveAll";
  v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v447 forKeys:v446 count:2];
  v455[3] = v156;
  v454[4] = @"ActivateHavePersisted";
  v444[0] = v3;
  v444[1] = v2;
  v445[0] = @"RemovingExceptPreserved";
  v445[1] = @"RemovePreserving";
  v155 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v445 forKeys:v444 count:2];
  v455[4] = v155;
  v154 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v455 forKeys:v454 count:5];
  v457[0] = v154;
  v456[1] = @"RemovingExceptPreserved";
  v442[0] = @"DownloadAndPrepare";
  v440[0] = v3;
  v440[1] = v2;
  v441[0] = @"CancelingDownloadRequested";
  v441[1] = @"NewDownloadPending";
  v153 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v441 forKeys:v440 count:2];
  v443[0] = v153;
  v442[1] = @"InstallUpdate";
  v438 = v2;
  v439 = @"ReportInstallFailedNoUpdate";
  v152 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v439 forKeys:&v438 count:1];
  v443[1] = v152;
  v442[2] = @"RemoveUpdate";
  v436 = v3;
  v437 = @"CancelingRemoveRequested";
  v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v437 forKeys:&v436 count:1];
  v443[2] = v151;
  v442[3] = @"RollbackRequested";
  v434 = v3;
  v435 = @"CancelingRollbackRequested";
  v150 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v435 forKeys:&v434 count:1];
  v443[3] = v150;
  v442[4] = @"PreservedInvalid";
  v432[0] = v3;
  v432[1] = v2;
  v433[0] = @"RemovingAll";
  v433[1] = @"RemoveAll";
  v149 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v433 forKeys:v432 count:2];
  v443[4] = v149;
  v442[5] = @"PreservedValidated";
  v4 = *MEMORY[0x277D643D0];
  v430[0] = v3;
  v430[1] = v2;
  v5 = *MEMORY[0x277D64360];
  v431[0] = v4;
  v431[1] = v5;
  v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v431 forKeys:v430 count:2];
  v443[5] = v148;
  v147 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v443 forKeys:v442 count:6];
  v457[1] = v147;
  v456[2] = @"RemovingAll";
  v428[0] = @"DownloadAndPrepare";
  v426[0] = v3;
  v426[1] = v2;
  v427[0] = @"RemovingAllDownloadRequested";
  v427[1] = @"NewDownloadPending";
  v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v427 forKeys:v426 count:2];
  v429[0] = v146;
  v428[1] = @"InstallUpdate";
  v424 = v2;
  v425 = @"ReportInstallFailedNoUpdate";
  v145 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v425 forKeys:&v424 count:1];
  v429[1] = v145;
  v428[2] = @"RemoveUpdate";
  v422 = v2;
  v423 = *MEMORY[0x277D647D8];
  v163 = v423;
  v144 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v423 forKeys:&v422 count:1];
  v429[2] = v144;
  v428[3] = @"RollbackRequested";
  v420 = v3;
  v421 = @"RemovingAllRollbackRequested";
  v143 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v421 forKeys:&v420 count:1];
  v429[3] = v143;
  v428[4] = @"RemovedAll";
  v164 = *MEMORY[0x277D643E0];
  v418[0] = v3;
  v418[1] = v2;
  v419[0] = v164;
  v419[1] = @"ActivatedClean";
  v142 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v419 forKeys:v418 count:2];
  v429[4] = v142;
  v141 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v429 forKeys:v428 count:5];
  v457[2] = v141;
  v456[3] = @"RemovingAllDownloadRequested";
  v416[0] = @"DownloadAndPrepare";
  v414 = v2;
  v415 = @"NewDownloadPending";
  v140 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v415 forKeys:&v414 count:1];
  v417[0] = v140;
  v416[1] = @"InstallUpdate";
  v412 = v2;
  v413 = @"ReportInstallFailedNoUpdate";
  v139 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v413 forKeys:&v412 count:1];
  v417[1] = v139;
  v416[2] = @"RemoveUpdate";
  v410 = v3;
  v411 = @"RemovingAll";
  v138 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v411 forKeys:&v410 count:1];
  v417[2] = v138;
  v416[3] = @"RollbackRequested";
  v408 = v3;
  v409 = @"RemovingAllRollbackRequested";
  v137 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v409 forKeys:&v408 count:1];
  v417[3] = v137;
  v416[4] = @"RemovedAll";
  v406 = v2;
  v407 = @"HandlePendingDownload";
  v136 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
  v417[4] = v136;
  v416[5] = @"ReadyToDownload";
  v404[0] = v3;
  v404[1] = v2;
  v405[0] = v4;
  v405[1] = v5;
  v135 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v405 forKeys:v404 count:2];
  v417[5] = v135;
  v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v417 forKeys:v416 count:6];
  v457[3] = v134;
  v456[4] = @"RemovingAllRollbackRequested";
  v402[0] = @"DownloadAndPrepare";
  v400 = v2;
  v401 = @"ReportDownloadFailedRollingBack";
  v133 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v401 forKeys:&v400 count:1];
  v403[0] = v133;
  v402[1] = @"InstallUpdate";
  v398 = v2;
  v399 = @"ReportInstallFailedRollingBack";
  v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v399 forKeys:&v398 count:1];
  v403[1] = v132;
  v402[2] = @"RemoveUpdate";
  v396 = v2;
  v397 = v163;
  v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v397 forKeys:&v396 count:1];
  v403[2] = v131;
  v402[3] = @"RollbackRequested";
  v394 = v2;
  v395 = v163;
  v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v395 forKeys:&v394 count:1];
  v403[3] = v130;
  v402[4] = @"RemovedAll";
  v392 = v2;
  v393 = @"HandleCanceledPendingRollback";
  v129 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v393 forKeys:&v392 count:1];
  v403[4] = v129;
  v402[5] = @"ReadyToRollback";
  v390[0] = v3;
  v390[1] = v2;
  v391[0] = @"RollingBack";
  v391[1] = @"PerformRollback";
  v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v391 forKeys:v390 count:2];
  v403[5] = v128;
  v127 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v403 forKeys:v402 count:6];
  v457[4] = v127;
  v456[5] = @"CancelingDownloadRequested";
  v388[0] = @"DownloadAndPrepare";
  v386 = v2;
  v387 = @"NewDownloadPending";
  v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v387 forKeys:&v386 count:1];
  v389[0] = v125;
  v388[1] = @"InstallUpdate";
  v384 = v2;
  v385 = @"ReportInstallFailedNoUpdate";
  v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v385 forKeys:&v384 count:1];
  v389[1] = v124;
  v388[2] = @"RemoveUpdate";
  v382 = v3;
  v383 = @"CancelingRemoveRequested";
  v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v383 forKeys:&v382 count:1];
  v389[2] = v123;
  v388[3] = @"RollbackRequested";
  v380 = v3;
  v381 = @"CancelingRollbackRequested";
  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v381 forKeys:&v380 count:1];
  v389[3] = v122;
  v388[4] = @"UpdateCanceled";
  v378 = v2;
  v379 = @"CanceledDownloadRequested";
  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v379 forKeys:&v378 count:1];
  v389[4] = v121;
  v388[5] = @"UpdateFailed";
  v376 = v2;
  v377 = @"CanceledDownloadRequested";
  v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v377 forKeys:&v376 count:1];
  v389[5] = v120;
  v388[6] = @"PreservedInvalid";
  v374 = v2;
  v375 = @"CanceledDownloadRequested";
  v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v375 forKeys:&v374 count:1];
  v389[6] = v119;
  v388[7] = @"PreservedValidated";
  v372 = v2;
  v373 = @"CanceledDownloadRequested";
  v118 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v373 forKeys:&v372 count:1];
  v389[7] = v118;
  v388[8] = @"ReadyToDownload";
  v370[0] = v3;
  v370[1] = v2;
  v371[0] = @"RemovingExceptPreserved";
  v371[1] = @"RemovePreserving";
  v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v371 forKeys:v370 count:2];
  v389[8] = v117;
  v116 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v389 forKeys:v388 count:9];
  v457[5] = v116;
  v456[6] = @"CancelingRollbackRequested";
  v368[0] = @"DownloadAndPrepare";
  v366 = v2;
  v367 = @"ReportDownloadFailedRollingBack";
  v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v367 forKeys:&v366 count:1];
  v369[0] = v115;
  v368[1] = @"InstallUpdate";
  v364 = v2;
  v365 = @"ReportInstallFailedRollingBack";
  v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v365 forKeys:&v364 count:1];
  v369[1] = v114;
  v368[2] = @"RemoveUpdate";
  v362 = v2;
  v363 = v163;
  v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v363 forKeys:&v362 count:1];
  v369[2] = v113;
  v368[3] = @"RollbackRequested";
  v360 = v2;
  v361 = v163;
  v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v361 forKeys:&v360 count:1];
  v369[3] = v112;
  v368[4] = @"UpdateCanceled";
  v358 = v2;
  v359 = @"HandleCanceledPendingRollback";
  v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v359 forKeys:&v358 count:1];
  v369[4] = v111;
  v368[5] = @"UpdateFailed";
  v356 = v2;
  v357 = @"HandleCanceledPendingRollback";
  v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v357 forKeys:&v356 count:1];
  v369[5] = v110;
  v368[6] = @"PreservedInvalid";
  v354 = v2;
  v355 = @"HandleCanceledPendingRollback";
  v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v355 forKeys:&v354 count:1];
  v369[6] = v109;
  v368[7] = @"PreservedValidated";
  v352 = v2;
  v353 = @"HandleCanceledPendingRollback";
  v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v353 forKeys:&v352 count:1];
  v369[7] = v108;
  v368[8] = @"ReadyToRollback";
  v350[0] = v3;
  v350[1] = v2;
  v351[0] = @"RollingBack";
  v351[1] = @"PerformRollback";
  v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v351 forKeys:v350 count:2];
  v369[8] = v107;
  v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v369 forKeys:v368 count:9];
  v457[6] = v106;
  v456[7] = @"CancelingRemoveRequested";
  v348[0] = @"DownloadAndPrepare";
  v346[0] = v3;
  v346[1] = v2;
  v347[0] = @"CancelingDownloadRequested";
  v347[1] = @"NewDownloadPending";
  v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v347 forKeys:v346 count:2];
  v349[0] = v105;
  v348[1] = @"InstallUpdate";
  v344 = v2;
  v345 = @"ReportInstallFailedNoUpdate";
  v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v345 forKeys:&v344 count:1];
  v349[1] = v104;
  v348[2] = @"RemoveUpdate";
  v342 = v2;
  v343 = v163;
  v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v343 forKeys:&v342 count:1];
  v349[2] = v103;
  v348[3] = @"RollbackRequested";
  v340 = v3;
  v341 = @"CancelingRollbackRequested";
  v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v341 forKeys:&v340 count:1];
  v349[3] = v102;
  v348[4] = @"UpdateCanceled";
  v338[0] = v3;
  v338[1] = v2;
  v339[0] = @"RemovingAll";
  v339[1] = @"RemoveAll";
  v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v339 forKeys:v338 count:2];
  v349[4] = v101;
  v348[5] = @"UpdateFailed";
  v336[0] = v3;
  v336[1] = v2;
  v337[0] = @"RemovingAll";
  v337[1] = @"RemoveAll";
  v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v337 forKeys:v336 count:2];
  v349[5] = v100;
  v348[6] = @"PreservedValidated";
  v334[0] = v3;
  v334[1] = v2;
  v335[0] = @"RemovingAll";
  v335[1] = @"RemoveAll";
  v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v335 forKeys:v334 count:2];
  v349[6] = v99;
  v348[7] = @"PreservedInvalid";
  v332[0] = v3;
  v332[1] = v2;
  v333[0] = @"RemovingAll";
  v333[1] = @"RemoveAll";
  v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v333 forKeys:v332 count:2];
  v349[7] = v98;
  v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v349 forKeys:v348 count:8];
  v457[7] = v97;
  v456[8] = v164;
  v330[0] = @"DownloadAndPrepare";
  v328[0] = v3;
  v328[1] = v2;
  v329[0] = v4;
  v329[1] = v5;
  v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v329 forKeys:v328 count:2];
  v331[0] = v96;
  v330[1] = @"InstallUpdate";
  v326 = v2;
  v327 = @"ReportInstallFailedNoUpdate";
  v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v327 forKeys:&v326 count:1];
  v331[1] = v95;
  v330[2] = @"RemoveUpdate";
  v324[0] = v3;
  v324[1] = v2;
  v325[0] = @"RemovingAll";
  v325[1] = @"RemoveAll";
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v325 forKeys:v324 count:2];
  v331[2] = v94;
  v330[3] = @"RollbackRequested";
  v322 = v2;
  v323 = @"HandlePendingRollback";
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v323 forKeys:&v322 count:1];
  v331[3] = v93;
  v330[4] = @"ReadyToRollback";
  v320[0] = v3;
  v320[1] = v2;
  v321[0] = @"RollingBack";
  v321[1] = @"PerformRollback";
  v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v321 forKeys:v320 count:2];
  v331[4] = v92;
  v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v331 forKeys:v330 count:5];
  v457[8] = v91;
  v456[9] = v4;
  v318[0] = @"DownloadAndPrepare";
  v316[0] = v3;
  v316[1] = v2;
  v317[0] = @"CancelingDownloadRequested";
  v317[1] = @"Cancel";
  v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v317 forKeys:v316 count:2];
  v319[0] = v90;
  v318[1] = @"InstallUpdate";
  v314 = v2;
  v315 = @"ArmInstallOrFail";
  v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v315 forKeys:&v314 count:1];
  v319[1] = v89;
  v318[2] = @"RemoveUpdate";
  v312[0] = v3;
  v312[1] = v2;
  v313[0] = @"CancelingRemoveRequested";
  v313[1] = @"Cancel";
  v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v313 forKeys:v312 count:2];
  v319[2] = v88;
  v318[3] = @"RollbackRequested";
  v310[0] = v3;
  v310[1] = v2;
  v311[0] = @"CancelingRollbackRequested";
  v311[1] = @"Cancel";
  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v311 forKeys:v310 count:2];
  v319[3] = v87;
  v318[4] = @"BrainLoading";
  v308 = v2;
  v309 = @"Activated";
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v309 forKeys:&v308 count:1];
  v319[4] = v86;
  v318[5] = *MEMORY[0x277D643B0];
  v306 = v2;
  v307 = @"BrainLoaded";
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v307 forKeys:&v306 count:1];
  v319[5] = v85;
  v318[6] = @"BrainLoaded";
  v304[0] = v3;
  v304[1] = v2;
  v305[0] = @"DownloadAndPrepare";
  v305[1] = @"DownloadAndPrepare";
  v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v305 forKeys:v304 count:2];
  v319[6] = v84;
  v318[7] = @"AlreadyDownloaded";
  v302[0] = v3;
  v302[1] = v2;
  v303[0] = @"DownloadAndPrepare";
  v303[1] = @"Prepare";
  v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v303 forKeys:v302 count:2];
  v319[7] = v83;
  v318[8] = @"PrepareInterrupted";
  v6 = *MEMORY[0x277D643E8];
  v300[0] = v3;
  v300[1] = v2;
  v7 = *MEMORY[0x277D64390];
  v301[0] = v6;
  v301[1] = v7;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v301 forKeys:v300 count:2];
  v319[8] = v82;
  v318[9] = @"AlreadyPrepared";
  v8 = *MEMORY[0x277D643D8];
  v298[0] = v3;
  v298[1] = v2;
  v299[0] = v8;
  v299[1] = @"ReportPreparedSet";
  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v299 forKeys:v298 count:2];
  v319[9] = v81;
  v318[10] = @"ArmedInstall";
  v48 = *MEMORY[0x277D643C0];
  v296[0] = v3;
  v296[1] = v2;
  v297[0] = v48;
  v297[1] = @"InstallArmed";
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v297 forKeys:v296 count:2];
  v319[10] = v80;
  v318[11] = @"UpdateProgress";
  v294 = v2;
  v295 = *MEMORY[0x277D64370];
  v45 = v295;
  v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v295 forKeys:&v294 count:1];
  v319[11] = v79;
  v318[12] = @"UpdateFailed";
  v292 = v2;
  v293 = @"CheckLockAndNetwork";
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
  v319[12] = v78;
  v318[13] = @"Unlocked";
  v290 = v2;
  v291 = @"ReloadBrain";
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v291 forKeys:&v290 count:1];
  v319[13] = v77;
  v318[14] = @"WaitUnlock";
  v288 = v3;
  v289 = @"WaitingFirstUnlock";
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v289 forKeys:&v288 count:1];
  v319[14] = v76;
  v318[15] = @"WaitNetwork";
  v286 = v3;
  v287 = @"WaitingNetwork";
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v287 forKeys:&v286 count:1];
  v319[15] = v75;
  v318[16] = *MEMORY[0x277D643A8];
  v284[0] = v3;
  v284[1] = v2;
  v285[0] = @"CancelingRemoveRequested";
  v285[1] = @"ReportDownloadFailedRemoveAll";
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v285 forKeys:v284 count:2];
  v319[16] = v74;
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v319 forKeys:v318 count:17];
  v457[9] = v73;
  v456[10] = v6;
  v278[0] = @"DownloadAndPrepare";
  v276[0] = v3;
  v276[1] = v2;
  v277[0] = @"CancelingDownloadRequested";
  v277[1] = @"Cancel";
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v277 forKeys:v276 count:2];
  v283[0] = v72;
  v278[1] = @"InstallUpdate";
  v274 = v2;
  v275 = @"ReportInstallFailedNoUpdate";
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
  v283[1] = v71;
  v278[2] = @"RemoveUpdate";
  v272[0] = v3;
  v272[1] = v2;
  v273[0] = @"CancelingRemoveRequested";
  v273[1] = @"Cancel";
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v273 forKeys:v272 count:2];
  v283[2] = v70;
  v278[3] = @"RollbackRequested";
  v270[0] = v3;
  v270[1] = v2;
  v271[0] = @"CancelingRollbackRequested";
  v271[1] = @"Cancel";
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v271 forKeys:v270 count:2];
  v283[3] = v69;
  v278[4] = @"ApplyFailedDone";
  v268 = v2;
  v269 = @"RemoveAllPreserveCache";
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
  v283[4] = v68;
  v279 = *MEMORY[0x277D64398];
  v41 = v279;
  v266 = v2;
  v267 = @"RemoveAllPreserveCache";
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
  v283[5] = v67;
  v280 = @"RemovedAllPreservedCache";
  v264 = v2;
  v265 = @"CanceledDownloadRequested";
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v265 forKeys:&v264 count:1];
  v283[6] = v66;
  v281 = @"ReadyToDownload";
  v262[0] = v3;
  v262[1] = v2;
  v263[0] = v4;
  v263[1] = v5;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v263 forKeys:v262 count:2];
  v283[7] = v65;
  v282 = *MEMORY[0x277D643B8];
  v43 = v282;
  v260[0] = v3;
  v260[1] = v2;
  v39 = *MEMORY[0x277D64378];
  v261[0] = v8;
  v261[1] = v39;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v261 forKeys:v260 count:2];
  v283[8] = v64;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v283 forKeys:v278 count:9];
  v457[10] = v63;
  v456[11] = @"WaitingFirstUnlock";
  v258[0] = @"DownloadAndPrepare";
  v256[0] = v3;
  v256[1] = v2;
  v257[0] = @"CancelingDownloadRequested";
  v257[1] = @"Cancel";
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v257 forKeys:v256 count:2];
  v259[0] = v62;
  v258[1] = @"InstallUpdate";
  v254 = v2;
  v255 = @"ReportInstallFailedNoUpdate";
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v255 forKeys:&v254 count:1];
  v259[1] = v61;
  v258[2] = @"RemoveUpdate";
  v252[0] = v3;
  v252[1] = v2;
  v253[0] = @"CancelingRemoveRequested";
  v253[1] = @"Cancel";
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v253 forKeys:v252 count:2];
  v259[2] = v60;
  v258[3] = @"RollbackRequested";
  v250[0] = v3;
  v250[1] = v2;
  v251[0] = @"CancelingRollbackRequested";
  v251[1] = @"Cancel";
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v251 forKeys:v250 count:2];
  v259[3] = v59;
  v258[4] = @"Unlocked";
  v248[0] = v3;
  v248[1] = v2;
  v249[0] = v4;
  v249[1] = v5;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v249 forKeys:v248 count:2];
  v259[4] = v58;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v259 forKeys:v258 count:5];
  v457[11] = v57;
  v456[12] = @"WaitingNetwork";
  v246[0] = @"DownloadAndPrepare";
  v244[0] = v3;
  v244[1] = v2;
  v245[0] = @"CancelingDownloadRequested";
  v245[1] = @"Cancel";
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v245 forKeys:v244 count:2];
  v247[0] = v56;
  v246[1] = @"InstallUpdate";
  v242 = v2;
  v243 = @"ReportInstallFailedNoUpdate";
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
  v247[1] = v55;
  v246[2] = @"RemoveUpdate";
  v240[0] = v3;
  v240[1] = v2;
  v241[0] = @"CancelingRemoveRequested";
  v241[1] = @"Cancel";
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v241 forKeys:v240 count:2];
  v247[2] = v54;
  v246[3] = @"RollbackRequested";
  v238[0] = v3;
  v238[1] = v2;
  v239[0] = @"CancelingRollbackRequested";
  v239[1] = @"Cancel";
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v239 forKeys:v238 count:2];
  v247[3] = v53;
  v246[4] = @"NetworkAvailable";
  v236[0] = v3;
  v236[1] = v2;
  v237[0] = v4;
  v237[1] = v5;
  v162 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v237 forKeys:v236 count:2];
  v247[4] = v162;
  v161 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v247 forKeys:v246 count:5];
  v457[12] = v161;
  v456[13] = @"DownloadAndPrepare";
  v234[0] = @"DownloadAndPrepare";
  v232[0] = v3;
  v232[1] = v2;
  v233[0] = @"CancelingDownloadRequested";
  v233[1] = @"Cancel";
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v233 forKeys:v232 count:2];
  v235[0] = v52;
  v234[1] = @"InstallUpdate";
  v230 = v2;
  v231 = @"ReportInstallFailedNoUpdate";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v231 forKeys:&v230 count:1];
  v235[1] = v51;
  v234[2] = @"RemoveUpdate";
  v228[0] = v3;
  v228[1] = v2;
  v229[0] = @"CancelingRemoveRequested";
  v229[1] = @"Cancel";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v229 forKeys:v228 count:2];
  v235[2] = v50;
  v234[3] = @"RollbackRequested";
  v226[0] = v3;
  v226[1] = v2;
  v227[0] = @"CancelingRollbackRequested";
  v227[1] = @"Cancel";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v227 forKeys:v226 count:2];
  v235[3] = v47;
  v234[4] = @"UpdateProgress";
  v224 = v2;
  v225 = v45;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
  v235[4] = v46;
  v234[5] = v43;
  v222[0] = v3;
  v222[1] = v2;
  v223[0] = v8;
  v223[1] = v39;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v223 forKeys:v222 count:2];
  v235[5] = v44;
  v234[6] = @"UpdateFailed";
  v220[0] = v3;
  v220[1] = v2;
  v221[0] = @"CancelingRemoveRequested";
  v221[1] = @"ReportDownloadFailedRemoveAll";
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v221 forKeys:v220 count:2];
  v235[6] = v40;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v235 forKeys:v234 count:7];
  v457[13] = v38;
  v456[14] = v8;
  v218[0] = @"DownloadAndPrepare";
  v216[0] = v3;
  v216[1] = v2;
  v217[0] = @"CancelingDownloadRequested";
  v217[1] = @"Cancel";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v217 forKeys:v216 count:2];
  v219[0] = v37;
  v218[1] = @"InstallUpdate";
  v214[0] = v3;
  v214[1] = v2;
  v215[0] = v48;
  v215[1] = @"InstallUpdate";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v215 forKeys:v214 count:2];
  v219[1] = v36;
  v218[2] = @"RemoveUpdate";
  v212[0] = v3;
  v212[1] = v2;
  v213[0] = @"RemovingAll";
  v213[1] = @"RemoveAll";
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v213 forKeys:v212 count:2];
  v219[2] = v35;
  v218[3] = @"RollbackRequested";
  v210[0] = v3;
  v210[1] = v2;
  v211[0] = @"CancelingRollbackRequested";
  v211[1] = @"Cancel";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v211 forKeys:v210 count:2];
  v219[3] = v34;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v219 forKeys:v218 count:4];
  v457[14] = v33;
  v456[15] = v48;
  v208[0] = @"DownloadAndPrepare";
  v206 = v2;
  v207 = @"ReportDownloadInstalling";
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
  v209[0] = v49;
  v208[1] = @"InstallUpdate";
  v204 = v2;
  v205 = v163;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v205 forKeys:&v204 count:1];
  v209[1] = v32;
  v208[2] = @"RemoveUpdate";
  v202 = v2;
  v203 = @"ReportRemoveInstalling";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
  v209[2] = v31;
  v208[3] = @"RollbackRequested";
  v200 = v2;
  v201 = @"ReportRollbackInstalling";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v201 forKeys:&v200 count:1];
  v209[3] = v30;
  v208[4] = @"UpdateProgress";
  v198 = v2;
  v199 = v163;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
  v209[4] = v29;
  v208[5] = v41;
  v196[0] = v3;
  v196[1] = v2;
  v9 = *MEMORY[0x277D64368];
  v197[0] = v8;
  v197[1] = v9;
  v160 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v197 forKeys:v196 count:2];
  v209[5] = v160;
  v208[6] = @"ApplyFailedDone";
  v194 = v2;
  v195 = @"ReportApplyFailedRemoveAll";
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
  v209[6] = v42;
  v208[7] = @"ApplyFailedRemoveNow";
  v192[0] = v3;
  v192[1] = v2;
  v193[0] = @"RemovingAll";
  v193[1] = @"RemoveAll";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v193 forKeys:v192 count:2];
  v209[7] = v28;
  v208[8] = *MEMORY[0x277D643A0];
  v10 = *MEMORY[0x277D643C8];
  v190[0] = v3;
  v190[1] = v2;
  v191[0] = v10;
  v191[1] = @"ReportAwaitingReboot";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v191 forKeys:v190 count:2];
  v209[8] = v27;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v209 forKeys:v208 count:9];
  v457[15] = v26;
  v456[16] = @"RollingBack";
  v188[0] = @"DownloadAndPrepare";
  v186 = v2;
  v187 = @"ReportDownloadFailedRollingBack";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
  v189[0] = v25;
  v188[1] = @"InstallUpdate";
  v184 = v2;
  v185 = @"ReportInstallFailedRollingBack";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
  v189[1] = v24;
  v188[2] = @"RemoveUpdate";
  v182 = v2;
  v183 = @"ReportRemoveFailedRollingBack";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
  v189[2] = v23;
  v188[3] = @"RollbackRequested";
  v180 = v2;
  v181 = v163;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
  v189[3] = v11;
  v188[4] = @"RollbackComplete";
  v178[0] = v3;
  v178[1] = v2;
  v12 = *MEMORY[0x277D64388];
  v179[0] = v10;
  v179[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v179 forKeys:v178 count:2];
  v189[4] = v13;
  v188[5] = @"RollbackFailed";
  v176[0] = v3;
  v176[1] = v2;
  v177[0] = v164;
  v177[1] = v126;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v176 count:2];
  v189[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:v188 count:6];
  v457[16] = v15;
  v456[17] = v10;
  v174[0] = @"DownloadAndPrepare";
  v172 = v2;
  v173 = @"ReportDownloadAwaitingReboot";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
  v175[0] = v16;
  v174[1] = @"InstallUpdate";
  v170 = v2;
  v171 = @"ReportInstallAwaitingReboot";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
  v175[1] = v17;
  v174[2] = @"RemoveUpdate";
  v168 = v2;
  v169 = @"ReportRemoveAwaitingReboot";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
  v175[2] = v18;
  v174[3] = @"RollbackRequested";
  v166 = v2;
  v167 = @"ReportRollbackAwaitingReboot";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
  v175[3] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:4];
  v457[17] = v20;
  v165 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v457 forKeys:v456 count:18];

  v21 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v165 copyItems:1];

  return v21;
}

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  actionCopy = action;
  infoCopy = info;
  if ([actionCopy isEqualToString:*MEMORY[0x277D647D8]])
  {
    v13 = 0;
  }

  else
  {
    if ([actionCopy isEqualToString:@"RemovePreserving"])
    {
      v14 = [(SUManagerEngine *)self action_RemovePreserving:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"Activated"])
    {
      v14 = [(SUManagerEngine *)self action_Activated:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ActivatedClean"])
    {
      v14 = [(SUManagerEngine *)self action_ActivatedClean:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"NewDownloadPending"])
    {
      v14 = [(SUManagerEngine *)self action_NewDownloadPending:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"HandlePendingDownload"])
    {
      v14 = [(SUManagerEngine *)self action_HandlePendingDownload:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"CheckLockAndNetwork"])
    {
      v14 = [(SUManagerEngine *)self action_CheckLockAndNetwork:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"BrainLoaded"])
    {
      v14 = [(SUManagerEngine *)self action_BrainLoaded:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64360]])
    {
      v14 = [(SUManagerEngine *)self action_LoadBrain:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReloadBrain"])
    {
      v14 = [(SUManagerEngine *)self action_ReloadBrain:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DownloadAndPrepare"])
    {
      v14 = [(SUManagerEngine *)self action_DownloadAndPrepare:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"Prepare"])
    {
      v14 = [(SUManagerEngine *)self action_Prepare:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64390]])
    {
      v14 = [(SUManagerEngine *)self action_Resume:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"InstallUpdate"])
    {
      v14 = [(SUManagerEngine *)self action_InstallUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ArmInstallOrFail"])
    {
      v14 = [(SUManagerEngine *)self action_ArmInstallOrFail:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"InstallArmed"])
    {
      v14 = [(SUManagerEngine *)self action_InstallArmed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"Cancel"])
    {
      v14 = [(SUManagerEngine *)self action_Cancel:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"CanceledDownloadRequested"])
    {
      v14 = [(SUManagerEngine *)self action_CanceledDownloadRequested:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RemoveAll"])
    {
      v14 = [(SUManagerEngine *)self action_RemoveAll:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RemoveAllPreserveCache"])
    {
      v14 = [(SUManagerEngine *)self action_RemoveAllPreserveCache:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"PerformRollback"])
    {
      v14 = [(SUManagerEngine *)self action_RollbackUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"HandlePendingRollback"])
    {
      v14 = [(SUManagerEngine *)self action_HandlePendingRollback:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"HandleCanceledPendingRollback"])
    {
      v14 = [(SUManagerEngine *)self action_HandleCanceledPendingRollback:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadFailedRemoveAll"])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadFailedRemoveAll:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64370]])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadProgress:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportPreparedSet"])
    {
      v14 = [(SUManagerEngine *)self action_ReportPreparedSet:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64378]])
    {
      v14 = [(SUManagerEngine *)self action_ReportPrepared:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64368]])
    {
      v14 = [(SUManagerEngine *)self action_ReportApplyFailed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportApplyFailedRemoveAll"])
    {
      v14 = [(SUManagerEngine *)self action_ReportApplyFailedRemoveAll:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadFailedNoUpdate"])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadFailedNoUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportInstallFailedNoUpdate"])
    {
      v14 = [(SUManagerEngine *)self action_ReportInstallFailedNoUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadFailedRollingBack"])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadFailedRollingBack:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportInstallFailedRollingBack"])
    {
      v14 = [(SUManagerEngine *)self action_ReportInstallFailedRollingBack:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRemoveFailedRollingBack"])
    {
      v14 = [(SUManagerEngine *)self action_ReportRemoveFailedRollingBack:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadInstalling"])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadInstalling:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRemoveInstalling"])
    {
      v14 = [(SUManagerEngine *)self action_ReportRemoveInstalling:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRollbackInstalling"])
    {
      v14 = [(SUManagerEngine *)self action_ReportRollbackInstalling:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportAwaitingReboot"])
    {
      v14 = [(SUManagerEngine *)self action_ReportAwaitingReboot:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadAwaitingReboot"])
    {
      v14 = [(SUManagerEngine *)self action_ReportDownloadAwaitingReboot:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportInstallAwaitingReboot"])
    {
      v14 = [(SUManagerEngine *)self action_ReportInstallAwaitingReboot:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRemoveAwaitingReboot"])
    {
      v14 = [(SUManagerEngine *)self action_ReportRemoveAwaitingReboot:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportRollbackAwaitingReboot"])
    {
      v14 = [(SUManagerEngine *)self action_ReportRollbackAwaitingReboot:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64380]])
    {
      v14 = [(SUManagerEngine *)self action_ReportRollbackFailed:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:*MEMORY[0x277D64388]])
    {
      v14 = [(SUManagerEngine *)self action_ReportRollbackSucceeded:infoCopy error:error];
    }

    else
    {
      v14 = [(SUManagerEngine *)self actionUnknownAction:actionCopy error:error];
    }

    v13 = v14;
  }

  return v13;
}

- (int64_t)action_RemovePreserving:(id)preserving error:(id *)error
{
  preservingCopy = preserving;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  paramType = [preservingCopy paramType];
  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  v10 = engineFSM2;
  if (paramType == 2)
  {
    [engineFSM2 postEvent:@"PreservedValidated" withInfo:preservingCopy];
    v11 = 0;
  }

  else
  {
    diag = [engineFSM2 diag];
    v11 = 8102;
    [diag trackAnomaly:@"[ENGINE]" forReason:@"param type is not DOWNLOAD_DESCRIPTOR" withResult:8102 withError:0];
  }

  return v11;
}

- (int64_t)action_ActivatedHelper:(BOOL)helper
{
  helperCopy = helper;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(SUManagerEngine *)self activating])
  {
    [(SUManagerEngine *)self setActivated:1];
    [(SUManagerEngine *)self setActivating:0];
    managerDelegate = [(SUManagerEngine *)self managerDelegate];
    [managerDelegate activated:helperCopy];
LABEL_5:

    return 0;
  }

  if (![(SUManagerEngine *)self activated])
  {
    managerDelegate = [(SUManagerEngine *)self engineFSM];
    diag = [managerDelegate diag];
    [diag trackAnomaly:@"[ENGINE]" forReason:@"not in activating state" withResult:8115 withError:0];

    goto LABEL_5;
  }

  return 0;
}

- (int64_t)action_NewDownloadPending:(id)pending error:(id *)error
{
  pendingCopy = pending;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [pendingCopy downloadDescriptor];

  [(SUManagerEngine *)self setDownloadDescriptor:downloadDescriptor];
  return 0;
}

- (int64_t)action_HandlePendingDownload:(id)download error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:download];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  engineFSM = [(SUManagerEngine *)self engineFSM];
  v8 = [SUManagerEngineParam alloc];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  v10 = [(SUManagerEngineParam *)v8 initWithDownloadDescriptor:downloadDescriptor];
  [engineFSM followupEvent:@"ReadyToDownload" withInfo:v10];

  return 0;
}

- (int64_t)action_CheckLockAndNetwork:(id)network error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  LODWORD(extendedStateQueue) = [downloadDescriptor disarmInstall];

  if (extendedStateQueue)
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v48 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ disarming install", buf, 0xCu);
    }

    [(SUManagerEngine *)self actionHelper_ReportInstallFailedNoUpdate];
  }

  downloadDescriptor2 = [(SUManagerEngine *)self downloadDescriptor];
  asset = [downloadDescriptor2 asset];

  if (!asset)
  {
    goto LABEL_28;
  }

  if (!-[SUManagerEngine isBrainNetworkError:](self, "isBrainNetworkError:", networkCopy) || (+[SUNetworkMonitor sharedInstance](SUNetworkMonitor, "sharedInstance"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isPathSatisfied], v14, (v15 & 1) != 0))
  {
    if ([(SUManagerEngine *)self isBrainReloadError:networkCopy])
    {
      engineFSM3 = 0;
    }

    else
    {
      downloadDescriptor3 = [(SUManagerEngine *)self downloadDescriptor];
      asset2 = [downloadDescriptor3 asset];
      attributes = [asset2 attributes];
      v20 = SUCoreBorder_MSUBrainIsLoadable();
      engineFSM3 = v20;
      if (v20)
      {
        userInfo = [v20 userInfo];
        v22 = [userInfo objectForKeyedSubscript:@"LoadTrustCachePurgedBrain"];
        v23 = [v22 isEqual:MEMORY[0x277CBEC38]];

        if (!v23)
        {
          v24 = +[SUKeybagInterface sharedInstance];
          isPasscodeLocked = [v24 isPasscodeLocked];

          if (isPasscodeLocked)
          {
            managerDelegate = [(SUManagerEngine *)self managerDelegate];
            v27 = objc_opt_respondsToSelector();

            engineLog2 = [(SUManagerEngine *)self engineLog];
            oslog2 = [engineLog2 oslog];

            v30 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
            if (v27)
            {
              if (v30)
              {
                engineName2 = [(SUManagerEngine *)self engineName];
                *buf = 138412290;
                v48 = engineName2;
                _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, "%@ load brain failed, waiting for unlock", buf, 0xCu);
              }

              engineFSM2 = [(SUManagerEngine *)self engineFSM];
              v33 = objc_alloc_init(SUManagerEngineParam);
              [engineFSM2 followupEvent:@"WaitUnlock" withInfo:v33];

              mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
              delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __52__SUManagerEngine_action_CheckLockAndNetwork_error___block_invoke;
              block[3] = &unk_279CAA708;
              block[4] = self;
              dispatch_async(delegateCallbackQueue, block);

              goto LABEL_23;
            }

            if (v30)
            {
              engineName3 = [(SUManagerEngine *)self engineName];
              *buf = 138412290;
              v48 = engineName3;
              _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to sendUnlockNotifications, failing", buf, 0xCu);
            }
          }

          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    if ([(SUManagerEngine *)self loadBrainRetries]<= 9)
    {
      mEMORY[0x277D64400] = [(SUManagerEngine *)self engineFSM];
      v41 = [SUManagerEngineParam alloc];
      downloadDescriptor4 = [(SUManagerEngine *)self downloadDescriptor];
      v43 = [(SUManagerEngineParam *)v41 initWithDownloadDescriptor:downloadDescriptor4];
      [mEMORY[0x277D64400] followupEvent:@"Unlocked" withInfo:v43];

LABEL_23:
      goto LABEL_29;
    }

LABEL_27:

LABEL_28:
    [(SUManagerEngine *)self _queue_cancelLockAssertion];
    engineFSM3 = [(SUManagerEngine *)self engineFSM];
    [engineFSM3 followupEvent:*MEMORY[0x277D643A8] withInfo:networkCopy];
    goto LABEL_29;
  }

  engineLog3 = [(SUManagerEngine *)self engineLog];
  oslog3 = [engineLog3 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    engineName4 = [(SUManagerEngine *)self engineName];
    *buf = 138412290;
    v48 = engineName4;
    _os_log_impl(&dword_26AB34000, oslog3, OS_LOG_TYPE_DEFAULT, "%@ network unavailable, will wait for network", buf, 0xCu);
  }

  v39 = +[SUNetworkMonitor sharedInstance];
  [v39 addObserver:self];

  engineFSM3 = [(SUManagerEngine *)self engineFSM];
  v40 = objc_alloc_init(SUManagerEngineParam);
  [engineFSM3 followupEvent:@"WaitNetwork" withInfo:v40];

LABEL_29:
  return 0;
}

void __52__SUManagerEngine_action_CheckLockAndNetwork_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) managerDelegate];
  [v1 sendUnlockNotifications:1];
}

- (int64_t)action_BrainLoaded:(id)loaded error:(id *)error
{
  loadedCopy = loaded;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  asset = [downloadDescriptor asset];
  if (asset)
  {
    v10 = asset;
    downloadDescriptor2 = [(SUManagerEngine *)self downloadDescriptor];
    asset2 = [downloadDescriptor2 asset];
    attributes = [asset2 attributes];
    v14 = SUCoreBorder_MSUBrainIsLoadable();

    if (!v14)
    {
      downloadDescriptor3 = [(SUManagerEngine *)self downloadDescriptor];
      atPhase = [downloadDescriptor3 atPhase];

      if (atPhase == 6)
      {
        engineFSM2 = [(SUManagerEngine *)self engineFSM];
        v14 = engineFSM2;
        v18 = @"ArmedInstall";
      }

      else
      {
        downloadDescriptor4 = [(SUManagerEngine *)self downloadDescriptor];
        atPhase2 = [downloadDescriptor4 atPhase];

        if (atPhase2 == 5)
        {
          engineFSM2 = [(SUManagerEngine *)self engineFSM];
          v14 = engineFSM2;
          v18 = @"AlreadyPrepared";
        }

        else
        {
          downloadDescriptor5 = [(SUManagerEngine *)self downloadDescriptor];
          atPhase3 = [downloadDescriptor5 atPhase];

          if (atPhase3 == 4)
          {
            engineFSM2 = [(SUManagerEngine *)self engineFSM];
            v14 = engineFSM2;
            v18 = @"PrepareInterrupted";
          }

          else
          {
            downloadDescriptor6 = [(SUManagerEngine *)self downloadDescriptor];
            atPhase4 = [downloadDescriptor6 atPhase];

            engineFSM2 = [(SUManagerEngine *)self engineFSM];
            v14 = engineFSM2;
            if (atPhase4 == 3)
            {
              v18 = @"AlreadyDownloaded";
            }

            else
            {
              v18 = @"BrainLoaded";
            }
          }
        }
      }

      [engineFSM2 followupEvent:v18 withInfo:loadedCopy];
      goto LABEL_18;
    }
  }

  else
  {

    v14 = 0;
  }

  userInfo = [v14 userInfo];
  v20 = [userInfo objectForKeyedSubscript:@"LoadTrustCachePurgedBrain"];
  v21 = [v20 isEqual:MEMORY[0x277CBEC38]];

  if (v21)
  {
    v22 = 107;
  }

  else
  {
    v22 = 54;
  }

  engineFSM3 = [(SUManagerEngine *)self engineFSM];
  v24 = [SUManagerEngineParam alloc];
  v25 = [SUUtility errorWithCode:v22];
  v26 = [(SUManagerEngineParam *)v24 initWithError:v25];
  [engineFSM3 followupEvent:@"UpdateFailed" withInfo:v26];

LABEL_18:
  return 0;
}

- (int64_t)loadBrainHelper:(id)helper
{
  helperCopy = helper;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([helperCopy paramType] == 2)
  {
    downloadDescriptor = [helperCopy downloadDescriptor];
    [(SUManagerEngine *)self setDownloadDescriptor:downloadDescriptor];

    downloadDescriptor2 = [(SUManagerEngine *)self downloadDescriptor];
    coreDescriptor = [downloadDescriptor2 coreDescriptor];

    [(SUManagerEngine *)self resetPolicy];
    [(SUManagerEngine *)self setPendingPurgeParams:0];
    downloadDescriptor3 = [(SUManagerEngine *)self downloadDescriptor];
    installTonightConfig = [downloadDescriptor3 installTonightConfig];
    downloadDescriptor4 = [(SUManagerEngine *)self downloadDescriptor];
    sessionID = [downloadDescriptor4 sessionID];
    downloadDescriptor5 = [(SUManagerEngine *)self downloadDescriptor];
    cleanupLevel = [downloadDescriptor5 cleanupLevel];
    [(SUManagerEngine *)self _updatePolicyFactoryMetricEventFields:installTonightConfig updateUUID:sessionID cleanupLevel:cleanupLevel];

    v16 = objc_alloc(MEMORY[0x277D641F0]);
    downloadDescriptor6 = [(SUManagerEngine *)self downloadDescriptor];
    sessionID2 = [downloadDescriptor6 sessionID];
    v19 = [v16 initWithDelegate:self updateDescriptor:coreDescriptor updateUUID:sessionID2];
    [(SUManagerEngine *)self setUpdateControl:v19];

    policyFactory = [(SUManagerEngine *)self policyFactory];
    downloadDescriptor7 = [helperCopy downloadDescriptor];
    scanOptions = [downloadDescriptor7 scanOptions];
    [policyFactory setScanOptions:scanOptions];

    updateControl = [(SUManagerEngine *)self updateControl];
    updatePolicy = [(SUManagerEngine *)self updatePolicy];
    [updateControl targetBrainLoaded:updatePolicy];

    if (![(SUManagerEngine *)self activating])
    {
      v27 = 0;
      goto LABEL_7;
    }

    engineFSM2 = [(SUManagerEngine *)self engineFSM];
    v26 = objc_alloc_init(SUManagerEngineParam);
    [engineFSM2 followupEvent:@"BrainLoading" withInfo:v26];

    v27 = 0;
  }

  else
  {
    coreDescriptor = [(SUManagerEngine *)self engineFSM];
    engineFSM2 = [coreDescriptor diag];
    v27 = 8102;
    [engineFSM2 trackAnomaly:@"[ENGINE]" forReason:@"param type is not DOWNLOAD_DESCRIPTOR" withResult:8102 withError:0];
  }

LABEL_7:
  return v27;
}

- (int64_t)action_LoadBrain:(id)brain error:(id *)error
{
  brainCopy = brain;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self setLoadBrainRetries:0];
  v8 = [(SUManagerEngine *)self loadBrainHelper:brainCopy];

  return v8;
}

- (int64_t)action_ReloadBrain:(id)brain error:(id *)error
{
  brainCopy = brain;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self setLoadBrainRetries:[(SUManagerEngine *)self loadBrainRetries]+ 1];
  v8 = [(SUManagerEngine *)self loadBrainHelper:brainCopy];

  return v8;
}

- (int64_t)action_DownloadAndPrepare:(id)prepare error:(id *)error
{
  prepareCopy = prepare;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  downloadOptions = [downloadDescriptor downloadOptions];
  [policyFactory setDownloadOptions:downloadOptions];

  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  [engineFSM2 followupEvent:@"UpdateProgress" withInfo:prepareCopy];

  updateControl = [(SUManagerEngine *)self updateControl];
  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  [updateControl targetPrepared:updatePolicy];

  return 0;
}

- (int64_t)action_Prepare:(id)prepare error:(id *)error
{
  prepareCopy = prepare;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  downloadOptions = [downloadDescriptor downloadOptions];
  [policyFactory setDownloadOptions:downloadOptions];

  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  [engineFSM2 followupEvent:@"UpdateProgress" withInfo:prepareCopy];

  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  [updatePolicy setCheckAvailableSpace:0];

  updatePolicy2 = [(SUManagerEngine *)self updatePolicy];
  downloadPreflightPolicy = [updatePolicy2 downloadPreflightPolicy];
  [downloadPreflightPolicy setSkipPhase:1];

  updatePolicy3 = [(SUManagerEngine *)self updatePolicy];
  softwareUpdateDownloadPolicy = [updatePolicy3 softwareUpdateDownloadPolicy];
  [softwareUpdateDownloadPolicy setSkipPhase:1];

  updateControl = [(SUManagerEngine *)self updateControl];
  updatePolicy4 = [(SUManagerEngine *)self updatePolicy];
  [updateControl targetPrepared:updatePolicy4];

  return 0;
}

- (int64_t)action_Resume:(id)resume error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:resume];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  downloadPreflightPolicy = [updatePolicy downloadPreflightPolicy];
  [downloadPreflightPolicy setSkipPhase:1];

  updatePolicy2 = [(SUManagerEngine *)self updatePolicy];
  [updatePolicy2 setCheckAvailableSpace:0];

  updatePolicy3 = [(SUManagerEngine *)self updatePolicy];
  softwareUpdateDownloadPolicy = [updatePolicy3 softwareUpdateDownloadPolicy];
  [softwareUpdateDownloadPolicy setSkipPhase:1];

  updatePolicy4 = [(SUManagerEngine *)self updatePolicy];
  preparePolicy = [updatePolicy4 preparePolicy];
  [preparePolicy setSkipPhase:1];

  updatePolicy5 = [(SUManagerEngine *)self updatePolicy];
  suspendPolicy = [updatePolicy5 suspendPolicy];
  [suspendPolicy setSkipPhase:1];

  updateControl = [(SUManagerEngine *)self updateControl];
  updatePolicy6 = [(SUManagerEngine *)self updatePolicy];
  [updateControl targetPrepared:updatePolicy6];

  return 0;
}

- (int64_t)action_InstallUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  installOptions = [updateCopy installOptions];

  [policyFactory setInstallOptions:installOptions];
  updateControl = [(SUManagerEngine *)self updateControl];
  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  [updateControl targetApplied:updatePolicy];

  return 0;
}

- (int64_t)action_InstallArmed:(id)armed error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:armed];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  installOptions = [downloadDescriptor installOptions];
  [policyFactory setInstallOptions:installOptions];

  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  [updatePolicy setCheckAvailableSpace:0];

  updatePolicy2 = [(SUManagerEngine *)self updatePolicy];
  downloadPreflightPolicy = [updatePolicy2 downloadPreflightPolicy];
  [downloadPreflightPolicy setSkipPhase:1];

  updatePolicy3 = [(SUManagerEngine *)self updatePolicy];
  softwareUpdateDownloadPolicy = [updatePolicy3 softwareUpdateDownloadPolicy];
  [softwareUpdateDownloadPolicy setSkipPhase:1];

  updatePolicy4 = [(SUManagerEngine *)self updatePolicy];
  preparePolicy = [updatePolicy4 preparePolicy];
  [preparePolicy setSkipPhase:1];

  updatePolicy5 = [(SUManagerEngine *)self updatePolicy];
  suspendPolicy = [updatePolicy5 suspendPolicy];
  [suspendPolicy setSkipPhase:1];

  updateControl = [(SUManagerEngine *)self updateControl];
  updatePolicy6 = [(SUManagerEngine *)self updatePolicy];
  [updateControl targetApplied:updatePolicy6];

  return 0;
}

- (int64_t)action_ArmInstallOrFail:(id)fail error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  failCopy = fail;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  installOptions = [failCopy installOptions];
  v10 = [downloadDescriptor armInstall:installOptions];

  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  v13 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      engineName = [(SUManagerEngine *)self engineName];
      installOptions2 = [failCopy installOptions];
      v18 = 138412546;
      v19 = engineName;
      v20 = 2112;
      v21 = installOptions2;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ install is armed with options:%@", &v18, 0x16u);
    }
  }

  else
  {
    if (v13)
    {
      engineName2 = [(SUManagerEngine *)self engineName];
      v18 = 138412290;
      v19 = engineName2;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ install can't be armed", &v18, 0xCu);
    }

    [(SUManagerEngine *)self actionHelper_ReportInstallFailedNoUpdate];
  }

  return 0;
}

- (int64_t)action_Cancel:(id)cancel error:(id *)error
{
  cancelCopy = cancel;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [cancelCopy downloadDescriptor];
  [(SUManagerEngine *)self setDownloadDescriptor:downloadDescriptor];

  if ([cancelCopy paramType] == 9)
  {
    [(SUManagerEngine *)self setPendingPurgeParams:cancelCopy];
  }

  updateControl = [(SUManagerEngine *)self updateControl];
  [updateControl cancelCurrentUpdate];

  return 0;
}

- (int64_t)action_CanceledDownloadRequested:(id)requested error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:requested];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  engineFSM = [(SUManagerEngine *)self engineFSM];
  v8 = [SUManagerEngineParam alloc];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  v10 = [(SUManagerEngineParam *)v8 initWithDownloadDescriptor:downloadDescriptor];
  [engineFSM followupEvent:@"ReadyToDownload" withInfo:v10];

  return 0;
}

- (int64_t)action_RemoveAll:(id)all error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  allCopy = all;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self setUpdateControl:0];
  [(SUManagerEngine *)self setDownloadDescriptor:0];
  policyFactory = [(SUManagerEngine *)self policyFactory];
  [policyFactory setScanOptions:0];

  policyFactory2 = [(SUManagerEngine *)self policyFactory];
  [policyFactory2 setDownloadOptions:0];

  policyFactory3 = [(SUManagerEngine *)self policyFactory];
  [policyFactory3 setInstallOptions:0];

  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  v12 = [updatePolicy copy];

  if ([allCopy paramType] == 9)
  {
    if ([allCopy skipDocAssetsPurge])
    {
      [v12 setDocumentationAssetType:0];
    }

    if ([allCopy skipPreSUStagingAssetsPurge])
    {
      engineLog = [(SUManagerEngine *)self engineLog];
      oslog = [engineLog oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        engineName = [(SUManagerEngine *)self engineName];
        *buf = 138412290;
        v19 = engineName;
        _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ Temporarily disabling PSUS to skip purging the assets", buf, 0xCu);
      }

      [v12 setEnablePreSUStaging:0];
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__SUManagerEngine_action_RemoveAll_error___block_invoke;
  v17[3] = &unk_279CABA10;
  v17[4] = self;
  [MEMORY[0x277D641D0] removeAllUpdateContentWithPolicy:v12 completion:v17];

  return 0;
}

void __42__SUManagerEngine_action_RemoveAll_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [*(a1 + 32) engineFSM];
  v5 = [v4 diag];
  [v5 trackError:@"[ENGINE]" forReason:@"unable to remove all update content" withResult:objc_msgSend(v3 withError:{"code"), v3}];

  v6 = [v3 domain];
  if (![v6 isEqual:@"com.apple.MobileAssetError.Purge"])
  {

    goto LABEL_6;
  }

  if ([v3 code] != 11)
  {
    v8 = [v3 code];

    if (v8 == 8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v7 = *MEMORY[0x277D64318];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__SUManagerEngine_action_RemoveAll_error___block_invoke_2;
    v12[3] = &unk_279CABA10;
    v12[4] = *(a1 + 32);
    [MEMORY[0x277D641D0] removeAllAssetsOfType:v7 completion:v12];
    goto LABEL_11;
  }

LABEL_8:
  v9 = [*(a1 + 32) engineLog];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) engineName];
    *buf = 138412290;
    v15 = v11;
    _os_log_impl(&dword_26AB34000, v10, OS_LOG_TYPE_DEFAULT, "%@ Trying to purge installed assets one by one", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__SUManagerEngine_action_RemoveAll_error___block_invoke_532;
  v13[3] = &unk_279CAA708;
  v13[4] = *(a1 + 32);
  [SUAssetSupport cleanupAllInstalledAssets:v13];
LABEL_11:
}

void __42__SUManagerEngine_action_RemoveAll_error___block_invoke_532(uint64_t a1)
{
  v2 = [*(a1 + 32) engineFSM];
  v1 = objc_alloc_init(SUManagerEngineParam);
  [v2 postEvent:@"RemovedAll" withInfo:v1];
}

void __42__SUManagerEngine_action_RemoveAll_error___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [*(a1 + 32) engineFSM];
  v5 = [v4 diag];
  [v5 trackError:@"[ENGINE]" forReason:@"unable to remove all splat update content" withResult:objc_msgSend(v3 withError:{"code"), v3}];

  v6 = [v3 domain];
  if (![v6 isEqual:@"com.apple.MobileAssetError.Purge"])
  {

    goto LABEL_6;
  }

  if ([v3 code] != 11)
  {
    v9 = [v3 code];

    if (v9 == 8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v7 = [*(a1 + 32) engineFSM];
    v8 = objc_alloc_init(SUManagerEngineParam);
    [v7 postEvent:@"RemovedAll" withInfo:v8];

    goto LABEL_11;
  }

LABEL_8:
  v10 = [*(a1 + 32) engineLog];
  v11 = [v10 oslog];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) engineName];
    *buf = 138412290;
    v15 = v12;
    _os_log_impl(&dword_26AB34000, v11, OS_LOG_TYPE_DEFAULT, "%@ Trying to purge installed assets one by one", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__SUManagerEngine_action_RemoveAll_error___block_invoke_536;
  v13[3] = &unk_279CAA708;
  v13[4] = *(a1 + 32);
  [SUAssetSupport cleanupAllInstalledAssets:v13];
LABEL_11:
}

void __42__SUManagerEngine_action_RemoveAll_error___block_invoke_536(uint64_t a1)
{
  v2 = [*(a1 + 32) engineFSM];
  v1 = objc_alloc_init(SUManagerEngineParam);
  [v2 postEvent:@"RemovedAll" withInfo:v1];
}

- (int64_t)action_RemoveAllPreserveCache:(id)cache error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:cache];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  [downloadDescriptor resetPhase];

  v8 = MEMORY[0x277D641D0];
  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SUManagerEngine_action_RemoveAllPreserveCache_error___block_invoke;
  v11[3] = &unk_279CABA10;
  v11[4] = self;
  [v8 removeAllUpdateContentWithPolicy:updatePolicy completion:v11];

  return 0;
}

void __55__SUManagerEngine_action_RemoveAllPreserveCache_error___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 engineFSM];
    v6 = [v5 diag];
    [v6 trackError:@"[ENGINE]" forReason:@"unable to remove all update content" withResult:objc_msgSend(v4 withError:{"code"), v4}];
  }

  v8 = [*(a1 + 32) engineFSM];
  v7 = objc_alloc_init(SUManagerEngineParam);
  [v8 postEvent:@"RemovedAllPreservedCache" withInfo:v7];
}

- (int64_t)action_RollbackUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  rollbackOptions = [updateCopy rollbackOptions];

  [policyFactory setRollbackOptions:rollbackOptions];
  updateControl = [(SUManagerEngine *)self updateControl];

  if (!updateControl)
  {
    v11 = [objc_alloc(MEMORY[0x277D641F0]) initWithDelegate:self updateDescriptor:0 updateUUID:self->_rollbackUUID];
    [(SUManagerEngine *)self setUpdateControl:v11];
  }

  updateControl2 = [(SUManagerEngine *)self updateControl];
  rollbackAvailable = [updateControl2 rollbackAvailable];
  [(SUManagerEngine *)self notifyRollbackStarted:rollbackAvailable];

  updateControl3 = [(SUManagerEngine *)self updateControl];
  rollbackPolicy = [(SUManagerEngine *)self rollbackPolicy];
  [updateControl3 targetRollback:rollbackPolicy];

  return 0;
}

- (int64_t)action_HandlePendingRollback:(id)rollback error:(id *)error
{
  rollbackCopy = rollback;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  [engineFSM2 followupEvent:@"ReadyToRollback" withInfo:rollbackCopy];

  return 0;
}

- (int64_t)action_HandleCanceledPendingRollback:(id)rollback error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  rollbackCopy = rollback;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SUManagerEngine_action_HandleCanceledPendingRollback_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
LABEL_5:

    goto LABEL_6;
  }

  engineLog = [(SUManagerEngine *)self engineLog];
  mEMORY[0x277D64400] = [engineLog oslog];

  if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
  {
    delegateCallbackQueue = [(SUManagerEngine *)self engineName];
    *buf = 138412290;
    v16 = delegateCallbackQueue;
    _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    goto LABEL_5;
  }

LABEL_6:

  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  [engineFSM2 followupEvent:@"ReadyToRollback" withInfo:rollbackCopy];

  return 0;
}

void __62__SUManagerEngine_action_HandleCanceledPendingRollback_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:16 userInfo:0];
  [v2 downloadCompleted:v1];
}

- (int64_t)action_ReportDownloadProgress:(id)progress error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  progress = [progressCopy progress];
  v9 = [(SUManagerEngine *)self SUOperationProgressFromSUCoreProgress:progress];
  phase = [v9 phase];
  IsBeyondBrainLoad = SUDownloadPhaseIsBeyondBrainLoad(phase);

  if (IsBeyondBrainLoad)
  {
    [(SUManagerEngine *)self _queue_cancelLockAssertion];
  }

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__SUManagerEngine_action_ReportDownloadProgress_error___block_invoke;
    v20[3] = &unk_279CAA7C0;
    v20[4] = self;
    v21 = progressCopy;
    dispatch_async(delegateCallbackQueue, v20);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v23 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadProgress:) so not reporting", buf, 0xCu);
    }
  }

  return 0;
}

void __55__SUManagerEngine_action_ReportDownloadProgress_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managerDelegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) progress];
  v4 = [v2 SUOperationProgressFromSUCoreProgress:v3];
  [v5 downloadProgress:v4];
}

- (void)actionHelper_ReportPrepared:(BOOL)prepared
{
  v16 = *MEMORY[0x277D85DE8];
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__SUManagerEngine_actionHelper_ReportPrepared___block_invoke;
    v12[3] = &unk_279CAAD00;
    v12[4] = self;
    preparedCopy = prepared;
    dispatch_async(delegateCallbackQueue, v12);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v15 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }
}

void __47__SUManagerEngine_actionHelper_ReportPrepared___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  [v2 downloadCompleted:0 informClients:*(a1 + 40)];
}

- (int64_t)action_ReportPrepared:(id)prepared error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:prepared];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self actionHelper_ReportPrepared:1];
  return 0;
}

- (int64_t)action_ReportPreparedSet:(id)set error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:set];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  policyFactory = [(SUManagerEngine *)self policyFactory];
  downloadDescriptor = [(SUManagerEngine *)self downloadDescriptor];
  downloadOptions = [downloadDescriptor downloadOptions];
  [policyFactory setDownloadOptions:downloadOptions];

  updatePolicy = [(SUManagerEngine *)self updatePolicy];
  [updatePolicy setCheckAvailableSpace:0];

  updatePolicy2 = [(SUManagerEngine *)self updatePolicy];
  downloadPreflightPolicy = [updatePolicy2 downloadPreflightPolicy];
  [downloadPreflightPolicy setSkipPhase:1];

  updatePolicy3 = [(SUManagerEngine *)self updatePolicy];
  softwareUpdateDownloadPolicy = [updatePolicy3 softwareUpdateDownloadPolicy];
  [softwareUpdateDownloadPolicy setSkipPhase:1];

  updatePolicy4 = [(SUManagerEngine *)self updatePolicy];
  preparePolicy = [updatePolicy4 preparePolicy];
  [preparePolicy setSkipPhase:1];

  updatePolicy5 = [(SUManagerEngine *)self updatePolicy];
  suspendPolicy = [updatePolicy5 suspendPolicy];
  [suspendPolicy setSkipPhase:1];

  [(SUManagerEngine *)self actionHelper_ReportPrepared:0];
  return 0;
}

- (int64_t)action_ReportDownloadFailedNoUpdate:(id)update error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:update];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SUManagerEngine_action_ReportDownloadFailedNoUpdate_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v15 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }

  return 0;
}

void __61__SUManagerEngine_action_ReportDownloadFailedNoUpdate_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:3];
  [v2 downloadCompleted:v1];
}

- (void)actionHelper_ReportInstallFailedNoUpdate
{
  v12 = *MEMORY[0x277D85DE8];
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SUManagerEngine_actionHelper_ReportInstallFailedNoUpdate__block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v11 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(installCompleted:) so not reporting", buf, 0xCu);
    }
  }
}

void __59__SUManagerEngine_actionHelper_ReportInstallFailedNoUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:3];
  [v2 installCompleted:v1];
}

- (int64_t)action_ReportInstallFailedNoUpdate:(id)update error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:update];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self actionHelper_ReportInstallFailedNoUpdate];
  return 0;
}

- (void)actionHelper_ReportInstallFailedRollingBack
{
  v12 = *MEMORY[0x277D85DE8];
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SUManagerEngine_actionHelper_ReportInstallFailedRollingBack__block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v11 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(installCompleted:) so not reporting", buf, 0xCu);
    }
  }
}

void __62__SUManagerEngine_actionHelper_ReportInstallFailedRollingBack__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:87];
  [v2 installCompleted:v1];
}

- (int64_t)action_ReportInstallFailedRollingBack:(id)back error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:back];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self actionHelper_ReportInstallFailedRollingBack];
  return 0;
}

- (void)actionHelper_ReportDownloadFailedRollingBack
{
  v12 = *MEMORY[0x277D85DE8];
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SUManagerEngine_actionHelper_ReportDownloadFailedRollingBack__block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v11 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }
}

void __63__SUManagerEngine_actionHelper_ReportDownloadFailedRollingBack__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:87];
  [v2 downloadCompleted:v1];
}

- (int64_t)action_ReportDownloadFailedRollingBack:(id)back error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:back];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self actionHelper_ReportDownloadFailedRollingBack];
  return 0;
}

- (void)actionHelper_ReportRemoveFailedRollingBack
{
  v12 = *MEMORY[0x277D85DE8];
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SUManagerEngine_actionHelper_ReportRemoveFailedRollingBack__block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v11 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(removeCompleted:) so not reporting", buf, 0xCu);
    }
  }
}

void __61__SUManagerEngine_actionHelper_ReportRemoveFailedRollingBack__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:87];
  [v2 removeCompleted:v1];
}

- (int64_t)action_ReportRemoveFailedRollingBack:(id)back error:(id *)error
{
  v5 = [(SUManagerEngine *)self engineFSM:back];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUManagerEngine *)self actionHelper_ReportRemoveFailedRollingBack];
  return 0;
}

- (int64_t)action_ReportDownloadInstalling:(id)installing error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:installing];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SUManagerEngine_action_ReportDownloadInstalling_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v15 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }

  return 0;
}

void __57__SUManagerEngine_action_ReportDownloadInstalling_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:14];
  [v2 downloadCompleted:v1];
}

- (int64_t)action_ReportRemoveInstalling:(id)installing error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:installing];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SUManagerEngine_action_ReportRemoveInstalling_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v15 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(removeCompleted:) so not reporting", buf, 0xCu);
    }
  }

  return 0;
}

void __55__SUManagerEngine_action_ReportRemoveInstalling_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:14];
  [v2 removeCompleted:v1];
}

- (int64_t)action_ReportRollbackInstalling:(id)installing error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  installingCopy = installing;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__SUManagerEngine_action_ReportRollbackInstalling_error___block_invoke;
    v15[3] = &unk_279CAA7C0;
    v15[4] = self;
    v16 = installingCopy;
    dispatch_async(delegateCallbackQueue, v15);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v18 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(rollbackCompleted:withError:) so not reporting", buf, 0xCu);
    }
  }

  return 0;
}

void __57__SUManagerEngine_action_ReportRollbackInstalling_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managerDelegate];
  v2 = [*(a1 + 40) rollback];
  v3 = [v2 eligibleRollback];
  v4 = [SUUtility errorWithCode:14];
  [v5 rollbackCompleted:v3 withError:v4];
}

- (int64_t)action_ReportDownloadAwaitingReboot:(id)reboot error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:reboot];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SUManagerEngine_action_ReportDownloadAwaitingReboot_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v15 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }

  return 0;
}

void __61__SUManagerEngine_action_ReportDownloadAwaitingReboot_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:42];
  [v2 downloadCompleted:v1];
}

- (int64_t)action_ReportInstallAwaitingReboot:(id)reboot error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:reboot];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SUManagerEngine_action_ReportInstallAwaitingReboot_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v15 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(installCompleted:) so not reporting", buf, 0xCu);
    }
  }

  return 0;
}

void __60__SUManagerEngine_action_ReportInstallAwaitingReboot_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:42];
  [v2 installCompleted:v1];
}

- (int64_t)action_ReportRemoveAwaitingReboot:(id)reboot error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:reboot];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SUManagerEngine_action_ReportRemoveAwaitingReboot_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v15 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(removeCompleted:) so not reporting", buf, 0xCu);
    }
  }

  return 0;
}

void __59__SUManagerEngine_action_ReportRemoveAwaitingReboot_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v1 = [SUUtility errorWithCode:42];
  [v2 removeCompleted:v1];
}

- (int64_t)action_ReportRollbackAwaitingReboot:(id)reboot error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  rebootCopy = reboot;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__SUManagerEngine_action_ReportRollbackAwaitingReboot_error___block_invoke;
    v15[3] = &unk_279CAA7C0;
    v15[4] = self;
    v16 = rebootCopy;
    dispatch_async(delegateCallbackQueue, v15);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v18 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(rollbackCompleted:withError:) so not reporting", buf, 0xCu);
    }
  }

  return 0;
}

void __61__SUManagerEngine_action_ReportRollbackAwaitingReboot_error___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managerDelegate];
  v2 = [*(a1 + 40) rollback];
  v3 = [v2 eligibleRollback];
  v4 = [SUUtility errorWithCode:42];
  [v5 rollbackCompleted:v3 withError:v4];
}

- (int64_t)action_ReportDownloadFailedRemoveAll:(id)all error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  allCopy = all;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __62__SUManagerEngine_action_ReportDownloadFailedRemoveAll_error___block_invoke;
    v19 = &unk_279CAA7C0;
    selfCopy = self;
    v21 = allCopy;
    dispatch_async(delegateCallbackQueue, &v16);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v23 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(downloadCompleted:) so not reporting", buf, 0xCu);
    }
  }

  v14 = [(SUManagerEngine *)self engineFSM:v16];
  [v14 followupEvent:@"UpdateFailed" withInfo:allCopy];

  return 0;
}

void __62__SUManagerEngine_action_ReportDownloadFailedRemoveAll_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) managerDelegate];
  v2 = [*(a1 + 40) error];
  [v3 downloadCompleted:v2];
}

- (void)actionHelper_ReportApplyFailed:(id)failed
{
  v16 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__SUManagerEngine_actionHelper_ReportApplyFailed___block_invoke;
    v12[3] = &unk_279CAA7C0;
    v12[4] = self;
    v13 = failedCopy;
    dispatch_async(delegateCallbackQueue, v12);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v15 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(installCompleted:) so not reporting", buf, 0xCu);
    }
  }
}

void __50__SUManagerEngine_actionHelper_ReportApplyFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  [v2 installCompleted:*(a1 + 40)];
}

- (int64_t)action_ReportApplyFailed:(id)failed error:(id *)error
{
  failedCopy = failed;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  error = [failedCopy error];

  [(SUManagerEngine *)self actionHelper_ReportApplyFailed:error];
  return 0;
}

- (int64_t)action_ReportApplyFailedRemoveAll:(id)all error:(id *)error
{
  allCopy = all;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  error = [allCopy error];
  v9 = [SUUtility errorWithCode:78 originalError:error];

  [(SUManagerEngine *)self actionHelper_ReportApplyFailed:v9];
  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  [engineFSM2 followupEvent:@"ApplyFailedRemoveNow" withInfo:allCopy];

  return 0;
}

- (int64_t)action_ReportAwaitingReboot:(id)reboot error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(SUManagerEngine *)self engineFSM:reboot];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SUManagerEngine_action_ReportAwaitingReboot_error___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    mEMORY[0x277D64400] = [engineLog oslog];

    if (os_log_type_enabled(mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v15 = engineName;
      _os_log_impl(&dword_26AB34000, mEMORY[0x277D64400], OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(installCompleted:) so not reporting", buf, 0xCu);
    }
  }

  return 0;
}

void __53__SUManagerEngine_action_ReportAwaitingReboot_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) managerDelegate];
  [v1 installCompleted:0];
}

- (void)actionHelper_ReportRollbackCompleted:(id)completed withError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  errorCopy = error;
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__SUManagerEngine_actionHelper_ReportRollbackCompleted_withError___block_invoke;
    block[3] = &unk_279CAA798;
    block[4] = self;
    v16 = completedCopy;
    v17 = errorCopy;
    dispatch_async(delegateCallbackQueue, block);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v19 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(rollbackCompleted:withError:) so not reporting", buf, 0xCu);
    }
  }
}

void __66__SUManagerEngine_actionHelper_ReportRollbackCompleted_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  [v2 rollbackCompleted:*(a1 + 40) withError:*(a1 + 48)];
}

- (int64_t)action_ReportRollbackFailed:(id)failed error:(id *)error
{
  failedCopy = failed;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  rollback = [failedCopy rollback];
  eligibleRollback = [rollback eligibleRollback];
  error = [failedCopy error];

  [(SUManagerEngine *)self actionHelper_ReportRollbackCompleted:eligibleRollback withError:error];
  return 0;
}

- (int64_t)action_ReportRollbackSucceeded:(id)succeeded error:(id *)error
{
  succeededCopy = succeeded;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  rollback = [succeededCopy rollback];
  eligibleRollback = [rollback eligibleRollback];
  error = [succeededCopy error];

  [(SUManagerEngine *)self actionHelper_ReportRollbackCompleted:eligibleRollback withError:error];
  return 0;
}

- (int64_t)actionUnknownAction:(id)action error:(id *)error
{
  v5 = MEMORY[0x277CCACA8];
  actionCopy = action;
  actionCopy = [[v5 alloc] initWithFormat:@"unknown action(%@)", actionCopy];

  engineFSM = [(SUManagerEngine *)self engineFSM];
  diag = [engineFSM diag];
  [diag dumpTracked:actionCopy dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];

  mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
  v11 = [mEMORY[0x277D64400] buildError:8116 underlying:0 description:actionCopy];

  engineFSM2 = [(SUManagerEngine *)self engineFSM];
  diag2 = [engineFSM2 diag];
  [diag2 trackAnomaly:@"[ENGINE]" forReason:@"engine FSM has reported an anomaly" withResult:objc_msgSend(v11 withError:{"code"), v11}];

  return 0;
}

- (SUManagerEngine)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v44.receiver = self;
  v44.super_class = SUManagerEngine;
  v5 = [(SUManagerEngine *)&v44 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_managerDelegate, delegateCopy);
    v7 = [objc_alloc(MEMORY[0x277D64468]) initWithCategory:@"engine"];
    engineLog = v6->_engineLog;
    v6->_engineLog = v7;

    if (!v6->_engineLog)
    {
      SULogInfo(@"Failed creating engine log", v9, v10, v11, v12, v13, v14, v15, v43);
    }

    updateControl = v6->_updateControl;
    v6->_updateControl = 0;

    v17 = objc_alloc_init(SUPolicyFactory);
    policyFactory = v6->_policyFactory;
    v6->_policyFactory = v17;

    v19 = MGCopyAnswer();
    v20 = MGCopyAnswer();
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"engine:%@(%@)"];
    engineName = v6->_engineName;
    v6->_engineName = v21;

    _generateStateTable = [objc_opt_class() _generateStateTable];
    stateTable = v6->_stateTable;
    v6->_stateTable = _generateStateTable;

    v25 = objc_alloc(MEMORY[0x277D64450]);
    v26 = [v25 initMachine:v6->_engineName withTable:v6->_stateTable startingIn:*MEMORY[0x277D643F0] usingDelegate:v6 registeringAllInfoClass:objc_opt_class()];
    engineFSM = v6->_engineFSM;
    v6->_engineFSM = v26;

    if (!v6->_engineFSM)
    {
      SULogInfo(@"Failed creating engine FSM", v28, v29, v30, v31, v32, v33, v34, v19);

      v41 = 0;
      goto LABEL_8;
    }

    pendingManagedScanParams = v6->_pendingManagedScanParams;
    v6->_pendingManagedScanParams = 0;

    pendingPurgeParams = v6->_pendingPurgeParams;
    v6->_pendingPurgeParams = 0;

    v6->_isManagedScan = 0;
    activeScanner = v6->_activeScanner;
    v6->_activeScanner = 0;

    *&v6->_activating = 0;
    v6->_loadBrainRetries = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    rollbackUUID = v6->_rollbackUUID;
    v6->_rollbackUUID = uUIDString;
  }

  v41 = v6;
LABEL_8:

  return v41;
}

- (void)activateLoadingPersisted:(id)persisted
{
  persistedCopy = persisted;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SUManagerEngine_activateLoadingPersisted___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = persistedCopy;
  v7 = persistedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __44__SUManagerEngine_activateLoadingPersisted___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) engineFSM];
  v3 = [v2 diag];
  [v3 trackBegin:@"activateLoadingPersisted" atLevel:1];

  if (([*(a1 + 32) activated] & 1) == 0 && !objc_msgSend(*(a1 + 32), "activating"))
  {
    [*(a1 + 32) setActivating:1];
    v45 = 0;
    v44 = 0;
    [MEMORY[0x277D641D0] previousUpdateState:&v45 + 1 tetheredRestore:&v45 failedBackward:&v44 + 1 failedForward:&v44];
    if (HIBYTE(v45) == 1)
    {
      v10 = [*(a1 + 32) engineLog];
      v11 = [v10 oslog];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) engineName];
        *buf = 138412290;
        v47 = v12;
        _os_log_impl(&dword_26AB34000, v11, OS_LOG_TYPE_DEFAULT, "%@ previous update state: successful OTA", buf, 0xCu);
      }
    }

    if (v45 == 1)
    {
      v13 = [*(a1 + 32) engineLog];
      v14 = [v13 oslog];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) engineName];
        *buf = 138412290;
        v47 = v15;
        _os_log_impl(&dword_26AB34000, v14, OS_LOG_TYPE_DEFAULT, "%@ previous update state: tethered restore", buf, 0xCu);
      }
    }

    if (HIBYTE(v44) == 1)
    {
      v16 = [*(a1 + 32) engineLog];
      v17 = [v16 oslog];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(a1 + 32) engineName];
        *buf = 138412290;
        v47 = v18;
        _os_log_impl(&dword_26AB34000, v17, OS_LOG_TYPE_DEFAULT, "%@ previous update state: failed backward", buf, 0xCu);
      }
    }

    if (v44 == 1)
    {
      v19 = [*(a1 + 32) engineLog];
      v20 = [v19 oslog];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(a1 + 32) engineName];
        *buf = 138412290;
        v47 = v21;
        _os_log_impl(&dword_26AB34000, v20, OS_LOG_TYPE_DEFAULT, "%@ previous update state: failed forward", buf, 0xCu);
      }
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = [v22 asset];

      if (v23)
      {
        if (HIBYTE(v44) == 1)
        {
          v24 = [*(a1 + 32) engineLog];
          v25 = [v24 oslog];

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26AB34000, v25, OS_LOG_TYPE_DEFAULT, "Previous OTA attempt failed backwards and prepared update has been purged", buf, 2u);
          }

          goto LABEL_37;
        }

        if ([*(a1 + 40) atPhase] == 2)
        {
          v35 = [*(a1 + 32) engineLog];
          v25 = [v35 oslog];

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [*(a1 + 32) engineName];
            *buf = 138412290;
            v47 = v36;
            v37 = "%@ download descriptor found, started downloading but not completed, will try to load";
LABEL_52:
            _os_log_impl(&dword_26AB34000, v25, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);

            goto LABEL_53;
          }

          goto LABEL_53;
        }

        if ([*(a1 + 40) atPhase] == 3)
        {
          v38 = [*(a1 + 32) engineLog];
          v25 = [v38 oslog];

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [*(a1 + 32) engineName];
            *buf = 138412290;
            v47 = v36;
            v37 = "%@ download descriptor found, update is downloaded, will try to load";
            goto LABEL_52;
          }

LABEL_53:

          v30 = [*(a1 + 32) engineFSM];
          v31 = [[SUManagerEngineParam alloc] initWithDownloadDescriptor:*(a1 + 40)];
          v32 = @"ActivateHavePersisted";
          goto LABEL_38;
        }

        if ([*(a1 + 40) atPhase] == 5)
        {
          v39 = [*(a1 + 32) engineLog];
          v25 = [v39 oslog];

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [*(a1 + 32) engineName];
            *buf = 138412290;
            v47 = v36;
            v37 = "%@ download descriptor found, update is prepared, will try to load";
            goto LABEL_52;
          }

          goto LABEL_53;
        }

        v40 = [*(a1 + 40) atPhase];
        v41 = [*(a1 + 32) engineLog];
        v25 = [v41 oslog];

        v42 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v40 == 4)
        {
          if (v42)
          {
            v36 = [*(a1 + 32) engineName];
            *buf = 138412290;
            v47 = v36;
            v37 = "%@ download descriptor found, prepare interrupted, will try to resume or purge and redownload";
            goto LABEL_52;
          }

          goto LABEL_53;
        }

        if (v42)
        {
          v27 = +[SUManagerEngineDownloadDescriptor phaseToString:](SUManagerEngineDownloadDescriptor, "phaseToString:", [*(a1 + 40) atPhase]);
          v43 = [*(a1 + 32) engineName];
          *buf = 138412546;
          v47 = v27;
          v48 = 2112;
          v49 = v43;
          _os_log_impl(&dword_26AB34000, v25, OS_LOG_TYPE_DEFAULT, "%@ download descriptor found, phase (%@) is not valid to load", buf, 0x16u);

          goto LABEL_36;
        }

LABEL_37:

        v30 = [*(a1 + 32) engineFSM];
        v31 = [[SUManagerEngineParam alloc] initWithSkipPreSUStagingPurge:1];
        v32 = @"ActivateNoPersisted";
LABEL_38:
        [v30 postEvent:v32 withInfo:v31];

        v9 = 0;
        goto LABEL_39;
      }

      v29 = [*(a1 + 32) engineLog];
      v25 = [v29 oslog];

      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v27 = [*(a1 + 32) engineName];
      *buf = 138412290;
      v47 = v27;
      v28 = "%@ no download descriptor asset to load from";
    }

    else
    {
      v26 = [*(a1 + 32) engineLog];
      v25 = [v26 oslog];

      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v27 = [*(a1 + 32) engineName];
      *buf = 138412290;
      v47 = v27;
      v28 = "%@ no download descriptor to load from";
    }

    _os_log_impl(&dword_26AB34000, v25, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
LABEL_36:

    goto LABEL_37;
  }

  v4 = [MEMORY[0x277D64400] sharedCore];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([*(a1 + 32) activated])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([*(a1 + 32) activating])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v5 initWithFormat:@"unexpected activate - activated:%@, activating:%@", v6, v7];
  v9 = [v4 buildError:8111 underlying:0 description:v8];

LABEL_39:
  v33 = [*(a1 + 32) engineFSM];
  v34 = [v33 diag];
  [v34 trackEnd:@"activateLoadingPersisted" atLevel:1 withResult:objc_msgSend(v9 withError:{"code"), v9}];
}

- (void)downloadUpdate:(id)update
{
  updateCopy = update;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  v5 = [[SUManagerEngineParam alloc] initWithDownloadDescriptor:updateCopy];

  [engineFSM postEvent:@"DownloadAndPrepare" withInfo:v5];
}

- (void)refreshInstallTonightConfig:(id)config
{
  configCopy = config;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SUManagerEngine_refreshInstallTonightConfig___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = configCopy;
  v7 = configCopy;
  dispatch_async(extendedStateQueue, v8);
}

- (void)_updatePolicyFactoryMetricEventFields:(id)fields updateUUID:(id)d cleanupLevel:(id)level
{
  fieldsCopy = fields;
  dCopy = d;
  levelCopy = level;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = v12;
  if (fieldsCopy)
  {
    [v12 setValue:fieldsCopy forKey:*MEMORY[0x277D64620]];
  }

  if (dCopy)
  {
    [v13 setValue:dCopy forKey:*MEMORY[0x277D647C0]];
  }

  if (levelCopy)
  {
    levelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", levelCopy];
    [v13 setSafeObject:levelCopy forKey:@"cleanupLevel"];
  }

  policyFactory = [(SUManagerEngine *)self policyFactory];
  globalOptions = [policyFactory globalOptions];

  [globalOptions appendUpdateMetricEventFields:v13];
  policyFactory2 = [(SUManagerEngine *)self policyFactory];
  [policyFactory2 setGlobalOptions:globalOptions];
}

- (void)installUpdate:(id)update
{
  updateCopy = update;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  v5 = [[SUManagerEngineParam alloc] initWithInstallOptions:updateCopy];

  [engineFSM postEvent:@"InstallUpdate" withInfo:v5];
}

- (void)removeUpdateKeepingDocAssets:(BOOL)assets
{
  if (assets)
  {
    v4 = [[SUManagerEngineParam alloc] initWithPurgeOptions:1 withError:0];
  }

  else
  {
    v4 = objc_alloc_init(SUManagerEngineParam);
  }

  v6 = v4;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  [engineFSM postEvent:@"RemoveUpdate" withInfo:v6];
}

- (id)availableRollback
{
  updateControl = [(SUManagerEngine *)self updateControl];

  if (!updateControl)
  {
    v4 = [objc_alloc(MEMORY[0x277D641F0]) initWithDelegate:self updateDescriptor:0 updateUUID:self->_rollbackUUID];
    [(SUManagerEngine *)self setUpdateControl:v4];
  }

  updateControl2 = [(SUManagerEngine *)self updateControl];
  rollbackAvailable = [updateControl2 rollbackAvailable];

  return rollbackAvailable;
}

- (id)previousRollback
{
  updateControl = [(SUManagerEngine *)self updateControl];

  if (!updateControl)
  {
    v4 = [objc_alloc(MEMORY[0x277D641F0]) initWithDelegate:self updateDescriptor:0 updateUUID:self->_rollbackUUID];
    [(SUManagerEngine *)self setUpdateControl:v4];
  }

  updateControl2 = [(SUManagerEngine *)self updateControl];
  previousRollback = [updateControl2 previousRollback];

  return previousRollback;
}

- (void)rollbackUpdateWithOptions:(id)options
{
  optionsCopy = options;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  v5 = [[SUManagerEngineParam alloc] initWithRollbackOptions:optionsCopy];

  [engineFSM postEvent:@"RollbackRequested" withInfo:v5];
}

- (void)onUnlock
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SUManagerEngine_onUnlock__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(extendedStateQueue, block);
}

void __27__SUManagerEngine_onUnlock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [MEMORY[0x277D64400] sharedCore];
    v5 = [v4 delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__SUManagerEngine_onUnlock__block_invoke_2;
    block[3] = &unk_279CAA708;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
  }

  v6 = [*(a1 + 32) engineFSM];
  v7 = [SUManagerEngineParam alloc];
  v8 = [*(a1 + 32) downloadDescriptor];
  v9 = [(SUManagerEngineParam *)v7 initWithDownloadDescriptor:v8];
  [v6 postEvent:@"Unlocked" withInfo:v9];
}

void __27__SUManagerEngine_onUnlock__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) managerDelegate];
  [v1 sendUnlockNotifications:0];
}

- (void)createBrainLoadLockAssertion:(id)assertion
{
  assertionCopy = assertion;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SUManagerEngine_createBrainLoadLockAssertion___block_invoke;
  v8[3] = &unk_279CAA8D0;
  v8[4] = self;
  v9 = assertionCopy;
  v7 = assertionCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __48__SUManagerEngine_createBrainLoadLockAssertion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 _queue_createBrainLoadLockAssertion:&v5];
  v3 = v5;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (BOOL)_queue_createBrainLoadLockAssertion:(id *)assertion
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v7 = +[SUKeybagInterface sharedInstance];
  v8 = [v7 createPreventLockAssertionWithDuration:240];
  lockAssertion = self->_lockAssertion;
  self->_lockAssertion = v8;

  v10 = self->_lockAssertion;
  if (assertion && !v10)
  {
    *assertion = [SUUtility errorWithCode:-1];
  }

  return v10 != 0;
}

- (void)updateBrainLoadProgress:(id)progress
{
  progressCopy = progress;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SUManagerEngine_updateBrainLoadProgress___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = progressCopy;
  v7 = progressCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __43__SUManagerEngine_updateBrainLoadProgress___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updateBrainLoadStalled:(id)stalled
{
  stalledCopy = stalled;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__SUManagerEngine_updateBrainLoadStalled___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = stalledCopy;
  v7 = stalledCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __42__SUManagerEngine_updateBrainLoadStalled___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updateBrainLoaded:(id)loaded
{
  loadedCopy = loaded;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__SUManagerEngine_updateBrainLoaded___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = loadedCopy;
  v7 = loadedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __37__SUManagerEngine_updateBrainLoaded___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) engineFSM];
  v2 = *MEMORY[0x277D643B0];
  v3 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v4 postEvent:v2 withInfo:v3];
}

- (void)updateAssetDownloadPreflighted
{
  v8 = *MEMORY[0x277D85DE8];
  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    engineName = [(SUManagerEngine *)self engineName];
    v6 = 138412290;
    v7 = engineName;
    _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ update asset download preflighted", &v6, 0xCu);
  }
}

- (void)updateAssetDownloadProgress:(id)progress
{
  progressCopy = progress;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SUManagerEngine_updateAssetDownloadProgress___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = progressCopy;
  v7 = progressCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __47__SUManagerEngine_updateAssetDownloadProgress___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updateAssetDownloadStalled:(id)stalled
{
  stalledCopy = stalled;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SUManagerEngine_updateAssetDownloadStalled___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = stalledCopy;
  v7 = stalledCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __46__SUManagerEngine_updateAssetDownloadStalled___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updateAssetDownloaded:(id)downloaded
{
  downloadedCopy = downloaded;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SUManagerEngine_updateAssetDownloaded___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = downloadedCopy;
  v7 = downloadedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __41__SUManagerEngine_updateAssetDownloaded___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updatePrepareProgress:(id)progress
{
  progressCopy = progress;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SUManagerEngine_updatePrepareProgress___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = progressCopy;
  v7 = progressCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __41__SUManagerEngine_updatePrepareProgress___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v3 postEvent:@"UpdateProgress" withInfo:v2];
}

- (void)updatePrepared:(id)prepared
{
  preparedCopy = prepared;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__SUManagerEngine_updatePrepared___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = preparedCopy;
  v7 = preparedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __34__SUManagerEngine_updatePrepared___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) engineFSM];
  v2 = *MEMORY[0x277D643B8];
  v3 = [[SUManagerEngineParam alloc] initWithProgress:*(a1 + 40)];
  [v4 postEvent:v2 withInfo:v3];
}

- (void)updateApplied
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SUManagerEngine_updateApplied__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(extendedStateQueue, block);
}

void __32__SUManagerEngine_updateApplied__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v1 = *MEMORY[0x277D643A0];
  v2 = objc_alloc_init(SUManagerEngineParam);
  [v3 postEvent:v1 withInfo:v2];
}

- (void)applyAttemptFailed:(id)failed
{
  failedCopy = failed;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SUManagerEngine_applyAttemptFailed___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v9 = failedCopy;
  selfCopy = self;
  v7 = failedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __38__SUManagerEngine_applyAttemptFailed___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277D64398];
  v3 = *(a1 + 32);
  v34 = v2;
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = [v3 domain];
  v5 = v34;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = v4;
  v7 = [*(a1 + 32) domain];
  if ([v7 isEqualToString:*MEMORY[0x277D292C8]])
  {
    v8 = [*(a1 + 32) code];

    v5 = v34;
    if (v8 != 5)
    {
      goto LABEL_8;
    }

    v5 = @"ApplyFailedDone";
    v6 = v34;
  }

  else
  {

    v5 = v34;
  }

LABEL_8:
  v9 = *(a1 + 32);
  if (!v9)
  {
    v29 = 0;
    v34 = v5;
    goto LABEL_23;
  }

  v10 = [v9 userInfo];
  if (v10 && (v11 = v10, [*(a1 + 32) userInfo], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, v11, (isKindOfClass & 1) != 0) && (objc_msgSend(*(a1 + 32), "userInfo"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "objectForKeyedSubscript:", @"Recoverable"), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v16 = objc_opt_isKindOfClass(), v15, v14, (v16 & 1) != 0))
  {
    v17 = [*(a1 + 32) userInfo];
    v18 = [v17 objectForKeyedSubscript:@"Recoverable"];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      v20 = v34;
    }

    else
    {
      v20 = @"ApplyFailedDone";
    }

    v35 = v20;

    v21 = v35;
  }

  else
  {
    v21 = v5;
  }

  v34 = v21;
  v22 = *(a1 + 32);
  if (!v22)
  {
LABEL_21:
    v29 = 0;
    goto LABEL_23;
  }

  v23 = [v22 userInfo];
  v24 = [v23 mutableCopy];

  if (!v24)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v25 = [*(a1 + 40) policyFactory];
  v26 = [v25 installOptions];

  if (v26)
  {
    [v24 setSafeObject:v26 forKey:@"InstallOptions"];
  }

  v27 = MEMORY[0x277CCA9B8];
  v28 = [*(a1 + 32) domain];
  v29 = [v27 errorWithDomain:v28 code:objc_msgSend(*(a1 + 32) userInfo:{"code"), v24}];

LABEL_23:
  v30 = [*(a1 + 40) engineFSM];
  v31 = [SUManagerEngineParam alloc];
  v32 = [*(a1 + 40) downloadDescriptor];
  v33 = [(SUManagerEngineParam *)v31 initWithDescriptor:v32 andError:v29];
  [v30 postEvent:v34 withInfo:v33];
}

- (void)updateAttemptFailed:(id)failed
{
  failedCopy = failed;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SUManagerEngine_updateAttemptFailed___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = failedCopy;
  v7 = failedCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __39__SUManagerEngine_updateAttemptFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingPurgeParams];

  v3 = [SUManagerEngineParam alloc];
  v4 = v3;
  if (v2)
  {
    v5 = [*(a1 + 32) pendingPurgeParams];
    v8 = -[SUManagerEngineParam initWithPurgeOptions:withError:](v4, "initWithPurgeOptions:withError:", [v5 skipDocAssetsPurge], *(a1 + 40));

    [*(a1 + 32) setPendingPurgeParams:0];
  }

  else
  {
    v8 = [(SUManagerEngineParam *)v3 initWithError:*(a1 + 40)];
  }

  v6 = [*(a1 + 32) engineFSM];
  v7 = [[SUManagerEngineParam alloc] initWithError:*(a1 + 40)];
  [v6 postEvent:@"UpdateFailed" withInfo:v7];
}

- (void)updateCanceled
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUManagerEngine_updateCanceled__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(extendedStateQueue, block);
}

void __33__SUManagerEngine_updateCanceled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingPurgeParams];

  if (v2)
  {
    v4 = [*(a1 + 32) pendingPurgeParams];
    [*(a1 + 32) setPendingPurgeParams:0];
  }

  else
  {
    v4 = objc_alloc_init(SUManagerEngineParam);
  }

  v3 = [*(a1 + 32) engineFSM];
  [v3 postEvent:@"UpdateCanceled" withInfo:v4];
}

- (void)updateRolledBack:(id)back
{
  backCopy = back;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SUManagerEngine_updateRolledBack___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v8[4] = self;
  v9 = backCopy;
  v7 = backCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __36__SUManagerEngine_updateRolledBack___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithRollback:*(a1 + 40)];
  [v3 postEvent:@"RollbackComplete" withInfo:v2];
}

- (void)rollbackAttemptFailed:(id)failed withError:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUManagerEngine_rollbackAttemptFailed_withError___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v13 = failedCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = failedCopy;
  dispatch_async(extendedStateQueue, block);
}

void __51__SUManagerEngine_rollbackAttemptFailed_withError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) engineFSM];
  v2 = [[SUManagerEngineParam alloc] initWithRollback:*(a1 + 40) withError:*(a1 + 48)];
  [v3 postEvent:@"RollbackFailed" withInfo:v2];
}

- (void)updateAnomaly:(id)anomaly
{
  v12 = *MEMORY[0x277D85DE8];
  anomalyCopy = anomaly;
  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    engineName = [(SUManagerEngine *)self engineName];
    v8 = 138412546;
    v9 = engineName;
    v10 = 2112;
    v11 = anomalyCopy;
    _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ anomaly reporteed by update control interface, error:%@", &v8, 0x16u);
  }
}

- (void)pathSatisficationStatusChangedTo:(BOOL)to
{
  toCopy = to;
  v15 = *MEMORY[0x277D85DE8];
  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    engineName = [(SUManagerEngine *)self engineName];
    *buf = 138412546;
    v12 = engineName;
    v13 = 1024;
    v14 = toCopy;
    _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ path satisfication changed to: %d", buf, 0x12u);
  }

  if (toCopy)
  {
    engineFSM = [(SUManagerEngine *)self engineFSM];
    extendedStateQueue = [engineFSM extendedStateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SUManagerEngine_pathSatisficationStatusChangedTo___block_invoke;
    block[3] = &unk_279CAA708;
    block[4] = self;
    dispatch_async(extendedStateQueue, block);
  }
}

void __52__SUManagerEngine_pathSatisficationStatusChangedTo___block_invoke(uint64_t a1)
{
  v2 = +[SUNetworkMonitor sharedInstance];
  [v2 removeObserver:*(a1 + 32)];

  v6 = [*(a1 + 32) engineFSM];
  v3 = [SUManagerEngineParam alloc];
  v4 = [*(a1 + 32) downloadDescriptor];
  v5 = [(SUManagerEngineParam *)v3 initWithDownloadDescriptor:v4];
  [v6 postEvent:@"NetworkAvailable" withInfo:v5];
}

- (BOOL)isBrainNetworkError:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    engineName = [(SUManagerEngine *)self engineName];
    v24 = 138412546;
    v25 = engineName;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ Checking if engine parameter is brain network error, %@", &v24, 0x16u);
  }

  if ([errorCopy paramType] != 5)
  {
    engineLog2 = [(SUManagerEngine *)self engineLog];
    oslog2 = [engineLog2 oslog];

    if (!os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    engineName2 = [(SUManagerEngine *)self engineName];
    v24 = 138412290;
    v25 = engineName2;
    v15 = "%@ engine parameter is not an error";
LABEL_11:
    _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, v15, &v24, 0xCu);

    goto LABEL_12;
  }

  error = [errorCopy error];
  domain = [error domain];
  v10 = [domain isEqualToString:*MEMORY[0x277D292C8]];

  if ((v10 & 1) == 0)
  {
    engineLog3 = [(SUManagerEngine *)self engineLog];
    oslog2 = [engineLog3 oslog];

    if (!os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    engineName2 = [(SUManagerEngine *)self engineName];
    v24 = 138412290;
    v25 = engineName2;
    v15 = "%@ engine error parameter is not in MSU domain";
    goto LABEL_11;
  }

  error2 = [errorCopy error];
  if ([error2 code] != 812)
  {
    error3 = [errorCopy error];
    code = [error3 code];

    if (code == 806)
    {
      goto LABEL_15;
    }

    engineLog4 = [(SUManagerEngine *)self engineLog];
    oslog2 = [engineLog4 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      engineName2 = [(SUManagerEngine *)self engineName];
      v24 = 138412290;
      v25 = engineName2;
      v15 = "%@ engine error parameter does not have a network failure code";
      goto LABEL_11;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

LABEL_15:
  engineLog5 = [(SUManagerEngine *)self engineLog];
  oslog2 = [engineLog5 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    engineName3 = [(SUManagerEngine *)self engineName];
    v24 = 138412290;
    v25 = engineName3;
    _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, "%@ Engine parameter is brain network error", &v24, 0xCu);
  }

  v17 = 1;
LABEL_13:

  return v17;
}

- (BOOL)isBrainReloadError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  engineLog = [(SUManagerEngine *)self engineLog];
  oslog = [engineLog oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    engineName = [(SUManagerEngine *)self engineName];
    v23 = 138412546;
    v24 = engineName;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ Checking if engine parameter is brain error that should be retried, %@", &v23, 0x16u);
  }

  if ([errorCopy paramType] != 5)
  {
    engineLog2 = [(SUManagerEngine *)self engineLog];
    oslog2 = [engineLog2 oslog];

    if (!os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    engineName2 = [(SUManagerEngine *)self engineName];
    v23 = 138412290;
    v24 = engineName2;
    v20 = "%@ engine parameter is not an error";
LABEL_15:
    _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, v20, &v23, 0xCu);

    goto LABEL_16;
  }

  error = [errorCopy error];
  domain = [error domain];
  v10 = [domain isEqualToString:@"com.apple.softwareupdateservices.errors"];

  if ((v10 & 1) == 0)
  {
    engineLog3 = [(SUManagerEngine *)self engineLog];
    oslog2 = [engineLog3 oslog];

    if (!os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    engineName2 = [(SUManagerEngine *)self engineName];
    v23 = 138412290;
    v24 = engineName2;
    v20 = "%@ engine error parameter is not in SU domain";
    goto LABEL_15;
  }

  error2 = [errorCopy error];
  code = [error2 code];

  engineLog4 = [(SUManagerEngine *)self engineLog];
  oslog2 = [engineLog4 oslog];

  v15 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
  if (code != 107)
  {
    if (v15)
    {
      engineName2 = [(SUManagerEngine *)self engineName];
      v23 = 138412290;
      v24 = engineName2;
      v20 = "%@ engine error parameter does not have a brain should retry failure code";
      goto LABEL_15;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if (v15)
  {
    engineName3 = [(SUManagerEngine *)self engineName];
    v23 = 138412290;
    v24 = engineName3;
    _os_log_impl(&dword_26AB34000, oslog2, OS_LOG_TYPE_DEFAULT, "%@ Engine parameter is brain retry error", &v23, 0xCu);
  }

  v17 = 1;
LABEL_17:

  return v17;
}

- (void)cancelLockAssertion
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUManagerEngine_cancelLockAssertion__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(extendedStateQueue, block);
}

- (void)_queue_cancelLockAssertion
{
  engineFSM = [(SUManagerEngine *)self engineFSM];
  extendedStateQueue = [engineFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (self->_lockAssertion)
  {
    SULogInfo(@"Canceled lock assertion", v5, v6, v7, v8, v9, v10, v11, v13);
    [(SUInvalidatable *)self->_lockAssertion invalidate];
    lockAssertion = self->_lockAssertion;
    self->_lockAssertion = 0;
  }
}

- (id)updatePolicy
{
  policyFactory = [(SUManagerEngine *)self policyFactory];
  corePolicy = [policyFactory corePolicy];

  return corePolicy;
}

- (id)rollbackPolicy
{
  policyFactory = [(SUManagerEngine *)self policyFactory];
  rollbackPolicy = [policyFactory rollbackPolicy];

  return rollbackPolicy;
}

- (void)resetPolicy
{
  v3 = objc_alloc_init(SUPolicyFactory);
  [(SUManagerEngine *)self setPolicyFactory:v3];
}

- (void)notifyRollbackStarted:(id)started
{
  v16 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  managerDelegate = [(SUManagerEngine *)self managerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    delegateCallbackQueue = [mEMORY[0x277D64400] delegateCallbackQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__SUManagerEngine_notifyRollbackStarted___block_invoke;
    v12[3] = &unk_279CAA7C0;
    v12[4] = self;
    v13 = startedCopy;
    dispatch_async(delegateCallbackQueue, v12);
  }

  else
  {
    engineLog = [(SUManagerEngine *)self engineLog];
    oslog = [engineLog oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(SUManagerEngine *)self engineName];
      *buf = 138412290;
      v15 = engineName;
      _os_log_impl(&dword_26AB34000, oslog, OS_LOG_TYPE_DEFAULT, "%@ delegate does not respond to selector(rollbackStarted:) so not reporting", buf, 0xCu);
    }
  }
}

void __41__SUManagerEngine_notifyRollbackStarted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managerDelegate];
  [v2 rollbackStarted:*(a1 + 40)];
}

+ (int)softwareUpdateTypeForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([descriptorCopy splatOnly])
  {
    v4 = 4;
  }

  else
  {
    updateType = [descriptorCopy updateType];
    if ((updateType - 1) <= 2)
    {
      v4 = updateType;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (unint64_t)SUCoreAudienceTypeToSUSAudienceType:(int64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

+ (unint64_t)SUCorePreferredTypeToSUSPreferenceType:(int64_t)type
{
  if (type == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (type == 2);
  }
}

+ (unint64_t)upgradeTypeForCoreDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  mEMORY[0x277D64420] = [MEMORY[0x277D64420] sharedDevice];
  productBuildVersion = [descriptorCopy productBuildVersion];
  v6 = [mEMORY[0x277D64420] isMinorOSUpdate:productBuildVersion];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    productBuildVersion2 = [descriptorCopy productBuildVersion];
    v9 = [mEMORY[0x277D64420] isMajorOSUpdate:productBuildVersion2];

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)SUOperationProgressFromSUCoreProgress:(id)progress
{
  progressCopy = progress;
  v4 = objc_alloc_init(SUOperationProgress);
  phase = [progressCopy phase];
  v6 = [phase isEqualToString:*MEMORY[0x277D64840]];

  if (v6)
  {
    [progressCopy portionComplete];
    if (v7 == 1.0)
    {
      v8 = kSUDownloadPhaseBrainExtracting;
      goto LABEL_11;
    }

    isStalled = [progressCopy isStalled];
    v8 = kSUDownloadPhaseBrainFetching;
    v12 = kSUDownloadPhaseBrainFetchingStalled;
LABEL_9:
    if (isStalled)
    {
      v8 = v12;
    }

    goto LABEL_11;
  }

  phase2 = [progressCopy phase];
  v10 = [phase2 isEqualToString:*MEMORY[0x277D64830]];

  if (v10)
  {
    isStalled = [progressCopy isStalled];
    v8 = kSUDownloadPhaseUpdateFetching;
    v12 = kSUDownloadPhaseUpdateFetchingStalled;
    goto LABEL_9;
  }

  phase3 = [progressCopy phase];
  v14 = [phase3 isEqualToString:*MEMORY[0x277D64848]];

  if (!v14)
  {
    goto LABEL_12;
  }

  v8 = kSUDownloadPhasePreparingForInstallation;
LABEL_11:
  [(SUOperationProgress *)v4 setPhase:*v8];
LABEL_12:
  [progressCopy portionComplete];
  [(SUOperationProgress *)v4 setIsDone:v15 == 1.0];
  [progressCopy portionComplete];
  [(SUOperationProgress *)v4 setPercentComplete:?];
  [progressCopy estimatedTimeRemaining];
  [(SUOperationProgress *)v4 setTimeRemaining:?];
  LODWORD(v16) = -1.0;
  [(SUOperationProgress *)v4 setNormalizedPercentComplete:v16];

  return v4;
}

+ (id)SUDescriptorFromCoreDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    v5 = objc_alloc_init(SUDescriptor);
    documentation = [descriptorCopy documentation];

    if (documentation)
    {
      v7 = [SUDocumentation alloc];
      documentation2 = [descriptorCopy documentation];
      v9 = [(SUDocumentation *)v7 initWithSUCoreDocumentation:documentation2];
      [(SUDescriptor *)v5 setDocumentation:v9];
    }

    publisher = [descriptorCopy publisher];
    [(SUDescriptor *)v5 setPublisher:publisher];

    productSystemName = [descriptorCopy productSystemName];
    [(SUDescriptor *)v5 setProductSystemName:productSystemName];

    productVersion = [descriptorCopy productVersion];
    [(SUDescriptor *)v5 setProductVersion:productVersion];

    productVersionExtra = [descriptorCopy productVersionExtra];
    [(SUDescriptor *)v5 setProductVersionExtra:productVersionExtra];

    productBuildVersion = [descriptorCopy productBuildVersion];
    [(SUDescriptor *)v5 setProductBuildVersion:productBuildVersion];

    prerequisiteBuild = [descriptorCopy prerequisiteBuild];
    [(SUDescriptor *)v5 setPrerequisiteBuild:prerequisiteBuild];

    prerequisiteOSVersion = [descriptorCopy prerequisiteOSVersion];
    [(SUDescriptor *)v5 setPrerequisiteOS:prerequisiteOSVersion];

    releaseType = [descriptorCopy releaseType];
    [(SUDescriptor *)v5 setReleaseType:releaseType];

    -[SUDescriptor setDownloadSize:](v5, "setDownloadSize:", [descriptorCopy preSUStagingOptionalSize] + objc_msgSend(descriptorCopy, "downloadSize"));
    -[SUDescriptor _setUnarchiveSize:](v5, "_setUnarchiveSize:", [descriptorCopy unarchivedSize]);
    -[SUDescriptor _setMsuPrepareSize:](v5, "_setMsuPrepareSize:", [descriptorCopy msuPrepareSize]);
    -[SUDescriptor setInstallationSize:](v5, "setInstallationSize:", [descriptorCopy installationSize]);
    -[SUDescriptor setMinimumSystemPartitionSize:](v5, "setMinimumSystemPartitionSize:", [descriptorCopy minimumSystemPartitionSize]);
    -[SUDescriptor setPreparationSize:](v5, "setPreparationSize:", [descriptorCopy preparationSize]);
    -[SUDescriptor setTotalRequiredFreeSpace:](v5, "setTotalRequiredFreeSpace:", [descriptorCopy totalRequiredFreeSpace]);
    -[SUDescriptor setTotalSnapshotRequiredFreeSpace:](v5, "setTotalSnapshotRequiredFreeSpace:", [descriptorCopy totalSnapshotRequiredFreeSpace]);
    -[SUDescriptor setPreSUStagingRequiredSize:](v5, "setPreSUStagingRequiredSize:", [descriptorCopy preSUStagingRequiredSize]);
    -[SUDescriptor setPreSUStagingOptionalSize:](v5, "setPreSUStagingOptionalSize:", [descriptorCopy preSUStagingOptionalSize]);
    -[SUDescriptor setMinFreeSpacePostStageOptionalAssets:](v5, "setMinFreeSpacePostStageOptionalAssets:", [descriptorCopy minFreeSpacePostStageOptionalAssets]);
    -[SUDescriptor setUnentitledReserveAmount:](v5, "setUnentitledReserveAmount:", [descriptorCopy unentitledReserveAmount]);
    -[SUDescriptor _setStreamingZipCapable:](v5, "_setStreamingZipCapable:", [descriptorCopy streamingZipCapable]);
    -[SUDescriptor setUpdateType:](v5, "setUpdateType:", [self softwareUpdateTypeForDescriptor:descriptorCopy]);
    -[SUDescriptor setAutoDownloadAllowableForCellular:](v5, "setAutoDownloadAllowableForCellular:", [descriptorCopy autoDownloadAllowableOverCellular]);
    -[SUDescriptor setDownloadableOverCellular:](v5, "setDownloadableOverCellular:", [descriptorCopy downloadAllowableOverCellular]);
    -[SUDescriptor setDownloadable:](v5, "setDownloadable:", [descriptorCopy downloadable]);
    -[SUDescriptor _setDisableSiriVoiceDeletion:](v5, "_setDisableSiriVoiceDeletion:", [descriptorCopy disableSiriVoiceDeletion]);
    -[SUDescriptor _setDisableCDLevel4:](v5, "_setDisableCDLevel4:", [descriptorCopy disableCDLevel4]);
    -[SUDescriptor _setDisableAppDemotion:](v5, "_setDisableAppDemotion:", [descriptorCopy disableAppDemotion]);
    -[SUDescriptor _setDisableMASuspension:](v5, "_setDisableMASuspension:", [descriptorCopy disableMASuspension]);
    -[SUDescriptor _setDisableInstallTonight:](v5, "_setDisableInstallTonight:", [descriptorCopy disableInstallTonight]);
    -[SUDescriptor setRampEnabled:](v5, "setRampEnabled:", [descriptorCopy rampEnabled]);
    -[SUDescriptor setGranularlyRamped:](v5, "setGranularlyRamped:", [descriptorCopy granularlyRamped]);
    -[SUDescriptor setCriticalOutOfBoxOnly:](v5, "setCriticalOutOfBoxOnly:", [descriptorCopy criticalOutOfBoxOnly]);
    -[SUDescriptor setAutoUpdateEnabled:](v5, "setAutoUpdateEnabled:", [descriptorCopy autoUpdateEnabled]);
    setupCritical = [descriptorCopy setupCritical];
    [(SUDescriptor *)v5 setSetupCritical:setupCritical];

    criticalOverrideCellularPolicy = [descriptorCopy criticalOverrideCellularPolicy];
    [(SUDescriptor *)v5 setCriticalDownloadPolicy:criticalOverrideCellularPolicy];

    systemPartitionPadding = [descriptorCopy systemPartitionPadding];
    [(SUDescriptor *)v5 setSystemPartitionPadding:systemPartitionPadding];

    sepDigest = [descriptorCopy sepDigest];
    [(SUDescriptor *)v5 setSEPDigest:sepDigest];

    rsepDigest = [descriptorCopy rsepDigest];
    [(SUDescriptor *)v5 setRSEPDigest:rsepDigest];

    sepTBMDigests = [descriptorCopy sepTBMDigests];
    [(SUDescriptor *)v5 setSEPTBMDigest:sepTBMDigests];

    rsepTBMDigests = [descriptorCopy rsepTBMDigests];
    [(SUDescriptor *)v5 setRSEPTBMDigest:rsepTBMDigests];

    releaseDate = [descriptorCopy releaseDate];
    [(SUDescriptor *)v5 setReleaseDate:releaseDate];

    -[SUDescriptor setMdmDelayInterval:](v5, "setMdmDelayInterval:", [descriptorCopy mdmDelayInterval]);
    assetID = [descriptorCopy assetID];
    [(SUDescriptor *)v5 setAssetID:assetID];

    -[SUDescriptor setAudienceType:](v5, "setAudienceType:", [self SUCoreAudienceTypeToSUSAudienceType:{objc_msgSend(descriptorCopy, "descriptorAudienceType")}]);
    -[SUDescriptor setPreferenceType:](v5, "setPreferenceType:", [self SUCorePreferredTypeToSUSPreferenceType:{objc_msgSend(descriptorCopy, "preferredUpdateType")}]);
    -[SUDescriptor setUpgradeType:](v5, "setUpgradeType:", [self upgradeTypeForCoreDescriptor:descriptorCopy]);
    v27 = +[SUPreferences sharedInstance];
    if ([v27 alwaysPromoteAlternate])
    {
      promoteAlternateUpdate = 1;
    }

    else
    {
      promoteAlternateUpdate = [descriptorCopy promoteAlternateUpdate];
    }

    [(SUDescriptor *)v5 setPromoteAlternateUpdate:promoteAlternateUpdate];

    -[SUDescriptor setHideInstallAlert:](v5, "setHideInstallAlert:", [self shouldHideInstallAlertForCoreDescriptor:descriptorCopy]);
    -[SUDescriptor setIsSplatOnly:](v5, "setIsSplatOnly:", [descriptorCopy splatOnly]);
    humanReadableUpdateName = [descriptorCopy humanReadableUpdateName];
    [(SUDescriptor *)v5 setHumanReadableUpdateName:humanReadableUpdateName];

    -[SUDescriptor setMandatoryUpdateEligible:](v5, "setMandatoryUpdateEligible:", [descriptorCopy mandatoryUpdateEligible]);
    mandatoryUpdateVersionMin = [descriptorCopy mandatoryUpdateVersionMin];
    [(SUDescriptor *)v5 setMandatoryUpdateVersionMin:mandatoryUpdateVersionMin];

    mandatoryUpdateVersionMax = [descriptorCopy mandatoryUpdateVersionMax];
    [(SUDescriptor *)v5 setMandatoryUpdateVersionMax:mandatoryUpdateVersionMax];

    -[SUDescriptor setMandatoryUpdateOptional:](v5, "setMandatoryUpdateOptional:", [descriptorCopy mandatoryUpdateOptional]);
    -[SUDescriptor setMandatoryUpdateRestrictedToOutOfTheBox:](v5, "setMandatoryUpdateRestrictedToOutOfTheBox:", [descriptorCopy mandatoryUpdateRestrictedToOutOfTheBox]);
    -[SUDescriptor setForcePasscodeRequired:](v5, "setForcePasscodeRequired:", [descriptorCopy forcePasscodeRequired]);
    -[SUDescriptor setAllowAutoDownloadOnBattery:](v5, "setAllowAutoDownloadOnBattery:", [descriptorCopy allowAutoDownloadOnBattery]);
    -[SUDescriptor setAutoDownloadOnBatteryDelay:](v5, "setAutoDownloadOnBatteryDelay:", [descriptorCopy autoDownloadOnBatteryDelay]);
    -[SUDescriptor setAutoDownloadOnBatteryMinBattery:](v5, "setAutoDownloadOnBatteryMinBattery:", [descriptorCopy autoDownloadOnBatteryMinBattery]);
    associatedSplatDescriptor = [descriptorCopy associatedSplatDescriptor];
    [(SUDescriptor *)v5 setIsSplombo:associatedSplatDescriptor != 0];

    associatedSplatDescriptor2 = [descriptorCopy associatedSplatDescriptor];
    productBuildVersion2 = [associatedSplatDescriptor2 productBuildVersion];
    [(SUDescriptor *)v5 setSplatComboBuildVersion:productBuildVersion2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)SUDescriptorFromRollbackDescriptor:(id)descriptor
{
  if (descriptor)
  {
    descriptorCopy = descriptor;
    v4 = objc_alloc_init(SUDescriptor);
    productBuildVersion = [descriptorCopy productBuildVersion];
    [(SUDescriptor *)v4 setProductBuildVersion:productBuildVersion];

    productVersion = [descriptorCopy productVersion];
    [(SUDescriptor *)v4 setProductVersion:productVersion];

    releaseType = [descriptorCopy releaseType];

    [(SUDescriptor *)v4 setReleaseType:releaseType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shouldHideInstallAlertForCoreDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([descriptorCopy hideInstallAlert] == 2)
  {
    v4 = +[SUUtility currentReleaseType];
    v5 = [v4 isEqualToString:@"Beta"];

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      productVersion = [descriptorCopy productVersion];
      v6 = [SUAssetSupport updateIsPreCRelease:productVersion];

      SULogInfo(@"%s: Current release type is not developer, overriding HideInstallAlert to: %@", v8, v9, v10, v11, v12, v13, v14, "+[SUManagerEngine shouldHideInstallAlertForCoreDescriptor:]");
    }
  }

  else
  {
    v6 = [descriptorCopy hideInstallAlert] != 0;
  }

  return v6;
}

+ (id)rollbackDescriptorForSUCoreRollbackDescriptor:(id)descriptor
{
  if (descriptor)
  {
    descriptorCopy = descriptor;
    v4 = objc_alloc_init(SURollbackDescriptor);
    restoreVersion = [descriptorCopy restoreVersion];
    [(SURollbackDescriptor *)v4 setRestoreVersion:restoreVersion];

    productVersion = [descriptorCopy productVersion];
    [(SURollbackDescriptor *)v4 setProductVersion:productVersion];

    productBuildVersion = [descriptorCopy productBuildVersion];
    [(SURollbackDescriptor *)v4 setProductBuildVersion:productBuildVersion];

    releaseType = [descriptorCopy releaseType];

    [(SURollbackDescriptor *)v4 setReleaseType:releaseType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SUManagerEngineDelegate)managerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_managerDelegate);

  return WeakRetained;
}

@end
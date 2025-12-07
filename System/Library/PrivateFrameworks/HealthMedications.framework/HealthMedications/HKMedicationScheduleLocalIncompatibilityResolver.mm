@interface HKMedicationScheduleLocalIncompatibilityResolver
- (HKMedicationScheduleLocalIncompatibilityResolver)init;
- (void)checkIncompatibilityForSchedule:(id)schedule completion:(id)completion;
- (void)checkIncompatibilityForSchedule:(id)schedule pairedDevice:(id)device completion:(id)completion;
@end

@implementation HKMedicationScheduleLocalIncompatibilityResolver

- (HKMedicationScheduleLocalIncompatibilityResolver)init
{
  v6.receiver = self;
  v6.super_class = HKMedicationScheduleLocalIncompatibilityResolver;
  v2 = [(HKMedicationScheduleBaseIncompatibilityResolver *)&v6 init];
  v3 = v2;
  if (v2)
  {
    unitTestPairedDevice = v2->_unitTestPairedDevice;
    v2->_unitTestPairedDevice = 0;
  }

  return v3;
}

- (void)checkIncompatibilityForSchedule:(id)schedule completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  completionCopy = completion;
  v8 = self->_unitTestPairedDevice;
  if (v8)
  {
    getActivePairedDevice = v8;
LABEL_4:
    [(HKMedicationScheduleLocalIncompatibilityResolver *)self checkIncompatibilityForSchedule:scheduleCopy pairedDevice:getActivePairedDevice completion:completionCopy];

    goto LABEL_5;
  }

  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  if (getActivePairedDevice)
  {
    goto LABEL_4;
  }

  _HKInitializeLogging();
  v11 = HKLogMedication();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = objc_opt_class();
    v12 = v14;
    _os_log_impl(&dword_2517E7000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping incompatibility check, no active paired device found.", &v13, 0xCu);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_5:
}

- (void)checkIncompatibilityForSchedule:(id)schedule pairedDevice:(id)device completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  deviceCopy = device;
  scheduleCopy = schedule;
  v11 = [[HKACAccountDevice alloc] initWithPairedDevice:deviceCopy];

  v18[0] = scheduleCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v17 = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__HKMedicationScheduleLocalIncompatibilityResolver_checkIncompatibilityForSchedule_pairedDevice_completion___block_invoke;
  v15[3] = &unk_2796C9FA0;
  v16 = completionCopy;
  v14 = completionCopy;
  [(HKMedicationScheduleBaseIncompatibilityResolver *)self _resolveIncompatibleScheduleResultsFromSchedules:v12 scheduleError:0 devices:v13 deviceError:0 completion:v15];
}

void __108__HKMedicationScheduleLocalIncompatibilityResolver_checkIncompatibilityForSchedule_pairedDevice_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

@end
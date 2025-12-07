@interface RTLocation
@end

@implementation RTLocation

void __102__RTLocation_RTExtensions___distanceBetweenShiftedLocation_unshiftedLocation_locationShifter_handler___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412290;
      v17 = v13;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "%@, Unable to shift, location shifter error", buf, 0xCu);
    }

    v6 = *(a1 + 40);
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D01448];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"Reference frames do not match and we encounted an error when trying to shift.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:v8 code:6 userInfo:v9];
    (*(v6 + 16))(v6, v10, INFINITY);
  }

  else
  {
    v11 = *(a1 + 40);
    [*(a1 + 32) latitude];
    [*(a1 + 32) longitude];
    RTCommonCalculateDistanceHighPrecision();
    v12 = *(v11 + 16);

    v12(v11, 0);
  }
}

@end
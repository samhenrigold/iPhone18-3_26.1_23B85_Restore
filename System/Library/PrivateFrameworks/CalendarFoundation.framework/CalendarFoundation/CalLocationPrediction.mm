@interface CalLocationPrediction
+ (id)predictedLocationOfInterestForEventTitle:(id)title eventLocation:(id)location calendarIdentifier:(id)identifier timeout:(unint64_t)timeout error:(id *)error;
@end

@implementation CalLocationPrediction

+ (id)predictedLocationOfInterestForEventTitle:(id)title eventLocation:(id)location calendarIdentifier:(id)identifier timeout:(unint64_t)timeout error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  locationCopy = location;
  identifierCopy = identifier;
  v14 = [EKWeakLinkClass(@"RTRoutineManager" 0xAuLL)];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__7;
  v43 = __Block_byref_object_dispose__7;
  v44 = 0;
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__7;
  v37 = __Block_byref_object_dispose__7;
  v38 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke;
  v26[3] = &unk_1E7EC6EB0;
  v16 = titleCopy;
  v27 = v16;
  v17 = locationCopy;
  v28 = v17;
  v18 = identifierCopy;
  v29 = v18;
  v31 = &v33;
  v32 = &v39;
  v19 = v15;
  v30 = v19;
  [v14 fetchPredictedLocationsOfInterestAssociatedToTitle:v16 location:v17 calendarIdentifier:v18 withHandler:v26];
  if (dispatch_group_wait(v19, timeout))
  {
    v20 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v48 = v16;
      v49 = 2112;
      v50 = v17;
      v51 = 2112;
      v52 = v18;
      _os_log_error_impl(&dword_1B990D000, v20, OS_LOG_TYPE_ERROR, "Error fetching locations of interest for title %@, location: %@, calendar: %@: Request timed out", buf, 0x20u);
    }

    if (error)
    {
      v45 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prediction timed out for title %@, location: %@, calendar: %@", v16, v17, v18];
      v46 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CalLocationPredictionErrorDomain" code:0 userInfo:v22];
    }
  }

  else if (error)
  {
    v23 = v34[5];
    if (v23)
    {
      *error = v23;
    }
  }

  v24 = v40[5];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v24;
}

void __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_1(a1, v6, v7);
    }

    v8 = *(*(a1 + 64) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = [v5 count];
    v10 = +[CalFoundationLogSubsystem defaultCategory];
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v12)
      {
        __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_2(v5, a1, v10);
      }

      v13 = [v5 firstObject];
      v14 = *(*(a1 + 72) + 8);
      v10 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    else if (v12)
    {
      __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_3(a1, v10);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_1(void *a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = [a2 localizedDescription];
  v8 = 138478595;
  v9 = v4;
  v10 = 2113;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  _os_log_error_impl(&dword_1B990D000, a3, OS_LOG_TYPE_ERROR, "Error fetching locations of interest for title %{private}@, location: %{private}@, calendar: %@: %@", &v8, 0x2Au);
}

void __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_2(void *a1, void *a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a1 count];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = 134218755;
  v10 = v5;
  v11 = 2113;
  v12 = v6;
  v13 = 2113;
  v14 = v7;
  v15 = 2112;
  v16 = v8;
  _os_log_debug_impl(&dword_1B990D000, a3, OS_LOG_TYPE_DEBUG, "%lu locations of interest found for title %{private}@, location: %{private}@, calendar: %@", &v9, 0x2Au);
}

void __113__CalLocationPrediction_predictedLocationOfInterestForEventTitle_eventLocation_calendarIdentifier_timeout_error___block_invoke_cold_3(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = 138478339;
  v6 = v2;
  v7 = 2113;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_debug_impl(&dword_1B990D000, a2, OS_LOG_TYPE_DEBUG, "No locations of interest found for title %{private}@, location: %{private}@, calendar: %@", &v5, 0x20u);
}

@end
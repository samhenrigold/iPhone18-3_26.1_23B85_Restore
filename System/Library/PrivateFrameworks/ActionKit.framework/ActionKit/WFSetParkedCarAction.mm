@interface WFSetParkedCarAction
- (BOOL)locationParameterIsCurrentLocation;
- (id)missingLocationError;
- (id)resizedCompressedJPEGImageDataWithWFImage:(id)image;
- (void)fetchLastParkedCarContentItemWithCompletionHandler:(id)handler;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFSetParkedCarAction

- (BOOL)locationParameterIsCurrentLocation
{
  v2 = [(WFSetParkedCarAction *)self parameterStateForKey:@"WFLocation"];
  value = [v2 value];
  isCurrentLocation = [value isCurrentLocation];

  return isCurrentLocation;
}

- (void)fetchLastParkedCarContentItemWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_time(0, 500000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__WFSetParkedCarAction_fetchLastParkedCarContentItemWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C22448;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_after(v5, MEMORY[0x277D85CD0], v7);
}

void __75__WFSetParkedCarAction_fetchLastParkedCarContentItemWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [getRTRoutineManagerClass() defaultManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__WFSetParkedCarAction_fetchLastParkedCarContentItemWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_278C21AE8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchLastVehicleEventsWithHandler:v4];
}

void __75__WFSetParkedCarAction_fetchLastParkedCarContentItemWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 firstObject];
  if (v6)
  {
    v7 = MEMORY[0x277CFC2F8];
    v8 = MEMORY[0x277CFC238];
    v9 = [*(a1 + 32) appDescriptor];
    v10 = [v8 locationWithAppDescriptor:v9];
    v11 = [v7 itemWithObject:v6 origin:v10 disclosureLevel:1];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = getWFActionsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[WFSetParkedCarAction fetchLastParkedCarContentItemWithCompletionHandler:]_block_invoke_2";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_ERROR, "%s No RTVehicleEvent found, error = %@", &v13, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)resizedCompressedJPEGImageDataWithWFImage:(id)image
{
  v34 = *MEMORY[0x277D85DE8];
  uIImage = [image UIImage];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = v5;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v9 = v8;

  if (v6 >= v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  [uIImage size];
  v12 = v11;
  [uIImage size];
  v14 = v13;
  [uIImage size];
  if (v12 <= v14)
  {
    v15 = v16;
  }

  v17 = v15 / v10 * 0.5;
  if (v17 >= 1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  [uIImage size];
  v20 = v19 / v18;
  [uIImage size];
  v37.size.height = v21 / v18;
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = v20;
  v38 = CGRectIntegral(v37);
  width = v38.size.width;
  height = v38.size.height;
  [uIImage scale];
  v25 = v24;
  v36.width = width;
  v36.height = height;
  UIGraphicsBeginImageContextWithOptions(v36, 1, v25);
  [uIImage drawInRect:{0.0, 0.0, width, height}];
  v26 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v26)
  {
    v27 = UIImageJPEGRepresentation(v26, 0.699999988);
    if (v27)
    {
      v28 = v27;
      v29 = v28;
      goto LABEL_18;
    }

    v30 = getWFActionsLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315138;
      v33 = "[WFSetParkedCarAction resizedCompressedJPEGImageDataWithWFImage:]";
      _os_log_impl(&dword_23DE30000, v30, OS_LOG_TYPE_ERROR, "%s Failed to convert UIImage to JPEG data.", &v32, 0xCu);
    }

    v28 = 0;
  }

  else
  {
    v28 = getWFActionsLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315138;
      v33 = "[WFSetParkedCarAction resizedCompressedJPEGImageDataWithWFImage:]";
      _os_log_impl(&dword_23DE30000, v28, OS_LOG_TYPE_ERROR, "%s Failed to resize UIImage for save.", &v32, 0xCu);
    }
  }

  v29 = 0;
LABEL_18:

  return v29;
}

- (id)missingLocationError
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedString(@"No Car Location Provided");
  v3 = WFLocalizedString(@"Please provide a location for the parked car.");
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D7CB30];
  v6 = *MEMORY[0x277CCA450];
  v10[0] = *MEMORY[0x277CCA470];
  v10[1] = v6;
  v11[0] = v2;
  v11[1] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v4 errorWithDomain:v5 code:6 userInfo:v7];

  return v8;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v18 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if ([inputCopy numberOfItems])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke;
    v9[3] = &unk_278C1A7B8;
    v9[4] = self;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v5 = getCLLocationClass_softClass_11713;
    v13 = getCLLocationClass_softClass_11713;
    if (!getCLLocationClass_softClass_11713)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v15 = __getCLLocationClass_block_invoke_11714;
      v16 = &unk_278C222B8;
      v17 = &v10;
      __getCLLocationClass_block_invoke_11714(&buf);
      v5 = v11[3];
    }

    v6 = v5;
    _Block_object_dispose(&v10, 8);
    [inputCopy getObjectRepresentation:v9 forClass:objc_opt_class()];
  }

  else
  {
    v7 = getWFActionsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[WFSetParkedCarAction runAsynchronouslyWithInput:]";
      _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_ERROR, "%s No input provided to WFSetParkedCarAction", &buf, 0xCu);
    }

    missingLocationError = [(WFSetParkedCarAction *)self missingLocationError];
    [(WFSetParkedCarAction *)self finishRunningWithError:missingLocationError];
  }
}

void __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = [*(a1 + 32) parameterValueForKey:@"WFSetParkedCarNotes" ofClass:objc_opt_class()];
    v9 = [getRTRoutineManagerClass() defaultManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_169;
    v11[3] = &unk_278C221F8;
    v11[4] = *(a1 + 32);
    [v9 vehicleEventAtLocation:v6 notes:v8 handler:v11];
  }

  else
  {
    v10 = getWFActionsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[WFSetParkedCarAction runAsynchronouslyWithInput:]_block_invoke";
      _os_log_impl(&dword_23DE30000, v10, OS_LOG_TYPE_ERROR, "%s Failed to coerce location content collection to CLLocation.", buf, 0xCu);
    }

    [*(a1 + 32) finishRunningWithError:v7];
  }
}

void __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_169(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = getWFActionsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "[WFSetParkedCarAction runAsynchronouslyWithInput:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_ERROR, "%s CoreRoutine error setting vehicle event: %@", buf, 0x16u);
    }

    [*(a1 + 32) finishRunningWithError:v3];
  }

  else
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_170;
    v6[3] = &unk_278C1A768;
    v6[4] = v5;
    [v5 fetchLastParkedCarContentItemWithCompletionHandler:v6];
  }
}

void __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_170(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [*(a1 + 32) parameterValueForKey:@"WFImage" ofClass:objc_opt_class()];
    if ([v8 numberOfItems])
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_173;
      v11[3] = &unk_278C1A790;
      v11[4] = *(a1 + 32);
      v12 = v7;
      [v8 getObjectRepresentation:v11 forClass:objc_opt_class()];
    }

    else
    {
      v10 = [*(a1 + 32) output];
      [v10 addItem:v7];

      [*(a1 + 32) finishRunningWithError:0];
    }
  }

  else
  {

    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[WFSetParkedCarAction runAsynchronouslyWithInput:]_block_invoke";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_ERROR, "%s No car content item found after saving it: %@", buf, 0x16u);
    }

    [*(a1 + 32) finishRunningWithError:0];
  }
}

void __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_173(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a2)
  {
    v7 = [*(a1 + 32) resizedCompressedJPEGImageDataWithWFImage:a2];
    if (v7)
    {
      v8 = [getRTRoutineManagerClass() defaultManager];
      v9 = [*(a1 + 40) vehicleEvent];
      v10 = [v9 identifier];
      [v8 updateVehicleEventWithIdentifier:v10 photo:v7];

      v11 = *(a1 + 32);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_174;
      v16[3] = &unk_278C1A768;
      v16[4] = v11;
      [v11 fetchLastParkedCarContentItemWithCompletionHandler:v16];
    }

    else
    {
      v14 = getWFActionsLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v18 = "[WFSetParkedCarAction runAsynchronouslyWithInput:]_block_invoke";
        _os_log_impl(&dword_23DE30000, v14, OS_LOG_TYPE_ERROR, "%s Failed to resize/compress parked car image.", buf, 0xCu);
      }

      v15 = [*(a1 + 32) output];
      [v15 addItem:*(a1 + 40)];

      [*(a1 + 32) finishRunningWithError:0];
    }
  }

  else
  {
    v12 = getWFActionsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[WFSetParkedCarAction runAsynchronouslyWithInput:]_block_invoke";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_ERROR, "%s Failed to coerce imageCollection to WFImage with error: %@", buf, 0x16u);
    }

    v13 = [*(a1 + 32) output];
    [v13 addItem:*(a1 + 40)];

    [*(a1 + 32) finishRunningWithError:0];
  }
}

void __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 output];
    [v7 addItem:v6];
  }

  [*(a1 + 32) finishRunningWithError:v8];
}

@end
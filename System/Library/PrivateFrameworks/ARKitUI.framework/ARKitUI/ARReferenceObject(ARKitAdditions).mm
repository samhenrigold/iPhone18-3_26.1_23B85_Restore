@interface ARReferenceObject(ARKitAdditions)
+ (void)initialize;
- (id)_writeToArchiveWithPreviewImage:()ARKitAdditions error:;
@end

@implementation ARReferenceObject(ARKitAdditions)

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ARReferenceObject_ARKitAdditions__initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

- (id)_writeToArchiveWithPreviewImage:()ARKitAdditions error:
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v8 = MEMORY[0x277CE53A8];
  trackingData = [self trackingData];
  [v8 boundsForTrackingData:trackingData];

  [self referenceOriginTransform];
  v33 = v11;
  v34 = v10;
  v31 = v13;
  v32 = v12;
  ARMatrix4x4FromRotationAndTranslation();
  v14 = 0;
  v35[0] = v15;
  v35[1] = v16;
  v35[2] = v17;
  v35[3] = v18;
  memset(buf, 0, sizeof(buf));
  v37 = 0u;
  v38 = 0u;
  do
  {
    *&buf[v14 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(v35[v14])), v33, *&v35[v14], 1), v32, v35[v14], 2), v31, v35[v14], 3);
    ++v14;
  }

  while (v14 != 4);
  if (v6)
  {
    v19 = UIImageJPEGRepresentation(v6, 0.8);
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_opt_new();
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "version")}];
  [v20 setObject:v21 forKeyedSubscript:@"Version"];

  [v20 setObject:@"trackingData.cv3dmap" forKeyedSubscript:@"TrackingDataReference"];
  v22 = ARMatrix4x4Dictionary();
  [v20 setObject:v22 forKeyedSubscript:@"ReferenceOrigin"];

  if ([v19 length])
  {
    [v20 setObject:@"preview.jpg" forKeyedSubscript:@"ImageReference"];
  }

  v23 = [MEMORY[0x277CCAC58] dataWithPropertyList:v20 format:100 options:0 error:{a4, *&v31}];
  if (v23)
  {
    [v7 addData:v23 withPath:@"Info.plist"];
    trackingData2 = [self trackingData];
    [v7 addData:trackingData2 withPath:@"trackingData.cv3dmap"];

    if ([v19 length])
    {
      [v7 addData:v19 withPath:@"preview.jpg"];
    }

    v25 = v7;
  }

  else
  {
    if (_ARLogGeneral_onceToken_2 != -1)
    {
      [ARReferenceObject(ARKitAdditions) _writeToArchiveWithPreviewImage:error:];
    }

    v26 = _ARLogGeneral_logObj_2;
    if (os_log_type_enabled(_ARLogGeneral_logObj_2, OS_LOG_TYPE_ERROR))
    {
      v27 = v26;
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138543618;
      *&buf[4] = v29;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_23D3AE000, v27, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to serialize object metadata.", buf, 0x16u);
    }

    v25 = 0;
  }

  return v25;
}

@end
@interface ARFaceAnchor(AVTExtensions)
- (__n128)_avt_rawTransform;
- (float)_avt_rawBlendShapeAtLocation:()AVTExtensions;
@end

@implementation ARFaceAnchor(AVTExtensions)

- (__n128)_avt_rawTransform
{
  trackingData = [self trackingData];
  v2 = [trackingData objectForKeyedSubscript:?];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = trackingData;
  }

  v5 = v4;

  v6 = [v5 objectForKeyedSubscript:?];
  v7 = [trackingData objectForKeyedSubscript:?];
  v8 = [v7 objectForKeyedSubscript:?];

  v9 = [v6 objectForKeyedSubscript:?];
  ARMatrix3x3FromArray();

  v10 = [v6 objectForKeyedSubscript:?];
  ARVector3FromArray();

  ARVector3ScalarMultiplication();
  ARMatrix4x4FromRotationAndTranslation();
  v27 = v12;
  v28 = v11;
  v24 = v14;
  v26 = v13;
  v15 = [v8 objectForKeyedSubscript:?];
  ARMatrix3x3FromArray();

  v16 = [v8 objectForKeyedSubscript:?];
  ARVector3FromArray();

  ARVector3ScalarMultiplication();
  ARMatrix4x4FromRotationAndTranslation();
  v21 = 0;
  v29 = v28;
  v30 = v27;
  v31 = v26;
  v32 = v24;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  do
  {
    *(&v33 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v29 + v21))), v18, *(&v29 + v21), 1), v19, *(&v29 + v21), 2), v20, *(&v29 + v21), 3);
    v21 += 16;
  }

  while (v21 != 64);
  v22 = 0;
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  do
  {
    *(&v33 + v22) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1BB4F05D0, COERCE_FLOAT(*(&v29 + v22))), xmmword_1BB4F0590, *(&v29 + v22), 1), xmmword_1BB4F05F0, *(&v29 + v22), 2), xmmword_1BB4F06F0, *(&v29 + v22), 3);
    v22 += 16;
  }

  while (v22 != 64);
  v25 = v33;

  return v25;
}

- (float)_avt_rawBlendShapeAtLocation:()AVTExtensions
{
  v4 = a3;
  trackingData = [self trackingData];
  v6 = [trackingData objectForKeyedSubscript:?];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = trackingData;
  }

  v9 = v8;

  v10 = [v4 isEqualToString:?];
  v11 = [v9 objectForKeyedSubscript:?];

  if (v10)
  {
    v12 = [v11 objectForKeyedSubscript:?];

    [v12 floatValue];
    if (v13 <= 0.5)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }
  }

  else
  {
    v12 = [v11 objectForKeyedSubscript:?];

    v15 = AVTBlendShapeLocationToARIndex(v4);
    v14 = *([v12 bytes] + v15);
  }

  return v14;
}

@end
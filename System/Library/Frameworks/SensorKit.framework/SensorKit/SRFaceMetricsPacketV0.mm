@interface SRFaceMetricsPacketV0
+ (id)packetWithHAFacialMetricsPacket:(id *)packet;
- (NSArray)gaze;
- (NSArray)partialFaceExpressions;
- (NSArray)rotation;
- (NSArray)translation;
- (NSArray)wholeFaceExpressions;
- (NSDictionary)trackingData;
- (void)dealloc;
@end

@implementation SRFaceMetricsPacketV0

+ (id)packetWithHAFacialMetricsPacket:(id *)packet
{
  if (packet->var0)
  {
    v3 = _MergedGlobals_4;
    if (!os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *buf = 0;
    v10 = "Invalid input data for V0";
    v11 = buf;
LABEL_18:
    _os_log_fault_impl(&dword_1C914D000, v3, OS_LOG_TYPE_FAULT, v10, v11, 2u);
    return 0;
  }

  v6 = [MEMORY[0x1E696AFB0] sr_UUIDWithUint32_t:packet->var1];
  if (!v6)
  {
    v3 = _MergedGlobals_4;
    if (!os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v14 = 0;
    v10 = "Failed to generate V0 face metrics, because of empty face indentifier";
    v11 = &v14;
    goto LABEL_18;
  }

  v7 = v6;
  if (qword_1EE02AB10 != -1)
  {
    dispatch_once(&qword_1EE02AB10, &__block_literal_global_4);
  }

  if (!qword_1EE02AB18)
  {
    v12 = _MergedGlobals_4;
    if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1C914D000, v12, OS_LOG_TYPE_ERROR, "Failed to generate V0 face metrics, because of empty neutral face geometry", v13, 2u);
    }

    return 0;
  }

  v8 = objc_alloc_init(SRFaceMetricsPacketV0);
  v9 = v8;
  if (v8)
  {
    v8->_packet = packet;
    v8->_faceIdentifier = v7;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRFaceMetricsPacketV0;
  [(SRFaceMetricsPacketV0 *)&v3 dealloc];
}

- (NSArray)wholeFaceExpressions
{
  v4[7] = *MEMORY[0x1E69E9840];
  v4[1] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"1F26EABE-8350-48C5-97F0-06EFD6FEC6C4" value:self->_packet->var6.var0.var1, [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"E24480FE-8ECF-412C-8A02-3E924971A840" value:self->_packet->var6.var0.var0]];
  v4[2] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"726DA5E5-E63A-43CC-B7F3-FDD42A5583FA" value:self->_packet->var6.var0.var4];
  v4[3] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"6AEC22CC-2311-45F1-AF8E-F372A3C979B2" value:self->_packet->var6.var0.var5];
  v4[4] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"FECC0DAC-9B31-4504-896E-6C2898F16B69" value:self->_packet->var6.var0.var7];
  v4[5] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"A1E9B99B-C90B-4DB4-8ED3-4E0382ABC8B5" value:self->_packet->var6.var0.var8];
  v4[6] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"C57C8CCA-0194-4327-8CBA-987FAF744096" value:self->_packet->var6.var0.var9];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];
}

- (NSArray)partialFaceExpressions
{
  v4[8] = *MEMORY[0x1E69E9840];
  v4[0] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"85E97F41-0CF7-481E-B9ED-8E5A90B4A547" value:self->_packet->var6.var1.var0];
  v4[1] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"5A3CBD39-B24F-463A-990C-18C5372D6F1B" value:self->_packet->var6.var1.var1];
  v4[2] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"D0859030-4703-45F6-A902-7634984A2074" value:self->_packet->var6.var1.var2];
  v4[3] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"A29952D5-F6EA-4562-9A12-43284B1DB634" value:self->_packet->var6.var1.var3];
  v4[4] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"A8B47A8D-A86F-4159-8472-33C67D6250B5" value:self->_packet->var6.var1.var4];
  v4[5] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"60A8B7A9-8C8F-401A-A8C4-C996B1397CC9" value:self->_packet->var6.var1.var5];
  v4[6] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"E5A9652C-9CF9-4F38-BC7A-1D622DC69B41" value:self->_packet->var6.var1.var6];
  v4[7] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"A1D4672B-2E01-435A-BD0D-ABAEB1F4CB6E" value:self->_packet->var6.var1.var7];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:8];
}

- (NSArray)rotation
{
  v16[3] = *MEMORY[0x1E69E9840];
  *&v2 = self->_packet->var3.var0[0][0];
  v15[0] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  *&v4 = self->_packet->var3.var0[0][1];
  v15[1] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  *&v5 = self->_packet->var3.var0[0][2];
  v15[2] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v16[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  *&v6 = self->_packet->var3.var0[1][0];
  v14[0] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  *&v7 = self->_packet->var3.var0[1][1];
  v14[1] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  *&v8 = self->_packet->var3.var0[1][2];
  v14[2] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v16[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  *&v9 = self->_packet->var3.var0[2][0];
  v13[0] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  *&v10 = self->_packet->var3.var0[2][1];
  v13[1] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  *&v11 = self->_packet->var3.var0[2][2];
  v13[2] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v16[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
}

- (NSArray)translation
{
  v7[3] = *MEMORY[0x1E69E9840];
  *&v2 = self->_packet->var3.var1[0];
  v7[0] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  *&v4 = self->_packet->var3.var1[1];
  v7[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v4, v7[0]}];
  *&v5 = self->_packet->var3.var1[2];
  v7[2] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
}

- (NSArray)gaze
{
  v7[3] = *MEMORY[0x1E69E9840];
  *&v2 = self->_packet->var4[0];
  v7[0] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  *&v4 = self->_packet->var4[1];
  v7[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v4, v7[0]}];
  *&v5 = self->_packet->var4[2];
  v7[2] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
}

- (NSDictionary)trackingData
{
  v29[2] = *MEMORY[0x1E69E9840];
  v28[0] = @"rotation";
  v28[1] = @"translation";
  v29[0] = [(SRFaceMetricsPacketV0 *)self rotation];
  v29[1] = [(SRFaceMetricsPacketV0 *)self translation];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v26[0] = @"blendshapes";
  v27[0] = [(SRFaceMetricsPacketV0 *)self blendshapes];
  v26[1] = @"gaze";
  v27[1] = [(SRFaceMetricsPacketV0 *)self gaze];
  v26[2] = @"left_eye_pitch";
  v4 = MEMORY[0x1E696AD98];
  [(SRFaceMetricsPacketV0 *)self leftEyePitch];
  v27[2] = [v4 numberWithFloat:?];
  v26[3] = @"right_eye_pitch";
  v5 = MEMORY[0x1E696AD98];
  [(SRFaceMetricsPacketV0 *)self rightEyePitch];
  v27[3] = [v5 numberWithFloat:?];
  v26[4] = @"left_eye_yaw";
  v6 = MEMORY[0x1E696AD98];
  [(SRFaceMetricsPacketV0 *)self leftEyeYaw];
  v27[4] = [v6 numberWithFloat:?];
  v26[5] = @"right_eye_yaw";
  v7 = MEMORY[0x1E696AD98];
  [(SRFaceMetricsPacketV0 *)self rightEyeYaw];
  v27[5] = [v7 numberWithFloat:?];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:6];
  v24[0] = @"left_eye";
  v25[0] = [(SRFaceMetricsPacketV0 *)self geometryLeftEye];
  v24[1] = @"right_eye";
  v25[1] = [(SRFaceMetricsPacketV0 *)self geometryRightEye];
  v24[2] = @"vertices";
  if (qword_1EE02AB10 != -1)
  {
    dispatch_once(&qword_1EE02AB10, &__block_literal_global_4);
  }

  v25[2] = qword_1EE02AB18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v22[0] = @"rotation";
  v22[1] = @"translation";
  v23[0] = &unk_1F48CA460;
  v23[1] = &unk_1F48CA478;
  v20[0] = @"extrinsics";
  v20[1] = @"intrinsics";
  v21[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v21[1] = &unk_1F48CA4D8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18[0] = @"pose";
  v18[1] = @"animation";
  v19[0] = v3;
  v19[1] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16[0] = @"geometry";
  v16[1] = @"pose";
  v17[0] = v9;
  v17[1] = v3;
  v16[2] = @"animation";
  v17[2] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v14[0] = @"face_id";
  v15[0] = [(NSUUID *)[(SRFaceMetricsPacketV0 *)self faceIdentifier] UUIDString];
  v15[1] = &unk_1F48CA9C8;
  v14[1] = @"confidence";
  v14[2] = @"rgb_camera";
  v15[2] = v10;
  v15[3] = v11;
  v14[3] = @"raw_data";
  v14[4] = @"smooth_data";
  v15[4] = v12;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];
}

@end